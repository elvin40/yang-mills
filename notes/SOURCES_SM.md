# SOURCES_SM — the step-map Lipschitz bound (SM) for Lemma HH, from (W4)

Status 2026-10-27 (Claude, Opus; unverified). Inputs: SOURCES_HHIST §6–7, SOURCES_HHIST_N1_VERIFY Part 1, SOURCES_W4 §1–8, SOURCES_D3W8 §2.2–2.3 (F2′) + VERIFY S5/S8, CMP 109 pp. 270–280, CMP 116 Sect. 1–2. Firewall kept.
Sections are appended in order of work; the ledger (last section) is authoritative.

## 1. New quoted input: the per-input fluctuation-difference bound, CMP 116 (1.21)–(1.24), p. 7 [V, page image]

Verbatim (1.22): "1/|t_□| = 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B| < 8B_0C_1e^{16κ_1}α_2^{−1}ε_1."
Verbatim (1.24), the bound of one term (1.23) of the curly-bracket expansion, built from ONE input E^{(j)}(X, ·):
  |(1.23)| ≤ 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B| E_0 (α_1/α_3)^5 (L^jη)^5 · exp(−(κ_1−1)M^{−4}|Y_0∖□^4|) exp(−κd_j(X)).
Context (p. 7): "We were doing all the considerations for the last term in (I.3.34), hence we estimate the above expression using (I.3.54)." The term is the t_□-derivative at t_□ = 0, by Cauchy on the circle (1.22).
p. 8, verbatim: "To bound the first sum, over □′ ⊂ □_2, we use the factor (L^jη)^5 in (1.24). This yields (6L)^4L^jη, and the sum over j is bounded by 2(6L)^4." Result (1.29): "|Σ(1.23)| ≤ E_0ε_1O(M^4) exp O(1)κ_1 exp(−⅛κ_1d_k(Y))".
For the other bracket terms ((I.3.7)/(I.3.15)), p. 8: "The first term under the exponential gives also the factor L^jη, which controls the sum over j."

Reading. (1.24) is a per-slot statement. One input term E^{(j)}(X) enters the bracket with three separate factors:
 (i) its own size (E_0 = its sup on the analyticity domain, CMP 109 (1.18));
 (ii) the fluctuation factor α_2^{−1}g_k|B| ≤ α_2^{−1}ε_1 (Cauchy in t_□; this is the p. 280 mechanism);
 (iii) the scale factor (L^jη)^5, η = L^{−k}, which after the count of L^{4(k−j)} scale-j cubes □′ in a scale-k cube leaves (6L)^4 L^{−(k−j)}.
So the map I ↦ V′_k is linear, and its restriction to label j has norm ≤ K_V α_2^{−1}ε_1 L^{−(k−j)}, with K_V := 8B_0C_1e^{16κ_1}(α_1/α_3)^5(6L)^4·O(M^4)e^{O(1)κ_1} (constants of (1.24)–(1.29)). This is the decomposition the task asks for: "size of δI relative to I" = α_2^{−1}ε_1 (ii), and the per-label suppression = L^{−(k−j)} (iii). Note the exponent: the bracket gives decay L^{−1} per scale (from (L^jη)^5 against L^{4(k−j)} cubes), i.e. α_bracket = 1, not the α of (0.29).
Caveat [check]. The (L^jη)^5 in (I.3.54) is the fifth-order Taylor remainder in the field (CMP 109 p. 258: "The fifth order term can be bounded by E_0O((L^jη)^5)"); orders ≤ 4 are treated by the cancellations of Sect. I.4–5 (p. 298). For the derivative ∂_{g_i}, the lower-order parts are also linear in the input and cancel in the same way (HHIST §4, p. 298), so the per-slot factor applies to the remainder path only. This is the same restriction HHIST already uses.
