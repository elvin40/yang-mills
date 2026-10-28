# R2: Telescoping and one-loop universality for Balaban's running coupling

Written 2026-10-27 (Claude, Fable 5.1). Scope: refinement (R2)/(R3) of THEOREM2.md. Sources read verbatim: THEOREM2.md, LEMMAS.md (Lemmas D, E), CMP 109 pp. 252–261 and 290–298 (PDF pages rendered for the garbled equations), CMP 98 Sect. B, CMP 95 Props. 1.1–1.2, CMP 96 Props. 2.5–2.6, CMP 99 Thms. 3.1, 3.12 and p. 428. All derivations below are mine unless a verbatim quote is marked. Page numbers are printed pages.

Summary of results (details in the sections):
1. (R3) is corrected. The matching in THEOREM2.md used the wrong lattice form of the standard action. Correct: 1/g_B² = 2N/g². Expected limit β_∞ = (11N²/(12π²)) log L; SU(2): (11/(3π²)) log L ≈ 0.3715 log L (≈ 0.953 for L = 13). The old value 0.0929 log L is 4 times too small.
2. The candidate determinant formula of the main thread is confirmed in structure. Two clarifications: the constraint Jacobian det(Q̃Q̃^T) cancels exactly between the δ-function and the bordered identity, so it must not appear; and the ghost domain is λ vanishing at the sites of the coarse lattice T^{(k)} (level-k block centers), not at level-1 block centers.
3. The universality argument is a plan with identified lemmas, not a proof. The exact telescoping is proved at the Gaussian level (Sect. 3). The identification of the Maxwell coefficient with Σ β_j(0) is a direct consequence of Balaban's (1.3) and (5.43) (Sect. 4). The k-linearity with uniform O(1) remainder is reduced to two lemmas (Sect. 5) that are not proved here.

## 1. Normalization matching (task (a))

### 1.1 Conventions

Continuum: A_μ = A_μ^a T^a, tr T^a T^b = ½ δ^{ab}, D_μ = ∂_μ + i[A_μ, ·], F_{μν} = ∂_μ A_ν − ∂_ν A_μ + i[A_μ, A_ν], [D_μ, D_ν]X = i[F_{μν}, X]. Standard action with the ordinary trace:

  S = (1/(2g²)) ∫ d⁴x Σ_{μ,ν} tr F_{μν}F_{μν} = (1/(4g²)) ∫ Σ_{μ,ν} F^a_{μν}F^a_{μν}.   (1.1)

Lattice: bond variable U_b = exp(i a A_μ(x)) for b = ⟨x, x + a e_μ⟩. By Baker–Campbell–Hausdorff to second order, U_p = U_μ(x) U_ν(x+μ) U_μ(x+ν)^{−1} U_ν(x)^{−1} = exp(i a² F_{μν}(x) + O(a³)); the commutator terms give ½(ia)²·2[A_μ, A_ν] = i a² · i[A_μ, A_ν], which is the i[A,A] term of (1.1) with the stated sign. For a Hermitian X, Re tr(1 − e^{iX}) = ½ tr X² + O(X⁴). Hence, with Σ_p over unoriented plaquettes, each counted once,

  Σ_p Re tr(1 − U_p) = Σ_x Σ_{μ<ν} ½ a⁴ tr F_{μν}² + O(a⁶) = ¼ ∫ Σ_{μ,ν} tr F_{μν}F_{μν}.   (1.2)

Comparing with (1.1): the standard Wilson action is

  S_W = (2/g²) Σ_p Re tr(1 − U_p) = (2N/g²) Σ_p [1 − (1/N) Re tr U_p],   i.e. β_lattice = 2N/g².   (1.3)

This is the standard form (β = 2N/g², e.g. β = 4/g² for SU(2)). The form "(1/(2g²)) Σ_p Re tr(1 − U_p)" quoted in THEOREM2.md (R3) equals (1.3) only if each plaquette is counted four times (both orderings of (μ,ν) and both orientations). With single counting it is wrong by a factor 4.

Balaban, CMP 109 (0.2), p. 252, verbatim: "A^ε(U) = Σ_{p∈T_ε} ε^{d−4}[1 − Re tr U(∂p)], where tr is the normalized trace, i.e. tr 1 = 1." His weight is 1/g_B² (eq. (0.17), p. 255: "exp[−(1/g_0²) Σ_{y∈T^{(1)}} Σ_{x∈B(y),x≠y} [1 − Re tr U(y,x)] − (1/g_0²) A(U)]"). So

  (1/g_B²) A(U) = (1/(N g_B²)) Σ_p Re tr(1 − U_p).   (1.4)

Matching (1.4) with (1.3): 1/(N g_B²) = 2/g², hence

  1/g_B² = 2N/g²,   g_B² = g²/(2N).   (1.5)

Check by the continuum limit directly: (1/g_B²)A → (1/(N g_B²))·¼ ∫ tr F F = (1/(4N g_B²)) ∫ tr F F = (1/(8N g_B²)) ∫ F^a F^a; equating with (1/(4g²)) ∫ F^a F^a gives 1/g_B² = 2N/g². Same result.

### 1.2 One-loop coefficient b_0 by the constant-field (Landau-level) computation

Background field: A = B + a, with B a constant abelian field in a Cartan direction, B_μ = B_μ^3 h, h = T^3 for SU(2) (tr h² = ½), F_{12}(B) = f h, all other components zero. Quadratic part of (1.1) in a: using F(B+a) = F(B) + D_μ a_ν − D_ν a_μ + i[a_μ, a_ν] and integrating by parts,

  S_2 = (1/(2g²)) ∫ tr[ 2(D_μ a_ν)² − 2(D_μ a_μ)² + 4i F_{μν}[a_μ, a_ν] ],

where the term −2(D_μ a_μ)² comes from −2 tr (D_μ a_ν)(D_ν a_μ) = −2 tr (D_ν a_ν)(D_μ a_μ) + 2 tr a_ν [D_μ, D_ν] a_μ and 2 tr a_ν i[F_{μν}, a_μ] = 2i tr F_{μν}[a_μ, a_ν]. Add the background Feynman gauge term (1/g²) ∫ tr (D_μ a_μ)². Then

  S_2 + S_gf = (1/g²) ∫ tr[ −a_ν D² a_ν + 2i F_{μν}[a_μ, a_ν] ],   S_ghost = (2/g²) ∫ tr c̄ (−D²) c.   (1.6)

Decompose the adjoint representation under ad_h. For SU(2): charges q = +1, 0, −1 (ad_{T^3} T^± = ±T^±). The neutral component does not see the field. The charged pair (a^1, a^2) forms one complex 4-vector field W_μ = (a^1_μ + i a^2_μ)/√2 of charge q = 1 in the abelian field f; the ghosts (c^1, c^2), (c̄^1, c̄^2) form two independent complex Grassmann scalars of charge ±1.

Operators per charged component (charge q, qf > 0):
- scalar: K_s = −D_q² with spectrum (2n+1)qf + k_3² + k_4², n ≥ 0, Landau degeneracy qf/(2π) per unit area of the 12-plane;
- vector: K_v = −D_q² δ_{μν} + 2qf·(spin term); the spin term has eigenvalues 0, 0 (polarizations 3, 4) and ±2qf (polarizations a_1 ± i a_2). Spectrum: (2n+1)qf + k_⊥² + s·2qf, s ∈ {0, 0, +1, −1}.

Counting: a complex boson gives +Tr log K to Γ, a complex Grassmann pair gives −Tr log K. So per charged pair

  Γ_1 = Tr log K_v − 2 Tr log K_s = −∫_0^∞ (dt/t) [Tr e^{−tK_v} − 2 Tr e^{−tK_s}].   (1.7)

Heat-kernel traces per unit 4-volume: ∫ d²k/(2π)² e^{−tk²} = 1/(4πt); Σ_{n≥0} e^{−t(2n+1)qf} = 1/(2 sinh(qft)). Hence

  Tr e^{−tK_s}/V = qf/(16π² t sinh(qft)),   Tr e^{−tK_v}/V = [qf/(16π² t sinh(qft))]·(2 + 2 cosh(2qft)).   (1.8)

(At f = 0 both reduce to 1/(16π²t²) per real polarization, the free result.) The ghosts cancel the two spin-0 polarizations exactly. With x = qft,

  (qf/sinh(qft))·2cosh(2qft) = (1/t)(1 − x²/6 + …)(2 + 4x² + …) = (2/t)(1 + (11/6)x² + …).   (1.9)

The 11/6 = 2 − 1/6 per spin-±1 polarization: +2 is the paramagnetic (spin) term, −1/6 is the diamagnetic (Landau orbital) term. Subtracting the f = 0 value,

  [Γ_1 − Γ_1(0)]/V = −(11/(48π²)) (qf)² ∫ (dt/t) + O(f⁴).   (1.10)

The t-integral is log divergent at t → 0 (UV) and is cut off in the IR by the physical IR scale. With UV cutoff Λ = 1/ε and IR cutoff μ, ∫_{ε²}^{μ^{−2}} dt/t = 2 log(Λ/μ), so

  [Γ_1 − Γ_1(0)]/V = −(11/(24π²)) (qf)² log(Λ/μ).   (1.11)

(The n = 0, s = −1 mode has eigenvalue −qf + k_⊥² and is the Nielsen–Olesen unstable mode. It does not affect the coefficient of the logarithm. In the block-spin setting of Sect. 2 the IR cutoff μ ≫ √(qf) removes it from the fluctuation space; see Sect. 2.6.)

Tree term for the same background: (1/(2g²)) Σ_{μν} tr F² · V = (1/(2g²))·2·f² tr h² · V = tr h² f² V/g². Sum over charged pairs (positive roots α) of q_α²: for SU(N), Σ_{α>0} α(h)² = ½ tr_adj(ad_h²) = N tr h² in the normalization tr T^aT^b = ½δ (check SU(2): 1 = 2·½). Hence

  Γ/V = tr h² f² [ 1/g² − (11N/(24π²)) log(Λ/μ) ],   i.e. 1/g²(μ) = 1/g²(Λ) − (b_0/(8π²)) log(Λ/μ),   b_0 = 11N/3.   (1.12)

Equivalent statements: d(1/g²)/d log μ = b_0/(8π²); μ dg/dμ = −b_0 g³/(16π²). This reproduces the standard b_0 = 11N/3 with every factor derived, not cited.

### 1.3 Expected limit in Balaban's units

Balaban's recursion (0.18), (0.20), p. 255–256, verbatim: "1/g_0² = 1/g_1² + β_1(g_0), or 1/g_1² = 1/g_0² − β_1(g_0)" and "1/g_{k+1}² = 1/g_k² + β_{k+1}(g_k)" [printed as (0.20); by (0.18) and (0.23) the sign convention is 1/g_{k+1}² = 1/g_k² − β_{k+1}]. One step coarsens by L, i.e. log(Λ/μ) increases by log L. By (1.5) the Balaban coupling is 1/g_B² = 2N/g², so

  β_∞ := lim_j β_j(0) (expected) = 2N · (b_0/(8π²)) · log L = (11N²/(12π²)) log L.   (1.13)

SU(2): β_∞ = (11/(3π²)) log L = 0.37151… · log L. For L = 13: log 13 = 2.5649, β_∞ ≈ 0.9529. For SU(3): (99/(12π²)) log L = 0.8359 log L.

Correction to THEOREM2.md (R3): the value (11N²/(48π²)) log L, SU(2) ≈ 0.0929 log L, is wrong by the factor 4 explained after (1.3). The structure of (R3) (multiply the standard rate by the conversion factor 1/g_B² ÷ 1/g²) is right; the conversion factor is 2N, not N/2.

Cross-check of the trace convention inside Balaban's own formulas: CMP 109 (5.43), p. 297, verbatim: "Σ_{(x,μ),(y,ν)} Π_{μν}(x−y) tr δB_μ(x)B_ν(y) = β ½ Σ_{x,μ,ν} tr(∂δB)_{μν}(x)(∂B)_{μν}(x) + …". This is the first variation of β·¼ Σ_{x,μ,ν} tr (∂B)² = β·½ Σ_p tr (∂B)_p², which is the quadratic part of β·A(exp iB) = β Σ_p[1 − Re tr e^{i(∂B)_p} + …] with the normalized trace. So β_j multiplies A in exactly Balaban's normalization (1.4), and (1.13) is the number to compare with.

## 2. The composed transformation and the one-loop determinant (task (b))

### 2.1 Balaban's objects, verbatim

Averaging, CMP 109 (0.4), p. 253: "Ū(c) = M(U, c) = exp[ i Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} (1/|G(c_−,x)|) Σ_{Γ'∈G(c_+,x')} (1/|G(c_+,x')|) (1/i) log U(Γ ∪ [x,x'] ∪ (−Γ') ∪ (−c)) ] U(c)." The variant actually used, (0.12), p. 254: "Ū(c) = exp[ i Σ_{x∈B(c_−)} L^{−d} (1/i) log U(c_−,x) U([x,x']) U(x',c_+) U(−c) ] U(c)." p. 254: "This average has properties similar to the properties of the average introduced in (0.4), especially all results of the paper [12] are valid for it."

Gauge fixing, (0.14), p. 254: "exp[−(1/(2α))|U(y,x) − 1|²] = exp[−(1/α)[1 − Re tr U(y,x)]]", with U(y,x) = M({U(Γ)}_{Γ∈G(y,x)}) (0.11). Faddeev–Popov step, p. 255: "we apply the gauge transformation U → U^{u^{−1}} with u(y) = 1 for y ∈ T^{(1)}. By the gauge invariance with respect to such transformations the integrand does not depend on u and the integral over u is equal to 1."

RG step, (0.19), p. 255: "A_{k+1}(g_{k+1}, V) = (T_k A_k)(g_{k+1}, V) = log N_k^{−1} ∫ dU ∏_{c∈T^{(k+1)}} δ(Ū(c)V^{−1}(c)) χ_k exp[ −(1/g_k²) Σ_{y∈T^{(k+1)}} Σ_{x∈B(y),x≠y} [1 − Re tr U(y,x)] + A_k(g_k, U) ], where the constant N_k is given by the integral above with V = 1". So α = g_k² in (0.14): the gauge fixing carries the same weight as the action.

Composition, CMP 98, p. 31: "Now we will prove the following fundamental fact: the new kth order averaging operation defined by the last expression in (88) is a composition of k averaging operations defined by (63) with properly chosen configurations V_0." And p. 24: "this definition is local in the sense that Ū^k_c, c ⊂ Ω^{(k)}, depends only on the bond variables U_b for b ⊂ B^k(c_−) ∪ B^k(c_+)." Covariance, p. 24: "from (42) we get (Ū^u)_c = u(c_−) Ū_c u^{−1}(c_+)." (The u on the right is the restriction of u to the coarse sites.)

Background field, CMP 109 (1.1), p. 260: "U → A(U), U: Ū^k = M^k(U) = V on T^{(k)}", "there exists exactly one regular, critical orbit of the functional … and it is a minimal orbit". So U_k(V) is the minimizer of the Wilson action under the k-fold composed constraint, not under a single-step constraint. (1.3)–(1.5), pp. 260–261, verbatim:

  A_k(U_k) = −(1/g_k²) A(U_k) + Σ_{j=0}^{k−1} { −β_{j+1}(g_j) A(U_k) + [log Z^{(j)}(U_k) − log Z^{(j)}(1)] + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)] },   (1.3)
  Z^{(j)}(U_k) = ∫ dB δ(Q̃B) exp[−½⟨B, Δ^{(j)}(U_k)B⟩],   (1.4)
  ⟨B, Δ^{(j)}(U_k)B⟩ = ⟨H_{1,j}(U_k)B, Δ_1(U_k)H_{1,j}(U_k)B⟩ − 2⟨H_{1,j}(U_k) h C̃^{(2)}(Ū^j_k, B), J⟩ + G^{(2)}(B),   (1.5)

"We have written explicitly terms of the order 0 in the coupling constants." "C̃^{(2)}(Ū^j_k, B) is the second order polynomial in the expansion of Q̃(Ū^j_k, B)."

### 2.2 The exact telescoping identity

Iterate (0.19) from j = 0 to k − 1 and integrate out the intermediate fields U_1, …, U_{k−1} against their δ-functions. Each δ(Ū(U_{j−1}) U_j^{−1}) with normalized Haar measure sets U_j = Ū(U_{j−1}). Write U_j := Ū^{(j)}(U) for the j-fold composed average of the fine field U (CMP 98 (88)–(92): this is the k-th order averaging). The result is

  exp A_k(V) = (∏_{j<k} N_j)^{−1} ∫ dU ∏_{c∈T^{(k)}} δ(Ū^{(k)}(U)(c) V(c)^{−1}) · ∏_{j=0}^{k−1} [ χ_j(U_j) exp(−(1/g_j²) GF_j(U_j)) ] · exp(−(1/g_0²) A(U)),   (2.1)

  GF_j(U_j) := Σ_{y∈T^{(j+1)}} Σ_{x∈B(y), x≠y} [1 − Re tr U_j(y, x)].

This is exact. It is the identity "exp(A_k(V)) = ∫ dU δ(Q^{(k)}(U) = V) exp(A_0(U))" of the task, with the precise meaning of the measure: the δ-function is on the composed average only, and the k gauge-fixing factors and small-field cutoffs of the intermediate steps are evaluated on the intermediate averages U_j = Ū^{(j)}(U), which are functions of U.

Gauge structure of (2.1). Let G_k := {u : T → G, u(y) = 1 for all y ∈ T^{(k)}}. By the covariance quoted above, the constraint and A(U) are invariant under G_k. GF_j is invariant under u that are constant on level-(j+1) blocks (U_j(y,x) → u(y)U_j(y,x)u(y)^{−1}). The intersection of these invariances over all j < k with G_k is trivial. So the integrand of (2.1) has no residual gauge symmetry for fixed V. (The stabilizer of V in the coarse gauge group acts on the integrand, but it acts trivially on the fluctuation field; see 2.4.)

Composed axial gauge. By CMP 109 (0.6) and (0.11), U(y,x) transforms as u(y)U(y,x)u(x)^{−1}, and the choice u(x) := U(y,x) for all x ∈ B(y), x ≠ y, u(y) = 1, makes all U(y,x) = 1 simultaneously. Since GF_j ≥ 0 with equality iff all U_j(y,x) = 1, each GF_j attains its minimum 0 on every gauge orbit. Applying this at level 0, then at level 1 with u constant on level-1 blocks (which preserves GF_0 = 0), and so on, gives a representative of each G_k-orbit with GF_j = 0 for all j < k. Call this the composed axial gauge. CMP 98 p. 31 describes the same construction: "Thus the gauge transformation is uniquely determined by all the conditions and is given by the formulas (77) for j = k − 1 and by (87)."

### 2.3 The background and its stationarity

Take V = V_F: a constant abelian field strength F in a U(1) ⊂ SU(N) on the coarse torus, V_F(c) = exp(i L^kε 𝒜_μ(c) h) with 𝒜 linear in x, F_{12} = F, flux quantized on the torus. Define U_0 on T by the same formula at spacing ε. Then:

(i) U_0 is an exact stationary point of the Wilson action, with no constraint. Proof: the variation of A in the bond b (direction μ) is −Re tr̂(iX Σ_{p∋b} U_p^{(b)}) with X Hermitian and U_p^{(b)} the plaquette holonomy started along b. For U_0 the two plaquettes through b in the μν-plane give e^{±iε²F_{μν}h}, so Σ_{p∋b} U_p^{(b)} = Σ_ν 2cos(ε²F_{μν}h) =: C, Hermitian and commuting with h. tr(XC) is real for Hermitian X, C, so Re tr̂(iXC) = 0. Hence J = D*_{U_0} Im ∂U_0 = 0 in the notation of CMP 109 (1.2), (1.8): the Lagrange multiplier of the constrained problem vanishes and the term −2⟨H h C̃^{(2)}, J⟩ in (1.5) drops.

(ii) Ū^{(k)}(U_0) = V_F exactly. Proof for one step with (0.4) or (0.12): for an abelian field, log of the loop variable U(Γ ∪ [x,x'] ∪ (−Γ') ∪ (−c)) is i times the flux through the surface swept by translating Γ along c, which equals i L ε² Σ_ν F_{μν} n_ν(x) h with n(x) = (x − c_−)/ε. This is linear in x − c_−, and the block B(c_−) is symmetric about c_−, so the sum over x vanishes; the result is independent of the choice of staircase contour, so the M-average over contour families does not change it. Hence Ū(c) = U_0(c) = product of U_0 along the straight segment c = exp(i Lε 𝒜_μ(c)h), again linear. Iterate k times.

(iii) In the composed axial gauge representative of U_0 (call it U_0 again), GF_j = 0 and the first variation of GF_j vanishes (GF_j ≥ 0). With (i), U_0 is an exact stationary point of the full exponent A(U) + Σ_j (g_0²/g_j²) GF_j(Ū^{(j)}(U)) on the constraint surface, whatever the ratios g_0²/g_j² are.

### 2.4 One-loop expansion of (2.1)

Parametrize U = U_0 e^{iB}, B ∈ g^{bonds(T)}. Facts used:
- Haar measure: dU = dB·j(B) with j(0) = 1 and j background-independent (left invariance). Contributes at two loops only.
- The group δ-function: Ū^{(k)}(U_0e^{iB}) V_F^{−1} = exp(i Ad_{V_F}(Q̃_F B + C^{(2)}_F(B) + O(B³))) by (1.5), with Q̃_F the linearization of the composed averaging at U_0 (depends on F through the parallel transports inside (0.4)/(0.12)). δ_G(e^{iY}) = δ(Y)(1 + O(Y²)) and Ad_V is an isometry of g. The C^{(2)} term enters the one-loop quadratic form only multiplied by the tree-level Lagrange multiplier J, which is 0 by 2.3(i). After the rescaling B → g_0 B the term is O(g_0) and does not contribute at one loop.
- Quadratic form: Δ_F := Hess_{B=0}[ A(U_0e^{iB}) + Σ_{j<k} GF_j(Ū^{(j)}(U_0e^{iB})) ] on g^{bonds(T)}. The coefficients 1/g_j² = 1/g_0² − Σ_{i≤j}β_i(g) differ from 1/g_0² by O(1), so their differences enter at order g_0² relative to the one-loop term. At zero coupling all weights are 1/g_0².
- Coarea: for Q̃: R^n → R^m surjective, ∫_{R^n} dB δ(Q̃B) f(B) = det(Q̃Q̃^T)^{−1/2} ∫_{ker Q̃} f dσ.
- Bordered identity (proof: rotate to a basis adapted to ker C; the Schur complement of the block [[K_22, C_2^T],[C_2, 0]] is K_11 = K|_{ker C}, and det[[K_22, C_2^T],[C_2, 0]] = (−1)^m det(C_2)² = (−1)^m det(CC^T)):

  det(K|_{ker C}) = (−1)^m det[[K, C^T],[C, 0]] / det(CC^T),   C: m×n of rank m.   (2.2)

Result. With n = dim g · |bonds(T)|, m = dim g · |bonds(T^{(k)})|, at zero coupling,

  log Z_k(V_F) := A_k(V_F)|_{order g⁰, after removing −(1/g_0²)A(U_0)}
               = log ∫ dB δ(Q̃_F B) exp(−½⟨B, Δ_F B⟩) + c_k
               = −½ log det(Q̃_F Q̃_F^T) − ½ log det(Δ_F|_{ker Q̃_F}) + c_k'
               = −½ log |det 𝔅_F| + c_k'',   𝔅_F := [[Δ_F, Q̃_F^T],[Q̃_F, 0]],   (2.3)

with c_k, c_k', c_k'' independent of F (they collect (2π)-powers, the normalizations N_j, and the sign (−1)^m). The last line uses (2.2): the coarea factor det(Q̃Q̃^T)^{−1/2} and the denominator of (2.2) cancel exactly, so the constraint Jacobian never appears. The same conclusion follows from the Lagrange-multiplier representation δ(Q̃B) = ∫ dJ e^{i⟨J,Q̃B⟩}/(2π)^m, which turns the integral into a Gaussian with matrix 𝔅_F.

Here Δ_F includes Balaban's gauge-fixing quadratic form G^{(2)} (the Hessian of Σ_j GF_j∘Ū^{(j)}), so Δ_F|_{ker Q̃_F} is nondegenerate: a zero mode would be an infinitesimal G_k-symmetry of Σ_j GF_j, and 2.2 showed there is none. Torus zero modes: the stabilizer of V_F in the coarse gauge group (for SU(2) and F ≠ 0 a U(1); for V = 1 the whole group) acts on B by Ad, with δB_b = λ − Ad_{U_0(b)}λ = 0 for λ in the stabilizer direction. It is a symmetry of the Gaussian, not a flat direction, and contributes no factor. Global U(1)/SU(2) volume factors, which differ between V_F and V = 1, do not arise because V is fixed and the Haar integral over U is not quotiented.

### 2.5 Check of the candidate formula of the main thread

Candidate: log Z(V_F) = const + log det(D_F^†D_F) − ½ log |det B_F|, with D_Fλ(b) = λ(x) − Ad_{U_0(b)}λ(y) for λ vanishing at block centers, B_F the bordered matrix of Δ_F^{YM} + D_F D_F^† (Feynman-type gauge-fixed Hessian of the Wilson action), using det(K|_{ker C}) = (−1)^r det[[K,C^T],[C,0]]/det(CC^T) and det((Δ + DD^†)|_W) = det(Δ|_{W∩N^⊥}) det(D^†D) for N = im D ⊂ W = ker Q̃.

Verdict: confirmed in structure, with three corrections or clarifications.

(a) Domain of the ghost operator. The symmetry group of the composed constrained integrand before gauge fixing is G_k (u = 1 at the sites of T^{(k)} = centers of level-k blocks), not "u = 1 at level-1 block centers". So D_F acts on λ ∈ g^{T \ T^{(k)}}. Check that N = im D_F ⊂ W = ker Q̃_F: an infinitesimal G_k-transformation preserves the constraint by the covariance property, so Q̃_F D_F λ = 0. Check that D_F is injective: D_Fλ = 0 means λ is covariantly constant along every bond, so λ is determined by its values at T^{(k)}, which are 0. Hence det(D_F^†D_F) > 0.

(b) The constraint Jacobian. With the bordered identity the factor det(Q̃_FQ̃_F^T) appears in the denominator; it cancels against the coarea factor of the δ-function (2.3). The candidate formula, read as "const + log det(D^†D) − ½ log |det B_F|" with no det(Q̃Q̃^T), is therefore right, but only because of this cancellation. If one computes det((Δ+DD^†)|_W) by any other method (for example by an explicit basis of W), the coarea factor det(Q̃_FQ̃_F^T)^{−1/2} must be added by hand; it is F-dependent.

(c) Gauge choice. The candidate replaces Balaban's exponential gauge fixing (0.14) by the linear background-field gauge fixing ½|D_F^†B|² with Faddeev–Popov determinant det(D_F^†D_F). Derivation of the candidate in that gauge: the constrained Gaussian ∫_W dB e^{−½⟨B,Δ^{YM}B⟩} has the flat directions N (Δ^{YM}D_Fλ = 0 by gauge invariance). Insert 1 = det(D^†D)(2π)^{−n_λ/2} ∫ dλ exp(−½|D^†(B + Dλ)|²) (Gaussian in λ with matrix (D^†D)², determinant det(D^†D)²), shift B, factor out the λ-volume: Z = const · det(D^†D) · det((Δ^{YM} + DD^†)|_W)^{−1/2}, and by (2.2) with the cancellation of (b), Z = const · det(D^†D) · |det B_F|^{−1/2}. The identity det((Δ + DD^†)|_W) = det(Δ|_{W∩N^⊥}) det(D^†D) holds because Δ^{YM} maps W into N^⊥ (symmetric, kills N) and DD^† is block diagonal with respect to W = N ⊕ (W∩N^⊥), with DD^†|_N having the same nonzero spectrum as D^†D. In Balaban's gauge the exact integral is the same (both are Faddeev–Popov insertions of 1 over the compact group G_k), so the g_0 → 0 asymptotics agree term by term and the one-loop coefficient is gauge-fixing independent. The λ-integral over the Lie algebra, versus the compact Haar integral over G_k, differs by a constant independent of F at one loop. So the candidate is a legitimate replacement for (2.3) with Balaban's G^{(2)}, and is simpler to implement.

Corrected formula:

  log Z_k(V_F) = const_k + log det(D_F^†D_F) − ½ log |det B_F|,   B_F = [[Δ_F^{YM} + D_FD_F^†, Q̃_F^T],[Q̃_F, 0]],
  D_F: g^{T∖T^{(k)}} → g^{bonds(T)}, (D_Fλ)(b) = λ(b_−) − Ad_{U_0(b)}λ(b_+),   const_k independent of F,   (2.4)

and D(F) := log Z_k(V_F) − log Z_k(1) is then free of all normalization constants.

### 2.6 Positivity and the small-F regime

The Gaussian in (2.3)/(2.4) must be positive on ker Q̃_F. In the continuum the vector operator K_v has the Nielsen–Olesen eigenvalue −qf + k_⊥². The constraint δ(Q̃_FB) freezes the modes with momentum below ≈ (L^kε)^{−1}. CMP 99 p. 428, verbatim: "it is defined by a positive definite operator C*Δ_kC with a lower bound γ_0 > 0 independent of k and U. We have proved it in [4], Lemma 2.4, for operators with U = 1. Localizing the operators in Δ_k and using the methods of Sect. B we can prove it for C*Δ_kC with an arbitrary configuration U satisfying (3.35), (3.36) with Mα_0 sufficiently small." The regularity condition (3.35), p. 397: "|A| < O(1)Mα_0(L^jη)^{−1}, |∇A| < O(1)Mα_0(L^jη)^{−2} on □". For the constant field this reads F·(L^kε)² ≲ Mα_0 in lattice units. In this regime the constrained Hessian is bounded below by γ_0 (L^kε)^{−2} − O(F) > 0, the unstable mode is removed, and D(F) is real analytic and even in F:

  D(F) = c_k · A(V_F) + O(F⁴ (L^kε)⁴ · |T^{(k)}|) + (finite-size terms),   A(V_F) = Σ_{p∈T^{(k)}}[1 − Re tr̂ V_F(∂p)] = ½ tr̂h² · (L^kε)⁴F² · |T^{(k)}| · (1 + O(F²)).   (2.5)

The coefficient c_k is read off as the F²-slope; the O(F⁴) and finite-size terms are separated by varying the flux quantum and the torus size. Sect. 4 identifies c_k with Σ_{j≤k} β_j(0).

## 3. Gaussian telescoping: sum of per-step determinants = composed determinant

Proposition 3.1. Let Δ be a symmetric positive form on R^n (the fine quadratic form, including all gauge-fixing terms, around the composed stationary point), and let Q̃_1: R^n → R^{n_1}, Q̃_2: R^{n_1} → R^{n_2} be surjective linear maps (linearized one-step averagings at the background), Q̃ := Q̃_2Q̃_1. Define the one-step effective form Δ_1 on R^{n_1} by ½⟨V_1, Δ_1V_1⟩ := min{½⟨B, ΔB⟩ : Q̃_1B = V_1}, attained at B = H_1V_1 (the linearized minimizer map). Then for every V_2 ∈ R^{n_2}

  ∫ dB δ(Q̃B − V_2) e^{−½⟨B,ΔB⟩} = [∫ dB δ(Q̃_1B) e^{−½⟨B,ΔB⟩}] · [∫ dV_1 δ(Q̃_2V_1 − V_2) e^{−½⟨V_1,Δ_1V_1⟩}].   (3.1)

Proof. Insert 1 = ∫ dV_1 δ(Q̃_1B − V_1) and use Fubini. For fixed V_1 write B = H_1V_1 + B' with Q̃_1B' = 0; then ⟨B,ΔB⟩ = ⟨V_1,Δ_1V_1⟩ + ⟨B',ΔB'⟩ because H_1V_1 is the constrained minimizer (the cross term vanishes on ker Q̃_1). The B'-integral is independent of V_1. ∎

Iterating (3.1) k times gives, for the Gaussian model, log of the composed constrained integral = Σ_{j<k} log Z^{(j)} where Z^{(j)} is the one-step constrained Gaussian with the level-j effective form Δ_j and the level-j minimizer map H_{1,j}, exactly the structure of Balaban's (1.4)–(1.5). In Balaban's integral the per-step forms also carry the background dependence through U_k, the C̃^{(2)} term (zero here), and G^{(2)}; Proposition 3.1 applies after these are included in Δ. Hence, at zero coupling,

  Σ_{j=0}^{k−1} [log Z^{(j)}(U_k(V_F)) − log Z^{(j)}(1)] = log Z_k(V_F) − log Z_k(1) = D(F),   (3.2)

where the left side is Balaban's expression in (1.3) and the right side is (2.3)/(2.4). Status: proved for the Gaussian model; the identification of Balaban's Δ^{(j)} with the Schur complements of the composed form is his own definition ("the Gaussian integral normalizing the Gaussian measure for a fluctuation field in j-th step integration", p. 260), so (3.2) holds at order g⁰ provided every step is expanded around the same composed stationary point, which 2.3 guarantees for V_F.

One more identity, from (1.3) alone: substituting 1/g_k² = 1/g_0² − Σ_{j=1}^{k} β_j(g_{j−1}) (from (0.18), (0.20)) into (1.3), the β-terms cancel exactly:

  A_k(U_k) = −(1/g_0²)A(U_k) + Σ_{j<k}[log Z^{(j)}(U_k) − log Z^{(j)}(1)] + Σ_{j<k}[E^{(j+1)}(g_j,U_k) − E^{(j+1)}(g_j,1)].   (3.3)

So the sum of the per-step one-loop determinants is the full one-loop effective action after k steps, with the bare coefficient −1/g_0² in front of A. The counterterms −β_{j+1}A in (1.3) only redistribute the marginal part of the determinants into the coefficient of A, which is what makes the coefficient of A in the one-loop determinant equal to Σ β_j(0) (Sect. 4).

## 4. Why the Maxwell coefficient of D(F) equals Σ_{j≤k} β_j(0)

Balaban's definition of the marginal term, CMP 109 p. 258, verbatim: "The guiding principle here is the gauge invariance. It identifies the action A^η(U_k), through a set of Ward-Takahashi identities, as a basic term in the effective action, the so-called marginal variable in the renormalization group language. The remaining terms sum up to a uniformly bounded expression." And: "The sum of lower order terms is analyzed with a help of Ward-Takahashi identities. They allow the extraction of terms, which grouped together yield an expansion of βA^η(exp iηH). The remaining terms have bounds as above. We define the function β_j(g_{j−1}) to be equal to the coefficient β."

The vacuum polarization tensor, (1.20), p. 264: Π^{(j+1)}_{μν}(g_j; x, x') is the second variation at B = 0 of E^{(j+1)}(g_j, U_{j+1}(exp iB)), B a field on T^{(j+1)}; the limit T^{(j+1)} ↗ Z^d is taken ("This limit exists by the localized representation (1.7)"). Its structure, (5.37)–(5.38), p. 297, verbatim: "Π_{μν}(p) = β(δ_{μν}Δ(p) − ∂̄_μ(p)∂_ν(p)) + Π'_{μν}(p). The function Π'_{μν}(p) has all the symmetries of the function Π_{μν}(p) and it can be written in the form of a third order polynomial in the derivatives ∂̄(p), ∂(p)". And (5.42): "β = −(∂²/∂p_1∂p_2 Π_{12})(0) = −(∂²/∂p_μ∂p_ν Π_{μν})(0) = Σ_x Π_{μν}(x)x_μx_ν for μ ≠ ν. This is the fundamental equality defining the β-function." Then (5.43), p. 297: the quadratic part of E^{(j)} is β·½Σ_{x,μ,ν} tr(∂δB)_{μν}(∂B)_{μν} (first-variation form) plus terms with at least three lattice derivatives acting on the fields.

Consequences for the constant abelian field V_F on T^{(k)}:

(i) By 2.3(ii), U_0 is the level-k minimizer for V_F and also the level-(j+1) minimizer for the restriction of U_0 to T^{(j+1)}, for every j < k. So the term log Z^{(j)}(U_k(V_F)) in (1.3) equals log Z^{(j)} evaluated on the same background that defines the step-(j+1) tensor Π^{(j+1)} at zero coupling.

(ii) At zero coupling the quadratic part in B of log Z^{(j)}(U_{j+1}(exp iB)) − log Z^{(j)}(1) is ½⟨B, Π^{(j+1)}(0)B⟩ with Π^{(j+1)}(0) := Π^{(j+1)}(g_j = 0). (The marginal part of E^{(j+1)} at order g⁰ is, by (1.3), exactly the marginal part of log Z^{(j)}; the counterterm −β_{j+1}A is what removes it.) For B a linear potential (constant F), the terms of Π' with three or more derivatives vanish identically on the infinite lattice, since two lattice derivatives of a linear function are zero. Hence

  [log Z^{(j)}(U_{j+1}(exp iB)) − log Z^{(j)}(1)]_{F²-part, infinite lattice} = β_{j+1}(0)·½Σ_p tr̂(∂B)_p² = β_{j+1}(0)·A(exp iB)|_{F²},   (4.1)

where the normalization check is the one made after (1.13): (5.43) is the first variation of β·¼Σ_{x,μ,ν}tr(∂B)² = β·½Σ_p tr(∂B)_p², and A(exp iB) = Σ_p[1 − Re tr̂ e^{i(∂B)_p}] = ½Σ_p tr̂(∂B)_p² + O(B⁴) with the normalized trace. So the coefficient of the Maxwell term in the one-loop determinant of step j+1 is β_{j+1}(0) in Balaban's own normalization of (0.2), (0.18).

(iii) Sum over j < k and use (3.2):

  D(F) = Σ_{j=1}^{k} β_j(0) · A(V_F) + O(F⁴) + (finite-size terms),   (4.2)

where the finite-size terms come from replacing the infinite-lattice tensors Π^{(j)} by their torus versions (exponentially small in the torus size by the decay (5.10), (5.44): "|Π'_{μν,κλρ}(x−y)| ≤ O(1)E_0 exp(½δ_1|x−y|)" [sic; the exponent is negative]) and from the flux quantization. The O(F⁴) terms come from the quartic part of the determinants. This is the statement "D(F) = β_1(0)·A(V_F) + O(F⁴) + finite-size terms" of the task for k = 1, and its k-step version.

Caveat on (ii): Balaban's β_{j+1}(g_j) is defined from E^{(j+1)}, which at order g⁰ contains log Z^{(j)} plus the irrelevant part; the claim that no other order-g⁰ contribution to the marginal coefficient exists is the content of (1.3) ("We have written explicitly terms of the order 0 in the coupling constants"), which I take as Balaban's statement, not as something proved here.

## 5. Universality (task (c))

### 5.1 Statement to be proved

Claim U. There is a constant R, independent of k, such that

  Σ_{j=1}^{k} β_j(0) = (11N²/(12π²)) · k log L + r_k,   |r_k| ≤ R for all k ≥ 1.   (5.1)

### 5.2 Decomposition by a second telescoping

Let the fine torus T_ε have n⁴ sites (n = L^{K+m} in Balaban's setup) and consider the flux sector with constant abelian flux F (twisted boundary conditions). Apply Proposition 3.1 once more, now with the second factor being the integral over the coarse field V on T^{(k)}: the full one-loop quantity on the fine torus is the sum of the composed constrained determinant and the one-loop determinant of the coarse tree-level action A^{(k)}_tree(V) := A(U_k(V)) (Balaban's (0.22) at g → 0; this is the classically perfect action of his blocking). Define, for a lattice action S on a torus with N_s⁴ sites in the flux sector,

  D_S(F) := [log Z_S(flux F) − log Z_S(flux 0)]_{order g⁰} with the tree term at the sector minimum removed.

Then, exactly,

  D(F) = D_{Wilson, n}(F) − D_{A^{(k)}_tree, n/L^k}(F).   (5.2)

Lemma U1 (needed; not proved here). For the Wilson action on a torus of n⁴ sites in the flux sector with constant abelian flux F: D_{Wilson,n}(F) = [2N(b_0/(8π²)) log n + c_W + o_n(1)]·A(V_F) + O(F⁴), with c_W a constant (the Wilson-action scheme constant, related to the Hasenfratz–Hasenfratz 1980 Λ-ratio computation) and o_n(1) → 0 as n → ∞ at fixed F n²ε². Inputs: the constant abelian field is the minimum of the Wilson action in the sector; twisted boundary conditions remove the toron zero modes; the determinant over all fluctuations has the Landau-level structure of Sect. 1.2 with lattice corrections that are analytic in F and whose F² coefficient is log n + const.

Lemma U2 (needed; not proved here). For the level-k tree-level perfect action A^{(k)}_tree on the coarse torus of (n/L^k)⁴ sites: D_{A^{(k)}_tree, n/L^k}(F) = [2N(b_0/(8π²)) log(n/L^k) + c_k^{perf} + o_n(1)]·A(V_F) + O(F⁴), with |c_k^{perf}| ≤ C uniformly in k.

Given U1, U2, (5.2) and (4.2) with n → ∞ (β_j(0) are infinite-volume quantities by (1.22)):

  Σ_{j≤k} β_j(0) = 2N(b_0/(8π²)) k log L + (c_W − c_k^{perf}),   R = |c_W| + C,   (5.3)

which is (5.1) with the constant (1.13). The log coefficient is universal because both lattice theories (Wilson at spacing ε; perfect action at spacing L^kε) are regularizations of the same continuum theory whose one-loop F² coefficient depends only on the ratio of the IR scale (torus) to the UV scale (lattice spacing): the difference of the two IR-finite quantities is log(n) − log(n/L^k) = k log L.

### 5.3 What is needed for U2, and what Balaban's propagator papers give

U2 needs uniform-in-k control of the one-loop F² coefficient of the perfect actions A^{(k)}_tree. That coefficient is a second moment of a coarse-lattice vacuum polarization built from (a) the Hessian Δ_k of A^{(k)}_tree at V = 1 and its inverse, (b) the first and second background-derivatives of Δ_k. For the uniform bound one needs: uniform bounds and uniform exponential decay of these objects, and a uniform lower bound of the Hessian on the gauge-fixed subspace. The propagator papers give exactly these three things, with constants depending on d and L only, for every k, but say nothing about convergence as k → ∞.

Verbatim statements:
- CMP 95, p. 33, Proposition 1.1: "The operator G is a symmetric operator on L²(T) and ||GJ||, ||∇GJ||, ||G∇*J||, ||∇G∇*J||, ||∇∇GJ||, ||G∇*∇*J|| ≤ γ_0^{−1}||J||, (1.89) with a positive constant γ_0 independent of k, T, and depending on d only (if we put a = 1). This implies the bound from below: Δ_a = G^{−1} ≥ γ_0(Δ + I)." And p. 32: the function Δ_0(p')φ(p') "is bounded from below and above by positive constants independent of k and depending on d and a only."
- CMP 95, pp. 35–36, Proposition 1.2: "There exists a positive constant δ_0 depending on d only, such that |(GJ)(x)| ≤ O(1)e^{−δ_0|y−y'|}|J|, (1.110) for x ∈ Δ(y), supp J ⊂ Δ(y'), with the constant O(1) depending on d only" (and (1.111)–(1.114) for derivatives and Hölder norms).
- CMP 96, p. 246, Proposition 2.5: "The operator G_D defined by (2.90) on the torus T_D (or on the whole lattice ξZ^d) has the representation (2.129) and satisfies all the inequalities (1.110)–(1.114) of the Proposition 1.2 with a positive constant δ_2 instead of δ_0. This constant depends on d and L only." And p. 246: "derivatives of H_j up to third order, and their local Holder norms as in (2.67), are uniformly bounded and have a uniform exponential decay with a decay rate depending on d only." Proposition 2.6, p. 247: "There exists a positive constant δ_3 depending on d and L only, such that |(GJ)(x)|, |(∇GJ)(x)|, |(G∇*J)(x)|, |(ΔGJ)(x)| ≤ O(1)[(L^jη)², L^jη, L^jη, 1] e^{−δ_3 d(y,y')}|J| (2.136) for x ∈ Δ(y), y ∈ Λ_j, supp J ⊂ Δ(y'), with the constant O(1) depending on d and L only".
- CMP 99, p. 397, Theorem 3.1: "There exist positive constants M_1, δ_0, α_0, B_0 dependent on d and L only, a constant B_0(β) dependent on d, L and β, 0 ≤ β < 1 (B_0(β) → ∞ if β → 1), such that for M ≥ M_1 and for an arbitrary configuration U satisfying the regularity condition (3.35) with Mα_0 ≤ α_0, the operator G'(U) (a = 1) satisfies the inequalities" (3.42)–(3.47), which are the background-field versions of (1.110)–(1.114). "All these inequalities are invariant with respect to gauge transformations of U." Theorem 3.12, pp. 423–424: "If an external gauge field configuration U satisfies both regularity conditions (3.35), (3.36) for α_0 sufficiently small, then Theorems 3.3, 3.10, 3.11 hold for the propagators G, G_1 … Let us denote a common, best possible, decay rate for all these operators by δ_0. It is a positive, absolute constant depending on d and L only."
- CMP 99, p. 428 (quoted in 2.6): lower bound γ_0 > 0 for C*Δ_kC "independent of k and U".

Search of CMP 95, 96, 99 and CMP 102 (variational problem) for statements about the limit k → ∞, a renormalization-group fixed point, or convergence of the operators in k: none found. The only "fixed point" statements in CMP 102 are contraction-mapping fixed points of the equations for the minimizer at fixed k (e.g. p. 10: "there exists exactly one fixed point of the transformation", "of uniformly convergent sequence of successive approximations"). The CMP 95 remark "independent of k" (p. 32) concerns the bounds, not a limit.

So the propagator papers supply the uniform-in-k inputs for a bound |c_k^{perf}| ≤ C (Lemma U2) once the one-loop F² coefficient of the coarse perfect action is written as a convergent lattice sum of their kernels. They do not supply convergence of c_k^{perf} or of β_j(0).

### 5.4 From Cesàro bounds to the bounds Lemma D needs

Lemma D (LEMMAS.md) needs, by THEOREM2.md (R1), for every window 0 ≤ k < K:

  β(K−k) ≤ Σ_{i=k+1}^{K} β_i(0) ≤ β′(K−k),   0 < β ≤ β′ absolute.   (T2-a1″)

Suppose (5.1) holds with c := (11N²/(12π²)) log L and remainder bound R. Then Σ_{i=k+1}^{K} β_i(0) = c(K−k) + r_K − r_k, |r_K − r_k| ≤ 2R. For windows of length K−k ≥ m_0 := ⌈4R/c⌉ this gives (c/2)(K−k) ≤ Σ ≤ (3c/2)(K−k). For windows shorter than m_0, (5.1) gives nothing beyond |Σ| ≤ c m_0 + 2R. So:

Proposition 5.1. (5.1) plus any one of the following implies (T2-a1″) with β = min(c/2, β_*/1) and β′ = max(3c/2, β^*):
 (a) individual bounds 0 < β_* ≤ β_i(0) ≤ β^* for all i (this is (T2-a1′) itself; (5.1) then only fixes the constants);
 (b) positivity of every window sum of length < m_0: Σ_{i=k+1}^{K} β_i(0) ≥ β_*(K−k) for K−k < m_0, plus a uniform upper bound β_i(0) ≤ β^*;
 (c) convergence β_i(0) → β_∞ > 0 (then (5.1) forces β_∞ = c), plus positivity of the finitely many β_i(0) before the convergence sets in; the finitely many early values are a finite computation.

The uniform upper bound β_i(0) ≤ β^* is part of Balaban's inductive assumptions (p. 264: β_{j+1}(g_j) "is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives"), which Theorem 3 (p. 264) asserts for the actions "defined inductively by the small field renormalization transformations (0.17)–(0.20)". Whether the bound is uniform in j is not stated explicitly in the sentence; the constants in the inductive assumptions are declared absolute ("constants independent of X and j", p. 263), so I read it as uniform in j, but this reading is not load-bearing here.

What convergence of increments would need. β_{j+1}(0) = Φ(A^{(j)}_tree), where Φ is the one-step one-loop Maxwell coefficient as a functional of the fine action (through its Hessian Δ_1 at the background and the minimizer map H_{1,j} in (1.5)) with the fixed one-step averaging (0.12) and gauge fixing (0.14). If A^{(j)}_tree → A^* as j → ∞ in a norm in which Φ is continuous (uniform bounds and decay of the Hessians as in 5.3, plus convergence of the kernels), then β_j(0) → Φ(A^*) =: β_∞ and (5.1) identifies β_∞ = c. Convergence of the perfect actions A(U_j(·)) is the classical statement "the blocking has an attractive classically perfect fixed point", which Balaban's variational paper (CMP 102) does not address (search in 5.3). It is the one input of (R2) that is neither in Balaban nor derived here. The contraction structure of CMP 98 (130)–(143) (composition Q^j of the linearized averagings with bounds uniform in j) is the natural starting point for the abelian part; the background-dependent part needs CMP 99 Theorems 3.1–3.12 with a convergence statement that is not in those theorems.

## 6. Ledger

Proved in this text (derivations complete, every factor explicit):
- P1. The standard Wilson action with single plaquette counting is (2/g²)Σ_p Re tr(1 − U_p) = (2N/g²)Σ_p[1 − (1/N)Re tr U_p]; its continuum limit is (1/(2g²))∫tr F² with F = ∂A − ∂A + i[A,A] (Sect. 1.1).
- P2. Balaban's coupling: 1/g_B² = 2N/g² (1.5). THEOREM2.md (R3) is wrong by a factor 4.
- P3. b_0 = 11N/3 and d(1/g²)/d log μ = b_0/(8π²) from the constant-field heat-kernel computation with ghosts (Sect. 1.2), including the split 11/6 = 2 (paramagnetic) − 1/6 (diamagnetic).
- P4. Expected limit in Balaban's units: β_∞ = (11N²/(12π²)) log L; SU(2): (11/(3π²)) log L ≈ 0.3715 log L (1.13). "Expected" because it assumes universality (Sect. 5) and convergence of increments; neither is proved.
- P5. The exact composed form (2.1) of the k-step transformation, its gauge structure, and the composed axial gauge (Sect. 2.2).
- P6. The constant abelian field is an exact unconstrained stationary point of the Wilson action (J = 0), is reproduced exactly by the averaging at every level, and is a stationary point of action plus all gauge-fixing terms in the composed axial gauge (Sect. 2.3).
- P7. The one-loop determinant formula (2.3) and the exact cancellation of the constraint Jacobian det(Q̃Q̃^T); the bordered identity (2.2) with proof (Sect. 2.4).
- P8. The candidate formula is confirmed in the corrected form (2.4), with the ghost domain λ vanishing on T^{(k)} and the remark that the Feynman-type gauge is a different but equivalent Faddeev–Popov insertion (Sect. 2.5).
- P9. Gaussian telescoping, Proposition 3.1, and the cancellation of the β-counterterms in (1.3), identity (3.3).
- P10. Proposition 5.1: what Cesàro bounds with uniform remainder add to (T2-a1″) and what they leave open.

Plans (argued, structure fixed, not proved):
- Q1. Identification (4.2) of the Maxwell coefficient of D(F) with Σβ_j(0). It rests on Balaban's (1.3) ("terms of order 0" are exactly the log Z^{(j)}), his (5.37)–(5.43) structure theorem for Π, and my observation that Π' vanishes on linear potentials. The torus and flux-quantization corrections are asserted to be exponentially small using his decay bounds, not estimated.
- Q2. Universality (5.1)–(5.3): reduced to Lemmas U1 (Wilson action one-loop in a flux sector on a torus: log n + c_W) and U2 (same for the level-k perfect action, with c_k^{perf} bounded uniformly in k). Neither lemma is proved. The propagator papers give the uniform-in-k bounds and decay rates that U2 needs (quoted in 5.3) but not the lemma itself.
- Q3. Convergence of increments β_j(0) → β_∞: needs convergence of the classically perfect actions A(U_j(·)) and continuity of the one-step functional Φ. Not in Balaban's papers (searched CMP 95, 96, 99, 102), not derived here.

Unverified or taken from Balaban without independent check:
- V1. That (1.3) is complete at order g⁰, i.e. that E^{(j+1)}(g_j, ·) has no order-g⁰ marginal part beyond log Z^{(j)}; Balaban's sentence on p. 260 is the only evidence used.
- V2. The sign convention of (0.20) as printed ("1/g_{k+1}² = 1/g_k² + β_{k+1}(g_k)") versus (0.18) and (0.23) ("−β_j A"); I follow (0.18)/(0.23): the coupling grows toward the infrared and β_j > 0 means asymptotic freedom. If (0.20) is the intended sign, Theorem 2's inequality (0.31) still reads the same way, since (0.31) is stated for 1/g_k² − 1/g² with k < K.
- V3. The uniform-in-j reading of "uniformly bounded on this interval together with all derivatives" (p. 264).
- V4. The regime bound F(L^kε)² ≲ Mα_0 for positivity of the constrained Hessian is inferred from CMP 99 (3.35) and p. 428; the constants are not tracked.
- V5. The Nielsen–Olesen mode is said to be removed by the constraint; this is a scale-separation argument, not a proof.
- V6. Lemma U1 is attributed to the lattice background-field literature (Hasenfratz–Hasenfratz 1980 for c_W; 't Hooft twisted boundary conditions for zero modes); I did not open those papers in this session.

Numerical consequences for the experiment of THEOREM2.md §5/§8 (unchanged recipe, corrected target): for SU(2) the fitted slope c_j of D(F) against A(V_F) should approach (11/(3π²)) log L ≈ 0.3715 log L (≈ 0.408 for L = 3, ≈ 0.598 for L = 5, ≈ 0.953 for L = 13), four times the value written in THEOREM2.md §8 step 5. U(1) must give D ≡ 0 at every j.
