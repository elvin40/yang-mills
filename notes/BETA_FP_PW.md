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

## 2. Prop. 2.1 in plane-wave form

### 2.1 The exact identity at any background
Notation as BETA_FP_LEMMA43 §2: X := D^TD (fine ghost, full group), K := H + DD^T (fine background-Feynman form at the wave), s := ι_a^TX^{−1}ι_a, S_K := (Q̃K^{−1}Q̃^T)^{−1}, G_c := K^{−1} − K^{−1}Q̃^TS_KQ̃K^{−1}, D_c the coarse covariant gradient at V = Ū(U_0). New: R := HD (the gauge defect of the Hessian; R = 0 iff the background is stationary, at the order used). At the wave R = O(ap_0²): HDλ = −ad(λ)^T∇A(U_0) and ∇A(U_0) = a p̂_0² (wave) + O(a³).

Proposition 2.2 [proved here]. Assume D of full column rank, Q̃ surjective, and X, K, s, Q̃K^{−1}Q̃^T invertible. Put N := 1 − D_a^TG_cD_a and Y := s^{−1}Ns^{−1}. Then for the direct (D_k^T-gauge) one-loop integral, exactly (constant 0),

  log det(D_k^TD_k) − ½ log|det Bord| = [log det X − ½ log|det K|] + ½ log|det S_K| − ½ log|det Y|.   (2.1)

Proof. Steps (a)–(c) of the proof of BETA_FP_LEMMA43 Prop. 2.1 do not use ΔD = 0: (a) Jacobi, log det(D_k^TD_k) = log det X + log det s; (b) the matrix determinant lemma on W = ker Q̃, det(K_D|_W) = det(K|_W)·det N with K_D = K − D_aD_a^T; (c) det(K|_W)det(Q̃Q̃^T) = det K / det S_K. So the left side is log det X + log det s − ½[log det K − log det S_K + log det N]. Write log det N = 2 log det s + log det Y. The log det s terms cancel. ∎

Lemma 2.3 (the defect of Y) [proved here]. Put Y_0 := D_c^TS_KD_c, c_1 := ι_a^TD^TK^{−1}RX^{−1}ι_a, c_2 := Q̃K^{−1}RX^{−1}ι_a. Then Y = Y_0 + 𝔡_Y with

  𝔡_Y = s^{−1}c_1s^{−1} − D_c^TS_Kc_2s^{−1} − s^{−1}c_2^TS_KD_c + s^{−1}c_2^TS_Kc_2s^{−1}.   (2.2)

Proof. KD = DX + R gives K^{−1}D = DX^{−1} − K^{−1}RX^{−1}. Hence D_a^TK^{−1}D_a = ι_a^TD^TDX^{−1}ι_a − c_1 = 1 − c_1. Exact covariance Q̃D = D_cι_a^T (at every background, BETA_FP_LEMMA43_VERIFY §4, lattice 9·10^{−16}) gives Q̃K^{−1}D_a = D_cs − c_2. So N = c_1 + (D_cs − c_2)^TS_K(D_cs − c_2). Multiply by s^{−1} on both sides. ∎
At R = 0, 𝔡_Y = 0 and (2.1) is (2.1) of BETA_FP_LEMMA43. So Prop. 2.2 is Prop. 2.1 with its one non-algebraic input isolated in 𝔡_Y.

Corollary 2.4 (split) [proved here; linear algebra of BETA_FP_LEMMA43 (e), which needs no ΔD = 0]. Let E be an orthonormal basis of (im D_c)^⊥ and Δ_T := (E^TQ̃K^{−1}Q̃^TE)^{−1}. Then

  log Z^{dir} = Fine − Γ_c^T − ½ log det(1 + Y_0^{−1}𝔡_Y),   Γ_c^T := ½ log det(D_c^TD_c) − ½ log det Δ_T,   (2.3)

where Fine := log det X − ½ log det K and Γ_c^T is the coarse Feynman-gauge one-loop log Z of the kernel Δ_T with coarse ghost D_c^TD_c.
Remark. Δ_T is the inverse transverse block of C := Q̃K^{−1}Q̃^T, the coarse covariance of the block average of the fine background-Feynman field. It is defined at any background. At R = 0 it equals E^TΔ_ΛE, the code's coarse kernel (BETA_FP_LEMMA43 (e)). At the wave the two differ at O(R); the coarse piece of (2.3) is Δ_T, not the recursion kernel.

### 2.2 Normalized form, and the cancellation of the two ln(1/p²)
Normalize every a²-coefficient per level-k cell by the fine tree coefficient (Definition 1.1). Then:
- Fine piece [cited: LW (5.7), normalization U1_VERIFY item 2; BETA_FP_LEMMA43 (3.1)]: Π̂(p) := 2Nν^{(1)}(p) = c_2 ln(1/p²) + κ_W^F + η(p), η(p) = O(p² ln p), c_2 = c/2, κ_W^F = 0.434197N² − ¼. It is evaluated at the fine momentum p = θ/Λ.
- Coarse remainder (exact, by definition): Γ^{ex}(θ; Λ) := Π̂(θ/Λ) − S(θ; Λ).
- By (2.3): Γ^{ex} = γ_T(θ; Λ) + 𝔡(θ; Λ), with γ_T the normalized a²-coefficient of Γ_c^T and 𝔡 := [normalized a²-coefficient of ½ log det(1 + Y_0^{−1}𝔡_Y)] + 𝔡_gf (Fact 1.2). 𝔡 = 0 at a stationary background.

Proposition 2.5 (log cancellation at fixed k) [proved here, given LW (5.7) and the finiteness of S_k]. For fixed k, as θ → 0,

  Γ^{ex}(θ; L^k) = c_2 ln(1/θ²) + ρ_k + o(1),   ρ_k := c k log L + κ_W^F − S_k.   (2.4)

Proof. S(θ; L^k) → S_k. Π̂(θL^{−k}) = c_2 ln(L^{2k}/θ²) + κ_W^F + η(θL^{−k}) and c_2 ln L^{2k} = c k log L. ∎
In fine units (p = θL^{−k}): the fine piece carries c_2 ln(1/p²); the coarse remainder carries c_2 ln(1/p²) − c k log L + ρ_k + o(1). The ln(1/p²) terms cancel. What remains as p → 0 is S_k = c k log L + κ_W^F − ρ_k, a function of k only. The coefficient c_2 of the coarse log is forced by the finiteness of S_k (as in BETA_FP_LEMMA43_VERIFY item 2). In the coarse theory it comes from the infrared of Δ_T: Maxwell coefficient exactly 1 (U3_AW Lemma M) and spin coupling τ_c (U3_AW Theorem W). This is interpretation only; §3 does not use it. ρ_k is BETA_FP_LEMMA43's ρ(L^k).

IR-cutoff reading (task item 3). Put Π_k(p) := S(pL^k; L^k) = Π̂(p) − Γ^{ex}(pL^k; L^k). This is the fine Wilson vacuum polarization with the composed block constraint acting as an infrared cutoff at μ_k = L^{−k}. Then S_k = Π_k(0) and β_{k+1}(0) = Π_{k+1}(0) − Π_k(0) exactly: a difference of two infinite-lattice vacuum-polarization coefficients with IR cutoffs L^{−k−1} and L^{−k}. If Γ^{ex}(P; L^k) → Γ^∞(P) as functions, then Π_k(p) ≈ Π̂(p) − Γ^∞(p/μ_k): one fixed IR profile, scaled by μ_k (scale covariance). Then Π_{k+1}(0) − Π_k(0) → lim_{P→0}[Γ^∞(P) − Γ^∞(LP)] = c_2 ln L² = c log L. This reading needs k → ∞ to commute with P → 0. That is the old (H) with IR weights (BETA_FP_LEMMA43 §4). §3 replaces it by fixed-θ statements.

## 3. The doubling identity at fixed coarse momentum, and the theorems

### 3.1 The identity
Identity 3.0 [proved here; exact]. For k ≥ 1 and 0 < θ ≤ p_*,

  β_{k+1}(0) = [Π̂(θL^{−k−1}) − Π̂(θL^{−k})] − [Γ^{ex}(θ; L^{k+1}) − Γ^{ex}(θ; L^k)] + r_k(θ),
  r_k(θ) := [S_{k+1} − S(θ; L^{k+1})] − [S_k − S(θ; L^k)].   (3.1)

Proof. Insert S(θ; L^m) = Π̂(θL^{−m}) − Γ^{ex}(θ; L^m) (definition) for m = k, k + 1 into β_{k+1}(0) = S_{k+1} − S_k. ∎
By LW (5.7) the first bracket is c_2 ln L² + η(θL^{−k−1}) − η(θL^{−k}) = c log L + o(1) as k → ∞: κ_W^F and every other fine "bulk" constant cancel. By Lemma 1.3, |r_k(θ)| ≤ 2C_Uθ²/(L² − 1) for all k. So

  |β_{k+1}(0) − c log L + [Γ^{ex}(θ; L^{k+1}) − Γ^{ex}(θ; L^k)]| ≤ |η(θL^{−k−1})| + |η(θL^{−k})| + 2C_Uθ²/(L² − 1).   (3.2)

This is the gauge analogue of the O(3) doubling difference (o3_continuum Lemma 6.1, "All extracted bulk scalars cancel in the doubling difference"). There, two tori of sides n and 2n with the same terminal layer are compared. Here, two UV cutoffs (fine momenta θL^{−k−1} and θL^{−k}) with the same terminal coarse geometry (block lattice and coarse momentum θ) are compared. The fine piece gives c log L; the terminal (coarse) pieces cancel in the limit.

### 3.2 Theorem A (limit form)
(Cθ) [hypothesis]. There is a sequence θ_n ↓ 0, θ_n ≤ p_*, such that for each n the sequence k ↦ Γ^{ex}(θ_n; L^k) converges.

Theorem 3.1 [proved here, given (U), (Cθ), LW (5.7)]. β_k(0) → c log L, c = 11N²/(12π²).

Proof. Fix n. In (3.2), η(p) → 0 as p → 0, and the Γ^{ex}-difference → 0 by (Cθ). So lim sup_k |β_{k+1}(0) − c log L| ≤ 2C_Uθ_n²/(L² − 1). Let n → ∞. ∎

Remarks. (a) Existence of β_∞ is part of the conclusion. BETA_FP Thm 4.1 Step 2 (continuity of Φ, convergence of 𝒟_j at p = 0) is not used. (b) No rate. A rate needs a rate in (Cθ) with explicit θ-dependence: if |Γ^{ex}(θ; L^{k+1}) − Γ^{ex}(θ; L^k)| ≤ ε_k(θ), then |β_{k+1}(0) − c log L| ≤ inf_θ[ε_k(θ) + Cθ² + 2 sup_{p≤θ}|η(p)|]. (c) The fine piece enters only through LW (5.7) at fine momenta tending to 0; no lattice-continuum comparison of the fine integrand is needed.

### 3.3 Theorem B (O(3) Lemma 6.1 form)
(Bθ) [hypothesis]. There is θ_* ∈ (0, p_*] with B_* := sup_k |Γ^{ex}(θ_*; L^k)| < ∞.

Theorem 3.2 [proved here, given (U), (Bθ), LW (5.7)]. For all k ≥ 1, |S_k − c k log L| ≤ C_B with

  C_B := B_* + c_2 ln(1/θ_*²) + |κ_W^F| + sup_{p≤θ_*}|η(p)| + C_Uθ_*²/(L² − 1).

Hence (i) every window sum satisfies |Σ_{j=k+1}^{K}(β_j(0) − c log L)| ≤ 2C_B; (ii) S_k/k → c log L; (iii) if β_j(0) converges, its limit is c log L.

Proof. Lemma 1.3 and the definition of Γ^{ex}: S_k = Π̂(θ_*L^{−k}) − Γ^{ex}(θ_*; L^k) + O(C_Uθ_*²/(L² − 1)), and Π̂(θ_*L^{−k}) = c k log L + c_2 ln(1/θ_*²) + κ_W^F + η(θ_*L^{−k}). (i) is the difference of two such bounds; (ii), (iii) follow from (i). ∎

Remarks. (a) (Bθ) needs bounds only, at one coarse momentum. Existence of the limit for (iii) comes from BETA_FP Thm 4.1 Step 2 (U3 Thm 4.1 + Lemma 5.1 + Φ Lipschitz) or from Theorem 3.1. This is the split of the O(3) template: O(1) control of the partial sum by a doubling comparison, plus "exponential convergence of α_h" for the limit. (b) Window sums. ONLINE_SWEEP §1.2(a) [inference there, not verified] says Balaban's Theorem 1 needs only a band 1/g² − C + β_∞(K − k) ≤ 1/g_k² ≤ 1/g² + C + β′(K − k). The lower half of such a band needs bounded window sums of β_j − β_∞, which is (i) with β_∞ = c log L. It needs no rate and no Σ|β_j − β_∞| < ∞. The band argument itself is not checked here. (c) The abelian sector satisfies the theorem with c^{ab} = 0: S_k^{ab} = (1 − L^{−4k})/4 (U1 Prop. 9.1, measured to all digits, NUMERICS §6). (d) Data, L = 2: S_k − 0.2575k = 0.372 (k = 1), ≈ 0.43 (k = 2, β_2 ≈ 0.32), ≈ 0.46 (k = 3, β_3 ≈ 0.29, N = 12, not converged). Bounded-looking; not a test.

### 3.4 Which property of the coarse piece is needed (task item 3(b))
- Theorem A: convergence in k of Γ^{ex}(θ; L^k) at fixed θ > 0, along one sequence θ_n → 0. Pointwise in θ: no uniformity in θ, no θ-derivatives, no rate, no infrared weights.
- Theorem B: boundedness in k at one θ_*.
- Scale covariance is not an extra hypothesis. If (Cθ) holds for all θ ∈ (0, p_*], the level-k data at transfer θ are one block step of the level-(k − 1) data at transfer θ/L (BETA_FP (1.3)). So any limit 𝒟_∞(·; θ) of the plane-wave data obeys 𝒟_∞(·; θ) = T_L[𝒟_∞(·; θ/L)]: joint rescaling (K, θ) → (K/L, θ/L) plus one block step. This is the plane-wave form of T_L𝒟_∞ = 𝒟_∞ (U3 Lemma 3.1(i)). Theorem 3.1 does not use it; the scale-covariance reading of §2.2 does.
- The old route needed more: uniformity in θ of the k-convergence of Γ^{ex}(θ; L^k) − c_2 ln(1/θ²), so that θ → 0 and k → ∞ commute (BETA_FP_LEMMA43 Prop. 4.2, (H) with IR weights (|K| + P)^{4−m−|α|}). Lemma 1.3 replaces that uniformity by the massive-side bound (U).
- §4 states what (Cθ) and (Bθ) reduce to, and how they relate to U3 Thm 4.1, (W), and Lemma 5.1.

