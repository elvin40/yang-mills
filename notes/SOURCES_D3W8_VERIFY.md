IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_D3W8 verification

Verifier log. One section per step.

## S1 read W8 and context
Read SOURCES_D3W8.md in full, D3R §3, D3R_VERIFY S3/S5/S7, D2 Lemma 3.1 (§3.3).
- Lemma 3.1 (ii) gives ‖C_f − C_0‖_δ ≤ 2c_1τ; W8 1.2(b) gives c_1τ/(1 − τ) ≤ 2c_1τ = 6c_1²c_Hγ²r with τ ≤ 3c_1c_Hγ²r. Consistent.
- τ definitions match: D2 τ = g_k²w_0rc_1; W8 τ = c_1c_Hε_S with ε_S = sup|g_k²d_S|.
- Flags to check: (a) 1.3 claims uniformity for complex |t| ≤ T "Balaban's own T", but 1.2 bounds C_{f,t} only via t²τ ≤ τ, i.e. |t| ≤ 1. (b) 1.4 domination volume factor: n must be the marginal region, not the full lattice. (c) F2′ factor 8 and max over j. (d) (Eps) attaches ε′ to G − G(0).

## S2 CMP 119 pp. 271–272 page images (PDF 29–30)
- (3.27) image: Z_{s,t}^{−1} dμ_{C^{(k)}(Λ_{k+1})}(A) χ_k exp[−⟨A, C*Δ^{(k)}CA_k⟩ + P^{(k)} + {…}_{s,t} + tV^{(k)}(S_k)]. t multiplies B_k, A((1/g_k²(·)) − (1/g_k²), …), V^{(k)}; s multiplies R″_k. CONFIRMED verbatim.
- (3.28) last log, image: log[z^{(k)} ∫dA χ^{(k)} exp[−½⟨A, C*Δ^{(k)}CA⟩ + P^{(k)}(g_k, A) + {E_k(U_k(exp i[g_kCA − hD̃(g_kCA)]V^{(k)})) − E_k(U_{k+1})}]]. W8 writes "+ D(g_kCA)" and "U_{k+1}" for V^{(k)}; notation slip only. The input enters the integral only as a difference against E_k(U_{k+1}). CONFIRMED.
- (3.29): Z_t^{−1}dμ_{C^{(k)}(Λ_{k+1})}(A)χ^{(k)} exp[−t⟨A_k, C*Δ^{(k)}CA⟩ + P^{(k)}(g_k,(tA_k, A)) + {E_k(U_k(…(tA_k, A)…)) − E_k(U_{k+1})}]. Here t multiplies the external field A_k.
- (3.30): log[z∫dA exp(−½⟨A, C*Δ^{(k)}CA⟩)] + log∫dμ_{C^{(k)}(Λ_{k+1})}χ^{(k)} + g_k∫_0^1 dt ⟨∂_{tg_k}P^{(k)}(tg_k, A) + ∂_{tg_k}E_k(U_k(…tg_kCA…))⟩_t. t is real in [0, 1] as printed. So t²τ ≤ τ holds on the printed range. W8 1.3 "complex t, |t| ≤ T, Balaban's own T" needs τ ≤ 1/(2T²) if T > 1; minor constant note.
- Omission in W8 1.1: the source quadratic form on the full fluctuation field (A_k, A) has a cross block g_k²𝒲_S(Λ_{k+1}, Ω_{k+1}\Λ_{k+1}). It gives a linear term in A next to −⟨A, C*Δ^{(k)}CA_k⟩ in (3.27) and (3.29). W8's (3.27)_f does not list it. It is local and is multiplied by the A_k-parameter in (3.29), so it goes to B^{(k+1)} as Balaban's term does. Minor.

## S3 CMP 119 pp. 278–279 page images (PDF 36–37)
- p. 278 (3.45)–(3.47) image: [expectation in (3.37)] = Σ_{X∈D_{k+1}, X∋b} E_0^{(k+1)}(Λ_{k+1}, X, b). "The terms of the sum above satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0^3(g_k)). ... the integration with respect to t preserves the form of the representation, and the multiplication by g_k yields small bounds."
- p. 278 bottom, verbatim: "the terms E_0^{(k+1)}(Λ_{k+1}, X, z) of this representation, for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]." CONFIRMED. The framework of [I] has no R-terms, so for terms built from the merged R′_k inputs this cannot hold literally. W8's reading is correct.
- p. 279 verbatim: vacuum renormalization subtracts E^{(k+1)}(1) and R″^{(k+1)}(1); "The coupling constant renormalization is performed by subtracting β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1), and by replacing the function g_k^{−2}(·) in the action A(g_k^{−2}(·), U_{k+1}) by g_{k+1}^{−2}(·) defined by the equation (2.24) with j = k+1." CONFIRMED.
- Additional smallness source not used by W8: in (3.30) the generated term is g_k∫dt⟨∂_{tg_k}E_k(…tg_kCA…)⟩_t; Balaban says "the multiplication by g_k yields small bounds". This is the CMP 119 form of the same mechanism: the input enters only through its fluctuation derivative.

## S4 CMP 119 pp. 259–260 page images (PDF 17–18)
- (2.24) image: 1/g_{j−1}²(x) = 1/g_j²(x) + β_j(g_{j−1})φ_j(x), φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1}. Text p. 249 (txt l. 560–561): "β_1(g_0) was defined in [I] by the formulas (1.41)–(1.43)". So β_j(g_{j−1}) is a number from the whole-lattice theory of CMP 109. CONFIRMED.
- (2.25) image: E_k(U_k) = Σ_{j=1}^k [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1})A(φ_j, U_k)]. Each input keeps its label j and is evaluated at the current U_k. Supports W8's "transported inputs keep their label".
- Note: Balaban's counterterm is β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}), localized by φ_{k+1}; W8 writes β_{k+1}A. Notation only.
- (2.30)–(2.31) image: R_k = Σ_j [R^{(j)}(Λ_j, U_k) − R^{(j)}(Λ_j, 1)]; |R^{(j)}(X,(U,J))| ≤ g_j^{κ_0} exp(−κd_j(X)); "After the vacuum energy renormalization we obtain a sum of marginal terms, i.e., terms with bounds O(1)(L^jη)^4 g_j^{κ_0} exp(−κd_j(X)). ... The sum over j is controlled by g_j^{κ_0}." CONFIRMED verbatim. F2′(ii) has exactly this form times 32ε′CM². "E_R is marginal" is consistent with its bound: (L^mη)^4 is the dimension-4 (marginal) scaling, and g_m^{κ_0} gives the Σ_m control.

## S5 CMP 109 p. 280 (PDF 32), text layer read in full, wording clear
- Verbatim: "Let us make a final remark about the constant in the inequality (3.54). It is much bigger than E_0, and further bounds and summations will make it worse. Eventually we have to recover the constant E_0 in the inductive assumption (1.18), and the mechanism for it is provided by the differentiation with respect to t_□, at t_□ = 0. This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant." CONFIRMED.
- Context: (3.54) bounds "the last term in (3.34)", the term built from an input E^{(j)} evaluated at the fluctuated configuration. So the ε_1 factor attaches to the input-dependent generated part, which vanishes at zero fluctuation. W8's attachment to G_1 = G − G(0) is a fair reading.
- Correction to (Eps): the factor O(1)α_2^{−1}ε_1 must beat a constant K "much bigger than E_0" made "worse" by summations. So the honest form is ε′ := K·O(1)α_2^{−1}ε_1, K depending on α_0, α_1, α_2, B_3, E_0 but not on ε_1. Balaban picks ε_1 so that Kε′-type product ≤ 1 (recover E_0). F2′ needs 32ε′ ≤ 1: one more smallness condition on ε_1, same direction. On the 2E_0 ball K may grow more than linearly (inputs also sit in the exponent of the measure (3.29)). This is why (Eps) is [reduced], as W8 states.

## S6 CMP 116 p. 3 (text layer, wording clear)
- Verbatim: "In these equations we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds. Only these bounds were important in the analysis of Sect. C, E [15]". CONFIRMED as a quote.
- Scope: "these equations" are (1.3)–(1.4), the equations for the linearizing map D(A′) and A_0 with propagators H, H_0, G. The quote is about the localization of the background-field solutions. It does not speak about the Gaussian covariance of the fluctuation measure. W8 1.2(d) and 1.3 use it for C_f in dμ_{C_f}. That is an extension by analogy, so the [reduced] label must name it as such. The measure part also needs (G3)–(G4), which W8 checks separately; that check is sound (C_f ≤ C_0/(1 − τ), det ratio as closed walks).
- Decoupled covariance: entrywise weights s(Δ) ∈ [0, 1] on 𝒲_S steps do not increase ‖·‖_δ, so τ-bounds hold for C_f(s). Positivity of C_f(s) at interpolated s then reduces to Balaban's positivity of C_0(s). Not stated in W8; minor.

## S7 D2C Lemma A and D2 §6.3 against F2′(ii) and (W4)
- Lemma A(a): |G(U)| ≤ Γ(τ_X/α_2)², τ_X = C_axM(1 + d_j(X))a_1(L^jη)². So the factor is C_ax²a_1²α_2^{−2}M²(1 + d)²(L^jη)^4. F2′(ii) calls C "absolute"; it carries a_1²α_2^{−2}. Constant note; harmless because α_2, a_1 are fixed before g.
- Lemma A needs G(1) = 0 and zero first derivative at 1. E_R − E_R(1) is a difference of G^c-invariant functions, so both hold. Lemma A itself is [proved, given (G), (D)] with (D) open (D2C ledger l. 179). F2′(ii) inherits (D).
- D2 §6.3 uses the same hypothesis "step holomorphic in inputs on the E_0 → 2E_0 ball" and cites CMP 116 p. 3 for it. W8's (W4) is the same assumption, marked [open]. Consistent.

## S8 CMP 119 p. 270 image (PDF 28) and F2′ arithmetic
- (3.25) image: exp[A_k(1/g_k², U_{k+1}) + E_0^{(k)}] · z^{(k)}∫dA χ^{(k)} exp[−½⟨A, C*Δ^{(k)}CA⟩ − ⟨A, C*Δ^{(k)}CA_k⟩ − ½⟨A_k, …A_k⟩ + P^{(k)}(g_k,(A_k, A)) + {…} + V^{(k)}(S_{k+1},(A_k, A))]. The full E_k sits inside {…} here. In (3.28) it appears only as E_k(fluct) − E_k(U_{k+1}), so E_k(U_{k+1}) is pulled out of the logarithm. Balaban never writes the transported term explicitly; it is forced by the difference form and by (2.25). Transport/generation split: CONFIRMED on the images; the "text layer garbled" caveat can be dropped.
- Schwarz step: h(s′) = G(I_p + s′I_R) − G(I_p), h(0) = 0, |h| ≤ 2·2ε′E_0 on |s′| ≤ S = E_0/b_k; |h(1)| ≤ 4ε′E_0/S = 4ε′b_k. Vacuum subtraction ×2. Factor 8 = 2 (two G_1 terms) × 2 (the 2E_0 ball in (Eps)) × 2 (vacuum). CONFIRMED.
- Max over j: the input norm is a sup over slots (j, X) with weight e^{κd_j}; new terms get the new label k+1, so no slot accumulates. R^{(j)} and E_R^{(j)} can share a slot, hence the sum inside the max. CONFIRMED.
- Induction: a_j ≤ 2g_j^{κ_0} ⇒ b_k ≤ 4g_k^{κ_0} (g_j ≤ g_k, asymptotic freedom) ⇒ a_{k+1} ≤ 32ε′g_k^{κ_0} ≤ g_{k+1}^{κ_0}. Needs 32ε′ ≤ 1 (same as 8ε′ ≤ ¼) and S ≥ 1 (4g_K^{κ_0} ≤ E_0). CONFIRMED. The unrolled geometric-series remark is not needed for (i).
- Σ_m g_m^{κ_0} ≤ Σ_n (βn)^{−κ_0/2} + O(γ^{κ_0}) converges iff κ_0 > 2, uniformly in K. CONFIRMED.

## S9 Domination inequality (W8 1.4)
- Used: for real f, |⟨A, g_k²𝒲_SA⟩| ≤ ‖C_0^{1/2}g_k²𝒲_SC_0^{1/2}‖⟨A, C_0^{−1}A⟩ ≤ c_1·c_Hε_S⟨A, C_0^{−1}A⟩ = τ⟨A, C_0^{−1}A⟩. Hence (1 + τ)^{−1}C_0 ≤ C_f ≤ (1 − τ)^{−1}C_0 as forms, and e^{−½⟨A, C_f^{−1}A⟩} ≤ e^{−½(1−τ)⟨A, C_0^{−1}A⟩} pointwise. Correct.
- Normalized: dμ_{C_f}/dμ_{C_0/(1−τ)} ≤ ((1 + τ)/(1 − τ))^{n/2}. Correct. Correction: if n is the whole Λ_{k+1}, the factor exp(O(τ)|Λ_{k+1}|) is a volume factor that the small-field region cannot absorb. Fix: for F depending on A|_Y, pass to the Y-marginal; (C_f)_{YY} obeys the same two-sided form bounds, so n → |Y| (large-field support). For χ_k^c-type tails (complement of a symmetric convex set) Anderson's inequality gives P_{C_f}(K^c) ≤ P_{C_0/(1−τ)}(K^c) with no volume factor. W8's text says "n = variables in the integration region"; it must say the marginal region.
- γ_0 → γ_0(1 − τ)(1 − θ) ≥ γ_0/4: arithmetic correct for τ, θ ≤ ½. Only the domination and Gaussian tails are proved; the use in CMP 122 I is [reduced] in W8 1.4(i) itself. The caller's word "proved" overstates.

## S10 Grades
1. t-measure: CORRECTED (minor). (3.27) and (3.30) CONFIRMED on images; C_f independent of s, t by the D3R routing; t ∈ [0, 1] real in (3.30), so t²τ ≤ τ. Fixes: add the cross term g_k²⟨A, 𝒲_S A_k⟩ (goes to B^{(k+1)}); 1.3 "complex |t| ≤ T" needs τ ≤ 1/(2T²) if T > 1; −hD̃ and V^{(k)} notation.
2. Bounds: CORRECTED. Lemma 3.1 numbers, (P) transfer, holomorphy CONFIRMED. CMP 116 p. 3 quote is about (1.3)–(1.4) background-field operators, not the Gaussian covariance; use for dμ_{C_f} is by analogy. Domination: volume factor must be on the marginal region (or Anderson for tails). γ_0/4 is arithmetic, the CMP 122 I use is reduced.
3. Route (a) reading: CONFIRMED (p. 278, p. 279, (2.24), β from [I] (1.41)–(1.43)). E_R marginal is consistent with (L^mη)^4g_m^{κ_0}e^{−κ′d}, Balaban's R-type form.
4. F2′: CONFIRMED given (W4), (Eps). Factor 8, max over j, induction, Σg^{κ_0} all check. Constant notes: ε′ includes Balaban's large constant K (p. 280 "much bigger than E_0"), so 32ε′ ≤ 1 is an extra ε_1-condition; C in (ii) carries a_1²α_2^{−2}, not absolute.
5. Ledger: CORRECTED (minor). Add Lemma F1, Lemma A's (D), and the ε_1 condition to F2′'s dependencies; transport split now verified on images; cluster-expansion label should name the CMP 116 p. 3 extension.
6. Route (b): CONFIRMED as a sketch; size-only bound is marginal, so it cannot give the irrelevant freezing error; needs D3R §3.3.
