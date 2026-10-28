# LEMMA_DPRIME verification (independent)

2026-10-27. One section per step.

## Step 1: files read
Started. Reading LEMMA_DPRIME.md in full.
Read: LEMMA_DPRIME.md §1–§6 in full; LEMMAS.md Lemma D, Lemma E; LEMMAS_DE_VERIFY.md §1.3–§1.5; THEOREM2_PROOF_VERIFY.md Point 5; THEOREM2.md §1.

## Step 2: rederivation of (a)–(c)
- (P2): β_j(g) ≥ β_j(0) − C_1 g ≥ −B − β_∞/4 = −B′ for g ≤ γ. So the tail bound at g > 0 is −J·B′, not −J·B. The β_∞/4 is the perturbation budget C_1γ ≤ β_∞/4. At g = 0 the bound −J·B holds. CORRECT.
- (P3): j > J ⇒ β_j(g) ≥ β_∞/2 − β_∞/4 = β_∞/4 ≥ 0. Late terms only help. Early indices in {k+1..K} are a subset of {1..J}, so #early ≤ J. T ≥ −J·B′ = −D, uniform in k, K. CORRECT.
- Bracket: F̃(u_0) = u_0 − T̃(0,K), T̃ ∈ [−D, B′K] for every u_0 (clamped couplings lie in ]0,γ]). F̃(t−D) ≤ t; F̃(t+B′K) ≥ t. The signs are right this time (left end low, right end high). IVT on [t−D, t+B′K] gives u_0*. CORRECT.
- Clamp: ũ_k = ũ_K + T̃(k,K) ≥ t − D ≥ 1/γ² iff t ≥ 1/γ² + D iff g ≤ g_1. Bound derived from the clamped flow first, so no circularity. u_0* ≥ 1/γ² > 0, so g_0 is defined. CORRECT.
- Upper bound: T ≤ B′(K−k) by (P1), no constant. CORRECT.
- Lower bound, k < J: e ≤ J − k early terms, K − k − e late terms. T ≥ (β_∞/4)(K−k) − (B′ + β_∞/4)e ≥ (β_∞/4)(K−k) − J(B + β_∞/2). The extra β_∞/4 in D′ is the late-term credit that the e early slots do not earn. Case K ≤ J included. CORRECT. (Slightly loose: e ≤ J − k, so J − k could replace J; harmless.)
- Sharpness note: with C_1 = 0 and β_1..β_3 ≡ −0.8, K = 3, the exact threshold is t ≥ 1/γ² + 2.4 = 1/γ² + J·B. So g_1 is sharp up to the β_∞/4 margin in B′.

## Step 3: (d), K_0, Remark 4
- k ≥ J: T ≥ (β_∞/4)(K−k). k < J, K ≥ K_0: K − k ≥ K − J ≥ ⌈8D′/β_∞⌉ ⇒ D′ ≤ (β_∞/8)(K−k) ⇒ T ≥ (β_∞/8)(K−k). CORRECT.
- Bound holds for all clamped trajectories, so F̃(u_0) ∈ [u_0 − B′K, u_0 − (β_∞/8)K]. IVT on [t + (β_∞/8)K, t + B′K] (nonempty: B ≥ sup|β_j(0)| ≥ β_∞, so B′ > β_∞/8). On the solution ũ_k ≥ t + (β_∞/8)(K−k) ≥ t ≥ 1/γ². So all g ≤ γ work for K ≥ K_0. CORRECT. This is Lemma D's interval, not the wrong one of LEMMAS_DE_VERIFY §1.3.
- Step 8: β_j(0) ≥ β_0 for all j (j > J: ≥ β_∞/2 ≥ β_0). C_1 g ≤ β_0/2 ⇒ β_j(g) ∈ [β_0/2, B + β_0/2]. Lemma D applies (C¹/C_1 g form of Lemma E, Remark (i) of LEMMAS.md). CORRECT.
- Remark 4: u_2 = u_3 + β_3 = 1/γ² − 0.8 < 1/γ² ⇒ g_2 > γ for every g_0. CORRECT. It needs β_j for j ≥ 4 to be filled in so that (iii) holds; the toy model of §4 does that. It shows that g = γ fails at K = 3; it shows g ≤ g_1 is sufficient and sharp up to β_∞/4 (C_1 = 0), not that g_1 is the exact threshold in general.

## Step 4: CMP 122 page images (I p. 192 = pdf 18, I p. 183 = pdf 9; II pp. 385–387 = pdf 31–33)
- Passage A, image of I p. 192: "δ′_j ≤ (1 + β_0)² (k − j)^{β_0} δ′_k ≤ (1 + β_0)² N_0^{β_0} δ′_k, so N_0 δ′_j ≤ (1 + β_0)² N_0^{1+β_0} δ′_k < 4N_0² δ′_k". The factor is (1+β_0)²(k−j)^{β_0}, a power of (k−j). LEMMA_DPRIME §5 reads it as (1+β_0)^{2(k−j)β_0}: MISREAD.
- Definition, image of I p. 183 (after (1.27)): "δ′_j = g_j A_1 p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, p_1 < p_0". The factor is g_j, not g_j^{1/4}: §5 MISREAD.
- Corrected check of A under Lemma D′. Ratio δ′_j/δ′_k = h(u_j)/h(u_k), h(u) = u^{−1/2}(log u)^{p_1}. d log h/d log u = −1/2 + p_1/log u < 0 once log γ^{−2} > 2p_1. So h decreases on [γ^{−2}, ∞). With u_j ≥ u_k − D: ratio ≤ (u_k/(u_k − D))^{1/2}. This is ≤ (1+β_0)² (≤ RHS for k − j ≥ 1) once u_k ≥ D/(1 − (1+β_0)^{−4}) (≈ 2.42 D at β_0 = 1/7). So γ^{−2} ≥ 2.42 D plus log γ^{−2} > 2p_1 suffice. The upper side u_j ≤ u_k + B′(k−j) is not even needed, since h decreases. Conclusion of §5 for A survives; its constants (3.8D, exponent 1/8) are wrong.
- Passage B, images of II pp. 386–387: (1.86) and "2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1 + β_0)^{−1} p_0(g_{j+1})" read correctly. Its use (1.88): "≤ κ_{j+1}(Z) − 2(1+β_0)^{−1}p_0(g_{j+1}) + O(1)3(100M)^d R_{j+1}^{d+2} ≤ κ_{j+1}(Z) for p_0 large and γ small enough". So the slack is not consumed elsewhere at this step; the term only has to beat O(1)R^{d+2}. The §5 fix (u_k ≥ 2D ⇒ log u_i ≥ log u_k − log 2 ⇒ p_0 ratio ≥ (1 − log 2/log γ^{−2})^{p_0} ≥ (1+β_0)^{−1} for γ small given p_0, β_0) is correct. Order "p_0 large, then γ small" matches Balaban's.
- Note: (1.89) T_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k)) is single-scale.

## Step 5: further cross-scale uses (grep + page images)
- MISSED by §5, image of II p. 381 (pdf 27): factor exp(−(1/4)g_m^{−2}B_3^{−2}(1/2)ε_m²) "for some m satisfying j − N ≤ m ≤ j" is bounded by exp(−(1/8)B_3^{−2}(1+β_0)^{−2}A_0²p_0²(g_j)); and exp(−γ_0 g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0 4(1+β_0)^{−2}A_1²p_1²(g_j)). These are comparisons C and D: p_0(g_m) ≥ (1+β_0)^{−1}p_0(g_j) and p_1(g_m) ≥ (1+β_0)^{−1}p_1(g_j) for m ≤ j, same type as B (earlier scale, fixed multiplicative slack). The §5 fix covers them: log u_m ≥ log u_j − log 2 when u_j ≥ 2D, so p_i ratio ≥ (1 − log 2/log γ^{−2})^{p_i}, i = 0, 1.
- II p. 389 (pdf 34) "−2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(1/4)p_0(g_k)" (β_0 = 1/7): single scale.
- Grep for "monoton": no hits in I or II. Confirmed.
- MISSED by §5, image of I p. 198 (pdf 24), (1.94): "B_3δ′_k + L^{−(k−h)}O(1)B_3²B_5M^6ε_k ≤ B_3(1+β_0)N^{1/2}(A_1p_1(g_h)/(A_0p_0(g_h)))ε_h + … < αε_h", with h < k, k − h ≤ N, and "N ≤ O(1)(log g_k^{−2})^ν ≤ O(1)(1+β_0)(log g_h^{−2})^ν". This is comparison E, in the REVERSE direction: a later-scale quantity (δ′_k, larger coupling) is bounded by an earlier one (scale h). Under monotone growth it needs the upper side of (0.31): g_k/g_h = (u_h/u_k)^{1/2} ≤ (1 + β′N g_k²)^{1/2}, which is where N^{1/2} comes from. Lemma D′ (c) supplies u_h ≤ u_k + B′(k−h) with no constant, so E survives (constant β′ → B′). The log comparison log u_k ≤ (1+β_0)^{1/ν} log u_h uses u_k ≤ u_h + D (D′ lower side) and γ small. So the "upper bound without a constant" in (c) is load-bearing.
- Count: at least five cross-scale comparisons (A I p.192; E I p.198; C, D II p.381; B II p.386–387), not two. All have fixed multiplicative slack or N-dependent slack. The shrink-γ fix (γ^{−2} ≥ c(β_0, p_0, p_1)·D) covers all five. I did not read I–II line by line, and [III], [IV], CMP 109/116/119 are not checked.

## Step 6: toy numerics (numerics/.venv python heredoc, seconds)
Same toy model as §4. Constants reproduced: J = 3, γ = 0.3333, B′ = 0.9, D = 2.7, D′ = 3.0, g_1 = 0.2924, K_0 = 63. K ∈ {1,2,3,4,5,8,20,62,63,73,200} × g/g_1 ∈ {1, 0.7, 0.2}: 33/33 pass (clamp inactive, g_K = g, bound (c), literal (d) for K ≥ K_0). K = 3, g = g_1: g_0 = 0.3311, matches §4. K ∈ {63, 100}, g ∈ {γ, 0.9γ}: shooting on [t + (β_∞/8)K, t + B′K] succeeds, clamp inactive. Negative control g = γ, K = 3: min u·γ² = 0.7196, matches 0.72. Extra: at g = g_1 literal (d) first holds at K = 11, so K_0 = 63 is sufficient but loose (expected; it is a worst-case count).

## Step 7: grades
1. (a)–(c): CONFIRMED. −J·B′ is right (β_∞/4 = budget C_1γ for g > 0); IVT signs correct; clamp inactivity derived non-circularly; upper bound has no constant; D′ = J(B + β_∞/2) correct (J − k would also do).
2. (d), K_0, Remark 4: CONFIRMED. β_∞/8 and K_0 = J + ⌈8D′/β_∞⌉ correct; Step 7 uses Lemma D's correct interval. Remark 4 shows g = γ fails at K = 3; g_1 is sharp up to the β_∞/4 margin when C_1 = 0.
3. Remark 1: CORRECTED. The quoted hypothesis equals (b) word for word. But "Theorem 1's conclusion holds … without any further assumption" overclaims: the proof of Theorem 1 uses cross-scale comparisons, including (1.94), which needs the upper side of (0.31). (b) alone is not enough; (b) + (c) + γ^{−2} ≥ c(β_0, p_0, p_1)·D is what the five comparisons found need.
4. §5: CORRECTED. Passage A misread twice: the factor is (1+β_0)²(k−j)^{β_0}, and δ′_j = g_j A_1 p_1(g_j) (not g_j^{1/4}). Corrected A: ratio ≤ (u_k/(u_k−D))^{1/2} ≤ (1+β_0)² for u_k ≥ 2.42D and log γ^{−2} > 2p_1. Passage B read correctly; its slack only has to beat O(1)R^{d+2} in (1.88). Missed: C, D on II p. 381 (same type as B) and E = I p. 198 (1.94) (reverse direction, uses the upper growth bound). The shrink-γ fix is right for all five. Other papers not searched.
5. Numerics: CONFIRMED (33/33, controls reproduce to 4 digits).
6. Ledger: CORRECTED. L7 must list five comparisons, the two misreadings, and that E rests on (c)'s upper bound. L6 must be conditional on L7. L5 (admissible-only histories) remains open.
