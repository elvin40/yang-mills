# U3_LEMMA51: the soft-leg vertices of the level-j quadratic form (Lemma 5.1 of U3)

Written 2026-10-27 (Claude, Opus 5.5). Scope: Lemma 5.1 of U3_GAUSSIAN_RG.md (ledger O1), the only open input of U3 Theorem 7.1. Read first: U3_GAUSSIAN_RG.md, U3_VERIFY.md, numerics/NUMERICS.md §1, §5, §6, ym_oneloop.py, CMP 98 p. 31 ("fundamental fact"), CMP 102 pp. 278 and 297. Script: numerics/u3_lemma51_check.py.

## 1. Statement

Setting. Level j, block side M = L^j, everything in level-j units (coarse spacing 1). Background: the constant abelian field V_f with coarse plaquette angle f in the (0,1) plane, color direction σ_3. In fine units the plaquette angle is φ = f/M². U_j(V_f) = U_0^φ exactly and ∇A(U_0^φ) = 0, so J = 0 (U3 Lemma 5.0, U3_VERIFY §7). Hence

  Δ_j(f) = S[Δ(φ); C_f],  S[K; C](V) := min{⟨B, K B⟩ : C B = V},   (1.1)

with Δ(φ) the fine Wilson Hessian at U_0^φ and C_f the composed linearized averaging at the successive backgrounds (Lemma 5.0). Write Δ_j(f) = Δ_j + f Δ_j^{(1)} + f² Δ_j^{(2)} + O(f³).

What "translation-invariant part" means (made precise here; U3 §5.3 left it open). Δ_j(f) commutes with coarse magnetic translations. Put link variables at link midpoints and use the symmetric gauge W_f(x, y) = exp(i e f (x ∧ y)/2), x ∧ y := x_0 y_1 − x_1 y_0, e the charge of the color component (§2.1). Every magnetic-translation-covariant kernel then has the form W_f(x, y) σ(f; x − y) with a translation-invariant σ (§3.1). The symbol σ_j(f; K) is gauge-invariant data. Its Taylor coefficients σ_j^{(1)}, σ_j^{(2)} are the objects of Lemma 5.1. By U3_VERIFY §7 they are the p-Taylor data of Γ_j^{(3)}, Γ_j^{(4)} up to order p² that enter (6.1).

Lemma 5.1 (as restated). There are symbols σ_∞^{(1)}, σ_∞^{(2)} and C with

  sup_K |∂_K^α (σ_j^{(m)}(K) − σ_∞^{(m)}(K))| ≤ C r_j,  |α| ≤ 2,  m = 1, 2.   (1.2)

The target is r_j = L^{−2j}. This document proves (1.2) for the neutral sector with r_j = L^{−4j} and limit 0 (§2.2). It reduces the charged sector to three per-momentum statements R1–R3 (§3.4) and proves (1.2) given them (§4). Two mechanisms could weaken the rate: an M^{−1} term from corner (even-L) blocks, and a j L^{−2j} term from the level sum in Balaban's composed averaging (§4.2–4.3). The d = 2 numerics (§5) show no M^{−1} term. The F¹ coefficient converges exactly like the F⁰ term. The F² coefficient converges more slowly at the sizes reached (effective exponent 1.6 against 1.8 for F⁰); M^{−2} with large corrections and M^{−2} log M both fit.


## 2. Exact second-order expansion

### 2.1 Sector decomposition

Conventions as in ym_oneloop.py: U = e^{iB}U_0 (left trivialization), B = B^aσ_a/2, background links e^{iθσ_3}, plaquette P_0 = e^{iφσ_3}. Write the plaquette as e^{iX_1}e^{iX_2}e^{−iX_3}e^{−iX_4}P_0 with Ad-transported fluctuations X_1 = B_1, X_2 = Ad_{U_{01}}B_2, X_3 = Ad_{U_{01}U_{02}U_{03}^{−1}}B_3, X_4 = Ad_{P_0}B_4, s = (+, +, −, −). BCH to second order and ½tr(e^{iZ·σ/2}e^{iφσ_3}) = cos(|Z|/2)cos φ − (Z_3/|Z|) sin(|Z|/2) sin φ give the plaquette quadratic form

  q_p(B) = (cos φ/8) |Σ_i s_i X_i|² − (sin φ/4) Σ_{i<j} s_i s_j (X_i × X_j)_3.   (2.1)

(This is the form quoted in the task. The Hessian is 2q_p; the factor 2 plays no role, S is homogeneous.)

Lemma 2.1 (sectors). Constant rotations g = e^{iασ_3} fix U_0^φ and commute with the averaging, the Hessian, and the residual gauge fixing. So Δ_j(f) commutes with the induced action on B: B^3 is fixed (neutral sector), b := B^1 + iB^2 picks up e^{2iα} (charged sector, charge e = 2 in the e^{iθσ_3} convention). Δ_j(f) is block diagonal: a real form on the neutral fields and a Hermitian form on the charged fields b (the b̄ sector is its complex conjugate). For SU(N) the same holds with the Cartan components (neutral) and one charged sector per root.

Proof. Equivariance of each ingredient under a symmetry of the background; the constraint is equivariant because the averaging is gauge covariant and g is a constant gauge transformation fixing U_0^φ and V_f. ∎

Charge conjugation c = e^{iπσ_1/2} maps σ_3 → −σ_3, hence f → −f, and maps b → b̄. So σ_j(−f) = conjugate of σ_j(f) in the charged sector, and the neutral sector is even in f.

### 2.2 Neutral sector: closed form (proved)

Proposition 2.2. (a) The neutral part of C_f is f-independent: C_f^{neu} = C_0^{neu} = Q_M + gauge term (U3 Lemma 1.1, 1.3). (b) Δ^{neu}(φ) = Δ_0 − (1 − cos φ) Δ_{01}, with Δ_{01} the part of Δ_0 from the (0,1) plaquettes. (c) Hence, with H_0 the trivial-background minimizer map (U3 Prop. 1.5),

  Δ_j^{neu,(1)} = 0,  Δ_j^{neu,(2)} = −(1/(2M⁴)) H_0^† Δ_{01} H_0,  0 ≤ H_0^†Δ_{01}H_0 ≤ H_0^†Δ_0H_0 = Δ_j.   (2.2)

So |σ_j^{neu,(2)}(K)| ≤ |Δ_j(K)|/(2M⁴) ≤ C|K|² L^{−4j}: the neutral F² coefficient converges to 0 at rate L^{−4j}. In d = 2 every plaquette is a (0,1) plaquette and Δ_j^{neu}(f) = cos(f/M²) Δ_j exactly, to all orders.

Proof. (a) For B neutral every loop variable of (0.4) stays in the Cartan torus, so (1/i)log of a loop is the background loop angle plus the signed sum of B^3 over the loop, exactly; the average, the exponential and the final U(c) factor are then linear in B^3 with the F = 0 coefficients. (b) In (2.1), X_i^3 = B_i^3 (Ad of a Cartan element fixes σ_3), and (X_i × X_j)_3 = X_i^1X_j^2 − X_i^2X_j^1 has no neutral component. So the neutral form is cos φ·(1/8)(Σ s_iB_i^3)² on the (0,1) plaquettes, unchanged on the others. (c) With ε := 1 − cos(f/M²) = f²/(2M⁴) + O(f⁴), S[Δ_0 − εΔ_{01}; C_0] = Δ_j − ε H_0^†Δ_{01}H_0 + O(ε²) (first-order perturbation of a constrained minimum, the envelope formula (2.4) below with C_1 = 0). The bound: Δ_{01} ≤ Δ_0 as forms, and ⟨H_0V, Δ_0H_0V⟩ = ⟨V, Δ_jV⟩ by definition of the minimizer. ∎

Remark. This is the gauge-field form of the abelian result S_k^{ab} = (1 − L^{−4k})/4 of U1_INFINITE_LATTICE.md Prop. 9.1 (per-level abelian increments ∝ L^{−4k}): the cos φ "tadpole" factor is the only F-dependence of the neutral sector, and in level-j units it is suppressed by M^{−4}. Per momentum, σ_j^{neu,(2)}(K) = −(2M⁴)^{−1} M^{−4} Σ_l Ĥ_0(k_l)^† Δ̂_{01}(k_l) Ĥ_0(k_l), with Ĥ_0(k_l) = Δ̂_0(k_l)^+ Q̂_M(k_l)^† Δ_M(K) on the transverse part; Δ̂_{01} annihilates gauge directions, so the longitudinal choice in Ĥ_0 does not matter.

### 2.3 Charged sector: the exact second-order formula

Gauge fixing. Let D_r be the background-covariant gradient on gauge parameters λ with λ = 0 at the level-j sites (the residual gauge group of the composed averaging). K(f) := Δ(φ) + D_rD_r^† gives the same constrained minimum as Δ(φ) (choose the minimizer with D_r^†B = 0; D_r^†D_r is invertible with the Dirichlet condition). Let 𝒦(f) := [[K(f), C_f^†], [C_f, 0]]. 𝒦(0) is invertible (U3_VERIFY §8 sketch; it is also the operator whose determinant NUMERICS §1 computes), hence 𝒦(f) is invertible for small f. Write 𝒦 = 𝒦_0 + f𝒦_1 + f²𝒦_2 + O(f³), with 𝒦_m = [[K_m, C_m^†], [C_m, 0]].

Proposition 2.3 (exact). S(f) = −[𝒦(f)^{−1}]_{22}. With v := 𝒦_0^{−1}[0; 1] = [H; −S_0] (H the f = 0 minimizer map, S_0 = Δ_j) and 𝔤 := 𝒦_1 v = [K_1H − C_1^†S_0; C_1H],

  S^{(1)} = v^†𝒦_1v = H^†K_1H − S_0C_1H − H^†C_1^†S_0,   (2.4)
  S^{(2)} = v^†𝒦_2v − 𝔤^†𝒦_0^{−1}𝔤,   (2.5)
  𝔤^†𝒦_0^{−1}𝔤 = g_1^†Γg_1 + 2 Re g_1^†Hg_2 − g_2^†S_0g_2,  𝒦_0^{−1} = [[Γ, H], [H^†, −S_0]],

where (g_1, g_2) are the two blocks of 𝔤 and Γ is the constrained fine propagator (K_0^{−1} on ker C_0, extended by 0).

Proof. 𝒦_0 v = [K_0H − C_0^†S_0; C_0H] = [0; 1] by the stationarity condition K_0HV = C_0^†λ, λ = S_0V, and C_0H = 1. Expand 𝒦^{−1} = 𝒦_0^{−1} − f𝒦_0^{−1}𝒦_1𝒦_0^{−1} + f²𝒦_0^{−1}(𝒦_1𝒦_0^{−1}𝒦_1 − 𝒦_2)𝒦_0^{−1} + O(f³) and take the (2,2) block with the sign of S = −[𝒦^{−1}]_{22}. ∎

Where the minimizer map enters. −𝒦_0^{−1}𝔤 = ∂_f v = [∂_fH; −S^{(1)}]: the first-order change of the minimizer map (the D²H of U3_VERIFY §7(i), evaluated on the constant background) is exactly the vector that appears in the last term of (2.5). (2.4) is the envelope theorem; it needs only H.

Ingredients. K_1, K_2: the f and f² coefficients of the charged part of (2.1) (orbital: transport phases in X_i; spin: the sin φ term; tadpole: cos φ) plus those of D_rD_r^†. C_1, C_2: the f and f² coefficients of the composed linearized averaging, which come from (i) transport phases and (ii) the derivative of (1/i)log at a loop holonomy e^{iθσ_3} ≠ 1 and of exp at the averaged angle (charged factors 1 ± iθ/2 + O(θ²), θ = flux through the loop). Item (ii) is specific to Balaban's averaging; it is a genuine change of the constraint, not a coarse gauge term (§4.3 and §5).

Nielsen–Olesen (task item d). The charged S(f) has a negative eigenvalue of order −|f| at finite f on the infinite coarse lattice (lowest Landau level with the spin aligned). Nothing above uses positivity of S(f): only 𝒦_0 must be invertible, and S^{(1)}, S^{(2)} are Taylor coefficients at f = 0. The fluctuation block K restricted to ker C stays positive for small f because it has a gap of order 1 at f = 0 (constrained fluctuations are massive). NUMERICS §4 found the smallest constrained eigenvalue 0.085 > 0 at a finite flux.


## 3. Per-momentum form

### 3.1 Magnetic covariance and the canonical symbol

Positions are in level-j units; fine sites lie in M^{−1}Z^d, and a link variable sits at its link midpoint. Let W(x, y) be the straight-line Wilson line of the background charge-e field from y to x, in whatever gauge the operator is written. For f = coarse flux, in the symmetric gauge about any origin, W(x, y) = exp(i(ef/2) x ∧ y).

Lemma 3.1 (canonical symbol). Let A be an operator that commutes with the magnetic translations by a lattice Λ (fine lattice for the Wilson Hessian, coarse lattice for the averaging, H, Γ, and S). Then A(x, y) = W(x, y) a(x − y) with a translation-invariant kernel a, and a does not depend on the gauge or on the origin of the symmetric gauge. In particular a uniform shift of the whole block geometry by a vector s changes S by a coarse gauge transformation and leaves a unchanged.

Proof. Under a gauge transformation g both A(x, y) and W(x, y) pick up g(x)·g(y)^{−1}, so a = A/W is gauge invariant. Magnetic translation T_a = (translation by a) ∘ (gauge transformation exp(i(ef/2) a ∧ x)) in the symmetric gauge; W(x + a, y + a) = W(x, y) exp(i(ef/2)(x − y) ∧ a), and the gauge factor cancels this phase, so [A, T_a] = 0 gives a(x + a − y − a) = a(x − y). A uniform shift by s is conjugation by T_s on the fine side; on the coarse side it is the gauge transformation exp(i(ef/2) s ∧ Y). ∎

So the symbol σ_j(f; K) of §1 is well defined; it is the Fourier transform of a_j(f; ·) on the coarse lattice. The task's "translation-invariant parts" of the F-coefficients are its Taylor coefficients.

### 3.2 Moyal composition

Lemma 3.2. For A = W a and B = W b (both covariant), AB = W (a ⋆_f b) with the twisted convolution (a ⋆ b)(z) = Σ_w a(w) b(z − w) exp(i(ef/2) w ∧ (z − w)). In momentum space, as formal power series in f with exact coefficients (all kernels decay exponentially),

  (a ⋆ b)^(q) = exp(−(ief/2) (∂_{q′} ∧ ∂_{q″})) â(q′) b̂(q″) |_{q′ = q″ = q}
            = â b̂ − (ief/2){â, b̂} − (e²f²/8) P_2(â, b̂) + O(f³),   (3.1)
  {a, b} := ∂_0a ∂_1b − ∂_1a ∂_0b,  P_2(a, b) := ∂_0²a ∂_1²b − 2∂_0∂_1a ∂_0∂_1b + ∂_1²a ∂_0²b,

with matrix order kept. For a fine-to-coarse kernel (the averaging) the symbol is a function of the fine momentum q ∈ M·BZ, and per coarse momentum K it is a row over the umklapp family q_l = K + 2πl. Every operator in (2.4)–(2.5) is then a matrix-valued symbol 𝔨(K) indexed by (l, component), and products are given by (3.1) with ∂_K acting entrywise at fixed l.

Proof. W(x, y)W(y, z) = W(x, z) exp(i(ef/2)(x − y) ∧ (y − z)) (the three wedge products sum to (x − y) ∧ (y − z)). Expand the phase; a factor w_μ under the sum is i∂_{q_μ} on the Fourier side. For the umklapp form use Poisson summation over the fine points of a coarse cell; the derivatives act on the q-dependence, i.e. on K at fixed l. ∎

### 3.3 The per-momentum formula

Let 𝔨_f(K) = 𝔨_0 + f𝔨_1 + f²𝔨_2 + O(f³) be the symbol of the gauge-fixed KKT operator 𝒦(f) of §2.3, after division by W (Lemma 3.1). Its f-coefficients collect: the spin term and the cos φ factor of (2.1); the O(φ) corrections between the plaquette-corner transport of (2.1) and midpoint Wilson lines (triangles of area ¼ or ½ fine plaquette); the f-dependence of D_r; and the loop-log and exp factors of the averaging (§2.3). The orbital (Landau) part is not in 𝔨_1: it is in the Moyal brackets.

Proposition 3.3 (per-momentum form of Lemma 5.1, exact). σ_j(f; K) = −[𝔨_f^{⋆−1}(K)]_{22}, and with b_0 := 𝔨_0^{−1},

  b_1 = −b_0 𝔨_1 b_0 + (ie/2) b_0 {𝔨_0, b_0},   (3.2)
  b_2 = −b_0 [ 𝔨_1 b_1 + 𝔨_2 b_0 − (ie/2)({𝔨_0, b_1} + {𝔨_1, b_0}) − (e²/8) P_2(𝔨_0, b_0) ],   (3.3)
  σ_j^{(m)}(K) = −[b_m(K)]_{22},  m = 1, 2.

Proof. Solve 𝔨_f ⋆ b = 1 order by order with (3.1). ∎

All derivatives are in K at fixed l, of total order ≤ 2 in (3.2) and ≤ 4 in (3.3); the norm (1.2) adds 2 more. So (1.2) is a statement about symbols and their K-derivatives up to order 6 on the umklapp family.

### 3.4 What remains, per momentum

Three statements, each uniform in M and in K on the coarse BZ. Write q = K + 2πl, k = q/M.

(R1) Uniform invertibility and smoothness of 𝔨_0. In coarse units, sup_M sup_K ‖𝔨_0(K)^{−1}‖ < ∞ and the same for ∂_K^β 𝔨_0^{−1}, |β| ≤ 6. Every entry of 𝔨_0 is a trigonometric polynomial (finite range), so this reduces to the lower bound of U3_VERIFY item O6, now for the block-M KKT. Smoothness near K = 0 is automatic once the bound holds: the transverse projector singularity of U3 §4 does not occur in the gauge-fixed 𝔨_0.

(R2) Building blocks: even errors. For each building block X ∈ {Hessian, D_r, averaging} and each m ≤ 2, the f^m symbol satisfies X̂_m^{lat}(q) = M^{a_X} X̂_m^{c}(q)(1 + ε_{X,m}(k)) with ε smooth and |∂_q^β ε| ≤ C M^{−2}(1 + |q|)^{2−|β|}. This holds for the Wilson Hessian (Lemma 3.4). For Balaban's averaging it needs the point symmetry of the block and of the path family (Lemma 3.5). It fails at order M^{−1} for corner blocks (even L): see §4.2 and §5.

(R3) Umklapp sums with derivatives. Σ_l (1 + |l|)² |∂^β t_l^c| < ∞ for every term t_l of (3.2)–(3.3) and |β| ≤ 6, and Σ_{|l|_∞ > M/2} |∂^β t_l^c| ≤ C M^{−3}. For the f = 0 blocks this is U3_VERIFY §5 (derivatives of sinc and of K̂_μ/(iq_μ) do not grow in l). The f^1, f^2 averaging symbols are moments of the f = 0 kernel (polynomial weights from loop areas), so their continuum symbols are derivatives of sinc-type functions and obey the same bounds; this is checked by inspection, not written term by term.

Lemma 3.4 (Wilson Hessian, proved). In midpoint symmetric gauge the symbol of the fine Hessian at flux φ is even in k for every φ, and its lattice-vs-continuum relative error is an even smooth function of k, O(|k|²), at each order in f.

Proof. The point reflection x → −x about a lattice site maps link midpoints to link midpoints, maps b_μ to −b_μ, fixes x ∧ y, and fixes the constant field (it is a rotation by π in the (0,1) plane, and the identity on the other planes after combining with the reflection there). So the symbol h_φ(k) of the Hessian satisfies h_φ(−k) = h_φ(k). Each entry is a trigonometric polynomial in k/2 (midpoint offsets are half-integers), so h_φ(k) = h_φ^{c}(k)(1 + O(k²)) with the O(k²) term even. Individual pieces are not even: the spin term of (2.1) alone has O(k) odd entries (its (0,0) entry contains (sin φ/4)·sin k_1 from the pair X_1, X_3); they cancel against the O(φ) transport corrections of the orbital part. Only the total is even. ∎

Lemma 3.5 (averaging, conditional). If the block is centered at the coarse site (odd L) and the contour family is invariant under the point reflection of the block (true for the full family of all axis-ordered permutations, CMP 109 (0.4)), the f^m averaging symbols satisfy (R2). Sketch: the loop areas are polynomials in the block position x − c_−; the block sums are midpoint rules on a centered cube and on the unit segments, whose errors are even, O(M^{−2}). Not written: the check that the dexp/dlog factors at the loop holonomies keep the point symmetry (Balaban's loops start at c_−, not at the block center; the symmetry needed is c_− ↔ c_+ combined with the reversal of c).


## 4. Rate argument

### 4.1 Conditional theorem

Theorem 4.1 (conditional on R1–R3). For the single block-M averaging with a centered block and a point-symmetric contour family, (1.2) holds with r_j = M^{−2} = L^{−2j}, for m = 1, 2 and |α| ≤ 2, in d = 4 (and in d = 2 after the scaling M^{4−d}).

Proof. By Prop. 3.3, σ_j^{(m)}(K) is a finite sum of terms. Each term is a product of (i) entries of b_0 = 𝔨_0^{−1} and its K-derivatives and (ii) entries of 𝔨_0, 𝔨_1, 𝔨_2 and their K-derivatives, contracted over the umklapp index l. Step 1: the continuum objects. Replace every lattice block symbol by its continuum symbol at q_l = K + 2πl and extend the l-sums to Z^d. By R3 the sums converge absolutely with all derivatives; by R1 (in its M = ∞ form, which follows from the uniform bound) the inverse exists. This defines σ_∞^{(m)}. Step 2: head. For |l|_∞ ≤ M/2, by R2 each lattice factor differs from the continuum factor by a relative error ε(k_l) with |∂^βε| ≤ CM^{−2}(1 + |q_l|)^{2−|β|}. A product of n factors has relative error bounded by the sum of the factors' errors. Summing with the weights of R3 gives C M^{−2}. Step 3: tail. Σ_{|l|_∞ > M/2} ≤ C M^{−3} by R3. Step 4: inverses. b_0^{lat} − b_0^{c} = −b_0^{lat}(𝔨_0^{lat} − 𝔨_0^{c})b_0^{c}, bounded by R1 and Steps 2–3; derivatives by the product rule. This is U3 Theorem 4.1 Steps 1–5 with the extra Moyal derivatives, which R2 and R3 cover. ∎

So, given R1–R3, Lemma 5.1 holds with the rate of Theorem 4.1, and U3 Theorem 7.1 follows with ρ = L^{−2}.

### 4.2 Corner blocks (even L)

For a corner-anchored block {0, …, M−1}^d the fine points are the midpoint grid shifted by −1/(2M). A uniform shift is harmless for σ (Lemma 3.1). But the contours start at the anchor, which is not shifted, so block sums of contour-dependent quantities (transport phases, loop areas) are left Riemann sums: error −(F(1) − F(0))/(2M) + O(M^{−2}) for an integrand F along the block. At f = 0 these terms are coarse gauge terms and drop out (U3 Lemma 1.4: the symbol depends only on |χ_M|²). At f ≠ 0 nothing forces them to drop out. So for even L an M^{−1} term in σ^{(1)}, σ^{(2)} is possible. Balaban takes L odd and centered blocks, so this concerns only models with L = 2. The d = 2 numerics with L = 2 (§5) bound its coefficient by about 1% of the M^{−2} coefficient (composed) and about 5% (single block); they do not show it (see §5 for the caveat that the fits are not unique).

### 4.3 Composed averaging: the level sum

Balaban's composed linearized constraint is C_f^{(j)} = C^{(1)}_{f_j} ∘ ⋯ ∘ C^{(1)}_{f_1}, f_i = f L^{−2(j−i)} (Lemma 5.0, CMP 98 (91)). Its f^1 coefficient is Σ_i Q_{L^{j−i}} C^{(1),1} Q_{L^{i−1}} f L^{−2(j−i)}, where C^{(1),1} is the fixed one-step loop-log kernel. The term at depth i′ = j − i has weight L^{−2i′} and its lower part Q_{L^{i−1}} has lattice error O(L^{−2(i−1)}). So each level contributes O(L^{−2(j−1)}) and the crude bound is O(j L^{−2j}), plus the tail Σ_{i′≥j} L^{−2i′} = O(L^{−2j}) of the limit object (the infinite composition). A j L^{−2j} rate would still give geometric convergence of β_j(0) with any ρ > L^{−2}. Two facts would restore L^{−2j}: (a) the level-i error terms telescope, or (b) the loop-log correction C^{(1),1} is a coarse covariant gradient plus a kernel with an extra power of the flux. Neither is proved. The d = 2 data (§5) do not separate this: the composed and single-block F² coefficients converge at the same effective rate, and their difference is 0.6% at M = 27 (L = 3). A level-sum loss, if present, is not larger than the common slow-down seen in both.

### 4.4 What is proved without R1–R3

- The neutral sector, all of (1.2), rate L^{−4j}, limit 0 (Prop. 2.2).
- The exact formulas (2.4), (2.5), (3.2), (3.3).
- Lemma 3.4: the Wilson-Hessian part of R2.
- Lemma 3.1: the symbol of §1 is well defined and independent of gauge and of a uniform shift of the blocks.


## 5. Numerics

Script numerics/u3_lemma51_check.py (numpy, JAX, SuperLU with MMD ordering; numerics/.venv/bin/python -I; every run under 7 minutes on this Mac; the script writes numerics/results_l51/*.json, one file per (mode, L, M, nc), skip-if-done; that directory was deleted after this session to keep the file scope of the task, so the tables below are the only record; total rerun time about 25 min). Usage: `python -I u3_lemma51_check.py nc L jmax`; `report(nc, L)` prints the tables.

Model. d = 2, SU(2), fine torus n = M·nc, exact constant flux q quanta (φ = 2πq/n², coarse f = 2πq/nc²) in the twisted Landau gauge of ym_oneloop.background. Fine Hessian from ym_oneloop's plaquette Hessian. Constraint: linearization at the background of CMP 109 (0.4) with the full contour family (all axis orders), computed by JAX on each coarse bond's patch. Two modes: "comp" = composition of j one-step L-averagings, each linearized at its own averaged background (Lemma 5.0, CMP 98 (91)); "single" = one step with block M. S = −[KKT^{−1}]_{22} with K = Hess + D_rD_r^†, D_r the covariant gradient on λ vanishing at the final coarse sites; scaled by M^{4−d} = M². d = 4 is out of reach in real space at M ≥ 8, and the per-momentum Moyal formulas (3.2)–(3.3) were not coded.

Probes (invariant under the Cartan gauge transformations that relate the coarse backgrounds of different M, averaged over all coarse links, so independent of the Polyakov loops): diag_ch = (S_11 + S_22)(b, b); diag_neu = S_33(b, b); hop = S(b, b′)R(V_{b_−→b′_−})^T for b′ = b + e_ν, with charged trace (hop_ch) and antisymmetric part S_12 − S_21 (hop_odd). Charge conjugation makes diag/hop_ch even and hop_odd odd in f (checked to 10^{−17} on q = ±1, ±2 at M ≤ 8, then used to reflect q = 1, 2). Taylor coefficients a_m of f^m from q = 0, ±1, ±2 (exact degree-4 interpolation). This is a fixed linear functional of exact finite-f data, so convergence rates transfer to it.

Checks passed. ∇A = 0 at every background (< 2·10^{−16}). Coarse plaquette angle of the averaged background = f exactly (spread < 10^{−15}): U_j(V_f) = U_0^φ at every level. At f = 0, comp = single to all digits (U3 Lemmas 1.2, 1.4). Neutral sector: diag_neu(q)/diag_neu(0) = cos φ to 1.5·10^{−15} (Prop. 2.2 in d = 2). S is symmetric to 7·10^{−16} and has the coarse gauge zero modes.

Results, L = 2 (corner blocks), nc = 8, f = 0.0982 per quantum. Differences between successive M and their ratios (pure M^{−2}: ratio 4):

| probe | M = 2, 4, 8, 16 | diffs | ratios |
|---|---|---|---|
| diag_ch a0 | 2.3432, 3.3080, 3.6683, 3.7696 | 0.965, 0.360, 0.101 | 2.68, 3.56 |
| diag_ch a2 (comp) | −0.6174, −0.9985, −1.2197, −1.2913 | 0.381, 0.221, 0.072 | 1.72, 3.09 |
| hop_ch_00 a2 (comp) | 0.6053, 1.2894, 1.6213, 1.7236 | 0.684, 0.332, 0.102 | 2.06, 3.24 |
| hop_ch_01 a2 (comp) | 0.8324, 1.5322, 1.8817, 1.9905 | 0.700, 0.350, 0.109 | 2.00, 3.21 |
| hop_odd_01 a1 (comp) | −1.3474, −2.0099, −2.2647, −2.3369 | 0.662, 0.255, 0.072 | 2.60, 3.53 |
| diag_ch a2 (single) | −0.6174, −0.9929, −1.2189, −1.2984 | 0.375, 0.226, 0.080 | 1.66, 2.84 |
| hop_ch_00 a2 (single) | 0.6053, 1.2999, 1.6646, 1.7931 | 0.695, 0.365, 0.129 | 1.90, 2.84 |
| hop_odd_01 a1 (single) | −1.3474, −1.9768, −2.2073, −2.2682 | 0.629, 0.231, 0.061 | 2.73, 3.78 |
| diag_neu a2 | −0.0366, −0.0032, −2.2·10^{−4}, −1.4·10^{−5} | | 11.1, 14.4 (M^{−4}: 16) |

Results, L = 3 (centered blocks, Balaban's geometry), nc = 6, f = 0.1745 per quantum (pure M^{−2}: ratio 9):

| probe | M = 3, 9, 27 | diffs | ratio |
|---|---|---|---|
| diag_ch a0 | 2.9991, 3.7038, 3.8009 | 0.705, 0.097 | 7.26 |
| hop_ch_01 a0 | −1.8340, −2.3458, −2.4174 | 0.512, 0.072 | 7.14 |
| hop_odd_01 a1 (comp) | −1.8279, −2.3296, −2.3994 | 0.502, 0.070 | 7.19 |
| diag_ch a2 (comp) | −0.9495, −1.4979, −1.5962 | 0.548, 0.098 | 5.58 |
| hop_ch_00 a2 (comp) | 1.0917, 1.8138, 1.9334 | 0.722, 0.120 | 6.04 |
| hop_ch_01 a2 (comp) | 1.4837, 2.3699, 2.5178 | 0.886, 0.148 | 5.99 |
| diag_ch a2 (single) | −0.9495, −1.5070, −1.6059 | 0.557, 0.099 | 5.63 |
| diag_neu a2 | −9.3·10^{−3}, −1.4·10^{−4}, −2·10^{−6} | | 65.4 (M^{−4}: 81) |

Reading.
- Neutral F²: converges to 0 at M^{−4} (ratios 11 → 14 toward 16; 65 toward 81), as Prop. 2.2 states.
- F⁰ and charged F¹: same effective rate, M^{−1.8} at the largest sizes in both geometries (ratios 3.56 and 7.2), rising toward M^{−2}. The F¹ ratios equal the F⁰ ratios to two digits.
- Charged F²: slower at the same sizes, effective exponent 1.5–1.7 for L = 2 (8 → 16; comp 1.63–1.70, single 1.51–1.62) and 1.57–1.64 for L = 3 (9 → 27), still rising for L = 2 (2.0 → 3.2). No M^{−1} term: four-point fits for L = 2 (comp) give an M^{−1} coefficient below 1.5% of the M^{−2} coefficient (single block: up to 6%). But M^{−2} log M fits as well as M^{−2} + M^{−3}; with three or four sizes the two are not separable. This is the same open point as U3 O3 (second derivatives, possible log M): σ^{(2)} contains P_2, two derivatives on each of two factors (3.3).
- Composed vs single block: the F² limits differ by about 0.6% (scheme dependence of the averaging, as expected), and the rates agree. So no level-sum loss (§4.3) is visible beyond the common slow-down.
- Corner vs centered blocks: same picture; no evidence for the M^{−1} mechanism of §4.2.

What the numerics do not show: d = 4; the symbol σ^{(2)}(K) pointwise (the probes are real-space kernel entries, i.e. weighted K-integrals of σ^{(2)}); sizes beyond M = 16 (L = 2) and 27 (L = 3). The next decisive run is L = 3, M = 81 at nc = 4 (n = 324, 0.6M unknowns; about 30 min, needs checkpointing per q), or the per-momentum code for (3.2)–(3.3).


## 6. Ledger

Proved here:
- L1. Lemma 2.1: the background Hessian, the constraint, and Δ_j(f) split into a neutral sector and charged sectors (one per root); charge conjugation maps f → −f.
- L2. Prop. 2.2: neutral sector in closed form. F¹ coefficient 0; F² coefficient −(2M⁴)^{−1}H_0^†Δ_{01}H_0, bounded by Δ_j/(2M⁴). So Lemma 5.1 holds in this sector with limit 0 and rate L^{−4j}. In d = 2: Δ_j^{neu}(f) = cos(f/M²)Δ_j exactly (numerically 1.5·10^{−15}). This is the gauge-field form of U1_INFINITE_LATTICE Prop. 9.1.
- L3. Prop. 2.3: exact first- and second-order formulas (2.4), (2.5) for the background Schur complement. The first-order change of the minimizer map enters only (2.5), through 𝒦_0^{−1}𝔤.
- L4. Lemma 3.1: the "translation-invariant part" of U3 §5.3 is made precise as the canonical symbol (kernel divided by the straight Wilson line); it is gauge invariant and invariant under a uniform shift of the block geometry.
- L5. Lemma 3.2 and Prop. 3.3: Moyal composition and the exact per-momentum formulas (3.2), (3.3) for σ_j^{(1)}, σ_j^{(2)} in terms of the per-K KKT symbol and its K-derivatives up to order 4.
- L6. Lemma 3.4: point-reflection evenness of the Wilson-Hessian symbol at every flux; its lattice errors are even, O(k²), at every order in f (the Hessian part of R2).
- L7. Theorem 4.1: Lemma 5.1 with rate L^{−2j}, given R1–R3.
- L8. Item (d) of the task: no instability enters; only 𝒦_0 must be invertible.

Reduced (precise per-momentum statements, open):
- R1. Uniform invertibility of the block-M KKT symbol 𝔨_0(K), with K-derivatives up to order 6, uniformly in M and K (= U3_VERIFY O6 for the block-M problem).
- R2 for the averaging: even, O(M^{−2}) lattice errors of the f¹, f² symbols of Balaban's averaging. Lemma 3.5 sketches it for centered blocks; the point symmetry of the dlog/dexp factors at loop holonomies (loops based at c_−) is not checked.
- R3. Umklapp summability with up to 6 derivatives for the f¹, f² symbols (checked by inspection for the f = 0 blocks in U3_VERIFY §5; not written for the loop-moment symbols).

Open, not reduced:
- O1. Whether σ^{(2)} converges at L^{−2j} or at j L^{−2j} (log M). Two sources: the P_2 second-derivative terms (same issue as U3 O3) and the level sum of the composed averaging (§4.3). The d = 2 numerics cannot separate M^{−2} from M^{−2} log M. Either rate gives geometric convergence of β_j(0) for any ρ > L^{−2}, so U3 Theorem 7.1 survives with ρ = L^{−2} replaced by any ρ > L^{−2} if the log is real.
- O2. Corner (even-L) blocks: an M^{−1} term is possible in principle (§4.2); the numerics bound its coefficient by about 1.5% (composed) and 6% (single) of the M^{−2} coefficient and do not show it. Irrelevant for Balaban (odd L).
- O3. d = 4 charged sector: no numerics. The d = 2 model has the same building blocks (spin term, loop-log factors, Moyal structure) but fewer polarizations.

Numerical evidence (§5, d = 2, SU(2), CMP 109 (0.4) averaging, composed and single block):
- L = 2, M = 2, 4, 8, 16: F⁰ and F¹ error ratios 2.6 → 3.6 (target 4); F² ratios 1.7–2.1 → 2.8–3.2; neutral F² ratios 11 → 14 (target 16).
- L = 3, M = 3, 9, 27: F⁰ and F¹ ratio 7.1–7.3 (target 9); F² ratio 5.6–6.0; neutral F² ratio 65 (target 81).
- All exact checks pass (stationarity, coarse flux = f, comp = single at f = 0, neutral cos law).

Status of U3 Lemma 5.1 after this document: neutral sector PROVED; charged sector REDUCED to R1–R3 with rate L^{−2j} conditional on them, with a possible log M loss (O1) not excluded by numerics; numerics in d = 2 consistent with convergence of both soft-vertex coefficients at an effective rate M^{−1.6}–M^{−1.8} that is still increasing with M.
