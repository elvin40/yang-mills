IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# S1_TRIAGE — the 68 findings of LEDGER_AUDIT_CLOUD.md against the current TRUST_LEDGER.md

Date: 2026-10-28. Author: Claude (integration of PR #10). The ledger was not edited.

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md not read. Note: the audit discloses that one of its reader agents saw one line of the map file through a grep; the audit states that no finding uses that line.

Object. The audit (PR #10, reports/LEDGER_AUDIT_CLOUD.md) checked the ledger at commit 370a882 (189 lines, before rounds 4–7). The current ledger has 312 lines and the change notes of rounds 4–7. Each finding was checked against the operative row text and the round-7 bullets of §4–§5. Older round text kept in §4–§5 as history was not counted as stale.

Verdicts.
- already-addressed: the current ledger has the fix (or an equal one).
- superseded: a later result changed the row so that the finding no longer applies.
- still-valid: the quoted text or the omission is still in the current ledger. "partly" = part of the finding is fixed.

## Counts

- already-addressed: 17 (rows 1, 2, 3, 4, 8, 9, 12, 14, 26, 46, 47, 49, 51, 52, 63, 66, 67).
- superseded: 6 (rows 7, 10, 22, 43, 55, 62).
- still-valid: 45, of which 6 partly addressed (13, 35, 40, 41, 57, 58).
- Still-valid findings on binding items (from the audit's priority list): 6 (A12/A22 moved to §6 on an unverified file), 11 (B1 "ρ_2 ≤ 4.37"), 13 (p. 249 at A15 and §4.1 step 3), 34 (B15 still lists M2′/M5), 35 (B14 ⇐ B13 at §4.2 step 6; β_j part not on the open list), 58 (§4.2 step 8 "G_1 clause at P-sketch level").

## Table

| # | Row | Verdict | Basis in the current ledger |
|---|---|---|---|
| 1 | §4.1 NONMONO | already-addressed | §4.1 last bullet: "NONMONO is verified (SOURCES_GGAIN_NONMONO_VERIFY)". |
| 2 | §5 C count | already-addressed | Counts now C1–C42 (round 7); the classification line names C24. |
| 3 | C24 format | already-addressed | C24 has five cells (repaired in round 4). |
| 4 | B17 (M1) | already-addressed | B17: "(M1) = C24", closed; §4.2 step 5 lists (M1) = C24. |
| 5 | C14 bound | still-valid | C14 still reads M ≥ 12L(3κ_final/C_1)^{1/d}, C_1 := max(1, C_c). |
| 6 | §6 BOOKKEEPING | still-valid | §6 still heads "Verified readings (SOURCES_BOOKKEEPING)"; no SOURCES_BOOKKEEPING_VERIFY.md exists. |
| 7 | §5 A1w subcount | superseded | §5 was rewritten (rounds 5–7): A1w is a full proof relative to listed inputs; the "A1–A4 verified reductions" subcount is history only. |
| 8 | A3 label | already-addressed | §5 classes A3 as "full proof relative to listed inputs", matching the row. Residual: the row does not name the R1 Schur step [plausible]. |
| 9 | B2 grade | already-addressed | B2: "reduced [R, verified 2026-10-28]"; (I3) [P]. |
| 10 | B4 grade | superseded | B4: PROVED+VERIFIED at fixed j (round 7), beyond the audit's proposed text. |
| 11 | B1 "ρ_2 ≤ 4.37" | still-valid | The B1 statement cell still reads "ρ_2 ≤ 4.37"; the certified bound is ρ_1² ≤ 9.99953. |
| 12 | C3 vs B1 | already-addressed | C3: "(H2) is certified only at L = 13 and at L = 15, 17, 21". |
| 13 | A15/B8/§4.1 p. 249 | still-valid (partly) | B8 no longer cites p. 249. A15 and §4.1 step 3 still cite "p. 249"/"pp. 249, 279"; (2.24) is not tagged p. 259. A15 now names the p. 253 slip. |
| 14 | B3 | already-addressed | B3: reduced to Step B with Steps A, C; verified as a reduction (bracketed 2026-10-28 note). |
| 15 | B1 residue | still-valid | B1 status names no single-sourced residue ((0.4) reading, ghost-domain gauge, arb trusted). |
| 16 | §6 P4 | still-valid | §6 P4 text unchanged ("the check is Lean only"). |
| 17 | Lemma M | still-valid | §4.1 step 2 unchanged; Lemma M has no grade. |
| 18 | §2 trailer | still-valid | Trailer still reads "(A) in full and Lemma 5.1 for m = 2". |
| 19 | X1 source | still-valid | X1 source cell is still "Lüscher–Weisz". |
| 20 | X3 source | still-valid | X3 has no title or pages. |
| 21 | B9 | still-valid | B9 status still "argued; BETA_FP_U has no verifier file". |
| 22 | B7 domain | superseded | B7 is PROVED by Route 2 on true trajectories (round 7); the clamped cube (Route 1) is dropped, and true trajectories carry (c′) + (S). The statement cell still shows the old alternatives. |
| 23 | C17 | still-valid | C17 cost cell unchanged (no log γ^{−2} ≥ 4p). |
| 24 | Lemma D″ Lean | still-valid | No lean/VERIFY_LemmaDDoublePrime.md exists. |
| 25 | A6 | still-valid | A6 status unchanged (off-chain). |
| 26 | B20 (W4) → A16 | already-addressed | B20: "(W4) → A10 (no longer A16)". |
| 27 | B11 "D1 verified" | still-valid | B11 unchanged. |
| 28 | B11 omits B22 | still-valid | B11 still "remaining parts are B12–B20"; §4.2 step 2 has B22. |
| 29 | §6 O2 | still-valid | §6 O2 line unchanged. |
| 30 | B21 vs B19 order | still-valid | B21 still "(else order 2+η)"; B19 says ≤ 1 + η + 2/3. |
| 31 | B20 F2′ deps | still-valid | F2′ deps still omit Lemma F1. |
| 32 | B20 (D) | still-valid | Still "(D) argued [V] in D2C_VERIFY §2". |
| 33 | A15 S3/S4 | still-valid | A15 still cites S3 only. |
| 34 | B15 M2′/M5 | still-valid | B15 and §4.2 step 6 still list M2′, M4, M5; the round-7 list keeps "M2′/M4/M5 (B15)". |
| 35 | B14 | still-valid (partly) | B14 status now names the threshold-history mixed derivative. §4.2 step 6 still "B14 ⇐ B13 + …"; the β_j part is not on the round-7 open list. |
| 36 | B12 | still-valid | B12 unchanged (does not name the frozen map). |
| 37 | B18 | still-valid | B18 still names only B13 for the real C¹ bound. |
| 38 | C16 40ε′ | still-valid | C16 still records 32ε′ ≤ 1 only. |
| 39 | B16 | still-valid | B16 unchanged (M clash; (C1′) form). |
| 40 | B22 | still-valid (partly) | B22 now states θ_K ≥ ½ and κ ≥ 2m_tot; CMP 116 (2.36) is still in no row. |
| 41 | B21 (S) form | still-valid (partly) | F9 alignment applied (not re-verified). The row still writes "D > 1" and omits σ ∈ [16ε, ℓ/8], min diam ≤ σ. |
| 42 | C23 | still-valid | C23 still has the double factor 2^n and "real-c (reduced)" only. |
| 43 | A5 frozen integers | superseded | A5 now says "The C^∞ and all-derivative claims are unused"; T1 uses 7′ through H0-red, and C1 freezes R_j, N. Not checked: that H0-red's Lipschitz bound runs with frozen integers. |
| 44 | §6 (H-hist_C) | still-valid | §6 line unchanged. |
| 45 | A10 Lemma HH | still-valid | A10 depends column keeps "Lemma HH ⇒ (H-hist)" without the UNSUPPORTED θ flag. |
| 46 | A1 "open as A1w" | already-addressed | A1: "the WALK-EXPANSION form is A1w (full proof relative to listed inputs, round 4)". |
| 47 | A2 complex step | already-addressed | A2 is now WC_FULL (four-level chain not needed in that form); I1–I9 include Q̃ = Q_1(U_1), RM distance, (2.11) = (3.156); [I-geom] closed. |
| 48 | A2 rate | still-valid | A2 statement keeps e^{−½δ_0\|b−b′\|} with no δ_A > ½δ_0 caveat. Not checked against WC_FULL's rate. |
| 49 | §4.2 step 7 | already-addressed | Step 7: LOC ⇐ A2 (⇐ (W^c) = WC_FULL …; "A7 is not in its input list"). |
| 50 | 7′ conditions | still-valid | A5 and §4.1 still say "verified (SOURCES_GGAIN_NONMONO_VERIFY)" with no inherited conditions. |
| 51 | B17 (I-V0) | already-addressed | B17: (I-V0) closed (SOURCES_MC_IV0 + VERIFY). |
| 52 | B17 (I-ord) | already-addressed | B17 and §4.2 step 5 list (I-ord) as closed. |
| 53 | A_min caveat | still-valid | §4.2 step 5 has no A_min pairing item. |
| 54 | (M-B) link | still-valid | Still "(M-B) ⇐ C2". |
| 55 | C7 disagreement | superseded | A17 (round 7) proves B′(b) = g_kB(b) on every covered bond, h = 0 off b_0, so Q_VERIFY's reading holds and C9 is not needed at r = 1. |
| 56 | B13 I8 | still-valid | B13's large-field open list still omits I8 (the small-field "N3 KP step" is named). |
| 57 | A7 "[13] not read" | still-valid (partly) | A7 adds "now proved by us in WC_FULL", but still says "p. 13, not read"; A8 says "[13] unread". |
| 58 | A1 G_1 P-sketch | still-valid (partly) | A1 row adds S2 for G_1 closed and WG-G1, but keeps "the G_1 clause at P-sketch level"; §4.2 step 8 still says so. |
| 59 | A1 residue list | still-valid | A1 still names "two unprinted conventions" without [I-a1], [I-geom], C′_1, c_cone. |
| 60 | A1 (3.132) | still-valid | A1 statement keeps the one-scale form. |
| 61 | A1w location | still-valid | A1w source still "Sect. C p. 416". |
| 62 | A1w Ğ_2 | superseded | A1w is now A1_WALK_FULL Theorem A1-W for P = G or G_1 via WG-G/WG-G1; the Thm 3.15/Ğ_2 route is not used. The statement cell still names Thm 3.15/(3.185). |
| 63 | A1w Thm 3.7 | already-addressed | A1w: "sketches Thms 3.9, 3.10 and Thm 3.7 (by reference to CMP 95 Prop. 1.2 / CMP 96 Prop. 2.2)". |
| 64 | §4.2 step 8 A3 | still-valid | Step 8 still "A3 ⇐ … + A18 (R2) + R3–R5", no (H_Q) or R-Δ2. |
| 65 | A4 residue | still-valid | A4 status unchanged. |
| 66 | A18 pieces | already-addressed | A18 status: Lemma Q O(Mα_0) at operator level; σ-localized operators add nothing. The statement cell still has O(α_0). |
| 67 | C24 count | already-addressed | C24: 32 bounds (29 + (2.30), A3_SIGMA 5.1, 1/c_J); A3_SIGMA 5.3 sits on M_1 in canon B15. |
| 68 | §4.2 step 9 | still-valid | Step 9 still says "four [I] items (a)–(d)" (item (a) = A21, proved) and lists "Q_95 vs Q_98" as open. |

## Not done

- No finding was re-checked against the VERIFY files; this triage compares the audit's quotes with the current ledger only.
- No ledger edit. The still-valid rows are candidates for the next consistency pass.
