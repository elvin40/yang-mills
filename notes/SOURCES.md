IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# E14: gauge-invariant sources in Balaban's induction (what is needed, the reduction, a work plan)

Status: drafted 2026-10-27 by Claude (Fable 5.1). Not verified. Inputs: LEMMA_B4.md §E14/S7, LEMMA_B4_VERIFY.md (no E14 content beyond the quote table), PLAN.md, THEOREM2.md §3a, reports/O3_TEMPLATE.md, reports/o3_continuum.txt §9–§11, reports/clay_ym.txt, balaban/*.txt (CMP 109, 116, 119, 122 I–II), and one Opus literature pass (Dimock, Balaban–Imbrie–Jaffe, Federbush, MRS, 2018–2026 arXiv). Tags: [V] verbatim-checked quote; [lit-agent] quote relayed by the literature agent, not re-checked by me; [derived] my own derivation, unverified; [guess] stated without derivation.

Prose: short sentences, plain technical English.

---

## 0. The problem in one paragraph

Balaban's Theorem 1 (CMP 122 II p. 355) [V]: "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." Its consequence is the partition-function bound (0.1) with constants E_−, E_+ "independent of k, T_η, U_k". Then p. 356 [V]: "Theorem 1 is the basis for many other applications, for example, for an analysis of expectation values of physical observables, like loop variables, averaged loop variables, etc. These problems are very important for construction of the four-dimensional gauge field theories, and they deserve detailed analysis and further publication." No such publication exists (§3 below). Jaffe–Witten §6.5 [V]: "These results need to be extended to the study of expectations of gauge-invariant functions of the fields." E14 is this extension. Without it the campaign has bounds on Z_ε but no measure, no Schwinger functions, and nothing on which to check the OS properties.

---

## 1. What is needed, precisely

### 1.1 Setting

Torus T⁴ = (R/ℓZ)⁴ of fixed physical side ℓ. Lattice T_ε with spacing ε = L^{−K}, ℓ fixed (ℓ/ε ∈ L^K Z). Gauge group SU(2). Wilson action A(U) = Σ_p [1 − ½ Re tr U(∂p)]. Measure μ_ε = Z_ε^{−1} exp(−g_0^{−2} A(U)) dU, with g_0 = g_0(ε) fixed by Balaban's trajectory: all g_k ∈ ]0, γ], g_K = g (Theorem 2 of CMP 109, unpublished; THEOREM2.md). Everything below is conditional on that trajectory, as Theorem 1 is.

### 1.2 Which observables

Three candidate classes. Only the first is needed for a torus existence theorem; the second is needed for a stress tensor; the third is what Balaban names and is the hardest.

(C1) Scalar local density of dimension 4. Microscopic field: the plaquette variable P_p(U) := 1 − ½ Re tr U(∂p), bounded (0 ≤ P_p ≤ 2), gauge invariant, local. Physical density ε^{−4} P_p ≈ ¼ tr F_{μν}F_{μν}(x_p) for smooth U. Smeared field: ϕ_ε(f) := Σ_p f(x_p) [P_p − ε⁴ v_ε], f ∈ C^∞(T⁴), v_ε a vacuum subtraction. This is the YM analogue of the template's linear spin source z·q (reports/o3_continuum.txt §9, Prop 9.1): one real source per site, bounded field, field normalization from linear response.

(C2) Tensor components. Gauge-invariant local functions of two plaquettes at a corner, ε^{−4} Re tr[(U(∂p_{μν}(x)) − 1)(U(∂p_{ρσ}(x)) − 1)] ≈ tr F_{μν}F_{ρσ}(x). 21 components (symmetric in the pair of planes), including tr F² (trace) and tr F F̃ (ε-contraction). Needed for the stress tensor T_{μν} = tr F_{μρ}F_{νρ} − ¼ δ_{μν} tr F² (Jaffe–Witten §4 asks for a stress tensor; reports/clay_ym.txt line 270). A source for a (C2) component is a dimension-4 gauge-invariant perturbation of the action that is not of Wilson form. It needs the same generalization of Balaban's induction as E10 in LEMMA_B4.md (a near-isotropic, non-Wilson dimension-4 action), now with x-dependent coefficients.

(C3) Wilson loops W_γ = ½ tr hol_γ(U) for lattice loops γ, and "averaged loop variables" (loops averaged over translations or shapes). Bounded and gauge invariant, but extended: a product over |γ|/ε link variables. ⟨W_γ⟩_ε → 0 as ε → 0 by the perimeter law (continuum perturbation theory: Dotsenko–Vergeles 1980, Brandt–Neri–Sato 1981 [guess, not re-read]); a limit needs the multiplicative renormalization exp(−m(g_0)|γ|/ε − n(g_0)·#corners). Averaging over translations does not remove this (it is per loop). In Balaban's localization language a loop source is a term of size O(1) whose localization domain has linear size |γ|/(Mε) at the first scale, so (1.18)/(0.25) give it no smallness; it is a line defect, not a perturbation of the class. The RG step maps the fine loop to a coarse loop only up to small-field corrections (the holonomy of the averaged field is not the averaged holonomy). Verdict: (C3) is a separate program (§4, D7), not needed for the torus theorem.

Decision for the campaign: the minimal class is (C1); (C2) is the first extension; (C3) is deferred.

### 1.3 Schwinger functions, not smeared random variables

A point the template hides. The template's spins have dimension 0, so all joint moments of smeared fields exist and converge (Prop 10.2). The density (C1) has dimension 4 = d. Its two-point function behaves like g⁴ |x − y|^{−8} at tree level (continuum normalization), which is not locally integrable. So Var ϕ_ε(f) diverges as ε → 0 (like ε^{−4} g_0⁴ ∫f² up to logarithms; §2.4 shows where this comes from in the RG). The smeared density is not a random variable with finite variance in the limit. What exists are the Schwinger functions as distributions off the coincidence diagonals:

  S_{n,ε}(F) := Σ_{p_1,…,p_n} F(x_{p_1},…,x_{p_n}) ⟨Π_i [P_{p_i} − ε⁴v_ε]⟩_ε,   F ∈ C^∞(T^{4n}) flat on all diagonals {x_i = x_j}.

This is exactly the OS test class. Osterwalder–Schrader II (CMP 42 (1975)) formulate the axioms on test functions in S(R^{dn}) that vanish with all derivatives on the diagonals, with the linear growth condition; the template uses the same class (reports/o3_continuum.txt lines 4985–4990 [V]: "Restricting to Schwartz tests flat on the coincidence diagonals (all derivatives vanish whenever x_i = x_j) gives precisely the test class defined in [30, Section II, following Equation (2.1), p. 284]"). So the YM target is weaker than the template's but is still exactly what OS reconstruction consumes. The divergent coincident-point parts are local counterterms in the source (contact terms) and drop out of S_n(F) for F flat on diagonals.

Consequence for the normalization: there is a field normalization B_K (the analogue of the template's B_N = Π c_j^{−1}) and a vacuum subtraction. §2.3 argues B_K converges (c_j = 1 + O(g_j⁴), Σ g_j⁴ < ∞), unlike the template's |log B_N| = O(N^{9/10}).

### 1.4 Properties to show for every limit point (compactness route, Jaffe–Witten footnote 2)

Footnote 2 [V, reports/clay_ym.txt line 619]: "We specifically exclude weak-existence (compactness) as the solution to the existence part of the Millennium problem, unless one also uses other techniques to establish properties of the limit (such as the existence of a mass gap and the axioms)." So: a compact family plus the axioms for every limit point is admissible. On a torus the full axiom set is not available (no R⁴, no clustering), and the statement is a finite-torus existence theorem, as the campaign goal says. The properties, in the order they are proved:

(N1) Uniform bounds (this gives compactness). There are C, s < ∞ such that for all ε, all n, all F flat on diagonals,
  |S_{n,ε}(F)| ≤ C^n n! ‖F‖_{s,n},   ‖F‖_{s,n} := max_{|α| ≤ s} sup |∂^α F|.
Source form: for real sources f = Σ_i z_i f_i with |z_i| ≤ r and disjoint supports, log Z_ε[f] − W_ε[f] is C^∞ in z with |∂_z^α (log Z_ε[f] − W_ε[f])| ≤ C^{|α|} α! r^{−|α|}, where W_ε[f] is a local functional of f (the contact terms, allowed to diverge). (N1) is the YM analogue of the template's Prop 10.1 (10.3)–(10.4); the n! comes from the n-th derivative of a function analytic, or C^∞ with Cauchy-type derivative bounds, in a fixed polydisc or interval of source radius r independent of ε.

(N2) Convergence. For each F, S_{n,ε}(F) converges as ε → 0 along the full sequence ε = L^{−K}. This needs the comparison of two trajectories (E13 in LEMMA_B4.md; the template's (6.8) + Cor 9.2 + Prop 10.2 route). Without E13, (N1) gives convergent subsequences only. Footnote 2 admits subsequences if (N3)–(N6) hold for every limit point, so (N2) is desirable (uniqueness) but not required for admissibility. The campaign should decide which theorem it claims.

(N3) Symmetry of the limit. (a) Translations: invariance under the lattice translations εZ⁴ passes to the limit; continuity in the translation follows from (N1) applied to F(· + a) − F(·) with ‖·‖_{s,n} (a modulus of continuity), so the limit is invariant under all of T⁴. (b) The hypercubic group B_4 (reflections and quarter turns), inherited from the Wilson action and from Balaban's Euclidean covariance (CMP 119 (2.29), (2.32)). (c) Full O(4): not available on T⁴ (LEMMAS.md ledger 5). (d) Permutation symmetry of S_n: trivial, the densities commute.

(N4) Reflection positivity. For θ the reflection in a hyperplane {x_0 = 0} (and {x_0 = ℓ/2}), and F a polynomial in ϕ(f_i) with supp f_i ⊂ {x_0 > 0}, ⟨Θ(F) F⟩ ≥ 0. On the lattice this is Osterwalder–Seiler RP of the Wilson action for site and link reflections. Passage to the limit is the template's Lemma 11.1 argument [V, lines 4900–4910]: the seam is within O(ε) of {x_0 = 0}, moment convergence (N2) or subsequence convergence applies to each of the finitely many terms, and the O(ε) translation of the tests is controlled by (N1). Note: RP is needed for the Schwinger functions with F flat on diagonals; products of ϕ(f_i) with overlapping supports are not defined, so the RP statement is for polynomials whose factors have pairwise disjoint supports, or for F in the OS class directly. This is the form in OS II.

(N5) Regularity (OS linear growth condition). |S_n(F)| ≤ σ_n ‖F‖_{s,n} with σ_n ≤ A (n!)^D for fixed A, D, s. (N1) gives this with D = 1. Temperedness on a torus is this bound with the torus sup norm.

(N6) Nontriviality. At least: the limit is not a point mass, e.g. S_2^{conn}(f_1, f_2) ≠ 0 for some disjointly supported f_1, f_2. Stronger and closer to Clay: S_2^{conn}(x, y) ≈ c g(|x−y|)⁴ |x − y|^{−8} (1 + o(1)) for |x − y| → 0 with g the running coupling (asymptotic-freedom short-distance behavior, Jaffe–Witten §4). The minimal statement follows from the same small-field expansion at a fixed coarse layer j as (N2): the one-loop two-point function of the plaquette density at separation d = O(L^{−j}) is c g_j⁴ d^{−8} ≠ 0 and the remainder is O(g_j⁶) (§2.4). The template's nontriviality (fourth cumulant at the terminal scale, §11.3) has no direct analogue; the two-point statement is enough for "not a point mass" and is also the statement with physical content.

(N7) Reconstruction on the torus. With (N3)–(N5) for the spatial torus T³ and periodic or infinite time, OS reconstruction gives a Hilbert space H, a positive transfer matrix / Hamiltonian H ≥ 0, a vacuum, and the densities as operator-valued distributions. Uniqueness of the vacuum does not follow from clustering (absent on a torus); on a cylinder T³ × R it follows from strict positivity of the transfer kernel if that can be shown (O3_TEMPLATE.md §10 item 7 [INF]). Jaffe–Witten's "at least as strong as [45, 35]" cannot be met on a torus; the finite-torus theorem is a step, not the Clay statement.

What is NOT needed for (N1)–(N7): clustering, a mass gap, an infinite-volume limit, canonical normalization, Griffiths-type moment positivity. The template's Prop 10.2 first part "needs no gap and no RP" (O3_TEMPLATE.md line 170) transfers.

---

## 2. The reduction: how a source enters Balaban's induction

### 2.1 Key observation: the (C1) source is a local coupling

Write the sourced initial density as

  ρ_0^f(U) := exp( − Σ_p (g_0^{−2} − f_p) P_p(U) ) = exp( − A(g_0^{−2} − f, U) ),   f_p := f(x_p), |f| ≤ r.

This is Balaban's ρ_0 = exp[−(1/g_0²) A − E] with the constant coupling 1/g_0² replaced by the plaquette-dependent coupling 1/g_0²(p) := 1/g_0² − f_p. The source is a relative perturbation g_0² r of the bare coupling; it is small in exactly the sense Balaban's analyticity in the coupling uses (CMP 109 p. 263 [V]: E^{(j)} "is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic)"). The generating functional is Z_ε[f] = ∫ ρ_0^f dU, and

  ⟨Π_i ϕ_ε(f_i)⟩ = ∂_{z_1} … ∂_{z_n} log Z_ε[Σ z_i f_i] |_{z=0}   (disjoint supports; the vacuum subtraction cancels in log Z).

Balaban's induction already contains a space-dependent coupling. CMP 119 (2.23) [V]: "A_k(1/g_k², U_k) = −A(1/g_k², U_k) + E_k(U_k) + R_k(U_k) + B_k(U_k, A) − E_k", and (2.24) [OCR garbled; the surrounding text is verbatim]: "the definition of the function g_k²(x). It is defined by the sequence of the renormalization group equations generalizing Eqs. (I.0.20) and (1.27): [1/g_j²(x) = 1/g_{j−1}²(x) + β_j(g_{j−1}) φ_j(x)] Here the coupling constants g_{j−1} are defined as in (I.0.20), and φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1}. Thus g_j(x) = g_j on the last domain." The bracketed formula is my reconstruction from the garbled line. So the marginal term of his effective action is a Wilson action with an x-dependent coupling, with the x-dependence confined to large-field regions. E14 for (C1) asks the same object to carry a slowly varying x-dependence everywhere, with a bare initial value 1/g_0² − f(x).

Also, the background field is unchanged: Balaban's U_k(V) minimizes the unweighted Wilson action under the averaging constraint (CMP 119 (2.12) [V]: "the functional U → A^η(U) on U: U regular and M_B(U) = V"), even when his coupling is x-dependent. We keep that: the source never enters the variational problem (E5 stays verbatim). The price is a linear term in the fluctuation field, proportional to ∇f (§2.4(c)), which is irrelevant.

### 2.2 The sourced inductive assumptions (what changes in CMP 109 (1.1)–(1.22) and CMP 119 Sect. 2)

Let F_r := {f ∈ C^∞(T⁴) real: |f| ≤ r, |∂^m f| ≤ C_m for m ≤ 5} (physical units). The k-th sourced density ρ_k^f(V_k) has the representation (2.18) of CMP 119 with these modifications.

(S-A) Marginal term. −Σ_p g_k^{−2}(p; f) P_p(U_k(V)), with
  1/g_k²(x; f) = Φ_k(1/g_0² − f(x)) + h_k(x; f),
where Φ_k is the k-fold composition of the scalar flow u ↦ u − β(u^{−1/2}) (Balaban's (0.20) read as a map of 1/g²), and h_k is the gradient correction, |h_k(x; f)| ≤ C Σ_{j ≤ k} (L^j η) M |∇f|_∞ (geometric in j, so bounded uniformly in k). In words: the local coupling flows pointwise, up to an irrelevant remainder. The linear response B_k := ∂(1/g_k²)/∂(1/g_0²) = Φ_k' = Π_{j ≤ k} c_j with c_j := 1 − β_j'(g_{j−1}) dg_{j−1}/d(g_{j−1}^{−2}) = 1 + ½ g_{j−1}³ β_j'(g_{j−1}). This is the YM form of the template's (9.2) z_x = z'_{[x]}/(l² c_j): no block-volume factor, because the field has dimension d.

(S-B) Regular terms. E^{(j)}(X, g_{j−1}(·; f), U, J; f): depends on (U, J)|_X and f|_X; analytic in (U, J) on U_j^c(X, α_0, α_1); C^∞ in f|_X with derivative bounds |∂_f^α E^{(j)}| ≤ E_0 α! r^{−|α|} exp(−κ d_j(X)); gauge invariant; the sourced (1.18). Same for R^{(j)}, B^{(j)} with their bounds (2.31), (2.42).

(S-C) Source-only local functional (new). W_k[f] := Σ_{j ≤ k} Σ_{□ ∈ π_j} P^{(j)}(f(x_□), ∂f(x_□), …, ∂⁴ f(x_□)), with P^{(j)} smooth functions of the 4-jet of f at the cube centre, |P^{(j)}| ≤ C (L^j η)^{−4} g_{j−1}⁴ (times a polynomial in logarithms). This is the field-independent, relevant part of the source dependence, extracted at every step exactly as Balaban extracts the vacuum energy (CMP 109 p. 258 [V]: "It is contained in the normalization factors in the integrals (0.17), (0.19), hence we may assume that it is included already in the definition of the function E^{(j)}, and E^{(j)}(1) = 0"). The difference: the vacuum energy is a number; W_k is a local functional of f. It is divergent as k → K and it is never needed: it drops out of every mixed derivative with disjoint supports.

(S-D) β-functions. β_{j+1}(g_j(x)) evaluated at the local coupling. Translation invariance of the vacuum polarization tensor (CMP 109 (1.20)–(1.22)) is used only locally: freeze the coupling on each localization cube at its centre value, extract with Balaban's Ward–Takahashi identities, and put the freezing error into h_k (S-A).

(S-E) Normalization. The source-free output is the output at f = 0 (template Prop 9.1 [V]: "The source-free output is exactly the output at zero source."). So all of Balaban's constants are unchanged at f = 0, and the sourced theorem is a perturbation statement.

Sourced Theorem 1 (target). There are r > 0 and constants such that, if sup_x g_k(x; f) ∈ ]0, γ] for all k ≤ K (automatic for r ≤ ½(1/g² − 1/γ²) along Balaban's trajectory), then for all f ∈ F_r the densities ρ_k^f = (RT)^k ρ_0^f satisfy (S-A)–(S-E) with bounds uniform in f, K, and T_η.

Corollary (sourced UV stability). exp(−E_−|T_η|) ≤ exp(−W_K[f]) Z_ε[f] ≤ exp(E_+|T_η|) uniformly in f ∈ F_r; and log Z_ε[f] − W_K[f] is C^∞ in f with the derivative bounds of (S-B) summed over X, giving (N1).

### 2.3 Where the sources are renormalized (dimension counting, the YM form of template §9)

Source z of a dimension-Δ field in d dimensions, after one block step with factor L, carries L^{d−Δ} per source in the field-dependent terms (the template: Δ = 0, d = 2, factor l² per source, hence z_x = z'/l²; template proof [V, line 4165]: "A coefficient of degree a then gains (2/l²)^a"). Here Δ = d = 4, factor 1: the linear source is exactly marginal, every power of the source is marginal, and the field-independent part gains L⁴ per step (relevant). Hence three renormalizations, all local:

(R1) Linear, field-dependent: f(x) tr F²-type term, i.e. the coupling. Coefficient c_j per step (S-A). This is the template's c_j and the only one the template has.
(R2) Nonlinear, field-dependent: f(x)^a tr F² — the nonlinear dependence of the effective local coupling on the bare local coupling, Φ_k(1/g_0² − f). Absent in the template (degree ≥ 2 contracts there). Here it is the pointwise composition of the scalar flow; nothing new to estimate beyond (R1) with the coupling moved.
(R3) Field-independent, all degrees, up to four derivatives: the contact terms W_k[f] (S-C). Absent in the template ("No further source-dependent volume scalar is extracted" [V]). Here it is forced.

Gradient terms. A field-dependent term with derivatives of f needs a gauge-invariant local operator of dimension 4 − m to be marginal: ∂f·(dim 3) and ∂∂f·(dim 2) do not exist in pure gauge theory (tr F is zero), so the first field-dependent gradient term is ∂_μ∂_ν f tr F_{μρ}F_{νρ} of dimension 6, irrelevant by L^{−2} per step. This is why (S-A) can be pointwise plus a geometric remainder.

Convergence of the normalization. c_j = 1 + ½ g_{j−1}³ β_j'(g_{j−1}). Balaban's inductive assumption (CMP 109 p. 264 [V]): β_{j+1} "is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives." If β_j is even in g (THEOREM2.md (T2-a2), expected but not in Balaban's assumptions), β_j' = O(g) and c_j = 1 + O(g_{j−1}⁴); with only the C^1 bound, c_j = 1 + O(g³). Along the trajectory g_j² ≈ 1/(1/g² + β(K − j)), so Σ_j g_j⁴ < ∞ and Σ_j g_j³ < ∞. Hence B_K = Π c_j converges absolutely in both cases. [derived] This is better than the template's |log B_N| = O(N^{9/10}). Physically: the plaquette density is the operator conjugate to 1/g², and its multiplicative renormalization in pure YM is finite at one loop.

### 2.4 One step at the Gaussian level (D1 of §4, written out)

Setting: CMP 109 Sect. 2. After k steps, the fluctuation integral of the (k+1)-st step in the small-field region is (2.1) with the action −(1/g_k²)A(U_k(V)) + E_k, the critical point at B = 0 (the minimizer U_{k+1}(W)), and the quadratic form (1.5): ½⟨B, Δ_k^{(1/g_k²)} B⟩ + gauge-fixing terms, where I write Δ^{(w)} := d^* M_w d restricted to the fluctuation space, M_w multiplication by the plaquette weight w_p, d the lattice covariant exterior derivative in the background U_k. For k = 0, U_0 = U, Δ^{(w)} is the lattice Maxwell operator with weights. Balaban's E7 (LEMMA_B4.md) supplies the exact form; only the weight matters here.

(a) Exact algebra. With the local coupling w_p = 1/g_0² − f_p the action is Σ_p w_p P_p(U). Insert U = U_1(V) e^{iB} (Balaban's background-field decomposition, CMP 109 (2.3)–(2.9)). Then
  Σ_p w_p P_p(U_1 e^{iB}) = Σ_p w_p P_p(U_1) + Σ_p w_p ⟨P_p^{(1)}(U_1), B⟩ + ½ Σ_p w_p ⟨B, P_p^{(2)}(U_1) B⟩ + O(B³),
where P^{(1)}, P^{(2)} are the first and second variations. For constant w the linear term vanishes on the constrained fluctuation space (U_1 is the minimizer). For w = 1/g_0² − f, the linear term is −Σ_p f_p ⟨P_p^{(1)}(U_1), B⟩ = −⟨J_f(U_1), B⟩ with J_f a current supported where ∇f ≠ 0, of size |J_f| ≤ C ε |∇f|_∞ |dU_1| per bond (summation by parts against the constant-f identity). The quadratic term is ½⟨B, Δ^{(w)} B⟩ with Δ^{(w)} = Δ^{(1/g_0²)} − Δ^{(f)}.

(b) Gaussian integral. Completing the square and integrating the Gaussian part (gauge fixing and Faddeev–Popov exactly as (0.14)–(0.16), unchanged because the source is gauge invariant):
  log Z^{(0)}(U_1; f) − log Z^{(0)}(U_1; 0) = −½ log det(1 − g_0² K_f) + ½ ⟨J_f, (Δ^{(w)})^{−1} J_f⟩ + (higher-order fluctuation terms, treated as Balaban treats his: E8, cluster expansion),
with K_f := (Δ^{(1)})^{−1/2} Δ^{(f)} (Δ^{(1)})^{−1/2}, where Δ^{(1)} is the unit-weight operator, so that Δ^{(w)} = g_0^{−2} (Δ^{(1)})^{1/2} (1 − g_0² K_f) (Δ^{(1)})^{1/2}. Since Δ^{(f)} ≤ r Δ^{(1)} in form sense, ‖K_f‖ ≤ r, and for g_0² r < 1 the series converges:
  −½ log det(1 − g_0² K_f) = ½ Σ_{a ≥ 1} (g_0^{2a}/a) tr (K_f)^a.

(c) Reading the three renormalizations off (b).
  • a-th term = (g_0^{2a}/a) × (a-point function of the plaquette density at one loop) smeared with f^{⊗a}: a polygon of a free propagators with a insertions of the weight f. Its local 4-jet in f (Taylor expansion of f around a cube centre, as Balaban expands E^{(j)}(X, exp iηH) in H to fifth order, CMP 109 p. 258 [V]) is the step's contribution to P^{(1)} in W_1[f] (R3). For constant f it is exact: −½ log det(1 − g_0² f) = (n_modes/2)(g_0² f + ½ g_0⁴ f² + …), n_modes ∝ |T_ε| = ε^{−4}ℓ⁴: the ε^{−4} f² contact term of §1.3 with coefficient ∝ g_0⁴, and the f-linear term is the one-loop vacuum energy response (it cancels against the normalization, since ∂ log Z/∂f at constant f is −⟨A⟩).
  • The field-dependent part of tr K_f (a = 1) and of tr K_f² is the one-loop response of the effective action to a local change of coupling: by Balaban's Sect. 5 argument with the coupling frozen on each cube, it equals −β_1(g_0) f(x) P(U_1) locally, i.e. (R1) with c_1 = 1 + ½ g_0³ β_1'(g_0) at this order; the freezing error is the gradient term h_1 of (S-A), bounded by (Lη) M |∇f|_∞ per cube. [derived, the identification with β_1' is the one-loop version of ∂(1/g_1²)/∂(1/g_0²); to be checked against THEOREM2.md §8 numerics, see D1 below]
  • The current term ½⟨J_f, (Δ^{(w)})^{−1} J_f⟩ is O(ε² |∇f|²) × (a local functional of U_1 of dimension 2 and a field-independent part). The field-independent part is a 2-derivative contact term (in P^{(1)}); the field-dependent part has no gauge-invariant dimension-2 partner except through (dU_1)², which is tr F² again times ε²|∇f|²: irrelevant by (Lη)² per step. [derived]
  • Non-constant f at a > 2: all terms are (g_0^{2a}) × (polygons); their non-local parts (separated insertions) are the one-loop connected a-point functions, kept in E^{(1)}(X; f) with the (1.18)-type bound because the free propagators decay (Balaban's random-walk expansions, CMP 116 Sect. 1); their local 4-jets go to W_1.

(d) What D1 must prove, precisely. (D1-i) The sourced E^{(1)}(X, U, J; f) obtained from (b) after extracting the local 4-jet of the field-independent part and the marginal term −β_1(g_0(x)) f-dependence, is analytic in (U, J) on U_1^c, C^∞ in f with |∂_f^α E^{(1)}| ≤ E_0 α! r^{−|α|} e^{−κ d_1(X)} — the sourced (1.18). (D1-ii) c_1 = 1 + ½ g_0³ β_1'(g_0) + O(g_0⁶), and |h_1| ≤ C (Lη) M |∇f|_∞. (D1-iii) The remainder after the 4-jet extraction satisfies the sourced (0.29): bound O(1)(Lη)^{4+α} e^{−κ d_1(X)} times sup |∂^5 f|. The Gaussian part (b) is a finite-dimensional determinant and is checkable numerically: numerics/ym_momentum.py already computes the one-loop vacuum polarization of one step in momentum space; adding a plane-wave weight f = r cos(q·x) and reading the O(r) response at q → 0 gives c_1 − 1, and the O(q²), O(q⁴) coefficients of the field-independent O(r²) response give the 2- and 4-derivative contact-term coefficients of P^{(1)}. This is a falsifiable check of (D1-ii) and of the claim that no marginal gradient term exists.

(e) What D1 does not cover. The non-Gaussian fluctuation terms (Balaban's Sect. 3–4 expansions and CMP 116's cluster expansion) with f inserted; the large-field regions; the R operation. These are D2–D3.

### 2.5 The minimal set of new estimates beyond Balaban's, each stated

(E14-a) Sourced small-field step (CMP 109 Sects. 2–5 + CMP 116). Input: action of the form (S-A)–(S-C) at step k, f ∈ F_r. Output: the same form at step k+1 with (i) c_{k+1} = 1 + ½ g_k³ β_{k+1}'(g_k) + O(g_k⁶), (ii) h_{k+1} = h_k + O((L^{k+1}η) M |∇f|_∞), (iii) sourced E^{(k+1)} with the (1.18) bound and the derivative bounds in f, (iv) W_{k+1} = W_k + Σ_□ P^{(k+1)}(4-jet of f) with |P^{(k+1)}| ≤ C (L^{k+1}η)^{−4} g_k⁴, (v) the remainder after jet extraction bounded by (L^{k+1}η)^{4+α} e^{−κ d}·|∂^5 f|. Where it differs from Balaban: Sect. 5 (Ward–Takahashi extraction of the marginal term) must run with a frozen local coupling per cube and bound the freezing error; the localization of E (Sect. 3–4, CMP 116) must carry the f-dependence as extra "external" variables, which the random-walk expansions allow (CMP 116 Sect. 1 [V]: "In these equations we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds").

(E14-b) Sourced large-field step and R operation (CMP 119 Sect. 3, CMP 122 I–II). With real f the densities stay positive, so the R operation's denominators (CMP 122 I p. 176 [V]: "We will prove that the densities are positive, and the integration domains in the integrals above are nonempty, hence the denominators are positive, and the operation R is well defined") remain positive. The large-field small factors exp(−p_0(g_0(x))) change by the factor exp(±r P_p) ≤ e^{2r}, harmless. New content: Balaban's x-dependent g_j(x) is constant outside Λ_j; with f it is nowhere constant. Every place that uses translation invariance of the coupling outside large-field regions must be checked. [not located; this is a reading task on CMP 119 Sect. 3 and CMP 122]

(E14-c) Derivative bounds in f (for (N1)). Either complex f in a polydisc |f| ≤ r (then analyticity in f follows from analyticity in the coupling, but the positivity used in (E14-b) is lost and the denominators need |·| ≥ ½ of the real value by perturbation), or real f with explicit n!-type bounds on ∂_f^n from the cluster expansion with n insertions (standard in cluster expansions with sources, e.g. the Balaban–Brydges–Imbrie–Jaffe unit-lattice technique [lit-agent]: "We evaluate derivatives with respect to 'sources' using Cauchy's formula"). Recommendation: real f and the uniform C^∞ bounds, matching Balaban's own "C^∞ (or analytic)" in the coupling; then moment convergence follows from generating-function convergence by interpolation (if F_ε → F uniformly on an interval and sup_ε ‖F_ε^{(n+1)}‖ < ∞ then F_ε^{(n)} → F^{(n)}), with no Cauchy formula and no complex coupling.

(E14-d) Fixed-torus convergence (for (N2)). Template Prop 10.2 first part [V, lines 4633–4660]: "A test that is constant on the microscopic descendants of its layer-j cells has an exact source representation at that layer. [...] Corollary 9.2 and the density comparison Equation (6.8) imply convergence of the normalized source integrals near the source origin. [...] Absolute gas bounds and regular-exponent bounds control the numerator, and the small-cap lower bound controls the source-free denominator, uniformly in the original depth N. The common bulk scalar cancels from numerator and denominator." YM form: at a fixed coarse layer j the sourced density is a bounded perturbation of a fixed finite-dimensional integral (the unit-lattice-type integral over V_j on T^{(j)} with |T^{(j)}| = (ℓ L^j)⁴ points); its f-derivatives converge as K → ∞ if the inductive data at layer j converge as K → ∞. That is E13 (comparison of two trajectories), the template's (5.2)/(6.8), which Balaban does not have. With E13: (N2). Without E13: (N1) and subsequences only. The contact functional W_K cancels between numerator and denominator only in its field-independent part, which is why it must be field-independent and local; its divergence is irrelevant to S_n(F) with F flat on diagonals.

(E14-e) RP and symmetry transfer (for (N3)–(N4)). Short; the template's Lemma 11.1 argument verbatim once (N1)–(N2) hold. Needs the explicit statement that Balaban's RG preserves Z (it does: it is an exact change of variables plus the normalized R operation, CMP 122 I (0.4) [V]: "∫dV (Rρ)(V) = ∫dV ρ(V)"), so expectations at the finest scale equal expectations computed at any layer.

(E14-f) Nontriviality (for (N6)). One-loop two-point function of the plaquette density at a fixed coarse layer: c g_j⁴ d^{−8}, c ≠ 0, plus an O(g_j⁶) remainder from (E14-a). Medium; a corollary of (E14-a) at a fixed layer.

(E14-g) Tensor sources (C2). (E14-a)–(E14-f) with the Wilson action replaced by a general B_4-covariant dimension-4 gauge-invariant local lattice action with x-dependent coefficients. This is E10's generalization (LEMMA_B4.md) with x-dependence; the extraction in Sect. 5 must now track the 21-component marginal space (B4 found 3 for the C_4 × B_2 case; with full B_4 and an isotropic source it is 1, with tensor sources it is the full space). Open mixing question: whether tr F F̃ (the topological density) mixes with the others; by parity it does not mix with the parity-even ones in a parity-symmetric scheme [guess].

---

## 3. Literature: who carried Balaban-type bounds with observables

Verdict: nobody has, for a lattice gauge theory. Details, with quotes. Items marked [lit-agent] were fetched and quoted by the Opus literature pass; I did not re-open those PDFs.

### 3.1 Dimock, "The renormalization group according to Balaban" I–III

Scalar φ⁴ in d = 3 only; partition function only. Abstracts [lit-agent]: I (arXiv:1108.1335) "In this first paper we analyze the small field contribution to the partition function." II (1212.5562) "In this second paper we control the large field contribution to the partition function." III (1304.0705) "In this third paper we demonstrate convergence of the expansion and complete the proof of a stability bound." The only mention of observables is a remark in III [lit-agent]: "Remark. The analysis can be adapted to treat correlation functions as well. See particularly [12] for an indication of how this would go." ([12] = Balaban–O'Carroll, a classical spin model.) So Dimock's reconstruction of Balaban does not include observables, and it does not include gauge fields.

### 3.2 Dimock's QED_3 series (the closest Balaban-type gauge work after 1989)

Abelian, Wilson fermions, fixed unit torus, partition function only. arXiv:2009.01156 [lit-agent]: "The main result is an ultraviolet stability bound in a fixed finite volume." and closing remark: "It should be possible to include source terms in the partition function and thereby generate results for correlation functions. See for example [21]. In particular one could expect to show the existence of the continuum limit N → ∞." ([21] = Balaban–Imbrie–Jaffe CMP 114.) Overview arXiv:2204.07201 [lit-agent]: "The proof should allow one to add local gauge invariant perturbations to the action like ⟨dA, J⟩ or ⟨ψ̄γ_μψ, j_μ⟩. Then the partition function Z_N(e) becomes a generating function Z_N(e, J, j), derivatives of log Z_N(e, J, j) in J, j at J = 0, j = 0 give correlation functions. Uniform bounds on the generating function and analyticity in J, j would give uniform bounds on correlation functions. The continuum limit N → ∞ for the partition function, generating function, and correlation functions should also be feasible." On his scalar QED paper arXiv:1502.02946 [lit-agent]: Balaban's scalar-QED papers make it "awkward to extend results beyond the partition function, for example to control the correlation functions. Balaban fixes this in subsequent papers on other models, but it remains undeveloped for scalar QED." Dimock's route is the same as §2 here (gauge-invariant local source, generating function, analyticity), stated as future work three times, never done. The only Dimock paper with correlation functions uniform in the cutoff is Gross–Neveu_2 (arXiv:2406.16799 [lit-agent]: "all correlation functions, treated as distributions, are uniformly bounded in the ultraviolet cutoff"), by the Bauerschmidt–Brydges–Slade method, not Balaban's, and not a gauge theory.

### 3.3 Balaban–Imbrie–Jaffe, abelian Higgs (the one place observables enter a Balaban-type step)

CMP 114 (1988) 257–315 [lit-agent]. §1: "gauge invariant observables such as loop variables u(γ) = exp[i e ε Σ_{b∈γ} A(b)] … or string variables … These variables must be renormalized appropriately, by multiplying or subtracting ε-dependent terms." §3: "We wish to give an expansion for the partition function, or for an unnormalized expectation of an observable F … where F is a gauge-invariant function, a product of terms like |φ(x)|², φ̄(b−)u(b)φ(b+), Re(ieε²)⁻¹(u(p)−1). Each such term may need to have an appropriate constant subtracted in order to obtain ε-independent bounds on the full expectation ⟨F⟩ = [F]/[1]. These 'Wick ordering' constants … will be discussed carefully in a subsequent paper on the perturbation expansions." Also: "(For observable terms, irrelevant means bounded independently of ε.)" The subsequent paper never appeared (Imbrie's publication list, [lit-agent]). Their Cargèse 1983 lecture [lit-agent]: "We must consider effective observables as well as effective actions, since the original fields have been integrated out … except for new vertices coming from the observables on the L^{−k} lattice." So the mechanism "effective observable carried as extra vertices, with ε-dependent subtractions" was set up in a superrenormalizable abelian model and never finished. Note the plaquette observable Re(ieε²)^{−1}(u(p) − 1) is the abelian (C1); their "appropriate constant subtracted" is the vacuum subtraction v_ε of §1.2; they do not mention the contact terms of §2.3, which in d = 2, 3 are milder.

The unit-lattice paper (Balaban–Brydges–Imbrie–Jaffe, Ann. Phys. 158 (1984)) has observables with sources and Cauchy's formula [lit-agent]: "We evaluate derivatives with respect to 'sources' using Cauchy's formula and thereby obtain formulas for truncated correlations which exhibit their exponential decay." Fixed lattice spacing, no RG.

### 3.4 Federbush, phase-cell YM I–VI (CMP 1986–1990)

Full texts not fetched (paywall). Search summaries [lit-agent, paraphrase]: continuum–lattice correspondence, local stability, excitation modes, chunks, π_3 obstructions. No mention of observables or loops. Treat as "no" pending a read.

### 3.5 Others

MRS 1993 (CMP 155) [lit-agent abstract]: "a rigorous construction of the Schwinger functions of the pure SU(2) Yang-Mills field theory in four dimensions (in the trivial topological sector) with a fixed infrared cutoff but no ultraviolet cutoff, in a regularized axial gauge". Gauge-fixed Schwinger functions, continuum momentum slicing, not Balaban's lattice RG, IR cutoff never removed. King (U(1) Higgs, CMP 102–103 (1986)): generating functional of F_A and :|φ|²: in d = 2, 3 (reports/EUCLID_INV_LIT.md §2, secondary sources only). Goswami 2019 (arXiv:1811.00422) and Faria da Veiga–O'Carroll 2022 (arXiv:2205.07376): observables on a unit lattice or by reflection-positivity bounds, not uniform in ε through an RG. Chatterjee, Cao, Adhikari, Cao–Nissim–Sheffield (2021–2025): fixed-lattice or scaling-limit results, no multiscale bounds. No 2020–2026 paper claims Balaban-type block-spin bounds with gauge-invariant observables [lit-agent, arXiv API search].

### 3.6 Jaffe–Witten on the gap [V, reports/clay_ym.txt lines 540–564]

"One must then verify the existence of limits of appropriate expectations of gauge-invariant observables as the lattice spacing tends to zero and as the volume tends to infinity." and, on Balaban's 3D work: "This is an important step toward establishing the existence of the continuum limit on a compactified space-time. These results need to be extended to the study of expectations of gauge-invariant functions of the fields."

---

## 4. Work plan (in order, sized)

Sizes are honest guesses for one person who already has Balaban's papers open; "page" counts refer to the pages of Balaban that must be re-run with f inserted.

D1. One step at the Gaussian level, (C1) source. §2.4 (a)–(d). Deliverables: the three renormalizations (R1)–(R3) at one loop with explicit coefficients; c_1 = 1 + ½ g_0³ β_1'(g_0) + O(g_0⁶); the statement that no marginal gradient term exists; a numerical check with numerics/ym_momentum.py extended by a plane-wave weight (response at O(r) and O(r²), q → 0 and q², q⁴ coefficients). Size: 2–3 days of derivation plus 1–2 days of numerics. Status: written out in §2.4 to the level of formulas; not verified; the numerical check not run.

D2. Sourced small-field step, (E14-a). Re-run CMP 109 Sects. 2–5 (≈35 pages) and CMP 116 (≈20 pages) with the local coupling and the extra external variable f. The only conceptual change is in Sect. 5 (frozen local coupling + freezing error) and in the jet extraction of W. Size: 3–6 weeks. Prerequisite for everything below.

D3. Sourced large-field step and R operation, (E14-b). Re-run CMP 119 Sect. 3 and CMP 122 I–II (≈100 pages) with f. Conceptual content small (real f keeps positivity; the small factors change by e^{2r}); reading content large; every use of a constant coupling outside Λ_j must be found. Size: 2–3 months. Output: Sourced Theorem 1 and the Corollary (N1).

D4. Derivative bounds and the interpolation lemma, (E14-c). Size: 1 week given D2–D3, if real sources and the C^∞ route are used.

D5. RP, symmetry, regularity, nontriviality of every limit point, (E14-e), (E14-f), (N3)–(N6). Size: 2 weeks given D3–D4. Output: the finite-torus theorem in its compactness form (subsequences), admissible under footnote 2.

D6. Fixed-torus convergence, (E14-d) = E13 (comparison of two trajectories). This is the campaign's largest independent item and is not E14-specific; it is listed because (N2) needs it. Size: unknown; no Balaban analogue; template (5.2)/(6.8) is the model. Output: the full-sequence theorem.

D7. Tensor sources (C2), (E14-g): D1–D5 with the general dimension-4 action; shares its hard part with E10 of LEMMA_B4.md. Size: comparable to D2–D3 again, less if E10 is done first.

D8. Wilson loops (C3). Line-defect renormalization inside the block RG. No template, no Balaban analogue, and the perimeter/corner renormalization must be proved non-perturbatively. Not needed for the torus theorem. Size: a separate program.

Order of attack: D1 (now; cheap; falsifiable) → D2 → D3 → D4 → D5 gives the compactness-form theorem. D6 upgrades it to uniqueness. D7, D8 are extensions.

---

## 5. Honest ledger

1. Nothing in this file is verified. §2.4 is at the level of formulas and dimension counting; (D1-i)–(D1-iii) are stated, not proved. The identification c_1 = 1 + ½ g_0³ β_1'(g_0) is one-loop bookkeeping, not a derivation from Balaban's Sect. 5.
2. The reduction rests on one structural claim [derived, unverified]: the (C1) source is exactly a local bare coupling, and Balaban's induction already carries a local coupling g_j(x) (CMP 119 (2.24)), so the sourced induction is Balaban's with (i) a pointwise coupling flow, (ii) a frozen-coupling Ward identity extraction with an irrelevant freezing error, and (iii) a local source-jet extraction (contact terms) of a type Balaban performs for the vacuum energy. If (ii) or (iii) hides a marginal gradient term, the dimension count in §2.3 is wrong and (S-A) is false. The numerical check in D1 tests this.
3. (2.24) of CMP 119 is OCR-garbled in balaban/*.txt; the formula I quote for it is reconstructed from the surrounding verbatim text. Read it in the PDF before relying on it.
4. The target theorem is a finite-torus theorem with Schwinger functions on test functions flat on the diagonals. Smeared densities are not random variables in the limit (§1.3). Any claim of "convergence of ⟨ϕ(f)²⟩" for (C1) is false as stated.
5. (N2) (full-sequence convergence) needs E13, which Balaban does not have and this file does not supply. The admissible fallback is subsequences plus (N3)–(N6) for every limit point.
6. Everything is conditional on Balaban's Theorem 2 (THEOREM2.md): the trajectory with all g_k ≤ γ. The source changes the condition to sup_x g_k(x; f) ≤ γ, which holds for r ≤ ½(1/g² − 1/γ²).
7. Full O(4) invariance, clustering, uniqueness of the vacuum on T⁴, the R⁴ limit, the mass gap, the stress tensor and OPE: not addressed (LEMMAS.md ledger 5–8).
8. Literature: Federbush I–VI and King 1986 were not read (paywalls); Balaban–Imbrie–Jaffe and Dimock quotes are relayed from the literature agent, not re-checked against the PDFs. No source found that does E14 for any gauge theory with a continuum limit; BIJ 1988 set it up for abelian Higgs and did not finish it.
9. The complex-source route (Cauchy's formula, the template's choice) conflicts with the positivity used in Balaban's R operation. The real-source route avoids this but needs explicit n! derivative bounds from the cluster expansion. Neither route is worked out here.
10. Wilson loops are the observable Balaban named. This file argues they are the wrong first observable for an existence theorem and defers them. That is a choice, not a result.
