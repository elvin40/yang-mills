IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# H2_LARGE_L verification (independent)

Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md. Mac only, numerics/.venv.

## 1. Rerun of --check (L = 3)
`python h2_scan.py --check`: j = 2 at (2.215, 2.215, π, π) gives 2.00857 (ref 2.00857); j = ∞ at (2.403, 2.403, π, π) gives 2.06332 (ref 2.0634, aw_verify lmax 5: 2.06336). Asserts pass. 0.3 s total.

## 2. One-colour reduction (item 1a)
NUMERICS §1 at U_0 = 1: Ad_{U_0} = 1, so D = d̂_0 ⊗ 1_3; the Wilson Hessian at U = 1 is quadratic in B with tr(σ_aσ_b) ∝ δ_ab (commutator terms start at cubic order); the (0.4) linearization at U = 1 is a sum of link variables, colour identity. Code check (umk_beta1.consts, avg_profile at L = 3, p = 0): H0 = h_4 ⊗ 1_3 exactly (error 0.0); order-0 averaging matrix M = (1/√3)·1_3 for all four μ (off-diagonal and non-identity part 0.0). So the bordered matrix is three identical copies, and H, Δ_out are colour-diagonal. The constant 1/√3 is the colour normalization of the profile, the same in all copies. Normalization check: h2_scan at L = 5, K ≈ 10^{−4}: ρ_1 = ρ_2 = 1.00000002 (j = 2 and ∞), i.e. H(0) = L e_0 ⊗ 1 as in U3_AW_VERIFY §5. CONFIRMED.

## 3. H and Δ_out from the augmented inverse; Gram identity; level cost (items 1b, 1c)
- Schur step. 𝔅 = [[A, C^†, W],[C, 0, 0],[W^†, 0, 1]] (UMK_BETA1 §2). Eliminating the last row/column (pivot 1) gives [[A − WW^†, C^†],[C, 0]] = the aw_verify bordered matrix (ghost DΠD^† = DD^† − WW^†). For any block matrix the inverse of a Schur complement is the matching block of the full inverse. So the (f, c) and (c, c) blocks of the original inverse are those of 𝔅^{−1}. CONFIRMED.
- From 𝔅^{−1} = diag(A^{−1}, 0) + ZS^{−1}Z^†, Z = [−Y; 1]: (f, c) block = −Y(S^{−1})_{:,1:4}; (c, c) block = (S^{−1})_{1:4,1:4}. The minimizer of x^†A′x under Cx = v solves A′x + C^†y = 0, Cx = v, so H = +[inv]_{f,c} = −YS^{−1}[:,1:4] (matches aw_verify `solve`, which returns X[:nf]). Energy: H^†A′H = −H^†C^†Y_cc = −Y_cc, so Δ_out = −(S^{−1})_{1:4,1:4}. CONFIRMED. Code: Y from unscaled E^†, then S = J − s²E^†Y, H = −sYS^{−1}: consistent with E_l = L^{−2}[…].
- Sign slip: §4 writes H_j = −[𝔅_j^{−1}]_{f,c}; with §1 it is +. Harmless (norms, and (4.1) up to an overall sign).
- Gram. ‖(⊕_l H_{j−1}(k_l))H_j‖² = λ_max(Σ_l H_{j,l}^†G_lH_{j,l}), G = H_{j−1}^†H_{j−1} = (S^{−1})_{:,1:4}^†(s²ΣY^†Y)(S^{−1})_{:,1:4}. Matches code (Gl = Hc(Sc) @ R @ Sc). CONFIRMED. Largest matrix inverted: 5×5 (and 4×4 for the outer A_l). CONFIRMED.
- Separable form. 1/|q̃|² = ∫_0^∞ e^{−t Σ_ν q̃_ν²}dt, and the Prop. A summand Π_ρσ_ρ²·σ_μ² factorizes, so d^M_μ = ∫ g_μ Π_{ν≠μ} f_ν dt. Exact identity; truncation of the 1D sums at |n| ≤ 200 is the same box truncation as the direct sum. Finite-M window: any M consecutive n is valid because q̃² and σ² have period 2πM in q. CONFIRMED.
- "Every level costs the same." The inner fine kernel Δ_{j−2} = Δ_{M}, M = L^{j−2}, is taken in one shot from Prop. A, not by a (j−2)-fold recursion. This rests on the composition T_L^m = S_{L^m} (U3 Lemma 1.2) for the transverse part, and on P′_TQ̃ = P′_TQ (F2), so the (0.4) row gives the same Δ as the linear Q. Numerical support: aw_verify (L = 3, j = 2 recursive vs Prop. A M = 9, 8·10^{−14}); L = 5 check in §4 below. Cost caveat: the 1D tables have M terms, so the table cost grows ∝ M; for finite M > 401 (L = 5, j ≥ 6) a finite level costs more than j = ∞ in that part. The dominant L⁸ block algebra is level-independent. So "the same" holds for the dominant cost; CONFIRMED with this caveat.

## 5. Tail bound (4.1)–(4.3) and j_0 arithmetic (item 6)
- (4.1). 𝔅_j − 𝔅_∞ = diag(⊕_l(Δ_{j−1} − Δ_∞)(k_l), 0) because Q̃ and DD^† are level-independent. Resolvent identity, (f, c) block: H_j − H_∞ = −[𝔅_j^{−1}]_{f,f}(⊕δΔ)[𝔅_∞^{−1}]_{f,c} (overall sign depends on the H sign convention; irrelevant). [𝔅^{−1}]_{f,f}: solving 𝔅(x, y) = (f, 0) gives x ∈ W = ker Q̃ with PAPx = Pf, so [𝔅^{−1}]_{f,f} = P(PAP|_W)^{−1}P and its norm is exactly 1/λ_min(A|_W) = 1/a_j(K). CONFIRMED. ε_j ≤ δ_{j−1}·‖H_∞‖/a_* ≤ δ_{j−1}Lρ_1/a_*. CONFIRMED.
- (4.2). Telescoping of (⊕H_{j−1})H_j − (⊕H_∞)H_∞ and ‖⊕X_l‖ = max‖X_l‖ give (ρ_1/L)(ε_{j−1} + ε_j)·… after dividing by L²; inserting (4.1): (ρ_1²/a_*)(δ_{j−2} + δ_{j−1}). CONFIRMED. ρ_1 must be the sup over all levels including ∞ and j − 1 (so j = 1 enters when j = 2; the tail only uses j ≥ j_0, so j = 1 does not enter there).
- Normalization. δ_m and a_* must use the same Δ scale and the same ghost coefficient (H itself is scale-free, δ/a is not unless both scale together). U3_VERIFY/U3_GAUSSIAN_RG δ values and U3_REPAIRS §4 a ≈ 0.085 are both in the Prop. A normalization (Δ_∞ ≈ |K̂|²P′_T, ghost coefficient 1) as far as the text shows. Not re-measured at L = 3.
- j_0 at L = 3 (measured constants): 0.93·0.085/3.10 = 0.0255; 2·9^{3−j}(10/9) < 0.0255 ⇔ j > 5.03 ⇒ j_0 = 6 (j_0 = 5 without the factor 2: j > 4.72). CONFIRMED. With O6: a = 2.3·10^{−10}·3^{−20} = 6.6·10^{−20}, ρ_1²/a = 4.7·10^{19}, 9^{j−3} > 1.1·10^{20} ⇔ j > 24.0 ⇒ j_0 = 25. CONFIRMED. Loss factor at j = 4: 36.5·(0.129 + 0.0147) = 5.24 vs 8·10^{−4}, ~6500. CONFIRMED.
- j_0 at L = 5: (3.85/0.05)·2·1.04·25^{3−j} < 2.88 ⇔ j > 4.25 ⇒ j_0 = 5. Arithmetic CONFIRMED; inputs a_* = 0.05 and δ_1 ≈ 2 are assumptions (see §6 for measured values).

## 4. Independent dense check at L = 5 (Mac; own code /tmp/h2v/dense5.py, shares only the order-0 profile)
Dense 2504×2504 bordered matrix [[⊕Δ_l + DΠD^†, C^†],[C, 0]], Π = 1 − 11^T/625, C = L^{−2}[q̂(k_l)] by direct sum over the profile support (no FFT, no aux row, no Schur pieces, no separable form). 0.25 s per solve.
- Tower at L = 5: Δ_out of a Wilson-fine dense solve at κ = (1.1, −0.7, 0.4, 2.0) equals Prop. A M = 5 (direct 625-term sum) to 1.1·10^{−14} relative, scale factor 1.0000. So the one-shot Prop. A kernel holds with the (0.4) row at L = 5.
- ρ_1(j = 2) at (2.493, 2.494, π, π), fine kernel Prop. A M = 5: 1.950545 (author 1.9505).
- ρ_2(j = 2) at the same K, fully recursive (625 inner Wilson-fine dense solves give H_1(k_l), Δ_1(k_l); outer solve with those Δ_1): 2.098283 (author 2.09828). 167 s. No Prop. A, no Gram shortcut beyond λ_max of the 4×4 sum.
Verdict: h2_scan at L = 5 agrees with an independent dense computation to ≥ 6 digits at the claimed j = 2 argmax.

## 6. ρ_1 at level j = 1, a_*, and δ_m over the BZ (items 4, 6 inputs)
- ρ_1(j = 1, Wilson fine, L = 5), dense: face grid 36 + 30 random sorted 4D points + Nelder–Mead: max 1.8600 at (1.916, 1.916, π, π). Below the j = 2 (1.9565) and j = ∞ (1.9630) values. So max_j ρ_1² ≈ 1.963² = 3.853 < 5; ρ_1²/L = 0.771. Item (4) CONFIRMED as a measurement (uncertified; one-step route still needs a certified sup).
- a_j(K) at L = 5 (min of A on ker Q̃, Prop. A normalization, ghost coefficient 1): Wilson and Prop. A M = 5 fine kernels give identical values at all 4 test points (the binding mode is in the gauge/ghost sector). Values: 0.0107 for K → 0 (|K| = 10^{−3}…0.03), 0.012 at (0.1)⁴, 0.22–0.98 elsewhere, 1.27 at (2.54, 2.54, π, π). So a_*(L = 5) ≈ 0.0107, not the assumed 0.05 (factor 4.7 smaller).
- δ_m as a sup over the BZ. The author's δ_m ≈ 1.0·9^{1−m} uses the U3 value 1.007 at one K; 1.007 is the max-entry norm (2-norm there 1.312). The 2-norm sup over K is at the corner (π, π, π, π), where |Δ_∞| = 195: δ = 179 (M = 1), 92.0 (3), 18.7 (9), 2.39 (27), 0.317 (81); ratios 4.9, 7.8, 7.5. M = 5, 25: 48.7, 2.93. So the factor-2 allowance is too small by ~45–90 at small m, and the per-level ratio at the corner is ~7.5, not 9.
- j_0 redone with these inputs. L = 3 (a_* = 0.085, ρ_1² = 3.10, margin 0.93; δ_5 ≈ 0.037, δ_6 ≈ 0.0044 by ratio 8.5): need δ_{j−2} + δ_{j−1} < 0.0255 ⇒ j_0 = 8 (author 6). L = 5 (a_* = 0.0107, ρ_1² = 3.853, margin 2.89; δ_3 ≈ 0.15, δ_4 ≈ 0.007 by ratio ~20): need < 0.0080 ⇒ j_0 ≈ 6 (author 5). Qualitative conclusion (small j_0) survives; numbers CORRECTED.

## 7. Stored results vs tables (items 2, 3) and box plan (item 8)
- L = 3 JSON summaries: 2.008567 / 2.056007 / 2.063320, argmax (2.212, 2.221, π, π) / (2.372, 2.376, π, π) / (2.404, 2.405, π, π), 175–176 points each. Match §2 table. My --check reproduces j = 2 and j = ∞ point values. Reference agreement 4·10^{−5} at j = ∞ is inside the aw_verify lmax spread (2.06329–2.06366). Item 2 CONFIRMED.
- L = 5 JSON summaries: 2.098283 / 2.107520 / 2.107904 / 2.107920 (j = 2/3/4/∞), 120–122 points (28 face + 70 sorted 4D + NM + 4 probes). Gaps to j = ∞: 9.64·10^{−3}, 4.0·10^{−4}, 1.6·10^{−5}; ratios 24.1, 25.0 (L² = 25). Matches §3.
- Launcher h2_launch.sh: per-K JSON checkpoint and skip-if-done are present; nothing launched. L⁸ cost extrapolation from 43 s at L = 9: 3.6 / 13.5 / 42.6 min at L = 11/13/15. CONFIRMED. Issues: (a) json.dump(res, open(out, "w")) is not atomic; a kill during the write leaves a corrupt JSON and the resume json.load fails for that (L, j). Use write-to-tmp + os.replace. (b) Same-L jobs share results/h2_prof_L{L}.npz; with no cache on the box, parallel jobs can race on np.savez/np.load. Copy the Mac cache files (h2_prof_L5/7/9.npz exist) to the box, and build L = 11, 13, 15 profiles once before the parallel phase. (c) The profile build time at L ≥ 11 is not in the budget (UMK_BETA1 §5: ~2.5·10⁹ link visits per direction at L = 15). (d) Phase 2/3 scans (10 face points at spacing π/4, 12 NM evaluations, 4 probes) give loose lower estimates only; this is stated in G2. Item 8 CONFIRMED with these corrections.

## 8. L-trend spot checks (items 5, 7), j = ∞, h2_scan on the Mac
- L = 7: (2.565, 2.565, π, π) 2.11309 (author 2.11309); (2.3, 2.3, π, π) 2.11023 (author range 2.1102–2.1131); (2.565, 2.9, π, π) 2.1119; off-face (2.565, 2.565, 2.9, π) 2.1012; corner 2.11064. 8.3 s per K (author 6 s).
- L = 9, j = ∞ (author had only j = 2 at one point): (2.6, 2.6, π, π) 2.11423; corner 2.11189. 53 s per K (author 43 s).
- Corner vs face max: gap 0.0070 (L = 3), 0.0028 (5), ≥ 0.0025 (7), ≥ 0.0023 (9). The corner stays below the face peak but the gap shrinks; it is the obvious place for a competing maximum at large L, as the author's (ii) says.
- Trend j = ∞: 2.0633, 2.1079, ≥ 2.1131, ≥ 2.1142 (L = 3, 5, 7, 9). Consistent with a bounded ρ_2 near 2.11–2.14. But the "convergence at least as fast as L^{−2}" inference uses a lower bound at L = 7 (diagonal only) as if it were the sup, so it does not follow. The statement "(H2) gets easier with L" is a measured trend for L ≤ 9, not a result for L > 11. Item 5 CORRECTED (rate claim unsupported; trend stands as measurement). Item 7 (what L = 5, 7 must show) is a sound list; (ii) is supported by the corner data above. CONFIRMED.

## 9. Separable d^M vs direct Prop. A sums
h2_scan.dgrid vs my direct sums at 3 momenta (incl. (3.1)⁴): M = 25 relative 2·10^{−8}–7·10^{−7}; M = ∞ difference 2.7·10^{−4}, 7.1·10^{−5}, 2.8·10^{−5} for direct lmax = 10, 16, 22, i.e. the residue is the direct sum's truncation, and the separable form (|n| ≤ 200) is the more accurate one. CONFIRMED.

## 10. Own maximization of ρ_2(∞, K) at L = 5 (item 3)
Design differs from the author's: 150 uniform random sorted 4D points (seed 2026), 78-point face grid (12 per axis from 0.2), corner and 3 edge points, then 4D Nelder–Mead (120 evaluations each) from the top 3 grid points and from the best off-face point. 509 s.
- Grid top 2.10781 at (2.607, 2.607, π, π). Best off-face point (K_3 < π − 0.05): 2.08844 at (2.11, 2.25, 2.93, 3.0).
- All four 4D Nelder–Mead runs, including the off-face start, converge to 2.107921 at (2.5445, 2.5445, π, π).
- Corner 2.10508.
2.1079 is not exceeded. Argmax on the face diagonal. CONFIRMED (still a lower estimate of the sup).

## 11. Grades
1. Code structure: CONFIRMED. One-colour reduction exact at U = 1; H, Δ_out blocks and Gram identity correct; separable Prop. A exact; level cost same for the dominant L⁸ part (1D tables grow ∝ M). Sign slip H = −[𝔅^{−1}]_{f,c} in §4 (it is +).
2. L = 3 validation: CONFIRMED (rerun of --check; JSON summaries).
3. L = 5 values: CONFIRMED (independent dense ρ_2(j = 2) = 2.098283; own search max 2.107921, same argmax).
4. ρ_1(L = 5): CONFIRMED as measurement; j = 1 now measured, 1.860 (< 1.963). ρ_1²/L = 0.771. Uncertified.
5. L-trend: CORRECTED. Bounded trend consistent (new: L = 9, j = ∞ ≥ 2.1142), but the rate claim uses a lower bound as the sup; corner gap shrinks to 0.0023.
6. Tail bound: derivation CONFIRMED; j_0 arithmetic CONFIRMED for the stated inputs; inputs CORRECTED: sup_K δ_m is 45–90× the assumed value (corner), a_*(L = 5) = 0.0107 not 0.05. j_0 ≈ 8 (L = 3), ≈ 6 (L = 5); O6 j_0 = 25 unchanged.
7. Requirements list: CONFIRMED.
8. Box plan: CONFIRMED with fixes: atomic JSON writes, pre-copied profile caches, profile build time at L ≥ 11 not budgeted.
