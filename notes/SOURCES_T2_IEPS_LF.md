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
