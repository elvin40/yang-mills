# SOURCES_ALT_ROUTES_CITES — citation check of ALT_ROUTES.md: Chevyrev–Shen and CCHS (stochastic quantization of Yang–Mills)

Written 2026-10-28 (Claude Opus 5.5). New file; no existing file edited. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. Downloads (arXiv API records and TeX sources) in /tmp/gaplit_dl, deleted at the end.

Method. For each paper I read the arXiv API record (title, authors, date, journal ref, abstract) and grepped the arXiv TeX source with context. Grades: [V] read in TeX source or abstract by me. Verdicts: CONFIRMED / CORRECTED / UNSUPPORTED. Line numbers refer to ALT_ROUTES.md as of 2026-10-28 (258 lines; the renumbering pass may shift ids but I cite line numbers only).

Scope. Every line of ALT_ROUTES.md that cites Chevyrev–Shen (CS) or Chandra–Chevyrev–Hairer–Shen (CCHS): lines 135, 139, 140, 141, 142, 147, 164, 188, 236, 249, 256. I also check the two secondary sources that ALT_ROUTES uses to support the same statements: the Chevyrev survey (lines 143, 152, 164, 188) and the Cao–Sheffield overview (lines 145, 168).

## 1. Bibliographic check

| Key | ALT_ROUTES gives | arXiv record [V] | Verdict |
|---|---|---|---|
| CCHS-2D (l. 139) | Chandra–Chevyrev–Hairer–Shen, "Langevin dynamic for the 2D Yang–Mills measure", Publ. IHÉS 136 (2022) 1–147, arXiv 2006.04987 | Same authors and title; v1 8 Jun 2020, v3 25 May 2022; Publ. Math. IHÉS 136 (2022), 1–147 | CONFIRMED |
| CCHS-3D (l. 140) | CCHS, "Stochastic quantisation of Yang–Mills–Higgs in 3D", Invent. Math. 237 (2024) 541–696, arXiv 2201.03487 | Same; v1 10 Jan 2022, v2 15 Apr 2024; Invent. Math. 237, 541–696 (2024), DOI 10.1007/s00222-024-01264-2 | CONFIRMED |
| CS-2D (l. 141) | Chevyrev–Shen, "Invariant measure and universality of the 2D YM Langevin dynamic", CPAM (2026), arXiv 2302.12160 | Title "Invariant measure and universality of the 2D Yang-Mills Langevin dynamic"; I. Chevyrev, H. Shen; v1 23 Feb 2023, v3 6 Apr 2026; Comm. Pure Appl. Math. (2026), DOI 10.1002/cpa.70043 | CONFIRMED (title abbreviated "YM") |
| CS-3D (l. 142) | Chevyrev–Shen, "Uniqueness of gauge covariant renormalisation of stochastic 3D YMH", ARMA 250 (2026) art. 11, arXiv 2503.03060 | Title "Uniqueness of gauge covariant renormalisation of stochastic 3D Yang-Mills-Higgs"; v1 4 Mar 2025, v2 21 Jan 2026; Arch. Ration. Mech. Anal. 250 (2026), no. 1, Paper No. 11, 42 pp | CONFIRMED |
| Survey (l. 143) | Chevyrev survey, JMP 63 (2022), arXiv 2202.13359 | I. Chevyrev, "Stochastic quantisation of Yang-Mills", J. Math. Phys. 63(9) (2022); v1 27 Feb 2022 | CONFIRMED (title not given in ALT_ROUTES) |
| Cao–Sheffield (l. 145) | "Cao–Sheffield overview, arXiv 2406.19321 (2024)" | S. Cao, S. Sheffield, "Fractional Gaussian forms and gauge theory: an overview", v1 27 Jun 2024; no journal ref | CONFIRMED (title not given) |

"Chevyrev–Shen 2026" in the task brief matches two papers: CS-2D (CPAM 2026) and CS-3D (ARMA 2026). ALT_ROUTES uses both labels, and in line 188 "Chevyrev–Shen 2026" means CS-3D. No citation failed to locate.

## 2. Statements attributed to CCHS-2D and CCHS-3D

| # | Line | Statement in ALT_ROUTES | Source text [V] | Verdict |
|---|---|---|---|---|
| A1 | 139 | d = 2, T² | 2006.04987 works on T² with a trivial bundle ("implicitly fixing a global section") | CONFIRMED |
| A2 | 139 | State space of distributional g-valued 1-forms with holonomies along regular curves defined; gauge action extends; orbit space Polish | Abstract: "a space of distributional connections for which holonomies along sufficiently regular curves (Wilson loop observables) and the action of an associated group of gauge transformations are both well-defined"; orbit space "shown to be a Polish space when equipped with a natural Hausdorff metric" | CONFIRMED. Minor: CCHS-2D call the space Ω¹_α, not S, and in 2D a gauge GROUP acts (in 3D only an equivalence relation ∼ is defined; survey open problem 4). |
| A3 | 139 | Renormalised SYM with DeTurck term solved LOCALLY in time by regularity structures; gauge covariance in law | Abstract: regularity structures, "DeTurck trick ... to show invariance, in law, of the solution under gauge transformations"; text: convergence "with a possibility of finite-time blow-up"; "Our results do not exclude finite-time blow-up of solutions to SYM, not even in the quotient space" | CONFIRMED |
| A4 | 139 | Canonical Markov process on O "up to a possible finite-time blow-up" | Content correct (text above). The quoted wording is not in CCHS-2D; "up to a potential finite time blow-up" is the wording of the CCHS-3D abstract. | CORRECTED (quotation wording; drop the quotation marks or cite CCHS-3D's phrase) |
| A5 | 139 | Not given by CCHS-2D: global existence; invariant measure; uniqueness | CCHS-2D §"Open problems": "It is natural to conjecture that the Markov process ... possesses a unique invariant measure", identified with the Sengupta/Lévy YM measure | CONFIRMED |
| A6 | 140 | d = 3, T³ | CCHS-3D: state space "for SYMH on T³"; compact Lie group G, Higgs in an orthogonal representation on a finite-dimensional real inner product space | CONFIRMED. ALT_ROUTES omits that the result covers YM–Higgs with any such representation, pure YM included. |
| A7 | 140 | State space; LOCAL solutions of the renormalised flow | Abstract: "a nonlinear metric space of distributions"; "local in time solutions to the renormalised stochastic YMH flow" | CONFIRMED |
| A8 | 140 | "a unique choice of renormalisation counterterms" gives gauge covariance in law (small-noise symmetry argument) | Abstract: "by leveraging symmetry arguments in the small noise limit, we show that there is a unique choice of renormalisation counterterms such that these solutions are gauge covariant in law" | CONFIRMED (verbatim) |
| A9 | 140 | Canonical Markov process on gauge orbits up to blow-up | Abstract: "a canonical Markov process on 𝔒 (up to a potential finite time blow-up)" | CONFIRMED |
| A10 | 140 | Not given: global existence; invariant measure; uniqueness of invariant measure | Consistent with the abstract and with CS-3D intro (B9 below) | CONFIRMED |
| A11 | 164 | d = 2, 3 need finitely many counterterms: the mass counterterm C A of CCHS | CCHS-3D abstract and CS-3D abstract: "a mass renormalisation of the Yang-Mills field such that the solution is gauge covariant" | CONFIRMED for the YM field. I did not check the Higgs counterterms of CCHS-3D; ALT_ROUTES treats pure YM. |
| A12 | 249 | "local existence on gauge orbits in d = 2, 3 (CCHS 2022, 2024)" | Publication years 2022 (IHÉS) and 2024 (Invent.) | CONFIRMED |

## 3. Statements attributed to CS-2D and CS-3D

| # | Line | Statement in ALT_ROUTES | Source text [V] | Verdict |
|---|---|---|---|---|
| B1 | 141 | d = 2, T²; the 2D YM measure, any connected compact G, is INVARIANT for the renormalised dynamic | Abstract: "the Yang-Mills (YM) measure for the trivial principal bundle over the two-dimensional torus, with any connected, compact structure group, is invariant for the associated renormalised Langevin dynamic" | CONFIRMED. ALT_ROUTES omits "trivial principal bundle". |
| B2 | 141 | (omission) | Thm "Invariant measure" (ii): "μ is the unique invariant probability measure on 𝔒_α of X. Furthermore, μ has full support in 𝔒_α and X is reversible with respect to μ." | CORRECTED by addition: CS-2D also prove UNIQUENESS of the invariant measure, full support and reversibility. Line 139's "uniqueness" gap of CCHS-2D is closed by CS-2D; line 147 should say "invariant measure, its uniqueness, and global existence in d = 2". |
| B3 | 141, 188 | Global existence follows; Bourgain's method (invariant measure + lattice gauge fixing) | Abstract: "regularity structures, lattice gauge-fixing, and Bourgain's method for invariant measures". Cor. "Long-time existence": "The Markov process X^x does not blow up for every initial condition x ∈ 𝔒_α". Remark: "We do not even know if SYM(C̄,·) has global-in-time solutions." | CORRECTED. Global existence holds for the Markov process on the orbit space 𝔒_α, for every initial orbit. It is not proved for the connection-valued SPDE itself (the authors say so). Lines 141, 188, 249 should say "global existence on gauge orbits". |
| B4 | 188 | Invariance gives a.s. global existence for μ-a.e. datum, then all data by strong Feller / support arguments | Proof of the corollary: "Since μ has full support in 𝔒_α and is invariant for X, the conclusion follows from the strong Feller property of X" | CONFIRMED in content. Source tag CORRECTED: line 188 cites "[V, abstract and survey §4]"; the abstract does not contain this argument and the survey (2022) predates CS-2D. The argument is in CS-2D §2 (corollary after the invariant-measure theorem). |
| B5 | 188 | The invariant measure is constructed independently (Sengupta/Lévy 2D YM measure) | Thm (i): the measure agrees with "the YM measure for the trivial principal G-bundle over T² in the sense of [Lévy06]"; part (i) for simply connected G "is essentially due to [Chevyrev19YM]" | CONFIRMED |
| B6 | 141 | Gauge-fixed decomposition GFF + almost-Lipschitz remainder; universality over Wilson / Villain / Manton | Abstract: "a gauge-fixed decomposition of the YM measure into a Gaussian free field and an almost Lipschitz remainder"; universality for "standard lattice gauge theories associated to Wilson, Villain, and Manton actions" | CONFIRMED |
| B7 | 141, 164 | Uniqueness of the mass renormalisation via Euler estimates for singular SPDEs and Young ODEs for Wilson loops | Abstract: "a proof of uniqueness for the mass renormalisation of the gauge-covariant continuum Langevin dynamic ... relies on Euler estimates for singular SPDEs and for Young ODEs arising from Wilson loops" | CONFIRMED |
| B8 | 142, 164 | CS-3D: d = 3; uniqueness of the mass renormalisation that gives gauge covariance | Abstract: "we prove uniqueness of the mass renormalisation that leads to gauge covariant solutions. This strengthens the main result of (arXiv:2201.03487)"; setting T³, compact Lie group | CONFIRMED |
| B9 | 142, 188 | CS-3D: the process on O "conjecturally has a unique invariant measure"; "proving that this invariant measure exists would yield a construction of the 3D YMH measure on T³, which is currently an open problem" | Intro (TeX l. 1017–1018): "a canonical Markov process on gauge orbits associated to the SYMH, which conjecturally has a unique invariant measure. (Proving that this invariant measure exists would yield a construction of the 3D YMH measure on T³, which is currently an open problem.)" | CONFIRMED (verbatim). Note: the sentences are in the introduction, not the abstract; line 135's header "[V: abstract pages ...]" does not cover them. |
| B10 | 142 | Not given: existence of the invariant measure; global existence | Intro: solutions are gauge equivalent in law "(modulo possible finite-time blow-up)" | CONFIRMED |
| B11 | 236 | The Chevyrev–Shen lattice-dynamics universality step does not exist in 3D | CS-3D intro (TeX l. 1060): "Deriving the scaling limit of the 3D lattice YMH Langevin dynamic is currently an open problem"; CS-3D abstract: uniqueness "is potentially important for the identification of the limit of other approximations, such as lattice dynamics" | CONFIRMED |
| B12 | 249 | "d = 3 invariant measure = open (Chevyrev–Shen ARMA 2026)" | B9 | CONFIRMED |
| B13 | 249 | "invariant measure and global existence in d = 2 only (Chevyrev–Shen 2026, using the pre-existing 2D measure)" | B1, B3, B5 | CORRECTED: global existence on gauge orbits only (B3); add uniqueness (B2). |
| B14 | 256 | Grades "[V]: CCHS/Chevyrev–Shen/Shen–Zhu–Zhu abstracts" | B4 and B9 rely on paper text, not abstracts | CORRECTED (source tag only; the statements hold) |

## 4. Secondary sources used for the same statements

| # | Line | Statement | Source text [V] | Verdict |
|---|---|---|---|---|
| C1 | 143 | Survey open problem (1): unique invariant measure? "For d = 3, this would provide the first construction of the YM measure in 3D, even in finite volume" | Survey §5: verbatim. The survey adds: existence "should imply uniqueness due to the strong Feller property and full support theorem". | CONFIRMED |
| C2 | 143 | (2) infinite volume "non-trivial even for d = 2"; (3) nontrivial bundles; (4) a gauge group for the 3D orbit space; (5) large N | Survey §5: all five items present in this order; (2) verbatim | CONFIRMED |
| C3 | 152 | Stochastic YM with DeTurck term (survey (1.3)–(1.4)): ∂_t A = −d_A^*F_A − d_A d_A^*(A − Z) + ξ | Survey: ∂_t A = −d_A^*F(A) − d_A d^*A + ξ, with d^*A = −Σ_i ∂_iA_i (the plain adjoint, no reference connection Z); coordinates: ∂_tA_i = ΔA_i + [A_j, 2∂_jA_i − ∂_iA_j + [A_j, A_i]] + ξ_i | CORRECTED: the survey's DeTurck term is −d_A d^*A, not −d_A d_A^*(A − Z). The schematic form ΔA + A∂A + A³ + ξ is unaffected, so §6 scaling is unaffected. Equation numbers not checked. |
| C4 | 164 | Subcriticality "happens if and only if d < 4 and ... parallels the notion of super-renormalisability" | Survey: "subcriticality, which happens if and only if d<4 and which parallels the notion of super-renormalisability in QFT" | CONFIRMED |
| C5 | 188, 236 | "a construction of the 3D YM measure and a description of its gauge-invariant observables, even on T³, remains open"; Balaban for "d = 3, 4 using a renormalisation group approach on the lattice" | Survey §1: both verbatim | CONFIRMED |
| C6 | 145 | Cao–Sheffield: "four dimensions is the critical case", so "no existing local solution theory" applies | 2406.19321 TeX: "four is the critical dimension for Yang--Mills, and thus none of the existing local solutions theories for stochastic PDEs apply" | CONFIRMED in content; CORRECTED wording (the quoted strings are paraphrases). ALT_ROUTES grade [V-indirect] can be raised to [V]. |
| C7 | 145, 168 | Local existence in 4D "a major open problem"; 3D "also still open"; only nontrivial global results are 2D | TeX: "It is an open problem to carry out the stochastic quantization approach to Yang--Mills in dimension three (as well as dimension four, where even local existence of the Langevin dynamics is a major open problem)"; "In 3D, what remains is to show global existence ... (uniform-in-time bounds)"; "the only known nontrivial results for global existence ... are in 2D: [CS23] and ... [BC24] which deals with Abelian Higgs" | CONFIRMED. Cao–Sheffield also say CS23 "was able to show global existence and invariance"; their "global existence" is the orbit-space statement of B3. |

## 5. Summary of grades

- Bibliography: 6 of 6 CONFIRMED. All arXiv ids, authors, titles, journals and years match. No citation is missing.
- CCHS statements (A1–A12): 11 CONFIRMED, 1 CORRECTED (A4: quoted phrase not in CCHS-2D; content correct).
- CS statements (B1–B14): 9 CONFIRMED, 5 CORRECTED. The substantive corrections:
  - B2/B13: CS-2D also prove UNIQUENESS of the invariant measure, plus full support and reversibility. ALT_ROUTES omits this.
  - B3/B13: CS-2D global existence is for the Markov process on gauge orbits, for every initial orbit. The authors state that they do not know global existence for the SPDE in connection space.
  - B4/B9/B14: source tags. The cited facts are in paper text (CS-2D §2, CS-3D introduction), not in abstracts.
- Secondary: C3 CORRECTED (form of the DeTurck term); C6 wording; rest CONFIRMED.
- UNSUPPORTED: none.
- No change to ALT_ROUTES's conclusions in §5 (state of the art), §6 (d = 4 critical), §7 (no Bourgain argument in 3D) follows from these corrections. The B3 nuance strengthens §7's point: even in 2D, global control is on gauge orbits and comes from the invariant measure, not from a coercive estimate.

Open items. (1) Higgs-mass counterterms of CCHS-3D not checked (irrelevant to pure YM). (2) Survey equation numbers (1.3)–(1.4) not matched. (3) Infinite-volume status after 2022 ("open in every dimension", line 147) rests on the 2022 survey and the 2024 overview; I did not search for 2025–2026 infinite-volume results.

Download folder /tmp/gaplit_dl deleted at the end of the session.
