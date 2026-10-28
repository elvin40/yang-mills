# SOURCES_F19_WGRATE_VERIFY — independent check of THM39_FULL (AL′) pass and WG_FULL rate pass

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## A1. (AL′) re-derived from CMP 98 page images (balaban/1985_cmp98_averaging_operations.pdf, pdf pp. 3, 4, 8, 9, 10 = printed pp. 19, 20, 24, 25, 26, 300 dpi)

Read on the images [V]:
- p. 19 (15): Ū_c = exp[i Σ_{x∈B(c−)} L^{−d}(1/i) log U(Γ_{c,x})U(c)^{−1}] U(c). Γ_{c,x} = Γ_{c−,x} ∪ [x, x(c)] ∪ Γ_{x(c),c+}, from c− to c+.
- p. 24 (43): the k-th order recursion has the same form with Ū^k on the level-k contours. Locality: Ū^k_c depends only on U_b, b ⊂ B^k(c−) ∪ B^k(c+). Covariance (Ū^u)_c = u(c−)Ū_cu^{−1}(c+).
- p. 25: |Γ_{c,x}| < (2d + 1)L (level units); the step uses exp[iA(c) + O(·)], consistent with "U(c) = product of the L finer links of c". The reading stays [I]; no line on pp. 19–26 defines U(c) explicitly.
- p. 26 (52)–(54), Prop. 2: if |U(∂p) − 1| < α_0η², η = L^{−k}, and α_0 ≤ c_2 = min{1/(3C_0), ½c′_2}, then (53) holds for all j ≤ k (inductive, so at every level, not only j = k); with the bracket ≤ 2 (needs L^{−2}(1 + C_0α_0)² < ½, true for L ≥ 2 and C_0α_0 ≤ 1/3) it gives |Ū^j(∂p) − 1| < α_0L^{2j}η²(1 + 2C_0α_0L^{2j}η²) < 2α_0L^{2j}η². Local: (52) is needed only on B^k of the four corners.

Step checks:
- (a) fine curvature: CONFIRMED. |X| ≤ 2η²|∇A| for the first-order term; three BCH errors ≤ (1 + 2 + 3)η²|A|²e^{4η|A|} ≤ 6e²η²|A|² with η|A| ≤ ½. η|A| ≤ ½ needs Mα_0 ≤ 1/(2c_3); this is implied by Mα_0 ≤ 1/(4A_Lc_P), since c_P ≥ 6e²c_3². In ℓ-units this is (52) with α̃ = c_PMα_0, η̃ = L^{−j}.
- (b) curvature of averages: CONFIRMED on the image. (53) at level i < 2α̃L^{2i}η̃² = 2α̃(L^iη/ℓ)² = ε_i. Locality: level-i points in Δ(y) have B^i-blocks inside Δ(y) by nesting, so (52) is used only on □(y).
- (c) one step: CONFIRMED as a [P] sketch. Loop Γ_{c,x} ∪ (−c) has length < (2d + 1)L + L = 2(d + 1)L = P (p. 25 bound). Unitary lasso product gives |g_x − 1| ≤ (number of plaquettes)·ε_i. A_L = 4d(d + 1)L² is a valid but uncounted upper bound for the axial-cone area (each loop edge costs ≤ its l¹ distance to c−, ≤ (d + 1)L, so area ≤ 2(d + 1)²L² ≤ A_L). |log g| ≤ (π/2)|g − 1| for unitary g with |g − 1| ≤ ½ holds (θ/(2 sin(θ/2)) ≤ π/2). |e^{iY}Ū^i(c) − 1| ≤ |Y| + L·W_i holds (Y Hermitian, product of L unitaries).
- (d) induction: CONFIRMED. w_{i+1} ≤ w_i + (π/2)A_L·2α̃L^{2i}η²/(ℓ²L^{i+1}η) = w_i + πA_Lα̃L^{i−1}η/ℓ²; Σ_{i<j}L^iη ≤ ℓ/(L − 1); w_0 ≤ |A| since |e^{iηA} − 1| ≤ η|A|. So K′ = c_3 + πA_Lc_P/(L(L − 1)), exactly as printed. K′ = O(d²L⁴) is correct (A_Lc_P = O(d²L⁶)).
Grade A1: CONFIRMED. (AL′) is [P rel. CMP 98 Prop. 2 [V] + the (15)/(43) reading of U(c) [I]]. Note: the file tags Prop. 2 as [R]; on today's image it is [V].

## A2. K_Γ recomputed
Composite transport: Σ_{i=0}^{j−1}(≤ dL bonds)·|R(Ū^i_b) − I|, with |R(g) − I| ≤ 2|g − 1| for the adjoint action (|gXg^{−1} − X| ≤ 2|g − 1||X| for unitary g). So |R(Ū(Γ)) − I| ≤ 2dL·K′Mα_0Σ_{i<j}L^iη/ℓ ≤ 2dK′(L/(L − 1))Mα_0. The printed K_Γ = 2e·d·K′·L/(L − 1) is larger by e; it is valid (conservative). Level 0 is covered (|U_b − 1| ≤ η|A| ≤ K′ηMα_0/ℓ). Grade: CONFIRMED (constant conservative by e).

## A3. a_LB
a_LB = min{1, c_φ/(2K_Γ), 1/(2c_3), a_AL}: c_φ/(2K_Γ) gives K_ΓMα_0 ≤ ½c_φ (4.4); 1/(2c_3) gives η|A| ≤ ½ (4.5, (a) of AL′; redundant with a_AL, harmless); a_AL gives the Prop. 2 range and A_Lε_i ≤ ½. Mα_0 ≤ 1 is used in (a) and 4.5. Consistent. Grade: CONFIRMED.

## A4. §7.3 (AL-c), K_av := 2K′
- The O(·) in e^{O(P·b_1)} = e^{O(dLb_1)} is not named anywhere in THM39_FULL. k_av^c(d, L) is asserted to exist but has no formula. grep of SOURCES_ORDER_CANON for k_av, k_{C′}, b_1^{37}, T37-c: no hit. So the condition b_1 ≤ k_av^c is NOT in the canon.
- K_av := 2K′ is plausible but not derived. Two points are missing: (i) at complex U′U the fine curvature also has an A′ part, |∇_UA′| < b_1ℓ^{−2}, so the curvature source is c_P(Mα_0 + b_1)-type, not c_PMα_0; (ii) the bound e^{2K_avL^{i−j}b_1} is stated in b_1 only, which needs the imaginary part of log of a product to be linear in b_1 with an M α_0-independent constant (true to first order, not shown). Neither changes the form; both change the constant.
Grade: CORRECTED (status stays REDUCED; the file should name the constant, e.g. "c_N(d, L) := the non-unitary conjugation constant, k_av^c := (log 2)/(c_NdL)", and the canon needs b_1^{37} ≤ k_av^c in the complex-domain line B14/B20, after K′).

## A5. Does (AL′) supply A18 Lemma Q input I-Q1? (SOURCES_A18_REGULAR 6.1)
I-Q1 as used in Lemma Q step (3): averaged fields Ū^j keep a link bound of size O(α)·(L^jη) (units L^kη = 1), so the transport along a level-j path of length dL·L^jη costs ‖Ad − 1‖ ≤ c(d, L)αL^{j+1−k}.
- Corollary (b) (A3-R2, (3.35) gauge): (AL′) gives |Ū^i_b − 1| ≤ K′L^iηMα_0/ℓ, exactly this form with α → Mα_0 and the (d, L) constant K′. SUPPLIED.
- Corollary (a) (axial gauge, α = plaquette parameter, "no factor M"): (AL′) as stated assumes (3.35) data |A|, |∇A|; it does not cover the axial gauge. The same recursion works there: skip step (a) (the curvature bound is the hypothesis (52) directly, α̃ = α), and take w_0 ≤ 2d²α from Lemma Q step (1). Result K″ = 2d² + πA_L/(L(L − 1)). This variant is one line but is not written.
- Lemma Q's bracket says "same bound up to a factor 2". (AL′) gives the factor K′/c_3 = 1 + πA_Lc_P/(c_3L(L − 1)) = O(d²L²), not 2. Only c_Q(d, L) changes; uniformity in k holds.
Grade: CORRECTED (scope). The THM39 note "supplies I-Q1 in the (3.35) gauge" is accurate as stated; A18 Lemma Q's corollary (a) still needs the axial variant and the "factor 2" must read "factor c(d, L)".

## A6. Stale (AL) uses
grep "(AL)", "k_av", "K_av", "AL-c" over THM39_FULL, WG_FULL, SOURCES_A18_REGULAR, SOURCES_ORDER_CANON: THM39_FULL hits are the new (AL′)/(AL-c) text, the historical change-log line 310 (labelled history), and line 156 "The earlier form (AL) … is UNSUPPORTED" (intended). No stale use in WG_FULL, A18, or the canon. A18 Lemma Q still calls I-Q1 an [I] item and does not point to THM39 (AL′) — not stale, but unlinked.
Minor tag issue: THM39 4.4, 8.1 T39-PR1, 8.3(b) tag CMP 98 Prop. 2 as [R]; this session read (52)–(54) and the proof on the image, so [V] is available.
Grade: CONFIRMED (no stale use).

## B1. (2.59) on the page image
CMP 96 p. 233 (balaban/1984_cmp96_propagators_renormalization_II.pdf, pdf p. 11, 300 dpi) [V]: "Now we require that RM is sufficiently large, i.e. we assume ¼αδ_0RM > 2d log c_0(½α) + 1. (2.59)". Then c_1(α) = 12c_0^d(½α). WG_FULL (I4) now quotes ¼αδ_0RM: CONFIRMED. Note: WG_FULL names this page as CMP 96 p. 233, not an A1-W page; the brief's "A1-W page image" is the same item. Side remark: (2.59) is stated with κ = αδ_0, α < 1, so Lemma 2.1 at κ = θδ_WG needs α = θδ_WG/δ_0 < 1, true since δ_WG < δ_0.


## B2. δ_WG entries and the place of the min
- δ_310: THM310_FULL 3.3/6.2a "Common rate" δ_* := (1 − θ)²min{(1 − θ)δ_0, δ_39, ½ε}, δ_39 := ½ε − |2 − d/2|θ_L; (8.1.1) rate (1 − θ − λ)δ_*. WG (I1) copies this exactly (θ → θ_310). CONFIRMED (THM310_FULL itself is unverified, as WG says).
- (1 − θ_37)δ_0: THM37_FULL (5.2.1) kernel rate (1 − θ)δ_0, M_1 version 7.3. CONFIRMED.
- ½ε_39 − |2 − d/2|θ_L: THM39_FULL 2.4(v)/(vi), the (3.99) normalization. CONFIRMED.
- Place of the min: G_0 blocks, the G′ blocks of the chains (2.3), and the merged Q′*C′Q′ blocks all enter the one flat product of Lemma C (4.3) at one common rate. So the min belongs at (I3) and feeds 4.3. CONFIRMED.
- Simplification: the min is always attained by δ_310. δ_310 ≤ (1 − θ_310)²δ_39 < δ_39 (third entry), and δ_39 ≤ ½ε_39 ≤ (7/64)δ′ < (1 − θ_37)δ_0 when δ′ = (1 − θ_37)δ_0. So δ_WG = δ_310. Harmless, but the canon line can read δ_WG := δ_310.
- Gap found: the mixed L² block norm of G_0. WG 4.3 uses it for G_0 blocks (I1), I-D. THM310_FULL 9.1(c) proves it "as THM37_FULL 6.3", and THM37 6.3 shows that this norm carries the factor ξ_j/ξ_{j′}, whose conversion costs θ_S in the rate. THM310 9.1(c) names only the constant cost 2L and is silent on the rate. If the rate cost is inherited, the G_0 mixed rate is δ_310 − θ_L < δ_WG, and WG's claim "common rate δ_WG for all these norms" fails by θ_L. Fix: δ_WG := min{δ_310 − θ_L, (1 − θ_37)δ_0 − θ_L, ½ε_39 − |2 − d/2|θ_L} (positive, since THM310 has θ_L ≤ ¼λδ_*), or state the G_0 mixed-norm rate in THM310 9.1(c).
Grade: CORRECTED (entries right; min placed right; the G_0 mixed-norm rate needs −θ_L or a THM310 statement).

## B3. δ_WG ≤ (7/128)δ_0 and RM_0
- THM39 2.3 takes (T37) at δ′ = ½δ_0 (θ_37 = ½). Then δ_G^min = (7/16)δ′ = (7/32)δ_0, ε_39 ≤ ½δ_G^min = (7/64)δ_0, δ_WG ≤ ½ε_39 ≤ (7/128)δ_0. CONFIRMED. For general θ_37 the bound is (7/64)(1 − θ_37)δ_0; WG (I3) should say "at θ_37 = ½".
- RM_0 ≥ 4(d + 4)log L/ε_39: then |2 − d/2|θ_L ≤ (d/2)·ε_39/(4(d + 4)) ≤ ε_39/8, so the third entry is ≥ (3/8)ε_39 ≥ ¼ε_39. CONFIRMED (the stated ¼ is conservative).
- Monotonicity in RM: entries 1 and 3 increase with RM; entry 2 is constant; ε_39 is RM-free (defined from the floor (7/16)δ′). CONFIRMED.
Grade: CONFIRMED.

## B4. 6.5 constants recomputed from the file's formulas
- c_1(θδ_WG), K_V = (B_0′c_1)^{10}c_ιe^{δ_WGc_b}: match 4.3 (W_i ≤ (B_0′c_1)^{N_V+1}b_ι, N_V + 1 = 10). CONFIRMED.
- a_* = K_V^{−1}(4C′_𝒟)^{−10}: matches 4.5(ii). CONFIRMED.
- M_* := max{4C′_𝒟c_0, 3c_loc, 4C_𝒟^{H1}c_1c_0}: the first two match 4.5(i). The third entry is CORRECTED. It comes from A1-W's smallness C_𝒟^{H1}c_1ρ_* ≤ ¼ (5.4). In A1-W that c_1 is c_1(½ε) (A1_WALK_FULL 0.5(ii), 5.5; SOURCES_A1_WALK 5.5), not c_1(θδ_WG). Since ½ε < ¼δ_WG < θδ_WG at θ = ½, c_1(½ε) > c_1(θδ_WG), so the entry as defined is too weak. Also c_1(½ε) needs ε, which 6.4 fixes after M_*. Fix: drop the C_𝒟^{H1} entries from M_* and a_*, and keep them only in M_*′ and a_*′ (5.9 already lists them there), with c_1 := c_1(½ε) written out. This was already present in 5.4 ("we enlarge M_* and shrink a_*"); the 6.5 restatement repeats it.
- M_*′, a_*′: match 5.9(i) with the c_1 caveat above. CONFIRMED with that caveat.
- M_W = max{A1-W threshold, 4C″_𝒟K_W}: C″_𝒟K_W/M_1 ≤ ¼ is needed because ρ_{**} ≥ ρ_W ≥ K_W/M_1. CONFIRMED.
- a_** = min{a_*′, a_0, K_2^{−1}(4C″_𝒟)^{−12}}: matches 5.9(iii). CONFIRMED. Small wording point: "K_2 changes through ε only" is true for the rate arguments; K_2 also depends on B_0′ and B_W, which do not depend on the rate.
- c_0 ≥ max{K_1c_1(θ_37), K_310, c_1(½ε_39)K_W^{39}}: these are the per-step constants of (5.2.1), (8.1.1), and 3.9-W (ii). CONFIRMED.
- Stale element: 6.2's first bullet still says "B_0, c_0, δ_0, C_𝒟^in … depend on d and L only". c_0 now depends on (d, L, a), θ_37, θ_310, λ, and RM_0 (the next sentence says so). B_0 must also dominate the source prefactors (4/γ_N)L^{|2−d/2|} (THM39) and B′ (THM37), which depend on a through γ_N. Fix: B_0 := max of the three source prefactors, a (d, L, a) constant.
Grade: CORRECTED (the c_1 in the C_𝒟^{H1} entries, and the 6.2 dependence statement).

## B5. G′ mixed L² rate
THM37_FULL 6.3: N_2(∇T_ω∇*) has rate (1 − θ_37)δ_0 − θ_S. At RM ≥ RM_0, θ_L ≤ δ′/(8(d + 4)) with δ′ = ½δ_0, so (1 − θ_37)δ_0 − θ_L ≥ (½ − 1/(16(d + 4)))δ_0 for θ_37 ≤ ½. This is ≥ (½ − 1/96)δ_0 > (7/128)δ_0 ≥ δ_WG. PROVED. In fact it holds for every θ_37 < 1 if THM39 uses δ′ = (1 − θ_37)δ_0: (1 − θ_37)δ_0 − θ_L ≥ δ′(1 − 1/(8(d + 4))) > (7/64)δ′ ≥ δ_WG.
Grade: CONFIRMED.

## B6. Circularity
ε_39 = min{½δ_G^min, γ_N/(8c_+Σ(½δ_G^min))}: δ_G^min = (7/16)δ′ (THM37); c_+ = C_𝒟^Nb_G, b_G = B′²L^{2+d/2}c_1(¼δ′) (THM37 constants, at the minimal RM); γ_N = c_φ²/(4K_N) (d, L, a), with a_LB from (AL′) (d, L only). None uses G, G_1, WG, or A1-W for G. δ_310 uses THM37 and THM39 constants only (THM310 8.4). RM_0 depends on ε_39, and ε_39 is RM-free, so there is no loop. Grade: CONFIRMED.

## B7. Surviving ½δ_0
grep in WG_FULL: line 158 (Balaban quote, intended); 5.4 "takes … rate ½δ_0 … replace ½δ_0 by (1 − θ)δ_WG" (describes A1-W's source statement, intended); change-log F4 line (history). No live use. Elsewhere: SOURCES_ORDER_CANON B5a still reads c_1(θ_WG½δ_0), and B10 reads θ_S ≤ δ_0/(4(d + 2)), which is weaker than THM39's θ_L ≤ δ′/(8(d + 4)) = δ_0/(16(d + 4)). Both are canon items for Part B (below). Stale dependence text in WG 6.2 (B4).
Grade: CONFIRMED for WG_FULL (no live ½δ_0); canon stale as expected.

## Verdict
THM39_FULL: PAPER-GRADE relative to tagged inputs. (AL′) is correct step by step against the CMP 98 images; K_Γ, a_LB correct (K_Γ conservative by e). Open: (AL-c) stays REDUCED with an unnamed constant; A18 Lemma Q corollary (a) needs the axial variant of (AL′).
WG_FULL: PAPER-GRADE after three local fixes, still conditional on THM310_FULL (unverified): (1) the C_𝒟^{H1} entries of M_*, a_* use c_1(½ε) and belong in M_*′, a_*′; (2) the G_0 mixed L² rate needs −θ_L (or a THM310 9.1(c) statement); (3) 6.2 dependence text and B_0 as the max of the source prefactors.

Canon lines Part B needs, in dependency order (SOURCES_ORDER_CANON, not edited):
1. B5 (append): θ_37 = ½, θ_310, λ ∈ (0, ¼] (numbers); CMP 98 C_0, c′_2, c_2 = min{1/(3C_0), ½c′_2}; c_3 = 12L², A_L = 4d(d + 1)L², c_P = 2c_3 + 6e²c_3², K′, a_AL, K_Γ, c_φ, K_φ, K_A, K_Δ, K_N, a_LB; γ_N = c_φ²/(4K_N). All (d, L, a), RM-free.
2. B10a (new, replaces B10's use for these files): RM_min with θ_L ≤ δ′/(8(d + 4)), δ′ = (1 − θ_37)δ_0, and (2.59) at the THM37/THM39 rates.
3. B10b: THM37 walk constants B′, c′, K_1, c_1(θ_37), C_37, a_37, M_37 at RM_min.
4. B10c: THM39: b_G, δ_G^min = (7/16)δ′, C_𝒟^N, c_+ → ε_39 (RM-free) → K_W^{39}, c_1(½ε_39), M_W^{39}.
5. B10d: RM_0 := max{RM_min, 4(d + 4)log L/ε_39}; δ_39 := ½ε_39 − |2 − d/2|θ_L at RM_0.
6. B10e: THM310: δ_* := (1 − θ_310)²min{(1 − θ_310)δ_0, δ_39, ½ε_39}; s_ζ, s′, s_dc, W_P, W_dc, K_310, C_𝒟^{310}, M_310; RM_0 raised so that θ_L ≤ ¼λδ_* (legal: every entry is RM-monotone).
7. B10f: δ_310 := (1 − θ_310 − λ)δ_*; δ_WG := min{δ_310, (1 − θ_37)δ_0, δ_39} (= δ_310; with the B2 fix, each entry − θ_L where a mixed L² form is used); c_0 := max{K_1c_1(θ_37), K_310, c_1(½ε_39)K_W^{39}}; B_0 := max of the source prefactors.
8. B5a MOVED here (after B10f): θ_WG = ½; c_1(θ_WGδ_WG), K_V, M_* = max{4C′_𝒟c_0, 3c_loc}, a_* = K_V^{−1}(4C′_𝒟)^{−10}, c′ := c_0^{10}K_V^{−1}.
9. B10 (restated): the A1-W rescaling condition at the new rate, θ_S small against δ_G = (1 − θ_WG)δ_WG − (d/2 + 1)θ_S (the old δ_0/(4(d + 2)) form is stale).
10. B11–B12a unchanged in form (ε from δ_G at δ_WG; M_*′, a_*′ carry the C_𝒟^{H1}c_1(½ε) entries).
11. Complex rows (B14/B20): k_av^c(d, L) after K′, b_1^{37} ≤ k_av^c, then k_{C′}, then b_1^{310} = min{a_1^{loc}, a_1^c, k_{C′}b_1^{37}, ¼}.
