# SOURCES_FX_O1 — reverse scaling inequality for tree length (gap O1(b))

Status: in progress (2026-10-27). One section per step.

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
