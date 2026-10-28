# SOURCES_D2 — sourced small-field step (task D2)

Status: draft by Claude (Opus 5.5), unverified, 2026-10-27. Prose: short sentences, plain technical English. Inputs: SOURCES.md, SOURCES_VERIFY.md, SOURCES_D1.md, THEOREM2.md §3a, CMP 109 Sect. 1–5, CMP 119 Sect. 2, U3_REPAIRS.md.

## 0. Summary and ledger

Result in one paragraph. The sourced small-field step is Balaban's step with (1) one extra vertex class, (2) a frozen-source rerun of his Sect. 5, and (3) a field-independent contact functional split off by the normalization. The source term −A(f_k, ·) at Balaban's unweighted minimizer gives vertices with g_k^{+1}, g_k^{+2}, g_k^{+3}; the linear one is a gradient. All of them are in Balaban's P^{(k)} class, so his measure and propagators are untouched (§2). If one prefers the source Hessian in the measure, a weighted Neumann-series lemma gives all of Balaban's propagator bounds for Δ_f (§3, proved). Balaban's Sect. 3–4 use no translation invariance; only Sect. 5 and the counterterm do. Freezing the source at each cube centre and bounding the freezing errors by transversality, the cone homotopy, and Cauchy in the one constant c gives the pointwise flow 1/g_{j+1}²(x) = 1/g_j²(x) − B_{j+1}(f(x)) with all gradient terms irrelevant (α = 1), so h ≡ 0 (§4). B_j(c) is the β-increment of the constant-source theory; this removes the chain-rule problem. W is field independent and factors out exactly. Its mixed derivatives for disjoint supports are not zero, but they are finite and uniform in ε without any jet expansion; the 4-jet is needed only on the diagonal (§5). A freezing property plus a constant-source family on a larger disc keeps the source domain from shrinking over K steps (§6). The real-source route and the complex route are equivalent as statements; D2 complexifies only local or auxiliary variables (§7).

Ledger.

Proved in this file:
 - (a) order count, E5 verbatim, current = gradient, new vertices in Balaban's P^{(k)} class (§2.3).
 - (b) Lemma 3.1 (weighted Neumann series): C_f has Balaban's decay and regularity bounds (constants ×3, rate δ_0/2), positivity for real f, holomorphy, random-walk expansion. O6 of U3_REPAIRS does not apply (needs translation invariance).
 - (d) W: field independence, locality, exact factorization (§5.1); precise "drop-out" statement (§5.2), which corrects the task and SOURCES.md (S-C): only the local 4-jet part drops out of disjoint-support cumulants; the tails contribute finite, ε-uniform amounts.
 - (f) Lemma 7.1 (interpolation); equivalence of real and complex bounds; global Cauchy is legitimate at the unit scale (fixed volume).
 - Bookkeeping: u_j(c) via constant-source theories; h ≡ 0 admissible; no shrinkage of S_r (Cauchy in f only at the end).
 - The freezing estimate T_2 (Cauchy in c) and the transversality/cone reduction of T_1 (§4.3).

Reduced to a quoted Balaban estimate with a stated modification:
 - (c) Extraction: CMP 109 Sect. 4 verbatim (read: per-function WT identities and contour Taylor formula, no translation invariance); Sect. 5 per cube with a frozen constant source; counterterm A(B_j∘f, ·). Not done: line-by-line rerun of (4.34)–(4.45) and (5.43)–(5.44).
 - (e) Sourced (1.18) via CMP 109 Sect. 3 + CMP 116 with P_f^{(k)}; E_0 recovery via ε_1 (CMP 109 p. 280); sourced (0.29) with α_f = min(α, 1).
 - Family (A): Balaban's Theorem 3 with one extra translation-invariant vertex, holomorphic in c.
 - §6.3 uses analyticity of Balaban's step in its input activities. This is how his expansions converge, but he does not state it as a theorem; CMP 116's replacement remark is the closest quote.

Open:
 - (Hβ): sup_{|c| ≤ 2r} Σ_j |B_j′(c)| ≤ ½. Needed for |f_k| and |∇f_k| bounds and for the coupling condition. One-loop part is c-independent (D1), so this is two loops and beyond, uniformly in the history. Same item as SOURCES_VERIFY §8(c)(ii).
 - Convention (U): ρ_1 ≤ c_* r_0/M^a at λ_K = 1 (a fixed constant choice; r_0 = the Cauchy margin of the constant-source family, D2C (3.5)). Stated once with the order of constants; not a hypothesis on test functions (SOURCES_UN1 + VERIFY).
 - All large-field content: D3 (§8).
 - N1 for F flat on diagonals (SOURCES_VERIFY §5(b)): unchanged.
 - Balaban's (0.29) is OCR-garbled in the text file; the form used is SOURCES.md's reconstruction. Check the PDF before relying on α.

Changes to SOURCES.md / D1 claims: (S-A) holds with h ≡ 0 in a different but equivalent bookkeeping; (S-C) "drops out" holds only for the local jet part; (S-D) "β at the local coupling" is made precise as B_j(f(x)), the β-increment of the constant-source theory, which includes the dependence on earlier couplings.

## 1. Sourced inductive hypothesis H_k

Tags: [V] verbatim-checked here against balaban/*.txt; [proved] complete argument in this file; [reduced] reduced to a quoted Balaban estimate with a stated modification; [open] not done.

### 1.1 Notation

- ε = L^{−K}, λ_j := εL^j = L^{j−K} the physical spacing of T^{(j)} (last spacing 1, torus side ℓ). In Balaban's step-k units η = L^{−k}, so L^jη = λ_j/λ_k.
- Reference trajectory: g_j, Balaban's couplings at f = 0 (CMP 109 (0.20)). All analyticity domains U_j^c(X, α_0, α_1), cube sizes M, constants κ, γ are Balaban's for this trajectory.
- Constant-source trajectories (new definition). For a constant c with |c| ≤ 2r let u_j(c) := 1/g_j(c)² be the j-th coupling produced by the sourced construction itself with the constant source f ≡ c (§4.2), and B_j(c) := u_{j−1}(c) − u_j(c) its j-th β-increment. Since a constant source is translation invariant, this is Balaban's construction with one translation-invariant extra quadratic vertex (§3). By the exact Faddeev–Popov identity (CMP 109 (0.15)–(0.16): the gauge-fixing weight enters only through a field-independent normalization z) it equals Balaban's coupling for the bare coupling 1/g_0² − c, up to the dependence of the small-field cutoffs on the gauge-fixing weight, which is a large-field effect (D3). D2 does not use this identification. The definition needs only Balaban's Theorem 3 hypothesis 0 < g_j(c) ≤ γ along that trajectory, which holds for 2r ≤ ½(g_K^{−2} − γ^{−2}) [derived, SOURCES_VERIFY §7]. Defining u_j(c) through whole constant trajectories avoids the chain-rule problem of SOURCES_VERIFY §8(c)(ii) (β_j depends on all earlier couplings, CMP 109 p. 298): Φ_j(1/g_0² − c) := u_j(c) is a function of c by construction, and c_j-products are never needed.
- Effective source at level k: f_k(x) := g_k^{−2} − w_k(x), where w_k is the local coupling below. At k = 0, f_0 = f.
- Sources: f ∈ F_r := {f ∈ C^∞(T⁴; R): ‖f‖_∞ ≤ r, ‖∇f‖_∞ ≤ ρ_1}, physical units; ρ_1 is fixed, r small. Only C^1 enters D2; C^5 enters only the optional jet expansion of W (§5).

### 1.2 Hypothesis H_k (small-field part)

On the small-field region of CMP 109 Sect. 1 (U_k(V) ∈ U_k(ε_0)) the k-th sourced density is

  ρ_k^f(V) = exp(−W_k[f]) · exp( A_k^f(U_k(V)) ),   A_k^f(U) = −A(w_k, U) + E_k^f(U),   (H.0)

with A(w, U) := Σ_p w(x_p) P_p^{(η)}(U) Balaban's Wilson action on T_η with plaquette weights w (the constant-w case is his (1/g_k²)A^η). U_k(V) is Balaban's UNWEIGHTED minimizer (CMP 109 (1.1); E5 verbatim, SOURCES_VERIFY §6(d)). The four data are:

(H1) Local coupling. w_k(x) = u_k(f(x)) + h_k(x), with h_k real, C^1, and
  |h_k(x)| ≤ C_h M ρ_1 Σ_{j ≤ k} λ_j ≤ 2 C_h M ρ_1 λ_k,   |∇h_k| ≤ C_h ρ_1.
So w_k is the pointwise flow of the local bare coupling 1/g_0² − f(x), up to an irrelevant correction of size O(λ_k). Consequence used below: |f_k| ≤ 2r + 2C_h M ρ_1 λ_k =: r_k ≤ 3r once λ_k ≤ r/(2C_hMρ_1), and for larger λ_k we need ρ_1 ≤ r/(2C_hM); I take ρ_1 so small. Then g_k² |f_k| ≤ 3γ² r ≪ 1.

(H2) Regular terms. E_k^f(U) = Σ_{j=1}^k Σ_{X ∈ D_j} V^{(j)}(X, U; f), where each V^{(j)}(X, ·; f):
  (i) depends on (U, J)|_X and on f|_X only;
  (ii) has an analytic extension in (U, J) ∈ U_j^c(X, α_0, α_1), gauge invariant (1.19);
  (iii) is holomorphic in the finitely many complex variables f|_X on S_r(X) := {f: X → C, |f| ≤ r, |∇f| ≤ ρ_1} (∇ the lattice gradient in physical units; local complexification only; the global density is never complexified);
  (iv) satisfies the sourced (0.29): |V^{(j)}(X, (U,J); f)| ≤ E_0 O(1) (L^jη)^{4+α} exp(−κ d_j(X)) on U_j^c × S_r(X);
  (v) vanishes at U = 1, J = 0 (the sourced form of E^{(j)}(1) = 0);
  (vi) is covariant: V^{(j)}(rX, rU; f∘r^{−1}) = V^{(j)}(X, U; f) for lattice symmetries r of T^{(j)} (the source moves with the configuration; this replaces Balaban's invariance (2.29) of CMP 119);
  (vii) freezing property: for f ∈ S_r(X) and x ∈ X, |V^{(j)}(X, ·; f) − V^{(j)}(X, ·; f(x))| ≤ E_0 O(1)(Mλ_jρ_1/r)(1 + d_j(X)) (L^jη)^{4+α} e^{−κd_j(X)}, where V^{(j)}(X, ·; c) for a constant c is the term of the constant-source family (A) below.
  Constant-source family (A): for constants |c| ≤ 2r, the data V^{(j)}(X, ·; c), B_j(c), u_j(c) exist, satisfy (i)–(vi), and are holomorphic in c on |c| < 2r. (A) is Balaban's induction with a holomorphic parameter; it needs no freezing and no Cauchy step in c (§6.1).
The unextracted step terms E^{(j)}(X, ·; f) (before the coupling extraction of step j) satisfy the sourced (1.18): (i)–(iii), (v)–(vii) with the factor (L^jη)^{4+α} omitted, and |E^{(j)}| ≤ E_0 exp(−κ d_j(X)).

(H3) Contact functional. W_k[f] = Σ_{j ≤ k} Σ_{X ∈ D_j} w^{(j)}(X; f), a real number for each f, independent of V. Each w^{(j)}(X; f) depends on f|_X only, is holomorphic on S_r(X), vanishes at f = 0, and |w^{(j)}(X; f)| ≤ E_0 exp(−κ d_j(X)) (no (L^jη)^{4+α} factor: it is not small and is not required to be).

(H4) Source-free consistency. At f = 0 all data reduce to Balaban's: w_k = g_k^{−2}, h_k = 0, W_k = 0, V^{(j)}(X, U; 0) = his V^{(j)}. At constant f ≡ c: h_k = 0, w_k = u_k(c), and the data are translation covariant (the frozen theories of §4).

Sourced derivative bounds (consequence, not an extra hypothesis; used only at the end, so the domain S_r never shrinks inside the induction). By (iii)–(iv) and Cauchy's formula in the local variables f|_X only: for real f ∈ F_{r/2} with ‖∇f‖ ≤ ρ_1/2 and real directions φ_1, …, φ_n with ‖φ_i‖_∞ ≤ 1, ‖∇φ_i‖ ≤ ρ_1/r,
  |∂_{t}^{a} V^{(j)}(X, U; f + Σ t_i φ_i)|_{t=0} ≤ E_0 O(1) a! (r/2)^{−|a|} (L^jη)^{4+α} e^{−κ d_j(X)},
with a! = Π a_i!. Same for E^{(j)} and w^{(j)}. [proved, one line: polydisc of radius r/2 inside S_r(X)]

### 1.3 Target statement (sourced small-field step)

Theorem D2 (target). There are r_0 > 0, ρ_1 > 0 and constants as in CMP 109 Theorem 3 such that, if 0 < g_k ≤ γ for k ≤ K and f ∈ F_r with r ≤ r_0, then H_k ⇒ H_{k+1} for the small-field step (2.1) of CMP 109 with the sourced density, with E_0, κ, α, C_h independent of k, K, f.

§2–§7 give the step. The ledger (§0) records which parts are proved, which reduce to Balaban with a stated change, and which are open.

## 2. (a) Background-field split with position-dependent coupling

### 2.1 The sourced step

Sourced version of CMP 109 (2.1). Under H_k,
  ρ_{k+1}^f(W) = e^{−W_k[f]} N_k^{−1} ∫ dV δ(M(V) W^{−1}) χ_k exp[ −g_k^{−2} G(V) − A(w_k, U_k(V)) + E_k^f(U_k(V)) ],
with N_k Balaban's normalization at f = 0 (not f-dependent; this choice puts all field-independent f-dependence into W, §5). The gauge-fixing weight is the constant g_k^{−2}, as in Balaban. By the exact Faddeev–Popov identity (0.15)–(0.16) [V: "By the gauge invariance with respect to such transformations the integrand does not depend on u and the integral over u is equal to 1"] the choice of this weight changes the integral only through the small-field cutoffs; a source-dependent weight is never needed.

Split the weight: A(w_k, U) = g_k^{−2} A(U) − A(f_k, U), with f_k = g_k^{−2} − w_k, |f_k| ≤ r_k ≤ 3r (H1). The first term is Balaban's marginal term verbatim. The second term is a local, gauge-invariant, analytic function of U with coefficient f_k, i.e. a term of the same kind as E_k^f, but without smallness in (L^jη).

### 2.2 Critical point (E5 verbatim) [V + proved]

Balaban's critical point is the minimizer of V ↦ G(V) + A(U_k(V)) on {V: M(V) = W} (CMP 109 (2.2)), equal to U_{k+1}(W) in axial gauge ((2.3)). We keep it. The source term −A(f_k, ·) is not included in the variational problem. This is legitimate because Balaban's own effective action evaluates a weighted marginal term at the unweighted minimizer (CMP 119 (2.12) and (2.23) [V, SOURCES_VERIFY §6(d)]), and because the price is a linear vertex with a positive power of g_k (§2.3). So CMP 102 (variational problem), CMP 99 (background-field propagators), and the gauge transformations u_k, H_k(B′) of CMP 109 Sect. 2 are used without change. [V for the structure; proved for the order count below]

### 2.3 Expansion in the fluctuation field [proved, modulo Balaban's own expansions]

Use Balaban's variables B′ (CMP 109 (2.3)–(2.9)), the linearizing change B′ = B − hD(B), and the scaling B = g_k B′ ((2.10) ff.). Balaban's part of the exponent is unchanged: −g_k^{−2} A(U_{k+1}) − ½⟨B′, Δ^{(k)} B′⟩ + P^{(k)}(g_k, U_{k+1}, B′) + (the E_k-terms, his {…} in (2.12)). The linear term vanishes [V, p. 267]: "−(1/g_k)⟨H_1B′, J⟩ = 0 because ⟨δA′, J⟩ = 0 for all δA′ satisfying the condition QQ^*A′ = 0, and H_1B′ satisfies it."

The source term, with 𝔅 := H_1 g_k B′ − hD(g_k B′) + (higher terms of Balaban's map B′ ↦ U_k(e^{iB′}V^{(k)})) the full fluctuation of U_k, expands as

  +A(f_k, U_k) = A(f_k, U_{k+1}) + g_k ⟨J_{f_k}, H_1 B′⟩ + ½ g_k² ⟨B′, 𝒱_{f_k} B′⟩ + g_k³ R_3(B′; f_k),   (2.a)

  J_{f}(b) := Σ_{p ∋ b} f(x_p) P_p^{(1)}(U_{k+1})(b),   𝒱_f := H_1^* (Σ_p f(x_p) H_p(U_{k+1})) H_1 + (the D^{(2)} correction, local),

with P_p^{(1)}, H_p the first and second variations of P_p at U_{k+1} (supported on the links of p). R_3 is analytic in B′ for |B′| < α_1, cubic at 0, local, with coefficients bounded by |f_k| ≤ 3r.

Three facts, each with a complete argument:

(a1) Order count. The source enters with g_k^{+1}, g_k^{+2}, g_k^{+3} after scaling, while Balaban's action carries g_k^{−2}. So the only term with a negative power of g_k is still −A(w_k, U_{k+1}): the weighted marginal term at the new background. This is (H0) at level k+1 before the coupling extraction.

(a2) The current is a gradient. For constant f ≡ c, ⟨J_c, H_1B′⟩ = c ⟨∇A(U_{k+1}), H_1B′⟩ = 0 by the quoted identity. Hence ⟨J_{f_k}, H_1 B′⟩ = ⟨J_{f_k − f_k(x_□)}, H_1 B′⟩ for any reference point x_□, and on bonds within distance R of x_□ (T^{(k)} units),
  |J_{f_k − f_k(x_□)}(b)| ≤ O(1) R · λ_k ‖∇f_k‖_∞ · |P^{(1)}(U_{k+1})(b)| ≤ O(1) R λ_k ρ_1 ε_0,
using ‖∇f_k‖_phys ≤ (sup|u_k′| + C_h)ρ_1 = O(ρ_1) (§4.4) and the small-field bound |P^{(1)}(U_{k+1})| ≤ O(ε_0) (CMP 109 Sect. 1, |dU − 1| < ε_0η²). D1 §1.4 gives the sharper bound at one loop (second order in the background); not needed here.

(a3) Class of the new vertices. g_k⟨J, H_1B′⟩, ½g_k²⟨B′, 𝒱 B′⟩ and g_k³R_3 are local (range O(L) in T^{(k)} units, after H_1, which is local up to Balaban's exponentially decaying parts of H_1 — those are handled by his random-walk localization as for every other vertex), analytic in (U_{k+1}, J_{k+1}) on Balaban's extended domain by the substitution (3.1) [V: "This extension is obtained by replacing the function J_{k+1} in all propagators and operators by the variable J, and by replacing the configuration U_{k+1} in all other places by the variable U"], holomorphic in f|_X on S_r, and bounded by O(g_k)(1 + |B′|²) per bond. This is exactly Balaban's class for P^{(k)} [V up to OCR: the printed "O(g_k)" is garbled as "O ^ )"; CMP 109 p. 269: P^{(k)} "is bounded by a second order polynomial in B, with coefficients of the order O(g_k), hence it can be treated as a small perturbation of the basic quadratic form in the Gaussian measure dμ_{C^{(k)}}"]. So the sourced step is Balaban's step with P^{(k)} replaced by

  P_f^{(k)} := P^{(k)} + g_k⟨J_{f_k}, H_1B′⟩ + ½g_k²⟨B′, 𝒱_{f_k}B′⟩ + g_k³R_3(B′; f_k),   (2.b)

and with E_k replaced by E_k^f. Nothing else changes in Sect. 2 of CMP 109.

(a4) Gauge and Euclidean covariance. Gauge invariance (2.16) holds because A(f_k, ·) is gauge invariant for every f_k. Euclidean invariance (2.17)–(2.18) becomes covariance: the step commutes with r if f is replaced by f∘r^{−1}. This gives (H2)(vi) at level k+1.

Remark (alternative). One may instead move ½g_k²⟨B′, 𝒱 B′⟩ into the Gaussian measure. §3 shows that the propagator of the modified form has Balaban's bounds. Both routes give the same E^{(k+1)}; route (2.b) is the shorter one, because it changes nothing in Balaban's measure.

## 3. (b) Fluctuation integral: propagator for Δ_f

Route (2.b) needs no new propagator: the source vertex is part of P_f^{(k)}, and Balaban's measure dμ_{C^{(k)}} is untouched. The lemma below covers the alternative route (b′) (source Hessian in the measure), and it is also what the frozen comparison of §4 and the derivative bounds of §7 use, because there one wants C_f as an object. It is a perturbation of a positive form with exponential decay, proved from position-space bounds only.

### 3.1 Why O6 of U3_REPAIRS does not apply

Theorem O6 (U3_REPAIRS.md) bounds the per-coarse-momentum bordered matrix 𝔅_j(K)^{−1} at the trivial background. It needs translation invariance (a Fourier block decomposition). A non-constant f breaks it, and the background U_{k+1} is not trivial. So O6 gives nothing for Δ_f except at constant f and trivial background, where it gives the one-loop frozen data of §4. The lemma below uses only Balaban's position-space decay.

### 3.2 Input from Balaban (quoted)

(P) Exponential decay of the fluctuation propagator and of the operators built from it, uniform in k, on the complex domain of background fields. CMP 109 p. 271 [V]: "The derivative (δ/δB)H is an exponentially decaying function, with the decay rate δ_0 on the ξ-scale, see Proposition 9, (190) [15]." CMP 116 p. 3 [V]: the random-walk terms satisfy (1.7) and "This bound holds for all operator norms in formulations of theorems in [13], e.g. in Theorem 3.1." Abstracted form used here: with C_0 := C^{(k)} = (C^*Δ^{(k)}C)^{−1} (CMP 109 p. 268 [V]: "the covariance C^{(k)} = C^{(k)}(U_{k+1}) = (C^*Δ^{(k)}C)^{−1}"),
  |(∂_L C_0 ∂_R)(x, y)| ≤ c_0 e^{−δ_0 d(x,y)}
for ∂_L, ∂_R ∈ {1, the first-order and the special second-order operators of CMP 109 (1.8)}, H_1 included, c_0 and δ_0 independent of k.

### 3.3 Lemma (weighted Neumann series) [proved]

Kernels A on the fluctuation index set (bonds × colour of T_η restricted to the variables kept after the δ(QB) elimination). Norm, for δ ≥ 0:
  ‖A‖_δ := max{ sup_x Σ_y |A(x,y)| e^{δd(x,y)}, sup_y Σ_x |A(x,y)| e^{δd(x,y)} }.
Facts: (F1) ‖AB‖_δ ≤ ‖A‖_δ‖B‖_δ (triangle inequality in the exponent); (F2) |A(x,y)| ≤ ‖A‖_δ e^{−δd(x,y)}; (F3) ‖A‖_{ℓ²→ℓ²} ≤ ‖A‖_0 ≤ ‖A‖_δ (Schur test). With δ := δ_0/2 and the lattice volume growth #{y: d(x,y) ≤ n} ≤ c_4(1+n)^4, (P) gives ‖∂_L C_0 ∂_R‖_δ ≤ c_1 := c_0 c_4 Σ_n (1+n)^4 e^{−δ_0 n/2}.

Let 𝒲 be a symmetric kernel with ‖𝒲‖_δ ≤ w_0 r (for the source: 𝒲 = C^*𝒱_{f_k}C, 𝒱 from (2.a); C is local, H_1 obeys (P), Σ_p|f_k H_p| ≤ 3r·O(1); so w_0 depends only on Balaban's constants). Put τ := g_k² w_0 r c_1.

Lemma 3.1. If τ ≤ ½, then:
 (i) C_f := (C_0^{−1} − g_k²𝒲)^{−1} exists and equals Σ_{n≥0} C_0(g_k²𝒲C_0)^n;
 (ii) ‖C_f‖_δ ≤ 2c_1 and ‖C_f − C_0‖_δ ≤ 2c_1τ; hence |C_f(x,y)| ≤ 2c_1 e^{−δ_0 d(x,y)/2};
 (iii) for the same ∂_L, ∂_R: ‖∂_L C_f ∂_R − ∂_L C_0 ∂_R‖_δ ≤ 2c_1τ; so every bound of (P) holds for C_f with c_0 → 3c_1 and δ_0 → δ_0/2;
 (iv) for real f, C_0^{−1} − g_k²𝒲 ≥ (1 − τ) C_0^{−1} > 0, so C_f is the covariance of a Gaussian measure;
 (v) C_f is holomorphic in (U, J) on Balaban's complex domain and in complex f|_X with |f| ≤ r, with the same bounds;
 (vi) C_f has a generalized random-walk expansion: insert Balaban's expansion (CMP 116 (1.6)) of each C_0 factor in (i); each 𝒲 factor is one extra local step of weight ≤ g_k² w_0 r.

Proof. (i)–(ii): by (F1), ‖C_0(g_k²𝒲C_0)^n‖_δ ≤ c_1 τ^n; sum the geometric series; C_f(C_0^{−1} − g_k²𝒲) = 1 is checked termwise. (iii): iterate the resolvent identity twice, C_f = C_0 + C_0 g_k²𝒲 C_0 + C_0 g_k²𝒲 C_f g_k²𝒲 C_0, apply ∂_L on the left and ∂_R on the right, and use (F1): the correction is ≤ τ c_1 + τ² · 2c_1 ≤ 2τc_1. (Only ∂_L C_0 and C_0 ∂_R are needed; the inner factors carry no derivative.) (iv): C_0^{−1} − g_k²𝒲 = C_0^{−1/2}(1 − g_k² C_0^{1/2}𝒲C_0^{1/2})C_0^{−1/2} and ‖C_0^{1/2}𝒲C_0^{1/2}‖ ≤ ‖C_0‖‖𝒲‖ ≤ c_1w_0r by (F3). (v): locally uniform convergence of a series of holomorphic functions. (vi): termwise. ∎

### 3.4 What (b) delivers, and what is left

Delivered [proved, given (P)]: every bound on the fluctuation propagator that Balaban's Sect. 3–4 and CMP 116 use holds for C_f with constants changed by a factor ≤ 3 and the decay rate halved. Halving δ_0 is harmless: Balaban fixes M ≥ M(κ) after δ_0, so M is chosen for δ_0/2 instead.

Normalization. In route (b′) the Gaussian normalization changes by det(1 − g_k²C_0^{1/2}𝒲C_0^{1/2})^{−1/2} = exp(½Σ_n (g_k^{2n}/n) tr (C_0𝒲)^n). Each trace is a closed walk with n 𝒲-steps; by (vi) and (F2) it localizes with the decay of (P). Its value at U = 1 goes to W_{k+1} (§5); the rest goes to E^{(k+1)}. This is SOURCES.md §2.4(b) and D1 §1.4 made non-perturbative in f; D1 (2.1) is its constant-f case.

Open [reduced]: (P) itself for complex configurations is Balaban's (CMP 95/96/99, Theorem 3.1 of [13] as cited in CMP 116). The lemma uses it as a black box. It needs no new property of (P), only uniformity in k, which Balaban states.

## 4. (c) Local coupling flow Φ_{k+1}

### 4.1 Where Balaban uses a constant coupling (reading of CMP 109 Sect. 3–5) [V]

(T1) Sect. 3–4 do NOT use translation invariance. The expansion (3.3)–(3.7) is per term E^{(j)}(X, ·); the local coordinates U = exp iηH and the fifth-order Taylor remainder are per cube □ (p. 258 [V]: "we expand the last expression in H up to the fifth order. The fifth order term can be bounded by E_0 O((L^jη)^5) exp(−κd_j(X))"). The Ward–Takahashi identity (4.9) is derived from the gauge invariance (4.7) of one function. The reductions (4.21)–(4.29) of the third- and fourth-order terms to E^{(2)} use (4.3), (4.9), (4.15), the contour Taylor formula (4.30), and exponential decay, all per function, at a fixed base point x. With a source, f is a passive parameter of each E^{(j)}(X, ·; f), which is gauge invariant for every f. So Sect. 3–4 run verbatim. [V for the structure; the per-line check of ~25 pages is part of D2's remaining reading]

(T2) Sect. 5 uses translation invariance in three places: (5.8) [V] "The function Π is also translation invariant and symmetric, hence Π_{μν}(x,y) = Π_{μν}(x − y)"; the momentum representation (5.11)–(5.37) built on it; and the definition (1.20)–(1.22) of β_{j+1} through the limit T^{(j+1)} ↗ Z^d of the translation-invariant tensor. The outcome is (5.37) [V up to OCR]: Π_{μν}(p) = β(δ_{μν}Δ(p) − d_μ(p) d̄_ν(p)) + Π′_{μν}(p), with Π′ of third order in d(p), d̄(p), and (5.43): Σ Π_{μν}(x − y) tr δB_μ(x)B_ν(y) = β Σ tr(dδB)_{μν}(x)(dB)_{μν}(x) + (third-order terms, irrelevant).

(T3) The counterterm −β_j(g_{j−1}) A(U) uses one constant β_j for the whole small-field region (CMP 109 (0.23); CMP 119 (2.25) [V, SOURCES_VERIFY §6(b)]).

Only (T2) and (T3) must be rerun with a non-constant source.

### 4.2 Frozen theories

For a constant c ∈ C, |c| ≤ r, the frozen theory is the sourced construction with f ≡ c. It is translation invariant, so Sect. 5 of CMP 109 applies to it verbatim and defines Π^{(c)}, Π′^{(c)}, and B_{j}(c) := its β-coefficient (5.41)–(5.42). Since every localized term is holomorphic in f|_X (H2)(iii), Π^{(c)}(x) is holomorphic in c with Balaban's bound (5.10) uniform in c; so B_j(c) and Π′^{(c)} are holomorphic in |c| < 2r (family (A)), and |∂_c^n B_j(c)| ≤ n! r^{−n} sup_{|c'|<2r}|B_j| on |c| ≤ r (Cauchy in one scalar variable with the fixed margin r; no global complexification of a density, no shrinkage). [proved, given (A)]

Define u_j(c) := u_{j−1}(c) − B_j(c), u_0(c) := g_0^{−2} − c. This is the scalar flow Φ_j of SOURCES.md (S-A), now with the β-increment of the frozen theory, which automatically includes the dependence on all earlier couplings (CMP 109 p. 298 [V]: "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants").

### 4.3 Extraction with a non-constant source [reduced]

Fix step j and the sourced polarization Π^f(x, y) := second variation at B = 0 of Σ_X E^{(j)}(X, U_j(exp iB); f) (CMP 109 (5.1)). It is transverse on both sides ((5.9), from gauge invariance, per term), covariant under lattice symmetries with f moved ((H2)(vi)), and has the decay (5.10). It is not translation invariant. Decompose

  Q^f(δB, B) := Σ Π^f(x, y) tr δB(x)B(y) = Σ_P B_j(f(x_P)) tr(dδB)(P)(dB)(P) + Rest^f(δB, B).   (4.a)

Claim: Rest^f is irrelevant: per cube it is bounded by Balaban's third-order bound (5.43)–(5.44) plus O(M^7ρ_1/r)(L^jη)^5. Argument (Balaban localizes B = ζ_□Q_j(ηA) to □^4 at the start of Sect. 4, so everything is per cube):
 (1) Freeze at the cube centre: c_□ := f(x_□). For the constant c_□, (5.37) and (5.43) give Q^{(c_□)}(δB, B) = Σ_P B_j(c_□) tr(dδB)(P)(dB)(P) + Q′^{(c_□)}(δB, B), where Q′ is Balaban's third-order part, irrelevant by (5.44). This is Sect. 5 verbatim for one translation-invariant theory.
 (2) Then Rest^f = Q′^{(c_□)} + T_1 + T_2 with
   T_1 := Q^f − Q^{(c_□)}  (kernel Π^f − Π^{(c_□)}),
   T_2 := Σ_P [B_j(c_□) − B_j(f(x_P))] tr(dδB)(P)(dB)(P).
 (3) T_2: |B_j(c_□) − B_j(f(x_P))| ≤ r^{−1} sup|B_j| · Mλ_jρ_1 on □^4 (Cauchy in c on the margin r of family (A)). So T_2 is a marginal-type form with a coefficient of size O(Mλ_jρ_1/r) ≤ O(Mρ_1/r)(L^jη), i.e. irrelevant with α = 1, using λ_j = L^{j−K} ≤ L^{j−k} = L^jη.
 (4) T_1: on each X ⊂ □^4 the sources f and c_□ differ by ≤ O(M)λ_jρ_1, so by the freezing property (H2)(vii) at the base point of X plus the c-Lipschitz bound of (A) to move the base point to x_□, the kernel of T_1 is bounded by O(Mλ_jρ_1/r) times Balaban's bound (5.10). (A first version of this file used Cauchy in f|_X here; that shrinks the source domain at every step and is wrong over K steps. §6.1 gives the repair.) T_1 is transverse on both sides, as a difference of two transverse forms ((5.9) holds for Π^f and Π^{(c_□)} separately). On the cube use the cone homotopy h based at x_□: every 1-form is B = dλ_B + h(dB), |h(F)(y)| ≤ Σ_{P on the cone path to y}|F(P)| (Balaban's contour formula (4.23)/(4.30) with a fixed base point). Transversality gives T_1(δB, B) = T_1(h dδB, h dB). So |T_1| ≤ O(M²)(cone lengths) · O(M⁴)(points) · O(Mλ_jρ_1/r) · |dδB||dB| ≤ O(M^7ρ_1/r)(L^jη)^5 per cube, by (4.17).
 (5) Power counting behind (3)–(4): a ∇f factor costs λ_jρ_1 ≤ (L^jη)ρ_1 in T^{(j)} units. A marginal form with a ∇f factor is therefore irrelevant (α = 1), provided the form keeps its two curvatures dδB, dB — which transversality guarantees. A summation by parts against an x-dependent coefficient would only preserve powers; freezing at x_□ avoids it.
Conclusion: the marginal part of step j is A(B_j∘f, ·) and Rest^f is irrelevant with α_f := min(α, 1).

The same frozen comparison is applied to the expansion of the counterterm A(B_j∘f, ·) in the cube □ (Balaban's (4.42)–(4.45)); its x-dependence differs from the frozen B_j(c_□)A(·) on □ by a T_2-type term, irrelevant as in (3). The fact used after (5.44) [V: "the first and second order derivatives of the function Π′_{μν}(p) vanish at p = 0"] is applied to each frozen Π′^{(c)}.

Status: reduced to Balaban's Sect. 4–5 with three stated modifications: (i) a frozen theory per cube replaces the translation-invariant Π; (ii) the freezing errors T_1, T_2 are bounded by Cauchy in the local source variables plus transversality and the cone homotopy; (iii) the counterterm A(B_j∘f, ·) replaces β_j A(·). Not done: the line-by-line rerun of (4.34)–(4.45) and (5.43)–(5.44) with these modifications.

### 4.4 Result: the pointwise recursion

With this bookkeeping all gradient corrections (including the dimension-6 terms of D1 §2.3, ∂∂f tr F², f(DF)², …) go into the irrelevant V^{(j+1)}. So

  1/g_{j+1}²(x) = 1/g_j²(x) − B_{j+1}(f(x)),  i.e.  w_j = u_j∘f exactly, and (H1) holds with h_k ≡ 0.   (4.b)

The O(ε²∇²) term of the task statement is present but is booked as an irrelevant term, not as a change of coupling. Booking it into h instead (SOURCES.md (S-A)) is also consistent, with |h_k| ≤ O(Mρ_1λ_k); the two bookings differ by an irrelevant term.

D1 consistency: at one loop B_j(c) does not depend on c (D1 (2.1): c_1 = 1 exactly), and the f-linear response at source momentum 2p is O(p⁴) (D1 §4, numerics). Both agree with (4.b) and with §4.3(5).

Needed for (H1) and (a2), and open: (Hβ) sup_{|c| ≤ r} Σ_{j ≤ K} |B_j′(c)| ≤ ½. Then |u_k′| ≤ 3/2, |f_k| ≤ 3r/2, |∇f_k| ≤ (3/2)ρ_1, uniformly in k. (Hβ) follows from |B_j′(c)| ≤ C g_{j−1}³, because Σ_j g_j³ = O(γ). Holomorphy alone gives only |B_j′| ≤ 2C/r, which is not summable. Since the one-loop part of B_j is c-independent (D1), (Hβ) is a statement about two loops and beyond, uniformly in the history. It is SOURCES_VERIFY §8(c)(ii) in another form. [open]

Unit-scale condition (U). The irrelevance constant carries ρ_1M/r. With λ_j ≤ L^jη alone, Balaban's E_0 is recovered only if (U) ρ_1 ≤ c_* r_0/M^a at λ_K = 1 (a fixed constant choice; r_0 = the Cauchy margin of the constant-source family, D2C (3.5)), for a fixed power a (a = 7 with the crude cone bound of §4.3(4); Balaban's local base points would lower it). A scale-matched reading (unit scale N_0 L-steps below the test-function scale) would make the unit lattice depend on h and is not used (SOURCES_UN1 §3.1). [proved; a constant choice]

## 5. (d) Jet functional W_{k+1}[f]

### 5.1 Definition and field independence [proved]

Balaban removes the field-independent part of each step by the normalization N_k (CMP 109 p. 258 [V]: the vacuum energy counterterm "is contained in the normalization factors in the integrals (0.17), (0.19), hence we may assume that it is included already in the definition of the function E^{(j)}, and E^{(j)}(1) = 0"; also p. 268 [V]: "the normalization constant N_k is equal to the integral above at U_{k+1} = 1"). We keep N_k at f = 0 (§2.1). Then the sourced step term at the trivial background is not zero. Define, for X ∈ D_{k+1},

  w^{(k+1)}(X; f) := E^{(k+1)}(X, (1, 0); f),   E^{(k+1)}_{sub}(X, (U,J); f) := E^{(k+1)}(X, (U,J); f) − w^{(k+1)}(X; f),

  W_{k+1}[f] := W_k[f] + Σ_{X ∈ D_{k+1}} w^{(k+1)}(X; f).   (5.a)

This is the sourced form of CMP 119 (2.25) [V], which subtracts E^{(j)}(Λ_j, g_{j−1}, 1). Properties:
 (i) Field independence: w^{(k+1)}(X; f) is evaluated at U = 1, J = 0, so it does not depend on V or W. exp(−W_{k+1}[f]) factors out of every later integral exactly, because every later RG step is an integral over field variables only. W_k is never expanded, integrated, or bounded again.
 (ii) Locality: w^{(k+1)}(X; f) depends on f|_X only, is holomorphic on S_r(X), vanishes at f = 0 (Balaban's E^{(j)}(1) = 0), and |w^{(k+1)}(X; f)| ≤ E_0 e^{−κd_{k+1}(X)} by the sourced (1.18). So (H3) holds at k+1.
 (iii) E^{(k+1)}_{sub} vanishes at (U, J) = (1, 0): (H2)(v) at k+1. The coupling extraction of §4 is done on E_{sub}, as Balaban does it on E with E(1) = 0.
 (iv) Gauge invariance: trivial (no field).

Which pieces enter w: (a) the f-dependent normalization of the Gaussian part (route (b′): ½Σ_n g^{2n}/n tr(C_0𝒲)^n at U = 1; D1 (2.1) and C(q) are its one-loop content); (b) the f-dependent part of the cluster expansion of e^{P_f^{(k)}} at U = 1; (c) the values at U = 1 of the moved E_k^f terms (zero by (H2)(v)) and of the current term (zero, since J_f = 0 at U = 1, D1 §1.4). [proved]

### 5.2 What "drops out" means, precisely [proved; corrects the task statement]

The task asks to show that W is local with ≤ 4 derivatives and drops out of all off-diagonal Schwinger functions. As stated, this is too strong. Precisely:

 (P1) Exact statement. Let f = Σ_i z_i f_i with pairwise disjoint supports at distance ≥ δ > 0. A term w^{(j)}(X; f) contributes to the mixed derivative ∂_{z_1}…∂_{z_n} (n ≥ 2, all z_i distinct) only if X meets at least two supports, because w^{(j)}(X; ·) depends on f|_X only. Such X have d_j(X) ≥ δ/(Mλ_j) − 1. Hence, by the derivative bound of §1.2 and the count of such X,
   |∂_{z_1}…∂_{z_n} W_K| ≤ E_0 O(1) (2/r)^n Σ_j N_j e^{−κδ/(2Mλ_j)},
 where N_j is the number of X ∈ D_j that meet supp f_1 (≤ O((Mλ_j)^{−4}) times a geometric factor). The sum over j converges uniformly in K: the terms are super-exponentially small for Mλ_j ≪ δ, and there are O(log_L(1/δ)) terms with Mλ_j ≳ δ. So W's mixed derivatives are finite, uniform in ε, and of the same n!(2/r)^n type as the rest. They are part of the cumulant, computed by the same expansion; they are not zero.

 (P2) Local part. Only the part of W that is a sum Σ_x P(4-jet of f at x) has exactly zero mixed derivatives for disjoint supports (SOURCES_VERIFY §5(a)). The nonlocal tails of w^{(j)} contribute as in (P1).

 (P3) Where the 4-jet is needed. The jet split w^{(j)} = (local 4-jet polynomial) + (remainder of order λ_j^{5}|∂^5 f|·λ_j^{−4} per volume) is needed only for (a) coincident-point (diagonal) derivatives, where W diverges like ε^{−4}, and (b) the N1 problem for F flat on diagonals (SOURCES_VERIFY §5(b)). For disjoint supports (P1) needs no jet expansion at all. The jet expansion itself is Balaban's Taylor expansion in the field (p. 258), applied to the source variables f|_X around x_□; with five f-derivatives bounded (C^5 sources) it gives local polynomials P^{(j)} of the 4-jet with |P^{(j)}| ≤ O(1) E_0 (Mλ_j)^{−4} per unit volume and a summable remainder. Sizes as in SOURCES.md (S-C) with the unit fix of SOURCES_VERIFY §7. [derived; not needed for D2]

### 5.3 Why no field-dependent relevant source term exists [proved, given §4]

The field-dependent f-terms of the step are: the marginal A(B_{k+1}∘f, ·) (§4) and irrelevant terms. A field-dependent relevant term would need a gauge-invariant local operator of dimension < 4 (dimension 0 is the field-independent W). There is none: every gauge-invariant local function of the links is a function of Wilson loops, whose small-field expansion starts at F² (D1 ledger 3; SOURCES_VERIFY §8(a)). In the proof this enters only through (5.9) (transversality) and (4.9) (the WT identity), which forbid mass-type terms in E_sub; the frozen comparison (§4.3) shows the source does not create one.

## 6. (e) Remainder bounds (0.25)/(0.29) in the sourced norm

### 6.1 The constant-source family (A) [reduced]

For a constant c, the tangential current vanishes (§2.3 (a2)), and the source vertex is ½g_k²c⟨B′, 𝒱_1B′⟩ + g_k³cR_3(B′; 1) with 𝒱_1 := 𝒱 at f ≡ 1: translation invariant, polynomial in c, of Balaban's P^{(k)} class. So (A) at level k+1 is Balaban's step with a vertex that is holomorphic in c. Balaban's step is analytic in its parameters [V, CMP 109 p. 263: E^{(j)} "is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic)"; p. 266: with the cutoff g_k/y_k ε_1 "the functions E^{(j)}, β_j are analytic functions of the effective coupling constants"]. In our formulation c never enters the reference coupling g_k used for scaling, only vertices with coefficient g_k²f_k(c), f_k(c) = g_k^{−2} − u_k(c). So (A) holds on |c| < 2r provided |g_k² f_k(c)| ≤ 3γ² r there, which is (Hβ) on the complex disc of radius 2r. [reduced: Balaban's Theorem 3 with one extra translation-invariant analytic vertex; the extra vertex is of his P^{(k)} class]

### 6.2 Propagation of (H2)(i)–(vi) for E^{(k+1)} [reduced]

The new term E^{(k+1)} is (2.13) with P^{(k)} → P_f^{(k)} and E_k → E_k^f. Balaban builds its localized representation in CMP 109 Sect. 3 (expansion and preliminary analytic extension) and CMP 116 (cluster expansion with generalized random walks and decoupling parameters s(Δ)). Changes:
 - Locality in f: f enters only through local vertices and through E_k^f terms that depend on f|_X. CMP 116 p. 3 [V]: "Each factor in (1.6) depends on external gauge field configurations restricted to the corresponding domain X_j". The decoupling assigns every vertex to the cubes it touches, so a localized output term depends on f restricted to its domain. (H2)(i).
 - Holomorphy in f|_X on S_r(X): every operation in the construction (products, the random-walk sums, the cluster expansion, Balaban's Cauchy integrals in the auxiliary variables t_□ (3.15)) is holomorphic in the inputs, and the sums converge uniformly on S_r. No Cauchy estimate in f is taken inside the induction, so S_r does not shrink. (H2)(iii).
 - Bound E_0 e^{−κd}: the new vertices are bounded by O(g_k)(1 + |B′|²) with constants (1 + O(r) + O(λ_kρ_1ε_0)) times Balaban's; Balaban's recovery of E_0 [V, CMP 109 p. 280: "Eventually we have to recover the constant E_0 in the inductive assumption (1.18), and the mechanism for it is provided by the differentiation with respect to t_□, at t_□ = 0. This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant"] absorbs a fixed extra factor.
 - Covariance with f moved: §2.3 (a4). Vanishing at U = 1: §5.1.

### 6.3 Propagation of the freezing property (H2)(vii) [proved, given analyticity of Balaban's step in its inputs]

Fix an output domain Y ∈ D_{k+1}, y ∈ Y, c := f(y). Compare the step with source f and with the constant c. The inputs are: the E_k-terms V^{(j)}(X; ·), the vertices J, 𝒱, R_3. For the constant c, the inputs are those of family (A). Input differences:
 - V^{(j)}(X; f) − V^{(j)}(X; c): by (vii) at the base point x ∈ X and the c-Lipschitz bound of (A) (Cauchy in c with margin r, |f(x) − c| ≤ λ_jρ_1 dist(x, y)): ≤ O(Mλ_jρ_1/r)(1 + d_j(X) + dist(X, y)) × (the bound of V^{(j)}(X)).
 - J_f (tangential) and 𝒱_f − 𝒱_c, R_3(f) − R_3(c): ≤ O(λ_kρ_1)(1 + dist(·, y)) × (Balaban's vertex bounds).
Interpolate: I(t) := I(c) + t(I(f) − I(c)) for t ∈ C. The step is a holomorphic map of its inputs on the set where the inputs obey the inductive bounds with E_0 → 2E_0 (this is how Balaban's cluster expansion converges; CMP 116 p. 3 [V]: "In these equations we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds"). The weighted input difference is ≤ O(Mλ_{k+1}ρ_1/r) relative to the bounds, after the factors (1 + dist) are absorbed by half of the decay; so I(t) is admissible for |t| ≤ R := c′ r/(Mλ_{k+1}ρ_1), which is ≥ 2 by (U). Cauchy in the scalar t gives
  |out_Y(f) − out_Y(c)| ≤ (2/R) sup_{|t|≤R}|out_Y(I(t))| ≤ O(Mλ_{k+1}ρ_1/r)(1 + d_{k+1}(Y)) E_0 e^{−κd_{k+1}(Y)}.
t is an auxiliary variable like Balaban's t_□; I(t) is not a source configuration; S_r is not used. This is (vii) for E^{(k+1)} at level k+1 (since λ_j ≤ λ_{k+1}).

### 6.4 The sourced (0.29) [reduced]

V^{(k+1)} := E^{(k+1)}_{sub} minus its extracted marginal part A(B_{k+1}∘f, ·) (§4). Balaban's (0.29) [reconstructed from OCR; the printed form is |V^{(j)}(X, U)| ≤ E_0 O(1)(L^jη)^{4+α} exp(−κd_j(X)), α > 0, as in SOURCES.md] holds for V^{(k+1)} with α_f = min(α, 1) and E_0 times (1 + O(M^7ρ_1/r)), by §4.3 (T_1, T_2) plus Balaban's own Sect. 4–5. The constant is absorbed as in §6.2 under (U). (vii) for V^{(k+1)} follows from (vii) for E^{(k+1)} and (A), since the extraction is linear in E and the frozen extraction at c is (A)'s.

Uniform UV bound. Summing (0.29) as in CMP 109 (0.30) gives |E_K^f| ≤ O(1)|T_η| uniformly in K and in f ∈ S_r (small-field part). So, on the small-field region,
  ρ_K^f = e^{−W_K[f]} × exp(−A(u_K∘f, U_K) + O(|T_η|)),
the sourced form of Balaban's UV stability in the small-field region.

## 7. (f) Real-source derivative bounds

### 7.1 What is equivalent and what is not [proved]

Real bounds |∂_z^a F(z)| ≤ C a! ρ^{−|a|} on a real box (a! = Π a_i!) are equivalent to a holomorphic extension of F to the complex polystrip {|Im z_i| < ρ} with |F| ≤ C Π(1 − |Im z_i|/ρ)^{−1}: the Taylor series at each real point converges in the polydisc of radius ρ. So "real sources with α! r^{−|α|} bounds" and "complex sources" are the same statement. They differ in the proof technique only. What must not be complexified is a global positive density whose positivity is used, i.e. the R-operation denominators of D3 (CMP 122 I p. 176 [V, SOURCES_VERIFY §9]). D2 never uses positivity: the small-field step is a Gaussian integral plus convergent analytic expansions. So in D2 local holomorphy in f|_X is free, and D2 complexifies only (a) finitely many local source variables f|_X, (b) the scalar constant c of family (A), and (c) auxiliary variables t (§6.3). None of these complexifies a global density.

Two further facts. (i) Cauchy is applied to f only at the end (§1.2), so the source domain S_r does not shrink with the number of steps (§6.3 replaces the inductive use of Cauchy in f by the freezing property). (ii) At the unit scale the remaining integral is over the fixed lattice T^{(K)} of fixed size N_u⁴, independent of ε. There a global complexification is harmless: for |Im f| ≤ τ, |∫ e^{S(f)}| ≥ ½ ∫ e^{S(Re f)} once τ · 2 · (number of plaquettes of T^{(K)}) · (sup of the f-response per plaquette) ≤ 1/2, a condition independent of ε. So Cauchy at the unit scale gives n!-bounds with a radius depending on N_u and r only.

### 7.2 Interpolation lemma (no Cauchy) [proved]

Lemma 7.1. (a) For g ∈ C²([−a, a]) and 0 < h ≤ a: ‖g′‖ ≤ 2‖g‖/h + (h/2)‖g″‖. Hence ‖g′‖ ≤ 2(‖g‖‖g″‖)^{1/2} + 2‖g‖/a.
(b) Let Q = [−a, a]^n, F_K, F: Q → R, F_K ∈ C^{m+1}(Q), sup_K max_{|β| ≤ m+1} ‖∂^βF_K‖_Q ≤ A, and F_K → F uniformly on Q. Then F ∈ C^m(Q) and ∂^βF_K → ∂^βF uniformly for |β| ≤ m.

Proof. (a) For x ∈ [−a, a] pick s = ±1 with x + sh ∈ [−a, a]. Taylor: g(x + sh) = g(x) + sh g′(x) + ½h² g″(ξ). So |g′(x)| ≤ 2‖g‖/h + (h/2)‖g″‖. Take h = min(a, 2(‖g‖/‖g″‖)^{1/2}). (b) Put G = F_K − F_{K′}. By induction on |β| ≤ m: if ‖∂^{β′}G‖ → 0 for |β′| < |β|, write ∂^β = ∂_i∂^{β−e_i} and apply (a) in the variable x_i to ∂^{β−e_i}G, whose second x_i-derivative has order ≤ m+1, hence norm ≤ 2A. So ‖∂^βG‖ ≤ 2(2A‖∂^{β−e_i}G‖)^{1/2} + 2‖∂^{β−e_i}G‖/a → 0. The sequences ∂^βF_K are uniformly Cauchy; their limits are the derivatives of F (uniform limits of derivatives). ∎

Use. With sourced bounds of order m+1 uniform in ε (D3–D4 output) and convergence of the generating function at a fixed layer (E14-d = E13), all mixed derivatives of order ≤ m converge: (N2) for cumulants up to order m. Without E13, Arzelà–Ascoli on the uniformly bounded C^{m+1} family gives subsequences along which all derivatives of order ≤ m converge, diagonal in m: (N1) and subsequential limits. No Cauchy formula and no complex coupling are used in this step.

### 7.3 Where the n! comes from [proved for the small-field part]

For f = Σ z_i f_i with disjoint supports, ∂_{z_1}…∂_{z_n}(log Z_ε − W_K) is a sum over localized terms of all scales that meet all n supports, plus the unit-scale integral. Each localized term gives (2/r)^n (first-order in each z_i, a! = 1) times its bound (§1.2); the sum over terms meeting all supports converges uniformly in ε as in §5.2 (P1). The unit-scale integral gives Cⁿ n! by 7.1(ii). So the small-field part gives |cumulant| ≤ Cⁿ n! with C independent of ε. The large-field part is D3.

## 8. What D3 needs from D2

D3 = the sourced large-field step and R operation (CMP 119 Sect. 3, CMP 122 I–II). It receives H_k from D2 and must return H_{k+1} on the full configuration space. Interface:

1. Coupling. Balaban's local coupling (CMP 119 (2.24) [V, SOURCES_VERIFY §6(a)]) 1/g_j²(x) = 1/g_{j−1}²(x) − β_j(g_{j−1})φ_j(x) becomes 1/g_j²(x) = 1/g_{j−1}²(x) − B_j(f(x))φ_j(x). In the small-field region (φ_j = 1) this is (4.b). D3 must check every place where Balaban uses the constant g_{j−1} outside Λ_j (SOURCES_VERIFY §11: also inside the small-field region, since Balaban's coupling is constant there). D2 found exactly three such places in CMP 109 ((T1)–(T3), §4.1); D3 must make the same list for CMP 119 Sect. 3 and CMP 122.
2. Reference coupling. D2 scales and sets thresholds with the constant reference g_k (CMP 119 (2.28) α_{0,j} = g_jC_0(log g_j^{−2})^{q_0} [V]). D3 must use the same reference constants. The local coupling enters the large-field small factors only through w_k(x) = g_k^{−2}(1 + O(γ²r)); per plaquette this changes them by e^{O(r)}, which the large-field factor exp(−O(1)(log g^{−2})^{2q}) dominates (SOURCES_VERIFY §9).
3. Family (A). The constant-source theories must exist through the large-field steps too, holomorphic in c on |c| < 2r. For constant real c this is Balaban's theorem at a shifted coupling up to the gauge-fixing weight. For complex c the R-operation denominators need |D(c)| ≥ ½ D(Re c); since c is one global scalar this is NOT automatic (the perturbation is extensive). D3 must either localize the c-dependence of each denominator or restrict (A) to real c with C^∞ bounds in c (sufficient for §4.3 (3): only |B_j(c) − B_j(c′)| ≤ C|c − c′|/r is used).
4. Freezing property (vii) for R^{(j)} and B^{(j)} terms. D3 must propagate it through the R operation. The auxiliary-variable argument of §6.3 transfers if the R operation is analytic in its input activities on the set where the inputs obey the bounds with 2E_0. The R-operation denominators are integrals of positive densities; for complex t they are perturbed by O(|t| × input difference), which is small and local, so this is plausible but must be checked.
5. Holomorphy in f|_X. Inside D2 it is free. Through the R operation it needs |denominator(f)| ≥ ½ denominator(Re f) for complex f|_X with |Im f| ≤ r. For a localized large-field region X the perturbation is ≤ 2r|X| (P_p ≤ 2), so local holomorphy holds with radius r_X ≍ r/|X|. Combined with e^{−κd(X)} this gives derivative bounds a!(|X|/r)^{|a|}e^{−κd(X)}; summed over X this is (n!)² — Gevrey order 2. OS regularity (N5) allows σ_n ≤ A(n!)^D for any fixed D, so D = 2 is enough. Alternative: real Gevrey bounds by direct differentiation of the cluster expansion. D3 must choose one.
6. Positivity for real f: ρ_0^f = ρ_0 exp(Σ_p f_pP_p) > 0, so the R operation is well defined for real f (CMP 122 I p. 176 [V]). D2 does not use positivity.
7. Contact functional. The R operation has its own vacuum-energy subtraction (CMP 119 (2.30) [V]: R_k(U_k) = Σ_j [R^{(j)}(Λ_j, U_k) − R^{(j)}(Λ_j, 1)]). With f, the subtracted values R^{(j)}(Λ_j, 1; f) go into W exactly as in §5.1. D3 must keep them field independent, i.e. evaluated at the trivial configuration, not at a large-field background.
8. Gauge-fixing weight. D2 uses the unsourced weight g_k^{−2} (exact Faddeev–Popov independence, CMP 109 (0.15)–(0.16)). The weight enters the small-field cutoffs χ_k; D3 must confirm that this choice is compatible with Balaban's large-field characteristic functions (expected: they are defined from the field, not the coupling).
9. Hypotheses inherited unchanged: (Hβ) (open, §4.4), (U) (unit-scale convention), and Balaban's Theorem 2 condition sup_x g_k(x) ≤ γ (holds if (Hβ) and r ≤ ½(g_K^{−2} − γ^{−2})).
