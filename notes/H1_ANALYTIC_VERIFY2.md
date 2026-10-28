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

## 3. indep_H.py written; L = 3 run
Sanity: K → 0 gives ρ_1 = 1.00004 (G → 1); E(0) = 3·1 (constant field averages to L); covariance E_l k̂_l = φ_l K̂ to 1.1e−15 from my own E; KKT residual ≤ 1e−14.
L = 3, 10 random K ∈ [−π, π]⁴ (seed 7), j = 1, 2, ∞: max rel |ρ_1(indep) − h1cert_rho1.rho1| = 1.4e−8 (j = 1: ≤ 6.6e−9, j = 2: ≤ 1.3e−8, j = ∞: ≤ 1.4e−8). Transverse part ρ_t² and gauge part G (λ_max of each part of my H) agree with H1_ANALYTIC (1.1) terms ZT2Z/L² and cc^†/(σ|K̂|⁴L²) to ≤ 3e−8 rel. Note: at j = 1 my side uses the exact Wilson kernel (no quadrature), so the 1e−9 level is production's quadrature (SH = 0.5). Test of that next.

## 4. Source of the 1e−8 gap at L = 3 (isolated)
- Same d fed to both: my H vs production ρ_1 agree to ≤ 1e−14 (5 K × M ∈ {1, ∞}). So the H construction (averaging row, gauge, border, norm) agrees to rounding.
- The gap is production's d (h2_scan.dgrid with snodes): relative error 1.7e−7 at M = 1 against the exact 1/|k̂|², 4.4e−7 at M = 3 against the direct 4D Prop. A sum (81 points). Cause: lower cutoff s = −18 (missing ∫_0^{1.5e−8}, ≈ 1.5e−7 rel) plus step 0.5 (≈ 5e−8). My dprop (s from −30, step 0.25) agrees with the direct M = 3 sum to 3e−12 and with step 0.125 to 3e−13.
- Effect on ρ_1: ≤ 1.4e−8 relative. It does not touch the certificates (h1cert_cell and H1_ANALYTIC use direct sums with tail bounds, not dgrid). Minor, informational.
