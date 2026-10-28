# SOURCES_T2_KAPPA2 verification (independent)

Started 2026-10-28.

## 1. Context read
Read SOURCES_T2_KAPPA2.md (claims), IDEAS_FABLE §I5, TRUST_LEDGER B22 (open; "not stated"), D2 §6.3 (l. 267–276), D2C §3.1–3.3, D3R §3.2 (F1, F2), FX_R2 §1–§5. Firewall kept.
Notes from context:
- D2 §6.3 output claim: |out_Y(f) − out_Y(c)| ≤ … e^{−κ d_{k+1}(Y)} at FULL κ, with the inputs only admissible "after the factors (1+dist) are absorbed by half of the decay". So the half-rate loss in (L1) is on the input-admissibility side, inside the t-Cauchy argument.
- D2C (3.3) and R_X: e^{−(κ/2)d_j(X)} at scale j — these ARE the sourced V^{(j)}, which stay in E_k forever (Balaban's (0.29) form).
- D3R F2: output E_R at κ′ < κ in d_{k+1}; generated each step; (1+d)² absorbed.
- FX_R2 §3: κ_final := 2κ + √d(1+2β)κ + c_d; κ_vol independent of κ; M ≥ 12L(3κ_final/C_1)^{1/d}.
