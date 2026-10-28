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
- newest E-terms at scale k: (1 + 4β)κ (Balaban's improved bound, CMP 119 p. 262, inherited);
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

## 4. The last scale K: no further rescaling

At scale K the last extraction (L2) and the last R-induced terms (L3) give terms at rate θκ in d_K. No step follows, so §3 does not recover them. The final expansion of SOURCES_FX_R2 runs with these inputs.

Which rate the final expansion sees. FX_R2 §3 uses Balaban's per-step chain (1.92)–(1.97) at the final scale. That chain starts from inputs at (1 + 4β)κ (CMP 122 II p. 376 [V]) and gives the small-field links (1 + 2β)κ ((1.68) [V], p. 377) and the output (1 + β)κ ((1.97) [V]). The chain is homogeneous in κ (every printed exponent is a multiple of κ). So inputs at rate θκ run the same chain with κ replaced by
  κ_eff := θκ/(1 + 4β)   (θ = ½, β = ¼: κ_eff = κ/4; β = 1/7: κ_eff = 7κ/22 = 0.318κ).
The task's "rate κ/2" is the cruder reading that ignores the (1 + 4β) input margin; κ_eff is the correct substitution. [P given homogeneity, which is read off the images pp. 376–390]

New requirement. FX_R2 §3: κ_vol ≥ κ_final with κ_final := 2κ + √d(1 + 2β)κ + c_d. With κ → κ_eff:
  κ_final^θ := 2κ_eff + √d(1 + 2β)κ_eff + c_d.
d = 4, β ≤ ¼, θ = ½: κ_final^θ ≤ (2 + 3)κ/4 + c_d = 1.25κ + c_d ≤ 1.5κ if κ ≥ 4c_d.
κ_vol = C_1M^dR_{K+1}/(3·4^d(L + 2r)^d) does not depend on κ (FX_R2 §3 [P]). So the M-condition becomes
  M ≥ 12L(3κ_final^θ/C_1)^{1/d},  d = 4: M ≥ 12L(4.5κ/C_1)^{1/4},  C_1 := max(1, C_c) (FX_R2 §4 route (b)).   (K3)
Since κ_final^θ ≤ κ_final, the old condition M ≥ 12L(18κ/C_1)^{1/4} implies (K3). The M-condition does not get worse. [P]

What does get worse: the κ-thresholds of the final expansion. They now apply to κ_eff:
- Cammarota entropy: κ_eff ≥ c_d (CMP 116 (1.26)) ⇒ κ ≥ 2(1 + 4β)c_d ≤ 4c_d.
- (1.94): "O(1)α^{1/3} ≤ 1 ≤ 1/(6·2^d)βκ for κ large enough" [V] ⇒ κ_eff ≥ 6·2^d/β ⇒ κ ≥ 2(1 + 4β)·6·2^d/β.
- (1.96)–(1.97): exp(−½p_0(g_K)) < βκ_eff/(6·2^d) [V shape] ⇒ g_K slightly smaller. γ is chosen last, so this is admissible.
- Weaker, not stronger: α^{1/3} ≤ exp(−(1 + β)κ_eff·2d) and the p_0 condition −2(1 + β_0)^{−1}p_0 + 1 + 2κ_eff(100R_K)^d ≤ −(3/2)p_0 [V] both relax.
All are lower bounds on κ (fixed first) or on p_0, 1/γ (fixed last). [P]

Remark (optional, not used). One could skip the extraction at scale K: no coupling counterterm is needed after the last step. Then (L2) does not occur at K, and only (L3) at K remains. This is not checked against the unit-scale integral of D2 §7.1(ii) and is not load-bearing. [I]

## 5. Balaban's own budget, (1.66)–(1.100): the inequality

Balaban's R operation at scale k consumes 4βκ of tree-decay rate. The chain on the images [V]:
- p. 376, (1.66): newest inputs (1 + 4β)κd_k; extract (1 + 3β)κd_{k,Z}(Y_4); β-part kept for sums.
- p. 377, (1.68): resummed small-field terms V(Y) at (1 + 2β)κd_{k,Z}(Y).
- p. 388, (1.93): Π_{Y∈D} α exp(−(1 + 2β)κd_{k,Z′}(Y)) ≤ exp(−(1 + β)κd_{k,∪Y_i}(X′)) exp(−(1/(3·2^d))βκM^{−d}|X′\∪Y_i|) · Π_h exp((1 + β + β/(3·2^d))κM^{−d}|X_{j_h}|) · Π_{Y∈D} α^{2/3} exp(−½βκd_{k,Z′}(Y)).
- p. 389, (1.97): |F(X′)| ≤ c_1 exp(−(1 + β)κd_{k,∪Y_i}(X′)).
- p. 390, (1.99): |R′^{(k)}(X)| ≤ O(1)c_1 exp(−(1 + ½β)κd_{k,∪Y_i}(X)); (1.100): exp(−p_0(g_k)) exp(−κd_k(X)).
Drops: β + β + β + ½β + ½β = 4β. So the R step maps (1 + 4β)κ to κ, in the same units d_k. It has gain < 1. Only the T step's rescaling restores (1 + 4β)κ.

Who pays the (1.93) volume charge. The factor Π_h exp((1 + β + β/(3·2^d))κM^{−d}|X_{j_h}|) is NOT paid from the rescaling gain. It is paid by the large-field factor exp(−2(1 + β_0)^{−1}p_0(g_k) + 1) of (1.92), through the condition before (1.95): "−2(1 + β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k)" [V, p. 389]. This corrects the task's reading. The rescaling gain pays only the rate drops (the 4βκ and the T step's 10δ fraction).

The budget inequality per step, sourced (rates in units of κ, d_{k+1} units):
  available after rescaling: θ·L/2 (newest inputs at θκ in d_k; (2.36));
  spent in the T step: the fraction 10δ (CMP 116 (2.33)–(2.41));
  needed by the R step at k+1: 1 + 4β (then the R step returns rate 1 by (1.100));
  inequality: θ(1 − 10δ)L/2 ≥ 1 + 4β, which is (K1).
At L = 13, θ = ½, β = ¼: 3.25(1 − 10δ) ≥ 2 ⇔ δ ≤ 0.0385. Take δ = 0.03: 3.25·0.7 = 2.275 ≥ 2, margin 0.275κ. At β = 1/7: 3.25(1 − 10δ) ≥ 1.571 ⇔ δ ≤ 0.0516.
Unsourced (θ = 1) the same inequality reads (1 − 10δ)·6.5 ≥ 1 + 4β; Balaban's printed CMP 116 δ = 0.0846 gives 1.0 < 1 + 4β. Balaban states the improved T-step bound in CMP 119 p. 262 [V, text layer]: the new terms "have better decay properties, with the number κ replaced, for example, by (1 + 4β)κ. Such improved bounds are needed for the R-operation." He does not print the δ that gives it. So a smaller δ is already implicit in Balaban without a source; the sourced case only moves it from δ ≤ (1/10)(1 − 2(1 + 4β)/L) to (K1). [P from the quoted lines; the value of Balaban's implicit δ is not printed]

A rate between θκ and κ at one step. If the worst input at some step has rate ρκ, θ ≤ ρ ≤ 1, the output is ≥ ρ(1 − 10δ)(L/2)κ ≥ (1 + 4β)κ under (K1), because ρ ≥ θ. So any rate in [θκ, κ] at one step is accommodated by the same δ. [P]

## 6. Conclusion

(1) Where and how often. The loss κ → κ/2 occurs at every step, in three places: D2 §6.3 (interpolated inputs of the freezing proof), D2C §3 (extraction remainders D_X, R_X), D3R F2 (R-induced terms, κ′). Each step creates a new generation at rate κ/2 at the newest scale. Old generations keep their native-unit bound and gain rate by rescaling. The loss does not compound under (K1).

(2) Rescaling. Balaban's inequality is 2d_k(Z) ≥ Ld_{k+1}(Z′) (CMP 116 (2.36)), gain L/2 = 6.5, not L. The printed step spends all of it (δ = (1/10)(1 − 2/L), (2.41)). So I5's "free room" claim is wrong as stated. The recovery needs the choice
  (K1) δ ≤ (1/10)(1 − 2(1 + 4β)/(θL)), θ = ½  (L = 13: δ ≤ 0.0385 at β = ¼, δ ≤ 0.0516 at β = 1/7),
plus (K2) θ(1 − β)L/2 ≥ 1 + 3β for old terms (holds for β ≤ 0.36 at L = 13), plus κ ≥ κ_0δ_B/(δ_θθ) (factor ≈ 3.6 at L = 13, β = ¼). Balaban already needs a δ below his printed value for his own improved bound (1 + 4β)κ (CMP 119 p. 262).

(3) Last step. The final expansion runs at κ_eff = θκ/(1 + 4β) (= κ/4 at β = ¼), not κ/2. The M-condition becomes M ≥ 12L(3κ_final^θ/C_1)^{1/d}, κ_final^θ = 2κ_eff + √d(1 + 2β)κ_eff + c_d ≤ 1.5κ (d = 4, κ ≥ 4c_d), i.e. M ≥ 12L(4.5κ/C_1)^{1/4}. It is implied by the old M ≥ 12L(18κ/C_1)^{1/4}. The final-scale κ-thresholds move: κ ≥ 2(1 + 4β)·max(c_d, 6·2^d/β).

(4) Bookkeeping. Balaban's R step maps (1 + 4β)κ to κ (drops β, β, β, ½β, ½β on pp. 376–390). The (1.93) volume charge is paid by p_0 (condition before (1.95)), not by rescaling. The rescaling pays the rate drops: θ(1 − 10δ)L/2 ≥ 1 + 4β is (K1); at L = 13, θ = ½, β = ¼, δ = 0.03: 2.275 ≥ 2. Any one-step rate in [θκ, κ] is covered by the same δ.

(5) Verdict. B22 CLOSED by rescaling [R], with the stated choices (K1), (K2), the κ-threshold increase, and the final-scale substitution κ → κ_eff with M-condition (K3) (implied by the existing one). No obstruction found.

Ledger.
- [V] CMP 116 (2.36), (2.41) and the δ equation (images p. 19, 21); CMP 122 II (1.66), (1.68), (1.92)–(1.100) and the p_0 condition (images pp. 376, 388–390); CMP 119 p. 262 "(1 + 4β)κ … improved bounds" (text layer only); D2 l. 272–274, D2C l. 72–85, D3R l. 114–116 (project files).
- [P] §1 absorption lemma; (K1), (K2) arithmetic; κ_eff substitution and (K3); the R-step drop count 4β; the claim that any rate in [θκ, κ] is covered.
- [R] Homogeneity of the T step (2.33)–(2.41) and of the R chain (1.66)–(1.100) in the input rate; δ free apart from the "κ sufficiently large" sum thresholds; iterated (2.36) with closures for (K2); localization X ⊂ Y for the dist(X, y) factor; FX_R2's κ_vol independent of κ (FX_R2 §3).
- [I] Skipping the extraction at scale K (§4 remark), not used.
- Suggested ledger row: B22 → "reduced [R]: rescaling gain L/2 (CMP 116 (2.36)) with δ re-chosen by (K1); last scale κ_eff = θκ/(1 + 4β), M-condition (K3) implied by FX_R2's; SOURCES_T2_KAPPA2". Needs an independent verifier before the ledger changes.

STATUS: COMPLETE
