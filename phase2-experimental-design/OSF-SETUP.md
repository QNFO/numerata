# NUMERATA — OSF Project Structure

**Project Home:** https://osf.io/pzgc8/
**Created:** 2026-07-19
**User:** Rowan Brad Quni-Gudzinas (6hyj8)
**API:** V2 Bearer Token (Waterbutler file uploads require browser interaction)

## API Test Results

| Capability | Status | Method |
|-----------|--------|--------|
| Token Auth (V2 Bearer) | PASS | GET /v2/users/me/ → 200 |
| Create Nodes | PASS | POST /v2/nodes/ → 201 (5 nodes) |
| Draft Registrations | PASS | POST drafts → 201 (3 registrations) |
| List Schemas | PASS | GET /v2/schemas/registrations/ → 200 |
| File Upload | FAIL | Waterbutler requires cookie session |
| Browser Upload | FAIL | YoBrowser unavailable |

## Components

| Component | ID | URL | Registration Draft |
|-----------|-----|-----|-------------------|
| Project | pzgc8 | https://osf.io/pzgc8/ | — |
| Exp 1: Metaphor | yzma4 | https://osf.io/yzma4/ | https://osf.io/6a5cb661628b3d4b8ce5919e/ |
| Exp 2: Validation | azn7m | https://osf.io/azn7m/ | https://osf.io/6a5cb6623b81a4782ee5919d/ |
| Exp 3: Zero-Glyph | 5wbfq | https://osf.io/5wbfq/ | https://osf.io/6a5cb66222f6d1813ee591b3/ |
| Pre-Reg Hub | jtrh7 | https://osf.io/jtrh7/ | — |

## Files for Browser Upload

Upload these files to each component via drag-and-drop on osf.io:

**Project Root (pzgc8):**
- phase6-synthesis/phase1-synthesis-paper.pdf (83 KB)
- phase6-synthesis/phase1-synthesis-paper.md (23 KB)
- phase2-experimental-design/experimental-protocol.md (22 KB)

**Exp 1 (yzma4):**
- osf-registrations/experiment-1-metaphor.md (15 KB)
- analysis/experiment-1-analysis.R (10 KB)

**Exp 2 (azn7m):**
- osf-registrations/experiment-2-validation.md (12 KB)
- analysis/experiment-2-analysis.R (7 KB)

**Exp 3 (5wbfq):**
- osf-registrations/experiment-3-zero-glyph.md (16 KB)
- analysis/experiment-3-analysis.R (10 KB)

**Hub (jtrh7):** All 3 RRs + all 3 R scripts + materials-inventory.md

## Registration Completion

Navigate to each draft URL and fill the OSF Preregistration form using the corresponding Registered Report document. Submission generates a time-stamped DOI.

## Cross-References

- Zenodo: https://doi.org/10.5281/zenodo.21439813
- GitHub: https://github.com/QNFO/numerata
- Papers: https://papers.qnfo.org/papers/numerata/
- IPFS: https://ipfs.io/ipfs/bafkreiawg3h4xmm7iiboat3yzpqrj23vmcogs7unieflhvuco6mrdgqpfe
