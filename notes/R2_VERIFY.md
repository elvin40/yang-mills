IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# R2_VERIFY: independent check of R2_TELESCOPING.md

Written 2026-10-27 (Claude, Fable 5.1), independent of the R2 author. Sources opened: CMP 109 PDF pages 7–8, 10–13, 49–50 (printed 255–256, 258–261, 297–298) rendered as images; OCR text of CMP 109, 98, 95, 96, 99, 102 for the other quotes. Every derivation below is mine. Numerical checks were run in a scratch directory (deleted) with the project venv; the Hessian/averaging code of numerics/ym_oneloop.py was reused read-only.

## 0. Headline

- Endorsed value: β_∞ = (11N²/(12π²)) log L in Balaban's units; SU(2): (11/(3π²)) log L = 0.37151 log L (0.953 for L = 13, 0.408 for L = 3, 0.598 for L = 5). THEOREM2.md (R3) is wrong by the factor 4, as R2 says.
- Most important correction: Lemma U1 (Sect. 5.2 of R2) is false as stated. The constant abelian field is a saddle point, not a minimum, of the Wilson action on the periodic SU(2) 4-torus: the unconstrained gauge-fixed Hessian has 4q negative eigenvalues at ≈ −F/2 (measured: n = 6, q = 1: −0.0908 vs F/2 = 0.0873; n = 8, q = 1: −0.0502 vs 0.0491; q = 2 gives 8 modes at −0.187 and −0.103). The reduction identity (5.2) survives formally, but U1 must be restated before it can be proved.
- Second correction: the "sign conflict" V2 does not exist. The printed (0.20) is 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k), the same convention as (0.18) and (0.23). R2 transcribed (0.20) wrongly.
- Third correction (argument, not conclusion): in 2.3(ii) the loop phase is not independent of the staircase contours. It depends on the pair (Γ, Γ′). The family average is exactly linear in x − c_− because G(c_+, x′) is the translate of G(c_−, x). The conclusion Ū(U_0) = V_F is right.

## 1. Primary-source check of every quotation

CMP 109 (printed page = PDF page + 248):
- (0.2) p. 252 with "tr is the normalized trace, i.e. tr 1 = 1": verbatim correct.
- (0.4), (0.12) p. 253–254 and the sentence "This average has properties similar ... all results of the paper [12] are valid for it": correct.
- (0.14) p. 254, FP sentence p. 255, (0.17) p. 255 with weight 1/g_0² on both the gauge-fixing sum and A(U): correct (read from the PDF image).
- (0.18) p. 255, verbatim from the image: "1/g_0² = 1/g_1² + β_1(g_0), or 1/g_1² = 1/g_0² − β_1(g_0)". Text below: "(1/g_1²) − (1/g_0²) = (d(1/g²))_0 = −β_1(g_0) ... (d/ds)(1/g²) = −β(g), or (dg/ds) = 1/2 β(g) g³". Correct.
- (0.20) p. 256, verbatim from the image: "1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k)". R2 quotes it as "1/g_{k+1}² = 1/g_k² + β_{k+1}(g_k)". That is a misquote. The printed sign agrees with (0.18) and (0.23).
- (0.19) p. 255 with "where the constant N_k is given by the integral above with V = 1": correct.
- (0.21)–(0.23) p. 256: correct; (0.23) reads E_k(U_k) = Σ_{j=1}^k [−β_j(g_{j−1}) A^η(U_k) + E^{(j)}(U_k)].
- (0.31) p. 259: 1/g² + β log(L^kε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^kε)^{−1}. With g_K = g and L^Kε = 1 this says 1/g_k² = 1/g_K² + Σ_{j=k+1}^K β_j, so β_j > 0 is asymptotic freedom. Consistent with (0.18)/(0.20).
- p. 258 (marginal variable, "We define the function β_j(g_{j−1}) to be equal to the coefficient β"): correct.
- (1.1) p. 260, "exactly one regular, critical orbit ... minimal orbit": correct.
- (1.3), (1.4), (1.5) pp. 260–261 and "We have written explicitly terms of the order 0 in the coupling constants": correct, read from the image. (1.6) absorbs the log Z terms into E^{(j+1)}.
- p. 263 "constants independent of X and j"; p. 264 (1.20)–(1.22), "This limit exists by the localized representation (1.7)", and "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives": correct.
- (5.37), (5.38), (5.42), (5.43), (5.44) p. 297: correct. (5.44) is printed with exp(½δ_1|x−y|); R2's [sic] is justified (a negative exponent is intended). p. 298 "we should write the superscript (j) at the tensor Π in the formula (5.42)": correct.

CMP 98 (17–51): the "fundamental fact" sentence and "uniquely determined by all the conditions ... (77) for j = k − 1 and by (87)" are on p. 31; "from (42) we get (Ū^u)_c = u(c_−)Ū_c u^{−1}(c_+)" is on p. 24. Correct.

CMP 95 (17–40): Prop. 1.1 with (1.89) and "γ_0 independent of k, T, and depending on d only" p. 33; "bounded from below and above by positive constants independent of k and depending on d and a only" p. 32; Prop. 1.2 with (1.110) pp. 35–36. Correct.

CMP 96 (223–250): Prop. 2.5 p. 246, "derivatives of H_j up to third order" p. 246, Prop. 2.6 with (2.136) p. 247. Correct.

CMP 99 (389–434): regularity condition (3.35) is on p. 396 (R2 says 397; the theorem is on 397). Theorem 3.1 p. 397 and "All these inequalities are invariant with respect to gauge transformations of U": correct. Theorem 3.12 p. 423 and "best possible, decay rate ... positive, absolute constant depending on d and L only": correct. p. 428: "positive definite operator C*Δ_kC with a lower bound γ_0 > 0 independent of k and U. We have proved it in [4], Lemma 2.4, for operators with U = 1. Localizing ... we can prove it for C*Δ_kC with an arbitrary configuration U satisfying (3.35), (3.36) with Mα_0 sufficiently small": correct. Note the modal "we can prove it": the background-field lower bound is asserted, not proved, in CMP 99.

CMP 102 (277–309): "exactly one fixed point of the transformation" and "uniformly convergent sequence of successive approximations" are on printed p. 286 (R2's "p. 10" is the PDF page). Both are contraction-mapping statements at fixed k.

Search for convergence in k: grep of CMP 95, 96, 99, 102 for "fixed point", "converge", "limit", "k → ∞", "tends to". Every hit is a convergent Neumann/random-walk series or a contraction fixed point at fixed k. No statement about the limit k → ∞ of the operators or of the perfect actions. R2's item 8 stands.

## 2. Independent rederivations

### 2.1 Normalization (R2 Sect. 1.1, 1.3)

Continuum with tr T^aT^b = ½δ: S = (1/(2g²)) ∫ Σ_{μν} tr F² = (1/(4g²)) ∫ F^aF^a. Lattice: U_p = exp(i a² F_{μν} + O(a³)), Re tr(1 − e^{iX}) = ½ tr X² + O(X⁴). With one term per unoriented plaquette, Σ_p = Σ_x Σ_{μ<ν} = ½ Σ_x Σ_{μν}, so Σ_p Re tr(1 − U_p) = ¼ ∫ Σ_{μν} tr F². Hence S = (2/g²) Σ_p Re tr(1 − U_p) = (2N/g²) Σ_p [1 − (1/N) Re tr U_p], the textbook β = 2N/g² (4/g² for SU(2), 6/g² for SU(3)). Balaban's weight is (1/g_B²) Σ_p [1 − Re tr̂ U_p] with tr̂ = tr/N, so 1/g_B² = 2N/g². THEOREM2.md's "(1/(2g²)) Σ_p Re tr(1 − U_p)" is 4 times too small for single counting (it is right only if both orders of (μ,ν) and both orientations are summed). Confirmed.

Running: with β(g) = −b_0 g³/(16π²), d(1/g²)/d log μ = −2g^{−3} dg/d log μ = b_0/(8π²). One Balaban step lowers μ by the factor L, so 1/g_B² drops by 2N·(b_0/(8π²))·log L = (11N²/(12π²)) log L. SU(2): 11/(3π²) = 0.371511; × log 13 = 0.95291. SU(3): 99/(12π²) = 0.83590. Ratio to THEOREM2's 0.0929: 4.000. Confirmed.

Sign: (0.18)/(0.20)/(0.23)/(0.31) all say 1/g_{k+1}² = 1/g_k² − β_{k+1}, and 1/g_k² decreases toward the infrared; the standard running gives the same direction. So β_j(0) → +0.3715 log L is the expected positive limit. Confirmed.

Cross-check on (5.43): β·½ Σ_{x,μ,ν} tr(∂δB)(∂B) is the first variation of β·¼ Σ_{x,μ,ν} tr(∂B)² = β·½ Σ_p tr(∂B)_p² (ordered pairs count each plaquette twice). A(e^{iB}) = Σ_p [1 − Re tr̂ e^{i(∂B)_p}] = ½ Σ_p tr̂(∂B)_p² + O(B⁴). So β multiplies A in Balaban's own normalization. Confirmed.

### 2.2 b_0 by the constant-field heat kernel (R2 Sect. 1.2)

Quadratic action in background Feynman gauge: (1/g²) ∫ tr[−a D² a + 2i F_{μν}[a_μ, a_ν]] (I rederived the 4i → 2i bookkeeping: one 2i from the explicit commutator in F(B+a), one from [D_μ, D_ν] = iF after integrating the cross term by parts). Ghosts: (2/g²) ∫ tr c̄(−D²)c. Per charged pair of charge q in field f: Γ_1 = Tr log K_v − 2 Tr log K_s. Heat traces per volume: scalar qf/(16π² t sinh(qft)); vector times (2 + 2cosh 2qft); ghosts remove the 2. With x = qft, (x/sinh x)(2cosh 2x) = 2 + (11/3)x² + O(x⁴). Numerical check at x = 10⁻³: (f(x) − 2)/x² = 3.666667. So Γ_1 − Γ_1(0) = −(11/(48π²))(qf)² V ∫dt/t = −(11/(24π²))(qf)² V log(Λ/μ). Tree term f² tr h² V/g²; Σ_{α>0} q_α² = N tr h². Result 1/g²(μ) = 1/g²(Λ) − (11N/(24π²)) log(Λ/μ) = 1/g²(Λ) − (b_0/(8π²)) log(Λ/μ) with b_0 = 11N/3. The split 11/6 = 2 − 1/6 per spin-±1 polarization is right: 2cosh 2x contributes +4x²/2 = 2x² per polarization, x/sinh x contributes −x²/6. Confirmed. The IR cutoff treatment (sharp cutoff on t) is heuristic, but it affects only the constant, not the log coefficient.

### 2.3 One-loop determinant formula (R2 Sect. 2.4–2.5; NUMERICS.md §1 steps (i)–(v))

(i) Stationarity: for bond b in direction μ the gradient is −Re tr̂(iX Σ_{p∋b} U_p^{(b)}). For a constant abelian field the two plaquettes through b in each plane give e^{+iθh} + e^{−iθh} = 2cos(θh), Hermitian and commuting with h; tr(XC) is real for Hermitian X, C, so the gradient is zero. Independent of the twist and of the torus size. Equivalently J = D^*_{U_0} Im ∂U_0 is the lattice divergence of a constant 2-form in the abelian sector, which is zero (Im ∂U_0 itself is not zero). Confirmed; also NUMERICS reports |∇A| < 1e−15 and I measured 1.8e−16 at n = 8.

(ii) Coarea: ∫ dB δ(Q̃B) f = det(Q̃Q̃^T)^{−1/2} ∫_{ker Q̃} f. Standard.

(iii) FP step. Exact statement: the Haar measure on G^{bonds} near U_0 in coordinates (B_⊥, u) with U = (U_0 e^{iB_⊥})^u is dB_⊥ du det(D^†D)^{1/2} (1 + O(B)), because the orbit direction is Dλ and gauge transformations preserve the product Haar measure. The orbit volume is Vol(G_k), independent of F. So Z = Vol(G_k) det(D^†D)^{1/2} det(Δ|_{W∩N^⊥})^{−1/2} (2π)^{…}. Toy check: W = R², Δ = diag(1,0), D = c e_2: exact Z ∝ c = det(D^†D)^{1/2}. R2's Lie-algebra FP insertion gives det(D^†D) det((Δ + DD^†)|_W)^{−1/2}; by (iv) these agree.

(iv) det((Δ + DD^†)|_W) = det(Δ|_{W∩N^⊥}) det(D^†D): verified numerically on a random 9-dimensional example with a 2-dimensional N ⊂ W (relative error 9e−16).

(v) Bordered identity det(K|_{ker C}) = (−1)^m det[[K, C^T],[C, 0]]/det(CC^T): verified numerically (1.7e−15). Combining: the constrained Gaussian equals (2π)^{(n−m)/2}|det Bord|^{−1/2} with no det(Q̃Q̃^T) factor (checked: coarea route and bordered route agree to 9e−16). So the cancellation is exact and the final formula log Z = const + log det(D^†D) − ½ log|det Bord| is confirmed. R2's remark (b) is right: anyone computing det((Δ + DD^†)|_W) by an explicit basis must put the coarea factor back by hand.

(a) Ghost domain. For the composed k-step integrand the symmetry group before gauge fixing is G_k = {u: T → G, u = 1 on T^{(k)}}. Check that Balaban's k gauge-fixing factors fix exactly G_k: GF_j∘Ū^{(j)} is invariant under u iff u|_{T^{(j)}} is constant on level-(j+1) blocks; chaining j = 0..k−1 and u = 1 on T^{(k)} forces u ≡ 1. And ∫_{G_k} du Π_j exp(−GF_j(Ū^{(j)}(U^u))/g_j²) is U-independent (integrate level by level; each is Balaban's (0.15) constant z). So Balaban's composed gauge fixing and the candidate's linear gauge are both FP insertions over G_k and give the same exact Z. For NUMERICS.md (k = 1) "anchors" = T^{(1)} = T^{(k)}, so the code is consistent with the corrected rule. Confirmed.

Caveats kept: the J·C̃^{(2)} term of (1.5) is order g⁰ for a general background and drops only because J = 0 here; Haar Jacobian and δ-function nonlinearity enter at two loops. Both as R2 says.

### 2.4 "Reproduced exactly by the averaging" (R2 2.3(ii))

Claim: for a constant abelian field the block sum of the family-averaged loop logs in (0.4)/(0.12) is exactly zero. My argument: the loop Γ ∪ [x,x′] ∪ (−Γ′) ∪ (−c) has abelian phase = F × signed projected area. The area splits as (L ε)(ε n_ν) F_{μν} (the two μ-segments displaced by x − c_−) plus a(Γ) − a(Γ′), where a(·) is the signed area between a staircase and a fixed reference path. The second part is not zero for a given pair: it is nonzero whenever F has a component in a plane spanned by two directions in which n ≠ 0 (for c in direction 3 or 4 and F_{12}, and also for c in direction 1 or 2 when n_1, n_2 ≠ 0). Because G(c_+, x′) is the translate of G(c_−, x), the uniform double average of a(Γ) − a(Γ′) is exactly zero. So the family average is exactly L ε² Σ_ν F_{μν} n_ν(x) h, odd in n, and the sum over the centered block (odd L) vanishes. For (0.12) the Federbush average of commuting elements e^{iθ_Γ h} is e^{iθ̄ h} with θ̄ the mean (from (0.10)), so the same cancellation holds. Numerical test (U(1), F = 0.37, L = 5, d = 3, all permutation staircases, all x in the block, c in each of the 3 directions): per-pair loop phases spread by up to 2.96 rad; every family average equals ±F L n_⊥ to 1e−12; the block sums are −5e−15, −1e−14, 0. R2's sentence "the result is independent of the choice of staircase contour" is wrong; its conclusion is right. The coarse field is the straight-path transport U_0(c), a constant abelian field at spacing Lε with the same F and the same flux quantum q. Iterates. Confirmed, argument corrected.

(iii) Composed axial gauge: GF_j ≥ 0 and can be made 0 level by level with u ∈ G_k (level-j transformation constant on level-j blocks keeps lower levels at 0). At the representative, A is stationary (gauge invariance of (i)) and each GF_j is at its minimum, so the sum is stationary for any coefficients. Confirmed.

### 2.5 Exact composed form (2.1)

Iterating (0.19) and integrating each intermediate U_j against δ(Ū(U_{j−1})U_j^{−1}) with normalized Haar measure is exact. The composed averaging is Balaban's k-th order averaging (CMP 98 (88)–(91), "composition of k averaging operations"). Gauge structure as in 2.3(a) above. Confirmed.

### 2.6 Proposition 3.1 (telescoping)

Proof checked: insert δ(Q̃_1B − V_1), decompose B = H_1V_1 + B′ with Q̃_1B′ = 0; the cross term vanishes because ΔH_1V_1 ∈ im Q̃_1^T = (ker Q̃_1)^⊥ (Lagrange condition). Numerical check with random Δ (10×10), Q̃_1 (5×10), Q̃_2 (2×5), Δ_1 = (Q̃_1Δ^{−1}Q̃_1^T)^{−1}: both sides agree to machine precision. "Δ positive" can be weakened to "Δ positive on ker Q̃_1". The matching with Balaban's (1.5) needs one extra remark that R2 omits: the composed minimizer H_{1,j} is the minimizer of A alone, while Prop. 3.1 wants the Schur complement of A plus all lower-level gauge-fixing Hessians. These agree because the lower-level axial conditions can be met exactly on each gauge orbit (linearized: the map λ ↦ linearized axial condition of D_jλ is invertible), so the added gauge-fixing terms contribute zero to the constrained minimum. Confirmed, with this remark.

The β-cancellation (3.3): substituting 1/g_k² = 1/g_0² − Σ_{j≤k} β_j into (1.3) cancels the counterterms. Confirmed (trivial).

### 2.7 Proposition 5.1

For K − k ≥ m_0 = ⌈4R/c⌉: 2R ≤ c m_0/2 ≤ c(K−k)/2, so c(K−k)/2 ≤ Σ ≤ 3c(K−k)/2. Short windows need (a), (b), or (c) as stated. In (c), convergence to β_∞ > 0 plus finitely many positive early values gives inf β_i > 0 and sup β_i < ∞, so (c) reduces to (a); Cesàro then forces β_∞ = c. "β_*/1" is a typo for β_*. Confirmed.

### 2.8 Universality reduction (R2 Sect. 5.2–5.3) and Lemma U1

The identity (5.2) D(F) = D_{Wilson,n}(F) − D_{A_tree,n/L^k}(F) is a formal consequence of Prop. 3.1 with the coarse field integrated last, provided all three quantities are defined with the same treatment of the indefinite and zero modes of the coarse sector (toron zero modes at F = 0; Nielsen–Olesen modes at F ≠ 0). Those modes live in the coarse sector and cancel in the difference, which is why D(F) itself is a well-defined positive Gaussian (constrained Hessian > 0: NUMERICS measured 0.085 at n = 6, L = 3, q = 1).

Lemma U1 as written has three defects:
1. "the constant abelian field is the minimum of the Wilson action in the sector": false on the periodic SU(2) torus. Measured with the project's Hessian code and a full gauge fixing (λ on all sites): n = 6, q = 1: four eigenvalues −0.09079 (F/2 = 0.0873), then four zeros (constant Cartan shifts), then positive; n = 8, q = 1: four at −0.05024 (F/2 = 0.0491); n = 6, q = 2: eight at −0.1874; n = 8, q = 2: eight at −0.1026. These are the lattice Nielsen–Olesen modes: 2q Landau states times two for the real charged pair, eigenvalue ≈ −𝓕/4 with 𝓕 = 2F the field seen by the charge-1 adjoint component in the σ_3/2 convention. For SU(2) the flux Fε²n² = 2πq is not a conserved sector (π_1(SU(2)) = 0); V = 1 has lower action.
2. "twisted boundary conditions remove the toron zero modes": a 't Hooft twist changes the sector. With a single twist n_{12} ≠ 0 the minimum is a flat twist-eater, not the constant abelian field; only non-orthogonal twists (n_{12}n_{34} ≠ 0 mod N) force a constant-curvature minimum, and that one is self-dual in two planes, not a single F_{12}.
3. "lattice corrections analytic in F with F² coefficient log n + const": the 4q Nielsen–Olesen modes contribute 4q log|−F/2 + …| ≈ −8q log n at fixed q, which is linear in q, while A(V_F) ∝ q². So the log n coefficient of D_{Wilson,n}(F) is not proportional to A(V_F). The universal log coefficient could still be isolated from the q² part, but the lemma as stated does not say this.

A cleaner target that avoids the torus altogether: the infinite-lattice constrained determinant D(F) itself, with the UV cutoff ε and the IR cutoff supplied by the constraint at scale L^kε (where the constrained Hessian is positive for F(L^kε)² small). Universality is then the statement that the F²-coefficient per unit volume equals 2N(b_0/(8π²)) log L^k + O(1) uniformly in k. That is U1 and U2 combined, without zero modes or unstable modes.

Lemma U2 (uniform bound on c_k^{perf}): inputs quoted from CMP 95/96/99 are verbatim correct; the lemma is not proved. The CMP 99 p. 428 positivity for background fields is asserted ("we can prove it"), so even the uniform lower bound needed by U2 rests on an unproved sentence.

## 3. The six unverified points

- V1 (order g⁰ completeness of (1.3)): the Laplace expansion of one step gives, at order g⁰, exactly log Z^{(j)} − log Z^{(j)}(1) once (1.5) contains the J·C̃^{(2)} term and G^{(2)}; Haar Jacobian and δ-nonlinearity are O(g²); small-field cutoffs are O(e^{−c/g²}). Supported by the structure of the expansion and by Balaban's sentence; not an independent proof. Status: plausible, open.
- V2 (sign of (0.20)): resolved. No conflict; R2 misquoted (0.20). See Sect. 1.
- V3 (uniform-in-j bound on β_{j+1}): the sentence on p. 264 does not say "uniformly in j". The surrounding inductive assumptions declare α_0, α_1, γ absolute and E_0 a single constant for all j, so the uniform reading is the natural one. Not stated explicitly; not load-bearing in R2. Status: open, plausible.
- V4 (regime bound for positivity): (3.35) p. 396 and the p. 428 sentence exist as quoted. The constant-field version F(L^kε)² ≲ Mα_0 is the right reading of (3.35) with |A| ∼ F·(size) and |∇A| ∼ F. The bound itself is asserted by Balaban, not proved in CMP 99. Status: sourced, open.
- V5 (Nielsen–Olesen mode removed by the constraint): supported numerically at one size: unconstrained Hessian has four modes at −0.091 (n = 6, q = 1) while the constrained Hessian on ker Q̃ (L = 3) has smallest eigenvalue +0.085 (NUMERICS). Consistent with scale separation. Not a proof. Status: supported at n = 6, L = 3, open in general.
- V6 (Lemma U1 attribution): Hasenfratz–Hasenfratz 1980 is an infinite-volume background-field computation with an IR regulator, not a torus flux-sector determinant. U1 as stated is false (Sect. 2.8). Status: refuted as stated.

## 4. Grades for the 15 items (task claims 1–9, R2 points V1–V6)

| # | Item | Grade | Note |
|---|------|-------|------|
| 1 | 1/g_B² = 2N/g², β_∞ = (11N²/(12π²)) log L, SU(2) 0.3715 log L; THEOREM2 (R3) 4× too small | CONFIRMED | Rederived; numbers checked (0.371511; ×log 13 = 0.9529; ratio 4.000) |
| 2 | b_0 = 11N/3 from the constant-field heat kernel, 2 − 1/6 split, ghost subtraction, cross-check vs (5.43) | CONFIRMED | Series coefficient 11/3 checked numerically; (5.43) normalization checked |
| 3 | Determinant formula log Z = const + log det(D^†D) − ½ log|det B_F| with (a) ghost domain G_k, (b) exact det(Q̃Q̃^T) cancellation | CONFIRMED | Steps (i)–(v) rederived; identities checked to 1e−15; FP power of det(D^†D) checked on a toy |
| 4 | Constant abelian field: exact stationary point; reproduced exactly by (0.4)/(0.12) at every level; stationary with gauge fixing in composed axial gauge | CONFIRMED, argument CORRECTED | Per-pair loop phase is contour-dependent (spread 2.96 rad in the test); the family average is exactly linear in n; block sum = 0 for odd L, centered blocks |
| 5 | Exact composed form (2.1) of the k-step transformation | CONFIRMED | |
| 6 | Gaussian telescoping Prop. 3.1 | CONFIRMED | Numerical identity to machine precision; add the remark that lower-level gauge-fixing Hessians do not change the constrained minimum |
| 7 | Universality reduced to Lemmas U1, U2 | CORRECTED | Reduction identity (5.2) holds formally; U1 is false as stated (saddle point, 4q negative modes measured; twist and toron statements wrong); restate on the infinite lattice with the constraint as IR cutoff |
| 8 | Propagator papers contain no convergence statement in k | CONFIRMED | Grep of CMP 95, 96, 99, 102: only series convergence and fixed-k contraction fixed points |
| 9 | Prop. 5.1 Cesàro → windows | CONFIRMED | Typo β_*/1 |
| 10 | V1 order-g⁰ completeness of (1.3) | UNSUPPORTED (plausible) | Balaban's sentence plus Laplace-expansion bookkeeping; no proof |
| 11 | V2 printed sign of (0.20) | CORRECTED | Printed (0.20) is 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k); no conflict with (0.18)/(0.23) |
| 12 | V3 uniform-in-j bound | UNSUPPORTED (plausible) | Not stated explicitly on p. 264 |
| 13 | V4 regime bound F(L^kε)² ≲ Mα_0 | UNSUPPORTED (sourced) | CMP 99 p. 428 says "we can prove it"; constants untracked |
| 14 | V5 NO mode removed by the constraint | CONFIRMED at n = 6, L = 3 only | −0.091 unconstrained vs +0.085 constrained |
| 15 | V6 Lemma U1 attribution | CORRECTED | U1 false as stated; literature input is infinite-volume, not torus |

Mapping to R2's ledger: P1–P5, P7–P10 confirmed; P6 confirmed with the corrected averaging argument; Q1 (Maxwell coefficient = Σβ_j(0)) is consistent with (1.3), (5.42)–(5.43) as quoted and remains a plan; Q2 needs U1 restated; Q3 unchanged.

## 5. Consequences for the numerics

- Target for SU(2) slopes: c_j → 0.3715 log L (0.408 for L = 3, 0.598 for L = 5), as R2 says. THEOREM2.md §8 step 5 and NUMERICS.md §2's "(11/12π²) log L ≈ 0.10 for L = 3" use the old value; the correct universal part for L = 3 is 0.408, which is no longer small against the tadpole-type first-step term, so the separation argument in NUMERICS.md §2 should be redone with the corrected number.
- The constrained determinant is the right object (positive Hessian); any full-torus comparison (Lemma U1 route) must handle 4q negative modes and the F = 0 toron zero modes explicitly.
