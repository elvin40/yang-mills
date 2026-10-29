IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping; the "new" ids of §3 are provisional and superseded by IDS.md.
# RENUMBER_PLAN — one identifier scheme for the Yang–Mills project

Date: 2026-10-28. Author: Claude (Opus 5.5), design task. Status: PLAN ONLY. No existing file was edited. Nothing in this plan is applied.

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.

Corpus. 554 files: every *.md (root, api_runs/, archive/, lean/, numerics/, reports/), paper/*.tex, lean/**/*.lean (not .lake), and numerics/**/*.py (not .venv). Balaban's text layers (balaban/*.txt, reports/*.txt) are external and were excluded. Counts below are regex hits with identifier boundaries: a hit is not preceded by a letter, digit, `_`, `^`, `{`, `\`, `/`, `.`, or `-`, and not followed by a letter, digit, `_`, or `-`. So `B_3`, `ε_1`, `SOURCES_A11_CONST`, and `Nucl. Phys. B180` do not count as hits of B3, A11, or B180 in the id families (B180/B190 are excluded by range).

How to read the counts. A "hit" is a string match, not a resolved meaning. Most short families are overloaded (§4). The counts size the apply pass; they do not say which object each hit names.

## 1. Inventory

One row per identifier family. "Files" = number of corpus files with at least one hit. "Most frequent files" lists the five files with the most hits (S_ = SOURCES_).

| # | family | distinct ids | hits | files | most frequent files | note |
|---|---|---|---|---|---|---|
| 1 | Ledger Group A rows A1–A27, A1w, A10′ | 30 | 5195 | 201 | TRUST_LEDGER, PLAN, paper/remains.tex, reports/LEDGER_AUDIT_CLOUD, CLOSURE_PLAN (+196 more) | A9, A12, A20–A22 retired (§6) |
| 2 | B-numbers 1–22 (ledger B rows ∪ canon lines ∪ early tasks) | 22 | 4213 | 204 | TRUST_LEDGER, PLAN, S_ORDER_CANON, lean/YmLean/CanonOrder.lean, paper/sources.tex (+199 more) | three-way collision |
| 3 | B-numbers 23–33 (canon lines ∪ tasks) | 11 | 313 | 31 | lean/YmLean/CanonOrder.lean, S_ORDER_CANON, PLAN, TRUST_LEDGER, S_ORDER_CANON_VERIFY (+26 more) |  |
| 4 | Canon sub-lines B5a, B10a–g, B12a–c, B14a, B17a, B18a–b, B22a, B29a | 17 | 593 | 17 | S_ORDER_CANON, lean/YmLean/CanonOrder.lean, S_ORDER_CANON_VERIFY2, PLAN, S_ORDER_CANON_VERIFY (+12 more) |  |
| 5 | Task ids B34–B135 | 103 | 202 | 11 | PLAN, TRUST_LEDGER, S_ORDER_CANON, CLOSURE_PLAN, OPUS_QUEUE (+6 more) | excl. Nucl. Phys. B180/B190 |
| 6 | Ledger Group C rows C1–C46, C9′ | 50 | 2558 | 148 | TRUST_LEDGER, PLAN, CLOSURE_PLAN, paper/remains.tex, reports/LEDGER_AUDIT_CLOUD (+143 more) |  |
| 7 | Proposed conventions C-new-1…4 | 4 | 64 | 8 | S_SRULE_CONVENTION, CLOSURE_PLAN, S_M1_SWEEP, S_SRULE_CONVENTION_VERIFY, PLAN (+3 more) |  |
| 8 | X-numbers X1–X10 (ledger externals ∪ A11 addendum cross-scale list) | 10 | 304 | 31 | TRUST_LEDGER, PLAN, reports/LEDGER_AUDIT_CLOUD, S_ORDER_CANON, INFINITE_VOLUME_PLAN (+26 more) |  |
| 9 | Closure Table 1 R1–R46 (also canon rules R1–R7, local R-labels) | 48 | 1460 | 148 | CLOSURE_PLAN, PLAN, TRUST_LEDGER, U3_LEMMA51_R23, S_A3_GAMMA0_FULL (+143 more) |  |
| 10 | Closure Table 2 readings I-01…I-56 | 56 | 229 | 13 | CLOSURE_PLAN, PLAN, S_MULTISCALE_OMEGA_VERIFY, S_P254_TRANSFER, S_SRULE_CONVENTION (+8 more) |  |
| 11 | Sweep items NEW-1…NEW-4 (+ NEW4 in file names) | 5 | 299 | 14 | S_M1_SWEEP, PLAN, TRUST_LEDGER, S_D3_NEW4_VERIFY, S_MULTISCALE_OMEGA_SOURCED (+9 more) |  |
| 12 | (M1) labels | 1 | 184 | 33 | PLAN, TRUST_LEDGER, reports/LEDGER_AUDIT_CLOUD, paper/sources.tex, S_HIGHER_M1 (+28 more) |  |
| 13 | Fix-pass ids F7–F23 (∪ PAPER_FIX_LOG F1–F27, WG/A1_WALK F1–F7) | 17 | 259 | 32 | PLAN, reports/PAPER_AUDIT_CLOUD, S_ORDER_CANON, PAPER_FIX_LOG, TRUST_LEDGER (+27 more) |  |
| 14 | Theorem-file tags T37-*, T39-*, T310-* | 64 | 205 | 12 | THM37_FULL, THM310_FULL, THM39_FULL, PLAN, THM37_FULL_VERIFY (+7 more) |  |
| 15 | Canon amendment labels E1–E8, F.1–F.5, G.1–G.5 | 18 | 99 | 5 | S_ORDER_CANON, S_ORDER_CANON_VERIFY2, S_ORDER_CANON_VERIFY, lean/YmLean/CanonOrder.lean, lean/VERIFY_CanonOrder |  |
| 16 | A1_WALK_FULL inputs IN1–IN21 | 21 | 150 | 11 | A1_WALK_FULL_VERIFY, A1_WALK_FULL, CLOSURE_PLAN, TRUST_LEDGER, PLAN (+6 more) |  |
| 17 | A16 property list Q1–Q11, (U-a)–(U-d) | 15 | 731 | 38 | S_M1_SWEEP, S_A16_REPLACE2, PLAN, S_A16_REPLACE, S_SRULE_CONVENTION (+33 more) |  |
| 18 | Obstacle labels O1–O8 (FX, A1_WALK, U3, IV) | 17 | 1032 | 124 | PLAN, TRUST_LEDGER, THEOREM2_PROOF, U3_AW, paper/sources.tex (+119 more) |  |
| 19 | IV lemmas L1–L17 (∪ other L-labels, lattice sizes L = n) | 17 | 1189 | 125 | PLAN, S_MB, INFINITE_VOLUME_FABLE, INFINITE_VOLUME_FABLE_VERIFY, INFINITE_VOLUME_IV12 (+120 more) |  |
| 20 | S-numbers S1–S16 (A11_CONST conditions ∪ B4 (S1)–(S3) ∪ sourced chain S1 ∪ S1 fix pass) | 17 | 1220 | 132 | PLAN, TRUST_LEDGER, S_T2_S123_VERIFY, S_T2_S123, S_ORDER_CANON (+127 more) |  |
| 21 | Verify-item labels V1–V13 | 14 | 1443 | 176 | WC_FULL, PLAN, S_MULTISCALE_OMEGA_SOURCED, TRUST_LEDGER, S_T2_V1 (+171 more) |  |
| 22 | Targets T1, T2 (∪ CMP 119 (T1)–(T4), Lemma T (T2), SOURCES_T2_*) | 2 | 705 | 91 | TRUST_LEDGER, PLAN, lean/YmLean/MagneticShift.lean, S_T2_H0_VERIFY, THEOREM2_PROOF_v4 (+86 more) |  |
| 23 | Named results (Lemma/Theorem/Prop./Corollary/Fact/Claim + name) | 193 | 4913 | 344 | PLAN, TRUST_LEDGER, paper/sources.tex, THEOREM2_PROOF_v4, THM37_FULL (+339 more) |  |
| 24 | Parenthesized labels (cross-file, label-shaped) | 956 | 14501 | 444 | PLAN, TRUST_LEDGER, paper/sources.tex, THEOREM2_PROOF_v4, paper/assembly.tex (+439 more) |  |
| 25 | Paper \label/\ref keys | 292 | 922 | 10 | paper/appendix.tex, paper/sources.tex, paper/remains.tex, paper/assembly.tex, paper/theorem2.tex (+5 more) |  |
| 26 | Lean CanonOrder constructors B1…B33 + subs | 52 | 461 | 1 | lean/YmLean/CanonOrder.lean |  |
| 27 | Lean declarations named after ids (lemma_*, lemmaN*, K1_*, P4_*, nest_D*) | 29 | 248 | 52 | lean/README, PLAN, lean/YmLean/WeightedNorm.lean, TRUST_LEDGER, lean/VERIFY_WeightedNorm (+47 more) |  |
| 28 | File names embedding ids (SOURCES_A11_*, SOURCES_B21_*, SOURCES_F19_*, THM37_*, H2_CERTIFY_L13 …) | 243 | 6390 | 402 | reports/CITATION_CHECK, TRUST_LEDGER, paper/sources.tex, PLAN, INDEX (+397 more) |  |

Findings from the inventory.
- 28 families. About 1,050 distinct project objects carry an identifier that is cited in more than one file. They use at least 14 different shapes: letter+number (A1), letter+number+suffix (A1w, B10a, A10′, C9′), dashed (I-02, NEW-3, C-new-2, T37-I1), parenthesized strings ((H-hol), (Vol), (C1*)), "Lemma"+string (Lemma T, Lemma LB_Q̃, Lemma D□), file-prefixed tags (T39-PR1), and task counters (B114, F19).
- Every one-letter prefix with a small number is overloaded. B is the worst: ledger rows B1–B22, canon lines B1–B33, and task ids B1–B135 share the same strings (4,213 hits on B1–B22 alone, in 204 files).
- 47 of the 184 named results have more than one defining file outside verify, plan, paper, and Lean files (homonyms or restatements, §3 M17).
- File names embed old ids (SOURCES_A11_CONST, SOURCES_B21_S, SOURCES_F19_WGRATE_VERIFY, THM37_FULL, H2_CERTIFY_L13): 243 distinct names, 6,390 references.
- Found while reading, not an id problem but stale: TRUST_LEDGER.md §7 says CanonOrder has "135 edges"; lean/YmLean/CanonOrder.lean `counts` proves 167 edges and 50 lines.

## 2. The scheme

### 2.1 Shape

Every project object gets one primary id of the form `P-nnn`: one capital letter, a hyphen, and exactly three digits. Tasks use four digits (`T-nnnn`), because the task counter already passed 100 and will pass 999. The prefix names the object kind. The number is an address. It carries no status.

| prefix | kind | defining file (single source) | range used by the mapping |
|---|---|---|---|
| R- | ledger row: a statement a target rests on that is not proved here (old Group A and Group B) | TRUST_LEDGER.md | R-001–R-029 (old A), R-101–R-122 (old B) |
| K- | convention or choice (old Group C, C9′, C-new-*) | TRUST_LEDGER.md | K-001–K-050 |
| X- | external result, not Balaban, cited and not re-proved | TRUST_LEDGER.md | X-001–X-005 |
| N- | canon line of the constant order | SOURCES_ORDER_CANON.md Part B | N-010–N-500, step 10 |
| Q- | closure work item: a Balaban printed input, a sweep finding, or an obstacle | CLOSURE_PLAN.md | Q-001–Q-046, Q-101–Q-104, Q-201–Q-208, Q-301–Q-304 |
| H- | hypothesis, condition, or reading [I] that a proof assumes | registry (IDS.md, see §5) | H-001–H-056 (readings), H-100 ((C)), H-101–H-223 (named), H-401–H-474 (id-shaped labels), H-501–H-564 (condition lists), H-601–H-621 (A1_WALK inputs), H-701–H-722 (theorem-file input tags) |
| L- | lemma, proposition, theorem, fact, or claim proved in this project | registry (IDS.md) | L-001 (Theorem 2w), L-002–L-289, L-301–L-317 (IV lemmas), L-401–L-416 (theorem-file proved tags), L-501–L-529 (paper-only statements, M18) |
| T- | task (agent run, verifier, fix pass) | PLAN.md log | T-0001–T-0135 (old B tasks), T-1007–T-1023 (old PLAN fix passes F7–F23) |

Verification files keep their shape: `SOURCES_<TOPIC>_VERIFY.md` pairs with `SOURCES_<TOPIC>.md`. A file name is a document name, not an object id (§2.4 rule 8).

### 2.2 Why this shape

1. Minimal distinct prefixes. Eight one-letter prefixes cover every object kind found in the inventory. No two prefixes share a letter. Each letter names the kind: Row, eXternal, caNon, Question (closure item), Hypothesis, Lemma, Task. Conventions get K, not C: bare C1–C46 strings will survive in frozen files (§5.1) and C_1, C_2 are Balaban symbols, so a new C- id would be misread as an old row. K is the nearest free letter.
2. The hyphen and the fixed digit count make every new id disjoint from every old string. The corpus today has zero hits of `\b[RKXNQHL]-\d{3}\b` or `\bT-\d{4}\b`. The only dashed hits are math such as `L-1`, `N-1`, `X-2`, `K-1` (one or two digits). So the apply pass and the verifier can tell old from new with one regex, and Balaban's labels ((T1), R_2, B_3, (2.9)) can never collide with a project id.
3. Zero padding gives a fixed width, so sorted text order equals numeric order, and `R-11` cannot be a prefix of `R-110`.
4. No letter suffixes (a, w, ′, ″). A suffix made three ids for one row (A10, A10′; A1, A1w; C9, C9′). A changed statement gets a new number; a sub-line gets its own number.
5. No parenthesized string as a primary id. Strings collide ((S) is C17 and B21; (H-hol) is B16 and B17; (M1) is C24 and I-35). A name may follow the id as a description: "L-178 (Lemma LC, complex local operators)", "K-031 (Vol)".
6. The prefix does not encode status. Old Group A versus Group B (Balaban's assertion versus our item) is a column of the ledger, not a prefix. Rows change status every round (proved, reduced, left the ledger); the id must survive that.
7. Mnemonic blocks for the transition (an open choice, §6): old A_n → R-0nn, B_n → R-1nn, C_n → K-0nn, X_n → X-00n, closure R_n → Q-0nn, closure I-nn → H-0nn, task B_n → T-0nnn, fix pass F_n → T-10nn. A reader who knows "B17" finds R-117 without the table. New objects take the next free number in their block.

### 2.3 Canon order is numeric order

Canon lines get N-010, N-020, …, N-500 in file order (the order of `canonOrder` in lean/YmLean/CanonOrder.lean, which the generator checked equals Part B line order). So rank = number/10 − 1, and "every condition uses only constants on earlier lines" becomes "every edge goes from a smaller N to a larger N". Step 10 leaves nine free numbers between lines, so a later line insert (like G added B10a–B10g between B9 and B5a) does not renumber anything. If more than nine inserts land in one gap, renumber that gap only and record it in the change log.

CanonOrder.lean after the change: constructors `N010 … N500` (Lean identifiers can start with N and contain digits); `canonOrder`, `canonEdges`, and the theorems keep their text with the new constructor names. `edges_forward` still decides by `rank`. One theorem should be added: `id_eq_rank : ∀ a, num a = 10 * (rank a + 1)` (decidable), so the build itself certifies that numeric order equals file order.

### 2.4 Rules

1. One id, one object, one defining line. An object that two files name gets one id; the other names become aliases in the mapping (§3 M8, M11, M15).
2. Prose cites as `ID (short name)` on first use in a section, then `ID` alone.
3. Lemmas keep their descriptive name after the id: "L-252 (Lemma T, cut-off χ(d/D_0))". Two lemmas with the same old name get two ids (§3 M17 homonyms).
4. Lean: a declaration whose name is an old project id is renamed `lemma_Lnnn` (or `theorem_Lnnn`), the docstring starts with "L-nnn (name)", and the old name stays one round as `@[deprecated] alias`. Descriptive Lean names (rho2_le, combes_thomas) stay; their docstring gains the id. Balaban's labels stay in Lean names (eq29_line2_full is CMP 119 (2.9), not a project id).
5. Paper: object labels mirror the id with the hyphen removed and the environment kept: `lem:L017`, `thm:L001`, `prop:L516`, `def:H159`. Section labels (sec:, app:), remarks (rem:), and correction labels (corr:) are document structure and stay.
6. External labels never change: Balaban's equation, theorem, and page numbers; CMP volumes; journal volumes (Nucl. Phys. B180); OS axioms (OS0)–(OS4); CMP 119 (T1)–(T4); and every symbol (B_0, C_1, ε_1, M_1, R_2, κ). Symbol clashes are resolved by superscripts, as SOURCES_ORDER_CANON F.2 and G.2 already do, not by this scheme.
7. File-local labels stay local: verify items (V1–V13 in each *_VERIFY.md), Steps, numbered list items, WG_FULL/A1_WALK_FULL fix notes F1–F7, PAPER_FIX_LOG items F1–F27, canon amendment sections E1–E8, F.1–F.5, G.1–G.5, and the canon resolutions R1–R7. Another file cites them only in qualified form: "SOURCES_ORDER_CANON F.2", "THM39_FULL_VERIFY V1". A local label that is cited bare from another file is promoted to a global id; this plan promotes the ones found (A11_CONST S1–S16 and X1–X10, A16 Q1–Q11 and (U-a)–(U-d), A1_WALK_FULL IN1–IN21, FX O1–O4, the theorem-file tags).
8. File names do not change in this pass (open choice, §6). Old ids inside file names are then historic text, like a paper title.
9. Targets are written in full ("Target 1", "Target 2"). Bare T1 and T2 retire: T2 also names the SOURCES_T2_* (Theorem 2) file family, Lemma T's threshold (T2), CMP 119 (T2), and Route B's (T1).

## 3. Complete old → new mapping

Generated from the corpus by script (scripts lived in /tmp and were deleted after use; regenerate on demand). Sections M1–M19. "home" = the file with the most hits that is not a verify, ledger, plan, inbox, paper, Lean, numerics, or report file. Shared new ids in a table are intentional aliases (one object, two old names); the alias rows say so. Rows marked HOMONYM or "review" need the reviewer's decision in the apply pass (§5.3).

### M1. Ledger Group A rows → R-0nn (29 rows)

| old | new | meaning / note |
|---|---|---|
| A1 | R-001 | Kernel bound \ |
| A1w | R-028 | Walk-expansion form of A1: the A1-level walk expansion of (QGQ*)^{−1} that bui… — walk-expansion form of A1; suffix removed |
| A2 | R-002 | R_2 (precision difference C_0^{−1} − Re C^{(k)}(Z_0,σ)^{−1}) and R_3 obey \ |
| A3 | R-003 | C*Δ_kC ≥ γ_0 > 0 with γ_0 independent of k and U, for every U obeying (3.35)–(… |
| A4 | R-004 | Exponential kernel decay of δ²V/δA′²: \ |
| A5 | R-005 | Inductive assumption: E^{(j)}(X, g_{j−1}, U, J) is C^∞ in g_{j−1} ∈ [0, γ]; β_… |
| A6 | R-006 | E^{(j)}, β_j are analytic in the effective couplings ("(or analytic)"), with t… |
| A7 | R-007 | ‖C*Δ_kC‖ ≤ γ_1 uniform in k, volume, regular U, and uniform exponential decay … |
| A8 | R-008 | For the real pair (U, 0) the localized operators are symmetric and dμ_{C^{(k)}… |
| A9 | R-009 | C′_1 unprinted, not derivable; value not used (page reading, left §6) — retired (§6) |
| A10 | R-010 | The lower-order bracket terms of the step obey the same bound as the fifth-ord… |
| A11 | R-011 | "Similar inequalities hold for other constants, which will be introduced later… |
| A12 | R-012 | β_0 arbitrarily small, CMP 119 p. 255; fixed before γ (page reading, left §6) — retired (§6) |
| A13 | R-013 | Theorem 1: if g_k ∈ ]0, γ] for all k with γ small, the densities ρ_k have the … |
| A14 | R-014 | Induction closure: the t_□-derivative yields a factor O(1)α_2^{−1}ε_1 that bea… |
| A15 | R-015 | β_j is the coefficient of the infinite-volume, whole-lattice extension of the … |
| A16 | R-016 | Propagators in the background-field equations may be replaced by any operators… |
| A17 | R-017 | supp χ_k ⊂ {g_k\ |
| A18 | R-018 | Regular-class identification: the backgrounds of CMP 109/116/122 lie in the re… |
| A19 | R-019 | (190) holds at complex B on the ball \ |
| A20 | R-020 | R_{K+1} ≥ L from CMP 119 (2.5) for γ < e^{−1/2} (page reading, left §6) — retired (§6) |
| A21 | R-021 | uniform-in-k moments and decay of E_0 (proved, SOURCES_T2_EUMOM; left round 4) — retired (§6) |
| A22 | R-022 | Π (4.37)/(5.1); CMP 119 (2.42) corrected (page reading, left §6) — retired (§6) |
| A23 | R-023 | Balaban does not print the large-field T-step rate loss; CMP 119 Sect. 3 (pp. … |
| A24 | R-024 | Printed CMP 99 inputs of the (C) proof: (a) Thm 3.1 (3.46) for G′ at a = 1; (b… |
| A25 | R-025 | "Results of this, and previous papers … valid universally for all averages sat… |
| A26 | R-026 | U_{k+1}(□_0, M′(U)) "has approximately the same regularity properties … all ne… |
| A27 | R-027 | NEW-3: the walk expansions of CMP 99 Thms 3.7–3.10 "in their full generality" … |
| A10′ | R-029 | A10′: verified replacement form of A10 (A10′ R1–R4 residues) — prime removed; distinct statement |

### M2. Ledger Group B rows → R-1nn (22 rows)

| old | new | meaning / note |
|---|---|---|
| B1 | R-101 | (H2) ρ_2 = sup_{j≥2} sup_K ‖(⊕_l H_{j−1}(k_l))H_j(K)‖/L² < L; at L = 13 via (H… |
| B2 | R-102 | (PI) probe independence at each fixed level |
| B3 | R-103 | (F) lattice log coefficient = continuum log coefficient at constant field |
| B4 | R-104 | (M_j): formal = true f² coefficient: (S1) 𝒦_t(f) ≥ −C_1\ |
| B5 | R-105 | V1: β_{j+1}(0) is the Maxwell coefficient of the per-step Gaussian determinant… |
| B6 | R-106 | (G2) per-cell infinite-volume densities |
| B7 | R-107 | L5: β_{k+1}(g_0,…,g_k) defined and continuous on the clamped cube ]0, γ]^{k+1}… |
| B8 | R-108 | K-independence of β_j(g), R-term part. The original form (finite-volume R-term… |
| B9 | R-109 | Route B inputs (alternative to B2–B5): (T1) sup_j sup_q \ |
| B10 | R-110 | Results tagged proved, unverified, inside the chains: (i) the sweep of CMP 119… |
| B11 | R-111 | (B-S): the sourced version of Theorem 1, (E14-a, b, c), with the pointwise flo… |
| B12 | R-112 | (I): B_j(c) = F_j(u(c); x*) (frozen-threshold map) for constant sources; for B… |
| B13 | R-113 | Real uniform (H-hist): sup_i Σ_{j>i} \ |
| B14 | R-114 | (H-hist2): summable second history derivatives ε″_j ∝ u_{j−1}^{−2} for the fro… |
| B15 | R-115 | (H-thr): threshold mismatch Δ_j = B_j(·; frozen) − β_j(·; running) has summabl… |
| B16 | R-116 | (H-hol), small field: β_j holomorphic on \ |
| B17 | R-117 | (H-hol), large field: holomorphy and volume-uniform bounds of the R-step with … |
| B18 | R-118 | N3: \ |
| B19 | R-119 | (FX): the final Mayer expansion of the sum over large-field geometries plus th… |
| B20 | R-120 | Sourced step bookkeeping: (W4) step holomorphic in input activities on the E_0… |
| B21 | R-121 | (B-N1) bridge and (S): uniformity of the source bound in bump position and in … |
| B22 | R-122 | κ → κ/2 decay recovery only [R]: recovery of the decay halving κ → κ/2 of D2 b… |

### M3. Ledger Group C rows and proposed conventions → K-0nn (51 rows)

| old | new | meaning / note |
|---|---|---|
| C1 | K-001 | Freeze ε_j, δ_j, δ′_j, R_j, N, 100MR_k cubes, and partitions at Balaban's real… |
| C2 | K-002 | Option B margin: keep Balaban's output factor exactly; additive weight, g* = 0… |
| C3 | K-003 | L odd, L > 11 (Balaban's range, CMP 109 pp. 251–252); certification target L =… |
| C4 | K-004 | G = SU(2), d = 4 |
| C5 | K-005 | Order of constants: the canonical order is SOURCES_ORDER_CANON.md (B1–B33, ame… |
| C6 | K-006 | Holomorphy radius ρ_0 = min(0.1, (LM)^{−2}(8n)^{−1/2}), divided by √2 if w sca… |
| C7 | K-007 | Cut on B vs B′ — CLOSED: the cut is \ |
| C8 | K-008 | Keep the sharp χ_k (G3 Route 2); smooth χ̂ (Route 3) is the fallback with ε_1 … |
| C9 | K-009 | Shrink the χ_k threshold by a fixed factor so that supp χ_k lies inside the (1… |
| C10 | K-010 | Adapted gauge-fixing weight 1/u_k(c) in the sourced construction |
| C11 | K-011 | h ≡ 0 booking of the source gradient remainder; freezing set S_X = points of X… |
| C12 | K-012 | Additive source normalization w_0 = g_0^{−2} − f, τ in absolute u-units; N3 co… |
| C13 | K-013 | Use Balaban's main R-step form (1.90)–(1.98), not the optional (1.103)–(1.104) |
| C14 | K-014 | κ_final := 2κ + √d(1+2β)κ + c_d fixed before M (route a); M ≥ 12L(3κ_final)^{1… |
| C15 | K-015 | Fluctuation threshold exponent p_1 with Balaban's 2p_1 − (d+5)r_0 > p_0, givin… |
| C16 | K-016 | 32ε′ ≤ 1 (an extra smallness condition on ε_1; 40ε′ ≤ 1 for F2′ on P_{ρ_0}(x*)… |
| C17 | K-017 | (S): γ^{−2} ≥ c_sw·D′, c_sw = max(2, 1/(1 − (1+β_0)^{−2})) = 64/15 at β_0 = 1/… |
| C18 | K-018 | ℓ even (both seams of the time reflection are link planes); time periodic, so … |
| C19 | K-019 | Coupling domain ]0, γ], not [0, γ] |
| C20 | K-020 | Route K is the primary proof of T1; Route B is an alternative |
| C21 | K-021 | θ_* < 1 in Route B |
| C22 | K-022 | g_0(K, g): any solution of the shooting problem (existence, not uniqueness) |
| C23 | K-023 | (U): ρ_1 ≤ c_* r_0/M^a at λ_K = 1, a fixed; r_0 = Cauchy margin of the constan… |
| C24 | K-024 | (M1): the block size M = L^m is chosen ≥ M_req, the maximum of 32 lower bounds… |
| C25 | K-025 | (Hα): (α_5 + G_Γ²δ_S)Λ_0 ≤ ½ |
| C26 | K-026 | (Hγ): (1/20)γ_2ε_1²/γ² ≥ 4κ + 1, and the (2.31) γ condition (1/20)x − 4M^4e^{−… |
| C27 | K-027 | β_H ∈ (0, 1), 0 < β_H ≤ β_0^H < 1: the unprinted Hölder exponent of CMP 109 (I… |
| C28 | K-028 | M_2 slot: M_1 < M_2 < M (printed), order M_1 → M_2 → M, M > M_2 |
| C29 | K-029 | M_2 ≥ 1/δ (δ = decay rate of (190) [15], fixed before M_1) |
| C30 | K-030 | A_1/A_0 ≤ 1/(80B_3) (A_0 after A_1: A_0 ≥ 80B_3A_1; up-set in A_0) |
| C31 | K-031 | (Vol) volume hypothesis, added to THEOREM2_PROOF_v4 §1.1: the fixed torus has … |
| C32 | K-032 | (Cube): U_j(□_0, ·) of [14] uses only data on □_0 |
| C33 | K-033 | (Cases): the localization printed for the "typical term" holds for the other t… |
| C34 | K-034 | (Conv): cube sides divide N; partitions are π-images of the Z^4 partitions; M … |
| C35 | K-035 | (Det′): a domain-assignment rule for closed-walk terms of the [16] determinant… |
| C36 | K-036 | p. 290 reading: "H_j with free boundary conditions" means the Z^4 operator |
| C37 | K-037 | (Enl): the s-rule localization domain of a walk is ∪X_i^5 as a whole-lattice s… |
| C38 | K-038 | (C1*): c_mM_0·g_kp_0(g_k) ≤ ½κ_HC_1^{102}a_*^{102}, uniform in k (canon B30) |
| C39 | K-039 | M_0 slot and a_*^{102} (incl. the cube cap ε_1^{102} ≤ R_1M_1a_1^{102}/M), pla… |
| C40 | K-040 | A16 tree conditions: (A16-a^T) g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4; (A16-b^T) q_W^T ≤… |
| C41 | K-041 | (A18-1)–(A18-4) and M ≥ 5M_99 with 10 \ |
| C42 | K-042 | CMP 122 I–II threshold/exponent conditions S12–S16 (ν_I ≤ 2(p_0 − p_1 − 1); N … |
| C43 | K-043 | (Cv1) U(c) = product of the L level-(i−1) links on the straight segment c_− → … |
| C44 | K-044 | Lemma T cut-off χ(d/D_0), D_0 = D_0(d, L), with the threshold (T2): torus side… |
| C45 | K-045 | (C-new-2) s-rule: s-versions are defined per distinct σ_0-cube met on the proj… |
| C46 | K-046 | γ²β′ ≤ 1/L: unprinted side condition of CMP 119 (2.9) line 2 (the step L(1 + X… |
| C9′ | K-047 | C9 variant (shrink r < 1) named in CLOSURE_PLAN Table 3; unused — prime removed |
| C-new-1 | K-048 | ι-domain assignment (WG 2.5); proposed, not a ledger row — proposed |
| C-new-2 | K-045 | s-rule convention = ledger C45 (alias) — alias of C45 |
| C-new-3 | K-049 | A16 Ω-setting volume convention; proposed — proposed |
| C-new-4 | K-050 | B20 (Conv_Λ) and Λ_j nesting; proposed — proposed |

### M4. Ledger externals → X-00n (5 rows)

| old | new | meaning / note |
|---|---|---|
| X1 | X-001 | Lüscher–Weisz (5.7) one-loop coefficient |
| X2 | X-002 | OS II linear growth condition \ |
| X3 | X-003 | Reflection positivity of the Wilson action for link-plane reflections on the p… |
| X4 | X-004 | Convergence criterion for the final cluster expansion |
| X5 | X-005 | (F) continuum log coefficient of the constant-field one-loop effective action |

### M5. Canon lines → N-010 … N-500 (file order = dependency order; step 10) (50 rows)

| old | new | meaning / note |
|---|---|---|
| B1 | N-010 | β_0^H ∈ (0, 1). Hölder bound of CMP 99 Thm 2 / CMP 102 Thm 1; costs B_… (rank 0) |
| B2 | N-020 | β_H ∈ (0, β_0^H]. — C27; SOURCES_A10_LOWER_VERIFY (5). (rank 1) |
| B6 | N-030 | β_0 (CMP 119 slack): β_0 ≤ ½ (S3). Moved here from Group 2 (E2); B4 us… (rank 2) |
| B3 | N-040 | d ≥ 2; N (G ⊂ U(N)). — WC_FULL 0.10. (rank 3) |
| B4 | N-050 | L odd, L ≥ 13, in the certified set of HIGHER_M1 B1. S10, 2(1 + β_0)L^… (rank 4) |
| B5 | N-060 | θ_WG = ½ (a number; first); β = ¼; δ: (K1′) δ ≤ (1/13)(1 − 4(1 + 4β)/L… (rank 5) |
| B7 | N-070 | κ: large; δLκ/48 ≥ K_abs; κ ≥ 2m_tot (so θ_K := 1 − m_tot/κ ≥ ½, the v… (rank 6) |
| B8 | N-080 | κ_0 ≥ 7, large; then β_0′ with (1 + β_0′)^{κ_0} ≤ 1 + β_0 if a step ne… (rank 7) |
| B9 | N-090 | κ_1: ⅛(κ_1 − 1) ≥ (1 − 3δ)κ; ½(κ_1 − 1) ≥ 2Lκ; large. Before M_1 (R6).… (rank 8) |
| B10a | N-100 | RM_min: θ_L := log L/(RM) ≤ δ′/(8(d + 4)), δ′ = (1 − θ_37)δ_0, and CMP… (rank 9) |
| B10b | N-110 | THM37 constants at RM_min: B′, c′^{37}, K_1^{37}, c_1(θ_37), C_37, a_3… (rank 10) |
| B10c | N-120 | THM39 constants: δ_G^min = (7/16)δ′, b_G^{39}, C_𝒟^N, c_+^{39} → ε_39 … (rank 11) |
| B10d | N-130 | RM_0 := max{RM_min, 4(d + 4)log L/ε_39}; δ_39 := ½ε_39 − /2 − d/2/θ_L … (rank 12) |
| B10e | N-140 | THM310 constants: δ_* := (1 − θ_310)²·¼ε_39 (final rate line; the (1 −… (rank 13) |
| B10f | N-150 | δ_310 := (1 − θ_310 − λ)δ_* (RM-free); δ_WG := δ_310 − θ_L(RM_0) = min… (rank 14) |
| B10g | N-160 | Complex radii: b_1^{37} ≤ min{a_1^c(θ_37), k_av^c}; b_G^c := b_G^{39}(… (rank 15) |
| B5a | N-170 | (Moved here in G, after B10g; it uses δ_WG, c_0, B_WG of B10f.) θ_WG =… (rank 16) |
| B10 | N-180 | (Restated in G; position after B5a.) R, M_min(d, L): R > 18dL (c_R = 1… (rank 17) |
| B11 | N-190 | Walk constants at M_min: c_−, b_G, c_G, δ_G (from (1 − θ_WG)δ_WG, B10)… (rank 18) |
| B12 | N-200 | ε = min{½δ_G, c_−/(8c_+Σ(½δ_G))}; c_1(½ε), Σ(½ε), Σ(¼δ_G), K_F, K_W, C… (rank 19) |
| B12a | N-210 | δ_1 := ½ε (WG common rate); a_*′ := min{a_*, K_V^{−1}(4C_𝒟^{H1}c_1)^{−… (rank 20) |
| B12b | N-220 | B_1 and the tree rate (1 − θ_WG)δ_1 of Theorem WG-G1 (valid under Mα_0… (rank 21) |
| B12c | N-230 | C_{G1} (the Schur constant of A1_KERNEL §9, A.4 item 6); a_{−,1} := 1/… (rank 22) |
| B13 | N-240 | WC real constants: B_A, δ_A, ε_WC = min{½δ_A, γ_exp/(8B_AΣ(½δ_A))}, Γ_… (rank 23) |
| B14 | N-250 | Level constants (Part A.4, all M-free and α-free): c_+⁗, Γ_4, k_3, ε_3… (rank 24) |
| B14a | N-260 | 𝒲_S tree constants: C′_𝒟^f := C′_𝒟 enlarged by the finite W_S tag set … (rank 25) |
| B15 | N-270 | M_1 = L^{m_1}: M_1 ≥ M_W; ≥ M_W^c at each level; ≥ (2C_Wc_1K_W)²; ≥ M_… (rank 26) |
| B16 | N-280 | M_2 := L²M_1 (CMP 119 p. 245). Determined by B15; M_2 ≥ 1/δ_[15] holds… (rank 27) |
| B17 | N-290 | G3_GGAMMA constants K_½, Ḡ (G_Γ ≤ Ḡ, M-free [I, G3_GGAMMA 4.1 unverifi… (rank 28) |
| B17a | N-300 | Sourced-covariance constants: W^f (label count at rate ε″/32), Γ̄_1^f … (rank 29) |
| B18 | N-310 | M = L^m: M ≥ M_req: 32 lower bounds = the 29 entries of HIGHER_M1 B3 (… (rank 30) |
| B18a | N-320 | M_0 (CMP 122 I (1.101) cutoff constant; free; uses nothing, so any slo… (rank 31) |
| B18b | N-330 | C_1^{FX} := max(1, C_c): the budget constant of CMP 122 II (1.80), (1.… (rank 32) |
| B19 | N-340 | ρ_0 ≤ min{0.1, (LM)^{−2}(0.45a/(16n))^{1/2}}. Any slot after B18. — SO… (rank 33) |
| B20 | N-350 | Complex domains (A.6): α‴ = (j‴, k_3a_1), j‴ = min(a_/M, c″M^{−1}M_1^{… (rank 34) |
| B21 | N-360 | α_*: α_0 + α_1 ≤ α_*, needs α ≪ α′. — WC_FULL 6.9; S2_G1_V7 B1.4. (rank 35) |
| B22 | N-370 | Fixed-layer α-chain, after α′ (R5): β, α′ → α_1 → α_0 → α_3 → α_2 (α_4… (rank 36) |
| B22a | N-380 | ε_0^{109} (CMP 109 real-background plaquette constant) (A18-2): ε_0^{1… (rank 37) |
| B23 | N-390 | α_5 (composite, not free); (Hα) (α_5 + G_Γ²δ_S)Λ_0 ≤ ½ holds by B18 an… (rank 38) |
| B24 | N-400 | ε_1: upper bounds via κ_1, B_0, C_i^{116}, α_2, α_4, Latin a_1, M^q, E… (rank 39) |
| B25 | N-410 | r (= r_0^{exp}; r ≥ 2; S7 needs r > 1), ν_I → p_0 with p_0 > (d + 5)r … (rank 40) |
| B26 | N-420 | A_1: γ_0A_1² ≥ 8 + 4 log F (F fixed earlier [I: IEPS_VERIFY §21]). (R1… (rank 41) |
| B27 | N-430 | A_0: ≥ 2 (A_0 ≥ n, Cauchy); ≥ k/(2θ_LF), where θ_LF is the fraction of… (rank 42) |
| B28 | N-440 | C_0 ≥ c(B_3)A_0 (C3); C2; (A18-3) if q_0 = p_0: C_0 ≥ O(1)B_3B_5^{122}… (rank 43) |
| B29 | N-450 | C_1: C4, B_3²O(1)Mα_0 < ½α_1 in LF form (C_1/C_0 lower, with q_1 ≥ q_0… (rank 44) |
| B29a | N-460 | Scale-indexed rules (not constants): N_0 := least integer with L^{−N_0… (rank 45) |
| B30 | N-470 | γ: S1, S2, S6–S9; γ < e^{−q_i}; B10, B11; (L1), (L2); (1.68); p. 379; … (rank 46) |
| B31 | N-480 | g ≤ min(γ/2, g_1). — C5. (rank 47) |
| B32 | N-490 | r_0^{rad} = τ_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/… (rank 48) |
| B33 | N-500 | K. — C5. (rank 49) |

### M6. CLOSURE_PLAN Table 1 [R] inputs → Q-0nn (46 rows)

| old | new | meaning / note |
|---|---|---|
| R1 | Q-001 | CMP 99 Thm 3.10: walk expansion of G_0, (3.107)–(3.108) |
| R2 | Q-002 | CMP 99 Thm 3.9: walk expansion of C′ = (Q′G′²Q′*)^{−1}, (3.98)–(3.99) |
| R3 | Q-003 | CMP 99 Thm 3.7 + Cor. 3.8: walk expansion of G′, (3.90), (3.94) |
| R4 | Q-004 | CMP 95 Prop. 1.2; CMP 96 Prop. 2.2 (U = 1 templates of R3) |
| R5 | Q-005 | CMP 96 Lemma 2.1: c_1(κ) under (2.59) |
| R6 | Q-006 | CMP 96 Lemma 2.4 (free block lower bound) |
| R7 | Q-007 | CMP 99 Thm 3.4: G′, C′, R, G analytic for α_1 ≤ a_1, "satisfy all the inequali… |
| R8 | Q-008 | CMP 99 Thms 3.1, 3.3 (bounds on G′, G_0, G) |
| R9 | Q-009 | CMP 99 Thms 3.11–3.12 (G_1 > 0; Thm 3.3 for G_1 via (3.138)) |
| R10 | Q-010 | CMP 99 p. 422 (3.132) and (3.133): "We will not repeat these considerations" |
| R11 | Q-011 | CMP 99 p. 422 "Theorem 3.10 holds also because we replace each operator in (3.… |
| R12 | Q-012 | CMP 99 Thm 3.15, (3.185)–(3.187); Ğ_2 p. 432 |
| R13 | Q-013 | CMP 99 (3.134)–(3.137): Δ^{(2)} form and local bound (R-Δ2) |
| R14 | Q-014 | CMP 99 (3.10) + (3.35): R-Δ′ (relative bound of Δ′) |
| R15 | Q-015 | CMP 98 (139) one step; (124)–(125), (139)–(146), Prop. 2 |
| R16 | Q-016 | CMP 98 / CMP 96: Q_j straight-line form (CMP 95 (1.11)/(1.18), CMP 96 (2.7), (… |
| R17 | Q-017 | CMP 99-reg Prop. 6 (regular class from the plaquette class) with Thms 2, 4 |
| R18 | Q-018 | CMP 99 p. 428: "we can prove it for C*Δ_kC with an arbitrary U" (A3) and "unif… |
| R19 | Q-019 | CMP 99 p. 428 R5: A_x(y) = T(y), pointer to [4] (2.154)–(2.155) |
| R20 | Q-020 | CMP 102 Thm 1 (9)–(10): minimizers for minimal configurations; B_3 = B_3(d, L) |
| R21 | Q-021 | CMP 102 Props. 3–4 (proved; use N1 = (3.132)) |
| R22 | Q-022 | CMP 102 Prop. 6 ((U), uniqueness) |
| R23 | Q-023 | CMP 102 p. 308 (189): "We do not perform these calculations here" |
| R24 | Q-024 | CMP 102 Prop. 9 p. 309: (190) restated; analyticity of 𝓗 in B |
| R25 | Q-025 | CMP 102 pp. 271–272: [16] determinant expansion |
| R26 | Q-026 | CMP 109 p. 254: "all results of the paper [12] are valid for it. The proofs ar… |
| R27 | Q-027 | CMP 109 p. 263 (1.18) sup bound; "absolute constants" |
| R28 | Q-028 | CMP 109 pp. 263–264: A5 inductive assumption (smoothness of β, Z^d limit) |
| R29 | Q-029 | CMP 109 Sects. 3–5 bounds: (3.32), Lemma 4, (3.54), (4.3)–(4.5), (4.14)–(4.37)… |
| R30 | Q-030 | CMP 109 p. 280: induction closure "much bigger than E_0" (A14) |
| R31 | Q-031 | CMP 116 pp. 8–9: (1.24) "bounded similarly", (1.29) "other terms" (A10) |
| R32 | Q-032 | CMP 116 Lemma 1 (1.34)–(1.36), absolute C_1, C_2, q |
| R33 | Q-033 | CMP 116 (2.15)–(2.25) chain; (2.16) for R_1 FULL, "R_2, R_3 satisfying (2.16)"… |
| R34 | Q-034 | CMP 116 p. 15: complex case "handled by a perturbative argument" |
| R35 | Q-035 | CMP 116 p. 13 (2.7): C*Δ_kC series "if γ_1 is sufficiently large"; walk expans… |
| R36 | Q-036 | CMP 116 p. 3: walk domains on M_1-cubes "instead of M"; s-rule |
| R37 | Q-037 | CMP 116 p. 2: "in exactly the same way" (C33, other term classes) |
| R38 | Q-038 | CMP 116 §2 printed conditions (23 + 4), Lemma 2, (1.36), (2.5)–(2.6) |
| R39 | Q-039 | CMP 116 (2.27) tree bound; (2.33)–(2.41) |
| R40 | Q-040 | CMP 119 (2.6)–(2.9) and p. 256 "similar inequalities hold for other constants"… |
| R41 | Q-041 | CMP 119 p. 278: small-field terms "do not depend on Λ_{k+1}" (A15) |
| R42 | Q-042 | CMP 119 Sect. 3 (T-step): 10δ printed; ≤ 3δ unprinted; R1 count sketch; R3 the… |
| R43 | Q-043 | CMP 122 I Prop. 1 (1.78), (1.80); Sect. 1 thresholds |
| R44 | Q-044 | CMP 122 II p. 383 block bound (1.77)–(1.78) (p_1 misprint) and (1.79)–(1.98) R… |
| R45 | Q-045 | CMP 122 II Theorem 1 (A13) |
| R46 | Q-046 | [14] construction U_j(□_0, ·) (CMP 109 p. 276 "depending on U restricted to th… |

### M7. CLOSURE_PLAN Table 2 [I] readings → H-0nn (56 rows)

| old | new | meaning / note |
|---|---|---|
| I-01 | H-001 | IN8 / WG cube geometry (G): cover 𝒟, cores, h_□, □⁺, C_𝒟, C_ov; set form of (B… |
| I-02 | H-002 | IN9 O2: Lipschitz bound c_h/M_1 of h_□ across scale boundaries |
| I-03 | H-003 | IN10 / WG (I7) / WC I2 / A4 N2: Q, Q*, Q′, D, R_b, C̃^{(2)}, K_b, C_j local wi… |
| I-04 | H-004 | IN12 / canon B9: κ_1 independent of M |
| I-05 | H-005 | WG C0: scale bookkeeping (L^jη)^{±} carried by m and S |
| I-06 | H-006 | WG ι-domain assignment (2.5) |
| I-07 | H-007 | M_1-cover [I/R]: (3.35)–(3.36) at scale M give Thms 3.7–3.10 on M_1-cubes |
| I-08 | H-008 | F4: Σ and θ-dependent constants monotone in θ (so M_min values stay valid) |
| I-09 | H-009 | WC I1 / A7 I1: (2.11) = (3.156) + G^{(2)} term, term by term (D̃^{(2)} = hC̃^{… |
| I-10 | H-010 | WC I3 / A7 I3 / A18 I3: Q̃ (CMP 109) = Q_1(U_1) (CMP 99); blocks of (0.14) = b… |
| I-11 | H-011 | WC I4 / A3 R2: Q(U) = Q_free(1 + O(α_0)) uniform in k |
| I-12 | H-012 | WC I5 / IN11: WG-1 J-junction factor needs α_0 ≤ c″M^{−1}M_1^{−12} |
| I-13 | H-013 | WC I6: dist(Z_0, Λ_k^c) > RM |
| I-14 | H-014 | WC I7: tilde convention of CMP 99 used on CMP 116 p. 13 |
| I-15 | H-015 | WC I8: smoothness/analyticity of the mean M near 1; Karcher property |
| I-16 | H-016 | WC I9 / A18 [I-J]: J local, |
| I-17 | H-017 | A7 C2 G_1 step: c_−(G_1) ≥ c_−(G)(1 − O(Mα_0)) "from (3.137) via Schur" |
| I-18 | H-018 | S2_G1 I-conv: δ/δA is the gradient for ⟨·,·⟩ of (3.3); Δ^{(2)} "determined by"… |
| I-19 | H-019 | A3 R4 / A3-R4: c_J′ = c(d, L)Mα_0 for the J-term of (3.156) |
| I-20 | H-020 | complex s, complex U clause of A7 (P-sketch) |
| I-21 | H-021 | A8 I-a: operators defined by quadratic forms are their symmetric representativ… |
| I-22 | H-022 | A8 I-b / s-rule reading: C^{(k)}(Z_0, σ) is the σ-weighted walk sum of A_Z^{−1… |
| I-23 | H-023 | A8 I-c: geometry (G1)–(G3): dist(σ_0, Z_0) ≥ M, domain diameters ≤ c′M_1, cube… |
| I-24 | H-024 | A8 I-d: walk count finite at rate ε″/8 |
| I-25 | H-025 | A8 I-e: "Re C^{−1}" in (2.15) is the symmetric real part; dμ_C for non-symmetr… |
| I-26 | H-026 | G3 (iii): (2.15)–(2.25) read as pointwise exponent bounds; (vii) bounds hold o… |
| I-27 | H-027 | G_Γ ≤ Ḡ uniform in M (C25 closure) |
| I-28 | H-028 | A10′ R2: R- and C-terms obey (1.29) "by mechanism" |
| I-29 | H-029 | A10′ R4: (4.5) tail constant from (4.3)–(4.4) |
| I-30 | H-030 | A17 reading R1: " |
| I-31 | H-031 | A19 (a): (189) holds at complex B |
| I-32 | H-032 | A19 (b): (73) complex clause |
| I-33 | H-033 | A19 (c): the (172) ball |
| I-34 | H-034 | A19 4.1(f): propagator lemmas are B-independent |
| I-35 | H-035 | A16 (M1): the Q1–Q11 list is complete (every property of C^{(k)} that CMP 116 … |
| I-36 | H-036 | A16 (S_H): scale normalization of D_S, J_S in the k-scale norm |
| I-37 | H-037 | A16 Ω-setting volume convention (CMP 122); widened in round 11 to NEW-3 (multi… |
| I-38 | H-038 | A18: U_{k,Z} obeys CMP 102 Thm 1; B and B_5 fixed numbers; R_1 < L |
| I-39 | H-039 | MA2 (C2): averaging map m analytic and local, so V′ enters with c_m |
| I-40 | H-040 | N6: CMP 116 step uses only g_k and sup E_0 (text-layer grep) |
| I-41 | H-041 | N8 (i): "absolute" = independent of X and j, applied to C_1, C_2, q, (1.39), u… |
| I-42 | H-042 | N8 (ii): C_Π j-free (localization geometry same at every j after rescaling) |
| I-43 | H-043 | A18 k-uniformity of CMP 102 constants C_2, C_4, B_0 |
| I-44 | H-044 | C32 (Cube): U_j(□_0, ·) of [14] uses only data on □_0 |
| I-45 | H-045 | C36: "H_j with free boundary conditions" = the Z^4 operator |
| I-46 | H-046 | B20 (Conv_Λ), Λ_j nesting |
| I-47 | H-047 | B7 causality: step k+1 uses only g_0, …, g_k |
| I-48 | H-048 | B4: KAPPA (1.1) b_{t,m} = §3.1 Moyal coefficients at σ = 0 |
| I-49 | H-049 | B3 Step C gauge-fixing part |
| I-50 | H-050 | B17 (I-ε): unprinted α_2–α_4 (γ_2) scaling; q_0 > p_0 vs q_0 = p_0 |
| I-51 | H-051 | B17 (I-V0): (I-lin), "Haar" |
| I-52 | H-052 | C27: CMP 102 Thm 1 (9) "β_0 = 1" is a misprint |
| I-53 | H-053 | C34: M_1 not checked in (Conv) |
| I-54 | H-054 | IEPS F fixed earlier (canon B26) |
| I-55 | H-055 | B15: small-field analogue of CMP 122 (1.73) assumed; Lemma T transfer |
| I-56 | H-056 | B13 large field: coarea Jacobian on non-round level sets |

### M8. Sweep items, obstacles, and the two (M1) → Q-1nn / Q-3nn / alias (11 rows)

| old | new | meaning / note |
|---|---|---|
| NEW-1 | Q-101 | gauge and Euclidean covariance of the step-k covariance (SRULE §6) |
| NEW-2 | Q-102 | large-field Gaussian of CMP 122 I (1.25), operator Δ^{(j)}_{Λ^c} (SRULE §6) |
| NEW-3 | Q-103 | walk expansions in the multiscale Ω-geometry; = ledger A27 (R-027) content — ledger row R-027 states it |
| NEW-4 | Q-104 | CMP 122 II (1.7)–(1.13), (1.21), (1.40), (1.77) use (SOURCES_D3_NEW4) |
| SOURCES_FX O1 | Q-301 | (1.89) improved bound with −κ_1d_k(X); closed as FX_O1 Lemma |
| SOURCES_FX O2 | Q-302 | (1.100) denominator = bare Wilson integral (FX_O23) |
| SOURCES_FX O3 | Q-303 | moved d_Sζ_iP_p term (FX_O23; carried in B18) |
| SOURCES_FX O4 | Q-304 | optional R-step form (1.103)–(1.104); avoided by C13 |
| A1_WALK_FULL O2 (= IN9 O2) | H-002 | alias of I-02 (Lipschitz bound of h_□ across scales) |
| (M1) [M-choice, round 4] | K-024 | = C24; write "K-024 (M1 block size)" |
| (M1) [A16 property-list completeness] | H-035 | = I-35; write "H-035 (A16 list completeness)" |

### M9. Task ids → T-0nnn (bare B1–B33 need context review) (135 rows)

| old | new | meaning / note |
|---|---|---|
| B1 | T-0001 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B2 | T-0002 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B3 | T-0003 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B4 | T-0004 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B5 | T-0005 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B6 | T-0006 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B7 | T-0007 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B8 | T-0008 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B9 | T-0009 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B10 | T-0010 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B11 | T-0011 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B12 | T-0012 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B13 | T-0013 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B14 | T-0014 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B15 | T-0015 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B16 | T-0016 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B17 | T-0017 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B18 | T-0018 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B19 | T-0019 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B20 | T-0020 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B21 | T-0021 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B22 | T-0022 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B23 | T-0023 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B24 | T-0024 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B25 | T-0025 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B26 | T-0026 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B27 | T-0027 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B28 | T-0028 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B29 | T-0029 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B30 | T-0030 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B31 | T-0031 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B32 | T-0032 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B33 | T-0033 | task id (PLAN/INBOX/OPUS_QUEUE); B1–B33 only where context says task |
| B34 | T-0034 | task id |
| B35 | T-0035 | task id |
| B36 | T-0036 | task id |
| B37 | T-0037 | task id |
| B38 | T-0038 | task id |
| B39 | T-0039 | task id |
| B40 | T-0040 | task id |
| B41 | T-0041 | task id |
| B42 | T-0042 | task id |
| B43 | T-0043 | task id |
| B44 | T-0044 | task id |
| B45 | T-0045 | task id |
| B46 | T-0046 | task id |
| B47 | T-0047 | task id |
| B48 | T-0048 | task id |
| B49 | T-0049 | task id |
| B50 | T-0050 | task id |
| B51 | T-0051 | task id |
| B52 | T-0052 | task id |
| B53 | T-0053 | task id |
| B54 | T-0054 | task id |
| B55 | T-0055 | task id |
| B56 | T-0056 | task id |
| B57 | T-0057 | task id |
| B58 | T-0058 | task id |
| B59 | T-0059 | task id |
| B60 | T-0060 | task id |
| B61 | T-0061 | task id |
| B62 | T-0062 | task id |
| B63 | T-0063 | task id |
| B64 | T-0064 | task id |
| B65 | T-0065 | task id |
| B66 | T-0066 | task id |
| B67 | T-0067 | task id |
| B68 | T-0068 | task id |
| B69 | T-0069 | task id |
| B70 | T-0070 | task id |
| B71 | T-0071 | task id |
| B72 | T-0072 | task id |
| B73 | T-0073 | task id |
| B74 | T-0074 | task id |
| B75 | T-0075 | task id |
| B76 | T-0076 | task id |
| B77 | T-0077 | task id |
| B78 | T-0078 | task id |
| B79 | T-0079 | task id |
| B80 | T-0080 | task id |
| B81 | T-0081 | task id |
| B82 | T-0082 | task id |
| B83 | T-0083 | task id |
| B84 | T-0084 | task id |
| B85 | T-0085 | task id |
| B86 | T-0086 | task id |
| B87 | T-0087 | task id |
| B88 | T-0088 | task id |
| B89 | T-0089 | task id |
| B90 | T-0090 | task id |
| B91 | T-0091 | task id |
| B92 | T-0092 | task id |
| B93 | T-0093 | task id |
| B94 | T-0094 | task id |
| B95 | T-0095 | task id |
| B96 | T-0096 | task id |
| B97 | T-0097 | task id |
| B98 | T-0098 | task id |
| B99 | T-0099 | task id |
| B100 | T-0100 | task id |
| B101 | T-0101 | task id |
| B102 | T-0102 | task id |
| B103 | T-0103 | task id |
| B104 | T-0104 | task id |
| B105 | T-0105 | task id |
| B106 | T-0106 | task id |
| B107 | T-0107 | task id |
| B108 | T-0108 | task id |
| B109 | T-0109 | task id |
| B110 | T-0110 | task id |
| B111 | T-0111 | task id |
| B112 | T-0112 | task id |
| B113 | T-0113 | task id |
| B114 | T-0114 | task id |
| B115 | T-0115 | task id |
| B116 | T-0116 | task id |
| B117 | T-0117 | task id |
| B118 | T-0118 | task id |
| B119 | T-0119 | task id |
| B120 | T-0120 | task id |
| B121 | T-0121 | task id |
| B122 | T-0122 | task id |
| B123 | T-0123 | task id |
| B124 | T-0124 | task id |
| B125 | T-0125 | task id |
| B126 | T-0126 | task id |
| B127 | T-0127 | task id |
| B128 | T-0128 | task id |
| B129 | T-0129 | task id |
| B130 | T-0130 | task id |
| B131 | T-0131 | task id |
| B132 | T-0132 | task id |
| B133 | T-0133 | task id |
| B134 | T-0134 | task id |
| B135 | T-0135 | task id |

### M10. PLAN fix-pass ids → T-10nn (17 rows)

| old | new | meaning / note |
|---|---|---|
| F7 (PLAN fix pass) | T-1007 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F8 (PLAN fix pass) | T-1008 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F9 (PLAN fix pass) | T-1009 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F10 (PLAN fix pass) | T-1010 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F11 (PLAN fix pass) | T-1011 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F12 (PLAN fix pass) | T-1012 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F13 (PLAN fix pass) | T-1013 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F14 (PLAN fix pass) | T-1014 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F15 (PLAN fix pass) | T-1015 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F16 (PLAN fix pass) | T-1016 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F17 (PLAN fix pass) | T-1017 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F18 (PLAN fix pass) | T-1018 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F19 (PLAN fix pass) | T-1019 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F20 (PLAN fix pass) | T-1020 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F21 (PLAN fix pass) | T-1021 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F22 (PLAN fix pass) | T-1022 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |
| F23 (PLAN fix pass) | T-1023 | fix pass; PAPER_FIX_LOG F-items, WG_FULL/A1_WALK_FULL fix notes F1–F7, Lemma F1/F2/F2′ are NOT this family |

### M11. Theorem-file tags → H-7nn (I, V: inputs/readings), Q-2nn (R: Balaban printed inputs), L-4nn (P, PR, M, L: proved pieces) (64 rows)

| old | new | meaning / note |
|---|---|---|
| T37-I1 | H-701 | (I-Ω0) outer Dirichlet convention for cubes meeting ∂Ω_0 / 3.2 / I / 4.3 / |
| T37-I2 | H-702 | What Lemma CC needs: (i) Cor. 3.6 uses only a gauge on a cube ⊃ Ω_0(□) with (3.3 |
| T37-I3 | H-155 | alias: (G-M1): □̃^5 of an M_1-cube inside an M-scale class cube / 7.3 / I-geo / |
| T37-I4 | H-703 | M_th of Thm 3.1 concerns R_0M_0, not the walk-cube size (reading of p. 408); als |
| T37-I5 | H-704 | Block-norm → μ-kernel conversion (WG convention C0) / 3.1 / I (WG_FULL C0) / con |
| T37-I6 | H-705 | Lemma D□, non-interface case only: the admissibility step "□-weights ≥ global we |
| T37-M1 | L-401 | (first use) [P given T37's inputs and the geometric item (G-M1) below]. Let M_1  |
| T37-P1 | L-194 | alias: Lemma N (composition of block norms) / 3.1 / P / 5.2, 8.3 / |
| T37-P2 | L-031 | alias: Lemma AG (agreement of global and local operators on □); false for the p |
| T37-P3 | L-171 | alias: Lemma K0 (commutator bound), K(h) := [h, Δ′_a] / 4.2 / P given T37-R5 /  |
| T37-P4 | L-211 | alias: Lemma P (parametrix (3.88)–(3.89) identity Δ′_aG′_0 = I − R′) / 4.3 / P  |
| T37-P5 | L-238 | alias: Lemma S (supports, walk constraint, locality in □̃^5, band) / 4.4 / P gi |
| T37-P6 | L-168 | alias: Lemma K (one-step (3.89)), K_1 = 2(3d + 1)c_hL²B_0C_nbe^{(c_nb + c_D)δ_0 |
| T37-P7 | L-276 | alias: Proposition W (per walk (3.94)), rate (1 − θ)δ_0, step K_1c_1(θ)/M / 5.2 |
| T37-P8 | L-073 | alias: Lemma C (counting), C_𝒟^in ≤ 3(2L + 2)^d, C_pt ≤ 2^{d+1} / 5.3 / P; cube |
| T37-P9 | L-259 | alias: Theorem T37 (Thm 3.7 + Cor. 3.8, sup and L² block norms), M_37 = max{M_t |
| T37-P10 | L-402 | Derivative forms: left (6.1), right via transposed expansion (6.2), all in N_2 ( |
| T37-P11 | L-403 | Hölder forms (3.43)–(3.45) / 6.4 / P-sketch (not used by the chain) / — / |
| T37-P12 | L-260 | alias: Theorem T37-M1 (M_1 cubes; per step K_1c_1(θ)/M_1; CMP 116 (1.7)) / 7.3  |
| T37-P13 | L-178 | alias: Lemma LC (complex local operators, rate (1 − θ)δ_0, radius a_1^c(θ) = mi |
| T37-P14 | L-404 | Theorem T37^c (complex walk form, rate (1 − θ)²δ_0, analytic terms, K_1^c = 8K_1 |
| T37-P15 | L-079 | alias: Lemma CC: □̃^5 is a class cube at index j (non-interface) or j − 1 (next |
| T37-R1 | Q-005 | alias: CMP 96 Lemma 2.1, (2.60)–(2.63), under (2.59) "¼αδ_0RM > 2d log c_0(½α)  |
| T37-R2 | Q-004 | alias: CMP 96 Prop. 2.2 and its proof (2.37)–(2.67) (U = 1 template) / CMP 96 p |
| T37-R3 | Q-004 | alias: CMP 95 Prop. 1.2 and its proof (1.118)–(1.135) (U = 1 template; transpos |
| T37-R4 | Q-201 | Local input (3.3.1): CMP 99 Cor. 3.6 ⇐ Cor. 3.5 ⇐ (3.60)–(3.64) + CMP 96 (U = 1) |
| T37-R5 | Q-202 | (3.24) form of Q′*aQ′ and averaging form of Q′_n with block transports / CMP 99  |
| T37-R6 | Q-203 | Local-sequence construction {Ω_n(□)}, Ω_0(□) ⊂ □̃^5, R_0, M_0 / CMP 99 p. 408 [V |
| T37-R7 | Q-204 | (V1) identity (3.60)/(3.62) / CMP 99 p. 402 [V] / R-full (algebra) / 8.3 / |
| T37-R8 | Q-205 | (V2) bound (3.61) on V′(A), local, analytic for α_1 ≤ a_V / CMP 99 pp. 400–402 [ |
| T37-R9 | Q-206 | (V3) transport bounds (U′U)(Γ)U(Γ)^{−1} = 1 + O(α_1), (3.58) / CMP 99 pp. 401–40 |
| T37-R10 | Q-207 | (H-PU) cover 𝒟 and partition of unity Σh_□² = 1 / CMP 96 (2.36), CMP 99 p. 408 [ |
| T39-I1 | H-706 | (first use) (moved from [I] to [V]). |
| T39-I2 | H-707 | (I-B): the blocks Δ(y), y ∈ 𝔅, partition Ω_0; each block with its one-step neigh |
| T39-I3 | H-708 | Form of (3.31): Δ_{U^u} = R(u)Δ_UR(u^{−1}), U^u(Γ) = u(start)U(Γ)u(end)^{−1} [I; |
| T39-I4 | H-709 | Geometry (G) of A1_WALK_FULL 2.1 on the M_1-cover, with the X-PU repair (c_h → L |
| T39-I5 | H-710 | Kernel convention: Balaban's C′(y, y′) is the μ-kernel [I, as A1_WALK_FULL 6.8]. |
| T39-I6 | H-711 | Count of M_1-cubes meeting a set of diameter D_+M_1 [I, geometry c(d), as A1_WAL |
| T39-L1 | L-405 | lean/YmLean/Concatenation.lean `concat_two`, `concat_list` (junction sums, 3.4,  |
| T39-L2 | L-406 | lean/YmLean/CombesThomas.lean `coercive_inv`, `combes_thomas` (local inverses, 5 |
| T39-L3 | L-407 | lean/YmLean/SchurMarginal.lean `compression_lower` (restriction of a lower bound |
| T39-P1 | L-408 | (T37), (T37-c): THM37_FULL (CMP 99 Thm 3.7, Cor. 3.8, M_1 version §7, complex fo |
| T39-P2 | L-409 | Theorem A1-W, Lemmas LT, CT, CP, AW, the concatenation lemma: A1_WALK_FULL §1–§6 |
| T39-P3 | L-410 | Enlarged-domain convention and local range c_loc: WG_FULL 0.4, (I7) [P given I i |
| T39-P4 | L-411 | Disc radius at the Thm 3.4 level: WC_FULL 6.0 [P]. |
| T39-P5 | L-412 | Inclusions of complex consumer backgrounds into (3.35) + (3.37): SOURCES_A18_REG |
| T39-PR1 | L-413 | (formerly T39-I1) (AL′): bound on averaged links Ū^i of e^{iηA} in the (3.35) ga |
| T39-R1 | Q-005 | alias: CMP 96 Lemma 2.1 (2.60)–(2.63) under (2.59) in the ¼ form [R-full]: c_1( |
| T39-V1 | H-712 | CMP 99 p. 413 Thm 3.9 statement; pp. 411–413 sketch [V; R-sketch]. The target. |
| T39-V2 | H-713 | CMP 99 p. 394 (3.21)–(3.25) definitions of Δ′_a, G′, Q′*aQ′, R [V]. |
| T39-V3 | H-714 | CMP 99 p. 396 (3.35) regularity; (3.32)–(3.33) gauge covariance; standing hypoth |
| T39-V4 | H-715 | CMP 99 p. 398 Thm 3.2 (3.48) [V]. |
| T39-V5 | H-716 | CMP 99 p. 400 Thm 3.4 and (3.50)–(3.51) [V]. Only the formula (3.51) is used (4. |
| T39-V6 | H-717 | CMP 99 p. 409 (3.87)–(3.88) [V]; the a-term of (3.88) is the evidence for (I-Q). |
| T39-V7 | H-718 | CMP 96 pp. 236–238 (2.72)–(2.87) [V; R-full at U = 1]. Used only for comparison  |
| T39-V8 | H-719 | CMP 98 (64), (70), (77)–(80), pp. 29–30: Q′_j block-diagonal (row y sees only Δ( |
| T310-I6 | H-720 | [I-geo; Balaban p. 411, 414]. Geometry of ζ_□ and 𝒟′_□ with explicit margins (§6 |
| T310-I7 | H-721 | [I; sequence-locality]. For a cube □′ of a cover at size M′, the local sequence  |
| T310-I8 | H-722 | [I, C0]: conversion of block norms to the μ-weighted kernels of WG_FULL 0.2. |
| T310-P2 | L-414 | [P given its inputs: THM37_FULL Theorem T37, T37-M1, T37^c]. G′ for any admissib |
| T310-P3 | L-415 | [P given its inputs: THM39_FULL Theorem 3.9-W, §6, §7]. C′ for any admissible se |
| T310-P5 | L-416 | [P: Lemma AG′, §5.1]. The local parts of Δ_a and Δ_{a,□} agree at points of □. |
| T310-R1 | Q-208 | [R-sketch: CMP 99 Cor. 3.6, p. 408, from Cor. 3.5, Thm 3.4 (3.84)–(3.86), and CM |
| T310-R4 | Q-005 | alias: [R-full: CMP 96 Lemma 2.1, (2.61)–(2.62), under (H2)]. sup_yΣ_{y′}e^{−αδ |

### M12. INFINITE_VOLUME_FABLE lemmas L1–L17 → L-3nn (17 rows)

| old | new | meaning / note |
|---|---|---|
| IV L1 | L-301 | ℓ-free trajectory: g_0(K, g), (g_k) are the same for every admissible… |
| IV L2 | L-302 | UV constants ℓ-free: every per-polymer constant of scales k < K (small … |
| IV L3 | L-303 | (FX-V): polymer representation of Δ(f, V) = log(ρ̂_K^f/ρ̂_… |
| IV L4 | L-304 | Lemma ν-cum: cumulants of log E_ν e^{w} = sums of joint ν-cumul… |
| IV L5 | L-305 | Lemma C pointwise: sup_V \ |
| IV L6 | L-306 | (S1-pt): osc_V ∂_{t}Δ(0, V) ≤ C N(f)(1 + \ |
| IV L7 | L-307 | (S∞), (S′∞): (S) with ℓ-free constant, same Gevrey order 1 + η,… |
| IV L8 | L-308 | (H-U∞): N1 bridge with ℓ⁴ → \ |
| IV L9 | L-309 | compactness: diagonal extraction (functional route) and Tychono… |
| IV L10 | L-310 | OS2: lattice RP (X3) + seam shift + limit; half space |
| IV L11 | L-311 | OS1-T, OS1-H: exact lattice symmetries + continuity |
| IV L12 | L-312 | OS0 weighted: partition of unity, s = 20 |
| IV L13 | L-313 | OS3: linear identities pass to limits |
| IV L14 | L-314 | (Loc-f): sourced and large-field constituents are intrinsic… |
| IV L15 | L-315 | full convergence in ℓ: uniqueness of the infinite-volume state of the uni… |
| IV L16 | L-316 | (ROT): O(4) covariance of the limit |
| IV L17 | L-317 | OS4, mass gap: decay of ν_∞-correlations |

### M13. Condition lists cited across files → H-5nn / H-6nn (62 rows)

| old | new | meaning / note |
|---|---|---|
| A11_CONST S1 | H-501 | (T1) γ²B′ ≤ (1 + β_0)² − 1 / implicit in (2.6) / upper bound on γ / af |
| A11_CONST S2 | H-502 | (T2) log γ^{−2} ≥ 2p, (T3) log γ^{−2} ≥ p/β_0, for p ∈ {p_0, p_1, q_0, |
| A11_CONST S3 | H-503 | (T4) β_0 ≤ 1/2 / no / upper bound on β_0 / β_0 first / admissible; Bal |
| A11_CONST S4 | H-504 | M_2 ≥ 1/δ (covers 2δM_2 ≥ 1 in (3.7) and δLM_2R_{k+1} ≥ R_k on p. 268) |
| A11_CONST S5 | H-505 | A_1/A_0 ≤ 1/(80B_3) ((3.7)); A_1/A_0 small ((3.9)) / "A_1/A_0 sufficie |
| A11_CONST S6 | H-506 | 30d²L²B_3²(1 + β_0)e^{−R_k} ≤ 1/20; O(1)44d²B_3²(1 + β_0)(A_0/A_1)e^{− |
| A11_CONST S7 | H-507 | e^{−R_k} ≤ g_k^N ("any positive power of g_k", p. 269) / asserted / up |
| A11_CONST S8 | H-508 | C(β, κ_0)γ⁴ < 1 for (2.46); γ^{−2} ≥ 2D′ / "κ_0 ≥ 7 and g sufficiently |
| A11_CONST S9 | H-509 | g_kO(p_0³(g_k)) ≤ B_0 (p. 278) / "multiplication by g_k yields small b |
| A11_CONST S10 | H-510 | 2(1 + β_0)L^{−2} + 4/10 < 1 ((3.8)) / implicit / condition on L / L od |
| A11_CONST S11 | H-511 | (1 + β_0)^{κ_0} is a fixed factor in the g^{κ_0} ratio / no / none (fi |
| A11_CONST S12 | H-512 | I p. 198 / after (1.94) / N ≤ O(1)(log g_k^{−2})^ν ≤ O(1)(1 + β_0)(log |
| A11_CONST S13 | H-513 | II p. 363 / after (1.31) / L^{−N} ≤ (log g_k^{−2})^{−ν}, i.e. N ≥ (ν/l |
| A11_CONST S14 | H-514 | II p. 361 / p. 384 / after (1.20) / (1.80) / N ≤ R_k (N = number of sc |
| A11_CONST S15 | H-515 | II p. 383 / condition / 2p_1 − (d + 5)r_0 > p_0 (fixed exponents; r_0 |
| A11_CONST S16 | H-516 | II p. 380 / log g_j^{−2}/Z_j/ ≤ R_j(…) / log g_j^{−2} ≤ R_j (single sc |
| A11_CONST X1 | H-521 | cross-scale: II p. 363 / step after (1.31); "(100MR_{h+1})^{d−1} … ≤ g_k²L^{−(d−1)N |
| A11_CONST X2 | H-522 | cross-scale: II p. 364 / after (1.32) / 1/g″_k(·)² − 1/g_k² = O(1)(k − j) on Ω″_j \ |
| A11_CONST X3 | H-523 | cross-scale: II p. 366 / top / 1/g″_k(·)² − 1/g_k² = O(N) ≤ O(R_k) (k − j ≤ N, plus |
| A11_CONST X4 | H-524 | cross-scale: I p. 185 / (1.38), (1.42) / ε_{j+1} ≤ (1 + β_0)ε_j / (b) (P-up), one s |
| A11_CONST X5 | H-525 | cross-scale: I p. 186 / (1.46) / δ′_j ≤ (1 + β_0)(1 + (j − i)^{1/2})(A_1/A_0)(p_1/p |
| A11_CONST X6 | H-526 | cross-scale: I p. 192 / middle / L^{N_0−1} = R_{k−N_0+1} ≤ (L + 1)(N_0 + 1)^{β_0}R_ |
| A11_CONST X7 | H-527 | cross-scale: II pp. 384–385 / (1.80)–(1.81) / R_n ≤ cR_j for j < n ≤ j + K (K ≤ n_0 |
| A11_CONST X8 | H-528 | cross-scale: II p. 368 / (1.47) / Σ_j … (1/g_k² + O(k − j))ε_j ≤ … ε_kN^{1+β_0}(1 + |
| A11_CONST X9 | H-529 | cross-scale: I p. 200 / after (1.98) / Σ L^{−(k−i)}R_i over i > k_0, giving exp(−4δ |
| A11_CONST X10 | H-530 | cross-scale: I p. 179 / definition of N_0 / N_0 := least integer with L^{−N_0+1}MR_ |
| A16 Q1 | H-541 | real positivity; Q2 walk/tree expansion with (L1)–(L2), rate, s-rule, |
| A16 Q2 | H-542 | status: [P given §2 and WC(iii)]. |
| A16 Q3 | H-543 | [P]. The local operators ∂ of CMP 109 (1.8) act on the first and last |
| A16 Q4 | H-544 | [P]. Every T_Ω is analytic on 𝒰(α′) × S_r (2.4 and WC(iii)); the serie |
| A16 Q5 | H-545 | [P]. ‖C_f(Z_0)‖ ≤ 4/γ_exp (complex), 4/(3γ_exp) (real). α_5‖C_f(Z_0, 0 |
| A16 Q6 | H-546 | A16 covariance property |
| A16 Q7 | H-547 | (C_f)^{1/2} = (A_Λ^f)^{−1/2} = Σ_ΩT_Ω^{½}, /T_Ω^{½}/ ≤ 8γ_exp^{−1/2}(q |
| A16 Q8 | H-548 | A16 covariance property |
| A16 Q9 | H-549 | [P]. CMP 116 (2.5) is completing the square for ⟨B, A_Λ^fB⟩ split into |
| A16 Q10 | H-550 | [V-project]. D3W8 §1.1: d_S is not multiplied by s or t; for (3.30), τ |
| A16 Q11 | H-551 | [V-project]. D3W8 §1.4 with the S9 fix: (1 + τ)^{−1}C_0 ≤ C_f ≤ (1 − τ |
| (U-a) | H-561 | A16/SRULE covariance property (U-a) |
| (U-b) | H-562 | A16/SRULE covariance property (U-b) |
| (U-c) | H-563 | A16/SRULE covariance property (U-c) |
| (U-d) | H-564 | A16/SRULE covariance property (U-d) |
| A1_WALK_FULL IN1 | H-601 | / (W_G): walk expansion of G with (3.108)-form bounds and locality, as |
| A1_WALK_FULL IN2 | H-602 | / (W_G1): tree expansion of G_1, Theorem WG-G1 (SOURCES_WG §3.7) / [P] |
| A1_WALK_FULL IN3 | H-603 | / (C): Re⟨u, N̂u⟩ ≥ c_−‖u‖², c_− uniform / conditional: SOURCES_A1_KER |
| A1_WALK_FULL IN4 | H-604 | / c_{−,1} = c_−(G_1) ≥ c_−(1 − O(Mα_0)) / conditional: SOURCES_A1_KERN |
| A1_WALK_FULL IN5 | H-605 | / CMP 96 Lemma 2.1: c_1(κ) uniform under (2.59) / [R] printed with pro |
| A1_WALK_FULL IN6 | H-606 | / Lean: `schur_test`, `coercive_inv`, `combes_thomas`, `combes_thomas_ |
| A1_WALK_FULL IN7 | H-607 | / Concatenation lemma (SOURCES_WG §2.3), statement in 5.4 / [P] VERIFI |
| A1_WALK_FULL IN8 | H-608 | / Geometry (G): cover 𝒟, cores □⁻, h_□, □⁺, C_ov, C_𝒟 for □⁺-domains / |
| A1_WALK_FULL IN9 | H-609 | / O2: Lipschitz bound c_h/M_1 of h_□ across scale boundaries / [I] low |
| A1_WALK_FULL IN10 | H-610 | / Q-normalization and Q, Q* block-locality / [I] SOURCES_A1_KERNEL S3 |
| A1_WALK_FULL IN11 | H-611 | / WG-1: α_0 ≤ c′M^{−1}M_1^{−10} (G), α_0 ≤ c″M^{−1}M_1^{−12} (G_1); CM |
| A1_WALK_FULL IN12 | H-612 | / κ_1 independent of M / [I] / 9.1, 9.3 / A1w ([I] κ_1); C5 / |
| A1_WALK_FULL IN13 | H-613 | / Regular class (3.35)–(3.36); J-term O(Mα_0) / [V] CMP 99 pp. 405, 41 |
| A1_WALK_FULL IN14 | H-614 | / CMP 116 pp. 3, 4, 5, 13, 15 page facts: s-rule, band, X_0 form, free |
| A1_WALK_FULL IN15 | H-615 | / ℓ^∞ reading of the tilde (Z̃_0, X̃^5) / [V] CMP 99 pp. 411, 413, CMP |
| A1_WALK_FULL IN16 | H-616 | / Theorem L (γ_exp) and (W_N) for A_exp (SOURCES_WC_EXPGAUGE §3–§4) / |
| A1_WALK_FULL IN17 | H-617 | / CMP 99 Thm 3.4: G′, (Q′G′²Q′*)^{−1}, R, G analytic for α_1 ≤ a_1 / [ |
| A1_WALK_FULL IN18 | H-618 | / (W_G) at complex points / [R] Thm 3.4 "quantitative statements" + Th |
| A1_WALK_FULL IN19 | H-619 | / Plaquette condition along the disc, CMP 109 (1.13)–(1.14) / [V] via |
| A1_WALK_FULL IN20 | H-620 | / Order of constants / [P] 9.1 / §9 / C5 / |
| A1_WALK_FULL IN21 | H-621 | / CMP 96 pp. 237–238 (2.82)–(2.87), CMP 99 (3.95), Thm 3.14 / [V] imag |

### M14. Named hypotheses, conditions, and readings (parenthesized, cross-file) → H-1nn / H-4nn (198 rows)

| old | new | meaning / note |
|---|---|---|
| (C) [the (C) condition, CLOSURE_PLAN Table 4] | H-100 | new id; single-letter label |
| (A15-loc) | H-101 | 2 hits / 2 files; home S_A15_WHOLE |
| (A16-a) | H-102 | 14 hits / 4 files; home S_A16_REPLACE |
| (A16-a^T) | H-103 | 17 hits / 6 files; home S_A16_REPLACE2 |
| (A16-b) | H-104 | 15 hits / 4 files; home S_A16_REPLACE |
| (A16-b^T) | H-105 | 18 hits / 6 files; home S_A16_REPLACE2 |
| (A18-1) | H-106 | 21 hits / 9 files; home S_A18_REGULAR |
| (A18-2) | H-107 | 6 hits / 4 files; home S_A18_REGULAR |
| (A18-3) | H-108 | 9 hits / 4 files; home S_ORDER_CANON |
| (A18-4) | H-109 | 17 hits / 9 files; home S_A18_REGULAR |
| (A18-Q) | H-110 | 6 hits / 4 files; home S_A18_REGULAR |
| (A3-R2) | H-111 | 2 hits / 2 files; home S_A18_REGULAR |
| (A3-R4) | H-112 | 14 hits / 7 files; home WC_FULL |
| (AL) | H-113 | 32 hits / 6 files; home THM39_FULL |
| (AL-c) | H-114 | 32 hits / 8 files; home THM39_FULL |
| (AL′) | H-115 | 80 hits / 12 files; home THM39_FULL |
| (AL′-ax) | H-116 | 17 hits / 5 files; home THM39_FULL |
| (B-C) | H-117 | 13 hits / 7 files; home ASSEMBLY |
| (B-geo-1) | H-118 | 2 hits / 2 files; home LEMMAS |
| (B-geo-2) | H-119 | 3 hits / 2 files; home LEMMAS |
| (B-geo-3) | H-120 | 3 hits / 2 files; home LEMMAS |
| (B-hol) | H-121 | 11 hits / 7 files; home S_HBETA_N3 |
| (B-i) | H-122 | 7 hits / 2 files; home INFINITE_VOLUME_IV12 |
| (B-ii) | H-123 | 6 hits / 2 files; home INFINITE_VOLUME_IV12 |
| (B-NT) | H-124 | 17 hits / 11 files; home ASSEMBLY |
| (B-REG) | H-125 | 7 hits / 3 files; home ASSEMBLY |
| (B-RP) | H-126 | 9 hits / 4 files; home ASSEMBLY |
| (B-T2) | H-127 | 17 hits / 7 files; home ASSEMBLY |
| (B-TI) | H-128 | 10 hits / 5 files; home ASSEMBLY |
| (B2-T) | H-129 | 14 hits / 4 files; home A1_WALK_FULL |
| (B3-T) | H-130 | 6 hits / 2 files; home A1_WALK_FULL |
| (B8-c) | H-131 | 4 hits / 2 files; home S_A15_BDRY |
| (C-tr) | H-132 | 29 hits / 8 files; home S_T2_B7_CLAMP |
| (CG-b4) | H-133 | 14 hits / 4 files; home INFINITE_VOLUME_ATTEMPT |
| (Conv_Λ) | H-134 | 12 hits / 5 files; home S_A15_BDRY |
| (D2-form) | H-135 | 4 hits / 2 files; home S_A16_REPLACE2 |
| (D2-T) | H-136 | 8 hits / 4 files; home A1_WALK_FULL |
| (DI-2) | H-137 | 14 hits / 3 files; home THM310_FULL |
| (DI-3) | H-138 | 3 hits / 2 files; home THM310_FULL |
| (E14-a) | H-139 | 15 hits / 6 files; home SOURCES |
| (E14-b) | H-140 | 12 hits / 6 files; home SOURCES |
| (E14-c) | H-141 | 59 hits / 16 files; home S_B21_E14C |
| (E14-d) | H-142 | 14 hits / 6 files; home ASSEMBLY |
| (E14-e) | H-143 | 7 hits / 5 files; home S_D4D5 |
| (E14-f) | H-144 | 23 hits / 10 files; home ASSEMBLY |
| (E14-g) | H-145 | 7 hits / 5 files; home SOURCES |
| (FI) | H-146 | 74 hits / 13 files; home S_SRULE_CONVENTION |
| (FX-B∞) | H-147 | 13 hits / 4 files; home INFINITE_VOLUME_IV12 |
| (FX-D) | H-148 | 74 hits / 19 files; home S_FX_D |
| (FX-V) | H-149 | 17 hits / 4 files; home INFINITE_VOLUME_FABLE |
| (G-a) | H-150 | 16 hits / 3 files; home S_T2_R2REM |
| (G-b) | H-151 | 14 hits / 3 files; home S_T2_R2REM |
| (G-c) | H-152 | 9 hits / 2 files; home S_T2_R2REM |
| (G-cube) | H-153 | 12 hits / 3 files; home THM310_FULL |
| (G-gain) | H-154 | 77 hits / 16 files; home S_SM |
| (G-M1) | H-155 | 11 hits / 3 files; home THM37_FULL |
| (G-ret) | H-156 | 24 hits / 5 files; home THM310_FULL |
| (G-Z) | H-157 | 5 hits / 2 files; home THM310_FULL |
| (H-PU) | H-158 | 53 hits / 4 files; home THM37_FULL |
| (H-U) | H-159 | 138 hits / 31 files; home ASSEMBLY |
| (H-U∞) | H-160 | 41 hits / 7 files; home INFINITE_VOLUME_ATTEMPT |
| (H1-T) | H-161 | 8 hits / 4 files; home A1_WALK_FULL |
| (H1_13) | H-162 | 17 hits / 8 files; home H1_ANALYTIC |
| (H2-hist) | H-163 | 58 hits / 16 files; home S_HHOL |
| (H_E) | H-164 | 26 hits / 7 files; home WC_FULL |
| (H_M) | H-165 | 15 hits / 8 files; home S_A8_POS |
| (H_Q) | H-166 | 79 hits / 15 files; home S_QE_INV |
| (H_η) | H-167 | 37 hits / 14 files; home S_A16_REPLACE2 |
| (H_κ) | H-168 | 18 hits / 9 files; home S_ORDER_CANON |
| (H_κ^f) | H-169 | 15 hits / 7 files; home S_A16_REPLACE2 |
| (I-D) | H-170 | 2 hits / 2 files; home WG_FULL |
| (I-geo) | H-171 | 2 hits / 2 files; home THM310_FULL |
| (I-hist) | H-172 | 4 hits / 3 files; home S_MC_IV0 |
| (I-lin) | H-173 | 13 hits / 6 files; home S_MC_IV0 |
| (I-ord) | H-174 | 40 hits / 15 files; home S_T2_IEPS |
| (I-Q) | H-175 | 16 hits / 3 files; home THM39_FULL |
| (I-V0) | H-176 | 54 hits / 18 files; home S_MC_IV0 |
| (I-X) | H-177 | 18 hits / 7 files; home S_MC |
| (K-unif) | H-178 | 4 hits / 2 files; home S_T2_KUNIF |
| (KE′) | H-179 | 65 hits / 17 files; home S_QE_KE_HQ |
| (L-LL) | H-180 | 105 hits / 18 files; home S_T2_LLL |
| (L2-T) | H-181 | 7 hits / 2 files; home A1_WALK_FULL |
| (L2_Λ) | H-182 | 14 hits / 3 files; home S_A15_BDRY |
| (LL′) | H-183 | 3 hits / 3 files; home THEOREM2_PROOF |
| (Loc) | H-184 | 119 hits / 18 files; home S_A15_LOC |
| (Loc-f) | H-185 | 12 hits / 4 files; home INFINITE_VOLUME_FABLE |
| (M-A) | H-186 | 115 hits / 30 files; home S_HHOL_LF_SPRIME |
| (M-A′) | H-187 | 25 hits / 8 files; home S_MA2 |
| (M-B) | H-188 | 73 hits / 21 files; home S_GGAIN_LF |
| (M-C) | H-189 | 97 hits / 26 files; home S_MB |
| (M-D) | H-190 | 26 hits / 17 files; home S_HHOL_LF |
| (MPT) | H-191 | 38 hits / 12 files; home S_T2_F_STEPB |
| (N-a) | H-192 | 2 hits / 2 files; home INFINITE_VOLUME_IV12 |
| (N-b) | H-193 | 4 hits / 2 files; home INFINITE_VOLUME_IV12 |
| (N-c) | H-194 | 4 hits / 3 files; home INFINITE_VOLUME_IV12 |
| (N-d) | H-195 | 2 hits / 2 files; home INFINITE_VOLUME_IV12 |
| (N-e) | H-196 | 2 hits / 2 files; home INFINITE_VOLUME_IV12 |
| (O1-M) | H-197 | 8 hits / 3 files; home S_FX_O1 |
| (P-low) | H-198 | 54 hits / 15 files; home S_A11_CONST |
| (P-up) | H-199 | 55 hits / 15 files; home S_A11_CONST |
| (R-a) | H-200 | 7 hits / 4 files; home S_A23_TSTEP |
| (R-b) | H-201 | 4 hits / 3 files; home S_A23_TSTEP |
| (S-A) | H-202 | 28 hits / 9 files; home SOURCES |
| (S-B) | H-203 | 4 hits / 3 files; home SOURCES |
| (S-C) | H-204 | 13 hits / 5 files; home S_D1 |
| (S-D) | H-205 | 13 hits / 6 files; home S_D2 |
| (S-E) | H-206 | 5 hits / 3 files; home SOURCES |
| (S-rule) | H-207 | 8 hits / 5 files; home S_A2_R2 |
| (S1-pt) | H-208 | 21 hits / 7 files; home INFINITE_VOLUME_FABLE |
| (S_H) | H-209 | 24 hits / 6 files; home S_A16_REPLACE2 |
| (Sep) | H-210 | 46 hits / 6 files; home S_MULTISCALE_OMEGA |
| (S′) | H-211 | 98 hits / 15 files; home S_B21_S_PRIME |
| (S′∞) | H-212 | 32 hits / 6 files; home INFINITE_VOLUME_FABLE |
| (S∞) | H-213 | 26 hits / 4 files; home INFINITE_VOLUME_FABLE |
| (T2-a) | H-214 | 25 hits / 8 files; home THEOREM2_PROOF |
| (T2-a1) | H-215 | 8 hits / 2 files; home THEOREM2 |
| (T2-a1′) | H-216 | 33 hits / 12 files; home THEOREM2_PROOF |
| (T2-a1″) | H-217 | 13 hits / 7 files; home R2_TELESCOPING |
| (T2-a2) | H-218 | 17 hits / 7 files; home THEOREM2 |
| (T2-b) | H-219 | 6 hits / 4 files; home THEOREM2 |
| (W-1) | H-220 | 11 hits / 4 files; home U3_AW |
| (W-2) | H-221 | 30 hits / 12 files; home U3_AW |
| (WG-1) | H-222 | 2 hits / 2 files; home WG_FULL |
| (X-PU) | H-223 | 36 hits / 11 files; home THM37_FULL |
| (AW1) | H-401 | 3 hits / 2 files; home S_A16_REPLACE2; review: id-shaped, may be file-local or homonym |
| (B10′) | H-402 | 4 hits / 3 files; home S_D3R; review: id-shaped, may be file-local or homonym |
| (B11′) | H-403 | 4 hits / 2 files; home S_D3R; review: id-shaped, may be file-local or homonym |
| (B2w) | H-404 | 30 hits / 9 files; home THEOREM2_PROOF_v4; review: id-shaped, may be file-local or homonym |
| (C4″) | H-405 | 20 hits / 13 files; home S_MC; review: id-shaped, may be file-local or homonym |
| (D1) | H-406 | 48 hits / 14 files; home A1_WALK_FULL; review: id-shaped, may be file-local or homonym |
| (D2) | H-407 | 44 hits / 18 files; home A1_WALK_FULL; review: id-shaped, may be file-local or homonym |
| (D3) | H-408 | 7 hits / 6 files; home U3_GAUSSIAN_RG; review: id-shaped, may be file-local or homonym |
| (F2′) | H-409 | 4 hits / 3 files; home S_SM; review: id-shaped, may be file-local or homonym |
| (FX1) | H-410 | 16 hits / 10 files; home INFINITE_VOLUME_FABLE; review: id-shaped, may be file-local or homonym |
| (FX2) | H-411 | 91 hits / 27 files; home S_B21_E14C; review: id-shaped, may be file-local or homonym |
| (FX3) | H-412 | 9 hits / 6 files; home S_D4D5; review: id-shaped, may be file-local or homonym |
| (FX4) | H-413 | 11 hits / 9 files; home INFINITE_VOLUME_FABLE; review: id-shaped, may be file-local or homonym |
| (G1) | H-414 | 114 hits / 53 files; home BETA_FP_LEMMA43; review: id-shaped, may be file-local or homonym |
| (G1′) | H-415 | 9 hits / 3 files; home S_HTHR2; review: id-shaped, may be file-local or homonym |
| (G2′) | H-416 | 3 hits / 2 files; home S_HTHR2; review: id-shaped, may be file-local or homonym |
| (G3) | H-417 | 66 hits / 30 files; home S_MULTISCALE_OMEGA_SOURCED; review: id-shaped, may be file-local or homonym |
| (G3′) | H-418 | 3 hits / 2 files; home S_HTHR2; review: id-shaped, may be file-local or homonym |
| (G4) | H-419 | 25 hits / 15 files; home S_A16_REPLACE; review: id-shaped, may be file-local or homonym |
| (GC1) | H-420 | 6 hits / 5 files; home paper/assembly.tex; review: id-shaped, may be file-local or homonym |
| (GC3) | H-421 | 5 hits / 5 files; home paper/appendix.tex; review: id-shaped, may be file-local or homonym |
| (H0) | H-422 | 195 hits / 41 files; home THEOREM2_PROOF_v4; review: id-shaped, may be file-local or homonym |
| (H0′) | H-423 | 17 hits / 5 files; home THEOREM2_PROOF; review: id-shaped, may be file-local or homonym |
| (H1) | H-424 | 172 hits / 41 files; home A1_WALK_FULL; review: id-shaped, may be file-local or homonym |
| (H3) | H-425 | 59 hits / 24 files; home THEOREM2_PROOF; review: id-shaped, may be file-local or homonym |
| (H4) | H-426 | 32 hits / 14 files; home A1_WALK_FULL; review: id-shaped, may be file-local or homonym |
| (I1) | H-427 | 183 hits / 36 files; home S_T2_PI; review: id-shaped, may be file-local or homonym |
| (I2) | H-428 | 61 hits / 17 files; home S_T2_PI; review: id-shaped, may be file-local or homonym |
| (I3) | H-429 | 262 hits / 38 files; home WG_FULL; review: id-shaped, may be file-local or homonym |
| (I4) | H-430 | 54 hits / 16 files; home WG_FULL; review: id-shaped, may be file-local or homonym |
| (I5) | H-431 | 31 hits / 12 files; home WG_FULL; review: id-shaped, may be file-local or homonym |
| (I6) | H-432 | 15 hits / 6 files; home WG_FULL; review: id-shaped, may be file-local or homonym |
| (I7) | H-433 | 64 hits / 16 files; home WG_FULL; review: id-shaped, may be file-local or homonym |
| (I9) | H-434 | 11 hits / 5 files; home WC_FULL; review: id-shaped, may be file-local or homonym |
| (K1) | H-435 | 123 hits / 31 files; home S_T2_KAPPA2; review: id-shaped, may be file-local or homonym |
| (K1′) | H-436 | 32 hits / 11 files; home S_ORDER_CANON; review: id-shaped, may be file-local or homonym |
| (K2) | H-437 | 59 hits / 23 files; home S_T2_KAPPA2; review: id-shaped, may be file-local or homonym |
| (K3) | H-438 | 66 hits / 24 files; home S_ORDER_CANON; review: id-shaped, may be file-local or homonym |
| (K4) | H-439 | 8 hits / 3 files; home S_T2_HMINUSC; review: id-shaped, may be file-local or homonym |
| (M2) | H-440 | 39 hits / 15 files; home S_MC; review: id-shaped, may be file-local or homonym |
| (M3) | H-441 | 18 hits / 7 files; home LEMMA_B4; review: id-shaped, may be file-local or homonym |
| (M4) | H-442 | 13 hits / 6 files; home S_HTHR; review: id-shaped, may be file-local or homonym |
| (M5) | H-443 | 16 hits / 6 files; home LEMMA_B4; review: id-shaped, may be file-local or homonym |
| (N1) | H-444 | 84 hits / 33 files; home SOURCES; review: id-shaped, may be file-local or homonym |
| (N2) | H-445 | 85 hits / 37 files; home SOURCES; review: id-shaped, may be file-local or homonym |
| (N3) | H-446 | 59 hits / 26 files; home A1_WALK_FULL; review: id-shaped, may be file-local or homonym |
| (N3′) | H-447 | 3 hits / 2 files; home S_A1_WALK; review: id-shaped, may be file-local or homonym |
| (N4) | H-448 | 40 hits / 23 files; home S_A23_TSTEP; review: id-shaped, may be file-local or homonym |
| (N5) | H-449 | 10 hits / 7 files; home S_A4_D189; review: id-shaped, may be file-local or homonym |
| (N6) | H-450 | 6 hits / 2 files; home SOURCES; review: id-shaped, may be file-local or homonym |
| (N7) | H-451 | 3 hits / 2 files; home SOURCES; review: id-shaped, may be file-local or homonym |
| (P1) | H-452 | 24 hits / 14 files; home S_D2; review: id-shaped, may be file-local or homonym |
| (P13) | H-453 | 2 hits / 2 files; home S_HIGHER_M1; review: id-shaped, may be file-local or homonym |
| (P2) | H-454 | 9 hits / 6 files; home S_B15_M245; review: id-shaped, may be file-local or homonym |
| (P3) | H-455 | 37 hits / 17 files; home S_D3R; review: id-shaped, may be file-local or homonym |
| (P4) | H-456 | 27 hits / 12 files; home S_D3_NEW4; review: id-shaped, may be file-local or homonym |
| (P5) | H-457 | 36 hits / 11 files; home S_D3_NEW4; review: id-shaped, may be file-local or homonym |
| (P6) | H-458 | 25 hits / 9 files; home S_D3; review: id-shaped, may be file-local or homonym |
| (P7) | H-459 | 6 hits / 4 files; home S_D3; review: id-shaped, may be file-local or homonym |
| (P8) | H-460 | 54 hits / 14 files; home S_B20_LAMBDAJ; review: id-shaped, may be file-local or homonym |
| (R1′) | H-461 | 20 hits / 5 files; home TRUST_LEDGER; review: id-shaped, may be file-local or homonym |
| (R3a) | H-462 | 9 hits / 4 files; home S_A2_R2; review: id-shaped, may be file-local or homonym |
| (R3b) | H-463 | 11 hits / 5 files; home S_A2_R2; review: id-shaped, may be file-local or homonym |
| (S1) | H-464 | 168 hits / 43 files; home BETA_FP_M; review: id-shaped, may be file-local or homonym |
| (S2) | H-465 | 105 hits / 31 files; home S_T2_S123; review: id-shaped, may be file-local or homonym |
| (S2c) | H-466 | 35 hits / 10 files; home S_T2_S123; review: id-shaped, may be file-local or homonym |
| (S3) | H-467 | 159 hits / 44 files; home BETA_FP_M; review: id-shaped, may be file-local or homonym |
| (S3w) | H-468 | 14 hits / 8 files; home S_B10_SWEEP; review: id-shaped, may be file-local or homonym |
| (S4) | H-469 | 32 hits / 11 files; home S_SRULE_CONVENTION; review: id-shaped, may be file-local or homonym |
| (S5) | H-470 | 14 hits / 6 files; home S_B20_W4R; review: id-shaped, may be file-local or homonym |
| (S6) | H-471 | 8 hits / 4 files; home S_SRULE_CONVENTION; review: id-shaped, may be file-local or homonym |
| (S7) | H-472 | 9 hits / 2 files; home S_SRULE_CONVENTION; review: id-shaped, may be file-local or homonym |
| (W1) | H-473 | 2 hits / 2 files; home ASSEMBLY_VERIFY; review: id-shaped, may be file-local or homonym |
| (Y2) | H-474 | 3 hits / 2 files; home numerics/umk_beta1.py; review: id-shaped, may be file-local or homonym |

### M15. Parenthesized labels that are the statement of a ledger row → row id + name (no new id) (27 rows)

| old | new | meaning / note |
|---|---|---|
| (B-N1) | R-121 | 57 hits / 20 files |
| (B-S) | R-111 | 18 hits / 8 files |
| (C) | H-100 (the (C) condition; new) | 506 hits / 76 files |
| (C1*) | K-038 | 34 hits / 6 files |
| (Cases) | K-033 | 22 hits / 10 files |
| (Conv) | K-034 | 29 hits / 10 files |
| (Cube) | K-032 | 22 hits / 10 files |
| (Cv1) | K-043 | 19 hits / 7 files |
| (Cv2) | K-043 | 19 hits / 7 files |
| (Det′) | K-035 | 24 hits / 10 files |
| (Enl) | K-037 | 42 hits / 10 files |
| (F) | R-103 | 449 hits / 93 files |
| (FX) | R-119 | 211 hits / 37 files |
| (G2) | R-106 | 196 hits / 65 files |
| (H-hist) | R-113 | 283 hits / 57 files |
| (H-hist2) | R-114 | 101 hits / 22 files |
| (H-hol) | R-116 / R-117 (split: small / large field) | 97 hits / 27 files |
| (H-thr) | R-115 | 93 hits / 30 files |
| (H2) | R-101 | 476 hits / 72 files |
| (I) | R-112 | 180 hits / 40 files |
| (M1) | K-024 (M-choice) / H-035 (A16 list) — split | 184 hits / 33 files |
| (M_j) | R-104 | 178 hits / 39 files |
| (PI) | R-102 | 162 hits / 36 files |
| (S) | K-017 (C17) / R-121 (B21) — split | 415 hits / 68 files |
| (U) | K-023 | 1054 hits / 156 files |
| (Vol) | K-031 | 143 hits / 25 files |
| (W4) | R-120 (B20 part (W4)) — check | 157 hits / 33 files |

### M16. Parenthesized labels NOT renamed (111 rows)

| old | new | meaning / note |
|---|---|---|
| (A1) | unchanged | old id in parentheses: rewritten by its own family; 32 hits / 20 files |
| (A10′) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (A11) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (A13) | unchanged | old id in parentheses: rewritten by its own family; 10 hits / 7 files |
| (A14) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (A15) | unchanged | old id in parentheses: rewritten by its own family; 8 hits / 7 files |
| (A16) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (A17) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (A18) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 3 files |
| (A1w) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 3 files |
| (A2) | unchanged | old id in parentheses: rewritten by its own family; 25 hits / 14 files |
| (A24) | unchanged | old id in parentheses: rewritten by its own family; 6 hits / 5 files |
| (A25) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 3 files |
| (A3) | unchanged | old id in parentheses: rewritten by its own family; 30 hits / 14 files |
| (A4) | unchanged | old id in parentheses: rewritten by its own family; 6 hits / 4 files |
| (A5) | unchanged | old id in parentheses: rewritten by its own family; 7 hits / 5 files |
| (A7) | unchanged | old id in parentheses: rewritten by its own family; 10 hits / 7 files |
| (A8) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (B1) | unchanged | old id in parentheses: rewritten by its own family; 82 hits / 28 files |
| (B10) | unchanged | old id in parentheses: rewritten by its own family; 19 hits / 10 files |
| (B105) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (B10b) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 2 files |
| (B10e) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 3 files |
| (B11) | unchanged | old id in parentheses: rewritten by its own family; 20 hits / 10 files |
| (B114) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (B12) | unchanged | old id in parentheses: rewritten by its own family; 5 hits / 3 files |
| (B124) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (B13) | unchanged | old id in parentheses: rewritten by its own family; 11 hits / 5 files |
| (B14) | unchanged | old id in parentheses: rewritten by its own family; 14 hits / 7 files |
| (B15) | unchanged | old id in parentheses: rewritten by its own family; 20 hits / 12 files |
| (B16) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (B17) | unchanged | old id in parentheses: rewritten by its own family; 5 hits / 4 files |
| (B18) | unchanged | old id in parentheses: rewritten by its own family; 20 hits / 14 files |
| (B19) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 4 files |
| (B2) | unchanged | old id in parentheses: rewritten by its own family; 312 hits / 57 files |
| (B20) | unchanged | old id in parentheses: rewritten by its own family; 16 hits / 6 files |
| (B21) | unchanged | old id in parentheses: rewritten by its own family; 8 hits / 4 files |
| (B22) | unchanged | old id in parentheses: rewritten by its own family; 7 hits / 7 files |
| (B22a) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 2 files |
| (B27) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (B28) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (B3) | unchanged | old id in parentheses: rewritten by its own family; 29 hits / 16 files |
| (B30) | unchanged | old id in parentheses: rewritten by its own family; 12 hits / 6 files |
| (B4) | unchanged | old id in parentheses: rewritten by its own family; 18 hits / 12 files |
| (B5) | unchanged | old id in parentheses: rewritten by its own family; 30 hits / 11 files |
| (B6) | unchanged | old id in parentheses: rewritten by its own family; 13 hits / 6 files |
| (B7) | unchanged | old id in parentheses: rewritten by its own family; 22 hits / 12 files |
| (B8) | unchanged | old id in parentheses: rewritten by its own family; 27 hits / 16 files |
| (B9) | unchanged | old id in parentheses: rewritten by its own family; 6 hits / 3 files |
| (B92) | unchanged | old id in parentheses: rewritten by its own family; 10 hits / 2 files |
| (C-new-2) | unchanged | old id in parentheses: rewritten by its own family; 5 hits / 5 files |
| (C-new-3) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (C1) | unchanged | old id in parentheses: rewritten by its own family; 162 hits / 45 files |
| (C12) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (C13) | unchanged | old id in parentheses: rewritten by its own family; 14 hits / 8 files |
| (C14) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 3 files |
| (C15) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (C16) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (C17) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (C18) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 3 files |
| (C19) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 4 files |
| (C1′) | unchanged | old id in parentheses: rewritten by its own family; 15 hits / 11 files |
| (C2) | unchanged | old id in parentheses: rewritten by its own family; 89 hits / 35 files |
| (C23) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 4 files |
| (C24) | unchanged | old id in parentheses: rewritten by its own family; 6 hits / 3 files |
| (C25) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 3 files |
| (C27) | unchanged | old id in parentheses: rewritten by its own family; 7 hits / 4 files |
| (C28) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (C2′) | unchanged | old id in parentheses: rewritten by its own family; 13 hits / 8 files |
| (C3) | unchanged | old id in parentheses: rewritten by its own family; 59 hits / 24 files |
| (C31) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 3 files |
| (C34) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 3 files |
| (C35) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (C4) | unchanged | old id in parentheses: rewritten by its own family; 34 hits / 17 files |
| (C41) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (C44) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (C4′) | unchanged | old id in parentheses: rewritten by its own family; 15 hits / 9 files |
| (C5) | unchanged | old id in parentheses: rewritten by its own family; 74 hits / 28 files |
| (C9) | unchanged | old id in parentheses: rewritten by its own family; 5 hits / 4 files |
| (F1) | unchanged | old id in parentheses: rewritten by its own family; 127 hits / 43 files |
| (F2) | unchanged | old id in parentheses: rewritten by its own family; 48 hits / 20 files |
| (F3) | unchanged | old id in parentheses: rewritten by its own family; 67 hits / 23 files |
| (F4) | unchanged | old id in parentheses: rewritten by its own family; 44 hits / 15 files |
| (F5) | unchanged | old id in parentheses: rewritten by its own family; 14 hits / 7 files |
| (F6) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 3 files |
| (F7) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 4 files |
| (F8) | unchanged | old id in parentheses: rewritten by its own family; 5 hits / 5 files |
| (F9) | unchanged | old id in parentheses: rewritten by its own family; 5 hits / 4 files |
| (I-22) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (I-35) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (IN3) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (NEW-4) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (R0) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 2 files |
| (R1) | unchanged | old id in parentheses: rewritten by its own family; 73 hits / 37 files |
| (R2) | unchanged | old id in parentheses: rewritten by its own family; 65 hits / 34 files |
| (R26) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (R3) | unchanged | old id in parentheses: rewritten by its own family; 69 hits / 28 files |
| (R36) | unchanged | old id in parentheses: rewritten by its own family; 7 hits / 4 files |
| (R4) | unchanged | old id in parentheses: rewritten by its own family; 35 hits / 19 files |
| (R5) | unchanged | old id in parentheses: rewritten by its own family; 10 hits / 6 files |
| (R6) | unchanged | old id in parentheses: rewritten by its own family; 6 hits / 5 files |
| (R7) | unchanged | old id in parentheses: rewritten by its own family; 20 hits / 9 files |
| (T1) | unchanged | external label (Balaban / OS) — never renamed; 125 hits / 28 files |
| (T2) | unchanged | external label (Balaban / OS) — never renamed; 48 hits / 22 files |
| (T3) | unchanged | external label (Balaban / OS) — never renamed; 18 hits / 8 files |
| (T37-I4) | unchanged | old id in parentheses: rewritten by its own family; 4 hits / 2 files |
| (T39-I1) | unchanged | old id in parentheses: rewritten by its own family; 2 hits / 2 files |
| (T39-V8) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |
| (T3a) | unchanged | external label (Balaban / OS) — never renamed; 4 hits / 2 files |
| (T4) | unchanged | external label (Balaban / OS) — never renamed; 20 hits / 10 files |
| (X5) | unchanged | old id in parentheses: rewritten by its own family; 3 hits / 2 files |

### M17. Named results proved in the project → L-nnn (one id per name and defining file) (289 rows)

| old | new | meaning / note |
|---|---|---|
| Theorem 2w | L-001 | Target 1 main theorem (THEOREM2_PROOF_v4 §1.3) |
| Corollary A [THM310_FULL] | L-002 | 6 refs / 3 files |
| Fact A [S_FX_O1] | L-003 | 43 refs / 21 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Fact A [S_GGAIN_NONMONO] | L-004 | 43 refs / 21 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Fact A [S_SM] | L-005 | 43 refs / 21 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Fact A [U3_LEMMA51_R23] | L-006 | 43 refs / 21 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A [LEMMAS] | L-007 | 118 refs / 31 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A [S_A15_LOC] | L-008 | 118 refs / 31 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A [S_D2C] | L-009 | 118 refs / 31 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A [S_MULTISCALE_OMEGA_SOURCED] | L-010 | 118 refs / 31 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A [S_T2_MJ_REST] | L-011 | 118 refs / 31 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A [THM310_FULL] | L-012 | 118 refs / 31 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition A [U3_REPAIRS] | L-013 | 119 refs / 34 files |
| Theorem A [BETA_FP_PW] | L-014 | 48 refs / 17 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem A [S_T2_MPT_STEPC] | L-015 | 48 refs / 17 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition A0 [U3_AW] | L-016 | 1 refs / 1 files |
| Lemma A1 [U3_AW] | L-017 | 23 refs / 9 files |
| Theorem A1-W [A1_WALK_FULL] | L-018 | 35 refs / 17 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem A1-W [S_A1_WALK] | L-019 | 35 refs / 17 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition A15-N [S_A15_LOC] | L-020 | 31 refs / 8 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition A15-N [S_A15_WHOLE] | L-021 | 31 refs / 8 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A17 [S_A17_A19] | L-022 | 1 refs / 1 files |
| Proposition A19 [S_A17_A19] | L-023 | 1 refs / 1 files |
| Theorem A1′ [S_A1_KERNEL (no definition line found; most-cited file)] | L-024 | 9 refs / 8 files |
| Proposition A2 [THEOREM2_PROOF] | L-025 | 33 refs / 15 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition A2 [U3_AW] | L-026 | 33 refs / 15 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem A3 [S_A3_GAMMA0_FULL] | L-027 | 98 refs / 25 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem A3 [THEOREM2_PROOF] | L-028 | 98 refs / 25 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem A3 [U3_AW] | L-029 | 98 refs / 25 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma A4 [U3_AW] | L-030 | 25 refs / 14 files |
| Lemma AG [THM37_FULL] | L-031 | 24 refs / 6 files |
| Lemma AG′ [THM310_FULL] | L-032 | 11 refs / 2 files |
| Lemma AW [A1_WALK_FULL] | L-033 | 39 refs / 16 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma AW [S_MULTISCALE_OMEGA] | L-034 | 39 refs / 16 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma AW [S_WC_RESIDUE] | L-035 | 39 refs / 16 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma AW [THM39_FULL] | L-036 | 39 refs / 16 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma AW [WC_FULL] | L-037 | 39 refs / 16 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Fact B [S_FX_O1] | L-038 | 30 refs / 17 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Fact B [S_GGAIN_NONMONO] | L-039 | 30 refs / 17 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Fact B [S_SM] | L-040 | 30 refs / 17 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Fact B [U3_LEMMA51_R23] | L-041 | 30 refs / 17 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma B [LEMMAS] | L-042 | 48 refs / 12 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma B [S_MULTISCALE_OMEGA_SOURCED] | L-043 | 48 refs / 12 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma B [THM310_FULL] | L-044 | 48 refs / 12 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition B [U3_REPAIRS] | L-045 | 62 refs / 24 files |
| Theorem B [BETA_FP_PW] | L-046 | 93 refs / 26 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem B [BETA_FP_U] | L-047 | 93 refs / 26 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem B [S_T2_MPT_STEPC] | L-048 | 93 refs / 26 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem B [THEOREM2_PROOF] | L-049 | 93 refs / 26 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma B0 [THM37_FULL] | L-050 | 3 refs / 2 files |
| Claim B1 [LEMMAS] | L-051 | 1 refs / 1 files |
| Claim B2 [LEMMAS] | L-052 | 1 refs / 1 files |
| Lemma B2 [numerics/inclined_cell_geometry.py (no definition line found; most-cited file)] | L-053 | 1 refs / 1 files |
| Theorem B2 [B2_TWOSTEP] | L-054 | 17 refs / 6 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem B2 [THEOREM2_PROOF] | L-055 | 17 refs / 6 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem B2-full [S_GGAIN_LF] | L-056 | 5 refs / 4 files |
| Theorem B2-unif [S_GGAIN] | L-057 | 21 refs / 12 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem B2-unif [S_GGAIN_NONMONO] | L-058 | 21 refs / 12 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Claim B3 [LEMMAS] | L-059 | 1 refs / 1 files |
| Lemma B4 [LEMMA_B4] | L-060 | 4 refs / 1 files |
| Proposition B7-cube [S_T2_B7_CLAMP] | L-061 | 6 refs / 2 files |
| Theorem B_PW [paper/README (no definition line found; most-cited file)] | L-062 | 2 refs / 2 files |
| Proposition BDRY [paper/appendix.tex (no definition line found; most-cited file)] | L-063 | 5 refs / 3 files |
| Theorem BDRY [S_A15_BDRY] | L-064 | 9 refs / 4 files |
| Corollary C [reports/ETH_CONSTANTS] | L-065 | 1 refs / 1 files |
| Fact C [S_FX_O1] | L-066 | 7 refs / 6 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Fact C [U3_LEMMA51_R23] | L-067 | 7 refs / 6 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [LEMMAS] | L-068 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [S_A18_REGULAR] | L-069 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [S_B21_S_PRIME] | L-070 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [S_D4D5] | L-071 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [S_T2_MPT_STEPC] | L-072 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [THM37_FULL] | L-073 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [U3_REPAIRS] | L-074 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C [WG_FULL] | L-075 | 317 refs / 54 files; HOMONYM: 8 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition C1 [S_T2_HMINUSC] | L-076 | 1 refs / 1 files |
| Theorem C1 [B2_TWOSTEP] | L-077 | 38 refs / 14 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem C1 [THEOREM2_PROOF] | L-078 | 38 refs / 14 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma CC [THM37_FULL] | L-079 | 24 refs / 5 files |
| Lemma Cnt [THM310_FULL] | L-080 | 3 refs / 1 files |
| Lemma CP [A1_WALK_FULL] | L-081 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma CP [S_MULTISCALE_OMEGA] | L-082 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma CP [S_WC_RESIDUE] | L-083 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma CP [WC_FULL] | L-084 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma CT [A1_WALK_FULL] | L-085 | 138 refs / 45 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma CT [S_A1_KERNEL] | L-086 | 138 refs / 45 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma CT [WC_FULL] | L-087 | 138 refs / 45 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C′ [S_B21_S_PRIME] | L-088 | 53 refs / 12 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C′ [S_D4D5] | L-089 | 53 refs / 12 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma C′ [THM310_FULL] | L-090 | 53 refs / 12 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [ASSEMBLY] | L-091 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [LEMMAS] | L-092 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [R2_TELESCOPING] | L-093 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [S_HHOL] | L-094 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [S_HTHR2] | L-095 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [S_MC] | L-096 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [THEOREM2] | L-097 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [THEOREM2_PROOF] | L-098 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D [U3_REPAIRS] | L-099 | 207 refs / 58 files; HOMONYM: 9 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem D [S_A7_CDC] | L-100 | 8 refs / 3 files |
| Lemma D2 [S_A4_D189 (no definition line found; most-cited file)] | L-101 | 3 refs / 2 files |
| Theorem D2 [S_D2] | L-102 | 3 refs / 3 files |
| Lemma D3 [S_D3] | L-103 | 39 refs / 18 files |
| Theorem D3 [S_D3] | L-104 | 7 refs / 7 files |
| Lemma D4 [S_D4D5] | L-105 | 25 refs / 6 files |
| Lemma DI [THM310_FULL] | L-106 | 15 refs / 3 files |
| Lemma D′ [KAPPA_BOUNDED] | L-107 | 82 refs / 21 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D′ [THEOREM2_PROOF] | L-108 | 82 refs / 21 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D′-nest [S_T2_B7_CLAMP] | L-109 | 2 refs / 2 files |
| Lemma D″ [INFINITE_VOLUME_IV12] | L-110 | 133 refs / 34 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D″ [KAPPA_BOUNDED] | L-111 | 133 refs / 34 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D″ [THEOREM2_PROOF] | L-112 | 133 refs / 34 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma D″-nest [S_T2_B7_CLAMP] | L-113 | 4 refs / 3 files |
| Lemma D□ [THM37_FULL] | L-114 | 19 refs / 4 files |
| Corollary E [S_T2_R2REM] | L-115 | 5 refs / 1 files |
| Lemma E [ASSEMBLY] | L-116 | 161 refs / 47 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma E [LEMMAS] | L-117 | 161 refs / 47 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma E [S_WC_EXPGAUGE] | L-118 | 161 refs / 47 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma E [THEOREM2] | L-119 | 161 refs / 47 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma E [THEOREM2_PROOF] | L-120 | 161 refs / 47 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma E [U3_REPAIRS] | L-121 | 161 refs / 47 files; HOMONYM: 6 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition E [THEOREM2_PROOF] | L-122 | 28 refs / 14 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition E [U3_AW] | L-123 | 28 refs / 14 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem E [reports/LOCAL_SMOOTHING_READ] | L-124 | 1 refs / 1 files |
| Lemma F [S_T2_MPT_STEPC] | L-125 | 16 refs / 8 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma F [U3_REPAIRS] | L-126 | 16 refs / 8 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma F1 [S_D3R] | L-127 | 21 refs / 11 files |
| Lemma F2 [S_D3R] | L-128 | 13 refs / 6 files |
| Lemma F2′ [S_D3W8] | L-129 | 19 refs / 9 files |
| Lemma FX-D [S_FX_D] | L-130 | 7 refs / 4 files |
| Lemma G [H1_ANALYTIC] | L-131 | 87 refs / 30 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G [S_A15_LOC] | L-132 | 87 refs / 30 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G [S_MULTISCALE_OMEGA] | L-133 | 87 refs / 30 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G [U3_REPAIRS] | L-134 | 87 refs / 30 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G [WC_FULL] | L-135 | 87 refs / 30 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G1 [S_GGAIN] | L-136 | 17 refs / 8 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G1 [S_GGAIN_NONMONO] | L-137 | 17 refs / 8 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G2 [S_GGAIN] | L-138 | 6 refs / 4 files |
| Lemma G3 [S_G3] | L-139 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G3 [S_G3_N2] | L-140 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G3 [S_GGAIN] | L-141 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G3 [S_GGAIN_NONMONO] | L-142 | 62 refs / 24 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma G4 [S_GGAIN] | L-143 | 34 refs / 11 files |
| Lemma G4′ [S_G4 (no definition line found; most-cited file)] | L-144 | 2 refs / 1 files |
| Lemma Gauge [H1_ANALYTIC] | L-145 | 16 refs / 9 files |
| Lemma H [S_D2C] | L-146 | 80 refs / 31 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma H [S_HBETA] | L-147 | 80 refs / 31 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Proposition H0-red [S_T2_H0] | L-148 | 22 refs / 10 files |
| Theorem H2 [H2_CERTIFY] | L-149 | 5 refs / 4 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem H2 [S_HHIST2] | L-150 | 5 refs / 4 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma HH [S_A10_LOWER] | L-151 | 72 refs / 28 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma HH [S_GGAIN] | L-152 | 72 refs / 28 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma HH [S_GGAIN_BETAH] | L-153 | 72 refs / 28 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma HH [S_HHIST] | L-154 | 72 refs / 28 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma HH [S_SM] | L-155 | 72 refs / 28 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma H′ [S_HTHR] | L-156 | 27 refs / 11 files |
| Lemma H″ [S_B10_SWEEP] | L-157 | 10 refs / 4 files |
| Proposition I-109 [S_A18_REGULAR] | L-158 | 4 refs / 4 files |
| Proposition I-122 [S_A18_REGULAR] | L-159 | 2 refs / 2 files |
| Proposition I-real [S_A18_REGULAR] | L-160 | 1 refs / 1 files |
| Theorem IV [INFINITE_VOLUME_FABLE] | L-161 | 33 refs / 6 files |
| Lemma IV-1 [INFINITE_VOLUME_IV12] | L-162 | 9 refs / 2 files |
| Lemma IV-2 [INFINITE_VOLUME_IV12 (no definition line found; most-cited file)] | L-163 | 5 refs / 1 files |
| Theorem IV-2 [INFINITE_VOLUME_IV12] | L-164 | 4 refs / 2 files |
| Lemma IV-M [INFINITE_VOLUME_PLAN] | L-165 | 21 refs / 6 files |
| Lemma J [S_MA] | L-166 | 8 refs / 4 files |
| Fact K [S_T2_V1] | L-167 | 7 refs / 2 files |
| Lemma K [THM37_FULL] | L-168 | 15 refs / 2 files |
| Theorem K [B2_TWOSTEP] | L-169 | 137 refs / 42 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem K [KAPPA_BOUNDED] | L-170 | 137 refs / 42 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma K0 [THM37_FULL] | L-171 | 7 refs / 1 files |
| Theorem L [S_MULTISCALE_OMEGA] | L-172 | 79 refs / 24 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem L [S_WC_EXPGAUGE] | L-173 | 79 refs / 24 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem L [WC_FULL] | L-174 | 79 refs / 24 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Claim L_G [S_A15_BDRY] | L-175 | 26 refs / 8 files |
| Lemma LB [THM39_FULL] | L-176 | 22 refs / 8 files |
| Lemma LB_Q̃ [S_P253_P275] | L-177 | 27 refs / 6 files |
| Lemma LC [THM37_FULL] | L-178 | 16 refs / 4 files |
| Lemma LOC [S_LOC] | L-179 | 18 refs / 10 files |
| Theorem LOC [INFINITE_VOLUME_FABLE] | L-180 | 39 refs / 9 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem LOC [INFINITE_VOLUME_IV12] | L-181 | 39 refs / 9 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem LOC [S_A15_LOC] | L-182 | 39 refs / 9 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma LT [A1_WALK_FULL] | L-183 | 38 refs / 9 files |
| Lemma M [KAPPA_BOUNDED] | L-184 | 75 refs / 22 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma M [THEOREM2_PROOF] | L-185 | 75 refs / 22 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma M [U3_AW] | L-186 | 75 refs / 22 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma M1 [S_ORDER_CANON] | L-187 | 9 refs / 4 files |
| Lemma M2 [S_ORDER_CANON] | L-188 | 21 refs / 7 files |
| Lemma MC [S_HIGHER_M1] | L-189 | 25 refs / 10 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma MC [S_MC] | L-190 | 25 refs / 10 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N [S_A15_LOC] | L-191 | 127 refs / 37 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N [S_A2_R2] | L-192 | 127 refs / 37 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N [S_A7_CDC] | L-193 | 127 refs / 37 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N [THM37_FULL] | L-194 | 127 refs / 37 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N [WG_FULL] | L-195 | 127 refs / 37 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem N1 [ASSEMBLY_N1] | L-196 | 12 refs / 7 files |
| Lemma N1-B [INFINITE_VOLUME_IV12] | L-197 | 15 refs / 5 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N1-B [S_B21_S_PRIME] | L-198 | 15 refs / 5 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N3 [S_HBETA_N3] | L-199 | 41 refs / 17 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N3 [S_HHOL] | L-200 | 41 refs / 17 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma N3″ [S_B10_SWEEP] | L-201 | 1 refs / 1 files |
| Lemma O1-R [lean/VERIFY_CubeCount (no definition line found; most-cited file)] | L-202 | 3 refs / 2 files |
| Lemma O1-R′ [lean/YmLean/CubeCount.lean (no definition line found; most-cited file)] | L-203 | 5 refs / 4 files |
| Theorem O5 [U3_REPAIRS] | L-204 | 5 refs / 4 files |
| Theorem O6 [S_D2] | L-205 | 7 refs / 4 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem O6 [U3_REPAIRS] | L-206 | 7 refs / 4 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Claim P [S_T2_B7_CLAMP] | L-207 | 1 refs / 1 files |
| Lemma P [ASSEMBLY_N1] | L-208 | 67 refs / 25 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma P [S_A8_POS] | L-209 | 67 refs / 25 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma P [S_B20_LAMBDAJ] | L-210 | 67 refs / 25 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma P [THM37_FULL] | L-211 | 67 refs / 25 files; HOMONYM: 4 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma P3 [S_D3R] | L-212 | 22 refs / 10 files |
| Lemma P4 [H2_CERTIFY_P4] | L-213 | 4 refs / 3 files |
| Lemma P_exp [S_WC_EXPGAUGE] | L-214 | 19 refs / 9 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma P_exp [WC_FULL] | L-215 | 19 refs / 9 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem PI [S_T2_PI] | L-216 | 48 refs / 7 files |
| Lemma Q [S_A18_REGULAR] | L-217 | 58 refs / 15 files |
| Lemma Q-type [S_P254_TRANSFER_VERIFY (no definition line found; most-cited file)] | L-218 | 1 refs / 1 files |
| Theorem QE [S_QE_INV] | L-219 | 16 refs / 9 files |
| Lemma R [S_C_CONDITION] | L-220 | 32 refs / 7 files |
| Lemma R1 [S_T2_MPT_REST] | L-221 | 15 refs / 4 files |
| Lemma R1-a [S_T2_B7_CLAMP] | L-222 | 3 refs / 1 files |
| Lemma R1-b [S_T2_B7_CLAMP] | L-223 | 2 refs / 2 files |
| Claim R2 [S_A23_TSTEP] | L-224 | 1 refs / 1 files |
| Corollary R2 [S_T2_MPT_REST] | L-225 | 4 refs / 1 files |
| Proposition R2 [S_A2_R2] | L-226 | 8 refs / 5 files |
| Theorem R2 [S_T2_R2REM] | L-227 | 17 refs / 3 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem R2 [U3_LEMMA51_R23] | L-228 | 17 refs / 3 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma R3 [S_T2_MPT_REST] | L-229 | 6 refs / 2 files |
| Theorem R3 [U3_LEMMA51_R23] | L-230 | 1 refs / 1 files |
| Lemma RP-lim [INFINITE_VOLUME_ATTEMPT] | L-231 | 1 refs / 1 files |
| Lemma S [H1_ANALYTIC] | L-232 | 147 refs / 43 files; HOMONYM: 7 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma S [S_A15_LOC] | L-233 | 147 refs / 43 files; HOMONYM: 7 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma S [S_A8_POS] | L-234 | 147 refs / 43 files; HOMONYM: 7 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma S [S_HTHR] | L-235 | 147 refs / 43 files; HOMONYM: 7 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma S [S_MA] | L-236 | 147 refs / 43 files; HOMONYM: 7 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma S [S_P254_TRANSFER] | L-237 | 147 refs / 43 files; HOMONYM: 7 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma S [THM37_FULL] | L-238 | 147 refs / 43 files; HOMONYM: 7 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem S [S_T2_LLL] | L-239 | 7 refs / 4 files |
| Lemma S1 [S_T2_LLL] | L-240 | 13 refs / 4 files |
| Theorem S1 [S_D4D5] | L-241 | 4 refs / 1 files |
| Lemma S1′ [S_T2_MPT_STEPC] | L-242 | 13 refs / 2 files |
| Lemma S2 [S_T2_LLL] | L-243 | 12 refs / 7 files |
| Corollary S3 [S_T2_LLL] | L-244 | 2 refs / 1 files |
| Lemma S3 [H2_CERTIFY_L13_G1] | L-245 | 2 refs / 2 files |
| Lemma SIGMA [S_A3_SIGMA (no definition line found; most-cited file)] | L-246 | 1 refs / 1 files |
| Theorem SM [S_A10_LOWER] | L-247 | 89 refs / 27 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem SM [S_GGAIN_NONMONO] | L-248 | 89 refs / 27 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem SM [S_SM] | L-249 | 89 refs / 27 files; HOMONYM: 3 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma T [ASSEMBLY_N1] | L-250 | 168 refs / 41 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma T [H1_ANALYTIC] | L-251 | 168 refs / 41 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma T [S_C_CONDITION] | L-252 | 168 refs / 41 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma T [S_HTHR2] | L-253 | 168 refs / 41 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma T [S_P253_P275] | L-254 | 168 refs / 41 files; HOMONYM: 5 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma T1 [S_A4_D189] | L-255 | 1 refs / 1 files |
| Lemma T2 [S_A4_D189] | L-256 | 1 refs / 1 files |
| Lemma T3 [S_A4_D189] | L-257 | 1 refs / 1 files |
| Theorem T310 [THM310_FULL] | L-258 | 9 refs / 2 files |
| Theorem T37 [THM37_FULL] | L-259 | 10 refs / 4 files |
| Theorem T37-M1 [THM37_FULL] | L-260 | 2 refs / 1 files |
| Theorem T39 [paper/appendix.tex (no definition line found; most-cited file)] | L-261 | 1 refs / 1 files |
| Lemma TC [INFINITE_VOLUME_ATTEMPT] | L-262 | 6 refs / 3 files |
| Claim U [R2_TELESCOPING] | L-263 | 1 refs / 1 files |
| Lemma U [S_D2C] | L-264 | 9 refs / 2 files |
| Theorem U [BETA_FP_U] | L-265 | 1 refs / 1 files |
| Lemma U1 [R2_TELESCOPING] | L-266 | 12 refs / 6 files |
| Lemma U2 [R2_TELESCOPING] | L-267 | 4 refs / 3 files |
| Lemma U2′ [U1_INFINITE_LATTICE] | L-268 | 15 refs / 6 files |
| Lemma U3 [U3_GAUSSIAN_RG (no definition line found; most-cited file)] | L-269 | 1 refs / 1 files |
| Lemma V0 [S_T2_LLL] | L-270 | 6 refs / 2 files |
| Lemma V1 [S_T2_LLL] | L-271 | 19 refs / 6 files |
| Theorem V1 [S_T2_V1] | L-272 | 11 refs / 2 files |
| Lemma V1′ [S_T2_MPT_STEPC] | L-273 | 11 refs / 3 files |
| Lemma V2 [S_T2_LLL] | L-274 | 14 refs / 4 files |
| Lemma W [S_A15_LOC] | L-275 | 27 refs / 10 files |
| Proposition W [THM37_FULL] | L-276 | 7 refs / 2 files |
| Theorem W [THEOREM2_PROOF] | L-277 | 72 refs / 22 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem W [U3_AW] | L-278 | 72 refs / 22 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem W0 [U3_AW] | L-279 | 4 refs / 2 files |
| Proposition W10 [THM310_FULL] | L-280 | 3 refs / 1 files |
| Theorem W4 [S_W4 (no definition line found; most-cited file)] | L-281 | 2 refs / 1 files |
| Proposition W_N [WC_FULL] | L-282 | 29 refs / 11 files |
| Proposition W_S [S_A16_REPLACE2] | L-283 | 4 refs / 2 files |
| Theorem WC [S_A16_REPLACE2] | L-284 | 44 refs / 14 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Theorem WC [WC_FULL] | L-285 | 44 refs / 14 files; HOMONYM: 2 defining files — confirm whether restatement (merge ids) or distinct |
| Lemma WG [WC_FULL (no definition line found; most-cited file)] | L-286 | 2 refs / 1 files |
| Theorem WG [WG_FULL] | L-287 | 3 refs / 2 files |
| Theorem WG-G [WG_FULL] | L-288 | 26 refs / 6 files |
| Theorem WG-G1 [WG_FULL] | L-289 | 27 refs / 10 files |

### M18. Paper object labels → <env>:<id without dash> (sec:, app:, rem:, corr: labels unchanged) (47 rows)

| old label | new label | object |
|---|---|---|
| thm:A | thm:L501 | Theorem A (paper intro) → L-501 |
| thm:B | thm:L502 | Theorem B (paper; Target 2) → L-502 |
| def:HU | def:H159 | definition of (H-U) → H-159 |
| thm:existence | thm:L503 | existence theorem (assembly) → L-503 |
| thm:nontriv | thm:L504 | nontriviality theorem → L-504 |
| prop:compactness | prop:L505 | compactness proposition → L-505 |
| lem:finiteform | lem:L506 | finite-form lemma → L-506 |
| thm:H2cert | thm:L507 | Theorem (H2) at L = 13 → L-507 |
| thm:A1W | thm:L018 | Theorem A1-W → L-018 |
| thm:WG | thm:L287 | Theorem WG → L-287 |
| thm:WC | thm:L285 | Theorem WC → L-285 |
| thm:A7 | thm:L508 | paper theorem proving ledger A7 → L-508 |
| thm:A8 | thm:L509 | proves A8 → L-509 |
| thm:A10 | thm:L510 | proves A10′ → L-510 |
| prop:A11 | prop:L511 | A11 list → L-511 |
| prop:A15N | prop:L020 | Prop. A15-N → L-020 |
| thm:G3N2 | thm:L512 | G3 = N2 theorem → L-512 |
| thm:LOC | thm:L182 | Theorem LOC → L-182 |
| prop:BDRY | prop:L064 | BDRY → L-064 |
| thm:GAprime | thm:L513 | (G_A′) theorem → L-513 |
| thm:Mj | thm:L514 | proves (M_j) = B4 → L-514 |
| thm:B7nest | thm:L515 | B7 nested-interval theorem → L-515 |
| prop:A17 | prop:L516 | proves A17 → L-516 |
| prop:A19 | prop:L023 | A19 → L-023 |
| prop:A18 | prop:L517 | A18 → L-517 |
| prop:A23 | prop:L518 | A23 → L-518 |
| thm:A16 | thm:L519 | A16 → L-519 |
| prop:R1p | prop:L520 | (R1′) → L-520 |
| prop:W4R | prop:L521 | (W4) R-part → L-521 |
| prop:Ccond | prop:L522 | (C) condition proof → L-522 |
| lem:LemmaR | lem:L220 | Lemma R → L-220 |
| thm:LLL | thm:L523 | (L-LL) → L-523 |
| thm:Fmpt | thm:L524 | (F) by proper time → L-524 |
| prop:Sprime | prop:L525 | (S′) → L-525 |
| prop:P254 | prop:L526 | p. 254 transfer → L-526 |
| thm:T39 | thm:L261 | Theorem T39 → L-261 |
| thm:T37 | thm:L259 | Theorem T37 → L-259 |
| thm:2w | thm:L001 | Theorem 2w → L-001 |
| lem:Dprime | lem:L107 | Lemma D′ → L-107 |
| lem:Ddprime | lem:L112 | Lemma D″ → L-112 |
| lem:D | lem:L092 | Lemma D → L-092 |
| lem:E | lem:L117 | Lemma E → L-117 |
| prop:anchorfree | prop:L527 | anchor-free proposition → L-527 |
| thm:K | thm:L170 | Theorem K → L-170 |
| thm:PW | thm:L528 | Theorem PW (Route B) → L-528 |
| thm:C1 | thm:L077 | Theorem C1 → L-077 |
| thm:B2 | thm:L054 | Theorem B2 → L-054 |

### M19. Lean identifiers (77 rows)

| old | new | note |
|---|---|---|
| CanonOrder.Line.B1 | CanonOrder.Line.N010 | canon line B1 → N-010 |
| CanonOrder.Line.B2 | CanonOrder.Line.N020 | canon line B2 → N-020 |
| CanonOrder.Line.B6 | CanonOrder.Line.N030 | canon line B6 → N-030 |
| CanonOrder.Line.B3 | CanonOrder.Line.N040 | canon line B3 → N-040 |
| CanonOrder.Line.B4 | CanonOrder.Line.N050 | canon line B4 → N-050 |
| CanonOrder.Line.B5 | CanonOrder.Line.N060 | canon line B5 → N-060 |
| CanonOrder.Line.B7 | CanonOrder.Line.N070 | canon line B7 → N-070 |
| CanonOrder.Line.B8 | CanonOrder.Line.N080 | canon line B8 → N-080 |
| CanonOrder.Line.B9 | CanonOrder.Line.N090 | canon line B9 → N-090 |
| CanonOrder.Line.B10a | CanonOrder.Line.N100 | canon line B10a → N-100 |
| CanonOrder.Line.B10b | CanonOrder.Line.N110 | canon line B10b → N-110 |
| CanonOrder.Line.B10c | CanonOrder.Line.N120 | canon line B10c → N-120 |
| CanonOrder.Line.B10d | CanonOrder.Line.N130 | canon line B10d → N-130 |
| CanonOrder.Line.B10e | CanonOrder.Line.N140 | canon line B10e → N-140 |
| CanonOrder.Line.B10f | CanonOrder.Line.N150 | canon line B10f → N-150 |
| CanonOrder.Line.B10g | CanonOrder.Line.N160 | canon line B10g → N-160 |
| CanonOrder.Line.B5a | CanonOrder.Line.N170 | canon line B5a → N-170 |
| CanonOrder.Line.B10 | CanonOrder.Line.N180 | canon line B10 → N-180 |
| CanonOrder.Line.B11 | CanonOrder.Line.N190 | canon line B11 → N-190 |
| CanonOrder.Line.B12 | CanonOrder.Line.N200 | canon line B12 → N-200 |
| CanonOrder.Line.B12a | CanonOrder.Line.N210 | canon line B12a → N-210 |
| CanonOrder.Line.B12b | CanonOrder.Line.N220 | canon line B12b → N-220 |
| CanonOrder.Line.B12c | CanonOrder.Line.N230 | canon line B12c → N-230 |
| CanonOrder.Line.B13 | CanonOrder.Line.N240 | canon line B13 → N-240 |
| CanonOrder.Line.B14 | CanonOrder.Line.N250 | canon line B14 → N-250 |
| CanonOrder.Line.B14a | CanonOrder.Line.N260 | canon line B14a → N-260 |
| CanonOrder.Line.B15 | CanonOrder.Line.N270 | canon line B15 → N-270 |
| CanonOrder.Line.B16 | CanonOrder.Line.N280 | canon line B16 → N-280 |
| CanonOrder.Line.B17 | CanonOrder.Line.N290 | canon line B17 → N-290 |
| CanonOrder.Line.B17a | CanonOrder.Line.N300 | canon line B17a → N-300 |
| CanonOrder.Line.B18 | CanonOrder.Line.N310 | canon line B18 → N-310 |
| CanonOrder.Line.B18a | CanonOrder.Line.N320 | canon line B18a → N-320 |
| CanonOrder.Line.B18b | CanonOrder.Line.N330 | canon line B18b → N-330 |
| CanonOrder.Line.B19 | CanonOrder.Line.N340 | canon line B19 → N-340 |
| CanonOrder.Line.B20 | CanonOrder.Line.N350 | canon line B20 → N-350 |
| CanonOrder.Line.B21 | CanonOrder.Line.N360 | canon line B21 → N-360 |
| CanonOrder.Line.B22 | CanonOrder.Line.N370 | canon line B22 → N-370 |
| CanonOrder.Line.B22a | CanonOrder.Line.N380 | canon line B22a → N-380 |
| CanonOrder.Line.B23 | CanonOrder.Line.N390 | canon line B23 → N-390 |
| CanonOrder.Line.B24 | CanonOrder.Line.N400 | canon line B24 → N-400 |
| CanonOrder.Line.B25 | CanonOrder.Line.N410 | canon line B25 → N-410 |
| CanonOrder.Line.B26 | CanonOrder.Line.N420 | canon line B26 → N-420 |
| CanonOrder.Line.B27 | CanonOrder.Line.N430 | canon line B27 → N-430 |
| CanonOrder.Line.B28 | CanonOrder.Line.N440 | canon line B28 → N-440 |
| CanonOrder.Line.B29 | CanonOrder.Line.N450 | canon line B29 → N-450 |
| CanonOrder.Line.B29a | CanonOrder.Line.N460 | canon line B29a → N-460 |
| CanonOrder.Line.B30 | CanonOrder.Line.N470 | canon line B30 → N-470 |
| CanonOrder.Line.B31 | CanonOrder.Line.N480 | canon line B31 → N-480 |
| CanonOrder.Line.B32 | CanonOrder.Line.N490 | canon line B32 → N-490 |
| CanonOrder.Line.B33 | CanonOrder.Line.N500 | canon line B33 → N-500 |
| LemmaDE.lemma_D | rename to lemma_Lnnn with nnn = the L-id of: Lemma D [LEMMAS] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| LemmaDE.lemma_E | rename to lemma_Lnnn with nnn = the L-id of: Lemma E [LEMMAS] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| LemmaDE.lemma_DE | rename to lemma_Lnnn with nnn = the L-id of: Lemmas D+E | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| LemmaDE.lemma_DPrime_step8 | rename to lemma_Lnnn with nnn = the L-id of: Lemma D′ step 8 | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| LemmaDPrime.lemma_DPrime | rename to lemma_Lnnn with nnn = the L-id of: Lemma D′ | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| LemmaDDoublePrime.lemma_DDoublePrime | rename to lemma_Lnnn with nnn = the L-id of: Lemma D″ | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| LemmaH.lemma_H | rename to lemma_Lnnn with nnn = the L-id of: Lemma H [HBETA] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| LemmaH.lemma_H_half | rename to lemma_Lnnn with nnn = the L-id of: Lemma H, half form | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| CauchyPerturbation.lemma_CP | rename to lemma_Lnnn with nnn = the L-id of: Lemma CP [WC_RESIDUE] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| WeightedNorm.lemma_N | rename to lemma_Lnnn with nnn = the L-id of: Lemma N [A2_R2] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| WeightedNorm.lemma_N_exp | rename to lemma_Lnnn with nnn = the L-id of: Lemma N, exp form | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| WeightedNorm.lemmaN_series | rename to lemma_Lnnn with nnn = the L-id of: Lemma N series | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| WeightedNorm.lemmaN_T | rename to lemma_Lnnn with nnn = the L-id of: Lemma N, T form | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| QConstants.lemmaN | rename to lemma_Lnnn with nnn = the L-id of: Lemma N [A7_CDC, rectangular C] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| WGAlgebra.lemmaN | rename to lemma_Lnnn with nnn = the L-id of: Lemma N [WG_FULL] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| WGAlgebra.lemmaN_G1 | rename to lemma_Lnnn with nnn = the L-id of: Lemma N for G_1 | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| WGAlgebra.lemmaN_partial | rename to lemma_Lnnn with nnn = the L-id of: Lemma N partial | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| ComplexGaussian.lemmaD_core | rename to lemma_Lnnn with nnn = the L-id of: Lemma D [A8_POS] core | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| ComplexGaussian.lemmaS_form | rename to lemma_Lnnn with nnn = the L-id of: Lemma S [G3_N2] form | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| TheoremL.lemmaPexp_real | rename to lemma_Lnnn with nnn = the L-id of: Lemma P_exp | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| Tower.lemmaT_core | rename to lemma_Lnnn with nnn = the L-id of: Lemma T [H1_ANALYTIC] | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| NestEnvelope.nest_DPrime | rename to lemma_Lnnn with nnn = the L-id of: Lemma D′-nest | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| NestEnvelope.nest_DDoublePrime | rename to lemma_Lnnn with nnn = the L-id of: Lemma D″-nest | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| Divergence.P4_divergence | rename to lemma_Lnnn with nnn = the L-id of: premise P4, identity (D) | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| K1Prime.K1_numeric_13 | rename to lemma_Lnnn with nnn = the L-id of: (K1′) at L = 13 | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| Interp.K1_iff | rename to lemma_Lnnn with nnn = the L-id of: (K1) equivalence | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |
| Interp.K1_numeric | rename to lemma_Lnnn with nnn = the L-id of: (K1) numeric | docstring gains "L-nnn (name)"; old name kept as `@[deprecated] alias` for one round |

## 4. Collisions and ambiguities found, and how the scheme resolves them

Each item: the string, its meanings with locations, and the resolution.

1. B-numbers, three families on one string. Ledger rows B1–B22 (TRUST_LEDGER §2); canon lines B1–B33 plus 17 sub-lines (SOURCES_ORDER_CANON Part B, CanonOrder.lean); task ids B1–B135 (PLAN, INBOX, OPUS_QUEUE; e.g. "verifiers B24–B34", "pass B1–B33 (task 4)", "→ verifier B92"). Also local labels: SOURCES_HIGHER_M1 B1, B2.2, B3 (sections); SOURCES_F19_WGRATE_VERIFY items B2–B7; LEMMAS Claims B1–B3; the two-step bound (B2) and Theorem B2 of B2_TWOSTEP; journal volumes Nucl. Phys. B180, B190 (archive). Resolution: R-1nn, N-xxx, and T-0nnn have different letters; local labels stay qualified; journal volumes are external.
2. C-numbers. Ledger C1–C46; canon conditions C2, C3, C4 in B28–B29 (SOURCES_T2_IEPS_LF §7); (C1) of MA2 and (C1*) (= ledger C38); WC_FULL C1–C2 (the (C) condition for G and G_1); canon Part C fix list C-11b, C-11c; WG convention C0; Balaban's C_1–C_4 (CMP 116) and C_1 (CMP 119 (2.28), already noted in TRUST_LEDGER §6). Resolution: ledger → K-0nn; IEPS_LF (C1)–(C4) and WC C1–C2 go to the H- list or stay qualified; symbols untouched.
3. X-numbers. Ledger externals X1–X5 versus the A11 addendum cross-scale list X1–X10 (cited in canon B29a, B30 and ledger C42). Resolution: X-001–X-005 versus H-521–H-530.
4. R-numbers. CLOSURE_PLAN Table 1 R1–R46; canon resolutions R1–R7 (SOURCES_ORDER_CHECK, cited as "SOURCES_ORDER_CANON R1" in ledger C30); A10′ residues R1–R4; WC_FULL inputs R1–R4; HHOL_LF_SPRIME (R1)–(R4) and B15's (R1′); A23 R1/R3; IV routes (R1), (R2); R2_TELESCOPING and SOURCES_T2_R2REM ("R2" = the R_2 remainder); Balaban's operators R_1, R_2, R_3. Resolution: closure Table 1 → Q-0nn; R1′ → H- id; the rest stay qualified or are symbols.
5. O-numbers. SOURCES_FX obstacles O1–O4 (files SOURCES_FX_O1, SOURCES_FX_O23) versus A1_WALK_FULL O2 (= IN9 O2 = CLOSURE_PLAN I-02) versus U3 Theorems O5, O6 versus INFINITE_VOLUME_FABLE_VERIFY O1–O3. Resolution: FX O1–O4 → Q-301–Q-304; A1_WALK O2 → H-002 (alias of I-02); U3 Theorems O5, O6 → L-ids (M17); IV O-labels stay local.
6. L-numbers. INFINITE_VOLUME_FABLE lemmas L1–L17 versus THEOREM2_PROOF item L5 (the text of ledger B7: "L5: β_{k+1} … defined") versus the walk properties (L1)–(L2) (A1_WALK_FULL, WG_FULL) versus HTHR L3 and D3 (L0) versus lattice sizes in names (H2_CERTIFY_L13, h1cert_L11_j1.json, "L = 13"). Resolution: IV lemmas → L-301–L-317; (L1), (L2) → H-4nn (review); sizes are math.
7. S-numbers. A11_CONST S1–S16 (constant conditions) versus B4's (S1)–(S3) versus "the sourced chain S1" (ASSEMBLY, IV) versus "S1 fix pass" (TRUST_LEDGER change note) versus S2 (the form bound for G) and S2c versus the S123 file family. Resolution: A11 S1–S16 → H-501–H-516; B4's (S1)–(S3) → H-4nn (review); the S1 fix pass → its T- id; S2 (form) stays named by its file.
8. (S), one label, two rows: C17 (S): γ^{−2} ≥ c_sw·D′ (Theorem 2w (S)) and B21 (S): uniformity of the source bound. Resolution: K-017 and R-121; the alias table M15 records the split.
9. (H-hol), one label, two rows: B16 (small field) and B17 (large field). Resolution: R-116, R-117.
10. (M1), two meanings: the block-size choice M ≥ M_req ("(M1) became C24") and A16's property-list completeness (I-35, SOURCES_M1_SWEEP). Also the symbol M_1 (cube size), the file names SOURCES_HIGHER_M1 and SOURCES_M1_SWEEP, and Lemma M1 of the canon (A.4). Resolution: K-024 and H-035.
11. (F), two sides of one claim: X5 is the continuum log coefficient, B3 the lattice = continuum identity. Resolution: (F) → R-103; X-005 keeps the continuum citation.
12. T-strings. Targets T1, T2; the SOURCES_T2_* family (T2 = Theorem 2); CMP 119 (T1)–(T4) (external, also Lean ScaleChain T1–T4); Lemma T's threshold (T2) (ledger C44); Route B input (T1) (ledger B9); theorem-file tags T37-*, T39-*, T310-*; Theorem T37/T39/T310. Resolution: targets spelled out; CMP labels external; tags → H-7nn, Q-2nn, L-4nn, or aliases; T- now means task only, and only with four digits.
13. F-strings. PLAN fix passes F7–F23; PAPER_FIX_LOG items F1–F27 and reports/PAPER_AUDIT_CLOUD findings; WG_FULL and A1_WALK_FULL fix notes F1–F7 ("F7 band entry"); Lemmas F1, F2 (D3R) and F2′ (D3W8); (F1)–(F3) of CubeCount; canon sections F.1–F.5; (F) of B3. Resolution: PLAN fix passes → T-10nn; Lemmas F1, F2, F2′ → L-ids; the rest local.
14. I-strings. CLOSURE_PLAN readings I-01–I-56 versus (I1)–(I3) of B2 (PI) versus (I) of B12 versus A8 readings I-a–I-e versus IDEAS I1, I2 versus the grade tag [I] versus named readings (I-ε), (I-ord), (I-V0). Resolution: I-nn → H-0nn; the others → H-1nn/H-4nn; [I] stays a grade tag.
15. E-strings. Canon amendments E1–E8 versus the sourced Theorem 1 parts (E14-a)–(E14-g) versus E13 versus the symbol E_0. Resolution: E1–E8 local to the canon; E14-* → H-1nn.
16. Q-strings. A16 property list Q1–Q11 versus (Q) of G3 versus Lemma Q (A18_REGULAR) versus symbols Q, Q′, Q̃. Resolution: Q1–Q11 → H-541–H-551; the new Q- prefix needs three digits, so no clash.
17. N-strings. A5 reduction items N1–N8, Lemma N3, Theorem N1 versus N = number of scales versus the new N- prefix. Resolution: the N- prefix needs three digits; N1–N8 → H-4nn (review) or L-ids.
18. Lemma homonyms (47 names with two or more defining files). Worst: Lemma C (8 files: LEMMAS, A18_REGULAR, B21_S_PRIME, D4D5, MPT_STEPC, THM37 counting, U3_REPAIRS, WG_FULL), Lemma D (9), Lemma S (7), Lemma A (6), Lemma E (6), Lemma T (5: ASSEMBLY_N1, H1_ANALYTIC bounds, C_CONDITION cut-off, HTHR2, P253_P275), Lemma N (5, plus Lean `lemmaN` in both QConstants and WGAlgebra and `lemma_N` in WeightedNorm), Lemma G (5). "Theorem B" is the Route B theorem in BETA_FP_PW and also the paper's Target 2 theorem (thm:B). Resolution: one L-id per (name, defining file) in M17; a reviewer merges ids where one file only restates another (THEOREM2_PROOF v2/v3/v4 are already merged).
19. Lemma names that look like ledger ids: Lemma A1, Lemma A4, Prop. A0, Prop. A2 (U3_AW, unrelated to ledger A1, A4, A2); Theorem A3 (proves ledger A3); Lemma A17, Prop. A19; Lemma B4 (LEMMA_B4); Claims B1–B3 (LEMMAS); Theorem C1 and Prop. C1; Theorem B2 versus ledger B2 (PI). Also SOURCES_F19_WGRATE_VERIFY items A1, A2, A4–A6. Resolution: L-ids; no lemma name may reuse an id shape after the change.
20. Two ids for one object (aliases in the mapping): C-new-2 = C45 → K-045; NEW-3 = A27 content → Q-103 with a pointer to R-027; A1_WALK O2 = I-02 → H-002; the THM37/39/310 P-tags duplicate lemma names (T37-P2 = Lemma AG, T37-P9 = Theorem T37, …) → the lemma's L-id; T37-R1, T39-R1, T310-R4 = CMP 96 Lemma 2.1 = closure R5 → Q-005; T37-R2, T37-R3 = closure R4 → Q-004; T37-I3 = (G-M1) → its H-id.
21. One row, several statements: A10 and A10′ (Balaban's assertion and our replacement); A1 and A1w; C9 and C9′; (Cv1) and (Cv2) inside C43. Resolution: A10′ → R-029 and A1w → R-028 (new numbers); C9′ → K-047; (Cv1), (Cv2) are named parts of K-043 ("K-043 (Cv1)").
22. Symbol clashes (not ids, out of scope of the number change, listed because the task names one): Balaban's B_0 versus WG's common prefactor (renamed B_WG, SOURCES_ORDER_CANON G.2); ε_0^{102} versus ε_0^{109}; C_1 (canon B29) versus C_1^{102} versus C_1^{FX}; a_* versus a_*^{102}; κ versus κ_H; θ_K, θ_c, θ_S, θ_WG, θ_LF, θ_H; r (radius) versus r_0^{exp}. The canon F.2 and G.2 renames already resolve them; rule 6 keeps them out of the id pass.
23. Lean namespaces hide two collisions that prose does not: `QConstants.lemmaN` (A7_CDC rectangular C) versus `WGAlgebra.lemmaN` (WG Lemma N) versus `WeightedNorm.lemma_N` (A2_R2 Lemma N). Resolution: rename to the three different L-ids (M19).

## 5. Apply pass (estimate only; nothing applied)

### 5.1 Scope decision (needs the author, §6 item 1)

Option A, live files only (recommended). Rewrite the files that state current status: TRUST_LEDGER.md (tables and §4–§7; change notes stay), CLOSURE_PLAN.md (tables; the status addendum quotes PLAN and stays), SOURCES_ORDER_CANON.md (Part B and the new text; sections E–G are history), INDEX.md, paper/*.tex and paper/README.md, lean/YmLean/*.lean, lean/YmLean.lean, lean/README.md, lean/LEAN_CATALOGUE.md. That is 62 files with about 5,950 short-id hits, 861 named-result hits, and 2,506 parenthesized-label hits. Every other file is a frozen record (a write-out a verifier checked, a verify report, a dated PLAN/INBOX entry, a numerics script). Each frozen file gets one banner line: "Ids in this file are pre-2026-10-28; see IDS.md." Reason: changing ids inside a verified write-out changes the text the verifier read, and a wrong context decision there cannot be caught by re-reading the verifier report.

Option B, full rewrite. 482 of the 554 corpus files contain at least one candidate token (304 root .md, 66 numerics, 65 lean, 22 api_runs, 11 reports, 11 paper, 3 archive). Candidate hits: about 4,960 A-ids, 4,560 bare B1–B33, 2,560 C-ids, 1,460 R-ids, 300 X-ids, 260 F-ids, 3,150 S/L/Q/IN labels, 1,850 unambiguous long ids, 4,900 named results, and 14,500 parenthesized labels (most of these are math, not labels).

### 5.2 Mechanical method

1. Write IDS.md first: the registry. One line per new id: id, kind, short name, defining file, old ids (all aliases), status column. M1–M19 of this plan are its seed. The registry is the single definition site for H- and L- ids; R-, K-, X- are also defined in TRUST_LEDGER, N- in the canon, Q- in CLOSURE_PLAN, and the verifier checks the two agree.
2. Build one replacement table per file class from M1–M19. File classes: canon files (SOURCES_ORDER_CANON Part B, CanonOrder.lean: B-strings are canon lines); ledger and closure files (B1–B22 are ledger rows, R1–R46 are closure items); PLAN-style logs (B-numbers are tasks); paper; Lean.
3. Order the table longest match first: T310-R1 before T310-R; C-new-2 before C-new; A10′ before A10; A1w before A1; B10a before B10; B135 before B13 before B1; NEW-4 before NEW; (H-hist2) before (H-hist); (S′∞) before (S′) before (S).
4. Boundaries: the regex of the inventory (no letter, digit, `_`, `^`, `{`, `\`, `/`, `.`, `-` on the left; no letter, digit, `_`, `-` on the right). This leaves B_3, ε_1, SOURCES_A11_CONST, file paths, URLs, and journal volumes untouched.
5. Two phases. Phase 1 writes sentinels (⟦R-117⟧) so a new id is never re-matched by a later old pattern (B17 → R-117 must not then meet a rule for R1). Phase 2 removes the sentinels.
6. Skip zones: fenced code that quotes Balaban, quoted page text ("…"), lines that start with a change-log or change-note marker, and file names.
7. Paper: replace object labels and every \ref, \eqref, \cref to them in the same pass; keep sec:/app:/rem:/corr:.
8. Lean: rename constructors and declarations; keep `@[deprecated] alias` for the old declaration names one round; update every in-repo reference (grep lists 248 uses of id-named declarations in 52 files, most in .md).
9. Inverse check per file: apply the inverse map to the result and diff against the original. The diff must be empty outside the manual-review edits.

### 5.3 Manual review list (no mechanical replacement)

- Bare B1–B33 outside canon files: about 4,560 hits in 204 files (ledger row, canon line, or task by context). In Option A the live-file share is the work: ledger and closure tables are unambiguous by column; prose needs context.
- Bare C1–C46, X1–X10, R1–R46, F7–F23 outside their home tables; S1–S16, L1–L17, Q1–Q11, IN1–IN21 outside their home files.
- Single-letter labels: (C), (F), (D), (S), (U), (W), (Q), (I), (E), (G), (A), (K). Only (C) gets a new id (H-100); (F), (S), (U), (I) are row aliases (M15); the rest are math or file-local.
- Id-shaped parenthesized labels H-401–H-474 (e.g. (I3), (L1), (N2), (S1), (G1)): each was given one id at its most-cited file; the reviewer splits an id where two files use the label for different statements.
- The 47 homonym lemma names (M17 rows marked HOMONYM): merge or keep apart.
- Old ids inside quoted brief text and inside file names (rule 8).
- A0 (116 hits): the prefactor A_0 written without the underscore, not a ledger row; leave.

### 5.4 Cost estimate

Option A: 1 script run (mechanical, minutes), then about 4 review agents (ledger + closure, canon + CanonOrder, paper, Lean + catalogue) and 1 verifier; about 3–5 agent-hours. Option B: the same script, then about 12–15 review agents split by file group (FULL write-outs, SOURCES_* by letter, verify files, PLAN/INBOX, numerics comments) and 2 verifiers; about 20–30 agent-hours. The review time is in the bare B-, C-, and R-strings and the homonym lemmas, not in the script. Lean must build where it builds today (lake on the existing toolchain; per lean/README.md); the paper compiles with the existing main.tex.

### 5.5 Verifier checks (all mechanical, plus one sample read)

1. Every new id is defined once: exactly one registry line per id; for R-, K-, X-, N-, Q-, the id also appears exactly once as a table-row key in its home file, and the two agree.
2. Every reference resolves: every match of `\b[RKXNQHL]-\d{3}\b` or `\bT-\d{4}\b` in the corpus is in the registry.
3. No old id remains in a live file outside change-log or history lines: run the old-id regexes of §1 on the live set; zero hits except lines with a history marker and qualified local labels (e.g. "THM39_FULL_VERIFY V1"). In Option B, the same over all files.
4. Canon order: CanonOrder.lean `lake build` passes; `counts` = 50 lines, 167 edges; `canon_acyclic`, `canon_wf`, and the new `id_eq_rank` hold; no sorry; axioms unchanged (CanonOrder uses none).
5. Lean in general: `lake build` passes for all 45 files; every deprecated alias resolves; axioms are still propext, Classical.choice, Quot.sound.
6. Paper: main.tex compiles; the log has 0 "undefined" references and 0 multiply defined labels; every \label of kind thm/lem/prop/def matches `\{(thm|lem|prop|def|cor):[RKXNQHL]\d{3}\}` or is in the keep list.
7. Inverse-map diff (5.2 step 9) is empty outside the manual-review edits, and each manual edit is listed in a change log.
8. Sample: a verifier reads 60 random replacements (20 from bare B-strings, 20 from homonym lemmas, 20 from parenthesized labels) in context and confirms each target.

## 6. Open choices for the author

1. Live-only rewrite with frozen records and a banner (recommended), or a full rewrite of all 482 files.
2. Mnemonic blocks (B17 → R-117, C31 → K-031, I-35 → H-035, task B118 → T-0118), or contiguous numbering with no trace of the old number.
3. Canon step 10 (insertable; N-010 … N-500), or step 1 (N-001 … N-050).
4. File names: keep (recommended for this pass), or rename to drop embedded old ids (243 names, 6,390 references; VERIFY pairing must survive).
5. One prefix R- for old Groups A and B with the group as a column (recommended), or two prefixes.
6. Homonym lemmas: run a read pass to merge restatements before the apply pass, or apply one id per defining file now and merge later.
7. Lean: rename id-named declarations to lemma_Lnnn with deprecated aliases, or keep names and add the id in the docstring only.
8. Promotion threshold for local labels: promote only labels cited bare from another file (this plan), or give every numbered label an id.


## Applied 2026-10-28

Applied by Claude (Opus 5.5). Decisions taken by the author and the orchestrator: Option A (live files only); numbers assigned from scratch in logical order (no mnemonic blocks, so the "new" column of §3 above is provisional and superseded); file names unchanged; one R- prefix with the group (A/B) as a ledger column; canon step 10; Lean: CanonOrder constructors renamed, every other id-named declaration keeps its name and gains the id in its docstring (no deprecated aliases); homonym lemmas keep the provisional one-id-per-defining-file assignment and are listed in IDS.md under "To review"; only labels in the mapping got global ids. IDS.md is the authoritative registry; to map an id of §3 above to its final id, go through the old id (IDS.md column "old ids / aliases").

### What was done

1. IDS.md written: 1,058 ids (R 51, K 50, X 5, N 50, Q 62, H 338, L 350, T 152), one line each (new id | kind | short name | old ids / aliases | defining file §), grouped by family in numeric order; 10-line header with the scheme and the rule "frozen files use old ids; look them up here"; a "To review" section (232 rows: homonym lemma names, id-shaped labels) plus the occurrence policy. Order: R = ledger order (active group A rows with A1w after A1, then group B, then retired A9, A12, A20, A21, A22 as R-047–R-051); K = C1–C46 with C9′ after C9, then C-new-1, -3, -4 (C-new-2 = K-046); N = canon file order, step 10; Q = closure Table 1, then NEW-1–4, then theorem-file [R] tags, then FX O1–O4; H = Table 2 readings, (C), named labels, id-shaped labels, condition lists (A11_CONST S/X, A16 Q, (U-a)–(U-d), A1_WALK_FULL IN), theorem-file input tags; L = Theorem 2w, then the paper's results in paper order, then the rest; T = old B1–B34, then old B35–B135 and PLAN fix passes F7–F23 interleaved by first appearance in PLAN.md.
2. Live set rewritten (48 files): TRUST_LEDGER.md, CLOSURE_PLAN.md, SOURCES_ORDER_CANON.md, INDEX.md, paper/*.tex (9), paper/README.md, lean/README.md, lean/LEAN_CATALOGUE.md, lean/YmLean/*.lean (32 with changes; Lean code changed only in CanonOrder.lean). History zones left as written: TRUST_LEDGER header paragraphs and every "Change note" section; CLOSURE_PLAN Date/Status lines and the Status addendum; SOURCES_ORDER_CANON sections E–G; all of INBOX.md (every entry is dated). No "(= new id)" annotations were added to history lines (IDS.md covers them). PLAN.md and INBOX.md each gained one closing line: "From here on … uses the IDS.md scheme; earlier entries use old ids."
3. Method (scripts in /tmp/rn_apply/, not in the project): candidate finder with the inventory boundaries (extended so that LaTeX "--" ranges and LaTeX prime/subscript forms such as A10$'$, (H$_Q$), Lemma D$''$ match), longest match first, file-class scoping (canon file and CanonOrder: B = canon line; other live files: B1–B22 = ledger row; CLOSURE_PLAN: R1–R46 = closure item; elsewhere R-strings default to file-local), two-phase splice with sentinels so a new id is never re-matched, per-file inverse check (the original text is rebuilt exactly from each output by the inverse map; per-file diffs in /tmp/rn_apply/diffs/, inverse map /tmp/rn_apply/inverse_map.json). Replacement forms: short ids → the new id; parenthesized labels → "ID (label)"; named results → "ID (Lemma X)", or the id alone when the name itself is id-shaped (Theorem C1, Theorem A1-W, Prop. A15-N, …); bare T1/T2 → "Target 1"/"Target 2"; (T1)–(T4) of CMP 119 unchanged. TRUST_LEDGER tables gained the "group" column (A/B) and row R-002 moved under R-001; a row's own label after its id was not doubled ("| R-025 | B | (H2) …").
4. Banners: the first line "IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping." was inserted into 423 frozen files (corpus now 564 files; 478 carry candidate tokens; minus the live set, PLAN.md, and INBOX.md). In the 51 numerics/*.py files the banner is a "#" comment (after a shebang where present); the three checked compile. This file carries a longer banner that marks §3's new ids as provisional. Firewall files were neither read nor edited.
5. Lean: CanonOrder constructors renamed B1… → N010…N500 (440 code tokens); added `num`, `id_eq_rank : ∀ a : Line, num a = 10 * (rank a + 1)` (by cases + decide), and `edges_forward_num` (by decide). `counts` = 50 lines, 170 edges (docs said 135; updated in TRUST_LEDGER §7, lean/README.md, paper/remains.tex). Docstring ids added for the M19 declarations (most docstrings already carried the id after the comment pass; new tags on `lemma_DE`, `lemmaN_partial`, `P4_divergence`, `K1_numeric_13`); `ComplexGaussian.lemmaD_core`, `lemmaS_form` got no tag (their lemmas, A8_POS Lemma D and G3_N2 Lemma S, are not in the mapping). Whole project rebuilt under /tmp/ym_lake.lock: 8752 jobs, success, no sorry; CanonOrder.id_eq_rank, edges_forward_num, canon_acyclic depend on no axioms; every other #print axioms ⊆ {propext, Classical.choice, Quot.sound} (no proof was edited).
6. Paper: 47 object labels renamed to the env:Lnnn form (thm:A → thm:L002, lem:Dprime → lem:L004, def:HU → def:H116, …; sec:/app:/rem:/corr: unchanged); 455 \label/\ref occurrences rewritten. latexmk -pdf: 137 pages, 0 undefined references, 0 multiply defined labels, 0 errors. The \ThmPW macro keeps the printed name "Theorem B_PW".

### Counts

- Automated replacements: 6,960 (incl. 16 set-brace ids such as "{A5}"); manual edits after the script: 20 string fixes (Target (T1)/(T2) definitions, three "–g/–c/–b" sub-line ranges, "Theorems L-011/B2" ×2, 10 ids after "/", two ids in LaTeX quotes), 55 removed doubled row ids, 45 group cells, 440 Lean constructor tokens, 455 paper label/ref keys, 4 docstrings, 3 count updates, one INDEX line.
- Flagged for manual review: 2,809 occurrences (bare B/C/R/X/F/T strings, single-letter and id-shaped labels, homonym names, plural "Lemmas" lists). Each was read in context; 1,187 got an explicit decision (listed below: 504 → a specific id, 683 → keep as file-local/external); the rest kept the shown default after reading.
- Self-check (§5.5 items 1–3): 1,058 registry ids, 0 duplicates; 7,195 id references in the live files and PLAN/INBOX, all resolve except two provisional plan ids (H-401, H-474) quoted in a dated PLAN.md entry; ledger keys R/K/X (45 + 46 + 5) and canon keys (50, ascending, equal to the Lean order) and closure keys (Q 46, H 56) are each unique and registered (R-011 = A10′ lives inside row R-010; R-047–R-051 are retired, §6). Old ids left in live files outside history zones: 0 unresolved; 790 tokens kept on purpose as file-local or external labels (R 184: WC_FULL R1–R4, A10′ R1–R4, canon resolutions R1–R7, A23 R1/R3; C 135: WC_FULL C1–C2, MA2 (C1)/(C2), HHOL (C1)–(C5), the class/condition C-lists, Route K (C1σ); L 104: THEOREM2_PROOF item L5, walk properties (L1)–(L2), L3 convention; B 101: the two-step bound (B2), Route B items B1–B8, HIGHER_M1 sections, CMP 116 §2 conditions B1–B23; S 70: S2 form bound, sourced chain S1, S1 fix pass, verify items; T 65: CMP 119 (T1)–(T4), Lemma T threshold (T2), Lean matrix T2; F 64: PAPER_FIX_LOG/A1_WALK/CubeCount F-items; O 38: A1_WALK O3/O4, U3 O5/O6; A 21: file shorthands "A11 §4", Route B item A6, T2_B7_CLAMP (A1)–(A4); Q 8: WC_RESIDUE Q5–Q7), plus id-shaped parenthesized labels used with a non-home meaning and plural "Lemmas …" lists.

### Left for the verifier

1. Sample check (§5.5 item 8) not done by me: 60 random replacements in context.
2. "To review" in IDS.md: merge candidates (Theorem K L-009/L-204; Theorem B_PW L-103 = L-088; Lemma G3 L-174/L-175; Lemma D′ L-004/L-145; Lemma D″ L-005/L-147/L-148; Prop. A15-N L-024/L-064; Theorem A1-W L-017/L-063) and the id-shaped labels whose other meanings stayed local ((I3), (I1), (K1)–(K3), (N1)–(N4), (H1), (G1), …); a split needs new ids.
3. The defining-file column for some L ids is the plan's guess (most-cited file); e.g. Lemma D′ is defined in LEMMA_DPRIME.md, registered under KAPPA_BOUNDED.
4. Plural lists ("Lemmas D, E", "Lemmas D′/D″", "Lemmas S, G, T") keep names without ids.
5. ~/git/yang_mills/README.md and the sync are the orchestrator's.
6. Paper prose now shows ids beside names ("R-025 (H2)", "L-005 (Lemma D″)", section titles included); a readability pass on the abstract and section titles is a decision for the author.

### Manual-review decisions (file:line in the pre-apply text, token → target)

- TRUST_LEDGER.md:23 `T1` → keep (file-local / external)
- TRUST_LEDGER.md:23 `(S)` → K-018
- TRUST_LEDGER.md:24 `T2` → keep (file-local / external)
- TRUST_LEDGER.md:24 `Theorem B` → L-003
- TRUST_LEDGER.md:35 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:35 `Lemma H` → L-182
- TRUST_LEDGER.md:35 `Lemma CT` → L-125
- TRUST_LEDGER.md:35 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:35 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:35 `Lemma T` → L-284
- TRUST_LEDGER.md:35 `Lemma T` → L-284
- TRUST_LEDGER.md:35 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:36 `F11` → T-0060
- TRUST_LEDGER.md:36 `F14` → T-0066
- TRUST_LEDGER.md:36 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:36 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:36 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:36 `Theorem L` → L-207
- TRUST_LEDGER.md:36 `Lemma S` → L-266
- TRUST_LEDGER.md:36 `O2` → H-002
- TRUST_LEDGER.md:37 `F13` → T-0062
- TRUST_LEDGER.md:37 `F12` → T-0061
- TRUST_LEDGER.md:37 `F14` → T-0066
- TRUST_LEDGER.md:37 `O2` → H-002
- TRUST_LEDGER.md:37 `O3` → keep (file-local / external)
- TRUST_LEDGER.md:37 `O4` → keep (file-local / external)
- TRUST_LEDGER.md:37 `F17` → T-0127
- TRUST_LEDGER.md:37 `O2` → H-002
- TRUST_LEDGER.md:37 `F18` → T-0128
- TRUST_LEDGER.md:37 `F21` → T-0141
- TRUST_LEDGER.md:37 `(H1)` → keep (file-local / external)
- TRUST_LEDGER.md:37 `B22` → N-370
- TRUST_LEDGER.md:37 `F22` → T-0144
- TRUST_LEDGER.md:37 `F20` → T-0140
- TRUST_LEDGER.md:37 `F20` → T-0140
- TRUST_LEDGER.md:37 `F23` → T-0149
- TRUST_LEDGER.md:37 `B15` → N-270
- TRUST_LEDGER.md:37 `F19` → T-0130
- TRUST_LEDGER.md:37 `F22` → T-0144
- TRUST_LEDGER.md:37 `(I1)` → keep (file-local / external)
- TRUST_LEDGER.md:39 `(H-hol)` → R-041
- TRUST_LEDGER.md:40 `B2` → keep (file-local / external)
- TRUST_LEDGER.md:40 `C3` → keep (file-local / external)
- TRUST_LEDGER.md:40 `C15` → keep (file-local / external)
- TRUST_LEDGER.md:41 `(H-hol)` → R-040/R-041
- TRUST_LEDGER.md:42 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:43 `Lemma P` → L-242
- TRUST_LEDGER.md:46 `(H-hol)` → R-040/R-041
- TRUST_LEDGER.md:48 `S3` → keep (file-local / external)
- TRUST_LEDGER.md:48 `S4` → keep (file-local / external)
- TRUST_LEDGER.md:48 `(U)` → keep (file-local / external)
- TRUST_LEDGER.md:49 `S6` → keep (file-local / external)
- TRUST_LEDGER.md:49 `Thm WC` → L-019
- TRUST_LEDGER.md:49 `Lemma C` → L-115
- TRUST_LEDGER.md:49 `(M1)` → H-035
- TRUST_LEDGER.md:49 `(M1)` → H-035
- TRUST_LEDGER.md:49 `(M1)` → H-035
- TRUST_LEDGER.md:49 `(M1)` → H-035
- TRUST_LEDGER.md:49 `(M1)` → H-035
- TRUST_LEDGER.md:49 `B8` → keep (file-local / external)
- TRUST_LEDGER.md:49 `(M1)` → H-035
- TRUST_LEDGER.md:51 `Lemma C` → L-109
- TRUST_LEDGER.md:51 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:54 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:54 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:55 `Lemma T` → L-286
- TRUST_LEDGER.md:57 `(M1)` → H-035
- TRUST_LEDGER.md:57 `(G3)` → keep (file-local / external)
- TRUST_LEDGER.md:57 `O2` → H-002
- TRUST_LEDGER.md:57 `O2` → H-002
- TRUST_LEDGER.md:67 `(F)` → keep (file-local / external)
- TRUST_LEDGER.md:75 `B2` → keep (file-local / external)
- TRUST_LEDGER.md:75 `Theorem K` → L-009
- TRUST_LEDGER.md:75 `(U)` → keep (file-local / external)
- TRUST_LEDGER.md:76 `(I3)` → keep (file-local / external)
- TRUST_LEDGER.md:76 `(I3)` → keep (file-local / external)
- TRUST_LEDGER.md:77 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:77 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:77 `S3` → keep (file-local / external)
- TRUST_LEDGER.md:78 `(I3)` → keep (file-local / external)
- TRUST_LEDGER.md:78 `(N2)` → keep (file-local / external)
- TRUST_LEDGER.md:81 `L5` → keep (file-local / external)
- TRUST_LEDGER.md:81 `Lemma D″` → L-005
- TRUST_LEDGER.md:81 `Lemma D′` → L-004
- TRUST_LEDGER.md:87 `Lemma H` → L-182
- TRUST_LEDGER.md:90 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:90 `C5` → keep (file-local / external)
- TRUST_LEDGER.md:91 `(H-hol)` → R-041
- TRUST_LEDGER.md:91 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:91 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:92 `(H-hol)` → R-040/R-041
- TRUST_LEDGER.md:94 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:94 `C5` → keep (file-local / external)
- TRUST_LEDGER.md:94 `L5` → keep (file-local / external)
- TRUST_LEDGER.md:95 `Lemma C` → L-111
- TRUST_LEDGER.md:95 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:95 `Lemma C` → L-111
- TRUST_LEDGER.md:95 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:95 `F9` → T-0039
- TRUST_LEDGER.md:95 `F9` → T-0039
- TRUST_LEDGER.md:95 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:95 `Lemma C` → L-111
- TRUST_LEDGER.md:96 `B7` → N-070
- TRUST_LEDGER.md:96 `B5` → N-060
- TRUST_LEDGER.md:98 `Theorem K` → L-009
- TRUST_LEDGER.md:98 `Lemma D″` → L-005
- TRUST_LEDGER.md:104 `Lemma T` → L-284
- TRUST_LEDGER.md:108 `L0` → keep (file-local / external)
- TRUST_LEDGER.md:108 `L3` → keep (file-local / external)
- TRUST_LEDGER.md:108 `(H-hol)` → R-041
- TRUST_LEDGER.md:112 `B1` → N-010
- TRUST_LEDGER.md:112 `S4` → keep (file-local / external)
- TRUST_LEDGER.md:113 `(H-hol)` → R-040/R-041
- TRUST_LEDGER.md:123 `S8` → keep (file-local / external)
- TRUST_LEDGER.md:124 `(S)` → K-018
- TRUST_LEDGER.md:124 `(S)` → K-018
- TRUST_LEDGER.md:131 `B18` → N-310
- TRUST_LEDGER.md:131 `B3` → keep (file-local / external)
- TRUST_LEDGER.md:131 `B15` → N-270
- TRUST_LEDGER.md:131 `B22` → N-370
- TRUST_LEDGER.md:134 `B1` → N-010
- TRUST_LEDGER.md:134 `B2` → N-020
- TRUST_LEDGER.md:135 `B3` → keep (file-local / external)
- TRUST_LEDGER.md:143 `Lemma S` → L-265
- TRUST_LEDGER.md:145 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:146 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:147 `B15` → N-270
- TRUST_LEDGER.md:147 `B18` → N-310
- TRUST_LEDGER.md:148 `B22` → N-370
- TRUST_LEDGER.md:148 `B5` → N-060
- TRUST_LEDGER.md:150 `O4` → keep (file-local / external)
- TRUST_LEDGER.md:150 `Lemma T` → L-284
- TRUST_LEDGER.md:150 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:151 `Lemma T` → L-284
- TRUST_LEDGER.md:151 `Lemma T` → L-284
- TRUST_LEDGER.md:151 `O2` → keep (file-local / external)
- TRUST_LEDGER.md:152 `L1` → keep (file-local / external)
- TRUST_LEDGER.md:152 `L2` → keep (file-local / external)
- TRUST_LEDGER.md:152 `A8` → keep (file-local / external)
- TRUST_LEDGER.md:162 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:162 `B2` → keep (file-local / external)
- TRUST_LEDGER.md:163 `B2` → keep (file-local / external)
- TRUST_LEDGER.md:163 `Theorem K` → L-009
- TRUST_LEDGER.md:163 `Theorem K` → L-009
- TRUST_LEDGER.md:164 `Theorem K` → L-009
- TRUST_LEDGER.md:164 `L5` → keep (file-local / external)
- TRUST_LEDGER.md:164 `Lemma D″` → L-005
- TRUST_LEDGER.md:164 `(S)` → K-018
- TRUST_LEDGER.md:164 `(K1)` → keep (file-local / external)
- TRUST_LEDGER.md:164 `(K2)` → keep (file-local / external)
- TRUST_LEDGER.md:164 `(K3)` → keep (file-local / external)
- TRUST_LEDGER.md:164 `Theorem K` → L-009
- TRUST_LEDGER.md:171 `X5` → X-005
- TRUST_LEDGER.md:172 `(H-hol)` → R-040/R-041
- TRUST_LEDGER.md:178 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:178 `C5` → keep (file-local / external)
- TRUST_LEDGER.md:179 `Lemma C` → L-111
- TRUST_LEDGER.md:179 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:181 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:181 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:181 `B1` → keep (file-local / external)
- TRUST_LEDGER.md:181 `B23` → keep (file-local / external)
- TRUST_LEDGER.md:182 `Lemma T` → L-285
- TRUST_LEDGER.md:183 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:183 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:183 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:183 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:183 `C5` → keep (file-local / external)
- TRUST_LEDGER.md:184 `Lemma CT` → L-125
- TRUST_LEDGER.md:184 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:184 `Lemma T` → L-284
- TRUST_LEDGER.md:184 `Lemma T` → L-284
- TRUST_LEDGER.md:184 `Lemma T` → L-284
- TRUST_LEDGER.md:184 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:184 `(H1)` → keep (file-local / external)
- TRUST_LEDGER.md:184 `(I1)` → keep (file-local / external)
- TRUST_LEDGER.md:184 `C1` → keep (file-local / external)
- TRUST_LEDGER.md:184 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:184 `O2` → H-002
- TRUST_LEDGER.md:184 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:188 `X3` → X-003
- TRUST_LEDGER.md:188 `X4` → X-004
- TRUST_LEDGER.md:188 `X5` → X-005
- TRUST_LEDGER.md:190 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:192 `(M1)` → H-035
- TRUST_LEDGER.md:192 `C2` → keep (file-local / external)
- TRUST_LEDGER.md:195 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:201 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:201 `(N3)` → keep (file-local / external)
- TRUST_LEDGER.md:205 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:213 `X5` → X-005
- TRUST_LEDGER.md:214 `X2` → X-002
- TRUST_LEDGER.md:214 `X5` → X-005
- TRUST_LEDGER.md:220 `X5` → X-005
- TRUST_LEDGER.md:224 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:224 `X5` → X-005
- TRUST_LEDGER.md:224 `X5` → X-005
- TRUST_LEDGER.md:224 `X2` → X-002
- TRUST_LEDGER.md:224 `X5` → X-005
- TRUST_LEDGER.md:226 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:226 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:228 `X5` → X-005
- TRUST_LEDGER.md:229 `X2` → X-002
- TRUST_LEDGER.md:229 `X5` → X-005
- TRUST_LEDGER.md:237 `X5` → X-005
- TRUST_LEDGER.md:241 `Lemma T` → L-284
- TRUST_LEDGER.md:247 `X5` → X-005
- TRUST_LEDGER.md:251 `O2` → H-002
- TRUST_LEDGER.md:251 `(M1)` → H-035
- TRUST_LEDGER.md:256 `X5` → X-005
- TRUST_LEDGER.md:257 `X2` → X-002
- TRUST_LEDGER.md:260 `O2` → H-002
- TRUST_LEDGER.md:260 `(H1)` → keep (file-local / external)
- TRUST_LEDGER.md:260 `(I1)` → keep (file-local / external)
- TRUST_LEDGER.md:260 `(M1)` → H-035
- TRUST_LEDGER.md:269 `(S)` → keep (file-local / external)
- TRUST_LEDGER.md:276 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:276 `S1` → keep (file-local / external)
- TRUST_LEDGER.md:289 `S2` → keep (file-local / external)
- TRUST_LEDGER.md:292 `(I3)` → keep (file-local / external)
- TRUST_LEDGER.md:298 `Lemma CT` → L-125
- TRUST_LEDGER.md:299 `Lemma CT` → L-124
- TRUST_LEDGER.md:299 `(N4)` → keep (file-local / external)
- TRUST_LEDGER.md:299 `Lemma N` → L-228
- TRUST_LEDGER.md:300 `Lemma E` → L-153
- TRUST_LEDGER.md:304 `Lemma P` → L-242
- TRUST_LEDGER.md:307 `Lemma S` → keep (file-local / external)
- TRUST_LEDGER.md:308 `Lemma T` → L-283
- TRUST_LEDGER.md:309 `B2` → keep (file-local / external)
- TRUST_LEDGER.md:309 `B2` → keep (file-local / external)
- TRUST_LEDGER.md:311 `Theorem K` → L-009
- TRUST_LEDGER.md:312 `(N3)` → keep (file-local / external)
- TRUST_LEDGER.md:316 `Lemma C` → L-115
- TRUST_LEDGER.md:316 `Lemma P` → L-242
- TRUST_LEDGER.md:316 `Lemma D` → keep (file-local / external)
- TRUST_LEDGER.md:316 `Lemma S` → keep (file-local / external)
- CLOSURE_PLAN.md:9 `T2` → keep (file-local / external)
- CLOSURE_PLAN.md:9 `X5` → X-005
- CLOSURE_PLAN.md:9 `X2` → X-002
- CLOSURE_PLAN.md:9 `X4` → X-004
- CLOSURE_PLAN.md:14 `(C)` → keep (file-local / external)
- CLOSURE_PLAN.md:28 `(I1)` → keep (file-local / external)
- CLOSURE_PLAN.md:29 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:29 `R2` → keep (file-local / external)
- CLOSURE_PLAN.md:29 `R3` → keep (file-local / external)
- CLOSURE_PLAN.md:29 `R4` → keep (file-local / external)
- CLOSURE_PLAN.md:29 `C1` → keep (file-local / external)
- CLOSURE_PLAN.md:29 `C2` → keep (file-local / external)
- CLOSURE_PLAN.md:40 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:46 `R2` → keep (file-local / external)
- CLOSURE_PLAN.md:47 `Lemma CT` → L-125
- CLOSURE_PLAN.md:48 `(N1)` → keep (file-local / external)
- CLOSURE_PLAN.md:49 `(N1)` → keep (file-local / external)
- CLOSURE_PLAN.md:49 `Lemma CT` → L-125
- CLOSURE_PLAN.md:52 `R3` → keep (file-local / external)
- CLOSURE_PLAN.md:52 `C2` → keep (file-local / external)
- CLOSURE_PLAN.md:53 `R3` → keep (file-local / external)
- CLOSURE_PLAN.md:54 `Lemma C` → L-109
- CLOSURE_PLAN.md:58 `R5` → keep (file-local / external)
- CLOSURE_PLAN.md:66 `(U)` → keep (file-local / external)
- CLOSURE_PLAN.md:70 `R4` → keep (file-local / external)
- CLOSURE_PLAN.md:73 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:73 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:73 `R4` → keep (file-local / external)
- CLOSURE_PLAN.md:75 `R2` → keep (file-local / external)
- CLOSURE_PLAN.md:86 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:86 `R3` → keep (file-local / external)
- CLOSURE_PLAN.md:86 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:86 `R3` → keep (file-local / external)
- CLOSURE_PLAN.md:103 `O2` → H-002
- CLOSURE_PLAN.md:103 `C3` → keep (file-local / external)
- CLOSURE_PLAN.md:103 `O2` → H-002
- CLOSURE_PLAN.md:103 `O2` → H-002
- CLOSURE_PLAN.md:104 `Lemma C` → L-115
- CLOSURE_PLAN.md:105 `B9` → N-090
- CLOSURE_PLAN.md:112 `R2` → keep (file-local / external)
- CLOSURE_PLAN.md:113 `B22` → N-370
- CLOSURE_PLAN.md:114 `A3` → keep (file-local / external)
- CLOSURE_PLAN.md:116 `Lemma G` → keep (file-local / external)
- CLOSURE_PLAN.md:118 `C2` → keep (file-local / external)
- CLOSURE_PLAN.md:120 `R4` → keep (file-local / external)
- CLOSURE_PLAN.md:128 `L1` → keep (file-local / external)
- CLOSURE_PLAN.md:128 `L2` → keep (file-local / external)
- CLOSURE_PLAN.md:128 `L1` → keep (file-local / external)
- CLOSURE_PLAN.md:128 `L2` → keep (file-local / external)
- CLOSURE_PLAN.md:129 `(G1)` → keep (file-local / external)
- CLOSURE_PLAN.md:129 `(G3)` → keep (file-local / external)
- CLOSURE_PLAN.md:133 `B17` → N-290
- CLOSURE_PLAN.md:134 `R2` → keep (file-local / external)
- CLOSURE_PLAN.md:135 `R4` → keep (file-local / external)
- CLOSURE_PLAN.md:136 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:141 `(M1)` → H-035
- CLOSURE_PLAN.md:143 `(G3)` → keep (file-local / external)
- CLOSURE_PLAN.md:143 `O2` → H-002
- CLOSURE_PLAN.md:144 `B5` → N-060
- CLOSURE_PLAN.md:145 `C2` → keep (file-local / external)
- CLOSURE_PLAN.md:148 `C9` → keep (file-local / external)
- CLOSURE_PLAN.md:161 `Lemma T` → L-285
- CLOSURE_PLAN.md:176 `(S)` → keep (file-local / external)
- CLOSURE_PLAN.md:188 `(S)` → K-018
- CLOSURE_PLAN.md:217 `L1` → keep (file-local / external)
- CLOSURE_PLAN.md:217 `L2` → keep (file-local / external)
- CLOSURE_PLAN.md:228 `(H2)` → keep (file-local / external)
- CLOSURE_PLAN.md:228 `C1` → keep (file-local / external)
- CLOSURE_PLAN.md:232 `C2` → keep (file-local / external)
- CLOSURE_PLAN.md:240 `Lemma CT` → L-125
- CLOSURE_PLAN.md:240 `C1` → keep (file-local / external)
- CLOSURE_PLAN.md:240 `C2` → keep (file-local / external)
- CLOSURE_PLAN.md:240 `Lemma N` → L-226
- CLOSURE_PLAN.md:246 `Lemma CT` → L-125
- CLOSURE_PLAN.md:251 `S2` → keep (file-local / external)
- CLOSURE_PLAN.md:252 `S2` → keep (file-local / external)
- CLOSURE_PLAN.md:253 `R2` → keep (file-local / external)
- CLOSURE_PLAN.md:253 `R3` → keep (file-local / external)
- CLOSURE_PLAN.md:259 `B10` → N-180
- CLOSURE_PLAN.md:273 `R1` → keep (file-local / external)
- CLOSURE_PLAN.md:273 `R2` → keep (file-local / external)
- CLOSURE_PLAN.md:273 `R4` → keep (file-local / external)
- CLOSURE_PLAN.md:286 `(M1)` → H-035
- CLOSURE_PLAN.md:291 `R1` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:3 `(I1)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:5 `Q5` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:5 `Q7` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:5 `B3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:15 `(H3)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:42 `(H2)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:88 `(H2)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:88 `B3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:89 `(H3)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:93 `Theorem L` → L-208
- SOURCES_ORDER_CANON.md:98 `(S3)` → H-257
- SOURCES_ORDER_CANON.md:101 `B1` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:101 `B1` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:114 `(I1)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:118 `B7` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:122 `(G1)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:129 `(S4)` → H-258
- SOURCES_ORDER_CANON.md:130 `(G4)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:132 `B3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:132 `B3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:132 `B3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:139 `(H1)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:151 `C3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:151 `C2` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:152 `C4` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:152 `C2` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:155 `L1` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:155 `L2` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:157 `Lemma P` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:157 `S4` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:169 `(N1)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:170 `(N3)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:172 `(N5)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:172 `(N6)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:179 `(N1)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:182 `(H4)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:183 `(N3)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:183 `(N1)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:184 `(N4)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:197 `B3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:198 `(P13)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:204 `B3` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:208 `Q7` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:208 `(N3)` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:216 `Q5` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:216 `Q7` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:222 `A11` → keep (file-local / external)
- SOURCES_ORDER_CANON.md:222 `B3` → keep (file-local / external)
- INDEX.md:21 `Lemma D′` → L-004
- INDEX.md:22 `Lemma D′` → L-004
- INDEX.md:23 `Lemma D′` → L-004
- INDEX.md:47 `Theorem K` → L-009
- INDEX.md:49 `(U)` → keep (file-local / external)
- INDEX.md:50 `B2` → keep (file-local / external)
- INDEX.md:60 `Theorem K` → L-009
- INDEX.md:60 `B2` → keep (file-local / external)
- INDEX.md:60 `B2` → keep (file-local / external)
- INDEX.md:80 `(H-hol)` → R-040/R-041
- INDEX.md:86 `(H-hol)` → R-041
- INDEX.md:88 `B2` → keep (file-local / external)
- INDEX.md:110 `Lemma S` → L-267
- INDEX.md:165 `S2` → keep (file-local / external)
- INDEX.md:167 `S2` → keep (file-local / external)
- INDEX.md:213 `Lemma D′` → L-004
- INDEX.md:215 `Lemma H` → L-182
- INDEX.md:216 `Lemma D″` → L-005
- INDEX.md:220 `Theorem K` → L-009
- INDEX.md:232 `Lemma CT` → L-125
- INDEX.md:233 `(K3)` → keep (file-local / external)
- INDEX.md:249 `B2` → keep (file-local / external)
- paper/appendix.tex:3 `Theorem K` → L-009
- paper/appendix.tex:7 `Lemma D$'$` → L-004
- paper/appendix.tex:7 `Lemma D` → L-006
- paper/appendix.tex:7 `Lemma E` → L-007
- paper/appendix.tex:7 `Lemma D` → L-006
- paper/appendix.tex:8 `Lemma D$''$` → L-005
- paper/appendix.tex:8 `L5` → keep (file-local / external)
- paper/appendix.tex:30 `Lemma CT` → L-125
- paper/appendix.tex:31 `Theorem K` → L-009
- paper/appendix.tex:46 `Lemma D$'$` → L-004
- paper/appendix.tex:47 `Lemma D` → L-006
- paper/appendix.tex:47 `Lemma E` → L-007
- paper/appendix.tex:47 `Lemma D` → L-006
- paper/appendix.tex:47 `Lemma E` → L-007
- paper/appendix.tex:48 `Lemma D$''$` → L-005
- paper/appendix.tex:52 `Theorem K` → L-009
- paper/appendix.tex:54 `C1` → keep (file-local / external)
- paper/appendix.tex:54 `B2` → keep (file-local / external)
- paper/appendix.tex:56 `(U)` → keep (file-local / external)
- paper/appendix.tex:57 `Theorem A3` → L-071
- paper/appendix.tex:63 `S2` → keep (file-local / external)
- paper/appendix.tex:63 `(I3)` → keep (file-local / external)
- paper/appendix.tex:65 `(I3)` → keep (file-local / external)
- paper/appendix.tex:66 `Theorem LOC` → L-026
- paper/appendix.tex:67 `L5` → keep (file-local / external)
- paper/appendix.tex:67 `C1` → keep (file-local / external)
- paper/appendix.tex:69 `Lemma T` → L-284
- paper/appendix.tex:75 `(M1)` → H-035
- paper/appendix.tex:75 `F18` → T-0128
- paper/appendix.tex:76 `(U)` → keep (file-local / external)
- paper/appendix.tex:76 `C1` → keep (file-local / external)
- paper/appendix.tex:77 `(S)` → K-018
- paper/appendix.tex:78 `L5` → keep (file-local / external)
- paper/appendix.tex:98 `(H-hol)` → R-040/R-041
- paper/appendix.tex:102 `Lemma CT` → L-125
- paper/appendix.tex:102 `S2` → keep (file-local / external)
- paper/appendix.tex:102 `(I3)` → keep (file-local / external)
- paper/appendix.tex:115 `B2` → keep (file-local / external)
- paper/appendix.tex:120 `B2` → keep (file-local / external)
- paper/appendix.tex:120 `O3` → keep (file-local / external)
- paper/appendix.tex:120 `O4` → keep (file-local / external)
- paper/appendix.tex:120 `(I3)` → keep (file-local / external)
- paper/appendix.tex:120 `L5` → keep (file-local / external)
- paper/appendix.tex:135 `Lemma D$'$` → L-004
- paper/appendix.tex:162 `Lemma D$'$` → L-004
- paper/appendix.tex:164 `Lemma D$''$` → L-005
- paper/appendix.tex:168 `Theorem K` → L-009
- paper/appendix.tex:177 `(G1)` → keep (file-local / external)
- paper/appendix.tex:177 `(G3)` → keep (file-local / external)
- paper/appendix.tex:179 `B1` → keep (file-local / external)
- paper/appendix.tex:179 `B8` → keep (file-local / external)
- paper/appendix.tex:186 `Theorem LOC` → L-026
- paper/appendix.tex:202 `Theorem A` → L-060
- paper/appendix.tex:202 `Lemma C` → L-112
- paper/appendix.tex:202 `Theorem B` → L-090
- paper/appendix.tex:221 `L5` → keep (file-local / external)
- paper/appendix.tex:280 `L5` → keep (file-local / external)
- paper/appendix.tex:280 `Lemma D$''$` → L-005
- paper/appendix.tex:280 `B2` → keep (file-local / external)
- paper/appendix.tex:280 `(U)` → keep (file-local / external)
- paper/appendix.tex:281 `Lemma D$''$` → L-005
- paper/appendix.tex:281 `B2` → keep (file-local / external)
- paper/appendix.tex:281 `C1` → L-011
- paper/appendix.tex:281 `B2` → L-012
- paper/appendix.tex:281 `B2` → keep (file-local / external)
- paper/appendix.tex:282 `(U)` → keep (file-local / external)
- paper/appendix.tex:287 `Lemma D` → keep (file-local / external)
- paper/appendix.tex:287 `(I3)` → keep (file-local / external)
- paper/appendix.tex:287 `X5` → X-005
- paper/appendix.tex:287 `X5` → X-005
- paper/appendix.tex:288 `Theorem LOC` → L-026
- paper/appendix.tex:289 `(N2)` → keep (file-local / external)
- paper/appendix.tex:289 `L5` → keep (file-local / external)
- paper/appendix.tex:290 `S1` → keep (file-local / external)
- paper/appendix.tex:291 `Lemma T` → L-284
- paper/appendix.tex:291 `(M1)` → H-035
- paper/assembly.tex:40 `(U)` → keep (file-local / external)
- paper/assembly.tex:57 `Theorem K` → L-009
- paper/assembly.tex:57 `Lemma D$''$` → L-005
- paper/assembly.tex:57 `L5` → keep (file-local / external)
- paper/assembly.tex:57 `L5` → keep (file-local / external)
- paper/assembly.tex:57 `(U)` → keep (file-local / external)
- paper/assembly.tex:57 `Lemma D$'$` → L-004
- paper/assembly.tex:57 `Lemma D$''$` → L-005
- paper/assembly.tex:59 `L5` → keep (file-local / external)
- paper/assembly.tex:62 `C1` → keep (file-local / external)
- paper/assembly.tex:156 `(S)` → K-018
- paper/assembly.tex:156 `Theorem K` → L-009
- paper/assembly.tex:156 `Lemma D$''$` → L-005
- paper/assembly.tex:156 `L5` → keep (file-local / external)
- paper/assembly.tex:158 `(S)` → K-018
- paper/assembly.tex:162 `Theorem K` → L-009
- paper/assembly.tex:163 `Theorem K` → L-009
- paper/assembly.tex:163 `B2` → keep (file-local / external)
- paper/assembly.tex:163 `B2` → keep (file-local / external)
- paper/assembly.tex:164 `Lemma G` → L-169
- paper/assembly.tex:166 `B8` → keep (file-local / external)
- paper/assembly.tex:166 `(U)` → keep (file-local / external)
- paper/assembly.tex:167 `B2` → keep (file-local / external)
- paper/assembly.tex:168 `C1` → keep (file-local / external)
- paper/assembly.tex:168 `B2` → keep (file-local / external)
- paper/assembly.tex:169 `C1` → keep (file-local / external)
- paper/assembly.tex:169 `B2` → keep (file-local / external)
- paper/assembly.tex:169 `C1` → keep (file-local / external)
- paper/assembly.tex:170 `B2` → keep (file-local / external)
- paper/assembly.tex:176 `(I3)` → keep (file-local / external)
- paper/assembly.tex:176 `(I3)` → keep (file-local / external)
- paper/assembly.tex:176 `(I3)` → keep (file-local / external)
- paper/assembly.tex:177 `C4` → keep (file-local / external)
- paper/assembly.tex:180 `L5` → keep (file-local / external)
- paper/assembly.tex:181 `(K1)` → keep (file-local / external)
- paper/assembly.tex:181 `(K2)` → keep (file-local / external)
- paper/assembly.tex:181 `(K3)` → keep (file-local / external)
- paper/assembly.tex:186 `B1` → keep (file-local / external)
- paper/assembly.tex:186 `(U)` → keep (file-local / external)
- paper/assembly.tex:187 `B1` → keep (file-local / external)
- paper/assembly.tex:187 `(U)` → keep (file-local / external)
- paper/assembly.tex:188 `B1` → keep (file-local / external)
- paper/assembly.tex:189 `B3` → keep (file-local / external)
- paper/assembly.tex:190 `B4` → keep (file-local / external)
- paper/assembly.tex:191 `B5` → keep (file-local / external)
- paper/assembly.tex:192 `B7` → keep (file-local / external)
- paper/assembly.tex:202 `Lemma CT` → L-125
- paper/assembly.tex:204 `(S)` → keep (file-local / external)
- paper/assembly.tex:205 `Lemma T` → L-285
- paper/assembly.tex:205 `L3` → keep (file-local / external)
- paper/assembly.tex:208 `(H-hol)` → R-040/R-041
- paper/assembly.tex:209 `(H-hol)` → R-040/R-041
- paper/assembly.tex:209 `(H-hol)` → R-040/R-041
- paper/assembly.tex:212 `(H-hol)` → R-041
- paper/assembly.tex:213 `C1` → keep (file-local / external)
- paper/assembly.tex:213 `C2` → keep (file-local / external)
- paper/assembly.tex:215 `B1` → keep (file-local / external)
- paper/assembly.tex:215 `B23` → keep (file-local / external)
- paper/assembly.tex:217 `Lemma C` → L-111
- paper/assembly.tex:217 `S1` → keep (file-local / external)
- paper/assembly.tex:218 `S1` → keep (file-local / external)
- paper/assembly.tex:218 `Lemma C` → L-111
- paper/assembly.tex:229 `L5` → keep (file-local / external)
- paper/assembly.tex:239 `C3` → keep (file-local / external)
- paper/assembly.tex:239 `C2` → keep (file-local / external)
- paper/intro.tex:24 `L5` → keep (file-local / external)
- paper/intro.tex:24 `(S)` → K-018
- paper/intro.tex:25 `L5` → keep (file-local / external)
- paper/intro.tex:27 `B1` → keep (file-local / external)
- paper/intro.tex:27 `B7` → keep (file-local / external)
- paper/intro.tex:29 `L5` → keep (file-local / external)
- paper/intro.tex:34 `(U)` → keep (file-local / external)
- paper/intro.tex:36 `L5` → keep (file-local / external)
- paper/intro.tex:78 `Lemma D$'$` → L-004
- paper/intro.tex:78 `Lemma D$''$` → L-005
- paper/intro.tex:79 `Theorem K` → L-009
- paper/main.tex:2 `T1` → keep (file-local / external)
- paper/main.tex:35 `Theorem B` → keep (file-local / external)
- paper/main.tex:36 `Theorem~B` → keep (file-local / external)
- paper/main.tex:46 `Theorem K` → L-009
- paper/main.tex:46 `(H-hol)` → R-040/R-041
- paper/numerics.tex:31 `(U)` → keep (file-local / external)
- paper/numerics.tex:47 `Theorem W` → L-308
- paper/numerics.tex:113 `Lemma T` → L-283
- paper/numerics.tex:119 `Lemma T` → L-283
- paper/numerics.tex:152 `(N1)` → keep (file-local / external)
- paper/numerics.tex:152 `(N2)` → keep (file-local / external)
- paper/numerics.tex:204 `Lemma T` → L-283
- paper/remains.tex:3 `B1` → keep (file-local / external)
- paper/remains.tex:3 `B8` → keep (file-local / external)
- paper/remains.tex:9 `C1` → keep (file-local / external)
- paper/remains.tex:9 `B2` → keep (file-local / external)
- paper/remains.tex:9 `(U)` → keep (file-local / external)
- paper/remains.tex:20 `B2` → keep (file-local / external)
- paper/remains.tex:20 `C1` → keep (file-local / external)
- paper/remains.tex:21 `(I3)` → keep (file-local / external)
- paper/remains.tex:23 `(I3)` → keep (file-local / external)
- paper/remains.tex:23 `(I3)` → keep (file-local / external)
- paper/remains.tex:23 `(I3)` → keep (file-local / external)
- paper/remains.tex:30 `Theorem A3` → L-071
- paper/remains.tex:35 `Lemma D$''$` → L-005
- paper/remains.tex:43 `L5` → keep (file-local / external)
- paper/remains.tex:43 `(S)` → K-018
- paper/remains.tex:43 `Lemma D$''$` → L-005
- paper/remains.tex:43 `Lemma D` → L-006
- paper/remains.tex:44 `(K1)` → keep (file-local / external)
- paper/remains.tex:44 `(K2)` → keep (file-local / external)
- paper/remains.tex:44 `(K3)` → keep (file-local / external)
- paper/remains.tex:44 `Theorem K` → L-009
- paper/remains.tex:57 `Lemma CT` → L-125
- paper/remains.tex:57 `S2` → keep (file-local / external)
- paper/remains.tex:57 `Lemma T` → L-284
- paper/remains.tex:57 `S2` → keep (file-local / external)
- paper/remains.tex:58 `O3` → keep (file-local / external)
- paper/remains.tex:58 `O4` → keep (file-local / external)
- paper/remains.tex:62 `Lemma N` → L-226
- paper/remains.tex:62 `C2` → keep (file-local / external)
- paper/remains.tex:62 `Lemma D` → keep (file-local / external)
- paper/remains.tex:66 `(M1)` → H-035
- paper/remains.tex:69 `L3` → keep (file-local / external)
- paper/remains.tex:70 `(H-hol)` → R-040/R-041
- paper/remains.tex:70 `(H-hol)` → R-040/R-041
- paper/remains.tex:70 `B1` → keep (file-local / external)
- paper/remains.tex:70 `B23` → keep (file-local / external)
- paper/remains.tex:73 `Lemma C` → L-111
- paper/remains.tex:73 `S1` → keep (file-local / external)
- paper/remains.tex:81 `Theorem B` → L-088
- paper/remains.tex:81 `(U)` → keep (file-local / external)
- paper/remains.tex:82 `Lemma D$''$` → L-005
- paper/remains.tex:97 `B1` → keep (file-local / external)
- paper/remains.tex:97 `B7` → keep (file-local / external)
- paper/remains.tex:97 `B8` → keep (file-local / external)
- paper/remains.tex:103 `Lemma CT` → L-125
- paper/remains.tex:103 `S2` → keep (file-local / external)
- paper/remains.tex:103 `Lemma T` → L-284
- paper/remains.tex:104 `O3` → keep (file-local / external)
- paper/remains.tex:104 `O4` → keep (file-local / external)
- paper/remains.tex:110 `C2` → keep (file-local / external)
- paper/remains.tex:111 `Lemma D` → keep (file-local / external)
- paper/remains.tex:117 `(M1)` → H-035
- paper/remains.tex:119 `Lemma C` → L-109
- paper/remains.tex:119 `C2` → keep (file-local / external)
- paper/remains.tex:130 `(F)` → keep (file-local / external)
- paper/remains.tex:137 `(I3)` → keep (file-local / external)
- paper/remains.tex:139 `(N2)` → keep (file-local / external)
- paper/remains.tex:142 `L5` → keep (file-local / external)
- paper/remains.tex:142 `Lemma D$''$` → L-005
- paper/remains.tex:151 `C1` → keep (file-local / external)
- paper/remains.tex:151 `C5` → keep (file-local / external)
- paper/remains.tex:152 `(H-hol)` → R-041
- paper/remains.tex:152 `C1` → keep (file-local / external)
- paper/remains.tex:152 `C2` → keep (file-local / external)
- paper/remains.tex:156 `Lemma C` → L-111
- paper/remains.tex:179 `(S)` → K-018
- paper/remains.tex:184 `Lemma D` → L-006
- paper/remains.tex:206 `Lemma T` → L-284
- paper/remains.tex:217 `X5` → X-005
- paper/remains.tex:219 `X2` → X-002
- paper/remains.tex:219 `X5` → X-005
- paper/remains.tex:220 `(M1)` → H-035
- paper/remains.tex:220 `(M1)` → H-035
- paper/remains.tex:229 `Lemma CT` → L-125
- paper/remains.tex:230 `Lemma CT` → L-124
- paper/remains.tex:230 `Lemma N` → L-228
- paper/remains.tex:230 `Lemma C` → L-115
- paper/remains.tex:231 `Lemma N` → L-225
- paper/remains.tex:231 `Lemma E` → L-153
- paper/remains.tex:231 `Lemma CP` → L-122
- paper/remains.tex:231 `Theorem L` → L-207
- paper/remains.tex:233 `Lemma N` → L-226
- paper/remains.tex:233 `Lemma P` → L-242
- paper/remains.tex:236 `Lemma S` → keep (file-local / external)
- paper/remains.tex:237 `Lemma T` → L-283
- paper/remains.tex:238 `B2` → keep (file-local / external)
- paper/remains.tex:241 `Theorem K` → L-009
- paper/remains.tex:242 `(N3)` → keep (file-local / external)
- paper/remains.tex:242 `Lemma H` → L-182
- paper/setup.tex:9 `Lemma D$''$` → L-005
- paper/setup.tex:9 `Lemma D$''$` → L-005
- paper/setup.tex:39 `C1` → keep (file-local / external)
- paper/setup.tex:54 `(G1)` → keep (file-local / external)
- paper/setup.tex:54 `(G3)` → keep (file-local / external)
- paper/setup.tex:54 `(G1)` → keep (file-local / external)
- paper/setup.tex:55 `(S)` → keep (file-local / external)
- paper/setup.tex:55 `(S)` → K-018
- paper/sources.tex:9 `(K1)` → keep (file-local / external)
- paper/sources.tex:11 `L5` → keep (file-local / external)
- paper/sources.tex:14 `(K1)` → keep (file-local / external)
- paper/sources.tex:14 `(K2)` → keep (file-local / external)
- paper/sources.tex:14 `(K3)` → keep (file-local / external)
- paper/sources.tex:14 `Theorem K` → L-009
- paper/sources.tex:15 `(K1)` → keep (file-local / external)
- paper/sources.tex:16 `(K2)` → keep (file-local / external)
- paper/sources.tex:17 `(K2)` → keep (file-local / external)
- paper/sources.tex:17 `L5` → keep (file-local / external)
- paper/sources.tex:17 `Theorem K` → L-009
- paper/sources.tex:17 `(K3)` → keep (file-local / external)
- paper/sources.tex:34 `(I3)` → keep (file-local / external)
- paper/sources.tex:35 `(I3)` → keep (file-local / external)
- paper/sources.tex:37 `(I3)` → keep (file-local / external)
- paper/sources.tex:38 `(I3)` → keep (file-local / external)
- paper/sources.tex:40 `(I3)` → keep (file-local / external)
- paper/sources.tex:51 `(D1)` → keep (file-local / external)
- paper/sources.tex:66 `Lemma A` → L-054
- paper/sources.tex:71 `(P1)` → keep (file-local / external)
- paper/sources.tex:71 `(P7)` → keep (file-local / external)
- paper/sources.tex:85 `C1` → keep (file-local / external)
- paper/sources.tex:85 `C5` → keep (file-local / external)
- paper/sources.tex:89 `Lemma C` → L-111
- paper/sources.tex:90 `Lemma C` → L-111
- paper/sources.tex:90 `Lemma C` → L-111
- paper/sources.tex:91 `S1` → keep (file-local / external)
- paper/sources.tex:108 `Lemma H` → L-182
- paper/sources.tex:114 `Lemma C` → L-111
- paper/sources.tex:114 `S1` → keep (file-local / external)
- paper/sources.tex:114 `Lemma C` → L-111
- paper/sources.tex:128 `(H-hol)` → R-040/R-041
- paper/sources.tex:131 `(H-hol)` → R-040/R-041
- paper/sources.tex:134 `Lemma E` → L-007
- paper/sources.tex:134 `Lemma E` → L-007
- paper/sources.tex:137 `Lemma D` → keep (file-local / external)
- paper/sources.tex:137 `C1` → keep (file-local / external)
- paper/sources.tex:137 `C5` → keep (file-local / external)
- paper/sources.tex:139 `(H-hol)` → R-041
- paper/sources.tex:140 `(H-hol)` → R-041
- paper/sources.tex:140 `(M1)` → K-025
- paper/sources.tex:144 `Lemma S` → L-268
- paper/sources.tex:146 `C1` → keep (file-local / external)
- paper/sources.tex:146 `C2` → keep (file-local / external)
- paper/sources.tex:152 `C1` → keep (file-local / external)
- paper/sources.tex:152 `C2` → keep (file-local / external)
- paper/sources.tex:152 `C3` → keep (file-local / external)
- paper/sources.tex:156 `L1` → keep (file-local / external)
- paper/sources.tex:156 `L24` → keep (file-local / external)
- paper/sources.tex:161 `B1` → keep (file-local / external)
- paper/sources.tex:161 `B23` → keep (file-local / external)
- paper/sources.tex:162 `(M2)` → keep (file-local / external)
- paper/sources.tex:163 `B1` → keep (file-local / external)
- paper/sources.tex:163 `B23` → keep (file-local / external)
- paper/sources.tex:174 `L1` → keep (file-local / external)
- paper/sources.tex:179 `C3` → keep (file-local / external)
- paper/sources.tex:190 `L3` → keep (file-local / external)
- paper/sources.tex:191 `Lemma S` → L-267
- paper/sources.tex:192 `Lemma S` → L-267
- paper/sources.tex:192 `(M5)` → keep (file-local / external)
- paper/sources.tex:193 `L3` → keep (file-local / external)
- paper/sources.tex:196 `Lemma T` → L-285
- paper/sources.tex:197 `Lemma T` → L-285
- paper/sources.tex:198 `Lemma T` → L-285
- paper/sources.tex:199 `L3` → keep (file-local / external)
- paper/sources.tex:205 `Lemma D` → L-133
- paper/sources.tex:209 `Fact A` → L-050
- paper/sources.tex:209 `C1` → keep (file-local / external)
- paper/sources.tex:209 `C5` → keep (file-local / external)
- paper/sources.tex:209 `Fact B` → L-082
- paper/sources.tex:211 `Fact A` → L-050
- paper/sources.tex:211 `Fact B` → L-082
- paper/sources.tex:211 `C1` → keep (file-local / external)
- paper/sources.tex:211 `C5` → keep (file-local / external)
- paper/sources.tex:246 `(S)` → keep (file-local / external)
- paper/sources.tex:248 `(S)` → keep (file-local / external)
- paper/sources.tex:254 `Lemma CT` → L-125
- paper/sources.tex:254 `Lemma CT` → L-125
- paper/sources.tex:254 `(S4)` → keep (file-local / external)
- paper/sources.tex:259 `Lemma CT` → L-125
- paper/sources.tex:260 `S2` → keep (file-local / external)
- paper/sources.tex:260 `S2` → keep (file-local / external)
- paper/sources.tex:262 `S2` → keep (file-local / external)
- paper/sources.tex:265 `S2` → keep (file-local / external)
- paper/sources.tex:269 `Theorem A1-W` → L-063
- paper/sources.tex:269 `Lemma CT` → L-125
- paper/sources.tex:269 `L1` → keep (file-local / external)
- paper/sources.tex:269 `O2` → H-002
- paper/sources.tex:269 `O3` → keep (file-local / external)
- paper/sources.tex:269 `O4` → keep (file-local / external)
- paper/sources.tex:269 `O4` → keep (file-local / external)
- paper/sources.tex:275 `O3` → keep (file-local / external)
- paper/sources.tex:275 `O4` → keep (file-local / external)
- paper/sources.tex:280 `Lemma N` → L-228
- paper/sources.tex:306 `L1` → keep (file-local / external)
- paper/sources.tex:306 `L2` → keep (file-local / external)
- paper/sources.tex:306 `B1` → keep (file-local / external)
- paper/sources.tex:306 `B2` → keep (file-local / external)
- paper/sources.tex:309 `L1` → keep (file-local / external)
- paper/sources.tex:309 `L2` → keep (file-local / external)
- paper/sources.tex:309 `(H2)` → keep (file-local / external)
- paper/sources.tex:309 `(H3)` → keep (file-local / external)
- paper/sources.tex:312 `O2` → H-002
- paper/sources.tex:317 `(G1)` → keep (file-local / external)
- paper/sources.tex:320 `Lemma N` → L-228
- paper/sources.tex:320 `Lemma C` → L-115
- paper/sources.tex:320 `L1` → keep (file-local / external)
- paper/sources.tex:321 `(G1)` → keep (file-local / external)
- paper/sources.tex:327 `L1` → keep (file-local / external)
- paper/sources.tex:327 `L2` → keep (file-local / external)
- paper/sources.tex:332 `Lemma E` → L-153
- paper/sources.tex:348 `C2` → keep (file-local / external)
- paper/sources.tex:349 `Theorem L` → L-208
- paper/sources.tex:355 `Lemma D` → keep (file-local / external)
- paper/sources.tex:356 `Lemma P` → L-242
- paper/sources.tex:360 `Lemma D` → keep (file-local / external)
- paper/sources.tex:385 `L2` → keep (file-local / external)
- paper/sources.tex:396 `Theorem L` → L-207
- paper/sources.tex:417 `(U)` → keep (file-local / external)
- paper/sources.tex:418 `Lemma G` → L-167
- paper/sources.tex:418 `(U)` → keep (file-local / external)
- paper/sources.tex:426 `L2` → keep (file-local / external)
- paper/sources.tex:448 `(I3)` → keep (file-local / external)
- paper/sources.tex:452 `L5` → keep (file-local / external)
- paper/sources.tex:460 `Lemma A` → L-056
- paper/sources.tex:460 `(N2)` → keep (file-local / external)
- paper/sources.tex:461 `(I3)` → keep (file-local / external)
- paper/sources.tex:462 `Lemma A` → L-056
- paper/sources.tex:462 `(N2)` → keep (file-local / external)
- paper/sources.tex:466 `L5` → keep (file-local / external)
- paper/sources.tex:487 `Lemma C` → L-109
- paper/sources.tex:489 `Lemma C` → L-109
- paper/sources.tex:490 `C2` → keep (file-local / external)
- paper/sources.tex:505 `Lemma C` → L-115
- paper/sources.tex:505 `(M1)` → H-035
- paper/sources.tex:508 `C1` → keep (file-local / external)
- paper/sources.tex:508 `C2` → keep (file-local / external)
- paper/sources.tex:512 `B5` → N-060
- paper/sources.tex:512 `B7` → N-070
- paper/sources.tex:527 `(H-hol)` → R-041
- paper/sources.tex:530 `C3` → keep (file-local / external)
- paper/sources.tex:535 `C1` → keep (file-local / external)
- paper/sources.tex:535 `C4` → keep (file-local / external)
- paper/sources.tex:538 `L5` → keep (file-local / external)
- paper/sources.tex:542 `Lemma C` → L-111
- paper/sources.tex:542 `S1` → keep (file-local / external)
- paper/sources.tex:542 `S1` → keep (file-local / external)
- paper/sources.tex:545 `S1` → keep (file-local / external)
- paper/sources.tex:562 `S2` → keep (file-local / external)
- paper/sources.tex:562 `Lemma T` → L-284
- paper/sources.tex:563 `Lemma T` → L-284
- paper/sources.tex:573 `S1` → keep (file-local / external)
- paper/sources.tex:585 `Theorem A` → L-060
- paper/sources.tex:585 `Lemma C` → L-112
- paper/sources.tex:597 `Lemma C$'$` → L-127
- paper/sources.tex:597 `S1` → keep (file-local / external)
- paper/sources.tex:598 `Lemma C` → L-111
- paper/sources.tex:599 `S1` → keep (file-local / external)
- paper/sources.tex:601 `L1` → keep (file-local / external)
- paper/sources.tex:601 `L2` → keep (file-local / external)
- paper/sources.tex:603 `(M1)` → H-035
- paper/sources.tex:603 `(M1)` → H-035
- paper/sources.tex:603 `(M1)` → H-035
- paper/sources.tex:617 `F17` → T-0127
- paper/sources.tex:622 `F18` → T-0128
- paper/theorem2.tex:3 `(S)` → K-018
- paper/theorem2.tex:24 `(S)` → K-018
- paper/theorem2.tex:35 `(S)` → K-018
- paper/theorem2.tex:40 `B2` → keep (file-local / external)
- paper/theorem2.tex:40 `Theorem K` → L-009
- paper/theorem2.tex:40 `Lemma D$''$` → L-005
- paper/theorem2.tex:40 `B2` → keep (file-local / external)
- paper/theorem2.tex:40 `Lemma D$''$` → L-005
- paper/theorem2.tex:40 `(U)` → keep (file-local / external)
- paper/theorem2.tex:40 `(U)` → keep (file-local / external)
- paper/theorem2.tex:40 `(U)` → keep (file-local / external)
- paper/theorem2.tex:40 `L5` → keep (file-local / external)
- paper/theorem2.tex:50 `L1` → keep (file-local / external)
- paper/theorem2.tex:50 `Theorem K` → L-009
- paper/theorem2.tex:51 `L2` → keep (file-local / external)
- paper/theorem2.tex:51 `Lemma D$'$` → L-004
- paper/theorem2.tex:52 `(S)` → K-018
- paper/theorem2.tex:53 `L2` → keep (file-local / external)
- paper/theorem2.tex:58 `L5` → keep (file-local / external)
- paper/theorem2.tex:60 `Lemma D$'$` → L-004
- paper/theorem2.tex:65 `Lemma D$'$` → L-004
- paper/theorem2.tex:79 `L5` → keep (file-local / external)
- paper/theorem2.tex:87 `Lemma D$''$` → L-005
- paper/theorem2.tex:92 `Lemma D$''$` → L-005
- paper/theorem2.tex:108 `Lemma D$'$` → L-004
- paper/theorem2.tex:108 `L5` → keep (file-local / external)
- paper/theorem2.tex:110 `L5` → keep (file-local / external)
- paper/theorem2.tex:114 `Lemma D$''$` → L-005
- paper/theorem2.tex:119 `(S)` → K-018
- paper/theorem2.tex:141 `Lemma E` → L-007
- paper/theorem2.tex:146 `L5` → keep (file-local / external)
- paper/theorem2.tex:150 `Lemma D$'$` → L-004
- paper/theorem2.tex:153 `(S)` → K-018
- paper/theorem2.tex:155 `Lemma D$''$` → L-005
- paper/theorem2.tex:155 `(S)` → K-018
- paper/theorem2.tex:155 `Lemma D` → L-006
- paper/theorem2.tex:155 `Lemma D$''$` → L-005
- paper/theorem2.tex:161 `Theorem K` → L-009
- paper/theorem2.tex:203 `Theorem K` → L-009
- paper/theorem2.tex:211 `Theorem W` → L-308
- paper/theorem2.tex:212 `Theorem A3` → L-071
- paper/theorem2.tex:214 `Lemma M` → L-219
- paper/theorem2.tex:221 `Lemma D$''$` → L-005
- paper/theorem2.tex:221 `L5` → keep (file-local / external)
- paper/theorem2.tex:223 `Theorem K` → L-009
- paper/theorem2.tex:223 `B2` → keep (file-local / external)
- paper/theorem2.tex:227 `Theorem K` → L-009
- paper/theorem2.tex:228 `B2` → keep (file-local / external)
- paper/theorem2.tex:228 `B2` → keep (file-local / external)
- paper/theorem2.tex:228 `Theorem K` → L-009
- paper/theorem2.tex:228 `Lemma D$''$` → L-005
- paper/theorem2.tex:234 `Theorem A3` → L-071
- paper/theorem2.tex:235 `Lemma M` → L-219
- paper/theorem2.tex:235 `Theorem A3` → L-071
- paper/theorem2.tex:235 `Theorem W` → L-308
- paper/theorem2.tex:235 `B2` → keep (file-local / external)
- paper/theorem2.tex:235 `B2` → keep (file-local / external)
- paper/theorem2.tex:236 `Lemma M` → L-219
- paper/theorem2.tex:236 `Theorem W` → L-308
- paper/theorem2.tex:248 `L5` → keep (file-local / external)
- paper/theorem2.tex:253 `(U)` → keep (file-local / external)
- paper/theorem2.tex:258 `(U)` → keep (file-local / external)
- paper/theorem2.tex:265 `(U)` → keep (file-local / external)
- paper/theorem2.tex:278 `(U)` → keep (file-local / external)
- paper/theorem2.tex:278 `C1` → keep (file-local / external)
- paper/theorem2.tex:284 `(U)` → keep (file-local / external)
- paper/theorem2.tex:284 `Theorem A3` → L-071
- paper/theorem2.tex:287 `Lemma D$''$` → L-005
- paper/theorem2.tex:289 `L5` → keep (file-local / external)
- paper/theorem2.tex:295 `B2` → keep (file-local / external)
- paper/theorem2.tex:295 `(U)` → keep (file-local / external)
- paper/theorem2.tex:295 `(U)` → keep (file-local / external)
- paper/theorem2.tex:298 `Theorem A3` → L-071
- paper/theorem2.tex:300 `L5` → keep (file-local / external)
- paper/theorem2.tex:302 `L5` → keep (file-local / external)
- paper/theorem2.tex:302 `B2` → keep (file-local / external)
- paper/theorem2.tex:302 `(U)` → keep (file-local / external)
- paper/theorem2.tex:302 `C1` → keep (file-local / external)
- paper/theorem2.tex:302 `B2` → keep (file-local / external)
- paper/theorem2.tex:302 `(U)` → keep (file-local / external)
- paper/theorem2.tex:304 `B2` → keep (file-local / external)
- paper/theorem2.tex:308 `B2` → keep (file-local / external)
- paper/theorem2.tex:314 `Theorem A3` → L-071
- paper/theorem2.tex:315 `B2` → keep (file-local / external)
- paper/theorem2.tex:316 `C1` → keep (file-local / external)
- paper/theorem2.tex:316 `B2` → keep (file-local / external)
- paper/theorem2.tex:316 `Theorem A3` → L-071
- paper/theorem2.tex:316 `C1` → keep (file-local / external)
- paper/theorem2.tex:317 `Theorem A3` → L-071
- paper/theorem2.tex:333 `C1` → keep (file-local / external)
- paper/theorem2.tex:336 `B2` → keep (file-local / external)
- paper/theorem2.tex:338 `C1` → keep (file-local / external)
- paper/theorem2.tex:343 `B2` → keep (file-local / external)
- paper/theorem2.tex:344 `(G3)` → keep (file-local / external)
- paper/theorem2.tex:345 `B2` → keep (file-local / external)
- paper/theorem2.tex:356 `C1` → keep (file-local / external)
- paper/theorem2.tex:356 `B2` → keep (file-local / external)
- paper/theorem2.tex:357 `(U)` → keep (file-local / external)
- paper/theorem2.tex:359 `C1` → keep (file-local / external)
- paper/theorem2.tex:359 `B2` → keep (file-local / external)
- paper/theorem2.tex:359 `B2` → keep (file-local / external)
- paper/theorem2.tex:359 `B2` → keep (file-local / external)
- paper/theorem2.tex:366 `B2` → keep (file-local / external)
- paper/theorem2.tex:366 `L5` → keep (file-local / external)
- paper/theorem2.tex:366 `Theorem K` → L-009
- paper/theorem2.tex:366 `Lemma D$''$` → L-005
- paper/theorem2.tex:368 `(U)` → keep (file-local / external)
- paper/theorem2.tex:368 `L5` → keep (file-local / external)
- paper/theorem2.tex:368 `Lemma D$''$` → L-005
- paper/theorem2.tex:368 `L5` → keep (file-local / external)
- paper/theorem2.tex:370 `B2` → keep (file-local / external)
- paper/theorem2.tex:370 `C1` → L-011
- paper/theorem2.tex:370 `B2` → L-012
- paper/theorem2.tex:370 `(U)` → keep (file-local / external)
- paper/theorem2.tex:372 `(S)` → K-018
- paper/theorem2.tex:372 `L5` → keep (file-local / external)
- paper/theorem2.tex:372 `L5` → keep (file-local / external)
- paper/theorem2.tex:373 `X5` → X-005
- paper/theorem2.tex:379 `L1` → keep (file-local / external)
- paper/theorem2.tex:379 `L2` → keep (file-local / external)
- paper/theorem2.tex:382 `(S)` → K-018
- paper/theorem2.tex:388 `Lemma D$'$` → L-004
- paper/theorem2.tex:388 `L2` → keep (file-local / external)
- paper/theorem2.tex:388 `B2` → keep (file-local / external)
- paper/theorem2.tex:404 `Theorem K` → L-009
- paper/theorem2.tex:404 `(U)` → keep (file-local / external)
- paper/theorem2.tex:409 `L2` → keep (file-local / external)
- paper/README.md:14 `B2` → keep (file-local / external)
- paper/README.md:18 `B1` → keep (file-local / external)
- paper/README.md:18 `B8` → keep (file-local / external)
- paper/README.md:22 `Theorem K` → L-009
- paper/README.md:24 `Theorem B_PW` → L-088
- paper/README.md:24 `Theorem B` → L-003
- paper/README.md:24 `(G1)` → keep (file-local / external)
- paper/README.md:24 `(G3)` → keep (file-local / external)
- paper/README.md:24 `(S)` → keep (file-local / external)
- paper/README.md:32 `L5` → keep (file-local / external)
- lean/README.md:18 `C2` → keep (file-local / external)
- lean/README.md:27 `(K3)` → keep (file-local / external)
- lean/README.md:28 `(N1)` → keep (file-local / external)
- lean/README.md:34 `(N1)` → keep (file-local / external)
- lean/README.md:36 `Q5` → keep (file-local / external)
- lean/README.md:36 `Q6` → keep (file-local / external)
- lean/README.md:45 `Lemma E` → L-153
- lean/README.md:92 `(P1)` → keep (file-local / external)
- lean/README.md:92 `(P3)` → keep (file-local / external)
- lean/README.md:103 `L5` → keep (file-local / external)
- lean/README.md:111 `Lemma D′` → L-004
- lean/README.md:150 `Lemma D″` → L-005
- lean/README.md:152 `Lemma D′` → L-004
- lean/README.md:156 `Lemma D′` → L-004
- lean/README.md:169 `L5` → keep (file-local / external)
- lean/README.md:179 `Theorem K` → L-009
- lean/README.md:187 `C1` → L-011
- lean/README.md:187 `B2` → L-012
- lean/README.md:235 `C2` → keep (file-local / external)
- lean/README.md:258 `(I1)` → keep (file-local / external)
- lean/README.md:261 `(I1)` → keep (file-local / external)
- lean/README.md:262 `Lemma T` → L-283
- lean/README.md:263 `Lemma T` → L-283
- lean/README.md:271 `(K3)` → keep (file-local / external)
- lean/README.md:277 `(K1)` → keep (file-local / external)
- lean/README.md:277 `(K2)` → keep (file-local / external)
- lean/README.md:279 `(N1)` → keep (file-local / external)
- lean/README.md:294 `A1` → keep (file-local / external)
- lean/README.md:315 `(N1)` → keep (file-local / external)
- lean/README.md:320 `(N2)` → keep (file-local / external)
- lean/README.md:320 `(N4)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:10 `Lemma N` → L-225
- lean/LEAN_CATALOGUE.md:10 `Lemma E` → L-153
- lean/LEAN_CATALOGUE.md:10 `Lemma CP` → L-122
- lean/LEAN_CATALOGUE.md:13 `Lemma T` → L-283
- lean/LEAN_CATALOGUE.md:14 `L5` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:14 `Lemma H` → L-182
- lean/LEAN_CATALOGUE.md:14 `Lemma N` → L-225
- lean/LEAN_CATALOGUE.md:14 `(N2)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:14 `(N4)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:14 `A1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:14 `Lemma T` → L-283
- lean/LEAN_CATALOGUE.md:22 `(N1)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:22 `(N2)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:22 `(N4)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:22 `(N2)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:26 `B2` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:34 `O2` → H-002
- lean/LEAN_CATALOGUE.md:39 `(H2)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:49 `Lemma C` → L-115
- lean/LEAN_CATALOGUE.md:50 `A1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:53 `(I1)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:57 `Lemma E` → L-153
- lean/LEAN_CATALOGUE.md:59 `Lemma E` → L-153
- lean/LEAN_CATALOGUE.md:62 `Lemma G` → L-170
- lean/LEAN_CATALOGUE.md:63 `Lemma G` → L-170
- lean/LEAN_CATALOGUE.md:65 `Lemma E` → L-153
- lean/LEAN_CATALOGUE.md:66 `Lemma P_exp` → L-248
- lean/LEAN_CATALOGUE.md:66 `Theorem L` → L-208
- lean/LEAN_CATALOGUE.md:66 `Theorem WC` → L-019
- lean/LEAN_CATALOGUE.md:75 `Lemma G3` → L-175
- lean/LEAN_CATALOGUE.md:86 `(N3)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:90 `L5` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:94 `Lemma D′` → L-004
- lean/LEAN_CATALOGUE.md:94 `Lemma D″` → L-005
- lean/LEAN_CATALOGUE.md:94 `L5` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:95 `A4` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:95 `A3` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:95 `A3` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:95 `A4` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:95 `A1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:95 `A2` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:96 `A1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:96 `A2` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:121 `Lemma A` → L-056
- lean/LEAN_CATALOGUE.md:125 `(K1)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:137 `L1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:141 `L1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:142 `L2` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:142 `L1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:143 `L3` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:143 `Lemma A` → L-053
- lean/LEAN_CATALOGUE.md:144 `L4` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:144 `(U)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:146 `Theorem LOC` → L-026
- lean/LEAN_CATALOGUE.md:146 `L1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:146 `L2` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:146 `L3` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:146 `L4` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:153 `Lemma D` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:154 `(G3)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:154 `(G3)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:155 `Lemma P` → L-242
- lean/LEAN_CATALOGUE.md:156 `Lemma P` → L-242
- lean/LEAN_CATALOGUE.md:157 `Lemma P` → L-242
- lean/LEAN_CATALOGUE.md:161 `(H3)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:172 `B5` → N-060
- lean/LEAN_CATALOGUE.md:185 `(I1)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:185 `Lemma T` → L-283
- lean/LEAN_CATALOGUE.md:187 `C1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:187 `Lemma T` → L-283
- lean/LEAN_CATALOGUE.md:188 `C2` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:189 `C3` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:190 `C4` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:190 `Lemma T` → L-283
- lean/LEAN_CATALOGUE.md:190 `Lemma T` → L-283
- lean/LEAN_CATALOGUE.md:191 `C5` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:192 `C6` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:193 `C7` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:194 `C8` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:198 `O2` → H-002
- lean/LEAN_CATALOGUE.md:200 `(N3)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:200 `(U)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:200 `Lemma P` → L-242
- lean/LEAN_CATALOGUE.md:202 `C8` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:208 `Lemma N` → L-226
- lean/LEAN_CATALOGUE.md:209 `(N4)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:210 `Lemma C` → L-115
- lean/LEAN_CATALOGUE.md:211 `Lemma N` → L-228
- lean/LEAN_CATALOGUE.md:212 `Lemma P` → L-242
- lean/LEAN_CATALOGUE.md:212 `Lemma D` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:213 `Theorem L` → L-208
- lean/LEAN_CATALOGUE.md:213 `Lemma E` → L-153
- lean/LEAN_CATALOGUE.md:215 `(G4)` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:217 `C1` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:217 `C4` → keep (file-local / external)
- lean/LEAN_CATALOGUE.md:217 `Lemma T` → L-283
- lean/LEAN_CATALOGUE.md:221 `C8` → keep (file-local / external)
- lean/YmLean/BlockInequalityE.lean:4 `Lemma E` → L-153
- lean/YmLean/BlockInequalityE.lean:4 `L8` → keep (file-local / external)
- lean/YmLean/BlockInequalityE.lean:39 `Lemma E` → L-153
- lean/YmLean/BlockInequalityE.lean:133 `Lemma E` → L-153
- lean/YmLean/BlockInequalityE.lean:167 `Lemma E` → L-153
- lean/YmLean/BlockNorm.lean:5 `C4` → keep (file-local / external)
- lean/YmLean/CanonOrder.lean:13 `B10a` → N-100–N-160
- lean/YmLean/CanonOrder.lean:14 `B12a` → N-210–N-230
- lean/YmLean/CanonOrder.lean:14 `B18a` → N-320–N-330
- lean/YmLean/CauchyPerturbation.lean:9 `Q6` → keep (file-local / external)
- lean/YmLean/CauchyPerturbation.lean:9 `L7` → keep (file-local / external)
- lean/YmLean/CauchyPerturbation.lean:73 `Lemma CP` → L-122
- lean/YmLean/CauchyPerturbation.lean:153 `Lemma CP` → L-122
- lean/YmLean/CertBridge.lean:155 `T2` → keep (file-local / external)
- lean/YmLean/CertBridge.lean:155 `T2` → keep (file-local / external)
- lean/YmLean/CertBridge.lean:199 `T2` → keep (file-local / external)
- lean/YmLean/CertBridge.lean:202 `T2` → keep (file-local / external)
- lean/YmLean/CombesThomas.lean:70 `Lemma CT` → L-125
- lean/YmLean/CombesThomas.lean:108 `Lemma CT` → L-125
- lean/YmLean/CombesThomas.lean:120 `Lemma CT` → L-125
- lean/YmLean/ComplexGaussian.lean:9 `Lemma D` → keep (file-local / external)
- lean/YmLean/ComplexGaussian.lean:11 `Lemma D` → keep (file-local / external)
- lean/YmLean/ComplexGaussian.lean:12 `Lemma D` → keep (file-local / external)
- lean/YmLean/ComplexGaussian.lean:18 `Lemma D` → keep (file-local / external)
- lean/YmLean/ComplexGaussian.lean:41 `Lemma P` → L-242
- lean/YmLean/ComplexGaussian.lean:49 `Lemma P` → L-242
- lean/YmLean/ComplexGaussian.lean:136 `Lemma P` → L-242
- lean/YmLean/ComplexGaussian.lean:153 `Lemma S` → keep (file-local / external)
- lean/YmLean/ComplexGaussian.lean:172 `Lemma D` → keep (file-local / external)
- lean/YmLean/GaugeMin.lean:4 `L3` → keep (file-local / external)
- lean/YmLean/Gronwall.lean:7 `C1` → L-011
- lean/YmLean/Gronwall.lean:7 `B2` → L-012
- lean/YmLean/Gronwall.lean:41 `C1` → L-011
- lean/YmLean/H1Majorant.lean:8 `(P5)` → keep (file-local / external)
- lean/YmLean/H1Majorant.lean:8 `C2` → keep (file-local / external)
- lean/YmLean/H1Majorant.lean:8 `C6` → keep (file-local / external)
- lean/YmLean/Interp.lean:14 `(K3)` → keep (file-local / external)
- lean/YmLean/Interp.lean:115 `(K3)` → keep (file-local / external)
- lean/YmLean/Interp.lean:135 `Theorem K` → L-009
- lean/YmLean/KernelRow.lean:72 `Lemma CT` → L-125
- lean/YmLean/KernelRow.lean:160 `Lemma CT` → L-125
- lean/YmLean/LemmaDDoublePrime.lean:4 `Lemma D″` → L-005
- lean/YmLean/LemmaDDoublePrime.lean:66 `Lemma D″` → L-005
- lean/YmLean/LemmaDE.lean:4 `Lemma D′` → L-004
- lean/YmLean/LemmaDE.lean:119 `Lemma D′` → L-004
- lean/YmLean/LemmaDE.lean:123 `Lemma D′` → L-004
- lean/YmLean/LemmaDE.lean:129 `Lemma D′` → L-004
- lean/YmLean/LemmaDPrime.lean:5 `Lemma D′` → L-004
- lean/YmLean/LemmaDPrime.lean:17 `Lemma D′` → L-004
- lean/YmLean/LemmaDPrime.lean:59 `(P1)` → keep (file-local / external)
- lean/YmLean/LemmaDPrime.lean:65 `(P2)` → keep (file-local / external)
- lean/YmLean/LemmaDPrime.lean:71 `(P3)` → keep (file-local / external)
- lean/YmLean/LemmaDPrime.lean:348 `Lemma D′` → L-004
- lean/YmLean/LemmaH.lean:85 `Lemma H` → L-182
- lean/YmLean/LemmaH.lean:114 `Lemma H` → L-182
- lean/YmLean/MagneticShift.lean:34 `L2` → keep (file-local / external)
- lean/YmLean/MagneticShift.lean:502 `L2` → keep (file-local / external)
- lean/YmLean/OishiRump.lean:5 `C2` → keep (file-local / external)
- lean/YmLean/OishiRump.lean:7 `C2` → keep (file-local / external)
- lean/YmLean/OishiRump.lean:78 `C2` → keep (file-local / external)
- lean/YmLean/ParametrixCore.lean:22 `L2` → keep (file-local / external)
- lean/YmLean/ParametrixCore.lean:28 `(N4)` → keep (file-local / external)
- lean/YmLean/ParametrixCore.lean:94 `(N2)` → keep (file-local / external)
- lean/YmLean/ParametrixCore.lean:115 `(N2)` → keep (file-local / external)
- lean/YmLean/ParametrixCore.lean:159 `(N1)` → keep (file-local / external)
- lean/YmLean/ParametrixCore.lean:332 `(N2)` → keep (file-local / external)
- lean/YmLean/QConstants.lean:7 `Lemma N` → L-226
- lean/YmLean/QConstants.lean:221 `Lemma N` → L-226
- lean/YmLean/QConstants.lean:242 `A7` → keep (file-local / external)
- lean/YmLean/QConstants.lean:243 `(I1)` → keep (file-local / external)
- lean/YmLean/Resolvent.lean:8 `(N1)` → keep (file-local / external)
- lean/YmLean/Resolvent.lean:80 `(N1)` → keep (file-local / external)
- lean/YmLean/Resolvent.lean:111 `(N1)` → keep (file-local / external)
- lean/YmLean/Resolvent.lean:187 `(N1)` → keep (file-local / external)
- lean/YmLean/ScaleChain.lean:13 `(S)` → K-018
- lean/YmLean/ScaleChain.lean:27 `A11` → keep (file-local / external)
- lean/YmLean/ScaleChain.lean:45 `(S)` → K-018
- lean/YmLean/ScaleChain.lean:117 `(S1)` → H-255
- lean/YmLean/ScaleChain.lean:416 `(S)` → K-018
- lean/YmLean/ScaleChain.lean:536 `(S)` → K-018
- lean/YmLean/ScaleChain.lean:537 `A11` → keep (file-local / external)
- lean/YmLean/ScaleChain.lean:537 `S8` → keep (file-local / external)
- lean/YmLean/TheoremC1.lean:29 `C1` → L-011
- lean/YmLean/TheoremC1.lean:39 `Lemma D″` → L-005
- lean/YmLean/TheoremK.lean:4 `Theorem K` → L-009
- lean/YmLean/TheoremK.lean:6 `Theorem K` → L-009
- lean/YmLean/TheoremK.lean:33 `Theorem K` → L-009
- lean/YmLean/TheoremL.lean:4 `Lemma E` → L-153
- lean/YmLean/TheoremL.lean:8 `Lemma E` → L-153
- lean/YmLean/TheoremL.lean:9 `Lemma E` → L-153
- lean/YmLean/TheoremL.lean:96 `Lemma E` → L-153
- lean/YmLean/TheoremL.lean:195 `A3` → keep (file-local / external)
- lean/YmLean/Tower.lean:6 `(I1)` → keep (file-local / external)
- lean/YmLean/Tower.lean:71 `(I1)` → keep (file-local / external)
- lean/YmLean/Tower.lean:138 `T2` → keep (file-local / external)
- lean/YmLean/Tower.lean:145 `Lemma T` → L-283
- lean/YmLean/Tower.lean:145 `T2` → keep (file-local / external)
- lean/YmLean/Tower.lean:146 `T2` → keep (file-local / external)
- lean/YmLean/WeightedNorm.lean:7 `(N1)` → keep (file-local / external)
- lean/YmLean/WeightedNorm.lean:11 `Lemma N` → L-225
- lean/YmLean/WeightedNorm.lean:11 `Lemma N` → L-225
- lean/YmLean/WeightedNorm.lean:44 `(N1)` → keep (file-local / external)
- lean/YmLean/WeightedNorm.lean:51 `(N1)` → keep (file-local / external)
- lean/YmLean/WeightedNorm.lean:98 `(N1)` → keep (file-local / external)
- lean/YmLean/WeightedNorm.lean:200 `Lemma N` → L-225
- lean/YmLean/WeightedNorm.lean:231 `Lemma N` → L-225
