# SOURCES_B20_LAMBDAJ verification (independent)

Date 2026-10-28. Firewall kept.

## V1. CMP 119 pp. 252-253 (images, 300 dpi, /tmp/b20v)
- p. 252 image: "additional sum over Λ_0" (printed Λ_0; context says Λ_1, likely a misprint). Printed (1.25) is Σ_{R_1} χ^{(0)}(Λ_1) χ^{(0)}(R_1^c ∩ Λ_1^c) χ^{(0)c}(R_1) χ'_0(S_1). The author's F1 transcription is CORRECTED: the sum index is R_1, the second factor is on R_1^c ∩ Λ_1^c, not Ω_1 ∩ Λ_1^c. The quoted sentence "For each term in this expansion consider the conditional integral with respect to the variables A restricted to Λ_1 ... different background field" is verbatim (pp. 252-253).
- Consequence for Lemma P: χ^{(0)}(Λ_1)χ^{(0)}(R_1^c∩Λ_1^c) = χ^{(0)}(R_1^c), so each term is χ^{(0)}(R_1^c)χ^{(0)c}(R_1)·χ'_0(S_1): R_1 is the exact large-field set. Sum over R_1 is an exact partition (given χ^{(0)} sharp). Λ_1 is a function of R_1 (S_1 determines R_1, p. 253). CONFIRMED.
- p. 253 image: (1.26) has χ^{(0)}(Λ_1) INSIDE ∫dA|_{Λ_1}. So one χ factor depends on integration variables. The author states this in Lemma Λ (c) correctly; the summary phrase "χ multiplies from outside" is too strong for this factor. It does not harm the argument: the factor is fixed-σ, has no I- or f-dependence, and is the CMP 116 small-field cutoff.
- (1.28) ρ_1 = Σ_{{Ω_1,Λ_1}} χ_1(Ω_1) T_1 exp A_1 confirmed: sum outside the T_1 operation. Renormalization in Λ_1 at U_1 = 1 plus β_1 A(φ_1,U_1) confirmed.

## V2. CMP 119 p. 278 (image)
- Sentence verbatim: "The important remark is that the terms E_0^{(k+1)}(Λ_{k+1}, X, z) of this representation, for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]. Now we can define the expressions in the formulas (2.26), (2.27) for j = k+1." CONFIRMED.
- Scope note: the sentence is about the E_0 terms of (3.47) (the (3.37) expectation pieces). The extension to all interior activities (R'' terms) rests on p. 279 and Claim L_G, as the author says. The sentence is printed without proof; Balaban's (3.45)-(3.46) show only the mechanism (polymer restriction Z_i ⊂ Z̄_0^c). So "[V]" covers the claim as printed, and Claim L_G carries the proof.

## V3. CMP 122 I pp. 182-183 (images)
- p. 182: (1.25) integrates dA_j restricted to Z_{j+1} ∩ Ω_{j+1}, with χ(Z_{j+1} ∩ Ω_{j+1}) INSIDE and the quadratic form ⟨A_j, C*Δ^{(j)}_{Λ^c_{j+1}} C A_j⟩ at a fixed region. Sentence verbatim: "The function χ_k^{(n+1)} does not depend on integration variables, and we have to consider the integral (1.25) multiplied by χ_k^{(n+1)}." CONFIRMED.
- p. 183: χ'_j (1.27) is introduced "under the integral (1.25)", and the result has "the function χ'_j inside". χ'_j tests V_j, an integration variable. (1.28) completes χ^{(j)}_□' the same way. "all the characteristic functions introduced above depend on the field variables localized in the corresponding components of the large field region Z_k" verbatim. CONFIRMED.
- CORRECTION to the author's summary: not every χ is outside the integral. χ_k^{(n+1)} is outside; χ'_j, χ(Z∩Ω), χ^{(j)}_□' (CMP 122 I) and χ^{(0)}(Λ_1) (CMP 119 (1.26)) are inside and depend on integration variables. The region choice (which components stay in Z) is made by expanding Π_components (χ + (1-χ)) under the integral; the finite sum then commutes with the integral by linearity. So "Λ_j is a summation index" holds; "χ multiplies from outside" holds only for χ_k^{(n+1)}. The inside χ's are sharp, I-free, and f-free; they do not affect holomorphy in I or f. No change to the conclusion.
- Sharpness: (1.24), (1.27), (1.29) are χ({inequality}) = set indicators. p_1 < p_0 printed (δ'_j = g_jA_1p_1(g_j)).

## V4. D3 (vii)(a) and Claim L_G (text read)
- D3 (vii)(a) needs: actual step term at U = 1 on X ⊂ Λ_j^{(j)} equals the all-small-field w^{(j)}(X; f).
- Claim L_G gives G(I)(X) = 𝒢_X(I|_X, U|_X, J|_X): same MAP. Equality of VALUES also needs I|_X = all-small-field inputs. A15_BDRY 3.2 says this holds only for the pure part: E_pure(X) = whole-lattice term, but E_R(X) = 𝒢_X(I_p + I_R) − 𝒢_X(I_p) ≠ 0 when earlier R-inputs lie in X, and E_R ≡ 0 on the all-small-field lattice.
- So the author's §3.3 sentence "summands ... equal the actual step values on X ⊂ Λ_j^{(j)} by Claim L_G" is true for E_pure only. Checking next whether E_R(X, 1) (history-dependent vacuum of the R-contaminated part) is booked outside W (D3W8 §2.1, D3 (L4)).
- D3W8 §2.1/§2.2 (l. 85, 103, 124): Balaban subtracts E^{(k+1)}(1) = E_pure(1) + E_R(1). The all-small-field w equals E_pure(X, 1) on X ⊂ Λ (A15_BDRY 3.2 Corollary). So E_R^{(m)}(X, 1; f), X ⊂ Λ_m, is a history- and σ-dependent constant that is in Balaban's subtraction but NOT in W_k[f]. D3 (L4) lists w on X ⊄ Λ_j and R^{(j)}(Λ_j, 1; f), not E_R(X, 1; f). The author's §3.3 and §3.4(iii) omit it.
- Repair (one line): book Σ_m Σ_{X ⊂ Λ_m} E_R^{(m)}(X, 1; f) into e_k^f. Size: E_R(X) = 0 unless X contains an R-input slot (I_R|_X = 0 ⇒ h ≡ 0), R-inputs are localized near earlier large-field sets Z, and each generation carries 8ε′ (D3W8 l. 113). With the e^{−κd} weight, Σ_X |E_R(X,1)| ≤ C g^{κ_0} × (R-input slot count) = linear in large-field volume, of the same type as D3 (v). At f = 0 it is already inside Balaban's own normalization constants. So (N1) holds after the booking; grade CORRECTED, not refuted. The bound "linear in |Z|" is my sketch [P sketch], not line-checked.

## V5. (W4) σ-dependence of holomorphy domains (CMP 119 (2.26)-(2.30) text; A17_A19 1.4 for CMP 116 (1.34))
- Input E^{(j)}(X) domain: U_j(X, α_{0,j}, α_{1,j}), α = g_jC(log g_j^{−2})^q (2.28). Depends on (j, X) only. CONFIRMED σ-free.
- CMP 116 (1.34): U_{k+1}(Y, (1+β)α_0, (1+β)α_1, α_0) × {|B| < ε_1g_k^{−1} on Y}. Depends on (k, Y) only. σ-free.
- R^{(j)} slots (2.30): X ⊂ Λ_j^{~−1}, unions of MR_j-cubes; again σ selects slots, not domains.
- Λ_j enters only through slot index sets: E slots are X ⊂ Λ_j^{(j)} (Λ_j minus one MR_j layer), not X ⊂ Λ_j as the author writes in §4.2. Minor; it shrinks S_in(σ) and does not change the argument.
- The background U_{k,z} depends on σ (F8), but (W4) is a statement uniform over the domain U_j(X, ...), so this is harmless.
- Remaining dependence: the fixed-σ step integrates over Λ_{k+1} with C^{(k)}(Λ_{k+1}), not the torus. (W4) for G^σ at interior X needs Claim L_G (same 𝒢_X); for X near ∂Λ the outputs are B-terms. So (2) = "(W4)^σ ⇔ σ-free 𝒢_X holomorphic" is right GIVEN L_G and its [I] inputs. Grade (2): CONFIRMED (with the Λ_j^{(j)} correction).
