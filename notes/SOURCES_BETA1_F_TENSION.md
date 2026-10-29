# SOURCES_BETA1_F_TENSION — single-step β_1(L) against R-027 (F)

Date 2026-10-28. Ids follow IDS.md. Tags: [P] proved here, [P-sketch] proof outline with a named gap, [N] numerics, [I] interpretation or unproved claim, [V] read verbatim in a project file.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not opened and were excluded from every search.
Read: SOURCES_T2_MPT_STEPC.md (all), SOURCES_T2_F_STEPB.md (all), BETA_FP_H.md (§1, §3), numerics/NUMERICS.md (all), numerics/BETA1_SLOPE_STAGE.md, numerics/BETA1_BOX_RUN.md (head), UMK_BETA1.md §7–§8, numerics/umk_beta1.py (all), numerics/beta1_box/*.sh, the argument parser of t2_fstepb_verify_umk_gpu.py, ym_momentum.py (outline), IDS.md, README line 49.
New computation: one Mac diagnostic (2 min total), §5.2. The script was temporary and is deleted; it called umk_beta1.consts, avg_profile (key "0", p = 0), csym, hess_sym, d0 and formed M(K) = Σ_l q(k_l)(Δ_0 + DD^†)^{−1}(k_l)q(k_l)^†.

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

Why (A) fails [P-sketch + N, §4]. Lp is the coarse momentum. The code holds Lp fixed, so the fine momentum is p = Lp/L. This is the correct comparison. The constrained total is analytic in the coarse momentum with an L-uniform radius. The data confirm this: β_1(Lp = 1) − β_1(Lp = 0.5) = 0.0192, 0.0195, 0.0192, 0.0186, 0.0185 at L = 5, 7, 9, 11, 13. The Lp → 0 extrapolation moves each β_1 by ≤ 0.004 from its Lp = 0.5 value and changes no slope by more than 0.01.

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
5.2 New diagnostic [N] (temporary script, Mac, 2 min; umk_beta1 building blocks, no code change). At f = 0, the covariance of the linearized CMP 109 constraint under the fine Feynman propagator, M(K) = Σ_l q(k_l)G(k_l)q(k_l)^†, colour 0, coarse momentum K along e_0. Normalized by L⁴·3.974 (the value of K̂²M_11 at small K, the same for L = 3 … 11 to 1e−3), so the transverse entry → 1/K̂² at small K.

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

## 8. What must change (proposed text; this file edits nothing)

TRUST_LEDGER R-027 (F). No status change: PROVED [verified] stays. Add one sentence: "The single-step β_1(L) data do not test (F): by SOURCES_BETA1_F_TENSION Prop. 3.1, β_1(L) − β_1(L′) = c log(L/L′) − b(L, L′), where b depends only on the one-step tree kernels; the slope deficit at L ≤ 13 is a property of b (single-step soft vertices), not of (F)." Remove any text that lists the β_1 tension as a risk to R-027.
NUMERICS §7. (a) Replace (d) by: "The form c log L + C + o(1) holds if and only if the one-step coarse-bracket constant B_c(L) converges (SOURCES_BETA1_F_TENSION Cor. 3.2). This is unproved: U3_GAUSSIAN_RG Theorem 4.1 gives convergence at f = 0 only, and the soft-vertex statement (Lemma 5.1) is open and concerns the composed family." (b) Replace (e)'s "Likely cause [P]: … anchored ghost …" by: "The anchored ghost scale 2.54/L cancels between the ghost and border parts (tree-gauge argument, SOURCES_BETA1_F_TENSION §4.2); it sets the grid requirement, not the answer. Candidate cause [I]: the anchor path fan of the CMP 109 average carries a self-energy ∝ L (measured at f = 0 in the coarse gauge direction, §5.2), which the log-of-holonomy averaging may move out of the gauge direction at f ≠ 0." The "[P]" tag on the ghost explanation is not justified and must go. (c) Add the fine-grid table (L = 9 Ng 24, L = 11 Ng 28, L = 13 Ng 24) and the Lp → 0 values 0.81919 (9), 0.83537 (11). (d) Replace (f) by the run of §9 below; the converged-grid test of the old (f) is done, and its outcome is "the converged slopes still fall" (0.081 at 9 → 11, 0.034 at 11 → 13).
README line 49. Replace the data with the converged-grid values and state: "The tension is between the data and an unproved convergence assumption on the single-step coarse kernel; it is not a tension with R-027 (F), which controls only the fine bracket (SOURCES_BETA1_F_TENSION). Status: open [N]; mechanism [I]." Keep "does not refute or support R-027". Drop "decisive test (NUMERICS §7(f))" (that run has finished).
No change to BETA_FP_H Theorem 3.1 or to β_∞ = c log L. Theorem 3.1 is for fixed L; it needs the composed soft vertices (U3 Lemma 5.1), whose dressing acts at fixed block size per step. The single-step mechanism of §5.2 does not grow along j at fixed L.
(The last sentence is [I]: at fixed L each composed step has a fan of fixed size L in its own units, so the leakage per step is bounded in j; not proved.)

## 9. The run that decides between the two readings of (B)

The β_1 runs cannot decide the asymptotics, because they measure only b(L, L′) (Prop. 3.1). The deciding quantity is the soft vertex itself.
Run S2 (soft-vertex growth). Tree level only, no loop.
- Quantity: t(L) := e^† Δ_1^{(L),(2)}(K; Lp) e, the a²-coefficient of the one-step tree Hessian at the plane-wave background (pol 1, colour 3, coarse momentum Lp along e_0), restricted to coarse fluctuation momentum K_c = (0, 0, 1.2, 0), charged colour 0, polarization e = e_3 (transverse to K and to the probe). Δ_1^{(L)}(a) = Schur complement (Q̃_aG_aQ̃_a^†)^{−1} on the coarse transverse subspace, with Q̃_a from avg_profile keys "0", "+", "−", "2" and G_a the fine Feynman propagator expanded to a² with hess_blocks (b0, bp, b2) and dsym, exactly as Umk.terms builds them (the K ↔ K ± p umklapp coupling as in "a", "bb", "cc"). Also record the same entry for the gauge direction e ∥ K, and the mixing entry.
- Parameters: L = 3, 5, 7, 9, 11, 13; Lp = 0.5 and 1.0; extrapolate Lp → 0 by the two-point rule. One K point per L, no grid.
- Cost: the profile build dominates (measured in §5.2: 0.1 s, 1.9 s, 7.4 s, 25 s, 89 s for L = 3 … 11 including four K points; L = 13 estimated 4–6 min). Mac, minute scale, about 10 min in total. Needs about 60 new lines; no existing file changes.
- Expected outcome if the single-step expectation holds (B_c(L) converges): t(L) converges like the transverse entry of §5.2, |t(L) − t(L−2)| falling roughly like L^{−3}, gauge-mixing entry bounded.
- Expected outcome if (B) holds in the strong form: the mixing entry grows ∝ L (O(fL) leakage of the fan self-energy out of the gauge direction), and t(L) after the Schur step grows ∝ L or ∝ log L. Then B_c(L) does not converge, and the single-step form is β_1(L) = c log L − B_c(L) + B with a growing B_c.
- Control: at a = 0 the run must reproduce the §5.2 table (transverse 0.1233 at L = 11, K = 2.4). The pure-gauge probe (kind "gauge") must give t = 0 to 1e−12.
Follow-up (only if S2 shows convergence). Then (B) in the weak form remains (slow transient) or the code is wrong. Test the identity (0.1) directly: compute the one-loop coarse bracket with the tree kernels from S2 on the coarse lattice at Lp = 0.5 for L = 9, 11 (box, Ng = 2.5L, comparable to the β_1 runs, about one day on the GPU unit), and compare its difference with b_data(9, 11) = c log(11/9) − 0.0162 = 0.058 (Lp → 0). Agreement confirms the code and the transient; disagreement locates an error in the code or in (1.1)/(PI) for one step.
Pending box points (L = 13, Ng 24 at Lp 0.5, 0.25; Ng 28 at Lp 1.0). They refine b(11, 13). Expected under every reading: β_1(13, Ng 28, Lp 1) ≤ 0.8621 (finer grids lower β), so the 11 → 13 slope stays ≤ 0.034. They cannot restore c.

## 10. Ledger of this file

- [V] R-027 statement and proof chain (L-090, L-060, L-112, L-160, H-137); BETA_FP_H (1.1), (3.1), Theorem 3.1; U3_GAUSSIAN_RG Theorem 4.1 and Lemma 5.1 (open); code semantics of p, Lp, β, grid (§2).
- [P] Prop. 3.1 (slope identity), Cor. 3.2 (expectation ⇔ convergence of B_c(L)), Cor. 3.3 (β_1 data cannot refute (F)); §6 units (1/g_B² = 2N/g², the ×4 factor, n_2 = ½); the fan term φ_y is a coarse gauge transformation at f = 0 (§5.2).
- [P-sketch] §4.1 analyticity of π_L in Lp with an L-uniform radius (gap: uniform Poincaré constant for the tree gauge); §4.2 cancellation of the anchored ghost scale in the total.
- [N] §4.3 Lp-difference L-independent (0.0185–0.0195); slopes 0.141, 0.114, 0.081 (Lp → 0), 0.034 (Lp = 1, 11 → 13); §5.2 transverse constraint covariance converges, longitudinal grows ∝ L; §5.5 single (0.757) versus composed (0.953) at Λ = 4; §6.4 abelian exact values.
- [I] §5.2 leakage at f ≠ 0; §5.3 candidate asymptotic forms; §8 last sentence; the code-risk paragraph of §7.
- Not done: a verifier pass on this file. Run S2 is done, §11.

STATUS: COMPLETE

## 11. Run S2, done on the Mac (2026-10-28, 9 min in total; temporary scripts, deleted after use)

What was computed. The code's own one-step matrices from umk_beta1.Umk (no change to any file), at one coarse momentum per entry, Lp = 0.5, L = 3, 5, 7, 9, 11, 13. Normalization: per-K a²-coefficients divided by L² (the coarse amplitude is L·a, so this is the coarse normalization; β = (8/Lp²)·⟨·⟩ over the coarse BZ).
(a) Mixing channels. S_1, S_2 = J − Σ_l E A^{−1}E^† (the bordered constraint block in fibres K and K+p), X = the O(a) coupling between them (the "X" of umk_beta1.taus). At a = 0, per colour, S splits exactly into three transverse modes and a two-dimensional gauge + auxiliary pair (checked from the eigenvectors). The pair contains one small eigenvalue λ_s, the inverse of the O(L) fan self-energy of §5.2.
(b) Split of the per-K border term into its fine part (tr A^{−1}A″ − 2 tr A_2^{−1}aA_1^{−1}a^†) and its constraint part (border minus fine), at K_1 = (0, 0, 1.2, 0), K_2 = (0, 0.6, 1.2, 0), K_3 = (1.5, 0, 0.8, 2.0) (coarse units).

Results [N].

| L | 3 | 5 | 7 | 9 | 11 | 13 |
|---|---|---|---|---|---|---|
| λ_s·L (K_1) | 0.249 | 0.276 | 0.328 | 0.381 | — | — |
| mixing term, all channels (K_1) | −0.6049 | −0.6229 | −0.6210 | −0.6117 | — | — |
| part routed through λ_s (K_1) | −0.930 | −0.948 | −0.921 | −0.883 | — | — |
| constraint part, K_1 | −3.4866 | −2.9933 | −2.8152 | −2.7348 | −2.6921 | −2.6668 |
| constraint part, K_2 | −1.6604 | −1.5860 | −1.5650 | −1.5561 | −1.5513 | −1.5483 |
| constraint part, K_3 | −1.1654 | −1.1815 | −1.1895 | −1.1920 | −1.1922 | −1.1913 |
| fine part, K_1 / K_2 / K_3 | 4.822 / 2.214 / 1.449 | 4.332 / 1.866 / 0.999 | 4.207 / 1.777 / 0.880 | 4.164 / 1.746 / 0.838 | 4.142 / 1.731 / 0.817 | 4.129 / 1.722 / 0.804 |
| ghost, K_1 / K_2 / K_3 | 0.947 / 0.573 / 0.340 | 1.102 / 0.574 / 0.255 | 1.172 / 0.579 / 0.233 | 1.207 / 0.583 / 0.226 | 1.226 / 0.586 / 0.223 | 1.237 / 0.587 / 0.222 |

Reading.
- Settled at these three K, L ≤ 13 [N]: no term grows with L. The constraint part at K_1 converges like A + 10/L² (the increments divided by the increments of 1/L² are 6.9, 9.2, 9.9, 10.7, 10.4); K_2 and K_3 converge faster. The mixing through the small gauge mode is bounded (λ_s falls more slowly than 1/L, and the coupling into it falls to compensate). So the O(fL) leakage of §5.2 does not occur: the strong reading of (B) (B_c(L) driven by a per-step term growing like L or log L at generic momenta) is refuted in the measured range.
- Consequence [P from the data + the identity]. The per-K integrands converge at fixed coarse K, but the BZ-integrated β_1 still has slope ≈ 0.03–0.08. So the L-dependence of B_c(L) sits in a K-region that shrinks with L. The only L-dependent coarse scale in the problem is the anchored-ghost scale 2.54/L (§4.2), where the ghost and border parts are separately singular and cancel only in their sum. Per-K changes 11 → 13 of the total, converted to β units, are +0.17, +0.15, +0.14 at K_1, K_2, K_3, above the c·log(13/11) = 0.062 the expectation needs, so the measured deficit must come from |K| ≲ O(1/L) [N + P]. Caveat: per-K integrands are defined only up to a p-shift that integrates to zero (UMK_BETA1 §7); a single K is not gauge-free, but a growth ∝ L could not hide in such a shift at three unrelated K.
- Supported reading: the weak reading of (B). The single-step soft vertices converge at generic momenta; whether B_c(L) converges is decided by the region |K| ~ 2.54/L, where both a true slow transient and a residual quadrature error of the split pieces are possible.
- Still unproved: the convergence of B_c(L) (equivalently b(L, L′) → 0, Cor. 3.2).
Next run (Mac, minutes): the same per-K split at K = (κ/L)(0, 0, 1, 0), κ = 1, 2.5, 5, 10, L = 5 … 13. Under a transient the small-K integrand, as a function of κ, converges in L; under a genuine non-convergence it keeps a κ-profile of fixed height ~ log L.

## 12. Does the coarse-bracket term enter the per-level increments β_j, and does it cancel in β_∞?

12.1 The identity at level j [P, relative to BETA_FP_H (1.1) at Λ = L^j (verified identity, BETA_FP_LEMMA43 Prop. 2.1 + VERIFY), R-026 (PI), L-090].
Fix odd L. Write 𝒞(L^j) for the constant-field coefficient of log Z after j composed steps. R2_TELESCOPING §2.2 and §3 (Proposition 3.1, exact Gaussian telescoping, verified in R2_VERIFY) give Σ_{i≤j} β_i(0) = 𝒞(L^j). (1.1) at Λ = L^j, with the same proof as Prop. 3.1, gives

  𝒞(L^j) = c·j log L + B − B_c^{comp}(j),   B_c^{comp}(j) := constant of Γ_c(L^j; f)/(n_2f²) for the COMPOSED tree kernel Δ_j(f),   (12.1)
  β_{j+1}(0) = c log L − b_j,   b_j := B_c^{comp}(j+1) − B_c^{comp}(j).   (12.2)

So yes: the coarse-bracket term enters every increment, as b_j. It is the same kind of object as b(L, L′) of (0.1), but along the composed family at fixed L (index j), not along the single-step family (index L). At j = 0 → 1 the two coincide: β_1(0) = c log L − b_0 with b_0 = B_c(L) − B_c^{comp}(0), so the single-step data measure b_0 at each L.
12.2 Cancellation in β_∞ [P for the logic]. From (12.2): β_∞ := lim β_{j+1}(0) exists and equals c log L if and only if b_j → 0, that is, iff B_c^{comp}(j+1) − B_c^{comp}(j) → 0. A sufficient condition is convergence of B_c^{comp}(j) as j → ∞, which follows from convergence of the composed tree kernels and their two soft vertices (U3_GAUSSIAN_RG Theorem 4.1 for the kernel at f = 0, proved; Lemma 5.1 for the soft vertices, OPEN) together with continuity of the coarse bracket in those data (U3 Theorem 6.1). This is exactly the input list of BETA_FP Theorem 4.1 and of BETA_FP_H Theorem 3.1 ((H′), (M)), and BETA_FP_LEMMA43 (ii)–(iii), hypothesis (H). The reduction "β_∞ = c log L ⇐ Lemma 4.3 + composed soft-vertex convergence" stands unchanged. It was never a consequence of R-027 alone.
12.3 What the single-step data say about b_j [P + I]. Logically nothing: b_j (fixed L, j → ∞) and b(L, L′) (j = 1, L → ∞) are different sequences. The single-step deficit measures how B_c(L) moves with the block size of ONE averaging step. In the composed family each step has the same block size L in its own units, and the background of step i is weaker by L^{−2(j−i)} (U3_GAUSSIAN_RG §5.3(b)), so the per-step structure that moves B_c(L) in L is held fixed along j [I: the mechanism is not identified, §11; this sentence assumes it is a per-step property]. The run of §11 found no term that grows with L, so no growing quantity exists that could pass from the single-step family into b_j [N, three K points, L ≤ 13].
12.4 What the main chain uses [V]. Target 1 Route K does not use β_∞. L-009 (Theorem K) gives window bounds Σ_{i=k+1}^{K} β_i(0) = b(K − k) + O(R), b = c log L, from (H2)/R-025 and R-026–R-030 (TRUST_LEDGER §3 item 2). By (12.1) this needs only sup_j |B_c^{comp}(j)| < ∞ (the remainder R bounds b_k + … + b_{K−1} = B_c^{comp}(K) − B_c^{comp}(k)), not convergence. L-005 (Lemma D″) uses b and R only. The tension does not bear on these.

12.5 Every statement that uses β_∞ = c log L, and its status after this file.

| file / statement | use | valid? |
|---|---|---|
| R2_TELESCOPING (1.13), P4, Q3 | "expected" value, conditional on convergence of increments | stays valid as stated (conditional) |
| R2_TELESCOPING §5.4 Prop. 5.1(c) | option (c): convergence β_i → β_∞ > 0 | stays valid (one of three alternatives; (a), (b) do not use β_∞) |
| BETA_FP Theorem 4.1 (B1) | β_∞ = Φ(𝒟_∞) = c log L, conditional on U3 Thm 4.1, Lemma 5.1, Thm 6.1, Lemma 4.3 | stays valid (conditional); Lemma 5.1 open |
| BETA_FP_LEMMA43 headline (i)–(iii) | (i) exact split, proved; (ii)–(iii) reduced to (H) | stays valid; the "per-step ghost carries 2/11" heuristic is consistent with the single-step ghost slope 0.066 (§4.2 of this file) |
| BETA_FP_H Theorem 3.1, telescoping line | β_∞ = c log L given (H′), (PI), (F), (M) | stays valid; R-027 input proved; (M)/(H′) open |
| SOURCES_B10_SWEEP claim, paper/theorem2.tex Prop. 3.6 (l. 403) | |β_{j+1} − β_∞| ≤ C(1+j)²L^{−2j}, given V1, (A), (W) | stays valid (conditional); the value of β_∞ is not used |
| LEMMA_DPRIME (iii), paper/theorem2.tex L-004 (Lemma D′) l. 51, 66–75; THEOREM2_PROOF_v4 l. 59–77; SOURCES_T2_B7_CLAMP 4.3; SOURCES_T2_KUNIF_VERIFY Step 0 | hypothesis β_j → β_∞ > 0 (value not used) | stays valid as a hypothesis; used only for literal (0.31) at every K, which is outside the targets (TRUST_LEDGER l. 102) |
| L-005 (Lemma D″), INFINITE_VOLUME_IV12_VERIFY l. 10 | b = c log L with remainder R | stays valid: needs bounded B_c^{comp}(j) (§12.4), supplied by L-009 |
| paper/theorem2.tex l. 203, paper/appendix.tex l. 61 | Cesàro: κ_k = o(k) ⇔ β_∞ = c log L | stays valid (an equivalence; in the notation here κ_k = B_c^{comp}(k) − B) |
| paper/assembly.tex l. 162, ASSEMBLY B-T2.4 (l. 78, 197) | β_∞ = c log L replaced by window sums | stays valid; ASSEMBLY l. 78, 197 ("OPEN; skeleton") is older text and is superseded by assembly.tex |
| paper/assembly.tex l. 49 (two-sided envelope) | avoids β_j → β_∞ | stays valid |
| paper/sources.tex l. 515, paper/numerics.tex l. 161–162 | the β_1 tension | must be rewritten as in §8 and §13: the tension is with the single-step soft vertices, not with c |
| FABLE_HARD (W-iv) l. 147 | β_{k+1} ≈ β_∞ ≈ 0.3715 log L | descriptive only; stays, with "expected" |
| FABLE_HARD Theorem FD, window ξ_g = exp((g^{−2} − γ^{−2})/c + O(1)), c ≈ 0.3715 | presumes β_j → c log L | INVALID as stated (already CORRECTED, FABLE_HARD_VERIFY C-48/E10). The valid form is the two-sided bound of INFINITE_VOLUME_PLAN Lemma IV-ξ: (g^{−2} − γ^{−2})log L/B′ ≤ log ξ_g ≤ (g^{−2} − γ^{−2} + D′)log L/β. That form uses the window bounds of L-009 only and stays valid. The value c = 0.3715 in ξ_g holds only if b_j → 0 (§12.2) |
| INFINITE_VOLUME_PLAN l. 14 (0.3715 log L as the project value) | descriptive | stays, marked "expected, conditional on b_j → 0" |
| ALT_ROUTES l. 13–14, 78, 230 | ξ_g ≈ exp(1/(2b_0g²)) | heuristic scale only; stays |

Not read line by line: THEOREM2.md, THEOREM2_PROOF(_v2,_v3), their VERIFY files, U3_REPAIRS, INDEX, INBOX, PLAN; they use β_∞ only in the senses already listed (grep hits). No file found that derives a SINGLE-STEP slope from β_∞ or uses the single-step slope as an input.
Grades of §12: 12.1 [P rel. verified identities]; 12.2 [P]; 12.3 [P] for "logically independent", [I] for the transfer argument, [N] for the no-growth finding; 12.4 [V]; 12.5 [V] per row, by grep and short reads.

## 13. Exact replacement texts (supersede the proposals of §8)

13.1 Repository README (~/git/yang_mills/README.md), line 49. Replace the whole bullet by:
"- Numerics (floating point unless marked): single-step β_1(0)(L) = 0.7429, 0.7905, 0.8192, 0.8354 for L = 5, 7, 9, 11 (converged grids Ng ≥ 2.4L, Lp → 0 from Lp = 0.25, 0.5, 1), and 0.8621 at L = 13 (Ng = 24, Lp = 1) (numerics/NUMERICS.md §7). Local slopes 0.141, 0.114, 0.081, then 0.034 at Lp = 1 (11 → 13), against c = 11N²/(12π²) = 0.3715. Settled: the slope of β_1 equals c minus the L-derivative of B_c(L), the constant of the one-step coarse bracket; R-027 (F) fixes only the fine part, so these data neither refute nor support R-027 (SOURCES_BETA1_F_TENSION Prop. 3.1). Settled: fixed Lp is the right comparison, and no per-step term grows with L at generic momenta (§4, §11). Unproved: the convergence of B_c(L), which is what the expectation β_1(L) = c log L + C + o(1) asserts. β_∞ = c log L for the composed family is a separate conditional statement (BETA_FP_H Theorem 3.1); the main chain uses only window sums (L-009)."

13.2 numerics/NUMERICS.md §7(d). Replace the paragraph by:
"(d) Expected form, and its status. By SOURCES_BETA1_F_TENSION Prop. 3.1, exactly, β_1(L) − β_1(L′) = c log(L/L′) − [B_c(L) − B_c(L′)], where B_c(L) is the constant of the one-step coarse bracket (the constant-field one-loop of the tree kernel Δ_1^{(L)}). R-027 (F) gives the c log L; it says nothing about B_c(L). The form β_1(L) = c log L + C + o(1) holds if and only if B_c(L) converges. That convergence is unproved (U3_GAUSSIAN_RG Theorem 4.1 covers f = 0 only; the soft-vertex Lemma 5.1 is open and concerns the composed family). The measured local slopes fall away from c (0.141, 0.114, 0.081, then 0.034 at Lp = 1), so B_c(L) still moves by about 0.3 per unit log L at L ≈ 12. Run S2 (§11 of that file) shows that the per-momentum integrands converge like L^{−2} at generic coarse momenta; the L-dependence of B_c(L) therefore sits at |K| ≲ O(1/L), the anchored-ghost scale 2.54/L. Whether it is a slow transient or a non-convergence is open."
NUMERICS §7(f). Replace by:
"(f) Converged-grid test: done. L = 9 (Ng 24) and L = 11 (Ng 28) at Lp = 1, 0.5, 0.25; L = 13 (Ng 24, Lp = 1). Lp → 0: 0.81919 (L = 9), 0.83537 (L = 11). The converged slopes still fall (0.081 at 9 → 11; 0.034 at 11 → 13, Lp = 1). Finer grids lower β_1 more at larger L (Ng 8 → converged: −0.006, −0.010, −0.012, −0.014 at L = 7, 9, 11, 13), so the grid cannot restore c. The Lp-dependence β(1) − β(0.5) = 0.0185–0.0195 is L-independent, so fixed Lp is the right comparison. Next test (Mac, minutes): the per-K split of SOURCES_BETA1_F_TENSION §11 at K = (κ/L)(0, 0, 1, 0), κ = 1, 2.5, 5, 10, L = 5 … 13. Pending box points (L = 13, Lp 0.5, 0.25; Ng 28) refine b(11, 13) and cannot raise the slope."
Also in §7(e), delete "Likely cause [P]: …" through "… at large L." and insert: "The anchored ghost IR scale 2.54/L cancels between the ghost and border parts in the total (SOURCES_BETA1_F_TENSION §4.2 [P-sketch]); it sets the grid requirement and is where the L-dependence of B_c(L) is concentrated (§11 [N])."

13.3 TRUST_LEDGER R-027, the tension note. Replace the text from "Outside R-027 (F), open [N]:" up to and including "The tension bears on R-028 through BETA_FP_H Thm 3.1." by:
"Outside R-027 (F), open [N]: the single-step β_1(L) slope (converged grids: local slopes 0.141, 0.114, 0.081, 0.034 for L = 5 … 13, against c = 0.3715). Settled [P, SOURCES_BETA1_F_TENSION Prop. 3.1]: β_1(L) − β_1(L′) = c log(L/L′) − [B_c(L) − B_c(L′)], with B_c(L) the constant of the one-step coarse bracket; R-027 (F) controls only the c log term, so the β_1 data do not test R-027. Unproved: the convergence of B_c(L) (the single-step expectation). Per-step terms converge at generic momenta (§11 [N]). The tension does not bear on R-028 or on L-009 (Theorem K): those use the composed family at fixed L, where the coarse term enters as b_j = B_c^{comp}(j+1) − B_c^{comp}(j); Theorem K needs sup_j |B_c^{comp}(j)| < ∞ only, and β_∞ = c log L needs b_j → 0 (BETA_FP_H Theorem 3.1 inputs (H′), (M), open) (§12)."
Note: the old note says "bears on R-028 through BETA_FP_H Thm 3.1". §12.3 shows that link is not logical. The replacement removes it.
