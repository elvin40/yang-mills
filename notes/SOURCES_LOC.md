# SOURCES_LOC — localization of the majorant covariance C^{(k)}(Z_0,0)

Status: in progress (2026-10-27).

## 0. Inputs read [V text]
- SOURCES_CDC_VERIFY §5: gap = G3 chain uses C^{(k)}(Z_0,0); CDC/Q bound only bare C*Δ_kC.
- SOURCES_Q §1, SOURCES_Q_VERIFY §1: chain (Q^{−1})_bb ≥ (Q_0^{−1})_bb ≥ C_0(b,b) ≥ ‖C_0^{−1}‖^{−1}, C_0 := C^{(k)}(Z_0,0).
- SOURCES_G3 §2.3, §4.2: Lemma G3 needs λ_min ≥ c_− (A_n ∝ c_−^{−n/2}) and upper bound Λ.
- CMP 116: journal page = PDF page (pp. 1–22). pdftotext of pp. 12–14 is garbled at displays; images needed for (2.5), (2.6), (2.8).
- p. 13 text [V]: "We localize it again by the method used in Sect. 1, introducing the parameters s and differentiating." s(Δ), Δ ∈ σ_0 = cubes of size LM disjoint from int Z_0′. "We choose Z_0 as one of the domains" of the random-walk expansions. "This construction was discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}."

## 1. Definitions as printed [V images, pp. 12–14]
1.1 (2.5), p. 12, verbatim: "(Z^{(k)})^{−1}∫dB exp(−½⟨B, C*Δ_kCB⟩)F(Z_0,B) = ∫dμ_{C^{(k)}}(B′) [∫dB|_{Z_0} exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩ − ½⟨Z_0B, C*Δ_kCZ_0B⟩)F(Z_0,B)] / [∫dB|_{Z_0} exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩ − ½⟨Z_0B, C*Δ_kCZ_0B⟩)] = ∫dμ_{C^{(k)}}(B′) exp(−½⟨Z_0^cB′, C*Δ_kCC^{(k)}(Z_0)C*Δ_kCZ_0^cB′⟩) · ∫dμ_{C^{(k)}(Z_0)}(B) exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩)F(Z_0,B)."
 Reading [P]: this is conditioning on Z_0^c. The B-integral runs over B|_{Z_0} only, with quadratic weight ½⟨Z_0B, AZ_0B⟩, A := C*Δ_kC. So C^{(k)}(Z_0) = (Z_0AZ_0|_{Z_0})^{−1}: the inverse of the compression of A to fields on Z_0. This is case (a) (Dirichlet restriction), not case (b). The completed square in (2.5) (Z_0^c-term with C^{(k)}(Z_0) in the middle) confirms it: it is exactly the Gaussian conditional formula with Z_0-precision Z_0AZ_0.
1.2 (2.6), p. 13: after B′ = (C^{(k)})^{1/2}X, "= ∫dμ_0(X)G(Z_0, X, C^{(k)}(Z_0), (C^{(k)})^{1/2}, Δ_k)" — "the last equality is a definition of the function G, and the measure dμ_0".
1.3 p. 13 text: "The above expression depends yet on the external gauge field configurations on the whole lattice T_η, through the propagators and the operator in the definition of the function G. We localize it again by the method used in Sect. 1, introducing the parameters s and differentiating." σ_0 = cubes Δ of size LM "disjoint with the interior of Z̃_0, or with the interior of Z̃_0′". Localization domain X_0 with X̃_0 = Z̃_0; other domains X with dist(X, Z̃_0) > (2/3)M [digit read from image, low resolution]. "This construction was discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}."
1.4 (2.8), p. 14, verbatim: "∫dμ_0(X)G(Z_0, X, C^{(k)}(Z_0), (C^{(k)})^{1/2}, Δ_k) = Σ_Z Π_{Δ⊂Z\Z̃_0′} ∫_0^1 ds(Δ) ∂/∂s(Δ) ∫dμ_0(X)G(Z_0, X, C^{(k)}(Z_0, s(Z)), (C^{(k)})^{1/2}(s(Z)), Δ_k(s(Z))) = Σ_Z H(Z, Z_0)."
 Reading [P]: C^{(k)}(Z_0, s) is NOT defined by a formula on these pages. It is the operator C^{(k)}(Z_0) of 1.1 with the s-parameters inserted into its generalized random-walk expansion "as before" (Sect. 1 of CMP 116 and Sect. C of [13] = CMP 109). So it is case (c). At s ≡ 1 it equals C^{(k)}(Z_0). At s = 0 (the value in (2.23)) the walk terms that reach the cubes Δ ∈ σ_0 with s(Δ) = 0 are removed; it is not a convex combination of (a)/(b).
