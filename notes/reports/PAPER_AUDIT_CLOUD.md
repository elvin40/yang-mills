IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# PAPER_AUDIT_CLOUD — status consistency of paper/*.tex against the ledger and the PLAN tail

Written 2026-10-28 (cloud session, P1). Read-only audit; no .tex edited.
Sources: notes/PLAN.md from "2026-10-28 ~01:10 UTC Elvin: set Opus subscription subagents" to the end (37 entries); notes/TRUST_LEDGER.md (whole); paper/intro.tex, remains.tex, appendix.tex, assembly.tex §deptable (l. 148–229); other paper/*.tex for context only.
Firewall kept: notes/reports/SUSSMAN_ALPOGE_MAP.md and §2 of notes/reports/ONLINE_SWEEP.md not read.

Grades: MATCH = agrees with ledger and PLAN tail. OVERSTATED = claims more than they support (missing hypothesis, wrong constant, too strong a tag). UNDERSTATED = claims less. STALE = describes an earlier state (direction noted when it matters).
Precedence: when the ledger lags the PLAN tail, the PLAN tail wins (it is newer); those cases are also listed in §4.

## 1. Summary

- 90 graded rows (some group several sentences): 57 MATCH, 9 OVERSTATED, 1 UNDERSTATED, 23 STALE.
- Main drift: the paper is at the "round 3" state (TRUST_LEDGER pass 6). Round 3b and later PLAN entries are not in it:
  - A1w: now a verified reduction (SOURCES_A1_WALK + VERIFY); the paper still says open.
  - A2: now rests on (W^c) with the V7 repair (SOURCES_S2_G1_V7 + VERIFY); the paper still says (W) + A1w + A7 + (An).
  - A3: now a full proof (SOURCES_A3_GAMMA0_FULL + VERIFY) with a SMALLER constant. The paper's γ_0 ≥ (48d²)^{-1}L^{-d-1} is false-as-proved for L ≥ 10 (×0.7555 at L = 13). This is the one numeric overclaim.
  - A1's G_1 clause: closed [P] (S2_G1_V7_VERIFY); the paper still says P-sketch.
  - (M_j): now a verified reduction (SOURCES_T2_S123 + VERIFY); the paper still says open.
  - Lean: 22 files with Resolvent.lean; the paper says 21.
- Structural overclaims:
  - Theorem A(ii) (intro l. 25) omits B8, which is now an input of Theorem 1.
  - Item 7′ is tagged proved+verified with no condition, but it rests on A5 or on the (G-gain) inputs.
  - The critical path (assembly l. 229) omits B8, B10, M2′/M4/M5, and the Λ_j bookkeeping.
  - The intro's A1–A4 residue (l. 36) omits A7, A18, and (W^c).
- Internal inconsistencies:
  - appendix l. 68 lists item 7′ under "proved, unverified" and also says it is verified.
  - appendix l. 130 and deptable item 10 say the item-11 readings are unchecked, while remains l. 75 says they are verified.
  - appendix l. 100 lists the constant choice (U) under "argued".

## 2. Grades

### intro.tex

| line | status sentence (gist) | grade | note |
|---|---|---|---|
| 19 | both results are reductions under named hypotheses | MATCH | |
| 24 | (H2) certified at L = 13, hypothesis elsewhere | MATCH | B1 |
| 24 | 7′ \status{proved+verified} | OVERSTATED | only the lift is verified; 7′ rests on A5 or on the (G-gain) inputs (ledger §4.1 l. 128, 136) → F1 |
| 24 | (i) proved+verified, conditional, Route K | MATCH | DAG step 3 |
| 25 | (ii) proved, unverified, conditional on route inputs, L5, Balaban | OVERSTATED | omits B8 (finite-volume identification, R-term part, open; ledger: input of Theorem 1 since item 9 closed) → F2 |
| 27 | Route B under B1–B7; both routes rest on (H2) | MATCH | |
| 29 | at L = 13 Thm A rests on fixed-level inputs, L5, 7′, ledger items | MATCH | |
| 32 | (H-U) from blocks "also assumes" κ → κ/2 recovery [R, B22], "does not follow" | STALE (understated) | B22 = reduced [R, verified], uses A23 → F3 |
| 32 | Theorem B proved modulo named blocks; nontriviality conditional on (NT) | MATCH | |
| 34 | (U) is a constant choice C23 | MATCH | |
| 36 | 4 / 1 / 17 / 4 / 20 / 13 (3 of 4, 11 of 17) counts | MATCH | ledger §5 |
| 36 | A1–A4 residue = A1w, two conventions, torus side | OVERSTATED | ledger §4.2 l. 154 adds A7, (An)/A18, G_1; PLAN adds (W^c), RM [I], R-Δ2 → F4 |
| 38, 40 | three blocks; what is not given | MATCH | |

### remains.tex

| line | status sentence (gist) | grade | note |
|---|---|---|---|
| 3 | ledger supersedes this list | MATCH | |
| 9 | H: certified at L = 13, ρ_2 ≤ 10 | MATCH | (ledger B1 says 4.37, see §4) |
| 9 | Route K (H2) ⇒ (B2) proved+verified; Route B (U) proved, unverified; box sweep in progress; L = 3, 5, 9 numerical | MATCH | |
| 11, 14 | H′ residue; L = 3 enclosure | MATCH | |
| 20 | item 1 (B2) verified reduction to H | MATCH | |
| 21, 22, 24, 25 | (PI) argued; (F) cited, source checked; V1 open; (G2) formal | MATCH | B2, B3, B5, B6 |
| 23 | (M_j) (S1)–(S3) open; Prop. 4.4 argued | STALE (understated) | PLAN l. 17/19: S123 VERIFY 25 C / 2 corr → F5 |
| 28–38 | Route B items | MATCH | B9, X1, C21 |
| 42 | 7′ \status{proved+verified} | OVERSTATED (mild) | same as intro l. 24 → F6 |
| 43 | item 8 L5 open | MATCH | B7 |
| 44 | item 9 closed, verified; B8 input of Theorem 1 | MATCH | |
| 45, 46 | odd L; SU(2) | MATCH | C3, C4 |
| 53 | (B-S) open as a whole | MATCH | B11 |
| 54 | (H-hist) both halves reduced; open inputs; G4 off-chain | MATCH | B13 |
| 57 | A1 residue incl. "G_1 clause at P-sketch level" | STALE (understated) | S2 for G_1 closed [P] (S2_G1_V7_VERIFY); [I-a1] a = 1 open → F7 |
| 58 | A1w \status{open} | STALE (understated) | ledger A1w: REDUCED, construction verified → F8 |
| 59 | A2 verified reduction to (W) + A1w + A7 + (An) | STALE | ledger A2 round 3b: V7 repair, (W^c) exponential gauge [R], two [I] → F9 |
| 60 | A3 verified reduction (P-sketch), γ_0 ≥ (48d²)^{-1}L^{-d-1}, no M | OVERSTATED (constant) + STALE (status) | ledger A3: full proof, γ_0 ≥ m_L/(48d²L^d); M ≥ L/2; CMP 96 step false for L ≥ 10 → F10 |
| 61 | A4 verified reduction | MATCH | |
| 63 | core rests on published theorems, A1w, two conventions, torus side | OVERSTATED | omits A7, A18, (W^c), R-Δ2 → F11 |
| 64 | (H-hist2) verified reduction | MATCH | B14 |
| 65 | (FX), N3, (H-hol), (M-C), R2 readings | MATCH | B16–B19 |
| 66 | D2C, Hβ items (no tag) | MATCH | untagged; optional: "(D) argued [V] (D2C_VERIFY §2)" |
| 67 | B22 verified reduction, uses A23; (U) = C23 | MATCH | |
| 68 | B-N1 / (S) verified reduction; (E14-c) open | MATCH | B21 |
| 69, 70 | (NT); E13 open | MATCH | |
| 75 | item 10 readings | MATCH | A11, §6 A12/A22, A23 |
| 76, 77, 78, 79 | verification debt | MATCH | |
| 84 | stronger statements | MATCH | |
| 92 | ledger intro | MATCH | |
| 98 | table A1 "G_1 P-sketch" | STALE | → F12 |
| 99 | table A1w "open" | STALE | → F13 |
| 100 | table A2 | STALE | → F14 |
| 101 | table A3 "verified reduction (P-sketch) … + A18" | STALE | → F15 |
| 102–122 | A4–A23, X1–X5 rows | MATCH | |
| 128–149 except 131 | B rows | MATCH | |
| 131 | table B4 "open; Prop. 4.4 argued" | STALE | → F16 (ledger B4 lags too) |
| 155–177 | C rows | MATCH | |
| 180 | verified readings A9, A12, A20, A22 | MATCH | §6 |
| 182 | Theorem 2w binding set | MATCH | |
| 182 | 7′ "\status{proved+verified}" | OVERSTATED (mild) | → F17 |
| 184 | Theorem 2w ⇒ Theorem 1 set | MATCH | |
| 186 | Theorem B: 17 A, 4 X, 21 B | MATCH | |
| 186 | joint residue incl. "G_1 P-sketch", "(An)" | STALE | → F18 |
| 188 | counts | MATCH | |

### appendix.tex

| line | status sentence (gist) | grade | note |
|---|---|---|---|
| 3 | 21 Lean files; three sources-block files | STALE | 22 files; Resolvent.lean (PLAN l. 32) → F19 |
| 9–32 | inventory | STALE | Resolvent missing → F20 |
| 33 | not formalized | MATCH | |
| 40–57 | proved+verified list | MATCH | missing new entries: see F21, F22 |
| 68 | 7′ lift under "proved, unverified" but "verified" | STALE (internal) | move → F21 |
| 69 | P4 proved, unverified (Lean only) | MATCH | ledger §6 |
| 74, 79 | numerical / certified | MATCH | |
| 84–88 | verified reductions (Q), N3, (H-hol), (H−), (H-hist2) | MATCH | |
| 89 | round-3 entry (A1 + S2; A2 to (W)+A1w+A7+(An); A3 cites SOURCES_A3_GAMMA0_VERIFY) | STALE | A3 full proof is SOURCES_A3_GAMMA0_FULL_VERIFY; A1w, G_1, V7, S123 missing → F22 |
| 90 | item 9 closed | MATCH | |
| 100 | (U) under "argued" | STALE | constant choice C23 → F23 |
| 105 | open: A1w; (S1)–(S3) | STALE | → F24 |
| 110–125 | corrected / refuted / Balaban | MATCH | |
| 130 | item 11 readings "unchanged since v3" (unchecked) | STALE | verified with corrections, SOURCES_BOOKKEEPING → F25 |
| 237–241 | revision history | MATCH (historical) | optional: add a round-3/3b entry (F26) |

### assembly.tex — dependency table (l. 148–229)

| line | row | grade | note |
|---|---|---|---|
| 149 | header "through the entry SOURCES_MA2_VERIFY.md" | STALE | table cites later entries (MC, GGAIN_LF, B21_S, NONMONO, BOOKKEEPING, S2_FORM) → F27 |
| 156–162 | B-T2, .a, .b, .1–.4 | MATCH | |
| 163 | B-T2.5 hyps "(H2), (PI), (M_j)" | OVERSTATED (mild) | DAG step 2 also needs (F), V1, (G2) → F28 |
| 164, 165, 166 | H2, H1, Route B | MATCH | |
| 167 | item 1 (B2) "open; reduced to (H2)" | UNDERSTATED | holds at L = 13 by the certificate; remains l. 20 says verified reduction → F29 |
| 168–175, 177, 178 | items 1, H, 2, 3, 5, 6 | MATCH | |
| 176 | item 4 "open / argued" | STALE | S123 → F30 |
| 179 | item 7′ | MATCH | carries (G-gain) inputs; optional: add NONMONO_VERIFY to files (F31) |
| 180, 181 | items 8, 9 | MATCH | |
| 182 | item 10 "unchecked" | STALE (understated) | → F32 |
| 183–193 | items 11–13, Route B rows, B-T2.6 | MATCH | |
| 194–201 | B-S, D1, D2, D2C, Hβ, hist, Ggain, G3 | MATCH | |
| 202 | B-S.Q hyps "G_1 P-sketch" | STALE | → F33 |
| 203 | B-S.EU | MATCH | |
| 204 | B-S.LOC hyps (A2 old inputs; A3 "verified reduction") | STALE | → F34 |
| 205–225 | thr … E13 | MATCH | |
| 229 | critical path | OVERSTATED | omits B8, B10/A11, M2′/M4/M5, Λ_j, A1–A4 residue detail (ledger §4.2 l. 157) → F35 |

## 3. Fix list

LaTeX as it would go in; "current" is quoted verbatim from the file.

| # | file | line | current | replacement |
|---|---|---|---|---|
| F1 | intro.tex | 24 | `(item 7$'$ of Section~\ref{sec:remains}) \status{proved+verified}.` | `(item 7$'$ of Section~\ref{sec:remains}) \status{proved+verified, conditional on (H0) (ledger A5) or on the (G-gain) inputs (ledger B13)}.` |
| F2 | intro.tex | 25 | `conditional on Route K or Route B inputs, on L5, and on Balaban's published proofs}` | `conditional on Route K or Route B inputs, on L5, on the finite-volume identification of the step (R-term part, ledger B8, open), and on Balaban's published proofs}` |
| F3 | intro.tex | 32 | `the chain also assumes the $\kappa\to\kappa/2$ decay recovery of the sourced small-field step [R, B22], which does not follow from the other hypotheses.` | `the chain also uses the $\kappa\to\kappa/2$ decay recovery of the sourced small-field step (ledger B22), a \status{verified reduction} by $L/2$-rescaling that rests on the unprinted large-field T-step rate loss (ledger A23).` |
| F4 | intro.tex | 36 | `their residue is the walk-expansion form A1w of A1, two unprinted conventions, and a stated torus-side hypothesis.` | `their joint residue is Ba{\l}aban's walk expansions of the final propagators (through the walk-expansion form A1w of A1), the complex walk bound (W$^c$) in the exponential gauge and the decay of $C^*\Delta_kC$ at real $U$ (A7) under A2, the regular-class identification A18, two unprinted conventions, and a stated torus-side hypothesis.` |
| F5 | remains.tex | 23 | `all on the lattice \status{open}; Prop.\ 4.4 \status{argued}.` | `all on the lattice: \status{verified reduction} (\file{SOURCES_T2_S123.md} + VERIFY, 25 confirmed, 2 corrected): (S1), (S3), (S2)$\|_{t=0}$, (S2c) are proved at fixed $j$ given the Peierls input (I3), and $(M_j)$ reduces to (I3), the open 2D gap (G$_A'$), and the region-1 step of Prop.\ 4.4 \status{argued}.` (write `$|_{t=0}$` in LaTeX) |
| F6 | remains.tex | 42 | `for every past $h$, monotone or not \status{proved+verified}.` | `for every past $h$, monotone or not; the lift \status{proved+verified} (\file{SOURCES_GGAIN_NONMONO_VERIFY}), 7$'$ itself conditional on (H0) or on the (G-gain) inputs.` |
| F7 | remains.tex | 57 | `two unprinted conventions, and the $G_1$ clause at P-sketch level.` | `two unprinted conventions, and the reading $a=1$ of Theorem 3.1 ([I]); S2 for $G_1$ is closed (\file{SOURCES_S2_G1_V7.md} + VERIFY).` |
| F8 | remains.tex | 58 | `\status{open}. Lemma CT gives kernel decay only, not a walk expansion.` | `\status{verified reduction} (construction verified, \file{SOURCES_A1_WALK.md} + VERIFY): local Combes--Thomas and Ba{\l}aban's parametrix (CMP 96 (2.82)) give a walk expansion of $(QGQ^*)^{-1}$ with (3.108)-form bounds at rate $\tfrac12\varepsilon$, given (W$_G$), Ba{\l}aban's walk expansions of the final $G$ and $G_1$ (proof sketches printed only for $G'$, $(Q'G'^2Q'^*)^{-1}$, $G_0$), input (C), and CMP 96 Lemma 2.1; open: the $Z_0$-compressed variant (O3) and the complex $\alpha'$-space (O4).` |
| F9 | remains.tex | 59 | `\status{verified reduction} to the walk bounds (W) = CMP 99 (3.107)--(3.108) + A1w, decay of $C^*\Delta_kC$ at real $U$ (A7), and analyticity on the $\alpha'$-space (An); $R_3$ in weaker forms sufficient for (2.21).` | `\status{verified reduction} (\file{SOURCES_A2_R2.md}, \file{SOURCES_S2_G1_V7.md} + VERIFY): $R_2$ by a Neumann series around the compression with the complex-$U$ repair V7, to the complex walk bounds (W$^c$) on the $\alpha'$-space in the exponential-gauge version of CMP 99 Sect.\ E (the transfer from the axial gauge is Ba{\l}aban's assertion, Thm 3.15; [R]; it contains A1w), the decay of $C^*\Delta_kC$ at real $U$ (A7), the ``intersect'' reading [I], and $\operatorname{dist}(Z_0,\Lambda_k^c)>RM$ [I]; $R_3$ in weaker forms sufficient for (2.21).` |
| F10 | remains.tex | 60 | `\status{verified reduction} (P-sketch) to the printed CMP 99 Theorems 3.1, 3.3, 3.11--3.12, with $\gamma_0\ge(48d^2)^{-1}L^{-d-1}$ and no $M$; the $\sigma$-localized clause reduces to (W) + (N), without symmetry.` | `full proof, verified (\file{SOURCES_A3_GAMMA0_FULL.md} + VERIFY), from the printed CMP 99 Theorems 3.11--3.12, (H$_Q$) \status{proved+verified}, R-$\Delta$2 [R], and items R3--R5: $\gamma_0\ge m_L/(48d^2L^d)$ with $m_L=\min(2(1-\cos(\pi/L)),1/L)$, uniform in $k$, volume, and regular $U$, for $M\ge L/2$ (this equals $(48d^2)^{-1}L^{-d-1}$ for $L\le9$ and is $0.7555$ times it at $L=13$); the $\sigma$-localized clause reduces to (W) + (N), without symmetry. The proof step inside CMP 96 (2.126)--(2.127) is false for $L\ge10$ (a lost factor $L$); the statement of Lemma 2.4 stands with the corrected constant.` |
| F11 | remains.tex | 63 | `So the Ba{\l}aban-level core now rests on published propagator theorems, A1w, the two conventions, and the torus-side hypothesis.` | `So the Ba{\l}aban-level core now rests on published propagator theorems, (W$_G$) (through A1w), (W$^c$) and A7 (through A2), A18, R-$\Delta$2, two [I] items of A2, the two conventions, and the torus-side hypothesis.` |
| F12 | remains.tex | 98 | `residue: torus-side hypothesis, two conventions, $G_1$ P-sketch` | `residue: torus-side hypothesis, two conventions, the reading $a=1$ ($G_1$ clause closed)` |
| F13 | remains.tex | 99 | `asserted, ``analyzed in the same way''; open` | `asserted, ``analyzed in the same way''; verified reduction (construction) to (W$_G$) + (C) + CMP 96 Lemma 2.1; open O3, O4` |
| F14 | remains.tex | 100 | `verified reduction to (W) + A1w + A7 + (An); $R_3$ in weaker forms` | `verified reduction (V7 repair) to (W$^c$) in the exponential gauge [R] + A7 at real $U$ + two [I]; $R_3$ in weaker forms` |
| F15 | remains.tex | 101 | `verified reduction (P-sketch) to CMP 99 Thms 3.1, 3.3, 3.11--3.12 + A18, no $M$; $\sigma$-localized clause to (W) + (N)` | `full proof, verified, from CMP 99 Thms 3.11--3.12 + (H$_Q$) + R-$\Delta$2 [R]; $\gamma_0\ge m_L/(48d^2L^d)$; $\sigma$-localized clause to (W) + (N); CMP 96 (2.126)--(2.127) proof step false for $L\ge10$` |
| F16 | remains.tex | 131 | `open; Prop.\ 4.4 argued` | `reduced to (I3), (G$_A'$), and Prop.\ 4.4 region 1 (argued); (S1), (S3) proved at fixed $j$ given (I3)` |
| F17 | remains.tex | 182 | `Item 7$'$ comes from A5 or from (G-gain) with the running-maximum lift \status{proved+verified}.` | `Item 7$'$ comes from A5 or from (G-gain) with the running-maximum lift (the lift \status{proved+verified}); in the second case the (G-gain) inputs of B13 enter Theorem 2w.` |
| F18 | remains.tex | 186 | `their joint residue is A1w, A7, the analyticity piece of A18, two unprinted conventions, a stated torus-side hypothesis, and the $G_1$ P-sketch.` | `their joint residue is (W$_G$) under A1w (O3, O4 open), the complex walk bound (W$^c$) in the exponential gauge, A7 at real $U$, A18, R-$\Delta$2, two [I] items of A2, two unprinted conventions, and a stated torus-side hypothesis; the $G_1$ clause is closed.` |
| F19 | appendix.tex | 3 | `(21 files in \file{lean/YmLean/}); three files formalize lemmas of the sources block (Schur test, Combes--Thomas, interpolation and rescaling)` | `(22 files in \file{lean/YmLean/}); four files formalize lemmas of the sources block (Schur test, Combes--Thomas, interpolation and rescaling, resolvent and weighted Neumann bounds)` |
| F20 | appendix.tex | 31 (insert after) | — | `\item \texttt{Resolvent}: \texttt{resolvent\_identity}, \texttt{resolvent\_bound}, \texttt{lower\_transfer}, \texttt{neumann\_perturb}, \texttt{resolvent\_chain} (\file{SOURCES_A3_SIGMA.md} \S4); \texttt{wnorm\_mul\_le}, \texttt{wnorm\_neumann}, \texttt{pwnorm\_mul\_le}, \texttt{pwnorm\_neumann} (weighted Neumann series, row half; \file{SOURCES_A2_R2.md} \S2).` |
| F21 | appendix.tex | 68 | `\item Item 7$'$: the running-maximum lift of $C_\beta$ to non-monotone pasts (\file{SOURCES_GGAIN_NONMONO.md}); verified (\file{SOURCES_GGAIN_NONMONO_VERIFY}).` | delete here; add under \status{proved+verified} (after l. 56): `\item Item 7$'$: the running-maximum lift of $C_\beta$ to non-monotone pasts (\file{SOURCES_GGAIN_NONMONO_VERIFY}).` Also add there: `\item $(KE')$ by citation and (H$_Q$) (\file{SOURCES_QE_KE_HQ_VERIFY}); S2 for $G$ and $G_1$ (\file{SOURCES_S2_FORM_VERIFY}, \file{SOURCES_S2_G1_V7_VERIFY}); fixed-$j$ (S1), (S3), (S2)$\|_{t=0}$, (S2c) given (I3) (\file{SOURCES_T2_S123_VERIFY}).` |
| F22 | appendix.tex | 89 | `A2 to (W) + A1w + A7 + (An) (\file{SOURCES_A2_R2_VERIFY}); A3 and its $\sigma$-localized clause (\file{SOURCES_A3_GAMMA0_VERIFY}, \file{SOURCES_A3_SIGMA_VERIFY});` | `A1w to (W$_G$) + (C) + CMP 96 Lemma 2.1 (\file{SOURCES_A1_WALK_VERIFY}); A2 with the V7 repair to (W$^c$) + A7 + two [I] (\file{SOURCES_A2_R2_VERIFY}, \file{SOURCES_S2_G1_V7_VERIFY}); A3, full proof with $\gamma_0\ge m_L/(48d^2L^d)$, and its $\sigma$-localized clause (\file{SOURCES_A3_GAMMA0_FULL_VERIFY}, \file{SOURCES_A3_SIGMA_VERIFY}); $(M_j)$ to (I3), (G$_A'$), Prop.\ 4.4 region 1 (\file{SOURCES_T2_S123_VERIFY});` |
| F23 | appendix.tex | 100 | `(U) (now a constant choice, ledger C23; the $\kappa\to\kappa/2$ recovery B22 is a verified reduction); ` | delete (C23 is a choice, B22 a verified reduction; neither is argued) |
| F24 | appendix.tex | 105 | `A1w, the walk-expansion form of A1 (CMP 99 Thm 3.15).` … `V1. (S1)--(S3).` | `The residue of A1w: (W$_G$) for the final $G$, $G_1$, the $Z_0$-compressed variant (O3), and the complex $\alpha'$-space (O4).` … `V1. The residue of $(M_j)$: (I3), (G$_A'$), Prop.\ 4.4 region 1.` |
| F25 | appendix.tex | 130 | `\file{BALABAN_EXCERPTS_CHECK} items 10 (CMP 116 has no $C^m$-in-$g$ statement) and 11 (unchecked readings) are unchanged since v3.` | `\file{BALABAN_EXCERPTS_CHECK} item 10 (CMP 116 has no $C^m$-in-$g$ statement) is unchanged since v3; the item 11 readings are verified, with corrections, in \file{SOURCES_BOOKKEEPING.md} (former ledger A22).` |
| F26 | appendix.tex | 241 (append, optional) | — | `\item \emph{Round 3.} A1--A4 regraded to verified reductions (A3 a full proof with a corrected constant), A1w added and reduced, item 9 closed (B8 moved to the input set of Theorem 1), item 7 restated as 7$'$, G4 off-chain, B13, B17, B21, B22 regraded, Lean files 21 $\to$ 22 (\file{TRUST_LEDGER.md} round 3; \file{PLAN.md}).` |
| F27 | assembly.tex | 149 | `(through the entry \file{SOURCES_MA2_VERIFY.md}, 2026-10-28)` | `(through the entry \file{SOURCES_S2_G1_V7_VERIFY.md}, 2026-10-28)` |
| F28 | assembly.tex | 163 | `& (H2), (PI), $(M_j)$ \\ \hline` | `& (H2), (PI), (F), $(M_j)$, V1, (G2) \\ \hline` |
| F29 | assembly.tex | 167 | `& open; reduced to (H2) &` | `& \status{verified reduction} to (H2); holds at $L=13$ (Theorem~\ref{thm:H2cert}); open at other $L$ &` |
| F30 | assembly.tex | 176 | `& open / argued & BETA\_\allowbreak{}FP\_\allowbreak{}M \S4 (no verifier); H\_\allowbreak{}VERIFY \S5 refuted the old step & (S1)--(S3) \\ \hline` | `& (S1), (S3), (S2)$\|_{t=0}$, (S2c) proved at fixed $j$ given (I3); $(M_j)$ \status{verified reduction} to (I3), (G$_A'$), Prop.\ 4.4 region 1 (argued) & BETA\_\allowbreak{}FP\_\allowbreak{}M \S4; \file{SOURCES_T2_S123.md}, \file{SOURCES_T2_S123_VERIFY.md}; H\_\allowbreak{}VERIFY \S5 refuted the old step & (I3), (G$_A'$) \\ \hline` |
| F31 | assembly.tex | 179 (optional) | `\file{SOURCES_GGAIN_NONMONO.md}; KUNIF` | `\file{SOURCES_GGAIN_NONMONO.md}, \file{SOURCES_GGAIN_NONMONO_VERIFY.md}; KUNIF` |
| F32 | assembly.tex | 182 | `item 10 & BALABAN\_\allowbreak{}CHECK item 11 readings & unchecked & BALABAN\_\allowbreak{}EXCERPTS & --- \\ \hline` | `item 10 & BALABAN\_\allowbreak{}CHECK item 11 readings & verified with corrections (former ledger A12, A20, A22); residue: A11 not located, A23 (T-step rate loss) & BALABAN\_\allowbreak{}EXCERPTS; \file{SOURCES_BOOKKEEPING.md} & A11, A23 \\ \hline` |
| F33 | assembly.tex | 202 | `A1 residue (torus-side hypothesis, conventions, $G_1$ P-sketch)` | `A1 residue (torus-side hypothesis, conventions, reading $a=1$; $G_1$ clause closed, \file{SOURCES_S2_G1_V7_VERIFY})` |
| F34 | assembly.tex | 204 | `(ledger A2, verified reduction to (W) + A1w + A7 + (An)); $\gamma_0$ for general $U$ (ledger A3, verified reduction)` | `(ledger A2, verified reduction with the V7 repair to (W$^c$) in the exponential gauge + A7 at real $U$ + two [I]); $\gamma_0$ for general $U$ (ledger A3, full proof verified, $\gamma_0\ge m_L/(48d^2L^d)$)` |
| F35 | assembly.tex | 229 | `B-T2 still needs (PI), (F), $(M_j)$, V1, (G2), L5, and item 7$'$; then B-S: the open inputs of the real uniform (H-hist) ((Q)/$c_-$, ($M_r$), CMP 102 (189), (M-B) bookkeeping), A1w and the torus-side hypothesis under A1--A4, the residual inputs of (M-C), and the (E14-c) clause of B-N1.` | `B-T2 still needs (PI), (F), $(M_j)$, V1, (G2), L5, and item 7$'$, and the step to Theorem 1 needs the sweep (B10, A11) and the finite-volume identification B8; then B-S: the open inputs of the real uniform (H-hist) ((Q)/$c_-$, ($M_r$), CMP 102 (189), (M-B) bookkeeping), the residue under A1--A4 ((W$_G$) with O3, O4; (W$^c$) and A7; R-$\Delta$2; A18; the torus-side hypothesis), M2$'$, M4, M5 of (H-thr), the $\Lambda_j$ bookkeeping of B20, the residual inputs of (M-C), and the (E14-c) clause of B-N1.` |

Notes on the fix list:
- In F5, F21, and F30 the `\|` stands for a literal `|` (escaped for the Markdown table).
- F10 and F15 change a constant. Other files that quote (48d²)^{-1}L^{-d-1} at L = 13 (KAPPA_D, Λ = 1.43e8 → 1.89e8 per A3_GAMMA0_FULL_VERIFY) are outside this audit. grep the paper for `48d` before rebuilding.

## 4. Ledger lags (outside the paper, found during the audit)

TRUST_LEDGER.md is behind the PLAN tail in these places. The paper fixes above follow the PLAN tail. These ledger rows should change at the next housekeeping pass.

- A1 row: "the G_1 clause at P-sketch level" → closed [P] (SOURCES_S2_G1_V7_VERIFY), [I-a1] a = 1 open. Same in §4.2 step 8 and l. 154.
- B4 row: "open; Prop. 4.4 argued" → reduced to (I3), (G_A′), Prop. 4.4 region 1 (SOURCES_T2_S123_VERIFY). Same in §4.2 l. 157.
- B1 row: "⇒ ρ_2 ≤ 4.37". 4.37 is the measured sup ρ_1² (numerical, appendix l. 74). The certified bound is ρ_2 ≤ 10 (9.9995).
- C3 row: "(H2) is not certified at any such L" contradicts B1 (certified at L = 13).
- §4.1 l. 136: "this route waits for the NONMONO verifier". The verifier has run (SOURCES_GGAIN_NONMONO_VERIFY).
- B16 / C6: (C4″) is still "8nρ_0²(LM)⁴ ≤ 1 (→ 16nρ_0²)". SOURCES_MC_VERIFY corrects it to ρ_0 ≤ (LM)^{-2}(0.45a/16n)^{1/2}, since HHOL's 8nρ² is not sufficient.
- SOURCES_WG.md: (W_G) is written out, and the PLAN tail says it is unverified (verifier B48). notes/SOURCES_WG_VERIFY.md exists, but the PLAN tail does not record it, so it was not read here (outside the read list). The A1w row and fix F8 should be updated once that verdict is logged.
