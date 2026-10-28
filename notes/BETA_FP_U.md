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

with γ_L of order one in units of P and weakly dependent on L. Consequence for Lemma 1.3 of BETA_FP_PW: |S(θ; L^k) − S_k| ≤ C_Uθ²/(L² − 1) ≈ γ_Lβ(0)θ²·L²/(L² − 1), which is L-independent in coarse units, valid for θ ≲ P_*. §5 tests (2.2) against the existing data.
