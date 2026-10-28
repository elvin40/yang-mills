# BETA_FP_PW: β_∞ = c log L from plane waves only (no constant field, no Landau levels)

Written 2026-10-27 (Claude, Opus 5.5). Read: BETA_FP §1.1–1.2, §3, §4; BETA_FP_LEMMA43 (all) and its VERIFY; BETA_FP_H and its VERIFY; BETA_FP_M §0–§3; numerics/NUMERICS §5–6; U3_AW §3; U3_LEMMA51_R23 §3c (line 123); U3_GAUSSIAN_RG §5–§7; reports/ONLINE_SWEEP §1.2, §5, §8 items 2 and 5; reports/o3_continuum.txt Lemma 6.1. Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and ONLINE_SWEEP §2 not read. No existing file edited. No numerics run; §6 uses existing numbers only. Tags: [proved here], [cited], [argued] (argument written, not a full proof), [hypothesis], [open].

(Sections are appended as the work proceeds.)

## 0. Headline
- Idea. Fix the coarse momentum θ > 0. Compare the composed quantity at levels k and k + 1 at the same θ. Let k → ∞ first and θ → 0 last. The massive constrained side gives the uniformity in k (Lemma 1.3: |S(θ; L^k) − S_k| ≤ C_Uθ²/(L² − 1), from a per-level p² bound (U)). The massless coarse side is then needed only at fixed θ > 0, where it has no infrared problem.
- So the route needs no exchange of the limits P → 0 and Λ → ∞ (no Moore–Osgood, no IR weights), no constant field, no Landau levels, no (M), no (W), and no constant-field symbols of Lemma 5.1 for the value.
- Prop. 2.1 at the plane wave (Prop. 2.2 here, proved): log Z = Fine + ½ log det S_K − ½ log det Y holds exactly at every background. The plane wave is not stationary, so Y ≠ D_c^TS_KD_c; the difference (gauge defect) is linear in HD = O(ap²) and is zero at stationary backgrounds.
- Theorem 3.1 (A, limit form): β_k(0) → c log L, c = 11N²/(12π²), given (U), LW (5.7), and convergence in k of the coarse remainder Γ^{ex}(θ; L^k) at fixed θ along a sequence θ_n → 0. Existence of β_∞ is part of the conclusion.
- Theorem 3.2 (B, O(3) Lemma 6.1 form): S_k = c k log L + O(1) given (U), LW (5.7), and boundedness in k of Γ^{ex}(θ_*; L^k) at one θ_*. This needs uniform bounds only, no convergence lemma. With existence of β_∞ (BETA_FP Thm 4.1 Step 2), β_∞ = c log L, and all window sums Σ_{j=k}^{K}(β_j − c log L) are bounded.
- Remaining analytic content: (U) (uniform analyticity in the transfer p of the one-step plane-wave increments) and (Cθ)/(Bθ) (fixed-θ convergence or bounds of the coarse remainder, including the gauge defect). Both are [hypothesis]/[argued]; neither is a spectral statement.

## 1. The plane-wave increment and the uniform p² bound

### 1.1 Definitions
Composed family: Λ = L^k, composed L-step Balaban averaging, fine spacing 1 (BETA_FP §1.1; the telescoping needs one family, BETA_FP_LEMMA43 §5). Background: the fine transverse σ_3 wave A_2(x) = a cos(p_0x_1) (NUMERICS §5). Coarse momentum θ := L^kp_0 (level-k units). At level j the background is a σ_3 wave with transfer p_j = L^jp_0 and polarization v_j (BETA_FP §1.1 Remark (b)). H := the raw Wilson Hessian at the fine wave U_0, with no Lagrange-multiplier term. This is what the code uses.

Definition 1.1. β_{j+1}(p) := the a²-coefficient of the j-th bracket of BETA_FP (1.2), computed from the level-j data at transfer p_j = p, divided by the fine tree coefficient L^{4(j+1)}(1 − cos(pL^{−j}))/4 per level-(j+1) cell (BETA_FP (1.4)). β_{j+1}(0) := lim_{p→0} β_{j+1}(p) (the quantity of BETA_FP §3 and NUMERICS §6). For k ≥ 1:

  S(θ; L^k) := Σ_{j=0}^{k−1} β_{j+1}(θL^{j−k}),   S_k := lim_{θ→0} S(θ; L^k) = Σ_{j=1}^{k} β_j(0),   S_{k+1} − S_k = β_{k+1}(0).   (1.1)

Fact 1.2 [cited: BETA_FP Prop. 1.1, proof steps (ii)–(iv)]. S(θ; L^k) is the a²-coefficient (fine-tree normalized) of the composed one-loop integral in the composite gauge F = (D_{(1)}^T, D_{(2)}^TQ̃_1, …). Steps (ii)–(iv) (Gaussian composition) are algebraic and hold for any fine quadratic form, so (1.1) is an exact identity at every θ. Step (i) (change from the composite gauge to the D_k^T gauge of BETA_FP (1.1)) uses Δ_0D_k = 0. At the plane wave Δ_0D_k = HD_k = O(ap_0²) ≠ 0. So the recursion value (1.2) and the direct composed value (1.1) can differ by a gauge-fixing defect 𝔡_gf(θ; L^k). Here S is defined by the recursion (1.2). Data: at p_0 = 0.2, L = 2, two levels, the direct code gives 0.953 (Ng = 8) and the recursion gives β_1(0.2) + β_2(0.4) = 0.6307 + 0.3288 = 0.9595 (N = 8, Ng = 8). The difference 0.007 is below the N = 8 tabulation error (≈ 7% of β_2, BETA_FP §3). So 𝔡_gf is not resolved by the data.

### 1.2 The hypothesis (U) and the uniform p² bound
(U) [hypothesis]. There are p_* > 0 and C_U < ∞ with |β_{j+1}(p) − β_{j+1}(0)| ≤ C_U p² for all j ≥ 0 and 0 < p ≤ p_*.

Why (U) is the right kind of input [argued]. β_{j+1}(p) is a one-step massive quantity: w_j(p) is a BZ average of traces of products of the inverse one-step bordered matrix 𝔅_j(K), 𝔅_j(K + p)^{−1}, and the vertices (U3 (6.1)). Suppose (i) the level-j plane-wave data (D0, Tp, Tm, D2) are analytic in (K, p) on a fixed complex neighbourhood of BZ × [−p_*, p_*], with bounds uniform in j, and (ii) the one-step bordered matrix is uniformly invertible there (one-step O6, U3_REPAIRS, plus a Neumann series in a). Then w_j is analytic in p with uniform bounds. β_{j+1} is even in p (reflection; odd L, centered blocks). Cauchy estimates give (U). Input (i) is the uniform-bounds input that U3 Thm 7.1 cites to Balaban (CMP 95 Prop. 1.1, CMP 96 Prop. 2.5–2.6, CMP 99 Thm 3.1), upgraded from C² to analytic in p. It is not proved here. It does not need convergence of the data. The uniformity must come per level: the composed constrained operator has no uniform gap in coarse units (U3_LEMMA51_R23 O4: ghost gap 4M^{−6}).

Lemma 1.3 [proved here, given (U)]. For 0 < θ ≤ p_* and every k ≥ 1,

  |S(θ; L^k) − S_k| ≤ C_U θ² / (L² − 1).   (1.2)

Proof. By (1.1), S(θ; L^k) − S_k = Σ_{j=0}^{k−1}[β_{j+1}(θL^{j−k}) − β_{j+1}(0)]. Each p_j = θL^{j−k} ≤ θL^{−1} ≤ p_*. By (U) the sum is at most C_Uθ² Σ_{m=1}^{k} L^{−2m} ≤ C_Uθ²/(L² − 1). ∎

Reading. The top level (j = k − 1, transfer θ/L) carries the bound; lower levels see a smaller transfer and contribute a geometric tail. This is the only place where uniformity in k enters the route. It sits on the massive side.

Data check [existing numbers]. L = 2, one step (Ng = 12): β_1(p) = 0.6299, 0.6307, 0.6340 at p = 0.1, 0.2, 0.4; the 0.2/0.4 pair gives C ≈ 0.028. L = 3 (Ng = 8): 0.6692, 0.6893 at p = 0.2, 0.4; C ≈ 0.17. L = 2, level 1 (N = 8, Ng = 8): 0.3412, 0.3288 at p_1 = 0.2, 0.4; C ≈ −0.10 (Ng = 8 grid error ≈ +1% at p = 0.2). So |C_U| ≲ 0.2 at the levels computed. For L = 2 this gives |S(θ; L^k) − S_k| ≤ 0.07θ².

