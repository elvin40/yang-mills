# VERIFY: GpyMin.lean, GpyMinCodes.lean, GpyMinCert.lean, GpyBernoulli.lean, GpyLattice.lean

Statement check of the Lean theorems against `notes/SOURCES_R3S1_GPY_MIN.md` §1.1–§1.4 (Theorem GPY-min (i)) and `notes/SOURCES_R3S1_GPY_MIN_IV.md` §2–§3 (IV thresholds a_1^*). Written 2026-10-28 (Claude, Opus 5.5). Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read.

Build: `lake build YmLean.GpyLattice` passes (it builds all five files). The files are not imported by `YmLean.lean`; the plain `lake build` does not build them. No `sorry`, no `admit`, no new axioms, no `native_decide`. GpyMinCert.lean takes about 3 min on the Mac (196 s CPU): the four certificates are checked by `decide +kernel`, so the kernel itself evaluates the checkers on exact rationals. Axioms of every theorem listed below: `[propext, Classical.choice, Quot.sound]` (no `Lean.ofReduceBool`).

## 1. Notation and coordinates

- Units of π. SU(2): pair angle x = θ_1 − θ_2 = πs, s ∈ [0, 2] (`Alc2 s`), centre s = 1. SU(3): x = θ_1 − θ_2 = πs, y = θ_2 − θ_3 = πt, alcove s, t ≥ 0, s + t ≤ 2 (`Alc3 s t`), centre (2/3, 2/3).
- b(u) = 1/90 − u²/12 + u³/12 − u⁴/48 (`bP`), so B(πu) = π⁴b(u) on [0, 2] (`Bser_eq`).
- `G2 a s = 2a(cos πs + 1) − 4π²(b(s) − b(1))`, `G3 a s t = 2a(cos πs + cos πt + cos π(s+t) + 3/2) − 4π²(b(s) + b(t) + b(s+t) − 3b(2/3))`. These are L³V − L³V(centre) of the continuum potential (`V2_eq`, `V3_eq`).
- `d2sq s = π²(s − 1)²/2`, `d3sq s t = (2/3)π²(δs² + δsδt + δt²)`: the squared distance to the centre in orthonormal Cartan coordinates (the coordinate formula of SOURCES_R3S1_GPY_MIN §1.4, one representative of the torus distance).
- `D3 θ₁ θ₂ θ₃ n = Complex.normSq (Σ_j exp(i n θ_j))` = |tr Ωⁿ|², `D2` likewise. `V3 a θ = a·D3 θ 1 − Σ' n, 2/(π²n⁴)·D3 θ n`, `V2` likewise: the continuum one-loop GPY potential plus a_1|tr Ω|² (SOURCES_R3S1_NUMERICS §1.1 with c_n = 2/(π²n⁴)).
- `Vlat3 a1 c θ = a1·D3 θ 1 − Σ' n, c n·D3 θ n` with an arbitrary real sequence c (the lattice c_n^lat of the source), `Vlat2` likewise. `dc c n = c n − 2/(π²n⁴)` = δc_n.

## 2. What is machine-checked

| Source | Lean | Status |
|---|---|---|
| §1.2 pair form, B(x) = Σcos(nx)/n⁴ = π⁴/90 − π²x²/12 + πx³/12 − x⁴/48 on [0, 2π] | `Bser_eq` (Mathlib `hasSum_one_div_nat_pow_mul_cos`, B_4 evaluated in `bernoulliFun_four`); `D3_eq`, `D2_eq` (|tr Ωⁿ|² = N + 2Σ_{i<j}cos nθ_ij); `V3_pair`, `V2_pair` (tsum split, ζ(4) = π⁴/90); `V3_eq`, `V2_eq` | proved |
| (i), continuum, a ≥ threshold | `su3_continuum_min`: for a ≥ 0.3058672, `G3 a (2/3)(2/3) = 0`, min(1.15e−3, 2.5e−3·d²) ≤ `G3 a s t` on the alcove, and the centre is the unique global minimiser. `su2_continuum_min`: a ≥ 0.2057372, min(4.72e−4, 2e−3·d²). Trace form: `su3_continuum_trace`, `su2_continuum_trace`. Both thresholds are below the IV thresholds a_1^* = 0.30997, 0.20984 and above the exact continuum thresholds 5π²/162 = 0.304616, π²/48 = 0.205617. | proved |
| same, at the N_4 ≥ 8 values | `G3_bound_8` (a ≥ 0.3098551: min(5.135e−3, 9e−3·d²)), `G2_bound_8` (a ≥ 0.2061851: min(2.255e−3, 6e−3·d²)) | proved |
| §1.2 monotonicity in a | `G3_mono`, `G2_mono` (|tr Ω|² ≥ 0: `C3_nonneg`) | proved |
| §1.2 reduction: L³V − L³V(c) = G(a_eff) − rem, a_eff = a_1 − δc_1, |rem| ≤ min(N²ρ_0, Nρ_2 d²) | `rem3`, `rem2` from `CoefBounds`. Uses 0 ≤ D_n ≤ N², ∇D_n(c) = 0 and |cos(α+e) − cos α + e sin α| ≤ e²/2 (`cos_taylor2`, monotonicity proof), so |D_n − D_n(c)| ≤ N n² d² (`D3_diff`, `D2_diff`) | proved |
| (i) on the lattice from (H-rem) | `su3_lattice_16`, `su3_lattice_8`, `su2_lattice_16`, `su2_lattice_8` (abstract V; hypothesis (H-rem) below) | proved |
| (i) on the lattice from the coefficient bounds | `su3_lattice_coeff_16`, `su3_lattice_coeff_8`, `su2_lattice_coeff_16`, `su2_lattice_coeff_8` (V = `Vlat3`/`Vlat2`; hypothesis `CoefBounds` below) | proved |

Lattice margins proved (a_1 ≥ a_1^*): V − V(c) ≥ min(M_0 − N²ρ_0⁺, (M_2 − Nρ_2⁺)d²) with

| case | a_1 ≥ | a_0 = a_1^* − δc_1⁺ | M_0 − N²ρ_0⁺ | M_2 − Nρ_2⁺ |
|---|---|---|---|---|
| SU(2), N_4 ≥ 16 | 0.20984 | 0.2057372 | 9.2e−6 | 9.016e−4 |
| SU(2), N_4 ≥ 8 | 0.22529 | 0.2061851 | 1.86e−5 | 8.36e−4 |
| SU(3), N_4 ≥ 16 | 0.30997 | 0.3058672 | 1.087e−4 | 8.524e−4 |
| SU(3), N_4 ≥ 8 | 0.32896 | 0.3098551 | 1.031e−4 | 1.254e−3 |

The constant margins are small because a_1^* is a bisection threshold: at a_1 = a_1^* the competitor (trivial holonomy for SU(2), diag(1, −1, −1) for SU(3)) lies only N²(ρ_0-slack) above the centre. Larger a_1 gives larger margins through `G3_mono`, `G2_mono`, but no larger constant is stated in Lean.

## 3. What remains a hypothesis

(H-coef) `CoefBounds c δc_1⁺ ρ_0⁺ ρ_2⁺` for the lattice coefficients c = c^lat(N_4) = 2N_4³w(nN_4)/n, uniformly in N_4 ≥ N_0:
- c_0 = 0 (the sum starts at n = 1);
- δc_1 ≤ δc_1⁺;
- Σ_{n≥2} n²|δc_n| summable, Σ_{n≥2}|δc_n| ≤ ρ_0⁺, Σ_{n≥2} n²|δc_n| ≤ ρ_2⁺.

Constants (r3s1_gpy_cert_iv.py `dc1_iv`, `rho_iv`, re-run 2026-10-28 for full digits, 50 s; upper ends rounded up):

| N_0 | IV upper end | used in Lean |
|---|---|---|
| 16 | δc_1⁺ = 0.0041027295, ρ_0 = 1.15696e−4, ρ_2 = 5.49180e−4 | 0.0041028, 1.157e−4, 5.492e−4 |
| 8 | δc_1⁺ = 0.0191048103, ρ_0 = 5.59032e−4, ρ_2 = 2.581908e−3 | 0.0191049, 5.591e−4, 2.582e−3 |

Not formalized, so (H-coef) rests on them:
1. The lattice one-loop formula c_n^lat = 2N_4³w(nN_4)/n and the ratio R(m) = π²m³w(m) (SOURCES_R3S1_NUMERICS §1.1, SOURCES_R3S1_GPY_MIN §1.2).
2. The bounds on R(m) (SOURCES_R3S1_GPY_MIN §1.3): R-lo, the concave-program bounds R-hi (ball and corners), the 4000-panel chord sums, and the analytic tail A(m) ≈ 8.43/m². Their evaluation in mpmath.iv is the IV run, not Lean.
3. Uniformity in N_4: "sup over N_4 ≥ N_0 is attained at some N ≤ m_2 (δc_1) and at N_0 (ρ_0, ρ_2), since A(m) decreases for m ≥ 4" (SOURCES_R3S1_GPY_MIN_IV §1).

The weaker interface (H-rem) of `su*_lattice_*` (|V − V(c) − G(a_1 − δc_1)| ≤ min(N²ρ_0⁺, Nρ_2⁺d²) with δc_1 ≤ δc_1⁺) is a theorem from (H-coef) (`rem3`, `rem2`).

Also not formalized:
- The reduction from the torus T/W to the alcove (every holonomy is Weyl- and 2π-equivalent to an alcove point, V is invariant). The Lean statements are on the alcove with the coordinate distance.
- Theorem GPY-min (ii)–(v): the curvature μ_c, the convexity radius r and μ_r, ΔV_out, and the annulus check (F4)/ΔV_loc. The Lean proof does not use them. (F4) and ΔV_loc are also float-slack only in the source (SOURCES_R3S1_GPY_MIN_IV §3).
- General N (§1.7) and the two-loop/Balaban corrections (§1.6).

## 4. How the continuum part is certified (differences from the Python IV run)

- Enclosure of cos(πu) for rational u (`cpi`, `mem_cpi`): exact reduction to u ∈ [0, 1/4] (cos) or [1/4, 1/2] (sin via cos(π/2 − x)), π ∈ (3.14159265, 3.14159266) (from Mathlib `pi_gt_d20`, `pi_lt_d20`), monotonicity of cos/sin, and alternating Taylor bounds from Mathlib `Real.hasSum_cos`, `Real.hasSum_sin` (`cosLo_le`, `le_cosHi`, `sinLo_le`, `le_sinHi`; 6/5 terms).
- Box bound (`lb3_sound`, `lb2_sound`): per pair u_i ∈ {s, t, s + t}, q(m + v) ≥ q(m) + q′(m)v − E(m, w) with q(u) = 2a cos πu − 4π²b(u), the exact quartic expansion of b, |cos πm|, |sin πm| ≤ 1, 1 − cos x ≤ x²/2, |x − sin x| ≤ |x|³/6 (`pair_bound`). The linear terms of the three pairs combine to gradient terms in δs, δt. This differs from the source's |∇G|w + ½H|w|² rule only in the remainder constant.
- Cover (`chk3`, `chk2`): dyadic quadtree (binary tree for SU(2)) coded as a base-4 natural number, produced by numerics/gpy_lean_export.py with the same exact rational formulas. Leaves: box bound ≥ M_0 or ≥ M_2·(upper bound of d² on the box); box beyond s + t = 2; box inside the local region. Counts: SU(3) 1286 (N_0 = 16) and 1322 (N_0 = 8) box bounds, 117 outside, 32/38 local; SU(2) 34 box bounds, 2 local.
- Local region (replaces the source's convexity test (F1)): SU(3) hexagon |δs|, |δt|, |δs + δt| ≤ 0.079, where G3 ≥ 0.021·d² for a ≥ 0.3 (`local3`, from `phi_bound`: cos(2π/3 + e) expansion, |cos e − 1 + e²/2| ≤ 5e⁴/96 (Mathlib `Real.cos_bound`), √3 < 1.7321, and the cancellation of the three first-order terms). SU(2): |s − 1| ≤ 0.318, G2 ≥ d²/50 for a ≥ 0.2 (`local2`).
- The Lean thresholds are a_0 = a_1^* − δc_1⁺ with the rational a_1^* printed in SOURCES_R3S1_GPY_MIN_IV. They agree with the Python a_c (0.20574, 0.30587, 0.20619, 0.30986) up to the rounding of a_1^* and δc_1⁺ in the last digit. The Lean certificate is independent of the Python box cover and of the float bisection.

## 5. Grade

- Theorem GPY-min (i) for SU(2), SU(3), N_4 ≥ 16 and N_4 ≥ 8, at the IV thresholds a_1^* = 0.20984 / 0.30997 and 0.22529 / 0.32896: CONFIRMED in Lean, conditional on (H-coef) with the IV constants. The continuum statement (N_4 = ∞) is unconditional.
- The source's claim that a_1^* is valid for all a_1 ≥ a_1^*: CONFIRMED (monotonicity).
- No discrepancy with SOURCES_R3S1_GPY_MIN or SOURCES_R3S1_GPY_MIN_IV was found.
