# R3S1_GAP — mass gap for center-stabilized SU(N) Yang–Mills on R³ × S¹ at small circle: assessment and first derivations

Written 2026-10-28 (Claude, Fable 5.1). New file; no existing file edited. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. Scratch numerics: numerics/r3s1_*.py (Mac, minute-scale).

Grades. [P] proved here. [V] verified reading of a source in this folder or of a paper text. [I] interpretation or recollection without a source check. [R] published theorem taken as input. [N] numerical.

Notation. The circle has length L (physics notation). Balaban's block size is written L_B (odd, > 11, as in TRUST_LEDGER C3), never L. Lattice spacing ε. Spatial torus side ℓ. g² = g²(1/L) is the running coupling at scale 1/L unless written otherwise. S_I = 8π²/g² is the 4d instanton action; S_0 = S_I/N is the monopole-instanton action.

Sources read in this folder (skim): TRUST_LEDGER.md §0, §4.3, §5; INFINITE_VOLUME_FABLE.md §7 (Theorem IV, rows L1–L17). Facts taken from them are graded [V]. Physics inputs (Ünsal–Yaffe 2008, arXiv:0803.0344; Shifman–Ünsal 2008; Poppitz–Ünsal) are recalled from memory and graded [I] unless a fetch confirms them (§4.3 records the fetch).

Honesty rule applied: each task ends with a verdict line and, where a step fails, the exact failing inequality.

---

## 0. Summary of what the folder provides [V]

- Target 2 of TRUST_LEDGER (finite-torus existence, compactness form) is stated for SU(2), d = 4, on T⁴_ℓ with periodic boundary conditions, equal sides, even ℓ > 22M (M = large-field cube parameter), L_B odd > 11 fixed. The RG runs K steps from spacing ε = L_B^{−K} (unit-scale lattice of side ℓ) with g_K = g small; g_0(K, g) is chosen by Theorem 2w so that every g_k ∈ ]0, γ]. [V: ledger §0, §4.3]
- Theorem IV (INFINITE_VOLUME_FABLE §7.1) is conditional and gives subsequential (ε, ℓ) → (0, ∞) limits of the Schwinger functions of the centred plaquette density with OS0, OS1-T, OS1-H, half-space OS2, OS3. Not asserted: uniqueness, O(4), OS4, mass gap. Row L17 (mass gap) is BLOCKED as infrared. [V]
- The unit-scale output is: small-field effective action (local polymer terms with Balaban's remainders of relative size g^κ, κ > 0 fixed) + large-field polymers with activities bounded by Balaban's large-field factors. The precise form of those factors is not re-read here; I use the CMP 109/116/119 form: small-field threshold |g_k^{−1}·(plaquette angle)| ≤ p_k with p_k = p_0 (log g_k^{−1})^{p} and large-field activity ≤ e^{−c p_k²} per large-field cube. [I: recalled, not re-read]
- The ledger's open items (B18, (D), (Reg), A24, the sourced chain, …) are inherited by every use of the UV construction below. They are not re-listed; the dependency graph of §5 names "Balaban UV (ledger state)" as one node. [V]

## 1. TASK 1 — Formulation and target theorem

### 1.1 Lattice theory [P: definitions]
Lattice Λ_{ε} = (εZ/ℓZ)³ × (εZ/LZ), with ℓ/ε and L/ε integers. Links U_b ∈ SU(N). Wilson action
  S_W(U) = (2/g_0²) Σ_p Re tr(1 − U_p),
normalized so that the continuum action is (1/(2g²))∫tr F² and the SU(N) monopole-instanton has action S_0 = 8π²/(g²N) [I for the value S_0; derived for N = 2 in §4.3]. Polyakov loop Ω(x) = Π_{t ∈ εZ/LZ} U_4(x, t) for x in the spatial lattice Λ_3. Double-trace deformation
  ΔS(U) = Σ_{x ∈ Λ_3} (ε/L)³ Σ_{n=1}^{⌊N/2⌋} a_n |tr Ω(x)^n|².
The factor (ε/L)³ is the lattice form of (1/L³)∫d³x. It is fixed by dimension counting against the one-loop (Gross–Pisarski–Yaffe) potential, which is −(2/(π²L³)) Σ_n |tr Ω^n|²/n⁴ per unit 3-volume [I]. Center symmetry survives at small L when a_n exceeds the GPY coefficient; Ünsal–Yaffe give the condition [I]. a_n = O(1), not O(1/g²): the deformation is a one-loop-sized term. Measure: Π_b dU_b (Haar) · e^{−S_W − ΔS}. Each factor e^{−(ε/L)³a_n|tr Ω^n|²} lies in [e^{−(ε/L)³a_nN²}, 1]. [P]

Two parameters replace ε: a := L/N_4 is the coarsest spacing at which the circle still has N_4 lattice sites, and K with ε = a·L_B^{−K}. Balaban's RG runs from ε to a. N_4 is a fixed integer ≥ N_min; §2 fixes N_min = the ledger's "even side > 22M" requirement in the compact direction plus the divisibility conditions (ledger C-rows: 18L_B | side, …) [V for the conditions' existence; I for the exact list]. So ε → 0 means K → ∞ at fixed (N_4, L).

### 1.2 Three target statements, from weakest to strongest [P: statements only]
Fix N ≥ 2, N_4 ≥ N_min, and a_n above the GPY threshold.

Theorem A (fixed spacing a = L/N_4; no UV step). There are g_0 = g_0(N, N_4, a_n) > 0, c, C_+ > 0 such that for the lattice theory at spacing a on (aZ/ℓZ)³ × (aZ/LZ) with bare coupling g ≤ g_0, uniformly in ℓ:
 (A1) the gauge-invariant correlation functions converge as ℓ → ∞ (unique infinite-volume limit);
 (A2) truncated correlations of gauge-invariant local observables decay like exp(−m·dist) with m ≥ (c/L)·e^{−C_+/g²};
 (A3) spatial Wilson loops obey an area law with string tension σ ≥ c·(g²/L)·m.
Here g is the lattice coupling at spacing a; since a = L/N_4 with N_4 fixed, g differs from g(1/L) by O(g³ log N_4), so "g² small" and "g²(1/L) small" coincide.

Theorem B′ (uniform in ε → 0; deformation inserted at scale a). Same conclusions, with constants independent of K, for the theory at spacing ε = aL_B^{−K} whose action is S_W + ΔS_a, where ΔS_a is the deformation evaluated on the Polyakov loop of Balaban's block-averaged field at scale a. (ΔS_a is a gauge-invariant function of the ε-lattice links; it is a different lattice regularization of the same continuum deformation. §2 explains why this choice and not ΔS.)

Theorem B (uniform in ε → 0; deformation at scale ε). Same as B′ with ΔS in place of ΔS_a.

Sharp version (any of A, B′, B) with the physics exponent: m ≥ (c/L)(g²N)^{−3/2}·exp(−(1+δ)·4π²/(g²N)) and m ≤ (C/L)(g²N)^{−3/2}·exp(−(1−δ)·4π²/(g²N)), δ → 0 as g → 0. The exponent 4π²/(g²N) = S_0/2 is derived in §4.3. A rigorous proof of the sharp version is graded separately in §5 (it needs semiclassics; no template).

### 1.3 What "uniformly in ε → 0" can mean here [P: analysis]
(i) The gap is a statement about the lattice theory at spacing ε: exponential decay of truncated gauge-invariant correlations at separations ≥ L, with rate m and prefactor independent of K. It passes to every subsequential continuum limit of the correlation functions (the compactness route of Theorem IV, row L9 [V]). Existence and uniqueness of the full ε → 0 limit are not needed for the gap statement and are not claimed.
(ii) The strongest target that is not blocked by the 4d wall is B′ (or B if Task 2's line lemma is proved), at FIXED N_4. Uniformity in N_4 → ∞ (that is, letting the unit-scale lattice resolve the circle ever more finely) is not targeted: it would need an RG that blocks only the three spatial directions while carrying an N_4-layer stack, which is new (§5 node G).
(iii) Why the 4d wall does not apply [P given the physics inputs]. Balaban's construction needs every scale coupling g_k ≤ γ (small). From ε to a, asymptotic freedom gives g(ε) ≤ g(a) ≈ g(1/L) ≤ γ, so all K steps are in the weak-coupling regime, exactly as in Target 2, with K → ∞ allowed. The 4d wall is the next stage: in 4d the unit-scale theory must be followed to scales where g = O(1) and no method exists. Here the unit-scale theory is a lattice gauge theory on a slab of thickness N_4 at small coupling g(1/L); the infrared mechanism (monopole-instanton gas, Debye screening of the dual photon) operates AT weak coupling, with fugacity e^{−S_0} ≪ 1 as the expansion parameter, and the 3d theory is superrenormalizable (no coupling growth in the infrared; the 3d coupling g²/L is dimensionful). So the small parameter at every stage is g²(1/L). The price: the theorem says nothing for L ≳ 1/Λ, where g(1/L) = O(1); it is a small-L theorem, not a step toward the Clay problem.
(iv) The theorem is a 4d statement with ε → 0 (continuum in all four directions) only in the sense (i); the compactness route gives existence of limits of correlation functions but not uniqueness.

Verdict Task 1: target fixed as Theorem A (intermediate), Theorem B′ (main), Theorem B (strict), and the sharp version (physics exponent) as a separate, harder target. Not blocked by the 4d wall. Constants depend on N_4; this is a stated restriction, not an obstruction.

## 2. TASK 2 — Nonlocality of the deformation versus RG locality

### 2.1 Where Balaban's RG uses the geometry of the compact direction [V + I]
Facts from the folder (grades as marked):
(L-i) Blocks are cubes of side L_B^k; the torus side at scale k must be a multiple of the block side. On (εZ/ℓZ)³ × (εZ/LZ) with ε = aL_B^{−K} this is the condition L_B^{K−k} | (ℓ/ε, L/ε), which holds for every k ≤ K once ℓ/a and N_4 = L/a are integers. [P from the definition]
(L-ii) Theorem LOC (INFINITE_VOLUME_FABLE §3.1 [V]): a polymer activity whose lift fits in a box of side < (torus side at that scale)/2 equals the Z⁴ activity exactly; wrapping polymers have relative size e^{−c·(side)}. In the compact direction the side at unit scale is N_4, so wrapping polymers around S¹ have activities ≤ e^{−cN_4}: small, fixed, nonzero. They are local in R³ (a column a³ × S¹). [V for LOC; P for the reading]
(L-iii) The volume condition "even side > 22M" (ledger (Vol), C31 [V]) is needed for the large-field cube geometry at unit scale. Applied to the compact direction it is the lower bound on N_4: N_min ≥ 22M plus the divisibility rows (18L_B | side and the like [V for existence, I for the exact list]). With N_4 < N_min the unit-scale large-field cubes of side M would wrap the circle; Balaban's large-field localization is not written for that case. [I]
(L-iv) Gauge fixing is per block / per localization domain (axial gauge in contractible cubes; ASSEMBLY l. 99 "per-domain axial gauge Lemma A" [V]). It uses no global property of the torus. Flat connections with any holonomy around S¹ are small-field configurations (all plaquettes trivial), so the center-symmetric holonomy is inside the small-field region at every scale. [P given (L-iv) reading]
(L-v) Nothing in (L-i)–(L-iv) uses equal sides. The ℓ-uniformity audit L2 of Theorem IV ("UV constants ℓ-free", grade [audit, I] there) becomes "constants free of ℓ, allowed to depend on N_4". [I]
Conclusion: Balaban's construction on the slab (ℓ/a)³ × N_4 at unit scale, with N_4 ≥ N_min fixed and ℓ → ∞, is an adaptation with no new idea, inheriting every ledger row. Node U in §5. The anisotropic case N_4 < N_min (blocks wrapping the circle, "cylinders" instead of cubes) is new and is not needed for Theorems A, B′.

### 2.2 The deformation at scale ε: the strict Theorem B fails as stated [P]
Write |tr Ω|² = 1 + χ_adj(Ω) (N ⊗ N̄ = 1 ⊕ adj; for n > 1 the same with Ω^n). So ΔS = const + Σ_x (ε/L)³ Σ_n a_n χ_adj(Ω^n(x)): the deformation is the adjoint Polyakov loop, a closed Wilson line of length L/ε lattice units, with coefficient (ε/L)³a_n per spatial site.

Claim 2.2.1 [P, modulo the standard perimeter law [I]]. At weak coupling the fluctuation average of a straight Wilson line of n links in representation R is e^{−δm_R·(length)}(1 + o(1)) with δm_R = c_R g²(ε) C_R/ε, c_R > 0 a lattice constant (static self-energy, linearly divergent). Hence the bare adjoint Polyakov loop satisfies ⟨χ_adj(Ω)⟩_{fluct} = Z_adj(ε)·χ_adj(Ω_ren) + O(Z_adj²), Z_adj(ε) = exp(−c g²(ε)C_adj L/ε) → 0 as ε → 0. The class-dependent part of ΔS is multiplied by Z_adj(ε), so the effective deformation at scale L is a_n Z_adj(ε)^{(n)} → 0: with fixed a_n the deformation does not stabilize center symmetry in the limit ε → 0. The failing inequality is
  a_n · Z_adj(ε) ≥ (GPY coefficient 2/(π²n⁴)),  which fails for ε < ε_0(a_n, g).
Consequence: Theorem B as stated in §1.2 is false as ε → 0 unless a_n is replaced by a_n·Z_adj(ε)^{−1} (multiplicative renormalization of the composite operator χ_adj(Ω), a linearly divergent counterterm whose coefficient δm_R(ε) must be fine-tuned to the lattice self-energy of a static adjoint charge). This is the "Polyakov-line renormalization lemma": control of a Wilson line of length L/ε → ∞ lattice units through K → ∞ Balaban steps, including the exact subtraction of the perimeter divergence. No rigorous template exists [I]; the line is a non-perturbative object below the scale ε_k ≈ g_k²L (where g_k² × (L/ε_k) ≳ 1, so the fluctuation expansion of the line in powers of g_k does not give a small correction). Graded: new mathematics, hard. Node D-strict in §5.

Remark. The failure is not an artifact of the lattice: in the continuum the operator |tr Ω|² needs the same renormalization; Ünsal–Yaffe write it for the classical holonomy, which is the renormalized object [I].

### 2.3 Resolution: insert the deformation at scale a (Theorem B′) [P]
Define ΔS_a := Σ_{y ∈ (aZ/ℓZ)³} N_4^{−3} Σ_n a_n |tr Ω_a(y)^n|², Ω_a(y) := product of the N_4 block-averaged links U_K(y, ·) in direction 4 at unit scale. Properties:
(i) gauge invariant on the ε-lattice, since Balaban's averaging is covariant under fine gauge transformations through the block gauge transformation [I: Balaban's covariance property, recalled]; (ii) bounded: each factor e^{−N_4^{−3}a_n|tr Ω_a^n|²} ∈ [e^{−N_4^{−3}a_nN²}, 1]; (iii) a function of the unit-scale variables only. So the K UV steps are Balaban's undeformed steps on the slab (§2.1), unchanged; the weight e^{−ΔS_a} is attached to the unit-scale measure as a bounded 3d-local term: one column per spatial unit site, coefficient N_4^{−3}a_n. It is a wrapping term of polynomial (not exponential) size in N_4, so it is not a polymer in the sense of (L-ii): it is kept in the unit-scale "column potential" and never expanded (§3). The block holonomy Ω_a is the renormalized Polyakov loop in the RG sense (its fluctuation renormalization from scales < a is built into the block field), so no counterterm is needed. Decision (a) of the task statement holds in this form: the deformation is harmless because it is inserted where it is local in R³ and bounded; the UV construction below scale a does not see it. Decision (b) applies to the strict form: the failing step is the fluctuation integral of the long Wilson line (§2.2), not the small-field/large-field split or the gauge fixing.

Cost of B′: the regularized theory depends on Balaban's blocking scheme through Ω_a. The continuum deformation it approximates is a_n|tr Ω_smeared^n|² with smearing scale a = L/N_4. For the gap this is immaterial (any center-stabilizing potential of this size works [I: Ünsal–Yaffe's argument is insensitive to the form of P[Ω] beyond the GPY threshold]).

### 2.4 Adjoint fermions instead of the deformation [I throughout]
Harder on three counts. (1) Grassmann integration inside Balaban's gauge RG: block RG for Euclidean fermions exists only in an external gauge field (Balaban–O'Carroll–Schor, LMP 1989, JMP 1991) and for Gross–Neveu (Gawędzki–Kupiainen 1985; Feldman–Magnen–Rivasseau–Sénéor); Balaban–Imbrie–Jaffe is the abelian Higgs model, bosonic. No dynamical gauge + fermion RG exists. (2) Chirality: the mechanism needs m_f ≲ 1/L; Wilson fermions need fine tuning of the additive mass; overlap fermions are only exponentially local and outside Balaban's framework. (3) One adjoint Weyl fermion gives a Pfaffian whose sign is not controlled with periodic bc on the lattice. Verdict: the deformation route (B′) is the only one with a bosonic, local-at-unit-scale infrared problem. Do not pursue fermions.

Verdict Task 2: (a) holds for B′ with the deformation inserted at scale a; (b) the strict form B fails at the long-line fluctuation integral (perimeter renormalization), exact inequality in §2.2. UV construction on the slab: adaptation (Node U). Fermions: not viable with existing templates.

## 3. TASK 3 — Dimensional reduction with estimates

### 3.1 The unit-scale slab theory [V + P]
After K Balaban steps (Node U) the measure on the unit-scale slab Λ_a = (aZ/ℓZ)³ × (aZ/LZ), N_4 = L/a sites around S¹, is
  ρ(U) = [χ_sf(U) exp(−g^{−2}A(U) + Σ_X E_K(X, U) + Σ_X R(X, U)) + large-field terms] · e^{−ΔS_a(U)},
with A the unit-scale Wilson-type action, E_K local small-field polymers (relative size g^κ), R the remainder terms, and large-field polymer activities ≤ e^{−cp(g)²|X|} [I for the exact form; V for the structure, INFINITE_VOLUME_FABLE §3.2]. Coupling g = g_K ∈ ]0, γ].

### 3.2 Scales present at unit scale [P: free-field computation]
Around the center-symmetric flat connection (holonomy Ω_0 with eigenvalues e^{2πi(j − (N+1)/2)/N}), the quadratic form of the Wilson action on the slab decomposes by Cartan weight and KK momentum. In lattice units a:
- Cartan components, KK momentum 0: massless 3d photons θ (N − 1 of them) and the holonomy fluctuation φ (N − 1 real scalars; φ = L·A_4 in the Cartan).
- Cartan components, KK momentum k ≠ 0: mass 2π|k|/N_4 ≥ 2π/N_4.
- Root components (W-bosons), KK momentum k: mass |2πk + α·φ_0|/N_4 ≥ 2π/(N N_4) (the smallest shift is 2π/N).
- φ gets a mass only from ΔS_a plus the one-loop (GPY) term: m_φ² a² = g² a_eff/N_4² · V″(φ_0), so m_φ L = g·√(a_eff V″) = O(g). [P: stiffness of φ is N_4^{−1}g^{−2} per unit cell since the (i,4)-plaquettes of one column carry (δφ/N_4)² each, N_4 of them; potential N_4^{−3}a_n per column]
So the hierarchy at unit scale is: W/KK masses ~ 1/N_4 (fixed, O(1) in units of 1/L); φ mass ~ g/L; dual photon mass m_σ ~ (1/L)e^{−S_0/2}. Only the W/KK modes have correlation length bounded by a FIXED multiple of L. The W correlation length is NN_4/(2π) lattice units: NOT short at unit scale. Any expansion that integrates them at spacing a has range ~N_4 and constants exp(O(N_4^d)); acceptable because N_4 is fixed.

### 3.3 Reduction statement to aim for [P: statement]
Theorem R (reduction; conjectural form). Fix N_4 ≥ N_min. There is g_0(N, N_4, a_n) such that for g ≤ g_0 the expectations of gauge-invariant observables of the slab theory supported at spatial separations ≥ L equal expectations in a 3d model on Λ_3 = (LZ/ℓZ)³ (spacing L: one site per column block) with variables
  θ_b ∈ (R/2πZ)^{N−1} (Cartan link angles), n_p ∈ Z^{N−1} ≅ root lattice (Villain integers), φ_y ∈ R^{N−1} (holonomy),
and weight
  exp(−(β_3/2) Σ_p ‖dθ_p − 2πn_p‖² − (κ_φ/2) Σ_b |∇φ_b|² − Σ_y V(φ_y)) · Π_c ζ_c(q_c; φ) · Π_X (1 + K_X(θ, n, φ)),
where q_c := (dn)_c ∈ root lattice is the monopole charge of the dual cube c, β_3 = κ_3(N_4)/g² (1 + O(g²)), κ_φ = κ_4(N_4)/g², V = N_4^{−3}·N_4³ a_n |tr Ω^n|² + V_GPY,lat, and
 (R-a) ζ_c(q; φ) ∈ [e^{−C_+(q, φ)/g²}, e^{−C_−(q, φ)/g²}] with C_±(q, φ) ≥ c|q| uniformly for φ in a neighbourhood of φ_0; sharp version C_± = (4π/N)·(ℓ(q)-weighted holonomy fractions)(1 ∓ δ), reproducing S_BPS = 4πφ/g², S_KK = 4π(2π − φ)/g² for N = 2;
 (R-b) K_X local (X connected in Λ_3), |K_X| ≤ e^{−cp(g)²|X|}·(fixed N_4-dependent constant)^{|X|}, analytic in θ, φ and in the Villain variables through dθ − 2πn only;
 (R-c) ζ_c(0; φ) = 1 (neutral cells carry no extra weight beyond K_X).
Remarks. (1) The compact (Villain) structure of θ is forced: θ is the Cartan angle of a group-valued block link. (2) The monopole charge is defined topologically from the block holonomy field Ω_a(y) wherever it is regular (non-degenerate eigenvalues): q_c = degree of ∂c → SU(N)/T through the eigenvector frame; cells where Ω_a degenerates on ∂c are large-field in the deformed sense and are assigned to the K_X terms (they cost ≥ c/(g²N_4) by the stiffness of φ, see 3.2) [P: definition; the cost bound is the stiffness estimate]. (3) After (R-a)–(R-c), Poisson resummation over n gives the Coulomb gas of §4 exactly [P: standard; §4.1].

### 3.4 Estimates needed, and which exist [P: analysis; grades per item]
(E1) Massive-fluctuation integral in a Cartan background (the "W and KK determinant"). On the abelianized small-field set, the Gaussian integral over root and KK modes with the background (θ, φ) is a determinant with covariance of mass ≥ 2π/(NN_4) in lattice units. Needed: ‖G_W(θ, φ)(x, y)‖ ≤ C e^{−δ|x−y|/N_4}, with derivatives in (θ, φ) to all orders, uniform in ℓ; and locality/analyticity of log det. This is Balaban's "regular background" random-walk expansion (CMP 99 Thms 3.7–3.10; ledger rows A1, A27 — A27 is itself an open reduction, NEW-3 [V]) with two changes: mass 2π/(NN_4) instead of the block-averaging mass of order 1, and background near Ω_0 instead of near 1. Grade: adaptation, moderate; inherits A27. The 1/N_4 decay rate is the reason constants depend on N_4.
(E2) Abelianization of the small-field set. Needed: on χ_sf with holonomy within δ_0 of Ω_0, the field is gauge-equivalent to Cartan + root fluctuations of size ≤ g p(g), with a fixed Cartan frame per column block (the eigenvector frame of Ω_a). This is a gauge-fixing lemma (diagonalize Ω_a, then the residual U(1)^{N−1} gauge freedom) plus the small-field bound. Grade: adaptation, easy–moderate; the only delicate point is the frame's continuity across neighbouring columns, which needs Ω_a to stay away from degenerate holonomy (guaranteed on the small-field set with holonomy near Ω_0 [P], and otherwise handed to K_X).
(E3) Monopole core bound (Peierls–Bogomolny inequality). Needed for (R-a): for every configuration whose block holonomy has degree q ≠ 0 on ∂c, the unit-scale effective action restricted to the cylinder c × S¹ is ≥ C_−|q|/g² with C_− > 0 independent of ε (that is, a lower bound on g^{−2}A(U) + E_K on such configurations). Balaban supplies NOTHING here: his large-field bound is |activity| ≤ e^{−cp(g)²|X|} with p(g) = (log g^{−1})^p, and
  e^{−cp(g)²} ≫ e^{−C_−/g²}  for every C_− > 0 as g → 0.
The failing inequality is exactly this. A charged region is a large-field region at unit scale when N_4^{−2} > gp(g) (the monopole's plaquette angle (a/L)² exceeds the small-field threshold), so with N_4 fixed every monopole core is large-field for g small, and the crude bound is all Balaban gives. Grade: NEW mathematics, moderate: a lattice Bogomolny argument. Sketch of why it should hold: the continuum BPS bound S ≥ 4πv|q|/g² follows from completing the square ∫|B ∓ Dφ|² ≥ 0 and the total-derivative identity ∫B·Dφ = ∮φ B·dS = 4π v q; on the lattice both steps hold with O(a/L) + O(|plaquette|) errors (the lattice Leibniz rule for the cross term), and the 4d Wilson action on the cylinder is ≥ the 3d action of the t-averaged abelianized field by convexity. Shrinking the core does not help (magnetic energy 2πL/(g² r_core) grows), so C_− is attained near r_core ~ L and is independent of ε. Sharp version C_− = (8π²/N)(1 − δ) for a cell of side ≫ L; for cells of side ~L the Coulomb tail outside the cell is part of the gas interaction, and C_− is smaller by that tail.
(E4) Upper bound on the core weight (R-a, left inequality) and the neutral sector. ζ_c(q) ≥ e^{−C_+|q|/g²} follows from exhibiting one lattice configuration with charge q and action ≤ C_+|q|/g² and from positivity of the measure (the fluctuation volume around it costs a g-independent constant depending on N_4) [P: Jensen/positivity; constant not uniform in N_4]. Neutral large-field polymers keep the crude bound e^{−cp²}; they are the K_X.
(E5) The holonomy field φ. It is light (m_φ ~ g/L), coupled to the charges exponentially: ζ_c(q; φ) ∝ e^{−4πφ·(...)/g²}. Integrated at Gaussian level it gives a Yukawa interaction among charges of range 1/m_φ = L/(g√a_eff) and strength 4πL/(g²r) (equal to the magnetic Coulomb strength: the BPS no-force structure for like charges) plus a self-energy that belongs to the core weight. Grade: [P: Gaussian integration]; the non-Gaussian part of V is perturbative. Consequence for §4: the Coulomb gas carries an extra short-range (on the Debye scale) two-body interaction of Coulomb strength; the gas is dilute on the Yukawa scale: density × (Yukawa volume) = e^{−S_0}·g^{−3} ≪ 1 [P].

Verdict Task 3: the reduction is formulable (Theorem R). Of the needed estimates, (E1), (E2) are adaptations of Balaban's regular-background bounds (inheriting A27), (E4), (E5) are elementary given positivity, and (E3), the core bound, is new mathematics with no Balaban input. The exact missing estimate is (E3): a lattice Bogomolny lower bound ≥ C_−|q|/g² on the action of charged configurations, in place of Balaban's e^{−cp(g)²}.

