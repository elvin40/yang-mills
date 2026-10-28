IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_GGAIN_LF — large-field half of (G-gain): uniform first g-derivative of the large-field step contributions

Status 2026-10-28 (Claude, Opus; unverified). Inputs: SOURCES_GGAIN (+VERIFY item 6), SOURCES_HHIST, SOURCES_HHOL_LF §3–§4 (+VERIFY items 2–3), SOURCES_FX_O23 §3–§4, SOURCES_MA / MA2, CMP 122 II pp. 377–390 page images. Firewall kept (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md).
Sections are appended in order of work; the ledger (last section) is authoritative.

## 1. Quoted inputs [V = page image read in this session]
- CMP 119 p. 255 [V, PDF p. 13]: (2.4) "ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j)"; (2.5) "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r". (2.6) g_m ≤ (1+β_0)g_n for n > m. The page does not state the value of the exponent p_0 (nor of r); see §3.3.
- CMP 122 II p. 380 [V, PDF p. 26]: (1.73) |T′_k(X,(U,J))F| ≤ (T′_k(X,(U,0))1) sup e^{|σ|}|F|; (1.74) lower bound with e^{−2 sup|σ|}; (1.75) normalized form. "T′_k(X,(U,0))1 is obviously positive, although it may be very small." Per-domain budget: "O(1)log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)". Large-field characteristic functions give exp(−γ_0(1/(2g_j²))(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|), exp(−½γ_0(1/g_j²)(2δ_j)²(LM_2R_j)^{−2}|Q_j|), exp(−γ_0(1/g_j²)δ_j²(LM_2R_j)^{−d}|R_j|); "γ_0 is an absolute positive constant (… we may take γ_0 = 1/2)".
- CMP 122 II p. 381 [V, PDF p. 27]: per component Z_j^{(i)} of the MR_j-cover, "exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j(Z_j^{(i)}) + 1)) ≤ exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j))". Preparatory factors: ≤ exp(−A_1²p_0²(g_j)), ≤ exp(−γ_0A_1²p_1²(g_j)), ≤ exp(−A_1²p_0²(g_j)).
- Form of every large-field factor: exp(−c·(threshold)²/g_j²·|·|) with threshold² /g_j² = p_0(g_j)² or p_1(g_j)² (times A-constants). The suppression is in p_0², not only p_0. This is load-bearing for §3.
- CMP 119 p. 244 [V, PDF p. 2]: "|U(∂p) − 1| ≥ g_0p_0(g_0) for a plaquette p ∈ T_1, where p_0(g_0) = A_0(log g_0^{−2})^{p_0} with a positive integer p_0." Text layer p. 245 (garbled): "A_0 … is a sufficiently large constant". So the exponent p_0 ≥ 1 and A_0 is free and large. Consequence used below: p_0(g) ≥ A_0 log g^{−2} = 2A_0 log g^{−1}, hence e^{−θp_0(g)} ≤ g^{2θA_0} for every θ > 0, g < 1. [V + P]
- CMP 122 II p. 385 [V, PDF p. 31]: the base case of (1.80) needs "¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2}", "satisfied for p_0 large, and g_1 sufficiently small". So the condition is p_0² ≳ R^{d+2} (the brief wrote p_0 ≳ R^{d+2}; CORRECTED to the square).
- CMP 122 II p. 386–387 [V, PDF pp. 32–33]: κ_{j+1}(Z) recursion (1.85)–(1.88); (1.89) "T′_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k))".
- CMP 122 II p. 388–390 [V, PDF pp. 34–36]: (1.91) F(X′) = Σ_q Σ_{X_j} Σ_D Π∫dt(Y) Π_h T′_k(X_{j_h}) Π_{Y∈D} V(Y) exp Σ t(Y)V(Y); (1.92) |F(X′)| ≤ Σ Π_h exp(−2(1+β_0)^{−1}p_0(g_k) + 1)·(…), "|σ| in (1.73) by 1"; p. 389: "−2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k)" ("take β_0 = 1/7, then … −(1/4)p_0(g_k) + 1 + 2κ(100R_k)^d ≤ 0"); (1.97) |F(X′)| ≤ c_1 exp(−(1+β)κd_{k,∪Y_i}(X′)), "c_1 = exp(−p_0(g_k)) if X′ does not intersect ∪Y_i, and c_1 = α^{1/3} in the remaining cases"; (1.98) {…} = exp Σ R″^{(k)}(X); (1.99) |R″^{(k)}(X,(U,J))| ≤ O(1)c_1 exp(−(1+½β)κd_{k,∪Y_i}(X)); terms meeting Z_k^~ ∪ ∪Y_i are "new boundary terms … B′^{(k)}(X)", the rest are R′^{(k)}(X) with (1.100) |R′^{(k)}(X,(U,J))| ≤ exp(−p_0(g_k))exp(−κd_k(X)); (1.101) A_k(1/(g_k(·))², U_k) = A′_k + Σ_X R′^{(k)}(X,U_k) + Σ_X B′^{(k)}(X,U_k); (1.102) T_k(Y) = χ^c_k(Y^{~−6})χ_{k,Λ}δ_G(V_kV_Λ^{−1})T′_k(Y) for the fixed components Y_i.
- Carried from SOURCES_HTHR2 (F2)–(F4) [V there]: preparatory running cutoffs χ′_j of (1.27) (threshold δ′_j = g_jA_1p_1(g_j), p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0, inside the small-field integral) and χ′ of (1.82) (tail exp(−R_j^{−d−5}p_1²(g_j)) ≤ exp(−p_0(g_j)) under "2p_1 − (d+5)r_0 > p_0").

## 2. Where large-field terms enter the step outputs, and which outputs (H-hist) differentiates
2.1 Outputs of step k [V, (1.101)–(1.102)]. The step returns three kinds of objects: (a) E-class terms E^{(k+1)}(X) inside A′_k (small-field, computed by the CMP 116 step with the cutoffs χ_k, χ′_j (1.27), χ′ (1.82) inside the integral); (b) R′^{(k)}(X), bound e^{−p_0(g_k)}e^{−κd}; (c) B′^{(k)}(X), bound O(1)c_1e^{−(1+½β)κd}, c_1 ∈ {e^{−p_0}, α^{1/3}}; plus the region factors T_k(Y_i) of (1.102).
2.2 β_{k+1} sees only (a) [I, with support]. β_{k+1} = Π(E^{(k+1)}) with Π linear, g-free, applied to the translation-invariant E-class functions (GGAIN §4.5; SOURCES_SM §3.1(b)). SOURCES_D3 (viii) [P there] states "B_j is defined from E-class terms only"; D3 (v) states R-terms "have no all-small-field version". CMP 119 p. 244 [V]: in small-field regions Balaban applies "the whole analysis of the paper [I]", i.e. CMP 109/116 E-functions. So R′, B′ and T_k(Y) never enter Π. [I: not checked against every line of CMP 119 §2 that no R/B term is re-booked as E-class at a later step]
2.3 Consequence for (H-hist). The large-field half of G-gain enters ∂β in only one way: through the sharp cutoffs inside the small-field integral that defines E^{(k+1)} (χ_k, χ′_j, χ′). With thresholds frozen at x* on physical variables (HHOL_LF 4.1; HTHR2 (F4)–(F5): (1.27) acts on V_jV_Z^{−1} − 1, (1.82) on B′), their g-derivative is a surface term of exactly the GGAIN Lemma G3 type. §6 bounds it. The R′, B′, T(Y) outputs need a derivative bound only for the density (the own-slot step map as a whole, used if one wants (H-hol)/N3 or the derivative of correlation functions); §3–§5 give it.

## 3. Own-slot derivative of the large-field outputs R′, B′, T′ (plan steps 1–2)
Convention [HHOL_LF 4.1, VERIFY V4]: thresholds ε, δ, δ′, R, N, the cube partitions, and the R-ratio density weight are frozen at Balaban's real trajectory x*; B̃ = g_kB units. Only slot g_k moves; other slots are fixed. Write x := x*_k.
3.1 Disc bounds [R: HHOL_LF §4.3–4.5 + (M-A), (M-B)]. Let F be any of T′_k(X)1, F(X′) of (1.91), R′^{(k)}(X), B′^{(k)}(X). In finite volume F is holomorphic in g on D := {|g − x| < ρ_0x}, ρ_0 = 0.1. On D the printed bounds hold with γ_0 → (1+ρ_0)^{−2}γ_0 = 0.826γ_0, O(1) → 2O(1), and an extra factor ≤ e^{1.07(N²−1)(1+η_x)} per scale-k unit cube inside each R-ratio component (MA2 §5). The extra per-component entropy O(1)(N²−1)(100MR_k)^d has the form of Balaban's 2κ(100R_k)^d on p. 389; it is absorbed by κ → κ′ := κ + O(1)M^d(N²−1) in that inequality, which still holds for A_0 large because p_0(g) ≥ A_0 log g^{−2} and R(g)^d ≤ L^d(log g^{−2})^{rd} [Balaban needs the same comparison already]. So on D:
  |T′_k(X)1| ≤ e^{−2(1+β_0)^{−1}p_0(x)},  |R′^{(k)}(X)| ≤ e^{−p_0(x)}e^{−κd_k(X)},  |F(X′)| ≤ c_1e^{−(1+β)κd},
with thresholds at x. [R; (M-B) = the (1.80)–(1.99) bookkeeping with changed constants, not redone line by line]
3.2 Cauchy step [P]. For real g with |g − x| ≤ ρ_0x/2: |∂_gF(g)| ≤ (2/(ρ_0x))·sup_D|F|. The 1/x = O(1/g) is the only new factor.
3.3 Absorbing 1/g [P, from CMP 119 p. 244: p_0 a positive integer, A_0 large]. p_0(x) ≥ A_0 log x^{−2}, so x^{−1}e^{−θp_0(x)} ≤ x^{2θA_0−1}. For θ = ½ and A_0 ≥ 1: x^{−1}e^{−½p_0(x)} ≤ x^{A_0−1} ≤ γ^{A_0−1} ≤ 1. Also e^{−p_0(g)}/g → 0 as g → 0 (faster than any power of g if p_0 ≥ 2; like g^{2A_0−1} if p_0 = 1). The brief's "p_0 ≳ R^{d+2}" is not needed for this step; the definition (2.4) with p_0 ≥ 1 suffices.
3.4 Results [P given 3.1].
 (i) R′^{(k)}: |∂_gR′^{(k)}(X)| ≤ (2/ρ_0)x^{−1}e^{−p_0(x)}e^{−κd_k(X)} ≤ 20x^{2A_0−1}e^{−κd_k(X)} ≤ 20γ^{2A_0−1}e^{−κd_k(X)}. So S_0^{R′} := 20γ^{2A_0−1} ≤ 20 for A_0 ≥ ½: free of 1/g, and o(1) as γ → 0.
 (ii) B′^{(k)} with c_1 = e^{−p_0}: the same bound with (1+½β)κ decay.
 (iii) B′^{(k)} with c_1 = α^{1/3} (X′ meets ∪Y_i). Split (1.91) by q. q ≥ 1: each term carries at least one T′_k factor, so (1.95)–(1.96) give ≤ c_0e^{−½p_0(x)}e^{−(1+β)κd} on D; Cauchy and 3.3 give |∂_g| ≤ 20γ^{A_0−1}c_0e^{−(1+β)κd}. q = 0: F_0(X′) = Σ_D∫dt Π_{Y∈D}V(Y)exp Σt(Y)V(Y) contains no T′. Here g_k enters only through the own-slot E-class pieces of the subtracted terms V(Y) ((1.68)–(1.70)). Use the real derivative, one marked vertex, as GGAIN §4.4 with the real-t Mayer form (GGAIN_VERIFY item 3 repair): |∂_gF_0(X′)| ≤ (S_0/(C_3ε_1))·O(1)α^{1/3}e^{−(1+β)κd}, the mark choice ≤ 2^{|D|} absorbed by α^{2/3} → 2α^{2/3} in (1.93)–(1.94) (α small). 1/g-free. [R to GGAIN B2-unif for the E-class pieces of V(Y)]
 (iv) Fixed components T_k(Y_i) = χ^c_k χ_{k,Λ}δ_G T′_k(Y_i) (1.102): χ-factors frozen (g-free in B̃ units), so |∂_gT_k(Y_i)1| ≤ (2/ρ_0)x^{−1}e^{−2(1+β_0)^{−1}p_0(x)} ≤ 20γ^{A_0−1}e^{−½p_0(x)}. For the normalized bracket (1.103) [O4-type, not needed on the main route]: not covered.
3.5 Real-derivative cross-check of the brief's mechanism [P]. In B̃ units ∂_u of the T′ integrand gives −A_W (Wilson), −½⟨DHB̃, ζDHB̃⟩ (Gaussian), +n/(2u) (normalization u^{n/2}), and ∂_u of the E-terms. With te^{−θt} ≤ (eθ)^{−1}: |A_We^{−uA_W}| ≤ (eθu)^{−1}e^{−(1−θ)uA_W}, the same for the Gaussian form. ∂_g = −2g^{−3}∂_u turns (eθu)^{−1} into (2/(eθ))g^{−1} and n/(2u) into n·g^{−1}. The reduced coupling (1−θ)u is the γ_0 → (1−θ)γ_0 of O3 Step 3; θ = 0.174 matches the disc. CORRECTION to the brief: the normalization term n/(2u) is EXTENSIVE (n ~ number of real modes in X), so the real route gives a per-site g^{−1}, not one g^{−1} per operation. It is still absorbed: n ≤ O(1)(100MR)^d per MR-cube and (100ML)^d(log g^{−2})^{rd}g^{−1}e^{−¼p_0(g)} ≤ (100ML)^d(log g^{−2})^{rd}g^{A_0/2−1} → 0, uniformly bounded on (0, γ] for A_0 > 2. Both routes give S_0^{LF} uniform in g ∈ (0, γ].

## 4. Volume uniformity (plan step 2) [P given 3.1]
- The Cauchy step 3.2 acts on ONE activity (R′(X), B′(X), F(X′), T_k(Y_i)1) at a time. The disc bounds of 3.1 are per activity and volume-free, because HHOL_LF 4.5 gets them from Balaban's positive per-cube majorants (1.79)–(1.97), with no cluster expansion of the large-field measure. So each derivative bound in 3.4 is volume-free.
- Infinite volume. On D the finite-volume activities converge locally uniformly (Weierstrass, HHOL_LF 4.5), so their g-derivatives converge too, and the bounds pass to the limit.
- Exponentiated level. ∂_g of exp Σ_X R″(X) (1.98) and of the polymer log is handled as GGAIN §4.4(ii): the activities sit in the Kotecký–Preiss polydisc with margin, the log is analytic there, and the chain rule gives the derivative with one δ-unit of decay spent. [R, standard, not written out; same status as in GGAIN]
- No cluster expansion of the large-field measure is needed, as HHOL_LF §4 found. CONFIRMED for the derivative.

## 5. The frozen-threshold mismatch: its derivative (plan step 3) [P given (M-A) = MA Theorem]
5.1 Form. By MA2 §2 (fix (2.1)), the frozen R-ratio is g-free, and the leftover is a pointwise factor m_s(V′) = e^{sG(V′)} on Λ_i, s = s(u) = ±(u − x^{−2}), G = F − A_min ≥ 0. It multiplies a positive integrand and is averaged against a positive density ν_a ∝ e^{−aG}, a ∈ {u, x^{−2}}. Only its real average enters the bounds (MA §6).
5.2 Derivative. d/du ∫ν_a e^{sG} = s′(u)∫ν_a G e^{sG}, |s′| = 1. Dividing by ∫ν_a e^{sG}: the ratio is ⟨G⟩_{a−s}, the mean of G in the cut-off density at real coupling a − s ∈ {u, x^{−2}}. MA Theorem: ⟨G⟩_{u′} ≤ (n_i/u′)(1 + η_x) for real 0 < u′ ≤ x^{−2}. For u′ > x^{−2}, d⟨G⟩_{u′}/du′ = −Var(G) ≤ 0, so ⟨G⟩_{u′} ≤ ⟨G⟩_{x^{−2}} ≤ n_i(1+η_x)x². So
  |∂_u ∫ν_a m_s| ≤ n_i(1+η_x)/min(u, x^{−2}) · ∫ν_a m_s.
5.3 In g. On the real segment |g − x| ≤ ρ_0x/2: u ≥ (1.05)^{−2}x^{−2} = 0.907x^{−2}, and ∂_g = −2g^{−3}∂_u. So the derivative of the mismatch average is ≤ 2g^{−3}·1.103n_i(1+η_x)x²·(mismatch average) ≤ 2.6n_i(1+η_x)g^{−1}·(mismatch average). [P; g ≥ 0.95x gives x²/g² ≤ 1.108, and 2·1.103·1.108 = 2.44 ≤ 2.6]
5.4 Absorption. n_i ≤ (N²−1)d(100MR_k)^d (axial-gauge modes on Λ_i ⊂ cube of side 100MR_k, CMP 122 I p. 177 [V via HHOL_LF §2]). Λ_i is the R-component of one T′ operation, which carries e^{−2(1+β_0)^{−1}p_0(x)} (1.89). Spend e^{−¼p_0(x)} of it: 2.6(N²−1)d(100MR(x))^d(1+η_x)x^{−1}e^{−¼p_0(x)} ≤ 2.6(N²−1)d(100ML)^d(log x^{−2})^{rd}(1+η_x)x^{A_0/2−1} → 0 as x → 0; bounded by 1 on (0, γ] for A_0 > 2 and γ small. With several components, the product rule gives Σ_i (per-component cost) × Π_j (component factors); each summand uses its own component's e^{−¼p_0}, and the count of components is paid by the remaining (1.95)–(1.96) entropy margin. Result: the mismatch derivative is a term with the same structure as 3.4, 1/g-free. [P given (M-A)]
5.5 Status. This uses (M-A) at REAL couplings only (no complex u). (M-A) is [R] to (H−), and (H−) is [R] to (C1)–(C3); (C3) is Balaban's announced CMP 102 (189), which his own CMP 109/122 chain already uses (MA2_VERIFY §4). So the mismatch derivative adds no input beyond those already on the ledger.

## 6. The β-relevant part: surface terms of the running cutoffs inside the E-class integral [R to the G3 inputs]
6.1 Which cutoffs. Inside the small-field integral that defines E^{(k+1)} there are, besides GGAIN's χ_k, the CMP 119/122 cutoffs: the small-field cut at ε_k = g_kp_0(g_k) (CMP 119 (2.4); CMP 116's fixed-ε_1 χ_k is the CMP 109 "first version", SOURCES_D3 (f)), χ′_j of (1.27) at 2δ′_j, δ′_j = g_jA_1p_1(g_j), and χ′ of (1.82) on bond variables B′(b) (CMP 122 II p. 381 [V] prints the threshold as δ_j; HTHR2 (F3) reads |B(b)| ≥ g_j^{−1}δ′_j = A_1p_1(g_j); CMP 119 text layer gives δ_k = g_k(A_1/A_0)p_0(g_k), page not imaged). The tail bound of 6.2 holds for either reading. All are frozen at x* and act on physical variables gB̃-type (HTHR2 (F4)–(F5)), so in B units each is a ball |y_b| < t_b/g with a g-free t_b.
6.2 Surface term per cut bond [P, the GGAIN_VERIFY item 6 computation with these thresholds]. With y the one-bond variable, n = dim G = N² − 1, and a Gaussian-type one-bond marginal of rate c_b: |d/dg ∫1{g|y| < t}p(y)dy| ≤ O(1)g^{−1}T^{n}e^{−c_bT²}, T := t/g. On |g − x| ≤ ρ_0x/2, T ≈ (x/g)×(threshold/x):
 - ε-cut: T = (x/g)p_0(x); factor g^{−1}p_0(x)^ne^{−c p_0(x)²}.
 - χ′_j (1.27): T = 2(x/g)A_1p_1(x); tail rate γ_0 (HTHR2 (F2)); factor g^{−1}p_1^ne^{−cγ_0A_1²p_1(x)²}.
 - χ′ (1.82): tail exp(−R^{−d−5}p_1²) ≤ exp(−p_0(x)) under Balaban's "2p_1 − (d+5)r_0 > p_0" (HTHR2 (F3)); factor g^{−1}poly(p_1)e^{−p_0(x)}.
 In each case g^{−1}×(polylog)×e^{−c·p_0(x)} or better. By 3.3 this is ≤ O(1)x^{2cA_0−1}polylog(x) ≤ 1 for A_0 large: uniform on (0, γ], and o(1) as γ → 0. Each marked surface bond is a large-field-type (P-) bond, so the summation over marked bonds runs inside Balaban's own large-field sum (the same place as GGAIN ρ_χ).
6.3 What it rests on. The same inputs as GGAIN Lemma G3 (sharp route): the one-bond conditional marginal of the α_5-perturbed complex integrand on the sphere (coarea), i.e. (Q) with c_− [SOURCES_Q: reduced to ‖C*Δ_kC‖ ≤ γ_1], and the margin (M_r). For χ′_j the variable is the link V_jV_Z^{−1} − 1, a smooth function of B̃; its level set is a smooth hypersurface near the identity (|·| ≈ 2δ′ ≪ 1), so the coarea step is the same. [R; smooth-χ̂ alternative as in G3, changes the construction]
6.4 Comparison with GGAIN ρ_χ. With CMP 116's fixed ε_1 the gain was e^{−γ_2ε_1²/g²}. With running thresholds it is e^{−c p_0(x)²} or e^{−p_0(x)}: much weaker as g → 0, but it still beats the single 1/g by 3.3. So the 1/g-freeness of S_0 survives the change from fixed ε_1 to running thresholds. This is the only place where the switch to running thresholds matters for the first derivative.

## 7. Uniformity in k (plan step 4) [P]
Every absorption condition used above is POINTWISE in x = x*_k:
 (U1) x^{−1}e^{−½p_0(x)} ≤ x^{A_0−1} ≤ 1 (3.3–3.4);
 (U2) (N²−1)d(100MR(x))^d(1+η_x)x^{−1}e^{−¼p_0(x)} ≤ 1 (3.5, 5.4);
 (U3) x^{−1}polylog(x)e^{−cp_0(x)} ≤ 1 (6.2);
 (U4) Balaban's p. 389 inequality with κ → κ′ (3.1).
Each holds for all x ∈ (0, γ] once A_0 is large and γ is small. Balaban's (0.31) gives x*_k ≤ γ for all k. So the constants are uniform in k and K. The unboundedness of sup_kR_k (HHOL_LF_VERIFY V2: R_k largest at k = 0, ~ (log K)^r) does not matter: R(x) is always compared with p_0(x) at the same x. The derivative point g satisfies |g − x| ≤ ρ_0x/2, so x/g ∈ [0.95, 1.05]: the thresholds frozen at x are within a fixed factor of those at g. The earlier-scale operations T_h (h < k) inside T′_k are history slots; the own-slot derivative does not act on them, and their factors carry p_0(x*_h) ≥ p_0(x*_k) (x*_h ≤ x*_k), which only helps.

## 8. Combined statement: first-derivative (B2) for the FULL step (plan step 5)
Theorem B2-full [R]. Frozen convention at x* (thresholds, R, N, partitions, R-ratio weight). For every k, every g_k ∈ (0, γ] with |g_k − x*_k| ≤ ρ_0x*_k/2, every volume, and (U,J) in the step's analyticity domains:
 (a) E-class: |∂_{g_k}E^{(k+1)}(X)| ≤ (S_0 + S_0^{cut})e^{−(1−10δ)½Lκd_{k+1}(X)}; S_0 = GGAIN §4.4; S_0^{cut} = O(1)C_3·Σ_{cuts}(6.2 factor)/ε_1-type, ≤ O(1)C_3 for A_0 large.
 (b) R′: |∂_{g_k}R′^{(k)}(X)| ≤ 20γ^{2A_0−1}e^{−κd_k(X)}.
 (c) B′: |∂_{g_k}B′^{(k)}(X)| ≤ [20γ^{A_0−1}c_0 + O(1)S_0/(C_3ε_1)]·α^{1/3}e^{−(1+½β)κd_{k,∪Y_i}(X)} (c_1 = α^{1/3} case; the c_1 = e^{−p_0} case as (b)).
 (d) Fixed components: |∂_{g_k}T_k(Y_i)1| ≤ 20γ^{A_0−1}e^{−½p_0(x*_k)}.
 (e) Mismatch: inside (b)–(d), with the per-component cost of §5.
 (f) β: |∂β_{k+1}/∂g_k| ≤ C_Π(S_0 + S_0^{cut}) =: C_β^{full}. If 2.2 [I] fails and R′/B′ terms reach Π, add C_Π·(20 + O(1)S_0/(C_3ε_1)): still uniform.
All constants are free of 1/g, of k, K, and the volume. None of them contains ε_1 in the denominator beyond GGAIN's ε_1-cancelling form.
Inputs it rests on (exact list):
 I1 GGAIN Theorem B2-unif: Lemmas G1, G2 [P], G3 [R: (Q) with c_−, or smooth χ̂], (M_r) [R].
 I2 HHOL_LF §4.3–4.5: finite-volume holomorphy and modulus domination on D, γ_0 → 0.826γ_0 [P per HHOL_LF_VERIFY V6].
 I3 (M-B): Balaban's (1.80)–(1.99) bookkeeping holds with γ_0 → 0.826γ_0, O(1) → 2O(1), κ → κ′ [R].
 I4 (M-A) with (M-A′): MA Theorem at real couplings, MA2 fix (2.1) [R to (H−) → (C1)–(C3), (C3) = CMP 102 (189)].
 I5 The frozen convention (M-D) [HHOL_LF_VERIFY V4: consistent with D3 (L0); (B2-full) is a statement about the frozen map].
 I6 The printed forms (1.73), (1.89), (1.91)–(1.102) of CMP 122 II, and CMP 119 (2.4) with p_0 a positive integer and A_0 large [V this file].
 I7 For (f) only: 2.2 [I] (β from E-class terms only). Not load-bearing for uniformity (see (f)).
 I8 Kotecký–Preiss derivative step at the exponentiated level [R, standard].
Not covered: (1.103)–(1.104) normalized bracket at complex u (O4-type; off the main route, needed by neither (f) nor Lemma HH); the endpoint g = 0 (C¹ at 0); higher derivatives.

## 9. Regrade of the real uniform (H-hist) (plan step 6)
Chain: Lemma HH (SOURCES_HHIST §6) needs (B1) [V, (0.29)], (B2) [now Theorem B2-full, §8], (SM) [Theorem SM, SOURCES_SM, R], and θ < 1 − L^{−α} [Balaban-type smallness]. HHIST's open item "large-field contributions (CMP 122) … not covered" is now reduced: at the own-slot level by §3–§6, and for β by §2.2 + §6.
History hops through R-terms. If R′^{(i)}-terms feed later E-class terms (fails 2.2), Lemma HH's (SM) must also be Lipschitz in R-inputs. Their sizes are (x*_j)^{κ_0} (HHOL_LF 5.3, F2′), and the counting fact holds with the e^{−p_0} per-cube factor; so the hop constant only improves. [I, not written out]
On (H-thr). §8 is proved directly for the frozen map, with no threshold-motion term. HHOL_LF_VERIFY V4 wrote "frozen-map C¹ at x* = Balaban's (H-hist) + (H-thr)" because it planned to import Balaban's derivative. With §8 the frozen-map derivative is bounded without passing through Balaban's map. Whether (H-thr) can then be dropped from the whole chain depends on whether any later step needs Balaban's own β_j off the base point (e.g. (E) at real points ≠ x*). Not checked. [I]
Regrade. Real uniform (H-hist): from "binding open" to "REDUCED [R]" to the named inputs I1–I8 + (SM). No obstruction found. The binding analytic inputs are now: (Q)/c_− for the sharp-cut surface terms (G3 and §6), (M_r), CMP 102 (189) via (M-A), and the (M-B) bookkeeping. Caveat: this file is unverified, and 2.2 is [I].

## 10. Ledger (authoritative)
[V this file] CMP 119 p. 244 (p_0 a positive integer), p. 255 (2.4)–(2.6); CMP 122 II pp. 380–381 (1.73)–(1.75) and large-field factors; pp. 384–390 (1.80)–(1.102), incl. the p. 385 base condition (p_0² ≳ R^{d+2}) and p. 389 inequality.
[P] Cauchy step and 1/g absorption: x^{−1}e^{−θp_0(x)} ≤ x^{2θA_0−1} (3.3). Brief's "p_0 ≳ R^{d+2}" CORRECTED to p_0² ≳ R^{d+2} (p. 385) and NOT NEEDED for the 1/g step.
[P given 3.1] R′, B′ (q ≥ 1), T_k(Y_i) own-slot derivatives uniform, S_0^{LF} ≤ 20γ^{A_0−1} (3.4).
[R to GGAIN] B′ with q = 0 (pure V-terms): marked-vertex real derivative (3.4(iii)).
[P] Real-derivative cross-check: brief's mechanism works, but the normalization term n/(2u) is extensive, giving a per-site g^{−1}; absorbed per MR-cube (3.5). CORRECTION to the brief.
[P] Volume uniformity per activity; no large-field cluster expansion (§4).
[P given (M-A)] Mismatch derivative ≤ 2.6n_i(1+η_x)g^{−1}×(average), absorbed by e^{−¼p_0} of the same T′ (§5); real couplings only.
[R to G3 inputs] Surface terms of the running cutoffs ε_k, χ′_j (1.27), χ′ (1.82): g^{−1}polylog·e^{−cp_0}, uniform (§6).
[P] k-uniformity: all conditions pointwise in x*_k ≤ γ (§7).
[I] 2.2: β sees only E-class terms. Not load-bearing (§8(f)).
[I] (H-thr) possibly removable for the frozen chain (§9).
[R] I1–I8, (SM). Regrade: real uniform (H-hist) REDUCED [R]; unverified.
[open] (1.103) at complex u; C¹ at g = 0; higher derivatives; numerical constants (O(1)'s of Balaban).
Firewall kept.
