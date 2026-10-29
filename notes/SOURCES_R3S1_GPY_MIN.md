# SOURCES_R3S1_GPY_MIN — certified global minimum of the deformed lattice GPY potential (SU(2), SU(3)); dual-photon log power

Written 2026-10-28 (Claude, Opus 5.5). New file. No existing file edited. PLAN.md not touched; sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read and excluded from every search.
Script: numerics/r3s1_gpy_cert.py (new; numpy + scipy; 16 s for the certificate, 33 s for the --genN mode). Its output is tabulated in §1.5.
Inputs read: R3S1_GAP §2 (§2.2 inequality), SOURCES_R3S1_NUMERICS §1, numerics/r3s1_gpy_lattice.py, SOURCES_3D_GAP_LIT rows U4, U6, U9. For Task 2 I re-read Ünsal–Yaffe arXiv:0803.0344v2 deform.tex (downloaded to /tmp/uy_dl_r3, deleted at the end).
Grades: [P] proof given here; [N-cert] numerical statement with rigorous error control (explicit inequalities plus floating slack, see §1.4); [N] plain numerics; [P-sketch] argument with a stated gap; [I] recalled.
Notation as in SOURCES_R3S1_NUMERICS: N colors, N_4 sites on the circle, a_1 the coefficient of |tr Ω|² in L³V, holonomy Ω = diag(e^{iθ_j}), Σθ_j = 0, orthonormal Cartan coordinates (Euclidean metric on θ ∈ R^N, Σθ = 0). The center-symmetric point is c (eigenvalues z·{1, e^{2πi/N}, …}); d(θ, c) is the distance in the torus.

---

## 0. Summary
- Task 1 [P + N-cert]. For SU(2) and SU(3) with P = a_1|tr Ω|² (all of n ≤ ⌊N/2⌋), the center-symmetric point is the unique global minimum of the exact one-loop lattice potential plus deformation for a_1 ≥ a_1^*(N_4). Certified upper bounds: a_1^* = 0.2250 / 0.3263 for all N_4 ≥ 8; 0.2098 / 0.3094 for all N_4 ≥ 16; continuum 0.20563 / 0.30463 (exact π²/48, 5π²/162). Margin over the true threshold: 0.005 at N_4 = 8, 0.001 at N_4 = 16, < 1e−4 at N_4 = 64. Curvature μ_c, convexity radius, ΔV_out and the gap ΔV_loc to every other local minimum are tabulated in §1.5, uniform in N_4 ≥ N_0. Method: exact reduction to the continuum pair function at a shifted a_eff plus a remainder bounded by ρ_0, ρ_2; rigorous two-sided bounds on the lattice ratio R(m); branch-and-bound covers of the alcove with explicit float slack (not interval arithmetic).
- General N: conjecture with numerics for N = 4, 5 (§1.7).
- Task 2 [P]. The right log power is 8/11. UY's 9/11 contradicts their own string-tension formula (|log|^{−3/11} needs 8/11). R3S1_GAP's 3/2 drops the two-loop factor λ^{17/22}. New [P-sketch]: e^{−ΔS} is not O(1); ΔS = 2πm_φL/g² + O(1) ∝ 1/g, which multiplies m_γ by exp(−c√|ln ΛL|) and dominates any log power (§2.4, §2.5).

---

## 1. Task 1 — certified global minimum, curvature and gap for SU(2), SU(3) on the N_4-site circle

### 1.1 Statement [P + N-cert]
Theorem GPY-min. Let N ∈ {2, 3}. Take the deformation P[Ω] = a_1|tr Ω|². This is the whole double-trace family n ≤ ⌊N/2⌋ = 1; no other a_n is used. Let V be the exact one-loop lattice potential plus the deformation (SOURCES_R3S1_NUMERICS §1.1):
  L³V(θ) = Σ_{n≥1} (a_n − c_n^lat)|tr Ω^n|²,  c_n^lat = 2N_4³w(nN_4)/n,  a_n = 0 for n ≥ 2.
Let a_1 ≥ a_1^*(N_4), with a_1^* from the table in §1.5. Then, in orthonormal Cartan coordinates and with d = d(θ, c):
 (i) c is the unique global minimum of V on T/W (the alcove). Center and Weyl images of c are the same point of T/W.
 (ii) Hess L³V(c) ≥ μ_c. So m_φL/g ≥ √(μ_c/2) (SOURCES_R3S1_NUMERICS §1.1 normalization m_φ²L² = (g²/2)λ).
 (iii) L³V is strictly convex on B_r(c), with Hess ≥ μ_r > 0. So L³V(θ) − L³V(c) ≥ μ_r d²/2 on B_r(c).
 (iv) L³V(θ) − L³V(c) ≥ ΔV_out for d ≥ r. With (iii): L³V(θ) − L³V(c) ≥ min(μ_r d²/2, ΔV_out) for every θ.
 (v) L³V has no critical point with r ≤ d ≤ R. So every local minimum other than c has L³V − L³V(c) ≥ ΔV_loc := min_{d≥R}(L³V − L³V(c)).
Statements (i)–(iv) are monotone in a_1: if they hold at a_1, they hold at every a_1′ ≥ a_1 with the same r, μ_c, μ_r, ΔV_out (§1.2). Statement (v) is certified only at the listed a_1 values.
The constants are uniform in N_4 ≥ N_0: the table rows "N_0 = 8, 16" use the worst remainder over all N_4 ≥ N_0.

### 1.2 Reduction to the continuum potential plus a small remainder [P]
Pair form. |tr Ω^n|² = N + 2Σ_{i<j}cos(nθ_ij). So L³V = const + 2Σ_{i<j} h_{N_4}(θ_ij), with h_{N_4}(x) = a_1 cos x − Σ_n c_n^lat cos(nx).
Lattice ratio. c_n^lat = (2/(π²n⁴))·R(nN_4), with R(m) := π²m³w(m) = ∫_BZ e^{−mE_p}d³p / ∫_{R³}e^{−m|p|}d³p. Put δc_n := c_n^lat − 2/(π²n⁴) = (2/(π²n⁴))(R(nN_4) − 1). Then
  L³V(θ) − L³V(c) = G_∞(θ; a_eff) − Σ_{n≥2} δc_n (D_n(θ) − D_n(c)),  a_eff = a_1 − δc_1,  D_n = |tr Ω^n|²,
where G_∞(θ; a) = 2Σ_{i<j}[h(θ_ij; a) − h(c_ij; a)] and h(x; a) = a cos x − (2/π²)B(x), B(x) = Σcos(nx)/n⁴ = π⁴/90 − π²x²/12 + πx³/12 − x⁴/48 on [0, 2π].
Remainder. Put ρ_0 := Σ_{n≥2}|δc_n| and ρ_2 := Σ_{n≥2}n²|δc_n|. Facts: 0 ≤ D_n ≤ N²; ∇D_n(c) = 0 (c is a minimum of D_n if N ∤ n, a maximum if N | n); ‖Hess D_n‖ ≤ 2Nn² (from ∂²_u D_n = −n²Σ_{i,j}(u_i − u_j)²cos(nθ_ij) and Σ_{i,j}(u_i − u_j)² = 2N|u|²). Hence the remainder rem(θ) satisfies
  |rem(θ)| ≤ min(N²ρ_0, Nρ_2d²),  |∇rem(θ)·(θ − c)| ≤ 2Nρ_2d²,  and in the pair form |h″_{N_4} − h″_∞(·; a_eff)| ≤ ρ_2.
Hessian lemma. The Hessian form of 2Σ_{i<j}h(θ_ij) is Q(u) = 2Σ_{i<j}h″(θ_ij)(u_i − u_j)², Σu = 0. Since Σ_{i<j}(u_i − u_j)² = N|u|², every h″(θ_ij) ≥ η ≥ 0 gives Q ≥ 2Nη|u|². At c every pair difference is ±2π/N mod 2π and h is even, so the bound is an equality there: λ(c) = 2Nh″(c_pair). Check: SU(2) 4(a − 1/6) = 4a − 2/3; SU(3) 6(a/2 − 1/9) = 3a − 2/3. Both agree with SOURCES_R3S1_NUMERICS §1.2.
Ball geometry. |δθ_i − δθ_j| ≤ √2|δθ|. So on B_r(c) each pair difference lies within √2 r of c_pair = π (SU(2)) or ±2π/3 (SU(3)).
Criticality of c. V is invariant under the center action composed with a Weyl permutation. For SU(2) this is φ ↦ 2π − φ, with fixed point π. For SU(3) it is the 120° rotation of the alcove about its centroid c. A smooth function invariant under such an isometry has ∇V(c) = 0. This holds for the lattice V and for any center- and Weyl-invariant correction.
Monotonicity in a. D_1(θ) − D_1(c) = |tr Ω|² ≥ 0, so G_∞(θ; a) does not decrease when a increases. h″(x; a) = −a cos x − (2/π²)B″(x) does not decrease in a where cos x ≤ 0. This holds on the convexity region if √2 r ≤ π/2 (SU(2)) or √2 r ≤ π/6 (SU(3)); the script enforces both. The true a_eff is ≥ a_1 − δc_1⁺, with δc_1⁺ the certified upper bound of §1.3. So bounds certified at a_eff = a_1 − δc_1⁺ hold for the lattice potential.
Proof of (i)–(iv) from three certified facts at a_eff = a_1 − δc_1⁺:
 (F1) min_{|s|≤√2r} h″_∞(c_pair + s; a_eff) − ρ_2 =: μ_r/(2N) > 0;
 (F2) G_∞(θ; a_eff) − min(N²ρ_0, Nρ_2d²) ≥ ΔV_out > 0 for d ≥ r;
 (F3) c is critical (above).
By (F1) and the Hessian lemma, V is strictly convex on the convex set B_r(c). With (F3), c is its unique minimum there and V − V(c) ≥ μ_r d²/2. (F2) gives (iv). Together they give (i). For (v), certify (F4): ∇G_∞(θ; a_eff)·(θ − c) − 2N(ρ_2 + Δa)d² > 0 for r ≤ d ≤ R, with Δa the width of the a_eff interval (|∇D_1·(θ − c)| ≤ 2Nd²). Then V increases along every ray from c in the annulus, so no critical point lies there.

### 1.3 Two-sided bounds on R(m) [P for the inequalities; N-cert for the 1D sums]
- (R-lo) E_p ≤ |p| on the BZ, since 4sin²(t/2) ≤ t² and 2asinh(ω/2) ≤ ω. So ∫_BZ e^{−mE} ≥ ∫_{|p|≤π}e^{−m|p|}d³p, and R(m) ≥ 1 − e^{−πm}(1 + πm + (πm)²/2). For m ≥ 8 the deficit is below 5e−9.
- (R-hi, ball) For |p| = r ≤ π write ω² = Σ_iφ(p_i²), φ(s) = 2 − 2cos√s. φ is concave on [0, π²]. A concave function on the simplex {s_i ≥ 0, Σs_i = r²} takes its minimum at a vertex. So ω² ≥ 4sin²(r/2) and E_p ≥ e_1(r) := 2asinh(sin(r/2)) (the axis direction is the worst). e_1 is concave: e_1″(r) = −sin(r/2)/(1 + sin²(r/2))^{3/2} ≤ 0. So each chord of e_1 lies below e_1, and ∫_0^π r²e^{−me_1(r)}dr ≤ Σ_k ∫_{r_k}^{r_{k+1}} r²e^{−m·chord_k(r)}dr, which is evaluated in closed form (4000 panels, series for ∫_0^h s^je^{−cs}ds).
- (R-hi, corners) For π < r ≤ √3π the same concave program on {0 ≤ s_i ≤ π², Σs_i = r²} has its minimum at a vertex: ω² ≥ 4 + 4sin²(√(r² − π²)/2) for r² ≤ 2π², ω² ≥ 8 + 4sin²(√(r² − 2π²)/2) above. This lower bound e_out(r) increases in r. A left-endpoint Riemann sum with sphere area 4πr² bounds the corner integral above.
- (R-tail, m > 256) sin u ≥ u − u³/6 and asinh y ≥ y − y³/6 (y ≥ 0) give e_1(r) ≥ r − r³/12 on [0, π]. On r ≤ 1, e^{mr³/12} − 1 ≤ (mr³/12)e^{mr/12}, and ∫_0^∞r⁵e^{−(11/12)mr}dr = 120(12/(11m))⁶. On [1, π], e_1 ≥ e_1(1) = 0.925. So R(m) − 1 ≤ 5(12/11)⁶/m² + (m³/8π)[4π(π³ − 1)/3·e^{−0.925m} + 118.2e^{−1.763m}] ≤ 8.43/m² + 1e−95 for m > 256.

| m | 2 | 3 | 4 | 6 | 8 | 12 | 16 | 32 | 64 | 128 | 256 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| certified R⁺(m) | 3.7232 | 2.5302 | 1.74079 | 1.21087 | 1.09428 | 1.03713 | 1.02025 | 1.004925 | 1.001223 | 1.000305 | 1.0000764 |
| (R⁺ − 1)m² | 10.89 | 13.77 | 11.85 | 7.59 | 6.03 | 5.35 | 5.18 | 5.04 | 5.01 | 5.00 | 5.01 |
| quadrature R(m) [N, SOURCES_R3S1_NUMERICS] | 2.104 | 1.739 | 1.404 | 1.141 | 1.070 | 1.029 | 1.016 | 1.004 | — | — | — |

Looseness. For large m, R − 1 ≈ 60⟨κ⟩/m² with E ≈ r − κr³. The axis bound uses κ = 1/12; the angular average is κ = 1/15. So (R⁺ − 1)/(R − 1) → 5/4 (about 5/m² against 4.1/m²). At m = 4 the ratio is 1.83. This is the main source of the margin in §1.5.

### 1.4 Certification of (F1)–(F4) [N-cert]
- Domain. T/W is the alcove. SU(2): x = θ_1 − θ_2 ∈ [0, 2π], with the reflection x ↦ 2π − x, so [0, π] suffices; c: x = π; d = |δx|/√2. SU(3): x = θ_1 − θ_2, y = θ_2 − θ_3, {x, y ≥ 0, x + y ≤ 2π}; c = (2π/3, 2π/3); d² = (2/3)(δx² + δxδy + δy²); G = 2[h(x) + h(y) + h(x + y)] − 6h(2π/3).
- (F1) is one-dimensional. On panels of half-width w, h″(x) ≥ h″(mid) − (a + 1/π)w. Reason: h‴ = a sin x − (2/π²)B‴, with B‴ = π/2 − x/2 on (0, 2π), so |h‴| ≤ a + 1/π, and B″ is continuous.
- (F2) Branch and bound on boxes. On a box with centre m and half-widths w: G ≥ G(m) − Σ_k|∂_kG(m)|w_k − (1/2)H|w|², minus the remainder bound min(N²ρ_0, Nρ_2d_max²). Global Hessian bound: |h″| ≤ a + 1/3, since B″ ∈ [−π²/6, π²/12]. In alcove coordinates the form 2[h″(x)u² + h″(y)v² + h″(x + y)(u + v)²] has norm ≤ 6(a + 1/3); for SU(2) the bound is 2(a + 1/3). B is C² across x ≡ 0 mod 2π, so the Taylor bound holds on the whole torus. Boxes inside B_r or beyond the alcove edge are dropped. (A point beyond the edge is another point of the torus, so keeping a straddling box only lowers the bound.) Boxes are bisected until their lower bound passes. ΔV_out is the smallest accepted lower bound.
- (F4) The same branch and bound for f(θ) = ∇G·(θ − c), with |∇f| ≤ ‖Hess G‖(|θ − c| + |w|) + |∇G(m)| + ‖Hess G‖|w| on the box. R is the largest value (grid 0.02) that passes.
- Floating point. Every bound is a closed formula of fewer than about 100 float64 operations on O(1) numbers, so the a-priori rounding error is below 1e−13. Each bound carries an explicit slack of 1e−10 (relative for R⁺, absolute for the potential bounds). This is an outward-rounded scheme by explicit slack, not interval arithmetic: mpmath is not installed in the Mac python. A verifier can replace the box evaluations by mpmath.iv calls; the accepted boxes number at most about 2·10⁴ per run.
- Choices. r is the largest radius (grid 0.005) with μ_r ≥ μ_c/2 and the monotonicity limits of §1.2. a_1^*(N_4) := a_c + δc_1⁺(N_4), where a_c is the smallest a_eff (bisection, tolerance 2e−5) for which (F1) and (F2) pass with ΔV_out > 1e−9. Run time on the Mac: 16 s for the whole script.
- Sanity checks. With zero remainder the script returns a_c = 0.20563 (π²/48 = 0.205617) and 0.30463 (5π²/162 = 0.304616): the bisection tolerance. At N_4 = ∞ the certified ΔV_loc equals the exact competitor gaps 4(a_1 − π²/48) (SU(2), trivial point) and a_1 − 5π²/162 (SU(3), diag(1, −1, −1)) to 1e−5. Every certified a_1^*(N_4) lies above the bisection threshold a_glob(N_4) of SOURCES_R3S1_NUMERICS §1.3, as it must.

### 1.5 Results [N-cert unless marked]
Thresholds. a_1^* is an upper bound on the true global threshold. "num" is the bisection threshold a_glob(N_4) of SOURCES_R3S1_NUMERICS §1.3 [N]; margin = a_1^* − num.

| N_4 | δc_1⁺ | ρ_0 | ρ_2 | SU(2) a_1^* | num | margin | SU(3) a_1^* | num | margin |
|---|---|---|---|---|---|---|---|---|---|
| 2 | 0.5518 | 1.0e−2 | 4.4e−2 | 0.7720 | 0.4297 | 0.342 | 0.9716 | 0.5721 | 0.400 |
| 3 | 0.3101 | 2.9e−3 | 1.3e−2 | 0.5186 | 0.3555 | 0.163 | 0.6407 | 0.4695 | 0.171 |
| 4 | 0.1501 | 1.3e−3 | 6.1e−3 | 0.3570 | 0.2876 | 0.069 | 0.4665 | 0.3941 | 0.072 |
| 6 | 0.0427 | 5.2e−4 | 2.5e−3 | 0.2489 | 0.2343 | 0.015 | 0.3520 | 0.3364 | 0.016 |
| 8 | 0.0191 | 2.8e−4 | 1.3e−3 | 0.2250 | 0.2199 | 0.0051 | 0.3263 | 0.3206 | 0.0057 |
| 12 | 0.0075 | 1.2e−4 | 5.9e−4 | 0.2133 | 0.2115 | 0.0018 | 0.3133 | 0.3113 | 0.0020 |
| 16 | 0.0041 | 6.9e−5 | 3.3e−4 | 0.2098 | 0.2089 | 0.0009 | 0.3094 | 0.3083 | 0.0011 |
| 24 | 0.0018 | 3.1e−5 | 1.5e−4 | 0.2074 | — | — | 0.3067 | — | — |
| 32 | 0.0010 | 1.7e−5 | 8.2e−5 | 0.2066 | 0.2064 | 0.0002 | 0.3058 | 0.3055 | 0.0003 |
| 64 | 0.00025 | 4.3e−6 | 2.1e−5 | 0.2059 | 0.2059 | < 1e−4 | 0.3049 | 0.3049 | < 1e−4 |
| 128 | 0.00006 | 1.2e−6 | 5.9e−6 | 0.2057 | — | — | 0.3047 | — | — |
| ∞ | 0 | 0 | 0 | 0.20563 | π²/48 = 0.20562 | 1e−5 | 0.30463 | 5π²/162 = 0.30462 | 1e−5 |

Uniform statement. The bounds (δc_1⁺, ρ_0, ρ_2) decrease in N_4 (checked for N_4 ≤ 400; above 400 the analytic tail of §1.3 is smaller). So the row N_4 = N_0 is valid for all N_4 ≥ N_0: a_1^* = 0.2250 (SU(2)), 0.3263 (SU(3)) for all N_4 ≥ 8; 0.2098, 0.3094 for all N_4 ≥ 16; 0.3570, 0.4665 for all N_4 ≥ 4.

Curvature and gaps, uniform over N_4 ≥ N_0 (all entries are lower bounds; "num" columns are the values at box centres [N]). m_φL/g ≥ √(μ_c/2).

| group | N_0 | a_1 | r | μ_c | μ_r | m_φL/g ≥ | ΔV_out | R | ΔV_loc | ΔV_loc num |
|---|---|---|---|---|---|---|---|---|---|---|
| SU(2) | 8 | 0.25 | 0.510 | 0.2515 | 0.1269 | 0.3546 | 0.02988 | 1.13 | 0.09997 | 0.09998 |
| SU(2) | 8 | 0.30 | 0.585 | 0.4515 | 0.2271 | 0.4752 | 0.07050 | 1.51 | 0.2762 | 0.2762 |
| SU(2) | 8 | 0.50 | 0.670 | 1.2515 | 0.6326 | 0.7911 | 0.2564 | 1.99 | 1.0810 | 1.0810 |
| SU(2) | 8 | 1.00 | 0.710 | 3.2515 | 1.6385 | 1.2751 | 0.7480 | 2.15 | 3.0933 | 3.0933 |
| SU(2) | 16 | 0.22 | 0.475 | 0.1956 | 0.0994 | 0.3127 | 0.02018 | 1.28 | 0.04084 | 0.04085 |
| SU(2) | 16 | 0.25 | 0.540 | 0.3156 | 0.1606 | 0.3972 | 0.04205 | 1.56 | 0.1608 | 0.1608 |
| SU(2) | 16 | 0.30 | 0.600 | 0.5156 | 0.2603 | 0.5077 | 0.08471 | 1.86 | 0.3587 | 0.3587 |
| SU(2) | 16 | 1.00 | 0.710 | 3.3156 | 1.6748 | 1.2876 | 0.7628 | 2.19 | 3.1595 | 3.1595 |
| SU(3) | 8 | 0.33 | 0.090 | 0.2580 | 0.1313 | 0.3591 | 0.00095 | 0.39 | 0.00371 | 0.00372 |
| SU(3) | 8 | 0.35 | 0.100 | 0.3180 | 0.1618 | 0.3987 | 0.00145 | 0.50 | 0.02312 | 0.02313 |
| SU(3) | 8 | 0.40 | 0.115 | 0.4680 | 0.2440 | 0.4837 | 0.00284 | 0.72 | 0.05892 | 0.05893 |
| SU(3) | 8 | 0.50 | 0.140 | 0.7680 | 0.3862 | 0.6197 | 0.00690 | 0.96 | 0.1494 | 0.1494 |
| SU(3) | 8 | 1.00 | 0.170 | 2.2680 | 1.1403 | 1.0649 | 0.03007 | 1.31 | 0.6584 | 0.6584 |
| SU(3) | 16 | 0.33 | 0.100 | 0.3091 | 0.1567 | 0.3931 | 0.00141 | 0.78 | 0.02065 | 0.02066 |
| SU(3) | 16 | 0.35 | 0.105 | 0.3691 | 0.1929 | 0.4296 | 0.00186 | 0.87 | 0.04065 | 0.04066 |
| SU(3) | 16 | 0.50 | 0.140 | 0.8191 | 0.4211 | 0.6399 | 0.00737 | 1.26 | 0.1880 | 0.1881 |
| SU(3) | 16 | 1.00 | 0.170 | 2.3191 | 1.1716 | 1.0768 | 0.03076 | 1.43 | 0.6893 | 0.6893 |
| SU(2) | ∞ | 0.25 | 0.550 | 0.3333 | 0.1683 | 0.4082 | 0.04603 | 1.71 | 0.1775 | 0.1775 |
| SU(3) | ∞ | 0.35 | 0.110 | 0.3833 | 0.1953 | 0.4378 | 0.00212 | 1.01 | 0.04537 | 0.04538 |

Reading the table.
- μ_c tracks the exact center curvature 4a_eff − 2/3 (SU(2)) and 3a_eff − 2/3 (SU(3)) minus 2Nρ_2. The certified m_φL/g agrees with the [N] table of SOURCES_R3S1_NUMERICS §1.3 to within the shift δc_1⁺ (for example SU(2), a_1 = 0.30: ≥ 0.4752 for all N_4 ≥ 8; quadrature value 0.4894 at N_4 = 8).
- ΔV_out is small for SU(3) because the convexity radius is small (r ≤ 0.17): the SU(3) pair curvature h″(2π/3 + s) has a linear term −s/(3π), so h″ falls fast. ΔV_out is set by the ball boundary, μ r²/2 order, not by a competitor.
- ΔV_loc is the physical gap. At N_4 = ∞ it equals the competitor height exactly: 4(a_1 − π²/48) for SU(2) (trivial point; for a_1 > 1/3 it is a maximum and no other local minimum exists) and a_1 − 5π²/162 for SU(3) (diag(1, −1, −1) and its images). On the lattice it is the competitor height at a_eff minus N²ρ_0.
- At a_1 = a_1^*(N_4) itself every gap is 0⁺ by construction. A usable choice needs a_1 above a_1^* by the margin wanted in ΔV_loc: ΔV_loc ≈ 4(a_1 − a_1^*) (SU(2)) and ≈ a_1 − a_1^* (SU(3)).

### 1.6 Consequences for Theorem B′ [P unless marked]
- Corrected input inequality. R3S1_GAP §2.2 states the failing inequality as a_n·Z_adj(ε) ≥ 2/(π²n⁴). SOURCES_R3S1_NUMERICS §1.5 already replaced the right side by the global threshold. For B′ (deformation inserted at scale a on the block holonomy Ω_a, R3S1_GAP §2.3, no Z_adj factor) the one-loop condition is now a proved inequality:
  a_1 ≥ a_1^*(N_4) + (margin for the wanted ΔV_loc),  with a_1^*(N_4) ≤ 0.2098 (SU(2)), 0.3094 (SU(3)) for all N_4 ≥ 16.
  B′ needs N_4 ≥ N_min ≥ 22M (R3S1_GAP §2.1 (L-iii)), so N_4 ≥ 16 holds and the lattice shift is below 2%. A safe concrete choice is a_1 = 0.30 (SU(2)) or a_1 = 0.50 (SU(3)); then for all N_4 ≥ 16, μ_c ≥ 0.5156 / 0.8191 and ΔV_loc ≥ 0.3587 / 0.1880.
- Center symmetry is not spontaneously broken at one loop, with quantitative coercivity: L³V(θ) − L³V(c) ≥ min(μ_r d²/2, ΔV_out) for all θ, and every other local minimum lies ≥ ΔV_loc above c. The transition at a_1^* is first order (SOURCES_R3S1_NUMERICS), so the local curvature stays O(1) at threshold (μ_c ≈ 0.16 for SU(2), 0.25 for SU(3)): there is no soft mode at a_1^*. A value a_1 between the local and the global threshold is excluded by (i), not by (ii).
- Robustness to higher orders. The lattice theory with the deformation is exactly center symmetric and Weyl invariant, so every correction δV to the holonomy potential (two-loop terms, Balaban's E_K restricted to constant flat holonomy, the difference between Ω_a and the exact flat holonomy) keeps c critical. If sup|δV − δV(c)| ≤ η_0, ‖Hess δV‖ ≤ η_2 on B_R(c) and |∇δV·(θ − c)| ≤ η_1d² there, then (i)–(v) hold for V + δV with μ_r − η_2, ΔV_out − η_0, ΔV_loc − η_0 and (F4) margin reduced by η_1, as long as these stay positive. The proof is the same as §1.2 with rem replaced by rem + δV. For a two-loop term η ∼ C·g²: the condition is g² ≤ g_0² ∼ min(ΔV_out, μ_r)/C. C is not computed here [open]. For SU(3), ΔV_out ≈ 1.4e−3–3e−2 is the binding constant; it can be raised by a larger certified convexity radius (the ratio μ_r ≥ μ_c/2 used here is a choice).
- Domain-wall tension (lower bound) [P]. With the kinetic term (1/(g²L))Σ_j(∂θ_j)² = (κ/2)|∂θ|², κ = 2/(g²L), a static planar wall between c and any other minimum has action per unit area σ ≥ √(2κ)·L^{−3/2}∫√(L³V − L³V(c)) ds along the path. The path must leave B_r(c), and on B_r the integrand is ≥ √(μ_r/2)·s. So σL² ≥ (2/g)·√(μ_r/2)·r²/2 = √(μ_r/2)·r²/g. Example: SU(2), a_1 = 0.30, N_4 ≥ 16: σL² ≥ 0.130/g. A wrong-vacuum domain of linear size ℓ ≫ L costs ≥ σℓ² + ΔV_loc·ℓ³/L³. Both are positive and independent of ε, which is what the (E2)/(E5) steps of R3S1_GAP need from the holonomy potential.
- Mass of the holonomy fluctuation. m_φL ≥ g√(μ_c/2), uniform in N_4 ≥ N_0 (table). The Yukawa range of R3S1_GAP (E5) is ≤ L/(g√(μ_c/2)). The same m_φ enters the monopole self-energy of §2.4.
- What is not covered. (a) Deformations other than a_1|tr Ω|². For SU(3), any extra a_n|tr Ω^n|² with a_n ≥ 0 and 3 ∤ n keeps D_n(c) = 0 and Hess D_n(c) ⪰ 0, so (i), (ii), (iv) remain true by monotonicity; (iii) and (v) would need a re-run. For SU(2) the next term |tr Ω²|² is maximal at c, so it must not be added. (b) N_4 < 4 is certified (table) but with a large margin; N_4 ∈ {2, 3} is outside B′ anyway. (c) The block holonomy Ω_a of B′ is not the flat holonomy; the one-loop potential of Ω_a equals the lattice GPY potential only up to the corrections of the previous item.

### 1.7 General N: conjecture and numerics [N, conjecture]
Conjecture GPY-min(N). For every N ≥ 2 there are thresholds such that if a_n ≥ a_n^*(N, N_4) for all 1 ≤ n ≤ ⌊N/2⌋, the center-symmetric point is the unique global minimum of the deformed lattice potential, with curvature and gap bounds uniform in N_4 ≥ N_0(N). All ⌊N/2⌋ terms are needed: with a_1 alone the modes p with 2 ≤ p ≤ N − 2 of the center Hessian are not lifted.
Numerics (continuum only; multistart BFGS, 150 starts; script mode --genN, 33 s; not certified):

| N | deformation family | result |
|---|---|---|
| 4 | a_1 only, any a_1 | center Hessian has eigenvalue −1/3 (the tr Ω² mode); minimum has |tr Ω| = 0, |tr Ω²| = 4: Z_4 → Z_2, as UY state |
| 4 | a_1 = a_2 = s | global threshold s* ≈ 0.210; local threshold ≈ 0.208 (center modes 4s − 0.833) |
| 4 | a_n = s·2/(π²n⁴), n ≤ 2 | s* ≈ 1.19; UY's choice s = 2 works (center eigenvalues 0.477, 0.788, 0.788) |
| 5 | a_1 only | center Hessian eigenvalues −0.309 (twice) for every a_1; minimum has |tr Ω²| ≈ 2.5 |
| 5 | a_1 = a_2 = s | s* ≈ 0.231 |
| 5 | a_n = s·2/(π²n⁴), n ≤ 2 | s* ≈ 1.63; at s = 1.5 c is a local minimum but not global (first order); UY's s = 2 works (eigenvalues 0.198, 1.002) |

The certification method of §1.2–§1.4 extends to N = 4, 5 without change of principle: the reduction to a continuum pair function plus a remainder bounded by ρ_0, ρ_2 holds for every N, and the alcove is 3- or 4-dimensional. Cost: a 3D or 4D branch and bound; this is minutes on the Mac for N = 4 and likely an hour-scale run for N = 5 (Windows box).

---

## 2. Task 2 — the log power in the dual-photon mass

### 2.1 Inputs [V: deform.tex v2]
- Fugacity (eq. fug): ζ = A m_W³ (g²N)^{−2} e^{−ΔS} e^{−8π²/(Ng²(m_W))}, m_W = 2π/(NL). The appendix measure (eq. Eq:measure) is C μ^{11/3}(NL)^{2/3} S_YM² e^{−S_YM−ΔS} d³a dΩ. So (g²N)^{−2} is S_YM² = (8π²/(g²N))² (Jacobians J_a = S^{3/2}, J_Ω = NL S^{1/2}), and μ^{11/3}(NL)^{2/3} = m_W³·const at μ = m_W. A is "dimensionless and N independent": no power of g.
- Photon mass: m_γ² = (2π)²Lζ/g² = A m_W² (2π/(g²N))³ e^{−ΔS} e^{−8π²/(Ng²(m_W))}.
- Scale (eq. RG): Λ^{b_0} = μ^{b_0} (Ng²(μ))^{−b_1/b_0} e^{−8π²/(Ng²(μ))}, b_0 = 11/3, b_1 = 17/3.
- Printed results: m_γ = Ã Λ (ΛNL)^{5/6} |ln NΛL|^{9/11} (eq. mgamma); T ≡ ζ/m_γ ∼ Λ²(ΛLN)^{−1/6}|log ΛLN|^{−3/11} (eq. Tdef); m_W/m_γ ∼ (LNΛ)^{−11/6}|log LNΛ|^{−9/11}.

### 2.2 Conversion with every power of g² kept [P]
Put λ = Ng²(m_W). Eq. RG at μ = m_W gives exactly e^{−8π²/λ} = (Λ/m_W)^{11/3} λ^{b_1/b_0} = (Λ/m_W)^{11/3} λ^{17/11}. So e^{−4π²/λ} = (Λ/m_W)^{11/6} λ^{17/22}. Then
  m_γ = A^{1/2}(2π)^{3/2} e^{−ΔS/2} · m_W λ^{−3/2} · (Λ/m_W)^{11/6} λ^{17/22} = A^{1/2}(2π)^{3/2} e^{−ΔS/2} · Λ (ΛNL/2π)^{5/6} · λ^{−8/11}.

| source | power of λ in m_γ |
|---|---|
| A (non-zero-mode determinant at μ = m_W) | 0 |
| S_YM² in ζ (four zero modes) | −1 |
| 1/g² in m_γ² = (2π)²Lζ/g² | −1/2 |
| two-loop factor λ^{b_1/b_0} inside e^{−8π²/λ}, square root | +17/22 |
| e^{−ΔS}, if ΔS is g-independent (UY's claim) | 0 (but see §2.4) |
| total | −3/2 + 17/22 = −8/11 |

With λ(m_W) = (8π²/(b_0ℓ))(1 + O(ln ℓ/ℓ)), ℓ = ln(m_W/Λ) = |ln NΛL| + ln 2π, this is λ^{−8/11} ∝ |ln NΛL|^{8/11}(1 + o(1)).

### 2.3 Verdict on 9/11 versus 8/11 [P]
- The right power, given UY's own printed ζ, m_γ² and Λ, is 8/11. SOURCES_3D_GAP_LIT row U9's own check is CONFIRMED.
- UY contradict themselves. From m_γ² = (2π)²Lζ/g² one gets T = ζ/m_γ = g²m_γ/(4π²L) = (λ/(4π²NL))·m_γ ∝ Λ²(ΛNL)^{−1/6}|ln|^{p−1}, where p is the log power of m_γ. UY print p − 1 = −3/11, so their eq. Tdef has p = 8/11. Their eq. mgamma (p = 9/11) and the ratio m_W/m_γ (which repeats p) are the inconsistent entries. UY print no intermediate step, so I cannot point to the line. The value 9/11 needs λ^{−9/11} = λ^{−3/2 + 15/22}, that is λ^{15/22} from Λ in place of λ^{17/22} (as if b_1 = 5), or one extra factor λ^{−1/11}. No factor in UY's printed formulas produces either. I classify it as an arithmetic slip in eq. mgamma, copied into the ratio.
- The 1/11 does not come from the measure. The measure powers are fixed above (S² and m_W³). U9's suggestion "it may come from e^{−ΔS}" is half right: e^{−ΔS} is not O(1), but it gives no power of λ. It gives a larger factor (§2.4).
- R3S1_GAP §4.2(c) wrote |ln|^{3/2}. It used the one-loop identity e^{−4π²/λ} = (ΛL)^{11/6} and so dropped λ^{b_1/(2b_0)} = λ^{17/22}. At one-loop accuracy Λ is fixed only up to a power of the logarithm, so a log power from a one-loop conversion has no meaning. The 3/2 is an artifact of that.

### 2.4 The factor e^{−ΔS} is not O(1): a Yukawa self-energy of order 1/g [P-sketch, new]
UY state that ΔS, "the deformation term evaluated in the background of a fundamental monopole", is "an O(1) number, independent of the coupling g²". This is not right at fixed a_n and fixed N.
- Tail. Take SU(2), φ = θ_1 − θ_2, holonomy kinetic term (1/(2g²L))(∂φ)² (SOURCES_R3S1_NUMERICS §1.1), monopole weight e^{−S_BPS(φ)} with S_BPS = 4πφ/g² (R3S1_GAP §4.2). The monopole is a point source of strength j = ∂S_BPS/∂φ = 4π/g² for φ. The massless propagator is G_0(r) = g²L/(4πr). So the BPS tail is δφ(r) = −jG_0(r) = −L/r, independent of g.
- Divergence. On this unscreened tail the deformation (and the GPY term) gives ∫d³x L^{−3}·(1/2)k·(δφ)² ∝ ∫dr/L, which diverges linearly at large r. So "ΔS on the monopole background" is finite only after the holonomy mass m_φ screens the tail at r ∼ 1/m_φ = L/O(g).
- Value. Integrate φ at Gaussian level around the vacuum with the source at the monopole. Relative to the massless (BPS) value the weight changes by exp((1/2)j²[G_m(0) − G_0(0)]), with G_m(r) = g²L e^{−m_φr}/(4πr), so G_m(0) − G_0(0) = −g²Lm_φ/(4π). Hence
  ΔS = 2π m_φL/g² + O(1).
  SU(2) continuum: m_φL = g√(2a_1 − 1/3), so ΔS = 2π√(2a_1 − 1/3)/g + O(1). SU(3): the center Hessian is isotropic, the source is jα_i with |α_i|² = 2 and kinetic term (1/(g²L))|∂θ|²; the same computation gives ΔS = 2πm_φL/g² with m_φL = g√((3a_1 − 2/3)/2). SU(N): ΔS_i = (πL/g²)·α_i^T M α_i, M = (holonomy mass matrix)^{1/2} in orthonormal Cartan coordinates. Lattice: use m_φL/g = √(μ_c/2) from §1.
- Sign check. The deformed potential is ≥ its value at c (Task 1), so the deformed monopole action is ≥ S_BPS. A trial profile (BPS core, tail cut at R) costs 2πL/(g²R)·O(1) + O(k)·R/L; the best R ∼ L/g gives O(1/g). Both agree with a positive correction of order 1/g.
- Validity and gap in the argument. The m_φ-dependence comes from r ∼ 1/m_φ ≫ L, where |δφ| ∼ L·m_φ ∼ g ≪ 1, so the Gaussian treatment is valid there. The core region r ≲ L contributes O(1) to ΔS; I do not compute it. The same self-energy is the one R3S1_GAP (E5) assigns to the core weight. I have not checked whether later literature records this term.
- Consequence. m_γ = Ã′ Λ(ΛNL)^{5/6} |ln NΛL|^{8/11} · exp(−π m_φL/g²(m_W)) · (1 + o(1)). The exponent π m_φL/g² is ∝ 1/g ∝ |ln NΛL|^{1/2}. The factor exp(−c|ln|^{1/2}) decreases faster than any power of |ln|. So at fixed a_n the log power (8/11 or 9/11) is a sub-leading detail; UY's eq. mgamma misses a factor e^{−c√|ln NΛL|}. The power (ΛNL)^{5/6} is unchanged. The 1/g term vanishes only if m_φL = O(g²), which needs a_1 at the local threshold; Task 1 shows a_1 must exceed the higher global threshold, so this does not happen.

### 2.5 The correct m_σ in R3S1_GAP's normalization [P, with §2.4 as P-sketch]
R3S1_GAP §4.2(c): SU(2), action (1/(2g²))∫tr F², g = g(1/L), four species, m_σ² = 64π²Lζ/g², ζ = cL^{−3}S_0²e^{−S_0}. Add the factor e^{−ΔS} of §2.4 to ζ. Then
  m_σ = 32π³√c · L^{−1} g^{−3} e^{−2π²/g²} e^{−ΔS/2}.
Use UY's two-loop Λ at μ = 1/L, with λ = Ng² = 2g². Exactly, e^{−2π²/g²} = e^{−4π²/λ} = (ΛL)^{11/6} λ^{17/22}. So
  m_σ = 32π³√c · 2^{17/22} · Λ(ΛL)^{5/6} · (g²)^{−8/11} · e^{−π m_φL/g²} · e^{−O(1)}.
With g²(1/L) = (12π²/(11ℓ))(1 + O(ln ℓ/ℓ)), ℓ = |ln ΛL|, and SU(2) continuum m_φL = g√(2a_1 − 1/3):
  m_σ ≍ Λ (ΛL)^{5/6} ℓ^{8/11} exp(−√(11(2a_1 − 1/3)ℓ/12)).
On the N_4-site lattice replace √(2a_1 − 1/3) by m_φL/g = √(μ_c/2) of §1. The choice μ = 1/L instead of μ = m_W changes only the constant and gives O(g) corrections in the exponent. The R3S1_GAP line "m_σ ∼ Λ(ΛL)^{5/6}(log)^{3/2}" must be replaced by this formula. The confinement conclusion does not change: m_σ > 0 for every L with ΛL small.
