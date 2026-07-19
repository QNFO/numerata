# OSF Registered Report — Experiment 3: Dual Zero-Glyph Pilot

**Registration Date:** [TO BE FILLED]
**Registered Report ID:** [TO BE ASSIGNED BY OSF]
**Project:** NUMERATA Phase 2 | **Protocol Version:** 1.0 | **DOI:** 10.5281/zenodo.21439813

---

## 1. Study Information

### 1.1 Title
Making the Invisible Visible: A Pilot Randomized Controlled Trial of Dual Zero-Glyph Instruction for Early Mathematics Education

### 1.2 Authors
QNFO Research (corresponding: research@qnfo.org) + [Collaborating PI(s) TBD]

### 1.3 Abstract
Children struggle with the concept of zero — is it a quantity (cardinal zero: "no apples") or a placeholder (positional zero: "the 0 in 105")? Standard notation uses a single glyph (0) for both functions, potentially conflating distinct concepts. This pilot RCT tests whether teaching 6-7-year-old children with distinct glyphs — ∅ (cardinal/empty-set zero) and ⊘ (positional/placeholder zero) — improves conceptual understanding compared to standard single-glyph instruction. In a between-subjects design (N=60), children receive 4 weeks of matched instruction time (4 × 30-min sessions) with either dual or single zero glyphs. The primary outcome is the Zero Concept Assessment (ZCA) score at post-test (Week 4) and delayed post-test (Week 8). All hypotheses, exclusion criteria, and analysis plans are pre-registered. This pilot will estimate effect sizes for a full-scale RCT power analysis.

---

## 2. Design Plan

### 2.1 Study Type
Pilot randomized controlled trial — between-subjects, two-group design with repeated measures.

### 2.2 Blinding
- **Child blinding:** Single-blind — children do not know there is an alternative glyph condition
- **Teacher blinding:** Teachers delivering instruction cannot be blinded to glyphs but are blinded to the specific hypotheses ("evaluating different approaches to teaching zero")
- **Outcome assessor blinding:** ZCA scoring is automated (computer-based assessment) — no subjective scoring
- **Analyst blinding:** Data analyzed with conditions coded as A/B until primary analyses complete

### 2.3 Study Design
| Factor | Levels | Type |
|--------|--------|------|
| Group | Dual-Glyph (experimental), Single-Glyph (active control) | Between-subjects |
| Time | Pre-test (Week 1), Post-test (Week 4), Delayed Post-test (Week 8) | Within-subjects |

### 2.4 Randomization
Stratified randomization by:
- Baseline ZCA score (below median / above median split)
- Gender
- Classroom unit (if multiple classrooms involved)

Randomization via sealedenvelope.com or equivalent with allocation concealment (sequentially numbered, opaque sealed envelopes opened after pre-test).

---

## 3. Sampling Plan

### 3.1 Sample Size Rationale
This is a PILOT study. Formal power analysis is not applicable — the purpose is to estimate effect sizes for a full-scale RCT.

```
Target N = 60 (30 per group)

What this can detect with 80% power:
  - ANCOVA (1 covariate, ρ=0.5): d ≥ 0.65
  - Repeated-measures interaction: d ≥ 0.45

Expected effect size (based on comparable educational interventions):
  - Optimistic: d = 0.40-0.60 (e.g., Fuchs et al., 2021 math intervention meta-analysis)
  - Realistic: d = 0.20-0.35

Decision rule for full RCT:
  - If pilot d > 0.20 → proceed to full RCT (N ≈ 400 for d=0.30, power=0.80, ANCOVA)
  - If pilot d < 0.10 → effect too small to be educationally meaningful; do not proceed
  - If 0.10 < d < 0.20 → ambiguous; recommend replication pilot before full RCT
```

### 3.2 Participant Eligibility

**Inclusion criteria:**
- Age 6-7 years (UK Year 2 / US Grade 1 equivalent)
- Enrolled in participating primary school
- Parental consent + child assent obtained
- English as primary language of instruction

**Exclusion criteria:**
- Diagnosed specific learning disability in mathematics (dyscalculia)
- Individualized Education Program (IEP) for mathematics (US) / Education, Health and Care Plan for mathematics (UK)
- Non-verbal IQ below 70 (if standardized assessment available — not required for pilot)
- Prior instruction using dual zero glyphs (unlikely but screening question for teachers)

### 3.3 Recruitment
Partnership with 1-2 primary schools. Information session for parents. Consent forms distributed 2 weeks before study start. Target: 60 consented children. If > 60 consent obtained, random selection of 60 + wait-list for full RCT.

---

## 4. Variables

### 4.1 Primary Outcome: Zero Concept Assessment (ZCA)

The ZCA is a 20-item computer-based assessment with 5 subtypes (4 items each):

| Subtype | Weight | Example | Scoring |
|---------|--------|---------|---------|
| Cardinal Identification | 20% | "Which picture shows zero apples?" (4-alternative forced choice) | Dichotomous (0/1) |
| Positional Identification | 25% | "In 105, the zero means ____" (free response, coded) | Dichotomous after coding |
| Discrimination | 25% | "Are these zeros the same kind?" — "105" vs "0" | Dichotomous + confidence (1-3) |
| Production | 15% | "Write four hundred and five" | Dichotomous (correct positional zero) |
| Conceptual Understanding | 15% | "Can you have zero of something? Explain." | 0-3 rubric (blind-coded) |

**Total ZCA score:** Sum of all items (range: 0-25, with discrimination confidence bonus).

**Psychometric properties (to be established in pilot):**
- Internal consistency: Cronbach's α
- Test-retest reliability: Week 4 vs Week 8 correlation in control group
- Inter-rater reliability: for free-response items (conceptual understanding)

### 4.2 Secondary Outcomes

| Measure | Instrument | Timing | Type |
|---------|-----------|--------|------|
| Standard arithmetic | 10-item screener (addition/subtraction within 20) | Pre, Post, Delayed | Continuous (0-10) |
| Math anxiety | Child Math Anxiety Questionnaire (MAQ, 8 items, 1-4 faces scale) | Pre, Post | Continuous (8-32) |
| Transfer to standard notation | 5 standard-notation arithmetic problems using only "0" | Delayed only | Continuous (0-5) |
| Teacher evaluation | Brief teacher questionnaire on engagement, ease of use, willingness to continue | Post only | Ordinal (1-5 Likert items) |

### 4.3 Covariates
- Age (months)
- Gender (parent-reported)
- Baseline numeracy (standard arithmetic screener pre-test)
- Working memory (backward digit span, WISC-V or equivalent)
- Socioeconomic status (free school meal eligibility — binary proxy)

### 4.4 Exclusion Criteria (Outcome-Level)
- Child absent for > 1 of 4 instruction sessions → excluded from per-protocol analysis, retained in ITT
- Child does not complete post-test → excluded from primary analysis (with sensitivity analysis for missingness)
- Child moves schools during study period → excluded (cannot complete delayed post-test)

---

## 5. Procedure

### 5.1 Study Location
Participating primary school classrooms. Instruction delivered by trained research assistant (not the regular classroom teacher, to control for teacher effects) in a quiet area adjacent to the classroom.

### 5.2 Materials

#### Dual-Glyph Condition Materials
- **Glyph cards:** Full-color 10×10 cm cards for ∅ and ⊘ with mnemonic images (∅ = empty basket, ⊘ = dot in a tens-place box)
- **Workbook:** 16-page workbook with cardinal/positional zero discrimination exercises
- **Manipulatives:** Base-10 blocks with ∅ and ⊘ placeholders
- **Computer tasks:** 3 short tablet-based discrimination games (match the zero type)

#### Active Control Condition Materials
- **Zero concept cards:** Full-color cards showing "0" in cardinal and positional contexts (same images, same format)
- **Workbook:** 16-page workbook with matching zero concept exercises (equal difficulty, equal page count)
- **Manipulatives:** Base-10 blocks with standard "0" placeholders
- **Computer tasks:** 3 short tablet-based zero practice games (matched format, standard notation)

**CRITICAL CONTROL:** Total instruction time, number of examples, workbook page count, and computer task duration are IDENTICAL across conditions. The ONLY difference is the glyphs used to represent zero.

### 5.3 Procedure Timeline

```
WEEK 0: BASELINE ASSESSMENT
- Pre-test battery: ZCA (15 min) + Arithmetic screener (10 min) + MAQ (5 min)
- Working memory assessment: Backward digit span (5 min, 1-on-1 with researcher)
- Randomization: Stratified by ZCA pre-test score and gender

WEEK 1, SESSION 1 (30 min)
  DUAL-GLYPH:
    - Story: "The Empty Basket and The Important Place" (∅ = empty basket, ⊘ = place-holder)
    - Activity: Sort ∅ and ⊘ cards into "empty" and "placeholder" piles
    - Practice: Workbook pages 1-4 (cardinal zero identification)

  SINGLE-GLYPH (matched time):
    - Story: "Zero Means None and Zero Holds the Place"
    - Activity: Sort "0" cards into "empty" and "placeholder" piles
    - Practice: Workbook pages 1-4 (zero identification — matched difficulty)

WEEK 2, SESSION 2 (30 min)
  DUAL-GLYPH:
    - Review: "When do we use ∅? When do we use ⊘?"
    - Activity: Base-10 block building — "Put ∅ in the empty place"
    - Practice: Workbook pages 5-8 (positional zero identification)

  SINGLE-GLYPH:
    - Review: "What does zero mean in different places?"
    - Activity: Base-10 block building — "Put 0 in the empty place"
    - Practice: Workbook pages 5-8 (positional zero — matched exercises)

WEEK 3, SESSION 3 (30 min)
  DUAL-GLYPH:
    - Game: "Zero Detective!" — Determine ∅ or ⊘ from number context (tablet game, 20 trials)
    - Practice: Workbook pages 9-12 (discrimination exercises)

  SINGLE-GLYPH:
    - Game: "Zero Detective!" — Determine "empty" or "placeholder" from context (20 trials, matched)
    - Practice: Workbook pages 9-12 (zero-context exercises, matched)

WEEK 4, SESSION 4 (30 min)
  DUAL-GLYPH:
    - Activity: Mixed practice — addition/subtraction problems using ∅ and ⊘
    - Practice: Workbook pages 13-16 (consolidation)
    - Post-test: ZCA (15 min) + Arithmetic screener (10 min) + MAQ (5 min)

  SINGLE-GLYPH:
    - Activity: Mixed practice — addition/subtraction problems using standard "0"
    - Practice: Workbook pages 13-16 (consolidation — matched)
    - Post-test: ZCA (15 min) + Arithmetic screener (10 min) + MAQ (5 min)

WEEK 8: DELAYED POST-TEST
- ZCA (15 min) + Arithmetic screener (10 min)
- Transfer task: 5 standard-notation arithmetic problems (use only "0")
- Teacher questionnaire (5 min)
```

### 5.4 Fidelity Assessment
- All sessions audio-recorded (consent permitting)
- 20% of sessions randomly selected for fidelity coding
- Fidelity checklist: adherence to session plan (0-100%), time on task, child engagement (1-5)
- Any session with fidelity < 80% flagged for sensitivity analysis

---

## 6. Analysis Plan

### 6.1 Primary Analysis: ANCOVA on Post-Test ZCA

```r
# Primary model
model_primary <- lm(zca_post ~ group + zca_pre + age_months + gender, data = df)
summary(model_primary)

# Effect size: Cohen's d from adjusted means
library(effsize)
cohen.d(zca_post ~ group, data = df)

# Report: β for group (dual-glyph effect), 95% CI, p-value, Cohen's d
```

### 6.2 Secondary Analysis: Repeated-Measures Mixed Model

```r
library(lme4)
library(lmerTest)

df_long <- pivot_longer(df, cols = c(zca_pre, zca_post, zca_delayed), 
                         names_to = "time", values_to = "zca")

model_mixed <- lmer(zca ~ group * time + age_months + gender + 
                     (1 | participant_id), data = df_long)
anova(model_mixed, type = 3)

# Key contrast: Dual-glyph vs Single-glyph at Week 4 AND Week 8
library(emmeans)
emmeans(model_mixed, pairwise ~ group | time)
```

### 6.3 Transfer Task Analysis (Non-Inferiority)

```r
# The dual-glyph group must NOT be worse on standard notation
t.test(transfer_score ~ group, data = df, alternative = "greater")

# Equivalence test: Is the difference within [-0.5, 0.5] points?
library(TOSTER)
tost(df$transfer_score[df$group == "dual"], 
     df$transfer_score[df$group == "single"],
     low_eqbound = -0.5, high_eqbound = 0.5)
```

### 6.4 Intention-to-Treat (ITT) Sensitivity

```r
# Include all randomized participants regardless of protocol adherence
# Multiple imputation for missing post-test data
library(mice)
imp <- mice(df_missing, m = 20, method = "pmm")
model_itt <- with(imp, lm(zca_post ~ group + zca_pre + age_months + gender))
pool(model_itt)
```

### 6.5 Subgroup Analyses (Exploratory)

```r
# Intervention effect by baseline ZCA (below/above median split)
model_subgroup <- lm(zca_post ~ group * zca_median_split + zca_pre + age_months, 
                      data = df)
summary(model_subgroup)

# Intervention effect by gender
model_gender <- lm(zca_post ~ group * gender + zca_pre + age_months, data = df)
```

### 6.6 Effect Size Estimation for Full RCT

```r
# Primary purpose: estimate Cohen's d with 95% CI for power analysis
d_estimate <- cohen.d(zca_post ~ group, data = df)
print(paste("Pilot d =", round(d_estimate$estimate, 3), 
            "95% CI:", round(d_estimate$conf.int[1], 3), "-", 
            round(d_estimate$conf.int[2], 3)))

# Full RCT sample size estimation (if d > 0.20):
library(pwr)
pwr.t.test(d = d_estimate$estimate, power = 0.80, type = "two.sample")
```

---

## 7. Falsification Criteria

### The dual zero-glyph hypothesis is DISCONFIRMED if:
1. **FC1:** Primary ANCOVA shows no significant group effect (p > 0.05 one-tailed, directional hypothesis) AND Cohen's d < 0.20
2. **FC2:** Transfer task shows the dual-glyph group performs WORSE on standard notation (d < -0.20, or significant non-inferiority test failure) — indicating glyph interference
3. **FC3:** Delayed post-test (Week 8) effect decays to d ≤ 0.05 (essentially zero retention)

### The intervention is PROMISING (proceed to full RCT) if:
1. Pilot d > 0.20 at post-test
2. Transfer task shows no decrement (|d| < 0.20 for dual vs single on standard tasks)
3. Delayed post-test d > 0.15 (evidence of retention)
4. Teacher evaluations positive (mean > 3.5 on 5-point willingness-to-continue scale)

### Safety stopping rule:
If the dual-glyph group scores ≥ 0.5 SD LOWER than the single-glyph group on standard arithmetic at any time point, the intervention is flagged as potentially harmful and halted immediately for ethical review.

---

## 8. Other

### 8.1 Ethical Considerations
- **Child assent:** Age-appropriate assent form with pictorial explanation. Child can withdraw at any time by saying "I don't want to play the number game anymore" — no penalty.
- **Data protection:** All data anonymized with participant codes. Identifiable data (names, consent forms) stored separately. School names not reported.
- **Intervention risk:** The dual-glyph notation is an ADDITION to standard instruction — children continue learning standard zero notation in their regular math lessons. The risk of the dual-glyph interfering with standard learning is monitored via the transfer task (§6.3).
- **Equipoise:** Both conditions provide additional zero-concept instruction beyond the standard curriculum. The active control group receives equal instructional time — all participants benefit.

### 8.2 Data Availability
As per Experiment 1 (§8.1). De-identified child data shared via OSF with embargo option (to allow full RCT to complete before data release, if desired). Analysis scripts on GitHub.

### 8.3 School Partnerships
Commitment obtained from school leadership before participant recruitment. Memorandum of Understanding covering: data sharing, publication rights, teacher time compensation, and feedback to schools.

### 8.4 Amendments
As per Experiment 1 (§8.4).
