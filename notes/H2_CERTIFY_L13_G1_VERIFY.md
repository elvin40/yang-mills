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
