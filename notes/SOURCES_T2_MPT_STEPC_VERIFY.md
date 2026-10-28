# Verification of SOURCES_T2_MPT_STEPC.md

Date 2026-10-28. Independent verifier. Firewall respected.

## 1. Read author file and LLL/STEPB context
- Read SOURCES_T2_MPT_STEPC.md §0–§8, SOURCES_T2_LLL.md + VERIFY, SOURCES_T2_F_STEPB.md + VERIFY.
- Claims located: Lemma 1.1 (proper time), S1′, V1′, Theorem A, Lemma C, Lemma F, Theorem B, §6 symbols, §7 numerics.
- First flags: (i) S1′ statement E[𝒜^n; Cl] ≤ C(1+t)^{n−1} vs proof (iv) giving (1+t)³ at n = 4; (ii) V1′(c) remainder bookkeeping; (iii) V1′(e) evenness needs D_α even in α as a function, including the hop terms; (iv) Theorem A(ii) uses n_{A′}(λ) ≤ 4C_d(λ + 3|α|), check τe^{−tA′} bound; (v) Theorem B uses w̃_2 at m² = λμ|φ| with Lemma F scaling.

## 2. Context read: GAPRIME2 Lemma 1.1, U3_LEMMA51 §3.1 + Lemma 3.4
- GAPRIME2 Lemma 1.1: A′ = cos φ c^†c + D′D′^† − 2 sin φ K, D′ = (∇_0, ∇_1)^T, so the gauge-fixing block is G_{μν} = ∇_μ∇_ν^* with b_μ indexed by the start site x (Landau gauge, T_0 phase e^{iαx_1}). Author's 6.1 matches.
- U3 §3.1/Lemma 3.1: link fields at midpoints, kernel = W(x, y)·a(x − y) with W the straight-line Wilson line; a is gauge invariant and origin independent. Lemma 3.4: total Hessian symbol even in k at every φ (point reflection), lattice errors even O(k²).
- So U3's "canonical symbol" = kernel between midpoint fields divided by the straight Wilson line. The author's reduced kernel ã (6.2) is exactly this object: half-link transport X → x, lattice word, y → Y, closed by the straight segment Y → X. Caveat 6.6 resolves: same convention (gauge invariance of a, U3 Lemma 3.1).
