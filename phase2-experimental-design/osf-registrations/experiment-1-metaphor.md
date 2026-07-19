# OSF Registered Report — Experiment 1: Metaphor-Consistent Notation Design

**Registration Date:** [TO BE FILLED]
**Registered Report ID:** [TO BE ASSIGNED BY OSF]
**Project:** NUMERATA Phase 2 | **Protocol Version:** 1.0 | **DOI:** 10.5281/zenodo.21439813

---

## 1. Study Information

### 1.1 Title
Metaphor-Consistent vs. Metaphor-Inconsistent Novel Numeral Notation: A Pre-Registered Experimental Test of Embodied Metaphor Theory in Numerical Cognition

### 1.2 Authors
QNFO Research (corresponding: research@qnfo.org) + [Collaborating PI(s) TBD]

### 1.3 Abstract
Embodied metaphor theory (Lakoff & Núñez, 2000) proposes that numerical cognition is grounded in bodily experience via conceptual metaphors — Arithmetic Is Object Collection, Arithmetic Is Motion Along a Path, etc. If this theory has causal force, then numeral systems designed to align with specific metaphors should produce measurable learning and performance advantages. This registered report tests this prediction using three novel numeral systems: a collection-aligned tally-positional system, a motion-aligned linear-height system, and a metaphor-inconsistent control. In a between-subjects design (N=324), participants will learn one of three novel numeral systems and complete metaphor-congruent and metaphor-incongruent arithmetic tasks. The primary hypothesis is a significant Group × Task Type interaction: the collection-aligned group will outperform on object-collection tasks, the motion-aligned group will outperform on spatial-sequential tasks, and the control group will underperform on both. All hypotheses, exclusion criteria, transformations, and analysis plans are pre-registered.

---

## 2. Design Plan

### 2.1 Study Type
Experiment — between-subjects, 3 × 2 mixed factorial design.

### 2.2 Blinding
- **Participant blinding:** Participants are unaware of the metaphor manipulation and experimental hypotheses. They are told the study investigates "how people learn new number systems."
- **Experimenter blinding:** The computerized task delivery system does not distinguish between conditions. All instructions are delivered via screen. Data analysis is conducted blind to condition labels (conditions coded as A/B/C until primary analyses complete).

### 2.3 Study Design
| Factor | Levels | Type |
|--------|--------|------|
| Notation System | Collection-Aligned, Motion-Aligned, Mixed/Inconsistent | Between-subjects |
| Task Type | Object-Collection, Spatial-Sequential | Within-subjects |
| Block Order | Collection-first, Spatial-first | Counterbalanced |

Dependent variables: trials-to-criterion (learning phase), error rate, reaction time (ms), transfer task accuracy.

### 2.4 Randomization
Block randomization with block size = 6, stratified by baseline numeracy (Berlin Numeracy Test score: low [0-1], medium [2-3], high [4]).

---

## 3. Sampling Plan

### 3.1 Sample Size Rationale
Power analysis conducted via G*Power 3.1 for a 3-group between-subjects ANOVA (F-test, fixed effects, omnibus one-way):

```
Effect size f = 0.15 (corresponds to Cohen's d ≈ 0.30)
Alpha = 0.017 (Bonferroni-corrected: 0.05/3 planned contrasts)
Power (1-β) = 0.80
Groups = 3
→ Total N = 321 (107 per group)

Rounded to N = 324 (108 per group) to balance block randomization.
```

This power level is sufficient to detect a small-to-medium effect (d ≥ 0.30), which represents a realistic effect size for novel notation learning based on comparable cognitive training studies.

### 3.2 Stopping Rule
Data collection continues until N = 324 complete datasets are obtained (completion defined as: consent + baseline assessment + training phase + task battery + transfer task + debrief, with ≥85% task-battery trials attempted). No interim analyses will be conducted. If more than 324 participants complete the study due to simultaneous sign-ups, the first 324 complete datasets will be analyzed.

### 3.3 Participant Eligibility
**Inclusion criteria:**
- Age 18–65 years
- Normal or corrected-to-normal vision
- Fluent English speaker (materials presented in English)
- Access to a desktop or laptop computer (not tablet/mobile — precise timing required)

**Exclusion criteria:**
- Professional mathematician or mathematics educator (defined as: current employment or degree in mathematics)
- Diagnosed dyscalculia or specific learning disability in mathematics
- Prior exposure to non-decimal numeral systems (> 1 week of formal instruction)
- Failed attention check (see §4.4)

### 3.4 Recruitment
Participants recruited via Prolific Academic (prolific.com). Screening questions embedded in Prolific pre-screener to apply inclusion/exclusion criteria before study entry. Compensation: £9.00/hour (estimated 90-minute session = £13.50).

---

## 4. Variables

### 4.1 Measured Variables
| Variable | Type | Operationalization | Timing |
|----------|------|-------------------|--------|
| Trials-to-criterion | Continuous (count) | Number of 20-trial blocks needed to reach ≥90% accuracy in training phase; maximum 4 blocks | Training phase |
| Error rate (collection tasks) | Continuous (proportion) | Proportion incorrect on 15 object-collection task trials | Task battery |
| Error rate (spatial tasks) | Continuous (proportion) | Proportion incorrect on 15 spatial-sequential task trials | Task battery |
| Median RT (collection tasks) | Continuous (ms) | Median response time on correct object-collection trials | Task battery |
| Median RT (spatial tasks) | Continuous (ms) | Median response time on correct spatial-sequential trials | Task battery |
| Transfer accuracy | Continuous (proportion) | Proportion correct on 10 arithmetic word problems using learned notation | Transfer phase |
| Naturalness rating | Ordinal (1-7) | Single-item Likert: "How natural did the notation feel to use?" | Debrief |
| Numeracy | Ordinal (0-4) | Berlin Numeracy Test (4-item version) | Baseline |
| Math anxiety | Continuous (9-45) | Abbreviated Math Anxiety Scale (AMAS, 9 items, 1-5 Likert) | Baseline |
| Working memory | Continuous (span) | Computerized digit-span task (forward + backward) | Baseline |

### 4.2 Indices
No composite indices are computed. All DVs are analyzed individually. Planned contrasts are specified in §6.1.

### 4.3 Transformations
- **RT:** Log-transformed before analysis (log(RT)) to normalize positively skewed distributions. Raw RT values < 200 ms or > 3 SD above participant's mean are excluded as anticipatory/attentional lapse responses.
- **Trials-to-criterion:** Analyzed as count data (Poisson or negative binomial GLM if overdispersed). Log-transformation as fallback if GLM assumptions are violated.
- **Error rate:** Analyzed via logistic mixed-effects model (binomial family). Arcsine transformation as parametric fallback.
- **Naturalness rating:** Analyzed as continuous (treated as interval-scale for correlation analyses; ordinal regression for robustness check).

### 4.4 Exclusion Criteria
**Participant-level exclusion (pre-registered):**
1. Failed attention check (embedded catch trial: "For this question, select response option 3." More than 1 failure across 3 catch trials → exclude)
2. Completion time < 30% of median (suggesting random responding)
3. Completion time > 3 SD above mean (suggesting distraction/interruption)
4. Training phase: failed to reach ≥70% accuracy after 4 training blocks (cannot perform the task)
5. > 50% trials with RT < 200 ms (suggesting random key-pressing)

**Trial-level exclusion:**
1. RT < 200 ms (anticipatory response)
2. RT > 3 SD above participant's condition mean (attentional lapse)
3. No response recorded (technical error)

---

## 5. Procedure

### 5.1 Study Location
Online, via Gorilla.sc or PsychoPy/Pavlovia. Participants use their own desktop/laptop computers. The experiment is not compatible with mobile/tablet devices — device-type check at study entry.

### 5.2 Procedure Steps
```
1. INFORMED CONSENT (5 min)
   - Study information sheet
   - Explicit consent: "I understand I will learn a new number system and complete arithmetic tasks."
   - Right to withdraw without penalty

2. DEVICE CHECK + BASELINE (10 min)
   - Viewport size verification (minimum 1024×768)
   - Berlin Numeracy Test (4 items, untimed)
   - AMAS (9 items)
   - Computerized digit-span (forward: 3 trials; backward: 3 trials)

3. RANDOMIZATION
   - Prolific ID hashed → random assignment to Group A/B/C
   - Block randomization: block size=6, stratified by BNT score (0-1, 2, 3-4)
   - Block order (Collection-first / Spatial-first) counterbalanced within group

4. NOTATION TUTORIAL (10 min)
   - Interactive slides introducing the assigned notation system
   - 10 glyph-digit pairs presented with examples
   - Self-paced reading

5. PRACTICE BLOCKS (up to 30 min)
   - Block 1: 20 single-digit identification trials (type the number shown)
   - Block 2: 20 two-digit composition trials (type the number from two digits)
   - Feedback: Correct/Incorrect + correct answer after each trial
   - Criterion: ≥90% correct to proceed
   - Maximum 4 blocks total (2 per type, repeated if criterion not met)

6. TASK BATTERY (30 min)
   - 30 trials per block (15 Object-Collection, 15 Spatial-Sequential)
   - Block order counterbalanced
   - Each trial: stimulus display (max 5 sec) → response (untimed) → 500 ms ITI
   - 3 catch trials randomly interspersed
   
   Object-Collection tasks:
     a) Addition by grouping: Two glyph-sequences shown. "Combine them."
     b) Set comparison: Two glyph-sequences. "Which represents more?"
     c) Partition: One glyph-sequence. "Create two equal groups."

   Spatial-Sequential tasks:
     a) Ordinal comparison: Two glyph-sequences. "Which is larger?"
     b) Counting forward: One glyph-sequence. "What comes next?"
     c) Number line: One glyph shown. "Click where this goes on the line."

7. TRANSFER TASK (10 min)
   - 10 arithmetic word problems
   - Solve using the learned notation
   - No feedback
   - Problem format: "You have ▃▁ objects and get ▅ more. How many total?"
   - Includes 2 problems requiring standard notation (checking for interference)

8. DEBRIEF (5 min)
   - Manipulation check: Naturalness rating (1-7)
   - Open-ended strategy question
   - Suspicion probe: "What do you think this study was testing?"
   - Full debriefing: Explanation of metaphor theory and experimental manipulation
   - Compensation code
```

---

## 6. Analysis Plan

### 6.1 Primary Analysis: 3 × 2 Mixed ANOVA

**Model specification (R):**
```r
# Primary DV: log-transformed trials-to-criterion
model_primary <- aov(log_trials_criterion ~ group * task_type + 
                      Error(participant/task_type), data = df)

# Planned contrasts (pre-registered order):
# Contrast 1: A vs C on Collection tasks
# Contrast 2: B vs C on Spatial tasks  
# Contrast 3: A vs B Collection vs Spatial (interaction contrast)
```

**Inference criteria:**
- Alpha = 0.017 (Bonferroni-corrected for 3 planned contrasts)
- Report partial eta-squared (η²_p) for effect sizes
- 95% confidence intervals for all contrasts

### 6.2 Secondary Analysis: Multilevel Logistic Model (Error Rate)

```r
library(lme4)
model_error <- glmer(error ~ group * task_type + numeracy + math_anxiety +
                      (1 | participant) + (1 | item),
                      data = df, family = binomial)
summary(model_error)
```

### 6.3 Secondary Analysis: Multilevel Linear Model (RT)

```r
model_rt <- lmer(log_rt ~ group * task_type + numeracy + 
                  (1 | participant) + (1 | item),
                  data = df_rt_correct)
summary(model_rt)
```

### 6.4 Transfer Task Analysis

```r
# One-way ANOVA on transfer accuracy
model_transfer <- aov(transfer_accuracy ~ group, data = df)
# Dunnett's test: A vs C, B vs C
library(multcomp)
summary(glht(model_transfer, linfct = mcp(group = "Dunnett")))
```

### 6.5 Exploratory: Metaphor Recruitment × Performance

```r
# Within Group A: correlation between naturalness and collection-task RT
with(subset(df, group == "A"), cor.test(naturalness, collection_rt))

# Within Group B: correlation between naturalness and spatial-task RT
with(subset(df, group == "B"), cor.test(naturalness, spatial_rt))
```

### 6.6 Robustness Checks
1. Non-parametric: Kruskal-Wallis on trials-to-criterion if normality violated (Shapiro-Wilk p < 0.01)
2. Ordinal regression: Cumulative link model for naturalness ratings
3. Bayesian alternative: Bayes factor for Group × Task interaction using `BayesFactor` package

### 6.7 Missing Data
- Participants with incomplete task battery (< 85% trials attempted) are excluded (pre-registered exclusion)
- For participants completing ≥85% trials, missing RTs are imputed via participant-mean imputation (reported as sensitivity analysis)
- Pattern of missingness reported (MCAR test via Little's test)

---

## 7. Falsification Criteria (Pre-Registered)

### The hypothesis is DISCONFIRMED if ANY of:
1. **FC1:** No significant Group × Task Type interaction in primary ANOVA (p > 0.05, uncorrected)
2. **FC2:** Neither planned contrast reaches significance at α = 0.017
3. **FC3:** Transfer accuracy effect size: Cohen's d < 0.20 for A vs C AND B vs C
4. **FC4:** Naturalness-performance correlation: r < 0.10 within both Group A and Group B

### The hypothesis is CONFIRMED (provisional) if:
1. Significant Group × Task Type interaction (p < 0.017)
2. At least one planned contrast significant in hypothesized direction
3. Effect size d ≥ 0.30 for at least one contrast
4. Naturalness-performance correlation r > 0.25

### Partial confirmation:
If only one metaphor (collection OR motion) shows advantage → theory partially supported; universality claim weakened. Report effect sizes and discuss domain-specificity.

### Ambiguous results:
If any p-value falls in 0.017 < p < 0.05 range → report as "suggestive" but do NOT claim confirmation. Recommend replication with larger sample.

---

## 8. Other

### 8.1 Data Availability
- **Anonymized raw data:** OSF repository with DOI (created at registration)
- **Analysis scripts:** GitHub repository (QNFO/numerata/phase2-experimental-design/analysis/)
- **Materials:** OSF (stimulus images, tutorial slides, task code)
- **Pre-registration:** This document (OSF Registered Report)

### 8.2 Competing Interests
None declared. This research is conducted under the QNFO Unified License Agreement (QNFO-ULA) and all materials will be released under CC-BY-4.0.

### 8.3 Ethics
IRB approval will be obtained from [Collaborating Institution] before data collection. The study involves minimal risk (computer-based learning of a novel number system). No deception beyond withholding the specific hypotheses (full debrief provided).

### 8.4 Amendments
Any deviations from this registered protocol will be documented in the final manuscript under a "Deviations from Pre-Registration" section, with justification for each deviation.
