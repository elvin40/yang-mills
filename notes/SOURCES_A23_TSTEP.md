# SOURCES_A23_TSTEP — the large-field T-step rate loss (TRUST_LEDGER A23)

Date: 2026-10-28. Target: row A23 (consumer B22, SOURCES_T2_KAPPA2, SOURCES_BOOKKEEPING §4).
Ledger tags: [P] printed by Balaban (quoted), [V] verified here by computation, [I] reading/interpretation, [R] reduction relying on a printed sketch.
Firewall kept: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. What the project assumes (read 2026-10-28)

- SOURCES_T2_KAPPA2 §2–§5: per cycle the newest generation enters the T step at rate θκ (θ = 1 − m_tot/κ ≥ ½, KAPPA2_VERIFY §4: losses L1–L3 stack additively, m_tot ≤ ~10). The T step multiplies the rate by g_T(δ) = (1 − 10δ)L/2, read from the SMALL-field T step CMP 116 (2.33)–(2.41). Requirement (K1): θ g_T ≥ 1 + 4β, i.e. δ ≤ (1/10)(1 − 2(1 + 4β)/(θL)) = 0.0385 at L = 13, θ = ½, β = ¼.
- KAPPA2_VERIFY §8 (R-a): "The large-field T step (CMP 119 Sect. 3) was NOT checked on images; its loss constant may differ from 10δ." This is exactly A23.
- So the question for A23 is concrete: in the large-field T step, is the per-step rate loss a fixed fraction c·δ of the input rate (then (K1) with 10δ → cδ, still satisfiable by re-choosing δ), or is there a loss that is not a δ-fraction and not covered by L/2?

## 1. Where "CMP 109 Sects. 6–7" is: it is CMP 116 Sects. 1–2 [V]

- CMP 109 (paper [I] of CMP 119, reference 1, l. 1070 of the CMP 119 text) has Sects. 0–5 only (contents, CMP 109 text l. 29–35: Sect. 5 starts p. 292, references p. 298). There is no printed Sect. 6 or 7 in CMP 109. [V]
- CMP 116 (Part II) says: "The first paper is referred to as I, so we refer to its sections and formulas by writing I before the corresponding numbers". Its own sections are 1 (localization) and 2 (exponentiated cluster expansion). CMP 116 p. 2 still contains one preprint label: "Each factor in (6.6) depends on external gauge field configurations…" (text l. 114), where (6.6) is CMP 116 (1.6). [V]
- CMP 119 p. 276–277 cites "(6.9) [I]", "(1.6.10)", "(1.6.34)", "(1.6.41)", "Lemmas 5, 6 [I]", "Sect. 7 [I]", "(1.7.1)", "(7.2)–(7.10)", "(7.11)", "(1.7.12)", "(1.7.13)". These match CMP 116 by content: (1.10) is the localized random-walk expansion; (1.34) is the analyticity space; (1.41) is the expansion Σ V_k(Y, U_{k+1}, B); (2.2)–(2.11) the Mayer expansion and polymer construction; (2.12) E^{(k+1)} = Σ ρ^T(Z_1,…,Z_n)H(Z_1)…H(Z_n); (2.13) its resummation. [V on the text layer]
- Reading [I, strong]: "Sect. 6 [I]" = CMP 116 Sect. 1, "Sect. 7 [I]" = CMP 116 Sect. 2, "(1.6.n)" = CMP 116 (1.n), "(1.7.n)" = CMP 116 (2.n). The preprint of Part I had Sects. 0–7; the journal split it into CMP 109 (0–5) and CMP 116 (6–7 renumbered 1–2).
- Consequence: the two deferral targets in row A23 ("CMP 109 Sects. 6–7" and "CMP 116 (2.33)–(2.41)") are ONE target. The rate bookkeeping of the large-field T step, as far as Balaban prints it anywhere, is CMP 116 Sects. 1–2, ending in (2.33)–(2.41). KAPPA2 already read (2.33)–(2.41) on images.
