IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# OpenAI 4D Yang-Mills / QCD / GUT existence claim: likely formal statement and gap list

Date: 2026-10-27. Tags: **[SQ]** = source-quoted (exact words or a direct report from the cited source). **[INF]** = my inference. **[MEM]** = standard literature fact from memory, not re-fetched in this session.

Access limits (read first):
- The OpenAI post returned HTTP 403 to the fetch tool. I did not bypass it. Quotes of the post come from secondary reports (Woit, Asia Business Daily, cellcog) and from the task brief.
- Douglas's 2026 update is the Nature Reviews Physics review "The Yang–Mills Millennium problem", vol. 8, pp. 86–97, published 12 Jan 2026 (DOI 10.1038/s42254-025-00909-2). It is paywalled. I found no arXiv version (arXiv API search on author and title returned nothing). I have the abstract, key points, figure captions, and reference list only. I could not extract section-numbered body quotes.
- Douglas's 2004 report: full text read.

---

## (A) Clay requirements (Jaffe–Witten official statement)

Source: claymath.org/wp-content/uploads/2022/06/yangmills.pdf, Section 4 "The Problem" and footnotes.

Existence part:
1. **[SQ]** "Prove that for any compact simple gauge group G, a non-trivial quantum Yang–Mills theory exists on R4 and has a mass gap ∆ > 0. Existence includes establishing axiomatic properties at least as strong as those cited in [45, 35]." [45] = Streater–Wightman, *PCT, Spin and Statistics and All That* (Wightman axioms). [35] = Osterwalder–Schrader, CMP 31 (1973) and CMP 42 (1975) (OS axioms with the linear-growth condition).
2. **[SQ]** Field content: "one should define a quantum field theory (in the above sense) with local quantum field operators in correspondence with the gauge-invariant local polynomials in the curvature F and its covariant derivatives, such as Tr Fij Fkl (x)."
3. **[SQ]** Short-distance requirement (this is how "non-trivial" and "Yang–Mills" are pinned down): "Correlation functions of the quantum field operators should agree at short distances with the predictions of asymptotic freedom and perturbative renormalization theory, as described in textbooks. Those predictions include among other things the existence of a stress tensor and an operator product expansion, having prescribed local singularities predicted by asymptotic freedom."
4. **[SQ]** Footnote 2: "We specifically exclude weak-existence (compactness) as the solution to the existence part of the Millennium problem, unless one also uses other techniques to establish properties of the limit (such as the existence of a mass gap and the axioms)."
5. **[SQ]** Footnote 1: a 1–1 map from classical differential polynomials to quantum operators "does not exist" because of renormalization subtleties; "One expects that the space of classical differential polynomials of dimension ≤ d does correspond to the space of local quantum operators of dimension ≤ d."

Mass-gap part (separate):
6. **[SQ]** "A quantum field theory has a mass gap ∆ if H has no spectrum in the interval (0, ∆) for some ∆ > 0. The supremum of such ∆ is the mass m, and we require m < ∞."

Context the statement gives on the state of the art:
7. **[SQ]** §5: "Some results are known for Yang–Mills theory on a 4-torus T4 approximating R4, and, while the construction is not complete, there is ample indication that known methods could be extended to construct Yang–Mills theory on T4." And: "no present ideas point the direction to establish the existence of a mass gap that is uniform in the volume. Nor do present methods suggest how to obtain the existence of the infinite volume limit T4 → R4."
8. **[SQ]** §6.5: "New ideas are needed to prove the existence of a mass gap that is uniform in the volume of space-time. Such a result presumably would enable the study of the limit as T4 → R4."
9. **[SQ]** §5: "the existence of a uniform gap for finite-volume approximations may play a fundamental role in the proof of existence of the infinite-volume limit."

**[INF]** Consequence: the Clay "existence" clause is on R⁴, is for every compact simple G, needs Wightman/OS-level axioms, needs nontriviality fixed by asymptotic-freedom short-distance behavior (OPE, stress tensor), and excludes bare subsequential compactness. The authors themselves expect that infinite volume needs a volume-uniform gap. So "existence on R⁴ without the gap" is, by the problem authors' own analysis, the less natural route. A claim of R⁴ existence that does not also prove a gap needs a different infrared mechanism, or it is a finite-volume claim.

---

## (B) What Balaban proved vs. what is open

### B.1 Douglas 2004 (full text read; the report has no section numbers)
- **[SQ]** Existence = OS axioms in the continuum limit: "the resulting expectation values will converge to 'correlation functions in a continuum quantum field theory,' satisfying formal properties which include invariance under the isometry group of the flat metric on R4, and others formalized in the Osterwalder-Schrader axioms ... Establishing these axioms is the 'existence' part of the problem."
- **[SQ]** "the question of the existence of quantum Yang-Mills is essentially whether there is any sensible way to define the limit of the Z[γ, g², G] over successively larger subgraphs γ ∈ Γ".
- **[SQ]** "starting with lattice Yang-Mills is not essential ... The point is to define the limiting continuum field theory."
- **[SQ]** "I know of no significant progress towards a mathematically rigorous construction of the quantum Yang-Mills theory. The state of the art remains the works of Balaban and of Magnen, Rivasseau and Sénéor cited in the problem description."
- **[SQ]** On SUSY as a route: "a solution to the problem in a sufficiently general class of supersymmetric theories, would in fact imply the solution of the original problem." No remarks on chiral theories or GUTs.

### B.2 Douglas 2026 (Nature Rev. Phys. 8, 86–97; abstract, key points, and references only)
- **[SQ]** (key points, via fetch) The problem asks for a proof that the theory is "mathematically well defined" and "has a mass gap". Well-definedness requires proving "that the theory has a continuum limit, which is well defined at arbitrarily high energies", which needs renormalization "that has not been made rigorous in the needed generality".
- **[SQ]** (key points) The mass gap is expected from "real-world quantum chromodynamics" and numerics, but no clear proof path is known. Recent approaches named: rigorous stochastic quantization and the rigorous strong-coupling expansion. Numerical methods are "likely to feature in any proof".
- **[SQ]** (secondhand, U. Iowa seminar abstract quoting the review) "Conceivably, the tensor RG will be adequate, especially if it can accommodate duality arguments."
- **[SQ]** References visible: Bałaban "Renormalization group approach to lattice gauge field theories" (ref 36); Dimock "The renormalization group according to Balaban — I. Small fields" (ref 37); Duch–Hairer–Yi–Zhao, infinite-volume ergodicity (ref 39); MRS "Construction of YM(4) with an infrared cutoff" (ref 54); Banks–Zaks on "vector-like gauge theories with massless fermions" (ref 22). The fetch reports that the word "chiral" does not appear in the visible text.
- **Not obtained:** Douglas's 2026 body text on exactly what Balaban's papers leave open. That is the most important missing primary source. Next step: institutional access, or ask Douglas.

### B.3 Balaban's program (sources: Jaffe–Witten §6.5, Chatterjee 1803.01950 §6, Dimock arXiv abstracts, MRS 1992 preprint)
- **[SQ]** Jaffe–Witten: Balaban "studied renormalization transformations ... and established many interesting properties of the effective action they produce. These estimates are uniform in the lattice spacing, as the spacing tends to zero." The setting is a lattice "with periodic boundary conditions, approximating a space-time torus". "These results need to be extended to the study of expectations of gauge-invariant functions of the fields." The 4D extension "includes an analysis of asymptotic freedom to control the renormalization group flow as well as obtaining quantitative estimates on effects arising from large values of the gauge field."
- **[SQ]** Chatterjee 2018, §6: UV stability of 3D and 4D non-Abelian lattice gauge theories "famously established by" Bałaban "in a long series of papers spanning six years"; "there is yet no construction of a continuum limit of a lattice gauge theory in any dimension higher than two"; uniqueness of infinite-volume limits is "in general unknown for lattice gauge theories in dimensions higher than two when β is large."
- **[MEM]** The core 4D papers are CMP 1987–1989 (small-field effective actions CMP 109; cluster expansions and convergent RG expansions CMP 116, 119; large-field renormalization I–II CMP 122, 1989). The end result is an ultraviolet stability bound: upper and lower bounds on the (normalized) partition function of 4D pure lattice YM on a fixed torus, uniform in the lattice spacing, with the bare coupling running by asymptotic freedom. Pure gauge only. No fermions.
- **[SQ]** Dimock re-derived Balaban's method in expository form (arXiv 1108.1335, 1212.5562, 1304.0705; φ⁴ in d=3) and then applied it to QED in d=3 with fermions. The 2020 result (arXiv 2009.01156): "The main result is an ultraviolet stability bound in a fixed finite volume." So 40 years after Balaban, the most recent Balaban-method paper with fermions still ends at a finite-volume stability bound, in d=3, abelian.
- **[SQ]** Magnen–Rivasseau–Sénéor (1992 preprint mp_arc 92-41, published CMP 155 (1993)): Schwinger functions of pure SU(2) YM in 4D with no UV cutoff, "with a finite volume box as infrared cutoff", in a regularized axial gauge, for the non-gauge-invariant field A. "We cannot lift the infrared volume cutoff." OS axioms are not studied in full.

**[INF]** Summary of the open set left by Balaban and MRS:
1. Convergence (not only bounds) of gauge-invariant observables, such as smeared Wilson loops and Tr F² correlators, as lattice spacing → 0. Balaban gives bounds on Z and effective actions, not limits of expectations.
2. Uniqueness of the limit (no subsequences), as Clay footnote 2 requires.
3. Restoration of Euclidean rotation invariance (O(4)) in the limit.
4. OS axioms for the limit: reflection positivity (inherited from Wilson action, Osterwalder–Seiler 1978), symmetry, regularity/growth bounds, and clustering.
5. Infinite volume T⁴ → R⁴. Jaffe–Witten and MRS both say no method exists. The only known idea is a volume-uniform gap.
6. Nontriviality: proof that the limit is not Gaussian, and that short-distance behavior matches asymptotic freedom and the OPE.
7. Construction of local composite fields (Tr F² and so on) as operator-valued distributions with the right renormalization.

---

## (C) Most likely formal statement (reconstruction)

Evidence used:
- **[SQ]** OpenAI post, quoted by Woit (26 Oct): "Our models produced a natural language proof for Yang–Mills existence on September 9th, 2026," and "We finished our formalization of Yang–Mills' existence on October 16th, 2026." The post calls the result "a mathematically rigorous existence proof of certain interacting quantum field theories". It describes pure YM existence as "part of" the Clay problem (cellcog, OfficeChai). It says nothing about a mass gap (cellcog, Woit, superpowerdaily).
- **[SQ]** Woit's post update: a commenter says OpenAI "appears to be claiming a solution to the 'existence' part of the Millennium Prize problem," with R⁴ rather than finite volume. Woit treats this as possible, not established.
- **[SQ]** Template from OpenAI's own earlier physics paper (openai/math repo, CONTENTS.md entry 215, 4 Oct 2026, "The canonical massive continuum limit of the two-dimensional O(3) model"): "the limit exists as the bare coupling tends to infinity through all positive real values, without selecting subsequences. The limiting fields satisfy the Osterwalder–Schrader axioms and have a nonzero connected four-point correlation on separated time supports. Their reconstructed theory has a unique vacuum, a nonzero vacuum complement, and a positive Hamiltonian gap".
- **[SQ]** Formalization precedent (lean/docs/215.md): the Lean part of that same O(3) family covered only a lattice exponential-decay lemma: "The infinite-volume limit and the separate O(4) spectral-gap claim are not included." The Comparator file ClassicalON.lean states only a finite-graph lattice inequality. The public repo has no Lean files for OS axioms, gauge fields, or QFT (tree grep, 26 Oct commit).

Reconstruction, clause by clause. Confidence = my probability that the clause is part of the *natural-language* theorem. The Lean statement is a separate question (see C.2).

| # | Clause | Confidence | Basis |
|---|---|---|---|
| 1 | Euclidean, constructed as a limit of Wilson-type lattice YM (Balaban block-spin RG), not via a continuum regularization | 0.8 | [INF] "building on Balaban's approach" (brief); Wilson action gives reflection positivity (J–W §6.5) |
| 2 | Gauge group: every compact simple G, or at least SU(N) | 0.6 any compact simple; 0.85 includes SU(2) and SU(3) | [INF] post says "part of" the Clay problem; QCD implies SU(3); Balaban's methods are not specific to one group [MEM] |
| 3 | Continuum limit a → 0 of gauge-invariant observables exists and is unique (all sequences of bare coupling on the AF trajectory) | 0.75 | [INF] O(3) template says "without selecting subsequences"; Clay footnote 2 forbids compactness-only |
| 4 | Infinite volume: theory on R⁴, not T⁴ | 0.55 | [INF] the "part of the Clay problem" framing points to R⁴; Woit and Baez doubt it; J–W say volume-uniform gap is the natural route, and no gap is claimed. Possible routes without a gap: a second RG for the infrared at small but fixed physical coupling (not available for a confining theory) or soft compactness plus uniqueness. I rate R⁴ as a coin flip. |
| 5 | OS axioms for gauge-invariant Schwinger functions (OS0–OS4 incl. reflection positivity, Euclidean invariance, symmetry, regularity with linear-growth) | 0.7 if R⁴ holds; finite-volume version would be "OS on T⁴" without full rotation invariance | [INF] O(3) template; Clay requirement |
| 6 | Clustering / unique vacuum | 0.35 | [INF] on R⁴ without a gap, uniqueness of the vacuum is hard; the O(3) paper had it because it had a gap |
| 7 | Nontriviality: non-Gaussian, e.g. nonzero connected 4-point function or Tr F² 2-point function with AF logarithmic corrections | 0.75 | [INF] O(3) template uses a nonzero connected 4-point function; Baez's "accidentally free theory" objection is the obvious referee question |
| 8 | Short-distance agreement with asymptotic freedom, OPE, stress tensor (Clay §4) | 0.3 for full OPE + stress tensor; 0.6 for leading AF log behavior of a two-point function | [INF] full OPE is far beyond any constructive result to date |
| 9 | Mass gap | 0.1 for pure YM | [SQ] no mass-gap claim anywhere in the post per all reports; [INF] OpenAI would state it |
| 10 | QCD: SU(3) + N_f massive (or massless) Dirac quarks, vector-like, Wilson or similar lattice fermions; same existence clauses | 0.75 that it is vector-like on a lattice | [INF] see E; Dimock's QED₃ shows Balaban's method absorbs fermions |
| 11 | "GUT": SU(5) gauge field + 3 generations of 5̄⊕10 Weyl fermions, no scalars | 0.5 that this is the content; 0.25 SO(10) with 16s; 0.25 something else | [INF] "simplest GUT that includes the gauge fields and fermions of the SM" (brief); Woit quotes "unified completion of the Standard Model" |

### C.1 Best single guess for the natural-language theorem (pure YM)
**[INF]** "For G = SU(N) (possibly every compact simple G), let μ_{a,L} be the Wilson lattice YM measure on the torus of side L with spacing a and bare coupling g(a) on the two-loop AF trajectory. Smeared gauge-invariant observables (Tr F²-type block averages, smeared Wilson loops) have limits as a → 0, independent of the sequence, at fixed L. [Probability about 0.55:] the limit L → ∞ also exists. The limiting Schwinger functions satisfy the OS axioms, define a Wightman theory with a Poincaré-invariant vacuum, and are not Gaussian (nonzero connected four-point function)." No mass gap.

### C.2 What the Lean statement probably covers
- **[SQ]** The post says the Lean formalization of "Yang–Mills' existence" finished 16 Oct. No Lean artifact is public.
- **[INF]** Two regimes are possible:
  1. Full statement in Lean: definitions of the lattice YM measure (Haar on G^{edges}), Schwinger functions as limits, OS axioms on R⁴ or T⁴. This needs a large new definitional layer: tempered distributions on R⁴ with OS positivity, gauge-invariant smearing, the Lie-group Haar measure, and a definition of "non-trivial". Mathlib has Haar measure, Schwartz space, and Fourier transform, so this is possible but long. The risk is the comparator problem: the formal "OS axioms" or "nontrivial" could be weaker than intended (for example, OS without the linear-growth condition OS0', or nontriviality defined as "not equal to the free field" for a specific test function).
  2. Partial statement in Lean, as in the O(3) family: only a lattice-level theorem (for example, a uniform-in-a stability bound or a uniform correlation bound on a finite torus), with the continuum, OS, and infinite-volume steps left in natural language.
- **[INF]** The O(3) precedent (continuum + OS + gap in the paper; only a finite-lattice decay lemma in Lean) makes regime 2 more likely: about 0.6 for regime 2, about 0.4 for regime 1. "Formalization of Yang–Mills' existence" wording would fit either. The key questions to the Gross group: (a) does the Lean statement mention R⁴ or a torus, (b) does it define the OS axioms, including OS0' growth, (c) how does it define non-trivial.

---

## (D) Gap list: what a complete Balaban-style proof must add beyond Balaban's published work

Each item is [INF] unless tagged. Items are in the order a proof would need them.

1. **Completion and re-verification of Balaban's UV stability.** The 1987–89 papers are long, hard to check, and parts were never independently re-done in 4D non-abelian form (Dimock re-did φ⁴₃ and QED₃ only). [SQ] Chatterjee 2016 (1602.01222) calls the work "not easily accessible".
2. **From bounds on Z to convergence of observables.** Add sources (external currents) for smeared gauge-invariant observables to the RG, control the generating functional uniformly in a, and prove that the a → 0 limit exists and is unique. [SQ] J–W: "These results need to be extended to the study of expectations of gauge-invariant functions of the fields."
3. **Renormalization of composite operators.** Tr F² and higher operators need multiplicative/mixing renormalization. The constructed limit must contain these as local fields to meet Clay §4.
4. **Rotation invariance.** The hypercubic lattice only has a discrete symmetry. A proof must show that O(4)-breaking irrelevant operators vanish in the limit. No 4D gauge-theory result does this.
5. **OS axioms in the limit.** Reflection positivity passes to limits (Osterwalder–Seiler for Wilson action). Regularity (OS0' growth bounds, n! control) needs uniform estimates on n-point functions, not only on Z.
6. **Infinite volume T⁴ → R⁴.** [SQ] J–W: "Nor do present methods suggest how to obtain the existence of the infinite volume limit T4 → R4." [SQ] MRS: "We cannot lift the infrared volume cutoff." Balaban's RG stops at the unit physical scale where the running coupling is still small. Beyond that scale the coupling grows (confinement regime). A proof needs either a volume-uniform gap (J–W route) or a new infrared argument, for example a cluster expansion at strong effective coupling with a matching estimate, or a correlation-inequality / monotonicity argument (none known for non-abelian lattice gauge theory).
7. **Vacuum uniqueness and clustering.** Needed for the Wightman reconstruction to give a single physical theory. Without a gap this needs separate proof.
8. **Nontriviality.** A non-Gaussian limit and the AF short-distance behavior (logarithmic corrections, OPE coefficients). [SQ] Baez in Woit's comments: "What if you've accidentally created a free quantum field theory in a complicated way? You need to rule this out."
9. **All compact simple G.** Balaban-type estimates must be uniform in group-theory constants for every G, including exceptional groups, if the claim is for every G.
10. **Topology / large fields.** Balaban's large-field estimates must be carried through for observables and for the infinite-volume limit (instanton sectors, Gribov issues in local gauges).
11. **Mass gap (not claimed).** [SQ] J–W: "New ideas are needed to prove the existence of a mass gap that is uniform in the volume". This is the Clay mass-gap clause and the probable route for item 6.

For QCD (vector-like) add:
12. **Lattice fermions with reflection positivity.** Wilson fermions are OS-positive [MEM, Osterwalder–Seiler 1978]. They break chiral symmetry. For massless quarks, the critical hopping parameter must be tuned non-perturbatively. Overlap / Ginsparg–Wilson fermions keep exact lattice chiral symmetry (Neuberger hep-lat/9707022) but reflection positivity for overlap is not standard [MEM, uncertain].
13. **Fermionic RG.** Balaban never treated fermions in 4D. [SQ] Dimock did fermions in d=3 QED (1512.04373, 2009.01156) with Balaban's method, ending at a finite-volume stability bound.
14. **QCD infrared.** With N_f light quarks, the infrared is chiral-symmetry breaking with massless pions (for massless quarks), so there is no mass gap. Infinite volume must then be reached without a gap, which is harder than pure YM. With massive quarks, the expected gap is the pion mass.

For the "GUT" add section E.

---

## (E) Fermion / chirality question

### E.1 Is SU(5) with three generations of 5̄ ⊕ 10 asymptotically free?
**[INF, computed]** One-loop coefficient with Weyl fermions: b₀ = (11/3) C₂(G) − (2/3) Σ_Weyl T(R). For SU(5): C₂ = 5, T(5̄) = 1/2, T(10) = (N−2)/2 = 3/2. Per generation Σ T = 2. Three generations: Σ T = 6.
b₀ = 55/3 − 4 = **43/3 ≈ 14.3 > 0**. The theory is asymptotically free. (Check: same formula gives QCD with 6 flavors b₀ = 11 − 4 = 7.)
This matches OfficeChai's paraphrase that the theory "behaves consistently at arbitrarily small distances" [SQ paraphrase]. Without scalars, nothing breaks SU(5); the theory is a strongly coupled chiral gauge theory in the infrared, not the Standard Model at low energy.

### E.2 Is it chiral?
**[INF, computed]** Yes. Cubic anomaly A(5̄) + A(10) = −1 + 1 = 0 per generation, so it is anomaly-free. No gauge-invariant fermion bilinear exists: 5̄⊗5̄ = 10̄ ⊕ 15̄, 5̄⊗10 = 5 ⊕ 45, 10⊗10 = 5̄ ⊕ 45̄ ⊕ 50̄. None contains a singlet. So no gauge-invariant mass term exists, and the theory is not vector-like. π₄(SU(5)) = 0, so there is no Witten-type global anomaly [MEM].

### E.3 Status of rigorous lattice chiral gauge theory
- **[MEM]** Nielsen–Ninomiya (1981): a local, translation-invariant, Hermitian, free lattice fermion action with exact chiral symmetry has a vector-like spectrum (doublers).
- **[SQ]** Lüscher (hep-lat/9811032): U(1) chiral gauge theories with anomaly-free Weyl multiplets "can be put on the lattice without breaking the gauge invariance", non-perturbatively, in finite volume, using the Ginsparg–Wilson relation. Abelian only.
- **[SQ]** Lüscher (hep-lat/0006014): for any compact gauge group, the same construction works "in the framework of perturbation theory", with anomaly cancellation proved "at any fixed value of the lattice spacing" through a recursive procedure. **[MEM]** A non-perturbative construction of the gauge-invariant fermion measure for non-abelian groups (the local cohomology problem) is open in general.
- **[SQ]** Golterman–Shamir gauge-fixing approach for SU(N) (hep-lat/0404011): they "argue that gauge invariance is restored in the continuum limit by adjusting a finite number of counter terms" — an argument, with perturbative checks, not a proof.
- **[SQ]** Mastropietro (2303.02790): a rigorous non-perturbative result with Wilson fermions and a massive non-compact U(1) field in 4D, infinite volume, weak coupling, "inverse lattice step of the order of boson mass": the anomaly vanishes "up to subleading corrections". This is a cutoff theory, not a continuum chiral gauge theory.
- **[SQ]** Wen (1305.1045) proposes a lattice definition of an SO(10) chiral gauge theory (16 Weyl per generation) via symmetric mass generation of mirror fermions. This is a proposal, not a theorem.
- **[SQ]** Razamat–Tong (2009.05037) and Tong (2104.03997): continuum arguments that mirror fermions with the quantum numbers of one SM generation can be gapped without symmetry breaking. These use conjectured strong-coupling dynamics.
- **[SQ]** Golterman–Shamir 2025 (2505.20436): a generalized no-go theorem; if its conditions hold, "the massless fermion spectrum must be vector-like" in any SMG phase. They list open questions any SMG model must answer. Golterman–Shamir 2023 (2311.12790): propagator zeros in SMG phases act as ghosts, so "unitarity of the gauge theory is lost".
- **[INF]** Conclusion: no rigorous non-perturbative construction of any 4D non-abelian chiral lattice gauge theory exists in the public literature. Kikukawa and coworkers have SU(2)×U(1) domain-wall/GW constructions (hep-lat/0105032 and later); I did not verify their non-perturbative status in this session.

### E.4 What the GUT claim implies
**[INF]** If the "GUT" is SU(5) + 3×(5̄⊕10) with no scalars, then a Balaban-style proof needs a regularization of a non-abelian chiral gauge theory with a reflection-positive (or otherwise OS-recoverable) measure. Three options:
1. **Gauge-invariant lattice (Lüscher/GW).** This would require a non-perturbative solution of the non-abelian measure problem. That alone would be a major new result in lattice field theory, separate from Yang–Mills. Reflection positivity of the GW/overlap construction is also not standard.
2. **Gauge-breaking regularization with restoration** (MRS-style continuum cutoff with gauge fixing, or Rome-approach Wilson fermions with counterterms, as in Mastropietro). At weak coupling inside Balaban's UV regime this is plausible; Slavnov–Taylor identities must be recovered non-perturbatively. OS positivity is lost at finite cutoff and must be recovered in the limit, which J–W say few methods allow.
3. **Weaker meaning of "existence".** For example: UV existence at fixed infrared cutoff or finite volume, where the chiral determinant phase and anomaly cancellation only need control at small coupling. In finite volume and at weak coupling, the fermion determinant is analytic in the gauge field and the anomaly cancellation is a perturbative statement. This option avoids the non-perturbative chiral problem.
- **[INF]** The infrared of chiral SU(5) with 3 generations is not known even at the physics level: 't Hooft anomaly matching for the SU(3)×SU(3)×U(1) global symmetry allows massless composite fermions (Dimopoulos–Raby–Susskind 1980 type analysis [MEM]). So a mass gap is not expected in general, and an R⁴ construction cannot use the J–W gap route. **This is the strongest internal evidence that the GUT claim (and likely the QCD claim, and plausibly the YM claim) is a UV existence result on a fixed finite volume (torus) or with an infrared cutoff**, unless OpenAI found a gap-free infrared argument that also handles strongly coupled chiral dynamics.
- **[INF]** If the GUT were vector-like (for example, an added mirror family), it would not be "the fermions of the Standard Model". If it were SO(10) with 16s, the same chirality problem applies (16 is complex, anomaly-free).

### E.5 Overall reading
**[INF]** The most consistent reading of all three claims is: Balaban's UV program completed to convergence of gauge-invariant observables with OS axioms at fixed physical volume (T⁴ or a box with infrared cutoff), with fermions added as Grassmann fields handled by the fermionic RG (vector-like for QCD, a gauge-breaking regulator with restoration or perturbative-in-small-coupling chiral measure for the GUT). R⁴ existence for pure YM is possible but less likely than not for the GUT. Probability that the GUT result is on R⁴: about 0.25. Probability that pure YM is on R⁴: about 0.5.

---

## (F) Public statements since 26 Oct 2026

- **Peter Woit, "Secret Unified Physics Slop", Not Even Wrong, 26 Oct 2026** [SQ]: "Since they don't refer to the mass gap/Millenium prize problem, maybe this is just about existence for small volume." Not specifying this "seems to me intentionally deceptive." He is "a bit confused about exactly what it means to have 'existence' of the infinite volume limit." He quotes the J–W lines on T⁴ → R⁴ and the volume-uniform gap. He mentions that "Alpoge/Sussman publicly claim a 4d existence proof" and calls it "tens of thousands of pages of unchecked slop" (I could not find that Alpoge–Sussman item in one search). Update: the AGMAI group has called for immediate release of the Yang–Mills AI details.
- **Woit, comment 26 Oct 9:40 pm** [SQ]: "That they don't mention the mass gap issue (which is the hard part of the problem) still seems to me intentionally deceptive." "The only person in the group expert on rigorous QFT constructions is Arthur Jaffe, who is 88 years old."
- **John Baez, comment 27 Oct 5:22 am** [SQ]: "What if you've accidentally created a free quantum field theory in a complicated way? You need to rule this out." "If all OpenAI did is complete Balaban's argument aimed at constructing Yang-Mills on a compact spacetime..." He says the infrared limit to R⁴ "is another huge step". On "unified theory": "That's sort of goofy."
- **Commenter "Slop Digester", 26 Oct** [SQ]: "They do refer to the millennium problem. The existence part is claimed to be solved." Woit says this is only partly right.
- **Press (Asia Business Daily, TNW, Interesting Engineering, superpowerdaily, datastudios)** [SQ]: no named physicist quoted on the content. Gross's group "chose not to release the AI-produced material for now and will write up the work itself." OpenAI deferred to them on publication.
- **X**: Lech Mazur (ProofAtlas) calls it "partial progress on Yang–Mills Existence and Mass Gap" [SQ]. Others note no paper is public.
- **Gross, Douglas, Jaffe, Klebanov, Nekrasov**: no on-record statement found on the content. Douglas's only recent public quote (Scientific American, 8 Oct, on the 2D O(3)/sigma-model papers) [SQ]: the model "is widely considered the 'warm-up' for Yang-Mills". Bauerschmidt on the same release [SQ]: "it seems very reasonable" for one paper, "The second paper is horrible" for another.
- **Tao, Hacker News**: nothing found on the content of the Yang–Mills claim (one HN thread from Sep on AGMAI panel composition only).
- **Nobody** has publicly described the Lean statement, its volume (T⁴ vs R⁴), its axioms, or how the chiral fermions are regularized.

---

## (G) Sources

Primary:
- Jaffe & Witten, Clay official problem description: https://www.claymath.org/wp-content/uploads/2022/06/yangmills.pdf
- Douglas, Report on the Status of the Yang-Mills Millenium Prize Problem (Apr 2004): https://www.claymath.org/library/annual_report/douglas_quantum_yang_mills.pdf (read via https://ncatlab.org/nlab/files/Douglas-StatusOfYMMillenniumProb.pdf)
- Douglas, The Yang–Mills Millennium problem, Nat. Rev. Phys. 8, 86–97 (2026), https://www.nature.com/articles/s42254-025-00909-2 (abstract, key points, references only)
- U. Iowa seminar (Meurice) quoting Douglas 2026: https://physics.uiowa.edu/event/36209/0
- Chatterjee, Yang–Mills for probabilists, arXiv 1803.01950 (https://ar5iv.arxiv.org/html/1803.01950); Chatterjee, arXiv 1602.01222
- Magnen, Rivasseau, Sénéor, Rigorous results on the ultraviolet limit of non-Abelian gauge theories (1992): https://web.ma.utexas.edu/mp_arc/e/92-41.tex
- Dimock: arXiv 1108.1335, 1212.5562, 1304.0705, 1512.04373, 2009.01156
- Lüscher: arXiv hep-lat/9811032, hep-lat/0006014; Neuberger hep-lat/9707022; Kaplan hep-lat/9206013
- Golterman & Shamir: arXiv hep-lat/0404011, 2311.12790, 2505.20436; Mastropietro 2303.02790; Wen 1305.1045; Razamat & Tong 2009.05037; Tong 2104.03997; Wang & You 2204.14271; Kikukawa hep-lat/0105032
- openai/math repo (CONTENTS.md entry 215; lean/docs/215.md; lean/ComparatorChallenges/ClassicalON.lean): https://github.com/openai/math

On the 26 Oct announcement and reactions:
- OpenAI post (403 to fetch): https://openai.com/index/building-scientific-understanding-with-academic-communities/
- Woit, Not Even Wrong: https://www.math.columbia.edu/~woit/wordpress/?p=15948
- https://thenextweb.com/news/openai-exponential-time-hypothesis-false-kakeya-yang-mills
- https://cellcog.ai/blog/openai-yang-mills-eth-kakeya/
- https://officechai.com/ai/what-is-the-yang-mills-theory-openai-claims-to-have-proven-and-what-it-means-for-physics/
- https://www.asiae.co.kr/en/article/2026102710413957826
- https://superpowerdaily.com/posts/openai-claims-three-scientific-breakthroughs-and-gives-experts-different-review-roles
- https://www.datastudios.org/post/openai-models-exponential-time-hypothesis-disproof-kakeya-yang-mills-proofs
- https://interestingengineering.com/ai-robotics/openai-proofs-math-computing-physics
- https://www.scientificamerican.com/article/the-most-exciting-claims-from-openais-heap-of-new-proofs/ (8 Oct, O(3)/sigma-model quotes)
- https://x.com/LechMazur/status/2114859504219087176 ; https://news.ycombinator.com/item?id=49796590

Not obtained: OpenAI post text directly; Douglas 2026 body; any Lean artifact for Yang–Mills; Alpoge–Sussman item cited by Woit.
