# H1_ANALYTIC — an analytic bound ρ_1(j, K) ≤ C_* and (H1_L) without a computer

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_LARGE_L.md, H2_LARGE_L_VERIFY.md, H2_CERTIFY_L13.md §1–§2 and §4, H2_CERTIFY_P4.md, U3_REPAIRS.md §1 (Prop. A), numerics/h1cert_rho1.py, numerics/h2_scan.py (qsym, dgrid). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. Scratch scripts in /tmp only.

Status: in progress. Sections are appended as the work proceeds.

## 0. Plan

ρ_1² L² |b|² = |H b|² splits exactly into a transverse part and a gauge part (H2_CERTIFY_L13 (2.1), with β = σ by P4). I bound the transverse part by "largest fine propagator × coarse energy", and the coarse energy by Prop. A at level ML. The ratio is an explicit elementary function of K. The gauge part is bounded separately.
