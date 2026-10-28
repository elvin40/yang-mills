# SOURCES_T2_IEPS_LF: (I-ε) in the large-field layer (CMP 119/122)

Closure task for the residue of SOURCES_T2_IEPS_VERIFY §20–§22. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Inputs read: SOURCES_T2_IEPS_VERIFY.md (all 22 §§), SOURCES_T2_IEPS.md §§5–11, SOURCES_MC.md §9–§10, SOURCES_HHOL_LF.md, SOURCES_GGAIN_LF.md (grep for thresholds, radii, freeze).
Offsets (VERIFY §1): CMP 119 printed = PDF + 242; CMP 122 II printed = PDF + 354.

## 1. CMP 119 pp. 259, 261 (PDF 17, 19; 300 dpi images) [V]
- p. 259 (2.27): each localized E^{(j)}(X, U_k, z) has an analytic extension on U^c_j(X, α_{0,j}, α_{1,j}). This is the CMP 109 space (I.1.11)–(I.1.16), with the fixed radii α_0, α_1 replaced by α_{0,j}, α_{1,j}. Property (iv) is the CMP 109 bound (I.1.18).
- (2.28): α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}; "q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers." Image confirms VERIFY §20.
- p. 261: the B-terms live on a NEW multiscale space Ũ^c_j(X, α̃_0, α̃_1). Its conditions (2.34)–(2.39) use the scale-n radii on each layer Ω_n\Ω_{n+1}: |∂U − 1| < (1 − β(1 − 2^{−(j−n)}))α_{0,n}ξ²(L^nξ)^{−2}; |J| < (…)α_{0,n}(L^nξ)^{−3}; (2.38) gauge-fixed |A|, |∇A| < BCMα_{0,n} with absolute B; (2.39) |A′|, |∇A′| < (…)α_{1,n}. β "small … not too small, e.g. β = 1/4".
- So α̃_i is shorthand for the sequence {α_{i,n}}_{n≤j}. VERIFY §19's open [I] ("relation of α̃_0, α̃_1 to the fixed α_0, α_1") is now [V]: α̃_i = (α_{i,n})_n of (2.28). There is no separate fixed α_i in the large-field layer.
- (2.42): |B^{(j)}| < B_0exp(−κd_j(X)). No radius condition.

## 2. Other printed uses of α_{i,j}, C_i, q_i (images: CMP 119 p. 262; CMP 122 II pp. 366, 368, 379) [V]
- CMP 119 p. 262 (PDF 20), after Theorem 1: "some of the restrictions on constants, e.g. on constants κ, M, ε_j, α_{0,j}, α_{1,j}, come from the paper [I]. We assume that all of them are satisfied here." So every CMP 109/116 condition on α_0, α_1 is imposed on α_{0,j}, α_{1,j}. CMP 109's curvature threshold ε_0 becomes ε_j.
- CMP 122 II p. 366 (PDF 12): the Wilson-term extension takes U ∈ U^c_k(Z, α_{0,k}, α_{1,k}); U = U′U, |∂U − 1| < α_{0,k}η², |A′|, |∇A′| < α_{1,k}; |B̃′| < O(1)α_{1,k}. Same page: O(1)B_3²B_5²M^9R_k^7ε_k² "small for g_k small enough" (UPPER on g).
- p. 367 (text): M^j(U_0(U)) obeys (1.84) [IV] "with α_{0,k} instead of ε_k"; H_{k,Λ} obeys (1.87) [IV] "with α_{0,k} + α_{1,k} instead of ε_k". So α_{0,k} plays the role of ε_k on the complex extension. It must be at least of the size of ε_k (see §4).
- p. 368 (1.47): linear H-term ≤ O(1)A_0C_1B_3³B_5M^{10}p_0(g_k)q_1(g_k)R_k^7L^{−N}; "small under the usual conditions on N". Here (α_{0,k} + α_{1,k}) was bounded by O(1)C_1q_1(g_k)g_k, and ε_k/g_k² by A_0p_0/g_k. Type: condition on N (N a power of log g^{−2}, CMP 122 II p. 364 [V text] "ν ≥ 2p_0 + dr_0"); for fixed constants it holds for g small. UPPER on g.
- p. 379: first-order term ≤ O(1)B_3²A_1²C_0M^dR_k^{d+2}p_1²(g_k)q_0(g_k)g_k, "small". Here (α_{0,k} + α_{1,k}) was bounded by O(1)C_0q_0(g_k)g_k. UPPER on g.
- Printed tension (minor, [V]): p. 368 absorbs α_{0,k} into C_1q_1; p. 379 absorbs α_{1,k} into C_0q_0. Both absorptions hold with an O(1) only if q_0 = q_1 and C_0/C_1 is bounded both ways by constants that Balaban puts into "O(1)". This does not create a condition: both displays are "g·polylog·(C_0 + C_1)·const small", i.e. UPPER on g.
- Text grep (CMP 119, CMP 122 I, II) for q_0, q_1, C_0, C_1, α_2…α_6, γ_2: no other occurrence. No printed relation between q_i and p_0, p_1. α_2, α_3, α_4, γ_2 never appear in CMP 119/122 (OCR caveat: Greek may drop) [V text].

## 3. Task (1): every condition on C_i, q_i, with type
| # | Source | Condition | Type |
|---|---|---|---|
| C1 | CMP 119 (2.28) [V] | q_0, q_1 integers > 1 | structural (lower) |
| C2 | CMP 119 (2.28) [V] | C_0, C_1 "sufficiently large" | LOWER on C_i |
| C3 | CMP 119 p. 262 + CMP 109 p. 263 (real small field ⊂ domain) | ε_j ≤ c(B_3)α_{0,j}, i.e. A_0p_0(g) ≤ c·C_0q_0(g) for all g ≤ γ | LOWER on C_0 relative to A_0 (ratio, g-dependent); see §4 |
| C4 | CMP 119 p. 262 + CMP 109 p. 277 [V there] | B_3²O(1)Mα_{0,j} < ½α_{1,j}: (C_0/C_1)(log g^{−2})^{q_0−q_1} < 1/(2B_3²O(1)M) | RATIO; needs q_0 ≤ q_1; if q_0 = q_1, LOWER on C_1 relative to C_0 |
| C5 | CMP 109 pp. 280, 285 via p. 262 | α_3 ≲ βL^{−2}α_0, α_2 + MB_3α_0 ≲ α_1 | RATIO; forces α_2, α_3 ≤ const·α_{0,j}, so they are g-scaled too [P] |
| C6 | CMP 109/116 absolute items via p. 262 | O(1)Mα ≤ β, (LM)^4α ≤ 1, α_5 small, (4B_3²O(1)M)²α_0 ≤ β | UPPER on α_{i,j} = UPPER on g given C_i, q_i |
| C7 | CMP 122 II p. 366, 379 | B_3²A_1²C_0M^dR^{d+2}p_1²q_0·g small | UPPER on g |
| C8 | CMP 122 II p. 368 (1.47) | A_0C_1B_3³B_5M^{10}p_0q_1R^7L^{−N} small | condition on N (power of log g^{−2}); UPPER on g |
No printed upper bound on C_0 or C_1 in terms of an earlier constant. No two-sided condition. Every upper use of C_i passes through α_{i,j} = g·C_i·(log g^{−2})^{q_i}, which tends to 0 as g → 0 at fixed C_i [P].
Monotonicity [P]: F(g) = g(log g^{−2})^q has F′(g) = (log g^{−2})^{q−1}(log g^{−2} − 2q) > 0 for g < e^{−q}, and F(g) → 0. So for every target a > 0 there is γ_a with C·F(g) ≤ a for all g ≤ γ_a.

## 4. Task (2): does the MC α-shrink reach α_{i,j}? Answer: (b), absorbed by γ, not by C_i [P]
- Identification [V]. Lemma MC shrinks α_0, α_1 (and α_4, γ_2) of CMP 116 §2. These are the radii of the CMP 109 space U^c(X, α_0, α_1). CMP 119 (2.27) and p. 262 use the SAME space with α_i → α_{i,j}. So option (a) ("different object") is refuted: the shrink propagates to α_{i,j}.
- What MC needs [V, SOURCES_MC §9]. MC states "any values with (LM)^4α_i′ ≤ ¼ also work". The shrink exists to give a factor-4 slack in the ABSOLUTE upper-bound items (α_5 budget, (LM)^4α ≤ 1, O(1)Mα ≤ β). It is not a relative condition between α and another constant.
- Absorption [P]. Keep C_0, C_1, q_0, q_1 at Balaban's values. Each C6/C7/C8 item has the form K·F_i(g) ≤ a with K, a fixed. Replace a by a/4 and choose γ′ ≤ γ with C_iF_i(γ′) ≤ ¼·(Balaban's admissible bound), using the monotonicity of §3. Then every α_{i,j}, j ≥ 0, meets the primed absolute items for all g_j ≤ γ′. The older-layer radii α_{0,n}, n ≤ j, in Ũ^c_j (2.34)–(2.39) obey the same bound, since all g_n ≤ γ′. Since F(g) ≈ g up to a log, γ′ ≈ γ/4 up to a log factor; any γ′ below the B11 value γ/(8λ_V) and below γ_{a/4} works.
- Ratio items C4, C5 and the lower item C3 are unchanged: they do not see γ, and C_i, q_i, A_0, p_0 are unchanged. So Balaban's own choice satisfies them, and the shrink adds nothing to them.
- Why not shrink C_i: C_i → C_i/4 would break C2/C3 ("sufficiently large", and C_0q_0 ≥ A_0p_0/c when q_0 = p_0). It is not needed.
- Frozen convention [P]. Under HHOL_LF 4.1 every g-dependent parameter is frozen at x*. The radii α_{i,j} are g-dependent parameters and must be frozen too: α_{i,j} := x*_jC_iq_i(x*_j) (real, positive). HHOL_LF 4.1 lists ε, δ, δ′, R, N, N_0 and the R-ratio weight but not α_{i,j}. Add α_{i,j} to that list. With this, C3 at x* is Balaban's condition at x*, and the γ′-absorption above uses x*_j ≤ γ′.

## 5. Task (3): "(L1) restored by γ small" in the large-field layer
- (L1) in CMP 119/122 form is C3: A_0p_0(g) ≤ c(B_3)C_0q_0(g), g ≤ γ. The g in ε_j and α_{0,j} cancels.
- Under route §4 nothing on either side of C3 moves. (L1) is not broken, so it needs no restoration. [P]
- If a construction does move A_0 (θ-tie of TRUST_LEDGER C9 / HHOL_LF with prefactor θA_0, then A_0 → A_0/θ as in VERIFY §21): the thresholds return to Balaban's exactly, so C3 is again unchanged. [P]
- If instead A_0 is raised with the tie kept (author §9.2 variant): C3 needs re-checking. Necessity [P]: C3 must hold for ALL g ≤ γ, i.e. (A_0/C_0)(log g^{−2})^{p_0−q_0} ≤ c. If q_0 < p_0 the left side → ∞ as g → 0, and no C_0 works; Balaban's Theorem 1 then fails as printed. So Balaban's construction forces q_0 ≥ p_0 (not printed; derived from C1–C3). Then:
  - q_0 > p_0: C3 holds for g small at any A_0, C_0; γ restores it. "(L1) restored by γ small" is TRUE in this case.
  - q_0 = p_0: C3 is C_0 ≥ A_0/c(B_3), g-free. γ does not restore it. C_0 restores it: C_0 is free upward (§3: no printed upper bound by an earlier constant; all upper uses go to γ). If C4 binds with q_1 = q_0, raise C_1 ≥ 2B_3²O(1)M·C_0 too; C_1 is also free upward.
- Verdict: VERIFY's grade UNSUPPORTED stands for the sentence as written. Corrected statement [P]: (L1) is untouched by the MC shrink; if A_0 is raised, (L1) is restored by γ when q_0 > p_0 and by C_0 (then C_1) when q_0 = p_0; q_0 < p_0 is excluded by Balaban's own Theorem 1. Which of q_0 > p_0 or q_0 = p_0 holds is not printed [I]; both cases close.

## 6. Task (4): CMP 116's ε_1 in CMP 119/122
- CMP 116's ε_1 has two roles: (i) the real fluctuation cut χ_k: |g_kB| < ε_1, with cut gain exp(−½γ_2ε_1²g_k^{−2}|P|) and B11; (ii) the B-radius of the analyticity domain (1.34).
- Counterpart of role (i) [V]: the δ-thresholds. First step: CMP 119 (1.8) δ_0 = g_0A_1p_0(g_0) = (A_1/A_0)ε_0 (p. 247, text). Later steps: CMP 122 I (1.27) p. 182–183 [V text] δ′_j = g_jA_1p_1(g_j), p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0, cut "< 2δ′_j" on the approximate fluctuation field; CMP 122 II (1.82) cut on B′(b), p. 381 [V, VERIFY §21]. The B11 analogue is the p. 381 factor exp(−γ_0A_1²p_1²(g_j)(d′_j + 1)). So CMP 116's ε_1 ↦ δ′_j = g_jA_1p_1(g_j): a running threshold with prefactor A_1, not a fixed number.
- CMP 119's own symbol ε_1 is ε_j at j = 1 = g_1A_0p_0(g_1). It is the counterpart of CMP 109's curvature threshold ε_0, not of CMP 116's ε_1 (VERIFY §18 confirmed).
- Role (ii): no separate printed B-radius in the pages read. It must contain the real cut ball |gB| < 2δ′_j; its upper uses are g·polylog-small [I].
- Effect of the MC ε_1-shrink in this layer [P on printed items]. Keep A_1. Upper uses of the radius (activity bounds linear in it, p. 366 ε_k-terms, (1.47), p. 379) are K·g·polylog ≤ a and γ′ absorbs any fixed factor, including λ_V. Cut uses keep A_1 and change γ_0 → γ_0″ ≥ 0.82γ_0 (HHOL_LF 4.4), inside VERIFY §21's margin (γ_0A_1² ≥ 8 + 4 log F). B11's exact restoration at γ′ = γ/(8λ_V) is not needed here: the p. 381 factor has no γ.

## 7. Task (5): constant order with C_i, q_i inserted
d, L → δ = (1/10)(1 − 2L^{−1}) → κ → κ_1 → M_1, M_2 → M → β, α′ → fixed-layer α-chain (α_1 → α_0 → α_3 → α_2; α_4, γ_2, α_6, a_1) → E_0 (absolute) → ε_1 (fixed-layer only) → ρ_0 → integer exponents p_1 < p_0, r_0, ν (2p_1 − (d+5)r_0 > p_0; ν ≥ 2p_0 + dr_0; ½ν ≥ p_0 − p_1 − 1), q_0 ≥ p_0 (§5), q_1 ≥ q_0 (C4) → A_1 → A_0 (≫ A_1) → C_0 (C2, C3) → C_1 (C2, C4) → γ (C6–C8, B10, B11, (1.68), p. 379, N3) → g.
- Edges: C3 bounds C_0 below by A_0 (earlier). C4 bounds C_1 below by C_0 (earlier). C6–C8 bound γ above by C_i, A_i, M, R-rules, N (all earlier). No printed condition bounds A_0, A_1, the exponents, or any fixed-layer constant by C_i. No cycle [P on the printed list §3].
- Joint scaling [P]: (C_0, C_1) → λ(C_0, C_1), λ ≥ 1, helps C2, C3, keeps C4 exactly, and moves only γ. If the internal radii α_{2,j}, α_{3,j} are g-scaled with prefactors C_2, C_3 (forced by C5) and the CMP 109 p. 280 recovery reads δ′-radius ≤ c·α_{2,j}(α_{3,j}/α_{1,j})^5 in this layer, that item is degree 1 in the C's and joint scaling of (C_0, C_1, C_2, C_3) helps it too [I: LF form of α_2, α_3 not printed].

## 8. Task (6): verdict and residue
(I-ε), large-field layer: CLOSED [P] for the α_0, α_1 shrink and for the ε_1 role of the cut threshold, with these compensations: keep C_0, C_1, q_0, q_1, A_0, A_1 at Balaban's values; lower γ to γ′ with C_iF_i(γ′) ≤ ¼·(Balaban's absolute admissible bound) and λ_V·K·F(γ′) ≤ a for each printed g-small item (C6–C8, p. 366); freeze α_{i,j} at x* together with the other thresholds. No C_i shrink. (L1) is untouched.
Residue (precise):
- R1 [I]. α_2, α_3, α_4, γ_2 never print in CMP 119/122. C5 forces α_2, α_3 to scale with α_{0,j}. If α_4 is also g-scaled, MC's vertex pairing "λ_VE_0 with ε_1/λ_V" (via the p. 20 C_3 ∝ E_0α_4^{−1}) becomes degree 0 in g: (δ′-radius)/α_{4,j} ∝ (A_1/C_4)(log g^{−2})^{p_1−q_4}. γ then absorbs λ_V only if q_4 > p_1; if q_4 = p_1, absorb by C_4 → λ_VC_4 (free upward if, as for C_0, C_1, its only upper uses go through g). If α_4 stays absolute, γ absorbs λ_V. All three branches close; which one Balaban uses is not printed.
- R2 [I]. q_0 > p_0 or q_0 = p_0 is not printed. Only matters if A_0 is raised (author §9.2 variant); both cases close (§5). q_0 < p_0 is excluded by Balaban's Theorem 1.
- R3 [P, convention]. HHOL_LF 4.1 must list α_{i,j} among the frozen parameters. Additive; no proof changes.
- R4 coverage. CMP 122 I and CMP 119 §3–§5 were searched by text only (OCR); images at hits. A Greek-only condition on C_i, q_i outside the imaged pages cannot be excluded.

## 9. Ledger
[V] 300 dpi images this session: CMP 119 pp. 259, 261, 262 (PDF 17, 19, 20); CMP 122 II pp. 366, 368, 379 (PDF 12, 14, 25).
[V text] pdftotext: CMP 119 pp. 247–248, 255, 262–263, 276–277; CMP 122 I pp. 182–183, 189–192, 198–199; CMP 122 II pp. 364, 366–367; grep of all three texts for q_0, q_1, C_0, C_1, α_2–α_6, γ_2, p_0/p_1 relations.
[P] Ũ^c_j = multiscale space on (α_{i,n})_n (§1). Option (a) refuted; shrink propagates and is absorbed by γ at fixed C_i (§4). Monotonicity of gC(log g^{−2})^q (§3). q_0 ≥ p_0 necessary for Theorem 1 (§5). (L1) untouched by MC; restoration rule if A_0 is raised (§5). CMP 116 ε_1 ↦ δ′_j = g_jA_1p_1(g_j) (§6). Order acyclic with C_0, C_1 after A_0 and before γ (§7). Joint C-scaling helps all C-items (§7).
[I] R1, R2, R4; p. 368/379 O(1) absorptions imply q_0 = q_1 (not needed).
Corrections to inputs: VERIFY §19's α̃_i are (α_{i,n})_n of (2.28) (now [V]). VERIFY §20's "repair via C_0 ≥ A_0/c" is needed only if A_0 moves; under the MC route nothing on C3 moves. CMP 122 II p. 368 (1.47) carries M^{10}R_k^7 (p. 367 text read "M p_0 q_1 R").
Firewall kept. Unverified by an independent agent.
STATUS: COMPLETE

Corrections after verification (SOURCES_T2_IEPS_LF_VERIFY, 2026-10-28): (2.28) is on CMP 119 p. 259; γ′ < e^{−q_i} is also needed for the monotonicity g(log g^{−2})^q ↑ 0; (1.47) is degree 0 in g (its smallness is L^{−N} with N depending on g); C3 is the printed inclusion U_k(ε_0) ⊂ U^c_j on CMP 109 p. 263, c(B_3) unprinted; C4 is p. 277's B_3²O(1)Mα_0 < ½α_1; on p. 381 the (1.27) factor is exp(−γ_0A_1²p_1²(g_j)) with no (d′_j + 1) weight (that weight belongs to the fundamental factor with A_1p_0); the ν condition reads ½ν ≤ p_0 − p_1 − 1 (CMP 122 I p. 198), and "ν ≥ 2p_0 + dr_0" is a different ν (CMP 122 II p. 363) — the two were merged; the choice of N must be a positive power of log g^{−2} or its exponent placed after q_1 in the order (either keeps the order acyclic); CMP 109 (3.32) vs CMP 119 (2.38) supports R1's α_2 ∝ α_{0,j}.
