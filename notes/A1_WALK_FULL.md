# A1_WALK_FULL — Theorem A1-W: a walk expansion of (QGQ*)^{−1} with (3.108)-form bounds

Date 2026-10-28. Author: Opus session. Paper-grade write-out.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Sources: SOURCES_A1_WALK §1–§8 and SOURCES_A1_WALK_VERIFY (all corrections applied); SOURCES_WC_EXPGAUGE §4–§5 and VERIFY V4, V6, V7; SOURCES_WC_RESIDUE §4–§7 and VERIFY Q4–Q7; lean/VERIFY_CombesThomas.md; SOURCES_WG §2 and VERIFY.
Tags: [V] read on the page; [P] proved in this file; [R] reduced to a named printed statement; [I] inferred, not proved; [L] formalized in Lean.
No existing file is edited. Sections are appended one per step.

## 0. Notation and the exact statement

### 0.1 Lattice, weights, kernels
- 𝔅 is the finite multiscale block lattice of SOURCES_A1_KERNEL §5. It has a metric d and a measure μ > 0. Finite volume is assumed throughout, as in Balaban.
- ℋ := ℓ²(𝔅, μ), with ⟨u, v⟩ := Σ_y μ(y) ū(y)v(y). The inner product is sesquilinear.
- An operator A on ℋ has the kernel a(y, y′) defined by (Au)(y) = Σ_{y′} μ(y′)a(y, y′)u(y′). Then ⟨1_y, A1_{y′}⟩ = μ(y)μ(y′)a(y, y′).
- m(y, y′) := (μ(y)μ(y′))^{−1/2}. The map V: ℋ → ℓ²(𝔅), (Vu)(y) := μ(y)^{1/2}u(y), is unitary. The matrix of VAV^{−1} in the standard basis is μ(y)^{1/2}μ(y′)^{1/2}a(y, y′). So |a| ≤ c·m·h implies |(VAV^{−1})(y, y′)| ≤ c·h(y, y′).
- For X ⊂ 𝔅, 1_X is multiplication by the indicator of X.
- Schur constant: Σ(δ′) := sup_y Σ_{y′}(1 + d(y, y′))e^{−δ′d(y, y′)}. Lemma 2.1 of CMP 96 [R, printed proof] gives c_1(κ) := sup_y Σ_{y′}e^{−κd(y, y′)} < ∞, uniform in k, η, {Ω_j}, and volume, under its condition (2.59) RM > M_*(κ). Since (1 + x)e^{−δ′x} ≤ (1 + 2/(eδ′))e^{−½δ′x}, Σ(δ′) ≤ (1 + 2/(eδ′))c_1(½δ′).
- Remark on Σ. SOURCES_A1_KERNEL §5 uses a variant with the extra factor (μ(y′)/μ(y))^{1/2}. The counting form above is the Schur constant of VAV^{−1} on ℓ²(𝔅). It is the form that Lemma 2.1 bounds directly. Every bound below uses the counting form.

### 0.2 Path length of a domain list
- A domain list is ω = ((α_0, X_0), …, (α_n, X_n)), with X_i ⊂ 𝔅 and labels α_i. Put |ω| := n.
- ω is a walk if X_{i−1} ∩ X_i ≠ ∅ for i = 1, …, n.
- Path length (CMP 99 (3.93)): d(ω, y, y′) := inf{d(y, x_0) + Σ_{i=1}^n d(x_{i−1}, x_i) + d(x_n, y′) : x_i ∈ X_i}.
- Two consequences of the triangle inequality: (D1) d(ω, y, y′) ≥ d(y, y′); (D2) d(ω, y, y′) ≥ d(y, X_i) + d(X_i, y′) for every i.

### 0.3 The operator
- U is a regular background: (3.35)–(3.36) of CMP 99 hold, with Mα_0 ≤ a_0.
- N := QGQ*. N̂ := S^{−1/2}NS^{−1/2} on ℋ, with the rescaling S of SOURCES_A1_KERNEL §8. Then (QGQ*)^{−1} = S^{−1/2}N̂^{−1}S^{−1/2}.
- M_1 is the cube size of the expansion (CMP 116 p. 3 notation). M is the cube size of the s-rule. R_1M_1 ≤ M.

### 0.4 Hypotheses of Theorem A1-W
(H1) Walk expansion (W_G). N̂ = Σ_{ω∈𝒲} N̂_ω, an absolutely convergent sum over a family 𝒲 of walks. Each N̂_ω = R_{α_0}(X_0)···R_{α_n}(X_n) is a product of factors with the locality (L1)–(L2) of §1. The bounds are:
 (B1) |n̂_ω(y, y′)| ≤ b_G ρ_G^{|ω|} m(y, y′) e^{−δ_G d(ω, y, y′)}, with ρ_G := c_G/M_1;
 (B2) for every set Y ⊂ 𝔅 of diameter ≤ D_+M_1, #{(α, X): X ∩ Y ≠ ∅} ≤ C_𝒟; here D_+ is the diameter bound of the enlarged cubes of §2.1, and C_𝒟 = C_𝒟(d, D_+) also bounds the number of domains that contain a given point;
 (B3) every domain X has X̃^5 of diameter ≤ c_XM_1.
 Source: Theorem WG-G of SOURCES_WG §2.8 [P given CMP 99 Thms 3.7, 3.9, 3.10 printed sketches, VERIFIED in SOURCES_WG_VERIFY], then Q-normalization and S-rescaling (SOURCES_A1_WALK §4.0). The rate is δ_G := δ_W′ − (d/2 + 1)θ, where δ_W′ is the rate of the G-expansion before rescaling and θ := log L/(RM).
(H2) Lower bound (C). Re⟨u, N̂u⟩ ≥ c_−‖u‖² for all u ∈ ℋ, with c_− = 1/K_ext > 0 uniform in regular U, j, k, η, {Ω_j}, and volume (SOURCES_A1_KERNEL §8 (C); conditional per SOURCES_A1_WALK_VERIFY (6)).
(H3) Geometry (G) of §2.1: the cube cover, the partition of unity h_□, and the enlarged cubes □⁺.
(H4) Constant order: (d, L, a, a_0) → θ at a minimal M → c_±, δ_G, Σ, b_G, c_G, C_𝒟, c_X → ε → M_1 → M → α_0 (§9).

### 0.5 Statement
Theorem A1-W. Assume (H1)–(H4). Put c_+ := C_𝒟b_G and
 ε := min{½δ_G, c_−/(8c_+Σ(½δ_G))}.
There is M_W = M_W(d, L, a, a_0) such that for M_1 ≥ M_W:
 (i) N̂^{−1} = Σ_ω T_ω, a walk expansion in the sense of §1, with factors of three kinds: h_□C_□h_□ and [N̂_□, h_□]C_□h_□ (domain □⁺), and the factors of (H1) (their own domains);
 (ii) |T_ω(y, y′)| ≤ (4/c_−)(c_1ρ)^{|ω|} m(y, y′) e^{−½ε d(ω, y, y′)}, with c_1 := c_1(½ε) and ρ ≤ K_W/M_1;
 (iii) Σ_ω |T_ω(y, y′)| ≤ (8C_𝒟/c_−) m(y, y′) e^{−½ε d(y, y′)};
 (iv) ‖N̂^{−1}‖_{½ε} ≤ 8/c_−, so |N̂^{−1}(y, y′)| ≤ (8/c_−) m(y, y′) e^{−½ε d(y, y′)};
 (v) all constants depend only on (d, L, a, a_0) and the regularity constants. They are uniform in U, j, k, η, {Ω_j}, and volume.
§7 adds the Z_0-compressed variant. §8 adds complex configurations.

## 1. Walk expansions

### 1.1 Printed templates [V]
CMP 99 Thm 3.9 (3.98) and Thm 3.10 (3.107) write an operator as Σ_ω R_{α_0}(X_0)R_{α_1}(X_1)···R_{α_n}(X_n) over walks. CMP 99 p. 413 [V image] defines the factors: "it is localized in X, i.e. its kernel has a support in X × X, it depends on U restricted to X^5, and satisfies a bound of the type (3.89)". The same page says: "It is difficult to make the last statement more precise. Instead we will write a bound for a whole term". So Balaban prints bounds per walk term, not per factor. We follow this.

### 1.2 Definition
For X ⊂ 𝔅 put X° := {x ∈ X : d(x, 𝔅∖X) > ⅓M_1}. A walk expansion of an operator T on ℋ with constants (B, ρ, δ, C) is a representation T = Σ_ω T_ω over walks ω, with T_ω := R_{α_0}(X_0)···R_{α_n}(X_n), such that:
 (L1) the kernel of every factor R_α(X) vanishes unless both arguments lie in X°;
 (L2) every factor R_α(X) depends on U only through U restricted to X̃^5, and on domain data only in X̃^5;
 (B1) |T_ω(y, y′)| ≤ B ρ^{|ω|} m(y, y′) e^{−δ d(ω, y, y′)};
 (B2) given a walk prefix ending in X, the number of choices of the next pair (α, X′) is at most C; the number of choices of the first pair (α, X_0) with y ∈ X_0 is at most C; and Cρ ≤ ½.
Here X̃^5 is X with 5 layers of M_1-cubes adjoined in the ℓ^∞ sense (SOURCES_WC_RESIDUE §2–§4 [V + P]).
(L1) contains the band condition of CMP 116 p. 3 [V image]: "its kernel vanishes in a sufficiently thick neighborhood of ∂X_j", with the example width ⅓M_1. The band is part of the definition because the s-rule needs it (§1.4). SOURCES_A1_WALK §1.2 had only supp ⊂ X × X; SOURCES_A1_WALK_VERIFY §2 added the band.

### 1.3 Lemma 1.1 (absolute convergence) [P]
Assume (B1)–(B2). Then Σ_ω |T_ω(y, y′)| ≤ 2CB m(y, y′) e^{−δ d(y, y′)}.
Proof. By (L1), T_ω(y, ·) = 0 unless y ∈ X_0. By (B2) there are at most C^{n+1} walks of length n with y ∈ X_0. By (D1), e^{−δd(ω, y, y′)} ≤ e^{−δd(y, y′)}. So the sum is at most B m e^{−δd(y, y′)} Σ_{n≥0} C^{n+1}ρ^n ≤ 2CB m e^{−δd(y, y′)}, since Cρ ≤ ½. ∎
Corollary 1.2. Under (H1), for every subfamily 𝒲′ ⊂ 𝒲, Σ_{ω∈𝒲′} |n̂_ω(y, y′)| ≤ 2c_+ m(y, y′) e^{−δ_G d(y, y′)}, provided C_𝒟ρ_G ≤ ½. Here c_+ = C_𝒟b_G. Proof: Lemma 1.1 with B = b_G, C = C_𝒟; a subfamily has fewer nonnegative terms. ∎

### 1.4 The s-rule, and why kernel decay alone does not satisfy it
The rule [V, CMP 116 p. 3; SOURCES_A3_SIGMA_VERIFY V1]. Let σ_0 be a set of cubes Δ of side R_1M_1, and s = {s(Δ)} ∈ [0, 1]^{σ_0}. In the expansion of an operator, the ω-term is multiplied by Π s(Δ), the product over all Δ ∈ σ_0 that meet X̃_0^5 ∪ … ∪ X̃_n^5. The page states: "Each factor in (1.6) depends on external gauge field configurations restricted to the corresponding domain X̃_j^5, and its kernel vanishes in a sufficiently thick neighborhood of ∂X_j". CMP 116 p. 4 [V] then uses: kernels of H(s), G(s) vanish unless both arguments lie in one component of Y(σ), at distance > M_1 from its boundary, and the operator on a component depends on A′, s only on that component. CMP 116 p. 3 also states that the factors O(M^{−1/2})^{|ω|} "control the sum over ω", and p. 5 (1.11) uses the bound B_0|X| sup_ω M_1^{−½|ω|}e^{−δ_0d(ω)}.
Why decay is not enough [P]. Let s(Δ) = 0 for one cube Δ. Every surviving term must not see Δ. It must not see Δ in its kernel support, which is (L1). It must not see Δ in its U-dependence, which is (L2). Let A be an operator with only a kernel bound |a(y, y′)| ≤ c m e^{−κd(y, y′)}. Its kernel is nonzero on all of 𝔅 × 𝔅 in general. It depends on U everywhere. Neither property holds, and no product structure exists to which Π s(Δ) can be attached. The global inverse that Lemma CT gives (SOURCES_A1_KERNEL §7) is such an operator. So the kernel form of A1 does not feed the s-rule. This is the gap SOURCES_A2_R2_VERIFY V8 records. Theorem A1-W closes it by a walk representation.

### 1.5 The conjugation norm
For an operator A on ℋ and κ ≥ 0, put ‖A‖_κ := sup_f ‖e^{κf}Ae^{−κf}‖. The supremum runs over all f: 𝔅 → ℝ with |f(y) − f(y′)| ≤ d(y, y′). 𝔅 is finite, so every such conjugation is bounded.
 (N0) ‖A‖ ≤ ‖A‖_κ (take f = 0). If κ′ ≤ κ, then ‖A‖_{κ′} ≤ ‖A‖_κ, because κ′f = κ·(κ′/κ)f and (κ′/κ)f is 1-Lipschitz.
 (N1) ‖AB‖_κ ≤ ‖A‖_κ‖B‖_κ, because e^{κf}ABe^{−κf} = (e^{κf}Ae^{−κf})(e^{κf}Be^{−κf}).
 (N2) |a(y, y′)| ≤ ‖A‖_κ m(y, y′) e^{−κd(y, y′)}. Proof: take f := d(·, y′). The kernel of e^{κf}Ae^{−κf} at (y, y′) is e^{κd(y, y′)}a(y, y′). A matrix element obeys |⟨1_y, B1_{y′}⟩| ≤ ‖B‖(μ(y)μ(y′))^{1/2}, and ⟨1_y, B1_{y′}⟩ = μ(y)μ(y′)b(y, y′). ∎
 (N3) If |a(y, y′)| ≤ c m(y, y′)(1 + d(y, y′))e^{−κ′d(y, y′)} and κ′ > κ, then ‖A‖_κ ≤ cΣ(κ′ − κ). Proof: the kernel of e^{κf}Ae^{−κf} is bounded by c m (1 + d)e^{κd}e^{−κ′d}. Apply V of §0.1 and the Schur test on ℓ²(𝔅) with the symmetric majorant (1 + d)e^{−(κ′−κ)d}. Row and column sums are ≤ Σ(κ′ − κ). The Schur test is `schur_test` [L, Schur.lean]. ∎
 (N4) Let {B_□} be operators and {h_□} multiplications with Σ_□ h_□² = 1. Then ‖Σ_□ h_□B_□h_□‖_κ ≤ sup_□ ‖B_□‖_κ. Proof: conjugation commutes with h_□. For u, v ∈ ℋ, |⟨v, Σ h_□B_□h_□u⟩| ≤ Σ_□ ‖B_□‖ ‖h_□v‖ ‖h_□u‖ ≤ sup‖B_□‖ (Σ‖h_□v‖²)^{1/2}(Σ‖h_□u‖²)^{1/2} = sup‖B_□‖ ‖v‖‖u‖. ∎

## 2. The local operators N̂_□

### 2.1 Geometry (G) [I: Balaban's 𝒟 and h_□ of CMP 99 p. 408; constants c(d)]
- 𝒟 is a cover of 𝔅 by cubes □ of side K_1M_1. Each point lies in at most C_ov(d) cubes.
- Each □ has a core □⁻ ⊂ □ with d(□⁻, 𝔅∖□) ≥ M_1.
- h_□: 𝔅 → [0, 1], supp h_□ ⊂ □⁻, Σ_□ h_□² = 1, and |h_□(y) − h_□(y′)| ≤ (c_h/M_1)d(y, y′). The Lipschitz bound across scale boundaries inside one cube is open item O2 [I, low risk; printed analogue CMP 99 (3.89) O(M^{−1}), see SOURCES_A1_WALK_VERIFY §8].
- K_0 := 2c_X + 2, with c_X of (B3). The enlarged cube □⁺ is the union of all M_1-cubes that meet {y : d(y, □) ≤ K_0M_1}. So □⁺ ⊇ {y : d(y, □) ≤ K_0M_1}, □⁺ is a connected union of M_1-cubes, and diam □⁺ ≤ D_+M_1 with D_+ := K_1 + 2K_0 + 2.
- Consequence for (L1): d(□⁻, 𝔅∖□⁺) ≥ d(□, 𝔅∖□⁺) > K_0M_1 ≥ 2M_1 > ⅓M_1. So a kernel supported in □ × □ satisfies the band condition of (L1) for the domain □⁺.

### 2.2 Definition
- Kept walks: 𝒲_□ := {ω ∈ 𝒲 : X̃_i^5 ⊂ □⁺ for every domain X_i of ω}.
- Truncated sum: N̂^{(□)} := Σ_{ω∈𝒲_□} N̂_ω.
- Local operator: N̂_□ := 1_□N̂^{(□)}1_□, an operator on ℋ_□ := ℓ²(□, μ). We extend operators on ℋ_□ by 0 to ℋ when needed.
This is the analogue of Balaban's compressed local operator □Q′G′(□̃)²Q′*□ of CMP 96 (2.82) [V image]. Balaban uses the propagator of a local domain. We use the truncated walk sum. The reason is CMP 99 Thm 3.14 [V text p. 426–427]: Balaban proves his domain-change estimates by cancelling the walks with all localizations inside the domain. So the domain-change error is a walk-truncation error. With the truncated sum we bound that error directly by (B1), and CMP 99 Cor. 3.6 (local gauge to U ≈ 1) is not needed.

### 2.3 Lemma 2.1 (locality and truncation) [P]
Assume (H1), (H3), and C_𝒟ρ_G ≤ ½. Then:
 (a) N̂^{(□)} and N̂_□ depend on U only through U restricted to □⁺. The kernel of N̂_□ vanishes outside □ × □.
 (b) |n̂_□(y, y′)| ≤ 2c_+ m(y, y′) e^{−δ_G d(y, y′)}.
 (c) For y, y′ ∈ □: |(n̂ − n̂^{(□)})(y, y′)| ≤ 2c_+ e^{−2δ_GM_1} m(y, y′) e^{−½δ_G d(y, y′)}, and also ≤ 2c_+ e^{−δ_GM_1} m(y, y′) e^{−¾δ_G d(y, y′)}.
 (d) ‖1_□(N̂ − N̂^{(□)})1_□‖ ≤ 2c_+Σ(½δ_G)e^{−2δ_GM_1}.
 (e) If M_1 ≥ M_a := (2δ_G)^{−1}log(4c_+Σ(½δ_G)/c_−), then Re⟨u, N̂_□u⟩ ≥ ½c_−‖u‖² for every u ∈ ℋ_□.
Proof.
 (a) By (L2), N̂_ω depends on U only on ∪_i X̃_i^5. For ω ∈ 𝒲_□ this union lies in □⁺. A sum of such terms has the same property. The factors 1_□ do not depend on U. The kernel statement holds by the definition of N̂_□.
 (b) 𝒲_□ ⊂ 𝒲. Apply Corollary 1.2 with 𝒲′ = 𝒲_□. The factors 1_□ only restrict the kernel.
 (c) Let ω ∈ 𝒲∖𝒲_□. Then some domain has X̃_i^5 ⊄ □⁺. Choose p ∈ X̃_i^5 with p ∉ □⁺. Then d(p, □) > K_0M_1, by the first property of □⁺ in 2.1. Every x ∈ X_i lies in X̃_i^5, so d(x, p) ≤ c_XM_1 by (B3). Hence d(x, □) ≥ d(p, □) − d(p, x) > (K_0 − c_X)M_1 = (c_X + 2)M_1 ≥ 2M_1. For y, y′ ∈ □, (D2) gives d(ω, y, y′) ≥ d(y, X_i) + d(X_i, y′) > 4M_1. With (D1), for every λ ∈ [0, 1]: δ_G d(ω, y, y′) ≥ 4λδ_GM_1 + (1 − λ)δ_G d(y, y′). Take λ = ½ for the first bound and λ = ¼ for the second. Then sum over ω ∈ 𝒲∖𝒲_□ with the count of Lemma 1.1: Σ_n C_𝒟^{n+1}b_Gρ_G^n ≤ 2c_+.
 (d) The kernel of 1_□(N̂ − N̂^{(□)})1_□ obeys the first bound of (c) and vanishes outside □ × □. Apply (N3) with κ = 0, κ′ = ½δ_G, and c = 2c_+e^{−2δ_GM_1}.
 (e) Let u ∈ ℋ_□, extended by 0. Then ⟨u, N̂_□u⟩ = ⟨u, N̂^{(□)}u⟩ = ⟨u, N̂u⟩ − ⟨u, 1_□(N̂ − N̂^{(□)})1_□u⟩. By (H2) and (d), Re⟨u, N̂_□u⟩ ≥ (c_− − 2c_+Σ(½δ_G)e^{−2δ_GM_1})‖u‖². The bracket is ≥ ½c_− iff e^{−2δ_GM_1} ≤ c_−/(4c_+Σ(½δ_G)), i.e. iff M_1 ≥ M_a. ∎
Remark. The local lower bound comes from the global bound (H2) by restriction. It is not A3's γ_0, which bounds C*Δ_kC from below. CMP 96 (2.147) uses the symbol γ_0 for the local constant of a different operator (SOURCES_A1_WALK §2.4).

## 3. Lemma CT in accretive form and the local inverses

### 3.1 Statement
Lemma CT (accretive Combes–Thomas). Let Y ⊂ 𝔅 and let A be an operator on ℓ²(Y, μ). Assume
 (i) |a(y, y′)| ≤ b m(y, y′) e^{−δ d(y, y′)} for y, y′ ∈ Y;
 (ii) Re⟨u, Au⟩ ≥ c‖u‖² for all u, with c > 0.
No symmetry of A is assumed. Let 0 < ε ≤ min{½δ, c/(2bΣ(½δ))}. Then A is invertible and ‖A^{−1}‖_ε ≤ 2/c. Here ‖·‖_ε is the norm of §1.5 on ℓ²(Y, μ), with f ranging over 1-Lipschitz functions on Y. By (N2), |A^{−1}(y, y′)| ≤ (2/c) m(y, y′) e^{−ε d(y, y′)}.

### 3.2 Proof [P]
Fix a 1-Lipschitz f on Y. Put A_f := e^{εf}Ae^{−εf} and E := A_f − A. The kernel of E is a(y, y′)(e^{ε(f(y)−f(y′))} − 1). Use |e^x − 1| ≤ |x|e^{|x|} and |f(y) − f(y′)| ≤ d(y, y′). Then |E(y, y′)| ≤ b m ε d e^{εd}e^{−δd} ≤ bε m d e^{−½δd}, because ε ≤ ½δ. By (N3) with κ = 0 and κ′ = ½δ, ‖E‖ ≤ bεΣ(½δ) ≤ ½c. Hence Re⟨u, A_fu⟩ ≥ Re⟨u, Au⟩ − ‖E‖‖u‖² ≥ ½c‖u‖². So ‖A_fu‖‖u‖ ≥ |⟨u, A_fu⟩| ≥ ½c‖u‖². Thus A_f is injective. Y is finite, so A_f is invertible and ‖A_f^{−1}‖ ≤ 2/c. A is conjugate to A_f, so A is invertible and A_f^{−1} = e^{εf}A^{−1}e^{−εf}. Take the supremum over f. ∎

### 3.3 The formal part [L]
lean/YmLean/CombesThomas.lean, built with no `sorry`; axioms [propext, Classical.choice, Quot.sound] (lean/VERIFY_CombesThomas.md):
- `coercive_inv`: ∀ v, c‖v‖² ≤ re⟪v, Av⟫ ⇒ IsUnit A ∧ ‖A⁻¹‖ ≤ 1/c. No Hermitian hypothesis.
- `combes_thomas`: for a positive weight w and W := diag(w), the hypotheses hN (as above) and ‖WNW⁻¹ − N‖ ≤ c/2 give IsUnit N, ‖(WNW⁻¹)⁻¹‖ ≤ 2/c, and |N⁻¹(x, y)| ≤ (2/c)w(y)/w(x).
- `combes_thomas_schur`: if for every centre x₀ the row and column sums of ‖N x y‖·|exp(ε(d x x₀ − d y x₀)) − 1| are ≤ c/2, then IsUnit N and ‖N⁻¹ x y‖ ≤ (2/c)exp(−ε d x y). Here d is any function with d x x = 0.
Match with 3.1. Apply V of §0.1. VAV^{−1} is a matrix on ℓ²(Y) with counting measure. V is unitary and commutes with diagonal weights, so (ii) transfers to hN. `combes_thomas` with w := e^{εf} gives the bound ‖A_f^{−1}‖ ≤ 2/c for each f, which is the statement of 3.1. `combes_thomas_schur` is the special case f = d(·, x₀), with the entry bound. Not formalized: the change of variables V and the factor m (VERIFY_CombesThomas "Not formalized" item 1), and the step from (i) to ‖E‖ ≤ c/2 (item 2). Both are written in 3.2.

### 3.4 Application to N̂_□ [P]
Assume M_1 ≥ M_a and C_𝒟ρ_G ≤ ½. Apply Lemma CT on Y = □ to A = N̂_□ with:
 c = ½c_− (Lemma 2.1(e)); b = 2c_+ (Lemma 2.1(b)); δ = δ_G.
The condition on ε reads ε ≤ min{½δ_G, (½c_−)/(2·2c_+Σ(½δ_G))} = min{½δ_G, c_−/(8c_+Σ(½δ_G))}. This is the ε of Theorem A1-W. Define C_□ := N̂_□^{−1} on ℋ_□, extended by 0. Then:
 (a) N̂_□C_□ = 1_□ exactly (as operators on ℋ).
 (b) ‖C_□‖_ε ≤ 2/(½c_−) = 4/c_−. The extension by 0 keeps this: a 1-Lipschitz f on 𝔅 restricts to a 1-Lipschitz f on □, and e^{εf}(C_□ ⊕ 0)e^{−εf} = (e^{εf}C_□e^{−εf}) ⊕ 0.
 (c) ‖h_□C_□h_□‖_ε ≤ 4/c_−, by (N1), since h_□ commutes with e^{εf} and ‖h_□‖ ≤ 1.
 (d) C_□ depends on U only on □⁺, because N̂_□ does (Lemma 2.1(a)).
 (e) ε, c_±, and the bound 4/c_− do not depend on M_1, □, U, j, k, η, or volume. c_− is uniform by (H2). c_+ and δ_G are uniform by (H1). Σ is monotone in θ and bounded for M at least a minimal M(d, L) [R, Lemma 2.1].
Remark. Smallness never comes from the decay of C_□ inside □. Supports lie in □. Only the M_1-free bound ‖C_□‖_ε is used. This is CMP 96 p. 237's "another way" [V image]: conjugate by e^{⟨a,·⟩}, show the difference is O(|a|), and conclude decay. There it is applied at U = 1 on one cube. Here uniformity in U comes from (H1)–(H2), not from U ≈ 1.

## 4. The parametrix identity and the three error terms

### 4.1 Identity [P]
Put P := Σ_□ h_□C_□h_□. Define for each □:
 E^sep_□ := (1 − 1_□)N̂h_□ (separation);
 E^tr_□ := 1_□(N̂ − N̂^{(□)})1_□h_□ (truncation; Balaban's domain change);
 E^com_□ := [N̂_□, h_□] = N̂_□h_□ − h_□N̂_□ (commutator);
 F_□ := (E^sep_□ + E^tr_□ + E^com_□)C_□h_□.
Claim: N̂P = I + Σ_□ F_□.
Proof. Fix □. Since supp h_□ ⊂ □⁻ ⊂ □, h_□ = 1_□h_□ = h_□1_□. Split N̂ = (1 − 1_□)N̂ + 1_□N̂. Then
 1_□N̂h_□ = 1_□N̂1_□h_□ = 1_□(N̂ − N̂^{(□)})1_□h_□ + 1_□N̂^{(□)}1_□h_□ = E^tr_□ + N̂_□h_□.
So N̂h_□ = E^sep_□ + E^tr_□ + N̂_□h_□. Next, N̂_□h_□ = h_□N̂_□ + E^com_□. By 3.4(a), h_□N̂_□C_□h_□ = h_□1_□h_□ = h_□². Hence
 N̂h_□C_□h_□ = h_□² + (E^sep_□ + E^tr_□ + E^com_□)C_□h_□ = h_□² + F_□.
Sum over □ and use Σ_□ h_□² = 1. ∎
Comparison [V]. CMP 96 (2.82) [image p. 237] is Q′G′²Q′*C = Σ h_□(□Q′G′(□̃)²Q′*□)C_□h_□ − Σ[h_□, □Q′G′(□̃)²Q′*□]C_□h_□ − Σ □Q′(G′(□̃)² − G′²)Q′*h_□C_□h_□ − Σ_{□,□′≠□}(□ − 1)h²_{□′}Q′G′²Q′*h_□C_□h_□ = I − ΣR_{□,□′}C_□h_□. It has one main sum and three error sums: commutator, domain change, and separation. CMP 99 (3.95) [V text p. 411] has the same three. Our F_□ is −R term by term, with G′(□̃) replaced by the truncated sum. Balaban's sizes are e^{−⅛δ_0M} for the separation term ((2.84), image), e^{−δ_0M} for the domain change (p. 238, "follows from the random walk representations"), and O(M^{−1}) for the commutator.

### 4.2 Bounds in the conjugation norm [P]
Assume C_𝒟ρ_G ≤ ½ and M_1 ≥ M_a. Let 0 ≤ κ ≤ ½δ_G. Then:
 (sep) ‖E^sep_□‖_κ ≤ 2c_+Σ(¼δ_G)e^{−¼δ_GM_1};
 (tr) ‖E^tr_□‖_κ ≤ 2c_+Σ(¼δ_G)e^{−δ_GM_1};
 (com) ‖E^com_□‖_κ ≤ 2c_+c_hΣ(¼δ_G)/M_1.
Σ is decreasing in its argument, so Σ(κ′) ≤ Σ(¼δ_G) for κ′ ≥ ¼δ_G. This is used in each step below.

Proof of (sep). The kernel is (1 − 1_□(y))n̂(y, z)h_□(z). It vanishes unless y ∉ □ and z ∈ □⁻. Then d(y, z) ≥ d(□⁻, 𝔅∖□) ≥ M_1. By Corollary 1.2 with 𝒲′ = 𝒲, |n̂(y, z)| ≤ 2c_+ m e^{−δ_Gd(y, z)}. Split δ_Gd = ¼δ_Gd + ¾δ_Gd ≥ ¼δ_GM_1 + ¾δ_Gd. So the kernel is ≤ 2c_+e^{−¼δ_GM_1} m e^{−¾δ_Gd}. Apply (N3) with κ′ = ¾δ_G. Then κ′ − κ ≥ ¼δ_G. ∎
Proof of (tr). The kernel is (n̂ − n̂^{(□)})(y, z)h_□(z) for y, z ∈ □, and 0 otherwise. By Lemma 2.1(c), second bound, it is ≤ 2c_+e^{−δ_GM_1} m e^{−¾δ_Gd}. Apply (N3) with κ′ = ¾δ_G. ∎
Proof of (com). The kernel is n̂_□(y, z)(h_□(z) − h_□(y)) for y, z ∈ □. By Lemma 2.1(b) and the Lipschitz bound of 2.1, it is ≤ 2c_+(c_h/M_1) m d(y, z) e^{−δ_Gd} ≤ 2c_+(c_h/M_1) m (1 + d)e^{−δ_Gd}. Apply (N3) with κ′ = δ_G. Then κ′ − κ ≥ ½δ_G ≥ ¼δ_G. ∎
Note. The (1 + d) weight is already inside Σ. So no separate constant Σ′ is needed (SOURCES_A1_WALK_VERIFY §8).

### 4.3 The error per cube [P]
Take κ = ε ≤ ½δ_G. By (N1), 3.4(b), and ‖h_□‖_ε ≤ 1:
 ‖F_□‖_ε ≤ (4/c_−)(‖E^sep_□‖_ε + ‖E^tr_□‖_ε + ‖E^com_□‖_ε) ≤ ρ_1,
 ρ_1 := (8c_+Σ(¼δ_G)/c_−)·(e^{−¼δ_GM_1} + e^{−δ_GM_1} + c_h/M_1).
Let M_e be the least M_1 with e^{−¼δ_GM_1} ≤ 1/M_1 for all larger M_1 (M_e ≈ (4/δ_G)log(4/δ_G) up to a factor 2). For M_1 ≥ M_e, ρ_1 ≤ K_F/M_1 with K_F := (8c_+Σ(¼δ_G)/c_−)(2 + c_h).
Every constant in K_F is fixed before M_1. So K_F/M_1 is small for M_1 large.

## 5. The Neumann series

### 5.1 The weighted norm of F [P]
Put F := Σ_□ F_□. The kernel f_□(y, y′) vanishes unless y′ ∈ □⁻, because F_□ ends with h_□. By (N2) and 4.3, |f_□(y, y′)| ≤ ρ_1 m(y, y′) e^{−εd(y, y′)}. A point y′ lies in at most C_ov cores. So Σ_□ |f_□(y, y′)| ≤ C_ovρ_1 m e^{−εd}. Apply (N3) with κ′ = ε and κ = ½ε (the factor (1 + d) only enlarges the majorant):
 ‖F‖_{½ε} ≤ C_ovΣ(½ε)ρ_1 ≤ C_ovΣ(½ε)K_F/M_1.
The bound is uniform in the volume. A bound by sup_□ ‖F_□‖ alone would not be, because E^sep_□ has a global left support. The kernel route avoids this.

### 5.2 Convergence and identification [P]
Let M_N := 2C_ovΣ(½ε)K_F. For M_1 ≥ max{M_a, M_e, M_N} we have ‖F‖_{½ε} ≤ ½. Then:
 (a) Σ_{n≥0}(−F)^n converges in ‖·‖_{½ε} to (I + F)^{−1}, with ‖(I + F)^{−1}‖_{½ε} ≤ 2. Reason: ‖·‖_{½ε} is submultiplicative (N1) and dominates ‖·‖ (N0); the geometric series converges.
 (b) By 4.1, N̂P(I + F)^{−1} = (I + F)(I + F)^{−1} = I. ℋ is finite-dimensional, so a right inverse is a two-sided inverse. Hence N̂^{−1} = P(I + F)^{−1} = Σ_{n≥0}P(−F)^n.
 (c) ‖P‖_{½ε} ≤ sup_□ ‖C_□‖_{½ε} ≤ 4/c_−, by (N4), (N0), and 3.4(b). Hence ‖N̂^{−1}‖_{½ε} ≤ 8/c_−. By (N2), |N̂^{−1}(y, y′)| ≤ (8/c_−) m(y, y′) e^{−½εd(y, y′)}. This is claim (iv).
This is Balaban's (2.86) (Q′G′²Q′*)^{−1} = C(I − R)^{−1} [V image p. 238] in our notation. Balaban's final rate (2.87) is ½δ_1, half his local Combes–Thomas rate [V]. Ours is ½ε, half our local rate.

### 5.3 The blocks [P]
Every F_□ is now written as a sum of products of "blocks". A block is an operator Φ with a domain list ω_Φ whose factors satisfy (L1)–(L2), and a kernel bound |φ(z, z′)| ≤ β_Φ m(z, z′) e^{−εd(ω_Φ, z, z′)}. For a single domain X and z, z′ ∈ X, d((X), z, z′) = d(z, z′) (take x_0 = z).
 (K) K_□ := h_□C_□h_□. Domain list (□⁺). Kernel in □⁻ × □⁻. β = 4/c_−, by (N2) and 3.4(c).
 (Γ) Γ_□ := E^com_□C_□h_□. Domain list (□⁺). Kernel in □ × □⁻. β = ρ_com := (4/c_−)·2c_+c_hΣ(¼δ_G)/M_1, by (N1), (N2), 3.4(b), and 4.2(com).
 (S) For ω′ ∈ 𝒲: S_{□,ω′} := (1 − 1_□)N̂_{ω′}1_{□⁻}. Domain list ω′. The kernel vanishes unless y ∉ □ and z ∈ □⁻. Then d(ω′, y, z) ≥ d(y, z) ≥ M_1 by (D1). So δ_Gd(ω′, y, z) ≥ ¼δ_GM_1 + ¾δ_Gd(ω′, y, z), and with ε ≤ ¾δ_G, β = b_Ge^{−¼δ_GM_1}ρ_G^{|ω′|}.
 (R) For ω′ ∈ 𝒲∖𝒲_□: R_{□,ω′} := 1_□N̂_{ω′}1_{□⁻}. Domain list ω′. For y, z ∈ □, d(ω′, y, z) > 4M_1 (proof of Lemma 2.1(c)). So β = b_Ge^{−δ_GM_1}ρ_G^{|ω′|}.
The multiplications 1_□, 1 − 1_□, 1_{□⁻} are attached to the first or last factor of N̂_{ω′}. They shrink kernel supports and do not depend on U. So (L1)–(L2) of the (H1) factors survive. K_□ and Γ_□ satisfy (L1) for □⁺ by 2.1 (kernels in □ × □), and (L2) by 3.4(d) and Lemma 2.1(a).
Decomposition. Since h_□ = 1_{□⁻}h_□ and 1_□h_□ = h_□:
 E^sep_□C_□h_□ = Σ_{ω′∈𝒲} S_{□,ω′}K_□, E^tr_□C_□h_□ = Σ_{ω′∈𝒲∖𝒲_□} R_{□,ω′}K_□, E^com_□C_□h_□ = Γ_□.
Both sums converge absolutely, by (B1) and Lemma 1.1.

### 5.4 Concatenation lemma (cited; proof is W2's, SOURCES_WG §2.3, VERIFIED in SOURCES_WG_VERIFY §4)
Lemma (concatenation). Let T = Φ_1Φ_2···Φ_N be an ordered product of blocks with domain lists ω_k and bounds |φ_k(z, z′)| ≤ β_k m(z, z′) e^{−δd(ω_k, z, z′)}. Then:
 (a) T = 0 unless, for each k, the last domain of ω_k meets the first domain of ω_{k+1}. So the concatenated list ω := ω_1 ∘ ··· ∘ ω_N is a walk.
 (b) T depends on U only through U restricted to the union of the X̃^5 over all domains of ω.
 (c) For θ ∈ (0, 1): |T(y, y′)| ≤ (Π_k β_k)c_1(θδ)^{N−1} m(y, y′) e^{−(1−θ)δ d(ω, y, y′)}.
The proof sums over the junction points with the weights μ. The weights telescope: μ(z)m(x, z)m(z, x′) = m(x, x′). The exponent is split as (1 − θ) on the concatenated path length and θ on d(z_{k−1}, z_k). The junction sums are bounded by Lemma 2.1 of CMP 96. We do not repeat the proof.

### 5.5 The walk terms and the term bound [P]
Expand N̂^{−1} = Σ_n P(−F)^n with P = Σ_{□_0}K_{□_0} and the decomposition of 5.3. A term is labelled by n, □_0, and a sequence of insertions Ψ_1, …, Ψ_n. Each Ψ_i is one of S_{□_i,ω′_i}K_{□_i}, R_{□_i,ω′_i}K_{□_i}, or Γ_{□_i}. The term is
 T_ω := (−1)^n K_{□_0}Ψ_1···Ψ_n,
and ω is the concatenation of the domain lists of all its blocks. An insertion of type S or R adds |ω′_i| + 2 domains (the domains of ω′_i, then □_i⁺). An insertion of type Γ adds 1 domain. So |ω| is the sum of the added domains.
Define
 ρ := max{ρ_G, (4b_G/c_−)^{1/2}e^{−⅛δ_GM_1}, ρ_com}.
Claim (term bound). |T_ω(y, y′)| ≤ (4/c_−)(c_1ρ)^{|ω|} m(y, y′) e^{−½ε d(ω, y, y′)}, with c_1 := c_1(½ε).
Proof. Apply the concatenation lemma with δ = ε and θ = ½. The rate becomes ½ε and each junction costs c_1(½ε). The product of the β's is (4/c_−)Π_iβ(Ψ_i), with
 β(S K) = (4/c_−)b_Ge^{−¼δ_GM_1}ρ_G^{|ω′_i|}, β(R K) = (4/c_−)b_Ge^{−δ_GM_1}ρ_G^{|ω′_i|}, β(Γ) = ρ_com.
By the definition of ρ: (4b_G/c_−)e^{−¼δ_GM_1} ≤ ρ², ρ_G ≤ ρ, and ρ_com ≤ ρ. So β(S K) and β(R K) are ≤ ρ^{|ω′_i|+2}, and β(Γ) ≤ ρ. In each case the exponent equals the number of added domains. Hence Π_iβ(Ψ_i) ≤ ρ^{|ω|}. Every block has at least one domain, so the number of junctions is N − 1 ≤ |ω|. Also c_1 ≥ 1, because the sum defining c_1 contains the term y′ = y. So c_1^{N−1} ≤ c_1^{|ω|}. ∎
Size of ρ. ρ_G = c_G/M_1. ρ_com = 8c_+c_hΣ(¼δ_G)/(c_−M_1). Let M_e′ be the least M_1 with e^{−⅛δ_GM_1} ≤ 1/M_1 for all larger M_1; M_e′ ≥ M_e. For M_1 ≥ M_e′,
 ρ ≤ K_W/M_1, K_W := max{c_G, (4b_G/c_−)^{1/2}, 8c_+c_hΣ(¼δ_G)/c_−}.
Each insertion supplies its own small factors. The S- and R-insertions supply ρ_G per G-step and the separation or truncation exponential for the two junction steps, split as a square root over them. The Γ-insertion supplies c_h/M_1. This is the content of SOURCES_A1_WALK_VERIFY §8: every non-initial factor carries one of c_G/M_1, e^{−¼δ_GM_1}, e^{−δ_GM_1}, or c_h/M_1.
Why whole G-blocks. Balaban prints no single-factor bounds (CMP 99 p. 413, §1.1). So each N̂_{ω′} enters as one block with its whole-term bound (B1). Its path length enters the path length of ω through the concatenation lemma. This is the correction SOURCES_A1_WALK §6.2 made to §5.5 there.

### 5.6 Counting and absolute convergence [P]
All domains of the series have diameter ≤ D_+M_1: the □⁺ by 2.1, the (H1) domains by (B3), since c_X ≤ D_+. By (B2), at most C_𝒟 pairs (α, X′) of (H1) meet a given domain. By 2.1 and bounded overlap, at most C_𝒟 cubes □ have □⁺ meeting a given domain [I, geometry constant c(d, K_0, K_1); we enlarge C_𝒟 to cover it]. Encode a term by its labelled domain list. Given the prefix, the next label is one of: the next factor of the current G-block; the first factor of a new S-block; the first factor of a new R-block; a closing K_□; or a Γ_□. So there are at most C_W := 5C_𝒟 choices per step. The first domain is □_0⁺ with y ∈ □_0⁻: at most C_ov ≤ C_𝒟 choices. A label sequence may describe a product that vanishes, or the same product twice. Both only enlarge the count.
Let M_c := 2C_Wc_1K_W. For M_1 ≥ M_c, C_Wc_1ρ ≤ ½, and with (D1)
 Σ_ω |T_ω(y, y′)| ≤ (4/c_−) m e^{−½εd(y, y′)} Σ_{n≥0} C_𝒟(C_Wc_1ρ)^n ≤ (8C_𝒟/c_−) m(y, y′) e^{−½εd(y, y′)}.
This is claim (iii). SOURCES_A1_WALK §5.5 states 8/c_− and omits the first-domain count C_𝒟; the difference is a constant. The kernel bound (iv) of 5.2 does not contain C_𝒟.
Identification. For each n, P(−F)^n is a finite sum over (□_0, …, □_n) and types of products of absolutely convergent series. The expanded multiple series converges absolutely entrywise, by the bound above. ℋ is finite-dimensional, so the multiple series may be summed in any order. Hence Σ_ω T_ω = Σ_n P(−F)^n = N̂^{−1}. This is claim (i) together with 5.2.

### 5.7 The thresholds on M_1
M_W := max{2C_𝒟c_G, M_a, M_e′, M_N, M_c}. The first entry gives C_𝒟ρ_G ≤ ½ (Corollary 1.2). Every entry depends only on constants fixed before M_1 (§9). With these constants, Σ_ωT_ω is a walk expansion in the sense of §1.2 with B = 4/c_−, step factor c_1ρ, rate ½ε, and branching C = C_W.

## 6. The walk structure of the terms

This section checks (L1)–(L2) and (B1)–(B2) of §1.2 for the series Σ_ωT_ω of §5. Each item names the step that proves it.

### 6.1 The factors
A term T_ω is a product of factors of three kinds:
 (f1) factors R_α(X) of (H1), possibly with a multiplication 1_□, 1 − 1_□, or 1_{□⁻} attached on the left of the first factor or on the right of the last factor of a G-block (5.3);
 (f2) K_□ = h_□C_□h_□, with domain □⁺;
 (f3) Γ_□ = [N̂_□, h_□]C_□h_□, with domain □⁺.
Each factor of kind (f2) or (f3) is one factor, not a product of smaller factors. Its domain is □⁺.

### 6.2 (L1) [P]
 (f1) Multiplication by an indicator function can only shrink the support of a kernel. So the kernel of an (f1) factor still vanishes unless both arguments lie in X°, by (L1) of (H1).
 (f2) The kernel of K_□ vanishes outside □⁻ × □⁻.
 (f3) The kernel of Γ_□ vanishes outside □ × □⁻, because E^com_□ has kernel in □ × □ and C_□h_□ in □ × □⁻.
 By 2.1, d(□, 𝔅∖□⁺) > K_0M_1 > ⅓M_1. So □ ⊂ (□⁺)°, and (f2), (f3) satisfy (L1) for the domain □⁺. The margin is K_0M_1, larger than the ⅓M_1 band of CMP 116 p. 3.

### 6.3 (L2) [P]
 (f1) A multiplication by an indicator does not depend on U. So the U-dependence of an (f1) factor is that of R_α(X): only U on X̃^5.
 (f2), (f3) By Lemma 2.1(a) and 3.4(d), N̂_□ and C_□ depend on U only on □⁺. The function h_□ does not depend on U. Since □⁺ ⊂ (□⁺)~^5, the factor depends on U only through U on (□⁺)~^5.
 Hence T_ω depends on U only through U restricted to ∪_iX̃_i^5. This is also part (b) of the concatenation lemma.

### 6.4 Walk property [P]
Inside a G-block, consecutive domains intersect, because ω′ ∈ 𝒲 is a walk. At a junction between blocks, part (a) of the concatenation lemma gives a nonempty intersection whenever the term is nonzero. Zero terms may be dropped. So every nonzero T_ω is indexed by a walk.

### 6.5 (B1) and (B2) [P]
(B1) is the term bound of 5.5, with B = 4/c_−, step factor c_1ρ ≤ c_1K_W/M_1, and rate ½ε. (B2) is the count of 5.6, with C = C_W = 5C_𝒟 and C_Wc_1ρ ≤ ½ for M_1 ≥ M_W.

### 6.6 The (3.108) form [P, with the caveat WG-1]
Write (c_1K_W/M_1)^{|ω|} = (c_1K_WM_1^{−1/2})^{|ω|}·M_1^{−½|ω|}. For M_1 ≥ (2C_Wc_1K_W)², the first factor alone controls the count: C_Wc_1K_WM_1^{−1/2} ≤ ½. The second factor M_1^{−½|ω|} is then free. This is the form of CMP 99 (3.108) [V], O(1)O(M^{−1/2})^{|ω|}M^{−½|ω|}, and CMP 116 p. 3 states that the first two factors "control the sum over ω" [V].
Caveat WG-1 [I, open point of SOURCES_WG, exponent corrected in SOURCES_WG_VERIFY §5]. (H1) assumes the step factor ρ_G = c_G/M_1 for G. Theorem WG-G gives this per step only if α_0 ≤ c′M^{−11}. Under only Mα_0 ≤ a_0, the V-junction steps inside G carry O(a_0^{1/10}) instead of c/M. The condition α_0 ≤ c′M^{−11} is admissible in Balaban's order (M is fixed first, then α_0 is made small; CMP 99 Thm 3.12, p. 422). It is not implied by Mα_0 ≤ a_0. We assume it in (H4).

### 6.7 Admissibility of the domains [V]
CMP 116 p. 13 [V text and image]: "the localization domains in expansions can be chosen to a large extent arbitrarily, they have to be only unions of connected families of M_1-cubes". The domains □⁺ are connected unions of M_1-cubes (2.1). The (H1) domains are Balaban's own. So the walk expansion of §5 has admissible domains.

### 6.8 Undoing the rescaling [P given SOURCES_A1_KERNEL §8]
(QGQ*)^{−1} = S^{−1/2}N̂^{−1}S^{−1/2} = Σ_ω S^{−1/2}T_ωS^{−1/2}. S^{−1/2} is diagonal and does not depend on U. Attach it to the first and last factor. (L1)–(L2) and the count are unchanged. The kernel bound becomes the symmetric form
 |(S^{−1/2}T_ωS^{−1/2})(y, y′)| ≤ (4/c_−)L^{d/2+1}(L^jη)^{−1−d/2}(L^{j′}η)^{−1−d/2}(c_1ρ)^{|ω|}e^{−½εd(ω, y, y′)}, y ∈ Λ_j, y′ ∈ Λ_{j′},
as in SOURCES_A1_WALK §5.6 and §7.1. Balaban's split (L^jη)^{−2}(L^{j′}η)^{−d} holds at rate ½ε − (d/2 + 1)θ and needs RM ≥ (d + 2)log L/ε (SOURCES_A1_KERNEL §10 correction).

### 6.9 Trees [P given SOURCES_WG §3]
If (H1) is a tree expansion, as for G_1 (CMP 99 p. 427 [V text]; Theorem WG-G1 of SOURCES_WG §3.7), then §2–§5 hold with these changes. d(ω, y, y′) is the length of a shortest tree that meets all domains. A G-block is a tree term, and its branches end inside the block. The concatenation lemma extends to trees by SOURCES_WG §3.5. The count uses the depth-first code of SOURCES_WG §3.6, with C_W replaced by 2C_W. The result is the tree expansion of (QG_1Q*)^{−1}. Its lower bound is c_{−,1} := c_−(G_1) ≥ c_−(1 − O(Mα_0)) (SOURCES_A1_KERNEL §9; conditional like (H2)). The a-term of (QG_1Q*)^{−1} = N_1^{−1} + a is a one-cube diagonal factor.

## 7. The Z_0-compressed variant

CMP 116 p. 13 [V image] needs a walk expansion of C^{(k)}(Z_0) of a special form: "we take a domain X_0 such, that X̃_0^5 = Z̃_0 (... the tilde over X_0 means that M_1-cubes are adjoined, and the tilde over Z_0 concerns M-cubes). Other localization domains X ... unions of small, connected families of M_1-cubes, and we assume that dist(X, Z_0) > ⅔M." Balaban refers the construction to [13] = CMP 99 [V, SOURCES_WC_RESIDUE_VERIFY Q3]. This section gives it. It closes open point O3 of SOURCES_A1_WALK §9.

### 7.1 Setting
- One scale: the reduced unit-lattice bonds, μ ≡ 1, m ≡ 1, no S-rescaling. d_∞ is the ℓ^∞ distance. Euclidean distance is ≥ d_∞, so lower bounds in d_∞ transfer.
- Z_0 is a union of M-cubes. M and M_1 are powers of L. Put q := M/M_1.
- A is an operator with a walk (or tree) expansion (W_N): (L1)–(L2) and (B1)–(B3) of (H1), with constants b_A, ρ_A ≤ c_A′/M_1, δ_A, C_𝒟, c_X. Put c_A := C_𝒟b_A.
- Lower bound: Re⟨u, Au⟩ ≥ γ‖u‖² for all u, with γ > 0.
- Application [P given its inputs]: A = A_exp of SOURCES_WC_EXPGAUGE, with (W_N) from its §4.2 (a tree expansion; use 6.9) and γ = γ_exp = ½min(½, c_G)γ_e(d, L) from its Theorem L, where c_G = 1 (SOURCES_WC_EXPGAUGE_VERIFY V9). Then A_Z^{−1} = C^{(k)}(Z_0).

### 7.2 Compression [P]
A_Z := 1_{Z_0}A1_{Z_0}, an operator on ℓ²(Z_0).
 (a) For u supported in Z_0, ⟨u, A_Zu⟩ = ⟨u, Au⟩. So Re⟨u, A_Zu⟩ ≥ γ‖u‖².
 (b) A_Z = Σ_ω 1_{Z_0}A_ω1_{Z_0}. Attach 1_{Z_0} to the first and last factor of each term. This shrinks kernel supports and adds no U-dependence. So A_Z has the expansion (W_N) with the same domains, the same U-locality, and the same constants, uniformly in Z_0.
Compression keeps both inputs. No extra local piece on Z̃_0 is needed. SOURCES_WC_EXPGAUGE_VERIFY V6 confirmed this route.

### 7.3 Local operators, parametrix, and series [P]
Cover: the cubes □ of side K_1M_1 that meet Z_0. Let φ_□ be tent functions with supp φ_□ ⊂ □⁻ and Σφ_□² ≥ c(d) > 0 on Z_0. Put h_□ := φ_□(Σ_{□′}φ_{□′}²)^{−1/2} on Z_0. Then Σ_□h_□² = 1 on Z_0 and |h_□(b) − h_□(b′)| ≤ (c_h/M_1)|b − b′|. On one scale the multiscale Lipschitz item O2 does not arise.
Replace 1_□ by 1_{□∩Z_0} everywhere in §2–§5. The steps go through with these renamings:
 N̂ → A_Z; c_− → γ; c_+ → c_A; δ_G → δ_A; b_G, ρ_G → b_A, ρ_A; I → I_{Z_0}.
Check of each step:
 - Lemma 2.1: the local operator is A_{Z,□} := 1_{□∩Z_0}A_Z^{(□)}1_{□∩Z_0}, with A_Z^{(□)} the kept-walk sum of A_Z. The proof of 2.1(e) uses only the identity ⟨u, A_{Z,□}u⟩ = ⟨u, A_Zu⟩ − ⟨u, 1(A_Z − A_Z^{(□)})1u⟩ for u supported in □ ∩ Z_0, and 7.2(a). So Re⟨u, A_{Z,□}u⟩ ≥ ½γ‖u‖² for M_1 ≥ M_a(γ, c_A, δ_A).
 - §3: ε_Z := min{½δ_A, γ/(8c_AΣ(½δ_A))} and ‖C_□‖_{ε_Z} ≤ 4/γ.
 - §4.1: h_□ = 1_{□∩Z_0}h_□, because supp h_□ ⊂ □⁻ ∩ Z_0. A_Z is already compressed, and Σh_□² = I_{Z_0} on ℓ²(Z_0). So A_ZP = I_{Z_0} + ΣF_□, with no boundary term at ∂Z_0.
 - §4.2 (sep): y ∈ Z_0∖□ and z ∈ □⁻ give d(y, z) ≥ d(□⁻, 𝔅∖□) ≥ M_1. The rest of the proof of 4.2 is unchanged.
 - §5: the counting, the term bound, and the identification hold with the renamed constants.
Result:
 C^{(k)}(Z_0) = A_Z^{−1} = Σ_ωT_ω, |T_ω(b, b′)| ≤ (4/γ)(c_1ρ)^{|ω|}e^{−½ε_Z d(ω, b, b′)},
absolutely convergent for M_1 ≥ M_W(γ, c_A, δ_A, …). The domains are □⁺ for cubes meeting Z_0, and the (W_N) domains. The (W_N) domains may leave Z_0. The kernel arguments of T_ω lie in Z_0.
Resolvent remark [P, SOURCES_WC_EXPGAUGE §5.5, VERIFY V7]. For x ≥ 0, x·I is diagonal. It adds nothing to the Combes–Thomas error and raises the lower bound to γ + x. So the same holds for (x + A_Z)^{−1}, uniformly in x ≥ 0, with 4/γ → 4/(γ + x).

