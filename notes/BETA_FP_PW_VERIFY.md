# BETA_FP_PW verification (independent)

## 1. Read BETA_FP_PW.md (230 lines) and BETA_FP_LEMMA43 §1–3 + VERIFY
- Lemma 1.3 arithmetic: p_j = θL^{j−k}, Σ_{m=1}^{k} L^{−2m} < 1/(L²−1). Correct.
- Identity 3.0 is a tautology: Γ^ex := Π̂ − S by definition. All content sits in (Cθ)/(Bθ).
- (N2) bound slip: 2C_U/(L²−1) at C_U = 0.2, L = 2 is 0.133, not 0.07 (0.07 is C_U/(L²−1)). Predicted N = 12 spread should read ≈ 0.064, not 0.03.
- Slope −0.031: from C_0 = 0.028, C_1 = −0.10: C_0/16 + C_1/4 − C_0/4 = −0.030. Arithmetic matches; it is an algebraic consequence of the same 5 numbers, not an independent test.
- Lemma 2.3 algebra rederived: KD = DX + R; K^{-1}D = DX^{-1} − K^{-1}RX^{-1}; N = c_1 + (D_c s − c_2)^T S_K (D_c s − c_2). (2.2) correct. Steps (a),(c) of Prop 2.1 do not use R; (b) determinant lemma does not use R. Prop 2.2 correct by hand.

## 2. Numerics plan (N1) and a data caveat
- §1.2 level-1 points 0.3412 (p_1 = 0.2), 0.3288 (p_1 = 0.4) come from v1 (one-sided Nyquist). BETA_FP_VERIFY §7: sym value at p_1 = 0.2, N = 8 is 0.33334. So C_1 ≈ −0.10 is suspect.
- Launched on Mac: v2 (sym) j = 1, N = 8, Ng = 8, p_1 = 0.4, 0.8; v2 j = 1, N = 12, Ng = 8, p_1 = 0.4; ym_momentum L = 2 Ng = 12 p = 0.8; L = 3 Ng = 6 p = 0.8 (L = 3 Ng = 8 took 22 min before: over budget).
