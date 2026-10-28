# H2 certify P5 verify

Independent check of P5a (sign flips) and P5b (axis permutations) for rho_1(j,K). Started 2026-10-27.

## 1. Read G1_VERIFY section 5, sym_check.py, h2_scan.py (qprof, qsym, H2)
sym_check.py tests one random signed permutation per K (20 K), not all 384. qprof sums avg_profile output over the r index with M[:,2,2] weights. qsym takes F with possibly shape 2L along mu.

## 2. Read avg_profile/path_arrays (umk_beta1.py 68-142), h1cert_rho1.pieces
- path_arrays(d) loops over itertools.permutations(dirs): ALL orderings of the nonzero axes of d, each with equal weight. n = number of orderings. Weight per (i,j) pair = L^-4 n^-2. d runs over {-h..L-h-1}^4 = {-h..h}^4 (L odd), a symmetric block. So the profile is not built from a fixed axis ordering. The crux concern (fixed ordering) does not apply.
- Gauge: rho_1 uses A^-1 = P D P + n n^dag/|k^|^2 (Prop. A, full covariant form) and an aux border row (1 - e^{ik}) = -k^. No axial gauge, no preferred axis.
- Float side: quadrature nodes snodes(q2) use q2 = sum_i min angle^2, invariant under signed permutations. M finite window arange(M)-(M-1)//2 symmetric for odd M. M = inf window [-200,200] shifts by one under k -> -k + 2pi; tail effect expected << 1e-12.
- Timing: rho1 at L=13 takes 0.04 s per K. All 384 elements at 3 K fits in about 1 min.

## 3. Ran numerics/h1cert_verify/p5_check.py 13 (127 s, Mac)
- Symbol covariance E_q(Rk) = W_R(Lk) E_q(k) W_R(k)^dag: all 384 R x 5 random k, max rel 1.3e-13. k^(Rk) = W_R(k) k^(k): 1.2e-16.
- rho_1(j, RK) = rho_1(j, K): all 384 R at 3 K (M = inf, 13, 1): max rel 6.4e-14. 20 more random K x 8 random R: overall max 6.4e-14. No element fails at 1e-12.
- W_R(k) = Pi_R diag(eps), W[pi(nu), nu] = 1 (s_nu = +1) or -e^{-i k_nu} (s_nu = -1), (Rk)_{pi(nu)} = s_nu k_nu.

## 4. Negative controls and bb_arb.py
- Controls (L=13, small k): swap of axes 0,1 gives |E(Rk) - E(k)| = 7.8 but |E(Rk) - P E P^T| = 1.5e-13. Flip of axis 2 with W = diag(+-1) (no phase) gives error 16.0. So the check is sensitive; the phase -e^{-ik} in W_R is necessary.
- bb_arb.py (numerics/h1analytic) uses the sorted chamber u in [0,1]^4, sorted. Per H1_ANALYTIC.md line 102 it relies on the symmetry of the bound B_L, not of rho_1. B_L is built from per-axis even 1D functions, a min over c in {0,1}^4 of a max over mu, and a sum over all l in {0..L-1}^4. That is invariant under B_4 by construction. The sign reduction K in [0,pi]^4 inside the proof of rho_1 <= B_L (H1_ANALYTIC line 92, "sign symmetry of every sum") is consistent with P5a, which holds.

## 5. Grade
- P5a (sign flips): CONFIRMED. P5b (axis permutations): CONFIRMED. Full group B_4 (384 elements) holds, analytically and to 6.4e-14 numerically.
- Crux resolved: path_arrays sums over all orderings of the nonzero axes with equal weights; the d-block is symmetric; no axial gauge (A^-1 = P D P + n n^dag/|k^|^2). The profile is B_4-covariant.
- Proof gaps (minor): (i) G1 sym_check.py tested one random R per K, not the full group; p5_check.py now covers all 384. (ii) The proof is for the exact operator; the float operator differs by the M = inf window [-200,200] shift under k -> -k, measured below 1e-13 and covered by P1'. (iii) Step (c) of Lemma S3 (reflection of the coarse axis) is stated tersely; the symbol test at all 384 R confirms it.
- Consequence: DOMAIN=sorted for h1cert2 is valid. bb_arb.py chamber reduction is valid independently (B_L symmetric by construction).
