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
