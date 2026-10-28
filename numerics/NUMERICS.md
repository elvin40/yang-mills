# Numerical one-loop increment of one Balaban step (2026-10-27)

Code: `ym_oneloop.py` (SU(2), quaternions, JAX autodiff for local pieces, scipy sparse LU for determinants). Tests: `test_oneloop.py`. Results: `results/*.json` (one file per (n, L, q); skip-if-done).

## 1. What is computed

Fine periodic lattice of side n, block factor L, anchors at (L−1)/2 mod L. Averaging = CMP 109 eq. (0.4): for a coarse bond c = ⟨c−, c+⟩, Ū(c) = exp[ Σ_{x∈B(c−)} L^{−4} |G(c−,x)|^{−1} |G(c+,x′)|^{−1} Σ_{Γ,Γ′} (1/i) log U(Γ ∪ [x,x′] ∪ (−Γ′) ∪ (−c)) ] · U(c), with G(y,x) the family of axis-ordered monotone paths (all permutations of the nonzero directions). Background U_0 = constant abelian flux F = 2πq/n² in the (0,1) plane, σ_3 direction, standard twisted gauge; all (0,1)-plaquettes equal exp(iFσ_3), all others 1 (tested).

Exact statement used (derived 2026-10-27, to be verified independently; the R2 agent was asked to check it):

  Z(V) := ∫ dU δ_Haar(Ū(U)V^{−1}) exp[−A(U)/g²],  V := Ū(U_0),

at one loop (order g⁰ in log Z), with U = e^{iB}U_0, B = B^aσ_a/2:

  log Z(V_F) = const + log det(D_F^T D_F) − ½ log |det Bord_F|,

  D_F λ(b) = λ(x) − Ad_{U_0(b)} λ(y) for b = ⟨x,y⟩, λ vanishing at anchors (residual gauge group),
  Bord_F = [[Δ_F + D_F D_F^T, Q̃_F^T], [Q̃_F, 0]],  Δ_F = Hessian of A at U_0,  Q̃_F = linearization of Ū at U_0.

Derivation: (i) U_0 is an exact stationary point of A (all staples cancel pairwise in a constant abelian field; tested: |∇A| < 1e−15), so the Lagrange multiplier J of Balaban's (1.5) vanishes and the second-order term of the constraint drops; the curvature of the constraint surface contributes only at O(g). (ii) ∫ dB δ(Q̃B) f(B) = det(Q̃Q̃^T)^{−1/2} ∫_W f with W = ker Q̃. (iii) N = im D ⊂ W (gauge covariance of Ū, tested: Q̃D = 0) and ΔD = 0 (gauge invariance, tested). Splitting W = (W∩N^⊥) ⊕ N with Jacobian det(D^TD)^{1/2} and replacing the flat integral along N by the Haar volume of the residual gauge group (V-independent) gives log Z = const − ½ log det(Q̃Q̃^T) + ½ log det(D^TD) − ½ log det(Δ|_{W∩N^⊥}). (iv) det((Δ + DD^T)|_W) = det(Δ|_{W∩N^⊥}) · det(D^TD) because the form Δ + DD^T is block diagonal on (W∩N^⊥) ⊕ N. (v) det(K|_{ker C}) = (−1)^r det[[K, C^T],[C, 0]] / det(CC^T) for a symmetric K positive on ker C and C of full row rank r. Combining, the Q̃Q̃^T factors cancel.

Sign convention: Balaban (1.3) has A_k = −(1/g_k²)A + Σ_j { −β_{j+1}A + [log Z^{(j)}(U) − log Z^{(j)}(1)] + … } with the marginal part of [log Z(U) − log Z(1)] equal to +β_{j+1}(0)·A(U). Hence

  D(F) := log Z(V_F) − log Z(1) = β_1(0) · A_coarse(V_F) + O(F⁴) + finite-size,  A_coarse = Σ_{coarse p} (1 − ½ tr V_p).

β_1(0) > 0 means the coefficient of A decreases after the step, i.e. the coupling grows toward the infrared (asymptotic freedom in Balaban's sign convention, (0.18)).

## 2. Correction to THEOREM2.md §8 check (5): U(1) does NOT give D ≡ 0

The Wilson action is not quadratic. For U(1) the Hessian at plaquette angle θ_p is cos θ_p · (dB)_p², so the one-loop determinant depends on the background through Σ_p log cos θ_p ≈ −½ Σ_p θ_p² = −A_fine(U_0) = −A_coarse(V) (scale invariance in d = 4). So one block-spin step of compact U(1) gives a finite, positive, scheme-dependent increment of order 1 (a tadpole-type finite renormalization of 1/g²: estimate β_1^{U(1)} ≈ (3/2)(1 − L^{−4}) · (fraction of (0,1)-plane modes) in the crude diagonal approximation). The correct abelian check is: the U(1) increments decay with the step index (no log L growth; Σ_j β_j^{U(1)} bounded). The same tadpole-type term is present in SU(2). The universal part is (11N²/12π²) log L in Balaban's units (R2_TELESCOPING.md, verified in R2_VERIFY.md; the earlier 0.0929 log L in THEOREM2.md (R3) used 1/g_B² = N/(2g²) instead of the correct 2N/g²): SU(2), L = 3: 0.408; L = 2: 0.258; L = 5: 0.598. Only the j-dependence, or the L-dependence after modeling the tadpole part, isolates the universal coefficient. THEOREM2.md §8 (5) is therefore wrong as written; the positivity question for large j is untouched by this, but the first-step number mostly measures a lattice artifact.

## 3. Sizes

M = 12 n⁴ fluctuation variables, r = 12 (n/L)⁴ constraints, 3(n⁴ − (n/L)⁴) ghost variables.
Coarse flux quantization: coarse plaquette angle L²F = 2πq/(n/L)². The quadratic regime needs n/L ≥ 4 (n = 12 for L = 3: angle 0.39, 1 − cos = 0.0765 vs ½θ² = 0.0771). n = 6 (coarse side 2) has coarse angle π/2 and is a code-development size only.

## 4. Self-checks passed (n = 6, L = 3, q = 1)

quaternion algebra vs 2×2 matrices; background plaquettes; stationarity 5e−16; Q̃ at U = 1 equals the linear average and kills residual gauge directions; Q̃D = 0 and ΔD = 0 at the nontrivial background; log Z invariant under a random full gauge transformation to 1e−12 (A_coarse invariant to 3e−14); F → −F exact; plane (2,3) equals plane (0,1) to 2e−12; smallest eigenvalue of the Hessian on ker Q̃ = 0.085 > 0 (no Nielsen–Olesen instability at this size).

## 5. Infinite-volume momentum-space code (`ym_momentum.py`, 2026-10-27)

Real-space sparse LU does not scale (9⁴ lattice: 10 GB, > 20 min single-threaded). All operators of one step have range one coarse cell, so their translation-invariant kernels are read off exactly from an interior cell of a 3L lattice, and the one-loop second derivative in a plane-wave background A_2(x) = a cos(p x_1) is a Brillouin-zone average of blocks of size 12L⁴ + 12 (bordered) and 3(L⁴ − 1) (ghost):

  w(p) = ⟨tr(M̂_0(k)⁻¹ M̂''_0(k))⟩_k − 2⟨tr(M̂_0(k+p)⁻¹ T̂_+(k) M̂_0(k)⁻¹ T̂_−(k+p))⟩_k  (per cell, for G with weight +1 and Bord with weight −½),

  β_1(0) = lim_{p→0} w(p) / (L⁴ (1 − cos p)).

Checks passed: on the periodic 6⁴ lattice with L = 2, commensurate p and the unshifted grid, the momentum-space value equals the real-space finite-difference second derivative to 8e−8; a pure-gauge background gives w = −2e−15 (L = 2) and −4e−15 (L = 3, 9⁴, p = 2π/9). The grid average converges exponentially in the grid size Ng (massive block-spin propagator); the shifted grid (m + ½) is used in infinite volume, with Ng = 6, 8, 12 for convergence control.

Normalization check from the verifier (R2_VERIFY.md): the one-loop determinant formula of §1 is confirmed including the exact det(Q̃Q̃^T) cancellation; the ghost domain for the composed k-step transformation is λ vanishing on the level-k centers.

## 6. Results (2026-10-27, corrected normalization)

Normalization error found and fixed: with B = Bᵃσᵃ/2 the plaquette angle in the normalized trace is half the link-angle difference, so d²/da² of the Wilson action per site for A_2 = a cos(p x_1) is (1 − cos p)/4. β_1(0) = 4 w(p) / (L_cell⁴ (1 − cos p)). JSON files written before this fix store β too small by 4; analyze.py recomputes from w.

SU(2), infinite volume, shifted k-grid Ng⁴; p → 0 by quadratic fit; universal per-step value (11/3π²) log L in brackets:

| quantity | L = 2 | L = 3 |
|---|---|---|
| β_1, SU(2) | 0.630 (Ng=12; p = 0.1/0.2/0.4: 0.6299/0.6307/0.6340) [0.258] | 0.664 (Ng=8; 0.6667/0.6692/0.6893; Ng=6 agrees to 1–2% except at p = 0.1 where the grid error dominates) [0.408] |
| β_1, abelian (σ_3) sector | 0.2344 (p-independent to 1e−5) | 0.2469 (p = 0.4) |
| β_1 + β_2 (two composed steps) | 1.148 (Ng=4, p = 0.2; the Ng=4 grid overestimates L=2 single-step by 7%) [0.515] | not feasible (block 78744) |

Reading: all increments positive. The first-step scheme constant (β_1 minus universal part) is +0.37 (L=2) and +0.26 (L=3). The second step at L=2 is ≈ 0.45–0.52, still above 0.258, so the scheme constant decays slowly with the step index, not like L⁻⁴. The L-dependence of β_1 (0.630 → 0.664) is much weaker than c log(3/2) = 0.151, so the L-dependence at small L does not isolate the universal coefficient. Grid errors: ≤ 1% at p ≥ 0.2 for Ng ≥ 8; the error in w is roughly Ng-constant, so the relative error grows like 1/p² at small p.

Not yet done: Ng=6 two-level (running), L=4 single step (box), L=5 (needs GPU fp64), j = 3 (block 49152; out of reach of dense inversion).

Update (evening): two composed steps at L = 2, p = 0.2: Ng=4 → 1.148, Ng=6 → 0.967 (grid error for the composed cell is large; Ng=8 running on the box GPU). Hence β_2 ≈ 0.34 ± 0.1 for now, versus β_1 = 0.630 and the universal 0.258. Exact abelian-sector values (U1_INFINITE_LATTICE.md Prop 9.1, unverified): S_k^{ab} = (1 − L^{−4k})/4 = 15/64 (L=2), 20/81 (L=3), 255/1024 (two steps, L=2); the measured 0.23438 and 0.24691 agree to all digits.
L = 4 single step (box GPU, Ng=6, p = 0.2): β_1 = 0.757 [universal 0.515]. First-step increments 0.630 / 0.664 / 0.757 for L = 2 / 3 / 4; successive differences 0.034, 0.093 against universal 0.151, 0.107. L = 5 running (Ng=4 then 6).
Label (from SOURCES_D1_VERIFY.md): the plane-wave expansion point is not a constrained stationary point; the resulting error is controlled by Lp. The p → 0 fits for L = 2, 3 are unaffected. The single-point values at p = 0.2 for L = 4 (0.757) and the two-level runs (1.148, 0.967) carry an O((Lp)²) bias, about 0.01 at L = 4; the two-level grid error (0.18 between Ng = 4 and 6) dominates there.
Two composed steps at L = 2, p = 0.2, box GPU, Ng = 8: β_1 + β_2 = 0.953 (Ng = 4/6/8: 1.148 / 0.967 / 0.953), so β_2 ≈ 0.32 (Lp-bias label applies). Agrees with the per-level recursion (BETA_FP.md: β_2 ≈ 0.317–0.337).

## 7. Large odd L by the umklapp code (box, 2026-10-28)

β_1(0) single step, SU(2), fixed Lp where noted: L = 5: 0.749 (Ng=12, p=0.1), fit 0.743; L = 7: 0.803 (Ng=8, Lp=0.5). First-step constant β_1 − c log L: 0.372 (L=2), 0.256 (3), 0.242 (4), 0.145 (5), 0.080 (7): decreasing toward the universal slope. Queue continues to L = 15.
L = 9 (box, Ng=8): β_1 = 0.833 (Lp=0.5), 0.846 (Lp=0.9), 0.851 (Lp=1.0) [c log 9 = 0.816]: first-step constant ≈ +0.02, nearly zero.
L = 11 (box, Ng=8): β_1 = 0.850 (Lp=0.5), 0.868 (Lp=1.0) [c log 11 = 0.891]: first-step constant −0.04 at Lp=0.5 (Ng=8 grid adequacy at L=11 unchecked). Sequence of constants β_1 − c log L for L = 2,3,4,5,7,9,11: +0.37, +0.26, +0.24, +0.15, +0.08, +0.02, −0.04.
2026-10-27 κ_d (`kappa_d.py`, KAPPA_D.md): CMP 95 (1.101) gives κ = 1 + 1/(a·inf T), min at p' = (π,…,π); d = 4, a = 1: κ = 104.25 (N = L^k = 3), 147.73 (5), 186.64 (13), 196.19 (k → ∞, the sup over k); d = 3: 127.85 (k → ∞). Finite, so (1.100) gives c_− ≥ (aκ_4L⁵)^{−1} = 1.37e−8 at L = 13 (1.44e−8 if k = 1 only); Λ ≤ 2(1 + 12d²L^{d+1}) = 1.43e8 [I: γ_0 from CMP 96 (2.128)].
2026-10-28 (H1_L) at other L (`h1analytic/bb_arb.py L L−1 16`, H1_OTHER_L.md): certified sup_{j ≥ 1, K} ρ_1² ≤ 13.738 < 15 (L = 15), ≤ 12.826 < 17 (L = 17), ≤ 11.777 < 21 (L = 21); target L − 1, 3,876 boxes each (the n0 = 16 chamber grid, no refinement), 0 failed leaves; 125 s, 201 s, 429 s on a 2.1 GHz Xeon. F_max = 10.020 at every L, G_max = 4.005, 3.061, 1.951.
