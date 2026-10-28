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
- Remark on Σ. SOURCES_A1_KERNEL §5 uses a variant with the extra factor (μ(y′)/μ(y))^{1/2}. The counting form above is the Schur constant of VAV^{−1} on ℓ²(𝔅). It is the form that CMP 96 Lemma 2.1 bounds directly. Every bound below uses the counting form.

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

### 2.3 Lemma LT (locality and truncation) [P]
Naming. This lemma is called Lemma LT. "Lemma 2.1" in this file always means CMP 96 Lemma 2.1.
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
 c = ½c_− (Lemma LT(e)); b = 2c_+ (Lemma LT(b)); δ = δ_G.
The condition on ε reads ε ≤ min{½δ_G, (½c_−)/(2·2c_+Σ(½δ_G))} = min{½δ_G, c_−/(8c_+Σ(½δ_G))}. This is the ε of Theorem A1-W. Define C_□ := N̂_□^{−1} on ℋ_□, extended by 0. Then:
 (a) N̂_□C_□ = 1_□ exactly (as operators on ℋ).
 (b) ‖C_□‖_ε ≤ 2/(½c_−) = 4/c_−. The extension by 0 keeps this: a 1-Lipschitz f on 𝔅 restricts to a 1-Lipschitz f on □, and e^{εf}(C_□ ⊕ 0)e^{−εf} = (e^{εf}C_□e^{−εf}) ⊕ 0.
 (c) ‖h_□C_□h_□‖_ε ≤ 4/c_−, by (N1), since h_□ commutes with e^{εf} and ‖h_□‖ ≤ 1.
 (d) C_□ depends on U only on □⁺, because N̂_□ does (Lemma LT(a)).
 (e) ε, c_±, and the bound 4/c_− do not depend on M_1, □, U, j, k, η, or volume. c_− is uniform by (H2). c_+ and δ_G are uniform by (H1). Σ is monotone in θ and bounded for M at least a minimal M(d, L) [R, CMP 96 Lemma 2.1].
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
Proof of (tr). The kernel is (n̂ − n̂^{(□)})(y, z)h_□(z) for y, z ∈ □, and 0 otherwise. By Lemma LT(c), second bound, it is ≤ 2c_+e^{−δ_GM_1} m e^{−¾δ_Gd}. Apply (N3) with κ′ = ¾δ_G. ∎
Proof of (com). The kernel is n̂_□(y, z)(h_□(z) − h_□(y)) for y, z ∈ □. By Lemma LT(b) and the Lipschitz bound of 2.1, it is ≤ 2c_+(c_h/M_1) m d(y, z) e^{−δ_Gd} ≤ 2c_+(c_h/M_1) m (1 + d)e^{−δ_Gd}. Apply (N3) with κ′ = δ_G. Then κ′ − κ ≥ ½δ_G ≥ ¼δ_G. ∎
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
 (R) For ω′ ∈ 𝒲∖𝒲_□: R_{□,ω′} := 1_□N̂_{ω′}1_{□⁻}. Domain list ω′. For y, z ∈ □, d(ω′, y, z) > 4M_1 (proof of Lemma LT(c)). So β = b_Ge^{−δ_GM_1}ρ_G^{|ω′|}.
The multiplications 1_□, 1 − 1_□, 1_{□⁻} are attached to the first or last factor of N̂_{ω′}. They shrink kernel supports and do not depend on U. So (L1)–(L2) of the (H1) factors survive. K_□ and Γ_□ satisfy (L1) for □⁺ by 2.1 (kernels in □ × □), and (L2) by 3.4(d) and Lemma LT(a).
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
 (f2), (f3) By Lemma LT(a) and 3.4(d), N̂_□ and C_□ depend on U only on □⁺. The function h_□ does not depend on U. Since □⁺ ⊂ (□⁺)~^5, the factor depends on U only through U on (□⁺)~^5.
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
 - Lemma LT: the local operator is A_{Z,□} := 1_{□∩Z_0}A_Z^{(□)}1_{□∩Z_0}, with A_Z^{(□)} the kept-walk sum of A_Z. The proof of Lemma LT(e) uses only the identity ⟨u, A_{Z,□}u⟩ = ⟨u, A_Zu⟩ − ⟨u, 1(A_Z − A_Z^{(□)})1u⟩ for u supported in □ ∩ Z_0, and 7.2(a). So Re⟨u, A_{Z,□}u⟩ ≥ ½γ‖u‖² for M_1 ≥ M_a(γ, c_A, δ_A).
 - §3: ε_Z := min{½δ_A, γ/(8c_AΣ(½δ_A))} and ‖C_□‖_{ε_Z} ≤ 4/γ.
 - §4.1: h_□ = 1_{□∩Z_0}h_□, because supp h_□ ⊂ □⁻ ∩ Z_0. A_Z is already compressed, and Σh_□² = I_{Z_0} on ℓ²(Z_0). So A_ZP = I_{Z_0} + ΣF_□, with no boundary term at ∂Z_0.
 - §4.2 (sep): y ∈ Z_0∖□ and z ∈ □⁻ give d(y, z) ≥ d(□⁻, 𝔅∖□) ≥ M_1. The rest of the proof of 4.2 is unchanged.
 - §5: the counting, the term bound, and the identification hold with the renamed constants.
Result:
 C^{(k)}(Z_0) = A_Z^{−1} = Σ_ωT_ω, |T_ω(b, b′)| ≤ (4/γ)(c_1ρ)^{|ω|}e^{−½ε_Z d(ω, b, b′)},
absolutely convergent for M_1 ≥ M_W(γ, c_A, δ_A, …). The domains are □⁺ for cubes meeting Z_0, and the (W_N) domains. The (W_N) domains may leave Z_0. The kernel arguments of T_ω lie in Z_0.
Resolvent remark [P, SOURCES_WC_EXPGAUGE §5.5, VERIFY V7]. For x ≥ 0, x·I is diagonal. It adds nothing to the Combes–Thomas error and raises the lower bound to γ + x. So the same holds for (x + A_Z)^{−1}, uniformly in x ≥ 0, with 4/γ → 4/(γ + x).

### 7.4 The tilde and the band X_0 [V + P]
Reading of the tilde [V]. Z̃_0 is Z_0 with every M-cube adjoined that touches Z_0, including cubes that share only a vertex or an edge (ℓ^∞ adjacency). Page anchors: CMP 99 p. 411 "the cube □̃²"; CMP 99 p. 413 "□_0, which is a sum of 5^d cubes"; CMP 119 p. 245 "adding one layer of ... cubes touching □" (SOURCES_WC_RESIDUE §2–§3, VERIFY Q3, Q8).
Diameter constant. In this section c_X denotes the ℓ^∞ diameter bound, in units of M_1, of ALL domains of the series of 7.3. These are the (W_N) domains and the □⁺. So c_X here is max{c_X of (B3), D_+}. The sources write c_X for this bound.
 (a) Z̃_0 ⊇ N_M(Z_0) := {x : d_∞(x, Z_0) ≤ M}. Proof: let x have d_∞(x, Z_0) ≤ M, and let z ∈ Z_0 be a nearest point. The grid M-cube of x has index differing by at most 1 per coordinate from the M-cube of z. So it touches the cube of z, which lies in Z_0, and it is in Z̃_0. Also d_∞(Z̃_0^c, Z_0) ≥ M: an M-cube outside Z̃_0 does not touch Z_0, so its index differs by ≥ 2 in some coordinate from every cube of Z_0. ∎
 (b) Let X_0 be the union of the M_1-cubes Q with Q̃^5 ⊂ Z̃_0. If q > 10, then X̃_0^5 = Z̃_0 and d_∞(X_0^c, Z_0) ≥ M − 5M_1. Proof: X̃_0^5 ⊂ Z̃_0 holds by the definition of X_0. Inside one M-cube of Z̃_0, index the M_1-cubes by 0, …, q − 1 per coordinate. Cubes with all indices in 5, …, q − 6 lie in X_0, because their 5-layer dilation stays in the M-cube. Every index in 0, …, q − 1 is within 5 of the range 5, …, q − 6 iff q − 6 ≥ 5, i.e. q > 10. Then the 5-layer dilation of X_0 covers every M-cube of Z̃_0. For the distance: a point of X_0^c lies in an M_1-cube Q with Q̃^5 ⊄ Z̃_0, so it is within d_∞ ≤ 5M_1 of Z̃_0^c. By (a), d_∞(Z̃_0^c, Z_0) ≥ M. ∎ (Lattice-unit margins are ignored; they are absorbed by the strict inequality in (c).)
 (c) Near and far. Call a domain X near iff X ⊂ X_0 and d_∞(X, X_0^c) ≥ M_1. Call it far otherwise. If q > 3(6 + c_X), every far domain has d_∞(X, Z_0) > ⅔M. Proof: a far X has a point x with d_∞(x, X_0^c) < M_1. By (b), d_∞(x, Z_0) > M − 5M_1 − M_1 = M − 6M_1. The diameter of X is ≤ c_XM_1. So d_∞(X, Z_0) > M − (6 + c_X)M_1 ≥ ⅔M, where the last step is q ≥ 3(6 + c_X). ∎ We state the condition as the strict q > 3(6 + c_X), as SOURCES_WC_RESIDUE_VERIFY Q4 asks.
 (d) The band. A near domain X has d_∞(X, X_0^c) ≥ M_1 ≥ ⅓M_1. So the kernels of near factors vanish within ⅓M_1 of ∂X_0. This is the CMP 116 p. 3 band for the merged factor (SOURCES_WC_EXPGAUGE_VERIFY V7 correction).
 (e) U-dependence. Dilation is monotone. So a near X has X̃^5 ⊂ X̃_0^5 = Z̃_0.
 (f) Corners. Under (a) no corner loss occurs. Under the face-only reading the diagonal M-cube at a convex corner of Z_0 is missing. Then the separation is 0 at that corner, and the equation X̃_0^5 = Z̃_0 has no solution (SOURCES_WC_RESIDUE §4.5, VERIFY Q4 addition). So p. 13 is consistent only under the ℓ^∞ reading.
Two conditions on q. The conditions q > 10 and q > 3(6 + c_X) concern M/M_1. They are not the σ_k condition R_1M_1 ≤ M of CMP 116 p. 3 (SOURCES_WC_RESIDUE §4.3). SOURCES_WC_EXPGAUGE writes the second as "R_1 ≥ 3(6 + c_X)"; read it as a condition on M/M_1. Both hold for M large after M_1.

### 7.5 Merging into the p. 13 form [P]
Merge every maximal run of consecutive near domains of a walk ω into one slot with domain X_0. The merged sequence ω̄ has n_0 slots X_0 and n_f far domains, in order. Slots X_0 are not consecutive, so n_0 ≤ n_f + 1. The merged factor of a slot is the sum, over all runs that give ω̄, of the products of the factors in the run. By (d) and (e) it satisfies the band condition for X_0 and depends on U only on Z̃_0.
Path length. Let x_i ∈ X_i be points of a near-optimal path for ω. For each run keep one point x_i; it lies in X_0. Removing the other points of the run does not increase the length, by the triangle inequality. So d(ω, b, b′) ≥ d(ω̄, b, b′).
Bound. Fix ω̄. A run of r ≥ 1 near domains admits at most C_W^r label choices, by 5.6. |ω| = n_f + Σ_jr_j − 1. With the term bound of 7.3 and C_Wc_1ρ ≤ ½:
 Σ_{ω↦ω̄} |T_ω(b, b′)| ≤ (4/γ)(c_1ρ)^{n_f−1}Π_{j=1}^{n_0}(Σ_{r≥1}(C_Wc_1ρ)^r) e^{−½ε_Z d(ω̄, b, b′)} ≤ (4/γ)(c_1ρ)^{n_f−1}(2C_Wc_1ρ)^{n_0} e^{−½ε_Z d(ω̄, b, b′)}.
If n_0 ≥ 1, use 2C_Wc_1ρ ≤ 1 for all but one slot. In all cases the bound is ≤ (8C_W/γ)(c_1ρ)^{max(n_f−1, 0)}e^{−½ε_Z d(ω̄, b, b′)}. So every far domain except at most one carries the step factor c_1ρ. The constant of the merged slots is O(1)/γ per walk, not per slot (SOURCES_WC_EXPGAUGE_VERIFY V7 asked for this). Sums over ω̄ are taken through the absolutely convergent sum over ω (Lemma 1.1). This is the structure that the s-rule (CMP 116 pp. 3, 13) and SOURCES_A2_R2 §3 consume.

## 8. Complex configurations

### 8.1 Domains, discs, and conventions [P, with the radius from SOURCES_WC_RESIDUE §7.0]
- For a = (a_0, a_1) let 𝒰(a) be the set of pairs U_c = (U′U, J) with: U G-valued and regular ((3.35)–(3.36), Mα_0 ≤ a_0^{reg}); U′ = e^{iL^{−1}ηA′}, with |A′|, |∇A′| (and |D*DA′| where (3.38) is used) < a_1 in the scaled units of CMP 99 (3.37) [V p. 396–397]; J 𝔤^c-valued with |J| < a_0. J is a free complex variable as in CMP 116 p. 15 [V text].
- Real point: U_c^0 := (U, 0). Disc: U(t) := (e^{itL^{−1}ηA′}U, tJ), t ∈ ℂ.
- Radius. If U_c ∈ 𝒰(a) and b ≥ a componentwise, then U(t) ∈ 𝒰(b) for |t| < t(a, b) := c_P·min{b_0/(a_0 + a_1), b_1/a_1}, c_P = c_P(d) > 0. The mixed first entry comes from the plaquette condition of CMP 109 (1.13)–(1.14) along the disc (SOURCES_WC_RESIDUE §7.0, confirmed sufficient in VERIFY Q7).
- Conventions. At a complex point, "*" is the analytic continuation of the real adjoint (the bilinear transpose). ⟨·, ·⟩ stays sesquilinear. Norms are ℓ²-operator norms, bounded by the Schur test, uniform in volume.

### 8.2 Lemma CP (Cauchy perturbation) [P]
Let F(U_c) be an operator family, analytic on 𝒰(b), with ‖F‖ ≤ Γ there. Assume Re⟨u, F(U_c^0)u⟩ ≥ c‖u‖² for all complex u, with c > 0. Assume t := t(a, b) ≥ 1 + 2Γ/c. Then Re⟨u, F(U_c)u⟩ ≥ ½c‖u‖² for every U_c ∈ 𝒰(a) and every complex u.
Proof. f(s) := F(U(s)) is analytic for |s| < t, with ‖f‖ ≤ Γ. For |s| < 1, the closed disc of radius r < t − |s| about s lies in the domain. The Cauchy estimate on that disc gives ‖f′(s)‖ ≤ Γ/r. Let r → t − |s|: ‖f′(s)‖ ≤ Γ/(t − |s|). Integrate along [0, 1]: ‖f(1) − f(0)‖ ≤ ∫_0^1 Γ/(t − s)ds = Γlog(t/(t − 1)) ≤ Γ/(t − 1) ≤ ½c. The middle inequality is log(1 + x) ≤ x with x = 1/(t − 1). Hence Re⟨u, f(1)u⟩ ≥ Re⟨u, f(0)u⟩ − ‖f(1) − f(0)‖‖u‖² ≥ ½c‖u‖². ∎
Remark on the hypothesis. SOURCES_WC_RESIDUE §6.1 assumed F(U_c^0) real symmetric. The proof uses only the accretive bound. SOURCES_WC_RESIDUE_VERIFY Q6 restated the hypothesis this way, because a truncated local operator need not be symmetric. For a real matrix A, the real-vector bound implies the complex one: with u = a + ib, Re⟨u, Au⟩ = ⟨a, Aa⟩ + ⟨b, Ab⟩.

### 8.3 Lemma AW (A1-W at complex points) [P given its inputs]
Hypotheses on 𝒰(b):
 (i) the propagator P (P = G or G_1) has a walk or tree expansion with (B1)–(B3) of (H1), constants b^b, ρ^b ≤ c^b/M_1, δ^b, and every term analytic in U_c. Put c_+^b := C_𝒟b^b;
 (ii) at every real point, N̂_P := S^{−1/2}QPQ*S^{−1/2} satisfies Re⟨u, N̂_Pu⟩ ≥ c_−‖u‖² (input (C) for P);
 (iii) M_1 ≥ M_a, so that every real truncated local operator N̂_{P,□} has Re ≥ ½c_− (Lemma LT(e) at the real point).
Put Γ_b := 2c_+^bΣ(δ^b). Assume t(a, b) ≥ 1 + 4Γ_b/c_−.
Conclusion on 𝒰(a):
 (a) Re⟨u, N̂_{P,□}(U_c)u⟩ ≥ ¼c_−‖u‖² for every □;
 (b) ‖C_□‖_{ε^a} ≤ 8/c_−, with ε^a := min{½δ^b, c_−/(16c_+^bΣ(½δ^b))} ≥ ½min{½δ^b, c_−/(8c_+^bΣ(½δ^b))};
 (c) N̂_P(U_c)^{−1} = Σ_ωT_ω(U_c), with |T_ω| ≤ (8/c_−)(c_1ρ^a)^{|ω|}m e^{−½ε^a d(ω)} and absolute sum ≤ (16C_𝒟/c_−)m e^{−½ε^a d}, for M_1 ≥ M_W^c;
 (d) every T_ω and the sum are analytic on 𝒰(a).
Proof.
 (a) F := N̂_{P,□} is a truncated walk sum. Each term is analytic on 𝒰(b) by (i). The sum converges uniformly on 𝒰(b), by (B1)–(B2) and Lemma 1.1. ℋ_□ is finite-dimensional, so F is analytic. By Lemma LT(b) and (N3) with κ = 0 and κ′ = δ^b, ‖F‖ ≤ 2c_+^bΣ(δ^b) = Γ_b. At U_c^0, Re ≥ ½c_− by (iii). Apply Lemma CP with c = ½c_−. Its condition is t ≥ 1 + 2Γ_b/(½c_−) = 1 + 4Γ_b/c_−.
 (b) Apply Lemma CT with c = ¼c_−, b = 2c_+^b, δ = δ^b. The condition is ε ≤ (¼c_−)/(2·2c_+^bΣ(½δ^b)) = c_−/(16c_+^bΣ(½δ^b)). The bound is 2/(¼c_−) = 8/c_−. Compared with 3.4, the Combes–Thomas branch of the minimum is halved and the δ-branch is unchanged. Since min{x, y/2} ≥ ½min{x, y}, ε^a ≥ ½ε^{real}(c_+^b, δ^b).
 (c) §4 and §5 are algebraic or use only kernel bounds, the local inverse bound, and counting. Replace 4/c_− by 8/c_−, c_+ by c_+^b, δ_G by δ^b, and ε by ε^a. The identity of 4.1 holds because C_□ = N̂_{P,□}^{−1} exists by (a). The right-inverse step 5.2(b) holds in finite dimension. The constants ρ_1, K_F, and K_W at most double. M_N and M_c grow by bounded factors, and c_1 is taken at ½ε^a. So the threshold becomes M_W^c ≥ M_W (SOURCES_WC_RESIDUE_VERIFY Q6 (ii)). M_W^c is fixed before every α^{(n)}.
 (d) C_□(U_c) is analytic, since N̂_{P,□} is analytic and invertible on 𝒰(a) (Cramer's rule). Each T_ω is a finite product of analytic factors and of absolutely convergent analytic sums. The sum over ω converges uniformly on 𝒰(a) by (c). So the limit is analytic, and it equals N̂_P(U_c)^{−1} by 5.2(b). ∎
Constant corrections from SOURCES_WC_RESIDUE_VERIFY Q6. Γ_b carries the factor 2 of Lemma LT(b): Γ_b = 2c_+^bΣ(δ^b), not c_+^bΣ(δ^b). The per-walk constant is 8/c_−, and the absolute sum constant is 16C_𝒟/c_−.

### 8.4 The four-level chain [P given the tagged inputs; constants from SOURCES_WC_RESIDUE §6.3–§7.2 with VERIFY Q6–Q7]
Why four levels [V]. CMP 99 Thm 3.4 (p. 400, image) extends only G′, (Q′G′²Q′*)^{−1}, R, and G to complex U′U, for α_1 ≤ a_1. Thm 3.12 (p. 423) and the G_1 tree paragraph (p. 427) are stated at G-valued U only. A scan of CMP 99 finds no complex statement for G_1, H, H_1, or (QGQ*)^{−1} (SOURCES_WC_RESIDUE_VERIFY Q5). A complex G_1 needs H = GQ*(QGQ*)^{−1} at complex points. So the chain starts at G.
Chain constants are named k_1, k_2, k_3 to avoid a clash with c_1 of CMP 96 Lemma 2.1.
 Level 4, domain 𝒰(b⁗), b⁗ := (∞ in J, a_1). Input: CMP 99 Thm 3.4 [V]. The walk form (W_G) at complex points is [R]: Thm 3.4's "quantitative statements ... small perturbations" plus Thm 3.10 for the same G; each walk term is a finite product of operators that Thm 3.4 continues. Constants c_+⁗ = c_+(1 + O(a_1)) (the factors ‖Ad e^{iA′}‖ ≤ e^{2|A′|}) and δ⁗ = δ_G.
 Level 3, domain 𝒰(α‴). Put Γ_4 := 2c_+⁗Σ(δ_G) and k_3 := c_Pc_−/(c_− + 4Γ_4). Take α_1‴ ≤ k_3a_1. Then t(α‴, b⁗) ≥ 1 + 4Γ_4/c_−, and Lemma AW with P = G gives the walk expansion of (QGQ*)^{−1} on 𝒰(α‴), at rate ε_3 ≥ ½ε (ε = the real rate of Theorem A1-W). Then H = GQ*(QGQ*)^{−1}, H*J, Δ_π^{(2)}, and the tree expansion of G_1 = Σ_nG(Δ_π^{(2)}G)^n are built on 𝒰(α‴) by the steps of SOURCES_WG §3.1–§3.7. Each step concatenates analytic kernels. The Neumann condition for Δ_π^{(2)}G uses |J| < α_0‴ with Mα_0‴ ≤ a_** (CMP 99 (3.137): |Δ^{(2)}| ≤ O(1)Mα_0, linear in J by (3.134)). Result: (W_G1) on 𝒰(α‴) with B_1‴ = O(1)B_1 and δ_1‴ = (1 − θ)·½ε_3. J-row: α_0‴ ≤ min(a_**/M, c′M^{−11}) (SOURCES_WG §3.6 and WG-1).
 Level 2, domain 𝒰(α″). Put Γ_3 := 2B_1‴Σ(δ_1‴) and k_2 := c_Pc_{−,1}/(c_{−,1} + 4Γ_3), with c_{−,1} = c_−(G_1) ≥ c_−(1 − O(Mα_0)) (conditional, 6.9). Take α″ ≤ k_2α‴ componentwise, with the mixed α_0-row of 8.1. Lemma AW with P = G_1 (tree form, 6.9) gives the tree expansion of (QG_1Q*)^{−1} on 𝒰(α″): |T_τ| ≤ (8/c_{−,1})(c_1ρ)^{|τ|}e^{−½ε_2d(τ)}, ε_2 ≥ ½ε_1^{real}(B_1‴, δ_1‴). This is the input of (W_N) on 𝒰(α″). SOURCES_WC_EXPGAUGE §6.0 then gives (W_N) for A_exp on 𝒰(α″), with constants B_A″ and δ_A″ ≤ min(½ε_2, rates of the explicit pieces).
 Level 1, domain 𝒰(α′). A_exp is analytic on 𝒰(α″) with ‖A_exp‖ ≤ Γ_1″ := 2B_A″Σ(δ_A″) (Schur on (W_N)). At U_c^0, A_exp ≥ γ_exp by Theorem L of SOURCES_WC_EXPGAUGE §3; it is real symmetric there. Put k_1 := c_Pγ_exp/(γ_exp + 2Γ_1″) and take α′ ≤ k_1α″. Lemma CP with F = A_exp and c = γ_exp gives Re⟨u, A_exp(U_c)u⟩ ≥ ½γ_exp‖u‖² on 𝒰(α′). Compression to Z_0 keeps it (7.2(a)). Then §7 runs at every point of 𝒰(α′) with γ → ½γ_exp. Lemma 2.1(e) at the complex point gives the local bound ¼γ_exp. Lemma CT gives ‖C_□‖ ≤ 8/γ_exp and the rate
 ε″ := min{½δ_A″, γ_exp/(16c_A″Σ(½δ_A″))}, c_A″ := C_𝒟b_A″.
 Result: C^{(k)}(Z_0; U_c) = Σ_ωT_ω(U_c) with |T_ω| ≤ (8/γ_exp)(c_1ρ″)^{|ω|}e^{−½ε″d(ω)}, in the p. 13 form of 7.5, analytic on 𝒰(α′). This is (W^c) of SOURCES_WC_EXPGAUGE §6.3.
Summary of the chain:
 α′ ≤ k_1α″ ≤ k_1k_2α‴ ≤ k_1k_2k_3a_1 (α_1-row), plus the J-row α_0‴ ≤ min(a_**/M, c′M^{−11}).
The mixed α_0-row forces α_0^{(n)} + α_1^{(n)} ≤ k_nα_0^{(n+1)}, where α^{(n+1)} is the next larger domain and k_n = c_P/t_n. So α_1″ and α_1′ inherit the J-row smallness c′M^{−11} (SOURCES_WC_RESIDUE_VERIFY Q7 note). This is harmless, because M is fixed before every α^{(n)}.
Rates: δ_G → ε_3 ≥ ½ε → δ_1‴ = (1 − θ)½ε_3 → ε_2 ≥ ½ε_1^{real} → δ_A″ → ½ε″. Each accretive level loses at most a factor ½ in the Combes–Thomas branch. Three levels give a fixed positive rate depending on (d, L, N, a, a_0). The consumers accept any fixed rate (SOURCES_A1_WALK §7.4).
Inputs used only here: Thm 3.4 [V]; (W_G) at complex points [R]; (C) for G and c_{−,1} for G_1 [conditional]; Theorem L and (W_N) of SOURCES_WC_EXPGAUGE [P given its own inputs].

## 9. The constant order and uniformity

### 9.1 The order [P; checked against SOURCES_A1_WALK_VERIFY §8, SOURCES_WC_RESIDUE §7.3 and VERIFY Q7]
 1. d, L.
 2. Balaban's real constants: δ_0, B_0, the regularity constants, a, a_0, and a_1 of CMP 99 Thm 3.4. A minimal M_min(d, L) with θ = log L/(RM) ≤ δ_0/(4(d + 2)) for all M ≥ M_min (SOURCES_A1_KERNEL §10).
 3. At M = M_min: c_− (H2); b_G, c_G, δ_G, C_𝒟, c_X (H1); C_ov, c_h, K_0, K_1, D_+ (G); Σ(·). Σ and the θ-dependent constants are monotone in θ, so their values at M_min remain valid for all M ≥ M_min.
 4. ε := min{½δ_G, c_−/(8c_+Σ(½δ_G))}; then c_1(½ε), Σ(½ε), Σ(¼δ_G), K_F, K_W, C_W.
 5. M_1 ≥ M_W = max{2C_𝒟c_G, M_a, M_e′, M_N, M_c} (5.7). For the free factor of 6.6 also M_1 ≥ (2C_Wc_1K_W)². For §7 the same thresholds with (γ, c_A, δ_A). For §8 the thresholds M_W^c at each level.
 6. M, with all of:
  - R_1M_1 ≤ M (σ_k cubes, CMP 116 p. 3);
  - M/M_1 > 10 and M/M_1 > 3(6 + c_X) (§7.4);
  - M > 48κ_1/ε_min, where ε_min is the smallest walk rate used (½ε at real points, ½ε″ on 𝒰(α′)). This is the s-rule side condition e^{−⅓ε_minM}e^{16κ_1} < 1 of SOURCES_A1_WALK §7.4(a), the walk-rate form of CMP 116 p. 5 "δ_1M ≥ κ_1" [V]. κ_1 must be M-free [I];
  - CMP 96 (2.59) RM > M_*(¼ε_min), so that CMP 96 Lemma 2.1 holds at every rate used (SOURCES_A1_WALK_VERIFY §6 added this);
  - M ≥ M_* of Theorem WG-G (SOURCES_WG §2.7).
 7. α_0: Mα_0 ≤ min{a_0, a_*, a_**}, and α_0 ≤ c′M^{−11} (WG-1, 6.6).
 8. Complex domains: α‴ ≤ k_3a_1, α″ ≤ k_2α‴, α′ ≤ k_1α″ (8.4), with the J-row.
 9. α with α′ ≫ α (CMP 116 p. 15 [V]); then g (TRUST_LEDGER C5 and M4).
No loop. Every constant in step n is a function of constants in steps < n. ε does not depend on M_1 or M, except through θ at M_min (step 3). c_− depends on Mα_0 only through the bound Mα_0 ≤ a_0. No α^{(n)} is bounded from below by a later constant. This agrees with TRUST_LEDGER C5: Balaban's constants, κ, then M ≥ M(κ), then α's after M.

### 9.2 Uniformity [P given the inputs]
Each constant of Theorem A1-W is one of the following.
 - c_−: uniform in regular U, j, k, η, {Ω_j}, and volume by (H2).
 - b_G, c_G, δ_G, c_X: Balaban's constants, "O(1) depends on d and L only" (CMP 99 p. 416 [V]), uniform over U with (3.35)–(3.36); the J-bound O(Mα_0) is uniform over U with (3.36) (SOURCES_WG §4.2).
 - C_𝒟, C_ov, c_h, K_0, K_1, D_+: geometric, depending on d and the cover only.
 - c_1(·), Σ(·): uniform in k, η, {Ω_j}, and volume by CMP 96 Lemma 2.1 under (2.59).
 - ε, K_F, K_W, M_W, and the bounds 4/c_−, 8/c_−: functions of the above.
The volume enters only through finite dimension: invertibility from injectivity (3.2, 5.2) and free rearrangement of absolutely convergent sums (5.6). No bound depends on it. The scale j enters only through the explicit factors (L^jη) of 6.8. The step index k enters nowhere. The regular background U enters only through (H1) and (H2), and at complex points through a_1 of Thm 3.4.
The local inverses are not obtained by gauging to U ≈ 1 on a cube (CMP 99 Cor. 3.6). They come from the global lower bound by restriction (Lemma LT(e)) and the accretive Lemma CT (§3). So the rate is set by (c_−, c_+, δ_G), not by the U = 1 rate δ_4 (SOURCES_A1_WALK §7.2).

### 9.3 The rate, and what the consumers accept [P for the order; R and I as tagged]
The walk rate is ½ε. It is smaller than Balaban's printed ½δ_0. Balaban's own U = 1 proof ends at half his local Combes–Thomas rate (CMP 96 (2.87), ½δ_1 [V]), so the loss is of the same kind.
 - s-rule (CMP 116 pp. 3, 13): needs (L1), (L2), absolute convergence, and an M-factor for walks that reach σ_0 cubes at distance > ⅔M from Z_0. With (D2), d(ω) ≥ (4/3)M on such walks, so e^{−½εd(ω)} ≤ e^{−⅓εM}e^{−¼εd(ω)}. The side condition becomes M > 48κ_1/ε (step 6). Walk domains have diameter ≤ D_+M_1, and σ_0-cubes have side R_1M_1. So each domain meets at most (2 + D_+/R_1)^d σ_0-cubes, a constant.
 - A2 Neumann step (2.21)/(2.23): the decay rate enters only through a Schur constant at a rate fixed before M (SOURCES_A2_R2_VERIFY V5). Accepted.
 - A3_SIGMA §2: η_M = S(¼ε)B_We^{−⅓εM} → 0 as M → ∞. Accepted.
 - The printed rates (½δ_0 in (2.16), δ_0 in (3.187)) are not reproduced. Only "some fixed rate δ_W(d, L, a, a_0) > 0" is.

## 10. Ledger of inputs

Each input has an ID used in this file and, where one exists, the TRUST_LEDGER row it falls under. "Used in" names the sections.

| ID | input | grade | used in | TRUST_LEDGER row |
|---|---|---|---|---|
| IN1 | (W_G): walk expansion of G with (3.108)-form bounds and locality, as Theorem WG-G (SOURCES_WG §2.8) | [P] given CMP 99 Thms 3.7, 3.9, 3.10 (printed sketches [R]), CMP 96 Lemma 2.1, (3.131), I-D, Q-locality; VERIFIED (SOURCES_WG_VERIFY) | (H1), §2–§6 | A1w (reduction) |
| IN2 | (W_G1): tree expansion of G_1, Theorem WG-G1 (SOURCES_WG §3.7) | [P] given IN1, A1-W for (QGQ*)^{−1}, C^{(2)}-locality [I] | 6.9, 8.4 | A1w |
| IN3 | (C): Re⟨u, N̂u⟩ ≥ c_−‖u‖², c_− uniform | conditional: SOURCES_A1_KERNEL §8; torus-side hypothesis and two unprinted conventions | (H2), Lemma LT(e) | A1 (remaining items) |
| IN4 | c_{−,1} = c_−(G_1) ≥ c_−(1 − O(Mα_0)) | conditional: SOURCES_A1_KERNEL §9 | 6.9, 8.4 | A1 (G_1 clause) |
| IN5 | CMP 96 Lemma 2.1: c_1(κ) uniform under (2.59) | [R] printed with proof | §0.1, 5.5, 9.1 | inside A1 |
| IN6 | Lean: `schur_test`, `coercive_inv`, `combes_thomas`, `combes_thomas_schur` | [L] no `sorry`; axioms propext, Classical.choice, Quot.sound | §1.5 (N3), §3 | none (proved) |
| IN7 | Concatenation lemma (SOURCES_WG §2.3), statement in 5.4 | [P] VERIFIED (SOURCES_WG_VERIFY §4); proof is W2's | 5.5, 6.4, 6.9 | none (proved) |
| IN8 | Geometry (G): cover 𝒟, cores □⁻, h_□, □⁺, C_ov, C_𝒟 for □⁺-domains | [I] constants c(d) | §2.1, 5.6 | A1w ([I] items) |
| IN9 | O2: Lipschitz bound c_h/M_1 of h_□ across scale boundaries | [I] low risk; printed analogue CMP 99 (3.89) | 4.2 (com) | A1w ([I] O2) |
| IN10 | Q-normalization and Q, Q* block-locality | [I] SOURCES_A1_KERNEL S3 | (H1) | A1w ([I] Q-locality) |
| IN11 | WG-1: α_0 ≤ c′M^{−11} for the per-step factor c/M at V-junctions | condition, admissible in Balaban's order | (H1), 6.6, 9.1 | A1w (condition) |
| IN12 | κ_1 independent of M | [I] | 9.1, 9.3 | A1w ([I] κ_1); C5 |
| IN13 | Regular class (3.35)–(3.36); J-term O(Mα_0) | [V] CMP 99 pp. 405, 419, 422; identification of the backgrounds | (H1), 8.4 | A18 |
| IN14 | CMP 116 pp. 3, 4, 5, 13, 15 page facts: s-rule, band, X_0 form, freedom of domains, α′ ≫ α | [V] text and images | §1.4, 6.7, §7, 9.1 | A1w, A8 |
| IN15 | ℓ^∞ reading of the tilde (Z̃_0, X̃^5) | [V] CMP 99 pp. 411, 413, CMP 119 p. 245 + [P] SOURCES_WC_RESIDUE §4.5 | §7.4 | A1w (O3 closed) |
| IN16 | Theorem L (γ_exp) and (W_N) for A_exp (SOURCES_WC_EXPGAUGE §3–§4) | [P] given its inputs (A3 R2 [I], R-Δ2, Balaban's p. 254 averages [R], C̃^{(2)}-locality [I-strong], term match of (2.11) and (3.156)) | 7.1, 8.4 | A3, A7 |
| IN17 | CMP 99 Thm 3.4: G′, (Q′G′²Q′*)^{−1}, R, G analytic for α_1 ≤ a_1 | [V] image p. 400 | 8.4 level 4 | A1w (O4) |
| IN18 | (W_G) at complex points | [R] Thm 3.4 "quantitative statements" + Thm 3.10 | 8.3, 8.4 | A1w (O4 closed relative to it) |
| IN19 | Plaquette condition along the disc, CMP 109 (1.13)–(1.14) | [V] via SOURCES_A2_R2_VERIFY V6 | 8.1 radius | none |
| IN20 | Order of constants | [P] 9.1 | §9 | C5 |
| IN21 | CMP 96 pp. 237–238 (2.82)–(2.87), CMP 99 (3.95), Thm 3.14 | [V] images and text; templates only, not load-bearing | 2.2, 4.1, 5.2 | none |

### 10.1 Status
Theorem A1-W (§0.5) is [P] relative to IN1, IN3, IN5–IN11, and IN13. The Z_0-compressed variant (§7) adds IN14–IN16. The complex extension (§8) adds IN2, IN4, IN17–IN19. The constant order (§9) uses IN12 and IN20. This file is a write-out of verified constructions. It has not been verified as a whole. An independent verifier should check it before it carries weight.

### 10.2 Points where this file is more precise than its sources
A verifier should check these first. None changes a conclusion of the sources.
 1. §0.1: the Schur constant is the counting form sup_y Σ_{y′}(1 + d)e^{−δ′d}, which CMP 96 Lemma 2.1 bounds directly. SOURCES_A1_KERNEL §5 uses a μ-weighted variant.
 2. 1.3, 5.6: the absolute walk sum carries the first-domain count C_𝒟 (constant 8C_𝒟/c_−). The kernel bound (iv) does not.
 3. 5.1: ‖F‖_{½ε} is bounded through the kernel of Σ_□F_□. A bound by sup_□‖F_□‖ alone is not uniform in volume, because E^sep_□ has a global left support.
 4. 5.5: an S- or R-insertion adds two junction steps but only one separation or truncation factor. So ρ contains e^{−⅛δ_GM_1}, the square root of the separation factor, and the threshold M_e′ uses ⅛.
 5. 7.4: c_X in the near/far condition must bound all domains of the series, including the □⁺. So it is max{c_X, D_+}.
 6. 7.5: the merged-slot constant is bounded per walk, (8C_W/γ), with every far domain except at most one carrying c_1ρ.
 7. 8.4: the chain constants are named k_1, k_2, k_3 (the sources write c_1, c_2, c_3, which clashes with c_1 of CMP 96 Lemma 2.1), and Γ_3, Γ_4 carry the factor 2 of SOURCES_WC_RESIDUE_VERIFY Q6.
