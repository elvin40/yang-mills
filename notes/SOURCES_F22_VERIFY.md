IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_F22_VERIFY — independent check of F22 edits (WG_FULL "WG-rate fix 2", THM39_FULL "F19 fixes", A18 Lemma Q step (3))

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Setup
Located change-log lines: WG_FULL.md l.382 ("WG-rate fix 2"), THM39_FULL.md l.322 ("F19 fixes"). Sections appended below as checked.

## 1. M_*, a_*, and the C_𝒟^{H1} entries (WG_FULL 4.5, 5.4, 5.9, 6.4, 6.5)
Recomputed from WG_FULL's own formulas.
- 4.5: C′_𝒟ρ_* ≤ ¼ with ρ_* = max{c_0M_1^{−1}, ε_V^{1/10}}, ε_V = K_VMα_0. Branch ρ: M_1 ≥ 4C′_𝒟c_0. Branch ε_V: K_VMα_0 ≤ (4C′_𝒟)^{−10}. Band: M_1 ≥ 3c_loc (0.4). So M_* = max{4C′_𝒟c_0, 3c_loc}, a_* = K_V^{−1}(4C′_𝒟)^{−10}. Matches 4.5 l.186–187 and 6.5 l.298–299.
- A1-W smallness C_𝒟^{H1}c_1(½ε)ρ_* ≤ ¼ splits the same way: M_1 ≥ 4C_𝒟^{H1}c_1(½ε)c_0 and Mα_0 ≤ K_V^{−1}(4C_𝒟^{H1}c_1(½ε))^{−10}. These are the second entries of M_*′ (5.9(i) l.265, 6.5 l.300) and a_*′ (l.268, l.300). Match.
- grep "H1}c_1": hits only at (I6) l.48 (generic), 5.4, 5.9, 6.5 M_*′/a_*′, and the change log. No C_𝒟^{H1} entry left in M_* or a_*.
- c_1(½ε) vs c_1(θδ_WG): ε ≤ ½δ_G < ½(1 − θ)δ_WG, so ½ε < ⅛δ_WG < θδ_WG at θ = ½; c_1 decreases in κ, so c_1(½ε) is the larger. 5.4 says so. Correct.
- Order: ε comes after M_*, a_* (needs δ_G from (1 − θ)δ_WG only, not from M_*). 6.4 lists ε, c_1(½ε) after a_* and before M_*′. No loop.
- Residue (minor): 0.7(G) still writes "M_*(d, L, θ) and a_*(d, L, θ)". Through c_0, B_0, K_V they depend also on a, θ_37, θ_310, λ, RM_0 (6.2 says so). Wording only.
Grade (1): CONFIRMED (one wording residue in 0.7).

## 2. The −θ_L in δ_WG's first entry
Read THM310_FULL 9.1(c), 6.2a "Common rate", 8.1, 8.3, the end "Rate line for WG_FULL"; THM37_FULL 6.3.
- THM37_FULL 6.3 [read]: (6.3.1) N_2(∇T_ω∇*) ≤ 4LB_0(ξ_j/ξ_{j′})(…)^{|ω|}e^{−(1−θ)δ_0d(ω)}; "Scale shift": ξ_j/ξ_{j′} ≤ Le^{θ_Sd}, rate becomes (1 − θ)δ_0 − θ_S. So THM37 6.3 carries ξ_j/ξ_{j′} and pays θ_S. CONFIRMED.
- THM310_FULL 9.1(c) [read]: "as THM37_FULL 6.3 … each term of Lemma A(a) loses one factor ξ of the input block; the cost is a factor 2L in the constant." Left end 9.1(a) gives 2B_0ξ_j, right end loses ξ_{j′}: the product carries ξ_j/ξ_{j′}, and the target (3.46) row has scale factor 1. So the end-to-end conversion is needed. The internal conversions of 3.1 are absorbed in W_P under θ_L ≤ ¼λδ_*, but they do not cover this end ratio on d(y, y′). 9.1(c) is silent on the rate. Inheriting −θ_L is the correct reading. CONFIRMED.
- Arithmetic: θ_L ≤ ¼λδ_* (THM310 8.3), θ_310, λ ≤ ¼: δ_310 − θ_L ≥ (1 − θ_310 − λ − ¼λ)δ_* ≥ (1 − ¼ − 5/16)δ_* = (7/16)δ_*. CONFIRMED. The arithmetic does not use the form of δ_*.
- NEW DEFECT (stale δ_*): WG_FULL (I1) l.40 still defines δ_* := (1 − θ_310)²min{(1 − θ_310)δ_0, δ_39, ½ε_39}. THM310_FULL's final rate (6.2a l.179, change log (f), and the closing "Rate line for WG_FULL") is δ_* := (1 − θ_310)²min{(1 − θ_310)δ_0, ¼ε}, ε = ε_39, with RM ≥ RM_0 := 4|2 − d/2|log L/ε. At RM ≥ RM_0, δ_39 ≥ ¼ε_39, and δ_39 > ¼ε_39 for RM above the threshold. So WG's δ_* is ≥ THM310's δ_*, and WG (I1) claims a rate that THM310 does not prove. Fix: (I1) must read δ_* := (1 − θ_310)²min{(1 − θ_310)δ_0, ¼ε_39} (copy THM310's rate line). With this form δ_* and δ_310 are RM-free, so "the first entry increases with RM" holds (δ_310 − θ_L increases as θ_L falls). WG's RM_0 ≥ 4(d + 4)log L/ε_39 dominates THM310's 4|2 − d/2|log L/ε_39, since d + 4 > |2 − d/2|. THM310 8.3 also needs θ_L ≤ min{¼λδ_*, ½θ_310(1 − θ_310)δ_0}; WG (I3) cites only ¼λδ_*. Admissible (RM raise after δ_*), but the RM_0 of WG must include it.
- "First entry is always the minimum": with the corrected δ_*: first ≤ δ_310 ≤ δ_* ≤ (1 − θ_310)²·¼ε_39 < ¼ε_39. Third ≥ (3/8)ε_39 at WG's RM_0 (8θ_L|2 − d/2| ≤ ε_39 there). So first < third. Second: ε_39 ≤ ½δ_G^min = (7/32)δ′, δ′ the THM37 rate used by THM39. If δ′ = (1 − θ_37)δ_0 (same θ_37), first < (7/128)(1 − θ_37)δ_0 < second for every θ_37 ∈ (0, 1). If THM39 is fixed at δ′ = ½δ_0 (THM39 2.3) and θ_37 varies, first < (7/256)δ_0 < (1 − θ_37)δ_0 needs θ_37 < 249/256; true for all θ_37 ≤ ¼ or ½ used anywhere. So TRUE for all admissible θ_37, θ_310, λ ≤ ¼ at RM ≥ RM_0 (WG's). It also held with the stale δ_*. So δ_WG = δ_310 − θ_L.
Grade (2): CONFIRMED for the −θ_L and the (7/16)δ_* bound; CORRECTED for the δ_* definition in (I1) (stale against THM310's final rate line) and the missing ½θ_310(1 − θ_310)δ_0 entry in the θ_L condition.

## 3. B_0 (WG_FULL 6.2, 0.6, 6.4)
- 6.2 l.280: B_0 := max of Balaban's B_0 of (3.42)/(3.46) (THM37 (5.2.1), THM310 8.1), the mixed L² constants (THM37 6.3: 4L²B_0; THM310 9.1(c): unnumbered), and (4/γ_N)L^{|2−d/2|} (THM39 2.4(v)). Dependence (d, L, a) through γ_N. Correct.
- Order: 0.6 and 6.4 put B_0 after THM37, THM39 at RM_0, THM310. Items before it ((d, L) → δ_0, C_𝒟, c_J, C_𝒟^{H1}, local constants) do not use B_0. After it: B_0′ = c_QB_0 → K_V, M_*, a_*, K_2. No circularity.
- Name clash (not a loop, but a hazard): THM310 8.4 and THM37 use "B_0" for Balaban's (d, L) local constant, and THM310's W_P = c_sB_0³(8/γ_N)c_1³ contains it. WG's B_0 is a different, larger constant with the same name. A reader who substitutes WG's B_0 into THM310's W_P creates a false loop (B_0 ∋ K_310 ∋ W_P ∋ B_0). Recommend the name B_WG (or B_0^{WG}) in WG_FULL.
- Minor: THM310 9.1(c)'s mixed-L² prefactor is stated only as "factor 2L" over 9.1(a)'s 4B_0, and the scale shift adds L. So the entry is ≤ 8L²B_0 (by analogy with THM37's 4L²B_0 = 4LB_0·L). WG should state it as a number.
Grade (3): CONFIRMED (no ordering circularity); recommend a distinct name and the explicit 8L²B_0 entry.

## 4. (AL′-ax) re-derived (THM39_FULL 4.4)
Setting: units L^kη = 1, |U(∂p) − 1| < αη² on N(c), U^u axial from the centre of N(c).
- (a) Hypothesis is CMP 98 (52) with α̃ = α, η̃ = η; gauge invariant. CONFIRMED.
- (b) Prop. 2 at α ≤ c_2 gives ε_i = 2α(L^iη)² for every level-i plaquette, i ≤ k; covariance moves it to Ū^i(U^u). CONFIRMED (image check in §4b below).
- (c) |g_x − 1| ≤ A_Lε_i. ε_i ≤ 2α (L^iη ≤ 1). A_Lε_i ≤ ½ ⇔ α ≤ 1/(4A_L). |log g| ≤ (π/2)|g − 1|, weights L^{−d} sum to 1, |Y_c| ≤ (π/2)A_Lε_i. |e^{iY}Ū^i(c) − 1| ≤ |Y| + LW_i. So W_{i+1} ≤ LW_i + (π/2)A_Lε_i. CONFIRMED.
- (d) w_i := W_i/(L^iη): w_{i+1} ≤ w_i + (π/2)A_L·2α(L^iη)²/(L^{i+1}η) = w_i + πA_LαL^{i−1}η. Σ_{i<k}L^{i−1}η = (1/L)·η(L^k − 1)/(L − 1) ≤ 1/(L(L − 1)). w_0 = W_0/η ≤ 2d²α from A18 Lemma Q step (1) (read: |U^u(b) − 1| ≤ dα|x − y|η ≤ 2d²αη on N(c)). So w_i ≤ (2d² + πA_L/(L(L − 1)))α. K″ = 2d² + πA_L/(L(L − 1)) CONFIRMED. a_ax = min{c_2, 1/(4A_L)} CONFIRMED (c_2 for (b), 1/(4A_L) for (c); c_2 already contains C_0α ≤ 1/3 for the Prop. 2 bracket).
- Note: a_ax is a new smallness condition for A18. A18's canon row (A18-Q) (l.162) lists only c_Q(d, L)α ≤ ½; it should also list α ≤ a_ax (axial) and Mα_0 ≤ a_AL ((3.35) gauge).
Grade (4): CONFIRMED (image check below).

## 4b. CMP 98 page images (pdftoppm -r 300, pdf pp. 3–10 = printed 19–26; read pp. 24, 26 directly)
- p. 26 [V]: (52) |U(∂p) − 1| < α_0η², η = L^{−k}; (53) inductive for all j ≤ k; Prop. 2: α_0 ≤ c_2 = min{1/(3C_0), ½c′_2} ⇒ |Ū^k(∂p) − 1| < α_0 + 2C_0α_0² < 2α_0; locality: (52) needed only on B^k of the four corners. The units (η = L^{−k}, unit coarse lattice) are exactly A18 Lemma Q's units L^kη = 1, so (AL′-ax)(b) uses Prop. 2 with no rescaling. (53) at level j gives < 2α_0L^{2j}η² = ε_j. Matches.
- p. 24 [V]: (43) recursion; locality B^k(c−) ∪ B^k(c+); covariance (Ū^u)_c = u(c−)Ū_cu^{−1}(c+) (needed in (AL′-ax)(b)). The axial gauge of (44)–(45) gives |V_0(x, x + e_μ) − 1| < (|x_1 − y_1| + …)α_0 — the same type as A18 step (1)'s w_0 ≤ 2d²α. Matches.
- No line on pp. 19–26 defines U(c) explicitly; the (15) reading stays [I] (as F19 A1).
Grade (4) final: CONFIRMED.

## 5. Lemma Q factor and A18 step (3) bracket
- Axial (corollary (a)): transport along ≤ dL level-j links, |Ad(g) − 1| ≤ 2|g − 1|: ‖Ad − 1‖ ≤ 2dL·K″αL^jη = 2dK″αL^{j+1−k} = [2·dL^{j+1−k}·2d²α]·K″/(2d²). Factor K″/(2d²) = 1 + πA_L/(2d²L(L − 1)). CONFIRMED.
- (3.35) gauge (corollary (b)): baseline with "(1) replaced by (3.35)" is |U_b − 1| ≤ η|A| ≤ c_3Mα_0η (ℓ = 1); (AL′) gives K′. Factor K′/c_3. CONFIRMED. Assignment (a) ↔ (AL′-ax), (b) ↔ (AL′) is correct.
- Does the bracket say exactly what Lemma Q needs? For the transport term, yes. Three gaps remain (CORRECTED):
  (i) Tag: the bracket says "I-Q1 is [P rel. CMP 98 Prop. 2 [V]]"; THM39 tags both variants "[P rel. CMP 98 Prop. 2 [V] and the (15) reading [I]]". The bracket drops the [I]. A18 l.177 and l.186 still list I-Q1 as [I], and the 6.1 header still has Prop. 2 [R]. Inconsistent within A18.
  (ii) Range: (AL′-ax) needs α ≤ a_ax = min{c_2, 1/(4A_L)}; (AL′) needs Mα_0 ≤ a_AL. A18's (A18-Q) row (l.162) has only c_Q(d, L)α ≤ ½. Add the range.
  (iii) Remainder term in corollary (b): α^{(j)} is the plaquette parameter of Ū^j, = 2c_PMα_0L^{2(j−k)} via (AL′)(a), not 2Mα_0L^{2(j−k)}. The single c(d, L) in ε_j must also absorb c_P for (b). Constant only.
Grade (5): CONFIRMED (factors and assignment); CORRECTED (A18 tags, range row, and c_P in (b)'s remainder).

## 6. K_Γ and a_LB
- Σ_{i<j} dL·2K′L^iηMα_0/ℓ ≤ 2dLK′Mα_0·(L^j − 1)η/((L − 1)ℓ) ≤ 2dK′(L/(L − 1))Mα_0. K_Γ = 2dK′L/(L − 1). CONFIRMED (|Ad(g) − I| ≤ 2|g − 1|, no e).
- K_ΓMα_0 ≤ ½c_φ ⇔ Mα_0 ≤ c_φ/(2K_Γ) = c_φ(L − 1)/(4dK′L). CONFIRMED.
- Dependents: γ_N = c_φ²/(4K_N) does not contain K_Γ. a_LB only grows (by e in that entry), so every downstream condition Mα_0 ≤ a_LB (THM39 2.4, 7.1; THM310 8.4 "a_37, a_LB") remains valid and weaker. grep: no live "2e·d" (only change-log l.321, history). SOURCES_ORDER_CANON has no a_LB line (as F19 found); still a canon slot.
Grade (6): CONFIRMED.

## 7. §7.3 (AL-c)
- c_P′: at U′U the fine plaquette defect beyond the unitary A-only part is ≤ 2η²|∇A′| + 6e²η²(|A + A′|² − |A|²) ≤ 2η²b_1ℓ^{−2} + 6e²η²|A′|(2|A| + |A′|). With |A| ≤ c_3/ℓ (Mα_0 ≤ 1), |A′| < b_1/ℓ, b_1 ≤ 1: ≤ [2 + 6e²(2c_3 + 1)]b_1(η/ℓ)². c_P′ = 2 + 6e²(2c_3 + 1) CONFIRMED.
- k_av^c: c_PMα_0 ≤ ½c_2 (from Mα_0 ≤ ½a_AL) and c_P′b_1 ≤ ½c_2 (b_1 ≤ c_2/(2c_P′)) give total α̃ ≤ c_2. ε_i ≤ 2c_P·½/(4A_Lc_P) = 1/(4A_L), ε_i′ ≤ 2c_P′/(8A_Lc_P′) = 1/(4A_L), so A_L(ε_i + ε_i′) ≤ ½. e^{c_NdLb_1} ≤ 2 from (log 2)/(c_NdL). All three entries CONFIRMED as the conditions they claim.
- K_av ≤ 2K′: need 1 ≤ c_3 and c_P′ ≤ c_P. c_P − c_P′ = 2(c_3 − 1) + 6e²(c_3² − 2c_3 − 1) > 0 for c_3 > 1 + √2; c_3 = 12L² ≥ 48. CONFIRMED.
- Still [I] / open: (i) complex form of CMP 98 Prop. 1/2 ((44) for G^c-valued V not checked on pp. 22–25); (ii) c_N(d, L) not computed (canon slot); (iii) linearity of the non-unitary part of log of a product in b_1 with an Mα_0-independent constant (first order only); (iv) the split of the plaquette defect into a unitary A-part and a non-unitary part that the complex Prop. 2 is fed with (the two sources are added, which assumes Prop. 2 is linear in its source; plausible, not shown); (v) the (15) reading of U(c). Status REDUCED is correct.
Grade (7): CONFIRMED (formulas); REDUCED stands with items (i)–(v).

## Verdict
WG_FULL: PAPER-GRADE relative to tagged inputs after one more local fix. Fix 2(i)–(iii) are applied correctly. New defect: (I1) still defines δ_* := (1 − θ_310)²min{(1 − θ_310)δ_0, δ_39, ½ε_39}; THM310_FULL's final rate line is δ_* := (1 − θ_310)²min{(1 − θ_310)δ_0, ¼ε_39}. WG overstates δ_310 by using the stale form. Also: θ_L condition must include ½θ_310(1 − θ_310)δ_0 (THM310 8.3); 0.7 "M_*(d, L, θ)" wording; B_0 name clash with Balaban's B_0 inside THM310's W_P (rename B_WG). Conditional on THM310_FULL 9.1(c) (−θ_L reading) and the source files.
THM39_FULL: PAPER-GRADE relative to tagged inputs. (AL′), (AL′-ax), K_Γ, a_LB, c_P′, K_av ≤ 2K′ re-derived. (AL-c) REDUCED. A18 bracket: factors right; tags, range row, and c_P remainder need edits in A18.

Canon lines (dependency order):
1. (d, L): δ_0, C_0, c′_2, c_2 = min{1/(3C_0), ½c′_2}, c_3 = 12L², A_L = 4d(d + 1)L², c_P = 2c_3 + 6e²c_3², K′ = c_3 + πA_Lc_P/(L(L − 1)), a_AL = min{1, c_2/c_P, 1/(4A_Lc_P)}, K″ = 2d² + πA_L/(L(L − 1)), a_ax = min{c_2, 1/(4A_L)}, K_Γ = 2dK′L/(L − 1), C_𝒟 = 5^dc(d)C_𝒟^in, C_𝒟^{H1}, c_loc.
2. (d, L, a): c_φ, K_φ, K_A, K_Δ, K_N = 2((2d + 1)3^dK_Δ² + a²), γ_N = c_φ²/(4K_N), a_LB = min{1, c_φ(L − 1)/(4dK′L), 1/(2c_3), a_AL}.
3. θ_37 (THM39 at δ′ = ½δ_0), θ_310, λ ∈ (0, ¼]; RM_min (θ_L ≤ δ′/(8(d + 4)), (2.59)); THM37: B′, c′, K_1, c_1(θ_37), a_37.
4. THM39: δ_G^min = (7/16)δ′, b_G, C_𝒟^N, c_+ → ε_39 (RM-free) → K_W^{39}, c_1(½ε_39).
5. δ_* := (1 − θ_310)²min{(1 − θ_310)δ_0, ¼ε_39}; δ_310 := (1 − θ_310 − λ)δ_* (RM-free); K_310, C_𝒟^{310}, M_310.
6. RM_0 := max{RM_min, 4(d + 4)log L/ε_39, RM with θ_L ≤ min{¼λδ_*, ½θ_310(1 − θ_310)δ_0}}.
7. δ_WG := δ_310 − θ_L(RM_0) (= min{δ_310 − θ_L, (1 − θ_37)δ_0, ½ε_39 − |2 − d/2|θ_L}); c_0 := max{K_1c_1(θ_37), K_310, c_1(½ε_39)K_W^{39}}; B_WG := max{B_0, B′, 4L²B_0, 8L²B_0 (THM310 9.1(c)), (4/γ_N)L^{|2−d/2|}}.
8. θ = ½; c_1(θδ_WG), K_V = (c_QB_WGc_1)^{10}c_ιe^{δ_WGc_b}, C′_𝒟 = 97C_𝒟; M_* = max{4C′_𝒟c_0, 3c_loc}; a_* = K_V^{−1}(4C′_𝒟)^{−10}; c′ = c_0^{10}K_V^{−1}.
9. δ_G = (1 − θ)δ_WG − (d/2 + 1)θ_S → ε, c_1(½ε) → A1-W B_W, K_W, c_W → M_*′ = max{M_*, 4C_𝒟^{H1}c_1(½ε)c_0, 4C″_𝒟c_0max{1, c_W}}, a_*′ = min{a_*, K_V^{−1}(4C_𝒟^{H1}c_1(½ε))^{−10}, K_V^{−1}(4C″_𝒟max{1, c_W})^{−10}}, M_W, K_2, a_** .
10. RM ≥ C(d, L, θ, ε) ((2.59) at θδ_WG, θ½ε, ½θ½ε; θ_S ≤ ¼θ½ε) → α_0 (Mα_0 ≤ min{a_**, a_LB, a_37}; A18: α ≤ a_ax).
11. Complex rows: c_P′ = 2 + 6e²(2c_3 + 1), c_N [slot], k_av^c = min{(log 2)/(c_NdL), c_2/(2c_P′), 1/(8A_Lc_P′)}, K_av ≤ 2K′, b_1^{37} ≤ k_av^c, Mα_0 ≤ ½a_AL.
