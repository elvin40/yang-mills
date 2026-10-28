# THM37_FULL — paper-grade write-out of CMP 99 Theorem 3.7 and Corollary 3.8 (walk expansion of G′)

Date: 2026-10-28. CLOSURE_PLAN top-5 item 2 (first of three); Table 1 row R3, with R36 (M_1 version) and R7 (complex form) for this operator.
Status: IN PROGRESS. Written one section at a time.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [R-full] printed with full proof; [R-sketch] printed sketch or proof by reference; [V] read on the page image in this session; [P] proved in this file or in a project file named; [I] reading not proved.

## Plan
- §1 Statements of CMP 99 Thm 3.7 and Cor. 3.8 as printed (pp. 409–410), with the printed setting (3.87)–(3.89).
- §2 The cited templates: CMP 95 Prop. 1.2 and CMP 96 Prop. 2.2 quoted with hypotheses; CMP 96 (2.82), (2.84), random-walk representation.
- §3 Setting and hypotheses for the write-out: cover 𝒟, partition of unity, local operators G′_□, the bound (3.42) used.
- §4 Proof, step 1: the parametrix identity Δ′_a G′_0 = I − R′ (3.88) and the one-step bound (3.89), every constant tracked.
- §5 Proof, step 2: Neumann series, walk terms, per-walk bound (3.91)–(3.94), counting and convergence (Schur constant Σ, Lemma 2.1).
- §6 Proof, step 3: G′ = G′_0(I − R′)^{−1} is the inverse (finite volume), all norms of (3.42)–(3.47), Cor. 3.8 (derivatives).
- §7 M_1 version (R36): walk cubes of size M_1; per-step factor; how the constants change.
- §8 Complex form (R7): U in the complex domain of the regular class; shrunken radius; rate (1 − θ)δ.
- §9 Ledger of inputs with IDs; steps sharper than Balaban.

## 1. The printed statements [V: CMP 99 pp. 394–398, 408–410, page images read 2026-10-28]

1.1 The operator. CMP 99 p. 394 [V]: "Let us introduce the operator Δ′_a = Δ′_a(U) = (Δ^η_U + Q′*aQ′)↾Ω_0", with ⟨λ, Q′*aQ′λ⟩ = Σ_{j=0}^k a_j Σ_{y∈Λ_j} (L^jη)^{d−2}|(Q′_j(U)λ)(y)|² (3.24), a_{j+1} = aa_j/(aL^{−2} + a_j), a_1 = a_0 = a > 0. Dirichlet conditions: Δ′_a↾Ω_0 = Ω_0Δ′_aΩ_0. "Its inverse is denoted by G′, or G′(U)." Here Δ^η_U = D^{η*}_U D^η_U (3.23) is the covariant Laplacian on g-valued functions λ on points. So G′ is the scalar (ghost-type) propagator that carries the averaging constraint through the term Q′*aQ′. The "averaging constraint" in the caller's brief is this Q′*aQ′ term, not a hard constraint.

1.2 Regularity (3.35) [V p. 396]. For every cube □ of the class (□ ⊂ B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}), □ ∩ B^j(Λ_j) ≠ ∅, □ a union of big blocks of T_{L^{−j}}, size O(1)ML^jη with O(1) ≥ 10) there is a gauge transformation u on □ with U^u = e^{iηA} and
 |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2} on □. (3.35)
(3.36) adds |∂^{η*}∂^ηA| < O(1)Mα_0(L^jη)^{−3}. p. 396 [V]: "For the operators introduced until now we need only the condition (3.35)". G′ is one of these operators; Thm 3.7 assumes (3.35) only.

1.3 Theorem 3.1 [V p. 397–398], the bounds that Thm 3.7 delivers. "There exist positive constants M_1, δ_0, a_0, B_0 dependent on d and L only, a constant B_0(β) dependent on d, L and β, 0 ≤ β < 1 (B_0(β) → ∞ if β → 1), such that for M ≥ M_1 and for an arbitrary configuration U satisfying the regularity condition (3.35) with Mα_0 ≤ a_0, the operator G′(U) (a = 1) satisfies the inequalities
 |(G′(U)λ)(x)|, |(∇_UG′(U)λ)(x)|, |(G′(U)∇*_Uλ)(x)|, |(Δ_UG′(U)λ)(x)| ≤ B_0[(L^jη)², L^jη, L^jη, 1]e^{−δ_0d(y,y′)}|λ| for x ∈ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′); (3.42)"
followed by the Hölder bounds (3.43)–(3.45), the L²-bounds
 ‖hG′λ‖, ‖h∇_UG′λ‖, ‖hG′∇*_Uλ‖, ‖h∇_U∇_UG′λ‖, ‖h∇_UG′∇*_Uλ‖, ‖hG′∇*_U∇*_Uλ‖ ≤ B_0[(L^jη)², L^jη, L^jη, 1, 1, 1]|h|e^{−δ_0d(y,y′)}‖λ‖ for supp h ⊂ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′) (3.46),
and the global bounds (3.47).
 Name clash. In Thm 3.1 "M_1" is a threshold on M (a constant of d, L). In CMP 116 and in WG_FULL 0.3, M_1 is the walk-cube size. In this file M_1 always means the CMP 116 cube size; Balaban's Thm 3.1 threshold is written M_th.

1.4 The localized operators [V pp. 408–409]. 𝒟_j is a family of cubes □ with centres on ML^jηZ^d, each a union of 2^d big blocks, at least one in B^j(Λ_j); 𝒟 = ∪_j 𝒟_j "is a partition of the lattice T" (with T_1∖Ω_1 in place of Λ_0). {h_□} is the partition of unity of CMP 96 end of Sect. A with Σ_□ h_□² = 1. □̃^n is the concentric cube of size (2 + 2n)ML^jη. For □ ∈ 𝒟_j a sequence {Ω_n(□)}_{n=0,…,j+1} is built: Ω_{j+1}(□) = □̃^3 ∩ B^{j+1}(Λ_{j+1}) (if □̃^3 meets it), Ω_j(□) = □̃^4, and Ω_n(□) concentric cubes with dist(Ω_n(□)^c, Ω_{n+1}(□)) = 2R_0M_0L^nη, so Ω_0(□) ⊂ □̃^5. Here M = KR_0M_0 with R_0, M_0 the smallest admissible CMP 96 parameters. p. 409 [V]: with the O(1) of (3.35) equal to 12, □̃^5 lies in one cube of the (3.35) class, so Cor. 3.6 applies. G′_□(U) := G′ built for {Ω_n(□)}. Cor. 3.6 [V p. 408]: under (3.35) with O(1)Mα_0 ≤ a_1 and Ω′_0 ⊂ □, "Theorems 3.1–3.3 hold for the operators G′(U), (Q′(U)G′²(U)Q′*(U))^{−1}, G(U) constructed for the sequence {Ω′_j}."
 G′_0 := Σ_{□∈𝒟} h_□G′_□h_□ (3.87).

1.5 The parametrix identity [V p. 409]. For x ∈ Δ(y), y ∈ Λ_j,
 (Δ′_a hλ)(x) = h(x)(Δ′_aλ)(x) − Σ_{b∈st(x)} (∂h)(b)(Dλ)(b) + (Δh)(x)λ(x) + a_j(L^jη)^{−2} Σ_{x′∈B^j(y)} L^{−jd}(∂h)(Γ^{(j)}_{x,y} ∪ Γ^{(j)}_{y,x′}) R((U(Γ^{(j)}_{y,x}))^{−1}R(U(Γ^{(j)}_{y,x′}))λ(x′) = h(x)(Δ′_aλ)(x) − (K(h)λ)(x), (3.88)
 hence Δ′_aG′_0 = I − Σ_□ K(h_□)G′_□h_□ = I − R′.
 "Using the inequalities (3.42) for G′_□, we get the bound
 |(K(h_□)G′_□h_□λ)(x)| ≤ O(M^{−1})e^{−δ_0(L^jη)^{−1}|y−y′|}|λ| (3.89)
 for x ∈ Δ(y), supp λ ⊂ Δ(y′), y, y′ ∈ □ ∈ 𝒟_j. It is exactly the bound (2.44) of [4], rescaled to η-scale."

1.6 Theorem 3.7 [V p. 409, verbatim]. "For M sufficiently large, and a configuration U satisfying (3.35), the operator G′ can be represented as
 G′ = G′_0(I − R′)^{−1} = G′_0 Σ_{n=0}^∞ R′^n = Σ_ω h_{□_0}G′_{□_0}h_{□_0}K(h_{□_1})G′_{□_1}h_{□_1} ··· K(h_{□_n})G′_{□_n}h_{□_n}, (3.90)
 where ω = (□_0, □_1, …, □_n), □_i ∈ 𝒟, □_i ∩ □_{i+1} ≠ ∅. The expansion is convergent in all norms appearing in the inequalities (3.42)–(3.47)."
 Printed proof [V p. 410, verbatim]: "This theorem follows simply from Corollary 3.6 holding for all G′_□, □ ∈ 𝒟, from the bound (3.89) and Lemma 2.1. The arguments are exactly the same as in proofs of Proposition 1.2 [3] and Proposition 2.2 [4], so we will not repeat them here." Then: "Theorem 3.7 implies that all the inequalities (3.42)–(3.47) hold for G′, thus we have completed the proof of Theorem 3.1."
 Note: the hypothesis "Mα_0 small" is not in the printed statement of Thm 3.7, but it is needed: Cor. 3.6 needs O(1)Mα_0 ≤ a_1. We add it (§3, H3).

1.7 Corollary 3.8 [V p. 410, verbatim]. Before it: "A propagator G′_□ depends on U restricted to Ω_0(□) ⊂ □̃^5, and the operator K(h) is semi-local". Localizing with characteristic functions of Δ(y_i), y_i ∈ □_i ∩ 𝔅 (3.91), "each term in this sum can be estimated by
 O(1)(L^jη)²e^{−δ_0d(y,y_1)}O(M^{−1})e^{−δ_0d(y_1,y_2)} ··· O(M^{−1})e^{−δ_0d(y_n,y′)}|Δ(y′)λ|. (3.92)"
 "We use part of the exponentials to control the sum over y_i's, let us say the exponentials with ½δ_0 instead of δ_0, the remaining are used to construct an overall exponential factor." d(ω, y, y′) = inf (d(y, y_1) + … + d(y_n, y′)) over y_i ∈ □_i ∩ 𝔅 (3.93); |ω| = n.
 "Corollary 3.8. The term in the expansion (3.90) corresponding to a walk ω = (□_0, □_1, …, □_n) depends on U restricted to □̃_0^5 ∪ □̃_1^5 ∪ … ∪ □̃_n^5, and
 |Δ(y)h_{□_0}G′_{□_0}h_{□_0} Π_{i=1}^n K(h_{□_i})G′_{□_i}h_{□_i}Δ(y′)λ| ≤ O(1)(L^jη)²O(M^{−1/2})^{|ω|}M^{−½|ω|}e^{−½δ_0d(ω,y,y′)}|Δ(y′)λ| (3.94)
 for y ∈ □_0 ∩ Λ_j, y′ ∈ □_n. Similar estimates hold for the other norms."
 "We will use the factor O(M^{−1/2}) to control the sum over random walks ω, and the last two factors in (3.94) will be important for other purposes."

1.8 What the chain uses [CLOSURE_PLAN R3, WG_FULL (I2)]. (a) The identity (3.90) with walks on 𝒟; (b) the per-walk bound (3.94) in the sup norm and "the other norms": one covariant derivative on either side and the L² block norms of (3.46); (c) the locality (L2): a walk term depends on U only in ∪□̃_i^5; (d) the support property: the kernel of a walk term is supported in □_0 × □_n (from the end factors h_{□_0}, h_{□_n}); (e) the count (B2) of cubes meeting a cube; (f) the M_1 version (cube size M_1, R36); (g) the complex form (R7). §§4–8 prove (a)–(g).
