# NUMERATA — OSF Project Structure

**Project Home:** https://osf.io/pzgc8/
**Created:** 2026-07-19
**User:** Rowan Brad Quni-Gudzinas (6hyj8)
**API:** V2 Bearer Token only
**Policy:** ALL resources public by default. API-only — no manual browser interaction. Files linked externally (Zenodo/GitHub/IPFS), not uploaded.

## Red-Team Verification (2026-07-19)

| Check | Result |
|-------|--------|
| All 5 nodes public | [PASS] — pzgc8, yzma4, azn7m, 5wbfq, jtrh7 all public=true |
| External links in descriptions | [PASS] — all nodes reference github.com/QNFO/numerata |
| Registration drafts | [PASS] — 3 drafts created with OSF Preregistration schema |
| Zenodo DOI resolves | [PASS] — https://doi.org/10.5281/zenodo.21439813 → HTTP 200 |
| Papers server | [PASS] — https://papers.qnfo.org/papers/numerata/ → HTTP 200 |
| GitHub repo | [PASS] — https://github.com/QNFO/numerata |
| Token stored redundantly | [PASS] — 5 locations (.osf_token, env var, WinCM, keys.json, GitHub secrets) |

## Components

| Component | ID | URL | Registration Draft |
|-----------|-----|-----|-------------------|
| Project | pzgc8 | https://osf.io/pzgc8/ | — |
| Exp 1: Metaphor | yzma4 | https://osf.io/yzma4/ | https://osf.io/6a5cb8c33e4c18cee8e591e9/ |
| Exp 2: Validation | azn7m | https://osf.io/azn7m/ | https://osf.io/6a5cb8c4b256aec16f4dca74/ |
| Exp 3: Zero-Glyph | 5wbfq | https://osf.io/5wbfq/ | https://osf.io/6a5cb8c4e8fc5acb284dca9a/ |
| Pre-Reg Hub | jtrh7 | https://osf.io/jtrh7/ | — |

## File Access (External Links)

OSF does not host files. All files are available via:

| Source | URL |
|--------|-----|
| Zenodo (canonical) | https://doi.org/10.5281/zenodo.21439813 |
| GitHub | https://github.com/QNFO/numerata/tree/feature/numerata/ |
| IPFS | https://ipfs.io/ipfs/bafkreiawg3h4xmm7iiboat3yzpqrj23vmcogs7unieflhvuco6mrdgqpfe |

## API Capability Matrix

| Capability | Supported | Method |
|-----------|-----------|--------|
| Create nodes | Yes | POST /v2/nodes/ |
| Set public | Yes | PATCH /v2/nodes/{id}/ with public=true |
| Create registration drafts | Yes | POST /v2/nodes/{id}/draft_registrations/ |
| List schemas | Yes | GET /v2/schemas/registrations/ |
| File upload | No | Waterbutler requires cookie session |
| Delete nodes | Yes | DELETE /v2/nodes/{id}/ |
