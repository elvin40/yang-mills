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

## 3. Context: S123 Lemma 5.1 [I], TRUST_LEDGER B3, BETA_FP_H (3.1)
- S123 Lemma 5.1 [I] = identification of the plaquette forms of (2.1) with the covariant curl (midpoint transport). S123_VERIFY item 16 keeps it [I]. It enters (F) through LLL Lemma 2.1 (fibre separation, ghost cancellation), which Lemma 1.1 of the author uses. So it is on the (F) path.
- Ledger B3: "T1 Route K"; T1 = Theorem 2w. So (F) and all its inputs are on the Theorem 2w path (Route K).
- BETA_FP_H (3.1): [Fine(Λ) − Fine(Λ′)]/(n_2f²) → c_2 ln(Λ²/Λ′²). With Fine(Λ; f) = f²G(f/Λ²), φ := f/Λ′², λ := (Λ/Λ′)^{−2}: G(λφ) − G(φ) → n_2c_2 ln(1/λ). This is the author's form. STEPB §1 and §2.6 write G(φ) − G(λφ) → n_2c_2 ln(1/λ): sign slip in STEPB (both displays). Content unchanged: replace λ by 1/λ. CONFIRMED notational.
