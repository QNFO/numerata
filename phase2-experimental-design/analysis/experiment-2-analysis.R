#!/usr/bin/env Rscript
# =============================================================================
# NUMERATA Phase 2 — Experiment 2: Multi-Axis Framework Validation
# Analysis Script
# =============================================================================
# Pre-registered at: [OSF Registered Report DOI TBD]
# =============================================================================

library(tidyverse)
library(psych)
library(irr)
library(lme4)
library(lmerTest)
library(corrplot)
set.seed(20260719)

# ---- Load Data ----
# Expected format: rater_long.csv — columns: rater_id, background (cog/design/edu/hist),
#   system (arabic/roman/mayan/binary/chinese/babylonian/cistercian/tally),
#   D1_simplicity ... D8_extensibility (all 1-7), global_rank (1-8),
#   justification_text, familiarity (1-5)
# Speed data: speed_long.csv — columns: participant_id, system, rt_ms

ratings <- read.csv("data/experiment-2-ratings.csv")
speed <- read.csv("data/experiment-2-speed.csv")

# ---- Falsification Check 0: Multi-Disciplinary Balance ----
cat("=== RATER BACKGROUNDS ===\n")
print(table(ratings$background))

# ---- 1. Exploratory Factor Analysis ----
cat("\n=== EXPLORATORY FACTOR ANALYSIS ===\n")

# Aggregate to system-level means (consensus ratings across raters)
ratings_consensus <- ratings %>%
  group_by(system) %>%
  summarise(across(starts_with("D"), mean, .names = "{.col}"))

# EFA with varimax rotation, max 3 factors
efa <- fa(ratings_consensus[, -1], nfactors = 3, rotate = "varimax", fm = "ml")
cat("\nFactor Loadings (>|0.30| shown):\n")
print(efa$loadings, cutoff = 0.30)

cat("\nEigenvalues:\n")
print(efa$values)

cat("\nVariance Explained per Factor:\n")
print(efa$Vaccounted)

# Parallel analysis
cat("\nParallel Analysis:\n")
fa_parallel <- fa.parallel(ratings_consensus[, -1], fa = "fa", n.iter = 1000, plot = FALSE)
cat("Suggested factors:", fa_parallel$nfact, "\n")

# ---- 2. Inter-Rater Reliability ----
cat("\n=== INTER-RATER RELIABILITY (ICC) ===\n")

dimensions <- paste0("D", 1:8, c("_simplicity", "_economy", "_transparency", "_learnability",
                                   "_error_resist", "_metaphor_div", "_fraction_qual", "_extensibility"))

icc_results <- data.frame(dimension = character(), icc = numeric(), 
                           lower = numeric(), upper = numeric(), stringsAsFactors = FALSE)

for (dim in dimensions) {
  # Reshape: raters x systems matrix
  ratings_matrix <- ratings %>%
    select(rater_id, system, all_of(dim)) %>%
    pivot_wider(names_from = system, values_from = all_of(dim)) %>%
    select(-rater_id) %>%
    as.matrix()
  
  icc_out <- icc(ratings_matrix, model = "twoway", type = "agreement")
  icc_results <- rbind(icc_results, data.frame(
    dimension = dim,
    icc = icc_out$value,
    lower = icc_out$lbound,
    upper = icc_out$ubound
  ))
  
  cat(sprintf("%-30s ICC = %.3f [%.3f, %.3f]\n", dim, icc_out$value, icc_out$lbound, icc_out$ubound))
}

# Overall ICC
icc_overall <- icc(as.matrix(ratings_consensus[, -1]), model = "twoway", type = "agreement")
cat(sprintf("\nOVERALL ICC = %.3f [%.3f, %.3f]\n", icc_overall$value, icc_overall$lbound, icc_overall$ubound))

# ---- 3. Ranking Divergence ----
cat("\n=== RANKING DIVERGENCE ===\n")

# Consensus multi-axis ranking
consensus_rank <- ratings %>%
  group_by(system) %>%
  summarise(mean_rating = mean(c_across(starts_with("D")))) %>%
  arrange(desc(mean_rating)) %>%
  mutate(multi_rank = row_number())

# Speed-based ranking
speed_rank <- speed %>%
  group_by(system) %>%
  summarise(median_rt = median(rt_ms)) %>%
  arrange(median_rt) %>%
  mutate(speed_rank = row_number())

# Merge and correlate
rank_comparison <- inner_join(
  consensus_rank %>% select(system, multi_rank),
  speed_rank %>% select(system, speed_rank),
  by = "system"
)

cat("\nRank Comparison:\n")
print(rank_comparison)

# Kendall's tau
tau <- cor.test(rank_comparison$multi_rank, rank_comparison$speed_rank, method = "kendall")
cat(sprintf("\nKendall tau = %.3f (p = %.4f)\n", tau$estimate, tau$p.value))

# Spearman
rho <- cor.test(rank_comparison$multi_rank, rank_comparison$speed_rank, method = "spearman")
cat(sprintf("Spearman rho = %.3f (p = %.4f)\n", rho$estimate, rho$p.value))

# ---- 4. Rater Background Effects ----
cat("\n=== RATER BACKGROUND EFFECTS ===\n")

ratings_long <- ratings %>%
  pivot_longer(cols = starts_with("D"), names_to = "dimension", values_to = "rating")

model_background <- lmer(rating ~ dimension * system * background + (1 | rater_id), 
                          data = ratings_long)
anova_result <- anova(model_background, type = 3)
print(anova_result)

# ---- 5. Qualitative Justification Coding ----
cat("\n=== QUALITATIVE CODING ===\n")
# Note: This section requires manual coding. The script provides a framework.

justifications <- ratings %>%
  filter(!is.na(justification_text)) %>%
  group_by(system) %>%
  summarise(
    n_dimens_mentioned = NA,  # To be coded
    consistency_with_rating = NA  # 1-5, to be coded
  )

cat("Qualitative coding template ready. Manual coding required.\n")
cat("Fields to code: n_dimensions_mentioned, consistency_with_rating\n")

# ---- 6. Falsification Criteria Check ----
cat("\n=== FALSIFICATION CRITERIA ===\n")

# FC1: >= 3 factors with eigenvalue > 1.0
n_factors <- sum(efa$values > 1.0)
cat("FC1 (>=3 factors):", ifelse(n_factors >= 3, "PASS", "FAIL — disconfirmed"),
    "(found:", n_factors, ")\n")

# FC2: First factor < 60% variance
var_first <- efa$Vaccounted["Proportion Var", 1]
cat("FC2 (first factor < 60%):", ifelse(var_first < 0.60, "PASS", "FAIL — disconfirmed"),
    "(explains:", round(var_first * 100, 1), "%)\n")

# FC3: ICC > 0.60 for at least 6/8 dimensions
icc_pass <- sum(icc_results$icc > 0.60)
cat("FC3 (ICC > 0.60 for >=6 dims):", ifelse(icc_pass >= 6, "PASS", "FAIL"),
    "(passed:", icc_pass, "/8)\n")

# FC4: Kendall tau < 0.90
cat("FC4 (tau < 0.90):", ifelse(abs(tau$estimate) < 0.90, "PASS", "FAIL — rankings identical"),
    "(tau =", round(tau$estimate, 3), ")\n")

# FC5: Qualitative — requires manual assessment
cat("FC5 (qualitative): Requires manual assessment of rater comments\n")

# Overall
criteria <- c(n_factors >= 3, var_first < 0.60, icc_pass >= 6, abs(tau$estimate) < 0.90)
if (all(criteria)) {
  cat("\n=== VERDICT: FRAMEWORK SUPPORTED (>= 3 factors, reliable) ===\n")
} else if (n_factors >= 2 && icc_pass >= 4) {
  cat("\n=== VERDICT: PARTIAL SUPPORT (fewer dimensions than claimed) ===\n")
} else {
  cat("\n=== VERDICT: FRAMEWORK DISCONFIRMED ===\n")
}

# ---- 7. Visualization ----
cat("\n=== GENERATING FIGURES ===\n")

# Factor loadings heatmap
pdf("output/exp2-factor-loadings.pdf", width = 10, height = 6)
corrplot(efa$loadings, is.corr = FALSE, method = "color",
         addCoef.col = "black", tl.col = "black", tl.cex = 0.8,
         title = "Factor Loadings: 8 Dimensions on 3 Factors")
dev.off()

# ICC forest plot
pdf("output/exp2-icc-forest.pdf", width = 8, height = 6)
icc_results %>%
  mutate(dimension = factor(dimension, levels = rev(dimensions))) %>%
  ggplot(aes(x = icc, y = dimension)) +
  geom_point(size = 3) +
  geom_errorbarh(aes(xmin = lower, xmax = upper), height = 0.2) +
  geom_vline(xintercept = c(0.60, 0.80), linetype = "dashed", color = "gray") +
  labs(x = "ICC (two-way agreement)", y = "", 
       title = "Inter-Rater Reliability per Dimension") +
  theme_minimal()
dev.off()

cat("Figures saved to output/\n")

sessionInfo()
