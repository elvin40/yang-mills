# Online sweep for the Theorem 2 open items (2026-10-27)

Scope: find online material that shortens (A), (W), (H)/(H′), certified early steps, sources D2/D3, (B-N1), uniqueness; and anything on OpenAI's Yang–Mills statement.
Prior sweep: BALABAN_THM2_STATUS.md (not repeated here).
Tags: [quoted] = verbatim from a page I read; [quoted-fetch] = verbatim as returned by the WebFetch summarizer; [memory] = training knowledge, not checked this session; [inference] = mine.

## 1. OpenAI repository (item 6)

### 1.1 Repo state
- github.com/openai/math, checked through the GitHub API at 2026-10-27 ~20:05 local. Last commit 7ef5c0cc, 2026-10-26 21:18Z ("Update math/cs papers, formalizations, and verification data"). No commit after the release. [quoted: commit list]
- CONTENTS.md (9167 lines) has 0 hits for "Yang", "Mills", "Balaban", "Bałaban". No Yang–Mills family. [quoted: grep]
- Families 079 (local smoothing / Kakeya), 215 (O(3) continuum, O(4) mass), 378 (ETH disproof) are unchanged. No new physics family with a 4D gauge or block-spin RG. Other physics families (216 XY/BKT, 225/232 GFF limits, 233 Ashkin–Teller) are 2D statistical mechanics, not useful here. [quoted: grep of family headers]
- Conclusion: OpenAI's Yang–Mills statement is still not public. Nothing in the repo shows whether their proof assumes or proves Balaban's Theorem 2. [inference]

### 1.2 Family 215 contains the 2D analogue of Theorem 2, done without per-step positivity
Source: "The canonical massive continuum limit of the two-dimensional O(3) model" (Oct 4, 2026), raw.githubusercontent.com/openai/math/main/preprints/The-canonical-massive-continuum-limit-of-the-two-dimensional-O3-model-October-4-2026/massive-continuum-o3.pdf. (Read locally via pdftotext.) Companion [28] = "Sharp mass bounds for the two-dimensional O(4) model" (Sept 23, 2026), same repo.

(a) Coupling recursion and its band [quoted, Sect. 6.1, eq. (6.1)]: "b_{j−1} = b_j + α_{N−j} + κ_{N−j}/b_j + ∆_j, |∆_j| ≤ C_L H_j^{−1.05}". "The triangular coefficient contraction and the free-history estimates imply exponential convergence of both increment sequences." The layers only need b_j ∈ [H_j/2, 2H_j] with H_j = H + γj and H large (O3_TEMPLATE.md line 39). The terminal coupling H is a large free parameter.
- What it shortens: certified positivity of early increments. [inference, needs a verifier] Balaban's Theorem 1 (CMP 122 II p. 355) assumes only g_k ∈ ]0, γ]. If Σ_j |β_j(0) − β_∞| = C_tot < ∞ (which Prop. 3.6 gives at rate j²L^{−2j}), then for every window 1/g_k² ≥ 1/g² + (K−k)β_∞ − C_tot − (C¹ errors of Lemma E). Choosing 1/g² ≥ 1/γ² + C_tot + 1 gives g_k ≤ γ for all k, with no sign condition on any single β_j(0). This proves a weak (0.31) with an additive constant: 1/g² − C + β_∞(K−k) ≤ 1/g_k² ≤ 1/g² + C + β′(K−k). THEOREM2_PROOF §5.1 shows per-step positivity is necessary only for the literal (0.31). The O(3) paper never proves a literal (0.31) analogue; it proves the band. So the "finite certified computation at odd L > 11" (§8 item 5, the largest item) may be removable, if one accepts Theorem 2 in the weak form that Theorem 1 needs. Check needed: whether Balaban's inductive bounds anywhere use the lower half of (0.31) with constant 0 (for example, g_k monotone in k, or g_{k+1} ≤ g_k in the large-field estimates of CMP 116/122). This is a reading task in the local Balaban texts.

(b) Value of the limit, Lemma 6.1 [quoted]: "α∞ = −γ, γ = log L/(2π)." Proof method [quoted]: "We compare a fixed finite-volume Laplace coefficient before and after blocking. Only the first coefficient is needed, so the second limiting increment need not be evaluated." It uses the doubling difference [quoted] "4A_D(n) − A_D(2n) = −3D(D−1)/(4π) log n + O(1)" ([28] eq. (6.18)) and then [quoted] "4A_D(mL^s) − A_D(2mL^s) = D_0 Σ_{h<s} α_h + O_{L,m}(1)", "Division by s and exponential convergence of α_h give α∞ = −log L/(2π)."
- What it shortens: (H) / (H′). This is the same Cesàro route as THEOREM2_PROOF §4.2 ((H′): κ_k = o(k)). The paper's form is stronger: it gets O(1), not o(k), by comparing two finite tori (n and 2n) with the same RG history, so that all bulk scalars cancel in the doubling difference [quoted: "All extracted bulk scalars cancel in the doubling difference."]. The gauge analogue: compare the one-loop free energy (Laplace coefficient of 1/g² in log Z) of the SU(2) Wilson action on tori of side n and 2n, with a pinned final block variable. The needed perturbative input is a finite-volume one-loop lattice free energy, which Lüscher–Weisz / Hasenfratz–Hasenfratz type computations give (Section 3 below). Uniformity: [quoted] "the uniformity in s needed here is uniformity of coefficients, not of a bare Laplace remainder" — finite-period vs bulk coefficient differ by exponentially small terms "only when a complete contraction crosses a period".

(c) Marginal-slot transfer is exactly zero, Lemma 5.6 [quoted]: "For the diagonal response of each nonzero canonical slot, the coefficient norm of the output is at most C L^{−2} times the input norm ... The corresponding quadratic transfer has zero affine Hessian." Proof idea [quoted]: "The constant and affine identities for P show that an affine output tangent transfers to an affine input tangent of slope divided by the step size. Each old compensated packet is zero on that field. The aggregate transferred affine Hessian is therefore exactly zero."
- What it shortens: (W). The template replaces a Ward identity by an exact algebraic fact: the conditional-mean map P preserves constants and centered affine fields (Prop. 4.3 [quoted]: "The mean P preserves constants and centered affine fields"), so a compensated quadratic slot carries no weight onto the marginal (affine-Hessian) direction. The gauge analogue would need Balaban's minimizer map / averaging operator to preserve constant-curvature (linear) gauge fields, A_μ(x) = ½F_{μν}x_ν with F constant. For abelian averaging this is true for centered odd-L blocks (midpoint property, our R2). For SU(2) at the small-field level it is the statement that Balaban's H_k maps the linear background to itself up to gauge. That is a candidate proof of (W) by algebra, not by a Ward identity. [inference]

(d) History contraction on a strip, Prop. 4.3 [quoted]: "‖K_{h1} − K_{h2}‖_an ≤ C (A_0/L²)^r" on "a common fixed smaller complex strip", "The difference vanishes through degree three at the origin". Proof uses Parseval at opposite imaginary tilts plus the alias shell bound [28, (A.3)–(A.4)]. This is the scalar analogue of our O5 (already proved). It does not cover our charged-sector symbols σ^{(1)}, σ^{(2)}, so it does not close (A). It does confirm the strip-width mechanism is the standard one. [inference]

(e) Large L. All template constants are for "dyadic L ≥ L_0" with unspecified L_0. They never fix a small L. So the template does not need any computation at a specific L. This is consistent with using Balaban's own "L sufficiently large". [quoted: Prop. 4.3 "for every dyadic L ≥ L_0"]

## 2. Sussman–Alpöge (Anthropic/Claude) repository: a competing Balaban-route YM4 account (item 7). Most important find.

Source: github.com/ethanwsussman/Yang--Mills-LLM-experiment (created 2026-10-06; last push 2026-10-27 10:45Z; 67 stars). Ethan Sussman (Northwestern) with Levent Alpöge (Anthropic). Scientific American, "Dueling proofs from OpenAI and Anthropic astound scientists" (2026-10-26/27): [quoted-fetch] "Working with Anthropic employee Levent Alpöge, Ethan Sussman, a mathematician at Northwestern University, created and publicized a public GitHub repository to do just that." "They were making considerable progress and believed they were near to finishing the program." Bauerschmidt [quoted-fetch]: "He basically did it" ... "But I think there's no one who understands these papers and can tell whether they're correct or not."

Contents relevant to us (downloaded and read locally):
- theorem_0_complete_account_raw_{I,II,III}.tex (26.6 MB of LaTeX). Title [quoted]: "The Yang--Mills continuum limit along Bałaban's renormalization group: a complete account of Theorem 0".
- ym4_manuscript_zeroth_draft.pdf (2 MB, 9639 text lines).
- YM3/YMM1 (YM in 3D, OS axioms for tr F²), QED3 (infinite volume, OS axioms), RP1 (rotation invariance from RP + lattice symmetry).
- README, LA comment [quoted]: "At the moment we do (appear to) have a YM4 (i.e. ℝ⁴, not just in finite volume) existence argument / slop, but it is extremely long and basically not understandable as is." And: "we have been made aware of emails going around from groups now working on the exact same thing, making sudden progress off of the arguments above".
- Disclaimer [quoted]: "This repository contains work-in-progress, written largely by LLM. Its content has not been satisfactorily vetted."

### 2.1 How Theorem 0 handles Balaban's Theorem 2: it does not use it
[quoted, t0_I.tex l. 3022] "No clause of the theorem uses \cite[Theorem~2, (0.31)]{B-CMP109}."
[quoted, l. 4199–4207] "In Bałaban's argument the couplings enter only through the containment 0<g_k≤γ ... Of Bałaban's hypotheses on the couplings only containment is invoked in this book. [Theorem 2], together with [(0.31)], would remove it by second-order perturbation theory; [CMP109] refers its proof to a separate paper, and [CMP122b] refers to that proof as unpublished; it is not used here."
[quoted, H-list l. 1213] "nothing is assumed on the sign of the coupling increments β_{k+1}".

Clause (0), coupling flow [quoted, l. 2533–2550]: with first-passage cutoff K(g_0,g) := min{k ≥ 0 : x_k ≤ g^{−2} + B_♯},
  "λ_♯(j−i) − c_5 ≤ x_i − x_j ≤ B_♯(j−i), 0 ≤ i ≤ j ≤ K", "g_k ∈ (0,g) ⊂ (0,γ_H] for k ≤ K", with λ_♯ ≥ c_0/4, c_0 = (11N²/12π²) log L, c_5 = 2c_2.
  "Not asserted: a sign of x_k − x_{k+1} at a single step; the one-loop value of the individual increments ...; monotonicity of a tuned bare coupling; convergence of g_{K−s} along first passage without passage to subsequences; regularity of β_j in the couplings."
Hypotheses: (H2) "L is odd and L ≥ L_0(N)" with L_0 "never given a value".

What it shortens:
- Certified early steps (§8 item 5): removed. They prove the weak two-sided flow with an additive constant c_5 and never need per-step positivity. This independently confirms §1.2(a) above. Their normalization c_0 = (11N²/12π²) log L matches our corrected value (THEOREM2_PROOF; R2_VERIFY): SU(2) 0.3715 log L.
- (H0′) continuity in the history: removed. They replace shooting (Lemma D, intermediate value theorem) by a first-passage cutoff K(g_0,g): run the flow forward from g_0 and stop at the first k with x_k ≤ g^{−2} + B_♯. The terminal coupling lands in the window [g_−(g), g) with g_−(g) = (g^{−2}+B_♯)^{−1/2}. No continuity in g_0 is needed. Cost: no exact terminal value g_K = g, and convergence only along subsequences (they state this). For a compactness-form torus theorem this is enough. [inference: this matches our "compactness route, no uniqueness needed" plan in SOURCES.md.]
- Lemma 4.2 "finite part of the one-loop law" [quoted, l. 3901–3994] is our (H) in another form: "|Σ_{l=1}^k β^0_l − k c_0| ≤ c_2", proved from the telescoping identity "Σ_{l=1}^k β^0_l = B_k" plus two bounds: "|B_k − B^ref_k| ≤ ½C_cmp(L,N)" (comparison of the composite Gaussian normaliser with the reference determinants −½ log det(D²_W + η²) + log det(Δ_0 + η²) at η = L^{−k}) and "|B^ref_k − (11C_g/24π²) log(1/η)| ≤ C_det(N)" (lattice one-loop computation: gluon 5C_g/(12π²), ghost C_g/(24π²)).
  Status in their own text [quoted, l. 56363]: "Lemma 4.2:lem-one-loop, whose proof is incomplete at one step". They cite the comparison bound to "[CMP109 (1.22), Theorem 3] and [CMP116 (2.41)]". I checked the local CMP116 text: (2.41) is a bound on localized terms E(X), not a one-loop comparison [quoted, local balaban/1988_cmp116 l. 1033]. So their comparison step |B_k − B^ref_k| ≤ C is unproved, and it is exactly our open (H)/(U2′) (κ_k bounded). [inference]
  Useful for us: their reference functional uses an IR mass regulator η² = L^{−2k} in place of the block constraint. The bound |B^ref_k − c_0 k| ≤ C_det is a standard massive-lattice one-loop statement (Section 3). This splits our (H) into (H-ref), a citable lattice-perturbation fact, and (H-cmp), a comparison of "block constraint as IR cutoff" with "mass η as IR cutoff". Our U1′ (U1_INFINITE_LATTICE.md: S_k = c k log L + κ_W^F − κ_k) is the same split.
- (Hβ) source sensitivity: their clause (iii-c) [quoted]: "Σ_{k<K} Lip_{D̄(0,ϱ)} b_{k+1} ≤ ⅔, and hence ζ′_k := ∂_ζ ζ_k(0) ∈ [⅔, 4/3]". This is the same statement as our SOURCES_HBETA Lemma H (sup Σ|B_j′| ≤ ½), with ⅔ in place of ½. Their sources are "complex curvature sources w = Σ z_i f_i" with observable 𝒪(f) = Σ_p f(x(p))[1 − Re tr U(∂p)] and [quoted] "Constant shifts of g_0^{−2} are the case f ≡ 1". This is our observable class C1 (SOURCES.md). [inference: D1/D2 design is the same as theirs.]
- (iii-d) [quoted]: "|x_i − x_j − (j−i)c_0| ≤ 2c_2 + Σ_{k=i}^{j−1}[C_ε ε(g_k) + v_k]" with "Δ(s)/s → 0". This is our (H′) form (κ_k = o(k)), conditional on Lemma 4.2.

### 2.2 What Theorem 0 claims overall (for comparison with our target)
- (i) Balaban's Theorem 1 with its hypothesis supplied by clause (0).
- (ii-𝕋-a) [quoted]: on a fixed torus, for the tuned family, "S^n(a_n − ŵ; f) → S^{(ŵ)}(f) as n → ∞, without passage to subsequences, uniformly, at the rate n^{−1/2}(log n)^{p_0+1} in the bare labelling"; translation and W_4 invariant, reflection positive. First-passage family: subsequences only.
- (ii-ℝ⁴): infinite volume along subsequences, OS reconstruction from curvature fields; "Not asserted: ... uniqueness of Ω and clustering; a mass gap; O(4) invariance (that is clause (vi))".
- (iv) nontriviality via a curvature two-point witness with continuum kernel [quoted] "3(N²−1)π^{−4}∬ f_1(x)f_2(y)|x−y|^{−8} dx dy".
- (vi) rotation invariance only under a "far-sphere flux hypothesis".
- Self-declared gaps: hundreds of "proof incomplete at the step marked (∗)" / "Proof outstanding" markers (grep counts 386 / 180 / 328 lines in parts I/II/III mention "incomplete"); an index of them is in Part III. Examples [quoted]: "Proposition (M-freeness of the random-walk constants. Stated; proof incomplete...)", "Openness of the gauge condition beyond π. Proof outstanding", "Transfer of the step bounds to the widened support. Proof outstanding".

### 2.3 Consequence for our campaign [inference]
- Our Theorem 2 work and their clause (0) target the same statement. Their route avoids per-step positivity and (H0′), and leaves (H) open. Our route has more of (H) done (U3, O5, O6, Lemma 5.1 neutral sector, verified files). A merged route: first-passage + weak flow (theirs) + our one-loop convergence chain for (H). Then the open list shrinks to (A), (W), (H) (or only (H-cmp)), and (H3).
- Priority risk: a public, timestamped YM4 account with the same architecture predates ours. Any writeup must cite it.

### 2.4 Same mechanism in the YM4 zeroth draft (Sussman repo, ym4_manuscript_zeroth_draft.pdf, dated 6 Oct 2026)
- Abstract [quoted]: "two-sided bounds on the running coupling and its exact one-loop law"; nontriviality "at separation d the connected two-point function equals 32 ζ′² g(d)⁴ K up to a relative error at most one half, with ζ′ ∈ [2/3, 4/3]".
- Theorem 2.14 [quoted]: "|x_i − x_j − (j−i)c_0| ≤ 2c_2 + Σ_{k=i}^{j−1}[C_β e(g_k) + v_k]", "Status. The proof is complete. Its inputs beyond clause (0)(a)–(c) are (P1), proved in the companion account". (P1) is the one-loop lemma that the companion account (2.1 above) marks "incomplete at one step". So the draft's "complete" is relative to (P1). [inference]
- Prop. 2.13 [quoted]: "|β_{k+1} − β^0_{k+1}| ≤ C_β e(g_k) + v_k ≤ λ := ½c_0". This is our (H0) C¹ bound in a summable form (e(g) → 0, v_k summable), which also gives Lemma E without per-step positivity.

## 3. Other public LLM-assisted Balaban-route repositories (item 7)

### 3.1 CaptainSude, "Not-an-attempt-at-proving-existence-of-YM4", Notebook 37 "ym4-positive-drift" (created 2026-10-17)
URL: github.com/CaptainSude/Not-an-attempt-at-proving-existence-of-YM4/tree/main/notebooks/37-ym4-positive-drift. Self-described continuation of the Sussman–Alpöge work. 39 notebooks, 622 pages, "not independently certified".
- Theorem "Uniform actual leading coefficient" [quoted]: "there is a constant C_cmp, independent of M,K and of the applicable joint infinite structural system, such that |β(𝒟_{M,K}) − 22α_g log K| ≤ C_cmp, α_g = C_H/(48π²)." Here M = old depth, K = block ratio of the step. 22α_g = 11C_H/(24π²), the same one-loop constant.
- Method [quoted, abstract]: "First, source-localized sectorial resolvents remove the soft infrared penalties through physical time one with an integrable O(u) error. Second, nonlinear Ward identities through field degree four compare the actual effective-action heat coefficient with the Wilson coefficient with error O(s^{−1}). ... Third, a direct Wilson-to-continuum comparison gives an integrable O(s^{−1/2}) error". The proof writes β as a proper-time integral ∫_1^{K²} h(s) ds/s of the t²-coefficient of Tr P_0(e^{−sW(t)} − ...) and shows [quoted] "|h^soft_{M,K}(s) − 11α_g| ≤ C{s^{−1/2} + s/K²}, 1 ≤ s ≤ K²". Both errors integrate to O(1) against ds/s.
- What it shortens: (H) / (U2′) directly. The heat-kernel (proper-time) representation is a different and possibly shorter route than our per-level symbol recursion: it needs only (i) a plateau estimate for the heat-trace coefficient at intermediate times, (ii) an IR estimate at s ~ K², (iii) a UV estimate at s ~ 1. Our U3/O5/O6 strip bounds could supply (ii). [inference]
- Key structural point [quoted]: "sufficiently large fixed multiples q of the activity-return length therefore give a positive margin for the long ratio K = R^q". If C_cmp is independent of the block ratio, per-step positivity follows for every single step once log L > 2C_cmp/c, with no computation. For us: if our κ_k bound in (H) can be made uniform in L, early-step certification disappears even for the literal (0.31). [inference]
- Status: conditional on "classical structural, determinant-identification and localized-vertex inputs stated in this notebook and Notebook 36" — not independent of upstream notebooks.

### 3.2 Aronow–Lopatto, "The continuum limit of three-dimensional SU(2) lattice Yang–Mills theory on a torus" (github.com/pmaronow/3d-ym-torus, 2026-10-17)
- README [quoted]: "With the exception of this note, the entire document is machine-written." "the proof is too complex for either (i) Lean autoformalization ... or (ii) our own understanding of the results." 3D is superrenormalizable: no running-coupling problem. Useful only for torus-limit and source mechanics (D2/D3), not for Theorem 2. Not read in detail.

### 3.3 MathePhysics, "Wilson Loops through the Renormalisation Group" (github.com/MathePhysics/4D_Wilson_Loop_RG, created 2026-10-21)
- README [quoted]: "Computing correlation functions of physical observables of 4D YM by extending Bałaban's method to the expectation of renormalised Wilson loops." First RG step with a Wilson-loop insertion, "two-loop result" in the pedagogical summary, iteration drafts dated 2026-10-26/27 ("WILSON_IT1_CAUCHY_ESTIMATE", "CONTINUUM_CUTOFF_COMPARISON"). Relevant to observables/sources (D2, D3, B-N1 for line-supported sources), not to Theorem 2. Also has drafts/BALABAN_PAPER_LABELS.md (a label dictionary for Balaban's papers; reusable).

### 3.4 Lean projects (not on our critical path)
- Scott Armstrong, github.com/scottnarmstrong/balaban-lean: Lean 4 formalization of Balaban's O(N) low-temperature RG (1995–1999 papers), [quoted] "about 1,088,000 lines of Lean", seven "blockers" where [quoted] "the papers, as written, do not give what the next step of the argument needs". docs/BLOCKERS.md is a useful catalogue of gaps in Balaban's N-vector papers, some of which may recur in the gauge papers (large-field boundary terms). [quoted] "(The estimate it asked for is not proved; in the form first stated it is false.)"
- github.com/elmismisimoxhunca/BalabanCoercivityLemma: Lean 4 proof of the CMP 99 p. 428 coercivity estimate in 3D, axioms {propext, Classical.choice, Quot.sound}, with [quoted] "Site coverage and common-plaquette coverage are explicit assumptions; these are additional conditions not printed in the cited lemma." Relevant to (H0) (Balaban's propagator inputs), not to (A)/(W).
- CaptainSude/Non-Trivial-4-Dimensional-Yang-Mills-Theory (2026-10-24): four-entry reflected energy covariance witness; [quoted] "The continuum Yang–Mills existence proof remains unfinished."

## 4. Rigorous control of a marginal running coupling (item 5)

### 4.1 Bauerschmidt–Brydges–Slade, "Structural stability of a dynamical system near a non-hyperbolic fixed point", Ann. Henri Poincaré 16 (2015) 1033–1065, arXiv:1211.2477
- Flow (1.6) [quoted]: "ḡ_{j+1} = ḡ_j − β_j ḡ_j², ḡ_0 = g_0 > 0."
- Assumption (A1) [quoted]: "The sequence (β_j) is bounded: ‖β‖_∞ < ∞. There exists c > 0 such that β_j ≥ c for all but c^{−1} values of j ≤ j_Ω."
- [quoted]: "The condition that β_j is mainly non-negative is important for the sequence ḡ_j of (1.6) to remain bounded." "Our applications include situations in which β_j approaches a positive limit as j → ∞".
- Theorem 1.4: existence and uniqueness of the global flow of the full (perturbed) system with mixed initial/final conditions, continuous in external parameters (Cor. 1.6).
- What it shortens: a refereed precedent that a marginal flow is controlled when finitely many one-loop coefficients are negative or zero. Supports §1.2(a) and §2.1 above: certified positivity of each early β_j(0) is not needed, only boundedness plus β_j ≥ c for all but finitely many j. Our Prop. 3.6 (β_j → β_∞ at rate j²L^{−2j}) plus β_∞ = c log L > 0 gives exactly (A1). The direction differs (BBS is infrared, Balaban is ultraviolet), but the scalar recursion u_{k+1} = u_k − β_{k+1} in u = 1/g² is direction-free. [inference]
- Continuity in external parameters (their Cor. 1.6) is proved from uniqueness of the flow, not assumed. That is a template for (H0′) if we keep shooting instead of first passage. [inference]

### 4.2 Dimock–Yuan, "Structural stability of the RG flow in the Gross–Neveu model", arXiv:2303.07916 (v3, 2024)
- Ultraviolet application of the BBS method in an asymptotically free model [quoted]: "Our treatment is an application of a method of Bauerschmidt, Brydges, and Slade. The method was developed for an infrared problem, and is now applied to an ultraviolet problem."
- Quadratic flow [quoted]: "g_{k+1} = g_k + β_k g_k², z_{k+1} = z_k + θ_k g_k² with β_k > 0 and bounded above and below". Their β_k is explicit [quoted]: "β_k = β(w_k + C_k) − β(w_k)" with "β(w_k) = 4(n − 1)∫ w_k(x − y)² dy", so β_k = 4(n−1)∫[2w_kC_k + C_k²]. The lower bound is elementary because the RG uses smooth heat-kernel covariance slices (e^{−p²/L^{2k}}), not block spins, and both terms are positive.
- What it shortens: the telescoping identity "per-step coefficient = increment of a functional of the cumulative covariance" is the same structure as our S_k = Σ β_j(0). For YM the gluon and ghost parts have opposite signs, so the positivity is not term-by-term. Not a direct shortening; a structural precedent. [inference]

### 4.3 OpenAI O(3) paper (Section 1.2 above)
- Proves the 2D analogue (marginal coupling b_j, increments α_h → −γ exponentially, value by a doubling difference) without per-step positivity. Lemma 12.2 "summable sensitivity of the kinetic error" is the analogue of our (Hβ)/(H0′). [quoted in O3_TEMPLATE.md]

### 4.4 Classical precedents (not re-read this session) [memory]
- Gawędzki–Kupiainen, Gross–Neveu, CMP 102 (1985) 1–30; Feldman–Magnen–Rivasseau–Sénéor, CMP 103 (1986) 67–103: 2D asymptotically free fermions, running coupling controlled with the one-loop coefficient computed in the scheme. Already in BALABAN_THM2_STATUS.md §2.
- Gawędzki–Kupiainen, "A rigorous block spin approach to massless lattice theories", CMP 77 (1980) 31–64 [title and abstract confirmed by search]: block-spin Gaussian RG with explicit covariance recursion. Gives no gauge content beyond our U3.

## 5. One-loop lattice inputs and perfect actions (items 2, 3)

### 5.1 Lüscher–Narayanan–Weisz–Wolff, "The Schrödinger functional — a renormalizable probe for non-abelian gauge theories", Nucl. Phys. B384 (1992) 168, arXiv:hep-lat/9207009
- SU(2), one-loop lattice coefficient of the finite-volume coupling [quoted, (7.37)–(7.41)]: "m_1(L) ∼ Σ_{n≥0} (r_n + s_n ln L)/L^n" "with s_0 = 11/(12π²) and s_1 = 0"; "using the blocking method of ref.[58], we were able to confirm, to four significant decimal places, that s_0 is given by eq.(7.38)"; "r_0 = 0.202349(3), r_1 = −0.1084(11)". Precision [quoted]: "all digits quoted in table 1 are significant" (20 decimal places).
- Status of the expansion [quoted]: "we expect that an asymptotic expansion of the form ... holds". It is not proved there.
- What it shortens: (H-ref) and the O(3)-style doubling difference (Section 1.2(b)). A finite-volume one-loop coupling with a background field whose lattice coefficient is c ln(L/a) + r_0 + O(a/L) is exactly the input "4A(n) − A(2n) = c′ log n + O(1)" that the O(3) Lemma 6.1 needs, transposed to SU(2). The SF background field is an abelian constant-curvature field, the same family as our (W) background. Rigor for the O(1) remainder needs a lattice power-counting theorem (5.2). [inference] Normalization: s_0 = 11/(12π²) is for 1/ḡ² in standard units; Balaban units multiply by 2N = 4, giving 11N²/(12π²) = 0.3715 per unit log, consistent with our c.

### 5.2 Reisz, lattice power counting, CMP 116 (1988) 81–126; CMP 116 (1988) 573–606 (massless propagators); CMP 117 (1988) 79–108 (renormalization) [titles and venues confirmed by search; content from search summary]
- [quoted-fetch, summary of CMP 116 81] "if the UV-divergence degrees with respect to all Zimmermann subspaces are negative for a natural set of four-momenta, the continuum limit exists and is given by a specific formula". The massless-propagator paper: "for non-vanishing lattice spacing, conventional infrared power counting conditions are sufficient for convergence of lattice Feynman integrals with zero-mass propagators".
- What it shortens: the rigorous half of (H-ref): |B^ref_k − c k log L| ≤ C_det for the massive (η = L^{−k}) one-loop determinants used by Sussman–Alpöge Lemma 4.2, and the O(1) remainder in 5.1. After subtracting the logarithmic (dimension-zero) part, the remaining one-loop vacuum-polarization integrals have negative lattice UV degree, so Reisz's theorem gives convergence to the continuum value. This is standard but must be written out once. [inference; I have not read Reisz's text]

### 5.3 Bietenholz–Wiese, "Perfect lattice actions for quarks and gluons", Nucl. Phys. B464 (1996) 319, arXiv:hep-lat/9510026
- Closed-form free-gluon fixed point of an (optionally smeared) δ-function block transformation, "blocking from the continuum" [quoted, (3.16)]: "S*[A] = (2π)^{−d}∫d^dp ½ A_μ(−p) G*_μν(p)^{−1} A_ν(p)", with G* = Σ_{l∈Z^d} g(p+2πl) Π(p+2πl)² (−1)^{l} + smearing terms (3.13). The averaging symbol is [quoted] "Π_μ(p) = p̂_μ/p_μ ∏_ν (p̂_ν/p_ν)" type products (3.6). Locality: exponential decay of the fixed-point couplings, shown numerically (Fig. 3 [quoted]: "exp(−ci) with c = 6.937").
- Also: "The quark-gluon and 3-gluon perfect vertex functions are determined to leading order in the gauge coupling" [quoted, abstract].
- What it shortens: a published closed form to cross-check the U3 fixed point Δ_∞ and, for the 3-gluon vertex, the limit object of Lemma 5.1 (the soft vertices). Perturbative, non-rigorous; useful only as an independent formula for the limits in (A). [inference]

### 5.4 MCRG Δβ literature
- Searched; no perturbative one-loop block-spin Δβ formula for a Balaban-type (δ-function, axial or Landau) block transformation was found. The 1-loop scale-2 shift quoted in later papers is the universal value s_b = 2b_0 ln 2 (in some normalization) [quoted-fetch, arXiv 0907.0919: "the 1-loop perturbative prediction is s_b^(pert)(s = 2) = 0.59"]. MCRG works (Gupta et al., Bowler et al., hep-lat/9307004) concern Monte Carlo matching, not a step-by-step one-loop coefficient. Nothing here shortens (A), (W), or the early steps. [not found]

## 6. Sources, the (B-N1) gap, and uniqueness: what Sussman–Alpöge Theorem 0 does

### 6.1 Observable and test-function class
- Observable [quoted, Def. 1.3]: "𝒪(f) = Σ_p f(x(p)) [1 − Re tr U(∂p)]", "f a real Lipschitz function", norm [quoted, l. 713] "‖f‖_♯ = max{‖f‖_∞, 40M Lip f}". This is our class C1 with Lipschitz regularity only (ours: |∂^m f| ≤ r for m ≤ 5, ASSEMBLY.md).
- (B-N1) is not solved there; it is avoided. They state Schwinger functions only on separated supports [quoted, (ii-𝕋-b)]: "S^T_{n;m} extends to a unique distribution of locally finite order on (𝕋_m)^n_≠", and [quoted] "Not asserted: ... coinciding points, temperedness, field operators, Wightman functions". OS reconstruction is done [quoted] "from the linear span of centred separated-support monomials of the curvature fields". What it shortens: if our target theorem accepts the same weaker form (separated supports, locally finite order, no global OS growth bound), then (B-N1) drops off the critical path. If we want full OS (E0 growth condition on ⁰𝒮), (B-N1) stays. [inference]
- A commenter on Woit's blog (Prokhorov_tightness) and the YM3 draft agree that their infinite-volume limits are subsequential [quoted-fetch]: "Infinite-volume limits are subsequential."

### 6.2 Uniqueness on a fixed torus: summable sensitivity, not per-step contraction
- (v-a) [quoted]: "For every depth n ≥ 0 there is exactly one real a_n ... such that the n-step recursion from x_0 = a_n (with infinite-lattice coefficients ...) is admissible and ends at x_n = X exactly"; "No per-step monotonicity is asserted."
- (v-b) [quoted]: the depth-to-depth coupling map 𝔫_n has "|𝔫_n(ŵ) − ŵ| ≤ Υ_n|ŵ|, where Υ_n ≤ C n^{−3/2}(log n)^{p_0+1}, so Σ_n Υ_n < ∞". Convergence without subsequences on a fixed torus at rate n^{−1/2}(log n)^{p_0+1} (ii-𝕋-a).
- (v-d) [quoted]: after re-filing large-field remnants, the family "converges at an exponential rate n^c ρ^{n/2}".
- What it shortens: our "uniqueness via per-step contraction" item. Their mechanism is the OpenAI O(3) mechanism (Lemma 12.2): a summable bound on how much one extra RG step moves the effective marginal coupling. It does not require a per-step contraction of the marginal direction (which cannot hold; the direction is marginal). [inference] Status: depends on their incomplete one-loop lemma and on "Proof outstanding" items listed in their Part III index.

## 7. OpenAI Yang–Mills statement: still not public (item 6)

- No artifact. openai/math unchanged since 2026-10-26 (Section 1.1). No arXiv listing on 4D YM existence between 2026-10-20 and 2026-10-27 (arxiv.org abstract search for "Yang-Mills", 25 entries; none constructive) [quoted-fetch].
- Scientific American, "OpenAI just scooped human researchers on a million-dollar quantum math problem" [quoted-fetch]: "The company has yet to release the proof." OpenAI "opted to hand it off to a group of experts who could “shepherd” it into the mathematical literature." Bauerschmidt: Balaban's "papers are not complete and are extraordinarily difficult to read"; "experts did not seriously doubt that they could be completed with sufficiently many years devoted to it." Sussman: "I think we were on the way and maybe even as close as a few weeks away". Alpöge: "Instead of contacting him to work with him, as has been suggested publicly many times, the people at OpenAI chose to do this." Buckmaster: "There is no way it took one month to Lean-verify Yang-Mills" (a comment on timing, not on content).
- Woit, "Secret Unified Physics Slop", 2026-10-26, math.columbia.edu/~woit/wordpress/?p=15948. Release text [quoted-fetch excerpt]: "OpenAI has announced a mathematically rigorous existence proof of certain interacting quantum field theories". Comments (summarized by the fetcher, not verbatim): John Baez notes that completing Balaban on a compact space still leaves the infinite-volume limit to ℝ⁴; Sussman (comment 23) says the QED3 draft's main work is rotational covariance and four-point control. No commenter quotes OpenAI's actual theorem statement.
- Advisory Group on Mathematics and AI (AGMAI) asked on 2026-10-26 for release [quoted-fetch, search summary]: "there is no scientific reason for delaying the release any further".
- Tao: no public comment on Yang–Mills found (search results only cover Navier–Stokes and an open letter). [not found]
- Inference on the likely shape of OpenAI's statement: unchanged from O3_TEMPLATE.md §"Expect the YM theorem to look like Theorem 1.2" (terminal coupling fixed at a physical scale, shooting/first passage, sources carried exactly, compactness or uniqueness by summable sensitivity). Theorem 0 of Sussman–Alpöge has the same shape. Neither public document proves Balaban's Theorem 2 in the literal (0.31) form; both use only containment g_k ≤ γ. [inference]

### 6.3 A background-field Ward identity at non-stationary backgrounds (for (W))
- Theorem 0, Lemma 4.5 "Ward identities under nonlinear gauge variations" [quoted]: for 𝖠 = 𝖠(U) + ⟨A, J(U)⟩ + ½⟨A, ΔA⟩ + V_0(A), "D*_U J(U) = 0, D*_U ΔA = 𝔧_{J(U)}(A), ΔD_Uλ = 𝔨_{J(U)}(λ), ⟨D_Uλ_1, ΔD_Uλ_2⟩ = −2⟨c^{(2)}(λ_1,λ_2), J(U)⟩", and "Δ′_π = Θ′_{J(U)}; that is, the formula for Θ′_J ... is [CMP 99b (3.120)] ... with the weight J(U) replaced by a free current J".
- What it may shorten: (W) and the numerics caveat that our plane-wave expansion point is not a constrained stationary point (SOURCES_D1 caveat). These identities give the exact defect terms at a non-stationary background in Balaban's notation, with the CMP 99 (3.119)–(3.120) projection. They are a ready-made algebraic input for a Ward-identity proof of level-independence of the zero-momentum spin coupling. Not checked against our definitions. [inference]

## 8. Ranked list: the five most useful finds

1. Sussman–Alpöge "Theorem 0" account (github.com/ethanwsussman/Yang--Mills-LLM-experiment, theorem_0_complete_account_raw_*.tex, ym4_manuscript_zeroth_draft.pdf). Same target, public, timestamped. Shows Theorem 2 in its literal form is not needed: containment + first-passage cutoff + weak two-sided flow (λ_♯(j−i) − c_5 ≤ x_i − x_j ≤ B_♯(j−i)). Removes certified early steps (§8 item 5, the largest item) and (H0′). Their one-loop lemma (|Σβ^0_l − kc_0| ≤ c_2) is self-marked "incomplete at one step" and cites Balaban sources that do not contain it: it is our (H). Also gives source sensitivity Σ Lip b_{k+1} ≤ ⅔ (our Hβ), uniqueness by summable sensitivity Υ_n ~ n^{−3/2}, and sidesteps (B-N1) by working on separated supports. Priority risk for any writeup.
2. OpenAI O(3) paper, Sect. 6.1 Lemma 6.1 and Lemma 5.6 (openai/math family 215). Value of the limit by a finite-volume doubling difference with all bulk scalars cancelling (gives O(1), stronger than our (H′)); marginal-slot transfer exactly zero by an affine-preservation identity of the conditional-mean map (a candidate algebraic proof of (W)); band instead of per-step positivity.
3. CaptainSude Notebook 37, "Uniform actual leading coefficient": |β(𝒟_{M,K}) − 22α_g log K| ≤ C_cmp, uniform in old depth M and block ratio K, by a proper-time (heat-kernel) plateau argument with integrable errors s^{−1/2} and s/K². A second route to (H)/(U2′). If the constant is uniform in the block ratio, per-step positivity follows for large L with no computation.
4. Bauerschmidt–Brydges–Slade, AHP 16 (2015), Assumption (A1): refereed precedent that a marginal flow is controlled when β_j ≥ c for all but finitely many j. Directly supports dropping the early-step certification; their Cor. 1.6 gives continuity in parameters from uniqueness (alternative to (H0′)).
5. Lüscher–Narayanan–Weisz–Wolff 1992 + Reisz 1988. A finite-volume SU(2) one-loop lattice coefficient m_1(L) = (11/12π²) ln L + 0.202349(3) − 0.1084/L + …, confirmed numerically to 20 digits, with a background in the (W) family; Reisz's lattice power-counting theorem is the tool to make the O(1) remainder rigorous. Together they supply (H-ref), the reference half of (H) in the split (H) = (H-ref) + (H-cmp).

## 9. What was not found

- No proof, by anyone, of Balaban's Theorem 2 in its literal (0.31) form (per-step lower bound with no additive constant). Both public YM4 accounts avoid it.
- No rigorous proof of the comparison step (H-cmp): block-constraint IR cutoff vs. mass IR cutoff for the composed one-loop Gaussian normaliser. Sussman–Alpöge cite it to Balaban (CMP 109 Thm 3; CMP 116 (2.41)); the CMP 116 citation is a bound on localized terms, not this. CaptainSude Notebook 37 claims it under upstream inputs.
- No result on uniform strip analyticity (A) of the charged-sector block symbols σ^{(1)}, σ^{(2)} in any source. The OpenAI O(3) Prop. 4.3 is the scalar case only. Bietenholz–Wiese give closed-form limits, not bounds.
- No published Ward identity for the zero-momentum spin coupling across levels (W). Closest: OpenAI Lemma 5.6 (algebraic, scalar O(N) case) and the background-field Ward identities of Theorem 0 Lemma 4.5.
- No perturbative one-loop Δβ for a Balaban-type block transformation in the MCRG literature; Iwasaki arXiv:1111.7054 (1983 preprint) is tree-level/perturbative near the fixed point and gives no per-step coefficient in the abstract.
- OpenAI's Yang–Mills statement, proof, and Lean files: not public. No Tao comment. No Hacker News thread with technical content found. No arXiv paper on 4D YM existence since 2026-10-20.
- Not read in full (time): Dimock's QED3 series (arXiv 1512.04373, 1712.10029, 2009.01156) for propagator-convergence lemmas; Federbush's phase-cell series (no running-coupling content found in abstracts); Balaban–Imbrie–Jaffe; Chatterjee and Chevyrev papers (no Theorem 2 content expected); the Aronow–Lopatto 3D manuscript; the MathePhysics Wilson-loop drafts; Douglas, "The Yang–Mills Millennium problem" (Jan 2026), mentioned in Woit comments and already in PLAN.md's lit gate.
- Caveat: all LLM-written repositories above (Sussman–Alpöge, CaptainSude, MathePhysics, Aronow–Lopatto) are unverified by their own statements. Their claims are structural guidance, not citable proofs.

Local copies used during the sweep were in /tmp/oai_sweep (deleted after writing); all sources are re-fetchable from the URLs above. Searches used: about 20 WebSearch calls, plus GitHub API and direct downloads.

## Sweep 2026-10-28 (afternoon)

Scope: changes since the 10-27 sweep. 8 searches (standard plus one extended), 2 fetches, GitHub and arXiv API checks via curl. The search tool is weak on this topic; API checks carry the main evidence. Tags: [public artifact] / [claim only] / [rumor]. Quotes are at most 15 words.

### Q1. OpenAI (Yang–Mills Sept 9, QCD Sept 18, Lean Oct 16)
- github.com/openai/math, commits API, 2026-10-28: newest commit still 2026-10-26T21:18Z. No new paper, Lean code, or YM family. [public artifact: no change]
- scientificamerican.com/article/openai-just-scooped-human-researchers-on-a-million-dollar-quantum-math-problem/, 2026-10-27: "The company has yet to release the proof." [claim only]
- Same article: only Michael Douglas is quoted ("a major advance"). No statement by Gross, Jaffe, Klebanov, or Nekrasov. No volume statement and no mention of Theorem 2. [claim only]
- github.com/monocap-tech/yangmills, status review 2026-10-27: says OpenAI announced an existence result on Balaban's approach, with no positive mass gap claimed. Third-party summary, not primary. Silent on volume and Theorem 2. [claim only]
- No referee statement, volume statement, or mass-gap statement by named holders found. [not found]

### Q2. Sussman–Alpöge
- github.com/ethanwsussman/Yang--Mills-LLM-experiment, API 2026-10-28: last push 2026-10-27T10:45Z (message "Add dated YMM1 revision and change list"). No push since the 10-27 sweep. Stars 67 to 70. [public artifact: no change]
- Earlier 10-26/27 commits: culled YM3 half "establishing the axioms for field bilinears". Already covered in section 2. [public artifact]
- No new preprint, post, or repository found. Woit's front page still ends at "Secret Unified Physics Slop" (?p=15948, 10-26). [not found]

### Q3. Other new public work
- arXiv API, YM with Balaban/constructive/RG terms, newest first: nothing constructive after 2026-10-15 (latest hit 10-26 is "Nonabelian Higgs fields from minimal submanifolds", unrelated). [public artifact: none]
- GitHub repository search (balaban, yang-mills+lean, 4d RG; created after 10-26): zero results. [not found]
- scottnarmstrong/balaban-lean: last commit 2026-10-22 (O(N) program, not gauge). No change. [public artifact: no change]
- No X/Twitter or blog post by named physicists found. Search tool does not index X. [not found]

### Q4. Has Balaban's Theorem 2 been proved or published by anyone?
- Search "Bałaban Yang-Mills Theorem 2 proof completed" returned only old Balaban papers and unvetted Zenodo/aggregator claims. No credible source says so. [not found]
- Sussman–Alpöge and OpenAI statements, as read in sections 2 and 7, do not claim Theorem 2 in its literal form. [claim only]

### Delta since the 10-27 sweep
1. OpenAI: no new release. openai/math is unchanged since 2026-10-26T21:18Z, and Scientific American still says the proof is unreleased.
2. Named holders: only Douglas is quoted ("a major advance"). No statement from Gross, Jaffe, Klebanov, or Nekrasov. No volume or mass-gap statement.
3. Sussman–Alpöge: no push since 2026-10-27T10:45Z. No new preprint or post. Stars 67 to 70.
4. Other work: no new arXiv listing, GitHub repository, or Lean project on 4D YM or Theorem 2. One third-party status page (monocap-tech/yangmills) only relays OpenAI's announcement.
5. Theorem 2: no source says anyone proved or published it. Search coverage is thin (no X, no email lists), so this is absence of evidence only.
