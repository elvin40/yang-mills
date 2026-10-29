# SOURCES_R3S1_GPY_MIN_IV — interval-arithmetic certificate for the thresholds a_1^* of SOURCES_R3S1_GPY_MIN

Written 2026-10-28 (Claude, Opus 5.5). New file. No existing file edited. PLAN.md not touched; sync.sh not run. Firewall kept as in SOURCES_R3S1_GPY_MIN.
Script: numerics/r3s1_gpy_cert_iv.py (new). It imports numerics/r3s1_gpy_cert.py unchanged. Run time 128 s on the Mac for both N_0 = 16 and N_0 = 8.
Environment. The project has no .venv. `pip install --user mpmath` is refused by the Homebrew python (PEP 668). I did not use --break-system-packages. I made a scratch venv that inherits numpy/scipy: `python3 -m venv --system-site-packages /tmp/claude-501/ivenv && /tmp/claude-501/ivenv/bin/pip install mpmath` (mpmath 1.4.1), and I deleted it at the end. To rerun: recreate it and run `/tmp/claude-501/ivenv/bin/python numerics/r3s1_gpy_cert_iv.py 16 8`.

## 1. What is checked in interval arithmetic [N-cert, now rigorous]
All checks use mpmath.iv with outward rounding at 64 bits. The float code only proposes the bisection value a_c, the radius r and the box cover. The proof logic is SOURCES_R3S1_GPY_MIN §1.2. Each inequality it needs is re-evaluated in IV:
- R⁺(m) for N_0 ≤ m ≤ m_2. This uses the same 4000-panel chord sum and the same 4000-step corner sum as the float run. The chords go through the lower ends of the enclosures of e_1 at the panel ends, so they stay below the concave e_1. The series ∫_0^h s^k e^{−cs}ds is truncated with a rigorous remainder (alternating, z < 1, asserted). m_2 is the first N with A(N + 1) < R⁺(N_0) − 1, where A is the analytic tail bound. Since A decreases, sup_{N≥N_0}δc_1 is attained at some N ≤ m_2. Example: R⁺(16) ∈ [1.0202461587105832, 1.0202461587105836]; the float value was 1.0202461588 (with 1e−10 slack).
- The analytic tail A(m) = 5(12/11)⁶/m² + (m³/8π)[4π(π³ − 1)/3·e^{−m e_1(1)} + ((2π)³ − 4π⁴/3)e^{−2m asinh 1}]. This is the same formula as before (SOURCES_R3S1_GPY_MIN §1.3), evaluated in IV, and valid for every m ≥ 1.
- ρ_0, ρ_2. One change from the float run: for n ≥ 2 (m ≥ 2N_0) the IV run uses ε(m) = max(A(m), 1 − R⁻(m)) for every m, not the per-m chord sums. The tail n > 400 is bounded analytically. A(m) ≈ 8.43/m² is looser than the chord value ≈ 5/m², so ρ_0, ρ_2 roughly double. Sup over N ≥ N_0 is at N_0 because A decreases for m ≥ 4.
- (F1) curvature on B_r(c), on 20000 panels, with |h‴| ≤ a + 1/π. The monotonicity radius (√2 r ≤ π/2 or π/6) is asserted in IV.
- (F2) gap on every accepted box of the float cover: lower bound > 0. Half-widths are inflated by 1 + 1e−12, so the float boxes overlap and cover the alcove minus B_r(c) without gaps. Each skipped box is re-checked in IV: either it lies in the ball (all corners have d² < r²) or it lies beyond the alcove edge x + y > 2π. B is evaluated mod 2π. On a seam straddle the script takes the hull of both polynomial branches, widened by 1e−30.
- Not re-checked in IV: (F4) (the annulus and ΔV_loc) and the curvature/gap table of SOURCES_R3S1_GPY_MIN §1.5. These still carry float slack.

## 2. Results [N-cert, IV]

| N_4 range | δc_1⁺ | ρ_0 | ρ_2 | SU(2): a_c, boxes, a_1^* (IV) | float-slack a_1^* | SU(3): a_c, boxes, a_1^* (IV) | float-slack a_1^* |
|---|---|---|---|---|---|---|---|
| N_4 ≥ 16 | 0.004103 | 1.16e−4 | 5.49e−4 | 0.20574, 129, **0.20984** | 0.20979 | 0.30587, 8598, **0.30997** | 0.30936 |
| N_4 ≥ 8 | 0.019105 | 5.59e−4 | 2.58e−3 | 0.20619, 128, **0.22529** | 0.22501 | 0.30986, 8646, **0.32896** | 0.32628 |

The IV run also gives curvature bounds at a_1^*. N_4 ≥ 16: μ_c ≥ 0.1541 (SU(2)), 0.2476 (SU(3)); μ_r ≥ 0.0782, 0.1244. N_4 ≥ 8: μ_c ≥ 0.1478, 0.2474; μ_r ≥ 0.0748, 0.1285.

Agreement with the float-slack values. Every IV threshold is at or slightly above the float-slack value. The differences are 5e−5 and 2.8e−4 (SU(2), N_4 ≥ 16 and ≥ 8) and 6.1e−4 and 2.7e−3 (SU(3)). Two causes explain them:
(a) The looser analytic ρ_0 for n ≥ 2. ρ_0 enters the SU(3) gap with weight N² = 9: for N_4 ≥ 8 this is 9 × (5.59 − 2.84)e−4 = 2.5e−3.
(b) For SU(3), the IV check passed only after a_c was raised by 2e−4. The bump grid was 0, 2e−5, 5e−5, 1e−4, 2e−4. At the smaller bumps the float cover was accepted with margins of order 1e−9, and some boxes failed in IV. I did not refine the bump grid.
No float-slack bound was contradicted. All IV values stay above the bisection thresholds a_glob(N_4) of SOURCES_R3S1_NUMERICS §1.3 (0.2089 / 0.3083 at N_4 = 16, 0.2199 / 0.3206 at N_4 = 8).

## 3. Status
- Theorem GPY-min (i)–(iii) of SOURCES_R3S1_GPY_MIN is now proved with rigorous interval arithmetic for a_1 ≥ 0.20984 (SU(2)) and a_1 ≥ 0.30997 (SU(3)) for all N_4 ≥ 16, and for a_1 ≥ 0.22529 and a_1 ≥ 0.32896 for all N_4 ≥ 8. (iv) also holds at threshold with ΔV_out > 0, but its size at larger a_1 is not re-certified here. All parts are monotone in a_1.
- Still float-slack only: (F4)/ΔV_loc and the §1.5 curvature/gap table of SOURCES_R3S1_GPY_MIN. The same IV routine can be applied to them in about the same time (the box counts are similar, about 10⁴).
- To recover the tighter float-slack values in IV, replace A(m) by IV chord sums for every m ≤ 256 used in ρ_0, ρ_2. Cost: about 2.5 s per m, so about 10 min for m ∈ [16, 256]. I did not run it.
