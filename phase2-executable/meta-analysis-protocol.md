# NUMERATA Phase 2 — Meta-Analysis: Numeral System Comparison Studies

**Project:** NUMERATA | **Phase:** 2 — Executable Research
**Date:** 2026-07-19 | **Status:** Protocol v1.0
**Research Type:** LLM-Executable — no human subjects, publicly available data

---

## 1. Objective

This meta-analysis tests NUMERATA's central claim: **multi-axis evaluation reveals numeral system advantages invisible to single-dimensional comparisons.** We extract effect sizes from existing cross-notation studies, apply the NUMERATA 8-axis rubric, and compute a **Meta-Contrast Score** (MCS) — the degree to which dimensional rankings diverge from single-axis rankings.

## 2. Methods

### 2.1 Inclusion Criteria

| Criterion | Rule |
|-----------|------|
| Population | Any (human participants, computational models) |
| Intervention | Comparison of ≥2 numeral systems or notations on ≥1 task |
| Comparison | Between-system or cross-notation |
| Outcome | Any quantitative measure (RT, error rate, learning time, accuracy) |
| Study design | Experimental, quasi-experimental, or computational |
| Language | English |
| Date | 1990-2026 |

### 2.2 Search Strategy

| Source | Query | Purpose |
|--------|-------|--------|
| Semantic Scholar | "numeral system comparison" "notation comparison" arithmetic | Direct comparison studies |
| Semantic Scholar | "cross-notation" "numeral processing" "symbolic number" | Cross-notation effects |
| Semantic Scholar | "base-10 vs base-12" OR "decimal vs duodecimal" | Base comparison studies |
| Semantic Scholar | "zero concept" "numeral notation" "children" | Zero-glyph studies |
| Semantic Scholar | "fraction language" "decimal" "cross-linguistic" | Fraction representation |
| Semantic Scholar | "Chinese numerals" "Arabic numerals" comparison | Multiplicative-additive vs positional |
| QNFO Vectorize | "numeral system evaluation comparison" | QNFO corpus cross-reference |
| QNFO Vectorize | "silent radix numeral notation" | QNFO SR papers |

### 2.3 Data Extraction

| Field | Format |
|-------|--------|
| Study ID | Author (Year) |
| Systems compared | List of notation systems |
| Task type | Category (RT, accuracy, learning, transfer) |
| Sample size | N |
| Effect size | Cohen's d, η², or r (converted to d) |
| Direction | Which system performed better? |
| Confidence interval | 95% CI for effect size |

### 2.4 NUMERATA Rubric Application

Each comparison is scored on the 8 NUMERATA axes (1-7 Likert):

| Axis | Label | Question |
|------|-------|----------|
| 1 | Structural Simplicity | Does one system have measurably simpler composition rules? |
| 2 | Glyph Economy | Does one system require fewer distinct symbols? |
| 3 | Place-Value Transparency | Is positional value more transparent in one system? |
| 4 | Cognitive Load | Does one system show lower RT/error rates? |
| 5 | Error Resistance | Is one system more resistant to single-glyph errors? |
| 6 | Metaphor Diversity | Does one system recruit more embodied metaphors? |
| 7 | Fraction Quality | Does one system perform better on fraction tasks? |
| 8 | Extensibility | Does one system scale better to large/small numbers? |

### 2.5 Meta-Contrast Score (MCS)

```
MCS = (number of axes showing multi-axis divergence from speed-only) / (number of axes tested)

Interpretation:
  MCS ≥ 0.75: Strong support — multi-axis evaluation necessary
  MCS ≥ 0.50: Partial support — multi-axis adds value
  MCS < 0.50: Weak support — single-axis may be sufficient
```

## 3. Hypothesis

**H1:** MCS ≥ 0.50 — multi-axis evaluation produces rankings that diverge from speed-only rankings for at least half of measurable axes.

**H0:** MCS < 0.50 — speed-only rankings capture all available information.

**Pre-registered threshold:** If MCS < 0.50, the NUMERATA framework's central premise is disconfirmed for the existing literature.

## 4. Analysis Plan

1. Compute Cohen's d for each comparison
2. Apply random-effects meta-analysis (DerSimonian-Laird)
3. Score each comparison on NUMERATA axes
4. Compute MCS across all comparisons
5. Heterogeneity assessment: I², Q-statistic
6. Forest plot of effect sizes
7. Funnel plot for publication bias
8. Subgroup analysis: task type, system type, population

## 5. Data Availability

All data extracted from publicly available published studies. Extraction matrix, analysis scripts, and results published to Zenodo (DOI: 10.5281/zenodo.21439813) and GitHub (QNFO/numerata/phase2-executable/).
