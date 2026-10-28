# BETA_FP verification (independent)

Started 2026-10-27. One section per step.

## 1. Read BETA_FP.md in full (189 lines)
Claims located: Prop 1.1 (§1.1), (1.3) (§1.2), interpolation (§1.3), validation (§2 items 1-8), table (§3), Thm 4.1 / Lemma 4.3 (§4), B2 (§5).
First observations, to check:
- Prop 1.1 (ii): "FD_k block lower-triangular" needs Q̃_{i-1} D_k λ to depend only on λ at level-(i-1) anchors. The domain of λ is "vanishing at level-k anchors"; decomposition of this space into level shells is not stated explicitly.
- §1.3 admits the nested grid is not exact; the fixed-N tabulation is the approximation.
- Step 3 of §4.2: 𝒮(b) = 𝒞(Λ=b) is a definition, not an argument; "Wilson lattice at spacing 1/Λ" is still a lattice, so 𝒞 is the lattice quantity relabeled.

## 2. Code read (betafp_recursion.py, 270 lines)
- schur(): S0 = -[B0^-1]_22; Sp = [B0(k+p)^-1 Bp B0(k)^-1]_22; S2 = [B0^-1 B2 B0^-1 - 2 B0^-1 (Bmp B0(k+p)^-1 Bp + Bpm B0(k-p)^-1 Bm) B0^-1]_22. Re-derived: S(a) = -(B(a)^-1)_22, S' = (B^-1 B1 B^-1)_22, S'' = (B^-1 B'' B^-1 - 2 B^-1 B1 B^-1 B1 B^-1)_22; zero-transfer part of B1 B0^-1 B1 = the two terms in X. MATCHES (1.3).
- c/s split: + part = 1/2 e^{..}(M'[A_c] + i M'[A_s]) by linearity; zero-transfer second order = 1/2(M''[c,c] + M''[s,s]) = 1/2 M''[z, zbar]. Correct.
- Data.grid / from_symbols: centered coordinate r in [-N/2, N/2-1] for even N. The Nyquist shell x_mu = -N/2 is assigned to one side only. Off-grid evaluation of a Hermitian symbol then is NOT Hermitian unless the Nyquist weight is ~0. Level-2 D2 has weight 0.40 at |x| = 4 = N/2 (N = 8). This is a concrete mechanism for the level-2/3 Hermiticity errors (4e-2, 0.26) reported in §2 item 8, in addition to aliasing.
- Possible issue for Prop 1.1 step (i): the shift B -> B - D_k λ needs Δ_0 D_k = 0. Off-shell (plane wave with p^2 != 0 is not a Wilson critical point) Δ_0 D_k = O(a p^2). To check against NUMERICS/U1.

## 3. Prop 1.1 rederivation
- (ii) triangularity: Q̃_{i-1} D_k λ = D^{(i-1)}(λ|level-(i-1) anchors) by linearized covariance (holds at any background). Order λ by shells (level-(i-1) anchors minus level-i anchors). Row block i depends on shells >= i only; diagonal block = one-step ghost P_i D_(i)^T D_(i) on shell i. Needs nested anchors (level-i anchors ⊂ level-(i-1) anchors); true by construction of the composed averaging. Dimension count telescopes. CONFIRMED.
- (iii) Gaussian composition with δ(Q̃_k B) = ∫dV_1 δ(V_1 - Q̃_(1)B) δ(Q̃_(k)..Q̃_(2)V_1): each step gives det K_i^{-1/2} det(Q̃K_i^{-1}Q̃^T)^{-1/2} = |det Bord_(i)|^{-1/2}. No stray det(Q̃Q̃^T) factor. CONFIRMED.
- (i) F-independence needs Δ_0 D_k = 0. The plane wave is off-shell (Euclidean p^2 != 0): Hess A(U_0)·D_kλ ∝ ∇A = O(a p^2). U1 Lemma 2.3 and U1_VERIFY line 80 already state that the code's form is gauge-fixing dependent at p != 0, by O(a^2 p^4) per cell. Same applies to the per-step Δ_{i-1} D_(i) and to Remark (a). So (1.2) is NOT exact for log Z_k(U_0) at fixed p; it is exact for the p -> 0 coefficient S_k at fixed k (constants O(L^{2k})). Prop 1.1 as worded ("exactly", "const independent of the background") over-claims. Grade: CORRECTED (identity exact at a constrained critical point with the J-term; for the code's background, exact only for the F^2 coefficient).

## 4. (1.3) vs U3_LEMMA51 §3 (Moyal)
- U3_LEMMA51 §3 expands in a constant flux f (Moyal ⋆, derivatives ∂_K). BETA_FP (1.3) expands in the amplitude a of a plane wave with finite transfer p. Different expansions; not term-by-term comparable without a p-expansion.
- (1.3) re-derived from S(a) = -(B(a)^-1)_22 (step 2): exact Taylor coefficients per momentum. CONFIRMED.
- Structural consistency: near a node of the wave the charged sector sees D0(k - eA), whose a^2 term is ∂_k^2 D0 (kernel x^2 d0(x)). This is the plane-wave image of the P_2 and {𝔨_0, b} terms of (3.1)/(3.3) (which involve ∂_K up to order 4). So the x^2-weighted D2 (claim 4) is expected, and it is a gauge-variant piece that cancels against the transfer term at p -> 0. Consistent; not verified numerically term by term.

## 5. Reruns (Mac, numerics/.venv)
- j = 0 symbol route, Ng = 4, p = 0.4: w = 0.21611644659583076 vs stored 0.2161164465958312, diff -4.4e-16. CONFIRMED.
- Stored JSON values match the §3 table entries (all 13 files read).
- NEW: Nyquist handling. Data.eval and Level.grid put the torus shell x_mu = -N/2 on one side only. Level-1 data, N = 6, 20 random off-grid q: Hermiticity error of the interpolated symbol 0.20 (D0, |S| max 6.6) and 1.96 (D2, |S| max 7.2). With a half/half split of the Nyquist shell the error is 4e-14 / 7e-14. The one-sided minus symmetric difference is exactly anti-Hermitian (|diff| = herm err / 2).
- Effect: the anti-Hermitian part drops out of Re tr(M0^-1 M2) at first order, but it enters the Schur chain at second order (inverses, products) and the next-level nodes. This is a removable error source on top of aliasing, and a likely contributor to the level-2/3 node Hermiticity errors (4e-2, 0.26) that §2 item 8 attributes to aliasing alone.
- Level-2 node test, N = 6, SU(2), p_2 = 0.2: one-sided Nyquist gives node Hermiticity error 0.75 (D0, |S| 5.9) and 5.6 (D2, |S| 18.6). Symmetric split gives 2.7e-14 (D0) and 1.7e-2 (D2). So the level-2 "contamination" of §2 item 8 is mainly the one-sided Nyquist shell, not aliasing. Claim (12)/(4) attribution is CORRECTED.

## 6. Reduction (6), Lemma 4.3 (7), rate (8)
- Telescoping Φ(𝒟_j) = S_{j+1} - S_j: holds for the p -> 0 coefficient (see §3 above). CONFIRMED in that form.
- Step 1 "any integer block factors" and Step 4 additivity f(LL') = f(L) + f(L') need: one block-LL' step = block-L step then block-L' step, for the full data (Hessian AND background vertices of the averaging). U3 Lemma 1.2 gives this for Δ only. Balaban's path/loop-log terms (CMP 109 (0.4)) do not compose to the single-block family; U3_LEMMA51 §5 measures composed vs single-block F^2 limits differing by ~0.6% (d = 2). So additivity "exact" is UNSUPPORTED as stated; it holds only along Λ ∈ {L^k} with composed steps, where it is trivial.
- Step 3: 𝒮(b) = 𝒞(Λ = b) is a relabeling. With 𝒞 restricted to Λ = L^k (composed), (4.2) is lim(S_{k+1} - S_k), i.e. the original statement. Lemma 4.3 restricted there says S_k = c k log L + C_∞ + o(1); this is equivalent to (summable form of) the target, not a weaker two-scale statement.
- Useful sharpening: given Step 2 (limit β_∞ exists), Cesàro gives β_∞ = lim S_k / k. So only the leading-log form S_k = c k log L + o(k) is needed; the constant C_∞ and the o(1) are not. Lemma 4.3 as stated asks for more than needed.
- (c) as written: |I_Λ - I_∞| ≤ C|k|^-4 min(1, k^2/Λ^2) integrated over |k| ≤ πΛ gives O(1) from the shell |k| ~ Λ, not o(1). Dominated convergence needs instead the scaling form of the lattice region (the near-cutoff integrand of I_{LΛ} is the rescaled one of I_Λ). Minor; Lemma 4.3 is open anyway.
- Shell integral ∫_{R<|k|<LR} d^4k c/(2π^2|k|^4) = c log L: correct (|S^3| = 2π^2).
- Rate (8): §5.1 claims L^{-2j}. U3_LEMMA51 (now available) gives L^{-2j} only for centered blocks (odd L) conditional on R1-R3, with possible j L^{-2j} (O1) and, for corner blocks (even L, the L = 2 used here), a possible M^{-1} = L^{-j} term (O2, not seen numerically, bounded at ~1.5-6% of the M^-2 coefficient). CORRECTED: for L = 2 the rate is unproved and may be L^{-j}.

## 7. Reruns with symmetric Nyquist split (patched grid only; recursion unchanged)
- β_2, N = 8, Ng = 8, p = 0.2: sym 0.33334 vs author one-sided 0.34119 (N = 8) and 0.31681 (N = 12). Level-1 node symbols Hermitian to 7e-15 in both modes (level-1 nodes exact).
- β_3, N = 8, Ng = 4, one-sided: 1.722 (author N = 8, Ng = 8: 0.3996). Level-2 node Hermiticity error 0.11 (D0), 1.23 (D2) at N = 8. Ng sensitivity of the one-sided β_3 is a factor 4: the j = 2 entries are not usable.
- Sym β_3 at N = 8, Ng = 4 failed (my patch needs L·Ng > N). Relaunched: sym j = 2 N = 8 Ng = 8; sym j = 1 N = 12 Ng = 8.
- Abelian rerun (L = 2, Ng = 4, p = 0.2): N = 4: j = 0 exact (6e-15), j = 1 rel -2.4e-3, j = 2 rel +5.1e-3; N = 6: j = 1 +2.4e-4, j = 2 +2.0e-3. Reproduces the §2 item 2 table digit for digit. CONFIRMED. (The table's bracketed numbers are absolute differences, not relative.)
- Sym β_2, N = 12, Ng = 8: 0.31679 (one-sided 0.31681). Nyquist effect negligible at N = 12, j = 1. N-convergence of β_2 at p = 0.2: 0.3333 (N = 8, sym) -> 0.3168 (N = 12): -5%, still unconverged (pure aliasing now).
- Sym β_3, N = 8, Ng = 8: 0.26137 (one-sided 0.39957; one-sided N = 12: 0.28556). Level-2 node Hermiticity 1.5e-14 (D0), 5e-3 rel. 4e-4 (D2). The N = 8 β_3 entry of §3 is mostly the Nyquist error. Sym β_3 is NOT converged in N either; do not read 0.261 as near c log 2.
- Note: β_2 at p = 0.1 (0.4246, N = 8) is not extrapolated to p -> 0; the quoted β_2 is a single-p value.

## 8. Grades (item mapping: 10 = ghost level-independence, 11 = composed two-level cross-check)
1 recursion + Prop 1.1: CORRECTED (exact only for the p -> 0 F^2 coefficient; off-shell plane wave breaks Δ_0 D_k = 0 at O(a p^2)).
2 validation: CONFIRMED (j = 0 4e-16; abelian digits reproduced; pure-gauge zero not rerun).
3 table: CORRECTED (N = 8 entries carry a one-sided-Nyquist error: β_2 0.341 -> 0.333, β_3 0.400 -> 0.261; ±0.03 error bar unsupported).
4 D2 x^2 kernel: CONFIRMED as structure; attribution of level-2/3 contamination CORRECTED (Nyquist, not only range).
5 reading vs c log 2: UNSUPPORTED (factor-6 drop rests on unconverged, single-p β_2).
6 Thm 4.1 reduction: CORRECTED (relabeling along Λ = L^k; additivity needs vertex-level composition, not shown; Lemma 4.3 can be weakened to o(log Λ)).
7 Lemma 4.3 open: CONFIRMED (bound (c) insufficient as written).
8 rate L^{-2j}: CORRECTED (L = 2 corner blocks: possible L^{-j}, U3_LEMMA51 O2; also possible j L^{-2j}).
9 positivity: CONFIRMED (stated as conditional).
10 ghost level independence: CONFIRMED (ghost depends only on one-step kernels; identical across N in the JSONs).
11 β_1 + β_2 vs composed 0.967: UNSUPPORTED as a check (composed code unconverged by 16% at Ng 4 -> 6).
12 interpolation caveat: CORRECTED (nested grid not exact: agreed; add the Nyquist fix; level-1 data can be evaluated exactly at the needed momenta, so β_2 need not depend on N at all).
