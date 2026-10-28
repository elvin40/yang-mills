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

