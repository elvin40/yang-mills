# SOURCES_UW_SWEEP_109_116 — image sweep of CMP 109 and CMP 116 for the residue (U-W)

Date 2026-10-29. Scope: every page of CMP 109, 249–301 (54 PDF pages, pp. 299–301 references, PDF p. 54 blank) and CMP 116, 1–22 (22 PDF pages). Each page was rendered at 120 dpi and read as an image in this session. The danger classes (D1)–(D4) are those of SOURCES_U_ELL §6.1. Channels Ch1–Ch7 and places W1–W10 are those of SOURCES_U_ELL §3–§4. This file edits nothing else.

Grade key: [V] read on the page image this session; [P] short argument given here; [R] rests on a cited file or paper not read here.

## 1. Hit table

"Fixes a constant?" = does the quantity enter a condition that chooses one of the constants (κ, M, ε_0, ε_1, α_i, E_0, γ, α_2…α_6, γ_1, γ_2, κ_1, δ, β, ε_2, ε_3, B, C_3).

| # | page | eq. | quantity | class | fixes a constant? | ℓ-free? how | grade |
|---|---|---|---|---|---|---|---|
| 1 | 109 p. 251 | (0.1) | torus T_ε, side L_μ = L^m, ε = L^{−K} | D1 (definition) | no | definition of the model only | [V] |
| 2 | 109 p. 252, 255 | (0.2), (0.17), (0.19) | Wilson action and gauge-fixing sums over all p ∈ T_ε, y ∈ T^{(k+1)} | D2 (definition) | no | the integrand, not a bound | [V] |
| 3 | 109 p. 255–256; 268 | (0.17), (0.19), (2.12), (2.14) | normalization factors N_k, N_k″: whole-torus integrals | global divisor (W3) | no | log N_k″ = E^{(k+1)}(g_k, 1) is subtracted, so E^{(j)}(1) = 0 (p. 258); it is a vacuum-energy output | [V] |
| 4 | 109 p. 256, 260, 265 | (0.21), (1.1), (2.2)–(2.3) | minimizer U_k(V) of A on the whole T with constraint Ū^k = V; existence and uniqueness of the critical orbit | D4 (global variational problem) | no condition printed here | cited to [15] = CMP 102, Thm 1; constants of CMP 102 are "d and L only" (SOURCES_U_ELL Ch3, W4) | [V page; R for CMP 102] |
| 5 | 109 p. 257 | (0.26) | Σ_j Σ_X E_0e^{−κd_j(X)} ≤ E_0O(1)M^{−4}|T_1^{(k)}|η^{−4} | D1, D2 | no | output total (W9). The step inside it, Σ_{X ⊃ □} e^{−κd_j(X)} ≤ O(1) "for κ sufficiently large", is a per-cube sum (Ch2) | [V] |
| 6 | 109 p. 258 | (0.30) | |E_k(U_k)| ≤ O(1)(1 − L^{−α})^{−1}M^{−4}|T_1^{(k)}| | D1 | no | output total; Balaban: "the only dependence on k is through the volume" | [V] |
| 7 | 109 p. 260, 262, 275; 116 p. 10, 15 | (1.2), (1.11)–(1.14); (3.25)–(3.27); U^c_{k+1}(T_η, α_0′, α_1′) | regularity conditions "on T" or "on the whole lattice T_η" | sup over T | they define the domain of analyticity | each is a pointwise bound per plaquette or per cube (local conditions imposed at every point); no constant depends on the number of points | [V + P] |
| 8 | 109 p. 263 | text after (1.17) | "positive, absolute constants α_0, α_1 (i.e., constants independent of X and j)" | quantifier | yes (α_0, α_1) | the gloss names X and j only, not T. Not a dependence; a quantifier gap. Lemma U4 of SOURCES_U_ELL shows that (1.22) needs T-uniformity anyway | [V] |
| 9 | 109 p. 264, 292 | (1.21)–(1.22), (5.1) | Π_{j+1} and β_{j+1} defined by the limit T^{(j+1)} ↗ Z^d | Ch7 | defines β_j | infinite-volume object; same for every ℓ (W8, Lemma U4) | [V] |
| 10 | 109 p. 264 | Thm 3 | "ε_0, ε_1, α_0, α_1 depend on M and satisfy numerous restrictions, which will become clear in the proof"; "γ depends on all other constants" | quantifier | yes | T is not named as an argument. Every restriction printed in CMP 109 Sects. 2–5 and CMP 116 is listed in rows 11–13, 17–19; none contains T | [V + P] |
| 11 | 109 p. 266, 270; 116 p. 2–4 | (2.6), H_k(B′) (Landau gauge), (1.2)–(1.4) of 116 | H_k, D, A_0, G̃ defined by equations on the whole T with nonlocal propagators H, H_0 | D4 | through the bound |H_k| < a_1 (p. 266) and (1.18) of 116 | localized by the generalized random walk expansion (1.6)–(1.7) of 116, bound O(1)(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}e^{−δ_0d(ω)}; constants B_0, C_2, C_4 come from [13] = CMP 99 and [15] = CMP 102 (Ch3) | [V page; R for B_0, C_2, C_4] |
| 12 | 109 p. 271, 273, 282 | (3.9), (3.17), (4.5) | δH_j decay rate δ_0 and constant B_3 | Ch3 | yes: conditions O(1)Mα_1 ≤ β, (4B_3²O(1)M)²α_0 ≤ β, B_3α_3 < ½α_1, 2B_3α_3 ≤ βL^{−2}α_0 (pp. 278–280) | B_3, δ_0 from [15] Prop. 9; "d and L only" per SOURCES_U_ELL Ch3. No T on these pages | [V + R] |
| 13 | 109 p. 272, 281 | (3.14), (4.4) | |P_1A|, |P_1(□_0)A| < α_2 | possible D4 | yes (α_2) | (4.4) writes P_1(□_0): an operator localized on the cube □_0. Local | [V] |
| 14 | 109 p. 286, 293 | (4.22), (5.10) | sums over x, x_3 with weights e^{−δ_1|x−x_0|}; δ_1 = ½min{δ_0, κM^{−1}}; c_0(δ_1), c_1(δ_1) | D2 candidate | yes (constants of irrelevant bounds) | decay-weighted sums; ≤ the Z⁴ sums (Ch2) | [V + P] |
| 15 | 109 p. 290 | (4.36) | extension of sums over y to Z⁴ and over X to D_j^0 (domains of ξZ⁴) | Ch7 | no | error O(1)E_0e^{−(L^jη)^{−1}}e^{−δ_1|x−y|}; the extended object is ℓ-free | [V] |
| 16 | 109 p. 291 | (4.40)–(4.41) | Δ_j from [10] = CMP 95, momentum representation on ξZ⁴ | Ch7 | no | defined on Z⁴ | [V] |
| 17 | 116 p. 5–7 | (1.11)–(1.22) | |X| in (1.13)–(1.14) | none | yes (ε_2, ε_3: 4C_2B_0e^{16κ_1}ε_2 ≤ 1, 4C_4B_0²e^{32κ_1}ε_3 ≤ 1, 2B_0e^{16κ_1}ε_3 ≤ ε_2; 4B_0C_1e^{16κ_1}ε_1 ≤ ¼α_2) | |X| here is the sup norm of a field, not a volume. Constants B_0, C_1, C_2, C_4, κ_1 are absolute | [V] |
| 18 | 116 p. 7–9, 16–20 | (1.24)–(1.32), (2.17), (2.19)–(2.20), (2.25)–(2.37) | volumes |Y|, |Y_0\□̃⁴|, |Z_0|, |Z|, |Z\Z_0′|, |P| | D1 candidate | yes (κ_1, δ, α_4, α_6, γ_2, conditions ¼(κ_1−1) ≥ (1−δ)κ, ½(κ_1−1) ≥ 2Lκ, 2(L+2)⁴O(1)ε_2e^{5κ} ≤ 1, (LM)⁴α_i ≤ 1) | each is the volume of one polymer or one component; each is absorbed by the polymer's own decay e^{−(κ_1−1)M^{−4}|·|} or by (2.30) (3·2³)^{−1}M^{−4}|Y| ≤ d_k(Y). Sums over □_0 are bounded by M^{−4}|Y| ≤ e^{δκd_k(Y)} | [V + P] |
| 19 | 116 p. 8, 18, 20, 21 | (1.26), (2.29), (2.36), (2.39)–(2.41) | Σ_{X ⊃ □′} e^{−κd_j(X)} ≤ O(1); Σ_D Π α_6e^{−δκd_k(Y)} ≤ 1; Kotecký–Preiss-type bound via [26] | Ch2, Ch4 | yes (κ, α_6, ε_1, δ = (1/10)(1−2L^{−1}), O(1)C_3ε_1 ≤ ½E_0) | per-cube or per-polymer sums; Z⁴ majorant by the lift (Ch2) | [V + P] |
| 20 | 116 p. 12 | (2.1)–(2.5) | Gaussian measure dμ_{C^{(k)}} on T_1^{(k)}, normalization Z^{(k)}; conditioning on Z_0^c | global divisor | no | the ratio in (2.5) is rewritten as an integral over Z_0 with covariance C^{(k)}(Z_0); the divisor cancels exactly | [V] |
| 21 | 116 p. 13 | (2.7) | (C^{(k)})^{1/2} = (C*Δ_kC)^{−1/2} by the resolvent integral; "γ_1 sufficiently large" | D3 (spectrum of an operator on all of T_1^{(k)}) | yes (γ_1) | γ_1 must exceed the top of the spectrum of C*Δ_kC; a local bounded operator has norm ≤ its maximal row sum (Schur), ℓ-free [P]. The lower end of the spectrum enters through (C*Δ_kC)^{−1} = C^{(k)}, which is the block-constrained covariance of [13] (W1, Ch3) | [V + P + R] |
| 22 | 116 p. 15–17 | (2.15)–(2.17), (2.24) | det ratios on Z_0; "α_5‖C^{(k)}(Z_0, 0)‖ < ½" | D3 candidate (operator norm of a covariance on a polymer Z_0 of any size, wrapping allowed) | yes (α_5 = O(1)e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2) | det ratio ≤ exp O(α_5)|Z_0|: polymer volume (row 18). ‖C^{(k)}(Z_0,0)‖ is bounded by the generalized random walk expansion of [13] (Ch3; Schur bound from the e^{−δ_0d} decay), uniform in Z_0. The page states no T dependence; the uniform norm bound itself is in [13], not on these pages | [V + R] |
| 23 | 116 p. 21 | after (2.41) | [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)] localized by random walk expansion of [16] = CMP 102 (3D), "absolute constant instead of E_0"; ½E_0 := this constant; δ_0M ≥ κ | global divisor (W3) | yes (E_0, M) | localized terms; the subtraction of log Z^{(k)}(1) removes the field-independent volume term | [V + R] |

No other page carries a whole-torus quantity. CMP 109 pp. 249–250, 253–254, 259 (Thms 1–2), 267, 269, 274, 276–280, 283–289, 294–298 and CMP 116 pp. 1, 11, 14, 22 contain only local identities, local bounds on □̃^n, or Z^d objects. [V]

## 2. Points where ℓ-freedom rests on a source outside these two papers

- Rows 4, 11, 12, 21, 22: the constants B_0, B_3, C_1, C_2, C_4, δ_0 and the uniform norm of C^{(k)}(Z_0) come from CMP 99 [13] and CMP 102 [15]. SOURCES_U_ELL Ch3 grades these "d and L only" from CMP 99 p. 423, CMP 99 reg. p. 83, CMP 102 pp. 303, 305. This sweep confirms that CMP 109 and CMP 116 add no T to them. It does not re-read CMP 99 or CMP 102. [R]
- Row 21 lower spectral end: C*Δ_kC on the whole T_1^{(k)} must be invertible with an ℓ-free bound on the inverse. This is W1 of SOURCES_U_ELL (block constraint, γ_0 of R-004). CMP 116 assumes it through [13]. [R]

## 3. Verdict

(U-W) holds on CMP 109 and CMP 116. No genuine dependence on the torus size was found. Every whole-torus quantity on these pages falls in one of three classes:
1. definitions and outputs (rows 1–3, 5, 6, 20): no condition uses them;
2. pointwise or per-polymer quantities written "on T" (rows 7, 13, 14, 17–19): ℓ-free on the page;
3. global operators and minimizers (rows 4, 9, 11, 12, 15, 16, 21–23): either Z^d objects, or bounded by constants that the papers import from CMP 99 and CMP 102 (Ch3).

Two items are not closed on these pages and remain [R]: the uniform bound on ‖C^{(k)}(Z_0)‖ for large or wrapping Z_0 (row 22), and the ℓ-free lower spectral bound of C*Δ_kC on all of T (row 21). Both reduce to CMP 99 [13], already graded [V] for "d and L only" in SOURCES_L2_L3L14_VERIFY S9–S12.

One quantifier gap, not a dependence: CMP 109 p. 263 defines "absolute" as "independent of X and j" and omits T (row 8). Lemma U4 of SOURCES_U_ELL already shows that (1.22) needs T-uniformity.

Residue update proposed (not applied): delete "CMP 109 Sects. 3–5 …" and "CMP 116 apart from pp. 8, 10, 13, 20–21" from the (U-W) page list in SOURCES_U_ELL §6.1. The residue then lists CMP 122 I Sect. 1 and CMP 122 II pp. 358–378 only, plus the two [R] items above.
