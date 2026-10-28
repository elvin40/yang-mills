# SOURCES_HTHR2 — (H-thr) after M2prime, M4, M5

Status: complete (2026-10-27). Unverified.
Author: Claude (Opus), unverified. Firewall respected: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read. No existing file edited.
Inputs read in full: SOURCES_HTHR.md, SOURCES_HTHR_VERIFY.md, SOURCES_W4.md (§1–§8), SOURCES_D2.md §6–§7.

## 0. Source facts read in this session [V = page image read here]

(F1) [V] CMP 122 II p. 380, (1.73)–(1.75). These bound T′_k(X,(U,J))F by T′_k(X,(U,0))1 · sup e^{|σ|} sup|F|. Then: "Consider large field characteristic functions introduced in the j-th step." Per-function factors, all TAIL factors of a positive Gaussian-type integral:
 χ_j^c(P_j): exp(−γ_0 (1/2g_j²)(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|);
 χ_j^c(Q_j): exp(−½γ_0 g_j^{−2}(2δ_j)²(LM_2R_j)^{−2}|Q_j|), "by expanding the Wilson action locally in the approximate fluctuation field, and using the positivity bound for the resulting quadratic form".
(F2) [V] CMP 122 II p. 381. "The function 1 − χ′_m, where χ′_m is given by (1.27) [IV], yields the factor exp(−γ_0 g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0 4(1+β_0)^{−2}A_1²p_1²(g_j)) ≤ exp(−γ_0A_1²p_1²(g_j))." No R_j loss for this cutoff.
(F3) [V] CMP 122 II p. 383, (1.77)–(1.78), for the cutoff χ′ of (1.82) [IV]:
 (1.77) ⟨DH″B, ζDH″B⟩ > γ_0 Σ_{p′∈B_0∩Ω″~_{h+1}} |(∂B)(p′)|² − O(1)A_0A_1²B_3^4B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j. "We assume that g_j is sufficiently small, so that the constant on the right-hand side above is small, or O(1)."
 (1.78) |B(b)|² ≤ 6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2} Σ_{p′} |(∂B)(p′)|².
 "We take the bond b, for which |B(b)| ≥ g_j^{−1}δ′_j = A_1p_1(g_j), and the inequalities (1.77), (1.78) yield the following large field factor: exp(−½γ_0[6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}]^{−1}A_1²p_1(g_j)) < exp(−R_j^{−d−5}p_1²(g_j)). This is the largest factor among all the small factors ... We assume that 2p_1 − (d+5)r_0 > p_0, and we estimate the factors by exp(−p_0(g_j))."
 Typo noted (300 dpi crop): the middle expression prints A_1²p_1(g_j); from |B(b)|² ≥ A_1²p_1² it must be A_1²p_1²(g_j), as the right side shows.
(F4) [V] CMP 122 I p. 182, (1.27): χ′_j = χ({|V_j(b)(V_Z^{(j)}(b))^{−1} − 1| < 2δ′_j for b ∈ (Ω^c_{j+1}\Z′_{j+1})^{(j)*}}). The variable is the fluctuation link relative to the background V_Z^{(j)}. p. 183 (via HTHR_VERIFY Step 6, image read there): δ′_j = g_jA_1p_1(g_j), p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0; χ′_j stays inside the integral (1.25).
(F5) [V] CMP 122 I p. 196, (1.82): χ′ = χ({|B′(b)| < δ′_k for b ∈ B_0}), V′ = exp iB′, introduced in the preparatory steps of the R operation, inside each component of Z.
(F6) [text, clean OCR] CMP 119 p. 259–260, (2.28): the localized terms E^{(j)}(X,(U,J)) are analytic on U^c_j(X, α_{0,j}, α_{1,j}) with "α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, where q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large". CMP 109 p. 262, (1.13): the complex direction is U = U′U with U′ = exp iξA′, "|A′|, |∇_ξA′| < α_1 on X"; (1.18): |E^{(j)}(X,·)| ≤ E_0 exp(−κd_j(X)).
Consequence of F2/F3. Two running-threshold cutoffs exist. (a) χ′_j of (1.27): inside the small-field integral (F4); tail exponent γ_0A_1²(log g^{−2})^{2p_1}, constant γ_0, no R loss. (b) χ′ of (1.82): R-operation preparation; tail exponent R_j^{−(d+5)}(log g^{−2})^{2p_1}. Case (b) is the worst. Below I use (b) for all cutoffs; case (a) only improves constants.

## 1. M2′: shell bound from Balaban's block bound

Notation. s = threshold coupling (u = 1/g² units). Scaled threshold θ(s) := A_1p_1 = A_1(log s)^{p_1} (F3: g^{−1}δ′ = A_1p_1(g)). K_R := 6(d+3)(100M(L+1)N^{β_0}R)^{d+2}. R, N frozen at reference values (L3 of HTHR). R is the smallest power of L ≥ (log u_ref)^{r_0} (HTHR_VERIFY Step 7), so R ≤ L(log u_ref)^{r_0}.

### 1.1 Lemma T (tail form; uses only the printed (1.77)–(1.78)) [proved given F3 and M3]
Write the shell indicator at bond b between thresholds θ_1 = θ(s_1), θ_2 = θ(s_2): 1_{shell} := |χ(|B(b)| < θ_1) − χ(|B(b)| < θ_2)| ≤ 1 − χ(|B(b)| < θ_lo), θ_lo := min(θ_1, θ_2).
So the shell indicator is dominated by a large-field function 1 − χ′ at the lower threshold. That is exactly the function for which Balaban derives the factor in F3.
Telescoping over bonds: Π_bχ_1(b) − Π_bχ_2(b) = Σ_b [Π_{b′<b}χ_1(b′)](χ_1(b) − χ_2(b))[Π_{b′>b}χ_2(b′)]. Each term has one shell indicator. The other factors are 0/1 cutoffs. They are bounded by 1, as Balaban bounds them in his activity estimates.
Hence each localized activity difference is ≤ (Balaban's activity bound) × Σ_{b∈X} exp(−R^{−(d+5)}p_1²(s_lo)). The bond count |X| ≤ C(MR)^d is a polynomial in log s (M3).
Explicit R loss. From R ≤ L(log u_ref)^{r_0} and |s − u_ref| ≤ 3r with log s large: (log u_ref)/(log s) ≤ 1 + 3r/(s log s) ≤ 2^{1/((d+5)r_0)} for γ small. So
 R^{−(d+5)}p_1²(s) ≥ κ_2 (log s)^q,  κ_2 := ½L^{−(d+5)},  q := 2p_1 − (d+5)r_0.
The loss is the factor (log s)^{−(d+5)r_0}·L^{−(d+5)}/2 in the exponent. It is absorbed because Balaban assumes q > p_0 ≥ 1 (F3). Then exp(−κ_2(log s)^q) decays faster than every power of s, and it beats every polynomial prefactor in s and log s. If one prefers Balaban's own final form: κ_2(log s)^q ≥ A_0(log s)^{p_0} = p_0(g) for s large (q > p_0), so exp(−p_0(g)) is also available, with summability for p_0 ≥ 2 (or p_0 = 1 with A_0 > 3 + a, see §3).
Where the absorption of the other constants happens. F3 needs K_R/(½γ_0A_1²) ≤ R^{d+5}, i.e. R³ ≥ 12(d+3)(100M(L+1))^{d+2}N^{β_0(d+2)}/(γ_0A_1²). Here N ≍ (v/log L)log log s (CMP 122 II p. 367 text) and R ≍ (log s)^{r_0}. So this holds for γ small. It is Balaban's own step from the middle to the right side of F3.

### 1.2 Lemma D (density form, as the brief asked) [proved for a Gaussian leading form; the non-Gaussian rest reduced]
Setting. Gauge-fixed fluctuation field B ∈ E (finite-dim real space). Leading form Q_lead(B) = ⟨DH″B, ζDH″B⟩ (without the first-order term), Q_lead ≥ γ_0Σ_{p′}|∂B(p′)|² on E (F3 (1.77)); the first-order term Q_1 is bounded on the support by the constant in (1.77), so e^{−Q/2} = e^{−Q_lead/2}·e^{−Q_1/2} with e^{|Q_1|/2} ≤ C. Let μ be the centered Gaussian on E with form Q_lead.
Claim. B(b) ∈ ℝ^n (n = dim G) has covariance Σ_b with σ_max² := ‖Σ_b‖ ≤ K_R/γ_0.
Proof. For a unit vector e ∈ ℝ^n: e·Σ_be = ⟨ℓ, Q_lead^{−1}ℓ⟩ with ℓ(B) = e·B(b), and ⟨ℓ, Q^{−1}ℓ⟩ = sup_{B≠0} ℓ(B)²/Q(B) (Cauchy–Schwarz in the Q inner product). By (1.78) and (1.77): ℓ(B)² ≤ |B(b)|² ≤ K_RΣ|∂B|² ≤ (K_R/γ_0)Q_lead(B). ∎
Density. If also σ_min² := min eig Σ_b > 0, the density of |B(b)| at θ is ρ_b(θ) ≤ |S^{n−1}|(2π)^{−n/2}σ_min^{−n}θ^{n−1}exp(−θ²/(2σ_max²)) ≤ C_nσ_min^{−n}θ^{n−1}exp(−γ_0θ²/(2K_R)). The exponent equals the F3 exponent; with §1.1 it is ≤ exp(−κ_2(log s)^q).
Shell term. For bounded measurable G (signed, complex, other cutoffs included): |∂_s∫χ(|B(b)| < θ(s)) G e^{−Q/2}| = |θ′(s)|·|∫δ(|B(b)| − θ)G e^{−Q/2}| ≤ C‖G‖_∞ Z_lead |θ′(s)| ρ_b(θ(s)). Here θ′(s) = A_1p_1(log s)^{p_1−1}/s, so the shell width brings the factor s^{−1} = g². Per cutoff:
 |θ′|ρ_b ≤ C σ_min^{−n} s^{−1}(log s)^{np_1−1} exp(−κ_2(log s)^q).
σ_min. Any lower bound σ_min ≥ s^{−C} suffices (polynomial). One test field with B(b) = e gives e·Σ_be ≥ 1/Q_lead(B_test) ≥ 1/‖Q_lead‖·‖B_test‖^{−2}. An upper bound on the form is standard in Balaban's propagator estimates. [reduced; not read on the pages]
Status. Lemma D gives the density version of F3 for the (1.82) cutoff on the linear variable B′(b). For the (1.27) cutoff the variable |V V_Z^{−1} − 1| = |e^{iB} − 1| is nonlinear; coarea with |∇ψ| ≥ ½ near 0 gives the same bound [reduced]. Lemma D is NOT needed below: Lemma T suffices (§3).

## 2. M4: extraction cost

Statement (HTHR §2): B_j is read off a local E-class term by a Cauchy estimate in the background field on its analyticity domain; cost ≤ C s^{a_1}(log s)^{P_1}.
Claim. M4 holds with a_1 = 1, P_1 = −2q_1 < 0, for the threshold differences used in §3. [reduced to F6 and two structural facts below]
Proof. (i) Domain. By F6, E^{(j)}(X,(U,J)) is analytic for U = exp(iξA′)U with |A′|, |∇_ξA′| < α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, and |E^{(j)}(X)| ≤ E_0e^{−κd_j(X)} there (CMP 109 (1.18)).
(ii) Extraction is linear. The coupling increment is a fixed second-order Taylor coefficient at A′ = 0 of the localized translation-invariant terms (CMP 109 Sect. 4–5, Ward identities (4.7)–(4.9); D2 §4). So the extracted coefficient of the difference E(ū) − E(w) is the difference of the extracted coefficients.
(iii) Cauchy. For f(z) := E(exp(izξA′)U) with |A′|, |∇A′| ≤ 1 pointwise, f is analytic on |z| < α_1, so |f″(0)| ≤ 2 sup|f|/α_1². The second-order term of the action is ½u|∂A′|² per unit cell (dimensionless units), so the increment of u from X is ≤ C sup|E^{(j)}(X)|/α_1². Summing over X ∋ a fixed plaquette uses Σ_X e^{−κd(X)} = O(1) (CMP 116 (1.26)).
 Cost: α_1^{−2} = s·C_1^{−2}(log s)^{−2q_1}. So a_1 = 1, P_1 = −2q_1.
(iv) The threshold difference stays on the same domain. After Balaban's change of variables V_j = e^{iB}V_Z^{(j)}, the cutoffs (1.27), (1.82) act on the integration variable B only, not on the background (F4, F5). The integrand is analytic in A′; a 0/1 function of B does not change this (dominated convergence; same as W4 §2.1 for χ_k). So E(ū) − E(w) is analytic on the same domain, and Lemma T bounds its sup there.
Open inside M4. (a) The units: I checked only the displayed radii (F6), not the scaling of A′ against the ½u|∂A′|² normalization line by line. A different convention changes a_1 by a fixed integer; any polynomial in s is harmless. (b) Whether the complex background in U^c keeps the Lemma T tail factor: the tail uses positivity of Q_lead, which is a real statement. On the complex domain one needs |e^{−Q(complex)}| ≤ e^{−Q_lead(real)/2 + small}; Balaban's (1.73)–(1.75) do exactly this: |T′(X,(U,J))F| ≤ T′(X,(U,0))|F|·sup e^{|σ|}, σ first order in A′, J (F1). So the real tail bound transfers to the complex domain with factor e^{3 sup|σ|} = O(1). [reduced, quote F1]

## 3. M5 removed: real interpolation in c (D2 Lemma 7.1(a))

Notation as HTHR §1: Δ_j(c) = B_j(u(c); ū) − β_j(u(c)), β_j(u) := B_j(u; u), c ∈ I := [−2r, 2r] real, A := Σ_m a_m, V_j := max_{i≤j}|v_i|, W_j := max_{i≤j}|v_i′| (v = du/dc). Δ_0 ≡ 0.
Idea. Do not differentiate the shell. Bound Δ_j itself (zero order: only thresholds, no history derivative) and bound Δ_j″ crudely (uniform, not small) by the two theories separately. Lemma 7.1(a) on I (a = 2r) then gives
 ‖Δ_j′‖_I ≤ 2(‖Δ_j‖_I‖Δ_j″‖_I)^{1/2} + ‖Δ_j‖_I/r.     (3.1)
I re-derived 7.1(a): Taylor at x ± h, h = min(a, 2(‖g‖/‖g″‖)^{1/2}); both cases give (3.1). [proved]

### 3.1 Zero order [proved given Lemma T, M3, M4]
Telescope over the steps i < j whose thresholds differ (ū_i versus u_i(c)). By Lemma T, M3 (history weight a_{j−1−i}, bond count polynomial), M4 (a_1 = 1):
 |Δ_j(c)| ≤ Σ_{i<j} a_{j−1−i} Φ_T*(u_i),  Φ_T(s) := C_T s (log s)^{P_T} exp(−κ_2(log s)^q),
with Φ_T*(s) := sup_{|s′−s|≤3r}Φ_T(s′), P_T := d r_0 (bond count) + 0 (M4), C_T from M, L, E_0, C_1. Under (G2′) below, Φ_T* ≤ 2Φ_T. Φ_T is decreasing on [γ^{−2} − 3r, ∞) under (G1′), and u_i ≥ u_{j−1} for i < j (HBETA (E)). So
 ‖Δ_j‖_I ≤ 2AΦ_T(u_{j−1}).     (3.2)
No shell-width factor is used. With Lemma D one gets an extra factor 3r·s^{−1}; it is not needed.

### 3.2 Second order [reduced to (H-hist2)]
Hypothesis (H-hist2). For F ∈ {B_j(·; ū), β_j}, on the set |w − ū| ≤ 3r (componentwise):
 Σ_l|∂_{w_l}F| ≤ ε′_j,  Σ_{l,m}|∂_{w_l}∂_{w_m}F| ≤ ε″_j,  Σ_j ε′_j ≤ x′,  Σ_j ε″_j ≤ x″.
For β_j these are derivatives of Balaban's own function of the history (thresholds running with it); no split into w and s is made, so no mixed ∂_s∂_w term appears.
Gronwall for W. v_j′ = v_{j−1}′ − (B_j(c))″ with v_0′ = 0, and (B_j(c))″ = Σ∂²B_j v v + Σ∂B_j v′. With V ≤ 3/2 (Lemma H′): W_j ≤ (1 + ε′_j)W_{j−1} + (9/4)ε″_j, so W := sup_j W_j ≤ (9/4)e^{x′}x″.
Then ‖Δ_j″‖_I ≤ |(B_j(c))″| + |(β_j(u(c)))″| ≤ D_j := (9/2)ε″_j + 2ε′_jW, and D := sup_j D_j ≤ (9/2)sup_j ε″_j + 2(sup_j ε′_j)W. Any uniform bound suffices; D is even small.
Why this is the real-source route. The order-2 input is a uniform bound, with no exponential smallness. If (H-hist) is proved by Cauchy in the history (holomorphy), (H-hist2) is free: |∂²| ≤ 2 sup/ρ². If (H-hist) is proved by real methods, (H-hist2) needs the same proof at one order higher. In both cases the exponentially small quantity (3.2) uses NO history derivative. That is the decoupling M5 needed.
On the hint "differentiate the shell width twice". ∂_s² of a cutoff gives θ″δ + θ′²δ′; with Lemma D, |θ″| ≤ 2A_1p_1(log s)^{p_1−1}s^{−2} and |ρ_b′(θ)| ≤ (n/θ + θ/σ_min²)·(density bound), so the pure threshold part of β_j″ is ≤ polynomial × exp(−κ_2(log s)^q) [proved given Lemma D]. But the total β_j″ also contains 2∂_s∂_wB_j, i.e. M5 again. So the shell route at order 2 does not remove M5; treating β_j as one function in (H-hist2) does.

### 3.3 (H-thr), pointwise and summed [proved given §3.1, §3.2]
Insert (3.2) and D into (3.1):
 sup_{|c|≤2r}|Δ_j′(c)| ≤ η_j := 2(2AD)^{1/2} Φ_T(u_{j−1})^{1/2} + (2A/r) Φ_T(u_{j−1}).     (3.3)
Sum. u_{j−1} ≥ γ^{−2} + βm with m = K − j + 1 ≥ 1 (HBETA (E)). Let Ψ := Φ_T^{1/2}. HTHR §4 with h(y) := y + log Ψ(e^y): Σ_{m≥1}Ψ(γ^{−2} + βm) ≤ β^{−1}∫_{γ^{−2}}^∞Ψ ≤ (γ^{−2}/β)Ψ(γ^{−2}). Same for Φ_T. So, uniformly in K,
 x_thr := Σ_{j≤K} sup_c|Δ_j′| ≤ (γ^{−2}/β)[2(2ADC_T)^{1/2} γ^{−1}(log γ^{−2})^{P_T/2} e^{−(κ_2/2)(log γ^{−2})^q} + (2AC_T/r) γ^{−2}(log γ^{−2})^{P_T} e^{−κ_2(log γ^{−2})^q}].     (3.4)
The γ^{−2}/β factor is kept explicit. The first term dominates: the square root halves κ_2.
Conditions on γ (all "γ small", independent of j, K, c):
 (G1′) y_0 := log(γ^{−2} − 3r) satisfies (qκ_2/2)y^{q−1} ≥ 5/2 + P_T/(2y) for y ≥ y_0. This gives h′ ≤ −1 for Ψ and for Φ_T, and monotone decrease. Needs q > 1: true, q > p_0 ≥ 1.
 (G2′) 3r(1 + P_T + qκ_2(log(s + 3r))^{q−1})/(s − 3r) ≤ ln 2 for s ≥ γ^{−2} (gives Φ_T* ≤ 2Φ_T).
 (G3′) right side of (3.4) ≤ ¼.
Then Lemma H′ (HTHR §5) holds unchanged with η_j from (3.3): Σ|B_j′| ≤ ½, ½ ≤ |v_k| ≤ 3/2, g_k(c) ≤ γ. The W-Gronwall of §3.2 runs inside the same induction (it uses only V ≤ 3/2 and (H-hist2)), so there is no circularity.
Size warning. κ_2 = ½L^{−(d+5)} is small (d = 4, L = 2: κ_2 ≈ 10^{−3}). For q = 2, (G1′) needs log γ^{−2} ≥ 5/(qκ_2) ≈ 2.5·10³. Mathematically harmless ("γ small"); it shows the R loss costs a lot in the constant, nothing in the form.

## 4. Numerical checks [num] (python -I inline, no files kept)

(N1) Integral bound ∫_{y_0}^∞ e^{h(y)}dy ≤ e^{h(y_0)}, h(y) = y + a y + P log y − κy^q (Ψ-type, q non-integer allowed). Ratio integral/bound (scipy quad, 400 units of y):
 (a,P,κ,q) = (0.5,2,0.5,1.5): 0.555, 0.311, 0.193 at y_0 = 20, 40, 80 (G1 holds).
 (0.5,2,0.05,2.0): 1.8 at y_0 = 20 (G1 fails), 0.402, 0.154 at 40, 80 (G1 holds).
 (1,4,1,1.2): 8.22, 2.27, 1.19 at 20, 40, 80 (G1 fails at all three).
So the bound holds exactly where the h′ ≤ −1 condition holds, and fails where it fails. The discrete sum Σ_{m≥1} ≤ β^{−1}∫ is monotonicity; HTHR §4 and HTHR_VERIFY Step 8 already checked it with brute-force sums.
(N2) Lemma 7.1(a): 300 random trigonometric g on [−0.4, 0.4]: max of ‖g′‖/(2(‖g‖‖g″‖)^{1/2} + 2‖g‖/a) = 0.487 ≤ 1.

## 5. Honest ledger

 L1 [V] Balaban's block bound read on the page images (F3): exp(−½γ_0K_R^{−1}A_1²p_1²) < exp(−R^{−d−5}p_1²), with the assumption 2p_1 − (d+5)r_0 > p_0. Printing typo p_1 → p_1² in the middle expression noted. The (1.27) cutoff has a better factor exp(−γ_0A_1²p_1²) with no R loss (F2).
 L2 [proved given F3, M3] Lemma T: the shell indicator is ≤ a large-field function 1 − χ at the lower threshold, so Balaban's printed TAIL factor bounds Δ_j itself. No density version is needed. R loss explicit: exponent ≥ κ_2(log s)^q, κ_2 = ½L^{−(d+5)}, q = 2p_1 − (d+5)r_0 > p_0 ≥ 1. Absorption of K_R into R^{d+5} needs R³ ≳ N^{β_0(d+2)}, true for γ small.
 L3 [proved for the Gaussian leading form; reduced otherwise] Lemma D (density form of the block bound): σ_max² ≤ K_R/γ_0 by duality from (1.77)–(1.78). Needs a polynomial lower bound on σ_min (upper bound on the form, not read) and the coarea step for the nonlinear (1.27) variable. Not used in the final chain.
 L4 [reduced] M4 with a_1 = 1, P_1 = −2q_1 from the analyticity radius α_1 = g C_1(log g^{−2})^{q_1} (CMP 119 (2.28), CMP 109 (1.13)). Open: unit conventions checked only through the displayed radii; transfer of the real tail to the complex background via (1.73)–(1.75) (quoted, F1), not traced through the cluster expansion.
 L5 [proved given (H-hist2)] M5 removed. Lemma 7.1(a) on Δ_j(c) gives ‖Δ_j′‖ ≤ 2(‖Δ_j‖‖Δ_j″‖)^{1/2} + ‖Δ_j‖/r. ‖Δ_j‖ is exponentially small with no history derivative (L2). ‖Δ_j″‖ needs only a uniform bound, from (H-hist2) applied to B_j(·;ū) and to β_j as whole functions; no mixed ∂_s∂_w term. Cost: κ_2 → κ_2/2 in the decay.
 L6 [NEW open input] (H-hist2): Σ_l|∂_wF| ≤ ε′_j, Σ|∂²_wF| ≤ ε″_j with Σε′, Σε″ < ∞, for F = B_j(·;ū) (frozen thresholds, |w − ū| ≤ 3r) and F = β_j. Same status as (H-hist) one order higher; free if (H-hist) is proved by Cauchy in the history. Summability (not just boundedness) is needed, or W grows with j and (3.4) loses uniformity in K.
 L7 [not useful] Shell route at order 2 ("differentiate the shell width twice"): the pure threshold part of β_j″ is exponentially small (Lemma D), but β_j″ also contains 2∂_s∂_wB_j, which is M5 again. So that route does not remove M5; L5 does.
 L8 [proved] Summation (3.4) uniform in K with the explicit γ^{−2}/β factor; conditions (G1′)–(G3′); numerics §4. Convergence needs q > 1, which Balaban's assumption q > p_0 ≥ 1 gives.
 L9 [reduced, unchanged from HTHR] M3: history weights a_m for threshold dependence; bond count ≤ C(MR)^d. Integer parameters R, N frozen (HTHR L3, confirmed as a convention by HTHR_VERIFY Step 9).
 L10 [open] Which E-class terms carry the (1.82) cutoff. It is introduced in the R-operation preparation (F5). If B_j comes only from regular-step E terms, only the (1.27) cutoff matters and κ_2(log s)^q can be replaced by γ_0A_1²(log s)^{2p_1} (F2; better). The worst case is used above, so the result holds either way.
 L11 [cosmetic] Size: κ_2 ≈ 10^{−3} for d = 4, L = 2; (G1′) needs log γ^{−2} ≳ 2.5·10³ when q = 2.
Net status. (H-thr) is proved in the form (3.3)–(3.4), conditional on M3, M4 (reduced, quotes F1, F6), (H-hist2) (new, order-2 version of (H-hist)), and the frozen-integer convention. M2′ is replaced by Balaban's printed tail bound (no density needed). M5 (history holomorphy) is no longer needed. Updated constant: x_thr ≤ 2(2ADC_T)^{1/2}β^{−1}γ^{−3}(log γ^{−2})^{P_T/2}exp(−(κ_2/2)(log γ^{−2})^q) + lower order. This is not in Balaban. Needs an independent verifier.
