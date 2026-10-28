IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_M1_SWEEP_VERIFY

Independent verification of SOURCES_M1_SWEEP.md §1–§6. Firewall respected.

## V0. Context read
Read: SOURCES_M1_SWEEP (all), A16_REPLACE2 §1–§7, SRULE §5–§6, D2 l. 55–68, 120–126, §8, WC_FULL §0, 5.2.
Notes. SRULE NEW-1 as first stated has three parts: (a) inherited covariance at s ≡ 1, (b) sourced gauge + Euclidean, (c) translation-covariant partitions for s-versions (C34). The sweep settles only the Euclidean part of (b). Gauge part of (b) stays [P-sketch, unverified] in SRULE; (c) stays with C34. D2 §8 items 3, 5, 6 cover R-operation DENOMINATORS (complex c, complex f, positivity); none names the Hessian lower bound (1.7)–(1.9).

## V1. Spot checks on 300 dpi images (CMP 119)
- p. 270 (3.23) [V]: matches the sweep text verbatim in structure: A_k on Ω_{k+1} ∩ Λ^c_{k+1} with exp[−½⟨A_k, C*ΔCA_k⟩ + ½⟨A_k, C*ΔC C^{(k)}(Λ_{k+1}) C*ΔCA_k⟩]. Schur complement reading correct.
- p. 272 (3.28)–(3.29) [V]: IBP identity −⟨A_k, C*ΔC C^{(k)}(Λ_{k+1})(δχ/δA + δP/δA + δE_k/δA)⟩ and the measure Z_t^{−1}dμ_{C^{(k)}(Λ_{k+1})}χ exp[−t⟨A, C*ΔCA_k⟩ + …]. Matches; class Q1, Q2, Q4, Q9, (U-c) correct.
- p. 273 (3.33)–(3.35) [V]: log det via contour "surrounds the spectrum", segment Re z = r, λ_0 > r small, resolvent identity (3.35). Matches; needs a spectral gap from 0 and a norm bound only (Q1 + Q5). Note: the image says λ_0 > r, the sweep says "r < λ_0" — same.
- p. 274 (3.37)–(3.39) [V]: (3.39) E^{(k+1)}(rU_{k+1}, r^{−1}b) = E^{(k+1)}(U_{k+1}, b), "r an arbitrary Euclidean transformation of the continuous space T, transforming the lattice T^{(k+1)} into itself", only when Ω_j = Λ_j = T_η. Matches the sweep quote.
- p. 282 (3.58)–(3.60) [V]: r acts on "the lattice Z^d", example = reflection x_μ → −x_μ about a lattice point; (3.59) covariance of Π^{(j)}; (3.60) with the Ward–Takahashi identity. Matches.

## V2. Spot checks (CMP 122 II) and the b_0(c) check
- p. 379 (1.71) [V]: "rT … constructed for the coordinate system obtained by applying the Euclidean transformation r …; we take only the 2^d reflections for subsets of coordinates, and the d! permutations". Matches.
- p. 383 [V]: (1.77)–(1.78) and the KEY sentence ("The integrals with respect to the fields A_j in (2.21) [III], or (1.25) [IV], are estimated using the positivity properties of the quadratic forms, and we get the factors exp O(1)|Z_j ∩ Ω_j|"). Matches verbatim.
- [I]-check for C: CMP 109 p. 267 text layer: b_0(c) := "the bond of T^{(k)} contained in c and belonging to the corridor". c is the T^{(k+1)} bond joining two block centres, so b_0(c) lies on the axis between centres. A map r that preserves T^{(k+1)} (and so T^{(k)}, L odd) sends c to rc and b_0(c) to b_0(rc). So h and C = I − hLQ̃ are covariant (orientation sign absorbed by O_r). Q: CMP 109 p. 252–253 says the old averages were "not symmetric with respect to lattice Euclidean transformations" and the new contour set (0.4) is extended to be symmetric. CMP 109 p. 268–269 (2.16)–(2.18): r "a Euclidean symmetry of the torus T, preserving the torus T^{(k+1)}". So the [I] for G_1, Q, C is supported by page text; it is still not checked operator by operator.
- CMP 119 p. 258 (2.21) [V image, PDF 16]: T^{(j)}(Z_{j+1} ∩ X) has the same Schur form as (3.23), A_j on Z_{j+1} ∩ Ω_{j+1} ∩ X. Next sentence: "the quadratic form in the exponential couples only the fields A_j in the same component of Z_{j+1} ∩ Ω_{j+1}. The other terms … are included into the effective action into B-terms." So the NEW-2 precision is the component-block-diagonal part of the Schur complement S, compressed to X. The sweep (5.11) omits this. It does not change the bound: each diagonal block S_KK satisfies ⟨x, S_KKx⟩ = ⟨x, Sx⟩ ≥ c‖x‖² for x supported on K.

## V3. Grep for missed uses (claim 1)
Per-page text layers of CMP 119 PDF 18, 22–43 and CMP 122 II PDF 1–38, patterns "C*", "dμ", "covarian", "det(", "C(k)" OCR variants, "Gauss", "Δ".
- "C(k)" variants: 0 hits on any page. The OCR does not render C^{(k)}. So a text-layer grep cannot prove completeness; it rests on the image reads.
- "C*": PDF 29–32 only (pp. 271–274), all listed. "det(": PDF 31 only ((3.33)). "covarian": PDF 18, 29, 32, 33, 40, 41 and 122 II PDF 36, all listed (pp. 260, 271, 274, 275, 282, 283, 390). "Gauss": 119 PDF 36 (p. 278) and 122 II PDF 26 (p. 380), both listed. "dμ"-type hits on 119 PDF 22, 25, 39 and 122 II PDF 9, 27, 28, 32 are V(∂p), ∂_μ, and "endpoints": false positives.
- Lightly triaged pages (119 pp. 264–269, 277–281; 122 II pp. 370–378, 385–392): hit lines are "determined/determining set", δ_k, ∂p. No missed use.
Result: CONFIRMED. No use outside the author's list was found. Caveat: completeness rests on the author's image reads plus my 8 image spot checks, not on a full image re-read.

## V4. NEW-1 (claim 2)
- Group [V]: (3.39) r preserves T^{(k+1)}; (2.32) partition-preserving (sweep quote); (1.71) 2^d reflections and d! permutations; CMP 109 (2.17) "Euclidean symmetry r of the torus T, preserving the torus T^{(k+1)}". For E^{(j)} the group is all Euclidean maps of T^{(j)}, which is the block lattice of the step j−1 fluctuation lattice. So "never the full group of the fluctuation lattice" is correct.
- Derivation redone [P given I]. C_f = (A_exp − g²C*𝒱_SC)^{−1}, 𝒱_S = H_1*D_SH_1 + 𝒱_S^{(2)}. Each piece is covariant: A_exp, H_1, C, Q by Balaban (V2 check of b_0(c) and the symmetric averages); D_S(rU; r·d_S) = Σ_{p′}d_S(p′)H_{rp′}(rU) = O_rD_S(U; d_S)O_r^{−1}, since P_{rp}(rU) = P_p(U) (P_p does not depend on orientation) and O_r is orthogonal; the same for J_S and the vertex K_b. Products, adjoints, and inverses keep covariance. The sweep's §3.3 is correct. Gauge part (not written in the sweep): same computation with O_r → R(u) and d_S unchanged, since P_p is gauge invariant; also [P given I].
- Omission. SRULE NEW-1 has a part (c): Euclidean covariance of LOCALIZED terms and s-versions needs translation-covariant partitions. (2.29) claims covariance of E^{(j)}(X, z) under all maps of T^{(j)}, and (3.62) uses "translation invariance". A unit translation of T^{(j)} does not preserve the M-cube partition. This is C34 (CLOSURE_PLAN l. 205), not settled by §3.3. The sweep does not mention it.
Grade: CORRECTED (derivation holds; "NEW-1 SETTLED" must read "operator-level (E) supplied; localized-term covariance → C34; gauge part one line").

## V5. NEW-2 (claim 3)
- Redo [P]. A real symmetric on V_1 ⊕ V_2, A ≥ cI. S := A_11 − A_12A_22^{−1}A_21. Then ⟨x, Sx⟩ = min_y⟨(x, y), A(x, y)⟩ ≥ c(‖x‖² + ‖y_*‖²) ≥ c‖x‖². So S ≥ cI. With A = A^f ≥ ¾γ_exp, S^f ≥ ¾γ_exp. (2.21)'s component truncation (V2) keeps the bound. χ ≤ 1 only helps. ∫exp(−½⟨A, SA⟩)dA ≤ (8π/(3γ_exp))^{n/2}.
- Gap in the supply. The input "A^f ≥ ¾γ_exp" is A16_REPLACE2 4.3 Q1, proved for the single-scale A_Λ (WC_FULL 0.1 "L^kη = 1 near Λ", 5.2 "one scale"). The A_j precision is built from the Ω-sequence operator (CMP 119 p. 267: operators "determined by the sequence {Ω_j}"). So the sweep's "in either volume convention" holds only relative to Q1 in the Ω-geometry, which is NEW-3 [I].
Grade: CORRECTED (Schur step correct; supply is [P relative to Q1 on the Ω-sequence operator, NEW-3]).

## V6. NEW-3 and NEW-4 scoping (claim 4)
- NEW-3. Scoping outside the (M1) list is correct: it is the setting of every Q-item, not a new property. Owner is wrong. I-37 (CLOSURE_PLAN l. 143) is the Ω-setting VOLUME convention, narrower. WC_FULL §6 is the complex four-level chain, not multiscale. No file proves the multiscale walk expansion (CMP 99 Thms 3.7–3.10, cubes ML^jη on Ω_j∖Ω_{j+1}) for A_exp, 𝒲_S, the resolvents, or the Q1 lower bound. Existing cover is only the reading "WC uniform in the Ω-sequence [I]" (A16_REPLACE2 4.2; B20_LAMBDAJ 5.5, 6.2, 11). Needs its own CLOSURE_PLAN row, or I-37 widened.
- NEW-4. Scoping correct: (1.7)–(1.13), (1.20)–(1.21), (1.40), (1.77) concern the R-operation Wilson Hessian, not the fluctuation covariance. Owner citation is wrong: SOURCES_D2 §8 items 3, 5, 6 are about denominators (complex c, complex f) and positivity, not the Hessian bound. The relevant cover is SOURCES_D3: (B8)/(P5) the minimizer U_0 is unweighted, so (1.12)–(1.13) and (1.40) inverses are source-free; (P6) positivity with γ_0 → γ_0/2 (with D3_VERIFY's correction: relative to the local coupling). The sourced lower bounds (1.7)–(1.9), (1.21), (1.77) are not written in D3. Under D3's weight route (positive plaquette weight w = g^{−2}(1 + O(γ²r))), the |DHB|² part stays positive and the curvature part needs the sweep's g²r smallness. One line in D3 closes it.
Grade: CORRECTED (scoping right; owners: NEW-3 unowned, NEW-4 = SOURCES_D3 (B8), (P5), (P6), not D2 §8).

## V7. Verdict
(1) CONFIRMED. (2) CORRECTED. (3) CORRECTED. (4) CORRECTED.
(M1) status: CLOSED as a list (no missed use of the fluctuation covariance). Supply: NEW-1 operator-level (E) [P given I: covariance of G_1, Q, C, page-supported]; NEW-2 [P relative to Q1 on the Ω-sequence operator]. Open dependencies outside (M1): NEW-3 multiscale Ω-geometry (unowned; carries Q1 for NEW-2), NEW-1(c) localized-term covariance (C34), NEW-4 sourced R-operation Hessian (SOURCES_D3, one line).
Ledger. [V] images 300 dpi: CMP 119 pp. 258, 270, 272, 273, 274, 282; CMP 122 II pp. 379, 383. Text: CMP 109 pp. 252–253, 267–269; per-page text layers CMP 119 PDF 18, 22–43, CMP 122 II PDF 1–38. Scratch /tmp/m1v.
