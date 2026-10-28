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

