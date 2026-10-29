IDs follow IDS.md (new scheme). Map: Theorem IV = L-196; IV L2 (UV constants ℓ-free) = L-319; IV L3 (FX-V) = L-320 / H-106; IV L14 (Loc-f) = L-331; (FX) = R-043; S1 (sourced Theorem 1) = R-035; Balaban's Theorem 1 = R-013; (Vol) = K-032. File-local labels ((U_ℓ), Lemmas U1–U4, channels Ch1–Ch7, places W1–W10, (U-W)) are not global ids. Name clash found: SOURCES_L2_L3L14_VERIFY §3 calls the narrowed (U_ℓ) "(H-U)"; IDS.md l. 383 gives "(H-U)" to H-116 (an ASSEMBLY label). This file writes only "(U_ℓ)".
# SOURCES_U_ELL — a structural proof of (U_ℓ): Balaban's constants and the S1 constants do not depend on the torus side

Date 2026-10-29. Author: Claude (Opus), unverified. Only this file written. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read and excluded from every grep.
Inputs read: SOURCES_L2_L3L14 §1–§3 (full), SOURCES_L2_L3L14_VERIFY (full); SOURCES_ORDER_CANON Part B (every N-line) and lean/YmLean/CanonOrder.lean (header, `Line` type); SOURCES_D4D5 §3.1; SOURCES_L1_E §4.1, §5, §6.3–§7; SOURCES_T2_IEPS_VERIFY §21–§22; SOURCES_A11_CONST (κ_0 row); greps of SOURCES_D3, D3R, FX_D, A18_REGULAR, T2_IEPS, T2_KAPPA2.
Page images: 24 pages rendered at 150 dpi into one fresh /tmp folder, read as images, folder deleted at the end (list in §1).
Tags: [P] proved here; [P-sketch] proof whose structure is complete but one step rests on a reading of pages not all checked; [V] checked on a page image or a quoted file line; [R] rests on a verified project result or ledger row; [I] a reading not checked.

## 0. Result

(U_ℓ), exactly as L-320 uses it (SOURCES_L2_L3L14 §3.6, narrowed by SOURCES_L2_L3L14_VERIFY §2.5). Fix d = 4, G = SU(2), L, g ∈ ]0, γ], and 𝓛(g) = {2L^m : 2L^m ≥ ℓ_0(g)} (corrected Lemma ADM). There is one tuple
 𝔅 ∪ 𝔖 = (κ_0, κ, M(κ), M, γ, ε_0, ε_1, α_0, α_1, E_0, β, p_0, p_1, C_R, p_R, γ_0, A_0, A_1, B_3, B_5, C_0, C_1, q_0, q_1; r, ρ_1, c_τ, θ, c, C_B)
such that, for every ℓ ∈ 𝓛(g), Balaban's Theorem 1 (CMP 122 II p. 355, with CMP 109 Thm 3, CMP 116, CMP 119 Thm 1 as its parts) and the sourced chain S1 (R-035; Theorem L1-E) hold on T_ℓ with these constants.
L-320 uses (U_ℓ) only in Step 4: the constants E_0, κ, c_0, c_τ, c of (FX2)–(FX4) are formulas in 𝔅 ∪ 𝔖 with no ℓ, so they are ℓ-free if 𝔅 ∪ 𝔖 is.

Result.
1. (U_ℓ) is PROVED as a [P-sketch]. The proof has three layers.
 (a) Definitional layer [P given the canon]: every listed constant is fixed by a canon line whose conditions use only d, L, N, numbers, and earlier lines. The torus side is not a canon object. (§2)
 (b) Estimate layer [P-sketch]: every estimate that produces a constant in a canon condition uses the torus only through seven local channels Ch1–Ch7. Each channel has an ℓ-free majorant. (§3)
 (c) Place layer [V + P]: the ten places where the torus side could enter (zero modes, global objects, global divisors, holonomy, wrapping polymers, wrapping large-field components, the last step, the coupling flow, volume totals, divisibility) are each handled on a page image. (§4)
2. Uniform-choice lemma U1 [P]: if the condition list has no ℓ, one tuple serves every ℓ. So (a) + (b) + (c) give (U_ℓ).
3. Consistency lemma U4 [V + P]: Balaban's own definition of β_{j+1} (CMP 109 p. 264) takes a limit over a growing sequence of tori with the inductive bound (1.18). That limit exists only if E_0, κ and the domain constants α_0, α_1 are uniform along the sequence. So a failure of (U_ℓ) for these constants would be a gap in Balaban's printed construction, not only a missing sentence.
4. The S1 constants r, ρ_1, c_τ, θ, c, C_B are built from per-site and per-polymer estimates only (§5). [P-sketch, same residue]
5. No constant fails. The residue is one reading, (U-W) (§6): on the pages of CMP 109 Sects. 3–5, CMP 116, CMP 122 I Sect. 1 and CMP 122 II pp. 358–378 that no session read as images, no constant-choice condition contains a quantity of the "torus danger class" (§6.1). This is the same page set and the same kind of reading as the residue (W6*) of SOURCES_L1_E §6.4.
6. Two findings outside the main line: the κ_0 homonym (CMP 109 Thm 3 threshold on κ vs. the CMP 119 R-term exponent of canon N-080, §2.2); the p_1 formula is printed on CMP 122 I p. 183 (SOURCES_L2_L3L14_VERIFY §2.3 said "not located").
7. Proposed status: L-319 / (U_ℓ) from [V-partial] to [P-sketch, residue (U-W) I]; Theorem IV keeps (U-W) as its only uniformity input, and (U-W) can share one image sweep with (W6*) (§7).

## 1. Page facts [V, each read on a 150 dpi image this session]

PDF page = journal page − 248 (CMP 109), = journal page (CMP 116), − 242 (CMP 119), − 174 (CMP 122 I), − 354 (CMP 122 II).
Rendered: CMP 109 pp. 251, 258, 263, 264, 275; CMP 116 pp. 8, 10, 13, 21; CMP 119 pp. 244, 245, 259, 262, 263, 264, 278, 281; CMP 122 I pp. 177, 183, 186; CMP 122 II pp. 355, 356, 357, 383.

- P1. CMP 109 p. 251: "a torus T obtained by the usual identification of boundary points of the cube {x ∈ R^d : −L_μ ≤ x_μ ≤ L_μ} … We take L_μ = L^m, where L is an odd, positive integer > 11, and m is a positive integer." T_ε (0.1), ε = L^{−K}. So the torus side is 2L^m, m arbitrary. The symbol m is also used for M = L^m (CMP 119 p. 245); this file writes m_T for the torus exponent.
- P2. CMP 109 p. 263: "We assume that the function E^{(j)}(X, g_{j−1}, U, J) is defined and analytic on the space U_j^c(X, α_0, α_1), with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j). It depends on the configurations restricted to X … There exists a constant E_0 such that (1.18) |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κd_j(X)) for M ≥ M(κ), γ sufficiently small". Also: "the minimal configurations U_j satisfying the bound |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small, satisfy the above conditions." The space U_j^c(X, …) (p. 262, conditions (i)–(iv)) is defined by conditions on X only; (i) asks for a gauge transformation "for each cube □ ⊂ X of a size O(1)LM".
- P3. CMP 109 p. 264: "Now we take a limit of these functions as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7). The function β_{j+1}(g_j) is defined by (1.22) … f̃(p) denotes the Fourier transform of the function f(x), x ∈ Z^d." Theorem 3: "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then the sequence of actions A_k … satisfy all the inductive assumptions described between (1.1)–(1.22). The constants ε_0, ε_1, α_0, α_1 depend on M and satisfy numerous restrictions, which will become clear in the proof. The constant γ depends on all other constants." K is inside the hypothesis; T is in the set-up only.
- P4. CMP 109 p. 258, (0.27): "If its localization domain X is large, for example it is not contained in any cube □̃, with □ ∈ π_k, then the inequality (0.25) ensures that |E^{(j)}(X, U_k)| ≤ E_0exp(−κ(L^jη)^{−1})exp(−½κd_j(X)) … If the localization domain is contained in a cube □̃, then we introduce the local coordinates". (0.30): |E_k(U_k)| ≤ O(1)(1 − L^{−α})^{−1}M^{−4}|T_1^{(k)}|, "the only dependence on k is through the volume".
- P5. CMP 109 p. 275: the analytic extension lives on "U_{k+1}^{c}(□_0, (1 + 2β)α_0, (1 + 2β)α_1, α_0). This space is defined by the same conditions (i)–(iv), only the configurations U, J are defined and satisfy (i)–(iii) on the whole lattice T_η." Then (3.26)–(3.27): generalized axial gauge for M′(U) with |V(b) − 1| < O(1)Mα_0, bounds B_3O(1)Mα_0 "on □̃⁴" (local).
- P6. CMP 116 p. 8, (1.26): "Σ_{X∈D_j, X⊃□′} exp(−κd_j(X)) ≤ O(1), for κ sufficiently large." (1.28): "M^{−4}|Y| ≤ 3·2³d_k(Y)" (a per-polymer volume bound); (1.29) bound E_0ε_1O(M^q)exp O(1)κ_1 exp(−(1/16)κ_1d_k(Y)) "with absolute constants O(1), q".
- P7. CMP 116 p. 10: the function V(H_1B′) is analytic on "U_{k+1}^{c}(T_η, α_0′, α_1′) … the space of U, J satisfying the conditions I. (i)–(iii) on the whole lattice T_η. The function V can have a natural localization … We take the decomposition of unity 1 = Σ_□ ζ_□". Then (1.39): |(1.38)| ≤ C_3(e^{16κ_1}|B′|)³M⁴exp(−(κ_1 − 1)M^{−4}|Y\□|), "where C_3 is an absolute constant."
- P8. CMP 116 p. 13: "The above expression depends yet on the external gauge field configurations on the whole lattice T_η, through the propagators and the operator in the definition of the function G. We localize it again by the method used in Sect. 1, introducing the parameters s and differentiating." Localization domains are unions of M_1-cubes; (2.7) expands (C^{(k)})^{1/2} through (xI + C*Δ_kC)^{−1} and generalized random walks.
- P9. CMP 116 p. 21, (2.39)–(2.41): the new E^{(k+1)}(X) is a sum over (Z_1, …, Z_n) with ∪Z_i = X, bounded by "the considerations and bounds of the paper [26], for κ sufficiently large, and ε_1 sufficiently small"; (2.41) |E^{(k+1)}(X)| ≤ O(1)C_3ε_1exp(−(1 − 10δ)½Lκd_{k+1}(X)). "Next, we assume that O(1)C_3ε_1 ≤ ½E_0." For log Z^{(k)}(U_{k+1}): "The expression localized in X satisfies the bound (I.1.18) with κ replaced by δ_0M, and with an absolute constant instead of E_0. We define ½E_0 as equal to this constant, and we take M sufficiently large, so that δ_0M ≥ κ."
- P10. CMP 119 p. 244: "we finish the inductive procedure when we reach the unit lattice"; "p_0(g_0) = A_0(log g_0^{−2})^{p_0} with a positive integer p_0". p. 245: partitions into cubes of size MR_0 and LM_2R_0, "R_0 is the smallest power of L such that R_0 ≥ (log g_0^{−2})^r, r ≥ 2, and M = L^m is sufficiently large … The above partitions have to be compatible".
- P11. CMP 119 p. 259, (2.24)–(2.28): 1/g²_{j−1}(x) = 1/g²_j(x) + β_j(g_{j−1})φ_j(x); E^{(j)}(X, U_k, z) "(i) depends on U_k restricted to X; (ii) … analytic … (U, J) ∈ U_j^c(X, α_{0,j}, α_{1,j}) … (iv) it satisfies the inequality (I.1.18)"; "α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, where q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers."
- P12. CMP 119 p. 262, Theorem 1: "There exist constants, introduced in the above description, such that if the sequence of coupling constants {g_k} … satisfies the inequalities (I.0.33), then the sequence of densities {ρ_k} … satisfies all the inductive assumptions. The constants satisfy numerous restrictions introduced in the proof." Remark: "some of the restrictions on constants, e.g. on constants κ, M, ε_j, α_{0,j}, α_{1,j}, come from the paper [I]."
- P13. CMP 119 p. 263, Theorem 2: "there exists a constant E_1 independent of j, k, Ω, {Ω_j}, {Λ_j}, T (but dependent on the other constants occurring in the formulation of this theorem)"; "there exists an absolute constant R_1"; (2.43) "is an immediate consequence of the inequality with the set Λ_j⁰ ∩ Ω replaced by one point". (2.46) holds "for κ_0 ≥ 7 and g sufficiently small" (κ_0 = exponent in R_1g_j^{κ_0}).
- P14. CMP 119 p. 264: "The procedure is constructed in such a way, that the combinatorics now is the same, relative to the η-scale of the lattice T_η, as in [6], hence we have the same result for this scale." Corollary 3: "constants E_−, E_+ independent of η and T, but depending on g_k". (3.1) carries δ(V̄_kV_{k+1}^{−1}), the block-average constraint.
- P15. CMP 119 p. 278: "the terms E_0^{(k+1)}(Λ_{k+1}, X, z) of this representation, for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice". p. 281: the identity (3.56) holds for X ⊂ □^{~−2}; "we extend the sum … to all domains X ∈ D_j for the space L^{−j}Z^d … The difference between the two sums contributes to the irrelevant terms only"; Π^{(j)} uses "E^{(j)}(U_j, z) defined on the whole lattice L^{−j}Z^d. This function is translation invariant".
- P16. CMP 122 I p. 177: R-operation denominators are "localized in neighborhoods of the domains Z′, so they do not depend on the large field regions Z″, and they are determined by small field effective actions only"; renormalized components satisfy "(i) it is contained in a cube of the size 100MR_k"; factorization (1.1) over disjoint components.
- P17. CMP 122 I p. 183: "δ′_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, and p_1 < p_0; other conditions on p_1 will be formulated later." p. 186: "the conditions on M, γ, A_0, and A_1 introduced above do not depend on any scale, i.e., on i, j, k, and so on. This applies also to other conditions introduced before." (1.47): "We choose M large enough, so that δ(M/M_1) ≥ 2"; the factor 9B_3(A_1/A_0)(p_1(γ)/p_0(γ))(1 + β_0) "can be made arbitrarily small by choosing γ, or A_1/A_0 sufficiently small."
- P18. CMP 122 II p. 355, Theorem 1 (as quoted in SOURCES_L2_L3L14 F1); p. 356: "with the constants E_−, E_+ independent of k, T_η, U_k"; (1.1) the R′ quotient is per component; the denominator carries (−½d(g)log g_k^{−2} + log σ_0)|Λ^{(k)}\G_0|, a volume of a set inside the component.
- P19. CMP 122 II p. 357, (1.6): the bound uses "the fact that Λ is contained in a cube of the size 100M"; "Replacing the minimizer in this form by the k-th minimizer defined on the whole lattice … we change the form by a quadratic form bounded by O(exp(−R_k))."
- P20. CMP 122 II p. 383: (1.77) constant O(1)A_0A_1²B_3⁴B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j; (1.78) |B(b)|² ≤ 6(d + 3)(100M(L + 1)N^{β_0}R_j)^{d+2}Σ_{p′∈B_0∩Ω″~}|(∂B)(p′)|²; "We assume that 2p_1 − (d + 5)r_0 > p_0"; "the factors exp O(1)|Z_j ∩ Ω_j|, where the volume is for the corresponding scale … the summations over the admissible sequences can be replaced by the factors exp O(1)(MR_j)^{−d}|Z_j|"; (1.79) and "The supremum is taken over all admissible domains".

## 2. Definitional layer: every listed constant is fixed by torus-free conditions [P given the canon; V on pages]

### 2.1 Lemma U1 (uniform choice) [P]
Let Adm(ℓ) be the set of tuples c = 𝔅 ∪ 𝔖 for which Balaban's proof and the S1 chain go through on T_ℓ. Suppose the proofs fix c by a finite list of conditions Φ_i: c_i ≥ F_i(c_{<i}) or c_i ≤ F_i(c_{<i}) (or c_i = F_i(c_{<i})), where each F_i is a majorant (or minorant) produced by an estimate, and the proofs use F_i only through these inequalities. Let A be the set of tuples that satisfy the list. If no F_i depends on ℓ, then A does not depend on ℓ, A ⊂ Adm(ℓ) for every ℓ ∈ 𝓛(g), and A ≠ ∅ (the list is acyclic and every condition is one-sided or an explicit value; SOURCES_ORDER_CANON B "Check", Lean CanonOrder.canon_acyclic). So any c ∈ A proves (U_ℓ).
Proof. A is defined by ℓ-free inequalities, so it is one set. For each ℓ, the proofs on T_ℓ need only that c satisfies the list. Nonemptiness: choose the lines in canon order; a one-sided condition on a line always has a solution given the earlier lines; the two-sided p_1 has a solution under the N-410 condition on p_0. ∎
Remark (majorants). An F_i may be a quantity that does depend on ℓ, provided the proof uses only an ℓ-free majorant of it. Example: the torus polymer count is replaced by the Z⁴ count (Ch2). Then the condition with the majorant is still sufficient and ℓ-free. This is the form in which Lemma U1 is used.

### 2.2 The listed constants, line by line
Each row: the canon line, Balaban's definition or printed condition (page image), the arguments, and whether a torus quantity (ℓ, m_T, |T_η|, a count of all cubes of T) appears. The canon grep (§2.3) is part of each row.

| constant | canon line | Balaban definition / condition [V page] | arguments | torus quantity? |
|---|---|---|---|---|
| κ_0 (CMP 109 Thm 3, threshold on κ) | not a line of its own; it is the maximum of the N-070 lower bounds on κ | P3 "κ ≥ κ_0"; κ large in P6 (1.26), P9 ("for κ sufficiently large") | d, L, δ, β, m_tot (a number), K_abs (absolute), s_0(d) | none. s_0 is the Z⁴ entropy threshold of P6; the torus count is ≤ the Z⁴ count (Ch2) |
| κ_0 (CMP 119 exponent, P13 "κ_0 ≥ 7") | N-080 (H-265, A11_CONST row 6: "κ_0 can be chosen arbitrarily large, similarly as κ") | P13 | β_0 | none |
| κ | N-070 | P2, P6, P9 | d, L, δ, β, s_0, K_abs, m_tot | none |
| M(κ), M | N-265 – N-310 (M_1^{(102)}, M_1, M_2, M ≥ M_req, 41 entries) | P9 "δ_0M ≥ κ"; P17 "δ(M/M_1) ≥ 2"; P10 "M = L^m sufficiently large" | κ, κ_1, δ_0, δ, M_1, walk/WC/level thresholds (N-100–N-250), c_T/22, c̃_T/22, (T1) | none. c_T is used as "ℓ > 22M ⇒ side > c_T", a lower bound on ℓ given M (K-032), not M ≥ f(ℓ) |
| α_0, α_1 (fixed layer, CMP 109) | N-370 | P2 "absolute … independent of X and j"; P5 "Mα_0, Mα_1 still small"; (3.27) B_3O(1)Mα_0 | M, a_0, a_1, a_*, a_**, a_L, a_{−,1}, a_37, a_LB, a_AL, a_ax, c_□^{109}, B, L, β, B_3 | none |
| α_{0,j}, α_{1,j} (CMP 119/122) | N-440, N-450 (C_0, C_1); N-410 (q_0, q_1) | P11 α_{i,j} = g_jC_i(log g_j^{−2})^{q_i} | g_j, C_i, q_i | none; g_j is ℓ-free (W8) |
| ε_0 | N-380 (ε_0^{109}); ε_0^{102} in [2B_3ε_0^{109}, a_0^{102}] | P2 "|∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small" (a per-plaquette condition) | α_0, B_3, a_1^{102}, a_0^{102}, R_1, M_1^{(102)}, M, L | none |
| ε_1 | N-400 | P9 "ε_1 sufficiently small", O(1)C_3ε_1 ≤ ½E_0; χ_k cut |B′(b)| < ε_1 per bond (CMP 109 (2.9)) | κ_1, B_0, C_i^{116}, α_2, α_4, a_1, M^q, E_0, L, κ, δ, S, s_0, C_3^{116} | none |
| E_0 | N-060 ("absolute; may go first") | P9 ½E_0 := the absolute constant of the localized log Z^{(k)} terms; O(1)C_3ε_1 ≤ ½E_0 | absolute (random-walk expansion constants, Ch3) | none |
| C_0 | N-440 | P11 "sufficiently large" | B_3, A_0, B_5^{122}, M, B, C^{122} | none |
| C_1 | N-450 | P11 "sufficiently large" | C_0, B_3, M, α ratios, q_1 ≥ q_0 | none |
| A_1 | N-420 | P17 (δ′_j = g_jA_1p_1(g_j)); P20 (1.77) | γ_0, F (the per-component ratio bound of CMP 122 II (1.73)–(1.75), IEPS_VERIFY §21) | none; F is a sup over one component (W3) |
| A_0 | N-430 | P10 p_0(g) = A_0(log g^{−2})^{p_0}; P17 "A_1/A_0 sufficiently small" | n, θ_LF, B_3, A_1, (100MR)^d, κ′ | none; (100MR)^d is a cube volume, not |T| |
| p_1 (exponent) and p_1(·) | N-410 | P17 p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0; P20 2p_1 − (d + 5)r_0 > p_0 | p_0, r, ν_I | none |
| γ | N-470 | P3 "depends on all other constants" | all earlier lines | none (grep: ℓ_m in H-066 is log g_m^{−2}, A18_REGULAR l. 81) |

### 2.3 The grep and the Lean transcription [P]
- Grep of SOURCES_ORDER_CANON.md for "torus", "ℓ", "|T", "T_η", "volume", "|Λ", "number of blocks", "T_ε": five hits. (1) N-060: C_H, δ_H "(d, L) only … uniform in the torus side [R, SOURCES_C_CONDITION 4.6]". (2) N-060: c_T "L-284 (Lemma T) torus-side constant for K-032 (Vol)". (3) N-310: (T1) RM ≥ 4L²D_0 "(Lemma T) torus side". (4) N-470: ℓ_m^{q_i} with ℓ_m = log g_m^{−2}. (5) Part F l. 300: M ≥ c_T/22 "so that (Vol) ℓ > 22M implies side > c_T". Hits (1)–(3), (5) are constants of (d, L) that bound the torus side from below; hit (4) is not the torus. No condition has the form c_i ≥ F(ℓ) or c_i ≤ F(ℓ).
- lean/YmLean/CanonOrder.lean: `inductive Line` has 51 constructors N010–N500 (with N265); none is the torus side. So no edge of `canonEdges` can start at the torus. The header says the theorems "certify only that this transcription is acyclic … nor that the transcription is complete". So the Lean file proves: within the transcription, no constant depends on ℓ. It does not prove that the transcription has every hidden dependency. That gap is the estimate layer (§3).
Conclusion of §2 [P given the canon text]: the condition list of Lemma U1, as transcribed, has no ℓ. What remains is that each F_i (each "O(1)", "sufficiently large/small" closure) is an ℓ-free majorant.

## 3. Estimate layer: the seven channels through which a step sees the torus [P-sketch]

### 3.1 Lemma U2 (channels) [P for the channel bounds; P-sketch for the claim that the list is complete]
In the induction step k → k+1 on T_ℓ (CMP 109 Sects. 2–5, CMP 116, CMP 119 Sect. 3, CMP 122 I–II) and in the S1 sub-steps T1–T11 (SOURCES_L1_E §5.2), every estimate whose constant enters a condition Φ_i uses T_ℓ through one of the following channels. Each channel has an ℓ-free majorant.

- Ch1. Local analytic bounds. Sup bounds, Cauchy estimates and Taylor remainders of a function of (U, J)|_X on U_j^c(X, α_0, α_1), or of B′ on a polydisc of canon radius. The domain is defined by conditions on X only (P2: (i)–(iv) on X; cube-local gauges in (i)). Majorant: the constant depends on the radii and on X through d_j(X) and |X| only. [V P2 + P]
- Ch2. Entropy and walk counts. sup_□ Σ_{X∋□} e^{−κd_j(X)} ≤ O(1) (P6 (1.26)); counts of cubes meeting a cube; counts of random walks of given length; tree-graph counts in Mayer/Ursell bounds. Majorant: the Z⁴ count. A connected torus polymer lifts injectively to a connected Z⁴ polymer with no larger tree length (SOURCES_L2_L3L14 §3.4 [P], A15_BDRY_VERIFY item (c) [R]). The same lift (of a walk, step by step) maps torus walks from a fixed start injectively to Z⁴ walks. So every torus count is ≤ the Z⁴ count, for every ℓ. [P]
- Ch3. Propagator, averaging, regularity and variational constants (CMP 95–102). Printed as "absolute constants depending on d and L only" (CMP 99 p. 423, δ_0; CMP 99 reg. p. 83, B_1, B_2; CMP 102 pp. 303, 305, B_3, B_5) [V, SOURCES_L2_L3L14_VERIFY S9–S12]; R-004 (γ_0 for every U obeying the local regularity (3.35)–(3.36)) and R-008 (uniform in "k, volume, regular U") [R]. The random walk expansions that localize global operators (P8) are sums over walks: Ch2 counts times per-step local bounds. [V + R]
- Ch4. Cluster and Mayer expansions. The new activity on X is a sum over families (Z_1, …, Z_n) with ∪Z_i = X (P9 (2.39)); the Kotecký–Preiss or Cammarota criterion is a sup over one site of a sum over polymers through it. Majorant: the criterion constant, which is Ch1 × Ch2. Output bounds depend only on the criterion constant [R: Kotecký–Preiss 1986]. [V P9 + P]
- Ch5. Large-field factors and combinatorics. Per-cube suppression factors and per-volume costs inside one large-field region: "exp O(1)|Z_j ∩ Ω_j|", "exp O(1)(MR_j)^{−d}|Z_j|" (P20). Each volume is the volume of a large-field set, and Balaban pays it with the per-cube factors exp(−p_0(g_j)) of the same set. Majorant: the per-cube constants. [V P20 + P]
- Ch6. Quadratic-form lower bounds on bounded domains. The bound |B(b)|² ≤ 6(d + 3)(100M(L + 1)N^{β_0}R_j)^{d+2}Σ|∂B|² (P20 (1.78)) is a Poincaré-type inequality on one renormalized component. Its constant is the component's cube size (P16 (i): "contained in a cube of the size 100MR_k"; P19: "Λ is contained in a cube of the size 100M"). Majorant: the cube size, ℓ-free. A whole-torus Poincaré constant (∝ ℓ²) would be the dangerous case; it never enters, because only components inside a 100MR_k cube are renormalized. [V P16, P19, P20 + P]
- Ch7. Infinite-volume objects. β_j and Π^{(j)} are defined on Z^d (P3, P15 p. 281). The whole-lattice minimizer replaces the local one with error O(exp(−R_k)) (P19). The terms for X ⊂ Λ "do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice" (P15 p. 278). Majorant: none needed; these objects are the same for every ℓ. [V]

Proof of the channel bounds. Ch1, Ch3, Ch7 are pages or ledger rows. Ch2 is the lift. Ch4 is Ch1 × Ch2 plus the Kotecký–Preiss theorem. Ch5 and Ch6 are pages, and their constants are cube sizes and per-cube factors. ∎ [P for each bound]
Completeness [P-sketch]. That no other channel exists is checked on the pages of §1 and on the pages of the verified project files cited in §4. It is not checked on every page of the papers. This is the residue (U-W) of §6.

### 3.2 Lemma U3 (closure of the constants) [P given U2]
Each condition Φ_i of §2.2 is closed by an estimate built from Ch1–Ch7 by finitely many sums, products, and suprema over one site or one polymer. Replace each channel quantity by its ℓ-free majorant. The resulting conditions are sufficient (the proofs use only upper bounds of the channel quantities, and lower bounds only through Ch6 and R-004, whose constants are also ℓ-free). So the conditions of Lemma U1 can be taken ℓ-free, and Lemma U1 gives one tuple for every ℓ ∈ 𝓛(g). ∎
Worked closures (the three that fix E_0, κ, M, ε_1, as printed, P9):
- E_0: ½E_0 := the absolute constant of the localized log Z^{(k)} terms (random walk expansion of the Gaussian normalization: Ch3 + Ch2); then O(1)C_3ε_1 ≤ ½E_0 with C_3 the absolute constant of P7 (1.39) (Ch1, per cube). ℓ-free. [V + P]
- κ and κ_0: "κ sufficiently large" for (1.26) (Ch2, Z⁴ threshold s_0(d)) and for the Kotecký–Preiss criterion of (2.39) (Ch4). ℓ-free. [V + P]
- M(κ): "δ_0M ≥ κ" (δ_0 Ch3) and "δ(M/M_1) ≥ 2" (P17; δ, M_1 Ch3). ℓ-free. [V + P]
- ε_1: (2.39)–(2.41) "ε_1 sufficiently small" for the cluster bound on sums over Z ⊂ X; the factor exp 2(LM)^{−4}|Z| is absorbed in exp(−½δLκd_{k+1}(X)) per polymer (P9). ℓ-free. [V + P]

## 4. Where the torus side could enter, and how each place is handled

| place | what could depend on ℓ | how Balaban handles it | grade |
|---|---|---|---|
| W1. Zero modes of the fluctuation integral | constant fields and flat directions of the torus Laplacian; a spectral gap ∝ ℓ^{−2} | The fluctuation field is constrained block by block: δ(V̄_kV_{k+1}^{−1}) in (3.1) (P14), and axial gauge in each block. The constraint pins every block average, so the constant mode and every mode with zero block averages are removed. The quadratic form is bounded below by the local constant γ_0 of R-004 ("for every U obeying (3.35)–(3.36)", conditions on cubes). The global constant gauge group is compact; its Haar measure has mass 1. | [V P14 + R R-004, R-008 + P] |
| W2. Global functions on the whole torus | the action V(H_1B′) on U^c(T_η, …) (P7); propagators and G on the whole T_η (P8); the space U^c_{k+1}(□_0, …) on the whole T_η (P5) | Each is localized before any bound is taken: decomposition of unity Σ_□ζ_□ and s-parameters (P7 (1.37)–(1.39), C_3 absolute); generalized random walk expansions with M_1-cube domains (P8); the bounds (3.26)–(3.27) on □̃⁴ (P5). The bound constants are Ch1–Ch3. | [V + P] |
| W3. Global divisors and normalizations | log of a whole-torus integral bounded by C|T|; a holomorphy radius ∝ 1/|T| | log Z^{(k)}: random walk expansion, localized, absolute ½E_0 (P9). The divisor ∫dμχ_t of CMP 119 (3.32), (3.37): logarithm by cluster expansion, nonvanishing at complex source by Lemma J3; "No global modulus bound is used, so no volume factor arises" (SOURCES_L1_E §6.3 [R file]). R-ratio denominators: localized near Z′, small-field only (P16), per component (P18 (1.1)); the volume |Λ^{(k)}\G_0| in P18 is inside one component. | [V + R + P] |
| W4. Background minimizers and holonomy | a flat connection with nontrivial holonomy around the torus; a global gauge choice | All regularity conditions are cube-local (P2 (i): a gauge transformation "for each cube □ ⊂ X of a size O(1)LM"). Axial gauges are built on cubes and on domains inside components (P5 (3.26), CMP 122 I p. 196 via SOURCES_D3 (B8)). No construction gauges away a holonomy of a non-contractible loop, and none needs to: non-simply-connected domains (annuli) already occur in Z^d. CMP 102 constants are d, L only (S11, S12 of SOURCES_L2_L3L14_VERIFY). The whole-lattice minimizer enters only with error O(e^{−R_k}) (P19). | [V + P-sketch] |
| W5. Wrapping polymers | polymers X ∈ D_j that wind around T_ℓ; their count and their bounds | P4 (0.27): a domain "not contained in any cube □̃" is bounded by decay alone, E_0exp(−κ(L^jη)^{−1})exp(−½κd_j(X)); local coordinates are used only for X inside a cube. For ℓ ∈ 𝓛(g) a wrapping polymer is in no cube, so it is in this class. Counts: Ch2 (lift). The bound (1.18) is asserted for every X ∈ D_j of T, wrapping or not; no step treats wrapping X differently. Their contribution to Δ is e^{−(κ−c_0)ℓ/(4M)}-small (Lemma WRAP, SOURCES_L2_L3L14 §5.1), but L-320 needs only the uniform bound. | [V P4 + P] |
| W6. Large-field components that wrap | a component whose Poincaré constant is ∝ ℓ² | The R-operation acts only on components inside a cube of size 100MR_k (P16 (i)). For ℓ ∈ 𝓛(g) (side > 200MR_k in level-k units, Lemma ADM (d)) such a cube embeds in T_ℓ. A wrapping component fails (i); it is not renormalized and keeps its earlier per-cube large-field factors (Ch5). The Poincaré constant of (1.78) is the cube size (Ch6). | [V P16, P20 + P] |
| W7. The last RG step | a final integral over one block equal to the whole torus | Balaban stops at the unit lattice (P10: "we finish the inductive procedure when we reach the unit lattice"); the unit torus has ℓ/M > 22 cubes per side (K-032). No step integrates a block equal to T_ℓ. L-320's Step A at the unit scale is a polymer expansion with a per-site Kotecký–Preiss criterion (SOURCES_L2_L3L14 §3.2–3.3). | [V + P] |
| W8. The coupling flow | g_k depending on ℓ through an ℓ-dependent β | β_{j+1} is defined on Z^d (P3 (1.22); P15 p. 281). The flow (2.24) (P11) and the trajectory g_k, R_k, p_0(g_k), α_{i,k} are the same for every ℓ. L-196 fixes g and γ for all ℓ. | [V + P] |
| W9. Volume totals | E_k, R_k, B-terms, E_± ∝ |T| | They are outputs: (0.30) (P4), (2.45)–(2.48), (2.50) (P13, P14). Per-unit constants E_1, R_1, B_1, E_± are T-free on the page. No canon condition uses a total (§2.3 grep). | [V + P] |
| W10. Divisibility of partitions | cube partitions that do not tile T_ℓ | "The above partitions have to be compatible" (P10). ℓ = 2L^{m_T} with every cube side a power of L (Lemma ADM). This is a condition on ℓ, not on a constant. | [V + P given Lemma ADM] |

### 4.1 Lemma U4 (Balaban's construction needs (U_ℓ) for E_0, κ, α_0, α_1) [V P3 + P]
Statement. Balaban's definition (1.22) of β_{j+1} is valid only if the bound (1.18) for E^{(j+1)} holds with one pair (E_0, κ), on one domain U^c(X, α_0, α_1), for every torus T^{(j+1)} of the sequence T^{(j+1)} ↗ Z^d.
Proof. Π_{j+1,μν}(g_j, x) is a sum over polymers X ∋ x, x′ of second derivatives of E^{(j+1)}(X) at B = 0 (P3 (1.20), (1.7)). By Cauchy on U^c(X, α_0, α_1), each term is ≤ C(α_0, α_1)E_0e^{−κd_{j+1}(X)}. The limit T ↗ Z^d of Σ_x Π(x)x_μx_ν exists "by the localized representation (1.7)" only through a dominating bound Σ_X C E_0 e^{−κd(X)}|x|² that does not grow along the sequence; this needs sup_T E_0(T) < ∞, inf_T κ(T) > d-dependent threshold, and inf_T α_i(T) > 0. If any of these failed, the second moment Σ_x Π(x)x_μx_ν would have no torus-uniform bound, and "This limit exists" would be unjustified. ∎
Use. Lemma U4 is not a proof of (U_ℓ). It shows that Balaban's printed construction already uses (U_ℓ) for (E_0, κ, α_0, α_1), and through Theorem 3 ("ε_0, ε_1, α_0, α_1 depend on M") for M as well. The same reading underlies CMP 119 Theorem 2 (P13): "E_1 independent of … T (but dependent on the other constants occurring in the formulation of this theorem)" has content only if those constants are fixed before T. So a torus dependence of a base constant would be a gap in Balaban's own construction of β_j, which every part of the project already relies on (R-015).

## 5. The S1 constants 𝔖 = (r, ρ_1, c_τ, θ, c, C_B) [P-sketch; same residue]

Every S1 constant is fixed by a per-site or per-polymer estimate. The source enters a step only through (F1)–(F5) of SOURCES_L1_E §4.1 [R file]: Wilson weights, gauge-fixing weights, source vertices, the covariance C_f, and counterterm/contact terms. Each is local in f.

| constant | definition (file) | inputs | channel | torus quantity? |
|---|---|---|---|---|
| r | r ≤ r_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)); H-060 g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4; H-062 q_W^T ≤ ¼ (canon N-490) | γ, c_1, c_H, K_W^{T″}, S(·), B_𝒲″, C′_𝒟^f, γ_exp (N-060–N-300) | Ch1, Ch2 (S(δ) is a Z⁴ sum), Ch3 | none |
| ρ_1 | ρ_1 ≤ r/(4C_hM) (N-490; D3R_VERIFY S7 item 1); C_h from D2 (H1) |h_k| ≤ 2C_hMρ_1λ_k | r, M, C_h | Ch1 (a per-block gradient bound) | none |
| c_τ | τ(Y) = c_τr/(E_0|Y|), Lemma D3.1 on one R-denominator domain Y, |Y| ≤ (100MR_m)^4 (SOURCES_D3 (iv), l. 139) | E_0, |Y| (one domain) | Ch1, Ch6 (domain inside a 100MR_m cube) | none |
| θ (θ_W) | modulus domination θ_W ≤ 6.5γ²r (SOURCES_L1_E §5.1 (S-a)); per-site normalization change (1 − θ_W)^{−n_s/2} over a large-field region, paid by Balaban's per-site budget (L1_E §6.3) | γ, r; n_s = sites of one region | Ch1, Ch5 | none |
| c | FX-D radius c·r: Φ(g) = C(M)g²p_0(g)²R(g)⁴, sup_{g≤γ}Φ ≤ 1 (SOURCES_FX_D l. 15, 32: "independent of m, K, ε, and |Λ_i|") | M, g, p_0, R(g) | Ch1, Ch6 | none |
| C_B | sup|w_K^f − w_K^0| ≤ C_Br via Φ_K′ = B_K bounded; Σ_j sup_{|c|≤2r}|B_j′(c)| ≤ ½ (Lemma H, SOURCES_D3R l. 19) | β_j-type maps B_j(c) | Ch7 (B_j(0) = β_j, defined on Z^d, W8) | none |

Proof sketch. Each row's inputs are canon constants (§2) or the trajectory (W8). Each estimate is a sup over one site, one block or one denominator domain. The global objects of S1 are the global divisor (D-iv) (handled by Lemma J3 with no modulus bound, W3) and the stability bound S1(d) with E_±|T| (an output, W9; no consumer of S1 uses it, SOURCES_L1_E §7). Theorem L1-E already states its constants "independent of k, K, ε and ℓ", citing R-040, R-041 (volume-uniform bounds), L-165 (uniform in |Λ_i|) and the ℓ-free trajectory [R file]. This file supplies the structural reason for that clause: no S1 estimate has a channel outside Ch1–Ch7. [P-sketch, residue (U-W) on the same unread pages as (W6*)]

## 6. Residue, and constants for which the argument could fail

### 6.1 The residue (U-W), stated exactly [I]
(U-W). On the pages not read as images by any session — CMP 109 Sects. 3–5 apart from pp. 263–264, 275 and the pages cited by the verified files; CMP 116 apart from pp. 8, 10, 13, 20–21; CMP 122 I Sect. 1 apart from pp. 177, 183, 186, 201; CMP 122 II pp. 358–378 apart from pp. 365–366 and the Q-050 entries — no estimate that closes a condition Φ_i contains a quantity of the torus danger class:
 (D1) |T_η|, ℓ, m_T, L^{m_T}, or the number of cubes of T at any scale;
 (D2) a sum over all cubes (or sites, or polymers) of T without a decay weight that makes it a sup over one site;
 (D3) a spectral, Poincaré or Sobolev constant of a domain that is not contained in a cube of fixed size (100MR_k or smaller);
 (D4) a sup over T of a non-local quantity (one that depends on the field outside a fixed neighbourhood), unless it is a Ch3 constant printed as "d and L only";
 (D5) a count of torus objects not dominated by the Z⁴ count (none is possible by the lift, Ch2; listed for completeness).
No estimate in the danger class is known. Every page read in this file and in the cited verified files is free of it. The quantifiers of P3 and P12 ("numerous restrictions, which will become clear in the proof") leave the residue open: they do not list the restrictions.
Weakest repair. An image sweep of the unread pages, restricted to (D1)–(D4). It can be the same session as the (W6*) sweep of SOURCES_L1_E §6.4: both read every lower bound, division, logarithm and "sufficiently" closure. Pass criterion: no (D1)–(D4) entry inside a constant-choice condition. Size: one Opus session plus one verifier.

### 6.2 Constant by constant: does the argument fail anywhere?
- κ_0 (both meanings), κ, M(κ), M, ε_0, ε_1, α_0, α_1, E_0, A_0, A_1, C_0, C_1, p_1, γ: the argument holds (§2.2, §3.2, §4). None fails. Grade [P-sketch] each, residue (U-W).
- Constants with a value not computed but an ℓ-free definition: s_0(d) (N-070; the Z⁴ entropy threshold, ℓ-free by the lift), F (N-420; a per-component ratio bound, W3), C_c of N-330 (cost O(1) of CMP 122 II (1.79), (1.82)–(1.86); "may depend on M and L"; per-component), c_N (N-060, empty slot). Their values are open; their ℓ-freedom is not. [P]
- The only candidates for failure would be a whole-torus Poincaré or spectral constant (D3) or an unweighted whole-torus sum (D2). Balaban's design excludes both on every page read: Ch6 restricts the renormalized components to 100MR_k cubes, and every global object is localized before it is bounded (W2, W3). So no obstruction is known, and none is visible in the structure.
- Not covered by this file: (U_ℓ^poly) (SOURCES_L2_L3L14 §3.6) is not needed if (U_ℓ) holds; nothing here changes its status.

### 6.3 Findings outside the main line
- κ_0 homonym [V]. CMP 109 Theorem 3's κ_0 is a lower threshold on κ (P3). CMP 119's κ_0 is the exponent in |R^{(j)}| ≤ g_j^{κ_0}e^{−κd} and (2.46) "κ_0 ≥ 7" (P13; A11_CONST row 6). Canon N-080 ("κ_0 ≥ 7, large") is the CMP 119 exponent. The CMP 109 threshold has no canon line; it is the maximum of the N-070 lower bounds on κ. SOURCES_L2_L3L14_VERIFY §2.3 "κ_0 (hence κ)" means the CMP 109 threshold. Both are ℓ-free (§2.2). Proposed: a one-line note at N-080 naming the homonym (not applied).
- p_1 is printed [V]. CMP 122 I p. 183: "δ′_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, and p_1 < p_0"; CMP 122 II p. 383 adds 2p_1 − (d + 5)r_0 > p_0. SOURCES_L2_L3L14_VERIFY §2.3 row "p_1(·) formula not located on a page" is superseded.
- (H-U) label clash (header): the verify file's "(H-U)" is not H-116.

## 7. Proposed statuses (not applied; this file edits nothing else)

- L-319 / (U_ℓ): grade [V-partial] → [P-sketch, residue (U-W) I]. Text: "(U_ℓ) proved structurally (SOURCES_U_ELL): every constant of 𝔅 ∪ 𝔖 is fixed by ℓ-free canon conditions (§2); every closing estimate uses the torus only through the channels Ch1–Ch7, each with an ℓ-free majorant (§3); the ten torus places W1–W10 are handled on page images (§4); Balaban's own β_j construction (CMP 109 p. 264) needs (U_ℓ) for E_0, κ, α_0, α_1 (Lemma U4). Residue (U-W): no torus-danger-class quantity on the unread pages; shares one image sweep with (W6*)." Unverified until a verifier reports.
- L-320 (FX-V): unchanged as a reduction. Its input list becomes: Target 2 hypotheses on T_ℓ for every ℓ ∈ 𝓛(g); (U_ℓ) [P-sketch, residue (U-W)]; Kotecký–Preiss [R].
- Theorem IV (L-196), hypothesis list for (a)–(b) after this file:
 1. (H-T2) Target 2 hypotheses on T_ℓ for every ℓ ∈ 𝓛(g) (or an infinite subset), as in SOURCES_L2_L3L14_VERIFY §3 item 1.
 2. (U-W) [I], replacing the narrowed (U_ℓ) list [I]. (U_ℓ) itself becomes a lemma of the proof [P-sketch].
 3. (H-L6) the inputs of L-323 beyond (H-T2), unchanged.
 4. The Kotecký–Preiss theorem [R].
 (c) inputs unchanged. (d) unchanged.
 Net change: one [I] hypothesis on twelve named constants plus six S1 constants is replaced by one [I] page-reading of the same type as an existing residue ((W6*)). If the joint sweep passes, Theorem IV's uniformity input is gone.
- TRUST_LEDGER §4.3 "Distance to unconditional": replace the (U_ℓ) residue list by "(U-W) (joint with (W6*))".
- SOURCES_ORDER_CANON: note the κ_0 homonym at N-080 (§6.3). SOURCES_L2_L3L14_VERIFY §2.3: p_1 located (CMP 122 I p. 183).

## 8. Grade table

| item | content | grade |
|---|---|---|
| §0 | (U_ℓ) statement as used by L-320 | [V files] |
| §1 | P1–P20 | [V, images] |
| §2.1 Lemma U1 | uniform choice | [P] |
| §2.2 | each listed constant fixed by ℓ-free conditions | [P given canon + V pages] |
| §2.3 | canon grep; Lean `Line` has no torus node | [P]; transcription completeness not certified |
| §3.1 Lemma U2 | channel bounds Ch1–Ch7 | [P] each; completeness [P-sketch] |
| §3.2 Lemma U3 | closure; E_0, κ, M, ε_1 worked | [P given U2]; worked closures [V + P] |
| §4 W1–W10 | torus places | [V + P]; W4 [V + P-sketch] |
| §4.1 Lemma U4 | β_j construction needs (U_ℓ) for E_0, κ, α_0, α_1 | [V + P] |
| §5 | S1 constants | [P-sketch], inputs [R files] |
| §6.1 (U-W) | residue | [I] |
| §6.3 | κ_0 homonym; p_1 printed | [V] |
| (U_ℓ) overall | | [P-sketch, residue (U-W)] |

STATUS: COMPLETE. 24 page images rendered to one fresh /tmp folder at 150 dpi, read as images, folder deleted. Firewall kept. Only this file written; no PLAN.md line, no sync.sh.
