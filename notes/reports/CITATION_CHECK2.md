# Citation resolution, pass 2

Scope: the 59 "not found" and 41 "ambiguous" rows of CITATION_CHECK.md. Page images read (110 dpi): CMP 109 PDF 1, 12; CMP 116 PDF 13; CMP 119 PDF 21, 36; CMP 95 PDF 18; CMP 99p PDF 40; CMP 99g PDF 4, 9; CMP 122 I PDF 2, 3, 13, 27; CMP 122 II PDF 26, 30, 38.

Key finding: most flagged rows are window artifacts of the first pass. The tag or page belongs to a different paper than the one named in the row, or is an equation of the note itself. The tag exists in the true paper (text layer, or the image where stated).

PDF index = journal page - first page + 1. Offsets verified on images: CMP 109 (249), 116 (1), 119 (243), 122 I (175), 122 II (355), 102 variational (277), 95 (17), 99p (389), 99g (75).

Abbreviations: 99p = propagators in a background field; 99g = regular gauge configurations; 102v = variational problem; 102u = UV stability 3D.

## A. Equation tags (49 rows)

| locator (row paper) | citing files | resolution | action |
|---|---|---|---|
| CMP 102 (0.25), (0.30) | LEMMA_B4 | CMP 109 Sect. 0 tags (p. 257 text layer; 0.30 on p. 258). Row paper wrong: "the bounds (0.25)–(0.30)" follows "expansion (26) of CMP 102" | rewrite, fix 1 |
| CMP 102 (2.1), (2.3) | LEMMA_B4_VERIFY | CMP 119 (2.1) p. 254, (2.3) p. 255 (text layer); table row cites CMP 119 pp. 254– | none |
| CMP 102 (1.100) | SOURCES_MA2 | CMP 122 I (1.100) p. 201 (PDF 27), image. CMP 102 has no (1.100) | none (text says "(1.100) uses ..." next to CMP 122 I) |
| CMP 109 (0.33) | LEMMA_DPRIME_SWEEP | confirmed misprint: CMP 109 Sect. 0 ends at (0.32) on p. 260 (PDF 12 image). CMP 119 p. 248 writes "(0.33) [I]" and means (0.31) | none (file already says so) |
| [I] (0.33) | LEMMA_DPRIME_SWEEP | same misprint, [I] = CMP 109 | none |
| CMP 109 (1.2) | LEMMA_B4_VERIFY | present: p. 260, PDF 12 (image) | none |
| CMP 109 (6.1) | THEOREM2_PROOF | not Balaban: (6.1) is the U3 functional Φ (own) | none |
| CMP 109 (2.20) | SOURCES_W4 | not Balaban: own (2.19)–(2.23) of SOURCES_W4 | none |
| CMP 109 (6.31) | SOURCES_FX_O1 | confirmed misprint: CMP 122 II p. 384 (PDF 30 image) writes "scaling property (6.31) [I]"; reference list (PDF 38 image, p. 392) gives [I] = CMP 109; CMP 109 contents (PDF 1) = Sects. 0–5, no Sect. 6 | none (file already says so) |
| [I] (6.31) | SOURCES_FX_O1, SOURCES_FX_O1_VERIFY | same | none |
| CMP 116 (0.29), (0.31) | LEMMA_B4, LEMMA_DPRIME_SWEEP | CMP 109 (0.29) p. 258, (0.31) p. 259; CMP 116 has no Sect. 0 tags | none |
| CMP 116 (2.7) | SOURCES_CDC(+_VERIFY, Q) | present: p. 13, PDF 13 (image), "(C^{(k)})^{1/2}" series | none |
| CMP 116 (1.73) | SOURCES_FX_VERIFY | CMP 122 II (1.73) p. 380, PDF 26 (image) | none |
| CMP 116 (1.100) | SOURCES_FX_O23 | CMP 122 I (1.100) p. 201, PDF 27 (image) | none |
| CMP 119 (0.19), (0.31) | LEMMA_B4, LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2-4 | CMP 109 (0.19) p. 255-256, (0.31) p. 259 | none |
| CMP 119 (2.46) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2-4 | present: p. 263, PDF 21 (image) | none |
| CMP 119 (3.45) | SOURCES_D3W8_VERIFY | present: p. 278, PDF 36 (image) | none |
| CMP 122 (2.24) | SOURCES_D3 | CMP 119 (2.24) (file says "CMP 119 (2.24)"); window crossed | none |
| CMP 122 I (0.2), (0.6) | SOURCES_D4D5_VERIFY, SOURCES_FX(+_VERIFY) | present: p. 176, PDF 2 (image) | none |
| CMP 122 I (2.4), (2.5) | SOURCES_FX_O23 | CMP 119 (2.4), (2.5) p. 255 (text layer); text says "Balaban (2.4)–(2.5)" after LEMMA_DPRIME_SWEEP | none |
| CMP 122 I (1.52) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v3, v4 | present: p. 187, PDF 13 (image) | none |
| CMP 122 I (1.102) | SOURCES_D4D5_VERIFY, SOURCES_FX_O23, SOURCES_HHOL_LF +2 | present: p. 201, PDF 27 (image) | none |
| CMP 122 II (2.6), (2.9) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2-4 | CMP 119 (2.6) p. 255, (2.9) p. 256 (text layer); heading names CMP 119 | none |
| CMP 122 II (4.3), Lemma/Thm 4.1 | LEMMA_B4_VERIFY | not Balaban: tags of the author's template (line numbers 1631–1802) | none |
| CMP 95 (6.1), Thm/Lemma 3.1, 7.1 | THEOREM2_PROOF, SOURCES_D2, SOURCES_D3W8, U3_VERIFY | not Balaban: own U3 (6.1), Theorem 7.1; SOURCES_D2 own Lemma 3.1 | none |
| CMP 95 (1.101) | SOURCES_CDC, SOURCES_Q(+_VERIFY) | present: p. 34, PDF 18 (image), with (1.99)–(1.103) | none |
| CMP 98 (0.12) | THEOREM2 | CMP 109 (0.12) p. 254 (text layer) | none |
| CMP 98 (1.5) | U3_GAUSSIAN_RG | CMP 109 (1.5) p. 261 | none |
| CMP 98 (1.15) | LEMMA_B4_VERIFY | CMP 99g (1.15) p. 78, PDF 4 (image; text layer lost it); file row says "CMP 99g p. 78" | none |
| CMP 98 (3.15), (3.16), (3.19) | SOURCES_EU | CMP 99p p. 393, PDF 5 (text layer) | none (file says "CMP 99 pp. 392–394") |
| CMP 98 (3.35), (3.36) | SOURCES_EU | CMP 99p p. 396, PDF 8 (text layer) | none (file says "CMP 99 p. 396") |
| CMP 98 Thm/Lemma 1.3 | U3_GAUSSIAN_RG | not Balaban: own Lemma 1.3 | none |
| CMP 99 (6.1), Thm/Lemma 6.1 | U3_GAUSSIAN_RG | not Balaban: own §6 (Theorem 6.1, (6.1)) | none |
| CMP 99 (2.16) | SOURCES_LOC | CMP 116 (2.16), p. 16, PDF 16 (text layer): R_1 bound quoted in SOURCES_LOC; CMP 99 has no (2.16) in 99p text layer | rewrite, fix 6 |
| CMP 99 (3.157) | SOURCES_LOC(+_VERIFY) | present: CMP 99p p. 428, PDF 40 (image) | none |

## B. Page numbers (10 "no" rows outside journal range)

| locator | citing files | resolution | action |
|---|---|---|---|
| CMP 109 p. 384, 385 | SOURCES_FX_O1_VERIFY | CMP 122 II pp. 384–385 (journal); window crossed. PDF 30 image shows p. 384 | none |
| CMP 116 p. 266, 267 | SOURCES_G3(+_VERIFY) | CMP 109 pp. 266–267 ("pp. 266–267 of CMP 109") | none |
| CMP 116 p. 298 | SOURCES_HHIST | CMP 109 p. 298 (PDF 50, "next paper we will construct such localizations" confirmed in text layer) | none |
| CMP 116 p. 380 | SOURCES_FX_VERIFY | CMP 122 II p. 380 (PDF 26) | none |
| CMP 122 I p. 355, 381, 386 | SOURCES_D3, SOURCES_FX_O23, THEOREM2_PROOF_v2-4 | CMP 122 II (text: "II pp. 355–381", "II p. 381", "II p. 386"). Journal range of II = 355–392 | none |
| CMP 98 p. 396 | SOURCES_EU | CMP 99p p. 396 (the (3.35)–(3.36) page) | none |

## C. PDF-index vs journal pages (33 ambiguous rows)

All hits in the citing files carry an explicit "PDF p. N" or "printed p. X = PDF p. N" marker, and every pair matches the offset formula. Examples checked: 109 p. 258 = PDF 10, 260 = 12, 266 = 18, 268 = 20; 119 p. 255 = 13, 259–260 = 17, 270–271 = 28–29, 279 = 37; 122 I p. 176–177 = 2–3, 194 = 20, 200–202 = 26–28; 122 II p. 365–366 = 11–12, 379–380 = 25–26, 383 = 29, 384 = 30, 385–387 = 31–33, 388–391 = 34–37; 102v p. 305, 306, 308, 309 = 29, 30, 32, 33; 98 PDF 3 = p. 19. Action none for all 31 rows below, with two exceptions.

| locator | citing files | resolution | action |
|---|---|---|---|
| CMP 102 p. 29, 30, 33 | SOURCES_MA2(+_VERIFY) | PDF indices of 102v = journal 305, 306, 309 | none |
| CMP 109 p. 2 | SOURCES_SM | artifact: "CMP 109 pp. 270–280" | none |
| CMP 109 p. 10, 12, 18, 20 | SOURCES_HHIST, SOURCES_G3, SOURCES_SM_VERIFY | PDF 10, 12, 18, 20 = journal 258, 260, 266, 268 | none |
| CMP 109 p. 15 | SOURCES_G3_VERIFY | artifact: "(2.14)–(2.15) on p. 15" is CMP 116 p. 15 | none |
| CMP 119 p. 4 | SOURCES_HTHR_VERIFY | NOT marked as PDF. PDF 4 = journal p. 246, the intro with ε_0 = g_0 p_0(g_0) (text layer) | rewrite, fix 5 |
| CMP 119 p. 13, 17, 28, 29, 37 | SOURCES_HHOL_LF(+_VERIFY), SOURCES_HTHR2_VERIFY, SOURCES_D3R | marked PDF; = journal 255, 259, 270, 271, 279 | none |
| CMP 122 I p. 2, 3, 20, 26, 27, 28 | SOURCES_FX_VERIFY, SOURCES_MA(+_VERIFY), SOURCES_FX_O23_VERIFY, SOURCES_MA2 | marked PDF; = journal 176, 177, 194, 200, 201, 202 | none |
| CMP 122 II p. 11, 12, 25, 26, 29, 30, 31, 33, 34, 37 | SOURCES_D3R, SOURCES_MA, SOURCES_FX_VERIFY, SOURCES_HTHR2_VERIFY, SOURCES_FX_O1_VERIFY | marked PDF; = journal 365, 366, 379, 380, 383, 384, 385, 387, 388, 391 | none |
| CMP 122 II p. 38 | SOURCES_HHOL_LF | locator not found in the file (no standalone "38"); extraction artifact | none |
| CMP 98 p. 3 | SOURCES_EU_VERIFY | marked "PDF pp. 3, 15, 17–23 = journal pp."; PDF 3 = p. 19 | none |

## D. Bare or ambiguous paper (8 rows)

| locator | citing files | resolution | action |
|---|---|---|---|
| CMP 102 Thm/Prop/Lemma 1 | LEMMA_B4, SOURCES_VERIFY, SOURCES_MA | LEMMA_B4 and SOURCES_VERIFY: E5 Theorem 1 = 102v p. 279 (variational problem; LEMMA_B4_VERIFY checks "CMP 102 pp. 279–281"). SOURCES_MA hit is "CMP 122 I Prop. 1" (artifact) | rewrite, fixes 2, 3 |
| CMP 102 Thm/Prop/Lemma 2 | LEMMA_B4 | Prop. 2 p. 281 = 102v | rewrite, fix 2 |
| CMP 122 (0.1) | THEOREM2_PROOF | Theorem 1 at p. 355 = 122 II ((0.1) p. 355 per first pass) | rewrite, fix 4 |
| CMP 122 Thm 1 | THEOREM2 | "CMP 122 (1989), p. 355, Theorem 1" = 122 II | rewrite, fix 4 |
| CMP 99 (1.42) | SOURCES_Q | 99g (1.42) p. 83, PDF 9 (image): bound |B| < 2dLα_1 on Λ_j, the regularity condition. 99p has only a reference to another paper's (1.42)-(1.44). Reading inferred from "bounds hold on the closed small-field set"; the paired "(2.20)" is CMP 116 | rewrite, fix 7 |
| CMP 99 (3.35) | SOURCES_CDC(+_VERIFY), SOURCES_EU, U3_GAUSSIAN_RG | 99p p. 396, PDF 8 (regularity condition "(3.35), (3.36)"); all files give p. 396 or "regularity condition" | none |
| CMP 99 Thm 3.1 | BETA_FP_PW, SOURCES_CDC, U3_GAUSSIAN_RG, R2_TELESCOPING | 99p p. 397 (uniform bounds for propagators); SOURCES_CDC: "p. 398–399 Theorems 3.1–3.3 (upper bounds on G, G′)" | rewrite, fix 8 |
| CMP 99 Thm 3.3 | SOURCES_CDC | 99p p. 399 (same sentence) | none (page given) |

## FIX LIST

Replace the string in the named file(s). Nothing else changes.

| # | file | old string | new string |
|---|---|---|---|
| 1 | LEMMA_B4.md | the bounds (0.25)–(0.30) | the bounds (0.25)–(0.30) of CMP 109 |
| 2 | LEMMA_B4.md | CMP 102 Thm 1 p. 279, Prop. 2 p. 281 | CMP 102 (variational problem) Thm 1 p. 279, Prop. 2 p. 281 |
| 3 | SOURCES_VERIFY.md | E5 (CMP 102 Theorem 1) | E5 (CMP 102 variational problem, Theorem 1) |
| 4 | KAPPA_BOUNDED.md, LEMMA_DPRIME.md, SOURCES_N3A.md, THEOREM2_PROOF.md | CMP 122 p. 355 | CMP 122 II p. 355 |
| 4b | THEOREM2.md | CMP 122 (1989), p. 355, Theorem 1 | CMP 122 II (1989), p. 355, Theorem 1 |
| 5 | SOURCES_HTHR_VERIFY.md (3 places) | CMP 119 p. 4 | CMP 119 p. 246 (PDF p. 4) |
| 6 | SOURCES_LOC.md | (E): Balaban's (2.16) as applied to R_2 | (E): CMP 116 (2.16) as applied to R_2 |
| 7 | SOURCES_Q.md | (2.20)/(1.42) bounds | CMP 116 (2.20) / CMP 99 (regular configurations) (1.42) bounds |
| 8 | BETA_FP_PW.md | CMP 99 Thm 3.1 | CMP 99 (propagators) Thm 3.1 |
| 8 | U3_GAUSSIAN_RG.md (2 places) | CMP 99 Theorem 3.1 | CMP 99 (propagators) Theorem 3.1 |
| 8 | R2_TELESCOPING.md, SOURCES_CDC.md, U3_GAUSSIAN_RG.md | CMP 99 Theorems 3.1 | CMP 99 (propagators) Theorems 3.1 |
| 8 | PLAN.md | CMP 99 Thms 3.1 | CMP 99 (propagators) Thms 3.1 |

Fixes 1–5 correct a real ambiguity or a missing page-type marker. Fixes 6–8 are clarity only; 7 rests on inference.

## Counts

100 rows reviewed = 49 tag rows + 43 page rows (10 out-of-range, 33 PDF-index) + 8 bare-paper rows. Tag rows: 15 resolved on page images, 4 are the 2 confirmed misprints, 30 are window artifacts or the note's own equations. Page rows: 43 resolved by offset or artifact analysis. Bare-paper rows: 8 resolved. Rewrites: 10 fixes, 12 strings. Unresolved: 0 (CMP 122 II p. 38 in SOURCES_HHOL_LF has no matching text in the file, treated as an extraction artifact; the (1.42) reading is inferred).
