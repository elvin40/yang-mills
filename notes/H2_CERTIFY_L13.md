IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# H2_CERTIFY_L13 — the one-step condition (H1_L) at L = 13: measurement, cell certificate, cost

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_CERTIFY.md, numerics/h2cert_proto.py, H2_LARGE_L.md, H2_LARGE_L_VERIFY.md, numerics/h2_scan.py, B2_TWOSTEP.md §1–§2, THEOREM2_PROOF_v4.md (range of L). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. New files: this file, numerics/h1cert_rho1.py, numerics/h1cert_cell.py, numerics/h1cert_drive.py, numerics/h1cert_launch.sh, numerics/h1cert_modal.md, and data files numerics/h1cert_L{L}_j{j}.json, numerics/h1cert_prof_L{11,13}.npz. Nothing was launched on the box or on Modal.

Sections: §1 statement and float measurement; §2 the cell certificate; §3 validation; §4 cost at L = 13; §5 launchers; §6 ledger.

## 1. Statement and float measurement

Normalization (as H2_CERTIFY §1 and h2_scan.py). One colour. Level-j units. Fine momenta k_l = (K + 2πl)/L, l ∈ {0..L−1}⁴. H_j(K) is the one-step gauge-fixed minimizer map (4L⁴ × 4), fine kernel Δ_{j−1} = Prop. A at M = L^{j−1} (j = 1: Wilson, M = 1; j = ∞: fixed point). H_j(0) = L·e_{l=0} ⊗ 1, so ‖H_j(0)‖ = L.
  ρ_1(j, K) := ‖H_j(K)‖ / L.
So at L = 3 the norm of the matrix is ‖H‖ = L·ρ_1 ≈ 3 × 1.76 = 5.28 at the argmax; ρ_1 itself is ≈ 1.76.

(H1_L): sup_{j≥1} sup_K ρ_1(j, K)² < L.
By the factorization (H2_CERTIFY (1.1)), ρ_2(j, K) ≤ ρ_1(j, K)·max_l ρ_1(j−1, k_l) ≤ sup ρ_1². So (H1_L) implies (H2) with ρ_2 ≤ sup ρ_1² < L. It also gives the one-step C¹ factor ρ_1²/L < 1 of B2_TWOSTEP §2 directly (Theorem C1 then runs with one step; the two-step map is not needed).

Code: numerics/h1cert_rho1.py. It reuses the umklapp Schur pieces of h2_scan.py (qsym, border, schur, dgrid) for one step. Per K only 5×5 matrices appear: S = J − L^{−4}Σ_l E_lY_l, R = L^{−4}Σ_l Y_l^†Y_l, Y_l = A_l^{−1}E_l^†, A_l^{−1} = P diag(d) P + nn^†/|k̂|². Then
  ρ_1(K)² = λ_max(S_c^† R S_c)/L²,  S_c = (S^{−1})_{:,1:4}.
Cost per K: 0.04 s at L = 13 (28561 blocks), after a one-time profile build (36 s at L = 11, 74 s at L = 13, Mac). The cost estimate of H2_CERTIFY §4 (30 s per point at L = 13) was for the arb version; the float scan is ~10³ times cheaper.

Validation (`python h1cert_rho1.py 0 0 --check`, 0.3 s):
- L = 3: ρ_1 equals the outer ρ_1 of h2_scan.py (which uses Δ_out from an inner Schur solve, not Prop. A) to < 10^{−6} at j = 2 (1.726952) and j = ∞ (1.743555). So Prop. A at M = L^{j−1} and the recursive Δ give the same H.
- L = 5: 1.86005 (j = 1) and 1.96296 (j = ∞), against 1.8600 and 1.9630 of the independent dense code (H2_LARGE_L_VERIFY §6).
- L = 3 scan maxima 1.6516 / 1.7360 / 1.7600 (j = 1 / 2 / ∞) reproduce B2_TWOSTEP §2 Remark (a).

Scans. Face diagonal K = (a, a, π, π), 13 points, then a bounded 1D refinement, plus 8 random sorted K, the corner, and 4 off-face probes (numerics/h1cert_L{L}_j{j}.json). For j = ∞ at every L, and j = 1, 2 at L = 13, also a wide search: 330-point sorted 4D grid (8 per axis) + 1000 uniform random sorted K + five 4D Nelder–Mead runs (from the top 3 points and the 2 best off-face points, K_3 < π − 0.05). Every Nelder–Mead run, including the off-face starts, converges to the face diagonal.

| L | ρ_1(j = 1) | ρ_1(j = 2) | ρ_1(j = ∞) | argmax a (j = ∞), K = (a, a, π, π) | corner (π,π,π,π), j = ∞ | √L | margin √L − ρ_1 | sup ρ_1²/L |
|---|---|---|---|---|---|---|---|---|
| 3 | 1.65157 | 1.73596 | 1.75998 | 1.921 | — | 1.732 | −0.028 | 1.033 |
| 5 | 1.86005 | 1.95651 | 1.96296 | 2.187 | 1.94328 | 2.236 | 0.273 | 0.771 |
| 7 | 1.95669 | 2.03009 | 2.03217 | 2.324 | 2.02163 | 2.646 | 0.614 | 0.590 |
| 9 | 2.00853 | 2.06246 | 2.06329 | 2.402 | 2.05631 | 3.000 | 0.937 | 0.473 |
| 11 | 2.03908 | 2.07938 | 2.07977 | 2.449 | 2.07448 | 3.317 | 1.237 | 0.393 |
| 13 | 2.05840 | 2.08929 | 2.08950 | 2.480 | 2.08512 | 3.606 | 1.516 | 0.336 |

Remarks.
- The sup increases with j (j = 1 < 2 < ∞), and the gap j = 2 → ∞ is 2·10^{−4} at L = 13 (ratio ≈ L² per level, as for ρ_2). So j = ∞ is the binding level in every measurement. This is measured, not proved; the certification does not use it.
- Increments in L (j = ∞): 0.203, 0.069, 0.031, 0.016, 0.010. They fall roughly like L^{−2}–L^{−3}; a limit ≈ 2.10–2.11 is consistent. ρ_1(9, ∞) = 2.06329 is close to ρ_2(3, ∞) = 2.06332 (tower heuristic of H2_LARGE_L §5), not equal.
- (H1_L) holds numerically for every L ≥ 5, with the measured margin 0.27 (L = 5), 1.24 (L = 11), 1.52 (L = 13). At L = 13: sup ρ_1² = 4.366 < 13, so the implied bound ρ_2 ≤ 4.37 has margin 8.6 against L. These are lower estimates of a sup (grid + local search), not certificates.
- The corner stays below the face peak by 0.004–0.02, and the best off-face grid point by ~0.005. No competing maximum was found.

## 2. The cell certificate (numerics/h1cert_cell.py)

### 2.1 Gauge-reduced one-step formula (new, exact)

The 5×5 Schur matrix S of §1 is badly suited to cell enclosures. Its 4×4 block is ~10^{−2}, its aux row ~0.3, ‖S^{−1}‖ = 138 (L = 3) and 175 (L = 13), and Σ_ν‖S^{−1}∂_νS‖ = 65 (L = 3) and 152 (L = 13) at the argmax. With S, an Oishi–Rump cell needs h < 1/152 even with exact derivatives. The cause is the gauge direction K̂ = e^{iK} − 1, which rotates with K. I removed it analytically.

Identity used (premise P4, gauge covariance of the linearized (0.4) averaging): E_{q,l}k̂_l = φ_l K̂ for every block l, E_{q,l} the 4×4 q_0 symbol (coarse × fine). Measured: relative deviation 2.4–3.0·10^{−15} at four K (L = 3). Also S_55 = 1 − L^{−4}Σ_l k̂_l^†A_l^{−1}k̂_l = 0 exactly, and S_{1:4,5} = βK̂.
Define, with P_l = 1 − k̂_lk̂_l^†/|k̂_l|², D_l = diag(d(k_l)), s = L^{−2}:
  T = s²Σ_l E_qP_lD_lP_lE_q^†,  T2 = s²Σ_l E_qP_lD_lP_lD_lP_lE_q^†,  β = s²Σ_l φ_l/|k̂_l|²,  σ = s²Σ_l 1/|k̂_l|².
Solving S[x; y] = [b; 0] gives x ⊥ K̂, x = −(PTP)^+Pb (P ⊥ K̂), y = (K̂^†b + K̂^†Tx)/(β|K̂|²), and per block H_lb = −sP_lD_lP_lE_q^†x + s k̂_l y/|k̂_l|² (the two parts are orthogonal). Hence
  ρ_1(K)² L² = λ_max( Z T2 Z + (σ/|β|²) w w^† ),  [[T, K̂],[K̂^†, 0]]^{−1} = [[Z, w],[w^†, ·]].   (2.1)
Only 4×4 sums of PSD block terms and one 5×5 bordered inverse appear. Check: (2.1) equals the §1 value to 10^{−14} at the argmax and three random K (L = 3). G is invariant under T → T + γK̂K̂^†.

### 2.2 Enclosure over a cell C = K_c + [−h, h]⁴

- Per axis and l: k′ = (K + 2πl′)/L with |l′| ≤ (L−1)/2, so |k′| ≤ π + h/L. k̂, σ², q² as arb balls.
- d^M_μ, box |n|_∞ ≤ N: float64 sum with outward-rounded inputs and the a priori bound γ, vectorized over all L⁴ blocks (as dbox_float of the prototype).
- d^∞ tail: the prototype's one-large/two-large split with q_min = π(2N+1) − h/L. The 1D tails Σ_{|n|>N}4s²/q⁴, 16s⁴/q⁶, 4s²/q² use the Hurwitz zeta ζ(p, N+1 ± k/2π) in arb. The prototype's "closed form minus box" was correct at a point but lost everything on intervals (relative d width 3.1 at h = 0.01); Hurwitz gives 0.029. It is also valid at k = 0.
- Finite M: Prop. A over the centred M-window (exact when M < 2N+3). Otherwise box N plus the tail [0, Σ_ρ(1 − B_ρ)/q̃_min²], q̃_min = (2/π)q_min. This uses Σ_window σ̃² = 1 (exact) and σ̃² ≤ 1.
- Mode M0:M_0: every M ≥ M_0 and M = ∞ at once, q̃ = qφ, φ ∈ [1 − q²/(24M_0²), 1] (H2_CERTIFY §2(iii)), plus the same crude tail.
- q_0 rows E_q: centre value by an explicit einsum contraction (a priori error γ·Σ|F|; F treated as exact up to 10^{−13}‖F‖_1, premise P1′). Cell radius by Taylor: h_k Σ_ν|∂_νE(K_c)| + ½h_k²Σ|F||y|_1².
- E_qP_l: centred form E_qP(K_c) + Σ_ν[−h, h]∂_ν(E_qP)(C), with ∂(E_qP) = (∂E)P + E∂P enclosed over C. A naive interval product loses the cancellation of the gauge part of E_q (T radius 17% at h = 0.01 naive, 5% centred).
- Final stage: Oishi–Rump on the bordered matrix [[T, τn],[τn^†, 0]], n = K̂/|K̂|, τ = √(λ_min λ_max(T)). Then a norm-wise Weyl bound for (2.1) and a Sylvester test for λ_max of the float core. The arb interval inverse of T was tried and fails (dependency): bound 2.66 at h = 0.001 against 1.76.
- Cells whose block-momentum ball contains 0 (K near 0) return None. They are not certified (G3).

Usage: `python h1cert_cell.py L M h N K1 K2 K3 K4` (M = inf, an integer, or M0:<M_0>). Driver: numerics/h1cert_drive.py (sorted top cubes of half-width h, 16-way bisection on failure, one JSON per top cube, shards).

## 3. Validation

Point enclosures (h = 0, N = 5). The bound must lie above the float value. Normalization: ρ_1 = ‖H‖/L. At L = 3 the matrix norm is ‖H‖ = 3 × 1.76 = 5.28.
| L | j (M) | K | float ρ_1 | certified upper bound | time |
|---|---|---|---|---|---|
| 3 | ∞ | (1.921224, 1.921224, π, π) | 1.759984 | 1.760025 (‖H‖ ≤ 5.28007) | 0.0 s |
| 3 | ∞ | (0.3, 0.7, 1.1, 2.9) | 1.262225 | 1.262232 | 0.0 s |
| 5 | ∞ | (2.186862, 2.186862, π, π) | 1.962956 | 1.963093 | 0.1 s |
| 5 | 1 (M = 1) | (1.916483, 1.916483, π, π) | 1.860049 | 1.860049 | 0.1 s |
| 13 | ∞ | (2.479644, 2.479644, π, π) | 2.089501 | 2.090086 | 6.4 s |
| 13 | 1 (M = 1) | (2.354493, 2.354493, π, π) | 2.058395 | 2.058396 | 4.4 s |
| 13 | 2 (M = 13) | (2.478694, 2.478694, π, π) | 2.089294 | 2.113073 | 6.3 s |
| 13 | all j ≥ 3 and ∞ (M0:169) | (2.479644, 2.479644, π, π) | 2.089500 (j = 3) | 2.166810 | 6.4 s |
d enclosures are nested in N (N = 14 inside N = 5) and contain the float reference up to the reference's own quadrature error (≤ 4·10^{−6} relative). At L = 3 the d enclosure narrows like N^{−4}: relative width 1.9·10^{−2}, 4.8·10^{−3}, 7.7·10^{−4}, 1.3·10^{−4} for N = 2, 3, 5, 8.

Cells (half-width h, j = ∞):
| L | K_c | h | certified upper bound |
|---|---|---|---|
| 3 | argmax | 0.001 / 0.003 / 0.01 / 0.03 | 1.850 / 2.057 / 3.223 / fails (η = 1.13) |
| 5 | argmax | 0.001 | 2.061 |
| 13 | argmax | 0.0003 / 0.001 / 0.003 | 2.156 / 2.337 / 3.172 (< √13 = 3.606: certified) |
At L = 13, binary search for the largest certifiable h: corner (π,π,π,π) < 0.003; seven random sorted K: 0.0059, 0.0059, 0.0059, 0.0074, 0.0133, 0.0133, 0.0192. The driver (L = 5, top cube (1.5, 1.5, 2.5, 2.5), h = 0.01, one bisection) returns FAILED: 16 subcells at h = 0.005 give ≤ 2.29 > √5 = 2.236. The L = 5 margin is only 0.27.

Verdict on the present cell code. Every enclosure is rigorous given P1′, P2, P4. Its cell radius grows ~100× faster than the true variation of ρ_1. Cause: the large K̂-direction eigenvalue of T (0.215 at the L = 13 argmax, against 0.006 for the transverse ones) rotates with K. Norm-wise perturbation lets its O(h) rotation leak into the small block. At L = 3 the same mechanism stops cells at h ≈ 0.003, below the zero margin there anyway.

## 4. Cost at L = 13

Gradient. Measured |∇ρ_1| ≤ 0.38 (40 random K, L = 13; 0.30 at L = 3; 0 at the argmax and the corner). The bound of H2_CERTIFY §4 (≤ 0.3 at L = 3) transfers in size. One-step derivative bound, from (2.1): with [∂Z ∂w] read from −B′^{−1}(∂_νB′)B′^{−1} and ε_ν := ‖B′^{−1}‖‖B′^{−1}∂_νB′‖ over the cell,
  sup_C ‖∂_νG‖ ≤ 2‖Z‖‖T2‖ε_ν + ‖Z‖²‖∂_νT2‖ + 2γ‖w‖ε_ν + |∂_νγ|‖w‖²,  γ = σ/|β|²,  and λ_max(G(K)) ≤ λ_max(G(K_c)) + h Σ_ν sup_C‖∂_νG‖.
If only the gradient mattered, the margin 1.5 would allow h ≈ 1.5/(2·0.38) ≈ 2: a handful of cells. The gradient is not the binding constraint. The binding constraint is invertibility of the bordered matrix over the cell, η = ‖X(B′(K) − B′(K_c))‖ < 1, as in H2_CERTIFY C5.

The fix (G1, not written): a Taylor-1 (centred) evaluation of T, T2, β, σ as whole sums, in a K̂-adapted bordered matrix B′ = [[T − (n^†Tn − t_0)nn^†, τn],[τn^†, 0]] (allowed by the invariance of (2.1)). It needs derivative enclosures of d (Prop. A derivative box sums and Hurwitz tails) and of E_qP. Measured true sensitivity of B′ (float, 40 random K): Σ_ν‖X′∂_νB′‖ = 1.49 (min, corner), 3.26 (median), 3.75 (90%), 4.14 (max) at L = 13; nearly the same at L = 3. Ideal cell half-width h = 0.5/Σ: 0.12–0.34.

Cell counts on the sorted chamber (volume π⁴/24 = 4.06), per level:
- Present code: h ≈ 0.006–0.019 at random K and < 0.003 at the corner. ∫(2h)^{−4}dK over the seven samples gives ~1·10⁸ cells. Per cell 6.4 s (d, E 2.0 s; block loop 4.3 s; one core). That is ~1.8·10⁵ core-h per level.
- Taylor-1 (G1), ideal: ~520 cells per level. Allowing a 3× overestimate of the cell radius: ×81, ~4·10⁴ cells. Per cell ~30 s (estimate: 5 point-equivalents). That is ~350 core-h per level.
- Excluded: a ball around K = 0. ρ_1(0) = 1 exactly, but the blocks near k = 0 and n = K̂/|K̂| degenerate. It needs an analytic ball estimate (G3); the number of shells grows only like log(1/r_0).

Levels at L = 13. ρ_1 at level j uses Δ_{j−1} = Prop. A at M = 13^{j−1}. Three runs cover every j:
- j = 1 (M = 1, Wilson, exact, no tail),
- j = 2 (M = 13, finite window),
- M0:169 covers every j ≥ 3 and j = ∞ at once (point bound 2.167 at the argmax: the interval in M costs 0.08 of the 1.52 margin).
No O5 constant and no j-tail argument are needed: the M0 mode is a direct enclosure for all M ≥ M_0.
Total for (H1_13): present code ~5·10⁵ core-h (not sensible); with G1 ~1,100 core-h ≈ $75 on Modal (§5). On the 16-core box: ~3 days with G1.

## 5. Launchers (not launched)

- numerics/h1cert_launch.sh: box, three level runs, 16 shards per run, one JSON per top cube (atomic write), skip-if-done. It has a `smoke` mode (one point + 2 top cubes). It is the harness for the G1 cell code. With the present cell code it would need ~10⁸ cubes per level, so do not start it as is.
- numerics/h1cert_modal.md: image (debian_slim + numpy, scipy, python-flint 0.9.0 + the four files + the L = 13 profile cache), one function per shard batch, Volume checkpoint. Price from modal.com/pricing (2026-10-27): $0.0000131 per physical core-second = $0.047 per core-h, plus memory; I use $0.07 per core-h all-in. G1: ~1,100 core-h ≈ $75, wall ~17 h with 64 workers or ~4 h with 256. Present code: ~$37,000; not recommended.

## 6. Ledger

Certified today (interval arithmetic, premises below).
- C1. Point enclosures of ρ_1 at single K (table §3), including L = 13: ρ_1(∞, K*) ≤ 2.0901 at K* = (2.479644, 2.479644, π, π), and the all-j ≥ 3 bound ≤ 2.1668 there (M0:169).
- C2. Small cells: e.g. sup over K* + [−0.003, 0.003]⁴ of ρ_1(∞) ≤ 3.172 < √13 at L = 13.
- Nothing about a sup over the Brillouin zone is certified. (H1_L) is not proved at any L.

Proved here (algebra, not interval).
- (2.1), the gauge-reduced formula, given P4. Numerically equal to the Schur form to 10^{−14}.
- The cell machinery of §2.2 (Hurwitz tails, the finite-M and M0 tails, Taylor E rows, centred E_qP, Oishi–Rump on the bordered matrix).

Measured, not certified.
- M1. ρ_1(j = ∞) = 1.760, 1.963, 2.032, 2.063, 2.080, 2.090 at L = 3, 5, 7, 9, 11, 13. Argmax on the face diagonal (a, a, π, π). At L = 13: margin √13 − ρ_1 = 1.516, sup ρ_1² = 4.366 < 13, so ρ_2 ≤ 4.37 by (1.1). j = 1, 2 are lower: 2.058 and 2.089.
- M2. Wide 4D search (330 grid + 1000 random + 5 Nelder–Mead) at L = 5–13 finds no off-diagonal maximum.
- M3. |∇ρ_1| ≤ 0.38 (L = 13), true bordered sensitivity in the adapted frame 1.5–4.1.

Premises. P1′: the float profile F is the exact operator up to 10^{−13}‖F‖_1 per row (not checked against an exact derivation). P2: IEEE float64 with the stated a priori bounds (box sums, einsum contraction, np.exp phases). P3: hcheck/h2_scan conventions define ρ_1 (validated against h2_scan and the dense L = 5 code). P4: gauge covariance E_{q,l}k̂_l ∥ K̂, exact for the exact operator (checked to 3·10^{−15}; a proof from the (0.4) path structure is not written).

Open.
- G1. Taylor-1 cell code in the K̂-adapted frame (derivatives of the Prop. A sums with tails, of E_qP, and the centred sums). This is the only route to an affordable run (~1,100 core-h at L = 13). Not written.
- G2. Pilot of G1 on the Mac (a 1% sample of top cubes, measured rate and count), then the three runs.
- G3. The K = 0 ball (analytic estimate, ρ_1(0) = 1).
- G4. A proof of P4, or an interval check of it inside the cell code (cheap: enclose E_qk̂ − φK̂ and carry the residual).
- G5. Verifier pass. Rerun `python h1cert_rho1.py 0 0 --check` and the §3 table commands. Recheck the derivation of (2.1), the tail bounds of §2.2 (Hurwitz, finite-M window identity Σσ̃² = 1, σ̃² ≤ 1, q̃ ≥ (2/π)q on the window), and the Oishi–Rump/Weyl bookkeeping in final_bound.
- G6. L = 3 is out of reach for (H1): ρ_1² = 3.10 > 3. The two-step route (H2_CERTIFY) stays the only one there. Balaban's range (odd L > 11, THEOREM2_PROOF_v4) needs L = 13 or more, where (H1) has a 1.5 margin.
