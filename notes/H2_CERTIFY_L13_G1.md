IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# H2_CERTIFY_L13_G1 — Taylor-1 cell certificate in the K̂-adapted frame (fix G1 of H2_CERTIFY_L13)

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_CERTIFY_L13.md (full), H2_CERTIFY_VERIFY.md items 2–3, H2_CERTIFY_P4.md, numerics/h1cert_cell.py, h1cert_drive.py, h1cert_rho1.py, h1cert_launch.sh, h1cert_modal.md, h2_scan.py (qsym, border, schur). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. h1cert_cell.py is not edited. Nothing launched on the box or on Modal.

## Progress log
- Started. Plan: Schur-reduce the bordered system in the frame W = [Q(K), K̂(K)], Q ⊥ K̂ exactly; Taylor-1 models of every per-block term; Oishi–Rump on the 3×3 transverse block only.
- First TM-1 version (numerics/h1cert_cell2.py): centre matches the float ρ_1 (L = 3: 1.759983 vs 1.759984). Cells at the L = 3 argmax: h = 0.01 → 2.12, h = 0.03 → 5.09, h = 0.1 fails. Diagnosis: (a) A is well conditioned (eigenvalues 0.0062, 0.0070, 0.0226 at the L = 13 argmax; Σ‖X∂A‖ = 2.2), so the K̂ leak is gone; (b) the loss is entrywise |·| products with A^{-1} (non-axis-aligned eigenvectors, factor ~14) and the a priori E remainder ½h²Σ|F|(|y|_1/L)² (= 0.125 at L = 13, h = 0.1, against |E| ~ 1). (c) d box sums at N = 5 take 19 s at L = 13.
- Fixes in progress: whitening S = U Λ^{-1/2} of A(K_c) (frame Q S), exact per-block Hessian of E at K_c (remainder ½h²Σ|H| + h³ m3/6), Ẽ = E P, smaller box N with the Hurwitz tail as interval.
- Coordinator (Elvin) added checkpoint requirements for h1cert_drive2.py (atomic per-cell JSON, scan-based skip, deterministic shards, per-subcell JSON, DONE_<mode> marker, SIGKILL resume test).
- Per-axis d jets: ball evaluation of sinc² series over the cell overestimated f'' by 40× (dependency). Replaced by a centred form from exact point jets to order 4 plus a crude ball f⁽⁴⁾. d remainder now ≤ 0.9% (L = 13, h = 0.1). N = 3 gives the same bound as N = 5 at 1/5 of the time (4 s).
- Remaining loss at L = 13, h = 0.1: Ẽ = EP has a large coarse-K̂ component (Σ|Ẽ| = 1.3·10⁵ against Σ|Q†Ẽ| = 1.3·10³). Q† removes it exactly, but TM-1 remainders of Ẽ pass through (r/lin of V = 25). Fix: use Q'† = K̂_4 Q† (rows K̂_4 e_μ − K̂_μ e_4); then V' = Q'†E and m' = |k̂|² P E†K̂ = |k̂|² E†K̂ − |K̂|² k̂ are trigonometric polynomials per block. Their Taylor coefficients to order 4 are computed exactly (contractions with weights (iy/L)^α/α!, Leibniz with the sparse K̂, |k̂|², k̂ factors), so the K̂ cancellation happens in the coefficients; orders ≥ 5 are bounded by Cauchy products of a priori majorant sequences (Σ|F|(|y|_1/L)^m/m! for E).
- Taylor-2 models (exact second-order coefficients through the block sums) + exact V′, m′ coefficients: L = 13 argmax, h = 0.05 → 2.48, 0.07 → 2.73, 0.08 → 3.10, 0.09 → 3.613 (just fails). Per cell 7 s (d 4.8 s with N = 3). Remaining loss: third-order per-block |·| products in A and C (true second-order deviation of A over the cell measured at 0.015 in ‖X·‖ against a TM-1 bound of 0.50). Next: carry exact third-order coefficients through the block sums (order-3 Taylor models, blocks processed in l_0 chunks to bound memory; the TP version peaked at 1.5 GB RSS).
- Exact order-3 coefficients through the block sums (TK models, blocks in l_0 chunks) were implemented before the coordinator's "h = 0.08 is enough" message arrived. They work and cost +1 s per cell, so they stay. At the L = 13 argmax: h = 0.10 → 2.71, 0.12 → 3.37, 0.13 → 3.89 (fails).
- Bug found by the random-K test: the ball enclosure of f⁽⁴⁾ for the n = 0 term blew up for k near 0 (Si series divided by a ball near 0). The bound was still rigorous but useless (η ~ 10¹⁴). Replaced by the a priori bound |f⁽⁴⁾| ≤ 1 for n = 0 (σ̃ is a Dirichlet kernel (1/M)Σ e^{ikm/M}, resp. ∫₀¹cos(kt/2)dt, so |σ̃⁽ⁱ⁾| ≤ 2^{−i}). A second bug: h1cert_cell.lam_max_upper fails at the corner (multiple top eigenvalue); h1cert_cell2.lam_up uses the shift 10⁻⁹ relative.
- Coordinator decisions: start cells at h = 0.08 and bisect failures; 16-fold domain; third-order sums go to the ledger as a speedup (already in).

## 1. What G1 is now (numerics/h1cert_cell2.py)

Formula. (2.1) of H2_CERTIFY_L13 with β = σ (Lemma P4, H2_CERTIFY_P4): ρ_1²L² = λ_max(Z T2 Z + w w†/σ).
Frame. Q'† has rows K̂_4 e_μ − K̂_μ e_4 (μ = 1..3), so Q'†K̂ = 0 for every K. In the frame W = [Q', K̂] the bordered matrix is [[A, b, 0],[b†, K̂†TK̂, |K̂|²],[0, |K̂|², 0]]. Z = Q'A^{−1}Q'† and w = (K̂ − Q'A^{−1}b)/|K̂|² need only the 3×3 block A = Q'†TQ'. The large K̂-direction eigenvalue of T never enters. At the L = 13 argmax A has eigenvalues 0.006–0.023 (unscaled frame), condition ~4.
Per block. By P4, Q'†EP = Q'†E =: V' and |k̂|²PE†K̂ = |k̂|²E†K̂ − |K̂|²k̂ =: m'. Both are trigonometric polynomials in K. So
  A = s²Σ V'DV'†, C = Q'†T2Q' = s²Σ V'DPDV'†, b = Q'†TK̂ = s²Σ V'D m'/|k̂|², σ = s²Σ 1/|k̂|².
Taylor models over the cell (δ = K − K_c, |δ_ν| ≤ h):
- V', m': exact Taylor coefficients to order 4 at K_c (contractions of F with weights (iy/L)^α/α!, Leibniz with the sparse K̂, |k̂|², k̂ factors). Orders ≥ 5: Cauchy products of a priori majorant sequences (Σ|F|(|y|_1/L)^m/m! for E). This step does the K̂ cancellation inside the coefficients. Without it the remainder of Q'†EP was 25× its linear part.
- d^M: box |n|_∞ ≤ N = 3 by separable box sums (value and gradient at K_c). Second-derivative bound from per-axis centred-form sup bounds of f, f', f'', and |p'| ≤ 2√p, |p''| ≤ 2. For the 200 blocks with the largest relative remainder: exact Taylor-2 term by term (third-order remainder). Tail |n|_∞ > N as an interval (Hurwitz tail_inf for M = ∞; [0, Σ(1 − B)/q̃_min²] for finite M ≥ 2N+3 and M0, plus the M0 interval [d^∞, d^∞ + diff]). N = 3 gives the same bound as N = 5 at the argmax.
- Products of per-block models keep orders ≤ 3 exactly through the block sums (cancellation across blocks is kept). Dropped orders and remainders are bounded entrywise. After the sum, order 3 goes to the remainder and A, C, b, σ become Taylor-2 models.
Inverse. Whitening S = U Λ^{−1/2} of A(K_c), then Oishi–Rump with preconditioner X = Ã(K_c)^{−1} ≈ I: η = max_vertices ‖XÃ_lin‖ + ‖XÃ_c − I‖ + h²Σ‖XH_νλ‖ + ‖X‖‖R‖ < 1 over the whole cell. A^{−1} as a Taylor-2 model, remainder ≤ e0‖X‖ + ‖X‖²‖R‖ + (2a + g')g'‖X‖ + η³/(1−η)‖X‖ (derivation in the inv_or docstring). At the L = 13 argmax, h = 0.08: η = 0.11.
λ_max. G is a Taylor-2 model. λ_max(c + linear part) is convex in δ, so its sup over the cell is the max over the 16 vertices. Each vertex: Sylvester test in arb. Plus ‖quadratic part‖ + ‖r_G‖_F.
Rigour. Ball arithmetic for the per-axis jets, the tails, the Oishi–Rump norms and the Sylvester tests. Float64 elsewhere with a priori rounding terms (EPS = 10⁻¹² per small product, 10⁻¹⁰ per block sum, 10⁻¹¹ on Taylor coefficients). Premises below.
The second-derivative bound is of both kinds: interval evaluation (centred form) for d, a priori from the trigonometric structure for E (majorant sequences).

## 2. Validation at L = 13 (Mac, one core, 8–10 s per cell)

Point bounds (h = 0) lie above the float values: j = ∞ argmax 2.0895028 vs 2.0895010; corner 2.0851187 vs 2.085117; M = 1 2.05772487 vs 2.05772478; random K (0.0251, 0.2592, 1.2123, 1.5642) 1.25622188 vs 1.25622187. M = 13 point bound 2.08975 vs 2.08929 (crude finite-M tail at N = 3).
(a) Argmax K* = (2.479644, 2.479644, π, π), j = ∞:
| h | old h1cert_cell.py | G1 (h1cert_cell2.py) |
|---|---|---|
| 0.003 | 3.172 | — |
| 0.03 | fails | — |
| 0.08 | — | 2.352 |
| 0.10 | — | 2.710 |
| 0.12 | — | 3.373 |
| 0.13 | — | 3.885 (fails) |
Largest certified half-width at K*: 0.003 → 0.12 (40×). At h = 0.12 near the peak, M = 13 gives 3.449 and M0:169 gives 3.450 (centre (2.52, 2.52, 3.0, 3.0)).
(b) 10 random sorted K (seed 2027), j = ∞, largest h certified on the grid 0.24/0.16/0.12/0.08: 0.12 at eight points, 0.16 at two. None needed h < 0.12. Before the f⁽⁴⁾ fix, two points with K_1 ≈ 0.03 failed at every h.
(c) Per cell: 8.2 s (j = ∞) / 8.1 s (M = 13) / 8.5 s (M0:169) / 3.3 s (M = 1) on an idle core; 9.5–10 s with three jobs in parallel. d box sums 4.8 s, per-block models 3.3 s. Peak RSS 0.58 GB with 13 l_0 chunks.

## 3. Cell count and core-hours (L = 13)

Symmetry. ρ_1 is invariant under K_μ → −K_μ and under axis permutations: measured to 10⁻¹⁴ at K = (0.4, 1.3, 2.2, 2.9) (premises P5a, P5b; not proved here). The default domain is [0, π]⁴ (16 sign flips only), as the coordinator asked. The sorted chamber (384-fold) is 18× smaller.
| domain | h | top cells per mode | core-h j = 1 / j = 2 / M0:169 | total | 16-core box |
|---|---|---|---|---|---|
| [0, π]⁴ | 0.08 | 160,000 | 150 / 420 / 420 | ~1,000 | ~2.6 days |
| [0, π]⁴ | 0.12 | 38,416 | 35 / 100 / 100 | ~240 | ~15 h |
| sorted | 0.08 | 8,855 | 8 / 23 / 23 | ~55 | ~3.5 h |
Times use 9.5 s per cell (loaded core) and 3.3 s for M = 1. Bisection adds cost only where a cell fails; in the 10-cell pilot no cell failed. Cells near K = 0 are recorded as near0 and are not split (G3).

## 4. Mac pilot and checkpoint test

Pilot: `python h1cert_drive2.py 13 inf 0.08 3 --diag 10`: 10 top cells (a, a, 3.12, 3.12), a = 3.12, 2.80, …, 0.24, h = 0.08, j = ∞. All 10 are ok, no bisection. Bounds 2.328, 2.350, 2.355, 2.330, 2.278, 2.205, 2.126, 2.050, 1.983, 1.932. Max 2.355 < √13 = 3.606. 9.5 s per cell. DONE marker written. Output: numerics/h1cert2_out_L13_Minf_h0.08_box_diag10/.
Kill-and-resume test (6 diagonal cells, scratch directory, deleted): the driver was killed with SIGKILL after 40 s, with 3 JSON on disk and no tmp files. The restart computed only the 3 missing cells (3 + 3, no duplicate cell names in the two logs). All 6 JSON parse. DONE_<mode> was written once, with status_counts {ok: 6}. This test ran before the f⁽⁴⁾ fix; the driver logic did not change after it.
Driver rules (h1cert_drive2.py): one JSON per cell, written to a tmp file in the same directory, fsync, then os.replace. Skip-if-done by reading the file from disk (an unreadable JSON counts as not done). Shard i of n takes the top cells with index % n == i, from a fixed enumeration. A failed cell writes status split, and its 16 children are X_0 … X_15, each skip-if-done (depth ≤ 3). DONE_<mode> is written only when a scan finds every top cell resolved.

## 5. Launchers (not launched)
- numerics/h1cert_launch2.sh: box, modes M = 1, 13, M0:169, 16 shards each, H = 0.08 (env H, DOMAIN, P, DMAX, N), OMP threads 1, skips a mode with a DONE marker, `smoke` mode. Run as a transient systemd unit with MemoryMax=16G (16 × 0.6 GB).
- numerics/h1cert_modal.md: updated table; the box run is cheaper and Modal is not needed.

## 6. Ledger

Certified now (given the premises below).
- The 10 pilot cells: sup ρ_1(j = ∞) ≤ 2.355 on the union of K ∈ (a, a, 3.12, 3.12) + [−0.08, 0.08]⁴, a ∈ {0.24, 0.56, …, 3.12}. This is 10 cells only, about 6·10⁻⁵ of [0, π]⁴. Nothing about the sup over the Brillouin zone is certified.
- Single cells of §2 (argmax h ≤ 0.12, the 10 random K, three modes at h = 0.08 and 0.12 near the peak).
What the full run would certify. If all cells of the three modes are ok except the near0 cells: sup over K outside a small ball around 0 of ρ_1(j, K) < √13 for j = 1 (M = 1), j = 2 (M = 13), and every j ≥ 3 and j = ∞ (M0:169). With G3 that is (H1_13), hence (H2) at L = 13 by ρ_2 ≤ sup ρ_1² < 13 (factorization (1.1) of H2_CERTIFY_L13).
Premises.
- P1′ float profile F = exact up to 10⁻¹³‖F‖_1 (unchanged).
- P2 IEEE float64 with the stated a priori rounding terms.
- P3 hcheck/h2_scan conventions define ρ_1 (unchanged).
- P4 is now a lemma (H2_CERTIFY_P4); not yet verified by an independent pass.
- P5a/P5b symmetry under sign flips (needed for the [0, π]⁴ domain) and permutations (only for the sorted domain): measured, not proved.
Open.
- G3: the ball around K = 0 (analytic estimate; ρ_1(0) = 1). The driver records these cells as near0.
- G4: verifier pass on the P4 proof.
- G5: verifier pass on h1cert_cell2.py: the Taylor-model product and recip remainders, the majorant sequences, the d second-derivative bound (2KA + 8KB + 40KC), the d_exact third-order bound (|p'''| ≤ 2), the Oishi–Rump Taylor-2 remainder, the vertex/convexity step, and the n = 0 bound |f⁽⁴⁾| ≤ 1.
- G6: P5a/P5b proofs (lattice reflection and permutation symmetry of the profile).
- Run on the box: needs Elvin's word.
- Speed-up options (measured): H = 0.12 cuts the [0, π]⁴ run 4.2× (~240 core-h); the sorted chamber cuts it 18× once P5b is proved.
