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

## 3. Logic checks (items 1, 3, 4, 5)
- Regime of LW (5.7): fine lattice infinite, spacing 1; Π̂ evaluated at p = θL^{−k} → 0 with spacing fixed. This IS the LW regime (p → 0 at fixed cutoff). Fine bracket of (3.1) = c_2 ln L² + η − η, κ_W^F cancels exactly. "Fine" = log det X − ½ log det K with raw H at the wave = the lattice background-field one-loop Γ; its a² coefficient over the lattice tree coefficient is 2Nν^{(1)}(p) exactly (lattice p̂² in both). Correct.
- What is subtracted: nothing beyond the definition Γ^ex := Π̂ − S. (Cθ) ⇔ S(θ; L^k) − c k log L converges at fixed θ. Theorem A = (Cθ) + transfer θ → 0 by Lemma 1.3. Logic correct; content is entirely (Cθ).
- Lemma 1.3: uses (U) at the same C_U for all j incl. top level p = θ/L; geometric sum with L^{−2} per level; 1/(L² − 1) correct (sum < 1/(L²−1), = only as k → ∞).
- Theorem B: |S_k − ck log L| ≤ C_B correct (needs θ_* < 1 so c_2 ln(1/θ_*²) ≥ 0; else take abs). Window bound 2C_B, Cesàro, (iii) correct.
- (W), (PI), (M) not used anywhere in §3. Correct. But A6 (plane-wave β = Balaban β) and 𝔡_gf need k-uniform expansion-point bounds: the (PI)-type content is relocated into a uniform-in-k input, not removed.
- Lemma 4.1: envelope |K̂|^{−2} + |K̂|^{−2}|(K+θ)^|^{−2}, two distinct order-2 singularities in d = 4, integrable; DCT correct. (i) at a = 0: Δ_T = E^TΔ_ΛE, two-sided bound from U3_REPAIRS Prop. B (uniform in M), longitudinal part D_cD_c^T = |K̂|² exact. Proved for odd L. Inputs (ii) + pointwise convergence are hypotheses; "proved" applies to the conditional lemma only.
- Item 5: (U) is a uniform-in-j analyticity of the level data (Δ_j and its a¹, a² vertices at transfer p). The level data are outputs of the massless coarse recursion; "massive side" applies only to 𝔅_j^{−1}. KAPPA_BOUNDED_VERIFY §7–9 found the uniform C¹ bound on σ^(1) missing; (U) needs at least the plane-wave analogue (uniform p-smoothness of the a¹ vertex). The table also compares with BETA_FP_H/M, not with KAPPA Theorem K, whose (PI)/(M_j) are fixed-level only. So "open inputs of a weaker type" is not shown.
