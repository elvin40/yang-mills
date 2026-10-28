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
