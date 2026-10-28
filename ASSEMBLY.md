# ASSEMBLY — finite-torus existence theorem for SU(2) lattice Yang–Mills, proof modulo named blocks

Status: DRAFT (2026-10-27, Opus). Not verified. Every block below names its file and status. Proofs marked [proved here] are short and have no independent verifier yet.

## 0. Conventions and sources
Tags: [V] quote checked verbatim against a file in this folder; [cited] standard result, text not in this folder, not re-read; [proved here] short proof given in this file; [hypothesis] assumed, owned by a named block; [open] not proved anywhere.

Inputs read: PLAN.md (Campaign section and dated lines, 2026-10-27), SOURCES.md §1–§5, SOURCES_VERIFY.md (items 5, 12), reports/clay_ym.txt (§4, §6.2, §6.5, footnote 2), THEOREM2.md §1–3a and §9, LEMMAS.md (ledger, Lemmas D, E), reports/o3_continuum.txt (lines 381–390, 4878–4915, 4976–5012). Status lines of the D1/D2/D2C/D3/HBETA/BETA_FP/U3 files are taken from PLAN.md and the files' headers.

Notation.
- L odd, L > 11, fixed (Balaban, CMP 109 p. 256). K ∈ N. ε = L^{−K}. Physical side ℓ ∈ N, in units of the unit lattice. T⁴_ℓ = (R/ℓZ)⁴. Lattice T_ε = (εZ/ℓZ)⁴, N_ε := ℓ/ε = ℓL^K sites per direction.
- Wilson action A(U) = Σ_p P_p(U), P_p(U) := 1 − ½ Re tr U(∂p), p over unoriented plaquettes. 0 ≤ P_p ≤ 2. Measure μ_ε = Z_ε^{−1} exp(−g_0^{−2} A(U)) Π_b dU_b (Haar). x_p := centre of p.
- Bare coupling g_0 = g_0(ε, g): any solution of the shooting problem of Lemma D (LEMMAS.md) with terminal coupling g_K = g. Lemma D gives existence, not uniqueness; any choice works below.
- Observable (class C1 of SOURCES.md §1.2): the centred plaquette density φ_p := P_p − c_ε, c_ε := ⟨P_p⟩_{μ_ε}. By hypercubic invariance (§2.4) c_ε does not depend on p.
- Test space. D_n := {F ∈ C^∞(T^{4n}) : every derivative of F vanishes on every diagonal {x_i = x_j}, i ≠ j}. Norm ‖F‖_m := max_{|α| ≤ m} sup_{T^{4n}} |∂^α F|. On the compact torus this is the OS Schwartz seminorm without weights.
- Lattice Schwinger functions (SOURCES.md §1.3): S_{n,ε}(F) := Σ_{p_1,…,p_n} F(x_{p_1}, …, x_{p_n}) ⟨φ_{p_1} ⋯ φ_{p_n}⟩_{μ_ε}, F ∈ D_n. These are moments, not cumulants (SOURCES_VERIFY item 5(a)). No field renormalization factor is inserted: SOURCES_VERIFY item 8 gives B_K = Π c_j uniformly bounded above and below (c_j = 1 + O(g_{j−1}³), Σ g_j³ < ∞), so a bounded factor B_K^n changes no statement below except the normalization of the limit.
- Scaling check (SOURCES_VERIFY item 4, [derived] there): ⟨φ_p φ_{p′}⟩ ~ ε⁸ g⁴ |x_p − x_{p′}|^{−8} at tree level, so S_{2,ε}(F) = O(1) for F ∈ D_2 with no rescaling, while Σ_p f(x_p)φ_p has variance ~ ε^{−4}. Hence the limit object is a family of distributions off the diagonals, not a random field (SOURCES.md §1.3).

Extra hypothesis found while writing this file. ℓ is EVEN. Reason: for a reflection of the periodic lattice to split it into two halves exchanged by the reflection, N_ε must be even (the reflection x_0 ↦ ε − x_0 has fixed planes x_0 = ε/2 and x_0 = ε/2 + ℓ/2; the second is a link plane only if N_ε is even). With L odd, N_ε = ℓL^K is even iff ℓ is even. For odd ℓ the second fixed plane is a site plane; RP for such mixed reflections is plausible but not cited here.

## 1. Target theorem
### 1.1 What "exists" means here

Jaffe–Witten, footnote 2 [V, reports/clay_ym.txt line 619], attached to the sentence "Such a result presumably would enable the study of the limit as T4 → R4" (line 582): "We specifically exclude weak-existence (compactness) as the solution to the existence part of the Millennium problem, unless one also uses other techniques to establish properties of the limit (such as the existence of a mass gap and the axioms)."

Reading used in this file. "Exists" means: (i) the family {S_{n,ε}} is relatively compact (uniform bounds); (ii) at least one limit point exists along a sequence ε_k → 0; (iii) EVERY limit point has the properties (OS0)–(OS3) below, proved by arguments on the limit, not assumed. No uniqueness of the limit point is claimed. Different subsequences may give different limits. Full-sequence convergence needs E13 (comparison of two trajectories; SOURCES.md (E14-d), D6), which is not in this file.

This reading is weaker than the footnote's parenthesis. The footnote names "the existence of a mass gap and the axioms". The theorem below gives no gap and only the torus versions of four axioms. It is therefore NOT an admissible Clay solution. It is the finite-torus step that Jaffe–Witten §6.5 describes [V, lines 544–564]: "One must then verify the existence of limits of appropriate expectations of gauge-invariant observables as the lattice spacing tends to zero and as the volume tends to infinity" (only the first limit is done here) and "These results need to be extended to the study of expectations of gauge-invariant functions of the fields."

The OS axioms are not stated in reports/clay_ym.txt. It cites them as [35] (Osterwalder–Schrader, CMP 31 (1973) and CMP 42 (1975)) and requires "axiomatic properties at least as strong as those cited in [45, 35]" (line 279–280) [V]. The forms used below follow the template's application of OS II [V, o3_continuum.txt lines 4987–5003]: "The linear growth condition requires a bound |Sn (F )| ≤ σn |F |sn with fixed s and σn ≤ A(n!)D for fixed A, D" and "Restricting to Schwartz tests flat on the coincidence diagonals (all derivatives vanish whenever xi = xj ) gives precisely the test class defined in [30, Section II, following Equation (2.1), p. 284]." OS II itself was not re-read [cited].

### 1.2 Hypothesis delivered by the blocks

(H-U) Uniform bound. There are s ∈ N and A, D < ∞ such that for all K ≥ K_0, all n ≥ 1, and all F ∈ D_n:
  |S_{n,ε}(F)| ≤ σ_n ‖F‖_{sn},   σ_n := A (n!)^D,   ε = L^{−K}.
The derivative order sn grows linearly in n. The OS linear growth condition admits this (quote above). (H-U) is the output of blocks (B-T2) + (B-S) + the bridge (B-N1) of §2.

### 1.3 Theorem (finite-torus existence, compactness form)

Let G = SU(2), d = 4, L odd and large, ℓ ∈ 2N fixed. Let γ > 0 be Balaban's small constant and g ∈ ]0, γ] small. For K ≥ K_0 let ε = L^{−K} and g_0 = g_0(ε, g) be a shooting solution (Lemma D) whose effective couplings satisfy g_k ∈ ]0, γ] for 0 ≤ k ≤ K and g_K = g. Assume (H-U). Then:

(a) Compactness. Every sequence K_m → ∞ has a subsequence K_{m_i} such that, with ε_i = L^{−K_{m_i}}, the limit S_n(F) := lim_i S_{n,ε_i}(F) exists for every n ≥ 1 and every F ∈ D_n.

(b) For every limit family (S_n)_{n ≥ 1} obtained in (a):
- (OS0) Regularity. S_n is linear on D_n, and |S_n(F)| ≤ A (n!)^D ‖F‖_{sn}. In particular S_n restricted to C_c^∞(T^{4n} \ ∪_{i<j}{x_i = x_j}) is a distribution of order ≤ sn.
- (OS1) Invariance. S_n(F ∘ (τ_a)^{×n}) = S_n(F) for every a ∈ T⁴_ℓ (all continuous translations), and S_n(F ∘ R^{×n}) = S_n(F) for every R in the hypercubic group B_4 (signed permutations of the axes, acting about a lattice site).
- (OS2) Reflection positivity. Let θ(x_0, x⃗) = (−x_0, x⃗) on T⁴_ℓ. Let T_+ := {x : x_0 ∈ ]0, ℓ/2[}. For every finite family F_0 ∈ C, F_n ∈ D_n with supp F_n ⊂ T_+^n (1 ≤ n ≤ N):
    Σ_{n,m=0}^N S_{n+m}(ΘF_n ⊗ F_m) ≥ 0,   (ΘF_n)(x_1,…,x_n) := conj F_n(θx_n, …, θx_1),   S_0 := 1.
- (OS3) Symmetry and reality. S_n(F ∘ π) = S_n(F) for every permutation π of the n arguments, and S_n(F) ∈ R for real F.

(c) Nontriviality is a separate statement, Theorem 1.4.

What is claimed about measures. No probability measure is claimed. The limit is a family of Schwinger functions on D_n. A measure on distributions would need finite moments of smeared fields, and Var Σ_p f(x_p)φ_p ~ ε^{−4} (§0). (OS0)–(OS3) on D_n are the inputs OS reconstruction consumes.

### 1.4 Theorem (nontriviality), conditional on (B-NT)

Under the hypotheses of 1.3 and the statement (NT) of §2.9, every limit family satisfies:
(i) S_2 ≠ 0: there are f_1, f_2 ∈ C^∞(T⁴) with disjoint supports and S_2(f_1 ⊗ f_2) ≠ 0.
(ii) S_2 is not the two-point function of a scale-invariant (in particular free Maxwell) composite: d⁸ S_2(x, y), |x − y| = d, is not asymptotically constant as d → 0; it behaves like c g(d)⁴ with the running coupling g(d)² ~ (β log(1/d))^{−1}.

## 2. Proof modulo blocks
Structure. (B-T2) gives the trajectory. (B-S) gives sourced bounds uniform in ε. (B-N1) turns them into (H-U). (B-C) gives (a). (B-REG), (B-TI), (B-RP), and (OS3) give (b). (B-NT) gives 1.4. Only (B-C), (B-REG), (B-TI), (B-RP), and (OS3) are proved in this file; they are short and use nothing beyond (H-U) and exact lattice symmetries.

### 2.1 (B-T2) Theorem 2: the running coupling

Needed. Balaban's Theorem 1 (CMP 122 II p. 355) [V, THEOREM2.md §1]: "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." The assumption is discharged by Theorem 2 of CMP 109 p. 259 [V]: for small g there is g_0(ε, g) with all g_k ∈ ]0, γ], g_K = g, and (0.31): 1/g² + β log(L^k ε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^k ε)^{−1}. Balaban: "has not been published yet" [V].

Reduction (THEOREM2.md §3, §3a, §9; LEMMAS.md Lemmas D, E; LEMMAS_DE_VERIFY.md).
- Lemma D (shooting) [proved, verified after correction]: two-sided bounds β ≤ β_j ≤ β′ on the history cube ⇒ g_0 exists with (0.31). Hidden hypotheses made explicit: continuity of β_{k+1} in the whole history; β_j is the infinite-volume function, independent of K.
- Lemma E [proved, verified after correction]: β_0 ≤ β_j^{(0)} ≤ β_0′ and |β_j(g) − β_j^{(0)}| ≤ Cg² ⇒ two-sided bounds for g ≤ γ := min(γ_0, (β_0/(2C))^{1/2}). The remainder bound is Balaban's inductive assumption (CMP 109 p. 264) [V].
- Remaining content (T2-a1′): inf_j β_j(0) > 0 and sup_j β_j(0) < ∞ for the step-j one-loop coefficient.

Status of (T2-a1′) (PLAN.md, dated lines of 2026-10-27).
- U3 Theorem 4.1 (Gaussian RG convergence of the level-j Hessian, rate L^{−2j}): verified (U3_VERIFY.md); repair O5 proved and verified (U3_REPAIRS.md, U3_REPAIRS_VERIFY.md).
- Lemma 5.1 (soft vertices; U3_LEMMA51.md): neutral sector proved and verified (U3_LEMMA51_VERIFY.md). Charged sector reduced to R1–R4 (U3_LEMMA51_R23.md, unverified; verifier running): R2 proved for odd M; R3 FAILS for the single-block constraint in d = 4, and Balaban's composed constraint avoids the failure only under the unproved uniform strip analyticity (A); R1 (composed constraint invertibility) open; R4 reduced to a Ward statement (W) and a non-resonance statement (N). Geometric convergence (any rate ρ > L^{−2}) is conditional on (A) and (W).
- Theorem 6.1 (bordered-matrix invertibility): O6 proved and verified for the one-step constraint; the composed constraint is R1 (open).
- β_∞ = c log L > 0: reduced exactly to Lemma 4.3 of BETA_FP.md (continuum shell value with Wilson UV cutoff and unit-block δ-constraint IR regulator) [open; BETA_FP_LEMMA43.md is a skeleton]. BETA_FP.md Prop. 1.1 graded CORRECTED by BETA_FP_VERIFY.md (exact only for the p → 0 coefficient, not for the plane-wave background at fixed p).
- U1′ (U1_INFINITE_LATTICE.md): S_k = c k log L + κ_W^F − κ_k exactly; boundedness of κ_k (Lemma U2′) open.
- Certified early steps: finite-j positivity of β_j(0) for the steps before the asymptotic regime. Numerics only (β_1(0) = 0.630 at L = 2, 0.664 at L = 3; β_2 ≈ 0.32–0.34 at L = 2, unconverged for j ≥ 2). No interval-arithmetic certificate exists yet. Note: Balaban needs L > 11; all numerics so far are at L ≤ 4.

Conclusion for this file. (B-T2) is a [hypothesis]: Theorem 2, equivalently (T2-a1′) plus Balaban's inductive bounds. Its proof is open at U3 Lemma 5.1 (R1, (A), (W)), BETA_FP Lemma 4.3, U2′, and the certified early steps for the actual L.

### 2.2 (B-S) Sourced bounds E14-a..g

Needed. A version of Balaban's Theorem 1 with the (C1) source, i.e. with the local bare coupling w_p = 1/g_0² − f(x_p), f real, |∂^m f| ≤ r for m ≤ 5 (class F_r), uniformly in ε. Output form (SOURCES.md (N1), source form): log Z_ε[f] − W_ε[f] is C^∞ in source amplitudes z with |∂_z^α(log Z_ε[f] − W_ε[f])| ≤ C^{|α|} α! r^{−|α|}, for f = Σ_i z_i f_i with disjoint supports, W_ε[f] a local field-independent contact functional (allowed to diverge; it contributes zero to every mixed derivative of order ≥ 2 for disjoint supports, SOURCES_VERIFY item 5(a)).

Which estimates the theorem needs (SOURCES.md §2.5):
- (E14-a) sourced small-field step. NEEDED.
- (E14-b) sourced large-field step and R operation. NEEDED.
- (E14-c) derivative bounds in f (real sources, interpolation). NEEDED.
- (E14-d) fixed-torus convergence = E13. NOT needed (compactness form only).
- (E14-e) RP and symmetry transfer. Done in this file (§2.6, §2.7) without RG input: the symmetries are exact symmetries of μ_ε, and the RG is used only for bounds.
- (E14-f) nontriviality at a fixed layer. Needed only for Theorem 1.4.
- (E14-g) tensor sources (C2). NOT needed.

Status (PLAN.md, 2026-10-27).
- D1, one step at the Gaussian level: SOURCES_D1.md, VERIFIED with corrections (SOURCES_D1_VERIFY.md). c_1 = 1 exactly at one loop; no marginal gradient term (first field-dependent gradient term has dimension 6).
- D2, sourced small-field step: SOURCES_D2.md drafted; SOURCES_D2_VERIFY.md confirms (a), (b), (d) (small-field region only), (f); REJECTS (c) as written; (e) reduced with an assumption (Balaban-step analyticity in the input activities; κ → κ/2 loss to recover).
- D2C, redo of (c): SOURCES_D2C.md drafted (frozen source per localization domain, per-domain axial gauge Lemma A, h ≡ 0); verification in progress (SOURCES_D2C_VERIFY.md has a header only).
- (Hβ) two-loop bound sup Σ_j |B_j′| ≤ ½: SOURCES_HBETA.md reduced it; SOURCES_HBETA_VERIFY.md confirms, conditional on (I) (B_j is Balaban's β_j on the shifted trajectory) and (H-hist) (history-sensitivity bound, column-sum form suffices; Balaban gives no such bound, CMP 109 p. 298).
- D3, sourced large-field step: SOURCES_D3.md is a skeleton (in progress).
- D4 (derivative bounds, E14-c): the interpolation Lemma 7.1 of SOURCES_D2 (f) is confirmed; the full D4 is not started.

Conclusion. (B-S) is a [hypothesis] owned by D2/D2C/D3/D4. D1 is the only verified piece.

### 2.3 (B-N1) Bridge: source-form bounds ⇒ (H-U)

Status: [open]. SOURCES_VERIFY item 5(b) [V]: the source form "does not give |S_n(F)| ≤ Cⁿ n! ‖F‖_{s,n} for F flat on diagonals with a fixed s ... Mark N1 for general F as a gap." This file does not close the gap. It gives a route [derived sketch, unverified], which shows that the gap is removed by the OS index growth sn.

Route.
1. Moments from cumulants. ⟨Π_i ϕ(f_i)⟩ = Σ_{partitions} Π_blocks κ(·). Singleton cumulants vanish (φ is centred). For disjoint supports the source form bounds every cumulant by C^{|B|} |B|! r^{−|B|}, so the moment by C^n n! r^{−n} (Bell-number count absorbed in C^n).
2. Scale-δ tests. A bump of side δ ≤ 1 and amplitude a has |∂^5 f| ~ aδ^{−5}; it lies in F_r if a ≤ c r δ⁵. So n disjoint unit-amplitude scale-δ bumps have |moment| ≤ C^n n! δ^{−5n}. This is lossy (the true size is O(g(δ)^{2n})) but polynomial in δ^{−1}.
3. Whitney decomposition. Split T^{4n} by a smooth dyadic partition in the minimal pair distance ρ(x) := min_{i<j}|x_i − x_j| ∈ [δ, 2δ], δ = 2^{−m} ≥ ε. On each piece cover by cubes of side δ/100; cube tuples are pairwise disjoint. Expand F·(cutoffs) on each cube tuple in a Fourier series; coefficients decay faster than any power because F is smooth; each term is a product of disjointly supported scale-δ bumps. Flatness gives |∂^β F(x)| ≤ C_k ‖F‖_{k+|β|} ρ(x)^k / k!. Count: ≤ C^n δ^{−4n} cube tuples. Derivatives of the cutoffs cost at most (Cn²/δ)^{M}; with M = O(n) this is ≤ C^n (n!)^{c} δ^{−M}.
4. Bound per dyadic scale: ≤ C^n (n!)^{D′} δ^{k − 9n − M} ‖F‖_{k+M}. Choose k = sn − M with s large enough (s ≥ 20 suffices on this count) so the exponent of δ is ≥ n; the sum over dyadic δ ∈ [ε, 1] converges uniformly in ε.
5. Sub-lattice region ρ(x) ≲ ε: ≤ C^n ε^{−4n} plaquette tuples, each moment ≤ 2^n, and |F| ≤ ‖F‖_k ε^k; this is ≤ C^n ‖F‖_{sn} for k = sn ≥ 4n.
Result (if the steps hold): (H-U) with some fixed s and D. What must be checked: uniformity of the source bound in the position of the bumps and in ε (the bound must hold for every K, every placement); the C^∞ (real-source) form of (E14-c) with n-th derivatives for all n; the cutoff-derivative count in step 3.

### 2.4 (B-C) Compactness [proved here, given (H-U)]

Claim. Under (H-U), every sequence ε_m → 0 has a subsequence along which S_{n,ε}(F) converges for every n and every F ∈ D_n. The limit S_n is linear and satisfies |S_n(F)| ≤ σ_n ‖F‖_{sn}.

Proof.
1. Separability. Fix n. C^{sn}(T^{4n}) with ‖·‖_{sn} is a separable Banach space (trigonometric polynomials with rational coefficients are dense). A subset of a separable metric space is separable. So D_n has a countable subset Q_n dense in D_n for ‖·‖_{sn}.
2. Diagonal extraction. Q := ∪_n Q_n × {n} is countable; enumerate it as (F^{(1)}, n_1), (F^{(2)}, n_2), …. For each item the sequence S_{n_t,ε_m}(F^{(t)}) is bounded by σ_{n_t}‖F^{(t)}‖_{sn_t} (H-U), so it has a convergent subsequence (Bolzano–Weierstrass). Extract successively for t = 1, 2, …, and take the diagonal subsequence ε_i. Along ε_i, S_{n,ε_i}(F) converges for every (F, n) ∈ Q.
3. Extension. Let F ∈ D_n and η > 0. Pick G ∈ Q_n with ‖F − G‖_{sn} ≤ η. By (H-U) and linearity of S_{n,ε} on D_n, |S_{n,ε_i}(F) − S_{n,ε_j}(F)| ≤ 2σ_n η + |S_{n,ε_i}(G) − S_{n,ε_j}(G)|. The last term → 0 as i, j → ∞. So the sequence is Cauchy; call the limit S_n(F).
4. Properties. Linearity passes to pointwise limits. |S_n(F)| = lim |S_{n,ε_i}(F)| ≤ σ_n ‖F‖_{sn}. ∎

Remarks. (i) The same subsequence serves all n at once; this matters for (OS2), which mixes different n. (ii) Nothing here needs E13. (iii) The bounded normalizations B_K and c_ε can be included in the extraction (one more bounded real sequence each) if a renormalized normalization is preferred.

### 2.5 (B-REG) Regularity, (OS0) [proved here, given (H-U)]

Bound needed: (H-U) of §1.2, i.e. |S_{n,ε}(F)| ≤ A(n!)^D ‖F‖_{sn} uniformly in ε, for all F ∈ D_n.

Derivation of the OS growth condition. By §2.4 step 4 the limit satisfies |S_n(F)| ≤ σ_n ‖F‖_{sn}, σ_n = A(n!)^D. On the compact torus the Schwartz seminorm |F|_p = max_{|α|≤p} sup (1 + |x|²)^{p/2}|∂^α F| is replaced by ‖F‖_p (the polynomial weights control decay at infinity on R^{dn}; the torus has no infinity, so no weights are needed). This is the form quoted in §1.1: "|Sn (F )| ≤ σn |F |sn with fixed s and σn ≤ A(n!)D". Distribution property: for F ∈ C_c^∞ of the off-diagonal open set, F ∈ D_n, and the bound is continuity in the C^{sn} topology; so S_n is a distribution of order ≤ sn there. ∎

Caveat. OS II is formulated on R^{dn}. On T^{4n} the axioms are used in their torus form (periodic test functions). This is a change of setting, not a consequence of OS II.

### 2.6 (B-TI) Translation and hypercubic invariance, (OS1) [proved here, given (H-U)]

Lattice, exact. Put the origin at a lattice site.
- Translations a ∈ εZ⁴. The map U ↦ U^a, U^a(b) := U(b − a), permutes the links. It preserves the product Haar measure and the Wilson action, and P_p(U^a) = P_{p−a}(U). So ⟨Π_i φ_{p_i + a}⟩_ε = ⟨Π_i φ_{p_i}⟩_ε. Re-indexing the plaquette sum gives S_{n,ε}(F ∘ τ_a^{×n}) = S_{n,ε}(F), with (τ_a x) := x + a. The coupling g_0(ε) is one number, so nothing in μ_ε depends on position.
- Hypercubic R ∈ B_4 (signed permutation matrices, |B_4| = 384). R maps sites to sites, links to links (possibly reversed), plaquettes to plaquettes, and x_{Rp} = R x_p. Define (RU)(b) := U(R^{−1}b), with U(−b) = U(b)^{−1}. Haar measure is invariant under U ↦ U^{−1}, and Re tr W^{−1} = Re tr W for W ∈ SU(2), so A and the measure are invariant and P_{Rp}(RU) = P_p(U). Hence S_{n,ε}(F ∘ R^{×n}) = S_{n,ε}(F). The torus side is the same in all four directions, so R acts on T⁴_ℓ.
- These identities hold at every ε. F ∘ τ_a^{×n} and F ∘ R^{×n} are again in D_n (diagonals are mapped to diagonals). So they pass to the limit along the subsequence of §2.4: S_n(F ∘ R^{×n}) = S_n(F), S_n(F ∘ τ_a^{×n}) = S_n(F) for a ∈ ε_iZ⁴ for all large i.

Continuous translations. Let a ∈ T⁴_ℓ. Pick a_i ∈ ε_iZ⁴ with |a − a_i| ≤ ε_i (componentwise rounding gives |a − a_i| ≤ ε_i√4/2 = ε_i). Write F_a := F ∘ τ_a^{×n}. Mean value theorem along the diagonal direction (a − a_i, …, a − a_i): ‖F_a − F_{a_i}‖_{sn} ≤ 4n|a − a_i| ‖F‖_{sn+1}. Then
  |S_n(F_a) − S_n(F)| ≤ |S_n(F_a) − S_{n,ε_i}(F_a)| + |S_{n,ε_i}(F_a) − S_{n,ε_i}(F_{a_i})| + |S_{n,ε_i}(F_{a_i}) − S_{n,ε_i}(F)| + |S_{n,ε_i}(F) − S_n(F)|.
The first and last terms → 0 by convergence (§2.4). The third is 0 (lattice invariance). The second is ≤ σ_n · 4n ε_i ‖F‖_{sn+1} by (H-U) and linearity. Let i → ∞: S_n(F_a) = S_n(F). ∎

Note. The test F needs one derivative more than (H-U) uses; F is smooth, so ‖F‖_{sn+1} < ∞. Rotations outside B_4 are not available (§4).

### 2.7 (B-RP) Reflection positivity, (OS2)

Lattice theorem [cited; Osterwalder–Seiler, Ann. Phys. 110 (1978) 440–471, reference [36] of Jaffe–Witten; the paper is not in this folder and was not re-read, so no verbatim quote is given]. Content as usually stated: for the Wilson action with compact gauge group and any coupling β ≥ 0, and θ the reflection in a lattice hyperplane that bisects the links orthogonal to it, ⟨Θ(Φ) Φ⟩ ≥ 0 for every function Φ of the link variables in the positive half-lattice, where (ΘΦ)(U) := conj Φ(θU). Jaffe–Witten [V, line 546]: "Reflection positivity holds for the Wilson approximation [36], a major advantage". The template uses the same input [V, o3_continuum.txt line 4902]: "At every cutoff the nearest-neighbour measure is reflection positive across microscopic site and link seams." Proof idea (standard): fix the crossing links to 1 by a gauge transformation (allowed because Φ and ΘΦ below are gauge invariant); the action splits as A_+ + θA_+ + Σ_crossing Re tr(X_p θ(X_p)^*), and exp(β Re tr(XY^*)) is a positive-type kernel (positive combination of characters), which gives a sum of squares. On the periodic lattice there are two fixed planes, x_0 = ε/2 and x_0 = ε/2 + ℓ/2; both are link planes because N_ε is even (ℓ even, §0). Both seams carry crossing plaquettes of the same form. [cited; the periodic two-seam version is standard but its text was not checked here]

Passage to the limit [proved here, given (H-U) and the lattice theorem].
Setup. θ(x_0, x⃗) = (−x_0, x⃗); lattice reflection θ_ε(x) := θ(x) + εe_0 = θ(x − εe_0), with fixed planes x_0 = ε/2, ε/2 + ℓ/2. Positive half Λ_+: links with both ends in {x_0 ∈ {ε, 2ε, …, ℓ/2}}. Fix F_0 ∈ C and F_n ∈ D_n, supp F_n ⊂ T_+^n, 1 ≤ n ≤ N. Supports are compact in the open set, so there is δ > 0 with x_0 ∈ [δ, ℓ/2 − δ] on all supports.
Step 1 (lattice form). For ε < δ/2 every plaquette with centre in a support has all four links in Λ_+. Define Φ := F_0 + Σ_{m=1}^N Σ_{p_1…p_m} F_m(x_{p_1}, …, x_{p_m}) Π_i φ_{p_i}. Φ depends only on Λ_+ links. Since φ_p is real and P_p(θ_εU) = P_{θ_ε p}(U) (reflection reverses orientation; Re tr is invariant), re-indexing gives ΘΦ = conj F_0 + Σ_n Σ_{q} conj F_n(θ_ε x_{q_1}, …, θ_ε x_{q_n}) Π φ_{q_i}. Hence
  0 ≤ ⟨ΘΦ Φ⟩_ε = Σ_{n,m=0}^N S_{n+m,ε}(Θ_εF_n ⊗ F_m),   Θ_εF_n := (ΘF_n) ∘ τ_{−εe_0}^{×n},  S_{0,ε} := 1.
(Argument order inside ΘF_n is immaterial by (OS3).) Each Θ_εF_n ⊗ F_m lies in D_{n+m}: its two factors have supports at distance ≥ 2δ − 2ε > 0, and each factor is flat on its own diagonals.
Step 2 (seam shift). ‖Θ_εF_n ⊗ F_m − ΘF_n ⊗ F_m‖_{s(n+m)} ≤ 2^{s(n+m)} · 4n ε ‖F_n‖_{s(n+m)+1} ‖F_m‖_{s(n+m)} (mean value theorem and Leibniz). By (H-U) the difference of the S_{n+m,ε} values is ≤ σ_{n+m} times this, which → 0 as ε → 0.
Step 3 (limit). Along the subsequence ε_i of §2.4: S_{n+m,ε_i}(ΘF_n ⊗ F_m) → S_{n+m}(ΘF_n ⊗ F_m) for each of the finitely many (n, m). So Σ_{n,m} S_{n+m}(ΘF_n ⊗ F_m) = lim_i Σ_{n,m} S_{n+m,ε_i}(Θ_{ε_i}F_n ⊗ F_m) ≥ 0. ∎

Lemma (positivity of a finite form survives pointwise limits) [proved here]. Let a^{(i)} ∈ C^{(N+1)×(N+1)} with Σ_{n,m} c̄_n c_m a^{(i)}_{nm} ≥ 0 for all c ∈ C^{N+1} and all i, and a^{(i)}_{nm} → a_{nm} for every (n, m). Then Σ c̄_n c_m a_{nm} ≥ 0 for all c. Proof: for fixed c the left side is a finite linear combination of the entries, so it converges to Σ c̄_n c_m a_{nm}; [0, ∞) is closed. ∎ Step 3 is this lemma with a^{(i)}_{nm} := S_{n+m,ε_i}(Θ_{ε_i}F_n ⊗ F_m) (replace F_n by c_n F_n) plus Step 2, which moves the entries from Θ_{ε_i} to Θ without changing the limit.

### 2.8 (OS3) Symmetry and reality [proved here]

S_{n,ε}(F ∘ π) = S_{n,ε}(F): the φ_p are commuting real random variables; re-index the sum. For real F, S_{n,ε}(F) ∈ R. Both identities are linear and pass to the limit. S_0 = 1 by definition. ∎

### 2.9 (B-NT) Nontriviality: what is needed

What "non-Gaussian" can and cannot mean here.
- A two-point function alone never excludes a Gaussian: every positive-definite S_2 is the covariance of some Gaussian generalized field.
- The plaquette density is a composite (≈ ¼ tr F² × ε⁴). Even in the free (Gaussian gauge field) theory its connected n ≥ 3 functions are nonzero (Wick squares are not Gaussian). So "S_n^c ≠ 0 for some n ≥ 3" does not prove interaction.
- The meaningful test is to exclude (a) the zero theory and (b) the free Maxwell composite. The free composite has, at short distance, the scale-invariant form c₀ d^{−8}. Asymptotic freedom predicts c g(d)⁴ d^{−8} with a running coupling.

Free-theory prediction along this sequence. At tree level with the bare coupling, ⟨φ_p φ_{p′}⟩ ≈ c ε⁸ g_0⁴ |x − y|^{−8}. Since g_0(ε)² ≤ (1/g² + β log ε^{−1})^{−1} → 0 by (0.31), the bare-coupling ("Gaussian") prediction for S_2 at fixed separation tends to 0. The claim below is that the true S_2 does not.

Statement (NT) needed [hypothesis; owned by (E14-f), a corollary of (E14-a) at a fixed layer, SOURCES.md §2.5]. There are c > 0 and C such that for all K, all f_1, f_2 ∈ C^∞(T⁴) with disjoint supports at distance ≥ d, d ≥ L ε, and k(d) the layer with L^{k} ε ≤ d < L^{k+1}ε:
  S_{2,ε}(f_1 ⊗ f_2) = c ∫∫ f_1(x) f_2(y) g_{k(|x−y|)}⁴ |x − y|^{−8} dx dy · (1 + R),   |R| ≤ C (g_{k(d)}² + (d/ℓ)²),
with g_k the effective couplings of the trajectory. c is the one-loop (tree-level in the composite) coefficient: c ∝ Σ (free field-strength covariance)², a sum of squares, so c > 0 [derived, standard; the value must be computed in Balaban's normalization (normalized trace, Wilson action (0.2), factor-4 convention fixed in PLAN.md 2026-10-27)].

Derivation of Theorem 1.4 from (NT) and (B-T2) [proved here, given (NT)].
(i) Take f_1, f_2 ≥ 0, not identically 0, supports at distance ≥ d_0 with g² + (d_0/ℓ)² small enough that |R| ≤ ½. By (0.31) at layer k(d) with d ∈ [d_0, ℓ]: 1/g_{k}² ≤ 1/g² + β′ log(L^kε)^{−1} ≤ 1/g² + β′ log(L/d_0), uniformly in ε. So S_{2,ε}(f_1 ⊗ f_2) ≥ ½ c (1/g² + β′ log(L/d_0))^{−2} ∫∫ f_1 f_2 |x−y|^{−8} > 0 uniformly in ε, and the limit inherits the bound.
(ii) For bumps concentrated at separation d → 0 (d ≥ fixed multiple of their width), d⁸S_2 ≤ (1 + C g_{k(d)}²) c (1/g² + β log(1/d))^{−2} → 0 as d → 0, by the lower bound in (0.31) — but d⁸S_2 > 0 by (i). A scale-invariant composite would give a nonzero constant limit. So the limit is neither zero nor the free composite. Only the two-sided bound (0.31) is used; the asymptotic g(d)² ~ (β_∞ log(1/d))^{−1} needs β_j → β_∞ (U3 chain) and is not required.
Caveat. (ii) needs (NT) uniformly down to d ≥ Lε with the remainder controlled by g_{k(d)}², i.e. the fixed-layer expansion at every layer, not only at one fixed coarse layer. If (E14-f) is proved only at a fixed layer j, (i) holds and (ii) holds only in the weaker form "d⁸S_2(d) is bounded between the two (0.31) envelopes for d ∈ [L^{−j}, 1]".

## 3. Dependency table
Global conditions carried by every row: (G1) Balaban's published proofs CMP 95–122 (1984–89) are correct as published; nothing in this campaign re-checks them line by line. (G2) Balaban's inductive assumptions (CMP 109 pp. 263–264) hold with the stated uniformity. (G3) L odd, L > 11, M large, γ small, as Balaban requires; ℓ even (new, §0).

| Block | Content | Status | Files | Verified? | Hypotheses carried |
|---|---|---|---|---|---|
| B-T2 | Theorem 2: trajectory g_0(ε,g) with all g_k ≤ γ and (0.31) | OPEN; reduced to (T2-a1′) via Lemmas D, E | THEOREM2.md §3, §3a, §9; LEMMAS.md D, E; LEMMAS_DE_VERIFY.md | Lemmas D, E: yes (after correction). (T2-a1′): no | continuity of β_{k+1} in the whole history; β_j infinite-volume, K-independent; Balaban's C² remainder bound |
| B-T2.1 | U3 Thm 4.1 (Gaussian RG Hessian → fixed point, rate L^{−2j}) + O5 | PROVED | U3_GAUSSIAN_RG.md, U3_REPAIRS.md | yes (U3_VERIFY.md, U3_REPAIRS_VERIFY.md) | trivial background only |
| B-T2.2 | U3 Lemma 5.1 (soft vertices) | neutral sector PROVED; charged sector OPEN: R1 open, R2 proved (odd M), R3 fails for single-block constraint, composed route needs (A); R4 reduced to (W), (N) | U3_LEMMA51.md, U3_LEMMA51_R23.md | neutral: yes (U3_LEMMA51_VERIFY.md); R23: no (verifier running) | (A) uniform strip analyticity; (W) Ward statement; (N) non-resonance (clean rate only) |
| B-T2.3 | U3 Thm 6.1 / O6 (bordered-matrix invertibility) | one-step PROVED; composed constraint = R1 OPEN | U3_REPAIRS.md | one-step: yes | — |
| B-T2.4 | β_∞ = c log L > 0 (Lemma 4.3 of BETA_FP) | OPEN; skeleton | BETA_FP.md §4, BETA_FP_LEMMA43.md | BETA_FP.md: Prop 1.1 CORRECTED (BETA_FP_VERIFY.md, in progress) | exactness only for the p → 0 coefficient |
| B-T2.5 | U1′: κ_k bounded (Lemma U2′) | OPEN | U1_INFINITE_LATTICE.md, U1_VERIFY.md | partial | — |
| B-T2.6 | certified early steps β_j(0) > 0, j small, actual L | OPEN; float numerics at L ≤ 4 only | numerics/NUMERICS.md, numerics/betafp_*.py | no certificate | L > 11 needed by Balaban; numerics are at L = 2, 3, 4 |
| B-S | sourced Theorem 1 (E14-a,b,c) | OPEN | SOURCES.md §2.5, §4 | list confirmed (SOURCES_VERIFY.md) | B-T2 for the sourced trajectory: sup_x g_k(x;f) ≤ γ |
| B-S.D1 | one sourced step, Gaussian level | PROVED (with corrections) | SOURCES_D1.md | yes (SOURCES_D1_VERIFY.md) | — |
| B-S.D2 | sourced small-field step (E14-a) | DRAFTED; (a),(b),(d),(f) confirmed; (c) rejected; (e) reduced | SOURCES_D2.md | partly (SOURCES_D2_VERIFY.md) | Balaban-step analyticity in input activities; κ → κ/2 recovery; convention (U) |
| B-S.D2C | redo of D2 (c): frozen source per domain, Lemma A, h ≡ 0 | DRAFTED | SOURCES_D2C.md | no (verifier running) | domain hypothesis (D); (Hβ) in three places |
| B-S.Hβ | two-loop bound sup Σ_j abs(B_j′) ≤ ½ | REDUCED | SOURCES_HBETA.md | yes, conditional (SOURCES_HBETA_VERIFY.md) | (I) B_j = Balaban's β_j on shifted trajectory; (H-hist) history-sensitivity column-sum bound (not in Balaban) |
| B-S.D3 | sourced large-field step + R operation (E14-b) | IN PROGRESS (skeleton) | SOURCES_D3.md | no | eleven items listed there |
| B-S.D4 | real-source derivative bounds, all orders (E14-c) | interpolation lemma confirmed; rest NOT STARTED | SOURCES_D2.md (f) | Lemma 7.1: yes | — |
| B-N1 | source form ⇒ (H-U) for F flat on diagonals | OPEN; route sketched (§2.3) | this file | no | uniformity of source bounds in bump position and ε |
| B-C | compactness, diagonal extraction | PROVED here | this file §2.4 | not independently | (H-U) |
| B-REG | (OS0) growth bound for limits | PROVED here | this file §2.5 | not independently | (H-U); torus form of OS II |
| B-TI | (OS1) translations (all of T⁴) + B_4 | PROVED here | this file §2.6 | not independently | (H-U); origin at a site |
| B-RP | (OS2) | lattice: CITED (Osterwalder–Seiler 1978, not re-read); passage: PROVED here | this file §2.7 | not independently | ℓ even; (H-U) |
| OS3 | permutation symmetry, reality | PROVED here | this file §2.8 | not independently | — |
| B-NT | nontriviality (Thm 1.4) | OPEN: needs (NT) = (E14-f); derivation from (NT) PROVED here | SOURCES.md §2.5, this file §2.9 | no | (NT) at every layer for part (ii); c > 0 in Balaban's normalization |
| E13 | full-sequence convergence (uniqueness) | NOT NEEDED for this theorem; OPEN | SOURCES.md (E14-d), D6 | — | — |

Critical path to an unconditional (modulo G1–G3) Theorem 1.3: B-T2.2 (R1, (A), (W)), B-T2.4, B-T2.5, B-T2.6, B-S.D2C, B-S.Hβ ((I), (H-hist)), B-S.D3, B-S.D4, B-N1. The blocks proved in this file are short and are not on the critical path.

## 4. What the theorem does NOT give
Theorem 1.3 gives none of the following. Each needs a separate argument that does not exist in this campaign.

- Rotation invariance. Only the hypercubic group B_4 and the torus translations are proved. Full O(4) is not a symmetry of T⁴_ℓ at all. LEMMAS.md ledger item 5 [V]: on the torus the inclined comparison "gives only the tilted-axis reflection symmetry R_{2θ}s, never a rotation"; the template reaches rotations only after the torus → plane limit, which it controls with its mass gap.
- Infinite volume. ℓ is fixed. The limit T⁴ → R⁴ is not taken. Jaffe–Witten tie it to a volume-uniform gap [V, lines 580–582]: "New ideas are needed to prove the existence of a mass gap that is uniform in the volume of space-time. Such a result presumably would enable the study of the limit as T4 → R4." No public mechanism for this limit without a gap is known to us (LEMMAS.md ledger item 8).
- Mass gap. Not addressed. On a finite torus a "gap" of the transfer matrix is not the Clay mass gap.
- Uniqueness. No uniqueness of the limit point. Different subsequences may give different Schwinger functions. Uniqueness needs E13 (comparison of two trajectories), which Balaban does not have (SOURCES.md (E14-d), ledger item 5). Also not given: uniqueness of the vacuum after reconstruction (no clustering on a torus).
- Also not given: clustering (OS4); a probability measure for the density field (only Schwinger functions on D_n, §1.3); Wilson-loop observables (class C3); the stress tensor and the operator product expansion (class C2 and beyond); independence of the limit from the block-averaging choices of Balaban's RG (only the lattice measure enters S_{n,ε}, but g_0(ε) is chosen through Balaban's flow).
- Status of the whole statement. Even with every block closed, the theorem is conditional on Balaban's published 1984–89 proofs (G1). Under Jaffe–Witten footnote 2 it is a compactness ("weak-existence") result on a torus with the torus forms of OS0–OS3; it is not a solution of the Millennium problem.
