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

## 2. The cited templates, quoted with hypotheses [V: CMP 95 pp. 35–39, CMP 96 pp. 229–234, 237–238, page images read 2026-10-28]

CMP 99 references [V p. 433]: [3] = Balaban, CMP 95, 17–40 (1984) ("Propagators … I"); [4] = Balaban, CMP 96, 223–250 (1984) ("… II"); [2] = Balaban, CMP 89, 571–597 (1983).

2.1 CMP 95 Proposition 1.2 [V p. 35–36, verbatim]. "There exists a positive constant δ_0 depending on d only, such that
 |(GJ)(x)|, |(∇GJ)(x)|, |(G∇*J)(x)|, |(ΔGJ)(x)| ≤ O(1)e^{−δ_0|y−y′|}|J| (1.110)
 for x ∈ Δ̃(y), supp J ⊂ Δ̃(y′), with the constant O(1) depending on d only," followed by Hölder bounds (1.111)–(1.113) and the L² bounds
 "‖ζGJ‖, ‖ζ∇GJ‖, ‖ζG∇*J‖, ‖ζ∇G∇*J‖, ‖ζ∇∇GJ‖, ‖ζG∇*∇*J‖ ≤ O(1)e^{−δ_0|y−y′|}|ζ|‖J‖ (1.114) for supp ζ ⊂ Δ̃(y), supp J ⊂ Δ̃(y′)."
 Hypotheses: U = 1 (no background), G the gauge-field propagator of CMP 95 at a single scale k, unit lattice after rescaling. No smallness hypothesis is stated in the proposition.
 What the proof does [V pp. 36–39]. It is a random walk proof with a priori input. Cubes □_z of size 2M_0, partition of unity h_z(x) = Π_μ h((x_μ − z_μ)/M_0), Σ_z h_z² = 1 (1.118). C_0 = Σ_z h_zGh_z (1.119) uses the global G. The commutator Δ_a hA = hΔ_aA − K(h)A (1.121) gives Δ_aC_0 = I − Σ_z K(h_z)Gh_z = I − R (1.122) and G = C_0(I − R)^{−1} = Σ_ω h_{ω_0}Gh_{ω_0}K(h_{ω_1})Gh_{ω_1} ··· (1.123). "Of course the sum is convergent only if R is small in a proper sense. This holds if M_0 is sufficiently large." Key one-step bound: "|h_{z_1}K(h_{z_2})A| ≤ O(M_0^{−1})e^{−2δ_0|z_1−z_2|}(|∇A| + |A|)" (1.128), with 2δ_0 = min{⅓δ′_0, M_0^{−1}}. Summation: (1.131), Σ_n O(1)^{2n}M_0^{−n}(Σ_{x∈Z^d} e^{−δ_0M_0|x|})^n, and "we can fix M_0 depending on d only, such that the series is convergent" [V p. 39]. The a priori bounds (1.115)–(1.117) on G itself are proved via (1.132)–(1.135) and CMP 89 Lemma 2.4.
 Grade. The proof is printed, but it opens with "We will be very sketchy with arguments because they are almost the same as in [2]" [V p. 37]. So the template is itself [R-full] only in the sense "printed, with the key bounds"; the summation step is written out (1.131), the a priori step leans on CMP 89. For the present file the useful part is the mechanism (1.121)–(1.123), (1.128), (1.131). Note a structural difference: in CMP 95 the localized factors are the global G cut by h_z; in CMP 96/99 they are local operators G′(□) with their own boundary conditions. The CMP 95 proof is therefore an a-priori-to-decay argument; the CMP 96 proof (2.2 below) is the template that matches Thm 3.7.

2.2 CMP 96 Proposition 2.2 and its proof [V pp. 229–234].
 Setting [V p. 229]: "We cover B^j(Λ_j) by a sum of cubes □ of the size 2ML^jη, each cube being a sum of 2^d big blocks with a center y ∈ Λ_j … we get a family 𝒟 of cubes □ of different sizes and such that T_η = ∪_{□∈𝒟} □." "We construct also the corresponding family of functions h described in (1.118), and rescale them to proper scales. They satisfy Σ_{□∈𝒟} h_□² = 1. (2.36)"
 "G′_0 = Σ_□ h_□G′(□)h_□, (2.37) where G′(□) is an inverse of Δ′_a with some boundary conditions on the boundary of □, e.g. with Neumann boundary conditions as in [3]. Repeating the calculations in the paper we get
 Δ′_aG′_0 = I − Σ_□ K(h_□)G′(□)h_□ = I − R, (2.38)
 where (K(h)λ)(x) = Σ_{b∈st(x)} (∂h)(b)(∂λ)(b) − (Δh)(x)λ(x) − a_j(L^jη)^{−2} Σ_{x′∈B^j(y^j(x))} L^{−jd}(∂h)(Γ^{(j)}_{x,y^j(x),x′})λ(x′) if x ∈ B^j(Λ_j). (2.39)"
 One-step bound [V p. 230]: from the local bounds (2.43) |(G′(□)λ)(x)|, |(∂^{L^{−j}}_μG′(□)λ)(x)| ≤ O(1)e^{−δ_0 dist(x, supp λ)}|λ| one gets
 "|(K(h_□)G′(□)h_□λ)(x)| ≤ O(M^{−1})e^{−δ_0|x−y|}|λ| (2.44) if either supp λ ⊂ B^j(y) for y ∈ Λ_j, or supp λ ⊂ B^{j+1}(y) for y ∈ Λ_{j+1}. The distance … is measured on L^{−j}-scale."
 Distance [V p. 231]: d(y, y′) = inf_Γ Σ_j (L^jη)^{−1}|Γ_{y,y′} ∩ B^j(Λ_j)| (2.46), over admissible contours.
 Neumann series [V p. 232]: "|Rλ| ≤ O(M^{−1})|λ| (2.49), thus the operator R has a small norm in the space L^∞ for M sufficiently large, and we get G′ = G′_0(I − R)^{−1} = G′_0 Σ_n R^n = Σ_ω h_{□_0}G′(□_0)h_{□_0}K(h_{□_1})G′(□_1)h_{□_1} ··· K(h_{□_n})G′(□_n)h_{□_n}, (2.50) where ω = (□_0, …, □_n), □_i ∈ 𝒟, □_i ∩ □_{i+1} ≠ ∅." Decay form: "|(Rλ)(x)| ≤ O(M^{−1})e^{−δ_0d(x,y)}|λ| if supp λ ⊂ B^j(y), y ∈ Λ_j. (2.51)" Compositions: (2.52) (insert Δ(y_i)), (2.54) triangle inequality, (2.55) |(Rλ)(x)| ≤ O(1)^n e^{−(1−α)δ_0d(y,y′)} Σ_{y_1…y_{n−1}} e^{−αδ_0d(y,y_1)} ··· e^{−αδ_0d(y_{n−1},y′)}|λ|, (2.56) bound by (sup_y Σ_{y′} e^{−αδ_0d(y,y′)})^n.
 Lemma 2.1 [V p. 234, verbatim]. "For the numbers α, 0 < α < 1, c_1(α) = 12c_0^d(½α), and RM satisfying (2.59) we have
 e^{−αδ_0d(y,y′)} ≤ e^{−αδ_0RM max{|j−j′|−1,0}}, y ∈ Λ_j, y′ ∈ Λ_{j′}, (2.60)
 sup_{y∈𝔅} Σ_{y′∈𝔅} e^{−αδ_0d(y,y′)} ≤ c_1(α), (2.61)
 hence Σ_{y_1,…,y_n∈𝔅} e^{−αδ_0d(y,y_1)} ··· e^{−αδ_0d(y_{n−1},y_n)} ≤ c_1(α)^n (2.62)
 and Σ_{y_1,…,y_{n−1}∈𝔅} e^{−δ_0d(y,y_1)} ··· e^{−δ_0d(y_{n−1},y_n)} ≤ c_1(α)^n e^{−(1−α)δ_0d(y,y′)}. (2.63)"
 Here c_0(α) = Σ_{z∈Z} e^{−αδ_0|z|} < 4/(αδ_0) and the condition is "¼αδ_0RM > 2d log c_0(½α) + 1. (2.59)" [V p. 233]. Note: WG_FULL (I4) writes "½αδ_0RM"; the page image shows ¼αδ_0RM. The ¼ form is the stronger requirement; this file uses the printed ¼ form.
 Conclusion [V p. 234]: |(R^nλ)(x)| ≤ (O(M^{−1})c_1)^n e^{−½δ_0d(y,y′)}|λ| (2.65) and |(G′λ)(x)| ≤ O(1)(L^jη)²e^{−½δ_0d(y,y′)}|λ| (2.66).
 "Proposition 2.2. If we have (2.1), (2.2) and M is sufficiently large, then the operator G′ = Δ′_a^{−1} (a = 1) satisfies the inequalities |(G′λ)(x)|, |(∇G′λ)(x)|, |(G′∇*λ)(x)|, ‖ζ∇G′λ‖_α, ‖ζG′∇*λ‖_α, |(ΔG′λ)(x)| ≤ O(1)[(L^jη)², L^jη, L^jη, (L^jη)^{1−α}(‖ζ‖_α + |ζ|), (L^jη)^{1−α}(‖ζ‖_α + |ζ|), 1]·e^{−½δ_0d(y,y′)}|λ|, x ∈ B^j(y) or supp ζ ⊂ B^j(y), y ∈ Λ_j, supp λ ⊂ B^{j′}(y′), y′ ∈ Λ_{j′}. (2.67) The random walk representation (2.50) is convergent in the norms defined by these inequalities."
 Hypotheses of Prop. 2.2: (2.1), (2.2) (the conditions on the domain sequence {Ω_j}), U = 1, M large, and (implicitly, through Lemma 2.1) RM with (2.59). Grade [R-full]: the summation (2.52)–(2.66) is printed in full; the one-step bound (2.44) rests on (2.43), which cites CMP 95 Lemmas 2.2, 2.4 and Prop. 2.3.

2.3 CMP 96 (2.82)–(2.85): the random-walk mechanism for a product with a non-local factor [V pp. 237–238]. Q′G′²Q′*C = Σ_□ h_□(□Q′G′(□̃)²Q′*□)C_□h_□ − Σ_□[h_□, □Q′G′(□̃)²Q′*□]C_□h_□ − Σ_□ □Q′(G′(□̃)² − G′²)Q′*h_□C_□h_□ − Σ_{□,□′≠□}(□ − 1)h²_{□′}Q′G′²Q′*h_□C_□h_□ = I − Σ_{□,□′} R_{□,□′}C_{□′}h_{□′} = I − R (2.82). Off-diagonal estimate (2.83) uses y ∉ □′ to extract e^{−⅛δ_0M}; (2.84) "|R_{□,□′}C_{□′}h_{□′}λ| ≤ O(1)e^{−⅛δ_0M}e^{−½δ_1d(□,□′)}|λ|"; domain-change terms carry e^{−δ_0M} "because of the usual estimate of the type (1.12) [3] connected with a change of a domain. This estimate follows from the random walk representations (2.50)"; kernel form "|R(y, y′)| ≤ O(M^{−1})e^{−δ_1d(y,y′)}(L^{j′}η)^{−d} (2.85) and by Lemma 2.1 we get Proposition 2.3." Use in this file: §5 uses only the summation pattern (kernel bound with weight (L^{j′}η)^{−d} → Lemma 2.1 → Neumann series). Thm 3.7 itself needs no (2.82)-type regrouping, because every factor K(h_□)G′_□h_□ already carries O(M^{−1}).

## 3. Setting, norms, and hypotheses of the write-out

3.1 Notation. ξ_n := L^nη (block scale at level n). For x ∈ B^n(Λ_n), n(x) := n and y(x) ∈ Λ_n is the centre of the n-block Δ(y(x)) = B^n(y(x)) that contains x. 𝔅 = ∪_n Λ_n is identified with the set of blocks. d(·,·) is the CMP 96 distance (2.46) on 𝔅; it is an infimum of weighted contour lengths over a class closed under concatenation, so it is a metric (CMP 96 (2.54) [V]). Adjacent blocks: d(y, y″) ≤ c_nb := d for blocks that share a face or are equal [I: one straight contour between the centres; at a level interface the weights (ξ_n)^{−1} only decrease the length].
 Block norms. For an operator T on functions on Ω_0 (g-valued) and y, y′ ∈ 𝔅:
 N_∞(T; y, y′) := sup{|(Δ(y)TΔ(y′)λ)(x)| : x, |λ| ≤ 1}, the sup→sup norm of the block Δ(y)TΔ(y′);
 N_2(T; y, y′) := ‖Δ(y)TΔ(y′)‖_{L²→L²}, the L² block norm of (3.46).
 Lemma N (composition) [P]. For N = N_∞ or N_2 and any operators A, B: N(AB; y, y′) ≤ Σ_{z∈𝔅} N(A; y, z)N(B; z, y′).
 Proof. AB = Σ_z AΔ(z)B since Σ_z Δ(z) = I (the blocks partition Ω_0). For N_∞: |(Δ(y)AΔ(z)BΔ(y′)λ)(x)| ≤ N_∞(A; y, z)·sup|Δ(z)BΔ(y′)λ| ≤ N_∞(A; y, z)N_∞(B; z, y′)|λ|. For N_2 use the triangle inequality and submultiplicativity of operator norms. ∎
 These are the conventions of CMP 96 (2.52) [V] (sup) and CMP 99 (3.46) [V] (L²). The μ-weighted kernel convention of WG_FULL 0.2 (m(y, y′), S-rescaling) is obtained from N_∞ and N_2 by the bookkeeping C0 of WG_FULL; that conversion is not redone here [I, C0].

3.2 Hypotheses. Fix d, L (L ≥ 2 a power of 2 is not needed; L ≥ 2 suffices here).
 (H1) Regularity. U is G-valued and satisfies (3.35) with O(1)Mα_0 ≤ a_1 (the condition of Cor. 3.6 [V p. 408]). (3.36) is not used.
 (H2) Layer width. RM satisfies CMP 96 (2.59) at the rate α = θ: ¼θδ_0RM > 2d log c_0(½θ) + 1, where θ ∈ (0, 1) is the split parameter of §5. Balaban's (3.94) is θ = ½.
 (H3) Cube size. M ≥ M_37(d, L, θ), the threshold fixed in 5.4. M is a power of L with M = KR_0M_0 [V p. 408].
 (H-PU) Cover and partition of unity [R: CMP 96 (2.36), CMP 99 p. 408 "the partition of unity {h_□} defined at the end of Sect. A in [4]"; asserted, not constructed; see 3.4]. A family 𝒟 = ∪_j 𝒟_j of cubes and functions h_□ ≥ 0 with:
  (a) every □ ∈ 𝒟_j is a cube of 2^d big blocks of size Mξ_j, □ ∩ B^j(Λ_j) ≠ ∅, and □ ⊂ B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}) (the class of (3.35));
  (b) supp h_□ ⊂ □, and dist(supp h_□, ∂□) ≥ ⅓Mξ_j except on faces of □ that lie on a level interface Σ_{j+1}, where the margin is ≥ ⅓Mξ_j/L (3.4);
  (c) Σ_□ h_□² = 1 on Ω_0;
  (d) for every bond b with endpoints at level n, |(∂h_□)(b)| ≤ c_hL/(Mξ_n), and |(Δh_□)(x)| ≤ c_hL²/(Mξ_n)², with c_h = c_h(d);
  (e) every block meets at most C_pt cubes of 𝒟, and every □ meets at most C_𝒟^in cubes of 𝒟, with C_pt ≤ C_𝒟^in ≤ 3(2L + 2)^d.
 (I-Ω0) Outer boundary [I]. For □ that meets ∂Ω_0, G′_□ is the Dirichlet inverse on Ω_0(□) ∩ Ω_0 (not on Ω_0(□)). Cor. 3.6 holds for this sequence: Ω_0(□) ∩ Ω_0 is a union of big blocks of T_1, and its separation from Ω_1(□) is ≥ min{2R_0M_0, RM} in unit scale, so CMP 96 (2.1)–(2.2) hold. Balaban's text ("Let us take here the set T_1∖Ω_1 instead of Λ_0", p. 408) does not state this convention.

3.3 The local input [R-sketch, CMP 99 Cor. 3.6 + Thm 3.1, p. 397, p. 408]. Under (H1) and (H3) (M ≥ M_th), for every □ ∈ 𝒟 the operator G′_□ satisfies (3.42)–(3.47) with the constants B_0, δ_0 of Thm 3.1 (d, L only). In block-norm form, for y ∈ Λ_n, y′ ∈ 𝔅:
 N(G′_□; y, y′), N(∇_UG′_□; y, y′), N(G′_□∇*_U; y, y′), N(Δ_UG′_□; y, y′) ≤ B_0[ξ_n², ξ_n, ξ_n, 1]e^{−δ_0d(y,y′)}, (3.3.1)
 for N = N_∞ ((3.42)) and N = N_2 ((3.46), which also gives N_2(∇G′_□∇*) ≤ B_0e^{−δ_0d}).
 Level of this input. Cor. 3.6 is printed with a two-line proof: Cor. 3.5 applied to U^u, plus gauge covariance (3.33) [V p. 408]. Cor. 3.5 is printed as a consequence of Thm 3.4's perturbation formula (3.64) around U = 1 and CMP 96 (U = 1) [V p. 407]. So the local input rests on CMP 96 Prop. 2.2 (U = 1, [R-full]) and the printed perturbation (3.60)–(3.64). It does not rest on Thm 3.7: there is no loop. The cube geometry "□̃^5 is contained in one of the cubes for which this condition holds" (p. 409, with the (3.35) constant O(1) = 12) is [I-geo]; for □ next to a level interface it needs (3.35) on □̃^5 at index j with α_0 replaced by c(d)Lα_0 (□̃^5 then meets the finer region, where (3.35) holds with the factor ξ_{j−1}^{−1} = Lξ_j^{−1}, and gauges of overlapping class cubes are glued [I, as SOURCES_A18_REGULAR 5.3(a)]). This costs only a factor c(d)L in the smallness condition of (H1).

3.4 Remark on (H-PU): a gap in the literal construction [P]. The product functions h_z(x) = Π_μ h((x_μ − z_μ)/M_0) of CMP 95 (1.118) [V] have h = 1 on [−⅓, ⅓] and supp h ⊂ ]−⅔, ⅔[. Rescaled to a cube of side 2Mξ_j, h_□ vanishes within ⅓Mξ_j of ∂□. Take a level interface Σ_{j+1} (fine region B^j outside, coarse region B^{j+1} inside). By (a), cubes of 𝒟_{j+1} do not cross Σ_{j+1}, so their literal h vanish in the band of B^{j+1} of depth ⅓Mξ_{j+1} along Σ_{j+1}. Cubes of 𝒟_j meet B^j and have side 2Mξ_j, so their h reach at most (5/3)Mξ_j into B^{j+1}. For L > 5, (5/3)Mξ_j < ⅓Mξ_{j+1}, and the points of B^{j+1} at depth in ((5/3)Mξ_j, ⅓Mξ_{j+1}) are covered by no h. So Σh² = 1 fails for the literal family under (a).
 Repair [P, construction sketch; I-geo for the full multiscale bookkeeping]. For a coarse cube □ ∈ 𝒟_{j+1} with a face on Σ_{j+1}, replace the profile in the normal direction by a profile that is 0 at depth ≤ ⅓Mξ_j and rises to 1 by depth ⅔Mξ_j (fine scale), instead of the literal rise over [⅓Mξ_{j+1}, ⅔Mξ_{j+1}]. Define φ_□ by these profiles and h_□ := φ_□(Σ_{□′}φ_{□′}²)^{−1/2}. The fine cubes of 𝒟_j centred on Σ_{j+1} satisfy (a), have plateau (φ = 1) to depth ⅓Mξ_j and support to depth ⅔Mξ_j inside B^{j+1}; the coarse profile is ≥ c > 0 from depth ⅓Mξ_j + Mξ_j/100 on, so Σφ² ≥ c(d) > 0 everywhere, and (b)–(d) hold with the factor L in (d) (the coarse profile varies on the fine scale). The cost is the factor L in (d); it enters only the one-step constant K_1 of §4. Alternatively one keeps the literal h and lets coarse cubes cross Σ_{j+1}; then (a) fails and the agreement Lemma AG below fails on the crossing part. The chain needs some (H-PU); it is common to Thms 3.7, 3.9, 3.10 and is recorded as ledger item X-PU.

3.5 Lemma AG (agreement of the global and local operators) [P given (H-PU)(a) and the block structure of Q′; I for the reading that Q′_n is defined blockwise, independent of the domain sequence (CMP 99 (3.19), (3.55)–(3.57) [V])]. Let □ ∈ 𝒟_j and let Δ′_{a,□} := Ω_0(□)Δ′_a(U; {Ω_n(□)})Ω_0(□) be the operator whose inverse is G′_□. Then for every function g supported in Ω_0(□) ∩ Ω_0 and every x ∈ □:
 (Ω_0Δ′_aΩ_0 g)(x) = (Δ′_{a,□}g)(x).
 Proof. (i) The Laplacian part Δ^η_U is nearest-neighbour; x ∈ □ and its neighbours lie in □̃ ⊂ Ω_0(□), and in Ω_0 or outside it in both operators alike (I-Ω0). (ii) The term Q′*aQ′ at x: by (3.24), (Q′*aQ′g)(x) = a_n(ξ_n)^{d−2}·(Q′_n*(Q′_ng)(y))(x) with n the level of x and y = y(x) in the sequence used; Q′_n averages g over the block B^n(y) with parallel transports along contours inside B^n(y) (CMP 99 (3.19), (3.55) [V]). (iii) Level of x. Globally, x ∈ B^j(Λ_j) or x ∈ B^{j+1}(Λ_{j+1}) by (H-PU)(a). In the □-system, Ω_n(□) ⊃ □̃^4 ⊃ □ for n ≤ j, Ω_{j+1}(□) = □̃^3 ∩ B^{j+1}(Λ_{j+1}), and there is no Ω_{j+2}(□) [V p. 408]. So x has level j+1 in the □-system iff x ∈ B^{j+1}(Λ_{j+1}) iff x has level j+1 globally. (iv) The blocks B^n(y) are cells of the fixed lattice ξ_nZ^d; the coefficients a_n are given by the same recursion with a_0 = a_1 = a [V p. 394]; so both operators use the same block, the same a_n, and the same transports. (v) Ω_{j+2} ∩ □̃^3 = ∅ globally, since □ meets B^j(Λ_j) ⊂ Ω_{j+1}^c and dist(Ω_{j+1}^c, Ω_{j+2}) ≥ RMξ_{j+1} > 4Mξ_j (CMP 96 (2.2), RL > 4). ∎
