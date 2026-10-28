# THM39_FULL — paper-grade write-out of CMP 99 Theorem 3.9 (walk expansion of C′ = (Q′G′²Q′*)^{−1})

Date: 2026-10-28. CLOSURE_PLAN top-5 item 2 (second of three); Table 1 row R2, with R36 (M_1 version) and R7 (complex form) for this operator.
Status: author write-out complete 2026-10-28; verified 2026-10-28 (THM39_FULL_VERIFY V1–V7, NEEDS FIXES, minor); fixes applied 2026-10-28 (change log at end); (AL) check applied 2026-10-28: (AL) → (AL′) [P rel. CMP 98 Prop. 2 [V]], (AL-c) REDUCED; F19 fixes applied 2026-10-28 (change log).
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
 (M4) "restructed" for "restricted" in Thm 3.9 (typographic); also "expanson" p. 412.
 (M5) p. 412 says "with Ω_0 contained in a cube for which the condition (3.25) is satisfied". (3.25) is the definition of R; it must be (3.35) [V, THM39_FULL_VERIFY V2].
 Standing hypothesis, not a gap [V p. 396]: "We will need α_0 so small that O(1)Mα_0 is still a sufficiently small number." So "Mα_0 small" is in force for all of Sect. 3, Thm 3.9 included. This file states it explicitly (2.4).
 (G2) The domain-change estimate for (3.97) is cited to CMP 89 and Cor. 3.5 "by an argument similar"; it is not written.
 (G3) No single-factor bound is stated ("difficult to make … more precise"); the whole-term bound (3.99) is stated without proof.
 (G4) The local inverses C_□ rest on Cor. 3.6, which rests on Cor. 3.5 (perturbation from U = 1) and CMP 96 Prop. 2.3. Their lower-bound input is the U = 1 Fourier bound (2.76).

## 2. Setting, hypotheses, and the statement proved here

2.1 Spaces and kernels [as A1_WALK_FULL 0.1; SOURCES_A1_KERNEL §5]. 𝔅 = ∪_jΛ_j (finite). For y ∈ Λ_j: Δ(y) = B^j(y), μ(y) := (L^jη)^d, s(y) := (L^jη)². ℋ := ℓ²(𝔅, μ) (CMP 96 (2.69) [V]). Kernels are taken with respect to μ: (Tf)(y) = Σ_{y′}μ(y′)t(y, y′)f(y′). m(y, y′) := (μ(y)μ(y′))^{−1/2}. The fine space is 𝒦 := ℓ²(Ω_0, η^d; 𝔤). Q′: 𝒦 → ℋ and Q′* is its adjoint. S := multiplication by s on ℋ. d is the metric of CMP 96 (2.46). θ_L := log L/(RM). Scale conversion [P, SOURCES_A1_KERNEL §5]: for y ∈ Λ_j, y′ ∈ Λ_{j′} and real p, L^{p(j−j′)} ≤ L^{|p|}e^{|p|θ_Ld(y,y′)}. c_1(κ) := sup_yΣ_{y′}e^{−κd(y,y′)} and Σ(κ) are as in A1_WALK_FULL 0.1; both are finite and volume-uniform by CMP 96 Lemma 2.1 under (2.59) [R-full].
 Walks of domains, |ω|, the path length d(ω, y, y′) (inf over x_i ∈ X_i ∩ 𝔅, with x_0 ∈ X_0), (D1), (D2), and the walk-expansion conditions (L1), (L2), (B1), (B2) are as in A1_WALK_FULL 0.2 and 1.2. A domain X is a subset of the fine lattice that is a connected union of cubes of 𝒟; X ∩ 𝔅 := {y : Δ(y) ⊂ X}. Remark: Balaban's (3.93) takes no x_0 and requires y ∈ □_0. For y ∈ X_0 the two infima agree (take x_0 = y; the reverse inequality is the triangle inequality).
 Domains are listed in the enlarged form X → X⁺ of WG_FULL 0.4. This gives the ⅓M_1 band of (L1) for kernels supported in X × X, with the local margin c_loc of WG_FULL (I7). We use this convention without further mention.

2.2 Structural readings [I]. These are the readings of the earlier write-outs, restated for Q′.
 (I-Q) For y ∈ Λ_j, (Q′λ)(y) = (Q′_jλ)(y) = L^{−jd}Σ_{x∈Δ(y)}R(U(Γ_{y,x}))λ(x), with contours Γ_{y,x} ⊂ Δ(y) of η-length ≤ c_Γ(d)L^jη. Correction [V: CMP 98 (64), (70), (77)–(80), pp. 29–30, via THM39_FULL_VERIFY V1]: Q′_j is block-diagonal with uniform weights L^{−d} per step (composite weight L^{−jd}), but the transport is U(Γ^{(j)}_{y,x}) := Ū^{j−1}(Γ_{x_j,x_{j−1}})···Ū^1(Γ_{x_2,x_1})U(Γ_{x_1,x}), a product of averaged links Ū^i on level-i axial contours (each ≤ dL level-i bonds), not a fine holonomy. Averaged links are G-valued and transform as Ū^i_b → u(b_−)Ū^i_bu(b_+)^{−1} (CMP 98 (70)). Below, "U(Γ_{y,x})" means this composite transport. Block-diagonality is [V]; the transport form is [V]; the small-field bound it needs is (AL′) of 4.4. Evidence: the a-term of (3.88) [V p. 409] is exactly a_j(L^jη)^{−2}Q′_j*Q′_j in this form; CMP 96 (2.39) [V, THM37_FULL 2.2] has the same form at U = 1. Uniform weights L^{−jd} are the reading; §4 uses only "nonnegative weights on Δ(y) with sum 1 and the bump average ≥ c_φ".
 (I-B) The blocks Δ(y), y ∈ 𝔅, partition Ω_0 (they are pairwise disjoint and their union is Ω_0). Each block Δ(y), y ∈ Λ_j, together with its one-step η-neighbourhood, lies in a cube □(y) of the (3.35) class whose index is j or j − 1 [I, cube geometry of CMP 99 p. 396].
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
 Output rate in Balaban's (3.99) normalization: ½ε − |2 − d/2|θ_L (= ½ε at d = 4; ≥ ¼ε when RM ≥ 4(d + 4)log L/ε). The rate ½ε holds only in the rescaled form (ii). Consumer: WG_FULL (I3) quotes C′ in the (3.99) normalization, so its common rate must be ≤ ½ε − |2 − d/2|θ_L, or it must take C′ in the rescaled form (ii). Pending: that edit to WG_FULL waits for the Thm 3.7/3.10 verifiers [THM39_FULL_VERIFY V6].

## 3. Step A: the walk expansion of N̂ (hypothesis (H1) of A1-W) [P given (T37), (I-Q), (I-B)]

3.1 Expansion of G′². By (T37) and finite dimension, G′² = Σ_{(ω_1,ω_2)∈𝒲′×𝒲′}G′_{ω_1}G′_{ω_2}, absolutely convergent entrywise. Write ω_1 = (□_0, …, □_n) and ω_2 = (□′_0, …, □′_m). G′_{ω_1} ends with h_{□_n}; G′_{ω_2} begins with h_{□′_0}. So G′_{ω_1}G′_{ω_2} = 0 unless supp h_{□_n} ∩ supp h_{□′_0} ≠ ∅, hence unless □_n ∩ □′_0 ≠ ∅.

3.2 Merged walks. For a non-vanishing pair put
 ω := ω_1 ⊔ ω_2 := ((p, □_0), …, (p, □_{n−1}), (J, □_n ∪ □′_0), (p, □′_1), …, (p, □′_m)).
Label p ("plain") marks a single cube. Label J ("junction") marks the merged domain; it records the ordered pair (□_n, □′_0). The junction factor is the product of the last factor of G′_{ω_1} and the first factor of G′_{ω_2}. □_n ∪ □′_0 is a connected union of two cubes of 𝒟, so it is an admissible domain (CMP 99 p. 413 [V]; CMP 116 p. 13 [V, via A1_WALK_FULL 6.7]). ω is a walk: neighbours of the junction domain meet □_n or □′_0. |ω| = n + m = |ω_1| + |ω_2|. The map (ω_1, ω_2) ↦ ω (with labels) is injective.
 Define N_ω := Q′G′_{ω_1}G′_{ω_2}Q′* and N̂_ω := S^{−1}N_ωS^{−1}. Q′ is attached to the first factor and Q′* to the last factor; S^{−1} is a multiplication and does not depend on U. Then N̂ = Σ_ωN̂_ω, absolutely convergent by 3.4 below and Lemma 1.1 of A1_WALK_FULL.

3.3 Locality.
 (L1) Each plain factor has kernel in □_i × □_i up to c_loc (T37a). The junction factor has kernel in □_n × □′_0 ⊂ X × X, X = □_n ∪ □′_0. The attached Q′, Q′* move supports by one block, i.e. within c_loc (I-Q). With the enlarged domains of 2.1 (WG_FULL 0.4), every factor satisfies the ⅓M_1 band, provided M_1 ≥ 3c_loc.
 (L2) A plain factor depends on U only on □̃_i^5 (T37b). The junction factor depends on U only on □̃_n^5 ∪ □̃′_0^5 ⊂ X̃^5. Q′(y) depends on U only on bonds of contours inside Δ(y) (I-Q), and Δ(y) ⊂ X⁺ when the kernel is nonzero. So N̂_ω depends on U only on ∪_iX̃_i^5.
 (B3) Every domain is the enlargement of one cube or of two intersecting cubes. So diam X̃^5 ≤ c_X^NM_1 with c_X^N = c(d).

3.4 The term bound (B1). Fix y ∈ Λ_j, y′ ∈ Λ_{j′}, and a unit vector e ∈ 𝔤. Insert 1 = Σ_{z∈𝔅}1_{Δ(z)} on 𝒦 between the two G′-terms (the blocks partition Ω_0, (I-B)). By 2.2, Q′*(1_{y′}e) is supported in Δ(y′) with sup norm 1. By (T37c) twice, and |Q′f(y)| ≤ sup_{Δ(y)}|f|:
 μ(y′)|n_ω(y, y′)| = |(N_ω1_{y′}e)(y)| ≤ Σ_z B′²(L^jη)²(L^{j_z}η)²ρ′^{|ω|}e^{−δ′[d(ω_1,y,z) + d(ω_2,z,y′)]}.
Only z with Δ(z) ⊂ □_n ∩ □′_0 contribute (T37a), so z lies in the junction domain. Two facts:
 (F1) d(ω_1, y, z) + d(ω_2, z, y′) ≥ d(ω, y, y′). Proof: take near-optimal points x_1, …, x_n for ω_1 (x_i ∈ □_i ∩ 𝔅) and x′_1, …, x′_m for ω_2. For ω choose z in the junction slot. By the triangle inequality d(x_{n−1}, z) ≤ d(x_{n−1}, x_n) + d(x_n, z). The other terms are unchanged. (For n = 0 the junction slot is the first slot and y itself is the start point.) ∎
 (F2) d(ω_2, z, y′) ≥ d(z, y′) by (D1).
With θ = ½: e^{−δ′[…]} ≤ e^{−½δ′d(ω,y,y′)}e^{−½δ′d(z,y′)}. By scale conversion, L^{2(j_z−j′)} ≤ L²e^{2θ_Ld(z,y′)}, and 2θ_L ≤ ¼δ′. Hence
 Σ_z (L^{j_z}η)²e^{−½δ′d(z,y′)} ≤ L²(L^{j′}η)²Σ_ze^{−¼δ′d(z,y′)} ≤ L²c_1(¼δ′)(L^{j′}η)².
Divide by μ(y′)s(y)s(y′) = μ(y′)(L^jη)²(L^{j′}η)². Then use μ(y′)^{−1} = m(y, y′)(μ(y)/μ(y′))^{1/2} ≤ m(y, y′)L^{d/2}e^{(d/2)θ_Ld(y,y′)} and (D1):
 |n̂_ω(y, y′)| ≤ b_G ρ_G^{|ω|} m(y, y′) e^{−δ_Gd(ω,y,y′)},
 b_G := B′²L^{2+d/2}c_1(¼δ′), ρ_G := ρ′, δ_G := ½δ′ − (d/2)θ_L ≥ (7/16)δ′.
The last inequality uses θ_L ≤ δ′/(8(d + 4)). The constants b_G and δ_G do not depend on M_1, M, U, j, k, η, or the volume. Lean: the junction sum is the pattern of `concat_two` in lean/YmLean/Concatenation.lean (one junction, rate split θ, constant a·b·c₁), here with the extra scale factor absorbed before the sum; the merged-walk inequality (F1) is not formalized.

3.5 Counting (B2). Given a prefix ending in X, the next pair (α, X′) is a plain cube meeting X (≤ C_37·c(d) choices, with c(d) the number of cubes in X) or a junction pair (□, □′) with □ meeting X and □′ meeting □ (≤ C_37²c(d) choices). With the enlargement factor of WG_FULL 0.4, C_𝒟^N := 5^dc(d)C_37(1 + C_37) bounds the branching, the number of domains through a point, and the set form of A1_WALK_FULL (H1)(B2) for sets of diameter ≤ D_+M_1 (after enlarging by the geometry constant of A1_WALK_FULL 5.6 [I, same item]). For M_1 ≥ 2C_𝒟^Nc′: C_𝒟^Nρ_G ≤ ½.

3.6 Conclusion. N̂ satisfies (H1) of A1_WALK_FULL 0.4 with (b_G, ρ_G = c′/M_1, δ_G, C_𝒟^N, c_X^N). N̂ is real symmetric (T37e). Remark: no V-junctions occur, so caveat WG-1 of A1_WALK_FULL 6.6 (α_0 ≤ c′M^{−1}M_1^{−10}) is not needed here; the per-step factor is c′/M_1 under Mα_0 ≤ a_37 alone.

## 4. Step B: the global lower bound (hypothesis (H2) of A1-W) [P given (I-Q), (I-B), (3.35), (3.50)–(3.51)]

Lemma LB. Let U be real with (3.35) and Mα_0 ≤ a_LB(d, L). Then for every ω ∈ ℋ,
 ⟨ω, Nω⟩_ℋ ≥ γ_N⟨ω, S²ω⟩_ℋ, equivalently N̂ = S^{−1}NS^{−1} ≥ γ_N,
with γ_N := c_φ²/(4K_N) > 0 depending only on d, L, a, and the fixed O(1) = 12 of (3.35). The constants c_φ, K_N, a_LB are defined in the proof.

4.1 Variational step [P]. G′ is the inverse of the real symmetric positive operator Δ′_a on 𝒦 (T37e). So ⟨ω, Nω⟩ = ⟨Q′*ω, G′²Q′*ω⟩ = ‖G′Q′*ω‖². Let λ ∈ 𝒦 with g := Δ′_aλ ≠ 0. Then ⟨g, G′Q′*ω⟩ = ⟨G′g, Q′*ω⟩ = ⟨λ, Q′*ω⟩ = ⟨Q′λ, ω⟩_ℋ. By Cauchy–Schwarz,
 ⟨ω, Nω⟩ ≥ |⟨Q′λ, ω⟩_ℋ|² / ‖Δ′_aλ‖²_𝒦. (4.1)
So it suffices to build, for each ω, one trial λ with ⟨Q′λ, ω⟩ ≥ ½c_φ⟨ω, S²ω⟩ and ‖Δ′_aλ‖² ≤ K_N⟨ω, S²ω⟩. Then (4.1) gives ⟨ω, Nω⟩ ≥ (¼c_φ²/K_N)⟨ω, S²ω⟩.

4.2 The bump [P]. Fix ψ ∈ C^∞(ℝ^d), 0 ≤ ψ ≤ 1, ψ = 1 on [¼, ¾]^d, supp ψ ⊂ (⅛, ⅞)^d. For y ∈ Λ_j put ℓ := L^jη and ξ(x) := (x − x_y)/ℓ, x_y the lower corner of Δ(y). Define φ_y on the fine lattice by:
 - if L^j ≥ 8: φ_y(x) := ψ(ξ(x)). Then φ_y vanishes within ℓ/8 ≥ η of ∂Δ(y). By Taylor's formula, |∂^ηφ_y| ≤ ‖∇ψ‖_∞ℓ^{−1} and |Δ^ηφ_y| ≤ d‖∇²ψ‖_∞ℓ^{−2}. At least (L^j/4)^d points of Δ(y) lie in the region ψ = 1, so L^{−jd}Σ_xφ_y(x) ≥ 4^{−d};
 - if L^j < 8: φ_y := 1_{Δ(y)}. Then |∂^ηφ_y| ≤ η^{−1} < 8ℓ^{−1}, |Δ^ηφ_y| ≤ 2dη^{−2} < 128dℓ^{−2}, and the average is 1.
Put c_φ := 4^{−d} and K_φ := max{‖∇ψ‖_∞, d‖∇²ψ‖_∞, 128d}. Both depend on d only. Every bound holds at every fine point, including the points next to Δ(y).

4.3 The covariant trial function [P]. By (I-B) fix the cube □(y) ⊃ N(Δ(y)) (block plus one η-layer) and u_y on □(y) with U^{u_y} = e^{iηA}, A as in (3.35). Since the index of □(y) is j or j − 1, on □(y): |A| ≤ c_3Mα_0ℓ^{−1} and |∇^ηA| ≤ c_3Mα_0ℓ^{−2}, c_3 := 12L². Define, for x ∈ Δ(y),
 λ_y(x) := R(u_y(x))^{−1}φ_y(x)v_y, v_y := s(y)²R(u_y(y))ω(y),
and λ_y := 0 off Δ(y). Put λ := Σ_yλ_y. It is supported in ∪Δ(y) ⊂ Ω_0 (I-B), so Δ′_aλ = Ω_0(Δ_U + Q′*aQ′)λ.
 Covariance [V (3.33), (3.32) p. 396; I for the form of (3.31)]: Δ_{U^u} = R(u)Δ_UR(u^{−1}) and U^u(Γ) = u(start)U(Γ)u(end)^{−1}. Δ_U is nearest-neighbour, so on N(Δ(y)) only u_y on □(y) enters: (Δ_Uλ_y)(x) = R(u_y(x))^{−1}(Δ_{e^{iηA}}(φ_yv_y))(x).

4.4 The term ⟨Q′λ, ω⟩ [P]. Blocks are disjoint and Q′(y′) sees only Δ(y′) (I-Q), so (Q′λ)(y) = (Q′λ_y)(y). By covariance, R(U(Γ_{y,x}))R(u_y(x))^{−1} = R(u_y(y))^{−1}R(U^{u_y}(Γ_{y,x})). Hence
 (Q′λ)(y) = R(u_y(y))^{−1}M_yR(u_y(y))s(y)²ω(y), M_y := L^{−jd}Σ_{x∈Δ(y)}φ_y(x)R(e^{iηA}(Γ_{y,x})).
Each R(·) is orthogonal, so ‖M_y‖ ≤ 1. The transport is the composite of averaged links (2.2 (I-Q) correction), so the bound needs one input:
 (AL′) [P rel. CMP 98 Prop. 2 [V: (52)–(54), p. 26, statement and proof read on the image, SOURCES_F19_WGRATE_VERIFY A1] and the reading "U(c) in CMP 98 (15) is the product of the L finer links of c" [I]; form of Ū^i: CMP 98 (15), (64), (69)–(70), (77)–(80), pp. 19, 29–30 [V, THM39_FULL_VERIFY V1 and "(AL) check"]]. Let U = e^{iηA} on □(y) with (3.35) at scale ℓ = L^jη (|A| ≤ c_3Mα_0ℓ^{−1}, |∇^ηA| ≤ c_3Mα_0ℓ^{−2}) and Mα_0 ≤ a_AL := min{1, c_2/c_P, 1/(4A_Lc_P)}, with A_L := 4d(d + 1)L², c_P := 2c_3 + 6e²c_3², and c_2 = c_2(d, L) = min{1/(3C_0), ½c′_2} the range constant of CMP 98 Prop. 2. Then for 0 ≤ i ≤ j and every level-i bond b ⊂ Δ(y) (Ū^0 = U):
 W_i := sup_b|Ū^i_b − 1| ≤ K′L^iη·Mα_0/ℓ, K′ := c_3 + πA_Lc_P/(L(L − 1)).
 K′ depends on (d, L) only (K′ = O(d²L⁴) through c_3²), not on j, M, or η.
 Proof. (a) Fine curvature [P]. A_1 − A_3 and A_2 − A_4 are O(η|∇^ηA|), and |e^Xe^Y − e^{X+Y}| ≤ |X||Y|e^{|X|+|Y|}. So for a fine plaquette p ⊂ □(y), |U(∂p) − 1| ≤ 2η²|∇^ηA| + 6e²η²|A|² ≤ c_PMα_0(η/ℓ)² (Mα_0 ≤ 1). This is CMP 98 (52) in ℓ-units with α̃ := c_PMα_0 and η̃ = L^{−j}.
 (b) Curvature of averages [V: CMP 98 Prop. 2 / (53)]. If α̃ ≤ c_2, then |Ū^i(∂p) − 1| < 2α̃(L^iη/ℓ)² =: ε_i for every level-i plaquette p and i ≤ j. The proposition is local: it needs (52) only on the B^i-blocks of the corners of p (CMP 98 p. 26, last paragraph). By nesting these lie in Δ(y) ∪ N(Δ(y)) ⊂ □(y).
 (c) One step [P]. Write Ū^{i+1}_c = e^{iY_c}Ū^i(c), Y_c := Σ_xL^{−d}(1/i)log g_x, g_x := Ū^i(Γ_{c,x})Ū^i(c)^{−1}, where Ū^i(c) is the product of the L level-i links of c [I, reading of (15)]. Each g_x is the holonomy of a closed level-i loop of length ≤ P := 2(d + 1)L. A cone of axial ladders from c− spans the loop with ≤ A_L level-i plaquettes. Lattice Stokes for unitary links writes g_x as a lasso product of conjugated plaquette holonomies. Conjugation by unitaries keeps the norm, and |Πg_k − 1| ≤ Σ|g_k − 1|. So |g_x − 1| ≤ A_Lε_i. Since ε_i ≤ 2c_PMα_0 and Mα_0 ≤ 1/(4A_Lc_P), A_Lε_i ≤ ½, so |log g_x| ≤ (π/2)|g_x − 1|. The weights L^{−d} sum to 1, so |Y_c| ≤ (π/2)A_Lε_i. Hence
 W_{i+1} ≤ LW_i + (π/2)A_Lε_i.
 (d) Induction [P]. Put w_i := W_i/(L^iη). Then w_{i+1} ≤ w_i + πA_Lα̃L^{i−1}η/ℓ². With w_0 ≤ |A| ≤ c_3Mα_0/ℓ and Σ_{i<j}L^iη ≤ ℓ/(L − 1): w_i ≤ (c_3 + πA_Lc_P/(L(L − 1)))Mα_0/ℓ = K′Mα_0/ℓ. ∎
 The curvature source is summable because ε_i scales as (L^iη)², one power of L^iη more than the link bound. This is the mechanism of Prop. 2 applied to links.
 Why sup|A| alone is not enough. The triangle inequality on (15) gives only |Ū^{i+1} − 1| ≤ (2d + 3)L·sup|Ū^i − 1|, so the constant grows as (2d + 3)^i and is not uniform in i (j is unbounded). The earlier form (AL) of this file (sup|A| only) is UNSUPPORTED and is replaced by (AL′). CMP 98 (124)–(146) and A18 Lemma Q do not give it: (146) is a gauge-invariant domination bound, and Lemma Q step (3) assumes a link bound of this type as its input I-Q1 (axial gauge).
 Note (A18). (AL′) supplies A18 Lemma Q's input I-Q1 (SOURCES_A18_REGULAR 6.1) only for its corollary (b) (A3-R2, the (3.35) gauge), with α → Mα_0. There the factor is K′/c_3 = 1 + πA_Lc_P/(c_3L(L − 1)) = O(d²L²), not 2. Corollary (a) (axial gauge) needs the variant (AL′-ax) below. Also needed here: the corridors of the averaged links in Γ^{(j)}_{y,x} lie in □(y) (they lie in Δ(y) plus at most a boundary corridor, covered by the η-layer of □(y)).
 (AL′-ax) [P rel. CMP 98 Prop. 2 [V] and the (15) reading [I]; SOURCES_F19_WGRATE_VERIFY A5 gives the constant]. Setting of A18 Lemma Q: units L^kη = 1, |U(∂p) − 1| < αη² for the fine plaquettes of N(c), and U replaced by U^u in the complete axial gauge from the centre of N(c). Let α ≤ a_ax := min{c_2, 1/(4A_L)}. Then for 0 ≤ i ≤ k and every level-i bond b of N(c):
 W_i := sup_b|Ū^i_b(U^u) − 1| ≤ K″αL^iη, K″ := 2d² + πA_L/(L(L − 1)).
 K″ depends on (d, L) only. Proof. The four steps of (AL′), with ℓ = 1 and U^u in place of e^{iηA}.
 (a) Fine curvature [P]. The hypothesis is CMP 98 (52) with α̃ := α and η̃ = η. It is gauge invariant, so it holds for U^u. No step from |A|, |∇A| is needed.
 (b) Curvature of averages [V: CMP 98 Prop. 2 / (53)]. α ≤ c_2 gives |Ū^i(∂p) − 1| < 2α(L^iη)² =: ε_i for every level-i plaquette p of N(c), i ≤ k. Covariance (Ū^u)_c = u(c−)Ū_cu^{−1}(c+) (CMP 98 p. 24) makes Ū^i(U^u) the gauge transform of Ū^i(U). The B^i-blocks of the corners lie in N(c) by nesting [I-geo, as (AL′)(b)].
 (c) One step [P]. As (AL′)(c): |g_x − 1| ≤ A_Lε_i, and ε_i ≤ 2α ≤ 1/(2A_L), so A_Lε_i ≤ ½ and |log g_x| ≤ (π/2)|g_x − 1|. So W_{i+1} ≤ LW_i + (π/2)A_Lε_i.
 (d) Induction [P]. Put w_i := W_i/(L^iη). Then w_{i+1} ≤ w_i + (π/2)A_L·2α(L^iη)²/(L^{i+1}η) = w_i + πA_LαL^{i−1}η. Lemma Q step (1) gives w_0 ≤ 2d²α (|U^u(b) − 1| ≤ 2d²αη on N(c)). With Σ_{i<k}L^iη ≤ L^kη/(L − 1) = 1/(L − 1): w_i ≤ (2d² + πA_L/(L(L − 1)))α = K″α. ∎
 Use in Lemma Q step (3). The transport along a level-j path of length ≤ dL·L^jη has ‖Ad − 1‖ ≤ 2·dL·K″αL^jη = 2dK″αL^{j+1−k}. Lemma Q's step-(1) bound gives 2·dL^{j+1−k}·2d²α. So the factor is c(d, L) := K″/(2d²) = 1 + πA_L/(2d²L(L − 1)), not 2. Only c_Q(d, L) changes; uniformity in k holds. With (AL′) for corollary (b) the factor is K′/c_3. A18 is not edited here (change log).
 Given (AL′) on □(y): |R(Ū(Γ^{(j)}_{y,x})) − I| ≤ Σ_{i=0}^{j−1}Σ_{b∈level-i contour}|R(Ū^i_b) − I| ≤ Σ_{i=0}^{j−1}dL·2K′L^iηMα_0/ℓ ≤ 2dK′(L/(L − 1))Mα_0 = K_ΓMα_0, K_Γ := 2d·K′·L/(L − 1). Here |R(g) − I| ≤ 2|g − 1| for the adjoint action, since |gXg^{−1} − X| ≤ 2|g − 1||X| for unitary g; there is no factor e. Level 0 is included: |U_b − 1| ≤ η|A| ≤ K′ηMα_0/ℓ. So ‖M_y − c_yI‖ ≤ K_ΓMα_0 with c_y := L^{−jd}Σφ_y ≥ c_φ. If K_ΓMα_0 ≤ ½c_φ, then
 ⟨(Q′λ)(y), ω(y)⟩ ≥ s(y)²(c_y − K_ΓMα_0)|ω(y)|² ≥ ½c_φs(y)²|ω(y)|², and ⟨Q′λ, ω⟩_ℋ ≥ ½c_φ⟨ω, S²ω⟩_ℋ.

4.5 The term ‖Δ′_aλ‖² [P].
 (a) Laplacian part. By (3.50)–(3.51) at U = 1, A′ = A [V p. 400]:
 Δ_{e^{iηA}}f = Δ^ηf − Σ_{b∈st(x)}i ad_{A(b)}(D f)(b) − i[(D*A)(x), f(x)] − Σ_{b∈st(x)}F′(i ad_{A(b)})f(b_+), F′(z) = z²∫_0^1(1 − t)e^{ηtz}dt.
 With f = φ_yv_y, |ad_A| ≤ 2|A|, |D*A| ≤ d|∇^ηA|, |F′(i ad_A)| ≤ 2|A|²e (η|A| ≤ ½), and 4.2:
 |(Δ_Uλ_y)(x)| ≤ (K_φ + K_AMα_0)ℓ^{−2}|v_y| =: K_Δℓ^{−2}|v_y| on N(Δ(y)), and 0 elsewhere, with K_A := 2d(2K_φc_3 + c_3 + 4ec_3²) for Mα_0 ≤ 1.
 #N(Δ(y)) ≤ 3^d(ℓ/η)^d, and each fine point lies in N(Δ(y)) for at most 2d + 1 blocks y. So
 ‖Δ_Uλ‖²_𝒦 ≤ (2d + 1)η^dΣ_yΣ_x|Δ_Uλ_y(x)|² ≤ (2d + 1)3^dK_Δ²Σ_yμ(y)s(y)^{−2}|v_y|².
 (b) Averaging part. Q′*aQ′ = Q′*(aS^{−1})Q′ (2.2). |(aS^{−1}Q′λ)(y)| ≤ aℓ^{−2}|v_y|, since a_j ≤ a and ‖M_y‖ ≤ 1. By 2.2, Q′* of it has sup norm ≤ aℓ^{−2}|v_y| on Δ(y) and vanishes elsewhere. So ‖Q′*aQ′λ‖²_𝒦 ≤ Σ_y η^d(ℓ/η)^da²ℓ^{−4}|v_y|² = a²Σ_yμ(y)s(y)^{−2}|v_y|².
 (c) Sum. |v_y| = s(y)²|ω(y)|, so Σ_yμs^{−2}|v_y|² = ⟨ω, S²ω⟩. With ‖Ω_0f‖ ≤ ‖f‖ and (p + q)² ≤ 2p² + 2q²:
 ‖Δ′_aλ‖²_𝒦 ≤ K_N⟨ω, S²ω⟩, K_N := 2((2d + 1)3^dK_Δ² + a²).

4.6 Conclusion. Put a_LB := min{1, c_φ/(2K_Γ), 1/(2c_3), a_AL}, where c_φ/(2K_Γ) = c_φ(L − 1)/(4dK′L) (the third term gives η|A| ≤ ½; the last gives the (AL′) range, a_AL of 4.4). For Mα_0 ≤ a_LB, 4.1, 4.4, and 4.5 give ⟨ω, Nω⟩ ≥ γ_N⟨ω, S²ω⟩ with γ_N = c_φ²/(4K_N). Write u = Sω: ⟨u, N̂u⟩ = ⟨ω, Nω⟩ ≥ γ_N‖u‖². N̂ is real symmetric, so the bound holds for complex u as well (A1_WALK_FULL 8.2 remark). ∎

4.7 Remarks.
 (a) Only (3.35) on single blocks is used, and only through |A| and |∇^ηA|. The bound does not use Cor. 3.5/3.6, the U = 1 Fourier formula CMP 96 (2.75)–(2.76), or the walk expansion. It does not depend on M_1 or on M except through Mα_0 ≤ a_LB.
 (b) It is the scalar analogue of SOURCES_A1_KERNEL §8 (E^ms) for QGQ*. For scalars, Q′ is exactly block-diagonal (I-Q), so the bond-corridor items [I] of (E^ms) do not arise. Unlike (C) for G, (H2) for C′ is not conditional; it rests only on the readings (I-Q), (I-B).
 (c) The constant is not optimal. A1-W needs only uniformity.
 (d) Why the bump argument does not give (C) for QGQ* (1-forms) [THM39_FULL_VERIFY V3]. The variational step works the same way: ⟨ω, QGQ*ω⟩ ≥ |⟨Qλ, ω⟩|²/⟨λ, G^{−1}λ⟩, and the energy form is controlled by the S2 route Π, since R is an orthogonal projection. The failure is in the numerator. The 1-form average Q_j(c) is a straight-line corridor average over B(c_−) ∪ B(c_+). A μ-bond at axial position t in a block gets weight ≈ (t + 1)/L from row c and ≈ (L − 1 − t)/L from row c − Le_μ. So bump trial fields give a bidiagonal matrix with comparable entries a, b. Its symbol a + be^{ip} has modulus ≈ |a − b| ≈ 0 at p = π (checkerboard ω), so ⟨Qλ, ω⟩ has no diagonal dominance. Only the last bond layer of a block is seen by one row alone, and a bump there has gradient ~ η^{−1}, not ℓ^{−1}. For gauge functions Q′_j is exactly block-diagonal (2.2), so the cross term is zero. This is the precise difference. (C) is [P] by SOURCES_C_CONDITION (verified), via Theorem QE + Lemma T, not via a bump.

## 5. Step C: the parametrix and the walk expansion of C′ [P given §3, §4, and Theorem A1-W]

5.1 Hypotheses of A1-W are met. Theorem A1-W (A1_WALK_FULL 0.5) is stated for N̂ = S^{−1/2}QGQ*S^{−1/2}, but its proof (A1_WALK_FULL §1–§6) uses the operator only through (H1)–(H4). We check them for N̂ = S^{−1}Q′G′²Q′*S^{−1}:
 (H1) §3.6: constants (b_G, ρ_G = c′/M_1, δ_G, C_𝒟^N, c_X^N);
 (H2) §4: Re⟨u, N̂u⟩ ≥ γ_N‖u‖², c_− := γ_N;
 (H3) the geometry (G) of A1_WALK_FULL 2.1 on the M_1-cover [I, same items as there: cube cover, cores, h_□ Lipschitz with c_h/M_1 (open item O2)];
 (H4) the order of constants of 5.6 below. WG-1 is not part of it (3.6).
 Put δ_G^min := (7/16)δ′ (RM-free floor of δ_G, 3.4), c_+ := C_𝒟^Nb_G with b_G at the minimal RM of 5.6, and ε := min{½δ_G^min, γ_N/(8c_+Σ(½δ_G^min))}. Since δ_G ≥ δ_G^min and b_G, c_1(·), Σ(·) do not get worse as RM grows, every later use of "ε ≤ ½δ_G" and of these constants holds for all larger RM. So raising RM after ε (5.3, 5.6) does not change ε [fix per THM39_FULL_VERIFY V5].

5.2 The steps, with the objects of this file. We list each step of A1_WALK_FULL §2–§5, so the proof is complete with that file.
 (a) Truncation (A1_WALK_FULL 2.2). 𝒲_□ := merged walks ω with X̃_i^5 ⊂ □⁺ for all i. N̂^{(□)} := Σ_{ω∈𝒲_□}N̂_ω. N̂_□ := 1_□N̂^{(□)}1_□ on ℓ²(□, μ).
 (b) Lemma LT (A1_WALK_FULL 2.3). N̂_□ depends on U only on □⁺; |n̂_□| ≤ 2c_+me^{−δ_Gd}; |(n̂ − n̂^{(□)})(y, y′)| ≤ 2c_+e^{−δ_GM_1}me^{−¾δ_Gd} for y, y′ ∈ □; for M_1 ≥ M_a := (2δ_G)^{−1}log(4c_+Σ(½δ_G)/γ_N), Re⟨u, N̂_□u⟩ ≥ ½γ_N‖u‖² on ℓ²(□, μ). The last step restricts the global bound to vectors supported in □ and subtracts the truncation error; the restriction is `compression_lower` of lean/YmLean/SchurMarginal.lean [L] (stated for real block matrices; here N̂ is real symmetric).
 (c) Local inverses (A1_WALK_FULL 3.4). Lemma CT with c = ½γ_N, b = 2c_+, δ = δ_G gives C_□ := N̂_□^{−1}, ‖C_□‖_ε ≤ 4/γ_N, N̂_□C_□ = 1_□, C_□ depends on U only on □⁺. Formal part: `coercive_inv`, `combes_thomas` of lean/YmLean/CombesThomas.lean [L].
 (d) Parametrix (A1_WALK_FULL 4.1). P := Σ_□h_□C_□h_□. N̂P = I + Σ_□F_□, F_□ := (E^sep_□ + E^tr_□ + E^com_□)C_□h_□, with E^sep_□ := (1 − 1_□)N̂h_□, E^tr_□ := 1_□(N̂ − N̂^{(□)})1_□h_□, E^com_□ := [N̂_□, h_□]. The identity is algebraic.
 (e) Error bounds (A1_WALK_FULL 4.2–4.3). ‖E^sep_□‖_κ ≤ 2c_+Σ(¼δ_G)e^{−¼δ_GM_1}, ‖E^tr_□‖_κ ≤ 2c_+Σ(¼δ_G)e^{−δ_GM_1}, ‖E^com_□‖_κ ≤ 2c_+c_hΣ(¼δ_G)/M_1, for κ ≤ ½δ_G; ‖F_□‖_ε ≤ K_F/M_1 for M_1 ≥ M_e, K_F := (8c_+Σ(¼δ_G)/γ_N)(2 + c_h).
 (f) Neumann series (A1_WALK_FULL 5.1–5.2). ‖Σ_□F_□‖_{½ε} ≤ C_ovΣ(½ε)K_F/M_1 ≤ ½ for M_1 ≥ M_N. Then N̂^{−1} = P(I + F)^{−1} = Σ_nP(−F)^n (finite dimension: right inverse = inverse), ‖N̂^{−1}‖_{½ε} ≤ 8/γ_N. In particular N is invertible, which is the first claim of Thm 3.9.
 (g) Blocks and walk terms (A1_WALK_FULL 5.3–5.5). Blocks K_□ = h_□C_□h_□, Γ_□ = E^com_□C_□h_□, S_{□,ω′} = (1 − 1_□)N̂_{ω′}1_{□⁻}, R_{□,ω′} = 1_□N̂_{ω′}1_{□⁻} (ω′ ∉ 𝒲_□). T_ω := (−1)^nK_{□_0}Ψ_1···Ψ_n, Ψ_i ∈ {S K, R K, Γ}. The concatenation lemma (A1_WALK_FULL 5.4; `concat_list` of Concatenation.lean [L]) gives |T_ω| ≤ (4/γ_N)(c_1ρ)^{|ω|}me^{−½εd(ω)}, ρ := max{ρ_G, (4b_G/γ_N)^{1/2}e^{−⅛δ_GM_1}, ρ_com} ≤ K_W/M_1.
 (h) Counting and identification (A1_WALK_FULL 5.6–5.7). Branching ≤ C_W := 5C_𝒟^N. For M_1 ≥ M_W := max{2C_𝒟^Nc′, M_a, M_e′, M_N, M_c}: absolute convergence with Σ_ω|T_ω| ≤ (8C_𝒟^N/γ_N)me^{−½εd}, and Σ_ωT_ω = N̂^{−1}.
 This proves (i)–(iv) of Theorem 3.9-W, with C_𝒟 = C_𝒟^N.

5.3 Undoing the rescaling: (v) and (vi) [P]. C′ = N^{−1} = S^{−1}N̂^{−1}S^{−1} = Σ_ωS^{−1}T_ωS^{−1}. S^{−1} is a multiplication independent of U; attach it to the first and last factor. (L1), (L2), and the count do not change. The kernel bound becomes
 |(S^{−1}T_ωS^{−1})(y, y′)| ≤ (4/γ_N)(L^jη)^{−2−d/2}(L^{j′}η)^{−2−d/2}(c_1ρ)^{|ω|}e^{−½εd(ω,y,y′)}.
The ratio to Balaban's split is (L^jη)^{2−d/2}(L^{j′}η)^{d/2−2} = L^{(2−d/2)(j−j′)} ≤ L^{|2−d/2|}e^{|2−d/2|θ_Ld(y,y′)}, and d(y, y′) ≤ d(ω, y, y′). This gives (v). Summing with (iv) gives (vi), i.e. (3.48) with rate ½ε − |2 − d/2|θ_L > 0 (since θ_L ≤ δ′/(8(d + 4)) and ε ≤ ½δ_G, one may need RM ≥ 4(d + 4)log L/ε to keep half the rate; this is a condition on RM after ε, admissible as in A1_WALK_FULL 6.8).
 (3.99) factor form. As in A1_WALK_FULL 6.6: (c_1K_W/M_1)^{|ω|} = (c_1K_WM_1^{−1/2})^{|ω|}·M_1^{−½|ω|}, and for M_1 ≥ (2C_Wc_1K_W)² the first factor controls the sum over ω. This is O(M^{−1/2})^{|ω|}M^{−½|ω|} of (3.99) with M_1 in place of M.
 Kernel convention [I, as A1_WALK_FULL 6.8 and WG_FULL 0.2]: Balaban's kernel C′(y, y′) is read as the μ-kernel. Under the counting-measure reading the factor (L^{j′}η)^{−d} moves; the total power and the proof are unchanged.

5.4 Correspondence with the printed sketch.
 | Balaban (3.95)–(3.97) | here |
 |---|---|
 | C_□ = (Q′G′_□²Q′*)^{−1}, local domain sequence, via Cor. 3.6 | C_□ = N̂_□^{−1}, N̂_□ = truncated walk sum on □, via Lemma LB + Lemma LT(e) + Lemma CT |
 | (1 − □̃)Q′G′²Q′*h_□C_□h_□ (separation) | E^sep_□C_□h_□, size e^{−¼δ_GM_1} |
 | □̃Q′(G′² − G′_□²)Q′*h_□C_□h_□ (domain change; CMP 89, Cor. 3.5) | E^tr_□C_□h_□, walk truncation, size e^{−δ_GM_1}, from (B1) directly |
 | [□̃Q′G′_□²Q′*, h_□]C_□h_□ (commutator, O(M^{−1})) | E^com_□C_□h_□ = Γ_□, size c_h/M_1 |
 | re-expansion of G′ for a modified partition 𝒟′; grouping (a)–(d) of 1.5 | not needed: N̂_{ω′} enters as one block with its whole-term bound; each insertion carries its own small factor (A1_WALK_FULL 5.5) |
 | e^{−¼δ_0M} split as (8δ_0^{−1}M^{−1})³ over three operators | e^{−¼δ_GM_1} split as a square root over the two junction steps of an S-insertion (ρ of 5.2(g)) |
 | (3.96) series in the weighted sup norm | ‖·‖_{½ε} conjugation norm (A1_WALK_FULL 1.5), dominating the ℓ² norm and giving kernel decay by (N2) |
 The sketch's factor classes R′_α(X) are the blocks K_□, Γ_□, and the plain/junction factors of N̂_{ω′}. R′_0(□) = h_□C_□h_□ is our K_□ (the first block of every term is K_{□_0}), as printed.

5.5 Uniformity. Every constant is one of: (T37) constants B′, c′, δ′, C_37; γ_N (§4); geometric constants; c_1(·), Σ(·) (CMP 96 Lemma 2.1, [R-full]). None depends on U (within the hypothesis), j, k, η, {Ω_j}, or the volume. The volume enters only through finite dimension (5.2(f), (h)).

5.6 Order of constants. (d, L, a) → (T37): B′, c′, δ′, C_37, a_37 → minimal RM with θ_L ≤ δ′/(8(d + 4)) → γ_N, a_LB (§4; RM-free) → b_G, δ_G^min = (7/16)δ′, C_𝒟^N, c_X^N → ε (RM-free) → K_F, K_W, C_W → M_1 ≥ M_W (and M_1 ≥ (2C_Wc_1K_W)², M_1 ≥ 3c_loc) → M with R_1M_1 ≤ M and (2.59) at every rate used, RM ≥ 4(d + 4)log L/ε → α_0 with Mα_0 ≤ min{a_37, a_LB}. No loop.

## 6. The M_1 version (R36) [P given (T37) in its M_1 form]

6.1 Setting. In CMP 116 the walk cubes have size M_1 and M is the regularity and layer parameter, with R_1M_1 ≤ M (CMP 116 p. 3 [V, via WG_FULL 0.3]). Theorem 3.9-W is already written in this form: 𝒟 is the M_1-cover, and every threshold of 5.2 is a threshold on M_1.

6.2 What changes, step by step.
 (a) Input. (T37) in the M_1 form (THM37_FULL §7): per-step factor ρ′ = c′/M_1; B′, δ′, C_37 do not depend on M_1. The hypothesis on U is (3.35) at scale M with O(1)Mα_0 ≤ a_37; that (3.35) at scale M gives the local hypotheses on the □̃^5 of M_1-cubes is THM37_FULL's item, not this file's.
 (b) Step A (§3). b_G, δ_G, C_𝒟^N, c_X^N are M_1-free. ρ_G = c′/M_1. The band of (L1) needs M_1 ≥ 3c_loc.
 (c) Step B (§4). Lemma LB uses only blocks Δ(y) and the class cube that contains a block. It does not see M_1. γ_N is M_1-free and M-free. So (H2) needs no [I/R] reading of CMP 116.
 (d) Step C (§5). ε is M_1-free. The output step factor is ρ ≤ K_W/M_1, and the printed form O(M^{−1/2})^{|ω|}M^{−½|ω|} becomes O(M_1^{−1/2})^{|ω|}M_1^{−½|ω|} (5.3). This is the CMP 116 (1.7) form [V, via WG_FULL 0.3].
 (e) Conditions. M_1 ≥ max{M_W, (2C_Wc_1K_W)², 3c_loc}; then M with R_1M_1 ≤ M and the RM conditions of 5.6; then α_0. In contrast to G (A1_WALK_FULL (H4), WG-1), no condition α_0 ≤ c′M^{−1}M_1^{−10} is needed for C′.
 (f) Domains. The domains are enlarged M_1-cubes, enlarged unions of two intersecting M_1-cubes, and the □⁺ of A1-W. All are connected unions of M_1-cubes, so they are admissible for CMP 116 p. 13 [V, via A1_WALK_FULL 6.7]. Their X̃^5 have diameter ≤ c(d)M_1, which the s-rule needs (A1_WALK_FULL 9.3).

## 7. The complex form on 𝒰(α) (R7) [P given (T37-c)]

7.1 Domains [V CMP 99 pp. 396, 400; WC_FULL 6.0]. For b_1 > 0 let 𝒰(b_1) be the set of U′U with U real, (3.35), Mα_0 ≤ min{a_37, a_LB}, and U′ = e^{iηA′}, A′ ∈ 𝔤^c with |A′| < b_1(L^jη)^{−1}, |∇^η_UA′| < b_1(L^jη)^{−2} on Ω_j ((3.37)). The real point of U′U is U. The disc is U(t) := e^{itηA′}U. The A′-constraints are linear in t, so U(t) ∈ 𝒰(b_1) for |t| < b_1/a_1 when U′U ∈ 𝒰(a_1) (WC_FULL 6.0: at the level of Thm 3.4 only A′ is constrained). C′ does not depend on J, and (3.36), (3.38) are not used. At complex points "*" is the analytic continuation of the real adjoint (bilinear transpose); ⟨·,·⟩ stays sesquilinear.
 Theorem 3.4 [V p. 400, verbatim]: "There exists a positive constant a_1 such that the operators G′(U), (Q′(U)G′²(U)Q′*(U))^{−1}, R(U), G(U) extend to configurations U′U for α_1 ≤ a_1 as analytic functions of A. The extended operators satisfy all the inequalities of Theorems 3.1–3.3 correspondingly." It states analyticity and bounds, not a walk form. Its proof is not used here.

7.2 The one named input (T37-c) [THM37_FULL §8, R7; P pending its verification]. On 𝒰(b_1^{37}), G′(U′U) = Σ_ωG′_ω(U′U) with each term analytic in A′ and (T37a)–(T37d) with B′ replaced by B′^c = B′(1 + O(b_1^{37})) and the same ρ′, δ′.

7.3 Step A at complex points [P given (AL-c)]. The transports of Q′ are products of averaged links (2.2), and Ū^i involves logs, so Q′(U′U) is analytic in A′ only on a small-field domain. Input:
 (AL-c) [REDUCED: needs a complex-field form of CMP 98 Prop. 1/2 (Prop. 1 is stated for configurations with (44); whether (44) admits G^c-valued V was not checked on CMP 98 pp. 22–25), plus the recursion of (AL′)]. Constants. c_N(d, L) is the non-unitary conjugation constant: every conjugating factor h in the lattice-Stokes lasso product of (AL′)(c) and in the composite transport is a product of complex level-i links with ‖Ad(h)‖ ≤ e^{c_NdLb_1} [I; value not computed, canon slot needed]. c_P′ := 2 + 6e²(2c_3 + 1) is the A′-curvature constant: at U′U the fine plaquette has a non-unitary part ≤ 2η²|∇A′| + 6e²η²|A′|(2|A| + |A′|) ≤ c_P′b_1(η/ℓ)² for Mα_0, b_1 ≤ 1 (|A′| < b_1ℓ^{−1}, |∇_UA′| < b_1ℓ^{−2}; the A-only BCH terms are unitary). Put
  k_av^c := min{(log 2)/(c_NdL), c_2/(2c_P′), 1/(8A_Lc_P′)}, K_av := 2(1 + πA_Lc_P′/(L(L − 1))).
 Claim. For b_1 ≤ k_av^c and Mα_0 ≤ ½a_AL the averaged links Ū^i_b(U′U) are analytic in A′ on 𝒰(b_1) and |R(Ū^i_b(U′U))| ≤ e^{2K_avL^{i−j}b_1} on blocks of level j. Reduction: steps (a)–(d) of (AL′) run with complex U′U. Step (a) gives the real source c_PMα_0 and the A′ source c_P′b_1; both are ≤ ½c_2, so the complex Prop. 2 range α̃ ≤ c_2 holds, and A_L(ε_i + ε_i′) ≤ ½. Step (d) runs on the non-unitary part with w_0 ≤ |A′| ≤ b_1/ℓ and source πA_Lc_P′b_1L^{i−1}η/ℓ². The conjugating factors cost e^{c_NdLb_1} ≤ 2 for b_1 ≤ k_av^c; this is the factor 2 in K_av. The step "the non-unitary part of log of a product is linear in b_1 with an Mα_0-independent constant" holds to first order and is not shown [I]. Since c_3 ≥ 48, c_P′ < c_P and K_av ≤ 2K′; the former value 2K′ stays a valid upper bound. The real range is halved (Mα_0 ≤ ½a_AL) on the complex rows only; this joins the canon complex-domain line (B14/B20) after K′, with b_1^{37} ≤ k_av^c [canon slot needed].
 Given (AL-c), on a block |R(Ū(Γ^{(j)}_{y,x})(U′U))| ≤ Π_{i<j}e^{2dLK_avL^{i−j}b_1} ≤ e^{2c̄_Γb_1}, c̄_Γ := dK_avL/(L − 1). So |Q′f(y)| ≤ e^{2c̄_Γb_1}sup_{Δ(y)}|f| and the same for the transpose. §3 runs unchanged: N̂(U_c) = Σ_ωN̂_ω(U_c), each term analytic, with b_G^c := b_G(1 + O(b_1))·e^{4c̄_Γb_1}, the same ρ_G, δ_G, and C_𝒟^N. The radius b_1^{37} of 7.4 is taken ≤ k_av^c. Put c_+^c := C_𝒟^Nb_G^c and Γ_c := 2c_+^cΣ(δ_G). Then ‖N̂_□(U_c)‖ ≤ Γ_c for every □ (Lemma LT(b) and (N3)).

7.4 Lemma AW for N̂ [P given 7.2–7.3 and A1_WALK_FULL 8.2–8.3]. The proof of Lemma AW (A1_WALK_FULL 8.3) uses: (i) an analytic walk expansion with (B1)–(B3) on the larger domain; (ii) the real global bound; (iii) M_1 ≥ M_a. Here (i) is 7.3, (ii) is Lemma LB at the real point U, and (iii) is 5.2(b). The truncated local operators N̂_□(U(t)) are analytic in t, bounded by Γ_c, and Re ≥ ½γ_N at t = 0. Lemma CP (A1_WALK_FULL 8.2) gives Re⟨u, N̂_□(U_c)u⟩ ≥ ¼γ_N‖u‖² on 𝒰(a_1), provided
 b_1/a_1 ≥ 1 + 4Γ_c/γ_N, i.e. a_1 ≤ k_{C′}b_1, k_{C′} := γ_N/(γ_N + 4Γ_c).
Then Lemma CT with c = ¼γ_N gives ‖C_□(U_c)‖_{ε^c} ≤ 8/γ_N, ε^c := min{½δ_G^min, γ_N/(16c_+^cΣ(½δ_G^min))} ≥ ½ε. §5.2(d)–(h) are algebraic or use only kernel bounds, the local inverse bound, and counting. So on 𝒰(k_{C′}b_1^{37}):
 C′(U_c) = Σ_ωS^{−1}T_ω(U_c)S^{−1}, |T_ω(U_c)| ≤ (8/γ_N)(c_1ρ^c)^{|ω|}m e^{−½ε^cd(ω)}, Σ_ω|T_ω| ≤ (16C_𝒟^N/γ_N)m e^{−½ε^cd},
with ρ^c ≤ 2K_W/M_1 and threshold M_W^c ≈ 2M_W. Each C_□(U_c) is analytic (Cramer's rule), so each T_ω is analytic, the series converges uniformly, and C′ is analytic on 𝒰(k_{C′}b_1^{37}). The (3.99) form follows as in 5.3; S is real, so undoing the rescaling is unchanged. N is not Hermitian at complex points; Lemma LB is used only at the real point.

7.5 Place in the chain [P for the mechanism; WC_FULL 6.0–6.4, A1_WALK_FULL 8.4]. In the four-level chain, level 4 takes "(W_G) at complex points [R]: Thm 3.4 … plus Thm 3.10" (A1_WALK_FULL 8.4). The walk forms of G′ and C′ at complex points enter G through Thm 3.10 and WG-G (the chain P = G′Q′*C′Q′G′, WG_FULL 2.3). This file turns the C′ part of that [R] into [P given (T37-c)], at the cost of the radius factor k_{C′}: level 4 is run on 𝒰(b⁗) with b_1⁗ ≤ k_{C′}b_1^{37}. k_{C′} is a constant of (d, L, a); it joins step 7 of the order of A1_WALK_FULL 9.1 before every α^{(n)}. The consumers' complex backgrounds lie in the (3.35) + (3.37) class by SOURCES_A18_REGULAR §5.1 [P there; corrected constants in SOURCES_A18_REGULAR_VERIFY V6]; the α_1-row of the chain then only has to be taken ≤ k_{C′}b_1^{37}.
 Reduction. The complex form of Thm 3.9 is proved here given one named step: (T37-c), the analytic walk form of G′ on 𝒰(b_1^{37}) (THM37_FULL §8).

## 8. Ledger, sharper steps, and open items

8.0 Two cross-file notes (coordinator, 2026-10-28).
 (X-PU) THM37_FULL 3.4 finds that the printed partition of unity (CMP 96 (2.36) with the product h of CMP 95 (1.118)) fails Σh² = 1 near level interfaces when L > 5; its repair (normalized fine-scale profiles) costs a factor L in the Lipschitz constant of h. This file uses Σ_□h_□² = 1 in two places: (a) inside (T37), through THM37_FULL's own parametrix (inherited, already repaired there); (b) in the A1-W parametrix 5.2(d), N̂P = I + ΣF_□, whose partition {h_□} is the geometry (G) of A1_WALK_FULL 2.1 on the M_1-cover of 𝔅. For (b) we carry the repaired version: h_□ := φ_□(Σ_{□′}φ_{□′}²)^{−1/2} as in THM37_FULL 3.4, so Σh_□² = 1 holds exactly, and the Lipschitz constant c_h of (G) is replaced by Lc_h at level interfaces. This is the same point as A1_WALK_FULL open item O2. Effect: c_h → Lc_h in E^com_□ (5.2(e)), hence in ρ_com, K_F, K_W, and the thresholds M_e, M_N, M_c, M_W. All are constants fixed before M_1, so no conclusion changes. The band of (L1): THM37_FULL 4.4(v) reduces the end band to ⅓M_1/L at interface faces; this file lists domains in the enlarged form (2.1, WG_FULL 0.4), which gives a band > M_1 from the enlargement alone, so the reduction does not reach (L1) here.
 (2.59) The image of CMP 96 p. 233 shows ¼αδ_0RM > 2d log c_0(½α) + 1 (THM37_FULL 2.2); WG_FULL (I4) quotes ½. Every use of "(2.59)" in this file (2.1, 2.4, 5.6) means the printed ¼ form, which is the stronger requirement on RM.

8.1 Inputs [IDs; tags].
 T39-V1 CMP 99 p. 413 Thm 3.9 statement; pp. 411–413 sketch [V; R-sketch]. The target.
 T39-V2 CMP 99 p. 394 (3.21)–(3.25) definitions of Δ′_a, G′, Q′*aQ′, R [V].
 T39-V3 CMP 99 p. 396 (3.35) regularity; (3.32)–(3.33) gauge covariance; standing hypothesis "O(1)Mα_0 sufficiently small" for Sect. 3 [V].
 T39-V4 CMP 99 p. 398 Thm 3.2 (3.48) [V].
 T39-V5 CMP 99 p. 400 Thm 3.4 and (3.50)–(3.51) [V]. Only the formula (3.51) is used (4.5); Thm 3.4's proof is not used.
 T39-V6 CMP 99 p. 409 (3.87)–(3.88) [V]; the a-term of (3.88) is the evidence for (I-Q).
 T39-V7 CMP 96 pp. 236–238 (2.72)–(2.87) [V; R-full at U = 1]. Used only for comparison (1.7, 5.4); not an input of the proof.
 T39-R1 CMP 96 Lemma 2.1 (2.60)–(2.63) under (2.59) in the ¼ form [R-full]: c_1(·), Σ(·) finite and volume-uniform.
 T39-P1 (T37), (T37-c): THM37_FULL (CMP 99 Thm 3.7, Cor. 3.8, M_1 version §7, complex form §8) [P in THM37_FULL, not yet verified; R-sketch at the source]. Includes the X-PU repair.
 T39-P2 Theorem A1-W, Lemmas LT, CT, CP, AW, the concatenation lemma: A1_WALK_FULL §1–§6, §8.2–§8.3 [P, verified per A1_WALK_FULL_VERIFY with fixes F1–F6].
 T39-P3 Enlarged-domain convention and local range c_loc: WG_FULL 0.4, (I7) [P given I items there].
 T39-P4 Disc radius at the Thm 3.4 level: WC_FULL 6.0 [P].
 T39-P5 Inclusions of complex consumer backgrounds into (3.35) + (3.37): SOURCES_A18_REGULAR §5.1 [P there; constants corrected in its VERIFY V6].
 T39-L1 lean/YmLean/Concatenation.lean `concat_two`, `concat_list` (junction sums, 3.4, 5.2(g)) [L].
 T39-L2 lean/YmLean/CombesThomas.lean `coercive_inv`, `combes_thomas` (local inverses, 5.2(c)) [L].
 T39-L3 lean/YmLean/SchurMarginal.lean `compression_lower` (restriction of a lower bound to a block, 5.2(b)) [L]. Not formalized: the merged-walk inequality (F1), Lemma LB, the change of variables V and the factor m.
 T39-V8 CMP 98 (64), (70), (77)–(80), pp. 29–30: Q′_j block-diagonal (row y sees only Δ(y)), uniform weights L^{−d} per step, transports = products of averaged links Ū^i, covariance of Ū^i [V, THM39_FULL_VERIFY V1]. Replaces former T39-I1 (moved from [I] to [V]).
 T39-PR1 (formerly T39-I1) (AL′): bound on averaged links Ū^i of e^{iηA} in the (3.35) gauge (4.4) [P rel. CMP 98 Prop. 2 (53) p. 26 [V, statement and proof read] and the reading "U(c) in (15) = product of the L finer links of c" [I]; THM39_FULL_VERIFY "(AL) check"]. Enters K_Γ (via K′) and a_LB (via a_AL). Also supplies A18 Lemma Q's I-Q1 in the (3.35) gauge. (AL-c), complex form (7.3) [REDUCED: complex-field CMP 98 Prop. 1/2 not available; non-unitary conjugators cost e^{O(dLb_1)}]. Enters c̄_Γ, b_G^c.
 T39-I2 (I-B): the blocks Δ(y), y ∈ 𝔅, partition Ω_0; each block with its one-step neighbourhood lies in a class cube of index j or j − 1 [I, cube geometry of p. 396].
 T39-I3 Form of (3.31): Δ_{U^u} = R(u)Δ_UR(u^{−1}), U^u(Γ) = u(start)U(Γ)u(end)^{−1} [I; (3.32)–(3.33) read].
 T39-I4 Geometry (G) of A1_WALK_FULL 2.1 on the M_1-cover, with the X-PU repair (c_h → Lc_h) [I; same item as A1_WALK_FULL O2 and THM37_FULL X-PU].
 T39-I5 Kernel convention: Balaban's C′(y, y′) is the μ-kernel [I, as A1_WALK_FULL 6.8].
 T39-I6 Count of M_1-cubes meeting a set of diameter D_+M_1 [I, geometry c(d), as A1_WALK_FULL 5.6].
 Not used: CMP 99 Cor. 3.5, Cor. 3.6; CMP 96 (2.75)–(2.76) (U = 1 Fourier); the CMP 89 domain-change estimate; the printed proof of Thm 3.4; (3.36), (3.38); WG-1.

8.2 Steps where this file is sharper than the printed text.
 S1 Global lower bound (Lemma LB). Q′G′²Q′* ≥ γ_NS² for every real U with (3.35) and Mα_0 ≤ a_LB, by a covariant trial function and Cauchy–Schwarz. Balaban's route goes through Cor. 3.6 (gauge to U ≈ 1 on a cube), Cor. 3.5, and the U = 1 Fourier bound (2.76); none is written for this operator. Lemma LB uses only |A|, |∇A| on single blocks, and it is not conditional (unlike (C) for QGQ*, SOURCES_A1_KERNEL §8).
 S2 Local inverses from truncated walk sums (A1-W). The domain-change term (3.97), which Balaban cites to CMP 89 and "an argument similar to Cor. 3.5", becomes the walk-truncation error, bounded by (B1) directly: e^{−δ_GM_1}.
 S3 No modified partition 𝒟′ and no ad hoc grouping of factors (1.5 (a)–(c)). Whole walk terms of N̂ enter as blocks with their whole-term bound; each insertion carries its own small factor.
 S4 The whole-term bound (3.99) is proved with explicit constants (5.2(g), 5.3), including the scale-power conversion and its rate cost |2 − d/2|θ_L.
 S5 Explicit treatment of G′² (§3): the junction of two G′-walks is one merged domain, so the per-step factor is c′/M_1 per step with no lost step; the junction sum costs only c_1(¼δ′)L².
 S6 No WG-1-type condition on α_0 (3.6, 6.2(e)).
 S7 Misprints identified: (M1) (3.96) missing square; (M2) reversed inequality p. 411; (M3) Q′ for Q′* p. 412; (M5) "(3.25)" for (3.35) p. 412.
 S8 The complex form is reduced to the complex walk form of G′ alone (7.5), with an explicit radius factor k_{C′}.
 Where this file is weaker. The rate is ½ε (ε from (b_G, δ_G, γ_N)), not ½δ_0; the split (L^jη)^{−4}(L^{j′}η)^{−d} costs the rate |2 − d/2|θ_L. The consumers need only a fixed positive rate (A1_WALK_FULL 9.3). Consumer note (no edit made): WG_FULL (I3) takes δ := ½δ_0 as the common rate of (I1)–(I3). With this file the C′ rate in the (3.99) normalization is ½ε − |2 − d/2|θ_L (= ½ε at d = 4); WG_FULL must take its common rate ≤ that (or use the rescaled form (ii) at rate ½ε) and compute M_*, a_* at that rate. Pending, after the Thm 3.7/3.10 verifiers. This is a monotone weakening; ε depends only on (T37) and γ_N, not on G, so the order has no loop.

8.3 Open items for a verifier.
 (a) (T37) and (T37-c) as delivered by THM37_FULL (not verified at the time of writing); in particular that its per-walk bound is in the block sup norm used in 3.4.
 (b) SETTLED [V, THM39_FULL_VERIFY V1]: Q′_j block-diagonal (T39-V8). Averaged-link bound: (AL′) PROVED rel. CMP 98 Prop. 2 [V] and the (15) reading [I] (T39-PR1); (AL′-ax) the same; (AL-c) REDUCED (needs a complex-field CMP 98 Prop. 1/2).
 (c) T39-I2: the class cube containing a block and its η-layer, with index j or j − 1 (the constant c_3 = 12L²).
 (d) The constant bookkeeping of Lemma LB 4.5(a) (K_A) and the case split of the bump 4.2 (L^j < 8).
 (e) The use of A1-W "verbatim" for N̂ = S^{−1}NS^{−1} (5.1): check that no step of A1_WALK_FULL §2–§6 uses the specific form S^{−1/2}QGQ*S^{−1/2}.
 (f) X-PU repair as carried in 8.0(b).

8.4 Status. Author write-out complete (2026-10-28). Verified 2026-10-28 (THM39_FULL_VERIFY: NEEDS FIXES, minor); fixes applied. Grade: PAPER-GRADE relative to tagged inputs. Grade proposal for CLOSURE_PLAN R2: SKETCH → written out [P] given T39-P1 (THM37_FULL), T39-P2 (A1-W), (3.51), T39-PR1 ((AL′) rel. CMP 98 Prop. 2 [V] and the (15) reading [I]), and the [I] items T39-I2–I6. R36 for C′: [P] given the same and THM37_FULL §7. R7 for C′: [P] given (T37-c) and (AL-c) [REDUCED].

Corrections after verification (THM39_FULL_VERIFY, 2026-10-28, images): misprints M1–M4 confirmed, plus M5 (p. 412 cites "(3.25)" for (3.35)); G1 is not a gap (p. 396's standing hypothesis "α_0 so small that O(1)Mα_0 is still sufficiently small"); merged-cube step confirmed; Lemma LB confirmed — but CMP 98 (77)–(80) show Q′_j block-diagonal with uniform weights L^{−d} per step whose transports are products of AVERAGED links Ū^i, not fine holonomies, so §4.4 and §7.3 need a tagged small-field bound on averaged links of e^{iηA}; why the bump argument does not give (C) for QGQ*: the 1-form Q_j is a corridor average over B(c_−) ∪ B(c_+), giving a bidiagonal matrix with comparable entries whose symbol |a + be^{ip}| ≈ 0 at p = π (no diagonal dominance; cross term exactly zero for gauge functions); define ε from the RM-free floor (7/16)δ′; in Balaban's (3.99) normalization the C′ rate is ½ε − |2 − d/2|θ_L (= ½ε only at d = 4), so WG_FULL's common rate must be ≤ that; no circularity (G′ → C′ → G → (QGQ*)^{−1}). With these local fixes: PAPER-GRADE relative to tagged inputs.

Change log.
 2026-10-28: applied THM39_FULL_VERIFY fixes: M5 added, G1 replaced by p. 396 standing hypothesis; (I-Q) transport = averaged links, block-diagonality [I]→[V] (T39-V8), new input (AL)/(AL-c) in 4.4, 7.3 (T39-I1); 4.7(d) why the bump does not give (C); ε from RM-free floor (7/16)δ′; (3.99)-normalization rate ½ε − |2 − d/2|θ_L stated in 2.4 and 8.2, WG_FULL (I3) edit pending. WG_FULL not edited.
 2026-10-28: applied the "(AL) check": 4.4 (AL) → (AL′) with proof (K′, A_L, c_P, a_AL); K_Γ = 2e·d·K′·L/(L − 1); a_LB term k_av/c_3 → a_AL; 7.3 (AL-c) REDUCED, K_av := 2K′; A18 Lemma Q I-Q1 note; ledger T39-I1 → T39-PR1; 2.2 pointer, 8.3(b), 8.4, and status line updated.
 2026-10-28: F19 fixes (SOURCES_F19_WGRATE_VERIFY A1, A2, A4, A5, A6): CMP 98 Prop. 2 [R] → [V] in live tags (status line, 4.4, T39-PR1, 8.3(b), 8.4); 4.4 Lemma Q note: (AL′) supplies I-Q1 only for corollary (b), factor K′/c_3; new (AL′-ax) for corollary (a), K″ = 2d² + πA_L/(L(L − 1)), range a_ax = min{c_2, 1/(4A_L)}; K_Γ := 2d·K′·L/(L − 1) (factor e removed), so a_LB's entry c_φ/(2K_Γ) = c_φ(L − 1)/(4dK′L) is larger by e; 7.3 (AL-c): c_N named, k_av^c = min{(log 2)/(c_NdL), c_2/(2c_P′), 1/(8A_Lc_P′)}, A′-curvature c_P′ in K_av = 2(1 + πA_Lc_P′/(L(L − 1))) ≤ 2K′, complex rows at Mα_0 ≤ ½a_AL, still REDUCED. For A18 (SOURCES_A18_REGULAR 6.1, not edited here), replace the step-(3) bracket by: "[The averaged fields Ū^j keep the bound up to a factor c(d, L): K″/(2d²) in the axial gauge (THM39_FULL (AL′-ax), corollary (a)), K′/c_3 in the (3.35) gauge (THM39_FULL (AL′), corollary (b)); I-Q1 is [P rel. CMP 98 Prop. 2 [V]].]" Not yet re-verified.

(AL) correction (THM39_FULL_VERIFY "(AL) check", 2026-10-28): (AL) as written (sup|A| only) is UNSUPPORTED — the triangle inequality on CMP 98 (15) grows by (2d + 3)L per level, K_i = (2d + 3)^i not uniform; (124)–(146) and A18 Lemma Q do not supply it. (AL′) PROVED rel. CMP 98 Prop. 2 [R] + the reading U(c) in (15) = the product of the L finer links of c: both halves of (3.35) are used — |∇^ηA| gives fine plaquettes with (52) at α̃ = c_PMα_0; Prop. 2 gives level-i curvature ε_i < 2α̃(L^iη/ℓ)²; each level-(i + 1) link is e^{iY} × (product of L level-i links) with |Y| ≤ (π/2)A_Lε_i, A_L = 4d(d + 1)L²; recursion W_{i+1} ≤ LW_i + (π/2)A_Lε_i sums to |Ū^i − 1| ≤ K′L^iηMα_0/ℓ, K′ = c_3 + πA_Lc_P/(L(L − 1)) (depends on (d, L) only); new smallness a_AL = min{1, c_2/c_P, 1/(4A_Lc_P)}; (AL′) also supplies Lemma Q's I-Q1 in the (3.35) gauge. §4.4/§7.3 powers of L correct; fixes: (AL) → (AL′), K_Γ = 2e·d·K′·L/(L − 1), a_LB's k_av/c_3 → a_AL. (AL-c) only REDUCED (needs a complex-field CMP 98 Prop. 1/2; non-unitary conjugating factors give e^{O(dLb_1)}, harmless for small b_1).
