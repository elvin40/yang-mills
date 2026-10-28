# SOURCES_HIGHER_M1 — higher derivatives (Part A) and (M1) (Part B)

Status: complete (2026-10-28), unverified. Firewall kept: no SA repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## Ledger

- [read] SOURCES_GGAIN §4.4–§6, GGAIN_VERIFY item 6 and §7; SOURCES_GGAIN_LF §3, §10.

## A1. What the derivative sources prove, and where "higher derivatives" is listed as open

A1.1 Small field (GGAIN). Route (b) proves the FIRST own-slot derivative only: |∂_{g_k}E^{(k+1)}| ≤ S_0·decay, |∂β_{k+1}/∂g_k| ≤ C_β = C_ΠS_0, on g_k ∈ (0, γ]. GGAIN §4.5 says: "Higher derivatives (Balaban's 'all derivatives') are not proved here; HHIST needs only the first." Route (b) is a real derivative. It does not iterate for free: a second real derivative marks two vertices or one vertex and one χ̂ bond, or hits χ̂ twice (χ̂″ term). Route (a) (holomorphy in u on a complex disc) gives all orders at once by Cauchy, if the disc is established.
A1.2 Large field (GGAIN_LF). §3.1–§3.2 uses a disc D = {|g − x| < ρ_0x}, ρ_0 = 0.1, around the real coupling x, from HHOL_LF. On D the printed bounds hold with modified constants. §3.2 is a Cauchy step for the first derivative only. The ledger §10 lists "[open] … higher derivatives". GGAIN_VERIFY §7 lists "not covered: … C¹ at g = 0" and does not claim higher orders.
A1.3 Observation used below. GGAIN_LF §3.2 is already a Cauchy estimate on a disc of radius ρ_0x. The same estimate at order k is the standard one: |∂_g^kF(g)| ≤ k!(2/(ρ_0x))^k sup_D|F| for |g − x| ≤ ρ_0x/2. The factor x^{−k} is the only change. §3.3 absorbs x^{−1} by x^{2θA_0−1}; at order k it absorbs x^{−k} by x^{2θA_0−k}, which needs A_0 ≥ k/(2θ). This is a condition on A_0 (Balaban's "A_0 large") that grows with k. For a FINITE list of needed orders it is a finite condition. Section A3 shows the largest needed order is 2.
- [read] SOURCES_HHIST2 §1, §3.5, §4, §5 + VERIFY Steps 1–4 and grades; SOURCES_HTHR §1, §5; SOURCES_HTHR2 §3 + VERIFY Step 7; SOURCES_MA2 §3–§4; THEOREM2_PROOF_v4 §10.

## A2. Consumers and the derivative orders they use

Variables. u_k = g_k^{−2}: own coupling of step k. u_i, i < k: history couplings; they reach step k only through the input activities I = {E^{(l)}}, l ≤ k (HHOL line 23). s_i: running threshold parameters (θ(s) = s^{−1/2}C_θ(log s)^{p_0}); β_j(w) = B_j(w; w), B_j(·; ū) = frozen-threshold map. B: the fluctuation field (MA2). "Source" below = the input I (and the background (U, J)), i.e. the argument of the step map other than u_k.

| consumer | object differentiated | orders and variables | source of the bound |
|---|---|---|---|
| THEOREM2_PROOF_v4 §10 item 7 (H0) | β_j(g) | order 1 in own g (Lipschitz |β_j(g) − β_j(0)| ≤ C_1g) | GGAIN B2-unif (+ GGAIN_LF) |
| v4 §10 item 8 (L5), Lemmas D′/D″ | β_{k+1}(g_0, …, g_k) | order 0 (continuity on the cube) | — |
| HBETA / Lemma H′ (HTHR §5) | β_j along u(c) | order 1, all history slots, summed: Σ_l|∂β_j/∂u_l| summable in j | real uniform (H-hist): Lemma HH + B2-unif + G3 order 1 |
| HTHR §1 (1.2) (old route, M5) | B_j(w; s) | order 1 in s; mixed order 2 ∂_s∂_w | Lemma S (coarea) + Cauchy in one weight w_l |
| HTHR2 §3.1 | Δ_j | order 0 | Lemma T |
| HTHR2 §3.2 W-Gronwall | B_j(·; ū) frozen | orders 1 and 2 in history w, summed and summable in j (Σε′_j, Σε″_j < ∞) | HHIST2 Theorem H2 (Route 2(a)) for order 2; real (H-hist) for order 1 |
| HTHR2 §3.2 D_j, (3.1) Lemma 7.1(a) | Δ_j″ via β_j(u(c)) | order 2 in w, INCLUDING ∂_s², ∂_s∂_w (HTHR2_VERIFY Step 7); uniform bound only (HHIST2 §4.1) | HHIST2 §4.2 (i)–(iii) |
| MA2 §4 (H−) | F(B) = A(ζ, U_k(e^{iB}V_0)) | order 2 in the field B; not a derivative of E or β | CMP 102 Prop. 9 analyticity + one Cauchy step (4.4) |
| v4 §10 "not needed" | σ^{(1)} | C², C³ | not a consumer of Theorem 2w |

Third derivatives. No consumer uses a third derivative of E^{(j)}, β_j, B_j, or Δ_j. HTHR2's Lemma 7.1(a) uses Δ, Δ″ only. The W-Gronwall uses v″ = −(B_j(c))″, order 2. Lemma H′ uses order 1. Theorem 2w (v4 §10) uses order ≤ 1 of β_j (item 7) and order 0 (item 8). The only third-order mention is C³ of σ^{(1)}, listed as "not needed for Theorem 1". [P, by inspection of the listed files; grep for "third", "∂³", "C³" in HTHR, HTHR2 and their verifiers returns nothing]
Maximum order needed: 2. In the field variable B: 2 (MA2). In couplings: 2 (history, own slot, and threshold for β_j).
- [read] SOURCES_HHOL §1.2, §2.1, §3.3 (disc |g − x| < ρ_0x, ρ_0 = 0.1, χ real and w-free); SOURCES_SM §2.1, §4.2 (u-disc |u − u_k| ≤ z_0u_k, sup C_uE_0e^{−κ′d}).

## A3. Cauchy bounds for the k-th derivative on the established domains

General fact [P, standard]. If f is holomorphic on the closed disc |ζ − ζ_0| ≤ R with |f| ≤ S there, then |f^{(k)}(ζ)| ≤ k!S(R − |ζ − ζ_0|)^{−k}. At ζ = ζ_0: ≤ k!SR^{−k}. For several variables, if z ↦ f(V_0 + Σ_a z_aV_a) is holomorphic for Σ_a|z_a|‖V_a‖ < R, take r_a = R/(k‖V_a‖) on a polydisc; then |∂_{z_1}…∂_{z_k}f| ≤ S·Π_a r_a^{−1} = S(k/R)^kΠ_a‖V_a‖.

A3.1 Own slot, small field (SM §4.2 / HHOL §3.3) [P given the domain, which is R on the ledger].
 Domain: E^{(k+1)} is holomorphic in u on |u − u_k| ≤ z_0u_k, |E^{(k+1)}(X)| ≤ C_uE_0e^{−κ′d_{k+1}(X)}. Cauchy at the real point u_k:
  |∂^n_{u_k}E^{(k+1)}(X)| ≤ n!C_uE_0 z_0^{−n} u_k^{−n} e^{−κ′d} = n!C_uE_0 z_0^{−n} g_k^{2n} e^{−κ′d}.
 Radius: z_0u_k = z_0g_k^{−2}. Power: g_k^{2n}. n = 1: g² (Σ_jg_j² ~ β^{−1}log K, not summable: the known first-order loss, SM §4.3). n = 2: g⁴, Σ_ju_{j−1}^{−2} ≤ γ²/β (HHIST2_VERIFY Step 1). n ≥ 2: g^{2n}, summable.
 Link to HHOL. The g-disc |g − x| < 0.1x maps under u = g^{−2} onto a region that contains |u/u_k − 1| < 1 − 1/1.21 = 0.174 [P: the map s ↦ (1+s)^{−2} is injective on |s| < 0.1, and the boundary point nearest to 1 is s = 0.1]. So HHOL §3.3 gives z_0 ≥ 0.17 with sup ≤ 0.62cE_0. Same z_0 as θ = 0.174 in GGAIN_LF §3.5.
 For β_{k+1} = Π(E^{(k+1)}) (Π linear, g-free, norm C_Π): |∂^n_uβ_{k+1}| ≤ n!C_ΠC_uE_0z_0^{−n}g_k^{2n}.
 In g-units at real g, |g − x| ≤ 0.05x: |∂^n_gE| ≤ n!(20/x)^n·0.62cE_0e^{−κ′d}. The x^{−n} is the radius loss; it is harmless only in u-units, which is how every consumer uses it (HTHR2 works in w = u).

A3.2 Own slot, large field (GGAIN_LF §3.1 on the HHOL_LF disc) [P given 3.1, which is R].
 Domain: F ∈ {T′_k(X)1, F(X′), R′^{(k)}(X), B′^{(k)}(X)} holomorphic on D = {|g − x| < 0.1x}, with |R′^{(k)}| ≤ e^{−p_0(x)}e^{−κd}, |T′_k1| ≤ e^{−2(1+β_0)^{−1}p_0(x)}. For real |g − x| ≤ 0.05x:
  |∂^n_gR′^{(k)}(X)| ≤ n!(20/x)^n e^{−p_0(x)}e^{−κd} ≤ n!20^n x^{2A_0−n} e^{−κd}   (p_0(x) ≥ A_0 log x^{−2}).
 For the T′-terms with e^{−½p_0}: ≤ n!20^n x^{A_0−n}. Bounded on (0, γ] iff A_0 ≥ n. Needed n ≤ 2, so A_0 ≥ 2. GGAIN_LF §3.5 already uses A_0 > 2 for the real cross-check; CMP 119 p. 244 has "A_0 large". No new condition.
 In u-units ∂²_u = ¼g⁶∂²_g + ¾g⁵∂_g, so |∂²_uR′| ≤ (¼·2·400 + ¾·20)g⁴x^{2A_0−2}e^{−κd}: the large-field part is smaller than the small-field part by x^{2A_0−2}.
 q = 0 terms of B′ (no T′ factor, GGAIN_LF §3.4(iii)) are E-class vertices; their g-dependence is the small-field one, so A3.1 applies.

A3.3 History couplings, through the input (Theorem SM; HHIST2 §3.2 T2) [P given SM Facts A, B, which are R].
 Domain: Ĝ is holomorphic on the input ball ‖V − V_0‖_* < R_V/2 with sup S_V = K_H. Order n in the input directions V_1, …, V_n:
  |D^nĜ(V_0)[V_1, …, V_n]| ≤ K_H(2n/R_V)^nΠ_a‖V_a‖_*   (n = 2: 16K_H‖V_1‖‖V_2‖/R_V², as in HHIST2 T2).
 V_a = ∂_{u_i}I carries g_i² from A3.1 at step i (or ½g_i³ from the real (H-hist)); propagation over the slots l < m ≤ j is the linear Theorem SM recursion with rate λ. So the mixed second derivative is ≤ C_Hg_i²g_l²λ^{j−1−min(i,l)} and the pure one ≤ C_Hg_i⁴λ^{j−1−i} (HHIST2 Theorem H2; HHIST2_VERIFY Step 4: u-disc alone suffices). The mixed own-slot × input term (T3a) uses two-variable Cauchy on (u-disc) × (input disc): radius product z_0u_l·R_V/2.

A3.4 Field variable (MA2 §4.4) [P given CMP 102 Prop. 9 + (189)]. One Cauchy step at radius C_1ε_1 on the ball |B| < 2C_1ε_1 gives |δ²𝓗/δBδB′| ≤ (c_N/C_1)·decay. This is order 2, already done by Cauchy, and the ε cancels. No higher order is used.

A3.5 Threshold variable s (β_j only; HHIST2 §4.2) [R to Lemma D]. Cauchy does NOT apply in s: a sharp cut χ(ψ < θ(s)) is not holomorphic in s, and complexifying the threshold is exactly what HTHR2_VERIFY Step 7 rejects. The project avoids this by the split β_j(w) = Φ(w; s)|_{s=w}:
 - ∂_w∂_wΦ at frozen s: A3.1–A3.3 (the cut is w-free in B̃ units, HHOL §2.1). Cauchy.
 - ∂_s∂_wΦ: one ∂_s by coarea (Lemma S / Lemma D shell), the ∂_w by Cauchy in w at frozen shell (HHIST2 §4.2(iii)). Cauchy for the w-part.
 - ∂_s²Φ: θ″δ + θ′²δ′ per shell (HTHR2 §3.2 "hint"). This needs the derivative of the shell density, |ρ_b′(θ)| ≤ (n/θ + θ/σ_min²)·(density), from Lemma D. Not a Cauchy estimate.
 So the only order-2 piece outside Cauchy is ∂_s²β_j, and it uses Lemma D with its two existing open points (σ_min ≥ s^{−C}; coarea for the nonlinear (1.27) variable). Lemma D is already needed at ORDER 1 for β_j (HHIST2 §4.2 last paragraph: "first-derivative bound … (real (H-hist) + one shell, Lemma D)"). The order-2 use differentiates the same Gaussian-leading density once more; for the Gaussian leading form this is explicit (HTHR2 §3.2 bound on ρ_b′). Classification: same input, not a new one. Alternative that removes it: smooth cutoffs χ̂ (HHIST2 §4.2 last paragraph), where ∂_s² acts pointwise.

## A4. Conclusion, Part A

Result [P given the ledger grades of HHOL, HHOL_LF/GGAIN_LF §3.1, SM §4.2, Theorem SM, Lemma D].
1. Highest order used by any consumer: 2. No consumer uses order 3 (A2). Theorem 2w itself (v4 §10) uses order ≤ 1 of β_j.
2. Every order-2 derivative in a COUPLING or FIELD variable is a Cauchy estimate on a domain already in the project: own slot n-th u-derivative ≤ n!C_uE_0z_0^{−n}g_k^{2n} (radius z_0u_k, z_0 ≥ 0.17 from HHOL ρ_0 = 0.1); large field ≤ n!20^nx^{2A_0−n} (radius 0.1x, A_0 ≥ n = 2, already assumed); history through the input ≤ K_H(2n/R_V)^nΠ‖V_a‖ (radius R_V/2); field B by MA2 (4.3). The u-unit power g⁴ at order 2 is summable along the trajectory (Σu^{−2} ≤ γ²/β).
3. The one order-2 piece that is not Cauchy is ∂_s²β_j (threshold, twice). It uses Lemma D, which the first-order β_j bound already uses. It adds a derivative of the shell density, explicit for the Gaussian leading form (HTHR2 §3.2). No new lemma; same two open points as Lemma D.
4. The binding derivative input remains FIRST order: the real uniform (H-hist) with summable u^{−3/2} (G-gain + G3 order 1 + (Q)/c_−). The u-disc gives only g² at order 1, not summable. This is not a higher-derivative issue.
Verdict: higher derivatives: no new input. Conditions: (a) the existing holomorphy domains at their present grades; (b) A_0 ≥ 2 in the large-field Cauchy step, inside Balaban's "A_0 large"; (c) for ∂_s²β_j, Lemma D (already on the ledger from order 1). The GGAIN_LF §10 entry "[open] higher derivatives" and GGAIN §4.5 "higher derivatives not proved" can be closed for all orders ≤ 2 used by the project; Balaban's "all derivatives" (C^∞) at fixed ε_1 is NOT proved and is not needed.
- [read] SOURCES_MC §6, §7.3, §9, §10 + MC_VERIFY §3–§5; SOURCES_A1_WALK_VERIFY constant order (l. 61, item 4); SOURCES_WC_RESIDUE_VERIFY (l. 23, 38, 46–47, 53–54); TRUST_LEDGER C5, C14, B17 row; SOURCES_FX_R2 §1, §3, choice; SOURCES_T2_KAPPA2 (K3); SOURCES_T2_R2REM §7.1; SOURCES_A2_R2 Prop. R2, (R3b); SOURCES_LOC §5.4; SOURCES_A1_KERNEL; SOURCES_WG_VERIFY (2); SOURCES_A3_GAMMA0(_FULL)_VERIFY; WC_FULL §0.3; SOURCES_QE_INV; SOURCES_D4D5(_VERIFY) §4.2. Found by a project-wide grep for M lower bounds (reports/ and archive/ excluded: firewall).

## A5. Correction to A3 from Part B: the disc radius depends on M

Lemma MC (SOURCES_MC §9) sets ρ_0 := min{0.1, (LM)^{−2}(0.45a/(16n))^{1/2}} (condition (M2)). So ρ_0 = 0.1 holds only for small LM; in general ρ_0 ~ (LM)^{−2}. Consequence for A3: replace 0.1 by ρ_0 and z_0 ≥ 0.17 by z_0 ≥ ρ_0 [P: 1 − (1+ρ)^{−2} = (2ρ + ρ²)/(1+ρ)² ≥ ρ iff ρ + ρ² ≤ 1]. The Cauchy constants become n!C_uE_0ρ_0^{−n} (small field) and n!(2/ρ_0)^n (large field). ρ_0 is fixed after M, before g; so the constants are still g-free and K-free, and the g-powers (g^{2n} in u-units; x^{2A_0−n} large field) do not change. The A4 verdict stands.

## B1. Every lower bound on M, with source

Notation clash. "(M1)" means two things in the project: SOURCES_MC (M1) = O(1)(LM)⁴e^{−δ_0M/3} ≤ 0.3a (this task); SOURCES_T2_R2REM (M1) = M ≥ 2κ_1/δ_1. Also "M_1" is both the CMP 116 small-cube size and the CMP 99 Thm 3.1 threshold M_1(d, L). Below: M_1 = cube size; M_99(d, L) = the CMP 99 threshold.

Balaban's printed conditions [V as recorded in the cited files]:
| # | condition on M | source |
| Ba1 | M ≥ M(κ) (existential) | CMP 109 Thm 3 (FX_R2 §1) |
| Ba2 | M ≥ M_99(d, L) | CMP 99 Thm 3.1 p. 397 (A1_KERNEL; A3_GAMMA0_VERIFY R1) |
| Ba3 | e^{−δ_0M/3}e^{16κ_1} < 1, i.e. M > 48κ_1/δ_0 ("M much bigger than κ_1") | CMP 116 p. 16, MC B1 |
| Ba4 | δ_1M ≥ κ_1 (walk weight absorption, m > 2⁴) | CMP 116 p. 5 (1.11) (A1_WALK_VERIFY l. 20; A2_R2 (κ)) |
| Ba5 | δ_0M ≥ κ | CMP 116 p. 21, MC B23 |
| Ba6 | the e^{−δ_0M/3} part of α_5‖C^{(k)}‖ < ½ and of O(1)(LM)⁴α_5 ≤ K_abs | CMP 116 p. 17, p. 20, MC B7, B19 |
| Ba7 | M ≫ L ("M ≫ earlier scales"); cubes M = L^m | CMP 109 p. 257 (FX_R2 §1, choice (4)) |

Project conditions:
| # | condition on M | source |
| P1 | (M1)_MC: O(1)(LM)⁴e^{−δ_0M/3} ≤ 0.3a | SOURCES_MC §7.3, §9; MC_VERIFY (open item) |
| P2 | M ≥ 12L(3κ_final/C_1)^{1/d}, κ_final = 2κ + √d(1+2β)κ + c_d, C_1 = max(1, C_c) | SOURCES_FX_R2 §3; TRUST_LEDGER C14 |
| P3 | (K3) M ≥ 12L(3κ_final^θ/C_1)^{1/d}; implied by P2 | SOURCES_T2_KAPPA2 l. 83–84 |
| P4 | (δ_0/2)M ≥ κ (D2 halves δ_0); implies Ba5 | SOURCES_T2_KAPPA2 l. 13 |
| P5 | M ≥ 2κ_1/δ_1; e^{−δ_0M/3}-parts of (M2)_R2REM, γ_1e_M ≤ ½, ε_M ≤ γ_0/2 | SOURCES_T2_R2REM §7.1; SOURCES_LOC §5.4 |
| P6 | M ≥ M_* (a·w ≤ ½, M_* depends on κ_1, δ_0, c_A, δ_A, B_0, M_1) and M ≥ 96κ_1/δ_0 | SOURCES_A2_R2 Prop. R2 |
| P7 | M ≥ 12cκ_1/δ_* (R_3 variant (R3b)) | SOURCES_A2_R2 l. 80 |
| P8 | M > 48κ_1/ε (walk rate ε) | SOURCES_A1_WALK §7.4(a); A1_WALK_VERIFY item 4 |
| P9 | M ≥ R_1M_1; (2.59) at rate ¼ε: ½αδ_0RM > 2d log c_0(½α) + 1 | A1_WALK_VERIFY l. 47, 61 (CMP 96 Lemma 2.1) |
| P10 | RM ≥ (d/2 + 1)log L/ε; log L/(RM) ≤ δ_0/(4(d+2)) | SOURCES_A1_KERNEL l. 77, 82 |
| P11 | RM ≥ 8 log L/δ_H | SOURCES_QE_INV §5.3 |
| P12 | M/M_1 > 3(6 + c_X) (strict) and M/M_1 > 10 | SOURCES_WC_RESIDUE §4; WC_RESIDUE_VERIFY B4, B5 |
| P13 | M_1 ≥ max(M_a, M_W^c), M_W^c ≈ 2M_W (on M_1, chosen before M) | WC_RESIDUE_VERIFY l. 38, 46 |
| P14 | M ≥ M_* (WG concatenation convergence) | SOURCES_WG_VERIFY (2) |
| P15 | M ≥ cL; M ≥ L/2 suffices; M ≥ max(M_99(d, L), L) | A3_GAMMA0_VERIFY l. 36; A3_GAMMA0_FULL_VERIFY (7); WC_FULL §0.3 |
| P16 | M ≥ 8 (no fine scale at σ = 16ε) | SOURCES_D4D5 §4.2 (+ VERIFY) |
| P17 | optional: M ≥ 3c_1κ_1/(νδ_0) (κ_1-free O(1) in R_2) | SOURCES_T2_R2REM §5.2 |
R in P9–P11 is the CMP 96 layer parameter, fixed before M (or R_k ≥ 1, which only helps); each RM condition is implied by M ≥ (its right side)/R_min.

## B2. Compatibility

B2.1 Each item is an up-set in M [P]. Three forms occur.
 (i) M ≥ f(earlier constants): Ba1, Ba2, Ba4, Ba5, Ba7, P2–P4, P5 (first part), P6 (96κ_1/δ_0), P7, P8, P9–P11, P15–P17.
 (ii) M/M_1 > c with M_1 fixed before M: P12. (P13 is a condition on M_1, not on M.)
 (iii) h(M) ≤ c with h(M) = poly(L, M)·e^{−cM}: Ba3, Ba6, P1, P5 (e_M parts), P6 (M_*), P14. Such h is decreasing for M ≥ M_dec := (degree)/(rate). So each is an up-set once M ≥ M_dec is added. Explicit for P1: with y := δ_0M/3, (LM)⁴e^{−y} = L⁴(3/δ_0)⁴y⁴e^{−y} ≤ L⁴(24/(eδ_0))⁴e^{−y/2} (since y⁴e^{−y/2} ≤ (8/e)⁴). So
  M ≥ M_MC := (6/δ_0)·log[O(1)L⁴(24/(eδ_0))⁴/(0.3a)]
 implies P1 for every larger M. [P; O(1) and a are Balaban's unprinted absolute constants]
B2.2 Order [V/I, TRUST_LEDGER C5, FX_R2 §1, A1_WALK_VERIFY l. 61, WC_RESIDUE_VERIFY l. 46]: d, L → κ (≥ κ_0), β, δ → κ_1 → walk/kernel constants (δ_0, δ_1, B_0, γ_0, γ_1, c_±, δ_G, Σ, ε, a_0, c_X) → WC and level constants (incl. ε″) → M_1 (P13) → M_2 → M → α′ → α's (α_0, α_1, α_4, γ_2, α_6) → ε_1 → ρ_0 → exponents → A_1 → A_0 → C_0 → C_1 → γ → g (SOURCES_ORDER_CANON B, R1–R3). Every argument of every f in B1 is left of M. Two points checked:
 - ε (walk rate) is computed at a minimal M and Σ is decreasing in M, so ε stays valid for larger M (A1_WALK_VERIFY l. 47: "not circular").
 - C_1 = max(1, C_c) ≥ 1 whatever C_c does in M (FX_R2 route (b)); κ_1 is M-free [I, A1_WALK_VERIFY l. 61].
 So the intersection of the up-sets is the up-set M ≥ M_req (below), and M = L^m with m large lies in it. Compatible. [P given the order]
B2.3 Upper bounds involving M [P, by inspection of every hit of the grep]. None bounds M by an earlier constant. Every M-dependent upper bound is on a LATER constant:
 - (LM)⁴α_i ≤ ¼ (i = 0, 1, 4; γ_2): upper bound on the α's (MC §7.3, Lemma MC; B18 budget). This is the budget of the task.
 - Mα_0 ≤ a_0, α_0 ≤ c′M^{−11} (CMP 99 Thm 3.1; WG_VERIFY (2)): on α_0.
 - ε_2 ∝ ε_1M^q ≤ 1 (B8, B12, B15, B16): on ε_1.
 - ρ_0 ≤ (LM)^{−2}(0.45a/(16n))^{1/2} ((M2)_MC): on ρ_0 (see A5).
 - "γ small depending on M and κ" (B10), R³ ≥ 12(d+3)(100M(L+1))^{d+2}N^{…}/(γ_0A_1²) (HTHR2_VERIFY Step 7): on γ.
 - κ′ = κ + O(1)M^d(N²−1) in the p. 389 large-field inequality (GGAIN_LF §3.1), (100MR)^d in p_0-conditions: on A_0 / p_0, chosen after M.
 Raising M therefore re-chooses α, ε_1, ρ_0, A_0, p_0, γ only (MC §10 says the same for P1).

## B3. (M1) stated precisely

(M1) [convention, Group C]. M = L^m with
 M ≥ M_req := max{ M(κ), M_99(d, L), M_dec, 96κ_1/δ_0, 2κ/δ_0, κ_1/δ_1, 2κ_1/δ_1, 12L(3κ_final/C_1)^{1/d}, 12cκ_1/δ_*, 48κ_1/ε_min (ε_min ∋ ½ε″), M_MC, M_*^{A2}, M_*^{WG}, M_e, R_1M_1, (3(6 + c_X) + 1)M_1, 11M_1, M_RM, L, 8, L²M_1 + 1 (M > M_2, R3), C24 round-4: 3(7 + c_X)M_1, 8 log L/(Rθε), M_*(¼ε_min)/R + 1; (H_κ) 16·3^dκ_1/(Lε″); (H_M) 2c′M_1; (H_η); M_Γ; M_{α5} },
where:
 - 96κ_1/δ_0 covers Ba3 (48κ_1/δ_0) and Ba3 at halved rate; 2κ/δ_0 covers Ba5 and P4.
 - M_e := least M ≥ M_dec with the e^{−δ_0M/3} parts of Ba6, P5 (γ_1e_M ≤ ½, ε_M ≤ γ_0/2, (M2)_R2REM) all true.
 - M_RM := max over P9–P11 of (right side)/R_min.
 - (3(6 + c_X) + 1)M_1 makes P12's strict inequality hold with M a multiple of M_1.
 - P3 ⇐ P2, Ba7 ⇐ "L" entry and M = L^m, P17 optional.
 All arguments are fixed before M (B2.2). The only upper bound tied to M, (LM)⁴α ≤ ¼, bounds α given M; it does not bound M.
Status of each entry: Balaban-existential (M(κ), M_99, M_*, a, O(1)): the value is not printed; the existence is. Project-explicit: P2, P8, P12, M_MC (up to a and O(1)).

## Ledger (authoritative)

[read, this session] GGAIN §4.4–§6 + VERIFY §6–§7; GGAIN_LF §3, §10; HHIST2 §1, §3.5, §4–§6 + VERIFY; HTHR §1, §5; HTHR2 §3 + VERIFY Step 7; MA2 §3–§4; THEOREM2_PROOF_v4 §10; HHOL §1.2, §3.3 (grep); SM §2.1, §4.2 (grep); MC §6–§10 + VERIFY; A1_WALK_VERIFY; WC_RESIDUE_VERIFY; TRUST_LEDGER C5, C14, B17; FX_R2; T2_KAPPA2; T2_R2REM §5, §7; A2_R2; LOC §5.4; A1_KERNEL; WG_VERIFY; A3_GAMMA0(_FULL)_VERIFY; WC_FULL; QE_INV; D4D5. No Balaban page read; all [V] tags are inherited from those files.
[P] A2: derivative orders per consumer; maximum order 2; no third derivative anywhere in the Theorem 2w ⇒ Theorem 1 chain or the (H-thr) chain.
[P given domains (R)] A3.1–A3.4: n-th derivative Cauchy bounds. Own slot n!C_uE_0z_0^{−n}g^{2n} (radius z_0u_k, z_0 ≥ ρ_0); large field n!(2/ρ_0)^nx^{2A_0−n}, needs A_0 ≥ n = 2 (inside "A_0 large"); input n-fold K_H(2n/R_V)^nΠ‖V_a‖; field B by MA2 (4.3).
[R to Lemma D] A3.5: ∂_s²β_j (threshold twice) is the one order-2 piece outside Cauchy; Lemma D already carries the order-1 threshold bound; order 2 adds the shell-density derivative (explicit for the Gaussian leading form).
[P] A4 verdict: higher derivatives: no new input. The binding derivative input stays first order (real uniform (H-hist): G-gain + G3 order 1 + (Q)/c_−). Close GGAIN §4.5 and GGAIN_LF §10 "[open] higher derivatives" for orders ≤ 2. C^∞ at fixed ε_1 is not proved and not needed.
[P] A5: Lemma MC's ρ_0 ~ (LM)^{−2} replaces 0.1 in A3; constants change, g-powers do not.
[P] B1–B3: 7 Balaban + 17 project lower bounds on M collected; all are up-sets in M with arguments fixed before M; the intersection is M ≥ M_req; no upper bound on M; (LM)⁴α ≤ ¼ bounds α. (M1) CLOSED as a convention entry (Group C), with the explicit list B3.
[I] κ_1, a, and Balaban's O(1)'s are M-free (inherited from A1_WALK_VERIFY and MC).
[open, unchanged] MC's (I-ε), (I-V0) residual; the M_*-type existential values; Lemma D's two open points.
Suggested TRUST_LEDGER edit (not made: no existing file edited): B17 row "open … (M1)" → "(M1) closed as convention C24 (SOURCES_HIGHER_M1 §B3)"; add C24 = (M1) list; GGAIN_LF §10 "[open] higher derivatives" → closed for orders ≤ 2.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read; reports/ and archive/ excluded from all greps.
Status: complete (2026-10-28). Unverified.

Corrections after verification (SOURCES_HIGHER_M1_VERIFY, 2026-10-28): scope of "order ≤ 2" = coupling, threshold, and MA2 field variables only (Balaban's CMP 109 §3–4 expands E^{(j)} in the field to order 4 with a fifth-order remainder; D2 §7/D3 use source derivatives of all orders — those are field/source expansions, not coupling derivatives); constants 0.17, (20/x)^n, 20^n in A3/A4 → the ρ_0 form of A5 (z_0 = 1 − (1+ρ_0)^{−2} ≥ ρ_0); the u-unit large-field bound drops a g² (loose, valid). (M1) list: ADD A3_SIGMA 5.1 η_M = S_dB_We^{−δ_0M/3} ≤ (2γ_1)^{−1} and A3_SIGMA 5.3 M_1 ≫ e^{2cκ_1} (both up-sets); the FX_R2 entry reads 12L(3κ_final)^{1/d} (C_1 may depend on M); the count is 26, not 24; CMP 99 Thm 3.1 settles T2_R2REM's B_0 [I] (d, L only); WC_RESIDUE_VERIFY Q7's order line misplaces c_± (Q6/A1_WALK_VERIFY: before M_1).

Order-canon fixes (SOURCES_ORDER_CANON Task C, 2026-10-28): C-H1 B3 M_req adds L²M_1 + 1 (R3), the C24 round-4 entries, (H_κ), (H_M), (H_η), M_Γ, M_{α5}, and 48κ_1/ε_min with ε_min ∋ ½ε″ (M_99 already used); C-H2 B2.2 order inserts WC and level constants before M_1 and M_2 after M_1, and ends exponents → A_1 → A_0 → C_0 → C_1 → γ → g (R1, R2).
