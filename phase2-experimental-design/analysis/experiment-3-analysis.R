#!/usr/bin/env Rscript
# =============================================================================
# NUMERATA Phase 2 — Experiment 3: Dual Zero-Glyph Pilot RCT
# Analysis Script
# =============================================================================
# Pre-registered at: [OSF Registered Report DOI TBD]
# =============================================================================

library(tidyverse)
library(lme4)
library(lmerTest)
library(effsize)
library(TOSTER)
library(mice)
library(pwr)
set.seed(20260719)

# ---- Load Data ----
# Expected format: pilot_data.csv — columns:
# participant_id, group (dual/single), school_id, classroom_id,
# age_months, gender, free_school_meal (0/1),
# zca_pre, zca_post, zca_delayed (0-25), 
# zca_cardinal_pre/post/delayed ... zca_conceptual_pre/post/delayed,
# arith_pre, arith_post, arith_delayed (0-10),
# maq_pre, maq_post (8-32),
# digit_span (integer),
# transfer_score (0-5), transfer_rt_median,
# sessions_attended (1-4), fidelity_score (0-100),
# teacher_willingness (1-5), teacher_engagement (1-5)

df_raw <- read.csv("data/experiment-3-data.csv")

# ---- 1. Apply Exclusion Criteria ----
cat("=== PARTICIPANT EXCLUSION ===\n")
cat("Initial N:", nrow(df_raw), "\n")

# Per-protocol: Attended >= 3 of 4 sessions
df_pp <- df_raw %>% filter(sessions_attended >= 3)
cat("Per-protocol N:", nrow(df_pp), "\n")

# ITT: All randomized participants
df_itt <- df_raw
cat("ITT N:", nrow(df_itt), "\n")

# Primary analysis on per-protocol; ITT as sensitivity
df <- df_pp

# Missing post-test
cat("Missing post-test:", sum(is.na(df$zca_post)), "\n")
df <- df %>% filter(!is.na(zca_post))
cat("Final N (complete cases):", nrow(df), "\n")
cat("Per group:", table(df$group), "\n")

# ---- 2. Baseline Balance Check ----
cat("\n=== BASELINE BALANCE ===\n")

df %>%
  group_by(group) %>%
  summarise(
    n = n(),
    age_mean = mean(age_months),
    gender_female = mean(gender == "female"),
    zca_pre_mean = mean(zca_pre), zca_pre_sd = sd(zca_pre),
    arith_pre_mean = mean(arith_pre), arith_pre_sd = sd(arith_pre),
    maq_pre_mean = mean(maq_pre),
    digit_span_mean = mean(digit_span),
    fsm_pct = mean(free_school_meal)
  ) %>% print()

# Formal balance tests
cat("\nBalance tests (t-tests):\n")
cat("ZCA pre:", t.test(zca_pre ~ group, data = df)$p.value, "\n")
cat("Arith pre:", t.test(arith_pre ~ group, data = df)$p.value, "\n")
cat("Age:", t.test(age_months ~ group, data = df)$p.value, "\n")
cat("Gender:", chisq.test(table(df$group, df$gender))$p.value, "\n")

# ---- 3. Primary Analysis: ANCOVA on Post-Test ZCA ----
cat("\n=== PRIMARY: ANCOVA ===\n")

model_primary <- lm(zca_post ~ group + zca_pre + age_months + gender, data = df)
summary(model_primary)

# Adjusted means
cat("\nAdjusted Means:\n")
library(emmeans)
emm <- emmeans(model_primary, ~ group)
print(emm)

# Effect size
cat("\nEffect Size:\n")
d_primary <- cohen.d(zca_post ~ group, data = df)
cat(sprintf("Cohen's d = %.3f [%.3f, %.3f]\n", 
            d_primary$estimate, d_primary$conf.int[1], d_primary$conf.int[2]))

# ---- 4. Repeated-Measures Mixed Model ----
cat("\n=== REPEATED MEASURES ===\n")

df_long <- df %>%
  select(participant_id, group, age_months, gender,
         zca_pre, zca_post, zca_delayed) %>%
  pivot_longer(cols = c(zca_pre, zca_post, zca_delayed),
               names_to = "time", values_to = "zca") %>%
  mutate(
    time = factor(time, levels = c("zca_pre", "zca_post", "zca_delayed"),
                  labels = c("Pre", "Post", "Delayed")),
    time_num = as.numeric(time)
  )

model_mixed <- lmer(zca ~ group * time + age_months + gender + (1 | participant_id), 
                     data = df_long)
anova(model_mixed, type = 3)

# Simple effects at each time point
cat("\nSimple Effects (group at each time):\n")
emmeans(model_mixed, pairwise ~ group | time)

# Group × Time interaction contrasts
cat("\nInteraction Contrasts:\n")
contrast(emmeans(model_mixed, ~ group * time),
         list(
           "Dual vs Single at Post" = c(0, 1, 0, 0, -1, 0),
           "Dual vs Single at Delayed" = c(0, 0, 1, 0, 0, -1)
         ))

# ---- 5. Transfer Task (Non-Inferiority) ----
cat("\n=== TRANSFER TASK: NON-INFERIORITY ===\n")

cat("Transfer scores by group:\n")
df %>%
  group_by(group) %>%
  summarise(
    mean = mean(transfer_score, na.rm = TRUE),
    sd = sd(transfer_score, na.rm = TRUE),
    n = n()
  ) %>% print()

# Standard t-test
t_test_transfer <- t.test(transfer_score ~ group, data = df)
cat(sprintf("\nStandard t-test: t = %.3f, p = %.4f\n", 
            t_test_transfer$statistic, t_test_transfer$p.value))

# Equivalence test (TOST)
cat("\nEquivalence Test (TOST):\n")
tost_result <- tost(
  df$transfer_score[df$group == "dual"],
  df$transfer_score[df$group == "single"],
  low_eqbound = -0.5, high_eqbound = 0.5,
  alpha = 0.05
)
print(tost_result)

# Transfer effect size
d_transfer <- cohen.d(transfer_score ~ group, data = df)
cat(sprintf("Transfer d = %.3f\n", d_transfer$estimate))

# ---- 6. ITT Sensitivity Analysis ----
cat("\n=== ITT SENSITIVITY ===\n")

if (sum(is.na(df_itt$zca_post)) > 0) {
  cat("Missing post-test data detected. Running multiple imputation...\n")
  
  imp <- mice(df_itt %>% select(zca_post, group, zca_pre, age_months, gender),
              m = 20, method = "pmm", printFlag = FALSE)
  
  model_itt <- with(imp, lm(zca_post ~ group + zca_pre + age_months + gender))
  pooled_itt <- pool(model_itt)
  cat("\nPooled ITT results:\n")
  print(summary(pooled_itt))
} else {
  cat("No missing post-test data. ITT = Per-Protocol.\n")
  model_itt <- lm(zca_post ~ group + zca_pre + age_months + gender, data = df_itt)
  print(summary(model_itt))
}

# ---- 7. Subgroup Analyses ----
cat("\n=== EXPLORATORY SUBGROUPS ===\n")

# By baseline ZCA
df <- df %>% mutate(zca_median = ifelse(zca_pre > median(zca_pre), "high", "low"))

model_subgroup <- lm(zca_post ~ group * zca_median + zca_pre + age_months, data = df)
cat("\nSubgroup: Baseline ZCA (median split)\n")
print(summary(model_subgroup))

# By gender
model_gender <- lm(zca_post ~ group * gender + zca_pre + age_months, data = df)
cat("\nSubgroup: Gender\n")
print(summary(model_gender))

# ---- 8. Fidelity Sensitivity ----
cat("\n=== FIDELITY SENSITIVITY ===\n")
cat("Sessions with fidelity < 80%:", sum(df$fidelity_score < 80), "\n")

if (sum(df$fidelity_score < 80) > 0) {
  df_high_fidelity <- df %>% filter(fidelity_score >= 80)
  model_fidelity <- lm(zca_post ~ group + zca_pre + age_months + gender, 
                        data = df_high_fidelity)
  cat("\nHigh-fidelity only (>=80%):\n")
  print(summary(model_fidelity))
}

# ---- 9. Full RCT Power Analysis ----
cat("\n=== FULL RCT POWER ANALYSIS ===\n")

cat(sprintf("Pilot effect size: d = %.3f\n", d_primary$estimate))

if (d_primary$estimate > 0.20) {
  cat("\nProceeding to full RCT power analysis:\n")
  full_rct <- pwr.t.test(d = d_primary$estimate, power = 0.80, 
                          type = "two.sample", alternative = "greater")
  cat(sprintf("Required N per group: %d\n", ceiling(full_rct$n)))
  cat(sprintf("Total N (2 groups): %d\n", ceiling(full_rct$n * 2)))
  cat(sprintf("Total N (with 20%% attrition): %d\n", ceiling(full_rct$n * 2 * 1.2)))
} else if (d_primary$estimate > 0.10) {
  cat("\nEffect size in ambiguous range (0.10-0.20). Recommend replication pilot.\n")
} else {
  cat("\nEffect size below 0.10. Do NOT proceed to full RCT.\n")
}

# ---- 10. Falsification Criteria Check ----
cat("\n=== FALSIFICATION CRITERIA ===\n")

# FC1: ANCOVA significant AND d > 0.20
fc1_sig <- summary(model_primary)$coefficients["groupdual", "Pr(>|t|)"] < 0.05
fc1 <- fc1_sig && d_primary$estimate > 0.20
cat("FC1 (ANCOVA p < 0.05 AND d > 0.20):", 
    ifelse(fc1, "PASS — promising", "FAIL — disconfirmed"),
    sprintf("(p = %.4f, d = %.3f)\n", 
            summary(model_primary)$coefficients["groupdual", "Pr(>|t|)"],
            d_primary$estimate))

# FC2: Transfer task — no worse on standard notation
fc2 <- d_transfer$estimate > -0.20
cat("FC2 (transfer d > -0.20):",
    ifelse(fc2, "PASS", "FAIL — glyph interference detected"),
    sprintf("(d = %.3f)\n", d_transfer$estimate))

# FC3: Delayed post-test retention
d_delayed <- cohen.d(zca_delayed ~ group, data = df %>% filter(!is.na(zca_delayed)))
fc3 <- d_delayed$estimate > 0.05
cat("FC3 (delayed post-test d > 0.05):",
    ifelse(fc3, "PASS — evidence of retention", "FAIL"),
    sprintf("(d = %.3f)\n", d_delayed$estimate))

# Teacher evaluation
teacher_mean <- mean(df$teacher_willingness, na.rm = TRUE)
cat("Teacher willingness (mean):", round(teacher_mean, 2), 
    ifelse(teacher_mean > 3.5, "— POSITIVE", "— CONCERN"), "\n")

# Safety check
cat("\nSAFETY CHECK (dual-glyph NOT worse on standard arithmetic):\n")
d_safety <- cohen.d(df$arith_post[df$group == "dual"],
                     df$arith_post[df$group == "single"])
if (d_safety$estimate < -0.50) {
  cat("WARNING: Dual-glyph group > 0.5 SD LOWER on standard arithmetic. HALT.\n")
} else {
  cat(sprintf("OK: d = %.3f on standard arithmetic\n", d_safety$estimate))
}

# Overall
if (fc1 && fc2 && fc3 && teacher_mean > 3.5) {
  cat("\n=== VERDICT: PROCEED TO FULL RCT ===\n")
} else if (fc1 || fc3) {
  cat("\n=== VERDICT: AMBIGUOUS — consider replication pilot ===\n")
} else {
  cat("\n=== VERDICT: DO NOT PROCEED ===\n")
}

# ---- 11. Teacher Evaluation Summary ----
cat("\n=== TEACHER EVALUATIONS ===\n")
df %>%
  summarise(
    willingness_mean = mean(teacher_willingness, na.rm = TRUE),
    engagement_mean = mean(teacher_engagement, na.rm = TRUE)
  ) %>% print()

sessionInfo()
