# THM37_FULL independent verification (2026-10-28)

Scope: THM37_FULL.md §1–§9. Firewall respected (no sa_repo, SA map, ONLINE_SWEEP).

## V1. Page images: CMP 99 pp. 408–409, CMP 96 pp. 229 (text), 233–234

- p. 409: (3.87), (3.88), (3.89), Thm 3.7 statement match THM37 §1.4–1.6 verbatim. CONFIRMED.
- CMP 96 p. 233: (2.59) reads "¼αδ_0RM > 2d log c_0(½α) + 1". CONFIRMED (claim 4). c_0(α) < 4/(αδ_0) and c_1(α) = 12c_0^d(½α) also match.
- CMP 96 p. 234: Lemma 2.1 (2.60)–(2.63), (2.65)–(2.67), Prop. 2.2 match §2.2 verbatim. Side note (not in THM37): Balaban's own α = ½ rewrite "δ_0RM > 16d log c_0 + 1" should read "+ 8"; not load-bearing.
- p. 408 printed 𝒟_j: "cubes □, with centers at points of this lattice [ML^jηZ^d], which are unions of 2^d big blocks, with at least one of them contained in B^j(Λ_j)". There is NO printed condition □ ⊂ B^j ∪ B^{j+1}. CMP 96 p. 229: cubes cover B^j(Λ_j) "with a center y ∈ Λ_j (more exactly it belongs to the boundary of this set also)". So the printed coarse cubes of 𝒟_{j+1} CAN cross Σ_{j+1} into B^j by up to Mξ_{j+1}. THM37 (H-PU)(a) adds the non-crossing condition from the (3.35) class. This changes the reading of claim (2); see V3.
- p. 408 says "The family 𝒟 is a partition of the lattice T" although the cubes overlap; it is a cover.
