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

## 2. What fixes β_0 in CMP 109 (3.31)/(4.18) [P, page images 300 dpi]

2.1 CMP 109 p. 276 (3.31), verbatim: "We assume that A is regular and satisfies the bounds |A|, |∇^ηA|, ‖A‖_{1,β} < α_2 on □_0, for 0 ≤ β ≤ β_0 < 1. Obviously such bounds are satisfied by the function (tζ̃_□ + t_□ζ_□)H_k(B′) for ε_1 sufficiently small. We have similar bounds for the function H_{k+1}(□_0, (1/i)log V), with α_2 replaced by B_3O(1)Mα_0." p. 277 (3.32): ‖A‖_{1,β} < 2(α_2 + B_3O(1)Mα_0) on □̃⁴. [P]
2.2 CMP 109 p. 285 before (4.18), verbatim: "we do not have bounds for second order derivatives of the field A, only for Holder norms of first order derivatives in (3.32). They imply the bound |(∂_λ∂_νB_μ)(x)| < α_1(L^jη)^{2+β}, 0 ≤ β ≤ β_0 < 1". p. 288: "by (4.18) the last term … can be estimated by 2|x−x_3|²α_1(L^jη)^{2+β} with a positive β … the bound (4.22) with the power 4 + β instead of 5". [P]
2.3 The source of the Hölder class is the background-field theory. CMP 99 "Regular gauge configurations" p. 82 (1.36): "‖A‖_{1,β} < B_2(β_0)(α_0 + α_1)(L^jη)^{−2−β}, β ≤ β_0 < 1, on Ω_j"; p. 83: "we want to prove that the constants B_1, B_2(β_0) in (1.36), (1.39) are absolute constants depending on d and L only, B_2(β_0) on β_0 also"; Theorem 2: "There exist constants B_1, B_2(β_0), c_1 such that for arbitrary U_0, U′U_0 … with α_0 + α_1 ≤ c_1 …". CMP 102 "Variational problem" p. 3 (= journal p. 279) Theorem 1 (9): "‖A‖_{1,β} < B_4(β_0)Mε_1(L^jη)^{−2−β} for 0 ≤ β ≤ β_0 = 1", "the constants B_4(β_0), M(ε_1) depend on the indicated parameters also". (The "= 1" is printed; CMP 99 and CMP 109 print "< 1". Read it as a misprint for "< 1" [I]; if it is literal, β_0 = 1 is allowed there, which only helps.) The second-order bounds are only for Δ^η and ∂^{η*}∂^η: CMP 99 (1.39) and CMP 102 (10), |∂^{η*}∂^ηA|, |Δ^ηA| < B_3Mε_1(L^jη)^{−3}. [P]
2.4 Reading. β_0 is a FREE parameter of Balaban's construction. It is not determined by the background map. Each β_0 < 1 gives a theorem with its own constant B_2(β_0) (CMP 99) or B_4(β_0) (CMP 102). The CMP 109 class (3.31) is a class assumption with a free β_0; Balaban checks it "for ε_1 sufficiently small", i.e. by the B_4(β_0)Mε_1 bound of CMP 102 (9) and the B_3O(1)Mα_0 bound. So ε_1 is chosen after β_0 (consistent with A10's order). [P for the quotes; V for the reading]
2.5 Why β_0 < 1 and not 1 [I, standard mechanism, not in Balaban]. Balaban controls only Δ^ηA and ∂^{η*}∂^ηA at scale (L^jη)^{−3}, not the full Hessian. Recovering ∇∇A from ΔA is a Calderón–Zygmund/Schauder step. It gives C^{1,β} for every β < 1 with constant ~ (1 − β)^{−1}, and fails at β = 1 by a logarithm of the ratio of the cube size L^jη to the lattice spacing η. The exponential decay of the kernels of H_k and of the propagators removes the far field but not this short-distance logarithm. So the task's guess "Hölder exponent 1 up to logarithms" is right in substance: any β < 1 is available with a constant B(β) < ∞ that blows up as β → 1. On the lattice at fixed η the second differences are bounded only by η^{−1}(L^jη)^{−2}, which is not uniform in η; so β = 1 without a log is not available uniformly.
2.6 Conclusion of §2. β_H can be chosen as any fixed number in (0, 1), e.g. β_H = β_0 = 0.9. The price is a larger B_4(β_0) (hence a smaller ε_1 in "(3.31) holds for ε_1 small") and larger unprinted (4+β)-type constants K_T (A10 R1). All of them are fixed before ε_1. So "β_H ≤ β_0 < 1, β_0 free" is a free choice, not a hypothesis. [V given the quotes]
Notation note. Three different β_0's occur in the project: (i) the CMP 99/102/109 Hölder bound (this file); (ii) the beta-function coefficient of (2.15) (SM §4.3, HBETA); (iii) the CMP 119/122 parameter with g_m ≤ (1+β_0)g_n, β_0 = 1/7 (GGAIN_LF, TRUST_LEDGER C17, A12). They are unrelated. CMP 109 p. 277 also has the domain parameter (1+2β)α_0; whether it is the Hölder β is not settled here (A10_VERIFY l. 11); with β ≤ 1 it changes α_0 by at most a factor 3.

## 3. Condition on β_H per consumer at L = 13, and satisfiability

| Consumer | Condition | Numbers at L = 13 | Satisfiable given §2? |
|---|---|---|---|
| (Eps) → F2′ | 32θ_0(1 − 13^{−β_H})^{−1} ≤ 1, ε_1 small after β_H | factor (1 − 13^{−β_H})^{−1} = 4.42 (0.1), 1.38 (0.5), 1.11 (0.9) | yes, any β_H ∈ (0, 1) |
| SM §2.4 hypothesis | 2E_0ε_1K_V(1 − 13^{−β_H})^{−1} + v_F ≤ R_V/2 | same factor | yes, any β_H ∈ (0, 1) |
| Lemma HH (live chain) | θ < 1 − 13^{−β_H}, ε_1 small after β_H | margin 0.226 (0.1), 0.723 (0.5), 0.901 (0.9) | yes, any β_H ∈ (0, 1) |
| HBETA (2.3), HBETA_N3 (b)(c) | γ ≤ c(1 − λ)·β_0/C_1 etc., γ last | depends on (1 − λ) only through γ | yes |
| T2_KUNIF (4.2), HHIST2 H2 | λ < 1 (finite C′, (1 − λ^{1/2})^{−2}) | — | yes |
| (G-gain) λ_g (off chain) | θ_gγ < 1 − 13^{−β_H/2}, γ last | margin 0.120 (0.1), 0.473 (0.5), 0.685 (0.9) | yes, any β_H ∈ (0, 1) |
[V: numbers 1 − 13^{−x} recomputed: x = 0.05 → 0.120, 0.1 → 0.226, 0.25 → 0.473, 0.45 → 0.685, 0.5 → 0.723, 0.9 → 0.901]
No consumer needs β_H above a threshold. The "β_H ≥ 0.898 for margin > 0.9" of SM C3 and HHIST l. 144 is a statement about a descriptive remark, not a condition used in a proof.

## 4. Sharper route

Not needed: §1–§3 find no obstruction. Two remarks for the record.
4.1 With β_0 free (§2), take β_H = β_0 = 0.9 (or any fixed value). Then all margins at L = 13 are ≥ 0.68 even on the unused (G-gain) route, and Lemma HH's margin is 0.90. This recovers the old "> 0.9" remark up to rounding, at the price of B_4(0.9) and the (4+0.9)-type K_T (unprinted, fixed before ε_1). [V]
4.2 The half exponent β_H/2 in λ_g is only used to pay g_{i+m}/g_i (C_g device, SM §4.3). Any split β_H = s + (β_H − s), s ∈ (0, β_H), works: C_g(s) := sup L^{−sm}g_{i+m}/g_i < ∞ for every s > 0, and λ_g = L^{−(β_H−s)} + θ_gγ. So the margin can be pushed to 1 − L^{−β_H+s} for any s > 0. Since the C_g device is off the chain (GGAIN §6.3), this is not needed. [V]
4.3 The terms with the (4+β) power are the only source of the exponent below 1 (A10 §5). A route that keeps decay 1 for them would need full second-derivative bounds on A (unavailable, CMP 99 p. 83) or a log: with β = 1 and a log factor (k − l)log L, the label sum Σ_m mL^{−m} still converges [I]. Not pursued; not needed.

## 5. Conclusion and ledger

Verdict: NO NEW LEDGER CONDITION. No C25 is needed. β_H is a free choice β_H ∈ (0, β_0^H], β_0^H ∈ (0, 1) free (CMP 99 Thm 2, CMP 102 Thm 1: constants B_2(β_0^H), B_4(β_0^H)). It belongs to the C5/C24 order as the first item: β_0^H → β_H → L → … → ε_1 → γ. Suggested ledger wording (for the coordinator; this file edits nothing else): "A10 row: Hölder β_H is a free parameter, β_0 < 1 free with constant B_4(β_0) (CMP 102 Thm 1 (9), CMP 99 Thm 2 (1.36)); fix β_H = β_0 before L; all consumers need only β_H > 0." Recommended default β_H = β_0 = 0.9 if a number is wanted for the margin remarks.
[P] CMP 109 p. 276 (3.31) + "for ε_1 sufficiently small"; p. 277 (3.32); p. 285 (4.18) context "only for Holder norms of first order derivatives"; p. 288 "with a positive β"; CMP 99 p. 82 (1.36), p. 83 Theorem 2 and "B_2(β_0) on β_0 also"; CMP 102 Theorem 1 (9)–(10), "B_4(β_0) … depend on the indicated parameters".
[V] §1: each consumer's condition is ε_1- or γ-smallness after β_H, L; no fixed-threshold contraction in SM, HHIST, HHIST2, GGAIN, GGAIN_NONMONO, T2_KUNIF, HBETA, D3W8 F2′. (G-gain) λ_g is off the B13 chain (GGAIN §6.3). Margin numbers at L = 13.
[I] CMP 102 "β_0 = 1" read as a misprint for "< 1"; (1 − β)^{−1} blow-up of B(β) and the log at β = 1 (standard Schauder/Calderón–Zygmund mechanism, not checked in Balaban's proofs); §4.3 log route.
Residue (unchanged, not new): the (4+β_H)-type constants K_T stay unprinted (A10 R1); they grow with β_0 through B_4(β_0) but are fixed before ε_1.

Order-canon fix (SOURCES_ORDER_CANON Task C, 2026-10-28): C-O1 order item "β_H (= β_0)" → "β_0^H → β_H" (β_0^H = Hölder bound of CMP 99 Thm 2 / CMP 102 Thm 1; β_0 kept for the CMP 119 slack).
