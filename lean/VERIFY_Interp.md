IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Statement check: Interp.lean

Build: `lake build` from lean/ (Interp.lean builds in about 1 s). No `sorry`. Axioms of all ten printed theorems: `[propext, Classical.choice, Quot.sound]`.

## 1. Convex-combination identity (SOURCES_A3_SIGMA.md 3.2)

The task brief cites §2. The identity is in §3.2 ("Convex-combination structure"); §2 gives the walk split that makes s^ω the only s-dependence.

| Lean | Markdown statement | Match |
|---|---|---|
| `corner T` = indicator of `T`; `cornerWeight s T` = Π_{c∈T} s c · Π_{c∈univ\T} (1 − s c) | 3.2: "w_τ(s) := Π_Δ s(Δ)^{τ(Δ)}(1 − s(Δ))^{1−τ(Δ)}" | Exact, with τ = indicator of T (bijection {0,1}^S ↔ Finset S). |
| `AffineEach F`: ∀ s c t, F(update s c t) = (1−t)F(update s c 0) + tF(update s c 1) | 3.2: "s^ω is MULTILINEAR in s: each σ_0 cube enters once, with degree ≤ 1" | Affine in each coordinate, for all real t. This is the standard meaning of multilinear (degree ≤ 1 per variable). |
| `multilinear_convex F hF s hs`: S a Fintype, E any real vector space, `AffineEach F`, s ∈ [0,1]^S ⇒ F s = Σ_T w_T(s) • F(corner T), w_T(s) ≥ 0, Σ_T w_T(s) = 1 | 3.2: "C_s = Σ_{τ∈{0,1}^{σ_0}} w_τ(s) C_τ, w_τ(s) ≥ 0, Σ_τ w_τ(s) = 1" | Exact for finite σ_0 (the note also assumes finite σ_0). E covers matrices/kernels. The identity itself holds for every real s; [0,1] is used only for w ≥ 0. |
| `monomial_affine T`: s ↦ Π_{c∈T} s c satisfies `AffineEach` | 3.2: s^ω multilinear | Covers each walk weight s^ω = Π_{Δ∈T_ω} s(Δ) (degree ≤ 1 per cube). |

Not formalized: that C_s = Σ_ω s^ω T_ω is affine in each coordinate. This needs AffineEach to pass through the infinite walk sum (absolute convergence (W)). Finite sums of AffineEach functions are AffineEach (linearity); the finite walk sum is now covered by WalkAffine.lean (`walkSum_affineEach`, VERIFY_WalkAffine.md). Also not formalized: consequences (a) symmetry and (b) the λ_min/λ_max bracket.

## 2. Window arithmetic (SOURCES_T2_KUNIF.md 5.2)

| Lean | Markdown statement | Match |
|---|---|---|
| `window_perturb β β0 g b R Cβ γ`: Cβ ≥ 0, \|β j − β0 j\| ≤ Cβ g j, g j ≤ γ, Cβγ ≤ b/4, k ≤ K, \|Σ_{i<K}β0 − Σ_{i<k}β0 − b(K−k)\| ≤ 2R ⇒ (3b/4)(K−k) − 2R ≤ Σ_{k≤i<K} β i ≤ (5b/4)(K−k) + 2R | 5.2 (K3): "Σ_{i=k+1}^{n} β_i(0) ∈ [b(n − k) − 2R, b(n − k) + 2R]"; brief: \|β_j − β_j^0\| ≤ C_βg_j, g_j ≤ γ, C_βγ ≤ b/4 | Brief's form with b_* = b. Index shift: Lean window k ≤ i < K, note window k+1 ≤ i ≤ n; both have K − k terms. The hypothesis is the conclusion of `window_of_partial` (TheoremK.lean) for x k = Σ_{i<k} β0 i. |
| `window_perturb_partial`: same, with hypothesis ∀k, \|Σ_{i<k}β0 − kb\| ≤ R (Theorem K, R = κ_*) | KAPPA_BOUNDED (5.1) via `window_of_partial` | Composition of `window_of_partial` and `window_perturb`. |

Differences from the brief: the pointwise bounds b ≤ β_j^0 ≤ B are not needed and are omitted. The brief's C_β g_j bound is a hypothesis; (K2) (the derivative bound that gives it) is not formalized. My reading (not checked line by line): KUNIF obtains the C_β g_j bound from (K1)+(K2) by the mean-value theorem in g_{j−1}. That step is not formalized.

## 3. Rescaling and (K1) (SOURCES_T2_KAPPA2.md)

| Lean | Markdown statement | Match |
|---|---|---|
| `rescale_exp θκ L dk dk1`: θκ ≥ 0, L·dk1 ≤ 2·dk ⇒ e^{−θκ dk} ≤ e^{−θκ(L/2) dk1} | CMP 116 (2.36) "2d_k(Z_i) ≥ Ld_{k+1}(Z′_i)"; "rate θκ at scale k becomes … θ(L/2)κ" | Exact. Direction: d_{k+1} ≤ (2/L)d_k is the hypothesis. |
| `rescale_rate θ L β κ`: κ > 0 ⇒ ((1+4β)κ ≤ θκ(L/2) ⇔ 1+4β ≤ θL/2) | "θ·(L/2)κ" vs "(1 + 4β)κ" | Exact (cancel κ). |
| `K1_iff θ L β δ`: θ, L > 0 ⇒ (1+4β ≤ θ(1−10δ)L/2 ⇔ δ ≤ (1/10)(1 − 2(1+4β)/(θL))) | (K1): "θ · g_T(δ) ≥ 1 + 4β, g_T(δ) = (1 − 10δ)L/2, ⇔ δ ≤ δ_θ := (1/10)(1 − 2(1 + 4β)/(θL))" | Exact. |
| `K1_numeric`: (1/10)(1 − 2(1+4·¼)/(½·13)) = 1/26, 1/26 ≤ 0.0385, and 1+4·¼ ≤ ½(1 − 10·0.03)·13/2 | "β = 1/4: … δ_θ = 0.0385"; "Take δ = 0.03: 3.25·0.7 = 2.275 ≥ 2" | Exact; δ_θ = 1/26 = 0.03846…, so "0.0385" is a rounding up by < 4·10^{−5}. |

Not formalized: (K2) θ(1−β)L/2 ≥ 1+3β, the homogeneity of the step in κ, and (2.36) itself (geometry).

## 4. Polynomial absorption (SOURCES_GGAIN_LF.md)

| Lean | Markdown statement | Match |
|---|---|---|
| `xexp_le x θ`: θ > 0 ⇒ x e^{−θx} ≤ 1/(θe) (all real x) | brief: x e^{−θx} ≤ 1/(θe) for x ≥ 0 | Stronger: x ≥ 0 not needed (for x < 0 the left side is negative). |
| `xexp_absorb x θ`: θ > 0 ⇒ x e^{−x} ≤ e^{−(1−θ)x}/(θe) | brief: same, θ ∈ (0,1), x ≥ 0 | Stronger: θ ≤ 1 and x ≥ 0 not needed. |

Source note: I did not find this inequality printed in SOURCES_GGAIN_LF.md §2 (§2 lists which outputs enter β_{k+1}). The nearest printed analogue is SOURCES_T2_KAPPA2.md "Notation" ((1+d)^m e^{−κd} ≤ e^{−θκd} if (1−θ)κ ≥ m), a polynomial absorption of the same type. The statement matches the brief. The x^{−1}·x^A ≤ x^{A−1} absorption is trivial and is not formalized, as the brief says.
