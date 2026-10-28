IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_D3W8 — covariance change along t, and merged R-outputs (W8)

Task: (1) the Gaussian measure with covariance C_f^{(k)} along the t-interpolation; (2) Lemma F2 or a replacement for the merged R-outputs. Inputs: SOURCES_D3R §3, SOURCES_D3R_VERIFY items 2–3, SOURCES_D2 §3.3, §6.1–6.3, SOURCES_D2_VERIFY (b), CMP 119 pp. 270–279, CMP 109 p. 280. Started 2026-10-27.

## 0. Sources re-read for this file

- CMP 119 pp. 270–279 (PDF 28–37), text layer via pdftotext; formulas partly garbled, wording clear. Points used:
  - p. 271: R′_k = Σ_{j≤k_1} R^{(j)} "we include it into E_k"; R″_k = Σ_{j>k_1} R^{(j)} "treated separately" (multiplied by s); t multiplies B_k, A((1/g_k²(·)) − 1/g_k², …), V^{(k)}.
  - p. 271–272: the regular logarithm (3.28)–(3.30) has the measure with {E_k(U_k(exp i[g_kCA + D(g_kCA)]U_{k+1})) − E_k(U_k(U_{k+1}))}. So the input E_k enters the integral only as a fluctuation difference. The zeroth-order value E_k(U_k(U_{k+1})) is not part of the integral. It keeps its scale label j (representation (2.25): E_k = Σ_j [E^{(j)} − …]).
  - p. 276: "The expression determined by R_k is treated in exactly the same way as E_k, except the second renormalization connected with the coupling constant renormalization counterterm, which is not needed here." (This is said for R″ in (3.27).)
  - p. 278: terms E^{(k+1)}(Λ_{k+1}, X, z) with X ⊂ Λ_{k+1} "do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice". Note: this cannot hold for terms that contain a merged R′_k input, because the whole-lattice theory has no R-terms. Balaban does not comment on this. This is the gap W8 in his own text.
  - p. 279: vacuum subtraction for E^{(k+1)} and R″^{(k+1)}; coupling renormalization "by subtracting β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1)". β_{k+1}(g_k) is a number, fixed by the whole-lattice (all-small-field) theory of CMP 109.
- CMP 119 pp. 259–260 (PDF 17–18): (2.30) R_k = Σ_j [R^{(j)}(Λ_j, U_k) − R^{(j)}(Λ_j, 1)]; localization domains X ∈ D_j inside Λ_j; properties (i)–(iii) as for E (same analyticity spaces (2.28)); (2.31) |R^{(j)}(X,(U,J))| ≤ g_j^{κ_0} exp(−κd_j(X)), κ_0 arbitrarily large; text: after vacuum subtraction, "marginal terms, i.e., terms with bounds O(1)(L^jη)^4 g_j^{κ_0} exp(−κd_j(X)) … The sum over j is controlled by g_j^{κ_0}."
- CMP 109 (0.25): admissible E-input bound |E^{(j)}(X,(U,J))| ≤ E_0 exp(−κd_j(X)).
- CMP 109 p. 280 (PDF 32), end of the analysis of (3.34)–(3.54): "Eventually we have to recover the constant E_0 in the inductive assumption (1.18), and the mechanism for it is provided by the differentiation with respect to t_□, at t_□ = 0. This differentiation yields a factor O(1)α_2^{−1}ε_1". Context: (3.34) is the expansion of an input E^{(j)}(X, U_j(□_0, exp iτB)) in the fluctuation/background variable. So the ε_1 factor multiplies quantities that vanish at zero fluctuation.

## 1. Task 1: the t-measure with covariance C_f^{(k)}

### 1.1 The modified measure [definition]

Notation as in D2 §2.3 and D3R §2.2. The sourced Wilson weight is w_k = g_k^{−2} + d_B + d_S. d_B is multiplied by t with Balaban's deviation (D3R §2.2 routing). d_S = −(f_k − h_k) is present at every s, t, with |d_S| ≤ 2r and |g_k²d_S| ≤ 2γ²r (D3R §2.2(c), constant note of D3R_VERIFY item 1). Expanding A(d_S, U_k(…)) around U_{k+1} gives (D2 (2.a)) a tangential linear term, a quadratic term, and a cubic remainder:
  g_k⟨J_S, H_1B′⟩ + ½g_k²⟨B′, 𝒱_S B′⟩ + g_k³R_3(B′; d_S),   𝒱_S := H_1^*(Σ_p d_S(p) H_p(U_{k+1}))H_1 + (local D^{(2)} correction).
With B′ = CA (Balaban's parametrization after the δ(QB) elimination, CMP 109 p. 268), put
  𝒲_S := C^*𝒱_S C,   C_0 := C^{(k)} = (C^*Δ^{(k)}C)^{−1},   C_f^{(k)} := (C_0^{−1} − g_k²𝒲_S)^{−1}.
Up to sign convention of d_S, this is the operator "Δ − g_k²Σ_p f_p H_p + gauge terms" of the task: Δ = C^*Δ^{(k)}C contains the gauge-fixing terms, H_p is the plaquette Hessian at U_{k+1}, and the D^{(2)} term comes from the nonlinear part D(g_kCA) of the parametrization.
The sourced version of (3.27) is
  dμ^f_{s,t}(A) := Z^{f,−1}_{s,t} dμ_{C_f^{(k)}}(A) χ_k exp[−⟨A, C^*Δ^{(k)}CA_k⟩ + P̃_f^{(k)}(g_k, A) + {…}_{s,t} + tV^{(k)}(S_k)],
  P̃_f^{(k)} := P^{(k)} + g_k⟨J_S, H_1CA⟩ + g_k³R_3(CA; d_S).
{…}_{s,t} is Balaban's bracket with 1/g_k²(·) − 1/g_k² replaced by d_B (D3R §2.3 (1)). Same change in (3.29) and in the regular logarithm (3.30): there the quadratic part of P^{(k)}(tg_k, A) and the 𝒲_S term both scale as t², so in (3.30) one uses C_{f,t} := (C_0^{−1} − t²g_k²𝒲_S)^{−1}; every bound below holds for it with τ → t²τ.
Key structural fact: C_f^{(k)} does not depend on the interpolation parameter t of (3.26), nor on s. d_S is not multiplied by t. So uniformity in t ∈ [0, 1] (and in complex t in any disc) is automatic for the covariance. The t-dependence stays in Balaban's own vertices.

### 1.2 Covariance bounds, uniform in t, explicit in r [proved, given (P)]

Apply D2 Lemma 3.1 with 𝒲 = 𝒲_S. Input: ‖g_k²𝒲_S‖_δ ≤ c_H ε_S with δ = δ_0/2, where
  ε_S := sup_p |g_k² d_S(p)| ≤ 2γ²r   (D3R §2.2(c); in the D2 normalization (Hβ) the same quantity is ≤ 3γ²r),
and c_H bounds ‖H_1^*H_pH_1‖_δ summed over the plaquettes at a point plus the D^{(2)} term. c_H depends only on Balaban's constants (H_1 obeys (P)). Put
  τ := c_1 c_H ε_S ≤ 3c_1c_H γ² r.
Condition (C1): r ≤ r_1 := 1/(6γ²c_1c_H). Under (C1), τ ≤ ½, and for every k, every t ∈ [0, 1], every s:
 (a) C_f^{(k)} = Σ_n C_0(g_k²𝒲_SC_0)^n, ‖C_f^{(k)}‖_δ ≤ c_1/(1 − τ) ≤ 2c_1.
 (b) ‖C_f^{(k)} − C_0‖_δ ≤ c_1τ/(1 − τ) ≤ 6c_1²c_Hγ² · r. The change is linear in r. The bound is uniform in k and is controlled by r, not by g_k: ε_S is the relative size of the source weight against the Wilson weight g_k^{−2}, and the inductive hypothesis bounds it by O(γ²r) at every k. This is D3R_VERIFY item 2: the quadratic source part is not a vertex of Balaban's P^{(k)} class (quadratic coefficients O(g_k)); it is a covariance change of relative size O(γ²r).
 (c) For ∂_L, ∂_R ∈ {1, first-order, special second-order operators of CMP 109 (1.8)}: ‖∂_L C_f ∂_R − ∂_L C_0 ∂_R‖_δ ≤ 2c_1τ. So every bound of (P) holds for C_f^{(k)} with c_0 → 3c_1 and δ_0 → δ_0/2.
 (d) Random-walk form: C_f^{(k)} = Σ_n C_0(g_k²𝒲_SC_0)^n. Insert Balaban's walk expansion (CMP 116 (1.6)) for each C_0. Each g_k²𝒲_S factor is one local step of weight ≤ c_Hε_S. The decoupling parameters s(Δ) of CMP 116 are put on the C_0 walks as Balaban does and on 𝒲_S steps by the cube that contains the step. The weighted bound (CMP 116 (1.7)) then holds termwise with the constants of (c). This is the property his cluster expansion uses: CMP 116 p. 3 [V] "we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds".
 (e) Complex f. For f|_X complex in S_r(X), 𝒲_S is complex with ‖g_k²𝒲_S‖_δ ≤ c_Hε_S, ε_S now the sup of |g_k²d_S| over the complex domain (same bound by (Hβ) on the complex disc). (a)–(d) need no positivity and hold unchanged. For the integral itself: |⟨A, g_k²𝒲_SA⟩| ≤ ‖C_0^{1/2}g_k²𝒲_SC_0^{1/2}‖⟨A, C_0^{−1}A⟩ ≤ τ⟨A, C_0^{−1}A⟩ (Schur, (F3)). So Re(C_0^{−1} − g_k²𝒲_S) ≥ (1 − τ)C_0^{−1} as a form. The complex Gaussian integral converges absolutely, and |dμ_{C_f}/dμ_{C_0}| is dominated as in 1.4.
 (f) Holomorphy: C_f^{(k)} is holomorphic in (U, J) on Balaban's domain and in f|_X (D2 Lemma 3.1 (v)), uniformly in t.
All constants are uniform in t because C_f^{(k)} does not depend on t; for the (3.30) family C_{f,t}, τ → t²τ ≤ τ.

### 1.3 Balaban's cluster expansion for the t-measure with C_f^{(k)} [reduced to (P) and CMP 116 p. 3]

What the cluster expansion of CMP 116 / CMP 119 pp. 275–279 uses from the Gaussian measure:
 (G1) exponential decay of the covariance and of the operators built from it (CMP 116 (1.7)), with the decoupling parameters s(Δ) inserted in the random-walk expansion (CMP 116 (1.6));
 (G2) analyticity of covariance and operators in (U, J) on Balaban's domain;
 (G3) a uniform upper bound on the covariance (variance of the fluctuation field per bond), used for Gaussian moment bounds and for the probability of the small-field cutoff χ_k failing;
 (G4) normalization: the Gaussian integrals in numerator and denominator of the expectation are with the same covariance; the determinant enters only the regular logarithm.
Check for C_f^{(k)}:
 (G1) by 1.2 (c)–(d): constants c_0 → 3c_1, δ_0 → δ_0/2. Balaban fixes M ≥ M(κ) after δ_0; choose M for δ_0/2 (D2 §3.4).
 (G2) by 1.2 (f).
 (G3) by 1.2 (a): ‖C_f‖_{ℓ²→ℓ²} ≤ 2c_1, pointwise |C_f(b, b)| ≤ 2c_1. Every Gaussian moment bound of Balaban changes by at most 2^{n/2} for an n-th moment. These factors enter as O(1)^{|cubes|} and are absorbed exactly as his own O(1)-constants (by κ and by the choice of ε_1, M).
 (G4) The ratio in (3.26) uses Z^f_{s,t}; det C_f cancels. In the regular logarithm, log det(C_f/C_0)^{1/2} = ½Σ_{n≥1} n^{−1} tr(g_k²C_0𝒲_S)^n is a sum of closed walks with n local 𝒲_S-steps (D2 §3.4). Each term localizes with decay δ_0/2 and weight τ^n; the U = 1 value goes to W_{k+1}, the rest to E^{(k+1)}. This is uniform in t because C_f does not depend on t.
Result. Uniformly in t ∈ [0, 1] (and in complex t, |t| ≤ T, with Balaban's own T), the localized expansions (3.44)–(3.47) for all expectation values in (3.26), (3.28), (3.37) hold with the sourced measure. Every term satisfies Balaban's bounds with constants multiplied by at most O(1)^{|X|}·(1 + O(τ)), and decay rate halved. The O(1)^{|X|} is absorbed by κ → κ − O(1) as Balaban does after each step. [reduced: (P) for complex configurations (CMP 95/96/99, Thm 3.1 of [13]) as a black box; CMP 116 p. 3 replacement principle]

### 1.4 The large-field positivity split survives [proved for the measure part; normalization per-site constant reduced as in D3R §1.4]

Let F ≥ 0 be any positive integrand that Balaban bounds from above (the large-field parts of T′_k 1, (1.73) of CMP 122 I, and the χ_k^c tails of the fluctuation field). Real f first.
Pointwise domination. For real f, g_k²⟨A, 𝒲_SA⟩ ≤ τ⟨A, C_0^{−1}A⟩ (Schur, (F3)). So
  ∫dA e^{−½⟨A,(C_0^{−1} − g_k²𝒲_S)A⟩} F(A) ≤ ∫dA e^{−½(1−τ)⟨A, C_0^{−1}A⟩} F(A) = (1 − τ)^{−n/2} ∫dA′ e^{−½⟨A′, C_0^{−1}A′⟩} F(A′/√(1 − τ)),
n = number of fluctuation variables in the integration region.
 (i) Thresholds. If F contains a large-field characteristic function χ^c{|A(b)| ≥ ε} (or the large-plaquette factors with thresholds ε_j), then F(A′/√(1 − τ)) has threshold √(1 − τ)ε. Balaban's factor exp(−γ_0 ε²/(variance)…) becomes exp(−γ_0(1 − τ)…). For τ ≤ ½: γ_0 → γ_0/2. This is the same loss as in D3R §1.4 for the Wilson weight (θ ≤ 5γ²r there); the two losses multiply: γ_0 → γ_0(1 − τ)(1 − θ) ≥ γ_0/4 for τ, θ ≤ ½. Balaban uses these factors only to beat combinatorial factors O(1)^{|·|} and the per-site normalization budget, through a function of g_j that grows as g_j → 0. A fixed fraction of γ_0 does the same job after g (i.e. γ) is made smaller by a fixed factor. [reduced: not re-checked line by line in CMP 122 I]
 (ii) Normalization. (1 − τ)^{−n/2} = exp(O(τ)·n). Per site this is O(γ²r), inside Balaban's O(1)log g_j^{−2} per-site budget of (B11′). Against the normalized Gaussian, the ratio of normalizations is det(1 − g_k²C_0^{1/2}𝒲_SC_0^{1/2})^{1/2}(1 − τ)^{−n/2} ≤ exp(O(τ)n) by the same count. [reduced: per-site comparison, as in D3R §1.4; not checked against each normalization in CMP 122 I]
Complex f. |exp(½g_k²⟨A, 𝒲_SA⟩)| = exp(½⟨A, Re(g_k²𝒲_S)A⟩) ≤ exp(½τ⟨A, C_0^{−1}A⟩). So the same domination holds in modulus for complex f with |g_k²d_S| ≤ ε_S. This is what the B-term analyticity bounds need (bounds in modulus on the complex domain).
Dependence on r. τ ≤ 3c_1c_Hγ²r. The condition used: r ≤ r_1 (C1). The large-field constant becomes γ_0(1 − 3c_1c_Hγ²r)(1 − 5γ²r).

### 1.5 Ledger for Task 1

- Modified measure (3.27)_f with C_f^{(k)} independent of s, t: [definition; structural fact proved].
- Bounds (a)–(f) on C_f^{(k)}, uniform in t, explicit in r: [proved, given (P)] (D2 Lemma 3.1, CONFIRMED in D2_VERIFY with c_0 → 3c_1).
- Cluster expansion (3.44)–(3.47) with C_f^{(k)}: [reduced to (P) and the CMP 116 p. 3 replacement principle].
- Large-field positivity split for the measure: [proved] for the domination step; per-site normalization [reduced, as D3R §1.4].
- Condition: (C1) r ≤ 1/(6γ²c_1c_H), plus D3R's θ ≤ ½ (5γ²r ≤ ½) and ρ_1 ≤ r/(4C_hM) (D3R_VERIFY item 1).

## 2. Task 2: merged R-outputs (W8)

### 2.1 Choice of route

Route (a) closes as a reduction; route (b) does not close on its own. Reason. Balaban's subtraction of β_{k+1}(g_k)A "from the whole E^{(k+1)} − E^{(k+1)}(1)" (p. 279) is a subtraction of a fixed number times A. β_{k+1}(g_k) comes from the whole-lattice theory, which has no R-terms. So subtracting from the whole is the same as subtracting from the pure part and leaving the R-induced part as it is:
  E^{(k+1)} − E^{(k+1)}(1) − β_{k+1}A = [E_pure − E_pure(1) − β_{k+1}A] + [E_R − E_R(1)].
Balaban's treatment therefore needs no split for the subtraction itself. What his text does not supply is a bound for the second bracket. It is not irrelevant: its marginal part is of size (L^jη)^4·(small), and (L^jη)^α decays like L^{−α(K−j)} while any power of g_j decays only like (K − j)^{−power/2}. So the second bracket must carry the R-type marginal bound g^{κ_0}. That is Lemma F2′ below, i.e. route (a), with the book-keeping that D3R_VERIFY item 3 asked for. Route (b) (freezing for the whole E^{(k+1)}) would need freezing for E_R, which in turn needs freezing for the R-inputs: that is D3R §3.3 with its γ-dependent ρ_1 condition. It is kept as the fallback (§2.5).

### 2.2 Set-up and the two hypotheses used

Inputs of the regular integral at step k+1 (CMP 119 (3.28)–(3.30), (3.37)): the vertices P_f^{(k)} (with the measure of §1) and the collection I = {I^{(j)}(X)} of localized terms of E_k, indexed by slots (j, X), X ∈ D_j, X ⊂ Λ_j. Norm on the analyticity domain U_j(X, α_{0,j}, α_{1,j}) (CMP 119 (2.28)):
  ‖I‖ := sup_{(j,X)} sup_{(U,J)} |I^{(j)}(X,(U,J))| e^{κd_j(X)}.
Balaban's admissibility is ‖I‖ ≤ E_0 (CMP 109 (0.25)).
Split I = I_p + I_R. I_R collects: the merged R′_k = Σ_{j≤k_1}[R^{(j)} − R^{(j)}(1)] (slot (j, X) as in (2.30)), and all earlier R-induced terms E_R^{(m)}, m ≤ k (slot (m, X)). I_p collects the pure terms E_pure^{(m)}, m ≤ k. Both parts are carried at their own scale labels; nothing is re-labelled.
Transport versus generation. In (3.28)–(3.29) the input enters as
  E_k(U_k(exp i[g_kCA + D(g_kCA)]U_{k+1})) = E_k(U_k(U_{k+1})) + δI(A),   δI(A) := I(fluctuated) − I(A = 0).
The first term is the transported input: it keeps its label j and its bound, and it is not part of E^{(k+1)} (it stays in the term Σ_j E^{(j)} of (2.25) at the new configuration). Write G(I) for the new localized E^{(k+1)}-terms (output of (3.44)–(3.47) restricted to X ⊂ Λ_{k+1}, before vacuum and coupling subtraction). G depends on I only through δI. So the transported inputs never pass through G, and no Schwarz factor ever acts on them.
Hypotheses (both are inputs, stated precisely):
 (W4) G is holomorphic in I on {‖I‖ < 2E_0} (U, J in Balaban's domain), each output term G(I)(X) with its localization. [open in general; same assumption as D2 §6.3 and D3R F1]
 (Eps) Write G_1(I) := G(I) − G(0). For ‖I‖ ≤ 2E_0: |G_1(I)(X,(U,J))| ≤ 2ε′E_0 e^{−κd_{k+1}(X)}, ε′ := O(1)α_2^{−1}ε_1. Reading of CMP 109 p. 280: G_1 is built from δI, which vanishes at zero fluctuation; Cauchy in the fluctuation field in each cube (t_□-derivative at 0, field size ε_1 against analyticity radius α_2) gives the factor ε′ per input term; the cluster expansion multiplies by O(1)^{|X|}, absorbed by κ. This is exactly how Balaban gets E_0 back for the new term. [reduced: the quote is for E-inputs of size E_0; we use it for all admissible inputs of size ≤ 2E_0, which is the same estimate with E_0 → 2E_0]

### 2.3 Lemma F2′ (R-induced part of E^{(k+1)}) [proved, given (W4), (Eps), and Balaban's (2.31)]

Definitions (recursive). E_pure^{(k+1)} := G(I_p), E_R^{(k+1)} := G(I_p + I_R) − G(I_p). Then E^{(k+1)} = E_pure^{(k+1)} + E_R^{(k+1)} exactly. Both are localized as G, gauge invariant, vacuum subtracted separately. At step k+2, E_pure^{(k+1)} goes into I_p and E_R^{(k+1)} goes into I_R.
Let a_m := ‖E_R^{(m)} − E_R^{(m)}(1)‖ (norm of 2.2 at label m). Let ε′ be as in (Eps).

Lemma F2′. Assume g_j ≤ g_{j+1} (asymptotic freedom), ‖I_p‖ ≤ E_0 at every step (Balaban's induction for the pure part, Lemma F1), 32ε′ ≤ 1 and 4g_K^{κ_0} ≤ E_0. Then for every m:
 (i) a_m ≤ 32ε′ g_{m−1}^{κ_0} ≤ 32ε′ g_m^{κ_0};
 (ii) for regular real configurations U (Balaban's small-field domain at scale m), |E_R^{(m)}(X, U) − E_R^{(m)}(X, 1)| ≤ C M²·32ε′·(L^mη)^4 g_m^{κ_0} e^{−κ′d_m(X)}, κ′ < κ fixed, C absolute.
So E_R is a marginal term with Balaban's R-type bound (2.31)-text, with an extra factor 32ε′ < 1.

Proof of (i). Step 1 (one generation). Fix step k+1. ‖I_R‖ ≤ b_k := max_{j≤k}(2g_j^{κ_0}·1[j ≤ k_1] + a_j); the two summands can share a slot (j, X), hence the sum inside the max. Put S := E_0/b_k. For |s′| ≤ S, ‖I_p + s′I_R‖ ≤ E_0 + |s′|b_k ≤ 2E_0, so by (W4) h(s′) := G_1(I_p + s′I_R) − G_1(I_p) is holomorphic on |s′| ≤ S, h(0) = 0, and by (Eps) |h| ≤ 4ε′E_0 e^{−κd} (two terms, each ≤ 2ε′E_0e^{−κd}). Schwarz's lemma: |h(1)| ≤ 4ε′E_0e^{−κd}/S = 4ε′b_k e^{−κd}. Since G(0) cancels in h, h(1) = E_R^{(k+1)}. Vacuum subtraction at most doubles the sup: a_{k+1} ≤ 8ε′b_k.
Step 2 (no compounding). Induction claim: a_j ≤ 2g_j^{κ_0} for all j ≤ k. Then b_k ≤ max_{j≤k} 4g_j^{κ_0} = 4g_k^{κ_0}, so a_{k+1} ≤ 32ε′g_k^{κ_0} ≤ g_{k+1}^{κ_0} ≤ 2g_{k+1}^{κ_0}. The claim propagates; its base case is a_m = 0 before the first R-operation. This gives (i).
Why the factor 4 per generation is harmless. Unroll Step 1: the part of E_R^{(m)} that descends from an R-input n generations back has passed n Schwarz steps, each with factor 8ε′ (factor 4 from Schwarz with the vacuum doubling, times 2ε′ from (Eps)). It is ≤ (8ε′)^n · 4g^{κ_0}. With 8ε′ ≤ ¼ the sum over n is ≤ (4/3)·(first term). The factor 4 per generation is dominated by the ε′ factor per generation. The point that makes this work, missing in D3R: transported inputs do not pass through G (2.2), so they never pick up a Schwarz factor; only generated terms do, and each generated term carries ε′.
The admissibility side condition: b_k ≤ 4g_k^{κ_0} ≤ E_0, so S ≥ 1 (Schwarz at s′ = 1 is inside the disc). Also ‖I_p + I_R‖ ≤ E_0 + 4g^{κ_0}: Balaban's own merged input E_k = E_pure + R′ + E_R is admissible with E_0 → E_0 + 4g^{κ_0}, which is inside (W4)'s ball. ∎(i)

Proof of (ii). E_R^{(m)} − E_R^{(m)}(1) vanishes at U = 1. Its first derivative at U = 1 vanishes: every term is invariant under global colour rotations (G^c gauge invariance, CMP 119 (2.27) property (iii) carried by G), and an Ad-invariant element of su(N) is 0 (D2C §3.1). Lemma A(a) of D2C §3.1 with sup bound Γ = a_m e^{−κd_m(X)} on the analyticity domain gives the factor (τ_X/α_{2})² ≤ C M²(1 + d_m(X))²(L^mη)^4 on regular configurations. The (1 + d)² is absorbed by κ → κ′. ∎(ii)

Remark (what was wrong in D3R F2). D3R applied Schwarz to the whole output out(s′) − out(0) and then claimed the ε′ factor separately. Without the transport/generation split, the Schwarz step on the whole output gives 2ρ_R (or 4ρ_R) with no ε′, and the chain over generations then grows like 4^n. The fix is to apply Schwarz to G_1 only; G_1 carries ε′ by (Eps).

### 2.4 Extraction, summability, and the repaired p. 278 statement

Extraction. Sourced form: E^{(k+1)} − E^{(k+1)}(1) − A(B_{k+1}∘f, ·) = [E_pure − E_pure(1) − A(B_{k+1}∘f, ·)] + [E_R − E_R(1)]. The first bracket is irrelevant by D2C §3, using (vii) for E_pure only (F1). The second is not extracted and needs no freezing. B_{k+1}(c) is defined from the pure part. This is the sourced version of Balaban's subtraction of the number β_{k+1}(g_k) from the whole term (§2.1); at f ≡ c constant and c → Balaban's point it reduces to his.
Summability. Per unit physical volume, the scale-m marginal terms number O((L^mη)^{−4}) slots, each ≤ C M²·32ε′(L^mη)^4 g_m^{κ_0} after the sum over X with e^{−κ′d}. Sum over m: ≤ C′ε′ Σ_m g_m^{κ_0} < ∞ uniformly in K for κ_0 > 2 (1/g_m² ≥ γ^{−2} + β(K − m)). Same count as Balaban's for R-terms (CMP 119 p. 260: "The sum over j is controlled by g_j^{κ_0}").
Repaired p. 278 statement. Balaban: terms with X ⊂ Λ_{k+1} "coincide with the corresponding terms arising from the expressions defined on the whole lattice". With the split this holds for E_pure (its inputs are pure terms, which coincide by induction) and fails for E_R (the whole lattice has no R). The β-subtraction is then consistent: β_{k+1}(g_k) is the whole-lattice coefficient and it is the right one for E_pure; E_R carries no counterterm.
Holomorphy in f. E_R depends on f through its inputs (D3 (L2)–(L3)) and through P_f^{(k)} and C_f^{(k)} (§1). All are holomorphic on S_{τ(X)}(X); (W4) is uniform in f on that domain; Schwarz in s′ commutes with holomorphy in f. So E_R is holomorphic in f|_X on S_{τ(X)}(X) with the bound (i). It enters the Gevrey count of D3R §4 as an R-term.
Interaction with later R-operations. E_R^{(m)} is an E-type term with label m. When a later R-operation meets its domain (X ∩ Z ≠ ∅), it is re-expanded into C/B like every E-term (D3R §3.1); its smaller bound only helps.

### 2.5 Fallback: route (b), freezing for the whole E^{(k+1)} [sketch, not needed]

If one wants (vii) for all of E^{(k+1)} (so that A(B∘f) is extracted from the whole term, with no split), one needs (vii) for E_R. Interpolate all inputs of the step between f and c = f(y) by a complex t as in D2 §6.3. The pure inputs have (vii) by F1. The R-inputs need a freezing property of their own: this is D3R §3.3 (denominator condition |σ| ≤ ½ and the positivity split, a ρ_1 ≤ ρ_1(γ, M) condition, one more induction). Given that, the Cauchy-in-t argument applied to h(1) gives |E_R(f) − E_R(c)| ≤ O(Mλ_{k+1}ρ_1/r)(1 + d)·32ε′g^{κ_0}e^{−κ′d}: the freezing error of E_R is bounded by its own small size times the D2 freezing factor. A bound by size alone (|E_R(f)| + |E_R(c)| ≤ 2a_m) is not enough for route (b): it lacks the λρ_1/r factor and is marginal, not irrelevant, so D2C §3 would not make A(B∘f)-extraction from E_R irrelevant. Route (a) avoids this, so route (b) is the fallback only.

### 2.6 Ledger for Task 2

- Route: (a) chosen. Balaban's subtraction of β_{k+1}(g_k)A from the whole E^{(k+1)} is identical to subtraction from the pure part, because β_{k+1}(g_k) is a number from the whole-lattice theory [proved from p. 279 wording]. His text gives no bound for the R-induced remainder; F2′ supplies it.
- Transport/generation split: transported inputs E_k(U_k(U_{k+1})) keep their label and bound and never pass through G; G depends on inputs only through δI [V, CMP 119 (3.28)–(3.29) structure, formulas partly garbled in the text layer].
- Lemma F2′ (i) size a_m ≤ 32ε′g_m^{κ_0}, no compounding over generations: [proved, given (W4) and (Eps)].
- (Eps), ε_1 factor for the input-dependent generated part with inputs up to 2E_0: [reduced: CMP 109 p. 280 mechanism, quoted for E-inputs of size E_0].
- (W4), holomorphy of the step in its inputs on a ball of radius 2E_0: [open], shared with F1 and D2 §6.3.
- Lemma F2′ (ii) (L^mη)^4 factor: [proved, given D2C §3.1 Lemma A].
- Extraction with E_R unextracted, summability Σ g^{κ_0}: [proved, given F1 and D2C §3].
- Repair of the p. 278 "coincide with whole lattice" statement for E_pure only: [proved, by induction on the split].
- Route (b) fallback: [sketch; needs D3R §3.3].

## 3. Summary

1. Task 1: with d_S present at every s, t, the t-measure is Balaban's (3.27) with dμ_{C^{(k)}} → dμ_{C_f^{(k)}}, C_f^{(k)} = (C^*Δ^{(k)}C − g_k²C^*𝒱_SC)^{−1}; it does not depend on s or t, so uniformity in t is automatic.
2. With τ = c_1c_Hε_S ≤ 3c_1c_Hγ²r ≤ ½ (r ≤ 1/(6γ²c_1c_H)): ‖C_f − C_0‖_δ ≤ 2c_1τ, all (P)-bounds with c_0 → 3c_1, δ_0 → δ_0/2, a random-walk form, holomorphy in f; the cluster expansion holds [reduced to (P) and CMP 116 p. 3].
3. The large-field positivity split survives: g_k²⟨A,𝒲_SA⟩ ≤ τ⟨A,C_0^{−1}A⟩ dominates the measure by a rescaled C_0-Gaussian, so γ_0 → γ_0(1 − τ)(1 − θ) ≥ γ_0/4 and a per-site normalization O(γ²r) [domination proved; per-site budget reduced as D3R §1.4].
4. Task 2: route (a) closes. Balaban's β-subtraction from the whole term equals subtraction from the pure part (β is a whole-lattice number); the R-induced part E_R needs a marginal bound, not an extraction.
5. Lemma F2′: transported inputs never pass through the generated map G; Schwarz on G_1 = G − G(0) with Balaban's ε′ = O(α_2^{−1}ε_1) gives a_{k+1} ≤ 8ε′·max_j(2g_j^{κ_0} + a_j), hence a_m ≤ 32ε′g_m^{κ_0} with no compounding (8ε′ ≤ ¼ per generation beats the factor 4), and (L^mη)^4 g_m^{κ_0} e^{−κ′d} on regular configurations.
6. Ledger: proved given (W4) and (Eps); (Eps) reduced to CMP 109 p. 280; (W4) open (shared with F1, D2 §6.3); route (b) freezing for the whole E^{(k+1)} is the fallback and needs D3R §3.3.
