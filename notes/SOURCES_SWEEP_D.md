# SOURCES_SWEEP_D — five class (a) items of OPEN_ITEMS_SWEEP §2 (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5). Unverified: no verifier has read this file. Ids follow IDS.md; S-nn labels are those of OPEN_ITEMS_SWEEP.md.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were outside every grep.
No existing file was edited. PLAN.md was not touched. sync.sh was not run.

Method. For every cited equation I rendered the page with `pdftoppm -r 150` into a fresh /tmp folder and read the image; the folder was deleted at the end. Pages read on images:
CMP 99 [14] (regular configurations) pp. 77, 80, 98, 99; CMP 99 [13] (propagators) pp. 394, 423, 424; CMP 98 p. 39; CMP 102 (variational, [15]) pp. 278, 287, 288, 289, 293, 305, 306, 307, 308, 309; CMP 109 pp. 262, 263, 264, 273, 277, 278, 281, 282, 290, 291, 292; CMP 119 pp. 262, 278.
Text-layer-only quotes are marked [text]. Grades: [V] read on the page image; [P] proved here from [V] inputs; [P-sketch] argument given, one step not written in full; [I] reading or inference; [R] reduced to Balaban's printed claim.

## S-66 (R-019): complex clauses of CMP 102 (189), (73), and the (172) ball

Question (OPEN_ITEMS_SWEEP §2 item 5). On CMP 102 pp. 307–309: do (189) and (73) hold for complex arguments (is a complex clause printed or forced by the proof)? Is the ball |B| < 2C_1ε_1 of (172) the domain on which Prop. 9 asserts analyticity of 𝓗? Grade the three readings. If one fails, confirm that the two-constants fallback (ω = 0.4097, |B| < ½C_1ε_1, rate × 0.59) covers every consumer of R-019.

Answer.
1. (73) at complex A′. Not printed. Its printed proof forces it. [P]
2. (189) at complex A′. Not printed. Its proof is not printed. No printed line forces it. Stays [I].
3. The (172) ball. Not printed as the domain. The reading is no longer needed: the narrow reading of (172) costs only a factor 4 in one C_1-free constant. [P]
4. Fallback. R-019 has one consumer, the Cauchy step of (H−). Case K4 of SOURCES_T2_HMINUSC §3.1 covers it without readings 2 and 3. [P, relative to that file]

Evidence.
- (73), p. 289 [V]: "|𝔇(A′; c, b)| ≤ O(1)C_3ε_3(L^jη)^{−d+1}e^{−(1/2)δ_0d(c_−, y)}, b ∈ B^j(y), y ∈ Λ_j." Prop. 3 (p. 289) states it "for A′ satisfying (43)", with no word "complex".
- D on a complex set, p. 287 [V]: "We know that it is an analytic function of A′ for g^c valued configurations A′ satisfying |A′|_{(−1)} < ε_3."
- The proof of (73), pp. 288–289 [V]. Step (69) is a Cauchy integral in τ of C_j at the complex points L^jη(A′ − HD(A′)) + τH(·, c′). It uses the C_2 bound (44) on a complex disc even at real A′. Balaban already applies (44) at g^c-valued arguments in (51)–(54) (p. 285–286 [text]: "We consider configurations A′, X with values in the complexified Lie algebra g^c"; (52) |C_j(…)| ≤ C_2(…)² < 4C_2ε_3²). Step (71) is the Neumann series of Lemma 2.1 [3]; it uses only the kernel bound (69). Step (72) cites Proposition 5 of [4] (CMP 98 p. 42); I did not read a complex clause there. A Cauchy estimate from (44), done exactly as in (69), gives (72) with C_3 replaced by O(1)C_2. H is the operator of the real background U_0; it does not depend on A′. So every step runs verbatim at complex A′ with |A′|_{(−1)} < ε_3, with the constant O(1)(C_2 + C_3). This is a [P] from [V] steps.
- (189), p. 308 [V]: "To prove an exponential decay we have to investigate more closely the kernel ((δ²/δA′²)V)(A′). … We do not perform these calculations here … let us formulate a final result only." (189) is stated "for supp 𝔄 ⊂ Δ̃(y′), A′ satisfying (77), y ∈ Λ_j". Prop. 4 (p. 293 [V]) gives (97)–(98) on the complexified set (77), and the Cauchy step (185)–(186) then gives (186) at complex A′. But (186) has no decay factor e^{−¼δ_0d(y,y′)}. The decay needs the unprinted second-derivative calculation. So the complex clause of (189) is neither printed nor forced. [I]
- (172), p. 305 [V]: "V′ satisfies |V′ − 1| < C_1ε_1, hence V′ = e^{iB′}, |B′| < 2C_1ε_1 on 𝔅_k, (172) for ε_1 sufficiently small." Same page: "We assume that C_1 is an absolute constant, hence B_5 is such a constant also." Pp. 306–307 [V]: "the function 𝓗(B) is an analytic function of g^c-valued configurations B defined on 𝔅_k and satisfying (172)." Prop. 9, p. 309 [V]: "It is an analytic function of B", with no domain. So the complex domain is "B satisfying (172)": either the narrow set {|e^{iB} − 1| < C_1ε_1} or the ball {|B| < 2C_1ε_1}. Which one is not printed. [I]
- Why the ball reading is not needed. (i) The narrow set contains {|B| < ½C_1ε_1} when C_1ε_1 ≤ 1 (SOURCES_T2_HMINUSC Lemma 3.2: |e^{iB} − 1| ≤ |B|e^{|B|} ≤ 0.8244·C_1ε_1). (ii) C_1 is free (p. 305). If one runs Sect. G with 4C_1 in place of C_1, the narrow set contains the ball |B| < 2C_1ε_1 when 2C_1ε_1 ≤ ½: |e^{iB} − 1| ≤ 2C_1ε_1·e^{1/2} = 3.297·C_1ε_1 < 4C_1ε_1 (python -I). The cost is B_5 → 4B_5 in (173). (iii) The consumer constant does not see C_1: SOURCES_T2_HMINUSC §3.1 gives c_N/C_1 = O(1)(B_0C_4 + C_2)·6B_1B_3, C_1-free; under the narrow reading (case K2) the Cauchy constant is 4c_N/C_1 and the rate is unchanged. So the ball reading changes one constant by the factor 4. [P]
- Support for the ball reading, not needed above: (75), p. 289 [V], poses the Sect. D equations for "|B| < 2dLC_1ε_1", a ball in B, and Prop. 6 (pp. 295–296, SOURCES_A17_A19_VERIFY V4) gives the complex clause for inputs "satisfying the same bounds as H_1B". The identity of the Sect. G variable B = (1/i)log V′ with the Sect. D variable B was not checked here. [I]
- Consumers of R-019. TRUST_LEDGER row R-019 "depends" column: "Cauchy step of (H−) ⇒ H-143 (M-A) ⇒ R-041". paper/remains.tex l. 129, 162 and SOURCES_T2_HMINUSC (tag [R-A19]) name the same single use. I found no other consumer (grep for "R-019" and "A19" over the folder, firewall files excluded).
- Fallback coverage. SOURCES_T2_HMINUSC §3.1 case K4 (narrow set, two-constants): kernel bound on |B| < ⅛C_1ε_1, rate × 0.5903, Cauchy constant 16c′_N/C_1, C_1-free. ω = (4/π)arctan(1/3) = 0.40967 (recomputed, python -I). K4 needs: the real (190), which rests on the real (189) (= R-005, already in the binding set); the complex operator bound (187) via Prop. 4 and Prop. 6 [printed complex]; (55) [printed complex]; (180) through "the same analyticity properties" (p. 306 [V], weak); and the two caveats of SOURCES_A17_A19_VERIFY V5 (a Hermitian norm on g^c; M must bound kernel entries, constant bookkeeping only). So K4 covers the single consumer without readings 2 and 3, at the cost of the factor 0.59 on the (H−) decay rate.
- Correction to the ledger wording. The ledger says "Fallback without the ball reading: … on |B| < ½C_1ε_1". The ½C_1ε_1 fallback is HMINUSC case K3, and K3 uses the ball reading. The fallback without the ball reading is K4, on |B| < ⅛C_1ε_1.

Grades. (73) complex: [P]. (189) complex: [I], avoidable. (172) ball: [I] as a reading, not needed [P]. Fallback covers every consumer: [P] relative to SOURCES_T2_HMINUSC §3.1 (unverified for K4's constant).

Proposed ledger status text (R-019). "REDUCED [verified round 7; sweep D 2026-10-28, unverified]: (73) at complex A′ is forced by its printed proof (CMP 102 pp. 285–289: the Cauchy steps (52), (54), (69) already evaluate C_j at complex points) [P]. The (172)-ball reading is not needed: the narrow set contains |B| < ½C_1ε_1, and HMINUSC case K2 costs a factor 4 in a C_1-free constant [P]. (189) at complex A′ stays [I] (not printed; its proof is not printed). Without it: HMINUSC case K4 (two-constants, ω = 0.4097, |B| < ⅛C_1ε_1, rate × 0.59), which needs only the real (189) (= R-005) and the printed complex bounds (187), (55). Only consumer: the (H−) Cauchy step (H-143 ⇒ R-041). Wording fix: the ½C_1ε_1 fallback (K3) uses the ball reading; the fallback without it is K4."

## S-60 (K-033, K-037, R-015): [14] of CMP 109, and "H_j with free boundary conditions" on CMP 109 p. 290

Question (OPEN_ITEMS_SWEEP §2). In [14] of CMP 109 (balaban/), does the construction of U_j(□_0, ·) use only data on □_0? On CMP 109 p. 290, does "H_j with free boundary conditions" mean the Z^4 operator?

Answer.
1. K-033 (Cube). Yes. [14] supplies only the domain sequence, the axial gauge, and the Landau gauge, all posed on Ω_0. The map U_j(□_0, ·) itself is the minimizer of [15] (CMP 102), whose action is a sum over plaquettes in Ω_0. The operators of [13] that enter are defined with Dirichlet boundary conditions on Ω_0. With Ω_0 = □_0, every input is data on □_0 (bonds with at least one end in □_0). [P]
2. K-037 (p. 290). Yes, as far as the printed text can say it. Three printed lines on pp. 290–292 place the replaced operator on ξZ^4. No sentence says "H_j on Z^4" verbatim. [P-sketch]

Evidence for 1.
- Reference list, CMP 109 p. 299 [text]: "[14] Balaban, T.: Spaces of regular gauge field configurations on a lattice and gauge fixing conditions. Commun. Math. Phys. 99, 75–102 (1985)" = balaban/1985_cmp99_regular_gauge_configurations. "[15]" = CMP 102, 277–309 (variational problem).
- CMP 109 p. 273 [V]: "We take the function U_j constructed for the cube □_0 = □̃^5 as in the condition (iv) in the definition of spaces U_j^c. Thus we construct a sequence of cubes {□_n}, n = 0, 1, …, k + 1, satisfying the conditions (1.3)–(1.6) [14] … For this sequence we construct the functions U_j … which we denote by U_j(□_0)." Same page: H_j, H_k "are given by (179), (180) [15]".
- CMP 109 p. 262 [V], condition (iv): "We consider X as Ω_0, and we construct the sequence {Ω_n} … of maximal possible domains satisfying the conditions (1.3)–(1.6) [14] … For this sequence … we construct the functions U_n(V) in the axial gauges".
- [14] p. 77 [V]: (1.3)–(1.6) define Ω_0 ⊃ Ω_1 ⊃ … ⊃ Ω_k ⊂ T_η; the regularity conditions (1.7)–(1.9) are imposed "for p ∈ Ω_j", "b ∈ Ω_j"; "If Ω ⊂ T_η, then we denote by Ω also the set of bonds ∪_{x∈Ω} st(x) = {bonds b ⊂ T_η: at least one end-point of b belongs to Ω}."
- [14] p. 78 [text]: the constraint U^j = V on Λ_j (1.13) and the axial gauge (1.15) live on 𝔅_k = ∪Λ_j ⊂ Ω_0.
- [14] p. 80 [V]: Landau condition (1.27) R(U_0)D*_{U_0}(1/i)log U′ = 0, where R(U_0) is "an orthogonal projection in this real Hilbert space", the space "L²(Ω_0, g) of functions on Ω_0".
- [13] = CMP 99, 389–434, p. 394 [V]: "For such Ω_0 we consider the operator Δ′_a with Dirichlet boundary conditions on ∂Ω_0 … The operators with the boundary conditions have a very important property. They depend on the configuration U restricted to Ω_0. … All operators we will consider will be defined by using Dirichlet boundary conditions on Ω_0." This closes the caveat that the [13] operators might reach outside Ω_0.
- [15] = CMP 102 p. 278 [V]: the space U_k({Ω_j}, ε_0) is of "configurations on Ω_0"; the action is (5) A(U) = Σ_{p⊂Ω_0} η^{d−4}[1 − Re tr U(∂p)]; the constraint V is on 𝔅_k.
- The one whole-torus device in [14], Sect. F, pp. 98–99 [V]: (1.131) sets Λ′_0 = T \ □_1, but the configuration is "U″_0 as equal to U′_0 on □̃, and equal to 1 outside □̃" (before (1.132)); Prop. 6 gives u "defined on □̃", and (1.138) "the operator R is determined by {□_j}". "The functions and derivatives above are defined without any external gauge field configuration (or the configuration is equal to 1)." So it adds no dependence on U outside □̃. It is used only to prove the regularity condition (3.35) for cubes □ ⊂ Ω_0, and p. 98 [V] assumes "□̃ ⊂ Ω_{k−1}".
- Margin. "U restricted to □_0" includes the bonds with one end in □_0 (the [14] convention, applied by CMP 109 to X). This is one lattice bond outside □_0, inside the one-layer collar of SOURCES_A15_LOC §6.0 (width c_k). No new margin.

Evidence for 2.
- p. 290 [V]: "If we replace H_j(□_0) by H_j with free boundary conditions, then the difference H_j(□_0) − H_j restricted to X × supp ζ̃_□, yields the factor B_0exp(−δ_0M(L^jη)^{−1}) … Next, we extend summations over y to the whole lattice Z^4. … We extend it to all X ∈ D_j^0, where D_j^0 is the class of localization domains constructed for the lattice ξZ^4."
- p. 291 [V], (4.39)–(4.40): "Replacing the functions H_j(□_0) by H_j and summing over all □′ in ξZ^4 yields the following expression … β_j(g_{j−1})⟨∂^ξH_j, ∂^ξH_j⟩ = β_j(g_{j−1})Δ_j, where Δ_j is given by the explicit formula (1.66) [10]", and (4.41) expands its momentum representation at p′ = 0. A sum over all □′ in ξZ^4 needs H_j on ξZ^4.
- p. 292 [V], (5.1): Π(b, b′) = lim_{T_1^{(j)} ↗ Z^4} δ²E^{(j)}(U_j(exp iB))/δB(b)δB(b′)|_{B=0}; (5.11) [text] sums over x ∈ Z^4.
- Word use. "free boundary conditions" occurs once in the local corpus (grep over balaban/*.txt). For a domain, Balaban writes "Dirichlet" (CMP 99 [13] p. 394 [V]; CMP 96 [text]). For the torus he writes "periodicity conditions" (CMP 96 [text], l. 798). H_j(□_0) is the Dirichlet object on □_0; "free" is the operator with no boundary, the whole-lattice operator.
- What remains [I]: the H_j of the p. 290 sentence is identified with the H_j of (4.39)–(4.40) by notation only (same symbol, same procedure, one paragraph apart).

Grades. K-033: [P]. K-037: [P-sketch].

Proposed ledger status text.
- K-033: "[P] (sweep D, unverified): [14] (CMP 99, 75–102) supplies the domain sequence (1.3)–(1.6), the axial gauge on 𝔅_k, and the Landau condition (1.27) with R(U_0) a projection in L²(Ω_0, g); U_n(V) is the [15] minimizer of Σ_{p⊂Ω_0} (CMP 102 (5)); [13]'s operators are Dirichlet on Ω_0 and 'depend on the configuration U restricted to Ω_0' (CMP 99 p. 394). With Ω_0 = □_0 all inputs are data on □_0 (bonds with ≥ 1 end in □_0, inside the K-035 collar). [14] Sect. F's whole-torus device sets U = 1 outside □̃."
- K-037: "[P-sketch] (sweep D, unverified): CMP 109 pp. 290–292 images: y-sum to Z^4; X-sum over D_j^0 of ξZ^4; (4.40) sum over all □′ in ξZ^4 giving β_jΔ_j; (5.1) Π = lim_{T↗Z^4}. 'Free' is used once; Balaban writes 'Dirichlet' for domains, 'periodicity' for the torus. Residue: the p. 290 H_j equals the (4.40) H_j by notation."
- R-015 residue sentence: "K-033 [P], K-037 [P-sketch] (sweep D)" in place of "K-033, K-037 are readings [I]".

## S-53 (R-006 N8): "absolute" on CMP 109 p. 263; k-uniformity of the CMP 102 constants C_2, C_4, B_0

Question (OPEN_ITEMS_SWEEP §2). Does "absolute" on CMP 109 p. 263 mean independent of j (as SOURCES_CTR_VERIFY C7 reads it) for every use in H0-red? Are the CMP 102 constants C_2, C_4, B_0 uniform in k on the printed pages? (SOURCES_CTR_RESIDUE_VERIFY C4: the p. 263 gloss is printed for α_0, α_1.)

Answer.
1. The p. 263 gloss "(i.e., constants independent of X and j)" is printed once, for α_0, α_1. C4 is correct. [V]
2. γ ("a positive, absolute γ", p. 263) is j-free by the quantifier order of Theorem 3 (p. 264), not by the gloss. [V]
3. The other uses of "absolute" in H0-red are in CMP 116. Their meaning is fixed by Balaban's own usage in two other papers: "absolute constant depending on d and L only". Such a constant is free of j, k, X, and the coupling history. So the word needs no reading. Whether each CMP 116 constant is in fact absolute is Balaban's claim, not a reading. [V for the meaning; R for the content]
4. C_2, C_4, B_0 are uniform in k on the printed pages. Each is printed as depending on d (and L) only. [V]

Evidence.
- Uses of "absolute" in H0-red (SOURCES_T2_H0_VERIFY 2.17 and 4.3 N8(i)): (u1) α_0, α_1, CMP 109 p. 263; (u2) γ, p. 263; (u3) C_1, C_2, q of CMP 116 (1.36), p. 9; (u4) C_3 of CMP 116 (1.39), p. 10; (u5) the log Z^{(k)} constant that defines ½E_0 (CMP 116 p. 21; = c_Z of SOURCES_CTR); (u6) the generic O(1)'s.
- (u1), CMP 109 p. 263 [V]: "We assume that the function E^{(j)}(X, g_{j−1}, U, J) is defined and analytic on the space U_j^c(X, α_0, α_1), with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j). … It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ."
- (u2), CMP 109 p. 264 [V], Theorem 3: "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then … The constant γ depends on all other constants." γ is chosen before k and none of "all other constants" carries an index. So γ is one number for all k.
- (u3)–(u6), meaning of the word. CMP 109, 116, 119 contain no gloss besides p. 263 (grep of the three text layers for "independent of k/j", "uniform in k/j", "depend(s/ing) on d and L": no hit). Balaban's usage elsewhere:
  - CMP 99 [13] p. 423 [V]: "constants O(1) we get depend only on B_0(ε) … so they are absolute constants depending on d and L only"; after Theorem 3.12: δ_0 "is a positive, absolute constant depending on d and L only".
  - CMP 102 p. 299 [text]: "where O(1) is an absolute constant depending on d and L only".
  So, in Balaban's usage, "absolute" = depends on d and L only. d, L are fixed before every scale. Hence "absolute" ⇒ independent of j, k, X, and the coupling history.
- What this does not prove. That the CMP 116 constants (u3)–(u6) are absolute is Balaban's statement. The word is no longer an interpretive gap; the claim behind it is [R] (Balaban's word), the same status as any printed but unproved bound.
- C_2. CMP 102 (44), p. 285 [text]: "The Proposition 4 of [4] implies … |C_j(L^jηA)| ≤ C_2(L^jη)²|A|²." [4] = CMP 98. CMP 98 p. 39 [V], end of Prop. 4: "The constants C_2, c_4 are independent of k, C_2 depends on d and c_4 depends on d and L."
- C_4. CMP 102 Prop. 4, p. 293 [V]: "The constants a_3, C_4 depend on d and L only."
- B_0. CMP 102 (46), p. 285 [text]: "the Theorem 3.12 from [5] implies |HB| ≤ B_0(L^jη)^{−1}|B|". [5] = CMP 99, 389–434. CMP 99 pp. 423–424 [V], after Theorem 3.12: "let us denote common, best possible constants on the right-hand sides of the inequalities for these operators, with all possible norms, either by B_0, or by B_0 with parameters indicating a dependence on Hölder norms. These constants also depend on d and L only, or on the indicated parameters additionally."
- Related CMP 102 constants: B_3 "depend[s] on d and L only" (Theorem 1, p. 279 [text]; p. 303–304 [text]: "B_3 depends on d and L only"). B_5 = 6B_1B_3C_1 (p. 305 [V]) is k-free because C_1 is "an absolute constant" (p. 305 [V]).
- Scope caveat. These constants are uniform in k under the hypotheses of the cited theorems (regularity (3.35)–(3.36) with α_0 small; M ≥ M_1). The k-uniformity of those hypotheses along the RG flow is R-018's other content, not touched here.

Grades. (u1) [V]; (u2) [V]; (u3)–(u6): meaning [V], content [R]; C_2, C_4, B_0 k-uniform: [V].

Proposed ledger status text.
- R-006, N8 item: replace "N8 readings [I] ("absolute" ⇒ j-free; SOURCES_T2_H0's K-009 scale invariance (not ledger row K-009); H0 C3, C15; R-018 k-uniformity of CMP 102 constants)" by "N8 (sweep D, unverified): 'absolute' = 'depending on d and L only' is Balaban's usage [V] (gloss for α_0, α_1 on CMP 109 p. 263; CMP 99 p. 423; CMP 102 p. 299); γ is j-free by Theorem 3's quantifier (p. 264) [V]; that the CMP 116 constants C_1, C_2, q, C_3, the log Z constant, and the O(1)'s are absolute is Balaban's claim [R]; the k-uniformity of C_2, C_4, B_0 is printed [V] (CMP 98 p. 39; CMP 102 p. 293; CMP 99 p. 424). Still [I]: SOURCES_T2_H0's scale-invariance item; H0 C3, C15."
- R-018: the "[I] k-uniformity of the CMP 102 constants C_2, C_4, B_0 (SOURCES_MA2_VERIFY l. 41)" becomes "[V] printed (sweep D)".

## S-58 (R-012): the "CMP 109 restrictions outside the file"; the OCR slip on CMP 119 p. 278

Question (OPEN_ITEMS_SWEEP §2). Locate the "CMP 109 restrictions outside the file" and check the OCR slip on CMP 119 p. 278 against the image.

Answer.
1. Location. The phrase comes from SOURCES_A11_CONST §10 item 5: "The restrictions 'from the paper [I]' on κ, M, ε_j, α_{0,j}, α_{1,j} (p. 262) are CMP 109 conditions; … their threshold forms are outside this file." The source sentence is CMP 119 p. 262. In CMP 109 the restrictions are announced by Theorem 3 (p. 264) and are spread over pp. 259–280. List L1–L12 below. [V/text, per line]
2. Classification. In CMP 109 each restriction is a condition on fixed numbers (no scale index). Nine are one-sided bounds of the A11 class (b) type. Three compare two constants that CMP 119 makes scale-dependent (L6, L7/L12, L9). Under CMP 119 (2.4), (2.28) these become conditions on the exponents p_0, q_0, q_1 and the prefactors A_0, C_0, C_1, which CMP 119 does not order. [P-sketch for the computation; the needed ordering is an unprinted convention, I]
3. A flag on L9. Read with the scale indices it carries in CMP 109 (α_0 of the level-(k+1) space against α_1 of the level-j target), L9 fails for long histories. CMP 119 must therefore use L9 at one scale. That is a reading [I]. I recommend that L9 not be called "non-blocking" until a reader settles it.
4. The OCR slip. Confirmed on the image: CMP 119 p. 278 reads "with the constant B_0 replaced by O(p_0³(g_k))"; the text layer reads "O(pl(gk))". The consequence (g_kO(p_0³(g_k)) small) is an upper bound on γ. Closed. [V]

Evidence for 1. CMP 119 p. 262 [V]: "At first, some of the restrictions on constants, e.g. on constants κ, M, ε_j, α_{0,j}, α_{1,j}, come from the paper [I]. We assume that all of them are satisfied here, and we will introduce some new restrictions also." CMP 109 p. 264 [V], Theorem 3: "The constants ε_0, ε_1, α_0, α_1 depend on M and satisfy numerous restrictions, which will become clear in the proof. The constant γ depends on all other constants." The printed restrictions:
- L1 p. 262 [V], (1.12): "with a sufficiently large constant B".
- L2 p. 263 [V], (1.18): "for M ≥ M(κ), γ sufficiently small".
- L3 p. 264 [V], Theorem 3: κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ; ε_0, ε_1, α_0, α_1 depend on M; γ last.
- L4 p. 259 [text]: |∂U_k(V) − 1| < ε_0η² "for ε_0 sufficiently small".
- L5 p. 266 [text], (2.9): the cut χ(|B′(b)| < ε_1), with the variant g_k/γ_k·ε_1.
- L6 p. 270 [text]: the extension holds for "some α′_0, α′_1 sufficiently small, but much bigger than α_0, α_1 there".
- L7 p. 271 [text] and p. 273 [V]: "there exists a constant α_2, depending on α_0 and on some absolute constants" ((3.14)); "We assume also that ε_1 is so small that H_j(B(t)) satisfies (3.14) with 1/3α_2 on the right-hand side."
- L8 p. 275 [text]: "We assume that α_0, α_1 are chosen so that Mα_0, Mα_1 are still small."
- L9 p. 277 [V], after (3.37): "Assume now that B_3²O(1)Mα_0 < 1/2α_1".
- L10 p. 278 [V]: after (3.41) "for α_1 sufficiently small, e.g. O(1)Mα_1 ≤ β"; after (3.43) "We assume that (4B_3²O(1)M)²α_0 ≤ β".
- L11 p. 279 [text], Lemma 4: "for α_0, α_1, α_2, α_3 sufficiently small and satisfying all the restrictions"; |B′| < α_3.
- L12 p. 280 [text]: the t_□-derivative "yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant" (this is R-014).
- Sect. 4–5 also use M large against δ_0 (factors exp(−δ_0M(L^jη)^{−1}), p. 282 [V]) and δ_1 = ½min{δ_0, κM^{−1}} ((5.10), p. 293 [text]); one-sided, of class (b).

Evidence for 2. CMP 119 (2.28), p. 259 [text]: α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, "where q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers". CMP 119 l. 70, 158 [text]: ε_0 = g_0p_0(g_0), p_0(g) = A_0(log g^{−2})^{p_0}. Write ℓ = log g^{−2}. At one scale:
- L9: α_{0,j}/α_{1,j} = (C_0/C_1)ℓ^{q_0 − q_1} < 1/(2B_3²O(1)M) for all small g iff q_0 < q_1, or q_0 = q_1 and C_1 > 2B_3²O(1)MC_0.
- L7, L12: ε_j/α_{2,j} small, with α_2 a function of α_0 (L7). If α_{2,j} ∝ α_{0,j}, this needs p_0 < q_0, or p_0 = q_0 and C_0/A_0 large. The form of α_2(α_0) is not printed beyond "depending on α_0 and on some absolute constants". [I]
- L6: α′_{i,j} ≫ α_{i,j}: same type.
None of these orderings is printed in CMP 119. Each is a choice of exponents or prefactors made before γ; it looks admissible (C_0, C_1, A_0 are "sufficiently large"), but I did not place it in the canon order. [I, convention]

Evidence for 3. On p. 277 [V], U lies in U^c_{k+1}(□_0, (1 + 2β)α_0, (1 + β)α_1, α_0) (the level-(k+1) space), u_j obeys |u_j − 1| < B_3²O(1)Mα_0 (3.37), and the target is U_j^c(X, α_0, α_1) (3.36). With CMP 119's scale indices, L9 reads B_3²O(1)Mα_{0,k+1} < ½α_{1,j}. Then α_{0,k+1}/α_{1,j} = (C_0/C_1)(g_{k+1}/g_j)ℓ_{k+1}^{q_0}ℓ_j^{−q_1}. In the continuum limit g_0 → 0 while g_K stays near γ; for j = 0, k + 1 = K the ratio is about (C_0/C_1)γℓ_γ^{q_0}/(g_0ℓ_0^{q_1}) → ∞. So the indexed form cannot hold for all histories, and CMP 119 must apply L9 at one scale (or with a scale factor not visible on p. 277). Which form CMP 119 uses is not printed. [P-sketch for the failure; I for CMP 119's form]

Evidence for 4. CMP 119 p. 278 [V]: "The terms of the sum above satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0³(g_k)). Of course the integration with respect to t preserves the form of the representation, and the multiplication by g_k yields small bounds." Text layer l. 1844 [text]: "O(pl(gk))". This matches SOURCES_A11_CONST_VERIFY §12. With p_0(g) = A_0ℓ^{p_0}, g·p_0(g)³ = A_0³gℓ^{3p_0} → 0 as g → 0, so the requirement is an upper bound on γ (SOURCES_A11_CONST S2 with p = 3p_0, S9).

Grades. Location [V/text]; one-scale classification [P-sketch] with the orderings [I]; L9 indexed-form failure [P-sketch]; OCR slip [V].

Proposed ledger status text (R-012, last sentences). Replace "Remaining non-blocking: CMP 109 restrictions outside the file; OCR slip p. 278." by "OCR slip p. 278 closed [V] (image: O(p_0³(g_k)); sweep D). CMP 109 restrictions located (sweep D §S-58, L1–L12, CMP 109 pp. 259–280): one-sided bounds of class (b), except three ratio conditions (p. 270 α′ ≫ α; pp. 273, 280 ε_1 ≪ α_2; p. 277 B_3²O(1)Mα_0 < ½α_1). Under CMP 119 (2.4), (2.28) these need an unprinted ordering of p_0, q_0, q_1 (or of A_0, C_0, C_1) [I, convention, not yet placed in the canon]. The p. 277 condition must hold at one scale; its scale-indexed form α_{0,k+1} vs α_{1,j} fails for long histories [P-sketch]; CMP 119's form is a reading [I]. Open, small (one reading + one convention)."

## S-57 (R-010 R4): the (4.5) tail constant of CMP 109 Sect. 4

Question (OPEN_ITEMS_SWEEP §2). Compute or bound the (4.5) tail constant from the printed CMP 109 Sect. 4 lines.

Answer.
1. The constant is printed. On the image of p. 282, (4.5) carries the prefactor (2n²B_3α_2^{−1})^n. The text layer drops it. SOURCES_A10_LOWER R4 and SOURCES_A10_LOWER_VERIFY ("no derivative constant printed", from the text layer) are CORRECTED. [V]
2. Tail constant in the (1.24) form (field power (L^jη)^5). For n = 1, …, 4 and eδ_0M ≥ 4:
   K_tail = Σ_{n=1}^{4} (1/n!)(2^n − 1)(2n²c_BB_3/α_2)^n((5 − n)/(eδ_0M))^{5−n} ≤ 6.32·(32c_BB_3/α_2)^4/(δ_0M),
   where c_B is the O(1) of |B| < O(1)L^jη (p. 277) and the last step assumes 32c_BB_3 ≥ α_2. It depends on B_3, α_2 (hence α_0), c_B, δ_0, M only, so it is fixed before ε_1 and γ. [P]
3. The printed prefactor agrees with a rederivation from (4.3)–(4.4): the Cauchy estimates give at most (n²B_3/α_2)^n. [P-sketch]

Evidence.
- p. 281 [V], (4.1): ⟨δ^nE^{(j)}(X, U_j(□_0, 1))/δB^n, ⊗^nB⟩ = Σ_{m=0}^{n} C(n, m)⟨δ^nE^{(j)}/δB^n, (⊗^m ζ̃_□B) ⊗ (⊗^{n−m}(1 − ζ̃_□)B)⟩; "Terms with m < n are exponentially small in L^jη."
- p. 281 [V], (4.3): the n-th derivative is a sum over partitions {1, …, n} = N(1) ∪ … ∪ N(r) of Π_{p=1}^{r}(1/2πi)∮dτ_p/τ_p² E^{(j)}(X, exp iξΣ_pτ_p⟨δ^{n(p)}H_j(□_0, 0)/δB^{n(p)}, ⊗_{i∈N(p)}B_i⟩); (4.4): E^{(j)}(X, exp iξA) is analytic for max{|A|_X, |P_1(□_0)A|_X, |∇^ξA|_X, |Δ^ξA|_X} < α_2.
- p. 282 [V]: "The norm in (4.4) of the expression ⟨δ^{n(p)}H_j(□_0, 0)/δB^{n(p)}, ⊗_{i∈N(p)}B_i⟩ can be estimated by B_3Π_{i∈N(p)}|B_i|, and if one of the functions B_i is localized outside the domain X, then we have the additional exponential factor exp(−δ_0dist^{(ξ)}(X, supp B_i))." Then (4.5):
  |⟨δ^nE^{(j)}(X, U_j(□_0, 1))/δB^n, (⊗^m ζ̃_□B) ⊗ (⊗^{n−m}(1 − ζ̃_□)B)⟩| ≤ (2n²B_3(1/α_2))^n E_0exp(−κd_j(X))exp(−δ_0dist^{(ξ)}(X, supp(1 − ζ̃_□)))|ζ̃_□B|^m|(1 − ζ̃_□)B|^{n−m}.
  "The distance in the second exponential is bounded from below by M(L^jη)^{−1}, hence we get the exponential factor exp(−δ_0M(L^jη)^{−1})."
- Exponent labels. The image has |ζ̃B|^m|(1 − ζ̃)B|^{n−m}, matching (4.1). SOURCES_A10_LOWER l. 33 has m and n − m swapped. Harmless: both factors are bounded by |B|.
- p. 277 [V], (3.34): E^{(j)}(X, U_j(□_0, exp iB)) = Σ_{n=0}^{4}(1/n!)⟨δ^nE^{(j)}(X, U_j(□_0, 1))/δB^n, ⊗^nB⟩ + (fifth-order remainder); after (3.34): "By the definition of B and by the inequalities (3.32) we have |B| < O(1)L^jη". Call that O(1) c_B.
- Derivation of 2 [P]. Fix n ∈ {1, …, 4} and x := L^jη ≤ 1. The tail of order n is (1/n!)Σ_{m<n}C(n, m)(…). Σ_{m<n}C(n, m) = 2^n − 1. By (4.5) and |ζ̃B|, |(1 − ζ̃)B| ≤ |B| ≤ c_Bx (0 ≤ ζ̃ ≤ 1), each term is ≤ (2n²B_3/α_2)^n E_0e^{−κd_j(X)}e^{−δ_0M/x}(c_Bx)^n. For 0 < x and n < 5, x^ne^{−δ_0M/x} ≤ x^5·((5 − n)/(eδ_0M))^{5−n} (the maximum of x^{−s}e^{−a/x} is (s/(ea))^s). So the order-n tail is ≤ (1/n!)(2^n − 1)(2n²c_BB_3/α_2)^n((5 − n)/(eδ_0M))^{5−n}·E_0e^{−κd_j(X)}x^5. Summing over n gives the first expression. For eδ_0M ≥ 4, each factor ((5 − n)/(eδ_0M))^{5−n} ≤ 4/(eδ_0M) (checked for n = 1, …, 4: the binding case n = 2 needs eδ_0M ≥ 2.60; python -I). With 2n²c_BB_3/α_2 ≤ b := 32c_BB_3/α_2 and b ≥ 1, (…)^n ≤ b^4. Σ_{n=1}^{4}(2^n − 1)/n! = 4.2917. So K_tail ≤ 4.2917·(4/e)·b^4/(δ_0M) = 6.315·b^4/(δ_0M).
- Rederivation of the printed prefactor [P-sketch]. In (4.3), for a partition into r blocks, take Cauchy radii r_p := α_2/(r·B_3Π_{i∈N(p)}|B_i|). Then |Σ_pτ_p⟨…⟩| ≤ α_2 on the circles, so the argument stays in (4.4), where |E^{(j)}| ≤ E_0e^{−κd_j(X)} by (1.18) (Balaban's (3.13)–(3.14) [R]). The product of the r Cauchy factors is Π_p 1/r_p = (rB_3/α_2)^rΠ_i|B_i|. With r ≤ n, nB_3 ≥ α_2, and at most n^n set partitions (Bell number B_n ≤ n^n), the sum is ≤ (n²B_3/α_2)^nΠ_i|B_i|. Balaban's (2n²B_3/α_2)^n is larger by 2^n, a margin (for example for the strict inequality on the circles). The decay factor comes from the block that contains a (1 − ζ̃)B factor, by the p. 282 sentence above.
- Comparison with the old guess. SOURCES_A10_LOWER l. 62 guessed K_tail = (O(1)B_3α_1/α_2)^n((5 − n)/(eδ_0M))^{5−n}. The printed form has 2n² in place of O(1)α_1, and the field factor is c_BL^jη, not α_1. The guess is CORRECTED. It is not load-bearing: R-010 needs only a finite constant fixed before ε_1 (R1).

Grades. Printed constant [V]; K_tail bound [P] given (4.5), (3.34), and |B| < c_BL^jη [all V]; rederivation of the printed prefactor [P-sketch].

Proposed ledger status text (R-010, residue R4). Replace "R4 (4.5) tail constant [I]" by "R4 closed (sweep D, unverified): the (4.5) prefactor is printed, (2n²B_3α_2^{−1})^n (CMP 109 p. 282 image; the text layer drops it). In the (1.24) form, K_tail = Σ_{n=1}^{4}(1/n!)(2^n − 1)(2n²c_BB_3/α_2)^n((5 − n)/(eδ_0M))^{5−n} ≤ 6.32(32c_BB_3/α_2)^4/(δ_0M) for eδ_0M ≥ 4 (c_B: |B| < c_BL^jη, p. 277) [P]; fixed before ε_1. SOURCES_A10_LOWER's K_tail form (with α_1) is CORRECTED."

## Summary

| item | ledger ids | result | grade | proposed status in one line |
|---|---|---|---|---|
| S-66 | R-019 | (73) complex forced by its proof; ball reading not needed (factor 4, C_1-free); (189) complex stays a reading; fallback K4 covers the single consumer | (73) [P]; ball [P] not needed; (189) [I]; fallback [P] | reduced to one avoidable reading, (189) at complex A′ |
| S-60 | K-033, K-037, R-015 | [14] + [13] + [15] use only data on Ω_0 = □_0; p. 290 H_j is the ξZ^4 operator by pp. 290–292 | K-033 [P]; K-037 [P-sketch] | K-033 [P], K-037 [P-sketch] |
| S-53 | R-006 N8, R-018 | "absolute" = "depending on d and L only" in Balaban's usage; γ j-free by Theorem 3; C_2, C_4, B_0 printed k-free | [V] meaning; [R] content of CMP 116 constants; [V] C_2, C_4, B_0 | N8(i) moves from [I] to [V] + [R]; R-018's k-uniformity [V] |
| S-58 | R-012 | restrictions located (L1–L12); three ratio conditions need an unprinted exponent ordering; the indexed form of p. 277 fails for long histories; OCR slip confirmed | location [V]; ordering [I]; L9 failure [P-sketch]; slip [V] | slip closed; "non-blocking" → "open, small" |
| S-57 | R-010 R4 | (4.5) prefactor (2n²B_3/α_2)^n is printed; K_tail ≤ 6.32(32c_BB_3/α_2)^4/(δ_0M) | [V] constant; [P] bound | R4 closed |

Corrections to earlier files found here (no file edited): SOURCES_A10_LOWER l. 62, 102 and SOURCES_A10_LOWER_VERIFY l. 21 ("no derivative constant printed": it is printed); SOURCES_A10_LOWER l. 33 (m and n − m swapped); TRUST_LEDGER R-019 fallback wording (½C_1ε_1 is case K3, which uses the ball reading).
Follow-up suggested: one reader for S-58 item 3 (which form of CMP 109 p. 277's α_0 : α_1 condition CMP 119 uses) and a canon placement of the p_0, q_0, q_1 ordering.
