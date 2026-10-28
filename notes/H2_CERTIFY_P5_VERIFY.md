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

