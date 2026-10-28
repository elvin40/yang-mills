IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# D1: one Balaban step with a local-coupling source, at one loop

Status: written 2026-10-27 by Claude (Fable 5.1). Inputs: SOURCES.md §2.4 (the formula-level sketch this file replaces), numerics/NUMERICS.md §1, §5, §6, THEOREM2.md §3a and §8a, CMP 109 (1.3)–(1.5) and Sect. 2 (2.6)–(2.11). Tags: [exact] derived here with a complete argument; [num] checked numerically with numerics/d1_check.py; [derived] my derivation, not independently verified; [open] not done.

Prose: short sentences, plain technical English. Units: 1/g₀² = 1 in all numerics; g₀ is restored in the formulas by f → g₀² f.

---

## 0. Result in one paragraph

The plaquette-density source is a local bare coupling, w_p = 1/g₀² − f_p. In the one-step fluctuation integral the source enters only through the Hessian of the Wilson action: Δ_f = Σ_p w_p H_p. The gauge fixing, the Faddeev–Popov operator, and the averaging constraint carry no f. For a constant f the sourced Hessian is a multiple of the unsourced one, so the one-loop determinant changes by a field-independent constant. Hence the multiplicative source renormalization is c_1 = 1 exactly at one loop (order g₀⁰ and order g₀² f), for any background; the first correction is c_1 − 1 = g₀⁴ β_1^{(2)} + O(g₀⁶), where β_1^{(2)} is the g² coefficient of Balaban's β_1(g). The SOURCES.md formula c_j = 1 + ½ g³ β_j′(g) is the same statement (chain rule), with power g⁴ if β_j is even in g and g³ otherwise. The field-independent terms are: the one-loop tadpole, exactly ½ (9L⁴ − 9) g₀² f per coarse cell (= ¾ g₀² per plaquette in the L → ∞ limit, the standard one-loop plaquette value), and the two-point contact term C(q) f₀²/2 per cell with C(0⁺) = ¼ (9L⁴ − 9) g₀⁴ and an analytic q-expansion (massive block-spin propagator). The first field-dependent gradient term has dimension 6 (∂∂f tr F², f (DF)², ∂f tr(F DF)) and is irrelevant by L⁻² per step; the numerics confirm that the f-linear, field-quadratic response at source momentum 2p vanishes like p⁴. The current term ⟨J_f, B⟩ from the mismatch between Balaban's minimizer and the sourced minimizer is of order g₀ in the fluctuation variables, starts at second order in the background and second order in ∇f, and contributes to log Z at order g₀² (∇f)² × (dimension-6 operator). It does not break "E5 stays verbatim". Numbers (p = 0.2, β_1 units): c_1 − 1 = −2.2 × 10⁻⁴ (L = 2, Ng = 6) → −8.3 × 10⁻⁵ (Ng = 8), and −4.0 × 10⁻³ (L = 3, Ng = 4) → −4.9 × 10⁻⁴ (Ng = 5); all consistent with zero at the grid error of the k-average (the individual terms are of size 10–60 and cancel), against β_1 = 0.63 and 0.66. The residual at the finite plane-wave expansion point is an O(p⁴) artifact (§2.1 caveat), not a one-loop renormalization.

---

## 1. Exact algebra of the sourced step [exact]

### 1.1 Action and step

Fine lattice T_ε, SU(2), normalized trace. Sourced action

  A_f(U) = Σ_p w_p P_p(U),  w_p := 1/g₀² − f_p,  P_p := 1 − Re tr̂ U_p,  f_p := f(x_p), |f| ≤ r.

One Balaban step (CMP 109 (0.17)/(0.19)) with the sourced density:

  Z_f(V) = N⁻¹ ∫ dU ∏_c δ(Ū(c) V(c)⁻¹) χ exp[ −A_f(U) − (1/g₀²) G(U) ],

with G the exponential gauge-fixing term (0.14) and Ū the averaging (0.12). I keep the gauge-fixing weight at the constant 1/g₀². This is a choice; the Faddeev–Popov construction makes log Z_f independent of the gauge-fixing weight (NUMERICS.md §1 (ii)–(v): the gauge-fixing form DDᵀ enters the one-loop determinant only through det(DᵀD), which cancels against the ghost), so the choice has no effect at one loop and only reorganizes higher orders.

### 1.2 Background-field split

Let U_1(V) be Balaban's constrained minimizer of the unweighted Wilson action A_0 on the fiber {U : Ū(U) = V} (CMP 109 (1.1); CMP 102 "variational problem"). It does not depend on f. Write U = U_1 e^{iB}. Taylor expansion of each plaquette term:

  P_p(U_1 e^{iB}) = P_p(U_1) + ⟨P_p^{(1)}(U_1), B⟩ + ½ ⟨B, H_p(U_1) B⟩ + R_p^{(3)}(B),

with P_p^{(1)} the gradient (supported on the four links of p) and H_p the 12 × 12 Hessian block of plaquette p. Summing with weights w_p:

  A_f(U_1 e^{iB}) = A_f(U_1) + (1/g₀²) ⟨A_0^{(1)}(U_1), B⟩ − ⟨J_f, B⟩ + ½ ⟨B, Δ_f B⟩ + O(B³),

  J_f := Σ_p f_p P_p^{(1)}(U_1),   Δ_f := Σ_p w_p H_p(U_1) = (1/g₀²) Δ − Δ^{(f)},   Δ := Σ_p H_p(U_1),   Δ^{(f)} := Σ_p f_p H_p(U_1).

So δΔ[f] = −Δ^{(f)} is exactly local in f: the matrix element (b, b′) of Δ^{(f)} is nonzero only if the links b, b′ lie on a common plaquette p, and it carries the single value f_p. No derivative of f appears in the Hessian.

Stationarity of U_1 (CMP 109 p. 265–266, after (2.10) [V]: "(δA′, J) = 0 for all δA′ satisfying the condition QQ*A′ = 0") gives A_0^{(1)}(U_1) = Q̃ᵀ J with Q̃ the linearized averaging at U_1 and J the Lagrange multiplier. At the trivial background J = 0. For a general small background V, J = O(field strength × p²): it is the normal force of the constraint, equal to the lattice Maxwell operator applied to U_1 projected onto the constraint normals.

### 1.3 Orders in g₀

Scale B = g₀ B′ (CMP 109 after (2.10)). The exponent becomes

  −A_f(U_1) − (1/g₀) ⟨Q̃ᵀJ, B′⟩ + g₀ ⟨J_f, B′⟩ − ½ ⟨B′, Δ B′⟩ + ½ g₀² ⟨B′, Δ^{(f)} B′⟩ − (gauge fixing) + O(g₀ B′³).

Balaban's change of variables B′ → B′ − hD(B′) linearizes the constraint; the (1/g₀) term then vanishes at first order and leaves the order-g₀⁰ term −⟨J, C^{(2)}(B′)⟩, which is the second term of his quadratic form (1.5). The source produces two new terms:

  (T1) the Hessian shift +½ g₀² ⟨B′, Δ^{(f)} B′⟩, order g₀² f, quadratic in B′;
  (T2) the current term +g₀ ⟨J_f, B′⟩, order g₀ f, linear in B′.

Both are higher order in g₀ than the unsourced one-loop form. This is the correct counting: f is a perturbation of 1/g₀², so its effects come with g₀² f. The one-loop (Gaussian) integral with the sourced quadratic form is exact in f; the expansion in g₀² f is a convergent expansion of a finite-dimensional determinant (‖g₀² K_f‖ ≤ g₀² r < 1, SOURCES.md §2.4(b)).

### 1.4 Gaussian integral and the current term

Complete the square in B′. With Δ_T := the sourced quadratic form (1.5) restricted to the constrained, gauge-fixed fluctuation space (NUMERICS.md §1: W ∩ N^⊥),

  log Z_f(V) − log Z_0(V) = −½ log det(1 − g₀² K_f) + ½ g₀² ⟨J_f, Δ_{f,T}⁻¹ J_f⟩ + (higher orders in g₀, E^{(1)}-type),
  K_f := Δ_T^{−1/2} Δ^{(f)}_T Δ_T^{−1/2}.

Size of the current term. J_f(b) = Σ_{p ∋ b} f_p P_p^{(1)}(U_1)(b). Write f_p = f(x_b) + (f_p − f(x_b)):

  J_f = f · Q̃ᵀJ + O(ε |∇f| · |P^{(1)}(U_1)|),   and   f · Q̃ᵀJ = Q̃ᵀ(fJ) + O(Lε |∇f| · |J|).

Q̃ᵀ(fJ) is normal to the constraint surface and is removed by the δ-function. So the tangential part is

  J_{f,T} = O(ε |∇f| · |F(U_1)|) + O(Lε |∇f| · |J|),   |F(U_1)| = O(a p),  |J| = O(a p²),

for a background of amplitude a and momentum p. Both pieces vanish at the trivial background (P^{(1)}(1) = 0, J(1) = 0), and both vanish for constant f. Hence

  ½ g₀² ⟨J_f, Δ_{f,T}⁻¹ J_f⟩ = O(g₀² ε² |∇f|² a² p²):

order g₀², second order in the background, second order in ∇f. It is f² × (∂f)² × tr F²-type: a field-dependent term of dimension 6 in the source-field counting, irrelevant by (Lη)² per step. It has NO field-independent part (J_f vanishes at the trivial background), which corrects SOURCES.md §2.4(c) third bullet ("the field-independent part is a 2-derivative contact term"): the 2-derivative contact term comes from the q² expansion of tr K_f², §3.2 below, not from the current.

### 1.5 The sourced minimizer

Let U_1^f(V) be the constrained minimizer of A_f. Then U_1^f = U_1 e^{iB*} with B* = g₀² Δ_{f,T}⁻¹ J_{f,T} + O(f²) = O(g₀² ε |∇f| a p). Expanding around U_1^f instead of U_1 removes the linear term and changes A_f(U_1) to A_f(U_1^f) = A_f(U_1) − ½ g₀² ⟨J_f, Δ_{f,T}⁻¹ J_f⟩ + O(f³): the same term as in 1.4, now in the "tree-level" position. The one-loop determinants at U_1 and at U_1^f differ at order g₀² × (one-loop one-point function at U_1) × B*, which is O(g₀⁴) and again carries ∇f and the background. So the two expansion points give the same log Z_f(V) order by order, as they must (the exact integral does not depend on the expansion point). The choice "E5 stays verbatim" (Balaban's f-independent minimizer, SOURCES.md §2.1) is consistent: the price is the current term of 1.4, which is explicit, local, gauge invariant, irrelevant, and of order g₀² (∇f)². It does not break the structure (S-A)–(S-C).

Where this matters for the induction: Balaban's H_{1,j} and the propagators are f-independent, so all of CMP 95/96/99 (regularity, decay) is used verbatim. The f-dependence sits in (i) the weight of the Hessian, (ii) the current J_f, both local in f. This is the reason the sourced step is a perturbation of the unsourced one and not a new construction.

---

## 2. Expansion of log Z_f(V) − log Z_0(V) [exact]

### 2.1 Exact identity for constant f

For f ≡ f₀ the sourced quadratic form (1.5) is the unsourced one times (1 − g₀² f₀): the Hessian scales, and J scales too (J is the multiplier of w A_0, so J_w = w J_0, and the −⟨J, C^{(2)}⟩ term scales with it). Gauge fixing, ghosts, and the constraint do not scale. The quadratic form of (1.5) is the Hessian of the Lagrangian A − ⟨J, Q(·)⟩ at its unconstrained stationary point U_1, and the Lagrangian is gauge invariant, so this Hessian annihilates the gauge directions exactly: Δ_L D = 0. By NUMERICS.md §1 (iv)–(v),

  log|det Bord_f| = log det((1 − g₀² f₀) Δ_{L,T}) + log det(DᵀD) + log det(Q̃Q̃ᵀ) = dim(W ∩ N^⊥) · log(1 − g₀² f₀) + log|det Bord_0|,

with dim(W ∩ N^⊥) = 12L⁴ − 12 − 3(L⁴ − 1) = 9L⁴ − 9 per coarse cell, an integer independent of V. Hence, exactly,

  log Z_{f₀}(V) − log Z_0(V) = −½ (9L⁴ − 9) N_cells · log(1 − g₀² f₀),   independent of V.   (2.1)

Caveat for the numerics. ym_momentum.py and d1_check.py expand around the fine plane wave U_0(a) = exp(i a A σ₃/2), which is not a constrained stationary point, and use the plain Hessian Δ(U_0) without the J-term. Differentiating A(U^g) = A(U) twice gives Δ(U) D λ = −(∂_B(Dλ))ᵀ A^{(1)}(U), so at U_0(a) the gauge directions are not exact zero modes: Δ D = O(|A^{(1)}(U_0)|) = O(a p²). The decomposition (iv) then fails at second order in Δ D, and the plane-wave object has a residual ∂_{f₀}∂_a² log Z at q = 0 of order a² p⁴, i.e. a spurious "c_1 − 1" of order p². This is what the numerics see (§4): a residual that is ≤ 4 × 10⁻⁴ in β_1 units at p ≤ 0.4, and 2.4 × 10⁻³ at p = 2π/6 on the periodic 6⁴ lattice, decreasing with p. If the gauge-fixing term is scaled with the same factor (1 − g₀² f₀) as the Hessian (Balaban's (0.17) puts 1/g_k² on the gauge-fixing term too), det of the bordered matrix scales exactly as (1 − g₀² f₀)^{dim W} for any expansion point, and the residual is zero; the two gauge-fixing conventions differ precisely by the O(a² p⁴) stationarity defect, which is the statement that the gauge-fixing weight is irrelevant only at a stationary point. For Balaban's form (1.5) at the true saddle, (2.1) is exact with either convention.

Consequences:
- Tadpole (linear in f): ∂_{f₀} log Z = ½ (9L⁴ − 9) g₀² per cell = (9/2)(1 − L⁻⁴) g₀² per fine site = ⟨Σ_p P_p⟩ at one loop. Per plaquette, (3/4)(1 − L⁻⁴) g₀². For L → ∞ this is the standard one-loop SU(2) plaquette value ⟨1 − ½ tr U_p⟩ = 3g₀²/4 (equipartition: 9 physical modes per site, 6 plaquettes per site, ½ per mode). The missing 9 L⁻⁴ modes per fine site are the coarse modes integrated in later steps; the sum over all steps gives 9/2 per site exactly.
- Constant-f contact terms (all orders in f₀): ½ (9L⁴ − 9) Σ_{a ≥ 1} (g₀² f₀)^a / a per cell. The f₀² coefficient is ¼ (9L⁴ − 9) g₀⁴ per cell.
- Multiplicative source renormalization: zero. The coefficient of f₀ A(V) in log Z_{f₀}(V) is exactly 0. So at one loop the effective marginal term after the step is −(1/g₀² − f₀) A(V) + β_1^{(0)} A(V), i.e. 1/g_1²(f₀) = 1/g₀² − f₀ − β_1^{(0)} and c_1 := ∂(1/g_1²)/∂(1/g₀²) = 1.

### 2.2 c_1 − 1 in the g-expansion [derived]

Balaban's full step gives 1/g_1² = 1/g₀² − β_1(g₀) with β_1 ∈ C^∞([0, γ]) (CMP 109 p. 264, THEOREM2.md §3a). With the local coupling u(x) = 1/g₀² − f(x) flowing pointwise (SOURCES.md (S-A)),

  c_1 = ∂Φ_1/∂u = 1 − β_1′(g) · dg/du = 1 + ½ g³ β_1′(g),   g = u^{−1/2}.

This is SOURCES.md's formula; the power of g and the normalization are right. If β_1(g) = β_1^{(0)} + β_1^{(2)} g² + O(g⁴) (evenness, THEOREM2.md (T2-a2), expected but not in Balaban's assumptions), then c_1 − 1 = β_1^{(2)} g₀⁴ + O(g₀⁶). With only the C¹ bound, c_1 − 1 = O(g₀³). The one-loop computation of this file fixes the leading term 1 exactly and says nothing about β_1^{(2)}, which is the two-loop increment (Balaban's "second order perturbative calculations"). So c_1 − 1 is purely two-loop. It is NOT (g⁴/…) ∂β_1^{(0)}/∂(1/g²): β_1^{(0)} does not depend on the coupling at all.

### 2.3 Non-constant f, first order: the vertex Γ^{(3)}

Expand log Z_f(V) in f and in the background B (V = Ū(e^{iB}), B = a × plane wave of momentum p). Translation covariance under coarse translations means that the f-linear, B-quadratic term, Σ_x f(x) k(x; B), couples a source Fourier mode q to background modes p, p′ only if q + p + p′ ≡ 0 mod 2π/L. With a single background wave cos(p x) the mixed derivative ∂_{f₀} ∂_a² log Z is therefore nonzero only for q ≡ 0 or q ≡ ±2p (mod 2π/L). This is a momentum-conservation fact about the measurement, not about the physics; "f = f₀ cos(q x) at small generic q" gives exactly zero per unit volume.

Local expansion (valid because the block-spin fluctuation propagator is massive, so k(x; B) is analytic in momenta): the f-linear field-dependent terms are Σ_x f(x) [γ₁ 𝒜(x) + (dimension-6 terms)], where 𝒜 is the coarse plaquette density. By (2.1), γ₁ = 0 (the constant-f sum vanishes for every V). The next terms are dimension 6, because pure gauge theory has no gauge-invariant local operator of dimension 2, 3, or 5 (tr F = 0; dimension 5 needs an odd number of F's and D's with all indices contracted against one ∂f, and ∂_μ f tr(F_{μν} D_ρ F_{ρν}) integrates by parts to f × (D_ρ F_{ρν})² plus ∂∂f tr FF). The possible terms are

  ∂_μ∂_ν f tr(F_{μρ} F_{νρ}),   □f tr F²,   f (D_ρ F_{ρν})²,   f tr F³-type (cubic in B, not seen at this order),

all of dimension 6, irrelevant by L⁻² per step. In the measurement at q = 2p they appear as the p⁴ coefficient of the mixed derivative:

  m(2p) := ∂_{f₀} ∂_a² log Z |_{a=f₀=0, f = f₀ cos(2p x_c)} = L⁴ t(p) [γ₁ + γ₂ p² + O(p⁴)],   t(p) = −(1 − cos p)/8,

where t(p) is the tree-level value of ∂_{f₀} ∂_a² Σ_p f_p P_p per fine site for the transverse wave A_1 = a cos(p x₀) and f evaluated at the plaquette centre (δ_p = cos(p(x₀+1)) − cos(p x₀), δ_p² = (1 − cos p)(1 − cos(2px₀ + p)), average of cos(2px₀ + p)(1 − cos(2px₀ + p)) = −½). The prediction is γ₁ = 0; γ₂ is a combination of the dimension-6 coefficients.

### 2.4 Non-constant f, second order: the contact term C(q)

The field-independent f² term is the one-loop two-point function of the plaquette density inside one step:

  C(q) := ∂²_{f₀} log Z |_{a=0, f = f₀ cos(q x_c)} = ½ g₀⁴ tr(K_{c_q} K_{c_q}) per cell,

a polygon of two block-spin propagators with two insertions of the weight cos(q x_c). Exact values: C(0) = ½ (9L⁴ − 9) g₀⁴ (from (2.1)), C(q → 0⁺) = ¼ (9L⁴ − 9) g₀⁴ (the cos² average; this limit tests analyticity at q = 0). The local 4-jet of C(q) f₀²/2 in q, i.e. C(q) = C(0⁺) + c₂ q² + c₄ q⁴ + O(q⁶), gives the 0-, 2-, 4-derivative contact coefficients of P^{(1)} in W_1[f] (SOURCES.md (S-C)), for the modes integrated at this step.

ε-scaling. At step j the cell has physical side L^j η. Per unit physical volume the contact term is ¼ · 9(1 − L⁻⁴) g_{j−1}⁴ (L^{j−1}η)^{−4} f² + c₂^{(j)} (L^{j−1}η)^{−2} (∇f)² + c₄^{(j)} (∂²f)² + …: the f² term is relevant (ε⁻⁴ total, dominated by the first steps), the (∇f)² term is ε⁻², the (∂²f)² term is marginal (log), and the 6-derivative and higher terms are irrelevant. This is the content of SOURCES.md (S-C) "P^{(j)} of the 4-jet with |P^{(j)}| ≤ C (L^j η)^{−4} g_{j−1}⁴": the 4-jet is exactly what is needed, the remainder is summable.

---

## 3. Per-coarse-momentum formulas (representation of NUMERICS.md §5) [exact]

Bordered matrix with source, units 1/g₀² = 1:

  Bord_f(a) = [[ Σ_p (1 − f_p) H_p(a) + D(a) D(a)ᵀ, Q̃(a)ᵀ ], [ Q̃(a), 0 ]],   log Z = log det G(a) − ½ log|det Bord_f(a)|,

with G = DᵀD f-independent. Let M := Bord. For a plane-wave source f_p = f₀ cos(q x_c) and the transverse background A_1 = a cos(p x₀):

  M_f := ∂_{f₀} M = −Σ_p cos(q x_c) H_p,   M_{fa} = −Σ_p cos(q x_c) H_p′,   M_{faa} = −Σ_p cos(q x_c) H_p″,

all Hessian-only (no D, no Q̃ parts). Derivatives of log|det M|:

  ∂_f log|det M| = tr(M⁻¹ M_f),
  ∂²_f log|det M| = −tr(M⁻¹ M_f M⁻¹ M_f),
  ∂_f ∂²_a log|det M| = tr(M⁻¹ M_{faa}) − tr(M⁻¹ M_f M⁻¹ M_{aa}) − 2 tr(M⁻¹ M_a M⁻¹ M_{fa}) + 2 tr(M⁻¹ M_f M⁻¹ M_a M⁻¹ M_a).

Transfer kernels (NUMERICS.md §5 convention: a kernel with position dependence e^{itx} is written e^{it·anchor(X)} T_t(X − Y); its Fourier block T̂_t(k) maps k → k + t; the negative-transfer partner of a real kernel is T̂_{−t}(k) = conj(T̂_t(−k))):

  T_+ (transfer p): ½ e^{−ip·anchor} (K′_cos + i K′_sin), full (Hessian + DDᵀ + Q̃) first derivative;
  M_{aa,0} (transfer 0): ½ (K″_cos + K″_sin);   M_{aa,+} (transfer 2p): ¼ e^{−2ip·anchor} [(K″_cos − K″_sin) + i (K″_{cos+sin} − K″_cos − K″_sin)];
  F_+ (transfer q): −½ e^{−iq·anchor} Σ_p (cos + i sin)(q x_c) H_p;   at q = 0, F := −Σ_p H_p (one component);
  FA_+ (transfer p, source at 2p): −¼ e^{−ip·anchor} Σ_p [ (c₂ H′_{p,cos} + s₂ H′_{p,sin}) + i (s₂ H′_{p,cos} − c₂ H′_{p,sin}) ],  c₂, s₂ := cos, sin(2p x_c);
  FAA_0 (transfer 0, source at 2p): −¼ Σ_p [ c₂ (H″_{p,cos} − H″_{p,sin}) + s₂ (H″_{p,cos+sin} − H″_{p,cos} − H″_{p,sin}) ].

Per cell, with ⟨·⟩_k the shifted-grid Brillouin-zone average and n_q = 1 for q = 0, 2 for q ≠ 0:

  tad = −½ ⟨tr(M̂(k)⁻¹ F̂(k))⟩_k,
  C(q) = (n_q/2) Re ⟨tr(M̂(k+q)⁻¹ F̂_+(k) M̂(k)⁻¹ F̂_−(k+q))⟩_k,
  m(q) = −½ [ ⟨tr(M̂⁻¹ F̂AA_0)⟩ − n_q Re⟨tr(M̂(k+q)⁻¹ F̂_+(k) M̂(k)⁻¹ M̂_{aa,−}(k+q))⟩
          − 4 Re⟨tr(M̂(k+p)⁻¹ T̂_+(k) M̂(k)⁻¹ F̂A_−(k+p))⟩ + 4 Re⟨tr(M̂(k+q)⁻¹ F̂_+(k) M̂(k)⁻¹ T̂_−(k+p) M̂(k+p)⁻¹ X̂)⟩ ],

with X̂ = T̂_+(k) for q = 0 and X̂ = T̂_−(k+2p) for q = 2p (the second background kernel must carry k + q to k + p). Normalizations, same units as β_1 = 4w/(L⁴(1 − cos p)):

  c_1 − 1 = 4 m(0) / (L⁴ (1 − cos p)),   γ(2p) = m(2p) / (L⁴ t(p)),   t(p) = −(1 − cos p)/8.

Implementation: numerics/d1_check.py (reuses ym_momentum.Step for the lattice, the plaquette Hessian Taylor blocks, gauge_grad, averaging, extract, and fourier_batch; builds the three profile passes cos, sin, cos+sin; the ghost is not built because it is f-independent). The `--fd` mode checks the momentum-space formulas against real-space finite differences of −½ log|det Bord_f(a)| on the periodic 6⁴ lattice (L = 2, p = 2π/6, q = 0 and 4π/6, unshifted grid), the same test NUMERICS.md §5 used for w(p).

---

## 4. Numerical results [num]

All runs on the Mac (M3 Max), numerics/.venv/bin/python, each under 10 minutes. Output files numerics/results/d1_*.json.

| run | wall | m(0) per cell | c₁ − 1 | γ(2p) | tadpole | C(0⁺) limit | C(0.1), C(0.2), C(0.4), C(0.8), C(1.6) |
|---|---|---|---|---|---|---|---|
| L=2, Ng=6, p=0.1 | 119 s | −4.7e−6 | −2.4e−4 | −0.00439 | 67.5 (exact 67.5) | 33.75 | 33.7289, 33.6658, 33.4183, 32.4971, 29.5978 |
| L=2, Ng=6, p=0.2 | 126 s | −1.8e−5 | −2.2e−4 | −0.01672 | 67.5 | 33.75 | same (C is p-independent) |
| L=2, Ng=8, p=0.2 | 295 s | −6.6e−6 | −8.3e−5 | −0.01672 | 67.5 | 33.75 | 33.7289, 33.6658, 33.4183, 32.4971, 29.5978 |
| L=2, Ng=6, p=0.4 | 126 s | −1.2e−4 | −3.8e−4 | −0.06196 | 67.5 | 33.75 | same |
| L=2, Ng=6, p=0.4, pure gauge | 90 s | −1.8e−15 | −1.8e−15 | 4.9e−5 (m(2p) = −7.7e−6) | 67.5 | — | — |
| L=3, Ng=4, p=0.2 | 813 s (overlapped with the Ng=8 run for 5 min) | −1.6e−3 | −4.0e−3 | −0.02716 | 360 (exact 360) | 180 | 179.8985, 179.5953, 178.4133, 174.0966, 160.5312 |
| L=3, Ng=5, p=0.2, m(0) only | 261 s | −2.0e−4 | −4.9e−4 | — | 360 | — | — |
| L=2 periodic 6⁴, p = 2π/6, FD check | 48 min (nine sparse LU factorizations) | 4.81e−3 (both) | 2.4e−3 | — | 67.5 | — | C(0) = 67.5, C(2p) = 27.598 |

Finite-difference check (periodic 6⁴ lattice, L = 2, p = 2π/6, unshifted grid Ng = 3; steps d = 10⁻³ in a, e = 10⁻² in f₀): momentum-space vs real-space, q = 0: m 0.00481394 vs 0.00481583 (diff 1.9e−6); C 67.5000 vs 67.5034; tadpole 67.5000 vs 67.5023. q = 2p: m 0.28880725 vs 0.28881397 (diff 6.7e−6); C 27.59752 vs 27.59840. The differences are the O(e²) truncation of the finite differences in f₀ (the f-dependence of log|det| is −dim·log(1 − f₀) + …). So the transfer-kernel bookkeeping of §3 (q = 0 and q = 2p, all four trace terms) is verified against an independent real-space computation of the same object.

Reading:
- The finite-difference check passes at the 10⁻⁶ level for the mixed derivative (above).
- c_1 − 1 is consistent with zero at both L. At L = 2 it falls from −2.2 × 10⁻⁴ (Ng = 6) to −8.3 × 10⁻⁵ (Ng = 8) at p = 0.2: the residual is dominated by the k-grid error of four terms of size 0.4–10 that cancel. At L = 3 it falls from −4.0 × 10⁻³ (Ng = 4; terms of size 1–60) to −4.9 × 10⁻⁴ (Ng = 5), a factor 8 for one grid step, the exponential grid convergence of NUMERICS.md §5. The p-dependence at L = 2 (p = 0.1, 0.2, 0.4: −2.4, −2.2, −3.8 × 10⁻⁴) shows the grid floor at small p and the onset of the O(p²) stationarity-defect artifact of §2.1 at p = 0.4; on the periodic 6⁴ lattice at p = 2π/6 the artifact is 2.4 × 10⁻³ with no grid error (commensurate grid), i.e. ≈ 0.4 % of β_1. For the pure-gauge background m(0) = −1.8 × 10⁻¹⁵: there the expansion point is stationary and (2.1) holds exactly for the code's object too. Together: the exact statement c_1 = 1 at one loop is confirmed; the numerics cannot do better than the grid error for the plane-wave object, and need not.
- The tadpole and C(0) equal the exact values ½ (9L⁴ − 9) = 67.5 (L = 2), 360 (L = 3).
- γ(2p) is grid-converged (−0.016718 at Ng = 6, −0.016720 at Ng = 8) and scales as p²: γ(2p)/p² = −0.439, −0.418, −0.387 at p = 0.1, 0.2, 0.4 (L = 2); fit γ(2p) = γ₂ p² + γ₄ p⁴ from p = 0.1, 0.2: γ₂ = −0.45, γ₄ = +0.7 (L = 2); at L = 3, p = 0.2: γ(2p)/p² = −0.68 (Ng = 4). So the f-linear, field-quadratic response at source momentum 2p has no p⁰ term: no marginal term, no marginal gradient term. γ₂ is a dimension-6 combination; its value depends on the expansion point of the fluctuation integral (ledger item 4), so only its order of magnitude (|γ₂| ≈ 0.5–0.7, about one β_1) is meaningful.
- C(q) is analytic at q = 0⁺ and approaches ¼ (9L⁴ − 9) = 33.75 (L = 2) and 180 (L = 3) from below, with C(0) = ½ (9L⁴ − 9) exactly (the cos² factor). Fit C(q) = C(0⁺) + c₂ q² + c₄ q⁴ from q = 0.1, 0.2: c₂ = −2.12, c₄ = +0.27 per cell (L = 2); c₂ = −10.17, c₄ = +1.3 per cell (L = 3). Per fine site: c₂ = −0.132 (L = 2), −0.126 (L = 3), nearly L-independent, as expected for a term dominated by the modes near the fine cutoff. So the (∇f)² contact term of the first step is −0.13 g₀⁴ ε⁻² (∇f)² per unit volume (sign: it lowers the variance of modes with gradients), and the (∂²f)² term is +0.27/16 ≈ +0.02 g₀⁴ per site. Both are 6-digit stable between Ng = 6 and 8.
- Pure-gauge background (L = 2, p = 0.4, Ng = 6): m(0) = −1.8 × 10⁻¹⁵ exactly zero; m(2p) = −7.7 × 10⁻⁶ from terms of size 0.06–0.4, i.e. the grid-error level for a non-commensurate p on the shifted grid (the gauge cancellation mixes k with k ± p and is exact only after the full k-integral; NUMERICS.md's 10⁻¹⁵ pure-gauge check used a commensurate grid). The sourced kernels pass this at the same level as the unsourced ones.

---

## 5. Honest ledger

1. [exact] 1.1–1.4 and 2.1: the sourced Hessian is local, the gauge fixing/ghost/constraint carry no f, the constant-f identity (2.1), tadpole, constant-f contact terms, c_1 = 1 at one loop, and the structure of the current term. These are complete finite-dimensional arguments and rest only on NUMERICS.md §1 (i)–(v), which R2_VERIFY.md confirmed.
2. [derived] 2.2: c_1 − 1 = ½ g³ β_1′(g) = β_1^{(2)} g⁴ + O(g⁶) if β_1 is even. This is the chain rule on Balaban's (0.18)/(0.20) with a pointwise local coupling; the pointwise-flow assumption (S-A) itself is what D2 must prove. Nothing here computes β_1^{(2)}.
3. [derived] 2.3: the dimension count for the gradient terms. It uses that the one-loop effective action is a gauge-invariant local functional with analytic momentum dependence. Locality holds because the block-spin fluctuation propagator is massive (Balaban's propagator bounds CMP 95/96/99). The identification of the dimension-6 operators is standard continuum counting plus hypercubic symmetry; a lattice operator of dimension 2 or 3 that is gauge invariant does not exist either (any gauge-invariant local function of the links near x is a function of Wilson loops, whose expansion starts at F²).
4. [open, flagged for the NUMERICS owner] Expansion point of the numerics. ym_momentum.py (and d1_check.py) expand around the fine plane wave U_0(a) = exp(i a A σ₃/2), not around Balaban's constrained minimizer U_1(Ū(U_0(a))), and drop the −⟨J, C^{(2)}⟩ term of (1.5). U_0(a) is not a constrained stationary point: its stationarity defect A^{(1)}_T(U_0) is O(a p²), and Δ(U_0) D = O(a p²) (§2.1 caveat). The numerics of this file show the consequence directly: m(0) ≠ 0 for the plane-wave object (2.4 × 10⁻³ in β_1 units at p = 2π/6, exactly 0 for a pure-gauge wave), although (2.1) is exact for Balaban's form. I argued (sketch, not written out) that the error in the a² coefficient of the unsourced w(p) is O(a² p⁴) by gauge invariance: the shift to the minimizer is B* = O(a p²), the one-loop one-point function contracted with it is O(a p²) because the one-loop effective action is gauge invariant, and the J·C^{(2)} cross term is O(a p² · a p) and even in p. So β_1 (the p² coefficient) is unaffected, but the p⁴ coefficients (γ₂, c₄-type terms of w(p)) are expansion-point dependent. NUMERICS.md §1 assumption (i) "U_0 is an exact stationary point" is true for the flux background and for pure gauge, false for the plane wave; the plane-wave numbers in NUMERICS.md §6 should carry this caveat. A clean determination of the dimension-6 coefficients would need the minimizer and the J-term; not needed for E14.
5. [open] Everything beyond the Gaussian level: the cubic and higher fluctuation terms with f (Balaban's E^{(1)} with the local coupling, the sourced (1.18) bound), the large-field regions, the R operation. These are D2–D3 of SOURCES.md §4. The current term of 1.4 appears there as an explicit order-g₀² vertex with one f and one ∇f-weighted P^{(1)}; its localization is the same random-walk expansion as Balaban's other vertices.
6. [open] (S-A)'s "pointwise flow" at the non-Gaussian level needs the frozen-coupling Ward identity extraction of SOURCES.md (E14-a); at the Gaussian level the extraction is trivial because the marginal response is exactly zero (2.1), which is stronger than what (S-A) needs.
7. Correction to SOURCES.md §2.4(c): the current term has no field-independent part; the 2-derivative contact term comes from C(q). And (d): the mixed derivative at "small generic q" is zero by momentum conservation; the measurement must use q = 0 (exact zero) and q = 2p (irrelevant terms only).
8. Does the local-coupling minimizer issue break "E5 stays verbatim"? No. The sourced minimizer differs from Balaban's by B* = O(g₀² ε |∇f| a p), and expanding around Balaban's minimizer leaves an explicit, local, gauge-invariant, irrelevant current term of order g₀² (∇f)². E5 (the variational problem and the propagators) is used without change.
