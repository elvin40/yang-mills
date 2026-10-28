# Balaban's unpublished Theorem 2: the precise open sub-theorem

Anchored 2026-10-27 on balaban/1987_cmp109_rg_approach_I.pdf (CMP 109) and balaban/1989_cmp122_large_field_renormalization_II.pdf (CMP 122). Page numbers are printed pages.

## 1. What Balaban proved and what he assumed (verbatim)

CMP 122 II (1989), p. 355, Theorem 1: "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." Then: "This is the main result of the whole sequence of papers of the present author on non-Abelian gauge field theories. Theorem 2 of [I] allows us to remove the assumption on the effective coupling constants in the above theorem, because this assumption follows from the basic inequality (0.31) [II], which is the result of Theorem 2. The proof of Theorem 2, which is based on second order perturbative calculations, is very awkward and long in the context of the renormalization group approach to lattice gauge field theories, and has not been published yet, so we have Theorem 1 with the assumption."

Consequence stated there, eq. (0.1) (corrected from the page image, BALABAN_EXCERPTS_CHECK.md): χ_k exp[−(1/g_k²)A(U_k) − E_−|T_η|] ≤ ρ_k ≤ exp E_+|T_η|, constants independent of k, T_η, U_k. And p. 356: "Theorem 1 is the basis for many other applications, for example, for an analysis of expectation values of physical observables, like loop variables, averaged loop variables, etc. These problems are very important for construction of the four-dimensional gauge field theories, and they deserve detailed analysis and further publication."

CMP 109 (1987), p. 259, Theorem 2 (verbatim): "Let d = 4, G = SU(2), and let γ be a sufficiently small positive constant, then for a sufficiently small positive g there exists a bare coupling constant g_0 = g_0(ε, g) such that the sequence of the effective coupling constants g_k is contained in the interval ]0, γ], and g_K = g. Moreover, there exist constants β, β′, 0 < β ≤ β′, such that g_k satisfy the inequality

  1/g² + β log(L^k ε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^k ε)^{−1}.   (0.31)

A proof of this theorem, based on perturbative calculations, will be given in a separate paper, where more precise asymptotic behavior will be proved." (p. 260: "The restriction to the group SU(2) is superficial.")

Status of that separate paper: see reports/BALABAN_THM2_STATUS.md (lit check running at time of writing).

## 2. The objects, verbatim definitions

- Scales: ε = L^{−K}, lattices T^{(k)} of spacing L^k ε, k = 0,…,K; k = K is the unit lattice (p. 256). L odd, > 11.
- Wilson action A^ε(U) = Σ_p ε^{d−4}[1 − Re tr U(∂p)], normalized trace (0.2).
- Averaging (0.12), p. 254: Ū(c) = exp[ i Σ_{x∈B(c−)} L^{−d} (1/i) log U(c−,x)U([x,x′])U(x′,c+)U(−c) ] U(c).
- RG step (0.17)/(0.19), p. 255: A_{k+1}(g_{k+1},V) = log N_k^{−1} ∫ dU ∏_{c∈T^{(k+1)}} δ(Ū(c)V^{−1}(c)) χ_k exp[ −(1/g_k²) Σ_y Σ_{x∈B(y), x≠y} [1 − Re tr U(y,x)] + A_k(g_k,U) ], with the exponential gauge fixing (0.14) and the small-field characteristic function χ_k.
- Coupling recursion (0.18), (0.20): 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k)  [note the sign: 1/g_1² = 1/g_0² − β_1(g_0), p. 255]. So the coupling GROWS toward the infrared, and asymptotic freedom in this scheme means β_j > 0.
- Effective action (0.22)–(0.23): A_k(g_k,V) = −(1/g_k²) A^η(U_k(V)) + E_k(U_k(V)), E_k = Σ_{j=1}^k [ −β_j(g_{j−1}) A^η(U_k) + E^{(j)}(U_k) ], with E^{(j)} localized (0.24) and bounded by (0.25) |E^{(j)}(X,U)| ≤ E_0 exp(−κ d_j(X)); after extraction of β_j the remainders V^{(j)} satisfy (0.29) |V^{(j)}(X,U_k)| ≤ O(1)(L^j η)^{4+α} exp(−κ d_j(X)), which makes the sum (0.23) uniformly bounded (0.30).
- Vacuum polarization tensor (4.37)/(5.1), p. 291–292: Π^{(j)}(b,b′) = lim_{T→Z⁴} δ²/δB(b)δB(b′) E^{(j)}(U_j(exp iB))|_{B=0}.
- β-function (5.42), p. 297: β = −(∂²/∂p_μ∂p_ν) Π_{μν}(0) = Σ_x Π_{μν}(x) x_μ x_ν, μ ≠ ν, "the fundamental equality defining the β-function". p. 298: "we should write the superscript (j) at the tensor Π in the formula (5.42) defining the function β_j. We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants. The dependence on g_{j−1} is important and it determines main properties of the renormalization group equations."

So β_j is the second moment of the j-th step vacuum polarization tensor, extracted by Ward–Takahashi identities (Sect. 4) and Euclidean lattice symmetries (Sect. 5), and the RG equation is the discrete Callan–Symanzik equation (0.20).

## 3. Reduction of Theorem 2 to two statements

(T2-a) Uniform two-sided bounds. There are γ > 0 and 0 < β ≤ β′ such that for every j and every admissible history with all g_i ∈ ]0,γ]: β ≤ β_j(g_{j−1}) ≤ β′.

(T2-b) Shooting. Given (T2-a), continuity of g_0 ↦ (g_1,…,g_K) on the admissible set, and the target g ∈ ]0,γ], there is g_0(ε,g) with g_K = g, and (0.31) holds with the same β, β′.

(T2-b) is elementary: see Lemma D in LEMMAS.md. (T2-a) is the content. It splits further:

(T2-a1) One-loop positivity, uniformly in the step. Let β_j^{(0)} := lim_{g→0} β_j (the Gaussian/one-loop value of the second moment (5.42) in Balaban's scheme at step j, which depends on j through the fluctuation covariance of step j). Claim: there are 0 < β_0 ≤ β_0′ with β_0 ≤ β_j^{(0)} ≤ β_0′ for all j ≥ 1. Expectation (lore, unproved): β_j^{(0)} → β_∞^{(0)} = c_G · log L with c_G the continuum one-loop coefficient in the normalization of (0.2); for SU(2) with the normalized trace, c_G is fixed by matching (0.2) to (1/4g²)∫tr F² (to be computed, with the trace normalization tr 1 = 1 accounted for).

(T2-a2) Uniform remainder. β_j(g) − β_j^{(0)} = O(g²) uniformly in j, for g in a complex neighbourhood of ]0,γ]. This should follow from Balaban's analyticity and bounds on E^{(j)} (Sect. 3, (0.25), and CMP 116) via Cauchy estimates, because β_j is a second moment of a second derivative of E^{(j)}; it must be checked that the constants in (0.25) are uniform in g and that the g-dependence of E^{(j)} enters only through g_{j−1}² (p. 298 says the dependence on g_{j−1} "is important"). See Lemma E in LEMMAS.md for the trivial step from (T2-a1)+(T2-a2) to (T2-a).


## 3a. Sharpening from Balaban's inductive assumptions (verbatim, CMP 109 pp. 263–264)

"We assume that the function E^{(j)}(X, g_{j−1}, U, J) is defined and analytic on the space U^c_j(X, α_0, α_1), with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j). It depends on the configurations restricted to X, i.e. on (U,J)|_X. It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ. There exists a constant E_0 such that |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κ d_j(X)) (1.18) for M ≥ M(κ), γ sufficiently small, and for all configurations (U,J) ∈ U^c_j(X, α_0, α_1)."

And on the β-functions, defined by (1.20)–(1.22) as the second moment of the vacuum polarization tensor Π_{j+1,μν}(g_j, x) = lim_{T^{(j+1)} ↗ Z^d} of the second variation of E^{(j+1)}(g_j, U_{j+1}(exp iB)) at B = 0: "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives."

Consequence. Theorem 1 of CMP 109/122 is proved under these inductive assumptions, which include: β_{j+1}(·) ∈ C^∞([0,γ]) with sup_j sup_{[0,γ]} |β_{j+1}^{(m)}| ≤ C_m for every m. Hence (T2-a2) is already part of what Balaban proves inductively (modulo evenness, which only improves the constant). The whole content of Theorem 2 therefore reduces to

  (T2-a1′)  inf_j β_j(0) > 0 and sup_j β_j(0) < ∞,

i.e. uniform positivity of the ZERO-COUPLING (one-loop) value of the second moment (5.42)/(1.22) of the j-th vacuum polarization tensor in Balaban's scheme, after which Lemma E (with the C^1 bound in place of analyticity: |β_j(g) − β_j(0)| ≤ C_1 g) and Lemma D give Theorem 2 with β = β_0/2, β′ = β_0′ + β_0/2, γ ≤ β_0/(2C_1). Balaban's "sufficiently small g" is exactly g ≤ γ.

This is the sharpest public formulation of the gap I know of: Theorem 2 ⇔ (T2-a1′), given Balaban's Theorem 1. (T2-a1′) is a statement about a sequence of finite-dimensional Gaussian integrals, one per RG step, converging to a fixed-point value. It is the natural target for a numerical experiment (§5) and then for a proof.

## 4. How the O(3) template handles the same step (reports/O3_TEMPLATE.md, o3_continuum.txt §6)

Lemma 6.1 "Limiting kinetic increment": the limiting one-loop increment α_∞ = −log L/(2π) is NOT computed inside the block-spin scheme. It is identified by a doubling difference of a thermodynamic quantity: 4A_D(n) − A_D(2n) = −(3D(D−1)/4π) log n + O(1), where A_D(n) is the coefficient of b^{−1} in log Z_b on the torus of side n, computed independently in the companion paper [28, (6.18)]. Since the exact RG preserves Z, the sum of the increments over s steps must reproduce the log n coefficient; division by s and exponential convergence of the increments give α_∞. Then Prop. 6.2 is the shooting argument (continuity + bands [H_j/2, 2H_j]).

Yang–Mills analogue (proposed, not done): identify Σ_j β_j^{(0)} with the coefficient of the log n term in the one-loop free energy of lattice SU(N) Yang–Mills on a 4-torus of side n (doubling difference 16 F(n) − F(2n) at order g⁰ after the Gaussian determinant). Obstacle: the small-volume expansion of lattice Yang–Mills on T⁴ has flat-connection zero modes (Lüscher 1983, van Baal), so the one-loop free energy is not a plain Gaussian determinant. This is the exact point where "second order perturbative calculations" become "awkward and long".

## 5. Concrete next experiment (numerical, falsifiable, no new theory)

Compute β_j^{(0)} directly for a simplified Balaban-type block-spin scheme (SU(2), block factor L = 3 or 5, exponential gauge fixing (0.14), averaging (0.12)) on a finite lattice: expand the step map around the trivial background, compute the one-loop quadratic response to a slowly varying background B (the lattice vacuum polarization Π^{(j)}_{μν}(p) at small p), and read off β_j^{(0)} = −∂²Π_{12}/∂p_1∂p_2(0). Checks: (i) U(1) must give β = 0 at every step; (ii) SU(2) must give β_j^{(0)} > 0 and converge in j to a value proportional to log L with the one-loop coefficient b_0 = 22/3 in the matched normalization. A positive, stable result is numerical evidence for (T2-a1); a sign change or j-dependence that does not settle is evidence against the scheme as stated. Cost: days of careful lattice perturbation theory code, not hours.

## 6. Verdict on this step

Theorem 2 is a precisely stated, necessary, and (publicly) unproved input to Balaban's 4D theorem. Any complete existence proof along Balaban's route, including the one OpenAI reports, must contain a proof of it or an equivalent control of the running coupling. The template shows the shape such a proof takes (increment identification + shooting). It is the first open step on the ledger that is finite and checkable by computation.

## 7. Two refinements (2026-10-27, Claude; not yet verified)

(R1) Lemma D only needs partial sums. Its proof uses β ≤ β_i ≤ β′ only through Σ_{i=k+1}^{K} β_i ∈ [β(K−k), β′(K−k)] for all 0 ≤ k < K (admissibility uses u_k ≥ u_K, i.e. nonnegativity of the partial sums; the IVT uses the bounds at k = 0). So Theorem 2 follows from Balaban's inductive bounds plus

  (T2-a1″) for every k < K: β(K−k) ≤ Σ_{i=k+1}^{K} β_i(0) ≤ β′(K−k), with absolute 0 < β ≤ β′.

(T2-a1″) is implied by: the one-loop increments β_j(0) are bounded and converge to a limit β_∞ > 0 as j → ∞ with the finitely many early values positive, OR by Cesàro bounds plus individual positivity for the last steps. This is exactly the shape of the template's Lemma 6.1 ("exponential convergence of both increment sequences", limit identified by a doubling difference).

(R2) Universality route to β_∞. The exact RG composition of the first k steps integrates all fluctuation modes between spacing η and L^k η. At one loop, the coefficient of the marginal term A^η(U_k) after k steps is −1/g_0² + Σ_{j≤k} β_j(0), and it must agree, for a slowly varying background and up to a scheme constant, with the lattice one-loop background-field effective action (Hasenfratz–Hasenfratz 1980 type computation): coefficient of (1/4)∫tr F² equal to −1/g_0² + (b_0/(8π²)) log(L^k) + O(1), b_0 = 11N/3 in the standard normalization. Hence Σ_{j≤k} β_j(0) = (b_0/(8π²)) · k log L + O(1) uniformly in k [after fixing the normalization of (0.2), which uses the normalized trace tr 1 = 1, so for SU(2) the factor differs from the usual by the trace convention; to be computed]. This gives the Cesàro part of (T2-a1″) and identifies β_∞ = (b_0/(8π²)) log L in the matched normalization, PROVIDED the increments converge. Convergence of β_j(0) in j should follow from exponential convergence of the composed averaging operators and fluctuation covariances to their fixed-point forms (Balaban's propagator papers CMP 95, 96, 99 prove uniform regularity and decay; convergence as j → ∞ is not stated there and must be checked).

Honest status: (R1) is elementary and will be verified with Lemma D. (R2) is a plan; its two inputs (one-loop universality on the lattice in Balaban's coupling normalization; convergence of the one-loop increments) are each a real derivation.

(R3) Expected limit value in Balaban's normalization (my computation, to be verified). Balaban's action (0.2) uses the normalized trace tr̂ = (1/N)tr and weight 1/g_B². The standard Wilson action is (1/(2g²)) Σ_p Re tr(1 − U_p) with the ordinary trace, which has the continuum limit (1/(4g²))∫F^a_{μν}F^a_{μν} and one-loop running d(1/g²)/d log μ = b_0/(8π²), b_0 = 11N/3. Matching (1/g_B²)(1/N) = 1/(2g²) gives 1/g_B² = (N/2)/g², hence d(1/g_B²)/d log μ = (N/2) b_0/(8π²) = 11N²/(48π²). Per RG step toward the infrared by a factor L, (0.18) reads 1/g_{k+1}² = 1/g_k² − β_{k+1}, so

  β_∞ = (11 N² / 48π²) · log L;   SU(2): β_∞ = (11/12π²) log L ≈ 0.0929 · log L  (≈ 0.238 for L = 13).

So Theorem 2 is expected to hold with β, β′ bracketing 0.0929 log L for SU(2), and the inequality (0.31) is the statement 1/g_k² = 1/g² + (11/12π²)·log((L^k ε)^{−1})·(1 + o(1)) in Balaban's units.

## 8. The one-loop increment as an explicit finite-dimensional object (from CMP 109 (1.3)–(1.5), pp. 260–261; my reading, to verify)

Balaban writes the k-th action with the order-g⁰ terms explicit, (1.3):

  A_k(U_k) = −(1/g_k²) A(U_k) + Σ_{j=0}^{k−1} { −β_{j+1}(g_j) A(U_k) + [log Z^{(j)}(U_k) − log Z^{(j)}(1)] + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)] },

  Z^{(j)}(U_k) = ∫ dB δ(Q̃ B) exp[ −½ ⟨B, Δ^{(j)}(U_k) B⟩ ]   (1.4),

with ⟨B, Δ^{(j)}(U_k)B⟩ = ⟨H_{1,j}(U_k)B, Δ_1(U_k)H_{1,j}(U_k)B⟩ − 2⟨H_{1,j}(U_k)hC̃^{(2)}(Ū_k^j, B), J⟩ + G^{(2)}(B) (1.5): the Hessian of the action at the minimizer composed with the minimizer map H_{1,j}, the second-order term of the averaging constraint, and the gauge-fixing quadratic form. The δ(Q̃B) imposes the linearized averaging constraint (fluctuations average to zero).

Since E^{(j+1)}(g_j, ·) carries the higher orders, the ZERO-COUPLING increment is read off from the one-loop determinant: for a slowly varying background U = exp(iB) on the lattice of step j,

  log Z^{(j)}(exp iB) − log Z^{(j)}(1) = β_{j+1}(0) · A(exp iB) + (irrelevant terms satisfying (0.29)) + O(B³),

because by p. 292 the marginal term extracted from E^{(j+1)} by Ward identities is cancelled by the −β_{j+1}A term. Equivalently, with (1.22): β_{j+1}(0) = Σ_x Π^{(j+1)}_{μν}(0, x) x_μ x_ν for μ ≠ ν, where Π^{(j+1)}(0,·) is the second variation of log Z^{(j)}(exp iB) at B = 0 in the infinite-lattice limit.

Numerical recipe (the experiment of §5, made precise):
1. Fix G = SU(2), block factor L (3 for feasibility; Balaban needs odd L > 11 only for his constants), step index j (number of previous blockings), and a fine periodic lattice of side n = L^{j}·m.
2. Build the composed averaging Q^{(j)} (CMP 98 compositions of (0.12)), its linearization Q̃ at background V, the minimizer map H_{1,j}(V) (solution of the constrained quadratic problem, CMP 102 "variational problem"), the covariant Hessian Δ_1(V) of the Wilson action, and the gauge-fixing form from (0.14) with parameter α.
3. For backgrounds V = exp(iB) with B a constant abelian field strength F in a U(1) ⊂ SU(2) subgroup (quantized flux on the torus), compute D(F) := log det′ restricted to ker Q̃ of the quadratic form (1.5), minus its value at F = 0.
4. Fit D(F) = c_j · (lattice Maxwell energy of B) + O(F⁴) and read β_{j+1}(0) = c_j (sign fixed by (1.3): the term enters as +[log Z(U) − log Z(1)] and must cancel −β A).
5. Checks: U(1) gives D ≡ 0 (Hessian background-independent); c_j > 0 for SU(2); c_j → (11·4/48π²) log L ≈ 0.0929 log L as j grows (R3), in Balaban's normalized-trace units.

Size: n = 6, L = 3, j = 1 gives 6⁴·4·3 ≈ 15.6k real fluctuation variables; dense log-det is feasible on a laptop. j = 2 needs n ≥ 18 (≈1.3M variables): sparse/iterative methods or the Windows box. The computation is well-posed but is days of careful lattice-perturbation-theory code, with the background-dependent constraint and gauge fixing as the error-prone parts.

## 8a. Correction to (R3) (2026-10-27, from R2_TELESCOPING.md, verified in R2_VERIFY.md)

The standard Wilson action is (2N/g²) Σ_p [1 − (1/N) Re tr U_p], so Balaban's 1/g_B² = 2N/g², not N/(2g²). Hence β_∞ = (11N²/12π²) log L; SU(2): (11/3π²) log L ≈ 0.3715 log L (0.408 for L = 3, 0.953 for L = 13). The value 0.0929 log L above is 4× too small. Also: §8 check (5) "U(1) gives D ≡ 0" is wrong (numerics/NUMERICS.md §2); the printed sign of (0.20) agrees with (0.18)/(0.23) (R2_VERIFY.md); Lemma U1 of R2_TELESCOPING.md is false as stated on the periodic torus (the constant abelian field is a saddle there) and must be restated on the infinite lattice with the block constraint as IR cutoff.

## 9. Verification outcome for Lemmas D and E (LEMMAS_DE_VERIFY.md, 2026-10-27)
- Lemma D: first proof WRONG at the intermediate-value step (counterexample β ≡ 3/2, K = 1); corrected with a clamped flow on R and the interval [1/g² + βK, 1/g² + β′K]. Hidden hypotheses now explicit: continuity of β_{k+1} on the whole history cube; β_j taken in infinite volume so it is K-independent.
- Lemma E: constant wrong and analyticity-at-0 unattainable (large-field terms ~ exp(−c/g²)); replaced by the real bound |β_j(g) − β_j^{(0)}| ≤ C g², which is what Balaban's p. 264 assumption gives. β_j^{(0)} is now DEFINED as the step-j Gaussian one-loop coefficient (history-independent), not as a limit along the flow.
- Reduction (T2) ⇐ Balaban Theorem 1 inductive bounds + (T2-a1′) + Lemma E + Lemma D: judged formally complete with those hypotheses made explicit.
