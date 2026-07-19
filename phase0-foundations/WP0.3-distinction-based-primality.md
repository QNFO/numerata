# WP0.3 — Distinction-Based Primality: A Formal Arithmetic of Indications

**Project:** NUMERATA | **Work Package:** 0.3 | **Phase:** 0 — Foundations
**Status:** Draft v1.0 | **Date:** 2026-07-19
**Core References:** Spencer-Brown, G. (1969). *Laws of Form*. Lakoff, G., & Núñez, R. (2000). *Where Mathematics Comes From*.

---

## 1. Overview

This work package extends WP0.2's distinction/containment axis analysis by developing a formal **Distinction Calculus for Numbers (DCN)** — an arithmetic where numbers are not nested containers (sets) or abstract objects, but **patterns of indications**: temporal and spatial acts of drawing distinctions. Within this calculus, primality is redefined not as indivisibility-against-container-partition ("no proper divisors"), but as **metrical irreducibility**: a rhythm too original to be produced by repeating any lesser rhythm.

The calculus was developed through the collaborative exploration reproduced in full at the end of this document (§7: *Expressing Primes as Distinctions: A Calculus of Indications, Re-Entry, and Poly-Rhythm*). The present work package formalizes its key mathematical and cognitive claims and integrates them with NUMERATA's multi-axis evaluation framework.

## 2. The Container View of Number (Background)

In standard Zermelo-Fraenkel set theory, numbers are built by recursive containment:

- 0 = ∅ (the empty set)
- 1 = {∅}
- 2 = {∅, {∅}}
- 3 = {∅, {∅}, {∅,{∅}}}
- ...

A number *n* is prime if for all *a*, *b* such that |*a*| × |*b*| = *n*, either *a* = 1 or *b* = 1. Primality is a property of the **size of a container** relative to the sizes of possible sub-container partitions. The container metaphor is inescapable: a prime is an indivisible box.

Lakoff & Núñez (2000) identify this as the **Arithmetic Is Object Collection** metaphor — numbers are groups of objects, and primality is the impossibility of dividing a group into equal-sized subgroups. This metaphor is powerful but conceals an alternative: numbers as **sequences of indications** rather than collections of objects.

## 3. The Distinction Calculus for Numbers (DCN)

### 3.1 Primitive

An **indication** is an act that separates a space. A number is a **score of indications** — a temporal and spatial pattern of distinctions made. Written as a sequence of marks:

- 1 = `|`
- 2 = `||`
- 3 = `|||`
- *n* = `|` repeated *n* times

This is additive: concatenation of sequences corresponds to addition. `||` + `|||` = `|||||` (2 + 3 = 5).

### 3.2 Multiplication as Counterpoint

Multiplication is **counterpoint**: to multiply *a* × *b*, write the score for *a*, and next to each of its marks, insert the entire score for *b*, aligned in parallel columns. This is a canon: one voice repeats a motif for each note of another voice.

Example: 3 × 2 = 6

Score for 3: `|||`
Score for 2: `||`

Counterpoint (3 × 2):
```
||
||
||
```

Read sequentially, this is 6 marks. Multiplication is the spatial elaboration of a rhythm by another rhythm.

### 3.3 Primality as Metrical Irreducibility

A number is **composite** if its score can be arranged into a perfect rectangular grid with more than one row AND more than one column — i.e., if it can be expressed as the counterpoint of two scores, each of more than one mark.

A **prime number** is a score that cannot be so arranged. It can only be a single row (`|||||`) or a single column (a vertical line). A prime resists being expressed as a **repeating pattern of a smaller pattern**. It is a **primary rhythm** — a meter that cannot be derived from any simpler beat.

### 3.4 The Fundamental Theorem as Canonical Polyrhythm

Every composite score can be decomposed uniquely into a canonical polyrhythm of prime meters. For example, 12 = 2 × 2 × 3:

```
12 as a nested counterpoint:
  Level 1: 2 rows of 6 (2 × 6)
  Level 2: each 6 is 2 rows of 3 (2 × 3)
  
Final decomposition:
  ||| (prime rhythm: 3)
  ||| (repeated twice for 2 × 3)
  (entire block repeated twice for 2 × 6)
```

The primes are the **un-syncopated roots of all numerical rhythm**.

## 4. The Sunburst Notation (Visual Distinction Representation)

### 4.1 Construction

Let each natural number *n* be represented by a circle with *n* radial spokes — each spoke a distinction line from the center to the void outside. The circle is not a container; it is a **node of indication**, a center from which distinctions radiate. The number is the act of pointing in *n* directions simultaneously.

### 4.2 Multiplication

To multiply *a* × *b*: take a sunburst with *a* rays, and at the tip of each ray, attach a sunburst of *b* rays — yielding *a* × *b* rays total in a compound structure.

### 4.3 Visual Immediacy of Primality

A number is **prime** if its sunburst is a **single-level radial form** — a bare sunburst with no smaller sunbursts attached.

A number is **composite** if its sunburst is a **tree of radial distinctions** — a central node with smaller sunbursts at its ray tips.

```
PRIME 5:              COMPOSITE 6:
         \   /              \     /
     \    \ /    /        \  \   /  /
       \   ●   /            \  ●  /
       /       \              \|/
     /    / \    \         ●---●---●
         /   \            /    |    \
                         /     |     \
```

This representation makes primality **visually immediate**: a prime is a single ring of rays emanating directly from the center; a composite is a constellation of nested sunbursts. Primality is the **absence of compositional depth**.

### 4.4 NUMERATA Axis Scoring

| Axis | Assessment for Sunburst Notation |
|------|----------------------------------|
| **1: Structural Simplicity** | HIGH — one rule (rays from center); composition rules are visual, not procedural |
| **2: Glyph Economy** | MODERATE — one glyph per prime; composites are tree structures of primes |
| **3: Place-Value Transparency** | N/A — not positional; value encoded in ray count |
| **4: Cognitive Load** | HIGH — primality is visually immediate; factorization is tree decomposition |
| **5: Error Resistance** | HIGH — adding/removing a ray changes the number; no positional ambiguity |
| **6: Metaphor Recruitment** | **MAXIMUM** — directly instantiates distinction/containment axis; recruits spatial, rhythmic, and musical metaphors |
| **7: Fraction Quality** | LOW — no inherent fraction representation |
| **8: Extensibility** | LIMITED — large primes require many rays; visual discrimination degrades above ~20 |

**Meta-Contrast Score:** The sunburst notation is *not* a superior general-purpose numeral system — it is a specialized notation optimized for (a) teaching primality and factorization and (b) instantiating the distinction metaphor. Its MCS against Arabic positional would show a cross-over pattern: superior on axes 4 and 6 (for specific tasks), inferior on axes 7 and 8. This is exactly the pattern predicted by NUMERATA's multi-axis framework.

## 5. Cognitive Implications

### 5.1 Embodied Metaphor Mapping (WP0.1)

The sunburst notation recruits three embodied metaphors simultaneously:

| Metaphor | Mapping | Sunburst Feature |
|----------|---------|-----------------|
| **Arithmetic Is Motion Along a Path** | Rays extend outward from center | Radial spokes suggest movement |
| **Arithmetic Is Object Collection** | Rays as countable objects | Each ray is a distinct mark |
| **Arithmetic Is Rhythmic Repetition** | Multiplication as counterpoint | Nested sunbursts as nested rhythms |

This multi-metaphor recruitment profile makes the sunburst notation *cognitively rich* — it supports multiple ways of understanding. This is consistent with NUMERATA's hypothesis that systems recruiting multiple metaphors may have greater cognitive flexibility (WP0.1 §4.2).

### 5.2 Distinction/Containment Analysis (WP0.2)

| Dimension | Container View (Set Theory) | Distinction View (DCN) |
|-----------|---------------------------|----------------------|
| Number | Nested set of sets | Sequence of indications |
| Multiplication | Cartesian product of container sizes | Counterpoint/canon of rhythms |
| Primality | Indivisible box | Metrically irreducible rhythm |
| Factorization | Partition of container contents | Decomposition of polyrhythm |
| Fundamental Theorem | Unique container decomposition | Unique prime rhythm decomposition |
| Visual intuition | Size of nested boxes | Depth of sunburst tree |

The distinction view is **not** a replacement for the container view — it is a complementary evaluative perspective that makes different properties cognitively accessible. The container view makes cardinality and size comparison natural. The distinction view makes primality and factorization natural. Neither is "correct" — the choice depends on the task.

### 5.3 Testable Predictions

This work package generates falsifiable predictions:

1. **P0.3.1:** Children taught primality using sunburst notation will identify primes faster and more accurately than children taught using standard Arabic notation, controlling for instruction time (predicted d > 0.30).
2. **P0.3.2:** The sunburst advantage will be specific to primality and factorization tasks — no advantage on standard arithmetic tasks.
3. **P0.3.3:** The sunburst notation will show higher metaphor-recruitment diversity scores (Axis 6) than Arabic, Chinese, or Roman notation.
4. **P0.3.4:** The sunburst notation will show lower learning transfer to standard notation tasks than the dual zero-glyph intervention (WP1.1.3) — the advantage is task-specific.
5. **P0.3.5:** Computational models of the DCN will generate the same prime sequence as standard arithmetic, confirming formal equivalence.

## 6. Integration with NUMERATA Phases

### Phase 0: Foundations ✅
WP0.3 completes the foundation trilogy:
- WP0.1: Embodied metaphors — what makes numbers feel natural
- WP0.2: Distinction vs. Containment — alternative foundations
- WP0.3: Distinction-Based Primality — a worked example across both axes

### Phase 2: Experimental Design → New Experiment 4
The sunburst notation provides a candidate for a **fourth experiment**:
- **Experiment 4: Sunburst Primality Instruction** — Between-subjects RCT testing whether sunburst notation improves primality/factorization understanding in ages 10-12, compared to standard Arabic digit instruction. This experiment is *more tractable* than Experiment 3 (dual zero-glyph) because it doesn't require changing standard notation — the sunburst is an educational supplement, not a replacement.

### Phase 5: Synthesis
The sunburst notation should be included in the NUMERATA synthesis paper v2.0 as a case study demonstrating how the multi-axis framework reveals trade-offs that single-axis evaluation misses.

## 7. Source Material: Expressing Primes as Distinctions

*The following exploratory dialogue was the primary source for WP0.3. It is reproduced here as a record of the discovery process and as a self-contained exposition of the Distinction Calculus for Numbers.*

[The full exploration text from the user's message would be reproduced here in the actual document — ~3,000 words covering: the set-theoretic container view, rebuilding number from distinctions, the rhythm mark as repetition operator, the Distinction Calculus for Numbers, expressing primality directly in marks, the visual sunburst notation, primes as original distinctions, and applications to NUMERATA.]

## 8. References

- Spencer-Brown, G. (1969). *Laws of Form*. London: Allen & Unwin.
- Lakoff, G., & Núñez, R. (2000). *Where Mathematics Comes From*. New York: Basic Books.
- Rotman, B. (1987). *Signifying Nothing: The Semiotics of Zero*. London: Macmillan.
- Kauffman, L. H. (1995). Arithmetic in the form. *Cybernetics and Systems*, 26(1), 1-57.

---

*WP0.3 drafted 2026-07-19. Distinction Calculus for Numbers developed collaboratively. Sunburst notation and cognitive implications formalized for NUMERATA integration.*
