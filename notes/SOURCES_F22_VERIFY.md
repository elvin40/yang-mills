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
