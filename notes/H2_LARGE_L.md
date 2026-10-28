IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
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
| 9 | 2 | ≥ 2.1104 (one point, lower estimate) | (2.3, 2.3, π, π) | ≥ 0.234 | 2.0620 | — |

Convergence in j at L = 5: ρ_2(∞) − ρ_2(j) = 9.6·10^{−3}, 4.0·10^{−4}, 1.6·10^{−5} (j = 2, 3, 4). Ratios 24 and 25, against L² = 25. So the level dependence is the L^{−2} per level of U3 Theorem 4.1, and at L = 5 the j = 2 value is already within 0.5% of j = ∞.

Shape. At L = 5 the maximum is again on the face K_3 = K_4 = π, on the diagonal K_1 = K_2, now at ≈ 2.54. The off-face probes are lower by 5·10^{−3} (shift 0.15) and the 4D grid is lower everywhere. Along the diagonal at L = 7 the function is very flat: 2.1102–2.1131 for K_1 = K_2 ∈ [2.3, 3.1].

Measured status of (H2) at L = 5: ρ_2 ≤ 2.108 (grid + local search, j = 2, 3, 4, ∞), threshold 5, margin 58%. q_1 = ρ_2²/L² = 0.178 (L = 3: 0.473).

One-step bound at L ≥ 5. ‖H_{(2),j}‖ ≤ max_l‖H_{j−1}(k_l)‖·‖H_j(K)‖ ≤ L²ρ_1². So ρ_1² < L implies (H2). At L = 3 this fails: ρ_1² = 3.10 > 3 (B2_TWOSTEP §2 Remark (a)). At L = 5 it holds: ρ_1² ≤ 1.9630² = 3.853 < 5 (levels j = 2, ∞ refined; j = 1, the Wilson-fine step, not measured at L = 5; at L = 3 it is the smallest level, 1.65). At L = 7: ρ_1² ≈ 2.032² = 4.13 < 7 (diagonal only). So at L ≥ 5 the one-step C¹ recursion of B2_TWOSTEP (2.2), with factor ρ_1²/L = 0.77 (L = 5) and ≈ 0.59 (L = 7), already contracts. The two-step map is needed only at L = 3. For certification at L ≥ 5 this replaces the L⁸-per-K two-step map by the L⁴-per-K one-step map.

## 4. Certification design for (H2), all j ≥ 2

Notation. 𝔅_j(K) = [[A_j, Q̃^†],[Q̃, 0]], A_j = ⊕_lΔ_{j−1}(k_l) + DD^† (U3_REPAIRS O6). H_j = −[𝔅_j^{−1}]_{f,c} (fine rows, averaging columns). a_j(K) := min of A_j on ker Q̃(K). δ_m := sup_k‖Δ_m(k) − Δ_∞(k)‖ (one normalization for all m, the S_MΔ_0 one). ρ_1 := sup_{j,K}‖H_j‖/L. R_∞ := sup_K‖H_{(2),∞}(K)‖/L².

### 4.1 Tail j ≥ j_0: perturbation around j = ∞

Step 1 (one-step map). 𝔅_j − 𝔅_∞ = diag(⊕_l(Δ_{j−1} − Δ_∞)(k_l), 0). The resolvent identity 𝔅_j^{−1} − 𝔅_∞^{−1} = −𝔅_j^{−1}(𝔅_j − 𝔅_∞)𝔅_∞^{−1}, restricted to the (f, c) block, gives
  H_j − H_∞ = [𝔅_j^{−1}]_{f,f} (⊕_l(Δ_{j−1} − Δ_∞)(k_l)) H_∞.
By the proof of Lemma E (U3_REPAIRS §3.2, with g = 0), [𝔅^{−1}]_{f,f} is the inverse of A compressed to ker Q̃, so ‖[𝔅_j^{−1}]_{f,f}‖ = 1/a_j(K). Hence
  ε_j := sup_K‖H_j − H_∞‖ ≤ (δ_{j−1}/a_*) · Lρ_1,   a_* := inf_{j,K} a_j(K).   (4.1)
This is sharper than the plain ‖𝔅_j^{−1}‖‖𝔅_∞^{−1}‖ bound: one factor is the constrained Green function 1/a, the other is ‖H_∞‖ itself.

Step 2 (two-step map). H_{(2),j} − H_{(2),∞} = (⊕_l(H_{j−1} − H_∞)(k_l))H_j + (⊕_lH_∞(k_l))(H_j − H_∞). With ‖⊕_lX_l‖ = max_l‖X_l‖:
  ρ_2(j) ≤ R_∞ + (ρ_1/L)(ε_{j−1} + ε_j) ≤ R_∞ + (ρ_1²/a_*)(δ_{j−2} + δ_{j−1}).   (4.2)
Step 3 (rate). Theorem O5 (α = 0): δ_m ≤ C_0 L^{−2m}. So (H2) holds for every j ≥ j_0 if
  (ρ_1²/a_*) C_0 (1 + L^{−2}) L^{−2(j_0−2)} < L − R_∞.   (4.3)
H_j is a rational function of the symbols, but (4.1)–(4.2) need no expansion of it: only the resolvent identity, the coercivity a_*, and the C⁰ rate. No derivative of Δ enters.

Constants in (4.3), and whether they are explicit today.
- R_∞: needs the certified BZ sup of §4.2. Not available.
- ρ_1: same certified computation, one-step map (cheaper). Not available. Measured 1.760 (L = 3), 1.963 (L = 5).
- a_*: O6 (3.9) gives a ≥ 2.3·10^{−10}L^{−20}, explicit. It is useless here: at L = 3 it is 6.6·10^{−20}, against the measured 0.085 (U3_REPAIRS §4, j = 0, 1, 2). A realistic a_* needs its own certified computation: a_j(K) ≥ a_∞(K) − δ_{j−1} (Weyl on ker Q̃), so it reduces to a certified inf_K a_∞ plus finitely many direct levels.
- C_0: existential in O5. For α = 0 it is elementary to make explicit: (4.2) of U3 gives |Δ_M − Δ_∞| ≤ c_0^{−2}|K̂|⁴|S_M − S_∞| (c_0 explicit, Prop. B; c_0^{−2} = (π/2)^{24} ≈ 5·10⁴, crude), and Steps 2–3 of U3 Theorem 4.1 bound |S_M − S_∞| by explicit lattice sums. Not written. Alternative without C_0: certify δ_m directly for each m ≤ m_1 by the separable 1D sums (Prop. A for M = L^m and M = ∞; interval-friendly), and use the explicit-C_0 bound only for m > m_1.

Estimate of j_0 from the measured numbers (L = 3). Inputs: ρ_1² ≈ 3.10, a_* ≈ 0.085 (measured, not certified), margin L − R_∞ ≈ 3 − 2.07 = 0.93 (0.01 reserved for certification slack), δ_m ≈ 1.0·9^{1−m} (U3 §4: 1.007, 0.129, 0.0147 at M = 3, 9, 27, one generic K; I allow a factor 2 for the sup over K). Then (4.2) needs δ_{j−2} + δ_{j−1} < 0.93·0.085/3.10 = 0.0255, i.e. 2·9^{3−j}(1 + 1/9) < 0.0255, i.e. j ≥ 5.03. So j_0 ≈ 6 (j_0 ≈ 5 without the factor 2). With the O6 value of a_* instead: (ρ_1²/a_*) ≈ 4.7·10^{19}, and j_0 ≈ 25.
The bound (4.2) is very lossy. Measured |ρ_2(∞) − ρ_2(4)| = 8·10^{−4} at L = 3, while (4.2) gives 36.5·(δ_2 + δ_3) ≈ 5.2 there: a factor ~6000. The loss comes from three norm inequalities (1/a_*, ‖⊕(H_{j−1} − H_∞)‖, δ as a sup). A sharper tail (for example interval evaluation of ρ_2 with Δ_{j−2}, Δ_{j−1} replaced by interval matrices Δ_∞ ± δ·unit ball) would lower j_0 to 3–4. Not needed if j_0 ≈ 6 is acceptable.
At L = 5 (a_* not measured; assume 0.05): (3.85/0.05)·2·25^{3−j}·(1.04) < 5 − 2.12 gives j ≥ 4.3, so j_0 ≈ 5. Larger L is easier: margin ∝ L, rate L^{−2}.

### 4.2 Certified sup over the BZ at fixed j (j = ∞ and each j < j_0)

Per point (or per small box) of K, an interval enclosure of ‖H_{(2),j}(K)‖. Every input is explicit:
- d^M_μ at the L⁸ inner-inner momenta: finite 1D sums for finite M; for M = ∞ a truncated sum plus an explicit tail (Σ_{|n|>N} σ² ≤ (sin²(θ/2)/π²)·2/N, and σ⁴ similarly), in the separable form of §1 or directly in Prop. A form. The t-integral form is a numerical device; for certification use the direct sum with tail bound.
- q̂_0(k): a trigonometric polynomial with rational weights (1/(L⁴n²) per path family). Exact up to floating point; interval evaluation is direct.
- Linear algebra: only 4×4 and 5×5 inverses (A_l^{−1} is closed form, §1) and one 4×4 Hermitian λ_max per K. Verified inversion (approximate inverse X, bound ‖1 − XS‖ < 1, Neumann) and Weyl bounds suffice. Tools: python-flint (arb) or mpmath.iv; no new theory.
Covering the BZ. Hypercubic symmetry reduces to the sorted chamber 0 ≤ K_1 ≤ … ≤ K_4 ≤ π (1/384 of the BZ).
- Option A (global Lipschitz from A0/O5/O6). B2_TWOSTEP (U2) gives ‖∂_νH_{(2)}‖ ≤ (1 + L)ρ_1η_1, η_1 = b(L)²C_2′(L), with b(L) from O6 (~10^{19} at L = 3) and C_2′ from Cauchy on the A0/O5 strip, whose width η_0 is existential (U3_REPAIRS ledger: "Constants C_α, ρ_1, η_0 exist … not computed"). So no explicit Lipschitz constant exists today, and the one that can be made explicit is ~10^{40}: a grid with that constant is impossible.
- Option B (local mean-value enclosure; recommended). On a box B with centre K_c and half-width r: ‖H_{(2)}(K)‖ ≤ ‖H_{(2)}(K_c)‖ + r·sup_B‖∇_KH_{(2)}‖, with the derivative enclosed in interval arithmetic over B: ∂H = −[𝔅^{−1}(∂𝔅)𝔅^{−1}]_{f,c}, and ∂𝔅 contains L^{−1}∂Δ(k_l) (explicit series, differentiate the Prop. A sum), ∂q̂_0 (trigonometric polynomial), and ∂(DD^†). The true gradient is O(1): along the face ρ_2 changes by ≤ 0.1 over ΔK ≈ 1. With margin 0.93 at L = 3 and a box enclosure overestimating the gradient by a factor ~10, half-width r ≈ 0.05 is enough far from the argmax; adaptive bisection near it. Rough count: (π/0.1)⁴/384 ≈ 2.5·10³ boxes at uniform r = 0.05, each costing a few interval evaluations of L⁸ blocks. At L = 3 (6561 blocks) this is hours on one core. At L = 5 use the one-step map (§3, ρ_1² < L), L⁴ = 625 blocks per K: cheaper still.
- K near 0. Prop. A has d^M ~ |k|^{−2} at the inner-inner point nearest 0, so the interval form degenerates in a ball |K| < r_0. There H_j(0) = L e_{l=0}⊗1 (U3_AW_VERIFY §5), so ρ_2(0) = 1, far below L. Use the analytic (2.7) form of U3_REPAIRS §2 for Δ near 0, or a ball estimate with a derivative bound valid on |K| < r_0.
What is explicit today: c_0, C_1 (Prop. B), b(L), a, s (O6, crude), the finite-M symbols, the averaging row. Not explicit: η_0 and the Cauchy constants of A0/O5, C_0 of O5.1 (explicit-able for α = 0), certified a_*, R_∞, ρ_1.

### 4.3 Levels 2 ≤ j < j_0

Direct certified evaluation as in §4.2, one scan per j. In h2_scan.py every finite level is the same code with M = L^{j−2} (the 1D sums have M terms, so even j = 8 at L = 3, M = 729, costs the same as j = 2). So j < j_0 ≈ 6 means four extra certified scans at L = 3 (j = 2, 3, 4, 5), each like the j = ∞ scan. Measured monotone increase in j (both L) suggests j = ∞ is the binding level, but monotonicity is not proved and the plan does not use it.

## 5. L-dependence

Data (j = ∞ unless noted; sup estimates, uncertified):

| L | ρ_2 | ρ_2/L | ρ_1 (max) | ρ_1²/L |
|---|---|---|---|---|
| 3 | 2.0633 | 0.688 | 1.760 | 1.033 |
| 5 | 2.1079 | 0.422 | 1.963 | 0.771 |
| 7 | ≥ 2.1131 (diagonal of the face only) | 0.302 | ≥ 2.032 | ≥ 0.59 |
| 9 | ≥ 2.1104 (j = 2, one point) | ≥ 0.234 | ≥ 2.062 (j = 2, one point) | ≥ 0.47 |

Prediction. ρ_2(L) is bounded and converges as L → ∞; ρ_2(L)/L falls like ~2.1/L. So the threshold ρ_2 < L gets easier with L, linearly in L.
- Increments: ρ_2 rises by 0.045 from L = 3 to 5 and by ≥ 0.005 from 5 to 7. A fit ρ_c − cL^{−2} through L = 3, 5 gives ρ_c ≈ 2.133. The 5 → 7 increment is smaller than that fit predicts (0.012), so convergence is at least as fast as L^{−2}. I take ρ_2(∞-L) ≈ 2.11–2.14.
- ρ_1 behaves the same way: 1.760, 1.963, 2.032, 2.062 (increments 0.20, 0.07, 0.03, roughly L^{−2}), extrapolated limit ≈ 2.1. So ρ_1²/L → 0 too.
- Mechanism (heuristic, not proved). At fixed coarse K and L → ∞, the one-step minimizer normalized by L converges to the minimizer of the continuum Maxwell form under the unit-cell average constraint (the "blocking from the continuum" map of U3 §3.1, with H(0)/L = 1 fixed). Lattice corrections are O(|k_l|²) = O(L^{−2}), as in U3 Theorem 4.1 Step 2. The two-step map is close to a one-step map with block L² (tower property, up to the inner gauge fixing), so ρ_2(L) ≈ ρ_1(L²) and both tend to the same continuum constant. Numerically: ρ_2(3) = 2.063 against ρ_1(9) ≥ 2.062 (one point). This coincidence is suggestive only.
- Consequence. If ρ_2 stays near 2.1, (H2) holds at L = 13 with margin ~84%, and the one-step condition ρ_1² < L (§3) also holds for every L ≥ 5. Then Theorem C1 of B2_TWOSTEP can use the one-step recursion at L ≥ 5, and the certification needs only the L⁴-per-K one-step map.

What L = 5, 7 (and the box runs) must show for (H2) at L > 11 (Balaban's range):
(i) ρ_2(L) bounded with shrinking increments. Seen: +0.045, then ≥ +0.005. For (H2) to fail at L = 13 the sup must grow by ~11 between L = 7 and 13. The trend excludes that by orders of magnitude, unless a new maximum appears that the face scan cannot see.
(ii) The argmax stays on the face K_3 = K_4 = π near the diagonal, and the coarse 4D grid stays below it. Seen at L = 3, 5 (126- and 70-point 4D grids). At L ≥ 9 the box scan uses only the face plus off-face probes; a new peak elsewhere (for example near the corner (π, π, π, π)) would be missed there. The L = 7 job includes a 35-point 4D grid (n4 = 4) for this reason.
(iii) The j-convergence ratio ≈ L² per level. Seen: 7.5–8.7 at L = 3, 24–25 at L = 5. This keeps j_0 of §4.1 small (≈ 5 at L = 5) and makes j = 2 representative within L^{−2}.
These are measurements, not a proof for L > 11. A proof for all large L would need either a certified run at each L used (cost ∝ L⁸ for the two-step map, L⁴ for the one-step map), or a certified continuum-limit map with an explicit O(L^{−2}) remainder.

## 6. Ledger

Done here.
- C1. numerics/h2_scan.py: ρ_2(L; j) for odd L, any level j ≥ 2 and j = ∞, via the umklapp Schur pieces of umk_beta1 (one colour). H(K) = −Y S^{−1}[:, 1:4] and Δ_out = −S^{−1}[1:4, 1:4] identified in the augmented bordered inverse (§1). Two-step norm via the inner Gram G = H^†H, no L⁸-size matrix. Inner fine kernel by Prop. A in separable t-integral form, so every level costs the same.
- C2. Validation at L = 3 against aw_verify (independent code): ρ_2 = 2.008567 (ref 2.00857), 2.056007 (ref 2.05601), 2.063320 (ref 2.06336 at lmax 5, inside the reference's lmax spread). Hypercubic invariance at L = 5 to 10^{−14}.
- C3. numerics/h2_launch.sh for the box (L = 5, 7, 9 full; L = 11, 13 reduced, j = 2, ∞; L = 15 reduced, j = ∞). Checkpoint per K in results/h2_L{L}_j{j}.json; skip-if-done. Not launched.

Measured (uncertified sup: grid + local search).
- M1. L = 5: ρ_2 = 2.0983, 2.1075, 2.1079, 2.1079 (j = 2, 3, 4, ∞), threshold 5, margin 58%. Argmax (2.54, 2.54, π, π) (j ≥ 3).
- M2. j-convergence ratio ≈ L²: 7.5, 8.7 (L = 3), 24, 25 (L = 5).
- M3. ρ_1 = 1.963 at L = 5 (j = ∞, refined), so ρ_1² = 3.85 < 5: the one-step C¹ factor ρ_1²/L = 0.77 < 1 at L = 5 (it is 1.033 at L = 3). At L = 7, ρ_1 ≈ 2.03 (diagonal).
- M4. L = 7: ρ_2 ≥ 2.1131 on the face diagonal (j = ∞). L = 9: one point, ρ_2 ≥ 2.1104 (j = 2).

Designed, not done.
- D1. Tail j ≥ j_0 by (4.1)–(4.3): ρ_2(j) ≤ R_∞ + (ρ_1²/a_*)(δ_{j−2} + δ_{j−1}). Needs certified R_∞, ρ_1, a_*, and explicit C_0 (or certified δ_m). With measured constants j_0 ≈ 6 at L = 3, ≈ 5 at L = 5. With the O6 coercivity constant j_0 ≈ 25 (unusable in practice).
- D2. BZ sup by interval arithmetic with local mean-value enclosures (Option B). The A0/O5/O6 route (Option A) has no explicit Lipschitz constant today, and the explicit-able one is ~10^{40}.
- D3. For L ≥ 5, certify ρ_1² < L instead of ρ_2 < L (one-step map: L⁴ blocks per K instead of L⁸, 625× fewer at L = 5).

Open / caveats.
- G1. No certification was done. All values are lower estimates of a sup.
- G2. L ≥ 9 not scanned (one point at L = 9). L = 7 only along the face diagonal. The box runs at L ≥ 9 cover the face plus probes only, so an off-face maximum at large L would be missed (§5 (ii)).
- G3. ρ_1 at level j = 1 (Wilson fine kernel) not measured at L ≥ 5; it enters ρ_1 in (4.1) and in the one-step route D3.
- G4. a_* at L = 5 assumed 0.05 for the j_0 estimate; not measured.
- G5. The heuristic ρ_2(L) ≈ ρ_1(L²) and the continuum limit of §5 are not proved.
- G6. The L⁸ cost at L = 15 (~45 min per K on the Mac) limits the box scan to ~26 points per job. A reflection symmetry on the face (K_3 = K_4 = π is fixed by K_3 → −K_3, K_4 → −K_4, and the swap) would cut the inner solves ~8×, but needs the exact unitary action on G in the base-site convention. Not implemented.
- G7. Not independently verified. A verifier should rerun `python numerics/h2_scan.py --check`, recheck §1 (the H and Δ_out blocks, the Gram identity), and recheck (4.1) (the claim ‖[𝔅^{−1}]_{f,f}‖ = 1/a).
