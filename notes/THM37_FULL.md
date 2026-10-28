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

3.1 Notation. ξ_n := L^nη (block scale at level n). For x ∈ B^n(Λ_n), n(x) := n and y(x) ∈ Λ_n is the centre of the n-block Δ(y(x)) = B^n(y(x)) that contains x. 𝔅 = ∪_n Λ_n is identified with the set of blocks. d(·,·) is the CMP 96 distance (2.46) on 𝔅; it is an infimum of weighted contour lengths over a class closed under concatenation, so it is a metric (CMP 96 (2.54) [V]).
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

## 4. Step 1: the commutator, the parametrix identity, supports, and the one-step bound

4.1 Definition. K(h) := hΔ′_a − Δ′_ah, the commutator of Δ′_a (with the Dirichlet cut Ω_0·Ω_0) and multiplication by h. Then Δ′_a(hg) = hΔ′_ag − K(h)g holds by definition. This is (3.88) [V]; we do not need Balaban's explicit three-term formula, only the bound of Lemma K below, which we derive from the commutator.

4.2 Lemma K0 (pointwise commutator bound) [P given (3.23)–(3.24) and the averaging form of Q′_n, CMP 99 (3.19) [V]]. Let x ∈ B^n(y) ∩ Ω_0. For real U and any g on Ω_0,
 |(K(h)g)(x)| ≤ Σ_{b∈st(x)} |(∂h)(b)|·|(D_Ug)(b)| + |(Δh)(x)|·|g(x)| + a_nξ_n^{−2}·osc_{B^n(y)}(h)·sup_{B^n(y)}|g|. (4.2.1)
 Here ∂, Δ are the η-lattice derivative and Laplacian of the scalar h, osc_B(h) := max_B h − min_B h, and a_n ≤ a.
 Proof. (i) Laplacian. For a bond b = (x, x + ηe) write (R_bg)(x + ηe) for the parallel-transported value, so (D_Ug)(b) = η^{−1}((R_bg)(x + ηe) − g(x)). Then η^{−2}(h(x) − h(x + ηe))(R_bg)(x + ηe) = η^{−2}(h(x) − h(x + ηe))g(x) − (∂h)(b)(D_Ug)(b). Sum over the 2d bonds of st(x): the first parts give −(Δh)(x)g(x) (up to the sign convention of Δ), the second parts give −Σ_b(∂h)(b)(D_Ug)(b). So |[h, Δ^η_U]g(x)| ≤ |(Δh)(x)||g(x)| + Σ_b|(∂h)(b)||(D_Ug)(b)|. The Dirichlet cut only removes bonds that leave Ω_0, where g = 0. (ii) Averaging term. From (3.24) and ⟨λ, λ′⟩ = η^dΣ_xλ(x)λ′(x), (Q′*aQ′g)(x) = a_nξ_n^{−2}L^{−nd}Σ_{x′∈B^n(y)} T_{x,x′}g(x′), with T_{x,x′} = R(U(Γ_{y,x}))^{−1}R(U(Γ_{y,x′})) of norm 1 for G-valued U (this is the last term of (3.88) [V]). So ([h, Q′*aQ′]g)(x) = a_nξ_n^{−2}L^{−nd}Σ_{x′}(h(x) − h(x′))T_{x,x′}g(x′), and L^{−nd}Σ_{x′} is an average over the L^{nd} points of the block. (iii) a_n ≤ a: a_{n+1} = aa_n/(aL^{−2} + a_n) < a for a_n > 0, and a_0 = a_1 = a [V p. 394]. ∎
 L² form [P]. With N_2 in place of sup norms: the Laplacian part gives ‖Δ(z)K_Δ(h)g‖ ≤ sup|Δh|·‖Δ(z)g‖ + 2d sup|∂h|·‖Δ(z)∇_Ug‖ (bonds of Δ(z)); the averaging part is (h − h(x_B))P_Bg − P_B((h − h(x_B))g) with P_B the transported block average, an L²-contraction, so its L² norm is ≤ 2 osc_B(h)a_nξ_n^{−2}‖Δ(z)g‖ (Δ(z) = B^n(y) here).

4.3 Lemma P (parametrix identity) [P given Lemma AG, (H-PU)(c), (I-Ω0)]. Put G′_0 := Σ_{□∈𝒟} h_□G′_□h_□ (3.87) and F_□ := K(h_□)G′_□h_□, R′ := Σ_□ F_□. Then, as operators on functions on Ω_0,
 Ω_0Δ′_aΩ_0 G′_0 = I − R′. (4.3.1)
 Proof. Fix λ and put g_□ := G′_□h_□λ, supported in Ω_0(□) ∩ Ω_0. By 4.1, Ω_0Δ′_aΩ_0(h_□g_□) = h_□(Ω_0Δ′_aΩ_0g_□) − K(h_□)g_□. Since supp h_□ ⊂ □, Lemma AG gives h_□(Ω_0Δ′_aΩ_0g_□) = h_□(Δ′_{a,□}g_□) = h_□·h_□λ (Δ′_{a,□}G′_□ = I on Ω_0(□) ∩ Ω_0, and supp h_□λ lies there). Sum over □ and use Σh_□² = 1. ∎

4.4 Lemma S (supports and locality) [P given (H-PU)(a)–(b), Lemma K0, and the definition of G′_□].
 (i) The block Δ(y)h_□G′_□h_□Δ(y′) vanishes unless Δ(y) and Δ(y′) meet supp h_□.
 (ii) The block Δ(z)F_□Δ(z′) vanishes unless Δ(z′) meets supp h_□ and Δ(z) meets supp⁺h_□ := {x : x, a nearest neighbour of x, or a point of the block of x lies in supp h_□}. supp⁺h_□ ⊂ □, at distance ≥ (⅓M − L)ξ_j/L > 0 from ∂□ (□ ∈ 𝒟_j, M > 3L), because blocks of level j + 1 do not cross Σ_{j+1} and a block has side ≤ ξ_{j+1} = Lξ_j.
 (iii) Hence a product h_{□_0}G′_{□_0}h_{□_0}F_{□_1}···F_{□_n} vanishes unless supp h_{□_{i−1}} ∩ supp⁺h_{□_i} ≠ ∅ for all i, which implies □_{i−1} ∩ □_i ≠ ∅. So the expansion of G′_0Σ_nR′^n runs over walks ω = (□_0, …, □_n) as in (3.90).
 (iv) G′_□ depends on U only through the links inside Ω_0(□) ⊂ □̃^5 [V p. 410: "A propagator G′_□ depends on U restricted to Ω_0(□) ⊂ □̃^5"; the Dirichlet operator Ω_0(□)Δ′_aΩ_0(□) uses only links with both ends in Ω_0(□), and the averages Q′_n use links inside blocks]. K(h_□) depends on U only in the blocks that meet supp h_□. So the term T_ω := h_{□_0}G′_{□_0}h_{□_0}F_{□_1}···F_{□_n} depends on U only in □̃_0^5 ∪ … ∪ □̃_n^5. This is the locality clause of Cor. 3.8.
 (v) The kernel of T_ω is supported in supp h_{□_0} × supp h_{□_n} ⊂ □_0 × □_n, at distance ≥ ⅓Mξ_{j_0}/L, ⅓Mξ_{j_n}/L from ∂□_0, ∂□_n. This is the band (L1) for the end domains, with the ⅓M band of CMP 116 p. 3 [V] reduced by the factor 1/L at interface faces only (3.4).

4.5 Lemma K (one-step bound; this is (3.89)) [P given (3.3.1), Lemma K0, (H-PU)(d)]. For □ ∈ 𝒟, z, z′ ∈ 𝔅, and N ∈ {N_∞, N_2}:
 N(F_□; z, z′) ≤ (K_1/M)e^{−δ_0d(z,z′)}, K_1 := 2(3d + 1)c_hL²B_0. (4.5.1)
 Proof. Let x ∈ Δ(z), level n, and λ supported in Δ(z′), g := G′_□h_□λ. By (H-PU)(d): |∂h_□| ≤ c_hL/(Mξ_n), |Δh_□| ≤ c_hL²/(Mξ_n)², and osc_{B^n}(h_□) ≤ d·ξ_n·c_hL/(Mξ_n) = dc_hL/M. A bond of st(x) may end in a block of level n ± 1, where (3.3.1) gives at most Lξ_n in place of ξ_n. By (3.3.1) (|h_□| ≤ 1, d(·,·) the same for all points of Δ(z)):
 term 1 ≤ 2d·(c_hL/(Mξ_n))·B_0Lξ_n e^{−δ_0d(z,z′)}|λ| = 2dc_hL²B_0M^{−1}e^{−δ_0d}|λ|;
 term 2 ≤ (c_hL²/(M²ξ_n²))·B_0ξ_n² e^{−δ_0d}|λ| ≤ c_hL²B_0M^{−1}e^{−δ_0d}|λ|;
 term 3 ≤ aξ_n^{−2}·(dc_hL/M)·B_0ξ_n² e^{−δ_0d}|λ| ≤ dc_hLB_0M^{−1}e^{−δ_0d}|λ| (a = 1, as in Thm 3.1).
 The sum is ≤ (3d + 1)c_hL²B_0M^{−1}e^{−δ_0d(z,z′)}|λ|. The L² form of 4.2 doubles the averaging term; the factor 2 in K_1 covers both norms. ∎
 Comparison. Balaban prints (3.89) as O(M^{−1})e^{−δ_0(L^jη)^{−1}|y−y′|}, "y, y′ ∈ □", and says "It is exactly the bound (2.44) of [4], rescaled". Inside one cube the Euclidean form and d agree up to constants. We use d(z, z′) directly, so no conversion is needed, and the constant is explicit.

## 5. Step 2: per-walk bound, counting, convergence, and identification

5.1 Lemma B0 (first factor) [P given (3.3.1)]. For y ∈ Λ_j and N ∈ {N_∞, N_2}: N(h_□G′_□h_□; y, y′) ≤ B_0ξ_j²e^{−δ_0d(y,y′)}, since |h_□| ≤ 1.

5.2 Proposition W (per-walk bound; this is (3.92)–(3.94)) [P given Lemmas N, S, K, B0 and CMP 96 Lemma 2.1 (2.62) under (H2)]. Let ω = (□_0, …, □_n) be a walk, y ∈ Λ_j, y′ ∈ 𝔅, θ ∈ (0, 1). Then for N ∈ {N_∞, N_2}:
 N(T_ω; y, y′) ≤ B_0ξ_j²·(K_1c_1(θ)/M)^{|ω|}·e^{−(1−θ)δ_0d(ω,y,y′)}, (5.2.1)
 with d(ω, y, y′) the walk distance (3.93), the infimum over block points y_i with Δ(y_i) ⊂ □_i.
 Proof. Write T_ω = F_0F_1···F_n with F_0 := h_{□_0}G′_{□_0}h_{□_0}, F_i := F_{□_i}. By Lemma N,
 N(T_ω; y, y′) ≤ Σ_{z_1,…,z_n∈𝔅} N(F_0; y, z_1)N(F_1; z_1, z_2)···N(F_n; z_n, y′).
 By Lemma S(ii), a nonzero term has Δ(z_i) meeting supp⁺h_{□_i} ⊂ □_i. A block of level ≥ j_i is a union of cells of a lattice that refines the big-block lattice of □_i (M/L is a power of L), so Δ(z_i) meets □_i only if Δ(z_i) ⊂ □_i. So every nonzero term has z_i ∈ □_i in the sense of (3.93). Insert Lemmas B0 and K: the term is ≤ B_0ξ_j²(K_1/M)^n e^{−δ_0S}, S := d(y, z_1) + d(z_1, z_2) + … + d(z_n, y′). Since z_i ∈ □_i, S ≥ d(ω, y, y′). Split e^{−δ_0S} = e^{−(1−θ)δ_0S}e^{−θδ_0S} ≤ e^{−(1−θ)δ_0d(ω,y,y′)}e^{−θδ_0S}. Drop the last factor e^{−θδ_0d(z_n,y′)} ≤ 1 and sum over z_1, …, z_n ∈ 𝔅 by (2.62) at α = θ: Σ Π_{i=0}^{n−1}e^{−θδ_0d(z_i,z_{i+1})} ≤ c_1(θ)^n (z_0 := y). ∎
 Balaban's form. At θ = ½ put K_37 := K_1c_1(½). Then (K_1c_1(½)/M)^{|ω|} = (K_37M^{−1/2})^{|ω|}M^{−½|ω|}, and (5.2.1) is (3.94) with O(1) = B_0 and O(M^{−1/2}) = K_37M^{−1/2}. The exponential is e^{−½δ_0d(ω,y,y′)}, as printed.

5.3 Lemma C (counting) [P given (H-PU)(e)]. For a block y, the number of walks of length n with Δ(y) meeting □_0 is ≤ C_pt(C_𝒟^in)^n. For a cube □′, the number of pairs (i, □) with □ ∈ 𝒟 meeting □′ is ≤ C_𝒟^in, which is (B2) of WG_FULL 0.4 with C_𝒟 = C_𝒟^in.
 Proof. □_0 is one of ≤ C_pt cubes; each next cube meets the previous one: ≤ C_𝒟^in choices. ∎
 Bound on C_𝒟^in [P, cube geometry]. A cube of 𝒟_j meets ≤ 3^d cubes of 𝒟_j (centres on Mξ_jZ^d, side 2Mξ_j, half-open cubes), ≤ 3^d cubes of 𝒟_{j+1} (larger), ≤ (2L + 2)^d cubes of 𝒟_{j−1} (side 2Mξ_j/L), and no other level (by (H-PU)(a) a cube of 𝒟_i lies in B^i ∪ B^{i+1}). So C_𝒟^in ≤ 2·3^d + (2L + 2)^d ≤ 3(2L + 2)^d. Similarly C_pt ≤ 2^{d+1}: 2^d cubes of one level contain a given point, and by (H-PU)(a) only cubes of 𝒟_n and 𝒟_{n−1} can contain a block of level n [I: cube geometry, as WG_FULL 0.4].

5.4 Theorem T37 (Theorem 3.7 + Corollary 3.8, written out). Assume (H1), (H2) at rate θ, (H-PU), (I-Ω0), and
 M ≥ M_37(d, L, θ) := max{M_th, 3L + 1, 2C_𝒟^inK_1c_1(θ)}, (5.4.1)
 with M_th the threshold of Thm 3.1/Cor. 3.6 (Balaban's "M_1" of p. 397). Then:
 (a) [Neumann] ‖R′‖_{∞→∞} ≤ ½, Δ′_a↾Ω_0 is invertible, and G′ = G′_0(I − R′)^{−1} = G′_0Σ_{n≥0}R′^n.
 (b) [Walk form (3.90)] G′ = Σ_ω T_ω over walks ω = (□_0, …, □_n), □_i ∈ 𝒟, □_{i−1} ∩ □_i ≠ ∅; the sum converges absolutely in N_∞ and N_2 block norms.
 (c) [Per walk (3.94)] Each T_ω obeys (5.2.1); it depends on U only in □̃_0^5 ∪ … ∪ □̃_n^5; its kernel is supported in □_0 × □_n with the band of Lemma S(v).
 (d) [Sum] For y ∈ Λ_j, y′ ∈ 𝔅: Σ_ω N(T_ω; y, y′) ≤ 2C_ptB_0ξ_j²e^{−(1−θ)δ_0d(y,y′)}. So G′ obeys the first entry of (3.42)/(3.46) with constants (2C_ptB_0, (1−θ)δ_0).
 All constants depend on d, L, θ only (c_h = c_h(d), a = 1). They are uniform in U with (H1), in j, k, η, the sequence {Ω_j} with CMP 96 (2.1)–(2.2), and the volume.
 Proof. (a) For x ∈ Δ(z): |(R′λ)(x)| ≤ Σ_□Σ_{z′}N_∞(F_□; z, z′)|λ|. At most C_pt cubes give F_□ ≠ 0 at x (Lemma S(ii)). By Lemma K and e^{−δ_0d} ≤ e^{−θδ_0d}, (2.61) gives Σ_{z′}N_∞(F_□; z, z′) ≤ K_1c_1(θ)/M. So ‖R′‖_{∞→∞} ≤ C_ptK_1c_1(θ)/M ≤ ½ by (5.4.1) (C_pt ≤ C_𝒟^in). Hence Σ_nR′^n converges and equals (I − R′)^{−1}. By Lemma P, Ω_0Δ′_aΩ_0·G′_0(I − R′)^{−1} = I. The space of functions on Ω_0 is finite-dimensional, so a right inverse is a two-sided inverse; hence Δ′_a↾Ω_0 is invertible and G′ = G′_0(I − R′)^{−1}. No positivity of Δ′_a and no a priori existence of G′ is used.
 (b) G′_0R′^n = Σ_{□_0,…,□_n} F_0F_{□_1}···F_{□_n}. By Lemma S(iii) only walks contribute. Absolute convergence follows from (d); in finite volume each G′_0R′^n is a finite sum, so the rearrangement into Σ_ω is exact.
 (c) Proposition W and Lemma S(iv)–(v).
 (d) By Proposition W, d(ω, y, y′) ≥ d(y, y′) (triangle inequality, CMP 96 (2.54)), and Lemma C: Σ_ω N(T_ω; y, y′) ≤ B_0ξ_j²C_ptΣ_n(C_𝒟^inK_1c_1(θ)/M)^n e^{−(1−θ)δ_0d(y,y′)} ≤ 2C_ptB_0ξ_j²e^{−(1−θ)δ_0d(y,y′)}. ∎

5.5 Remarks.
 (i) Rate. Balaban states (3.94) at ½δ_0 and remarks (p. 410) that "We can get a decay rate arbitrarily close to the decay rate of the localized propagators". Theorem T37 proves this remark: rate (1 − θ)δ_0 for any fixed θ, at the cost M ≥ M_37(θ) and (2.59) at α = θ. Since c_1(θ) = 12c_0^d(½θ) < 12(8/(θδ_0))^d, M_37(θ) = O(θ^{−d}).
 (ii) No loop. The local constants (B_0, δ_0) of (3.3.1) come from Cor. 3.6, which rests on CMP 96 (U = 1) and the perturbation (3.64) (3.3). The global constants of (d) are new names: (2C_ptB_0, (1−θ)δ_0). Balaban reuses the letters B_0, δ_0 for both ("we define new constants", p. 403; "after adjusting a definition of δ_0", p. 427). With distinct names the order is: (d, L) → B_0, δ_0, M_th (local) → θ → c_1(θ) → M_37 → RM with (2.59) → α_0.
 (iii) The global inequality (3.47) follows from (d) and Lemma 2.1, as Balaban says on p. 398 ("the global inequalities (3.47) are consequences of the local ones (3.42) and Lemma 2.1").
 (iv) What is not used: CMP 96 (2.82)–(2.85) (the regrouping for operators without a small factor in every step) is not needed for G′, because every factor F_□ carries K_1/M (Lemma K). It is the template for Thm 3.9, not for Thm 3.7.

## 6. Step 3: the other norms of Cor. 3.8 ("Similar estimates hold for the other norms")

Balaban gives one sentence. We separate three cases, because they are not all true for the same expansion in the same norm.

6.1 Left derivatives [P given (3.3.1) and (H-PU)(d)]. A derivative on the left acts only on the first factor F_0 = h_{□_0}G′_{□_0}h_{□_0} of T_ω. By the product rule,
 ∇_U(h_□G′_□h_□λ) = (∂h_□)·(G′_□h_□λ)(shifted) + h_□∇_UG′_□h_□λ, so N(∇_UF_0; y, y′) ≤ B_0ξ_j(1 + c_hL/M)e^{−δ_0d} ≤ 2B_0ξ_je^{−δ_0d};
 Δ_U(h_□g) = h_□Δ_Ug − 2Σ(∂h_□)(D_Ug) + (Δh_□)g (up to the sign convention), so N(Δ_UF_0; y, y′) ≤ B_0(1 + 2dc_hL/M + c_hL²/M²)e^{−δ_0d} ≤ 2B_0e^{−δ_0d},
 for M ≥ 4dc_hL² (included in M_37: 2C_𝒟^inK_1c_1(θ) ≥ 4dc_hL²). The same holds in N_2 with (3.46) (also ∇∇ on the left). Proposition W then gives, for the same terms T_ω of (3.90) and N ∈ {N_∞, N_2},
 N(∇_UT_ω; y, y′) ≤ 2B_0ξ_j(K_1c_1(θ)/M)^{|ω|}e^{−(1−θ)δ_0d(ω,y,y′)}, N(Δ_UT_ω; y, y′) ≤ 2B_0(…)^{|ω|}e^{−(1−θ)δ_0d(ω,y,y′)}. (6.1.1)

6.2 Right derivatives in the sup norm: use the transposed expansion [P; this is CMP 95 p. 39 [V]: "in the estimates of G∇*J we have to take a representation of G adjoint to (1.123), with the operators K(h) acting on the right"]. For G-valued U, Δ′_a↾Ω_0 and every Δ′_{a,□} are symmetric for the real inner product, so G′ and G′_□ are symmetric, and K(h)^T = −K(h) (a commutator of two symmetric operators). Transposing (4.3.1) gives G′_0Ω_0Δ′_aΩ_0 = I − R′^T, hence G′ = (I − R′^T)^{−1}G′_0 = Σ_ω T_ω^T with T_ω^T = F_{□_n}^T···F_{□_1}^TF_0 and F_□^T = −h_□G′_□K(h_□). A right derivative now acts on F_0 only, and the interior factors h_□G′_□K(h_□) obey Lemma K with the same K_1: the proof of 4.5 runs with K(h) on the input side, using the entries N(G′_□∇*_U) ≤ B_0ξ and N(G′_□) ≤ B_0ξ² of (3.3.1). So, with N_∞:
 N_∞(T_ω^T∇*_U; y, y′) ≤ 2B_0ξ_{j′}(K_1c_1(θ)/M)^{|ω|}e^{−(1−θ)δ_0d(ω,y′,y)}, y′ ∈ Λ_{j′}. (6.2.1)
 The walk ω is read from y′ to y. The terms T_ω^T are the transposes of the terms T_ω; they have the same walks, the same locality, and the same supports (exchanged).

6.3 All derivative forms in the L² block norm, for the single expansion (3.90) [P given (3.46) for G′_□]. N_2 is invariant under transposition (N_2(T^T; y, y′) = N_2(T; y′, y)). For the right end of T_ω (n ≥ 1) write F_{□_n}∇*_U = K(h)G′_□∇*_U h + K(h)G′_□[h, ∇*_U]. Lemma K0 in L² form then needs N_2(∇_UG′_□∇*_U) ≤ B_0e^{−δ_0d}, which is in (3.46) [V] ("‖h∇_UG′(U)∇*_Uλ‖ ≤ B_0·1"). Each of the three terms of 4.5 loses one factor ξ_{n′} relative to Lemma K (n′ the level of the input block), so N_2(F_{□_n}∇*_U; z, y′) ≤ 2L(K_1/M)ξ_{j′}^{−1}e^{−δ_0d(z,y′)} (the 2L covers the commutator [h, ∇*] and neighbour levels). With 6.1 on the left end:
 N_2(∇_UT_ω∇*_U; y, y′) ≤ 4LB_0(ξ_j/ξ_{j′})(K_1c_1(θ)/M)^{|ω|}e^{−(1−θ)δ_0d(ω,y,y′)}, (6.3.1)
 and the same with ∇ dropped (factor ξ_j²/ξ_{j′}).
 Scale shift [P given (2.60)]. (2.60) says d(y, y′) ≥ RM·max{|j − j′| − 1, 0}. So L^{|j−j′|} ≤ L·e^{θ_Sd(y,y′)}, θ_S := log L/(RM). Hence ξ_j/ξ_{j′} ≤ L·e^{θ_Sd(ω,y,y′)}, and (6.3.1) becomes the Thm 3.1 form N_2(∇T_ω∇*) ≤ 4L²B_0(…)^{|ω|}e^{−((1−θ)δ_0 − θ_S)d(ω,y,y′)}. With RM ≥ log L/(θδ_0) the rate is ≥ (1 − 2θ)δ_0. This is Balaban's p. 398 remark ("we may replace the factor (L^jη)^α by (L^jη)^β(L^{j′}η)^γ"), here with the rate cost written out. In the sup norm the mixed pointwise form needs the Hölder bound (3.44) and is not proved here; WG_FULL 0.2 does not use it.

6.4 Hölder norms (3.43)–(3.45) [P-sketch, not used by the chain]. The same scheme works: on the left end use (3.43) for G′_□ with ζh_□ in place of ζ (‖ζh‖_β ≤ ‖ζ‖_β + |ζ|·‖h‖_β and ‖h_□‖_β^ξ ≤ c_hL/M^β); on the right end of a direct-expansion term with ∇*, use (3.44) for G′_□ applied to h_□λ (‖h_□λ‖_ε ≤ ‖λ‖_ε + c|λ|). The interior factors are bounded in N_∞ as in Lemma K. This gives (3.43)–(3.45) for each T_ω with the factor (K_1c_1(θ)/M)^{|ω|} and constants B_0′(β), B_0′(ε, β) times 2. We do not write the Hölder bookkeeping in full.

6.5 Summary of Cor. 3.8 as proved. Expansion (3.90): left-derivative forms in N_∞ and N_2 (6.1); all forms in N_2 (6.3). Expansion (3.90)^T: right-derivative forms in N_∞ (6.2). Locality and supports: Lemma S. Balaban's single sentence hides the left/right distinction in the sup norm; CMP 95 p. 39 states it for the U = 1 template.

## 7. The M_1 version (CLOSURE_PLAN R36; WG_FULL 0.3 "M_1-cover [I/R]")

7.1 What CMP 116 asserts [V CMP 116 p. 3, page image]. "X_0, X_1, …, X_n are simple localization domains, unions of connected families containing several cubes from π_k(1), i.e. of the size M_1 instead of M." "Each factor … depends on external gauge field configurations restricted to the corresponding domain X̃_j^5, and its kernel vanishes in a sufficiently thick neighborhood of ∂X_j, e.g. in a neighborhood of the width ⅓M_1. The term corresponding to a walk ω in (1.6) can be bounded, as (3.108) [13], by O(1)O(M_1^{−1/2})^{|ω|}M_1^{−½|ω|}exp(−δ_0d(ω, y, y′)), (1.7) … This bound holds for all operator norms in formulations of theorems in [13], e.g. in Theorem 3.1." Also: "R_1 is a power of L satisfying the condition R_1M_1M^{−1} ≤ 1." No proof is given. Note the rate: (1.7) prints δ_0, where CMP 99 (3.94) prints ½δ_0; this is Balaban's renaming of δ_0 (5.5(ii)).

7.2 Where M enters the proof of Theorem T37 [P, by inspection of §3–§6].
 (a) The cube family 𝒟 and the partition h_□: cube side 2Mξ_j, derivative bound (H-PU)(d) with M, band ⅓Mξ_j.
 (b) The local input (3.3.1) for G′_□: through Cor. 3.6, which needs (i) a sequence {Ω_n(□)} with Ω_0(□) ⊂ □̃^5 and (ii) □̃^5 inside one cube of the (3.35) class.
 (c) The threshold M ≥ M_th of Thm 3.1.
 M does not enter: Lemma 2.1 and (H2) (they involve the layer width RM of the sequence {Ω_j}, a property of the domains, not of the cubes); the block norms; Lemma N; the constants B_0, δ_0, c_h, C_pt, C_𝒟^in (cube counts do not depend on the cube size, only on the ratio L between levels).
 On (b)(i) and (c) [V p. 408]: the local sequence is built at scale R_0M_0, "a pair R_0, M_0 of smallest possible numbers satisfying conditions needed in the proofs", with dist(Ω_n(□)^c, Ω_{n+1}(□)) = 2R_0M_0L^nη and Ω_0(□) ⊂ □̃^5. The local operators therefore need only "M ≥ (a fixed multiple of) R_0M_0", i.e. M_th is a statement about R_0M_0, not about the size of the cubes used for the walk [I: reading of p. 408; Balaban writes M = KR_0M_0, K a positive integer].

7.3 Theorem T37-M1 [P given T37's inputs and the geometric item (G-M1) below]. Let M_1 be a power of L with
 2R_0M_0 ≤ M_1, 12M_1 ≤ M, M_1 ≥ M_37(d, L, θ) (with M_th replaced by 2R_0M_0), (7.3.1)
 and keep (H1) (at scale M, unchanged), (H2) (RM unchanged), (I-Ω0). Let 𝒟^{(1)} be a cover as in (H-PU) by cubes of side 2M_1ξ_j, with h_□ at scale M_1. Then all of Theorem T37 and §6 hold with M replaced by M_1:
 G′ = Σ_ω T_ω over walks of 𝒟^{(1)}; N(T_ω; y, y′) ≤ B_0ξ_j²(K_1c_1(θ)/M_1)^{|ω|}e^{−(1−θ)δ_0d(ω,y,y′)};
 at θ = ½: N(T_ω; y, y′) ≤ B_0ξ_j²·(K_37M_1^{−1/2})^{|ω|}·M_1^{−½|ω|}·e^{−½δ_0d(ω,y,y′)}, which is CMP 116 (1.7) (with Balaban's renamed δ_0);
 locality in □̃_0^5 ∪ … ∪ □̃_n^5 (M_1-cubes); kernel supported in □_0 × □_n with band ⅓M_1ξ_{j_0} (⅓M_1ξ_{j_0}/L at interface faces).
 Constants. B_0, δ_0, K_1 = 2(3d + 1)c_hL²B_0, c_1(θ), C_pt, C_𝒟^in: unchanged. Per-step factor: K_1c_1(θ)/M_1 (was /M). Threshold: M_1 ≥ M_37 (was M ≥ M_37). The regularity smallness (H1), O(1)Mα_0 ≤ a_1, is unchanged; no rescaling α_0 → (M/M_1)α_0 is needed, because the local operators see the cube size only through □̃^5 ⊂ (a class cube) (7.2(b)).
 Proof. Run §3–§6 with M_1 for the cube size. (a) is the new cover. (b)(i): Ω_0(□) ⊂ □̃^5 needs only 2R_0M_0 ≤ M_1: by p. 408 [V], dist(Ω_0(□)^c, □̃^4) = 2R_0M_0η(L^j − 1)/(L − 1) < 2R_0M_0ξ_j, and □̃^5 ∖ □̃^4 has width M_1ξ_j. (b)(ii) is (G-M1). (c) is the first line of (7.3.1). Lemma AG step (v) needs RMξ_{j+1} > 4M_1ξ_j, weaker than before. Lemma K uses |∂h_□| ≤ c_hL/(M_1ξ_n), so K_1/M becomes K_1/M_1. Everything else is unchanged. ∎
 (G-M1) [I-geo]. For □ ∈ 𝒟^{(1)}_j, the cube □̃^5 (side 12M_1ξ_j ≤ Mξ_j) lies in one cube of the (3.35) class at scale M: a union of M-big blocks of side ≥ 10Mξ_j inside B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}) and meeting B^j(Λ_j). Reason: □̃^5 meets at most 2^d M-big blocks; B^j ∪ B^{j+1} has thickness ≥ RMξ_j ≥ 24Mξ_j in the normal direction of every interface (CMP 96 (2.2), R ≥ 24), so a 10M-cube containing these 2^d blocks fits inside, except next to Σ_j, where the gluing of 3.3 applies with α_0 → c(d)Lα_0. This is the same geometric reading as Balaban's p. 409 claim for M itself.

7.4 What this closes. The WG_FULL 0.3 input "M_1-cover [I/R: CMP 116 p. 3 asserts the M_1 version]" is reduced, for G′, to (G-M1) [I-geo] and the reading 7.2 of M_th. The CLOSURE_PLAN R36 task "show (3.35)–(3.36) at scale M give Thms 3.7–3.10 hypotheses on M_1-cubes" is done for Thm 3.7: (3.35) at scale M gives the local input on M_1-cubes by restriction, with no change of α_0.
