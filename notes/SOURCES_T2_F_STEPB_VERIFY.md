# SOURCES_T2_F_STEPB_VERIFY — independent check of SOURCES_T2_F_STEPB

Date 2026-10-28. Verifier. Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP §2).
Priority (a): the §3.3 tension claim. Then (b): the Step B reduction (Lemmas 1–3, Step C, (L-LL)).

## 1. Read SOURCES_T2_F_STEPB.md and t2_fstepb_logcoef.py
- §3.3 data source: results/umk_L*_trans.json, odd L, colors in (None,[0,1,2]), largest Ng per (L, Lp). Extrapolation β(0) ≈ (4β(0.5) − β(1))/3 assumes β linear in (Lp)².
- Claimed: β_1(0) = 0.7426/0.7968/0.8267/0.8436 at L = 5/7/9/11; local slopes 0.161/0.119/0.084.

## 2. Task (i): which quantity is compared to c log L [V]
- BETA_FP_H Theorem 3.1: 𝒞(Λ) = c log Λ + C_∞ + O(ε_j) along the composed family Λ = L^j, L odd fixed, j → ∞. Telescoping: β_∞ = lim_j[𝒞(L^{j+1}) − 𝒞(L^j)] = c log L. So the object is the large-k difference β_{k+1} at fixed L.
- BETA_FP: "β_∞ = 0.3715 log L" was never computed. 0.371511 = 11N²/(12π²) is the theoretical c (BETA_FP §conventions; STEPB §3.1 says the same, correct). β_∞ = c log L is Theorem 4.1 modulo Lemma 4.3 (reduced, not proved). The only fixed-family numbers are L = 2 (even, outside the proved range): β_1 = 0.630, β_2 ≈ 0.32 ± 0.03, β_3 ≈ 0.29 (N = 12, unconverged); c log 2 = 0.2575.
- NUMERICS §7: compares the single-step β_1(L) (one step from the unit lattice, block L, a different constraint family for each L) with c log L. This is neither the fixed-point β_∞(L) nor the fixed-L k-step difference.
- Data in JSON (results/umk_*): §7 values match the files (L = 9: 0.8327 (Lp 0.5), 0.8457 (Lp 0.9), 0.8506 (Lp 1.0); L = 11: 0.8496, 0.8678). Box run times: L = 9 450 s, L = 11 1280 s at Ng = 8.

## 3. Task (iii) part 1: reproduction on the Mac [N]
Script numerics/t2_fstepb_verify_umk.py (wraps umk_beta1.run; own output names results/t2_fstepb_verify_umk_*.json; resumable, each process under `timeout 280`).
| L | Ng | Lp | β_1 | ghost part | bordered part | box value |
|---|---|---|---|---|---|---|
| 5 | 8 | 0.5 | 0.75318 | 0.0598 | 0.6934 | 0.75318 |
| 5 | 12 | 0.5 | 0.74898 | 0.0698 | 0.6792 | 0.74898 |
| 5 | 12 | 1.0 | 0.76817 | 0.0672 | 0.7010 | 0.76817 |
| 7 | 8 | 0.5 | 0.80268 | 0.0694 | 0.7333 | 0.80268 |
| 7 | 8 | 1.0 | 0.82036 | 0.0813 | 0.7390 | 0.82036 |
All box numbers reproduce to all digits. Note: at L = 5 the ghost part moves +17% from Ng = 8 to 12 and the bordered part −2%; they cancel to −0.6% in β_1. The pieces separately are not grid-converged at Ng = 8.
Mac speed: L = 5 Ng = 8 14 s; L = 7 Ng = 8 41 s; L = 5 Ng = 12 44 s.

## 4. Task (ii): does one step from the unit lattice carry the full slope? [P, power count]
- Write β_1(L) = ∫_{BZ} d⁴q I_L(q) (fine units). For 1/L ≪ |q| ≪ 1 the block constraint is inactive and the lattice is continuum-like: I_L(q) = c/(2π²|q|⁴)(1 + O(q²) + O((L|q|)^{−2})). UV region gives a constant. IR region |q| ≲ 1/L: I_L(q) = L⁴J(Lq)(1 + O(q²)), J the scaling-limit constrained integrand (exists if Balaban's path-family average has a continuum limit; axis-ordered monotone paths do). Hence β_1(L) = c log L + C + O(L^{−2} log L), or O(1/L) if the averaging limit is only first order.
- So the single step DOES carry the full slope c asymptotically. The number of e-folds between the constraint scale 1/L and the lattice scale is log L. A single step is not a "reduced slope" object. The author's (STEPB §3.3) expected form c log L + C + O(L^{−2}·logs) is right.
- Consequence: local slope = c − O(L^{−2}). The data have local slope 0.161 → 0.119 → 0.084, falling with L. No form c log L + C + d/L² or + d/L fits: d/L² needs d ≈ 14 to give slope 0.08 at L = 10, which forces slope −0.43 at L = 6 (data 0.16). The decrements of β_1 − c log L are −0.071, −0.064, −0.057 per ΔL = 2, i.e. close to linear in L. A term linear in L has no place in the expansion. This points to a numerical artifact that grows with L.
- Candidate artifact [P, derived here]. The residual gauge is λ = 0 at one anchor per block. The anchor-constrained ghost propagator at coarse momentum K (coarse units), from the Schur complement of the umklapp sum (1/L⁴)Σ_l 1/|k̂_l|² ≈ G_0 + 1/(L²|K|²), G_0 = 0.1549 (4D lattice Green function at 0), is G_0L⁴/(1 + G_0L²|K|²). Its IR mass in coarse units is M = 1/(√G_0·L) = 2.54/L: 0.51 (L=5), 0.36 (7), 0.28 (9), 0.23 (11). The shifted Ng = 8 grid has spacing 2π/8 = 0.785 and no point with |K| < 0.785. The longitudinal sector of the bordered operator has the same scale. So the ghost and longitudinal pieces have structure below the grid resolution, increasingly with L. Physical total: IR-safe at scale O(1) by gauge invariance (in a complete axial gauge there is no ghost factor), so only the cancellation inside the quadrature is at risk.

## 5. Part (b): the Step B reduction
5.1 Lemma 1 / (MPT). Cited as "Nenciu; Cornean–Nenciu type", not checked. The s^{−3} count is right: dimension check [tr_cell R] = mass², φ⁴ costs mass^{−8} ⇒ s^{−3}. Correct. But a plain Combes–Thomas bound (‖e^{a|x|}Re^{−a|x|}‖ ≤ 2/s, a ~ √s) is NOT enough: with 5 resolvents at 2/s, 4 sums at s^{−2}, 4 area factors at s^{−1} it gives roughly s^{−17}. The bound needs symbol-class estimates (magnetic Weyl calculus, Iftimie–Măntoiu–Purice type; discrete versions by Măntoiu et al.), i.e. the sharp short-distance kernel |x−y|^{−2}e^{−c√s|x−y|}. For the scalar ghost, the diamagnetic inequality plus the free kernel gives it. For the vector operator the lattice Feynman operator is not "scalar magnetic Laplacian ⊗ 1 + bounded spin", so diamagnetic does not apply directly. Grade: plausible and standard-type, citation wrong in kind; [I-cite] stands. Remainder use in §2.6 (R/φ² = O(μ^{−2})) correct.
5.2 Lemma 2 shell sum [checked]. Degree −2 correction: |J − J^c| ≤ C|K|²(|K|² + m²)^{−2}; per dyadic shell |K| ∈ [a, 2a] it contributes O(a²), geometric, no log; the m-dependence is ∫ r dr min(1, m²/r²)… = O(m² ln(1/m)). Degree −4 gives ln 2 per shell ⇒ ½ ln(1/m²)∫I_{−4}. Normalization ½(2π)^{−4}∫_{S³}I_{−4} correct. Needed regularity j(Ω, u) − j(Ω, 0) = O(u) holds since J^c(K;m²) − J^c(K;0) = −∫_0^{m²}ρ_2^c ~ m²|K|^{−6}. Relative O(|K|²) of the lattice symbols with the mass: a_0^{lat} + s = (|K|² + s)(1 + O(|K|⁴/(|K|² + s))), fine. CONFIRMED given Step C.
5.3 Step C. Ghost: Peierls substitution is W·a_0 with a_0 the free kernel, so a_1 = a_2 = 0 by definition; continuum −D² also has Weyl symbol K². Ghost [P] CONFIRMED (trivial). Gauge-fixing D_φD_φ^T on bond fields: products of covariant differences produce Moyal φ-terms; lattice = continuum × (1 + O(K²)) is the Lemma 3.4 argument applied to a second finite-range kernel. Missing: the explicit symbol computation of a_1, a_2 for D_φD_φ^T on bonds (half-integer positions) and the check that its O(K²) corrections are even. Not done; [I] stays. Expect it to be routine.
5.4 (L-LL). Scaling: low-energy window E ≤ μ|φ|; Landau degeneracy |φ|/2π per unit 2-area × free k_⊥ with k_⊥² = |φ|ε (d²k_⊥ = π|φ|dε) ⇒ per-cell measure ∝ φ²dε. So H_φ(μ) = O(1) is the right order and a limit is plausible. N–O zero: n = 0 spin-down level e = −1 + k_⊥²/|φ| crosses 0 linearly in k_⊥² ⇒ flat density in e ⇒ log|e| integrable; lattice needs ∂_{k_⊥²}E_0 ≥ c > 0 (lattice transverse |k̂_⊥|² = k_⊥²(1 + O(φ)) at k_⊥ ~ φ^{1/2}, so holds). Its contribution to H is O(1) (φ² per cell), not log-enhanced. What would prove (L-LL): semiclassical Harper analysis (Helffer–Sjöstrand: low Hofstadter bands at flux φ are Landau levels (2n+1)|φ| + O(φ²), width e^{−c/φ}) for (a); for the vector, the same for the 4×4 matrix Harper operator with spin term. Ghost numerics (STEPB §3.2, rate O(φ)) consistent. Grade: (L-LL) correctly isolated as the open piece; statement plausible; not proved.
5.5 Assembly §2.6 [checked]. With μ → ∞ after φ → 0, limsup ≤ Cμ^{−2}. Correct. The neutral sector (2.0) analytic: correct (bounded degree-0 symbol).

## 6. Task (iii) part 2: grid convergence [N]
| L | Lp | Ng = 8 | Ng = 12 | Ng = 16 | ghost part (8/12/16) |
|---|---|---|---|---|---|
| 5 | 0.5 | 0.75318 | 0.74898 | 0.74874 | 0.0598 / 0.0698 / 0.0707 |
| 7 | 0.5 | 0.80268 | 0.79674 | (running) | 0.0694 / 0.0885 |
- Grid error of β_1 at Ng = 8: −0.0044 (L = 5), ≈ −0.006 (L = 7); convergence fast after Ng = 12 (L = 5: 12 → 16 shift −0.0002).
- The Ng = 8 error has the sign that LOWERS β_1 further at larger L. So the grid does not explain the slope deficit; it slightly enlarges it (L = 5 → 7 slope at Ng = 12: (0.79674 − 0.74898)/0.336 = 0.142 vs 0.149 at Ng = 8, both at Lp = 0.5).
- The ghost part moves by +0.019 at L = 7 (8 → 12), consistent with the 2.54/L ghost scale in §4; the bordered part compensates.
Next: L = 9 Ng = 12; small-Lp runs (Lp = 0.25, 0.125) to test the quadratic Lp → 0 extrapolation, since the ghost/longitudinal scale 2.54/L falls below Lp = 0.5 for L > 5.
