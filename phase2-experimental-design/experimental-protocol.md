# NUMERATA — Phase 2: Experimental Design Protocols

**Project:** NUMERATA | **Phase:** 2 — Experimental Design
**Date:** 2026-07-19 | **Status:** Draft v1.0
**DOI:** 10.5281/zenodo.21439813

---

## Overview

Phase 2 translates NUMERATA''s multi-axis evaluation framework and the Phase 4 deep research cascade into three **pre-registerable experimental protocols**. Each protocol is designed to be submitted to OSF (osf.io) as a Registered Report before data collection begins.

Protocol priority follows the portfolio allocation from Stage 6 of the Bayesian cascade:

| Priority | Experiment | Allocation | Candidate | EV |
|----------|-----------|------------|-----------|-----|
| **#1** | Metaphor-Consistent Notation Design | 40% | C2 | 2.63 |
| **#2** | Multi-Axis Framework Validation | 25% | C1 | 2.80 |
| **#3** | Dual Zero-Glyph Pilot | 15% | C3 | 1.00 |

Each protocol includes: hypothesis chain, design matrix, power analysis, materials, procedure, dependent measures, planned analyses, and pre-registered falsification criteria.

---

## Experiment 1: Metaphor-Consistent Notation Design

### 1.1 Hypothesis Chain

**H1 (Primary):** Participants learning a novel numeral system designed to maximize alignment with a specific embodied metaphor will demonstrate faster learning (shorter time-to-criterion) and lower error rates on metaphor-congruent arithmetic tasks compared to participants learning a metaphor-inconsistent system.

**H1a:** The collection-metaphor-aligned system (tally-like structure) will produce superior performance on object-collection arithmetic tasks (addition by grouping) compared to the motion-metaphor-aligned system.

**H1b:** The motion-metaphor-aligned system (number-line structure) will produce superior performance on spatial-sequential tasks (ordinal comparison, counting forward/backward) compared to the collection-metaphor-aligned system.

**H1c:** The mixed/inconsistent-mapping system (control) will underperform both metaphor-aligned systems on their respective congruent tasks.

**H0 (Null):** There is no difference in learning rate or error rate between metaphor-consistent and metaphor-inconsistent novel notation systems after controlling for glyph novelty.

### 1.2 Design

| Parameter | Value |
|-----------|-------|
| **Type** | Between-subjects, 3 × 2 mixed factorial |
| **Factor A (between)** | Notation system: Collection-Aligned, Motion-Aligned, Mixed/Inconsistent (control) |
| **Factor B (within)** | Task type: Object-Collection Tasks, Spatial-Sequential Tasks |
| **Primary DV** | Time-to-criterion (trials to reach 90% accuracy) |
| **Secondary DVs** | Error rate, reaction time (ms), transfer task accuracy |
| **Randomization** | Block randomization (block size=6), stratified by baseline numeracy |

### 1.3 Materials — Novel Notation Systems

To control for familiarity, ALL three systems use novel glyphs unknown to participants. All systems are base-10 positional to control for base effects.

#### System A: Collection-Aligned (Tally-Positional Hybrid)

```
Glyphs: ○ ● ◐ ◑ ◒ ◓ ◔ ◕ ◖ ◗  (0-9)
Structure: Each digit position represents a group of objects.
  ┌─┬─┐
  │◑│○│ = 2 × 10 + 0 = 20
  └─┴─┘
Addition visual: combining boxes (grouping objects)
```

**Metaphor:** Arithmetic Is Object Collection — each digit cell is a container of glyph-objects. Addition visibly combines containers. Subtraction visibly removes from containers.

#### System B: Motion-Aligned (Linear Positional)

```
Glyphs: ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▉ ▊  (0-9, ascending height)
Structure: Digits arranged on a horizontal line with height proportional to value.
  ▃▁▅ = 3 × 100 + 1 × 10 + 5 = 315
  
Addition visual: sliding marks along a number line
```

**Metaphor:** Arithmetic Is Motion Along a Path — each digit''s height indicates position. Addition moves rightward along the line. Subtraction moves leftward.

#### System C: Mixed/Inconsistent (Control)

```
Glyphs: Random abstract shapes (★ ☆ ✦ ✧ ✶ ✷ ✸ ✹ ✺ ✻)
Structure: Standard positional with no visual metaphor mapping.
  ✶★✸ = 6 × 100 + 1 × 10 + 7 = 617
  
No visual grouping, no height encoding, no spatial alignment.
```

**Purpose:** Provides a baseline for learning a novel notation without any metaphor facilitation.

### 1.4 Power Analysis

```
Effect size target: Cohen''s d = 0.30 (small-to-medium, realistic for novel notation)
Alpha: 0.05 (two-tailed, Bonferroni-corrected for 3 comparisons)
Power: 0.80
Design: 3-group between-subjects ANOVA
Required N per group: 108
Total N: 324

G*Power: F-test, ANOVA: Fixed effects, omnibus one-way
Effect size f = 0.15 (corresponds to d ≈ 0.30), α=0.017, 1-β=0.80, groups=3
→ N = 321 (107 per group)
```

### 1.5 Participants

- **N:** 324 (108 per group)
- **Recruitment:** Prolific Academic or MTurk
- **Inclusion:** 18-65 years, normal/corrected vision, fluent English
- **Exclusion:** Professional mathematicians, known dyscalculia, prior exposure to non-decimal numeral systems
- **Compensation:** $12/hour (estimated 90-minute session)
- **Demographics collected:** Age, gender, education level, self-reported math anxiety (AMAS)

### 1.6 Procedure

```
SESSION (90 minutes):

1. CONSENT (5 min) — Information sheet, informed consent

2. BASELINE ASSESSMENT (10 min)
   - Numeracy screener (Berlin Numeracy Test, 4 items)
   - Math Anxiety Rating (AMAS, 9 items)
   - Computerized digit-span task (working memory)

3. NOTATION TRAINING — BLOCKED BY GROUP (30 min)
   - Participants randomly assigned to System A, B, or C
   - Tutorial: 10 min interactive training on glyph-digit mapping
   - Practice block 1: 20 single-digit identification trials (feedback)
   - Practice block 2: 20 two-digit composition trials (feedback)
   - Criterion test: Must achieve ≥90% on 20-trial block to proceed
     (If not, repeat practice blocks up to 3 times)

4. TASK BATTERY (30 min)
   Block A — Object-Collection Tasks (15 trials each):
     a) Addition by grouping: "Combine ○ objects and ● objects"
     b) Set comparison: "Which group has more?" 
     c) Partition: "Split ◑ into two equal groups"

   Block B — Spatial-Sequential Tasks (15 trials each):
     a) Ordinal comparison: "Is ▅ greater than ▃?"
     b) Counting forward: "What comes after ▇█▉?"
     c) Number line placement: "Place ▄ on the number line"

   Block order counterbalanced across participants

5. TRANSFER TASK (10 min)
   - Solve 10 arithmetic word problems using the novel notation
   - Problems matched for difficulty across conditions
   - No feedback given

6. DEBRIEF (5 min)
   - Manipulation check: "How natural did the notation feel?" (1-7 Likert)
   - Open-ended: "Describe how you thought about the numbers"
   - Compensation code
```

### 1.7 Dependent Measures

| Measure | Operationalization | Hypothesized Direction |
|---------|-------------------|----------------------|
| **Learning rate** | Trials-to-criterion in training phase | A,B < C |
| **Collection-task RT** | Median RT on object-collection tasks | A < B < C |
| **Collection-task errors** | Proportion incorrect on collection tasks | A < B < C |
| **Spatial-task RT** | Median RT on spatial-sequential tasks | B < A < C |
| **Spatial-task errors** | Proportion incorrect on spatial tasks | B < A < C |
| **Transfer accuracy** | Proportion correct on word problems | A,B > C |
| **Naturalness rating** | 7-point Likert: "felt natural" | A,B > C (correlated with metaphor alignment) |

### 1.8 Planned Analyses

#### Primary Analysis: 3 × 2 Mixed ANOVA
```
DV: log-transformed trials-to-criterion
Between: Group (A, B, C)
Within: Task Type (Collection, Spatial)
Planned contrasts:
  Contrast 1: A vs C on Collection tasks
  Contrast 2: B vs C on Spatial tasks
  Contrast 3: A vs B on Collection vs Spatial (interaction)
```

#### Secondary Analysis: Multilevel Model
```
lmer(error_rate ~ group * task_type + (1|participant) + numeracy + math_anxiety, 
     data=df, family=binomial)
```

#### Exploratory: Metaphor Recruitment × Performance
Correlate naturalness ratings with performance within each group. In A: higher naturalness ratings should predict faster collection-task performance. In B: higher naturalness ratings should predict faster spatial-task performance.

### 1.9 Pre-Registered Falsification Criteria

**The metaphor-consistent design hypothesis is DISCONFIRMED if:**

1. No significant Group × Task Type interaction in the mixed ANOVA (p > 0.017 after Bonferroni correction)
2. Neither planned contrast (A > C on collection OR B > C on spatial) reaches significance
3. The group difference in transfer accuracy (A,B vs C) has Cohen''s d < 0.20 (below small effect)
4. Naturalness ratings do NOT correlate with task-congruent performance (r < 0.10)

**The hypothesis is CONFIRMED (provisional) if:**
- Significant interaction (p < 0.017)
- At least one planned contrast significant
- Effect size > 0.30 in the hypothesized direction
- Naturalness-performance correlation > 0.25

**Partial confirmation:** If only one metaphor (collection OR motion) shows an advantage, the theory is partially supported but the universality claim is weakened.

### 1.10 Data Availability

- Anonymized raw data: OSF repository
- Analysis scripts: GitHub (R Markdown)
- Materials: OSF (stimuli, training modules)
- Pre-registration: OSF Registered Report (submitted before data collection)

---

## Experiment 2: Multi-Axis Framework Validation

### 2.1 Hypothesis Chain

**H1:** NUMERATA''s 8 evaluative dimensions (structural, cognitive, design) reflect at least 3 independent latent factors when applied to 6-8 numeral systems by independent raters.

**H2:** Inter-rater reliability (ICC) across independent evaluators exceeds 0.80 for each axis.

**H3:** Multi-axis rankings of numeral systems diverge from single-axis (speed-only) rankings for at least 2 of the 6-8 systems tested.

**H0 (Null):** The 8 axes collapse to 1-2 factors, inter-rater reliability is below 0.70, and multi-axis rankings do not differ from speed-only rankings.

### 2.2 Design

| Parameter | Value |
|-----------|-------|
| **Type** | Correlational validation study |
| **Raters** | 20 evaluators (5 cognitive scientists, 5 designers, 5 math educators, 5 historians of science) |
| **Systems evaluated** | 8 numeral systems: Hindu-Arabic (decimal), Roman (additive), Mayan (vigesimal positional), Binary (positional base-2), Chinese (multiplicative-additive), Babylonian (sexagesimal), Cistercian (compact), Tally (unary) |
| **Axes scored** | 8 dimensions from WP1.3.2 taxonomy, each on 1-7 Likert |
| **Primary analysis** | Exploratory Factor Analysis (EFA) + ICC |

### 2.3 Materials

#### Scoring Rubric

Each rater receives standardized materials showing each numeral system''s notation, rules for composition, and worked examples. For each system, they rate 8 dimensions:

| Dimension | Anchors (1-7) | Example |
|-----------|--------------|---------|
| 1. Structural simplicity | 1=Highly complex, 7=Minimal rules | "How many rules to compose any 4-digit number?" |
| 2. Glyph economy | 1=Many distinct glyphs, 7=Minimal glyphs | "How many distinct symbols must be learned?" |
| 3. Place-value transparency | 1=Opaque, 7=Fully transparent | "Can you determine a digit''s value from position alone?" |
| 4. Cognitive load (learnability) | 1=Very hard to learn, 7=Very easy | "How quickly could a naive learner master this?" |
| 5. Error resistance | 1=Error-prone, 7=Error-resistant | "How likely is a single-glyph error to change the value?" |
| 6. Metaphor recruitment diversity | 1=Single metaphor, 7=Multiple metaphors | "How many embodied metaphors does this system recruit?" |
| 7. Fraction representation quality | 1=Poor, 7=Excellent | "How many common fractions terminate in this base?" |
| 8. Extensibility | 1=Fragile, 7=Robust | "How easily does it extend to larger numbers?" |

### 2.4 Procedure

```
PHASE 1: INDEPENDENT RATING (60 min per rater)
1. Receive scoring rubric and notation reference sheets
2. For each of 8 systems, rate all 8 dimensions (64 ratings total)
3. Additionally: rank-order the 6 systems by overall preference
4. Provide qualitative justification for top and bottom ranks

PHASE 2: SPEED TASK (separate cohort, N=40)
1. Computerized numeral reading task: "What number is this?" for each system
2. Measure: median RT for correct responses per system
3. Produces single-axis "speed" ranking for comparison
```

### 2.5 Planned Analyses

#### EFA
```
factanal(~., factors=3, rotation="varimax", data=ratings_matrix)
- Expected: 3 factors with eigenvalues > 1.0
- Disconfirmation: 1 factor explains > 50% variance
```

#### Inter-Rater Reliability
```
ICC(ratings_matrix, model="twoway", type="agreement")
- Threshold: ICC > 0.80 for "excellent" reliability
- Concern: ICC < 0.60 suggests axes are not reliably measurable
```

#### Ranking Divergence
```
Kendall''s tau between multi-axis ranking (averaged across raters) and speed-only ranking
- Expected: tau < 0.70 (indicates meaningful divergence)
- Disconfirmation: tau > 0.90 (rankings are essentially identical)
```

### 2.6 Falsification Criteria

**The multi-axis framework is DISCONFIRMED if:**
1. EFA yields ≤ 2 factors with eigenvalues > 1.0
2. ICC < 0.60 for any axis (axes cannot be reliably measured)
3. Multi-axis ranking correlates with speed-only ranking at tau > 0.90
4. Qualitative responses indicate raters cannot distinguish the axes ("they all measure the same thing")

---

## Experiment 3: Dual Zero-Glyph Pilot

### 3.1 Hypothesis Chain

**H1:** Children taught with distinct glyphs for cardinal zero (∅, "empty quantity") and positional zero (⊘, "placeholder") will demonstrate superior understanding of the cardinal/positional distinction compared to children taught with a single zero glyph (0).

**H2:** The dual-glyph advantage persists at a 4-week delayed post-test.

**H3:** The dual-glyph group does NOT show degraded performance on standard single-glyph transfer tasks (i.e., the intervention does not impair standard notation use).

**H0 (Null):** Dual-glyph instruction provides no advantage over equal-time single-glyph instruction on zero-concept assessments.

### 3.2 Design

| Parameter | Value |
|-----------|-------|
| **Type** | Between-subjects RCT (pilot) |
| **Groups** | 2: Dual-Glyph (experimental), Single-Glyph (active control) |
| **N** | 60 total (30 per group) — pilot for effect size estimation |
| **Age** | 6-7 years (UK Year 2 / US Grade 1) |
| **Duration** | 4 weeks of instruction + 4-week delayed post-test |
| **Primary DV** | Zero Concept Assessment (ZCA) score |
| **Secondary DVs** | Standard arithmetic accuracy, math anxiety (child MAQ) |

### 3.3 Glyph Design

```
Cardinal Zero (∅): A circle with a slash — "the empty set, no things"
  Visual metaphor: Empty container

Positional Zero (⊘): A circle with a dot — "the placeholder digit"  
  Visual metaphor: An occupied position (dot in the tens place)

Standard Zero (0): Conventional notation (control condition)
```

### 3.4 Materials — Zero Concept Assessment (ZCA)

20 items, 5 subtypes (4 items each):

| Subtype | Example Item | What It Measures |
|---------|-------------|-----------------|
| **Cardinal identification** | "Which shows zero apples?" [pictures] | Understanding zero as quantity |
| **Positional identification** | "In the number 105, what does the zero mean?" | Understanding zero as placeholder |
| **Discrimination** | "Is the zero in 105 the same kind of zero as in 0?" | Distinguishing cardinal from positional |
| **Production** | "Write four hundred and five" | Producing positional zero correctly |
| **Conceptual** | "Can you have zero of something? What does that mean?" | Deeper conceptual understanding |

### 3.5 Procedure

```
WEEK 1: PRE-TEST
- ZCA (20 items, 15 min)
- Standard arithmetic screener (10 items, 10 min)
- Child Math Anxiety Questionnaire (MAQ, 8 items, 5 min)

WEEKS 1-4: INSTRUCTION (4 × 30-min sessions, matched between groups)

DUAL-GLYPH GROUP (30 min/session):
  Session 1: Introduction to cardinal zero (∅) — "the empty set"
  Session 2: Introduction to positional zero (⊘) — "the placeholder"
  Session 3: Discrimination practice — "Is this zero an empty-set zero or a placeholder zero?"
  Session 4: Mixed practice with both glyphs in arithmetic contexts

SINGLE-GLYPH GROUP (30 min/session):
  Session 1: Introduction to zero (0) — "zero means none"
  Session 2: Zero in place value — "zero holds the place"
  Session 3: Practice with zero in arithmetic — "what happens when we add zero?"
  Session 4: Review and consolidation — all zero contexts

CRITICAL CONTROL: Total instruction time on zero concepts is EQUAL across groups.
The dual-glyph group spends time learning two glyphs; the single-glyph
group spends equivalent time on additional zero-concept practice.

WEEK 4: POST-TEST
- ZCA (20 items, 15 min)
- Standard arithmetic screener (10 items, 10 min)
- MAQ (8 items, 5 min)

WEEK 8: DELAYED POST-TEST
- ZCA (20 items, 15 min)
- Standard arithmetic screener (10 items, 10 min)
- Transfer task: Standard notation problems (using only "0", not ∅/⊘)
```

### 3.6 Planned Analyses

#### Primary: ANCOVA
```
lm(zca_post ~ group + zca_pre + age + gender, data=df)
- Expected: Significant group effect (β_dual > 0, p < 0.05)
```

#### Secondary: Mixed Model
```
lmer(zca_score ~ group * time + (1|participant), data=df_long)
- Expected: Significant Group × Time interaction
- Key contrast: Dual-glyph > Single-glyph at Week 4 AND Week 8
```

#### Non-Inferiority (Transfer Task)
```
t.test(standard_arithmetic_post ~ group)
- Expected: No significant difference (|d| < 0.20)
- If dual-glyph performs WORSE on standard tasks, the intervention is harmful
```

### 3.7 Power Analysis (Pilot)

```
This is a PILOT study (N=60). Power is limited:
- To detect d=0.50: power ≈ 0.48 (underpowered)
- To detect d=0.30: power ≈ 0.22 (severely underpowered)

Purpose: Estimate effect size for full RCT power analysis.
If pilot shows d > 0.20, proceed to full RCT (N ≈ 400 for d=0.30, power=0.80).
If pilot shows d < 0.10, the effect is likely too small to be educationally meaningful.
```

### 3.8 Pre-Registered Falsification Criteria

**The dual zero-glyph hypothesis is DISCONFIRMED if:**
1. ANCOVA shows no significant group effect (p > 0.05) AND effect size d < 0.20
2. The dual-glyph group performs WORSE on standard notation transfer tasks (d < -0.20) — indicating glyph interference
3. Delayed post-test effect (Week 8) decays to d < 0.10 (no retention)

**The hypothesis is PROMISING (proceed to full RCT) if:**
- Pilot shows d > 0.20 at post-test
- Transfer task shows no decrement (|d| < 0.20)
- Delayed post-test retains d > 0.15

---

## Pre-Registration Templates

### OSF Registered Report Structure

For each experiment, create an OSF registration with:

1. **Title** — As specified above
2. **Authors** — QNFO Research + collaborating PIs
3. **Hypotheses** — As specified in §1.1, §2.1, §3.1
4. **Design Plan** — As specified in §1.2, §2.2, §3.2
5. **Sampling Plan** — Power analysis, inclusion/exclusion criteria, stopping rule
6. **Variables** — All DVs operationalized with measurement details
7. **Analysis Plan** — Full model specifications with contrast coding
8. **Falsification Criteria** — Pre-registered thresholds for confirmation/disconfirmation
9. **Data Collection Procedures** — Step-by-step protocol
10. **Known Differences from Registered Report** — Any deviations to be documented

### Pre-Registration Links (to be created)

| Experiment | OSF Registration | Status |
|-----------|-----------------|--------|
| Experiment 1 (Metaphor) | [osf.io/TO_BE_REGISTERED](https://osf.io) | Draft |
| Experiment 2 (Validation) | [osf.io/TO_BE_REGISTERED](https://osf.io) | Draft |
| Experiment 3 (Zero-Glyph) | [osf.io/TO_BE_REGISTERED](https://osf.io) | Draft |

---

## Ethical Considerations

### Informed Consent
All experiments require informed consent (participants) and parental consent + child assent (Experiment 3).

### Data Management
- Anonymized data stored on OSF with embargo option
- Raw video/audio (if collected) stored encrypted, deleted after coding
- Analysis scripts version-controlled on GitHub

### Risk Assessment
- **Experiment 1:** Minimal risk (computer-based learning task)
- **Experiment 2:** Minimal risk (rating task)
- **Experiment 3:** Minimal risk (educational intervention); potential for notation confusion if dual-glyph interferes with standard notation — monitored via transfer task

### IRB
Institutional Review Board approval required before data collection. Submit to collaborating institution''s IRB.

---

## Timeline

| Milestone | Target | Depends On |
|-----------|--------|-----------|
| OSF pre-registrations submitted | 2026-Q3 | Protocol finalization |
| IRB approval | 2026-Q4 | Institution partnership |
| Experiment 1 data collection | 2027-Q1 | IRB + Prolific setup |
| Experiment 1 analysis + preprint | 2027-Q2 | Data collection complete |
| Experiment 2 data collection | 2027-Q2 | Rater recruitment |
| Experiment 3 pilot data collection | 2027-Q3 | School partnership + IRB |
| Full RCT design (if pilot positive) | 2027-Q4 | Pilot results |
| Synthesis: Phase 2 results paper | 2028-Q1 | All experiments complete |

---

## Funding Estimate

| Experiment | Estimated Cost | Breakdown |
|-----------|---------------|-----------|
| Experiment 1 | $12,000 | 324 participants × $12/hr × 1.5h + Prolific fees + software |
| Experiment 2 | $8,000 | 20 raters × $100 honoraria + 40 speed-task participants × $12/hr |
| Experiment 3 (pilot) | $15,000 | Materials development, school partnership, RA time, 60 child participants |
| **Total Phase 2** | **$35,000** | Plus indirect costs (IRB, administration) |

---

*Protocols drafted 2026-07-19. To be submitted as OSF Registered Reports before data collection.*
