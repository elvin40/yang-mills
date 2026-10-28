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
