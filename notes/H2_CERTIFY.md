IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# H2_CERTIFY — plan and prototype for a computer-assisted proof of (H2) at L = 3

Written 2026-10-27 (Claude, Opus 5.5). Read: B2_TWOSTEP.md §1, §4–§6; B2_TWOSTEP_VERIFY.md §4–§6; U3_REPAIRS.md (all); U3_AW_VERIFY.md §5–§6; U3_GAUSSIAN_RG.md §2–§3; numerics/aw_verify/{hcheck, hscan, h2step, build_b0}.py. Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. New files: this file, numerics/h2cert_proto.py, numerics/h2cert_launch.sh. python-flint 0.9.0 installed into numerics/.venv (1 s).

Sections: §1 statement; §2 proof skeleton (i)–(iv); §3 prototype results; §4 cost; §5 ledger.

## 1. The statement to certify

Conventions are those of aw_verify/hcheck.py (verified in U3_AW_VERIFY §5): d = 4, L = 3, one color, umklapp basis, fine block A_j(K) = ⊕_l ¼Δ_{j−1}(k_l) + DΠD^†, row Q̃(K) = the real (0.4) row of ym_momentum.Step in the umklapp basis, 𝔅_j(K) = [[A_j, Q̃^†],[Q̃, 0]] (328 × 328), H_j(K) = first 324 rows of 𝔅_j(K)^{−1}[0; 1_4]. Δ_0 = Wilson, Δ_{j−1} = Prop. A at M = L^{j−1}, Δ_∞ = Prop. A at M = ∞.

  ρ_1(j, K) := ‖H_j(K)‖/L,   ρ_2(j, K) := ‖(⊕_l H_{j−1}(k_l)) H_j(K)‖/L²,   k_l = (K + 2πl)/L.

Theorem H2 (target). For L = 3 there is ρ_* < 3 with ρ_2(j, K) ≤ ρ_* for all j ∈ {2, 3, …} ∪ {∞} and all K ∈ [−π, π]⁴.

Reductions that hold exactly.
- R1 (symmetry). ρ_2(j, ·) is invariant under coordinate permutations and sign flips (hypercubic group, order 384; checked to 10^{−15}, B2_TWOSTEP §4). The domain reduces to the sorted simplex 0 ≤ K_1 ≤ K_2 ≤ K_3 ≤ K_4 ≤ π, volume π⁴/24 ≈ 4.06.
- R2 (one-step factorization). ‖(⊕_l A_l)B‖ ≤ max_l‖A_l‖ ‖B‖ for a column of blocks B. Hence
  ρ_2(j, K) ≤ ρ_1(j, K) · max_l ρ_1(j−1, k_l).   (1.1)
  So a certified one-step bound settles every K where the right side is < 3. The two-step computation is needed only on the set S′ where it is not. Measured (float, j = ∞, 50 random sorted K): the right side of (1.1) is < 3 at 50/50 points (max 2.995) and ≥ 2.9 at 18%. The global product sup ρ_1² = 1.7601² = 3.098 is above 3, so (1.1) alone does not prove (H2); it confines the two-step work to a neighbourhood of the face diagonal K_1 = K_2, K_3 = K_4 = π.

## 2. Proof skeleton

### (i) Lipschitz constant in K

Explicit K-derivatives of the entries (all trigonometric polynomials or Prop. A sums). Fix a direction ν and write ∂ = ∂/∂K_ν.
- Ghost DΠD^† = blockdiag(k̂_lk̂_l^†) − vv^†/N, k̂_l = e^{ik_l} − 1, v = (k̂_l)_l, N = L⁴. ∂k̂_{l,μ} = (i/L)δ_{μν}e^{ik_{l,ν}}. |k̂_l| ≤ 4, ‖v‖ ≤ 4√N, ‖∂v‖ ≤ √N/L. So ‖∂(DΠD^†)‖ ≤ 8/L + 8/L = 16/L = 5.33.
- Row. Q̃(K) = B_row(K)U(K), B_row(K) = Σ_z T_z e^{−iK·z} (21 shifts z ∈ {−1, 0, 1}⁴, entries k/648 exactly), U = cell-to-umklapp phases (unitary). ∂B_row = Σ_z (−iz_ν)T_z e^{−iK·z}, ∂U = diag(i·offs_ν/L)U. Numbers from B0_L3.pkl: Σ_z‖T_z‖ = 2.469, Σ_{z_ν≠0}‖T_z‖ = 0.414. So ‖Q̃‖ ≤ 2.47 and ‖∂Q̃‖ ≤ 0.414 + 2.47/L = 1.24.
- Δ-blocks. ∂[¼Δ(k_l)] = (1/(4L))(∂_kΔ)(k_l). From U3_REPAIRS (2.9), Δ = Y − Yk̂k̂^†Y/(k̂^†Yk̂), Y = diag(1/d):
  ∂Δ = −Δ diag(∂d) Δ + [terms from ∂k̂ that keep Δk̂ = 0],   ∂d_μ = Σ_l ∂_k[w_l σ_{l,μ}²],
  with ∂_{k_ν}σ_{l,ρ} = δ_{ρν}[½cos(k_ν/2)/(q_ν/2) − σ_{l,ν}/q_ν] and ∂_{k_ν}|q|^{−2} = −2q_ν/|q|⁴. The tail of ∂d has the closed forms of §3 differentiated in k. A global a priori bound needs inf d and sup|∂d|; Prop. B gives d ≥ c_0|k̂|^{−2} with c_0 = (2/π)^{12} = 4.4·10^{−3}, so an a priori bound built on c_0 is far above the true size (c_0^{−1} ≈ 230 enters squared). Not useful; see below.
- Solution. ∂H_full = −𝔅^{−1}(∂𝔅)H_full, H_full := 𝔅^{−1}[0; 1]. So ‖∂H‖ ≤ ‖𝔅^{−1}‖ ‖∂𝔅‖ ‖H_full‖ ≤ b²‖∂𝔅‖.
- Two-step. ∂X = (⊕_l L^{−1}(∂H_{j−1})(k_l))H_j + (⊕_lH_{j−1}(k_l))∂H_j, so
  Λ_K := sup|∇_Kρ_2| ≤ L^{−2}·2·[L^{−1} sup‖∂H_{j−1}‖ sup‖H_j‖ + sup‖H_{j−1}‖ sup‖∂H_j‖]   (2 = √4 directions).   (2.1)

Measured inputs (float, j = ∞, 15 points incl. the corner and the two argmax points): ‖∂_ν𝔅‖ ≤ 7.6, ‖𝔅^{−1}‖ ≤ 49.3 (max at the corner (π,π,π,π); 43.2 at the ρ_2 argmax), ‖H‖ ≤ 5.3, ‖𝔅^{−1}∂_ν𝔅‖ ≤ 18.7, true |∇ρ_1| ≤ 0.28, true |∇ρ_2| ≤ 0.05 near the argmax.
Note on b. The task quotes ‖𝔅^{−1}‖ ≈ 195 at the corner. In the hcheck normalization (¼Δ, ghost DΠD^†) I measure 49.3 at the corner for j = ∞; U3_REPAIRS §4 reports 177 for j ≤ 2 with its own Q̃ choice (Λ minimal) and unnormalized Δ. Both are O(10²); the hcheck number is the one that enters ρ_2.

Consequence for a uniform-Λ_K grid (the route as stated in the task). With b = 49.3, ‖∂𝔅‖ = 7.6: ‖∂H‖ ≤ b²‖∂𝔅‖ = 1.8·10⁴ and (2.1) gives Λ_K ≈ 2.9·10⁴. Even with ‖H_full‖ (~6) in place of b: Λ_K ≈ 3·10³. The margin is 3 − 2.064 = 0.94, so the cell half-diagonal must be ≤ 3·10^{−4}, i.e. ~10^{13} cells on the sorted simplex. Verdict: a uniform Λ_K from norm products is correct but useless; it overestimates the true gradient (≤ 0.3) by 10⁴. This matches the verifier's remark (B2_TWOSTEP_VERIFY §5(b)).

Replacement (the practical (i)): per-cell certificates. On a cell C = K_c + [−h, h]⁴:
- (i-a) Invertibility on C: with R ≈ 𝔅(K_c)^{−1} (float), η_C := ‖R𝔅(K_c) − 1‖ + Σ_ν h ‖R ∂_ν𝔅(C)‖ < 1, where ‖R∂_ν𝔅(C)‖ is an interval enclosure of the matrix product over the cell (not the product of norms). Then ‖𝔅(K)^{−1}‖ ≤ ‖R‖/(1 − η_C) on C.
- (i-b) Mean-value form: ρ(C) ⊂ ρ(K_c) + Σ_ν [−h, h]·∂_νρ(C), with ∂_νX(C) enclosed as matrix products −𝔅^{−1}(C)(∂_ν𝔅(C))H_full(C). This uses the true derivative size (~0.3), so h is set by (i-a), not by the margin.
- (i-a) is the binding constraint: h ≤ (1 − η_0)/(Σ_ν‖R∂_ν𝔅‖) ≈ 0.5/(4·18.7) = 0.007 near the corner and ≈ 0.5/(4·3) = 0.04 in the interior.

### (ii) Certified evaluation at a point (prototype done, §3)

Interval arithmetic in arb (python-flint) on exact trigonometric expressions. Each grid value is an interval [lo, hi] ∋ ρ_2(j, K). The method is in §3.

### (iii) The j-tail

Status of O5's constant. U3_REPAIRS R3 and the open list: "Constants C_α, ρ_1, η_0 exist and are independent of M and L; they are not computed." So C_H in ‖H_j − H_∞‖ ≤ C_H L^{−2j} is not explicit today. Making it explicit needs: (a) an explicit η_0 in Lemma C (the polydisc radius; the |φ − 1| ≤ 0.48 grid check must become an inequality), (b) explicit C in (2.3)–(2.4) (sum over l of m_l (1 + |l|)², elementary), (c) explicit γ, c, ρ_1 in §2.4 and the ratio-1/2 radius, (d) the far-zone denominators of §2.5, (e) then C_H ≤ b_num² · C_Δ with b_num a certified sup ‖𝔅^{−1}‖ (step (i-a) over all cells). Every step is elementary but long; the near-zone Cauchy constants will be poor (Cauchy on a small ball).

Recommended replacement (no O5 constant needed). Enclose all j ≥ j_0 in one interval evaluation. By U3_REPAIRS (2.2), the level-M symbol is the continuum one at q̃ = 2M sin(q/(2M)) = q·φ(q/M), φ(z) = sin(z/2)/(z/2) ∈ [1 − z²/24, 1] for real z. For every M ≥ M_0 and every box term, q̃ ∈ q·[1 − q²/(24M_0²), 1] and σ^M lies in the matching interval. Evaluating the Prop. A sum with these interval factors encloses d^M for all M ∈ [M_0, ∞] at once, and hence encloses ρ_2(j, K) for all j ≥ j_0 = log_L M_0 + 2 (inner M ≥ M_0/L). The relative width per term is q²/(24M_0²); for M_0 = 3⁷ = 2187 and the weight-carrying terms (|q| ≲ 20) it is ≤ 3.5·10^{−6}. The lattice tail (|l|_∞ > N, |q/(2M)| ≤ π/2) needs |q̃| ≥ (2/π)|q| in place of q̃ = q, which multiplies the tail enclosure of §3 by ≤ (π/2)⁶ ≈ 15; take N larger by 15^{1/4} ≈ 2. So (iii) becomes three kinds of certified runs: j = 2, …, 5 with exact finite sums (outer M = L^{j−1} ≤ 81, M⁴ ≤ 4.3·10⁷ terms, ~1 s vectorized per block); j = 6, …, j_0 − 1 with the box + interval-tail scheme at fixed M; and one run with M ∈ [M_0, ∞] that covers every j ≥ j_0 (and j = ∞). With M_0 = 3⁷, j_0 = 9. The O5 constant is then not needed at all.

### (iv) Umklapp tail of Prop. A (done in the prototype)

The dropped part of d_μ (|l|_∞ > N) lies in [Lo_μ, Hi_μ], from:
- exactly one large component ρ_0: closed forms Σ_{n∈Z} 4s²/q⁴ = (1/s² − 2/3)/4, Σ_n 16s⁴/q⁶ = (1/s² − 1 + 2s²/15)/4, Σ_n σ² = 1 (s = sin(k/2), q = k + 2πn; checked to 10^{−15}), minus the box part, and 1/(q² + R) ∈ [(1 − R/q_min²)/q², 1/q²], q_min = π(2N + 1). The R-weighted sums factor into 1D sums.
- two or more large components: [0, Σ_{pairs} E_ρE_ρ′/(2q_min²)], E_ρ = 1 − Σ_{box}σ_ρ².
Δ is then enclosed by the mean-value form Δ(d_lo + δ) ∈ Δ(d_lo) − Σ_μ [0, t_μ](Δ_ξe_μ)(Δ_ξe_μ)^†, from ∂Δ/∂d_μ = −(Δe_μ)(Δe_μ)^† (Δ is the inverse of P′diag(d)P′ on T′); the δ_μ are independent intervals. The width of the d-enclosure scales like N^{−4}. Checked: the enclosure contains a Richardson-extrapolated reference (1D closed-form sum over l_4, 3D box N = 60, 80) at k = (0.8, −0.4, 2.1, π) and at the worst block k = (2.896, 2.896, π, π) for N = 2–20.

## 3. Prototype: numerics/h2cert_proto.py (Mac, one core, python-flint arb, 96-bit)

Method at one K (j = ∞, both levels Prop. A at M = ∞).
- Entries as exact expressions in arb: ghost and k̂ from e^{ik}; the (0.4) row from B0_L3.pkl with every coefficient rounded to k/648 (all 1836 entries are within 1.3·10^{−11} of such a rational); phases e^{i offs·k_l}.
- Δ_∞(k_l): box sum |l|_∞ ≤ N in float64 with outward-rounded inputs and the a priori IEEE bound (term error ≤ γ_8, sum of M nonnegative terms ≤ γ_{M−1}), plus the two-sided tail of §2(iv), plus the mean-value Δ enclosure.
- Each bordered solve: Oishi–Rump. R = float inverse of the midpoint. η ≥ ‖R𝔅_mid − 1‖_F + ‖R‖·r, r = max block radius + rest; ‖𝔅^{−1}‖ ≤ ‖R‖/(1 − η); ‖H − H̃‖ ≤ ‖𝔅^{−1}‖·(‖𝔅_midX̃ − E‖_F + r_blk‖H̃‖ + r_rest‖X̃‖_F). ‖R‖_2 is bounded by ‖(R^†R)^{2^m}‖_F^{1/2^{m+1}} (m = 7 outer, 4 inner). Lower bound ‖𝔅^{−1}‖ ≥ ‖Rv‖/(1 + η).
- ρ_2: λ_max of the 4 × 4 Gram matrix of the exact float product X̃ = (⊕H̃_in,l)H̃_j (upper bound by Sylvester's criterion on tI − G, lower by a Rayleigh quotient), then ‖X − X̃‖ ≤ max_l e_in,l(‖H̃_j‖ + e_j) + max_l‖H̃_in,l‖e_j.

Results at K = (2.4035, 2.4035, π, π), the j = ∞ argmax of B2_TWOSTEP §4:

| run | enclosure of ρ_2 | width | float reference | time |
|---|---|---|---|---|
| truncated sum, |l|_∞ ≤ 2 (validation) | [2.063769, 2.063769] | 1.8·10^{−8} | 2.063769 (hscan, lmax 2) | 209 s |
| true ρ_2(∞, K), N = 20 + tail | [1.999315, 2.127325] | 0.128 | 2.063361 (hscan, lmax 5) | 310 s |

‖𝔅_∞(K)^{−1}‖ ∈ [42.744, 43.562] at this K (η = 9.5·10^{−3}). At the corner (π,π,π,π): ‖𝔅_∞^{−1}‖ ∈ [48.760, 50.024] (N = 20). Inner solves: max ‖𝔅_in^{−1}‖ ≤ 49.4, max ‖H_in‖ ≤ 5.191, ‖H_j‖ ≤ 5.231.
So at this K: ρ_2(∞, K) ≤ 2.128 < 3, rigorously, given the stated inputs (ledger P1–P3).
Width budget: the 0.128 comes from the tail radius of Δ (r_blk ≈ 2·10^{−4}) times ‖𝔅^{−1}‖ ≈ 49 times ‖H̃‖ ≈ 5 in the norm-wise bound. It scales as N^{−4}. N = 30 would give ≈ 0.025 but did not finish in 590 s on the Mac (13.8M terms per block, 6642 blocks); the box launcher uses N = 30.
Validation of the Δ enclosure (§2(iv)): contains the extrapolated reference at two k, N = 2, 4, 6, 12, 20 (margins 10^{−6}–10^{−3}).

## 4. Cost of the full certification

Per-point cost now (Mac, one core): one-step point ≈ 5 s (81 Δ-blocks at N = 20 + one 328 solve with norm bounds); two-step point ≈ 310 s (6642 Δ-blocks dominate).

Number of cells. A cell of half-width h is certifiable when Σ_ν h‖R∂_ν𝔅‖ ≲ 0.5 (§2 (i-a)). With g(K) := max_ν‖𝔅^{−1}∂_ν𝔅‖ (float, j = ∞, 60 random sorted K: quantiles min 1.6, median 4.0, 90% 8.3, max 12.5; 18.7 at the corner), the cell count on the sorted simplex is N_cells ≈ ∫(4g)⁴ dK = 256·vol·⟨g⁴⟩ ≈ 1.8·10⁶ per level. The corner region is undersampled; take 2–5·10⁶. The margin is not the binding constraint (true |∇ρ| ≤ 0.3).

L = 3, per level j (needed: j = 1, …, 8 and [M_0, ∞], i.e. 9 one-step runs; two-step runs for j = 2, …, 8 and [M_0, ∞]).
- One-step cells: 2·10⁶ cells × 3 point-costs (center + derivative enclosure) × 5 s ≈ 3·10⁷ core-s ≈ 8,000 core-h per level with the prototype. Too slow.
- Two-step cells on S′ only (via (1.1)): S′ volume unknown; float sampling gives 0/50 points with the product ≥ 3 and 18% with ≥ 2.9. If certified overestimates push 5% of cells into S′: 10⁵ cells × 3 × 310 s ≈ 10⁸ core-s per level. Too slow.
- Engineering that is clearly available: (a) sum one umklapp component in closed form (Σ_n 1/((k + 2πn)² + a²) = sinh a/(2a(cosh a − cos k))), so the box is 3D: 2.8·10⁶ → 6.9·10⁴ terms at N = 20 (40×); (b) solve the bordered system by its structure (block-diagonal A_l = k̂k̂^† + ¼Δ_l, rank-one ghost correction, 4-row border: an (L⁴ + 5)-unknown Schur scheme, O(L⁴) instead of (4L⁴)³; ~50× at L = 3); (c) vectorized float with a priori error bounds instead of Python-level arb loops. With (a)–(c), estimates: one-step cell ≈ 0.1–0.3 s, two-step cell ≈ 10–25 s. Then per level: one-step 2·10⁶ × 0.6 s ≈ 330 core-h; two-step 10⁵ × 50 s ≈ 1,400 core-h. Nine levels: ~1.5·10⁴ core-h. On a 16-core box: ~40 days. Order of magnitude only (factor ~3 either way).
- Further reductions, not yet quantified: reuse one-step certificates for the inner factor (the k_l of a K-cell are cells of size h/L, covered by the one-step grid), adaptive cells (g is ≤ 4 on half the domain), and a sharper (componentwise) residual bound.

L = 13. N = L⁴ = 28561 umklapps; the dense solve (114248 unknowns) is impossible, the structured solve is required. The threshold ρ_2 < 13 is wide. By (1.1), if sup_K ρ_1 < √13 = 3.606 at L = 13, the one-step certification alone proves (H2), with no two-step run. ρ_1 at L = 13 has never been measured (hcheck hardcodes L = 3; B0_L13 does not exist; the Step build at L = 13 is large). Per one-step point: 28561 Δ-blocks × ~1 ms (3D box) ≈ 30 s. Cell count unknown (g at L = 13 unknown; O6 suggests ‖𝔅^{−1}‖ may grow with L). If g is as at L = 3: 2·10⁶ cells × 90 s ≈ 5·10⁴ core-h per level. Not feasible as it stands; first step is a float measurement of ρ_1 and g at L = 13 at a few points.

Box launcher: numerics/h2cert_launch.sh runs h2cert_proto.py at N = 30 at five points (j = ∞ argmax, one-step argmax on the face, corner, two off-face points), one file per point, skip-if-done. Not launched. It is a validation run, not the certification (the cell driver is not written).

## 5. Ledger

Proved / certified here.
- C1. ρ_2(∞, K) ∈ [1.9993, 2.1273] at K = (2.4035, 2.4035, π, π), L = 3 (interval arithmetic, tail included, N = 20). Contains the float value 2.06336.
- C2. ‖𝔅_∞(K)^{−1}‖ ∈ [42.744, 43.562] at that K; ‖𝔅_∞^{−1}‖ ∈ [48.760, 50.024] at the corner (Oishi–Rump with a certified ‖R‖_2).
- C3. A two-sided enclosure of the Prop. A umklapp tail (§2(iv)) via three 1D closed forms, width ∝ N^{−4}; and the mean-value enclosure of Δ in d.
- C4. The one-step factorization (1.1) ρ_2 ≤ ρ_1(j)·max_l ρ_1(j−1); and the j-tail replacement: one interval evaluation over M ∈ [M_0, ∞] via q̃ = qφ(q/M), φ ∈ [1 − z²/24, 1]. This removes the need for an explicit O5 constant. (Argued here, not implemented.)
- C5. A uniform Λ_K from norm products (§2(i)) is ≥ 3·10³ and gives ~10^{13} cells. That route is not viable. The binding constraint for per-cell certificates is invertibility, ‖𝔅^{−1}∂𝔅‖ ≤ 19, not the margin.

Inputs taken as given (P = premise).
- P1. The (0.4) row coefficients are the rationals k/648 read from the float kernel (deviation ≤ 1.3·10^{−11}). An exact derivation from U3 (1.1) was not done. A safe alternative: treat each coefficient as an interval of radius 10^{−10} (cost: none).
- P2. Float64 operations are IEEE with round-to-nearest (a priori bounds in dbox_float, the last-bit outward rounding of arb → float conversions).
- P3. hcheck conventions (¼Δ, ghost DΠD^†, umklapp basis) are the ones that define ρ_2 (U3_AW_VERIFY §5).

Measured, not certified.
- M1. g = ‖𝔅^{−1}∂_ν𝔅‖: 1.6–12.5 on 60 random K, 18.7 at the corner; ‖∂_ν𝔅‖ ≤ 7.6; |∇ρ_1| ≤ 0.28; |∇ρ_2| ≤ 0.04 near the argmax.
- M2. Product bound (1.1) at j = ∞: < 3 at 50/50 random K (max 2.995), ≥ 2.9 at 18%.
- M3. ‖𝔅^{−1}‖ ≈ 49 at the corner in the hcheck normalization, not 195. The task's 195 and U3_REPAIRS' 177 use another normalization or Q̃ choice. Not reconciled.

Open.
- G1. The cell driver: per-cell invertibility (i-a) and mean-value enclosure (i-b), adaptive bisection on the sorted simplex, both one-step and two-step. Not written.
- G2. Engineering (a)–(c) of §4. Without it the full run is ~10⁸–10⁹ core-s; with it ~1.5·10⁴ core-h (rough).
- G3. Finite-j blocks (Prop. A at M = L^{j−1}, finite sums) and the [M_0, ∞] interval mode are not implemented; the prototype does j = ∞ only.
- G4. k_ρ = 0 exactly (closed forms with 1/s²) needs the series form; the prototype asserts s ≠ 0. Cells touching K_ρ = 0 need it.
- G5. L = 13: ρ_1 never measured; B0 for L = 13 not built; feasibility unknown. If sup ρ_1 < √13 there, (1.1) makes it one-step only.
- G6. Not independently verified. A verifier should rerun h2cert_proto.py 20 (5 min), check §2(iv) (closed forms, the ≥ 2-large bound, the mean-value step), and check the Oishi–Rump residual bookkeeping in solve_cert.
