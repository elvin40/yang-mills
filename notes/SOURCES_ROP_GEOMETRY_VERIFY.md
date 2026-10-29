# SOURCES_ROP_GEOMETRY_VERIFY — adversarial check of SOURCES_ROP_GEOMETRY.md

Date 2026-10-29. Verifier (Opus). Ids follow IDS.md. This file edits no other file. PLAN.md was not changed. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Pages rendered at 150 dpi into a fresh folder /tmp/ropv.* (deleted at the end) and read as images: CMP 122 I pp. 179, 186; CMP 99 (Propagators) pp. 396, 408, 409; CMP 96 p. 224. CMP 96 pp. 233–234 were not re-imaged; F2, F3 are not load-bearing for any verdict below.
Project files read: SOURCES_ROP_GEOMETRY (all); SOURCES_L1_B_VERIFY (all); SOURCES_ORDER_CANON N-060, N-180, N-265, N-270, N-310, N-370, N-380; THM37_FULL 3.2–3.3, 4.4a, 7.3, 8.3; THM310_FULL 6.0, 10.1–10.4; THM39_FULL (I-B), 4.3, T39-I2; SOURCES_L1_C 1.2–1.4, 2.5, 4.4; SOURCES_L1_C_VERIFY (grep); SOURCES_A18_REGULAR 5.3 + VERIFY V6 (grep); SOURCES_MULTISCALE_OMEGA 4.5; SOURCES_A3_GAMMA0_FULL 0.5; grep of "(3.35)" and of the R > 18dL family over all project files outside the firewall and archive/.

## Verdict

PASS WITH CORRECTIONS. The core repair holds. Lemma CC′ is correct as written, and every failing condition C1–C9 is of type (b) and becomes an M-threshold under (RB) M > 24dL·M_1. (G-M1) is void. The α_0 cap is unchanged. The proposed canon changes create no cycle, and no consumer of the walk expansions still needs R > 18dL. The THM39 c_3 flag and the L1_C (22d + 2)L error are both correct.
Five corrections:
1. The reading of CMP 122 I p. 186 (1.47) overstates what the page says. (1.47) measures the decay of the variational fields H^{(n)}_{k,Z} in M_1-cubes. It does not place the CMP 99 class (3.35) at M_1. The page supports the M_1 unit of distance on R-operation sequences. It is not "(RB) in Balaban's own words". The repair rests on Lemma CC′ [P], not on F8.
2. §5.1 "no consumer uses the M-cube form" is UNSUPPORTED. Several files cite the printed CMP 99 Theorems 3.1–3.3 with the class at scale M (SOURCES_A1_KERNEL, SOURCES_C_CONDITION, SOURCES_S2_FORM, SOURCES_A3_GAMMA0_FULL, SOURCES_CDC). On R-operation sequences these must be read with Balaban's block := M_1. Then Balaban's own "R sufficiently large" (CMP 99 p. 408, R ≥ R_0) becomes M/M_1 ≥ R_0. This needs one more N-310 entry, M ≥ R_0M_1. (RB) does not imply it unless R_0 ≤ 24dL, which is not known.
3. 4.3(d): a cube of side 12M_1 cannot be centred on one M_1-block and be a union of M_1-blocks. Use side 11M_1 (or 13M_1). The conclusion stands.
4. §6 item 4 count: +3 entries and −1 entry is a net change of +2, not +3. With the entry of correction 2 it is +3.
5. §6 item 6 (N-380 cap 22LMε_0) is not needed. Under (RB) the present cap (18L + 2)Mε_0 ≤ R_1M_1^{(102)}a_1^{102} implies the M_1-scale cap 22LM_1ε_0 ≤ R_1M_1^{(102)}a_1^{102} with a large margin (M > 24dLM_1). The change is harmless (an upper bound on ε_0, after M). It is optional, as the file says, but the stated reason ("to be safe") is wrong.

## §1 Page facts F1–F8

| fact | grade | note |
|---|---|---|
| F1 (CMP 96 p. 224, (2.1)–(2.2)) | CONFIRMED | quote exact; "(L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM, M is a size of big blocks and R is a big positive integer which will be fixed later" |
| F2, F3 (CMP 96 pp. 233–234) | not re-imaged | not load-bearing: the (2.59) entries are RM-products and stay M-thresholds (SOURCES_L1_B_VERIFY §3.4, imaged there) |
| F4 (CMP 99 p. 396) | CONFIRMED | quote exact. One addition: the same paragraph defines Ω_0 as "a union of big blocks of the lattice T_1, such that their distances to Ω_1 are ≤ RM". Under R := 1 and block M_1 this reads ≤ W. No step of the file uses it |
| F5 (CMP 99 p. 408) | CONFIRMED | quote exact; also "We assume that the size M of big blocks we are using in this paper is much bigger than M_0 … M = KR_0M_0". With the class at M_1 this reads M_1 = KR_0M_0; the canon already has M_1 ≥ 2R_0M_0 (N-060 note, N-270) |
| F6 (CMP 99 p. 409) | CONFIRMED | quote exact |
| F7 (CMP 122 I p. 179) | CONFIRMED | quote exact. The page also prints the tilde convention: "the domains Ω_j^{~n} are unions of L^{−(k−j)}MR_j-cubes of the lattice T_η" (first lines of the definition). So 4.7's "tilde convention on p. 179 is not read" is wrong; the cube size is printed |
| F8 (CMP 122 I p. 186, (1.47)) | CONFIRMED as a quote | "the scaled distance in the above estimates is defined in terms of M_1-cubes on corresponding scales … exp(−δd(y, Ω^c_{j+1}∖Z″_{j+1})) ≤ exp(−δ(M/M_1)(j − i)) for y ∈ Γ″_i, i < j (1.47). We choose M large enough, so that δ(M/M_1) ≥ 2." and "the conditions on M, γ, A_0, and A_1 introduced above do not depend on any scale" |

Reading of F7–F8 [I, strong] (§1 last paragraph). CORRECTED. The first half holds: one R-operation layer is one M-cube of its own scale wide, and Balaban measures it as M/M_1 cubes of size M_1. The second half, "This is (RB) in his own words", is UNSUPPORTED. (1.45)–(1.47) bound the variational fields H^{(n)}_{k,Z} of (1.44). They do not concern the CMP 99 class of (3.35), Lemma CC, or the walk cubes. The page shows that Balaban uses M_1-cubes as the distance unit on these sequences and asks only "M large" against M_1. It does not show that he places the (3.35) class at M_1. The repair does not need that: it rests on Lemma CC′ and on the supply (H1′) of 4.4–4.5. Downgrade the reading to [I, analogy].

## §2 Inventory C1–C9 and the type of each condition

I re-read each cited line (THM37 3.2, 3.2a, Lemma CC, 4.4a, 7.3, 8.3; THM310 6.0 (G-cube), 10.3(a); THM39 (I-B), 4.3; L1_C 1.3(c), 2.5, 4.4; canon N-060 Lemma T note). Each row of the §2 table quotes its source correctly.

| item | claim | grade | note |
|---|---|---|---|
| C1 N-180 R > 18dL | books C2–C4; no use of its own | CONFIRMED | |
| C2 THM37 (H2), Lemma CC Cases 1–2, 4.4a, 8.3 | type (b); repaired by Lemma CC′ s = 12, Lemma D□(a) at 10dM_1 < M, 8.3 via (ii) | CONFIRMED | |
| C3 (G-M1) R ≥ 24 | void, since □̃^5 of an M_1-cube is itself a class cube at M_1 | CONFIRMED | the 7.3 proof step (b)(ii) is replaced by Lemma CC′ s = 12; T37-I3 is removed |
| C4 THM310 (G-cube), 8.4, 10.3(a) | type (b); □̃^7 (s = 16), □̃^8 (s = 18) by Lemma CC′ | CONFIRMED | index j − 1 range needs s ≤ c_H = 18; s = 18 is at the edge and fits |
| C5 THM39 (I-B) | new consumer; not covered at R = 1 with the class at M | CONFIRMED | a 10M class cube cannot meet a one-M layer B^j and avoid both B^{j−1} and B^{j+2} in every geometry; the [I] grade is right |
| C6 L1_C Lemma P2 | new consumer; R > 16dL + 2L | CONFIRMED | |
| C7 L1_C 2.5 (G-d) | RM vs M_1 entry booked as an R bound | CONFIRMED | at W ≥ M it is M > 2(2D_+ + K_0 + 4)M_1 |
| C8 L1_C 4.4 | RM/L ≥ 18dM > b + 1 | CONFIRMED | not load-bearing (THM37 4.4a) |
| C9 N-060 Lemma T note RM > 2dL | RM-product booked through R | CONFIRMED | SOURCES_LEMMA_T_G3_VERIFY §4 also uses RM ≥ dL; M > 2dL implies both |

Completeness of the grep [I]. My own grep of "18dL", "c_RdL", "R ≥ 24", "R > c_R" over all files outside the firewall and archive/ finds no consumer outside C1–C9 (hits in SOURCES_SWEEP_E, SOURCES_SWEEP_DE_VERIFY, SOURCES_LEMMA_T_*, SOURCES_L1_C_VERIFY, THM*_VERIFY, paper/ are restatements of C1, C4, C6, C8, C9 or of the R_1 reset). Two items of the same kind sit outside the R > 18dL family and outside this file's scope:
 (x) SOURCES_MULTISCALE_OMEGA 4.5 uses (Sep) with R′ ≥ 2 ("Z̃_0 adds one layer of M-cubes, M ≤ R′M"; far domains "> R′M ≥ 2M"). This is a pure-R ratio against M, not M_1, so the M_1 re-basing does not touch it. It is the existing R-024 residue "(Sep) for R-operation-modified T^{(j)} [I-strong]" (SOURCES_L1_B_VERIFY §3). The far-domain step (d) holds already at R′ = 1 (M > M − (6 + c_X)M_1). The Z̃_0 ⊂ Λ_k step at R′ = 1 is borderline (one layer of width M against one M-cube). It stays with that residue.
 (y) The printed CMP 99 Theorems 3.1–3.3 cited with the class at M (correction 2 of the Verdict; §5 below).

## §3 Options (a), (c); why the canon's block fails

- 3.1 option (a) rejected: CONFIRMED. p. 179 [V] calls {Ω″_j} "an admissible sequence" and builds 𝔹″_k from it; that is the CMP 96/99 hypothesis. That CMP 122 gives no separate estimate elsewhere stays [I], as the file says.
- 3.2 option (c) does not arise: CONFIRMED, given §4.
- 3.3 [P]: CONFIRMED, with a sharper value. With M = L^m and L ≥ 9, M/(9L) = L^{m−1}/9 rounds down to exactly L^{m−2}. So the canon's R_eff = M/M_□^{99} is exactly L² (= 169 at L = 13), against 18dL = 936 at d = 4, L = 13. The failure is certain, not only possible.

## §4 Lemma CC′ and the consumers

4.1 Hypotheses. (H1′) CONFIRMED as a consistent restatement. The bound b = c_HLMα_0 is an absolute amplitude; CMP 99's smallness "O(1)Mα_0 sufficiently small" (p. 396 [V]) and Cor. 3.6's "O(1)Mα_0 ≤ a_1" (p. 408 [V]) are conditions on that amplitude, so writing it with the large M is legitimate when Balaban's block is M_1. (W): CONFIRMED for RG-made sequences (F1, R ≥ 1) and for the R-operation layers (F7); junction layers [I] (§7). (RB): CONFIRMED as sufficient (see the 24 check below).

4.2 Lemma CC′ [P]: CONFIRMED. I re-did each step.
 (i) q ∈ Q ∩ B^j ⊂ Ω_{j+1}^c; dist(Ω_{j+1}^c, Ω_{j+2}) ≥ W_{j+1}ξ_{j+1} ≥ LMξ_j > sdM_1ξ_j. Correct.
 (ii) q ∈ Ω_j; dist(Ω_{j−1}^c, Ω_j) ≥ Mξ_j/L > sdM_1ξ_j iff M > sdLM_1. Correct; s ≤ 22 < 24.
 (iii) Q ⊂ Ω_{j−1} ∖ Ω_{j+2} and Q ∩ B^{j−1} = ∅ give Q ⊂ B^j ∪ B^{j+1}. Correct.
 (iv) p ∈ B^{j−1} ⊂ Ω_j^c, so Q ∩ Ω_{j+1} = ∅ by M > sdM_1. Level-j M_1-blocks are unions of level-(j − 1) M_1-blocks (side M_1ξ_j = L·M_1ξ_{j−1}). Range at index j − 1: sLM_1ξ_{j−1} ≤ c_HLM_1ξ_{j−1} iff s ≤ c_H. Unit change: Lb, L²b in ξ_j units, i.e. c_HL²Mα_0, c_HL³Mα_0; the cap L²b ≤ a_1 is N-370's 18L³Mα_0 ≤ a_1. Correct.
 The ℓ¹ diameter dominates the ℓ^∞ and Euclidean distances, so the use of sdM_1 is safe in any of the metrics that CMP 96 (2.2) may mean.
 The side condition "(s + 2)d ≤ 24d" is stricter than the proof needs (sd < 24d suffices); harmless.

4.3 Consumers.
 (a) C2: CONFIRMED. Lemma AG (v) needs LM > 4M_1: holds.
 (b) C3, (G-M1) void: CONFIRMED.
 (c) C4: CONFIRMED. The d-unit lower bound t/(Lξ_j) of 6.0 survives: the cube meets at most B^{j−1}, B^j, B^{j+1}, and the smallest weight among them is ξ_{j+1}^{−1}. This was already the situation at interface cubes before the change.
 (d) C5, (I-B′): CORRECTED in one detail. "The cube of side 12M_1ξ_j … centred on the M_1-block that contains Δ(y)" is not a union of M_1-blocks (it would extend 5.5 blocks per side). Take side 11M_1ξ_j (5 blocks per side). 10 ≤ 11 ≤ c_H, so both index cases of Lemma CC′ are in range, Δ(y) with its η-layer lies inside, and Lemma CC′'s proof uses only "Q meets B^j" and the diameter. T39-I2 → [P]: CONFIRMED after this fix.
 c_3 flag: CONFIRMED. Under the printed single-size class (O(1) = 12) an index-(j − 1) cube gives |∇A| < 12Mα_0ξ_{j−1}^{−2} = 12L²Mα_0ℓ^{−2}, which is the c_3 = 12L² of THM39 4.3. Under the canon (H1) (uniform bound c_HLMα_0) it gives c_HL³Mα_0ℓ^{−2}. So c_3 = 18L³. It changes K′, K_A, a_AL, a_LB, γ_N, c_P^{98}, K_av, k_av^c by (d, L) factors at N-060, and tightens the cap Mα_0 ≤ a_LB at N-370. No new edge. This is pre-existing and independent of R = 1, as the file says.
 (e) C7: CONFIRMED. (f) C8: CONFIRMED. (g) C9: CONFIRMED.

4.4 Restriction keeps the bound: CONFIRMED [P].

4.5 L1_C Lemma P2 at M_1: CONFIRMED.
 - Case 1′: M′ = 6M_1 is a multiple of R_1M_1^{(102)} (N-270: M_1 ≥ L^aR_1M_1^{(102)}, all powers of L). Enlargement ≤ 2M_1ξ_j per side. Correct.
 - Case 2′ and the THM310 version: need M > (16d + 2)LM_1 and M > (22d + 2)LM_1. Both follow from (RB) for d ≥ 1. Correct.
 - The L1_C error: CONFIRMED. L1_C 1.3(c) Case 2′ with □̃^{10} needs R > (22d + 2)L. At d = 4 this is 90L > 72L = 18dL. SOURCES_L1_C_VERIFY checked the ε-cap of this case (its line 32) but not the R condition. So on RG-made sequences the canon R > 18dL was already insufficient for the CMP 122 supply route of THM310. "24 rather than 18" is therefore justified: (22d + 2)L ≤ 24dL for every d ≥ 1. 24 is a convenient choice, not a forced one (any c_R ≥ 22 + 2/d works).
 - Admissibility of the CMP 102 sequence (W/M_1^{(102)} ≥ L^{2+a}R_1 > R_1): CONFIRMED.
 - Size cap: CORRECTED (Verdict 5). The M_1-form cap is 22LM_1ε_0 ≤ R_1M_1^{(102)}a_1^{102} (the factor 2 of ε_1 = 2ε_0 cancels against the 2 in 2R_1M_1^{(102)}, as in L1_C (1.3.1)). The present N-380 cap (18L + 2)Mε_0 ≤ R_1M_1^{(102)}a_1^{102} implies it, since 22LM_1 ≤ (18L + 2)M holds with M > 24dLM_1 by a factor > 24dL·(18L + 2)/(22L) > 19d. The proposed 22LMε_0 is unnecessary but harmless.
 - Complex producers: the class cube side 18LM_1 < (3/(4d))M < 2M = C^{122}M. CONFIRMED. "The re-basing adds no new [I]": CONFIRMED; it makes the cube-family reading easier, since every class cube is now much smaller than one producer cube, while before a class cube of side 18LM_□^{99} could be as large as C^{122}M.

4.6 Comparison with M/K: CONFIRMED (M ≥ 12KM_1 > 288dLM_1 is stronger than (RB)).

4.7 Junction layers: CONFIRMED as [I], with two corrections. (1) The tilde cube size is printed on p. 179 [V] (L^{−(k−j)}MR_j-cubes), so "not read" is wrong. (2) The sketch treats only the ~5 of (1.11). At the junction (1.10) also uses ~7 at j = k − N_0 + 1, and that cube size is L^{−N_0+1}MR_{k−N_0+1} = M by the definition of N_0 [V]. The sketch's margin count ("loses at most 5LMR_{j+1}, keeps ≥ 3LMR_{j+1}") is not checked against (1.10). It stays [I].

## §5 Effects

5.1 Walk expansions: CONFIRMED for THM37 (T37-M1), THM39 §6, THM310 §10, WG_FULL, A1_WALK_FULL, WC_FULL, OMEGA 2.4 (all use M_1-cubes).
 "No consumer uses the M-cube form" [I, grep]: UNSUPPORTED. A grep of "(3.35)" finds files that cite the printed CMP 99 Theorems 3.1–3.3 for the global operators with "M ≥ M_1(d, L), Mα_0 ≤ a_0" and Balaban's block M: SOURCES_A1_KERNEL (Thm 3.1, layer-2 walk with cubes of size ML^jη), SOURCES_C_CONDITION ((C) "uniformly in … {Ω_j} (under (2.1)–(2.2))"), SOURCES_S2_FORM, SOURCES_A3_GAMMA0_FULL (H1)–(H2), SOURCES_CDC. (C) feeds A1-W (H-057), so it is used on R-operation sequences through R-024. These are not walk expansions, but their printed proof is the scale-M walk of CMP 99 §C, which needs Lemma CC. Repair [P-sketch]: read each of these citations with Balaban's block := M_1 and his R := W/M_1 ≥ M/M_1. The local systems of p. 408 [V] are built at R_0M_0 and need M_1 = KR_0M_0 (canon: M_1 ≥ 2R_0M_0). The global step needs Balaban's "R sufficiently large", that is R ≥ R_0 of p. 408, which becomes M ≥ R_0M_1. R_0 is a (d, L) number in the N-060 product R_0M_0. (RB) implies M ≥ R_0M_1 only if R_0 ≤ 24dL, and no project file bounds R_0. So add the entry. The small-set uses (A3_GAMMA0 sets of diameter ≤ 4L; S2_FORM, CDC, EU plaquettes and block bumps) need class cubes of side ≥ O(L) only, which (H1′) gives through Lemma CC′. (A3_GAMMA0 (H2) M ≥ M_1(d, L) becomes M_1 ≥ M_99, which is item 3 of §6.)
 The "what does not change" list: CONFIRMED except γ_N, K′, a_LB etc. through the c_3 flag (already noted by the file).
5.2 R-002: CONFIRMED, with the added line also naming the Thm 3.1 re-reading and M ≥ R_0M_1.
5.3 H-002: CONFIRMED [P-sketch]. w ≥ M gives M > 6LM_1 at K_1 = 6, implied by (RB). The class-cube half for variant-B cubes (s = 16 by Lemma CC′) is right; the propagator half stays [I].
5.4 Canon order: CONFIRMED. Every new entry is a lower bound on M (N-310) from N-040/N-050/N-060/N-270, or a lower bound on M_1 (N-270) from N-060. Removals of lower bounds cannot create a cycle. No upper bound on M_1 in terms of M exists in the canon (checked: N-270, N-310, T37-M1 (7.3.1), THM310 10.3 are all lower bounds on M against M_1). R has no upper bound anywhere, so R := 1 is a safe uniform lower bound on every layer width. The added M ≥ R_0M_1 (my item) uses N-060 and N-270: existing edges. Lean order file not read [I].

## §6 The proposed canon changes, item by item

| item | grade | note |
|---|---|---|
| 1. N-060: c_H = 18 at M_1; c_R = 24; R_1 reason; Lemma T note; c_3 := c_HL³ | CONFIRMED | keep the value of R_1 (least power of L > 18dL). It is no longer forced by the project's R conditions, but CMP 102 still needs R_1 above Balaban's own minimum, which the canon does not bound [I, pre-existing] |
| 2. N-180: R := 1, θ_S = log L/M | CONFIRMED | a uniform lower bound; RG-made sequences have more; no consumer needs an upper bound on R |
| 3. N-270: M_1 ≥ M_99 | CONFIRMED | needed, since the CMP 99 Thm 3.1 threshold now applies to the class block M_1 |
| 4(a). N-310 (RB) M > 24dLM_1 | CONFIRMED | binding source: L1_C P2′ with □̃^{10}, (22d + 2)L ≤ 24dL |
| 4(b). C7, C8 entries | CONFIRMED | |
| 4(c). M_□^{99} := M_1; drop M ≥ 9L²M_99 | CONFIRMED | M ≥ max(M_99, L) stays at N-310 |
| 4(d). every RM ≥ f → M ≥ f | CONFIRMED | SOURCES_L1_B_VERIFY §9 item 1 |
| count "net +3" | CORRECTED | +3 − 1 = +2; with M ≥ R_0M_1 (below) +3 |
| missing entry | ADD | N-310: M ≥ R_0M_1 (Balaban's R ≥ R_0, CMP 99 p. 408 [V], on R-operation sequences with block M_1) |
| 5. N-370: drop α_0 → Lα_0 on the A18 5.3 route | CONFIRMED | the factor L came from rounding M_□^{99} down to a power of L (SOURCES_A18_REGULAR_VERIFY V6, canon N-310). With the bound b absolute and the class cube far inside a C^{122}M producer cube, restriction (4.4) needs no rounding. 18L³Mα_0 ≤ a_1 stays |
| 6. N-380 22LMε_0 (optional) | CORRECTED | not needed; harmless (Verdict 5) |
| 7. text changes | CONFIRMED | add: SOURCES_L1_C 1.3(c) "R > 16dL + 2L (implied by R > 18dL)" holds only for □̃^7; the □̃^{10} line is wrong under R > 18dL; and THM39 4.3 cube side 11M_1 |

No cycle. After items 1–6 and the added entry, no consumer that I found still needs R > 18dL on RG-made sequences: every former use goes through Lemma CC′ with (RB), and RG-made sequences satisfy (W) a fortiori.

## §7 Residue items

| item | grade | note |
|---|---|---|
| (i) (W) on junction layers [I] | CONFIRMED | with the 4.7 corrections (tilde size printed; ~7 at j = k − N_0 + 1 not in the sketch) |
| (ii) cube-family reading of the producers, Thm 1 for U_{k,Z} [I/R to R-018] | CONFIRMED | not new; easier than before |
| (iii) variant-B local propagators [I] | CONFIRMED | unchanged |
| "none of (i)–(iii) is new" | CONFIRMED | add a fourth line, (iv): the re-reading of the printed CMP 99 Thms 3.1–3.3 at block M_1 for the A1_KERNEL / C_CONDITION / S2_FORM / A3_GAMMA0 / CDC citations [P-sketch], cost M ≥ R_0M_1 |
| §8 grade "5.1 no consumer uses the M-cube form [I, grep]" | UNSUPPORTED | see §5.1 |
| §8 "reading of F7–F8 [I, strong]" | CORRECTED | [I, analogy] |

## §8 Safe canon changes and status

Safe canon changes (proposals; this file edits nothing):
1. N-060: c_H = 18 (class at the walk scale M_1, sizes 10M_1–18LM_1, absolute bound b = 18LMα_0); c_R = 24 (ratio in (RB)); R_1 value kept, reason replaced as in ROP §6.1; Lemma T note "M > 2dL, implied by (RB)"; c_3 := c_HL³ = 18L³ (with K′, K_A, a_AL, a_LB, γ_N, c_P^{98}, K_av, k_av^c following).
2. N-180: R := 1 on every sequence the walks see (CMP 96 (2.2) [V p. 224]; CMP 122 I p. 179 [V]); every "RM" reads "M"; θ_S = log L/M ≤ δ_WG/(4(d + 2)).
3. N-270: add M_1 ≥ M_99.
4. N-310: add (RB) M > 24dLM_1; add M > 2(2D_+ + K_0 + 4)M_1 and M > L(2dM_1 + c(d, L) + 1); add M ≥ R_0M_1; replace the M_□^{99} entry by "M_□^{99} := M_1" and drop M ≥ 9L²M_99; read every RM entry as M. Net +3 entries.
5. N-370: drop the α_0 → Lα_0 rounding clause; keep 18L³Mα_0 ≤ a_1.
6. N-380: no change needed.

Status of (R-op geometry): REDUCED [verified, with corrections]. Lemma CC′ [P, verified]; (G-M1) void; THM37/THM39/THM310/L1_C consumers repaired under (RB) and (W); the printed CMP 99 Thm 3.1–3.3 citations repaired at [P-sketch] with M ≥ R_0M_1. Residue: (i) junction-layer width [I]; (ii) producer cube family and Thm 1 for U_{k,Z} [I/R to R-018]; (iii) variant-B local propagators [I]; (iv) Thm 3.1–3.3 re-reading at block M_1 [P-sketch]. Separate and unchanged: OMEGA (Sep) R′ ≥ 2 for R-operation-modified T^{(j)} [I-strong] (R-024 residue).

Page images (/tmp/ropv.*) deleted at the end. STATUS: COMPLETE.
