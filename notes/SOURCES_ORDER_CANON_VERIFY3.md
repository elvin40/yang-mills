# SOURCES_ORDER_CANON_VERIFY3 — check of canon passes T-old B136 (VERIFY2 fix pass) and B137 (Ω pass)

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read and excluded from every grep.
Scope: the B136 and B137 transcriptions into SOURCES_ORDER_CANON.md (new N- ids), the empty slots c_N, a_V, c_V, c_tr, δ_H, the R_0M_0 slot, and lean/YmLean/CanonOrder.lean.
No existing file was edited. This file is the only output.

Id map used (IDS.md §N): B5 = N-060, B10a = N-100, B10b = N-110, B10c = N-120, B10d = N-130, B10e = N-140, B10f = N-150, B10g = N-160, B5a = N-170, B10 = N-180, B14 = N-250, B14a = N-260, B15 = N-270, B17a = N-300, B18 = N-310, B22 = N-370, B32 = N-490.
Source files keep old ids (frozen banner). Below, "N-xxx (Bnn)" gives both.

## 0. Canon text read
Read SOURCES_ORDER_CANON.md Part B (ll. 91–160) and §G (ll. 301–354), incl. the three change-log lines for B136, the (T1) note and B137.
Read SOURCES_ORDER_CANON_VERIFY2.md in full (its §9 (f), (g) is the B136 brief).

## 1. B136 transcriptions (VERIFY2 fix pass)

| # | canon entry | source read | grade |
|---|---|---|---|
| 1a | N-060 (B5): c_V := the O(1) of (3.61); a_V := its "α_1 sufficiently small" radius; (d, L) only; used at N-110 | CMP 99 Propagators p. 402, (3.61), text layer l. 657–661: "\|(V′(A)λ)(x)\| ≤ O(1)α_1((L^jη)^{−1}\|∇_Uλ\| + (L^jη)^{−2}\|λ\|) … analytic function of A on the domain (3.37), for α_1 sufficiently small". THM37_FULL l. 267 (V2) names both. N-110 a_1^c(θ) = min{a_1/L², a_V/L², 1/(4c_VL³B_0c_1(θ)), ¼} = THM37_FULL 8.3 l. 272 verbatim. | CONFIRMED (names only; Balaban gives no value) |
| 1b | N-060: C_pt ≤ 2^{d+1}; C_pt ≤ C_𝒟^in ≤ 3(2L + 2)^d; used at N-140 | THM37_FULL 3.2(e) l. 113 (C_pt ≤ C_𝒟^in ≤ 3(2L + 2)^d) and 5.3 l. 193 (C_pt ≤ 2^{d+1}: 2^d cubes of one level contain a point; only levels n, n − 1 can contain a level-n block). THM37 tags the 2^{d+1} bound "[I: cube geometry, as WG_FULL 0.4]". THM310 (8.3.1) l. 252 uses 2·5C_ptC_𝒟^{310}K_310 = canon 10C_ptC_𝒟^{310}K_310. | CORRECTED (minor): value matches, but the canon drops the [I: cube geometry] tag on 2^{d+1}. The [P] fallback C_pt ≤ 3(2L + 2)^d is in the same entry, so no number depends on the [I]. |
| 1c | N-060: c_T(d, L) := 2L(D_0 + 3(d + 1)) + 2; D_0(d, L) ≥ 1 the least D with c_tre^{−δ_HD/4} ≤ ¼; used at N-310 as M ≥ c_T/22 | SOURCES_C_CONDITION 4.3(d) l. 83 (same formula, same D_0), 4.3(e) l. 84 ((d, L) only, through C_H, δ_H, c_q), 4.4 l. 86 (M_T := c_T/22). The c_T/22 entry is in §F l. 299 (dated note) and counted at N-310. | CONFIRMED |
| 1d | N-060: C^{122} := 2 | CMP 122 I p. 191 (text l. 854): "The constant C above is a positive integer. It is usually small, because of geometric constraints on the cubes, for example we can assume that C ≤ 2." So C ∈ {1, 2}; 2 is an allowed value. | CONFIRMED. Note: the source says "positive integer"; the canon may add this. |
| 1e | N-310 (B18): M ≥ (18L²/C^{122})M_99, monotone decreasing in C^{122}; 9L²M_99 at C^{122} = 2 | THM37_FULL 3.2a l. 120: M_□^{99} := C^{122}M/(18L), rounded down to a power of L costs one factor L, M ≥ 9L²M_th^{99} at C^{122} = 2. Recomputed: L^{⌊log_L x⌋} ≥ x/L with x = C^{122}M/(18L) gives M ≥ (18L²/C^{122})M_99. Decreasing in C^{122}: yes. | CONFIRMED |
| 1f | N-140 (B10e): K_P′ := max{K_1^{37}c_1(θ_310), c_1(½ε_39)K_W^{39}} | THM310_FULL (6.3.1) l. 189–190: K_P′ := max{K_1^{37}c_1(θ), c_1(½ε)K_W}; l. 100, 180 fix θ = θ_310 and ε = ε_39 (THM39 5.2); K_W is THM39's (3.9-W (ii)). | CONFIRMED. Minor: the canon cites "c_1 of N-110", but N-110 lists only c_1(θ_37); c_1(θ_310) and M_37(θ_310) (used by M_310 at N-140) are not listed at N-110. Both are the same RM-free functions at θ_310 ∈ N-060, so no cycle. Also c_1(·) as a function is listed at N-190, after its first use at N-110 (wording only). |
| 1g | N-160 (B10g): M_W^{39,c} ≈ 2M_W^{39}, THM39's complex threshold on M_1; imposed at N-270 | THM39_FULL 7.4 l. 260: "ρ^c ≤ 2K_W/M_1 and threshold M_W^c ≈ 2M_W". N-270 (B15) lists "≥ M_W^{39,c} (… N-160; THM39_FULL 7.4)". Lean edge (N160, N270) present. | CONFIRMED as transcription. Caveat: the source gives only "≈". The exact threshold is THM39 5.2(h) l. 206 M_W := max{2C_𝒟^Nc′, M_a, M_e′, M_N, M_c} evaluated with the complex constants (2K_W, b_G^c, ε^c). A canon constant should carry that definition, not "≈". |
| 1h | N-180 (B10): RM_min → RM_min^{B10} := R·M_min | Name clash of VERIFY2 F-c is removed. | CORRECTED (cosmetic): after the renumbering the superscript "B10" is an old id inside a live symbol. Write R·M_min (or RM_min^{N180}). |
| 1i | WG_FULL (I7): "B_WG replaced by c_Q B_WG" | WG_FULL l. 50 (old l. 49) reads exactly this; matches 2.6 l. 124 B_0′ := c_QB_WG. | CONFIRMED |
| 1j | THM37_FULL 3.2a (old l. 119, now l. 120): M_□^{99} ×5 + M_th^{99} | Five M_□^{99} (definition, threshold, "allow an", "-blocks", "round") and M_th^{99} for the threshold; one "M_99" left inside a quoted older regrade with the gloss "(there M_99 is the threshold M_th^{99})". | CONFIRMED. Stale text in the same paragraph (not a rename): "with L, M, C^{122} powers of 2 neither can hold" — L is odd (N-050), and for L divisible by 3 (L = 15, 21) 18L \| 2M holds for m ≥ 3. The conclusion is moot because the canon uses the rounding. |
| 1k | K_1 → K_1^{37} in WG_FULL (old ll. 43, 52, 293, 298, 303) and THM310_FULL (old ll. 83, 92, 189, 263); cube-geometry K_1 kept at WG old ll. 59, 224, 380 | All files gained one banner line, so every old line is now +1. WG ll. 44 (c_0 ≥ max{K_1^{37}c_1(θ_37), …}), 53 (0.6, THM37 constants), 294 (order list), 299 (c_0 again), 304 ("K_1^{37} of THM37_FULL 4.5"): each is THM37's step constant (THM37 4.5.1, K_1 = 2(3d + 1)c_hL²B_0C_nbe^{(c_nb+c_D)δ_0}). WG ll. 60, 225 (D_+ := K_1 + 2K_0 + 2, A1_WALK_FULL 2.1) and 381 ("K_1 depends on L", same D_+ context): each is the cube-geometry K_1 of N-060. THM310 ll. 84 ((H-PU), "K_1^{37} of THM37_FULL 4.5"), 93 (T37 per-walk bound), 190 (K_P′), 264 (8.4 order): each is THM37's. No unrenamed THM37 K_1 is left in WG or THM310 (grep: only change-log lines 386 / 355 hold a bare K_1). THM37_FULL keeps its local name K_1 (G.2 rename is canon-side). | CONFIRMED |
| 1l | Lean: edges (B10, B18) = (N180, N310) and (B10g, B15) = (N160, N270) | Both present in canonEdges (l. 77 and l. 70 of the edge block, with comments). | CONFIRMED |
| 1m | B136 note "(T1) RM ≥ 4L²D_0 added to N-310, total 41" | SOURCES_C_CONDITION 4.3(d) l. 83: "(T1) reads RM ≥ 4L²D_0"; l. 126 lists it among the parameter hypotheses. R fixed at N-180, so it is a bound on M. Edge N-060 → N-310 exists. | CONFIRMED |

Section verdict (B136): every formula matches its source. Four minor items for the next canon pass: the [I] tag on C_pt ≤ 2^{d+1} (1b); c_1(θ_310), M_37(θ_310) listed at N-110 (1f); M_W^{39,c} given by its defining max, not "≈" (1g); the old-id superscript in RM_min^{B10} (1h).

## 2. B137 transcriptions (Ω pass), against SOURCES_MULTISCALE_OMEGA_SOURCED §3.3(d), §7.1 and its _VERIFY W4, W5, W8

| # | canon entry | source | grade |
|---|---|---|---|
| 2a | N-060: F := 1 + 2d(L + 2)^{d−1}/(3^d − 1) = 338.5 at d = 4, L = 13; F^{12} = 2.26·10^{30}, F^{14} = 2.59·10^{35} | OMEGA_SOURCED l. 39 (M3); VERIFY W4(a), (c). Recomputed (python): 1 + 8·15³/80 = 338.5; F^{10} = 1.98·10^{25}, F^{12} = 2.263·10^{30}, F^{14} = 2.593·10^{35}. | CONFIRMED |
| 2b | N-060: p_S(d) := scale power of an outer-layer source block (two derivatives in H_p plus the m-normalization); value not computed, slot [I] | OMEGA_SOURCED 3.3(d) l. 64: "p_S a fixed (d)-number (two derivatives in H_p plus the m-normalization)"; "p_S's value is [I]". | CONFIRMED |
| 2c | N-260 (B14a): C′_𝒟^{f,Ω} := F·C′_𝒟^f; C_𝒟 unchanged (Lemma B); K_W^{T,Ω} = 2C_𝒟(FC′_𝒟^f)^{12}B_𝒲^Ω; K_V^{T,Ω} with (FC′_𝒟^f)^{10}; B_𝒲^Ω with CMP 96 Lemma 2.1 c_1 and L^{O(1)+p_S}; δ_𝒲^Ω := δ_𝒲 − p_Sθ_S; ″ forms likewise; S → S_∞ | §7.1 B14a l. 128 and W8 line 1, term by term. Powers 12, 10 (and 14 at N-490): W4(b) traces them to A16_REPLACE2 2.3, 6.2, 2.5 (one F per next-domain choice, none for the first domain). | CONFIRMED (transcription) |
| 2d | N-260: "δ_H″ := min{δ_1‴, δ_W″} is the N-250 level rate with δ_A″ = (1 − θ_c)δ_H″" | A16_REPLACE2 l. 62: "δ_H″ := min{δ_1‴, δ_W″}, δ_A″ = (1 − θ)δ_H″ (the δ_A″ of WC 6.5)". | CORRECTED: (i) δ_W″ has no canon entry and no defining line in WC_FULL (grep: WC_FULL never writes δ_W″; N-230 defines only the real δ_W; N-250 lists ε_2). My reading: δ_W″ = ½ε_2, the decay rate of the complex G_1 walk (A1-W walks decay at e^{−½εd}, THM39 5.2(h)); this reading also makes A16's δ_A″ = (1 − θ_c)δ_H″ obey WC 6.5's δ_A″ ≤ min(½ε_2, δ_1‴). [I] until a source states it. (ii) The definition of an "N-250 rate" is written inside N-260; move it to N-250. |
| 2e | N-260: "δ_𝒲^Ω := δ_𝒲 − p_Sθ_S, with θ_S fixed at M_min (N-180; monotone, larger M is better)"; new Lean edge N-180 → N-260 | Source §7.1 B14a says the same ("evaluated at M_min as in canon A item 0"). | CORRECTED (ordering defect, inherited from the source). Monotonicity gives valid constants for M ≥ M_min only if δ_𝒲^Ω(M_min) > 0. No line at or before N-260 forces p_Sθ_S(M_min) < δ_𝒲: N-180 bounds θ_S only by δ_WG/(4(d + 2)), and δ_𝒲 ≪ δ_WG. The condition that does it, (S_H^Ω) p_Sθ_S ≤ ¼θ_cδ_H″, is imposed on M at N-310, not on M_min. It cannot move to N-180 (δ_H″ is fixed at N-250: a cycle). Fix: evaluate at the (S_H^Ω) worst case, δ_𝒲^{Ω″} ≥ δ_𝒲″ − ¼θ_cδ_H″ = ((1 − θ_c)² − ¼θ_c)δ_H″ (using δ_𝒲″ = (1 − θ_c)δ_A″ = (1 − θ_c)²δ_H″, N-260). This is positive iff θ_c < 0.6096; at θ_c = ½ it is ⅛δ_H″, and minus ρ_f = ε″/32 ≤ δ_H″/128 it stays > 0. So: cap θ_c ≤ ½ at N-060 (now [1/16, 1)), write δ_𝒲^Ω with the (S_H^Ω) bound, and read N-260 "under the N-310 entry (S_H^Ω)" (a later up-set hypothesis, no value edge; the same kind as "valid under Mα_0 ≤ a_**" at N-220). The edge N-180 → N-260 then carries no value; it is harmless and may stay. |
| 2f | N-270 (B15): Ω-form F·C′_𝒟^fc_1ρ ≤ ¼, real and complex | W8 line 2; W4(g). | CONFIRMED |
| 2g | N-300 (B17a): W^{f,Ω} ≤ 2C_𝒟S_∞(ε″/16); Γ̄_1^{f,Ω} with B_A^{Ω″}, K_W^{T″,Ω}, S_∞ | W8 line 3; §7.1 B17a. | CONFIRMED |
| 2h | N-490 (B32): (A16-a^{T,Ω}), (A16-b^{T,Ω}) with (FC′_𝒟^f)^{14}, ε_S^Ω ≤ 5γ²r layer-uniform, r-cap tightening ≤ (5/2)F^{14}B_𝒲^{Ω″}/B_𝒲″ | W8 line 6 verbatim; §7.1 B32; ε_S^Ω ≤ 5γ²r: OMEGA_SOURCED §1.3, VERIFY W2 (with the unnamed input U-B: source measured against the reference operator's weight). | CONFIRMED. Note: VERIFY W4(c) also gives the (A16-a) tightening ≤ (5/2)F^{12}(…); the canon states only the F^{14} one (the larger; harmless). The U-B proviso is not in the canon line. |
| 2i | N-310 (B18): (H_κ^{f,Ω}) M ≥ 32·3^d(1 + L^{d−1})κ_1/ε″ (σ_0 side M in local units), implies H-126 (H_κ^f) LM ≥ 32·3^dκ_1/ε″ and H-125 (H_κ) | VERIFY W4(e) CORRECTED form (M, not LM; CMP 119 p. 275 side ML^jη) and W8 line 4. Implications recomputed: LM ≥ L·32·3^d(1 + L^{d−1})κ_1/ε″ ≥ 32·3^dκ_1/ε″ ≥ 16·3^dκ_1/ε″. The unsourced Ω form M ≥ 16·3^d(1 + L^{d−1})κ_1/ε″ (W4(e) last sentence) is also implied. | CONFIRMED |
| 2j | N-310: (1 + L^{d−1}) in (H_η)^f (κ-term 2·3^d(1 + L^{d−1})κ_1) and in (2.16)^f (e^{4·3^d(1+L^{d−1})κ_1}) | W4(e); W8 line 4. | CONFIRMED. Gap (also absent from W8): W4(e) confirms the same factor in the prefactor of η_M^{f,Ω}, e^{2·3^d(1+L^{d−1})κ_1}. A16_REPLACE2 l. 152 defines η_M^f(ρ_f) := (32/γ_exp)e^{2·3^dκ_1}·2C_𝒟S(ε″/32)e^{−ε″M/16}. The N-310 entry Γ̄_1^f·η_M^f(ε″/32) ≤ ½ keeps the single-scale η_M^f, and N-300 states the η_M^f prefactor as (32/γ_exp)·2C_𝒟S(ε″/32) without any κ-exponential. Fix: write Γ̄_1^{f,Ω}η_M^{f,Ω}(ε″/32) ≤ ½ with η_M^{f,Ω} := (32/γ_exp)e^{2·3^d(1+L^{d−1})κ_1}·2C_𝒟S_∞(ε″/32)e^{−ε″M/16}. It is an M-threshold of the same kind; no new edge. |
| 2k | N-310: δ_min += ½θ_cδ_H″; ε″/32 kept; "ε″/32 ≤ ½θ_cδ_H″ for θ_c ≥ 1/33" | W5(a); W8 line 4. Recomputed: ε″ ≤ ½δ_A″ (WC_FULL 6.7 l. 304, ε″ := min{½δ_A″, …}) and δ_A″ = (1 − θ_c)δ_H″ give ε″/32 ≤ (1 − θ_c)δ_H″/64; this is ≤ ½θ_cδ_H″ iff 1 − θ_c ≤ 32θ_c iff θ_c ≥ 1/33. θ_c ≥ 1/16 (E3). (2.59)'s RHS (4/δ)(2d log(8/δ) + 1) decreases in δ on (0, 8), so the ε″/32 member covers ½θ_cδ_H″. | CONFIRMED |
| 2l | N-310: (S_H^Ω) p_Sθ_S ≤ ¼θ_cδ_H″, i.e. RM ≥ 4p_S log L/(θ_cδ_H″); not implied by RM ≥ 8 log L/(θε) since δ_H″ ≤ ½ε | OMEGA_SOURCED 3.3(d) l. 64; W5(b) and its "Precision". Algebra: θ_S = log L/(RM), so p_S log L/(RM) ≤ ¼θ_cδ_H″ ⇔ RM ≥ 4p_S log L/(θ_cδ_H″). | CONFIRMED. Minor: "δ_H″ ≤ ½ε" rests on "complex rates are not above the real ones (WC §6)", which W5 tags [I-strong]; the canon states it untagged. |
| 2m | N-310 count 42 (with c_T/22) | Recount: 29 (HIGHER_M1 B3) + 3 = 32; + 5 (F) = 37; + 2 (G: RM > 2LK_1M_1, (2.59)) = 39; + c_T/22 (§F dated note l. 299) = 40; + (T1) = 41; + (S_H^Ω) = 42. The Ω pass replaced (H_κ^f) in place (no count change); the branch entry and ½θ_cδ_H″ sit inside the (2.59) entry (no count change); H-218 (K3) is implied (no count). | CONFIRMED |
| 2n | Lean: edge N-180 → N-260, total 170 | Present (comment "δ_𝒲^Ω = δ_𝒲 − p_Sθ_S, θ_S at M_min (Ω pass)"); `counts` proves 50 lines, 170 edges; my script count 170 distinct. With fix 2e the edge carries no value but stays correct as an over-approximation. | CONFIRMED |

Comparison with OMEGA_SOURCED §7.1 and VERIFY W8 as a whole: all six W8 canon lines are applied, with W8's wording. Items in §7.1 that W5 refuted were not applied (the "C24 implies (S_H^Ω)" claim; the conditional branch entry as a separate count). Correct choice.
Section verdict (B137): transcription faithful. Two content defects that the canon inherits from its sources: δ_W″ undefined (2d); δ_𝒲^Ω evaluated at M_min with no positivity condition before N-260 (2e). One omission: the (1 + L^{d−1}) factor in η_M^{f,Ω} (2j).

## 3. The empty slots c_N, a_V, c_V, c_tr, δ_H

| slot | canon entry now | source that defines it | grade |
|---|---|---|---|
| a_V, c_V | N-060 names both (B136): c_V := the O(1) of CMP 99 (3.61); a_V := its "α_1 sufficiently small" radius; (d, L) only. | CMP 99 Propagators p. 402, (3.61) (text l. 657–661; rendered text agrees with THM37_FULL l. 267 quote). Balaban prints neither value; THM37_FULL T37-R8 l. 312 tags the derivation R-sketch (CMP 99 pp. 400–402, citing CMP 98 (97), (102)–(103), (160)–(162), Prop. 4). | CONFIRMED (slot named, matches source). Value: no source computes it. |
| c_tr | Named inline only: "c_tr(d, L)" inside the D_0 clause of N-060. | SOURCES_C_CONDITION 4.3(b) l. 81: the far-term entry ≤ C_He^{−δ_Hd(y,y′)/2}e^{−δ_H(D/2 − c_q)/2}, c_q = c(d)L; after the S-conjugation of QE_INV 4.4 and Schur (2.61): ≤ c_tre^{−δ_HD/4}. So c_tr is a composite of C_H, δ_H, c_q, the conjugation factor L^{\|d−2\|/2} and a Schur sum; the file gives no closed formula. | CORRECTED (minor): the slot is used but has no entry of its own. Add to N-060: "c_tr(d, L) := the Schur constant of SOURCES_C_CONDITION 4.3(b) (from C_H, δ_H, c_q); value not computed". |
| δ_H | Named inline only: "δ_H of H-136 (KE′)" in the D_0 clause of N-060. | CMP 96 Cor. 2.8, (2.150)–(2.151), p. 249 (page image rendered this session): \|H(b, c)\|, \|(∇H)(b, c)\|, ‖(ζ∇H)(·, c)‖_α ≤ O(1)[…](L^{j′}η)^{−d}e^{−δ_5d(y, c_−)}. So δ_H = Balaban's δ_5 and C_H = that O(1); (d, L) only (SOURCES_QE_INV l. 13–14, CMP 99 p. 399). The printed equation number is "(1.151)", a misprint for (2.151). Uniformity in the torus side is part of the citation (SOURCES_C_CONDITION 4.6 [R]). | CORRECTED (minor): add C_H, δ_H := C, rate of CMP 96 (2.151) (δ_5) to N-060's (d, L) list. Value: no source computes it. Name check: δ_H″ (N-260) is a different symbol; grep finds unprimed δ_H only in the D_0 clause, so there is no clash, but the near-homonym deserves a note. |
| c_N | N-060: "c_N(d, L) [slot, value not computed]"; G.5 keeps it open. No defining entry. | THM39_FULL 7.3 l. 251: c_N is defined by its role only ("every conjugating factor h … has ‖Ad(h)‖ ≤ e^{c_NdLb_1} [I; value not computed, canon slot needed]"). No Balaban page defines it; it is a constant of our complex extension of CMP 98 (AL′). | Slot still EMPTY in the canon (correct, since no verified source computes it). |

FABLE_O3_ALC.md B4–B5 (unverified input). Claim: c_N := 4K_av, K_av := 4K_β + 4K_m·a_AL^c/k_1, K_β := 2.6 + 27.6A_Lc_P′/(L(L − 1)), K_m := 2.6c_3 + 27.6A_Lc_P/(L(L − 1)), k_1 := min{1/(48A_Lc_P′), 0.12/K_β, 0.02/(dLK_β), c_2^c/(2c_P′), ¼}, a_AL^c := min{1/(48A_Lc_P), 0.12/K_m, 0.02/(dLK_m), c_2^c/(2c_P), 1/(4c_3)}.
- Form fits the slot [P, checked]: a conjugating factor h has ≤ (d + 1)L level-i links with κ ≤ K_avβλ_i each, so κ(h) ≤ 2dLK_avβ and ‖Ad(h)‖ ≤ e^{2κ(h)} ≤ e^{4dLK_avβ} = e^{c_NdLβ}. (d, L) only.
- Order is acyclic [P, checked]: k_1, a_AL^c use only c_3, A_L, c_P, c_P′, c_2^c; then K_av; then c_N. THM39's first entry of k_av^c is implied: c_NdLk_1 = 16dL(K_βk_1 + K_ma_AL^c) ≤ 16·0.04 = 0.64 < log 2.
- It is not a drop-in value. Adopting it changes four other canon items: k_av^c := k_1 (replaces THM39's min); K_av (new formula; the N-060 claim "K_av ≤ 2K′" fails, FABLE B5 says so); the complex real-range cap Mα_0 ≤ ½a_AL at N-160/N-370 becomes Mα_0 ≤ a_AL^c (smaller by (d, L) factors, FABLE B4 Remark 4); new slots C_0^c := 8C_0, c′_2{}^c := c′_2/8 [I: factor] and c_2^c. Inside N-060 the order inverts: k_av^c → K_av → c_N (the canon now lists c_N first).
- Status: FABLE's own tags leave three [I] inputs (the (15) reading of U(c); the lasso count A_L; the factor 8 in C_0^c). It has no verifier. So c_N remains an empty slot until a verifier passes FABLE B2–B5; then the canon should take C1–C7 of FABLE B5 as a block.
Grade (c_N via FABLE): UNSUPPORTED for the canon now (unverified); the candidate fits the slot form and the order.

## 4. The missing R_0M_0 line

Source definition. CMP 99 Propagators p. 408 (text l. 964–980): "In [4] we have proved all theorems under the assumption that R, M are sufficiently large. We take these numbers as powers of L. Let us fix a pair R_0, M_0 of smallest possible numbers satisfying conditions needed in the proofs. We assume that the size M of big blocks … is much bigger than M_0, more precisely … M = KR_0M_0, K is a positive integer." The local sequence {Ω_n(□)} has dist(Ω_n(□)^c, Ω_{n+1}(□)) = 2R_0M_0L^nη and "satisfies the conditions (2.1), (2.2)" of CMP 96; dist(Ω_0(□)^c, □̃^4) < 2R_0M_0L^jη, so Ω_0(□) ⊂ □̃^5.

Uses (grep over *.md, *.lean, *.tex, firewall files excluded):
| file, place | use |
|---|---|
| THM37_FULL 3.1 l. 35, (H3) l. 107 | □-sequence layer width 2R_0M_0; M = KR_0M_0 [V p. 408] |
| THM37_FULL 3.2 l. 114 | Dirichlet boundary case: separation ≥ min{2R_0M_0, RM} |
| THM37_FULL 7.3 (7.3.1) l. 249, 255 | 2R_0M_0 ≤ M_1; M_37 in M_1 form with M_th replaced by 2R_0M_0 |
| THM37_FULL 8.3 Lemma LC l. 272; T37-I4 l. 333 | CMP 96 (2.59) for the □-sequence at rate θ: ¼θδ_0·2R_0M_0 > 2d log c_0(½θ) + 1 |
| THM310_FULL l. 287, 327 | M_1 ≥ M_th, "Cor. 3.6 needs the cube size above the CMP 96 thresholds R_0M_0" (T37-I4) |
| SOURCES_A15_LOC l. 141 + VERIFY l. 64; K-035 (Conv) in TRUST_LEDGER, CLOSURE_PLAN, paper | M = KR_0M_0, K a power of L |
| SOURCES_ORDER_CANON G.5 l. 344 | "no canon line; R_0M_0 is not a canon constant yet" |

Canon check: no Part B line defines R_0, M_0 or states 2R_0M_0 ≤ M_1 or the □-sequence (2.59). Grade: slot EMPTY, as G.5 says (CONFIRMED that it is missing).

Correct definition [P, from the uses above; one reading marked]:
- R_0M_0 := the least product of powers of L such that (i) R_0, M_0 meet CMP 96's "R, M sufficiently large" conditions (Balaban's own choice, p. 408), and (ii) the □-sequence obeys CMP 96 (2.59) at every rate at which Lemma LC is used: ¼θδ_0·2R_0M_0 > 2d log c_0^{96}(½θ) + 1 for θ ∈ {θ_37, θ_310}. Since c_0^{96}(δ) grows as δ falls, the binding value is θ_310 (≤ ¼ < θ_37 = ½): R_0M_0 > (2/(θ_310δ_0))(2d log c_0^{96}(½θ_310) + 1).
- [I, reading] Raising R_0M_0 above Balaban's minimum in (ii) keeps the Cor. 3.6 constants (B_0, δ_0). This holds if CMP 96's O(1) are uniform in R, M above threshold ("O(1) depends on d and L only"), the same reading as canon A.7 / THM37 T37-I4.
- Dependencies: d, L, δ_0, θ_37, θ_310 — all on N-060. So R_0M_0 belongs in N-060 (B5), after θ_37, θ_310, δ_0 inside that tied group. It needs no new line number. This matters: Lean `id_eq_rank` proves num = 10·(rank + 1), so a new line between N-060 and N-070 (e.g. "N-065") would break that theorem; the renumbering has removed the free slots that the "steps of 10" rule promised. A later canon pass that inserts any line must either renumber or weaken `id_eq_rank` to "num is strictly increasing along canonOrder".
- Uses downstream, all on existing edges: N-110 (M_37 in M_1 form with 2R_0M_0 for M_th; Lemma LC radius a_1^c(θ) at θ_37, θ_310); N-270 (M_1 ≥ 2R_0M_0, (7.3.1); implied by M_1 ≥ M_310 ≥ M_37(θ_310) once M_37 carries the 2R_0M_0 entry); N-310 (M = KR_0M_0 with K a power of L: automatic when M, R_0M_0 are powers of L and M ≥ 12M_1 ≥ 24R_0M_0). Edges N-060 → N-110, N-060 → N-270, N-060 → N-310 already exist; no Lean change.
- Also note: canon N-060 lists "M_99(d, L)" (CMP 99 Thm 3.1 threshold). Under T37-I4 that threshold concerns R_0M_0. The canon should say so next to M_99, or the N-310 entries M ≥ max(M_99, L) and M ≥ 9L²M_99 read M_99 in the old sense. Both forms are lower bounds on M, so either reading is safe; the text should pick one.

## 5. Lean: lean/YmLean/CanonOrder.lean

- Script count over `canonEdges`: 170 pairs, 170 distinct; `counts` proves 50 lines and 170 edges. `canonOrder` is N010 … N500 in numeric order; `id_eq_rank` proves num = 10·(rank + 1).
- In-edges of the lines in scope, compared with the canon text:

| line | Lean in-edges | text uses (canon) | result |
|---|---|---|---|
| N-110 | N060, N100 | a_V, c_V, a_1, B_0 (N-060); RM_min (N-100) | match |
| N-140 | N060, N110, N120, N130 | C_pt, c_loc^{310}, θ_310, λ (N-060); K_1^{37}, c_1, M_37 (N-110); K_W^{39}, ε_39, M_W^{39} (N-120); RM_0 (N-130) | match |
| N-160 | N060, N110, N120, N130, N140 | M_W^{39,c} from K_W^{39}, M_W^{39} (N-120); rest as G.3 | match |
| N-180 | N060, N140, N150 | R > 18dL (N-060); RM_0 raised (N-140); δ_WG (N-150) | match |
| N-260 | N060, N180, N230, N250 | F, p_S (N-060); θ_S at M_min (N-180); c_{−,1} (N-230); B_A″, δ_A″, ε″, δ_1‴ (N-250) | match (the N-180 edge is the one that fix 2e makes value-free) |
| N-270 | …, N160, N260 | M_W^{39,c} (N-160); F·C′_𝒟^f (N-060, N-260) | match |
| N-300 | N060, N250, N260, N270 | S_∞(ε″/16), B_A^{Ω″}, K_W^{T″,Ω} | match |
| N-310 | N040 … N300 (14 edges) incl. N060, N180, N250, N270, N300 | (S_H^Ω): p_S, θ_c (N-060), δ_H″ (N-250), R (N-180); (T1), c_T/22: D_0, c_T (N-060); RM > 2LK_1M_1 (N-270); (2.59) rates (N-140, N-150, N-200, N-250); (H_η)^f: W^f, Γ̄_1^f (N-300) | match |
| N-490 | N060, N250, N260, N310, N470, N480 | F (N-060); K_W^{T″,Ω}, B_𝒲^{Ω″}, δ_𝒲^{Ω″} (N-260); ε″ (N-250) | match |

- No text dependency of these lines lacks an edge, and no edge lacks a text dependency (the N-180 → N-260 edge is justified as written; under fix 2e it becomes a harmless extra edge).
- The proposed fixes need no edge change: R_0M_0 inside N-060 (§4), c_tr, C_H, δ_H inside N-060 (§3), δ_W″ and δ_H″ at N-250 (N-250 → N-260, N-310 exist), η_M^{f,Ω} at N-300/N-310 (edge exists).
- Build: `python3 /tmp/ymlock.py lake build` (project lock) → "Build completed successfully (8752 jobs)", exit 0, no error, no sorry. `#print axioms` on a temporary file in /tmp (deleted): canon_acyclic, counts, id_eq_rank, edges_forward_num, canon_wf each "does not depend on any axioms".
- Grade: CONFIRMED. Caveat as before: Lean certifies only the acyclicity of the transcription. New caveat: `id_eq_rank` freezes the numbering, so any line insertion needs a renumber or a weaker theorem (§4).

## 6. Grades

| item | grade | key source |
|---|---|---|
| 1a c_V, a_V | CONFIRMED | CMP 99 (3.61) p. 402 |
| 1b C_pt ≤ 2^{d+1} | CORRECTED (tag) | THM37_FULL 5.3 [I: cube geometry] |
| 1c c_T, D_0 | CONFIRMED | SOURCES_C_CONDITION 4.3(d)–(e), 4.4 |
| 1d C^{122} := 2 | CONFIRMED | CMP 122 I p. 191 ("positive integer … C ≤ 2") |
| 1e M ≥ (18L²/C^{122})M_99 | CONFIRMED | THM37_FULL 3.2a; recomputed |
| 1f K_P′ | CONFIRMED (N-110 list incomplete) | THM310_FULL (6.3.1) |
| 1g M_W^{39,c} | CONFIRMED as copy; "≈" needs a definition | THM39_FULL 7.4, 5.2(h) |
| 1h RM_min^{B10} | CORRECTED (old id in symbol) | — |
| 1i WG (I7) B_WG | CONFIRMED | WG_FULL l. 50, 124 |
| 1j THM37 3.2a M_□^{99} | CONFIRMED (stale "powers of 2" text nearby) | THM37_FULL l. 120 |
| 1k K_1 → K_1^{37} renames | CONFIRMED (9 renamed are THM37's; 3 kept are cube geometry) | WG_FULL, THM310_FULL, A1_WALK_FULL 2.1 |
| 1l, 1m Lean edges; (T1) | CONFIRMED | CanonOrder.lean; C_CONDITION 4.3(d) |
| 2a F, 338.5, F^{12}, F^{14} | CONFIRMED | OMEGA_SOURCED (M3); VERIFY W4 |
| 2b p_S | CONFIRMED | OMEGA_SOURCED 3.3(d) |
| 2c N-260 Ω-forms | CONFIRMED | §7.1, W8 line 1 |
| 2d δ_H″ := min{δ_1‴, δ_W″} | CORRECTED (δ_W″ undefined; definition sits in the wrong line) | A16_REPLACE2 l. 62; WC_FULL 6.5 |
| 2e δ_𝒲^Ω at M_min | CORRECTED (positivity not secured before N-260) | §7.1 B14a; W5(b) |
| 2f, 2g, 2h N-270, N-300, N-490 Ω-forms | CONFIRMED | W8 lines 2, 3, 6 |
| 2i (H_κ^{f,Ω}) M-form | CONFIRMED | W4(e) |
| 2j (1 + L^{d−1}) factors | CONFIRMED; η_M^{f,Ω} prefactor missing | W4(e); A16_REPLACE2 l. 152 |
| 2k δ_min, θ_c ≥ 1/33 | CONFIRMED | W5(a); WC_FULL 6.7 |
| 2l (S_H^Ω) | CONFIRMED ([I-strong] tag missing on δ_H″ ≤ ½ε) | 3.3(d); W5(b) |
| 2m count 42 | CONFIRMED | recount |
| 2n edge N-180 → N-260 | CONFIRMED | CanonOrder.lean |
| 3 a_V, c_V slots | CONFIRMED (named; no value anywhere) | CMP 99 p. 402 |
| 3 c_tr slot | CORRECTED (used, no entry) | C_CONDITION 4.3(b) |
| 3 δ_H slot | CORRECTED (used, no entry) | CMP 96 Cor. 2.8 (2.151) p. 249, rate δ_5 |
| 3 c_N slot | EMPTY; FABLE candidate UNSUPPORTED (unverified), fits slot form and order | THM39_FULL 7.3; FABLE_O3_ALC B4–B5 |
| 4 R_0M_0 | missing (CONFIRMED); definition and place given | CMP 99 p. 408; THM37_FULL (H3), (7.3.1), 8.3 |
| 5 Lean | CONFIRMED | build OK, 170 edges, no axioms |

## 7. Correction list for the next canon pass

1. N-060: tag "C_pt ≤ 2^{d+1} [I: cube geometry, THM37_FULL 5.3]" (the [P] bound 3(2L + 2)^d stays).
2. N-060: add "C^{122} is a positive integer (CMP 122 I p. 191)".
3. N-060: add C_H, δ_H := constant and rate of CMP 96 Cor. 2.8 (2.151), p. 249 (Balaban's δ_5); (d, L); uniform in the torus side [R, C_CONDITION 4.6]. Add c_tr(d, L) := the Schur constant of SOURCES_C_CONDITION 4.3(b); value not computed.
4. N-060: add R_0M_0 (after δ_0, θ_37, θ_310): least product of powers of L meeting CMP 96's thresholds (CMP 99 p. 408) and ¼θ_310δ_0·2R_0M_0 > 2d log c_0^{96}(½θ_310) + 1 (THM37 8.3 Lemma LC, T37-I4); [I] Cor. 3.6 constants uniform in R_0M_0. Note at N-110: M_37 in M_1 form uses 2R_0M_0 for M_th (THM37 (7.3.1)); at N-270: M_1 ≥ 2R_0M_0; at N-310: M = KR_0M_0, K a power of L (K-035). Say next to M_99 which reading (T37-I4) is meant. Remove the R_0M_0 item from G.5.
5. N-060 (θ_c): narrow θ_c ∈ [1/16, 1) to θ_c ∈ [1/16, ½] (needed by item 9).
6. N-110: list c_1(θ_310) and M_37(θ_310) next to c_1(θ_37), M_37(θ_37); say c_1(·) is the CMP 96 function (it is listed only at N-190 now).
7. N-160 / N-270: define M_W^{39,c} as THM39 5.2(h)'s max{2C_𝒟^Nc′, M_a, M_e′, M_N, M_c} at the complex constants (ρ^c ≤ 2K_W/M_1, b_G^c, ε^c), and keep "≈ 2M_W^{39}" as a remark.
8. N-180: rename RM_min^{B10} → R·M_min (old id inside a live symbol).
9. N-250/N-260: define δ_W″ at N-250 (reading: δ_W″ = ½ε_2, the complex G_1 A1-W walk rate [I]); move "δ_H″ := min{δ_1‴, δ_W″}" from N-260 to N-250. At N-260 replace "θ_S fixed at M_min" by: δ_𝒲^Ω evaluated under the N-310 entry (S_H^Ω), so δ_𝒲^{Ω″} ≥ ((1 − θ_c)² − ¼θ_c)δ_H″ ≥ ⅛δ_H″ at θ_c = ½ (positive iff θ_c < 0.6096); likewise δ_𝒲^{Ω″} − ρ_f > 0. Keep the Lean edge N-180 → N-260 (harmless) or drop it.
10. N-300/N-310: write η_M^{f,Ω} := (32/γ_exp)e^{2·3^d(1+L^{d−1})κ_1}·2C_𝒟S_∞(ε″/32)e^{−ε″M/16} and the entry Γ̄_1^{f,Ω}η_M^{f,Ω}(ε″/32) ≤ ½ (W4(e); A16_REPLACE2 l. 152 has e^{2·3^dκ_1}, which the canon's η_M^f prefactor omits).
11. N-310: tag "δ_H″ ≤ ½ε" [I-strong: complex rates ≤ real rates, WC §6] (W5 Precision).
12. N-490: add the U-B proviso to "ε_S^Ω ≤ 5γ²r" (source measured against the reference operator's weight, OMEGA_SOURCED_VERIFY).
13. c_N slot: keep empty. After a verifier passes FABLE_O3_ALC B2–B5, replace at N-060 the block {k_av^c, K_av, c_N} by FABLE C1–C7 in the order k_av^c (= k_1) → K_av → c_N; drop "K_av ≤ 2K′"; at N-160/N-370 replace Mα_0 ≤ ½a_AL by Mα_0 ≤ a_AL^c; add slots C_0^c, c′_2{}^c, c_2^c.
14. Lean: before inserting any new line, weaken `id_eq_rank` to "num strictly increasing along canonOrder" or renumber; items 1–12 need no new line and no new edge.
15. Outside the canon (for a source pass, not the canon pass): THM37_FULL 3.2a l. 120 "with L, M, C^{122} powers of 2" is stale (L odd; 18L \| 2M holds for L = 15, 21 at m ≥ 3); MULTISCALE_OMEGA_SOURCED §7.1 B14a has the same M_min evaluation defect as item 9.

Cleanup: /tmp/v3img (CMP 96 p. 249 render, axiom check file, build log) deleted after this file was written.
