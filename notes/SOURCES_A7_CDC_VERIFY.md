# SOURCES_A7_CDC verification (independent)

Date 2026-10-28. Scope: claims (1)-(5) of SOURCES_A7_CDC.md.

## V0 Read so far
- SOURCES_A7_CDC.md full. TRUST_LEDGER rows A1, A2, A7, A18. WC_FULL §0 (0.1–0.10).
- WC_FULL 0.6 [read]: C := I − hLQ̃ : V_red → unit fields; identity on kept bonds; range ≤ 2L. 0.7: A_exp := C*(Δ^full + 𝒢*𝒢)C, A_Z its Z_0-compression, C^{(k)}(Z_0) := A_Z^{−1}. So "C*Δ_kC = precision" agrees with WC_FULL's own definitions.
- WC(i) is a lower bound ⟨B̃, A_ZB̃⟩ ≥ γ_exp‖B̃‖². Claim (1)'s logic (a lower bound cannot give an upper bound γ_1) holds.
- WC(iv) is stated for (x + A_Z)^{−1} only.
- Ledger A7 current text: "reduced by us [R] to A1 + A18".
## V1 WC_FULL §4, 6.5–6.6, §9 ledger
- Prop. W_N (4.2) as printed: |A_ω| ≤ B_Aρ_A^{|ω|}e^{−δ_Ad(ω,b,b′)}, δ_A = (1−θ)min{δ_W, δ_1}, Σ_ω|A_ω| ≤ 2B_Ae^{−δ_A|b−b′|} if C′_𝒟c_1ρ_A ≤ ½. 4.3: Γ_1 = 2B_AS(δ_A). Claim (3) restates these faithfully. Inputs W_G1, A1-W [C on (C) for G_1], I9, Conc: match 4.0.
- 6.6 as printed: ‖A_exp(U_c)‖ ≤ Γ_1″ = 2B_A″S(δ_A″) on 𝒰(α″); 6.5 gives W_N on 𝒰(α″) with δ_A″ ≤ min(½ε_2, δ_1‴). Claim (4) complex-U part matches.
- §9 C2 as printed: "c_{−,1} = c_−(G_1) ≥ c_−(1 − O(Mα_0)) (A1_KERNEL §9)". It is a statement about the constant c_−(G_1), with no explicit operator form. The N̂_1 = S^{−1/2}QG_1Q*S^{−1/2} ≥ c_{−,1} form is in 6.2(ii) (Lemma AW hypothesis) and 0.9 (A1W): "Re⟨u, N̂_Pu⟩ ≥ c_−‖u‖²". So the form the lemma uses is WC_FULL's own form of (C); the weights S, μ must be checked in A1_KERNEL (next).
- §9 I1, I3, A3-R4 match the uses in Lemma N (2.1).
