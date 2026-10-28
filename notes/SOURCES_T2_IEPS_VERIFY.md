# SOURCES_T2_IEPS verification

Independent check of SOURCES_T2_IEPS.md. Firewall respected.

## 1. Setup and CMP 116 p. 5 (300 dpi image) [V]
- Offsets: CMP 109 printed = PDF + 248; CMP 116 printed = PDF; CMP 119 printed = PDF + 242; CMP 122 II printed = PDF + 354.
- p. 5: |s(Δ)| ≤ e^{κ_1}; δ_1M ≥ κ_1; 4C_2B_0e^{16κ_1}ε_2 ≤ 1 (UPPER on ε_2); |A| < 2ε_2. No ε_1, α_0, α_1 on p. 5. Author §2 agrees.

## 2. CMP 116 p. 6 (image) [V]
- Conditions: max{|A|,|∇A|} < 4C_4(B_0e^{16κ_1})³ε_3² ≤ (4C_4B_0e^{16κ_1})^{−1}; |B′| < ε_3; 4C_4B_0²e^{32κ_1}ε_3 ≤ 1; 2B_0e^{16κ_1}ε_3 ≤ ε_2; (1.20) |B′| ≤ C_1g_k|B| < C_1ε_1 for g_k|B| < ε_1.
- Bold A in (1.15) is the fixed-point iteration variable of (1.4) (p. 2: A_0 solves A_0 + G̃(δV/δA′)(H_0B′ + A_0) = 0), not a configuration. So its lower-bound-looking condition is a choice of the contraction ball, not a constraint on ε_1 or α.
- Chain needs C_1ε_1 ≤ ε_3. With ε_3 := C_1ε_1, ε_2 := 2B_0e^{16κ_1}ε_3, all reduce to UPPER bounds on ε_1 (e^{32κ_1}ε_1 ≤ abs). Author §2: CONFIRMED.
- p. 6 end: domain "I.(i)–(iii) with some α_0′, α_1′", bounds uniform on it. No α_0, α_1 condition.

## 3. CMP 116 p. 7 (image) [V]
- (1.21): e^{32κ_1}ε_1 ≤ abs. UPPER.
- "4B_0C_1e^{16κ_1}ε_1 ≤ ¼α_2" (image confirms ¼). UPPER on ε_1/α_2 (degree 1).
- t_□ circle: |t_□|4B_0C_1e^{16κ_1}g_k|B| ≤ ½α_2; (1.22) 1/|t_□| < 8B_0C_1e^{16κ_1}α_2^{−1}ε_1.
- MISSED BY AUTHOR: (1.24) |(1.23)| ≤ 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B|·E_0(α_1/α_3)^5(L^jη)^5·exp(...), from (I.3.54). The factor (α_1/α_3)^5 is a bound factor, degree 0 in the α's. A common α-scaling keeps it exactly; a non-common scaling (α_1 ↓ alone) only helps; α_3 ↓ alone hurts. This is the origin of the p. 8 "M^q from the conditions on α_1, α_2, α_3": (α_1/α_3)^5 and α_2^{−1}ε_1 are converted to M-powers via the ratio conditions. Degree 0 ⇒ q unchanged under a common factor. Not a condition; consistent with author's §5 (H) picture.
- p. 7 end: analytic on U′^c_{k+1}(□_0,(1+2β)α_0,(1+2β)α_1,α_0), restricted to U^c_{k+1}(Y,(1+β)α_0,(1+β)α_1,α_0). Domain radii only.

## 4. CMP 116 p. 8 (image) [V]; q spot-check
- (1.26) κ large; (1.27) κ_1 large; (1.28) κ_1 only.
- (1.29): |Σ(1.23)| ≤ E_0ε_1O(M^q)exp(O(1)κ_1)exp(−(1/16)κ_1d_k(Y)), "absolute constants O(1), q. q is a small, nonnegative integer, which can be easily calculated from the conditions on α_1, α_2, α_3."
- Source of M^q: (1.24) carries α_2^{−1}(α_1/α_3)^5. So O(M^q) bounds α_2^{−1}(α_1/α_3)^5, which has degree −1 in the α's. Converting it to an M-power needs α_2 bounded BELOW by an M-power (α_2 ≳ M^{−q′}) — an implicit lower bound the author did not list. It is not a constraint on the construction: the honest quantity is ε_1α_2^{−1}(α_1/α_3)^5, degree 0 in (ε_1, α's). Under α → α/4, ε_1 → ε_1/(4λ_V) it changes by 1/λ_V ≤ 1 (helps). Next display on p. 8 is E_0·24B_0²C_1B_3e^{16κ_1}α_2^{−1}ε_1·exp(...): same ε_1/α_2 combination.
- Grade of the q claim: CONFIRMED in substance, CORRECTED in reason. The reason is not "a fixed factor does not change a power of M"; it is that α_2^{−1} always comes paired with ε_1 (and α_1/α_3 is degree 0), so q and the O(1) are unchanged when ε_1 shrinks at least as much as α_2. If one keeps the literal "O(1)M^q, absolute O(1)" reading, the ¼ shrink of α_2 changes that O(1) by 4, which ε_1′ = ε_1/(4λ_V) pays exactly.

## 5. CMP 116 p. 9 (image) [V]
- (1.32) side condition prints "¼(κ_1 − 1) ≥ (1 − δ)κ, 0 < δ < 1" — author §3 wrote ⅛. Later "(1/16)κ_1 ≥ (1 − 2δ)κ" — author §3 and §10 wrote ⅛κ_1. Also "(1.26) for δκ sufficiently large". All κ-only; no effect on (I-ε); small page CORRECTIONS for §3/§10.
- Lemma 1 (1.34) domain U^c_{k+1}(Y,(1+β)α_0,(1+β)α_1,α_0) × {|B| < ε_1g_k^{−1} on Y}; (1.36) |V′_k| ≤ E_0ε_1C_1M^q e^{C_2κ_1}e^{−(1−2δ)κd_k(Y)}, "absolute constants C_1, C_2, q". Matches author.

## 6. CMP 116 p. 10 (image + 2× crops) [V]
- "analytic function on U′^c_{k+1}(T_η, α_0′, α_1′), with α_0′, α_1′ much bigger than α_0, α_1." UPPER on α_0, α_1 given α′. CONFIRMED.
- (1.38) analytic in B′ on {e^{16κ_1}|B′| ≤ a_1 on Y}; (1.40) needs e^{16κ_1}|B′| ≤ ⅓a_1. Crop shows an italic Latin a, clearly different from the Greek α_0′, α_1′ two lines above. Reading: a_1 is the B′-analyticity radius "from the considerations of the beginning of the section" (the ε_2/ε_3 radii of pp. 5–6), independent of α_1. With |B′| ≤ C_1ε_1: UPPER on ε_1. Author's both-readings argument is moot but correct.
- (1.39) C_3 absolute; no further ε_1/α condition.

## 7. CMP 116 p. 11 (image) [V]
- Lemma 2: domain (1.34); (1.43) |Q| ≤ C_3ε_1M^4e^{C_2κ_1}...; V″ obeys (1.36); gauge invariance for u near G. No new ε_1, α_0, α_1 condition. CONFIRMED.

## 8. CMP 116 p. 17 (image) [V]; B11 restoration by hand
- (2.23) α_5 = O(1)e^{−⅓δ_0M} + O(α_0 + α_1) + O(1)α_4 + γ_2; "α_5‖C^{(k)}(Z_0,0)‖ < ½". UPPER on α_0, α_1. (2.25) exp(O(α_5)|Z|).
- (2.26) prints on p. 17 (page note CONFIRMED): bracket Π_Y 2E_0ε_1C_1α_4^{−1}M^q e^{C_2κ_1}e^{−(1−3δ)κd_k(Y)} (degree 0 in ε_1/α_4, helps under ε_1′/α_4′ = ε_1/(λ_Vα_4)); cut exp(−½γ_2ε_1²g_k^{−2}|P|).
- By hand: γ_2′ε_1′²/γ′² = (γ_2/4)(ε_1²/(16λ_V²))(64λ_V²/γ²) = γ_2ε_1²/γ². So B11 ((1/20)γ_2ε_1²/γ² ≥ 4κ) is exact at γ′ = γ/(8λ_V). Per bond ½γ_2′ε_1′²g^{−2} ≥ ½γ_2ε_1²γ^{−2} ≥ 40κ for g ≤ γ′. CONFIRMED.

## 9. CMP 116 p. 21 (image) [V]: E_0
- (2.40)–(2.41) need "κ sufficiently large, and ε_1 sufficiently small" (UPPER on ε_1).
- "(1 − 10δ)½L = 1, or δ = (1/10)(1 − 2L^{−1})": δ depends on L only. CONFIRMED.
- "O(1)C_3ε_1 ≤ ½E_0 … unessential, because C_3ε_1 is small anyway, and we can take E_0 such that the assumption is satisfied." Then: the log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1) terms obey (I.1.18) "with κ replaced by δ_0M, and with an absolute constant instead of E_0. We define ½E_0 as equal to this constant, and we take M sufficiently large, so that δ_0M ≥ κ."
- So E_0 is fixed by the Z^{(k)} random-walk expansion ([16] (63)); printed as "absolute". No ε_1, no α in its definition. The C_3ε_1 condition is then an UPPER bound on ε_1 (C_3 of p. 20 carries E_0α_4^{−1} per MC_VERIFY §4, so E_0 cancels to a degree-0 condition ε_1/α_4 ≤ abs, which ε_1′ = ε_1/(4λ_V) keeps). CONFIRMED: E_0 independent of ε_1 and of the α's (as printed: "absolute").

## 10. CMP 109 p. 262 (image) [V]
- Definition U^c_j(X, α_0, α_1, γ_0): (1.11) |∂U − 1| < α_0ξ²; (1.12) local axial |A|, |∇^ξA| < O(1)LMBα_0, "B sufficiently large (determined later)"; (1.13) |A′|, |∇A′| < α_1; (1.14) |∂U − 1| < α_0ξ², |J| < γ_0; (iv) (1.16) |∂U_n(M′(U)) − 1| < α_0ξ², |J_n| < α_0(L^nξ)² on X̃^{−2}, same for U.
- α_0, α_1 appear only as radii. Note the γ_0 slot is filled by α_0 in CMP 116 (third argument). Author §4 CONFIRMED (author writes B_3 for B).

## 11. CMP 109 p. 263 (image) [V]
- (1.17): |∂U_n(M′(U)) − 1| < 2B_3α_0′ξ², |J_n| < 2B_3α_0′(L^nξ)²; "for α_0′ sufficiently small … imply (iv)": i.e. 2B_3α_0′ ≤ α_0 (degree-1 ratio, inclusion of a SMALLER space).
- "minimal configurations U_j satisfying |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small, satisfy the above conditions." And later: "A_k(U) defined on the space U_k(ε_0), which is contained in all the spaces U^c_j(X, α_0, α_1)." So ε_0 (real small-field threshold) ≤ c(B_3)·α_0: LOWER bound on α_0 relative to ε_0. CONFIRMED as the one real-configuration inclusion. In CMP 119/122 ε_0 → ε_j = g_jp_0(g_j) (g-dependent), so it is an upper bound on γ given A_0, p_0, α_0. (L1) CONFIRMED.
- (1.18) |E^{(j)}| ≤ E_0e^{−κd_j(X)} "for M ≥ M(κ), γ sufficiently small"; α_0, α_1 "positive, absolute constants (independent of X and j)". No other ε_1/α condition.

## 12. CMP 109 pp. 270–276 (pdftotext scan + p. 276 image) [V text / V]
Scan of CMP 109 §3 beyond the author's pages:
- p. 270: P^{(k)} analytic for "α_0′, α_1′ sufficiently small, but much bigger than α_0, α_1". UPPER on α given α′ (same as CMP 116 p. 10).
- p. 272 (3.13)–(3.14): on U^c_j(X, ½α_0, ½α_1, α_0); "there exists a constant α_2, depending on α_0 and on some absolute constants", with analyticity for |A|, … < α_2. MISSED BY AUTHOR. Type: UPPER on α_2 given α_0 (α_2 ≤ α_2^max(α_0)). Not degree-1 by print (the function α_2^max is not printed). It does not matter for (I-ε): α_2 is chosen after α_0 and any smaller α_2 is admissible; ε_1 is chosen after α_2. But it weakens the author's "(H) homogeneous of degree 1" and "common factor keeps every (H) item exactly": for this item the common-factor argument is [I]; the order argument (α_0 → α_2 → ε_1) covers it.
- p. 273 (3.15)–(3.16): "We assume also that ε_1 is so small that H_j(B(t)) satisfies (3.14) with ⅓α_2." UPPER on ε_1/α_2. Page CORRECTION: author §4 places (3.15)–(3.16) on p. 276; they print on p. 273. (3.17) bound carries α_2^{−1}·|ζH_k(B′)| (again ε_1/α_2).
- p. 275: "(3.26) |v − 1| < O(1)Mα_0, |v − 1| < O(1)Mα_1 … We assume that α_0, α_1 are chosen so that Mα_0, Mα_1 are still small." UPPER on α_0, α_1. (3.27): bounds B_3O(1)Mα_0. Not listed by author; same type as p. 278.
- p. 276 image: (3.31) |A|, |∇^ηA|, ‖A‖_{1,β} < α_2 on □_0, "satisfied by (tζ̃ + t_□ζ_□)H_k(B′) for ε_1 sufficiently small" (UPPER); H_{k+1} with α_2 replaced by B_3O(1)Mα_0. CONFIRMED.

## 13. CMP 109 p. 277 (image) [V]
- (3.32) |A|, … < 2(α_2 + B_3O(1)Mα_0) on □̃^4. (3.36) target: composed configuration ∈ U^c_j(X, α_0, α_1) for τ ∈ [0,1]. (3.37) |H_j|, |∇H_j| < B_3²O(1)Mα_0L^{j−1}η; |u_j − 1| < B_3²O(1)Mα_0.
- Prints "Assume now that B_3²O(1)Mα_0 < ½α_1" (B_3 SQUARED; author §4 wrote B_3). Minor CORRECTION. Type unchanged: degree-1 ratio, α_0 ≲ α_1/(B_3²M); kept by a common factor. CONFIRMED in type.

## 14. CMP 109 p. 278 (image) [V]
- (3.40) input U ∈ U′^c_{k+1}(□_0,(1+2β)α_0,(1+β)α_1,α_0).
- (3.41) prints "for α_1 sufficiently small, e.g. O(1)Mα_1 ≤ β" (author §5: "α_0"). Minor CORRECTION; still UPPER, absolute in β, M.
- (3.43) prints "(4B_3²O(1)M)²α_0 ≤ β" (B_3², author wrote B_3). UPPER on α_0. "Not essentially stronger … we have already assumed the restriction" (on α_1, continued p. 279).
- No ε_1 on p. 278.

## 15. CMP 109 p. 279 (image) [V]
- Top: "O(1)Mα_1 ≤ β on α_1" (UPPER).
- (3.45) B_3(B_3O(1)Mα_0L^{j−1}η)² < βα_0(L^{j−1}η)²: i.e. B_3³O(1)²M²α_0 < β. UPPER on α_0 (not listed by author; same type).
- (3.47) needs (1 + 7β)L^{−2} ≤ 1, "β not too large": β ≤ β(L). Order L → β kept.
- (3.49) |Q′| ≤ O(1)L^jη|A| < O(1)α_2L^jη; "for α_2 sufficiently small we still have (3.36)"; B′ with |B′| < α_3, "sufficiently small α_3". UPPER on α_2, α_3. Author's "O(1)α_2 ≤ α_3" is a reading of how τQ′ is replaced by B′ (needs |τQ′| < α_3 along the path): degree-1, CONFIRMED in type.

## 16. CMP 109 p. 280 (image) [V]
- |A_2|, |∇A_2| ≤ B_3|B′| < B_3α_3; "if B_3α_3 < ½α_1" (degree 1). CONFIRMED.
- (3.51) prints "we have assumed 2B_3α_3 ≤ βL^{−2}α_0" (author: βL^{−1}α_0). Minor CORRECTION; degree 1.
- Lemma 4 (3.53): input U ∈ U′^c_{k+1}(□_0,(1+2β)α_0,(1+2β)α_1); output ∈ U^c_j(X, α_0, α_1) "for α_0, α_1, α_2, α_3 sufficiently small and satisfying all the restrictions". CONFIRMED.
- (3.54) ≤ E_0α_3^{−5}|B|^5e^{−κd_j(X)}, with |B| < α_1L^jη: the source of (α_1/α_3)^5 in CMP 116 (1.24). Degree 0.
- E_0 recovery: "differentiation [in t_□] yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant." Combined with (3.54): need O(1)ε_1α_2^{−1}(α_1/α_3)^5·(sums) ≤ 1, i.e. ε_1 ≤ c·α_2(α_3/α_1)^5. Threshold is degree 1 in the α's. Under α → α/4 it drops by exactly 4; ε_1′ = ε_1/(4λ_V) meets it. So the author's hedge "θ may need to be smaller than 1/(4λ_V)" is not needed for this item under a common α-factor (it is needed only if the α's are not scaled jointly, e.g. via p. 272's α_2(α_0)). UPPER on ε_1. CONFIRMED.

## 17. CMP 109 §4–§5, pp. 281–298 (pdftotext scan; images of pp. 285, 288) [V text / V]
- OCR of Greek letters is poor; scan used "small", "assum", "chosen", "condition", "E_0", α-strings, then images at every hit.
- p. 285 (4.17) image: |∂_νB_μ| < O(1)(α_2 + B_3O(1)Mα_0)(L^jη)² < α_1(L^jη)². New item: O(1)(α_2 + B_3O(1)Mα_0) < α_1. Degree-1 ratio, same direction as p. 277 and p. 280 (α_2, α_0 small relative to α_1). Kept by a common factor; in the order α_1 → α_0 → α_2 it bounds later constants by an earlier one. Not listed by author; harmless.
- p. 285 (4.18), p. 288 (4.30): bounds α_1(L^jη)^{2+β} — bound factors, not conditions.
- pp. 282, 286: E_0exp(−κd_j(X) − δ_0dist(...)) bounds; no new ε_1/α constraint.
- §5 (pp. 292–298): Ward identities, Π tensor, β_j; algebraic. p. 298 defers localization and bounds to the next paper (CMP 116). No ε_1 or α condition found.
- Residual: the text scan of §4–§5 cannot exclude a condition printed only in Greek that OCR dropped; images were checked only at hits. Coverage: [V text]+spot [V], not full image read.

## 18. CMP 119 p. 255 (image) and text grep [V]
- (2.4) ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j); (2.5) R_j least L^r ≥ (log g_j^{−2})^r; (2.6)–(2.7) g_n ≤ (1 + β_0)(n − m)^{1/2}g_m etc., β_0 small for g small. CONFIRMED.
- p. 249 (text line 257): δ_0 = g_0A_1p_0(g_0) = (A_1/A_0)ε_0, "A_0 … much larger". CONFIRMED.
- NOTATION WARNING (not in author): CMP 119 itself uses "ε_1" (pp. 247, 252–253: "|U_1U′ − 1| < O(1)B_3exp(−δLM_2R_1)ε_1 … much smaller than δ_0") for the j = 1 threshold ε_j|_{j=1} = g_1p_0(g_1). This is NOT CMP 116's analyticity radius ε_1. Author's claim "ε_j, δ_j contain no (CMP 116) ε_1" is CONFIRMED; any later grep must not conflate the two symbols.

## 19. CMP 122 II p. 377 (image) [V]
- V(Y, (U,J)) analytic on Ũ^c_k(Y, α̃_0, α̃_1) (tilde radii, large-field paper). (1.68) |V| ≤ α·exp(−(1+2β)κd_{k,Z}(Y)), "a constant α, which can be chosen arbitrarily small for γ small enough" (prints Greek α; author wrote "a"). UPPER on γ. (1.69) O(1)Σ|Γ_j^0 ∩ Y| on components of Z^∼. No CMP 116 ε_1 or α_0, α_1 condition. CONFIRMED; the radii here are α̃_0, α̃_1, whose relation to the fixed α_0, α_1 is defined in CMP 122 I (not read) — same [I] as the author's α_{i,k} item.

## 20. CMP 122 II pp. 378–379 (images) + CMP 119 p. 259 (2.28) (text) — KEY FINDING
- p. 378: |∂V_k − 1| < 2ε_k; |V′_k − 1| < O(1)B_5M^6ε_k; M_0 = O(1)B_5M^6. No CMP 116 ε_1 or α. CONFIRMED.
- p. 379 image: first-order term ≤ O(1)B_3²A_1²p_1²(g_k)|B_0|(α_{0,k} + α_{1,k}) < O(1)B_3²A_1²C_0M^dR_k^{d+2}p_1²(g_k)q_0(g_k)g_k, "and this bound is small". CONFIRMED as printed.
- The definition the author did not read: CMP 119 p. 259 (2.28) [V text]: α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, "q_0, q_1 integers greater than 1, C_0, C_1 sufficiently large positive numbers". (CMP 122 I line ~422 also: δ_j = g_jA_1p_1(g_j), p_1 < p_0.)
- Consequence. In the large-field papers the analyticity radii are NOT the fixed α_0, α_1 of CMP 109/116. They are g-dependent, α_{i,j} → 0 as g → 0, and their prefactors C_0, C_1 carry a LOWER bound ("sufficiently large"). So the author's [I] "α_{i,k} capped by the fixed α_i" is REFUTED as a reading of the notation: (2.28) is the definition, and it is not a cap.
- Effect on (I-ε). Lemma MC's "α_i → α_i/4" cannot be realized in CMP 119/122 by shrinking C_0, C_1 (that would fight "C_i sufficiently large"). It can be realized by γ: every use of α_i in the MC budget (α_5 = … + O(α_0 + α_1) + …, (LM)^4α ≤ ¼, O(1)Mα ≤ β) is an UPPER bound, and g ↦ gC(log g^{−2})^q is increasing for small g with limit 0, so γ small enough gives α_{i,j} ≤ (Balaban's α_i)/4 at fixed C_i. [P, monotonicity only.] The degree-1 ratio items (p. 277, p. 280, p. 285) then become relations among C_0(log)^{q_0} and C_1(log)^{q_1}: with q_1 vs q_0 and C_1 vs C_0 fixed by Balaban, they are unchanged by γ. The lower-bound item (real small field ⊂ domain, CMP 109 p. 263) becomes ε_j = g_jA_0(log)^{p_0} ≤ c(B_3)·g_jC_0(log)^{q_0}: the g_j cancels. It is NOT restored by γ unless q_0 > p_0; if q_0 ≤ p_0 it is a LOWER bound on C_0 relative to A_0 (C_0 ≥ A_0/c). The relation of q_0 to p_0 is in CMP 119/122 I text not read here [I].
- So the author's (L1) "restored by γ small" is UNSUPPORTED as stated (it assumed a fixed α_0). Repair [P]: put C_0, C_1, q_0, q_1 after A_0, A_1, p_0 in the order (they carry only lower bounds that I found, and their upper-bound uses are on g). Raising A_0 (§9.2 of the author) then forces C_0 up (if q_0 ≤ p_0), which raises α_{0,j}, whose upper bounds are restored by γ. Acyclic. This repair is consistent but rests on the unread CMP 119/122 I conditions on C_i, q_i.

## 21. CMP 122 II pp. 380–381 (images); check of author §9.2 by hand [V/P]
- p. 380: (1.73)–(1.75) ratio ≤ e^{3 sup|σ|} sup|F| CONFIRMED. Also printed: each large-field domain Z_j contributes O(1)log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j) (per-component cost growing in log g^{−2}; Balaban absorbs it). Factors χ^c_j(P_j): exp(−γ_0(2g_j²)^{−1}(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|); χ′^c_j(Q_j): exp(−½γ_0g_j^{−2}(2δ_j)²(LM_2R_j)^{−2}|Q_j|); χ^{(j−1)c}(R_j): exp(−γ_0g_j^{−2}δ_j²(LM_2R_j)^{−d}|R_j|). CONFIRMED.
- p. 381: exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j + 1)) ≤ exp(−½γ_0A_1²p_0²(g_j)(d′_j + 1) − 2p_0(g_j)); (1.76); preparatory exp(−(1/4g_m²)B_3^{−2}½ε_m²) ≤ exp(−⅛B_3^{−2}(1+β_0)^{−2}A_0²p_0²(g_j)) ≤ exp(−A_1²p_0²(g_j)); also exp(−γ_0A_1²p_1²(g_j)) factors (δ′, p_1). CONFIRMED.
- NOTATION SHIFT (missed by author): the p. 381 arithmetic (ε_m²/g_m² → A_0²p_0²) and CMP 122 I ("δ′_j = g_jA_1p_1(g_j), p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0") show that in CMP 122 p_0(g) = (log g^{−2})^{p_0} WITHOUT A_0. CMP 119 (2.4) defines p_0(g) = A_0(log g^{−2})^{p_0} WITH A_0.
- Author's inequality F·exp(−2(A_0 + ½log F)T) ≤ exp(−2A_0T), T = (log g^{−2})^{p_0} ≥ 1 (g ≤ e^{−1/2}), F ≥ 1: exponent gap = log F·(T − 1) ≥ 0. Algebra CONFIRMED. But it is applied to the wrong term: on p. 381 the extra term is −2p_0(g_j) = −2T, A_0-free; raising A_0 does not enlarge it. CORRECTED mechanism [P]: F·e^{−2T} ≤ e^{−T} once T ≥ log F, i.e. for g ≤ exp(−½(log F)^{1/p_0}) — a γ condition; or take it from the A_1²p_0² term: ½γ_0A_1²T² ≥ 2T + log F once A_1² ≥ (8T + 4log F)/(γ_0T²), which holds for T ≥ 1 if γ_0A_1² ≥ 8 + 4log F. Both are lower bounds on later constants (A_1, then A_0 ≫ A_1) or upper bounds on γ. Conclusion of author §9.2(b) holds; the stated mechanism does not.
- 1/θ scaling: ε_j = g_jA_0p_0(g_j), δ_j = g_jA_1p_1(g_j) (CMP 122 notation). A θ-tie multiplies A_0, A_1 by θ; (A_0, A_1) → (A_0, A_1)/θ restores ε_j, δ_j identically, so every p. 380 factor (written in ε_j, δ_j, g_j, R_j) and every p. 381 factor (written in A_0², A_1², p_0², p_1², B_3, β_0) is identical. "Restores exactly" CONFIRMED. Ratio A_0/A_1 kept. Remark: this simply returns the thresholds to Balaban's, so whatever forced the tie ((L2)) must then be met by γ or by the C_i of (2.28) — see §20.

## 22. Grades and status
(1) CORRECTED. In the fixed-radius layer (CMP 116 §1–§2 pages read, CMP 109 §1, §3, §4–§5 scan) the classification holds: every ε_1/α_0/α_1 condition is UPPER, degree-1 ratio, or lower relative to a later constant; none two-sided. Missed items, all of allowed type: CMP 116 (1.24) factor (α_1/α_3)^5 (degree 0); CMP 109 p. 272 "α_2 depending on α_0" (upper on α_2, not shown degree 1 — order covers it); p. 275 Mα_0, Mα_1 small; p. 279 (3.45) B_3³O(1)²M²α_0 < β; p. 285 (4.17) O(1)(α_2 + B_3O(1)Mα_0) < α_1. "ε_j, δ_j contain no (CMP 116) ε_1": CONFIRMED. NOT covered by the author: in CMP 119/122 the radii are α_{i,j} = g_jC_i(log g_j^{−2})^{q_i} with "C_0, C_1 sufficiently large" (CMP 119 (2.28)) — a LOWER bound on the α-prefactors; the author's "α_{i,k} capped by fixed α_i" reading is REFUTED.
(2) CORRECTED. B11 exact at γ′ = γ/(8λ_V): CONFIRMED by hand. 1/θ scaling restores pp. 380–381 exactly: CONFIRMED. The ½log F inequality is true algebra but targets the wrong term: CMP 122's p_0(g) = (log g^{−2})^{p_0} has no A_0, so the −2p_0 term does not grow with A_0; absorption works via γ small (T ≥ log F) or via A_1 (γ_0A_1² ≥ 8 + 4log F). E_0 recovery (CMP 109 p. 280): UPPER on ε_1 CONFIRMED; its threshold c·α_2(α_3/α_1)^5 is degree 1, so no extra θ is needed under a joint α-factor. (L1) "restored by γ small": UNSUPPORTED in the large-field layer (radii g-dependent; holds only if q_0 > p_0, else needs C_0 ≥ A_0/c(B_3)).
(3) CONFIRMED with additions. No cycle among the constants read. E_0 absolute, ε_1-free and α-free (CMP 116 p. 21 "absolute constant", from the Z^{(k)} expansion). δ = (1/10)(1 − 2L^{−1}). Add to the order: C_0, C_1, q_0, q_1 (CMP 119 (2.28)) after A_0, A_1, p_0, p_1 and before γ; p_1 < p_0. In the large-field layer the MC α-shrink must be done by γ (α_{i,j} → 0), not by C_i.
(4) CONFIRMED for (2.26) on p. 17, Latin a_1 (crop: italic a ≠ α), "¼α_2". Further CORRECTIONS: CMP 116 p. 9 prints ¼(κ_1 − 1) ≥ (1 − δ)κ and (1/16)κ_1 ≥ (1 − 2δ)κ (author: ⅛, ⅛); CMP 109 (3.15)–(3.16) print on p. 273 (author: 276); p. 277 B_3²O(1)Mα_0 < ½α_1 (B_3²); p. 278 (3.41) "O(1)Mα_1 ≤ β" (author: α_0), (3.43) (4B_3²O(1)M)²α_0 ≤ β; p. 280 2B_3α_3 ≤ βL^{−2}α_0 (author: L^{−1}); CMP 122 II p. 377 constant is Greek α (author: a); CMP 119 uses "ε_1" for the j = 1 threshold (symbol clash); p_0(g) includes A_0 in CMP 119, excludes it in CMP 122.
q claim (p. 8): CONFIRMED in substance; real reason is that α_2^{−1} always comes with ε_1 and (α_1/α_3)^5 is degree 0.
(I-ε): CLOSED for the fixed-radius layer (CMP 109/116). NOT CLOSED for the large-field layer (CMP 119/122): open = conditions on C_0, C_1, q_0, q_1 vs A_0, p_0 (CMP 119 §2, CMP 122 I, not read), and what CMP 116's ε_1 becomes there. Proposed repair (§20) is consistent but [I] on those pages.
(I-ord): CLOSED on the pages read, after inserting C_i, q_i between (A_0, A_1, p_0, p_1) and γ; final closure shares the same unread CMP 119 §2 / CMP 122 I conditions.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
STATUS: COMPLETE
