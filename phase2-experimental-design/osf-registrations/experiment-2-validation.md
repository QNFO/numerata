# OSF Registered Report — Experiment 2: Multi-Axis Framework Validation

**Registration Date:** [TO BE FILLED]
**Registered Report ID:** [TO BE ASSIGNED BY OSF]
**Project:** NUMERATA Phase 2 | **Protocol Version:** 1.0 | **DOI:** 10.5281/zenodo.21439813

---

## 1. Study Information

### 1.1 Title
Validating the Dimensionality of a Multi-Axis Numeral System Evaluation Framework: An Exploratory Factor Analysis and Inter-Rater Reliability Study

### 1.2 Authors
QNFO Research (corresponding: research@qnfo.org) + [Collaborating PI(s) TBD]

### 1.3 Abstract
NUMERATA proposes an 8-dimension evaluation framework for numeral systems spanning structural, cognitive, and design axes. A central claim is that these axes capture independent properties that produce rankings distinct from single-dimension (speed-only) comparisons. This registered report tests two predictions: (1) the 8 dimensions reflect at least 3 independent latent factors (Exploratory Factor Analysis on N=20 expert raters × 8 systems), and (2) inter-rater reliability exceeds ICC = 0.80 per axis. Failure to demonstrate factor independence or adequate reliability would falsify the framework's foundational premise. Twenty raters from cognitive science, design, mathematics education, and history of science will evaluate 8 numeral systems on all 8 dimensions using a standardized rubric. Pre-registered falsification criteria are specified for factor extraction, inter-rater reliability, and ranking divergence from speed-only comparisons.

---

## 2. Design Plan

### 2.1 Study Type
Correlational validation study with systematic rater recruitment.

### 2.2 Blinding
Raters are unaware of NUMERATA's specific hypotheses regarding factor structure. They are told the study aims to "develop and validate a comprehensive rubric for evaluating numeral system properties."

### 2.3 Study Design
| Component | Details |
|-----------|---------|
| **Raters** | N = 20 (5 per disciplinary background) |
| **Systems evaluated** | 8 numeral systems |
| **Axes scored** | 8 dimensions, each on 1-7 Likert scale |
| **Speed baseline** | Separate cohort (N=40) for single-axis RT comparison |
| **Total ratings** | 20 raters × 8 systems × 8 dimensions = 1,280 ratings |

### 2.4 Numeral Systems Evaluated

| # | System | Type | Base | Distinctive Feature |
|---|--------|------|------|---------------------|
| 1 | Hindu-Arabic | Positional | 10 | Global standard; zero as cardinal number |
| 2 | Roman | Additive | — | No zero; subtractive notation rule |
| 3 | Mayan | Positional | 20 | Vertical stacking; shell-shaped zero |
| 4 | Binary | Positional | 2 | Minimal glyph set; maximal place-value length |
| 5 | Chinese (traditional) | Multiplicative-Additive | 10 | Per-power glyphs; structural transparency |
| 6 | Babylonian | Cumulative-Positional | 60 | Sub-base 10; 4,000-year persistence |
| 7 | Cistercian | Compact | 10 | Single glyph for 1-9999; orthogonal dimension encoding |
| 8 | Tally | Unary | — | One-to-one correspondence; maximal simplicity |

---

## 3. Sampling Plan

### 3.1 Rater Sample Size Rationale

For Exploratory Factor Analysis (EFA) with 8 variables:
- **Minimum subject-to-variable ratio:** 2:1 (16 raters)
- **Adequate ratio:** 2.5:1 (20 raters) — **SELECTED**
- **Excellent ratio:** 5:1 (40 raters)

N = 20 raters provides adequate subject-to-variable ratio for EFA with orthogonal rotation. This is a validation study — a larger sample (N ≥ 100) would be required for Confirmatory Factor Analysis (CFA) in a subsequent Registered Report if EFA supports factor independence.

### 3.2 Rater Eligibility
| Background | N | Expertise |
|------------|---|-----------|
| **Cognitive Science** | 5 | PhD students or postdocs in numerical cognition, psycholinguistics, or cognitive psychology |
| **Design/HCI** | 5 | Practitioners or researchers in typography, information design, or interface design |
| **Mathematics Education** | 5 | Teachers or researchers in primary/secondary math education |
| **History of Science** | 5 | Researchers in history of mathematics or science with knowledge of notation systems |

### 3.3 Speed-Task Cohort
N = 40 participants for single-axis (speed-only) comparison. Same eligibility as Experiment 1 participants (§3.3 of Experiment 1 RR). Recruitment via Prolific Academic.

### 3.4 Recruitment
Raters recruited via professional networks, academic mailing lists, and targeted invitations. Honorarium: $100 per rater (estimated 90-minute commitment including preparation). Speed-task participants compensated at £9.00/hour.

---

## 4. Variables

### 4.1 Rating Dimensions (all 1-7 Likert)

| Dimension | Label | Anchor 1 | Anchor 7 |
|-----------|-------|----------|----------|
| D1 | Structural Simplicity | Highly complex; many composition rules | Minimal rules; straightforward composition |
| D2 | Glyph Economy | Many distinct glyphs required | Minimal distinctive glyphs |
| D3 | Place-Value Transparency | Opaque; position-value mapping unclear | Fully transparent; position determines value |
| D4 | Cognitive Load / Learnability | Very difficult for naive learner | Very easy for naive learner |
| D5 | Error Resistance | Single-glyph error changes value | Single-glyph error detectable or self-correcting |
| D6 | Metaphor Recruitment Diversity | Relies on single embodied metaphor | Recruits multiple complementary metaphors |
| D7 | Fraction Representation Quality | Few fractions terminate cleanly | Many common fractions terminate |
| D8 | Extensibility | Brittle; cannot represent very large/small numbers | Robust; naturally extends to any magnitude |

### 4.2 Speed DV (Separate Cohort)
Median RT (ms) for correct numeral reading. Stimuli: 20 numerals per system (matched for digit length: 2-4 digits), randomized across systems.

### 4.3 Ranking Task
After completing all ratings, each rater rank-orders the 8 systems by "overall quality as a numeral system for general human use" (1 = best, 8 = worst) and provides qualitative justification.

---

## 5. Procedure

### 5.1 Rater Procedure (90 min)
```
1. ORIENTATION (15 min)
   - Receive: Scoring Rubric + Numeral System Reference Sheets (8 systems, each showing notation rules, examples, and common operations)
   - Watch: 5-minute training video demonstrating rubric use on a practice system (Greek alphabetic numerals — not in the evaluation set)
   - Practice: Rate the Greek system on all 8 dimensions (answers provided after)

2. INDEPENDENT RATING (60 min)
   - For each of 8 systems (randomized order):
     a) Study reference sheet (2 min)
     b) Interact with worked examples (3 min)
     c) Rate all 8 dimensions (5 min spread across an online form)
   - Ratings entered via Qualtrics/Google Forms with forced-choice Likert scales

3. RANKING + JUSTIFICATION (10 min)
   - Rank-order all 8 systems by overall preference
   - Provide ≥50 word justification for top-ranked and bottom-ranked system

4. EXIT INTERVIEW (5 min)
   - Open-ended: "Which dimensions did you find clearest to rate? Which were most ambiguous?"
   - Demographic questions: years of experience, primary research area, familiarity with each system (1-5)
```

### 5.2 Speed-Task Procedure (30 min)
```
1. CONSENT + DEMOGRAPHICS (5 min)
2. NUMERAL READING TASK (25 min)
   - 20 numerals per system × 8 systems = 160 trials
   - Randomized across systems (intermixed)
   - Each trial: Numeral displayed → "Type the number" (standard digits) → 500 ms ITI
   - Practice: 5 non-experimental trials (standard Hindu-Arabic digits)
```

---

## 6. Analysis Plan

### 6.1 Primary: Exploratory Factor Analysis
```r
library(psych)

# Compute 8×8 correlation matrix from raters×systems matrix
# Average across raters (consensus ratings) OR use individual ratings
ratings_wide <- dcast(rater_long, rater_id + system ~ dimension, value.var = "rating")

# EFA with varimax rotation
efa <- fa(ratings_wide[,3:10], nfactors = 3, rotate = "varimax", fm = "ml")
print(efa$loadings, cutoff = 0.30)

# Parallel analysis to determine number of factors
fa.parallel(ratings_wide[,3:10], fa = "fa", n.iter = 1000)

# Report:
# - Eigenvalues for each factor
# - Variance explained by each factor
# - Factor loadings matrix
# - Model fit indices (RMSEA, TLI if using ML estimation)
```

### 6.2 Primary: Inter-Rater Reliability
```r
library(irr)

# ICC for each dimension across raters
for (dim in dim_names) {
  ratings_matrix <- dcast(rater_long[rater_long$dimension == dim,], 
                           rater_id ~ system, value.var = "rating")
  icc_result <- icc(ratings_matrix[,-1], model = "twoway", type = "agreement")
  print(paste(dim, "ICC:", round(icc_result$value, 3), 
              "95% CI:", round(icc_result$lbound, 3), "-", round(icc_result$ubound, 3)))
}

# Overall ICC
icc_all <- icc(ratings_matrix_all, model = "twoway", type = "agreement")
```

### 6.3 Ranking Divergence Analysis
```r
# Kendall's tau between multi-axis consensus ranking and speed-only ranking
# Multi-axis ranking: average across raters → rank
# Speed ranking: median RT per system (separate cohort) → rank
cor.test(multi_axis_rank, speed_rank, method = "kendall")

# Also compute Spearman's rho for interpretability
cor.test(multi_axis_rank, speed_rank, method = "spearman")
```

### 6.4 Exploratory: Rater Background Effects
```r
# Does disciplinary background predict rating patterns?
model_background <- lmer(rating ~ dimension * system * background + 
                          (1 | rater_id), data = rater_long)
anova(model_background)
```

### 6.5 Robustness Checks
1. EFA with promax (oblique) rotation to confirm factor structure robustness
2. CFA path: If EFA supports ≥3 factors, recommend CFA with N ≥ 100 in subsequent study
3. Leave-one-rater-out ICC to identify outlier raters
4. Quality of qualitative justifications: Blind-coded for consistency with quantitative ratings

---

## 7. Falsification Criteria

### The multi-axis framework is DISCONFIRMED if ANY of:
1. **FC1:** EFA extracts ≤ 2 factors with eigenvalue > 1.0 (axes are not genuinely independent)
2. **FC2:** First factor explains > 60% variance (a single "general evaluation" factor dominates)
3. **FC3:** ICC < 0.60 for ≥ 3 of 8 dimensions (axes cannot be reliably measured)
4. **FC4:** Kendall's τ > 0.90 between multi-axis and speed-only rankings (rankings are functionally identical)
5. **FC5:** Qualitative responses from ≥ 5 raters explicitly state that dimensions are "not meaningfully distinct" or "measure the same thing"

### The framework is SUPPORTED (provisional) if:
1. ≥ 3 factors extracted with eigenvalue > 1.0
2. No single factor explains > 50% variance
3. ICC > 0.70 for ≥ 6 of 8 dimensions
4. Kendall's τ < 0.70 between multi-axis and speed-only rankings

### Partial support:
≥ 2 independent factors + adequate reliability + moderate ranking divergence → framework has some validity but fewer dimensions than claimed.

---

## 8. Other

### 8.1 Data Availability
As per Experiment 1 (§8.1). All de-identified rater data, analysis scripts, and materials on OSF.

### 8.2 Sample Size Limitation
N = 20 raters is adequate for EFA but not CFA. This is acknowledged as a limitation. A CFA follow-up with N ≥ 100 is pre-registered as a conditional next step (dependent on EFA supporting factor independence).

### 8.3 Multi-Disciplinary Balance
The equal representation across 4 backgrounds (5 each) is intentional — if background effects are significant, they indicate the framework is NOT paradigm-independent, which would partially falsify C1. This is an embedded test.
