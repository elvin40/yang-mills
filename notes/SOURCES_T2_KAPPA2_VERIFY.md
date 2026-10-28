IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_KAPPA2 verification (independent)

Started 2026-10-28.

## 1. Context read
Read SOURCES_T2_KAPPA2.md (claims), IDEAS_FABLE §I5, TRUST_LEDGER B22 (open; "not stated"), D2 §6.3 (l. 267–276), D2C §3.1–3.3, D3R §3.2 (F1, F2), FX_R2 §1–§5. Firewall kept.
Notes from context:
- D2 §6.3 output claim: |out_Y(f) − out_Y(c)| ≤ … e^{−κ d_{k+1}(Y)} at FULL κ, with the inputs only admissible "after the factors (1+dist) are absorbed by half of the decay". So the half-rate loss in (L1) is on the input-admissibility side, inside the t-Cauchy argument.
- D2C (3.3) and R_X: e^{−(κ/2)d_j(X)} at scale j — these ARE the sourced V^{(j)}, which stay in E_k forever (Balaban's (0.29) form).
- D3R F2: output E_R at κ′ < κ in d_{k+1}; generated each step; (1+d)² absorbed.
- FX_R2 §3: κ_final := 2κ + √d(1+2β)κ + c_d; κ_vol independent of κ; M ≥ 12L(3κ_final/C_1)^{1/d}.
## 2. CMP 116 images p. 19, p. 21 (pdftoppm -r 110)
- p. 19 (2.36): "2d_k(Z_i) ≥ Ld_{k+1}(Z′_i)", Z′_i = smallest localization domain from D_{k+1} containing Z_i; "simple, but awkward, geometric and combinatoric considerations". CONFIRMED verbatim.
- Loss sequence on pp. 19–21: (2.33) (1−4δ)κd_k, (2.35) (1−5δ)κd_k, (2.39)–(2.40) (1−9δ)½Lκd_{k+1} with exp(−5κ) and C_3ε_1 exp 5κ per factor, sums run at ½δLκd_{k+1} and δκ (via (1.28)).
- p. 21 (2.41): "|E^{(k+1)}(X)| ≤ O(1)C_3ε_1 exp(−(1−10δ)½Lκd_{k+1}(X))"; "we assume that (1−10δ)½L = 1, or δ = 1/10(1−2L^{−1})". CONFIRMED. Also p. 21: "take M sufficiently large, so that δ_0M ≥ κ" (lower bound on M, not on κ).
- So g_T(δ) = (1−10δ)L/2, g_T = 1 at printed δ = 11/130 = 0.0846 (L = 13). Every δ-extraction is a fraction of the input rate κ: the step is homogeneous in the input rate up to the absolute factors exp(±5κ) (constants, absorbed in C_3ε_1). [V + P]
## 3. CMP 119 p. 262 and CMP 122 II p. 376 images
- CMP 119 p. 262 [image]: "after the operation T we obtain expressions with better analyticity and decay properties … the newly created expressions E^{(k)}, R^{(k)}, B^{(k)} … have better decay properties, with the number κ replaced, for example, by (1+4β)κ. Such improved bounds are needed for the R-operation." Also: "the operations T and R, applied in this order". No δ printed on this page. CONFIRMED.
- CMP 122 II p. 376 [image]: exp(−κd_j(X)) ≤ exp(−βκd_j(X))exp(−(1−β)κ(L^jη)^{−1}d_k(Y_0)) ≤ exp(−βκd_j(X))exp(−(1+3β)κd_k(Y_0)) for j < k; j = k factor exp(−(1+4β)κd_k(X)) "from the improved bounds after the k-th renormalization transformation T". CONFIRMED.
- Note on (K2): Balaban's j < k step uses the full scale ratio (L^jη)^{−1} (no factor ½), not (L/2)^{k−j}. The author's (K2) with L/2 is therefore conservative; θ(1−β)L/2 ≥ 1+3β: 0.5·0.75·6.5 = 2.4375 ≥ 1.75 at β = ¼; boundary β ≤ 2.25/6.25 = 0.36. CONFIRMED.
- Arithmetic (K1) redone: β = ¼, θ = ½, L = 13: 2·2/6.5 = 0.6154, δ ≤ 0.03846. β = 1/7: 2·(11/7)/6.5 = 0.4835, δ ≤ 0.05165. Unsourced: 0.0692 (β = ¼), 0.0758 (β = 1/7). Printed 11/130 = 0.0846. 3.25·0.7 = 2.275 ≥ 2. Factor 0.0692/(0.0385·0.5) = 3.60 (vs printed δ: 0.0846/0.01923 = 4.40). All CONFIRMED.
## 4. Stacking check (task: "one generation per step, no compounding")
Finding: within ONE step, the losses stack on the same term. D2C (3.3) bounds D_X through (F) = the freezing property (vii) of E^{(j)}, and (vii) is proved in D2 §6.3 with L1 applied to inputs that include the earlier V^{(i)}, which already carry the L2 loss. So a V-remainder at scale k+1 carries L2∘T∘L1∘(L2 of the previous step). With θ = ½ literally multiplicative per absorption, and Balaban's order T (with coupling extraction, CMP 109) then R, the fixed point needs θ²g_T ≥ 1+4β if V^{(k+1)} enters R as a j = k+1 term: at β = ¼, g_T ≥ 8 > 6.5 = L/2. That FAILS for every δ ≥ 0 at L = 13. (If R only needs κ from V-terms: θ²g_T ≥ 1 ⇔ δ ≤ 0.0385, no margin.)
Repair (proved here): every one of L1–L3 is a polynomial absorption, so the true cost is ADDITIVE: (1+d)^m e^{−ρd} ≤ e^{−(ρ−m)d}. L1: m = 1 (+ dist(X,y) via X ⊂ Y, polynomial in d_{k+1}(Y) with constant LM). L2: m = 3 in (3.3), m = 2 in R_X; the τ_X > α_2/2 case needs e^{−εd} ≤ C(M)(L^jη)^{4+α}, and 1+d > α_2/(2C_ax M a_1(L^jη)²) makes this polynomial too (cost ≈ (4+α)/2 additive, constant C(M)). L3: m = 2. So per cycle the kept fraction is θ = 1 − m_tot/κ with m_tot ≤ ~10 summed along the longest stacking chain. "κ/2" in D2/D2C is a choice, not forced. With θ defined as the TOTAL per-cycle kept fraction (κ ≥ 2m_tot gives θ ≥ ½), the author's (K1)–(K2) and numbers stand unchanged. The author's text must state θ that way; as written (each loss separately "κ → θκ", then min) it undercounts.
## 5. CMP 122 II pp. 388–390 images
- (1.92) [image]: Π_h exp(−2(1+β_0)^{−1}p_0(g_k) + 1) · (Π_{Y∈D} α exp(−(1+2β)κd_{k,Z′}(Y))) exp Σ_{Y∈D} α exp(−(1+2β)κd_{k,Z′}(Y)). CONFIRMED.
- (1.93) [image]: as quoted by the author, incl. Π_h exp((1+β+β/(3·2^d))κM^{−d}|X_{j_h}|) and "α^{1/3} ≤ exp(−(1+β)κ2d)". CONFIRMED.
- p. 389 [image]: "O(1)α^{1/3} ≤ 1 ≤ 1/(6·2^d)βκ for κ large enough"; "The product over h there is estimated by Π_h exp 2κ(100R_k)^d, and this product is combined with the first product on the right-hand side of (1.92). We assume that g_k is so small that −2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k) (for example, take β_0 = 1/7, then this means that −(1/4)p_0(g_k) + 1 + 2κ(100R_k)^d ≤ 0 …)". So the volume charge is paid by p_0. Author's item (4) CONFIRMED. (Arithmetic: 2/(8/7) = 7/4, 7/4 − 3/2 = 1/4. ✓)
- (1.96)–(1.97) [image]: exp(−½p_0)100^dR_k^{−d} < exp(−½p_0) ≤ βκ/(6·2^d); |F(X′)| ≤ c_1 exp(−(1+β)κd_{k,∪Y_i}(X′)). CONFIRMED.
- p. 390 [image]: (1.99) O(1)c_1 exp(−(1+½β)κd_{k,∪Y_i}(X)); (1.100) exp(−p_0(g_k))exp(−κd_k(X)) ("the linear size … can be replaced by d_k(X)"). CONFIRMED.
- Drop count: 1+4β → 1+3β (1.66) → 1+2β (1.68) → 1+β (1.93/1.97) → 1+½β (1.99) → 1 (1.100) = 4β. CONFIRMED. The last ½β pays the metric change d_{k,∪Y_i} → d_k; it is an additive drop in units of κ, so the R step maps ρκ (ρ ≥ 1+4β) to ≥ (ρ−4β)κ ≥ κ.
## 6. Larger κ (≈3.6×) and the order of constants
- Order [V, FX_R2 §1 quotes; CMP 116 p. 21 image "take M sufficiently large, so that δ_0M ≥ κ"]: L → κ ≥ κ_0 → β, δ → κ_1 → M ≥ M(κ) → α's, ε_1 → p_0, γ. No printed condition is an UPPER bound on κ.
- Conditions that grow with κ (SOURCES_W4 §5 list, verbatim from CMP 116 images): (C1) ⅛(κ_1−1) ≥ (1−3δ)κ ⇒ κ_1 ≥ 8κ+1 (κ_1 is fixed after κ); (C2)–(C4) ε_1·M^q·exp C_2κ_1·exp 5κ ≤ 1; field side e^{32κ_1}ε_1 ≤ abs. const. (so ε_1 ≲ e^{−256κ}); (1.93) α^{1/3} ≤ exp(−(1+β)κ2d); before (1.95) p_0 ≥ 4(1+2κ(100R_k)^d) at β_0 = 1/7; δ_0M ≥ κ. Every one is "a later constant (κ_1, M, α, ε_1, p_0, γ) small/large enough". So a larger κ breaks nothing; it makes ε_1, α, γ smaller (by factors exponential in κ) and M, p_0 larger. CONFIRMED: only later constants move, ending in a smaller γ.
- Name clash to flag: D3R F2's "g^{κ_0}, κ_0 > 2" is a coupling power, not the κ-threshold κ_0 of CMP 109 Thm 3; KAPPA_BOUNDED's κ_*, κ_k are one-loop quantities, not the decay rate. Neither is affected.
- The factor 3.6 compares with the unsourced need δ ≤ 0.0692; against Balaban's printed δ = 0.0846 it is 4.4. Immaterial.
## 7. Last scale: downstream users of the rate (κ_eff = θκ/(1+4β), κ/4 at θ = ½, β = ¼)
1. FX_R2 M-condition: needs κ_vol ≥ κ_final^θ = (2 + √d(1+2β))κ_eff + c_d ≤ 1.25κ + c_d (d = 4, β = ¼). κ_vol = C_1M^dR_{K+1}/(3·4^d(L+2r)^d) has no κ. Old condition implies new one. CONFIRMED.
2. Final expansion, Cammarota entropy (CMP 116 (1.26)/(1.28)): κ_eff ≥ c_d ⇒ κ ≥ 4c_d. CONFIRMED.
3. (1.94) "1 ≤ βκ/(6·2^d)" at κ_eff: κ ≥ (1+4β)·6·2^d/(βθ) = 1536 at d = 4, β = ¼. Lower bound on κ; admissible. CONFIRMED.
4. (1.96) exp(−½p_0) ≤ βκ_eff/(6·2^d): p_0 larger by log 4. Admissible (p_0, γ last). CONFIRMED.
5. (1.93) α^{1/3} ≤ exp(−(1+β)κ_eff2d) and the p_0 condition before (1.95) with κ_eff: weaker. CONFIRMED. (Note: if the final chain is run with the actual κ in the 2κ(100R)^d charge, it is Balaban's printed condition; either way p_0 pays.)
6. FX §4/§6 activity bound |K(U)| ≤ e^{−p_0(γ)}e^{−κ′d_K(U)}, constants "(p_0(γ), κ, c r) independent of K and ε": κ′ = (1+β)κ_eff, still K- and ε-independent. No other threshold. CONFIRMED.
7. Bridge B-N1 / source form (ASSEMBLY §2.2–2.3): uses only K-uniform constants and r_0; no κ threshold. Unaffected.
8. Nontriviality envelope (ASSEMBLY §2.9 (NT), (0.31)): (NT) is a hypothesis owned by (E14-f); its remainder C(g² + (d/ℓ)²) needs only a convergent expansion at the layer k(d) (intermediate layers have rate ≥ κ after rescaling; only the last layer has κ_eff). (0.31) is the coupling window of Theorem 2w, independent of the decay rate. No new condition.
Caveat on κ_eff: with the stacking of §4 under a literal ½-per-absorption reading the worst last-scale input is θ²κ, i.e. κ/8. With the additive reading (θ = total per-cycle kept fraction) the author's κ_eff stands.
## 8. Assessment of the [R] inputs
- (R-a) Homogeneity of the T step in the input rate: supported by the CMP 116 images pp. 19–21 (every loss is a δ-fraction of the input rate; the exp(±5κ), exp C_2κ_1 factors are constants absorbed by ε_1). The large-field T step (CMP 119 Sect. 3) was NOT checked on images; its loss constant may differ from 10δ. Homogeneity of the R chain (1.66)–(1.100): confirmed on images; drops are additive multiples of βκ. Status: reduced, one unchecked reading (CMP 119 Sect. 3).
- (R-b) δ free apart from summation thresholds: (2.41) is the only equation fixing δ on pp. 16–21; (C1) uses δ benignly (smaller δ ⇒ slightly larger κ_1). Supported.
- (R-c) Iterated (2.36) with closures for (K2): can be replaced by Balaban's printed j < k inequality on CMP 122 II p. 376, which uses the full ratio (L^jη)^{−1} and is stronger. Upgrade to [V] (Balaban assertion, covered by global (G1)). (2.36) itself is asserted without proof ("simple, but awkward"); not in the ledger; covered by (G1) because Balaban uses it in his own step.
- Others: localization X ⊂ Y = (H2)(i) [existing]; κ_vol independent of κ [FX_R2 §3, verified there]; analyticity of the step in its inputs = existing W4 item.
- Inference, not [P]: "Balaban already needs a δ below his printed value" assumes CMP 119's T step has the same (1−10δ)L/2 gain. The p. 262 sentence shows he needs gain ≥ 1+4β; the δ value is our inference. Mark [I].
## 9. Grades
(1) Loss per step, three places, one generation per step, no compounding: CORRECTED. Places and per-step frequency confirmed. But losses stack within one step (D2C D_X uses (vii), whose proof applies L1 to inputs already carrying L2). With a literal ½ per absorption this gives θ² and (K1) fails at L = 13, β = ¼ (needs g_T ≥ 8 > 6.5). Repair: all three losses are polynomial absorptions with additive cost m (≤ 3 each); define θ := 1 − m_tot/κ as the TOTAL per-cycle kept fraction; κ ≥ 2m_tot gives θ ≥ ½ and everything below holds. A generation made at step k at rate θκ is rescaled at step k+1 by the same (2.36) factor as all terms: output θ(1−10δ)(L/2)κ ≥ (1+4β)κ ≥ κ under (K1); old terms keep native bounds and gain (L/2)^{k−j}.
(2) Gain L/2 by (2.36), (2.41) uses it all, (K1), (K2), 3.6×, Balaban needs smaller δ: CONFIRMED (images and arithmetic), with two notes: (K2) is conservative (Balaban's p. 376 uses the full ratio); "Balaban's implicit δ" is [I], not [P].
(3) κ_eff = θκ/(1+4β) = κ/4; (K3) implied by FX_R2: CONFIRMED for all eight downstream users (§7); new lower bounds on κ only (κ ≥ 1536 at d = 4, β = ¼ from (1.94)).
(4) (1.93) charge paid by p_0; 2.275 ≥ 2: CONFIRMED on p. 389 image and by arithmetic.
Larger κ: CONFIRMED harmless; only ε_1, α's, p_0, M, γ move (γ shrinks).
B22 regrade: YES to "reduced [R]", conditional on the §4 restatement of θ (one paragraph in SOURCES_T2_KAPPA2 §1). "No new Balaban input": true up to one new unchecked reading (homogeneity/loss constant of the CMP 119 Sect. 3 large-field T step), which should be added to A22. (2.36) is a Balaban assertion covered by (G1).

STATUS: COMPLETE
