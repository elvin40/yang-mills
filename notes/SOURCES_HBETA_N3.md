# SOURCES_HBETA_N3 — the strip bound |δw_k| ≤ (3/2)τ (item N3)

Status 2026-10-27 (Claude, Opus; unverified). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 1. Statement of N3 as used [V: SOURCES_FX_O23 §4–§5, FX_O23_VERIFY items 1, 2, 5; SOURCES_HBETA §3(c)]
- Sourced weight at scale k (D3W8 normalization): w_k(f) = g_k^{−2} + d_B + d_S(f), source ADDITIVE, |d_S| ≤ 2r.
- Perturbation f → f + ζ, ‖ζ‖_∞ ≤ τ, complex, any support. δw_k := w_k(f + ζ) − w_k(f).
- N3: |δw_k| ≤ (3/2)τ, uniformly in k (and ε). Used in O3 Step 1 (modulus domination: θ′ = (3/2)τγ²) and O2 choice B (σ_W bound).
- Origin of the constant: HBETA Lemma H gives |v_k| ≤ 3/2 for v_k = du_k/dc, c = shift of u_0 = 1/g_0², REAL c only. N3 is that derivative bound integrated along a complex segment. HBETA §3(c) leaves complex c open: it needs β_j holomorphic on the strip |Im u_i| ≤ 3r with Re β_j ≥ β, |β_j| ≤ β′ and (1.1) unchanged.
- Normalization: τ is in the units of u = g^{−2} (additive shift of the weight), NOT relative. c and τ are both shifts of u. The scale-0 shift is δw_0 = ζ (per plaquette), |δw_0| ≤ τ. The relative size is |δw_k| g_k² ≤ (3/2)τγ². So the brief's "δw_0 = g^{−2}τ f_p" (multiplicative source) is not the convention used; FX_O23 §1 and VERIFY item 2 state that both conventions give the same relative bound. Settled in §3 below.

## 2. Reduction of N3 to a statement about the constant-source flow [proved, from D3 (1.a), D2C booking h ≡ 0]
- Sources read [V]: SOURCES_D3 §1.1 (1.a), §1.2 (L7), (iv); SOURCES_D3R §1.1–§1.4; SOURCES_D3W8 §1.1; SOURCES_D2C §5.3; THEOREM2 (0.31), §3a; SOURCES_W4 §2–§6.
- Scale 0: w_0(x) = g_0^{−2} − f(x). The source is an additive shift of u = g^{−2}. So τ is in u-units, and δw_0 = −ζ, |δw_0| ≤ τ. The brief's multiplicative form (1 + τf_p) gives δw_0 = g_0^{−2}τf_p, i.e. τ_add = g_0^{−2}τ_mult. That is not the convention of D3/D3W8/FX_O23. In it, the relative shift τg_0² → 0 as ε → 0, so a bound in the additive convention is the stronger one. Settled: additive, absolute u-units.
- Last domain (φ_j ≡ 1 since the last reset): w_k(x) = u_k(f(x)), u_k(c) the constant-source trajectory u_0(c) = g_0^{−2} − c, u_j = u_{j−1} − B_j(c). With h ≡ 0 (D2C §5.3), d_S = −f_k = w_k − g_k^{−2} − d_B, and d_B does not depend on f. So δw_k(x) = u_k(f(x) + ζ(x)) − u_k(f(x)): a pointwise function of the two values f(x), ζ(x). No gradient enters.
- Boundary layers and reset: w_k(x) = u_m(c) − Σ_{m<j≤k} B_j(c)φ_j(x), c = f(x), 0 ≤ φ_j ≤ 1. Then dw_k/dc = v_m − Σ_{j>m} B_j′φ_j and |dw_k/dc + 1| ≤ Σ_{j≤k}|B_j′|. So the same bound as on the last domain holds.
- Hence N3 ⇔ (N3′): for every k ≤ K, c ↦ u_k(c) and c ↦ B_j(c) are holomorphic on the rectangle Q := {|Re c| ≤ 2r, |Im c| ≤ τ}, and Σ_{j≤K}|B_j′(c)| ≤ ½ on Q. Then |v_k + 1| ≤ ½, and for real f(x) ∈ [−r, r], |ζ| ≤ τ ≤ r, the segment [f, f + ζ] lies in Q (Q is convex), so |δw_k| = |∫_f^{f+ζ} (dw_k/dc) dc| ≤ (3/2)τ.
- This is exactly HBETA §3(c): Lemma H for complex c. The real-c part is HBETA Lemma H [proved given (I), (E), (H-hist)].

## 3. Direction of the flow and where Σ g_j² enters [proved; corrects the brief]
- Direction. By (0.31), 1/g_k² = 1/g² + β log((L^kε)^{−1}) up to [β, β′]: u_k DECREASES in k, from u_0 ≈ g^{−2} + βK (fine lattice) to u_K = g^{−2} (unit scale). The brief's "g_j^{−2} = g_0^{−2} + c j log L" has the index reversed. With the correct direction, Σ_{k≤K} g_k² = Σ_k 1/u_k ≈ (1/β) log(u_0/u_K) ≈ (1/β) log(1 + βKg²). It diverges like log K = log log ε^{−1}.
- What the per-step factor is. The Gronwall factor per step is 1 + |∂β_j/∂u|, not 1 + |∂β_j/∂g|. dg/du = −½g³, so a C¹ bound in g gives 1 + O(g³), and Σ g_k³ ≤ 2γ/β (HBETA (2.2)). The factor 1 + Cg² of the brief appears only if one has holomorphy in g on a disc of radius ρg (relative) with a sup bound and NO real derivative bound: Cauchy then gives |∂_uβ| ≤ 2M/(ρu) = O(g²).
- The relative-size escape fails. With per-step 1 + Cg_k², |v_k| ≤ Π(1 + C/u_j) ≤ (u_0/u_k)^{C/β}·e^{Cγ²}. N3 is used only in relative form (θ′ = |δw|g_k² in O3; |σ_W| ∝ |δw|g_k²p_0²R_k^4 in O2). The relative size is τg_k²(u_0/u_k)^{C/β}. At the coarse end k = K this is τg²(1 + βKg²)^{C/β} → ∞ as K → ∞ for every C > 0. So measuring the shift against w_k does not save the pure-Cauchy route. The bound must come from a real derivative of size O(g³) per step.
- Why W4 does not give it. W4 is holomorphy in the input ACTIVITIES (radius 2E_0), not in the coupling. Routing c through the activities gives Cauchy |B_j′| ≤ 2 sup|B_j|/r per step (HBETA §4(d), D2 (4.b) remark), which is not summable at all. So the coupling-variable structure (I) is needed for complex c, as it is for real c.

## 4. Lemma N3 (complex Lemma H) [proved, given the inputs listed]

Inputs.
- (I), (E), (H-hist): as in HBETA §1, real histories.
- (H-hol) Relative-polydisc holomorphy. For every j and every real history x = (x_0, …, x_{j−1}) ∈ ]0, γ]^j, β_j extends holomorphically in (g_0, …, g_{j−1}) to P_ρ(x) := Π_i {|g_i − x_i| < ρx_i}, with |β_j| ≤ M there; ρ ∈ ]0, ½], M independent of j, x, K.
- (H-hist_C) The bound |∂β_j/∂g_i| ≤ C_1a_{j−1−i} of (H-hist) holds on the half polydisc P_{ρ/2}(x). For Balaban's one-argument form (A = 1, β_j = β_j(g_{j−1})) this FOLLOWS from (H-hol) + the real C¹ bound; see Step 0. For the history form see §5.
- (B-hol) c ↦ B_j(c) is holomorphic on a complex neighbourhood of [−2r − τ, 2r + τ] containing Q (D2 §6.1 holomorphy in the source; [reduced, not re-checked here]). With (H-hol), both sides of (I) are holomorphic in c on the connected set Q and agree on the real segment. By the identity theorem (I) then holds on Q. So no separate complex (I) is needed.

Conditions (with Y := 2τ).
 (a) 3r + (3/2)τ < g^{−2} − γ^{−2}   (g = g_K, the final coupling);
 (b) x_C := 2C_1′Aγ/β ≤ ln(3/2), with C_1′ := C_1 + 12MγY/ρ²   (one-argument case);
 (c) γ³C_1′Y ≤ β;
 (d) 2√2γ²Y ≤ ρ.
For τ ≤ r ≤ 1 and γ small all four hold. (b) is HBETA (2.3) with β → β/2 and C_1 → C_1′ ≤ 2C_1 when τ ≤ ρ²C_1/(24Mγ).

Statement. Under these inputs and conditions, for every K and every c ∈ Q = {|Re c| ≤ 2r, |Im c| ≤ τ}: all u_k(c) lie in D := {Re u ≥ γ^{−2}, |Im u| < Y}, Σ_{j≤K}|B_j′(c)| ≤ e^{x_C} − 1 ≤ ½, and ½ ≤ |v_k(c)| ≤ 3/2. Hence, by §2, N3 holds with the constant 3/2: |δw_k| ≤ (3/2)τ for all k ≤ K, all real f with ‖f‖_∞ ≤ r, all complex ζ with ‖ζ‖_∞ ≤ τ ≤ r.

Step 0 (complex derivative from real C¹ + holomorphy; one-argument case). Let u = x + iy ∈ D, g_r := x^{−1/2} ≤ γ, z := u^{−1/2} (principal branch). For |s| ≤ ½, |(1 + s)^{−1/2} − 1| ≤ √2|s|. With s = iy/x, |s| ≤ γ²Y ≤ ½: |z − g_r| ≤ √2g_r y/x = √2g_r³|y|. By (d), √2g_r²Y ≤ ρ/2, so z ∈ D(g_r, ρg_r/2). Cauchy on discs of radius ρg_r/2 inside D(g_r, ρg_r): |β_j″| ≤ 8M/(ρ²g_r²) on D(g_r, ρg_r/2). So
  |β_j′(z)| ≤ |β_j′(g_r)| + |z − g_r|·8M/(ρ²g_r²) ≤ C_1 + 8√2Mg_r|y|/ρ² ≤ C_1′.
And |dz/du| = ½|u|^{−3/2} ≤ ½x^{−3/2} = ½g_r³. So |∂β_j/∂u(u)| ≤ ½C_1′g_r³: the bound (1.1) of HBETA, with the REAL part of u in place of u and C_1 → C_1′. Also |β_j(u) − β_j(x)| ≤ |y|·½C_1′γ³ ≤ β/2 by (c), so Re β_j(u) ≥ β/2 by (E).

Step 1 (Gronwall, complex). v_j = v_{j−1} − Σ_{i<j}(∂β_j/∂u_i)v_i holds for complex c (chain rule for holomorphic maps). With ε_j := ½C_1′Σ_{i<j}g_{r,i}³a_{j−1−i}, HBETA (2.1) holds verbatim: Σ|B_j′| ≤ Π(1 + ε_j) − 1 ≤ exp(Σε_j) − 1. The algebra never used that v is real.

Step 2 (summability). If Re u_K(c) > γ^{−2}, then Re u_i ≥ γ^{−2} + (β/2)(K − i) by Step 0, so S_3 := Σ_i (Re u_i)^{−3/2} ≤ ∫_0^∞(γ^{−2} + βt/2)^{−3/2}dt = 4γ/β. So Σε_j ≤ ½C_1′A·4γ/β = x_C, and Σ|B_j′| ≤ e^{x_C} − 1 ≤ ½ by (b). |v_k + 1| ≤ ½.

Step 3 (bootstrap in Im c). Fix c ∈ Q. On the real segment [0, Re c] Lemma H gives |v_k| ≤ 3/2 and u_K(Re c) ≥ g^{−2} − 3r. Put c_t := Re c + it Im c and T := {t ∈ [0, 1] : for all s ≤ t, all k ≤ K: u_k(c_s) ∈ D}. 0 ∈ T. On T, Steps 0–2 apply, so |Im u_k(c_t)| ≤ (3/2)t|Im c| ≤ (3/2)τ < Y and Re u_K(c_t) ≥ g^{−2} − 3r − (3/2)τ > γ^{−2} by (a); Re u_k ≥ Re u_K since Re β_j ≥ β/2 > 0. The bounds are strict, so T is open; by continuity T is closed; T = [0, 1]. ∎

Remark (normalization of the constant). 3/2 = 1 + (e^{x_C} − 1) with e^{x_C} ≤ 3/2. Any constant 1 + η, η > 0, is reachable by shrinking γ (x_C ≤ ln(1 + η)). 3/2 is a choice, not sharp.
