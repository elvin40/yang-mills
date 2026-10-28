IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
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
Proof. For X ≥ 0, u_m(X) = ∫_0^∞(dt/t)(e^{−tm²} − 1)e^{−tX}; with the transverse factor p_t(0)², the left side is α^{−2}∫_0^∞(dt/t)(e^{−tm²} − 1)p_t(0)²[T_α(t) − T_0(t)]. Substitute t = τ/α. Domination: for τ ≤ 1, |e^{−tm²} − 1| ≤ μ′τ, Lemma S1 gives |ΔT| ≤ Cα²t, p_t(0)² ≤ C/(1+t): integrand ≤ Cμ′ uniformly. For τ ≥ 1: |ΔT| ≤ 2T_0(t) ≤ C/t (diamagnetic), p_t(0)² ≤ C/t: integrand ≤ Cτ^{−3}. Pointwise: Lemma S2, the free 2D local limit α^{−1}T_0(τ/α) → 1/(4πτ), and α^{−1}p_{τ/α}(0)² → 1/(4πτ). Dominated convergence. ∎
This proves (L-LL) for the scalar ghost alone (the case left open in STEPB §2.5 with a cited LLT on the discrete Heisenberg group): the only import is (IP), a textbook invariance principle. Large μ′: h_sc(μ′) = (96π²)^{−1} ln μ′ + O(1) (region 1/μ′ ≪ τ ≪ 1, where (e^{−μ′τ} − 1)(1/sinh τ − 1/τ) ≈ τ/6); see §5.3.

## 4. Vector part: the matrix operator A′_α

Inputs [V, verified files]: GAPRIME2 Lemma 1.1 (A′ = cos φ c^†c + D′D′^† − 2 sin φ K), Lemma 4.1 (A′ = 𝔏⊗1 − 2ασ_y + R, ‖Rψ‖ ≤ 19|α|N_1(ψ)^{1/2} + 11α²‖ψ‖ for every ψ, |α| ≤ 0.1); S123 Lemma 5.2 (n_𝔏(E) ≤ C_dE). Theorem 5.1 of GAPRIME2 (gap) is not needed below; it only simplifies.

4.1 Lemma V0 (form sandwich) [P]. For 0 < |α| ≤ 10^{−4}, with ε := |α|^{1/2}, δ := 102|α|^{3/2}:
  A_− := (1 − ε)𝔏⊗1 − 2ασ_y − δ ≤ A′_α ≤ A_+ := (1 + ε)𝔏⊗1 − 2ασ_y + δ.
Proof. |⟨ψ, Rψ⟩| ≤ 19|α|‖ψ‖N_1^{1/2} + 11α²‖ψ‖² ≤ εN_1 + (19²α²/(4ε) + 11α²)‖ψ‖², and 90.25|α|^{3/2} + 11α² ≤ 102|α|^{3/2}. ∎
Consequences [P]. (a) 𝔏⊗1 and σ_y commute, so n_{A_±}(λ) = Σ_{s=±1} n_𝔏((λ + 2αs ∓ δ)/(1 ± ε)) exactly. (b) A′ ≥ A_− ≥ −3|α|. (c) τ(P_−) ≤ n_{A_−}(0) ≤ 2n_𝔏(4|α|) ≤ 8C_d|α|, P_− := 1_{(−∞,0)}(A′). (d) n_{|A′|}(λ) ≤ n_{A′}(λ) ≤ 4C_d(λ + 3|α|).

4.2 Lemma V2 (scaled spectrum of A′ → spin-split Landau measure) [P rel. (IP)]. Counting monotonicity, Lemma V0(a), ε, δ/α → 0, and Corollary S3 give, for every e not an odd integer,
  α^{−1}n_{A′}(αe) → N′_c(e) := (2π)^{−1}[#{n ≥ 0 : 2n − 1 ≤ e} + #{n ≥ 0 : 2n + 3 ≤ e}].
So the scaled spectral measure of A′ converges vaguely to ν′_c := (2π)^{−1}Σ_{n≥0}(δ_{2n−1} + δ_{2n+3}); level −1 is the N–O band. Hence: (i) μ_−^α(da) := α^{−1}τ(P_−1_{αda}(|A′|)) → (2π)^{−1}δ_1 weakly (supports in [0, 3] by V0(b)); (ii) for every τ > 0, α^{−1}τ_2e^{−(τ/α)|A′|} → ∫e^{−τ|e|}dν′_c = 1/(2π sinh τ) (uniform tail from V0(d)).
This is the "matrix Helffer–Sjöstrand" input in the form actually needed: integrated counts at scale α, with the ∓2α spin shift. The O(α^{3/2}) remainder R moves scaled levels by O(α^{1/2}); band widths are not needed.

4.3 Lemma V1 (small-time heat trace of A′) [P]. There is C with
  |τ_2e^{−tA′_α} − τ_2e^{−tA′_0}| ≤ Cα²t   for 0 < |α| ≤ α_1, 0 ≤ t ≤ 1/|α|.
Proof. (i) Structure. A′_α and 𝔏_α⊗1 are finite sums of words in T_0^{±1}, T_1^{±1} with 2×2 coefficients entire in α. So E_α := A′_α − 𝔏_α⊗1 has kernel E_α(x, x + v) = e^{iαx_1v_0}η_α(v), |v|_∞ ≤ r, η_α entire, and η_0 = 0 because A′_0 = 𝔏_0⊗1 ((F1)). So |η_α(v)| ≤ C|α|, η_α = αη′ + O(α²).
(ii) Evenness [P]. With C = complex conjugation in the Landau-gauge basis: T_0(−α) = CT_0(α)C, T_1 real, e^{iα} ↦ e^{−iα}; c, D′, u_i transform the same way, and K(−α) = −CK(α)C; with sin(−φ) = −sin φ this gives A′_{−α} = CA′_αC. So τf(A′_{−α}) = τf(A′_α) for real f. Same for 𝔏_α. [Checked numerically: spectra equal to 0.0, §6.]
(iii) Dyson expansion of e^{−t(L + E)}, L = 𝔏_α⊗1, with the diamagnetic kernel bound |e^{−uL}(x, y)| ≤ p^{2D}_u(x − y) and Chapman–Kolmogorov: the k-th term has |τ| ≤ (C′|α|t)^k/k!·C(1 + t)^{−1}. For k ≥ 2 the sum is ≤ Cα²t²/(1 + t)·e^{C′} ≤ Cα²t when |α|t ≤ 1.
(iv) First order. By cyclicity it is −tτ(E e^{−tL}) = −tΣ_v tr η_α(v)·e^{−t𝔏_α}(v, 0). By §3.1 and Lemma S1, |e^{−t𝔏_α}(v, 0) − p^{2D}_t(v)| ≤ |α|E_v[|A_t|; X_t = 0] ≤ |α|(C_rt·C(1 + t)^{−1})^{1/2} ≤ C|α| for |v| ≤ r. So the first-order term is −tαS_1(t) + O(α²t), S_1(t) := Σ_v tr η′(v)p^{2D}_t(v), independent of α.
(v) τe^{−tA′_α} − 2T_α(t) is even in α by (ii) and equals −tαS_1(t) + O_t(α²). So S_1(t) = 0 for every t. With Lemma S1 for 2[T_α − T_0]: total ≤ Cα²t. ∎
Remark. (iv)–(v) are a heat-kernel form of magnetic perturbation theory at order α². They use only the walk representation, Lemma S1, and the symmetry; no symbol classes. Whether the same method also gives the φ⁴ resolvent remainder of STEPB Lemma 1 ((MPT)) was not checked.

4.4 The N–O band: exact isolation [P]. On ran P_−, A′ = −|A′|. Hence, for every κ ≥ 0 and m² > 0,
  τ_2u_m(A′ + κ) = τ_2u_m(|A′| + κ) + τ_2(P_−D_m(κ, |A′|)),  D_m(κ, a) := u_m(κ − a) − u_m(κ + a).
Insert in (2.1). With u_m(X) = ∫_0^∞(dt/t)(e^{−tm²} − 1)e^{−tX} for X ≥ 0 and ∫dF_⊥e^{−tκ} = p_t(0)²:
  H_φ(μ) = −(4/α²)[Heat_α + NO_α],
  Heat_α := ∫_0^∞(dt/t)(e^{−tm²} − 1)p_t(0)²[τ_2e^{−t|A′|} − 2T_0(t)],
  NO_α := ∫dF_⊥(κ)τ_2(P_−D_m(κ, |A′|)).
The heat-kernel term carries no negative eigenvalue (|A′| ≥ 0). The N–O term is the only place where log|·| of a sign-changing argument appears.

## 5. The theorem

Theorem 5.1 ((L-LL)) [P rel. (IP), the continuity theorem for Laplace transforms, and counting monotonicity (all standard, §7); inputs GAPRIME2 Lemmas 1.1, 4.1 and S123 Lemmas 5.1, 5.2 (all [P], verified)]. For every μ > 0 (no lower bound μ_0 is needed), as φ → 0 through all real values,
  H_φ(μ) → h(μ) := −4[I_heat(μ/2) + g(1, μ/2)/(8π²)],
  I_heat(μ′) := (8π²)^{−1}∫_0^∞(dτ/τ²)(e^{−μ′τ} − 1)(1/sinh τ − 1/τ),
  g(a, μ′) := ∫_0^∞dε[u(ε − a) − u(ε + a)],  u(x) := log|x| − log|x + μ′|.
Proof. Write α = 2|φ|, μ′ = μ/2, m² = μ′α.
(a) Heat term. Substitute t = τ/α. For τ ≤ 1: |e^{−tm²} − 1| ≤ μ′τ; |τe^{−t|A′|} − τe^{−tA′}| = |τ(P_−(e^{−t|A′|} − e^{t|A′|}))| ≤ τ(P_−)·2 sinh(3αt) ≤ Cα²t (Lemma V0(b), (c)); |τe^{−tA′} − τe^{−tA′_0}| ≤ Cα²t (Lemma V1); p_t(0)² ≤ C/(1 + t). So α^{−2}× the integrand is ≤ Cμ′ per dτ. For τ ≥ 1: τe^{−t|A′|} ≤ 4C_d(1/t + 3α) ≤ Cα (Lemma V0(d), integration by parts), 2T_0(t) ≤ C/t ≤ Cα, p_t(0)² ≤ Cα/τ; so α^{−2}× the integrand is ≤ Cτ^{−2} per dτ. Pointwise limit: Lemma V2(ii), α^{−1}T_0(τ/α) → 1/(4πτ), α^{−1}p_{τ/α}(0)² → 1/(4πτ). Dominated convergence: Heat_α/α² → ∫(dτ/τ)(e^{−μ′τ} − 1)(4πτ)^{−1}(2π)^{−1}(1/sinh τ − 1/τ) = I_heat(μ′).
(b) N–O term. Scale-invariance: D_m(αε, αa) = u(ε − a) − u(ε + a) =: D̃(ε, a). So NO_α/α² = ∫μ_−^α(da)G_α(a), G_α(a) := ∫_0^{8/α}ρ_⊥(αε)D̃(ε, a)dε. Bounds: |D̃(ε, a)| ≤ 8aμ′/ε² for ε ≥ 2(a + μ′); ρ_⊥(κ) = 1/(4π) + O(κ) on [0, 2], with a log singularity at κ = 4 that costs O(α); D̃(·, a) is locally integrable (log singularities at ε = a and ε = a − μ′), continuously in a. So G_α → g/(4π) uniformly on a ∈ [0, 3]. With μ_−^α → (2π)^{−1}δ_1 (Lemma V2(i)): NO_α/α² → g(1, μ′)/(8π²).
(c) H_φ(μ) = −(4/α²)(Heat_α + NO_α) by §4.4. ∎

5.1 The Nielsen–Olesen band (task item 4) [P]. In the fine bracket the N–O band enters as log|λ| (definition of W, STEPB §2). In (2.1) it is the term NO_α. Its 4D zero is at κ = |A′| ≈ α, i.e. ε = 1, where D̃ has the singularity log|ε − 1| against the flat density ρ_⊥ ≈ 1/(4π). This is integrable. So NO_α = α²g(1, μ′)/(8π²) + o(α²): order φ², finite coefficient, no log φ. A log could only come from (i) a non-flat density at the zero or (ii) a mismatch in the number of N–O states. (i) is excluded because κ is the free transverse energy, with density 1/(4π) at 0, independent of φ (exact fibre separability at the Wilson level). (ii) is excluded because τ(P_−) = α/(2π)·(1 + o(1)) (Lemma V2(i); numerically exact to 5 digits, §6). The imaginary part, if log det is read as log of the complex determinant, is π·∫dF_⊥ n_{A′}(−κ) = π·α²/(8π²)·(1 + o(1)): also φ², no log (agrees with BETA_FP_H_VERIFY l. 30).

5.2 Explicit leading term (task item 2) [P for the formula, N for the values]. H_φ(μ) = h(μ) + o(1), with h(3) = 0.116322, h(5) = 0.169938 (quadrature, §6). In scaled form: each Landau level contributes α/(2π) states per site, the transverse density is α dε/(4π), and the per-state weight is a φ-independent function of (e, ε, μ′); the product is α²/(8π²)·O(1) = φ²/(2π²)·O(1), so φ^{−2}× it is O(1). Level-by-level sums are not used, because the individual levels give log(1/α)-divergent pieces that cancel only in the sum (§2.4).

5.3 Consistency check: the ln μ coefficient [P + N]. For μ′ → ∞: I_heat(μ′) = (48π²)^{−1}ln μ′ + O(1) (region 1/μ′ ≪ τ ≪ 1, (e^{−μ′τ} − 1)(1/sinh τ − 1/τ) ≈ τ/6); g(1, μ′) = −2 ln μ′ + O(1) (u(ε − 1) − u(ε + 1) ≈ −2/ε for 1 ≪ ε ≪ μ′). So
  h(μ) = 4[2/(8π²) − 1/(48π²)] ln μ + O(1) = (4 − 1/3)·(4π²)^{−1} ln μ + O(1) = (11/(12π²)) ln μ + O(1).
The 4 is the N–O/spin (paramagnetic) part, the −1/3 the orbital (diamagnetic) part. STEPB §2.6 needs h(μ) = n_2c_2 ln μ + const + o(1) for B to be μ-independent; with c_2 = 11N²/(24π²) = 11/(6π²) (N = 2) and n_2 = ½ (BETA_FP_H §1, U3_LEMMA51 convention) this is n_2c_2 = 11/(12π²). It matches. Numerically h(μ) − (11/(12π²)) ln μ = 0.014285, 0.020457, 0.022722, 0.023437, 0.023444, 0.023444 at μ = 3, 5, 10, 10², 10³, 10⁴ (§6). This also checks the sign conventions and the normalization chain of §1–§2 end to end (a wrong spin sign, a wrong multiplicity, or a missing ghost cancellation would change the 11).

## 6. Numerics [N] (numerics/t2_lll_window.py, Mac, 13 s total; output JSON to /tmp only)

Method. A′_α from t2_gaprime2_check.ops (GAPRIME2 Lemma 1.1, Landau gauge), flux α = 2π/q (p = 1), Bloch blocks 2q × 2q, grid nk × nk over k_0 ∈ [0, α), k_1 ∈ [0, 2π). Lattice H_φ(μ) computed DIRECTLY from (2.1): H = −φ^{−2}[τU(A′) − τU(A′_0)], U(λ) := ∫_0^8 ρ_⊥(κ)u_m(λ + κ)dκ with the exact lattice transverse density ρ_⊥ (elliptic K; ∫ρ_⊥ = 1 − 2·10^{−13}); U by adaptive quadrature (spline for λ > 0, max spline error 3·10^{−10}; direct quadrature for the N–O eigenvalues); free part by the 4D proper-time integral 2∫(dt/t)(e^{−tm²} − 1)(e^{−2t}I_0(2t))⁴. The split Heat/NO of §4.4 is printed as a diagnostic only (it is an identity). Continuum h(μ) by quadrature of the §5 formulas.
Checks. Mehler identity of Lemma S2(e): relative error ≤ 9·10^{−16} at τ = 0.3, 1, 3. Evenness A′_{−α} = CA′_αC: spectra equal (max difference 0.0) at q = 79. k-grid: nk = 2, 4, 6 at q = 79 and nk = 2, 4 at q = 157 agree to all 6 printed digits (low bands flat; U analytic on the spectrum). τ(P_−)/(α/2π) = 1.00000 at every q (one N–O eigenvalue per block).

| φ | 0.03977 | 0.02001 | 0.01001 | 0.00500 | continuum h |
|---|---|---|---|---|---|
| H_φ(3) | 0.124869 | 0.121263 | 0.119109 | 0.117872 | 0.116322 |
| H_φ(5) | 0.183646 | 0.177929 | 0.174470 | 0.172467 | 0.169938 |
| Heat_α/α² (μ = 3) | 0.003904 | 0.004085 | 0.004191 | 0.004250 | I_heat = 0.004321 |
| NO_α/α² (μ = 3) | −0.035122 | −0.034401 | −0.033968 | −0.033718 | g/(8π²) = −0.033402 |
| scalar, Thm S (μ′ = 1.5) | 0.002003 | 0.002071 | 0.002110 | 0.002133 | h_sc = 0.002161 |
(q = 79, 157, 314, 628; φ = π/q.)
Reading.
- H_φ(μ) converges to the continuum h(μ) for both μ. The error H − h is 0.00855, 0.00494, 0.00279, 0.00155 (μ = 3): each halving of φ divides it by 1.73, 1.77, 1.80. (H − h)/φ = 0.215, 0.247, 0.278, 0.310: it grows by ≈ 0.031 per halving, so H − h ≈ φ(0.07 + 0.046 ln(1/φ)). μ = 5: (H − h)/φ = 0.345, 0.399, 0.453, 0.506, i.e. ≈ φ(0.10 + 0.077 ln(1/φ)). Observed rate O(φ ln(1/φ)). No rate is proved (§7).
- Both pieces converge separately (heat term from below, N–O term from above in absolute value), as Theorem 5.1's proof says.
- The scalar ghost-type quantity converges to h_sc (Theorem S).
- Continuum: h(μ) − (11/(12π²)) ln μ → 0.023444 (μ = 10³, 10⁴ agree to 6 digits): the ln μ coefficient is 11/(12π²) = n_2c_2 (§5.3).
Not done: irrational-flux runs (the proof covers every real α; GAPRIME2 found no arithmetic dependence at p > 1); φ below 0.005 (q = 1256 would take about 1 min; not needed for the reading).

## 7. Conclusion and ledger

Verdict: (L-LL) PROVED, for the scalar part and for the matrix (spin) part, relative to:
- (IP) the invariance principle for the 1D continuous-time simple-random-walk bridge (convergence in law in D[0, τ] to the Brownian bridge) [I, textbook; used only in Lemma S2(c)];
- the continuity theorem for Laplace transforms of measures on [0, ∞) (Feller XIII.1) [I, textbook; Cor. S3];
- counting monotonicity of the per-site IDS under form inequalities, and cyclicity of τ, in the magnetic (twisted) von Neumann algebra [I, standard; already used in S123 Prop. 5.3];
- Bessel asymptotics e^{−2t}I_0(2t)√(4πt) → 1 and the bound e^{−2t}I_x(2t) ≤ C(1 + t)^{−1/2} [standard];
and on project inputs that are already [P] and verified: GAPRIME2 Lemma 1.1 (explicit A′) and Lemma 4.1 (remainder R); S123 Lemma 5.1 (exact k_⊥ separability at the Wilson level, (b_2, b_3) block = 𝔏) with the midpoint upgrade of GAPRIME2_VERIFY §1; S123 Lemma 5.2 (diamagnetic IDS bound).
Not used: Helffer–Sjöstrand or any Harper band-width theorem; the gap Theorem 5.1 of GAPRIME2; rational flux; level-by-level sums.
What the proof replaces. The verifier's suggested route (band centres (2n + 1)α + O(α²) and widths o(α) for n ≤ μ/2, scalar and matrix) is replaced by a weaker and sufficient statement: convergence of the scaled integrated density of states (Cor. S3 for 𝔏, Lemma V2 for A′), plus two uniform small-time bounds (Lemma S1, Lemma V1) that control the high-energy region where the logs live. The exact missing lemma of STEPB §2.5 was not "Harper semiclassics" but a heat-trace bound linear in t: |τe^{−tX_α} − τe^{−tX_0}| ≤ Cα²t for t ≤ 1/α, X = 𝔏 or A′. It is proved here (Lemma S1 by the Poisson/Fourier computation of the lattice Lévy-area second moment; Lemma V1 by Dyson expansion + Lemma S1 + charge-conjugation evenness).
The value: h(μ) = −4[I_heat(μ/2) + g(1, μ/2)/(8π²)] (Theorem 5.1); h(3) = 0.116322, h(5) = 0.169938; h(μ) = (11/(12π²)) ln μ + 0.023444 + o(1) as μ → ∞, which equals n_2c_2 ln μ as STEPB §2.6 requires.
No rate is proved. A rate would need a quantitative (IP) (e.g. a coupling of the walk bridge and the Brownian bridge with the area functional) and quantitative versions of V2. Observed: H_φ(μ) − h(μ) ≈ φ(a + b ln(1/φ)) (§6).

Consequence for row B3 (proposed text for the ledger owner; this file edits no ledger):
"(F) [continuum value X5, source checked]. Lattice transfer (SOURCES_T2_F_STEPB): Step B ⇐ Lemma 1 (MPT remainder, [I-cite]) + Lemma 2 [P given Step C; gauge-fixing symbols [I]] + (L-LL). (L-LL) PROVED (SOURCES_T2_LLL Theorem 5.1, scalar and spin parts, relative to the textbook invariance principle for random-walk bridges); limit h(μ) explicit, its ln μ coefficient = n_2c_2 = 11/(12π²) (consistency check passed). Remaining: (MPT) and the gauge-fixing part of Step C. Unverified."
The numerical tension on the single-step β_1(L) slope (STEPB §3.3, VERIFY §8) is outside (L-LL) and is unaffected.

Possible next step [I, not done]. The proper-time method of §3–§5 may also replace Lemmas 1–2 of STEPB (and so (MPT) and Step C): H_φ was controlled without any symbol calculus. The massless bracket W(φ; 0)/φ² in proper time has a log(1/φ) from 1 ≪ t ≪ 1/α, with coefficient fixed by the large-t behaviour of the fixed-t α²-coefficient c_A(t) of τe^{−tA′}. What is missing for that route: a fourth-order analogue of Lemma V1 (|τe^{−tA′_α} − τe^{−tA′_0} − α²c_A(t)| ≤ Cα⁴t³ for t ≤ 1/α, via E[A_t⁴; X_t = 0] ≤ Ct², plausible by the same Poisson computation) and c_A(t) = c_∞t + O(1) with c_∞ the continuum value. Not attempted here.

Ledger of this file.
- [V] §1.2 objects (STEPB §2); §2.1 fibres (S123 §5.1, Lemma 5.1; GAPRIME2_VERIFY §1); GAPRIME2 Lemmas 1.1, 4.1 statements; S123 Lemma 5.2; n_2 = ½ (BETA_FP_H §1).
- [P] Lemma 2.1 (ghost cancels the (b_2, b_3) block; W reduces to A′ alone) and (2.1).
- [P] Lemma S1 (E_y[A_t²; X_t = 0] ≤ C_rt; |T_α − T_0| ≤ Cα²t).
- [P rel. (IP)] Lemma S2 (α^{−1}T_α(τ/α) → 1/(4π sinh τ)); [P] its parts (a) Harper/Feynman–Kac reduction, (d) uniform ϑ-domination, (e) Mehler integral.
- [P rel. (IP) + Laplace continuity] Cor. S3, Theorem S (scalar (L-LL)).
- [P] Lemma V0 (form sandwich, constants 102, 3, 8C_d); [P] evenness A′_{−α} = CA′_αC; [P] Lemma V1.
- [P rel. (IP)] Lemma V2; [P] §4.4 exact N–O isolation; [P rel. the above] Theorem 5.1 ((L-LL)), §5.1 (no log φ from the N–O band), §5.3 (ln μ coefficient 11/(12π²)).
- [N] §6: H_φ(3) = 0.124869 → 0.117872 (φ = 0.040 → 0.005) vs h(3) = 0.116322; H_φ(5) = 0.183646 → 0.172467 vs 0.169938; error ≈ φ(a + b ln(1/φ)); τ(P_−) = α/2π to 5 digits; Mehler to 1e−15; evenness exact; h(μ) − (11/12π²) ln μ → 0.023444.
- [I] (IP), Laplace continuity theorem, counting monotonicity (standard). Remark after Lemma V1 and "Possible next step": not checked.
- Not done: a rate; irrational-flux numerics; φ < 0.005; no verifier yet.

STATUS: COMPLETE

Corrections after verification (SOURCES_T2_LLL_VERIFY, 2026-10-28): all five claims CONFIRMED. The 11/(12π²) coefficient recomputed by a separate heat-kernel route (vector 10/3 + ghost 1/3 = 11/3, × 4/(16π²)); closed form g(1, μ′) = (μ′ − 1)log|μ′ − 1| − (μ′ + 1)log(μ′ + 1); h(3) = 0.1163219, h(5) = 0.1699377. V1: the first-order Dyson term −tαS_1(t) vanishes only by charge-conjugation evenness (S_1 = 0), not term by term; the second-order term ≤ Cα²t²/(1 + t) by diamagnetic bounds alone. S2: name the invariance principle (Liggett, J. Math. Mech. 18 (1968) 559, plus Poissonization of the jump times; or a direct local-CLT proof) and add Bennett's inequality for the tail range 2t < R < e²t. (4): with the exact lattice transverse density G_α − g/(4π) ≈ −0.04α ln(1/α), finite, no log φ — this also explains the φ ln(1/φ) error law. Extra points φ = 0.0025, 0.00125: H_φ(3) = 0.117174, 0.116787; H_φ(5) = 0.171333, 0.170699; the error law holds to φ = 0.00125. No rate needed: STEPB §2.6 uses only lim[H_φ(μ) − H_{λφ}(μ)] = 0 at fixed μ. Upstream [I]: S123 Lemma 5.1's identification step.
