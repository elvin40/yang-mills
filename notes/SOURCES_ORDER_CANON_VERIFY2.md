# SOURCES_ORDER_CANON_VERIFY2 — independent check of canon pass G (SOURCES_ORDER_CANON.md §G)

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Scope: G.1–G.5, the G change-log line, Part B lines B5, B5a, B10, B10a–B10g, B11, B14, B15, B18, B20, B22, B22a; CanonOrder.lean; WG_FULL "WG-rate fix 3".

## 0. Read of section G (done)
Read SOURCES_ORDER_CANON.md lines 91–160 (Part B) and 224–348 (E, F, G). G.3 claims 50 lines, 167 edges, file order B1, B2, B6, B3, B4, B5, B7, B8, B9, B10a–B10g, B5a, B10, B11, ...

## 1. Source lines read: THM37_FULL 3.2a and THM310_FULL rate line
- THM37 3.2a canon lines: B22 18L³Mα_0 ≤ a_1; B10 R > 18dL; B18 (A18 5.3 route) M_99 := C^{122}M/(18L), M ≥ 9L·M_th^{99} at C^{122} = 2 unrounded, and, if rounded down to a power of L, "at most one factor L" (α_0 → Lα_0, M ≥ 9L²M_th^{99}); B22a 18LMε_0^{109} ≤ R_1M_1a_1^{102}. All four appear in canon B10, B18, B22, B22a with the same constants. Rename M_th^{99} → canon M_99, THM37 M_99 → M_□^{99} (G.2) is consistent.
- THM310 final rate line: δ_* = (1 − θ_310)²·¼ε_39; δ_310 = (1 − θ_310 − λ)δ_*; θ_310, λ ∈ (0, ¼]; RM_0^{310} = 4|2 − d/2|log L/ε_39, RM ≥ 2RM_0^{310} for T310^c; s_dc = s′ = 1/L; M_1 ≥ M_310 with entry 3L²c_loc; R > 18dL; θ_L ≤ min{¼λδ_*, ½θ_310(1 − θ_310)δ_0}. Canon B10d/B10e/B10f/B15/B5 match this line term by term.
- Recomputations [P]: (a) 8|2 − d/2| ≤ 4(d + 4) ⇔ |4 − d| ≤ d + 4, true for d ≥ 0, so B10d's RM_0 implies both THM310 RM bounds. (b) At RM ≥ RM_0, |2 − d/2|θ_L ≤ |2 − d/2|ε_39/(4(d + 4)) ≤ ε_39/8, so δ_39 ≥ (3/8)ε_39. (c) θ, λ ≤ ¼ gives δ_310 ≥ ½δ_*; θ_L ≤ ¼λδ_* ≤ δ_*/16; so δ_WG ≥ (7/16)δ_*. (d) δ_310 − θ_L ≤ ¼ε_39 ≤ (7/128)δ_0 < (1 − θ_37)δ_0 and < (3/8)ε_39 ≤ ½ε_39 − |2 − d/2|θ_L, so the first entry of the B10f min is the minimum. B10d, B10e, B10f formulas: CONFIRMED.
