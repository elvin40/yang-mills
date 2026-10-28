IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Architecture of "The canonical massive continuum limit of the two-dimensional O(3) model" (OpenAI, Oct 4 2026, 122 pp)

Purpose: template for reverse-engineering the claimed 4D Yang–Mills existence proof.
Source: /tmp/oai_oct26/o3_continuum.txt (pdftotext of dl2/o3_continuum.pdf); companion /tmp/oai_oct26/o3_pole.txt.
Method: close reading only, no web. Line numbers below refer to o3_continuum.txt. Tags: **[Q]** verbatim quote, **[P]** paraphrase of a stated result, **[INF]** my inference.
Coverage: all of Sections 1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 and the statements of Section 5 read in full. Inside Section 5 I skipped the proof bodies of 5.3–5.5 (lines ~2320–2520, 2580–2720); they are Gaussian-completion and polymer-product estimates that import [28, Appendix C–D].

---

## 1. Main theorems: what is constructed

**Lattice model.** (1.1): periodic square torus Λ, spins q_x ∈ S² ⊂ R³, weight exp(β Σ_{nn} q_x·q_y), normalized area measure, no field, no theta term. μ_β := periodic thermodynamic limit on Z² ("local limit of periodic square tori as their side lengths tend to infinity", line 204). Its existence and uniqueness are proved for all sufficiently large β (Prop 2.1(i), Lemma 13.1).

**Normalization constants (1.2).** C_β(x) = E[q_0^1 q_x^1], χ_β = Σ_x C_β(x) (one-component susceptibility), ξ_β² = (1/(4χ_β)) Σ_x |x|² C_β(x) (second-moment length; the 4 = twice the dimension).

**Canonical field (1.3).** Ψ_β(f) = (ξ_β χ_β)^{-1/2} Σ_{x∈Z²} f(x/ξ_β)·q_x for f ∈ C_c^∞(R²;R³). Fields live on the plane R², not a torus. Component Schwinger distributions = moment measures of these smeared spins.

**Theorem 1.1 (Canonical continuum limit)** [P, lines 237–247]: for the model (1.1), μ_β exists for all large β, χ_β, ξ_β finite and positive, ξ_β → ∞. Through ALL real β → ∞ (no subsequence): (i) every finite list of Ψ_β(f) converges jointly in law and in all joint moments to one common limiting hierarchy; (ii) all Schwinger distributions converge in the strong topology of S'((R²)^n); (iii) the limit has susceptibility and second-moment length equal to one, and it equals the hierarchy of Theorem 1.2 after the unique positive length and field rescaling that imposes these two normalizations.

"Canonical" means: the only freedom in a continuum limit is a constant length unit and a constant field unit; these two are fixed intrinsically by the lattice via χ_β and ξ_β (lines 249–251: "The normalization removes the freedom to choose constant physical length and field units.").

**Theorem 1.2 (construction at a prescribed physical scale)** [P, lines 258–285]: there exist dyadic L > 1, H > 0, bare couplings β_N and field factors B_N with a_N = L^{-N}, β_N = H + (log L/2π) N + O(log(N+1)) (1.4), such that the fields ϕ_N(f) = B_N a_N² Σ f(a_N x) q_x under μ_{β_N} converge (joint law, all moments, S'); the limit is Euclidean invariant, O(3) invariant, reflection positive, symmetric, clustering, obeys |S_n(F)| ≤ C^n n! sup (1+|x|²)^{2n}|F|, reconstructs a local unitary relativistic 1+1 theory with unique vacuum, nonzero vacuum complement, H_phys ≥ m > 0 on Ω^⊥, and a nonzero connected 4-point function on separated time supports. "The trajectory is selected by fixing its terminal kinetic coupling to H at a fixed physical block length." (line 285). This is a renormalization condition (a Λ-parameter scheme), not an intrinsic normalization.

**Corollary 1.3**: all physical properties pass to the canonical hierarchy (dilation + field constant; H_can = ℓ_sh H_phys, line 6626).

**How uniqueness of the limit (no subsequence) is obtained** [P, Section 15]:
1. Every large β is written β = ϑ_N + s with ϑ_N an explicit reference sequence (ϑ_j = H_j + c_log log(H_j/H), H_j = H + γ j, γ = log L/2π) and a bounded "bare offset" s ∈ [0, 2γ] ⊂ I = (−R, R) (lines 6584–6588).
2. For every limiting offset s ∈ I a continuum hierarchy F_s exists (Prop 14.4); its canonical normalization G_s exists because m(s) = susceptibility and ℓ(s) = length are finite and positive (Prop 14.6, needs the two-point tails of Lemma 14.5, i.e. the mass gap).
3. Two descriptions of the same microscopic field give two functional relations (Prop 15.1): an extra ordinary blocking step shifts s by −γ with length factor L^{-1}: G_{s−γ} = G_s, ℓ(s−γ) = L^{-1} ℓ(s) (15.1); an inclined first blocking (Pythagorean rotation O_± with cos ϑ = 3/5) shifts s by d with length factor 5^{-1}: ℓ(s+d) = 5^{-1} ℓ(s), G_{s+d} = (O_+^{-1})_* G_s = (O_−^{-1})_* G_s (15.2).
4. Lemma 15.2: if d/γ = p/q then 5^{-q} = L^p, impossible by unique factorization (L a power of 2). So Zγ + Zd is dense in R; G_s is continuous in s; hence G_s is constant. [Q, lines 6569–6578] "If d/γ = p/q with integers p and q > 0, then iterating the length relations gives 5^{-q} ℓ̃(x) = ℓ̃(x+qd) = ℓ̃(x+pγ) = L^p ℓ̃(x). Since ℓ̃(x) > 0, this would imply 5^{-q} = L^p, contradicting unique prime factorization. Thus d/γ is irrational. The subgroup Zγ + Zd is dense in R."
5. Full convergence: any sequence β_k → ∞ has a subsequence with convergent offsets; along it the limit is G; so every subsequence has a sub-subsequence converging to the same G; hence full convergence (lines 6588–6601). Technique: compactness + identification of every subsequential limit (not a priori uniqueness).

**[INF]** The "no subsequence" claim is therefore: tightness (factorial moment bounds) + all subsequential limits coincide, where coincidence comes from a one-parameter family being shown constant by an arithmetic incommensurability trick. Rotation invariance is a by-product of the same inclined blocking (Section 3 below).

---

## 2. Proof architecture: dependency chain

Notation: L fixed large dyadic block factor; H large terminal coupling; H_j = H + γ j, γ = log L/2π (one-loop asymptotic-freedom drift for O(3): β-function coefficient (N−2)/2π = 1/2π); layer j has coupling b_j ∈ [H_j/2, 2H_j]; a run of depth N goes from the bare lattice (layer N, coupling β_N ≈ H + γN) to the terminal layer 0 (coupling ≈ H, block of physical side 1).

### Part I — construction at a fixed physical scale (Theorem 1.2)

**(A) Prop 2.1 (Preliminary mixing and rectangular doubling)** — technique: Ward identities / complex rotations (McBryan–Spencer, Aizenman–Simon style), pinned-cell "stiffness" iteration, Ginibre/Griffiths inequalities and FKG association in an angle decomposition of S², disagreement percolation. Statement [P, lines 409–421]: there are b_0, C, c, p, η > 0 such that with X(b) = C exp((4π − η) b), uniformly over all bond strengths 0 ≤ β_e ≤ b (including zero): (i) on every unpinned torus with sides ≥ C X(b) and on every finite free subgraph, |Cov(F,G)| ≤ C(1+b+|A|+|A'|+d)^p L(F)L(G) e^{−c d/X(b)} (2.2); the periodic infinite-plane limit exists and is unique; (ii) 0 ≤ 4 log Z_b(n,w) − log Z_b(2n,2w) ≤ C(1+b+n+w)^p e^{−c min(n,w)/X(b)} (2.3). The strict saving η comes from Lemma 2.3 (one-site transverse fluctuation in the first coarse tile) plus Lemma 2.2 (stiffness iteration with coefficient 4π). [Q, lines 396–397] "Its exponential scale need not be sharp. The strict inequality in the exponent below is, however, essential to the later comparison of effective densities."

**(B) Sections 3–4: retained density class and free kernels** — technique: Balaban/Kadanoff–Wilson block spin with exact Gaussian observation kernel (3.3) (one retained spin V_Y ∈ S² per L×L block, kernel ∝ exp(−b|V_Y − m̂_Y|²/2), exactly preserves Z), scalar precision recursion K_{h+1} = 1 − Q(K_h + Q*Q)^{-1}Q* (3.4), positive edge-lift K_h = c_0 d*d + d* ℓ_h* ℓ_h d (3.5). Prop 4.3: uniform ellipticity/analyticity of the free kernels, and history contraction ‖K_{h1} − K_{h2}‖ ≤ C (A_0/L²)^r after r common steps (4.3). Prop 4.4: positive isometric completion M*M + N*N = 1 for ordinary and inclined block geometries. The density class (3.29): exp{v|Λ| − b E_{h,t}(q)} Ξ(q) exp{−Σ canonical polynomial slots (degrees 4, 2, 6, 4, 2 in tangent coordinates) − Σ regular errors f_X}, Ξ = mandatory covering (polymer) sum over configurations with large bond chords (|q_x − q_y| > t_j). Caps: error cap δ_j = H_j^{−2.05}, gas cap w_j = exp(−p_j^{1/4}).

**(C) Theorem 5.1 (Exact step and comparison)** — technique: sector decomposition (small/large field), ambient Gaussian completion in R³, polymer/cluster expansion (Penrose tree-graph, Fernández–Procacci), Taylor comparison with canonical coefficients, affine-Hessian normalization. Statement [P, lines 2165–2191]: one block observation sends an admitted density at layer j to one of the same form at layer j−1, with coupling b' = b + α_h(P) + κ_h(P)/b + Δ, |Δ| ≤ C_L H_j^{−1.05} (5.1); for two inputs with discrepancy u and coupling difference λ, u' ≤ q u + C_L poly(H_j) ε_h + C_L (log H_j)^C |λ|/H_j with q < L^{−2+υ} (5.2). Key new estimate: Lemma 5.6 / Lemma 5.7 — contraction of the remainder by C/L² + o_H(1) (instead of L^{−1} in [28]) using tangent inversion in O(2) and spatial inversion to cancel cubic and linear–quadratic terms.

**(D) Section 6: shooting** — Lemma 6.1: α_∞ = −γ = −log L/2π (computed from finite-volume Laplace coefficients, [28, Eq (6.18)]). Prop 6.2 (Admitted trajectories with prescribed endpoint): for every N there is β_N with all N steps in band and terminal b_0 = H; β_N = H + γN + O(log(2+N)) (6.5); proof by continuity + intermediate value (no monotonicity, no uniqueness of the shooting value). Prop 6.3 (Endpoint matching): two runs of depths N ≥ K aligned on the last K layers have endpoint densities with ‖X_1 − X_2‖_∞ ≤ D_H v δ_K, δ_K = L^{−(2−υ)K}, and activity differences ≤ D_H δ_K (6.9). Also: endpoint laws are strictly positive and retain link reflection positivity at every block seam on axis tori (lines 3257–3264).

**(E) Prop 7.1 (Integrated covering comparison)** — technique: reflection positivity + chessboard estimate (FILS) for exponential moments of kinetic rows (Lemma 7.3), local replacement of rough regions by smooth fillings at an energy gain (Lemma 7.4), exact covering identities organized into forests (7.12)–(7.13). Statement: (1/Z)∫ e^X |Ξ̃ − Ξ| ≤ exp(Σ_λ d_λ e^{2 s_λ}) − 1 (7.2), uniform in cutoff and period. Consequence 7.6: ratio of partition functions → 1 when v δ_K → 0. Cor 7.5 (Terminal alignment): μ{|q_x − q_y| > t/C} ≤ e^{−c H t²} (7.16) via chessboard.

**(F) Section 8: trace estimates uniform in the cutoff** — technique: lattice reflection positivity + transfer matrix + partition-function doubling test.
- Prop 8.1 (A uniform reference-box test): there exist K_0, M_0 with Δ_{β_N}(n,w) := 4 log Z(n,w) − log Z(2n,2w) ≤ 2^{−10} for (n,w) = (u_1,u_2) M_0 L^N, all N ≥ K_0 (8.2). Proof: at depth K the preliminary (A) gives Δ_{β_K} → 0 on boxes of side L^{(2−χ)K} ≫ X(β_K) = L^{(2−η/2π)K}; (D)+(E) transfer this to every finer N at the same physical box with error C_H m_K² δ_K → 0.
- Lemma 8.2 / Prop 8.3 (Rectangular doubling criterion): if Δ_β(n,w) ≤ 2^{−10} then Δ_β(2^k n, 2^k w) ≤ 64^{−1} 2^{−2^k} and λ_2(2^k n)/λ_1(2^k n) ≤ e^{−(log 2)/n} (8.8)–(8.9). Uses only positivity and trace-class of the transfer operator K_w (8.4) and the two-direction identities (8.7).
- Theorem 8.4 (Uniform volume comparison and slab decorrelation): |μ_{β_N;n,w}(F) − ω_{β_N}(F)| ≤ C‖F‖_∞ e^{−c 2^k} (8.11) and |Cov_{ω_{β_N}}(F,G)| ≤ ‖F‖‖G‖ e^{−c d/(M_0 L^N)} (8.12), c = log 2, uniform in N.
- Cor 8.5 (A uniform physical gap): spec T_N|_{Ω^⊥} ⊂ [0, e^{−(log 2)/(M_0 L^N)}]; physical energy scale (1/a_N)(log 2)/(M_0 L^N) = (log 2)/M_0 > 0 (8.13).

**(G) Section 9: exact renormalization of spin sources** — Prop 9.1: carry exp(Σ z_x·q_x) exactly through the block step; z_x = z'_{[x]}/(l² c_j), |c_j − 1| ≤ C_L H_j^{−1/10} (9.2); source lists contract (9.3). Field normalization B_N = Π_{j=1}^N c_{j,N}^{-1} (9.7), with |log B_N| = O(1 + N^{9/10}). Cor 9.2: source convergence at a fixed bottom layer. Prop 9.3: B_N^*/B_N (inclined vs ordinary) bounded uniformly.

**(H) Section 10: continuum and infinite-volume limits** — Prop 10.1 (Moment majorants): component moment measures are nonnegative (power-series expansion of e^{β q·q'}, Griffiths-type), and S_{n,N}(Q_1×…×Q_n) ≤ C^n n! on unit boxes, uniform in N and axis torus (10.3); exponential moments of cell sums via sources + integrated gas comparison (10.5). Prop 10.2 (Continuum limit): joint moments converge on fixed tori (via sources at a fixed coarse layer + continuity of tests), laws determined by moments; plane limit identified by (10.8) using (8.11); the two regulator orientations 1 and O_+² give identical plane laws. Prop 10.3 (Euclidean regularity): |S_n^α(F)| ≤ C^n n! sup (1+|x|²)^{2n}|F| (10.9), permutation symmetry, O(3) covariance, full Euclidean invariance. Lemma 10.4 (Boundary strips): box indicators are admissible tests.

**(I) Section 11: reconstruction** — Lemma 11.1 (RP, inherited), Prop 11.2 (polynomial slab clustering with common exponent m = μ/2), Prop 11.3 (OS reconstruction with linear growth condition [30, §IV.1]), Prop 11.4 (gap H_phys ≥ m on Ω^⊥), Prop 11.5 (nontriviality: separated fourth cumulant ≠ 0 and Ω^⊥ ≠ {0}).

### Part II — canonical scaling along all diverging couplings (Theorem 1.1)

**(J) Section 12** — Prop 12.1 (step estimates for trajectory types r, +, −; canonical increments α_h^P → −γ, κ_h^P → κ_∞ exponentially, (12.5)); Lemma 12.2 (summable sensitivity of the kinetic error: |Δ_{2,j} − Δ_{1,j}| ≤ C_L H_j^{−1.01}(u_j + |λ_j|) + …, (12.8) — the new ingredient that lets a marginal coupling be matched over arbitrarily many steps); Prop 12.3 (every β = ϑ_N + s with |s| ≤ R' gives an admitted trajectory, first-exit argument); Lemma 12.4 (retuning: for every K there is a depth-K run with the same terminal coupling, intermediate value theorem); Prop 12.5 (fixed-layer matching: runs with (s_2 + A^{P_2}) − (s_1 + A^{P_1}) → 0 have u_j, λ_j → 0 at every fixed layer).

**(K) Section 13** — Lemma 13.1 (finite-coupling moment positivity, C_β(e) ≥ (β/9)e^{−7β}, finiteness of χ_β, ξ_β at fixed β from Prop 2.1); Lemma 13.2, Prop 13.3 (endpoint comparison for a common terminal coupling in the band [H/2, 2H]); Lemma 13.4 (reference-box test uniform in the offset, via retuning); Prop 13.5 (volume comparison and slab decay (13.9) uniform in offset); Lemma 13.6 (inclined periods: the tilted square torus of side M_k is the axis torus with circumference 25 M_k L^N, height M_k L^N and spatial shift 7 M_k L^N).

**(L) Section 14** — Prop 14.1, Lemma 14.2 (sources along offset trajectories), Lemma 14.3 (uniform moment bounds), Prop 14.4 (limits F_s at fixed offsets; inclined limit at s equals F_{s+d}, (14.13)), Lemma 14.5 (uniform two-point tails S_2^cut(Q×Q') ≤ C e^{−cT} from (13.9)), Prop 14.6 (m(s), ℓ(s) finite positive; canonical normalization (14.22); continuity in s), Lemma 14.7 (normalization of the shooting hierarchy).

**(M) Section 15** — Prop 15.1 (depth and inclination relations (15.1)–(15.2)), Lemma 15.2 (two scale relations force constancy), proof of Theorem 1.1 and Cor 1.3.

### Dependency summary (what gates what)

```
Prop 2.1 (lattice mixing, rate exp((4π−η)β))  ──┐
Thm 5.1 + Prop 6.2/6.3 (RG endpoint matching)   ──┼─> Prop 8.1 (doubling defect small at one physical box, all N)
Prop 7.1 (integrated comparison, RP chessboard) ──┘            │
                                                    Prop 8.3 (RP transfer doubling recursion)
                                                               │
                                     Thm 8.4 / Cor 8.5 (torus→plane uniform in N; physical gap (log 2)/M_0)
                                                               │
Prop 9.1 (sources) + Prop 10.1 (moments) ──> Prop 10.2 (continuum limit, fixed torus then plane)
                                                               │
                         Prop 10.3 (E0,E1) + Lemma 11.1 (E2) + Prop 11.2 (E4 via 8.12) ──> Prop 11.3 (OS) ──> 11.4 (gap), 11.5 (nontrivial)
Part II: 12.2 sensitivity ──> 12.5 matching ──> 13.4/13.5 (uniform in offset) ──> 14.5 tails ──> 14.6 canonical ──> 15.2 uniqueness
```

---

## 3. Euclidean (rotation) invariance from a square lattice

Route: **comparison of two regulator orientations through inclined first blockings + irrationality of a Pythagorean angle + continuity on Schwartz space.** Not Ornstein–Zernike, not a Ward identity, not characterization/uniqueness in Part I (in Part II the same relation (15.2) is reused inside the uniqueness lemma).

Mechanism [P, Section 4.1, lines 1604–1616]: O_+ = (1/5)[[3, −4],[4, 3]], O_− = O_+^T. The inclined cell B_Y^O = c + L_* O Y + O[−L_*/2, L_*/2)² ∩ Z², L_* = 5L, c = (1/2, 1/2). Lemma 4.1: these cells partition Z², have exactly L_*² sites, no fine sites on their boundaries, quarter-turn symmetric, and reflection in a fine axis interchanges O_+ and O_−. So one can start a run with a rotated-by-ϑ block lattice (cos ϑ = 3/5), then continue with ordinary blocks. After the first step the free precisions of the two histories approach each other at rate (A_0/L²)^r (Prop 4.3, (4.3)).

[Q, Prop 10.2 proof, lines 4699–4707] "Consider the fixed tilted square torus of side 5M and axes O_+ from Section 8. Put one microscopic regulator in the standard axes and the other in axes O_+². In their respective axes use the inclined first steps O_+ and O_− = O_+^{−1}. Their frames then agree, because O_+² O_− = O_+; Figure 2 shows these orientations. Both regulators have the same β_N, a_N, B_N and compatible periods."

[Q, lines 4716–4731] "Reflection covariance of the two inclined prescriptions makes the multipliers in Equation (10.7) identical. … Apply Equation (6.8) and Corollary 9.2 after the first step. At the fixed bottom layer, their generating functions differ by a quantity tending to zero uniformly near the source origin … The same continuous-test approximation therefore proves equality of the limiting moments, and hence of the finite-dimensional laws, on this fixed tilted torus. This step uses only the moment bounds for a fixed tilted size."

[Q, Prop 10.3 proof, lines 4807–4813] "Let θ be the angle of O_+, so cos θ = 3/5. Rotating the entire regulator rotates the arguments of its moment functions. The last assertion of Proposition 10.2 therefore gives invariance under rotation by 2θ. This angle generates a dense subgroup of the circle. Indeed, if θ/π were rational, then e^{iθ} would be a root of unity and 2 cos θ = 6/5 would be a rational algebraic integer, hence an integer, a contradiction. The same irrationality holds for 2θ/(2π). Rotations act continuously on Schwartz test space; Equation (10.9) consequently extends this dense-subgroup invariance to all rotations. Together with reflections and translations this is Euclidean invariance."

[Q, Section 1.4, lines 350–352] "Two reflected inclined first blockings compare regulator orientations through a common coarse frame. The resulting rotation has angle equal to an irrational multiple of π. Together with continuity, it gives full Euclidean rotation invariance."

Ingredients that make this work: (a) the RG endpoint comparison (6.8)/(6.9) is history-robust: two runs that differ only in the first blocking step end at the same effective density up to L^{−(2−υ)K}; (b) the bulk prescriptions are reflection-covariant, so the two mirror inclinations have identical scalar data (same couplings, same c_j, same B_N^*), which is what lets the frames be identified; (c) the plane limit must be reached through tilted tori, which is why Section 8.5 / Lemma 13.6 represent the tilted torus as an axis torus with a spatial shift (closing time with a translation, handled in Theorem 8.4). Translations, reflections and quarter turns are inherited from the lattice directly (line 4802–4806).

**[INF]** This is a purely RG-internal argument: rotation invariance = "the continuum limit does not depend on the orientation of the regulator", proved by running two regulators of different orientation into a common coarse frame and showing the RG forgets the first step. It is generic in principle: it needs a lattice rotation with rational entries (Pythagorean), an exact block map for the rotated cells, and history contraction of the free kernels.

---

## 4. Nontriviality (non-Gaussianity)

**Prop 11.5** [P, lines 5112–5122]: for large fixed H there are four smooth tests f_1..f_4 with strictly disjoint ordered time ranges such that the connected 4-point function (11.7) of ϕ^1 is nonzero; Ω^⊥ ≠ {0}; the spectral bottom on Ω^⊥ is positive and finite.

Mechanism [Q, lines 5123–5178, selected]: "Choose four distinct unit terminal cells at fixed bounded distances, with gaps between their closed time intervals. … Let X_{i,N} be the first component of the renormalized field sum over the descendants of cell i. The local source estimate of Proposition 9.1 and the comparison in Equation (10.4) give, on a fixed complex neighbourhood of the origin, E exp(Σ z_i X_{i,N}) = E_μ exp(Σ z_i V^1_{Y_i}) + o_H(1) (11.8) … the alignment estimate (7.16) controls the spins at these finitely many sites in mean square. If a nearest-neighbour path of length ℓ joins Y_i to Y_1, then E_μ|V_{Y_i} − V_{Y_1}|² ≤ ℓ Σ E_μ r_e² ≤ ℓ²(Ct² + 4e^{−cHt²}) = o_H(1). … Internal O(3) invariance makes each V_Y uniformly distributed on S². If U has this law, then E U^1 = 0, E(U^1)² = 1/3, E(U^1)⁴ = 1/5. … E[X_{i,N} X_{j,N}] = 1/3 + o_H(1), E Π X_{i,N} = 1/5 + o_H(1) (11.9). … Their fourth cumulant is E Π X_i − Σ_{pairings} E[X_i X_j]E[X_k X_l] = 1/5 − 3(1/3)² + o_H(1) = −2/15 + o_H(1) (11.10). Choose H sufficiently large that this quantity is nonzero."

So non-Gaussianity is a direct consequence of the compact target: at the terminal block scale (physical length 1, coupling H large) the four block spins are almost one common random unit vector, uniformly distributed on S², whose single component has kurtosis 9/5 ≠ 3. The renormalized field sums X_i are identified with the block spins V_Y by the exact source transport (Prop 9.1) up to o_H(1). The nonzero vacuum complement uses the same two-cell computation across the time-zero seam: ‖[ϕ^1(f)]‖² = E ϕ^1(θf)ϕ^1(f) = 1/3 + o_H(1) > 0 (lines 5186–5195).

**Note.** Nontriviality is NOT proved by matching short-distance behavior to asymptotic freedom or an OPE. The paper proves only: non-Wick 4-point function, a gap, and a nonzero one-field state. Nothing is claimed about the ultraviolet behavior of the limiting Schwinger functions.

---

## 5. OS axioms E0–E4: inherited vs needing the limit

| Axiom | Where | Technique | Inherited from lattice? |
|---|---|---|---|
| E0 temperedness / linear growth (|S_n(F)| ≤ σ_n |F|_{s n}, s = 4, σ_n ≤ C^n n!) | Prop 10.3 (10.9); Prop 11.3 proof lines 4987–4997 | unit-box moment bounds C^n n! (Prop 10.1) + nonnegativity of component moment measures (Griffiths-type power-series positivity) to sum over boxes with weights (1+|x|²)^{−2} | Needs uniform-in-cutoff moment bounds; these come from exact sources (Prop 9.1) + integrated gas comparison (Prop 7.1, uses RP chessboard) at fixed D cells; extension to all boxes uses moment positivity (lattice property that passes to the limit) |
| E1 Euclidean invariance | Prop 10.3 | translations/reflections/quarter turns: lattice symmetries + continuity of tests; rotations: inclined blockings + irrational angle + density (Section 3 above) | translations/reflections/C_4 inherited; rotations need the RG comparison of orientations (limit property) |
| E2 reflection positivity | Lemma 11.1 | nearest-neighbour measure is RP across microscopic site and link seams; seam within O(a_N) of {x_0 = 0}; moment convergence | inherited (lattice RP + convergence) |
| E3 symmetry (permutation) | Prop 10.3 | commuting classical variables | inherited |
| E4 clustering | Prop 11.2 (11.2) | lattice slab covariance bound (8.12) with fixed physical rate μ > 0 uniform in N (from Cor 8.5 / Theorem 8.4), applied to truncated fields T_M(X), truncation error from exponential moments (11.3); M = 1 + R² gives common exponent m = μ/2; arbitrary directions via rotation invariance; Schwartz tests via product-test density | needs the uniform lattice mass gap in physical units + rotation invariance |
| reality, S_0 = 1 | Lemma 11.1 | moment limits | inherited |
| unique vacuum | Prop 11.3 | clustering ⇒ uniqueness in OS reconstruction | needs E4 |

The reconstruction is applied to a Hermitian multiplet of three scalar fields with the linear-growth form of OS II [30, §IV.1]; coincidence-flat tests; density of time-ordered product states is checked by hand in Prop 11.4's proof using rotation invariance to kill equal-time surfaces (lines 5028–5078).

---

## 6. Mass gap transfer and the order of limits

Lattice side (uniform in cutoff): Cor 8.5 gives spec T_N|_{Ω^⊥} ⊂ [0, e^{−(log 2)/(M_0 L^N)}], i.e. physical gap ≥ (log 2)/M_0 at every N ≥ K_0 (8.13). Equivalent covariance form (8.12): |Cov(F,G)| ≤ ‖F‖‖G‖ e^{−(log 2) d/(M_0 L^N)} for bounded local observables in slabs separated by d lattice steps, in the periodic plane state ω_{β_N}.

Continuum side: Prop 11.2 turns (8.12) into Cov(F, τ_s G) ≤ C_{F,G} e^{−mR} for polynomials in smeared fields with one common exponent m = μ/2 (truncation trick, lines 4940–4963). Prop 11.4 then: for centered v = [F] − E[F]Ω, 0 ≤ ⟨v, e^{−sH}v⟩ ≤ C_v e^{−ms} (11.6); positive spectral measure in [0, m') would give ≥ e^{−sm'} ν_v([0,m')), contradiction; density of such v in Ω^⊥ and boundedness of spectral projections give H_phys ≥ m on all of Ω^⊥ (lines 5098–5106). The same spectral-measure argument is used on the lattice in Cor 8.5 ("as in [28, Proposition 2.2]").

Order of limits: (1) At each fixed cutoff N (fixed β_N), the periodic infinite-plane state exists and is unique by the preliminary estimate (Prop 2.1(i), non-uniform in N). (2) Theorem 8.4 (8.11) bounds torus(k) vs plane by C e^{−c 2^k} uniformly in N ≥ K_0. (3) Prop 10.2 proves the continuum limit first on each fixed physical torus (sources at a fixed coarse layer, no gap needed), then identifies the plane limit via (10.8); it states the plane limit "is obtained by taking the continuum limit on the axis tori and then their exhaustion, or by taking any simultaneous sequence of cutoffs and axis tori" (lines 4624–4627). So: infinite volume on the lattice is available at each N, and the uniform torus→plane control (which IS the mass gap statement) lets the two limits be exchanged.

[Q, lines 4052–4054] "The constants and the physical volume threshold have been fixed before removing the cutoff. Continuum convergence is established in Section 10; Section 11 then transfers this cutoff-independent positive scale to the continuum Hamiltonian."

Where the gap is used beyond E4: Lemma 14.5 (two-point tails) ⇒ finiteness of susceptibility and length ⇒ canonical normalization (Prop 14.6) ⇒ uniqueness (Section 15). Without the gap, Theorem 1.1 as stated cannot even be formulated.

---

## 7. The exponential-decay input and how hard the construction depends on it

**What the Lean lemma says** (lean/docs/215.md, read verbatim at /tmp/oai_oct26/lean215.md): for the 2D classical O(n) model, n ≥ 3, "For each interaction bound β > 0, constants A and m > 0 work for every finite square-lattice subgraph with free boundary and nonnegative edge strengths at most β: the correlation between sites x, y is at most A e^{−m|x−y|}. The infinite-volume limit and the separate O(4) spectral-gap claim are not included." The source paper is "Exponential decay in two-dimensional classical O(n) models" (Sept 23 2026), which the continuum paper does NOT cite; the continuum paper instead adapts the pinned-cell argument of [28] = "Sharp mass bounds for the two-dimensional O(4) model" (Sept 23 2026).

**What the construction actually needs (Prop 2.1):** more than the Lean lemma in three ways:
1. A quantitative rate: mixing length X(b) ≤ C exp((4π − η) b) with a strict η > 0. The Lean statement has m(β) > 0 with no rate.
2. The rectangular doubling estimate (2.3) for partition functions and uniqueness of the periodic plane limit.
3. Uniformity under bond deletion/weakening (used for the periodic-limit and volume comparisons; the Lean statement does have "nonnegative edge strengths at most β", so this part matches).

**Why the rate matters** [Q, Section 1.4, lines 339–346]: "at a reference depth K, the preliminary mixing length in physical units is a_K X(β_K) = L^{(1−η/(2π))K+o(K)}. Matching the effective densities to finer cutoffs is controlled by the error parameter C_H M² L^{−(2−υ)K} in a physical square of side M, where υ > 0 can be chosen arbitrarily small. Thus M can be much larger than the mixing length while this error tends to zero. Fixing one sufficiently large K fixes a successful physical square once and for all; its decay criterion passes to every finer cutoff." And in Prop 8.1's proof [Q, lines 3790–3796]: "X(β_K) ≤ C_H K^{C_H} L^{(2−η/(2π))K}. The shorter side of a reference rectangle (u_1,u_2) m_K L^K is a fixed positive multiple of L^{(2−χ)K}. Its ratio to X(β_K) therefore grows exponentially in K. The preliminary doubling estimate consequently implies max Δ_{β_K} → 0." The constraints are (8.3): 2(1−χ) < 2 − υ and 2 − χ > (4π − η)/2π. So the box side (in lattice units) must satisfy X(β_K) ≪ side ≪ L^{(2−υ/2)K} ≈ exp((4π − υ')β_K): the preliminary mixing length must grow strictly slower than exp(4πβ), i.e. slower than the square of the physical correlation length exp(2πβ). A mere "m(β) > 0 for each β" does not suffice; a bound like exp(Cβ²) would not suffice either.

**Is the whole construction gated on a lattice mass gap uniform in physical units?** Yes, but in a specific layered way:
- The input is NOT a uniform-in-cutoff gap. The input is a non-uniform, quantitatively controlled decay at one reference coupling β_{K_0}.
- The uniform-in-cutoff physical gap (Cor 8.5) is an OUTPUT, produced by (preliminary decay at K_0) + (RG endpoint matching, Prop 6.3/13.3) + (integrated comparison, Prop 7.1) + (RP transfer doubling, Prop 8.3).
- Everything downstream of Section 8 that concerns the plane (infinite volume), E4, the Hamiltonian gap, canonical normalization and Theorem 1.1's uniqueness depends on Cor 8.5 / Prop 13.5.
- What does NOT need the gap: the continuum limit on a FIXED physical torus (Prop 10.2 first paragraph; Prop 10.1's fixed-tilted-torus moment bounds "use no reflection positivity of the tilted torus", lines 4602–4608 and 6164–6173), the equality of regulator orientations on a fixed tilted torus (lines 4699–4732), reflection positivity, symmetry, and the nontriviality computation on admitted axis tori (Prop 11.5 uses uniform-in-N estimates on axis tori and only then passes to the plane).

**Therefore: this template REQUIRES a lattice mass gap in physical units** (uniform in the cutoff) for the infinite-volume limit, for E4, for the Hamiltonian gap, and for the canonical normalization/uniqueness in Theorem 1.1. The paper derives that gap from a weaker, non-uniform lattice decay estimate plus RG; but some quantitative lattice decay estimate at large β on boxes larger than the preliminary mixing length is indispensable. For 4D Yang–Mills no mass gap is claimed, and no lattice decay estimate with a rate controlled relative to the asymptotic-freedom scale exists at large β; so the YM proof must either (a) stay in finite volume (a fixed physical torus T⁴), where this template's RG part gives a continuum limit without any gap, or (b) use a different infinite-volume mechanism that is absent from this template.

---

## 8. 2D-specific / O(3)-specific steps vs generic steps

**Would NOT transfer to 4D non-abelian gauge theory (spin-model or 2D specific):**
1. Prop 2.1 entirely: Ward identities for global O(3) rotations with position-dependent profiles (2.8)–(2.10) (McBryan–Spencer / Aizenman–Simon complex rotation), pinned-cell stiffness iteration with the 2D-specific coefficient 4π from the log-Dirichlet energy of a 2D cutoff (Lemma 2.3: "cutoff energy (2π + o(1))/log S"), decomposition q = (cos α z, sin α w) into XY and Ising sectors with Ginibre and FKG inequalities (Section 2.5), disagreement percolation. The "2D logarithm" is what makes the mixing length exp(O(β)); in 4D YM the analogous Ward-identity bounds are not available and there is no Mermin–Wagner mechanism.
2. Nonnegativity of all component moments (Prop 10.1, Lemma 13.1: power-series expansion of e^{β q·q'} termwise nonnegative). Used to (i) interpret Schwinger functions as Radon measures, (ii) extend unit-cell bounds to arbitrary boxes and to the temperedness bound (10.9), (iii) boundary strips Lemma 10.4, (iv) two-point tails Lemma 14.5 and the factorization (14.17). Gauge-invariant observables (Wilson loops, Tr F²) have no such Griffiths positivity in general.
3. The nontriviality computation (Prop 11.5) relies on the target being S² and on O(3) invariance (uniform distribution of a block spin: moments 1/3, 1/5). A gauge analogue needs a different observable.
4. Canonical normalization by susceptibility and second-moment correlation length of a spin two-point function (needs a local vector field with finite positive χ and ξ; needs the gap).
5. One-loop drift γ = log L/2π and the dimension-two contraction via O(2) tangent inversion (Lemma 5.6) are O(N)/2D-specific numbers, though the structure (marginal coupling, exact canonical coefficient map P ↦ C_h(P)) is generic.
6. The transfer-matrix setup in Section 8 is written for 2D rectangular tori (two directions); the identities (8.7) and the (1,25)-aspect tilted-torus trick (Lemma 13.6) are 2D-specific in form.
7. The companion pole paper (isolated particle mass) uses Edwards–Sokal/FK couplings, Köhler-Schindler–Tassion planar crossing, Griffiths–Ginibre for multicomponent rotators: all planar/spin-specific.

**Generic (would transfer in structure):**
1. Exact block-spin RG preserving the partition function (observation kernel (3.3)), retained density class = kinetic term + finitely many canonical polynomial slots + regular error + large-field covering (polymer) gas, caps δ_j, w_j, Theorem 5.1-type step with contraction q < L^{−2+υ} and Lipschitz dependence on the coupling. This is Balaban's architecture [3–6]; the paper itself cites Balaban's lattice gauge papers [3, 4] as the origin.
2. Shooting to a prescribed terminal coupling (Prop 6.2) and the two-boundary endpoint matching (Prop 6.3): depends only on a marginal coupling with drift and on the step contraction.
3. The "bounded bare offset" analysis (Prop 12.3, Lemma 12.2 summable sensitivity, Prop 12.5 fixed-layer matching, Lemma 12.4 retuning by IVT): generic for any asymptotically free marginal coupling.
4. Exact transport of sources through the RG (Prop 9.1) defining the field normalization B_N as a product of linear-response coefficients: generic for local observables carried through block integrations.
5. Convergence on a fixed physical torus via sources at a fixed coarse layer + Cauchy formula on a polydisc (Prop 10.2, first part): generic.
6. Rotation invariance via Pythagorean inclined blockings + irrational angle + continuity (Section 3 above): generic in principle (SO(4) contains rational rotations in coordinate planes); needs exact block maps for rotated cells (Lemma 4.1 analogue) and history contraction.
7. Reflection positivity of the Wilson action (Osterwalder–Seiler) and chessboard estimates: generic; but Lemma 7.3 needs RP of the block-spin ENDPOINT density at block seams (lines 3257–3264), which for gauge fields with gauge fixing / axial gauge is not automatic.
8. Transfer-operator doubling recursion (Lemma 8.2, Prop 8.3): "no dependence on the dimension of the spin sphere" (line 3884); needs only positivity, trace class, simple ground state. A d-direction analogue of the defect Δ = 2^d log Z(box) − log Z(2·box) is plausible.
9. OS reconstruction with linear growth condition, spectral-measure argument for the gap (Prop 11.4), uniqueness via subsequence + identification (15.3), uniqueness mechanism Lemma 15.2 (two incommensurable scale relations): generic.

---

## 9. Unusual features

1. **Differential proofs against another OpenAI preprint.** [28] "Sharp mass bounds for the two-dimensional O(4) model" (OpenAI, Sept 23 2026) is cited 174 times. Sections 2–7 and 9 are written as "the changes to [28, Section X]" with imported lemmas: [28, Lemma 4.1, 4.2, 5.5, A.1, A.2, B.1, C.1, C.2, D.1, 8.3, 8.4, 8.8, Prop 2.2, 7.1, 11.1, Eq (3.4)–(3.66), (5.1)–(5.43), (6.18), (6.20), (7.3)–(7.6), (8.23)–(8.25), (8.38), Appendix B–D]. The paper states (line 303) "We do not transfer the O(4) mass theorem to O(3)" and (lines 1118–1119) "Neither that assertion nor the continuum construction is an imported O(4) theorem", but the RG estimates' proofs are only given as deltas. Correctness of [28] is load-bearing and [28] is not public-verified.
2. **Lean coverage mismatch.** The Lean item for this family (215) formalizes a lemma from a third preprint ("Exponential decay in two-dimensional classical O(n) models", Sept 23 2026) that the continuum paper does not cite; the formalized lemma lacks the rate exp((4π − η)β) that Prop 2.1 needs. None of Sections 3–15 is formalized.
3. **Self-citation family**: [28] (O(4) sharp mass bounds); the pole paper cites the continuum paper as its [15]. Lean doc title "Canonical O(3) continuum limit and exact O(4) mass asymptotics" groups three preprints under family 215. No family numbers are printed in the papers themselves.
4. **Post-cutoff citations**: only the OpenAI preprints (Sept 23 2026). Latest external references: Aru–Garban–Sepúlveda CMP 406 (2025), Dybalski–Stottmeister–Tanimoto RMP (2024), Goswami AHP 25 (2024). No citation after June 2026 other than self-citations.
5. **No "standard, omitted" language found**: grep for "we assume / not proved / omitted / left to the reader / standard argument / well known / sketch / conjecture" returns no proof gaps; the paper repeatedly asserts the opposite ("This is not an assumption that a formal coefficient computation describes them", line 2875). The risk is concentrated in the imported [28] estimates and in the unusually long chains of parameter choices (order: derivative orders → L → caps/weights → P_0 → H → R, R' → K_0, M_0).
6. **Nothing about the UV/asymptotic-freedom matching of the limit**: no OPE, no stress tensor, no identification of the mass with the Hasenfratz–Maggiore–Niedermayer value, no S-matrix ("No factorized scattering matrix is used as a premise", line 169).
7. **The large-coupling threshold is enormous and non-explicit**: H and L are "sufficiently large" after a dozen ordered choices; β_N = H + γN; no numerical bound.
8. **Theorem 1.2 vs 1.1**: two different constructions (shooting with fixed H, versus offset family) with possibly different auxiliary parameters; Lemma 14.7 / 15.3 reconcile them only through the canonical normalization.
9. The pole paper's Theorem 1.1 (isolated lowest mass, Källén–Lehmann atom) is derived from the same uniform torus estimates; it is the only "particle" statement.

---

## 10. Transfer to 4D Yang–Mills: most plausible architecture

Facts about the claim (from YM_GAPS.md and the brief): OpenAI claims existence "building on Balaban's approach", no mass gap claimed, artifacts non-public. Facts from this template: the RG part on a fixed torus needs no gap; everything about R² needs the gap.

**Most plausible YM architecture (step by step), built on this template:**

1. **Lattice setup**: Wilson action on a periodic hypercubic torus Λ_N ⊂ a_N Z⁴ with a_N = L^{−N}, compact simple G, bare coupling g_N^{−2} = β_N. Analogue of (1.1). RP (Osterwalder–Seiler) in place of (8.4)'s positive kernel.
2. **Exact block RG with retained density class** (template Sections 3–5): Balaban's gauge-field block averaging (CMP 1985–1989 [3, 4]) with retained effective coupling, canonical slots (gauge-invariant local polynomials of low dimension), regular error in a small-field region, and a large-field covering gas. Step theorem with coupling recursion b' = b + α + κ/b + Δ and shape contraction q < L^{−p+υ} for the appropriate dimension count. The 4D drift is the YM one-loop coefficient for 1/g² per block step ((11N/24π²) log L for SU(N), normalization-dependent) in place of γ = log L/2π.
3. **Shooting to a prescribed terminal coupling H at physical block length 1** (template Section 6): defines β_N = H + b_0 log(1/a_N) + O(log log) — this is the Theorem 1.2-type construction, i.e. a Λ-parameter renormalization condition. **Expect the YM theorem to look like Theorem 1.2, not Theorem 1.1**: "there exist a_N → 0, β_N → ∞ and normalizations such that ... converge", with the trajectory selected by the terminal coupling.
4. **Endpoint matching** (Prop 6.3): two cutoffs aligned on their last K layers agree at the terminal layer up to L^{−(p−υ)K} in volume-normalized norms.
5. **Sources for gauge-invariant observables** (template Section 9): carry sources for smeared Tr F² (or Wilson loops / plaquette variables) exactly through the block maps; linear-response coefficients define the field normalization B_N as a product over steps. This is the template's answer to "which fields": the Schwinger functions of the renormalized local observables, with normalization defined by the RG itself, not by a lattice two-point function.
6. **Continuum limit on a FIXED physical torus T⁴** (template Prop 10.2 first part, Prop 10.1 fixed-torus moment bounds): convergence of joint moments of the smeared observables via sources at a fixed coarse layer and Cauchy's formula on a polydisc; laws determined by moments. This needs absolute bounds on the regular exponent and the gas in a fixed volume and a positive lower bound on the source-free normalizer; no RP, no gap.
7. **OS axioms on the torus**: E2 inherited from Wilson-action RP (as Lemma 11.1), E3 inherited, E0 from fixed-volume moment bounds (as (10.9) restricted to a torus), E1 only translations on a torus. Reconstruction on a spatial torus with time either periodic or infinite (the template's "infinite-time cylinder expectation" ω_w, line 3932, would be the analogue: a transfer matrix at fixed spatial torus). Unique vacuum on a cylinder follows from strict positivity of the transfer kernel (simple largest eigenvalue, line 3844), no clustering needed.
8. **Rotation invariance**: only possible on R⁴. If claimed, the template route is: inclined first blocking by a rational rotation of Z⁴ in a coordinate plane (e.g. (3,4,5) in the (x_1,x_2) plane), comparison of two mirror inclinations through a common coarse frame, irrational angle ⇒ dense subgroup ⇒ invariance under SO(2) in each coordinate plane ⇒ SO(4). Requires Lemma 4.1 analogues for rotated hypercubic cells and history contraction of the free (gauge-fixed) kernels.
9. **Nontriviality**: template-style = a nonzero connected correlation of the renormalized block observable at the terminal scale, computed from the near-aligned terminal configuration with coupling H plus compactness of G (e.g. the terminal block holonomy / plaquette variable is nearly Haar-distributed on a compact group, giving non-Gaussian moments). No asymptotic-freedom short-distance matching, no OPE, no stress tensor; this would NOT meet Clay's §4 requirement 3.

**Steps with NO analogue in this template (the YM proof must supply something new, or not claim them):**
- **Infinite volume T⁴ → R⁴.** The template's only mechanism is: non-uniform lattice decay with rate ≤ exp((4π−η)β) at one reference coupling (Prop 2.1) → finite-box doubling test (Prop 8.1) → RP transfer doubling recursion (Prop 8.3) → uniform physical gap (Cor 8.5) → torus-to-plane comparison (8.11). No 4D lattice YM decay estimate at large β with a controlled rate exists; so if the YM claim is on R⁴ without a gap, it is outside this template. If the YM claim is on T⁴ (or a spatial torus × R), it is inside this template minus Sections 2, 8, 13.
- **E4 (clustering) and uniqueness of the vacuum on R⁴**: both come from Cor 8.5 here. On R⁴ without a gap there is no template route.
- **Canonical normalization and "all β → ∞ without subsequence"** (Theorem 1.1, Sections 12–15): needs finite positive susceptibility and correlation length of a local field (Lemma 14.5 needs the gap). Without it the best template statement is Theorem 1.2-type: existence along a selected trajectory, plus (optionally) the Section-12 offset analysis showing a one-parameter family related by dilations (Λ-parameter freedom), but no intrinsic normalization.
- **Gauge fixing / gauge invariance of the block RG**: the template has global O(3) covariance only; Balaban's gauge RG needs axial-gauge/background-field machinery with no analogue in Sections 3–5 of this paper.
- **Griffiths-type moment positivity** (used for temperedness bound (10.9) over all boxes, Radon measures, boundary strips, two-point tails): no gauge analogue; the YM temperedness bound would have to come from fixed-volume exponential moments only.
- **Short-distance (asymptotic freedom / OPE / stress tensor) behavior**: absent in this template; Clay §4 requires it.

**Bottom line [INF]**: the structure of this paper predicts a YM "existence" theorem of the form "Theorem 1.2 on a fixed periodic torus (or cylinder): there exist a_N → 0, β_N = H + b_0 N log L + …, normalizations B_N, such that renormalized gauge-invariant observables converge, the limit is reflection positive, symmetric, tempered (fixed volume), with a nontrivial (non-Wick) correlation and a unique vacuum from transfer positivity". If the OpenAI YM claim asserts R⁴ and Euclidean invariance without a mass gap, it needs an infinite-volume mechanism that this template does not contain; if it asserts T⁴, Clay's footnote 2 and §5 ("no present ideas... infinite volume limit T⁴ → R⁴") apply unchanged.
