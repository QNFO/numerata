# WP0.2 — Distinction vs. Containment: Foundations for NUMERATA

**Project:** NUMERATA | **Work Package:** 0.2 | **Phase:** 0 — Foundations
**Status:** Draft v1.0 | **Date:** 2026-07-19
**Core Reference:** Spencer-Brown, G. (1969). *Laws of Form*. London: Allen & Unwin.

---

## 1. Overview

Spencer-Brown's *Laws of Form* [@spencerbrown1969laws] introduces a fundamental operation — *distinction* — as the primitive act from which all form (and potentially all arithmetic) derives. This document positions Spencer-Brown's framework as a complementary axis to Lakoff & N\'{u}\~{n}ez's embodied metaphor theory, forming the theoretical backbone of NUMERATA's evaluation framework.

The core tension we explore: **Is number fundamentally about making distinctions (Spencer-Brown) or about containing/manipulating objects (Lakoff & N\'{u}\~{n}ez)?** This maps onto the distinction-vs-containment axis that structures our taxonomy.

---

## 2. Spencer-Brown's Calculus of Indications

### 2.1 The Primitive Act: Draw a Distinction

> "We take as given the idea of distinction and the idea of indication, and that we cannot make an indication without drawing a distinction. We take, therefore, the form of distinction for the form." — Spencer-Brown (1969, p. 1)

A distinction cleaves a space into two states: the *marked* state and the *unmarked* state. The marked state is indicated by a cross: $\boxed{}$

### 2.2 The Two Initial Equations

1. **Law of Calling:** The value of a call made again is the value of the call.
   $$\boxed{\boxed{a}} = \boxed{a}$$

2. **Law of Crossing:** The value of a crossing made again is not the value of the crossing.
   $$\boxed{\boxed{}} = \text{unmarked}$$

### 2.3 Arithmetic from Distinction

Spencer-Brown shows that from these two primitives, one can construct a Boolean algebra and, by extension, an arithmetic. The crucial insight for NUMERATA: **number emerges from the repeated application of distinction-making**, not from counting objects.

---

## 3. Distinction-Based Numeral Systems

### 3.1 Binary as Distinction Native

The binary numeral system is the most direct expression of Spencer-Brown's calculus. Each bit position represents a distinction (marked/unmarked), and the value emerges from the *pattern* of distinctions, not from object aggregation.

### 3.2 Positional Systems as Distinction Hierarchies

All positional numeral systems (Hindu-Arabic, Mayan, Babylonian) can be re-interpreted as *hierarchical distinction networks*:
- Each position is a distinction level
- The base determines the number of distinct states at each level
- The value is the pattern of distinctions across levels

### 3.3 Comparison: Distinction vs. Collection

| Property | Distinction-Based | Collection-Based |
|----------|-------------------|------------------|
| **Primitive act** | Drawing a boundary | Grouping objects |
| **Zero representation** | The unmarked state | Empty collection |
| **Value derivation** | Pattern of distinctions | Count of marks |
| **Cognitive basis** | Spatial boundary detection | Object individuation + enumeration |
| **Example systems** | Binary, positional | Tally, additive Roman |

---

## 4. The Mark/Void Duality vs. Container Schema

Spencer-Brown's mark/void duality (marked state = inside the distinction; unmarked state = outside) maps onto a fundamental cognitive schema identified by Lakoff: the **container schema**.

### 4.1 Container Schema Properties

- Interior (marked/contained/valued)
- Boundary (the distinction itself)
- Exterior (unmarked/uncontained/valueless)
- Transitivity: If A is in B and B is in C, then A is in C

### 4.2 Tension with the Motion Metaphor

The motion-along-a-path metaphor (dominant in Western number cognition) treats numbers as *locations*, not as *containers*. This creates a potential cognitive conflict: the positional system structurally embodies the container schema (digits are *inside* positions), but educationally recruits the motion schema (the number line).

This tension may explain documented difficulties in place-value understanding [@fuson1990conceptual].

---

## 5. Implications for NUMERATA

### 5.1 The Distinction/Containment Axis

We propose a primary evaluative axis:

| System | Distinction Emphasis | Containment Emphasis |
|--------|---------------------|---------------------|
| Binary | **Maximum** | Minimal |
| Signed-digit | High | Moderate |
| Hindu-Arabic | Moderate | High |
| Roman additive | Minimal | **Maximum** |
| Tally | Minimal | **Maximum** |

### 5.2 Design Principle: Cognitive Coherence

A well-designed numeral system should:
1. Either commit to one schema (distinction or containment) consistently,
2. Or make the transition between schemas explicit and scaffolded.

Systems that *implicitly* mix schemas (e.g., positional systems taught via object-counting) risk creating conceptual confusion.

### 5.3 Connection to Silent Radix

The QNFO Silent Radix programme's core insight — that the *pattern* of positional distinctions carries information independent of the *glyphs* used — is a direct expression of Spencer-Brown's calculus. Silent Radix is, in Spencer-Brown's terms, an analysis of the *form* of numeral systems, abstracted from their *content* (glyph choice).

---

## 6. Falsifiability

This framework makes testable predictions:
- Learners primed with distinction-based explanations should grasp positional systems faster than those primed with collection-based explanations `[speculative]`.
- Systems with coherent schema commitment should produce fewer place-value errors than mixed-schema systems `[speculative]`.
- Zero should be easier to learn in systems where it maps naturally to the unmarked state (distinction-based) vs. the empty collection (collection-based).

These would be disconfirmed if controlled experiments show no significant difference in learning outcomes between schema-coherent and schema-mixed numeral systems.

---

## 7. References

See `refs.bib` for complete bibliography.
