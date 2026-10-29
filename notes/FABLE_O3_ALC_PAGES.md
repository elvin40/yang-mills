IDs in this file follow IDS.md (2026-10-28 scheme). Item labels A-05, B-01, B-08, B-17, D-01, D-04, D-07, D-10 refer to FABLE_O3_ALC_VERIFY.md and FABLE_A25_A26_H1_VERIFY.md.
# FABLE_O3_ALC_PAGES — page check of the "[I: source not checked]" items in FABLE_O3_ALC_VERIFY and FABLE_A25_A26_H1_VERIFY

Date: 2026-10-29. Type: verification (page reading). Runner: Opus, local session.
Files written: this file only. No existing file edited. PLAN.md not touched. sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md not opened.
Method: every page below was rendered with pdftoppm -r 150 into a fresh /tmp folder and read as an image. The folder was deleted after use. The .txt layers were used only to find page numbers and reference lists.
Pages read (printed numbers): CMP 98 pp. 19–26, 29–32, 35–37; CMP 99 pp. 393–394, 418; CMP 109 pp. 266–267, 270; CMP 122 II pp. 355–360, 379–381.
Reference keys checked in the reference lists: in CMP 98, [2] = CMP 95 (Propagators I). In CMP 99, [5] = CMP 98 (Harvard preprint). In CMP 109, [12] = CMP 98, [13] = CMP 99, [15] = CMP 102 (variational problem).
Grades: [V] = read on the page image, with page and line position. CORRECTED = the page differs from the file's claim; the printed content is given. [I] = still not settled by the page.

## 1. Key item: CMP 98 pp. 24–26, and the claim "(45) is the only unitary step" (B-08, B-17, FABLE_O3_ALC B5(i))

1.1 What p. 24 prints [V].
- Covariance proof, p. 24, lines 7–12: "U^u(Γ_{c,x})U^u(c)^{−1} = u(c−)U(Γ_{c,x})U(c)^{−1}u^{−1}(c−); thus the matrices … are unitarily equivalent, their eigenvalues are equal, and by the definition (22) their logarithms are unitarily equivalent with the same unitary operator u(c−)."
- Setting: p. 23, line above (42): "Let U be a gauge field configuration with values in U(N)." Prop. 1 (p. 26, (51)) is stated for "every configuration V satisfying (44)". So the configuration is unitary throughout.
- Axial gauge, p. 24, lines 20–28: contours Γ_{y,x}; v_0 with V_0(Γ_{y,x}) = 1, "v_0(x) = v_0(y)V(Γ_{y,x})".
- (45), p. 24: |V_0(∂p) − 1| = |V(∂p) − 1| < α_0, |V̄(∂p′) − 1| = |V̄_0(∂p′) − 1|.
- Last line of p. 24 to line 1 of p. 25: "The conditions V_0(Γ_{y,x}) = 1 imply V_0(x, x + e_1) = 1, |V_0(x, x + e_2) − 1| < |x_1 − y_1|α_0, …, |V_0(x, x + e_μ) − 1| < (|x_1 − y_1| + … + |x_{μ−1} − y_{μ−1}|)α_0". No mechanism is printed.

1.2 What pp. 25–26 print [V].
- (46): Δ(p′) = B(y_0) ∪ B(y_1) ∪ B(y_2) ∪ B(y).
- p. 25, lines 3–5: "for b ⊂ Δ(p′) we have |V_{0,b} − 1| < |b_− − y|α_0 ≤ dLα_0, hence V_{0,b} = e^{iA_b} and |A_b| < 2|b_− − y|α_0 ≤ 2dLα_0."
- p. 25, first unnumbered display pair: |V_0(Γ_{c,x}) − 1| ≤ Σ_{b⊂Γ_{c,x}}|V_{0,b} − 1| < |Γ_{c,x}|dLα_0 < (2d + 1)LdLα_0 = O(1)L²α_0, and |V_0(Γ_{c,x}) − 1 − iA(Γ_{c,x})| ≤ ½(|A|(Γ_{c,x}))² < O(1)(L²α_0)².
- Then the (21)-log bound, (31), the display for V̄_{0,c} with exp[iA(c) + O((L²α_0)²)], (47).
- (48): Σ_{c⊂∂p′}Σ_{x∈B(c−)}L^{−d}A(Γ_{c,x}) = Σ_{x∈B(y_0)}L^{−d}A(∂(p′)_x) = Σ_{x∈B(y_0)}L^{−d}Σ_{p⊂(p′)_x}A(∂p). A linear identity in the A's.
- (49): for p ⊂ Δ(p′), |V_0(∂p) − 1 − iA(∂p)| < ½(|A|(∂p))² < ½(8dLα_0)² = O(1)L²α_0².
- (50): |V̄_0(∂p′) − 1| < Σ_xL^{−d}Σ_p|A(∂p)| + O(1)(L²α_0)² < Σ_xL^{−d}Σ_p|V_0(∂p) − 1| + O(1)(L²α_0)² < L²α_0 + O(1)(L²α_0)².
- p. 26: Prop. 1, (51), "The constant C_0 depends on d and c′_2 depends on d and L." No numbers. (52)–(53) induction; Prop. 2 with c_2 = min{1/(3C_0), ½c′_2}; (54) |Ū^k(∂p) − 1| < α_0 + 2C_0α_0² < 2α_0; locality "enough to assume (52) for p ⊂ B^k(x) ∪ B^k(y) ∪ B^k(z) ∪ B^k(w)".

1.3 Answer to the question. CORRECTED (narrow claim [V]; broad claim false).
- Narrow claim [V]. The transformation v_0 appears in the printed proof only in (45). Both equalities of (45) use |v_0| = 1. The first conjugates a plaquette by v_0(x_p). The second undoes the gauge on the block plaquette through the covariance (11), whose proof on p. 24 uses unitary equivalence and the spectral log (22).
- Broad claim false. The proof uses unitarity of the link variables V_{0,b} (norm 1) in four more printed steps. None of them involves v_0:
  (u1) the ladder bound, end of p. 24 to p. 25 line 1: a product of plaquette holonomies is bounded by the sum of the defects, which needs norm-1 factors;
  (u2) |V_0(Γ_{c,x}) − 1| ≤ Σ_b|V_{0,b} − 1|, p. 25: the same telescoping with norm-1 factors;
  (u3) |V_0(Γ_{c,x}) − 1 − iA(Γ_{c,x})| ≤ ½(|A|(Γ_{c,x}))², p. 25: this needs Hermitian A_b;
  (u4) (49), the same bound on plaquettes, needs Hermitian A_b.
  The step |A_b| < 2|V_{0,b} − 1| is not unitary-specific. The constant 2 is that of (26), and p. 22 states (26) "for arbitrary complex matrices X" with |X − 1| ≤ ½. (31) and the (21)-log are complex-valid by p. 21 ("both functions are analytic functions of complex matrices X") and p. 22 ((28) is analytic in uX, vY). (48) is linear and holds in 𝔤^c.
- Consequence for FABLE_O3_ALC Task B. The proof in B2 tracks every unitary step, not only (45). Step (2) replaces the first equality of (45). Step (6) with (T3) replaces the second equality and the p. 24 covariance proof. Step (3) with (T4) replaces (u1). Step (4) with (T4) and e^S − 1 − S ≤ ½S²e^S replaces (u2) and (u3). Step (5) ("(49) as in (4)") replaces (u4). So B2 stands as [P rel. CMP 98 pp. 24–26 [V]]. Two sentences are wrong as written and must change:
  - FABLE_O3_ALC B5(i): "the only unitary-specific step of Balaban's proof is (45)". Replace by: "v_0 enters only (45); unitarity of the links enters also (u1)–(u4) (ladder, contour bound, the two second-order bounds); B2 steps (3)–(5) carry each of them with (T4) and the e^S remainder."
  - FABLE_O3_ALC_VERIFY B-08, B-17, C.3: the page item "is (45) the only step that uses |v_0| = 1" is answered: yes for v_0; no for unitarity. The κ-cost of (u1)–(u4) is not an Ad-type cost. It is the 1.14/1.3 factors of (T4) and the e^S factor, which B2 already puts into C_0^c and c′_2^c.
- Still [I]: the factor 8 in C_0^c ≤ 8C_0, c′_2^c ≥ c′_2/8. C_0 and c′_2 are not printed (p. 26). The VERIFY's fix stands: define C_0^c, c′_2^c as the constants of the complex Prop. 1 (independent slots).

1.4 The other B-01 page facts [V].
- (15), p. 19: Ū_c = exp[iΣ_{x∈B(c−)}L^{−d}(1/i)log U(Γ_{c,x})U(c)^{−1}]U(c), with Γ_{c,x} := Γ_{c−,x} ∪ [x, x(c)] ∪ Γ_{x(c),c+}. (14) has weights L^{−(d+1)} and is "the linear averaging operation (1.8) defined in [2]"; [2] = CMP 95.
- p. 20: G^c defined as the image of exp on 𝔤^c, a subgroup of GL(ℂ, N); "We will need only a neighborhood of G in this subgroup."
- (19)–(20) operator norm and |XY| ≤ |X||Y|; (21) series log for |X − 1| < 1; (22)–(23) spectral log "for unitary matrices"; (24)–(25) |log U| ≤ (π/2)|U − 1|; (26)–(27) complex X, |X − 1| ≤ ½; (28) analytic for |uX|, |vY| < 1/8; (29) BCH; (31) |Z − X − Y| ≤ 2|X||Y| for |X|, |Y| ≤ c_1. All pp. 21–22.
- (42), p. 23; (43), p. 24 (k-th order average); locality, p. 24 line 6.
- The (15)/(43) reading of U(c) as the product of the L finer links: still [I]. No line on pp. 19–26 defines U(c) on the coarse bond. p. 25 writes exp[iA(c) + O((L²α_0)²)] and uses A(c) inside (48); this agrees with the product reading but does not define it.

## 2. CMP 122 II pp. 355–360, 379–381 (A-05, A-16, the G^c sentence)

2.1 Transcribed lines [V].
- (1.1), p. 356: χ_kχ_{k,Λ}δ_{G_0}(V′_k)χ exp[−g_k^{−2}A(ζ_0, U_{k,Z}(V′_kV_Λ))] · χ_{h,1/2}∫dV′⌈_{B_0}δ_{T_0}(V′)χ′ exp A″_k / ∫dV′⌈_Λδ_{G_0}(V′)χ exp[−g_k^{−2}A(ζ_0, U_{k,Z}(V′V_Λ))]. The denominator matches A-02. Note: the printed weight is g_k^{−2}ζ_0; "w_kζ_0" in FABLE A1 is FABLE's sourced notation, not Balaban's.
- p. 356 bottom: the denominator = exp[−g_k^{−2}A(ζ_0, U_0) + (−½d(g)log g_k^{−2} + log σ_0)|Λ^{(k)}∖G_0|] · ∫dB′⌈_Λσ(g_kB′)δ_{G_0}(B′)χ({|B′| < M_0g_k^{−1}ε_k}) ·
- (1.2), p. 357: exp[−½⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ − g_k^{−1}⟨DH_{1,k}B′, ζ_0η^{−2}Im ∂U_0⟩ − g_k^{−2}V(ζ_0, g_kH_{1,k}B′)]. "V is at least of third order … It can be estimated by O(g_k^{1−β})|Λ|."
- (1.3)–(1.5), p. 357: U_0 minimizes A on Z with the M_{B_k} constraint; ⟨δA, J_0⟩ = 0, so J_0 = 0 on Λ; (1.5) moves the linear term to the factor (1 − ζ_0).
- (1.6), p. 357: g_k^{−1}B_3M_0A_0p_0(g_k)exp(−δ dist(Ω_k, Λ))3ε_k|Λ| < 3B_3M_0A_0²p_0²(g_k)exp(−R_k)(100M)^4. "Λ is contained in a cube of the size 100M."
- p. 357 bottom: U_0 = exp iξA_0 on Z, |A_0|, |∇^ηA_0| < O(1)M^6R_kε_k; expansion to first order in A_0 (Sect. B [13]); replacing the minimizer and ζ_0 changes the form by O(exp(−R_k)).
- (1.7), p. 358: ⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ ≥ γ_0‖∂B′‖² − O(1)(M^6R_kε_k + exp(−R_k))‖B′‖², from "(1.67) [10]".
- (1.8), p. 358: Σ_{b∈Λ}|B′(b)|² ≤ d(100M)^{d+1}Σ_{p∈Λ}|(∂B′)(p)|², "by the same simple argument as in the proof of Lemma 2.4 in [11]".
- (1.9), p. 358: ≥ γ_0/(2d(100M)^5)‖B′‖² "for g_k sufficiently small"; "holds for U_0 in an arbitrary gauge".
- (1.10)–(1.11), p. 358: (denominator)^{−1} = exp[+g_k^{−2}A(ζ_0, U_0) + I(U_0) − E_k(Λ)], E_k(Λ) = (−½d(g)log g_k^{−2} + log σ_0)|Λ^{(k)}∖G_0|; "the analytically extended I(U_0) satisfies |I(U_0)| < O(1)log M|Λ| < O(1)M^5."
- (1.12)–(1.13), p. 359: the critical-point equation; "By the inequality (1.9) the operator P_0H*_{1,k}Δ_1H_{1,k}P_0 is positive, hence invertible …, and the inverse is bounded by γ_0^{−1}2d(100M)^5." (1.14)–(1.15): the split of the numerator's Wilson term.
- (1.16)–(1.19), p. 360: localization of U″_k; "The argument of the function H″_{k,Z} has a support in a layer of width 2M_1 at the boundary ∂Z, and it can be bounded by 44d²ε_k"; the extra terms carry "exp(−(1/2)δMR_k). It suppresses all powers of log g_k^{−2}, and all powers of M."
- (1.71)–(1.72), p. 379; the first-order bound "O(1)B_3²A_1²p_1²(g_k)|B_0|(α_{0,k} + α_{1,k})", p. 379.
- (1.73)–(1.75), p. 380: |T′_k(X,(U,J))F| ≤ (T′_k(X,(U,0))1)sup e^{|σ|}|F|; |T′_k(X,(U,J))1| ≥ (T′_k(X,(U,0))1)e^{−2sup|σ|}; |(T′_k(X,(U,J))1)^{−1}T′_k(X,(U,J))F| ≤ e^{3sup|σ|}sup|F|. "T′_k(X,(U,0))1 is obviously positive, although it may be very small, hence T′_k(X,(U,J))1 ≠ 0." The large-field factors on pp. 380–381 agree with A2.
So every line that A-05 listed as "not transcribed elsewhere" ((1.2)'s exponent, (1.4)–(1.6), (1.12), (1.14)–(1.19)) is now [V]. FABLE_O3_ALC A2 transcribes all of them correctly.

2.2 The (R-cden) reading [V]. p. 358 prints: "This integral is in the denominator of (1.1), hence we are interested only in a lower bound, which follows from the boundedness of the quadratic form. The integral is bounded from below by exp(−O(1)|Λ|) = exp(−O(M^4)). In fact, we need such a bound for the integral extended analytically on G^c-valued configurations U." Then (1.10)–(1.11) follow with "Thus we have". No mechanism for the complex case is printed. FABLE's reading is correct.

2.3 Is the G^c sentence used for (1.7) only? CORRECTED.
- Printed text, p. 358: "We construct such an extension replacing the variables V_k in the function U_0 by the averages M^k(U) for U ∈ U^c_k(Z, α_{0,k}, α_{1,k}). The expressions in the integral are analytic functions of U, and all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}). This is an unessential change; it may result only in stronger restrictions on g_k, or γ."
- The scope of the sentence is "all the bounds above". On pp. 357–358 that is: the V-term estimate O(g_k^{1−β})|Λ|; (1.4)–(1.5) (by analytic continuation of the identity); (1.6); the A_0 bound |A_0|, |∇^ηA_0| < O(1)M^6R_kε_k; (1.7); and through them (1.9).
- FABLE_O3_ALC A3 uses the sentence in three places, not one:
  (g1) (1.7) on the G^c class, in Step 1. This is the use the VERIFY names.
  (g2) the A_0 bound with ε_k → O(α_k), in the definition a_k := O(1)M^6R_k(ε_k + α_k). A3 cites "the p. 357 bound for A_0 with Balaban's α-replacement, p. 358". So FABLE uses it, and says so.
  (g3) (1.6) and (1.5) at complex U, in s_L of Step 3. FABLE cites "p. 357 (1.6) [V]" with the real-U constant. At complex U the sentence gives (1.6) with ε_k → O(α_k). FABLE's displayed first term of s_L should read g_k^{−1}B_3M_0A_0p_0e^{−R_k}·O(α_{0,k} + α_{1,k})|Λ|-type, not the ε_k-form. This term still carries e^{−R_k}, so (D2) is unaffected if α_k ≤ O(1)ε_k on the class; Balaban calls the change "unessential".
- A second G^c sentence is on p. 359, after (1.13): "The above equations, bounds and statements are valid for g^c-valued fields, hence the existence of the analytic extension follows immediately, and Proposition 1 [IV] is proved." It concerns the minimizer, not the denominator. Lemma O3-den does not use it.
- Corrected input text for R-042: "[R] CMP 122 II p. 358 G^c sentence ('all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k})'), used for (1.7), for the p. 357 A_0 bound (a_k), and for (1.5)–(1.6) (the linear term s_L at complex U)."
- The cutoff χ({|B′| < M_0g_k^{−1}ε_k}) is part of the integrand, not a bound. Read literally, the sentence does not change it. FABLE keeps the cutoff unsourced and unchanged; this is consistent.

2.4 The Hessian upper bound (A-09 addition) [V]. p. 358: the lower bound on the integral "follows from the boundedness of the quadratic form". The bound itself is not printed with a constant. A-09's added input "[R/I: plaquette Hessian bounded by an absolute constant on the regular class]" stays as written; the page supports the [R] part.

## 3. Dressing Lemma identification (FABLE_A25_A26_H1_VERIFY D-01, D-04, D-07, D-10, §2 items 1–4)

3.1 Item 1, CMP 99 p. 418 [V], with one correction.
- (3.113): Ū′_c = (R_{c−}U′)‾^{−1}(U′U)‾_c(Ū_c)^{−1}R_c(R_{c+}U′)‾, with (R_yU′)‾ = exp[iΣ_{x∈B(y)}L^{−d}(1/i)log(R_yU′)(Γ_{y,x})]. This is the target's reading.
- The U′ = u·1·u^{−1} computation: (R_yU′)‾ = u(y)(Ru)‾^{−1}(y), hence Ū′_c = (Ru)‾(c−)R_c(Ru)‾^{−1}(c+) [V].
- (3.114): (QD^{L^{−1}}λ)(c) = R_c(Q′λ)(c+) − (Q′λ)(c−) = (D_ŪQ′λ)(c). (3.115): Q_jDλ = D^{L^jη}_{Ū^j}Q′_jλ = D̄^jQ′_jλ; "they imply that the average QA are invariant with respect to gauge transformations λ satisfying Q′λ = 0".
- CORRECTED: the words "Q′ = block average" are not on p. 418. Q′ is defined on p. 393, (3.18)–(3.19): (Q′(V)λ)(y) = Σ_{x∈B(y)}L^{−d}R(V(Γ_{y,x}))λ(x), and Q′_j is its composition. p. 394, line 1: "operators Q′_j(U) are linear parts of the averaging operations Ru^j for gauge transformations u = e^{iλ}, operations defined by (78)–(80) in [5]" ([5] = CMP 98). At V = 1, (3.19) is the block average. So the fact is [V p. 393], not [V p. 418].

3.2 Item 2, CMP 98 pp. 29–31 [V].
- (64), p. 29: (R_{0,y}U′)(Γ_{y,x}) = 1, x ∈ B(y), with R_0 defined by U_0. (67): the same at level j. (68)–(69): the inductive average.
- (78), p. 30: (R_0v)‾(y) = v(y)exp[iΣ_{x∈B(y)}L^{−d}(1/i)log v^{−1}(y)R(V_0(Γ_{y,x}))v(x)]. At V_0 = 1 its linear part is λ(y) + Σ_xL^{−d}(λ(x) − λ(y)) = λ̄(y) [P from the printed formula].
- (81), p. 30: (R_0u^k)‾(y) = 1, y ∈ Ω^{(k)}. Linear part: λ̄ = 0.
- (89), p. 31: the dressed one-step average (R(V_0)V_1)‾_c = (R_{0,c−}V_1)‾^{−1}(V_1V_0)‾_c(V̄_0)_c^{−1}R̄_{0,c}(R_{0,c+}V_1)‾. (90)–(91): the k-th order average is the composition of (89) at V_0 = U_0, Ū_0, …, Ū_0^{k−1}. (92): the fundamental equality.
- New page support, p. 35 (120) [V]: (V̄_1)_c = exp[−iΣ_{x∈B(c−)}L^{−d}(R_{0,c−}A)(Γ_{c−,x}) + i(Q′(V_0)A)_c + iΣ_{x′∈B(c+)}L^{−d}R̄_{0,c}(R_{0,c+}A)(Γ_{c+,x′}) + O(L²α_1²)]. At V_0 = 1 this is −r_G(A)(c−) + Q_GA(c) + r_G(A)(c+), the dressing of D-04(i) with the "+" sign. This is the printed form of the Dressing Lemma's input for the axial family.

3.3 Item 3, CMP 98 pp. 36–37 [V], with one correction.
- (124), p. 36: (Q(V_0)A)_c = Σ_xL^{−(d+1)}(R_{0,c−}A)([x, x′]) + four further sums. Each further sum has a coefficient [g(−iad_Y)g^{−1}(−iad_{Y_x}) − 1], [g(−iad_Y)g^{−1}(iad_{Y_x})e^{−iad_Y} − 1] or [e^{iad_Y} − g(−iad_Y)Σ_xL^{−d}g^{−1}(iad_{Y_x})]. p. 36 states: "the functions g(−z), g^{−1}(z), e^{iz} are equal to 1 for z = 0". At V_0 = 1 (Y = Y_x = 0) all these coefficients vanish.
- (125): (Q_0A)_c = Σ_{x∈B(c−)}L^{−(d+1)}(R_{0,c−}A)([x, x′]). At V_0 = 1 this is Q_str. So Q(1) = Q_str for every A [P, two lines from the printed (124)–(125)]. This is the axial-family case of the Dressing Lemma, now printed.
- (127), p. 37: (1/i)log Ū_1^k as a function of (1/i)log U_1 is the composition of Q(U_0, ·), Q(Ū_0, ·), …, Q(Ū_0^{k−1}, ·) [V].
- CMP 99 p. 393, (3.15) [V]: Q_j(U) = Q(Ū^{j−1})···Q(Ū)Q(U), "where Q(V) is given by the explicit formula (124) in [5]". Next line: "These definitions extend straightforwardly to configurations U, A with values in the complexified group G^c and algebra 𝔤^c, see Sect. E in [5]."
- CORRECTED: "Q_k(1) = Q^k, Q of CMP 96" (SOURCES_A18_REGULAR 6.1(2)) is not printed. p. 36 says the main term "resembles the definition of the averaging operation Q in [2]", and [2] in CMP 98 is CMP 95 (Propagators I), not CMP 96. The equality Q(1) = Q_str follows from (124)–(125) as above. That CMP 96 (2.125) is the same operator is the in-repo transcription (P253_P275_VERIFY V6), not checked here.

3.4 Item 4, CMP 109 pp. 266–267, 270 [V].
- (2.4), p. 266: M(V′V^{(k)})M(V^{(k)})^{−1} = exp iQ̃(B′). (2.5): G(B′) = Σ_yΣ_{x∈B(y),x≠y}½|B̃′(y, x)|² + G_3(B′).
- (2.6), p. 266: the expansion of A(U_k(V′V^{(k)})) "using … the formulas (41), (174) [15]", in H_{1,k}B′ + A_{1,k}, with H_kD_k terms. (2.7): ½⟨H_1B′ + A_1, Δ_1(H_1B′ + A_1)⟩ = ½⟨H_1B′, Δ_1H_1B′⟩ + ½⟨A_1, Δ_1A_1⟩, "see the definitions (3.127), (3.128) [13]"; [13] = CMP 99.
- p. 267: "⟨δA′, J⟩ = 0 for all δA′ satisfying the condition Q̃Q_kδA′ = 0, and H_1B′ satisfies it." (2.11), and "The quadratic form in B′ above is equal to −½⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one."
- (3.3), p. 270: E^{(j)}(U_j(M^j(exp iηH_k(B′)U_{k+1}))) − … = E^{(j)}(U_j(exp iQ_j(ηH_k(B′))Ū^j_{k+1})) − …, "where we have used the results of Sect. G [15], and the equality (97) [12]." (97) is on CMP 98 p. 32 [V]: (Ũ_1^j)_b = v_j(b−)(Ū_1^j)_bR̄^j_{0,b}v_j^{−1}(b+), the identity that links the configuration average to the dressed composition.
- Note: (2.6)–(2.7) cite CMP 99 for H_{1,k}, A_{1,k}, Δ_1. They do not name Q_k. Q_k appears on p. 267 in "Q̃Q_kδA′ = 0" and on p. 270 as Q_j in (3.3). The reading "CMP 109's Q_k is CMP 99's dressed composition" rests on p. 270 (3.3) plus CMP 98 (97), as SOURCES_L1_A_VERIFY V1.4 found. That is [V] with the residual "(97) for the new averages" [R, R-003 R4].

3.5 Comparison with SOURCES_L1_A_VERIFY. That file confirmed the identification on CMP 99 p. 418 (3.113)–(3.115) and CMP 109 p. 270 (3.3). This check agrees on both pages. It adds three printed facts: CMP 98 p. 35 (120) (the dressing with the "+" sign at general V_0); CMP 98 p. 36 (124)–(125) (Q(1) = Q_str, the chain terms have coefficients that vanish at V_0 = 1); CMP 99 p. 393 (3.15), (3.19) (Q_j is the composition of CMP 98 (124); Q′ is the block average at V = 1).

3.6 Grades for FABLE_A25_A26_H1_VERIFY.
- D-01: [V] for every listed page fact, with the two attribution corrections of 3.1 and 3.3.
- D-04: CONFIRMED [V CMP 98 p. 35 (120), pp. 30 (78), (81); CMP 99 pp. 393, 418]. No longer [I].
- D-07: CONFIRMED [V CMP 99 p. 393 (3.15); CMP 98 pp. 36–37 (124)–(127); CMP 109 pp. 266–267, 270]. No longer [I], except the residual (97) for the new averages [R].
- D-10: the premise "(67)–(68), (80)–(81): the same axial condition and normalization at every level" is [V p. 29–30]. The L^{j/2} aside stays UNSUPPORTED as written, as D-10 says.
- §2 items 1–4: all read as the target says, with the corrections in 3.1 ("Q′ = block average" is on p. 393, not p. 418) and 3.3 ("Q of [2]" = CMP 95; Q(1) = Q_str is a two-line consequence of (124)–(125), not a printed sentence).

## 4. Summary table

| item | file / id | question | result |
|---|---|---|---|
| P1 | O3_ALC_VERIFY B-08, B-17; FABLE B5(i) | Is (45) the only step that uses |v_0| = 1 / unitarity? | v_0: yes, only (45), both equalities [V p. 24]. Unitarity: no; (u1)–(u4) on pp. 24–25 also use it. CORRECTED. FABLE B2 steps (3)–(6) carry all of them, so B2 stands. |
| P2 | B-08 | Content of (48)–(50) | [V p. 25], as FABLE B0 transcribes. |
| P3 | B-01 | (15), (19)–(31), (42)–(54) | [V pp. 19–26]. U(c) on the coarse bond is not defined on these pages: the (15) reading stays [I]. |
| P4 | B-08 | factor 8 in C_0^c, c′_2^c | still [I]; C_0, c′_2 not printed (p. 26). Use independent slots. |
| P5 | A-05 | (1.1)–(1.19) | [V pp. 356–360]. A2 is correct. |
| P6 | A-05 | (1.73)–(1.75) | [V p. 380]. |
| P7 | A-05 | (R-cden): no printed mechanism for complex U | [V p. 358]. CONFIRMED. |
| P8 | A-16, D.1 | G^c sentence "for (1.7) only" | CORRECTED. Printed scope: "all the bounds above". FABLE uses it for (1.7), the A_0 bound (a_k), and (1.5)–(1.6) in s_L. The s_L first term at complex U should carry ε_k → O(α_k). Not load-bearing. |
| P9 | A-09 | Hessian upper bound | "boundedness of the quadratic form" [V p. 358]; no constant printed. |
| P10 | A25 D-04 | dressed one-step average | [V CMP 99 p. 418; CMP 98 pp. 30–31, 35 (120)]. |
| P11 | A25 D-04 | "Q′ = block average" on p. 418 | CORRECTED: on p. 393 (3.19), not p. 418. |
| P12 | A25 D-07 | Q_k = composition of dressed one-step maps; Q(1) = Q_str | [V CMP 99 p. 393 (3.15); CMP 98 pp. 36–37 (124)–(127)]. "Q of CMP 96" CORRECTED to "Q of [2] = CMP 95"; Q(1) = Q_str follows from (124)–(125). |
| P13 | A25 §2 item 4 | CMP 109 (2.4)–(2.7), p. 267, (2.11) | [V pp. 266–267]. Q_k is named on p. 267 and as Q_j on p. 270 (3.3). |

## 5. Resulting statuses (proposed; the row owners apply them)

R-042 (N3), with Q-061. Q-061 moves to PROVED relative to R-042's own N3 input, as FABLE_O3_ALC_VERIFY D.1 proposes. Change in D.1: the page facts of CMP 122 II pp. 356–360, 379–381 are now [V], not "[I: source not checked by the verifier]". The [R] inputs are: (1.7) via (1.67) [10]; (1.8) by Balaban's sketch "as in Lemma 2.4 [11]"; the boundedness of the quadratic form (p. 358); and the p. 358 G^c sentence, used for (1.7), for the A_0 bound (a_k) and for (1.5)–(1.6) (P8). Add the s_L correction of P8 to the VERIFY corrections A-10, A-11, A-14. The (1.68)–(1.69) bookkeeping stays "plausible, not checked". The grade of R-042 itself does not change: N3 stays open.

R-002, with H-071 (AL-c). H-071 moves from REDUCED to PROVED relative to listed inputs, as D.2 proposes. Change in D.2: "CMP 98 Prop. 1 proof pp. 24–26 complexified ([V] in FABLE; [I: source not checked] by the verifier)" becomes "[V pp. 24–26, FABLE_O3_ALC_PAGES §1]". FABLE B5(i)'s sentence "the only unitary-specific step is (45)" is CORRECTED as in §1.3; the proof B2 already carries (u1)–(u4). Residual inputs: the (15)/(43) reading of U(c) [I]; the lasso count A_L and the (d + 1)L conjugator length [I]; C_0, c′_2 unprinted (slots). These are the inputs H-072 (AL′) already carries. The grade of R-002 does not change (PAPER-GRADE relative to listed inputs).

Canon slot c_N (SOURCES_ORDER_CANON N-060). Fill with c_N := 4K_av by the block of FABLE_O3_ALC_VERIFY D.3, with C_0^c, c′_2^c as independent slots ("the constants of the complex CMP 98 Prop. 1, FABLE_O3_ALC B2"). The page item of C.3 ("complexified Prop. 1 proof steps on pp. 24–26") is now [V]. The factor-8 estimate stays [I] and is not used by any consumer. Residual inputs of the value are the [I] readings of H-072 (AL′) only. The G.5 bullet can be deleted.

R-022. OPEN (i) and (ii) close by redirection, as FABLE_A25_A26_H1_VERIFY §3.1 and SOURCES_L1_A_VERIFY propose. §3.1's condition "once items 1–4 of §2 are read on the pages" is met (§3 here). So the row can move from REDUCED to PROVED relative to listed inputs. Inputs: the Dressing Lemma [P, verified]; CMP 98 (78), (81), (89)–(92), (120), (124)–(127) [V]; CMP 99 (3.15), (3.19), (3.113)–(3.115) [V]; CMP 109 (2.4)–(2.7), p. 267, (3.3) [V]; CMP 96 Lemma 2.4 and CMP 95 free bounds for Q_str^k [R]; CMP 99 Thms 3.11–3.12, (3.132)–(3.133) [R]; CMP 98 (97) for the new averages [R, R-003 R4]; one-step regular-U remainder with C_1′ → C_1′(1 + c_M) [P-sketch, FABLE 1.4(b)]. Text fixes: "Q′ = block average" cite CMP 99 p. 393 (3.19); "Q of CMP 96" → "Q_str, from CMP 98 (124)–(125) at V_0 = 1 (main term 'resembles Q in [2]', [2] = CMP 95)". The verifier corrections D-09 to D-13 stand unchanged.

STATUS: COMPLETE. Files written: FABLE_O3_ALC_PAGES.md. Images rendered in a fresh /tmp folder and deleted. No other file edited.
