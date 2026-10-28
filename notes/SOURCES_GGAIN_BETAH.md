# SOURCES_GGAIN_BETAH — where the unprinted Hölder exponent β_H enters, and what fixes it

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Ledger tags: [P] = read on a primary page image or verbatim text; [V] = derived here and checked; [I] = inference, not proved.

## 1. Where β_H enters each consumer, and what each consumer needs

Notation. θ := 2C_VK_HK_Vε_1 (SM §3.2), θ_0 := 2K_HK_Vε_1 (SM §2.4), θ_g := 2K_HK_V(2α_4)^{−1/2} (GGAIN §5.2). K_V, K_H, C_V, C_Π, S_0, C_β contain no ε_1 and no γ. Order of constants (TRUST_LEDGER C5, C24; A10 §7): β_H → L → κ, κ_1, M, α's → ε_1 → ρ_0, A_0 → γ.

1.1 (Eps), SM §2.5 + C3. Entry: 2ε′ = 2θ_0(1 − L^{−β_H})^{−1}. Consumer: D3W8 Lemma F2′ needs 32ε′ ≤ 1 (D3W8 l. 106, D3W8_VERIFY l. 49, 61). Condition: ε_1 ≤ (1 − L^{−β_H})/(32K_HK_V). This is an ε_1-smallness condition. β_H and L are fixed before ε_1. So it holds for every β_H > 0. [V]
1.2 SM §2.4 hypothesis. Entry: 2E_0ε_1K_V(1 − L^{−β_H})^{−1} + v_F ≤ R_V/2. R_V has no ε_1 (Fact B). Condition: ε_1 small after β_H, L. Holds for every β_H > 0. [V]
1.3 Lemma HH (SM §3.2, HHIST C-block l. 142–143). Entry: λ = L^{−β_H} + θ. Condition: θ < 1 − L^{−β_H}, i.e. ε_1 < (1 − L^{−β_H})/(2C_VK_HK_V). Column sum C_β + C_Πθ_0S_0/(1 − λ) ≤ C_β + 2C_Πθ_0S_0(1 − L^{−β_H})^{−1}: finite for every β_H > 0. No consumer asks for a number below a fixed threshold. Downstream users:
 - HBETA Lemma H (2.3): γ ≤ ln(3/2)β_0/(2C_1A), A = Σa_m = (1 − λ)^{−1} (here β_0 = the (2.15) beta-function coefficient). γ is chosen after ε_1, so it holds for every β_H > 0. HBETA_N3 (b), (c): same type, in γ. [V]
 - T2_KUNIF (4.2): C′ = C_β + C_hλ/(1 − λ). Only finiteness is used. [V]
 - HHIST2 Theorem H2: needs λ < 1 and the factor (1 − λ^{1/2})^{−2}; finite for every λ < 1. HHIST2 (F1): λ_C = L^{−β_H} + 1.235C_Vθ_0 < 1, again ε_1 small. [V]
 - N3A/D3W8 radius r_0 ∋ 1/(6γ²c_1c_H): c_H is a field constant, not a λ-term. No λ enters. [V]
1.4 (G-gain), SM §4.3 + C3. Entry: λ_g = L^{−β_H/2} + θ_gγ. Condition: θ_gγ < 1 − L^{−β_H/2}. θ_g has no ε_1 and no γ. γ is the last constant. So the condition is γ < (1 − L^{−β_H/2})/θ_g: holds for every β_H > 0. Also C_g < ∞ needs only β_H > 0 (c ∝ β_H log L). Status on the chain: GGAIN §6.3 states the hop gain is "a refinement, not a requirement" and "SOURCES_SM §4.3's C_g device is no longer needed"; GGAIN_NONMONO l. 32 confirms. The live chain is B13 ⇐ GGAIN Theorem B2-unif + Lemma HH with λ = L^{−β_H} + θ (TRUST_LEDGER step 7). So λ_g is OFF the chain. The 0.120 margin is a constant in an unused route. [V]
1.5 GGAIN hop θ_0 (§5.2). Entry: θ_0 → θ_gg_k multiplies Σ_lL^{−β_H(k−l)}‖W^{(l)}‖. Same condition as 1.4 if used; GGAIN §6.2 uses θ_0 (ε_1 form). [V]
1.6 Search for a numeric threshold. grep over SOURCES_*, LEMMA*, THEOREM2_PROOF_v4 for "λ ≤", "λ <", "1 − L^{−α", "0.9": the only hits are the "margin" remarks of SM §3.2/C3 and HHIST l. 144, which are descriptive. No consumer uses "margin > 0.9" or any fixed contraction constant c < 1. [V]
Result of §1: every consumer needs only β_H > 0 fixed before ε_1 (and before γ). The size of 1 − L^{−β_H} changes constants, never satisfiability.

