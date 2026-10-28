# Citation resolution check

Method: regex over 108 files (SOURCES_*, THEOREM2*, ASSEMBLY*, H2_*, KAPPA_BOUNDED*, B2_TWOSTEP*, U3_*, BETA_FP*, LEMMA_*); locators taken from the 100 characters after each "CMP <vol>" mention (up to the next CMP mention or sentence end), plus "(x.y) [I]" bracket forms. Eq tags searched as "(tag)" in balaban/*.txt; journal page = first page + form-feed index. "yes" = tag/page exists in the candidate paper text; a tag found only as a reference (not a definition) still counts as found. Page references: range check only. Mapping: 99p = propagators in background field (389-434), 99g = regular gauge configurations (75-102), 102u = UV stability 3D (255-275), 102v = variational problem (277-309), 122I/122II. Bare "CMP 99/102/122" tested against both papers: yes only if exactly one contains it. "[I]" tested against CMP 109 and CMP 122 I. Heuristic: window may attach an unrelated nearby locator; mentions of CMP 31/42/77/85/89/113/114/199 are outside the 12 PDFs and skipped.

| paper | locator | citing file(s) | resolves | note |
|---|---|---|---|---|
| CMP 102 | (0.25) | LEMMA_B4 | no | not found in text layer; page image needed |
| CMP 102 | (0.30) | LEMMA_B4 | no | not found in text layer; page image needed |
| CMP 102 | (2.1) | LEMMA_B4_VERIFY | no | not found in text layer; page image needed; bare string "2.1" (no parentheses) appears on journal p. 289,308 |
| CMP 102 | (2.3) | LEMMA_B4_VERIFY | no | not found in text layer; page image needed |
| CMP 102 | (1.100) | SOURCES_MA2 | no | not found in text layer; page image needed |
| CMP 102 | p. 29 | SOURCES_MA2 | ambiguous | outside journal range(s) 102u 255-275, 102v 277-309; value fits a PDF-page index (1-34), so may be a PDF page not a journal page; pp.  |
| CMP 102 | p. 30 | SOURCES_MA2_VERIFY | ambiguous | outside journal range(s) 102u 255-275, 102v 277-309; value fits a PDF-page index (1-34), so may be a PDF page not a journal page; pp.  |
| CMP 102 | p. 33 | SOURCES_MA2_VERIFY | ambiguous | outside journal range(s) 102u 255-275, 102v 277-309; value fits a PDF-page index (1-34), so may be a PDF page not a journal page; pp.  |
| CMP 102 | p. 278 | U3_LEMMA51 | yes | only in 102v; bare/ambiguous citation form |
| CMP 102 | p. 279 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_MA2 | yes | only in 102v; bare/ambiguous citation form |
| CMP 102 | p. 280 | LEMMA_B4_VERIFY | yes | only in 102v; bare/ambiguous citation form |
| CMP 102 | p. 281 | LEMMA_B4, LEMMA_B4_VERIFY | yes | only in 102v; bare/ambiguous citation form |
| CMP 102 | p. 305 | SOURCES_MA2 | yes | only in 102v; bare/ambiguous citation form |
| CMP 102 | p. 306 | SOURCES_MA2_VERIFY | yes | only in 102v; bare/ambiguous citation form |
| CMP 102 | p. 309 | SOURCES_MA2_VERIFY | yes | only in 102v; bare/ambiguous citation form |
| CMP 102 | Thm/Prop/Lemma 1 | LEMMA_B4, SOURCES_MA, SOURCES_VERIFY | ambiguous | found in 102u and 102v; pp. 102u: 257,258,259,272,274; 102v: 279,280,281,299,303 |
| CMP 102 | Thm/Prop/Lemma 2 | LEMMA_B4 | ambiguous | found in 102u and 102v; pp. 102u: 272; 102v: 278,280,281,289,290 |
| CMP 109 | (0.11) | LEMMA_B4, U3_VERIFY | yes | journal p. 253,254 |
| CMP 109 | (0.12) | U3_GAUSSIAN_RG, U3_VERIFY | yes | journal p. 254 |
| CMP 109 | (0.14) | LEMMA_B4, LEMMA_B4_VERIFY, U3_GAUSSIAN_RG +1 more | yes | journal p. 254 |
| CMP 109 | (0.15) | SOURCES_D2, SOURCES_D4D5, SOURCES_D4D5_VERIFY | yes | journal p. 254,255 |
| CMP 109 | (0.16) | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D2 +1 more | yes | journal p. 255 |
| CMP 109 | (0.17) | SOURCES_D1, SOURCES_D2C, SOURCES_D3 +3 more | yes | journal p. 255,256,258,264 |
| CMP 109 | (0.18) | THEOREM2_PROOF_v2, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | yes | journal p. 255,256,259 |
| CMP 109 | (0.19) | LEMMA_B4, SOURCES_D1, SOURCES_D2C +2 more | yes | journal p. 255,256,258 |
| CMP 109 | (0.20) | LEMMA_B4_VERIFY, SOURCES_D2, SOURCES_N3A +4 more | yes | journal p. 259,264 |
| CMP 109 | (0.21) | U3_GAUSSIAN_RG | yes | journal p. 256 |
| CMP 109 | (0.22) | LEMMA_B4_VERIFY, U3_GAUSSIAN_RG | yes | journal p. 256,259 |
| CMP 109 | (0.23) | LEMMA_B4_VERIFY, SOURCES_D2, U3_GAUSSIAN_RG | yes | journal p. 256,258 |
| CMP 109 | (0.24) | LEMMA_B4_VERIFY | yes | journal p. 257,258,259 |
| CMP 109 | (0.25) | LEMMA_B4_VERIFY, SOURCES_D3W8 | yes | journal p. 257,258 |
| CMP 109 | (0.29) | LEMMA_B4_VERIFY, SOURCES_D2 | yes | journal p. 258,259 |
| CMP 109 | (0.30) | SOURCES_D2 | yes | journal p. 258 |
| CMP 109 | (0.31) | ASSEMBLY, LEMMA_DPRIME_SWEEP | yes | journal p. 259 |
| CMP 109 | (0.32) | LEMMA_DPRIME_SWEEP | yes | journal p. 260 |
| CMP 109 | (0.33) | LEMMA_DPRIME_SWEEP | no | not found in text layer; page image needed |
| CMP 109 | (0.2) | SOURCES_MA | yes | journal p. 252 |
| CMP 109 | (0.3) | LEMMA_B4_VERIFY, U3_VERIFY | yes | journal p. 252 |
| CMP 109 | (0.4) | BETA_FP_H, BETA_FP_VERIFY, H2_CERTIFY_VERIFY +6 more | yes | journal p. 253,254 |
| CMP 109 | (0.8) | U3_VERIFY | yes | journal p. 253 |
| CMP 109 | (1.1) | LEMMA_B4, SOURCES_D1, SOURCES_D2 | yes | journal p. 260,264 |
| CMP 109 | (1.2) | LEMMA_B4_VERIFY | no | not found in text layer; page image needed |
| CMP 109 | (1.3) | SOURCES_D1, THEOREM2, THEOREM2_PROOF +4 more | yes | journal p. 260,261,262,263,264,268 |
| CMP 109 | (1.4) | U3_GAUSSIAN_RG | yes | journal p. 260,261,267 |
| CMP 109 | (1.5) | SOURCES_D1, THEOREM2, THEOREM2_PROOF +4 more | yes | journal p. 261,262 |
| CMP 109 | (1.8) | SOURCES_D2, SOURCES_D3W8 | yes | journal p. 261,262 |
| CMP 109 | (1.9) | LEMMA_DPRIME_SWEEP | yes | journal p. 261,272 |
| CMP 109 | (2.1) | SOURCES_D2, SOURCES_G3_VERIFY | yes | journal p. 265,266,267,268,269 |
| CMP 109 | (2.2) | SOURCES_D2 | yes | journal p. 265 |
| CMP 109 | (2.3) | SOURCES_D2 | yes | journal p. 265 |
| CMP 109 | (2.6) | LEMMA_DPRIME_SWEEP, SOURCES_D1, SOURCES_D2_VERIFY | yes | journal p. 266 |
| CMP 109 | (2.9) | LEMMA_B4, LEMMA_DPRIME_SWEEP, SOURCES_D2 +8 more | yes | journal p. 266 |
| CMP 109 | (4.7) | SOURCES_HTHR2 | yes | journal p. 283 |
| CMP 109 | (4.9) | SOURCES_HTHR2 | yes | journal p. 283,289 |
| CMP 109 | (5.1) | SOURCES_D2, SOURCES_D2_VERIFY | yes | journal p. 293 |
| CMP 109 | (5.7) | LEMMA_B4_VERIFY | yes | journal p. 293 |
| CMP 109 | (6.1) | THEOREM2_PROOF | no | not found in text layer; page image needed |
| CMP 109 | (1.10) | SOURCES_HTHR2_VERIFY | yes | journal p. 261,262,263 |
| CMP 109 | (1.13) | SOURCES_HTHR2 | yes | journal p. 262 |
| CMP 109 | (1.16) | SOURCES_HTHR2_VERIFY | yes | journal p. 262 |
| CMP 109 | (1.18) | LEMMA_B4_VERIFY, LEMMA_DPRIME_SWEEP, SOURCES_D2 +3 more | yes | journal p. 263,269,270,271,272,280 |
| CMP 109 | (1.20) | LEMMA_B4_VERIFY | yes | journal p. 264,268 |
| CMP 109 | (1.22) | LEMMA_B4, LEMMA_B4_VERIFY, THEOREM2_PROOF_v2 +3 more | yes | journal p. 264,268 |
| CMP 109 | (2.10) | SOURCES_D1, SOURCES_D2, SOURCES_Q +1 more | yes | journal p. 267 |
| CMP 109 | (2.11) | SOURCES_D1 | yes | journal p. 267 |
| CMP 109 | (2.12) | SOURCES_Q, SOURCES_SM_VERIFY, SOURCES_W4 | yes | journal p. 268,269,270 |
| CMP 109 | (2.13) | LEMMA_B4, SOURCES_Q | yes | journal p. 268,269,298 |
| CMP 109 | (2.14) | SOURCES_G3_VERIFY | yes | journal p. 268 |
| CMP 109 | (2.15) | SOURCES_D2_VERIFY, SOURCES_G3_VERIFY | yes | journal p. 268 |
| CMP 109 | (2.20) | SOURCES_W4 | no | not found in text layer; page image needed |
| CMP 109 | (2.23) | SOURCES_W4 | yes | journal p. 283 |
| CMP 109 | (3.14) | SOURCES_W4 | yes | journal p. 272,273 |
| CMP 109 | (3.34) | SOURCES_D3W8, SOURCES_W4 | yes | journal p. 277,280,281,290 |
| CMP 109 | (3.54) | SOURCES_D3W8, SOURCES_SM | yes | journal p. 280 |
| CMP 109 | (4.16) | SOURCES_D2_VERIFY | yes | journal p. 285 |
| CMP 109 | (4.41) | SOURCES_GGAIN_VERIFY | yes | journal p. 291,292,293 |
| CMP 109 | (4.45) | SOURCES_D2_VERIFY, SOURCES_GGAIN_VERIFY | yes | journal p. 292,298 |
| CMP 109 | (5.10) | SOURCES_D2_VERIFY | yes | journal p. 293 |
| CMP 109 | (5.12) | LEMMA_B4, LEMMA_B4_VERIFY | yes | journal p. 293,294 |
| CMP 109 | (5.15) | LEMMA_B4_VERIFY | yes | journal p. 293,294 |
| CMP 109 | (5.32) | LEMMA_B4_VERIFY | yes | journal p. 296 |
| CMP 109 | (5.36) | LEMMA_B4_VERIFY | yes | journal p. 297 |
| CMP 109 | (5.37) | LEMMA_B4_VERIFY | yes | journal p. 297,298 |
| CMP 109 | (5.41) | SOURCES_D2 | yes | journal p. 297 |
| CMP 109 | (5.42) | BETA_FP_PW, LEMMA_B4, LEMMA_B4_VERIFY +1 more | yes | journal p. 298 |
| CMP 109 | (6.31) | SOURCES_FX_O1 | no | not found in text layer; page image needed |
| CMP 109 | p. 2 | SOURCES_SM | ambiguous | outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp.  |
| CMP 109 | p. 10 | SOURCES_HHIST | ambiguous | outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp.  |
| CMP 109 | p. 12 | SOURCES_HHIST | ambiguous | outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp.  |
| CMP 109 | p. 15 | SOURCES_G3_VERIFY | ambiguous | outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp.  |
| CMP 109 | p. 18 | SOURCES_G3 | ambiguous | outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp.  |
| CMP 109 | p. 20 | SOURCES_HHIST, SOURCES_SM_VERIFY | ambiguous | outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp.  |
| CMP 109 | p. 251 | LEMMA_B4, LEMMA_B4_VERIFY, THEOREM2_PROOF_v2 +3 more | yes | in range 249-301 |
| CMP 109 | p. 252 | LEMMA_B4, LEMMA_B4_VERIFY, THEOREM2_PROOF_v2 +5 more | yes | in range 249-301 |
| CMP 109 | p. 253 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 249-301 |
| CMP 109 | p. 254 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D4D5_VERIFY +3 more | yes | in range 249-301 |
| CMP 109 | p. 255 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D2C +2 more | yes | in range 249-301 |
| CMP 109 | p. 256 | ASSEMBLY, LEMMA_B4, LEMMA_B4_VERIFY +4 more | yes | in range 249-301 |
| CMP 109 | p. 257 | LEMMA_B4_VERIFY, SOURCES_FX_O1, SOURCES_FX_O1_VERIFY +1 more | yes | in range 249-301 |
| CMP 109 | p. 258 | LEMMA_B4_VERIFY, SOURCES_D2, SOURCES_GGAIN_VERIFY +3 more | yes | in range 249-301 |
| CMP 109 | p. 259 | ASSEMBLY, LEMMA_DPRIME, LEMMA_DPRIME_SWEEP +6 more | yes | in range 249-301 |
| CMP 109 | p. 260 | LEMMA_B4, LEMMA_B4_VERIFY, LEMMA_DPRIME_SWEEP +3 more | yes | in range 249-301 |
| CMP 109 | p. 261 | THEOREM2 | yes | in range 249-301 |
| CMP 109 | p. 262 | SOURCES_HTHR2, SOURCES_HTHR2_VERIFY | yes | in range 249-301 |
| CMP 109 | p. 263 | ASSEMBLY, LEMMA_B4_VERIFY, SOURCES_D2 +12 more | yes | in range 249-301 |
| CMP 109 | p. 264 | ASSEMBLY, LEMMA_B4, LEMMA_B4_VERIFY +14 more | yes | in range 249-301 |
| CMP 109 | p. 265 | SOURCES_D1, SOURCES_FX_R2 | yes | in range 249-301 |
| CMP 109 | p. 266 | LEMMA_B4, SOURCES_D1, SOURCES_D2 +7 more | yes | in range 249-301 |
| CMP 109 | p. 267 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D2_VERIFY +5 more | yes | in range 249-301 |
| CMP 109 | p. 268 | LEMMA_B4, SOURCES_D2, SOURCES_D3W8 +5 more | yes | in range 249-301 |
| CMP 109 | p. 269 | SOURCES_D2, SOURCES_D2_VERIFY, SOURCES_W4 | yes | in range 249-301 |
| CMP 109 | p. 270 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D2_VERIFY +1 more | yes | in range 249-301 |
| CMP 109 | p. 271 | SOURCES_D2 | yes | in range 249-301 |
| CMP 109 | p. 280 | SOURCES_D2, SOURCES_D3R, SOURCES_D3R_VERIFY +4 more | yes | in range 249-301 |
| CMP 109 | p. 281 | SOURCES_D2C | yes | in range 249-301 |
| CMP 109 | p. 283 | SOURCES_D2C | yes | in range 249-301 |
| CMP 109 | p. 291 | SOURCES_D2C, SOURCES_GGAIN_VERIFY | yes | in range 249-301 |
| CMP 109 | p. 292 | LEMMA_B4 | yes | in range 249-301 |
| CMP 109 | p. 293 | LEMMA_B4_VERIFY | yes | in range 249-301 |
| CMP 109 | p. 294 | LEMMA_B4_VERIFY | yes | in range 249-301 |
| CMP 109 | p. 296 | LEMMA_B4_VERIFY | yes | in range 249-301 |
| CMP 109 | p. 297 | LEMMA_B4_VERIFY | yes | in range 249-301 |
| CMP 109 | p. 298 | ASSEMBLY, KAPPA_BOUNDED, LEMMA_B4 +9 more | yes | in range 249-301 |
| CMP 109 | p. 384 | SOURCES_FX_O1_VERIFY | no | outside journal range(s) 109 249-301 |
| CMP 109 | p. 385 | SOURCES_FX_O1_VERIFY | no | outside journal range(s) 109 249-301 |
| CMP 109 | Thm/Prop/Lemma 1 | LEMMA_B4, LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2 +2 more | yes | journal p. 259,260,264 |
| CMP 109 | Thm/Prop/Lemma 2 | LEMMA_B4, LEMMA_DPRIME_SWEEP, SOURCES_D3 +1 more | yes | journal p. 259,260,265 |
| CMP 109 | Thm/Prop/Lemma 3 | LEMMA_B4, LEMMA_DPRIME_SWEEP, SOURCES_D2 +5 more | yes | journal p. 264,269 |
| CMP 109 | Thm/Prop/Lemma 9 | SOURCES_MA2_VERIFY | yes | journal p. 271 |
| CMP 116 | (0.29) | LEMMA_B4 | no | not found in text layer; page image needed |
| CMP 116 | (0.31) | LEMMA_DPRIME_SWEEP | no | not found in text layer; page image needed |
| CMP 116 | (1.3) | SOURCES_D3W8_VERIFY | yes | journal p. 2,4,5 |
| CMP 116 | (1.4) | SOURCES_D3W8_VERIFY | yes | journal p. 2,4,5,6 |
| CMP 116 | (1.6) | SOURCES_D2, SOURCES_D2_VERIFY, SOURCES_D3W8 | yes | journal p. 3 |
| CMP 116 | (1.7) | SOURCES_D2, SOURCES_D2_VERIFY, SOURCES_D3W8 | yes | journal p. 3,5 |
| CMP 116 | (2.1) | SOURCES_GGAIN_VERIFY, SOURCES_HTHR_VERIFY | yes | journal p. 12,14 |
| CMP 116 | (2.3) | SOURCES_G3, SOURCES_G3_VERIFY, SOURCES_HTHR2_VERIFY +2 more | yes | journal p. 12,14 |
| CMP 116 | (2.5) | SOURCES_Q | yes | journal p. 12 |
| CMP 116 | (2.6) | SOURCES_CDC | yes | journal p. 13,14 |
| CMP 116 | (2.7) | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_Q +1 more | no | not found in text layer; page image needed |
| CMP 116 | (2.9) | SOURCES_FX, SOURCES_GGAIN_VERIFY | yes | journal p. 14 |
| CMP 116 | (1.19) | SOURCES_GGAIN, SOURCES_GGAIN_VERIFY | yes | journal p. 6,10 |
| CMP 116 | (1.20) | SOURCES_GGAIN_VERIFY | yes | journal p. 6 |
| CMP 116 | (1.21) | SOURCES_HHOL, SOURCES_SM, SOURCES_W4 | yes | journal p. 7,8 |
| CMP 116 | (1.22) | SOURCES_HHOL, SOURCES_SM_VERIFY | yes | journal p. 7 |
| CMP 116 | (1.24) | SOURCES_GGAIN, SOURCES_HHOL, SOURCES_SM | yes | journal p. 7,8 |
| CMP 116 | (1.26) | SOURCES_FX_R2, SOURCES_HTHR2, SOURCES_W4 | yes | journal p. 8,9 |
| CMP 116 | (1.29) | SOURCES_SM | yes | journal p. 8,9 |
| CMP 116 | (1.31) | SOURCES_FX_O1 | yes | journal p. 9 |
| CMP 116 | (1.34) | LEMMA_DPRIME_SWEEP, SOURCES_GGAIN_VERIFY | yes | journal p. 9,11 |
| CMP 116 | (1.36) | SOURCES_W4 | yes | journal p. 9,10,11,16 |
| CMP 116 | (1.38) | SOURCES_HHOL | yes | journal p. 10,11 |
| CMP 116 | (1.39) | SOURCES_GGAIN | yes | journal p. 10,11 |
| CMP 116 | (1.40) | SOURCES_HHOL | yes | journal p. 10,11 |
| CMP 116 | (1.43) | SOURCES_GGAIN | yes | journal p. 11,16 |
| CMP 116 | (1.73) | SOURCES_FX_VERIFY | no | not found in text layer; page image needed |
| CMP 116 | (2.12) | SOURCES_FX, SOURCES_W4 | yes | journal p. 14,20 |
| CMP 116 | (2.13) | SOURCES_FX, SOURCES_GGAIN_VERIFY, SOURCES_W4 | yes | journal p. 14,15,20 |
| CMP 116 | (2.14) | SOURCES_GGAIN_VERIFY, SOURCES_HHOL, SOURCES_Q | yes | journal p. 15,17,19,20,21 |
| CMP 116 | (2.15) | SOURCES_Q | yes | journal p. 15,16,17 |
| CMP 116 | (2.16) | SOURCES_GGAIN, SOURCES_Q | yes | journal p. 16 |
| CMP 116 | (2.17) | SOURCES_HHOL | yes | journal p. 16 |
| CMP 116 | (2.18) | SOURCES_W4 | yes | journal p. 16 |
| CMP 116 | (2.19) | SOURCES_SM_VERIFY | yes | journal p. 16 |
| CMP 116 | (2.20) | SOURCES_SM_VERIFY | yes | journal p. 16 |
| CMP 116 | (2.22) | SOURCES_G3, SOURCES_Q | yes | journal p. 16 |
| CMP 116 | (2.23) | SOURCES_Q, SOURCES_Q_VERIFY | yes | journal p. 17 |
| CMP 116 | (2.24) | SOURCES_Q_VERIFY | yes | journal p. 17 |
| CMP 116 | (2.26) | SOURCES_GGAIN, SOURCES_GGAIN_VERIFY, SOURCES_Q | yes | journal p. 17,18 |
| CMP 116 | (2.27) | SOURCES_G3, SOURCES_GGAIN | yes | journal p. 18,20,21 |
| CMP 116 | (2.28) | SOURCES_HHOL | yes | journal p. 12,18 |
| CMP 116 | (2.31) | SOURCES_G3, SOURCES_HHOL | yes | journal p. 18 |
| CMP 116 | (2.32) | SOURCES_G3 | yes | journal p. 18,20 |
| CMP 116 | (2.38) | SOURCES_FX, SOURCES_FX_O1, SOURCES_FX_R2 | yes | journal p. 20 |
| CMP 116 | (2.41) | SOURCES_FX, SOURCES_GGAIN, SOURCES_HHOL | yes | journal p. 21 |
| CMP 116 | (1.100) | SOURCES_FX_O23 | no | not found in text layer; page image needed |
| CMP 116 | p. 1 | SOURCES_LOC, SOURCES_W4 | yes | in range 1-22 |
| CMP 116 | p. 3 | SOURCES_D2, SOURCES_D2_VERIFY, SOURCES_D3R +3 more | yes | in range 1-22 |
| CMP 116 | p. 6 | SOURCES_GGAIN_VERIFY | yes | in range 1-22 |
| CMP 116 | p. 7 | SOURCES_GGAIN, SOURCES_GGAIN_VERIFY, SOURCES_HHOL +4 more | yes | in range 1-22 |
| CMP 116 | p. 8 | SOURCES_GGAIN, SOURCES_HHOL, SOURCES_HHOL_VERIFY +2 more | yes | in range 1-22 |
| CMP 116 | p. 11 | SOURCES_GGAIN_VERIFY | yes | in range 1-22 |
| CMP 116 | p. 12 | SOURCES_G3, SOURCES_G3_VERIFY, SOURCES_HTHR_VERIFY +2 more | yes | in range 1-22 |
| CMP 116 | p. 13 | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_Q +1 more | yes | in range 1-22 |
| CMP 116 | p. 14 | SOURCES_LOC | yes | in range 1-22 |
| CMP 116 | p. 15 | SOURCES_GGAIN_VERIFY, SOURCES_HHOL, SOURCES_HHOL_VERIFY +1 more | yes | in range 1-22 |
| CMP 116 | p. 16 | SOURCES_FX_R2, SOURCES_G3, SOURCES_G3_VERIFY +2 more | yes | in range 1-22 |
| CMP 116 | p. 17 | SOURCES_GGAIN_VERIFY, SOURCES_Q, SOURCES_Q_VERIFY | yes | in range 1-22 |
| CMP 116 | p. 18 | SOURCES_G3, SOURCES_G3_VERIFY, SOURCES_GGAIN | yes | in range 1-22 |
| CMP 116 | p. 20 | SOURCES_GGAIN | yes | in range 1-22 |
| CMP 116 | p. 21 | SOURCES_FX_R2, SOURCES_GGAIN, SOURCES_W4 | yes | in range 1-22 |
| CMP 116 | p. 22 | SOURCES_LOC | yes | in range 1-22 |
| CMP 116 | p. 266 | SOURCES_G3, SOURCES_G3_VERIFY | no | outside journal range(s) 116 1-22 |
| CMP 116 | p. 267 | SOURCES_G3_VERIFY | no | outside journal range(s) 116 1-22 |
| CMP 116 | p. 298 | SOURCES_HHIST | no | outside journal range(s) 116 1-22 |
| CMP 116 | p. 380 | SOURCES_FX_VERIFY | no | outside journal range(s) 116 1-22 |
| CMP 116 | Thm/Prop/Lemma 1 | SOURCES_GGAIN_VERIFY, SOURCES_SM, SOURCES_W4 | yes | journal p. 9,22 |
| CMP 116 | Thm/Prop/Lemma 2 | SOURCES_FX, SOURCES_FX_O1 | yes | journal p. 11,21 |
| CMP 116 | Thm/Prop/Lemma 3 | SOURCES_FX, SOURCES_FX_R2 | yes | journal p. 1,3,14,20 |
| CMP 116 | Thm/Prop/Lemma 3.1 | SOURCES_D2_VERIFY | yes | journal p. 3 |
| CMP 119 | (0.19) | LEMMA_B4 | no | not found in text layer; page image needed |
| CMP 119 | (0.31) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | no | not found in text layer; page image needed |
| CMP 119 | (0.33) | LEMMA_DPRIME_SWEEP | yes | journal p. 246 |
| CMP 119 | (2.3) | LEMMA_B4 | yes | journal p. 255 |
| CMP 119 | (2.4) | LEMMA_DPRIME_SWEEP, SOURCES_HHOL_LF, SOURCES_HHOL_LF_VERIFY | yes | journal p. 255 |
| CMP 119 | (2.5) | LEMMA_DPRIME_SWEEP, SOURCES_HHOL_LF | yes | journal p. 255 |
| CMP 119 | (2.6) | LEMMA_DPRIME_SWEEP, SOURCES_HHOL_LF, SOURCES_HHOL_LF_VERIFY +5 more | yes | journal p. 255 |
| CMP 119 | (2.7) | LEMMA_DPRIME_SWEEP | yes | journal p. 255 |
| CMP 119 | (2.8) | LEMMA_DPRIME_SWEEP | yes | journal p. 256 |
| CMP 119 | (2.9) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | yes | journal p. 256 |
| CMP 119 | (3.4) | SOURCES_HTHR | yes | journal p. 265 |
| CMP 119 | (3.7) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | yes | journal p. 266,276 |
| CMP 119 | (3.8) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | yes | journal p. 266 |
| CMP 119 | (1.27) | SOURCES_HHIST2 | yes | journal p. 253,259 |
| CMP 119 | (2.12) | SOURCES_D2, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | yes | journal p. 256,272,273,275 |
| CMP 119 | (2.17) | SOURCES_D3, SOURCES_D4D5, SOURCES_D4D5_VERIFY | yes | journal p. 257 |
| CMP 119 | (2.18) | SOURCES_D4D5_VERIFY | yes | journal p. 257,263 |
| CMP 119 | (2.22) | SOURCES_D3, SOURCES_D4D5 | yes | journal p. 258 |
| CMP 119 | (2.23) | LEMMA_B4_VERIFY, SOURCES_D2, SOURCES_D3 +4 more | yes | journal p. 258,259 |
| CMP 119 | (2.24) | SOURCES_D2, SOURCES_D3, SOURCES_D3W8_VERIFY +1 more | yes | journal p. 279 |
| CMP 119 | (2.25) | SOURCES_D2, SOURCES_D2_VERIFY, SOURCES_D3 +2 more | yes | journal p. 259,260 |
| CMP 119 | (2.27) | SOURCES_D3W8 | yes | journal p. 259,260,263,271,272,274 |
| CMP 119 | (2.28) | SOURCES_D2, SOURCES_D3W8, SOURCES_HTHR2 +2 more | yes | journal p. 259 |
| CMP 119 | (2.29) | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D4D5 +1 more | yes | journal p. 260,274,275,282 |
| CMP 119 | (2.30) | SOURCES_D2, SOURCES_D2_VERIFY, SOURCES_D3 +2 more | yes | journal p. 260 |
| CMP 119 | (2.31) | LEMMA_DPRIME_SWEEP, SOURCES_D3, SOURCES_D3_VERIFY +4 more | yes | journal p. 260 |
| CMP 119 | (2.32) | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_VERIFY | yes | journal p. 260,270,274 |
| CMP 119 | (2.41) | SOURCES_D3 | yes | journal p. 261,262,263 |
| CMP 119 | (2.42) | SOURCES_D3, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | yes | journal p. 261,262,263,277,278 |
| CMP 119 | (2.44) | LEMMA_DPRIME_SWEEP | yes | journal p. 263,283 |
| CMP 119 | (2.46) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | no | not found in text layer; page image needed |
| CMP 119 | (3.12) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | yes | journal p. 267 |
| CMP 119 | (3.13) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | yes | journal p. 267,280 |
| CMP 119 | (3.25) | SOURCES_D3R, SOURCES_D3R_VERIFY, SOURCES_D3W8_VERIFY | yes | journal p. 270,279 |
| CMP 119 | (3.26) | SOURCES_W4 | yes | journal p. 275,277,279 |
| CMP 119 | (3.27) | SOURCES_D3W8_VERIFY | yes | journal p. 271,276,277 |
| CMP 119 | (3.28) | SOURCES_D3W8 | yes | journal p. 272,274,275,277,279,280 |
| CMP 119 | (3.29) | SOURCES_D3W8 | yes | journal p. 272,276 |
| CMP 119 | (3.30) | SOURCES_D3W8 | yes | journal p. 272,273,274 |
| CMP 119 | (3.37) | SOURCES_D3W8, SOURCES_D3W8_VERIFY | yes | journal p. 274,275,277,278,279 |
| CMP 119 | (3.45) | SOURCES_D3W8_VERIFY | no | not found in text layer; page image needed |
| CMP 119 | (3.47) | SOURCES_D3W8_VERIFY, SOURCES_W4 | yes | journal p. 278,279 |
| CMP 119 | (3.58) | LEMMA_B4, LEMMA_B4_VERIFY | yes | journal p. 282 |
| CMP 119 | (3.61) | LEMMA_B4, LEMMA_B4_VERIFY | yes | journal p. 282,283 |
| CMP 119 | (3.68) | LEMMA_DPRIME_SWEEP | yes | journal p. 284 |
| CMP 119 | p. 4 | SOURCES_HTHR_VERIFY | ambiguous | outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp.  |
| CMP 119 | p. 13 | SOURCES_HHOL_LF, SOURCES_HHOL_LF_VERIFY | ambiguous | outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp.  |
| CMP 119 | p. 17 | SOURCES_HTHR2_VERIFY | ambiguous | outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp.  |
| CMP 119 | p. 28 | SOURCES_D3R | ambiguous | outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp.  |
| CMP 119 | p. 29 | SOURCES_D3R | ambiguous | outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp.  |
| CMP 119 | p. 37 | SOURCES_D3R | ambiguous | outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp.  |
| CMP 119 | p. 248 | LEMMA_DPRIME_SWEEP, SOURCES_HTHR, THEOREM2_PROOF_v2 +2 more | yes | in range 243-285 |
| CMP 119 | p. 251 | SOURCES_HTHR | yes | in range 243-285 |
| CMP 119 | p. 254 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 243-285 |
| CMP 119 | p. 255 | LEMMA_B4, LEMMA_B4_VERIFY, LEMMA_DPRIME_SWEEP +5 more | yes | in range 243-285 |
| CMP 119 | p. 256 | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | yes | in range 243-285 |
| CMP 119 | p. 257 | SOURCES_D3 | yes | in range 243-285 |
| CMP 119 | p. 258 | LEMMA_B4_VERIFY | yes | in range 243-285 |
| CMP 119 | p. 259 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D3W8 +3 more | yes | in range 243-285 |
| CMP 119 | p. 260 | LEMMA_B4, LEMMA_B4_VERIFY, LEMMA_DPRIME_SWEEP +4 more | yes | in range 243-285 |
| CMP 119 | p. 262 | LEMMA_B4, LEMMA_B4_VERIFY, LEMMA_DPRIME_SWEEP +5 more | yes | in range 243-285 |
| CMP 119 | p. 263 | LEMMA_DPRIME_SWEEP | yes | in range 243-285 |
| CMP 119 | p. 266 | LEMMA_DPRIME_SWEEP | yes | in range 243-285 |
| CMP 119 | p. 267 | LEMMA_DPRIME_SWEEP | yes | in range 243-285 |
| CMP 119 | p. 270 | LEMMA_DPRIME_SWEEP, SOURCES_D3R, SOURCES_D3R_VERIFY +4 more | yes | in range 243-285 |
| CMP 119 | p. 271 | SOURCES_D3R, SOURCES_D3R_VERIFY, SOURCES_D3W8_VERIFY +1 more | yes | in range 243-285 |
| CMP 119 | p. 272 | SOURCES_D3R, SOURCES_D3W8_VERIFY, SOURCES_W4 | yes | in range 243-285 |
| CMP 119 | p. 275 | SOURCES_D3W8, SOURCES_HHOL | yes | in range 243-285 |
| CMP 119 | p. 278 | SOURCES_D3W8_VERIFY | yes | in range 243-285 |
| CMP 119 | p. 279 | SOURCES_D3R, SOURCES_D3R_VERIFY, SOURCES_D3W8 +2 more | yes | in range 243-285 |
| CMP 119 | p. 282 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 243-285 |
| CMP 119 | p. 284 | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | yes | in range 243-285 |
| CMP 119 | Thm/Prop/Lemma 1 | LEMMA_B4, LEMMA_B4_VERIFY, LEMMA_DPRIME_SWEEP +3 more | yes | journal p. 246,247,248,262,263,264 |
| CMP 122 | (0.1) | THEOREM2_PROOF | ambiguous | found in 122I and 122II; pp. 122I: 175; 122II: 355 |
| CMP 122 | (2.24) | SOURCES_D3 | no | not found in text layer; page image needed |
| CMP 122 | p. 183 | LEMMA_DPRIME_VERIFY | yes | only in 122I; bare/ambiguous citation form |
| CMP 122 | p. 192 | LEMMA_DPRIME_VERIFY | yes | only in 122I; bare/ambiguous citation form |
| CMP 122 | p. 355 | KAPPA_BOUNDED, LEMMA_DPRIME, SOURCES_N3A +2 more | yes | only in 122II; bare/ambiguous citation form |
| CMP 122 | p. 385 | LEMMA_DPRIME_VERIFY | yes | only in 122II; bare/ambiguous citation form |
| CMP 122 | p. 387 | LEMMA_DPRIME_VERIFY | yes | only in 122II; bare/ambiguous citation form |
| CMP 122 | Thm/Prop/Lemma 1 | THEOREM2 | ambiguous | found in 122I and 122II; pp. 122I: 191,194,195; 122II: 355,356,358,359,361 |
| CMP 122I | (0.1) | SOURCES_D3, SOURCES_D3_VERIFY, SOURCES_D4D5_VERIFY +2 more | yes | journal p. 175 |
| CMP 122I | (0.2) | SOURCES_D4D5_VERIFY, SOURCES_FX, SOURCES_FX_VERIFY | no | not found in text layer; page image needed |
| CMP 122I | (0.3) | SOURCES_FX_VERIFY | yes | journal p. 177 |
| CMP 122I | (0.4) | SOURCES_D4D5, SOURCES_FX_VERIFY | yes | journal p. 176 |
| CMP 122I | (0.5) | SOURCES_FX_VERIFY | yes | journal p. 177 |
| CMP 122I | (0.6) | SOURCES_D4D5_VERIFY, SOURCES_FX, SOURCES_FX_VERIFY | no | not found in text layer; page image needed |
| CMP 122I | (1.3) | SOURCES_D3, SOURCES_D4D5, SOURCES_HTHR | yes | journal p. 178,181,183,184 |
| CMP 122I | (1.5) | SOURCES_HTHR | yes | journal p. 179,181,182,183,184 |
| CMP 122I | (1.6) | SOURCES_D3, SOURCES_HTHR | yes | journal p. 178,182 |
| CMP 122I | (1.9) | SOURCES_D3, SOURCES_D4D5, SOURCES_HTHR | yes | journal p. 178,179,183,187 |
| CMP 122I | (2.4) | SOURCES_FX_O23 | no | not found in text layer; page image needed |
| CMP 122I | (2.5) | SOURCES_FX_O23 | no | not found in text layer; page image needed |
| CMP 122I | (1.27) | SOURCES_HTHR2 | yes | journal p. 182,184,185,187,188 |
| CMP 122I | (1.52) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | no | not found in text layer; page image needed |
| CMP 122I | (1.57) | LEMMA_DPRIME_SWEEP, SOURCES_HTHR_VERIFY | yes | journal p. 188 |
| CMP 122I | (1.77) | SOURCES_HTHR_VERIFY, SOURCES_MA2 | yes | journal p. 194 |
| CMP 122I | (1.78) | SOURCES_HTHR_VERIFY, SOURCES_MA | yes | journal p. 194,195,197 |
| CMP 122I | (1.79) | SOURCES_FX | yes | journal p. 195 |
| CMP 122I | (1.80) | SOURCES_MA2, SOURCES_MA2_VERIFY | yes | journal p. 195,197,199 |
| CMP 122I | (1.82) | SOURCES_HTHR2 | yes | journal p. 196 |
| CMP 122I | (1.83) | SOURCES_MA | yes | journal p. 197 |
| CMP 122I | (1.89) | SOURCES_FX | yes | journal p. 198,200 |
| CMP 122I | (1.94) | LEMMA_DPRIME_SWEEP, SOURCES_HTHR_VERIFY, THEOREM2_PROOF_v2 +2 more | yes | journal p. 198,199 |
| CMP 122I | (1.97) | SOURCES_FX | yes | journal p. 199 |
| CMP 122I | (1.98) | SOURCES_FX_O23_VERIFY | yes | journal p. 200 |
| CMP 122I | (1.99) | SOURCES_FX_O23, SOURCES_MA2 | yes | journal p. 201 |
| CMP 122I | (1.100) | SOURCES_D4D5_VERIFY, SOURCES_FX_O23, SOURCES_FX_O23_VERIFY +4 more | yes | journal p. 201 |
| CMP 122I | (1.102) | SOURCES_D4D5_VERIFY, SOURCES_FX_O23, SOURCES_HHOL_LF +2 more | no | not found in text layer; page image needed |
| CMP 122I | p. 2 | SOURCES_FX_VERIFY | ambiguous | outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp.  |
| CMP 122I | p. 3 | SOURCES_FX_VERIFY | ambiguous | outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp.  |
| CMP 122I | p. 20 | SOURCES_MA_VERIFY | ambiguous | outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp.  |
| CMP 122I | p. 26 | SOURCES_FX_O23_VERIFY | ambiguous | outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp.  |
| CMP 122I | p. 27 | SOURCES_FX_O23_VERIFY, SOURCES_HHOL_LF_VERIFY, SOURCES_MA +2 more | ambiguous | outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp.  |
| CMP 122I | p. 28 | SOURCES_MA2 | ambiguous | outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp.  |
| CMP 122I | p. 175 | SOURCES_D3, SOURCES_D4D5_VERIFY, SOURCES_HTHR +1 more | yes | in range 175-202 |
| CMP 122I | p. 176 | SOURCES_D2, SOURCES_D3, SOURCES_D4D5_VERIFY +2 more | yes | in range 175-202 |
| CMP 122I | p. 177 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D3 +5 more | yes | in range 175-202 |
| CMP 122I | p. 181 | SOURCES_D3, SOURCES_HTHR_VERIFY | yes | in range 175-202 |
| CMP 122I | p. 182 | SOURCES_HTHR2 | yes | in range 175-202 |
| CMP 122I | p. 183 | SOURCES_HTHR_VERIFY | yes | in range 175-202 |
| CMP 122I | p. 187 | LEMMA_DPRIME_SWEEP, SOURCES_HTHR_VERIFY | yes | in range 175-202 |
| CMP 122I | p. 188 | LEMMA_DPRIME_SWEEP | yes | in range 175-202 |
| CMP 122I | p. 192 | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | yes | in range 175-202 |
| CMP 122I | p. 194 | SOURCES_D3, SOURCES_MA, SOURCES_MA2 +1 more | yes | in range 175-202 |
| CMP 122I | p. 195 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_MA +2 more | yes | in range 175-202 |
| CMP 122I | p. 196 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_HTHR2 | yes | in range 175-202 |
| CMP 122I | p. 198 | LEMMA_DPRIME_SWEEP, SOURCES_HTHR_VERIFY, THEOREM2_PROOF_v2 +2 more | yes | in range 175-202 |
| CMP 122I | p. 199 | LEMMA_DPRIME_SWEEP | yes | in range 175-202 |
| CMP 122I | p. 200 | LEMMA_DPRIME_SWEEP, SOURCES_D3, SOURCES_FX_O23 +3 more | yes | in range 175-202 |
| CMP 122I | p. 201 | LEMMA_B4_VERIFY, SOURCES_D4D5_VERIFY, SOURCES_FX_O23 +6 more | yes | in range 175-202 |
| CMP 122I | p. 202 | SOURCES_D3, SOURCES_MA2 | yes | in range 175-202 |
| CMP 122I | p. 355 | SOURCES_D3 | no | outside journal range(s) 122I 175-202 |
| CMP 122I | p. 381 | SOURCES_D3, SOURCES_FX_O23, THEOREM2_PROOF_v2 +2 more | no | outside journal range(s) 122I 175-202 |
| CMP 122I | p. 386 | THEOREM2_PROOF_v2, THEOREM2_PROOF_v3, THEOREM2_PROOF_v4 | no | outside journal range(s) 122I 175-202 |
| CMP 122I | Thm/Prop/Lemma 1 | LEMMA_B4_VERIFY, SOURCES_D3, SOURCES_MA +3 more | yes | journal p. 191,194,195 |
| CMP 122II | (0.1) | SOURCES_D4D5, SOURCES_D4D5_VERIFY, SOURCES_FX | yes | journal p. 355 |
| CMP 122II | (1.1) | SOURCES_D3R | yes | journal p. 356,358,359,365,366,368 |
| CMP 122II | (1.2) | SOURCES_D3, SOURCES_W4 | yes | journal p. 357,358,361,367 |
| CMP 122II | (2.6) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | no | not found in text layer; page image needed |
| CMP 122II | (2.9) | LEMMA_DPRIME_SWEEP, THEOREM2_PROOF_v2, THEOREM2_PROOF_v3 +1 more | no | not found in text layer; page image needed |
| CMP 122II | (4.3) | LEMMA_B4_VERIFY | no | not found in text layer; page image needed |
| CMP 122II | (1.23) | LEMMA_DPRIME_SWEEP | yes | journal p. 362,363 |
| CMP 122II | (1.27) | SOURCES_HTHR2 | yes | journal p. 362,381 |
| CMP 122II | (1.35) | SOURCES_D3 | yes | journal p. 365 |
| CMP 122II | (1.36) | SOURCES_D3 | yes | journal p. 365 |
| CMP 122II | (1.37) | SOURCES_D3, SOURCES_D3R, SOURCES_D3R_VERIFY | yes | journal p. 365,366,367 |
| CMP 122II | (1.49) | SOURCES_D3, SOURCES_D3R | yes | journal p. 369,372,373 |
| CMP 122II | (1.70) | SOURCES_FX_O23, SOURCES_MA2 | yes | journal p. 375,377,378 |
| CMP 122II | (1.71) | SOURCES_FX, SOURCES_HHOL_LF, SOURCES_HHOL_LF_VERIFY +2 more | yes | journal p. 379,380,383,387 |
| CMP 122II | (1.72) | SOURCES_FX, SOURCES_HHOL_LF_VERIFY | yes | journal p. 379,387,390,391 |
| CMP 122II | (1.73) | SOURCES_D3, SOURCES_D3R, SOURCES_D3_VERIFY +6 more | yes | journal p. 380,388 |
| CMP 122II | (1.74) | SOURCES_HTHR2_VERIFY | yes | journal p. 380 |
| CMP 122II | (1.75) | SOURCES_D3, SOURCES_D3R, SOURCES_D3_VERIFY +4 more | yes | journal p. 359,381 |
| CMP 122II | (1.77) | SOURCES_FX_VERIFY, SOURCES_HTHR2, SOURCES_HTHR_VERIFY | yes | journal p. 383 |
| CMP 122II | (1.78) | SOURCES_HTHR2, SOURCES_HTHR_VERIFY | yes | journal p. 359,378,383 |
| CMP 122II | (1.79) | SOURCES_FX_R2, SOURCES_FX_VERIFY, SOURCES_HHOL_LF +1 more | yes | journal p. 384,386,387 |
| CMP 122II | (1.80) | SOURCES_FX_O1, SOURCES_FX_O1_VERIFY, SOURCES_FX_VERIFY | yes | journal p. 361,384,385,386,387 |
| CMP 122II | (1.81) | SOURCES_FX_O1_VERIFY, SOURCES_FX_R2 | yes | journal p. 360,385 |
| CMP 122II | (1.82) | SOURCES_FX_R2, SOURCES_HTHR2 | yes | journal p. 360,381,385 |
| CMP 122II | (1.83) | SOURCES_FX_O23, SOURCES_FX_R2 | yes | journal p. 378,382,386 |
| CMP 122II | (1.84) | SOURCES_FX_R2 | yes | journal p. 367,371,386 |
| CMP 122II | (1.86) | SOURCES_FX_R2 | yes | journal p. 367,386 |
| CMP 122II | (1.87) | SOURCES_FX_R2 | yes | journal p. 367,382,387 |
| CMP 122II | (1.88) | SOURCES_FX_O1_VERIFY, SOURCES_FX_R2, SOURCES_HHOL_LF | yes | journal p. 387 |
| CMP 122II | (1.90) | SOURCES_FX | yes | journal p. 388,391 |
| CMP 122II | (1.92) | SOURCES_FX_O23 | yes | journal p. 388,389,391 |
| CMP 122II | (1.95) | SOURCES_FX_R2 | yes | journal p. 389,391 |
| CMP 122II | (1.97) | SOURCES_HHOL_LF | yes | journal p. 389,390 |
| CMP 122II | (1.98) | SOURCES_MB | yes | journal p. 390,391 |
| CMP 122II | (6.31) | SOURCES_FX_O1 | yes | journal p. 384 |
| CMP 122II | (1.100) | SOURCES_FX_O23 | yes | journal p. 355,356,378,379,390 |
| CMP 122II | (1.103) | SOURCES_D4D5_VERIFY, SOURCES_FX_O23, SOURCES_FX_O23_VERIFY | yes | journal p. 391 |
| CMP 122II | (1.104) | SOURCES_D4D5_VERIFY, SOURCES_FX | yes | journal p. 391,392 |
| CMP 122II | p. 11 | SOURCES_D3R | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 12 | SOURCES_D3R | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 25 | SOURCES_HHOL_LF_VERIFY, SOURCES_MA | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 26 | SOURCES_D3R, SOURCES_MA | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 29 | SOURCES_FX_VERIFY, SOURCES_HTHR2_VERIFY | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 30 | SOURCES_FX_O1_VERIFY, SOURCES_FX_VERIFY | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 31 | SOURCES_FX_VERIFY | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 33 | SOURCES_FX_VERIFY | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 34 | SOURCES_FX_VERIFY | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 37 | SOURCES_FX_VERIFY | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 38 | SOURCES_HHOL_LF | ambiguous | outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp.  |
| CMP 122II | p. 355 | ASSEMBLY, LEMMA_B4, LEMMA_B4_VERIFY +6 more | yes | in range 355-392 |
| CMP 122II | p. 356 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_D3 +1 more | yes | in range 355-392 |
| CMP 122II | p. 357 | SOURCES_D3 | yes | in range 355-392 |
| CMP 122II | p. 358 | SOURCES_HHOL_LF, SOURCES_W4 | yes | in range 355-392 |
| CMP 122II | p. 359 | LEMMA_DPRIME_SWEEP | yes | in range 355-392 |
| CMP 122II | p. 362 | LEMMA_DPRIME_SWEEP | yes | in range 355-392 |
| CMP 122II | p. 364 | SOURCES_D3R | yes | in range 355-392 |
| CMP 122II | p. 365 | SOURCES_D3, SOURCES_D3R, SOURCES_D3R_VERIFY +1 more | yes | in range 355-392 |
| CMP 122II | p. 366 | SOURCES_D3R, SOURCES_D3R_VERIFY, SOURCES_D3_VERIFY +1 more | yes | in range 355-392 |
| CMP 122II | p. 367 | SOURCES_HTHR, SOURCES_HTHR2 | yes | in range 355-392 |
| CMP 122II | p. 369 | SOURCES_D3 | yes | in range 355-392 |
| CMP 122II | p. 377 | SOURCES_FX_O23, SOURCES_HHOL_LF | yes | in range 355-392 |
| CMP 122II | p. 378 | SOURCES_FX_O23_VERIFY | yes | in range 355-392 |
| CMP 122II | p. 379 | SOURCES_D3, SOURCES_HHOL_LF_VERIFY | yes | in range 355-392 |
| CMP 122II | p. 380 | SOURCES_D3, SOURCES_D3R, SOURCES_FX +8 more | yes | in range 355-392 |
| CMP 122II | p. 381 | LEMMA_DPRIME_SWEEP, SOURCES_D3, SOURCES_D4D5 +4 more | yes | in range 355-392 |
| CMP 122II | p. 382 | LEMMA_DPRIME_SWEEP, SOURCES_HTHR2_VERIFY, SOURCES_MB | yes | in range 355-392 |
| CMP 122II | p. 383 | LEMMA_DPRIME_SWEEP, SOURCES_FX_R2, SOURCES_FX_VERIFY +3 more | yes | in range 355-392 |
| CMP 122II | p. 384 | SOURCES_FX_O1, SOURCES_HTHR | yes | in range 355-392 |
| CMP 122II | p. 386 | LEMMA_DPRIME_SWEEP | yes | in range 355-392 |
| CMP 122II | p. 387 | SOURCES_FX_O1 | yes | in range 355-392 |
| CMP 122II | p. 389 | LEMMA_DPRIME_SWEEP, SOURCES_HHOL_LF, SOURCES_MB +3 more | yes | in range 355-392 |
| CMP 122II | p. 391 | SOURCES_FX_O23_VERIFY | yes | in range 355-392 |
| CMP 122II | p. 392 | SOURCES_D3, SOURCES_D4D5 | yes | in range 355-392 |
| CMP 122II | Thm/Prop/Lemma 1 | LEMMA_B4, LEMMA_DPRIME_SWEEP, SOURCES_D3 +5 more | yes | journal p. 355,356,358,359,361,366 |
| CMP 122II | Thm/Prop/Lemma 4.1 | LEMMA_B4_VERIFY | no | not found in text layer; page image needed |
| CMP 95 | (1.8) | SOURCES_EU, SOURCES_EU_VERIFY | yes | journal p. 19 |
| CMP 95 | (6.1) | THEOREM2_PROOF | no | not found in text layer; page image needed |
| CMP 95 | (1.89) | SOURCES_CDC | yes | journal p. 33,36,39 |
| CMP 95 | (1.90) | SOURCES_CDC | yes | journal p. 33 |
| CMP 95 | (1.93) | SOURCES_CDC | yes | journal p. 33,34 |
| CMP 95 | (1.96) | SOURCES_CDC | yes | journal p. 33 |
| CMP 95 | (1.97) | SOURCES_CDC | yes | journal p. 34 |
| CMP 95 | (1.99) | SOURCES_Q, SOURCES_Q_VERIFY | yes | journal p. 34 |
| CMP 95 | (1.100) | SOURCES_CDC, SOURCES_Q, SOURCES_Q_VERIFY | yes | journal p. 34 |
| CMP 95 | (1.101) | SOURCES_CDC, SOURCES_Q, SOURCES_Q_VERIFY | no | not found in text layer; page image needed |
| CMP 95 | (1.103) | SOURCES_CDC | yes | journal p. 34 |
| CMP 95 | (1.110) | U3_GAUSSIAN_RG, U3_VERIFY | yes | journal p. 35,36 |
| CMP 95 | p. 23 | LEMMA_B4_VERIFY, U3_GAUSSIAN_RG | yes | in range 17-40 |
| CMP 95 | p. 25 | U3_GAUSSIAN_RG, U3_VERIFY | yes | in range 17-40 |
| CMP 95 | p. 26 | U3_GAUSSIAN_RG, U3_VERIFY | yes | in range 17-40 |
| CMP 95 | p. 30 | LEMMA_B4_VERIFY, SOURCES_CDC | yes | in range 17-40 |
| CMP 95 | p. 33 | SOURCES_CDC, SOURCES_CDC_VERIFY, U3_GAUSSIAN_RG | yes | in range 17-40 |
| CMP 95 | p. 34 | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_Q +1 more | yes | in range 17-40 |
| CMP 95 | Thm/Prop/Lemma 1.1 | BETA_FP_PW, LEMMA_B4, SOURCES_CDC +3 more | yes | journal p. 33,39 |
| CMP 95 | Thm/Prop/Lemma 1.2 | U3_GAUSSIAN_RG, U3_VERIFY | yes | journal p. 35,36,39,40 |
| CMP 95 | Thm/Prop/Lemma 3.1 | SOURCES_D2, SOURCES_D3W8 | no | not found in text layer; page image needed |
| CMP 95 | Thm/Prop/Lemma 7.1 | U3_VERIFY | no | not found in text layer; page image needed |
| CMP 96 | (2.67) | U3_GAUSSIAN_RG | yes | journal p. 234,235,246 |
| CMP 96 | (2.120) | SOURCES_Q | yes | journal p. 244,246,248 |
| CMP 96 | (2.125) | SOURCES_CDC, SOURCES_EU, SOURCES_EU_VERIFY +1 more | yes | journal p. 245 |
| CMP 96 | (2.128) | SOURCES_Q | yes | journal p. 245,249 |
| CMP 96 | p. 244 | SOURCES_Q, SOURCES_Q_VERIFY | yes | in range 223-250 |
| CMP 96 | p. 245 | SOURCES_Q | yes | in range 223-250 |
| CMP 96 | p. 246 | SOURCES_Q, SOURCES_Q_VERIFY, U3_GAUSSIAN_RG +1 more | yes | in range 223-250 |
| CMP 96 | Thm/Prop/Lemma 2.4 | SOURCES_CDC, SOURCES_Q | yes | journal p. 245,249 |
| CMP 96 | Thm/Prop/Lemma 2.5 | BETA_FP_PW, U3_GAUSSIAN_RG | yes | journal p. 246 |
| CMP 98 | (0.12) | THEOREM2 | no | not found in text layer; page image needed |
| CMP 98 | (1) | SOURCES_EU | yes | journal p. 17,23,27,32,34,36 |
| CMP 98 | (11) | LEMMA_B4 | yes | journal p. 19,24 |
| CMP 98 | (14) | LEMMA_B4, SOURCES_EU, SOURCES_EU_VERIFY | yes | journal p. 19,20 |
| CMP 98 | (15) | SOURCES_EU | yes | journal p. 19 |
| CMP 98 | (51) | LEMMA_B4_VERIFY | yes | journal p. 26 |
| CMP 98 | (52) | SOURCES_EU | yes | journal p. 26,40,42,43,49,50 |
| CMP 98 | (58) | LEMMA_B4, LEMMA_B4_VERIFY | yes | journal p. 27,28 |
| CMP 98 | (86) | SOURCES_EU_VERIFY | yes | journal p. 31 |
| CMP 98 | (88) | U3_VERIFY | yes | journal p. 31 |
| CMP 98 | (89) | SOURCES_EU, SOURCES_EU_VERIFY, U3_VERIFY | yes | journal p. 31,32 |
| CMP 98 | (91) | U3_GAUSSIAN_RG, U3_LEMMA51, U3_LEMMA51_R23 +2 more | yes | journal p. 31 |
| CMP 98 | (92) | SOURCES_EU, U3_VERIFY | yes | journal p. 31,32 |
| CMP 98 | (1.5) | U3_GAUSSIAN_RG | no | not found in text layer; page image needed |
| CMP 98 | (115) | SOURCES_EU | yes | journal p. 34,35 |
| CMP 98 | (120) | SOURCES_EU | yes | journal p. 35,36 |
| CMP 98 | (121) | SOURCES_EU | yes | journal p. 36 |
| CMP 98 | (124) | SOURCES_EU, SOURCES_EU_VERIFY | yes | journal p. 36,39 |
| CMP 98 | (125) | SOURCES_EU | yes | journal p. 36,39 |
| CMP 98 | (126) | SOURCES_EU | yes | journal p. 36,43 |
| CMP 98 | (139) | SOURCES_EU, SOURCES_EU_VERIFY | yes | journal p. 39,40 |
| CMP 98 | (140) | SOURCES_EU | yes | journal p. 39 |
| CMP 98 | (141) | SOURCES_EU | yes | journal p. 39 |
| CMP 98 | (143) | SOURCES_EU_VERIFY | yes | journal p. 39,40,41 |
| CMP 98 | (1.15) | LEMMA_B4_VERIFY | no | not found in text layer; page image needed |
| CMP 98 | (3.15) | SOURCES_EU | no | not found in text layer; page image needed |
| CMP 98 | (3.16) | SOURCES_EU | no | not found in text layer; page image needed |
| CMP 98 | (3.19) | SOURCES_EU | no | not found in text layer; page image needed |
| CMP 98 | (3.35) | SOURCES_EU | no | not found in text layer; page image needed |
| CMP 98 | (3.36) | SOURCES_EU | no | not found in text layer; page image needed |
| CMP 98 | p. 3 | SOURCES_EU_VERIFY | ambiguous | outside journal range(s) 98 17-51; value fits a PDF-page index (1-36), so may be a PDF page not a journal page; pp.  |
| CMP 98 | p. 19 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_EU +1 more | yes | in range 17-51 |
| CMP 98 | p. 20 | LEMMA_B4_VERIFY | yes | in range 17-51 |
| CMP 98 | p. 24 | BETA_FP, LEMMA_B4_VERIFY, U3_AW +3 more | yes | in range 17-51 |
| CMP 98 | p. 25 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 17-51 |
| CMP 98 | p. 26 | LEMMA_B4, LEMMA_B4_VERIFY, SOURCES_EU | yes | in range 17-51 |
| CMP 98 | p. 27 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 17-51 |
| CMP 98 | p. 31 | BETA_FP, U3_GAUSSIAN_RG, U3_LEMMA51 +1 more | yes | in range 17-51 |
| CMP 98 | p. 32 | U3_GAUSSIAN_RG | yes | in range 17-51 |
| CMP 98 | p. 33 | SOURCES_EU | yes | in range 17-51 |
| CMP 98 | p. 35 | SOURCES_EU | yes | in range 17-51 |
| CMP 98 | p. 36 | SOURCES_EU, SOURCES_EU_VERIFY | yes | in range 17-51 |
| CMP 98 | p. 37 | SOURCES_EU | yes | in range 17-51 |
| CMP 98 | p. 396 | SOURCES_EU | no | outside journal range(s) 98 17-51 |
| CMP 98 | Thm/Prop/Lemma 1 | LEMMA_B4, LEMMA_B4_VERIFY | yes | journal p. 26 |
| CMP 98 | Thm/Prop/Lemma 2 | LEMMA_B4_VERIFY | yes | journal p. 22,26,37,40 |
| CMP 98 | Thm/Prop/Lemma 1.3 | U3_GAUSSIAN_RG | no | not found in text layer; page image needed |
| CMP 99 | (6.1) | U3_GAUSSIAN_RG | no | not found in text layer; page image needed |
| CMP 99 | (1.42) | SOURCES_Q | ambiguous | found in 99p and 99g; pp. 99p: 394; 99g: 83,86,87 |
| CMP 99 | (2.16) | SOURCES_LOC | no | not found in text layer; page image needed |
| CMP 99 | (2.20) | SOURCES_Q | yes | only in 99p; bare/ambiguous citation form; p. 393 |
| CMP 99 | (3.15) | SOURCES_EU | yes | only in 99p; bare/ambiguous citation form; p. 393 |
| CMP 99 | (3.19) | SOURCES_EU | yes | only in 99p; bare/ambiguous citation form; p. 393,395,401 |
| CMP 99 | (3.20) | SOURCES_EU | yes | only in 99p; bare/ambiguous citation form; p. 394 |
| CMP 99 | (3.35) | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_EU +1 more | ambiguous | found in 99p and 99g; pp. 99p: 396,397,399,400,404; 99g: 82,83,97,98,99 |
| CMP 99 | (3.36) | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_LOC_VERIFY | yes | only in 99p; bare/ambiguous citation form; p. 396,397,419,422,423,426 |
| CMP 99 | (3.39) | SOURCES_CDC | yes | only in 99p; bare/ambiguous citation form; p. 397 |
| CMP 99 | (3.42) | SOURCES_CDC | yes | only in 99p; bare/ambiguous citation form; p. 397,398,399,403,407,409 |
| CMP 99 | (3.117) | SOURCES_CDC | yes | only in 99p; bare/ambiguous citation form; p. 419 |
| CMP 99 | (3.121) | SOURCES_CDC | yes | only in 99p; bare/ambiguous citation form; p. 419,420,421,424,425,430 |
| CMP 99 | (3.122) | SOURCES_CDC, SOURCES_CDC_VERIFY | yes | only in 99p; bare/ambiguous citation form; p. 420 |
| CMP 99 | (3.132) | SOURCES_CDC_VERIFY, SOURCES_Q_VERIFY | yes | only in 99p; bare/ambiguous citation form; p. 422,423,426 |
| CMP 99 | (3.138) | SOURCES_CDC, SOURCES_Q | yes | only in 99p; bare/ambiguous citation form; p. 423,427,432 |
| CMP 99 | (3.139) | SOURCES_CDC | yes | only in 99p; bare/ambiguous citation form; p. 424 |
| CMP 99 | (3.155) | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_Q | yes | only in 99p; bare/ambiguous citation form; p. 427,428 |
| CMP 99 | (3.156) | SOURCES_CDC, SOURCES_Q | yes | only in 99p; bare/ambiguous citation form; p. 428 |
| CMP 99 | (3.157) | SOURCES_LOC, SOURCES_LOC_VERIFY | no | not found in text layer; page image needed |
| CMP 99 | (3.158) | SOURCES_CDC, SOURCES_LOC, SOURCES_LOC_VERIFY +1 more | yes | only in 99p; bare/ambiguous citation form; p. 428 |
| CMP 99 | p. 392 | SOURCES_EU | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 393 | SOURCES_EU | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 394 | SOURCES_EU | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 396 | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_EU | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 397 | SOURCES_CDC, SOURCES_CDC_VERIFY | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 398 | SOURCES_Q | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 399 | SOURCES_Q | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 419 | SOURCES_CDC, SOURCES_CDC_VERIFY | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 420 | SOURCES_CDC | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 422 | SOURCES_CDC_VERIFY, SOURCES_Q_VERIFY | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 427 | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_EU +1 more | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | p. 428 | SOURCES_CDC, SOURCES_CDC_VERIFY, SOURCES_LOC_VERIFY +3 more | yes | only in 99p; bare/ambiguous citation form |
| CMP 99 | Thm/Prop/Lemma 3.1 | BETA_FP_PW, SOURCES_CDC, U3_GAUSSIAN_RG | ambiguous | found in 99p and 99g; pp. 99p: 397,398,399,402,403; 99g: 93 |
| CMP 99 | Thm/Prop/Lemma 3.3 | SOURCES_CDC | ambiguous | found in 99p and 99g; pp. 99p: 399,407,416,422,423; 99g: 86 |
| CMP 99 | Thm/Prop/Lemma 6.1 | U3_GAUSSIAN_RG | no | not found in text layer; page image needed |
| CMP 99 | Thm/Prop/Lemma 3.12 | SOURCES_MA2, U3_GAUSSIAN_RG | yes | only in 99p; bare/ambiguous citation form; p. 423 |
| CMP 99g | (1.15) | LEMMA_B4 | yes | journal p. 97,98 |
| CMP 99g | (1.25) | LEMMA_B4, LEMMA_B4_VERIFY | yes | journal p. 79,80 |
| CMP 99g | (1.36) | LEMMA_B4 | yes | journal p. 82,83,87,100,101 |
| CMP 99g | (1.39) | LEMMA_B4 | yes | journal p. 83,87,101 |
| CMP 99g | (1.129) | LEMMA_B4_VERIFY | yes | journal p. 98 |
| CMP 99g | p. 78 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 75-102 |
| CMP 99g | p. 79 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 75-102 |
| CMP 99g | p. 98 | LEMMA_B4, LEMMA_B4_VERIFY | yes | in range 75-102 |
| CMP 99g | Thm/Prop/Lemma 1 | LEMMA_B4, LEMMA_B4_VERIFY | yes | journal p. 79,87,89,98 |
| CMP 99g | Thm/Prop/Lemma 2 | LEMMA_B4 | yes | journal p. 83,87,88,95,97,98 |
| CMP 99p | Thm/Prop/Lemma 1 | LEMMA_B4_VERIFY | yes | journal p. 410 |
| CMP 99p | Thm/Prop/Lemma 2 | LEMMA_B4_VERIFY | yes | journal p. 397,398,399,403,407,410 |
| CMP 99p | Thm/Prop/Lemma 3.1 | LEMMA_B4 | yes | journal p. 397,398,399,402,403,410 |
| [I] | (0.20) | LEMMA_DPRIME_SWEEP | yes | only in 109; bare/ambiguous citation form; p. 259,264 |
| [I] | (0.33) | LEMMA_DPRIME_SWEEP | no | not found in text layer; page image needed |
| [I] | (6.31) | SOURCES_FX_O1, SOURCES_FX_O1_VERIFY | no | not found in text layer; page image needed |

## Non-resolving or ambiguous

- CMP 102 (0.25) [no]: not found in text layer; page image needed. Files: LEMMA_B4.md
- CMP 102 (0.30) [no]: not found in text layer; page image needed. Files: LEMMA_B4.md
- CMP 102 (2.1) [no]: not found in text layer; page image needed; bare string "2.1" (no parentheses) appears on journal p. 289,308. Files: LEMMA_B4_VERIFY.md
- CMP 102 (2.3) [no]: not found in text layer; page image needed. Files: LEMMA_B4_VERIFY.md
- CMP 102 (1.100) [no]: not found in text layer; page image needed. Files: SOURCES_MA2.md
- CMP 102 p. 29 [ambiguous]: outside journal range(s) 102u 255-275, 102v 277-309; value fits a PDF-page index (1-34), so may be a PDF page not a journal page; pp. . Files: SOURCES_MA2.md
- CMP 102 p. 30 [ambiguous]: outside journal range(s) 102u 255-275, 102v 277-309; value fits a PDF-page index (1-34), so may be a PDF page not a journal page; pp. . Files: SOURCES_MA2_VERIFY.md
- CMP 102 p. 33 [ambiguous]: outside journal range(s) 102u 255-275, 102v 277-309; value fits a PDF-page index (1-34), so may be a PDF page not a journal page; pp. . Files: SOURCES_MA2_VERIFY.md
- CMP 102 Thm/Prop/Lemma 1 [ambiguous]: found in 102u and 102v; pp. 102u: 257,258,259,272,274; 102v: 279,280,281,299,303. Files: LEMMA_B4.md, SOURCES_MA.md, SOURCES_VERIFY.md
- CMP 102 Thm/Prop/Lemma 2 [ambiguous]: found in 102u and 102v; pp. 102u: 272; 102v: 278,280,281,289,290. Files: LEMMA_B4.md
- CMP 109 (0.33) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md
- CMP 109 (1.2) [no]: not found in text layer; page image needed. Files: LEMMA_B4_VERIFY.md
- CMP 109 (6.1) [no]: not found in text layer; page image needed. Files: THEOREM2_PROOF.md
- CMP 109 (2.20) [no]: not found in text layer; page image needed. Files: SOURCES_W4.md
- CMP 109 (6.31) [no]: not found in text layer; page image needed. Files: SOURCES_FX_O1.md
- CMP 109 p. 2 [ambiguous]: outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp. . Files: SOURCES_SM.md
- CMP 109 p. 10 [ambiguous]: outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp. . Files: SOURCES_HHIST.md
- CMP 109 p. 12 [ambiguous]: outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp. . Files: SOURCES_HHIST.md
- CMP 109 p. 15 [ambiguous]: outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp. . Files: SOURCES_G3_VERIFY.md
- CMP 109 p. 18 [ambiguous]: outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp. . Files: SOURCES_G3.md
- CMP 109 p. 20 [ambiguous]: outside journal range(s) 109 249-301; value fits a PDF-page index (1-54), so may be a PDF page not a journal page; pp. . Files: SOURCES_HHIST.md, SOURCES_SM_VERIFY.md
- CMP 109 p. 384 [no]: outside journal range(s) 109 249-301. Files: SOURCES_FX_O1_VERIFY.md
- CMP 109 p. 385 [no]: outside journal range(s) 109 249-301. Files: SOURCES_FX_O1_VERIFY.md
- CMP 116 (0.29) [no]: not found in text layer; page image needed. Files: LEMMA_B4.md
- CMP 116 (0.31) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md
- CMP 116 (2.7) [no]: not found in text layer; page image needed. Files: SOURCES_CDC.md, SOURCES_CDC_VERIFY.md, SOURCES_Q.md, SOURCES_Q_VERIFY.md
- CMP 116 (1.73) [no]: not found in text layer; page image needed. Files: SOURCES_FX_VERIFY.md
- CMP 116 (1.100) [no]: not found in text layer; page image needed. Files: SOURCES_FX_O23.md
- CMP 116 p. 266 [no]: outside journal range(s) 116 1-22. Files: SOURCES_G3.md, SOURCES_G3_VERIFY.md
- CMP 116 p. 267 [no]: outside journal range(s) 116 1-22. Files: SOURCES_G3_VERIFY.md
- CMP 116 p. 298 [no]: outside journal range(s) 116 1-22. Files: SOURCES_HHIST.md
- CMP 116 p. 380 [no]: outside journal range(s) 116 1-22. Files: SOURCES_FX_VERIFY.md
- CMP 119 (0.19) [no]: not found in text layer; page image needed. Files: LEMMA_B4.md
- CMP 119 (0.31) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md, THEOREM2_PROOF_v2.md, THEOREM2_PROOF_v3.md, THEOREM2_PROOF_v4.md
- CMP 119 (2.46) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md, THEOREM2_PROOF_v2.md, THEOREM2_PROOF_v3.md, THEOREM2_PROOF_v4.md
- CMP 119 (3.45) [no]: not found in text layer; page image needed. Files: SOURCES_D3W8_VERIFY.md
- CMP 119 p. 4 [ambiguous]: outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp. . Files: SOURCES_HTHR_VERIFY.md
- CMP 119 p. 13 [ambiguous]: outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp. . Files: SOURCES_HHOL_LF.md, SOURCES_HHOL_LF_VERIFY.md
- CMP 119 p. 17 [ambiguous]: outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp. . Files: SOURCES_HTHR2_VERIFY.md
- CMP 119 p. 28 [ambiguous]: outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp. . Files: SOURCES_D3R.md
- CMP 119 p. 29 [ambiguous]: outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp. . Files: SOURCES_D3R.md
- CMP 119 p. 37 [ambiguous]: outside journal range(s) 119 243-285; value fits a PDF-page index (1-44), so may be a PDF page not a journal page; pp. . Files: SOURCES_D3R.md
- CMP 122 (0.1) [ambiguous]: found in 122I and 122II; pp. 122I: 175; 122II: 355. Files: THEOREM2_PROOF.md
- CMP 122 (2.24) [no]: not found in text layer; page image needed. Files: SOURCES_D3.md
- CMP 122 Thm/Prop/Lemma 1 [ambiguous]: found in 122I and 122II; pp. 122I: 191,194,195; 122II: 355,356,358,359,361. Files: THEOREM2.md
- CMP 122I (0.2) [no]: not found in text layer; page image needed. Files: SOURCES_D4D5_VERIFY.md, SOURCES_FX.md, SOURCES_FX_VERIFY.md
- CMP 122I (0.6) [no]: not found in text layer; page image needed. Files: SOURCES_D4D5_VERIFY.md, SOURCES_FX.md, SOURCES_FX_VERIFY.md
- CMP 122I (2.4) [no]: not found in text layer; page image needed. Files: SOURCES_FX_O23.md
- CMP 122I (2.5) [no]: not found in text layer; page image needed. Files: SOURCES_FX_O23.md
- CMP 122I (1.52) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md, THEOREM2_PROOF_v3.md, THEOREM2_PROOF_v4.md
- CMP 122I (1.102) [no]: not found in text layer; page image needed. Files: SOURCES_D4D5_VERIFY.md, SOURCES_FX_O23.md, SOURCES_HHOL_LF.md, SOURCES_HHOL_LF_VERIFY.md, SOURCES_MA2.md
- CMP 122I p. 2 [ambiguous]: outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_VERIFY.md
- CMP 122I p. 3 [ambiguous]: outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_VERIFY.md
- CMP 122I p. 20 [ambiguous]: outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp. . Files: SOURCES_MA_VERIFY.md
- CMP 122I p. 26 [ambiguous]: outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_O23_VERIFY.md
- CMP 122I p. 27 [ambiguous]: outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_O23_VERIFY.md, SOURCES_HHOL_LF_VERIFY.md, SOURCES_MA.md, SOURCES_MA2.md, SOURCES_MA_VERIFY.md
- CMP 122I p. 28 [ambiguous]: outside journal range(s) 122I 175-202; value fits a PDF-page index (1-28), so may be a PDF page not a journal page; pp. . Files: SOURCES_MA2.md
- CMP 122I p. 355 [no]: outside journal range(s) 122I 175-202. Files: SOURCES_D3.md
- CMP 122I p. 381 [no]: outside journal range(s) 122I 175-202. Files: SOURCES_D3.md, SOURCES_FX_O23.md, THEOREM2_PROOF_v2.md, THEOREM2_PROOF_v3.md, THEOREM2_PROOF_v4.md
- CMP 122I p. 386 [no]: outside journal range(s) 122I 175-202. Files: THEOREM2_PROOF_v2.md, THEOREM2_PROOF_v3.md, THEOREM2_PROOF_v4.md
- CMP 122II (2.6) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md, THEOREM2_PROOF_v2.md, THEOREM2_PROOF_v3.md, THEOREM2_PROOF_v4.md
- CMP 122II (2.9) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md, THEOREM2_PROOF_v2.md, THEOREM2_PROOF_v3.md, THEOREM2_PROOF_v4.md
- CMP 122II (4.3) [no]: not found in text layer; page image needed. Files: LEMMA_B4_VERIFY.md
- CMP 122II p. 11 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_D3R.md
- CMP 122II p. 12 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_D3R.md
- CMP 122II p. 25 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_HHOL_LF_VERIFY.md, SOURCES_MA.md
- CMP 122II p. 26 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_D3R.md, SOURCES_MA.md
- CMP 122II p. 29 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_VERIFY.md, SOURCES_HTHR2_VERIFY.md
- CMP 122II p. 30 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_O1_VERIFY.md, SOURCES_FX_VERIFY.md
- CMP 122II p. 31 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_VERIFY.md
- CMP 122II p. 33 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_VERIFY.md
- CMP 122II p. 34 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_VERIFY.md
- CMP 122II p. 37 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_FX_VERIFY.md
- CMP 122II p. 38 [ambiguous]: outside journal range(s) 122II 355-392; value fits a PDF-page index (1-38), so may be a PDF page not a journal page; pp. . Files: SOURCES_HHOL_LF.md
- CMP 122II Thm/Prop/Lemma 4.1 [no]: not found in text layer; page image needed. Files: LEMMA_B4_VERIFY.md
- CMP 95 (6.1) [no]: not found in text layer; page image needed. Files: THEOREM2_PROOF.md
- CMP 95 (1.101) [no]: not found in text layer; page image needed. Files: SOURCES_CDC.md, SOURCES_Q.md, SOURCES_Q_VERIFY.md
- CMP 95 Thm/Prop/Lemma 3.1 [no]: not found in text layer; page image needed. Files: SOURCES_D2.md, SOURCES_D3W8.md
- CMP 95 Thm/Prop/Lemma 7.1 [no]: not found in text layer; page image needed. Files: U3_VERIFY.md
- CMP 98 (0.12) [no]: not found in text layer; page image needed. Files: THEOREM2.md
- CMP 98 (1.5) [no]: not found in text layer; page image needed. Files: U3_GAUSSIAN_RG.md
- CMP 98 (1.15) [no]: not found in text layer; page image needed. Files: LEMMA_B4_VERIFY.md
- CMP 98 (3.15) [no]: not found in text layer; page image needed. Files: SOURCES_EU.md
- CMP 98 (3.16) [no]: not found in text layer; page image needed. Files: SOURCES_EU.md
- CMP 98 (3.19) [no]: not found in text layer; page image needed. Files: SOURCES_EU.md
- CMP 98 (3.35) [no]: not found in text layer; page image needed. Files: SOURCES_EU.md
- CMP 98 (3.36) [no]: not found in text layer; page image needed. Files: SOURCES_EU.md
- CMP 98 p. 3 [ambiguous]: outside journal range(s) 98 17-51; value fits a PDF-page index (1-36), so may be a PDF page not a journal page; pp. . Files: SOURCES_EU_VERIFY.md
- CMP 98 p. 396 [no]: outside journal range(s) 98 17-51. Files: SOURCES_EU.md
- CMP 98 Thm/Prop/Lemma 1.3 [no]: not found in text layer; page image needed. Files: U3_GAUSSIAN_RG.md
- CMP 99 (6.1) [no]: not found in text layer; page image needed. Files: U3_GAUSSIAN_RG.md
- CMP 99 (1.42) [ambiguous]: found in 99p and 99g; pp. 99p: 394; 99g: 83,86,87. Files: SOURCES_Q.md
- CMP 99 (2.16) [no]: not found in text layer; page image needed. Files: SOURCES_LOC.md
- CMP 99 (3.35) [ambiguous]: found in 99p and 99g; pp. 99p: 396,397,399,400,404; 99g: 82,83,97,98,99. Files: SOURCES_CDC.md, SOURCES_CDC_VERIFY.md, SOURCES_EU.md, SOURCES_LOC_VERIFY.md
- CMP 99 (3.157) [no]: not found in text layer; page image needed. Files: SOURCES_LOC.md, SOURCES_LOC_VERIFY.md
- CMP 99 Thm/Prop/Lemma 3.1 [ambiguous]: found in 99p and 99g; pp. 99p: 397,398,399,402,403; 99g: 93. Files: BETA_FP_PW.md, SOURCES_CDC.md, U3_GAUSSIAN_RG.md
- CMP 99 Thm/Prop/Lemma 3.3 [ambiguous]: found in 99p and 99g; pp. 99p: 399,407,416,422,423; 99g: 86. Files: SOURCES_CDC.md
- CMP 99 Thm/Prop/Lemma 6.1 [no]: not found in text layer; page image needed. Files: U3_GAUSSIAN_RG.md
- [I] (0.33) [no]: not found in text layer; page image needed. Files: LEMMA_DPRIME_SWEEP.md
- [I] (6.31) [no]: not found in text layer; page image needed. Files: SOURCES_FX_O1.md, SOURCES_FX_O1_VERIFY.md

Counts: total distinct locators 542, resolved 442, ambiguous 41, not found 59.
