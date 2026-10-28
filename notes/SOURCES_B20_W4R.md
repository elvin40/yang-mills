# SOURCES_B20_W4R — (W4) for the R operation; D3W8 §1.4(i) line check

Date 2026-10-28. Ledger: [P] proved here, [V] verified on page image, [I] inherited from a cited file, [R] reduced to a named item.
Firewall respected: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. Inputs read (round 1)

- TRUST_LEDGER B20: (W4) [R] to (C1)–(C5) via Theorem SM, for the regular step G. Λ_j sub-item closed (SOURCES_B20_LAMBDAJ + VERIFY). The two opens for this file: (a) (W4) for the R operation; (b) D3W8 §1.4(i) "not re-checked line by line in CMP 122 I". [I]
- SOURCES_W4 §6.2 (the starting point for Task A), verbatim status: "The R operation itself [NOT holomorphic on B_ρ by any argument found; local radius only]". Reason given there: the R output contains a ratio numerator/denominator, the denominator D(I) = ∫(positive density) e^{Σ_{X∩Y≠∅} I(X)} is not linear in I, and an input shift of size ρ′ moves the exponent by up to ρ′·O(1)N(Y), N(Y) ≤ (100MR_k)^4 cubes. Lemma D3.1 gives |D(I)| ≥ ½D(I_real) only for ρ′ ≤ c/N(Y). [I]
- SOURCES_W4 §5: (C1)–(C5) are CMP 116 (2.18), the condition before (2.28), ε_2 ≤ 1 on p. 19, the p. 20 condition and C_3, and the p. 21 condition O(1)C_3ε_1 ≤ ½E_0. E_0 enters only as E_0ε_1, so radius ρ = cE_0 costs ε_1 → ε_1/c. [I]
- SOURCES_D3W8 §1.4(i), verbatim: "Thresholds. If F contains a large-field characteristic function χ^c{|A(b)| ≥ ε} (or the large-plaquette factors with thresholds ε_j), then F(A′/√(1 − τ)) has threshold √(1 − τ)ε. Balaban's factor exp(−γ_0 ε²/(variance)…) becomes exp(−γ_0(1 − τ)…). For τ ≤ ½: γ_0 → γ_0/2. … the two losses multiply: γ_0 → γ_0(1 − τ)(1 − θ) ≥ γ_0/4 for τ, θ ≤ ½. Balaban uses these factors only to beat combinatorial factors O(1)^{|·|} and the per-site normalization budget, through a function of g_j that grows as g_j → 0. A fixed fraction of γ_0 does the same job after g (i.e. γ) is made smaller by a fixed factor. [reduced: not re-checked line by line in CMP 122 I]". The only CMP 122 I display named in §1.4 is "(1.73) of CMP 122 I" (with "the large-field parts of T′_k 1"). [I]
- SOURCES_D3W8_VERIFY S9: the domination inequality is correct; volume factor must be on the marginal region Y (or Anderson's inequality for symmetric convex tails); "the CMP 122 I use is [reduced]". [I]

