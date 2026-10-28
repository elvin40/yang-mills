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

## 4. (N3) on 4⁴, L = 2, θ = π (scratch /tmp/n3, real CMP-109 Q̃, raw H, sparse LU; 24 s)
- Covariance Q̃D = D_cι_a^T exact at the wave: 5e−15.
- Prop. 2.2 core (determinant lemma at R ≠ 0): log|det Bord_D| − log|det Bord_K| − log|det N| = 4e−13. CONFIRMED.
- Control H^⊥ = P_⊥HP_⊥: ½ log det N − ½ log det N_0 = 1e−11 (N_0 := ww^T + s^+Y_0s^+, X^+ and w = anchor part of the σ_3-constant zero mode). Formula for the R = 0 form is right.
- Raw H: Y-defect = −8.517, −7.131, −6.321 at a = 0.01, 0.02, 0.03, i.e. 2 ln a + const to 1e−3. Not analytic in a. Cause: the σ_{1,2}-constant gauge modes are near-zero modes (eigenvalue O(a²)) on a torus; the a-expansion of 𝔡_Y fails there. N3 "as designed" does not measure 𝔡_Y. The prompt's "remove zero modes the same way" covers only the exact σ_3 mode.
- Heuristic fix: compress N and N_0 to the complement of the 3 coarse constant gauge directions (two choices, C and s^{−1}C, agree to 1e−6). Then analytic: a² coeff / tree = 0.0103 (β units; β_1 ≈ 0.63). Running 6⁴, L = 3 for the Λ-ratio.

## 5. (N3) 6⁴, L = 3 (210 s) and (N1) results
- N3 L = 3: identity err ≤ 1.2e−12, covariance 5e−14. Raw defect again 2 ln a + const (−7.10, −5.72, −4.91). Compressed defect a²/tree = 0.00337 (both projectors). Ratio L3/L2 = 0.00337/0.0103 = 0.33; author predicted Λ^{−2} ratio 4/9 = 0.44; Λ^{−4} would be 0.20. Decreasing, consistent with O(Λ^{−2}) or faster; two points, coarse torus 2⁴, heuristic compression.
- N1 level 0, L = 2, Ng = 12: β_1(0.8) = 0.64732. Fit on 0.1–0.8: C = 0.02776, D = −1e−4. Pure p², C_U = 0.028. Prediction holds.
- N1 level 0, L = 3, Ng = 6 (recomputed from w; old JSON β is ×1/4): 0.6839, 0.6930, 0.7681 at p = 0.2, 0.4, 0.8. 0.4→0.8 slope 0.156 vs 0.2→0.4 slope 0.076: p⁴ term is comparable to p² near p ≈ 0.6 (Lp = 1.8). Bound form |β − β(0)| ≤ 0.17p² still holds to p = 0.8 (β(0) ≈ 0.664). "No large p⁴ term" fails at L = 3.
- N1 level 1, L = 2, v2 sym, N = 8, Ng = 8: β_2 = 0.33334, 0.32685, 0.35499 at p_1 = 0.2, 0.4, 0.8. Non-monotone: fit C = −0.092, D = +0.188. Bound C_U ≈ 0.06 holds. Author's C_1 = −0.10 used one-sided Nyquist data (0.3412 → sym 0.3333).
- N2 with sym data: D_1(0.4) = 0.33251, D_1(0.8) = 0.32352, D_1(1.6) = 0.34171. Slope (0.4→0.8) −0.019, not −0.031. Inside 2C_U/(L²−1) = 0.13 (author's 0.07 is a factor-2 slip).

## 6. N = 12 level 1 and grades
- v2 sym, N = 12, Ng = 8: β_2(0.4) = 0.32283 (N = 8: 0.32685; β_2(0.2): 0.31679 vs 0.33334). Level-1 slope C ≈ +0.050 at N = 12 vs −0.054 at N = 8: sign set by aliasing, not resolved. D_1(0.4) = 0.31596, D_1(0.8) = 0.31950 at N = 12: slope +0.007.
- (U) vs data: the bound |β_{j+1}(p) − β_{j+1}(0)| ≤ 0.2p² holds at every point computed (L = 2 levels 0–1, L = 3 level 0, p ≤ 0.8). Uniformity in j is not testable with two levels; level-1 values carry N-aliasing of ±5%.
Grades:
1. Doubling identity, bulk cancellation, Lemma 1.3: CONFIRMED (identity is a definition; LW regime is right; 1/(L²−1) right).
2. Prop. 2.2 / Lemma 2.3: CONFIRMED (hand + lattice 1e−12 at raw H). 𝔡_Y count argued; N3 compressed defect 0.0103 → 0.0034 (L = 2 → 3). 𝔡_gf uniformity open, as stated.
3. Theorems A, B: CONFIRMED as conditional logic. (Cθ) ⇔ "S(θ; L^k) − ck log L converges": all content in §4.
4. Lemma 4.1: CONFIRMED (conditional; (i) from Prop. B, odd L).
5. Comparison: CORRECTED ((U), 𝔡_gf, A6 are uniform-in-k inputs; KAPPA Theorem K needs (PI)/(M_j) only per level; "weaker type" not shown).
6. Numerics: CORRECTED (slope −0.031 used one-sided Nyquist data: sym −0.019 at N = 8, +0.007 at N = 12; bound is 0.13 not 0.07; L = 3 has p⁴ ~ p² at p ≈ 0.6; N3 as designed gives 2 ln a from σ_{1,2}-constant near-zero modes).
New JSONs: numerics/results/betafp_v2_L2_N8_Ng8_j1_p{0.4,0.8}, betafp_v2_L2_N12_Ng8_j1_p0.4, mom_L2_Ng12_p0.8_trans, mom_L3_Ng6_p0.8_trans. Scratch /tmp/n3 deleted.
