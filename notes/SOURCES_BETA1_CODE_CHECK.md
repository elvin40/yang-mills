# SOURCES_BETA1_CODE_CHECK: are the single-step β_1(L) values of the umklapp/GPU code correct? (2026-10-28)

Scope: numerics/umk_beta1.py (umklapp sums), numerics/beta1_box/t2_fstepb_verify_umk_gpu.py (jax port, source of the box values), numerics/ym_momentum.py (dense per-k code), checked on the Mac. Read: NUMERICS.md §1–§7, BETA1_BOX_RUN.md, BETA1_SLOPE_STAGE.md, UMK_BETA1.md, U1_INFINITE_LATTICE.md §9, BETA_FP.md §0–§1, R2_TELESCOPING.md (normalization lines). New scripts: numerics/beta1chk_*.py. Raw outputs: /tmp/beta1chk/*.json (scratch). No existing file was edited. The Windows box was not touched.

## 0. Verdict

CODE CORRECT. No bug found; no corrected table is needed. The falling slope is a property of the computed quantity, not of the code, the grid, or the Lp → 0 step. Its cause is open.

- Same case on both codes: umk_beta1 equals ym_momentum to ≤ 1e−12 relative at commensurate p (L = 3: Ng = 1, 2, 4; L = 5: Ng = 1). At incommensurate p they differ by a known quadrature term (≤ 2e−4 at Ng = 4, ≤ 8e−5 at Ng = 8), which vanishes at commensurate p. The listed "0.749 vs 0.76817" at L = 5 is Lp = 0.5 against Lp = 1.0 from the same code (§1).
- Exact limits hold to rounding at L = 3, 5, 7, 9: abelian (1 − L⁻⁴)/4 with zero ghost part (the U(1) tadpole term), pure-gauge zero at commensurate p (§2).
- Normalization: same units as c (1/g_B² = 2N/g², ×4 fix in place); no L-dependent factor (§3).
- The jax port that produced the box values equals the numpy path per K at L = 9, Ng = 24 (5.7e−14) (§4).
- Ng → ∞ corrections at the box grids are ≤ 4e−4 (L = 13) and ≤ 1e−4 (L = 9, 11). The Lp → 0 step adds ≤ 1.4e−3. Extrapolated β_1(L, 0) = 0.7429, 0.7903, 0.8192, 0.8354, 0.8423 (L = 5…13); local slopes 0.141, 0.115, 0.081, 0.041 against c = 0.3715 (§5).
- Side findings: (i) the old Lp → 0 formula (4β(0.5) − β(1))/3 is biased low by 0.003–0.004 at L ≥ 9; (ii) Ng = 8 values at small Lp carry an offset error of 0.015–0.024 at Lp = 0.25; (iii) "L = 7, Ng = 12 converged" holds only to ~1e−3.

## 1. Independent codes at small L

### 1.1 Why the listed numbers differ

The two numbers in the task are different quantities of the same code family. They are not a disagreement.

- "L = 5: 0.749 (Ng = 12, p = 0.1)" in NUMERICS §7 is not a ym_momentum value. ym_momentum ran out of memory at L = 5 (results/README.md, last line). The value comes from umk_beta1: results/umk_L5_Ng12_p0.1_trans.json, β = 0.7489786. p is the fine momentum, so Lp = 0.5.
- The smoke test "L = 5, Ng = 12, Lp = 1.0 → 0.76817" is the same code at p = 0.2 (results/umk_L5_Ng12_p0.2_trans.json = t2_fstepb_verify_umk_L5_Ng12_Lp1.0.json, β = 0.7681671).
- The difference 0.0192 is the plane-wave bias between Lp = 0.5 and Lp = 1.0. It is the same at every L (0.0192, 0.0195, 0.0192, 0.0186 at L = 5, 7, 9, 11, §5).
- Both codes use the same p (fine momentum), the same Ng (points per direction of the coarse zone, shifted grid (m + ½)·2π/(L Ng)), and the same normalization β = 4w/(L⁴(1 − cos p)).

The stored pairs at incommensurate p (same L, Ng, p) differ by small amounts:

| L | Ng | p | ym_momentum β | umk β | relative difference |
|---|---|---|---|---|---|
| 2 | 12 | 0.1 | 0.62988286 | 0.62988290 | 6.0e−8 |
| 3 | 8 | 0.1 | 0.66670868 | 0.66676096 | 7.8e−5 |
| 3 | 8 | 0.2 | 0.66916485 | 0.66917173 | 1.0e−5 |
| 3 | 8 | 0.4 | 0.68929654 | 0.68930032 | 5.5e−6 |
| 4 | 6 | 0.2 | 0.75747470 | 0.75750714 | 4.3e−5 |

(ym_momentum values for L = 2, 3 are 4 × the stored pre-fix `beta`, as results/README.md prescribes.) In w the L = 3 differences are 5.3e−6, 2.8e−6, 6.0e−6. Cause (UMK_BETA1 §6): the two codes split the same trace into different per-K integrands. The integrands differ by a term of the form f(K + p) − f(K). Its integral over the zone is zero, but its sum over the grid is zero only when the grid is invariant under K → K + p, that is, for commensurate p = 2πm/(L·Ng). So the differences are quadrature differences, not a code difference. Test: run both codes at commensurate p (§1.2).

### 1.2 Same case on both codes (Mac, this session, beta1chk_cross.py)

Commensurate p, shifted grid, umk with its 16-fold grid reduction (odd L), ym_momentum on the full grid:

| L | Ng | p | w (umk) | w (ym_momentum) | rel. diff w | rel. diff ghost | rel. diff bord |
|---|---|---|---|---|---|---|---|
| 3 | 1 | 2π/3 | 24.700151804538 | 24.700151804538 | 1.3e−14 | 6.2e−15 | 1.1e−14 |
| 3 | 2 | 2π/6 | 9.163297865984 | 9.163297865984 | 5.0e−15 | 7.2e−14 | 4.5e−15 |
| 3 | 4 | 2π/12 | 2.01103707108066 | 2.01103707108075 | 4.6e−14 | 2.5e−14 | 4.7e−14 |
| 5 | 1 | 2π/5 | 111.670838126316 | 111.670838126419 | 9.2e−13 | 8.9e−13 | 9.2e−13 |

Same L = 3, Ng = 4 at the incommensurate p = 0.1: w = 0.1692661 (umk) against 0.1692292 (ym_momentum), relative 2.2e−4. The ghost parts agree to 1e−13; the whole difference is in the border part (UMK_BETA1 §6: the anchor part of 2D′PD′^† moves between τ_1 of sector K and τ_2 of sectors K ± p). At Ng = 8 the same difference is 5.3e−6 in w (§1.1). So at incommensurate p the codes agree only up to this quadrature term, and at commensurate p they agree to rounding. Check 1 is passed: the codes compute the same finite sum.

The L = 5 case is the decisive one. At L = 3 every block offset d has |d_μ| ≤ 1, so the averaging paths have at most one step per direction. At L = 5 the paths have two steps per direction in both signs (h = 2). This is the first L where the profile code (avg_profile, path_arrays) runs its general branch, and it agrees with the independent ym_oneloop/JAX averaging to 9e−13. The L = 5 ym_momentum run took 27 min and 25 GB (dense 7512 × 7512 blocks); this exceeds the 10-min guideline once, because it is the only independent test at L ≥ 5.

## 2. Exact limits in the umklapp code (beta1chk_limits.py, Ng = 2)

| L | abelian β, p = 0.1 | abelian β, Lp = 1 | exact (1 − L⁻⁴)/4 | abelian ghost w | pure gauge, p = 2π/(2L): w | pure gauge, Lp = 0.5 (incommensurate): β |
|---|---|---|---|---|---|---|
| 3 | 0.246913580246914 | 0.246913580246914 | 0.246913580246914 | 0 | 9.3e−15 | 0.119 |
| 5 | 0.249600000000000 | 0.249600000000000 | 0.2496 | 0 | −3.4e−14 | 0.056 |
| 7 | 0.249895876718034 | 0.249895876718034 | 0.249895876718034 | 0 | 4.4e−14 | 0.031 |
| 9 | 0.249961896052431 | 0.249961896052431 | 0.249961896052431 | 0 | −2.1e−13 | 0.020 |

- Abelian (σ_3) sector: exact to ≤ 6e−16 relative at every L, at two p, at Ng = 2. The ghost part is exactly 0 and w = −½ bord. This is the U(1) tadpole term of NUMERICS §2: by U1_INFINITE_LATTICE Prop. 9.1 the whole abelian increment is the seagull term (equipartition count times the quartic coefficient of 1 − cos(θ/2)). The code reproduces it with no ghost and no bubble contribution, as it must.
- Pure gauge at commensurate p: zero to rounding (≤ 2e−13 in w) at L = 3, 5, 7, 9. This tests the gauge covariance of the averaging profile at orders 1 and 2 in the background, including the non-abelian terms (J_1, J_2, E_1, E_2, 𝒢, 𝒢_2).
- Pure gauge at incommensurate p is not zero on a coarse grid (β = 0.02–0.12 at Ng = 2). This is the quadrature effect of §1.1 and §5, not a covariance defect.

Limit of these two checks. Both are insensitive to the averaging weights. The abelian value follows from equipartition and does not depend on Q̃ (Prop. 9.1 uses only dimension counts). Gauge covariance holds for any covariant averaging. So these checks cannot detect, for example, a wrong path weight |G|⁻² or a wrong block sum. Only the cross-code comparison of §1.2 tests the averaging itself. It does so at L = 3 and L = 5. At L ≥ 7 the code runs the same general branch as at L = 5 (no L-dependent special case exists in avg_profile, path_arrays, csym, or terms; the only size-dependent switch is the flush threshold of the bincount buffer, which is additive).

## 3. Normalization

- Formula. Both codes and the GPU script use β = 4w/(L⁴(1 − cos p)), w = per-coarse-cell second derivative of log det G − ½ log|det Bord| in the amplitude a of the σ_3 wave a·cos(p x_0) on e_1 links. The denominator is d²/da² of the fine Wilson action Σ_p(1 − ½ tr U_p) per coarse cell: with B = Bᵃσ_a/2 the plaquette term is 1 − cos(θ/2) ≈ θ²/8, ⟨θ²⟩ = a²(1 − cos p), so the per-site value is (1 − cos p)/4 (NUMERICS §6 ×4 fix). This is in the code (umk_beta1.py __main__, t2_fstepb_verify_umk*.py), and the box JSON field `beta` uses it.
- L-dependence of the normalization. The L⁴ is the number of fine sites per coarse cell. The ⟨·⟩_K average over the coarse zone of the per-sector trace is the per-cell trace (each sector carries the 12L⁴ link variables of one cell). The abelian check of §2 is exact at L = 3, 5, 7, 9 with the same formula, so an L-dependent factor in the β formula (L⁴ against L², p against Lp/L, per-cell against per-site) would show there. It does not. (A factor inside the averaging would not show there, see §2; the L = 3, 5 cross-code checks cover that.) The anchor vector u_l = L⁻² 1_3 is a unit vector (Σ_l |u_l|² = L⁴·L⁻⁴ = 1); the code uses s = L⁻² for it and for the fine Bloch normalization. A wrong constant factor in the constraint rows C would only add an a-independent constant to log det (it scales det by s^{2r}); W = DU must use the unit vector, and it does.
- Units of c. Balaban's action is −(1/g_B²)Σ(1 − ½ tr U_p) with 1/g_B² = 2N/g² (R2_TELESCOPING line 85; CMP 109 (1.5)). This is the Wilson β_W. One-loop running: β_W(a) = 2N/g², d(1/g²)/d log(1/a) = 2b_0 = 11N/(24π²), so Δβ_W per step = 2N·(11N/(24π²)) log L = 11N²/(12π²) log L = 0.371511 log L at N = 2. The code's β_1 is the coefficient of A(V) in log Z(V) − log Z(1), which is the decrease of β_W in one step (Balaban (1.3), NUMERICS §1 sign convention). So c and β_1 are in the same units.
- Coarse versus fine action. β_1 is defined against the coarse action A(V), V = Ū(U_0); the code divides by the fine action of U_0. In d = 4 the two agree at a² order up to the factor [L²(1 − cos Lp)/(L⁴(1 − cos p))]·f(Lp)² = 1 + O((Lp)²), f the averaging form factor. This is part of the O((Lp)²) plane-wave bias. It depends on Lp only, not on L at fixed Lp, so it cannot produce an L-dependent slope at fixed Lp.

Conclusion: no factor error and no L-dependent normalization. A constant factor error is also excluded by the L = 2, 3 abelian checks and by the L = 2 real-space finite-difference check (test_momentum.py, NUMERICS §5).

## 4. The jax port that produced the box values (beta1chk_port.py)

The box points of BETA1_SLOPE_STAGE and the L = 11, 13 points come from t2_fstepb_verify_umk_gpu.py --backend jax. BETA1_BOX_RUN validated it only at L = 5. Per-K check on the Mac at L = 9, Ng = 24, Lp = 0.25 (3 random K points of the production grid, seed 0, indices 14308, 11482, 19106): ghost terms identical, border terms equal to 5.7e−14 relative. The port computes the same numbers as umk_beta1.Umk.terms at the production size.

## 5. Grid (Ng → ∞) and Lp → 0

### 5.1 Two kinds of grid error

(a) Offset error. The grid sum at p = 0 is not zero. The exact value is 0: a constant σ_3 field on e_1 links is pure gauge in infinite volume, but the gauge function e^{−iax_1σ_3/2} shifts the charged momenta by a continuous amount, so the grid sum is not invariant. This offset E = w_grid(0) enters β as 4E/(L⁴(1 − cos p)) ≈ 8E/(L²(Lp)²), so it grows like (Lp)⁻² at small Lp. Measured (beta1chk_w0.py, beta1chk_pt.py):

| L | Ng | E = w(0) | ghost part | border part | E-term in β at Lp = 0.25 |
|---|---|---|---|---|---|
| 5 | 8 | 2.9e−3 | −7.1e−3 | −2.0e−2 | 0.0149 |
| 5 | 12 | 1.5e−5 | −7.8e−4 | −1.6e−3 | 7.6e−5 |
| 7 | 8 | 7.6e−3 | −2.6e−2 | −6.8e−2 | 0.0198 |
| 7 | 12 | 4.5e−5 | −5.2e−3 | −1.1e−2 | 1.2e−4 |
| 9 | 8 | 1.4e−2 | −5.7e−2 | −1.4e−1 | 0.0226 |
| 9 | 12 | 8.9e−5 | −1.5e−2 | −3.0e−2 | 1.4e−4 |
| 11 | 8 | 2.3e−2 | −9.8e−2 | −2.4e−1 | 0.0244 |

The ghost and border offsets nearly cancel in w = ghost − ½ border; the total falls by a factor ≈ 200 from Ng = 8 to Ng = 12 at L = 5, 7, 9. At the box grids (Ng ≥ 24) this error is negligible (< 1e−5 in β at Lp = 0.25, extrapolating the factor ≥ 100 per ΔNg = 4). At Ng = 8 it is not negligible: it is 0.015–0.024 in β at Lp = 0.25 and 0.006 at Lp = 0.5. A ghost-only scan at L = 5 shows the same effect without the cancellation (beta1chk_ghost.py; Ng = 12: β_ghost = 0.0674, 0.0554, 0.0076 at Lp = 0.25, 0.125, 0.0625; Ng = 24: 0.0718, 0.0720, 0.0720). Rule: small-Lp points need the total w, not the parts, and Ng ≥ 12.

(b) Smooth error. After the offset is removed, a remainder of a few 10⁻³ at Ng = 8 stays (L = 9: β_sub − β(Ng 24) = 0.0039 at Lp = 0.5 and 0.0069 at Lp = 1). It decays exponentially in Ng. Three-grid data at L = 9 (new Ng = 12 points on the Mac, 9.9e6 blocks each, 573 s):

| L = 9 | Ng = 8 | Ng = 12 | Ng = 24 (box) | 8 → 12 | 12 → 24 | rate r | Ng = 24 residual |
|---|---|---|---|---|---|---|---|
| Lp = 0.25 | — | 0.820999 | 0.820057 | — | 9.4e−4 | (0.29 assumed) | 3e−5 |
| Lp = 0.5 | 0.832654 | 0.825823 | 0.823117 | 6.83e−3 | 2.71e−3 | 0.31 | 7e−5 |
| Lp = 1.0 | 0.850577 | 0.844845 | 0.842309 | 5.73e−3 | 2.54e−3 | 0.29 | 8e−5 |

(Single-exponential fit e(Ng) = A e^{−r Ng} through three grids.) At L = 5 the same fit (Ng 8, 12, 16) gives r = 0.61–0.71. The rate falls with L, roughly as L^{−1.25} (or L^{−1}; both are used for the error bar). This matches the ghost IR scale of NUMERICS §7(e): with λ = 0 only at the anchors, the coarse ghost mode has propagator 0.155 L⁴/(1 + 0.155 L⁴ K²) (fine K), that is, mass m_c = 2.54/L in coarse units (0.51, 0.36, 0.28, 0.23, 0.20 at L = 5, 7, 9, 11, 13). It is physics of the defined quantity, not a bug, and Ng = 24–28 resolves it at L ≤ 13.

### 5.2 Ng → ∞ values (beta1chk_fit.py)

Correction = (finest − next grid)·e^{−rΔNg}/(1 − e^{−rΔNg}), r from §5.1 scaled to L; error = model spread + half the correction (+ 5e−5 rounding for the 4-digit box values).

| L | grids (Lp = 0.25 / 0.5, 1) | Lp = 0.25 | Lp = 0.5 | Lp = 1.0 |
|---|---|---|---|---|
| 5 | 12 / 8, 12, 16 | 0.74430 ± 0.00009 | 0.74871 ± 0.00002 | 0.76796 ± 0.00002 |
| 7 | 12 / 8, 12 | 0.79144 ± 0.00057 | 0.79511 ± 0.00091 | 0.81511 ± 0.00063 |
| 9 | 12, 24 / 8, 12, 24 | 0.82003 ± 0.00001 | 0.82303 ± 0.00004 | 0.84223 ± 0.00004 |
| 11 | 28 / 8, 28 | 0.83576 ± 0.00015 | 0.83768 ± 0.00009 | 0.85629 ± 0.00009 |
| 13 | — / 8, 24 (Lp = 1 only) | — | — | 0.86143 ± 0.00044 |

The L = 7 values carry the largest grid error (Ng = 12 only, ≈ 1e−3 correction); NUMERICS §7 calls L = 7, Ng = 12 "converged", which holds only to ~1e−3.

### 5.3 Lp → 0

Models: q = quadratic in Lp through Lp = 0.25, 0.5; qq = quadratic + quartic through all three; old = (4β(0.5) − β(1))/3 (NUMERICS §7(c)).

| L | q | qq | old | adopted β_1(L, 0) | β(L,1) − β(L,0) |
|---|---|---|---|---|---|
| 5 | 0.74283 | 0.74286 | 0.74229 | 0.74286 ± 0.00017 | 0.0251 |
| 7 | 0.79022 | 0.79034 | 0.78845 | 0.7903 ± 0.0012 | 0.0248 |
| 9 | 0.81903 | 0.81919 | 0.81663 | 0.8192 ± 0.0002 | 0.0230 |
| 11 | 0.83512 | 0.83536 | 0.83148 | 0.8354 ± 0.0005 | 0.0209 |
| 13 | — | — | — | 0.8423 ± 0.0014 | 0.0191 ± 0.0013 (extrapolated in L and 1/L from L = 9, 11) |

- The old formula is biased low at L ≥ 9 (by 0.0026 at L = 9, 0.0039 at L = 11), because the Lp-dependence is not quadratic there. The ratio [β(0.5) − β(0.25)]/[β(1) − β(0.5)] is 0.25 for a pure (Lp)² law; it is 0.23, 0.18, 0.16, 0.10 at L = 5, 7, 9, 11. The flattening grows with L and sets in where Lp = 0.25 approaches m_c.
- One-sided systematic. If the extra flattening continues below Lp = 0.25, β(L, 0) is higher than the table by up to the deficit δ(L) = ¼[β(1) − β(0.5)] − [β(0.5) − β(0.25)]: δ = 0.0004, 0.0013, 0.0018, 0.0027 at L = 5, 7, 9, 11 (≈ 0.003–0.004 at L = 13). This would raise the 9 → 11 slope by ≤ 0.005 and the 11 → 13 slope by ≤ 0.01. A point at Lp = 0.125 (L = 9, 11; Ng ≥ 24, total w) would remove this uncertainty.

### 5.4 Slopes

| step | Δβ_1 / Δlog L (Lp → 0, Ng → ∞) | same at Lp = 1 | c = 0.3715 | ratio |
|---|---|---|---|---|
| 5 → 7 | 0.141 ± 0.004 | 0.140 | 0.3715 | 0.38 |
| 7 → 9 | 0.115 ± 0.005 | 0.108 | 0.3715 | 0.31 |
| 9 → 11 | 0.081 ± 0.003 (+0.005 one-sided) | 0.070 | 0.3715 | 0.22 |
| 11 → 13 | 0.041 ± 0.009 (+0.01 one-sided) | 0.031 | 0.3715 | 0.11 |

β_1(L, 0) − c log L = +0.145, +0.067, +0.003, −0.056, −0.111 at L = 5, 7, 9, 11, 13. The fall persists after both extrapolations. Grid and Lp errors are ≤ 0.0015 in β at every L, more than an order of magnitude below the deficit (c·Δlog L − Δβ_1 = 0.05 per step at 11 → 13).

Where the slope is lost (Lp = 1, finest grids, split β = β_ghost + β_bord with β_ghost = 4·ghost/(L⁴(1 − cos p)), β_bord = −2·bord/(L⁴(1 − cos p))): β_ghost = 0.0673, 0.0856, 0.0996 and β_bord = 0.7006, 0.7306, 0.7427 at L = 5, 7, 9. The ghost slope is steady (0.054, 0.056); the border slope falls (0.089, 0.048). The split for L = 11, 13 is in the box JSONs (fields beta_ghost, beta_bord) and was not read (box not touched).

## 6. What this check does not cover

- The averaging at L ≥ 7 is tested only through the generic code path shared with L = 5 (where it matches ym_momentum to 9e−13) and through the covariance and abelian checks at L = 7, 9 (§2 explains why those two do not test the weights). An L-specific defect at L ≥ 7 would need a code branch that does not exist; it is not excluded by a run.
- The L = 11 and L = 13 box numbers were taken as quoted (4 digits). The Mac copy of the GPU script equals the box md5 e44a0289… after the ID-header comment line (added 16:16) is removed. The box JSONs and the box copy were not read.
- The formula of NUMERICS §1 (log Z = log det G − ½ log|det Bord|, ghost on λ = 0 at the anchors) is shared by both codes. It was verified in R2_VERIFY, not here. A conceptual error in that definition would not be a code bug and would not show in any check above.
- L = 13 has one fine-grid point (Lp = 1). Its Lp → 0 value uses an extrapolated β(1) − β(0).

## 7. Reproduction (Mac, numerics/.venv, run from numerics/)

| script | what | cost |
|---|---|---|
| beta1chk_cross.py L Ng p [--only umk/mom] | both codes on one case; p = "2pi/N" allowed | L = 3: ≤ 3 min; L = 5, Ng = 1: 27 min, 25 GB |
| beta1chk_limits.py L 2 | abelian, pure gauge commensurate / incommensurate | ≤ 2 min (L = 9) |
| beta1chk_port.py L Ng Lp | jax port against numpy per K | 1 min (L = 9) |
| beta1chk_ghost.py L Ng Lp_list | ghost part only | 1–3 min (L = 5) |
| beta1chk_w0.py L Ng [Lp_list] / beta1chk_pt.py L Ng Lp | offset w(0) and single points, 60 s checkpoints | L = 9, Ng = 12: 10 min per point |
| beta1chk_fit.py | §5.2–§5.4 tables | seconds |

Raw outputs were in /tmp/beta1chk/ (scratch, deleted after this file was written); every number used is in the tables above.
