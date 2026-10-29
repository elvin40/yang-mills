# SOURCES_UW_SWEEP_122 — image sweep of CMP 122 I and II for the residue (U-W)

Scope. This file checks the residue (U-W) of SOURCES_U_ELL §6.1 on two papers:
- CMP 122 I, pp. 175–202 (28 pages), balaban/1989_cmp122_large_field_renormalization_I.pdf.
- CMP 122 II, pp. 355–392 (38 pages), balaban/1989_cmp122_large_field_renormalization_II.pdf.

Method. Every page of both papers was rendered at 120 dpi and read as an image in this session. No page was skipped. The search targets were the danger classes (D1)–(D5) of SOURCES_U_ELL §6.1, plus holonomy, global zero modes and the last RG step. This file edits nothing else.

Grades: [V] read on the page image this session; [P] proved here from [V] facts; [P-sketch] argument given, one step not printed by Balaban.

## 1. Hit table

"Fixes a constant?" means: the quantity enters a condition that chooses one of the constants (M, γ, N, p_0, p_1, A_0, A_1, κ, α, β, ε, B_5, …).

| # | page, eq. | quantity | fixes a constant? | ℓ-free? | grade |
|---|---|---|---|---|---|
| 1 | I p. 177, conditions (i), (ii) | a component is renormalized only if it is "contained in a cube of the size 100MR_k" | No. It defines the class of renormalized components. | Yes. It needs the torus side at level k to exceed 100MR_k. Lemma ADM (d) gives > 200MR_k. This is a condition on ℓ, not on a constant. | [V] |
| 2 | I p. 182, text after (1.25) | Faddeev–Popov gauge transformations on ((Ω_{j+1}^{~3})^c \ Z″_{j+1}) ∩ T^{(j)} | No. | Yes. T^{(j)} is the torus, but the set is cut to the component Z. | [V] |
| 3 | I p. 186, (1.45)–(1.48) | conditions δ(M/M_1) ≥ 2; γ small; A_1/A_0 small; α ≤ 1/8 | Yes: M, γ, A_1/A_0, α. | Yes. Balaban: "the conditions on M, γ, A_0, and A_1 … do not depend on any scale, i.e., on i, j, k". B_3, δ are CMP 102 constants (Ch3). | [V] |
| 4 | I p. 192, text before (1.71) | N_0 from L^{−N_0+1}R_{k−N_0+1} = 1; N_0 δ′_j ≤ 4N_0²δ′_k; L_0^{2N_0} ≤ L(L+1)N_0^{−1}R_k | Yes: N_0, the L_0-powers in α_{0,j}, α_{1,j}, ε_j. | Yes. Functions of k, L, g_k only. | [V] |
| 5 | I pp. 194–195, Prop. 1, (1.78) | variational problem on Λ = (Ω_{k_0+1}^{~4})^c ∩ Z; bound B_5M^5ε | Yes: B_5. | Yes. Λ is "contained in a cube of the size 100M"; "B_5 is determined by the geometry … by the condition (i)". | [V] |
| 6 | I p. 196 | gauge fixing by a tree graph T_0 in B_0; "all gauge degrees of freedom … except one, so we add an external bond" | No. | Yes. Every gauge degree of freedom in Λ is fixed by bonds in Λ. No global zero mode remains. | [V] |
| 7 | I p. 198, (1.94) | N ≤ O(1)(log g_k^{−2})^ν, (1/2)ν ≤ p_0 − p_1 − 1; N large | Yes: N, ν. | Yes. Functions of g_k, p_0, p_1. | [V] |
| 8 | I p. 200, (1.98) | O(1)B_3B_5M^5L_0^{−2(N_0−1)} ≤ 1/4; R_k^{−α_0} small | Yes: γ (smallness). | Yes. | [V] |
| 9 | I p. 201, (1.100)–(1.101) | denominator ∫dV′ over Λ_i; N_i = 1/(2^d d!); χ(Λ_i) with M_0ε_k | Yes: M_0 (fixed on II p. 378 as O(1)B_5M^6). | Yes. Each denominator is one component Λ_i. | [V] |
| 10 | II pp. 355–356, (0.1) | E_±|T_η| | No. It is an output. "E_−, E_+ independent of k, T_η, U_k". | Yes (W9). | [V] |
| 11 | II p. 356, (1.2); p. 358, (1.10) | log σ_0 · |Λ^{(k)} \ G_0|; E_k(Λ) | No. It is cancelled in (1.49), (1.70). | Yes. Volume of one Λ ⊂ 100M cube. | [V] |
| 12 | II p. 357, (1.6) | ε_k|Λ| ≤ 3ε_k(100M)^4 | No (it is bounded by 1). | Yes. | [V] |
| 13 | II pp. 357–358, (1.7) | "the k-th minimizer defined on the whole lattice", "background field identically equal to 1"; γ_0 of (1.67) [10] | Yes: γ_0. | Yes. The background is the trivial field 1. So no holonomy of the torus enters. The replacement error is O(exp(−R_k)). γ_0 is a CMP 95–99 constant (Ch3, R-004). | [V] |
| 14 | II p. 358, (1.8)–(1.11) | Poincaré inequality Σ|B′|² ≤ d(100M)^{d+1}Σ|∂B′|² on Λ with axial-gauge graph G_0; inverse bound γ_0^{−1}2d(100M)^5; |I(U_0)| < O(M^5) | Yes: lower bound of the quadratic form; contraction constant on p. 359. | Yes. "Λ is a rectangular parallelepiped contained in a cube of the size 100M." This is Ch6. | [V] |
| 15 | II p. 361, (1.21); p. 364, (1.32); p. 365, (1.37) | Σ_{p∈T_η} η^d ζ(x(p))|(DH″B)(p)|² | No. It is a nonnegative form, bounded by 0. | Yes. The sum runs over T_η, but ζ is supported in Z. | [V] |
| 16 | II p. 361 | |B_0|δ′³ ≤ O(1)(100MR_k)^d N²δ′³; N ≤ R_k | Yes: g_k small. | Yes. B_0 ⊂ Λ. | [V] |
| 17 | II p. 362, after (1.25) | |Ω″_k ∩ Ω_k^c| + L^{d−2}|Ω″_{k−1} \ Ω″_k| + … | Yes: g_k small. | Yes. The sets are cut to Z; the sum is ≤ M^{d+5}R_k^{d+1} times constants. | [V] |
| 18 | II p. 362, (1.26)–(1.27); pp. 370–371, (1.54)–(1.55) | generalized random walk expansion of H″_{1,k,Z} and of G″_k; "The field J_{1,2} is not localized" | No new constant. | Yes. G″_k is a global operator, but it is localized by the random walk expansion of [13] with decay exp(−¼δ_0MR_{h+1}) (Ch3). The non-local part is removed with G″_k Q*_{B″} = 0. | [V] |
| 19 | II p. 363, (1.29) | (100MR_k)^{d−1}, (100MR_{k+1})^{d−1}: area of boundary layers | Yes: L^{−N} ≤ (log g_k^{−2})^{−ν}, ν ≥ 2p_0 + dr_0. | Yes. | [V] |
| 20 | II p. 368, (1.47) | |Γ″_h ∩ Ω″_{h+1}^{~2}| ≤ O(1)M^{…}R_k^{…} | Yes: N large. | Yes. Volume inside Z. | [V] |
| 21 | II p. 377, (1.69) | |V(Y,(U,J))| ≤ O(1)Σ_j|Γ_j^0 ∩ Y| for Y a component of Z^~ | No. This is a bound, not a condition. | Yes. Volume of one component of Z^~. It is paid on p. 380 per component. | [V] |
| 22 | II pp. 380–381 | large-field factors exp(−γ_0g_j^{−2}(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|), same with |Q_j|, |R_j|; cost O(log g_j^{−2})|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j) | Yes: p_0, A_1, γ. | Yes. Z_j can be as large as T. Each volume is paid by the per-cube suppression of the same set (Ch5). γ_0 is "an absolute positive constant (… γ_0 = 1/2)". | [V] |
| 23 | II pp. 382–383, (1.77)–(1.78) | |v(x)−1| < (d+1)100MR_{j−N+1}·…; |B(b)|² ≤ 6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}Σ|∂B|²; 2p_1 − (d+5)r_0 > p_0 | Yes: p_1, p_0, ε. | Yes. Domain Ω″_{h+1}^{~2} \ Ω″_{h+1} in a component that "satisfies the condition (i)". Ch6. | [V] |
| 24 | II p. 383, text before (1.79) | Gaussian integrals over A_j: exp O(1)|Z_j ∩ Ω_j|; sums over admissible sequences: exp O(1)(MR_j)^{−d}|Z_j| | No new constant; absorbed in (1.79). | Yes. Volumes of large-field sets, paid per cube (Ch5). | [V] |
| 25 | II pp. 384–387, (1.80)–(1.88) | operation S(Z) = Z′^{~10}; K = steps until S^K(Z) satisfies (i), (ii); cubes of side < 63MR_n and 64MR_{n_0+1}; Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)) | Yes: (1.82) ¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2}; (1.88) p_0 large, γ small. | Yes; see §2. | [V] + [P-sketch] |
| 26 | II p. 389, (1.94)–(1.96) | |X′ \ Z′|, |X′ \ ∪Y_i|; Π_h exp 2κ(100R_k)^d; count of subfamilies ≤ exp(exp(−½p_0)100^d(MR_k)^{−d}|X′ \ ∪Y_i|) | Yes: κ large, g_k small (−2(1+β_0)^{−1}p_0 + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0). | Yes. Volumes of one polymer, paid by exp(−βκM^{−d}|·|) of the same polymer (Ch4, Ch5). 100R_k is the component bound (i). | [V] |
| 27 | II p. 390, (1.97)–(1.100) | |R″(X)| ≤ exp(−p_0(g_k))exp(−κd_k(X)) | No. | Yes. | [V] |

## 2. The large-field induction on a torus (row 25) [P-sketch]

Balaban's statement (II p. 384): exp(−κ_j(Z)) controls K steps, with K the first n such that S^K(Z) satisfies (i), (ii). S only enlarges Z. So on a torus a component that wraps around T never satisfies (i). For it, K is cut by the last RG level. Balaban does not treat this case; he never mentions the torus in these papers.

Claim. The bound (1.81) still holds for a wrapping Z with the same constant.
Proof sketch. Let n_0 be as in (1.81). For a wrapping Z, d′_n(Z^{(n−j)}) > 0 at every level, because the torus has more than 200 MR_n-cubes per side (Lemma ADM). So n_0 is the last level, and the second sum of (1.81) is empty. The first sum carries the factor 2^{−(n−j)} from the scaling property (6.31) of CMP 109. So it is ≤ O(1)3(126)^dM^dL^{d+1}R_j^{d+1}d′_j(Z), whatever the number of remaining levels. The induction (1.83)–(1.88) uses d′ subadditivity and the cube S^{K_1}(X) of size 100MR, which embeds by Lemma ADM. No step uses ℓ. ∎
Open step. (6.31) of CMP 109 (scaling of the linear size d′) was not read on the page in this session. Its proof is a covering of a tree graph by cubes, which is local. The geometric factor makes the sum independent of the number of levels. So the number of levels, which grows with ℓ, does not enter.

## 3. Targets with no hit

- Holonomy around the torus: no page mentions it. Every background field is built from local averages and axial or Landau gauges on cubes and on Λ (I pp. 195–197, II pp. 366–367). The one "whole lattice" object (row 13) has background 1. [V]
- Global zero mode or global constraint: none. Gauge fixing uses a tree graph in each Λ plus one external bond (row 6). Positivity bounds use Λ-local Poincaré constants (rows 14, 23). [V]
- Last RG step: neither paper treats a last step. No block equal to T occurs. [V]
- |T|, ℓ, m_T, number of cubes of T in a condition: none. The only |T_η| is the output (0.1) (row 10). [V]
- Unweighted sum over all of T: one formal case, (1.21), with weight ζ supported in Z (row 15). [V]
- Spectral or Poincaré constant of a domain larger than a fixed cube: none. Both Poincaré bounds are on domains in a 100M or 100M(L+1)N^{β_0}R_j cube (rows 14, 23). [V]

## 4. Verdict

(U-W) holds on CMP 122 I and CMP 122 II. No estimate that fixes a constant contains a quantity of class (D1)–(D5). Every volume in a condition is the volume of one component (inside a 100MR_k cube) or of one large-field set, and the same set pays it with per-cube factors.

One point is not printed by Balaban: the case of a large-field component that wraps the torus, in the induction (1.80)–(1.88). §2 shows that the bound holds with the same constant, because of the geometric factor 2^{−(n−j)}. The grade is [P-sketch]. The open step is the scaling property (6.31) of CMP 109 on a torus.

Two geometric facts need Lemma ADM (torus side > 200MR_k at every level): condition (i) (row 1) and the cubes of size 63MR_n, 64MR_n, 100MR_n in rows 23 and 25. These are conditions on ℓ, not on a constant.

Proposed update (not applied): in SOURCES_U_ELL §6.1, remove "CMP 122 I Sect. 1 apart from pp. 177, 183, 186, 201" and "CMP 122 II pp. 358–378 apart from pp. 365–366" from the list of unread pages. Add row 25 as a new item next to W6.
