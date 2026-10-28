IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_HBETA verification (independent)

## 0. Setup
Started 2026-10-27. Reading SOURCES_HBETA.md in full plus context.

## 1. Item (1): chain rule and summability
- g = u^{−1/2}, dg/du = −½ u^{−3/2} = −½ g³. So ∂β_j/∂u_i = −½ g_i³ ∂β_j/∂g_i. CONFIRMED.
- Trajectory with all g ≤ γ: u_k − u_K = Σ_{l=k+1}^K B_l ≥ β(K−k), and u_K ≥ γ^{−2}. Put m = K−k ∈ {1,…,K} for k = 0,…,K−1.
- S_3 = Σ_k u_k^{−3/2} ≤ Σ_{m≥1} (γ^{−2}+βm)^{−3/2} ≤ ∫_0^∞ (γ^{−2}+βt)^{−3/2} dt = (2/β)(γ^{−2})^{−1/2} = 2γ/β. Integrand decreasing, so the sum over m ≥ 1 is below the integral from 0. CONFIRMED.
- Only the lower bound β and the floor γ^{−2} enter. CONFIRMED. Sharper value: Σ_{m≥1} ≤ ∫_0^∞ − (small) ; 2γ/β is not tight but is correct.
- The remark that "|β′| ≤ Cg gives Σ g²" drops the factor ½g³ is correct for the u-shift variable c. With the g-derivative bound Cg and the chain factor, the per-step rate is O(g⁴), Σ g⁴ ≤ Σ(γ^{−2}+βm)^{−2} ≤ ∫_0^∞ = γ²/β. CONFIRMED.
Grade (1): CONFIRMED.

## 2. Item (2): variational equation, Gronwall, bootstrap
- u_j = u_{j−1} − β_j(u_0,…,u_{j−1}), u_0 = u_0 − c. Differentiate in c: v_0 = −1, v_j = v_{j−1} − Σ_{i<j} (∂β_j/∂u_i) v_i. So v_j = −1 − Σ_{l≤j} B_l′. CONFIRMED.
- |B_j′| ≤ Σ_{i<j} ½C_1 g_i³ a_{j−1−i} |v_i| ≤ ε_j V_{j−1}. V_j = max(V_{j−1}, |v_j|) ≤ (1+ε_j)V_{j−1}, V_0 = 1. CONFIRMED.
- Telescoping: Π_{l≤j}(1+ε_l) − Π_{l<j}(1+ε_l) = ε_j Π_{l<j}(1+ε_l). Sum over j gives Π − 1 ≤ e^{Σε} − 1. CONFIRMED.
- Exchange: Σ_j Σ_{i<j} g_i³ a_{j−1−i} = Σ_i g_i³ Σ_{j=i+1}^K a_{j−1−i} ≤ A S_3. So Σε ≤ ½C_1A·2γ/β = C_1Aγ/β = x. CONFIRMED.
- e^x − 1 ≤ ½ ⇔ x ≤ ln(3/2) = 0.405. |v_k + 1| ≤ ½ gives ½ ≤ |v_k| ≤ 3/2. CONFIRMED.
- Bootstrap. J = component of {|c| ≤ 2r : û_K(c) > γ^{−2}} containing 0. Relatively open by continuity. On J the increments are in [β, β′], so û_k > γ^{−2} for all k, and the max-clamp is locally inactive. So û = u is C¹ near each point of J and Steps 1–2 apply. J is an interval containing 0, so u_K(c) = u_K(0) + ∫_0^c v_K ≥ g^{−2} − (3/2)|c| ≥ g^{−2} − 3r > γ^{−2}. By continuity this strict bound holds on the closure of J, so J is closed. J = [−2r, 2r]. CONFIRMED.
- Minor defect: the parenthetical "any smooth monotone clamp equal to the identity on u ≥ γ^{−2}" cannot also keep ĝ ≤ γ in C¹: ĝ′ = −½γ³ ≠ 0 at u = γ^{−2}, so a C¹ continuation exceeds γ just below γ^{−2}. The remark is not needed: the continuous max-clamp suffices, because differentiability is used only on J, where the clamp is locally inactive. Delete the remark.
- Note: Gronwall is not essential. A simpler bootstrap (assume V ≤ 3/2, get Σ|B′| ≤ (3/2)x) gives the same structure with condition x ≤ 1/3. The product form is correct and slightly sharper.
Grade (2): CONFIRMED (one superfluous remark about smooth clamps is wrong; harmless).

## 3. Item (3): constants
- β = β_0/2 ⇒ x = C_1Aγ/β = 2C_1Aγ/β_0. x ≤ ln 1.5 ⇔ γ ≤ ln(1.5) β_0/(2C_1A) = 0.2027 β_0/(C_1A). "≈ 0.20" CONFIRMED.
- r: need g^{−2} − (3/2)(2r) > γ^{−2}, i.e. 3r < g^{−2} − γ^{−2}. CONFIRMED. D2's 2r ≤ ½(g^{−2}−γ^{−2}) gives 3r ≤ ¾(…) < (…) for g < γ. CONFIRMED.
- Both conditions are K-independent. CONFIRMED. Caveat: g = g_K enters the r condition, so r → 0 as g_K → γ. Fine, since g_K < γ is fixed per theorem.
- Observation (new, small): with (H-hist) on the whole cube and β_j(0,…,0) = β_j^{(0)}, one gets |β_j − β_j^{(0)}| ≤ Σ_i C_1 a_{j−1−i} g_i ≤ C_1Aγ. Then (2.3) (0.20 < 0.5) already implies Lemma E's lower bound β_0/2. So Lemma E's separate condition γ ≤ sqrt(β_0/(2C)) is redundant under (H-hist), provided the zero-history value equals the one-loop coefficient. Upper bound becomes β_0′ + β_0/2 as well.
- a_0 = 1 forces A ≥ 1. The toy in §3(d) uses "A = ½", which is inconsistent with the normalization a_0 = 1 unless C_1 absorbs a factor. Only a labelling issue; see §6.
Grade (3): CONFIRMED.

## 4. Item (4): consistency with SOURCES_D2
- D2 §1.1 says verbatim "D2 does not use this identification" and defines u_j(c) through constant-source trajectories. D2 §4.4 gives only the sentence "(Hβ) follows from |B_j′(c)| ≤ C g_{j−1}³, because Σ_j g_j³ = O(γ)", with no source for the rate. The rate g³ is the chain-rule rate, which needs (I). Without (I), D2 offers only holomorphy (Cauchy, |B_j′| ≤ 2C/r, not summable). The gap is real. CONFIRMED.
- Radius mismatch: D2 §0 states |c| ≤ 2r, §4.4 states |c| ≤ r. CONFIRMED (minor).
- f_k(c) = g_k^{−2} − u_k(c), f_k′ = −v_k, so |f_k| ≤ (3/2)|c|: 3r/2 on |c| ≤ r, 3r on |c| ≤ 2r. Matches D2 §1.2 (H1) "|f_k| ≤ … ≤ 3r". CONFIRMED.
- Nuance on §4(a) "D2 omits V_{j−1}": this holds only under the chain-rule reading. If |B_j′| ≤ Cg³ were a direct bound (as D2 literally states it), no V factor arises. The conclusion is unchanged either way.
- §4(d) large-field add-on: Σ_{m≥1} C e^{−κ(γ^{−2}+βm)} = C e^{−κ/γ²} e^{−κβ}/(1−e^{−κβ}) ≤ the stated value. Arithmetic CONFIRMED. An additive term δ_j in |B_j′| ≤ ε_j V_{j−1} + δ_j fits the Gronwall step if δ_j is also bounded by δ_j V_{j−1}-type terms or simply added (V ≥ ½ makes this immediate). The bound itself is a D3 item, correctly marked unproved.
Grade (4): CONFIRMED.

## 5. Item (5): open hypotheses; is (H-hist) needed?
- Correction to §4 above: V_{j−1} ≥ |v_0| = 1 always, so an additive δ_j folds into ε_j directly.
- The list (I), (H-hist), (E) via (T2-a1′), C_1 independent of γ is complete for Lemma H, with two implicit items that should be listed: (i) β_j is the infinite-volume, K-independent function (LEMMAS Lemma D remark (iv)); otherwise "uniform in K" needs uniformity of C_1, a_m in the volume; (ii) β_j is C¹ jointly in all history arguments on the closed cube (stated inside (H-hist), fine).
- Is (H-hist) needed? Under (I) the c-trajectory moves every earlier coupling (v_i ≈ −1 for all i), so the dependence of β_j on g_i, i < j−1, enters B_j′. Balaban's one-argument notation (0.18)/(0.20) gives A = 1 and (H-hist) reduces to his p. 264 assumption. His p. 298 remark ("depends also on all preceding coupling constants") removes that shortcut. So some bound on the earlier-coupling dependence is needed. There is no way around it inside the chain-rule route.
- (H-hist) is stronger than needed. The proof uses only the column sums. Sufficient: sup_i Σ_{j>i} |∂β_j/∂g_i| ≤ C_1A (no Toeplitz form, no decay per entry). Weaker still: column sum ≤ C g_i^{−1+δ}, δ > 0, gives Σ_i g_i^{2+δ} ≤ C′γ^δ/β, still K-uniform. A column sum of order g_i^{−1} (each later step depending on g_i with O(1) total weight per unit of u) gives Σ g_i² ~ β^{−1} log K and fails.
- Alternative route without C¹ history bounds: holomorphy of β_j in a common complex shift of the history on a disc of radius ~ u_{j−1}/2, with |β_j − β_j^{(0)}| ≤ C|g|² there, gives by Cauchy |B_j′| ≤ 2C g_{j−1}⁴, summable. This trades (H-hist) for a complex-domain hypothesis like §3(c). Not cheaper; it also needs the large-field terms bounded for Re u ≥ γ^{−2}/2.
- Observation from §3: under (H-hist) with β_j(0,…,0) = β_j^{(0)}, (E) follows from (T2-a1′) alone. So the hypothesis list can drop Lemma E's separate C g² remainder bound.
Grade (5): CORRECTED (list is right; add the two implicit items; (H-hist) can be weakened to a column-sum bound).

## 6. Item (6): toy check (reproduced independently, numerics/.venv, python -I heredoc, <1 s)
Model: β_j = b_j + Σ_{i<j} s_{ji} d_{j−1−i} g_i, b_j ~ U[1, 1.5], d_m = D·2^{−(m+1)} (Σd = D), γ = 0.3, shot by bisection to g_K = 0.2. Bound: e^x − 1, x = ½ D S_3, S_3 from the computed trajectory. Central difference in c, h = 1e−4.
Random signs s = ±1:
| D | K | Σ|B′| | e^x−1 | S_3 | 2γ/β (computed β) |
| 0.5 | 50 | 0.0171 | 0.0368 | 0.145 | 0.620 |
| 0.5 | 400 | 0.0325 | 0.0632 | 0.245 | 0.623 |
| 0.5 | 2000 | 0.0356 | 0.0755 | 0.291 | 0.628 |
| 0.25 | 2000 | 0.0178 | 0.0370 | 0.291 | 0.607 |
Aligned signs, D = 2.5 (stress, x up to 0.47):
| s | K | max g | Σ|B′| | e^x−1 |
| +1 | 50 | 0.193 | 0.155 | 0.165 |
| +1 | 2000 | 0.194 | 0.337 | 0.349 |
| −1 | 50 | 0.196 | 0.197 | 0.255 |
| −1 | 2000 | 0.197 | 0.373 | 0.607 |
Findings: bound holds in all cases; with aligned signs it is nearly sharp (0.337 vs 0.349). S_3 ≤ 2γ/β holds with margin ~2×. My numbers do not match the author's (0.013, 0.0074, 0.0035 falling with K). With g_K fixed, S_3 and Σ|B′| rise with K and saturate. The author's falling trend implies a different, unstated shooting protocol (g_K or u_0 choice not given), and "A = ½" conflicts with a_0 = 1. The qualitative claim (bound holds, checks only Steps 1–2 algebra) is reproduced; the specific numbers are not reproducible from the text.
Grade (6): CORRECTED (claim confirmed; numbers unreproducible, protocol underspecified).

## 7. Summary
(1) CONFIRMED. (2) CONFIRMED, drop the smooth-clamp remark. (3) CONFIRMED; Lemma E condition redundant under (H-hist). (4) CONFIRMED. (5) CORRECTED: add K-independence of β_j; (H-hist) weakens to a column-sum bound. (6) CORRECTED: bound reproduced and nearly sharp; author's numbers not reproducible.
