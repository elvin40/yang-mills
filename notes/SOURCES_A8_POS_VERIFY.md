# SOURCES_A8_POS verification (independent)

Started 2026-10-28.

## V1. Files read
SOURCES_A8_POS §0–§7; WC_FULL §0, §3–§5; SOURCES_G3; TRUST_LEDGER rows A2, A7, A8.

## V2. Lemma P re-derivation (a)–(e), 5.4, 6.3, 6.4(a)(b)
- (a) K_σ = (I + A_cD_σ)^{−1}A_c; ‖K_σ − A_c‖ ≤ 2Γ″²η. Correct.
- (b) Re⟨B,K_σB⟩ ≥ ½γ − ¼γ = ¼γ; ‖H(Y)‖ ≤ ‖Y‖. Correct. Γ_σ ∈ [1/(2Γ″), 4/γ]. Correct.
- (c) |dμ_C| = (|det K|/det H)^{1/2} dμ_{H^{−1}} pointwise. Correct under definition 2.2 (prefactor det K). Note: the exact integral is (2π)^{n/2}det(sym K)^{−1/2}, sym K := ½(K + K^T); with det K normalisation dμ_C is not normalised unless K = K^T. Under the normalised reading (prefactor det sym K) r_σ changes to (|det sym K|/det H)^{1/2}; the same bound holds since ‖sym K − H‖ ≤ ‖E‖. Hidden content in I-e: the normalisation choice. Harmless.
- (d) E = (K−A) − H(K−A), ‖E‖ ≤ 2ε; ‖F‖ ≤ 8ε/γ; |det(I+F)| ≤ Π(1+s_j) ≤ e^{n_Z‖F‖}; r ≤ e^{4n_Zε/γ}. Correct.
- (e) ratio to dμ_{A^{−1}}: e^{n_Zε/(2γ)}e^{½ε‖B‖²}. Correct.
- 5.4, 6.3, 6.4(a): det(I+iS), det(I+M_0) with M_0 antisymmetric, ‖N_0‖ ≤ ‖K_0 − A‖. Correct.
- 6.4(b): (I+M)^{−1} = (I−M)(I−M²)^{−1}; sym part = (I + M^TM)^{−1} ≤ I. Correct.
