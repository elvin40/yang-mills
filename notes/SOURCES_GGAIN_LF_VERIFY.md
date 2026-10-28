# SOURCES_GGAIN_LF verification (independent)

Started 2026-10-28. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## V1. Two p_0's [V: CMP 119 p. 244, p. 255 images; CMP 122 II pp. 385, 390 images]
- p. 244 image: "p_0(g_0) = A_0(log g_0^{−2})^{p_0} with a positive integer p_0"; Balaban's own estimate exp(−½p_0²(g_0)) ≤ g_0^{A_0(log g_0^{−2})^{p_0}−1}. p. 255 (2.4): ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j).
- Balaban overloads the symbol: the integer exponent p_0 and the function p_0(g). Every large-field factor (1.89), (1.97), (1.100) uses the FUNCTION p_0(g_k).
- File §3.3 uses the function in the exponent and the integer only as the power: p_0(x) = A_0(log x^{−2})^{p_0} ≥ A_0 log x^{−2} (needs log x^{−2} ≥ 1, i.e. x ≤ e^{−1/2}; true for x ≤ γ). Then x^{−1}e^{−θp_0(x)} ≤ x^{2θA_0−1}. No conflation. CONFIRMED.
- p. 385 image: "¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2}", "satisfied for p_0 large". The file's p_0² ≳ R^{d+2} is the correct reading. Here "p_0 large" means the INTEGER exponent: p_0(g)² = A_0²(log)^{2p_0} beats R^{d+2} ~ (log)^{r(d+2)} iff 2p_0 > r(d+2) (or equality with A_1 large). Minor addition: the file does not state this; it is not needed for the 1/g step.
- p. 390 image: (1.99) c_1 = exp(−p_0(g_k)) or α^{1/3}; (1.100) |R′^{(k)}| ≤ exp(−p_0(g_k))exp(−κd_k(X)); (1.101), (1.102) as quoted. CONFIRMED.

## V2. β from E-class only (item 4a) [V: CMP 119 p. 279 image, PDF p. 37]
- Quote: "The coupling constant renormalization is performed by subtracting β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1)". The vacuum-energy step subtracts values of E^{(k+1)} AND R″^{(k+1)} at U = 1; only the coupling step is E-only.
- Same page: the E^{(k+1)}(X) terms for X ⊂ Λ_{k+1} "do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]". The Λ_{k+1}-free terms of the second expectation of (3.26) are booked as R″^{(k+1)} and go into R^{(k+1)}, not E.
- So β_{k+1} is defined by the E-class terms, which equal the all-small-field [I] terms. R′, B′, T(Y) never enter the β subtraction. Upgrade 2.2 from [I] to [V] for the CMP 119 step. Residual [I]: the CMP 122 II step uses the same convention (not re-read there); D3 (viii) "B_j is defined from E-class terms only" is consistent.
- Consequence for §6: if E^{(k+1)} equals the [I] (CMP 109/116) terms, the running cutoffs ε_k, χ′_j, χ′ do not act inside the β-relevant E integral; only CMP 109's fixed-ε_1 χ_k does (GGAIN G3). §6 is then a harmless over-cover, not a gap. Either reading gives the same verdict.
