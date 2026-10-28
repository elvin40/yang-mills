# WG_FULL_VERIFY — independent check of WG_FULL.md (§0–§9)

Date 2026-10-28. Verifier: independent agent (Opus). Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED per priority item; whole proof PAPER-GRADE / NEEDS FIXES / NOT A PROOF.

## Log
- Read WG_FULL.md in full (335 lines).
- Read SOURCES_WG, SOURCES_WG_VERIFY, SOURCES_A1_WALK (§1, §4–§9), SOURCES_A1_WALK_VERIFY, SOURCES_A1_KERNEL §1, §5, §8.
- Consumer forms: CMP 116 (1.7) as quoted in SOURCES_LOC 2.1 and SOURCES_A3_SIGMA 1.2 prints the walk bound with M_1, not M: "O(1)O(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}exp(−δ_0d(ω,y,y′))". WC_FULL §4 already uses ρ_A := max{ρ_W, ρ_*, cM_1^{−1}}. A2_R2 and A3_SIGMA use only the rate and absolute convergence (Schur sums), not the per-step factor.
- CMP 116 p. 3 [V text l. 108–113]: the walk domains of (1.6) are "unions of connected families containing several cubes from π_k(1), i.e. of the size M1 instead of M". So in the consumer paper Balaban re-runs the CMP 99/109 walk expansions at cube size M_1, and (1.7) carries M_1^{−1/2} per step. The walk step factor is 1/(cube size); the M in Mα_0 is the regularity parameter. WG_FULL uses one letter M for both roles.
