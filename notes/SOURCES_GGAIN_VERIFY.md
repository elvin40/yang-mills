# SOURCES_GGAIN_VERIFY.md

Independent verification of SOURCES_GGAIN.md (2026-10-27). Firewall: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md.

## 0. Setup
File created.

## 1. Context read
Read SOURCES_GGAIN.md in full, SOURCES_SM §4–§5, SOURCES_SM_VERIFY §1–§8, THEOREM2 §3a, HBETA_VERIFY §5.
- p. 264 assumption (THEOREM2 §3a, verbatim CMP 109): E^{(j)}(X,g_{j−1},U,J) is "a C^∞-function of g_{j−1} ∈ [0,γ] (or analytic)", with |E^{(j)}| ≤ E_0e^{−κd_j(X)}; NO derivative bound on E^{(j)} is stated. For β_{j+1}: "smooth on [0,γ], uniformly bounded on this interval together with all derivatives". So the uniform derivative bound is assumed for β only, on the CLOSED interval including g = 0.
- Note: GGAIN's theorem is stated on g_k ∈ (0, γ]; p. 264 asks [0, γ]. Continuity/extension to g = 0 needs a separate remark.

## 2. CMP 116 pp. 7–11 (pdftotext)
- (1.34) text: Lemma 1 function "defined and analytic on the space U^c_{k+1}(Y,(1+β)α_0,(1+β)α_1,α_0) × {B: |B| < ε_1g_k^{−1} on Y}". So the B-domain is the sup-norm condition g_k|B|_Y < ε_1. CONFIRMED as quoted.
- (1.21)–(1.22): the t_□ circle and all field norms depend on B only through g_k|B| (B′ is a function of g_kB, SM §4.1, SM_VERIFY confirmed). So at fixed U,J and fixed earlier slots, V′_k(Y,B) = f_Y(g_kB) with f_Y analytic on the polydisc {|x(b)| < ε_1, b ⊂ Y}, sup ≤ v_Y. The radius ε_1 in x is g-free. CONFIRMED.
- Cauchy in s for s ↦ f_Y((g+s)B): needs |g+s||B|_Y < ε_1; with g|B|_Y ≤ rε_1 the circle |s| = (1−r)ε_1/|B|_Y is admissible. Bound v_Y|B|_Y/((1−r)ε_1); v ∝ ε_1 cancels. Arithmetic CONFIRMED.
- (1.39)–(1.40) text: |(1.38)| ≤ C_3(e^{16κ_1}|B′|)³M^4(decay), analytic for e^{16κ_1}|B′| ≤ a_1; "terms of zeroth and first order vanish, and the second order term is written as a quadratic form"; (1.40) second derivative bound ∝ |B′| "if e^{16κ_1}|B′| ≤ ⅓a_1". Then p. 11: "Taking B′ as in (1.19) we obtain the above bound with |B′| replaced by C_1ε_1".

## 3. χ_k definition (CMP 109 (2.9), p. 266) and CMP 116 (2.1)–(2.13)
- CMP 116 (2.9) is the H(Z) definition, not χ_k. χ_k is CMP 109 (2.9): "χ_k = Π_b χ({|B′(b)| < ε_1})", with B′ = (1/i)log V the variable before the B-substitution; CMP 116 (1.19) B′ = g_kCB − hD(g_kCB). GGAIN/W4 cite "(2.9)" without the paper; label fix only.
- CMP 109 p. 266, verbatim: "Another possibility is to take g_k/γ_k ε_1 instead of ε_1 … It has the advantage that the functions E^{(j)}, β_j are analytic functions of the effective coupling constants". This explains the p. 264 "C^∞ … (or analytic)": with fixed ε_1 Balaban claims C^∞ only. Relevant to item 6: the large-field factor e^{−cε_1²/g²} is flat at g = 0, smooth, not analytic.
- Margin (M_r): χ_k cuts B′, (1.34) is in B. B′ = g_kCB + O((g_k|B|)²) on the non-b_0(c) bonds; CMP 109 p. 266–267 says B′(b_0(c)) is restricted with ε_1 → O(ε_1). So supp χ_k ⊂ {g_k|B|_Y ≤ (1 + O(ε_1))·c_Cε_1}, not obviously ≤ ε_1. GGAIN's "the inclusion with r = 1 is his own" is too strong; Balaban uses it implicitly. The fix (shrink the χ_k threshold by a fixed factor) is benign and keeps the [check].
