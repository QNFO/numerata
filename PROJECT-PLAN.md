# NUMERATA — Project Plan

**Project:** NUMERATA — Numeral System Evaluation Framework
**Version:** 4.0
**Date:** 2026-07-19
**Status:** Phases 0-7 complete (Phase 8 pending) | DOI: 10.5281/zenodo.21439813

---

## 1. Research Question

How should numeral systems be evaluated? What dimensions matter, and what trade-offs exist between competing desiderata?

## 2. Project Architecture

```
NUMERATA/
├── README.md
├── PROJECT-PLAN.md
├── refs.bib
├── phase0-foundations/
│   ├── WP0.1-embodied-metaphors.md
│   ├── WP0.2-distinction-vs-containment.md
│   └── WP0.3-distinction-based-primality.md
├── phase1-critical-analysis/
│   ├── DD-LIT-REPORT.md
│   ├── WP1.1.3-WP1.3-edge-cases-and-assumptions.md
│   └── WP1.3.2-numeral-taxonomy.md
├── phase2-experimental-design/
│   ├── experimental-protocol.md
│   ├── OSF-SETUP.md
│   ├── osf-registrations/ (3 Registered Reports)
│   ├── analysis/ (3 R scripts)
│   └── materials/ (README, stimulus scripts)
├── phase2-executable/
│   ├── meta-analysis-protocol.md
│   └── meta-analysis-results.md
├── phase4-deep-research/
│   └── deep-research-cascade.md
└── phase6-synthesis/
    ├── phase1-synthesis-paper.md
    └── phase1-synthesis-paper.pdf
```

## 3. Phase Table

| Phase | Name | Deliverables | Status | Completed |
|-------|------|-------------|--------|-----------|
| 0 | Foundations | WP0.1, WP0.2, WP0.3 | Complete | 2026-07-19 |
| 1 | Critical Analysis | DD-LIT-REPORT, WP1.1.3, WP1.3.2 | Complete | 2026-07-19 |
| 2a | Experimental Design | 3 Registered Reports, R scripts, OSF registry | Complete | 2026-07-19 |
| 2b | Executable Research | Meta-analysis (10 studies, 4 axes, MCS=0.875) | Complete | 2026-07-19 |
| 3 | Citation Management | BibTeX verification (27/27 matched) | Complete | 2026-07-19 |
| 4 | Deep Research + Red Team | 9-stage Bayesian cascade (C1: 2.80 EV) | Complete | 2026-07-19 |
| 5 | Synthesis | Phase 1 synthesis paper (23 KB, 14pp PDF) | Complete | 2026-07-19 |
| 6 | Publication | Zenodo v0.3, R2, D1, KG, IPFS, OSF, GitHub | Complete | 2026-07-19 |
| 7 | Dissemination | DNSLink, Buffer (TW + LI), IA (submitted) | Complete | 2026-07-19 |
| 8 | 4-D Distribution | Arweave, Filecoin, multi-pinner | Pending | — |

## 4. Phase 0 — Foundations (Complete)

### WP0.1: Embodied Metaphor Mapping
Maps Lakoff & Núñez's four grounding metaphors (Object Collection, Object Construction, Motion Along a Path, Measuring Stick) onto 8 numeral system classes, producing metaphor recruitment profiles as an evaluative axis.

### WP0.2: Distinction vs. Containment
Positions Spencer-Brown's distinction/containment axis as a complementary evaluative dimension to embodied metaphor theory. Argues that notation choice reflects deeper ontological commitments.

### WP0.3: Distinction-Based Primality (NEW)
Develops a formal Distinction Calculus for Numbers (DCN) where multiplication is counterpoint/canon and primality is metrical irreducibility. Introduces the sunburst notation — a visual numeral representation that makes primality immediately perceptible as single-level radial form. Generates 5 falsifiable cognitive predictions.

## 5. Phase 1 — Critical Analysis (Complete)

- **DD-LIT-REPORT:** 10 QNFO SR papers + 27 external papers. Gap analysis: NOVEL.
- **WP1.1.3:** 12 edge cases + 6 hidden assumptions catalogued.
- **WP1.3.2:** 9-axis structural taxonomy with 8 evaluative dimensions and scoring rubric.

## 6. Phase 2 — Experimental Design (Complete)

### 2a: Pre-Registered Protocols (Human Subjects — Archived)
Three OSF Registered Reports (N=324 between-subjects, N=20 raters, N=60 pilot RCT) with full power analysis, ANCOVA/LMM specifications, and pre-registered falsification criteria. Protocols on Zenodo + GitHub + OSF. NOT EXECUTED — requires human subjects (excluded by LLM-Executable Research Gate).

### 2b: Executable Meta-Analysis (LLM-Executed)
Meta-analysis of 10 cross-notation studies (480+ candidate papers) applying the NUMERATA 8-axis rubric. MCS = 0.875 on tested axes. 5 of 5 Phase 0-1 predictions confirmed. QNFO corpus validated. Qualifies for OSF Preregistration under LLM-Executable Research Gate. Published to GitHub + R2.

## 7. Phase 3 — Citation Audit (Complete)
27 BibTeX entries; 27 matched to citations across all work products. Kaplan (1999) and Seife (2000) resolved (properly cited in DD-LIT-REPORT and WP1.1.3).

## 8. Phase 4 — Deep Research + Red Team (Complete)
9-stage Bayesian cascade (9,119 words, 5 parallel subagent adversaries + independent Stage 8 reviewer). Key findings: C1 (Multi-axis standard, EV 2.80) viable with MCDA upgrade. C2 (Metaphor-consistent, EV 2.63) highest info value but fragile. C4 (Base-12, EV 0.53) and C5 (AI-optimized, EV 0.20) not viable. Red-team: 14/14 checks passed, 3 issues found and fixed.

## 9. Phase 5 — Synthesis (Complete)
23 KB integrated synthesis paper with 14-page PDF. Combines all Phase 0-1 deliverables into unified framework with testable predictions.

## 10. Phase 6 — Publication (Complete)

| Platform | Identifier | Status |
|----------|-----------|--------|
| Zenodo v0.3 | 10.5281/zenodo.21439813 | 4 files + PDF |
| IPFS | bafkreiawg3h4xmm7iiboat3yzpqrj23vmcogs7unieflhvuco6mrdgqpfe | Pinned |
| D1 living-paper | numerata-synthesis-paper | 23,308 bytes |
| KG | project-numerata | ACTIVE, published, IPFS CID set |
| OSF | osf.io/pzgc8/ | 5 nodes, 3 registration drafts (deleted — non-qualifying) |
| GitHub | github.com/QNFO/numerata | 15+ commits, v1.0 tag |
| R2 | qnfo-projects/numerata/ | 10+ files |
| Papers Server | papers.qnfo.org/papers/numerata/ | HTTP 200 |
| DNSLink | _dnslink.numerata.qnfo.org | Resolves to IPFS CID |

## 11. Phase 7 — Dissemination (Complete)

| Channel | Status |
|---------|--------|
| DNSLink (_dnslink.numerata.qnfo.org) | Active |
| Buffer (Twitter @QNFOResearch) | Scheduled |
| Buffer (LinkedIn QNFO Research) | Scheduled |
| Internet Archive | Submitted (async crawl pending) |

## 12. Phase 8 — 4-D Distribution (Pending)

Arweave and Filecoin archival require AR wallet keyfile (not available on this system). To be completed when keyfile is provisioned.

## 13. Key Dependencies (All Resolved)

| Dependency | Source | Status |
|------------|--------|--------|
| Lakoff & Núñez metaphor theory | C1 (core) | Integrated in WP0.1 |
| Spencer-Brown distinction calculus | C2 (core) | Integrated in WP0.2-WP0.3 |
| Chrisomalis structural typology | C3 (core) | Integrated in WP1.3.2 |
| Dehaene number sense | C4 (core) | Cross-validated in Phase 2b |
| QNFO Silent Radix corpus | 10 papers | Cross-validated in Phase 2b |
| Rotman zero semiotics | S1 (supporting) | Integrated in WP1.1.3 |

## 14. Next Steps

1. **OSF Preregistration** — Submit Phase 2b meta-analysis as OSF Preregistration (qualifies under LLM-Executable Research Gate — no human subjects, all public data)
2. **Phase 8** — Complete 4-D distribution when AR wallet keyfile available
3. **Experiment 4** — Design sunburst primality notation experiment (from WP0.3)
4. **Synthesis v2.0** — Integrate Phase 2 executable results + WP0.3 into updated paper
5. **Phase 2a execution** — Human-subject experiments require funding, IRB, and institutional partnerships

## 15. Governance

QNFO Unified License Agreement (QNFO-ULA). All deliverables subject to red-team verification before publication. OSF registrations governed by the Bona Fide Registration Requirements in research skill v2.5.
