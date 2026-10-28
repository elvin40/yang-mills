# H2_CERTIFY_L13 — the one-step condition (H1_L) at L = 13: measurement, cell certificate, cost

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_CERTIFY.md, numerics/h2cert_proto.py, H2_LARGE_L.md, H2_LARGE_L_VERIFY.md, numerics/h2_scan.py, B2_TWOSTEP.md §1–§2, THEOREM2_PROOF_v4.md (range of L). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. New files: this file, numerics/h1cert_rho1.py, numerics/h1cert_cell.py, numerics/h1cert_launch.sh, numerics/h1cert_modal.md, and data files numerics/h1cert_L{L}_j{j}.json, numerics/h1cert_prof_L{11,13}.npz. Nothing was launched on the box or on Modal.

Sections: §1 statement and float measurement; §2 the cell certificate; §3 validation; §4 cost at L = 13; §5 launchers; §6 ledger.

## 1. Statement and float measurement

Normalization (as H2_CERTIFY §1 and h2_scan.py). One colour. Level-j units. Fine momenta k_l = (K + 2πl)/L, l ∈ {0..L−1}⁴. H_j(K) is the one-step gauge-fixed minimizer map (4L⁴ × 4), fine kernel Δ_{j−1} = Prop. A at M = L^{j−1} (j = 1: Wilson, M = 1; j = ∞: fixed point). H_j(0) = L·e_{l=0} ⊗ 1, so ‖H_j(0)‖ = L.
  ρ_1(j, K) := ‖H_j(K)‖ / L.
So at L = 3 the norm of the matrix is ‖H‖ = L·ρ_1 ≈ 3 × 1.76 = 5.28 at the argmax; ρ_1 itself is ≈ 1.76.

(H1_L): sup_{j≥1} sup_K ρ_1(j, K)² < L.
By the factorization (H2_CERTIFY (1.1)), ρ_2(j, K) ≤ ρ_1(j, K)·max_l ρ_1(j−1, k_l) ≤ sup ρ_1². So (H1_L) implies (H2) with ρ_2 ≤ sup ρ_1² < L. It also gives the one-step C¹ factor ρ_1²/L < 1 of B2_TWOSTEP §2 directly (Theorem C1 then runs with one step; the two-step map is not needed).

Code: numerics/h1cert_rho1.py. It reuses the umklapp Schur pieces of h2_scan.py (qsym, border, schur, dgrid) for one step. Per K only 5×5 matrices appear: S = J − L^{−4}Σ_l E_lY_l, R = L^{−4}Σ_l Y_l^†Y_l, Y_l = A_l^{−1}E_l^†, A_l^{−1} = P diag(d) P + nn^†/|k̂|². Then
  ρ_1(K)² = λ_max(S_c^† R S_c)/L²,  S_c = (S^{−1})_{:,1:4}.
Cost per K: 0.04 s at L = 13 (28561 blocks), after a one-time profile build (36 s at L = 11, 74 s at L = 13, Mac). The cost estimate of H2_CERTIFY §4 (30 s per point at L = 13) was for the arb version; the float scan is ~10³ times cheaper.

Validation (`python h1cert_rho1.py 0 0 --check`, 0.3 s):
- L = 3: ρ_1 equals the outer ρ_1 of h2_scan.py (which uses Δ_out from an inner Schur solve, not Prop. A) to < 10^{−6} at j = 2 (1.726952) and j = ∞ (1.743555). So Prop. A at M = L^{j−1} and the recursive Δ give the same H.
- L = 5: 1.86005 (j = 1) and 1.96296 (j = ∞), against 1.8600 and 1.9630 of the independent dense code (H2_LARGE_L_VERIFY §6).
- L = 3 scan maxima 1.6516 / 1.7360 / 1.7600 (j = 1 / 2 / ∞) reproduce B2_TWOSTEP §2 Remark (a).

Scans. Face diagonal K = (a, a, π, π), 13 points, then a bounded 1D refinement, plus 8 random sorted K, the corner, and 4 off-face probes (numerics/h1cert_L{L}_j{j}.json). For j = ∞ at every L, and j = 1, 2 at L = 13, also a wide search: 330-point sorted 4D grid (8 per axis) + 1000 uniform random sorted K + five 4D Nelder–Mead runs (from the top 3 points and the 2 best off-face points, K_3 < π − 0.05). Every Nelder–Mead run, including the off-face starts, converges to the face diagonal.

| L | ρ_1(j = 1) | ρ_1(j = 2) | ρ_1(j = ∞) | argmax a (j = ∞), K = (a, a, π, π) | corner (π,π,π,π), j = ∞ | √L | margin √L − ρ_1 | sup ρ_1²/L |
|---|---|---|---|---|---|---|---|---|
| 3 | 1.65157 | 1.73596 | 1.75998 | 1.921 | — | 1.732 | −0.028 | 1.033 |
| 5 | 1.86005 | 1.95651 | 1.96296 | 2.187 | 1.94328 | 2.236 | 0.273 | 0.771 |
| 7 | 1.95669 | 2.03009 | 2.03217 | 2.324 | 2.02163 | 2.646 | 0.614 | 0.590 |
| 9 | 2.00853 | 2.06246 | 2.06329 | 2.402 | 2.05631 | 3.000 | 0.937 | 0.473 |
| 11 | 2.03908 | 2.07938 | 2.07977 | 2.449 | 2.07448 | 3.317 | 1.237 | 0.393 |
| 13 | 2.05840 | 2.08929 | 2.08950 | 2.480 | 2.08512 | 3.606 | 1.516 | 0.336 |

Remarks.
- ρ_1 increases with j at fixed K (j = 1 < 2 < ∞), and the gap j = 2 → ∞ is 2·10^{−4} at L = 13 (ratio ≈ L² per level, as for ρ_2). So j = ∞ is the binding level in every measurement. This is measured, not proved; the certification does not use it.
- Increments in L (j = ∞): 0.203, 0.069, 0.031, 0.016, 0.010. They fall roughly like L^{−2}–L^{−3}; a limit ≈ 2.10–2.11 is consistent. ρ_1(9, ∞) = 2.06329 is close to ρ_2(3, ∞) = 2.06332 (tower heuristic of H2_LARGE_L §5), not equal.
- (H1_L) holds numerically for every L ≥ 5, with the measured margin 0.27 (L = 5), 1.24 (L = 11), 1.52 (L = 13). At L = 13: sup ρ_1² = 4.366 < 13, so the implied bound ρ_2 ≤ 4.37 has margin 8.6 against L. These are lower estimates of a sup (grid + local search), not certificates.
- The corner stays below the face peak by 0.004–0.02, and the best off-face grid point by ~0.005. No competing maximum was found.
