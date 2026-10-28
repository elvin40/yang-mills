IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# BETA_FP_M: input (M) of BETA_FP_H Theorem 3.1 without the false resolvent bound

Written 2026-10-27 (Claude, Opus 5.5). Scope: repair (M) of BETA_FP_H §3.1 after BETA_FP_H_VERIFY item (3) ("‖𝒦_t^{−1}‖ ≤ C/|f| in |K| < |f|^{1/2}" is false: the Nielsen–Olesen eigenvalue k_⊥² − |ef| vanishes inside the region). Read: BETA_FP_H §1–§3, BETA_FP_H_VERIFY §5–§7, numerics/NUMERICS.md §4, U3_REPAIRS Prop. B and O6, U3_AW §4, U3_LEMMA51 §2. No existing file edited. No numerics run. Tags: [proved here], [cited], [argued], [open], [refuted].
Naming: "(H′)" below always means BETA_FP_H (2.6) (Lemma 5.1 form). U3_AW's "(H′)" (sup_j ‖H_j‖ < L√(L−1)) is called (HS) here.

(Sections are appended as the work proceeds.)

## 0. Headline
- Two different operators carry the name "𝒦". (a) BETA_FP_H §2.1: 𝒦_t(f) = Δ_∞(f) + t(Δ_j(f) − Δ_∞(f)) + D_cD_c^T, the coarse gauge-fixed Hessian. It is unconstrained and massless. (b) U3_LEMMA51 §2.3: 𝒦(f) = [[K(f), C_f^†],[C_f, 0]], the bordered (KKT) fluctuation operator. Here (b) is called 𝔅_f to avoid the collision.
- The false bound of (M) is a bound on (a). The gap argument of the task applies to (b). It cannot apply to (a): at f = 0, inf_K 𝔨_{t,0}(K) = 0 (Maxwell |K̂|²), and at f ≠ 0 the Nielsen–Olesen (N–O) eigenvalue of (a) is a true spectral point that crosses 0 [proved below as a remark, §1]. So step (i) of the task, read literally for the operator of (M), is refuted.
- What the gap argument does prove (§2): the constrained one-step operator (b) at constant flux has spectral gap ≥ a(L)/4 on ker C_f for |f| ≤ f_*(L), uniformly in the level j. a(L) is the O6 constant. This is the rigorous form of "N–O is absent on the constrained space for small f" (consistent with +0.085 at F = 2π/36 ≈ 0.17). The proof uses the Peierls/Combes–Thomas comparison, not a per-K Lipschitz bound, because at f ≠ 0 there is no per-K fiber. §3 gives the |f|³ log|det| Taylor remainder for (b).
- What repairs (M) (§4): a mass shift μ = 2C_1|f| makes BETA_FP_H's region-2 resolvent bound true for 𝒦_t + μ. The shift-back term is bounded by a direct log|det| estimate (Fuglede–Kadison determinant, density-of-states bound near 0). (M) becomes [proved here] given three spectral inputs (S1) lower bound, (S2) density of states, (S3) relative bound of δ, plus the region-1 Moyal remainder already [argued] in BETA_FP_H. (S1)–(S3) are [argued] from the continuum Landau levels; the lattice proofs are [open].
- §5: Theorem 3.1 restated. Only (M) used the C/|f| bound. (2.1) of BETA_FP_H at finite f must be read with the shift; (2.2) is unaffected.

## 1. Which operator (M) needs, and why a gap is impossible for it
(M) concerns δΓ_j(f) = −½[log|det|𝒦_1(f) − log|det|𝒦_0(f)] per coarse cell (BETA_FP_H (1.1), (2.1)). 𝒦_t(f) acts on coarse bond fields. It contains no constraint: the constraint was already integrated out in forming Δ_j(f) (Schur complement, U3_LEMMA51 Prop. 2.3: S(f) = −[𝔅_f^{−1}]_{22}).

Remark 1.1 [proved here]. (a) inf_K 𝔨_{t,0}(K) = 0, so 𝒦_t(0) has no gap. Proof: 𝔨_{t,0} = (1 − t)σ_∞^{(0)} + tσ_j^{(0)} + |K̂|²P_L with C_1^{−1}|K̂|²P′_T ≤ σ^{(0)} ≤ c_0^{−1}|K̂|²P′_T (U3_REPAIRS Prop. B); both sides → 0 as K → 0. (b) For f ≠ 0, 𝒦_t(f) is not invertible-with-gap uniformly: its IR symbol is the continuum charged operator −D_f² + 2ef·S (Maxwell coefficient exactly 1, spin coupling τ_c, s_j = 1 by U3_AW Theorem W), whose spectrum (2n + 1 ± 2)|ef| + k_⊥² contains k_⊥² − |ef| ∋ 0 (BETA_FP_H_VERIFY §5). [Argued for the lattice operator: needs the magnetic semiclassical reduction of (S2) below.] U3_LEMMA51 §2.3 states the same thing: S(f) has a negative eigenvalue of order −|f|.
Consequence. No inequality 𝒦_t(f) ≥ 𝒦_t(0) − C|f| ≥ c_0/2 can hold, since 𝒦_t(0) has no c_0 > 0. The only true lower bound of this type is (S1): 𝒦_t(f) ≥ −C_1|f|.

Where the +0.085 lives. NUMERICS §4 (n = 6, L = 3, q = 1, F = 2π/36 ≈ 0.175 per fine plaquette) measures the Wilson Hessian on ker Q̃ (with im D removed): this is the constrained block of (b), the left side of (1.1). It is not an eigenvalue of 𝒦_t. The coarse lattice there is 2⁴ with coarse flux 9F ≈ 1.57; no coarse N–O eigenvalue was computed. So the +0.085 supports §2, not (M).

## 2. The gap of the constrained one-step operator at constant flux
Setting. One step from level i to level i + 1 (level-i units), U3_REPAIRS §3.1 notation. Fields x on level-i bonds, constraint C = Q̃ (one-step averaging, range one block), A = Δ_i⊕ + DD^† with D the residual-gauge gradient (λ = 0 on coarse sites). At constant flux φ per level-i plaquette all three objects become φ-dependent: A_φ, C_φ, D_φ. 𝔅_φ := [[A_φ, C_φ^†],[C_φ, 0]]. For i = 0, Δ_0(φ) is the Wilson Hessian (U3_LEMMA51 (2.1)).

Why no per-K statement. At φ ≠ 0 the operators commute with magnetic translations, which do not commute with each other. There is no fiber decomposition over K (except for rational flux with an enlarged cell, with constants that are not uniform in the denominator). So "𝒦_f ≥ 𝒦_0 − C|f| per coarse momentum" has no literal meaning. Also ‖A_φ − A_0‖ is not small on ℓ²: the transport phases e^{iφ x∧y/2} are not close to 1 at large |x|. The correct replacement is a comparison after the Peierls phase is removed (Lemma 2.3).

### 2.1 f = 0: the gap on ker Q̃ ∩ (im D)^⊥, K = 0 included
Lemma 2.1 [proved here from O6]. At φ = 0, for every level i ≥ 0 and every x ∈ ℓ² with Q̃x = 0 and D^†x = 0: ⟨x, Δ_i⊕x⟩ ≥ a(L)|x|², a(L) ≥ 2.3·10^{−10}L^{−20} (U3_REPAIRS (3.9)). Also ‖A_0‖ ≤ α = 16(1 + c_0^{−1}), σ_min(Q̃) ≥ s ≥ 4.4·10^{−3}L^{−3}.
Proof. Per K, O6 gives ⟨x, A_i(K)x⟩ ≥ a|x|² on ker Q̃(K), K = 0 included (U3_REPAIRS §3.6). ker Q̃ on ℓ² is the direct integral of the fibers ker Q̃(K). On (im D)^⊥, D^†x = 0, so ⟨x, Ax⟩ = ⟨x, Δ⊕x⟩. ∎
The K → 0 mechanism (the task's question). At K = 0 the soft transverse mode x_{T,0} is fixed by the other modes through P′_TQx_T = 0 (Lemma G of U3_REPAIRS), and the l = 0 pure-gauge mode carries the K̂-row (§3.4(c) there). So the constraint removes exactly the modes on which Δ⊕ is soft; what remains has |k̂_l|² ≥ 4/L² (E1). The L-dependence of a: 4/(C_1L²) from (E1), divided by (1 + π²L⁴/σ_0²) from the soft-mode tie, then the gauge-mode bookkeeping (g_0 = 4L^{−6}, m = 58L) gives L^{−20}. The numerics (‖𝔅^{−1}‖ ≤ 196 at L = 3, R23_VERIFY §3) show the bound is very crude.

### 2.2 Penalized form
Lemma 2.2 [proved here]. Let A be Hermitian, ‖A‖ ≤ α, CC^† ≥ s², and A ≥ a on ker C. For λ ≥ λ_0 := (α + 2α²/a + a/2)/s², H := A + λC^†C ≥ a/2 on the whole space.
Proof. x = x_0 + x_1, x_0 ∈ ker C, x_1 ∈ ran C^†, |Cx_1| ≥ s|x_1|. ⟨x, Hx⟩ ≥ a|x_0|² − 2α|x_0||x_1| − α|x_1|² + λs²|x_1|² ≥ (a/2)|x_0|² + (λs² − α − 2α²/a)|x_1|² ≥ (a/2)|x|². ∎
Conversely, H_φ ≥ h implies A_φ ≥ h on ker C_φ. So it suffices to bound one Hermitian operator H_φ := A_φ + λ_0C_φ^†C_φ from below.

### 2.3 Peierls comparison
Notation. ‖B‖_S := max(sup_x Σ_y |B(x,y)|, sup_y Σ_x |B(x,y)|) ≥ ‖B‖ (Schur test). ‖B‖_{S,1}: the same with weight |x − y|. Symmetric-gauge phase Φ(x,y) := ½ x∧y in the (0,1) plane (positions of bond midpoints). Then Φ(x,z) + Φ(z,y) − Φ(x,y) = ½(x − z)∧(z − y), so |·| ≤ ½|x − z||z − y|. For a charge q (q = ±e in the charged sector, 0 in the neutral sector) write P_φ[B](x,y) := e^{iqφΦ(x,y)}B(x,y).

Hypothesis (P_i) (Peierls structure at level i). H_φ − P_φ[H_0] =: P_φ[E_φ] with ‖E_φ‖_S ≤ C_E|φ| for |φ| ≤ 1, and ‖H_0‖_{S,1} < ∞.

Lemma 2.3 (Nenciu-type) [proved here; standard idea, Nenciu 1986 from memory, source not checked]. Let μ ∉ spec H_0, G_μ := (H_0 − μ)^{−1}, with ‖G_μ‖_S, ‖G_μ‖_{S,1} < ∞. Assume (P_i). If r(φ, μ) := (|qφ|/2)‖H_0 − μ‖_{S,1}‖G_μ‖_{S,1} + C_E|φ|‖G_μ‖_S ≤ ½, then H_φ − μ is invertible and ‖(H_φ − μ)^{−1}‖ ≤ 2‖G_μ‖_S.
Proof. Put G̃ := P_φ[G_μ]. Then (H_φ − μ)G̃ = 1 + R_1 + R_2 with R_1(x,y) = Σ_z (H_0 − μ)(x,z)G_μ(z,y)e^{iqφΦ(x,y)}(e^{iqφ(x−z)∧(z−y)/2} − 1) (the diagonal μ term has x = z and no phase) and R_2 = P_φ[E_φ]G̃. |e^{iθ} − 1| ≤ |θ| gives ‖R_1‖ ≤ ‖R_1‖_S ≤ (|qφ|/2)‖H_0 − μ‖_{S,1}‖G_μ‖_{S,1}. Phases do not change ‖·‖_S, so ‖R_2‖ ≤ C_E|φ|‖G_μ‖_S. Neumann series gives a right inverse G̃(1 + R)^{−1}; the same computation with G̃(H_φ − μ) gives a left inverse. ∎

Proposition 2.4 (gap at constant flux) [proved here given (P_i) and Combes–Thomas]. Assume (P_i) and exponential decay ‖e^{m|x−y|}H_0‖_S ≤ h_m. Then there is φ_* = φ_*(L, C_E, m, h_m) > 0 with: for |φ| ≤ φ_*, H_φ ≥ a/4, hence A_φ ≥ a/4 on ker C_φ, hence Δ_i(φ)⊕ ≥ a/4 on ker C_φ ∩ (im D_φ)^⊥, and ‖𝔅_φ^{−1}‖ ≤ b(L) with a replaced by a/4 in (O6.1) (Lemma E of U3_REPAIRS needs also ‖A_φ‖ ≤ α + O(φ) and σ_min(C_φ) ≥ s/2, both by the same Peierls argument applied to C_φC_φ^†).
Proof. H_0 ≥ a/2 (Lemma 2.2 with Lemma 2.1). Let I := [−α′, a/4], α′ := sup_{|φ|≤1}‖H_φ‖ + 1. For μ ∈ I, dist(μ, spec H_0) ≥ a/4. Combes–Thomas [cited, standard, from memory]: for an operator with ‖e^{m|x−y|}H_0‖_S ≤ h_m and dist(μ, spec) ≥ d, |G_μ(x,y)| ≤ (2/d)e^{−θ|x−y|} with θ = θ(d, m, h_m) > 0; hence ‖G_μ‖_S, ‖G_μ‖_{S,1} ≤ C(d, θ) uniformly in μ ∈ I. Set φ_* := min over μ ∈ I of the φ with r(φ, μ) = ½. By Lemma 2.3, H_φ − μ is invertible for all μ ∈ I. spec H_φ ⊂ [−α′ + 1, α′ − 1] and avoids I, so spec H_φ ⊂ (a/4, ∞). ∎
Size. φ_* ≳ a²·(poly in L)^{−1}: G_μ scales like 1/a and the decay length like 1/a. With a ≥ 2.3·10^{−10}L^{−20} the proved φ_* is astronomically small. Positivity at F ≈ 0.175 (NUMERICS) is far outside the proved range; the measurement is consistent, not covered.

### 2.4 Status of (P_i)
- i = 0 (first step; the case of NUMERICS §4) [argued, entrywise bookkeeping not written]. The Wilson Hessian has range 2; its entries are cos φ, sin φ times Ad-transports; relative to P_φ each entry differs by a phase of size ≤ |φ|·(area of a plaquette-scale triangle) or by sin φ, 1 − cos φ. So C_E = O(1). D_φ: same. Q̃_φ (Balaban averaging, range one block): transport phases plus the charged factors 1 ± iθ/2 + O(θ²) of (1/i)log and exp at holonomy angle θ ≤ L²|φ| (U3_LEMMA51 §2.3). So C_E = O(L²) and h_m finite (finite range). Hence Prop. 2.4 holds at i = 0 with explicit-in-principle constants.
- i ≥ 1 [open]. Δ_i(φ) is magnetically covariant (U3_LEMMA51 Lemma 3.1), so Δ_i(φ) = W·a_{i,φ}. (P_i) needs ‖a_{i,φ} − a_{i,0}‖_S ≤ C_E|φ| uniformly in i at finite φ. This is a finite-flux version of (A); U3_AW §4 controls only the Taylor coefficients m ≤ 2 (A2, A3). Iterating Lemma 2.3 through the Schur complement multiplies C_E by a b(L)-type constant per step, which is not contracted by L^{−2}; Lemma A4 (the Δ-relative contraction) is a per-K form bound and does not apply to the Peierls residual. So uniformity in i is not available by this route.
- Uniformity in K is automatic: no per-K bound was used at φ ≠ 0, and at φ = 0 the O6 bound covers K = 0.

## 3. The log|det| Taylor remainder for the gapped constrained operator (task item (ii), corrected object)
Per-cell trace. For a magnetically covariant operator X (kernel X(x,y) = e^{iqφΦ(x,y)}x̃(x − y) per sector), τ(X) := per-cell sum of tr X(x,x). τ is a finite faithful normal trace on the von Neumann algebra of such operators (twisted group algebra) [cited, standard]. For Hermitian X, log det_τ|X| := τ(log|X|) is the Fuglede–Kadison determinant; it is multiplicative [cited, Fuglede–Kadison 1952]. This is the rigorous meaning of BETA_FP_H's "per-cell density of log|det|". Note τ(P_φ[B]) = τ(B), because Φ(x,x) = 0.

Proposition 3.1 [proved here given (P_i) with E_φ of class C³ in φ in the weighted norms ‖·‖_{S,k}, k ≤ 3, and exponential decay]. Let |φ| ≤ φ_*/2 (Prop. 2.4). Then for X_φ = 𝔅_φ² (or X_φ = H_φ):
  |τ log X_φ − τ log X_0 − φ τ_1 − φ² τ_2| ≤ C_3(L)|φ|³,   (3.1)
with τ_1 = 0 by charge conjugation (φ → −φ conjugates the charged sector and fixes the neutral one; τ log X is real). So log|det_τ 𝔅_φ| = ½τ log 𝔅_φ² = c_0 + c_2φ² + O(|φ|³).
Proof. X_φ ≥ g² > 0 with g := 1/(2‖𝔅_0^{−1}‖) for |φ| ≤ φ_*/2 (Prop. 2.4, Lemma 2.3 with a factor 2 margin). log X = ∫_0^∞[(1 + s)^{−1} − (X + s)^{−1}]ds. For each s ≥ 0, Lemma 2.3 with μ = −s gives (X_φ + s)^{−1} = G̃_s(1 + R_s)^{−1}, G̃_s = P_φ[(X_0 + s)^{−1}]. Combes–Thomas with distance d = s + g² gives |(X_0 + s)^{−1}(x,y)| ≤ (2/d)e^{−θ|x−y|} with one θ for all s ≥ 0 (the decay at d = g² works for larger d). So ‖·‖_{S,k} of G_s is ≤ C_k/(s + g²). Expand e^{iθ} − 1 = iθ − θ²/2 + O(θ³) in R_1 and E_φ = φE_1 + φ²E_2 + O(φ³) in R_2: R_s = φR_s^{(1)} + φ²R_s^{(2)} + O_S(φ³), every coefficient a product containing one G_s and weights |x − z|^k|z − y|^k, k ≤ 3. Then (1 + R)^{−1} = 1 − R + R² − R³(1 + R)^{−1}. τ(G̃_s) = τ(G_s) is φ-independent. Each remaining term carries ≥ 2 factors G_s, so its ds-integrand is ≤ C(s + g²)^{−2}, integrable. The φ³ remainder is bounded by C_3 := C ∫_0^∞(s + g²)^{−2}ds·(weighted moments) = C/g² ·(moments). τ of products of P_φ-twisted kernels produces further triangle phases; expanding them to second order with the same moment bounds is part of the same count. ∎
Use. With φ = f/L^{2(J−i)} at step i ≤ J − 1, (3.1) gives the C³-in-f expansion of each one-step constrained determinant on the left side of (1.1), provided (P_i) holds at that step. For i = 0 this is [argued] (§2.4). This supports BETA_FP_H's claim "the left side of (1.1) is analytic in f" in the weaker C³ form, at the first step only. It does not touch (M).

## 4. Repair of (M): a shifted resolvent plus a direct log|det| bound
### 4.1 Inputs
Notation: 𝒦_s = 𝒦_s(f) for s ∈ {0, 1} (Δ_∞ and Δ_j), V := 𝒦_1 − 𝒦_0 = Δ_j(f) − Δ_∞(f), N_s(λ) := τ(1_{(−∞,λ]}(𝒦_s)) (integrated density of states per coarse cell), ε := ε_j of BETA_FP_H Prop. 2.1.
- (S1) Lower bound: 𝒦_s(f) ≥ −C_1|f| (s = 0, 1; then for all t ∈ [0, 1] by convexity). Put μ := 2C_1|f|, so 𝒦_t + μ ≥ μ/2.
- (S2) Density of states in the window W := [−μ, 3Rμ] (R a fixed number, chosen in §4.3): |N_s(λ′) − N_s(λ)| ≤ C_2|f||λ′ − λ| for λ, λ′ ∈ W.
- (S3) Relative bound: ±V ≤ εC_3[(𝒦_0 + μ)² + f²] as forms.
Why they are expected [argued]. (S1): symbol 𝔨_t(f; K) ≥ c|K̂|² − C|f| (Prop. B, gauge fixing, bounded 𝔨_{t,1}); the magnetic Gårding error is O(f). Continuum check: inf spec(−D_f² + 2ef·S) = −|ef|. (S2): continuum Landau count. In the N–O band λ = k_⊥² − |ef|, the number of states per unit 4-volume per unit λ is (|ef|/2π)·(1/4π) = |ef|/(8π²) per charged component. The other charged bands start at λ ≥ |ef| with the same density per band, and finitely many bands meet W. The neutral sector has N(λ) ~ λ², density ≤ Cμ. So C_2 is a pure number times the number of components. (S3): BETA_FP_H (2.4) gives |δσ(f; K)| ≤ ε(K⁴ + |f|K² + f²) ≤ (3ε/2)(K⁴ + f²), and (𝔨_0 + μ)² + f² ≥ c(K⁴ + f²).
Status: (S1)–(S3) [open] on the lattice. Each needs a magnetic pseudodifferential (Weyl/Moyal) calculus for the coarse lattice symbols at finite f, plus finite-f control of σ_j beyond the Taylor coefficients m ≤ 2 (a finite-flux form of (A)). (S2) needs, in addition, a Landau-level reduction of the lattice symbol near K = 0 (Harper-type semiclassics).

### 4.2 Two lemmas
Lemma 4.1 (counting monotonicity in a finite von Neumann algebra) [proved here]. If X ≤ Y (Hermitian, bounded), then N_Y(λ) ≤ N_X(λ) for all λ.
Proof. P := 1_{(−∞,λ]}(Y), Q := 1_{(λ,∞)}(X). If τ(P) > τ(1 − Q) = N_X(λ), then τ(P ∧ Q) ≥ τ(P) + τ(Q) − τ(1) > 0 (Kaplansky's parallelogram law), so P ∧ Q ≠ 0. For a unit vector v in its range, ⟨v, Yv⟩ ≤ λ < ⟨v, Xv⟩, which contradicts X ≤ Y. ∎

Lemma 4.2 (IDS comparison in the window) [proved here given (S1), (S3)]. Put η_* := εC_3[(3R + 2)²μ² + f²] = O(εf²). For λ ∈ [−μ/2, 2Rμ] and ε ≤ ε_0(R): N_0(λ − η_*) ≤ N_1(λ) ≤ N_0(λ + η_*). With (S2): |N_1(λ) − N_0(λ)| ≤ 2C_2|f|η_*.
Proof. (S3) gives 𝒦_1 ≤ g_+(𝒦_0), g_+(x) := x + εC_3[(x + μ)² + f²], and 𝒦_1 ≥ g_−(𝒦_0) with the minus sign. For ε small, g_± are increasing on [−μ/2, 3Rμ] and |g_±(x) − x| ≤ η_* there. Lemma 4.1 with X = 𝒦_1, Y = g_+(𝒦_0) gives N_1(λ) ≥ N_{g_+(𝒦_0)}(λ) = N_0(g_+^{−1}(λ)) ≥ N_0(λ − η_*); the other side is the same. (Spectrum above 3Rμ does not enter, because λ + η_* < 3Rμ.) ∎

### 4.3 Proposition (M′)
Fix a smooth cutoff χ with χ = 1 on (−∞, R], χ = 0 on [2R, ∞), and put, for x ≥ −μ/2,
  g̃(x) := [log|x| − log(x + μ)]·χ(x/μ),  ℓ(x) := log|x| − g̃(x).
ℓ is smooth on [−μ/2, ∞), ℓ(x) = log x for x ≥ 2Rμ, and |ℓ′(x)| ≤ C_R/(x + μ) ≤ 2C_R/μ. At f = 0 (μ = 0), g̃ ≡ 0 and ℓ = log.
Split δΓ_j(f) = I(f) + II(f) with
  I(f) := −½[τℓ(𝒦_1) − τℓ(𝒦_0)] = −½∫_0^1 dt τ[ℓ′(𝒦_t)V],  II(f) := −½[τg̃(𝒦_1) − τg̃(𝒦_0)].
(The t-formula for I holds because ℓ is C¹ on a neighbourhood of every spec 𝒦_t, (S1) [cited, standard: d/dt τh(X + tV) = τ(h′(X + tV)V) for C¹ h in a finite von Neumann algebra].)

Proposition 4.3 [proved here given (S1)–(S3)]. |II(f)| ≤ C ε|f|³ log(1/(ε|f|)), with C = C(C_1, C_2, C_3, R).
Proof. II = −½∫ g̃ d(N_1 − N_0) over [−μ/2, 2Rμ]. Split at |λ| = η_*.
(a) |λ| ≤ η_*: |∫ g̃ dN_s| ≤ ∫_{|λ|≤η_*} (|log|λ|| + |log(μ/2)| + C) dN_s ≤ 2C_2|f|η_*(log(1/η_*) + C) by (S2) (|log μ| ≤ log(1/η_*) because η_* ≤ μ).
(b) η_* < |λ| ≤ 2Rμ: integrate by parts. Boundary terms at ±η_* and 2Rμ are |g̃|·|N_1 − N_0| ≤ (log(1/η_*) + C)·2C_2|f|η_* (Lemma 4.2; g̃(2Rμ) = 0). The bulk term is ∫|g̃′||N_1 − N_0|dλ with |g̃′(λ)| ≤ 1/|λ| + C_R/μ, so it is ≤ 2C_2|f|η_*[2 log(2Rμ/η_*) + 4RC_R].
Sum: |II| ≤ C|f|η_* log(1/η_*) and η_* = O(εf²). ∎
Note. The log singularity of log|λ| at the N–O zero is integrable against the bounded density (S2). This is the "direct log|det| bound" asked for in BETA_FP_H_VERIFY §5. No resolvent of 𝒦_t is used in II.

Proposition 4.4 [argued, same status as BETA_FP_H's two-region count, with the false step removed]. I(f) − I(0) = n_2 d_j f² + O(ε|f|³ log(1/|f|)).
Argument. Region 1 (phase space |K|² ≥ R′|f|, R′ chosen so that 𝔨_{t,0} ≥ 2Rμ + C|f| there): ℓ′(x) = 1/x on this part of the spectrum, so the integrand is BETA_FP_H's Moyal-expanded Tr[𝒦_t^{−1}V]; its f² term is the region-1 part of (2.2); the f³ term vanishes by charge conjugation; the f⁴ term is ε f⁴/|f|. Region 2 (|K|² < R′|f|, volume O(f²)): ‖ℓ′(𝒦_t)‖ ≤ 2C_R/μ = C/|f| is now TRUE by (S1) (this replaces the false ‖𝒦_t^{−1}‖ ≤ C/|f|), and |V| ≤ Cεf² there by (S3); contribution ≤ εf²·f²/|f| = ε|f|³. The region-2 part of the formal d_j integrand is ≤ ε f²∫_{|K|²<R′|f|}|K|^{−2}d⁴K = O(ε|f|³). Not written: the magnetic phase-space localization that makes "region 1/region 2" an operator statement (the same gap as in BETA_FP_H).

Corollary 4.5 ((M) repaired). Given (S1)–(S3) and Prop. 4.4: δΓ_j(f) − δΓ_j(0) = n_2 d_j f² + O(ε_j|f|³ log(1/(ε_j|f|))). For Theorem 3.1 only the limit [δΓ_j(f) − δΓ_j(0)]/f² → n_2 d_j at fixed j is used; the rate is not used.

Correction to the proof of Lemma 4.2 (upper side). N_1(λ) ≤ N_0(λ + η_*) also needs g_−(x) > λ for every x ∈ spec 𝒦_0 above the window, i.e. εC_3(x + μ)² < x − 2Rμ − η_* for x ∈ [3Rμ, ‖𝒦_0‖]. This holds if ε ≤ ε_0 := c/(C_3(‖𝒦_0‖ + 1)), i.e. for j ≥ j_1. For the finitely many j < j_1, use instead the window form (S3w): ±1_W(𝒦_0)V1_W(𝒦_0) bound plus an off-window cross-term bound [open; not written].

## 5. Theorem 3.1 restated; where the C/|f| bound was used
Theorem 3.1′ (Lemma 4.3, repaired input). Along Λ = L^j, L odd ≥ 3: 𝒞(Λ) = c log Λ + C_∞ − d_j, |d_j| ≤ Cε_j, given (H′) [= BETA_FP_H (2.6)], (PI), (F), Lemma 4.1 of BETA_FP_LEMMA43, and (M) in the form of Cor. 4.5, i.e. (S1)–(S3) [open] + Prop. 4.4 [argued]. The proof of BETA_FP_H Theorem 3.1 is unchanged: it uses only lim_{f→0}[δΓ_j(f) − δΓ_j(0)]/f² = n_2 d_j at fixed j.
Two-region asymptotics, restated. δΓ_j(f) − δΓ_j(0) = I + II. I: region 1 (|K|² ≥ R′|f|) gives n_2 d_j f² (Moyal, f³ term zero by C); region 2 gives O(ε|f|³) using ‖ℓ′(𝒦_t)‖ ≤ C/|f|, true by (S1). II: the N–O window, O(ε|f|³ log(1/(ε|f|))) by the direct log|det| bound (Prop. 4.3).

Check of every use of 𝒦_t^{−1} in BETA_FP_H [proved here by reading]:
- §3.1 (M), region 2: the false step. Replaced by I/II above.
- §2.1 (2.1), δΓ_j = −½∫dt Tr[𝒦_t^{−1}V]: at f ≠ 0 this formula is not justified, because 𝒦_t has spectrum at 0 (N–O) and eigenvalues may cross 0 along t, where τ log|𝒦_t| need not be differentiable in t. Fix: use (2.1) only for the shifted bracket I (with ℓ′ in place of x^{−1}) and add II. The formal coefficient (2.2) is unaffected: it uses b_{t,m}(K) at K ≠ 0, where 𝔨_{t,0} ≥ c|K̂|², so d_j as defined is correct.
- §1, "both brackets read as per-cell densities of log|det|; (1.1) holds with |det|": made precise by the Fuglede–Kadison determinant (§3); multiplicativity gives the Schur factorization of the bordered determinant once the constrained block is invertible, which is Prop. 2.4 at small f (first step: (P_0) argued; later steps: (P_i) open).
- §3.3 Prop. 3.2(c) used (M); already superseded by U3_AW Theorem W (BETA_FP_H_VERIFY §6). No new issue.
- §2.2 power count, Prop. 2.1, (2.5): f-formal; no resolvent at finite f. Unaffected.
- §4 (plane wave) and §5 (L = 2): no use.
So nothing else in (M) or Theorem 3.1 used the C/|f| bound.

Coordinator leads (reports/ONLINE_SWEEP.md items 3, 5) [checked against the sweep summaries only; sources not read]:
- LNWW 1992 (s_0 = 11/(12π²), r_0 = 0.202349) is a Schrödinger-functional finite-volume background with Dirichlet time boundaries. It supports (F) on the lattice (the log coefficient c_2 in lattice form, already CONFIRMED in BETA_FP_H_VERIFY against arXiv:1910.00654). It does not touch the coarse N–O window: the SF operator is gapped by the boundary conditions, which is exactly the property the infinite-volume constant field lacks. Its asymptotic expansion is stated as expected, not proved.
- Reisz 1988 (lattice power counting, massless propagators) could make the region-1 Moyal remainder (Prop. 4.4, f-formal Feynman-type integrals at K ≠ 0) rigorous. It does not give (S1)–(S3), which are spectral statements at finite f. Not used here.
- Heat-kernel route (CaptainSude NB 37): log|det| via proper time needs e^{−s𝒦}; with the N–O band e^{−s𝒦} grows like e^{s|f|}, so the route needs the same IR shift (here μ) or a cutoff s ≤ K²; it then faces the same window term II. It is a candidate replacement of the whole symbol recursion for (H), not a shortening of (M). Not used.
- A different route that avoids II entirely: replace the constant infinite-volume field by an SF-type or finite-torus probe with a gap (LNWW style). That changes (PI) (probe independence) and is not done here [open, noted].

## 6. Ledger
Refuted:
- X1. The task's step (i) applied to the operator of (M). 𝒦_t(f) = Δ + D_cD_c^T is the coarse unconstrained Hessian. It has no gap at f = 0 (Remark 1.1(a)), so "𝒦_0 ≥ c_0 > 0 uniformly in K" is false for it. At f ≠ 0 its N–O spectrum reaches 0. The gap argument proves a true statement about a different operator (the bordered 𝔅_f), and that statement does not repair (M).
- X2. "Per-coarse-momentum Lipschitz in f": at f ≠ 0 there is no K-fiber, and ‖A_f − A_0‖ is not small on ℓ². Replaced by the Peierls comparison (Lemma 2.3).

Proved here:
- P1. Lemma 2.1: at f = 0, Δ_i⊕ ≥ a(L) ≥ 2.3·10^{−10}L^{−20} on ker Q̃ ∩ (im D)^⊥ for all levels i and all K, K = 0 included (from O6).
- P2. Lemma 2.2 (uniform Finsler/penalty lemma), Lemma 2.3 (Nenciu-type Peierls inverse bound), Prop. 2.4 (gap a/4 on ker C_φ for |φ| ≤ φ_*), given (P_i) and Combes–Thomas.
- P3. Prop. 3.1: τ log|𝔅_φ| = c_0 + c_2φ² + O(|φ|³) for the gapped bordered operator, given (P_i) in C³ form.
- P4. Lemma 4.1 (τ-counting monotonicity), Lemma 4.2 (IDS comparison in the window, for ε_j ≤ ε_0), Prop. 4.3 (direct log|det| bound for the N–O window: |II| ≤ Cε|f|³ log(1/(ε|f|))), given (S1)–(S3).
- P5. §5 check: only (M) used the C/|f| bound; (2.1) at finite f needs the shift; (2.2) and d_j are unaffected.

Argued, not proved:
- A1. (P_0): Peierls structure of the first-step data (Wilson Hessian, D_φ, Balaban's Q̃_φ) with C_E = O(L²). Entrywise bookkeeping not written.
- A2. Prop. 4.4: the shifted bracket I gives n_2 d_j f² + O(ε|f|³ log), by the two-region count with the now-true bound ‖ℓ′(𝒦_t)‖ ≤ C/|f|. The magnetic phase-space localization is not written (inherited from BETA_FP_H).
- A3. (S1)–(S3) heuristics from continuum Landau levels and symbol bounds (§4.1).

Cited, not rederived [from memory, sources not checked this session]: Combes–Thomas estimate; Nenciu 1986 (magnetic perturbation by Peierls phases); Fuglede–Kadison determinant and its multiplicativity; Kaplansky parallelogram law; derivative of τh(X + tV) for C¹ h. From project files: U3_REPAIRS O6, Prop. B, (E1)–(E5), Lemma E, G, F; U3_LEMMA51 §2.3 (Prop. 2.3, N–O remark); U3_AW Theorem W, A0–A4.

Open:
- O1. (S1) lattice lower bound 𝒦_t(f) ≥ −C_1|f| (magnetic Gårding for the coarse symbol at finite f).
- O2. (S2) lattice density-of-states bound ≤ C_2|f| in the window [−μ, 3Rμ] (Landau-level reduction of the lattice symbol near K = 0; this is the real content of the N–O analysis).
- O3. (S3) relative bound ±V ≤ ε_jC_3[(𝒦_0 + μ)² + f²] at finite f (needs finite-flux control of σ_j beyond m ≤ 2); window form (S3w) for j < j_1.
- O4. (P_i) for i ≥ 1 uniformly in i (finite-flux form of (A)); without it Prop. 2.4 and 3.1 hold at the first step only.
- O5. φ_*(L) is existential and astronomically small (through a(L)); the measured +0.085 at F ≈ 0.175 is consistent with, not covered by, Prop. 2.4.
- O6. Alternative route via a gapped finite-volume probe (LNWW-type SF) that removes II but changes (PI); not done.

Net status of (M): before, [argued] with one false step. Now, the false step is removed: the log|det| bound in the N–O window is proved given (S1)–(S3), and the rest is at the same [argued] level as before. (M) is still not proved, because (S1)–(S3) are open on the lattice.
