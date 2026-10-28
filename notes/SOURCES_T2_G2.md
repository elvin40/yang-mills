# SOURCES_T2_G2 — item (G2): per-cell one-loop densities as limits of torus determinants (DERIVE)

Date: 2026-10-28. Status: complete (all sections and ledger written).
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). reports/ONLINE_SWEEP.md not opened.

Read list: THEOREM2_PROOF_v4.md l. 117–176, 420–488; BETA_FP_LEMMA43.md l. 1–62, 85–130; BETA_FP_H.md l. 13–46; U1_VERIFY.md l. 34–90; U1_INFINITE_LATTICE.md §1, §3.2; numerics/NUMERICS.md l. 41–79 (and §6–§7 tables nearby); TRUST_LEDGER.md l. 37, 62–70; KAPPA_BOUNDED.md l. 20–60, l. 164; SOURCES_T2_KUNIF.md §1–§6; numerics/KAPPA_D.md. Balaban pages: listed in §6.

Ledger tags: [P] proved here; [R] reduced to a named input; [I] inference not checked line by line; [V] checked on a Balaban page image or text layer (stated which).

Plan.
1. Set-up: torus, induced operators, the objects to be compared.
2. Two lemmas: Combes–Thomas decay and the method of images (torus density = infinite density + O(e^{−δN})).
3. Theorem 1: trivial background and plane wave. Massive constrained log-det; a-coefficient and p²-coefficient commute with N → ∞; equality with the momentum-space formula.
4. Theorem 2: constant field V_f with quantized flux; f²-coefficient as a limit of torus second differences.
5. The massless pieces of Prop. 2.1: fiberwise identity, zero-mode removal, exact torus identity, rate for the coarse piece. U1_VERIFY 2.3 made a proof.
6. Balaban inputs (page checks).
7. Consistency with the numerical convergence data (and a minute-scale check).
8. Consequences: (G2) bullets, item 9, what stays open.
9. Ledger.

## 0. Result in brief

- (G2) for the massive object is proved [P], given one gap input (Gap) at the base background (§1.4). Massive object = the constrained one-loop log-determinant ℓ = log det(D_k^TD_k) − ½ log|det Bord| (BETA_FP_LEMMA43 (1.2), the left side of Prop. 2.1). On the torus T_N it has no zero modes (Lemma 1.2). Its density per coarse cell converges to the infinite-lattice density with error ≤ C_j e^{−δ_j N}. The same bound holds for every a-derivative (plane wave) after a Cauchy estimate.
- The p²-coefficient commutes with N → ∞ [P]: β-type ratios at p = 2πn/N converge with error O(N^{−2}) + O(N²e^{−δ_jN}). The f²-coefficient at V_f commutes with N → ∞ [P, given (Gap_f) and the C⁴-regularity of the infinite-lattice density in real f, both [R]]. It is the limit of torus second differences at the quantized flux f_1 = 2π/N², with error O(N^{−4}) + O(N⁴e^{−δ_jN}).
- The four massless pieces of Prop. 2.1 (fine ghost, fine Feynman gluon, coarse ghost, coarse kernel) are handled fiberwise [P, trivial and plane-wave backgrounds]. Prop. 2.1 holds at each Bloch momentum K ≠ 0. On the torus the K = 0 fiber is replaced by pseudo-determinants. This gives an exact torus identity with an N-independent zero-mode constant c_zm, so c_zm contributes O(N^{−4}) to the density. The infinite-lattice identity "density of ℓ = ∫F − ∫G" is then a theorem, not a formal step. This upgrades U1_VERIFY item 2.3(a). The massless coarse piece alone converges at rate O(N^{−2}) [P, given symbol bounds |∂^αG| ≤ C|K|^{−|α|}, |α| ≤ 2]. With bounds up to |α| ≤ 4 the rate is O(N^{−4} log N) [P].
- The constants C_j, δ_j are fixed-j constants. The elementary (Combes–Thomas) proof gives δ_j ≳ L^{−2j} in coarse units. A j-uniform δ needs Balaban's decay theorem (CMP 95 Prop. 1.2, page checked; CMP 99 Thm 3.1 at small-field backgrounds, text layer only). I do not prove the j-uniform version.
- Item 9 at g = 0: β_j(0) on the K-th torus differs from the whole-lattice β_j(0) by ≤ C_j e^{−δ_j N_K}, N_K = side of the level-j torus in level-j cells. The one-loop part of item 9 is closed at each fixed j [P]. A bound that is summable over j ≤ K needs the j-uniform decay [R: CMP 95 Prop. 1.2 + (Gap) uniform in j]. The g > 0 R-term part (B8) is not touched.

## 1. Set-up

### 1.1 Lattices and backgrounds
Fix L odd ≥ 3, j ≥ 1, Λ := L^j (odd). Fine lattice Z⁴ with unit spacing. Coarse cells are the centered blocks of side Λ; Γ_1 := ΛZ⁴ acts on them by translation. Torus T_N := Z⁴/Γ_N, Γ_N := NΛZ⁴, i.e. N coarse cells per side. Coarse units: one coarse cell = unit length.
Backgrounds (all with color σ_3, so the one-loop operators depend on U_0 only through Ad U_0 ∈ SO(3)):
- (T) trivial, U_0 = 1.
- (P) plane wave: the fine expansion point U_0(a) of NUMERICS §5 / BETA_FP_LEMMA43 §1, coarse momentum p along e_1, coarse link angles a·cos(p x_1) in direction 2. On T_N take p ∈ (2π/N)Z. For p = 2πn/N_p with n, N_p integers, U_0(a) is periodic under the supercell lattice Γ_1^p := ΛN_pZ ⊕ ΛZ³.
- (F) constant abelian field V_f with fine background U_0^φ, φ = f/Λ² (BETA_FP_H §1, Fact 1.1). On T_N take f N² ∈ 2πZ (f = 2πm/N²). Then the standard magnetic transition functions u_γ(x) ∈ SO(3), γ ∈ Γ_N, commute and define the adjoint bundle on T_N [P, standard; total adjoint flux through each (0,1)-face is N²f ∈ 2πZ]. Whether the SU(2) links themselves need m even is irrelevant here, because only Ad U_0 enters.

### 1.2 Operators
At a background U_0: Δ = Hess A(U_0) on fine link fields, D = D(U_0) the covariant gradient on gauge parameters, anchors = one site per coarse cell (the level-j center), ι_k / ι_a the inclusion of non-anchor / anchor gauge coordinates, D_k = Dι_k, Q̃ the linearized composed j-step averaging at U_0, Bord = [[Δ + D_kD_k^T, Q̃^T],[Q̃, 0]] (BETA_FP_LEMMA43 (1.2); U1_INFINITE_LATTICE (1.1)). All of them are local: there is R_j < ∞ (fine units) such that each matrix element depends only on the links within distance R_j and vanishes for points farther apart than R_j [I: the composed averaging of CMP 109 uses paths inside a bounded neighbourhood of a level-j block; NUMERICS §5 "all operators of one step have range one coarse cell"; R_j ≤ c·Λ].
The constrained one-loop log-determinant (the object of (G2)) is
  ℓ(U_0) := log det(D_k^TD_k) − ½ log|det Bord|,   (1.1)
on T_N written ℓ_N. Its infinite-lattice density per coarse cell is defined in §2.3 (diagonal of the logarithm) and coincides with the Brillouin-zone formulas (§3.3).

### 1.3 Induced operators
Let τ_γψ(x) := u_γ(x)ψ(x − γ) be the (magnetic) translations, u_γ ≡ 1 for (T), (P). Let A be an operator on ℓ²(X; C^r), X ⊂ Z⁴ (or a finite union of shifted copies, e.g. links or non-anchor sites), commuting with τ_γ for γ ∈ Γ_N, with Σ_y‖A(x,y)‖ < ∞ uniformly. A acts on the space H_N of τ-invariant bounded functions (ψ = τ_γψ for all γ ∈ Γ_N), identified with functions on a fundamental domain F_N. Write A_N := A|_{H_N}. Its kernel on F_N is
  A_N(x,y) = Σ_{γ∈Γ_N} A(x, y+γ) u_γ(y+γ),   x, y ∈ F_N.   (1.2)
Lemma 1.1 [P]. (a) A ↦ A_N is a unital *-homomorphism on the algebra of τ-commuting operators with uniformly summable kernels. (b) If A is a local operator built from the background U_0 with range R_j and NΛ > 2R_j, then A_N equals the same operator built from the torus background on T_N.
Proof. (a) Restriction of operators on bounded functions to an invariant subspace is multiplicative and unital. Self-adjointness: commuting with τ_γ means A(x+γ, y+γ) = u_γ(x+γ)A(x,y)u_γ(y+γ)^{−1}, and τ_γτ_{−γ} = 1 gives u_{−γ}(y−γ) = u_γ(y)^{−1}. With these, A_N(y,x)^* = Σ_γ u_γ(x+γ)^{−1}A(x+γ, y) = Σ_γ A(x, y−γ)u_γ(y)^{−1} = A_N(x,y) when A(y,x) = A(x,y)^*. The torus inner product is the sum over F_N. (b) For NΛ > 2R_j at most one term of (1.2) is nonzero, and the matrix element is computed from links in a ball that does not wrap around T_N. ∎
Lemma 1.2 [P]. On T_N (any of (T), (P), (F)) D_k^TD_k is positive definite, with D_k^TD_k ≥ (4Λ⁵)^{−1} in fine units. The same bound holds on Z⁴.
Proof. If λ vanishes at the anchor of a cell, then for x in that cell |λ(x)|² ≤ 4Λ Σ_{b∈path}|(Dλ)(b)|² along a lattice path of length ≤ 4Λ inside the cell (parallel transport is orthogonal in SO(3), so it does not change norms). Summing over the Λ⁴ sites of the cell, each link is used at most Λ⁴ times: Σ_cell|λ|² ≤ 4Λ⁵ Σ_{links of the cell}|Dλ|². Sum over cells. ∎
So ℓ_N has no ghost zero modes. The gluon block has none either, given (Gap) below and Lemma 2.2(a).

### 1.4 The gap input
(Gap) At the base background (T), on ℓ²(Z⁴): Q̃Q̃^T ≥ q_j > 0 and Δ + D_kD_k^T ≥ γ_j > 0 on ker Q̃.
Lemma 1.3 [P, given Q̃Q̃^T ≥ q_j and the identity Q̃D = D_cι_a^T (BETA_FP_LEMMA43_VERIFY §4, exact)]. At background (T), the second half of (Gap) holds at every fixed j.
Proof. Bloch decomposition over Γ_1 (trivial background is Γ_1-periodic). Each fiber at coarse momentum K ∈ [−π, π]⁴ is finite-dimensional. Δ ≥ 0 (Hessian at the minimum) and D_kD_k^T ≥ 0, so it suffices to show: B in the fiber, Q̃B = 0, ΔB = 0, D_k^TB = 0 imply B = 0. At U_0 = 1, ΔB = 0 means dB = 0, so B = Dλ + c with λ quasi-periodic and c a constant field (c = 0 unless K = 0). Then D_k^TB = ι_k^TXλ = 0, X = D^TD: Xλ vanishes off the anchors. Q̃B = D_cλ_a + Q̃c = 0, and Q̃c is a nonzero multiple of c. If K ≠ 0: c = 0, so D_cλ_a = 0 with λ_a quasi-periodic of momentum K, hence λ_a = 0. If K = 0: λ_a is cell-periodic, i.e. constant on the coarse lattice, so D_cλ_a = 0 and c = 0; replace λ by λ − λ_a (D annihilates constants at U_0 = 1). In both cases λ vanishes at the anchors and Xλ vanishes off them, so Σ_{cell} ⟨λ, Xλ⟩ = Σ_{cell}|Dλ|² = 0 (Green's identity; quasi-periodic boundary terms cancel). So Dλ = 0 and B = 0. The fiber matrices are continuous in K on a compact set, so the smallest fiber eigenvalue on ker Q̃(K) has a positive minimum γ_j. ∎
The surjectivity bound Q̃Q̃^T ≥ q_j is a hypothesis of Prop. 2.1 (BETA_FP_LEMMA43 §2) [R]. For CMP 109 averaging it is the statement that the linearized composed average has a bounded right inverse; I did not check it in Balaban [I]. Numerical support: smallest constrained eigenvalue 0.085 (L = 3, n = 6; U1_VERIFY §2.4; NUMERICS §4).
(Gap_f) At background (F) for |f| ≤ f_0: the same two bounds with constants q_j/2, γ_j/2. [R: Balaban's propagator bounds at regular (small field strength) backgrounds, CMP 99 Thm 3.1–3.3, §6 below; NUMERICS §4 gap 0.085 at finite flux]. A bounded-perturbation argument does not give it, because U_0^φ − 1 is not small in norm on Z⁴.

## 2. Two lemmas: decay and images

### 2.1 Combes–Thomas
Lemma 2.1 [P; standard, Combes–Thomas 1973]. Let A act on ℓ²(X; C^r), X ⊂ R⁴ discrete, with A(x,y) = 0 for |x − y| > R and S := max(sup_x Σ_y‖A(x,y)‖, sup_y Σ_x‖A(x,y)‖) < ∞. Let z ∈ C with ‖(z − A)^{−1}‖ ≤ 1/η. Put μ := R^{−1} log(1 + η/(2S)). Then ‖(z − A)^{−1}(x,y)‖ ≤ (2/η) e^{−μ|x−y|}.
Proof. For a unit vector e let E be multiplication by e^{μ e·x}, and A_e := EAE^{−1}, kernel A(x,y)e^{μ e·(x−y)}. Schur's test gives ‖A_e − A‖ ≤ S(e^{μR} − 1) = η/2. So z − A_e = (z − A)[1 − (z − A)^{−1}(A_e − A)] is invertible with ‖(z − A_e)^{−1}‖ ≤ 2/η. On finitely supported vectors E(z − A)^{−1}E^{−1} and (z − A_e)^{−1} agree (both invert z − A_e on the dense set where the products are defined; X is countable, and one may first truncate to finite boxes, where everything is a matrix identity, and pass to the limit using the uniform bound). Hence ‖(z − A)^{−1}(x,y)‖ e^{μ e·(x−y)} ≤ 2/η. Take e = (x − y)/|x − y|. ∎
Remark. If A is not finite-range but ‖A(x,y)‖ ≤ C_Ae^{−m|x−y|}, the same proof works with S(e^{μR} − 1) replaced by sup_x Σ_y‖A(x,y)‖(e^{μ|x−y|} − 1), which is ≤ η/2 for μ small enough (μ < m). This is used for the coarse kernel Δ_Λ(V) in §5.

### 2.2 Logarithm and images
Lemma 2.2 [P]. Let A be self-adjoint on ℓ²(X; C^r), range R, row sum S, commuting with τ_γ for γ ∈ Γ_N, with spec(A) ⊂ [a_−, a_+], a_− > 0. Let NΛ > 2R. Then:
(a) spec(A_N) ⊂ spec(A).
(b) log A_N = (log A)_N, and for every x ∈ F_N
  |tr(log A_N)(x,x) − tr(log A)(x,x)| ≤ r C_A Σ_{γ∈Γ_N∖0} e^{−μ|γ|} ≤ r C_A c_4 e^{−μNΛ},   (2.1)
with η := a_−/2, μ := R^{−1} log(1 + a_−/(4S)), C_A := (2/π)(6a_+)·(2/η)·M_log, M_log := sup_{z∈𝒞}|log z|, 𝒞 the boundary of the rectangle {a_−/2 ≤ Re z ≤ 2a_+, |Im z| ≤ a_+}, and c_4 := sup_{t≥μΛ·1} e^{t}Σ_{m∈Z⁴∖0}e^{−t|m|} < ∞ (bounded by Σ_{n≥1}8(2n+1)³e^{−(n−1)t}).
(c) Analytic version. Let A(a) = A + Σ_{i≥1} a^iA_i with each A_i of range ≤ R, commuting with τ_γ, and ‖A(a) − A‖ ≤ a_−/4 and row sums ≤ 2S for complex |a| ≤ a_0. Then (b) holds for A(a) with η = a_−/4 (and μ, C_A adjusted accordingly), log A(a) is analytic in a, and Tr log A_N(a) = log det A_N(a) (the branch continuous from a = 0).
Proof. (a) For z ∉ spec(A), (z − A)^{−1} commutes with τ_γ and has an exponentially decaying kernel (Lemma 2.1), so it has a uniformly summable kernel. By Lemma 1.1(a), (z − A)^{−1}_N inverts (z − A)_N = z − A_N. (b) By (a) and the spectral theorem, log A = (1/2πi)∮_𝒞 log z (z − A)^{−1}dz, and the same formula holds for A_N with (z − A_N)^{−1} = ((z − A)^{−1})_N; the contour integral commutes with A ↦ A_N because the kernels converge uniformly. So log A_N = (log A)_N. On 𝒞, dist(z, [a_−, a_+]) ≥ η, so Lemma 2.1 gives ‖(log A)(x,y)‖ ≤ (|𝒞|/2π)M_log(2/η)e^{−μ|x−y|}, |𝒞| ≤ 12a_+. By (1.2), tr(log A_N)(x,x) − tr(log A)(x,x) = Σ_{γ≠0} tr[(log A)(x, x+γ)u_γ(x+γ)], |tr[M u]| ≤ r‖M‖ for orthogonal u. This is (2.1). (c) For complex a with ‖A(a) − A‖ ≤ a_−/4, spec(A(a)) lies in the a_−/4-neighbourhood of [a_−, a_+], inside the rectangle, and ‖(z − A(a))^{−1}‖ ≤ 4/a_− on 𝒞 by a Neumann series. Lemma 2.1 does not need self-adjointness. Holomorphic functional calculus gives log A(a) analytic in a. For a matrix M with spectrum in Re z > 0, Tr log M = log det M with the principal branch on each eigenvalue; both sides are continuous in a, so the branches agree. ∎

### 2.3 Densities
For A as in Lemma 2.2 that also commutes with τ_γ, γ ∈ Γ_1 (backgrounds (T), (F)) or with the supercell translations Γ_1^p (background (P)), define the infinite-lattice density per coarse cell
  ρ_∞(A) := (1/n_c) Σ_{x∈C} tr(log A)(x,x),   C a fundamental cell of Γ_1 (n_c = 1) or of Γ_1^p (n_c = N_p).   (2.2)
Covariance gives tr(log A)(x+γ, x+γ) = tr[u (log A)(x,x) u^{−1}] = tr(log A)(x,x), so (2.2) does not depend on the choice of C, and it equals the limit of box averages.
Corollary 2.3 [P]. Under the hypotheses of Lemma 2.2, with N a multiple of n_c,
  |N^{−4} log det A_N − ρ_∞(A)| ≤ n_site r C_A c_4 e^{−δN},   δ := μΛ,   (2.3)
n_site := number of points of X per coarse cell. Under (c) the left side is analytic in |a| ≤ a_0, so for every n ≥ 0
  |∂_a^n[N^{−4} log det A_N(a) − ρ_∞(A(a))]_{a=0}| ≤ n! a_0^{−n} n_site r C_A c_4 e^{−δN}.   (2.4)
Proof. Sum (2.1) over x ∈ F_N (N⁴ coarse cells; the cell sums are all equal to n_cρ_∞ by covariance), divide by N⁴. (2.4) is Cauchy's estimate on the circle |a| = a_0. ∎
Size of δ. In fine units the gluon gap is a_− ∼ γ_jΛ^{−2}-type (constrained gap ∼ L^{−2k}, U1_VERIFY §2.5, Lemma 2.2), S = O(1)·(norm of Q̃ rows), R ∼ Λ. Then δ = μΛ ≈ (Λ/R)·a_−/(4S) ∼ Λ^{−2} in coarse units. This is pessimistic: the true decay rate of the massive propagator is ∼ √a_− in fine units, i.e. O(1) in coarse units, and Balaban proves a j-uniform rate δ_0 (CMP 95 Prop. 1.2; §6). The elementary Lemma 2.1 is enough at fixed j.

## 3. Theorem 1: trivial background and plane wave

Convention. p is the fine-lattice momentum of the wave (U1_INFINITE_LATTICE (1.2)), P := Λp the coarse momentum. On T_N, P ∈ (2π/N)Z. w_N(p) := N^{−4}∂_a²ℓ_N(a,p)|_{a=0} (per coarse cell), S_N(p) := 4w_N(p)/(Λ⁴(1 − cos p)) (U1 (1.2); NUMERICS §6 normalization). w_∞, S_∞ are the same with ℓ_N/N⁴ replaced by ℓ_∞ (3.2).

Lemma 3.1 (saddle-point bound) [P]. Let Bord = [[A, Q^T],[Q, 0]], A = A^T, ‖A‖ ≤ α, QQ^T ≥ q > 0, A ≥ γ > 0 on ker Q. Then Bord is invertible and ‖Bord^{−1}‖ ≤ C_B := 2√2 (1/γ + 1/√q)(1 + α/√q)².
Proof. Solve Au + Q^Tv = r, Qu = s. Let Q^+ := Q^T(QQ^T)^{−1}, ‖Q^+‖ ≤ q^{−1/2}, and P the orthogonal projector on ker Q. Write u = u_0 + Q^+s with u_0 ∈ ker Q. Projecting the first equation by P (PQ^T = 0) gives PAPu_0 = P(r − AQ^+s), so ‖u_0‖ ≤ γ^{−1}(‖r‖ + αq^{−1/2}‖s‖). Then v = (Q^+)^T(r − Au), ‖v‖ ≤ q^{−1/2}(‖r‖ + α‖u‖). With X := 1/γ + 1/√q: ‖u‖ ≤ X(1 + α/√q)(‖r‖ + ‖s‖) and ‖v‖ ≤ X(1 + α/√q)²(‖r‖ + ‖s‖). Uniqueness follows from the same estimates with r = s = 0. ∎

Under (Gap), Lemma 3.1 gives ‖Bord(0)^{−1}‖ ≤ C_B on ℓ²(Z⁴) at background (T). The entries of Bord(a) (plane wave) are trigonometric polynomials in the link angles a cos(p x_1 + ·) with uniformly bounded coefficients, so ‖Bord(a) − Bord(0)‖ ≤ C_1|a| for complex |a| ≤ 1, uniformly in p [P]. The same holds for D_k^TD_k(a).

Set A^{gh}(a) := D_k^TD_k(a) on non-anchor sites and A^{B}(a) := Bord(a)². At a = 0: spec A^{gh} ⊂ [(4Λ⁵)^{−1}, ‖X‖] (Lemma 1.2), spec A^B ⊂ [C_B^{−2}, ‖Bord‖²]. Both have finite range (≤ R_j, resp. 2R_j). For real a,

  ℓ(a,p) = log det A^{gh}(a) − ¼ log det A^B(a),   (3.1)

because |det Bord| = det(Bord²)^{1/2}. Define the infinite-lattice density

  ℓ_∞(a,p) := ρ_∞(A^{gh}(a)) − ¼ρ_∞(A^B(a))   (per coarse cell, (2.2)).   (3.2)

Theorem 3.2 [P, given (Gap) at background (T)]. Fix j. There are C, δ, a_0 > 0 and N_0, depending on j only (not on N, p, or the supercell period), such that for N ≥ N_0, P ∈ (2π/N)Z, complex |a| ≤ a_0:
 (i) |N^{−4}ℓ_N(a,p) − ℓ_∞(a,p)| ≤ C e^{−δN};
 (ii) |∂_a^n[N^{−4}ℓ_N − ℓ_∞]_{a=0}| ≤ n! a_0^{−n} C e^{−δN}; in particular |w_N(p) − w_∞(p)| ≤ 2a_0^{−2}Ce^{−δN};
 (iii) for P = 2πn/N with n fixed, |S_N(p) − S_∞(0)| ≤ C_S p² + C′N²e^{−δN}, with C_S from the evenness and analyticity of S_∞ near 0 and C′ = C/(a_0²n²Λ²). So the p²-coefficient commutes with N → ∞:
  S_∞(0) = lim_{N→∞} S_N(2πn/(NΛ)) for every fixed n ≥ 1.   (3.3)
Proof. Choose a_0 ≤ 1 with C_1a_0 small enough that ‖A^{gh}(a) − A^{gh}(0)‖ ≤ (8Λ⁵)^{−1}·½ and ‖A^B(a) − A^B(0)‖ ≤ C_B^{−2}/4 for |a| ≤ a_0. For rational P/2π the background is periodic under Γ_1^p, and N is a multiple of the period N_p because P ∈ (2π/N)Z. Apply Corollary 2.3 to A^{gh}(a) and A^B(a) with Γ_N; Lemma 1.1(b) identifies the induced operators with the torus operators for NΛ > 4R_j, and the homomorphism property gives (A^B)_N = (Bord_N)². The constants of Corollary 2.3 depend only on a_±, R, S, n_site, r, a_0, all uniform in p. This gives (i) and (ii). For (iii), 1 − cos p ≥ (2/π²)p² for |p| ≤ π, so |S_N − S_∞| ≤ 4·2a_0^{−2}Ce^{−δN}/(Λ⁴(2/π²)p²), and p = 2πn/(NΛ). S_∞(p) is analytic and even near p = 0 at fixed j [R: U1_VERIFY §2.4, "S_k(p) is analytic and even near p = 0", CONFIRMED there], so |S_∞(p) − S_∞(0)| ≤ C_Sp². ∎
Remark (irrational P). The constants do not depend on N_p, so ℓ_∞(a,p) and w_∞(p) extend continuously to all real p, and the BZ formula (3.4) below is continuous in p. Nothing in (3.3) needs irrational P.

### 3.3 Equality with the momentum-space formula [P for the formula; I for the code]
At a = 0 the operators are Γ_1-periodic. Bloch decomposition over coarse momenta K ∈ BZ = [−π, π]⁴ gives fiber matrices Â(K) of size n_site·r, real-analytic in K (finite range ⇒ trigonometric polynomials). For a Γ_1-periodic operator with summable kernel, the per-cell trace is ∫_BZ tr Â(K) dK/(2π)⁴, and log commutes with the Bloch decomposition. Hence ρ_∞(A) = ∫_BZ log det Â(K) dK/(2π)⁴. For the a-derivatives write A(a) = A + aA_1 + a²A_2 + O(a³), where A_1 has transfers K → K ± P and A_2 has transfers 0, ±2P. Cyclicity of the per-cell trace for τ-commuting operators with decaying kernels gives

  ∂_a²ρ_∞|_0 = ∫_BZ tr[Â(K)^{−1}2Â_2^{(0)}(K)] − ∫_BZ tr[Â(K+P)^{−1}Â_1^{+}(K)Â(K)^{−1}Â_1^{−}(K+P)] − (same with −P)   (3.4)

(dK/(2π)⁴ understood; transfers ±2P drop out of the per-cell trace). For the gluon block one applies (3.4) directly to Bord with weight −½, because ∂_a ½ρ_∞(log Bord²) = ρ_∞-trace of Bord^{−1}∂_aBord by cyclicity. The two −P/+P terms are equal after K → K − P, which is the factor 2 of NUMERICS §5. So w_∞(p) is the NUMERICS §5 Brillouin-zone formula [P]. That ym_momentum.py implements exactly (3.4) is [I] (not read line by line; supported by the 8·10^{−8} agreement with the real-space finite difference on the periodic 6⁴ lattice at L = 2, and w = −2·10^{−15} at a pure-gauge background).

### 3.4 The grid used by the code: exponential convergence in N_g [P]
The code evaluates (3.4) on the shifted grid K ∈ (2π/N_g)(Z⁴ + ½). This is exactly the torus T_{N_g} with antiperiodic boundary conditions: take u_γ = (−1)^{Σ_μ m_μ} for γ = N_gΛm. These u_γ commute, so Lemmas 1.1, 2.2 and Corollary 2.3 apply unchanged. The unshifted grid is the periodic torus T_{N_g}; this is why the periodic 6⁴ check (N = 3, L = 2) agrees with the momentum code to 8·10^{−8}: on a torus the Bloch sum over the unshifted grid is an exact identity, not an approximation.
Direct form. Let g(K) be any of the integrands of (3.4). Bord̂(K) and D̂_k^†D̂_k(K) are invertible for real K with uniformly bounded inverses (Theorem 3.2's gap) and entire in K. So their inverses are analytic on a strip |Im K_μ| < δ′, δ′ := (2 sup_K‖∂Â‖·‖Â^{−1}‖)^{−1}-type, with sup_{strip}|g| ≤ M_g. Poisson summation for a periodic function analytic on the strip gives
  |N_g^{−4} Σ_{K∈grid} g(K) − ∫_BZ g dK/(2π)⁴| ≤ M_g Σ_{n∈Z⁴∖0} e^{−δ′N_g|n|_1} ≤ 57 M_g e^{−δ′N_g}   (N_g δ′ ≥ 1),   (3.5)
for both the shifted and the unshifted grid, and for every real P (no commensurability needed). Here δ′ is any number below the strip width (the Fourier coefficients satisfy |ĝ(n)| ≤ M_g e^{−δ′|n|_1} by shifting each K_μ-contour by ±iδ′); the grid sum minus the integral is Σ_{n≠0} ĝ(N_gn) (times (−1)^{Σn_μ} on the shifted grid), and Σ_{n≠0}e^{−t|n|_1} = ((1+e^{−t})/(1−e^{−t}))⁴ − 1 ≤ 57e^{−t} for t ≥ 1. This is the precise form of NUMERICS §5 "the grid average converges exponentially in N_g (massive block-spin propagator)".

## 4. Theorem 2: the constant field V_f

Setting (F) of §1.1. A^{gh}_f := D_k^TD_k at U_0^φ (non-anchor sites), A^B_f := Bord(f)². Both commute with the magnetic translations τ_γ for every γ ∈ Γ_1 (each one separately; they form only a projective representation of Γ_1). For f N² ∈ 2πZ the τ_γ, γ ∈ Γ_N, commute, so H_N and the induced operators of §1.3 exist. Define

  Φ(f) := ρ_∞(A^{gh}_f) − ¼ρ_∞(A^B_f)   (per coarse cell; (2.2) needs only τ_γA τ_γ^{−1} = A for single γ ∈ Γ_1).   (4.1)

Theorem 4.1 [P, given (Gap_f)]. Fix j. There are C, δ > 0, N_0 (depending on j and f_0) such that for N ≥ N_0 and every quantized f = 2πm/N² with |f| ≤ f_0:
  |N^{−4}ℓ_N(f) − Φ(f)| ≤ C e^{−δN}.   (4.2)
Proof. The links of U_0^φ are rotations, so the row sums S and the ranges R of A^{gh}_f, A^B_f are bounded uniformly in f. The lower spectral bounds are Lemma 1.2 and (Gap_f) with Lemma 3.1; the upper bounds are norms, uniform in f. Lemma 2.2 and Corollary 2.3 use only these data and the commuting family τ_γ, γ ∈ Γ_N. Lemma 1.1(b) identifies the induced operators with the torus operators at the torus background. ∎

Lemma 4.2 (regularity in f) [P, at the level of kernel estimates]. Assume (Gap_f) on [−f_0, f_0]. Then Φ ∈ C^∞([−f_0, f_0]) and Φ(−f) = Φ(f).
Proof. Evenness: the constant global gauge rotation by iσ_1 maps σ_3 → −σ_3, hence U_0^φ → U_0^{−φ}, and conjugates every operator by one orthogonal map; per-cell traces are invariant. Smoothness: fix the cell C_0 and use the symmetric gauge centered at its center x_0, link angles φ·(linear in position). Every matrix element of A_f (either operator) is a fixed analytic function of the links within distance R of its indices. In the gauge centered at x_0 the f-derivative of a link angle at b is O(Λ^{−2}|b − x_0|), so |∂_f^nA_f(x,y)| ≤ C_n(1 + |x − x_0|)^n for |x − y| ≤ R, uniformly for |f| ≤ f_0 [I: this needs the averaging entries to be analytic in the links near regular configurations, CMP 99 p. 406, text layer l. 844: "By Proposition 6 [5] the averages … are analytic functions of A on configurations satisfying the first inequality in (3.37)"; not checked on the image]. For z on the contour 𝒞 of Lemma 2.2, the resolvent R_f(z) = (z − A_f)^{−1} has ‖R_f(x,y)‖ ≤ (2/η)e^{−μ|x−y|} uniformly in f (Lemma 2.1; only R, S, η enter). For a finitely supported ψ, R_fψ decays exponentially, so (A_{f′} − A_f)R_fψ ∈ ℓ², and R_f − R_{f′} = R_{f′}(A_f − A_{f′})R_f holds on such ψ. Iterating, ∂_f^n R_f(x_0, x_0) is a finite sum of terms Σ_{y_i} R(x_0,y_1)∂^{n_1}A(y_1,y_1′)R(y_1′,y_2)…R(y_s′,x_0), n_1 + … + n_s = n. Each sum converges absolutely because polynomial weights (1 + |y − x_0|)^n are summable against e^{−μ|y−x_0|}. So ∂_f^n of tr(log A_f)(x,x), x ∈ C_0, exists and is bounded for |f| ≤ f_0. Sum over the cell. ∎
So Φ(f) = Φ_0 + Φ_2f² + r_4(f), |r_4(f)| ≤ C_4f⁴ for |f| ≤ f_0.

Corollary 4.3 (the f²-coefficient commutes with N → ∞) [P, given (Gap_f) and the [I] step in Lemma 4.2]. Put f_m := 2πm/N² and
  D_N(m) := [N^{−4}ℓ_N(f_m) − N^{−4}ℓ_N(0)] / f_m².
Then for fixed m ≥ 1 and N ≥ N_0,
  |D_N(m) − Φ_2| ≤ C_4(2πm)²N^{−4} + 2C N⁴e^{−δN}/(2πm)².   (4.3)
So Φ_2 = lim_{N→∞} D_N(m): the f²-coefficient of the infinite-lattice density is the limit of torus second differences at the smallest quantized fluxes. The first term is O(N^{−4}); the volume term is exponentially small.
Proof. D_N(m) − Φ_2 = [Φ(f_m) − Φ(0) − Φ_2f_m²]/f_m² + [errors of (4.2) at f_m and at 0]/f_m². ∎

Remarks.
1. The theorem is stated for the massive combination ℓ only. The separate pieces of Prop. 2.1 at V_f (Fine and Γ_c of BETA_FP_H (1.1)) are not massive: each has an f² ln|f| term, and the charged sector has magnetic length |f|^{−1/2}. At f_m = 2πm/N² the magnetic length is N/(2πm)^{1/2}, comparable to the torus side. So the torus values of the separate pieces at quantized flux do not approach their infinite-lattice f² ln|f| behaviour, and no statement of the form (4.3) holds for them. Only ℓ = Fine − Γ_c, which is analytic in f, has a torus limit with a rate.
2. What (4.3) does not give. KAPPA_BOUNDED Prop. 1.1 and BETA_FP_H (2.1)–(2.2) use the f²-coefficient of the coarse piece Γ_c as a Moyal per-momentum integral. Φ_2 = [Fine − Γ_c]_{f²} holds on the infinite lattice by the per-cell form of Prop. 2.1 at V_f (§5.4). The equality of the formal Moyal coefficient d_j with the true coefficient is (M_j) (TRUST_LEDGER B4) and the fine coefficient is (F) (B3). Neither is a volume statement. (G2) at V_f is exactly Theorem 4.1 + Corollary 4.3; (M_j), (F), (PI) stay open as before.
3. The second difference uses N⁴f_m² = (2πm)², so the volume error must beat N⁴. Any rate o(N^{−4}) would suffice; the exponential rate gives a large margin.

## 5. The massless pieces of Prop. 2.1: fibers, zero modes, rates

Background (T) unless stated. Write 𝕂 := Δ + DD^T for the fine Feynman gluon operator (to avoid a clash with the momentum K) and 𝒦 := Δ_Λ + D_cD_c^T for the coarse kernel operator.

### 5.1 Prop. 2.1 holds fiber by fiber [P]
Bloch decomposition over Γ_1 gives, at each K ∈ BZ, finite matrices X̂(K), 𝕂̂(K), D̂(K), D̂_k(K), Q̃̂(K), D̂_c(K), Bord̂(K). For K ≢ 0 the hypotheses of Prop. 2.1 hold in the fiber: D̂(K) and D̂_c(K) are injective (a covariantly constant, here constant, quasi-periodic function with K ≢ 0 vanishes); Q̃̂(K) is surjective (Q̃Q̃^T ≥ q_j); Δ + D_kD_k^T > 0 on ker Q̃̂(K) (Lemma 1.3); (G1) holds at (T) (ΔD = 0 at a critical point; Q̃D = D_cι_a^T [R: BETA_FP_LEMMA43_VERIFY §4]). The proof of Prop. 2.1 (BETA_FP_LEMMA43 §2, steps (a)–(e)) is finite-dimensional linear algebra; it holds verbatim for Hermitian fiber matrices with ^T replaced by ^†. Reading the proof, every step is an equality with no additive constant: (2.1) is stated with constant 0, and step (e) uses two exact determinant identities. So for every K ≢ 0

  ℓ̂(K) = F(K) − G(K),   (5.1)
  ℓ̂ := log det(D̂_k^†D̂_k) − ½ log|det Bord̂|,  F := log det X̂ − ½ log det 𝕂̂,  G := log det(D̂_c^†D̂_c) − ½ log det 𝒦̂.

ℓ̂ is real-analytic on all of BZ, K = 0 included (Theorem 3.2's gap). F and G are singular only at K = 0.

Explicit singular parts [P, given Lemma M]. At U_0 = 1, X = (scalar Laplacian) ⊗ 1_3 and 𝕂 = (scalar Laplacian) ⊗ 1_{12} (Feynman gauge; BETA_FP_LEMMA43 §4.1). With k_n := (K + 2πn)/Λ, n ∈ {0, …, Λ−1}⁴:
  F(K) = 3Σ_n log|k̂_n|² − 6Σ_n log|k̂_n|² = −3Σ_n log|k̂_n|².   (5.2)
For G: D̂_c^†D̂_c = |K̂|²·1_3, and 𝒦̂ = Δ̂_Λ + K̂K̂^† (per color) is analytic on a fixed strip (O5/A0, THEOREM2_PROOF_v4 §3.5). By Lemma M (Maxwell coefficient 1 at every level) the analytic matrix 𝒦̂(K) − |K̂|²·1_4 vanishes to order 4 at K = 0, so 𝒦̂ = |K̂|²(1 + R(K)) with |∂^αR| ≤ C|K|^{2−|α|}. Hence
  G(K) = 3 log|K̂|² − 6 log|K̂|² − ½ log det(1 + R(K)) = −3 log|K̂|² + O(|K|²),   |∂^αG| ≤ C_α|K|^{−|α|} (|α| ≥ 1).   (5.3)
The coefficients of the logarithms agree (−3 = −3), as they must since F − G = ℓ̂ is bounded.

### 5.2 The infinite-lattice identity is a theorem [P]
The per-cell densities are ∫_BZ ℓ̂, ∫_BZ F, ∫_BZ G (dK/(2π)⁴). F and G are integrable (logarithmic singularity at one point in d = 4). (5.1) holds off a null set. So
  ρ_∞(ℓ) = ∫_BZ F − ∫_BZ G,   (5.4)
and ∫_BZ F = Λ⁴·(per-site fine Wilson one-loop density in background Feynman gauge, −3I_4 at U_0 = 1), ∫_BZ G = the coarse Gaussian one-loop density. This is BETA_FP_LEMMA43 (2.2) on the infinite lattice, with constant 0, as an identity of densities. It answers U1_VERIFY item 2.3(a) for the anchor-free form (2.2), which is the form now used (THEOREM2_PROOF_v4 §3.2): no Szegő-type limit is needed, because both sides are already Brillouin-zone integrals of fiber log-determinants and the identity holds fiber by fiber. (The older form (3.3) of U1 contains (X^{−2})_{aa}, whose fiber symbol behaves like |K|^{−4}; log det of it is still integrable, so the same argument applies to (3.3) too [P, same proof], but (3.3) is no longer needed.)
a-derivatives. The same holds for the a²-coefficients at the plane wave only where Prop. 2.1 holds at a ≠ 0. It does not hold exactly there: ΔD = O(aP²) off-shell (BETA_FP_H §1; defect 𝔡_Y of BETA_FP_PW Lemma 2.3). That defect is an input of its own, not a volume question. At fixed P ≠ 0, each a²-integrand of F and G (formula (3.4) applied to each piece) has singularities only at K = 0 and K = −P, of order |K|^{−2} and |K + P|^{−2}, hence integrable in d = 4; so the infinite-lattice a²-coefficients of the separate pieces exist [P], which is the second half of U1_VERIFY 2.3(a).

### 5.3 Torus: zero-mode removal and the exact torus identity [P]
On the periodic torus T_N the grid is K ∈ (2π/N)Z⁴ and ℓ_N = Σ_{K∈grid} ℓ̂(K) exactly. The massless operators have kernels only in the K = 0 fiber: constants for X_N (dimension 3) and 𝕂_N (12); X̂(0), 𝕂̂(0) are the one-cell periodic Laplacians, whose only zero modes are these constants. D̂_c(0) = 0 and 𝒦̂(0) = 0 (12 × 12 zero matrix). Define pseudo-determinants det′ (product of nonzero eigenvalues) and
  Fine′_N := log det′X_N − ½ log det′𝕂_N = Σ_{K≠0}F(K) + F′(0),   Γ′_{c,N} := Σ_{K≠0}G(K) + G′(0),
with F′(0) = −3Σ_{n≠0}log|k̂_n(0)|² and G′(0) = 0 (empty products). Then, exactly,
  ℓ_N = Fine′_N − Γ′_{c,N} + c_zm,   c_zm := ℓ̂(0) − F′(0) + G′(0).   (5.5)
c_zm does not depend on N. Its value: ℓ̂(0) = lim_{K→0}(F − G), and by (5.2)–(5.3) F(K) − F′(0) = −3 log|(K/Λ)^|² + o(1), G(K) = −3 log|K̂|² + o(1). So
  c_zm = lim_{K→0} 3 log(|K̂|²/|(K/Λ)^|²) = 3 log Λ² = 6 j log L.   (5.6)
So the zero-mode removal changes the density by exactly c_zmN^{−4} = 6 j log L·N^{−4}.

### 5.4 Rates for the massless pieces [P, one cited input]
Lemma 5.1 (punctured Riemann sum) [P]. Let g be 2π-periodic on R⁴ ∖ 2πZ⁴ with |g(K)| ≤ C(1 + |log|K||) and |∂^αg(K)| ≤ C|K|^{−|α|} for |α| ≤ 2 on BZ ∖ {0}. Then for N ≥ 2
  |N^{−4}Σ_{K∈grid, K≠0} g(K) + N^{−4}g_0 − ∫_BZ g dK/(2π)⁴| ≤ C′N^{−2},   any fixed number g_0.
Proof. Tile BZ by cubes C_K = K + [−π/N, π/N)⁴. For K ≠ 0 and K′ ∈ C_K, |K′| ≥ |K′|_∞ ≥ |K|_∞/2 ≥ |K|/4. Second-order Taylor at K: the linear term integrates to 0 over the symmetric cube, the remainder is ≤ ½·16C|K|^{−2}·4π²N^{−2}·4 per unit volume. Summing, the K ≠ 0 cells contribute ≤ C″N^{−2}·N^{−4}Σ_{K≠0}|K|^{−2} ≤ C‴N^{−2}∫_BZ|K|^{−2}dK. The cell C_0 contributes ≤ C∫_{|K|≤2π/N}(1 + |log|K||) + N^{−4}|g_0| = O(N^{−4}log N). ∎
Applied to G (by (5.3)) and to F (by (5.2)): both zero-mode-removed densities converge at rate O(N^{−2}) [P].
Sharper rate. At (T) the fine piece is explicit: Fine′_N = −3 log det′Δ_{NΛ}, Δ_M the scalar Laplacian on the 4-torus of side M. For it, log det′Δ_M = M⁴I_4 + log M² + c_4 + O(M^{−2}) [I: Duplantier–David 1988, Chinta–Jorgenson–Karlsson 2010, not checked here; numerically confirmed here: I_4 = 1.9997076, r(M) := log det′Δ_M − M⁴I_4 − log M² = −1.8138, −1.7568, −1.7241, −1.7092, −1.7043, −1.7032 at M = 6, 8, 12, 20, 32, 40, differences scaling like M^{−2}; numerics/t2_g2_torusdet.py]. Then (5.5), (5.6) and Theorem 3.2(i) give
  N^{−4}Γ′_{c,N} − ∫_BZ G = −3(log N² + c_4)N^{−4} + O(N^{−6}) + O(e^{−δN}).   (5.7)
So the coarse massless piece converges at rate O(N^{−4} log N), and its leading finite-size term is exactly that of three scalar massless fields on the coarse torus: the Λ-dependence cancels between c_zm = 3 log Λ² and the fine term −3 log(N²Λ²) [P given the cited asymptotics]. In general: the errors of the fine and coarse massless densities are equal up to c_zmN^{−4} + O(e^{−δN}), because their difference is the massive ℓ.

### 5.5 Constant field: per-cell form of Prop. 2.1 [I]
At V_f the operators commute only with a projective representation of Γ_1, so there is no commutative Bloch decomposition. The per-cell trace τ is a finite faithful normal trace on the von Neumann algebra generated by τ_γ-covariant operators, and densities are Fuglede–Kadison log-determinants log Δ_τ(A) = τ(log|A|). The proof of Prop. 2.1 uses only multiplicativity of determinants, the block (Schur) formula, Jacobi's complementary minor identity and the matrix determinant lemma. All four hold for Δ_τ on invertible operators, and for injective operators of determinant class by the multiplicativity theorem for Fuglede–Kadison determinants (Lück, L²-Invariants, Thm 3.14) [I: reference not checked]. The massless pieces at V_f are of determinant class: the neutral sector is the free (f-independent) abelian sector, with spectral density ∼ λ near 0 in d = 4, and the charged sector has no spectrum at 0 for small f ≠ 0 [I]. Given these, (5.4) holds at V_f as an identity of densities. On the torus at quantized flux the neutral sector decouples exactly (charge conservation under the residual U(1)), is f-independent, and carries all zero modes, so the zero-mode constant at V_f equals the abelian one and drops out of f-differences [P for the decoupling and the f-independence; the charged-sector absence of torus zero modes at f_m ≠ 0 is [I]].

## 6. Balaban inputs (page checks)

6.1 CMP 95, Prop. 1.2, p. 35 (PDF 19) [V, page image]. Verbatim: "Proposition 1.2. There exists a positive constant δ_0 depending on d only, such that |(GJ)(x)|, |(∇GJ)(x)|, |(G∇*J)(x)|, |(ΔGJ)(x)| ≤ O(1)e^{−δ_0|y−y'|}|J| (1.110) for x ∈ Δ̃(y), supp J ⊂ Δ̃(y'), with the constant O(1) depending on d only". Here y, y′ are points of the unit lattice T_1^{(k)} (level-k cells), so the decay rate is uniform in k in level-k units. This G = G_k is the free (U = 1) gauge-fixed propagator of CMP 95 with the soft constraint aQ*Q, not the δ-constrained Bord^{−1} of (1.1).
p. 36 (PDF 20) [V, page image], on the method: "Probably the simplest proof of the exponential decay properties can be obtained by relating G on the torus to G on the whole lattice ηZ^d in the usual way, and then proving that the operator e^{−⟨q,x⟩}Δ_ae^{⟨q,x⟩} − Δ_a is a small perturbation of Δ_a for vectors q ∈ R^d sufficiently small." This is the route of §2 (images + Combes–Thomas). Balaban then uses a random-walk representation instead.
(1.100)–(1.101) (p. 34) are used only through numerics/KAPPA_D.md [V there]: QGQ* ≥ (aκ)^{−1} with κ = 104.25 (N = 3), 147.73 (5), 186.64 (13), 196.19 (k → ∞), d = 4. They give the coarse-side lower bound of the soft-constraint form, uniform in k. I did not re-read p. 34.

6.2 CMP 96, (2.128), p. 245 (PDF 23) [V, page image]. Verbatim: "Lemma 2.4. Let a set Λ ⊂ Z^d be a sum of blocks, Λ = B(Λ'). … Let B be a configuration defined on Λ and satisfying the condition (2.121): B(Γ_{y,x}) = 0 for x ∈ B(y), y ∈ Λ'. We put B = 0 outside Λ. Then the following inequality holds L^{d−2} Σ_{c∈Λ'}|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ (1/(12d²)) L^{−d−1}‖B‖². (2.128)" And p. 246 (PDF 24) [V]: "These forms are bounded from below by γ_0″‖B‖² with a positive constant γ_0″ dependent on d and L only. This implies that a covariance … is bounded from above by a positive constant dependent on d and L only, and it has an exponential decay with a decay rate having the same property." Prop. 2.5 (p. 246) [V]: "The operator G_□ defined by (2.90) on the torus T_□ (or on the whole lattice ξZ^d) has the representation (2.129) and satisfies all the inequalities (1.110)–(1.114) of the Proposition 1.2 with a positive constant δ_2 instead of δ_0. This constant depends on d and L only." So Balaban's decay constants are the same on the torus and on the whole lattice.

Lemma 6.1 [P, given (2.128) applied with Λ = the whole lattice (or torus) and Q_1 = the averaging of (1.1) — the last identification is [I]]. At background (T) and j = 1, the gluon half of (Gap) holds with γ_1 ≥ min(γ_ph, (4L⁵)^{−1}), γ_ph := (1/(12d²))L^{−d−1}·(normalization of ⟨B, ΔB⟩ relative to Σ_p|∂B|²).
Proof. ker Q̃ = (ker Q̃ ∩ (im D_k)^⊥) ⊕ im D_k, orthogonally, because Q̃D_k = 0. On this split Δ + D_kD_k^T is block-diagonal: ΔD = 0 and D_k^TB̄ = 0 for B̄ ⊥ im D_k. On im D_k: ⟨D_kλ, D_kD_k^TD_kλ⟩ = ‖D_k^TD_kλ‖² ≥ g‖D_kλ‖² with g = (4L⁵)^{−1} (Lemma 1.2, Λ = L). On the first block: take B̄ and gauge it by λ ∈ Lie(G_k) (vanishing at the block centers, the roots of the trees Γ_{y,x}) into the axial slice, B_ax = B̄ − D_kλ. Q̃B_ax = 0 and ⟨B_ax, ΔB_ax⟩ = ⟨B̄, ΔB̄⟩. (2.128) with Q_1B_ax = 0 gives ⟨B_ax, ΔB_ax⟩ ≥ γ_ph‖B_ax‖². And B̄ = P_{(im D_k)^⊥}B_ax, so ‖B̄‖ ≤ ‖B_ax‖. ∎
This gives a second, explicit route to (Gap) at j = 1 that bypasses the compactness step of Lemma 1.3. For the composed CMP 109 averaging at j ≥ 2 I rely on Lemma 1.3 (fixed j, non-explicit γ_j).

6.3 CMP 99, Theorem 3.1, p. 397 (text layer l. 429–470; not checked on the image) [I]. "There exist positive constants M_1, δ_0, α_0, B_0 dependent on d and L only … such that for M ≥ M_1 and for an arbitrary configuration U satisfying the regularity condition (3.35) with Mα_0 ≤ a_0, the operator G′(U) … satisfies the inequalities … (3.42)", with exponential decay e^{−δ_0 d(y,y')} (the decay factor is garbled in the text layer). "All these inequalities are invariant with respect to gauge transformations of U." Theorems 3.2–3.3 give the same for G(U). V_f with small f satisfies the regularity condition (small field strength in every block). This is the source I name for (Gap_f) and for a j-uniform δ at V_f [R; reading not checked line by line].

6.4 CMP 119, p. 278 (PDF 36) [V, page image]. Verbatim, after (3.47): "The important remark is that the terms E_0^{(k+1)}(Λ_{k+1}, X, z) of this representation, for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]." Reading [I]: Λ_{k+1} is Balaban's small-field region, and the statement is about localized polymer terms. It is the localized (cluster-expansion) analogue of Lemma 2.2: each localized term equals its whole-lattice counterpart; the volume enters only through which X fit. For the g = 0 one-loop densities of this file the analogue is exact and quantitative: the γ = 0 image term of (1.2) is the whole-lattice term, and the γ ≠ 0 terms are the e^{−δN} error. (2.24) and p. 249 (β_j "defined in [I] by the formulas (1.41)–(1.43)", the whole-lattice coefficient) were page-checked in SOURCES_D3W8_VERIFY S3 [V there]; not re-read here.

## 7. Consistency with the numerical convergence data

7.1 New minute-scale runs [N] (numerics/t2_g2_gridrate.py, read-only use of ym_momentum.py; SU(2), single step, p = 0.4, shifted grid; each run 37–121 s on the Mac).
L = 2, j = 1. Error relative to the stored N_g = 12 value (w = 0.200201474, ghost = 0.004785406, bord = −0.390832136, results/mom_L2_Ng12_p0.4_trans.json):

| N_g | w − w_12 | ghost − ghost_12 | bord − bord_12 |
|---|---|---|---|
| 4 | +1.591e−2 | −3.467e−3 | −3.876e−2 |
| 5 | −3.038e−3 | −7.609e−4 | +4.555e−3 |
| 6 | +6.050e−4 | −1.709e−4 | −1.552e−3 |
| 7 | −1.052e−4 | −3.904e−5 | +1.322e−4 |
| 8 | +2.273e−5 | −9.056e−6 | −6.357e−5 |
| 10 | +8.429e−7 | −4.870e−7 | −2.660e−6 |

(N_g = 4 reproduces the stored JSON value 0.2161164.) The ghost error falls by factors 4.56, 4.45, 4.38, 4.31 per unit step and 18.6 = 4.31² from 8 to 10: geometric, rate δ_gh ≈ 1.46 per coarse cell. A power law N_g^{−s} fitted to 5 → 6 (s ≈ 8.2) would predict a factor 2.99 from 7 to 8; the observed factor is 4.31. So the decay is exponential, not algebraic. The w error decays by factors ≈ 5 per unit step (δ ≈ 1.6) with alternating sign between odd and even N_g. The alternation is the (−1)^{Σn_μ} aliasing phase of the shifted grid in (3.5).
L = 3, j = 1, p = 0.4: w = 1.196139 (N_g = 4), 1.080764 (5), 1.107802 (6, stored), 1.101851 (8, stored); ghost = 0.038849, 0.051810, 0.055997, 0.057906. Ghost increments 0.01296, 0.00419, then 0.00191 over two steps: ratio ≈ 3.1 per step at first, somewhat slower later (δ_gh ≈ 1.0–1.1). w alternates with |increments| shrinking by ≈ 4 per step (δ ≈ 1.4). Three or four points do not determine a rate precisely; they are consistent with exponential decay at δ ≈ 1–1.5.

7.2 The data listed in the brief.
- Real-space periodic 6⁴ = momentum space to 8·10^{−8} (L = 2): this is a torus (N = 3) evaluated on the unshifted grid. By §3.4 the Bloch sum on a torus is exact, so agreement to rounding is predicted. It checks the formula (3.4), not the limit.
- "Grid average converges exponentially in N_g": proved as (3.5) and Corollary 2.3 with the antiperiodic torus; measured δ ≈ 1.5 (L = 2), ≈ 1–1.5 (L = 3) per coarse cell.
- L = 2, two composed steps, β_1 + β_2 = 1.148 / 0.967 / 0.953 at N_g = 4 / 6 / 8 (w = 1.4649, 1.2337, 1.2160 from the stored JSONs). Increments 0.2313 and 0.0177: ratio 13.1 per two steps, δ ≈ 1.28 per level-2 cell, extrapolated w_∞ ≈ 1.2145, β_1 + β_2 ≈ 0.952. Three points fix the three parameters of an exponential model exactly, so this is consistency, not a test. The convergence is "slow" only because N_g = 4 is small; in level-2 units the rate is about the same as at level 1. This is consistent with a j-uniform δ (Balaban, §6.1), but two levels prove nothing about uniformity.
- L = 3: N_g = 6 vs 8 agree to 1–2% except p = 0.1. Stored w differences are 0.00602, 0.00596, 0.00595 at p = 0.1, 0.2, 0.4: the error in w is independent of p, as Theorem 3.2(ii) and (3.5) predict (the bound on w does not depend on p). S = 4w/(L⁴(1 − cos p)) divides by (1 − cos p), so the relative error in S is ≈ 9%, 2.2%, 0.5% at p = 0.1, 0.2, 0.4. That is the p^{−2} amplification in Theorem 3.2(iii).
- L = 11, N_g = 8: not checked. The measured rates decrease slowly from L = 2 to L = 3 (in coarse units). Nothing here bounds C or δ at L = 11. It remains unchecked.
- κ of CMP 95 (1.101) = 104.25, 147.73, 186.64, 196.19 (N = 3, 5, 13, ∞): finite and bounded in k, so the soft-constraint coarse form has a k-uniform lower bound (aκ)^{−1}. That is the kind of input that gives a k-uniform δ. The numbers do not predict δ: a Combes–Thomas estimate from a gap (aκ)^{−1} ≈ 0.005 would give a rate far below the measured δ ≈ 1.3–1.6, which again shows Lemma 2.1 is pessimistic. No conflict.
- The elementary rate δ_j ≳ L^{−2j} of §2.3 is compatible with all data (it is a lower bound). The data suggest δ = O(1) in coarse units for j = 1, 2.

## 8. Consequences for the chain

8.1 What (G2) now means, statement by statement.
- THEOREM2_PROOF_v4 §3.2, last bullet ("Per-cell infinite-volume densities only … This is input (G2) [formal]"). Replace by: the constrained one-loop density ℓ (left side of Prop. 2.1) is the torus limit with error C_je^{−δ_jN} (Theorem 3.2 at (T), (P); Theorem 4.1 at V_f). The anchor-free identity (2.2) holds on the infinite lattice as an identity of Brillouin-zone densities (5.4), and on the torus as the exact identity (5.5) with zero-mode constant c_zm = 6 j log L. Status: [P] at (T) and (P) given Q̃Q̃^T ≥ q_j; [P] at V_f given (Gap_f) [R: CMP 99 Thm 3.1–3.3] and the [I] analyticity step of Lemma 4.2; the per-cell Prop. 2.1 at V_f is [I] (§5.5).
- v4 §4.1, (G2) bullet of Route K, and §10 item 6 (both routes). Route K uses the f²-coefficient at V_f: Corollary 4.3 shows it is the N → ∞ limit of torus second differences at f_1 = 2π/N², error O(N^{−4}) + O(N⁴e^{−δN}). Route B uses the plane-wave p²-coefficient: Theorem 3.2(iii) shows S_∞(0) = lim S_N(2πn/(NΛ)), error O(N^{−2}) + O(N²e^{−δN}). In both routes the coefficient extraction commutes with N → ∞ at each fixed j. Proposed status of item 6: "proved at fixed j, conditional on (Gap) (proved at (T) given Q̃ surjectivity), (Gap_f) [R], Lemma 4.2's [I] step; no uniformity in j claimed or needed".
- KAPPA_BOUNDED l. 164 ("(G2) per-cell infinite-volume densities [formal]. … inherited by every result in the chain"): (G2) is no longer formal at fixed j; what remains are the named inputs just listed. V1 is unaffected.
- TRUST_LEDGER B6 (→ A15): B6 can point here instead of to A15. A15 (CMP 119 p. 278) concerns Balaban's localized terms at g > 0; this file proves the g = 0 Gaussian analogue only and does not prove A15.
- U1_VERIFY item 2.3(a): resolved for the anchor-free form (2.2) and also for (3.3) at (T) (§5.2). Item 2.3(b) (locality of S_K) is not needed for (2.2) and is not addressed.

8.2 Item 9 at g = 0 (K-independence of β_j(0)).
SOURCES_T2_KUNIF §5.1 already reduces item 9: Balaban's β_j is the whole-lattice coefficient by definition (CMP 119 (2.24), p. 249), so the shooting needs no volume identification. What this file adds at g = 0:
(a) [P] At each fixed j the whole-lattice β_j(0) is the limit of the finite-volume one-loop increments: with N_{K,j} ≥ L^{K−j} level-j cells per side in the K-th problem, the torus one-loop density differs from the whole-lattice density by ≤ C_je^{−δ_jN_{K,j}}, and the extracted coefficient differs by O(N_{K,j}^{−2}) (plane wave) or O(N_{K,j}^{−4}) (constant field), plus exponentially small terms. β_j(0) = S_j − S_{j−1} is a difference of two composed quantities, so the same bounds hold for β_j(0) with the constants of levels j and j − 1 added. (That the K-th problem at level j is a periodic torus with N_{K,j} ≥ L^{K−j} level-j cells per side is [I], read from the set-up of CMP 109, not rechecked.)
(b) [R] The fallback of SOURCES_T2_KUNIF §5.1 (finite-volume increments β_j^{[K]} instead of whole-lattice ones) needs R_vol := sup_K Σ_{j≤K}|β_j^{[K]}(0) − β_j(0)| < ∞. If the constants (C, δ, C_S or C_4) are uniform in j, then R_vol ≤ Σ_{m≥0}[C_S′(N_0L^m)^{−2} + C′e^{−δN_0L^m}(N_0L^m)²] < ∞ (plane-wave extraction), i.e. a geometric sum. j-uniformity of C, δ is not proved here; it is the content of Balaban's k-uniform decay (CMP 95 Prop. 1.2, CMP 96 Prop. 2.5 "on the torus T_□ (or on the whole lattice ξZ^d)", constants depending on d and L only) plus a j-uniform version of (Gap) for the δ-constrained form [R]. With the elementary fixed-j constants (δ_j ≳ L^{−2j}) the sum is not controlled. The fallback is not needed for Theorem 2w (KUNIF §5.1).
(c) Not touched: the g > 0 R-term part (TRUST_LEDGER B8).

8.3 What stays open after this file.
1. Q̃Q̃^T ≥ q_j for the linearized composed CMP 109 averaging on ℓ²(Z⁴) (assumed by Prop. 2.1; not checked in Balaban) [R].
2. (Gap_f) at V_f for |f| ≤ f_0: δ-constrained form positive with a gap at small constant field [R: CMP 99 Thm 3.1–3.3, read from the text layer only; NUMERICS §4 gap 0.085].
3. Lemma 4.2: analyticity of the averaging entries in the links near regular configurations (CMP 99 p. 406 via [5] Prop. 6) [I].
4. §5.5: per-cell (Fuglede–Kadison) form of Prop. 2.1 at V_f and determinant class of the massless pieces [I].
5. ym_momentum.py implements (3.4) exactly [I; supported by the 8·10^{−8} torus check].
6. j-uniform C, δ (only for the fallback in 8.2(b)) [R].
7. L = 11, N_g = 8 grid adequacy [unchecked].
8. Prop. 2.1 at the plane wave a ≠ 0 (defect 𝔡_Y) and the per-cell limit for the linear potential in (PI): not volume questions; not addressed.

## 9. Ledger

Numbered claims (for the verifier).
1. Lemma 1.1: induction A ↦ A_N is a unital *-homomorphism; local operators induce the torus operators for NΛ > 2R_j. [P]
2. Lemma 1.2: D_k^TD_k ≥ (4Λ⁵)^{−1} on T_N and Z⁴, any background; ℓ_N has no ghost zero modes. [P]
3. Lemma 1.3: at (T), Δ + D_kD_k^T > 0 on ker Q̃ with a gap γ_j at fixed j. [P given Q̃Q̃^T ≥ q_j [R: hypothesis of BETA_FP_LEMMA43 Prop. 2.1] and Q̃D = D_cι_a^T [R: BETA_FP_LEMMA43_VERIFY §4]; "Q̃c is a nonzero multiple of c" for constant c is [I]]
4. Lemma 2.1 (Combes–Thomas) with μ = R^{−1}log(1 + η/(2S)). [P; standard]
5. Lemma 2.2 / Corollary 2.3: spec(A_N) ⊂ spec(A); log A_N = (log A)_N; per-site and per-cell density error ≤ C e^{−δN}, δ = μΛ; analytic version and Cauchy bound (2.4). [P]
6. Size of δ from Lemma 2.1: δ_j ≳ L^{−2j} in coarse units; pessimistic. [I: order-of-magnitude reading of the gap and range scalings]
7. Lemma 3.1 (saddle-point bound) C_B = 2√2(1/γ + 1/√q)(1 + α/√q)². [P]
8. Theorem 3.2 (i)–(ii): torus density of ℓ and all its a-derivatives converge at rate e^{−δN}, uniformly in p. [P given (Gap) at (T)]
9. Theorem 3.2 (iii) / (3.3): the p²-coefficient commutes with N → ∞; error C_Sp² + C′N²e^{−δN}. [P given (Gap) and analyticity/evenness of S_∞ [R: U1_VERIFY §2.4]]
10. §3.3: w_∞(p) equals the Brillouin-zone formula (3.4) (NUMERICS §5, weights +1 ghost, −½ Bord, factor 2). [P]; that ym_momentum.py implements (3.4) [I].
11. §3.4: the shifted grid is the antiperiodic torus; the unshifted grid sum is exact on the periodic torus; Poisson bound (3.5) with constant 57. [P]
12. Theorem 4.1: at quantized flux, |N^{−4}ℓ_N(f) − Φ(f)| ≤ Ce^{−δN}. [P given (Gap_f) [R: CMP 99 Thm 3.1–3.3, text layer]]
13. Lemma 4.2: Φ even and C^∞ on [−f_0, f_0]. [P for evenness; P for the kernel estimates; the analyticity of the averaging entries in the links is [I] (CMP 99 p. 406, text layer)]
14. Corollary 4.3: Φ_2 = lim D_N(m) with error C_4(2πm)²N^{−4} + 2CN⁴e^{−δN}/(2πm)². [P given 12, 13]
15. Remark 4.1: the separate Fine / Γ_c pieces at quantized flux have magnetic length ∼ N and no torus statement like (4.3). [I]
16. (5.1): Prop. 2.1 holds fiber by fiber at (T) for K ≢ 0, constant 0. [P given (G1) at (T) and 3]
17. (5.2)–(5.3): explicit singular parts F = −3Σ_n log|k̂_n|², G = −3 log|K̂|² + O(|K|²), |∂^αG| ≤ C|K|^{−|α|}. [P given Lemma M and the strip analyticity of Δ_Λ [R: THEOREM2_PROOF_v4 §3.5, O5/A0]]
18. (5.4): infinite-lattice anchor-free identity of densities at (T); U1_VERIFY 2.3(a) resolved for (2.2) (and (3.3)). [P]
19. Infinite-lattice a²-coefficients of the separate pieces exist at fixed P ≠ 0. [P]; Prop. 2.1 at a ≠ 0 is not exact (defect 𝔡_Y) [R: BETA_FP_H §1, BETA_FP_PW Lemma 2.3].
20. (5.5)–(5.6): exact torus identity with zero-mode constant c_zm = 3 log Λ² = 6 j log L. [P]
21. Lemma 5.1: punctured Riemann sum error O(N^{−2}) for g with log singularity and |∂^αg| ≤ C|K|^{−|α|}, |α| ≤ 2; applies to F and G. [P]
22. (5.7): coarse massless piece error −3(log N² + c_4)N^{−4} + O(N^{−6}) + O(e^{−δN}). [P given the torus asymptotics log det′Δ_M = M⁴I_4 + log M² + c_4 + O(M^{−2}) [I: literature, not checked; N: numerics/t2_g2_torusdet.py, c_4 ≈ −1.702]]
23. §5.5: per-cell (Fuglede–Kadison) Prop. 2.1 at V_f. [I]; neutral-sector decoupling and f-independence on the torus [P]; no charged torus zero modes at f_m ≠ 0 [I].
24. Lemma 6.1: CMP 96 (2.128) implies the gluon half of (Gap) at j = 1 with γ_1 ≥ min(γ_ph, (4L⁵)^{−1}). [P given (2.128) [V, CMP 96 p. 245 image] and the identification of Q_1 with the averaging of (1.1) [I]]
25. Balaban quotes: CMP 95 Prop. 1.2 (1.110) p. 35 and the torus/whole-lattice remark p. 36 [V, page images PDF 19–20]; CMP 96 (2.128) p. 245, γ_0″ and Prop. 2.5 p. 246 [V, page images PDF 23–24]; CMP 119 p. 278 after (3.47) [V, page image PDF 36]; CMP 99 Thm 3.1 p. 397 and p. 406 [text layer only]; CMP 95 (1.100)–(1.101) and κ values [V in numerics/KAPPA_D.md, not re-read].
26. Numerics: L = 2 grid errors decay geometrically (δ_gh ≈ 1.46, δ_w ≈ 1.6 per coarse cell), not algebraically; L = 3: consistent with δ ≈ 1–1.5; two-step L = 2: δ ≈ 1.28 per level-2 cell, β_1 + β_2 → ≈ 0.952; L = 3 w-error independent of p (0.0060). [N; runs of numerics/t2_g2_gridrate.py and stored JSONs]
27. Item 9 at g = 0: fixed-j convergence of finite-volume one-loop increments to the whole-lattice β_j(0) [P at fixed j]; summable R_vol under j-uniform constants [R: CMP 95 Prop. 1.2, CMP 96 Prop. 2.5, plus a j-uniform δ-constrained gap]. B8 untouched.

New files: SOURCES_T2_G2.md (this file); numerics/t2_g2_gridrate.py, numerics/t2_g2_torusdet.py (print only, no JSON written). No existing file edited. Firewall respected.

STATUS: COMPLETE
