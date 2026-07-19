# WP1.1.3 + WP1.3 — Edge Cases & Hidden Assumptions Compendium

**Project:** NUMERATA | **Work Packages:** 1.1.3 + 1.3
**Phase:** 1 — Critical Analysis | **Date:** 2026-07-19

---

## 1. Purpose

This compendium catalogues edge cases, hidden assumptions, and stress-test scenarios that any numeral evaluation framework must handle. It serves as a quality gate: a framework that cannot address these cases has not achieved sufficient coverage.

---

## 2. Edge Cases

### 2.1 Zero

**The problem:** Zero is not a "quantity" in the ordinary sense. It is a meta-sign — a signifier that signifies absence [@rotman1987signifying].

| Issue | Example | Framework Requirement |
|-------|---------|----------------------|
| Zero as placeholder vs. zero as number | "105" vs. "0" | Distinguish positional zero from cardinal zero |
| Multiple zero representations | `0`, `−0` (signed zero), `0.0` | Handle equivalence classes of zero representations |
| Zero in non-positional systems | Roman numerals have no zero | Account for systems without zero; evaluate whether this is a feature or limitation |
| Psychological zero | Children struggle with "0 is less than 1" [@wellman1986thinking] | Incorporate developmental trajectory data |
| Double-zero experiment | Using two distinct glyphs for cardinal vs. positional zero | Proposed in NUMERATA: test whether disambiguating zero roles improves learning |

### 2.2 Negative Numbers

| Issue | Framework Requirement |
|-------|----------------------|
| Negative numbers require a sign convention (explicit or implicit) | Evaluate sign-handling as a dimension |
| Some systems (Roman) cannot represent negatives without augmentation | Account for extensibility |
| Signed-digit representations blur the positive/negative distinction | Evaluate cognitive cost of signed representations |

### 2.3 Fractions and Non-Integer Values

| Issue | Framework Requirement |
|-------|----------------------|
| Vulgar fractions (a/b) vs. decimal fractions (0.ab) | Evaluate fraction representation as a dimension |
| Repeating decimals reveal base artifacts (1/3 = 0.333... in decimal, 0.1 in base 3) | Measure "fraction termination density" — proportion of simple fractions that terminate |
| Mixed-radix systems (time, angle) have domain-specific fraction conventions | Account for domain coupling |

### 2.4 Very Large and Very Small Numbers

| Issue | Framework Requirement |
|-------|----------------------|
| Scientific notation (1.23 × 10^45) is a meta-notation | Evaluate whether the system requires auxiliary notation for extreme magnitudes |
| Subitizing range (1–4) vs. extended range | Distinguish performance in the subitizable range from performance at scale |
| Infinity representation | Some systems can express ∞; most cannot. Is this a requirement? |

### 2.5 Ambiguous Representations

| Example | Issue |
|---------|-------|
| `2.5` vs. `2.50` (trailing zero ambiguity) | Precision signalling |
| `IX` (Roman: 9) vs. `XI` (11) — positional ambiguity | Order-dependence without positional convention |
| `100` in binary vs. decimal — identical glyph string, different value | Base ambiguity when base is implicit |
| `0.999... = 1` | Non-unique representations in positional systems |

---

## 3. Hidden Assumptions

### 3.1 Teleological Assumption (The "March of Progress")

**Assumption:** Historical development of numeral systems represents progress toward an optimal form (Hindu-Arabic).

**Why hidden:** Most modern accounts treat Hindu-Arabic as the endpoint of numeral evolution. Chrisomalis [@chrisomalis2010numerical] explicitly critiques this.

**NUMERATA position:** We adopt Chrisomalis's non-teleological framework. Each system is evaluated on its own terms against explicit criteria, not against a presumed endpoint.

### 3.2 Universality Assumption

**Assumption:** The cognitive mechanisms for numerical processing are universal across cultures.

**Why hidden:** Most cognitive research uses WEIRD (Western, Educated, Industrialised, Rich, Democratic) subjects.

**Evidence against:** Mundurucu people show logarithmic (not linear) mental number lines [@dehaene2008log; @pica2004exact]. Pirah\~{a} appear to lack exact number words entirely.

**NUMERATA position:** Cross-cultural evidence is explicitly incorporated as a dimension.

### 3.3 Decimal Bias

**Assumption:** Base-10 is natural or optimal because humans have 10 fingers.

**Why hidden:** Most research and all of education assumes decimal.

**Counter-evidence:**
- Base-12 has superior fraction termination properties
- Base-2 maps directly to Boolean logic
- Base-60 (Babylonian) persists in time/angle measurement after 4,000 years
- Mayan base-20 was fully functional for advanced astronomy

**NUMERATA position:** Base choice is a parameter to be evaluated, not a given.

### 3.4 The Glyph-Value Conflation

**Assumption:** The shape of a digit glyph is the digit's identity.

**Why hidden:** In positional systems, glyph identity and positional value are so tightly coupled that they are rarely distinguished.

**Counter-evidence:** Silent Radix demonstrates that positional value is independent of glyph set. The same value `2 × 10^2 + 3 × 10^1 + 7` could be represented as `237`, `bcf`, `★★★`, or any set of 10 distinct marks.

**NUMERATA position:** Following Silent Radix, glyph identity and positional value are separate evaluative dimensions.

### 3.5 The Learning Assumption

**Assumption:** Ease of initial learning is the most important criterion.

**Why hidden:** Educational psychology often privileges learnability.

**Counter-evidence:**
- Roman numerals are harder to learn but persist in specific domains (clocks, outlines, inscriptions)
- Binary is harder to learn but optimal for computation
- Trade-off: learnability vs. computational power vs. error resistance

**NUMERATA position:** We treat learnability as one axis among several, not as a master criterion.

### 3.6 The Base-Is-Fixed Assumption

**Assumption:** A numeral system has exactly one base.

**Why hidden:** Most familiar systems are single-base.

**Counter-evidence:**
- Mixed-radix systems (time: 60:60:24:7:4.345:12) are ubiquitous
- Factorial number system uses a different base at each position
- Balanced ternary uses digits {−1, 0, 1} with base 3

---

## 4. Stress-Test Scenarios

| Scenario | What It Tests |
|----------|--------------|
| **Mars colony with 12-fingered inhabitants** | Anthropocentrism of base choice |
| **Nuclear warning signs (10,000-year comprehension)** | Cross-cultural and cross-temporal robustness |
| **Blind users (tactile numerals)** | Modality independence |
| **Dyscalculic users** | Cognitive accessibility floor |
| **Extreme precision requirements (quantum computing)** | Precision scaling |
| **Real-time safety-critical displays (aviation, medical)** | Error resistance under time pressure |
| **Children aged 4–7 learning first numerals** | Developmental appropriateness |
| **Machine interpretation (OCR, NLP)** | Machine readability |

---

## 5. Formalised Assumptions Catalog

For each assumption identified above, we provide:

| Assumption ID | Statement | Confidence | Falsifiability Condition |
|---------------|-----------|------------|--------------------------|
| A1 (Teleological) | "Hindu-Arabic is the optimal numeral system" | Low (0.2) | Disconfirmed if a different system outperforms on ≥3 evaluative axes in controlled experiments |
| A2 (Universality) | "Number cognition is culturally universal" | Medium (0.5) | Disconfirmed if significant cross-cultural variations persist after controlling for education |
| A3 (Decimal Bias) | "Base-10 is naturally optimal" | Low (0.1) | Disconfirmed if base-12 or base-8 produces superior human performance in controlled tasks |
| A4 (Glyph-Value) | "Digit glyphs are inseparable from values" | Very Low (0.05) | Already disconfirmed by Silent Radix — different glyph sets map to identical positional values |
| A5 (Learning) | "Initial learnability is the primary criterion" | Medium (0.4) | Disconfirmed if domain-expert users consistently prefer harder-to-learn but more efficient systems |
| A6 (Fixed Base) | "Numeral systems have a single base" | Very Low (0.05) | Already disconfirmed by mixed-radix systems in common use |

---

## 6. References

See `refs.bib` for complete bibliography.
