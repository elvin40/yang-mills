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
