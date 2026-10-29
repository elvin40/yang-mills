# SOURCES_UW_SWEEP_119 — image sweep of CMP 119 for the torus danger class of (U-W)

Date 2026-10-29. Source: balaban/1988_cmp119_convergent_renormalization_expansions.pdf, Commun. Math. Phys. 119, 243–285. All 43 printed pages (PDF pp. 1–43; p. 44 is blank) were rendered at 120 dpi and read as images in this session. Page numbers below are journal pages (journal page = PDF page + 242).

Danger class (SOURCES_U_ELL §6.1): (D1) |T|, ℓ, number of cubes of T; (D2) an unweighted sum over all of T; (D3) a spectral or Poincaré constant of a domain not inside a fixed cube; (D4) a non-local sup over T that is not a "d and L only" Ch3 constant; (D5) a torus count not dominated by the Z⁴ count. Extra classes checked: a global zero mode or constraint, a global divisor, and any constant fixed by a condition on the whole domain.

Grades: [V] read on the image this session. [R] relies on a ledger row or a verified project file. [P] short argument given here.

## 1. Constant-fixing conditions printed in CMP 119

These are all the explicit restrictions on constants that the paper prints. None contains a torus quantity. [V]

| page, eq. | condition | constant fixed | torus quantity? |
|---|---|---|---|
| 245 | R_0 ≥ (log g_0^{−2})^r, r ≥ 2; M = L^m "sufficiently large"; M_2 = L^{m_2}, M_1 < M_2 < M; "choice will be dictated by many conditions" | R_0, M, M_2 | none printed |
| 246 | ε_0 = g_0p_0(g_0), p_0 ≥ 5r, A_0 "sufficiently large" | ε_0, A_0 | none |
| 247 (1.8) | δ_0 = g_0A_1p_0(g_0) = (A_1/A_0)ε_0, A_0 ≫ A_1 | δ_0, A_1/A_0 | none |
| 248 (1.12) | unique critical point "for ε_0 sufficiently small" (Theorem 1 of [15]) | ε_0 | see H4 |
| 250 (1.19), 251 (1.21) | O(1)B_3exp(−δLM_2R_1)ε_1 ≪ δ_0 "if M_2R_1 is large enough"; same with MR_1 | M_2R_1, MR_1 | none (B_3, δ are Ch3) |
| 255 (2.4)–(2.9) | ε_j, R_j, g_j flow; β_0 small "if g is sufficiently small" | β_0, g | none (flow on Z^d, W8) |
| 259 (2.28) | α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} likewise; q_0, q_1 > 1; C_0, C_1 "sufficiently large" | C_0, C_1, q_0, q_1 | none |
| 260 (2.31) | κ_0 "can be chosen arbitrarily large, similarly as κ, if the other parameters are fixed properly" | κ_0, κ | none |
| 261 (2.34)–(2.39) | β small (e.g. 1/4); B "absolute constant" in (2.38); C in cube size CML^nξ | β, B, C | none (conditions on one cube) |
| 262 Thm 1 | "The constants satisfy numerous restrictions introduced in the proof" | all | not listed (residue language, as P3/P12) |
| 263 Thm 2 (2.43)–(2.44) | E_1 "independent of j, k, Ω, {Ω_j}, {Λ_j}, T"; R_1 "absolute"; g_j small | E_1, R_1 | explicit T-independence |
| 263 (2.46) | κ_0 ≥ 7, g small | κ_0 | none |
| 264 (2.50) | E_−, E_+ "independent of η and T, but depending on g_k" | E_± | explicit T-independence |
| 266 (3.7) | (4B_3A_1/A_0 + 30d²L²B_3²(1+β_0)e^{−R_k})ε_k < ε_k/10 "for A_1/A_0 and γ sufficiently small" | A_1/A_0, γ | none (d, L, B_3 only) |
| 267 (3.12)–(3.14) | constants 2B_3L²(1+β_0), (4dL)²(1+β_0)B_3 | none new | none |
| 268 (3.19) | O(1)44d²B_3²(1+β_0)(A_0/A_1)e^{−R_k} < 1 "for g_k or γ sufficiently small" | g_k, γ | none |
| 273 (3.35) | λ_0 > r, "small enough"; contour radius R "large enough" | λ_0, R | see H11 |
| 284 (3.68) | |V′ − 1| < 3dM(1 + log L^jL^{−n})ε_n(L^jL^{−n})² | none new | none (n − j counts RG steps, a UV quantity) |

## 2. Hits: places where a whole-torus or large-domain object appears

| # | page, eq. | quantity | class | enters a constant-fixing condition? | ℓ-free after all? | grade |
|---|---|---|---|---|---|---|
| H1 | 245 | partitions of T_1 into MR_0-, LM_2R_0-cubes "have to be compatible" | D1 (tiling of T) | no; a condition on ℓ | yes; W10, Lemma ADM (ℓ = 2L^{m_T}) | [V + R] |
| H2 | 246 (1.1), 246 (1.4), 247 (1.8), 250 (1.18), 257 (2.17), 265 (3.2)–(3.3), 268 (3.16) | decompositions of unity: products of χ over all cubes of T, sums over all sets P, Q, R ⊂ T | D2 in form | no; each is the identity 1 = Σ…; each χ is a sup over one cube □′^{~2} or □^{~} | yes; per-cube thresholds ε_0, δ_0, ε_k, δ_k | [V] |
| H3 | 247 (1.6)–(1.7), 249 (1.14)–(1.15), 267–268 (3.15), 270 (3.23)–(3.25) | (L⁴−1)|P_1^1|log z, |Ω_1*|log σ_0, log g_0d(g)|Ω_1*|, G(P_1^1, U) = Σ_{y∈P_1^1}…, E_0^{(k)} | D1 (volume totals) | no; they are normalization constants and actions, absorbed into E_1, E_k | yes; outputs (W9) | [V] |
| H4 | 248 (1.12) | critical point of U → A(U) + G(Ω_1^{(1)}, U) on Ω_1^c-constrained configurations; Ω_1 is not inside a fixed cube | D4 (global variational problem) | yes: "ε_0 sufficiently small" via Theorem 1 [15] | yes, given [15] (CMP 102 variational paper) has constants "d and L only" (Ch3; SOURCES_L2_L3L14_VERIFY S11–S12) | [V + R] |
| H5 | 250 (1.17) | gauge transformations u on all sites of T | global zero mode? | no; only an invariance statement; no integral over a global gauge group and no constant | yes | [V] |
| H6 | 250 (1.19), 251 (1.21), 266 (3.6)–(3.7), 268 (3.17)–(3.19), 269 (3.22) | H_{1,Ax}, H_{k,□}, H^{(k)} built from global axial-gauge propagators on Ω_1 ∩ Λ_1^c, Λ_{k+1}^c ∩ Λ_k | D4 | yes: M_2R_1, MR_1 large; A_1/A_0, γ small | yes; bounds use the exponential decay property (190) of [15] with constants B_3, δ (Ch3), and the argument support is a layer of M_1-cubes at ∂Λ | [V + R] |
| H7 | 251, 255 (2.3), 269 | components of Λ^c inside a cube of size 100LMR_k (100MR_j) are replaced by parallelepipeds | D3 guard | no constant; geometric rule | yes; fixed cube size, a wrapping component is not changed (W6) | [V] |
| H8 | 253 (1.26), 254 (1.29)–(1.30) | Z^{(0)}(Λ_1), Gaussian normalization over Λ_1 (large domain); log Z^{(0)} put into E^{(1)} | D2/D3 candidate | no new constant; the term "coincides with the corresponding function constructed in [I] … only localized properly" | yes; localized by the [I] machinery (random walk expansion, W2/W3) | [V + R] |
| H9 | 253 | boundary term B^{(1)} "can be bounded by O(1)|Λ_1 ∩ Λ_1^c|" (printed set; read as the layer near ∂Λ_1) | D1 form (volume) | no; "controlled by the large field estimates" | yes; volume of a large-field-adjacent set, paid per cube (Ch5) | [V + R P20] |
| H10 | 256 (2.12), 266 (3.10), 267 (3.12)–(3.13) | minimal configuration U_B(V) on the whole lattice T_η for a determining set B; Lemma 1 [14] | D4 | yes, through ε_k smallness and the constants 2B_3L², (4dL)²B_3 | yes, given [15], [14] constants are d, L only (Ch3) | [V + R] |
| H11 | 273–274 (3.33)–(3.37) | −½log det(C*Δ^{(k)}C) on Λ_{k+1} (global operator on a large domain); contour round its spectrum; ∫_0^∞dλ(λ_0+λ)^{−1}tr(…)(C*Δ^{(k)}C + λ)^{−1}(b,b); −½log λ_0|Λ_{k+1}^{(k)*}| | D3 candidate (needs a positive lower bound of the spectrum of C*Δ^{(k)}C on Λ_{k+1}); D1 (volume term) | λ_0, R: yes, but λ_0 is any fixed number in (r, small) and R any number above the top of the spectrum; the volume term is an output | yes, conditional: C is the solution of the block constraint Q̃A = 0 (p. 249), so block averages are removed (W1); the lower bound is the local γ_0 of R-004; the diagonal (b,b) entries are localized by the generalized random walk expansions of [13] Thms 3.7–3.10 (p. 275–276; Ch3). The top of the spectrum is a per-site operator-norm bound. No whole-domain Poincaré constant appears | [V + R R-004, Ch3] |
| H12 | 271 (3.27), 272 (3.29), 274 (3.37) | expectations ⟨·⟩ with normalization Z_{s,t}, Z_t over Λ_{k+1}; divisor (∫dμ_{C^{(k)}(Λ_{k+1})}χ_t^{(k)})^{−1} | global divisor (W3) | no new constant | yes; numerator and denominator are both expanded by the Mayer/cluster expansion of Sect. 7 [I] (pp. 277–278, (3.44)–(3.47)); output terms obey (2.42) with B_0 → O(p_0³(g_k)), a per-polymer bound | [V + R] |
| H13 | 260 (2.31)–(2.33) | marginal terms O(1)(L^jη)⁴g_j^{κ_0}e^{−κd_j(X)}; R^{(j)}(U_j) = Σ_X over all X in T_ξ | D2 form | κ_0 large: yes | yes; "the sum over X is controlled by the exponential factor, and by the factor (L^jη)⁴", i.e. a sum over X ∋ one point times a per-site volume factor | [V] |
| H14 | 262 | initial constant E "defined … as a sum of all such expressions for all the lattices T^{(k)}" | D1 (vacuum energy total) | no | yes; output (W9) | [V] |
| H15 | 263–264 (2.45)–(2.49) | Σ_n|Γ_n|, Σ|Γ_j| | D1 (volume totals) | no | yes; outputs | [V] |
| H16 | 264 (2.50) | E_±|T_η| | D1 | no | yes; output, E_± stated T-free | [V] |
| H17 | 258 (2.21) | quadratic form in T^{(j)} "couples only the fields A_j in the same component of Z_{j+1} ∩ Ω_{j+1}"; components have no size limit | D3 candidate | not in CMP 119: T^{(j)} is "left undefined, only basic general properties are formulated" (p. 254) | no estimate on this page; any lower bound on such a component belongs to CMP 122 (W6) | [V] |
| H18 | 278, 281 (3.57), 282–283 (3.61)–(3.64) | terms for X ⊂ Λ_{k+1} "do not depend on Λ_{k+1}, and coincide with … the whole lattice"; Π^{(j)} defined on L^{−j}Z^d; β′_j = β_j | infinite-volume objects | yes (β_j fixes the coupling flow) | yes; Ch7 | [V] |
| H19 | 280 (3.48) | domains X with X ∩ (□^{~2})^c ≠ ∅ (includes wrapping X): |E^{(j)}(X,z)| ≤ E_0e^{−κ(L^jL^{−n})^{−1}}e^{−½κd_j(X)}; "the sum over X is bounded by O(1)exp(−κ(L^jL^{−n})^{−1}) ≤ O(1)(L^jL^{−n})⁵" | D2 / wrapping polymers | yes, contributes to E_1 of (2.43) | yes; sum over X ∋ z, one site, bounded by decay (Ch2 lift for the count) (W5) | [V] |
| H20 | 283 (3.65) | A(φ_j, U_k) = Σ_{z∈T^{(j)}}A(h_zφ_j, U_k) | D2 form | no; a decomposition | yes; each term is local; (3.67) bound is per z | [V] |

No entry of class D5 appears. No global constraint other than the per-block δ-functions appears. No integral over a global constant gauge mode appears.

## 3. Verdict

(U-W) holds on CMP 119. [V for the page content; R for H4, H6, H10, H11, H12]

Every constant-fixing condition printed in the paper (§1) is free of |T|, ℓ and cube counts. Theorem 2 and Corollary 3 state T-independence of E_1, R_1, E_± in the text. All whole-torus quantities on the pages are of three kinds: identities (H2, H5, H20), outputs (H3, H9, H14–H16), or global objects whose bounds come from cited papers with "d and L only" constants or from localizing expansions (H4, H6, H8, H10–H12, H18).

There is no genuine torus dependence on these pages. Three caveats remain. They are dependencies on other papers, not gaps in CMP 119:
1. H11 is the only D3 candidate with an estimate in CMP 119. Its ℓ-freedom needs (a) the block constraint (C eliminates Q̃A = 0), (b) the local lower bound γ_0 of R-004 for C*Δ^{(k)}C on a large domain Λ_{k+1}, and (c) the generalized random walk expansions of [13] Thms 3.7–3.10. CMP 119 prints none of these bounds; it cites them.
2. H4, H6, H10 need the CMP 102 / CMP 99 constants to be "d and L only" for domains of any size. The project already records this as Ch3 (SOURCES_L2_L3L14_VERIFY S9–S12).
3. H17: T^{(j)} on large-field components is left undefined here. Any lower bound for a large unrenormalized component is in CMP 122, not here (W6 residue).

Theorem 1 (p. 262) says "the constants satisfy numerous restrictions introduced in the proof". The proof in Sect. 3 is a sketch that cites [I], [II], [13]–[16]. So the sweep shows that no restriction printed in CMP 119 is torus-dependent. It cannot show that no unprinted restriction is. That part of the residue stays on the cited papers.

Proposed change to SOURCES_U_ELL §6.1 (not applied): CMP 119 is fully swept; remove it from any residue reading; add H11 to the R-004 dependency list.
