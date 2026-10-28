# Paper pass 5 verify (2026-10-27)
Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## S1. Ground truth read (PAPER_FIX_LOG Pass 5, PLAN tail, H1_ANALYTIC_VERIFY V0–V9)
- Certified: L = 13, every K in BZ minus {0}, every j >= 1 incl. infinity: rho_1^2 <= B_13 <= 9.9995277 < 10 < 13; K = 0: rho_1 = 1 exactly. 25,169 boxes, 0 failed leaves, 58.3 s, arb + one-ulp + Higham.
- Margin to 10 is 5e-5; the "23%" is the margin to 13. Majorant tight to 2.6% at |K| ~ 1.5.
- Residue (VERIFY + VERIFY2): Balaban (0.4) reading, gauge choice, Prop. A at M >= 27/inf (second impl. of the same formula), Lemma G + bound chain beyond point checks, bb_arb.py audited not formally verified; arb/IEEE trusted.

## S2. Abstract (main.tex l. 46) and intro (l. 24, 29, 58)
- Abstract: "rho_1^2 <= 10 < 13 for every j (incl. inf) and every K, so rho_2 <= 10 < 13, given our reading of Balaban's averaging operator". Numbers MATCH (9.9995277 <= 10). The caveat names only the (0.4) reading; the other residue items (gauge choice, Prop. A at M >= 27/inf, Lemma G chain, unverified-by-proof-assistant code) are not named. Grade: MATCH (abstract-level), minor UNDERSTATED caveat; optional fix F-a below.
- Intro l. 58 tag definition: MATCH (continuum statement, majorant + outward-rounded B&B, verifier file).
- Theorem A(i) l. 24: "(H2) certified at L = 13 (Thm 5.1); a hypothesis at other L"; L5 and K-independence stay hypotheses. MATCH.
- Consequence sentence l. 29: keeps fixed-level inputs, L5, K-independence, Balaban-level items, and the residue of Thm 5.1. No overclaim. MATCH.

## S3. numerics.tex §5.7–§5.8 read (l. 96–140)
- Numbers: 9.9995277, 25,169 boxes, 8,075 G evals, 0 failed leaves, 58 s, arb + one-ulp + Higham, exact dyadic u, 384 signed permutations, 4.37 measured, 2.6% / 1.026 over 896 cases, 5e-5 to 10, 23% to 13, 5.3e-13, 5.8e-9 / 1e-14, 3e-8, 1.2e-13: all MATCH the verifier files.
- Residue list: (0.4) reading + gauge choice; Prop. A at M >= 27/inf; Lemma G + bound chain point checks only; bb_arb.py audited, not formally verified, arb/IEEE trusted; box sweep pending. MATCH PLAN.md "still single-source" list. Lemma S conventions correctly dropped (VERIFY2 derived them by hand).
- Symmetry sentence: "B_L invariant by construction; analytic certificate does not need rho_1 invariance; box sweep does": MATCH P5_VERIFY.
- §5.8: superseded at L = 13; box sweep = cross-check, result not in. MATCH (PLAN: launched, running).
- Open for S4: exact rho2_le statement, rho_1 = ||H_j||/L, BZ definition (K = 0, boundary).

## S4. Theorem 5.1 statement and theorem2.tex (H2) places
- rho_1 = ||H_j||/L: MATCH H2_LARGE_L l. 72. rho2_le (BlockNorm.lean, VERIFY_BlockNorm l. 17): ||(+)A_l o B||/L^2 <= (||B||/L)·r when all ||A_l||/L <= r. Paper: rho_2 <= rho_1(j)·max_l rho_1(j-1,k_l) <= sup rho_1^2 <= 10 < L. MATCH.
- Scope: L = 13 only; every j >= 1 incl. inf; K in BZ = [-pi,pi]^4 (setup.tex l. 25), closed, so boundary included; exact dyadic u covers K = pi; K = 0 via rho_1(j,0) = 1. MATCH V9 (V9 states K != 0 for B_13 and K = 0 separately; the paper does the same in step 5).
- Not in the residue list: VERIFY_BlockNorm item 2 (the identification of the two-step operator with (+)A_l o B, and C^324 with the 81 umklapp blocks, is not formalized). Step "rho_2 <= ..." cites Lean but this identification is paper-only. Minor UNDERSTATED caveat; fix F-b.
- theorem2.tex l. 300, 343/345, 352, 360, 364: certified at L = 13, residue pointer at l. 352, other L numerical. MATCH. l. 360 keeps "(B2) open" next to "(H2) certified at L = 13" while l. 364 says "discharges (B2)": wording tension, not an overclaim (optional fix F-c).

## S5. remains.tex (item H, H', l. 45, l. 69, l. 121)
- Correction to S4: item H defines rho_2 as ||((+)_l H_{j-1}(k_l)) H_j(K)||/L^2, so rho2_le applies to the paper's definition directly. F-b withdrawn.
- Item H (l. 9): MATCH. H' (l. 11): MATCH the PLAN single-source list (omits only "arb/IEEE trusted", which §5.7 states). l. 45: MATCH. l. 121 (ledger B1): MATCH.
- l. 69: "H2_CERTIFY_P4 is verified (H2_CERTIFY_P5_VERIFY.md; P4_divergence in Lean)". OVERSTATED / miscited. H2_CERTIFY_P5_VERIFY.md checks P5a/P5b only; it never mentions P4. P4 support in the ground truth: Lean P4_divergence (identity (D) only, no Fourier step), H1_ANALYTIC_VERIFY V1 (Lemma S rederived on paper, conventions checked numerically), H1_ANALYTIC_VERIFY2 l. 50 (P4 beta = sigma holds for the independently built H_j, numerically). Fix F1.

## S6. appendix.tex
- App. A l. 3 "18 files": MATCH (18 .lean in lean/YmLean). Tower row l. 28: names exist in VERIFY_Tower (10 theorems, no sorry, standard axioms). MATCH.
- App. B certified paragraph l. 73–76: MATCH (same scope as Thm 5.1; residue pointer).
- l. 99 open list "(H2) at L != 13": MATCH. Out of pass-5 scope, stale: l. 99 still lists "the scale condition (U)" as open under B22, but F8 reclassified (U) as constant choice C23 (B22 = kappa -> kappa/2 only). Note N1.

## S7. assembly.tex
- l. 59: keeps fixed-level inputs, L5, K-independence, (H0). MATCH.
- Row B-T2.H2 (l. 164): numbers, residue, box sweep running. MATCH.
- Row B-T2.H1 (l. 165): 9.9995 < 13, rho2_le, Tower.lean. MATCH.
- l. 229: "B-T2 still needs (PI), (F), (M_j), V1, (G2), L5, (H0)". Omits the K-independence of beta_j(g), which Thm A(i) and l. 59 keep as a hypothesis. OVERSTATED (one hypothesis missing). Fix F2.

## S8. ~/git/yang_mills/README.md
- l. 16: numbers, scope, verifiers MATCH. Residue list omits "Lemma G and the bound chain beyond point checks" (the paper lists it). UNDERSTATED caveat; fix F3.
- l. 17: box sweep cross-check, result not in. MATCH. l. 31–32: 63 pages, 18 Lean files. MATCH.
- l. 18 "Open: (PI), (F), (M_j), V1, (G2), L5 ... At L = 13, (H2) is certified": omits the K-independence of beta_j(g) (also l. 15, pre-pass-5). Same gap as F2; fix F3.

## S9. Compile check
- pdflatex -interaction=nonstopmode once, output in /tmp (deleted after): exit 0, 0 "!" errors, 59 pages. A cold single pass has no bibliography, so 59 is not comparable to the logged 63 (pdflatex + bibtex + 2 passes). No aux files left in paper/.

## S10. Fix list
- F1 (OVERSTATED, remains.tex l. 69): replace "H2_CERTIFY_P4 is verified (H2_CERTIFY_P5_VERIFY.md; P4_divergence in Lean)" with "H2_CERTIFY_P4 is supported by identity (D) in Lean (P4_divergence), the paper rederivation of Lemma S (H1_ANALYTIC_VERIFY V1), and the independent H_j check (H1_ANALYTIC_VERIFY2); no verifier pass on its proof".
- F2 (OVERSTATED, assembly.tex l. 229): add "the K-independence of beta_j(g)" to "B-T2 still needs (PI), (F), (M_j), V1, (G2), L5, (H0)".
- F3 (minor, README l. 15/16/18): add K-independence of beta_j(g) to the open list; add "Lemma G and the bound chain beyond point checks" to the residue.
- F-a (optional, abstract): "given our reading of Balaban's averaging operator and the residue listed in Section 5.7".
- F-c (optional, theorem2.tex l. 360): "(B2) open" -> "(B2) reduces to (H2) ...; discharged at L = 13".
- N1 (outside pass 5): appendix.tex l. 99 still lists (U) as open under B22; F8 made (U) the constant choice C23.

## Counts
Edited sentences graded: 27. MATCH 22; OVERSTATED 2 (F1, F2); UNDERSTATED caveat 3 (abstract, README residue, README open list). Theorem 5.1 scope: exact. Consequence sentence: no overclaim. Compile: 0 errors.
