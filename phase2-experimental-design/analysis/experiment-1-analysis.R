#!/usr/bin/env Rscript
# =============================================================================
# NUMERATA Phase 2 — Experiment 1: Metaphor-Consistent Notation Design
# Analysis Script
# =============================================================================
# Pre-registered at: [OSF Registered Report DOI TBD]
# Author: QNFO Research
# Date: 2026-07-19
# =============================================================================
# This script implements EXACTLY the analysis plan specified in the Registered
# Report. DO NOT modify without documenting under "Deviations from
# Pre-Registration." All exploratory analyses are clearly marked.
# =============================================================================

# ---- 0. Setup ----
library(tidyverse)
library(lme4)
library(lmerTest)
library(effsize)
library(multcomp)
library(BayesFactor)
library(psych)
library(car)

set.seed(20260719)  # Reproducibility seed

# ---- 1. Load and Clean Data ----
# Expected data format: CSV with columns:
# participant_id, group (A/B/C), block_order (collection_first/spatial_first),
# numeracy (0-4), math_anxiety (9-45), digit_span (integer),
# trials_criterion (1-4), collection_error_rate, spatial_error_rate,
# collection_rt_median, spatial_rt_median, transfer_accuracy,
# naturalness_rating (1-7), catch_failures (0-3), completion_time_sec,
# suspicion_code (0=naive, 1=suspicious)

df_raw <- read.csv("data/experiment-1-data.csv", stringsAsFactors = FALSE)

# ---- 2. Apply Pre-Registered Exclusion Criteria ----
cat("\n=== PARTICIPANT EXCLUSION ===\n")
cat("Initial N:", nrow(df_raw), "\n")

df <- df_raw %>%
  # Exclusion 1: Failed attention checks (more than 1 failure)
  filter(catch_failures <= 1)
cat("After catch-trial exclusion:", nrow(df), "\n")

# Exclusion 2-3: Completion time outliers
median_time <- median(df$completion_time_sec)
df <- df %>%
  filter(completion_time_sec > 0.3 * median_time,
         completion_time_sec < mean(completion_time_sec) + 3 * sd(completion_time_sec))
cat("After time outlier exclusion:", nrow(df), "\n")

# Exclusion 4: Cannot perform task (< 70% accuracy after 4 training blocks)
df <- df %>% filter(trials_criterion < 4 | 
                     (trials_criterion == 4 & collection_error_rate < 0.30))
cat("After performance exclusion:", nrow(df), "\n")

# Exclusion 5: Trial-level RT exclusions (done during pre-processing)
# Note: This script assumes RT data has been pre-processed with:
#   - RT < 200ms excluded
#   - RT > 3 SD above participant mean excluded
#   - Only correct trials included in RT analysis

cat("Final N:", nrow(df), "\n")
cat("Per group:", table(df$group), "\n")

# ---- 3. Demographics and Descriptives ----
cat("\n=== DESCRIPTIVES ===\n")
df %>% 
  group_by(group) %>%
  summarise(
    n = n(),
    age_mean = mean(age, na.rm = TRUE),
    numeracy_mean = mean(numeracy),
    math_anxiety_mean = mean(math_anxiety),
    digit_span_mean = mean(digit_span)
  ) %>% print()

# Balance check: randomization should produce equivalent groups
cat("\nBalance checks (ANOVA):\n")
summary(aov(numeracy ~ group, data = df))
summary(aov(math_anxiety ~ group, data = df))
summary(aov(digit_span ~ group, data = df))

# ---- 4. Primary Analysis: 3 x 2 Mixed ANOVA ----
cat("\n=== PRIMARY ANALYSIS: Mixed ANOVA ===\n")

# Reshape to long format
df_long <- df %>%
  pivot_longer(
    cols = c(collection_error_rate, spatial_error_rate),
    names_to = "task_type",
    values_to = "error_rate"
  ) %>%
  mutate(
    task_type = factor(task_type, 
                        levels = c("collection_error_rate", "spatial_error_rate"),
                        labels = c("Collection", "Spatial")),
    group = factor(group, levels = c("C", "A", "B"))
  )

# Mixed ANOVA
model_primary <- aov(
  error_rate ~ group * task_type + Error(participant_id/task_type),
  data = df_long
)
summary(model_primary)

# Effect size: partial eta-squared
cat("\nPartial Eta-Squared:\n")
eta_sq <- effectsize::eta_squared(model_primary)
print(eta_sq)

# ---- 5. Planned Contrasts (Pre-Registered Order) ----
cat("\n=== PLANNED CONTRASTS ===\n")

# Prepare contrast matrix
contrasts(df_long$group) <- cbind(
  "C1_A_vs_C_Collection" = c(0, 1, -1),   # A vs C on Collection
  "C2_B_vs_C_Spatial"    = c(0, -1, 1),    # B vs C on Spatial
  "C3_Interaction"       = c(0, 1, -1)     # A vs B interaction
)

# Fit linear model for contrasts (using aggregated data per participant)
df_wide <- df %>%
  mutate(
    diff_collection = collection_error_rate,
    diff_spatial = spatial_error_rate
  )

# Contrast 1: A vs C on Collection tasks
cat("\nContrast 1: Group A (Collection-Aligned) vs Group C (Control) on Collection Tasks\n")
contrast_1 <- t.test(
  df$collection_error_rate[df$group == "A"],
  df$collection_error_rate[df$group == "C"],
  alternative = "less"  # A should have LOWER error
)
print(contrast_1)
d_c1 <- cohen.d(df$collection_error_rate[df$group == "A"],
                df$collection_error_rate[df$group == "C"])
cat("Cohen's d:", round(d_c1$estimate, 3), 
    "95% CI:", round(d_c1$conf.int[1], 3), "-", round(d_c1$conf.int[2], 3), "\n")

# Contrast 2: B vs C on Spatial tasks
cat("\nContrast 2: Group B (Motion-Aligned) vs Group C (Control) on Spatial Tasks\n")
contrast_2 <- t.test(
  df$spatial_error_rate[df$group == "B"],
  df$spatial_error_rate[df$group == "C"],
  alternative = "less"
)
print(contrast_2)
d_c2 <- cohen.d(df$spatial_error_rate[df$group == "B"],
                df$spatial_error_rate[df$group == "C"])
cat("Cohen's d:", round(d_c2$estimate, 3),
    "95% CI:", round(d_c2$conf.int[1], 3), "-", round(d_c2$conf.int[2], 3), "\n")

# Contrast 3: Interaction contrast (A on Collection vs B on Spatial)
cat("\nContrast 3: Interaction — A advantage on Collection vs B advantage on Spatial\n")
df$interaction_diff <- (df$collection_error_rate - df$spatial_error_rate)
contrast_3 <- t.test(
  interaction_diff ~ group,
  data = df %>% filter(group %in% c("A", "B"))
)
print(contrast_3)

# Bonferroni correction
cat("\nBonferroni-adjusted alpha: 0.05/3 = 0.017\n")

# ---- 6. Secondary: Multilevel Model (Error Rate) ----
cat("\n=== SECONDARY: Multilevel Logistic Model ===\n")

model_error <- glmer(
  error ~ group * task_type + numeracy + math_anxiety + (1 | participant_id),
  data = df_long,
  family = binomial
)
summary(model_error)
cat("\nOdds Ratios:\n")
print(exp(fixef(model_error)))

# ---- 7. Secondary: Multilevel Model (RT) ----
cat("\n=== SECONDARY: Multilevel Model (log RT) ===\n")

df_rt_long <- df %>%
  pivot_longer(
    cols = c(collection_rt_median, spatial_rt_median),
    names_to = "task_type",
    values_to = "rt"
  ) %>%
  mutate(
    task_type = factor(task_type,
                        levels = c("collection_rt_median", "spatial_rt_median"),
                        labels = c("Collection", "Spatial")),
    log_rt = log(rt)
  )

model_rt <- lmer(
  log_rt ~ group * task_type + numeracy + (1 | participant_id),
  data = df_rt_long
)
summary(model_rt)

# ---- 8. Transfer Task Analysis ----
cat("\n=== TRANSFER TASK ===\n")

model_transfer <- aov(transfer_accuracy ~ group, data = df)
summary(model_transfer)

# Dunnett's test: A vs C, B vs C
dunnett_test <- glht(model_transfer, linfct = mcp(group = "Dunnett"))
summary(dunnett_test)

# Effect sizes
cat("\nTransfer effect sizes:\n")
cat("A vs C:", cohen.d(df$transfer_accuracy[df$group == "A"],
                        df$transfer_accuracy[df$group == "C"])$estimate, "\n")
cat("B vs C:", cohen.d(df$transfer_accuracy[df$group == "B"],
                        df$transfer_accuracy[df$group == "C"])$estimate, "\n")

# ---- 9. Exploratory: Metaphor Recruitment x Performance ----
cat("\n=== EXPLORATORY: Naturalness-Performance Correlation ===\n")

# Group A: Naturalness ~ Collection RT correlation
cat("Group A (Collection-Aligned):\n")
cor_a <- cor.test(df$naturalness_rating[df$group == "A"],
                   df$collection_error_rate[df$group == "A"],
                   method = "spearman")
print(cor_a)

# Group B: Naturalness ~ Spatial RT correlation
cat("Group B (Motion-Aligned):\n")
cor_b <- cor.test(df$naturalness_rating[df$group == "B"],
                   df$spatial_error_rate[df$group == "B"],
                   method = "spearman")
print(cor_b)

# ---- 10. Robustness Checks ----
cat("\n=== ROBUSTNESS CHECKS ===\n")

# Non-parametric alternative for trials-to-criterion
cat("\nKruskal-Wallis (trials-to-criterion):\n")
kruskal.test(trials_criterion ~ group, data = df)
pairwise.wilcox.test(df$trials_criterion, df$group, p.adjust.method = "bonferroni")

# Bayesian alternative
cat("\nBayes Factor (Group x Task interaction):\n")
bf_data <- df_long %>%
  filter(group != "C") %>%  # Compare A vs B
  mutate(group = droplevels(group))
bf <- anovaBF(error_rate ~ group * task_type, data = bf_data, whichRandom = "participant_id")
print(bf)

# ---- 11. Falsification Criteria Check ----
cat("\n=== FALSIFICATION CRITERIA ===\n")

# FC1: Group x Task interaction significant?
fc1 <- summary(model_primary)$"Error: participant_id:task_type"
fc1_p <- fc1[[1]]$"Pr(>F)"[1]
cat("FC1 (interaction p < 0.05):", ifelse(fc1_p < 0.05, "PASS", "FAIL — disconfirmed"), 
    "(p =", round(fc1_p, 4), ")\n")

# FC2: At least one planned contrast significant?
fc2 <- min(contrast_1$p.value, contrast_2$p.value) < 0.017
cat("FC2 (planned contrast p < 0.017):", ifelse(fc2, "PASS", "FAIL"), "\n")

# FC3: Transfer effect size > 0.20?
fc3_a <- abs(d_c1$estimate) > 0.20
fc3_b <- abs(d_c2$estimate) > 0.20
cat("FC3 (transfer d > 0.20): A vs C:", ifelse(fc3_a, "PASS", "FAIL"),
    "B vs C:", ifelse(fc3_b, "PASS", "FAIL"), "\n")

# FC4: Naturalness-performance correlation > 0.10?
fc4_a <- abs(cor_a$estimate) > 0.10
fc4_b <- abs(cor_b$estimate) > 0.10
cat("FC4 (naturalness r > 0.10): Group A:", ifelse(fc4_a, "PASS", "FAIL"),
    "Group B:", ifelse(fc4_b, "PASS", "FAIL"), "\n")

# Overall verdict
criteria <- c(fc1, fc2, fc3_a || fc3_b, fc4_a || fc4_b)
if (all(criteria)) {
  cat("\n=== VERDICT: HYPOTHESIS CONFIRMED (provisional) ===\n")
} else if (any(criteria[1:2])) {
  cat("\n=== VERDICT: PARTIAL SUPPORT — some predictions confirmed ===\n")
} else {
  cat("\n=== VERDICT: HYPOTHESIS DISCONFIRMED ===\n")
}

# ---- 12. Session Info ----
cat("\n=== SESSION INFO ===\n")
sessionInfo()
