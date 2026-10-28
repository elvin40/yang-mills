IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
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

## 5. L = 13 run (18 s total, Mac)
10 random K (seed 7) + face points a = 2.354493, 2.478694, 2.479644 (argmax j = 1, 2, ∞ of H2_CERTIFY_L13), j ∈ {1, 2 (M = 13), ∞}; 39 cases, 0.3–0.5 s each.
- Max rel |ρ_1(indep) − h1cert_rho1.rho1| = 5.8e−9 (j = 1: 5.1e−9; j = 2: 5.8e−9; j = ∞: 5.8e−9). Same production-d source as §4.
- Face argmax values: j = 1: 2.0583955 (a = 2.354493); j = 2: 2.0892937 (a = 2.478694); j = ∞: 2.0895013 (a = 2.479644). These match the H2_CERTIFY_L13 §1 table (2.05840 / 2.08929 / 2.08950).
- Split: ρ_t² and G from my H agree with H1_ANALYTIC (1.1) terms to ≤ 1.2e−8 rel (ρ_t²) and to the printed 4 digits (G). At j = ∞ argmax: ρ_t² = 4.366016, G = 2.547e−3, ρ_1² = 4.366016 (λ_max of the sum is the transverse λ_max to 1e−7: the gauge part sits in a different input direction).
- KKT residual ≤ 3e−13.

## 6. Lemma S conventions from the avg_profile source (task 3)
Hand derivation from numerics/umk_beta1.py avg_profile (p = 0, key "0" = S0 + ind, matrix I3; qprof multiplies by M[:,2,2], so the ±1/√3 SVD signs cancel):
- Per d ∈ {−h..h}⁴, weight w = 1/(L⁴n²) over n² pairs (i, j) of axis orders of the nonzero d-axes: links of Γ1_i(0→d) with signs g1 (positive step: link at z then z += 1; negative step: z −= 1 then link at z, sign −1); seg = d + t e_μ, t = 0..L−1, sign +1; s2 = (s1 + Le_μ) reversed with g2 = −g1, i.e. −τ_{Le_μ}Γ1_j; reversed straight with sign −1. ind adds the straight with +1.
- Sums: the −straight has total weight L⁴·(1/L⁴) = 1 and cancels ind exactly. So F^μ = L^{−4}Σ_d avg_{i,j}[Γ1_i + seg(d) − τΓ1_j].
- Symbol (qsym: phase e^{iK z/L} with z = index − h, ifftn·L⁴·e^{−2πi l·h/L}, so Σ_z F(z) e^{+ik_l·z}, z = link base): seg → e^{ik·d}S_L(k_μ), S_L(x) = Σ_{t=0}^{L−1}e^{ixt}; L^{−4}Σ_d e^{ik·d} = A(k) = Π_ρ L^{−1}Σ_{|t|≤h}e^{ik_ρ t}; τ_{Le_μ} → e^{iLk_{l,μ}} = e^{iK_μ}, so Γ1 − τΓ1 → (1 − e^{iK_μ})γ̄ = −K̂_μγ̄. Rows coarse μ, columns fine ν: E_q(k_l) = diag(S_L(k_{l,μ})A(k_l)) − K̂ γ̄(k_l)^T. This is Lemma S (2.1) with g_l^† = γ̄^T. Same index and sign conventions. CONFIRMED by hand.
Numerical: my position-space E (own path code, 24 axis orders) vs production qsym: ≤ 1.8e−13 rel (L = 3, 5, 13, two K each); my E vs Lemma S + Lemma G closed form (4.1), my own implementation: ≤ 1.2e−13.

## 7. Prop. A against my own recursion (L = 3)
Level-1 kernel from my j = 1 solves, Δ_out(κ) = X^†(⊕Δ_Wilson)X: equals L^{−4}·Prop. A (M = 3) with shape deviation ≤ 5.4e−14 (the scale L^{−4} is constant in κ, so H is unchanged). ρ_1(j = 2) recursive = Prop. A = 1.726951559532 at (2.215, 2.215, π, π) (production 1.726951582546, 1.3e−8: §4 d error). Two levels (j = 3, M = 9, kernel from nested j = 1 and j = 2 solves): 1.741746764530 both ways, rel 9e−14, at (2.374, 2.374, π, π).

## 8. Lemma T point check at L = 13 (my own F sum, |n| ≤ 6)
Face points a = 2.3545, 2.4796, π: ρ_t² = 4.2370/4.3631 (j = 1/∞), 4.2342/4.3660, 4.2027/4.3477 ≤ γ_13F = 5.4504, 5.4796, 4.9740. γF at the argmax = 5.480 and at the corner 4.974 = 1.00487·4.950: both match H1_ANALYTIC §3/§5. Exact G = 2.4–2.6e−3 at these points (H1_ANALYTIC's G = 0.028 at the argmax is the majorant (5.2), not the exact value; consistent).

## 9. What is independently confirmed, and what still rests on one implementation (task 4)
Confirmed by an independent construction:
- ρ_1(j, K) = ‖H_j(K)‖/L at L = 3 (30 cases) and L = 13 (39 cases, j = 1, 2, ∞, incl. the face argmax): max rel discrepancy 1.4e−8 (L = 3), 5.8e−9 (L = 13). With the same d both codes agree to 1e−14; the residue is production's dgrid quadrature (rel 2–7e−7 in d), harmless for the certificates.
- The split (1.1): transverse and gauge λ_max from my H equal ZT2Z/L² and cc^†/(σ|K̂|⁴L²) to ≤ 3e−8. So H2_CERTIFY_L13 (2.1), P4 (β = σ), and the H1_ANALYTIC split hold for the object built from the definition.
- Lemma S index/sign conventions: by hand from source (§6) and numerically against my own path enumeration.
- Prop. A as the level-j fine kernel: recursion check one and two levels at L = 3.
- Normalization ‖H(0)‖ = L: derived from Parseval per coarse cell, not copied.
Still single-sourced:
- The reading of Balaban (0.4) (straight segment from d, average over axis orders, centred block, sign of the return path). My path code implements the same reading as avg_profile; I did not reread Balaban's paper. umk_beta1 was checked against ym_oneloop, which is a third implementation of the same reading.
- The gauge choice (ghost domain = gauge functions vanishing on coarse sites) comes from NUMERICS §5 / R2_VERIFY. H depends on this choice; I matched it, I did not rederive it from Balaban.
- Prop. A for M ≥ 27 and M = ∞: my dprop is a second implementation of the same formula (checked to 3e−12 against a direct sum at M = 3), and the recursion is checked only up to M = 9 at L = 3. M = ∞ rests on the U3_REPAIRS proof.
- Lemma G and the bound chain (Lemma T, Lemma Gauge, bb_arb) beyond the point checks of §6 and §8: not rechecked here.
Files: numerics/h1analytic/indep_H.py (`python indep_H.py 3 13`, 18 s; `python -c "import indep_H as I; I.extra()"`, 4 s).
