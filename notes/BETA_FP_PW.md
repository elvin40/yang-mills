IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
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

Why (U) is the right kind of input [argued]. β_{j+1}(p) is a one-step massive quantity: w_j(p) is a BZ average of traces of products of the inverse one-step bordered matrix 𝔅_j(K), 𝔅_j(K + p)^{−1}, and the vertices (U3 (6.1)). Suppose (i) the level-j plane-wave data (D0, Tp, Tm, D2) are analytic in (K, p) on a fixed complex neighbourhood of BZ × [−p_*, p_*], with bounds uniform in j, and (ii) the one-step bordered matrix is uniformly invertible there (one-step O6, U3_REPAIRS, plus a Neumann series in a). Then w_j is analytic in p with uniform bounds. β_{j+1} is even in p (reflection; odd L, centered blocks). Cauchy estimates give (U). Input (i) is the uniform-bounds input that U3 Thm 7.1 cites to Balaban (CMP 95 Prop. 1.1, CMP 96 Prop. 2.5–2.6, CMP 99 (propagators) Thm 3.1), upgraded from C² to analytic in p. It is not proved here. It does not need convergence of the data. The uniformity must come per level: the composed constrained operator has no uniform gap in coarse units (U3_LEMMA51_R23 O4: ghost gap 4M^{−6}).

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

## 4. What (Cθ) and (Bθ) reduce to

By §2.2, Γ^{ex} = γ_T + 𝔡: a coarse Gaussian one-loop γ_T and a gauge defect 𝔡 that vanishes at stationary backgrounds.

### 4.1 The coarse Gaussian piece at fixed θ: dominated convergence
At fixed θ > 0, γ_T(θ; Λ) = n(θ)^{−1}∫_{BZ} N_T(K; θ) dK/(2π)⁴, with n(θ) > 0 the tree factor and N_T the integrand of U3 (6.1) without the constraint: a zero-transfer term tr[𝒦_0(K)^{−1}𝒦″(K; θ)], a transfer term tr[𝒦_0(K + θ)^{−1}𝒦′_+(K; θ)𝒦_0(K)^{−1}𝒦′_−(K + θ; θ)], and ghost terms of the same form with D_c^TD_c. Here 𝒦 := Δ_T + D_cD_c^T and 𝒦′_±, 𝒦″ are its a¹ (transfer ±θ) and a² (zero-transfer) vertices. The ghost terms depend on Λ only through the coarse polarization v_Λ, which enters numerator and denominator as a common factor for the σ_3 wave (BETA_FP_LEMMA43 §4.2).

Lemma 4.1 [proved here]. Fix θ ∈ (0, π). Assume, uniformly in k: (i) c_*|K̂|² ≤ 𝒦_{0,k}(K) ≤ C_*|K̂|²; (ii) sup_K(|𝒦′_{±,k}(K; θ)| + |𝒦″_{k}(K; θ)|) ≤ M(θ); (iii) |v_k| bounded and bounded away from 0. Then sup_k |γ_T(θ; L^k)| ≤ C(θ, c_*, M) < ∞. If in addition 𝒦_{0,k}, 𝒦′_{±,k}, 𝒦″_k, v_k converge pointwise in K as k → ∞, then γ_T(θ; L^k) converges.
Proof. By (i)–(ii), |N_T(K; θ)| ≤ C[M|K̂|^{−2} + M²|K̂|^{−2}|(K+θ)^|^{−2}] + (ghost terms, same form). On the 4D BZ, |K̂|^{−2} is integrable, and |K̂|^{−2}|(K+θ)^|^{−2} is integrable because the two singular points 0 and −θ are distinct (θ > 0) and each singularity is of order 2 < 4. This gives the bound. Pointwise convergence plus this integrable envelope gives convergence by dominated convergence. ∎
Input (i) is proved: at a = 0 the defect R vanishes, so Δ_T = E^TΔ_ΛE = U3's Δ_M, and the two-sided bound is BETA_FP_LEMMA43 Lemma 4.1 (from U3_REPAIRS Prop. A, B, O5; odd L, centered blocks). Inputs (ii) and the convergence of the vertices are the open part.

### 4.2 Two sources for the vertex data
(R1) Recursion data. At a stationary background (R = 0) the vertices of 𝒦 are the recursion's (Tp, Tm, D2) at level k and transfer θ (BETA_FP (1.3)). Then (Cθ) for γ_T follows from
(Dθ) [hypothesis]: for each θ_n, the level-k plane-wave data at transfer θ_n converge pointwise in K as k → ∞, with uniform bounds.
(Dθ) is weaker than the hypothesis of BETA_FP Thm 4.1 ("𝒟_j → 𝒟_∞ in the norm (6.2)": uniform over |p| ≤ p_0, with two p-derivatives). At the wave R ≠ 0 and Δ_T ≠ E^TΔ_ΛE. The difference comes from gauge modes Dλ whose anchor values interpolate on the coarse scale; ⟨Dλ, HDλ⟩ = ⟨λ, D^TRλ⟩ is O(θ²) relative, with no Λ-suppression. So with R1 this difference must be carried inside 𝔡. It is a coarse-scale object built from convergent data; its convergence at fixed θ is plausible [argued], not shown.
(R2) Explicit representation. Δ_T = (E^TCE)^{−1} with C = Q̃K^{−1}Q̃^T. The a⁰, a¹, a² data of C are tree-level lattice expressions, e.g. C^{(1)} = Q̃^{(1)}K_0^{−1}Q̃_0^T + Q̃_0K_0^{−1}Q̃^{(1)T} − Q̃_0K_0^{−1}K^{(1)}K_0^{−1}Q̃_0^T. Per coarse momentum they are umklapp sums over q_l = K + 2πl at fine spacing 1/Λ. No Schur complement of a constrained problem, no fixed point, no recursion. At a = 0 this is U3_REPAIRS Prop. A (proved). For the vertices, each umklapp term converges as Λ → ∞ (lattice factors → continuum factors), so convergence reduces to domination in l:
- terms from K^{(1)}, K^{(2)} (lattice 3- and 4-vertices, |V| ≲ |q_l|) with the 4D block form factor χ_l, χ_l² ≤ Π_ν min(1, 4/l_ν²): the sums Σ_lχ_l²|l|^{−3} and Σ_lχ_l²|l|^{−2} converge [proved here as a count; the count of BETA_FP §4.3(b)];
- terms from Q̃^{(1)}, Q̃^{(2)} (background variations of the composed Balaban averaging, contour sums along paths in the blocks): transverse to a path the form factor does not decay like χ_l, so these are the R3-type sums of U3_LEMMA51 §3.4 [open]. U3_LEMMA51_R23 (line 123) avoids them by the one-step recursion; then the deeper levels decay geometrically and the top levels converge to fixed terms [argued there].
So R2 turns (Cθ) for γ_T into a tree-level continuum limit without rate, modulo the composed-averaging contour sums.

Relation to U3 Thm 4.1, (W), and Lemma 5.1 (task item 3(b)). U3 Thm 4.1 / Lemma 4.1 give input (i) [proved]. (W) (U3_AW Theorem W, σ^{(1)}(0) = τ_c) is not needed: it fixes the K = 0 value of the spin coupling, which matters only for IR weights; at fixed θ > 0 there are none. Lemma 5.1 in its constant-field form (σ^{(m)} symbols, rate r_j) is neither needed nor sufficient: it controls the θ-Taylor data at θ = 0, not the data at a fixed θ > 0. What is needed is (Dθ) (R1) or the tree-level vertex convergence (R2): the same mechanism as Lemma 5.1, at fixed transfer, without rate. For Theorem B only the bounds (ii) are needed. These are the uniform bounds already cited for U3 Thm 7.1.

### 4.3 The gauge defect 𝔡 [argued]
𝔡 has two parts (three with R1).
(a) Y-part, ½ log det(1 + Y_0^{−1}𝔡_Y), from (2.2). In coarse units, s(K) = |K|^{−2} + G_0Λ² + O(1) (BETA_FP_LEMMA43 (6.1)), so s^{−1} ≈ (G_0Λ²)^{−1} for |K| ≫ Λ^{−1}. R is multiplication by ∇A, smooth with amplitude O(aθ²). In c_2 = Q̃K^{−1}RX^{−1}ι_a the l = 0 umklapp term dominates: |c_2| ≲ aθ²|K|^{−2}|K + θ|^{−2}, O(1) in Λ. So the cross terms D_c^TS_Kc_2s^{−1} are O(Λ^{−2}). In c_1 = ι_a^TD^TK^{−1}RX^{−1}ι_a both legs are anchor Green's functions with umklapp tails; the l-sum Σ_l|q_l|^{−1}·aθ²·|q_l + θ|^{−2} is odd at leading order and gives O(aθ³ log Λ); with two factors s^{−1} this is O(Λ^{−4} log Λ). The quadratic term is O(Λ^{−4}). So 𝔡_Y = O(aΛ^{−2}) relative to Y_0 ~ |K|², outside |K| ≲ Λ^{−1} (volume Λ^{−4}). Hence the Y-part → 0 at fixed θ. Mechanism: point anchors have zero capacity in d = 4 (s^{−1} → 0), the effect found in BETA_FP_LEMMA43 §6. Not written: the region |K| ≲ Λ^{−1}, the a² term with two a¹ vertices, uniform bounds.
(b) 𝔡_gf (composite vs D_k^T gauge, Fact 1.2). Both are massive constrained integrals at fixed k. Their difference is a gauge-fixing dependence at a non-stationary background: linear in R = O(aθ²), contracted with the a¹ response of a gauge-covariant one-point function. The argument of SOURCES_D1_VERIFY item 8 and U1_VERIFY 2.5 (translation invariance kills the a⁰ part against θ ≠ 0; σ_3 gauge covariance makes the response transverse, so an analytic massive response vanishes at θ = 0; reflection makes it even) gives 𝔡_gf = O(θ²) relative to the tree, with constants that grow like L^{2k} in fine units, i.e. O(θ²) in coarse units (U1_VERIFY 2.5). If this is uniform in k, 𝔡_gf is absorbed into r_k of (3.2). Uniformity in k is not shown.
(c) Alternative. Replace H by the projected Hessian H^⊥ := P_⊥HP_⊥ (P_⊥ onto (im D)^⊥). Then R = 0, Prop. 2.1 is exact at the wave (BETA_FP_LEMMA43_VERIFY §4 used exactly this choice: agreement to 1e−14 at random backgrounds), and 𝔡 = 0. Price: H^⊥ is nonlocal (contains X^{−1}), so the per-cell code does not apply, and β^⊥ = β^{code} at p → 0 is a claim of type (b). Not pursued.

Summary. (Cθ) ⟸ Lemma 4.1(i) [proved, odd L] + vertex bounds and pointwise convergence at fixed θ [(Dθ) via R1, or tree-level via R2 with open R3-type sums] + 𝔡 convergent [argued]. (Bθ) ⟸ the same with "bounded" in place of "convergent".

## 5. The resulting theorem, and comparison with the (M) route

### 5.1 Statement
Theorem 5.1 [proved here, given the listed inputs]. Let L be odd ≥ 3 (centered blocks, composed Balaban averaging; L odd is used only through Lemma 4.1(i)). Let β_j(0) be the per-level plane-wave increments of Definition 1.1 (the quantity the code computes). Assume (U), LW (5.7), and the vertex bounds (ii) of Lemma 4.1 at one θ_*, and that the gauge defect 𝔡(θ_*; L^k) is bounded in k. Then S_k = c k log L + O(1). If moreover the vertex data converge pointwise at fixed θ along θ_n → 0 and 𝔡(θ_n; L^k) converges in k, then β_k(0) → c log L = (11N²/(12π²)) log L.

### 5.2 Comparison
| item | (M) route (BETA_FP_H Thm 3.1 + BETA_FP_M) | plane-wave route (this file) |
|---|---|---|
| background | constant field V_f, exactly stationary | plane wave, not stationary |
| split | Prop. 2.1 exact (R = 0) | Prop. 2.2 exact; defect 𝔡 explicit, [argued] small |
| fine log coefficient | (F) Savvidy (confirmed against source) | LW (5.7) (verified, U1_VERIFY item 2) |
| probe identification | (PI) [argued], used inside the proof | not used; the theorem is about the plane-wave β |
| coarse convergence | (H′): constant-field symbols σ^{(m)} in sup norm, |α| ≤ 2, with rate; plus (W) (proved) and evenness for IR weights | pointwise at fixed θ > 0, no rate, no derivatives, no (W) (§4.2); for Theorem B bounds only |
| infrared control | IR weights (2.4) of BETA_FP_H; region |K| < |f|^{1/2} | none needed (θ > 0 fixed) |
| exchange of limits | (M): f → 0 asymptotics of δΓ_j, repaired in BETA_FP_M only given (S1)–(S3) | Lemma 1.3 from (U) |
| spectral inputs | (S1)–(S3) lattice Landau-level bounds [open]; (P_i) for i ≥ 1 [open, no route, BETA_FP_M §2.4] | none |
| analyticity of the constrained side | in f at every level ((P_i), magnetic translations, no per-K fibers) | in p per level (U); per-K fibers exist, Neumann series in a per K |
| lower bound | Lemma 4.1 (odd L) | the same |
| per-cell densities | (G2) | (G2) |
| output | 𝒞(Λ) = c log Λ + C_∞ + O(ε_j): value and rate | Thm A: value, existence, no rate; Thm B: S_k = ck log L + O(1) |

Shared hypotheses: Lemma 4.1 (odd L), (G2), one composed family, the Balaban-type uniform bounds on the level data, and LW/Savvidy for c (equivalent sources for the same number).

Which is shorter. The plane-wave route: one exact identity (Prop. 2.2), one bookkeeping lemma (Lemma 1.3), one dominated-convergence lemma (Lemma 4.1), two short theorems. It has no spectral theory and no Moyal calculus. Its open inputs are (U) (a uniform analyticity bound for a massive one-step quantity) and fixed-θ bounds or convergence of explicit coarse data plus the defect 𝔡. The (M) route has a rate, but its open inputs include (S1)–(S3) and (P_i) for i ≥ 1, for which BETA_FP_M §2.4 has no route. So for the value β_∞ = c log L the plane-wave route is shorter and its open inputs are of a weaker type. For the rate of β_j → β_∞, neither route is complete: the rate is U3 Thm 7.1 (Lemma 5.1 with rate), independent of the value. Theorem B suggests the rate may not be needed for the lower half of Balaban's band (ONLINE_SWEEP §1.2(a), unverified).

Identification with Balaban's β. Balaban's β is the second moment of Π (U3 §5.2, CMP 109 (5.42)), i.e. a p² coefficient. So the plane-wave definition matches Balaban's definition up to the expansion point (fine wave U_0 vs constrained minimizer U_1). SOURCES_D1_VERIFY item 8 argues that this changes S(θ; Λ) by O(θ²) relative [argued, sketch level]. At fixed k this does not change S_k; for Theorems A/B it adds a term of the r_k type, which needs the same uniformity in k as 𝔡_gf. The (M) route needs (PI) for the same identification.

## 6. Numerical check design (Mac only, each run ≤ 10 min; nothing on the box)

(N1) Test of (U) and Lemma 1.3. Existing: §1.2 (|C_U| ≲ 0.2 at L = 2, 3, levels 0–1). New runs: one step at p = 0.8 (ym_momentum, L = 2, Ng = 12; L = 3, Ng = 8), and recursion j = 1 at p_1 = 0.8 (betafp_recursion_v2, L = 2, N = 8, Ng = 8). Same cost as the existing p = 0.4 points. Prediction: β(p) − β(0) ≈ Cp² with the same |C| ≲ 0.2 up to p = 0.8 (no large p⁴ term), so p_* ≈ 0.8 is usable in Lemma 1.3.

(N2) θ-independence of D_k(θ) := S(θ; L^{k+1}) − S(θ; L^k). Identity 3.0 with Lemma 1.3 predicts D_k(θ) = β_{k+1}(0) + O(θ²), with |slope| ≤ 2C_U/(L² − 1) ≈ 0.07 at L = 2. Existing numbers, L = 2, k = 1 (level 0 at Ng = 12; level 1 at N = 8, Ng = 8):
  D_1(0.4) = β_1(0.1) + β_2(0.2) − β_1(0.2) = 0.6299 + 0.3412 − 0.6307 = 0.3404,
  D_1(0.8) = β_1(0.2) + β_2(0.4) − β_1(0.4) = 0.6307 + 0.3288 − 0.6340 = 0.3255.
  Slope −0.031 per unit θ², inside the bound. The level-1 tabulation error (N = 8 → 12: −7% at p_1 = 0.2) is larger than the θ-dependence. New runs: recursion j = 1 at p_1 = 0.4 and 0.8 with N = 12, Ng = 8 (the existing N = 12 run at p_1 = 0.2 fits the Mac budget, BETA_FP §3). Prediction: D_1(0.4) and D_1(0.8) at N = 12 agree to within 0.07·0.48 ≈ 0.03. Reading: c log 2 − D_1(θ) ≈ −0.07 is the coarse-remainder difference at k = 1 (the step-2 scheme constant), up to η terms.

(N3) Size of the gauge defect, finite torus (scratch script in /tmp, deleted after the run; harness of BETA_FP_LEMMA43_VERIFY §4: real CMP-109 averaging, ym_oneloop pieces, dense determinants). Lattices 4⁴ with L = 2 and 6⁴ with L = 3, both with coarse torus 2⁴; σ_3 transverse wave at p_0 = π/L, i.e. coarse θ = π. a²-coefficient by symmetric finite differences (a = ±0.01, ±0.02). Compute (α) the code value (left side of (2.1), raw H), (β) the exact right side of (2.1) with Y, (γ) the R = 0 form with Y_0. Predictions: (α) = (β) to rounding (a check of Prop. 2.2 at R ≠ 0); the Y-part of 𝔡 = (γ) − (β), relative to the tree, is small and decreases from L = 2 to L = 3 at fixed θ (argued O(Λ^{−2}): ratio ≈ 4/9). Control: with H^⊥ = P_⊥HP_⊥, (β) = (γ) to rounding. Zero modes: the σ_3-constant gauge functions are zero modes of D and D_c in the wave background on a torus; remove them the same way on both sides (restrict to the complement of the kernel). Cost: 4⁴ (3072 link variables) is seconds (the VERIFY run took 18 s); 6⁴ (15552) needs about 2 GB per dense LU; time one determinant first and stop if the total exceeds 10 min. Caveat: θ = π is not small; this measures the Λ-dependence of the defect at one fixed θ, which is what Theorems A/B need.

(N4) Not minute-scale. The direct test of (Cθ) needs Γ^{ex}(θ; L^k) at k = 1, 2, 3 at fixed θ, i.e. β_3 at N ≥ 16 (box). A direct check of Π̂(p) at p = 0.1–0.4 against LW (5.7) needs a new massless fine Feynman-gauge BZ code with large grids.

## 7. Ledger

Proved here:
- P1. Prop. 2.2: exact plane-wave form of Prop. 2.1 at every background, log Z^{dir} = Fine + ½ log det S_K − ½ log det Y. Lemma 2.3: explicit defect 𝔡_Y = Y − D_c^TS_KD_c, linear plus quadratic in R = HD; 𝔡_Y = 0 at stationary backgrounds. Cor. 2.4: split into Fine, the coarse Gaussian of Δ_T = (E^TQ̃K^{−1}Q̃^TE)^{−1}, and the defect. Uses only Jacobi, the determinant lemma, the bordered identity, and exact covariance Q̃D = D_cι_a^T.
- P2. Prop. 2.5: at fixed k the two c_2 ln(1/p²) terms cancel; S_k = c k log L + κ_W^F − ρ_k with ρ_k a function of k only (given LW (5.7)).
- P3. Lemma 1.3: |S(θ; L^k) − S_k| ≤ C_Uθ²/(L² − 1), given (U).
- P4. Identity 3.0 (exact) and bound (3.2): the fixed-θ doubling difference; κ_W^F cancels; the fine piece gives c log L + o(1).
- P5. Theorem 3.1: β_k(0) → c log L given (U), (Cθ), LW (5.7). Existence of the limit included.
- P6. Theorem 3.2: S_k = c k log L + O(1) given (U), (Bθ), LW (5.7); bounded window sums; Cesàro limit c log L.
- P7. Lemma 4.1: bounds and convergence of the fixed-θ coarse Gaussian piece by dominated convergence, given the vertex bounds and the two-sided bound on 𝒦_0 (proved, odd L).
- P8. l-sum count for the fine-vertex terms of the explicit representation R2.

Argued, not proved:
- A1. (U) from uniform analyticity in p of the level data plus one-step O6 (§1.2).
- A2. 𝔡_Y = O(aΛ^{−2}) relative at fixed θ (point-anchor zero capacity, §4.3(a)).
- A3. 𝔡_gf = O(θ²) relative (SOURCES_D1_VERIFY item 8 type argument); uniformity in k not shown (§4.3(b)).
- A4. Under R1, the Δ_T-versus-recursion-kernel difference converges at fixed θ (§4.2).
- A5. Scale-covariance reading (§2.2, §3.4); not used in the proofs.
- A6. Plane-wave β = Balaban's β up to the expansion point (§5.2).

Hypotheses (named inputs of the theorems): (U); (Cθ) or (Bθ), reduced in §4 to (vertex bounds or pointwise convergence at fixed θ) + (𝔡 bounded or convergent).

Cited, not rederived: LW (5.7) and its normalization (U1_VERIFY item 2); BETA_FP Prop. 1.1 (telescoping); BETA_FP_LEMMA43 Lemma 4.1 (verified, odd L); exact covariance Q̃D = D_cι_a^T (BETA_FP_LEMMA43_VERIFY §4); the anchor symbol s(K) = |K|^{−2} + G_0Λ² + O(1) (BETA_FP_LEMMA43 (6.1), verified); SOURCES_D1_VERIFY item 8; U1_VERIFY 2.5; U3_AW Lemma M and Theorem W (interpretation only).

Open:
- O1. A proof of (U) (uniform-in-j analyticity in the transfer p of the plane-wave level data).
- O2. Fixed-θ vertex convergence: (Dθ) for the recursion data, or for R2 the R3-type contour sums of the composed averaging.
- O3. The defect 𝔡: A2–A4 as proofs, including uniformity in k of 𝔡_gf.
- O4. Even L (Lemma 4.1 for even L); the L = 2 numbers are a heuristic test only.
- O5. A rate for β_j → c log L (needs a rate in (Cθ); not addressed).
- O6. (G2) per-cell densities (inherited).

Corrections and notes on earlier files:
- BETA_FP_H §1 ("At the plane wave … Prop. 2.1 is only approximate") is correct, but the approximation is confined to the explicit term 𝔡_Y of (2.2) plus the gauge-fixing defect 𝔡_gf. Neither carries a log Λ by the counts of §4.3.
- BETA_FP_LEMMA43's uniformity in P (Prop. 4.2, hypothesis (H) with IR weights) is not needed for the value: Lemma 1.3 moves the uniformity to the massive side.
- For the value alone, convergence of the coarse data is not needed: Theorem 3.2 needs bounds at one θ_*, plus existence of the limit from elsewhere.
