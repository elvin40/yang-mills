# SOURCES_LEMMA_T_REPAIR_VERIFY — adversarial check of the L-284 (Lemma T) (c) repair (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5), verifier. Ids follow IDS.md. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read; reports/ was excluded from every grep. No existing file was edited.
Pages rendered this session (pdftoppm -r 150, fresh /tmp folders, deleted after): CMP 96 p. 223 (ℓ¹ distance), p. 224 ((2.1)–(2.4)), p. 231 ((2.45)–(2.47)), p. 232 ((2.48)), p. 233 ((2.54) triangle inequality, (2.57)–(2.59)); CMP 95 p. 18 ((1.6) block convention).
Grades: CONFIRMED / CORRECTED / UNSUPPORTED. Tags: [V] read on a page image here; [P] proved here; [I] reading.

## Verdict: PASS WITH CORRECTIONS

The diagnosis is right. The partition of unity (§2 of the repair), Lemma T (c′), (S1), (S2), (a′), (b′), (d′), (e′) are right, with small corrections. The geometry step G3 is CORRECTED: the repair's staircase is not an admissible contour of (2.46) in general. §4 below completes G3 with a different contour. Two forms of the completion exist:
- (G3-a) Build the cut-off from the closure-bond metric d_* (§4.2). Then d_* ≤ d for every reading of (2.46), and c_adj ≤ 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2 [P]. No reading is needed. This is the recommended form.
- (G3-b) Keep the printed d in the cut-off. Then G3 needs one reading [I-Σ] of (2.46) for bonds that lie on an interface Σ_j. CMP 96 p. 231 does not settle it.
Every one of the 11 consumers survives (§6). Item 11 has stale text. Four text-only consumers are missing from the list.

### Ledger status text (proposed; not applied here)

L-284 (Lemma T): "(a), (b), (d), (e) [P, verified]. (c) as written is NOT proved: the printed d of CMP 96 (2.46) is block-constant on fine points (SOURCES_SWEEP_DE_VERIFY §2). Repaired (c′) [P, VERIFIED WITH CORRECTIONS, SOURCES_LEMMA_T_REPAIR + SOURCES_LEMMA_T_REPAIR_VERIFY]: cut-off χ̃_y = Σ_{y′}ψ_{y′}χ(d_*(y′, y)/D), with d_* ≤ d the closure-bond metric (VERIFY §4.2); c_adj ≤ 2d + (d − 1)⌊L/2⌋ [P given CMP 96 (2.2) with RM > 2dL, CMP 95 (1.6)]; (a′)–(e′) with D⁺ = D + c_adj; c̃_T ≤ c_T + 6Lc_adj, D̃_0 ≤ D_0 + 2c_adj, 3/D_0 → 3C_χ/D̃_0 in K^D; all (d, L) numbers. The G3 contour is the verifier's own argument (one reader). With the printed d in place of d_*, G3 rests on the reading [I-Σ]."

H-057 (C) (row R-001): "H-057 (C): VERIFIED REDUCTION (round 9), now through the repaired L-284 (c′) (SOURCES_LEMMA_T_REPAIR, verified with corrections). Constants: c̃_− = 1/(4K̃^D) for G, c̃_{−,1} = c̃_−/(1 + δ_1) for G_1 (L-039 (Lemma R), δ_1 unchanged). Parameter conditions: Mα_0 ≤ a_0(d, L); RM ≥ max(4L²(D̃_0 + c_adj), 2dL, c(d, L)); M ≥ c̃_T(d, L)/22; K-032 (Vol). The input 'd-path metric (one fine step = η/ℓ(b))' is removed; new inputs CMP 96 (2.2) [V] and CMP 95 (1.6) [V]. Residual: the G3 contour has one reader; with the printed d in the cut-off, add [I-Σ]."

## 1. The failure diagnosis (repair §0)

1.1 Page [V, CMP 96 p. 231]. (2.46): d(y, y′) = inf Σ_j (L^jη)^{−1}|Γ_{y,y′} ∩ B^j(Λ_j)|, over contours whose part in B^j(Λ_j) "consists of bonds of the lattice Λ_j". Next sentence: d(x, x′) := d(y^j(x), y^{j′}(x′)) for x ∈ B^j(Λ_j), x′ ∈ B^{j′}(Λ_{j′}). So d is constant on each block of fine points. CONFIRMED.
1.2 "A fine step across a block face costs d(y, y′) ≥ 1." CONFIRMED [P]. Every segment of an admissible contour is a whole Λ_r bond of length L^rη, charged (L^rη)^{−1} per unit length. So each bond costs at least 1, and a contour between two distinct points has at least one bond.
1.3 "|Δχ| can be 3c_adj/(Dη) on a face bond, so ℓ(b)|∇(χE)| grows like ℓ(b)/η = L^j." CONFIRMED. For fixed D, choose y so that d(b, y)/D falls where |χ′| is of order 1. Then the difference across a face is of order 1/D, not of order η/(Dℓ(b)).
1.4 CORRECTED (no effect on the argument). Repair §0 and §1 call y(x) "the centre of the block that contains x". CMP 95 p. 18 (1.6) [V] defines B(y) = {x : y_μ ≤ x_μ < y_μ + L}: y is the lower corner. CMP 96 (2.2)–(2.3) [V p. 224] put Λ_j ⊂ T^{(j)}, the lattice of spacing L^jη. The corner convention changes no inequality of the repair. §4 below uses it.

## 2. The partition of unity {ψ_{y′}} (repair §1 G1, G2 and §2)

2.1 G1 (layer adjacency). CORRECTED (source and premise).
- Source. The repair cites CMP 102 p. 277 (1). The 𝔅 of H-057 (C) is the CMP 96 setting. The right source is CMP 96 (2.2) [V p. 224]: (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM. CMP 96 p. 223 [V] fixes |x − y| as the ℓ¹ distance.
- Proof [P]. Let x lie in layer j (x ∈ Ω_j \ Ω_{j+1}) and B(y′) in layer j′. If j′ ≥ j + 2, then x ∈ Ω_{j′−1}^c and B(y′) ⊂ Ω_{j′}. So dist_∞(x, B(y′)) ≥ dist_1/d > RMℓ_{j′−1}/d = RMℓ(y′)/(dL). If j′ ≤ j − 2, then B(y′) ⊂ Ω_{j′+1}^c and x ∈ Ω_{j′+2}. So dist_∞ > RMℓ_{j′+1}/d ≥ RMℓ(y′)/d.
- Premise. The repair states G1 for dist_∞(x, B(y′)) < ℓ(y′). (P2)–(P3) apply it with dist_∞ < ℓ(y′)/(2L) + η. For a layer-0 block (ℓ = η) this exceeds ℓ(y′). Fix: state G1 for dist_∞ ≤ ℓ(y′) + η ≤ 2ℓ(y′). The proof above gives this when RM > 2dL. That is a new explicit condition. It holds after N-180 (R > 18dL) for every M ≥ 1.
2.2 G2 (tiling). CONFIRMED [V p. 224 (2.4): T = ∪_j B^j(Λ_j), B^0(Λ_0) = Λ_0]. Inside layer j the blocks are the cells of the grid T^{(j)}. The grids are nested: T^{(1)} = T_1 ∩ LZ^d [V CMP 95 (1.6)], and the same holds at every level.
2.3 (P1) Φ ≥ 1. CONFIRMED.
2.4 (P2) N_ov = 3^{d+1}. CONFIRMED; the stated reason is CORRECTED. "A cube of side ≤ 3ℓ meets at most 3^d cells" is false as stated: an interval of length 3ℓ can meet 4 cells. The correct count, per coordinate, uses r := ℓ_{j′}/(2L) + η:
- ℓ_{j′} = η: fine-point distances are multiples of η, so dist < r means dist ≤ η. That gives 3 cells.
- ℓ_{j′} ≥ Lη: 2r ≤ 3ℓ_{j′}/L ≤ 1.5ℓ_{j′}. An open interval of length ≤ 1.5ℓ meets at most 3 cells.
So each of the three layers gives at most 3^d active indices. Then N_ov ≤ 3^{d+1}.
2.5 (P3) gradient. CONFIRMED with slack. |φ_{y′}(x′) − φ_{y′}(x)| ≤ η/w(y′) = 2Lη/ℓ(y′) ≤ 2L²η/ℓ(x) by G1. For the quotient: ψ(x′) − ψ(x) = (φ′ − φ)/Φ′ + φ(Φ − Φ′)/(ΦΦ′). With Φ, Φ′ ≥ 1 and |Φ′ − Φ| ≤ N_ov·2L²η/ℓ(x), this gives (1 + N_ov)·2L²η/ℓ(x). The repair's factor (1 + 2N_ov) is larger, so it is valid.
2.6 (P4) support. CONFIRMED, given G3. ψ_{y′}(x) > 0 gives dist_∞(x, B(y′)) < ℓ(y′)/(2L), and x ∈ B(y(x)).
2.7 (P5). CONFIRMED.

## 3. The repaired cutoff and Lemma T (c′) (repair §3)

3.1 Definition. CONFIRMED. χ̃_y(b) = Σ_{y′}ψ_{y′}(b_−)χ(d(y′, y)/D) uses d only on 𝔅, where (2.46) is printed. 0 ≤ χ̃_y ≤ 1 by (P5). (With form (G3-a), replace d by d_* here; §4.2.)
3.2 Proof of (c′). CONFIRMED.
- The identity χ̃_y(b′) − χ̃_y(b) = Σ_{y′}(ψ_{y′}(x′) − ψ_{y′}(x))[χ(d(y′, y)/D) − χ(d(y″, y)/D)] holds because Σψ = 1 at x and at x′, with y″ = y(x) fixed.
- Only indices active at x or x′ contribute; there are at most N_ov of them (§2.4).
- |χ(d(y′, y)/D) − χ(d(y″, y)/D)| ≤ 3d(y′, y″)/D uses |χ′| ≤ 3 and the triangle inequality. The triangle inequality is printed: CMP 96 p. 233 (2.54) [V], "This is of course the triangle inequality for our distance".
- d(y′, y″) ≤ c_adj: an index active at x or x′ has dist_∞(x, B(y′)) < ℓ(y′)/(2L) + η, and x ∈ B(y″). That is the premise of G3.
- Product: |Δχ̃|/η ≤ N_ov·c_ψ·3c_adj/(Dℓ(b)) = 3C_χ/(Dℓ(b)), with ℓ(b) = ℓ(b_−) = ℓ(x).
3.3 Adjacency. CONFIRMED. In the curl term the bonds of one plaquette have reference points in {x, x + ηe_μ, x + ηe_ν}. Two of them can differ in two coordinates, but their sup-distance is η. The repair defines adjacency by |x − x′|_∞ = η, and G1, (P2), (P3) all use dist_∞. So the diagonal pair is covered. Equal reference points give Δχ̃ = 0.
3.4 Energy step. CONFIRMED relative to the old proof. The product rule D_U(χ̃𝓔)(b, b′) = χ̃(b′)(D_U𝓔)(b, b′) + (χ̃(b′) − χ̃(b))Ad U(b, b′)𝓔(b) is the same algebra as the old (c). The second term now has the same pointwise form as the K_abs term, with the uniform factor 3C_χ/D. So K_𝓔^D ≤ 2(√K_abs(1 + 3C_χ/D) + 2α_Fc_1)². The first term needs b, b′ inside the embedded box; supp χ̃ has radius D⁺ = D + c_adj, and one extra fine step is inside the slack 3(d + 1) of r_D. I did not re-derive the S2 step itself; it is used only through its pointwise inputs, as in the old proof.
3.5 Size, for the record. C_χ = 3^{d+1}·2L²(1 + 2·3^{d+1})·c_adj grows like 9^dL²c_adj. It is a (d, L) number. The factor 1 + 3C_χ/D̃_0 can be large, so c̃_− can be much smaller than c_−. No consumer needs its size (§6).

## 4. G3, the value of c_adj (repair §1 G3)

### 4.1 What is wrong with the repair's sketch. CORRECTED.
- Reduction to touching blocks [P]. The G3 premise is dist_∞(B(y′), B(y″)) ≤ max(ℓ′, ℓ″)/(2L) + η, with the two layers equal or adjacent (G1). Blocks are cells of nested grids (§2.2). Two cells that do not touch (closed cubes disjoint) have point-set distance ≥ ℓ_min + η. In every case the premise bound is < ℓ_min + η (it is ℓ_min/2 + η or less, and ≤ 1.5η in layer 0). So G3 is only about touching cells. The repair's case split (one layer / across an interface) is right.
- One layer. The repair says "a path of ≤ d Λ_j bonds joins the centres, so d ≤ d". With corner points, a direct staircase from y′ to y″ can run on edges of a third cell, which can lie in another layer. A safe contour goes from y′ along edges of cl B(y′) to a common vertex w, then along edges of cl B(y″) to y″: ≤ 2d bonds. So the bound is 2d, not d.
- Across an interface. The repair takes "the coordinate staircase from y′ to y″" and charges its two parts at the two rates. This contour is not admissible in general. It crosses Σ_{j+1} at a point of T^{(j)} that need not lie in T^{(j+1)}. After that point its bonds in B^{j+1}(Λ_{j+1}) are Λ_j bonds, not Λ_{j+1} bonds. (2.46) [V p. 231] forbids that. The repair flags this step itself. The value d(L + 5)/2 is therefore not proved by the sketch.

### 4.2 Completion (G3-a): the closure-bond metric d_* [P]
Definition. For y ∈ Λ_j put C(y) := y + [0, L^jη]^d, the closed cell (CMP 95 (1.6) convention, layer 0 included). Put K_j := ∪_{y∈Λ_j}C(y), the closed region of layer j. A d_*-contour is a chain of segments; each segment is a Λ_r bond (a lattice segment of length L^rη between neighbours of T^{(r)}) that lies in K_r, and it costs 1. d_*(y, y′) := the least cost of a d_*-contour from y to y′; extend to fine points by y(x) as in (2.46).
(i) d_* ≤ d, under every reading of (2.46) [P]. Take any admissible contour of (2.46). Its part in B^j(Λ_j) is a union of Λ_j bonds, and B^j(Λ_j) ⊂ K_j. Each such bond costs (L^jη)^{−1}·L^jη = 1 in (2.46). So the same contour is a d_*-contour of the same or lower cost.
(ii) d_* is a metric on 𝔅, and d_*(y, y′) ≥ 1 for y ≠ y′: concatenation, and every segment costs 1.
(iii) c_adj for d_* [P]. Let B(y′) (layer j) and B(y″) (layer j + 1) touch.
 - C(y′) ∩ C(y″) is a box with corners in T^{(j)} (nested grids). Let v be one of its corners. Then v is a vertex of C(y′). Path 1: y′ → v along edges of C(y′): ≤ d Λ_j bonds in K_j.
 - v lies on the boundary of C(y″): the open cells B(y′), B(y″) are disjoint. Let σ be the face of C(y″) (any dimension 0 to d − 1) whose relative interior contains v. Let C′ be the closed level-(j + 1) cell that contains B(y′). C′ is not in Ω_{j+1}, because Ω_{j+1} is a union of level-(j + 1) cells (CMP 96 (2.2)) and B(y′) ⊄ Ω_{j+1}.
 - σ ⊂ C′. Reason: the free coordinates of rel int σ run over open intervals of length L^{j+1}η with no point of T^{(j+1)} inside. So the set of level-(j + 1) cells whose closure contains a point of rel int σ is the same for all such points. C′ contains v, so C′ contains rel int σ and hence σ.
 - C′ ⊂ Ω_j \ Ω_{j+1}. Every point of C′ is within ℓ¹ distance dL^{j+1}η of B(y″) ⊂ Ω_{j+1}. CMP 96 (2.2) puts Ω_j^c at ℓ¹ distance > RML^jη from Ω_{j+1}. So RM > dL gives C′ ⊂ Ω_j. C′ is a union of layer-j cells, so C′ ⊂ K_j.
 - Path 2: from v inside σ along T^{(j)} lines to the nearest vertex z of σ. Per free coordinate this is ≤ ⌊L/2⌋ Λ_j bonds, and σ has ≤ d − 1 free coordinates. All bonds lie in σ ⊂ K_j.
 - Path 3: z is a vertex of C(y″), so z ∈ T^{(j+1)}. From z to y″ along edges of C(y″): ≤ d Λ_{j+1} bonds in K_{j+1}.
 - Total: d_*(y′, y″) ≤ 2d + (d − 1)⌊L/2⌋. The case (j − 1, j) is the same with the roles exchanged. The one-layer case gives ≤ 2d.
 So c_adj := 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2. The repair's number holds for d_*. Inputs: CMP 96 (2.2) with RM > dL [V], CMP 95 (1.6) [V], nested grids T^{(j+1)} ⊂ T^{(j)} [V (1.6) form].
(iv) What changes if the cut-off uses d_* [P]. Write d for the printed metric.
 - (c′), (S1), (S2) use only the triangle inequality and c_adj. Both hold for d_*.
 - (b′) needs decay on supp(1 − χ̃) ⊂ {d_*(b, y) > D/2 − c_adj}. (KE′) decays in d, and d ≥ d_* by (i). So C_He^{−δ_Hd(b,y)} ≤ C_He^{−δ_Hd(b,y)/2}e^{−δ_H(D/2 − c_adj)/2} there. The Schur sum keeps the printed e^{−δ_Hd/2}. Same c̃_tr.
 - (a′) needs d_*(b, y) < D⁺ ⇒ physical distance ≤ D⁺Lℓ_j + O(ℓ_j). A d_*-contour that reaches layer j + 2 from layer j must cross the band between Σ_{j+1} and Σ_{j+2}. That band has ℓ¹ width > RML^{j+1}η (CMP 96 (2.2)). Only Λ_{j+1} bonds have interior points in it, so the crossing costs > RM/d. Under (T1′), RM ≥ 4L²D⁺ > dD⁺ (for 4L² > d). So the contour stays in layers j − 1, j, j + 1, every segment has length ≤ Lℓ_j, and the bound follows. The finer side is the same argument.
 So form (G3-a) has no [I] step.

### 4.3 Form (G3-b): printed d in the cut-off
Then c_adj must bound the printed d. The Path-2 bonds lie on σ ⊂ Σ_{j+1}, and the Path-3 edges can lie on Σ_{j+1}. (2.46) does not say to which region a bond on Σ_{j+1} belongs. CMP 96 (2.3) [V p. 224] assigns a bond to Ω if at least one end-point is in Ω; read literally for B^j(Λ_j), this puts the crossing bond in two regions. Then no contour could cross an interface. So the printed text needs a reading:
 [I-Σ] a bond that lies on Σ_{j+1} counts in the finer region j (the reading that matches (2.47), where the portion between two surfaces lies in B^{min(j_l, j_{l+1})}(Λ_{min})).
Under [I-Σ], Paths 1–3 are admissible. A Λ_{j+1} edge on Σ_{j+1} then costs L (L Λ_j bonds), and a Λ_j edge on Σ_j costs L. So c_adj ≤ d(2L + 1). If a bond on Σ_{j+1} may count in either region, the bound 2d + (d − 1)⌊L/2⌋ holds. Grade of (G3-b): [P given I-Σ].
Recommendation: use (G3-a). It costs one definition and removes the reading.

## 5. Claims (a′), (b′), (d′), (e′) (repair §4)

5.1 (S1) supp χ̃_y ⊂ {d(b, y) < D + c_adj}. CONFIRMED: χ̃ > 0 needs an index with ψ_{y′}(b_−) > 0 and d(y′, y) < D, and (P4) adds c_adj.
5.2 (S2) d(b, y) ≤ D/2 − c_adj ⇒ χ̃_y(b) = 1. CONFIRMED: every index with ψ > 0 has d(y′, y) ≤ D/2, so χ = 1 on it, and Σψ = 1.
5.3 (a′) D → D⁺ in r_D, (T1′), (T2′). CONFIRMED. The old argument uses only the support radius. For d_* see §4.2(iv).
5.4 (b′) c̃_tr = c_tre^{δ_Hc_adj/2}. CONFIRMED. The near-term bound c_QMα_0 does not depend on the support radius: c_Q = c_Q(d, L) in SOURCES_QE_INV l. 38, 97–98, proved there with the growing radius RM/(4L²). So the larger support costs nothing in the first two brackets. The last bracket: e^{−δ_H(D/2 − c_adj − c_q)/2} = e^{δ_Hc_adj/2}·e^{−δ_H(D/2 − c_q)/2}. The repair keeps the old omission of Ad U(τ) noted by SOURCES_C_CONDITION_VERIFY; the entrywise bound is unchanged.
5.5 (d′) D̃_0 ≤ D_0 + 2c_adj. CONFIRMED: c̃_tre^{−δ_HD/4} = c_tre^{−δ_H(D − 2c_adj)/4}, so D = D_0 + 2c_adj satisfies the defining inequality.
5.6 c̃_T := 2L(D̃_0 + c_adj + 3(d + 1)) + 2 ≤ c_T + 6Lc_adj. CONFIRMED: 2L(D_0 + 3c_adj + 3(d + 1)) + 2 = c_T + 6Lc_adj.
5.7 (T1′) RM ≥ 4L²(D̃_0 + c_adj) ≤ 4L²(D_0 + 3c_adj). CONFIRMED. Add RM > 2dL (§2.1, §4.2). Both are lower bounds on M after N-180.
5.8 (e′) all new constants depend on (d, L) only. CONFIRMED. c_adj, c_ψ, N_ov, C_χ are explicit in d, L. c̃_tr, D̃_0, c̃_T, K̃^D use in addition C_H, δ_H, c_q, K_abs, α_Fc_1 at the cap, the same inputs as before.
5.9 Cost line "No new hypothesis, slot or edge". CORRECTED: one new explicit condition, RM > 2dL (G1 and §4.2). It is implied by R > 18dL (N-180) for every M ≥ 1. So no new slot and no new edge.

## 6. The 11 consumers (repair §5), checked against SOURCES_ORDER_CANON (incl. §H, l. 359–375)

Order facts used. c_T, D_0, c_tr, C_H, δ_H sit at N-060 (l. 103). c_− first appears at N-190 (l. 119). Its later users are N-200 (ε, K_F, K_W, thresholds; l. 120), N-230 (c̄_{−,1} = ½c_−; l. 123), Part A items 3–6 (k_3, ε_3, the 8/c_− bound), and the M_1 thresholds at N-270. No line before N-190 uses c_−. §H (l. 363) already carries a note that c_T, D_0 change under χ̃, with no slot change.

| # | consumer | grade | note |
|---|---|---|---|
| 1 | L-284 (d)–(e) | CONFIRMED | §5.5–5.8. |
| 2 | S2 step (S2_FORM 4.3) | CONFIRMED | Uses only pointwise bounds of χ̃E and ℓ∇(χ̃E); both now carry the uniform factor 1 + 3C_χ/D (§3.4). |
| 3 | H-057 (C) for G | CONFIRMED | c̃_− = 1/(4K̃^D) > 0, a (d, L) number at the Mα_0 cap. c̃_− ≤ c_− holds because C_χD_0 ≥ D_0 + 2c_adj ≥ D̃_0. |
| 4 | H-057 (C) for G_1 (L-039) | CONFIRMED | δ_1 = 4c_2(K_G + B_0²c_1²)Mα_0 has no K^D. Side note, not caused by the repair: canon N-230 still writes c_{−,1} in the old A1_KERNEL §9 form (C_{G1}), not the Lemma R form. |
| 5 | users of c_− > 0 | CONFIRMED | Every user listed above comes after N-190. A smaller c_− lowers ε, k_3, ε_3 and raises the M_1 thresholds and K_F, K_W. All are fixed after c_−. |
| 6 | canon N-060 | CONFIRMED, with a text gap | The line must gain c_adj, c_ψ, N_ov, C_χ, c̃_tr, D̃_0, c̃_T as (d, L) entries, and the condition RM > 2dL must be noted as implied by N-180. The §H note is only a note. No new edge. |
| 7 | canon N-310 (M ≥ c_T/22, (T1)) | CONFIRMED | M ≥ c̃_T/22 and RM ≥ 4L²(D̃_0 + c_adj) are lower bounds on M after N-180. Count stays 42. |
| 8 | (Vol) discharge, K-032 | CONFIRMED | Same argument: N_k ≥ ℓ > 22M ≥ c̃_T. |
| 9 | R-021 (d) | CONFIRMED | The reading "C_H, δ_H uniform for side ≥ c_T" covers any (d, L) threshold; grade [R] unchanged. |
| 10 | seam numerics | CONFIRMED | They test the printed-χ form at d = 2. They show that a side condition is needed; they do not test χ̃. Not re-run. |
| 11 | paper text | CORRECTED | Lines are paper/remains.tex l. 57, 113, 217 (not 112, 216); appendix l. 69, 295 and sources.tex l. 554–563 are right. Stale text: sources.tex l. 563 still says "Lemma R and L-284 (Lemma T) are verified" before the correction sentence, and ends with "M ≥ c_T(d, L)/22"; remains.tex l. 217 opens with "cut-off χ(d/D_0)". |

Consumers missing from the list (text only; none changes a proof):
- TRUST_LEDGER K-045 (l. 167): the row is named "cut-off χ(d/D_0)". The repair names K-045 only inside item 7.
- CLOSURE_PLAN.md l. 343: "Torus-side hypothesis DISCHARGED by Lemma T … M ≥ c_T/22".
- IDS.md l. 124 (K-045 description) and l. 1366 (homonym list: "cut-off χ(d/D_0)").
- TRUST_LEDGER R-001 (l. 41) and step 8 (l. 200): they list "the d-path metric" among the readings of H-057 (C). With (G3-a) that reading leaves the list.
Homonym, not a consumer: SOURCES_QE_KE_HQ l. 57 defines a different c_T(d) inside c_H. A grep for "c_T" hits it. It should get a different name before c_T is used across files.

"No consumer needs the old numbers 3/D_0 or c_T": CONFIRMED.

## 7. Grade list and what remains

| claim | grade |
|---|---|
| §0 diagnosis (printed d block-constant; step fails at faces) | CONFIRMED [V p. 231] |
| "y(x) = block centre" | CORRECTED: lower corner (CMP 95 (1.6)); no effect |
| G1 | CORRECTED: source CMP 96 (2.2) (ℓ¹), premise dist_∞ ≤ ℓ(y′) + η, needs RM > 2dL |
| G2 | CONFIRMED [V p. 224 (2.4)] |
| G3 (sketch, c_adj ≤ d(L + 5)/2) | CORRECTED: staircase not admissible; completed in §4.2 for d_* with c_adj ≤ 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2 [P]; for the printed d only under [I-Σ], c_adj ≤ d(2L + 1) |
| (P1), (P5) | CONFIRMED |
| (P2) N_ov = 3^{d+1} | CONFIRMED; reason CORRECTED (§2.4) |
| (P3) c_ψ | CONFIRMED (valid with slack; sharp factor 1 + N_ov) |
| (P4) | CONFIRMED given G3 |
| (c′) and C_χ | CONFIRMED |
| energy step, K_𝓔^D | CONFIRMED relative to the old proof |
| (S1), (S2), (a′), (b′), (d′), (e′) | CONFIRMED |
| "no new hypothesis" | CORRECTED: RM > 2dL, implied by N-180 |
| consumers 1–10 | CONFIRMED |
| consumer 11 | CORRECTED (line numbers, stale text) |
| completeness of the consumer list | CORRECTED: four text-only consumers missing (§6) |

Nothing is UNSUPPORTED.
What remains:
- The G3 contour of §4.2 is this verifier's own argument. It has one reader.
- The coordinator must choose (G3-a) (d_* in the cut-off, no reading) or (G3-b) (printed d, reading [I-Σ]). This file recommends (G3-a).
- Text fixes: canon N-060 entries; K-045, IDS, CLOSURE_PLAN, R-001 reading list; paper sources.tex l. 563 and remains.tex l. 217.

## 8. Report (≤ 120 words)

PASS WITH CORRECTIONS. The diagnosis is confirmed: the printed d of CMP 96 (2.46) is constant on each block. The partition of unity, (c′) with C_χ = N_ovc_ψc_adj, (S1), (S2), (a′), (b′), (d′) and (e′) are correct. Small corrections: G1 must cite CMP 96 (2.2) and needs RM > 2dL; the (P2) counting reason is fixed. G3 is CORRECTED: the repair's staircase breaks the Λ_j-bond rule at an interface. A new contour gives c_adj ≤ 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2 for a closure-bond metric d_* ≤ d. With d_* in the cut-off, no reading is needed. All 11 consumers survive. Item 11 has stale paper text, and four text-only consumers are missing from the list.
