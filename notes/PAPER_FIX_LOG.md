IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# PAPER_FIX_LOG.md (2026-10-27)
- started; read PAPER_INTRO_VERIFY + PLAN tail
- main.tex: F1, F2, F3 applied verbatim.
- intro.tex: F4, F6, F27 (two legend items, placed after the interval-enclosure item), F28 applied.
- F7 decision: YES. Lemma D (theorem2.tex lem:D) assumes b <= beta_j(g) <= b' with b > 0 for every j (all increments positive); Theorem 2w's trajectory comes from Lemma D'' (window sums only; eventual positivity open). So the shooting solution must cite D''. Fixed in assembly.tex (Thm 4.x), ASSEMBLY.md (l. 13 notation + l. 40 theorem), and setup.tex l. 9 (same wrong citation; not in the F-list, deviation).
- assembly.tex: F5, F7, F8-F16 applied; F8 'launch approved' -> 'launch approved with conditions' (PLAN 2026-10-28 line lists three conditions; deviation). F12: tag replaced by verified reduction (legend item added via F27). New rows: B-T2.H1 (L=13 one-step, P4, G1 sizing), B-S.G3, B-S.Q (+CDC), B-S.EU, B-S.LOC, B-S.hist2, B-S.N3, B-S.N3A, B-S.hol, B-S.holLF, M-A, M-B, M-C, M-D.
- remains.tex: F17-F23 applied ('with conditions' added in F17, same deviation as F8).
- appendix.tex: F24 (factorization moved to proved+verified; one-step-sufficiency bullet replaced by P4 + G1 sizing under proved, unverified), F25 (+ (M-C) in open; new paragraphs numerical [L=13 scan], verified reduction [(Q)/CDC/EU, N3, (H-hol) SF/LF, (M-D), (H-), (H-hist2)], interval enclosure, verified), F26 (17 files from lean/README table at commit 24e2722). Added sources-block entries to proved+verified (G3, LOC, M-A, M-A', M-B, N3A, D3, B-N1).
- NOTE: working-copy ~/git/yang_mills/lean/README.md lacks the 17-file table; commit cf7eb9b reverted 24e2722's table (sync overwrote it?). Not fixed (out of scope).
- setup.tex l. 9 and ASSEMBLY.md l. 13/l. 40: Lemma D -> Lemma D''.
- SOURCES_D3.md header updated.
- README (repo): independence note rewritten; status lines fixed ((M-A') closed, (M-A) -> CMP 102 (189), (M-C) open, N3 full reduction + condition (a), G3 verified, (Q) verified reduction, launch "with conditions"); "Competing account" bullet fixed. DEVIATION: the brief asked to say the account was read "only by a mapping agent"; the paper record (v4 §11 item 2) shows the web sweep (ONLINE_SWEEP §2) also read it directly, so the note names both non-derivation readers.
- intro.tex: one summary paragraph added to the independence record (same facts as README + "predates this one").
- Compiled: pdflatex, bibtex, pdflatex x2; 0 errors, 0 warnings, 0 undefined refs; 56 pages; aux files deleted. README page count 51 -> 56.

## Pass 2 (2026-10-27): trust ledger
- TRUST_LEDGER.md: all TRUST_LEDGER_VERIFY corrections applied (41 replacements). A5 (uniform in j = our reading, R2_VERIFY V3; history not printed; T1 uses Lipschitz form on (0, γ]); A15 printed on CMP 119 p. 278 + (2.24)/p. 249, small-field only; B8 narrowed to R-term part; A2 covers R_3; A3 M-independence [I]; A4/A18 k-uniformity of CMP 102 constants [I]; A12 page CMP 122 II p. 389; new A22, X5 (Savvidy 1977), B22 ((U) + κ → κ/2); B9 "A6" label clash noted; Group C classified (loses generality: C3, C4, C18, C22, (U); changes construction: C9, C10, C16); A17 stays binding (C9 does not discharge it); §4 binding sets, §5 counts, §6 P4 Lean-only note.
- DEVIATION: the corrected ledger gives 13 printed-without-proof Group A items, not 12 (A15 joins the list after its move to "printed"). Of T2's 18: 11; of Theorem A's 6: 4. Intro uses these numbers.
- Also applied (not in the brief, from VERIFY Steps 15–19): A1/A3 "inside Theorem 1" upgraded from [I] to verifier-confirmed (indirect); C18 gets "origin at a site"; §4.2 step 8 names the CDC/EU-route [I] items as non-binding; §2 trailer notes the superseded C² remainder bound.
- remains.tex: new §6.6 "Trust ledger" (three longtables, binding-set paragraphs); superseded sentences replaced (§6 intro, item 3 (F) → X5, Route B "A6" label, item 7 (H0) status, item 9 K-independence (A15/B8), item 10 (A12 page, A22), (FX) R2 inputs → A20); new sources-block bullet for (U)/κ → κ/2 (B22).
- appendix.tex App. B: pointer line to the ledger; (H0) Balaban wording aligned with A5; ledger IDs added to (F), A6 (v4 label), K-independence, B22.
- intro.tex: one trust-boundary paragraph after Theorem B.
- OPEN, not fixed (out of scope): (U) of B22 says it must appear in Theorem B's statement; Theorem B in intro/assembly does not state it.
- Compiled: pdflatex, bibtex, pdflatex ×2; 0 errors, 0 warnings, 0 undefined refs, 0 overfull boxes; 61 pages (was 56); aux files deleted. README page count not updated (not in allowed edit list).
- Coordinator addition: remains.tex §6.6 "Why the mass gap is not on this route" (one paragraph, before the ledger subsection, now §6.7); refs.bib entry shenzhuzhu2023 (CMP 400 (2023) no. 2, 805–851, doi 10.1007/s00220-022-04609-1, arXiv 2204.12737; checked via Crossref). Checks: SZZ action (1.2) = NβRe ΣTr Q_p, condition (1.3) |β| < 1/(16(d−1)) for SU(N) (read from arXiv PDF) ⇒ β_W = N²β < 1/12 at N = 2, d = 4. Balaban's action has the normalized trace (CMP 109 (0.2)), so β_W = 1/g². CMP 122 II p. 389 read on the page image: −2(1+β_0)^{−1}p_0 + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0; at β_0 = 1/7 this is −(1/4)p_0 + 1 + 2κ(100R_k)^d ≤ 0, so p_0 ≥ 8κ·10^8 + 4; the brief's 4κ·10^8 + 2 is the β_0 → 0 bound, valid (strict) for every β_0 > 0, and the text says so. DEVIATION: "hence β_W ≥ 4×10^16" does not follow from the p_0 bound alone (p_0(g) = A_0(log g^{−2})^{p_0} with A_0 large). Added the missing step: threshold g_K p_0(g_K) < 2 (= max ‖U − 1‖ on SU(2)) and κ ≥ 1 ⇒ 1/g_K² > p_0²/4 > 4×10^16.
- Recompiled: 0 errors, 0 warnings, 0 undefined refs; 61 pages; aux files deleted.

## Pass 3 (F7): condition (U) of B22 in Theorem B
- (U) as D2/D3 use it: the last RG scale is ≤ c_* r/(M^a ρ_1) relative to the test-function scale (SOURCES_D2 l. 27; a = 7 crude, a = 3 in D2C). The irrelevance constant of the sourced step carries ρ_1 M/r, so Balaban's E_0 is recovered only under (U) (SOURCES_D3 §(U)). It is a hypothesis of Theorem D3 (SOURCES_D3 l. 53) and is "unchanged" in (xi). The κ → κ/2 decay recovery is a separate, unstated claim (SOURCES_D2_VERIFY (5)).
- Decision: NOT implied. (S_src), N3, and N3A (r_0 ≤ 1/8, condition (a) settled) bound the source amplitude and the coupling gap. (U) bounds the source gradient ρ_1 against the last RG scale. No stated hypothesis bounds ρ_1, and B-N1 uses bumps down to h ~ ε (B21), so (U) is a hypothesis in disguise (ledger Step 27).
- Note: Theorem B as stated assumes (H-U) directly, so (U) is a hypothesis of the block chain that delivers (H-U), not of the compactness argument. The edit states this.
- Edits: ASSEMBLY.md §1.3 (sentence after "Assume (H-U)"; D3 table row gets "(U) [R, B22]"; D2 row already lists convention (U)); paper/intro.tex Theorem B; paper/assembly.tex Theorem existence + B-S.D2 and B-S.D3 table rows. Each names (U) [R, B22], the κ → κ/2 recovery, and the clash with Route B's (U).
- Build: pdflatex, bibtex, pdflatex ×2; 0 errors, 0 undefined; 61 pages; aux files deleted.

## Pass 4 (F8): (U) reclassified as a constant choice (SOURCES_UN1 + VERIFY)
- F7's "(U) is a hypothesis in disguise" reversed per SOURCES_UN1 (verdict stands, UN1_VERIFY). (U) = ρ_1 ≤ c_* r_0/M^a at λ_K = 1, r_0 = Cauchy margin of family (A) (D2C (3.5)). κ → κ/2 recovery stays open [R, B22].
- SOURCES_D2: l. 27 and l. 217 restated as the constant choice; scale-matched N_0 reading at l. 217 dropped (one-line note: unit lattice would depend on h; not used); l. 40 "torus side 1" → "last spacing 1, torus side ℓ".
- ASSEMBLY §1.3: (U) → constant choice [C23], compatible with B-N1; κ → κ/2 kept as [R, B22]. §2.2: F_r = (FX2) domain {‖f‖_∞ ≤ r, ‖∇f‖_∞ ≤ ρ_1/2}. §2.3 step 2: "a ≤ c r δ⁵" → N_U(f) = max(‖f‖_∞/r, 2‖∇f‖_∞/ρ_1), λ_i = 2N_U(f_i), cites D4D5 l. 103/144; moment bound gains ρ_1^{−n}; δ^{−5n} kept as an upper bound so step 4 is unchanged.
- ASSEMBLY_N1 §1 item 3, §4.2, §4.4: N_U rescaling with 1/ρ_1 weight; price C^n, no power of δ; s and D unchanged.
- NOTE: with the factor 2 inside N_U and λ_i = 2N_U (both as briefed), the price is (4/ρ_1)^n = 2^nρ_1^{−n} (ρ_1/2 radius) × 2^n (margin; puts the sup at r/2, i.e. F_{r/2} base points). Files state it this way.
- TRUST_LEDGER: B22 → "κ → κ/2 decay recovery only [R]"; new C23 = (U), "verified compatible with (B-N1): SOURCES_UN1 + VERIFY"; (U) removed from LOSES GENERALITY, C23 added to free choices; B21 "must be reconciled" → resolved. §5: kept B = 22 (B22 narrowed, not removed); C = 23.
- Paper: Theorem B (intro.tex) and Theorem existence (assembly.tex): (U) removed from the hypotheses, one sentence after each theorem on the constant choice. Table cells B-S.D2/B-S.D3: "(U) [C23, constant choice]". remains.tex §6.7: B21, B22 rows, new C23 row, counts sentence (22 B, 23 C).
- NOT edited (outside the allowed list, now stale): ASSEMBLY.md §3 table rows B-S.D2 ("convention (U)") and B-S.D3 ("(U) [R, B22]"); TRUST_LEDGER §4.2 step 2 ("B22 ((U), κ → κ/2 recovery)"); remains.tex l. 55 ("(U) must appear in the statement of Theorem B"); SOURCES_UN1 §2.2/§2.4 factor-2 slips (UN1_VERIFY items 1–2).
- Build: pdflatex, bibtex, pdflatex ×2; 0 errors, 0 undefined refs; 61 pages; aux files deleted. Log shows 38 hyperref PDF-string warnings (math in section titles) and 9 overfull boxes (6 are 1.03 pt longtable width in remains.tex §6.7, 3 elsewhere); none at an edited line.

## Pass 5 (H2 certified)
- Ground truth: PLAN.md last 12 lines; H1_ANALYTIC.md §0–§8; H1_ANALYTIC_VERIFY.md V0–V9 (VERIFY2, P5_VERIFY via PLAN.md). Firewall kept.
- intro.tex: new tag "certified (interval arithmetic, outward rounding; verified)" in §1.4, distinct from point enclosure and numerical; Theorem A(i) (H2) → certified at L = 13 (Thm 5.1); one consequence sentence after Theorem A; Organization line.
- numerics.tex: §5 renamed "Numerical and certified results"; new §5.7 "(H2) at L = 13" = Theorem 5.1 (thm:H2cert) + proof sketch (split, Lemmas S/tower/G, Lemma T + Gauge ⇒ B_L, j-uniformity, arb branch-and-bound) + margins + verification + residue list; §5.4 header, §5.5 L = 13 line, §5.8 cert plan marked superseded at L = 13 (box sweep = cross-check, running).
- theorem2.tex: §3.7 intro, one-step heading, "Status of (H2)" item → certified at L = 13; also §3.8 Route K status and "Single uniform hypothesis" paragraph (outside the (H2) subsection; needed for task 2).
- remains.tex: item H → DONE at L = 13, residue as sub-item H′; L = 3 point-enclosure line; item 11 last sentence; ledger B1 row → certified at L = 13. Counts unchanged (B1 kept as an item).
- appendix.tex App. B: new paragraph for the certified tag; numerical L = 13 item reworded; open list (H2) → L ≠ 13.
- DEVIATION: assembly.tex edited (not on the allowed list) because the dependency table and two "certified at no L" sentences live there: l. 59 Conclusion, rows B-T2.H2 and B-T2.H1, l. 229 critical path.
- DEVIATION: the consequence sentence names L5 and the K-independence of β_j(g) in addition to "fixed-level inputs and Balaban-level items", because Theorem A(i) lists both as hypotheses.
- NOT edited (stale, outside the list): Appendix A Lean count "17 files" (now 18, Tower.lean not listed); remains.tex item on "unverified files H2_CERTIFY_L13 and H2_CERTIFY_P4"; TRUST_LEDGER.md B1 status; assembly.tex "item H" sub-rows (old plan).
- THEOREM2_PROOF_v4.md: dated line at end of §5 and under §10 item H. README.md: (H2) line → certified at L = 13, L = 13 cell-certificate line → cross-check, page count 63, Lean 18 files.
- Build: pdflatex, bibtex, pdflatex ×2; 0 errors, 0 undefined refs; 63 pages (was 61); 40 hyperref PDF-string warnings, 9 overfull boxes (same 9 as Pass 4); aux files deleted.

## Pass 6 (round 3)
- Ground truth: PLAN.md from "2026-10-28 ~01:10 UTC Elvin: set Opus subscription subagents" to the end; TRUST_LEDGER rows; lean/README.md (21 files). Firewall kept.
- TRUST_LEDGER: † markers removed; new row A1w (walk-expansion form of A1, CMP 99 Thm 3.15); A1, A2, A3, A4, A5 (7′), A13, A15 rows; B8 (moved to Theorem 1 input), B10, B13, B19, B21 ((S) clauses reduced), B22, C17 rows; §4 rewritten (round-3 DAG, item 9 closed, 7′ verifier running, G4 off-chain); §5 counts; two §6 bullets (item 9, G4).
- New counts: Group A 20 (14 printed, 13 cited-but-unproved, A1–A4 of these now verified reductions; 6 unprinted); X 5; B 22; C 23. T1 alone: {A5, A15} + B1–B7 + X5. T1 ⇒ Thm 1: 4 A (A5, A11, A13, A15) + 9 B + X5. T2: 17 A + X2–X5 + 21 B; 11 of the 17 cited-but-unproved.
- intro.tex: Theorem A(i) drops K-independence, adds 7′ [verifier running]; consequence sentence; trust-boundary paragraph (4/17/20, 3/11/13, A1–A4 collapse).
- remains.tex: items 7 → 7′, 9 closed, B6, Route B line; §6.3 (H-hist) large field, new "Balaban-level core" bullet (A1, A1w, A2, A3, A4), (FX)/(M-C), B22, B-N1 (S); item 10 readings; §6.7 tables (A1–A5, A1w new, A13, A23 new, A9/A12/A20/A22 removed to a "Verified readings" paragraph; B8, B10, B13, B17, B21, B22; C17, C23); binding sets and counts.
- appendix.tex: App. A 18 → 21 files (Schur, CombesThomas, Interp); App. B round-3 verified reductions, item 9, 7′ lift, open/argued lists.
- assembly.tex table rows: B-T2, item 7′, item 9, B-S.D2, B-S.hist, B-S.Ggain, B-S.Q, B-S.LOC, B-S.FX, B-S.holLF, M-C, B-N1.
- DEVIATION: assembly.tex l. 57, l. 59, l. 229 (outside the table) still listed K-independence as open; edited as in Pass 5.
- NOT edited: abstract (has no counts); theorem2.tex (no K-independence claim found); THEOREM2_PROOF_v4.md, ASSEMBLY.md, ASSEMBLY_N1 (F9 alignment).
- FLAG: SOURCES_GGAIN_NONMONO_VERIFY.md exists (01:09 local) and grades item 7 → 7′ YES as a [P] item; tags kept at "verifier running" as briefed.
- README.md (~/git/yang_mills): Target 1 open line, (H-hist), new Balaban-level core line, (M-C)/B21/B22, Lean 21, 66 pages.
- Build: pdflatex, bibtex, pdflatex ×2; 0 errors, 0 undefined refs; 66 pages (was 63); 40 hyperref PDF-string warnings, 9 overfull boxes (unchanged); aux files deleted.

## Pass 7 (F9)
- ASSEMBLY_N1.md: aligned 2026-10-28 with the verified C¹ + Lemma C form (SOURCES_D4D5 §5.1–§5.2, HHIST_N1_VERIFY claim 6, SOURCES_B21_S_VERIFY §5). Dated line added; 24 exact replacements in header result line, §0, §1, §3.4, §4.1, §4.3–§5.3.
- Form: N(f) = max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1) (D4D5 form, single factor 2 in λ_i = 2N); order (n!)^{1+η}; s = 6; D > 1 (D > 2 fallback, order 2+η without coarsest-scale (FX2) radius); D/σ = 3/8; min diam ≤ σ added; C_L = (…)^3 ≈ 18 (old ≈ 11.2 was a slip).
- NOT edited (outside brief): §2.1 l. 38–39, §3.1 (D) with |β_i| ≤ 10 (valid a fortiori), §3.2, §4.2 (still C⁵ powers (1+|q|)^5 h^{−5}), §6 ledger items 1, 3, 4 and last line (s = 11, 2+η). These now disagree with §4–§5.
- paper/assembly.tex: 2 edits (B-N1 row: alignment done, open list trimmed; B-N1 sketch closing sentence: supersedes ∂^5, δ^{−5n}, s ≥ 20). Sketch items 2 and 5 left as the historical route.
- Fix outside brief: bare SOURCES_GGAIN_NONMONO_VERIFY wrapped in \file{} (assembly.tex ×2, remains.tex, appendix.tex); it caused 12 "Missing $" errors.
- Build: pdflatex, bibtex, pdflatex ×2; 0 errors, 0 undefined refs or citations; 66 pages; aux files deleted.

## Pass 8 (cloud audit)
- Source: reports/PAPER_AUDIT_CLOUD.md (cloud PR #1; 90 graded rows: 57 MATCH, 9 OVERSTATED, 1 UNDERSTATED, 23 STALE; fix list F1–F35).
- Applied all 35 fixes (F26 and F31 optional, applied): intro.tex F1–F4; remains.tex F5–F18; appendix.tex F19–F26 (F20 Resolvent item inserted after Interp; F21 item 7′ moved to proved+verified with the KE′/H_Q, S2, S123 item; F23 deletes (U) from "argued"; F26 Round 3 revision entry); assembly.tex F27–F35.
- DEVIATION (PLAN newer than the audit: SOURCES_WG_VERIFY): F8, F13, F24 add that (W_G) is reduced to Balaban's printed proof sketches (Thms 3.7, 3.9, 3.10) + Neumann (3.130) + CMP 96 Lemma 2.1, with WG-1 order α_0 ≤ c′M^{−11}.
- DEVIATION (PLAN: SOURCES_S2_G1_V7_VERIFY): F9 "intersect reading [I]" → "boundary-contact reading (item (i), [I-forced])"; F14 "two [I]" → "item (i) [I-forced] + RM distance [I]".
- A3 constant: the only 48d occurrence (remains l. 60) replaced by F10; no Λ = 1.43e8 or 1.403e−8 strings in the paper.
- README.md (~/git/yang_mills): Balaban-level core line (A3 full proof + corrected constant; A1w → (W_G) → printed sketches; A2 → (W^c); G_1 closed), Lean 22 files, 68 pages.
- NOT edited: "(H2) at L ≠ 13" open items; PR #2 now certifies (H1_L) at L = 15, 17, 21 (numerics/H1_OTHER_L.md), the paper does not yet say so. Ledger lags of audit §4 not applied (outside the paper).
- Build: pdflatex, bibtex, pdflatex ×2; 0 errors, 0 undefined refs; 68 pages (was 66); 10 overfull boxes (was 9); aux files deleted.
