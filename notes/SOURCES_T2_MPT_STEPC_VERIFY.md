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

## 4. Rerun of numerics/t2_mpt_heat4.py (Mac, 19.5 s)
- Part B: max|ã − predicted| = 3.6e−16, 5.3e−16, 9.7e−16 (α = 0.3, 1, 2); antilinear residue ≤ 8.5e−16; |σ − (a_0 + αa_1 + α²a_2)|/α³ = 0.0013. All match §7.1.
- Part A: c_A/t = 0.328177, 0.306485, 0.297734, 0.293907, 0.292811, 0.292288, 0.292019, 0.291654; d/(t(1+t)²) = 0.01177 … 0.05718. All match §7.2.
- Flag (minor): the check "σ(K) = σ(−K) exactly" in symbol_check is vacuous (it compares cos(x) with cos(−x)). Evenness holds analytically anyway (6.3 formula is a function of cos and of s_0s_1).
- t = 80 entry (−0.0104): α⁶ contamination checked by hand. Continuum x⁶ coefficient of x cosh 2x/sinh x = 0.01462; Richardson bias −4eα⁴, e = 0.01462t⁵/(2π); at t = 80, α = 0.005: t·shift = −0.019. Observed −0.0104 − 0.0095 = −0.0199. Author's explanation CONFIRMED.
- d/t³ = d/(t(1+t)²)·((1+t)/t)²: 0.0600, 0.0582, 0.0576 at t = 10, 20, 40; distance to 0.05615 halves per doubling (O(1/t)). Consistent with the continuum limit 0.35278/(2π) = 0.05615. (x⁴ coefficient = 2/3 − 1/3 + 7/360 = 0.352778, checked by hand.)

## 5. New numerics: numerics/t2_mpt_verify_thmA.py (Mac, 221 s)
Box R = 80, A′_α from GAPRIME2 Lemma 1.1 (author's builder), t-grid dt = 0.1 to T = 150, W by (1.1) with exact p_t(0)² = (e^{−2t}I_0(2t))².
(i) Theorem A after the t-integral (not done by the author). R := W(α; m²) − α²w̃_2(m²), w̃_2 from Richardson (α = 0.0025, 0.005).
| m² | α | x = m²/α | R m⁴/α⁴ | w̃_4m⁴ (α⁴ term) |
| 0.24 | 0.01 / 0.02 / 0.04 | 24 / 12 / 6 | 0.00527 / 0.00528 / 0.00531 | 0.00527 |
| 0.12 | 0.01 / 0.02 | 12 / 6 | 0.00490 / 0.00492 | 0.00489 |
R m⁴/α⁴ is bounded and equal to the α⁴ coefficient up to the edge x = 6. Theorem A's form holds; no large-t loss at the edge.
(ii) Lemma S1′ (k = 0), scalar 𝔏_α: E[A_t⁴; X_t = 0] = 24 × (α⁴ coefficient of T_α(t)).
| t | 1 | 2 | 5 | 10 | 20 | 40 | 60 |
| E[A⁴;X=0]/(t(1+t)²) | 0.0089 | 0.0156 | 0.0250 | 0.0302 | 0.0334 | 0.0350 | 0.0354 |
| ratio to 7t³/(60π) | 0.957 | 0.944 | 0.971 | 0.984 | 0.991 | 0.991 | 0.985 |
Order t³ is sharp; the brief's t² is refuted. Continuum E[A⁴;X=0] = 24·7t³/(1440π) = 7t³/(60π) confirmed (the t = 60 dip is α⁶ bias, 2αt = 0.3).
