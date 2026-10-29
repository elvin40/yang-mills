# SOURCES_L1_NT — nontriviality (NT) of the finite-torus limit (Target 2) and of Theorem IV

Status: DERIVATION, Opus, 2026-10-28. Not verified. Ids follow IDS.md. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.

Grades. [P] proved here. [P-sketch] proof given, some routine steps not written out. [V] checked against a page image or by an exact computation in this folder. [R] standard result, cited, not re-derived. [I] interpretation or reading, not proved. [N] not done / open.

Scripts (Mac, under one second each): numerics/nt_ring.py (exact rational free-field cumulants of the plaquette composite), numerics/nt_ring_check.py (brute-force check of the cumulant formula, random configurations, chirality rule, margin near the square).

## 0. Result in four lines

1. The brief's route is refuted as stated. The centred plaquette density has no term linear in the gauge field. So there is no tree-level gluon exchange between plaquettes, and the truncated four-point function has no order-g⁴ term. Its leading term is order g⁸: a closed ring of four free propagators (§3) [P-sketch].
2. That ring is nonzero (exact value at the unit square, §4) [P]. It is present also in the Gaussian (free) gauge field. So "truncated S_4 ≠ 0" proves that the limit field is not Gaussian. It does not prove interaction. The free three-point function vanishes identically at separated points (chirality rule, §4) [P].
3. Given one new hypothesis (NT4) of the same type as the existing (NT) = H-101 (E14-f), every limit family of L-013 has S_4^T ≠ 0, with a lower bound uniform in ε (Theorem NT-G, §5) [P given (NT4)]. With (NT4) uniform in ℓ, the same holds for Theorem IV (L-196) [P given (NT4-ℓ)].
4. (NT4) is not provable from the verified inputs. It needs the sourced Theorem 1 (R-035 (B-S), open) with four sources and an explicit leading-order identification with a remainder that is small relative to it (O(g_k), or O(g_k²) if β_j is even, §6 O4). Balaban's printed bounds (CMP 109 (0.29)) give no lower bound (§6) [P that the printed inputs do not suffice; I on the size of the missing step]. Proposed ledger status of (NT): OPEN, reduced; the four-point form adds no new open block beyond (E14-f) extended to n = 4 sources (§7).

## 1. Current statement and status of (NT) in the project [V, files read 2026-10-28]

- ASSEMBLY.md §1.4: Theorem 1.4 = L-014 (nontriviality), "conditional on (B-NT)" = H-081. Part (i) S_2 ≠ 0; part (ii) d⁸S_2 is not asymptotically constant as d → 0.
- ASSEMBLY.md §2.9: statement (NT) [hypothesis; owned by H-101 (E14-f)]: S_{2,ε}(f_1 ⊗ f_2) = c ∫∫ f_1 f_2 g_{k(|x−y|)}⁴ |x − y|^{−8} (1 + R), |R| ≤ C(g_{k(d)}² + (d/ℓ)²). The constant c "must be computed in Balaban's normalization". The same section states: "A two-point function alone never excludes a Gaussian", and "Even in the free (Gaussian gauge field) theory its connected n ≥ 3 functions are nonzero (Wick squares are not Gaussian). So 'S_n^c ≠ 0 for some n ≥ 3' does not prove interaction."
- ASSEMBLY.md §3 dependency table, row B-NT: "OPEN: needs (NT) = (E14-f); derivation from (NT) PROVED here [sweep 2026-10-28: not needed for Target 2]".
- SOURCES.md §2.5: "(E14-f) Nontriviality (for (N6)). One-loop two-point function of the plaquette density at a fixed coarse layer: c g_j⁴ d^{−8}, c ≠ 0, plus an O(g_j⁶) remainder from (E14-a). Medium; a corollary of (E14-a) at a fixed layer."
- TRUST_LEDGER.md l. 104: (NT)/H-101 (E14-f) is listed under "Not needed for the two targets".
- paper/assembly.tex: thm:L014 carries status "conditional on (NT)"; the corrections subsection (item corr:nt) restricts part (i) to support diameters ≪ ℓ and part (ii) to the two-sided envelope.
- INFINITE_VOLUME_FABLE.md §7.1(d) (Theorem IV = L-196): "Not asserted: … nontriviality (it needs (NT) uniform in ℓ; same status as Target 2's B-NT)."
- Lean: Envelope.lean formalizes the envelope argument of §2.9 with (NT) and |R| ≤ ½ as hypotheses (TRUST_LEDGER l. 343; paper/appendix.tex l. 23).

Summary. The project has a two-point (NT) as a hypothesis, a proved derivation of L-014 from it, and no four-point statement. No file proves (NT) or computes c.

## 2. Balaban inputs read from page images (CMP 109, rendered in /tmp/nt_pages, deleted after use)

Every quote below was read from the page image, not from the OCR text.

- p. 252, (0.2) [V]: "A^ε(U) = Σ_{p∈T_ε} ε^{d−4}[1 − Re tr U(∂p)], where tr is the normalized trace, i.e. tr 1 = 1." For SU(2) this is P_p = 1 − ½ Re Tr U(∂p), the ASSEMBLY convention.
- p. 256, (0.20) [V]: 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k). (0.22) [V]: A_k(g_k, V) = −(1/g_k²) A^η(U_k(V)) + E_k(U_k(V)). (0.23) [V]: E_k(U_k) = Σ_{j=1}^k [−β_j(g_{j−1}) A^η(U_k) + E^{(j)}(U_k)].
- p. 257, (0.24)–(0.25) [V]: E^{(j)}(U) = Σ_{X∈D_j} E^{(j)}(X, U), |E^{(j)}(X, U)| ≤ E_0 exp(−κ d_j(X)).
- p. 258, (0.28)–(0.29) [V]: −β_j(g_{j−1}) A^η(U_k) + E^{(j)}(U_k) = Σ_X V^{(j)}(X, U_k), |V^{(j)}(X, U_k)| ≤ O(1)(L^jη)^{4+α} exp(−κ d_j(X)), α > 0. The β_j are defined as the coefficient of A^η extracted "with a help of Ward-Takahashi identities" from the expansion in H up to fifth order, U_k = exp(iηH).
- p. 259, Theorem 1 [V]: "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective actions for small fields are given by the formulas (0.22)–(0.24), with terms satisfying (0.29)." Theorem 2, (0.31) [V]: 1/g² + β log(L^kε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^kε)^{−1}.

What these inputs give for (NT) [P, by inspection of the printed statements]:
(a) A leading term: the effective density at scale k is exp(−(1/g_k²)A^η) times exp(E_k), with E_k a sum of localized terms. Expanding A^η to second order in the fluctuation field gives the free (Gaussian) gauge field with coupling g_k. This is the only "explicit leading term" in the printed construction.
(b) No coefficient-level information. (0.25) and (0.29) are upper bounds with constants E_0, O(1). They are not small in g_k and they carry no sign. The "one-loop" content of β_j appears only through (0.20) and Theorem 2's (0.31), whose proof is unpublished (CMP 109 p. 259: "will be given in a separate paper"). The project replaces (0.31) by Theorem 2w = L-001 (c′) (THEOREM2_PROOF_v4 §1.3 [V, file]): u_n + β(n − m) − D′ ≤ u_m ≤ u_n + B′(n − m), u_k = 1/g_k², 0 ≤ m ≤ n ≤ K.
(c) No observable. CMP 109 Theorem 1 is about effective actions on small fields; it contains no source term. Correlations of the plaquette density need the sourced version (SOURCES.md §2.1–§2.5; ledger R-035 (B-S)).

Consequence used below. The relative size O(g_k²) of the non-Gaussian corrections is the loop-counting reading of (0.29): a term with O(1) coefficient, compared with the classical term (1/g_k²)A^η, is O(g_k²) relative when the fluctuation field has size g_k. Turning this reading into a bound on a correlation function at separated points needs a Cauchy estimate in the fluctuation field on Balaban's analyticity domain, carried through all RG steps with the sources. That is the content of (E14-a) + (E14-f), not of Theorem 1 [I].

## 3. The brief's route, checked: order and origin of the leading truncated four-point term

Setting. φ_p = P_p − c_ε, S_{n,ε}(F) = Σ_{p_1..p_n} F(x_{p_1},…,x_{p_n}) ⟨φ_{p_1}⋯φ_{p_n}⟩ (ASSEMBLY §0). For f_1,…,f_4 with pairwise disjoint supports, F = f_1⊗…⊗f_4 ∈ D_4 and f_i⊗f_j ∈ D_2. Define the truncated function
  S^T_{4,ε}(F) := S_{4,ε}(F) − S_{2,ε}(f_1⊗f_2)S_{2,ε}(f_3⊗f_4) − S_{2,ε}(f_1⊗f_3)S_{2,ε}(f_2⊗f_4) − S_{2,ε}(f_1⊗f_4)S_{2,ε}(f_2⊗f_3).
No S_1 or S_3 terms appear because S_{1,ε} ≡ 0 (centring). S^T_{4,ε}(F) = Σ F(x_{p_1},…) ⟨φ_{p_1};…;φ_{p_4}⟩, the sum of joint cumulants. [P]

Lemma NT-0 (expansion of the plaquette) [P]. Write U_b = exp(i g ε A_b^a σ^a/2) with g the coupling of the measure exp(−g^{−2}A(U)). For p in the (μ,ν) plane the plaquette angle is θ_p^a = g ε² F^a_{μν} + O(g²ε³), and 1 − ½ Re Tr exp(iθ·σ/2) = 1 − cos(|θ|/2) = |θ|²/8 − |θ|⁴/384 + …. So
  P_p = (g²ε⁴/8) Σ_a (F^a_{μν})² + (terms of order g³ and higher).
There is no term of order one in A. The action g^{−2}ΣP_p = (1/16)∫F^a_{μν}F^a_{μν} + …; with F = 2F′ the field F′ has the standard normalization (1/4)∫F′F′. Hence P_p = (g²ε⁴/2) Σ_a (F′^a_{μν})² + O(g³).

Proposition NT-0 (order of the leading term) [P-sketch, formal perturbation theory]. In the perturbative expansion of ⟨φ_{p_1};…;φ_{p_n}⟩ at pairwise separated points, every vertex from φ carries at least two field legs and a factor g², and every interaction vertex of the action carries g or g². A connected diagram that joins n insertions of degree ≥ 2 has at least n propagators. The minimal diagrams are the rings: n insertions of the quadratic term joined in a cycle by n free propagators. They are of order g^{2n} and contain no interaction vertex.
- n = 2: order g⁴, two propagators. This matches ASSEMBLY's (NT) (c g⁴ d^{−8}).
- n = 4: order g⁸, four propagators. There is no order-g⁴ contribution. A "tree-level gluon exchange between plaquettes" needs a vertex linear in A, and Lemma NT-0 shows there is none (gauge invariance: the plaquette is a function of the field strength, quadratic at lowest order).
- n = 3: the ring is of order g⁶, but it vanishes identically at separated points (Lemma NT-2 below). The first nonzero term is of order g⁸ and needs at least one interaction vertex [P-sketch for the order count; the coefficient is not computed, N].

So the brief's "leading contribution of order g⁴" is refuted [P-sketch]. The correct leading term is order g⁸, and it is the free (Wick) ring.

Two meanings of "nontrivial", kept apart.
(G) The limit family is not Gaussian: S^T_4 ≢ 0 (or S_3 ≢ 0). For a centred Gaussian family all truncated functions of order ≥ 3 vanish [R, Isserlis].
(F) The limit family is not the plaquette composite of a free (Gaussian) gauge field. The free composite itself satisfies (G), because the order-g⁸ ring is a free-field object. So (G) does not imply (F). ASSEMBLY §2.9 already records this.
The brief asks for (G). Section 5 gives (G) from a hypothesis. For (F) the project has L-014(ii) (running-coupling envelope of S_2); Section 5 adds the same envelope for S^T_4, and Section 4 adds a free-field selection rule (S_3 ≡ 0) that an interacting theory is expected to break.

## 4. Free-field kernels of the plaquette composite (the leading terms)

Notation. Continuum free field F′ with standard normalization (Feynman gauge; the F′ correlator is gauge independent), propagator ⟨A′_μ(x)A′_ν(0)⟩ = δ_μν G(x), G(x) = 1/(4π²|x|²), three independent colors for SU(2). O(x) := Σ_{μ<ν} (F′_{μν}(x))² for one color. By Lemma NT-0 the smeared plaquette field Σ_p f(x_p)φ_p tends at Gaussian level to (g²/2)∫ f Σ_a O^a, because the sum over plaquettes of all six orientations at density ε^{−4} per orientation turns into ∫dx Σ_{μ<ν}. Write κ_n(x_1,…,x_n) for the joint cumulant of O(x_1),…,O(x_n) in the free field of one color, computed with G = 1/|x|² (the factor (4π²)^{−n} is restored at the end).

Lemma NT-1 (cumulants of Gaussian quadratic forms) [R; V]. For Q_i = zᵀM_i z, z ~ N(0, C): κ(Q_1,…,Q_n) = 2^{n−1} Σ_{orderings (i_2,…,i_n) of 2..n} tr(M_1 C M_{i_2} C ⋯ M_{i_n} C). numerics/nt_ring_check.py (a) checks n = 2, 3, 4 against brute-force Isserlis sums on a random 3-dimensional example; agreement to all printed digits. For O the matrices M_i are the identity on the six plane components and C is replaced by D(x_i − x_j), D_{(μν),(ρσ)}(x) = ⟨F′_{μν}(x)F′_{ρσ}(0)⟩.

Lemma NT-2 (chirality rule; odd rings vanish) [P; V].
(a) In Euclidean R⁴ let F^± = ½(F ± ⋆F). Then F·F = F⁺·F⁺ + F⁻·F⁻, because ⋆ is symmetric with ⋆² = 1 on 2-forms, so its ±1 eigenspaces Λ^± are orthogonal.
(b) ⟨F^+(x) F^+(0)⟩ = ⟨F^−(x)F^−(0)⟩ = 0 for x ≠ 0. Proof: in momentum space ⟨F F⟩(k) = T(k)/k², T(k) = Σ_a (k∧e_a)⊗(k∧e_a), quadratic in k. Its Λ^+⊗Λ^+ block is an SO(4)-equivariant symmetric map Λ^+ → Λ^+, i.e. it lies in Sym²(Λ^+) = (0,0) ⊕ (2,0). A quadratic polynomial in k lies in (0,0) ⊕ (1,1). The only common piece is (0,0), so the block equals c k² P_+. Divided by k² it is a constant in k, i.e. c P_+ δ⁴(x). The same holds for Λ^−. ∎
(c) Hence a free propagator joins F^+ at one end to F^− at the other (for x ≠ 0). At each vertex O = F⁺·F⁺ + F⁻·F⁻ both legs have the same chirality. Going around a ring of length n the chirality changes n times, so the ring vanishes for odd n. In particular the free three-point function of O, and of every linear combination over colors, is zero at pairwise distinct points. ∎
Check [V]: nt_ring_check.py (c) gives max|⟨F^+F^+⟩| = max|⟨F^−F^−⟩| = 0.0 and max|⟨F^+F^−⟩| ≠ 0 at x = (1,0,0,0) and (1,2,−1,3); nt_ring.py gives κ_3 = 0 exactly (rational arithmetic) at three configurations, and nt_ring_check.py (b) gives κ_3 = 0 at all sampled random integer configurations.

Lemma NT-3 (exact values) [P, exact rational arithmetic in numerics/nt_ring.py; V].
- κ_2 at |x| = 1: 192; at |x| = 2: 3/4 = 192·2^{−8} (scaling |x|^{−8} confirmed).
- κ_4 at the unit square (0,0,0,0), (1,0,0,0), (1,1,0,0), (0,1,0,0): 27648.
- κ_4 at four collinear unit-spaced points: 10816/27.
- κ_4 = 0 exactly at the tetrahedron (1,1,1,0), (1,−1,−1,0), (−1,1,−1,0), (−1,−1,1,0) and at (e_0, e_1, e_2, e_3).
- κ_4 changes sign: 40 random integer configurations give 7 positive, 33 negative, 0 zero (nt_ring_check.py (b)).
- κ_4 ~ 4.8·10^{−4} for two unit pairs at distance 10 (it decays with the pair separation, as a cumulant must).

Leading kernels in Balaban's normalization (measure exp(−g^{−2}A), (0.2)) [P-sketch: Gaussian level, continuum limit of the lattice propagator at separated points]:
  S_2 leading kernel:  (g²/2)² · 3 · 192 / (4π²)² · |x − y|^{−8} = (9/π⁴) g⁴ |x − y|^{−8}.
  S^T_4 leading kernel at the square of side d:  (g²/2)⁴ · 3 · 27648 / (4π²)⁴ · d^{−16} = (81/4) π^{−8} g⁸ d^{−16}.
The first line gives the constant c of ASSEMBLY's (NT): c = 9/π⁴ > 0, with g → g_{k(d)} as (NT) states. The sign c > 0 agrees with ASSEMBLY's "sum of squares" remark; the value is new.

Corollary NT-3′ (a nonzero smeared value) [P]. κ_4 is real-analytic on pairwise distinct configurations. Let y = d·(square vertices), ρ ≥ 0 a bump with ∫ρ = 1, f_i^r(x) = r^{−4}ρ((x − y_i)/r). Then T_4(F^r) := ∫ Π f_i^r(x_i) κ_4(x) dx → κ_4(y) = 27648 d^{−16} as r → 0. So there is r_0(d) > 0 with T_4(F^r) ≥ ½·27648 d^{−16} for r ≤ r_0. Quantitative margin [V, sampled only, not a proof]: perturbing each vertex of the unit square by at most 1/50 in sup norm gave min κ_4/κ_4(square) = 0.77 over 150 samples; 1/20 gave 0.32–0.52; 1/10 gave 0.10–0.21.

## 5. Exact statements: hypothesis (NT4) and what follows from it

Notation. k(d) is the layer with L^kε ≤ d < L^{k+1}ε (ASSEMBLY §2.9). Q := (0,0,0,0), (1,0,0,0), (1,1,0,0), (0,1,0,0) (unit square). For d > 0 and 0 < θ ≤ 1/8, F_{d,θ} := f_1⊗f_2⊗f_3⊗f_4 with f_i(x) = (θd)^{−4}ρ((x − dQ_i)/(θd)), ρ ≥ 0 smooth, supp ρ ⊂ B(0,1), ∫ρ = 1. The supports are pairwise at distance ≥ (1 − 2θ)d ≥ 3d/4, so F_{d,θ} ∈ D_4. By scaling, T_4(F_{d,θ}) = d^{−16}T_4(F_{1,θ}), with T_4(F) := ∫ F κ_4. Fix θ_* ≤ 1/8 with T_4(F_{1,θ_*}) ≥ ½·27648 (Corollary NT-3′). Write F_d := F_{d,θ_*}.

Hypothesis (NT4) [new hypothesis; proposed id: next free H- number, owned by H-101 (E14-f) extended to four sources]. There are C_4 < ∞ and d_1 ∈ ]0, 1] such that, for all K, all g ∈ ]0, g_1], and all d with L²ε ≤ d ≤ d_1:
  | S^T_{4,ε}(F_d) − 3 (g_{k(d)}²/2)⁴ (4π²)^{−4} T_4(F_d) | ≤ C_4 g_{k(d)}⁸ (g_{k(d)} + (d/ℓ)²) d^{−16}.
Weak form (NT4)_{d_0}: the same inequality at one fixed d = d_0, for K ≥ K_0(d_0).
Comments. (i) (NT4) is the four-point analogue of ASSEMBLY's (NT), with the leading term computed (Lemma NT-3) rather than left as c. (ii) Using g_{k(d)} for all six pair distances is consistent at this order: the pair distances lie in [3d/4, 2d], and g_{k}² changes by a factor 1 + O(g_k²) over a bounded number of layers by (0.20) and |β_j| ≤ M_β (R-040 bound form) [I]. (iii) The term (d/ℓ)² stands for the torus correction of the free kernel; its exact form is not derived [I].

Theorem NT-G (the limit is not Gaussian) [P given (NT4)_{d_0}].
Assume the hypotheses of L-013 (ASSEMBLY 1.3) and (NT4)_{d_0} for one d_0 ∈ ]0, d_1], and assume γ and d_0/ℓ small enough that C_4(γ + (d_0/ℓ)²) ≤ (81/16)π^{−8}. Then every limit family (S_n) of L-013 satisfies
  S^T_4(F_{d_0}) ≥ (81/16) π^{−8} (1/g² + B′(1 + log_L(1/d_0)))^{−4} d_0^{−16} > 0,
with B′ the upper constant of L-001 (c′). In particular (S_n) is not a centred Gaussian family.
Proof. (1) Leading term: 3(g_k²/2)⁴(4π²)^{−4}T_4(F_{d_0}) ≥ 3·(1/16)·(4π²)^{−4}·½·27648·g_k⁸ d_0^{−16} = (81/8)π^{−8} g_k⁸ d_0^{−16}, k = k(d_0). (2) Remainder: g_k ≤ γ by L-001 (b), so the error is ≤ C_4 g_k⁸(γ + (d_0/ℓ)²) d_0^{−16} ≤ (81/16)π^{−8} g_k⁸ d_0^{−16}. Hence S^T_{4,ε}(F_{d_0}) ≥ (81/16)π^{−8} g_k⁸ d_0^{−16}. (3) Uniformity in ε: L-001 (c′) with m = k, n = K gives u_k ≤ u_K + B′(K − k), and d_0 < L^{k+1−K} gives K − k < 1 + log_L(1/d_0). So g_k⁸ ≥ (1/g² + B′(1 + log_L(1/d_0)))^{−4} for every K. (4) Passage to the limit: S^T_{4,ε} is a polynomial in S_{4,ε}(F_{d_0}) and in three values S_{2,ε}(f_i⊗f_j), each with f_i⊗f_j ∈ D_2. Along the subsequence of L-013(a) all four converge, so S^T_{4,ε_i}(F_{d_0}) → S^T_4(F_{d_0}), and the lower bound passes to the limit. (5) A centred Gaussian family has S_n(f_1⊗…⊗f_n) = Σ_{pairings} Π S_2(f_a⊗f_b) for pairwise disjoint supports, so S^T_4 = 0. Contradiction with (4). ∎

Theorem NT-F (the limit is not a scale-covariant composite, four-point form) [P given (NT4) on all of ]0, d_1]].
Under L-013 and (NT4), for every limit family and every d ∈ ]0, d_1] with C_4(γ + (d/ℓ)²) ≤ (81/16)π^{−8}:
  (81/16)π^{−8} (1/g² + B′(1 + log_L(1/d)))^{−4} ≤ d^{16} S^T_4(F_d) ≤ C′ (1/g² + β log_L(1/d) − D′)^{−4},
the upper bound whenever the bracket is positive, with C′ := (3/16)(4π²)^{−4} T_4(F_{1,θ_*}) + C_4(γ + (d_1/ℓ)²) < ∞ (T_4(F_{1,θ_*}) is finite because κ_4 is bounded on the support product). The upper bound uses L^kε ≤ d, i.e. K − k ≥ log_L(1/d), and the lower side u_k ≥ u_K + β(K − k) − D′ of L-001 (c′). So d^{16}S^T_4(F_d) > 0 for each d and → 0 as d → 0. A family with d^{16}S^T_4(F_d) independent of d (the plaquette composite of a free Maxwell field with any normalization λ gives the constant 3λ⁴(4π²)^{−4}T_4(F_1) ≠ 0) is excluded. Proof: as in NT-G at each d, plus the lower side of L-001 (c′) for the upper bound. ∎
Scope. NT-F excludes scale-covariant composites only. It does not exclude a composite of some other Gaussian gauge field whose covariance is not scale covariant. This is the same scope as L-014(ii). NT-F repeats L-014(ii) at four points; it is a second witness that rests on a different hypothesis ((NT4) instead of (NT)).

Theorem NT-IV (Theorem IV, uniform in ℓ) [P given (NT4-ℓ)].
(NT4-ℓ): (NT4)_{d_0} with C_4, K_0 independent of the even torus side ℓ > ℓ_0, along the ℓ-free bare coupling of INFINITE_VOLUME_IV12 (IV-1; unverified, verifier B106). Then every limit family of L-196 (INFINITE_VOLUME_FABLE §7.1) satisfies S^T_4(F_{d_0}) ≥ (81/16)π^{−8}(1/g² + B′(1 + log_L(1/d_0)))^{−4} d_0^{−16} > 0, because the (d_0/ℓ)² term → 0 along ℓ_i → ∞ and every other constant is ℓ-free. Proof: NT-G steps (1)–(5) with (K, ℓ) in place of K. ∎

## 6. Why (NT4) is not provable from the verified inputs (the obstruction)

O1. No lower bound in the chain [P]. Every verified input of L-013 enters through (H-U) = H-116, an upper bound. The family S_n ≡ 0 (n ≥ 1), S_0 = 1, satisfies the conclusions (a), (b) of L-013 (OS0–OS3 hold trivially). So no argument that uses only the conclusions of L-013 can give S^T_4 ≠ 0 or S_2 ≠ 0. A lower bound must come from an explicit leading term of the lattice correlations together with a remainder that is smaller than it. Neither is in a verified file.

O2. Balaban's printed bounds carry no small factor [V for the quotes, §2; P for the consequence]. (0.25) and (0.29) bound the localized terms by E_0 and O(1)(L^jη)^{4+α}. A correlation estimate built from these alone bounds the non-Gaussian part of S^T_{4,ε} by a constant times the bound on the Gaussian part. It does not make the remainder smaller than the order-g⁸ ring. The smallness O(g_k) or O(g_k²) relative comes from the scale of the fluctuation field (size g_k) inside Balaban's analyticity domain (size ε_0 in H), through a Cauchy estimate. That estimate, with four sources, carried through every RG step from scale ε to scale d, is the missing step. [I on its difficulty: same type and size as the (E14-f) step for (NT), which SOURCES.md §2.5 rates "Medium; a corollary of (E14-a) at a fixed layer".]

O3. The sourced theorem is open [V, ASSEMBLY §3 row B-S; TRUST_LEDGER R-035]. Correlations of φ_p are derivatives of the sourced generating functional in a local bare coupling (SOURCES.md §2.1). Their control uniform in ε is R-035 (B-S), (E14-a, b, c), open as a whole. (NT4) needs (E14-a) with four sources at separated points and an explicit fourth source-derivative at layer k(d). The verified pieces (D2C constant-source family, UN1 bridge, the (H-U) chain) give upper bounds, not the leading term.

O4. Transfer of the source from scale ε to layer k(d) [I]. For j < k(d) the source f is nearly constant on L^jε-blocks, and a local change δu_0 of the inverse bare coupling moves u_k by Π_{j<k} c_j δu_0, c_j = ∂u_{j+1}/∂u_j = 1 + ½ β′_{j+1}(g_j) g_j³ (from (0.20)). SOURCES_VERIFY item 8 (via ASSEMBLY §0) gives c_j = 1 + O(g_{j−1}³), so Π c_j = 1 + O(Σ_{j<k} g_j³) = 1 + O(g_k), using u_j ≥ u_k + β(k − j) − D′. If β_j is even in g (β′_j(g) = O(g)), the product is 1 + O(g_k²). This is why (NT4) is stated with a remainder g_{k(d)}, not g_{k(d)}²; the proofs in §5 only need the remainder to be small. The evenness of β_j is "modulo evenness" in THEOREM2.md §3 and is not settled here [N].

O5. Uniformity in ℓ (Theorem IV) [I, from INFINITE_VOLUME_IV12 and INFINITE_VOLUME_FABLE, both read as files]. The only ℓ-dependence left in Target 2's constants is FX Step B (the unit-scale cluster expansion on the whole torus). (NT4-ℓ) at d_0 ≤ d_1 < 1 needs the unit-scale contribution to S^T_{4,ε,ℓ}(F_{d_0}) to be bounded by C_4 g_k⁹ d_0^{−16} with C_4 ℓ-free. That needs a local form of Step B (the (CG) bound of INFINITE_VOLUME_PLAN, unproved). So (NT4-ℓ) is strictly stronger than (NT4).

O6. No shortcut found [N]. (a) (NT) does not imply (NT4): S_2 fixes nothing about S^T_4. (b) The free three-point function vanishes (Lemma NT-2), so S_3 gives no order-g⁶ witness; its first term is of order g⁸ and needs at least one interaction vertex; the coefficient is not computed. A nonzero order-g⁸ coefficient of S_3 would be a witness of (F) (interaction), not only of (G), because every free Maxwell composite has S_3 ≡ 0 at separated points [P for the free side; N for the interacting coefficient]. (c) Lattice positivity and the bound 0 ≤ P_p ≤ 2 give no lower bound on a truncated function at separated points.

Answer to "which extra hypothesis". Exactly one: (NT4)_{d_0} for NT-G (non-Gaussian); (NT4) on ]0, d_1] for NT-F; (NT4-ℓ) for Theorem IV. Each is owned by H-101 (E14-f) extended to four sources, and each needs R-035 (B-S) first.

## 7. Proposed ledger status and grade table

Proposed status of (NT) / H-081 (B-NT) / H-101 (E14-f): OPEN, unchanged in kind; not needed for Target 1 or Target 2 (TRUST_LEDGER l. 104 stays true). Proposed additions, for a later editor (this file edits nothing):
- The constant of ASSEMBLY's (NT) is c = 9/π⁴ in Balaban's normalization (measure exp(−g^{−2}A), (0.2)) [P-sketch, Gaussian level].
- New hypothesis (NT4), owned by H-101 extended to four sources; it gives Theorem NT-G (not Gaussian) [P given (NT4)_{d_0}] and Theorem NT-F [P given (NT4)]. Status of (NT4): OPEN, same block as (NT), behind R-035 (B-S).
- Theorem IV (L-196) item (d): nontriviality is available conditional on (NT4-ℓ), which is stronger than (NT4) by an ℓ-uniform local form of FX Step B (O5).
- Record the refutation: the truncated four-point function has no order-g⁴ term; its leading term is the order-g⁸ free ring, which also exists in the Gaussian gauge field. "S^T_4 ≠ 0" proves "not Gaussian", not "interacting".
- Record Lemma NT-2: every free Maxwell composite has S_3 ≡ 0 at separated points.

| Item | Grade | Where |
|---|---|---|
| Balaban (0.2), (0.20), (0.22)–(0.25), (0.28)–(0.29), Thm 1, Thm 2 (0.31) | [V] page images CMP 109 pp. 252, 256–259 | §2 |
| Printed inputs carry no leading term with lower bound | [P] by inspection | §2, O1–O2 |
| Lemma NT-0: no term linear in A; P_p = (g²ε⁴/2)Σ(F′)² + O(g³) | [P] | §3 |
| Prop. NT-0: leading S^T_4 is order g⁸ (ring); no order-g⁴ term | [P-sketch], formal perturbation theory | §3 |
| Lemma NT-1: cumulants of Gaussian quadratic forms | [R], [V] brute force | §4 |
| Lemma NT-2: chirality rule, free S_3 ≡ 0 off diagonals | [P], [V] exact and float checks | §4 |
| Lemma NT-3: κ_2 = 192|x|^{−8}, κ_4(square) = 27648, sign changes | [P] exact rational | §4 |
| c = 9/π⁴; S^T_4 leading (81/4)π^{−8} g⁸ d^{−16} at the square | [P-sketch], Gaussian level | §4 |
| Corollary NT-3′: smeared T_4 ≠ 0 for small bumps | [P]; margin numbers [V] sampled only | §4 |
| Theorem NT-G (not Gaussian) | [P] given (NT4)_{d_0} | §5 |
| Theorem NT-F (not scale covariant, 4-point) | [P] given (NT4) on ]0, d_1] | §5 |
| Theorem NT-IV (Theorem IV) | [P] given (NT4-ℓ) | §5 |
| (NT4), (NT4-ℓ) themselves | [N] open | §5, §6 |
| Remainder exponent g_k vs g_k² (evenness of β_j) | [I]/[N] | O4 |
| Order-g⁸ coefficient of the interacting S_3 | [N] | O6 |

## 8. Report (≤150 words)

The brief's route is refuted as stated. The plaquette density has no term linear in the gauge field, so the truncated four-point function has no order-g⁴ tree term. Its leading term is the order-g⁸ free ring. Exact rational computation gives a nonzero ring: 27648·d^{−16} per color at the square, (81/4)π^{−8}g⁸d^{−16} in total. The two-point constant is c = 9/π⁴. The ring also exists in the free theory, so S^T_4 ≠ 0 proves "not Gaussian", not "interacting". A chirality rule makes the free S_3 vanish identically. Given one new hypothesis (NT4), the four-point analogue of (NT), every limit of L-013 has S^T_4 ≥ c(1/g² + B′log(L/d_0))^{−4}d_0^{−16} > 0. With ℓ-uniform constants the same holds for Theorem IV. (NT4) is not provable from verified inputs: it needs R-035 (B-S) with four sources and an explicit remainder. Proposed status: OPEN.
