# BETA_FP: per-level increments β_{j+1}(0) by the Gaussian recursion, and the fixed-point value β_∞

Written 2026-10-27 (Claude, Fable 5.1). Scope: tasks (A) numerics of the per-level increments through the exact level-j data recursion, (B1) the value Φ(𝒟_∞) = c log L, (B2) what remains for convergence and positivity. Read: U3_GAUSSIAN_RG.md (all), U1_INFINITE_LATTICE.md (all), U1_VERIFY.md (§0, 2.4, 2.6, 2.9, 3, 5), numerics/NUMERICS.md, numerics/ym_momentum.py, THEOREM2.md §3a, §8a. U3_LEMMA51.md did not exist when this was written. Code: numerics/betafp_recursion.py, numerics/betafp_test.py (new; no existing file edited). Every claim is marked [proved here], [verified numerically], [cited], or [open].

Conventions as in U3/U1: SU(2), N_g = 3, B = B^aσ_a/2, Wilson action A = Σ_p(1 − ½ tr U_p), block factor L, level-j lattice = Z⁴ in level-j units, background = σ_3 plane wave of link angles, momentum p along e_0, polarization e_1, c = 11N²/(12π²) = 0.371511, c log 2 = 0.25751, c log 3 = 0.40815.

## 0. Headline

- (A) Implemented: numerics/betafp_recursion.py computes β_{j+1}(0) for any j by the exact per-momentum recursion on the level-j data (Hessian + two soft vertices in a plane-wave background, Schur complement by the chain rule, one L-blocking per level), with the one-step ghost, averaging, and gauge-fixing of ym_momentum at the exactly propagated coarse background. Validated: j = 0 reproduces ym_momentum to 10^{−15}; the abelian sector reproduces (L^{−4j} − L^{−4(j+1)})/4 at j = 0, 1, 2, 3 (to 10^{−15}, 2·10^{−4}, 5·10^{−5}, 10^{−5} relative at N = 8); the pure-gauge zero holds exactly (2·10^{−14}) at level 1 with commensurate grids; β_1 + β_2 agrees with the composed two-level code to 0.5%.
- Table (L = 2): β_1 = 0.630 (converged); β_2 = 0.32 ± 0.03 at p = 0.2 (N = 8: 0.341, N = 12: 0.317; Ng 8 → 12: −1.2%); β_3 = 0.40 (N = 8) / 0.286 (N = 12), unconverged; β_4..β_7: not obtained on the Mac. Cause: the second-order data D2 carry an x²-weighted kernel (second-moment structure) with range far beyond the N = 8 torus at levels ≥ 2 (§1.3); N = 16–24 tabulations are needed and are box jobs (launcher written, not launched).
- Compared with c log 2 = 0.2575: the deviations are +0.37 (step 1) and ≈ +0.06 (step 2); the direction is toward the universal value, the rate is not yet measurable.
- (B1) Theorem 4.1: β_∞ = Φ(𝒟_∞) = c log L is REDUCED to one explicit two-scale statement (Lemma 4.3: the block-constraint-regularized continuum one-loop F² coefficient has the universal c log Λ UV asymptotics with a convergent constant), through an exact chain: per-step telescoping (Prop. 1.1, proved) + U3 convergence and Lipschitz continuity + scale covariance of the Wilson family; the additivity f(LL') = f(L) + f(L') of the fixed-point increment is exact. Lemma 4.3 is the shell computation of the task statement; its three analytic inputs are listed, not proved.
- (B2) Convergence at rate L^{−2j} needs U3 Lemma 5.1 (vertices) beyond U3; positivity for all j needs an explicit constant in (7.1) plus finitely many certified early steps; the present data cannot fix the number of steps.

## 1. The recursion that is computed [proved here]

### 1.1 Exact per-step telescoping of the composed one-loop integral

Composed k-step quantity (U1 (1.1), NUMERICS §1, verified R2_VERIFY §2.3): with Q̃_k the linearization at the fine background U_0 of the k-fold composed averaging, D_k the fine covariant gradient on λ vanishing at the level-k anchors, Δ_0 the Wilson Hessian at U_0,

  log Z_k(U_0) = log det(D_k^T D_k) − ½ log|det Bord_k|,  Bord_k = [[Δ_0 + D_kD_k^T, Q̃_k^T],[Q̃_k, 0]].   (1.1)

Proposition 1.1 (telescoping). Define recursively the level-i quadratic form in the background, Δ_i := −(Bord_{(i)}^{−1})_{22} (the Schur complement = constrained minimum ⟨V, Δ_iV⟩ = min{⟨B, (Δ_{i−1} + D_{(i)}D_{(i)}^T)B⟩ : Q̃_{(i)}B = V}), where

  Bord_{(i)} := [[Δ_{i−1}(V_{i−1}) + D_{(i)}D_{(i)}^T, Q̃_{(i)}^T],[Q̃_{(i)}, 0]],

Q̃_{(i)} is the ONE-step linearized averaging from level i−1 to level i at the level-(i−1) background V_{i−1} := Ū^{(i−1)}(U_0), and D_{(i)} the one-step covariant gradient on level i−1 (λ vanishing at level-i anchors) at V_{i−1}. Then, exactly,

  log Z_k(U_0) = Σ_{i=1}^{k} [ log det(D_{(i)}^TD_{(i)}) − ½ log|det Bord_{(i)}| ] + const,   (1.2)

const independent of the background. Hence the composed F²-coefficient S_k = Σ_{i≤k} β_i(0) with β_i(0) the F²-coefficient of the i-th bracket (the per-step formula of NUMERICS §5 with the level-(i−1) data in place of the Wilson Hessian).

Proof. (i) Gauge-fixing independence. For any linear gauge condition F: (fine fields) → R^m with m = dim Lie(G_k) and FD_k invertible, the quantity X_F := |det(FD_k)| ∫dB δ(Q̃_kB) exp(−½⟨B, Δ_0B⟩ − ½|FB|²) is independent of F: insert 1 = |det FD_k|(2π)^{−m/2}∫dλ exp(−½|F(B + D_kλ)|²), shift B → B − D_kλ (Q̃_kD_k = 0, Δ_0D_k = 0), and the λ-integral factors as vol(G_k), a background-independent (infinite, but F-independent) constant. (1.1) is X_F for F = D_k^T. (ii) Composite condition. Take F = (D_{(1)}^T, D_{(2)}^TQ̃_{1}, …, D_{(k)}^TQ̃_{k−1}) with Q̃_i the composition to level i. The dimension count is Σ_i N_g(L^{4(k−i+1)} − L^{4(k−i)})·N_cells = N_g(L^{4k} − 1)N_cells = m. By gauge covariance of the averaging (CMP 98 p. 24, linearized: Q̃_iDλ = D^{(i)}(λ|_{level-i anchors})), FD_k is block lower-triangular with diagonal blocks D_{(i)}^TD_{(i)}, so |det FD_k| = Π_i det(D_{(i)}^TD_{(i)}). (iii) Gaussian composition. With this F the exponent is ⟨B, (Δ_0 + D_{(1)}D_{(1)}^T)B⟩ + Σ_{i≥2}|D_{(i)}^TQ̃_{i−1}B|², and the second sum depends on B only through V_1 = Q̃_{(1)}B. Integrating B at fixed V_1 gives det(K_{(1)})^{−1/2}det(Q̃_{(1)}K_{(1)}^{−1}Q̃_{(1)}^T)^{−1/2} exp(−½⟨V_1, Δ_1V_1⟩) with K_{(1)} = Δ_0 + D_{(1)}D_{(1)}^T, and |det Bord_{(1)}| = det K_{(1)} det(Q̃_{(1)}K_{(1)}^{−1}Q̃_{(1)}^T). The remaining integral over V_1 has the same form one level up, with Δ_1(V_0) in place of Δ_0. Induct. (iv) The composition of the averaging (CMP 98 p. 31, "the new kth order averaging operation ... is a composition of k averaging operations ... with properly chosen configurations V_0") gives Q̃_k = Q̃_{(k)}⋯Q̃_{(1)} with each factor linearized at its own level's background V_{i−1} = Ū^{(i−1)}(U_0). ∎

Remarks. (a) Δ_i defined by the gauge-fixed Schur complement equals the gauge-invariant one: on the orbit of G_{(i)} (λ vanishing at level-i anchors), which lies in ker Q̃_{(i)}, a representative with D_{(i)}^TB = 0 exists (solve D_{(i)}^TD_{(i)}λ = −D_{(i)}^TB), so the two constrained minima agree. At the trivial background this is U3 Prop. 1.5 and Lemma 1.4; in the background it is the same argument. (b) The level-i background must be the exact composed average V_{i−1} = Ū^{(i−1)}(U_0). For the σ_3 plane wave all link variables commute, so Ū is exactly linear in the angles and V_{i−1} is the linear composed average of the fine wave: a coarse σ_3 wave Re(v_{i−1}e^{ip_{i−1}X_0}) with p_{i−1} = L^{i−1}p_0 and a complex polarization v_{i−1} ∈ C⁴ (transverse part L^{i−1}·(form factor) plus a longitudinal part from Balaban's axial-gauge terms, U3 Lemma 1.1; the longitudinal part vanishes for odd L with centered blocks and does not vanish for L = 2). Using a naive coarse wave instead would break the identity. (c) The ghost bracket at level i depends on i only through (v_{i−1}, p_{i−1}) (U3 §5.1 (D3)).

### 1.2 Per-momentum form of one step with data

Level-j data (U3 §5.1): 𝒟_j = (Δ_j, Γ_j^{(3)}, Γ_j^{(4)}), encoded as four n×n symbols on the level-j Brillouin zone, n = 4N_g (4 colours... 4 directions × N_g colours):

  D0(q) (Hessian, a⁰),  Tp(q): transfer q → q + p (a¹, e^{ipx} part),  Tm(q): transfer q → q − p (a¹, e^{−ipx} part),  D2(q): zero-transfer part of the a² coefficient,

with the convention M(a) = M_0 + a(M'_+ + M'_−) + ½a²(M''_0 + transfers ±2p), M'_+(x, y) = e^{ipx_0}t_+(x − y), Tp = t̂_+. Reality of all kernels gives Tm(q) = conj(Tp(−q)). One blocking step with factor L at coarse momentum K = Lk (k in the fine BZ of the coarse lattice, umklapp k_l = k + 2πl/L, l ∈ {0..L−1}⁴): the data enter the cell-basis bordered matrix through the unitary W(k)_{u,l} = L^{−2}e^{ik_l·u} (u = position in the cell):

  Hcell_0(k) = W(k) diag_l D0(k_l) W(k)^†,  Hcell_+(k) = W(k+p) diag_l Tp(k_l) W(k)^†,  Hcell_−(k) = W(k−p) diag_l Tm(k_l) W(k)^†,  Hcell''(k) = W(k) diag_l D2(k_l) W(k)^†,

added to the top-left block of the one-step bordered kernels 𝔅_0, 𝔅_±, 𝔅''_0 of ym_momentum (which now contain only DD^T and Q̃). With 𝔅(a) = 𝔅_0 + a(𝔅_+ + 𝔅_−) + ½a²(𝔅''_0 + …) and S(a) := −(𝔅(a)^{−1})_{22} the chain rule gives the level-(j+1) data at K = Lk:

  D0'(K) = −[𝔅_0(k)^{−1}]_{22},
  Tp'(K) = e^{iph}[𝔅_0(k+p)^{−1}𝔅_+(k)𝔅_0(k)^{−1}]_{22},  Tm'(K) = e^{−iph}[𝔅_0(k−p)^{−1}𝔅_−(k)𝔅_0(k)^{−1}]_{22},
  D2'(K) = [𝔅_0^{−1}𝔅''_0𝔅_0^{−1}]_{22} − 2[𝔅_0^{−1}(𝔅_−(k+p)𝔅_0(k+p)^{−1}𝔅_+(k) + 𝔅_+(k−p)𝔅_0(k−p)^{−1}𝔅_−(k))𝔅_0^{−1}]_{22},   (1.3)

all at momentum k; h = anchor offset in the cell (the phase converts the cell-anchor convention e^{ip(h + LX_0)} of ym_momentum to the coarse convention e^{ip'X_0}, p' = Lp). The coarse background polarization is v' = e^{−ipLX_0}(Q̃_0(A_c + iA_s))(X) with A_c = Re(ve^{ipx_0}), A_s = Im(ve^{ipx_0}) on the fine links and Q̃_0 the a = 0 averaging Jacobian. The increment at level j is the per-cell second derivative of NUMERICS §5 with these blocks, and

  β_{j+1}(0) = 4w_j/(L^{4(j+1)}(1 − cos p_0)),  p_0 = p_j/L^j,   (1.4)

since ∂_a²A_0 per level-(j+1) cell is L^{4(j+1)}(1 − cos p_0)/4 (U1 §1.1) and the tree F² term of the plane wave and of its minimizer differ by O(p⁴) (U1 Lemma 2.2). The extrapolation variable is p_j (the momentum in level-j units), as for j = 0.

### 1.3 Representation and the one approximation

The task statement calls the recursion "cheap and exact". It is exact per momentum, but the level-(j+1) data are needed at the L⁴ umklapp momenta (K + 2πl)/L of every coarse K, so an exactly nested grid needs L^{4j} level-0 points, which is the composed sum the task excludes. The code therefore stores each level-j symbol on an N⁴ grid K_m = 2πm/N, equivalently the real-space kernel on the centered N⁴ torus (inverse FFT), and evaluates it at off-grid momenta by the kernel sum Σ_x s(x)e^{−iq·x} (trigonometric interpolation). All momenta needed by one step lie on regular (LN)⁴ grids (shifted by 0, ±p, and by the half-cell shift of the final grid), so the evaluation is a zero-padded FFT of the torus kernel, chunked over the first momentum component (memory 1–4 GB). The error is the aliased tail of the level-j kernel beyond distance N/2. Level 0 is exact for N ≥ 4 (range-1 kernels). The final-step grid Ng (shifted, as in ym_momentum) is a separate parameter with L·Ng ≥ N.

Range of the data (measured, §2 item 8). The quadratic form D0 decays fast (level 1: 2·10^{−1}, 3·10^{−2}, 5·10^{−3}, 1.6·10^{−3} at |x|_∞ = 1, 2, 3, 4, relative to x = 0; level 2 slower, rate ≈ e^{−1.2} per unit). The first-order transfer Tp decays at a similar rate. The zero-transfer second-order data D2 do NOT: relative weights 1, 0.67, 0.26, 0.13 (level 1) and 1, 0.98, 0.55, 0.40 (level 2) at |x|_∞ = 1..4. This is the second-moment structure of U3 §5.2: for a constant abelian background the charged components see a momentum shift, Δ(k ∓ a), whose a² coefficient is ∂_k²Δ, i.e. the kernel x²Δ(x) in position space; the plane wave at small p regularizes this at scale 1/p, but the x² weight remains. Consequently N = 8 is enough for levels ≤ 1 only, and the level-3 data at N = 8 are visibly wrong (level-3 D0 non-Hermitian by 0.26 at grid nodes; β_4 = 1.6). Trigonometric interpolation still converges exponentially (x²e^{−δx}), but N ≥ 16 is needed for j ≥ 2 and N ≈ 24 for j ≥ 4 with the observed rates. This is the cost driver of the whole computation and is why the j ≥ 2 entries of the table need the box.

## 2. Validation [verified numerically]

All runs: SU(2), L = 2, this Mac (16 cores), project venv. Scripts: betafp_test.py (abelian per level, reality), betafp_test2.py (structure at grid nodes, exact pure-gauge test), betafp_recursion.py (production). Logs are the JSON files results/betafp_*.json.

1. j = 0 through the symbol route reproduces ym_momentum exactly. Ng = 4, p = 0.4: w = 0.21611644659583157 against the stored 0.2161164465958312 (results/mom_L2_Ng4_p0.4_trans.json); difference 5·10^{−16}. This validates the umklapp embedding W(k) diag W(k)^† of §1.2 (the level-0 data are extracted from the Wilson Hessian as fine-lattice kernels and re-embedded, not copied from the cell-basis kernels). Ng = 8: β_1 = 0.6310 / 0.6310 / 0.6341 at p = 0.1 / 0.2 / 0.4 (Ng = 12 of NUMERICS §6: 0.6299 / 0.6307 / 0.6340).

2. Abelian sector per level, exact value (L^{−4j} − L^{−4(j+1)})/4 (U1 Prop. 9.1, confirmed U1_VERIFY 2.6). Ng = 4, p = 0.2:
   | N | j = 0 | j = 1 (exact 0.0146484375) | j = 2 (exact 0.000915527344) |
   |---|---|---|---|
   | 4 | 0.234375000000 (−1.4·10^{−15}) | 0.014613493 (−3.5·10^{−5}) | 0.000920172 (+4.7·10^{−6}) |
   | 6 | 0.234375000000 (−1.4·10^{−15}) | 0.014651947 (+3.5·10^{−6}) | 0.000917357 (+1.8·10^{−6}) |
   The level-0 step is exact; the only error at j ≥ 1 is the torus truncation of §1.3, decreasing by ~10 per two units of N at j = 1 (relative 2.4·10^{−3} → 2.4·10^{−4}); N = 8 is used for production (expected ~10^{−5} relative at j = 1). The ghost is exactly zero in this sector at every level, as it must be.

3. Reality of the transfer data at level 1: max |Tm(q) − conj(Tp(−q))| = 3·10^{−14} at random q (|Tp| ≈ 2.1). The two transfers are computed independently by the two formulas in (1.3), so this checks the ± bookkeeping and the anchor phases.

4. Structure of the level-1 quadratic form at grid nodes (exact values, N = 8): Hermitian to 10^{−14}; transverse, |D0(K)K̂| ≤ 10^{−13} for |D0| up to 8.3; D0(0) = 0 to 10^{−15}; Maxwell normalization |D0(K) − ¼|K̂|²P_T|/(¼|K̂|²) = 7.9·10^{−2} at K = (π/4, 0, 0, 0) and 1.2·10^{−1} at (π/4, π/4, 0, 0) (U3 Lemma 3.1(ii): |K̂|²P_T(1 + O(K²)), the lattice M = 2 form deviates more than Δ_∞).

5. Exact pure-gauge zero at level 1. With N = L·Ng (= 8, Ng = 4), the unshifted final grid and p_1 = 2π/8 (commensurate), the final step uses only tabulated values, so the recursion must be exactly gauge invariant for the periodized data (a periodic background on the N-torus; covariance is a pointwise identity preserved by periodization). Result: w = −2.2·10^{−14} (ghost −1·10^{−16}, bordered +4·10^{−14}) for the pure-gauge wave, against w = 1.506 for the transverse wave on the same grids. This tests the whole chain: the Schur-complement chain rule (1.3), the anchor phases, and the exact propagation of the coarse background v_1 including its longitudinal part (nonzero for L = 2). With incommensurate p the pure-gauge w is only grid-small (−1.3·10^{−5} at j = 0, p = 0.39, Ng = 4, shift 0; 4·10^{−4} with the shifted grid), as for ym_momentum.

6. Ghost level-independence (Prop. 1.1 Remark (c)): the ghost bracket at level j must equal L^{2j}D_{L^j}(p_0)² times the level-0 ghost at the same p_j (D_M the block form factor, 0.99875 here). Measured at p_j = 0.2, Ng = 8: ghost_0 = 0.001213, ghost_1 = 0.004840 (predicted 4·0.9975·0.001213 = 0.004840), ghost_2 = 0.019347 (predicted 0.019360). Agreement 0.07%: the amplitude of the coarse background is propagated correctly.

7. Cross-check with the composed two-level code: β_1 + β_2 = 0.6310 + 0.3412 = 0.972 (this recursion, N = Ng = 8, p = 0.2) against S_2 = 0.967 (results/mom_L2_Ng6_p0.2_trans_two.json, Ng = 6, unconverged by its own account, U1_VERIFY 2.9). Agreement to 0.5%, within the Ng = 6 error of the composed code (its Ng = 4 → 6 shift was −16%).

8. Real-space range of the level data (betafp_diag.py, N = 8, chain for p_3 = 0.2, i.e. p_0 = 0.025). Relative kernel weights max_{|x|_∞ = r}|s(x)|/max|s| for r = 1, 2, 3, 4 (r = 4 is the torus boundary):
   | level | D0 | Tp | D2 |
   |---|---|---|---|
   | 0 | 0.17, 0, 0, 0 | 1, 0, 0, 0 | 1, 0, 0, 0 |
   | 1 | 0.20, 0.032, 0.0055, 0.0016 | 1, 0.33, 0.084, 0.016 | 1, 0.67, 0.26, 0.13 |
   | 2 | 0.23, 0.057, 0.014, 0.0059 | 1, 0.45, 0.15, 0.035 | 1, 0.98, 0.55, 0.40 |
   | 3 | (contaminated) | 1, 0.46, 0.16, 0.040 | 0.89, 1, 0.57, 0.42 |
   Structure at grid nodes: level 1 exact (Hermitian 10^{−15}, transverse 10^{−15}); level 2: |D0 K̂| = 2.5·10^{−3}, Hermiticity error 4·10^{−2} (contamination from the aliased level-1 D2 and Tp through the chain rule); level 3: 0.26 Hermiticity error, i.e. unusable. The abelian chain at N = 8 is exact to 10^{−5} at j = 3 because its second-order kernel is local.

## 3. Results

SU(2), L = 2, transverse wave, β_{j+1}(0) = 4w_j/(L^{4(j+1)}(1 − cos p_0)) with p_j the momentum in level-j units (the extrapolation variable). N = tabulation torus of the level data (§1.3), Ng = final shifted grid. Universal value c log 2 = 0.2575. Mac runs only (each ≤ ~10 min of wall time with the final code; the j = 3 entry took 9 min with N = 8).

| j (step j+1) | p_j | N = 8, Ng = 8 | N = 8, Ng = 12 | N = 12, Ng = 8 | status |
|---|---|---|---|---|---|
| 0 | 0.1 | 0.6310 | 0.6299 (NUMERICS) | 0.6310 (exact in N) | converged: β_1 = 0.630 |
| 0 | 0.2 | 0.6310 | 0.6307 (NUMERICS) | — | |
| 0 | 0.4 | 0.6341 | 0.6340 (NUMERICS) | — | |
| 1 | 0.1 | 0.4246 | — | — | Ng = 8 grid error ∝ 1/p² dominates at p = 0.1 |
| 1 | 0.2 | 0.3412 | 0.3370 | 0.3168 | tabulation (N) not converged: −7% from N = 8 to 12 |
| 1 | 0.4 | 0.3288 | — | — | |
| 2 | 0.2 | 0.3996 | — | 0.2856 | N = 8 unreliable at this level (§1.3) |
| 3 | 0.2 | 1.603 | — | — | wrong: level-3 data aliased at N = 8 (§1.3, §2 item 8) |
| 4–6 | | — | — | — | not run (box; launcher betafp_launch.sh) |

Reading. β_1 = 0.630 is exact in N (level-0 data are exact) and converged in Ng. β_2 at p = 0.2 lies in 0.30–0.34: the Ng = 8 → 12 shift is −1.2%, the N = 8 → 12 shift is −7%, and N = 16 (needed to bound the remaining tabulation error) exceeds the Mac budget. The composed two-level code gave β_2 = 0.337 at its unconverged Ng = 6 (U1_VERIFY 2.9), consistent with the N = 8 column but not a check of the N-convergence. β_3 = 0.40 at N = 8 is not trustworthy for the same reason; the N = 12 value is 0.2856 (N = 8 → 12 shift −29%, so N = 12 is itself not converged at this level; the shift is toward c log 2 = 0.2575). No entry of the table for j ≥ 1 is converged to better than ~10%, and j ≥ 3 is not computed reliably at all on the Mac. The comparison with c log 2 = 0.2575 therefore rests on β_1 = 0.630 (scheme constant +0.37, U1 §10) and β_2 ≈ 0.32 ± 0.03 (scheme constant ≈ +0.06): the deviation from the universal value drops by a factor ≈ 6 from step 1 to step 2, consistent with convergence toward c log L, but two points cannot fix a rate (U3 (7.1) predicts a factor L² = 4 per step asymptotically). The abelian sector is reproduced at every level computed (§2 item 2 and the N = 8 values 0.000915482 (j = 2, exact 0.000915527) and 0.000057220 (j = 3, exact 0.0000572205)); its second-order kernel is local (no bubble), so it does not test the D2 range problem.

Ghost column: ghost_j/L^{2j} = 0.001213, 0.001210, 0.001209, 0.001209 (j = 0..3, p_j = 0.2, Ng = 8), i.e. the ghost bracket is level independent to the form-factor correction, as Prop. 1.1 Remark (c) requires; its share of every increment is 0.0153 (p → 0: 0.0155 from the Ng = 12 level-0 run).

## 4. (B1) The fixed-point value β_∞ = Φ(𝒟_∞)

### 4.1 Statement

Theorem 4.1 (conditional). Assume U3 Theorem 4.1 and Lemma 5.1 (the level-j data converge to 𝒟_∞ in the norm (6.2) of U3), U3 Theorem 6.1 (Φ is Lipschitz on 𝒟_{a,b}), and Lemma 4.3 below. Then β_∞ := Φ(𝒟_∞) = c log L with c = 11N²/(12π²), for every block factor L ≥ 2.

### 4.2 Reduction to one two-scale asymptotic statement [proved here]

Step 1 (exact telescoping). By Prop. 1.1, Φ(𝒟_j) = S_{j+1} − S_j where S_k is the composed k-step F²-coefficient on the fine Wilson lattice (block L^k). By U3 Prop. 1.5 / Lemma 1.2 (S_{L'}∘S_L = S_{LL'}) the same holds with any integer block factors: for the data 𝒟_M := S_M(Wilson data) obtained by a single block-M step, Φ_L(𝒟_M) = 𝒮(LM) − 𝒮(M), where 𝒮(b) := F²-coefficient of the composed one-loop quantity with block b (fine spacing 1).

Step 2 (continuity). 𝒟_M → 𝒟_∞ as M → ∞ (U3 Theorem 4.1 for Δ_M at rate M^{−2}; Lemma 5.1 for the vertices), and Φ is Lipschitz (U3 Theorem 6.1). Hence

  β_∞ = Φ(𝒟_∞) = lim_{M→∞}[𝒮(LM) − 𝒮(M)].   (4.1)

Step 3 (scale covariance). The Wilson lattice family is scale covariant: the fine lattice of spacing 1 with block b is the fine lattice of spacing 1/b with unit block, and the F² coefficient is dimensionless in d = 4. So 𝒮(b) = 𝒞(Λ)|_{Λ=b} where 𝒞(Λ) is the one-loop F²-coefficient of the continuum background-field effective action regularized in the UV by the Wilson lattice at spacing 1/Λ and in the IR by the unit-block δ-function constraint (with the Faddeev–Popov ghost for the residual group, λ vanishing at unit-lattice sites). (4.1) becomes

  β_∞ = lim_{Λ→∞}[𝒞(LΛ) − 𝒞(Λ)].   (4.2)

Step 4 (additivity, exact). Since T_L𝒟_∞ = 𝒟_∞ (U3 Lemma 3.1(i)) and the one-step telescoping composes, f(L) := Φ_L(𝒟_∞) satisfies f(LL') = f(L) + f(L') for all integer L, L' ≥ 2 (anchors at the block origin so that nested blocks compose exactly for every L; for odd L the centered convention is a translate). So β_∞ is a completely additive function of L; (4.2) with Lemma 4.3 identifies it as c log L.

Lemma 4.3 (UV asymptotics with the block IR regulator; [open], standard content). 𝒞(Λ) = c log Λ + C_∞ + o(1) as Λ → ∞, with c = 11N²/(12π²) the universal one-loop coefficient and C_∞ a finite constant (which depends on the Wilson regulator and on the block constraint and cancels in (4.2)).

Given Lemma 4.3, (4.2) gives β_∞ = c log L. ∎ (Theorem 4.1 modulo Lemma 4.3.)

### 4.3 The shell computation behind Lemma 4.3, and what it needs

Write 𝒞(Λ) = ∫_{BZ_Λ} d⁴k I_Λ(k), I_Λ the per-loop-momentum F²-coefficient integrand of the gauge-fixed one-loop determinant (gluon bordered block with weight −½, ghost with weight +1, as in (6.1) of U3; at level "continuum with cutoff Λ" it is the U1 (3.3) decomposition: fine Feynman-gauge Wilson vacuum polarization plus the three coarse pieces that implement the block constraint). The difference in (4.2) is

  𝒞(LΛ) − 𝒞(Λ) = ∫ d⁴k [I_{LΛ}(k) − I_Λ(k)].

Lemma 4.3 is equivalent to the following three properties of I_Λ (the rest is the elementary shell integral ∫_{Λ<|k|<LΛ} d⁴k c/(2π²|k|⁴) = c log L):
 (a) Continuum limit of the integrand at fixed k: I_Λ(k) → I_∞(k) as Λ → ∞, locally uniformly, where I_∞ is the integrand of the continuum YM one-loop effective action (Maxwell propagator, continuum 3- and 4-vertices) with the unit-block δ-function constraint and the residual-group ghost. This is the Theorem-4.1 mechanism (lattice factors = continuum factors × (1 + O(k²/Λ²)) with even errors) applied to the integrand, including the background vertices (= Lemma 5.1's mechanism).
 (b) Large-k asymptotics of the continuum integrand: I_∞(k) = c/(2π²|k|⁴) + R(k) with ∫_{|k|>1}|R| < ∞ (after angular averaging). The leading term is the standard background-field computation (gluon loop 10/3 and ghost loop 1/3 in Feynman gauge, R2_VERIFY §2.2); the correction R comes from the block constraint: the constrained propagator is G_c = K^{−1} − K^{−1}χ^†[Σ_n|χ|²K^{−1}]^{−1}χK^{−1} (U1 (3.1)), whose subtraction term is relatively O(χ(k)²/|k|²) with χ the cube form factor, χ(k)² ≤ Π_ν min(1, 4/k_ν²), and this is integrable against |k|^{−4}: the region with one large component gives ∫dk_1 k_1^{−4}·k_1^{−2} < ∞, the region with all components large gives Π_ν 4/k_ν² · |k|^{−4}, both finite; the background variations of the form factor (vertices from Q̃(a), D(a)) carry the same form-factor decay. The ghost sector (λ vanishing at unit sites) and the anchor determinant are treated identically.
 (c) Uniform domination: |I_Λ(k) − I_∞(k)| ≤ C|k|^{−4}min(1, |k|²/Λ²)-type bounds for |k| ≤ πΛ and |I_Λ(k)| ≤ C|k|^{−4} in the lattice region, so that dominated convergence applies to ∫[I_{LΛ} − I_Λ] and the limit can be taken inside.
With (a)–(c): 𝒞(LΛ) − 𝒞(Λ) → ∫[L⁴I_∞(Lk) − I_∞(k)]d⁴k (scale covariance of the continuum data: the block-L constraint at cutoff Λ is the unit block at cutoff Λ/L), and the last integral equals lim_R ∫_{R<|k|<LR} I_∞ = c log L by (b). The sign is fixed by asymptotic freedom (U1 §4.3: β > 0 in Balaban's convention), consistent with the numerics.

What is not done here: (a) and (c) are the uniform versions of Theorem 4.1 for the full gauge-fixed integrand with background vertices; they are not written (they are Lemma 5.1 plus the Feynman-gauge analogue, with explicit remainders). (b) is the standard one-loop computation plus the form-factor estimate sketched above; I have not written the angular average of the subtraction term in full. Lemma 4.3 is therefore reduced, not proved. It is weaker than Lemma U2′ of U1: it concerns ONE integrand (the continuum/fixed-point one) and needs no uniformity in the level.

Consistency checks available now. (i) The ghost bracket is level-independent (Prop. 1.1 Remark (c)); its share of Φ(𝒟_∞) is the one-step lattice ghost constant c_gh(L), while in the continuum split it carries 1/11 of c log L plus a constant; no contradiction, the gluon bracket carries the complement. (ii) The abelian sector: Φ^{ab}(𝒟_j) = (1 − L^{−4})L^{−4j}/4 → 0 = c^{ab} log L with c^{ab} = 0 (U1 Prop. 9.1, verified U1_VERIFY 2.6, and reproduced level by level in §2 below). (iii) The numerical sequence β_{j+1}(0) of §3 against 0.2575.

## 5. (B2) What remains

### 5.1 Convergence β_j(0) → β_∞ at rate L^{−2j}

Beyond U3 (Theorem 4.1 for Δ_j, Theorem 6.1 for Φ, Theorem 7.1 conditional):
 (R1) Lemma 5.1 of U3: convergence of the two soft vertices (Tp, D2 in the encoding of §1.2) at rate L^{−2j} in the C² momentum norm. The recursion (1.3) is exactly the per-momentum map whose iterates Lemma 5.1 must control; the numerics below give the observed rate of the increments directly.
 (R2) The uniform invertibility and bounds (𝒟_j ∈ 𝒟_{a,b} for all j) are cited from Balaban (U3 C1); the one-step bordered matrix is invertible at every k including K = 0 (gauge-fixed by DD^T, constraint onto), which the recursion uses on the unshifted grid.
 (R3) The interpolation of §1.3 is an approximation of the numerics only; the theory uses the exact symbols.
Given (R1): |β_{j+1}(0) − β_∞| ≤ C_Φ‖𝒟_j − 𝒟_∞‖ ≤ C L^{−2j} (U3 (7.1)).

### 5.2 Positivity β_j(0) > 0 for all j

With β_∞ = c log L (Theorem 4.1 modulo Lemma 4.3) and the rate |β_{j+1}(0) − β_∞| ≤ C L^{−2j}, positivity holds for all j ≥ j_* := ⌈log(C/(c log L))/(2 log L)⌉, and the remaining finitely many j < j_* are a finite computation. The constant C is not explicit (it is C_Φ·C_data with C_Φ from U3 Theorem 6.1 and C_data from Theorem 4.1 + Lemma 5.1). Numerically: with the two reliable points β_1 = 0.630 and β_2 ≈ 0.32 ± 0.03 and the asymptotic rate L^{−2} = 1/4, the geometric bound |β_{j+1} − c log 2| ≤ 0.37·4^{−j} would give positivity for all j (0.37·4^{−j} < 0.2575 for j ≥ 1), but the rate is not established numerically (the j = 2 point is unconverged), and the constant C of (R1) is not explicit. A finite-step certificate needs: (i) the fixed-point value (Theorem 4.1 modulo Lemma 4.3), (ii) an explicit C and j_*, (iii) interval-arithmetic (or converged, error-bounded) values of β_1, …, β_{j_*}. From the present numbers j_* would be 1 or 2 if the rate were 1/4 from the first step on; the data do not yet show the rate.

### 5.3 Honest ledger

Proved here:
- P1. Prop. 1.1: exact per-step telescoping of the composed gauge-fixed one-loop integral with the level-data Schur complements and the one-step objects at the exact composed background (composite gauge condition, block-triangular Faddeev–Popov determinant).
- P2. The per-momentum chain-rule formulas (1.3) for the level-(j+1) data (D0, Tp, Tm, D2) with the anchor-phase and coarse-background bookkeeping; the exact linear propagation of the σ_3 background including its longitudinal part.
- P3. Theorem 4.1 (B1), as a reduction: β_∞ = lim_Λ[𝒞(LΛ) − 𝒞(Λ)] exactly (telescoping + U3 convergence + U3 Lipschitz + scale covariance), additivity f(LL') = f(L) + f(L') exactly, and β_∞ = c log L given Lemma 4.3.

Verified numerically (§2):
- V1. j = 0 reproduces ym_momentum to 10^{−15}; abelian sector exact per level to the tabulation error (10^{−5} at N = 8 for j ≤ 3); exact pure-gauge zero at level 1 (2·10^{−14}) with commensurate grids; reality and transversality of the level-1 data to 10^{−14}; ghost level independence to 0.07%; β_1 + β_2 against the composed two-level code to 0.5%.

Numerical results (§3):
- N1. β_1(0) = 0.630 (L = 2), converged. β_2(0) ≈ 0.32 ± 0.03 at p = 0.2 (N = 12, Ng = 8; N = 16 pending). β_3(0) = 0.40 (N = 8) → 0.29 (N = 12) at p = 0.2, unconverged in N; β_4 and beyond: not obtained on the Mac (N = 8 aliasing of the second-moment data D2); the box runs in betafp_launch.sh (N = 16, 24; Ng = 12, 16; j ≤ 6; L = 3 at N = 16) are needed. No β_{j+1} for j ≥ 3 is reported.

Open:
- O1. Lemma 4.3 (UV asymptotics of the block-regularized continuum one-loop F² coefficient): the integrand limit (a), the large-k asymptotics with the form-factor subtraction (b), and the domination (c). Reduced, not proved. Without it, B1 is: β_∞ is a completely additive function of L whose value is lim_Λ[𝒞(LΛ) − 𝒞(Λ)].
- O2. U3 Lemma 5.1 (vertex convergence at rate L^{−2j}); U3_LEMMA51.md was not available.
- O3. Numerical convergence in N for j ≥ 1 (N = 16, 24) and in Ng (12, 16); L = 3 not run (blocks 984, ~10–20 h on the box).
- O4. The order-g⁰ completeness V1 of R2_VERIFY and the uniform bounds C1 of U3 are inherited.
- O5. Whether the slow decay of D2 at higher levels (rate ≈ e^{−1.2} at level 2 for D0) is the true fixed-point range or still contaminated by aliasing is untested (needs the N = 16 chain).
