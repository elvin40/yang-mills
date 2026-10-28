# H2_LARGE_L verification (independent)

Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md. Mac only, numerics/.venv.

## 1. Rerun of --check (L = 3)
`python h2_scan.py --check`: j = 2 at (2.215, 2.215, π, π) gives 2.00857 (ref 2.00857); j = ∞ at (2.403, 2.403, π, π) gives 2.06332 (ref 2.0634, aw_verify lmax 5: 2.06336). Asserts pass. 0.3 s total.

## 2. One-colour reduction (item 1a)
NUMERICS §1 at U_0 = 1: Ad_{U_0} = 1, so D = d̂_0 ⊗ 1_3; the Wilson Hessian at U = 1 is quadratic in B with tr(σ_aσ_b) ∝ δ_ab (commutator terms start at cubic order); the (0.4) linearization at U = 1 is a sum of link variables, colour identity. Code check (umk_beta1.consts, avg_profile at L = 3, p = 0): H0 = h_4 ⊗ 1_3 exactly (error 0.0); order-0 averaging matrix M = (1/√3)·1_3 for all four μ (off-diagonal and non-identity part 0.0). So the bordered matrix is three identical copies, and H, Δ_out are colour-diagonal. The constant 1/√3 is the colour normalization of the profile, the same in all copies. Normalization check: h2_scan at L = 5, K ≈ 10^{−4}: ρ_1 = ρ_2 = 1.00000002 (j = 2 and ∞), i.e. H(0) = L e_0 ⊗ 1 as in U3_AW_VERIFY §5. CONFIRMED.
