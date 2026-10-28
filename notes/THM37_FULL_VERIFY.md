IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# THM37_FULL independent verification (2026-10-28)

Scope: THM37_FULL.md §1–§9. Firewall respected (no sa_repo, SA map, ONLINE_SWEEP).

## V1. Page images: CMP 99 pp. 408–409, CMP 96 pp. 229 (text), 233–234

- p. 409: (3.87), (3.88), (3.89), Thm 3.7 statement match THM37 §1.4–1.6 verbatim. CONFIRMED.
- CMP 96 p. 233: (2.59) reads "¼αδ_0RM > 2d log c_0(½α) + 1". CONFIRMED (claim 4). c_0(α) < 4/(αδ_0) and c_1(α) = 12c_0^d(½α) also match.
- CMP 96 p. 234: Lemma 2.1 (2.60)–(2.63), (2.65)–(2.67), Prop. 2.2 match §2.2 verbatim. Side note (not in THM37): Balaban's own α = ½ rewrite "δ_0RM > 16d log c_0 + 1" should read "+ 8"; not load-bearing.
- p. 408 printed 𝒟_j: "cubes □, with centers at points of this lattice [ML^jηZ^d], which are unions of 2^d big blocks, with at least one of them contained in B^j(Λ_j)". There is NO printed condition □ ⊂ B^j ∪ B^{j+1}. CMP 96 p. 229: cubes cover B^j(Λ_j) "with a center y ∈ Λ_j (more exactly it belongs to the boundary of this set also)". So the printed coarse cubes of 𝒟_{j+1} CAN cross Σ_{j+1} into B^j by up to Mξ_{j+1}. THM37 (H-PU)(a) adds the non-crossing condition from the (3.35) class. This changes the reading of claim (2); see V3.
- p. 408 says "The family 𝒟 is a partition of the lattice T" although the cubes overlap; it is a cover.

## V2. Page images: CMP 99 pp. 402, 410; CMP 95 p. 36 ((1.118))

- p. 410: printed proof of Thm 3.7, the "arbitrarily close" remark, (3.91)–(3.94), Cor. 3.8 statement: verbatim match with THM37 §1.6–1.7. CONFIRMED.
- p. 402: (3.58)–(3.65) match §8.2; (3.61) verbatim CONFIRMED, incl. "the norms on the right-hand side restricted to the block B^j(y) containing the point x. It is an analytic function of A on the domain (3.37), for α_1 sufficiently small."
- CMP 95 (1.118): h_z = Π h((x_μ − z_μ)/M_0), h ∈ C_0^∞(]−⅔, ⅔[), h = 1 on [−⅓, ⅓], Σ_n h²(t − n) = 1. CONFIRMED.
- Spot-check of 4 displays (task b): (2.59), (3.61), (3.89), (3.94). All verbatim.

## V3. (X-PU) recomputed (task c); script /tmp/t37v/s/pu.py, d = 1 normal direction, L = 7, units Mξ_j = 1

Model: interface Σ_{j+1} at x = 0, fine region x < 0. Fine cubes: centres c ∈ Z, c ≤ 0 (one big block in B^j). Coarse cubes: side 2L, centres in LZ. h as in (1.118), cos profile on [⅓, ⅔].
- Reading (a) of THM37 (coarse cubes do not cross Σ, centres c ≥ L): Σh² < 1 on (⅓, 2L/3) = (0.33, 4.67); Σh² = 0 on [⅔, L/3] = [0.67, 2.33]. So the failure holds for EVERY L ≥ 2, not only L > 5: on (⅓, ⅔) the partner fine cube c = 1 is excluded and no coarse h reaches. "L > 5" is only the threshold for a zero of Σh² at corners (THM37 uses reach 5/3); at a flat face zeros exist for L ≥ 3.
- Printed reading (CMP 96 p. 229: centre in Λ_{j+1} or its boundary, so coarse cubes cross Σ): Σh² = 2 on (−2L/3, ⅓) = (−4.67, 0.33). Σh² = 1 also fails. In addition, Lemma AG fails on the crossing part (B^j points get □-level j + 1).
- Conclusion: the printed partition of unity does not satisfy Σh² = 1 near a level interface under either reading. THM37's (X-PU) finding is CORRECT and in fact understated (all L, both readings).
- Repair (coarse normal profile 0 on [0, ⅓], rising like h(x − 1) on [⅓, ⅔], 1 up to the literal fall): Σh² = 1 exactly on the flat face, no normalization needed. Its normal derivative at level-(j+1) points is c_h/(Mξ_j) = c_hL/(Mξ_{j+1}), so the factor L in (H-PU)(d) is correct. Uses restored: (c) yes; (b) margin ⅓Mξ_j at interface faces, so Lemma S(ii) needs ⅓M > L (M_37 has 3L + 1); AG untouched. Not shown: corners and coarse cubes whose face lies only partly on Σ (needs φ/√Σφ² with Σφ² ≥ c; THM37 tags this I-geo, correctly). Side effect for consumers: the end-domain band shrinks from ⅓M to ⅓M/L at interface faces (THM37 says so in Lemma S(v)).
- Minor: (H-PU)(b) says "faces of □ that lie on Σ_{j+1}" for □ ∈ 𝒟_j; the faces on an interface belong to coarse cubes (□ ∈ 𝒟_j touching Σ_j). The value ⅓Mξ_j/L is right; the index is off by one.

## V4. The five §9.3 checks (task a)

(a) Lemma AG (iii)–(v). Holds under (H-PU)(a). (iii): points of □ are in B^j ∪ B^{j+1} by (a); in the □-system Ω_{j+1}(□) = □̃^3 ∩ B^{j+1} and Ω_j(□) = □̃^4 ⊃ □ (p. 408 [V]), so levels agree on □. (v): uses CMP 96 (2.57)/(2.2) layer width RMξ_{j+1} > 4Mξ_j. CONFIRMED. Caveat: (a)'s non-crossing clause is not printed (V1); under the printed CMP 96 cover (centres in the closure of Λ_j) coarse cubes cross Σ and AG fails there. So AG is a lemma about THM37's repaired cover, not about the printed one. THM37 says this in 3.4; it should be stated as a correction, not a reading.
(b) Repair of 3.4: verified on the flat face (V3, Σh² = 1 exactly). Corners and partial faces remain I-geo, as tagged.
(c) Right-end L² bound of 6.3 (factor 2L). Recomputed: main part K(h)G′∇*h gives three terms each ≤ c·c_hL²B_0/(Mξ) with N_2(∇G′∇*) ≤ B_0 from (3.46); the commutator part K(h)G′[h, ∇*] is ≤ (K_1/M)·c_hL/(Mξ) ≤ (K_1/M)ξ^{−1} for M ≥ c_hL; output/input level mismatch inside one cube is ≤ L. Total ≤ 2L(K_1/M)ξ_{j′}^{−1}. CONFIRMED (modulo the neighbour-block factor in V5.1).
(d) Lemma LC factor L. The L for neighbour levels is adequate (it is generous: (3.61) restricts to the block of x). But a different factor is missing: (3.61) must be applied in the □-system, whose levels differ from the global levels on Ω_0(□) ∖ □ (e.g. global B^{j−1} points inside □̃^4 have □-level j). There, the global bound |A′| < α_1ξ_{j−1}^{−1} gives only |A′| < Lα_1ξ_j^{−1} and |∇A′| < L²α_1ξ_j^{−2} in □-units. So the □-local hypothesis holds with α_1 → L²α_1. This is the complex analogue of the c(d)L gluing loss THM37 records for (3.35) in 3.3. Also "V′_□ is the restriction of V′" is false at those points (the □-system averages over different blocks); only the bound (3.61) in the □-system is needed, so the fix is the radius factor. CORRECTED: a_1^c(θ) needs an extra factor 1/L² (or the (3.37) domain read in the □-system).
(e) T37-I4 (M_th concerns R_0M_0). p. 408 [V]: the local sequence uses layers 2R_0M_0L^nη and Cor. 3.6 needs only □̃^5 inside a class cube and O(1)Mα_0 ≤ a_1, with M the class-cube scale. The CMP 96 theorems behind Cor. 3.5 need the local parameters (R_0, M_0) large, not the walk-cube size. The reading is plausible and consistent with "M = KR_0M_0". Stays [I]; no contrary text found.

## V5. Constants, T37-M1, T37^c (tasks d, e)

5.1 K_1 = 2(3d + 1)c_hL²B_0. Term-by-term recomputation agrees: 2dc_hL², c_hL²/M ≤ c_hL², dc_hL; L² form doubles the averaging term (4d + 1 ≤ 2(3d + 1)). The second L comes from the X-PU repair (without it K_1 ∝ L). Two unstated points: (i) bonds of st(x) and block points can lie in a neighbouring block Δ(z″), and (3.3.1) gives e^{−δ_0d(z″,z′)} ≤ e^{cδ_0}e^{−δ_0d(z,z′)}, plus a count of neighbour blocks; K_1 needs this factor (constant only). (ii) (3.3.1) for G′_□ decays in the □-system distance d_□, and Lemma K uses the global d. The step d_□ ≥ d − O(1) on □ × □ is not stated; the □-system is coarser than the global one on global-B^{j−1} points of □̃^4, so it is not automatic. Needs one geometric lemma [I-geo]. Balaban avoids it by the Euclidean form of (3.89), which costs a factor L in rate at level interfaces.
5.2 M_37 = max{M_th, 3L + 1, 2C_𝒟^inK_1c_1(θ)}: M_th = local input; 3L + 1 = positive band ⅓M − L (Lemma S(ii)); the third term gives Σ_n(C^inK_1c_1/M)^n ≤ 2 and ‖R′‖ ≤ C_ptK_1c_1/M ≤ ½ (C_pt ≤ C^in). 6.1's M ≥ 4dc_hL² follows if B_0 ≥ 1/36 (take B_0 ≥ 1). CONFIRMED. C_𝒟^in ≤ 3^d + 3^d + (2L + 2)^d ≤ 3(2L + 2)^d with half-open cubes: CONFIRMED. C_pt ≤ 2^{d+1}: CONFIRMED.
5.3 Prop. W: c_1(θ)^n from (2.62) after dropping the last factor: correct. Rate (1 − θ)δ_0 and the θ = ½ match to (3.94): CONFIRMED.
5.4 T37-M1. 2R_0M_0 ≤ M_1 suffices for Ω_0(□) ⊂ □̃^5 (p. 408: dist(Ω_0(□)^c, □̃^4) = 2R_0M_0η(L^j − 1)/(L − 1) < 2R_0M_0ξ_j; even 2R_0M_0/(L − 1) ≤ M_1 would do) and for the □̃^4/□̃^3 layer. 12M_1 ≤ M makes □̃^5 (side 12M_1ξ_j) fit in 2^d M-blocks. Per-step factor K_1c_1(θ)/M_1: CONFIRMED. (G-M1) stays I-geo; near Σ_j it inherits the gluing problem of 5.5 below.
5.5 T37-I2 cites "gauge gluing [I, as SOURCES_A18_REGULAR 5.3(a)]". SOURCES_A18_REGULAR's own verification (its l. 192) graded 5.3(a) cube patching UNSUPPORTED. So T37-I2 leans on a refuted analogy; it needs its own argument (e.g. use the class cube at index j − 1 with the factor L, which (3.35) gives directly if □̃^5 ⊂ B^{j−1} ∪ B^j).
5.6 T37^c. Neumann in Lemma LC: N(W^m) ≤ (2c_VLB_0α_1)^m c_1(θ)^{m−1}e^{−(1−θ)δ_0d} is valid (m − 1 sums, drop one factor; sharper than the printed c_1^m). q ≤ ½ ⇔ α_1 ≤ 1/(4c_VLB_0c_1(θ)): formula CONFIRMED. Rate (1 − θ)²δ_0 with c_1(θ′), θ′ = θ(1 − θ): CONFIRMED. Slip: (8.3.1) bounds by 2B_0^c = 4B_0, and the transport factor is 2, so K_1^c = 8K_1, not 4K_1. Missing factor in the radius: see V4(d), α_1 → L²α_1 from □-levels vs global levels. Corrected radius a_1^c(θ) = min{a_1, a_V, 1/(4c_VL³B_0c_1(θ)), ¼} (also with a_1, a_V read at L²α_1). Still independent of M, α_0, and volume.

## V6. The 11 "sharper than Balaban" items (task f)

Sharpenings (Balaban not wrong, only less explicit): 1 (explicit constants; with V5.1 and V5.6 slips), 2 (rate remark p. 410 proved), 3 (existence from finite-dimensional Neumann), 4 (K(h) as commutator), 9 (M_1 version for G′), 10 (complex form, explicit radius; radius needs V4(d) fix), 11 (name clash, bookkeeping).
Corrections of errors, not sharpenings:
- 6 (X-PU): the printed partition of unity does not satisfy Σh² = 1 near level interfaces. Stronger than claimed: fails for all L ≥ 2 under THM37's cover, and gives Σh² = 2 under the printed CMP 96 cover (V3).
- 5 (Lemma AG): an error-fix in disguise. It holds only for a cover whose cubes do not cross level interfaces; the printed cover (CMP 96 p. 229, CMP 99 p. 408) allows crossing, and then the agreement step that Balaban uses silently is false at crossing points.
- 7 (other norms): partly a correction. The scale-shift rate cost log L/(RM) is omitted in print; the left/right split is a restriction of the proof method (no counterexample to the printed sentence is given), so it is a clarification, not a refutation.
- 8 ((2.59) ¼ vs ½): corrects a project file (WG_FULL (I4)), not Balaban.
Also corrections not listed by THM37: p. 409 "□̃^5 is contained in one of the cubes" fails as stated next to an interface (THM37 3.3 notes the factor L, but cites a refuted gluing argument, V5.5); p. 408 "partition" means cover.

## V7. Grades

(1) Verbatim quotes and T37 with K_1, M_37, C_𝒟^in: CORRECTED (quotes exact; constants right up to a neighbour-block factor e^{cδ_0} in K_1 and one unstated step d_□ ≥ d − O(1)).
(2) X-PU: CORRECTED (true and understated: all L ≥ 2, and the printed cover gives Σh² = 2; factor-L repair works on flat faces).
(3) Cor. 3.8 three forms, rate cost log L/(RM): CONFIRMED.
(4) (2.59) = ¼αδ_0RM: CONFIRMED.
(5) T37-M1, factor K_1c_1(θ)/M_1, 2R_0M_0 ≤ M_1, 12M_1 ≤ M: CONFIRMED (G-M1 stays I-geo).
(6) T37^c: CORRECTED (K_1^c = 8K_1; radius needs an extra 1/L² from □-level vs global-level transfer of (3.37); rate (1 − θ)²δ_0 and the one named step (3.61) confirmed).
Whole proof: NEEDS FIXES rel. its tagged inputs. All fixes are local (constants, one geometric lemma, one radius factor, re-sourcing T37-I2); none changes the structure or the rates.

## Regrade after F18 (2026-10-28)

Read: THM37_FULL change log, 3.2 (H1)/(H2), 3.3 Lemma CC, 4.4a Lemma D□, 4.5 K_1, 8.2–8.5, 9.2′, ledger, 9.3. CMP 99 pp. 396, 408–409 (text layer), CMP 96 (2.46) (text layer), SOURCES_A18_REGULAR + VERIFY, SOURCES_ORDER_CANON B10, B18, B22, B22a. Firewall kept.

R1. Lemma D□.
- (a) d ≤ L·d_□: CONFIRMED in substance. Lower bound d_□ ≥ ξ_{j+1}^{−1}|y − y′|_1 is right (□-levels ≤ j + 1). The upper bound "monotone lattice path in □" ignores the (2.46) rule that contour parts in B^n use bonds of Λ_n. Each switch between Λ_j and Λ_{j+1} costs O(dLξ_j) of length, at most one switch per Mξ_{j+1} of path. So d ≤ (1 + c(d)/M)L·d_□ + c(d, L). Harmless.
- (b) O(1) form: the case the file worries about is PROVABLE, c_D = 0. Dichotomy: if □̃^4 meets B^{j−1}, then □̃^3 ∩ B^{j+1} = ∅, because B^j has thickness RMξ_j > 10dMξ_j ≥ ℓ¹-diam □̃^4 (R > 12dL). Then Ω_{j+1}(□) = ∅, all □-levels on Ω_0(□) are ≤ j, every □-weight is ≥ ξ_j^{−1}, and d_□(y, y′) ≥ ξ_j^{−1}|y − y′|_1. Also □ ⊂ B^j, convex, a union of j-blocks, so a monotone Λ_j path in □ gives d(y, y′) ≤ ξ_j^{−1}|y − y′|_1. Hence d ≤ d_□ on □ × □ [P]. No retraction is needed.
- The other case (□̃^4 ∩ B^{j−1} = ∅, file's "c_D = 0 [P]") has a small gap: "□-weights ≥ global weights" does not give d ≤ d_□ directly, because a d_□-contour on global-B^{j+1} points of □̃^4 ∖ □̃^3 uses Λ_j bonds, which are not globally admissible. Re-snapping to Λ_{j+1} costs ≤ 2d per excursion; a bound on the number of excursions is not written. Minor [I-geo]; c_D = c(d, L) is the expected answer.
- Load-bearing? No. Without (b) the walk rate is δ_0/L (or δ_0/(2L)). Every downstream use of δ_0 is a (d, L) number fixed at B5 or a lower bound on RM, M (B10, (H2)). The order stays acyclic. (b) only keeps Balaban's rate.
- Scope slip: 8.3 applies Lemma D□(b) to N(W; z, z′) with z, z′ anywhere in Ω_0(□). D□ is a statement on □ × □ only. Fix: run the Lemma LC Neumann series in d_□ (Lemma N and (2.63) in the □-system) and convert to d only at the end, in Lemma K^c, where both blocks are in □. This needs CMP 96 (2.59) for the □-sequence at rate θ (layer width 2R_0M_0): a condition on R_0M_0, same territory as T37-I4. Also "e^{c_Dδ_0} absorbed in B_0 here" should be written as an explicit factor (B_0 is a shared constant). With c_D = 0 in the interface case the factor is 1 there.
- K_1 = 2(3d + 1)c_hL²B_0·C_nb·e^{(c_nb + c_D)δ_0}: CONFIRMED. Neighbour blocks Δ(z″) lie in □ (blocks of level j, j + 1 do not cross ∂□, and supp⁺h_□ has positive margin), so D□ applies to (z″, z′).

R2. Lemma CC.
- What it proves: for □ ∈ 𝒟_j, □̃^5 (side 12Mξ_j) has one gauge in which (3.35)-type bounds hold in ξ_j units: with 12Mα_0 if □̃^5 misses B^{j−1} (index-j class cube), with 12L³Mα_0 if □̃^5 meets B^{j−1} (index-(j − 1) class cube). Arithmetic CONFIRMED: side 12Mξ_j = 12LMξ_{j−1}; |A| < 12L²Mα_0ξ_j^{−1}, |∇A| < 12L³Mα_0ξ_j^{−2}. Exclusion of B^{j+1} (Case 2) and of levels ≤ j − 2 (both cases, needs R > 12dL) CONFIRMED. Index-j big blocks are unions of index-(j − 1) big blocks (nested grids): CONFIRMED.
- Why index j − 1: an index-j class cube must lie in B^j ∪ B^{j+1}; if □̃^5 meets B^{j−1} no such cube contains it. The index-(j − 1) class (B^{j−1} ∪ B^j) is the only class cube that can. CONFIRMED; Balaban's p. 409 claim fails as stated (correction C3 is right).
- Extra point (covered): in Case 1, □-level-(j + 1) points (□̃^3 ∩ B^{j+1}) need (3.37) in ξ_{j+1} units, where the ξ_j bound becomes 12LMα_0 and 12L²Mα_0. Covered by 12L³Mα_0 ≤ a_1. Worth one sentence in 3.3.
- Printed cube size. CMP 99 p. 396: the class is cubes of size O(1)ML^jη, "O(1) will mean a number ≥ 10", and the bound is O(1)Mα_0 with "O(1)M a size of □". p. 409: "We have assumed that the number O(1) in the condition (3.35) can be taken as equal to 12". So the printed class has ONE fixed O(1); Balaban fixes 12. It does NOT supply size-12LM cubes at index j − 1.
- One size is not enough. With O(1) = 12 only, Case 2 has no cube. With O(1) = 12L only, Case 1 fails for □̃^5 within 12(L − 1)Mξ_j of Σ_j (no index-j 12LM cube contains it, and the index-(j − 1) 12LMξ_{j−1} cube would equal □̃^5, which misses B^{j−1}). So (H1) must be read as: one gauge with the uniform bound 12LMα_0 on every class cube of size 10M to 12LM. The file's wording "all class cubes of size up to 12LMξ (O(1) = 12L)" means this; the Case 1 sentence "with Mα_0" should read "with 12LMα_0 (≤ 12L³Mα_0)".
- Verdict: (H1) is a NEW hypothesis beyond the printed class and beyond A18's inclusions as written (A18 fixes one O(1) ≥ 10). Admissible: YES. 12L³Mα_0 ≤ a_1 is α_0 ≤ a_1/(12L³M), an upper bound on α_0 with a_1 = a_1(d, L) (CMP 99 Thm 3.4) and M fixed earlier; α_0 is chosen at B22, after M (B18). Canon edits needed: add "12L³Mα_0 ≤ a_1" to the B22 cap list (with the 1.5·c_□^{109}·L·B conversion when α_0 is the CMP 109 parameter). Consumer bookkeeping [my reading]: A18 5.2 (CMP 102 Thm 1, any cube size 2M′) supplies all sizes; the B22a cap becomes 12LMε_0 ≤ R_1M_1a_1^{102}. A18 5.1 needs CMP 109's cube constant ≥ 12 (unnamed, a convention choice). A18 5.3 (CMP 122, C ≤ 2) needs the rescale M_99 := C^{122}M/(12L) in place of /10, so B18 becomes M ≥ 6LM_99 and 12L | C^{122}M (lower bounds on M; admissible). Containment of the smaller sizes in CMP 122 cubes near interfaces is [I-geo].
- R > 12dL vs canon: no conflict. B10 has only lower bounds on R (θ_S = log L/(RM) ≤ δ_0/(4(d + 2))); no upper bound on R anywhere in SOURCES_ORDER_CANON. R > 12dL uses d, L only; add it to the B10 line. It implies (G-M1)'s R ≥ 24.

R3. Cor. 3.6 reading. CMP 99 p. 408 text: the gauge u on a class cube ⊃ Ω′_0 gives A with (3.35) "for j = k", which "implies that U′ satisfies (3.37) for the sequence {Ω′_j} with U = 1 and a_1 = O(1)Mα_0"; then Cor. 3.5. Reading (i) of T37-I2 CONFIRMED as the content of this proof: it uses only (3.37) with U = 1 for the □-sequence. Necessity: Cor. 3.6 assumes the cube index equals the top level of the sequence ("j = k … otherwise we can rescale"). In Case 2 the cube index is j − 1 and the □-sequence top level is j, so the printed alignment does not hold and the unit change must be done by hand, as Lemma CC does. Grade: [I] → [R-sketch reading], low risk. CMP 96 (2.110) and (2.128) are not cited in THM37 and are not needed for this reading.

R4. Status and residue.
- 9.2′ list: C3 CONFIRMED. T37^c radius a_1^c = min{a_1/L², a_V/L², 1/(4c_VL³B_0c_1(θ)), ¼}: arithmetic CONFIRMED (q = 2c_VL³B_0α_1c_1(θ) ≤ ½).
- PAPER-GRADE relative to tagged inputs: CONFIRMED, with these edits (all local, none changes structure or rates):
  1. 3.2/3.3: state (H1) as a multi-size class with uniform bound 12LMα_0, mark it a new hypothesis beyond the printed single-O(1) class; fix the Case 1 constant; add the Case 1 level-(j + 1) sentence.
  2. Canon: "12L³Mα_0 ≤ a_1" at B22; "R > 12dL" at B10; B18 and B22a size bookkeeping for the A18 consumers if the 5.3/5.2 routes are used.
  3. 4.4a: replace the retraction plan by the R1 dichotomy (interface case c_D = 0 [P]); the remaining gap is contour admissibility in the non-interface case [I-geo, minor].
  4. 8.3: run Lemma LC in d_□, convert at the end; record (2.59) for the □-sequence at rate θ as an input next to T37-I4.
- Ledger changes: T37-I6 narrows to the non-interface admissibility step; T37-I2 (i) → R-sketch reading, (ii) stays [I] as a consumer obligation with the named canon edits.
