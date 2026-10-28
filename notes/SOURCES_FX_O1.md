IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_FX_O1 — reverse scaling inequality for tree length (gap O1(b))

Status: done (2026-10-27). O1(b) proved (elementary lemma, §2–§4); residual page checks R1–R3 in §6.

## 1. Definitions, transcribed [V unless marked]

1.1 d_j(X), CMP 109 p. 257 (text layer lines 414–442, clean) [V].
- Scale j: the continuous space T, "scaled properly, so that it corresponds to the lattice T_ξ, ξ = L^{−j}". So the scale-j lattice spacing is 1.
- π_j = closed cubes of side M = L^m, centered at points of T^{(j+m)}.
- Localization domain X ∈ D_j: union of a finite family of π_j-cubes, connected through common walls ((d−1)-faces).
- d_j(X): "Consider a class of tree graphs contained in X and intersecting all the cubes in X. A length of a shortest graph in this class, divided by M, is the linear size of X." Graphs are in the continuous space. One may restrict to trees formed by cube edges.
- So d_j(X) = (min length of a tree T ⊂ X meeting every π_j-cube of X)/M. A single cube has d_j = 0.

1.2 d′_j(X), CMP 122 II p. 380 [V, text layer line 1278, matches SOURCES_FX §5 image quote].
- "d′_j is the linear size defined in terms of MR_j-cubes instead of M-cubes." So d′_j(X) = (min length of a tree T ⊂ X meeting every MR_j-cube of X)/(MR_j), in the scale-j (L^{−j}) units.

1.3 "(6.31) [I]" does not exist. [V] CMP 122 II p. 384 cites "the scaling property (6.31) [I]", and its reference list gives [I] = CMP 109. CMP 109 has only §0–§5 (contents, text layer lines 28–35); no equation (6.31) appears in any of the 12 text layers in balaban/. The scaling inequality used is the forward one, CMP 116 (1.31) "fundamental scaling inequality" [V, garbled formula]. So the citation is a misprint or refers to an unpublished draft. [inference] This does not matter here: the definition in 1.1–1.2 is enough for the lemma below.

1.4 The operation S, CMP 122 II p. 384, page image [V]:
"If Z is a union of MR_j-cubes of the lattice T_ξ, ξ = L^{−j}, then we take the cover Z′ of Z by a smallest union of LMR_{j+1}-cubes, and we add ten layers of such cubes. We denote the obtained domain by S(Z), i.e., S(Z) = Z′^{∼10}. Such a domain arises as a new large field region in our procedure, if no large fields are created in a neighborhood of Z, more precisely in S(Z)\Z."
- An LMR_{j+1}-cube in scale-j units is an MR_{j+1}-cube in scale-(j+1) units. Write ρ_j := L R_{j+1}/R_j for the side ratio coarse/fine.
- S(Z) contains at least 21^d coarse cubes (one cube plus ten layers on each side).

1.5 (1.80), page image [V]: κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)), where K = K(Z) ≥ 1 is the smallest positive integer with S^K(Z) satisfying (i), (ii) at scale L^{−(j+K)} with N = R_j.

1.6 Balaban's own volume-vs-length step, p. 384 image [V]: d′_n(S^{n−j}(Z)) ≤ (63)^d(MR_n)^{−d}|Z^{(n−j)}| ≤ (63)^d 3·2^{d−1} d′_n(Z^{(n−j)}) "if the linear size on the right-hand side is different from 0". So Balaban himself uses "volume in cube units ≤ 3·2^{d−1} × linear size" for d′ ≠ 0. The lemma below uses the same two facts in the reverse direction.

1.7 Not read: CMP 122 I §1 text on the 100MR_k diameter rule and admissible sequences. Not needed: the lemma uses only 1.1, 1.2, and 1.4.

## 2. The reverse scaling lemma [P = proved here]

Setting. Fix scale j. Fine cubes: MR_j-cubes, side a = MR_j (scale-j units). Coarse cubes: LMR_{j+1}-cubes, side b = ρa, ρ = ρ_j ≥ 1. Y = a union of n_f fine cubes, connected in the sense that any two cubes are joined by a chain of cubes in Y, consecutive cubes sharing at least one point (this covers wall-connected domains). Y′ = smallest union of coarse cubes covering Y; S(Y) = Y′^{∼10}; N = number of coarse cubes in S(Y).

Fact A (length bounds count, upper side). d′_j(Y) ≤ √d (n_f − 1).
Proof. Take a spanning tree of the adjacency graph of the fine cubes. For each edge (□, □′), join the two centers through a common point p of the two closed cubes: segment center(□)→p→center(□′). Each half lies in one convex cube, so the path lies in Y, with length ≤ 2·(√d/2)a = √d a. The union is a connected graph in Y through every center; a spanning subtree has length ≤ √d a(n_f − 1). Divide by a. ∎

Fact B (count bounds length, lower side). If T is a connected set of length ℓ (in units of cube side s), T meets at most 4^d(1 + 2ℓ) closed cubes of a side-s grid.
Proof (units s = 1). Take a maximal 1-separated set P ⊂ T. The open balls B(p, ½), p ∈ P, are disjoint. If |P| ≥ 2, T leaves each such ball, and T is connected, so T ∩ B(p, ½) contains an arc from p to the sphere, of length ≥ ½. Hence |P|/2 ≤ ℓ, so |P| ≤ max(1, 2ℓ). By maximality T ⊂ ∪_{p∈P} B̄(p, 1). A closed ball of radius 1 lies in a box of side 2, which meets at most 4^d closed unit grid cubes (at most 4 closed unit intervals per coordinate). ∎

Fact C (count of fine in coarse). n_f ≤ (ρ + 2)^d N(Y′) ≤ (ρ + 2)^d N. If the fine grid refines the coarse grid (ρ integer, aligned), n_f ≤ ρ^d N(Y′).
Proof. Every fine cube of Y meets some coarse cube of Y′. A coarse cube (side ρa) meets at most (ρ + 2)^d fine cubes of the side-a grid. Aligned case: each fine cube lies in exactly one coarse cube, which contains ρ^d fine cubes. ∎ [Alignment is plausible from the lattice conventions but not checked on a page image; the lemma states both versions.]

LEMMA O1-R (reverse scaling, multiplicative form). With c_* := [3·4^d √d (ρ + 2)^d]^{−1} (aligned case: ρ^d in place of (ρ + 2)^d),
    d′_{j+1}(S(Y)) ≥ c_* d′_j(Y).
No additive constant.
Proof. Let T ⊂ S(Y) be a shortest tree for d′_{j+1}(S(Y)) =: ℓ. T meets all N coarse cubes, so Fact B gives N ≤ 4^d(1 + 2ℓ). S(Y) has N ≥ 21^d cubes, so 1 ≤ (4/21)^d N, and N(1 − (4/21)^d) ≤ 2·4^dℓ. Since (4/21)^d ≤ 4/21 < 1/3, N ≤ 3·4^dℓ. With Facts A and C: d′_j(Y) ≤ √d n_f ≤ √d(ρ + 2)^d N ≤ 3·4^d√d(ρ + 2)^d ℓ. ∎

Remark 1 (why not the factor 1/L of the brief). The brief proposed d′_{j+1}(S(Y)) ≥ L^{−1}d′_j(Y) − C′N. That form is also true (it follows from O1-R, since L^{−1}d′_j(Y) ≤ √d(ρ+2)^dL^{−1}N), but its additive term is proportional to volume. The factor ρ^{−d} in O1-R is sharp up to constants: let Y be a snake of fine cubes filling one coarse cube. Then d′_j(Y) ≈ ρ^d, while d′_{j+1}(S(Y)) ≈ 21^d·O(1) is fixed. So "factor ~1/L, constant additive term" is FALSE. Only "factor ρ^{−d}, no additive term" or "factor 1/L, additive term ∝ volume" are true.

Remark 2 (the brief's absorption step is false as stated). The brief proposed to absorb the volume term by "each coarse cube of S(Y) contains a large-field cube paying exp(−p_0)". This fails: by 1.4, S(Y)\Y is exactly a region where no large fields are created. The ten halo layers carry no large-field factor. O1-R avoids the issue; no absorption is needed for the S-step.

## 3. Stronger form, and conversion to M-cube units [P]

The proof of O1-R gives more than O1-R. It bounds d′_{j+1}(S(Y)) below by the fine-cube COUNT, not only by d′_j(Y):

LEMMA O1-R′. d′_{j+1}(S(Y)) ≥ N/(3·4^d) ≥ n_f / (3·4^d(ρ + 2)^d).
(First inequality: the proof of O1-R. Second: Fact C.)

Conversion to d_j (M-cube units, the units of the final cluster expansion and of Balaban's "−κ_1d_k(X)"). Assume each MR_j-cube is a union of R_j^d π_j-cubes (R_j integer, aligned grids; [not checked on an image]). Y then has R_j^d n_f M-cubes, and Fact A at side M gives d_j(Y) ≤ √d R_j^d n_f. So

    d′_{j+1}(S(Y)) ≥ d_j(Y) / (3√d·4^d(ρ_j + 2)^d R_j^d).        (O1-M)

Again no additive constant. This matters: a single MR_j-cube has d′_j = 0 but d_j ≈ √d R_j, so any route through d′_j(Y) alone needs an additive constant, which must then be paid by p_0. Route (O1-M) does not.

## 4. Tree decay at the last scale (the author's O1) [P, given (1.80) as printed]

Let Y be a component of Z_K at the final scale K that does not satisfy (i), (ii). Then K(Y) ≥ 1 in (1.80) (SOURCES_FX_VERIFY V7(a)), and (1.80) at j = K holds for Y (proved for every component, (1.83), (1.85)–(1.88)). Drop all terms n ≥ K+2 (they are ≥ 0). Keep n = K+1 and apply (O1-M):

    κ_K(Y) ≥ C_1 M^d R_{K+1}^{d+1} d′_{K+1}(S(Y)) ≥ κ_fin d_K(Y),
    κ_fin := C_1 M^d R_{K+1}^{d+1} / (3√d·4^d(ρ_K + 2)^d R_K^d),

where C_1 > 0 is the O(1) of (1.80). Then Balaban's factor for Y obeys

    exp(−κ_K(Y) − 2p_0(g_{j(Y)})) ≤ exp(−κ_fin d_K(Y) − 2p_0(g_{j(Y)})).

The full 2p_0(g_{j(Y)}) stays available as the small activity factor. The S-grown halo is never asked to pay anything.

Condition. κ_fin ≥ κ_final, the decay rate the final polymer expansion needs (CMP 116 (2.38) / Dimock III Thm 2; e.g. (1+2β)κ). Two ways to meet it:
- (a) M large after L: κ_fin = C_1 M^d R_{K+1}^{d+1}R_K^{−d}(3√d·4^d)^{−1}(ρ_K+2)^{−d}, with ρ_K = LR_{K+1}/R_K. For R_{K+1} = R_K this is C_1 M^d R_K (3√d·4^d(L+2)^d)^{−1}; ≥ κ_final once M ≥ 4(L+2)(3√d·κ_final/C_1)^{1/d}. Balaban chooses M "much bigger than the previously fixed scales" (CMP 109 p. 257) [V]; whether κ_final is fixed before M is NOT checked.
- (b) Raise C_1. The O(1) in (1.80) is a lower-bound claim; replacing it by any larger C_1 keeps the induction closed, at the cost of the conditions (1.82) and (1.88) becoming p_0² ≳ C_1 M^dL^{d+1}R^{d+2} and p_0 ≳ C_1 M^dR^{d+2}. In the no-new-large-field step (1.83) the surplus (C_1 − O(1))M^dR^{d+1}d′ is simply dropped. [P by inspection of the V2 transcription of (1.81)–(1.88); not re-derived on the images.] Route (b) needs no ordering of M versus κ.

Renormalizable components (K(Y) = 0, conditions (i), (ii) hold). The (1.80) sum is empty, κ_K(Y) ≥ 0, and the decay comes from smallness: diam Y ≤ 100MR_K gives d_K(Y) ≤ √d(100R_K)^d·O(1), and exp(−2(1+β_0)^{−1}p_0) ≤ exp(−p_0 − κ_final d_K(Y)) once (1−β_0)(1+β_0)^{−1}p_0(g_K) ≥ κ_final√d(100R_K)^dO(1). This is the condition after (1.94) (p_0 ≥ 8κ(100R_k)^d + 4) up to the O(1). [P]

Is anything else in (1.80) needed? No. Only the first term n = K+1 is used. The other terms, the exact range n ≤ K+K(Y), and the forward scaling bound (1.81) are not used. What IS used from (1.80): (α) it holds at j = K for every final component, including non-renormalizable ones, and (β) its coefficient C_1 is positive and either fixed with M large, or adjustable as in (b). Both are on the images (V7(a)) except the adjustability, which is an inference.

## 5. Check of Balaban's p. 387 assertion [P]

Quote (SOURCES_FX_VERIFY V2, from the image): "The inequality (1.80) holds quite generally for such regions, hence also an improved bound (1.89), with the additional term −κ_1d_k(X) in the exponential."
Reading: for an arbitrary large-field component X at scale k, T′_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k) − κ_1d_k(X)).
Check against §4:
- Non-renormalizable X: §4 gives exp(−κ_k(X) − 2p_0(g_{j(X)})) ≤ exp(−κ_fin d_k(X) − 2p_0(g_{j(X)})). This is the asserted form with κ_1 = κ_fin, if also p_0(g_{j(X)}) ≥ (1+β_0)^{−1}p_0(g_k). That holds if p_0(g_j) is non-increasing in j (g_j non-decreasing toward coarse scales). [R: monotonicity of p_0(g_j) in j not checked on a page; it is the natural reading of asymptotic freedom in Balaban's setup.]
- Renormalizable X: §4 last paragraph, from p_0 smallness.
Verdict: the assertion is CORRECT, and the missing computation is short: one n = K+1 term of (1.80) plus the elementary Lemma O1-R′ / (O1-M). Balaban's word "hence" hides exactly this step. The constant κ_1 is κ_fin of §4 (with K → k), i.e. C_1M^dR_{k+1}^{d+1}/(3√d·4^d(ρ_k+2)^dR_k^d); it is large under (a) or (b).

## 6. Ledger
- [V] d_j: CMP 109 p. 257 text layer (clean). d′_j: CMP 122 II p. 380 text layer + FX §5 image quote. S: CMP 122 II p. 384 image. (1.80): p. 384 image. p. 387 sentence: VERIFY V2 image transcription (not re-rendered here).
- [V] "(6.31) [I]" points to no equation: CMP 109 has §0–§5 only. Misprint or lost reference. Not load-bearing.
- [P] Facts A, B, C; Lemma O1-R (d′_{j+1}(S(Y)) ≥ c_* d′_j(Y), c_* = [3·4^d√d(ρ+2)^d]^{−1}); O1-R′; (O1-M). Elementary; proofs in §2–§3. Uses only N(S(Y)) ≥ 21^d (ten layers).
- [P] The brief's form "factor 1/L, constant additive term" is FALSE (snake example, Remark 1). The brief's absorption "each coarse cube of S(Y) has a large-field cube" is FALSE (the halo S(Y)\Y has none by definition, Remark 2). Neither is needed.
- [P] O1 closed modulo: (R1) grid alignment MR_j-cubes ⊂ LMR_{j+1}-cubes and M-cubes ⊂ MR_j-cubes (only changes constants: (ρ+2)^d vs ρ^d; without alignment the M-cube count gets (R_j+2)^d); (R2) κ_fin ≥ κ_final via (a) M large or (b) C_1 enlarged (inference from V2's transcription of (1.81)–(1.88)); (R3) p_0(g_j) non-increasing in j, for the p.387 form only. None is a new idea; each is a page check.
- Not used: CMP 122 I §1 (100MR_k rule, admissible sequences). The lemma is independent of how components are built, beyond S as defined on p. 384 and the fact that Y is a connected union of MR_K-cubes.
- Not checked: Dimock III Lemma 16 for the tree length of the final polymer U (SOURCES_FX §6.1 relies on it); O2, O3 untouched.
