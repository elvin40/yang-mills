# SOURCES_HBETA_N3 verification

Independent check of SOURCES_HBETA_N3.md. Firewall respected.

## 1. Item (1): normalization [read D3, D3R, FX_O23_VERIFY]
- SOURCES_D3.md l. 33–34: w_0(x) := 1/g_0² − f(x); w_j = w_{j−1} − B_j(f(x))φ_j (1.a). The source is an additive shift of u = g^{−2}. D3R l. 39: "The bound is additive, not multiplicative (V1)." CONFIRMED.
- τ is a shift of u in absolute units. Relative size at scale k is |δw_k|g_k². CONFIRMED.
- FX_O23_VERIFY item 2 says both conventions give the same relative bound. That is loose: τ_add = g_0^{−2}τ_mult, so a fixed τ_mult is a huge τ_add. The author's "additive is the stronger statement" is correct for fixed τ. Minor.
- Pointwise reduction: on the last domain w_k(x) = u_k(f(x)) (+ h_k, booked in d_S, f-independent? see below). δw_k(x) depends only on f(x), ζ(x). CONFIRMED given D2C h ≡ 0 booking. Caveat: D3R l. 75 books h_k with d_S; h_k is a D2 small-field datum and may depend on f non-locally. If h_k depends on f, δw_k picks up δh_k, bounded by 2C_hMρ_1λ_k-type terms (D3R l. 37). The author's "h ≡ 0" (D2C §5.3) removes it; not re-checked.
- Boundary layers: dw_k/dc = v_m − Σ_{j>m} B_j′φ_j, |dw_k/dc + 1| ≤ Σ|B_j′|. CONFIRMED (0 ≤ φ_j ≤ 1).
- Convexity: Q is a rectangle, real f ∈ [−r, r], |ζ| ≤ τ ≤ r ⇒ f + ζ has |Re| ≤ 2r, |Im| ≤ τ. Segment in Q. CONFIRMED.
Grade (1): CONFIRMED (h_k caveat inherited from D2C).
