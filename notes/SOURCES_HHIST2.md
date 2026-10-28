# SOURCES_HHIST2 — the second-derivative history bound (H-hist2)

Status: in progress (2026-10-27).
Author: Claude (Opus), unverified. Firewall respected: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read. No existing file edited.

## 1. What HTHR2 needs, exactly [V = read in SOURCES_HTHR2.md §3.2 and SOURCES_HTHR2_VERIFY.md Step 7 this session]

(N-a) Form. HTHR2 §3.2 states (H-hist2) as summed bounds, not as a Toeplitz kernel:
 for F ∈ {B_j(·; ū), β_j}, on |w − ū| ≤ 3r (componentwise, u = 1/g² units):
 Σ_l |∂_{w_l}F| ≤ ε′_j,  Σ_{l,m} |∂_{w_l}∂_{w_m}F| ≤ ε″_j,  Σ_j ε′_j ≤ x′,  Σ_j ε″_j ≤ x″.
(N-b) Use. Only through W := sup_j|v_j′| ≤ (9/4)e^{x′}x″ and D := sup_j D_j, D_j = (9/2)ε″_j + 2ε′_jW. D enters (3.3) only as a uniform constant. But W needs Σ_j ε″_j < ∞ (HTHR2 L6: "summability, not just boundedness").
(N-c) Consequence for the decay form. A product kernel |∂_{w_i}∂_{w_l}F_j| ≤ c_j a_{j−1−i}a_{j−1−l} gives Σ_{i,l} ≤ c_jA², A = Σ a_m. So it gives ε″_j = c_jA² and is enough iff Σ_j c_j < ∞. A bound uniform in j (c_j = C) is NOT enough for W. Any summable a_m works for the double sum; no specific rate is needed.
(N-d) Two functions. HTHR2_VERIFY Step 7 corrected HTHR2: for β_j(w) = B_j(w; w) the second derivative contains ∂_s², ∂_s∂_w B_j through the running thresholds s. So (H-hist2) for β_j includes a uniform bound on the mixed threshold-history derivative. For B_j(·; ū) (frozen thresholds) it does not.
(N-e) How to get summability in j. Option 1: c_j ≤ C λ^{?}… no: a_{j−1−i} decay is in i, not j. Option 2: the own-slot factor. HHIST Remark (b): the hop factor carries g_k (the curly bracket vanishes at g_k = 0), so θ = O(γ) and |∂β_j/∂g_i| ≤ C g_{j−1}λ^{j−1−i}. In u-units, ∂/∂u = −(g³/2)∂/∂g gives an extra g_i³ g_l³ for two u-derivatives. With u_{j−1} ≥ γ^{−2} + βm (HBETA (E), m = K−j+1), any factor g_{j−1}^{2p} with p > 1 (i.e. u^{−p}) is summable over j uniformly in K. So summability comes from the u-unit conversion, not from the history decay. Checked in §2 against HHIST's units.

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
 Claim: t^{il}_m ≤ T·λ^{m−1−i} for m ≥ l+1, with T := max(C_Vθ_1S_0/θ, C_VS_{00}λ^{−0}) + C_Vθ_2S_0²θ^{−3}(1−λ)^{−1}·λ (S_{00} = bound of T3b). Proof: the linear part propagates λ per step (HHIST §6 sum); each source injection at step n has size ≤ cλ^{(n−1−i)+(n−1−l)} ≤ cλ^{n−1−i}·λ^{n−1−l} and propagates by λ^{k−n}; Σ_{n≥l+1}λ^{n−1−l} ≤ (1−λ)^{−1}. ∎
 Then |∂_{g_i}∂_{g_l}β_j| ≤ C_Π·(linear + source at step j) ≤ C_2λ^{j−1−min(i,l)}, C_2 := (C_Π/C_V)·T + C_Πθ_2S_0²θ^{−2}.
 Decay form. λ^{j−1−min(i,l)} ≤ λ^{(j−1−i)/2}λ^{(j−1−l)/2}. So the product form holds with a′_m = λ^{m/2}, the same exponent as HHOL §5.2. The product form with a_m = λ^m is FALSE in general: the mixed perturbation, once created, propagates at rate λ per step, not λ².
 [num, python -I inline, no file kept] Scalar toy of the recursion (S_0 = S_{00} = 1, θ_1 = 0.3, θ_2 = 0.5, j = 60), (L, α_*, θ) = (13, .5, .1), (3, 1, .3), (13, 1, .05): t/λ^{j−1−min} = 0.78–2.7 for all (i, l) ∈ {(0,0), (0,10), (0,30), (5,40), (20,21)}; t/λ^{(j−1−i)+(j−1−l)} = 7·10³ to 10^{53} (product with a_m = λ^m fails); t/λ^{(sum)/2} ≤ 2.2 (works).

3.4 Units and summability [P]. u-slots: ∂_{u_i}∂_{u_l} = ¼g_i³g_l³∂_{g_i}∂_{g_l} (i ≠ l); ∂²_{u_i} = ¼g_i⁶∂²_{g_i} + (3/4)g_i⁵∂_{g_i}. With uniform C_2, C_1 and g_i ≤ g_{j−1}:
  ε″_j(B_j) ≤ [¼C_2(1−λ^{1/2})^{−2} + (3/4)C_1(1−λ)^{−1}]·g_{j−1}⁵ ≤ c_2′u_{j−1}^{−5/2}. Σ_j ε″_j ≤ c_2′Σ_m(γ^{−2}+βm)^{−5/2} ≤ c_2′γ³/β. Uniform in K. Route 2 gives more room than needed: g⁵ against the g⁴ of Route 1.
