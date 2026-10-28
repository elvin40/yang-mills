# H2_CERTIFY_L13_G1_VERIFY — pre-launch verification of the G1 certifier

Written 2026-10-27 (Claude, Opus 5.5). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. Certifier files not edited. Nothing launched on the box.

## 1. Read G1 note, launcher, driver
- Driver: atomic write (tmp + fsync + os.replace), skip-if-done from disk, shard idx % n, children X_k. Matches §4 of the G1 note.
- First observations (to check): (i) a cell FAILED at depth dmax is terminal, so DONE_<mode> is written even with FAILED cells; DONE means "finished", not "certified". (ii) Any Exception in cell_bound2 gives status split; a systematic exception would bisect every cell to depth 3 (4,096 leaves per top cell). (iii) The launcher has no restart loop: a shard killed by the cgroup OOM killer is not rerun; the for-loop then goes to the next mode.

## 2. Read h1cert_cell2.py (all 519 lines) — first-pass audit notes
- TM product/recip, TK product/recip, TP Cauchy majorants, phase/sq remainders, d second-derivative bound 2KA + 8KB + 40KC, Oishi–Rump remainder, whitening algebra, vertex convexity: derivations re-done by hand, all correct (details in §4).
- New suspect (not in G1 note): the frame Q'† rows K̂_4 e_μ − K̂_μ e_4 degenerates when K̂_4 → 0 (Q' becomes rank 1). Cells with K_4 ∈ [0, 2h] touch K_4 = 0. All G1 tests used K_4 ≥ 1.5 (pilot K_4 = 3.12; random K sorted, so K_4 is the largest). In the box domain 1/20 of top cells (8,000 per mode at h = 0.08) have K_4 ∈ [0, 0.16]. To test in §3.
- lam_up: float t I − Gm formed in float before arb; rounding covered by the final EPS·4·‖mj‖ term. Sylvester in arb is the certificate; the float shift is a guess only. Rigorous.
- After whitening, inv_or receives nR = ‖S‖²‖R_A‖_F and ignores the EPS rounding terms that SH @ A @ S adds to A.r. Size ~1e-16 relative. Not blocking; P2-accounting gap.

## 3. (B) samplers on pilot cells; K_4-small frame test
- Scratch script numerics/h1cert_verify/sample_check.py: float ρ_1 (h1cert_rho1.rho1) at centre + 16 vertices + 2,000 uniform points; asserts all ≤ ub.
- Pilot t0 (3.12)⁴: ub 2.3278, sample max 2.0853, all ≤ ub. t2 (2.48, 2.48, 3.12, 3.12): ub 2.3548, max 2.0895, all ≤ ub. t9 (0.24, 0.24, 3.12, 3.12): ub 1.9320, max 1.8820, all ≤ ub (slack 0.050).
- Random grid cells (seed 7, h = 0.08, j = ∞), cell_bound2: (2.96, 2.0, 2.16, 2.8) → 2.3695 ok. (1.84, 2.48, 2.64, 0.72) → 13.56 (not certified).
- Frame test, same K with small K_4: K_4 = 0.24 → fail (η = 3.0); K_4 = 0.08 → fail (η = 19.3). Same point permuted, (0.08, 1.84, 2.48, 2.64) → 2.0618 ok.
- CONFIRMED BLOCKER for DOMAIN=box: the Q' frame pivots on axis 4; when |K̂_4| ≪ |K̂| the frame is ill-conditioned and η ≥ 1. The cells with K_4 ∈ [0, 0.16] touch K_4 = 0 and cannot certify at any depth (they bisect to depth 3 = 4,369 cell evaluations each, then FAILED). In the sorted chamber K_4 = max_μ K_μ, so the frame conditioning is ≤ ~2 away from K = 0.
- Samplers on the 2 extra cells: (2.96, 2.0, 2.16, 2.8) ub 2.3695, max 2.0684 (a vertex); (0.08, 1.84, 2.48, 2.64) ub 2.0618, max 1.8982 (a vertex). All 5 × 2,017 points ≤ ub. (B) passes: no sample above any certified bound.

## 4. Near-origin probe, sorted cells, h = 0.08, j = ∞ (scratch near0_probe.py)
- near0 (cell_bound2 returns None): idx (0,0,0,0), (0,0,0,1), (0,0,1,1).
- fail: (0,0,0,2) η 5.5; (0,0,0,4) ub 9.83; (0,1,1,1) η 35; (1,1,1,1) η 22; (1,1,2,2) η 3.1; (0,3,3,3) ub 441.
- ok: (0,0,0,8) = (0.08, 0.08, 0.08, 1.36) → 1.659.
- So the region that fails at h = 0.08 is much larger than the near0 set: up to |K|_∞ ≈ 0.7 at least. These cells bisect. Next: does bisection to h = 0.01 certify them?
- Bisection probes (j = ∞): (0.04,0.04,0.04,0.76) h 0.04 → 1.335 ok; (0.12,0.6,0.6,0.6) h 0.04 → 1.859 ok; (0.28)⁴ h 0.04 → 225 fail; (0.26)⁴ h 0.02 → 2.656 ok; (0.25)⁴ h 0.01 → 1.168 ok; (0.41)⁴ h 0.01 → 1.066; (0.07,0.07,0.07,0.73) h 0.01 → 1.030.
- So near the origin the certifiable radius shrinks roughly like h ∝ |K|; depth 3 (h = 0.01) certifies down to |K|_∞ ≈ 0.25 on the diagonal. Inside that, cells end near0 or FAILED. In the sorted chamber this is ~O(10–100) top cells, an acceptable cost. In the box domain the K_4 ≈ 0 row (8,000 top cells) never certifies (A singular at K̂_4 = 0).
