# SOURCES_BETA1_F_TENSION — single-step β_1(L) against R-027 (F)

Date 2026-10-28. Ids follow IDS.md. Tags: [P] proved here, [P-sketch] proof outline with a named gap, [N] numerics, [I] interpretation or unproved claim, [V] read verbatim in a project file.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not opened and were excluded from every search.
Read: SOURCES_T2_MPT_STEPC.md (all), SOURCES_T2_F_STEPB.md (all), BETA_FP_H.md (§1, §3), numerics/NUMERICS.md (all), numerics/BETA1_SLOPE_STAGE.md, numerics/BETA1_BOX_RUN.md (head), UMK_BETA1.md §7–§8, numerics/umk_beta1.py (all), numerics/beta1_box/*.sh, the argument parser of t2_fstepb_verify_umk_gpu.py, ym_momentum.py (outline), IDS.md, README line 49.
New computation: one Mac diagnostic (/tmp/b1diag/kern0.py, 2 min total), §5.2.

## 0. Verdict: (B), in a precise form. (A) is refuted. (C) is not supported.

Decisive argument [P, relative to (1.1) of BETA_FP_H and R-026 (PI)].
For one step with block L, the code's β_1(L) is the constant-field coefficient 𝒞_L(L) of BETA_FP_H (1.1) with Λ = L.
(1.1) splits it into the fine bracket and the coarse bracket: β_1(L) = lim_{f→0}[Fine(L; f) − Γ_c^{(L)}(L; f)]/(n_2f²).
R-027 (F), as proved (SOURCES_T2_MPT_STEPC Theorem B, L-090), controls only the fine bracket.
It gives Fine(L; f) − Fine(L′; f) = n_2f²·c log(L/L′) + o(f²) exactly, for every pair L, L′.
Hence, exactly,

  β_1(L) − β_1(L′) = c log(L/L′) − b(L, L′),   b(L, L′) := lim_{f→0}[Γ_c^{(L)}(L; f) − Γ_c^{(L′)}(L′; f)]/(n_2f²).   (0.1)

b(L, L′) depends only on the classical single-step coarse kernels Δ_1^{(L)}(f) and Δ_1^{(L′)}(f) (the Hessians of the constrained minimum of the Wilson action). It contains no fine-lattice one-loop quantity.
So the β_1(L) data measure b, not (F). The slope of β_1 in log L is c − ∂b/∂log L.
The expectation "β_1(L) = c log L + C + o(1)" is therefore exactly the claim that the coarse-bracket constant B_c(L) converges as L → ∞ (§3).
No project file proves that claim. It is an assumption [I] (STEPB §3.3 states it with "if the single-step coarse kernel converges as L → ∞").
With the fine-grid data, b(9, 11)/log(11/9) = c − 0.081 = 0.29 (Lp → 0) and b(11, 13)/log(13/11) ≥ c − 0.034 = 0.34 (Lp = 1).
So the data contradict the assumption at L ≤ 13. They say nothing about (F).

Why (A) fails [P-sketch + N, §4]. Lp is the coarse momentum. The code holds Lp fixed, so the fine momentum is p = Lp/L. This is the correct comparison. The constrained total is analytic in the coarse momentum with an L-uniform radius. The data confirm this: β_1(Lp = 1) − β_1(Lp = 0.5) = 0.0192, 0.0195, 0.0192, 0.0186, 0.0185 at L = 5, 7, 9, 11, 13. The Lp → 0 extrapolation moves each β_1 by ≤ 0.004 and changes no slope by more than 0.01.

Why (C) is not supported [P + N, §3, §5.4]. By (0.1), a failure of (F) and a growth of B_c(L) give the same β_1 data. The data cannot separate them. Independent evidence favors (F): the lattice charged operator's heat-trace slope c_A(t)/t → 0.29178 against 11/(12π) = 0.291784 (SOURCES_T2_MPT_STEPC §7.2), and the composed L = 2 increment β_2 ≈ 0.32 against c log 2 = 0.2575 (NUMERICS §6).

What is still open. Whether B_c(L) converges for large L, slowly, or grows without bound, is not decided. §5 gives a concrete mechanism for growth (the anchor path fan of the CMP 109 average carries a fine-scale self-energy that grows linearly in L; at f = 0 it lies exactly in the coarse gauge direction [N]; at f ≠ 0 the log-of-holonomy averaging may move part of it out of that direction [I]). §9 specifies the run that decides it.

## 1. What R-027 (F) states exactly [V]

Object. F_W(φ) is the fine Wilson one-loop bracket per fine cell, in background Feynman gauge, at a constant abelian fine flux φ (colour σ_3, plane (0,1)), read as log|det| (STEPB §1; BETA_FP_H (1.1)). It is an unconstrained, infinite-volume, fine-lattice object. It has no block size L, no constraint, no momentum p, no Lp, and no grid Ng.
Coefficient. G(φ) := F_W(φ)/φ². The proved statement is (3.1′) (SOURCES_T2_MPT_STEPC Theorem B, L-090; verified):

  for every fixed λ > 0:  G(λφ) − G(φ) → n_2c_2 ln(1/λ) as φ → 0,   n_2c_2 = 11/(12π²),  c = 2c_2 = 11N²/(12π²) = 0.371511 (N = 2).

Limit. One limit only: φ → 0 at fixed λ. The proof takes an infrared mass m² = μ|φ|, proves the massive log coefficient by proper time (Theorem A, L-060; Lemma C, L-112; Lemma F, L-160), and removes the mass by H-137 (L-LL).
Use. (F) enters only through Step A of STEPB: Fine(Λ; f) = Λ⁴F_W(f/Λ²) per coarse cell, so

  [Fine(Λ; f) − Fine(Λ′; f)]/(n_2f²) → c log(Λ/Λ′)  as f → 0   (BETA_FP_H (3.1)).

Here Λ is the total block scale. The statement holds for any Λ, Λ′, so it holds for the single-step pair Λ = L, Λ′ = L′. Step A uses no property of the block family.
Order of limits in (F) and Step A. f → 0 at fixed Λ, Λ′. There is no L → ∞ limit inside (F).
What (F) does not state. (F) says nothing about Γ_c, the coarse bracket. In BETA_FP_H Theorem 3.1 the coarse bracket is controlled by a separate input, (M) with (H′): the composed kernels Δ_j converge as j → ∞ at fixed L. That input is about the composed family at fixed L, not about the single-step family as L → ∞.

## 2. What the code computes [V, from the source]

Files: numerics/umk_beta1.py (Umk.terms, run, kgrid), numerics/beta1_box/t2_fstepb_verify_umk_gpu.py (driver), ym_momentum.py and ym_oneloop.py (shared operators and the Balaban average).
(a) The object. log Z(V) = log ∫dU δ_Haar(Ū(U)V^{−1})e^{−A(U)/g²} at one loop, for one step from the Wilson action with block L (odd, centred anchors h = (L−1)/2), SU(2), infinite volume. Ū is CMP 109 (0.4): the average over x ∈ B(c−) and over all axis-ordered monotone paths Γ (anchor → x), Γ′ (anchor′ → x′), of log U(Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c)) (avg_profile, path_arrays).
(b) The split. log Z = log det(D^TD) − ½ log|det Bord|, D the covariant gradient on λ vanishing at the anchors, Bord = [[Δ + DD^T, Q̃^T], [Q̃, 0]] (NUMERICS §1). The code returns the two parts as "ghost" and "bord"; w = ghost − ½ bord.
(c) The probe. A transverse plane wave on the direction-1 links, colour σ_3, A_1(x) = a cos(p x_0) (kind "trans", pol = 1). p is the FINE momentum. w(p) is the a² coefficient of log Z per coarse cell, a Brillouin-zone average over the coarse momentum K with the L⁴ umklapp momenta k_l = K + 2πl/L.
(d) Lp. The driver reads Lp and sets p = Lp/L (line 90). So Lp = L·p is the momentum of the probe in COARSE lattice units. Fixed Lp across L means a fixed coarse wavelength 2π/Lp coarse spacings.
(e) The coefficient. β = 4w/(L⁴(1 − cos p)) (driver line 94; NUMERICS §6). β_1(0) = lim_{Lp→0} β at fixed L.
(f) Grid. kgrid: K_μ = (m_μ + ½)·2π/(L·Ng), m_μ = 0 … Ng−1, with a 16-fold symmetry reduction. In coarse units the smallest |K| is 2π/Ng.
(g) Order of limits in the code. Ng → ∞ first (the grid error in w is roughly Ng-constant, so its relative size grows like 1/(Lp)², NUMERICS §6), then Lp → 0, both at fixed L. Then L varies. This is the same order as (F) plus Step A: f → 0 (here Lp → 0) at fixed L, then compare L.
(h) Identification with 𝒞(Λ) [I, R-026 (PI)]. β_1(0) = 𝒞_L(L) of BETA_FP_H, the constant-field f² coefficient of log Z_L(V_f) divided by n_2. The plane-wave background is not a constrained stationary point (SOURCES_D1_VERIFY item 8); its bias is O((Lp)²) and vanishes as Lp → 0. (PI) is a ledger row with status "reduced", not a theorem; §4 shows the data agree with its scaling prediction.

## 3. The exact slope identity

Proposition 3.1 [P, relative to BETA_FP_H (1.1) for Λ = L (verified algebraic identity, BETA_FP_LEMMA43_VERIFY §4), R-026 (PI), and L-090].
For odd L, L′ ≥ 3 the limit b(L, L′) of (0.1) exists and β_1(L) − β_1(L′) = c log(L/L′) − b(L, L′).
Proof. (1.1) with Λ = L reads log Z_L(V_f) = Fine(L; f) − Γ_c^{(L)}(L; f) per coarse cell, where Γ_c^{(L)}(L; f) = log det(D_c^TD_c) − ½ log det(Δ_1^{(L)}(f) + D_cD_c^T) and Δ_1^{(L)}(f) is the Hessian at V_f of the minimum of A under the one-step constraint with block L. Divide by n_2f² and subtract the same identity at L′. The left side has the limit β_1(L) − β_1(L′) by (PI) (constrained fluctuations are massive, so log Z_L is analytic in f). The fine part has the limit c log(L/L′) by Step A and (3.1′) with λ = (L/L′)^{−2} (Fine(L; f)/(n_2f²) = G(f/L²)/n_2 since L⁴(f/L²)² = f²). So the coarse difference has a limit, and it is b(L, L′). ∎
Remark 1. No (F_lat), no constant B of F_W, and no limit of Γ_c alone is used. Only differences enter. Γ_c^{(L)}(f)/f² alone has no limit (f² ln|f|), but the difference over two L has one.
Remark 2. D_c is the coarse covariant gradient at V_f. It does not depend on L. So b(L, L′) depends on L, L′ only through the two classical kernels Δ_1^{(L)}(f), Δ_1^{(L′)}(f). It is a tree-level object put inside a one-loop determinant.
Remark 3. If one writes Γ_c^{(L)}(f)/(n_2f²) = c_2 ln(1/|f|) + B_c(L) + o(1) (the ln coefficient must be c_2 for every L, because the left side of (1.1) is analytic and the fine ln coefficient is c_2), then b(L, L′) = B_c(L) − B_c(L′) and β_1(L) = c log L + B − B_c(L) with an L-independent B.

Corollary 3.2 [P]. The following are equivalent: (i) β_1(L) = c log L + C + o(1) as L → ∞ (L odd); (ii) B_c(L) converges; (iii) b(L, L′) → 0 as L, L′ → ∞.
So the expectation of NUMERICS §7(d) and STEPB §3.3 is a statement about classical single-step kernels. It is not a consequence of R-027.

Corollary 3.3 [P]. The β_1(L) data cannot refute R-027. Any β_1(L) sequence is compatible with (F) for a suitable sequence B_c(L). Conversely, R-027 cannot fix the slope of β_1(L).

Where the expectation came from [V]. NUMERICS §7(d): "one step spans log L e-folds between the constraint scale 1/L and the lattice scale, so the local slope should rise toward c". STEPB §3.3: "if the single-step coarse kernel converges as L → ∞ (U3 Theorem 4.1 type) at rate L^{−2}". Both are conditional on (ii). No file proves (ii). The "U3 Theorem 4.1 type" convergence was proved for the composed family at fixed L, which is a different statement (§1, last paragraph).

## 4. Hypothesis (A): is fixed Lp the wrong comparison? No.

4.1 Scale of the p-dependence [P-sketch]. The constrained one-step log Z_L(V) is gauge invariant and, in a complete axial (tree) gauge inside each block rooted at the anchor, has no ghost: the tree Jacobian λ ↦ (Dλ)|_tree is triangular with unit diagonal, so its determinant is ±1 for every background. In that gauge log Z_L = −½ log det(Δ on the slice ∩ ker Q̃) − ½ log det(Q̃_SQ̃_S^T) + const. The slice operator has a gap of order L^{−2} in fine units (Poincaré inequality for axial gauge on a block of side L), that is, of order 1 in coarse units, uniformly in L. So π_L(P), the second-order kernel of log Z_L, is analytic in the COARSE momentum P = Lp with an L-independent radius. Gap: the uniform Poincaré constant for this tree on the 4D block is not written out.
Consequence. The plane-wave bias is a function of Lp, not of p or of L·Lp. Fixed Lp is the right comparison. Taking Lp to scale with L (fixed p) would compare different points of the analytic function and would add a spurious L-dependence.
4.2 The anchored ghost scale does not change this [P-sketch]. The ghost operator D^TD with λ = 0 at one point per block has its lowest eigenvalue at cap/L⁴ in fine units (cap = 1/G_4(0) ≈ 6.45 for the 4D lattice Laplacian), so its mass is √6.45/L = 2.54/L in coarse units (NUMERICS §7(e)). This scale goes to 0 as L grows. It is present in the "ghost" and "bord" parts separately. It cancels in their sum, by 4.1 (the sum equals the ghost-free tree-gauge expression). So it limits the grid (Ng must resolve 2.54/L in each part), not the Lp radius of the total.
4.3 Data [N]. β_1(Lp = 1) − β_1(Lp = 0.5) at converged or near-converged grids:

| L | 5 (Ng 12) | 7 (Ng 12) | 9 (Ng 24) | 11 (Ng 28) | 13 (Ng 8) |
|---|---|---|---|---|---|
| β(1) − β(0.5) | 0.0192 | 0.0195 | 0.0192 | 0.0186 | 0.0185 |

The difference is L-independent to 5 %. If the natural variable were p, it would fall like L^{−2} (by a factor 4.8 from L = 5 to 11). If it were the ghost scale L·Lp, it would grow. So the data confirm 4.1.
Lp → 0 per L (three points, fit a + bx² + dx⁴, x = Lp): L = 5: 0.74288; 7: 0.79045; 9: 0.81919; 11: 0.83537. Local slopes at Lp → 0: 0.141 (5 → 7), 0.114 (7 → 9), 0.081 (9 → 11). At Lp = 1: 0.070 (9 → 11), 0.034 (11 → 13, Ng 24 at L = 13). The two-point rule (4β(0.5) − β(1))/3 differs from the three-point fit by 0.0025 (L = 9) and 0.0038 (L = 11). Both rules give slopes within 0.01 of each other.
Verdict on (A) [P-sketch + N]: refuted. The code's quantity at fixed Lp is the right one, the Lp → 0 limit is done correctly, and no rescaling of Lp restores the slope c.
4.4 Other parts of (A) checked. (i) Order of limits: the code takes Ng → ∞, then Lp → 0, at fixed L; (F) with Step A takes f → 0 at fixed L. Same order [V]. (ii) Coefficient: both are the f² (equivalently P²) coefficient of the same per-coarse-cell log Z_L, related by R-026 (PI) [I, ledger status of (PI)]. (iii) Units: §6. So the code computes the quantity whose FINE part (F) controls. (F) does not control its coarse part.

## 5. Hypothesis (B): the expectation c log L + C is an unproved claim about B_c(L)

5.1 What is proved about the single-step kernel [V]. U3_GAUSSIAN_RG Theorem 4.1: at the trivial background the level-j quadratic form equals the single block-M Schur complement (M = L^j), and it converges with |∂_K^α(Δ_M − Δ_∞)| ≤ C_mM^{−2}, "L enters only through M". So at f = 0 the single-step kernel converges as L → ∞. B_c(L) needs more: the first and second background variations of the kernel (the soft vertices Δ^{(1)}, Δ^{(2)}). U3_GAUSSIAN_RG Lemma 5.1 states their convergence for the COMPOSED family and marks it OPEN. In the composed family "the lower levels see a field smaller by L^{−2(j−i)}", so the background dressing of each averaging step acts at a fixed block size L. In the single-step family the whole dressing sits in one averaging step whose block size L grows. No file treats that case.
5.2 New diagnostic [N] (/tmp/b1diag/kern0.py, Mac, 2 min; umk_beta1 building blocks, no code change). At f = 0, the covariance of the linearized CMP 109 constraint under the fine Feynman propagator, M(K) = Σ_l q(k_l)G(k_l)q(k_l)^†, colour 0, coarse momentum K along e_0. Normalized by L⁴·3.974 (the value of K̂²M_11 at small K, the same for L = 3 … 11 to 1e−3), so the transverse entry → 1/K̂² at small K.

| L | 3 | 5 | 7 | 9 | 11 |
|---|---|---|---|---|---|
| transverse M_11, K = 2.4 | 0.1405 | 0.1286 | 0.1253 | 0.1240 | 0.1233 |
| longitudinal M_00, K = 2.4 | 0.0550 | 0.0670 | 0.0901 | 0.1177 | 0.1477 |
| longitudinal M_00, K = 1.2 | 0.1673 | 0.1699 | 0.1779 | 0.1878 | 0.1987 |
| K̂²·M_00, K = 0.2 | 0.2508 | 0.2507 | 0.2507 | 0.2507 | 0.2507 |

Reading. The transverse (gauge-invariant) part converges, at a rate near L^{−2} (consistent with Theorem 4.1). The longitudinal part gains a term ≈ s(L)·K̂² with s(L) growing linearly in L (increments of M_00 at K = 2.4: 0.012, 0.023, 0.028, 0.030 per ΔL = 2; at K = 1.2 the increments scale with K̂² as expected). The longitudinal direction at K ∥ e_0 is the coarse gauge direction.
Mechanism [P for the linear abelian structure, I for its size]. Write the linearized average as Q̃B(c) = θ_c(B) + φ_y(B) − φ_{y′}(B), c = ⟨y, y′⟩. θ_c is the average of straight lines [x, x + Le_ν] over x ∈ B(y), a smooth density. φ_y(B) = avg_{x∈B(y)} avg_Γ ∫_Γ B is the path fan from the anchor y; it is the same for all eight coarse bonds at y, so φ enters exactly as a coarse gauge transformation [P, from the definition: the Γ-family for bond ⟨y, y+Le_ν⟩ and the Γ′-family for ⟨y−Le_ν, y⟩ are both the paths from the anchor of y to the points of B(y)]. The fan's first legs run on the eight axis rays from the anchor with weight O(1) over length O(L). A line current of length L in 4D has a self-energy proportional to L in fine units. That is the linear growth in the table. At f = 0 it is invisible in gauge-invariant quantities.
At f ≠ 0 [I]. The CMP 109 average takes log U(loop_x) before averaging over x. Linearized at a background, the fan term enters as J(h_{c,x})·X_Γ(x), J = d log at the background holonomy h_{c,x} of the loop for bond c through x. J(h) = 1 + O(flux of the loop), and the loop depends on the bond direction ν. So at O(f) the fan coupling is no longer the same for all bonds at y, and the O(L) self-energy is no longer confined to the coarse gauge direction D_c(V_f). A Schur complement with a gauge-direction block of size O(L) and an O(fL) mixing block gives terms of order f²L(N_2 − N_1N_1^T/s) in the physical block. Whether these cancel (by an exact covariance identity not found here) or survive is not decided. If they survive, B_c(L) does not converge, and the single-step expectation fails. If they cancel, B_c(L) converges by the mechanism of U3 Theorem 4.1, and the data must then be explained by a pre-asymptotic transient or a code error.
5.3 Fits to the data [N]. Residual r(L) = β_1(0) − c log L (Lp → 0): +0.145 (5), +0.068 (7), +0.003 (9), −0.056 (11); at L = 13 about −0.11 (Lp = 1 value 0.8621 at Ng 24, minus the Lp → 0 correction 0.021 measured at L = 11, minus c log 13 = 0.9529; grid error of Ng 24 = 1.85L not yet measured, sign: finer grids lower β). Local slopes of β_1: 0.141, 0.114, 0.081, then 0.034 (Lp = 1, 11 → 13). They fall monotonically away from c.
- c log L + C + d/L^α (any α > 0, one term): local slope c − αd L^{−α} moves monotonically TOWARD c. The data move away. Excluded.
- c log L + C + d_1/L + d_2/L²: matching the slopes at L ≈ 6 and 12 needs d_1 = 6.7, d_2 = 32 and predicts 0.03 at L ≈ 8 against 0.119 measured. Excluded as a description; the coefficients are also far too large for a kernel converging at rate L^{−2}.
- s log L + C with a constant s: fits L = 9–13 with s ≈ 0.06, not L = 5–9 (s ≈ 0.13). No constant slope fits all five points.
- (log L)²/L-type corrections give a slope minimum near L ≈ 30 and then a return to c. They can fit the trend, but no mechanism is known for them, and they are not tested.
So the data are not of the form c log L + C + (small power corrections) for 5 ≤ L ≤ 13. The asymptotic form of β_1(L) is not determined by the data. The candidates are: (i) c log L + C after a long transient (needs B_c(L) to converge; slope must turn up beyond L = 13); (ii) c′ log L + C with c′ < c (B_c ∝ (c − c′) log L, for example from log-divergent self-energies of the fan's 2D quarter-plane legs); (iii) a growing B_c from O(L) leakage (§5.2) partly cancelled. None is proved.
5.4 Why the data still point away from (C). If (F) were false with the true fine coefficient c′, the COMPOSED family would have β_∞ = c′ log L (BETA_FP_H Theorem 3.1 holds with c′). L = 2, composed, Ng = 8: β_2 ≈ 0.32 (NUMERICS §6), against c log 2 = 0.258. A c′ near the single-step slopes (0.03–0.14) would need d_1 − d_2 ≥ 0.22 at j = 1, 2, which is possible but unforced. The direct check is stronger: SOURCES_T2_MPT_STEPC §7.2 measures the large-t slope of the α² heat-trace coefficient of the actual lattice charged operator A′_α: c_A(t)/t = 0.2917 at t = 80 against 11/(12π) = 0.291784. That number is the log coefficient of (F) itself [N, independent of all block codes].
5.5 Composed versus single step at the same Λ [N, caveat: even L, coarse grids]. At Λ = 4: one step of L = 4 gives 0.757 (Ng 6, Lp 0.8); two composed steps of L = 2 give 0.953 (Ng 8, Lp 0.4). Their fine brackets are identical (Fine depends on Λ only), and at f = 0 their kernels coincide (U3 Prop. 1.5: Δ_j = S_{L^j}Δ_0). So the difference 0.196 is a difference of soft-vertex brackets, b(single 4, composed 2 × 2) = 0.196. The soft vertices are strongly family dependent already at Λ = 4. This is consistent with §5.2–§5.3: the single-step family's slope deficit sits in the soft vertices.
Verdict on (B) [P for the reduction, N for the contradiction at L ≤ 13, I for the asymptotics]: the expectation is a statement about the single-step soft vertices; it is unproved; the data contradict it in the measured range; its asymptotic truth is open.

## 6. Normalization (NUMERICS §4–§7): c and the code's β_1 use the same units

6.1 Balaban units [P]. The Wilson action with N = 2 is (2N/g²)Σ_p(1 − ½ Re tr U_p). Balaban writes A = Σ_p(1 − ½ tr U_p) with coefficient 1/g_B², so 1/g_B² = 2N/g² = 4/g². Standard one-loop running: Δ(1/g²) = 2b_0 log L, b_0 = 11N/(48π²), so Δ(1/g²) = (11N/(24π²)) log L = 0.0929 log L (N = 2). Hence Δ(1/g_B²) = 2N·0.0929 log L = 0.3715 log L = (11N²/(12π²)) log L = c log L. This matches NUMERICS §2 (the corrected 2N/g², not the withdrawn N/(2g²)).
6.2 The ×4 factor [P]. B = B^aσ_a/2. For the probe A_1 = a cos(p x_0) in colour 3, the link is exp(i(a/2)cos(p x_0)σ_3), the (0,1)-plaquette angle is θ = (a/2)[cos p(x_0 + 1) − cos p x_0], and 1 − ½ tr U_p = 1 − cos θ ≈ θ²/2. The x_0-average of [cos p(x_0+1) − cos p x_0]² is 1 − cos p. So the action per fine site is a²(1 − cos p)/8 and its a²-second derivative is (1 − cos p)/4. With D = β_1·A_coarse and A_coarse = A_fine + O((Lp)²) per coarse cell (the averaging form factor is 1 − O((Lp)²)), β_1 = 4w/(L⁴(1 − cos p)) + O((Lp)²). This is the code's formula.
6.3 Same units for (F) [V + P]. SOURCES_T2_MPT_STEPC uses the background exp(iFσ_3) with charge-2 holonomy α = 2|φ| and gives n_2c_2 = 11/(12π²), c = 2c_2, n_2 = ½ (one (0,1)-plaquette per cell with 1 − cos F ≈ F²/2). So (F) is stated per unit of A_coarse, the same unit as the code's β_1.
6.4 Independent checks [N]. Abelian sector: the code gives 0.249600000 = (1 − 5^{−4})/4 at L = 5 and 20/81 at L = 3, the exact values of U1_INFINITE_LATTICE Prop. 9.1 in the same units. Composed L = 2: β_2 ≈ 0.32 against c log 2 = 0.258; a factor-4 error would give 0.064 or 1.03. So there is no factor-of-4 or factor-of-2N mismatch. The tension is not a units error.

## 7. Hypothesis (C): is (F) or its proof wrong? No failing step found.

The β_1 data cannot reach (F) (Corollary 3.3). I checked the steps where an L-dependent error could enter the comparison anyway:
- Step A, Fine(Λ; f) = Λ⁴F_W(f/Λ²) [P]: a rescaling identity of one fine-lattice functional. It is family independent.
- (3.1′) with λ = (L/L′)^{−2} [V, verified]: any fixed λ > 0 is allowed.
- BETA_FP_H (1.1) at Λ = L [V, verified identity]: holds for one step, with Δ_1^{(L)}(f) the one-step tree Hessian.
- R-026 (PI) [I, ledger status reduced]: §4.3 data agree with its scaling.
No step uses a property of the composed family or a limit in L. So the slope deficit is not a sign of a failure of R-027 or its proof. Verdict on (C): not supported [P for the logic, N for the independent (F) check of §5.4].
Remaining code risk [I]. The non-abelian averaging profile is validated against ym_momentum at L = 2, 3, 4 (UMK_BETA1 §7) and against the JAX Jacobian of the nonlinear average at L = 3; the arb code reproduces the float code at L = 3, 5, 13 per K. Gauge covariance (pure-gauge w = 0) is checked at L = 3, 4. No independent non-abelian check exists for L ≥ 5. A code error that keeps gauge covariance would define a different, still covariant, average; Corollary 3.2 would apply to it in the same way.
Grid risk [N]. The Ng = 8 → converged corrections are −0.006 (L = 7), −0.010 (9), −0.012 (11), −0.014 (13, Ng 24). Finer grids lower β_1 by more at larger L. So the grid cannot restore the slope; it lowers it further.
