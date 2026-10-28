# SOURCES_FX_R2 verification (2026-10-27)

## 1. Inputs read
- SOURCES_FX_R2 §0–§6; O1 §4 (κ_fin tree form, routes a/b); O1_VERIFY item 5 (R2 open); FX §3 (Cammarota criterion, (2.38)).

## 2. Pages 388–389 (images, pdf pp. 34–35)
- (1.93) image: the factor for each X_{j_h} is Π_h exp((1 + β + β/(3·2^d)) κ M^{−d}|X_{j_h}|). This is the cost of turning the decay d_{k,Z'}(Y) (no length counted inside Z') into d_{k,∪Y_i}(X'), which runs through X_{j_h}. It is a VOLUME cost: (1+β+β/(3·2^d))κ per M-cube of X_{j_h}.
- p. 389 image: "The product over h there is estimated by Π_{h=1}^q exp 2κ(100R_k)^d" — confirmed verbatim. The 2κ is the rounded-up (1+β+β/(3·2^d))κ, and (100R_k)^d bounds M^{−d}|X_{j_h}| for (i),(ii) domains.
- (1.92) image: the X_{j_h} factor is exp(−2(1+β_0)^{−1}p_0(g_k) + 1). It carries NO κ d_k decay. Decay through X_{j_h} is bought by the (1.93) volume charge, not by the X_{j_h} activity.
- Condition before (1.95), image: "−2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k)" — confirmed (R2's garbled reading fixed).
- (1.96): entropy of the X_{j_h} choices is paid by exp(−½p_0) per X_{j_h}, counted per MR_k-cube: exp(exp(−½p_0)100^d(MR_k)^{−d}|X'\∪Y_i|).
- Consequence: R2's label "2κ: Mayer-link volume cost" is wrong in name; it is the decay-recovery charge of (1.93). The size (≤ 2κ per M-cube, for β ≤ ~0.9) is right.

## 3. Pages 383, 385 (images)
- (1.79) image matches R2 §2 verbatim. Cost sources above it confirmed: "exp O(1)|Z_j ∩ Ω_j|" and "exp O(1)(MR_j)^{−d}|Z_j|".
- p. 385 image: "because for some steps we do not gain the scaling factor L^{−1} (then R_{m+1} = LR_m)" — confirmed. Ratio R_{m+1}/R_m ∈ {1, L} on this reading; r ∈ {L^{−1}, 1, L} is a safe superset.
- (1.82) condition "¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2}" and (1.83) "κ_{j+1}(Z) = κ_j(Z_0) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z)" confirmed. The (1.82) RHS comes from the (1.81) budget bound, so it is linear in C_1. The (1.83) O(1) is the (1.79) cost. Separation C_c vs C_1 is consistent with the images.
- Algebra check of κ_vol: κ_K ≥ C_1M^dR_{K+1}^{d+1}·n_f/(3·4^d(ρ+2)^d), n_f = #M(Y)/R_K^d, (ρ+2)R_K = R_{K+1}(L+2r) ⇒ κ_vol = C_1M^dR_{K+1}/(3·4^d(L+2r)^d). R_{K+1} to the first power: CONFIRMED. Tree form follows via Fact A d_K(Y) ≤ √d(#M(Y)−1): direction correct, √d correct (center–common point–center path in a side-M cube).

## 4. Order of constants, p. 387, R_n ≥ 1
- CMP 109 Thm 3 (text layer l. 804–809): "if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ … The constant γ depends on all other constants." Confirmed (text layer only). CMP 116 l. 753: "M is much bigger than κ_1" confirmed.
- β placement before M is not printed. β is a fixed numerical constant (β_0 = 1/7 example, p. 389); α is chosen after it ((1.94)). Not load-bearing as long as β does not depend on M.
- p. 387 image: (1.87), (1.88) shapes match R2 §4. The extra (1.88) terms "O(1)2(100M)^dR^{d+2}", "O(1)3(100M)^dR^{d+2}" come from the (1.80) sum tail, so they scale with C_1. "for p_0 large and γ small enough" confirmed.
- CMP 122 I l. 909: N_0 defined by L^{−N_0+1}R_{k−N_0+1} = 1, then L^{N_0−1} = R_{k−N_0+1} ≤ … R_k. Consistent with R_n ≥ 1; still [R], not a direct statement.
- Small misquote: (1.94) image reads α^{1/3} ≤ exp(−(1+β)κ2d), not κ2^d. Not load-bearing.
- Arithmetic: L+2r ≤ 3L ⇒ M^d ≥ 3·12^dL^dκ_final/C_1 ⇔ M ≥ 12L(3κ_final/C_1)^{1/d}. d = 4, β ≤ ¼: κ_final = 5κ + c_d ≤ 6κ for κ ≥ c_d. Correct.

## 5. Verdict
1 CONFIRMED. 2 CORRECTED (formula and R_{K+1}^1 scaling correct; the "2κ" is the (1.93) decay-recovery charge (1+β+β/(3·2^d))κ per M-cube, not a Mayer-link cost; the √d(1+2β)κ term is not needed since the X_h activity in (1.92) carries no κd decay; it is harmless surplus). 3 CONFIRMED on images. 4 CONFIRMED, conditional on [R] R_{K+1} ≥ 1 and C_c independent of g. 5 [I] items SAFE: the large-Y cost is the same (1.93) inequality without the (100R_k)^d cap; κ_final is sufficient (over-provisioned), not sharp.
