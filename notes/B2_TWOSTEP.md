IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# B2_TWOSTEP — (B2) via the two-step recursion

Written 2026-10-27 (Claude, Opus 5.5). Read: KAPPA_BOUNDED.md §2, §4–§6; KAPPA_BOUNDED_VERIFY.md §7–§9; U3_AW.md §1, §4; U3_AW_VERIFY.md §4–§11; numerics/aw_verify/{hcheck, hscan, h2step}.py and h2step.json. Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. Sections were appended one at a time.

Sections: §1 two-step recursion; §2 uniform C¹ bound on σ^{(1)} (Theorem C1); §3 (B2) (Theorem B2); §4 numerics; §5 conclusion; §6 ledger.

## 1. The two-step recursion

Notation as U3_AW §1. Level-j units, odd L, real K unless stated. H_j(K): the one-step gauge-fixed minimizer map, (4L⁴ × 4), umklapp basis, fine momenta k_l = (K + 2πl)/L. 𝒜_j s(K) := L^{−2} H_j(K)^†(⊕_l s(k_l))H_j(K).

One-step recursions (U3_AW (1.1)–(1.2), exact by R23_VERIFY §5):
  σ_j^{(1)} = 𝒜_jσ_{j−1}^{(1)} + g_j^{(1)},   (1.1)
  σ_j^{(2)} = L^{−2}𝒜_jσ_{j−1}^{(2)} + Q_j[σ_{j−1}^{(1)}] + g_j^{(2)}.   (1.2)

Two-step minimizer map. For j ≥ 2 put
  H_{(2),j}(K) := (⊕_l H_{j−1}(k_l)) H_j(K),   (4L⁸ × 4),
indexed by the L⁸ momenta k_{l,l′} = (k_l + 2πl′)/L = (K + 2π(l + Ll′))/L². This is the tower property: the composed minimizer of the two-step constraint. It is exactly the quantity of aw_verify/h2step.py (there with j = 3: inner H_2, outer H_3).

Composition. Since (1.1) is affine,
  𝒜_j𝒜_{j−1}s(K) = L^{−4} H_{(2),j}(K)^†(⊕_{l,l′} s(k_{l,l′})) H_{(2),j}(K).   (1.3)
Proof: insert 𝒜_{j−1}s(k_l) = L^{−2}H_{j−1}(k_l)^†(⊕_{l′}s(k_{l,l′}))H_{j−1}(k_l) into 𝒜_j and collect the block-diagonal product. ∎

Two-step σ^{(1)} recursion:
  σ_j^{(1)} = 𝒜_j𝒜_{j−1}σ_{j−2}^{(1)} + G_j^{(1)},  G_j^{(1)} := 𝒜_jg_{j−1}^{(1)} + g_j^{(1)}.   (1.4)

Two-step σ^{(2)} recursion:
  σ_j^{(2)} = L^{−4}𝒜_j𝒜_{j−1}σ_{j−2}^{(2)} + S_j^{(2)},
  S_j^{(2)} := L^{−2}𝒜_j(Q_{j−1}[σ_{j−2}^{(1)}] + g_{j−1}^{(2)}) + Q_j[σ_{j−1}^{(1)}] + g_j^{(2)}.   (1.5)

Linear part on σ^{(2)}: s ↦ L^{−8}H_{(2)}^†(⊕s)H_{(2)}. Sup-norm factor ≤ (‖H_{(2)}‖/L⁴)² = ρ_2²/L⁴, with
  ρ_n := sup_j sup_{K real} ‖H_{(n),j}(K)‖/L^n  (ρ_1 = h/L).

Source terms in (1.5), by kind (from U3_LEMMA51 (3.3), U3_AW §4.3 budget):
- C⁰ products of σ^{(1)} data: the degree-≤2 polynomial part of Q in L^{−2}σ^{(1)}(k_l), with coefficients built from b_0 and the fixed one-step vertices. Bounded by Theorem A3 (R_1 := sup_j sup_K|σ_j^{(1)}| ≤ |τ_c| + 4π²C_A) and O6 (‖b_0‖ ≤ b(L)).
- ∂σ^{(1)} terms: L^{−3}(∂_νσ^{(1)})(k_l), entering through {𝔨_1, b_0} and ∂b_1 inside {𝔨_0, b_1}, linearly, times f⁰ data and at most one more σ^{(1)} factor. One derivative only (budget, U3_AW P10).
- f⁰-only terms g^{(2)}: f⁰ data with ≤ 4 derivatives and fixed vertices; uniform by A0 + Lemma A1.

Remark 1.1 (the two-step map is not needed for σ^{(2)} itself). The one-step linear part of (1.2) has sup-norm factor ρ_1²/L². At L = 3 the verifier measured ρ_1 ≤ 1.760, so ρ_1²/L² ≤ 0.344 < 1 (KAPPA_BOUNDED_VERIFY §8 says the same). The two-step factor is ρ_2²/L⁴ ≤ 2.06²/81 = 0.052. So σ^{(2)} contracts already in one step, in plain sup norm, with no Δ-weighting. The two-step map is needed for the C¹ bound on σ^{(1)} (§2), which is the real obstruction (KAPPA_BOUNDED_VERIFY §7).

## 2. Uniform C¹ bound on σ^{(1)} (the explicit target)

Choice. I use the pointwise C¹ route, not the integration-by-parts route. Reason: (1.2) is pointwise in K. The ∂σ^{(1)} source sits inside Q_j at each K, and the (W-2) longitudinal part of σ^{(2)} contains ∂σ^{(1)} at each K (KAPPA_BOUNDED_VERIFY §7). An integral bound on ∂σ^{(1)} does not bound a pointwise recursion. So (B2w) would not follow from Lemma 2.1 of KAPPA_BOUNDED either. A real-K C¹ bound is needed, and it is enough (no strip needed).

Target. D_j := max_ν sup_{K real} |∂_νσ_j^{(1)}(K)|. Show sup_j D_j < ∞.

Uniform inputs (all j-independent, real K).
- (U1) ‖H_j(K)‖ ≤ Lρ_1 and ‖H_{(2),j}(K)‖ ≤ L²ρ_2 (definition of ρ_n; finite by O6, ‖H_j‖ ≤ b(L)).
- (U2) ‖∂_νH_j(K)‖ ≤ η_1 := b(L)²C_2′(L). Proof: H_j is the fine block of b_0[0; 1], b_0 = 𝔨_0^{−1}, ∂b_0 = −b_0(∂𝔨_0)b_0. ‖b_0‖ ≤ b(L) (O6). ‖∂_ν𝔨_0‖ ≤ C_2′(L): the fine blocks give L^{−1}‖(∂Δ_{j−1})(k_l)‖ ≤ B_0/(Lδ_0) (A0 + Cauchy on S(δ_0)), and the fixed entries (Q̃, ghost) are trigonometric polynomials. Relabelling of l at the BZ edge is a permutation; it does not change norms. ∎ Hence ‖∂_νH_{(2),j}‖ ≤ η_2 := L^{−1}η_1·Lρ_1 + Lρ_1·η_1 = (1 + L)ρ_1η_1.
- (U3) |g_j^{(1)}| ≤ G_1 and |∂_νg_j^{(1)}| ≤ G_1′. g^{(1)} is a polynomial in b_0, the fixed vertices, and first derivatives of 𝔨_0; its derivative adds one more derivative of 𝔨_0 or b_0. A0 + Cauchy bound all of these.
- (U4) R_1 := sup_j sup_K |σ_j^{(1)}| ≤ |τ_c| + 4π²C_A (Theorem A3).

Differentiate (1.3). With ∂_ν[s(k_{l,l′})] = L^{−2}(∂_νs)(k_{l,l′}):
  ∂_ν(𝒜_j𝒜_{j−1}s) = L^{−4}[(∂_νH_{(2)})^†(⊕s)H_{(2)} + H_{(2)}^†(⊕s)(∂_νH_{(2)})] + L^{−6}H_{(2)}^†(⊕∂_νs)H_{(2)}.   (2.1)
So
  |∂_ν(𝒜_j𝒜_{j−1}s)| ≤ 2L^{−2}ρ_2η_2 sup|s| + (ρ_2²/L²) max_ν sup|∂_νs|.   (2.2)
The same computation for one step gives |∂_ν𝒜_js| ≤ 2L^{−1}ρ_1η_1 sup|s| + (ρ_1²/L) sup|∂s|.

Theorem C1 [proved here, conditional on (H2)]. Assume
  (H2)  ρ_2 = sup_{j≥2} sup_{K real} ‖H_{(2),j}(K)‖/L² < L.
Then, with q_1 := ρ_2²/L² < 1,
  D_j ≤ q_1D_{j−2} + S_1 (j ≥ 2),  S_1 := 2L^{−2}ρ_2η_2R_1 + 2L^{−1}ρ_1η_1G_1 + (ρ_1²/L)G_1′ + G_1′,
and sup_j D_j ≤ max(D_0, D_1) + S_1/(1 − q_1).
Proof. Apply ∂_ν to (1.4). The linear term is (2.2) with s = σ_{j−2}^{(1)}, so sup|s| ≤ R_1 (U4) and sup|∂s| = D_{j−2}. The source ∂_νG_j^{(1)} = ∂_ν𝒜_jg_{j−1}^{(1)} + ∂_νg_j^{(1)} is bounded by the one-step version of (2.2) with (U3). This gives the recursion. Base: D_0 < ∞ (Wilson symbol, trigonometric polynomials in K); D_1 < ∞ (Prop. A2: σ_1^{(1)} analytic and periodic). Iterate separately on even and odd j. ∎

Remarks.
(a) Why one step is not enough at L = 3. The one-step factor is ρ_1²/L. Measured ρ_1 = 1.6516, 1.7360, 1.7569, 1.7600 (j = 1, 2, 3, ∞) gives 0.909, 1.005, 1.029, 1.033. It fails for j ≥ 2, by up to 3.3%. The two-step factor is ρ_2²/L² = 2.056²/9 = 0.470 on the verifier grid. The two-step composition is sub-multiplicative in the bad region: ρ_2 = 2.06 < ρ_1² = 3.10. That is the whole gain.
(b) The eigenvalue-1 direction is not the obstruction for C¹. At K = 0, H_j(0) = L e_{l=0}, so the derivative term of the one-step map is L^{−1}(∂s)(K/L), with factor L^{−1}, not 1. Evenness (Prop. E) gives ∂s(0) = 0 and |∂s(k)| ≤ |k|·sup|∂²s| near 0; with the K = 0 polarization bound of KAPPA_BOUNDED §4 this controls ∂σ^{(1)} near K = 0 uniformly. But the sup of the factor is attained on a BZ face, at K ≈ (1.9, 1.9, π, π), far from 0. Evenness gives nothing there. So the route "one step, eigenvalue 1 only at 0, evenness" closes near K = 0 only. A one-step weighted sup norm |∂s(k)| ≤ Dw(k) would close if sup_K L^{−3}‖H^†(⊕w(k_l))H‖/w(K) < 1 for some weight w. I did not search for such a w.
(c) No Δ-relative weighting enters. The C⁰ input R_1 comes from Theorem A3, whose proof uses the Δ-relative form norm (Lemma A4). The C¹ recursion itself is in plain sup norm. So (H2) is a plain operator-norm inequality, and the verifier's 2.056 is exactly a grid value of the quantity in (H2), for the level pair (j−1, j) = (2, 3).
(d) (H2) is weaker than U3_AW (H″) at n = 2. The strip version needs ρ_2² < L² − 1 (threshold 2.828 at L = 3), because the thin-strip Cauchy gain is 1/(L² − 1). The real-K C¹ version needs ρ_2² < L² (threshold 3), because the chain rule gain is exactly L^{−2} per two steps. The strip version gives C³ (U3_AW R-A); (H2) gives C¹ only, which is all that (1.2) needs.

## 3. (B2) from (H2)

Theorem B2 [proved here, conditional on (H2) of §2]. If ρ_2 < L, then
  sup_{j≥0} sup_{K real} |σ_j^{(2)}(K)| ≤ Y_2 := max(Y_0^{(2)}, Y_1^{(2)}) + S_2/(1 − q_2),  q_2 := ρ_2²/L⁴ < L^{−2},
with Y_i^{(2)} := sup_K|σ_i^{(2)}| (i = 0, 1) and S_2 given below. Hence (B2), and (B2w) with Y_2^w ≤ Y_2.

Proof.
Step 1 (one-step source is uniform). In (1.2), Q_j[σ_{j−1}^{(1)}] is a polynomial of degree ≤ 2 in the entries L^{−2}σ_{j−1}^{(1)}(k_l) and L^{−3}(∂_νσ_{j−1}^{(1)})(k_l). Its coefficients are built from b_0, ∂^αb_0 (|α| ≤ 2, through {𝔨_0, b_1} and P_2), and the fixed one-step vertices. ‖b_0‖ ≤ b(L) (O6); derivatives of b_0 are polynomials in b_0 and ∂^α𝔨_0, bounded by A0 + Cauchy as in (U2). So
  |Q_j[σ_{j−1}^{(1)}] + g_j^{(2)}| ≤ Z_2 := P(R_1, sup_i D_i) + G_2,
P a fixed polynomial with L-dependent coefficients, G_2 the uniform bound on g^{(2)}. R_1 is finite by Theorem A3, sup_i D_i by Theorem C1. No constant depends on j.
Step 2 (two-step contraction, plain sup norm). For any Hermitian-matrix function s, ‖H^†(⊕s)H‖ ≤ ‖H‖² max_l‖s(k_l)‖. In (1.5) the linear part is L^{−8}H_{(2)}^†(⊕s)H_{(2)}, so its sup-norm factor is ≤ ρ_2²/L⁴ = q_2. The source satisfies |S_j^{(2)}| ≤ L^{−4}(Lρ_1)²Z_2 + Z_2 =: S_2.
Step 3 (Gronwall). Y_j^{(2)} ≤ q_2Y_{j−2}^{(2)} + S_2 for j ≥ 2. Base: Y_0^{(2)} < ∞ (Wilson data, entire), Y_1^{(2)} < ∞ (Prop. A2). Iterate on even and odd j. ∎

Remarks.
(a) What the contraction step needs, exactly. Only ρ_2 < L² (q_2 < 1); this is implied by (H2). Equivalently, in one step, ρ_1 < L (Prop. 4.1's h² < L⁴). Both hold at L = 3 with a large margin (q_2 ≤ 0.052 measured; ρ_1²/L² ≤ 0.344 measured). So the only tight condition in the whole argument is (H2), and it is tight only because of the C¹ bound on σ^{(1)}.
(b) No Δ-relative norm and no Ward splitting is used for σ^{(2)}. The issue of KAPPA_BOUNDED §4(b) (A4 needs s(0) = 0, sd = 0) does not arise, because the sup norm contracts directly when ρ_1 < L. The (W-2) longitudinal part of σ^{(2)} is bounded as part of the full sup bound; it needs no separate treatment.
(c) Consistency check at K = 0. Theorem B2 implies sup_j|σ_j^{(2)}(0)| < ∞, which KAPPA_BOUNDED §4 already proved unconditionally from A3 + (W-2). No conflict.
(d) Constants. b(L), η_1, C_2′ are astronomically large (O6 constant a ≥ 2.3·10^{−10}L^{−20}). They enter only the sources S_1, S_2. They never multiply D_{j−2} or Y_{j−2}^{(2)}. The contraction factors q_1, q_2 contain only ρ_2, a measured, order-one number. This is the same structure that makes Theorem A3 close.

## 4. Numerics: ρ_2 at L = 3 (d = 4, Mac, reuse of aw_verify)

Code. Reuses aw_verify/hscan.py (`blocks`, `solve`, `Umat`, cached B0_L3.pkl) through the numerics/.venv interpreter. The only new function (run from /tmp, not kept in the project folder):
```
def h2(K, j, lmax=6):  # ||(+)_l H_{j-1}(k_l) H_j(K)|| / L^2
    jin = "inf" if j == "inf" else j - 1
    Hj = solve(blocks(K, j, lmax), K)[0]; _, kl = Umat(K)
    X = np.concatenate([solve(blocks(k, jin, lmax), k)[0] @ Hj[4*l:4*l+4] for l, k in enumerate(kl)])
    return np.linalg.norm(X, 2) / L**2
```
For j = ∞ both levels use Prop. A at M = ∞ (inner and outer), the fixed point of the pair.
Checks. Reproduces the verifier's value 2.055991 at (2.3557, 2.3557, π, π), j = 3, to 10^{−8}. Hypercubic invariance (permutation + sign flips) holds to 10^{−15}. j = ∞ truncation: lmax = 2, 3, 4, 5 give 2.06366, 2.06337, 2.06329, 2.06336, so lmax = 2 is accurate to 4·10^{−4}.
Grid. j = 2, 3: the sorted 6-point grid on [0, π]⁴ (126 points) plus the face K_3 = K_4 = π on a sorted 13 × 13 grid (91 points), then Nelder–Mead from the two best points. j = ∞: the upper half of the face grid plus three extra points, then Nelder–Mead (lmax = 2), then re-evaluation at lmax = 5. Run times 2.1, 6.0, 2.6 min.

| pair (j−1, j) | ρ_2 grid max | refined max | at K | q_1 = ρ_2²/L² | q_2 = ρ_2²/L⁴ |
|---|---|---|---|---|---|
| (1, 2) | 2.00763 | 2.00857 | (2.215, 2.215, π, π) | 0.448 | 0.050 |
| (2, 3) | 2.05599 | 2.05601 | (2.374, 2.374, π, π) | 0.470 | 0.052 |
| (∞, ∞) | 2.06366 | 2.06377 (lmax 2); 2.06336 (lmax 5) | (2.403, 2.403, π, π) | 0.473 | 0.053 |

Thresholds at L = 3: (H2) needs ρ_2 < 3 (margin 31%, q_1 ≤ 0.473). The strip form U3_AW (H″) at n = 2 needs ρ_2 < √8 = 2.828 (margin 27%). The σ^{(2)} contraction needs ρ_2 < 9 (q_2 ≤ 0.053).
For comparison, one-step (verifier §6): ρ_1 = 1.6516, 1.7360, 1.7569, 1.7600, so ρ_1²/L = 0.909, 1.005, 1.029, 1.033: the one-step C¹ recursion fails for j ≥ 2 by ≤ 3.3%, and the two-step one passes with q_1 ≤ 0.473.
Pattern. ρ_2 increases with j and converges (2.009, 2.056, 2.063). The maximum sits on the face K_3 = K_4 = π, on the diagonal K_1 = K_2, and moves from 2.22 to 2.40 with j. The one-step maximum was at K_1 = K_2 ≈ 1.9. The full 4D sorted grid did not produce a larger value off the face at any j.

Limits of this check. (i) Grid plus local optimization gives a lower estimate of the sup, not a certified upper bound. A certified bound needs a Lipschitz constant for K ↦ ‖H_{(2)}(K)‖ with realistic size (interval arithmetic or a measured derivative bound); the O6-based constant (U2) is astronomically large and useless for that. (ii) Levels j = 4, …, ∞ are represented only by j = ∞. The monotone convergence 2.009 → 2.056 → 2.063 makes a larger value at intermediate j unlikely; it is not excluded. Prop. A at M = 27 (j = 4) sums 27⁴ ≈ 5·10⁵ terms per block, ~850× the lmax = 2 cost of j = ∞; not run. (iii) L = 5 not run. hcheck.py hardcodes L = 3 (81 umklapps, LS ∈ {−1, 0, 1}⁴), B0_L5 does not exist (the L = 3 build took 76 s; the L = 5 build of ym_momentum.Step is much larger), and one two-step point at L = 5 needs 625 inner solves of size 2504. Not cheap; not attempted. At L = 5 the thresholds are wider (ρ_2 < 5 for (H2)), so L = 3 is the hardest odd case if ρ_2 stays O(2).
(iv) No σ^{(2)} computation was needed or done. A direct d = 4 check of (B2) would need new code. Minimal spec: per coarse K, build the f¹ and f² Moyal coefficients 𝔨_1, 𝔨_2 of the bordered symbol (fine blocks L^{−2m}σ_{j−1}^{(m)}(k_l) plus the f^m parts of the constant-field linearized (0.4) row C_f and of the ghost D_r(f)D_r(f)^†), K-derivatives of 𝔨_0, b_0 by finite differences, then U3_LEMMA51 (3.2)–(3.3); recurse j = 1, 2, 3 on a K grid. ym_momentum builds plane-wave kernels only (KAPPA_BOUNDED_VERIFY §8), so C_f in the constant-field expansion is the missing piece.

## 5. Conclusion: status of (B2), Theorem K, Theorem 2w

The precise hypothesis. Everything reduces to one plain operator-norm inequality on the two-step gauge-fixed minimizer map, on real K:
  (H2)  ρ_2 := sup_{j≥2} sup_{K∈BZ real} ‖(⊕_l H_{j−1}(k_l)) H_j(K)‖ / L² < L.
No Δ-relative weighting, no strip, no n > 2. (H2) is weaker than U3_AW (H″) at n = 2 (ρ_2 < √(L² − 1)). The verifier's 2.056 is a grid value of exactly this quantity at (j−1, j) = (2, 3).

Which route closes with the measured constants (L = 3).
- Prop. 4.1, one step (h²/L⁴ < 1 plus a C¹ bound on σ^{(1)}): the first condition holds (ρ_1²/L² ≤ 0.344). The C¹ bound does not follow from the one-step recursion: its factor ρ_1²/L is 1.005–1.033 for j ≥ 2. So the pure one-step route does not close.
- Two-step C¹ (Theorem C1) + one- or two-step σ^{(2)} contraction (Theorem B2): closes. q_1 = ρ_2²/L² ≤ 0.473, q_2 = ρ_2²/L⁴ ≤ 0.053 at the measured ρ_2 ≤ 2.0638. This is Prop. 4.1 with its C¹ hypothesis supplied by Theorem C1.
- Strip route U3_AW R-A with (H″) n = 2: also closes numerically (2.064 < 2.828) and gives more (C³, the strip), at a smaller margin. Not needed for (B2).
- Integration by parts (KAPPA_BOUNDED Lemma 2.1) for (B2w): does not apply, because the σ^{(2)} recursion is pointwise.

Status.
- (B2): proved given (H2) [Theorems C1 + B2, proved here]. (H2) at L = 3 holds numerically with 31% margin (ρ_2 = 2.009, 2.056, 2.063 for j = 2, 3, ∞), uncertified (§4 limits (i)–(ii)). (B2) is therefore reduced, not proved: it is proved modulo one numerically supported, uncertified inequality. L ≥ 5: (H2) untested.
- Theorem K: proved given (H2) and its other inputs (PI), (F), (M_j), V1, (G2), with L = 3 the numerically supported case. Its hypothesis (B2) is replaced by (H2). Y_2 in κ_* (KAPPA_BOUNDED (2.2)) is now Y_2 of Theorem B2, with astronomically large but j-independent constants.
- Theorem 2w: same status as Theorem K, plus (i)/L5 (history-dependent β, inherited from LEMMA_DPRIME).
- Collateral: Theorem C1 also gives the j-uniform real-K C¹ bound on σ^{(1)} that U3_AW §4.7 listed as missing, under (H2) rather than (H′). C² and C³ (for Lemma 5.1 of U3) are not covered: differentiating (2.1) twice gives factor ρ_2²/L⁴ on the second derivative, which contracts, but the source then needs ∂²H and ∂H·∂s, which are uniform by the same (U2)-type argument. So C² and C³ under (H2) look routine; I did not write them out.

## 6. Ledger

Proved here.
- T1. (1.3)–(1.5): the two-step recursions for σ^{(1)} and σ^{(2)}. Linear part = conjugation by the two-step minimizer map H_{(2),j} = (⊕_lH_{j−1}(k_l))H_j, with factors L^{−4} (σ^{(1)}) and L^{−8} (σ^{(2)}).
- T2. Theorem C1: (H2) ⇒ sup_j sup_K|∂σ_j^{(1)}| < ∞, with factor q_1 = ρ_2²/L². Uses Theorem A3 (C⁰), O6 (‖b_0‖ ≤ b(L)), A0 + Cauchy for ∂𝔨_0, Prop. A2 for the base. Crude constants enter only the source.
- T3. Theorem B2: (H2) ⇒ (B2) (hence (B2w)), plain sup norm, factor q_2 = ρ_2²/L⁴. No Δ-relative norm needed for σ^{(2)}, because ρ_1 < L already gives a sup-norm contraction.
- T4. The one-step C¹ recursion has factor ρ_1²/L; the eigenvalue-1 direction at K = 0 is not the obstruction for C¹ (the chain rule gives L^{−1} there); the obstruction is the BZ face where ρ_1 ≈ 1.76 > √3.

Measured (L = 3, d = 4, uncertified sup).
- M1. ρ_2 = 2.0086 (j = 2), 2.0560 (j = 3), 2.0634 (j = ∞). Threshold 3. q_1 ≤ 0.473, q_2 ≤ 0.053. Argmax on the face K_3 = K_4 = π, diagonal K_1 = K_2 ∈ [2.2, 2.4].
- M2. One-step C¹ factor ρ_1²/L = 0.909, 1.005, 1.029, 1.033 (j = 1, 2, 3, ∞): fails for j ≥ 2.

Cited (verified in project files). Theorem A3, Lemma A1, Prop. A2, A0, O6, derivative budget, (1.1)–(1.2): U3_AW_VERIFY (CONFIRMED). ρ_1 values: U3_AW_VERIFY §6. Prop. 4.1 algebra and the ∂σ^{(1)} obstruction: KAPPA_BOUNDED_VERIFY §7–§8.

Open.
- G1. Certify (H2): a rigorous upper bound on sup_K ρ_2 (interval arithmetic or a realistic Lipschitz bound), for all j ≥ 2, not only j = 2, 3, ∞. Intermediate j (4, 5, …) untested; the trend is monotone convergent.
- G2. L ≥ 5: untested (no B0_L5, hcheck hardcodes L = 3; ~10 min per two-step point). Threshold ρ_2 < L is wider there.
- G3. The form of Q_j (degree ≤ 2 in L^{−2}σ^{(1)}, L^{−3}∂σ^{(1)}, coefficients from b_0, ∂^{≤2}b_0, and fixed vertices) is cited from U3_AW (1.2), read off U3_LEMMA51 (3.3). I did not re-derive (3.3).
- G4. No direct d = 4 σ^{(2)} computation exists. Minimal spec in §4 (iv).
- G5. Not independently verified. This file should get a verifier pass, in particular (2.1)–(2.2) (chain-rule factor L^{−2} per two steps) and the claim that (H2) is the correct threshold (ρ_2 < L, not √(L² − 1)).
