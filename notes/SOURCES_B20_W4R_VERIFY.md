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
## V5. CMP 122 II p. 381 image (PDF p. 27)
- Combined factor printed: exp(-γ_0 min{½B_3^{-2}A_0^2, 2A_1^2, A_1^2} p_0^2(g_j)(d'_j+1)) ≤ exp(-½γ_0A_1^2p_0^2(d'_j+1) - 2p_0(g_j)). Extraction of -2p_0 needs ½γ_0A_1^2p_0^2 ≥ 2p_0, i.e. p_0 ≥ 4/(γ_0A_1^2); after γ_0 → γ_0/4 it is p_0 ≥ 16/(γ_0A_1^2). CONFIRMED.
- Preparatory factors printed (Sect. 1 [IV]): 1-χ_j^(n): exp(-(1/8)B_3^{-2}(1+β_0)^{-2}A_0^2p_0^2) ≤ exp(-A_1^2p_0^2) (γ_0-free; needs A_0^2 ≥ 8B_3^2(1+β_0)^2A_1^2). 1-χ'_m: exp(-γ_0 4(1+β_0)^{-2}A_1^2p_1^2) ≤ exp(-γ_0A_1^2p_1^2) (γ_0-carrying, p_1 not p_0). 1-χ_{j,Λ}: exp(-(1/4)g_j^{-2}(O(1)B_3M^2)^{-1}ε_j^2) ≤ exp(-A_1^2p_0^2) (γ_0-free). Then 1-χ' (two cases, continues on p. 382, not checked).
- Author §4.2 quotes these correctly. Minor omission: 1-χ'_m carries p_1, and the 1-χ' factor (p. 381 bottom onward) is also in scope of the same loss; the author lists neither.
- γ_0-free factors: both sides scale as p_0^2(g), so a smaller g gives no slack. A fixed loss factor 4 in the exponent needs the A_0/A_1 ratio raised (A_0 → 2A_0 at fixed A_1), or the consumer must accept exp(-¼A_1^2p_0^2). Author's L4 point CONFIRMED.
## V6. L5 arithmetic and canon admissibility (SOURCES_T2_IEPS_LF §5, §7; SOURCES_B20_LAMBDAJ item 13)
- p_0(g) = A_0(log g^{-2})^{p_0}. For g → cg (0<c<1): p_0(cg)/p_0(g) = (1 + 2log(1/c)/log g^{-2})^{p_0} → 1 as g → 0. A fixed factor in g cannot recover a factor 4 in γ_0p_0^2 uniformly in small g. Author's L5 verdict CONFIRMED.
- Refinement: where the factor beats a g-growing but lower-power budget (M^dR_j^{d+1} with R_j a power of log g^{-2}, p. 385 "for p_0 large, and g_1 sufficiently small"), the loss IS absorbed by lowering γ, but by a power change of log g^{-2} (log g^{-2} → 2^{1/p_0}·log g^{-2} roughly), not by a fixed factor. Where both sides scale as p_0^2 (γ_0-free preparatory factors vs exp(-A_1^2p_0^2)), only the A_0/A_1 ratio helps. So the author's fix (A_0, A_1 → 2A_0, 2A_1) is the uniform one.
- Admissibility in the canon order (IEPS_LF §7): ... exponents → A_1 → A_0 (≫ A_1) → C_0 (C2, C3) → C_1 (C2, C4) → γ → g. Joint doubling keeps A_0/A_1 and the min{½B_3^{-2}A_0^2, 2A_1^2, A_1^2} structure. No printed condition bounds A_0, A_1 above by an earlier constant. Upper uses (1.6), p. 379 C7, (1.47) are absorbed by γ.
- Missing caveat: C3 is A_0p_0(g) ≤ c(B_3)C_0q_0(g). If q_0 = p_0 (not printed which), doubling A_0 needs C_0 → 2C_0, then C_1 via C4 (IEPS_LF §5). Both are free upward, so the fix stays admissible, but "double A_0, A_1 then lower γ" is incomplete without C_0, C_1. CORRECTED (add C_0, C_1 step in the q_0 = p_0 case).
## V7. Page mapping note
- The brief cites pp. 384-386 for (1.97)-(1.98), (1.103). They are not there. Text layer: (1.97)-(1.99) on p. 390 (PDF 36), (1.90)-(1.93) on p. 388 (PDF 34), (1.103) region p. 391 (PDF 37); pp. 384-386 hold (1.79)-(1.86), the κ_j induction (p. 384 image read: (1.80) κ_j(Z) ≥ Σ O(1)M^dR_n^{d+1}d'_n). Rendered PDF 34-37 instead.

