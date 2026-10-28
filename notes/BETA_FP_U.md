IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# BETA_FP_U: the uniform p² bound (U) and boundedness of Γ^{ex}(θ_*; L^k)

Written 2026-10-27 (Claude, Opus 5.5). Read: BETA_FP_PW §0–§7; U3_AW §4.1–4.3; U3_AW_VERIFY §3; U3_REPAIRS (O5, O6, Prop. B); U3_GAUSSIAN_RG §2; U3_LEMMA51_R23 §3c; KAPPA_BOUNDED §2 and its VERIFY; numerics/NUMERICS §5–7. Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and ONLINE_SWEEP §2 not read. No existing file edited. No new numerics runs. Tags: [proved here], [cited], [argued], [hypothesis], [open].

(Sections are appended as the work proceeds.)

## 1. Setting, and a correction to the premise

### 1.1 The objects
Level-j plane-wave data (BETA_FP §1.2): D0_j(q) (= Δ_j, trivial background), Tp_j(q; p), Tm_j(q; p) (a¹, transfer ±p), D2_j(q; p) (a², zero transfer). One step is (1.3) of BETA_FP. Let a_j(p) := |v_j(p)| be the level-j amplitude per unit fine amplitude a. For the transverse σ_3 wave, a_{j+1}(p) = L χ(p/L) a_j(p/L)·(1 + longitudinal part) with χ the one-step form factor, χ(0) = 1, entire. Normalized data: T̃_j := Tp_j/a_j, D̃2_j := D2_j/a_j².

Write b(k) := 𝔅_{j}(k)^{−1} (one-step bordered inverse, level j → j+1). Row 2 of b(k) is [H(k)^†, −Δ_{j+1}(K)] with H = H_{j+1} the gauge-fixed one-step minimizer map (U3_AW §1). Then (1.3) reads

  Tp_{j+1}(K; Lp) = H(k + p)^† [W(k + p) diag_l Tp_j(k_l; p) W(k)^†] H(k) + g^T_j(K; p),   (1.1)
  D2_{j+1}(K; Lp) = H(k)^† [W(k) diag_l D2_j(k_l; p) W(k)^†] H(k) + g^D_j(K; p),   (1.2)

where g^T_j collects the one-step vertex terms (Q̃^{(1)}, ghost (DD^T)^{(1)}; finite range, entire in (k, p)) contracted with b(k), b(k + p), and g^D_j collects the 𝔅''_0 vertex terms and the products 𝔅_∓ b(k ± p) 𝔅_± of BETA_FP (1.3) (quadratic in Tp_j, Tm_j). The input data enter (1.1)–(1.2) undifferentiated in q. Only b(·) is evaluated at shifted momenta.

Normalized form. Put 𝒜(k′, k)s := L^{−2} H(k′)^† [W(k′) diag_l s(k_l) W(k)^†] H(k). Then, with ρ_j(p) := L a_j(p/L)/a_{j+1}(p) = 1 + O(p²) (explicit),

  T̃_{j+1}(K; p) = ρ_j L·𝒜(k + p/L, k) T̃_j(·; p/L) + g̃^T_j,   D̃2_{j+1}(K; p) = ρ_j² 𝒜(k, k) D̃2_j(·; p/L) + g̃^D_j.   (1.3)

Check at p = 0: H(0) = L e_{l=0} ⊗ 1 (U3_AW_VERIFY §5), so 𝒜(0, 0)s = s(0): the a¹ data have eigenvalue L (a relevant vertex, dimension 1) and the a² data eigenvalue 1, as the gauge-covariance values below require.

### 1.2 What (A) qualitative gives, and what it does not
The task premise says the vertices T_±(p) and the zero-transfer kernel are "analytic in p with j-uniform bounds by (A) qualitative". This is not what U3_AW proves.
- Proved with j-uniform bounds: A0 (Δ_M analytic on S(δ_0), sup ≤ B_0, all M), Lemma A1 (‖b(K)‖ ≤ 2b(L) on |Im K| ≤ δ_*(L), all j), Theorem A3 (real-K C⁰ bound on σ^{(1)}, all j).
- Proved without j-uniform bounds: Prop. A2 (σ^{(m)}, m ≤ 2, analytic on S(δ_*) at each level; the bound is not uniform in j).
- Reduced, not proved: j-uniform strip bounds for m = 1, 2 ⇐ (H′). (H′) FAILS numerically at L = 3 (max‖H_j‖/L = 1.65, 1.74, 1.76, 1.76 for j = 1, 2, 3, ∞ against the threshold √(L − 1) = 1.41; U3_AW_VERIFY §6).
The plane-wave vertices T̃_j(·; p), D̃2_j(·; p) at p ≠ 0 are level-j background data of the same type as σ_j^{(1)}, σ_j^{(2)}, not f⁰ data. So their j-uniform bounds are not covered by (A) qualitative. The same argument as A2 gives analyticity in (q, p) at each level j (Lemma 2.1 below), with a j-dependent bound. Uniformity in j is the whole content of (U). §2 proves it from one inequality on H, which is weaker than (H′), and states exactly where it holds.

## 2. Proof of (U) from one inequality on the minimizer map

### 2.1 Three exact facts
Lemma 2.1 (analyticity at each level) [proved here; the proof of U3_AW Prop. A2]. For each j, Tp_j, Tm_j, D2_j are analytic in (q, p) on S(δ_*) × {|p| < δ_*}. Proof: induction with (1.1)–(1.2). The input is needed at transfer p/L and at momenta k_l, so the domain does not shrink. b(k + p) is analytic by Lemma A1. The level-0 data are Wilson vertices, entire in (q, p). ∎ The bound is not uniform in j.

Lemma 2.2 (p = 0 is pure gauge) [proved here, given Balaban's exact gauge covariance of (0.4), cited in U3_AW_VERIFY §4]. At p = 0 the level-j background is a constant σ_3 field v_j(0). On the infinite lattice it is pure gauge, λ(X) = v_j(0)·X σ_3. Covariance gives the level-j form at this background as Δ_j conjugated by e^{iλ}. In the charged sector this is the momentum shift q → q − e a v_j(0). Hence:
(a) T̃_j(q; 0) and D̃2_j(q; 0) are fixed linear combinations of ∂_qΔ_j(q) and ∂_q²Δ_j(q). By A0 and Cauchy they are bounded on the real BZ uniformly in j.
(b) w_j(0) = 0 exactly: the a²-coefficient of ∫_{BZ} log det 𝔅_j(k − e a v) dk vanishes because the integrand is periodic and analytic (A1). Numerical check: the pure-gauge runs give w = −4·10^{−6} (L = 3, umk) and 0 to rounding (betafp, L = 2).

Lemma 2.3 (parity) [proved here].
(a) Evenness in p needs no reflection. The fine background a cos(p x_1) is the same for p and −p, so w_j(−p) = w_j(p) at every level. Also D2_j(q; −p) = D2_j(q; p), and Tp_j(q; −p) = Tm_j(q; p) = conj(Tp_j(−q; p)) (reality, BETA_FP §1.2).
(b) The point reflection R of U3_AW Prop. E maps the wave to minus itself ((RB)(m) = −B(−m)). So Tp_j(q; p) = −Tm_j(−q; p). With (a): Tp_j(q; −p) = −Tp_j(−q; p). Write T̃_j(q; p) = Σ_n p^n c_{T,j}^{(n)}(q). Then c^{(n)}_T(−q) = (−1)^{n+1}c^{(n)}_T(q): c^{(0)} and c^{(2)} are odd in q, c^{(1)} is even. In particular c^{(2)}_{T,j}(0) = 0. For D2: the odd p-coefficients vanish.
This uses odd L and centered blocks (Prop. E).

### 2.2 The recursion for the p-Taylor coefficients, with no derivative loss
Expand (1.3) in p. The input is evaluated at transfer p/L, so its n-th coefficient enters with L^{−n}. The factors H(k + p/L), W(k + p/L), ρ_j(p) and the one-step vertices are f⁰ objects; their p-derivatives are q-derivatives of f⁰ data, bounded uniformly in j by A0, A1, and Cauchy. The input data enter at k_l, undifferentiated in q. So [proved here]:

  c^{(n)}_{T,j+1} = L^{1−n} 𝒜_j c^{(n)}_{T,j} + Σ_{m<n} 𝒮^T_{n,m} c^{(m)}_{T,j} + g^{T,(n)}_j,
  c^{(n)}_{D,j+1} = L^{−n} 𝒜_j c^{(n)}_{D,j} + Σ_{m<n} 𝒮^D_{n,m} c^{(m)}_{D,j} + 𝒬_n[c_{T,j}^{(≤n)}] + g^{D,(n)}_j,   (2.1)

with 𝒜_j = 𝒜(k, k) (U3_AW §1), 𝒮 bounded linear maps whose norms depend on L only (crude constants: b(L), δ_*), 𝒬_n quadratic in the values c^{(m)}_{T,j}(k_l), m ≤ n, and g built from f⁰ data. No q-derivative of any c^{(m)}_j appears. This is the plane-wave form of the derivative budget (U3_AW §4.3): in the constant-field (Moyal) recursion ∂_Kσ^{(1)} appears; in the plane-wave recursion its role is played by the separate datum c^{(2)}_T (the a¹p² vertex), which has its own recursion.

Factors at K = 0 (𝒜_j(0) = 1) and the sup-norm bound ‖𝒜_j‖ ≤ h̃² with h̃ := sup_{j,K}‖H_j(K)‖/L (real K):

| datum | n = 0 | n = 1 | n = 2 | n ≥ 3 |
|---|---|---|---|---|
| T (a¹) | L: relevant, but given exactly by Lemma 2.2 | 1: marginal (constant-field vertex) | L^{−1}; sup factor h̃²/L | L^{1−n}; sup factor h̃²L^{1−n} |
| D2 (a²) | 1: marginal, given exactly by Lemma 2.2 | 0 (even) | L^{−2}; sup factor h̃²/L² | h̃²L^{−n} |

Over a block of two steps the homogeneous map is L^{2(1−n)}𝒜_{(2)} (T) and L^{−2n}𝒜_{(2)} (D2), with 𝒜_{(2)}s = L^{−4}H_{(2)}^†(⊕s)H_{(2)}, H_{(2)}(K) := (⊕_l H_{j+1}(k_l))H_{j+2}(K), ‖𝒜_{(2)}‖ ≤ h̃_{(2)}², h̃_{(2)} := sup‖H_{(2)}‖/L² (the quantity of aw_verify/h2step.py).

### 2.3 The two inputs
(T1) [argued: plane-wave form of Theorem A3]. sup_j sup_{q real} |c^{(1)}_{T,j}(q)| < ∞.
Why A3 applies. c^{(1)}_T has the four properties that A3's proof uses: (i) the recursion c_{j+1} = 𝒜_jc_j + g_j with g_j from f⁰ data (n = 1 row of (2.1)); (ii) a Ward identity c^{(1)}_T(q)d(q) = explicit f⁰ terms (the a¹ Ward identity Δ_j(A)D_A = O(R) at the wave, differentiated once in p; R = O(ap²) has no p¹ part); (iii) the value at q = 0 is level-independent (it is the constant-field spin coupling, ∂_pT at p = 0 = the a¹ vertex of a linear potential, i.e. field strength in Landau gauge; the change to the symmetric gauge is a pure gauge λ = fX_1X_2/2 whose effect is a commutator with Δ_j, explicit in f⁰ data; Theorem W fixes the symmetric-gauge value τ_c); (iv) evenness in q (Lemma 2.3(b)). Not written: the Landau-to-symmetric conversion in symbol form, and Steps 2–5 of A3 for (2.1). I expect no obstacle, because each step of A3 uses only (i)–(iv), Lemma A4, Prop. B, Lemma F, and A0/A1.

(H2) [hypothesis; numerically supported]. h̃_{(2)} < L, i.e. sup_{j,K}‖H_{(2),j}(K)‖ < L³. (One-step alternative (H1): h̃² < L.)
Status. (H1) fails at L = 3: h̃² = 1.652², 1.736², 1.757², 1.760² = 2.73, 3.01, 3.09, 3.10 for j = 1, 2, 3, ∞, against L = 3 (U3_AW_VERIFY §6). (H2) passes at L = 3: h̃_{(2)} = 2.056 against 3 (U3_AW_VERIFY §9; coarse 5-point sorted grid plus the (H′) argmax, one level pair (2, 3)). (H2) is weaker than U3_AW's (H″) at n = 2 (threshold √(L² − 1) = 2.83), and much weaker than (H′) (threshold 1.41 for h̃).

### 2.4 Theorem U
Theorem 2.4 [proved here given (T1), (H2), A0, A1, Lemma 2.2; odd L ≥ 3]. There are p_* > 0 and C_U < ∞, depending on L only, with |β_{j+1}(p) − β_{j+1}(0)| ≤ C_Up² for all j ≥ 0 and real |p| ≤ p_*. Also, for every |θ| ≤ p_*, sup_j sup_q (|T̃_j(q; θ)| + |D̃2_j(q; θ)|) < ∞.

Proof. All momenta are real; only real-K sup norms enter.
Step 1 (n = 0, 1). c^{(0)}_T, c^{(0)}_D: Lemma 2.2. c^{(1)}_T: (T1). c^{(1)}_D = 0.
Step 2 (n = 2). Apply (2.1) twice. For T: X_{j+2} ≤ L^{−2}h̃_{(2)}² X_j + Z_2, X_j := sup_q|c^{(2)}_{T,j}|, where Z_2 bounds the sources (Step 1 values, crude constants). By (H2), L^{−2}h̃_{(2)}² < 1, so sup_j X_j ≤ max(X_0, X_1) + Z_2/(1 − L^{−2}h̃_{(2)}²). For D2: factor L^{−4}h̃_{(2)}² < 1, sources include c^{(2)}_T (just bounded).
Step 3 (n = 3, 4). Factors L^{−4}h̃_{(2)}², L^{−6}h̃_{(2)}² (T) and smaller (D2). All < 1. Same argument.
Step 4 (remainder, real p). Put N_j(ρ) := sup_{|p|≤ρ} sup_q (|∂_p⁴T̃_j| + |∂_p⁴D̃2_j|). Differentiate (1.3) four times. The homogeneous part has factor ≤ L^{−6}h̃_{(2)}² over two steps (mixed momenta k, k + p/L are real, so the real-K sup bounds apply). The sources contain ∂_p^mT̃_j(·; p/L), m < 4, which are bounded by the Taylor coefficients of Steps 1–3 plus ρ^{4−m}N_j(ρ)/(4 − m)!. So N_{j+2}(ρ) ≤ (L^{−6}h̃_{(2)}² + C(L)ρ)N_j(ρ) + Z_4. Choose ρ = p_* with C(L)p_* ≤ (1 − L^{−6}h̃_{(2)}²)/2. Then sup_j N_j(p_*) < ∞. The second claim follows from the same bounds with Taylor's formula.
Step 5 (assembly). By (1.4) of BETA_FP and the normalization of §1.1, β_{j+1}(p) = 8ω_j(p)/(L⁴p²c_j(p)), where ω_j(p) := w_j(p)/a_j² is computed from the normalized data and c_j(p) := 2L^{2j}(1 − cos(pL^{−j}))/p² = 1 − p²L^{−2j}/12 + …, uniformly in j. ω_j is a BZ average of traces of products of b(k), b(k ± p) (A1: ‖b‖ ≤ 2b(L), p-derivatives by Cauchy), the normalized data, and fixed vertices. By Steps 1–4, ω_j ∈ C⁴([−p_*, p_*]) with sup_j‖ω_j^{(4)}‖_∞ =: Ω_4 < ∞. By Lemma 2.2(b) ω_j(0) = 0, and by Lemma 2.3(a) ω_j is even. Taylor: ω_j(p) = ω_j''(0)p²/2 + r_j(p), |r_j| ≤ Ω_4p⁴/24. So
  |β_{j+1}(p) − β_{j+1}(0)| ≤ (8/L⁴)[Ω_4/24 + |ω_j''(0)|/24]p² (1 + O(p_*²)),
using |1/c_j(p) − 1| ≤ p²/12 (1 + O(p²)). Since β_{j+1}(0) = 4ω_j''(0)/L⁴ is bounded by the same estimates, C_U := (8/L⁴)(Ω_4 + 2 sup_j|ω_j''(0)|)/24 + O(p_*²) works. ∎

Remarks. (a) No strip bound, no complex momenta, no convergence in j, and no rate are used. (b) The constants C(L), Z_n carry b(L) and δ_*(L) from O6 and Lemma A1. They enter only sources and the choice of p_*, never a contraction factor. So the proved p_* is tiny but positive and j-independent. (c) (H1) would do in place of (H2) with one-step blocks; it fails at L = 3 by 3%. (d) Where the δ-constraint enters: through A1 (uniform invertibility of the bordered matrix at every real k, including k = 0), which makes every BZ average absolutely convergent with no IR weight. That is the precise sense of "the constrained one-step operator is massive".

### 2.5 Dependence of C_U and p_* on L
Proved. Theorem 2.4 gives existential C_U(L), p_*(L). Through b(L) and δ_*(L) the proved p_* is astronomically small and the proved C_U astronomically large. No useful explicit L-dependence comes out of the proof constants.
Scaling [argued]. In one step at level j, the transfer p enters in two ways. (i) Through the one-step fiber: b(k + p) with fiber variable K = Lk, so a shift p in k is a shift Lp in K. The one-step bordered inverse is analytic in K on a strip of width set by the coarse scale (numerically ‖𝔅^{−1}‖ ≤ 196 at L = 3 and the kernels decay over one coarse cell), so this part is a function of P := Lp with an L-independent radius P_*. (ii) Through the level-j data at transfer p (radius O(1) in p, sizes bounded by §2.4). For large L, (i) dominates. So

  β_{j+1}(p) − β_{j+1}(0) ≈ γ_L β_{j+1}(0)(Lp)²,   i.e.   C_U ≈ γ_L β(0) L²,   p_* ≈ P_*/L,   (2.2)

with γ_L independent of L to leading order (measured 0.01–0.03, §5). Consequence for Lemma 1.3 of BETA_FP_PW: |S(θ; L^k) − S_k| ≤ C_Uθ²/(L² − 1) ≈ γ_Lβ(0)θ²·L²/(L² − 1), which is L-independent in coarse units, valid for θ ≲ P_*. §5 tests (2.2) against the existing data.

## 3. Boundedness of Γ^{ex}(θ_*; L^k) in k

### 3.1 What Γ^{ex} is
From BETA_FP_PW §2.2: Γ^{ex}(θ; Λ) := Π̂(θ/Λ) − S(θ; Λ). Here Π̂(p) is the fine Feynman-gauge Wilson vacuum polarization (normalized a²-coefficient of the full massless fine one-loop log Z at the wave), Π̂(p) = c_2 ln(1/p²) + κ_W^F + η(p) (LW (5.7)). S(θ; Λ) is the recursion sum (1.1) of PW. At fixed k, the c_2 ln(1/p²) of Π̂ and the c_2 ln(1/θ²) carried by Γ^{ex} cancel (PW Prop. 2.5). So Γ^{ex} is "the coarse massless remainder after the cancellation of the two logs". Theorem B (PW Thm 3.2) needs only (Bθ): sup_k|Γ^{ex}(θ_*; L^k)| < ∞ at one θ_* ∈ (0, p_*].

### 3.2 An exact split with the recursion kernel
Proposition 3.1 [proved here]. Let F^{comp} := (D_{(1)}^T, D_{(2)}^TQ̃_1, …, D_{(k)}^TQ̃_{k−1}, D_c^TQ̃_k), a gauge condition for the full fine gauge group (no anchor condition at the last level). Then, exactly, at every background,

  log Z_{F^{comp}} = Σ_{i=1}^{k} [log det(D_{(i)}^TD_{(i)}) − ½ log|det Bord_{(i)}|] + log det(D_c^TD_c) − ½ log det(Δ_k(a) + D_cD_c^T).   (3.1)

Proof. Steps (ii)–(iv) of BETA_FP Prop. 1.1 with one more block. The last row of F^{comp}D is D_c^TQ̃_kDλ = D_c^TD_c(λ|_{level-k sites}) by exact covariance, so F^{comp}D is block lower triangular, with the extra diagonal block D_c^TD_c. The dimension count adds N_g·(number of level-k sites). The Gaussian composition is algebraic and does not use Δ_0D = 0. After k integrations the remaining integral over V_k has the form ⟨V, Δ_k(a)V⟩ + |D_c^TV|². ∎
Normalize a²-coefficients as in PW Definition 1.1. Then

  Γ^{ex}(θ; L^k) = γ_rec(θ; L^k) + 𝔡_F(θ; L^k),   (3.2)

where γ_rec is the normalized a²-coefficient of the last two terms of (3.1) (the coarse Feynman-gauge one-loop with the recursion kernel Δ_k(a) at transfer θ), and 𝔡_F := [Feynman-gauge fine] − [F^{comp}-gauge fine], a pure gauge-fixing difference at a non-stationary background. This split is simpler than PW (2.3): no Y-defect, and the coarse kernel is the recursion kernel itself, so the R1-versus-Δ_T issue of PW §4.2 (A4 there) does not arise. All non-stationarity sits in 𝔡_F.

### 3.3 The coarse piece γ_rec: bounded by §2
Proposition 3.2 [proved here given Theorem 2.4's conclusion at θ_*; odd L]. Fix θ_* ∈ (0, p_*]. Then sup_k |γ_rec(θ_*; L^k)| < ∞.
Proof. PW Lemma 4.1 with 𝒦_k := Δ_k + D_cD_c^T and the vertices a_kTp_k(·; θ_*), a_kTm_k, a_k²D2_k(·; θ_*) and the ghost vertices. Its inputs: (i) c_*|K̂|² ≤ 𝒦_{0,k} ≤ C_*|K̂|² [proved, BETA_FP_LEMMA43 Lemma 4.1, odd L]; (ii) vertex bounds: the normalized data are bounded uniformly in k at θ_* (second claim of Theorem 2.4), and the factors a_k, a_k² cancel against the tree normalization n(θ_*) ∝ a_k²(1 − cos θ_*); (iii) the ghost vertices depend on k only through v_k/|v_k| (U3 (D3)). ∎
What is used, exactly. (a) The massless coarse operator 𝒦_{0,k} is bounded below by c_*|K̂|², uniformly in k. (b) At fixed θ_* > 0 the two singular points K = 0 and K = −θ_* of the transfer term are distinct, and each singularity is |K|^{−2}, integrable in d = 4. The zero-transfer a² term has one |K|^{−2} singularity. So there is no IR divergence and no IR weight. (c) The vertex bound, which is the only new input, and it comes from §2.

### 3.4 The gauge-fixing difference 𝔡_F
(DF) [hypothesis, argued]. sup_k |𝔡_F(θ_*; L^k)| < ∞.
Argument. If Δ_0D = 0, X_F is independent of F (BETA_FP Prop. 1.1(i)), so 𝔡_F = 0 at stationary backgrounds. At the wave, interpolate F_t between the two gauges. The t-derivative of log Z_{F_t} is linear in R = Δ_0D = O(a p_0²) (the fine equation of motion), contracted with a one-loop response; at a² order 𝔡_F = R^{(1)}·(a¹ response) + O(R²). Relative to the tree (∝ a²p_0²) this is O(1) times the response. The two gauge conditions differ scale by scale. At scale i < k the response is a massive constrained quantity, analytic and even in the transfer and zero at transfer 0 (PW §4.3(b), SOURCES_D1_VERIFY item 8), so it contributes O((θL^{i−k})²) relative. These terms sum geometrically to O(θ²). The top scale contributes an O(1) massless term at fixed θ_*. So 𝔡_F should be O(1) and bounded in k. Not written: the interpolation identity in lattice form, and uniformity of the per-scale constants.
Correction to PW §4.3(b). PW states the gauge-fixing defect is O(θ²) relative. That is right for the comparison of two massive constrained gauges at fixed k (composite vs D_k^T). It is not right for 𝔡_F, which compares with the massless fine Feynman gauge: there the defect is O(1) relative at fixed θ, as the gauge-parameter dependence of the finite part of the one-loop background-field vacuum polarization in the continuum. For Theorem B only boundedness matters, so this does not hurt. Theorem A (convergence) would need convergence of 𝔡_F.
No log. A k-growth of 𝔡_F like log Λ would make c gauge dependent; at one loop the background-field log coefficient is gauge independent, and F^{comp} is Feynman-like at every scale. So (DF) is the natural expectation [argued].

### 3.5 Is a vertex bound beyond (A) needed?
Yes. Theorem 2.4's vertex bound is beyond (A) as proved: it needs (T1) and (H2). Stated as the single vertex hypothesis:
(V) sup_j sup_{q real}|c^{(2)}_{T,j}(q)| < ∞ (the a¹p² vertex), given (T1).
(V) ⟸ (H2) by Step 2 of Theorem 2.4. All other orders and the remainder then need only h̃_{(2)} < L², which (H2) implies with a large margin.
Relation to (B2) of KAPPA_BOUNDED. (B2) is sup_j sup_K|σ_j^{(2)}(K)| < ∞. Its plane-wave analogue is c^{(2)}_D (the a²p² zero-transfer coefficient), which Theorem 2.4 bounds from (V) with factor L^{−4}h̃_{(2)}². KAPPA Prop. 4.1 bounds σ^{(2)} from h² < L⁴ plus a C¹ bound on σ^{(1)}. The C¹ bound on σ^{(1)} is the constant-field counterpart of (V): differentiate U3_AW (1.1) in K; the homogeneous factor is L^{−1}𝒜_j, the sources use σ^{(1)} values (A3) and f⁰ derivatives, exactly as in the n = 2 row of (2.1). So (H2) closes the C¹ bound on σ^{(1)} too [argued: same two-step argument on real K], and with KAPPA Prop. 4.1 it gives (B2). Both routes rest on the same inequality (H2) and on A3-type facts.

## 4. Conclusion: Theorem B, Theorem 2 (weak form), and comparison with Theorem K

### 4.1 Status of Theorem B's hypotheses
- (U): proved given (T1) and (H2) (Theorem 2.4). (T1) is [argued] (A3 transfers; four inputs checked at sketch level). (H2) is [hypothesis], numerically true at L = 3 on a coarse grid (2.06 < 3).
- (Bθ): Γ^{ex} = γ_rec + 𝔡_F exactly (Prop. 3.1). γ_rec bounded: proved given Theorem 2.4 (Prop. 3.2). 𝔡_F bounded: (DF) [hypothesis, argued].
- LW (5.7): cited, verified (U1_VERIFY item 2).
Corollary 4.1 [proved here given (T1), (H2), (DF), LW (5.7); L odd ≥ 3]. |S_k − c k log L| ≤ C_B for all k, with C_B of PW Thm 3.2 at θ_* = p_*. Hence every window sum satisfies |Σ_{j=k+1}^{K}(β_j(0) − c log L)| ≤ 2C_B.

### 4.2 Theorem 2 (weak form) by the plane-wave route
KAPPA_BOUNDED Theorem 2w uses Theorem K only through the window bound (5.1) there, T_0(k, K) ∈ [b(K − k) − 2κ_*, b(K − k) + 2κ_*]. Corollary 4.1 gives the same bound with κ_* replaced by C_B. So Lemma D″ and Theorem 2w go through word for word with D′ = 2C_B, given Lemma D″ (i) (Balaban's (H0), Lemma E form). Theorem 2w (plane-wave route) [proved here given (T1), (H2), (DF), LW (5.7), Lemma D″ (i), and A6 of PW (the plane-wave β is Balaban's β up to the expansion point, argued)].
Caveat on A6. Theorem 2w feeds Balaban's effective couplings. KAPPA identifies S_k with Balaban's quantity through the constant field and (PI), (M_j). The plane-wave route needs A6 instead: the plane-wave expansion point U_0 vs Balaban's constrained minimizer changes S(θ; Λ) by a term of the r_k type (PW §5.2). With uniformity in k it is absorbed in C_B. This uniformity is of the same kind as (DF) and is not shown.

### 4.3 Comparison of hypothesis sets
| input | Theorem K (KAPPA) | Theorem B, plane wave (this file) |
|---|---|---|
| uniform vertex bound | (B2): sup|σ^{(2)}| | (V): sup|c^{(2)}_T|; c^{(2)}_D (the (B2) analogue) is derived |
| what closes it | KAPPA Prop. 4.1: h² < L⁴ (holds numerically) + C¹ of σ^{(1)}; the C¹ bound ⟸ (H2) (§3.5, argued) | (H2) directly (Theorem 2.4 Step 2) |
| marginal a¹ datum | Theorem A3 (proved) | (T1): A3 for c^{(1)}_T (argued) |
| fixed-level inputs | (PI), (F), (M_j) with (S1)–(S3) open, V1 | none at fixed level; LW (5.7) only |
| gauge-fixing defect | none (constant field is stationary) | (DF) (argued) |
| identification with Balaban's β | via (PI) | A6 (argued) |
| derivative loss | removed by integration by parts (KAPPA Lemma 2.1) | absent: recursion uses values only (§2.2) |
| shared | odd L, Lemma 4.1(i), A0, A1, O6, (G2) | same |

Reading. Both routes reduce their uniform-in-j content to the same inequality (H2) on the two-step minimizer map plus A3-type facts. The plane-wave route trades the open spectral inputs (S1)–(S3) behind (M_j) for two argued, non-spectral items, (DF) and A6, and needs (T1) in place of the proved A3. So the plane-wave route does not have a weaker uniform hypothesis than (B2); it has a weaker fixed-level hypothesis set. If (H2) is proved, both (B2) and (V) follow, and Theorem K then rests on (S1)–(S3), while Theorem B rests on (T1), (DF), A6.

## 5. Numerics: (U) and (2.2) against existing results (no new runs; arithmetic on numerics/results/*.json only)

### 5.1 Measured slopes A := [β(p_2) − β(p_1)]/(p_2² − p_1²), level 0 (single step)
| L | data (p: β_1) | pair slopes | fit | A/L² | γ_L = A/(β_1(0)L²) |
|---|---|---|---|---|---|
| 2 | umk Ng=12: 0.1: 0.62988, 0.2: 0.63071, 0.4: 0.63404; mom Ng=12: 0.8: 0.64732 | 0.0276, 0.0277, 0.0277 | β_0 = 0.62960, A = 0.02772, p⁴ coefficient −6.5·10^{−5} | 0.0069 | 0.011 |
| 3 | umk Ng=8: 0.1: 0.66676, 0.2: 0.66917, 0.4: 0.68930 | 0.080, 0.168 | with grid term E/p²: β_0 = 0.6613, A = 0.174, E = 3.7·10^{−5} | 0.019 | 0.029 |
| 5 | umk Ng=12: 0.1: 0.74898, 0.2: 0.76817 (Ng=8 pair: 0.570) | 0.640 | two points only | 0.026 | 0.034 |
| 7 | umk Ng=8: 1/14: 0.80268, 0.1: 0.80751 | 0.987 | two points only | 0.020 | 0.025 |

Grid-error model, checked on existing data. NUMERICS §6 says the grid error in w is roughly Ng-constant, so the error in β is ≈ E/p². Test: at L = 3, (β^{Ng=6} − β^{Ng=8})·p² = 5.95·10^{−4}, 5.90·10^{−4}, 5.96·10^{−4} at p = 0.1, 0.2, 0.4. Constant to 1%. So the model holds, and the L = 3 pair slope 0.080 (from p = 0.1) is grid-contaminated; the 0.2/0.4 pair (0.168) and the three-parameter fit (0.174) agree.

Readings.
- (U) at level 0: β(p) − β(0) is p² to high accuracy. At L = 2 the slope is constant to 0.4% from p = 0.1 to 0.8 (P = Lp up to 1.6); the p⁴ term is below 10^{−4}. So p_* ≥ 0.8 at L = 2 in practice, i.e. P_* ≥ 1.6.
- (2.2), scaling C_U ∝ L². A grows 35-fold from L = 2 to L = 7, while A/L² stays in 0.007–0.026 and γ_L in 0.011–0.034. For odd L (the proved range), A/L² = 0.019, 0.026, 0.020 for L = 3, 5, 7: consistent with C_U ≈ 0.02L², γ_L ≈ 0.03. A/L³ (0.0035, 0.0063, 0.0051, 0.0029) is also within a factor 2, so the data do not separate L² from L³ cleanly. L = 5, 7 have one pair each and no grid fit (L = 5: Ng = 8 → 12 changes the slope from 0.57 to 0.64). Prediction of (2.2) that the data support: in coarse units the correction is small and L-independent, |S(θ; L^k) − S_k| ≲ 0.03·β(0)·θ²·L²/(L² − 1) ≈ 0.02θ².
- L = 2 is outside the proved range (even L), and its γ is 3 times smaller than the odd-L values. The odd/even difference is plausible (longitudinal polarization part and non-centered blocks at even L), not explained here.

### 5.2 Level 1 at L = 2 (j-uniformity), and a correction to PW §1.2
Existing recursion data (N = 8, Ng = 8): β_2(p_1) = 0.42457, 0.34119, 0.32882 at p_1 = 0.1, 0.2, 0.4; N = 12 at p_1 = 0.2: 0.31681. PW §1.2 read the 0.2/0.4 pair as C ≈ −0.10. That is a grid artifact. The p = 0.1 point shows the E/p² error clearly (0.425 vs 0.341). The three-point fit with the grid term gives β_2(0) = 0.3096, A = +0.075, E_8 = 1.14·10^{−3}. Check: at p_1 = 0.2 the model predicts N = 12 to exceed β_2(0) + 0.04A = 0.3126 by 25E_12; the measured 0.3168 gives E_12 = 1.7·10^{−4}, a factor 7 below E_8 (plausible exponential convergence in N). Not an independent test (3 points, 3 parameters).
So the per-level slope at L = 2 is A_0 = 0.028, A_1 ≈ 0.075. A factor 2.7 between levels 0 and 1 is compatible with (U) (bounded, not constant). In P units, A_1/L² ≈ 0.019, the same as the odd-L level-0 values.
PW (N2) recomputed with the grid-corrected level-1 fit β_2(p) ≈ 0.3096 + 0.075p²: D_1(0.4) = 0.6299 + 0.3126 − 0.6307 = 0.3118 and D_1(0.8) = 0.6307 + 0.3216 − 0.6340 = 0.3183. Slope +0.014 per θ², inside the Lemma 1.3 bound 2C_U/(L² − 1) = 0.05 (C_U = 0.075). The earlier −0.031 came from the uncorrected N = 8 point.

### 5.3 (H2) and (H1), existing results only
(H1) one-step h̃² vs L = 3: 2.73, 3.01, 3.09, 3.10 (j = 1, 2, 3, ∞). Fails for j ≥ 2.
(H2) two-step h̃_{(2)} vs L = 3: 2.056 (max over 71 real K, levels (2, 3)). Passes with factor L^{−2}h̃_{(2)}² = 0.47.
Not measured: (H2) at other level pairs, on a fine grid, and at L ≥ 5. Cheap check with existing code (h2step.py at levels (1, 2) and (∞, ∞) via Prop. A; a refined search near (2.36, 2.36, π, π)): a few minutes on the Mac. Not run here (task: existing results only).

## 6. Ledger

Proved here:
- P1. Lemma 2.1: plane-wave data analytic in (q, p) at each level (not uniform in j).
- P2. Lemma 2.2: at p = 0 the data are explicit derivatives of Δ_j (pure gauge), bounded uniformly by A0; w_j(0) = 0 exactly.
- P3. Lemma 2.3: w_j even in p with no reflection needed; by reflection (odd L), c^{(0)}_T, c^{(2)}_T odd in q, c^{(1)}_T even, c^{(2)}_T(0) = 0.
- P4. (2.1): the p-Taylor recursion uses values only (no q-derivative of the input); table of factors (T: L, 1, L^{−1}, …; D2: 1, 0, L^{−2}, …).
- P5. Theorem 2.4: (U) and uniform vertex bounds at |θ| ≤ p_*, given (T1) and (H2). Real momenta only; crude constants only in sources and in p_*.
- P6. Prop. 3.1: exact split Γ^{ex} = γ_rec + 𝔡_F with the recursion kernel (composite gauge for the full group); no Y-defect.
- P7. Prop. 3.2: γ_rec(θ_*; L^k) bounded in k given Theorem 2.4 (no IR issue at fixed θ_*).
- P8. Corollary 4.1 and Theorem 2w (plane-wave route), given (T1), (H2), (DF), LW (5.7), Lemma D″ (i), A6.

Argued, not proved:
- A1. (T1): Theorem A3 for c^{(1)}_T (four inputs listed in §2.3; Landau-to-symmetric conversion not written).
- A2. (DF): 𝔡_F bounded in k (Nielsen-type interpolation; per-scale O((θL^{i−k})²) plus O(1) at the top).
- A3. (H2) ⟹ C¹ bound on σ^{(1)} ⟹ (B2) via KAPPA Prop. 4.1 (§3.5).
- A4. Scaling (2.2): C_U ≈ γ_Lβ(0)L², p_* ≈ P_*/L.

Hypothesis:
- (H2): sup_{j,K}‖H_{(2),j}(K)‖ < L³ (two-step minimizer map). Numerically 2.06 < 3 at L = 3 on a coarse grid, one level pair.

Numerical findings (existing data):
- N1. (U) at level 0: pure p² from p = 0.1 to 0.8 at L = 2 (slope 0.0277 constant to 0.4%).
- N2. A/L² ≈ 0.02 for L = 3, 5, 7: consistent with C_U ∝ L² (L³ not excluded).
- N3. Grid error in β is E/p², confirmed at L = 3 (Ng 6 vs 8: (Δβ)p² constant to 1%).
- N4. Correction: the level-1 L = 2 slope is +0.075 (grid-corrected fit), not −0.10 (PW §1.2); PW (N2) D_1 slope is +0.014 per θ², not −0.031.
- N5. (H1) fails at L = 3 for j ≥ 2 (h̃² = 3.01–3.10 vs 3); (H2) passes (0.47 contraction).

Corrections to earlier files and to the task premise:
- The task premise "(A) qualitative gives j-uniform analytic bounds on T_±(p) and the zero-transfer kernel" is false: (A) qualitative has j-uniform bounds only for f⁰ data and the bordered inverse (§1.2). The p-dependent vertices need (T1) and (H2).
- Evenness in p is trivial (cos(px) = cos(−px)); the point reflection gives the q-parities instead (Lemma 2.3).
- PW §4.3(b): the gauge-fixing defect against the massless fine Feynman gauge is O(1) relative at fixed θ, not O(θ²) (§3.4). Boundedness, which is all Theorem B needs, is still expected.
- PW §1.2 data check: sign of the level-1 slope (N4).

Open:
- O1. (H2) as a proof (or a finer numerical check: more level pairs, finer grid, L ≥ 5).
- O2. (T1) written in full.
- O3. (DF) and A6 written in full, including uniformity in k.
- O4. Even L (L = 2 numbers are illustrative only).
- O5. Usable explicit constants: the proved p_*, C_U are astronomically weak (b(L), δ_*(L)).

## 7. Summary
- (U) is proved given two inputs: (T1), the plane-wave form of Theorem A3 for the marginal a¹ vertex (argued), and (H2), a sup bound on the two-step minimizer map, h̃_{(2)} < L (numerically 2.06 < 3 at L = 3). The task's premise that (A) qualitative suffices is false; the p-dependent vertices are background data like σ^{(1)}, σ^{(2)}.
- The plane-wave recursion has no derivative loss; the a¹p² vertex c^{(2)}_T replaces ∂_Kσ^{(1)} and is the one datum that needs (H2); one-step (H1) fails at L = 3 by 3%.
- Γ^{ex} = γ_rec + 𝔡_F exactly; γ_rec(θ_*) is bounded by the same vertex bounds (no IR issue at fixed θ_*); 𝔡_F bounded is argued (DF).
- Theorem B, hence Theorem 2w by the plane-wave route, holds given (T1), (H2), (DF), LW (5.7), A6. Both this route and Theorem K's (B2) rest on (H2); the plane-wave route replaces the open spectral (S1)–(S3) by argued (DF), A6.
- Data: C_U ∝ L² is consistent (A/L² ≈ 0.02 for L = 3, 5, 7); L = 2 is pure p² to p = 0.8; the level-1 L = 2 slope is +0.075 after grid correction, not −0.10.
