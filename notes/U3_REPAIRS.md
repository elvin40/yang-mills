IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# U3_REPAIRS: proofs of the open items O5 and O6 of U3_VERIFY

Written 2026-10-27 (Claude, Opus 5.5). Inputs read in full: U3_GAUSSIAN_RG.md, U3_VERIFY.md; NUMERICS.md §1 and §5 for the bordered matrix. No existing file was edited. Numerical checks ran from a heredoc (no file written); they are listed in §4.

O5 = U3_VERIFY item "Theorem 4.1 for m = 1, 2: uniformity of the derivative bounds as K → 0" (U3 ledger O3, extended).
O6 = U3_VERIFY item "uniform invertibility of the bordered matrix 𝔅_j(K)" (hypothesis (b) of Theorem 6.1).

## 1. Statements

Conventions are those of U3 (d = 4, odd L, centered blocks, M = L^j, k̂_μ = e^{ik_μ} − 1, BZ = [−π, π)⁴). For K ∈ BZ and an umklapp label l, q_l := K + 2πl ∈ R⁴ (representatives with |q_{l,ν}| ≤ Mπ for the lattice sum), and q̃_l := 2M sin(q_l/(2M)) componentwise. Write σ_{l,ρ} := sin(K_ρ/2)/(q_{l,ρ}/2) and σ^M_{l,ρ} := sin(K_ρ/2)/(q̃_{l,ρ}/2) = D_M(k_{l,ρ}) (value 1 if the denominator is 0, which needs l_ρ = 0 and K_ρ = 0).

Constants. c_0 := (2/π)^{12} ≈ 4.4·10^{−3}. C_1 := π²/4 + 1360 ≤ 1363. σ_0 := (2/π)^5 ≈ 0.105.

Proposition A (diagonal reduction; new, used in both proofs). For every M ∈ {1, L, L², …} ∪ {∞} and K ∈ BZ ∖ {0},

  P′_T S_M(K) P′_T = P′_T diag(d^M(K)) P′_T,   d^M_μ(K) := Σ_l (Π_ρ (σ^M_{l,ρ})²) (σ^M_{l,μ})² / |q̃_l|²,   (A.1)

with q̃ → q and σ^M → σ for M = ∞ (sum over all l ∈ Z⁴). Hence Δ_M(K) = [P′_T diag(d^M) P′_T]^{−1} on T′ and Δ_M K̂ = 0. So the K-dependence of Δ_M enters only through four nonnegative scalar functions d^M_μ and the projector P′_T.

Proposition B (uniform two-sided bound; supplies the "Δ_j ≥ c|k̂|²P_T" input of O6). For all M (including ∞) and K ∈ BZ ∖ {0}:

  c_0 |K̂|^{−2} P′_T ≤ P′_T S_M(K) P′_T ≤ C_1 |K̂|^{−2} P′_T,   hence   C_1^{−1} |K̂|² P′_T ≤ Δ_M(K) ≤ c_0^{−1} |K̂|² P′_T.   (B.1)

Theorem O5 (Theorem 4.1 for m ≤ 2, uniform up to K = 0). For every M the 4×4 matrix function Δ_M(K) is real-analytic on the whole torus, including K = 0, where Δ_M(0) = 0. There is C (independent of M and L) such that

  sup_{K ∈ BZ} |∂_K^α (Δ_M − Δ_∞)(K)| ≤ C M^{−2},   |α| ≤ 2,   (O5.1)

where the sup includes K = 0 (the derivatives there are those of the analytic function). The bound holds for the matrix Δ_M − Δ_∞ itself. No factorization by |K̂|²P′_T is needed, and none should be used: P′_T is singular at K = 0, but Δ_M is not. This is exactly the k-derivative part of the norm (6.2) and of the Taylor-data norm of U3_VERIFY Correction 1, so Theorem 6.1 can use it as it stands. In the scalar form, the coefficient functions satisfy |∂^α(d^M_μ − d^∞_μ)| ≤ C M^{−2} |K|^{−|α|} near K = 0 (they are singular like |K|^{−2}); this is an intermediate step, not the statement to use. The same proof gives (O5.1) for every fixed |α| with C = C_α.

Theorem O6 (uniform invertibility of the bordered matrix). Let 𝔅_j(K) = [[A_j(K), Q̃(K)^†],[Q̃(K), 0]], A_j := ⊕_l Δ_j(k_l) + D D^†, be the per-coarse-momentum bordered block of NUMERICS §5 and U3 (6.1), at the trivial background, in the orthonormal per-K coordinates of §3.1 (one color; the block is the direct sum of N_g identical color copies). Then for all j ≥ 0 and all K ∈ BZ (including K = 0):

  ‖𝔅_j(K)^{−1}‖ ≤ b(L) := 1/a + 2κ/s + ακ/s²,   κ := 1 + α/a,   (O6.1)

with α := 16(1 + c_0^{−1}) ≤ 3.7·10³ (bound on ‖A_j‖), s := [L/σ_0 + (π/2)L + 7.2πL³/σ_0]^{−1} ≥ 4.4·10^{−3} L^{−3} (lower bound on σ_min(Q̃), §3.4), and a ≥ 2.3·10^{−10} L^{−20} (lower bound of A_j on ker Q̃, (3.9)). All three are independent of j and K. The constants are not optimized. Numerically, for L = 3 and j = 0, 1, 2: ‖𝔅^{−1}‖ ≤ 177, min of A on ker Q̃ ≥ 0.085, σ_min(Q̃) ≥ 0.21 (§4).

The sign convention Q̃ = Q ± D′Λ plays no role: the proof uses only (i) the covariance Q̃(D_fν) = K̂·cv(ν) (any unimodular phase or sign), (ii) P′_TQ̃ = P′_TQ, and (iii) the norm bound ‖Λ‖ ≤ (2L)^{1/2}.

## 2. Proof of O5

### 2.1 Proof of Proposition A (diagonal reduction)

Continuum term. Write R_∞(K,l)_μ = K̂_μ/(iq_μ). Since K̂_μ = 2i sin(K_μ/2) e^{iK_μ/2}, R_∞ = E diag(σ_l) with E := diag(e^{iK_μ/2}) unimodular. Also χ_∞(K,l)² = Π_ρ σ_{l,ρ}². So

  t_l^c = (Π_ρ σ_{l,ρ}²) E diag(σ_l) (1 − q_lq_l^T/|q_l|²) diag(σ_l) E^† / |q_l|².

The key identity is diag(σ_l) q_l = (2 sin(K_μ/2))_μ =: S̃, a vector independent of l, and E S̃ = K̂/i. Hence

  t_l^c = w_l [ diag(σ_l²) − K̂K̂^†/|q_l|² ],   w_l := Π_ρ σ_{l,ρ}² / |q_l|².   (2.1)

Lattice term. U3 §4 Step 2 proved R_M P_T R_M^† = diag(K̂/(2is)) (1 − ss^T/|s|²) diag(K̂/(2is))^†, s = sin(k_l/2) (U3_VERIFY §5 checked it by direct multiplication). With 2Ms = q̃_l, M sin(k_{l,ρ}/2) = q̃_{l,ρ}/2, χ_M(k_l) = Π_ρ σ^M_{l,ρ}, |k̂_l|² = |q̃_l|²/M² and M^{−4}·M²·M² = 1, the lattice term is (2.1) with q → q̃_l and σ → σ^M (again diag(σ^M_l) q̃_l = S̃). So, for every M,

  t_l^{lat} = F(K, q̃_l),   t_l^c = F(K, q_l),   F(K,q) := w(K,q) [diag(σ(K,q)²) − K̂K̂^†/|q|²],   (2.2)

with σ_ρ(K,q) = sin(K_ρ/2)/(q_ρ/2) and w = Π_ρσ_ρ²/|q|². The lattice term is exactly the continuum term at the deformed momentum q̃ = 2M sin(q/(2M)).

The rank-one part is proportional to K̂K̂^† for every l, and P′_T K̂ = 0. So P′_T S_M P′_T = P′_T diag(d^M) P′_T with d^M_μ = Σ_l w_l^M (σ^M_{l,μ})². This is (A.1). ∎

Check (§4): Δ_M from (A.1) agrees with Δ_M from (2.3) to 4·10^{−15} (M = 3) and 3·10^{−14} (M = 9) at K = (1.1, −0.7, 0.4, 2.0).

### 2.2 Proof of Proposition B (uniform two-sided bound)

Upper bound. Use (2.2) with representatives k_l = q_l/M chosen so that |k_{l,ρ}| ≤ π. Then |sin(k/2)| ≥ |k|/π, so |q̃_{l,ρ}| ≥ (2/π)|q_{l,ρ}| and |q̃_l|² ≥ (4/π²)|q_l|². Each σ^M_{l,ρ} = D_M(k_{l,ρ}) has |σ^M| ≤ 1 and |σ^M_{l,ρ}| ≤ π|sin(K_ρ/2)|/|q_{l,ρ}|. The positive part of F is w diag(σ²) ≤ w·1. So ‖P′_T t_l P′_T‖ ≤ w_l ≤ (π²/4) |q_l|^{−2} Π_ρ min(1, π² sin²(K_ρ/2)/q_{l,ρ}²). For l = 0 this is ≤ π²/(4|K|²). For l ≠ 0, |q_{l,ρ}| ≥ π|l_ρ| and |q_l| ≥ π, so the bound is ≤ ¼ Π_{ρ: l_ρ≠0} l_ρ^{−2}. Summing over l ≠ 0 gives ≤ ¼[(1 + 2ζ(2))⁴ − 1] = ¼[(1 + π²/3)⁴ − 1] < 85. With |K|² ≥ |K̂|² and |K̂|² ≤ 16: ‖P′_TS_MP′_T‖ ≤ π²/(4|K̂|²) + 85 ≤ C_1/|K̂|². The same bound holds for M = ∞ (the sum over Z⁴ is majorized by the same series).

Lower bound. Keep only l = 0 (all terms are ≥ 0 on T′). There k_0 = K/M, and D_M(K_ρ/M) = sin(K_ρ/2)/(M sin(K_ρ/(2M))) ≥ sin(K_ρ/2)/(K_ρ/2) ≥ 2/π. So w_0^M (σ^M_{0,μ})² ≥ (2/π)^{10}/|q̃_0|² ≥ (2/π)^{10}/|K|² ≥ (2/π)^{12}/|K̂|², using |q̃_0| ≤ |K| and |K|² ≤ (π²/4)|K̂|². So P′_T diag(d^M) P′_T ≥ c_0|K̂|^{−2} P′_T. Inverting on T′ gives (B.1). ∎

Remark. The derivation needs no M-dependent input beyond |k_{l,ρ}| ≤ π, so (B.1) holds for M = 1 (Wilson, Δ_0 = |k̂|²P_T), for all M = L^j, and for M = ∞.

### 2.3 Lemma C: term-wise bounds on complex polydiscs

All derivative bounds below come from Cauchy estimates. So only sup bounds on complex neighbourhoods are needed. Let K_* ∈ [−π, π]⁴ be real and let P(K_*, η) := {K ∈ C⁴ : |K_ν − K_{*,ν}| ≤ η} with η ≤ 1/2. Choose the lattice representatives l relative to K_* (|k_{*,ρ}| ≤ π); this is allowed because every lattice term is 2π-periodic in k_l, so the lattice sum does not depend on the choice. Put m_l := (1+|l|)^{−2} Π_ρ (1+|l_ρ|)^{−2}.

Lemma C. There are absolute constants η_0 ∈ (0, 1/2] and C such that for η ≤ η_0, all M ∈ {1, L, L², …}, and all l ≠ 0, the functions K ↦ F(K, q̃_l(K)) and K ↦ F(K, q_l(K)) of (2.2) are analytic on P(K_*, η) and satisfy there

  |F(K, q_l)| + |F(K, q̃_l)| ≤ C m_l,   |F(K, q̃_l) − F(K, q_l)| ≤ C M^{−2} (1+|l|)² m_l.   (2.3)

For l = 0 the same holds on P(K_*, η) if |K_*| ≥ 4η, with C replaced by C/(|K_*| − 2η)² in the first bound and C M^{−2} for the second bound (relative error O(|K|²/M²) times |F| ≤ C|K|^{−2}).

Proof. Component ρ with l_ρ = 0: σ_ρ = sin(K_ρ/2)/(K_ρ/2) is entire, and σ^M_ρ = sin(K_ρ/2)/(M sin(K_ρ/(2M))) is analytic for |K_ρ| < 2πM. On |K_ρ| ≤ π + 1/2 both are bounded, and |σ^M_ρ − σ_ρ| ≤ C|K_ρ|²/M² because M sin(z/M) = z(1 + O(z²/M²)) there. Component ρ with l_ρ ≠ 0: |Re q_ρ| ≥ π|l_ρ| − η ≥ 2.6|l_ρ| and |sin(K_ρ/2)| ≤ cosh(1/4), so |σ_ρ| ≤ C/(1+|l_ρ|). For the lattice, q̃_ρ = q_ρ φ(q_ρ/M) with φ(z) = sin(z/2)/(z/2). The argument z = k_ρ lies in {|Re z| ≤ π + 1/2, |Im z| ≤ 1/2}. On this set φ is analytic, has no zero (its zeros are at z ∈ 2πZ ∖ {0}), satisfies φ_− ≤ |φ| ≤ φ_+ with absolute constants, and |φ(z) − 1| ≤ C|z|². So |q̃_ρ| ≍ |q_ρ| and |q̃_ρ − q_ρ| ≤ C|q_ρ|³/M². The bilinear square |q|² := Σ q_ρ² satisfies Re|q|² ≥ |Re q|² − |Im q|² ≥ c(1+|l|)² for l ≠ 0 and η ≤ η_0; the same holds for q̃ because Im q̃_ρ = O(η) uniformly (Im φ(z) = O(|Im z|) and |q_ρ| |Im z| ≤ |q_ρ| η/M ≤ 4η). These facts give the first bound of (2.3): |w| ≤ C(1+|l|)^{−2}Π_ρ(1+|l_ρ|)^{−2}, |σ|² ≤ C, |K̂K̂^†|/|q|² ≤ C. For the second bound interpolate along q(t) := q + t(q̃ − q), t ∈ [0,1]. The ratio q_ρ(t)/q_ρ = 1 + t(φ − 1) stays away from 0: on the set above |φ − 1| ≤ 0.48 (checked on a grid, §4), so |1 + t(φ − 1)| ≥ 0.52. F depends on q_ρ (l_ρ ≠ 0) through σ_ρ, with |∂_{q_ρ}σ_ρ| = |σ_ρ|/|q_ρ|, and through |q|^{−2} and |q|^{−4}, with |∂_{q_ρ}|q|^{−2}| ≤ 2|q_ρ|/|q|⁴. So |∂_{q_ρ}F| ≤ C m_l (1/|q_ρ| + |q_ρ|/|q|²) and

  |F(K,q̃) − F(K,q)| ≤ Σ_ρ sup_t |∂_{q_ρ}F(K,q(t))| |q̃_ρ − q_ρ| ≤ C m_l Σ_ρ (|q_ρ|² + |q_ρ|⁴/|q|²)/M² ≤ C M^{−2} (1+|l|)² m_l.

The components with l_ρ = 0 contribute through σ^M_ρ − σ_ρ = O(M^{−2}) and q̃_ρ − q_ρ = O(|K_ρ|³/M²), both smaller. The l = 0 case is the same computation with |q_0| = |K| ≥ |K_*| − 2η. ∎

Consequences (sum over l). Σ_l (1+|l|)² m_l = Σ_l Π_ρ(1+|l_ρ|)^{−2} < ∞. The tail of the continuum sum outside the lattice box (|k_{*,ρ}| ≤ π, i.e. |l_ρ| ≳ M/2 for some ρ) is ≤ C Σ_{|l|_∞ ≥ M/2 − 1} m_l ≤ C M^{−3} (one large component n: Σ_{n ≥ M/2} n^{−4}). Hence the off-zero part g^M_μ(K) := Σ_{l≠0} [diag part of F(K, q̃_l)]_μ and its continuum analogue g^∞_μ satisfy, on P(K_*, η),

  |g^M_μ| ≤ C,   |g^M_μ − g^∞_μ| ≤ C M^{−2}.   (2.4)

If |K_*| ≥ 4η, the same holds for the full d^M_μ with C replaced by C(|K_*|).

### 2.4 Near zone: an analytic formula for Δ_M at K = 0

Define, for M ∈ {1, L, …} ∪ {∞} (for M = ∞ read q̃_0 = K and σ^M = σ):

  j_μ := K̂_μ/(i q̃_{0,μ}) = e^{iK_μ/2} σ^M_{0,μ},   j^*_μ := e^{−iK_μ/2} σ^M_{0,μ},   A_0 := Π_ρ (σ^M_{0,ρ})²,   Γ_μ := g^M_μ/(j_μ j^*_μ),
  Π(K) := (q̃_0·q̃_0) 1 − q̃_0 q̃_0^T   (bilinear dot product; for real K, Π = |q̃_0|² P_{q̃_0}, with P_q the projector onto q^⊥).

All are analytic in K near 0. For real K, j^*_μ = conj(j_μ) and (σ^M_{0,μ})² = j_μ j^*_μ. So the diagonal of (A.1) factorizes as

  diag(d^M) = J X J^†,   J := diag(j),   X := (A_0/|q̃_0|²) 1 + diag(Γ).   (2.5)

Lemma D. For real K ≠ 0, Δ_M(K) = J^{−†} Ω J^{−1}, with Ω := [P_{q̃_0} X P_{q̃_0}]^{−1} on q̃_0^⊥ and Ω q̃_0 := 0.

Proof. (i) J^† maps T′ = K̂^⊥ onto q̃_0^⊥: for v ⊥ K̂, Σ_μ q̃_{0,μ} conj(j_μ) v_μ = Σ_μ q̃_{0,μ} conj(K̂_μ) v_μ/(−i q̃_{0,μ}) = i K̂^†v = 0, and J is invertible. (ii) J^{−1}K̂ = (i q̃_{0,μ})_μ ∝ q̃_0, so J^{−†}ΩJ^{−1}K̂ = 0, as required for Δ_M. (iii) For v ∈ T′ put y := J^†v ∈ q̃_0^⊥ and C := P′_T diag(d) P′_T. Then J^{−1} C v = J^{−1}(JXy − K̂ c) = Xy + c′ q̃_0 for scalars c, c′, and Ω(Xy + c′q̃_0) = Ω P_q X P_q y = y. So J^{−†}ΩJ^{−1}Cv = J^{−†}y = v. Hence J^{−†}ΩJ^{−1} is the inverse of C on T′. ∎

Neumann form. With τ := |q̃_0|²/A_0, P_q X P_q = τ^{−1}(P_q + τ P_q diag(Γ) P_q) on q̃_0^⊥. If τ‖Γ‖ < 1,

  Ω = τ Σ_{n≥0} (−τ)^n (P_q Γ)^n P_q = Σ_{n≥0} (−1)^n A_0^{−(n+1)} (Π Γ)^n Π,   (2.6)

because each of the n+1 projectors P_q pairs with one factor |q̃_0|² to give Π. The right side of (2.6) contains no projector and no division by |K|. It is a convergent power series of analytic functions. Therefore

  Δ_M(K) = diag(1/j^*) [ Σ_{n≥0} (−1)^n A_0^{−(n+1)} (Π Γ)^n Π ] diag(1/j)   (2.7)

is analytic on a complex ball around K = 0, and Δ_M(0) = 0 because Π(0) = 0. At leading order (Γ → 0, j → 1, A_0 → 1, q̃_0 → K) (2.7) is |K|²1 − KK^T, the Maxwell form; this is the constant-mode structure Δ_M = |K̂|²P′_T(1 + O(K²)) of U3, now written without the singular projector.

Uniform radius. On the complex ball B_ρ := {|K| ≤ ρ}, ρ ≤ η_0, the explicit functions satisfy, uniformly in M: |j_μ|, |j^*_μ| ∈ [c, C], |A_0| ≥ c, |q̃_0| ≤ 2|K|, so ‖Π‖ ≤ 8ρ². By (2.4) with K_* = 0, |Γ_μ| ≤ γ with γ independent of M. Choose ρ_1 ≤ η_0 with 8ρ_1² γ/c ≤ 1/2. Then the series (2.7) converges on B_{ρ_1} with ratio ≤ 1/2, and |Δ_M| ≤ C on B_{ρ_1} for all M.

Rate on B_{ρ_1}. Each ingredient differs from its M = ∞ version by ≤ C M^{−2} on B_{ρ_1}: for j, j^*, A_0, q̃_0 this is M sin(z/M) = z(1 + O(z²/M²)); for Γ it is (2.4). The map (j, j^*, A_0, Π, Γ) ↦ right side of (2.7) is analytic and Lipschitz on the bounded set where the ratio is ≤ 1/2 (term-wise telescoping with Σ_n (n+1) 2^{−n} < ∞). So |Δ_M − Δ_∞| ≤ C M^{−2} on B_{ρ_1}. Cauchy's estimate on B_{ρ_1} gives, for real |K| ≤ ρ_1/2,

  |∂_K^α (Δ_M − Δ_∞)(K)| ≤ C α! (2/ρ_1)^{|α|} M^{−2},   all α.   (2.8)

This includes K = 0.

### 2.5 Far zone: |K| ≥ ρ_1/2

Let K_* ∈ [−π, π]⁴ with |K_*| ≥ ρ_1/2, and take η := min(η_0, ρ_1/16). For real K, Y := diag(1/d^M) exists (d^M_μ ≥ c_0/|K̂|² ≥ c_0/16 by §2.2), and the Schur complement of the 2×2 block form of Y with respect to T′ ⊕ CK̂ gives

  Δ_M = Y − Y K̂ K̂^† Y / (K̂^† Y K̂).   (2.9)

(Check: the right side annihilates K̂, and it is the inverse of the compression of diag(d) to T′ by the block-inverse formula.) Continue K̂^† analytically by K̂^*(K) := (e^{−iK_μ} − 1)_μ. By Lemma C (l = 0 included, since |K_*| ≥ 8η), d^M is analytic on P(K_*, η) with |d^M| ≤ C, and by Cauchy |∂d^M| ≤ C/η there. At real K_* the denominators satisfy d^M_μ ≥ c_0/16 and K̂^†YK̂ ≥ |K̂|⁴/C_1 ≥ c(ρ_1)⁴/C_1. Shrinking η by a factor depending only on these bounds keeps |d^M_μ| ≥ c_0/32 and |K̂^*YK̂| ≥ half of its value at K_* on P(K_*, η). So (2.9) is analytic on P(K_*, η), bounded uniformly in M, and Lipschitz in d. With (2.4) for the full d^M: |Δ_M − Δ_∞| ≤ C M^{−2} on P(K_*, η), and Cauchy gives |∂^α(Δ_M − Δ_∞)(K_*)| ≤ C α! η^{−|α|} M^{−2}.

### 2.6 Conclusion of O5

(2.8) and §2.5 cover all real K ∈ [−π, π]⁴, with constants independent of M (and of L, since L enters only through M). This proves (O5.1) for every |α|, in particular |α| ≤ 2. There is no log M: the weights (1+|l|)² in Lemma C are paid once by the relative error O(|q|²/M²), and the K-derivatives come from Cauchy estimates, which cost no powers of |l|. This agrees with the verifier's term count (U3_VERIFY §5).

What Theorem 6.1 needs. The norm (6.2) and the Taylor-data norm of U3_VERIFY Correction 1 use Σ_{|α|≤2} sup_k |∂^α Δ(k)| for the matrix symbol Δ itself. (O5.1) is a bound in exactly this norm. In the chain rule of Theorem 6.1(ii), Δ_j is evaluated at k_l + p/L, and k_l = 0 occurs at K = 0; the analyticity at K = 0 (§2.4) makes this point harmless. Note on the K → 0 behaviour: the numerics (§4) show |∂^α(Δ_M − Δ_∞)| = O(|K|^{4−|α|} M^{−2}) near 0, i.e. the difference vanishes to fourth order. This follows from (2.7): the Γ-terms are O(|K|⁴), A_0 = 1 + O(|K|²) and σ^M_0 = 1 + O(|K|²) enter at order 4, and q̃_0 − K = O(|K|³/M²) enters Π at order 4; so the Taylor polynomial of Δ_M of degree ≤ 3 at K = 0 is diag(e^{iK/2})(|K|²1 − KK^T)diag(e^{−iK/2}) truncated at degree 3, the same for all M. The proof of (O5.1) does not need this.

## 3. Proof of O6

### 3.1 Per-K coordinates

One step goes from the level-j lattice (spacing 1 in level-j units) to level j+1 (spacing L). At the trivial background all operators are color-diagonal, so fix one color. For a coarse K ∈ BZ the fine momenta are k_l = (K + 2πl)/L, l ∈ {−h, …, h}⁴, N := L⁴ of them. A fine bond field has the per-K vector x = (x_l)_l ∈ H := (C⁴)^N with x_l := L^{−2} B̂(k_l). This map is unitary: Σ_b |B_b|² = ∫ dK/(2π)⁴ |x(K)|² by the Parseval identities of U3 §0. In these coordinates (the code's cell basis is related to them by a unitary within-cell DFT, so all norms agree):

- Δ-block: (Δ⊕x)_l = Δ_j(k_l) x_l, with Δ_j = Δ_{M=L^j}.
- Gauge gradient: a fine gauge function ν has per-K vector ν = (L^{−2}ν̂(k_l))_l ∈ C^N, and D_f ν := (k̂_l ν_l)_l.
- Coarse value: the anchors are the coarse sites, which are the block centers, so ν|_coarse has per-K value cv(ν) = L^{−2} Σ_l ν_l = L^{−2}⟨u, ν⟩, u := (1, …, 1). (With anchors at an offset a, u_l = e^{−ik_l·a}; only |u_l| = 1 is used below.)
- Ghost space: Λ_gh := {ν : ⟨u, ν⟩ = 0} (λ vanishing on the coarse sites, NUMERICS §1, R2_VERIFY §2.3(a)), D := D_f|_{Λ_gh}, and D D^† = D_f Π D_f^*, Π := 1 − uu^†/N.
- Averaging: Q(K)x = L^{−2} Σ_l Q̂_L(k_l) x_l with Q̂_L = χ_L R_L of U3 (2.2), and Q̃(K) = Q(K) − K̂ Λ(K) with Λ(K) the per-K row of the functional Λ of U3 (1.1) (either sign).

Facts used about Q̃ (all from U3 §1–2): (F1) covariance Q̃ D_f ν = K̂ cv(ν) for all ν (the linearized CMP 98 p. 24 identity; a unimodular phase or a sign does not matter); in particular Q̃ D = 0. (F2) P′_T Q̃ = P′_T Q, since the gauge term is proportional to K̂. (F3) ‖Λ(K)‖ ≤ ‖Λ‖_{ℓ²→ℓ²} ≤ (2L)^{1/2}: by the Schur test on the real-space kernel of (1.1), each row has ℓ¹ norm L^{−4} Σ_{x∈B(y)} |x − y|_1 ≤ 2(L−1), and each column has ℓ¹ norm ≤ L^{−4}·L⁴ = 1 (a bond lies in one block, and the monotone paths from y to x ∈ B(y) stay in B(y)).

Elementary bounds on the umklapp momenta (K ∈ BZ ∖ {0}). (E1) For l ≠ 0, some k_{l,ν} has distance ≥ π/L from 2πZ, so |k̂_l|² ≥ 4 sin²(π/(2L)) ≥ 4/L². (E2) For l ≠ 0, |χ_L(k_l)| ≤ |D_L(k_{l,ν})| ≤ |sin(K_ν/2)|/(L sin(π/(2L))) ≤ |K_ν|/2 ≤ |K|/2 for a ν with l_ν ≠ 0. (E3) χ_L(k_0) ≥ (2/π)⁴ and |R_{L,μ}(k_0)| = L D_L(K_μ/L) ∈ [2L/π, L]; in general |R_{L,μ}(k)| ≤ L. (E4) |k̂_0| ≤ |K|/L and |K̂| ≥ (2/π)|K|. (E5) k̂_l ≠ 0 for all l when K ≠ 0.

### 3.2 The abstract bordered lemma

Lemma E. Let A be a Hermitian operator on a finite-dimensional space H and C: H → C^r. Assume ‖A‖ ≤ α, σ_min(C) ≥ s > 0 (full row rank), and ⟨x, Ax⟩ ≥ a|x|² for x ∈ ker C, a > 0. Then 𝔅 = [[A, C^†],[C, 0]] is invertible and ‖𝔅^{−1}‖ ≤ 1/a + 2κ/s + ακ/s², κ := 1 + α/a.

Proof. Solve 𝔅(x, y) = (f, g). Let P be the orthogonal projector onto W := ker C. Put x_1 := C^†(CC^†)^{−1}g ∈ W^⊥, so |x_1| ≤ |g|/s. The equation for x_0 := x − x_1 ∈ W is PAPx_0 = P(f − Ax_1); PAP ≥ a on W gives |x_0| ≤ (|f| + α|g|/s)/a. So |x| ≤ |f|/a + κ|g|/s. Then C^†y = (1 − P)(f − Ax) and |C^†y| ≥ s|y| give |y| ≤ (|f| + α|x|)/s ≤ κ|f|/s + ακ|g|/s². The solution is unique, so 𝔅 is invertible, and adding the bounds gives the claim. ∎

Remark (the condition in the task). For the form Δ⊕ alone, positivity can hold only on ker Q̃ ∩ (im D)^⊥, because im D ⊂ ker Q̃ (F1) and Δ⊕ vanishes on im D. The bordered matrix of NUMERICS has A = Δ⊕ + DD^†, and DD^† is positive on im D. So the right hypothesis for Lemma E is positivity of A on all of ker Q̃, and this is what §3.4 proves. Equivalently: Δ⊕ ≥ a on ker Q̃ ∩ (im D)^⊥ plus DD^† ≥ a on im D, plus control of the cross terms; the decomposition in §3.4 handles the cross terms directly.

### 3.3 Upper bound α

By Proposition B (with the level-j BZ in place of the coarse one), ‖Δ_j(k)‖ ≤ |k̂|²/c_0 ≤ 16/c_0 for all j and k. And ‖DD^†‖ ≤ ‖D_f‖² = max_l |k̂_l|² ≤ 16. So ‖A_j(K)‖ ≤ α := 16(1 + c_0^{−1}) ≈ 3.6·10³.

### 3.4 Two estimates on Q̃, and the lower bound s

Let K ≠ 0. By (E5), H = H_T ⊕ H_L orthogonally, H_T := ⊕_l T(k_l) (T(k) = k̂^⊥), H_L := D_f C^N; D_f is injective. Write n̂ := K̂/|K̂|.

Lemma F (the K̂-component of Q̃ on transverse fields). For x_T ∈ H_T, |K̂^† Q̃ x_T| ≤ 3.6 L |K̂|² |x_T|.

Proof. K̂^†Q̂_L(k)y = χ_L(k) Σ_μ (|K̂_μ|²/k̂_μ) y_μ, since conj(K̂_μ)R_μ = |K̂_μ|²/k̂_μ. Term l = 0, y ⊥ k̂_0. Use k̂_μ = 2i s_μ e^{ik_μ/2}, s_μ = sin(K_μ/(2L)), S_μ := sin(K_μ/2), and ỹ_μ := e^{−ik_μ/2}y_μ. Then |K̂_μ|²/k̂_μ · y_μ = −2i (S_μ²/s_μ) ỹ_μ, and y ⊥ k̂_0 reads Σ_μ s_μ ỹ_μ = 0. So

  K̂^†Q̂_L(k_0)y = −2i χ_L(k_0) Σ_μ (S_μ²/s_μ − L² s_μ) ỹ_μ.

With x := K_μ/2 ∈ [−π/2, π/2]: |sin x − L sin(x/L)| ≤ |x|³/6 (since x − x³/6 ≤ sin x and L sin(x/L) ≤ x for x ≥ 0), |sin x + L sin(x/L)| ≤ 2|x|, |sin(x/L)| ≥ 2|x|/(πL). So |S_μ²/s_μ − L²s_μ| ≤ (πL/6)|x|³ = (πL/48)|K_μ|³, and |K̂^†Q̂_L(k_0)y| ≤ (πL/24)|K|³|y| ≤ (π³L/96)|K| |K̂|² |y| ≤ 2.03 L |K̂|² |y| (|K| ≤ 2π). Terms l ≠ 0: by (E2), (E3), |K̂^†Q̂_L(k_l)y| ≤ |χ_L(k_l)| L |K̂| |y| ≤ (L/2)|K||K̂||y| ≤ (πL/4)|K̂|²|y|. Summing with the factor L^{−2} and Σ_l |x_l| ≤ L²|x| gives |K̂^†Q x_T| ≤ 2.03 L |K̂|² |x_T|. The gauge term adds |K̂|²|Λ x_T| ≤ (2L)^{1/2}|K̂|²|x_T| ≤ 1.5 L |K̂|²|x_T| (F3). ∎

Lemma G (the soft transverse mode). The map P′_T Q̂_L(k_0): T(k_0) → T′ is invertible, with ‖(P′_TQ̂_L(k_0))^{−1}‖ ≤ 1/(σ_0 L).

Proof. For v ∈ T′: k̂_0^† R^† v = (R k̂_0)^† v = K̂^† v = 0, so Q̂_L(k_0)^† v = χ_L(k_0)R^†v ∈ T(k_0), and by (E3) |Q̂_L(k_0)^†v| ≥ (2/π)⁴(2L/π)|v| = σ_0 L |v|. So the adjoint T′ → T(k_0) is injective with that bound; both spaces have dimension 3. ∎

Lower bound on σ_min(Q̃). Let w ∈ C⁴, w = w_T + w_n n̂ with w_T ∈ T′. (a) P′_TQ restricted to H_T has adjoint v ↦ (L^{−2}Q̂_L(k_l)^†v)_l, whose norm is ≥ L^{−2}|Q̂_L(k_0)^†v| ≥ (σ_0/L)|v| (Lemma G). So there is x_1 ∈ H_T with P′_TQ̃x_1 = w_T (F2) and |x_1| ≤ (L/σ_0)|w_T|. (b) The remaining n̂-component is r := w_n − n̂^†Q̃x_1, with |r| ≤ |w| + 3.6L|K̂||x_1| ≤ (1 + 14.4L²/σ_0)|w| (Lemma F, |K̂| ≤ 4). (c) Put x_2 := t D_f δ_0 (a pure gauge mode at l = 0). By (F1), Q̃x_2 = t K̂ L^{−2}, which has no T′-component. Choose t = rL²/|K̂|. Then |x_2| = |t||k̂_0| ≤ |r| L² (|K|/L)/((2/π)|K|) = (π/2)L|r| by (E4). So Q̃(x_1 + x_2) = w and

  |x_1 + x_2| ≤ [L/σ_0 + (π/2)L(1 + 14.4L²/σ_0)] |w| = s^{−1}|w|,   s^{−1} = L/σ_0 + (π/2)L + 7.2πL³/σ_0 ≤ 228 L³.   (3.6)

Hence σ_min(Q̃(K)) ≥ s ≥ 4.4·10^{−3} L^{−3} for all K ≠ 0 and all j (Q̃ does not depend on j). The pure gauge mode at l = 0 is what keeps the K̂-row of Q̃ nondegenerate as K → 0: Q̃ D_f δ_0 = K̂L^{−2} and |D_f δ_0| = |k̂_0|, with ratio ≥ (2/π)/L.

### 3.5 Coercivity of A_j on ker Q̃: the constant a

Let K ≠ 0 and x ∈ ker Q̃. Write x = x_T + D_f ν (x_T ∈ H_T, ν ∈ C^N) and ν = λ + ν_c with λ ∈ Λ_gh and ν_c := (⟨u,ν⟩/N) u.

Step 1 (what the constraint says). By (F1), Q̃x = Q̃x_T + K̂ cv(ν). The T′-part gives P′_TQ x_T = 0 (F2). The K̂-part gives cv(ν) = −K̂^†Q̃x_T/|K̂|², so |cv(ν)| ≤ 3.6L|x_T| by Lemma F. Since cv(ν) = L^{−2}⟨u,ν⟩ and |u|² = N = L⁴, |ν_c| = |⟨u,ν⟩|/L² = |cv(ν)| ≤ 3.6L|x_T|.

Step 2 (transverse part). Δ_j(k)k̂ = 0 and Δ_j has range in T(k), so ⟨x, Δ⊕x⟩ = Σ_l ⟨x_{T,l}, Δ_j(k_l) x_{T,l}⟩ ≥ C_1^{−1} Σ_l |k̂_l|² |x_{T,l}|² by Proposition B (uniform in j: this is the derivation of "Δ_j ≥ c|k̂|²P_T" from (2.3) asked for in the task, with c = 1/C_1). By (E1) this is ≥ (4/(C_1L²)) Σ_{l≠0}|x_{T,l}|². The soft mode x_{T,0} is tied to the others by P′_TQx_T = 0: P′_TQ̂_L(k_0)x_{T,0} = −Σ_{l≠0} P′_TQ̂_L(k_l)x_{T,l}. Lemma G, |Q̂_L(k_l)| ≤ |χ_L(k_l)|L ≤ (|K|/2)L (E2), and Cauchy–Schwarz give |x_{T,0}| ≤ σ_0^{−1}(|K|/2) L² (Σ_{l≠0}|x_{T,l}|²)^{1/2} ≤ (πL²/σ_0)(Σ_{l≠0}|x_{T,l}|²)^{1/2}. Hence

  ⟨x, Δ⊕x⟩ ≥ a_T |x_T|²,   a_T := 4 / (C_1 L² (1 + π²L⁴/σ_0²)) ≥ 3.2·10^{−6} L^{−6}.   (3.7)

Step 3 (gauge part). D_f^* x_T = 0, so D^†x = Π D_f^* D_f ν = Π N_k ν with N_k := diag(|k̂_l|²). For λ ∈ Λ_gh, ⟨λ, N_kλ⟩ ≥ (4/L²)Σ_{l≠0}|λ_l|² by (E1), and ⟨u,λ⟩ = 0 gives |λ_0|² ≤ (N−1)Σ_{l≠0}|λ_l|², so ⟨λ, N_kλ⟩ ≥ g_0|λ|² with g_0 := 4L^{−6}. Hence |ΠN_kλ| ≥ g_0|λ|. (The same computation shows the ghost operator G = D^†D satisfies G ≥ g_0 on Λ_gh, uniformly in j and K, which is the bound ‖G(K)^{−1}‖ ≤ L⁶/4 also required in 𝒟_{a,b}.) Also |ΠN_kν_c| ≤ 16|ν_c| ≤ m|x_T| with m := 58L. So

  |D^†x|² ≥ (g_0|λ| − m|x_T|)_+².   (3.8)

Step 4 (combine). ⟨x, A_jx⟩ = ⟨x, Δ⊕x⟩ + |D^†x|² ≥ a_T|x_T|² + (g_0|λ| − m|x_T|)_+². On the other side, |x|² = |x_T|² + |D_fν|² ≤ |x_T|² + 16(|λ|² + |ν_c|²) ≤ (1 + 208L²)|x_T|² + 16|λ|². If g_0|λ| ≥ 2m|x_T|, then ⟨x,A_jx⟩ ≥ a_T|x_T|² + g_0²|λ|²/4. Otherwise |λ|² ≤ 4m²|x_T|²/g_0². In both cases

  ⟨x, A_j x⟩ ≥ a |x|²,   a := [ (1 + 208L² + 64m²/g_0²)/a_T + 64/g_0² ]^{−1} ≥ 2.3·10^{−10} L^{−20}.   (3.9)

(Numbers: 64m²/g_0² = 13456 L^{14}, 1/a_T ≤ 3.1·10⁵ L⁶.) The bound is uniform in j because only Proposition B entered, and uniform in K ≠ 0.

### 3.6 Conclusion of O6

For K ≠ 0, Lemma E with α (§3.3), s (3.6), and a (3.9) gives (O6.1) for every j. At K = 0, every block of 𝔅_j(K) is continuous in K: Δ_j(k_l) is analytic (§2.4), Q̂_L(k_l) = χ_LR_L is continuous (R_L has a removable singularity), Λ(K) is the Fourier series of an ℓ¹ kernel, and DD^† is a trigonometric polynomial. The set {X : X invertible, ‖X^{−1}‖ ≤ b} is closed. So (O6.1) holds at K = 0 too. The color sum is a direct sum of identical blocks, so the bound holds for the full 𝔅_j(K) of size 4N_g(L⁴ + 1). ∎

What this gives for Theorem 6.1. Hypothesis (b) of U3 §6.2, ‖𝔅(K)^{−1}‖ ≤ b and ‖G(K)^{−1}‖ ≤ b uniformly on BZ, holds for the level-j data 𝒟_j for all j, with b = max(b(L), L⁶/4). It is proved, not cited; the CMP 95 Prop. 1.1 citation can be dropped. The Lipschitz argument of Theorem 6.1(i) also needs the same bound for data 𝒟 near 𝒟_j; this follows from (O6.1) with b replaced by 2b on the ball ‖Δ − Δ_j‖_{C⁰} ≤ 1/(2b) (Neumann series), and Δ_∞ lies in that ball for j large by (O5.1).

Scope. The proof is at the trivial background, which is all that (6.1) needs (U3 §6.2: only F-Taylor coefficients at F = 0 enter). The constants are crude: numerically (L = 3) a ≈ 0.085, s ≈ 0.21, ‖𝔅^{−1}‖ ≤ 177, against the proved a ≥ 6.7·10^{−20}, s ≥ 1.6·10^{−4}. The L-dependence is irrelevant for j → ∞ at fixed L.

## 4. Ledger

Proved here:
- R1. Proposition A: P′_TS_MP′_T = P′_T diag(d^M)P′_T for all M including ∞. The lattice umklapp term is exactly the continuum term at q̃ = 2M sin(q/(2M)) (2.2). Numerically exact (4·10^{−15}, 3·10^{−14}).
- R2. Proposition B: c_0|K̂|^{−2}P′_T ≤ P′_TS_MP′_T ≤ C_1|K̂|^{−2}P′_T, so C_1^{−1}|K̂|²P′_T ≤ Δ_M ≤ c_0^{−1}|K̂|²P′_T, uniformly in M, with c_0 = (2/π)^{12}, C_1 ≤ 1363. This replaces the unwritten constants of U3 §4 Step 1.
- R3 (O5). Theorem O5: Δ_M is real-analytic on the torus including K = 0 (formula (2.7), no projector), and sup_K |∂^α(Δ_M − Δ_∞)| ≤ C_α M^{−2} for all α, with K = 0 included and no log M. The statement is for the matrix symbol itself, which is the norm that Theorem 6.1 and the Taylor-data norm use. This closes U3 ledger O3 and the K → 0 addendum of U3_VERIFY §10. Constants C_α, ρ_1, η_0 exist and are independent of M and L; they are not computed.
- R4 (O6). Theorem O6: ‖𝔅_j(K)^{−1}‖ ≤ b(L) for all j and all K ∈ BZ, K = 0 included, with explicit α, s, a (§3.3–3.5), and ‖G(K)^{−1}‖ ≤ L⁶/4. This proves hypothesis (b) of U3 Theorem 6.1 at the trivial background. The CMP 95 Prop. 1.1 citation is no longer needed. Side result: Q̃ has full row rank 4 uniformly as K → 0, because the l = 0 pure-gauge mode carries the K̂-row (§3.4(c)).
- R5. By-product for U3 ledger O2: Δ_M is analytic on a complex ball of radius ρ_1 around K = 0 and on complex polydiscs of radius η around every real K, uniformly in M. This is uniform analyticity in a strip |Im K_ν| < η of fixed width (η depending on ρ_1). So Corollary 4.2's hypothesis sup_M‖Δ_M‖_δ < ∞ holds for some δ > 0 (Paley–Wiener), with δ not computed. I have not checked every step of this by-product as carefully as R3; treat it as a strong sketch.

Not proved / open (unchanged by this file):
- O1 (Lemma 5.1, soft-leg vertices), O4 (β_∞ > 0), and V1 (order-g⁰ completeness of (1.3)) are untouched.
- The constants of R3 are existential (Cauchy-estimate radii). Explicit values would need explicit η_0 and γ in Lemma C and §2.4.
- The constants of R4 are explicit but very crude (a ≥ 2.3·10^{−10}L^{−20}; numerically a ≈ 0.085 at L = 3).
- O6 is proved at the trivial background only. The finite-F version (needed only for a non-perturbative formulation, U3 §6.2) is not addressed.
- Lemma C's statement "Im q̃_ρ = O(η)" and the lower bound on Re|q̃|² are argued with unnamed absolute constants; a fully explicit η_0 was not computed.

Numerical checks (heredoc scripts, numerics/.venv/bin/python -I, no files written):
- (A.1) vs (2.3) at K = (1.1, −0.7, 0.4, 2.0): 4.4·10^{−15} (M = 3), 2.7·10^{−14} (M = 9).
- (2.7) Neumann form and (2.9) vs direct compression inverse at K = (0.05, −0.03, 0.02, 0.04), M = 9: 1.5·10^{−17} each (entries 5·10^{−3}).
- Rate near K = 0 along a generic direction, M = 3, 9, 27 (continuum truncated at |l_ν| ≤ 14), max entry of value / first / second central differences (h = |K|/4): |K| = 0.3: 1.0·10^{−4}, 1.2·10^{−3}, 1.3·10^{−2} → 1.1·10^{−5}, 1.3·10^{−4}, 1.4·10^{−3} → 1.2·10^{−6}, 1.4·10^{−5}, 1.6·10^{−4}; |K| = 0.03: 9.9·10^{−9}, 1.1·10^{−6}, 1.2·10^{−4} → ratios 9.0, 9.0, 9.0 per factor 3 in M; |K| = 0.003: second differences 1.2·10^{−6}, 1.4·10^{−7}, 1.5·10^{−8}. So the rate is M^{−2} uniformly, and the difference vanishes like |K|^{4−|α|} at 0, as stated in §2.6.
- |φ − 1| ≤ 0.479 and 0.53 ≤ |φ| ≤ 1.02 on {|Re z| ≤ π + 1/2, |Im z| ≤ 1/2} (grid 1201×201).
- Bordered matrix, L = 3, one color, j = 0, 1, 2 (M = 1, 3, 9), Q̃ = Q − K̂Λ with Λ := L^{−2}(χ_L(k_l) − 1)_l ∘ D_f^{−1} on H_L and 0 on H_T (the minimal choice satisfying (F1)): |Q̃D| ≤ 1.5·10^{−16}. Along a generic direction, |K| = 2, 0.3, 0.03, 0.003: ‖𝔅^{−1}‖ = 7.5–7.9, 10.5, 11.7, 11.7; min of A on ker Q̃ = 0.52, 0.095, 0.085, 0.085; σ_min(Q̃) = 0.30, 0.33, 0.33, 0.33 (→ 1/L). 300 random K, M = 3: max ‖𝔅^{−1}‖ = 156, min a = 0.097, min s = 0.21, max ‖A‖ = 102, max ‖Λ(K)‖ = 0.38; at K = (π−10^{−6})(1,1,1,1): ‖𝔅^{−1}‖ = 177. No growth with j and no degeneration as K → 0.
