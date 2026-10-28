IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_D2C — step (c) redone: extraction of the marginal term with a position-dependent source

Status: draft by Claude (Opus 5.5), unverified, 2026-10-27. Supersedes SOURCES_D2.md §4.3 (rejected in SOURCES_D2_VERIFY.md §V3/§V5).

## 0. Summary and ledger
Result. Step (c) of SOURCES_D2 is redone at the correct scale. Each step term E^{(j)}(X, ·; f), X ∈ D_j, is frozen at c_X = f(b_X), b_X the barycentre of X. The physical size of X is ~Mλ_j, so f − c_X = O(Mλ_jρ_1(1 + d_j(X))). The freezing error D_X is gauge invariant, vanishes at U = 1 with zero first derivative, and is bounded in an axial gauge on X (Lemma A): |D_X| ≤ E_0 C M³(ρ_1/r)(L^jη)^5 λ_k e^{−κd/2}, irrelevant with exponent 1, no growth in k. In the same gauge the frozen term is a local quadratic form in the curvature at one point plus O((L^jη)^{4+β}). Summing over X gives Σ_x K_f(x) : P̂_x, with K_f(x) = K^{(f(x))} + O(λ_jρ_1/r). For a constant source, K^{(c)} is isotropic by hypercubic symmetry, and its coefficient B_j(c) equals Balaban's β_j on the trajectory from 1/g_0² − c (Lemma U + identification (I), which is exact for the small-field integral). The cubic first-moment term of (4.34) is the gauge completion of the x-dependence of the marginal coefficient; it cancels against the pointwise counterterm A(B_j∘f, ·). Result: 1/g_{j+1}²(x) = 1/g_j²(x) − B_{j+1}(f(x)), h ≡ 0, all gradient corrections irrelevant with exponent α_f = min(α, β, 1).

Ledger in brief (full ledger §6). Proved: freezing rule, (I) for the small-field part, Lemma A given (D), T_1 at scale j, assembly and isotropy, Lemma U, treatment of the cubic term, the recursion, h-bookkeeping bounds. Reduced: Balaban's Sect. 4–5 for constant c; (4.17)–(4.18); the domain hypothesis (D); (F), (A) from the induction. Open: (Hβ) via (H-hist) and complex c; (I) with large-field thresholds (D3); an independent check of Lemma A against Balaban's domain definitions.

## 1. Setting and the defect of D2 §4.3
Tags: [V] checked against the CMP 109 PDF image in this session; [proved] complete argument here; [reduced] reduced to a quoted Balaban estimate or to a named hypothesis; [open] not done.

Notation (as in SOURCES_D2 §1.1). λ_j = L^{j−K} is the physical spacing of T^{(j)}. At step k+1, η = L^{−k} and L^jη = λ_j/λ_k. Since λ_k ≤ 1,

  λ_j ≤ L^jη  for all j ≤ k ≤ K.   (1.1)

X ∈ D_j is a localization domain at scale j. Its diameter in T^{(j)} lattice units is ≤ M(1 + d_j(X)), so its physical diameter is ≤ Mλ_j(1 + d_j(X)). The source f ∈ F_r is a smooth function on the continuum torus, ‖f‖_∞ ≤ r, ‖∇f‖_∞ ≤ ρ_1.

What Balaban does at step k+1 (CMP 109 Sect. 4, [V] PDF pp. 281–291). For each j ≤ k and each X ∈ D_j, he expands E^{(j)}(X, U_j(□_0, exp iB)) = E^{(j)}(X, exp iξH_j(□_0, B)) in B up to fourth order at U = 1 ((4.1)–(4.6)). The field B = ζ_□Q_j(ηA) lives on one cube □ of the partition π_k (k-scale, physical side ~Mλ_k). It obeys |dB| ≤ a_1(L^jη)² (4.17) and |∂∂B| ≤ a_1(L^jη)^{2+β}, 0 < β < 1 (4.18). Because B is one gauge on the whole k-cube, |B| ~ M L^jη: one power of L^jη per field, not two. The WT identities (4.9)–(4.15) per function and the contour formula (4.30) reduce everything to E^{(2)}(X) and give (4.34): a quadratic term ⟨E^{(2)}(X), δB, B⟩, a second-moment term, and a first-moment term with cubic polynomials such as ½ tr δB_μ i[B_κ, B_ν]. Then (PDF p. 290 [V]) "By the Euclidean symmetries the third expression should vanish"; (4.35)–(4.37) extend sums over y to Z⁴ and over X to D_j^0, and define Π = Σ_{X∈D_j^0} E^{(2)}(X). The counterterm β_j(g_{j−1})(A(U_k(exp iB′V)) − A(U_k(V))) (4.38) is expanded in the same way ((4.39)–(4.44), via Δ_j), and the marginal parts cancel once Sect. 5 shows that Π has the form (4.41) with coefficient β_j.

Defect of SOURCES_D2 §4.3 (SOURCES_D2_VERIFY V2, V5, accepted here). (a) Sect. 4 after (4.34) uses Euclidean symmetry and translation extension, so it does not run verbatim with a source. (b) D2 froze f at the centre of the k-scale cube □, where f varies by O(Mλ_kρ_1), not O(Mλ_jρ_1); the claimed (L^jη) gain is absent and Σ_{j≤k} grows like k. (c) The first-moment cubic term is O(λ_jρ_1/r)(L^jη)³ per point in Balaban's gauge, i.e. marginal times λ_k after the sum over the k-cube; D2 did not treat it.

Plan of the repair. Never freeze at the k-scale. Freeze each E^{(j)}(X, ·; f) on its own X, at scale j. Handle the non-constant source before any expansion in a fixed gauge, at the level of gauge-invariant functions on X, using an axial gauge on X. In that gauge each field costs two powers of L^jη, so only the quadratic part is marginal, and it is a local functional of the curvature at one point. Balaban's Sect. 4–5 are then used only for constant sources, where they apply verbatim.

## 2. Freezing at scale j and the identification (I)
### 2.1 Freezing rule [definition]

For X ∈ D_j let b_X ∈ R⁴ be the barycentre of X (continuum point) and S_X the set of lattice points of T^{(j)} nearest to b_X (|S_X| ≤ 16). Both are covariant under all lattice symmetries r of T^{(j)}: b_{rX} = r b_X, S_{rX} = rS_X. Put

  c_X := f(b_X).   (2.1)

On X, |f(y) − c_X| ≤ ρ_1 · Mλ_j(1 + d_j(X)) for y ∈ X, and |f(x) − c_X| ≤ ρ_1λ_j for x ∈ S_X. A deterministic "centre lattice point" is not covariant under reflections; the barycentre rule is used because §3.3 needs exact hypercubic covariance of a sum over X.

### 2.2 The identification (I) [proved for the small-field integral; large-field part D3]

Claim. For a constant source f ≡ c, the sourced construction is Balaban's construction at bare coupling 1/g_0'² = 1/g_0² − c. Hence its β-increments are B_j(c) = β_j(u_0 − c, u_1(c), …, u_{j−1}(c)), the history dependence included.

Proof. (1) Bare level: −A(1/g_0², ·) + cA(·) = −(1/g_0² − c)A(·). Exact.
(2) Block transformation (CMP 109 (0.17), (0.19) [V, PDF p. 255]): the block constraint is δ(Ū(c)V^{−1}(c)), independent of the coupling.
(3) Gauge fixing (0.14)–(0.16) [V, PDF pp. 254–255]: the identity (1/z)∫du exp[−(1/α)(1 − Re tr U(y,x)u^{−1}(x))] χ(|U(y,x)u^{−1}(x) − 1| < ε_0) = 1 holds for every α > 0 by Haar invariance, and the Faddeev–Popov step needs only gauge invariance of the rest of the integrand (plaquette restrictions are gauge invariant). So the small-field integral does not depend on the gauge-fixing weight α (Balaban takes α = g_k²). The weight only changes the bookkeeping of the expansion.
(4) Small-field cutoffs. With the cutoff |B′(b)| < ε_1 on the unscaled fluctuation (CMP 109 (2.9), first version [V, SOURCES_D2_VERIFY V3]), the restricted integral does not depend on the coupling either; the rescaling B′ = g_kB is a change of variables.
(5) So for constant c the small-field effective density at step k is the same function of V in both constructions. Its marginal coefficient is unique (Lemma U, §3.4). Hence u_k(c) = Balaban's 1/g_k² on the trajectory from 1/g_0² − c, for every k.

Residual. If the cutoff is the coupling-dependent version (g_k/y_k)ε_1 of (2.9), or once large-field regions with g_k-dependent thresholds enter (CMP 119), (1)–(5) hold only if the sourced construction uses thresholds adapted to the local coupling w_k(x). Two choices: (i) adapted thresholds (then (I) is exact, and their x-dependence is one more f|_X-dependence of the step, of the same size as the source vertices); (ii) reference thresholds (then B_j(c) differs from Balaban's β_j by a large-field effect, plausibly O(exp(−κ u_{j−1}(c))), SOURCES_HBETA §4(d)). Both are D3 items. A local gauge-fixing weight 1/w_k(y), if used, changes the fluctuation covariance by a factor 1 + O(g_k²f_k); this is the weighted-Neumann-series case of SOURCES_D2 §3, Lemma 3.1.

Status: [proved] for the small-field integral with coupling-independent cutoffs; [reduced to D3] otherwise. This answers task item (ii): for a constant frozen source, Sect. 4–5 of CMP 109 are run for the bare coupling 1/g_0² − c, verbatim, including its Euclidean-symmetry steps, because that theory is translation and reflection invariant.

### 2.3 Inputs from the induction (SOURCES_D2 §1.2)

(F) Freezing property (H2)(vii), for the unextracted step terms: for f ∈ S_r(X), |E^{(j)}(X, ·; f) − E^{(j)}(X, ·; c_X)| ≤ E_0 O(1)(Mλ_jρ_1/r)(1 + d_j(X)) e^{−κd_j(X)} on the analyticity domain. Here E^{(j)}(X, ·; c) is the term of the constant-source family (A).
(A) Constant-source family: E^{(j)}(X, ·; c), B_j(c) exist and are holomorphic in c on |c| < 2r with Balaban's bounds, uniformly in j ≤ K. By Cauchy with margin r, a c-shift δc costs a factor |δc|/r.
(G) Gauge invariance: E^{(j)}(X, ·; f) depends on U|_X only and is invariant under all G^c-valued gauge transformations on X (D2 (H2)(ii); CMP 109 p. 283 [V]: invariance under G implies invariance under G^c by analyticity). E^{(j)}(X, 1; f) = 0 ((H2)(v)).
(D) Domain hypothesis [reduced]. The analyticity domain of E^{(j)}(X, ·) is gauge invariant and contains exp(iθ) for every complex link field θ on X with ‖θ‖ + ‖∇θ‖ + ‖Δθ‖ ≤ α_2 (T^{(j)} lattice units, sup over X). This is how I read (4.4) [V, PDF p. 281] together with the gauge invariance of the domain U_j^c(X, α_0, α_1). It is not stated in this form by Balaban.

## 3. The gradient error f − c_X: bound on T_1 at scale j
### 3.1 Lemma A (axial-gauge reduction on one domain) [proved, given (G) and (D)]

Setting. X ∈ D_j, x ∈ S_X. U is a configuration on X with plaquette angles F_p := −i log U_p obeying, in T^{(j)} lattice units, |F| ≤ a_1(L^jη)² and |∇F| ≤ a_1(L^jη)^{2+β}, which is what (4.17)–(4.18) give for Balaban's fields [OCR text lines 1805–1811, not checked on the PDF image; (4.18) with 0 < β < 1]. Let θ^{ax} be the complete axial gauge representative of U on X with base point x (links set to 1 along a fixed staircase tree from x; every other link is an ordered product of transported plaquette holonomies along a staircase path of length ≤ M(1 + d_j(X))). Then, with an absolute constant C_ax,
  ‖θ^{ax}‖ + ‖∇θ^{ax}‖ + ‖Δθ^{ax}‖ ≤ C_ax M(1 + d_j(X)) a_1(L^jη)² =: τ_X.   (3.1)
(For unitary factors |Π g_i − 1| ≤ Σ|g_i − 1|; for the complex domain the same holds up to a factor e^{O(τ_X)}.)

Let G be a function on X with (G): gauge invariant, analytic on the domain (D), G(1) = 0, |G| ≤ Γ on the domain. Suppose also that the first derivative of G at U = 1 vanishes. This holds for every E^{(j)}(X, ·; f): global colour rotations act on the source trivially, so (4.32) holds for each f, and an Ad-invariant element of su(N) is 0.

Lemma A. Assume τ_X ≤ α_2/2. Then
 (a) |G(U)| ≤ Γ (τ_X/α_2)².
 (b) There is a unique tensor κ_X[G] (indices: two plaquette orientations o, o′ at a point; colour structure tr by (4.33)) such that
  |G(U) − κ_X[G] : P̂_x(U)| ≤ C Γ [(τ_X/α_2)³ + α_2^{−2} τ_X M(1 + d_j(X)) a_1(L^jη)^{2+β}],   (3.2)
 with P̂_x^{oo′}(U) := tr F_{p(x,o)} F_{p(x,o′)}, both plaquettes based at x (a gauge-invariant local function). |κ_X[G]| ≤ C Γ (M(1 + d_j(X))/α_2)². κ_X[G] does not depend on the choice of x ∈ X up to the error in (3.2), and it is covariant: κ_{rX}[G∘r^{−1}] = r_*κ_X[G].

Proof. φ(t) := G(exp(itθ^{ax})) is analytic on |t| ≤ t_0 := α_2/τ_X ≥ 2 by (D), and G(U) = φ(1) by (G). φ(0) = 0 and φ′(0) = 0, so φ(t)/t² is analytic and the maximum principle gives (a): |φ(1)| ≤ Γ/t_0². For (b), φ(t)/t³ minus its value at 0 gives |φ(1) − ½φ″(0)| ≤ 2Γ/t_0³. ½φ″(0) = Q(θ^{ax}, θ^{ax}) with Q the Hessian of G at 1, ‖Q‖ ≤ Γ/α_2² by Cauchy. In axial gauge θ^{ax} = h_x(F) + O(τ_X²), with h_x the linear staircase homotopy, |h_x(F)| ≤ M(1+d)|F|. So Q(θ^{ax}, θ^{ax}) = Σ_{p,p′} K(p, p′) tr F^{ax}_p F^{ax}_{p′} + O(Γα_2^{−2}τ_X³). Transport every F^{ax}_p to the plaquette p(x, o) of the same orientation at x: the change is ≤ M(1+d)(|∇F| + |θ^{ax}||F|). Summing the kernel gives κ_X[G]^{oo′} := Σ_{p∈o, p′∈o′} K(p, p′) and the second error in (3.2). Uniqueness: on abelian configurations of constant curvature sF in a Cartan direction (∇F = 0), (3.2) gives G = s²κ_X[G] : (F ⊗ F) + O(s³), which fixes κ_X[G]. Covariance follows from uniqueness. ∎

If τ_X > α_2/2, then 1 + d_j(X) > α_2/(2C_ax M a_1(L^jη)²) and Γ ∝ e^{−κd_j(X)} is smaller than any power of L^jη after giving up half of κ. Such X contribute irrelevant terms trivially.

### 3.2 The freezing error: T_1 at scale j (task item (iii)) [proved, given (F), (G), (D)]

D_X := E^{(j)}(X, ·; f) − E^{(j)}(X, ·; c_X) satisfies (G), vanishes at 1 with zero first derivative, and by (F) has Γ = E_0 O(1)(Mλ_jρ_1/r)(1 + d_j(X)) e^{−κd_j(X)}. Lemma A(a) and (1.1) give

  |D_X(U)| ≤ E_0 O(1) (Mλ_jρ_1/r) (C_ax M a_1/α_2)² (1 + d_j(X))³ (L^jη)⁴ e^{−κd_j(X)}
           ≤ E_0 C M³ (ρ_1/r) (L^jη)^5 λ_k e^{−(κ/2) d_j(X)}.   (3.3)

Counting at scale j: the source difference costs one gradient times the size of X, Mλ_jρ_1(1 + d); gauge invariance supplies two curvatures, (L^jη)⁴ (each curvature is (L^jη)² in T^{(j)} units); no point count enters, because (3.3) bounds the whole function on X and Balaban's irrelevance criterion (0.28)/(0.29) is per X. So D_X is irrelevant with exponent 1: (L^jη)^{4+1}, with the extra factor λ_k ≤ 1. The constant carries M³ρ_1/r. This is the unit-scale convention (U) of SOURCES_D2 §4.4 with a = 3 (D2's a = 7 came from the k-cube count, which is no longer used).

### 3.3 Assembly of the marginal part [proved, given §3.1–3.2 and (A)]

Put R_X := E^{(j)}(X, ·; c_X) − κ_X(c_X) : P̂_{S_X}, with κ_X(c) := κ_X[E^{(j)}(X, ·; c)] and P̂_{S_X} := |S_X|^{−1} Σ_{x∈S_X} P̂_x. By (3.2) with Γ = E_0 e^{−κd}: |R_X| ≤ E_0 C M³ (L^jη)^{4+β} e^{−(κ/2)d_j(X)}: irrelevant with exponent β. Then

  E^{(j)}(·; f) = Σ_x K_f(x) : P̂_x + Σ_X (D_X + R_X),   K_f(x) := Σ_{X: S_X ∋ x} |S_X|^{−1} κ_X(c_X).   (3.4)

Constant source. K^{(c)}(x) := Σ_{X: S_X∋x} |S_X|^{−1} κ_X(c) does not depend on x (translation covariance of the constant-c family on the torus) and is invariant under the hypercubic group fixing x (covariance of S_X and of κ_X). An invariant tensor T^{μν,ρσ}, antisymmetric in each pair, under signed permutations is nonzero only if each index occurs an even number of times, i.e. {μ,ν} = {ρ,σ}; permutations make the value equal for all pairs. So K^{(c)} : P̂_x = k(c) Σ_o tr F_{x,o}². The ε-structure is excluded by reflections. This is where Euclidean symmetry is used, and only for a constant source.

Non-constant source. For x ∈ S_X, |c_X − f(x)| ≤ ρ_1λ_j. By (A) (Cauchy in c, margin r), |κ_X(c_X) − κ_X(f(x))| ≤ (ρ_1λ_j/r) sup_{|c|<2r}|κ_X(c)|. Summing over X ∋ x with Σ_{X∋x} (1+d)² e^{−κd} ≤ O(1):
  |K_f(x) − K^{(f(x))}| ≤ C E_0 M² α_2^{−2} ρ_1λ_j/r.   (3.5)
The term (K_f(x) − K^{(f(x))}) : P̂_x is a one-site local term of size ≤ C E_0 M² (ρ_1/r) λ_j a_1²(L^jη)⁴ ≤ C′ (ρ_1/r)(L^jη)^5 λ_k: irrelevant with exponent 1.

Counterterm. A(w, U) = Σ_x Σ_o w(x) P_{p(x,o)}(U) with the weight at the base point (SOURCES_D2 (H.0)). P_p = c_N tr F_p² + O(|F_p|⁴), because Re tr e^{iF} is even in F. Define

  B_j(c) := k(c)/c_N.   (3.6)

Then E^{(j)}(·; f) − A(B_j∘f, ·) = Σ_x (K_f(x) − K^{(f(x))}) : P̂_x + Σ_X (D_X + R_X) + Σ_p O((L^jη)^8) is a sum of irrelevant local terms with exponent α_f := min(α, β, 1). These are the sourced V^{(j)}(X, ·; f). They keep (F) and (A) because every piece is built from E^{(j)}(X, ·; f) and κ_X(c) by operations that are Lipschitz in f|_X and holomorphic in c.

### 3.4 Lemma U: B_j(c) is Balaban's β_j at the shifted coupling [proved, given (5.9), (5.10), (5.37)]

For constant c, Balaban's Sect. 4–5 (applicable by §2.2) give that E^{(j)}(·; c) − β_j(c)A is irrelevant, and §3.3 gives the same with B_j(c). Both coefficients are the s² coefficient of the energy per site on the abelian constant-curvature configuration U_{sF} (extended to Z⁴ as in (4.36)): for B_j this is §3.1 uniqueness (R_X = O(s³) when ∇F = 0); for β_j it is the p² coefficient of the transverse, exponentially decaying Π^{(c)} (5.9), (5.10), (5.37), evaluated on a linear potential. So B_j(c) = β_j(c). With (I): B_j(c) = β_j(u_0 − c, u_1(c), …, u_{j−1}(c)). The torus versus Z⁴ difference is e^{−O(λ_j^{−1})} (Balaban's (4.36) estimate).

## 4. The cubic first-moment term of (4.34)
Task item (iv). The third expression of (4.34) is Σ_x Σ_{μ,ν,κ} m_{μνκ}(x) {½ tr δB_μ(x) i[B_κ(x), B_ν(x)] + (terms with ∂B and cubic commutators)}, with first moment m_{μνκ}(x) := Σ_X Σ_y E^{(2)}_{μν}(X, x, y)(y − x)_κ [V, PDF pp. 289–290].

### 4.1 Size, and why it is not an error term [proved]

In Balaban's gauge |B| ~ M L^jη, so ½ tr δB[B, B] ~ (L^jη)³ per point. With a source, m(x) ≠ 0. If one writes m(x) = m^{(f(x))} + (m(x) − m^{(f(x))}) and uses m^{(c)} = 0 (reflection symmetry of the constant-c theory, Balaban's own step), the remainder is O(Mλ_jρ_1/r)(L^jη)³ per point; summed over the (M/L^jη)⁴ points of the k-cube this is O(M⁵ρ_1λ_k/r): marginal times λ_k. SOURCES_D2_VERIFY V2 is right about this size.

But this remainder is not an error term. It is a piece, written in one fixed gauge on the k-cube, of the gauge-invariant marginal functional Σ_x K_f(x) : P̂_x of (3.4). Expanding P̂_x = tr F_{x,o}² with F = dB + i[B, B] + … in Balaban's gauge gives quadratic terms and their cubic gauge completions tr (dδB) i[B, B]. For a position-dependent K_f(x), re-expressing Σ_x K_f(x) tr(dδB)(dB)(x) through a kernel Σ_{x,y} E^{(2)}(x, y)δB(x)B(y) produces first moments proportional to ∇K_f ~ (ρ_1λ_j/r) per T^{(j)} step. Those first moments pair with the cubic completions. So the cubic first-moment term is the gauge completion of the x-dependence of the marginal coefficient. The pointwise counterterm A(B_j∘f, ·) has exactly the same completion, because A(B_j∘f, U) = Σ_x B_j(f(x)) Σ_o P_{p(x,o)}(U) is gauge invariant site by site. After the subtraction in §3.3 only (K_f(x) − K^{(f(x))}) : P̂_x is left, with coefficient (3.5) of size λ_jρ_1/r in front of two curvatures. That is irrelevant with exponent 1.

The route of §3 never expands a non-constant-source object in Balaban's k-cube gauge. In the axial gauge on X every field costs (L^jη)² (3.1), so all cubic and higher terms of E^{(j)}(X, ·; c_X) are O((L^jη)⁶) per X (Lemma A(b), first error term), and the cubic first-moment term does not occur as a separate object. Balaban's (4.34) is used only for constant c (Lemma U), where its third expression vanishes by his Euclidean-symmetry statement [V, PDF p. 290].

### 4.2 Consistency with the dimension count of SOURCES_D1 [proved, as a classification]

Claim: no gauge-invariant local term linear in ∇f is marginal or of dimension 5. Index parity: in a monomial built from F (2 indices, dimension 2), D (1 index, dimension 1), and δ, ε (even numbers of indices), the number of free indices has the parity of the dimension. A term ∂_μ f · O_μ needs a vector O_μ, so O has odd dimension.
 - Total dimension 4 (marginal): O_μ of dimension 3. The only candidates are tr D_νF_{νμ} and ∂_μ tr F, both 0 because tr F = 0 for su(N).
 - Total dimension 5: O_μ of dimension 4, even. Impossible by parity.
 - Total dimension 6: O_μ of dimension 5, e.g. tr F_{μν}D_ρF_{ρν}. Allowed. Irrelevant by two powers.
So the first gradient term is dimension 6, as D1 §2.3 found (with the numerics: f-linear response at source momentum 2p vanishes like p⁴). On the lattice the same holds: a gauge-invariant local function of the links is a function of Wilson loops, whose expansion starts at F² (D1 ledger item 3).

What this does and does not prove. The parity count says the true leading gradient correction is dimension 6, i.e. irrelevant with exponent 2 in the j-scale count. The estimates (3.3) and (3.5) are cruder (exponent 1) because they bound every source-dependent difference by |∇f|·size of X without using its structure. Exponent 1 suffices for the induction. The parity argument is a consistency check of the continuum classification; it is not used in the proof, because the lattice remainder terms are not pure monomials in F and D.

## 5. The pointwise recursion and h_k bookkeeping
### 5.1 The pointwise recursion (task item (v)) [proved, given §2–§3, (F), (A), (D), (Hβ)]

At step j+1 the new terms E^{(j+1)}(X, ·; f), X ∈ D_{j+1}, are produced by Balaban's Sect. 3 with the sourced vertices (SOURCES_D2 §2–§3). §3 applied at scale j+1 gives
  E^{(j+1)}(·; f) = A(B_{j+1}∘f, ·) + Σ_X V^{(j+1)}(X, ·; f),  V^{(j+1)} irrelevant with exponent α_f = min(α, β, 1).
The counterterm is moved into the marginal term, as in (0.23). So

  1/g_{j+1}²(x) = 1/g_j²(x) − B_{j+1}(f(x)),  i.e.  w_{j+1}(x) = u_{j+1}(f(x)),  h_{j+1} ≡ 0,   (5.1)

with u_{j+1}(c) = u_j(c) − B_{j+1}(c), u_0(c) = 1/g_0² − c, and B_{j+1}(c) = β_{j+1}(u_0 − c, u_1(c), …, u_j(c)) by §2.2 and Lemma U. The recursion is pointwise in x. It is not a pointwise recursion in the local coupling w_j(x) alone, because β_{j+1} depends on the whole history of the constant-c trajectory at c = f(x) (CMP 109 p. 298 [V, quoted in SOURCES_HBETA]). This is exact: each frozen piece E^{(j)}(X, ·; c_X) carries the history of the constant-c_X trajectory, and the mismatch with the real history on X is part of D_X (3.3).

Every non-pointwise correction is booked in V^{(j+1)}:
 - D_X (gradient of f across X): (3.3), exponent 1;
 - R_X (cubic and higher fields; curvature transport): exponent β;
 - (K_f − K^{(f(x))}) : P̂_x (shift from b_X to x): (3.5), exponent 1;
 - the O(F⁴) part of P_p: exponent 4.
Their sum over j ≤ k is controlled by Balaban's own mechanism for (0.23)–(0.24): Σ_{j≤k} (L^jη)^{α_f} ≤ (1 − L^{−α_f})^{−1}. The new constants are E_0-independent multiples of M³ρ_1/r; with the unit-scale convention (U), a = 3, they are ≤ E_0 O(1).

### 5.2 Where (Hβ) enters [reduced to SOURCES_HBETA Lemma H]

(Hβ): sup_{|c| ≤ 2r} Σ_{j≤K} |B_j′(c)| ≤ ½. It is used three times.
 (1) Family (A) on |c| < 2r, uniformly in j ≤ K: every constant-c trajectory must stay in Balaban's region g_j(c) ≤ γ. For real c this is the bootstrap of Lemma H, Step 3, which needs (Hβ). For complex c it is SOURCES_HBETA §3(c) [open]. The Cauchy bounds in §3.2–§3.3 use this disc.
 (2) Induction hypotheses at step j+1. With v_j = du_j/dc, Lemma H gives ½ ≤ |v_j| ≤ 3/2. So the effective source f_j(x) = g_j^{−2} − u_j(f(x)) satisfies |f_j| ≤ (3/2)|f| ≤ 3r/2 and |∇f_j| ≤ (3/2)ρ_1. Hence (F) at step j+1 holds with ρ_1 replaced by (3/2)ρ_1, uniformly in j. Without (Hβ), |∇f_j| could grow with j, and the freezing constant Mλ_jρ_1 would not be uniform.
 (3) The freezing property (F) compares E^{(j)}(X, ·; f) with the full constant-c_X trajectory. Its propagation (SOURCES_D2 §6.3) needs the local coupling history on X to stay within O(Mλ_jρ_1) of that trajectory at every earlier step i < j. This is |u_i(f(y)) − u_i(c_X)| ≤ (3/2)|f(y) − c_X|, again (Hβ).
Lemma H proves (Hβ) from (I) (now proved for the small-field part, §2.2), Lemma E, and (H-hist) (|∂β_j/∂g_i| summable over i, uniformly; weakened to a column-sum bound in SOURCES_HBETA_VERIFY §5). (H-hist) for i < j−1 is not in Balaban [open].

### 5.3 h_k bookkeeping [proved]

With the booking of §5.1, h_k ≡ 0. If instead one books the coefficient corrections of §3.3 (the b_X → x shift and the plaquette weight point) as a change of the local coupling, then per step |δh_j(x)| ≤ C(ρ_1λ_j/r) sup_{|c|<2r}|B_j(c)|, and
  |h_k(x)| ≤ C (ρ_1/r) β′ Σ_{j≤k} λ_j ≤ C (ρ_1/r) β′ λ_k L/(L − 1),
with β′ the upper bound of Lemma E. This is the (S-A) bound |h_k| = O(ρ_1λ_k) (with M¹ instead of M, since the shift is ≤ λ_j, not Mλ_j). Its gradient is worse: each δh_j varies on scale λ_j, so |∇δh_j| ≤ Cρ_1β′/r per step, and Σ_{j≤k} grows like k. So the h-booking keeps |h_k| uniform but not |∇h_k|; SOURCES_D2 (H1) requires |∇h_k| ≤ C_hρ_1. Conclusion: book these corrections as irrelevant terms (h ≡ 0). The D_X terms cannot be booked into h at all (they are not of the form δh(x)·P_p); they are irrelevant terms in any booking.

## 6. Honest ledger
Proved here:
 - The freezing rule at scale j (barycentre b_X, covariant) and the bound |f − c_X| ≤ Mλ_jρ_1(1 + d_j(X)) on X (§2.1).
 - (I) for the small-field integral with coupling-independent cutoffs: δ-function blocking and the Faddeev–Popov identity (0.15) are exact for every gauge-fixing weight, so a constant source is Balaban at 1/g_0² − c (§2.2).
 - Lemma A (axial-gauge reduction on one domain), given (G) and (D) (§3.1).
 - T_1 at scale j: |D_X| ≤ E_0 C M³(ρ_1/r)(L^jη)^5 λ_k e^{−κd/2}, exponent 1 (§3.2).
 - The assembly (3.4), hypercubic isotropy of K^{(c)} (by parity of indices, constant source only), the shift bound (3.5), and the counterterm match with B_j := k/c_N (§3.3).
 - Lemma U: B_j(c) = Balaban's β_j at the shifted coupling, given his (5.9), (5.10), (5.37) (§3.4).
 - The cubic first-moment term is the gauge completion of the x-dependence of the marginal coefficient; it cancels against the same completion of A(B_j∘f, ·); the remainder is (3.5) (§4.1).
 - Index-parity classification: no marginal or dimension-5 term linear in ∇f (§4.2; consistency check, not used in the proof).
 - The pointwise recursion (5.1) with h ≡ 0; the alternative h-booking gives |h_k| ≤ C(ρ_1/r)β′λ_k L/(L−1) but an unbounded gradient sum, so it is rejected (§5.1, §5.3).

Reduced to quoted Balaban text, with a stated modification:
 - Constant-source extraction: CMP 109 Sect. 4–5 verbatim at bare coupling 1/g_0² − c (§2.2). Modification: none, except that the c-family must be holomorphic in c on |c| < 2r (family (A)).
 - Field smoothness (4.17), (4.18) on the analyticity domain (OCR text; the PDF image of p. 284 was not re-read in this session).
 - (D) domain hypothesis: Balaban's analyticity domain is gauge invariant and contains axial-gauge representatives with ‖θ‖ + ‖∇θ‖ + ‖Δθ‖ ≤ α_2. My reading of (4.4) and of U_j^c(X, α_0, α_1); not stated by Balaban in this form.
 - (F) freezing property and (A) constant-source family: hypotheses of the induction, propagation as in SOURCES_D2 §6 [reduced there].

Open:
 - (Hβ) inside the extraction (§5.2): reduced to (H-hist) for i < j−1 (SOURCES_HBETA); complex c (needed for (A) on the disc) not done.
 - (I) with coupling-dependent cutoffs or large-field thresholds: D3 (adapted thresholds make it exact; reference thresholds leave a large-field difference, plausibly O(e^{−κu_{j−1}})).
 - Independent check of Lemma A against Balaban's actual domain definitions (CMP 109 Sect. 1, U_j^c). This is the one new estimate of this file. Balaban did not use per-domain axial gauges; he expanded in one gauge per k-cube. If (D) fails, the fallback is SOURCES_D2_VERIFY V5 option (ii): (S-A) bookkeeping, which by §5.3 controls |h_k| but not |∇h_k|.
 - Constants: the M-powers of Lemma A (M³ for D_X and R_X) must fit into E_0 O(1) via (U); Balaban's own constants in (4.22), (4.30) carry similar M-powers. Not compared in detail.

Verdict on step (c). Corrected. The extraction is done at scale j, per localization domain, before any expansion in Balaban's k-cube gauge. The source gradient enters only through gauge-invariant differences with two curvatures, so its cost is λ_jρ_1 ≤ (L^jη)ρ_1: exponent 1, no growth in k. The marginal part is pointwise, B_j(f(x)), with B_j the β-increment of the constant-source theory, equal to Balaban's β_j on the shifted trajectory. h ≡ 0.
