# H2_CERTIFY verification (independent)

Verifier: Claude (Opus 5.5), 2026-10-27. Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 1. Read H2_CERTIFY.md and h2cert_proto.py; reruns launched
- Read both files in full. Launched h2cert_proto.py at N = 6 and N = 12 (background, /tmp/h2v/run{6,12}.txt).
- (H2) per B2_TWOSTEP l.120: ρ_2 = sup_j sup_K ‖(⊕_l H_{j−1}(k_l)) H_j(K)‖/L² < L. Matches H2_CERTIFY §1.
- U3_REPAIRS O6 numerics (177) use A = ⊕Δ_j + DD^† (no ¼) and Q̃ = Q − K̂Λ with the minimal Λ, j = 0, 1, 2. The prototype uses ¼Δ and the (0.4) row. So the two matrices differ in the A-block scale and in Q̃. To be reconciled in §5 below.

## 2. P1: the (0.4) row is exactly rational
- Code path: ym_oneloop.loops_for_direction (CMP 109 (0.4)). Weight per loop w = L^{−4}/(k!·k!), k = number of nonzero components of d ∈ {−1,0,1}⁴; paths = all axis orderings of the nonzero directions.
- Derived the linear coefficients exactly with Fraction (script /tmp/h2v/p1.py, μ = 0). 459 bonds, LCM of denominators = 324, row sum 0. Values: 1/324 (96), 1/162 (180), 1/108 (16), 1/54 (72), 1/36 (16), 5/162 (24), 1/27 (26), 7/162 (12), 1/9 (2), 10/81 (12), 23/27 (2), 26/27 (1).
- B0 row entries (1836 = 459 × 4): |v|·648 ∈ {2, 4, 6, 12, 18, 20, 24, 28, 72, 80, 96}, max deviation 1.27·10^{−11}. All even, so the true denominator is 324 (= 4·81), not 648. k/648 is still exact.
- Multisets agree for all non-straight bonds (counts ×4). The three straight c−→c+ bonds differ by exactly 1: exact 23/27, 26/27 vs B0 −4/27, −1/27, i.e. B0 = (my sum) − 1 on those bonds. This is an integer offset of the coarse straight link (convention of which coarse link is subtracted); it keeps the entries rational.
- Verdict P1: CONFIRMED (exact rationals, denominator 324). Not checked: position-by-position match (only multiset), and fidelity of the code's loop family to Balaban's paper (that is premise P3).
- Correction to the task's hint: the plain block average alone gives 1/81 per site; the denominator 324 comes from the 1/(k!)² ordering average after cancellation, not from 8·81.

## 3. Item (3): umklapp tail enclosure
Closed forms (s = sin(k/2), q = k + 2πn, n ∈ Z): Σ 4s²/q² = 1; Σ 4s²/q⁴ = (1/s² − 2/3)/4; Σ 16s⁴/q⁶ = (1/s² − 1 + 2s²/15)/4.
Brute force |n| ≤ 2·10⁶ at k = 0.3, 1.1, 2.9, π: errors ≤ 3.6·10^{−15} for the 2nd and 3rd; the 1st misses 10^{−7}·s², the expected truncated tail. CONFIRMED.
Bookkeeping in tail_enclosure, rederived:
- One large component r_0: 1/(q²+R) ≤ 1/q² gives Hi; 1/(q²+R) ≥ 1/q² − R/q⁴ ≥ 1/q² − R/(q²q_min²) gives Lo. R-weighted sums factor into 1D sums (B1, B2). Correct.
- q_min = π(2N+1) is valid because the fine momenta k_l = (K + 2πl)/3 satisfy |k| ≤ π.
- ≥ 2 large components: σ_μ² ≤ 1, |q|² ≥ 2q_min², union over pairs gives Σ_{a<b} E_aE_b/(2q_min²). Correct (upper bound; lower 0).
- Mean-value step: ∂Δ/∂d_μ = −(Δe_μ)(Δe_μ)^† for Δ = Y − Yk̂k̂^†Y/(k̂^†Yk̂). Code takes Δ(d_lo) − Σ_u [0, w_u]·(Δ_ξ e_u)(Δ_ξ e_u)^†, Δ_ξ an interval evaluation on the full d-box. Entry-wise hulls are convex, so the integral form is enclosed. Correct.
- dbox_float: a priori γ bound 2(M+8)u on nonnegative terms, outward-rounded inputs. Correct. Nit: nextafter(0, −inf) could make a lower input −5·10^{−324}; irrelevant here because s ≠ 0.
Verdict (3): CONFIRMED. Limitation: valid for M = ∞ only (see §5 on finite M).

## 4. Item (2): Oishi–Rump in solve_cert
- ‖B^{−1}‖ ≤ ‖R‖/(1 − η), η ≥ ‖RB_mid − I‖_F + ‖R‖·r, r = max_l ‖rad(block_l)‖_F + ‖rad(rest)‖_F. Each term is a valid 2-norm bound (block-diagonal part: max of block norms; rest: Frobenius ≥ 2-norm). Correct.
- ‖R‖_2 uses ‖(R^†R)^{2^m}‖_F^{1/2^{m+1}}, computed in arb (96 bits). This is a rigorous upper bound, not a heuristic. Overestimate ≤ n^{1/2^{m+2}}: 1.011 (m = 7, outer), 1.095 (m = 4, inner). The Frobenius norm is the certified quantity; it only inflates width.
- Residual: ‖H − H̃‖ ≤ ‖B^{−1}‖(‖B_midX̃ − E‖_F + r_blk‖X̃_top‖ + r_rest‖X̃‖_F). Block radii act only on columns < 324, so the top-row norm is right. Correct.
- Two-step error ‖X − X̃‖ ≤ max e_in(‖H̃_j‖ + e_j) + max‖H̃_in‖e_j: correct by the direct-sum bound. λ_max via Rayleigh (lower) and interval Sylvester minors of tI − G (upper): correct.
- Lower bound ‖B^{−1}‖ ≥ ‖Rv‖/(1 + η): from R = B^{−1}(RB) ⇒ ‖Rv‖ ≤ ‖B^{−1}‖(1 + η). Correct.
Verdict (2) bound part: CONFIRMED. Normalization part: see §6.

## 5. Items (5) and (6)
(5) X = (⊕_l A_l)B, B = column of blocks B_l: ‖Xv‖² = Σ_l‖A_lB_lv‖² ≤ max_l‖A_l‖² Σ_l‖B_lv‖². So ‖X‖ ≤ max_l‖A_l‖‖B‖, and ρ_2(j,K) ≤ ρ_1(j,K)·max_l ρ_1(j−1,k_l) with the L² = L·L split. Exact. CONFIRMED.
(6) φ(z) = sin(z/2)/(z/2) ∈ [1 − z²/24, 1] for all real z (sin x ≥ x − x³/6 for x ≥ 0). Box terms: enclosure valid for all M ≥ M_0 at once. Two gaps:
- (a) Finite M sums only over |q_ν| ≤ Mπ (U3_REPAIRS §1, §2.2). The tail Lo of §3 assumes the full infinite tail. For finite M the true tail is a subset, so Lo must be replaced by 0 (or by a bound of the truncated part). As written the lower side is not valid for finite M.
- (b) The factor (π/2)⁶ ≈ 15 covers one-large-component terms (σ_{r0}², σ_μ² if μ = r0, 1/|q̃|²). For ≥ 2 large components, each extra large σ² adds (π/2)², up to (π/2)^{12} ≈ 225 in the crude bound. Those terms are O(q_min^{−2}) smaller, so N grows only mildly; the factor must be stated per class.
Verdict (6): CORRECTED (idea sound; tail must use Lo = 0 for finite M and class-wise factors). Not implemented, as the author says.

## 6. Normalization of ‖𝔅^{−1}‖ (42.7 vs 177/195): reconciled
Script /tmp/h2v/norm.py: hcheck matrix with fine blocks ¼Δ (as coded) and with Δ (×4), lmax 5.
| K | level | ‖𝔅^{−1}‖, ¼Δ | ‖𝔅^{−1}‖, Δ | ρ_1 (both) |
|---|---|---|---|---|
| (π−10^{−6})·1 | M = 3 | 44.70 | 176.67 | 1.6882 |
| (π−10^{−6})·1 | M = 9 | 48.75 | 192.99 | 1.7098 |
| (π−10^{−6})·1 | M = ∞ | 49.34 | 195.34 | 1.7132 |
| (2.4035, 2.4035, π, π) | M = ∞ | 43.15 | 170.23 | 1.7436 |
- U3_REPAIRS' 177 (M = 3, corner) and the task's 195 (M = ∞, corner) are the full-Δ normalization of O6 (A = ⊕Δ + DD^†). The factor ≈ 4 is the ¼. The Q̃ choice matters little here: σ_min(Q̃) = 0.213 for the (0.4) row vs 0.21 reported for the minimal-Λ row.
- ρ_1 is identical to 4 digits in both normalizations. Reason: H minimizes ⟨x, Ax⟩ on {Q̃x = 1}; Q̃D = 0 and Δ ⊕ vanishes on im D, so the im D component is 0 and scaling Δ only rescales the objective. So ρ_2 does not depend on this choice; ‖𝔅^{−1}‖ does.
- Verdict (2): CORRECTED. Bounds are right; "unreconciled" is wrong (factor 4 from ¼Δ). "The hcheck number enters ρ_2" is imprecise: no ‖𝔅^{−1}‖ enters ρ_2; it enters only the cell-size and O5-constant estimates, for the matrix actually solved.

## 7. Item (1): reruns of h2cert_proto.py at K = (2.4035, 2.4035, π, π)
| N | result | width | time |
|---|---|---|---|
| 6 | aborted: inner solve η = 1.159 > 1 (assert) | — | ~30 s |
| 12 | [1.547453, 2.579186] | 1.03 | 251 s |
| 20 (author) | [1.999315, 2.127325] | 0.128 | 310 s |
- N = 12 contains the float value 2.063361 (hscan lmax 5) and is < 3. Width ratio 1.03/0.128 = 8.0 vs (20/12)⁴ = 7.7, consistent with N^{−4}.
- N = 6 fails safe: the code refuses rather than reporting a wrong interval. Outer solve at N = 6 had η = 0.956 and ‖𝔅^{−1}‖ ≤ 975.
- Outer ‖𝔅^{−1}‖ at N = 12: [40.37, 46.34], contains the author's N = 20 interval [42.744, 43.562].
Verdict (1): CONFIRMED given P1–P3 (P1 now proved, §2). Scope: one point, j = ∞ only.
Item (4): arithmetic rechecked. b²‖∂𝔅‖ = 49.3²·7.6 = 1.85·10⁴; (2.1) gives 2.8·10⁴; with ‖H_full‖ ≈ 6 in place of one b: 3.5·10³. Inputs are float measurements. The claim "uniform norm-product Λ_K is useless" is CONFIRMED. The per-cell replacement (i-a)/(i-b) is standard Krawczyk/Oishi-type logic and correct as stated; not implemented (G1).

## 8. Items (7) cost and (8) launcher
(7) Cost. The estimates are order-of-magnitude and unmeasured beyond the prototype. One measured point against the model: N = 12 (25⁴ = 3.9·10⁵ box terms per block) took 251 s and N = 20 (41⁴ = 2.8·10⁶) took 310 s. So 7.3× more terms cost only 1.2× time: at these N the Python-level arb work dominates, not the box sum. Engineering (a) (3D box, 40× fewer terms) will give far less than 40× at N = 20; (c) and (b) are the real levers. The cell-count ∫(4g)⁴ uses g from 60 float points with the corner undersampled. Verdict (7): UNSUPPORTED (plausible but not evidenced; (a) speedup overstated).
(8) Launcher h2cert_launch.sh: five points at N = 30, one output file per point, skip-if-done on the "tail included" line, transient systemd unit with MemoryMax, OMP_NUM_THREADS=1. Checkpoint granularity = one point (15–20 min est.); a killed point restarts from zero, which is acceptable. Not launched (no word from Elvin). Verdict (8): CONFIRMED as a correct, checkpointed validation launcher; it is not the certification.
