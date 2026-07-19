---
title: "NUMERATA: A Multi-Axis Framework for Evaluating Numeral Systems"
author: "QNFO Research"
date: "2026-07-19"
license: "QNFO Unified License Agreement (QNFO-ULA)"
doi: "10.5281/zenodo.21439533"
status: "published"
---

**Author:** QNFO Research | **Date:** 2026-07-19 | **License:** QNFO-ULA

---

## Abstract

How should numeral systems be evaluated? The question appears straightforward — compare systems on speed, accuracy, learnability — but decomposes under scrutiny. Numeral systems differ along structural axes (additive, positional, mixed), cognitive axes (embodied metaphor recruitment, cognitive load), and design axes (error resistance, fraction quality, extensibility). No existing framework integrates all three domains. NUMERATA proposes a multi-axis evaluation framework synthesising cognitive science [@lakoff2000where; @dehaene2011number; @carey2009origin], notation history [@chrisomalis2010numerical; @cajori1928history; @chrisomalis2020reckoning], semiotics [@spencerbrown1969laws; @rotman1987signifying; @grosholz2007representation], and human factors [@cohen2007medication; @reason1990human; @bennett2011display]. Building on the QNFO Silent Radix programme's formal foundation, NUMERATA extends the analysis into applied evaluation criteria that matter for human users and system designers. This synthesis paper integrates the Phase 1 deliverables — due diligence report, embodied metaphor mapping, distinction/containment analysis, edge case compendium, and numeral taxonomy — into a unified framework with testable predictions.

---

## 1. Introduction

### 1.1 The Evaluation Problem

Most people never ask whether the numeral system they use could be better designed. The Hindu-Arabic positional decimal system is treated as a given — as natural as the air we breathe. But this familiarity masks a design space of extraordinary breadth. Chrisomalis [@chrisomalis2010numerical] documents over 100 structurally distinct numeral systems from human history. The choice of numeral system is not merely a question of convention; it shapes what arithmetic operations feel intuitive [@lakoff2000where], what errors are likely [@cohen2007medication], and what mathematical ideas become thinkable [@netz1999shaping].

Yet the literature lacks an integrated evaluation framework. Cognitive scientists study how the brain processes numbers [@dehaene2011number; @nieder2019brain; @butterworth1999mathematical] but rarely compare numeral systems as design artifacts. Historians of notation document structural diversity [@chrisomalis2010numerical; @cajori1928history] but rarely evaluate systems normatively. Human factors researchers study error rates in safety-critical numeral displays [@cohen2007medication] but rarely connect findings to broader cognitive or historical analysis. NUMERATA bridges these silos.

### 1.2 Research Question

**How should numeral systems be evaluated?** More specifically:

1. What dimensions are relevant to evaluation?
2. What trade-offs exist between competing desiderata?
3. Can we make empirically testable predictions from the evaluation framework?

### 1.3 Scope

NUMERATA evaluates *numeral systems* — structured notations for representing numbers — not *number systems* (the algebraic structures of the numbers themselves). We focus on human-facing representations: the glyphs, rules, and conventions through which humans read, write, and manipulate written numbers. Machine-internal representations (IEEE 754, two's complement) are considered only insofar as they interact with human-facing systems.

---

## 2. Foundations

### 2.1 Silent Radix: The Formal Backbone

The QNFO Silent Radix (SR) programme provides NUMERATA's formal foundation. SR's core insight — that the *pattern* of positional distinctions carries numerical information independent of the *glyphs* chosen to represent each position — establishes a crucial separation: value is not tied to visual form. This frees our evaluation to consider glyph design, base choice, and positional structure as independent dimensions, rather than convolving them as most existing analyses do [established].

SR also provides formal tools for analysing the *closure properties* of numeral systems: which operations (addition, multiplication, division) are closed under which representations? This becomes an evaluative axis: a system that requires auxiliary notation for common operations (e.g., Roman numerals for multiplication) incurs a cognitive cost that a closed-positional system does not.

### 2.2 Embodied Cognition: The Metaphor Grounding

Lakoff & N\'{u}\~{n}ez [@lakoff2000where] argue that all mathematical concepts are grounded in embodied experience through conceptual metaphor. Their four grounding metaphors for arithmetic — Object Collection, Object Construction, Motion Along a Path, and the Measuring Stick — provide NUMERATA's first evaluative axis: **metaphor recruitment**.

Different numeral systems recruit different embodied metaphors (see WP0.1). Tally marks and additive Roman numerals recruit the Object Collection metaphor: each mark is an object in a collection. Hindu-Arabic positional notation primarily recruits the Motion Along a Path metaphor (via the culturally privileged number line) and the Measuring Stick metaphor. Binary, with its reduction to a two-state distinction at each position, strongly recruits the Object Construction metaphor but weakly recruits collection or motion metaphors.

This has consequences. The Motion Along a Path metaphor, dominant in Western mathematical education, creates expectations that may conflict with the structural logic of positional systems. A child who understands numbers as "points on a line" may struggle with place value, which is structurally about *containers within containers* — a different cognitive schema entirely [@fuson1990conceptual].

### 2.3 Distinction vs. Containment

Spencer-Brown's *Laws of Form* [@spencerbrown1969laws] provides a complementary foundation through the primitive act of *drawing a distinction*. Where Lakoff & N\'{u}\~{n}ez ground number in bodily experience with objects, Spencer-Brown grounds it in the cognitive act of separating marked from unmarked. This yields a fundamental axis (see WP0.2):

- **Distinction-based systems:** Number emerges from patterns of distinctions. Binary is the purest example; each bit is a mark/unmark decision.
- **Containment-based systems:** Number emerges from grouping objects. Tally marks and additive Roman numerals exemplify this.

Most systems blend both schemas to some degree. The evaluative question is not which is "correct" but rather: does the system maintain **cognitive coherence** — consistency in which schema it recruits — or does it create **schema interference** by implicitly mixing schemas without explicit scaffolding?

### 2.4 Zero as the Linchpin

Zero is the concept that most sharply distinguishes numeral systems. Rotman [@rotman1987signifying] analyses zero as a *meta-sign* — a signifier that signifies the absence of signification — creating a semiotic paradox: to represent nothing, we must represent *something*. Different numeral systems resolve this paradox differently:

- Systems without zero (tally, early Roman) simply cannot represent null quantities.
- Systems with positional zero only (late Babylonian) use zero as a placeholder but not as a cardinal value.
- Systems with cardinal zero (Hindu-Arabic) treat zero as a full-fledged number.
- The NUMERATA proposal of *dual zero glyphs* — one for cardinal zero, one for positional zero — tests whether disambiguating these roles improves learning [speculative].

The developmental psychology literature confirms that zero is cognitively challenging: children take longer to grasp "0 is less than 1" than other numerical comparisons [@wellman1986thinking], and even adults show slower reaction times for zero in number comparison tasks [@krajcsi2020difficulty].

---

## 3. The Multi-Axis Evaluation Framework

### 3.1 Evaluative Dimensions

From the Phase 1 analysis, we synthesise eight primary evaluative dimensions:

| # | Dimension | Definition | Source |
|---|-----------|------------|--------|
| D1 | **Learnability** | Time and effort to achieve basic competence | Cognitive load analysis (WP1.3.2) |
| D2 | **Expressiveness** | Range of representable values and operations | Structural typology [@chrisomalis2010numerical] |
| D3 | **Computational Efficiency** | Speed and resource cost of arithmetic | Formal closure properties (SR) |
| D4 | **Error Resistance** | Likelihood and detectability of errors | Human factors [@reason1990human; @cohen2007medication] |
| D5 | **Fraction Quality** | Quality of rational number representation | Base analysis (WP1.3.2) |
| D6 | **Cognitive Coherence** | Alignment with embodied metaphors; minimal schema interference | Metaphor recruitment (WP0.1), D/C axis (WP0.2) |
| D7 | **Cross-Cultural Robustness** | Performance across diverse populations | Ethnomathematics [@saxe2012cultural; @ascher1991ethnomathematics; @dehaene2008log; @pica2004exact] |
| D8 | **Extensibility** | Ease of extending to new domains, magnitudes, or modalities | Edge case analysis (WP1.1.3) |

### 3.2 Trade-Off Structure

These dimensions are not independent. The Phase 1 analysis identifies at least three robust trade-offs:

**Trade-off 1: Learnability vs. Computational Efficiency.** Systems with fewer distinct glyphs are easier to learn (tally: 1 glyph; binary: 2) but require longer representations for equivalent values, reducing computational efficiency. Systems with more glyphs (Hindu-Arabic: 10; Mayan: 20) compress representations but increase learning burden.

**Trade-off 2: Fraction Quality vs. Compatibility.** Bases with superior fraction termination properties (12, 60) require larger multiplication tables, increasing cognitive load. The persistence of base-60 in time measurement despite the dominance of base-10 illustrates this trade-off: domain-specific optimisation trumps global compatibility.

**Trade-off 3: Cognitive Coherence vs. Flexibility.** Systems with a single, coherent metaphorical grounding (tally, binary) are conceptually cleaner but less flexible across diverse tasks. Systems that recruit multiple metaphors (Hindu-Arabic) are more flexible but risk schema interference — the same structural feature interpreted through conflicting cognitive schemas.

### 3.3 Scoring Rubric

For each dimension, we propose a 1--5 ordinal scale:

| Score | Definition |
|-------|------------|
| 1 | Severely deficient — system fundamentally cannot meet this criterion |
| 2 | Below adequate — significant limitations or workarounds required |
| 3 | Adequate — meets basic requirements with known limitations |
| 4 | Good — performs well with minor limitations |
| 5 | Excellent — near-optimal for this criterion |

**Example scoring for Hindu-Arabic decimal:**

| Dimension | Score | Justification |
|-----------|-------|---------------|
| D1 Learnability | 3 | Achievable but requires years of instruction; place-value is a known bottleneck [@fuson1990conceptual] |
| D2 Expressiveness | 4 | Handles integers, fractions, negatives; requires scientific notation for extremes |
| D3 Computational Efficiency | 4 | Efficient algorithms exist; large multiplication table (10×10) |
| D4 Error Resistance | 2 | Single-digit transcription errors undetectable; no structural redundancy |
| D5 Fraction Quality | 2 | 1/3 = 0.333... repeating; sparse termination |
| D6 Cognitive Coherence | 3 | Recruits multiple metaphors; place-value/container schema conflicts with number-line/motion schema |
| D7 Cross-Cultural | 3 | Performs well in WEIRD populations; cross-cultural evidence is limited |
| D8 Extensibility | 4 | Well-extended (scientific notation, complex numbers); modality-dependent |

This scoring is provisional and subject to empirical calibration [speculative].

---

## 4. Prior Art and Gap Analysis

### 4.1 What Exists

The Phase 1 due diligence report identified four literature clusters that partially address numeral evaluation:

1. **Cognitive neuroscience of number:** Dehaene's triple-code model [@dehaene2011number], Nieder's neurobiological framework [@nieder2019brain], and Butterworth's mathematical brain [@butterworth1999mathematical] explain *how* the brain processes numbers but not *which* numeral systems optimise this processing.

2. **Historical/structural typology:** Chrisomalis [@chrisomalis2010numerical; @chrisomalis2020reckoning] and Cajori [@cajori1928history] document structural diversity exhaustively. Chrisomalis explicitly resists normative evaluation; his framework is descriptive, not prescriptive.

3. **Semiotic analysis:** Rotman [@rotman1987signifying], Grosholz [@grosholz2007representation], Duval [@duval2006cognitive], and Sfard [@sfard2008thinking] analyse the semiotic and discursive functions of mathematical notation. These analyses are rich but not operationalised as evaluation criteria.

4. **Human factors and error analysis:** Cohen [@cohen2007medication] and Reason [@reason1990human] document numeral-related errors in safety-critical contexts. Bennett & Flach [@bennett2011display] provide design principles for displays. These are domain-specific and not integrated with cognitive or historical analysis.

5. **Cross-cultural evidence:** Dehaene et al. [@dehaene2008log] and Pica et al. [@pica2004exact] demonstrate that numerical cognition varies across cultures. Saxe [@saxe2012cultural] and Ascher [@ascher1991ethnomathematics] document numeral system diversity across cultures. Overmann [@overmann2019material] examines the materiality of numeral representations.

### 4.2 What Is Missing

No existing framework:

1. **Integrates** cognitive, historical, semiotic, and human-factors perspectives into a single evaluation rubric.
2. **Quantifies** trade-offs between competing desiderata.
3. **Makes falsifiable predictions** about which numeral system designs will perform better on specific criteria.
4. **Provides design heuristics** for constructing novel numeral systems with specified performance profiles.

NUMERATA proposes to fill this gap [my conjecture � the framework\x27s efficacy has not yet been empirically demonstrated].

---

## 5. Edge Cases and Hidden Assumptions

### 5.1 Assumptions the Framework Must Avoid

The Phase 1 hidden assumptions compendium (WP1.1.3) identified six pervasive assumptions in existing numeral system analysis:

| Assumption | Status | Treatment in NUMERATA |
|------------|--------|----------------------|
| **Teleological** (Hindu-Arabic is the endpoint) | Rejected | Non-teleological: each system evaluated on its own terms [@chrisomalis2010numerical] |
| **Universalist** (number cognition is culturally invariant) | Partially rejected | Cross-cultural evidence incorporated as D7 |
| **Decimal bias** (base-10 is naturally optimal) | Rejected | Base treated as a free parameter to be evaluated |
| **Glyph-value conflation** (glyph = value) | Rejected | Following SR: glyph identity and positional value are separate dimensions |
| **Learning primacy** (initial learnability is the master criterion) | Rejected | Learnability is D1 among D1--D8; no master criterion |
| **Fixed base** (systems have exactly one base) | Rejected | Mixed-radix systems are incorporated |

### 5.2 Edge Cases

The framework must handle: zero (cardinal vs. positional), negative numbers, non-integer values, very large and very small magnitudes, ambiguous representations, and modality-specific constraints (tactile, auditory, machine-readable). The edge case compendium (WP1.1.3) provides a conformance test suite for any evaluation framework.

### 5.3 Stress-Test Scenarios

To verify that the framework does not overfit to standard use cases, we propose stress-test scenarios: non-human anatomies (12-fingered users), extreme timescales (10,000-year nuclear warning signs), sensory modalities (blind users, tactile numerals), developmental extremes (4--7-year-old learners), neurodiversity (dyscalculic users), and real-time safety-critical contexts (aviation, medical dosing). A framework that cannot address these scenarios has not achieved sufficient coverage [speculative].

---

## 6. Falsifiable Predictions

The framework makes the following testable predictions. Each is labelled with its certainty calibration.

### 6.1 Metaphor Alignment Predictions

**P1:** Learners primed with distinction-based explanations (Spencer-Brown) will achieve faster mastery of place-value in positional systems than learners primed with collection-based explanations [speculative].

*Disconfirmed if:* A controlled experiment with matched groups shows no significant difference in place-value assessment scores between distinction-primed and collection-primed conditions.

**P2:** Numeral systems with high cognitive coherence (single dominant metaphor, no schema interference) will produce fewer systematic errors than multi-metaphor systems during the first 100 hours of instruction [speculative].

*Disconfirmed if:* Error rate comparison between binary (high coherence) and Hindu-Arabic (multi-metaphor) shows no significant difference in systematic error rates when controlling for base complexity.

### 6.2 Zero Representation Predictions

**P3:** A dual zero-glyph system (distinct glyphs for cardinal zero and positional zero) will reduce zero-related errors in arithmetic learning compared to a single zero-glyph system [speculative].

*Disconfirmed if:* Learners using dual zero glyphs show no significant reduction in zero-related errors compared to single-glyph controls, or if the additional glyph cost outweighs the disambiguation benefit.

### 6.3 Cross-Cultural Predictions

**P4:** Numeral systems that recruit the culturally dominant embodied metaphors of a population will show faster initial learning in that population than systems that recruit non-dominant metaphors [established — consistent with Lakoff & N\'{u}\~{n}ez's theory and cross-cultural findings [@dehaene2008log]].

*Disconfirmed if:* A cross-cultural study finds no interaction between metaphor recruitment and cultural background in learning outcomes.

### 6.4 Error Detection Predictions

**P5:** Numeral systems with structural redundancy (e.g., Roman numerals' multi-character structure, Cistercian geometric constraints) will show higher error detection rates in transcription tasks than non-redundant systems (e.g., Hindu-Arabic) [speculative].

*Disconfirmed if:* Error detection experiments show no significant difference between redundant and non-redundant systems when controlling for familiarity.

---

## 7. Design Heuristics

From the framework, we derive preliminary design heuristics for novel numeral systems:

### H1: Commit to a Cognitive Schema
Choose a primary embodied metaphor and make the notational structure congruent with it. If the system is positional, make the container schema explicit; if additive, make the collection schema explicit. Avoid implicit mixing.

### H2: Make the Base Visible
Following Silent Radix insights, make the structure of positional distinctions explicit rather than relying on memorised conventions. A numeral system should reveal its own logic.

### H3: Build in Redundancy for Error Detection
Provide structural redundancy that enables error detection without requiring external check digits. Geometric constraints (Cistercian), parity (binary), or multi-character structure (Roman) are examples.

### H4: Optimise Base for the Dominant Fraction Domain
If the system will primarily represent fractions with denominators 2, 3, 4, choose base-12. If integers dominate, base-10's compatibility advantage may outweigh fraction costs. Domain-specific optimisation beats global optimisation.

### H5: Design for the Cognitive Floor
Assume the least-capable user, not the expert. What is the minimum cognitive apparatus needed to use this system? The gap between this floor and typical adult capability is the system's accessibility margin.

### H6: Separate Cardinal and Positional Zero
For educational systems, consider distinct glyphs for "zero as quantity" and "zero as placeholder." The cognitive cost of an additional glyph may be offset by reduced conceptual confusion.

---

## 8. Limitations

This framework has known limitations:

1. **Empirical calibration gap.** The scoring rubric (§3.3) is provisional. Empirical calibration requires controlled experiments that have not yet been conducted. Most dimension scores reflect theoretical analysis, not measured performance [speculative].

2. **Western cognitive science bias.** The cognitive foundations draw primarily on Western research traditions. While cross-cultural evidence is incorporated as a dimension (D7), the framework's own cognitive assumptions may reflect WEIRD biases.

3. **Scope boundary.** The framework evaluates human-facing numeral representations, not machine representations or the algebraic properties of number systems themselves. The boundary between these concerns is fuzzy, and some evaluative criteria (e.g., computational efficiency) depend on both.

4. **Value pluralism.** The framework identifies trade-offs but does not resolve them. There is no "optimal" numeral system — only systems optimal for specific criteria in specific contexts. This is a feature, not a bug, of the non-teleological approach.

---

## 9. Conclusion

NUMERATA proposes a multi-axis framework for evaluating numeral systems across cognitive, educational, and design dimensions. Building on the QNFO Silent Radix programme's formal foundation, the framework synthesises cognitive science, notation history, semiotics, and human factors into eight evaluative dimensions with identified trade-offs.

The Phase 1 analysis establishes that: (a) no existing framework integrates all three domains; (b) the framework makes empirically testable predictions; and (c) design heuristics can be derived from the evaluation criteria.

The next phases (Phase 2: Empirical Design, Phase 3: Prototyping) will operationalise these dimensions and test the framework's predictions through controlled experiments and prototype numeral system design.

---

## 10. References

See `refs.bib` for complete bibliography.

---

## Appendix A: Deliverable Cross-Reference

| Deliverable | File | Key Contribution |
|-------------|------|------------------|
| WP0.1 | `phase0-foundations/WP0.1-embodied-metaphors.md` | Metaphor recruitment profiles for 8 numeral system classes |
| WP0.2 | `phase0-foundations/WP0.2-distinction-vs-containment.md` | Distinction/containment axis; cognitive coherence concept |
| DD-LIT-REPORT | `phase1-critical-analysis/DD-LIT-REPORT.md` | QNFO cross-reference (10 SR papers); external literature (27 papers); gap analysis |
| WP1.1.3+WP1.3 | `phase1-critical-analysis/WP1.1.3-WP1.3-edge-cases-and-assumptions.md` | Edge case catalog; 6 hidden assumptions; stress-test scenarios |
| WP1.3.2 | `phase1-critical-analysis/WP1.3.2-numeral-taxonomy.md` | 9-axis structural taxonomy; 8 evaluative dimensions; scoring rubric |

## Appendix B: QNFO Silent Radix Prior Art

10 QNFO papers identified as prior art. See DD-LIT-REPORT §2.1 for full table. These papers provide formal/logical foundations but do not address cognitive, educational, or design evaluation criteria — the gap NUMERATA fills.
