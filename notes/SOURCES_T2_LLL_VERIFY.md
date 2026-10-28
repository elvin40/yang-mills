IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_LLL verification (independent)

Verifier log. One section per step.

## 0. Start
Files to read: SOURCES_T2_LLL.md, t2_lll_window.py, STEPB §2.6, GAPRIME2 L1.1/4.1, S123 L5.1/5.2, BETA_FP_H.md.

## 1. Read SOURCES_T2_LLL.md §1–§7 in full
Claims located: Lemma 2.1 (ghost), S1, S2, Cor S3, Thm S, V0, V2, V1, §4.4 N–O split, Thm 5.1, §5.1 no-log, §5.3 ln μ, §6 table.
First flags to check: (i) Lemma V1 step (v) logic ("odd part = −tαS_1 + O_t(α²)" then O(α²t) uniform); (ii) Thm 5.1(a) τ ≥ 1 bound uses τe^{−t|A′|} ≤ C(1/t + α) — check; (iii) STEPB's use (difference at λφ).

## 2. Context read: STEPB §2.5–2.6 + §4, GAPRIME2 L1.1/L4.1, S123 L5.1/5.2
- STEPB §2.6 uses only lim[H_φ(μ) − H_{λφ}(μ)] = 0 at fixed μ, then μ → ∞. Existence of h(μ) suffices. Needs ln μ coefficient of h = n_2c_2 only for (F_lat), which STEPB says is not needed.
- GAPRIME2 L4.1: ‖Rψ‖ ≤ 19|α|N_1^{1/2} + 11α², |α| ≤ 0.1. V0's constant: 19²/4 = 90.25, +11·0.01 → ≤ 102. Checked.
- S123 L5.1: (b_2,b_3) block = 𝔏 exactly (identification of (2.1) with covariant curl tagged [I] there).

## 3. Independent ln-coefficient check (continuum heat kernel, by hand)
Charged complex vector in field eB = α: 4D heat trace per volume (16π²t²)^{-1}(x/sinh x)(2 + 2cosh 2x), x = αt → 4 + (10/3)x² + O(x⁴). Complex scalar: 1 − x²/6.
W = −τ log A_C4 + 2τ log 𝒢_C (Lemma 2.1 counting). x² coefficient of W per ∫dt/t: (16π²)^{-1}[10/3 + 2/6] = (11/3)/(16π²).
H ≈ φ^{-2}·α²·(11/3)/(16π²)·ln(m²/α) = 4·(11/3)/(16π²) ln μ′ = (11/(12π²)) ln μ. n_2 = ½ (1 − cos φ ≈ φ²/2 per (0,1) plaquette), c_2 = 11·4/(24π²) = 11/(6π²): n_2c_2 = 11/(12π²). Matches the author's §5.3 by a separate route.

## 4. Rerun of numerics/t2_lll_window.py (Mac, 15 s)
All printed numbers reproduce §6 exactly: H_φ(3) = 0.124869, 0.121263, 0.119109, 0.117872; H_φ(5) = 0.183646, 0.177929, 0.174470, 0.172467; continuum h(3) = 0.116322, h(5) = 0.169938; h − (11/12π²) ln μ → 0.023444; τ(P_−)/(α/2π) = 1.00000; Mehler and evenness checks pass. Only quad roundoff warnings (U near the N–O eigenvalues).
Closed form found by hand for the N–O constant: with F(x) = x log|x| − x, g(1, μ′) = (μ′ − 1)log|μ′ − 1| − (μ′ + 1)log(μ′ + 1). At μ′ = 1.5: −2.63730, /(8π²) = −0.033402 = script's NO_c. Large μ′: g = −2 ln μ′ − 2 + o(1).

## 5. New numerics: numerics/t2_lll_verify_window.py (Mac, 41 s)
Continuum, independent quadrature + closed-form g: h(3) = 0.1163219, h(5) = 0.1699377; h − (11/12π²) ln μ = 0.0142853, 0.0204567, 0.0234371, 0.0234442 at μ = 3, 5, 10², 10⁴ (matches author to 7 digits). (My μ = 10⁶ point is off, 0.02297: my small-t branch is wrong when μ′t is not small; a script fault, not a finding.)
Lattice, smaller φ (nk = 1 equals nk = 3 at q = 628 to 6 digits):
| φ | 0.03977 | 0.02001 | 0.01001 | 0.00500 | 0.002501 | 0.001251 |
| (H−h)/φ, μ = 3 | 0.215 | 0.247 | 0.278 | 0.310 | 0.341 | 0.372 |
| (H−h)/φ, μ = 5 | 0.345 | 0.399 | 0.453 | 0.506 | 0.558 | 0.609 |
H_φ(3) = 0.117174, 0.116787; H_φ(5) = 0.171333, 0.170699 at φ = 0.0025, 0.00125. The step per halving is 0.031 constant (μ = 3) and 0.054 → 0.051 (μ = 5). So H − h ≈ φ(a + b ln(1/φ)) holds down to φ = 0.00125; b ≈ 0.045 (μ = 3), ≈ 0.075 (μ = 5), slowly falling at μ = 5.
N–O no-log test (task d): G_α(1) = ∫_0^{8/α} ρ_⊥(αε)D̃(ε, 1)dε with the exact lattice ρ_⊥, μ′ = 1.5. G_α − g/(4π) = −6.2e−3, −2.0e−3, −5.9e−4, −1.7e−4 at α = 0.04, 0.01, 0.0025, 0.000625; ratio to α ln(1/α) = −0.048 … −0.038. So the limit is finite (no log φ at order φ²). The correction is O(α ln(1/α)): the O(κ) slope of ρ_⊥ against the 8aμ′/ε² tail of D̃. This also explains the φ ln(1/φ) rate in the table.

## 6. Hand checks of the proofs (tasks a, b, c, f)
(a) Ghost cancellation. Plaquettes in planes (μ, ν), ν ∈ {2, 3}: background holonomy is 1, so weight cos 0 = 1, no spin term, and c_{μν}b = ∇_νb_μ − ∇_μb_ν with ∇_μ = 1 − T_μ (T_2, T_3 plain shifts). Off-diagonal entry (μ, ν) of c^†c + DD^† = −∇_ν^*∇_μ + ∇_μ∇_ν^* = [∇_μ, ∇_ν^*] = 0, since T_2, T_3 commute with T_0, T_1. Diagonal (ν, ν) = Σ_{ρ≠ν}h_ρ + ∇_ν∇_ν^* = Σ_ρh_ρ (normality). So the (b_2, b_3) block is (𝔏_α + κ)⊗1_2, decoupled, and (b_0, b_1) gets exactly A′_α + κ. Counting: −½ log det_R over (B¹, B²) of the (b_2, b_3) block = −2τ_C log(𝔏_α + κ + m²); FP determinant over the two charged real ghost components = +2τ_C log(𝔏_α + κ + m²). Exact cancellation, no O(f) term, given equal m² and normalization (F1). §4.4 split: on ran P_−, A′ = −|A′|, so u_m(A′ + κ) − u_m(|A′| + κ) = D_m(κ, |A′|) exactly; zero on ran P_+. CONFIRMED.
(b) Lemma V1. First order: −∫_0^t τ(e^{−(t−s)L}Ee^{−sL})ds = −tτ(Ee^{−tL}) (cyclicity). = −tΣ_v tr η_α(v)e^{−t𝔏_α}(v, 0); |e^{−t𝔏_α}(v, 0) − p_t(v)| ≤ |α|E_v[|A_t|; X_t = 0] ≤ |α|(C t · C/(1+t))^{1/2} (Cauchy–Schwarz + S1). So first order = −tαS_1(t) + O(α²t). Its α-linear part is not zero term by term; it vanishes because τe^{−tA′_α} − 2T_α is even (A′_{−α} = CA′_αC, T_α real): divide the odd part by α, let α → 0 at fixed t, S_1(t) = 0. Correct. Second order, written out: ∫_0^t(t − u)τ(Ee^{−uL}Ee^{−(t−u)L})du, |τ(…)| ≤ (Σ_v|η_α(v)|)² sup_x p^{2D}_t(x) ≤ Cα²/(1+t) (diamagnetic + Chapman–Kolmogorov), so ≤ Cα²t²/(1+t) ≤ Cα²t. Note: the second order is bounded by kernel bounds alone; S1 enters only the first-order correction and 2|T_α − T_0|. k ≥ 3 likewise with e^{C′αt} ≤ e^{C′}. CONFIRMED.
S1 itself: Poisson moment formula rederived from the generating functional exp∫ds Σ_±(e^{±(iθ+λg)} − 1): second λ-derivative gives Φ(θ)[2cos θ∫g² − 4sin²θ(∫g)²]. Bridge bounds and t-powers check. CONFIRMED.
(c) Lemma S2. (a) rederived: Poisson exponential formula for the x_0 jumps gives exp(−2∫(1 − cos(θ + αg))) exactly; this is the Bloch fibre of Harper's operator. Scaling (b), V_α − z² ≤ αz⁴/12, c_0 = 8/(9π²), and Mehler (e) = 1/(4π sinh τ) rechecked by hand. (IP) is not named in the file. Correct statement: continuous-time SRW on Z (rate 1 per direction) conditioned on X_t = 0, rescaled y(u) = √α X(u/α), t = τ/α, converges in law in D[0, τ] to the Brownian bridge with variance 2u(τ − u)/τ. Sources: Liggett, J. Math. Mech. 18 (1968) 559 (discrete-time lattice walks, span 1, finite variance, conditioned on S_n = 0) plus Poissonization of the jump times; or a direct proof: f.d.d. by the uniform LCLT (Bessel asymptotics), tightness on [0, τ/2] from the density p_{t/2}(x)/p_t(0) ≤ C (the same trick as S2(d)) and on [τ/2, τ] by time reversal. Hypotheses hold. Minor gap: S2(d) tail bound skips the range 2t < R < e²t; Bennett's inequality covers it. Grade: CONFIRMED rel. (IP), citation to be added.
(f) STEPB §2.6 uses lim_{φ→0}[H_φ(μ) − H_{λφ}(μ)] = 0 at fixed μ, λ, then μ → ∞ after the limsup. Existence of h(μ) gives this; no rate and no value needed. A rate is needed only for the quantitative remainder of (3.1), which STEPB does not claim. CONFIRMED.
Other spot checks passed: V0 constants; V0(c) τ(P_−) ≤ 2n_𝔏(4|α|); V2 level bookkeeping (s = +1 → 2n − 1, s = −1 → 2n + 3); ∫e^{−τ|e|}dν′_c = 1/(2π sinh τ); Thm 5.1(a) domination (τ ≤ 1: Cμ′; τ ≥ 1: C/τ², using the e^{−t} tail beyond λ = 1); Thm S limit constant (16π²)^{−1}.

## 7. Grades
(1) CONFIRMED. (2) CONFIRMED. (3) CONFIRMED (S1, V1, V2 [P]; S2 rel. (IP), add citation; Bennett for the mid-range tail). (4) CONFIRMED (limit finite; correction O(φ ln(1/φ))). (5) CONFIRMED to φ = 0.00125.
(L-LL): PROVED, relative to the textbook (IP), Laplace continuity, counting monotonicity, and the S123 Lemma 5.1 identification already marked [I] upstream. No rate. Sufficient for STEPB §2.6.
STATUS: COMPLETE
