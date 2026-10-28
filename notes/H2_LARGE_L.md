# H2_LARGE_L — (H2) at L ≥ 5 and a certification plan for all j

Written 2026-10-27 (Claude, Opus 5.5). Read: B2_TWOSTEP.md §1–§6, U3_AW_VERIFY.md §5–§9, UMK_BETA1.md + numerics/umk_beta1.py, U3_GAUSSIAN_RG.md §1–§4, U3_REPAIRS.md §1, §3, §4. Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. New files: this file, numerics/h2_scan.py, numerics/h2_launch.sh, numerics/results/h2_*.{json,npz}.

Sections: §1 code; §2 validation at L = 3; §3 L = 5 results; §4 certification design for all j; §5 L-dependence; §6 ledger.

Target (B2_TWOSTEP §2):
  (H2)  ρ_2 := sup_{j≥2} sup_{K real} ‖(⊕_l H_{j−1}(k_l)) H_j(K)‖ / L² < L.

## 1. Code: numerics/h2_scan.py

One colour (the trivial background is colour-diagonal; the 12×12 symbols of umk_beta1 are three identical 4×4 copies). Units: K in coarse units of level j; k_l = (K + 2πl)/L, l ∈ {0..L−1}⁴.

Identification of H(K) in the umklapp machinery. umk_beta1 inverts the augmented bordered matrix 𝔅 = [[A, E^†],[E, J]], A = ⊕_l(Δ(k_l) + d̂_0d̂_0^†), E_l = L^{−2}[q̂_0(k_l); d̂_0(k_l)^†] (four averaging rows plus one auxiliary row W^†), J = diag(0,0,0,0,1). With Y_l = A_l^{−1}E_l^† and S = J − Σ_l E_lY_l:
  𝔅^{−1} = diag(A^{−1}, 0) + Z S^{−1} Z^†,  Z = [−Y; 1].
The original bordered matrix (aw_verify `solve`) is the Schur complement of the auxiliary row, so its inverse is the corresponding block of 𝔅^{−1}. Hence
  H(K)_l = −Y_l (S^{−1})_{:,1:4}   (4×4 per l),   Δ_out(K) = −(S^{−1})_{1:4,1:4}.
So the one-step minimizer is the "fine × averaging-row" block of 𝔅^{−1}, and the next-level symbol is minus its "averaging × averaging" block. Both come out of one 5×5 inversion per K.

Two-step norm via a Gram matrix. ‖H_{(2)}(K)‖² = λ_max(Σ_l H_{j,l}(K)^† G_{j−1}(k_l) H_{j,l}(K)), with G_{j−1}(κ) := H_{j−1}(κ)^†H_{j−1}(κ) = (S^{−1})_{:,1:4}^† (Σ_{l′} Y_{l′}^†Y_{l′}) (S^{−1})_{:,1:4}. So per K: L⁴ inner solves at κ = k_l (each with L⁴ umklapps) give G_{j−1}(k_l) and Δ_{j−1}(k_l); the outer solve with fine blocks Δ_{j−1}(k_l) gives H_j(K). Cost L⁸ 4×5 blocks per K, no matrix larger than 5×5.

Fine kernel of the inner step without inversions. The inner fine kernel is Δ_{j−2} = Δ_M, M = L^{j−2} (M = 1 is Wilson, M = ∞ the fixed point). By U3_REPAIRS Prop. A, Δ_M = [P_T diag(d^M) P_T]^{−1} on T, Δ_M k̂ = 0. So A^{−1} = P_T diag(d^M) P_T + nn^†/|k̂|², n = k̂/|k̂| (scales of Δ and of the ghost drop out of H and Δ_out; zero ghost energy, U3_AW_VERIFY §3). The inner-inner momenta (K + 2πm)/L², m ∈ {0..L²−1}⁴, form a tensor grid, and d^M is separable after 1/|q̃|² = ∫_0^∞ e^{−t|q̃|²} dt:
  d^M_μ = ∫_0^∞ dt g(k_μ, t) Π_{ν≠μ} f(k_ν, t),  f = Σ_n σ² e^{−tq̃_n²},  g = Σ_n σ⁴ e^{−tq̃_n²}
(σ, q̃ as in Prop. A; n over M values, or |n| ≤ 200 for M = ∞). Trapezoid in s = log t, step 0.5. The 4D grid of d is then a matrix product of 1D tables. This makes every level j equally cheap: j = 3, 4, … and j = ∞ cost the same as j = 2.

Speed (Mac): 0.5 s per K at L = 5, 6 s at L = 7, 43 s at L = 9; scaling L⁸ gives ~3.5 min (L = 11), ~14 min (L = 13), ~45 min (L = 15). Time is split between batched 4×5 block algebra and the L⁴ FFTs of q̂_0 (one per inner κ). The order-0 averaging profile (umk_beta1.avg_profile at p = 0) is built once per L (10 s at L = 7, 9) and cached.

Scan. Hypercubic reduction (sort |K_μ|; invariance checked at L = 5 to 10^{−14} under a permutation with two sign flips). Face grid K = (a, b, π, π), 0 < a ≤ b ≤ π, 7 points per axis (28 points); optional sorted 4D grid; Nelder–Mead on the face from the best point; four probes off the face (K_3 or K_3, K_4 moved by 0.15, 0.3). Every K value is written to results/h2_L{L}_j{j}.json at once; a rerun replays from the cache.

## 2. Validation at L = 3

The L = 3 reference values come from aw_verify (dense bordered matrix built from ym_momentum.Step, real (0.4) row, Prop. A truncated at lmax ≤ 6). h2_scan.py shares no code with it except the umk_beta1 averaging profile, which umk_beta1 had checked against the JAX Jacobian of ym_oneloop to 5·10^{−14}.

| quantity | h2_scan.py | reference (B2_TWOSTEP §4) |
|---|---|---|
| ρ_2, j = 2, at (2.215, 2.215, π, π) | 2.008567 | 2.00857 (refined) |
| ρ_2, j = 3, at (2.374, 2.374, π, π) | 2.056007 | 2.05601 |
| ρ_2, j = ∞, at (2.403, 2.403, π, π) | 2.063320 | 2.06336 (lmax 5), 2.06377 (lmax 2) |
| scan max j = 2 / 3 / ∞ | 2.008567 / 2.056007 / 2.063320 | 2.00857 / 2.05601 / 2.06336 |
| argmax j = 2 / 3 / ∞ | (2.212, 2.221, π, π) / (2.372, 2.376, π, π) / (2.404, 2.405, π, π) | (2.215, 2.215, π, π) / (2.374, 2.374, π, π) / (2.403, 2.403, π, π) |

The j = ∞ value differs from the lmax = 5 reference by 4·10^{−5}. That is inside the reference's own truncation spread (lmax = 2…5 gives 2.06329–2.06366). h2_scan sums |n| ≤ 200 per direction. Quadrature check: step 0.5 vs 0.25 in s changes ρ_2 by 1.3·10^{−8}. Scan at L = 3: 28-point face grid, 126-point sorted 4D grid (n4 = 6), Nelder–Mead, four off-face probes; 4–9 s per j. No 4D grid point exceeds the face maximum. `python h2_scan.py --check` reruns the two point checks (assert to 2·10^{−3}).

Extra level at L = 3 (point value at (2.40, 2.40, π, π)): j = 4 gives 2.06248. So ρ_2(∞) − ρ_2(j) = 0.0548, 0.0073, 0.0008 for j = 2, 3, 4. Successive ratios 7.5 and 8.7, against L² = 9.

## 3. Results at L = 5 (Mac) and probes at L = 7, 9

L = 5 scan: 28 face points, 70-point sorted 4D grid (n4 = 5), Nelder–Mead (30 evaluations), four off-face probes; 60–100 s per j.

| L | j | ρ_2 (scan max) | argmax K | ρ_2/L | ρ_1 at argmax | ρ_1 max (refined) |
|---|---|---|---|---|---|---|
| 3 | 2 | 2.00857 | (2.212, 2.221, π, π) | 0.670 | 1.7269 | 1.7360 (verifier) |
| 3 | 3 | 2.05601 | (2.372, 2.376, π, π) | 0.685 | 1.7417 | 1.7569 (verifier) |
| 3 | ∞ | 2.06332 | (2.404, 2.405, π, π) | 0.688 | 1.7435 | 1.7600 (verifier) |
| 5 | 2 | 2.09828 | (2.493, 2.494, π, π) | 0.420 | 1.9505 | 1.9565 at (2.167, 2.167, π, π) |
| 5 | 3 | 2.10752 | (2.539, 2.546, π, π) | 0.422 | 1.9559 | — |
| 5 | 4 | 2.10790 | (2.539, 2.546, π, π) | 0.422 | 1.9562 | — |
| 5 | ∞ | 2.10792 | (2.539, 2.546, π, π) | 0.422 | 1.9562 | 1.9630 at (2.187, 2.187, π, π) |
| 7 | ∞ | 2.11309 (diagonal search only) | (2.565, 2.565, π, π) | 0.302 | 2.0296 | ≥ 2.0321 at (2.3, 2.3, π, π) |
| 9 | 2 | ≥ 2.1104 (one point) | (2.3, 2.3, π, π) | ≤ 0.234 used only as a lower estimate | 2.0620 | — |

Convergence in j at L = 5: ρ_2(∞) − ρ_2(j) = 9.6·10^{−3}, 4.0·10^{−4}, 1.6·10^{−5} (j = 2, 3, 4). Ratios 24 and 25, against L² = 25. So the level dependence is the L^{−2} per level of U3 Theorem 4.1, and at L = 5 the j = 2 value is already within 0.5% of j = ∞.

Shape. At L = 5 the maximum is again on the face K_3 = K_4 = π, on the diagonal K_1 = K_2, now at ≈ 2.54. The off-face probes are lower by 5·10^{−3} (shift 0.15) and the 4D grid is lower everywhere. Along the diagonal at L = 7 the function is very flat: 2.1102–2.1131 for K_1 = K_2 ∈ [2.3, 3.1].

Measured status of (H2) at L = 5: ρ_2 ≤ 2.108 (grid + local search, j = 2, 3, 4, ∞), threshold 5, margin 58%. q_1 = ρ_2²/L² = 0.178 (L = 3: 0.473).

One-step bound at L ≥ 5. ‖H_{(2),j}‖ ≤ max_l‖H_{j−1}(k_l)‖·‖H_j(K)‖ ≤ L²ρ_1². So ρ_1² < L implies (H2). At L = 3 this fails: ρ_1² = 3.10 > 3 (B2_TWOSTEP §2 Remark (a)). At L = 5 it holds: ρ_1² ≤ 1.9630² = 3.853 < 5. At L = 7: ρ_1² ≈ 2.032² = 4.13 < 7 (diagonal only). So at L ≥ 5 the one-step C¹ recursion of B2_TWOSTEP (2.2), with factor ρ_1²/L = 0.77 (L = 5) and ≈ 0.59 (L = 7), already contracts. The two-step map is needed only at L = 3. For certification at L ≥ 5 this replaces the L⁸-per-K two-step map by the L⁴-per-K one-step map.

