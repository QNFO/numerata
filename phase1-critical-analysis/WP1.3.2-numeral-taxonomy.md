# WP1.3.2 — Taxonomy of Numeral Systems

**Project:** NUMERATA | **Work Package:** 1.3.2
**Phase:** 1 — Critical Analysis | **Date:** 2026-07-19
**Core Reference:** Chrisomalis, S. (2010). *Numerical Notation: A Comparative History*. Cambridge.

---

## 1. Overview

Building on Chrisomalis's [@chrisomalis2010numerical] structural typology, this document presents a taxonomy of numeral systems along the key axes identified by NUMERATA. The taxonomy serves as the reference classification for all subsequent evaluative work.

---

## 2. Taxonomy Axes

### Axis 1: Structural Type (Chrisomalis)

| Type | Description | Examples |
|------|-------------|----------|
| **Additive** | Value = sum of constituent values | Roman (VII = 5+1+1), Egyptian hieroglyphic |
| **Multiplicative-additive** | Values multiplied then added | Traditional Chinese (三百二十七 = 3×100 + 2×10 + 7) |
| **Positional** | Value determined by position | Hindu-Arabic, Babylonian, Mayan |
| **Cumulative-positional** | Positional with explicit base markers | Cuneiform (base-60 with sub-base-10) |
| **Ciphered-additive** | Distinct glyphs for each value level | Greek alphabetic, Hebrew |

### Axis 2: Base

| Base | Systems | Notable Properties |
|------|---------|-------------------|
| **2** (Binary) | Leibniz, modern computing | Optimal for Boolean logic; poor compression |
| **8** (Octal) | Yuki (historical), computing | Compact binary representation |
| **10** (Decimal) | Hindu-Arabic, most modern | Finger-counting; widespread adoption |
| **12** (Duodecimal) | Some historical systems | Superior fraction termination (1/3, 1/4) |
| **16** (Hexadecimal) | Computing | Compact binary; 16 distinct glyphs |
| **20** (Vigesimal) | Mayan, Basque (historical) | Finger + toe counting |
| **60** (Sexagesimal) | Babylonian, modern time/angle | Superior fraction termination; 4,000-year persistence |
| **Mixed** | Time (60:60:24), factorial | Domain-specific optimisation |

### Axis 3: Zero Handling

| Type | Description | Example |
|------|-------------|---------|
| **No zero** | System cannot represent null quantity | Early Roman, tally |
| **Positional zero only** | Zero exists only as placeholder | Babylonian (late period) |
| **Cardinal zero** | Zero as full-fledged number | Hindu-Arabic |
| **Signed zero** | Distinct +0 and −0 | IEEE 754 floating-point |
| **Dual zero** | Separate glyphs for cardinal vs. positional zero | NUMERATA proposal |

### Axis 4: Sign Representation

| Type | Example |
|------|---------|
| **Explicit sign prefix** | −5, +3 |
| **Implicit (unsigned)** | Roman numerals, tallies |
| **Signed-digit** | Balanced ternary: $\overline{1}$, 0, 1 |
| **Complement** | Two's complement (computing) |

### Axis 5: Embodied Metaphor Recruitment (WP0.1)

| System | Collection | Construction | Motion | Measuring |
|--------|------------|-------------|--------|-----------|
| Tally | ⬛⬛⬛⬛⬛ | ⬜ | ⬜ | ⬜ |
| Roman additive | ⬛⬛⬛⬛ | ⬛⬛ | ⬜ | ⬜ |
| Chinese multiplicative | ⬛⬛ | ⬛⬛ | ⬛ | ⬛⬛ |
| Hindu-Arabic | ⬛⬛ | ⬛⬛⬛ | ⬛⬛⬛⬛ | ⬛⬛⬛⬛ |
| Mayan | ⬛ | ⬛⬛⬛ | ⬛⬛⬛ | ⬛⬛⬛ |
| Binary | ⬜ | ⬛⬛⬛⬛ | ⬛⬛ | ⬜ |
| Balanced ternary | ⬜ | ⬛⬛⬛ | ⬛⬛⬛ | ⬛⬛ |
| Cistercian | ⬜ | ⬛⬛ | ⬜ | ⬜ |

Key: ⬛⬛⬛⬛⬛ = maximum recruitment, ⬜ = minimal/absent

### Axis 6: Distinction/Containment Orientation (WP0.2)

| System | Distinction Emphasis | Containment Emphasis | Coherence |
|--------|---------------------|---------------------|-----------|
| Binary | Maximum | Minimal | High |
| Balanced ternary | High | Moderate | High |
| Hindu-Arabic | Moderate | High | Moderate (mixed) |
| Mayan | Moderate | High | Moderate |
| Cistercian | High | Minimal | High |
| Roman additive | Minimal | Maximum | High |
| Tally | Minimal | Maximum | High |

### Axis 7: Cognitive Load Dimensions

| System | Distinct Glyphs | Rules for Combining | Place-Value Complexity | Total Load Estimate |
|--------|----------------|--------------------|------------------------|---------------------|
| Tally | 1 | 1 (concatenate) | 0 | Very Low |
| Binary | 2 | 5 (add+carry rules) | Moderate | Low |
| Hindu-Arabic | 10 | ~20 (addition table) | High | High |
| Mayan | 20 (± variants) | ~20 | High | Very High |
| Roman | 7 | ~10 (subtractive rule) | 0 | Moderate |
| Balanced ternary | 3 | Moderate | High | Moderate |

### Axis 8: Fraction Representation

| System | Fraction Method | Termination Quality |
|--------|----------------|---------------------|
| Decimal | Decimal point | Poor: 1/3 = 0.333... |
| Binary | Binary point | Poor: 1/5 = 0.00110011... |
| Sexagesimal | Positional fractions | Good: 1/3 = 20, 1/5 = 12 |
| Dozenal | Positional fractions | Good: 1/3 = 0.4, 1/4 = 0.3 |
| Roman | Vulgar fractions only | N/A (exact) |

### Axis 9: Error Detection/Correction

| System | Error Detection | Error Correction | Notes |
|--------|----------------|------------------|-------|
| Hindu-Arabic | Poor (single-digit errors undetectable) | None | Relies on check digits |
| Binary | Good (parity) | Good (Hamming) | Designed for error correction |
| Roman | Moderate (structural redundancy) | Weak | Position often recoverable |
| Cistercian | Good (geometric structure) | Moderate | Shape constraints |

---

## 3. Taxonomy Summary Table

| System | Structure | Base | Zero | Sign | Metaphors | D/C | Load | Fractions | Errors |
|--------|-----------|------|------|------|-----------|-----|------|-----------|--------|
| Tally | Additive | N/A | None | Unsigned | Collection | Containment | V.Low | N/A | Poor |
| Roman | Additive (+ subtractive) | 10 | None | Unsigned | Collection | Containment | Mod | Vulgar | Moderate |
| Chinese | Mult-additive | 10 | Positional | Unsigned | Multiple | Mixed | Mod | Vulgar | Moderate |
| Hindu-Arabic | Positional | 10 | Cardinal | Explicit | Multiple | Mixed | High | Positional (poor) | Poor |
| Mayan | Positional | 20 | Cardinal | Unsigned | Motion+Construction | Containment | V.High | Positional | Poor |
| Binary | Positional | 2 | Cardinal | Complement | Construction | Distinction | Low | Positional (poor) | Good |
| Balanced ternary | Positional | 3 | Cardinal | Signed-digit | Construction+Motion | Distinction | Mod | Positional (moderate) | Good |
| Cistercian | Ciphered | 10 | None | Unsigned | Minimal | Distinction | Mod | None | Good |
| Babylonian | Cumulative-pos | 60 | Positional (late) | Unsigned | Construction | Mixed | Very High | Positional (good) | Poor |

---

## 4. Evaluative Dimensions (Synthesised)

From the taxonomy axes, we derive the following primary evaluative dimensions:

| Dimension | Definition | Range |
|-----------|------------|-------|
| **Learnability** | Time/effort to achieve basic competence | Cognitive load (Axis 7) |
| **Expressiveness** | Range of representable values and operations | Structure + Base (Axes 1-2) |
| **Error Resistance** | Likelihood of undetected errors | Error detection (Axis 9) |
| **Computational Efficiency** | Speed/cost of arithmetic operations | Structure + Base (Axes 1-2) |
| **Fraction Quality** | Quality of rational number representation | Fraction termination (Axis 8) |
| **Cognitive Coherence** | Alignment with embodied metaphors | Metaphor recruitment (Axis 5) + D/C (Axis 6) |
| **Cross-Cultural Robustness** | Performance across diverse populations | Universal vs. culture-specific |
| **Extensibility** | Ease of extending to new domains | Sign + Fraction (Axes 4, 8) |

---

## 5. References

See `refs.bib` for complete bibliography.
