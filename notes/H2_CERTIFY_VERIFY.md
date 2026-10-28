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
