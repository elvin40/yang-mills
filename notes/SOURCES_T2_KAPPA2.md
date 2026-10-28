# SOURCES_T2_KAPPA2 — B22 (κ → κ/2 decay recovery) via rescaling (IDEAS_FABLE §I5)

Date 2026-10-28. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.
Ledger tags: [P] proved here, [R] reduction to named inputs, [V] read verbatim in a source.

## 1. Where the half-rate loss occurs, and how often

Three places lose a fraction of the decay rate. All three absorb a polynomial factor (1 + d)^m into e^{−κd}. The text takes half the rate each time.

- (L1) D2 §6.3, proof of the freezing property (vii) at level k+1. The input differences carry (1 + d_k(X) + dist(X, y)). D2 writes: "after the factors (1 + dist) are absorbed by half of the decay". So the interpolated inputs I(t) are admissible only at rate κ/2 in d_k. The output bound is then claimed at the full rate κ in d_{k+1}(Y). [V, SOURCES_D2 l. 272–274]
- (L2) D2C §3.1–3.3, marginal extraction at scale j. The freezing error D_X and the remainder R_X are bounded with e^{−(κ/2)d_j(X)} ((3.3) and the line after (3.4)); the case τ_X > α_2/2 also gives up half of κ. These are the irrelevant parts of V^{(j)}. [V, SOURCES_D2C l. 72–85]
- (L3) D3R Lemma F2: R-induced terms at rate κ′ < κ, fixed, after the (1 + d)² is absorbed. [V, SOURCES_D3R l. 114–116] Take κ′ = κ/2 for uniformity.
- Not a loss of κ: D2 §3.4 halves the propagator rate δ_0. Balaban's condition δ_0M ≥ κ (CMP 116 p. 21 [V]) becomes (δ_0/2)M ≥ κ. This is an M-condition only.

How often. The loss is per step, not once.
- (L1) runs at every step k → k+1, because (vii) is proved by induction.
- (L2) runs at every scale j, because every new E^{(j)} is extracted at its own scale.
- (L3) runs at every R operation.

What persists. Each step produces a NEW generation of rate-κ/2 terms at the newest scale k. Old remainders keep their bound in their native units d_j, j < k. Their rate in current units grows by the rescaling (§2). So the loss does not compound, provided one step turns rate κ/2 at scale k into at least the required rate at scale k+1. §2–§3 give the condition.

Notation. θ := ½ is the kept fraction. Every bound below holds for any fixed θ ∈ (0, 1]. The polynomial factor costs nothing once κ is large: if (1−θ)κ ≥ m, then (1 + d)^m e^{−κd} ≤ e^{−θκd} for all d ≥ 0, because d/dd[m log(1+d) − (1−θ)κd] ≤ m − (1−θ)κ ≤ 0. [P]

## 2. The rescaling identity, as Balaban proves it

I5 states d_k(X) = L·d_{k+1}(X) and a gain of L = 13. Balaban does not use that identity. He proves a weaker inequality and spends the gain inside the step.

- [V, CMP 116 p. 19 image, (2.36)]: "2d_k(Z_i) ≥ Ld_{k+1}(Z′_i)", where Z′_i is the smallest localization domain from D_{k+1} containing Z_i. "This inequality can be obtained by simple, but awkward, geometric and combinatoric considerations."
- So the gain per step is L/2 = 6.5 at L = 13, not L. The factor 2 pays for the closure Z → Z′ (Z′ is a union of LM-cubes).
- [V, CMP 116 p. 21 image, (2.41)]: |E^{(k+1)}(X)| ≤ O(1)C_3ε_1 exp(−(1 − 10δ)½Lκd_{k+1}(X)). "At first we assume that (1 − 10δ)½L = 1, or δ = (1/10)(1 − 2L^{−1})."
- So the printed small-field step has net gain g_T := (1 − 10δ)L/2 = 1 exactly. The step losses 10δ (the δκd sums in (2.33)–(2.40)) consume the whole rescaling gain. There is no free room at Balaban's printed δ.

Consequence for I5's mechanism. With inputs at rate θκ and the printed δ, the output rate is θκ, not κ. Then (L1)/(L2) at the next step give θ²κ, and the rate goes to 0 geometrically. So I5 is wrong as stated: the recovery is not automatic. [P]

The fix is a choice of δ. δ is a free constant in CMP 116 Sect. 2: it is fixed only by the equation above, and its other uses are sums of the form Σ exp(−δκd) (via (1.28), "with κ replaced by δκ"), which need δκ large. The step is homogeneous in the input rate: every κ in (2.33)–(2.41) is the input rate. So inputs at rate θκ give output rate g_T(δ)·θκ with g_T(δ) = (1 − 10δ)L/2, provided δθκ meets the summation thresholds. [R: homogeneity read off (2.33)–(2.41); the summation thresholds are Balaban's "κ sufficiently large"]

Balaban needs more than gain 1 in the full (large-field) construction. [V, CMP 122 II p. 376 image]: the inductive factor is "exp(−(1 + 4β)κd_k(X)) for j = k, from the improved bounds after the k-th renormalization transformation T", and for j < k "exp(−κd_j(X)) ≤ exp(−βκd_j(X))exp(−(1 − β)κ(…)d_k(Y_0)) ≤ exp(−βκd_j(X))exp(−(1 + 3β)κd_k(Y_0))". So his R step needs g_T ≥ 1 + 4β from the T step. The printed CMP 116 choice gives g_T = 1. Hence Balaban himself must re-choose δ smaller; he does not print the new value. [V for the quotes; the re-choice is P]

## 3. Per-step recovery: the condition on δ

Inputs of the T step k → k+1, sourced version, worst rates in their native units:
- newest E-terms at scale k: (1 + 4β)κ (Balaban's improved bound, inherited);
- R-terms of the R operation at scale k: κ ((1.100) [V]); R-induced terms: θκ (L3);
- extraction remainders V^{(k)} at scale k: θκ (L2);
- interpolated inputs in the proof of (vii): θκ (L1);
- old terms, scale j < k: θκ in d_j.
The minimum is θκ at scale k.

Required outputs at scale k+1: (1 + 4β)κ for E^{(k+1)} (input of the R step, CMP 122 II p. 376); κ for the freezing bound (vii) (D2 §6.3 claims κ). So the T step must satisfy
  θ · g_T(δ) ≥ 1 + 4β,  g_T(δ) = (1 − 10δ)L/2,
  ⇔ δ ≤ δ_θ := (1/10)(1 − 2(1 + 4β)/(θL)).   (K1)
δ_θ > 0 iff L > 2(1 + 4β)/θ = 4(1 + 4β) at θ = ½.

Numbers at L = 13, θ = ½. [P, arithmetic]
- β = 1/7 (Balaban's β_0 example, p. 389): 4(1 + 4/7)/13 = 44/91 = 0.484, δ_θ = 0.0516. Unsourced need: δ ≤ (1/10)(1 − 2(11/7)/13) = 0.0758.
- β = 1/4: 8/13 = 0.615, δ_θ = 0.0385. Unsourced need: δ ≤ 0.0692. Printed CMP 116: δ = 11/130 = 0.0846.
- L = 13 > 4(1 + 4β) holds for every β < 9/16.

In current units the newest loss is recovered in one step: rate θκ at scale k becomes ≥ θ(1 − 10δ)(L/2)κ ≥ (1 + 4β)κ at scale k+1. In I5's language: the rescaled rate is θ·(L/2)κ = 3.25κ at L = 13 (not 6.5κ, by (2.36)); the step spends the fraction 10δ of it; (K1) leaves ≥ (1 + 4β)κ.

Old remainders do not need a new step. A remainder at scale j < k keeps the bound e^{−θκd_j(X)}. Balaban's j < k factor (p. 376 [V]) needs θ(1 − β)κd_j(X) ≥ (1 + 3β)κd_k(Y_0) after keeping βθκd_j(X) for the sums. With d_j(X) ≥ (L/2)^{k−j}d_k(Y_0) (iterated (2.36)) this holds if
  θ(1 − β)L/2 ≥ 1 + 3β.   (K2)
At L = 13, θ = ½: 3.25(1 − β) ≥ 1 + 3β ⇔ β ≤ 0.36. Holds for β ≤ ¼. [P given iterated (2.36); the iteration with closures Z → Z′ → … → Y_0 is R]

The dist(X, y) factor of (L1). Only inputs X ⊂ Y (physical sets) enter out_Y. Then dist(X, y) ≤ √d·LM(d_{k+1}(Y) + 1) in scale-k lattice units. This is a polynomial in d_{k+1}(Y), absorbed by the output rate as D2 already absorbs (1 + d_{k+1}(Y)) in (vii). [P given X ⊂ Y, which is the localization property (H2)(i)]

Cost of (K1). The δ-sums now run at δ_θθκ instead of δκ. Balaban's thresholds ("κ sufficiently large", CMP 116 (1.28), (2.40)) hold if κ ≥ κ_0·δ_B/(δ_θθ), with δ_B the unsourced δ. At L = 13, β = ¼: factor 0.0692/(0.0385·0.5) = 3.6. κ is fixed first and depends on nothing chosen later (CMP 109 Thm 3: "κ ≥ κ_0, M ≥ M(κ)" [V, SOURCES_FX_R2_VERIFY §4]); δ_θ depends on (L, β, θ) only. So (K1) costs a larger κ_0, then a larger M(κ). [P]

The polynomial absorptions of §1 need (1 − θ)κ ≥ m, m ≤ 3 (D2C (3.3) has (1 + d)³): κ ≥ 6. Implied by κ ≥ κ_0 for any κ_0 ≥ 6. [P]

