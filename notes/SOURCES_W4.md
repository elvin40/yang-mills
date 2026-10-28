IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_W4 — hypothesis (W4): holomorphy of one Balaban RG step in its input activities

Status: complete (2026-10-27). W4 for the regular step G: proved given Balaban's conditions (C1)–(C5) with E_0ε_1 → ρε_1. W4 for the R operation at radius 2E_0: open (local radius only, §6.2). Ledger §8.

Hypothesis (W4), as used in SOURCES_D2.md §6.3, SOURCES_D2_VERIFY.md item 5, SOURCES_D3.md, SOURCES_D3W8.md:
one RG step maps input activities (E_k(X,U), R-terms, B-terms) to output activities holomorphically on a ball of radius 2E_0 in Balaban's norms, so Cauchy estimates in auxiliary variables apply.

## 1. Where the input activities enter one step (CMP 116, read in full) [V]

Notation. Paper I = CMP 109; "(I.3.34)" = CMP 109 eq. (3.34). Inputs = the localized terms E^{(j)}(X,·), j ≤ k, of E_k, plus (later) R- and B-terms.

1.1 Linear stage (CMP 116 Sect. 1, Lemma 1). Verbatim (p. 9):
 "Lemma 1. The second expression in the fluctuation field action in (1.2.13) is represented as the sum
  E_k(U_k(exp iB′V(U))) − E_k(U_k(V(U))) = Σ_{Y∈D_k} V′_k(Y, U_{k+1}, B). (1.33)
 For each term in the sum there exists a function V′_k(Y,U,J,B), defined and analytic on the space
  U^c_{k+1}(Y,(1+β)α_0,(1+β)α_1,α_0) × {B : |B| < ε_1 g_k^{−1} on Y}, (1.34) ...
 There exist absolute constants C_1, C_2, q, for which
  |V′_k(Y,U,J,B)| ≤ E_0 ε_1 C_1 M^q exp C_2κ_1 exp(−(1−2δ)κ d_k(Y)). (1.36)"
Structure. V′_k(Y) is built from E_k by (a) substituting a field expression into the argument of E_k(X,·) and (b) the s-localization (1.10) with Cauchy in s(Δ) on circles |s(Δ)| = e^{κ_1} (p. 6–7). Both operations act on the argument (fields, propagators), not on the value of E_k. So the map {E^{(j)}(X)} ↦ V′_k(Y) is LINEAR. The bound (1.36) is the operator bound of this linear map with ‖E‖ = E_0; for general input it reads ‖E‖ ε_1 C_1 M^q e^{C_2κ_1} e^{−(1−2δ)κd_k(Y)} (each step of (1.24)–(1.29) is linear in the E-bound; (1.29) verbatim: "|Σ(1.23)| ≤ E_0 ε_1 O(M^4) exp O(1)κ_1 exp(−½κ_1 d_k(Y))").

1.2 Nonlinear stage (CMP 116 Sect. 2). The fluctuation integral is ∫dμ_{C^{(k)}}(B) χ_k exp(Σ_Y V_k(Y,B)), V_k = V′_k + (input-independent terms from F^{(k)}, I.(1.41)–(1.43)). Mayer expansion (2.1):
 "= Σ_{D⊂D_k} Π_{Y∈D} ∫dt(Y) ∫dμ_{C^{(k)}}(B) χ_k exp[Σ_Y t(Y)V_k(Y,B)] Π_{Y∈D} V_k(Y,B)."
Then χ_k decomposition (2.3), conditioning (2.5)–(2.6), s-localization (2.8), giving activities H(Z) = Σ_{Z_0⊂Z} H(Z,Z_0) (2.9), polymer gas (2.11), and the exponentiation (verbatim (2.12)–(2.13)):
 "E^{(k+1)} = Σ_n (1/n!) Σ_{(Z_1,…,Z_n): ∪Z_i = X} ρ^T(Z_1,…,Z_n) H(Z_1)⋯H(Z_n)", ρ^T = Σ_{G∈C_n} Π_{(i,j)∈G}(ζ(Z_i,Z_j) − 1).
The t(Y)-integrals of V_k are converted by Cauchy into complex τ(Y) on circles fixed by (2.18) [V, page image p. 16]:
 "1/|τ(Y)| = E_0 ε_1 C_1 α_4^{−1} M^q exp C_2κ_1 exp(−(1−3δ)κ d_k(Y)). (2.18)"
so each term (2.14) contains exp[Σ_{Y∈D} τ(Y)V_k(Y,B)] Π V-free Cauchy kernels. The input enters H(Z) only through V_k inside this exponential.

## 2. The small-field step in CMP 109 Sect. 2–3: what depends on the inputs [V]

2.1 Definition of the output (CMP 109 p. 268, verbatim): "The integral in (2.12) defines the new term E^{(k+1)} in the inductive definition of the action A_{k+1} by the formula
  E^{(k+1)}(g_k, U_{k+1}) = log ∫dμ_{C^{(k)}}(B) χ_k exp[F^{(k)}(g_k, U_{k+1}, B) + {…}]. (2.13)"
The curly bracket is (I.(2.10)) E_k(U_k(exp iB′V^{(k)})) − E_k(U_k(V^{(k)})) (normalized). Everything else is input-independent:
 - Background V^{(k)}, U_{k+1}, the operators H_k, D, C, h, the change of variables (2.4)–(2.11): built from the Wilson action A and the averaging Q only (pp. 265–268). E_k does not enter them.
 - Gaussian measure dμ_{C^{(k)}}, C^{(k)} = (C*Δ^{(k)}C)^{−1}: depends on U_{k+1} only.
 - Gauge fixing: "G(V′) = G(B′)" (2.5), a fixed function of B′.
 - Characteristic function, verbatim (2.9): "χ_k = Π_b χ({|B′(b)| < ε_1})". ε_1 is a fixed constant. χ_k is a function of the integration variable only.
 So the non-analytic objects (χ_k, and the smooth cut-off functions ζ_□ of (3.2)) are fixed functions of B and of the background. They never depend on the input activities. They multiply an expression that is analytic in the inputs; integration against them preserves analyticity (dominated convergence, §4).
2.2 How E_k enters the bracket (pp. 270–273). Each term is E^{(j)}(X, ·) evaluated at a field-dependent configuration: (3.3)–(3.4) (partition of unity and t_□-interpolation of the field), substitution (3.10) "U′ = exp iξA U_{k+1}, J′ = …", and the t_□-derivative written as a Cauchy integral, verbatim (3.15): "−(1/2πi)∮_{|t_□|=r} dt_□/t_□² E^{(j)}(X, …, …)", with r fixed by "r max{|δH_j|_X, …} = ¼α_2" and the condition (3.14) "|A|, |∇_ξA|, |∇_ξ*A|, |ΔA| < α_2 on X". All radii (α_2, r, ε_1) are fixed by the fields and constants, not by E. Each operation is a linear map E^{(j)}(X,·) ↦ (term), bounded in sup norm: "(3.17) … ≤ E_0 exp(−κd_j(X)) 6α_2^{−1} …" — the E-dependence of the bound is the factor E_0 only.
2.3 Consequence [proved]. The bracket {…} = Σ_Y V′_k(Y, B) is a bounded LINEAR function of the input collection I = {E^{(j)}(X,·)} in the norm ‖I‖ := sup_{j,X} sup_{(U,J)∈U^c_j(X,α_0,α_1)} |E^{(j)}(X,U,J)| e^{κd_j(X)} (CMP 109 (1.18)). Linear and bounded ⇒ entire (holomorphic on the whole Banach space). Bound: |V′_k(Y,U,J,B)| ≤ ‖I‖ ε_1 C_1 M^q e^{C_2κ_1} e^{−(1−2δ)κd_k(Y)} (CMP 116 (1.36) with E_0 → ‖I‖).
Caveat [check]: the "cancellations described at the end of Sect. 1.4" (CMP 116 p. 1) move the relevant (second-order) part of the E-contribution into the β_k renormalization. These are Taylor coefficients in A of E^{(j)}(X, exp iξA U), hence again linear in E. The subtracted number β_{k+1}(g_k) comes from the whole-lattice theory; if it is computed from the same E-inputs it is linear in them (a fixed localized Taylor coefficient); if it is a fixed number it is constant. Either way: affine in I.

## 3. The step in CMP 119 Sect. 3 (with R- and B-inputs) [V]

3.1 Decomposition (CMP 119 pp. 270–272). Inputs: Ē_k (= E_k plus the R^{(j)} with j < k_1, merged because they share the Euclidean covariance), R̃_k = Σ_{j ≥ k_1} R^{(j)}, B_k. Verbatim: "Introduce now auxiliary parameters s, t, the parameter t multiplying the expressions B_k, …, s multiplying R̃_k". The log of the fluctuation integral becomes (p. 271): "the integral over t of the expectation value of the boundary terms … the integral over s of the expectation value of the R-terms … the logarithm of the fluctuation field integral involving the regular terms of the effective action only". So the output is
  ∫_0^1 dt ⟨B-terms⟩_{s=1,t} + ∫_0^1 ds ⟨R̃-terms⟩_{s,t=0} + log ∫ dμ χ^{(k)} exp[… + {Ē_k(fluct.) − Ē_k}].
The input enters (a) linearly as the integrand of ⟨·⟩ and (b) inside the exponential of the measure, multiplied by s or t. Same pattern as §1.2.
3.2 Regular part (3.28)–(3.42). The last logarithm is interpolated in t g_k (3.30): log ∫ = log[z^{(k)}∫…] + ∫_0^1 dt ⟨d/dt(…)⟩_t, where (3.31) the t-derivative is "⟨V′_k(tg_k,A), CA⟩", and the determinant term (3.34)–(3.36) depends on U_{k+1} only. Verbatim (p. 272): "the last logarithm, is formally given by the same formula as the term E^{(k+1)} in [I] [see (2.12), (2.13)], but the integral is restricted to Λ_{k+1}".
3.3 Ratios removed by the cluster expansion (pp. 277–278). The denominator is "represented as exp E^{(k+1)}(Λ_{k+1})" with E^{(k+1)} given by the exponentiated polymer series (= CMP 116 (2.12)–(2.13); CMP 119 cites it as (I.7.12)–(I.7.13)). The numerator is (3.44) "Σ_{{Z_0,…,Z_n}} H′(Z_0)H(Z_1)…H(Z_n)", and verbatim (3.45):
  "[the expectation value in (3.37)] = Σ_{Z_0∋b} H′(Z_0) exp[E^{(k+1)}(Λ_{k+1}, Z_0) − E^{(k+1)}(Λ_{k+1})]."
So no division by a denominator survives: each expectation is a sum of (activity H′ linear in one input term) × exp(difference of two convergent polymer series). "The factor H′(Z_0) … satisfies the same bound as the other factors."
3.4 Field cut-offs. χ^{(k)} (and its t-version χ_t^{(k)} in (3.32)) are products of characteristic functions of the fluctuation field with fixed constants; the domains Ω_j, Λ_j, S_j are fixed before the step (they are determined by the large-field sequences, i.e. by the field configuration, CMP 119 Sect. 2, not by the activities). The analyticity spaces (2.28) "α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}" and (3.43) are field domains. None of these depends on the input activities.

## 4. Theorem W4 for the regular step G [proved, given Balaban's convergence chain with E_0 → ρ]

4.1 Input space. 𝔅 := collections I = {I^{(j)}(X, ·)}, j ≤ k, X ∈ D_j, each I^{(j)}(X,·) a bounded analytic function of (U,J)|_X on U^c_j(X, α_{0,j}, α_{1,j}) (CMP 109 (1.18); CMP 119 (2.28) for the large-field version). Norm ‖I‖ := sup_{j,X} sup_{(U,J)} |I^{(j)}(X,U,J)| e^{κd_j(X)}. 𝔅 is a complex Banach space (uniform limits of analytic functions are analytic). Gauge-invariant collections form a closed subspace. Ball B_ρ := {‖I‖ < ρ}. D3W8 uses ρ = 2E_0. The ball "radius 2E_0 around the actual input" (‖I_act‖ ≤ E_0) lies in B_{3E_0}. The proof works for any ρ = cE_0 with c a fixed number; only constants change.
Holomorphy used. Only scalar statements are used downstream: for fixed I_0, I_1 ∈ 𝔅, fixed output slot (X, (U,J)), the function s ↦ G(I_0 + sI_1)(X,(U,J)) is holomorphic on {s : ‖I_0 + sI_1‖ < ρ}. With a uniform bound this is also Fréchet holomorphy of G into the weighted sup space (Graves–Taylor–Hille–Zorn plus "locally bounded and holomorphic for a separating family of functionals ⇒ holomorphic", Arendt–Nikolski 2000) [lit, not re-verified; not load-bearing].

4.2 Step A (linear stage) [proved]. I ↦ V′_k(Y,·,B; I) is complex-linear with |V′_k(Y; I)| ≤ ‖I‖ ε_1 K_1 e^{−(1−2δ)κd_k(Y)}, K_1 := C_1M^q e^{C_2κ_1}. Reason: §1.1 and §2.2. Every operation (substitution of fixed field maps (3.10), Cauchy integrals in t_□ and s(Δ) on fixed circles, sums over X controlled by (1.26)) is linear in I, and every bound in the chain (3.17) → (1.24) → (1.29) → (1.36) carries E_0 as a single linear factor. The sums over X converge absolutely, uniformly on B_ρ. The domain conditions on the substituted fields ((3.14): "< α_2"; ε_1) involve fields only.

4.3 Step B (activities H(Z)) [proved, given the chain]. Choose the Cauchy circles (2.18) with E_0 replaced by ρ:
  1/|τ(Y)| = ρ ε_1 K_1 α_4^{−1} e^{−(1−3δ)κd_k(Y)}.
The circle is fixed (independent of I); the Cauchy formula for t(Y)-derivatives is an identity for every I, so (2.14) represents the D-term for all I ∈ 𝔅. In (2.14) the integrand is (I-independent measurable factors: χ_{k,Y_0}, χ^c_{k,P}, Gaussian densities, Cauchy kernels) × exp[Σ_{Y∈D} τ(Y)V_k(Y,B; I)], with V_k = V′_k(I) + (I-independent). By Step A the exponent is affine in I, so the integrand is entire in I for each fixed (τ, σ, B, X). Domination: for ‖I‖ ≤ ρ, |τ(Y)V′_k(Y)| obeys Balaban's bound with α_4 (that is what (2.18) is chosen for), so (2.19)–(2.20) hold verbatim, and (2.23)–(2.25) give an I-independent integrable majorant. Holomorphic integrand + locally uniform integrable majorant ⇒ the integral is holomorphic in s along every complex line (Fubini + Morera). H(Z; I) = Σ_{Z_0,D,P}(2.14) converges uniformly on B_ρ by (2.28)–(2.37), whose bounds use only the majorant. Uniform limit of holomorphic ⇒ holomorphic (Weierstrass). Bound: Lemma 3 (2.38) with E_0 → ρ:
  |H(Z; I)| ≤ C_3(ρ) ε_1 exp(−(1−8δ)½Lκd_{k+1}(Z)),  C_3(ρ) = 2(L+2)^4 O(1)·2ρ·C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}.

4.4 Step C (the logarithm) [proved, given the chain]. G(I)(X) = (2.13) = Σ_n (1/n!) Σ_{∪Z_i = X} ρ^T(Z_1,…,Z_n) Π H(Z_i; I). Each term is a finite product of holomorphic functions. By (2.39)–(2.41) with C_3 → C_3(ρ) the series converges absolutely and uniformly on B_ρ ("we can repeat all the considerations and bounds of the paper [26], for κ sufficiently large, and ε_1 sufficiently small", p. 21). So G(·)(X) is holomorphic on B_ρ with
  |G(I)(X,(U,J))| ≤ O(1)C_3(ρ)ε_1 exp(−(1−10δ)½Lκd_{k+1}(X)).
The logarithm needs no separate argument: in finite volume the identity log(1 + Σ Π H) = (Ursell series) holds wherever the Ursell series converges absolutely (both sides agree for small activities and are analytic in the activities on the polydisc of convergence). So the partition function equals exp(convergent series) ≠ 0 on B_ρ; no zero of the "denominator" can occur there. The input-independent term log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1) (CMP 116 p. 21) is constant in I.

4.5 Large-field version (CMP 119 Sect. 3) [reduced to Balaban's sketch]. Inputs Ē_k (incl. merged R′), R̃_k, B_k; output pieces (3.26)–(3.47). (a) t-interpolation (3.30): log ∫ = log ∫|_{t=0} + ∫_0^1 dt ⟨d/dt⟩_t; valid for complex I because by (3.45) each ⟨·⟩_t is Σ_{Z_0} H′(Z_0) exp[E(Λ,Z_0) − E(Λ)] with the denominator = exp E(Λ) ≠ 0 (4.4). (b) H′(Z_0) has one factor linear in I and the structure of (2.14): holomorphic, same bound (p. 277–278 verbatim: "Although different, it satisfies the same bound as the other factors"). (c) exp of a uniformly convergent holomorphic series is holomorphic. (d) ∫_0^1 ds, ∫_0^1 dt of holomorphic integrands with uniform bounds are holomorphic. (e) The B_k-, R̃_k-inputs enter linearly and inside the exponent multiplied by t, s, exactly as V_k in 4.3. Balaban states the large-field chain only as "we repeat all the considerations of Sect. 3.7 [I], with minor changes" (p. 275), so 4.5 inherits that level of detail.

## 5. The convergence conditions that fix the uniform radius [V, page images CMP 116 pp. 16, 18, 19, 20, 21]

Verbatim, in order of use (CMP 116 Sect. 2):
 (C1) p. 16, (2.18): "1/|τ(Y)| = E_0ε_1C_1α_4^{−1}M^q exp C_2κ_1 exp(−(1−3δ)κd_k(Y))." "We assume that ⅛(κ_1−1) ≥ (1−3δ)κ, C_3 ≤ E_0C_1, and q ≥ 8."
 (C2) p. 18, before (2.28): "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1".
 (C3) p. 19: "denoting ε_2 = 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 … We have used the assumption ε_2 ≤ 1".
 (C4) p. 20: "Assuming that 2(L+2)^4O(1)ε_2 exp 5κ ≤ 1"; "We assume that (LM)^4α_0, (LM)^4α_1, (LM)^4α_4, (LM)^4γ_2 are bounded by a constant independent of M, for example by 1." "We define the constant C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1."
 (C5) p. 21: "(2.39) … To the above sum we can repeat all the considerations and bounds of the paper [26], for κ sufficiently large, and ε_1 sufficiently small." "Next, we assume that O(1)C_3ε_1 ≤ ½E_0. In fact this assumption is unessential, because the constant C_3ε_1 is small anyway".
Field-side conditions (no E_0): CMP 116 (1.21) "if e^{32κ_1}ε_1 is smaller than an absolute constant"; "4B_0C_1e^{16κ_1}ε_1 ≤ ½α_2" (p. 7); CMP 109 (3.14) "< α_2", "ε_1 is so small that H_j(B(t)) satisfies (3.14) with ⅓α_2".

Reading. E_0 enters only through the products E_0ε_1 in (C1)–(C4); (C5) is homogeneous in E_0 (C_3 ∝ E_0), so it is a condition on ε_1 alone. ε_1 is the last constant chosen ("ε_1 sufficiently small"). The order of choice in CMP 116 is: κ, κ_1, M, α's, γ_2, then ε_1, then E_0 by the log Z^{(k)} term (p. 21: "We define ½E_0 as equal to this constant").
Substitution E_0 → ρ = cE_0. (C1)–(C4) become c·(Balaban's product) ≤ 1, i.e. Balaban's conditions with ε_1 replaced by cε_1. (C5) is unchanged. So: Theorem W4 holds on B_ρ for ρ = cE_0 provided ε_1 ≤ ε_1^{Bal}/c. This is the precise reduction: uniform radius ρ ⇔ (C2)–(C4) with E_0ε_1 → ρε_1. For c = 2 (D3W8) or c = 3 (ball of radius 2E_0 around the actual inputs) the cost is a factor 2 or 3 in ε_1. No condition on M, κ, or g changes. [reduced to (C1)–(C5), proved given them]
Circularity check [proved]. E_0 is defined from log Z^{(k)} (input-independent) and does not depend on ε_1, so shrinking ε_1 does not move E_0. But ε_1 also fixes the small-field set (χ_k, (2.9)) and the field domain; a smaller ε_1 changes Balaban's large-field threshold. In the small-field step this only shrinks the integration domain; in the full theory it is a different (still admissible) choice of Balaban's constant. Output size on B_ρ: |G(I)(X)| ≤ O(1)C_3(ρ)ε_1 e^{−(1−10δ)½Lκd_{k+1}(X)} with C_3(ρ) = cC_3, so by (C5) sup_{B_ρ}|G(I)(X)| ≤ (c/2)E_0 e^{−(1−10δ)½Lκd_{k+1}(X)}. This is the uniform sup used in §7.
Where the factor 2 in Balaban's "2E_0" comes from is not stated in the text [open, cosmetic]; it does not affect the reduction.

## 6. The R operation and the subtractions

6.1 Vacuum subtraction [proved]. R^{(j)}(X,U) ↦ R^{(j)}(X,U) − R^{(j)}(X,1) (CMP 119 (2.30)) and E ↦ E − E(1): evaluation at U = 1 is a bounded linear functional (|E(X,1)| ≤ sup), so the map is complex-linear with norm ≤ 2. Coupling subtraction −β_{k+1}A: β_{k+1}(g_k) is a number from the whole-lattice small-field theory (D3W8 §2.1, D3R (V3)); as a map of the step's inputs it is constant, or, if one defines it from the same inputs, a bounded linear functional of the output (a localized Taylor coefficient). Affine either way, hence holomorphic.

6.2 The R operation itself [NOT holomorphic on B_ρ by any argument found; local radius only]. Verbatim CMP 122 I p. 176: "We will prove that the densities are positive, and the inegration domains in the integrals above are nonempty, hence the denominators are positive, and the operation R is well defined." p. 177: the denominators are "the parts localized in neighborhoods of the domains Z′, so they do not depend on the large field regions Z″, and they are determined by small field effective actions only." CMP 122 II p. 358: lower bound "exp(−O(1)|Λ|) = exp(−O(M^4))" for the denominator (1.2), Λ ⊂ a cube of size 100M; region condition I p. 177 "(i) it is contained in a cube of the size 100MR_k".
 The R output is (log of) numerator/denominator, then polymer-expanded and exponentiated (II (1.90)–(1.98)). A denominator D(I) = ∫ (positive density) e^{Σ_{X∩Y≠∅} I(X)} is NOT linear in I. For complex I with ‖I − I_real‖ ≤ ρ′ the exponent shifts by σ with |σ| ≤ ρ′·O(1)N(Y), N(Y) := number of scale-k cubes in the domain Y (per cube Σ_X e^{−κd(X)} = O(1), CMP 116 (1.26)). Lemma D3.1 (SOURCES_D3.md (iv)) gives |D(I)| ≥ ½D(I_real) for ρ′ ≤ c/N(Y), N(Y) ≤ (100MR_k)^4. So R is holomorphic in its inputs on a ball of radius ≍ (100MR_k)^{−4} around the real inputs, not on B_{2E_0}. For ‖I − I_real‖ of order E_0 the exponent shift is extensive in |Y| and the denominator can vanish in principle; no Balaban estimate excludes it. [open; and probably false as stated for radius 2E_0]
 Consequence for the consumers. D2 §6.3, D3R Lemma F1, and D3W8 Lemma F2′ apply (W4) only to the regular-step map G (pure E-inputs plus merged R′-inputs, which enter G as inputs, not through R). None of them needs R to be holomorphic at radius 2E_0. The fallback D3R §3.3 / D3W8 route (b) interpolates through R; it uses the local radius above (its own condition |σ| ≤ ½, D3R line 125), consistent with 6.2.

## 7. Cauchy estimates (what D2 §6.3 and D3W8 use) [proved, given §4–5]

Let F(I) := G(I)(X,(U,J)) for a fixed output slot. On B_ρ, |F| ≤ S_X := (c/2)E_0 e^{−κ′d_{k+1}(X)}, κ′ = (1−10δ)½Lκ (§5).
 (a) Directional derivative. For ‖I_0‖ < ρ, I_1 ∈ 𝔅: |DF(I_0)[I_1]| ≤ S_X ‖I_1‖/(ρ − ‖I_0‖). Proof: s ↦ F(I_0 + sI_1) is holomorphic for |s| < (ρ − ‖I_0‖)/‖I_1‖; Cauchy on that disc.
 (b) Higher derivatives. |D^nF(I_0)[I_1,…,I_1]| ≤ n! S_X (‖I_1‖/(ρ − ‖I_0‖))^n.
 (c) Schwarz form (D3W8 F2′). If h(s) := F(I_p + sI_R) − F(I_p), ‖I_p‖ ≤ E_0, S := (ρ − E_0)/‖I_R‖, then |h(1)| ≤ 2S_X/S for S ≥ 1. With ρ = 2E_0: S = E_0/‖I_R‖, as D3W8 uses. D3W8's sharper sup 4ε′E_0 for h needs (Eps) (the G_1 = G − G(0) bound with the factor ε′); W4 supplies holomorphy only.
 (d) D2 §6.3 form. I(t) = I(c) + t(I(f) − I(c)) admissible for |t| ≤ R; then |out(f) − out(c)| ≤ (2/R) sup_{|t|≤R}|out(I(t))|. This is (a) with I_0 = I(c), I_1 = I(f) − I(c), ρ − ‖I_0‖ ≥ E_0. Caveat [reduced]: D2 §6.3 also interpolates the vertices J, 𝒱, R_3 of F^{(k)}. These enter the exponent of the same Gaussian integral linearly in their coefficients, so §4.3 applies if the interpolated vertices obey Balaban's vertex bounds (the "second order polynomial in B with coefficients O(g_k)" of CMP 109 p. 269) with constants at most doubled, so that the quadratic-form majorant (2.20)–(2.23) keeps α_5 small. Not checked against CMP 109 Sects. 4–5 line by line.

## 8. Ledger

Proved:
 - The input activities enter one small-field step only through V′_k = (bounded complex-linear map of I) (§1.1, §2.3, §4.2). Background field, measure, covariance, gauge fixing, χ_k (2.9), the partition of unity ζ_□, the Cauchy circles (t_□, s(Δ), σ(Δ)) and the large-field regions (CMP 122 I p. 177 (i)–(ii)) are input-independent (§2.1, §3.4).
 - Given Balaban's chain with E_0 → ρ: H(Z; I) and G(I)(X) are holomorphic on B_ρ with uniform bounds (§4.3–4.4). The logarithm is the Ursell series; the partition function is exp(convergent series) ≠ 0 on B_ρ (§4.4).
 - Vacuum and coupling subtractions are affine in the inputs (§6.1).
 - Cauchy and Schwarz estimates in the form D2 §6.3 and D3W8 F2′ use (§7).
Reduced to quoted Balaban conditions:
 - Uniform radius ρ = cE_0 ⇔ CMP 116 (C2)–(C4) with E_0ε_1 replaced by ρε_1, (C1) with the circle (2.18) taken at ρ, (C5) unchanged. Cost: ε_1 → ε_1/c. No change to M, κ, κ_1, α's, g (§5).
 - Large-field version (CMP 119 Sect. 3, (3.26)–(3.47)): same structure, inherits Balaban's sketch level "we repeat all the considerations of Sect. 3.7 [I], with minor changes" (§4.5).
 - D2 §6.3 vertex interpolation (J, 𝒱, R_3): covered by the same argument if the interpolated vertices obey Balaban's vertex bounds with doubled constants; not checked line by line (§7(d)).
Open:
 - Holomorphy of the R operation (CMP 122) at radius 2E_0. Only a local radius ≍ (100MR_k)^{−4} around real inputs follows (Lemma D3.1). Not needed by D2 §6.3, D3R F1, D3W8 F2′; the fallback route (b) already uses the local radius (§6.2).
 - Origin of the factor 2 in Balaban's "2E_0" in (C2)–(C4) (cosmetic).
 - Fréchet (Banach-valued) holomorphy cites Arendt–Nikolski [lit, unverified]; all downstream uses are scalar, so not load-bearing (§4.1).
Change to the consumers' ledgers (for the caller, files not edited): D3W8 line 98 "(W4) [open in general]" can become "[proved for G, given CMP 116 (C1)–(C5) with ε_1 → ε_1/2; large-field version at Balaban's sketch level]". D2 §6.3 status unchanged except the vertex caveat §7(d). D3R line 175 "W4: analyticity of a step and of R": split — step: reduced; R at 2E_0: open, not needed.
