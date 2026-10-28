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
