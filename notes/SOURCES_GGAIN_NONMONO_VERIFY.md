# SOURCES_GGAIN_NONMONO verification (2026-10-28)

## V1. F2′ Step 2 text (D3W8 §2.3) vs running max
Read verbatim. Step 1 uses b_k := max_{j≤k}(2g_j^{κ_0}1[j≤k_1] + a_j) only for S = E_0/b_k and a_{k+1} ≤ 8ε′b_k. Step 2: claim a_j ≤ 2g_j^{κ_0}; "b_k ≤ max_{j≤k} 4g_j^{κ_0} = 4g_k^{κ_0}"; then a_{k+1} ≤ 32ε′g_k^{κ_0} ≤ g_{k+1}^{κ_0}.
No telescoping sum, no difference b_j − b_{j−1}. The bound is a max of slot sizes; order enters only at "= 4g_k" and at "g_k ≤ g_{k+1}" (next-step closure).
Running max check: claim a_j ≤ 2G_j^{κ_0}. b_k ≤ max_j(2g_j^{κ_0} + 2G_j^{κ_0}) ≤ 4G_k^{κ_0}. a_{k+1} ≤ 32ε′G_k^{κ_0} ≤ G_{k+1}^{κ_0} (32ε′ ≤ 1, G nondecreasing). Closes for every history. CONFIRMED.
"Unroll" paragraph is explanatory only; not used in the induction.
