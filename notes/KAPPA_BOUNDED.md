# KAPPA_BOUNDED — uniform bound on the coarse F²-coefficient κ_k (Theorem K) and Theorem 2 (weak form)

Status: complete (2026-10-27), not independently verified. Sections were appended one at a time.

Read: LEMMA_DPRIME.md (+VERIFY), U1_INFINITE_LATTICE.md §1, §3.2, §5, §7 (+U1_VERIFY headings), BETA_FP_LEMMA43.md §0–§4, BETA_FP_H.md §0–§3 (+VERIFY §2–§5), BETA_FP_M.md §0, §3–§6, U3_AW.md §0–§1, §3.3–§4.7, §6 (+VERIFY grades), U3_REPAIRS_VERIFY grades, NUMERICS §5–§6 headers, PLAN.md numbers. Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). No numerics run. No existing file edited. Tags: [proved here], [cited], [argued], [hypothesis], [open].

Scope: L odd ≥ 3, centered blocks (the range of O5, Prop. E evenness, Theorem W, Theorem A3). The L = 2 numbers are used only as a sanity check.

## 1. Choice of form, and an exact formula for κ_k with a level-0 reference

### 1.1 Choice: constant abelian field, with the Wilson level j = 0 as reference
Two forms are available.
- Plane wave V_{a,P}, P → 0 (U1 (1.2), BETA_FP_LEMMA43 §4). No Nielsen–Olesen (N–O) window. But the expansion point is not critical (∇A(U_0) = O(aP²)), so Prop. 2.1 of BETA_FP_LEMMA43 holds only approximately, and the a¹ kernel misses an O(aP³) multiplier term (BETA_FP_H §1, LEMMA43_VERIFY §7). That defect is of the same order as the P² coefficient we want. The vertex bounds would also be two-momentum bounds with weights (|K| + P)^{4−m−|α|} and |α| ≤ 4, which no verified file provides.
- Constant field V_f (BETA_FP_H). Prop. 2.1 is exact (Fact 1.1, Consequence 1.2, CONFIRMED in BETA_FP_H_VERIFY §2). The coarse bracket depends on the level only through the one-momentum symbols σ_j^{(0,1,2)}. The derivative budget is small (σ^{(0)}: ≤ 2 or 3 derivatives; σ^{(1)}: ≤ 1; σ^{(2)}: 0), and §2 removes the one derivative on σ^{(1)}. The cost is two fixed-level inputs, (PI) and (M), that link the constant-field f²-coefficient to 𝒞(Λ) = S_k.

I choose the constant field. Reason: every uniform-in-k estimate needed below is then a statement about the symbols, and the symbol bounds are the verified ones (O5, Prop. B, Theorem W, Theorem A3). The constant-field costs (PI), (M) are needed only at each fixed level j, never uniformly in j (§1.3). They are the same inputs that BETA_FP_H Theorem 3.1′ already uses.

### 1.2 Reference = level 0, not σ_∞
BETA_FP_H measures δσ_j against the limit symbols σ_∞. A bound must not assume a limit. Replace σ_∞ by the level-0 data σ_0^{(m)}: the symbols of the Wilson Hessian itself (Λ = 1, Q̃ = identity). All the symbol facts used below hold at j = 0: Lemma M covers M = 1 (U3_AW §3.3), Theorem W and Theorem A3 hold for all j ≥ 0, Prop. B and O5 cover M = 1.

Definitions. Λ_j := L^j. For t ∈ [0, 1] put 𝒦_t(f) := Δ_0(f) + t(Δ_j(f) − Δ_0(f)) + D_cD_c^T, with canonical symbol 𝔨_t = Σ_m f^m 𝔨_{t,m}, b_{t,m} the Moyal inverse coefficients (U3_LEMMA51 (3.2)–(3.3)), and δσ_j^{(m)} := σ_j^{(m)} − σ_0^{(m)}. Define

  d_j := −(1/(2n_2)) ∫_0^1 dt ∫_{BZ} dK/(2π)⁴ tr[ b_{t,2}δσ_j^{(0)} + b_{t,1}δσ_j^{(1)} + b_{t,0}δσ_j^{(2)} ].   (1.1)

This is BETA_FP_H (2.2) with σ_∞ replaced by σ_0. The outer Moyal terms {b_{t,m}, δσ^{(n)}} and P_2(b_{t,0}, δσ^{(0)}) are absent: for the per-cell trace of a product of two covariant operators the phase is e^{i(ef/2)w∧(−w)} = 1 (BETA_FP_H_VERIFY §3, CONFIRMED). So (1.1) is the formal f²-coefficient of Γ_c(Λ_j; f) − Γ_c(1; f), divided by n_2.

### 1.3 The exact formula
Proposition 1.1 [proved here given (PI), (F), (M_j) below, and V1 of R2]. For every j ≥ 0,

  S_j = Σ_{i≤j} β_i(0) = 𝒞(Λ_j) = c j log L − d_j,   equivalently   κ_j = κ_W^F + d_j.   (1.2)

(M_j) [fixed-level input, same status as BETA_FP_M Cor. 4.5]: [Γ_c(Λ_j; f) − Γ_c(1; f) − (f = 0 value)]/(n_2 f²) → d_j as f → 0, at this fixed j.

Proof. 𝒞(1) = 0: at Λ = 1 the constraint is trivial and log Z_1 is a constant. By (PI) and BETA_FP_H (1.1), 𝒞(Λ_j) − 𝒞(1) = lim_{f→0}[Fine(Λ_j; f) − Fine(1; f)]/(n_2f²) − lim_{f→0}[Γ_c(Λ_j; f) − Γ_c(1; f)]/(n_2f²), with the f = 0 values subtracted. The first limit is c log Λ_j = c j log L by (F) and scaling (BETA_FP_H (3.1)). The second limit is d_j by (M_j). With U1 (5.2), S_j = c j log L + κ_W^F − κ_j, so κ_j = κ_W^F + d_j. ∎

Consistency checks. (a) Corollary 3.1 of LEMMA43 gives ρ(Λ) = κ_W^F + c log Λ − 𝒞(Λ) = κ_W^F + d_j, and ρ(1) = κ_W^F because at Λ = 1 the coarse piece is the Wilson vacuum polarization itself (LW (5.7)). Both agree with (1.2), and with κ_k = ρ(L^k) (BETA_FP_LEMMA43). (b) L = 2 numbers (outside the proved range, illustrative): d_1 = c log 2 − β_1 = 0.2575 − 0.630 = −0.3725, so κ_1 = 1.4868 − 0.3725 = 1.114, as in U1 §5. d_2 ≈ −0.44, d_3 ≈ −0.45 (PLAN numbers). L = 3: d_1 = 0.408 − 0.664 = −0.256.

Consequence. Theorem K (sup_k |κ_k| < ∞) is equivalent to sup_j |d_j| < ∞. The rest of this file bounds d_j uniformly in j. Fixed-level inputs (PI), (F), (M_j), V1 enter only through (1.2), level by level. No uniformity in j is asked of them.

Remark on (M_j) with a non-small difference. BETA_FP_M Lemma 4.2 (upper side) needs the relative size ε of V = 𝒦_1 − 𝒦_0 to be small. Here V = Δ_j − Δ_0 is bounded but not small. Fix: split [0, 1] into n equal t-steps. Each step has V/n, and the step pairs (𝒦_{t_i}, 𝒦_{t_{i+1}}) satisfy (S1) by convexity. Assume (S2), (S3) for each 𝒦_{t_i} (same status as in BETA_FP_M). With n ≥ C_3(‖𝒦‖ + 1)/c, each step meets the smallness condition, and the n limits add up to d_j. So (M_j) has exactly the status of BETA_FP_M Cor. 4.5: (S1)–(S3) [open], Prop. 4.4 [argued].
## 2. Uniform bound on d_j

### 2.1 Inputs (all uniform in j ≥ 0 and t ∈ [0, 1], real K in the coarse BZ)
Write 𝔨_{t,1} = σ_t^{(1)} + γ^{(1)}, 𝔨_{t,2} = σ_t^{(2)} + γ^{(2)}, with σ_t := (1 − t)σ_0 + tσ_j and γ^{(m)} the f^m Moyal coefficients of the coarse gauge-fixing term D_c ⋆ D_c^†. The γ^{(m)} are fixed smooth periodic functions; they do not depend on j (D_c is level-independent, BETA_FP_H §1).
- (E0) f⁰ data [cited, all CONFIRMED]. c_*|K̂|² ≤ 𝔨_{t,0} ≤ C_*|K̂|² (LEMMA43 Lemma 4.1 from Prop. B; it holds at both levels, hence for the convex combination). |∂^α𝔨_{t,0}| ≤ C|K|^{2−|α|} for |α| ≤ 2 (A0 strip bound with Cauchy, plus Lemma M near 0). |∂^αδσ_j^{(0)}| ≤ C|K|^{4−|α|} for |α| ≤ 1 (U3_AW §3.4(a) with i = 0: Lemma M at both levels gives the same degree-≤3 Taylor polynomial, so δσ^{(0)} vanishes to order 4; A0 and a Schwarz estimate give the uniform constant). This route does not use Δ_∞. Consequences: |∂^α b_{t,0}| ≤ C|K|^{−2−|α|}, |α| ≤ 2, using |K̂| ≥ (2/π)|K|.
- (E1) f¹ data [cited: Theorem A3 + Theorem W, CONFIRMED in U3_AW_VERIFY]. |σ_j^{(1)}(K) − τ_c| ≤ C_A|K|² for all j ≥ 0, real K. Hence |𝔨_{t,1}| ≤ Y_1 := |τ_c| + C_A·4π² + sup|γ^{(1)}| and |δσ_j^{(1)}| ≤ 2C_A|K|². τ_c cancels in δσ^{(1)} exactly, because σ_j^{(1)}(0) = σ_0^{(1)}(0) = τ_c. Only C⁰ is used. Derivatives of σ^{(1)} exist at each fixed j (Prop. A2: analytic on S(δ_*) at every level, CONFIRMED) but have no uniform bound; §2.2 never uses one.
- (E2) f² data [hypothesis (B2), §4]. sup_j sup_K |σ_j^{(2)}(K)| ≤ Y_2 < ∞. Then |𝔨_{t,2}| ≤ Y_2 + sup|γ^{(2)}| and |δσ_j^{(2)}| ≤ 2Y_2.

### 2.2 The one derivative on σ^{(1)}: integration by parts
From U3_LEMMA51 (3.2)–(3.3): b_1 = −b_0[𝔨_1b_0 − (ie/2){𝔨_0, b_0}] has no derivative of 𝔨_1. b_2 = −b_0[𝔨_1b_1 + 𝔨_2b_0 − (ie/2)({𝔨_0, b_1} + {𝔨_1, b_0}) − (e²/8)P_2(𝔨_0, b_0)] contains ∂𝔨_1 through {𝔨_1, b_0} and through ∂b_1 ∋ −b_0(∂𝔨_1)b_0 inside {𝔨_0, b_1}. In both places ∂𝔨_1 enters linearly, multiplied only by f⁰ data. Split b_{t,2} = B^{(a)} + B^{(b)}, with B^{(b)} the part linear in ∂𝔨_{t,1}. By cyclicity of the trace,

  tr[B^{(b)}δσ^{(0)}] = Σ_{ν=0,1} tr[Y_ν ∂_ν𝔨_{t,1}],
  Y_0 = (ie/2)[b_0δσ^{(0)}b_0(∂_1𝔨_0)b_0 − b_0(∂_1𝔨_0)b_0δσ^{(0)}b_0],  Y_1 = −(Y_0 with ∂_1 → ∂_0),   (2.1)

where I used ∂b_0 = −b_0(∂𝔨_0)b_0 and wrote b_0 = b_{t,0}, 𝔨_0 = 𝔨_{t,0}. (The overall signs depend on the Moyal sign convention; only sizes matter.) By (E0): |Y_ν| ≤ C|K|^{−2}·|K|⁴·|K|^{−2}·|K|·|K|^{−2} = C|K|^{−1} and |∂_νY_ν| ≤ C|K|^{−2}. Y_ν contains no f¹ or f² data.

Lemma 2.1 [proved here]. ∫_{BZ} tr[Y_ν∂_ν𝔨_{t,1}] dK = −∫_{BZ} tr[(∂_νY_ν)𝔨_{t,1}] dK, and so |∫ tr[B^{(b)}δσ^{(0)}]| ≤ C·Y_1·I_2, I_2 := ∫_{BZ}|K|^{−2} d⁴K/(2π)⁴ < ∞.
Proof. At fixed j, 𝔨_{t,1} is analytic (Prop. A2), and Y_ν is smooth on BZ \ {0}. Integrate by parts on BZ \ B_r. Outer boundary: in the midpoint trivialization a shift K_μ → K_μ + 2π conjugates every symbol by the same constant sign matrix U_μ = diag(±1) (the factor e^{−i(K_α − K_β)/2}), so the trace of any product is periodic and the opposite faces cancel. Inner boundary: |∮_{|K|=r} tr[Y_ν𝔨_1]n_ν dS| ≤ C r^{−1}·Y_1·2π²r³ → 0. Both integrals converge absolutely (|Y||∂𝔨_1| is integrable at fixed j; |∂Y||𝔨_1| ≤ CY_1|K|^{−2}). ∎

So the uniform bound needs σ^{(1)} only in C⁰. This removes the one place where the derivative budget of U3_AW §4.3 touched σ^{(1)}.

### 2.3 The remaining terms
- B^{(a)}δσ^{(0)}. Term by term (BETA_FP_H_VERIFY §3 count, with C⁰ data only): b_0𝔨_1b_1 ≤ CY_1(1 + Y_1)|K|^{−6}; b_0𝔨_2b_0 ≤ C(Y_2 + 1)|K|^{−4}; b_0·[non-∂𝔨_1 part of {𝔨_0, b_1}] ≤ C(1 + Y_1)|K|^{−6} (it has ∂b_0𝔨_1b_0 and ∂(b_0{𝔨_0, b_0}), f⁰ derivatives of order ≤ 2); b_0P_2(𝔨_0, b_0) ≤ C|K|^{−6}. With |δσ^{(0)}| ≤ C|K|⁴: integrand ≤ C(1 + Y_1² + Y_2)|K|^{−2}.
- b_{t,1}δσ^{(1)}. |b_{t,1}| ≤ C(1 + Y_1)|K|^{−4} and |δσ^{(1)}| ≤ 2C_A|K|²: integrand ≤ C(1 + Y_1)C_A|K|^{−2}.
- b_{t,0}δσ^{(2)}. ≤ C|K|^{−2}·2Y_2.

Proposition 2.2 [proved here given (E0), (E1), (E2)]. For all j ≥ 0,

  |d_j| ≤ κ_* := (C(L)/n_2)·(1 + Y_1² + C_A(1 + Y_1) + Y_2)·I_2,   (2.2)

with C(L) built from c_*, C_*, the O5/A0 constants, and Lemma M; no constant depends on j. All t-dependence is through convex combinations, so every bound is uniform in t ∈ [0, 1].
Proof. Sum §2.2 and §2.3, integrate over t ∈ [0, 1]. ∎

Remark 2.3 (weaker form of (B2) suffices). σ^{(2)} enters (1.1) only undifferentiated, through b_0δσ^{(2)} (weight |K|^{−2}) and b_0𝔨_2b_0δσ^{(0)} (weight |K|⁰ ≤ 4π²|K|^{−2}). So (2.2) holds with Y_2 replaced by Y_2^w := sup_j ∫_{BZ}|K|^{−2}|σ_j^{(2)}(K)| d⁴K/(2π)⁴ / I_2. Call this (B2w).
## 3. Infrared: where the log sits, and why the finite part is bounded

### 3.1 The undifferenced coarse piece has a log, with a level-independent coefficient
Take one level j alone. The formal f²-integrand of Γ_c(Λ_j; f) per momentum, G_j(K), has the terms −½tr[b_0𝔨_2], +¼tr[b_0𝔨_1b_0𝔨_1], and the Moyal terms with derivatives of 𝔨_0, b_0 (the f² coefficient of −½ log det 𝒦 plus the fixed ghost). Give K weight 1. Then:
- tr[b_0𝔨_2] has degree −2 (|K|^{−2}·𝔨_2(0)). It is integrable and gives no log.
- The degree −4 part H_{−4} of G_j is built from three things only: the degree-2 part of 𝔨_0, which is |K|²1 in the Feynman form at every level (Lemma M, U3_AW §3.3: Maxwell exactly, plus the level-independent gauge-fixing term); the degree-0 part of 𝔨_1, which is τ_c + γ^{(1)}(0) at every level (Theorem W); and the fixed ghost.
So H_{−4} is the same homogeneous function for every j ≥ 0 [proved here, from Lemma M and Theorem W]. Its sphere average ℓ := (2π)^{−4}∫_{S³}H_{−4} dΩ is level-independent. At finite f the integral ∫ G_j is cut off at |K| ~ |f|^{1/2}, so ℓ is the coefficient of ½ ln(1/|f|) in [f²]Γ_c(Λ_j; f).

This is the answer to the question in the task. Yes: the τ_c part, through ¼tr[b_0τ_cb_0τ_c] ~ |τ_c|²|K|^{−4}, gives a log-divergent integrand at every level. That log is the coarse piece's compensating ln: at j = 0 the coarse piece is the Wilson one-loop itself, whose log coefficient is c_2 (LW (5.7); (F)), so ℓ/(2n_2)-normalized equals c_2 at j = 0, hence at every j. This upgrades BETA_FP_H Prop. 3.2(b)–(c) (s_j ∈ {1, s_*}, argued) to a direct statement: with Theorem W, s_j = 1, and the degree −4 integrand is the j = 0 one. The level-independence of H_{−4} is [proved here]. Reading ∫H_{−4} as the f² ln(1/|f|) coefficient at finite f is a fixed-level asymptotic statement of (M) type [argued]. Theorem K does not use that reading: §3.2 uses only the exact cancellation of H_{−4} in the difference.

### 3.2 The finite part
Define the finite part of the level-j coarse piece by subtracting the level-0 coarse piece, as in (1.1). The degree −4 parts cancel identically, because H_{−4} is level-independent. What remains is the integrand of (1.1). By §2 it is bounded by C|K|^{−2}, uniformly in j. In d = 4, ∫_{|K|<1}|K|^{−a}d⁴K < ∞ iff a < 4, so the margin is two powers of |K|. Hence the finite part is d_j, it is absolutely convergent, and |d_j| ≤ κ_*.

Power count check against BETA_FP_H (2.3b): F⁰ needs |δσ^{(0)}| ≲ |K|^{2+s}, we have |K|⁴; F¹ needs |K|^{s}, we have |K|² (A3, τ_c cancels); F² needs |K|^{−2+s}, we have |K|⁰ (B2). So the weights here are the natural ones of BETA_FP_H (2.4) with ε_j replaced by a j-independent constant. Convergence would need ε_j → 0; a bound needs only sup_j ε_j < ∞. That is the whole difference between Lemma 4.3 and Theorem K.

The fine piece carries c log Λ_j and does not see the constraint (LEMMA43 §3). Its finite constant is κ_W^F, the same for every j. So κ_j = κ_W^F + d_j is "κ after the cancellation": the fine log and the coarse log cancel at each fixed j, the j-dependence of the logs is exactly c j log L, and the remainder is d_j.

## 4. Status of (B2)

(B2): sup_j sup_K |σ_j^{(2)}(K)| < ∞ (or the weaker (B2w) of Remark 2.3).

What is proved here.
- (B2) at K = 0 [proved here]. At fixed j, σ_j^{(1)} − τ_c is analytic and even, so it equals Q_j(K) + O_j(|K|⁴) with Q_j quadratic. Theorem A3 gives |Q_j(K)| ≤ C_A|K|² + O_j(|K|⁴); scale K → εK and let ε → 0: |Q_j(K)| ≤ C_A|K|². By polarization every second derivative of σ_j^{(1)} at 0 is ≤ 4C_A, uniformly in j. The slaving identity (W-2) (U3_AW §3.4(b)) gives σ_j^{(2)}(0)e_ν = (ie/2)[∂_ν∂_0σ_j^{(1)}(0)e_1 − ∂_ν∂_1σ_j^{(1)}(0)e_0] − (e²/16)(δ_{ν0}e_0 + δ_{ν1}e_1). Hence sup_j |σ_j^{(2)}(0)| ≤ C(|e|C_A + e²).
- (B2) at each fixed j [cited: Prop. A2]: σ_j^{(2)} is analytic on S(δ_*), hence bounded. The content of (B2) is uniformity in j.

Why it does not follow from the one-step recursion by the Lemma A4 mechanism alone. The recursion is (U3_AW (1.2)) σ_j^{(2)} = L^{−2}𝒜_jσ_{j−1}^{(2)} + Q_j[σ_{j−1}^{(1)}] + g_j^{(2)}.
- (a) Q_j contains L^{−3}∂_Kσ_{j−1}^{(1)}. Theorem A3 is C⁰ only. The integration by parts of §2.2 does not help, because the recursion is pointwise in K, not under an integral.
- (b) Lemma A4 needs ±s ≤ NΔ_{j−1}, which forces s(k)d(k) = 0 and s = O(|k|²) (A4 Remark (a)). σ^{(2)} has σ^{(2)}(0) ≠ 0 in general, so A4 does not apply. The modified form norm ±s ≤ N(Δ_{j−1} + 1) gives, by H^†(⊕Δ_{j−1})H = Δ_j and H^†H ≤ h², ±L^{−2}𝒜_js ≤ (h²/L⁴)N(Δ_j + 1) [proved here]. So this norm contracts iff h² < L⁴, h := sup_{j,K}‖H_j(K)‖. Unlike A3, the crude constant h multiplies N_{j−1}; it does not stay in the source. h ≥ L is known (H_j(0) = L e_{l=0}); h < L² is not.

Proposition 4.1 [proved here, conditional]. If h² < L⁴ and sup_j sup_K |∂_Kσ_j^{(1)}| < ∞, then (B2) holds.
Proof. Let N_j be the least N with ±σ_j^{(2)} ≤ N(Δ_j + 1). By (b), N_j ≤ (h²/L⁴)N_{j−1} + Z_2, where Z_2 bounds ±(Q_j[σ_{j−1}^{(1)}] + g_j^{(2)}) ≤ Z_2(Δ_j + 1): g_j^{(2)} is f⁰ data with the fixed vertices (uniform, A0 + Lemma A1), and Q_j is a polynomial of degree ≤ 2 in L^{−2}σ^{(1)} (bounded by A3) and L^{−3}∂σ^{(1)} (bounded by assumption). N_0 < ∞ (Wilson data). So N_j ≤ N_0 + Z_2/(1 − h²/L⁴), and |σ_j^{(2)}| ≤ N_j(‖Δ_j‖ + 1) ≤ N_j(16/c_0 + 1). ∎

Known sufficient condition [cited, U3_AW Reduction R-A]: (HS) h² < L²(L − 1) implies strip bounds for σ^{(1)}, σ^{(2)}, hence (B2) and the C¹ bound on σ^{(1)}. Since L²(L − 1) < L⁴, (HS) also gives h² < L⁴. Or the n-step form (H″). Status of (HS), (H″): [open]; decisive numerical check O1 of U3_AW (max_K ‖H_j(K)‖/L at L = 3, j = 1, 2, 3, ∞; (HS) needs < 1.41; the Prop. 4.1 route needs < 3 plus the C¹ bound).

Conclusion: (B2) is stated as the single uniform hypothesis. It is not derived here.
## 5. Theorem K and Theorem 2 (weak form)

### 5.1 Theorem K
Theorem K [proved here given (B2) (or (B2w)) and the fixed-level inputs (PI), (F), (M_j), V1, (G2); L odd ≥ 3]. sup_k |κ_k| ≤ |κ_W^F| + κ_* < ∞, with κ_* of (2.2). Equivalently |S_k − c k log L| ≤ κ_* for all k ≥ 0 (U1′(w) of U1 §1.3, with R = κ_*).
Proof. (1.2) gives κ_k = κ_W^F + d_k and S_k − c k log L = −d_k. Prop. 2.2 gives |d_k| ≤ κ_*. ∎
This is Lemma U2′ of U1 §7, proved for the constant-field form of the coarse piece, with hypotheses (a)–(d) of U2′ replaced by (E0), (E1), (B2). The gap (G1) of U1 §7 (Balaban's gauge vs Feynman form) does not arise: Prop. 2.1 of BETA_FP_LEMMA43 is gauge-free in the sense that the coarse kernel Δ_j(f) is a stationary value and does not depend on the fine gauge fixing.

### 5.2 Tail sums
Put b := c log L > 0 (c = 11N²/(12π²)). For 0 ≤ k < K,

  T_0(k, K) := Σ_{i=k+1}^{K} β_i(0) = S_K − S_k = b(K − k) − (d_K − d_k) ∈ [b(K − k) − 2κ_*, b(K − k) + 2κ_*].   (5.1)

This is the task's statement with κ_K − κ_k = d_K − d_k. No convergence of β_i(0) is used, and no index J.

### 5.3 Lemma D″ (tail-sum form of Lemma D′)
Hypotheses. (i) of LEMMA_DPRIME §1: β_{k+1} ∈ C¹([0, γ_0]), |β_{k+1}(g) − β_{k+1}(0)| ≤ C_1g, C_1 independent of k, K (Balaban's (H0), Lemma E form), and (5.1). Hypotheses (ii), (iii) of Lemma D′ are not used.
Constants. γ := min(γ_0, γ_Bal, b/(4C_1)); D := 2κ_*; β := 3b/4; B′ := 5b/4 + 2κ_*; D′ := 2κ_*; g_1 := (1/γ² + D)^{−1/2}.
Conclusions.
- (a″) Along any couplings g_0, …, g_{K−1} ∈ [0, γ]: T(k, K) := Σ_{i=k+1}^{K} β_i(g_{i−1}) ∈ [β(K − k) − D′, (5b/4)(K − k) + 2κ_*] ⊂ [−D, B′(K − k)].
- (b) For every g ∈ ]0, g_1] and every K ≥ 1 there is g_0 ∈ ]0, γ] with g_k ∈ ]0, γ] for 0 ≤ k ≤ K and g_K = g.
- (c′) Pairwise, along every trajectory from (b), for 0 ≤ m ≤ n ≤ K: u_n + β(n − m) − D′ ≤ u_m ≤ u_n + B′(n − m), u_i := 1/g_i². The upper side has no additive constant.
Proof. (a″): |T − T_0| ≤ Σ C_1g_{i−1} ≤ C_1γ(K − k) ≤ (b/4)(K − k); add (5.1). The inclusion uses β(K − k) ≥ 0 and 2κ_* ≤ 2κ_*(K − k) for K − k ≥ 1. (b): Steps 2–5 of LEMMA_DPRIME §2 use only the continuity in (i) and the bracket (2.1) there, T̃ ∈ [−D, B′(K − k)] for every clamped trajectory. Clamped couplings lie in ]0, γ], so (a″) supplies that bracket. The IVT and the clamp-inactivity step (ũ_k ≥ t − D ≥ 1/γ² when g ≤ g_1) go through word for word. (c′): u_m − u_n = T(m, n) on the solution; apply (a″) to the window m+1, …, n (the window argument does not depend on K). ∎
Remark. (a″) needs (i) only as a Lipschitz bound in g; the C¹ part is used for continuity in Step 2. History-dependent β (Balaban CMP 109 p. 298): same as LEMMA_DPRIME Remark 3; the nested-interval variant is still not written (LEMMA_DPRIME ledger L5, inherited).

### 5.4 Theorem 2, weak form
Theorem 2w [proved here given Theorem K's inputs, (i), and Balaban's published proofs]. For L odd ≥ 3, every g ∈ ]0, g_1] and every K, the bare coupling g_0(K, g) of (b) gives a sequence g_0, …, g_K in ]0, γ] ⊂ ]0, γ_Bal], with the two-sided pairwise bound (c′):

  1/g_n² + (3/4)c·log L^{n−m} − 2κ_* ≤ 1/g_m² ≤ 1/g_n² + ((5/4)c + 2κ_*/log L)·log L^{n−m}.

So the hypothesis of Balaban's Theorem 1 (CMP 122 II p. 355: effective couplings in ]0, γ]) holds, and the pairwise forms that its proof uses (LEMMA_DPRIME_SWEEP §7: upper side with no constant for items 1, 7, 10, 12, 17; lower side with additive D′ for items 2, 3, 5, 11, 13, 15, 16, 18) hold with D′ = 2κ_*. The single smallness condition of the sweep becomes γ^{−2} ≥ c_sw·2κ_* (c_sw = max(2, 1/(1 − (1 + β_0)^{−2})), β_0 fixed first), plus the D-free conditions γ ≤ γ_*.
Not used: (A) in the strip/C³ form, U3 Lemma 5.1 (convergence of the symbols), convergence of β_i(0), the index J, (N), any rate. Literal (0.31) holds for n − m ≥ 8κ_*/b (lower side (b/2)(n − m)); it is not needed (sweep §7).
## 6. Ledger

Proved here.
- K1. Prop. 1.1: with the Wilson level j = 0 as reference, S_j = c j log L − d_j and κ_j = κ_W^F + d_j exactly, d_j the per-momentum integral (1.1). No limit symbols σ_∞ are used. Checks: ρ(1) = κ_W^F (LW), L = 2 value κ_1 = 1.114 reproduced.
- K2. Lemma 2.1: the only K-derivative of σ^{(1)} in d_j enters linearly with f⁰ coefficients, and integration by parts moves it onto f⁰ data. So the uniform bound needs σ^{(1)} in C⁰ only, which is what Theorem A3 gives.
- K3. Prop. 2.2: |d_j| ≤ κ_*, uniform in j, from (E0), (E1), (B2). Integrand ≤ C|K|^{−2}, two powers of IR margin in d = 4.
- K4. §3: the degree −4 part of the coarse f² integrand is the same at every level (Lemma M + Theorem W). The τ_c part is log-divergent at each level; it cancels exactly in the level difference, so the finite part is well defined and bounded. Theorem K needs only this cancellation, not the log asymptotics at finite f.
- K5. §4: sup_j |σ_j^{(2)}(0)| < ∞ (A3 + polarization + (W-2)). Prop. 4.1: (B2) ⇐ [sup‖H_j‖ < L² and a uniform C¹ bound on σ^{(1)}].
- K6. Theorem K, Lemma D″, Theorem 2w (§5). Lemma D′ is used through its Steps 2–5 only; its (ii), (iii), and J are not needed.

Cited, verified in project files (load-bearing).
- O5/A0 strip bounds for Δ_M, Prop. B (c_0 = (2/π)^{12}, C_1 ≤ 1363), LEMMA43 Lemma 4.1 two-sided bound: U3_REPAIRS_VERIFY, U3_AW_VERIFY (CONFIRMED, existential constants).
- Lemma M, Theorem W (σ_j^{(1)}(0) = τ_c, all j ≥ 0), Theorem A3 (|σ_j^{(1)} − τ_c| ≤ C_A|K|²), Prop. A2 (analytic at each level), Prop. E (evenness), §3.4(a), (W-2): U3_AW_VERIFY (CONFIRMED; d = 2 numerics for W and evenness).
- Prop. 2.1 of BETA_FP_LEMMA43, exact at V_f (BETA_FP_H Consequence 1.2): BETA_FP_H_VERIFY §2 CONFIRMED. Outer Moyal terms vanish in the per-cell trace: BETA_FP_H_VERIFY §3.
- (F) log coefficient c_2 at constant field: BETA_FP_H_VERIFY §4, checked against Savvidy arXiv:1910.00654.
- Lemma D′ Steps 2–5: LEMMA_DPRIME_VERIFY (CONFIRMED). Pairwise needs of Theorem 1's proof: LEMMA_DPRIME_SWEEP §7 (not separately verified by me).

The single uniform hypothesis.
- (B2): sup_j sup_K |σ_j^{(2)}(K)| < ∞, or the weaker (B2w): sup_j ∫|K|^{−2}|σ_j^{(2)}| < ∞. [hypothesis]. Sufficient: (HS) = U3_AW (H′) (sup‖H_j‖ < L√(L − 1)), or (H″), or Prop. 4.1's pair. Decisive cheap test: U3_AW O1 (max_K ‖H_j(K)‖/L at L = 3); a direct test is a per-momentum σ_j^{(2)} scan at j = 1, 2, 3, which no existing code does (U3_AW_VERIFY §7: no d = 4 per-momentum f-code).

Fixed-level inputs (needed at each j separately; no uniformity in j asked).
- (PI) probe independence: plane-wave p² coefficient = constant-field f² coefficient [argued, BETA_FP_H §3.1; per-cell limit for the linear potential not written].
- (M_j) the formal f² coefficient d_j equals the true one at fixed j [same status as BETA_FP_M Cor. 4.5: (S1)–(S3) open on the lattice, Prop. 4.4 argued]. The t-subdivision of §1.3 removes the small-ε requirement of BETA_FP_M Lemma 4.2.
- V1 of R2 (Maxwell coefficient of the per-step determinant = β_{j+1}(0)) [open, plausible], and (G2) per-cell infinite-volume densities [formal]. Both are inherited by every result in the chain.
- For Theorem 2w also: (i) Lipschitz-in-g bound of the increments (Balaban's (H0)), history version L5 not written; Balaban's published proofs of Theorem 1 [cited].

What this file does not do.
- It does not prove convergence of κ_k or of β_k(0); nothing here needs it.
- It does not check the per-momentum formulas numerically. Cheap tests: (1) d_1 from (1.1) with the existing one-step symbols at L = 3 against c log 3 − β_1 = −0.256; (2) d_2, d_3 stay bounded.
- Constants are existential (C_A, the O5 constants). κ_* is not evaluated; numerically |d_k| ≈ 0.37–0.45 at L = 2 for k ≤ 3 (outside the odd-L scope).

Comparison with the previous route. Theorem 3.1′ of BETA_FP_H/BETA_FP_M gives 𝒞(Λ) = c log Λ + C_∞ + O(ε_j) and needs (H′) = U3 Lemma 5.1 (convergence of σ_j^{(1)}, σ_j^{(2)} in C², which rests on (A) and (N)-type questions). Theorem K needs only a C⁰ bound on σ^{(2)}, and Theorem 2w needs only Theorem K. The fixed-level inputs are the same in both routes.

Status: complete (2026-10-27). Unverified; an independent check should re-derive Lemma 2.1 (the linearity of ∂𝔨_1 in b_2 and the boundary terms) and the level-independence of H_{−4} in §3.1.
