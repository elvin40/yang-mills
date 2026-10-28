# SOURCES_R3S1_NUMERICS — lattice GPY potential, holonomy mass, Villain self-energy for R3S1_GAP

Written 2026-10-28 (Claude, Opus 5.5). New file. No existing file edited. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Scripts: numerics/r3s1_gpy_lattice.py (about 70 s on the Mac), numerics/villain_self_energy.py (under 1 s).
Notation follows R3S1_GAP: circle length L, N_4 sites, spacing a = L/N_4, coupling g, Wilson action (2/g²)Σ Re tr(1 − U_p), deformation a_n|tr Ω^n|² per unit L³ of 3-volume (R3S1_GAP §1.1 at spacing a: N_4^{−3}a_n|tr Ω^n|² per spatial site). Holonomy Ω = diag(e^{iθ_j}), Σθ_j = 0. For SU(2), φ := θ_1 − θ_2, so the center-symmetric point is φ = π (R3S1_GAP §4.2: S_BPS = 4πφ/g²).
Grades as in R3S1_GAP: [P] derived here, [N] numerical, [I] recalled.

---

## 1. Lattice Gross–Pisarski–Yaffe potential and the holonomy mass [N, P]

### 1.1 Exact lattice formula [P]
Around a constant flat background with holonomy Ω, background Feynman gauge on the lattice gives 4 copies of the covariant lattice Laplacian minus 2 ghost copies, for each color component (i, j) with twist θ_ij = θ_i − θ_j. Flat background means the lattice covariant differences commute, so no extra terms appear. The temporal product formula
  Π_{k=0}^{N_4−1} (2cosh E − 2cos((2πk + x)/N_4)) = 2cosh(N_4E) − 2cos x,  with 4 sinh²(E/2) = Σ_i 4 sin²(p_i/2),
does the temporal sum exactly. The θ-dependent part of the one-loop effective action, per unit 3-volume, is
  L³ V_GPY,lat(θ) = N_4³ Σ_{i,j} ∫_BZ d³p/(2π)³ log(1 − 2q_p cos θ_ij + q_p²),  q_p = e^{−N_4E_p}
            = −Σ_{n≥1} c_n^lat |tr Ω^n|²,  c_n^lat = 2N_4³ w(nN_4)/n,  w(m) = ∫_BZ d³p/(2π)³ e^{−mE_p}.
Continuum limit: E_p → a|p| gives w(m) → 1/(π²m³), so c_n^lat → 2/(π²n⁴). This reproduces the R3S1_GAP §1.1 form −(2/(π²L³))Σ_n|tr Ω^n|²/n⁴.
Total potential: L³V(θ) = Σ_n (a_n − c_n^lat)|tr Ω^n|², with a_n = 0 for n > ⌊N/2⌋. For SU(2) and SU(3) only a_1 enters.
Caveat [I]: no separate Vandermonde (Haar) term for Ω is added. In covariant background gauge the one-loop determinant above is the full O(g⁰) result. The Haar density of the fluctuation links is O(g²) (two-loop order).

Kinetic normalization [P]. From (1/(2g²))∫tr F² (equivalently, (N_4 plaquettes per column) × (1/g²)Σ_j(Δθ_j/N_4)² on the lattice), the holonomy kinetic term is (1/(g²L))∫d³x Σ_j(∂θ_j)². For SU(2) this is (1/(2g²L))(∂φ)². Hence
  m_φ² L² = (g²/2)·λ,  λ = eigenvalue of Hess_θ(L³V) in orthonormal Cartan coordinates.
For SU(2), λ = 2 ∂²_φ(L³V), so m_φL = g·√(∂²_φ(L³V)(π)). This is R3S1_GAP §3.2's m_φL = g√(a_eff V″) with a_eff V″ := ∂²_φ(L³V_tot) at φ = π. At the center point the SU(3) Hessian is isotropic (Z_3 × Weyl symmetry), so one λ suffices.

### 1.2 Continuum closed forms [P, checked by the script]
With B(x) = Σ_n cos(nx)/n⁴ = π⁴/90 − π²x²/12 + πx³/12 − x⁴/48 on [0, 2π]:
- SU(2): λ = 4a_1 − 2/3, so m_φL = g√(2a_1 − 1/3). Local stability of φ = π needs a_1 > 1/6. The trivial point φ = 0 stays a local minimum for a_1 < 1/3. Global center symmetry needs v(π) < v(0), that is a_1 > π²/48 = 0.20562. The transition is first order.
- SU(3): λ = 3a_1 − 2/3, so m_φL = g√((3a_1 − 2/3)/2). Local stability needs a_1 > 2/9 = 0.22222. The competing minimum is the Z_3 image of diag(1, −1, −1) (|tr Ω| = 1, center broken), with L³V = a_1 − π²/30. The center point has L³V = −π²/405. Global center symmetry needs a_1 > 5π²/162 = 0.30462. (The trivial point Ω = 1 loses already at a_1 = 80π²/3645 = 0.2166.)
- Undeformed (a_1 = 0): the minimum is Ω = 1 up to center elements, |tr Ω| = N. Center symmetry is broken. The script confirms this for N_4 = 4, 16, ∞ for both groups.

### 1.3 Lattice results [N]
Ratio c_n^lat/c_n^cont depends only on nN_4 (the script output shows the equalities, for example N_4 = 2, n = 2 equals N_4 = 4, n = 1 = 1.40404).

| N_4 | c_1^lat/c_1 | c_2^lat/c_2 | SU(2) λ_GPY | SU(2) a_loc | SU(2) a_glob | SU(3) λ_GPY | SU(3) a_loc | SU(3) a_glob |
|---|---|---|---|---|---|---|---|---|
| 2 | 2.104 | 1.404 | −1.48972 | 0.3724 | 0.4297 | −1.38314 | 0.4611 | 0.5721 |
| 3 | 1.739 | 1.141 | −1.24052 | 0.3101 | 0.3555 | −1.13109 | 0.3770 | 0.4695 |
| 4 | 1.404 | 1.070 | −0.98196 | 0.2455 | 0.2876 | −0.91974 | 0.3066 | 0.3941 |
| 6 | 1.141 | 1.029 | −0.77608 | 0.1940 | 0.2343 | −0.75551 | 0.2518 | 0.3364 |
| 8 | 1.070 | 1.016 | −0.72089 | 0.1802 | 0.2199 | −0.71106 | 0.2370 | 0.3206 |
| 12 | 1.029 | 1.007 | −0.68904 | 0.1723 | 0.2115 | −0.68508 | 0.2284 | 0.3113 |
| 16 | 1.016 | 1.004 | −0.67898 | 0.1698 | 0.2089 | −0.67681 | 0.2256 | 0.3083 |
| 32 | 1.004 | 1.001 | −0.66968 | 0.1674 | 0.2064 | −0.66916 | 0.2231 | 0.3055 |
| 64 | 1.001 | 1.000 | −0.66742 | 0.1669 | 0.2059 | −0.66729 | 0.2224 | 0.3049 |
| ∞ | 1 | 1 | −2/3 | 1/6 | π²/48 = 0.2056 | −2/3 | 2/9 | 5π²/162 = 0.3046 |

λ_GPY is the GPY part of the Hessian eigenvalue at the center point. a_loc = −λ_GPY/4 (SU(2)) or −λ_GPY/3 (SU(3)). a_glob is the bisection threshold (tolerance 1e−4) for a center-symmetric global minimum on a φ grid of 4001 points (SU(2)) or a 241² grid of (θ_1, θ_2) (SU(3)).
Lattice correction: λ_GPY^lat − (−2/3) ≈ −3.08/N_4² (SU(2)) and ≈ −2.55/N_4² (SU(3)), read from N_4 = 16, 32, 64 (ratios 4.09, 4.01). The lattice raises every threshold. At N_4 ≥ 16 the shift is below 2%.

Holonomy mass m_φL/g = √(λ/2) at the center point:

| group, a_1 | N_4=4 | 6 | 8 | 12 | 16 | 32 | 64 | ∞ (closed form) |
|---|---|---|---|---|---|---|---|---|
| SU(2), 0.25 | 0.0950 | 0.3346 | 0.3736 | 0.3943 | 0.4006 | 0.4064 | 0.4078 | 0.4082 |
| SU(2), 0.30 | 0.3302 | 0.4604 | 0.4894 | 0.5054 | 0.5104 | 0.5149 | 0.5160 | 0.5164 |
| SU(2), 0.50 | 0.7135 | 0.7823 | 0.7997 | 0.8096 | 0.8127 | 0.8156 | 0.8163 | 0.8165 |
| SU(2), 1.00 | 1.2284 | 1.2696 | 1.2805 | 1.2867 | 1.2886 | 1.2904 | 1.2908 | 1.2910 |
| SU(3), 0.25 | unstable | unstable | 0.1395 | 0.1802 | 0.1913 | 0.2011 | 0.2034 | 0.2041 |
| SU(3), 0.30 | unstable | 0.2688 | 0.3074 | 0.3278 | 0.3341 | 0.3397 | 0.3411 | 0.3416 |
| SU(3), 0.50 | 0.5386 | 0.6101 | 0.6281 | 0.6383 | 0.6416 | 0.6445 | 0.6453 | 0.6455 |
| SU(3), 1.00 | 1.0199 | 1.0594 | 1.0698 | 1.0759 | 1.0778 | 1.0795 | 1.0800 | 1.0801 |

"unstable" means λ < 0 (center point is a saddle). Note: SU(3) at a_1 = 0.25 and 0.30 has λ > 0 for large N_4 but a_1 < a_glob, so the center point is only a local minimum there. The m_φ in those rows is the curvature of a metastable point. Physical choices need a_1 > a_glob(N_4).

### 1.4 Convergence checks [N]
- Quadrature: tensor composite Gauss–Legendre on [0, π]³ (octant symmetry), panels [π2^{−k−1}, π2^{−k}] down to π2^{−K−log₂N_4}. Three settings (K, order) = (6, 6), (10, 8), (14, 10) agree to all 8 printed digits for N_4 = 4, 16, 64 (for example N_4 = 64: λ_GPY/2 = −0.33370875, c_1^lat = 0.20284056). An earlier coarse grid (no grading above |p| ~ 0.1) had a 3e−4 error at N_4 = 64; it is replaced.
- Series truncation: SU(2) ∂²_φ v_GPY(π) at N_4 = 8 from Σ_{n≤n_max} vs the direct integral −4N_4³∫q/(1+q)²: n_max = 50: −0.360366; 200: −0.360440; 2000: −0.360445; direct −0.360445. Curvatures in the tables use the direct integral. Global scans use n_max = 200 (potential error about 1e−7).
- Continuum limit: c_1^lat → 2/π² = 0.202642 and λ_GPY → −2/3 as O(1/N_4²), matching §1.2.
- Correction to the note under the m_φ table: SU(2) at a_1 = 0.25, N_4 = 4 is also metastable (a_glob(4) = 0.2876). All other SU(2) entries have a_1 > a_glob(N_4).

### 1.5 Consequences for R3S1_GAP [P]
- The R3S1_GAP rule "center symmetry survives when a_n exceeds the GPY coefficient 2/(π²n⁴)" is not the right criterion. The deformation with n ≤ ⌊N/2⌋ competes with the whole GPY series, not only with the n-th term. One-loop global thresholds: SU(2) a_1 > π²/48 = 0.2056 (GPY coefficient 0.2026; close by accident); SU(3) a_1 > 5π²/162 = 0.3046 (50% above 0.2026). For SU(3), any a_1 ∈ (0.2026, 0.3046) gives a center-broken vacuum of type diag(1, −1, −1). On the lattice the thresholds rise with 1/N_4² (table in §1.3).
- The same correction applies to the failing inequality of R3S1_GAP §2.2: it should read a_1·Z_adj(ε) > a_glob(N, N_4), with a_glob from §1.3, not a_n·Z_adj ≥ 2/(π²n⁴). The qualitative conclusion of §2.2 (failure as ε → 0 at fixed a_n) is unchanged.
- The transition at a_glob is first order for both groups. So "a_1 above threshold" must be read as the global threshold; the local (Hessian) threshold is lower (1/6, 2/9).
- m_φL = O(g) is confirmed. Explicitly m_φL = g√(2a_1 − 1/3) (SU(2)), g√((3a_1 − 2/3)/2) (SU(3)), continuum, with lattice values in §1.3. For a_1 = O(1) the coefficient is O(1); near the local threshold it goes to 0. The Yukawa range of R3S1_GAP (E5) is 1/m_φ = L/(g√(λ/2)).

---

## 2. Villain monopole self-energy [N, P]

### 2.1 G(0) of the 3d lattice Laplacian [N]
G(0) = ∫_BZ d³k/(2π)³ [2Σ_i(1 − cos k_i)]^{−1} at unit spacing. Three methods (numerics/villain_self_energy.py):

| method | value |
|---|---|
| Bessel integral (1/2)∫_0^∞ e^{−3t}I_0(t)³ dt | 0.252731010 |
| Watson closed form W_s/6, W_s = (√6/(32π³))Γ(1/24)Γ(5/24)Γ(7/24)Γ(11/24) = 1.516386059 | 0.252731010 |
| torus M³, zero mode removed, M = 32, 64, 128, 256 | 0.2456766, 0.2492033, 0.2509671, 0.2518490 |

The torus values approach G(0) as G(0) − G_M = 0.2258/M (the product (G(0) − G_M)·M is 0.2257, 0.2258, 0.2258, 0.2258). At spacing b the Green function at the origin is G(0)/b. R3S1_GAP's v(0) = 0.252731 is CONFIRMED.

### 2.2 Villain coupling of the reduced theory [P]
Write U = diag(e^{iθ_j}) with θ ∈ R^N, Σθ_j = 0. For a Cartan plaquette, (2/g²)Re tr(1 − U_p) = (2/g²)Σ_j(1 − cos θ_{p,j}) ≈ (1/g²)|θ_p|². Sum over the N_4 time slices at spacing a, then pass to the 3d lattice of spacing b by keeping β·b fixed (3d continuum action (βb/2)∫|B|²). Result:
  (β/2)Σ_p|dθ − 2πn_p|²,  β = 2L/(g²b),  n_p in the coroot lattice (θ ~ θ + 2π·coroot).
At the Theorem R spacing b = L: β = 2/g², independent of N_4 at tree level. For SU(2) in the variable θ_1 (θ = (θ_1, −θ_1), period 2π): (β′/2)(dθ_1 − 2πn)² with β′ = 4/g². The unit Villain charge is the BPS charge: θ_1-flux 2π, which is root-angle flux 4π (R3S1_GAP §4.2(c), "flux 4π per monopole").
Cross-check with the continuum: (1/(2g²))∫tr F² gives (2L/g²)∫B_{θ_1}² = (L/(2g²))∫B_b² with b = 2θ_1, as in R3S1_GAP §4.2(c). Matching (β′L/2)∫B_{θ_1}² = (2L/g²)∫B_{θ_1}² gives β′ = 4/g² at spacing L.
Duality cross-check: the dual sine-Gordon field σ = 2πϕ of the β′-Villain model has kinetic term (1/(8π²β′L))(∂σ)² = (g²/(32π²L))(∂σ)², exactly R3S1_GAP's L_dual. The Debye mass m² L² = 8π²β′·z_tot with z_tot = 2ζL³ (BPS + KK per sign) gives 64π²ζL³/g², exactly R3S1_GAP's m_σ². With R3S1_GAP's β = 1/g² the same formula gives 16π²ζL³/g², a factor 4 low.
R3S1_GAP's value β = 1/g² is the coupling of the root angle b (period 2π, SO(3) normalization). In that variable the BPS monopole has charge 2, not 1. R3S1_GAP used charge 1 with β = 1/g². That is the self-energy of a half-charged monopole, which does not exist in SU(2) (it violates Dirac quantization with respect to fundamental charges).

### 2.3 Self-energy, fugacity, ratio [N]
Villain Coulomb-gas self-energy of a root charge α (|α|² = 2) at spacing b: S_V = 2π²β|α|²G(0) = 8π²G(0)(L/b)/g². Fugacity z_V = e^{−S_V}. Physical monopole-instanton action S_0 = 8π²/(g²N). All numbers in units of 1/g².

| N | S_V(b = L) | S_0 | S_0/S_V | gap exponent, Villain tie S_V/2 | gap exponent, physical S_0/2 | R3S1_GAP values (S_V, ratio) |
|---|---|---|---|---|---|---|
| 2 | 19.955 | 39.478 | 1.978 | 9.977 | 19.739 | 4.989, 7.914 |
| 3 | 19.955 | 26.319 | 1.319 | 9.977 | 13.160 | (4.989, 5.276 by the same rule) |
| 4 | 19.955 | 19.739 | 0.989 | 9.977 | 9.870 | — |
| 5 | 19.955 | 15.791 | 0.791 | 9.977 | 7.896 | — |

S_V does not depend on N; S_0 falls as 1/N. The two agree for SU(2) at b/L = 2G(0) = 0.5055 (R3S1_GAP states G(0)/2 = 0.126). Without blocking, at the 4d unit spacing b = a = L/N_4, S_V/S_0 = 2G(0)N_4 for SU(2): 0.505, 1.011, 2.022, 4.044, 8.087, 16.175 at N_4 = 1, 2, 4, 8, 16, 32. So a Villain tie at spacing a overestimates the monopole action by a factor ~N_4/2.
Observation [N, no claim]: S_V(b = L) for SU(2) is 1.011 × S_0/2, and S_0/2 is the magnetic half of the BPS action. This is a coincidence of the cutoff b = L; it does not make the Villain tie correct, because the scalar half and the core are absent.

### 2.4 Which value the gap exponent depends on [P]
The dual-photon mass is m_σ ∝ √ζ (R3S1_GAP §4.2(c)), with ζ the physical core weight of Theorem R (R-a). So the exponent is S_0/2 = 4π²/(g²N): 19.739/g² for SU(2). It does not depend on G(0). G(0) enters only if the reduced model inherits the Villain tie z = e^{−2π²β|α|²G(0)} (hypothesis (H2) of Göpfert–Mack). With the corrected β, that tie gives the exponent S_V/2 = 4π²G(0)·2/g² = 9.977/g² for every N. For SU(2) the exponent is wrong by a factor 1.978 (an additive error of 9.76/g²), not by the factor 7.9 that R3S1_GAP states. For N = 4 the tie is accidentally right to 1%; for N ≥ 5 it underestimates the action. R3S1_GAP's structural conclusion stands: the reduced theory must carry the physical core weights (R-a), not the Villain tie. Only the size of the pitfall changes.
Consequence for node G4 [P]: in |θ|² normalization κ_3 = 2 (β_3 = 2/g² at spacing L), or κ_3 = 4 in the SU(2) θ_1 variable. The constant check C_−/κ_3 ≥ c_0(GM) must use the same normalization for C_− and κ_3.

### 2.5 Side observation outside the two tasks [P, short check only]
R3S1_GAP §5.0 bounds the cylinder action with coefficient 1/g² per θ_p² (θ in the θ_1 normalization, flux 2πq). The Wilson action gives (2/g²)·2(1 − cos θ_p) ≈ (2/g²)θ_p² for small angles, and ≥ (8/π²)θ_p²/g² for |θ_p| ≤ π. So the small-angle constant is C_−(crude) = 4π²/(3N_4), twice the stated 2π²/(3N_4). The stated bound is a valid lower bound in the small-field regime (the inequality 4(1 − cos θ) ≥ θ² holds for |θ| ≤ 2.78). For |θ_p| near π the coefficient 1 fails (4(1 − cos π) = 8 < π²), and 8/π² is the uniform value. This does not change any verdict of R3S1_GAP. I have not checked the rest of §5.0.

---

## 3. R3S1_GAP numbers: CONFIRMED / CORRECTED

| R3S1_GAP location | statement | grade | correct value / note |
|---|---|---|---|
| §1.1 | GPY potential −(2/(π²L³))Σ_n|tr Ω^n|²/n⁴ per unit 3-volume | CONFIRMED | N_4 → ∞ limit of the exact lattice formula (§1.1); lattice c_n^lat/c_n = 1 + O(1/(nN_4)²) |
| §1.1 | deformation factor (ε/L)³ per site, a_n = O(1) | CONFIRMED | thresholds are O(1): §1.3 |
| §1.1, §1.2 | center symmetry survives when a_n exceeds the GPY coefficient 2/(π²n⁴) | CORRECTED | global one-loop threshold a_1 > π²/48 = 0.2056 (SU(2)), 5π²/162 = 0.3046 (SU(3)); lattice values higher (§1.3); first-order transition |
| §2.2 | failing inequality a_n·Z_adj(ε) ≥ 2/(π²n⁴) | CORRECTED (threshold only) | a_1·Z_adj(ε) > a_glob(N, N_4); conclusion unchanged |
| §3.2 | m_φL = g√(a_eff V″) = O(g) | CONFIRMED | a_eff V″ = ∂²_φ(L³V) at φ = π; m_φL = g√(2a_1 − 1/3) (SU(2)), g√((3a_1 − 2/3)/2) (SU(3)), continuum; lattice table §1.3 |
| §3.2 | stiffness N_4^{−1}g^{−2} per unit cell for φ | CONFIRMED | (1/(g²N_4))Σ_j(Δθ_j)² per link, equal to the continuum (1/(g²L))∫Σ(∂θ_j)² |
| §3.4 (E5) | Yukawa range 1/m_φ = L/(g√a_eff) | CONFIRMED | with a_eff V″ as above |
| §4.1, script | v(0) = 0.252731 | CONFIRMED | 0.252731010, three methods |
| §4.2(c) | S_0 = 4π²/g² = 39.48/g² (N = 2) | CONFIRMED | arithmetic |
| §4.2(c) | L_dual = (g²/(32π²L))(∂σ)², m_σ² = 64π²Lζ/g² | CONFIRMED | reproduced from the Villain dual with β′ = 4/g² (§2.2) |
| §4.2(c) | "GM consistency: m_D² = 8π²βz with β = 1/g² gives the same form" | CORRECTED | same form, coefficient 4 low; β = 4/g² (θ_1) or 2/g² (|θ|²) reproduces 64π² exactly |
| §4.2(c), §6, script | Villain at spacing L: z_V = e^{−4.99/g²}, self-energy 2π²v(0)/g² | CORRECTED | z_V = e^{−19.95/g²}, S_V = 8π²G(0)/g² (any N) |
| §4.2(c), §6 | Villain vs physical: exponent wrong by a factor 7.9 | CORRECTED | factor 1.978 for SU(2) (1.319 for SU(3), 0.989 for SU(4)); gap exponent 9.98/g² vs 19.74/g² for SU(2) |
| script line (4) | spacing a/L where Villain and physical agree: v(0)/2 = 0.126 | CORRECTED | 2G(0) = 0.5055 (SU(2)) |
| script line (4) | β_3 = L/(g²a) | CORRECTED | 4L/(g²a) in θ_1; L/(g²a) is the root-angle coupling, whose unit charge is half the BPS charge |
| §5.0 | C_−(crude) = 2π²/(3N_4) | CONFIRMED as a lower bound in the small-field regime; not sharp | small-angle constant 4π²/(3N_4); see §2.5 |
| §4.2(c) | structural conclusion: the reduced theory must carry physical core weights (R-a) | CONFIRMED | the size of the error is smaller than stated |

Not checked here: the dual-mass prefactor 32π³√c and the one-loop running (ΛL)^{11/6} (not in scope); the lattice W mass (lattice correction O(1/N_4²), not computed).

## 4. Open items
1. Vandermonde/Haar term for the block holonomy: argued absent at one loop in background Feynman gauge [I]. A direct check (static diagonal gauge on the N_4-site circle) is not done.
2. The deformation in Theorem B′ acts on the block holonomy Ω_a, not on the bare product of fine links. The thresholds in §1.3 are for Theorem A (fixed spacing a). For B′ they hold up to the renormalization that Balaban's block averaging builds in [I].
3. Two-loop corrections shift a_glob by O(g²). For a_1 within O(g²) of a_glob the one-loop phase assignment is not reliable.
4. SU(N ≥ 4) with n ≤ ⌊N/2⌋ deformation terms: thresholds not computed. The script handles only a_1.

STATUS: COMPLETE. Files written: SOURCES_R3S1_NUMERICS.md, numerics/r3s1_gpy_lattice.py, numerics/villain_self_energy.py. No existing file edited. PLAN.md not touched, sync.sh not run (per override).
