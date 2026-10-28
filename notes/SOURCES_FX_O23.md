# SOURCES_FX_O23 — R-denominators (O2) and large-field source bound (O3)

Status: in progress (2026-10-27).

## 1. Inputs read so far [V = read in this session]
- SOURCES_FX §4–§6 [V]: O2 = FX §6.3(b) open item (FX-D); O3 = FX §6.3(a) per-plaquette source bound.
- SOURCES_FX_VERIFY V3, V5, V7 [V]: O3 flagged UNSUPPORTED; suggested argument |e^{−(1+ζ)S}| ≤ e^{−(1−r)S}. Fallback Gevrey loss ≤ (k!)^{2/3} from (1.88).
- SOURCES_D3 l. 130–140 [V]: Lemma D3.1; τ(Y) = c_τ r/(E_0|Y|), |Y| ≤ (100MR_m)^4. This is the only source of the R̄_m^{−4} loss.
- SOURCES_D3W8 §1 [V]: source weight d_S with |d_S| ≤ 2r and |g_k²d_S| ≤ 2γ²r; covariance C_f; positivity domination (1.4) for real and complex f.
- SOURCES_D3R §1.4 [V, found while reading]: this is already the O3 argument for real f. Weight lower bound w″_k ≥ (1 − θ)/(g″_k)², θ = γ²δ_r ≤ 5γ²r; positivity split; γ_0 → γ_0(1 − θ).
- Normalization fact used below: in the D3W8 normalization the source enters ADDITIVELY in the weight, w = g^{−2} + d_B + d_S, |d_S| ≤ 2r. So the per-plaquette change of the action is |d_S|·P_p ≤ 2r·P_p. In absolute size this is O(r) per plaquette, since P_p ≤ O(1). In relative size it is O(γ²r)·(g^{−2}P_p). The VERIFY worry ("O(|ζ|g^{−2}) per plaquette") applies only if the source multiplies the full weight; then the relative route below is the correct one. The relative route works in both normalizations.
