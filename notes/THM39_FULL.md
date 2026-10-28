# THM39_FULL — paper-grade write-out of CMP 99 Theorem 3.9 (walk expansion of C′ = (Q′G′²Q′*)^{−1})

Date: 2026-10-28. CLOSURE_PLAN top-5 item 2 (second of three); Table 1 row R2, with R36 (M_1 version) and R7 (complex form) for this operator.
Status: IN PROGRESS. Written one section at a time.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [R-full] printed with full proof; [R-sketch] printed sketch or proof by reference; [V] read on the page image in this session; [P] proved in this file or in a named project file; [I] reading or geometric fact not proved here.
No existing file is edited. The walk expansion of G′ (CMP 99 Thm 3.7, Cor. 3.8) is cited from THM37_FULL (parallel write-out) as input (T37); it is not re-proved here.

## Plan
- §1 The printed statement of Thm 3.9 (p. 413) and the printed sketch (pp. 411–413), with the cited CMP 96 (2.82)–(2.87); misprints.
- §2 Setting, hypotheses, and the statement proved here (Theorem 3.9-W).
- §3 Step A: a walk expansion of N̂ := S^{−1}Q′G′²Q′*S^{−1} from (T37). This is (H1) of A1-W.
- §4 Step B: a global lower bound N̂ ≥ γ_N (Lemma LB), by a covariant trial function. This is (H2) of A1-W. It replaces Balaban's Cor. 3.6 route.
- §5 Step C: A1-W's parametrix, Neumann series, walk terms, and bounds; undoing the rescaling to the (3.99) form; map to Balaban's (3.95)–(3.97).
- §6 The M_1 version (R36).
- §7 The complex form on 𝒰(α) (R7): reduction to one named step.
- §8 Ledger of inputs with IDs; the steps where this file is sharper than the printed text; open items.

## 1. The printed statement and the printed sketch [V: CMP 99 pp. 394, 396, 398, 400, 408–413 and CMP 96 pp. 236–238, page images read 2026-10-28 at 300 dpi]

1.1 The operator [V p. 394]. Δ′_a = (Δ^η_U + Q′*aQ′)↾Ω_0, with ⟨λ, Q′*aQ′λ⟩ = Σ_{j=0}^k a_j Σ_{y∈Λ_j}(L^jη)^{d−2}|(Q′_j(U)λ)(y)|² (3.24), a_{j+1} = aa_j/(aL^{−2} + a_j), a_0 = a_1 = a. G′ = (Δ′_a)^{−1} with Dirichlet conditions on ∂Ω_0. λ is a 𝔤-valued function on points (a gauge-transformation variable). Q′_j(U) is "the linear part of the averaging operation" for gauge transformations [V p. 394]. The projection R of (3.21) is Rf = (I − G′Q′*(Q′G′²Q′*)^{−1}Q′G′)f (3.25). Write N := Q′G′²Q′* and C′ := N^{−1}.

1.2 Hypothesis [V p. 396]. Regularity (3.35): for every cube □ of the class (index j; □ ⊂ B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}); size O(1)ML^jη, O(1) ≥ 10) there is u on □ with U^u = e^{iηA},
 |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2} on □. (3.35)
"For the operators introduced until now we need only the condition (3.35)" [V p. 396]. N and C′ are among these operators.

1.3 Theorem 3.2 [V p. 398, verbatim]. "Under the assumptions of Theorem 3.1, and with the same constants, the following inequality holds:
 |(Q′(U)G′²(U)Q′*(U))^{−1}(y, y′)| ≤ B_0(L^jη)^{−4}(L^{j′}η)^{−d}e^{−δ_0d(y,y′)}, y, y′ ∈ 𝔅 (y ∈ Λ_j, y′ ∈ Λ_{j′}). (3.48)"

1.4 The printed localization [V pp. 408–409]. The cover 𝒟, the partition of unity {h_□} with Σh_□² = 1, the cubes □̃^n, and the local sequences {Ω_n(□)} are as in THM37_FULL 1.4. "The operators constructed for this sequence, which we denote by G′_□(U), C_□(U) = (Q′(U)G′_□²(U)Q′*(U))^{−1}, G_□(U), satisfy all the inequalities of Theorems 3.1–3.3 correspondingly" (by Cor. 3.6). "The arguments will be almost identical to those in [4], so we will sketch them rather briefly." C_0 := Σ_□ h_□C_□h_□ (3.87).

1.5 The printed sketch [V p. 411, verbatim parts in quotes].
 "We will find an expansion of this operator as usual considering Q′G′²Q′*C_0. We write it in the same way as in (2.82) [4]:
 Q′G′²Q′*C_0 = I + Σ_□(1 − □̃)Q′G′²Q′*h_□C_□h_□ + Σ_□ □̃Q′(G′² − G′_□²)Q′*h_□C_□h_□ + Σ_□[□̃Q′G′_□²Q′*, h_□]C_□h_□ = I − R. (3.95)"
 "By the same estimates as in [4], especially (2.83)–(2.85), we can see that the operator R is small and
 (Q′G′Q′*)^{−1} = C_0(I − R)^{−1} = Σ_{n=0}^∞ C_0R^n. (3.96)"
 "The series is convergent in the weighted supremum norm on 𝔅 appearing in the inequality (3.48) in Theorem 3.2." This expansion still contains the non-local G′. Balaban then (pp. 411–412) re-expands each G′ by (3.90), built for a partition 𝒟′ modified near □ (□ replaced by □̃² or □̃_1², cubes meeting it removed), and regroups:
 (a) first sum: factors K(h′)G′h′ carry O(M^{−1}); the three factors h′G′h, h C h without small factors get one from the separation 1 − □̃ ("e^{−(1/4)δ_0M} ≥ 3!(1/4δ_0M)^{−3}, and we attach the factor 8δ_0^{−1}M^{−1} to each of the three operators");
 (b) second sum, if one K(h′)G′h′ occurs: each h′G′h′ and h C h is attached to a closest K-factor ("At a worst case we have three operators attached to one operator K(h′_{□2})G′_{□2}h′_{□2}");
 (c) second sum, no K-factor: only □′ = □_0, giving □̃Q′h′G′_{□0}h′²G′_{□0}h′Q′hCh = □̃Q′[G′_{□0}, h′²]G′_{□0}Q′*hCh + □̃Q′G′²_{□0}Q′*hCh; "The commutator in the first term gives O(M^{−1})";
 (d) the remainder □̃Q′(G′²_{□0} − G′²_□)Q′*h_□C_□h_□ (3.97) is bounded by "the usual factors multiplied by e^{−2δ_0M}" using a domain-change estimate "proved in [2]" (CMP 89) "using only the random walk expansions", extended "by an argument similar to the one used in the proof of Corollary 3.5"; "This exponential can be estimated by (2δ_0M)^{−1}";
 (e) "terms in the third sum on the right-hand side of (3.95) are already localized and give small factors O(M^{−1})".
 Factors are named R′_α(X); X is "a union of a connected, finite family of cubes from 𝒟"; "A biggest is connected with operators localized in □_0, which is a sum of 5^d cubes"; "R′_0(□) = h_□C_□h_□, R′_0(X) = 0 for localization domains bigger than a cube". R(X) "is localized in X, i.e. its kernel has a support in X × X, it depends on U restricted to X̃^5, and satisfies a bound of the type (3.89) … It is difficult to make the last statement more precise. Instead we will write a bound for a whole term" [V p. 413].

1.6 Theorem 3.9 [V p. 413, verbatim]. "For M sufficiently large, and a configuration U satisfying (3.35), the operator Q′G′²Q′* has an inverse which can be represented as
 (Q′G′²Q′*)^{−1} = Σ_ω R′_0(X_0)R′_{α_1}(X_1)···R′_{α_n}(X_n) (3.98)
 the sum is over walks ω = ((0, X_0), (α_1, X_1), …, (α_n, X_n)) satisfying X_{i−1} ∩ X_i ≠ ∅, i = 1, …, n. A term in this expansion corresponding to a walk ω depends on U restricted to X̃_0^5 ∪ X̃_1^5 ∪ … ∪ X̃_n^5, and has the following bound:
 |(R′_0(X_0)R′_{α_1}(X_1)···R′_{α_n}(X_n))(y, y′)| ≤ O(1)(L^jη)^{−4}(L^{j′}η)^{−d}·O(M^{−1/2})^{|ω|}M^{−½|ω|}e^{−½δ_0d(ω,y,y′)}, y ∈ Λ_j, y′ ∈ Λ_{j′}. (3.99)
 The distance d(ω, y, y′) is defined by (3.93), but the infimum is taken over y_i ∈ X_i ∩ 𝔅."
 After it [V]: factors "act between different scales … not all combinations of indices α_i are admissible … it does not affect bounds." "This theorem implies Theorem 3.2."

1.7 The cited template, CMP 96 (2.82)–(2.87) [V pp. 237–238]. U = 1. (2.82) has the main sum Σh_□(□Q′G′(□̃)²Q′*□)C_□h_□ and three error sums: commutator [h_□, □Q′G′(□̃)²Q′*□]C_□h_□, domain change □Q′(G′(□̃)² − G′²)Q′*h_□C_□h_□, and separation Σ_{□′≠□}(□ − 1)h²_{□′}Q′G′²Q′*h_□C_□h_□. (2.83)–(2.84): separation ≤ O(1)e^{−⅛δ_0M}e^{−½δ_1d(□,□′)}; domain change carries e^{−δ_0M} "because of the usual estimate of the type (1.12) [3]"; commutator O(M^{−1}); (2.85) |R(y, y′)| ≤ O(M^{−1})e^{−δ_1d(y,y′)}(L^{j′}η)^{−d}; Prop. 2.3 (2.86)–(2.87): (Q′G′²Q′*)^{−1} = Σ_n CR^n with |(Q′G′²Q′*)^{−1}(y, y′)| ≤ O(1)(L^jη)^{−4}(L^{j′}η)^{−d}e^{−½δ_1d(y,y′)}. The local inverse C_□ comes from the U = 1 lower bound (2.72)–(2.78): Bessel, then the Fourier formula (2.75) and Q′_jG′_jQ′_j* ≥ 2γ_0 (2.76), then |C_□(y, y′)| ≤ O(1)(L^jη)^{−d−4}e^{−δ_1|…|} (2.79)–(2.81), δ_1 depending on δ_0 and γ_0.

1.8 Misprints and gaps in the printed text [V].
 (M1) (3.96) prints (Q′G′Q′*)^{−1}; the square is missing. It must be (Q′G′²Q′*)^{−1}.
 (M2) p. 411 prints "e^{−(1/4)δ_0M} ≥ 3!(1/4δ_0M)^{−3}". The inequality is reversed: e^{−x} ≤ 3!x^{−3} for x > 0.
 (M3) p. 412 prints "□̃Q′h′G′h′²G′h′Q′h_□C_□h_□"; the last Q′ must be Q′*.
 (M4) "restructed" for "restricted" in Thm 3.9 (typographic).
 (G1) The hypothesis "Mα_0 small" is not in the statement; it is needed (Cor. 3.6 needs O(1)Mα_0 ≤ a_1). We add it.
 (G2) The domain-change estimate for (3.97) is cited to CMP 89 and Cor. 3.5 "by an argument similar"; it is not written.
 (G3) No single-factor bound is stated ("difficult to make … more precise"); the whole-term bound (3.99) is stated without proof.
 (G4) The local inverses C_□ rest on Cor. 3.6, which rests on Cor. 3.5 (perturbation from U = 1) and CMP 96 Prop. 2.3. Their lower-bound input is the U = 1 Fourier bound (2.76).

## 2. Setting, hypotheses, and the statement proved here

2.1 Spaces and kernels [as A1_WALK_FULL 0.1; SOURCES_A1_KERNEL §5]. 𝔅 = ∪_jΛ_j (finite). For y ∈ Λ_j: Δ(y) = B^j(y), μ(y) := (L^jη)^d, s(y) := (L^jη)². ℋ := ℓ²(𝔅, μ) (CMP 96 (2.69) [V]). Kernels are taken with respect to μ: (Tf)(y) = Σ_{y′}μ(y′)t(y, y′)f(y′). m(y, y′) := (μ(y)μ(y′))^{−1/2}. The fine space is 𝒦 := ℓ²(Ω_0, η^d; 𝔤). Q′: 𝒦 → ℋ and Q′* is its adjoint. S := multiplication by s on ℋ. d is the metric of CMP 96 (2.46). θ_L := log L/(RM). Scale conversion [P, SOURCES_A1_KERNEL §5]: for y ∈ Λ_j, y′ ∈ Λ_{j′} and real p, L^{p(j−j′)} ≤ L^{|p|}e^{|p|θ_Ld(y,y′)}. c_1(κ) := sup_ySΣ_{y′}e^{−κd(y,y′)} and Σ(κ) are as in A1_WALK_FULL 0.1; both are finite and volume-uniform by CMP 96 Lemma 2.1 under (2.59) [R-full].
 Walks of domains, |ω|, the path length d(ω, y, y′) (inf over x_i ∈ X_i ∩ 𝔅, with x_0 ∈ X_0), (D1), (D2), and the walk-expansion conditions (L1), (L2), (B1), (B2) are as in A1_WALK_FULL 0.2 and 1.2. A domain X is a subset of the fine lattice that is a connected union of cubes of 𝒟; X ∩ 𝔅 := {y : Δ(y) ⊂ X}. Remark: Balaban's (3.93) takes no x_0 and requires y ∈ □_0. For y ∈ X_0 the two infima agree (take x_0 = y; the reverse inequality is the triangle inequality).
 Domains are listed in the enlarged form X → X⁺ of WG_FULL 0.4. This gives the ⅓M_1 band of (L1) for kernels supported in X × X, with the local margin c_loc of WG_FULL (I7). We use this convention without further mention.

2.2 Structural readings [I]. These are the readings of the earlier write-outs, restated for Q′.
 (I-Q) For y ∈ Λ_j, (Q′λ)(y) = (Q′_jλ)(y) = L^{−jd}Σ_{x∈Δ(y)}R(U(Γ_{y,x}))λ(x), with contours Γ_{y,x} ⊂ Δ(y) of η-length ≤ c_Γ(d)L^jη. Evidence: the a-term of (3.88) [V p. 409] is exactly a_j(L^jη)^{−2}Q′_j*Q′_j in this form; CMP 96 (2.39) [V, THM37_FULL 2.2] has the same form at U = 1. Uniform weights L^{−jd} are the reading; §4 uses only "nonnegative weights on Δ(y) with sum 1 and the bump average ≥ c_φ".
 (I-B) The blocks Δ(y), y ∈ 𝔅, are pairwise disjoint and contained in Ω_0. Each block Δ(y), y ∈ Λ_j, together with its one-step η-neighbourhood, lies in a cube □(y) of the (3.35) class whose index is j or j − 1 [I, cube geometry of CMP 99 p. 396].
 Consequence of (I-Q) [P]. For ω ∈ ℋ and x ∈ Δ(y): (Q′*ω)(x) = R(U(Γ_{y,x}))^{−1}ω(y). Proof: ⟨Q′λ, ω⟩_ℋ = Σ_yμ(y)L^{−jd}Σ_{x∈Δ(y)}⟨R(U(Γ_{y,x}))λ(x), ω(y)⟩ = η^dΣ_x⟨λ(x), R(U(Γ_{y,x}))^{−1}ω(y)⟩, since μ(y)L^{−jd} = η^d and R(·) is orthogonal on 𝔤. ∎ Hence |Q′*ω|_∞ on Δ(y) equals |ω(y)|, and |Q′λ(y)| ≤ sup_{Δ(y)}|λ|. Also Q′*aQ′ = Q′*(aS^{−1})Q′ with a := a_j on Λ_j, by (3.24); and a_j ≤ a for all j, since a_{j+1} = a·a_j/(aL^{−2} + a_j) < a.

2.3 Input (T37) [cite THM37_FULL §1.6–§1.8, §5, §7; R-sketch at the source]. For real U with (3.35) and O(1)Mα_0 ≤ a_37(d, L): G′ = Σ_{ω∈𝒲′}G′_ω, ω = (□_0, …, □_n), □_i ∈ 𝒟, □_{i−1} ∩ □_i ≠ ∅, G′_ω := h_{□_0}G′_{□_0}h_{□_0}Π_{i=1}^nK(h_{□_i})G′_{□_i}h_{□_i}, with:
 (T37a) the kernel of G′_ω is supported in □_0 × □_n (end factors h_{□_0}, h_{□_n}); every factor is supported in □_i × □_i up to the local range c_loc;
 (T37b) G′_ω depends on U only on ∪_i□̃_i^5;
 (T37c) |1_{Δ(y)}G′_ω1_{Δ(y′)}λ|_∞ ≤ B′(L^jη)²ρ′^{|ω|}e^{−δ′d(ω,y,y′)}|λ|_∞, y ∈ Λ_j; printed (3.94): ρ′ = c′M^{−1} (from O(M^{−1/2})M^{−1/2}) and δ′ = ½δ_0; M_1 version: ρ′ = c′M_1^{−1} (THM37_FULL §7);
 (T37d) every cube meets at most C_37(d) cubes of 𝒟, and C_37c_1(½θδ′)ρ′ ≤ ¼ for M_1 large;
 (T37e) G′ is real symmetric and positive on 𝒦 (U real).
 For the complex form (§7) we use in addition (T37-c): the same at complex U′U ∈ 𝒰(b) with analytic terms (THM37_FULL §8, R7).

2.4 Theorem 3.9-W (what is proved here). Let U be real with (3.35) and O(1)Mα_0 ≤ min{a_37, a_LB}, a_LB(d, L) of §4. Fix θ := ½. Let RM be so large that θ_L ≤ δ′/(8(d + 4)) and CMP 96 (2.59) holds at every rate used below. Put N̂ := S^{−1}NS^{−1}. There are γ_N, ε, K_W, M_W depending only on (d, L, a) such that for M_1 ≥ M_W (in the CMP 99 setting M_1 = M):
 (i) N is invertible and C′ = Σ_ω S^{−1}T_ωS^{−1}, a walk expansion in the sense of A1_WALK_FULL 1.2. The factors are of three kinds: h_□C_□h_□ and E^com_□C_□h_□ on □⁺ (C_□ := local inverse, §5), and the walk factors of N̂ built in §3;
 (ii) |T_ω(y, y′)| ≤ (4/γ_N)(c_1ρ)^{|ω|}m(y, y′)e^{−½εd(ω,y,y′)}, c_1 := c_1(½ε), ρ ≤ K_W/M_1;
 (iii) T_ω depends on U only on ∪_iX̃_i^5;
 (iv) Σ_ω|T_ω(y, y′)| ≤ (8C_𝒟/γ_N)m(y, y′)e^{−½εd(y,y′)};
 (v) (3.99) form: |(S^{−1}T_ωS^{−1})(y, y′)| ≤ (4/γ_N)L^{|2−d/2|}(L^jη)^{−4}(L^{j′}η)^{−d}(c_1ρ)^{|ω|}e^{−(½ε − |2−d/2|θ_L)d(ω,y,y′)};
 (vi) (3.48) form (Thm 3.2): |C′(y, y′)| ≤ (8C_𝒟/γ_N)L^{|2−d/2|}(L^jη)^{−4}(L^{j′}η)^{−d}e^{−(½ε − |2−d/2|θ_L)d(y,y′)}.
 All constants are uniform in U (with the hypothesis), j, k, η, {Ω_j}, and the volume. The rate ½ε is a fixed positive number. It is not Balaban's ½δ_0 (§8.3).

