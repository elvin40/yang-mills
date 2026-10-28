# H2_CERTIFY_L13_G1 — Taylor-1 cell certificate in the K̂-adapted frame (fix G1 of H2_CERTIFY_L13)

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_CERTIFY_L13.md (full), H2_CERTIFY_VERIFY.md items 2–3, H2_CERTIFY_P4.md, numerics/h1cert_cell.py, h1cert_drive.py, h1cert_rho1.py, h1cert_launch.sh, h1cert_modal.md, h2_scan.py (qsym, border, schur). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. h1cert_cell.py is not edited. Nothing launched on the box or on Modal.

## Progress log
- Started. Plan: Schur-reduce the bordered system in the frame W = [Q(K), K̂(K)], Q ⊥ K̂ exactly; Taylor-1 models of every per-block term; Oishi–Rump on the 3×3 transverse block only.
- First TM-1 version (numerics/h1cert_cell2.py): centre matches the float ρ_1 (L = 3: 1.759983 vs 1.759984). Cells at the L = 3 argmax: h = 0.01 → 2.12, h = 0.03 → 5.09, h = 0.1 fails. Diagnosis: (a) A is well conditioned (eigenvalues 0.0062, 0.0070, 0.0226 at the L = 13 argmax; Σ‖X∂A‖ = 2.2), so the K̂ leak is gone; (b) the loss is entrywise |·| products with A^{-1} (non-axis-aligned eigenvectors, factor ~14) and the a priori E remainder ½h²Σ|F|(|y|_1/L)² (= 0.125 at L = 13, h = 0.1, against |E| ~ 1). (c) d box sums at N = 5 take 19 s at L = 13.
- Fixes in progress: whitening S = U Λ^{-1/2} of A(K_c) (frame Q S), exact per-block Hessian of E at K_c (remainder ½h²Σ|H| + h³ m3/6), Ẽ = E P, smaller box N with the Hurwitz tail as interval.
- Coordinator (Elvin) added checkpoint requirements for h1cert_drive2.py (atomic per-cell JSON, scan-based skip, deterministic shards, per-subcell JSON, DONE_<mode> marker, SIGKILL resume test).
