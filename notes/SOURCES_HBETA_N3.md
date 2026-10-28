# SOURCES_HBETA_N3 — the strip bound |δw_k| ≤ (3/2)τ (item N3)

Status 2026-10-27 (Claude, Opus; unverified). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 1. Statement of N3 as used [V: SOURCES_FX_O23 §4–§5, FX_O23_VERIFY items 1, 2, 5; SOURCES_HBETA §3(c)]
- Sourced weight at scale k (D3W8 normalization): w_k(f) = g_k^{−2} + d_B + d_S(f), source ADDITIVE, |d_S| ≤ 2r.
- Perturbation f → f + ζ, ‖ζ‖_∞ ≤ τ, complex, any support. δw_k := w_k(f + ζ) − w_k(f).
- N3: |δw_k| ≤ (3/2)τ, uniformly in k (and ε). Used in O3 Step 1 (modulus domination: θ′ = (3/2)τγ²) and O2 choice B (σ_W bound).
- Origin of the constant: HBETA Lemma H gives |v_k| ≤ 3/2 for v_k = du_k/dc, c = shift of u_0 = 1/g_0², REAL c only. N3 is that derivative bound integrated along a complex segment. HBETA §3(c) leaves complex c open: it needs β_j holomorphic on the strip |Im u_i| ≤ 3r with Re β_j ≥ β, |β_j| ≤ β′ and (1.1) unchanged.
- Normalization: τ is in the units of u = g^{−2} (additive shift of the weight), NOT relative. c and τ are both shifts of u. The scale-0 shift is δw_0 = ζ (per plaquette), |δw_0| ≤ τ. The relative size is |δw_k| g_k² ≤ (3/2)τγ². So the brief's "δw_0 = g^{−2}τ f_p" (multiplicative source) is not the convention used; FX_O23 §1 and VERIFY item 2 state that both conventions give the same relative bound. Settled in §3 below.
