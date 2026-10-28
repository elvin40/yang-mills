# SOURCES_B20_W4R verification

Independent check of SOURCES_B20_W4R.md claims (1)-(3). Firewall respected.

## V1. CMP 122 II pp. 356-357 images (PDF pp. 2-3, 300 dpi)
- (1.1) printed as the author quotes. Denominator integrand = Γ_Λ δ_{G_0}(V') χ exp[-(1/g_k^2) A(ζ_0, U_{k,Z}(V'V_Λ))]. No E, R, B term. CONFIRMED.
- Numerator: χ_{h,1/2} ∫dV' Γ_{B_0} δ_{T_0}(V') χ' exp A''_k. Inputs enter only via A''_k. CONFIRMED.
- (1.2) printed as quoted: Wilson at U_0, constant |Λ^(k)\G_0| term, Gaussian integral with quadratic form, linear term, V(ζ_0, g_k H B'). All field-only.
- p. 356 text: the Wilson remainder "has to be cancelled, or approximately cancelled, with the term from the denominator". So the cancellation is approximate; the residue is I(U_0) (see V2). Input-free, so harmless for (W4).
## V2. CMP 122 II p. 358 image (PDF p. 4)
- (1.10) printed: (denominator)^{-1} = exp[+(1/g_k^2)A(ζ_0,U_0) + I(U_0) - E_k(Λ)], E_k(Λ) = (-½d(g)log g_k^{-2} + log σ_0)|Λ^(k)\G_0|. (1.11) |I(U_0)| < O(1)log M|Λ| < O(1)M^5, for the analytic extension in U.
- So the reciprocal of the denominator is exp of a field-only function. No input activity anywhere. Division becomes multiplication by an input-free exponential. Claim (1) CONFIRMED.
- Precision: "cancels" is right only for the Wilson part; I(U_0) and E_k(Λ) remain as input-free terms. The author's §2.2 says this. Field-side lower bound (needed for complex U) is Balaban's text claim, not an input issue.
