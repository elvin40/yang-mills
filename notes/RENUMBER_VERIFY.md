# RENUMBER_VERIFY — verification of the renumbering apply pass (2026-10-28)

Verdict: PASS WITH CORRECTIONS. The mechanical checks pass. Lean builds from a clean YmLean build with 0 errors, 0 sorry, and only the standard axioms. The CanonOrder theorems (id_eq_rank, edges_forward_num, canon_acyclic, canon_wf, counts = 50 lines / 170 edges) use no axioms. The paper compiles to 137 pages with 0 undefined and 0 multiply defined labels or references. IDS.md defines 1,058 ids once each, and every new-scheme reference in the live files resolves, except the two expected provisional ids H-401 and H-474 in dated PLAN entries. The content checks found real errors. Of the 60 sampled replacements, 54 are correct and 6 are wrong. A search for the same patterns over all live files found about 40 wrong occurrences in 5 patterns. W1: section references of SOURCES_A8_POS / SOURCES_A18_REGULAR / SOURCES_A17_A19 written as ledger rows (16). W2: Route B items B1–B8 written as R-025–R-032 (10). W3: the v4 label A6 and Theorem A3 written as R-007 / R-004 (3). W4: the neutral-sector (N2) written as H-225 (4). W5: Lean names T1/T2 written as "Target 1/2" (3). There are also 2 missed old ids and 2 ledger sentences whose ranges changed meaning (R-002 and R-011 now inside R-001–R-015). In IDS.md, 10 L ids name a defining file that does not contain them; 9 of these name THEOREM2_PROOF.md for results stated in THEOREM2_PROOF_v2–v4. Seven "To review" groups need a merge (or, for A1-W, a rename). None of these errors breaks a build or a reference; each one makes a sentence point to the wrong object. The correction list at the end (C1–C14) is executable. The ~1,000 manual edits of the apply pass were outside the sample population.

Scope. I verified a snapshot of the working folder, taken at the start of this run: `/tmp/rn_verify_snap/` (rsync without .venv, .lake, balaban, archive; firewall files deleted from the snapshot before any grep). Other agents edited TRUST_LEDGER.md, IDS.md, INDEX.md and INBOX.md during the run; this report describes the snapshot, not later states. The apply artifacts in /tmp/rn_apply/ were used read-only. Firewall: I did not read /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md or reports/ONLINE_SWEEP.md.

Snapshot corpus: 572 files (*.md, paper/*.tex, lean/**/*.lean, **/*.py; not .lake, .venv, paper/drafts). 420 carry the frozen banner; 152 do not ("live" in the sense of the brief).

## 4. Lean — PASS

- Method: APFS clone of the live `.lake` into the snapshot (`cp -Rc`), then `rm -rf .lake/build` and `lake build`, so every YmLean module was rebuilt from the snapshot source (Mathlib reused).
- Result: `Build completed successfully (8752 jobs)`, 43 s wall. 0 errors. 1 linter warning (Divergence.lean:91, `tac1 <;> tac2` style hint; not new, not an error).
- sorry: 0 "declaration uses 'sorry'" messages; 0 `sorry` tokens and 0 `axiom` declarations in YmLean/*.lean code.
- In-build `#print axioms`: 238 declarations depend on [propext, Classical.choice, Quot.sound], 1 on [propext, Quot.sound]. No other axiom appears.
- `#print axioms` (separate file, `lake env lean`): `CanonOrder.id_eq_rank`, `edges_forward_num`, `canon_acyclic`, `canon_wf`, `counts` — each "does not depend on any axioms".
- `counts : canonOrder.length = 50 ∧ canonEdges.length = 170` (by decide). So 50 canon lines, 170 edges. 45 .lean files in YmLean/, all 45 imported by YmLean.lean.
- No `B<n>` constructor token remains in CanonOrder.lean.

## 5. Paper — PASS

- Method: clean build in the snapshot (deleted main.aux/.bbl/.toc/.out/.log/.pdf first), `latexmk -pdf -interaction=nonstopmode`.
- Result: exit 0, `Output written on main.pdf (137 pages)`. 0 "undefined" lines (references and citations), 0 "multiply defined" lines, 0 `!` errors. bibtex: 0 warnings.
- 65 "hyperref Warning: Token not allowed in a PDF string (Unicode)". The apply pass logged the same 65 (/tmp/rn_apply/latex.log, latex2.log). I did not compile the pre-apply paper, so I cannot say whether the ids in section titles added any. These warnings affect only PDF bookmarks.

## 1. Every new id defined once — PASS (2 registry notes)

- IDS.md has 1,058 registry rows in the family sections: R 51, K 50, X 5, N 50, Q 62, H 338, L 350, T 152. 0 duplicate ids. All 232 "To review" ids are registry ids.
- Home-file row keys: TRUST_LEDGER.md 96 table keys, SOURCES_ORDER_CANON.md 50 line keys (`N-nnn.`), CLOSURE_PLAN.md 144 table keys. Each key occurs once in its file and is registered. 0 unregistered keys.
- Ids whose defining file is a home file but which are not a row key there (15). I located each one by hand:
  - R-011 (A10′): defined inside row R-010 (documented in the apply report). OK.
  - R-047–R-051 (A9, A12, A20, A21, A22): defined as bullets of TRUST_LEDGER §6 ("  - R-048: …"). OK.
  - H-057 (C): defined in CLOSURE_PLAN §4 prose. OK.
  - H-065 (A18-3), H-125 (H_κ), H-216 (K1′), H-218 (K3), L-220 (Lemma M1), L-221 (Lemma M2): defined inline in SOURCES_ORDER_CANON. H-241 (R1′): inline in TRUST_LEDGER. OK.
  - K-010 (C9′): IDS.md gives "CLOSURE_PLAN.md Table 3", but no row or definition exists there or in TRUST_LEDGER §3. The only live text is the mention "use K-010 only if a consumer needs r < 1" inside row K-009 (CLOSURE_PLAN:180). The pre-apply text was the same ("use C9′ only if …"), so the apply pass did not lose a definition. Note: correction C1.
- Every non-home defining file named in column 5 exists in the snapshot.
- Cosmetic, not an error: 22 ledger/closure rows cite their own id inside their own text, for example TRUST_LEDGER:87 "| R-037 | B | Real uniform R-037 (H-hist): …", R-044 (9 self-cites), R-045 (11), CLOSURE_PLAN:103 "| H-002 | H-304 H-002: …". The apply pass removed 55 doubled ids at the row start, but not inside the text. Each self-cite names the correct object. Correction C2 (optional).

## 2. References resolve — PASS

- 8,314 new-scheme id tokens in the 152 unbannered files (50 files contain at least one). Regex `(?<![A-Za-z0-9_])([RKXNQHL]-\d{3}|T-\d{4})(?!\d)`.
- Unresolved: exactly 2 ids, as the apply pass expected: H-401 (PLAN.md:548, PLAN.md:556) and H-474 (PLAN.md:548, PLAN.md:556). Both are provisional §3 ids quoted inside dated PLAN entries. No action needed, or add "(provisional §3 id)" in a later PLAN line.
- Frozen files: the only bannered file that contains new-scheme tokens after its banner is RENUMBER_PLAN.md (1,834 tokens, the provisional §3 mapping; its own banner says so). No other frozen file was rewritten with new ids.

## 3. Old-scheme ids left in live files — PASS WITH CORRECTIONS

Method. I scanned the 150 unbannered files (IDS.md excluded) with the RENUMBER_PLAN §1 boundary regex (left: no letter, digit, `_`, `^`, `{`, `\`, `/`, `.`, `-`; right: no letter, digit, `_`, `-`, `.digit`). Families: A, A1w, A10′, B (+ a–g), C, C9′, C-new-n, X, R, I-nn, NEW-n, F, T37/T39/T310 tags, E, IN, Q, O, L, S, V, T1–T4. File names were removed before matching. History zones were skipped as in the apply pass (TRUST_LEDGER header and Change notes; CLOSURE_PLAN Date/Status lines and Status addendum; SOURCES_ORDER_CANON §E–G; PLAN.md and INBOX.md up to their "From here on … IDS.md scheme" line).

Result. 0 hits of I-nn, NEW-n, C-new-n, T37/T39/T310 tags, IN-nn. History zones hold 3,525 hits (PLAN 2,136, TRUST_LEDGER 673, canon 543, INBOX 93, CLOSURE_PLAN 80); these are intentional by design. Outside history zones: 1,364 hits. My regex is wider than the apply pass's (it also matches V-items, canon amendments E1–E8, and index-0 symbols), so the count is larger than the 790 of the DONE report. Classification:

| class | hits | grade |
|---|---|---|
| verify items V1–V13 and canon amendments E1–E8 (file-local by the IDS.md header) | 178 | intentional |
| index-0 symbols A0, S0, C0, L0, Q0, B0, X0 (not an id family) | 103 | not an id |
| qualified local labels (file or row named in the same clause: WC_FULL R1–R4/C1–C2, R-011's R1–R4, HHOL (C1)–(C5), MA2 (C1)/(C2), U3 R1–R4/O5/O6, FX R2, H2_CERTIFY R1/R2/C2/C4, D3R/D3W8 F2/F2′, …) | 94 + about 500 read by token group | intentional |
| Lean code identifiers (ScaleChain `T1`–`T4`, MagneticShift `T1`, TheoremL `B2`, GaugeMin `F1`/`F4`, CertBridge/Tower `T2`) | 88 | intentional |
| parenthesized label that follows its own new id ("H-244 (S1)", "H-241 (R1′)") | 83 | intentional (format) |
| CMP 119 (T1)–(T4), Route B input (T1), Lemma T (T2) | 67 | intentional |
| post-apply files without banner (SOURCES_ALT_ROUTES_CITES A1–A12/B1–B14/C1–C7 statement labels; SOURCES_GM1982_CHECK [C4]/[C5]/T4; SOURCES_R3S1_E2/_NUMERICS E1/E2/E5; SOURCES_3D_GAP_LIT [C4]/[C5]) | 64 | intentional (file-local); see note N1 |
| THEOREM2_PROOF item L5; two-step bound (B2); S1 fix pass; S2 form bound; primed local labels | 143 | intentional |
| numerics/*.py and api_runs code | 12 | not an id |
| PLAN.md:555–556 (DONE reports quoting kept tokens) | 17 | intentional |

I read the residual 515 hits grouped by token (C1 52, R2 48, R1 39, C2 33, R3 27, R4 25, L2 20, L1 18, S1 17, F2 17, F1 16, …). Almost all are file-local labels of the kinds in the table, or file shorthands ("A1 §7", "A3 §0.1", "A7 §2.2", "A11 §4") that the apply pass kept on purpose. The exceptions:

Missed (old id still used as a global id):
- M1. lean/LEAN_CATALOGUE.md:226 "(rows R-001–R-019, B*, C*)" and "A13-type inductions": `B*`, `C*` are wildcards for group B and group C rows; `A13` is ledger row R-013.
- M2. TRUST_LEDGER.md:36 (row R-002) "the A1-level walk expansion": A1 = R-001. The regex misses it because of the hyphen suffix.

Ambiguous (need one reading by the owner):
- A1. paper/theorem2.tex:221 "A3-type facts (BETA_FP_U §3.5, §4.3)": ledger row A3 (R-004) or Theorem A3 (L-071)? Context suggests Theorem A3 of U3_AW.
- A2. CLOSURE_PLAN.md:77 "G3 H-225 (N2)": this (N2) is the A5 residue N2 of SOURCES_T2_H0 / SOURCES_G3_N2 ("N2 = G3"), not SOURCES.md (N2). See WRONG W4 below.

Range semantics (new finding, not covered by the regex). I listed all 226 new-id ranges in live files with their member old ids. All are ascending. Two ranges changed meaning because R-002 (A1w) and R-011 (A10′) now sit inside numeric ranges and the retired A9/A12 do not:
- G1. TRUST_LEDGER.md:31 "R-001–R-015 (except R-047 and R-048, now in §6) and R-002 are statements Balaban prints". Old: "A1–A15 (except A9 and A12) and A1w" = 14 items. The new range already contains R-002 and also contains R-011 (A10′, our verified replacement form, not a Balaban statement); R-047/R-048 are not in it.
- G2. TRUST_LEDGER.md:209 "14 are statements Balaban prints (R-001–R-015 except R-047 and R-048, plus R-002)". Same defect; the stated count 14 no longer matches the 15 ids of the range.
- Canon ranges (for example SOURCES_ORDER_CANON:166 "N-040–N-370" for old "B3–B22") follow file order, so they drop N-030 (old B6, moved before B3 by E2) and include the sub-lines. The canon text means the file segment, so these are correct.

Note N1. Five files written after the apply pass (16:18–16:28) carry no banner. They use only file-local labels, so no correction is needed. A future agent should use new ids or add the banner.

## 6. Sample of 60 replacements — 54 CORRECT, 6 WRONG, 0 AMBIGUOUS

Method. Script /tmp/rn_verify_work/sample.py (kept with sample60.json; /tmp is not synced) (seed 20261028, Python `random.Random`). Population: the 6,960 scripted replacements of /tmp/rn_apply/inverse_map.json, aligned to positions in the pre-apply backup and /tmp/rn_apply/out (6,960 of 6,960 aligned). The ~1,000 manual edits made after the script (CanonOrder constructors, paper label keys, doubled-id removal, group cells) are not in the population. Strata: family × file type, quota R 10, N 8, Q 8, H 12, L 12, T (tasks) 4, K 4, Target 2, drawn round-robin over md / tex / lean inside each family. The family "Q" includes the FX obstacles O1–O4; "T" includes fix passes F18. For each item I read the pre-apply context (±160 characters), the IDS.md row, and where needed the defining file.

The 6 WRONG items fall into 3 patterns. The R/lean stratum has only 14 members, and 4 of them are the same file-shorthand pattern in ComplexGaussian.lean, so the 10% error rate overstates the global rate. Patterns W1, W2, W4 below were then searched over all live files.

| # | file:line (post-apply) | family / type | old → new | grade | note |
|---|---|---|---|---|---|
| 1 | lean/YmLean/ComplexGaussian.lean:76 | R / lean | A8 → R-009 | WRONG | "A8 5.2(b)–(c)" is a section of SOURCES_A8_POS, not row R-009; see W1 |
| 2 | TRUST_LEDGER.md:167 | R / md | B7 → R-031 | CORRECT |  |
| 3 | paper/appendix.tex:280 | R / tex | B5 → R-029 | WRONG | "item 9, B5, item 10" lists THEOREM2_PROOF_v4 §10 open-list items; B5 = Route B item B5 (θ_* < 1), kept local by policy; see W2 |
| 4 | lean/YmLean/ComplexGaussian.lean:49 | R / lean | A8 → R-009 | WRONG | same as #1 ("A8 5.3(c)") |
| 5 | TRUST_LEDGER.md:192 | R / md | A16 → R-016 | CORRECT |  |
| 6 | paper/appendix.tex:198 | R / tex | (W4) → R-044 (W4) | CORRECT |  |
| 7 | lean/YmLean/ComplexGaussian.lean:136 | R / lean | A8 → R-009 | WRONG | same as #1 ("A8 5.2(c)") |
| 8 | TRUST_LEDGER.md:40 | R / md | A10 → R-010 | CORRECT |  |
| 9 | paper/assembly.tex:66 | R / tex | (B-N1) → R-045 (B-N1) | CORRECT |  |
| 10 | lean/YmLean/ComplexGaussian.lean:30 | R / lean | A8 → R-009 | WRONG | same as #1 ("A8 2.2") |
| 11 | lean/YmLean/CanonOrder.lean:9 | N / lean | B10a → N-100 | CORRECT |  |
| 12 | SOURCES_ORDER_CANON.md:118 | N / md | B10 → N-180 | CORRECT |  |
| 13 | paper/sources.tex:512 | N / tex | B29a → N-460 | CORRECT |  |
| 14 | lean/YmLean/CanonOrder.lean:10 | N / lean | B14a → N-260 | CORRECT |  |
| 15 | SOURCES_ORDER_CANON.md:166 | N / md | B18 → N-310 | CORRECT | old range "B15–B18" → "N-270–N-310"; same file segment |
| 16 | paper/sources.tex:512 | N / tex | B18a → N-320 | CORRECT |  |
| 17 | lean/YmLean/CanonOrder.lean:14 | N / lean | B18a → N-320–N-330 | CORRECT | "B18a–b" → "N-320–N-330" |
| 18 | SOURCES_ORDER_CANON.md:138 | N / md | B21 → N-360 | CORRECT |  |
| 19 | CLOSURE_PLAN.md:92 | Q / md | R2 → Q-002 | CORRECT |  |
| 20 | paper/assembly.tex:208 | Q / tex | O1 → Q-059 | CORRECT |  |
| 21 | CLOSURE_PLAN.md:92 | Q / md | R1 → Q-001 | CORRECT |  |
| 22 | paper/sources.tex:542 | Q / tex | O2 → Q-060 | CORRECT | "N2/N3 of O2" = FX_O23 O2 → Q-060 |
| 23 | CLOSURE_PLAN.md:158 | Q / md | R20 → Q-020 | CORRECT |  |
| 24 | paper/sources.tex:123 | Q / tex | O4 → Q-062 | CORRECT |  |
| 25 | CLOSURE_PLAN.md:82 | Q / md | R38 → Q-038 | CORRECT |  |
| 26 | paper/assembly.tex:208 | Q / tex | O2 → Q-060 | CORRECT |  |
| 27 | lean/YmLean/ScaleChain.lean:536 | H / lean | (P-low) → H-155 (P-low) | CORRECT |  |
| 28 | TRUST_LEDGER.md:151 | H / md | (C) → H-057 (C) | CORRECT |  |
| 29 | paper/remains.tex:204 | H / tex | S12 → H-266 | CORRECT |  |
| 30 | lean/YmLean/CanonOrder.lean:45 | H / lean | (K1′) → H-216 (K1′) | CORRECT |  |
| 31 | lean/LEAN_CATALOGUE.md:217 | H / md | (N2) → H-225 (N2) | WRONG | neutral sector (N2) of SOURCES_T2_MJ_REST, which the policy keeps local; H-225 is SOURCES.md (N2); see W4 |
| 32 | paper/assembly.tex:139 | H / tex | (E14-f) → H-101 (E14-f) | CORRECT |  |
| 33 | lean/YmLean/ScaleChain.lean:13 | H / lean | (P-low) → H-155 (P-low) | CORRECT |  |
| 34 | SOURCES_ORDER_CANON.md:103 | H / md | (I7) → H-213 (I7) | CORRECT |  |
| 35 | paper/remains.tex:65 | H / tex | (C) → H-057 (C) | CORRECT |  |
| 36 | lean/YmLean/ScaleChain.lean:12 | H / lean | (P-up) → H-156 (P-up) | CORRECT |  |
| 37 | CLOSURE_PLAN.md:154 | H / md | I-48 → H-048 | CORRECT |  |
| 38 | paper/sources.tex:49 | H / tex | (E14-f) → H-101 (E14-f) | CORRECT |  |
| 39 | lean/YmLean/CombesThomas.lean:108 | L / lean | Lemma CT → L-125 (Lemma CT) | CORRECT | per Lean-file policy (A1_KERNEL) |
| 40 | TRUST_LEDGER.md:92 | L / md | Lemma N3 → L-232 (Lemma N3) | CORRECT |  |
| 41 | paper/sources.tex:489 | L / tex | Lemma Q → L-250 (Lemma Q) | CORRECT |  |
| 42 | lean/YmLean/WGAlgebra.lean:42 | L / lean | Lemma N → L-228 (Lemma N) | CORRECT |  |
| 43 | TRUST_LEDGER.md:40 | L / md | Proposition H0-red → L-183 (Proposition H0-red) | CORRECT |  |
| 44 | paper/appendix.tex:104 | L / tex | Theorem 2w → L-001 (Theorem 2w) | CORRECT |  |
| 45 | lean/YmLean/TheoremL.lean:9 | L / lean | Lemma E → L-153 (Lemma E) | CORRECT | WC_FULL §2 Lemma E = the block inequality also stated in SOURCES_WC_EXPGAUGE 3.2; same object, but L-153 names the other file |
| 46 | TRUST_LEDGER.md:138 | L / md | Theorem 2w → L-001 (Theorem 2w) | CORRECT |  |
| 47 | paper/theorem2.tex:228 | L / tex | Theorem K → L-009 (Theorem K) | CORRECT |  |
| 48 | lean/YmLean/TheoremL.lean:8 | L / lean | Lemma E → L-153 (Lemma E) | CORRECT | as #45 |
| 49 | SOURCES_ORDER_CANON.md:64 | L / md | Lemma AW → L-075 (Lemma AW) | CORRECT |  |
| 50 | paper/theorem2.tex:284 | L / tex | Theorem A3 → L-071 | CORRECT | Theorem A3 of U3_AW (one-loop c^{(1)} plane-wave form); id-only form loses the name |
| 51 | lean/YmLean/CanonOrder.lean:9 | T / lean | B90 → T-0099 | CORRECT |  |
| 52 | TRUST_LEDGER.md:37 | T / md | F18 → T-0128 | CORRECT |  |
| 53 | paper/sources.tex:622 | T / tex | F18 → T-0128 | CORRECT |  |
| 54 | TRUST_LEDGER.md:84 | T / md | B91 → T-0100 | CORRECT |  |
| 55 | lean/YmLean/ScaleChain.lean:416 | K / lean | (S) → K-018 (S) | CORRECT |  |
| 56 | CLOSURE_PLAN.md:222 | K / md | C30 → K-031 | CORRECT |  |
| 57 | paper/assembly.tex:202 | K / tex | (Vol) → K-032 (Vol) | CORRECT |  |
| 58 | lean/YmLean/ScaleChain.lean:536 | K / lean | (S) → K-018 (S) | CORRECT |  |
| 59 | TRUST_LEDGER.md:129 | Target / md | T2 → Target 2 | CORRECT |  |
| 60 | TRUST_LEDGER.md:198 | Target / md | T2 → Target 2 | CORRECT |  |

Patterns found by the sample and then searched over all live files (full lists in the correction list below):
- W1. File shorthand rendered as a ledger row. "A8 5.2(b)" means SOURCES_A8_POS §5.2(b); the apply pass wrote "R-009 5.2(b)". 16 occurrences: ComplexGaussian.lean (9, "R-009 <section>"), CLOSURE_PLAN.md:117, :120 ("R-018 5.2", "R-018 6.4"), :140 ("R-019 4.1(f)"), TRUST_LEDGER.md:36, :56 ("R-018 5.3", "R-018 5.3(b)"), SOURCES_ORDER_CANON.md:132, :139 ("R-018 5.3"). The apply pass kept the same pattern elsewhere ("A11 §4", "A1 §7", "A7 §2.2"), so the live files are now inconsistent.
- W2. Route B items B1–B8 of THEOREM2_PROOF_v4 §10 rendered as ledger rows R-025–R-032, against the occurrence policy. 10 occurrences: paper/remains.tex:30, 32–36, 81 (`\item[R-025.]` … `\item[R-032.]`; the B2′ item at :31 kept its label), paper/appendix.tex:280 ("item 9, R-029, item 10"), TRUST_LEDGER.md:83 ("v4 Route B item R-029").
- W3. v4's own label "A6" rendered as ledger row R-007 where the text says it is not the ledger row: paper/remains.tex:34 now reads "R-007 (the label of v4; not ledger R-007)", which contradicts itself; TRUST_LEDGER.md:83 'called "R-007" in THEOREM2_PROOF_v4 §4.2a'. Related: paper/appendix.tex:115 "(T1) (plane-wave form of R-004 …)": the original "A3" here is Theorem A3 (as in remains.tex:30 and theorem2.tex:284, both now L-071), not ledger row A3 (R-004).
- W4. Neutral-sector (N2) of SOURCES_T2_MJ_REST rendered as H-225 (SOURCES.md (N2)), against the occurrence policy: lean/LEAN_CATALOGUE.md:12, :122 (2 occurrences), :217.
- W5 (outside the sample, found while reading section 3). Bare T1/T2 rendered as "Target 1/2" where T1–T4 are Lean theorem names or T2 is a matrix: lean/README.md:47 "`Target 1`–`T4`" (was "`T1`–`T4`"), :255 "λ_max(Zᴴ Target 2 Z + γ′ w wᴴ)", :262 "(Target 2 ≤ d_max T, …)".

## 7. "To review" rows — spot-check and recommendations (not applied)

The section has 232 rows: 158 homonym rows (one id per name and defining file) and 74 id-shaped labels. Every id is also a registry id. I read the defining lines of the seven groups the DONE report names, plus two neighbours. I also tested every L id: does its short name occur in its defining file? 25 do not. 16 of these are paper ids with descriptive names (no issue). 9 are registry errors (item 7.8).

| # | group | what the files show | recommendation |
|---|---|---|---|
| 7.1 | Theorem K: L-009 (KAPPA_BOUNDED), L-204 (B2_TWOSTEP) | KAPPA_BOUNDED title and l. 39 define Theorem K (sup_k \|κ_k\| < ∞). B2_TWOSTEP §5 l. 132 only reports its status ("Theorem K: proved given (H2) …"). L-204 has no live use. | MERGE: L-204 → L-009. Mark L-204 retired, alias of L-009. |
| 7.2 | Theorem B_PW L-103 = Theorem B L-088 (BETA_FP_PW) | paper/main.tex:36 `\ThmPW` = "Theorem B_PW", the paper's name for BETA_FP_PW §3.3 "Theorem B (O(3) Lemma 6.1 form)". L-103 has no definition line and no live use. | MERGE: L-103 → L-088; add "Theorem B_PW (paper)" to L-088's aliases. |
| 7.3 | Lemma G3: L-174 (SOURCES_G3), L-175 (SOURCES_G3_N2), L-176 (SOURCES_GGAIN), L-177 (SOURCES_GGAIN_NONMONO) | One statement: the g_k-derivative of the sharp small-field cut χ_k. GGAIN §4.3 states it as "reduced"; SOURCES_G3 §4 proves a first form; SOURCES_G3_N2 §4.5 gives the "final form" ("N2 = GGAIN Lemma G3", G3_N2 l. 12). | MERGE all four into L-174; set defining location SOURCES_G3_N2.md §4.5 (final form), note GGAIN §4.3 (statement) and SOURCES_G3 §4 (first proof). Update lean/LEAN_CATALOGUE.md:75 "L-175" → L-174. If the owner wants the first and final forms apart, keep L-175 as "Lemma G3 (final form)" and still merge L-176/L-177 into L-174. |
| 7.4 | Lemma D′: L-004 (KAPPA_BOUNDED), L-145 (THEOREM2_PROOF) | LEMMA_DPRIME.md is the defining file (title: "Lemma D′ (shooting with early negative one-loop increments)"). KAPPA_BOUNDED and THEOREM2_PROOF_v2–v4 restate it. THEOREM2_PROOF.md does not contain "Lemma D′" at all. | MERGE: L-145 → L-004. Set L-004 defining file to LEMMA_DPRIME.md. |
| 7.5 | Lemma D″: L-005 (THEOREM2_PROOF), L-147 (INFINITE_VOLUME_IV12), L-148 (KAPPA_BOUNDED) | KAPPA_BOUNDED §5.3 is the first statement ("tail-sum form of Lemma D′"); THEOREM2_PROOF_v4 §2.2 is the verified statement; IV12 l. 21 cites "Lemma D″ (v4 §2.2)" and only uses it. THEOREM2_PROOF.md does not contain it. | MERGE all into L-005. Set defining file THEOREM2_PROOF_v4.md §2.2 (first form KAPPA_BOUNDED §5.3). Rewrite the live L-147 at TRUST_LEDGER.md:48 to L-005. |
| 7.6 | Prop. A15-N: L-024 (SOURCES_A15_LOC, paper prop:L024), L-064 (SOURCES_A15_WHOLE) | SOURCES_A15_WHOLE §6.2 defines it ("6.2 Proposition A15-N [P given (Loc), (Bd), (H), (Cnt)]"). SOURCES_A15_LOC only supplies (Loc) and cites it (l. 10, l. 108). | MERGE: L-064 → L-024 (keep L-024, it carries the paper label). Set defining file SOURCES_A15_WHOLE.md §6.2. Update lean/LEAN_CATALOGUE.md:131 "L-064" → L-024. |
| 7.7 | Theorem A1-W: L-017 (A1_WALK_FULL, paper thm:L017), L-063 (SOURCES_A1_WALK) | SOURCES_A1_WALK §7.1: first form, hypotheses "regular U, Mα_0 ≤ a_0, M_1 ≥ M_W". A1_WALK_FULL §0.4: full write-out under (H1)–(H4). Same name, different hypothesis sets. paper/sources.tex:269 uses L-063 in the SOURCES_A1_WALK paragraph, which is correct for a split. | KEEP SPLIT. Rename L-063's short name to "Theorem A1-W (first form, SOURCES_A1_WALK §7.1)" so readers can tell them apart. Merge only if the owner rules that A1_WALK_FULL supersedes §7.1. |
| 7.8 | 9 L ids registered at THEOREM2_PROOF.md whose names do not occur in it | L-005 Lemma D″, L-145 Lemma D′, L-070 Theorem A3, L-091 Theorem B, L-096 Theorem B2, L-218 Lemma M, L-307 Theorem W occur in THEOREM2_PROOF_v4.md (and v2/v3). L-067 Prop. A2 and L-157 Prop. E occur in THEOREM2_PROOF_v2/v3, B2_TWOSTEP, BETA_FP_U, KAPPA_BOUNDED, SOURCES_T2_S123 (not in v4). L-277 Lemma S3 is registered at H2_CERTIFY_L13_G1.md but occurs only in H2_CERTIFY_L13_G1_VERIFY.md and H2_CERTIFY_P5_VERIFY.md. | Fix the defining-file column: THEOREM2_PROOF_v4.md (§ to be read) for the 7; read v2/v3 for L-067, L-157 and set the file that states each one; read the two VERIFY files for L-277. Then re-run the homonym merge for Theorem A3 / Theorem B / Lemma M / Theorem W, because the "THEOREM2_PROOF" copies may be restatements of v4. |
| 7.9 | id-shaped (N2): H-225 | Policy: H-225 = SOURCES.md (N2); the neutral sector (N2) stays local. LEAN_CATALOGUE uses H-225 for the neutral sector (W4). CLOSURE_PLAN.md:77 "G3 H-225 (N2)" means the A5 residue N2 of SOURCES_T2_H0 (= Lemma G3), a third meaning. | SPLIT is not needed if the two non-home uses lose the id (corrections C9, C10). |

No other "To review" row was read in full. The 158 homonym rows contain 40+ name groups (Lemma D 14 rows, Lemma C 11, Lemma S 7, Lemma E 6, Lemma A 6, …); a later pass should run the 7.8 name-in-file test on each group first, because it finds wrong defining files mechanically.

## Correction list (for a later apply agent; line numbers are snapshot lines, 2026-10-28)

Rules for the agent: re-locate each item by its quoted string, not by line number, because other agents edited TRUST_LEDGER.md, IDS.md, INDEX.md and INBOX.md after my snapshot. After the edits, re-run checks 2 and 5 (refs resolve; latexmk 0 undefined / 0 multiply defined) and `lake build` (only comments change in Lean).

Text corrections in live files (apply):
- C3. TRUST_LEDGER.md:31: "R-001–R-015 (except R-047 and R-048, now in §6) and R-002 are statements Balaban prints" → "R-001–R-010 and R-012–R-015 are statements Balaban prints (R-047 and R-048 are now in §6)". Reason: R-002 is inside the range; R-011 (A10′) is not a Balaban statement; R-047/R-048 are outside the range.
- C4. TRUST_LEDGER.md:209: "(R-001–R-015 except R-047 and R-048, plus R-002)" → "(R-001–R-010, R-012–R-015)". This restores the stated count 14.
- C5. File shorthands (W1), 16 occurrences. lean/YmLean/ComplexGaussian.lean:16, 30, 34, 41, 49, 76, 136, 153, 172: "R-009 <section>" → "SOURCES_A8_POS <section>". CLOSURE_PLAN.md:117 "R-018 5.2" and :120 "R-018 6.4", TRUST_LEDGER.md:36 "R-018 5.3" and :56 "R-018 5.3(b)", SOURCES_ORDER_CANON.md:132 and :139 "R-018 5.3": "R-018 <section>" → "SOURCES_A18_REGULAR <section>". CLOSURE_PLAN.md:140 "R-019 4.1(f)" → "SOURCES_A17_A19 4.1(f)" (confirm that the pre-apply "A19 4.1(f)" points to that file).
- C6. Route B items (W2), 10 occurrences. paper/remains.tex: `\item[R-025.]` → `\item[B1.]` (:30), `\item[R-027.]` → `\item[B3.]` (:32), `\item[R-028.]` → `\item[B4.]` (:33), `\item[R-029.]` → `\item[B5.]` (:34), `\item[R-030.]` → `\item[B6.]` (:35), `\item[R-031.]` → `\item[B7.]` (:36), `\item[R-032.]` → `\item[B8.]` (:81). paper/appendix.tex:280 "item 9, R-029, item 10" → "item 9, B5, item 10". TRUST_LEDGER.md:83 "v4 Route B item R-029" → "v4 Route B item B5".
- C7. v4 labels (W3). paper/remains.tex:34 "R-007 (the label of v4; not ledger R-007)" → "A6 (the label of v4; not ledger R-007)". TRUST_LEDGER.md:83 'called "R-007" in THEOREM2_PROOF_v4 §4.2a' → 'called "A6" in THEOREM2_PROOF_v4 §4.2a'. paper/appendix.tex:115 "(plane-wave form of R-004," → "(plane-wave form of L-071,".
- C8. Target replacements (W5). lean/README.md:47 "`Target 1`–`T4`" → "`T1`–`T4`"; :255 "λ_max(Zᴴ Target 2 Z" → "λ_max(Zᴴ T2 Z"; :262 "(Target 2 ≤ d_max T" → "(T2 ≤ d_max T".
- C9. Neutral-sector (N2) (W4). lean/LEAN_CATALOGUE.md:12, :122 (two), :217: "H-225 (N2)" → "(N2)".
- C11. lean/LEAN_CATALOGUE.md:226 "(rows R-001–R-019, B*, C*)" → "(rows R-001–R-019, R-025–R-046, K-001–K-050)"; "A13-type inductions" → "R-013-type inductions".
- C12. TRUST_LEDGER.md:36 (row R-002) "the A1-level walk expansion" → "the R-001-level walk expansion".

Need one reading by the owner first:
- C10. CLOSURE_PLAN.md:77 "G3 H-225 (N2)": the N2 here is the A5 residue N2 of SOURCES_T2_H0 (= Lemma G3). Proposed: "L-174 (Lemma G3) (A5 residue N2)".
- C13. paper/theorem2.tex:221 "A3-type facts (BETA_FP_U §3.5, §4.3)": proposed "L-071 (Theorem A3)-type facts" if the BETA_FP_U sections use Theorem A3 of U3_AW.

Registry corrections in IDS.md:
- C1. K-010 (C9′): defining-file cell → "CLOSURE_PLAN.md Table 3, mentioned inside row K-009 (no separate row)".
- C14. Merges and file fixes of §7: 7.1 (L-204 → L-009), 7.2 (L-103 → L-088), 7.3 (L-175, L-176, L-177 → L-174; LEAN_CATALOGUE:75), 7.4 (L-145 → L-004; file LEMMA_DPRIME.md), 7.5 (L-147, L-148 → L-005; file THEOREM2_PROOF_v4.md §2.2; TRUST_LEDGER:48), 7.6 (L-064 → L-024; file SOURCES_A15_WHOLE.md §6.2; LEAN_CATALOGUE:131), 7.7 (rename L-063 short name), 7.8 (defining-file column of L-005, L-067, L-070, L-091, L-096, L-145, L-157, L-218, L-277, L-307). A merged id stays in the registry as "retired → L-nnn", so frozen-file lookups still work.

Optional (cosmetic):
- C2. Remove a row's own id from inside its own text, for example TRUST_LEDGER.md:87 "Real uniform R-037 (H-hist)" → "Real uniform (H-hist)"; CLOSURE_PLAN.md:103 "H-304 H-002: Lipschitz" → "H-304: Lipschitz". 22 rows: TRUST_LEDGER R-001, R-006, R-008, R-025, R-027, R-028, R-037, R-038, R-039, R-043, R-044, R-045, K-009, K-018, K-032, K-035, K-039, K-044, K-046; CLOSURE_PLAN H-002, H-035, H-037. Check each self-cite by reading: some are deliberate (a row that cites its own sub-item).
