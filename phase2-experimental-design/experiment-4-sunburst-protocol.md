# NUMERATA Phase 2 — Experiment 4: Sunburst Notation Primality Instruction

**Project:** NUMERATA | **Phase:** 2a — Experimental Design
**Date:** 2026-07-19 | **Status:** Protocol v1.0 | **Pre-Registration:** [OSF TBD]
**Research Type:** Human-Subject RCT (ages 10-12) — requires IRB, school partnerships
**Source:** WP0.3 — Distinction-Based Primality

---

## 1. Study Information

### 1.1 Title
Seeing Primes: A Randomized Controlled Trial of Sunburst Notation for Primality Instruction in Upper Elementary Mathematics

### 1.2 Authors
QNFO Research (corresponding: research@qnfo.org) + [Collaborating PI(s) TBD]

### 1.3 Abstract
Arabic digits make primality completely opaque — a child cannot look at "17" and see that it is prime. WP0.3 introduces the **sunburst notation**: a visual numeral system derived from Spencer-Brown's distinction calculus, where numbers are represented as radial spokes from a center point (a "sunburst"). In this notation, prime numbers are visually immediate as single-level radial forms; composite numbers are trees of nested sunbursts. This registered report tests whether 4 weeks of sunburst-based primality instruction improves prime recognition accuracy, factorization speed, and conceptual understanding of the Fundamental Theorem of Arithmetic compared to standard Arabic-digit instruction, in 10-12 year-old children. A between-subjects RCT (N=156, two groups) with pre-test, post-test, and 8-week delayed post-test is pre-registered with full power analysis, falsification criteria, and analysis plan.

---

## 2. Design Plan

### 2.1 Study Type
Randomized controlled trial — between-subjects, two-group design with repeated measures.

### 2.2 Groups

| Group | Instruction | Notation | Duration |
|-------|------------|----------|----------|
| **Experimental** | Sunburst-based primality instruction | Sunburst + Arabic (dual notation) | 4 × 45-min sessions |
| **Active Control** | Standard primality instruction | Arabic only (factor tree method) | 4 × 45-min sessions |

**CRITICAL CONTROL:** Total instruction time, number of worked examples, and practice problem count are IDENTICAL across groups. The ONLY difference is the notation used to teach primality concepts. The control group uses the standard "factor tree" method — the current best practice for teaching prime factorization in upper elementary grades.

### 2.3 Blinding
- **Child blinding:** Single-blind — children do not know there is an alternative instructional method
- **Teacher blinding:** Teachers delivering instruction cannot be blinded to notation but are blinded to specific hypotheses ("evaluating different approaches to teaching factors and primes")
- **Outcome assessor blinding:** Computer-based assessment with automated scoring
- **Analyst blinding:** Data analyzed with conditions coded as A/B until primary analyses complete

### 2.4 Study Design Matrix

| Factor | Levels | Type |
|--------|--------|------|
| Group | Sunburst-Instruction, Standard-Instruction | Between-subjects |
| Time | Pre-test (Week 1), Post-test (Week 4), Delayed Post-test (Week 12) | Within-subjects |
| Task Type | Prime Recognition, Factorization, Conceptual Understanding | Within-subjects |

---

## 3. Sampling Plan

### 3.1 Sample Size Rationale

Power analysis via G*Power 3.1 for ANCOVA (2 groups, 1 covariate):

```
Effect size: Cohen's d = 0.35 (conservative — pilot data unavailable)
Alpha = 0.05 (two-tailed)
Power (1-beta) = 0.80
Covariate: Pre-test score (estimated r = 0.60 with post-test)
Groups = 2
-> Total N = 130 (65 per group)

With 20% attrition for delayed post-test: N = 156 (78 per group)
```

This is conservative — effect sizes for visual-spatial interventions in mathematics education typically range from d = 0.30 to 0.60 (Fuchs et al., 2021 meta-analysis). If the true effect is d = 0.50, power exceeds 0.95.

### 3.2 Participant Eligibility

**Inclusion criteria:**
- Age 10-12 years (UK Year 6-7 / US Grade 5-6)
- Enrolled in participating primary/middle school
- Parental consent + child assent obtained
- English as primary language of instruction
- No prior formal instruction on prime numbers (pre-test screening)

**Exclusion criteria:**
- Diagnosed specific learning disability in mathematics (dyscalculia)
- Individualized Education Program for mathematics
- Prior exposure to sunburst notation or distinction-based arithmetic
- Pre-test score > 40% on primality assessment (indicating prior knowledge — ceiling effect)

### 3.3 Recruitment
Partnership with 3-4 primary/middle schools. Information session for parents. Target: 180 consented children (to allow for screening exclusions and attrition). If > 180 consent obtained, random selection of 180 + wait-list.

---

## 4. Variables

### 4.1 Primary Outcome: Primality Recognition Accuracy

**Prime Recognition Assessment (PRA):** 30-item computer-based test with 3 subtypes (10 items each):

| Subtype | Example | Scoring | Weight |
|---------|---------|---------|--------|
| **Primality Judgment** | "Is 23 prime or composite?" (2AFC) | Dichotomous (0/1) | 33% |
| **Prime Identification** | "Circle all prime numbers: 11, 14, 17, 21, 29" | Proportion correct | 33% |
| **Composite Decomposition** | "17 cannot be arranged as rows x columns. Draw why." | 0-3 rubric (blind-coded) | 33% |

**Total PRA score:** Sum of all items (range: 0-45).

### 4.2 Secondary Outcomes

| Measure | Instrument | Timing | Type |
|---------|-----------|--------|------|
| Factorization accuracy | 15-item factorization test (standard Arabic digits) | Pre, Post, Delayed | Continuous (0-15) |
| Factorization speed | Median RT on correct factorization trials | Post, Delayed | Continuous (ms) |
| Conceptual understanding | 5-item open-ended assessment (e.g., "Explain what it means for a number to be prime") | Pre, Post, Delayed | 0-5 rubric (blind-coded) |
| Transfer to standard tasks | 10-item arithmetic + factorization in Arabic ONLY | Delayed only | Continuous (0-10) |
| Math anxiety | Child Math Anxiety Questionnaire (MAQ, 8 items) | Pre, Post | Continuous (8-32) |
| Notation preference | "Which way of showing numbers helped you understand primes better?" | Post only | Categorical (sunburst/Arabic/both/neither) |

### 4.3 Covariates
- Age (months)
- Gender (parent-reported)
- Baseline numeracy (standard arithmetic screener, 10 items)
- Non-verbal IQ (Raven's Progressive Matrices, 15-min group administration)
- Working memory (backward digit span)

### 4.4 Sunburst Notation Materials

**Core representation:**
```
PRIME 5:              COMPOSITE 6:
         \   /              \     /
     \    \ /    /        \  \   /  /
       \   O   /            \  O  /
       /       \              \|/
     /    / \    \         O---O---O
         /   \            /    |    \
                         /     |     \
Single-level radial     Tree of nested sunbursts
(five rays directly     (central node with 2 rays,
from center)            each ending in 3-ray sunburst)
```

**Key visual properties:**
- Prime = single-level sunburst (all rays emanate directly from one center)
- Composite = nested/tree structure (smaller sunbursts attached to ray tips)
- Factorization = visual tree decomposition (factors are the sunbursts at the deepest level)
- Fundamental Theorem = every composite has a unique tree structure of prime sunbursts

**Workbook content (experimental group):**
- Session 1: Introduction to sunbursts — "A number is how many rays it has"
- Session 2: Building composites — "Attach sunbursts to make bigger numbers"
- Session 3: Prime detection — "Single-level = prime. Nested = composite."
- Session 4: Factorization trees — "Find the prime sunbursts inside"

**Active control content (standard group):**
- Session 1: Introduction to factors and multiples — standard definitions
- Session 2: Factor trees — decomposing numbers into prime factors using Arabic digits
- Session 3: Prime detection — divisibility rules (by 2, 3, 5, 7, 11)
- Session 4: The Fundamental Theorem — unique prime factorization

---

## 5. Procedure

```
WEEK 0: PRE-TEST + RANDOMIZATION
- Prime Recognition Assessment (PRA, 25 min)
- Factorization test (15 min)
- Conceptual understanding assessment (10 min)
- Math anxiety (MAQ, 5 min)
- Raven's Matrices (15 min, group administration)
- Working memory (digit span, 5 min, individual)
- Randomization: Stratified by PRA pre-test score (tertiles) and gender

WEEK 1, SESSION 1 (45 min) — INTRODUCTION
  SUNBURST:
    - "Numbers as rays" — each number is a sunburst with that many rays
    - Activity: Draw sunbursts for numbers 1-10
    - Discovery: Some numbers (2,3,5,7) cannot be built from smaller sunbursts
    - Practice: Workbook pages 1-4

  STANDARD:
    - "What is a factor?" — standard definition with Arabic digits
    - Activity: Find all factor pairs for numbers 1-20
    - Discovery: Some numbers (2,3,5,7,11,13,17,19) have only 1 and themselves
    - Practice: Workbook pages 1-4

WEEK 2, SESSION 2 (45 min) — MULTIPLICATION
  SUNBURST:
    - "Building bigger sunbursts" — multiply by attaching sunbursts to ray tips
    - Visual examples: 2x3=6 shown as 2-ray center with 3-ray tips
    - Activity: Build composite sunbursts for numbers up to 36
    - Practice: Workbook pages 5-8

  STANDARD:
    - "Factor trees" — standard method for decomposing numbers
    - Worked examples: 24=2x2x2x3, 36=2x2x3x3
    - Activity: Draw factor trees for numbers 12-50
    - Practice: Workbook pages 5-8

WEEK 3, SESSION 3 (45 min) — PRIME DETECTION
  SUNBURST:
    - "Spot the prime!" — single-level sunburst = prime
    - Visual rule: "If all rays come straight from the center, it's prime"
    - Activity: Speeded prime/composite judgment with sunburst images
    - Practice: Workbook pages 9-12

  STANDARD:
    - "Divisibility shortcuts" — rules for 2, 3, 5, 7, 11
    - Worked examples: Test 91 (divisible by 7), test 97 (prime)
    - Activity: Speeded prime/composite judgment with Arabic digits
    - Practice: Workbook pages 9-12

WEEK 4, SESSION 4 (45 min) — FACTORIZATION + POST-TEST
  SUNBURST:
    - "The sunburst tree" — every composite has a unique tree of prime sunbursts
    - Demonstration: 12 = 2x2x3 shown as sunburst tree with 3 levels
    - Review + post-test: PRA (25 min) + Factorization (15 min) + Conceptual (10 min) + MAQ (5 min)

  STANDARD:
    - "The Fundamental Theorem of Arithmetic"
    - Demonstration: Every number has a unique prime factorization
    - Review + post-test: PRA (25 min) + Factorization (15 min) + Conceptual (10 min) + MAQ (5 min)

WEEK 12: DELAYED POST-TEST
- PRA (25 min) + Factorization (15 min) + Conceptual (5 min)
- Transfer task: Standard Arabic-digit factorization (10 min)
- Notation preference question (2 min)
```

### 5.1 Fidelity Assessment
- All sessions audio-recorded (consent permitting)
- 20% of sessions randomly selected for fidelity coding
- Fidelity checklist: adherence to session plan (0-100%), time on task, child engagement (1-5)
- Session with fidelity < 80% flagged for sensitivity analysis

---

## 6. Analysis Plan

### 6.1 Primary Analysis: ANCOVA on Post-Test PRA

```r
# Primary model
model_primary <- lm(pra_post ~ group + pra_pre + age_months + gender, data = df)
summary(model_primary)

# Effect size: Cohen's d from adjusted means
library(effsize)
cohen.d(pra_post ~ group, data = df)
```

### 6.2 Secondary Analysis: Repeated-Measures Mixed Model

```r
library(lme4)
library(lmerTest)

df_long <- pivot_longer(df, cols = c(pra_pre, pra_post, pra_delayed),
                         names_to = "time", values_to = "pra")

model_mixed <- lmer(pra ~ group * time + age_months + gender +
                     (1 | participant_id) + (1 | school_id), data = df_long)
anova(model_mixed, type = 3)

# Key contrasts
library(emmeans)
emmeans(model_mixed, pairwise ~ group | time)
```

### 6.3 Subgroup: By Baseline PRA Tertile

```r
df$pra_tertile <- cut(df$pra_pre, breaks = 3, labels = c("Low", "Medium", "High"))
model_subgroup <- lm(pra_post ~ group * pra_tertile + age_months, data = df)
```

### 6.4 Transfer Task (Non-Inferiority)

```r
# Sunburst group MUST NOT be worse on standard Arabic tasks
t.test(transfer_score ~ group, data = df_fl, alternative = "greater")

# Equivalence test (TOST)
library(TOSTER)
tost(df_fl$transfer_score[df_fl$group == "sunburst"],
     df_fl$transfer_score[df_fl$group == "standard"],
     low_eqbound = -0.5, high_eqbound = 0.5)
```

### 6.5 Notation Preference Analysis

```r
# Chi-square test of independence
chisq.test(table(df$group, df$notation_preference))
```

---

## 7. Falsification Criteria

### The sunburst notation hypothesis is DISCONFIRMED if:
1. **FC1:** Primary ANCOVA shows no significant group effect (p > 0.05, one-tailed) AND Cohen's d < 0.20
2. **FC2:** Delayed post-test (Week 12) effect decays to d <= 0.10 (no retention)
3. **FC3:** Transfer task shows sunburst group performs WORSE on standard Arabic-digit factorization (d < -0.20, one-tailed) — indicating negative transfer

### The hypothesis is CONFIRMED (provisional) if:
1. d > 0.30 at post-test (p < 0.05, one-tailed)
2. d > 0.20 at delayed post-test (evidence of retention)
3. Transfer task shows no decrement (|d| < 0.20) — no negative transfer
4. Conceptual understanding score significantly higher in sunburst group (p < 0.05)

### Partial confirmation:
If the advantage is significant but specific to prime recognition (PRA) and does NOT generalize to factorization (d < 0.20 on factorization) — this confirms the cross-over pattern predicted by the multi-axis framework: the sunburst notation is specialized for primality, not a general-purpose replacement.

### Safety stopping rule:
If the sunburst group scores >= 0.5 SD LOWER on standard arithmetic at any time point, the intervention is HALTED for ethical review.

---

## 8. Sunburst-Specific Predictions (From WP0.3)

| ID | Prediction | Measure | Threshold |
|----|-----------|---------|-----------|
| P0.3.1 | Sunburst group identifies primes faster | PRA accuracy + RT | d > 0.30 |
| P0.3.2 | Advantage specific to primality (not general arithmetic) | Standard arithmetic screener | d < 0.20 on arithmetic |
| P0.3.3 | Sunburst rated higher on metaphor recruitment diversity | Post-study rater evaluation | Independent expert ratings |
| P0.3.4 | Learning transfer to standard notation is lower for sunburst | Transfer task | d < 0 (sunburst < standard on transfer) |
| P0.3.5 | DCN computational model generates same prime sequence as standard arithmetic | Formal verification | 100% match |

Predictions P0.3.1-P0.3.4 are tested in this experiment. P0.3.5 is a formal/computational verification — separate protocol.

---

## 9. NUMERATA Axis Scoring

Applying the 9-axis rubric to this experiment's two conditions:

| Axis | Sunburst | Arabic | Notes |
|------|:--------:|:------:|-------|
| 1: Simplicity | 3 | 6 | Arabic has fewer composition rules |
| 2: Glyph Economy | 2 | 6 | Sunburst needs ray-drawing for each prime |
| 3: Place-Value | N/A | 5 | Sunburst is not positional |
| 4: Learnability (primality) | **7** | 2 | Visual immediacy of prime structure |
| 5: Error Resistance | 6 | 4 | Adding/removing a ray changes value |
| 6: Metaphor Diversity | **7** | 4 | Spatial + rhythmic + gestural metaphors |
| 7: Fraction Quality | 1 | 6 | Sunburst not designed for fractions |
| 8: Extensibility | 2 | 7 | Large primes need many rays |
| 9: Primality Intuition | **7** | 1 | Single-level vs nested = immediate |

**Cross-over prediction:** The sunburst notation should outperform Arabic on axes 4, 6, and 9 (primality-related tasks) but underperform on axes 1, 2, 7, and 8 (general arithmetic). This experiment tests the AXIS 4 and AXIS 9 advantages directly; axes 1 and 2 disadvantages are measured via the transfer task.

---

## 10. Timeline and Budget

| Milestone | Target | Depends On |
|-----------|--------|-----------|
| OSF pre-registration | 2026-Q3 | Protocol finalization |
| IRB approval | 2026-Q4 | Institution partnership |
| Materials development | 2026-Q4 | Sunburst workbook + software |
| School recruitment | 2027-Q1 | IRB + materials |
| Data collection | 2027-Q2 | School partnerships |
| Analysis + preprint | 2027-Q3 | Data collection complete |
| Publication | 2027-Q4 | Peer review |

| Cost Category | Estimate |
|--------------|----------|
| Materials development (workbooks, software) | $8,000 |
| Research assistant (20% FTE, 6 months) | $15,000 |
| School compensation (4 schools × $2,000) | $8,000 |
| Data analysis + publication | $5,000 |
| **Total** | **$36,000** |

---

## 11. Data Availability

- Anonymized raw data: OSF repository
- Analysis scripts: GitHub (R Markdown)
- Materials: OSF (workbooks, software, stimuli)
- Pre-registration: OSF Registered Report

---

*Protocol v1.0 — 2026-07-19. Derived from WP0.3 Distinction-Based Primality. 5 falsifiable predictions. Ready for OSF pre-registration, IRB submission, and school recruitment.*
