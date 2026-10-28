IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Balaban excerpts: verified verbatim index

Built 2026-10-27 from the *_VERIFY files, LEMMA_DPRIME_SWEEP.md, THEOREM2.md §1–§2, and LEMMAS.md. Page numbers are printed pages. Nothing here was re-read from the papers: each entry reports what a verifier recorded.

Evidence tags (the strongest tag a verifier gave):
- [IMG] verifier read the page image and the text matches.
- [TXT] verifier compared with the OCR text layer (balaban/*.txt) and found it verbatim.
- [LOC] verifier confirmed the passage exists at the page or line, wording right up to OCR noise. The verify file does not transcribe it. Text shown is from the draft or anchor file (THEOREM2.md, LEMMAS.md, LEMMA_B4.md).
- MISREAD marks a reading that some draft got wrong. The entry shows the correct reading.

Paper map: CMP 95 = Propagators I (1984); 96 = Propagators II (1984); 98 = averaging operations (1985); 99p = propagators in background field (pp. 389–434); 99g = regular gauge configurations (printed pp. 75–98 region); 102v = variational problem, background fields (pp. 277–309); 102u = UV stability in d = 3; 109 = RG approach I (1987); 116 = RG approach II, cluster expansion; 119 = convergent renormalization expansions; 122 I and 122 II = large-field renormalization I and II (1989). Page offsets: CMP 109 printed = PDF + 248; CMP 122 I printed = PDF + 174; CMP 122 II printed = PDF + 354; CMP 119 printed = PDF + 242.

Verify-file abbreviations: U3V = U3_VERIFY; U3RV = U3_REPAIRS_VERIFY; R2V = R2_VERIFY; SV = SOURCES_VERIFY; D1V, D2V, D2CV, D3V, D3RV, D3W8V = SOURCES_D*_VERIFY; HBV = SOURCES_HBETA_VERIFY; HHV = SOURCES_HHIST_N1_VERIFY; B4V = LEMMA_B4_VERIFY; DPV = LEMMA_DPRIME_VERIFY; SWEEP = LEMMA_DPRIME_SWEEP; T2PV = THEOREM2_PROOF_VERIFY; U1V = U1_VERIFY.

---

## CMP 95 (Propagators I)

95-1. p. 25–26 (OCR lines 454–466). "γ_0 ≤ Q′_kG′_kQ′*_k ≤ γ_1", with γ_0 depending only on d and γ_1 = a^{−2}. [TXT] U3V §9. Use: uniform gap of the abelian propagator.

95-2. p. 33, Prop. 1.1 with (1.89) (OCR line 772). "G is a symmetric operator on L²(T) and ‖GJ‖, ‖∇GJ‖, … ≤ γ_0^{−1}‖J‖ with a positive constant γ_0 independent of k, T, and depending on d only (if we put a = 1). This implies the bound from below: Δ_a = G^{−1} ≥ γ_0(Δ + I)". [TXT] U3V §8–§9; page [LOC] R2V. Scope: abelian Gaussian-kernel propagator at a = 1. It does not cover the bordered one-step matrix 𝔅_j(K); U3_REPAIRS proves that separately. Use: cited for uniform level bounds; scope limit matters.

95-3. p. 32. "bounded from below and above by positive constants independent of k and depending on d and a only". [LOC] R2V §1.

95-4. pp. 35–36, Prop. 1.2, (1.110). "constant O(1) depending on d only". [TXT] U3V §9 (OCR lines 901–904); [LOC] R2V. Use: same as 95-2.

95-5. p. 23 (line 306) "momentum representation"; p. 30 (line 633) "Δ_a is a positive operator". [LOC] B4V §1. Use: momentum-space route for the Gaussian step.

Negative result. R2V §1 grepped CMP 95, 96, 99, 102 for "fixed point", "converge", "limit", "k → ∞", "tends to". Every hit is a convergent Neumann or random-walk series or a fixed-k contraction. No statement about the k → ∞ limit of the operators. SWEEP §3 found no coupling sequence in CMP 95, 96, 98, 99, 102v.

## CMP 96 (Propagators II)

96-1. p. 246 (OCR lines 1150–1153). "derivatives of H_j up to third order, and their local Hölder norms as in (2.67), are uniformly bounded and have a uniform exponential decay with a decay rate depending on d only". [TXT] U3V §8–§9; page [LOC] R2V. Scope: third order only. It does not give the fourth-order bound needed for Γ_j^{(4)} (U3V: UNSUPPORTED for Γ^{(4)}). Use: uniform bounds on the minimizer map H_j.

96-2. p. 246 Prop. 2.5 and p. 247 Prop. 2.6 with (2.136). [LOC] R2V §1. Content not transcribed.

## CMP 98 (Averaging operations)

98-1. p. 19, eqs. (11) and (14). Gauge covariance (Ū^u)(y,y′) = u(y)Ū(y,y′)u(y′)^{−1}, and agreement with the linear average to first order. [LOC] B4V §1 (lines 96–142). Text from LEMMAS.md. Use: definition of a legal averaging.

98-2. p. 19, eq. (15). Ū_c = exp[ i Σ_{x∈B(c−)} L^{−d} (1/i) log( U(Γ_{c,x}) U(c)^{−1} ) ] · U(c), with Γ_{c,x} = Γ_{c−,x} ∪ [x, x(c)] ∪ Γ_{x(c),c+}. [LOC] B4V §1. Text from LEMMAS.md (formula not re-transcribed by a verifier). Use: Lemma B restated for Balaban's definition.

98-3. p. 20. His propositions "can be easily extended to other definitions of averaging operations satisfying the requirements postulated in this introduction." [LOC] B4V (line 155).

98-4. p. 24, from (42). "(Ū^u)_c = u(c_−)Ū_c u^{−1}(c_+)". [TXT] U3V §3 (OCR line 366); [LOC] R2V. Use: B1 (gauge covariance) and the linearized form of Lemma 1.4 in U3.

98-5. p. 24 (line 357). "this definition is local in the sense that Ū_c … depends only on the bond variables U_b for b ⊂ B^k(c_−) ∪ B^k(c_+). This property will play a very important role in the future." [TXT] B4V §2.2(c). Use: the inclined averaging (R3) in LEMMA_B4 violates this; 35% of its staircases leave the two cells.

98-6. p. 25, axial gauge: "|A_b| < 2|b_− − y|α_0 ≤ 2dLα_0", (48), (49). p. 26, Prop. 1, (51), Prop. 2. p. 27, (58). [LOC] B4V §1. Use: constant 35 in Prop. 1 for the inclined cell.

98-7. p. 31 (OCR lines 713–734). The "fundamental fact" sentence, (89)–(91), locality; "uniquely determined by all the conditions ... (77) for j = k − 1 and by (87)". [TXT] U3V §9, R2V §1. Use: composed k-step averaging; Lemma 5.0 in U3.

98-8. pp. 31–33, (88)–(92). Composition of k averaging operations. [LOC] R2V §2, U3V context. Use: the composed constraint Q̃^{(j)}.

## CMP 99p (propagators in background field, pp. 389–434)

99p-1. p. 396, regularity condition (3.35) (R2 draft said p. 397; the theorem is p. 397). [LOC] R2V §1. MISREAD of page only.

99p-2. p. 397, Theorem 3.1, and the sentence "All these inequalities are invariant with respect to gauge transformations of U". [LOC] R2V §1.

99p-3. p. 423, Theorem 3.12: "best possible, decay rate ... positive, absolute constant depending on d and L only". [LOC] R2V §1.

99p-4. p. 428. "positive definite operator C*Δ_kC with a lower bound γ_0 > 0 independent of k and U. We have proved it in [4], Lemma 2.4, for operators with U = 1. Localizing ... we can prove it for C*Δ_kC with an arbitrary configuration U satisfying (3.35), (3.36) with Mα_0 sufficiently small". [TXT] R2V §1. Use: uniform lower bound in background fields. Balaban asserts it ("we can prove it"); he does not prove it there. R2V ledger 13: UNSUPPORTED (sourced).

99p-5. line 951: "Generalized Random Walk Expansions", cubes □^n of size (2+2n)ML^jη. [LOC] B4V §1.

## CMP 99g (regular gauge configurations)

99g-1. p. 78, (1.15): "determine uniquely an element in each orbit". [LOC] B4V §1.

99g-2. p. 79, Lemma 1, (1.25), "(d−1)(L−1)2α_0L^{−2}". [LOC] B4V §1.

99g-3. p. 98, global axial gauge, (1.129). [LOC] B4V §1. Use: comb-path gauge; fails on tilted cubes of side ≥ 15 (B4V §2.1).

## CMP 102v (variational problem)

102v-1. p. 286. "exactly one fixed point of the transformation" and "uniformly convergent sequence of successive approximations". [LOC] R2V §1 (R2 draft wrote "p. 10", a PDF page: MISREAD of page). Both are contraction statements at fixed k, not limits in k.

102v-2. pp. 279–281: Theorem 1, (8); lift (11) is on p. 279 (draft said p. 280); "k = 1 … U_0 = V_0"; Prop. 2. [LOC] B4V §1. Content not transcribed.

## CMP 102u (UV stability, d = 3)

102u-1. OCR lines 96, 530: couplings are explicit, "g_k = g(L^kε)^{1/2}", so g_k² = g²L^kε. Line 601: "|U(∂p) − 1| < 2L²B_3 g_{k−1}p(g_{k−1})η²". [TXT] SWEEP §3. Use: shows no cross-scale coupling comparison is needed in the d = 3 paper.

## CMP 109 (RG approach I)

109-1. p. 251–252, (0.1), (0.2). "tr is the normalized trace, i.e. tr 1 = 1"; "L is an odd, positive integer > 11" (OCR line 124). [IMG/TXT] R2V §1 ("verbatim correct"); T2PV Step 6 ("verbatim confirmed"); [LOC] B4V. Use: normalization of the Wilson action; odd-L bookkeeping.

109-2. p. 252, (0.3). Contours; "In the previous papers … not symmetric". Printed bound is |n_μ| ≤ (L−1)/2; the OCR "L − 1/2" is an OCR copy error. [LOC] B4V §1.

109-3. pp. 253–254, (0.4), (0.8), (0.11), (0.12). (0.8): (1/i) log M({e^{iA_j}}) = (1/n)Σ A_j + higher order. (0.12): Ū(c) = exp[ i Σ_{x∈B(c−)} L^{−d} (1/i) log U(c−,x)U([x,x′])U(x′,c+)U(−c) ] U(c), Federbush averages M. Sentence: "This average has properties similar ... all results of the paper [12] are valid for it". [TXT] R2V §1, U3V §9 (OCR lines 182–265), B4V (line 250: "do not depend on any particular averaging"). Formula as written in THEOREM2.md §2. Use: the averaging linearized in U3.

109-4. p. 254, (0.14); p. 255, the Faddeev–Popov sentence and (0.17), with weight 1/g_0² on both the gauge-fixing sum and A(U). [IMG] R2V §1. (0.15) exact for every α by Haar invariance; (0.16) cutoff ε_0 coupling independent [IMG] D2CV §1. Use: gauge fixing in the RG step.

109-5. p. 255, (0.18), verbatim: "1/g_0² = 1/g_1² + β_1(g_0), or 1/g_1² = 1/g_0² − β_1(g_0)". Text below: "(1/g_1²) − (1/g_0²) = (d(1/g²))_0 = −β_1(g_0) ... (d/ds)(1/g²) = −β(g), or (dg/ds) = 1/2 β(g) g³". [IMG] R2V §1. Use: sign of the coupling recursion; the coupling grows toward the infrared.

109-6. p. 255, (0.19), with "where the constant N_k is given by the integral above with V = 1". [IMG] R2V §1.

109-7. p. 256, (0.20), verbatim: "1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k)". [IMG] R2V §1. MISREAD: the R2 draft quoted it as "1/g_{k+1}² = 1/g_k² + β_{k+1}(g_k)" and then reported a sign conflict. No conflict exists. The printed sign agrees with (0.18) and (0.23). Equivalent form used in THEOREM2.md §2: 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k). DPV, HBV, LEMMAS D use the same convention.

109-8. p. 256, (0.21)–(0.23). (0.23): E_k(U_k) = Σ_{j=1}^k [−β_j(g_{j−1}) A^η(U_k) + E^{(j)}(U_k)]. [IMG] R2V §1. Also: scales ε = L^{−K}, k = K is the unit lattice (p. 256) [LOC; THEOREM2.md only].

109-9. p. 257, (0.24), (0.25), the tree-graph distance d_j(X). (0.25): |E^{(j)}(X,U)| ≤ E_0 exp(−κ d_j(X)). [LOC] B4V §1 (lines 441–455).

109-10. p. 258, (0.27)–(0.30). (0.29): "|V^{(j)}(X, U_k)| ≤ O(1)(L^jη)^{4+α} exp(−κ d_j(X)), α > 0" (prefactor is O(1), not E_0·O(1)). (0.27): local coordinates on a cube □̃ with □ ∈ π_k, as a subset of T_η. (0.30): the number of π_j cubes is O(1)(L^jη)^{−4}M^{−4}|T_η|; a π_j cube has unit-lattice volume (M L^jη)^4. [IMG] D2V V4, HHV Part 1. Use: marginal-term bound; cube counting for hop recursions.

109-11. p. 258, marginal variable: "We define the function β_j(g_{j−1}) to be equal to the coefficient β". [LOC] R2V §1.

109-12. p. 259, Theorem 1. "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective actions for small fields are given by the formulas (0.22)–(0.24), with terms satisfying (0.29)." [IMG] SWEEP §2 item 1.

109-13. p. 259, (0.31), verbatim: "1/g² + β log(L^kε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^kε)^{−1}". With g_K = g and L^Kε = 1: 1/g_k² = 1/g_K² + Σ_{j=k+1}^K β_j, so β_j > 0 is asymptotic freedom. [IMG] R2V §1; SWEEP §2 item 2. The numbering stops at (0.32); no (0.33) exists (SWEEP). Theorem 2 (full sentence) is in "Needs verification".

109-14. p. 260, (1.1): "exactly one regular, critical orbit ... minimal orbit". (1.2), (1.3) regularity (B4V). [IMG/LOC] R2V, B4V.

109-15. pp. 260–261, (1.3), (1.4), (1.5), and "We have written explicitly terms of the order 0 in the coupling constants". (1.6) absorbs the log Z terms into E^{(j+1)}. [IMG] R2V §1. Content not transcribed. Use: Gaussian integral that defines β^{(0)}.

109-16. pp. 262–263, Sect. 1 domain U_j^c(X,a_0,a_1): conditions (i)–(iv) (local real gauge, one gauge on all of X, |dU − 1| < a_0ξ², block averages (1.15)–(1.16)); (1.18) and (1.19) G^c gauge invariance; p. 263 remark that pairs satisfying (i)–(iii) with smaller a_0′, a_1′ satisfy (iv). [IMG] D2CV §2. Use: domain on which the E^{(j)} bounds hold.

109-17. p. 263 (and 264), inductive assumptions, verbatim: "We assume that the function E^{(j)}(X, g_{j−1}, U, J) is defined and analytic on the space U^c_j(X, α_0, α_1), with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j). It depends on the configurations restricted to X, i.e. on (U,J)|_X. It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ. There exists a constant E_0 such that |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κ d_j(X)) (1.18) for M ≥ M(κ), γ sufficiently small, and for all configurations (U,J) ∈ U^c_j(X, α_0, α_1)." [TXT] R2V §1 ("correct"), HHV Part 1 (OCR), SWEEP. Text as in THEOREM2.md §3a. HHV: this is an INDUCTIVE ASSUMPTION, followed by "We will investigate other properties in a separate paper". It does not say "uniform in j" in words.

109-18. p. 264, (1.20)–(1.22). β_{j+1} defined as the second moment of the vacuum polarization tensor Π_{j+1,μν}(g_j,x) = lim_{T^{(j+1)}↗Z^d}. "This limit exists by the localized representation (1.7)". "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives." [TXT] R2V §1, SOURCES_VERIFY item 8 (line 799), HHV.

109-19. p. 264 (OCR line 804), Theorem 3: "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then the sequence of actions A_k … satisfy all the inductive assumptions described between (1.1)–(1.22)." [TXT] SWEEP §2 item 3.

109-20. p. 266, (2.5), (2.9), (2.10). After the change U → B′, the term (1/g_k²)Σ ½|B′(y,x)|² sits in the exponent. (2.9): χ_k restricts |B′(b)| < ε_1 (alternatively g_k/y_k ε_1) BEFORE the scaling B′ = g_kB, so the scaled field obeys |B| < ε_1/g_k. χ_k is not gauge invariant. [IMG] D2CV §1, D2V V3. Analyticity cutoff version g_k/y_k ε_1 on p. 266 [V] D2V V7.

109-21. p. 267, (2.12) and the gauge-covariant linear term, verbatim: "−(1/g_k)⟨H_1B′, J⟩ = 0 because ⟨δA′, J⟩ = 0 for all δA′ satisfying the condition QQ*A′ = 0, and H_1B′ satisfies it. Hence the only term with a negative power of g_k is the action evaluated at the configuration U_{k+1}." (2.12) minimizes the unweighted A^η(U) under M_B(U) = V. [TXT] SV §6(d), D2V V3 (text line ~930). Also b_0(c), corridor, LQh = I [LOC] B4V. Use: why the linear vertex vanishes; E5 can stay verbatim under a source.

109-22. p. 268, (2.12)–(2.15), including the curly bracket {E_k(U_k(exp i[g_kCB − hD̃(g_kCB)]V^{(k)})) − E_k(U_k(V^{(k)}))}. [IMG] HHV Part 1. Use: E^{(j)} enters step k+1 only through a difference; no g_0…g_{k−1} dependence outside the bracket.

109-23. p. 269. P^{(k)} "is bounded by a second order polynomial in B, with coefficients of the order O(g_k) [OCR 'O ^ )'], hence it can be treated as a small perturbation". [TXT] D2V V3.

109-24. p. 270 (line 1068; line 1270). "Let us take the partition π_k. We construct a cover of the space T by cubes □, which are unions of 2^d neighbouring cubes from π_k ... ζ_□(x) = Π ζ(M^{−1}(x_μ − y_μ))"; "dist^{(ξ)}(X, supp(1 − ζ_□)) ≥ M(L^jη)^{−1}". [TXT] D2V V5. Use: Sect. 3–4 cubes are k-scale (π_k), not j-scale.

109-25. p. 280, verbatim: "Let us make a final remark about the constant in the inequality (3.54). It is much bigger than E_0, and further bounds and summations will make it worse. Eventually we have to recover the constant E_0 in the inductive assumption (1.18), and the mechanism for it is provided by the differentiation with respect to t_□, at t_□ = 0. This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant." [IMG/TXT] D3W8V S5, D3RV S5, HHV. Use: the only place the E_0 constant is recovered; it bounds generated terms, not transported inputs.

109-26. pp. 284–285, (4.13)–(4.14): a constant λ in g^c gives [λ, dE(1)/dB] = 0, G semisimple, so dE(1)/dB = 0 (global colour invariance). (4.17): "|(d_νB_μ)(x)| < O(1)(α_2 + B_3 O(1) M a_0)(L^jη)² < a_1(L^jη)²". (4.18): "|d_λd_νB_μ| < a_1(L^jη)^{2+β}" with 0 ≤ β ≤ β_0 < 1. [IMG] D2CV §3. MISREAD: the D2C draft wrote 0 < β < 1; the print is 0 ≤ β ≤ β_0 < 1.

109-27. Sect. 4 end, (4.16)–(4.45) and Sect. 5 start (OCR). (4.16) "The operation Q_{j,μ} is translation invariant". (4.34) "The second expression ... we have to use only Euclidean symmetries to reduce it to a final form. By the Euclidean symmetries the third expression should vanish." (4.35)–(4.37): "we extend summations over y to the whole lattice Z^4"; "We extend it to all X ∈ D_j, where D_j is the class of localization domains constructed for the lattice ξZ^4"; Π = Σ_{X∈D_j} E^{(2)}(X,x,y). [TXT] D2V V2. (4.38)–(4.44) pp. 290–292: the old counterterm fluctuation β_j(g_{j−1})(A(U_k(exp iB V)) − A(U_k(V))) and the non-uniform parts (4.42), (4.44) "cancel" the marginal parts of the fluctuation of E^{(j)}, "because (4.38) appears with the minus sign in the effective action (1.6)". [TXT] HHV Part 1. Use: why the past enters only through V^{(j)} remainders.

109-28. p. 293 (5.7), (5.12)–(5.15); p. 294 "Consider cases with one component of ε"; p. 296 (5.32) "three different indices"; pp. 296–297 "common value of 2d^{−2}β_{μν}", (5.36), (5.37). [LOC] B4V §1 (lines 2188–2440). (5.10): decay δ_1 = ½min{δ_0, κM^{−1}} [TXT] D2V V7.

109-29. p. 297, (5.37), (5.38), (5.42), (5.43), (5.44). (5.42): β = −(∂²/∂p_μ∂p_ν)Π_{μν}(0) = Σ_x Π_{μν}(x)x_μx_ν (μ ≠ ν), "the fundamental equality" (B4V). (5.43): β·½Σ tr(∂δB)(∂B), the first variation of β·½Σ_p tr(∂B)_p². (5.44) is printed with exp(½δ_1|x−y|): the sign is printed that way, a negative exponent is intended ([sic] justified). [IMG] R2V §1, §2. Use: definition of β_j.

109-30. p. 298, two quotes that match the page image (HHV names two; both are on p. 298): "we should write the superscript (j) at the tensor Π in the formula (5.42) defining the function β_j"; "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants." (OCR line 2497). [IMG] R2V, HHV; [TXT] SV §8(c)(ii), SWEEP §3. Use: history dependence of β_j (L5 in LEMMA_DPRIME; (H-hist) in SOURCES_HBETA).

109-31. p. 298 (OCR line 2469). "the first and second order derivatives of the function Π′_{μν}(p) vanish at p = 0". [TXT] U1V §1. Use: evenness and transversality of the vacuum polarization at small p.

## CMP 116 (RG approach II, cluster expansion)

116-1. p. 3, (1.6)–(1.7). Random-walk terms are localized on domains of π_k(1)-cubes (size M_1). "(1.7) ... where Δ(y), Δ(y′) are localization cubes of the term. This bound holds for all operator norms in formulations of theorems in [13], e.g. in Theorem 3.1." [TXT] D2V V6. Use: Balaban's norms are cube-to-cube operator norms.

116-2. p. 3 (lines 99–100). "In these equations we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds. Only these bounds were important in the analysis of Sect. C, E [15]". [TXT] SV §9, D3W8V S6. Scope: "these equations" are (1.3)–(1.4), the background-field equations for the linearizing map. It is not a statement about a Gaussian covariance. Using it for dμ_{C_f} is an extension by analogy.

116-3. (1.34): "{B : |B| < ε_1 g_k^{−1} on Y}". Single scale. [TXT] SWEEP §3. CMP 116 contains no (0.31); (0.31) is in CMP 109 (SWEEP §6).

## CMP 119 (convergent renormalization expansions)

119-1. p. 248 (OCR line 160). "its upper bound coming from the inequality (0.33) [I], i.e., we take ε_0 = g_0A_0(log γ_0^{−2})^{p_0}, γ_0^{−2} = γ^{−2} + β log ε^{−1}". [TXT] SWEEP §2 item 4. The reference "(0.33) [I]" is a misnumbered reference to (0.31) of CMP 109 (no (0.33) exists). Balaban's own error, not a draft misreading.

119-2. p. 249 (lines 560–561). "β_1(g_0) was defined in [I] by the formulas (1.41)–(1.43)". [TXT] D3W8V S4. So β_j(g_{j−1}) is a number from the whole-lattice theory of CMP 109.

119-3. pp. 254–255, (2.1), (2.3): "100 MR_j … rectangular parallelepiped". [LOC] B4V.

119-4. p. 255, (2.4)–(2.7), verbatim: "The coupling constants g_j satisfy the inequalities g_n ≤ (1 + g_n²β′(n − m))^{1/2} g_m ≤ (1 + g_n²β′)^{1/2}(n − m)^{1/2} g_m ≤ (1 + β_0)(n − m)^{1/2} g_m, g_m ≤ (1 + β_0) g_n, (2.6) where n > m, and β_0 > 0 can be chosen arbitrarily small, if g is sufficiently small. The inequalities follow from the renormalization group equations (0.20) [I], and from the properties of the β-functions. They imply the following inequalities: (log g_n^{−2})^p ≤ (1 + β_0)(log g_m^{−2})^p, (log g_m^{−2})^p ≤ (1 + g_n²β′(n − m))^{β_0}(log g_n^{−2})^p ≤ (1 + β_0)(n − m)^{β_0}(log g_n^{−2})^p, (2.7) where p is a positive integer." Definitions (2.4)–(2.5): ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j); R_j = least L^r with R_j ≥ (log g_j^{−2})^r. [IMG] SWEEP §1. Use: every cross-scale factor in CMP 122 comes from here; Lemma D′ must deliver (2.6)–(2.9).

119-5. p. 256, (2.8)–(2.9), verbatim: "ε_n ≤ (1 + β_0)(n − m)^{1/2} ε_m, ε_m ≤ (1 + β_0)(1 + g_n²β′(n − m))^{β_0} ε_n ≤ (1 + β_0)²(n − m)^{β_0} ε_n, (2.8) R_n ≤ L R_m, R_m ≤ L(1 + g_n²β′(n − m))^{β_0} R_n ≤ (L + 1)(n − m)^{β_0} R_n. (2.9) Similar inequalities hold for other constants, which will be introduced later." [IMG] SWEEP §1.

119-6. p. 259, (2.24), printed reading: 1/g²_{j−1}(x) = 1/g²_j(x) + β_j(g_{j−1}) φ_j(x), i.e. 1/g²_j(x) = 1/g²_{j−1}(x) − β_j(g_{j−1}) φ_j(x). Surrounding words: "Here the coupling constants g_{j−1} are defined as in (I.0.20), and φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1}. Thus g_j²(x) = g_j² on the last domain." [IMG] SV §6(a); [IMG] D3W8V S4. MISREAD: SOURCES.md reconstructed the sign as 1/g_j²(x) = 1/g_{j−1}²(x) + β_jφ_j (wrong). The OCR text layer also shows a "+" with the indices swapped, which D3V V2 repeated without re-checking the image. Correct reading is the line above; it agrees with CMP 109 (0.20).

119-7. p. 259, (2.25): E_k(U_k) = Σ_{j=1}^k [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1}) A(φ_j, U_k)]. β_j is evaluated at the constant g_{j−1}; the only x-dependence of g_j(x) is the cutoff φ_j. [IMG] SV §6(b), D3W8V S4. Use: a source-dependent local coupling is a new object, not in Balaban.

119-8. p. 258–259, (2.23) and commentary (text lines 820–845): A_k = −A(1/g_k²(·), U_k) + E_k + R_k + B_k − E_k. E_k is "fully renormalized, i.e. vacuum energy and coupling constant renormalization counterterms are included into it"; R_k: "we perform the vacuum energy renormalization only"; B_k: "does not require any renormalization". [TXT] D3V V2, B4V.

119-9. p. 259, (2.28). Thresholds α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}; large-field factor exp(−O(1)(log g^{−2})^{2q}). [TXT] D3V V7, SV §9.

119-10. p. 260, (2.29), (2.32) [LOC, lines 890, 916]. (2.30): R_k = Σ_j [R^{(j)}(Λ_j, U_k) − R^{(j)}(Λ_j, 1)]. (2.31), verbatim: "|R^{(j)}(X, (U, J))| ≤ g_j^{κ_0} exp(−κ d_j(X))"; "After the vacuum energy renormalization we obtain a sum of marginal terms, i.e., terms with bounds O(1)(L^jη)^4 g_j^{κ_0} exp(−κ d_j(X)). ... The sum over j is controlled by g_j^{κ_0}." and "κ_0 can be chosen arbitrarily large"; "It explains why coupling constant renormalization counterterms are not needed in (2.30)". [IMG] D3W8V S4; [TXT] D3V V2.

119-11. p. 262, Theorem 1 (line 1017): "There exist constants … such that if the sequence of coupling constants {g_k}, determined by the recursive renormalization group (Callan-Symanzik) equations (0.18), (0.20) [I], satisfies the inequalities (I.0.33), then the sequence of densities {ρ_k} … satisfies all the inductive assumptions." [IMG] SWEEP §2 item 4. "(I.0.33)" = (0.31) (119-1). So the large-field theorem assumes literal (0.31), not only ]0, γ].

119-12. p. 263, (2.46): "|R_k(U_k)| ≤ R_1 Σ_{n=1}^{k} |Γ_n| Σ_{j=1}^{n} g_j^{κ_0} < R_1 Σ_{n=1}^{k} |Γ_n| g_n^{κ_0−6} < Σ_{n=1}^{k} |Γ_n|, (2.46) for κ_0 ≥ 7 and g sufficiently small." [IMG] SWEEP §4 F. Use: needs linear growth of 1/g_j² (lower side of (0.31)).

119-13. pp. 266–267, (3.7), (3.8), (3.12), (3.13): "|H_{k,□}| … ≤ B_3(4δ_k + exp(−δ2M_2R_k)30d²L²B_3(1 + β_0)ε_k)"; "|U_{k+1}(∂p) − 1| < 2B_3L²(1 + β_0)ε_k(L^{−1}η)²"; "|V^{(k)} − V^{(k)}_□| < (4dL)²(1 + β_0)B_3ε_k". [IMG] SWEEP §4 G.

119-14. p. 270 (text and image). "For k − j large enough, more precisely for j ≤ k_1, where k_1 is the largest integer satisfying L^{−(k−k_1)}MR_j ≤ L, the cubes of the partition are …"; and "the expression determined by the sum R_k = Σ_{j<k_1} R^{(j)} is Euclidean covariant ... It has the same covariance property as the expression determined by E_k, and we include it into E_k. The sum of the two expressions, R_k and E_k is denoted also by E_k. The sum of the remaining terms R_k = Σ_{j≥k_1} R^{(j)} is treated separately." (3.25) image: exp[A_k(1/g_k², U_{k+1}) + E_0^{(k)}] · z^{(k)}∫dA χ^{(k)} exp[−½⟨A,C*Δ^{(k)}CA⟩ − ⟨A,C*Δ^{(k)}CA_k⟩ − ½⟨A_k,…A_k⟩ + P^{(k)}(g_k,(A_k,A)) + {…} + V^{(k)}(S_{k+1},(A_k,A))]. [TXT] D3V V3; [IMG] SWEEP §4 H, D3W8V S8, D3RV S3. Use: old R-terms are merged into E_k, so "E-class terms are never produced from R inputs" is false.

119-15. pp. 270–272. p. 271 [IMG]: "Introduce now auxiliary parameters s, t, the parameter t multiplying the expressions B_k, A((1/g_k²(·)) − (1/g_k²), ...), V^{(k)}, s multiplying R″_k." (3.26)–(3.28) text: the first part "is the expectation value of the boundary terms, and it contributes to B^{(k+1)} only. The second is ... the expectation value of the R-terms, and it contributes to R^{(k+1)} and B^{(k+1)}. The third ... involving the regular terms of the effective action only ... contributes to E^{(k+1)} and B^{(k+1)}." (3.27): Z_{s,t}^{−1} dμ_{C^{(k)}(Λ_{k+1})}(A) χ_k exp[−⟨A,C*Δ^{(k)}CA_k⟩ + P^{(k)} + {…}_{s,t} + tV^{(k)}(S_k)]. (3.28) last log: log[z^{(k)}∫dA χ^{(k)} exp[−½⟨A,C*Δ^{(k)}CA⟩ + P^{(k)}(g_k,A) + {E_k(U_k(exp i[g_kCA − hD̃(g_kCA)]V^{(k)})) − E_k(U_{k+1})}]]. (3.29), (3.30): t real in [0,1], term g_k∫_0^1 dt ⟨∂_{tg_k}P^{(k)} + ∂_{tg_k}E_k(…)⟩_t. [IMG] D3V V5, D3RV S3, D3W8V S2. Use: the deviation of the local coupling from g_k is booked as a boundary term.

119-16. p. 278 (3.45)–(3.47), verbatim: "The terms of the sum above satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0^3(g_k)). ... the integration with respect to t preserves the form of the representation, and the multiplication by g_k yields small bounds." Bottom of the page: "the terms E_0^{(k+1)}(Λ_{k+1}, X, z) of this representation, for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]." [IMG] D3W8V S3. Caveat: the framework of [I] has no R-terms, so this cannot hold literally for terms built from merged R inputs.

119-17. p. 279, verbatim: "The coupling constant renormalization is performed by subtracting β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1), and by replacing the function g_k^{−2}(·) in the action A(g_k^{−2}(·), U_{k+1}) by g_{k+1}^{−2}(·) defined by the equation (2.24) with j = k+1." Vacuum renormalization subtracts E^{(k+1)}(1) and R″^{(k+1)}(1). [IMG] D3W8V S3, D3RV S5. The subtraction is taken from the whole E^{(k+1)}, including output of merged R inputs.

119-18. p. 282, (3.58)–(3.61): "usual implications", "Considering reflections/permutations", "possible definition of the β-function". [LOC] B4V §1. p. 284, (3.68) [IMG] SWEEP §4 I (sketch of another proof of Theorem 2; not load-bearing).

## CMP 122 I (large-field renormalization I)

122I-1. p. 177. "ten layers of MR_k-cubes". [LOC] B4V.

122I-2. (0.1) text. |U(∂p) − 1| ≥ g_0p_0(g_0), p_0(g) = A_0(log g^{−2})^{p_0}, p_0 a positive integer; Balaban: "the bound does not give any positive power of ε" in d = 4. [TXT] D3V V7. (0.4): "∫dV(Rρ)(V) = ∫dV ρ(V)"; lines 72–75: "We will prove that the densities are positive, and the inegration domains in the integrals above are nonempty, hence the denominators are positive, and the operation R is well defined." [TXT] SV §9.

122I-3. p. 183, after (1.27), definition: "δ′_j = g_j A_1 p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, p_1 < p_0". [IMG] DPV Step 4. MISREAD: LEMMA_DPRIME §5 used g_j^{1/4}; the print has the factor g_j.

122I-4. p. 187, (1.52); p. 188, (1.57). (1.52): "|U^{(n)}_{k,Z}(∂p) − 1| < (1 − β(1/2))L_0^{2max{0,j−l}}ε_{j+1}(L^{k−j−1}η)²(1 + αβ) + αβε_j(L^{k−j}η)² < …", "under the usual restrictions on β_0, β, L_0 (i.e., β_0 ≤ 1/2, β ≤ 1/2, L_0 < (1/2)L)". (1.57): "… < 44d²B_3²(1 + β_0)exp(−R_j)ε_j". [IMG] SWEEP §5 J, K.

122I-5. p. 192, "Passage A", verbatim: "δ′_j ≤ (1 + β_0)² (k − j)^{β_0} δ′_k ≤ (1 + β_0)² N_0^{β_0} δ′_k, so N_0 δ′_j ≤ (1 + β_0)² N_0^{1+β_0} δ′_k < 4N_0² δ′_k". [IMG] DPV Step 4. MISREAD: LEMMA_DPRIME §5 read the factor as (1+β_0)^{2(k−j)β_0}; the print is (1+β_0)²(k−j)^{β_0}, a power of (k−j). The corrected check needs only 1/γ² ≥ 2.42 D (with log γ^{−2} > 2p_1), not 3.8 D with exponent 1/8.

122I-6. pp. 195–196, "essential use of the fact … rectangular parallelepipeds", "slightly awkward definition". [LOC] B4V. p. 201, "averages over d! permutations … 2^d reflections, N_i = 1/(2^d d!)". [LOC] B4V. Use: Balaban's averaging over the hyperoctahedral group; the inclined step breaks it.

122I-7. p. 198, (1.94): "B_3δ′_k + L^{−(k−h)}O(1)B_3²B_5M^6ε_k ≤ B_3(1+β_0)N^{1/2}(A_1p_1(g_h)/(A_0p_0(g_h)))ε_h + … < αε_h", with h < k, k − h ≤ N, "N ≤ O(1)(log g_k^{−2})^ν ≤ O(1)(1+β_0)(log g_h^{−2})^ν". [IMG] DPV Step 5. A reverse-direction comparison; needs the upper side of (0.31).

122I-8. p. 199, four comparisons L1–L4, e.g. L2: "B_3 exp(−δ(M/M_1)(j − h))exp(−(1/2)δMR_h)23d²ε_h ≤ 23d²B_3(1 + β_0)²(1 + (j − h)^{β_0})exp(−(j − h))exp(−R_h)ε_j < αε_j." L4: "ε_kη² ≤ (1 + β_0)(k − j)^{1/2}L^{−2(k−j)}ε_j(L^{k−j}η)² ≤ L^{−(k−j)}ε_j(L^{k−j}η)²." p. 200 (M): "From the definition of the number N_0 (recall that it is defined by the equation L^{−N_0+1}R_{k−N_0+1} = 1) we get O(1)B_3B_5M^5L_0^{−2(N_0−1)} ≤ O(1)B_3B_5M^5L_0²R_k^{−α_0}". [IMG] SWEEP §5 L, M.

## CMP 122 II (large-field renormalization II)

122II-1. p. 355, Theorem 1 and the sentences after it (THEOREM2.md §1): conditional on the effective couplings lying in ]0, γ]; "Theorem 2 of [I] allows us to remove the assumption …"; "The proof of Theorem 2, which is based on second order perturbative calculations, is very awkward and long … and has not been published yet, so we have Theorem 1 with the assumption." [TXT] SV §1 (checked against THEOREM2.md §1), B4V (line 31). The verification is weak: SV says "checked there". The full text is in "Needs verification". Page: SWEEP §2 item 6 prints "p. 359" at one place and "pp. 355–356" later; the PDF offset (+354) and B4V give p. 355. Treat "p. 359" as a SWEEP typo. Note Balaban's own labels are inconsistent: the quoted hypothesis "follows from the basic inequality (0.31) [II]", but (0.31) is in [I] = CMP 109 (SWEEP §6).

122II-2. p. 356 (text lines 53–55), verbatim: "physical observables, like loop variables, averaged loop variables, etc. These … theories, and they deserve detailed analysis and further publication." Full sentence in THEOREM2.md §1: "Theorem 1 is the basis for many other applications, for example, for an analysis of expectation values of physical observables, like loop variables, averaged loop variables, etc. These problems are very important for construction of the four-dimensional gauge field theories, and they deserve detailed analysis and further publication." [TXT] SV §1 (ellipsis in the verifier's quote), B4V.

122II-3. p. 362, (1.23): "H_{B_1} can be bounded by 11d²ε_h ≤ 11d²(1 + β_0)²N^{β_0}ε_k ≤ 11d²(1 + β_0)²R_k^{β_0}ε_k", h = k − N. [IMG] SWEEP §6 N.

122II-4. p. 364 (text): "(1/(g″_k(·))²) − 1/g_k is bounded by O(1)(k − j) on Ω′_j \ Ω′_{j+1}". [TXT] D3V V1, V5.

122II-5. p. 365, (B10) and (1.37): "We define also the new function 1/(g_k(·))² = 1/(g″_k(·))² Z^c + 1/(g_k²) Z." (1.37) contains the term −A((1/(g″_k(·))² − 1/g_k²)ζ, U″_{k,Z}) and −A((1/(g″_k(·))²)ζ_1, U″_{k,Z}). [IMG] D3V V1, D3RV S2.

122II-6. p. 366, verbatim: "1/(g″_k(·))² − 1/g_k² = O(N) ≤ O(R_k) on the support of ζ, so it can be bounded by O(1)N^{2+4p_0}(100MR_k)^4(O(1)B_3B_5M^5ε_k + O(1)B_3δ′_k)² ≤ O(1)B_3²B_5²M^9R_k^7ε_k²". [IMG] D3RV S2, D3V V1. Balaban controls the reset term by a sup bound, not by cancellation.

122II-7. pp. 379–380 (PDF page 26), (1.73)–(1.75): |T′_k(X,(U,J))F| = |T′_k(X,(U,0))e^σF| ≤ (T′_k(X,(U,0))1) sup e^{|σ|}|F|; |T′_k(X,(U,J))1| ≥ T′_k(X,(U,0))e^{−2|σ|} ≥ (T′_k 1)e^{−2 sup|σ|}; |(T′_k(X,(U,J))1)^{−1}T′_k(X,(U,J))F| ≤ e^{3 sup|σ|} sup|F|. Justification: "All the expressions ... for the configuration U, are real, and the exponential density in the integral is positive." p. 380: normalization constants O(log g_j^{−2}) per site; χ^c_j(P_j) gives exp(−γ_0(1/2g_j²)(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|). [IMG] D3V V4, V8. The D3 draft merged (1.73) and (1.75) into one line: true, but not verbatim.

122II-8. p. 381 (PDF page 27): the factor exp(−(1/4)g_m^{−2}B_3^{−2}(1/2)ε_m²) "for some m satisfying j − N ≤ m ≤ j" is bounded by exp(−(1/8)B_3^{−2}(1+β_0)^{−2}A_0²p_0²(g_j)); and exp(−γ_0 g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0 4(1+β_0)^{−2}A_1²p_1²(g_j)). [IMG] DPV Step 5.

122II-9. pp. 382–383: "|V_1(b) − 1| < 6(100MR_{j−N+1})²ε ≤ 6(100M(L + 1)N^{β_0}R_j)²ε"; (1.78) "(100M(L + 1)N^{β_0}R_j)^{d+2}". [IMG] SWEEP §6 O.

122II-10. pp. 385–387 (PDF 31–33), (1.85)–(1.89): "2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1 + β_0)^{−1} p_0(g_{j+1})"; (1.88) "≤ κ_{j+1}(Z) − 2(1+β_0)^{−1}p_0(g_{j+1}) + O(1)3(100M)^d R_{j+1}^{d+2} ≤ κ_{j+1}(Z) for p_0 large and γ small enough"; (1.89) "T_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k))". [IMG] DPV Step 4, SWEEP §6.

122II-11. p. 389: "−2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(1/4)p_0(g_k)" with β_0 = 1/7. [IMG] DPV Step 5, SWEEP §1.

---

## Entries flagged as MISREAD in some draft (correct reading)

1. CMP 119 (2.24), p. 259: print is 1/g²_{j−1}(x) = 1/g²_j(x) + β_j(g_{j−1})φ_j(x). SOURCES.md had the sign reversed; the OCR text layer shows "+" with swapped indices. (119-6)
2. CMP 109 (0.20), p. 256: print is 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k). R2 quoted it with k and k+1 swapped and invented a "sign conflict" (V2). (109-7)
3. CMP 122 I p. 192 factor: (1+β_0)²(k−j)^{β_0}, not (1+β_0)^{2(k−j)β_0}. (122I-5)
4. δ′_j (CMP 122 I p. 183): δ′_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, p_1 < p_0; not g_j^{1/4}. (122I-3)
5. CMP 109 (4.18): 0 ≤ β ≤ β_0 < 1, not 0 < β < 1. (109-26)
6. CMP 109 (0.29): prefactor is O(1), not E_0·O(1). (109-10)
7. CMP 109 (0.3): printed |n_μ| ≤ (L−1)/2; OCR "L − 1/2" is OCR noise. (109-2)
8. Page slips: CMP 99p (3.35) is p. 396; CMP 102v (11) is p. 279; CMP 102v "exactly one fixed point" is p. 286, not "p. 10". (99p-1, 102v-1, 102v-2)
9. CMP 119 Theorem 1 cites "(I.0.33)"; no such equation exists, it means (0.31). Also CMP 122 II Theorem 1 cites "(0.31) [II]"; it is in [I]. These are Balaban's own reference slips. (119-1, 122II-1)
10. D3 draft merged (1.73) and (1.75) into a single e^{3 sup|σ|} line: true but not verbatim. (122II-7)

## Needs verification (frequently used, no verifier-checked quote)

1. CMP 109 Theorem 2 (p. 259), full sentence: "Let d = 4, G = SU(2), and let γ be a sufficiently small positive constant, then for a sufficiently small positive g there exists a bare coupling constant g_0 = g_0(ε, g) such that the sequence of the effective coupling constants g_k is contained in the interval ]0, γ], and g_K = g. Moreover, there exist constants β, β′, 0 < β ≤ β′, such that g_k satisfy the inequality …(0.31). A proof of this theorem, based on perturbative calculations, will be given in a separate paper, where more precise asymptotic behavior will be proved." Only the hypotheses start and (0.31) are image-confirmed (SWEEP). The closing sentence is not.
2. CMP 109 p. 260: "The restriction to the group SU(2) is superficial." Used for the SU(N) claims. No verifier checked it. T2PV Point 6 notes SU(N) is checked nowhere else.
3. CMP 122 II p. 355: the sentence "This is the main result of the whole sequence of papers of the present author …", the "very awkward and long" sentence, and eq. (0.1) "χ · exp[−A(U_k) − E_−|T_η|] ≤ ρ_k ≤ exp[E_+|T_η|]". SV and B4V confirm Theorem 1 and the "not been published yet" sentence at the level of THEOREM2.md; no verifier transcribed these independently from the page image.
4. CMP 109 p. 298: "The dependence on g_{j−1} is important and it determines main properties of the renormalization group equations." HHV says two p. 298 quotes match the image but names neither; this sentence may be one of them.
5. CMP 109 (4.37)/(5.1), p. 291–292: the definition Π^{(j)}(b,b′) = lim_{T→Z⁴} δ²/δB(b)δB(b′) E^{(j)}(U_j(exp iB))|_{B=0}. Only (4.38)–(4.44) discussion is TXT-checked (HHV); (5.42) is checked.
6. CMP 109 (1.3)–(1.5) formulas, (0.24)–(0.25) formulas, CMP 98 (11), (14), (15) formulas, and CMP 96 (2.136), CMP 99p Theorems 3.1 and 3.12, CMP 102v Theorem 1 (8): locations are verified, the equation text was not transcribed by a verifier. The (15) text in LEMMAS.md comes from the anchor pass only.
7. CMP 116 main results (the cluster-expansion theorem and its constants): the T2 route cites CMP 116 for uniform C^m bounds on E^{(j)}. No theorem statement from CMP 116 is verified; only p. 3 (116-1, 116-2) and (1.34).
8. CMP 119 (2.42) bounds and (2.28) full wording; CMP 119 "Similar inequalities hold for other constants" (α_{0,j}, α_{1,j}): definitions not located (SWEEP).
9. CMP 109 (2.12) and "(2.23)" in SV §6(d): the SV text is ambiguous between CMP 109 (0.23) and CMP 119 (2.23). Resolve before quoting.
10. CMP 109 p. 256: "L odd" and the scale statement "k = K is the unit lattice" are quoted in THEOREM2.md §2 with p. 256; B4V and T2PV place "L odd, positive integer > 11" on pp. 251–252 / OCR line 124. Page for the lattice statement not checked.
11. CMP 109 Sect. 3 and the (3.34)–(3.54) estimates and the claim (5.44) constant: only p. 280 and the Sect. 4 items above are quoted.
12. CMP 122 I and II: the 1989 Theorem 1 bound lists in Sect. 2 [III] (constants A_0, A_1, B_3, B_5, γ_0 = 1/2) are used by the D′ sweep; only the specific comparisons in 122I-3…8 and 122II-3…11 were read.
