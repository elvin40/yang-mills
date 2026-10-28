# SOURCES_T2_LLL — (L-LL): the scaled low-energy limit of the level-0 fine bracket

Date 2026-10-28. Target: TRUST_LEDGER row B3, the open item (L-LL) of SOURCES_T2_F_STEPB §2.5 (graded UNSUPPORTED as a theorem in SOURCES_T2_F_STEPB_VERIFY §5.4).
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md §2 not opened.
Read: SOURCES_T2_F_STEPB.md (all) + VERIFY (§4, §5.4, §8); SOURCES_T2_GAPRIME2.md (all) + VERIFY; SOURCES_T2_S123.md §5 (fibre decomposition, Lemmas 5.1, 5.2, 5.7, 5.8, Prop. 5.3); BETA_FP_H.md §0–§1; grep of SOURCES_T2_MJ_REST, U3_LEMMA51 (N–O, Moyal), TRUST_LEDGER row B3; numerics/t2_gaprime2_check.py (operator builder reused).
Ledger tags: [P] proved here; [V] read verbatim in a project file; [I] imported/cited, not checked here; [R] reduction; [N] numerics.
No literature theorem on Harper bands (Helffer–Sjöstrand) is used. The proof route is a proper-time (heat-trace) representation, which needs only the trace of e^{−tX}, not band-by-band semiclassics.

## 1. Statement

1.1 Units [V + I]. Fine lattice, unit spacing. Background: constant abelian field, colour σ_3, plaquette angle φ in the (0,1) plane (GAPRIME2 §1, BETA_FP_H (1.1)). The charged fields carry charge e = 2, so the charged holonomy per plaquette is α := 2|φ| = |eφ| (GAPRIME2 notation). SOURCES_T2_F_STEPB writes the Landau levels as (2n + 1 ± 2)|φ| + k_⊥²; that formula reads correctly with |φ| replaced by α. Below everything is in α. Only existence of the limit matters, so this convention choice does not change (L-LL).

1.2 The objects [V: STEPB §2]. A_φ = charged fine Feynman operator (Wilson Hessian, normalization (F1), + D_φD_φ^T) on charged link fields; 𝒢_φ = charged ghost D_φ^TD_φ. Per fine cell, for m² ≥ 0,
  W(φ; m²) := −½ log|det|(A_φ + m²) + log|det|(𝒢_φ + m²) − (same at φ = 0),
read as per-cell densities (trace per unit volume, τ). log|det| means τ log|·| (the Nielsen–Olesen band is negative).
  H_φ(μ) := φ^{−2}[W(φ; 0) − W(φ; μ|φ|)].
(L-LL): for each fixed μ ≥ μ_0 there is h(μ) ∈ R with H_φ(μ) → h(μ) as φ → 0 (φ real, φ ≠ 0, no rationality condition).
Use in STEPB §2.6: only lim [H_φ(μ) − H_{λφ}(μ)] = 0 for fixed λ = L^{−2k}; existence of the limit gives this.

1.3 What "per cell" means. τ is the trace per site of the magnetic (twisted) algebra: τ(X) = tr_{C^r} X(x, x) for a magnetically covariant operator, independent of x. All spectral statements are about the per-site integrated density of states n_X(λ) := τ 1_{(−∞, λ]}(X). τ is a finite faithful normal trace, so τ(XY) = τ(YX) for bounded X, Y and counting monotonicity holds (X ≤ Y as forms ⇒ n_Y ≤ n_X) [I: standard, used as in S123 Prop. 5.3 / BETA_FP_M Lemma 4.1].

## 2. Structure: reduction to the 2D operator A′

2.1 Fibres [V: S123 §5.1 fibre decomposition and Lemma 5.1; midpoint [I] upgraded to [P] in GAPRIME2_VERIFY §1]. The field lies in the (0,1) plane, so x_2, x_3 translations commute with everything. Partial Fourier transform in (x_2, x_3) gives fibres over k_⊥ ∈ T². At the Wilson level (the fine bracket has no averaging: Λ = 1, Q̃ = id) the fibre is exactly separable:
  A_φ(k_⊥) = A(α) + κ,   κ := |k̂_⊥|² = 4 sin²(K_2/2) + 4 sin²(K_3/2),   A(α) = A′_α ⊕ (𝔏_α ⊗ 1_2),
with A′_α on the (b_0, b_1) components (GAPRIME2 Lemma 1.1) and 𝔏_α := 𝔏^{01}_f the 2D magnetic Laplacian on (b_2, b_3). The ghost fibre is 𝒢_φ(k_⊥) = 𝔏_α + κ (charged scalar, D_φ^TD_φ = Σ_μ ∇_μ^*∇_μ).

2.2 Lemma 2.1 (ghost cancellation) [P given 2.1]. Write τ_2 for the 2D per-site trace and dF_⊥(κ) for the distribution of κ under dk_⊥/(2π)² (density ρ_⊥(κ) = (2π²)^{−1}K(1 − (κ − 4)²/16), K = complete elliptic integral with parameter m; ρ_⊥(0+) = 1/(4π)). Then for every m² ≥ 0
  W(φ; m²) = −∫ dF_⊥(κ) [τ_2 log|A′_α + κ + m²| − τ_2 log(𝔏_0 ⊗ 1_2 + κ + m²)].
Proof. Real charged fields (B¹, B²) = one complex field b; the real operator has the complex spectrum twice. So −½ log|det|_R(A_φ + m²) = −τ_{C⁴} log|A + κ + m²| integrated over k_⊥, and log det_R(𝒢 + m²) = 2τ_C log(𝔏 + κ + m²). The (b_2, b_3) block contributes −2τ log(𝔏_α + κ + m²); the ghost contributes +2τ log(𝔏_α + κ + m²). They cancel. At α = 0, A′_0 = 𝔏_0 ⊗ 1_2 ((F1), GAPRIME2_VERIFY §1). ∎
Remark. The cancellation needs the ghost and the (b_2, b_3) block to carry the same mass m² in the same normalization. If a normalization factor differs, the two scalar pieces survive; they are covered by Theorem S below (§3), so (L-LL) is unaffected.

2.3 Consequence. With u_m(x) := log|x| − log|x + m²| and m² := μ|φ| = μα/2,
  H_φ(μ) = −φ^{−2} ∫ dF_⊥(κ) [τ_2 u_m(A′_α + κ) − τ_2 u_m(𝔏_0 ⊗ 1_2 + κ)].   (2.1)
So (L-LL) is a statement about the 2D operator A′_α alone, integrated against the free transverse density.

2.4 The low-energy window and the scaling [P, heuristic made exact in §3–§4]. In scaled units λ = αe, κ = αε: (a) the per-site Landau degeneracy is α/(2π) per level; (b) dF_⊥ = ρ_⊥(κ)dκ ≈ α dε/(4π) near κ = 0; (c) per level, u_m(α(e + ε)) = log|e + ε| − log|e + ε + μ/2| (φ-independent). So the window carries α·α = O(α²) = O(φ²) per cell, and H_φ(μ) = O(1). The continuum spectrum of A′ (GAPRIME2 §5 "Sharpness", S123 §5): A′ ≅ (𝔏 − 2α) ⊕ (𝔏 + 2α) + R, levels e ∈ {−1, 1, 3, 5, …} ∪ {3, 5, 7, …}, each of weight 1/(2π). The level e = −1 is the Nielsen–Olesen band; in 4D it crosses zero at κ = α (ε = 1) with flat density ρ_⊥ ≈ 1/(4π), so log|e + ε| is integrable there.
The obstacle to a naive level-by-level argument: u_m(x) ≈ −m²/x at large x, and the 4D free density grows, so every finite set of levels gives a log(1/α)-divergent piece; the logs cancel only between all levels and the free subtraction. Therefore the proof below does not sum levels. It uses the proper-time form for the positive part and isolates the N–O band exactly.

## 3. Scalar part: the 2D magnetic Laplacian 𝔏_α

Notation. T_α(t) := τ_2 e^{−t𝔏_α}, 𝔏_α = Σ_{μ=0,1}(2 − T_μ − T_μ^*), Landau gauge (T_0ψ)(x) = e^{iαx_1}ψ(x + e_0) (GAPRIME2 §1). p_t(x) := e^{−2t}I_x(2t), the 1D continuous-time walk kernel (jumps ±1 at rate 1 each); p_t(x) ≤ p_t(0) ≤ C(1 + t)^{−1/2}, and √(4πt)p_t(0) → 1 [standard Bessel asymptotics]. ∫dF_⊥(κ)e^{−tκ} = p_t(0)² exactly (κ = h_2 + h_3 symbol).

3.1 Walk representation [P]. −𝔏_α = Σ_μ(T_μ + T_μ^* − 2) is the generator of the rate-1-per-direction walk X = (x_0, x_1) on Z² with a phase e^{±iαx_1} on each jump ±e_0. Hence
  e^{−t𝔏_α}(y, 0) = E_y[e^{iαA_t}; X_t = 0],  A_t := Σ_i ε_i x_1(s_i),
the sum over the jumps of x_0 (times s_i, signs ε_i). For a closed path A_t is the algebraic enclosed area. Diamagnetic bound: |e^{−t𝔏_α}(y, 0)| ≤ e^{−t𝔏_0}(y, 0) = p_t(y_0)p_t(y_1). The coordinates x_0, x_1 are independent 1D walks.

3.2 Lemma S1 (second moment of the lattice Lévy area) [P]. For r ≥ 0 there is C_r with
  E_y[A_t²; X_t = 0] ≤ C_r t   for all t ≥ 0, |y|_∞ ≤ r.
Consequently |T_α(t) − T_0(t)| ≤ (α²/2)E_0[A_t²; X_t = 0] ≤ C α² t (T_α is real; |cos w − 1| ≤ w²/2).
Proof. Condition on the x_1-path g. The x_0-jumps are a marked Poisson process (rate 1 per sign) independent of g. Insert 1{Σε_i = −y_0} = ∫dθ/2π e^{iθ(Σε_i + y_0)} and use the Poisson moment formulas with Φ(θ) := e^{−2t(1 − cos θ)}:
  E[(Σ_iε_ig(s_i))² e^{iθΣε_i}] = Φ(θ)[2 cos θ ∫_0^t g² ds − 4 sin²θ (∫_0^t g ds)²].
So E_y[A_t²; x_0(t) = 0 | g] ≤ ∫dθ/2π Φ(θ)[2∫g² + 4 sin²θ(∫g)²], with ∫Φ dθ/2π = p_t(0) ≤ C(1+t)^{−1/2} and ∫sin²θ Φ dθ/2π ≤ C(1+t)^{−3/2}. Now take E over g (start y_1, end 0). Chapman–Kolmogorov and sup_x p_s(x) ≤ C(1+s)^{−1/2} give Σ_x x²p_s(x − y_1)p_{t−s}(x) ≤ C_r(1+t)^{1/2} for all s ∈ [0, t] (bound by sup p_{t−s}·(2s + y_1²) for s ≤ t/2 and by sup p_s·2(t − s) for s > t/2). Hence E[∫g²; g(t) = 0] ≤ C_r t(1+t)^{1/2}, and with |xx′| ≤ (x² + x′²)/2, E[(∫g)²; g(t) = 0] ≤ C_r t²(1+t)^{1/2}. Total ≤ C_r t + C_r t²/(1+t) ≤ 2C_r t. ∎
Remark. STEPB §3.2 measured the α² heat-trace coefficient c(t) ≈ −(t/24π)(1 − 0.376/t): linear in t, as Lemma S1 says. The linear-in-t bound is sharp and is exactly what the domination in §3.4 needs (a bound t^{1+δ} would fail).

3.3 Lemma S2 (scaled heat trace → Mehler) [P rel. one standard probabilistic fact, (IP) below]. For every τ > 0, as α → 0:
  α^{−1}T_α(τ/α) → 1/(4π sinh τ).
Proof. (a) Harper/Feynman–Kac reduction [P]. Given g, the Poisson exponential formula gives E_0[e^{iαΣε_ig(s_i)}; x_0(t) = 0 | g] = ∫_{−π}^{π}dθ/2π exp(−2∫_0^t(1 − cos(θ + αg(s)))ds). So
  T_α(t) = p_t(0)·∫dθ/2π E^{br}_t[exp(−2∫_0^t(1 − cos(θ + αx_1(s)))ds)],
E^{br}_t = the x_1-walk bridge from 0 to 0 in time t. (This is the Bloch fibre of Harper's operator h_1 + 2 − 2cos(θ + αx_1).)
(b) Scaling. t = τ/α, θ = √α ϑ, y(u) := √α x_1(u/α). The exponent becomes ∫_0^τ V_α(ϑ + y(u))du with V_α(z) := (2/α)(1 − cos(√α z)) → z² uniformly on compacts, V_α(z) ≥ c_0 z² for |√α z| ≤ 3π/2 (c_0 = 8/(9π²) ≈ 0.090, since 2(1 − cos w)/w² decreases on [0, 2π]). So α^{−1}T_α(τ/α) = α^{−1/2}p_{τ/α}(0)·∫_{|ϑ|≤π/√α}dϑ/2π E^{br}[e^{−∫V_α(ϑ+y)}], and α^{−1/2}p_{τ/α}(0) → (4πτ)^{−1/2}.
(c) Limit for fixed ϑ. (IP) [I, standard: invariance principle for random-walk bridges]: under E^{br}_{τ/α}, y converges in law in D[0, τ] to a Brownian bridge b with generator ∂_y² (variance 2u(τ − u)/τ). The functional exp(−∫_0^τ(ϑ + y)²du) is bounded and Skorokhod-continuous, and |e^{−∫V_α} − e^{−∫(ϑ+y)²}| ≤ Cατ sup|ϑ + y|⁴ → 0 on tight sets. So E^{br}[…] → M_τ(ϑ) := E[exp(−∫_0^τ(ϑ + b)²du)].
(d) Domination in ϑ, uniform in α [P]. If sup|y| ≤ |ϑ|/2 then |ϑ + y| ≥ |ϑ|/2 and |√α(ϑ + y)| ≤ 3π/2, so the integrand is ≤ e^{−c_0τϑ²/4}. Else sup|y| > |ϑ|/2. Bridge tail: split at t/2 and use P(sup_{[0,t/2]}|x_1| ≥ R, x_1(t) = 0) ≤ sup_x p_{t/2}(x)·P(sup_{[0,t/2]}|x_1| ≥ R) and p_t(0) ≥ c(1+t)^{−1/2}; with the exponential-martingale bound P(sup_{s≤t}|x_1(s)| ≥ R) ≤ 2e^{−R²/(4t)} for R ≤ 2t and the Poisson tail e^{−R} for R ≥ e²t, this gives P^{br}(sup|y| ≥ a) ≤ C(e^{−a²/(Cτ)} + e^{−a/√α}). Both bounds are integrable in ϑ uniformly in α.
(e) Mehler [P, computed; checked numerically in §6]. (4πτ)^{−1/2}M_τ(ϑ) = e^{−τH_ϑ}(0, 0), H_ϑ = −∂_y² + (y + ϑ)² (Feynman–Kac), = (2π sinh 2τ)^{−1/2} exp(−ϑ² tanh τ). ∫dϑ/2π of it = (2π)^{−1}(π/tanh τ)^{1/2}(2π sinh 2τ)^{−1/2} = 1/(4π sinh τ). ∎
Corollary S3 (scaled IDS → Landau staircase) [P rel. (IP); continuity theorem for Laplace transforms, I-standard (Feller XIII.1)]. ν_α(de) := α^{−1}dn_{𝔏_α}(αe) → ν_c := (2π)^{−1}Σ_{n≥0}δ_{2n+1} vaguely; hence α^{−1}n_{𝔏_α}(αe) → (2π)^{−1}#{n ≥ 0 : 2n + 1 ≤ e} for every e ∉ 2N + 1. (Laplace transforms converge for every τ > 0 by Lemma S2, and ∫e^{−τe}dν_c = 1/(4π sinh τ).)
This is the part of "Helffer–Sjöstrand" that (L-LL) needs: integrated Landau counts at scale α, not band widths. Band widths never enter.

3.4 Theorem S (scalar (L-LL)) [P rel. (IP)]. Put m² = μ′α. Then
  α^{−2}∫dF_⊥(κ)[τ_2u_m(𝔏_α + κ) − τ_2u_m(𝔏_0 + κ)] → h_sc(μ′) := (16π²)^{−1}∫_0^∞(dτ/τ²)(e^{−μ′τ} − 1)(1/sinh τ − 1/τ).
Proof. For X ≥ 0, u_m(X) = ∫_0^∞(dt/t)(e^{−tm²} − 1)e^{−tX}; with the transverse factor p_t(0)², the left side is α^{−2}∫_0^∞(dt/t)(e^{−tm²} − 1)p_t(0)²[T_α(t) − T_0(t)]. Substitute t = τ/α. Domination: for τ ≤ 1, |e^{−tm²} − 1| ≤ μ′τ, Lemma S1 gives |ΔT| ≤ Cα²t, p_t(0)² ≤ C/(1+t): integrand ≤ Cμ′ uniformly. For τ ≥ 1: |ΔT| ≤ 2T_0(t) ≤ C/t (diamagnetic), p_t(0)² ≤ C/t: integrand ≤ Cτ^{−3}. Pointwise: Lemma S2, the free 2D local limit α^{−1}T_0(τ/α) → 1/(4πτ), and αp_{τ/α}(0)²·α^{−1}·… → 1/(4πτ). Dominated convergence. ∎
This proves (L-LL) for the scalar ghost alone (the case left open in STEPB §2.5 with a cited LLT on the discrete Heisenberg group): the only import is (IP), a textbook invariance principle. Large μ′: h_sc(μ′) = (96π²)^{−1} ln μ′ + O(1) (region 1/μ′ ≪ τ ≪ 1, where (e^{−μ′τ} − 1)(1/sinh τ − 1/τ) ≈ τ/6); see §5.3.

