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
