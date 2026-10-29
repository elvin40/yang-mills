# SOURCES_LEMMA_T_G3_VERIFY — second reader of the G3 contour (SOURCES_LEMMA_T_REPAIR_VERIFY §4.2) (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5), independent second reader. Ids follow IDS.md. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were outside every grep. No existing file was edited. New files: this file and numerics/g3chk_dstar.py.
Pages rendered this session (pdftoppm -r 150, fresh /tmp folder, deleted after): CMP 96 p. 224 ((2.1)–(2.4), bond convention), p. 231 ((2.45)–(2.47)), p. 232 ((2.48)). CMP 96 p. 223 (ℓ¹ distance) read in the text layer only.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED. Tags: [V] read on a page image here; [P] proved here; [N] numerics here.

## Verdict: CONFIRMED, with one proof gap closed and one scope word corrected

The G3 contour of SOURCES_LEMMA_T_REPAIR_VERIFY §4.2 is correct. The bound c_adj ≤ 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2 for d_* holds. (a′) and (b′) hold with d_* in the cut-off. RM > 2dL follows from R > 18dL and M ≥ 1.
- Claim (i) "d_* ≤ d" is true, but its one-line proof is incomplete. The proof uses B^j(Λ_j) ⊂ K_j for sites. It needs the same fact for the bonds of an admissible contour. A fine bond that crosses an interface is not always in K_0. §1.2 closes the gap. Grade: CORRECTED (proof completed).
- "Under every reading" must read "under every reading that keeps the printed bond convention of CMP 96 p. 224". One reading breaks that convention and makes d degenerate (§1.3). Grade: CORRECTED (scope word).
- Side finding, outside the G3-a route: VERIFY §4.3 says that under the literal p. 224 convention "no contour could cross an interface". That is false (§1.4). It does not affect form (G3-a).
- Small cases [N]: d = 2, L = 3 and 5 (three layers), and d = 3, L = 3 (two layers). The worst d_* over all pairs that meet the G3 premise is ⌊L/2⌋ + 2 for d = 2 (3 and 4), and 5 for d = 3, L = 3. The bound gives 5, 6 and 8. No case exceeds the bound.
No consumer changes. The weakest correct bound is the stated one.

## 1. The definition of d_* and the claim d_* ≤ d

### 1.1 Page facts [V]
- CMP 96 p. 224 (2.2): Ω_j = B^j(Ω_j^{(j)}), Ω_j^{(j)} ⊂ T^{(j)}_{L^jη}, Ω_j is a union of big blocks, (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM. The distance is ℓ¹ (p. 223).
- p. 224, bond convention: a set Ω of sites also denotes the set of bonds "at least one end-point of b belongs to Ω".
- p. 224 (2.3)–(2.4): Λ_j = Ω_j^{(j)} \ Ω_{j+1}^{(j)}; the sets B^j(Λ_j) tile T (sites).
- p. 231 (2.46): d(y, y′) = inf Σ_j (L^jη)^{−1}|Γ_{y,y′} ∩ B^j(Λ_j)|. A contour is admissible if "a part of Γ contained in B^j(Λ_j) consists of bonds of the lattice Λ_j". |Γ| = nη, n = number of fine bonds.
- p. 231: "T^{(j)} ∩ Σ_j = Λ_j ∩ Σ_j"; Σ_j separates B^j(Λ_j) and B^{j−1}(Λ_{j−1}).
The definition of d_* in VERIFY §4.2 matches these facts: closed cells C(y) = y + [0, L^jη]^d with the lower-corner convention, K_r = the union of closed layer-r cells, each Λ_r bond in K_r costs 1. CONFIRMED.

### 1.2 Claim (i) d_* ≤ d. CORRECTED (proof completed) [P]
VERIFY's proof: "Its part in B^j(Λ_j) is a union of Λ_j bonds, and B^j(Λ_j) ⊂ K_j." The inclusion holds for sites. It fails for bonds under the p. 224 convention. Example (layer 1 = {x_1 ≤ −η}, layer 0 = {x_1 ≥ 0}, near a flat face): the fine bond [p, p + ηe_1] with p_1 = −η has one end-point in Λ_0. So it is a bond of B^0(Λ_0). Every closed unit cell that contains it has its corner at x_1 = −η, in layer 1. So it is not in K_0.
Completion. Read (2.46) literally: each fine bond of Γ is charged once for each region whose bond set contains it, and for each j the fine bonds of Γ in the bond set of B^j(Λ_j) form a union of whole Λ_j bonds.
- (a) Every fine bond of Γ is charged in at least one region: the sites tile T, and a bond belongs to the region of each of its end-points.
- (b) Let S = [a, a + L^rηe_μ], r ≥ 1, be a Λ_r bond of the decomposition. For L ≥ 2, S has interior fine points a + kηe_μ, 1 ≤ k < L^r. They lie in the half-open level-r cell with corner a. Region r is a union of level-r cells. If that cell is not in region r, the first fine bond of S has no end-point in region r. That contradicts the decomposition. So the cell is in region r, a ∈ Λ_r, and S ⊂ C(a) ⊂ K_r.
- (c) A fine bond of Γ that lies only in the bond set of B^0(Λ_0) has both end-points in Λ_0. So it lies in C(p) ⊂ K_0 for its lower end-point p.
- (d) A fine bond with end-points in two regions r < r′ (r′ = r + 1 by (2.2)) is in the bond set of region r′ ≥ 1. So by (b) it lies inside a Λ_{r′} bond of Γ that lies in K_{r′}.
- (e) Select the Λ_r bonds of (b) and the fine bonds of (c). They cover Γ, each lies in K_r, and their number is at most the (2.46) cost (each Λ_r bond costs exactly 1 there, and double charges only raise the (2.46) cost).
- (f) The selected segments form a d_*-contour. Γ cannot leave a Λ_r bond S (r ≥ 1) at an interior point q. A fine bond of Γ at q in another direction has the end-point q in region r. So it must lie in a Λ_r bond through q in that direction. No such bond exists, because q is off the level-r grid in coordinate μ. So Γ passes from one selected segment to the next only at their end-points.
Hence d_* ≤ d under the printed convention. Under the bond-level reading (a contour is a chain of whole Λ_r bonds, each in the closure of region r) the inequality is immediate. Under the reading [I-Σ] of VERIFY §4.3 (a bond on Σ_{j+1} counts in region j), a Λ_j bond on Σ_{j+1} lies in the closed set K_j, and a Λ_{j+1} bond there costs L in (2.46) but only 1 in d_*. So d_* ≤ d holds there too.

### 1.3 "Under every reading". CORRECTED (scope)
A reading that puts a crossing fine bond into no region (both end-points required) contradicts the p. 224 convention. It also gives d(y, y − ηe_1) = 0 for y ∈ Λ_1 on the lower face of Ω_1 and y − ηe_1 ∈ Λ_0: the one crossing bond is free, and the admissibility rule is empty. Then d is not a metric. So that reading is excluded, and the claim should say "every reading consistent with CMP 96 p. 224". This changes no use of (i).

### 1.4 Side finding on VERIFY §4.3 (form G3-b only). CORRECTED
VERIFY §4.3 says that the literal p. 224 convention "puts the crossing bond in two regions. Then no contour could cross an interface." That is false. Take a ∈ Λ_1 with a + Lηe_μ ∈ Λ_0 (an upper face of a layer-1 cell). The Λ_1 bond S = [a, a + Lηe_μ] has every fine bond in the bond set of region 1, so it is a whole Λ_1 bond there. Its last fine bond is also in the bond set of region 0, and it is a Λ_0 bond. Both rules hold. The (2.46) cost of S is 1 + 1 = 2. Crossing fails only at lower faces (the fine bond [y − ηe_μ, y], y ∈ Λ_1, lies in no whole Λ_1 bond of region 1). This affects only the discussion of the printed d. Form (G3-a) does not use it.

### 1.5 (ii) metric, d_* ≥ 1 for distinct points. CONFIRMED
Concatenation gives the triangle inequality. Each segment costs 1. Finiteness follows from the G3 paths between touching cells.

## 2. The contour construction and the count

### 2.1 Reduction to touching cells. CONFIRMED [P]
Two half-open cells whose closures are disjoint are separated in some coordinate by a gap ≥ ℓ_min between grid points. Their fine sites are then ≥ ℓ_min + η apart. The premise used in (c′) is dist_∞(x, B(y′)) < ℓ(y′)/(2L) + η with x ∈ B(y″). This is < ℓ_min + η in both orders of the layers (ℓ″/2 + η or less), and at ℓ = η it means distance ≤ η. G1 (with RM > 2dL) keeps the layers equal or adjacent.

### 2.2 Steps of VERIFY §4.2(iii). Let B(y′) be in layer j and B(y″) in layer j + 1, with closures that meet.
- C(y′) ∩ C(y″) is a box with corners in T^{(j)}, and each corner v is a vertex of C(y′). CONFIRMED. Per coordinate, [a, a + ℓ_j] ∩ [b, b + ℓ_{j+1}] with a ∈ ℓ_jℤ, b ∈ ℓ_{j+1}ℤ ⊂ ℓ_jℤ is either all of [a, a + ℓ_j] or one end-point of it.
- Path 1, y′ → v, ≤ d Λ_j edges of C(y′) ⊂ K_j. CONFIRMED.
- v lies on ∂C(y″). CONFIRMED: v is a vertex of C(y′), so every neighbourhood of v meets the open cell of y′, and the two open cells are disjoint.
- C′ (the closed level-(j + 1) cell that contains B(y′)) is not in Ω_{j+1}. CONFIRMED: Ω_{j+1} is a union of half-open level-(j + 1) cells (big blocks are unions of them).
- σ ⊂ C′. CONFIRMED. A closed level-(j + 1) cell contains a free coordinate value t ∈ (b, b + ℓ_{j+1}) only if its corner coordinate is b. It contains a fixed grid value only if its corner coordinate is that value or that value minus ℓ_{j+1}. These conditions do not depend on the point of rel int σ. C′ contains v, so C′ contains rel int σ, and C′ is closed.
- "C′ ⊂ Ω_j \ Ω_{j+1}". CORRECTED (wording). The closed cell C′ contains σ, and σ can lie in Ω_{j+1} (a lower face of C(y″) belongs to B(y″)). The correct statement is for the half-open cell B′ with closure C′. Every site of B′ is within ℓ¹ distance d(ℓ_{j+1} − η) + dη = dLℓ_j of a site of B(y″). So RM ≥ dL puts B′ in Ω_j, and B′ ∩ Ω_{j+1} = ∅ by the previous step. So B′ is a union of half-open layer-j cells, and C′ = cl B′ ⊂ K_j. The conclusion used (σ ⊂ K_j) holds.
- Path 2, v → z inside σ along T^{(j)} lines, ≤ ⌊L/2⌋ steps per free coordinate, ≤ d − 1 free coordinates. CONFIRMED: a free coordinate of v is b + mℓ_j with 1 ≤ m ≤ L − 1; the nearer end is min(m, L − m) ≤ ⌊L/2⌋ steps away. σ is a proper face, so it has at most d − 1 free coordinates.
- Path 3, z → y″, ≤ d Λ_{j+1} edges of C(y″) ⊂ K_{j+1}. CONFIRMED.
- Total ≤ 2d + (d − 1)⌊L/2⌋; one-layer case ≤ 2d; the case (j + 1, j) by symmetry of d_*. CONFIRMED.
- 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2. CONFIRMED: it is equivalent to −L ≤ d after ⌊L/2⌋ ≤ L/2.

### 2.3 Small cases [N]
Script: numerics/g3chk_dstar.py (args d, L, number of levels, number of seeds). It builds random configurations with M = 1, R = 2dL + 1 (the least R with RM > 2dL): Ω_top is a random union of top-level cells; each lower Ω_j contains every level-j cell within ℓ¹ distance (R + d)ℓ_j of Ω_{j+1}, plus random extra cells. It checks (2.2) on the result. It builds the d_* graph (every Λ_r bond that lies in a closed layer-r cell, weight 1) and runs a breadth-first search from every block near an interface. It records d_* for every pair that meets the G3 premise (dist_∞ < ℓ(y′)/(2L) + η) and every touching pair.

| d | L | layers | seeds | worst d_* (premise = touching) | per layer pair | bound 2d + (d − 1)⌊L/2⌋ | d(L + 5)/2 |
|---|---|---|---|---|---|---|---|
| 2 | 3 | 0, 1, 2 | 20 | 3 | (0,0) 2, (0,1) 3, (1,1) 2, (1,2) 3, (2,2) 2 | 5 | 8 |
| 2 | 5 | 0, 1, 2 | 10 | 4 | (0,0) 2, (0,1) 4, (1,1) 2, (1,2) 4, (2,2) 2 | 6 | 10 |
| 3 | 3 | 0, 1 | 3 | 5 | — | 8 | 12 |

Worst pair, d = 2, L = 5: the layer-0 site (79, 263) and the layer-1 cell with corner (80, 260). The path is one fine bond to (80, 263), two fine bonds on the face to (80, 265), and one Λ_1 bond to (80, 260): 4 = 1 + ⌊L/2⌋ + 1. This is the Path 1–2–3 shape with a short Path 1. Run time is under one minute per row on the Mac.

## 3. (a′) and (b′) with d_* in the cut-off. CONFIRMED [P]
- (S1), (S2), (c′) use only the triangle inequality and c_adj for the cut-off metric. Both hold for d_* (§1.5, §2).
- (b′). SOURCES_C_CONDITION 4.3(b) bounds the entry by Σ_b q(y′, b)|E(b, y)|1{b ∈ supp(1 − χ̃_y)}, with q(y′, ·) inside printed d-distance c_q of y′. With d_*: supp(1 − χ̃_y) ⊂ {d_*(b, y) > D/2 − c_adj}. Use |E(b, y)| ≤ C_He^{−δ_Hd(b,y)} = C_He^{−δ_Hd/2}e^{−δ_Hd/2} and d(b, y) ≥ d_*(b, y) (§1.2). Then the entry is ≤ C_He^{−δ_H(d(y, y′) − c_q)/2}e^{−δ_H(D/2 − c_adj)/2}. The Schur sum keeps the printed rate. c̃_tr = c_tre^{δ_Hc_adj/2} is unchanged.
- (a′). On supp χ̃_y, d_*(b, y) < D⁺. A d_*-contour from layer j to layer j + 2 must pass from cl(Ω_{j+1}^c) to cl(Ω_{j+2}). Segments of K_r with r ≤ j lie in the first set; segments with r ≥ j + 2 lie in the second. Let f be the ℓ¹ distance to Ω_{j+2}. f is ≥ RMℓ_{j+1} − O(dη) on the first set and ≤ dη on the second. Each Λ_{j+1} segment changes f by ≤ ℓ_{j+1}. So the crossing costs ≥ RM − 1, which is > D⁺ under (T1′) RM ≥ 4L²D⁺. VERIFY writes "> RM/d"; that is weaker and also enough. So the contour uses segments of length ≤ Lℓ_j only, and the physical distance is ≤ D⁺Lℓ_j + O(ℓ_j). The rest of the old argument uses only this radius.

## 4. RM > 2dL from R > 18dL (canon N-180). CONFIRMED
N-180 fixes R > 18dL. M = L^m ≥ 1 (N-310). So RM > 18dL > 2dL. The same holds for RM ≥ dL, used in §2.2. No new slot and no new edge.

## 5. Grades

| claim (SOURCES_LEMMA_T_REPAIR_VERIFY §4.2) | grade |
|---|---|
| definition of d_* | CONFIRMED |
| (i) d_* ≤ d | CORRECTED: true; proof gap for crossing bonds closed (§1.2) |
| "under every reading of (2.46)" | CORRECTED: every reading consistent with the p. 224 bond convention (§1.3) |
| (ii) metric, d_* ≥ 1 | CONFIRMED |
| reduction to touching cells | CONFIRMED |
| Paths 1, 2, 3 and σ ⊂ C′ | CONFIRMED |
| "C′ ⊂ Ω_j \ Ω_{j+1}" | CORRECTED: holds for the half-open cell B′; conclusion C′ ⊂ K_j unchanged |
| c_adj ≤ 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2 | CONFIRMED [P], consistent with [N] for d = 2, L = 3, 5 and d = 3, L = 3 |
| (a′), (b′) with d_* | CONFIRMED |
| RM > 2dL implied by N-180 | CONFIRMED |
| VERIFY §4.3 "no contour could cross an interface" (G3-b only) | CORRECTED: false; crossing works through upper faces (§1.4) |

Nothing is UNSUPPORTED. The weakest correct bound is the stated one, c_adj ≤ 2d + (d − 1)⌊L/2⌋. Every consumer in SOURCES_LEMMA_T_REPAIR_VERIFY §6 survives unchanged, because no constant changes.

## 6. Report (≤ 100 words)

CONFIRMED. The G3 contour is correct: c_adj ≤ 2d + (d − 1)⌊L/2⌋ ≤ d(L + 5)/2 for the closure-bond metric d_*. Every path step checks against CMP 96 (2.2), (2.46) and p. 224. Two corrections, no effect on any number: the proof of d_* ≤ d skipped bonds that cross an interface (closed here), and "every reading" must mean readings that keep the p. 224 bond convention. (a′), (b′) hold with d_*. RM > 2dL follows from R > 18dL. Enumeration (d = 2, L = 3, 5; d = 3, L = 3) gives worst d_* = 3, 4, 5, below the bound. All consumers survive.

README replacement sentence for the Lemma T line:
"A repaired form (c′), with a closure-bond metric d_* ≤ d in the cut-off and c_adj ≤ 2d + (d − 1)⌊L/2⌋, is verified by two independent readers, with small corrections that change no constant (notes/SOURCES_LEMMA_T_REPAIR.md, _VERIFY.md, SOURCES_LEMMA_T_G3_VERIFY.md)."
