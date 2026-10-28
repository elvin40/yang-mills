IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_MA2_VERIFY.md

Independent check of SOURCES_MA2.md §5 ledger. Firewall kept.

## 1. Item (1): (M-A′) algebra and constants [P, num python -I]
- A_min = F(X*) = min over B̄ of F(V′). It is a minimum over V′, so it is constant in V′. It depends on V_{Λ_i} and the exterior. So D^A(s) = e^{−sA_min}D^G(s) for all complex s. CONFIRMED (trivial).
- Ratio identity (2.1). Right side = e^{−uA_min−uG}·e^{uA_min}·e^{(u−x^{−2})G}/D^G(x^{−2}) = e^{−x^{−2}G}/D^G(x^{−2}) = N_x/D_x. CONFIRMED.
- Locating the HHOL_LF error. HHOL_LF §3.4(c) multiplies N_x/D_x by e^{−(u−x^{−2})F}. Total mass = D^A(u)/D^A(x^{−2}) = e^{−(u−x^{−2})A_min}·D^G(u)/D^G(x^{−2}). CONFIRMED.
- Relation to Balaban's slot. N_x/D_x = [N_u/D_u]·[D^G(u)/D^G(x^{−2})]·e^{(u−x^{−2})G}. So vs Balaban's chain the extra factors contain only G-objects. |e^{uA_min}/D^G(x^{−2})| = [Balaban's real 1/D_{Re u}]·D^G(Re u)/D^G(x^{−2}). The last ratio is ≤ 1 for Re u ≥ x^{−2} and ≤ e^{0.19n_i(1+η_x)} otherwise. So a real-u BOUND on the slot also costs only O(1) per mode. This supports the author's residual [I].
- Sign of the mismatch. |e^{(u−x^{−2})G}| = e^{(Re u−x^{−2})G}. Average against N_x/D_x = D^G(2x^{−2} − Re u)/D^G(x^{−2}). Large when Re u > x^{−2}. Correct direction.
- Constants. With u = x^{−2}(1+w)^{−2}, |w| ≤ 0.1: Re u ∈ [0.8264, 1.2346]x^{−2} [num, grid over the disc]. HHOL direction: u_1 = 0.8264x^{−2}, exponent ln(1/0.8264) = 2 ln 1.1 = 0.1906. (2.1) direction: u_1 = (2 − 1.2346)x^{−2} = 0.7654x^{−2}, exponent ln(1/0.7654) = 0.2673. Per cube 4 × 0.2673 = 1.069 ≤ 1.07. CONFIRMED. The 0.27 vs 0.19 asymmetry has two causes: (1−ρ_0)^{−2} − 1 = 0.235 > 1 − (1+ρ_0)^{−2} = 0.174, and the reflection 2x^{−2} − Re u. u_1 = 0.7654x^{−2} < x^{−2} lies in MA §6 range. CONFIRMED.
- Caveat (new, not in the author's file). A_min as a function of V_{Λ_i} and the exterior is a min over a ball. If X* lies on ∂B (MA_VERIFY toy shows this can happen), A_min is only piecewise analytic in those fields. The split into e^{uA_min} and 1/D^G is harmless for sup/modulus bounds. It is not harmless if a later step needs each factor separately analytic in the background (polymer localization). The product N_x/D_x stays analytic. So the bookkeeping must keep e^{uA_min} combined with an analytic partner, or use bounds only. [I]
- Grade (1): CONFIRMED, with the residual [I] as the author states plus the analyticity caveat above.

## 2. Item (2): CMP 102 pp. 306–309 statements [V, page images PDF pp. 30–33 at 110 dpi]
- (176)–(177) p. 306: 𝒜_1^{(2)} = −𝔊((δ/δA′)V^{(3)})(H_1B); 𝓗 = H_1B − 𝔊(δV^{(3)}/δA′)(H_1B) − HC^{(2)}(H_1B) + …. CONFIRMED: nonlinear part starts at second order.
- (179)–(180) p. 306: 𝓗 = 𝒜_0 + H_0B − HD(𝒜_0 + H_0B); 𝒜_0 − G̃Δ^{(2)}H_0B + G̃((δ/δA′)V)(𝒜_0 + H_0B) = 0. CONFIRMED.
- p. 306–307: "the function 𝓗(B) is an analytic function of g^c-valued configurations B defined on 𝔅_k and satisfying (172)". So the complex ball |B| < 2C_1ε_1 is stated. CONFIRMED.
- (182)–(184) p. 307: δ𝓗/δB = δ𝒜_0/δB + H_0 − H⟨𝔇(𝒜_0+H_0B), δ𝒜_0/δB + H_0⟩; 𝔄_0 = δ𝒜_0/δB solves (I + G̃(δ²V/δA′²)(𝒜_0+H_0B))𝔄_0 = G̃Δ^{(2)}H_0 − G̃(δ²V/δA′²)(𝒜_0+H_0B)H_0. CONFIRMED (author cites (179), (188); the B-dependence sits only in 𝔇(·) and δ²V(·), as claimed).
- (185)–(186) p. 308: Cauchy formula in τ; |(δ²V/δA′²)(A′)𝔄|_{(−3)} ≤ 4C_4ε_3 max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}}. CONFIRMED.
- (187) p. 308: |G̃(δ²V/δA′²)(𝒜_0+H_0B)𝔄|_{(−1)}, |∇G̃(…)𝔄|_{(−2)} ≤ O(1)B_0C_4B_5ε_1 max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}}, "for ε_1 sufficiently small". It bounds the OPERATOR norm (sup-type norms) of the B-dependent part of (184). It has no kernel decay. CONFIRMED; the gradient version is included, which the plaquette-curl term needs.
- (189) p. 308, verbatim: "To prove an exponential decay we have to investigate more closely the kernel ((δ²/δA′²)V)(A′). This is, unfortunately, a very awkward and complicated problem, although quite straightforward. … We do not perform these calculations here, we have obtained all necessary results to do the calculations and estimates, let us formulate a final result only." Bound: |Δ(y)(δ²/δA′²)V(A′)𝔄| ≤ O(1)ε_3(L^jη)^{−3}exp(−¼δ_0d(y,y′))max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}} for supp 𝔄 ⊂ Δ̃(y′). CONFIRMED: announced, not proved.
- (190) p. 308: "This inequality, the formula (188) and Lemma 2.1, and finally Proposition 2 and (181), yield" first-derivative bounds on δ𝓗_μ(B,x)/δB_ν(y′), ∇_x, Hölder, D*D, Δ versions, ≤ O(1)[(L^jη)^{−1}, (L^jη)^{−2}, …, (L^jη)^{−3}](L^jη)^{−d}exp(−⅛δ_0d(y,y′)). CONFIRMED: (190) rests on (189).
- Prop. 9 p. 309: analytic extension to G^c-valued small V′; 𝓗 analytic in B and in the external field U with (3.35)–(3.38) [5] or (1.7)–(1.9) [6]; satisfies (19)–(21) with ε_2 = B_5ε_1; "its functional derivative (182) satisfies the inequalities (190)". CONFIRMED. Note: Prop. 9 does not say (190) holds at complex B. The author tags this as an input. Fair.
- No second-derivative bound on V ↦ U_k(V) appears on pp. 305–309. CONFIRMED for these pages. Theorem 1 (9)–(10) not re-imaged here (p. 279 text, author [V text]).
- Grade (2): CONFIRMED.

## 3. Item (3): the (H−) derivation [P checks; V CMP 122 I pp. 195, 201 images]
- (1.80) p. 195 [V]: |U_0(∂p) − 1| < 2ε_kη² + O(1)B_3B_5M^5exp(−δ dist(p,Λ))ε_kη², p ∈ Ω_k. It bounds the BACKGROUND U_0 = U_{k,Z}(V_Λ) only. The author adds O(1)M_0ε_kη² for V′ ≠ 1 via (190). Fair [I]. Note c_X carries M^5; c_H is O(1) only for fixed M. Harmless (M is fixed), but "O(1)" should read "O_M(1)".
- (1.100) p. 201 [V]: normalized ratio per X_i, exponent −g_k^{−2}A(ζ_i, U_{k,X_i}(V′_kV_{Λ_i})), ζ_i ∈ C_0^∞(X_i), cutoff (1.101) |(1/i)log V′(b)| < M_0ε_k. CONFIRMED.
- Chain rule (4.1). P_p = Re tr(1 − U(∂p)) is gauge invariant per plaquette, so the Landau form exp iη𝓗(B) may replace the axial one. CONFIRMED.
- First term. −d²/dt² Re tr e^{i(Y+tδ)} = tr δ² + O(‖Y‖²‖δ‖²) for Hermitian Y, δ. So the first term is ≥ 0 for small Y, not only ≥ −O(ε²). The author's bound is true but loose. CORRECTION (minor, in the author's favour).
- Cauchy scaling. From (182)–(184): K_1(B) = δ𝓗/δB(B) − δ𝓗/δB(0) depends on B only through G̃δ²V(𝒜_0+H_0B) and 𝔇(𝒜_0+H_0B). Both vanish at B = 0 (V starts at cubic order, (176); D is quadratic, (55)). By (187) and (55), sup|K_1| = O(ε_1) on the complex ball |B| < 2C_1ε_1. Cauchy in one variable B(y′) at radius C_1ε_1, at real |B| ≤ C_1ε_1: |δ²𝓗| ≤ O(ε_1)/(C_1ε_1) = O(1)/C_1. CONFIRMED. A Cauchy step on 𝓗 itself (|𝓗| ≤ B_5ε_1, two derivatives at radius ~ε_1) gives O(1/ε_1). CONFIRMED that this naive route fails.
- Constant detail. B_5 = 6B_1B_3C_1, so B_0C_4B_5/C_1 = 6B_0B_1B_3C_4 is C_1-free. The (55) term: 𝔇 at a field of size B_5ε_1 is O(C_2B_5ε_1), not O(C_2ε_3) as the author writes. So c_N should read O(1)(B_0C_4 + C_2)B_5. Then c_N/C_1 = O(1)(B_0C_4 + C_2)B_1B_3, independent of C_1. CORRECTION (constant bookkeeping only).
- Decay. (187) is an operator bound with no kernel decay. The ε-small kernel bound (4.2) with decay needs (189) fed through the Neumann series (188). The author's attribution "decay from (189)–(190)" is right in substance. The symmetrization step (mixed partials symmetric, min(a,b) ≤ √(ab)) is valid and gives two-sided decay at rate δ_0/16. CONFIRMED.
- Where the ε of (H−) comes from. Second term = Σ_p ζ_p DP_p·D²Y_p[h,h]. |DP_p| ≤ |Y_p| + O(|Y_p|³) = O(ε_kη²). D²Y_p = η²·(curl of D²𝓗 + BCH D𝓗⊗D𝓗) = O(η²) per unit kernel weight. Per fine plaquette: O(ε_kη⁴). Sum over O(η^{−4}) fine plaquettes per block: O(ε_k). Schur test: ≥ −c_Hε_kΣ‖h_b‖²_2. So the O(1) second derivative of 𝓗 is multiplied by the O(ε) of |DP_p|. This is the author's chain. CONFIRMED at the level of powers of ε and η. The η-power bookkeeping (curl term needs ∇ of D²𝓗, covered by the ∇ part of (187)) is [I], as the author tags.
- (H−) holds with the sign needed: the only negative part is the second term, and its size is c_Hε_k‖h‖²_2. CONFIRMED given (C1)–(C3).
- Grade (3): CONFIRMED, with two minor corrections (first term ≥ 0; c_N carries B_5 on the C_2 term).

## 4. Items (4), (5): uniformity and open conditions [V text grep; P]
- k-uniformity. Rests on Theorem 1 constants (d, L only; author [V text], not re-imaged) and C_1, B_5 absolute (p. 305 [V]). C_2, C_4, B_0 being d, L only stays [I]. Extra dependence found: c_X ∝ B_3B_5M^5 (from (1.80)) and M_0. Both are fixed parameters, so k-uniformity survives; the constant is O_{M,M_0}(1).
- Volume. Given (189), every bound is local with exponential decay; the Schur constant K(δ_0,d) has no |Λ_i|. CONFIRMED given (189).
- Background. Prop. 9 covers external U in the regular class (3.35)–(3.38) [5]; matching (1.78)/(1.80) to that class is [I], as tagged. Prop. 9 does not state (190) at complex B; the Cauchy step needs the O(ε) kernel bound on the complex ball. This is part of the author's "given … on the complex ball" hypothesis. Fair.
- (C3) mechanism, small correction. The author says that without (189) "(4.3) loses the decay in y′" and "the decay in y alone ((190)) is not enough". By the symmetrization step, decay in one variable would give two-sided decay. The real loss is different: without (189) the ε-small part K_1 has only the operator bound (187), with no kernel decay at all, and (190) itself is derived from (189). The conclusion (only an ℓ^∞ bound with a |Λ_i| factor) stands. CORRECTED (wording).
- (C3) is inherited, not new. (190) [15] = CMP 102 is cited by Balaban himself: CMP 109 text line 1131 ("see Proposition 9, (190) [15]") and CMP 122 II text line 266 ("inequality (190) [15]") [V text grep]. So Balaban's own published chain already rests on the announced (189). (H−), hence (M-A), adds no new unproved Balaban input beyond (189). State plainly: (M-A) is [R] to (189), the same unproved statement that Balaban's CMP 109 and CMP 122 II use.
- (C1). CMP 122 I Prop. 1 analyticity ("|B′| < ε") is about V_Λ as a function of the exterior V_k, not about U_{k,X} as a function of V′ [V text p. 194]. The relevant radius is CMP 102 (172): |B| < 2C_1ε_1. Since C_1 is a free absolute constant and c_N/C_1 is C_1-free (§3), one may take C_1 ≥ M_0ε_k/ε_1 if ε_1 can be set ∝ ε_k with B_5ε_1 still small. Plausible, not checked. Open, as the author says.
- (C2). U_{k,X_i} with ζ_i weights vs CMP 102's full-lattice U_k: not checked here. Open.
- Grade (4): CONFIRMED with the tags as written, plus the M^5, M_0 dependence of c_H.
- Grade (5): CONFIRMED (C1)–(C3) open; (C3) wording CORRECTED; (C3) is an inherited Balaban dependence.

## 5. Grades
1. (M-A′) closed by (2.1): CONFIRMED. Constants 0.1906, 0.2673, 1.07 CONFIRMED. New caveat: A_min may be non-analytic in the background if X* ∈ ∂B; keep e^{uA_min} paired or bound-only.
2. CMP 102 statements: CONFIRMED; (189) announced, not proved (verbatim quote §2).
3. (H−) derivation: CONFIRMED; minor corrections (first term ≥ 0; c_N = O(1)(B_0C_4 + C_2)B_5).
4. Uniformity: CONFIRMED with [I] items; c_H depends on M, M_0.
5. Open (C1)–(C3): CONFIRMED; (C3) wording CORRECTED; (M-A) is [R] to (189), which Balaban's own chain already uses.
