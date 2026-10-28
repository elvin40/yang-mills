# SOURCES_A15_WHOLE — TRUST_LEDGER row A15 (β_j = whole-lattice coefficient)

Date: 2026-10-28. Scope: row A15 only. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Ledger tags: [P] = read on the page image or pdftotext of the source; [V] = verified here by derivation; [I] = inference or reading, not printed.

## 0. Target
A15: β_j is the coefficient of the infinite-volume, whole-lattice extension of the step (y-sums over Z⁴, X over all of D_j).

## 1. Ledger context (read 2026-10-28)
- A15 row (TRUST_LEDGER l. 38): status "asserted (Balaban), printed for the small-field terms without proof (SOURCES_D3W8_VERIFY S3); the R-term part is not covered … (→ B8) [reduced (R): SOURCES_T2_G2 + VERIFY]". [P: read]
- Where A15 enters Theorem 2w (TRUST_LEDGER §4.1 item 2, l. 127): only through B6 = (G2) "⇐ A15". Theorem K bounds per-cell whole-lattice one-loop densities; the recursion needs β_j(0) to be that density. [P: read]
- SOURCES_T2_KUNIF §5.1 (verified): β_j in CMP 119 (2.24) is, by Balaban's definition (p. 249: "defined in [I] by the formulas (1.41)–(1.43)"), the whole-lattice function of (j; g_0, …, g_{j−1}). The shooting (Lemmas D′/D″) uses this function at one fixed K. Item 9 is closed by definition. The finite-volume consistency moved to B8 + small-field A15, inputs of Theorem 1 (A13), not of Theorem 2w. [P: read; V there]
- SOURCES_T2_G2 + VERIFY (21 CONFIRMED, 6 CORRECTED): at fixed j, torus one-loop density = whole-lattice density + O(C_j e^{−δ_jN}) (Lemma 2.2, Cor. 2.3, method of images); p²- and f²-coefficient extraction commutes with N → ∞; given (Gap), (Gap_f), and the averaging-analyticity reading. Limited to g = 0 (VERIFY §7.2). [P: read; V there]
- SOURCES_D3W8_VERIFY S3: p. 278 quote and p. 279 β subtraction CONFIRMED on page images; "the framework of [I] has no R-terms", so p. 278 cannot hold literally for R′-built terms. [P: read; V there]
- A5 and X2–X5: A5 = smoothness/boundedness of β_{j+1} on [0, γ] (inductive assumption). X2 = OS II reconstruction from torus data; X3 = reflection positivity on the periodic lattice; X4 = Cammarota; X5 = Savvidy. Only X2/X3 are torus-side. None of them is a statement about β_j volume dependence. [P: read]

Observation [I, checked below]: A15 has two separate contents.
 (A15-def) β_j is defined as a whole-lattice quantity. This is a definition (CMP 119 (2.24), p. 249) and needs no proof.
 (A15-loc) The finite-volume step's small-field polymer terms E_0^{(k+1)}(Λ, X, z) for X ⊂ Λ equal the whole-lattice terms. This is the p. 278 claim; it is what makes the whole-lattice β subtraction consistent inside the finite-volume step (Theorem 1 side, with B8).

## 2. CMP 119 pages (read 2026-10-28)
2.1 Page correction [P, text layer page headers]. The quote "β1(g0) was defined in [I] by the formulas (1.41)-(1.43)" sits on CMP 119 p. 253 (text l. 559–561, between the headers "253" at l. 531 and "254" at l. 581), not p. 249. CMP 119 pp. 248–250 contain (1.14)–(1.22): the linearizing transformation, the scaling A = g_0A′, and the small-field domain Λ_1. They do not mention β. (2.24) is on p. 259 (PDF 17), not p. 249. The ledger's "p. 249" is a page slip; the content is correct.
2.2 p. 253, verbatim [P, text layer]: "We renormalize it in the region Λ_1 subtracting the values at U_1 = 1, and the counterterm β_1(g_0)A(φ_1, U_1), where β_1(g_0) was defined in [I] by the formulas (1.41)-(1.43), φ_1 ∈ C_0^∞(Λ_1), φ_1 = 1 on Λ_1^{~−1}." Then (1.27): "on Λ_1^{~−1} we have the same equation, which defines the same coupling constant g_1."
2.3 p. 259, verbatim [V, page image PDF 17 at 300 dpi]:
 (2.24) 1/g_{j−1}²(x) = 1/g_j²(x) + β_j(g_{j−1})φ_j(x). "Here the coupling constants g_{j−1} are defined as in (I.0.20), and φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1}. Thus g_j²(x) = g_j² on the last domain."
 (2.25) E_k(U_k) = Σ_{j=1}^k [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1})A(φ_j, U_k)].
 (2.26)–(2.27): E^{(j)}(Λ_j, U_k) = Σ_{z∈Λ_j^0} Σ_{X∋z, X∈D_j, X⊂Λ_j} E^{(j)}(X, U_k, z); (i) E^{(j)}(X, U_k, z) "depends on U_k restricted to X"; (ii)–(iv) analytic extension, gauge invariance, bound (I.1.18). "These properties are the same as in [I.1]."
 E_k "has the same properties as the effective action constructed in [I] for the small field approximation, but localized properly in different scales to domains determined by {Λ_j}."
2.4 What this shows [P, by reading (2.24)–(2.27)].
 (a) β_j enters (2.24)–(2.25) as a number β_j(g_{j−1}) with the same g_{j−1} as CMP 109 (0.20). It carries no Λ_j argument. So β_j is the CMP 109 quantity by definition (A15-def). Nothing to prove.
 (b) The finite-region object is E^{(j)}(Λ_j, …). The whole-lattice β_j is subtracted from it with the cutoff φ_j. The bracket in (2.25) is small (no marginal A-term) only if the coefficient of A in E^{(j)}(Λ_j, …) − E^{(j)}(Λ_j, …, 1) equals β_j on the interior Λ_j^{~−1}. That is exactly what p. 278 asserts through "the terms E_0^{(k+1)}(Λ_{k+1}, X, z), X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}". (A15-loc.)
 (c) Note the dependence on g_{j−1} only is Balaban's notation; SOURCES_T2_KUNIF §3.2 showed the CMP 109 function depends on the whole history (CMP 109 p. 298). Not re-opened here.

## 3. Task (1): the exact definition of β_j in CMP 109
3.1 Equation-number correction [V, CMP 109 p. 264 page image, PDF 16 at 300 dpi]. CMP 109 has no displays (1.41)–(1.43) that define β. The definition is (1.20)–(1.22) on p. 264. CMP 119 p. 253 cites "(1.41)-(1.43)" of [I]; this does not match the printed CMP 109 numbering [I: a cross-reference slip in CMP 119, perhaps preprint numbering]. CMP 109 (1.43)–(1.54) quoted at text l. 1156, 1511 are of [14], not β. CMP 109 pp. 258–260 contain (0.24)–(0.32) and the start of Sect. 1; p. 258 states the idea: "We define the function β_j(g_{j−1}) to be equal to the coefficient β" of the A(U_k)-term extracted by Ward–Takahashi identities from the local expansion (0.28). Ledger pointers "(1.41)–(1.43), pp. 258–260" should read "(1.20)–(1.22), p. 264".
3.2 Volume of CMP 109 [P, text layer l. 121–139]. CMP 109 works on a torus: "a torus T obtained by the usual identification of boundary points of the cube {−L_μ ≤ x_μ ≤ L_μ}", L_μ = L^m, lattice T_ε with ε = L^{−K}, and the tori T^{(k)}. So CMP 109's own effective actions are finite-torus objects, exactly the project's Theorem 2 setting (volume L^N in unit-lattice units).
3.3 Definition, verbatim [V, p. 264 image].
 "They are determined by the functions E^{(j+1)}(g_j, U_{j+1}) in (1.6). Let us denote E^{(j+1)}(g_j, B) = E^{(j+1)}(g_j, U_{j+1}(exp iB)). We define
  Π^{ab}_{j+1,μν}(g_j, x, x′) = (δ²/δB^a_μ(x)δB^b_ν(x′) E^{(j+1)})(g_j, 0).   (1.20)
 This is the vacuum polarization tensor of the theory defined by the j-th fluctuation field integral." Global gauge invariance gives δ^{ab}; "By the Euclidean invariance of E^{(j+1)}" Π^{ab}(x, x′) = δ^{ab}Π_{j+1,μν}(g_j, x − x′), Π(rb, rb′) = Π(b, b′) (1.21), r a rotation of T^{(j+1)}. "Now we take a limit of these functions as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7). The function β_{j+1}(g_j) is defined by
  β_{j+1}(g_j) = −(∂²Π̃_{j+1,12}/∂p_1∂p_2)(g_j, 0) = −(∂²Π̃_{j+1,μν}/∂p_μ∂p_ν)(g_j, 0) = Σ_x Π_{j+1,μν}(g_j, x)x_μx_ν   (1.22)
 for μ, v arbitrary, μ ≠ ν, where f̃(p) denotes the Fourier transform of the function f(x), x ∈ Z^d."
3.4 Answer to task (1) [P, from 3.3].
 - Quantity: the mixed (μ ≠ ν) second moment of the vacuum polarization tensor, i.e. the second B-derivative at B = 0 (trivial background U_{j+1} = 1) of the step function E^{(j+1)}(g_j, ·) of (1.6). In (1.6) E^{(j+1)} contains the zeroth-order (log Z^{(j)}, one-loop) term together with the interaction terms (CMP 109 p. 261: "it is not necessary to separate the terms of zeroth order … then we write (1.6)"). So β_{j+1}(0) is the one-loop part. [P text layer; (1.6) display garbled, reading [I]]
 - Volume: the infinite lattice Z^d, as a limit T^{(j+1)} ↗ Z^d of the torus kernels. Not a sum over Z^d of a whole-lattice object defined first; a limit of torus objects. [V]
 - Boundary conditions: periodic (torus T^{(j+1)} of CMP 109 §0), background U = 1, B = 0. The limit is claimed to exist "by the localized representation (1.7)": E^{(j)} = Σ_{X∈D_j} E^{(j)}(X, g_{j−1}, U_j), each term depending on U_j|_X, with |E^{(j)}(X)| ≤ E_0 e^{−κd_j(X)} (1.18). [V for (1.22) text; P text layer for (1.7), (1.18)]
 - Note: Balaban gives no proof that the limit exists beyond "by (1.7)". The existence is item 4.2 below.

## 4. CMP 109 Sect. 4: the whole-lattice extension (pp. 290–291)
4.1 p. 290, verbatim [V, page image PDF 42 at 300 dpi]. After (4.34): "The sums over x above are restricted to supp δB ⊂ □, and the sums over y are restricted to supp B ⊂ supp ζ̃_□." (4.35) E^{(2)}(X) = ⟨(δ²/δH²)E(X, 1), H_j(□_0), H_j(□_0)⟩. "If we replace H_j(□_0) by H_j with free boundary conditions, then the difference H_j(□_0) − H_j restricted to X × supp ζ̃_□, yields the factor B_0 exp(−δ_0M(L^jη)^{−1}) in a bound of the corresponding expression. … Next, we extend summations over y to the whole lattice Z⁴. The difference between the sum over supp ζ̃_□ and the sum over Z⁴ is a sum over a subset of (□̃³)^c ∩ Z⁴. This gives again the exponentially small coefficients. Finally, the crucial step is an extension of the sum over localization domains X. … The expressions with localization domains, which do not satisfy this condition [X ⊂ □̃²], are exponentially small in L^jη … We extend it to all X ∈ D_j^0, where D_j^0 is the class of localization domains constructed for the lattice ξZ⁴. More exactly we make this extension for all explicitly written terms in (3.34), not for irrelevant terms. … The difference between the two sums gives a function satisfying
  |Σ_{X∈D_j^0, X∩(□̃²)^c≠∅} E^{(2)}_{μ,ν}(X, x, y)| ≤ O(1)E_0 exp(−(L^jη)^{−1}) exp(−δ_1|x − y|), for x ∈ □,   (4.36)
 hence, substituting it into (4.34), we get an irrelevant expression again."
4.2 p. 291 [P, text layer]: "(4.37) Π_{μ,ν}(x, y) = Σ_{X∈D_j^0} E^{(2)}(X, x, y) … The function Π is called the vacuum polarization tensor." The β-counterterm (4.38) goes through the same procedure and gives β_j(g_{j−1})⟨∂_ξH_j, ∂_ξH_j⟩ = β_j(g_{j−1})Δ_j (4.40), with Δ_j explicit ((1.66) of [10]).
4.3 What Sect. 4 does [P, from 4.1–4.2].
 (a) Each replacement (local H_j(□_0) → free H_j; y-sum supp ζ̃_□ → Z⁴; X ⊂ □̃² → all X ∈ D_j^0) changes the expression by a term with coefficient ≤ O(1)E_0e^{−c(L^jη)^{−1}} times exponential decay in |x − y|. Here (L^jη)^{−1} = L^{k−j} is the number of level-j units per localization cube □. The torus size does not appear. The cubes □ never wrap, so the torus is invisible.
 (b) Each change is put into the irrelevant terms, which need only the (0.29) bound. Balaban never claims exact equality in Sect. 4. He claims "exponentially small".
 (c) The terms E^{(2)}(X) themselves are reused unchanged in the Z⁴ sum. So Sect. 4 already assumes that a localized term E(X), X ⊂ □̃², of the torus problem is the same function as the term with the same X in the Z⁴ problem. That is the torus (no-boundary) form of the p. 278 claim. Sect. 4 does not prove it; it is built into the inductive assumption (1.7) [I].
 (d) The free H_j is the whole-lattice (or torus) linearized background map. It is not finite-range; it has exponential decay (CMP 95/96, rate the same on torus and Z⁴, SOURCES_T2_G2 §6.2 [V there]).

## 5. Task (2): the torus coefficient β_j^{(N)}
Setting: the project's Theorem 2 torus, unit-lattice side L^N at level j, i.e. N_j := L^{N−j} level-j cells per side (THEOREM2 setting; G2 uses N for this number). Write Π^{(N)}_{μν}(g, x), x ∈ T^{(j)}, for (1.20)–(1.21) computed on this torus (it is what CMP 109 itself computes before the limit, §3.2).
5.1 Two candidate definitions [P].
 (D1) Moment form: β_j^{(N)} := Σ_{x∈F_N} Π^{(N)}_{μν}(g, x) x̂_μx̂_ν, μ ≠ ν, with x̂ the minimal-image representative of x in a fundamental domain F_N centred at 0.
 (D2) Fourier form: β_j^{(N)} := −Δ_{12}Π̃^{(N)}_{12}(g, 0), a centred second difference at the smallest torus momenta p_μ = 2π/N_j (the G2 Theorem 3.2(iii) extraction).
 (1.22) on Z^d makes both forms equal. On the torus they differ: (D2) has an O(N_j^{−2}) discretization error (analytic but non-polynomial Π̃), (D1) does not.
5.2 What the finite-torus step actually uses [P, from §2.3–§4.3]. Neither. The step subtracts the whole-lattice number β_j(g_{j−1}) (CMP 119 (2.25); CMP 109 (4.38)–(4.40)) and books every volume difference as an irrelevant term. So in Balaban's construction β_j^{(N)} never appears as a coefficient. It is the project's construct (as SOURCES_T2_G2_VERIFY §7.3 (iii) already stated). The meaningful question is quantitative: how far is (D1) from β_j, so that "subtract β_j instead of β_j^{(N)}" costs only an irrelevant term.

## 6. Task (3): β_j^{(N)} versus β_j — exponential closeness, not equality
6.1 Inputs (fixed j, fixed g ∈ [0, γ], background U = 1).
 (Loc) Term-wise volume independence on the torus. Let X ∈ D_j^{(N)} be non-wrapping: its enlarged neighbourhood X̃^5 has an isometric lift X̂ ⊂ Z⁴ (true when diam X̃^5 < N_j). Then E^{(j+1)}_N(X, g, U) = E^{(j+1)}_∞(X̂, g, Û), Û the lift of U|_{X̃^5}. This is the torus (no-boundary) half of the p. 278 claim. [R: CMP 119 p. 278 [V]; CMP 109 Sect. 4 uses it silently (§4.3(c)); supported for walk factors by (L2) of WG_FULL / A1_WALK_FULL (factors depend on U and on domain data only in X̃^5) [P there, given Balaban's Thms 3.7–3.10]; the cluster-expansion assembly of E(X) from such factors is not checked here [I]]
 (Bd) CMP 109 (1.18): E^{(j+1)}(X, ·) is analytic on U_j^c(X, α_0, α_1) with |E| ≤ E_0e^{−κd_j(X)}. Cauchy's estimate in B at radius ~α_0 gives ‖E″(X)‖ ≤ C_αE_0e^{−κd_j(X)}, E″(X) := δ²E(X)/δBδB at B = 0. [R: (1.18) is the inductive assumption, proved by Theorem 3 of CMP 109 = A13-type; Cauchy step P]
 (H) At U = 1 the linearized background map H := ∂_B U_{j+1}(exp iB)|_0 is translation-covariant; on the torus H_N = periodization of H_∞ (G2 Lemma 1.1(a) / Lemma 2.2 argument); |H_∞(b, x)| ≤ C_He^{−δ_H|b−x|}. [R: CMP 95/96 decay, same rate on torus and Z⁴ (G2 §6.2 [V there]); periodization P given invertibility, as in G2 Lemma 2.2(a)]
 (Cnt) Polymer counting: Σ_{X∋b, d_j(X)≥n} e^{−κd_j(X)}|X|² ≤ C_0e^{−(κ−κ_0)n}, κ_0 = κ_0(d, L). [P, standard tree counting; κ ≥ κ_0 + 1 is Balaban's "κ sufficiently large"]
 Wrapping fact [P]: if X is wrapping (not non-wrapping), then d_j(X) ≥ N_j − c_5 (a connected tree whose 5-enlargement is not liftable has length ≥ N_j minus the enlargement width).
6.2 Proposition A15-N [P given (Loc), (Bd), (H), (Cnt)]. Put m := ½min(δ_H, κ − κ_0) > 0. There is C_j (independent of N) such that
 (i) |Π^{(N)}_{μν}(0, x) − Σ_{γ∈Γ_N}Π^{∞}_{μν}(0, x̂ + γ)| ≤ C_je^{−mN_j} for all x;
 (ii) |Π^∞_{μν}(0, y)| ≤ C_je^{−m|y|}; so the T ↗ Z^d limit in (1.22) exists, pointwise with rate e^{−mN_j}, and the Z⁴ moment converges;
 (iii) for (D1): |β_j^{(N)}(g) − β_j(g)| ≤ C_jN_j^6e^{−mN_j/2};
 (iv) for (D2): |β_j^{(N)}(g) − β_j(g)| ≤ C_j′N_j^{−2} + C_jN_j^6e^{−mN_j/2}.
Proof. Write Π^{(N)}(0, x) = Σ_X Σ_{b,b′∈X} E″_N(X)(b, b′)H_N(b, 0)H_N(b′, x). Split X into non-wrapping (nw) and wrapping (w).
 w-part: by the wrapping fact, (Bd), Σ_b|H_N(b, 0)| ≤ C, |H_N| ≤ C, and (Cnt) with n = N_j − c_5: |w-part| ≤ C e^{−(κ−κ_0)N_j}.
 nw-part: by (Loc) each nw term equals its Z⁴ lift. Insert H_N = Σ_γ H_∞(·, · + γ) for both factors. The sum over Γ_N-orbits of nw domains and one image sum together give one sum over all Z⁴ domains of nw type (unfold the orbit). So nw-part = Σ_{γ′}Π^{∞,<}(0, x̂ + γ′), Π^{∞,<} the Z⁴ tensor restricted to domains with diam X̃^5 < N_j. The missing domains have d_j ≥ N_j − c_5, so |Π^∞ − Π^{∞,<}| ≤ Ce^{−(κ−κ_0)N_j} pointwise, and summed against the decaying H it stays summable over γ′. This gives (i).
 (ii): Π^∞(0, y) = Σ_{X̂} E″H_∞H_∞. A term reaches y only if d_j(X̂) + |b − 0| + |b′ − y| ≥ |y|. Use e^{−κd} ≤ e^{−(κ−κ_0)d}e^{−κ_0d} and the H decay; with (Cnt) the sum is ≤ Ce^{−m|y|}. Pointwise convergence: Π^{(N)}(0, x) − Π^∞(0, x̂) = [(i) error] + Σ_{γ≠0}Π^∞(0, x̂ + γ), and |x̂ + γ| ≥ N_j/2 for x̂ ∈ F_N, γ ≠ 0, so the second term is ≤ Ce^{−mN_j/2}.
 (iii): Σ_{x∈F_N}Π^{(N)}(0, x)x̂_μx̂_ν − Σ_{y∈Z⁴}Π^∞(0, y)y_μy_ν = Σ_{x∈F_N}[(i) error]x̂_μx̂_ν + Σ_{x∈F_N}Σ_{γ≠0}Π^∞(0, x̂+γ)x̂_μx̂_ν − Σ_{y∉F̂_N}Π^∞(0, y)y_μy_ν. The three sums are ≤ C N_j^6e^{−mN_j}, CN_j^6e^{−mN_j/2}, CN_j^5e^{−mN_j/2} (|F_N| = N_j⁴, |x̂|² ≤ N_j², and |y| ≥ N_j/2 off F̂_N).
 (iv): Π̃^{(N)}(p) at torus momenta equals Π̃^∞(p) up to (i)-errors summed over F_N (Poisson: periodization = sampling). Π̃^∞ is analytic and even in p (exponential decay (ii)), so the centred second difference at |p| = 2π/N_j misses −∂²Π̃^∞ by O(p²) = O(N_j^{−2}); the sampling error is divided by p_1p_2, giving the N_j² factor, absorbed in N_j^6. ∎
6.3 Decision: exact equality or exponential? [P + N]
 - Term-wise (p. 278 level): exact, for every non-wrapping interior X, if (Loc) holds. (Loc) is a statement about how the construction builds each E(X) from local data. It is consistent with exact equality, and that is Balaban's wording ("coincide").
 - Coefficient level (β_j^{(N)} vs β_j): NOT exact in general. Two independent sources survive: the images γ ≠ 0 of H_N (H is an inverse-type map with infinite range, only exponential decay) and the wrapping polymers, which have no Z⁴ counterpart and generically nonzero activity. At g = 0 this is visible directly: G2 Lemma 2.2 writes the torus density minus the Z⁴ density as Σ_{γ≠0} of image terms, which are nonzero generically (Poisson: grid sum − integral = Σ_{n≠0}ĝ(N n)); the G2 §7 grid errors (L = 2: 1.6·10^{−2} at N_g = 4 down to 8.4·10^{−7} at N_g = 10, geometric) show they are nonzero [N, G2 §7.1, antiperiodic torus]. So the correct statement is |β_j^{(N)} − β_j| ≤ C_je^{−c_jN_j}, c_j > 0 at fixed j, with (D1); (D2) adds O(N_j^{−2}).
 - The step is not strictly finite-range: walk expansions are infinite sums of local terms (WG_FULL (B1): Σ_λ|T_λ| ≤ 2Bm e^{−δd}); only each walk term is local.
 - Constants: C_j, m_j are fixed-j constants. A j-uniform m needs a j-uniform κ − κ_0 and δ_H; Balaban's κ, δ_0 are j-independent (CMP 109 (1.18) "absolute constants", CMP 95 Prop. 1.2), so m is j-uniform in his units [I: not traced through H at each level]. Not needed for Theorem 2w (§8).

6.4 Relation to SOURCES_T2_G2 [P].
 - G2 is the g = 0 case of Proposition A15-N, proved there without (Loc): at g = 0 the step is an explicit function (log det) of local operators, and G2 Lemma 1.1(b) gives the needed locality directly (local operators on T_N = induced operators for NΛ > 2R_j). G2 Cor. 2.3 is (i)–(ii) for densities; G2 Theorem 3.2(iii) is (iv) for the plane-wave extraction (rate O(N^{−2}) + O(N²e^{−δN}), matching (iv)). So for β_j(0) the volume question is already closed by G2 (verified), modulo (Gap), (Gap_f), and the averaging-analyticity reading.
 - G2 does not contain the g > 0 case. For g > 0 the activities E(X) are not explicit; locality must be supplied by (Loc). That is the only new input Proposition A15-N needs beyond Balaban's inductive bounds.

## 7. Task (4): what stays Balaban's assertion, what is proved here
 Proved / verified here:
 (a) A15-def: β_j in CMP 119 (2.24)–(2.25) is the CMP 109 number defined as the T ↗ Z^d limit, (1.20)–(1.22) on p. 264 [V, images]. No proof is needed; it is the definition.
 (b) The limit in (1.22) exists, and torus moments converge at rate e^{−m_jN_j} (Prop. A15-N (ii)–(iii)) [P given (Loc), (Bd), (H), (Cnt)]. Balaban only says "This limit exists by the localized representation (1.7)". At g = 0 the same is G2 [P+V, no (Loc) needed].
 (c) Exact coefficient equality β_j^{(N)} = β_j is refuted in general; the correct form is exponential closeness (6.3). This matches CMP 109 Sect. 4, which books every volume difference as an "exponentially small" irrelevant term (4.36) and never claims equality.
 (d) Page corrections: the β definition is CMP 109 (1.20)–(1.22), p. 264, not "(1.41)–(1.43), pp. 258–260"; the CMP 119 citation of β is on p. 253, (2.24) on p. 259, not p. 249.
 Remains Balaban's assertion:
 (e) (Loc) for g > 0: each torus activity E^{(j+1)}(X), X non-wrapping, is the same function as its Z⁴ lift. Printed only as the p. 278 sentence ("do not depend on Λ_{k+1}, and coincide …") and used silently in CMP 109 Sect. 4. Walk-factor locality (L2) is proved relative to Balaban's Thms 3.7–3.10 (WG_FULL); the cluster-expansion assembly is not checked [I].
 (f) The boundary half of p. 278: for the small-field region Λ_{k+1} ⊊ torus, terms with X ⊂ Λ_{k+1} near ∂Λ_{k+1} depend on Λ_{k+1} through the Dirichlet-type covariance C(Λ) and the boundary function H_{1,Λ} (CMP 119 p. 251, (1.21): "depends on its argument restricted to a small neighborhood of ∂Λ_1 … has the exponential decay property") [P text layer]. Balaban moves clusters within distance MR of Λ^c into B-terms (p. 253, text l. 549–553) and removes H_{1,Λ} by the change of variables (1.22). So the literal "X ⊂ Λ_{k+1}" must be read as "X in the interior class" [I]. Unproved here.
 (g) The R-term part (B8): unchanged; the framework of [I] has no R-terms (D3W8_VERIFY S3).

## 8. Task (5): conclusion and effect on Theorem 2w's binding set
 Verdict: A15 is SPLIT.
 - For Theorem 2w (T1, Route K): A15 is DISCHARGED as a separate binding item. Its only use in T1 is through B6 = (G2) (ledger §4.1 item 2; SOURCES_T2_KUNIF §2 table: U7). What T1 needs is: β_j is the whole-lattice coefficient (A15-def, a definition [V]) and β_j(0) equals the per-cell whole-lattice one-loop coefficient that Theorem K bounds (volume part = B6, verified reduction; identification part = B5, proved+verified). The g > 0 values enter T1 only through A5/(H0) (Lipschitz C_β), and A5 already presupposes the Z^d limit: the A5 sentence "It is a smooth function defined on [0, γ]" is about the β of (1.22) (p. 264 [V]). The shooting runs at one fixed K with the whole-lattice function (KUNIF, verified). No step of T1 compares a torus coefficient with β_j at g > 0.
   New T1 Route K binding set: {A5} + B1–B7 + X5 (1 Group A, 7 Group B). Route B: {A5} + {B1, B6, B7, B9} + X1. Condition: B6 stays as listed (its own residue Q̃ surjectivity, (Gap_f), averaging analyticity).
 - For T1 ⇒ Theorem 1 and for T2: A15 STAYS, narrowed to A15-loc = (Loc) for g > 0 + the boundary reading (f), both Balaban's p. 278 assertion; plus B8 for R-terms. Proposition A15-N reduces the coefficient-level consistency ("subtracting the whole-lattice β inside a finite torus leaves an irrelevant remainder") to (Loc): the remainder is ≤ C_je^{−m_jN_j}·|A|, an irrelevant term in Balaban's sense when N_j ≥ L^{k−j}-type sizes [I: irrelevance threshold not computed]. The ledger status of A15 for these targets: "reduced (R) to (Loc) + boundary reading (f) [both Balaban, p. 278]; coefficient level proved given (Loc) (this file); g = 0 closed by G2".
 Suggested ledger edits (not made; editing is outside this task):
 1. A15 row: source column "(1.41)–(1.43)" → "CMP 109 (1.20)–(1.22), p. 264"; "p. 249" → "p. 253 (β quote), p. 259 ((2.24)–(2.27))".
 2. A15 "uses" column: drop "(G2) ⇒ T1"; T1 uses only A15-def (definition) and B6.
 3. §4.1/§5 counts: T1 Route K {A5, A15} → {A5}; T1 ⇒ Theorem 1 keeps A15 (narrowed). T2 count unchanged.
 4. TRUST_LEDGER l. 127 item 2 "B6 (G2, ⇐ A15)" → "B6 (G2)" (G2 needs no (Loc) at g = 0).

## 9. Ledger
 1. CMP 109 (1.20)–(1.22), p. 264: β_{j+1}(g_j) = mixed second moment of the vacuum polarization tensor of E^{(j+1)}(g_j, ·) at U = 1, defined after the limit T^{(j+1)} ↗ Z^d; "This limit exists by the localized representation (1.7)". [V, image PDF 16]
 2. CMP 109 works on a periodic torus (§0, text l. 121–139). [P, text layer]
 3. CMP 119 p. 253: β_1 "defined in [I] by the formulas (1.41)-(1.43)"; the printed CMP 109 numbering is (1.20)–(1.22). [P text layer; numbering mismatch I]
 4. CMP 119 p. 259 (2.24)–(2.27), verbatim. [V, image PDF 17]
 5. CMP 109 p. 290 (4.35)–(4.36): local H_j(□_0) → free H_j, y-sums → Z⁴, X ⊂ □̃² → all X ∈ D_j^0; all differences exponentially small in (L^jη)^{−1} and booked as irrelevant. [V, image PDF 42]; p. 291 (4.37)–(4.40). [P text layer]
 6. Sect. 4 reuses the torus terms E^{(2)}(X) unchanged in the Z⁴ sum; it presupposes (Loc). [I]
 7. In Balaban's step no torus coefficient β_j^{(N)} appears; the whole-lattice β_j is subtracted and volume differences are irrelevant terms. [P from 4, 5]
 8. Proposition A15-N (i)–(iv): |β_j^{(N)} − β_j| ≤ C_jN_j^6e^{−m_jN_j/2} (moment form), + O(N_j^{−2}) (Fourier second-difference form); the (1.22) limit exists. [P given (Loc) [R: CMP 119 p. 278; walk-factor (L2) P in WG_FULL; assembly I], (Bd) [R: CMP 109 (1.18)], (H) [R: CMP 95/96 decay], (Cnt) [P]]
 9. Exact coefficient equality is false in general (image terms of H and wrapping polymers); term-wise equality for non-wrapping interior X is exact under (Loc). [P; N witness at g = 0 from G2 §7.1]
 10. G2 is the g = 0 case of item 8, proved without (Loc). [P]
 11. j-uniformity of m_j. [I; not needed for T1]
 12. Boundary half of p. 278 (X near ∂Λ_{k+1}) needs the interior reading; B-terms and change of variables (1.22) of CMP 119. [I]
 13. A15 leaves T1 Route K binding set: {A5, A15} → {A5}; stays (narrowed to (Loc) + item 12, plus B8) for T1 ⇒ Theorem 1 and T2. [P, by inspection of ledger §4.1 and KUNIF §2 uses]
 14. Ledger page/equation fixes listed in §8. [P]

Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened. No existing file edited. Page images rendered to /tmp/a15img and deleted after use.

STATUS: COMPLETE (unverified; needs an independent verifier pass, at least on items 8, 9, 13).

Corrections after verification (SOURCES_A15_WHOLE_VERIFY, 2026-10-28): (1.7)/(1.9) say only that each term depends on U restricted to X, not that each term is the same function on every torus and on Z^d — so the existence of the T ↗ Z^d limit of (1.22) stays Balaban's bare assertion without (Loc). Prop. A15-N: three unstated steps — the first-order term drops by gauge invariance (SU(2)); the linearized map must include the J channel; d_j counts Balaban's cubes, so m_j changes by a fixed factor; the N^6 power is loose. "Refuted" → "cannot be derived": the two error sources are real (image terms, wrapping polymers), but no explicit N with β^{(N)} ≠ β is computed, cancellation is excluded only generically, and Balaban never claims coefficient equality. (Loc) does not follow from WG_FULL (L2) (walk factors only). Binding set: THEOREM2_PROOF_v4 never names A15; the three uses of A15 in SOURCES_T2_H0 N9 / H0_VERIFY 2.16 need only the definition [I]; the move {A5, A15} → {A5} requires (a) relabelling H0 N9 as a definition-only use and (b) stating in row A5 that the T ↗ Z^d limit of (1.22) exists (p. 264) as Balaban's assertion, so it does not disappear from the binding set.
