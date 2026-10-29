# SOURCES_ROP_GEOMETRY — the item (R-op geometry): pure-R conditions on R-operation sequences

Date 2026-10-29. Derivation file (not a verification). Ids follow IDS.md (new scheme). File-local labels of other files are cited with their file (THM37_FULL Lemma CC, THM310_FULL 6.0 (G-cube), L1_C Lemma P2, L1_B §2).
Grades: [P] proved here, every step written; [P-sketch] proof idea complete, one step not written out; [V] read on a page image in this session (150 dpi, fresh folder /tmp/ropg, deleted at the end); [R] reduced to a printed statement or to a named project input; [I] reading or inference.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
This file edits no other file. PLAN.md was not changed. sync.sh was not run.

Files read: SOURCES_L1_B (all), SOURCES_L1_B_VERIFY (all; §3.4 canon check, C5); THM37_FULL §3.1–§4.5, §7.2–§8.4; THM310_FULL 6.0, 8.4, §10; THM39_FULL §4, §8; SOURCES_ORDER_CANON N-060, N-180, N-265–N-310; SOURCES_A18_REGULAR §4–§5; SOURCES_L1_C §1, 2.5, 4.4 and its VERIFY V4.2; TRUST_LEDGER rows R-002, R-024; grep of A1_WALK_FULL, WG_FULL, WC_FULL, SOURCES_MULTISCALE_OMEGA for the cube scale.
Page images read in this session: CMP 96 pp. 224, 233, 234; CMP 99 (Propagators) pp. 396, 408, 409; CMP 122 I pp. 179, 186.

## §0 Result

No failing condition is of type (a), and none is of type (c). All are of type (b). The repair is Balaban's own mechanism. On R-operation sequences he measures the scaled distance in M_1-cubes and uses the ratio M/M_1 as the effective layer width (CMP 122 I p. 186, (1.47) [V]). So the fix is: take the CMP 99 class of (3.35) at the walk scale M_1, not at M. Then R is replaced by R_eff := W/M_1 ≥ M/M_1 in every pure-R step, and every failing condition becomes the single M-threshold

 (RB) M > 24dL·M_1  (c_R = 24; M is fixed after M_1; 24 rather than 18 because the CMP 102 supply route for THM310 needs the cube □̃^{10}, see 4.5).

(G-M1) becomes void. The α_0 cap does not change. The canon stays acyclic. The brief listed four conditions. This file found four more consumers of the R > 18dL family (THM39 (I-B), and three items of SOURCES_L1_C). All four also go to (RB) or to an M-threshold.

## §1 Page facts [V]

F1 (CMP 96 p. 224, (2.1)–(2.2)). "Ω_j = B^j(Ω_j^{(j)}), Ω_j^{(j)} ⊂ T^{(j)}_{L^jη} and it is a sum of big blocks, (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM, M is a size of big blocks and R is a big positive integer which will be fixed later."
F2 (CMP 96 p. 233, (2.57)–(2.59)). R enters the sum over levels only through the product: "(L^{l,l+1}η)^{−1}|y′_l − y_{l+1}| > RM" (2.57), and "we require that RM is sufficiently large, i.e. ¼αδ_0RM > 2d log c_0(½α) + 1" (2.59).
F3 (CMP 96 p. 234). Lemma 2.1 holds "for … RM satisfying (2.59)". Proposition 2.2 (U = 1): "If we have (2.1), (2.2) and M is sufficiently large, then the operator G′ … satisfies the inequalities (2.67)". No other condition on R appears in the statement.
F4 (CMP 99 p. 396). The class of (3.35): "□ ⊂ B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}), □ ∩ B^j(Λ_j) ≠ ∅, and □ is a union of several big blocks of the lattice T_{L^{−j}}, which implies that its size in the lattice T_η is O(1)ML^jη. Here O(1) will mean a number ≥ 10." Bounds |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2}, "where O(1)M is a size of □ in T_{L^{−j}}".
F5 (CMP 99 p. 408). "In [4] we have proved all theorems under the assumption that R, M are sufficiently large. … Let us fix a pair R_0, M_0 of smallest possible numbers satisfying conditions needed in the proofs … M = KR_0M_0." "The cube □̃^3 is either contained in B^j(Λ_j), or intersects also the domain B^{j+1}(Λ_{j+1})." The local sequence has dist(Ω_n(□)^c, Ω_{n+1}(□)) = 2R_0M_0L^nη, and Ω_0(□) ⊂ □̃^5. The two-case statement silently excludes a third layer inside □̃^3.
F6 (CMP 99 p. 409). "number O(1) in the condition (3.35) can be taken as equal to 12, thus the cube □̃^5 is contained in one of the cubes for which this condition holds". Theorem 3.7: "For M sufficiently large, and a configuration U satisfying (3.35) …".
F7 (CMP 122 I p. 179). "Take the smallest positive integer N_0 such that L^{−N_0+1}MR_{k−N_0+1} = M." (1.10)–(1.11). The complements "form an admissible sequence of domains based on partitions into M-cubes in the corresponding scales. Thus Z″_k, Z″_k∖Z″_{k−1} are unions of M-cubes of the lattice T_η, and Z″^c_k, Z″_{k−1} are separated by one layer of M-cubes. Similarly … one layer of L^{−1}M-cubes, and so on." For j = k − N_0, …, h + 1: Z″_j = (Ω_j^{~5})^c ∩ Z. "The sequence {Ω″_j} is an admissible sequence."
F8 (CMP 122 I p. 186, below (1.46)). "Let us remark that the scaled distance in the above estimates is defined in terms of M_1-cubes on corresponding scales. Thus, by the definition of the domains Z″_i, we obtain exp(−δd(y, Ω^c_{j+1}∖Z″_{j+1})) ≤ exp(−δ(M/M_1)(j − i)) for y ∈ Γ″_i, i < j (1.47). We choose M large enough, so that δ(M/M_1) ≥ 2." And: "the conditions on M, γ, A_0, and A_1 introduced above do not depend on any scale".

Reading of F7–F8 [I, strong]. On the R-operation sequence each new layer is one M-cube of its own scale wide, so W = M in local units. Balaban counts that width as M/M_1 cubes of size M_1, and he asks only "M large" relative to M_1. This is (RB) in his own words, for his own use of the scaled distance.

## §2 The failing conditions and what each one is used for [P, by inspection of the cited lines]

Notation. W_j := (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}), the width of the layer B^j(Λ_j) in local units; W := min_j W_j. ξ_j := L^jη. On RG-made sequences W ≥ RM with R large (CMP 119 (2.5), Lemma Sep of L1_B). On R-operation sequences W ≥ M only (F7). The walk cube is M_1 in every consumer (§5.1).

| # | condition (file) | where it is used | what the step needs |
|---|---|---|---|
| C1 | N-180: R > 18dL (c_R = 18) | canon booking of C2–C4; also cited as the source of C6–C9 | nothing of its own |
| C2 | THM37 (H2): R > c_RdL; Lemma CC Cases 1–2 | 3.3 Lemma CC: (i) B^{j+2} does not meet □̃^5 (dist RMξ_{j+1} > 12dMξ_j); (ii) levels ≤ j − 2 do not meet □̃^5 (RMξ_{j−1} > 12dMξ_j); (iii) Case 2: B^j thicker than □̃^5 (RMξ_j > 12dMξ_j). 4.4a Lemma D□(a): □̃^4 has ℓ¹ diameter 10dMξ_j < RMξ_j. 4.4a O(1) form: levels ≤ j − 2 avoid □̃^5 (not load-bearing). 8.3 radius: levels ≤ j − 2 avoid □̃^5, so the □-system loses at most L²α_1 | the cube □̃^5 of a walk cube sees at most two adjacent layers, and the layer B^j is thicker than □̃^5 |
| C3 | THM37 7.3 (G-M1): R ≥ 24 | T37-M1: □̃^5 of an M_1-cube (side 12M_1ξ_j ≤ Mξ_j) must lie in one class cube at scale M (side ≥ 10Mξ_j) inside B^j ∪ B^{j+1} | B^j ∪ B^{j+1} thicker than 24Mξ_j |
| C4 | THM310 6.0 (G-cube), 8.4, 10.3(a): R > 18dL | the case split of Lemma CC for □̃^8 (side 18M_1ξ_j; Balaban's p. 415 boundary conditions outside □̃^8) | as C2, with 18 in place of 12 |
| C5 | THM39 T39-I2 (I-B) (not in the brief) | Lemma LB 4.3: every block Δ(y) with its η-layer lies in a class cube of index j or j − 1 (scale M, side ≥ 10Mξ_j) | a scale-M class cube around every block. At W = M a class cube of side ≥ 10M that meets the thin layer B^j and avoids B^{j−1} exists only if it reaches deep into B^{j+1}; no project file proves this for all R-operation geometries [I]. So C5 is not covered at R = 1 |
| C6 | L1_C 1.3(c) Lemma P2, Cases 1′/2′ (not in the brief) | the supply of THM37 (H1) from CMP 102 Thm 1 for the CMP 122 background U_{k,Z}: □̃^7 (side 16M) avoids B^{j+2}, B^{j+1}, B^{j−2} by "R > 16dL + 2L (implied by R > 18dL)" | as C2, sizes 16, 22 |
| C7 | L1_C 2.5 (G-d) side condition (not in the brief) | "RM > 2(2D_+ + K_0 + 4)M_1 … the lower bound R > 2(2D_+ + K_0 + 4) on R" | booked as an R bound; it is an RM-vs-M_1 entry |
| C8 | L1_C 4.4 window (not in the brief) | Lemma D□ O(1) form (H-321): "reaching B^{j+2} or B^{j−2} costs ≥ RM/L ≥ 18dM > b + 1", b = 2dM + c(d, L) | layer cost vs the d-diameter of one walk cube; not load-bearing (THM37 4.4a) |
| C9 | N-060 note (Lemma T repair): RM > 2dL "implied by R > 18dL for every M ≥ 1" | L-284 (Lemma T) G1 | an RM-product entry booked through R |

C1–C4 are the brief's list (SOURCES_L1_B_VERIFY §3.4). C5–C9 come from a grep of "18dL", "c_RdL", "R ≥ 24" over all project files outside the firewall and archive/.
Lemma AG (v) of THM37 (RMξ_{j+1} > 4M_1ξ_j, i.e. LW > 4M_1) and N-310 "RM > 2LK_1M_1" are already M-thresholds at R = 1 (SOURCES_L1_B_VERIFY §3.4). They are not in this list.

## §3 Options (a) and (c) are rejected

3.1 Option (a) does not apply [V F7, F8 + I]. Balaban gives no separate estimate for R-operation sequences. He calls {Ω″_j} "an admissible sequence" (F7), which is the hypothesis of the CMP 96/99 theorems, and he defines the next generating set 𝔹″_k from it. On p. 186 he uses the scaled distance of these domains with M_1-cubes (F8). So the walk expansions of THM37/THM39/THM310 are applied on these sequences. That no other estimate exists elsewhere in CMP 122 is [I]: I read pp. 179 and 186 only; SOURCES_L1_B_VERIFY read pp. 177–182 and reports none.
3.2 Option (c) does not arise. §4 proves every consumer with (RB). The obstruction found by SOURCES_L1_B_VERIFY §3.4 is real for the class at scale M: there R_eff is a fixed (d, L) number. It is removed by changing the class scale, not by a larger M alone.
3.3 Why the canon's current block choice fails and the new one works [P]. The canon puts the class at M_□^{99} = C^{122}M/(18L) (N-310). Then R_eff = W/M_□^{99} ∈ [9L, 9L²) at C^{122} = 2, a (d, L) number below 18dL for d = 4 (SOURCES_L1_B_VERIFY §3.4). With the class at M_1, R_eff = W/M_1 ≥ M/M_1. M_1 is fixed at N-270 and M at N-310, after M_1. So R_eff grows with M, and R_eff > 18dL is an M-threshold.

## §4 Option (b): re-base the CMP 99 class at the walk scale M_1

4.1 Hypotheses after the re-basing.
 (H1′) Class at scale M_1. For every j and every cube C that is a union of M_1-big blocks of T_{L^{−j}}, of side between 10M_1ξ_j and c_HLM_1ξ_j (c_H = 18), with C ⊂ B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}) and C ∩ B^j(Λ_j) ≠ ∅, there is a gauge u on C with U^u = e^{iηA}, |A| < bξ_j^{−1}, |∇^ηA| < bξ_j^{−2}. Here b is the absolute bound that the canon already writes as b := c_HLMα_0. The cap is unchanged: L²b = c_HL³Mα_0 ≤ a_1 (N-370).
 (W) Layer width. W_j ≥ M for every j and every sequence on which a walk expansion is used. [V F1 (RG-made, R ≥ 1), F7 (R-operation layers)]; the junction layers j = k − N_0, …, h + 1 (Z″_j = (Ω_j^{~5})^c ∩ Z) are covered by Balaban's word "admissible" [I, see 4.7].
 (RB) M > 24dL·M_1. (c_R := 24 in this form; 24 covers every cube size used below, the largest being the □̃^{10} of the CMP 102 supply route, 4.5.)
 The walk theorems are used only in their M_1 forms: THM37 7.3 (T37-M1), THM39 §6, THM310 §10. Their walk cubes have side 2M_1ξ_j, as now. Only the class of (3.35) moves from scale M to scale M_1.

4.2 Lemma CC′ (class cube for a cube of side sM_1) [P given (H1′), (W), (RB)]. Let □ ∈ 𝒟^{(1)}_j and let Q ⊇ □ be a concentric cube of side sM_1ξ_j that is a union of M_1-big blocks of T_{L^{−j}}, with 10 ≤ s and (s + 2)d ≤ 24d (so s ≤ 22). Its ℓ¹ diameter is ≤ sdM_1ξ_j. □ meets B^j, so Q contains a point q ∈ B^j.
 (i) Q ∩ Ω_{j+2} = ∅. Every point of Q is within ℓ¹ distance sdM_1ξ_j of q ∈ Ω_{j+1}^c. dist(Ω_{j+1}^c, Ω_{j+2}) ≥ W_{j+1}ξ_{j+1} ≥ LMξ_j (W). LM > sdM_1 by (RB).
 (ii) Q ∩ Ω_{j−1}^c = ∅ (no level ≤ j − 2). q ∈ Ω_j, and dist(Ω_{j−1}^c, Ω_j) ≥ W_{j−1}ξ_{j−1} ≥ Mξ_j/L. M/L > sdM_1 by (RB).
 (iii) Case 1: Q ∩ B^{j−1} = ∅. By (i), (ii), Q ⊂ B^j ∪ B^{j+1} and Q meets B^j. So Q is a class cube of index j of side sM_1ξ_j. If s ≤ c_HL it is in the (H1′) range.
 (iv) Case 2: Q meets B^{j−1} at a point p. dist(Ω_j^c, Ω_{j+1}) ≥ W_jξ_j ≥ Mξ_j > sdM_1ξ_j by (RB), so Q ∩ Ω_{j+1} = ∅. With (ii), Q ⊂ B^{j−1} ∪ B^j, and Q meets B^{j−1}. Q is a union of M_1-big blocks of level j, hence of level j − 1. So Q is a class cube of index j − 1 of side sM_1ξ_j = sLM_1ξ_{j−1}, in the (H1′) range if s ≤ c_H. The unit change is THM37 Lemma CC Case 2 verbatim: |A| < bξ_{j−1}^{−1} = Lbξ_j^{−1} and |∇^ηA| < bξ_{j−1}^{−2} = L²bξ_j^{−2}, i.e. c_HL²Mα_0 and c_HL³Mα_0 in ξ_j units. The unchanged cap L²b ≤ a_1 covers both.
 One gauge on one cube; no gluing. ∎
 The proof is THM37 Lemma CC with M → M_1 and RM → W. Every use of "R > c_RdL" in Lemma CC is one of (i), (ii), (iv), and each needs only M > sdLM_1.

4.3 The consumers [P given Lemma CC′].
 (a) C2, THM37. Lemma CC: s = 12. Lemma D□(a): □̃^4 has ℓ¹ diameter 10dM_1ξ_j < Mξ_j ≤ W_jξ_j, so the interface case gives c_D = 0 as before. 8.3 radius: (ii) with s = 12 excludes levels ≤ j − 2 from □̃^5, so the loss stays L²α_1. Lemma AG (v): LW > 4M_1 holds. So T37-M1 holds on every sequence with (W), with the same constants B_0, δ_0, K_1, c_1(θ), C_pt, C_𝒟^in and the same thresholds on M_1.
 (b) C3, (G-M1). With the class at scale M_1, the cube □̃^5 of an M_1-cube is itself the object of Lemma CC′. No class cube at scale M is needed. (G-M1) and its R ≥ 24 are void. T37-I3 [I-geo] is removed, not repaired.
 (c) C4, THM310. (G-cube′): □̃^7 (s = 16) and □̃^8 (s = 18) lie in one class cube by Lemma CC′: index j with c_H = 18, or index j − 1 with c_H = 18 (side 18LM_1ξ_{j−1}), α_0 → L³α_0 as now. 10.3(a): the local inputs on M_1-cubes come from (H1′) directly; the restriction step from scale M is no longer used. 6.0 (G-ζ), (G-ret), (G-Z) use "t/(Lξ_j) in d-units inside B^j ∪ B^{j+1}". Near Σ_j the cube may now meet B^{j−1}, where the weight ξ_{j−1}^{−1} is larger. So t/(Lξ_j) stays a lower bound [P].
 (d) C5, THM39 (I-B′). Let y ∈ Λ_j. Let C be the cube of side 12M_1ξ_j, a union of level-j M_1-big blocks, centred on the M_1-block that contains Δ(y). Δ(y) and its η-layer lie in C, and C meets B^j. Lemma CC′ with Q := C (the proof uses only "Q meets B^j" and the diameter; it does not use □) gives a class cube of index j or j − 1. So T39-I2 becomes [P]. Constant flag (pre-existing, not caused by R = 1): Lemma LB writes c_3 := 12L², the printed single-size value. Under the canon (H1) (bound c_HLMα_0 at every size, index j − 1 at interfaces) the gradient bound in ξ_j units is c_HL³Mα_0. So c_3 should read c_HL³ = 18L³. This changes K′, a_AL, a_LB, γ_N by (d, L) factors at N-060 only.
 (e) C7. The (G-d) side condition is RM > 2(2D_+ + K_0 + 4)M_1. At W ≥ M it is M > 2(2D_+ + K_0 + 4)M_1, an M-threshold after M_1 and after D_+, K_0 (N-060). The L1_C conversion to "a lower bound on R" is withdrawn.
 (f) C8. In the M_1 form, b = 2dM_1 + c(d, L) and the cost to reach level j ± 2 is ≥ W/L ≥ M/L. The window holds if M > L(2dM_1 + c(d, L) + 1). Not load-bearing (THM37 4.4a).
 (g) C9. RM > 2dL becomes M > 2dL, implied by (RB).

4.4 Supply of (H1′): restriction keeps the bound [P]. If a gauge u on a cube C′ gives |A| < bξ^{−1}, |∇^ηA| < bξ^{−2} on C′, then u restricted to any C ⊂ C′ gives the same bounds on C. So (H1′) asks no larger bound than the scale-M class. It asks the bound on smaller cubes, at positions that must lie inside one cube on which the producer gives a gauge.

4.5 C6: the CMP 102 producer at scale M_1 (L1_C Lemma P2 re-based) [P given CMP 102 Thm 1 for U_{k,Z} [I, SOURCES_A18_REGULAR 5.3(b), inside R-018]].
 CMP 102 Thm 1 is multi-size with a bound linear in the size (L1_C 1.3(a) [V there]). Run L1_C Cases 1′/2′ with M → M_1 and RM → W:
 - Case 1′: C := □̃^5 (s = 12) at index j. Its Thm 1 enlargement adds 2R_1M_1^{(102)}ξ_j ≤ 2M_1ξ_j per side (N-270: M_1 ≥ L^aR_1M_1^{(102)}), so it lies in □̃^7 ⊂ B^j ∪ B^{j+1}. B^{j+2} is excluded by Lemma CC′ (i) with s = 16.
 - Case 2′: C := □̃^7 (s = 16) at index j − 1. B^{j+1} is excluded by Lemma CC′ (iv). The enlargement stays within ℓ¹ distance (16d + 2)M_1ξ_j of □ ∩ B^j, and B^{j−2} is ≥ Mξ_j/L away. So it needs M > (16d + 2)LM_1, implied by (RB).
 - THM310 version (□̃^8 → □̃^{10}, s = 22): the same steps need M > (22d + 2)LM_1 ≤ 24dLM_1 for d ≥ 1. This is why (RB) takes 24.
 - CMP 102 admissibility of the sequence: its separation in M_1^{(102)}-blocks is W/M_1^{(102)} ≥ M/M_1^{(102)} ≥ L^{2+a}R_1 > R_1 (SOURCES_L1_B_VERIFY §3.4, row N-060/N-265/N-270). Holds.
 - Size cap M′ ≤ M(ε_1): at scale M_1 it reads (c_H + 4)LM_1ε_1 ≤ 2R_1M_1^{(102)}a_1^{102}. The canon's present cap (18L + 2)Mε_0 ≤ R_1M_1^{(102)}a_1^{102} (N-380) uses M ≥ M_1, so it is stronger up to the factor (c_H + 4)/(18 + 2/L) ≤ 1.2 and the factor 2 of ε_1 = 2ε_0. To be safe, write the N-380 cap as 22LMε_0 ≤ R_1M_1^{(102)}a_1^{102}; it implies the M_1 form [P].
 Correction to L1_C 1.3(c) [P]. L1_C says "THM310 uses □̃^8: the same argument with □̃^{10} gives sizes 22M, 22LM" under R > 18dL. Its own Case 2′ step then needs R > (22d + 2)L, which R > 18dL does not imply (at d = 4: 90L > 72L). This is a constant error on RG-made sequences. It disappears under (RB) with c_R = 24.
 The complex domains (CMP 109/116 via SOURCES_A18_REGULAR 5.1; CMP 122 U^{(n)c}_k via 5.3(a)) supply the class by restriction (4.4). The class cube at scale M_1 has side ≤ 18LM_1 < (3/(4d))M by (RB). So it is smaller than one CMP 109 cube of size O(1)LM and than one CMP 122 cube of size C^{122}M = 2M. Whether every such small cube lies inside one producer cube (position, and cubes that straddle Σ_{j+1}) is the cube-family reading of SOURCES_A18_REGULAR 5.3(a) and L1_C 1.3(d). The present scale-M class needs the same reading for larger cubes. So the re-basing adds no new [I] here; the reading stays [I/R to R-018].

4.6 Why the class goes to M_1 and not to a fixed fraction M/K [P]. The brief's candidate M_□ := M/K, K = K(d, L), also works: R_eff = K, and K := the least power of L with K > 24dL keeps Lemma CC at scale M/K (R_eff > 24dL) and (G-M1) (R_eff ≥ 24). Its costs: (G-M1) [I-geo] stays; M ≥ K·M_th^{99}; and the M_1-cubes need 12M_1 ≤ M/K, i.e. M ≥ 12KM_1 > 288dLM_1, which is stronger than (RB). The class at M_1 is the case K = M/M_1. It drops (G-M1), and it is the scale Balaban himself uses on these sequences (F8). Both choices are acyclic.

4.7 Junction layers [I, with a sketch]. For j = k − N_0, …, h + 1 the R-operation does not build one-M-cube layers; it sets Z″_j = (Ω_j^{~5})^c ∩ Z (F7). The width of Ω″_j∖Ω″_{j+1} inside Z is then the old width minus the two "~5" margins. Sketch: if Ω^{~5} adds five cubes of the step's own size L^{−(k−j)}MR_j, the old width from Lemma Sep (8LMR_{j+1} in step-j units, L1_B §3.1 [P]) loses at most 5LMR_{j+1} and keeps ≥ 3LMR_{j+1} ≥ M. The tilde convention on p. 179 is not read here, so this stays [I]. Balaban's statement "{Ω″_j} is an admissible sequence" (F7) asserts (2.2) with some R ≥ 1, which is (W). (W) is the only property of these layers that §4 uses.

## §5 Effects

5.1 Walk expansions of THM37, THM39, THM310 [P given §4]. The consumers use the M_1 forms only. Checked by grep: WG_FULL (walk on the M_1-cover, 0.3), A1_WALK_FULL (M_1-cubes, D_+M_1), WC_FULL (X̃^5 in M_1-cubes, cover of Z_0 by K_1M_1 cubes), SOURCES_MULTISCALE_OMEGA 2.4 (M_1-cubes of proper scale; P9 quotes F8) [I that no other consumer uses the M-cube form]. The M-cube form of THM37 §3–§6 is the case M_1 = M. It would need M > 24dLM, which is false, so it must not be used on R-operation sequences. No consumer uses it.
 What changes: (H1) → (H1′) (class scale M_1); (H2)'s "R > c_RdL" → (RB); (G-M1) and T37-I3 removed; THM310 (G-cube) → (G-cube′) under (RB); THM39 T39-I2 [I] → [P].
 What does not change: B_0, δ_0, K_1, K_1^c, c_1(θ), C_pt, C_𝒟^in, K_310, K_W, γ_N (up to the c_3 flag of 4.3(d)), all rates, all thresholds on M_1, the α_0 cap c_HL³Mα_0 ≤ a_1, and every (2.59) entry (read at W ≥ M, as in SOURCES_L1_B_VERIFY §3.4). The walk expansions therefore hold on every sequence with (W): RG-made, R-operation, and mixed.
5.2 R-002 (the A1w row) [P given 5.1]. A1-W takes (W_G) from WG_FULL (Theorems WG-G, WG-G1), whose inputs are the M_1 forms of THM37/THM39/THM310, plus the A1_WALK geometry (G) and RM-product conditions. All of these hold on R-operation sequences: the geometric ones by §4, the RM-products as M-thresholds. R-002 keeps its status (FULL PROOF relative to listed inputs). Its residual inputs gain one line: "on sequences with W ≥ M only (R-operation), the class of (3.35) is taken at scale M_1 (SOURCES_ROP_GEOMETRY), cost M > 24dLM_1; (G-M1) removed".
5.3 H-002 cover of L1_B (variant B) [P-sketch]. Its conditions are K_1 ≥ 6, L ≥ 9, w > LK_1M_1. With w ≥ M (W) the last is M > 6LM_1 at K_1 = 6, implied by (RB). So H-002 stays PROVED [P] relative to (2.46) and (W). One part of the L1_B_VERIFY [I] "local inputs on variant-B cubes" is settled here: a variant-B cube has side K_1M_1s_i = 6M_1s_i, its □̃^5 has side 16M_1s_i, and Lemma CC′ with s = 16 puts it in one class cube of index i or i − 1 (the coarse-over-fine orientation is Case 2). This is a [P-sketch]: the variant-B cube sits on two grids, and that it is a union of M_1-big blocks of the coarse level i is from L1_B Step 5 [P there]. The other part, that the THM37/THM39 local propagators are stated for the A1_WALK 2.1 cube geometry, stays [I].
5.4 Canon order [P]. New or changed entries and their inputs:
 - (RB) M > 24dLM_1: uses d, L (N-040, N-050) and M_1 (N-270). Edges N-060 → N-310 and N-270 → N-310 exist.
 - M > 2(2D_+ + K_0 + 4)M_1 (C7): D_+, K_0 at N-060, M_1 at N-270. Existing edges.
 - M > L(2dM_1 + c(d, L) + 1) (C8): c(d, L) at N-060. Existing edges.
 - M_1 ≥ M_99 (the CMP 99 Thm 3.1 threshold, now on the class scale) at N-270: M_99 at N-060. Existing edge N-060 → N-270.
 - Removed: R > 18dL (N-180), M ≥ 9L²M_99 and the M_□^{99} rounding (N-310), α_0 → Lα_0 on the A18 5.3 route (N-370). Removing a lower bound cannot create a cycle.
 - N-180 keeps its slot. R := 1 there is a number, so N-180 still sits after N-140/N-150 (θ_S = log L/M ≤ δ_WG/(4(d + 2)) uses δ_WG) and before N-190.
 No N-line is added, moved, or deleted, so the order of the N-numbers is unchanged [I: lean/YmLean/CanonOrder.lean not read]. Every new entry is a lower bound on M (or on M_1) from earlier lines. The order stays acyclic.

## §6 Exact canon changes (proposals; this file edits nothing)

1. N-060. Replace "cube constants c_H = c_R = 18" by "c_H = 18 (class sizes 10M_1–18LM_1 at scale M_1); c_R = 24 (the ratio in (RB), M > c_RdLM_1)". In the R_1 entry, replace the reason "the project uses those results under R > 18dL" by "CMP 102 is applied with block M_1^{(102)}; the separation of every sequence in M_1^{(102)}-blocks is ≥ M/M_1^{(102)} ≥ L^{2+a}R_1"; keep the value of R_1. In the Lemma T note, replace "RM > 2dL … implied by R > 18dL for every M ≥ 1" by "M > 2dL, implied by (RB) at N-310". In Lemma LB's group, c_3 := c_HL³ (was 12L²; 4.3(d)).
2. N-180. Replace "R > 18dL (c_R = 18; THM37_FULL 3.2a, THM310_FULL 6.0 H-110 (G-cube))" by "R := 1: on every sequence that the walks see, the layer width is ≥ M in local units (CMP 96 (2.2) [V p. 224]; R-operation layers, CMP 122 I p. 179 [V]); RG-made sequences have more. Every 'RM' below reads 'M'." Then "R·M_min ≥ RM_0" reads "M_min ≥ RM_0", and θ_S := log L/M ≤ δ_WG/(4(d + 2)).
3. N-270 (M_1). Add "M_1 ≥ M_99 (CMP 99 Thm 3.1 threshold at the class scale M_1; SOURCES_ROP_GEOMETRY 4.1)".
4. N-310 (M).
 (a) Add (RB): "M > 24dL·M_1 (Lemma CC′, Lemma D□(a), THM37 8.3 radius, THM310 (G-cube′), THM39 (I-B′), L1_C Lemma P2′ with □̃^{10}; SOURCES_ROP_GEOMETRY §4)".
 (b) Add "M > 2(2D_+ + K_0 + 4)M_1 (L1_C 2.5 (G-d); was booked as a lower bound on R)" and "M > L(2dM_1 + c(d, L) + 1) (L1_C 4.4 window; not load-bearing)".
 (c) Replace the CMP 99 cube-scale entry "M_□^{99} := C^{122}M/(18L), rounded down to a power of L … M ≥ 9L²M_99 … α_0 → Lα_0 there" by "M_□^{99} := M_1 (the class of (3.35) is at the walk scale; no rounding). The class cube side 18LM_1 is < 2M = C^{122}M by (RB)."
 (d) Read every "RM ≥ f" entry as "M ≥ f" (RM_0 of N-100/N-130/N-140, θ_S, (2.59) at every walk rate, M_*(¼ε_min), M_*(½θ_cδ_H″), 8 log L/(θε), (T1) 4L²D_0, (S_H^Ω), RM > 2LK_1M_1). This is item 1 of SOURCES_L1_B_VERIFY §9, unchanged.
 Count: +3 entries ((RB), C7, C8), −1 entry (M ≥ 9L²M_99). C7 was an R bound before, so the net change in M-entries is +3.
5. N-370. Drop "α_0 → Lα_0 (rounding on the A18 5.3 route)". The cap 18L³Mα_0 ≤ a_1 stays; b = c_HLMα_0 is the absolute bound of (H1′).
6. N-380. Optional, for safety: write the CMP 102 cap as 22LMε_0 ≤ R_1M_1^{(102)}a_1^{102} (was (18L + 2)M…). It implies the M_1-scale cap of 4.5. Same slot, no new edge.
7. Text changes outside the canon (for the file owners): THM37 (H1) → (H1′), (H2) → (W) + (RB), 3.2a B10 line, 7.3 (G-M1) removed, T37-I3 removed, table row T37-P15; THM310 6.0 (G-cube) → (G-cube′), 8.4 and 10.3(a) ("R > 18dL" → (RB)), T310-I6; THM39 T39-I2 → [P] by 4.3(d), c_3 → c_HL³; SOURCES_L1_C 1.3(c) (□̃^{10} needs (22d + 2)L, now (RB)), 2.5 (an M-threshold, not an R bound), 4.4 (M-threshold).

## §7 Ledger status of (R-op geometry)

Proposed status: REDUCED (returned, not verified). The geometry is [P] (Lemma CC′ and 4.3), with Balaban's own M/M_1 mechanism read on the page (F8 [V]). Residue:
 (i) (W) on the junction layers j = k − N_0, …, h + 1 [I] (4.7; Balaban's "admissible" [V], tilde convention not read);
 (ii) the cube-family reading of the producers on the complex domains [I/R to R-018], the same item that the scale-M class already carries (4.5); and CMP 102 Thm 1 for U_{k,Z} [I], already in R-018;
 (iii) the variant-B local propagators [I] (L1_B, unchanged; the class-cube half is settled here, 5.3).
 None of (i)–(iii) is new: (ii) and (iii) were open before, and (i) is the reading on which SOURCES_L1_B_VERIFY based "R = 1" itself.
R-024 residue line: replace "NEW (R-op geometry) OPEN" by "(R-op geometry) REDUCED [unverified]: the class of (3.35) is re-based at the walk scale M_1 (CMP 122 I p. 186 (1.47) [V]); Lemma CC′ [P]; (G-M1) void; canon (RB) M > 24dLM_1; residue (i)–(iii) of SOURCES_ROP_GEOMETRY §7".
R-002 (A1w): status unchanged; add the residual-input line of 5.2.
R-016: not touched directly (as in SOURCES_L1_B_VERIFY §9).
Headline discipline: this round "returned". It needs a verifier before any status in TRUST_LEDGER or README changes.

## §8 Grade summary

| step | grade |
|---|---|
| F1–F8 | [V] |
| reading of F7–F8 (W = M; Balaban counts M/M_1) | [I, strong] |
| §2 inventory C1–C9 | [P] by inspection; completeness of the grep [I] |
| 3.1 option (a) rejected | [V] + [I] (no other estimate in CMP 122 beyond pp. 177–186 read by this file and L1_B_VERIFY) |
| 3.3 why the M-scale class fails and the M_1 class works | [P] |
| Lemma CC′ | [P] |
| 4.3(a)–(c), (e)–(g) | [P] |
| 4.3(d) THM39 (I-B′) | [P]; c_3 flag [P] |
| 4.4 restriction | [P] |
| 4.5 L1_C Lemma P2′ | [P] given CMP 102 Thm 1 for U_{k,Z} [I, R-018]; L1_C □̃^{10} correction [P]; complex producers [I/R to R-018] |
| 4.6 comparison with M/K | [P] |
| 4.7 junction layers | [I] (sketch) |
| 5.1–5.2 walk expansions, R-002 | [P] given §4; "no consumer uses the M-cube form" [I, grep] |
| 5.3 H-002 | [P-sketch] |
| 5.4 canon acyclic | [P]; Lean order file not read [I] |

Page images (/tmp/ropg) deleted at the end. STATUS: COMPLETE.
