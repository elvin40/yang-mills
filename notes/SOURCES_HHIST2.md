IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_HHIST2 — the second-derivative history bound (H-hist2)

Status: complete (2026-10-27). Unverified. Result: (H-hist2) reduced; cleanest route = Route 2(a), §5.
Author: Claude (Opus), unverified. Firewall respected: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read. No existing file edited.

## 1. What HTHR2 needs, exactly [V = read in SOURCES_HTHR2.md §3.2 and SOURCES_HTHR2_VERIFY.md Step 7 this session]

(N-a) Form. HTHR2 §3.2 states (H-hist2) as summed bounds, not as a Toeplitz kernel:
 for F ∈ {B_j(·; ū), β_j}, on |w − ū| ≤ 3r (componentwise, u = 1/g² units):
 Σ_l |∂_{w_l}F| ≤ ε′_j,  Σ_{l,m} |∂_{w_l}∂_{w_m}F| ≤ ε″_j,  Σ_j ε′_j ≤ x′,  Σ_j ε″_j ≤ x″.
(N-b) Use. Only through W := sup_j|v_j′| ≤ (9/4)e^{x′}x″ and D := sup_j D_j, D_j = (9/2)ε″_j + 2ε′_jW. D enters (3.3) only as a uniform constant. But W needs Σ_j ε″_j < ∞ (HTHR2 L6: "summability, not just boundedness").
(N-c) Consequence for the decay form. A product kernel |∂_{w_i}∂_{w_l}F_j| ≤ c_j a_{j−1−i}a_{j−1−l} gives Σ_{i,l} ≤ c_jA², A = Σ a_m. So it gives ε″_j = c_jA² and is enough iff Σ_j c_j < ∞. A bound uniform in j (c_j = C) is NOT enough for W. Any summable a_m works for the double sum; no specific rate is needed.
(N-d) Two functions. HTHR2_VERIFY Step 7 corrected HTHR2: for β_j(w) = B_j(w; w) the second derivative contains ∂_s², ∂_s∂_w B_j through the running thresholds s. So (H-hist2) for β_j includes a uniform bound on the mixed threshold-history derivative. For B_j(·; ū) (frozen thresholds) it does not.
(N-e) How to get summability in j. The decay a_{j−1−i} is in the slot distance, not in j, so it cannot give summability in j. The source is the u-unit conversion: ∂/∂u = −½g³∂/∂g puts g-powers on every slot derivative, and u_{j−1} ≥ γ^{−2} + βm (HBETA (E), m = K−j+1) makes any u_{j−1}^{−p}, p > 1, summable uniformly in K. Worked out in §2.3 and §3.4.

## 2. Route 1: the complex polydisc (HHOL §4.2, §5.2)

2.1 (F1), exactly [V, read in SOURCES_HHOL.md §4.2 and §7 this session].
 Statement. On P_{ρ_1}(x) := Π_i{|g_i − x_i| < ρ_1x_i}, ρ_1 < ρ_0, x a real history (g-units):
  (F1) |∂β_j/∂g_i| ≤ (D/x_i)·λ_C^{j−1−i}, all i ≤ j−1, D := (C_Π/C_V)·cE_0/(ρ_0 − ρ_1)·max(1, C_V), λ_C := L^{−α_*} + 1.235·C_Vθ_0.
 Where. HHOL §4.2, ledger [R]. Not assumed: it is DERIVED from three inputs, none proved in that file:
  (F1-i) (H-hol): the small-field chain E^{(l)}, β_j is holomorphic on P_{ρ_0}(x), weighted sup ≤ cE_0, uniform in j, k, volume (HHOL §4.1, [R]; HHOL_VERIFY grade (1) CORRECTED: ρ_0 → ρ_0/√2 for the X-modes).
  (F1-ii) Theorem SM at complex (I, w): the step-map Lipschitz bound with θ_C = 1.235θ_0 (SOURCES_SM, [R]), and λ_C < 1.
  (F1-iii) The own-slot start s_{i+1} ≤ cE_0/((ρ_0 − ρ_1)x_i): Cauchy on the own disc. This is [P] given (F1-i). It is the source of the 1/x_i.
 Then the HHIST induction (linear in s) gives (F1) [P given i–iii].
 Scope limit [V, HHOL_VERIFY §5]: single-valuedness and holomorphy hold "only while every g-dependence is via g|B| and u". Any threshold p(g_k) of another form (CMP 119/122 large-field cutoffs, incl. the running δ′_j = g_jA_1p_1(g_j) of (1.27)) breaks it. So (F1) is a small-field, fixed-cut statement.

2.2 (H2-hist) of HHOL §5.2 [P given (F1); HHOL_VERIFY grade (3) CONFIRMED]. On P_{ρ_1/2}(x):
  |∂_{g_l}∂_{g_i}β_j| ≤ (2D/(ρ_1x_ix_l))·λ_C^{(j−1−i)/2}λ_C^{(j−1−l)/2}, diagonal included.

2.3 Is (H2-hist) the (H-hist2) HTHR2 needs? Compare item by item.
 (a) Variable. HTHR2 uses u = 1/g² slots w_l; HHOL uses g. Convert. g = u^{−1/2}, dg/du = −½g³, d²g/du² = (3/4)g⁵. For i ≠ l:
  ∂_{u_i}∂_{u_l}β_j = (¼g_i³g_l³)∂_{g_i}∂_{g_l}β_j.
  Diagonal: ∂²_{u_i}β_j = (¼g_i⁶)∂²_{g_i}β_j + (3/4)g_i⁵∂_{g_i}β_j.
 Insert (H2-hist) and (F1) at real points (x = g):
  |∂_{u_i}∂_{u_l}β_j| ≤ (D/(2ρ_1))·g_i²g_l²·λ_C^{(j−1−i)/2}λ_C^{(j−1−l)/2}, and the diagonal extra term ≤ (3D/4)g_i⁴λ_C^{j−1−i}.
  The 1/(x_ix_l) loss is cancelled by the Jacobian g_i³g_l³. Net: a factor g_i²g_l² remains. [P]
 (b) Summed form. g_i ≤ g_{j−1} for i < j (u_i ≥ u_{j−1}, HBETA (E)). With A_2 := (1 − λ_C^{1/2})^{−1}:
  Σ_{i,l}|∂_{u_i}∂_{u_l}β_j| ≤ [(D/(2ρ_1))A_2² + (3D/4)(1 − λ_C)^{−1}]·g_{j−1}⁴ =: c_2·u_{j−1}^{−2} =: ε″_j.
 (c) Summability in j, uniform in K. u_{j−1} ≥ γ^{−2} + βm, m = K−j+1 ≥ 1. So Σ_j ε″_j ≤ c_2Σ_{m≥1}(γ^{−2}+βm)^{−2} ≤ c_2γ²/β =: x″. Uniform in K and volume. [P]
 (d) Domain. HTHR2 needs real w with |w − ū| ≤ 3r. In g: |δg/g| ≈ ½|δu|/u ≤ 3r·γ²/2. This lies in P_{ρ_1/2}(ū) once 3rγ² ≤ ρ_1/2. True for γ small. [P]
 (e) Decay form. Product decay with a′_m = λ_C^{m/2}: summable, which is all HTHR2 needs (§1 N-c). No specific rate is needed. [P]
 (f) First-derivative half of (H-hist2). From real (H-hist) (uniform C_1, HHIST/GGAIN): |∂_{u_i}β_j| ≤ ½g_i³C_1λ^{j−1−i}, so ε′_j ≤ ½C_1(1−λ)^{−1}u_{j−1}^{−3/2}, summable. From (F1) alone: ε′_j ~ g_{j−1}², Σ_j ~ β^{−1}log K, NOT uniform. So ε′ needs the REAL uniform (H-hist); ε″ needs only (F1). [P]
 (g) Which function. Route 1 covers F whose only coupling dependence is via g|B| and u (§2.1 scope). That is F = B_j(·; ū), the frozen-threshold increment, PROVIDED the frozen cutoffs act on the physical fluctuation g·B (then they are g-free in B̃ units, as HHOL needs). [V] F4/F5 of HTHR2: (1.27) acts on V_jV_Z^{−1} − 1 and (1.82) on B′, both physical variables. So B_j(·; ū) is in scope [R: the large-field cutoffs are in HHOL §6, open]. F = β_j(w) = B_j(w; w) is NOT in scope: its thresholds run with w through log g. HTHR2_VERIFY Step 7 already flagged this.
Conclusion of Route 1. For F = B_j(·; ū): (H-hist2) ⇐ (F1) + (H-hol domain fact (d)), with ε″_j = c_2u_{j−1}^{−2}; the ε′ half needs real (H-hist). For F = β_j: Route 1 gives the pure history part only; the threshold parts ∂_s²B_j and ∂_s∂_wB_j remain (§4).

## 3. Route 2: the real chain, differentiated twice

3.1 Setting [from HHIST §5–6, SM §2–3]. E^{(k+1)} = G_k(g_k; I_k), I_k = {V^{(m)}}_{m≤k}, G_k = Ĝ_k∘𝓛_k, 𝓛 linear with ‖𝓛W‖_* ≤ ε_1K_VΣ_mL^{−α_*(k−m)}‖W^{(m)}‖ (Fact A), Ĝ holomorphic on {‖V‖_* < R_V} with sup S_V = K_HR_V (Fact B). β_{k+1} = Π(E^{(k+1)}), V^{(k+1)} = E^{(k+1)} − β_{k+1}A: both linear in E. First-derivative chain s^i_m := ‖∂_{g_i}V^{(m)}‖ ≤ S_0λ^{m−1−i} (Lemma HH; λ = L^{−α_*} + θ, θ = 2C_VK_HK_Vε_1).
 Second-derivative chain t^{il}_m := ‖∂_{g_i}∂_{g_l}V^{(m)}‖, i ≤ l. t^{il}_m = 0 for m ≤ l.

3.2 The three kinds of term [P]. For k ≥ l+1 (both slots in the past of step k+1), chain rule at fixed real g_k:
  ∂_i∂_lE^{(k+1)} = DG_k[∂_i∂_lI_k] + D²G_k[∂_iI_k, ∂_lI_k].
 (T1) Linear term: ≤ θ_0Σ_mL^{−α_*(k−m)}t^{il}_m (Theorem SM, unchanged).
 (T2) Quadratic term. Two-variable Cauchy for Ĝ at V_0 = 𝓛I_0 with ‖V_0‖_* ≤ R_V/2: z ↦ Ĝ(V_0 + z_1V_1 + z_2V_2) is holomorphic for |z_1|‖V_1‖ + |z_2|‖V_2‖ < R_V/2. Radii r_a = R_V/(4‖V_a‖) give |D²Ĝ(V_0)[V_1, V_2]| ≤ S_V/(r_1r_2) = 16K_H‖V_1‖_*‖V_2‖_*/R_V. Insert Fact A:
  (T2) ≤ θ_2·σ^i_k·σ^l_k,  θ_2 := 16K_HK_V²ε_1²/R_V,  σ^i_k := Σ_mL^{−α_*(k−m)}s^i_m ≤ S_0λ^{k−i}/θ (HHIST §6 sum).
  No g-derivative of any step map enters (T1) or (T2). Only Cauchy in the input variable at REAL g_k. So no G3 and no G-gain here.
 (T3) Start terms at step l+1 (own slot l hit once or twice):
  (T3a) i < l: ∂_{g_l}DG_l(g_l; I)[∂_iI]. Write DG_l[W] = (2πi)^{−1}∮G_l(g_l; I + zW)dz/z² on |z| = ρ_W := R_V/(4‖𝓛W‖_*). Then ∂_{g_l}DG_l[W] = (2πi)^{−1}∮∂_{g_l}G_l(g_l; I + zW)dz/z². If the own-slot bound |∂_{g_l}G_l(g_l; I′)| ≤ S_0e^{−κ′d} (Theorem B2-unif, GGAIN §4.4) holds for all complex inputs I′ with ‖𝓛I′‖_* ≤ 3R_V/4, then
   (T3a) ≤ S_0/ρ_W = θ_1σ^i_l,  θ_1 := 4S_0ε_1K_V/R_V.
   This uses the FIRST own-slot derivative only (GGAIN + first-order G3), plus Cauchy in the input. [P given B2-unif on the complex input ball; that extension is R: GGAIN's proof uses the inputs only through the sup v of (1.36), which is the same on the ball.]
  (T3b) i = l: ∂²_{g_l}E^{(l+1)}, the own-slot SECOND derivative. This is the only term that needs a second derivative of one step map in its own coupling. §3.4 and §3.5 give two ways.

3.3 The recursion and its solution [P given T1–T3; num]. With θ = C_Vθ_0 and the start t^{il}_{l+1} ≤ C_V·(T3):
  t^{il}_{k+1} ≤ θΣ_{m≤k}L^{−α_*(k−m)}t^{il}_m + C_Vθ_2S_0²θ^{−2}λ^{(k−i)+(k−l)}.
 Claim: t^{il}_m ≤ T·λ^{m−1−i} for m ≥ l+1, with T := C_V·max(θ_1S_0/θ, S_{00}) + C_Vθ_2S_0²θ^{−2}(1−λ)^{−1} (S_{00} := bound of T3b; constants not optimized). Proof: the linear part propagates λ per step (HHIST §6 sum); each source injection at step n has size ≤ cλ^{(n−1−i)+(n−1−l)} ≤ cλ^{n−1−i}·λ^{n−1−l} and propagates by λ^{k−n}; Σ_{n≥l+1}λ^{n−1−l} ≤ (1−λ)^{−1}. ∎
 Then |∂_{g_i}∂_{g_l}β_j| ≤ C_Π·(linear + source at step j) ≤ C_2λ^{j−1−min(i,l)}, C_2 := (C_Π/C_V)·T + C_Πθ_2S_0²θ^{−2}.
 Decay form. λ^{j−1−min(i,l)} ≤ λ^{(j−1−i)/2}λ^{(j−1−l)/2}. So the product form holds with a′_m = λ^{m/2}, the same exponent as HHOL §5.2. The product form with a_m = λ^m is FALSE in general: the mixed perturbation, once created, propagates at rate λ per step, not λ².
 [num, python -I inline, no file kept] Scalar toy of the recursion (S_0 = S_{00} = 1, θ_1 = 0.3, θ_2 = 0.5, j = 60), (L, α_*, θ) = (13, .5, .1), (3, 1, .3), (13, 1, .05): t/λ^{j−1−min} = 0.78–2.7 for all (i, l) ∈ {(0,0), (0,10), (0,30), (5,40), (20,21)}; t/λ^{(j−1−i)+(j−1−l)} = 7·10³ to 10^{53} (product with a_m = λ^m fails); t/λ^{(sum)/2} ≤ 2.2 (works).

3.4 Units and summability [P]. u-slots: ∂_{u_i}∂_{u_l} = ¼g_i³g_l³∂_{g_i}∂_{g_l} (i ≠ l); ∂²_{u_i} = ¼g_i⁶∂²_{g_i} + (3/4)g_i⁵∂_{g_i}. With uniform C_2, C_1 and g_i ≤ g_{j−1}:
  ε″_j(B_j) ≤ [¼C_2(1−λ^{1/2})^{−2} + (3/4)C_1(1−λ)^{−1}]·g_{j−1}⁵ ≤ c_2′u_{j−1}^{−5/2}. Σ_j ε″_j ≤ c_2′Σ_m(γ^{−2}+βm)^{−5/2} ≤ c_2′γ³/β. Uniform in K. Route 2 gives more room than needed: g⁵ against the g⁴ of Route 1.

3.5 The own-slot second derivative (T3b). Two ways.
 (a) u-disc holomorphy, no real derivative [R to SM §4.2]. In B̃ = g_kB units the cut is g-free and u_k enters only exp(−u_k[½⟨B̃, C^{(k)−1}B̃⟩ − Φ_1]) (SM §4.1, [P] there). SM §4.2 [R]: E^{(k+1)} is holomorphic on |u − u_k| ≤ z_0u_k with sup ≤ C_uE_0e^{−κ′d}. Cauchy twice:
   |∂²_{u_k}E^{(k+1)}| ≤ 2C_uE_0z_0^{−2}u_k^{−2} = 2C_uE_0z_0^{−2}g_k⁴.
  Same for (T3a) in u-units: two-variable Cauchy (u-disc × input disc) gives |∂_{u_l}DG_l[W]| ≤ 4C_uz_0^{−1}g_l²·ε_1K_V(S_V/R_V)Σ_mL^{−α_*(l−m)}‖W^{(m)}‖, and W = ∂_{u_i}I carries ½g_i³ (Lemma HH in u-slots, SM §3.2). So every start term in u-units carries ≥ g⁴ (diagonal) or g_l²g_i³ (mixed). The 1/u radius loss that blocks the FIRST derivative (SM §4.2: g² per slot, Σ_jg_j² ~ log K) is harmless at SECOND order: g⁴ is summable along the trajectory. Result: ε″_j ≤ c_2″u_{j−1}^{−2}, Σ_jε″_j ≤ c_2″γ²/β. [P given SM §4.2]
  This needs no G-gain, no G3 at any order, no second insertion. It is the real-past-slot version of Route 1: only the own slot is complexified, by one relative u-disc.
 (b) Real, two insertions + Lemma G3 at second order [R]. Needed only if one insists on a uniform g-unit bound S_{00} (not needed for HTHR2).
  Vertices. Lemma G1 twice: |∂²_gV″_k(Y,B)| ≤ 2v_Y|B|²_Y/((1−r)ε_1)² (Cauchy in s on |s| = (1−r)ε_1/|B|_Y); two single insertions give |B|_{Y_1}|B|_{Y_2}/((1−r)ε_1)². P-part: g^{−2}ψ(gB) with ψ = Σ_{n≥3}c_nx^n gives ∂²_g = Σ(n−2)(n−3)c_ng^{n−4}B^n = O(|B|⁴) (the cubic term drops out); m = 0 terms give O(|B|²). [P given (M_r) and (1.39)–(1.40)]
  Absorption. |B|²_Y ≤ (eα_4)^{−1}e^{α_4‖B_Y‖²}, |B|⁴_Y ≤ (2/(eα_4))²e^{α_4‖B_Y‖²}, |B|_{Y_1}|B|_{Y_2} ≤ (2α_4)^{−1}e^{α_4(‖B_{Y_1}‖² + ‖B_{Y_2}‖²)}. Two marks add at most 2α_4‖B‖² to the form: α_5 → α_5 + O(2α_4), already inside Balaban's α_5 = O(1)α_4 + …. Choice of two marks: 4^{|D|}·|Z|², absorbed by α_6 → α_6/4 and one more δ of decay. Cost per pair: ρ̄_V² ∝ α_4^{−1}(1−r)^{−2}ε_1^{−2}, times C_3ε_1 from the term bound: S_{00} ∝ ε_1^{−1}. No g loss. [P for the absorption step, as GGAIN_VERIFY grade 1 accepted for one insertion; R for the Kotecký–Preiss second-derivative step, same as GGAIN §4.4(ii)]
  Cut, second order. One bond, r(g) = ε_1/g, y = B(b) ∈ ℝ^n:
   d²/dg² ∫_{|y|<r}G = r″∫_{S_r}G dσ + r′²∫_{S_r}(∂_nG + (n−1)r^{−1}G)dσ + 2r′∫_{S_r}∂_gG dσ.
  (first: shell acceleration; second: normal derivative + mean-curvature term (n−1)/r of the sphere; third: bulk derivative on the surface.) With r′ = −ε_1/g², r″ = 2ε_1/g³, t := ε_1/g, and the (Q) majorant density ≤ c_−^{−n/2}e^{−|y|²/(2Λ)}:
   r″r^{n−1} = 2ε_1^{−2}t^{n+2}; curvature r′²(n−1)r^{n−2} = (n−1)ε_1^{−2}t^{n+2}; normal derivative of the Gaussian ≤ ‖Γ^{−1}‖r, giving ε_1^{−2}t^{n+4}/c_−; cross term with |∂_gG| ≤ C|B|_Y (G1, constant free of ε_1) gives ε_1^{−1}t^{n+2}. All are ε_1^{−2}·poly(t)·e^{−t²/(2Λ)}: bounded uniformly in g, and O(γ^p) for every p. Two different bonds: product of two one-bond factors U(g)², needs the joint two-bond marginal.
  So the second-order G3 needs, beyond (Q): (Q₂) the joint (X, B) majorant form gives a two-bond marginal with λ_min ≥ c_− (same open c_− as G3_VERIFY item 3); and a pointwise bound |∇_{B(b)}log|integrand|| ≤ C(1 + |B(b)|) on the surface, true for the complex Gaussian factor (‖Q_c‖|y|) and for the vertices (∂_BV = gf′(x), Cauchy, margin (M_r) on the surface). Same mechanism, one more derivative. [R]
  Smooth-cut fallback (Route 3 of G3): ∂²_gχ̂(g|B|/ε_1) = χ̂″|B|²/ε_1² ≤ ‖χ̂″‖_∞g^{−2} on the shell, times e^{−ε_1²/(8Λg²)}: sup_g g^{−2}e^{−c/g²} = (ce)^{−1}. Uniform, no (Q₂). [P given the G3 Route 3 page checks; CMP 119/122 unchecked]
 Verdict on 3.5: (a) suffices for HTHR2 and avoids both two insertions and G3₂. (b) is available, reduced to (Q₂), if a uniform g-unit S_{00} is wanted (e.g. for Balaban's p. 264 "all derivatives").

## 4. The β_j half: only a uniform bound is needed, and it reduces to shell bounds

4.1 Sharpening of HTHR2's requirement [P, from HTHR2 §3.2 and SOURCES_HTHR.md lines 22–24, read this session]. B_j(c) := B_j(u(c); ū) (frozen thresholds, D3 (vi)(a)); β_j(u(c)) := B_j(u(c); u(c)). The Gronwall for W uses v_j′ = v_{j−1}′ − (B_j(c))″: only the FROZEN map. β_j enters only D_j through ‖Δ_j″‖ ≤ |(B_j(c))″| + |(β_j(u(c)))″|, and D = sup_jD_j is used as a constant in (3.3). So:
 - F = B_j(·; ū): needs ε′_j, ε″_j SUMMABLE in j (W uniform in K). Supplied by §2/§3.
 - F = β_j: needs only sup_j of Σ_l|∂β_j| and Σ_{l,m}|∂²β_j| along the c-trajectory, NOT summability.
 This removes the summability burden from the running-threshold function. HTHR2 L6 asks for more than its proof uses.

4.2 Decomposition [P]. Φ(w; s) := B_j(w; s), β_j(w) = Φ(w; w). Then
  ∂_{w_l}∂_{w_m}β_j = [∂_{w_l}∂_{w_m} + ∂_{w_l}∂_{s_m} + ∂_{s_l}∂_{w_m} + ∂_{s_l}∂_{s_m}]Φ at s = w.
 HTHR2_VERIFY Step 7 is right that the mixed ∂_s∂_w term is inside. But only its uniform boundedness is needed.
 (i) ∂_w∂_wΦ at s = w: §3 at frozen thresholds s = w (the frozen point is arbitrary). Uniform: yes, with the §3 constants (the constants do not depend on where s is frozen, as long as the HTHR L3 integer freezing holds). [P given §3]
 (ii) Pure threshold ∂_s∂_sΦ: HTHR2 §3.2 "hint" paragraph: per shell, θ″δ + θ′²δ′ ≤ polynomial × exp(−κ_2(log s)^q) [proved there given Lemma D, HTHR2 L3 = R]. Two different shells at steps i < m: each shell term is a bounded linear perturbation of its step map (Lemma D shell density, sup over the input ball by HTHR2 M4(b) / (1.73)); the pair meets through D²G (T2 Cauchy, §3.2) and propagates by Theorem SM. Each factor carries exp(−κ_2(log u_i)^q). [R to Lemma D + M3]
 (iii) Mixed ∂_{s_i}∂_{w_l}Φ. Three cases, all by Cauchy in a parameter in which the step map is holomorphic, never by differentiating a shell in the history at fixed B:
  - l < i: ∂_{s_i}DG_i[∂_{w_l}I]: Cauchy in the input (§3.2 T3a form) applied to the shell term ∂_{s_i}G_i(I + zW). Needs the Lemma D shell bound for complex inputs on the ball: by (1.73) the real positive density stays, cost e^{3sup|σ|} (HTHR2_VERIFY Step 4, mechanism [V]; small-field analogue [R]).
  - l = i: own-slot derivative of the shell at frozen physical threshold. In B̃ units the frozen shell |B̃(b)| = const is u-free; u_i enters only the Gaussian scale. So the shell functional is holomorphic in u_i on the relative u-disc with |e^{−wQ}| = e^{−Re w·Q} (HHOL 1.3: Re w ≥ (1−2ρ²)|w|). Cauchy: ≤ (shell sup on the disc)/(z_0u_i). [R: Lemma D at complex scale, i.e. Lemma D with σ_max² → σ_max²/Re w]
  - l > i: the shell output of step i is an input to step l+1; ∂_{u_l}DG_l[∂_{s_i}I] by the (3.5(a)) u-disc Cauchy.
  Each case is ≤ C·poly(u_i)·exp(−κ_2(log u_i)^q)·λ^{dist}, so uniformly bounded (indeed small). [R to Lemma D, M3, SM §4.2]
 Conclusion for β_j: Σ_{l,m}|∂²β_j| ≤ C uniformly in j, K, volume, reduced to the same inputs as §3 plus Lemma D (density form of Balaban's block bound, HTHR2 L3 [R]) and M3. The first-derivative bound Σ_l|∂β_j| ≤ C likewise (real (H-hist) + one shell, Lemma D). Note: Lemma D was "not needed" in HTHR2 for the zero-order bound; it IS needed here, through (ii) and (iii). Lemma D's two open points remain: a polynomial lower bound σ_min ≥ s^{−C} (upper bound on the form), and the coarea step for the nonlinear (1.27) variable.
 Alternative that avoids Lemma D: smooth all threshold cutoffs (χ̂ at running threshold θ(s)). Then ∂_s and ∂_s² act on χ̂ pointwise, bounded by ‖χ̂′‖θ′/θ-type factors on the large-field shell, and Balaban's tail (F3) bounds the shell mass with no density. This changes the construction (G3 Route 3 type; CMP 119/122 compatibility unchecked).

## 5. Conclusion: cleanest route

Route 2(a) is the cleanest. It uses real past slots, real composition, Cauchy in the input variable (Theorem SM machinery), and one relative u-disc in the own slot only. It needs neither (F1) on the complex polydisc, nor G-gain, nor second-order G3, nor two insertions.
 Theorem H2 [P given the inputs listed]. Assume Theorem SM (Facts A, B; SOURCES_SM [R]), the own-slot u-disc holomorphy of one step jointly with the inputs (SM §4.2 / HHOL 1.2, [R]), λ = L^{−α_*} + θ < 1, and the HTHR L3 integer freezing. Then for the frozen-threshold map F = B_j(·; ū), on |w − ū| ≤ 3r, in u-slots:
  |∂_{u_i}∂_{u_l}F| ≤ C_H g_i²g_l²·λ^{j−1−min(i,l)} (i ≠ l, the start term dominates), |∂²_{u_i}F| ≤ C_H g_i⁴λ^{j−1−i},
 so Σ_{i,l}|∂²F| ≤ ε″_j := C_H(1−λ^{1/2})^{−2}u_{j−1}^{−2}, Σ_jε″_j ≤ C_H(1−λ^{1/2})^{−2}γ²/β, uniform in j, K, volume. Product decay a′_m = λ^{m/2} (a_m = λ^m is false, §3.3 num).
 First-derivative half: ε′_j ≤ ½C_1(1−λ)^{−1}u_{j−1}^{−3/2}, summable, from the REAL uniform (H-hist) (Lemma HH + GGAIN Theorem B2-unif + first-order Lemma G3, all [R] on the ledger). The u-disc alone gives ε′_j ~ u_{j−1}^{−1}, Σ ~ log K: not enough. So the first-order gap (G3 order 1, (Q)) remains the binding input; (H-hist2) adds nothing new at that level.
 For F = β_j: only a uniform bound is needed (§4.1). It reduces to Theorem H2's inputs plus Lemma D (shell density, at complex scale and complex inputs) and M3 (§4.2).
 Route 1 status. (F1) is a derived statement [R] from (H-hol) on the full polydisc + Theorem SM at complex couplings (θ_C = 1.235θ_0). It gives the same a′_m = λ_C^{m/2} and ε″_j ∝ u_{j−1}^{−2} (§2.3). It is valid but uses strictly more: complex past slots and the composition at complex couplings. Route 2(a) uses one complex own slot per step. Both agree.

## 6. Honest ledger

[V] read this session: HTHR2 §3.2 statement of (H-hist2) and its use (W from B_j only; D uniform); HTHR lines 22–24 (B_j(c) = B_j(u(c); ū)); HTHR2_VERIFY Step 7 (β_j contains ∂_s∂_w); HHOL §4.2 (F1) and §5.2 (H2-hist); HHOL_VERIFY §5 grade (3) (a′_m = λ_C^{m/2}; holomorphy only while g enters via g|B| and u); HHOL_LF_VERIFY V4 (frozen map is the sourced map; (M-D) = (H-hist) + (H-thr)); SM §2–4; GGAIN §2–4; G3 §2–4; G3_VERIFY §1–5; GGAIN_VERIFY §6–8. All are project files, not Balaban pages; no new page read.
[P] proved here:
 P1 (H-hist2) is needed in summed form; product decay with any summable a_m suffices for the double sum; summability in j must come from elsewhere (§1).
 P2 Only the frozen map B_j(·; ū) needs summable ε″, ε′; β_j needs a uniform bound only (§4.1). HTHR2 L6 over-asks.
 P3 u-unit Jacobians: ∂_{u_i}∂_{u_l} = ¼g_i³g_l³∂_{g_i}∂_{g_l}; ∂²_u = ¼g⁶∂²_g + (3/4)g⁵∂_g. The 1/x losses of (F1)/(H2-hist) or of a u-disc Cauchy leave g⁴ per second derivative: summable along the trajectory, Σ_j u_{j−1}^{−2} ≤ γ²/β (§2.3).
 P4 Route 1 ⇒ (H-hist2)'s ε″ half for B_j(·; ū), given (F1) (§2.3).
 P5 Route 2 second-derivative chain: terms T1 (linear, Theorem SM), T2 (quadratic, two-variable Cauchy, θ_2 = 16K_HK_V²ε_1²/R_V), T3 (start terms). Solution t^{il}_m ≤ Tλ^{m−1−i}, |∂_i∂_lβ_j| ≤ C_2λ^{j−1−min(i,l)} (§3.3).
 P6 The product form a_{j−1−i}a_{j−1−l} with a_m = λ^m is false for the recursion; a′_m = λ^{m/2} is the right form (§3.3).
 P7 T1, T2, and T3a need no g-derivative at fixed B. Only T3b (own slot twice) does, and only in the real route.
 P8 Second-order cut formula: r″∫_S G + r′²∫_S(∂_nG + (n−1)G/r) + 2r′∫_S∂_gG; every term ε_1^{−2}·poly(t)·e^{−t²/(2Λ)}, uniform in g, given (Q₂) (§3.5(b)). Smooth cut: ‖χ̂″‖(ce)^{−1}, uniform.
 P9 Two-insertion absorption: α_5 → α_5 + O(2α_4), α_6 → α_6/4; P-part second derivative O(|B|⁴) (cubic drops out).
[R] reduced (named inputs):
 R1 Theorem SM (Facts A, B), SOURCES_SM [R]; λ < 1 (ε_1 small).
 R2 Own-slot relative u-disc holomorphy of one step, jointly with the inputs on the input ball: SM §4.2 / HHOL 1.2 [R].
 R3 Real uniform (H-hist) for ε′: Lemma HH + GGAIN B2-unif + G3 (order 1) + (Q) with c_− [R, open c_−]. Binding input, unchanged by this file.
 R4 For β_j: Lemma D (HTHR2 L3: σ_min lower bound; coarea for (1.27)); its complex-scale and complex-input forms via (1.73) (small-field analogue not read); M3.
 R5 Large-field part of the frozen map (cutoffs (1.27), (1.82) at frozen physical thresholds): u-disc holomorphy is HHOL §6 / HHOL_LF (M-A)–(M-C), open. The cutoffs are on physical variables (F4, F5), so they are u-free in B̃ units; the mechanism applies in form.
 R6 Route 2(b) (only if a uniform g-unit S_{00} is wanted): (Q₂) two-bond marginal of the joint (X, B) majorant with λ_min ≥ c_−; pointwise gradient bound on the surface; Kotecký–Preiss second-derivative step.
 R7 B2-unif on the complex input ball (only for T3a in the real route; Route 2(a) does not need it).
[I] inferred: the §3 constants do not depend on where s is frozen (uses HTHR L3); R_V, K_H, K_V are the same at all frozen thresholds.
[num] §3.3 toy recursion, 3 parameter sets, 5 slot pairs (python -I inline).
Verdict. (H-hist2) is REDUCED, not proved. For B_j(·; ū): to R1 + R2 (+ R5 for large field), with ε″_j ∝ u_{j−1}^{−2} and decay a′_m = λ^{m/2}; the ε′ half to R3 (already the open first-order input). For β_j: uniform bound reduced to R1, R2, R4. Neither (F1) on the full polydisc nor the two-derivative Lemma G3 is needed; G3₂ is available (R6) if wanted. Not obstructed. Needs an independent verifier.
