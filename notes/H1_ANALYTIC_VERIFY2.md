# H1_ANALYTIC_VERIFY2 — independent construction of H_j(K) (residue of H1_ANALYTIC_VERIFY item 6)

Firewall: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 0. Start
File created. Plan: read H2_LARGE_L §1–§2, U3_REPAIRS Prop. A, H1_ANALYTIC §1–§3, then build numerics/h1analytic/indep_H.py.

## 1. Definitions read
H2_LARGE_L §1, H2_CERTIFY_L13 §1–§2.1, H1_ANALYTIC §1–§5, U3_REPAIRS Prop. A read. Note: H2_LARGE_L §2 is the L = 3 validation; the definition of H is in §1 and in H2_CERTIFY_L13 §1 (H_j = one-step gauge-fixed minimizer, fine kernel Δ_{j−1} = Prop. A at M = L^{j−1}). Production h1cert_rho1 uses the augmented 5-row border of umk_beta1 (4 averaging rows + aux row d̂_0^†) and A = ⊕Δ + d̂d̂^†. avg_profile lives in numerics/umk_beta1.py, not h2_scan.py.

## 2. Independent formulation (my words, from the definitions)
- Fine Bloch field A_ν(z) = Σ_l x_{l,ν} e^{ik_l·z}, k_l = (K + 2πl)/L, link (z, ν) based at z, k̂ = e^{ik} − 1. Coarse field B_μ(y) = b_μ e^{iK·y}. Per coarse cell: fine norm² = L⁴Σ_l|x_l|², coarse norm² = |b|². So ‖H(K)‖² = L⁴λ_max(X^†X), ρ_1 = L·λ_max(X^†X)^{1/2}. K → 0: x_0 = b/L gives ρ_1 = 1 (matches H_j(0) = L e_0 ⊗ 1).
- Averaging row: linearized Balaban (0.4), coarse link 0 → Le_μ, centred block d ∈ {−h..h}⁴: F^μ = L^{−4}Σ_d avg_{orders}[path(0→d) + straight(d→d+Le_μ) − τ_{Le_μ}path(0→d)], built by my own path enumeration in position space (24 axis orders, equivalent to orders of nonzero axes), then E(k) = Σ_z F(z)e^{ik·z} by separable phase contraction. No umk_beta1/h2_scan code.
- Energy: ½Σ_l x_l^†Δ(k_l)x_l; Δ = Wilson |k̂|² − k̂k̂^† at j = 1; Prop. A [P diag(d^M) P]^+ at M = L^{j−1} otherwise (my own d^M: window m ∈ {0..M−1}, N_max = 1000 for M = ∞, trapezoid step 0.25 in log t).
- Gauge: ghost domain = λ vanishing on coarse sites (NUMERICS §5), so the minimizer has fine divergence k̂_l^†x_l = c, the same for all l (div supported on LZ⁴). Hard constraint, c free.
- KKT (sparse, 5L⁴ + 5 unknowns): Δ_l x_l + E_l^†λ + k̂_l μ_l = 0; k̂_l^†x_l − c = 0; Σ_l E_l x_l = b; −Σ_l μ_l = 0. scipy splu, four right-hand sides.
