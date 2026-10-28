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
