# SOURCES_BCL_TEST — does the region |K| ~ 1/L move B_c(L)?

Date 2026-10-28. Ids follow IDS.md. Tags: [P] proved here, [P-sketch] proof outline with a named gap, [N] numerics, [I] interpretation or unproved claim, [V] read verbatim in a project file.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not opened.
Read: OPUS_QUEUE.md lines 1–15; SOURCES_BETA1_F_TENSION.md (all); numerics/umk_beta1.py (all); U3_GAUSSIAN_RG.md (statements of Theorem 4.1 and Lemma 5.1, by grep); ~/git/yang_mills/README.md line 47; numerics/BETA1_BOX_RUN.md (timing lines).
The §11 scripts of SOURCES_BETA1_F_TENSION were deleted after use. I rebuilt the split from its description. The rebuilt code reproduces every §11 entry (constraint, fine, ghost at K_1, K_2, K_3, L = 3 … 13) to the 4 printed digits [N].
New scripts (no existing file changed): numerics/bcl_split.py, bcl_sym.py, bcl_bulk.py, bcl_table.py, bcl_symtable.py, bcl_window.py, bcl_bulkfit.py, bcl_fitK.py, bcl_bzmap.py. Data: numerics/results/bcl_L*_Lp0.5.json, bclsym_L*_Lp0.5.json, bclbulk_L*_Lp0.5.json, bclmap_L5_Ng8_Lp0.5.npz.
Compute: Mac only, about 15 min in total. The Windows box was not used.

## 0. Verdict

(a) The region |K| ~ 1/L settles [N, with a P-sketch for the scaling]. At K = κn/L the code's β-integrand has two parts. The part with the first propagator leg soft grows like L². The part with the second leg soft grows like L^3.15. Both exponents are below 4. So the ball |K| ≤ R/L contributes O(L^{−2}) and O(L^{−0.85}) to β_1, and the contribution goes to zero. At L = 13 the ball R = 2.5 gives +0.0006 and −0.0028. Its change from L = 11 to 13 is +0.0002. The change of B_c over the same step is 0.055. So this region carries less than 1 % of the B_c increment.

(b) The wider window around the two soft points (|K| ≤ 0.35 and |K + p| ≤ 0.35, coarse units) changes by −0.001 to −0.002 per step at L = 7 … 13. That is about 3 % of the B_c increment [N, crude angular quadrature].

(c) Therefore at least 96 % of the B_c increment comes from |K| > 0.35 and |K + p| > 0.35, the bulk of the coarse Brillouin zone [N, by subtraction from (a), (b); no fit model enters]. This corrects SOURCES_BETA1_F_TENSION §11, which inferred "the measured deficit must come from |K| ≲ O(1/L)". Fits at 16 fixed coarse momenta favour a log L term in every per-K piece (§3.3). Under the fit a + s log L + b/L² + d/L⁴, the total coefficient s(K) is about +0.3 at |K| ≈ 1.2–1.5 and +0.23 to −0.52 at |K| ≥ 2.6, and the negative values come from the constraint part. The size of s(K), and its sign at some K, depend on the fit model [N, weak: 1 degree of freedom].

(d) Convergence of B_c(L) as a whole: undecided at L ≤ 13. The local log coefficient dB_c/d log L is 0.230, 0.257, 0.291, 0.330 for L = 5→7, 7→9, 9→11, 11→13 (§3.5). It rises and shows no saturation. If B_c diverges like s_B log L, then s_B ≥ 0.33 at L ≈ 12. A value s_B = c = 0.3715 would make β_1(L) bounded. The data cannot separate a slow transient, a log divergence, or a stronger growth.

(e) Analytic [P relative to U3 Theorem 4.1]. At f = 0 the scaled tree kernel has the limit L²Δ_1^{(L)}(κn/L) → κ²H_∞(n), with error O(κ/L) (Prop. 4.1). The limit function is a pure quadratic. It has no structure at κ ~ 1, so the one-step kernel has no feature at the scale 1/L. The anchored-ghost scale 2.54/L lives only in the code's gauge-fixed representation (fine Feynman gauge plus anchored ghost), not in Δ_1. Under a single-step soft-vertex bound (H_s), the shell |K| ~ 1/L contributes O(L^{−4}) to B_c(L) − B_c(∞), and B_c(L) = B_c(∞) + O(L^{−2}) at fixed probe momentum [P-sketch, gap = (H_s); Prop. 4.3]. The data of (d) are not compatible with (H_s) with moderate constants at L ≤ 13. So the open input is the bulk behaviour of the single-step soft vertices, not the region |K| ~ 1/L.

## 1. What is measured

Identity used [V, SOURCES_BETA1_F_TENSION Prop. 3.1]: β_1(L) − β_1(L′) = c log(L/L′) − [B_c(L) − B_c(L′)], c = 0.3715.
Per-K integrand [V, umk_beta1.Umk.terms; definition here]. For coarse momentum K (coarse units, K_fine = K/L), the code returns ghost(K) and bord(K), and w_K = ghost − ½ bord. I write i_L(K) := 4w_K/(L⁴(1 − cos(Lp/L))). Then β_1(L; Lp) = ⟨i_L⟩, the average over the coarse Brillouin zone [0, 2π)⁴. The pieces are ghost, −½ fine, and −½ constraint, with fine and constraint as in F_TENSION §11(b). All values in this file are in these β-integrand units, at Lp = 0.5.
The two soft points [P, from the code structure]. The a² term couples the fibre K to the fibre K + p, p = Lp e_0 (coarse). The code assigns the pair term to K. The first leg is soft when K → 0. The second leg is soft when K → −p. So the small-momentum structure appears at two places of the code's integrand: "raw" i_L(κn/L) and "partner" i_L(−p + κn/L). A change of assignment moves terms between the two. Only their joint contribution is meaningful.
Points. κ = 0.5, 1, 1.5, 2, 2.5, 3.5, 5, 7, 10, 14, 20 (the task's κ = 1, 2.5, 5, 10 included). Directions n = e_0, e_1, e_2 (≡ e_3 by the 2↔3 symmetry), (e_0+e_1)/√2, (e_0+e_2)/√2, (1,1,1,1)/2. L = 5, 7, 9, 11, 13. The point K − p = 0 (e_0, κ/L = Lp) is a zero mode and is skipped.
Ball and window integrals. W(R) = (2π²/(2π)⁴)∫_0^R K³⟨i_L⟩_n dK, with ⟨·⟩_n the equal-weight mean over the 7 directions (e_2 counted twice) and the trapezoid rule on the nodes K = κ/L. This is a crude angular quadrature (no ±e_0 pairing). I quote it only as an order-of-magnitude bound.
Order of limits [V, F_TENSION §4.3]. β_1(Lp = 1) − β_1(Lp = 0.5) = 0.0185–0.0195 for L = 5 … 13. So L-differences at Lp = 0.5 equal L-differences at Lp → 0 to within 0.001. Lp = 0.5 is enough for this test.
Control [N]. bcl_bzmap.py at L = 5, Ng = 8 gives β = 0.7531799912653525. The stored box result (results/t2_fstepb_verify_umk_L5_Ng8_Lp0.5.json) is 0.7531799912653528.

## 2. Data [N]

### 2.1 The task's points: K = (κ/L)e_2, Lp = 0.5, β-integrand units

| κ | quantity | L = 5 | 7 | 9 | 11 | 13 |
|---|---|---|---|---|---|---|
| 1 | ghost | 205.6 | 410.5 | 684.9 | 1028 | 1440 |
| 1 | −½ fine | −1067 | −1931 | −3082 | −4522 | −6250 |
| 1 | −½ constraint | 889.8 | 1572 | 2465 | 3539 | 4760 |
| 1 | raw total i_L(K) | 28.26 | 51.89 | 67.22 | 45.58 | −49.45 |
| 1 | raw / L² | 1.130 | 1.059 | 0.830 | 0.377 | −0.293 |
| 1 | partner i_L(K − p) | −42.77 | −144.7 | −322.0 | −599.5 | −1010 |
| 1 | partner / L³ | −0.342 | −0.422 | −0.442 | −0.450 | −0.460 |
| 2.5 | ghost | 121.1 | 241.0 | 401.8 | 603.2 | 844.9 |
| 2.5 | −½ fine | −273.1 | −432.7 | −625.9 | −860.0 | −1138 |
| 2.5 | −½ constraint | 172.6 | 228.0 | 281.1 | 331.4 | 369.8 |
| 2.5 | raw total | 20.61 | 36.28 | 56.98 | 74.58 | 76.64 |
| 2.5 | raw / L² | 0.824 | 0.740 | 0.704 | 0.616 | 0.454 |
| 2.5 | partner | −11.97 | −60.35 | −145.1 | −273.7 | −456.9 |
| 2.5 | partner / L³ | −0.096 | −0.176 | −0.199 | −0.206 | −0.208 |
| 5 | ghost | 48.15 | 95.84 | 160.6 | 241.8 | 339.3 |
| 5 | −½ fine | −95.70 | −162.2 | −233.4 | −308.3 | −388.6 |
| 5 | −½ constraint | 62.29 | 86.30 | 100.8 | 106.0 | 102.9 |
| 5 | raw total | 14.75 | 19.96 | 27.93 | 39.46 | 53.62 |
| 5 | raw / L² | 0.590 | 0.407 | 0.345 | 0.326 | 0.317 |
| 5 | partner | 7.51 | −3.70 | −26.65 | −62.73 | −113.5 |
| 5 | partner / L³ | 0.060 | −0.011 | −0.037 | −0.047 | −0.052 |
| 10 | ghost | 13.80 | 26.50 | 45.12 | 68.87 | 97.57 |
| 10 | −½ fine | −26.15 | −48.08 | −76.93 | −109.3 | −143.4 |
| 10 | −½ constraint | 23.76 | 35.98 | 48.02 | 58.69 | 67.05 |
| 10 | raw total | 11.40 | 14.40 | 16.21 | 18.31 | 21.21 |
| 10 | raw / L² | 0.456 | 0.294 | 0.200 | 0.151 | 0.126 |
| 10 | partner | 10.63 | 11.63 | 9.34 | 4.24 | −3.90 |

Reading.
- Each piece is of order L² at fixed κ (ghost/L² → 9.47 as κ → 0; this is the anchored-ghost Schur factor of §4.3). The pieces cancel to one or two digits in the raw total.
- Raw total: raw/L² converges at κ = 5 (0.345, 0.326, 0.317) and κ = 10 is still in the crossover to the fixed-K regime (K = 10/L is above Lp for L ≤ 19). At κ ≤ 2.5 the raw total turns over for L ≥ 11 (κ = 1: 67 → 46 → −49). So raw has a second, inner scale below 1/L. Its K³-weighted contribution is the raw ball of §2.3, below 10⁻³ in β at L ≥ 9.
- Partner: partner/L³ converges at κ = 1, 2.5, 5 (changes 11 → 13: 2 %, 1 %, 10 %). Its scaled profile falls like κ^{−2} between κ = 2.5 and 5.

### 2.2 Growth exponents, all directions (local exponent d log|i| / d log L, step 11 → 13)

| direction | partner κ = 0.5 | partner κ = 1 | partner κ = 2 | raw κ = 5 |
|---|---|---|---|---|
| e_0 | 3.16 | 3.16 | 3.21 | 1.97 |
| e_1 | 3.18 | 3.22 | 3.43 | 1.97 |
| e_2 | 3.15 | 3.12 | 3.07 | 1.84 |
| (1,1,1,1)/2 | 3.17 | 3.17 | 3.24 | 1.91 |

The partner exponent is 3.15 ± 0.05 at κ ≤ 1 for L = 9 → 11 → 13, in every direction. partner/L³ at κ = 0.5, L = 13: −0.58 (e_0), −0.53 (e_1), −0.54 (e_2), −0.56 (diagonal), so it is nearly isotropic. The raw exponent at κ = 5 tends to 2.

### 2.3 Ball and window integrals (contributions to β_1, Lp = 0.5)

| L | ball R = 2.5/L, raw | ball, partner | window K ≤ 0.35, raw | window, partner | window sum |
|---|---|---|---|---|---|
| 5 | 0.0071 | −0.0008 | 0.0019 | −0.0012 | 0.0008 |
| 7 | 0.0035 | −0.0036 | 0.0032 | −0.0035 | −0.0002 |
| 9 | 0.0020 | −0.0036 | 0.0045 | −0.0060 | −0.0015 |
| 11 | 0.0012 | −0.0032 | 0.0055 | −0.0088 | −0.0033 |
| 13 | 0.0006 | −0.0028 | 0.0062 | −0.0115 | −0.0053 |

Reading. The raw ball falls like L^{−2} (0.0071·(5/13)² = 0.0011 against 0.0006; the inner turnover makes it fall faster). The partner ball falls like L^{−1} from L = 7 on (0.0036·7/13 = 0.0019 against 0.0028; the exponent 3.15 predicts L^{−0.85}, which gives 0.0021). The raw and partner windows each grow roughly linearly in L, with opposite signs, and nearly cancel. The net window change per step is −0.001 to −0.002.

## 3. Where the B_c increment sits

### 3.1 The B_c increments [N, from the β_1 data; V for the inputs]

β_1(0) (Lp → 0, converged grids): 0.74288, 0.79045, 0.81919, 0.83537 (L = 5, 7, 9, 11; F_TENSION §4.3) and 0.8423 ± 0.0014 (L = 13; README line 47). By Prop. 3.1 of F_TENSION, ΔB_c = c Δlog L − Δβ_1.

| step | c Δlog L | Δβ_1 | ΔB_c | ΔB_c / Δlog L |
|---|---|---|---|---|
| 5 → 7 | 0.1250 | 0.0476 | 0.0774 | 0.230 |
| 7 → 9 | 0.0934 | 0.0287 | 0.0646 | 0.257 |
| 9 → 11 | 0.0746 | 0.0162 | 0.0584 | 0.291 |
| 11 → 13 | 0.0621 | 0.0069 ± 0.0014 | 0.0551 | 0.330 ± 0.008 |

### 3.2 Small-K regions against ΔB_c

| step | ΔB_c | Δ(ball, R = 2.5) | Δ(window, K ≤ 0.35) |
|---|---|---|---|
| 7 → 9 | 0.065 | +0.0007 | −0.0013 |
| 9 → 11 | 0.058 | +0.0004 | −0.0018 |
| 11 → 13 | 0.055 | +0.0002 | −0.0020 |

A change Δ of a region's contribution to β_1 moves B_c by −Δ (the fine part's share of such a region is O(L^{−4}) because the fine c log L is spread uniformly over K, §4.3). So the ball moves B_c by −0.0002 to −0.0007 per step (opposite sign to the increment, below 1 %). The window moves it by +0.0013 to +0.0020 (2–3 %). The remaining 96 % or more of ΔB_c comes from |K| > 0.35 and |K + p| > 0.35.

### 3.3 Fixed generic K: the per-K integrand carries log L terms [N]

Fit on L = 5 … 13 (5 points): i_L(K) = a + s log L + b/L² + d/L⁴ (4 parameters, 1 degree of freedom), compared with the same fit without log L. Script numerics/bcl_bulkfit.py (and bcl_fitK.py for K_1, K_2, K_3).

| K (coarse) | |K| | i_L(K), L = 5 … 13 | s, total | rms: log / no log | s, −½ fine | s, ghost | s, −½ constraint |
|---|---|---|---|---|---|---|---|
| (1,1,1,1)·0.375 | 0.75 | 25.87, 31.26, 34.07, 35.69, 36.70 | +1.16 | 3e−3 / 3e−2 | +0.40 | +0.99 | −0.24 |
| K_1 = (0,0,1.2,0) | 1.2 | 13.86, 15.23, 15.75, 16.03, 16.20 | +0.33 | 5e−5 / 7e−3 | +0.41 | +0.04 | −0.12 |
| K_2 = (0,0.6,1.2,0) | 1.34 | 13.90, 15.13, 15.61, 15.87, 16.02 | +0.31 | 4e−5 / 7e−3 | +0.40 | +0.00 | −0.09 |
| (0,0,1.5,0) | 1.5 | 12.90, 14.18, 14.65, 14.90, 15.05 | +0.29 | 6e−5 / 6e−3 | +0.41 | +0.00 | −0.12 |
| (1.5,0,0,0) | 1.5 | 18.15, 19.93, 20.64, 21.01, 21.23 | +0.34 | 7e−5 / 7e−3 | +0.41 | +0.01 | −0.07 |
| (1,1,1,1)·0.75 | 1.5 | 16.15, 17.54, 18.10, 18.40, 18.58 | +0.29 | 4e−5 / 6e−3 | +0.39 | +0.01 | −0.11 |
| K_3 = (1.5,0,0.8,2.0) | 2.62 | 11.08, 12.42, 12.91, 13.16, 13.30 | +0.08 | 3e−4 / 2e−3 | +0.40 | +0.00 | −0.33 |
| (1,1,1,1)·1.5 | 3.0 | 8.58, 9.30, 9.63, 9.81, 9.92 | +0.05 | 3e−4 / 1e−3 | +0.34 | +0.03 | −0.33 |
| (π,0,0,0) | 3.14 | 7.30, 8.58, 9.07, 9.32, 9.47 | +0.23 | 2e−4 / 5e−3 | +0.41 | +0.00 | −0.18 |
| (0,π,0,0) | 3.14 | −38.45, −41.62, −42.88, −43.50, −43.85 | +0.09 | 1e−4 / 2e−3 | +0.27 | +0.07 | −0.24 |
| (0,0,π,0) | 3.14 | 8.46, 9.69, 10.13, 10.34, 10.46 | −0.05 | 3e−4 / 1e−3 | +0.41 | +0.00 | −0.45 |
| (π,0,π,0) | 4.44 | 7.13, 8.34, 8.78, 9.00, 9.11 | −0.10 | 5e−4 / 2e−3 | +0.40 | +0.00 | −0.51 |
| (0,π,π,0) | 4.44 | −22.48, −25.06, −26.13, −26.68, −27.01 | −0.25 | 2e−4 / 5e−3 | +0.27 | +0.07 | −0.58 |
| (1,1,1,1)·2.25 | 4.5 | −2.93, −3.48, −3.66, −3.75, −3.80 | −0.09 | 3e−4 / 2e−3 | +0.30 | +0.05 | −0.45 |
| (π,0,π,π) | 5.44 | 6.47, 7.55, 7.91, 8.06, 8.12 | −0.52 | 9e−4 / 1e−2 | +0.40 | +0.01 | −0.92 |
| (π,π,π,π) | 6.28 | −15.90, −17.97, −18.84, −19.28, −19.53 | +0.07 | 5e−4 / 2e−3 | +0.28 | +0.06 | −0.27 |

Reading.
- The −½ fine piece carries s ≈ +0.40 at most K (0.27–0.30 where the K has a component along the probe polarization e_1, or at the corner). The fit with log L is better than the fit without by a factor 100–1000 in rms at every K. This is the expected fine-lattice log: it comes from the umklapp momenta 1 ≪ |l| ≪ L and so appears at every coarse K [I for the attribution; the expected gauge-loop share (10/11)c = 0.338 is near but not equal to 0.40].
- The ghost carries no log at generic K (|s| ≤ 0.07); the point |K| = 0.75 lies in the window of §2.3.
- The −½ constraint piece carries a negative log, s = −0.07 to −0.92, more negative at larger |K|.
- The total s(K) changes sign: about +0.3 at |K| ≈ 1.2–1.5, and between +0.23 and −0.52 at |K| ≥ 2.6. The BZ average of s(K) must equal the slope of β_1 (0.04–0.08 at these L). The points are consistent with this, but 16 points do not give a BZ average.
Caveat [N]. The fits have one degree of freedom. With L = 3 added and an L^{−6} term, the fine s moves to 0.54–0.58. With b log L/L² in place of d/L⁴, the s values change by up to 0.7. So the size of s(K) is model-dependent. Only the fine sign is the same in every model I tried (s > 0). The constraint s at K_1 becomes +0.32 in the log L/L² model, and the total s at K_3 becomes +0.33. So the sign pattern of the table is not established.
Correction to F_TENSION §11 [N]. §11 read the constraint part at K_1 as "A + 10/L²". The same data fit a + s log L + b/L² + d/L⁴ with rms 1e−4 against 2.5e−3 without the log. So the statement "no per-step term grows with L at generic momenta" is not supported. The per-K pieces at generic K appear to contain log L terms. The fine piece has one with s ≈ 0.3–0.6 in every model. The terms mostly cancel in the BZ average.

## 4. Analytic statements

### 4.1 Scaling limit of the one-step tree kernel at f = 0

Inputs [V]. U3_GAUSSIAN_RG Theorem 4.1: at the trivial background the level-j kernel is the single block-M Schur complement Δ_M, M = L^j, and sup_K |∂_K^α(Δ_M − Δ_∞)| ≤ C_m M^{−2} for |α| = m ≤ 2 ("L enters only through M"; open item O3 notes a log M loss at m = 2). A single step with block L is the case M = L (F_TENSION §5.1). Δ_∞ is analytic in a strip (U3 Lemma 3.1(iii)).

Proposition 4.1 [P relative to U3 Theorem 4.1]. For every unit vector n and κ > 0,

  |L²Δ_1^{(L)}(κn/L) − κ²H_∞(n)| ≤ min(C_1κ/L, ½C_2κ²L^{−2}log L) + C_3κ³/L,   H_∞(n) := ½ Σ_{μν} n_μn_ν ∂_μ∂_νΔ_∞(0).

So the scaled kernel has the limit F(κn) = κ²H_∞(n), uniformly for κ in compact sets.
Proof. (i) Δ_L(0) = 0 and Δ_∞(0) = 0: a constant abelian coarse field has a constant fine minimiser with zero Wilson action, in every component. (ii) Δ_L(K) is positive semidefinite for every K, because it is the minimum of a positive semidefinite quadratic form under a linear constraint (a Schur complement). Δ_∞ is a limit of such kernels, so it is positive semidefinite too. (iii) For a vector v, φ(K) = v^†Δ(K)v is smooth, nonnegative, and zero at K = 0. So ∇φ(0) = 0. By polarization in v, ∇Δ(0) = 0, for Δ = Δ_L and Δ = Δ_∞. (iv) Taylor at 0 with (i), (iii): |Δ_L(K) − Δ_∞(K)| ≤ C_1L^{−2}|K| (m = 1) and ≤ ½C_2L^{−2}log L·|K|² (m = 2, with the O3 loss). (v) Δ_∞(K) = K-quadratic form H_∞ + O(|K|³) by analyticity. Put K = κn/L and multiply by L². ∎
Corollary 4.2 [P]. At f = 0 the one-step kernel has no feature at the scale 1/L. The limit function is a pure quadratic: F ∝ κ² at small κ and at large κ, and it matches Δ_∞(K) ≈ K²H_∞ in the overlap 1/L ≪ |K| ≪ 1. In the language of the task: F(κ) exists and the shell integrals of F at the two scales 1/L and 1/L′ are the same function of the scaling variable. So the f = 0 kernel gives no contribution to B_c(L) − B_c(L′) from the shell |K| ~ 1/L beyond the O(L^{−2}) correction of Prop. 4.1.
Remark. The anchored-ghost mass 2.54/L of F_TENSION §4.2 does not appear in Δ_1^{(L)}. It belongs to the code's gauge-fixed representation (fine Feynman gauge with a ghost that vanishes at the anchors), §4.3.

### 4.2 The shell contribution to B_c(L), given a soft-vertex bound

Setting. At a fixed coarse probe momentum P (the code's Lp), the coarse bracket of F_TENSION Prop. 3.1 has the a²-coefficient ∫ d⁴K/(2π)⁴ j_L(K; P). Here j_L is built from Δ_L(K), Δ_L(K + P), the first and second background variations V_L^{(1)}(K, K + P), V_L^{(2)}(K; P) of the one-step kernel, and the L-independent coarse gauge fixing D_cD_c^T and coarse ghost.
Hypothesis (H_s) [open; single-step analogue of U3 Lemma 5.1]: sup_K |∂^α(V_L^{(m)} − V_∞^{(m)})| ≤ C L^{−2} for |α| ≤ 2, m = 1, 2.

Proposition 4.3 [P-sketch]. Assume (H_s). Then
(i) |j_L(K; P) − j_∞(K; P)| ≤ C(P)L^{−2}(|K|^{−2} + |K + P|^{−2});
(ii) the ball |K| ≤ R/L contributes O(R²L^{−4}) to B_c(L) − B_c(∞);
(iii) |B_c(L; P) − B_c(∞; P)| ≤ C(P)L^{−2}.
Sketch. On the physical subspace (coarse Feynman gauge fixing added), Δ_∞(K) ≥ c|K|² and, by step (iv) of Prop. 4.1, Δ_L(K) ≥ (c − C L^{−2})|K|². Then Δ_L^{−1} − Δ_∞^{−1} = Δ_L^{−1}(Δ_∞ − Δ_L)Δ_∞^{−1} = O(L^{−2}|K|^{−2}). Each term of j has one inverse kernel at K and one at K + P, with P fixed, so only one of them is soft at a time. With (H_s) for the vertices this gives (i). In four dimensions ∫_{|K|≤b} d⁴K|K|^{−2} = π²b², which gives (ii). (iii) follows from (i) by integration over the BZ.
Gaps. (H_s) is not proved; its composed-family version (U3 Lemma 5.1) is open. The bound is at fixed P. Uniformity as P → 0 (the code's Lp → 0) is not proved. It is supported by the L-independence of β_1(Lp = 1) − β_1(Lp = 0.5) (F_TENSION §4.3) [N].

Consequence 4.4 [P from Prop. 4.3 + N]. Under (H_s), ΔB_c(L → L′) ≤ C(P)(L^{−2} + L′^{−2}). The data of §3.1 give the lower bounds C ≥ 1.28, 1.97, 2.83, 3.88 for the steps 5→7, 7→9, 9→11, 11→13. The required constant grows roughly like L². So at L ≤ 13 the data show no sign of the L^{−2} convergence that (H_s) implies. Either the constants in (H_s) are large and the single-step family is far from its asymptotic regime at L ≤ 13, or (H_s) fails. In both cases the obstruction lies in the soft vertices at generic coarse momenta, because Prop. 4.1, Prop. 4.3(ii) and the data of §3.2 exclude the shell |K| ~ 1/L.

### 4.3 Power counting in the code's representation (why the exponents are 2 and about 3)

Proposition 4.5 [(a) P-sketch; (b) P-sketch; (c) I; (d) P given α < 4].
(a) Anchored ghost. The ghost border is S_gh(K) = −s²Σ_l 1/|k̂_l|² with s = L^{−2}, k_l = (K + 2πl)/L (fine units). The l = 0 term is 1/(L²|K|²)(1 + O(L^{−2})) = 1/κ² at K = κn/L. The other terms form a Riemann sum: L^{−4}Σ_{l≠0} 1/|k̂_l|² → G_4(0) = 0.1549, the 4D lattice Green function at 0. So S_gh^{−1} → −κ²/(1 + G_4(0)κ²). This is a massive propagator in the scaling variable, with mass κ_* = G_4(0)^{−1/2} = 2.54. This is the 2.54/L of F_TENSION §4.2. Gap: the error terms of the Riemann sum are not written out.
(b) First leg soft. The fine propagator at l = 0 is of size L⁴/κ² (fine units). In each term of taus the Schur factor S^{−1} = O(κ²) removes one such factor. So at most one net factor L⁴/κ² remains, w_K = O(L⁴), and i_L(κn/L) = O(L²). The data give exponent 2 (§2.2, raw at κ = 5) and ghost/L² → 9.47. Gap: the count is not written for every one of the seven terms of taus.
(c) Second leg soft. The data give exponent 3.15 ± 0.05, one power of L more than (b). Candidate: the terms R and X of taus couple the soft second leg to the gauge+auxiliary pair, whose small eigenvalue λ_s ≈ 0.3/L is the inverse of the fan self-energy (F_TENSION §11). Then λ_s^{−1} supplies the extra L. Not checked term by term.
(d) If i_L(κn/L) = O(L^α) uniformly for κ ≤ R, the ball |K| ≤ R/L has volume O(L^{−4}) and contributes O(L^{α−4}). With α = 2 and α ≈ 3.15, both contributions go to zero. A log L from the ball would need α = 4 together with a κ^{−4} tail of the scaled profile. The data exclude α = 4 at L ≤ 13 (local exponents 3.07–3.43 at L = 11 → 13, decreasing toward 3.1–3.2 at small κ).

## 5. The run that maps the B_c increment over the BZ

Question. Where in the bulk does ΔB_c sit, and is the per-K log term real or a transient?
Run M1 (Mac, about 13 min, not done here because of the session budget). Script numerics/bcl_bzmap.py, checkpoint every 60 s, skip-if-done:
  cd numerics; for L in 7 9 11 13; do .venv/bin/python bcl_bzmap.py $L 8 0.5; done
(L = 5 is done; its β matches the stored box value to 3e−16.) Ng = 8 gives the same 320 coarse K points (weights summing to 8⁴ = 4096) at every L, so i_L(K) can be fitted point by point. Cost at 39 µs per (K, l) block: 30 s, 82 s, 183 s, 356 s plus profiles 9, 17, 36, 72 s.
Output. s(K) at every grid point, its weighted BZ mean (it must equal the Ng = 8 slope of β_1), and the radial profile of ΔB_c binned by |K| and |K + p|.
Run M2 (only if M1 shows log terms of fixed sign in a K-region). L = 15, 17, 19 at Ng = 8: about 11, 22, 35 min on the Mac rate. This exceeds the Mac rule of OPUS_QUEUE, so it belongs on the Windows box (CPU venv, transient unit with MemoryMax 16G; memory per K at L = 19 is about 2–4 GB). It decides between a + s log L + b/L² and a pure L^{−2} transient with 3 extra points beyond the present range. No GPU is needed; the numpy path at Ng = 8 is CPU-bound and the GPU port gave only 2.3× on the 4090 (BETA1_BOX_RUN).
Expected outcomes. If B_c converges, M2 must show every s(K) → 0 and the fits without log must win at L ≥ 15. If B_c diverges like s_B log L, the weighted mean of s(K) stays near c − s_B ≈ 0.04 with s(K) of both signs; the constraint part is then the source.

## 6. Replacement sentence for the README β_1 line

In ~/git/yang_mills/README.md line 47, replace "Unproved: the convergence of B_c(L), which is what the expectation β_1(L) = c log L + C + o(1) asserts." by:

"Unproved: the convergence of B_c(L), which is what the expectation β_1(L) = c log L + C + o(1) asserts; its local log coefficient dB_c/d log L rises from 0.23 to 0.33 over L = 5 … 13, the region |K| ~ 1/L carries less than 1 % of this (its share falls like 1/L, and the f = 0 tree kernel has the trivial scaling limit κ²H_∞), so the open part is the single-step soft vertices at generic coarse momenta (SOURCES_BCL_TEST)."

Also proposed (not one sentence, for the next README pass): in the same line, delete "and no per-step term grows with L at generic momenta" from "Settled: … (§4, §11)". §3.3 shows that the per-K pieces at generic K fit better with log L terms; the statement is not supported.

## 7. Ledger of this file

- [V] Prop. 3.1 of F_TENSION; U3 Theorem 4.1 (m ≤ 2, O3 log loss) and Lemma 5.1 (open); β_1(0) values (F_TENSION §4.3, README line 47); code semantics (umk_beta1.py).
- [P] Prop. 4.1 (scaled kernel limit κ²H_∞ at f = 0, relative to U3 Theorem 4.1); Cor. 4.2; Consequence 4.4 (the lower bounds on the constant of (H_s) from the data); Prop. 4.5(d).
- [P-sketch] Prop. 4.3 (shell contribution O(L^{−4}) and B_c(L) = B_c(∞) + O(L^{−2}) at fixed P, gap (H_s) and P → 0 uniformity); Prop. 4.5(a) (anchored-ghost mass κ_* = 2.54 as a Riemann-sum limit), (b) (exponent 2).
- [N] §2.1–2.3 (exponents 2 and 3.15 ± 0.05; ball contribution → 0, below 1 % of ΔB_c; window 2–3 %); §3.1 (dB_c/d log L = 0.230, 0.257, 0.291, 0.330); §3.2 (≥ 96 % of ΔB_c at |K|, |K + p| > 0.35); §3.3 (log L terms favoured at 16 fixed K; size and some signs model-dependent).
- [I] Prop. 4.5(c) (λ_s^{−1} as the source of the extra power of L); the attribution of the fine log to the umklapp range 1 ≪ |l| ≪ L.
- Not done: a verifier pass; runs M1, M2.

STATUS: COMPLETE
