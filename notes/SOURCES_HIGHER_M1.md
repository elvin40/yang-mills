# SOURCES_HIGHER_M1 — higher derivatives (Part A) and (M1) (Part B)

Status: in progress (2026-10-28). Firewall kept: no SA repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

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
