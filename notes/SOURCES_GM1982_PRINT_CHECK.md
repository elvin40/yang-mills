# SOURCES_GM1982_PRINT_CHECK — SOURCES_GM1982_CHECK against the printed Göpfert–Mack paper

Date 2026-10-28. Opus, reading task. No existing file edited. PLAN.md not changed. sync.sh not run. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md not read.

## 0. Source and method

- Printed paper: M. Göpfert, G. Mack, Commun. Math. Phys. 82, 545–606 (1982). Local file balaban/1982_cmp82_gopfert_mack.pdf, 62 pages. PDF page n is CMP page 544 + n.
- I used the text layer (balaban/1982_cmp82_gopfert_mack.txt) only to locate items. I rendered the pages at 200 dpi (400 dpi crops where needed) into a fresh /tmp folder and read every formula below from the images. The folder is deleted.
- Pages read as images: 545–551, 556, 558–559, 572–575, 583–585, 597–598. Pages read through the text layer only: 552–555, 557, 560, 580–582, 596, 599.
- Input under check: SOURCES_GM1982_CHECK.md (24 rows), which used the DESY 81-036 preprint. Inputs read for consequences: SOURCES_R3S1_E3C.md §7.2, PLAN.md and INBOX.md entries on GM and uniqueness. R3S1_GAP.md was not re-read; I use the row texts of SOURCES_GM1982_CHECK as its proxy.
- Grades: AGREES (the print supports the row as written in SOURCES_GM1982_CHECK, apart from page numbers). DIFFERS (the print differs from the row in numbering, a constant, a hypothesis, a quotation or the statement; details given).
- Numbering. All equation, theorem, lemma and remark numbers quoted in SOURCES_GM1982_CHECK are the same in print. Only the page numbers change. The table gives the CMP page for each item. I do not count a page-number change as a difference.
- Notation bridge (unchanged): β_GM = 4π²/g² (eq. 1.3, p. 546), β_R3S1 = β_GM/(4π²) at a = 1.

## 1. Items that needed special care

1. m_D. Abstract (p. 545): "m_D² = (2β/a³)e^{−βv_Cb(0)/2}". Eq. (1.8a) (p. 547): "a²m_D² = (2β/a)e^{−βv_Cb(0)/2}". Eq. (2.16) (p. 559): "z = e^{−βv_Cb(0)/2} = m_D²/2β" at a = 1. So m_D² = 2β_GM z = 8π²β_R z. Footnote 4 (p. 547): m_D^{−1} "is equal to the prediction of a Debye Hückel approximation for the screening length". AGREES.
2. v(0). Eq. (1.8b) (p. 547): "v_Cb(0) = 0.2527a^{−1}", cited to ref. [11] (Ukawa–Windey–Guth). Eq. (9.1) (p. 585): "c_0 = a v_Cb(0) ≃ 0.2527". The symbol c_0 in print is this number. It is not a dilution threshold. AGREES.
3. Fugacity. Eq. (2.15)–(2.16) (p. 559). z is a function of β only. There is no free fugacity anywhere in the paper. The text after (2.17) says the normal ordering "is responsible for the exponentially small factor 2z = m_D²/β". AGREES.
4. Area law. Theorem 1 (p. 547): "with a constant c > 0 for β/a sufficiently large, α ≥ c m_D β^{−1} (1.9)". No value of c and no β threshold in the statement. The proof ends with (8.6) (p. 585): "α ≥ ε′ c_F 4π² m̃_D L · m̃_D β^{−1}". So the print does give the structure c = 4π² ε′ c_F (m̃_D L), with m̃_D → m_D. Here ε′ is "so small that the proof of Lemma 15 remains unaffected" (p. 585), m̃_D L is "small but β independent" (p. 585), and c_F is the constant of Lemma 12 (eq. 7.7, p. 581). Appendix C (p. 597, eq. C.9) gives c = min{1/60, (1/720)m̃_D^{−2}L^{−2}} and says "the actual value of c should be 1/60"; (C.21) (p. 598) then gives F_1 ≥ c(1 − ε)m̃_D²L³‖T(h)‖² minus perimeter terms. So c_F is of order (1 − ε)/60 in GM's normalization. ε′ and m̃_D L stay unspecified. No numerical c follows. The classical value "α_class.approx. = 8m_Dβ^{−1}" (p. 547) is stated "in the limit a^{−1} ≫ M ≫ m_D". After Theorem 1 GM write: "We believe that the right hand side of (1.9) represents the true asymptotic behaviour of α, apart from the value of the constant c, but the estimates to prove it are lacking." That is, the missing estimate is an upper bound on α.
5. Mass gap. Three printed places. (a) p. 547, after Corollary 2: "We will see from Theorem 4 below that m_D is asymptotically equal to the physical mass (= mass gap, or inverse correlation length)." (b) Theorem 4 (p. 551) and its use of "inverse physical mass (= mass gap)" (p. 551). Theorem 4 itself proves only convergence of correlations of Ψ at fixed nonzero distances m_D|x_i − x_j| to the free field of mass m_D, with M = (β/a)^{1/12} m_D (eq. 9.2, p. 585). (c) End of §7 (p. 584): by "doubling the measure" and Lemma 15, the truncated loop correlations (7.20) decay; "this glue-ball mass is asymptotically bounded from below by m_D. The details are left to the reader." Footnote 10 thanks G. Münster. So: a sketch of a lower bound, plus an informal assertion (a) that m_D equals the gap asymptotically, attributed to Theorem 4. Theorem 4 does not contain a decay statement, so (a) is not proved in print.
6. Uniqueness. Remark F (p. 556) is printed as SOURCES_GM1982_CHECK quotes it: "A proof of unicity would be desirable." The print also says (p. 546): the Kirkwood–Salsburg equations "define a state and will be shown to admit a unique solution in ∞ volume", and (p. 580): the KS equations (6.41b) "are sufficient to determine ϱ(X) uniquely, by iteration". Lemma 17 (p. 584): "there exists a unique solution of the Kirkwood-Salsburg equations (6.41b)". Remark F defines non-uniqueness as another state that assigns different values "to Z-invariant observables". So the printed uniqueness is uniqueness of the KS solution only. Gibbs-state uniqueness is open in print.
7. Dilution threshold c_0. None printed. Every smallness condition is qualitative: "λ sufficiently small", "β/a sufficiently large (depending on κ, μ, C, δ, and λ)" (Prop. 3, p. 549); "m̃_D L small and independent of β/a" (p. 574); "β/a sufficiently large" (Lemmas 15, 16, p. 583–584). The only explicit numbers in the constant chain are 1/60 and 1/720 in Appendix C (item 4). The only printed "c_0" is 0.2527 (item 2).
8. Method. Prints as in the preprint. p. 548: integrate out high frequencies with Pauli–Villars cutoff M = λ^{−1}m_D; split the Yukawa interaction "into pieces of decreasing strength and increasing range, and treating one after the other of these pieces by cluster expansion. This is our method of iterated Mayer expansions which was described in [6]." p. 558: "the known methods for proving convergence of such a Mayer expansion fail for the values of β and M in which we are interested. Therefore a new piece of technology had to be developed." §3 (p. 559–560): Yukawa gas with hard core (3.7), split (3.6). §6 heading (p. 573): "The Glimm-Jaffe-Spencer Expansion"; "We adapt the analysis of Brydges and Federbusch [2]"; three steps "The Peierls expansion, the translation of Φ, and the cluster expansion" (p. 574). Lemma 15 is "the complete transcription of Lemma 9.12 of [2]" (p. 583).
9. Shift in the Wilson-loop argument. Real. Prop. 3, eq. (1.16) (p. 549) already writes the measure as dμ_{u,kβ^{−1/2}f}: Gaussian with real mean kβ^{−1/2}f, f real by (1.12). Eq. (6.1) (p. 574) re-centres with "dμ_{u,g}(Φ) = dμ_u(Φ − g)"; the text says "Because of the shift in the field, V_eff now depends on k, Ξ". The source then enters as the phase e^{ik(m,f)} (6.2) and ε_k(ξ) = e^{im(β^{1/2}Φ(x)+kf(x))} − 1 (6.3). §6 B (p. 575): "Φ(x) = ψ(x) + g(x) (6.13)", with g = g_h built from h and kβ^{−1/2}f, both real (6.20, p. 576, text layer). No complex translation appears.

## 2. Row-by-row check, rows 1–12

"Prior grade" is the grade in SOURCES_GM1982_CHECK. "Print" gives the CMP location and what it says. "Grade" is this file's grade of that row against the print.

| # | Topic | Prior grade | Print (CMP 82) | Grade | Differences and supplements |
|---|---|---|---|---|---|
| 1 | Citation CMP 82, 545–606 | CONFIRMED | Header p. 545: "Commun. Math. Phys. 82, 545–606 (1982)"; code 0010-3616/82/0082/0545. | AGREES | Year printed is 1982 (prior §0 writes "1981/82"). |
| 2 | Duality (i), Z-ferromagnet | CONFIRMED | (1.1)–(1.2) p. 545; (1.3) p. 546; heat-bath boundary condition p. 545–546; App. A cited p. 546. | AGREES | Print adds (p. 546) that this boundary condition breaks the global Z-invariance. |
| 3 | Duality (ii), Coulomb gas | CONFIRMED | (2.6) p. 557; "Coulomb gas with insulating boundary conditions" p. 558; charges confined to Λ. | AGREES | None. |
| 4 | v(0) = 0.2527 | CONFIRMED | (1.8b) p. 547; (9.1) p. 585 "c_0 = av_Cb(0) ≃ 0.2527". | AGREES | None. See §1 item 2 on the symbol c_0. |
| 5 | z = e^{−2π²β_R v(0)} | CONFIRMED | (2.15)–(2.16) p. 559. | AGREES | None. |
| 6 | Sine-Gordon form | CONFIRMED | (2.15) p. 559; (2.17) p. 559 with "If we could neglect the monopoles with |m| > 1 and also the hard core of the others". | AGREES | None. |
| 7 | m_D² = 8π²β_R z | CONFIRMED | (1.8a) p. 547; (2.16) p. 559; abstract p. 545; footnote 4 p. 547. | AGREES | None. |
| 8 | Gap exponent S_0/2 | CONFIRMED | (1.8a) p. 547: m_D ∝ e^{−βv_Cb(0)/4}. Also (1.10) p. 547: α/m_D² ≥ c(2β³/a³)^{−1/2}e^{βv_Cb(0)/4} → ∞. | AGREES | (1.10) shows the same quarter exponent. As before, "m_D = gap" is not proved in print (row 14). |
| 9 | e^{−4.99/g²} | CONFIRMED | Arithmetic on (2.16): 2π² × 0.2527 = 4.988. | AGREES | None. |
| 10 | (GM-1) area law, constants | CONFIRMED in form | Theorem 1 (1.9) p. 547; α_class = 8m_Dβ^{−1} p. 547; proof (8.1)–(8.6) p. 584–585. | AGREES | Supplement. (8.6) prints the structure c = 4π² ε′ c_F (m̃_D L). c_F comes from Lemma 12 (7.7) p. 581 and App. C (C.9), (C.21) p. 597–598, where the inner constant is min{1/60, 1/(720m̃_D²L²)} ≈ 1/60. ε′ and m̃_D L are not given. So c and the β threshold are still not computable. The prior statement "neither c nor the threshold is explicit" holds. The sentence "the estimates to prove it are lacking" (p. 547) refers to α ≈ c m_D/β as the true asymptotics, i.e. to a missing upper bound on α. |
| 11 | (GM-2) method | CORRECTED | p. 548 (iterated Mayer expansions, ref. [6]); p. 558 (known Mayer methods fail); §3 p. 559–560; §6–7 p. 573–584 (GJS adapted from Brydges–Federbush). | AGREES | None. The print uses no "neutral cluster", "Bjerrum length" or "Debye screening step". |
| 12 | Dilution inequalities πβ ≪ z^{−1/3} ≪ (8π²βz)^{−1/2} | UNSUPPORTED | Not in print. Hypotheses: Prop. 3 p. 549; "LM = sufficiently small constant" p. 550; "m̃_D L small and independent of β/a" p. 574; m̃_D L′ large (text p. 581–582). | AGREES | Supplement. p. 550 states that Brydges–Federbush need "a small value of the reduced fugacity z̄ (z̄ = a³·fugacity when the self-interaction of the charges is included in the potential)" or M^{−1} below one lattice spacing. That is BF's condition, not a GM hypothesis. |

## 3. Row-by-row check, rows 13–24

| # | Topic | Prior grade | Print (CMP 82) | Grade | Differences and supplements |
|---|---|---|---|---|---|
| 13 | (GM-3) all β | CORRECTED (minor) | Corollary 2 p. 547, proof by Theorem 1 and Guth's inequality "(Lemma 4.1 of [18] with K = Δ^{−1})". Theorem 10 p. 572: "α ≥ cβ^{−1}a^{−1}" (5.13) for β/a small; proof gives c = 2π²ε (5.19) p. 573. | AGREES | Supplement: Theorem 10 has an explicit c = 2π²ε, ε ∈ (0, 1) arbitrary, with a small-β threshold that depends on ε and the counting constant c_1 of (5.18). Not used by R3S1. |
| 14 | Dual-field mass gap | CORRECTED | Theorem 4 p. 551; (9.2) p. 585; Lemma 16 and (7.19) p. 584; (7.20) and the glue-ball sentence p. 584; footnote 10 p. 584; p. 547 sentence on m_D and the mass gap. | DIFFERS | Two details of the row do not match the print. (i) The row quotes "the estimates to prove it are lacking" for the upper bound on the glue-ball mass. In print this sentence appears once only, on p. 547, and refers to α (row 10). The print says nothing about an upper bound on the glue-ball mass. Either the preprint has a different sentence here or the prior check moved the quote. (ii) The row omits p. 547: "We will see from Theorem 4 below that m_D is asymptotically equal to the physical mass (= mass gap, or inverse correlation length)." So GM do assert the sharp statement "gap ≈ m_D", informally, and point to Theorem 4. Theorem 4 proves fixed-distance convergence only. It gives no decay bound and no gap. The prior grade CORRECTED and its main conclusion stand: no printed fixed-β gap theorem; a sketched lower bound only. The prior sentence "the sharp target ... has no GM support even in the U(1) model" should read "is asserted by GM (p. 547) but not proved". |
| 15 | Uniqueness (G5) | CORRECTED | Remark F p. 556; p. 546; p. 580; Lemma 17 (8.1) p. 584. | AGREES | Supplement: p. 546 and p. 580 also state uniqueness of the KS solution, and p. 580 says GM "study the state of the infinite volume Z-ferromagnet at low temperature that is defined by solution of these equations". No Gibbs-state uniqueness. See §4.3. |
| 16 | (H1) Villain | CONFIRMED | Abstract p. 545; p. 546; Corollary 2 p. 547 ("with Villain action"). p. 553 mentions Padé analysis for the Wilson action as outside evidence only. | AGREES | None. |
| 17 | (H2) one species, z tied to β | CONFIRMED | (1.15) p. 549: m = ±1, ±2, …; (2.15)–(2.16) p. 559; hard core (3.7) p. 560 (text layer). | AGREES | None. |
| 18 | (H3), [C4]/G4, c_0 | UNSUPPORTED | No c_0 threshold anywhere. Prop. 3 p. 549; Lemmas 15–16 p. 583–584. | AGREES | Supplement: the only explicit numbers in the chain are 1/60 and 1/720 (App. C, p. 597). They enter the area-law constant c_F, not a smallness threshold on β or z. G4 still has nothing printed to compare against. |
| 19 | (H4) only Coulomb interaction; boundary condition | CONFIRMED | (2.6) p. 557; p. 558; heat bath p. 545–546; App. A. Also p. 550: the Gaussian measure is built with 0-Dirichlet condition on ∂Λ_1, Λ_1 ↗ (aZ)³. | AGREES | None. |
| 20 | (H5) "complex translation" | CORRECTED | (1.16) p. 549 (real mean kβ^{−1/2}f); (6.1)–(6.3) p. 574; (6.6)–(6.10) p. 575; (6.13) p. 575. | AGREES | Supplement: the real shift is already in the statement of Proposition 3, (1.16). So the "insertion-robust" step list of the prior row should start at (1.16), not at (6.1). |
| 21 | Multi-species "within Brydges–Federbush" | UNSUPPORTED | p. 550 (BF need small reduced fugacity or M^{−1} < a; "we can use their results" for the second step; "readily adapted" to the Wilson loop); p. 558. | AGREES | None. |
| 22 | Insertion tolerance, C_GM | UNSUPPORTED | (1.18) p. 549; Lemma 16 (7.17)–(7.19) p. 583–584. | AGREES | Supplement: Lemma 16 also states "If we require that X strictly contains X_1 ... we may replace c_3 by c·c_3 where c → 0 as β/a → ∞" (p. 584). Constants c_2, c_3 are "independent of β". This strengthens the prior's "partial evidence against C_GM ∝ e^{O(β)}" for a fixed number w of phase insertions. It does not cover an extensive product. |
| 23 | Yukawa term from holonomy field | UNSUPPORTED | (2.7)–(2.9) p. 558. | AGREES | None. |
| 24 | G1 theorem exists | CONFIRMED | Theorem 1, Corollary 2, Proposition 3, Theorem 4, Lemmas 15–17 as listed. | AGREES | The prior caveat "preprint, not print" is now removed for every row: equation and theorem numbers are identical. Rows 2–10 can be cited as [V] against the print. |

Tally: 23 rows AGREE, 1 row DIFFERS (row 14, detail only).

## 4. Grade changes and consequences

### 4.1 Rows of SOURCES_GM1982_CHECK whose grade changes

None. All 24 prior grades (CONFIRMED / CORRECTED / UNSUPPORTED of R3S1_GAP's claims) stand against the print.
Row 14 keeps CORRECTED, but two of its details change (§3, row 14): the "estimates are lacking" quote belongs to α, not to the glue-ball mass; and GM do assert "m_D asymptotically equals the mass gap" (p. 547), without proof.
Prior §1 and §3 summaries repeat the same misplaced quote ("The matching upper bound: 'the estimates to prove it are lacking.'"; "an unproved belief for the upper bound"). They should read: "GM assert, without proof, that m_D is asymptotically the mass gap (p. 547)".

### 4.2 Consequences for R3S1_GAP.md

- No new correction. The corrections of SOURCES_GM1982_CHECK §5 (method in (GM-2), no complex translation in (H5), G4 folds into G3, G5 split, no Gibbs uniqueness) all hold in print.
- The preprint caveat can be dropped. R3S1 may cite CMP 82 equation numbers directly; they match the preprint.
- (H5) and §4.2(b): the real shift to re-check under insertions starts at Proposition 3, eq. (1.16) (mean kβ^{−1/2}f), then (6.1)–(6.3), (6.6)–(6.10), (6.13).
- [C5]/G5a: the gap lower bound remains a sketch (p. 584). R3S1 may cite p. 547 for the expectation that the gap equals m_D asymptotically, but only as a GM assertion, not a result.
- G4: still no printed threshold. The print adds only the partial constant 1/60 inside the area-law constant c_F (App. C), which does not bear on dilution.

### 4.3 Consequences for SOURCES_R3S1_E3C.md §7.2 (dilution constants, g_0² ∝ 1/(N_4 log N_4))

- §7.2(a) is conditional on "if GM's c_0 is a fixed number (z ≤ e^{−c_0β})". The print has no such condition. GM's hypotheses are "β/a sufficiently large" with z = e^{−βv(0)/2} tied to β. So branch (a) has no GM anchor. The printed c_0 = 0.2527 is v(0); a reader must not take it for a threshold.
- §7.2(b) uses the R3S1 inequalities πβ ≪ z^{−1/3} ≪ (8π²βz)^{−1/2}. These are not in print (row 12). The derivation g_0² ≈ c_N/(3N_4 log(8π²κ_3N_4/(δ_GM c_N))) therefore rests on R3S1's heuristic, not on GM. δ_GM has no printed value.
- What the print does imply. GM's smallness is "β/a large" for the tied model. In the untied adaptation (fugacity z = e^{−(C_−/κ_3)β}), the analogous requirement is an unknown function of β and z. If it has the form "βz^{p} ≤ δ" for some p > 0, the same algebra gives g_0² ∝ C_−/log(1/C_−) ∝ 1/(N_4 log N_4) with a p-dependent constant. If the adaptation needs z ≤ e^{−c_0β} with a fixed c_0, branch (a) applies and fails at large N_4. The print decides neither case. So the label "[I] for GM's form" in E3C §7.2 should become "not printed; to be fixed by the G3 adaptation".
- No change to the [P] part of E3C (C_− ∝ 1/N_4 and its sharpness).

### 4.4 Consequence for the planned weak-uniqueness corollary

- Printed: uniqueness of the solution of the infinite-volume Kirkwood–Salsburg equations (6.41b), Lemma 17 (p. 584), also p. 546 and p. 580, under the parameter conditions of Lemma 16 (β/a large). The state GM study is defined by this solution (p. 580). It is built with the heat-bath boundary condition, and GM "take it for granted" that the infinite-volume limit exists and can be performed in the KS equations (p. 546).
- Not printed: uniqueness of the infinite-volume Gibbs state, even on Z-invariant observables (Remark F, p. 556).
- So a weak-uniqueness corollary can cite GM for exactly one statement: "for β/a large, the KS equations of the GJS expansion have a unique solution, and this fixes all Z-invariant correlations of the expansion state". Any statement that every Gibbs state, or every limit from other boundary conditions (periodic, slab-induced), agrees with it is new work. The INBOX option "restate Theorem B′ without uniqueness" or "restrict Theorem B′ to the KS state with heat-bath boundary condition" is the only form the print supports.
- Caveat: the existence of the infinite-volume limit inside the KS equations is an assumption in GM (p. 546), not a proved step. A corollary that cites Lemma 17 inherits this assumption.

### 4.5 Printed material that the prior check did not report

1. p. 547: GM's assertion that m_D is asymptotically the mass gap (row 14).
2. (8.6) p. 585 and App. C p. 597–598: the structure c = 4π² ε′ c_F (m̃_D L) and the inner constant 1/60 (rows 10, 18).
3. (1.16) p. 549: the real mean shift already in Proposition 3 (row 20).
4. Lemma 16 refinement c·c_3 with c → 0 as β/a → ∞ (row 22).
5. Theorem 10: explicit c = 2π²ε (row 13).
6. p. 546: GM assume the infinite-volume limit in the KS equations exists (§4.4).
7. Minor print typos, no effect: Prop. 3 writes "β/α" for β/a, and its last line reads "2βm_D^{−1}ϱ_1(±1, x) → 1"; by (2.16) the power should be m_D^{−2}. p. 575 writes "Mβ^{−1} → 0" where Prop. 3 has "Mβ → 0".

No dilution threshold c_0 and no Gibbs-uniqueness statement appear anywhere in the print.
