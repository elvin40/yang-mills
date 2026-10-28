IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# BETA_FP_LEMMA43 verification (2026-10-27)

## 1. Read BETA_FP_LEMMA43.md (180 lines)
Claims as listed in the task. Next: context files.

## 2. Context read (BETA_FP §4, NUMERICS, U1 §3, §4.3, §6)
- U1 Lemma 3.2 (3.2)/(3.3) is the predecessor; Prop. 2.1 is a different regrouping of the same LHS (1.2).
- NUMERICS §1 uses Q̃D_k = 0 and ΔD = 0; Bord uses Δ + D_kD_k^T.
- Ghost data: U1 §6 "ghost 0.0048 of w = 0.2002" at L = 2, p = 0.4, Ng = 8.

## 3. Hand rederivation of Prop. 2.1 (2.1)-(2.2)
- (a) Jacobi: det(ι_k^TXι_k) = det X·det(ι_a^TX^{-1}ι_a). Correct.
- (b) KD = DX from ΔD = 0, so K^{-1}D_a = DX^{-1}ι_a; D_a^TK^{-1}D_a = 1; Q̃K^{-1}D_a = D_c s by (G1). Then 1 − D_a^TG_cD_a = sD_c^TS_KD_c s. Correct.
- (c) bordered-determinant identity det(K|_W)det(Q̃Q̃^T) = det K·det(Q̃K^{-1}Q̃^T). Correct.
- (d) det s cancels: log det X + log det s − (log det s) − ... Correct. Constant 0 exactly.
- (e) Δ_Λ = min ⟨B,ΔB⟩ = min ⟨B,(Δ+D_kD_k^T)B⟩ (shift by D_kλ). Shifting by Dλ (full group) moves Q̃B by D_cλ_a and zeroes D^TB, so min⟨B,KB⟩ over Q̃B ∈ V'+im D_c = Δ_Λ(V'); this is the Schur complement of S_K onto (im D_c)^⊥ = (E^TS_K^{-1}E)^{-1}. Correct. The det identity det S·det(E^TS^{-1}E) = det(D_c^TSD_c)/det(D_c^TD_c) is standard. (2.2) follows.
- Remark: (G1) part "Q̃D = D_cι_a^T" is the linearization of exact covariance of Ū, so it is exact at any U_0, not only the flux background. The part that needs order counting for the plane wave is ΔD = 0 (plane wave is not stationary). Author's (G1) bundles both; not an error.
- Caveat: on a periodic lattice D and D_c have constant zero modes (σ_3 constants in the flux background, all constants at U_0 = 1). Then det X = det(D_c^TD_c) = 0 and (2.2) holds only for per-cell densities or after removing the zero modes. Author assumes full column rank; fine for infinite-volume densities.

## 4. Lattice check of Prop. 2.1 (scratch script, deleted after the run; ym_oneloop pieces, 4⁴, L = 2, 18 s)
- Real CMP-109 averaging Q̃, full D, coarse D_c built independently from V = Ū(U_0). Random SU(2) backgrounds U_0 = exp(iεξ), ε = 0.3, 0.8 (no zero modes: rank D = 768/768, rank D_c = 48/48).
- (G1) exact at random backgrounds: |Q̃D_k| ≤ 8.5e−16, |Q̃D_a − D_c| ≤ 8.9e−16. So covariance needs no order counting; only ΔD = 0 does.
- Δ := P_⊥ H P_⊥ (forces ΔD = 0). LHS (1.2) vs RHS (2.2): 290.0, 1114.6; diff 3.6e−12, 1.4e−12 (relative 1e−14). (2.1): diff 3.5e−12, 1.6e−11. |Δ_ΛD_c| ≤ 1e−12.
- Control with the raw Hessian (|HD| ≈ 1): diff −3.9, −7.9. So ΔD = 0 is load-bearing.
- K is indefinite here (min eig −0.18, −1.4); the identity is algebraic and holds with |det|.
Verdict item (1): CONFIRMED, including constant 0 and the anchor cancellation.

## 5. Normalization, IR question, Lemma 4.1
- c chain: S_W = (2N/g²)·Σ(1 − Re tr U/N) so 1/g_B² = 2N/g²; d(1/g²)/d ln μ = 2b_0/(16π²); c = 2N·b_0/(8π²) = 11N²/(12π²) = 0.371511 (SU(2)); c_2 = c/2 multiplies ln(1/p²). Split −2/3 + 4 (gluon 10/3) + 1/3 (ghost) = 11/3 standard. Shell integral 2π²/(2π)⁴ = 1/(8π²). All correct.
- IR: the fine piece at a constant background is IR-divergent. Prop. 2.1 does not regulate it; the author regulates by the wave momentum P > 0 and takes P → 0 after the split (Cor. 3.1). The coarse piece DOES carry a compensating log, c_2 ln(1/P²), in P, not in Λ. (3.2) is exact only because ρ(Λ) is defined as the remainder; "the whole log Λ is in the fine piece" is equivalent to ρ(Λ) = o(log Λ), i.e. to (ii)/(iii). The author states this equivalence; the headline "(i) proved" should read "c identified; Λ-independence of ρ reduced to (H)".
- Lemma 4.1: Δ_Λ − Δ_∞ = Δ_Λ(S_∞ − S_Λ)Δ_∞ with Δ_MS_M = P′_T (Prop. A) gives |K|²·Λ^{−2}·|K|² = Λ^{−2}|K|⁴, using the scalar intermediate bound of O5 (U3_REPAIRS line 28). U3_REPAIRS line 135 already observed the |K|^{4−|α|} weight numerically. Correct for odd L, centered blocks.
- Moore–Osgood step: uniform convergence on (0, P_0] plus existence of lim_P f_Λ gives the interchange and |ρ(Λ) − ρ_∞| ≤ sup|f_Λ − f_∞|. Correct. Prop. 4.2 Step 3 bound (ε′P²) is loose but harmless (ε′ suffices).

## 6. Ghost data (results/mom_*_trans.json, β_gh := 4·ghost/(L⁴(1 − cos p)))
- L = 2, Ng = 12: 0.01539 / 0.01534 / 0.01516 at p = 0.1 / 0.2 / 0.4; p → 0 ≈ 0.0154. Author's 0.0151 is the p = 0.4 value.
- L = 3, Ng = 8: 0.0346 / 0.0370 / 0.0362 (Ng = 6: 0.0140 / 0.0314 / 0.0350; not converged, rising with Ng). L = 4, Ng = 6, p = 0.2: 0.0464.
- Quantity: the measured number is β_gh ≈ 0.015, to compare with the author's 0.0153 (log share 0.0468 plus (1/11)c_2 ln G_0 = −0.0315). The bare (2/11)·c log 2 = 0.0468 is not a measurable on its own.
- Heuristic 2/11 predicts 0.0153 / 0.0427 / 0.0622 (L = 2/3/4); a 1/11 share predicts 0.0154 / 0.0291 / 0.0388. Data 0.0154 / ≈0.037 / ≈0.046 (both L ≥ 3 values under-converged, low). Δc_gh(3−2) ≈ 0.022 vs 0.0274 predicted. The author says L = 3 is "not yet measured": false, the data exist. Verdict: between the two, slightly favoring 2/11; inconclusive. The L = 2 match is not evidence (dropped constants are O(c_2/11)).
- Side observation: the ghost converges slowly in Ng (L = 2: Ng = 4 gives 0.0042, Ng = 12 gives 0.0152). This is qualitative support for a soft ghost IR scale below the block scale (§6(1)).

## 7. Item 5 and (H)
- Two-level L = 2 (Ng = 6) and single L = 4 (Ng = 6), p = 0.2: ghost parts are identical (0.05915408611819, diff 3e−16), as expected for the same Dirichlet ghost. The whole 0.21 gap sits in the gluon bordered block. The two-level Ng = 4 → 6 change is 0.18, the same size. Grid error or family dependence: undecided. The flag is correct.
- (H): stronger than U3 Lemma 5.1 (IR weights, P-derivatives, |α| ≤ 4 via Taylor). The "dimension-4 universality" sketch treats Δ_Λ(V) as the Hessian of a gauge-invariant coarse action at a stationary point. The fine plane wave is not stationary (SOURCES_D1_VERIFY); the missing Lagrange-multiplier term is O(aP³), exactly the borderline order of (4.2) for m = 1. Its Λ-convergence is part of (H) and is not argued. Correctly labeled a hypothesis.

## 8. Grades
1. Prop. 2.1: CONFIRMED (hand proof + real-lattice check to 1e−14 relative; (G1) covariance exact at any background, ΔD = 0 is the only order-counting input).
2. (i) and c: CORRECTED (scope). c = 0.371511, b_0 chain, 10/3 + 1/3 all correct. But (3.2) is exact by definition of ρ; the coarse piece carries the compensating IR log c_2 ln(1/P²); "no log Λ in the coarse piece" is equivalent to (ii)/(iii), not part of (i).
3. (ii)–(iii) reduction: CONFIRMED as a conditional reduction (Lemma 4.1 odd L, Moore–Osgood, power counting). (H) itself UNSUPPORTED (open; sketch has the stationarity gap above). L = 2 open, as stated.
4. Input (b) correction: CONFIRMED (G_0 = LW P_1, m_gh = 2.5405/Λ, anchor block log Λ/(8π²)). 2/11 heuristic: UNSUPPORTED. L = 3 data exist (≈ 0.037, under-converged) vs 0.0427 (2/11) and 0.0291 (1/11); L = 4 ≈ 0.046 vs 0.0622 / 0.0388. "Not yet measured" is false.
5. S_1(4) vs S_2(2) flag: CONFIRMED; the gap is entirely gluon-bordered and equals the known grid error in size.
