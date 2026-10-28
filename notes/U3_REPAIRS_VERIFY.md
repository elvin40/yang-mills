# U3_REPAIRS verification

Independent check of U3_REPAIRS.md (2026-10-27).

## 1. Inputs read
U3_REPAIRS.md in full; U3_GAUSSIAN_RG.md §2–§6; U3_VERIFY.md §4, §5, §8, §10 (P5, P6, P8).

## 2. Prop. A (deformed-momentum identity), rederived by hand
- Continuum: K̂_μ/(iq_μ) = e^{iK_μ/2}σ_μ, so R_∞ = E diag(σ). diag(σ)q = (2 sin(K_μ/2))_μ for every l, and E times this vector is K̂/i. So R_∞ P^c(q) R_∞^† = diag(σ²) − K̂K̂^†/|q|². Times χ_∞²/|q|² this is (2.1). Correct.
- Lattice: with s = sin(k_l/2), q̃ = 2Ms, K̂_μ/(2is_μ) = M e^{iK_μ/2} sin(K_μ/2)/(q̃_μ/2). |k̂_l|² = |q̃|²/M², χ_M² = Π(σ^M)², and M^{−4}·M²·M² = 1. So t^lat = F(K, q̃_l). Correct.
- Minor: σ^M_{l,ρ} = (−1)^{l_ρ} D_M(k_{l,ρ}), not D_M(k_{l,ρ}). Only squares and the l-independent vector diag(σ^M)q̃ = S̃ enter, so nothing changes.
- F is invariant under l_ρ → l_ρ + M (q̃_ρ and σ^M_ρ both flip sign), so the representative choice is free. Correct.
- M = 1 check: d_μ = 1/|K̂|², Δ_1 = |K̂|²P′_T. Correct.
Grade so far: Prop. A CONFIRMED.

## 3. Prop. B constants, rederived
- |σ^M| = |D_M| ≤ 1; |q̃_ρ| ≥ (2/π)|q_ρ| on |k_ρ| ≤ π; so w_l ≤ (π²/4)|q_l|^{−2}Π min(1, π² sin²(K_ρ/2)/q_ρ²).
- l ≠ 0: |q_ρ| ≥ π|l_ρ| (|K_ρ| ≤ π), |q_l| ≥ π, so term ≤ ¼Π_{l_ρ≠0} l_ρ^{−2}. Σ_{l≠0} = ¼[(1+π²/3)⁴ − 1] = ¼(338.7 − 1) = 84.4 < 85. Correct.
- 85 ≤ 85·16/|K̂|² = 1360/|K̂|²; l = 0 gives π²/(4|K|²) ≤ π²/(4|K̂|²). C_1 = 1362.5 ≤ 1363. Correct.
- Lower: σ^M_{0,ρ} ≥ sin x/x ≥ 2/π (x = K_ρ/2, M sin(x/M) ≤ x), so w_0σ_μ² ≥ (2/π)^{10}/|K|² ≥ (2/π)^{12}/|K̂|² (|K| ≤ (π/2)|K̂|). c_0 = (2/π)^{12} = 4.434e−3. Correct.
- The upper bound in B is used for P′S P′; the same series bounds each d_μ, which §2.5 needs. Fine.
Grade: Prop. B CONFIRMED (c_0 = (2/π)^{12}, C_1 ≤ 1363).

## 4. O5 analyticity, rederived
- Lemma D: J^† maps K̂^⊥ onto q̃_0^⊥ (Σ q̃_μ conj(j_μ)v_μ = iK̂^†v); J^{−1}K̂ = iq̃_0; J^{−†}ΩJ^{−1} inverts P′diag(d)P′ on T′ and kills K̂. Checked line by line. Correct.
- Neumann: P X P = τ^{−1}(P + τPΓP) on q̃_0^⊥; inverse τΣ(−τ)^n(PΓ)^nP; n+1 projectors pair with τ^{n+1} to give A_0^{−(n+1)}(ΠΓ)^nΠ. Correct. (2.7) has no projector and no 1/|K|.
- Strip near K = 0, uniform in M. With K_* = 0 the lattice representatives have |k_ρ| ≤ π(M−1)/M; for |K| ≤ η, z = k_ρ has |Re z| ≤ π + 1/2, |Im z| ≤ 1/2. φ(z) = sin(z/2)/(z/2) has zeros only at 2πZ∖{0}, outside this set. So q̃_ρ = q_ρφ(k_ρ) ≠ 0 for l_ρ ≠ 0, and σ^M_ρ is analytic for l_ρ = 0 (|K_ρ| < 2πM). Re of the bilinear |q̃|² ≥ c(1+|l|)² − O(η²) for l ≠ 0. All bounds are in terms of k_ρ and l only, not M. So each l ≠ 0 term is analytic on a fixed polydisc, bounded by C m_l, and Σ m_l < ∞. The sum g^M is analytic and bounded uniformly in M on |K| ≤ η_0. Correct.
- Rate: |q̃_ρ − q_ρ| ≤ C|q_ρ|³/M², |∂_{q_ρ}F| ≤ Cm_l(1/|q_ρ| + |q_ρ|/|q|²), product ≤ C m_l(1+|l|)²/M²; Σ(1+|l|)²m_l = (Σ_n(1+|n|)^{−2})⁴ < ∞. Tail Σ_{|l|_∞ ≥ M/2} m_l ≤ CM^{−3}. Correct. No log: Cauchy estimates cost no powers of l. Correct.
- Far zone (2.9): checked Y − YnN^†Y/(n^†Yn) inverts P′DP′ on T′ and kills n. Correct. Denominators bounded below by Prop. B uniformly in M. Correct.
- Small defects (not load-bearing): (a) Lemma C for l = 0 needs |K_*| > 4η strictly (Re|q_0|² ≥ (|K_*|−2η)² − 4η²); §2.5 uses |K_*| ≥ 8η, so fine. (b) Cauchy factor on B_{ρ_1} at |K| ≤ ρ_1/2: the polydisc radius that fits is ρ_1/4, so (4/ρ_1)^{|α|}, not (2/ρ_1)^{|α|}. Constants are existential anyway. (c) The claim |φ−1| ≤ 0.48 is checked numerically in §5 below.
Grade so far: O5 CONFIRMED (minor constant slips).

## 5. O6, rederived
- Lemma E (bordered): x_1 = C^†(CC^†)^{−1}g, |x_1| ≤ |g|/s; PAPx_0 = P(f − Ax_1) since PC^† = 0; |x| ≤ |f|/a + κ|g|/s; C^†y = f − Ax gives |y| ≤ κ|f|/s + ακ|g|/s². |(x,y)| ≤ |x|+|y| ≤ (1/a+κ/s)|f| + (κ/s+ακ/s²)|g| ≤ (sum of the four coefficients)·|(f,g)|. Correct.
- α: ‖Δ_j(k)‖ ≤ 16/c_0 (Prop. B at level-j momenta), ‖DD^†‖ ≤ max|k̂_l|² ≤ 16. α = 16(1 + 225.5) = 3624. Correct.
- F3: Λ of U3 (1.1) has row ℓ¹ norm L^{−4}Σ_x|x−y|_1 ≤ 2(L−1), column ℓ¹ norm ≤ 1 (monotone paths stay in one block). Schur test gives ‖Λ‖ ≤ (2(L−1))^{1/2}. Correct.
- Lemma F: l = 0 algebra (S²/s − L²s, |S−Ls| ≤ |x|³/6, |s| ≥ 2|x|/(πL)) gives (πL/24)|K|³ ≤ (π⁴/48)L|K̂|² = 2.03L|K̂|². l ≠ 0: (E2) |χ_L(k_l)| ≤ |sin(K_ν/2)|/(L sin(π/2L)) ≤ |K|/2, ‖R‖ ≤ L, gives (π/4)L|K̂|². Σ_l|x_l| ≤ L²|x|, times L^{−2}. Plus (2L)^{1/2} ≤ 1.5L. Total 3.53L ≤ 3.6L. Correct.
- Lemma G: Q̂(k_0)^†v = χR^†v ∈ T(k_0) since Rk̂_0 = K̂; |R_μ(k_0)| ≥ 2L/π, χ ≥ (2/π)⁴. Correct.
- s: |x_1| ≤ (L/σ_0)|w_T|; |r| ≤ (1 + 14.4L²/σ_0)|w|; x_2 = tD_fδ_0, Q̃x_2 = tK̂L^{−2}, |x_2| ≤ (π/2)L|r|. 1/σ_0 = 9.563: s^{−1} ≤ (9.56 + 1.57 + 216.3)L³ ≤ 228L³. Correct. Mechanism (pure gauge mode at l = 0 carries the K̂ row; χ_L(k_l) = O(|K|) for l ≠ 0): correct.
- a: Step 1 |ν_c| = |cv| ≤ 3.6L|x_T| correct. Step 2: (E1) |k̂_l|² ≥ 4/L² for l ≠ 0; soft mode |x_{T,0}| ≤ (πL²/σ_0)(Σ_{l≠0})^{1/2}; a_T = 4/(C_1L²(1+π²L⁴/σ_0²)) ≥ 4/(1363·903.6 L⁶) = 3.25e−6 L^{−6}. Correct. Step 3: D_f^*x_T = 0; ⟨λ,N_kλ⟩ ≥ (4/L²)Σ_{l≠0}|λ_l|² ≥ 4L^{−6}|λ|² via λ_0 = −Σ_{l≠0}λ_l. g_0 = 4L^{−6}. m = 16·3.6L = 57.6L ≤ 58L. Correct. Step 4 two-case argument: both cases satisfied by the stated a; 64m²/g_0² = 13456L^{14}; a ≥ 1/(3.08e5·13665 L^{20} + 4L^{12}) ≥ 2.3e−10 L^{−20}. Correct.
- Ghost: G = ΠN_kΠ on Λ_gh ≥ 4L^{−6}, j-independent. Correct.
- K = 0 by continuity of every block and closedness of {‖X^{−1}‖ ≤ b}. Correct.
- Scope (the question asked): the proof covers the ONE-STEP bordered matrix of (6.1): level-j form Δ_j on the L⁴ umklapp momenta, one-step Q̃ (block L), ghost domain = λ vanishing on the level-(j+1) centers. This is hypothesis (b) of Thm 6.1. It does NOT cover a bordered matrix with the composed constraint Q̃^{(j)}_F of (5.1)/Lemma 5.1 (Wilson Hessian on the finest lattice, block M = L^j). For that matrix at F = 0, the composed-constraint information is only Prop. B (bounds on the Schur complement Δ_M), which is enough for the trivial-background Δ_M but gives no bordered inverse. Note: the same Step 3 with N = M⁴ fine points per K gives a ghost gap 4M^{−6}, which is NOT uniform in j in fine units. So the argument does not transfer to the composed constraint without rescaling. Nothing at F ≠ 0.
- The numerics in U3_REPAIRS §4 use a surrogate Λ := L^{−2}(χ_L(k_l)−1)∘D_f^{−1} on H_L, 0 on H_T. It satisfies F1 but is not U3 (1.1). So the numbers 177/0.085/0.21 are for a different (also admissible) Q̃; the proved bounds apply to any Λ with F1 and ‖Λ‖ ≤ (2L)^{1/2} (surrogate max 0.38, so they cover it).
Grade so far: O6 CONFIRMED for the one-step bordered matrix; does not cover the composed constraint.

## 6. Numerics run 1 (heredoc, numerics/.venv/bin/python -I, 2.4 min, own code)
- Prop. A: Δ_M from (2.3) literally (R_M, P_T(k_l), χ_M, compression inverse) vs (A.1) at K = (1.1,−0.7,0.4,2.0): 4.4e−15 (M=3), 1.8e−14 (M=9); at |K| = 0.03, M = 27: 6.5e−19. Author: 4.4e−15, 2.7e−14. Agrees.
- Rate near 0 (own generic direction, Δ_∞ truncated |l_ν| ≤ 14, h = |K|/4), max entry of value/1st/2nd difference of Δ_M − Δ_∞: |K| = 0.3: M = 3, 9, 27: 9.3e−5/1.3e−3/1.3e−2 → 1.0e−5/1.5e−4/1.4e−3 → 1.2e−6/1.7e−5/1.6e−4. |K| = 0.03: 9.2e−9/1.3e−6/1.2e−4 → 1.0e−9/1.4e−7/1.4e−5 → 1.1e−10/1.6e−8/1.5e−6. All ratios 8.97–9.00 = L². Second differences scale like |K|² (|K|^{4−|α|}). Author's 9.0 reproduced.
- φ on {|Re z| ≤ π+½, |Im z| ≤ ½} (1201×201): max|φ−1| = 0.478, |φ| ∈ [0.532, 1.010]. Author's 0.479, [0.53, 1.02]. Agrees.

## 7. Numerics run 2: bordered matrix, L = 3, surrogate Λ (as in U3_REPAIRS §4), own code
- Generic direction, |K| = 2, 0.3, 0.03, 0.003, j = 0,1,2: ‖𝔅^{−1}‖ = 7.4–7.8, 10.5, 11.7, 11.7; min A on ker Q̃ = 0.519, 0.095, 0.085, 0.085; σ_min(Q̃) = 0.304, 0.333, 0.333, 0.333; |Q̃DΠ| ≤ 1e−16. Agrees with author.
- Corner K = (π−1e−6)(1,1,1,1): ‖𝔅^{−1}‖ = 103.5 (j=0), 176.7 (j=1), 193.0 (j=2). Author quotes 177 at M = 3 only, and states "≤ 177 for j = 0,1,2". The j = 2 corner value 193 exceeds 177. CORRECTION to the numerical claim; checking j = 3 and j = ∞ next.

## 8. Numerics run 3: corner growth with j
- Corner K = (π−1e−6)(1,1,1,1), L = 3: ‖𝔅^{−1}‖ = 103.5, 176.7, 193.0, 195.1, 195.3 for M = 1, 3, 9, 27, ∞ (Δ_∞ truncated |l_ν| ≤ 10). The sequence converges (consistent with O6), but the stated "≤ 177 for j = 0, 1, 2" is false at j = 2.
- 60 random K, M = 9: max 173.5. (An extra test at K with exact zero components hit 0/0 in R = K̂/k̂ in my code; discarded, not a finding.)

## 9. Grades
1. Prop. A (q̃ = 2M sin(q/2M) identity, K̂K̂^† part removed by P′_T, four scalars d_μ, 3e−14 match): CONFIRMED. Cosmetic: σ^M = (−1)^{l_ρ}D_M, not D_M.
2. Prop. B (c_0 = (2/π)^{12}, C_1 ≤ 1363): CONFIRMED.
3. O5 ((2.7) projector-free, analytic at K = 0 uniformly in M, C_αM^{−2} for all α, no log): CONFIRMED. The strip near 0 is uniform in M: all bounds depend on k_ρ ∈ {|Re| ≤ π+½, |Im| ≤ ½} and on l only, φ is zero-free there, and Σ_l m_l < ∞. Minor: Cauchy factor (4/ρ_1)^{|α|}, and Lemma C needs |K_*| > 4η strictly.
4. O6 (b(L) = 1/a + 2κ/s + ακ/s², α, s, a, ‖G^{−1}‖ ≤ L⁶/4): CONFIRMED for the one-step bordered matrix of (6.1), which is Thm 6.1 hypothesis (b). Scope: it does not cover a bordered matrix with the composed constraint of (5.1)/Lemma 5.1 (there only Prop. B is available, and the ghost gap of Step 3 would be 4M^{−6} in fine units), and nothing at F ≠ 0.
5. Mechanism (l = 0 pure gauge mode carries the K̂ row; χ_L(k_l) = O(|K|) for l ≠ 0): CONFIRMED.
6. Numerics: CORRECTED. Ratios 9.0, a = 0.085, σ_min ≥ 0.21 region, and Prop. A residuals reproduced. "‖𝔅^{−1}‖ ≤ 177 for j = 0,1,2" is false: corner value is 193.0 at j = 2 (195.1 at j = 3, 195.3 at j = ∞); the 177 came from M = 3 only. The numbers use a surrogate Λ, not U3 (1.1); the proof covers both.
