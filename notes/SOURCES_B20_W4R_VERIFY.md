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
## V3. CMP 122 II p. 379 image (PDF p. 25)
- (1.71) tail printed as quoted: -A((g''_k)^{-2}ζ_1Γ_X, U''_{h+2}) + V(X~,U_k) + E_k(X) + (-½d(g)log g_k^{-2}+log σ_0)|(B_0\T_0)∩X| - E_k(Λ∩X). (1.72) printed as quoted. No division in either. CONFIRMED.
- Extra text the author does not quote: "the sum in the definition (1.71) acts also on the last exponential in (1.72)". The {Ω^c_j,Z_j}, r sum is shared across the bracket. Finite sum at fixed volume; no effect on holomorphy.
- "only the quadratic form in B and the term V(X~) depend on (U,J)"; V(X~) = "mainly boundary terms from all the renormalization steps", resummed. So the input dependence of T'_k(X) is through V(X~) and E_k(X) - E_k(Λ∩X), as the author says.
- Domination step (S3): correct on 𝔄_c. |e^Φ| ≤ e^{sup|Φ|}; the rest is a positive finite measure at fixed volume (compact group, χ cut-offs). Fubini + Morera gives holomorphy. But "entire" is overstated: V(X~) contains resummed outputs of earlier steps, holomorphic only where W4-G holds (𝔄_c), not for all I. CORRECTED: T'_k(X) holomorphic on 𝔄_c; entire only for the affine part.
## V4. CMP 122 II p. 380 image (PDF p. 26)
- (1.73), (1.74), (1.75) printed as quoted. (1.73) = positivity display: |T'_k(X,(U,J))F| ≤ (T'_k(X,(U,0))1) sup e^{|σ|}|F|. It rests on "All the expressions in the definition (1.71), for the configuration U, are real, and the exponential density ... is positive" (pp. 379-380).
- Caveat for (W4): at complex inputs, V(X~) and E_k(X) are complex even at real U, so the density is no longer positive. Balaban's positivity route fails as written. The author's (S3) route avoids it: |∫dν e^Φ F| ≤ ∫dν e^{Re Φ}|F| ≤ e^{sup|Φ|}... with dν the input-free positive part. Balaban's p. 380 sentence "At first we bound all the expressions in the exponential, except the Wilson action and the quadratic forms" bounds V(X~), vacuum-energy, and normalization terms by absolute values, so the same bound holds with Re Φ ≤ |Φ|. Only the input part scales by c'. Step accepted.
- Three large-field factors and the budget O(1)log g_j^{-2}|Z_j| ≤ O(1)M^dR_j^{d+1}d'_j(Z_j) printed as the author quotes. γ_0 = 1/2 allowed in the P_j factor; P_j factor via "Theorem 1 [15] and (71) [16]". CONFIRMED.
