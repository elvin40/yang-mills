# OPEN_ITEMS_SWEEP — open items of TRUST_LEDGER, THEOREM2_PROOF_v4 §10, and ASSEMBLY §3 (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5) for the author, before the repository goes public. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were excluded from every grep. Ids follow IDS.md. Labels S-01 … are local to this file.

## 0. Method and edits

- Inventory. I read TRUST_LEDGER.md in full (rows, §4, §5 binding sets, round lines, change notes), THEOREM2_PROOF_v4.md §10 (items and hypothesis table), and the ASSEMBLY.md §3 dependency table. I listed every item marked open, [I], unverified, reduced, "in progress", "running", "pending", or "not written".
- Check. For each item I looked for a later file that resolves it: a *_VERIFY.md with a CONFIRMED/PASS verdict, a later round line, a Lean file under lean/YmLean with a lean/VERIFY_*.md, or today's files (SOURCES_CTR + VERIFY, FABLE_HARD_VERIFY, SOURCES_BETA1_F_TENSION, SOURCES_BETA1_CODE_CHECK, SOURCES_ORDER_CANON_VERIFY2/3, RENUMBER_VERIFY, LemmaDHist*, LemmaHSteps, N3Steps, AbelianShare). I also used the ledger's own later rows (for example R-017, K-026) when an earlier sentence in another row was stale.
- Edits. TRUST_LEDGER.md: status text in 16 places and a new final section "Addendum — 2026-10-28, open-items sweep" with one dated line per change. THEOREM2_PROOF_v4.md §10 and ASSEMBLY.md §3: bracketed status tags "[sweep 2026-10-28: …]" only; the old text stays. No grade, binding set, or row count changed. sync.sh was not run. paper/, lean/, numerics/, and the repository README were not edited (§5 lists the changes they need).
- Repair. Row R-027's status cell contained a pasted edit instruction ("… up to and including … by:"), which split the table row over two lines. I removed the instruction text. The cell now reads as the SOURCES_BETA1_F_TENSION replacement text intended.
- Headline discipline. No item is upgraded beyond its verifier. Where a verifier file confirmed a fix, I cite it. Where no verifier names a change (R-046's canon lines), the new text says so.
- Caution. Other agents were writing files while this sweep ran (lean/YmLean/H2Box*.lean, Gpy*.lean at 19:30–19:45). The Lean counts below are a snapshot.

## 1. Item table

Class: "res" = resolved by a later file (status updated in this sweep); (a), (b), (c) as in §2–§4; "rep" = text repair. "Upd." = where I changed the text.

### 1.1 Items with a new status (stale status corrected)

| # | where | item | old status | new status | evidence | upd. |
|---|---|---|---|---|---|---|
| S-01 | Ledger R-027 | status cell | cell split by a pasted edit instruction | one cell; text = SOURCES_BETA1_F_TENSION replacement | ledger lines 81–82 before the edit | ledger |
| S-02 | Ledger R-031 | H-089 (C-tr) input of L5 | Route 2 inputs incl. CMP 116 on 𝔅, L-281, HHOL §2–§3, NONMONO, one off-trajectory mixed point | PROVED relative to listed inputs, verified (grade unchanged); (C-tr) by Route C with no off-trajectory evaluation; residue R-013, H-047 [I], on-trajectory E_0 uniformity [I], R-018, CMP 102 Sect. G [R], L-024 + H-141, R-015 | SOURCES_CTR + SOURCES_CTR_VERIFY (PASS WITH CORRECTIONS, V6.5–V6.6); lean/VERIFY_LemmaDHist.md | ledger |
| S-03 | Ledger R-037 | small-field residue | "(M_r), N3 KP step, G_Γ growth [I]" | KP derivative step (I8) only; (M_r) exact at r = 1; G_Γ closed as an M threshold | ledger R-017 (round 7, SOURCES_A17_A19 + VERIFY); K-026 (round 6, SOURCES_G3_GGAMMA + VERIFY) | ledger |
| S-04 | Ledger R-043 | SOURCES_FX_D verifier | "verifier running" | reported: (FX-D) CLOSED relative to R-042, no new open item | SOURCES_FX_D_VERIFY §10 | ledger |
| S-05 | Ledger R-045 | T-0126 text fixes (B21_S, D4D5, ASSEMBLY_N1, E14C, IV12) | "not applied" | applied, no grade change | PLAN entry "B116 APPLIED" (B116 = T-0126, IDS.md) | ledger |
| S-06 | Ledger R-046 | C_1^{FX}, κ ≥ 1536 | "not in the canon" | in the canon at N-330, N-070; no verifier names these two lines | SOURCES_ORDER_CANON N-070, N-330, change log F.5 | ledger |
| S-07 | Ledger R-002 | SOURCES_F22_VERIFY's "one more local fix" for WG_FULL ((I1) δ_*, θ_L entry, B_0 → B_WG) | open | applied (WG-rate fix 3); checked; the PAPER-GRADE condition of F22_VERIFY is met | WG_FULL change log "WG-rate fix 3"; SOURCES_ORDER_CANON_VERIFY2 §8 (CONFIRMED (i)–(ii), rename CORRECTED); VERIFY3 items 1i, 1k (rename CONFIRMED) | ledger |
| S-08 | Ledger R-002 | "PLAN has no entry for this verifier yet" (F22_VERIFY) | stale | PLAN entry exists | PLAN.md, entry "SOURCES_F22_VERIFY (B132 …)" | ledger |
| S-09 | Ledger R-002, §5 r11 | canon pass T-0137 (THM37/39/310, WG canon lines) | pending | DONE; checked | PLAN "Canon pass B124 DONE" (B124 = T-0137); SOURCES_ORDER_CANON_VERIFY2; fix passes B136/B137 checked by VERIFY3 | ledger |
| S-10 | Ledger R-002, §5 r11 | divisibility 18L \| C^{122}M [I] | [I] flag | replaced by the canon rounding route (M_□^{99} rounded down to a power of L; cost 18L⁴Mα_0 ≤ a_1) | SOURCES_ORDER_CANON N-310 (B18); VERIFY2 grade (3) CONFIRMED | ledger |
| S-11 | Ledger R-002, §5 r11 | H-180 (X-PU) repair in WG_FULL | "not yet written into WG_FULL" | written: WG uses no partition of its own; factor L inside K_1^{37}, K_A, K_P → c_0 | WG_FULL l. 304 | ledger |
| S-12 | Ledger R-024 | "R after δ_min in the canon [I]" | OPEN | done: N-310 fixes RM after δ_min | SOURCES_ORDER_CANON_VERIFY3 items 2k, 2l | ledger |
| S-13 | Ledger R-020 | "the paper's H-215 (K1) lines are stale" | stale paper | paper cites H-215 only as replaced by H-216 (K1′), δ = 0.025 | paper/sources.tex, paper/appendix.tex (grep) | ledger |
| S-14 | Ledger §4.2 step 8 | R-024 "open: sourced extension, (1.25) compression [I]" | open | sourced extension PROVED relative to inputs [verified]; (1.25) operator = CMP 119 (2.21) [V] | ledger R-024 round 12; SOURCES_MULTISCALE_OMEGA_SOURCED + VERIFY | ledger |
| S-15 | Ledger §4.3 (iii) | L-323 (S1-pt) "sourced extension unverified" | unverified | proved relative to listed inputs incl. R-042, verified with corrections | FABLE_HARD_VERIFY §C.3 (the §4.3 grades bullet already said so) | ledger |
| S-16 | Ledger §2 trailer, §4.1 step 3; v4 §10 item 13 | Lean history form of Lemmas D′/D″ | open | done; statement check present | lean/YmLean/LemmaDHist.lean, LemmaDHistNested.lean; lean/VERIFY_LemmaDHist.md (incl. addendum for lemma_DDoublePrime_hist_adm) | ledger, v4 |
| S-17 | Ledger §7 | Lean file count "45 files" | 45 | 59 .lean on disk (snapshot), 45 imported; 5 new files with statement checks; 9 files in progress (Gpy*, H2Box*) | ls lean/YmLean; lean/VERIFY_LemmaDHist, _LemmaHSteps, _N3Steps, _AbelianShare | ledger |
| S-18 | Ledger K-045 | M ≥ c_T/22 "not among the 32 entries of M_req" | stale | in M_req (canon N-310, count 42) | SOURCES_ORDER_CANON dated note l. 299; VERIFY3 item 2m | ledger |
| S-19 | v4 §10 item H; table row (H2) | (H2) "certification open" | numerical only | certified at L = 13, 15, 17, 21 | ledger R-025 (H1_ANALYTIC + VERIFY, VERIFY2, H2_CERTIFY_P5_VERIFY, H2_CERTIFY_L15_17_21_VERIFY) | v4 |
| S-20 | v4 §10 item 1; row (B2) | (B2) "open; reduced to (H2)" | open | holds at the certified L via (H2) ⇒ (C1σ) ⇒ (B2) | ledger §4.1 step 1; B2_TWOSTEP_VERIFY | v4 |
| S-21 | v4 §10 item 2; row (PI) | (PI) | argued | reduced [R], verified | ledger R-026; SOURCES_T2_PI + VERIFY | v4 |
| S-22 | v4 §10 item 3; row (F) | (F) lattice transfer | "not proved here" | PROVED, verified | ledger R-027; SOURCES_T2_MPT_STEPC + VERIFY; SOURCES_T2_MPT_REST + VERIFY | v4 |
| S-23 | v4 §10 item 4; row (M_j) | (M_j) (S1)–(S3) | open | PROVED+VERIFIED at fixed j | ledger R-028; SOURCES_T2_MJ_REST + VERIFY | v4 |
| S-24 | v4 §10 item 5; row V1 | V1 | open | proved+verified at fixed level, given (G2) | ledger R-029; SOURCES_T2_V1 + VERIFY | v4 |
| S-25 | v4 §10 item 6; row (G2) | (G2) | formal | reduced [R], verified | ledger R-030; SOURCES_T2_G2 + VERIFY | v4 |
| S-26 | v4 §10 item 7; row (H0) | (H0) | [Balaban] | Target 1 use a verified reduction (H0-red), residue N1–N9 | ledger R-006; SOURCES_T2_H0 + VERIFY | v4 |
| S-27 | v4 table row L5 | L5 history form and domain | open | PROVED relative to listed inputs, verified | ledger R-031; SOURCES_T2_B7_CLAMP + VERIFY; SOURCES_CTR + VERIFY (item 8 text was already updated) | v4 |
| S-28 | v4 §10 item 9; row K-independence | K-independence of β_j | open | CLOSED as a reduction, verified; residual volume question R-032 | SOURCES_T2_KUNIF + VERIFY | v4 |
| S-29 | v4 §10 item 10; rows sweep, item-11 readings | sweep reading; BALABAN_CHECK item 11 readings | proved, unverified; unchecked | sweep CLEARED (R-034); R-012 verified list; R-048, R-051 verified readings | SOURCES_B10_SWEEP + VERIFY; SOURCES_A11_CONST + VERIFY; SOURCES_BOOKKEEPING_VERIFY | v4 |
| S-30 | ASSEMBLY B-T2 | Theorem 2 block | OPEN, reduced to (T2-a1′) | route superseded; L-001 (Theorem 2w) holds relative to the ledger §4.1 binding set | TRUST_LEDGER §4.1, §5 round 12 | ASSEMBLY |
| S-31 | ASSEMBLY B-T2.2 | U3 Lemma 5.1 charged sector; R23 "verifier running" | OPEN | R23 verifier reported; L-009 uses only (3.2)–(3.3), so the charged sector beyond that is not needed | U3_LEMMA51_R23_VERIFY (item 4a CONFIRMED); ledger §2 trailer | ASSEMBLY |
| S-32 | ASSEMBLY B-T2.4 | β_∞ = c log L; BETA_FP_VERIFY "in progress" | OPEN | not on the Target 1 route; BETA_FP_VERIFY has grades | ledger §4.1; SOURCES_BETA1_F_TENSION §12; BETA_FP_VERIFY.md | ASSEMBLY |
| S-33 | ASSEMBLY B-T2.5 | κ_k bounded | OPEN | superseded by KAPPA_BOUNDED / L-009 (Theorem K), a correct reduction | KAPPA_BOUNDED_VERIFY ("Overall") | ASSEMBLY |
| S-34 | ASSEMBLY B-T2.6 | certified early steps | OPEN | not needed for the targets | ledger §2 trailer | ASSEMBLY |
| S-35 | ASSEMBLY B-S | sourced Theorem 1 | OPEN | = ledger R-035 (open as a whole; parts in §4.2) | ledger R-035 | ASSEMBLY |
| S-36 | ASSEMBLY B-S.D2 | (c) rejected | DRAFTED | (c) redone in D2C; verified with corrections | SOURCES_D2C_VERIFY; ledger R-035, R-044 | ASSEMBLY |
| S-37 | ASSEMBLY B-S.D2C | "verifier running" | DRAFTED | verifier reported ((I) exact only with K-011) | SOURCES_D2C_VERIFY | ASSEMBLY |
| S-38 | ASSEMBLY B-S.Hβ | (I), (H-hist) | REDUCED | (I) = R-036; (H-hist) = R-037 reduced [R, verified] | ledger R-036, R-037 | ASSEMBLY |
| S-39 | ASSEMBLY B-S.D3 | sourced large-field step | IN PROGRESS, not verified | D3, D3R, D3W8 verified with corrections | SOURCES_D3_VERIFY, SOURCES_D3R_VERIFY, SOURCES_D3W8_VERIFY | ASSEMBLY |
| S-40 | ASSEMBLY B-S.D4 | (E14-c) | NOT STARTED | (E14-c) REDUCED to R-045 (S) [verified]; (S) reduced [R, verified] | SOURCES_B21_E14C + VERIFY; SOURCES_B21_S + VERIFY | ASSEMBLY |
| S-41 | ASSEMBLY B-N1 | bridge | OPEN, route sketched | (S_src) ⇒ H-116 (H-U) proved+verified given R-043, R-045 (S); H-168 (S′) proved+verified | SOURCES_D4D5_VERIFY §7; SOURCES_B21_S_PRIME + VERIFY | ASSEMBLY |
| S-42 | ASSEMBLY B-C, B-REG, B-TI, B-RP, OS3 | in-file proofs | "not independently" verified | CONFIRMED (ℓ even: sufficient, not necessary) | ASSEMBLY_VERIFY §6 items 2, 3 | ASSEMBLY |
| S-43 | ASSEMBLY B-NT, E13 | nontriviality; full-sequence convergence | OPEN | not needed for Target 2 | ledger §2 trailer | ASSEMBLY |
| S-44 | ASSEMBLY §3 critical-path sentence | critical path | stale list | pointer to ledger §4.2, §5 and this file | — | ASSEMBLY |

### 1.2 Items that stay open (no later file resolves them; status unchanged)

| # | where | item | status (as of the 2026-10-28 sweeps A–H; earlier "unchanged" status in the ledger rows) | why not resolved (original note) | class |
|---|---|---|---|---|---|
| S-45 | R-001 | readings [I-a1], [I-geom], d-path metric, Δ^{(2)} symmetry [I-conv]; WG_FULL regrade fixes (i)–(ii) "applied, not re-verified" | PARTLY CLOSED 2026-10-28: readings [I-a1], [I-geom], Δ^{(2)} symmetry resolved (SWEEP_E, DE_VERIFY §4.9); WG_FULL fixes (i)–(ii) re-verified (SWEEP_H §3); NEW: L-284 (Lemma T) (c) not proved as written (printed d block-constant); repaired form (c′) in SOURCES_LEMMA_T_REPAIR [P-sketch, unverified] | no verifier file names the regrade fixes | (a) |
| S-46 | R-002 | THM37 (H1): multi-size cube class, a new hypothesis beyond (3.35) | NEW hypothesis | FABLE_A25_A26_H1 Task C not written | (b) |
| S-47 | R-002 | H-071 (AL-c) REDUCED (complex CMP 98 Props. 1/2, c_N, defect split, (15) reading) | OPEN (2026-10-28): unchanged; needs the author's word (Fable verifier held) | FABLE_O3_ALC Task B unverified; canon slot c_N empty (VERIFY3 §3) | (a) verifier, else (b) |
| S-48 | R-002, R-003 | H-180 (X-PU) repair in WC_FULL and A1_WALK_FULL (H-002) | CLOSED 2026-10-28: X-PU resolved in form (SWEEP_C; BC_VERIFY §1): c_h → Lc_h, core margin stays M_1, constants before M_1; text not yet applied to A1_WALK_FULL | grep finds no X-PU text in WC_FULL or A1_WALK_FULL | (a) |
| S-49 | R-002, R-003 | geometry and convention [I] items: H-303–H-307, H-318(ii), H-321 [I-geo]; WC_FULL I1–I9 | [I] | no file | (b) |
| S-50 | R-004 | R-Δ2 [R: (3.136) + block-average bound on C^{(2)}]; R1 Schur step [plausible] | CLOSED 2026-10-28: R-Δ2 written out, R1 Schur step checked [P given (3.137), (3.46)] (SWEEP_C; BC_VERIFY §4) | RDELTA2 brief never delivered | (a) |
| S-51 | R-005 | [I] ∇/Hölder/Δ versions of (190) | reduced | no file | (b) |
| S-52 | R-006 | residue N1–N9; N6 past-uniformity of E_0 "reduced, not proved" (now also used on trajectories by R-031 Route C) | PARTLY CLOSED 2026-10-28: E_0 value coupling-free on and off trajectory (SOURCES_CTR_RESIDUE + VERIFY); off-trajectory sup induction still reduced to N7 and H-040 | no file | (b) |
| S-53 | R-006 | N8 readings ("absolute" ⇒ j-free; k-uniformity of CMP 102 constants) | PARTLY CLOSED 2026-10-28: 'absolute' = (d, L) only [V]; C_2, C_4, B_0 k-uniform [V] (SWEEP_D; DE_VERIFY §4.5); still [I]: T2_H0 scale-invariance item, H0 C3, C15 | SOURCES_CTR_VERIFY C7 reads "absolute" as X- and j-free, but only for CTR | (a) |
| S-54 | R-008 | complex s (\|s\| ≤ e^{κ_1}) and complex U clause | P-sketch | no write-out | (b) |
| S-55 | R-009 | readings I-a–I-e | CLOSED 2026-10-28: I-a–I-e resolved (SWEEP_E; DE_VERIFY §4.10); I-d [P] unverified | no file | (a) |
| S-56 | R-010 | residue R2 (R- and C-terms by mechanism) | not written out | no file | (b) |
| S-57 | R-010 | residue R4 ((4.5) tail constant) | CLOSED 2026-10-28: (4.5) prefactor printed; K_tail [P], binding case n = 1 (SWEEP_D; DE_VERIFY §4.1) | no file | (a) |
| S-58 | R-012 | "CMP 109 restrictions outside the file; OCR slip p. 278" | CLOSED 2026-10-28: restrictions located and in the canon; OCR slip [V]; p. 277 indexed form holds [P] (DE_VERIFY §1; SWEEP_D's failure claim refuted); R-012 stays CLOSED | no file | (a) |
| S-59 | R-014 | (3.54) closure constant | asserted (Balaban), inside R-013 only | Balaban's proof | (c) |
| S-60 | R-015, K-033, K-037 | (Cube) "[14] construction not re-read"; p. 290 reading | CLOSED 2026-10-28: K-033 [P], K-037 [P-sketch] (SWEEP_D; DE_VERIFY §4.4) | no file | (a) |
| S-61 | R-016 | [I] residue: H-166 (S_H), Ω-setting volume convention, s-version choice for (C_f)^{1/2} | CLOSED 2026-10-28: H-166 (S_H) [P] on the torus, conventions in the Ω-setting (p_S [I]); volume rule [V]; s-version a convention (SWEEP_F §1; AFG_VERIFY §5.4) | no file | (a) |
| S-62 | R-016, K-035 | Q-047(c): translation covariance of localized terms when the M-cube partition moves | CLOSED 2026-10-28: convention (Avg), admissible, not forced; R4 attachment margin a constant cost; R4, R5 [P-sketch] (SWEEP_F §2; AFG_VERIFY §5.1) | no convention pass on disk | (a) |
| S-63 | R-016, R-024 | U-A ((R7) relaxed regularity), U-B [I], U-C [I-strong]; (S_H^Ω) [I] | [I] | no file | (b) |
| S-64 | R-017 | reading "C = identity on the remaining bonds" | CLOSED 2026-10-28: C = identity on every cut bond, printed (SWEEP_C; BC_VERIFY §4.3) | no file | (a) |
| S-65 | R-018 | [I] I2, I3, U_{k,Z} obeys CMP 102 Thm 1, B and B_5 fixed numbers | CLOSED 2026-10-28: I2, I3, B, C_2/C_4/B_0 [V]; M_1-split convention replaces 'R_1 < L' (cost corrected, DE_VERIFY §3.4; which N-270 entry means which M_1 still open bookkeeping) | no file | (a) |
| S-66 | R-019 | three readings ((189), (73) complex clauses; (172)-ball identification) | PARTLY CLOSED 2026-10-28: (172)-ball reading not needed; (73) complex [P-sketch/R] via CMP 98 Sect. D (DE_VERIFY §4.3); (189) complex stays [I]; fallback K4 covers the only consumer | no file; two-constants fallback exists | (a) |
| S-67 | R-020 | R1 count sketch | CLOSED 2026-10-28: R1 count [P]: 1δ/2δ/3δ, 13δ kept (SWEEP_G §4; AFG_VERIFY §4) | no file | (a) |
| S-68 | R-020 | R3: Balaban's assertion that H′(Z_0) obeys (2.38) | open | no file | (b) |
| S-69 | R-021 | printed CMP 99 statements (Thm 3.1 at a = 1, Thm 3.3 walk sketch, Thm 3.11, (3.137)) taken as [R] | [V] taken as [R] | Balaban's sketches | (c) |
| S-70 | R-022 | OPEN (i) L-211 (Lemma LB_Q̃); (ii) k-step, regular-U Q̃_kQ̃_k* ≥ c | open | FABLE_A25_A26_H1 §1 (Dressing Lemma) unverified | (b); shortcut (a) = verify the Dressing Lemma |
| S-71 | R-022 | substitution proviso [I] on CMP 99 pp. 392, 396, 404, 407, 414, 421, 422 | CLOSED 2026-10-28: all seven pages [V]; proviso leaves the [I] list (SWEEP_B §2; BC_VERIFY §3) | pages not imaged | (a) |
| S-72 | R-023 | (1) exact Λ_0 constraint, no residual gauge on ∂□_0; Ū^0 = U [I] | CLOSED 2026-10-28: exact Λ_0 constraint, u = 1 on Λ_0, Ū^0 = U forced [P] (SWEEP_B §1; BC_VERIFY §3) | no file | (a) |
| S-73 | R-023 | (2) gauge-patching lemma for cubes that meet ∂□_0 | OPEN, not stated in the sources | FABLE_A25_A26_H1 section not written | (b) |
| S-74 | R-023 | (6) matching CMP 102's M to CMP 109's M | CLOSED 2026-10-28: compatible under N-310 [P]; N-380 (18L + 2)M, N-320 (M + R_1M_1); M_1 naming reading [I], safe both ways (BC_VERIFY §2) | no file | (a) |
| S-75 | R-024 | H-002 straddling cover [P-sketch]; H-167 (Sep) [R + I-strong]; step-j identification [P-level] | reduced | no file | (b) |
| S-76 | X-003 | Osterwalder–Seiler 1978 | OPEN (2026-10-28): text not obtained by automated access (SWEEP_H §1); library copy needed | no file | (a) |
| S-77 | R-025 | single-sourced readings ((0.4); ghost-domain gauge choice); no proof assistant for the certificate | PARTLY CLOSED 2026-10-28: (0.4) reading and ghost domain [V] by a second reader; (0.4) = (0.12) at order 0 [P]; gauge fixing a convention, minimum-norm among orbit-selecting gauges (SWEEP_A §2; AFG_VERIFY §6); proof assistant open | H2Box*.lean are being written now (no README entry, no VERIFY) | (a); proof-assistant part running |
| S-78 | R-025, §6 | premise P4 of the certificate: "no verifier pass on the proof" | CLOSED 2026-10-28: P4 PROVED and verified, 12 steps CONFIRMED (SWEEP_A §1; AFG_VERIFY §6) | no H2_CERTIFY_P4_VERIFY.md | (a) |
| S-79 | R-026 | "(1.1) at L = 3 not evaluated" | CLOSED 2026-10-28: (1.1) not needed at any L (SWEEP_A §3; AFG_VERIFY §6) | no file | (a) |
| S-80 | R-027 | [N] tension: convergence of B_c(L); b_j → 0 inputs (H′), (M) of BETA_FP_H Thm 3.1 | open, not binding | SOURCES_BETA1_F_TENSION §12: not binding; SOURCES_BETA1_CODE_CHECK only checks the code | (b) |
| S-81 | R-028 | one [I] convention (KAPPA (1.1) b_{t,m} = Moyal coefficients at σ = 0) | CLOSED 2026-10-28: Moyal convention [P] (SWEEP_E; DE_VERIFY §4.7) | no file | (a) |
| S-82 | R-030 | Q̃ surjectivity; averaging-analyticity reading | CLOSED 2026-10-28: Q̃Q̃^T > 0 at fixed j [P] (no uniformity in j claimed, not needed); averaging analyticity [P-sketch] (SWEEP_E; DE_VERIFY §4.8) | no file | (a) |
| S-83 | R-030 | (Gap_f) | [R] residue | no file | (b) |
| S-84 | R-031 | H-047 estimate causality [I] | CLOSED 2026-10-28: H-047 closed relative to the small-field step of R-013 (SOURCES_CTR_RESIDUE + VERIFY; ledger addendum 2026-10-29) | SOURCES_CTR_VERIFY V6.5 keeps it [I] | (a) |
| S-85 | R-031 | on-trajectory uniformity of E_0 in (1.18) [I] | CLOSED 2026-10-28: on-trajectory E_0 uniformity closed (SOURCES_CTR_RESIDUE + VERIFY; ledger addendum 2026-10-29); off-trajectory sup induction stays with S-52 | E_0 is not in CMP 109 Thm 3's constant list (CTR_VERIFY) | (b) (= part of S-52) |
| S-86 | R-032 | H-091 (Conv_Λ) [I]; Λ_j nesting [I] | CLOSED 2026-10-28: Λ_j nesting [V]; Conv_Λ parts [V] + convention K-050 (cost O(1)(d)); margin [P-sketch] (SWEEP_E; DE_VERIFY §4.6) | no file | (a) |
| S-87 | R-033 | Route B: (T1), (DF), A6 argued; BETA_FP_U Thm 2.4 unverified | argued | no BETA_FP_U_VERIFY.md; Route B is an alternative | (b) |
| S-88 | R-034 (ii) | H-248 (S3w) below j_1 | open, not used by Target 1 | — | (c) |
| S-89 | R-035 | B-S as a whole | open | composite of R-036–R-044, R-046 | composite |
| S-90 | R-036 | (I) "not written as a lemma" | CLOSED 2026-10-28: Lemma I36 PROVED relative to K-001, K-011, Lemma U and (Hβ) (SWEEP_F §3; AFG_VERIFY §5.2) | no file | (a) |
| S-91 | R-037 | KP derivative step (I8, standard) | CLOSED 2026-10-28: Lemma KP-D [P] relative to the KP theorem [I, external]; s_0 not valued; κ entries needed (SWEEP_G §1; AFG_VERIFY §1) | no file | (a) |
| S-92 | R-037, R-039 | large-field coarea Jacobian on non-round level sets (G3_N2 2.6) | open input | no file | (b) |
| S-93 | R-037 | H-145 (M-B) bookkeeping (large field) | CLOSED 2026-10-28: H-145 (M-B) [P] relative to listed inputs; p. 389 needs β_0 < 1/3 (new canon gap) (SWEEP_G §2; AFG_VERIFY §2) | no file | (a) |
| S-94 | R-038 | β_j part (threshold-history mixed derivative) | open | no consumer (R-039 no longer uses R-038) | (c) |
| S-95 | R-039 | H-241 (R1′) [I] (i) C_2–C_4 free upward; (iii) inter-step cut-nesting slack on the box S | CLOSED 2026-10-28: (i), (iii) [P] (SWEEP_F §4; AFG_VERIFY §5.3); (ii) stays (S-96) | no file | (a) |
| S-96 | R-039 | H-241 (R1′) [I] (ii) R-ratio N/D telescoping needs a lower bound on D | [I] | no file | (b) |
| S-97 | R-040 | ‖β_j‖ ≤ M_β (majorant covers the Gaussian only) | reduction | no file | (b) |
| S-98 | R-041 | [I] residues: α_2–α_4 (γ_2) scaling, q_0 > p_0 vs q_0 = p_0, Haar (H-130), A_min pairing, F2′–α link, two [I] of (C2) | CLOSED 2026-10-28: residues resolved as [V] or conventions; (C2)(b) 'R_1 < L' withdrawn (SWEEP_E; DE_VERIFY §4.12) | no file | (a) |
| S-99 | R-042 | Q-061 via FABLE_O3_ALC Task A | OPEN (2026-10-28): unchanged; needs the author's word | verifier held | (a) verifier |
| S-100 | R-043 | H-191 (FX2) coarsest-scale radius (load-bearing for order 1 + η) | [R, verified] input; fallback 1 + η + 2/3 | — | (b) |
| S-101 | R-044 | W4-G [R] (Balaban's CMP 122 I Sect. 1 sketch) | [R] | Balaban's sketch | (c) |
| S-102 | R-044 | Ursell (7.13) [I] | CLOSED 2026-10-28: (7.13) = CMP 116 (2.13) [V]; bound by Lemma KP-D (SWEEP_G §3; AFG_VERIFY §3) | no file | (a) |
| S-103 | R-045 | S1 at all scales (sourced single-support bound) | open | no file | (b) |
| S-104 | R-045 | ASSEMBLY_N1 alignment T-0039 "applied, not re-verified" | PARTLY CLOSED 2026-10-28: main chain CONFIRMED; ASSEMBLY_N1 §6 text fixes still to apply (SWEEP_H §2) | no file | (a) |
| S-105 | R-046 | CMP 116 (2.36) "simple, but awkward" | asserted (Balaban), inside R-013 | Balaban's text | (c) |
| S-106 | Q-050 (in R-016) | H-237 (P5) Gaussian booking [reduced] in D3; readings ‖H_{1,k}‖ ≤ O(1)B_3, 0 ≤ ζ_0 ≤ 1, G^c extension | reduced | no file | (b) booking; (a) readings |
| S-107 | K-024 | (Hβ) complex-c strip | open | no file | (b) |
| S-108 | K-028 | SOURCES_GGAIN_BETAH | CLOSED 2026-10-28: GGAIN_BETAH verified; three missed λ_C consumers, same form (SWEEP_H §4) | no verifier file | (a) |
| S-109 | K-032 | SOURCES_T2_VOL | CLOSED 2026-10-28: T2_VOL verified with minor corrections (SWEEP_H §5) | no file | (a) |
| S-110 | K-003, K-004, K-019, K-023 | scope choices (L, SU(2), thermal/plaquette/subsequence, any shooting solution) | LOSES GENERALITY | by design | (c) |
| S-111 | §5 S1 list | Lemma M (U3_AW §3.3) verifier grade | CLOSED 2026-10-28: Lemma M CONFIRMED (SWEEP_H §6) | no file | (a) |
| S-112 | §4.1 step 3, §7 | statement checks for 11 Lean files without VERIFY (AbelianCount, DetIdentities, Divergence, Gronwall, LemmaDDoublePrime, LemmaDE, LemmaH, OishiRump, Schur, StripBound, Telescoping) | CLOSED 2026-10-28: 9 CONFIRMED, 2 CORRECTED (LemmaDE one-argument case; Telescoping log-det core) (SWEEP_H §7) | no file | (a) |
| S-113 | §4.3 | L-319 [audit, I]; L-320 H-106 (FX-V), L-331 H-142 (Loc-f) [R, unverified]; (L1) [I] of FX_D_VERIFY; I8 absorption [I] | outside the targets | — | (c) |
| S-114 | §2.1 | R-052 corrections applied; R-053, R-054 UNVERIFIED (verifiers held) | outside the targets | author's hold | (c) |
| S-115 | v4 §10 B1, B3, B5, B8 | Route B (T1), (DF), A6, BETA_FP_U verification | argued / no verifier | as S-87 | (b) |
| S-116 | v4 §10 "Not needed" list | (A) in full, Lemma 5.1 for m = 2, C², C³ of σ^{(1)}, literal (0.31), j_*, (N) | not needed | — | (c) |
| S-117 | ASSEMBLY B-T2.3 | U3 Thm 6.1 composed constraint R1 | CLOSED 2026-10-28: composed R1 not used by Route K (SWEEP_C; BC_VERIFY §4.4) | not clear whether Route K uses it | (a) |
| S-118 | ASSEMBLY §3 (G1)–(G3) | Balaban's published proofs correct; inductive assumptions; L odd > 11 | global conditions | by design | (c) |
| S-119 | ASSEMBLY §4 | O(4), infinite volume, mass gap, uniqueness, OS4 | not given | new mathematics | (c) |

## 2. Class (a): closable by reading Balaban's local pages (balaban/) or by a short derivation or check (≤ 1 h of an Opus agent)

Top five first (chosen by binding weight and cost). Each line gives the exact question.

1. S-78 (R-025 premise P4; Target 1). Verify H2_CERTIFY_P4.md as written: is every step of the P4 proof correct, does it use only identity (D) of Lean P4_divergence plus the Fourier step, and does L-264 (Lemma S) enter as H1_ANALYTIC_VERIFY V1 states? Write H2_CERTIFY_P4_VERIFY.md with CONFIRMED/CORRECTED/UNSUPPORTED per step.
2. S-72 (R-023 item (1); Target 2). On the CMP 102 and [15] Sect. F pages in balaban/: is the averaging constraint on Λ_0 = □_0 imposed exactly, with no residual gauge freedom on ∂□_0? Is Ū^0 = U printed (CMP 109 p. 262 gives M^p = Ū^p)? Quote page and equation for each; grade [V] or [I].
3. S-71 (R-022 proviso; Target 2). On CMP 99 pp. 392, 396, 404, 407, 414, 421, 422 (images): does each use of the CMP 98 average need only analyticity, (0.5)–(0.9), and a uniform Lipschitz modulus of M near 1, once U(Γ_{y,x}) → U(y, x) is substituted consistently (incl. (3.19), (3.55)–(3.57))? Grade each page [V] or name the failing line.
4. S-48 (H-180 (X-PU), R-002/R-003; open since round 10). Do WC_FULL.md and A1_WALK_FULL.md (H-002, §2.1 (G), §7.2–7.3) use Balaban's printed partition of unity CMP 96 (2.36) × CMP 95 (1.118), or only a partition of their own? For each use, write the change c_h → L·c_h and the changed constants (as WG_FULL l. 304 does), or state why none is needed.
5. S-66 (R-019; Target 2). On CMP 102 pp. 307–309: do (189) and (73) hold for complex arguments (is a complex clause printed or forced by the proof)? Is the ball |B| < 2C_1ε_1 of (172) the domain on which Prop. 9 asserts analyticity of 𝓗? Grade the three readings. If one fails, confirm that the two-constants fallback (ω = 0.4097, |B| < ½C_1ε_1, rate × 0.59) covers every consumer of R-019.

Other (a) items:
- S-50 (R-004 R-Δ2). Does CMP 99 (3.136), with a block-average bound on C^{(2)}, give the R-Δ2 bound in the form that SOURCES_A3_GAMMA0_FULL uses? State the constant. Is the R1 Schur step of A3_GAMMA0_FULL correct as written?
- S-90 (R-036). Write R-036 (I) as a lemma: with weight 1/u_k(c) (K-011) and thresholds frozen at x* (K-001), B_j(c) = F_j(u(c); x*) for constant sources. Cite SOURCES_D2C_VERIFY §1 and SOURCES_HHOL_LF_VERIFY V4.
- S-62 (Q-047(c), K-035). Which convention makes the localized terms of CMP 119 (2.29) and (3.62) covariant under unit translations that move the M-cube partition (for example, a translation-covariant partition rule or an average over partition shifts)? Is it admissible in the sense of K-035, K-036, K-038, and does it change any constant?
- S-60 (K-033, K-037; R-015). In [14] of CMP 109 (balaban/), does the construction of U_j(□_0, ·) use only data on □_0? On CMP 109 p. 290, does "H_j with free boundary conditions" mean the Z^4 operator?
- S-64 (R-017). On CMP 109 pp. 267–268 ((2.9), (2.12)): is C the identity on every bond the cut covers except b_0(c)?
- S-84 (R-031 H-047). In the proof of CMP 109 Theorem 3 (pp. 264–280), do the estimates (1.18) and the analyticity of E^{(k+1)} use g_{k+1}, or only g_0, …, g_k?
- S-53 (R-006 N8). Does "absolute" on CMP 109 p. 263 mean independent of j (as SOURCES_CTR_VERIFY C7 reads it) for every use in H0-red? Are the CMP 102 constants C_2, C_4, B_0 uniform in k on the printed pages?
- S-58 (R-012). Locate the "CMP 109 restrictions outside the file" and check the OCR slip on CMP 119 p. 278 against the image.
- S-55 (R-009), S-45 (R-001), S-65 (R-018), S-86 (R-032), S-98 (R-041), S-81 (R-028), S-82 (R-030): for each listed [I] reading, give the page and the printed line that supports it, or mark it as a convention with its cost.
- S-61 (R-016). State H-166 (S_H) (scale normalization of D_S, J_S), the Ω-setting volume convention, and the s-version choice for (C_f)^{1/2} as conventions; check that each changes only constants.
- S-74 (R-023 (6)). Is CMP 102's M (a multiple of R_1M_1, M ≤ R_1M_1a_1/ε_1) compatible with CMP 109's M under the canon order (N-310)?
- S-91 (R-037 I8). Write the Kotecký–Preiss derivative lemma used in the N3 and GGAIN_LF steps, with the constant, from the KP condition already in the canon.
- S-93 (R-037). Write the H-145 (M-B) bookkeeping for the large field with K-002's margin.
- S-95 (R-039 H-241 (i), (iii)). Check that a joint scaling of C_2–C_4 by 1.06 keeps every canon entry admissible; check the inter-step cut-nesting slack on the box S.
- S-102 (R-044). Identify the source of "Ursell (7.13)" and confirm that it gives the Ursell bound that SOURCES_B20_W4R uses under (1.97).
- S-57 (R-010 R4). Compute or bound the (4.5) tail constant from the printed CMP 109 Sect. 4 lines.
- S-67 (R-020 R1). Write out the R1 count (the verifier counts 2δ; the ledger uses 3δ).
- S-77 (R-025). Second reader for the reading of Balaban (0.4) and the ghost-domain gauge choice (H1_ANALYTIC_VERIFY2 §9).
- S-79 (R-026). Is (1.1) needed at L = 13? If yes, evaluate it.
- S-76 (X-003). Fetch Osterwalder–Seiler 1978 and quote the link-plane reflection-positivity statement.
- S-117 (ASSEMBLY B-T2.3). Does any step of L-009 (Theorem K), (H2) ⇒ (C1σ) ⇒ (B2), or L-005 (Lemma D″) use the composed constraint R1 of U3 Thm 6.1? If not, mark B-T2.3 as not needed.
- Verifier or statement-check passes (each a short, independent check): S-104 ASSEMBLY_N1 alignment (T-0039); S-45 the WG_FULL regrade fixes (i)–(ii); S-108 SOURCES_GGAIN_BETAH; S-109 SOURCES_T2_VOL; S-111 Lemma M (U3_AW §3.3); S-112 the 11 Lean files without a lean/VERIFY_*.md. These three need the author's word, because the author holds the Fable-file verifiers: S-99 FABLE_O3_ALC Task A (Q-061, R-042), S-47 FABLE_O3_ALC Task B (H-071 (AL-c), canon slot c_N), and S-70's shortcut, FABLE_A25_A26_H1 §1 (Dressing Lemma; would remove R-022 (i)–(ii)).

## 3. Class (b): needs a real derivation

Target 1 (L-001 (Theorem 2w) and its use for Theorem 1):
- S-52, S-85 (R-006 N6; R-031 Route C): uniformity of E_0 in CMP 109 (1.18) along trajectories, and past-uniformity in general. CMP 109 Theorem 3 does not list E_0 among its constants, so this is not a page reading.
- S-80 (R-027 tension, not binding): convergence of the coarse-bracket constant B_c(L); b_j → 0 for β_∞ = c log L.
- S-87, S-115 (Route B only): (T1), (DF), A6, and a verifier for BETA_FP_U Thm 2.4. Not needed if Route K stands.

Target 2 (Group A rows with open lemmas):
- S-70 (R-022): L-211 (Lemma LB_Q̃) and the k-step, regular-U bound Q̃_kQ̃_k* ≥ c, unless the Dressing Lemma of FABLE_A25_A26_H1 §1 is verified (then both leave the row).
- S-73 (R-023): a gauge-patching lemma for cubes that meet ∂□_0 (not stated in the sources), or condition (iv) + CMP 99-regular Prop. 6 on □_0^{−2}.
- S-75, S-63 (R-024, R-016): the H-002 cover for cubes that straddle Ω_j interfaces; H-167 (Sep) [I-strong]; U-A ((R7) relaxed regularity), U-B, U-C; (S_H^Ω); the step-j identification.
- S-46 (R-002): prove or discharge THM37's (H1) multi-size cube class.
- S-49 (R-002, R-003): the geometry and convention [I] items H-303–H-307, H-318(ii), H-321 [I-geo], WC_FULL I1–I9.
- S-51 (R-005): ∇/Hölder/Δ versions of (190).
- S-54 (R-008): complex s and complex U clause (now a P-sketch).
- S-56 (R-010 R2): R- and C-terms written out.
- S-68 (R-020 R3): Balaban's assertion that H′(Z_0) obeys (2.38).

Target 2 (Group B, sourced chain):
- S-103 (R-045): S1 at all scales (sourced single-support bound, joint (U, f)-holomorphy).
- S-92 (R-037, R-039): the large-field coarea Jacobian on non-round level sets (G3_N2 2.6).
- S-96 (R-039): a lower bound on D for the N/D telescoping, or freezing the R-ratio cutoff at x*.
- S-97 (R-040): the bound ‖β_j‖ ≤ M_β beyond the Gaussian majorant.
- S-100 (R-043): the H-191 (FX2) radius at the coarsest scale (else the order-1 + η + 2/3 fallback, still OS-admissible).
- S-106 (Q-050): the H-237 (P5) Gaussian booking in D3.
- S-107 (K-024): the complex-c strip of (Hβ).
- S-83 (R-030): (Gap_f).

## 4. Class (c): needs new mathematics, or is out of scope

- Trust in Balaban's printed proofs and sketches (re-proof is out of scope): S-59 (R-014), S-69 (R-021), S-101 (R-044 W4-G), S-105 (CMP 116 (2.36)), S-118 (ASSEMBLY (G1)–(G3)); also R-013 itself and K-034.
- Scope choices by design: S-110 (K-003, K-004, K-019, K-023); R-025 at L ∉ {13, 15, 17, 21}.
- Not needed by either target: S-88 (H-248 (S3w)), S-94 (R-038 β_j part, no consumer), S-116 (v4 "not needed" list), R-007 (analyticity, unused), ASSEMBLY B-T2.6, B-NT, E13.
- Outside the targets: S-113 (§4.3 Theorem IV inputs L-319, L-320, L-331, (L1), I8; blocked L-332–L-334), S-114 (R-052–R-054; verifiers held), S-119 (O(4), infinite volume, mass gap, uniqueness, OS4: new mathematics).
- Trusted tools: arb interval arithmetic (R-025); Lean certifies finite and algebraic steps only.

## 5. Changes that the new statuses need in paper/ and the repository README (not applied here)

paper/ (line numbers from grep on 2026-10-28):
1. paper/remains.tex l. 152 (trust table row R-031) and l. 256 (Lean row R-031): add Route C for H-089 (C-tr) (SOURCES_CTR + SOURCES_CTR_VERIFY, PASS WITH CORRECTIONS), the new residue (estimate causality H-047 [I]; on-trajectory E_0 uniformity [I], part of R-006 N6), and the Lean history form (LemmaDHist.lean, LemmaDHistNested.lean; lean/VERIFY_LemmaDHist.md). The grade stays "proved relative to listed inputs, verified". Check paper/sources.tex l. 472 and paper/appendix.tex l. 67, l. 78 for the same Route 2 text.
2. paper/remains.tex l. 91 (§10 item 13) and paper/assembly.tex l. 185 (item 13 row): "open" → done (Lean history form, statement check lean/VERIFY_LemmaDHist.md). paper/assembly.tex l. 157 (B-T2.a): "history form open" → done. paper/appendix.tex l. 37: drop "and the history form of the shooting lemmas" from "Not formalized".
3. paper/remains.tex l. 158 (R-037 row): drop "($M_r$)" from the open inputs (exact at r = 1, R-017) and keep the KP step, CMP 102 (189), and H-145 (M-B).
4. paper/remains.tex l. 113 (R-002 row): stale round-9/10 text ("Thm 3.7 … local fixes running", "Thm 3.10 verifier running", "X-PU … not yet applied", "WG_FULL H-209 (I3) rate fix pending"). Replace by the round-11/12 state: THM37, THM39, THM310 PAPER-GRADE relative to tagged inputs; WG_FULL PAPER-GRADE after WG-rate fix 3 (SOURCES_F22_VERIFY condition met; SOURCES_ORDER_CANON_VERIFY2 §8, VERIFY3 1i); THM37 (H1) a new hypothesis; H-071 (AL-c) reduced; X-PU repaired in WG_FULL, not yet in WC_FULL or A1_WALK_FULL.
5. paper/remains.tex l. 58: "(X-PU) … not yet applied" → applied in WG_FULL (l. 304); open in WC_FULL and A1_WALK_FULL.
6. Lean counts: paper/appendix.tex l. 9 ("the full table of 45 files"), l. 295 ("45 files"), paper/remains.tex l. 240 ("The 45 files … 45 imports"). Update after the coordinator's final build decides which new files are imported (59 on disk in this snapshot; LemmaDHist*, LemmaHSteps, N3Steps, AbelianShare have statement checks; Gpy* and H2Box* are still being written).
7. If the paper states R-024's "R after δ_min" or R-046's "C_1^{FX}, κ ≥ 1536 not in the canon" as open, mark them done (canon N-310, N-070, N-330). Grep found neither phrase.

Repository README (~/git/yang_mills/README.md):
1. l. 25: "R-031 (L5): proved relative to listed inputs, verified (round 7)" → add "(C-tr) by Route C, verified with corrections 2026-10-28 (SOURCES_CTR + VERIFY)".
2. l. 46: "lean/: 45 Lean files" → the count after the final build (see paper item 6).
3. No other README line contradicts a new status. The README names R-022, R-023, R-024 open items as open; this sweep closed none of them except R-024's canon-order item.

Other files outside my edit permission that carry stale text (for the author): lean/README.md l. 1, l. 60 ("45 files"); TRUST_LEDGER row K-025 still says "32 lower bounds" (the canon count is 42); INFINITE_VOLUME_FABLE §7.5 item 3 still says L-323 [R, unverified] (PLAN, 2026-10-29 entry).

## 6. Counts

- Status updated (stale status corrected, with citation): 43 items (S-02–S-44), plus one text repair (S-01). By file: TRUST_LEDGER 17 items in 16 places; THEOREM2_PROOF_v4 §10 11 items (with 13 table rows); ASSEMBLY §3 15 items (19 rows and the critical-path sentence).
- Still open: 75 items (S-45–S-119): class (a) 39, class (b) 23, class (c) 12, composite 1 (R-035).
- No grade, binding set, or row count changed. Binding sets stay as in ledger §5, round 12.
