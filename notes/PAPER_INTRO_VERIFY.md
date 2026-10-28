# PAPER_INTRO_VERIFY.md

Second-pass verification of paper intro/remains/appendix B/assembly table vs ground truth. Started 2026-10-27.

## 1. Independence statement (task 5)

Sources compared: paper/intro.tex l. 57-75; ~/git/yang_mills/README.md l. 40-48 (repo README; no README.md in the working folder); THEOREM2_PROOF_v4.md §11.
- Paper vs v4 §11: verbatim up to LaTeX markup, the added \cite keys, and §3.5/§5 -> \ref{sec:symbols}/\ref{sec:H2}. Paper adds a lead paragraph (l. 59). MATCH to v4 §11.
- Paper vs README.md: NOT verbatim. README has a different, shorter note (l. 42) plus the citation block (l. 46) and "Their public, timestamped account predates this one. Any writeup from this repository must cite it." (l. 48). The citation block in the paper (l. 61) equals README l. 46 plus "\cite{...}" and "Suggested keys: ...". The README sentence "predates this one" is absent from the paper.
- Content conflict: README l. 42 and l. 34 say the S-A account "was not read by any derivation here". Paper item 3 (l. 69) says the bounded-kappa idea entered KAPPA_BOUNDED through the map. The paper is the more exact record; the README claim is OVERSTATED (README fix, not .tex).
- Paper item 1 says "This chapter"; in the merged article it should say "The Theorem 2 chapter (Section 3)" or "This paper". Minor.

## 2. Theorem A/B hypothesis lists (task 4)

Theorem A (intro.tex l. 21-28) vs v4 §1.3 + §10.
- L condition, SU(2), d = 4, conclusions (b), (c'), (S): MATCH v4 §1.3.
- (i) hypothesis list (H2), (PI), (F), (M_j), V1, (G2), L5: MATCH v4 §10 items H, 2-6, 8; (H0) (item 7) covered by the L > 11 clause.
- MISSING: v4 §10 item 9 (K-independence of beta_j(g), [open]). The dependency table row B-T2 carries it; Theorem A(i), the §4 (B-T2) status paragraph (assembly.tex l. 56), and the abstract do not.
- (ii) "proved, unverified (sweep)": MATCH v4 §1.4/§10 item 10 and README.
- "Route B also gives (i)": Route B needs (T1), (DF), A6, LW (5.7), theta_* < 1 and drops (PI), (M_j), V1 (v4 §10 B1-B7). Theorem A does not say Route B has a different hypothesis set. Minor; add "under its own inputs (Section 6)".
- Nothing extra.

Theorem B (intro.tex l. 30-32; Theorem 4.x in assembly.tex l. 24-25) vs ASSEMBLY §1.3 + §3.
- SU(2), d = 4, L odd large, ell even, shooting solution with g_k in ]0, gamma], g_K = g, (H-U): MATCH.
- intro omits "K >= K_0" and "gamma = Balaban's small constant, g small"; Theorem 4.x keeps them. Minor.
- Global conditions GC1-GC3 are not in the statement; given (H-U) they are not needed for the proved part, so not missing.
- Theorem 4.x cites Lemma D for the shooting solution; Theorem 2w uses Lemma D'' (Lemma D needs positive increments). PLAN.md flag "queue B5". STILL OPEN in the .tex.
- Status tag "proved modulo named blocks" is not a tag in the §1.4 legend. ASSEMBLY_VERIFY confirms the in-chapter proofs (assembly.tex l. 230). Minor legend gap.

## 3. Abstract (main.tex l. 46) and §1 claims (task 1)

Ground truth: PLAN.md l. 182-231, verifier files named. Paper state = PLAN through SOURCES_HBETA_N3_VERIFY (l. 196); 30 later entries not in the paper.

Abstract
- A1 Theorem 2 never published: MATCH (verified quote).
- A2 "weak Theorem 2 ... enough for Theorem 1, follows from (H2) together with named fixed-level inputs": OVERSTATED (minor). Route K also needs L5 (history) and item 9 (K-independence), which are not fixed-level; "enough for Theorem 1" is the sweep, [proved, unverified].
- A3 "shooting lemmas ... formalized in Lean 4": STALE (understated). Lean has 17 files (lean/YmLean/), incl. TheoremK, Gronwall, TheoremC1, BlockNorm (rho2_le), OishiRump, CertBridge, StripBound, Envelope, Divergence, CubeCount.
- A4 compactness + OS0-OS3 given (H-U): MATCH (ASSEMBLY_VERIFY).
- A5 "(FX) ... now reduced to one open strip bound": STALE. N3 is reduced (HBETA_N3_VERIFY) to (H-hol) + real (H-hist) + (H2-hist); condition (a) settled (N3A_VERIFY); (H-hol) small field = verified reduction (HHOL_VERIFY), large field = verified reduction to (M-A), (M-B), (M-C) + (H-hist2) (HHOL_LF_VERIFY); (M-B) verified (MB_VERIFY, p_0 >= 17/(gamma_0 A_1^2), theta_W + tau_C <= 0.2); (M-A) reduced to (H-) and (M-A') closed (MA_VERIFY, MA2_VERIFY; rests on Balaban CMP 102 (189), an existing trust item); (M-C) open.
- A6 margins 31%/58% at L = 3/5: MATCH (B2_TWOSTEP_VERIFY 5, H2_LARGE_L_VERIFY 3).
- A7 one-point interval enclosure at L = 3: MATCH (H2_CERTIFY_VERIFY).
- A8 certified at no L: MATCH.
- A9 "no value exists in Balaban's range L > 11": STALE. H2_CERTIFY_L13: float rho_1(inf) = 2.0895 at L = 13, sup rho_1^2 = 4.37 < 13, so (H2) holds numerically at L = 13 by rho2_le (factorization verified, H2_CERTIFY_VERIFY; Lean BlockNorm). No verifier for the L = 13 scan (G5 open). Certification sized (~900-1,100 core-h after G1), launch approved 2026-10-28 with conditions, not launched.
- A10 not a Clay solution: MATCH.

§1
- l. 11, l. 13 quotes: MATCH (2).
- l. 19 "the paper records the status of every hypothesis": STALE (round-2 sources hypotheses absent from the table).
- Thm A(i) tag proved+verified, conditional: MATCH (KAPPA_BOUNDED_VERIFY (i)-(v), B2_TWOSTEP_VERIFY 3).
- Thm A(i) hypothesis list: OVERSTATED (omits v4 §10 item 9, see §2).
- Thm A(ii) proved, unverified (sweep): MATCH.
- l. 27 Route B also gives (i); both rest on (H2): MATCH (tag decision PLAN l. 183).
- Thm B proved modulo named blocks: MATCH. Nontriviality conditional on (NT): MATCH.
- l. 34 three blocks, single status table: MATCH. l. 36 non-results: MATCH.
- l. 45 Lean tag, l. 47 numerical tags, l. 55 "not verified as one document": MATCH (3).
- Independence record: MATCH to v4 §11 (see §1).
- l. 79 "Appendix A lists the Lean formalization": STALE (App. A lists 9 of 17 files).
Counts: abstract 6 MATCH / 1 OVERSTATED / 0 UNDERSTATED / 3 STALE; §1 13 / 1 / 0 / 2.

## 4. Dependency table (assembly.tex l. 148-214) and Appendix B (task 2)

Table: 56 rows.
- MATCH (49): B-T2 (carries item 9), B-T2.a, B-T2.b, B-T2.1-.5, B-T2.B, the 4 item-1 rows, (HS), 2 item-H rows, items 2-13, the 7 Route B rows, B-T2.6, B-S, B-S.D1, D2, D2C, Hbeta, D4, B-C, B-REG, B-TI, B-RP, OS3, B-NT, E13.
- STALE (5 rows):
  - B-T2.H2 (l. 163): no L = 7-13 rho_1 values, no one-step route at L = 13, no P4 proof, no G1 sizing, no launch approval; the "1.5e4 core-h, UNSUPPORTED" estimate is the L = 3 two-step route only.
  - B-S.hist (l. 197): chain now continues G-gain -> G3 -> (Q) -> (3.132) + (E_U) + LOC (G3_VERIFY, Q_VERIFY, CDC_VERIFY, EU_VERIFY, LOC_VERIFY: verified reduction to four Balaban-level assertions). HHIST/HHIST_N1_VERIFY not cited. Tag "proved, conditional" is not in the legend.
  - B-S.Ggain (l. 198): "chi_k surface term narrow gap", "G3 unproved" superseded: G3 proved given (Q), verified (G3_VERIFY: holds modulo c_- > 0 and the B/B' cut; cut closed by SOURCES_Q, c_- reduced as above).
  - B-S.thr (l. 199): "(H-hist2) (a new hypothesis)" superseded: HHIST2_VERIFY = verified reduction, no new input beyond the (H-hist) chain.
  - B-S.FX (l. 201): "(FX) now rests on N3 open" superseded (see A5).
- UNDERSTATED (2 rows):
  - B-S.D3 (l. 200): "proved, unverified" but SOURCES_D3_VERIFY, D3R_VERIFY, D3W8_VERIFY exist (confirmed with corrections; route (a) Lemma F2' confirmed given (W4), (Eps), F1, (D)). The SOURCES_D3.md header "unverified" is itself stale. Also "now to N3" is STALE.
  - B-N1 (l. 203): ASSEMBLY_N1 derives (B-N1) given (S); HHIST_N1_VERIFY confirms it (three gaps closed; residual risk = D3R constants down to separation 16 eps). Row says only "route sketched".
- Paragraphs: table intro (l. 148, "through the entries ... H2_CERTIFY_VERIFY") and critical path (l. 214, "(H-hist2), (FX) through N3"): STALE (2).
- Missing rows: L = 13 one-step certification; G3/(Q)/CDC/EU/LOC; (H-hol) small/large field, (M-A), (M-A'), (M-B), (M-C), (M-D); N3 and N3A; (H-hist2).
Table counts: 49 MATCH / 0 OVERSTATED / 2 UNDERSTATED / 7 STALE (5 rows + 2 paragraphs).

Appendix B (33 bullets).
- UNDERSTATED (1): l. 42 "One-step sufficiency rho_1^2 < L => (H2)" under proved, unverified. H2_CERTIFY_VERIFY confirms the exact factorization rho_2 <= rho_1(j) max_l rho_1(j-1, k_l); Lean BlockNorm.rho2_le.
- STALE (1): l. 52 "(H2) (certification; numerical at L = 3, 5, 9)" (L = 7, 11, 13 values exist). Omissions in the ledger: no "interval enclosure, verified" entry (point enclosure, P1, Oishi-Rump); no H2_CERTIFY_P4 (proved, unverified; identity (D) in Lean Divergence); no sources-block entries at all, although §6 l. 65 says App. B lists the B-S.D3 draft.
- Other 31 bullets: MATCH to v4 §9 and the cited verifiers.
- Appendix A (l. 3-10): STALE; lists LemmaDPrime, LemmaDE, LemmaDDoublePrime, Telescoping, DetIdentities, AbelianCount, LemmaH only.
App. B counts: 31 / 0 / 1 / 1.

## 5. §6 What remains (task 3)

35 items. MATCH 28 (items 1-9, 12, B1-B7, l. 35, l. 11 enclosure, B-S open, D2C/Hbeta, NT, E13, 10, B8, 13, "not verified as one document", stronger statements).
- STALE (5):
  - H (l. 9): "numerical at L = 3, 5, 9"; "no explicit Lipschitz constant exists today" (the Lipschitz grid route is refuted, replaced by per-cell invertibility + mean-value enclosure); "explicit O5 constant" (j-tail via one interval run over M >= M_0, argued); "No value exists at L > 11".
  - 11 (l. 42): "(H2) at L = 3, 5 (scans), 7 (face diagonal), 9 (one point) ... The Windows queue continues to L = 15" (rho_1 at L = 11, 13 ran on the Mac).
  - (H-hist) (l. 51), (H-hist2) (l. 52), (FX) (l. 53): see table rows.
- UNDERSTATED (2): B-N1 (l. 55); l. 65 "the sourced large-field draft (B-S.D3)" listed as proved, unverified.
§6 counts: 28 / 0 / 2 / 5.

TOTAL: MATCH 127, OVERSTATED 2, UNDERSTATED 5, STALE 18.

## 6. Prioritized fix list (task 6). Do not apply here.

P1 (abstract, headline numbers)
F1. main.tex l. 46.
 Current: "on a hypothesis (FX) that is now reduced to one open strip bound,"
 Replace: "on a hypothesis (FX) that is now reduced to a holomorphy bound (H-hol) for Ba{\l}aban's increments together with history bounds and three named inputs of the large-field step,"
F2. main.tex l. 46.
 Current: "but (H2) is certified at no $L$, no value exists in Ba{\l}aban's range $L>11$, and the result"
 Replace: "and at $L=13$, inside Ba{\l}aban's range $L>11$, the one-step bound $\sup\rho_1^2=4.37<13$ holds in floating point (not yet verified); (H2) is certified at no $L$, and the result"
F3. main.tex l. 46.
 Current: "follows from one uniform inequality (H2) on a two-step minimizer map together with named fixed-level inputs; the shooting lemmas of this step are also formalized in Lean 4."
 Replace: "follows from one uniform inequality (H2) on a two-step minimizer map together with named fixed-level and history inputs; the shooting lemmas, the arithmetic of Theorem K, and the bridge lemmas of the certifier are formalized in Lean 4."

P2 (theorem statement)
F4. intro.tex l. 24.
 Current: "and the history hypothesis L5 (Section~\ref{sec:L5})."
 Replace: "the history hypothesis L5 (Section~\ref{sec:L5}), and the $K$-independence of $\beta_j(g)$ (item 9 of Section~\ref{sec:remains})."
F5. assembly.tex l. 56.
 Current: "plus L5 and (H0) at odd $L>11$."
 Replace: "plus L5, the $K$-independence of $\beta_j(g)$, and (H0) at odd $L>11$."
F6. intro.tex l. 27.
 Current: "also gives (i). Both routes rest on (H2)."
 Replace: "also gives (i), under its own input set (items B1--B7 of Section~\ref{sec:rem-inputs}). Both routes rest on (H2)."
F7. assembly.tex l. 25 (queue B5; check ASSEMBLY.md first).
 Current: "a shooting solution (Lemma~\ref{lem:D})"
 Replace: "a shooting solution (Lemma~\ref{lem:Ddprime})" — only if the check confirms Lemma D needs positive increments; else leave.

P3 (dependency table, STALE rows)
F8. assembly.tex l. 163, row B-T2.H2, Current tag column: append after "an estimate graded UNSUPPORTED":
 "; one-step route: $\rho_1(\infty)=1.760,\dots,2.0895$ at $L=3,\dots,13$, $\sup\rho_1^2=4.37<13$ at $L=13$ \status{numerical} (no verifier); $\rho_2\le\rho_1(j)\max_l\rho_1(j-1,k_l)$ \status{proved+verified; Lean}; premise P4 \status{proved, unverified}; $L=13$ certificate sized at about 900--1{,}100 core-hours after fix G1, launch approved, not launched"
 Files column: add \file{H2_CERTIFY_L13.md}, \file{H2_CERTIFY_L13_G1.md}, \file{H2_CERTIFY_P4.md}.
F9. assembly.tex l. 198, row B-S.Ggain.
 Current: "Lemma G4 corrected; $\chi_k$ surface term narrow gap; large field, higher derivatives \status{open}" and hypotheses "G3 unproved, not at $g=0$"
 Replace: "Lemma G4 corrected, fix reduced; $\chi_k$ surface term = Lemma G3, proved given (Q) \status{proved+verified, conditional} (\file{SOURCES_G3_VERIFY}); (Q) reduced to CMP 99 (3.132), (E$_U$), and the localization lemma LOC \status{verified reduction} (\file{SOURCES_Q_VERIFY}, \file{SOURCES_CDC_VERIFY}, \file{SOURCES_EU_VERIFY}, \file{SOURCES_LOC_VERIFY}); large field \status{open}" ; hypotheses: "Ba{\l}aban's $R_2$ bound (2.16), $\gamma_0$ for general $U$, kernel-moment bounds for (E$_U$); not at $g=0$"
F10. assembly.tex l. 199, row B-S.thr.
 Current: "conditional on (H-hist2) (a new hypothesis of the (H-hist) kind)"
 Replace: "conditional on (H-hist2); (H-hist2) \status{verified reduction} to the real uniform (H-hist), no new input (\file{SOURCES_HHIST2}, \file{SOURCES_HHIST2_VERIFY})"
F11. assembly.tex l. 201, row B-S.FX.
 Current: "(FX) now rests on N3 \status{open}"
 Replace: "N3 reduced to (H-hol) + real (H-hist) + (H2-hist), condition (a) settled \status{verified reduction} (\file{SOURCES_HBETA_N3_VERIFY}, \file{SOURCES_N3A_VERIFY}); (H-hol) small field \status{verified reduction} (\file{SOURCES_HHOL_VERIFY}); large field \status{verified reduction} to (M-A), (M-B), (M-C), (H-hist2) (\file{SOURCES_HHOL_LF_VERIFY}); (M-B) \status{proved+verified} with $p_0\ge17/(\gamma_0A_1^2)$, $\theta_W+\tau_C\le0.2$; (M-A) reduced to (H$-$), (M-A$'$) closed, (H$-$) rests on CMP 102 (189) \status{verified reduction} (\file{SOURCES_MA_VERIFY}, \file{SOURCES_MA2_VERIFY}); (M-C) \status{open}". Hypotheses column: "(M-C); CMP 102 (189); $R_{K+1}\ge1$, $C_c$ independent of $g$".
F12. assembly.tex l. 197, row B-S.hist: append "; the (G-gain) chain continues in row B-S.Ggain (G3, (Q)); Lemma HH: \file{SOURCES_HHIST.md}, \file{SOURCES_HHIST_N1_VERIFY.md}". Replace tag "\status{proved, conditional}" by "\status{verified reduction}" or add that tag to the §1.4 legend (F19).

P4 (UNDERSTATED rows)
F13. assembly.tex l. 200, row B-S.D3.
 Current: "complete draft, \status{proved, unverified}. ... reduced to O1(b), O2, O3, and now to N3 (row B-S.FX)"
 Replace: "draft verified with corrections (\file{SOURCES_D3_VERIFY}, \file{SOURCES_D3R_VERIFY}, \file{SOURCES_D3W8_VERIFY}; route (a), Lemma F2$'$ confirmed given (W4), (Eps), F1, (D)). (FX) is a genuine new hypothesis (\file{SOURCES_D4D5_VERIFY.md}); its state is in row B-S.FX"
F14. assembly.tex l. 203, row B-N1.
 Current: "route sketched (Section~\ref{sec:BN1}); the (S$_{\mathrm{src}}$) $\Rightarrow$ (H-U) step confirmed given (FX)"
 Replace: "derived given the sourced Gevrey bound (S) (\file{ASSEMBLY_N1.md}; confirmed, \file{SOURCES_HHIST_N1_VERIFY.md}); (S$_{\mathrm{src}}$) $\Rightarrow$ (H-U), $s=6$, $D>1$, confirmed given (FX); residual: uniformity of the D3R constants down to separation $16\varepsilon$"
 Also assembly.tex l. 75: add one sentence "\file{ASSEMBLY_N1.md} closes the three gaps given (S) (confirmed in \file{SOURCES_HHIST_N1_VERIFY.md})."

P5 (table framing)
F15. assembly.tex l. 148.
 Current: "(through the entries \file{SOURCES_FX_O23.md}, ... \file{H2_CERTIFY_VERIFY.md})"
 Replace: "(through the entry \file{SOURCES_MA2_VERIFY.md}, 2026-10-28)"
F16. assembly.tex l. 214.
 Current: "then B-S: (H-hist) via (G-gain) in the large-field case, (H-hist2), (FX) through N3, and the B-N1 bridge."
 Replace: "then B-S: the real uniform (H-hist) (large-field case; Ba{\l}aban-level inputs of G3), (M-C), and the residual uniformity of B-N1."

P6 (§6)
F17. remains.tex l. 9: replace "\status{numerical at $L=3,5,9$; certification open}" by "\status{numerical at $L=3,5,9$ (two-step) and $L=13$ (one-step, $\sup\rho_1^2=4.37<13$, unverified); certification open}"; delete "an explicit O5 constant," and "no explicit Lipschitz constant exists today."; replace "No value exists at $L>11$." by "At $L=13$ the one-step certificate is sized at about 900--1{,}100 core-hours after fix G1; launch approved, not launched (\file{H2_CERTIFY_L13_G1.md})."
F18. remains.tex l. 42: replace "(H2) at $L=3,5$ (scans), 7 (face diagonal), 9 (one point). All are outside Ba{\l}aban's range ($L>11$), so they are supportive only. The Windows queue continues to $L=15$." by "(H2) at $L=3,5$ (scans), 7 (face diagonal), 9 (one point); $\rho_1$ at $L=3,\dots,13$. Only $L=13$ is inside Ba{\l}aban's range, and it is floating point."
F19. remains.tex l. 51: replace "Open: the large-field case, higher derivatives, the narrow $\chi_k$ surface-term gap, Lemma G4 (corrected; its fix is reduced), and G3." by "Lemma G3 (the $\chi_k$ surface term) holds given (Q); (Q) is a verified reduction to CMP 99 (3.132), (E$_U$), and LOC. Second derivatives: (H-hist2). Open: the large-field case and the Ba{\l}aban-level inputs of (Q)."
F20. remains.tex l. 52: replace "(H-hist2), a new hypothesis of the (H-hist) kind, on which ... depends;" by "(H-hist2), on which the threshold-shell bound (H-thr) depends: \status{verified reduction} to the real uniform (H-hist), no new input;"
F21. remains.tex l. 53: replace "The remaining item is N3, the HBETA strip bound $|\delta w|\le\tfrac32\tau$ \status{open}, with" by "N3, the HBETA strip bound $|\delta w|\le\tfrac32\tau$, is reduced to (H-hol) + real (H-hist) + (H2-hist) (condition (a) settled); (H-hol) is a verified reduction to (M-A) (via (H$-$) and CMP 102 (189)), (M-B) (verified), and (M-C) \status{open}. Also"
F22. remains.tex l. 55: replace "\status{open}: uniformity ... gaps (Section~\ref{sec:BN1})." by "derived given (S) (\file{ASSEMBLY_N1.md}, confirmed); residual: uniformity of the D3R constants down to separation $16\varepsilon$."
F23. remains.tex l. 65: delete ", and the sourced large-field draft (B-S.D3)"; add ", and the unverified files H2\_CERTIFY\_L13 and H2\_CERTIFY\_P4".

P7 (appendices, legend)
F24. appendix.tex l. 42: move "One-step sufficiency ..." to proved+verified as "Exact one-step factorization $\rho_2\le\rho_1(j)\max_l\rho_1(j-1,k_l)$ (\file{H2_CERTIFY_VERIFY}; Lean \texttt{rho2\_le})".
F25. appendix.tex l. 52: "numerical at $L=3,5,9$" -> "numerical at $L=3,5,9$; one-step at $L=13$". Add a paragraph \status{interval enclosure, verified}: point enclosure, P1, Oishi--Rump (\file{H2_CERTIFY_VERIFY}).
F26. appendix.tex l. 3-10: list the 17 files of lean/YmLean/ (add TheoremK, Gronwall, CubeCount, BlockNorm, OishiRump, TheoremC1, StripBound, Envelope, Divergence, CertBridge) with one line each from PLAN.md.
F27. intro.tex l. 52: add tags used in the paper but absent from the legend: "\status{verified reduction}: a reduction confirmed by a verifier file; the inputs stay open." and "\status{proved modulo named blocks}: proved given the hypotheses owned by the named blocks."
F28. intro.tex l. 67 (optional): "This chapter was written" -> "Section~\ref{sec:flow} was written" (v4 §11 wording refers to the Theorem 2 chapter).

Outside the .tex: ~/git/yang_mills/README.md l. 34 and l. 42 say the S-A account "was not read by any derivation here"; v4 §11 item 3 records that the bounded-kappa idea entered through the map. README l. 26 says (M-A') open; SOURCES_MA2_VERIFY closes it. SOURCES_D3.md l. 3 header "unverified" is stale.

