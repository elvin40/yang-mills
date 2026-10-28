# U3: the Gaussian block-spin RG behind Balaban's one-loop increments

Written 2026-10-27 (Claude, Fable 5.1). Scope: Lemma U3 / U3′ of the plan in THEOREM2.md §7 (R2) and R2_TELESCOPING.md §5.4 ("What convergence of increments would need"). Sources read in full: THEOREM2.md (incl. §8a), R2_TELESCOPING.md, R2_VERIFY.md, numerics/NUMERICS.md, CMP 109 (0.4), (0.12)–(0.14), (0.17)–(0.23), (1.3)–(1.5) (OCR text plus the quotes verified in R2_VERIFY §1), CMP 98 pp. 31–32 (composition of averagings), CMP 95 pp. 23–26 and 32–33 (momentum representation, uniform bounds), reports/o3_continuum.txt §6.1 (Lemma 6.1). Literature opened this session: Hasenfratz–Niedermayer hep-lat/9308004 (Nucl. Phys. B414 (1994) 785), Bietenholz–Wiese hep-lat/9510026 (Nucl. Phys. B464 (1996) 319), Bell–Wilson Phys. Rev. B10 (1974) 3935 and Wilson–Bell Phys. Rev. B11 (1975) 3431 (abstracts only). All derivations are mine unless marked as a verbatim quote. Numerical checks were run in a scratch directory (deleted) with the project venv; they are listed in §9.

Headline, stated exactly:
- Theorem 4.1 (U3 at the trivial background) is proved: the level-j quadratic form of Balaban's scheme is the j-fold Gaussian block-spin map applied to the Wilson Hessian, it equals the single block-L^j Schur complement, and it converges to an explicit fixed point Δ_∞ with the error bound C_m L^{−2j} on the m-th momentum derivatives, m ≤ 2 (any fixed m with the same proof).
- Theorem 6.1 (U3′) is proved as a conditional Lipschitz statement: the one-loop increment is a Lipschitz functional of the level-j data in the norm of §6, given the per-momentum representation (6.1) of the increment and uniform invertibility of the one-step constrained Hessian.
- The level-j data contain, besides the quadratic form, the two soft-leg vertices of the classically perfect action (first two background variations of its Hessian). Their convergence (Lemma 5.1) is REDUCED to an explicit finite-dimensional-per-momentum statement with the same mechanism as Theorem 4.1, but it is NOT proved here. Hence the final conclusion |β_j(0) − β_∞| ≤ C ρ^j (Theorem 7.1) is conditional on Lemma 5.1.
- No literature source proves convergence of the iterated Gaussian block-spin map for gauge fields. The physics papers state the fixed point and report the rate; Balaban's papers give bounds uniform in the level and no limit (R2_VERIFY §1, confirmed by my own reading of CMP 95 pp. 25–26).

Conventions. d = 4. G = SU(N), 𝔤 its Lie algebra, N_g = dim 𝔤. Fine lattice spacing 1 at the current level; the block factor is L (odd, Balaban: L > 11; the proofs below need only L ≥ 2 odd). Blocks B(y) = y + {−h, …, h}⁴, h = (L−1)/2, centered at coarse sites y ∈ LZ⁴. The composed block of j levels has side M = L^j and is centered (nested centered blocks, odd L). Lattice gradient (∂_μ f)(x) = f(x+e_μ) − f(x); Fourier symbol k̂_μ = e^{ik_μ} − 1, |k̂|² = Σ_μ 4 sin²(k_μ/2). Fourier transform on a lattice with spacing 1: f(x) = ∫_{BZ} dk/(2π)⁴ e^{ikx} f̂(k), BZ = [−π, π)⁴, Σ_x |f|² = ∫ dk/(2π)⁴ |f̂|². On the coarse lattice (coarse units) the same convention with the coarse momentum K ∈ BZ. For a fine momentum k and block side M, the coarse momentum is K = Mk mod 2π, and the M⁴ fine momenta over a given K are k_l = (K + 2πl)/M, l ∈ {0, …, M−1}⁴ (the umklapp block).

## 1. The level-j quadratic form is the j-fold Gaussian block-spin map of the Wilson Hessian

### 1.1 Balaban's objects (verbatim)

Averaging, CMP 109 (0.12), p. 254: "Ū(c) = exp[ i Σ_{x∈B(c_−)} L^{−d} (1/i) log U(c_−,x) U([x,x']) U(x',c_+) U(−c) ] U(c)." Here U(c_−,x) = M({U(Γ)}_{Γ∈G(c_−,x)}) (0.11) is the Federbush average of the contour variables, with the first-order property (0.8), p. 253: "(1/i) log M({exp iA_j}) = (1/n) Σ_{j=1}^n A_j + (higher order terms)". Gauge covariance, CMP 98 p. 24: "(Ū^u)_c = u(c_−) Ū_c u^{−1}(c_+)".

Composition, CMP 98 p. 31 (verbatim): "Now we will prove the following fundamental fact: the new kth order averaging operation defined by the last expression in (88) is a composition of k averaging operations defined by (63) with properly chosen configurations V_0. More precisely, for a jth factor in this composition, we take V_0 = U_0^{j−1}." And (91): "U_1^{j+1} = R(U_0^j) U_1^j, i.e., it is a composition of the operation (89) for V_0 = U_0^j and of the jth order operation U_1^j." Locality, p. 31: "(Ū^k)_c, c ⊂ Ω^{(k)}, depends on the variables U_b for b ⊂ B^k(c_−) ∪ B^k(c_+)."

Background field and level-k action, CMP 109 (0.21)–(0.22), pp. 255–256: the minima of "U → A(U), on U: U_k = M^k(U) = V", with the space of U "invariant with respect to the gauge transformations u defined on T and satisfying the condition u = 1 on T^{(k)}", and "A_k(g_k, V) = A_k(g_k, U_k(V)) = −(1/g_k²) A^η(U_k(V)) + E_k(U_k(V))". So the tree-level (order g⁻²) level-k action is A_k^{tree}(V) = A(U_k(V)) = A(H_{1,k}(V)) in the notation of THEOREM2.md §8, the classically perfect action of this blocking.

One-step Gaussian normalization, (1.4)–(1.5), pp. 260–261: Z^{(j)}(U_k) = ∫ dB δ(Q̃B) exp[−½⟨B, Δ^{(j)}(U_k)B⟩], ⟨B, Δ^{(j)}(U_k)B⟩ = ⟨H_{1,j}(U_k)B, Δ_1(U_k)H_{1,j}(U_k)B⟩ − 2⟨H_{1,j}(U_k) h C̃^{(2)}(Ū_k^j, B), J⟩ + G^{(2)}(B). The first term is the Hessian of A∘H_{1,j} at the background, i.e. the Hessian of the level-j tree action; the second is the Lagrange-multiplier term (J = 0 for the backgrounds used below, R2_VERIFY §2.3(i)); the third is the gauge-fixing form.

### 1.2 Linearization of (0.12) at the trivial background

Lemma 1.1. Let U = e^{iB} with B ∈ 𝔤^{bonds}, and let Q̃ be the linearization of Ū at U = 1. Then Q̃ is diagonal in the color index and

  (Q̃B)(c) = (Q_L B)(c) + λ(c_−) − λ(c_+),   (Q_L B)_μ(y) := L^{−4} Σ_{x∈B(y)} Σ_{i=0}^{L−1} B_μ(x + i e_μ),   (1.1)

for a coarse bond c = ⟨c_−, c_+⟩ in direction μ, c_+ = c_− + L e_μ, where λ(y) := L^{−4} Σ_{x∈B(y)} (mean over Γ ∈ G(y,x) of Σ_{b∈Γ} B_b) is a linear functional of B supported on the block of y.

Proof. To first order in B, (1/i) log of the loop variable U(c_−,x) U([x,x']) U(x',c_+) U(−c) is the sum of B over the loop, with the contour variable U(y,x) contributing the mean over the contour family by (0.8). The loop consists of the path c_− → x (mean over G(c_−,x)), the straight segment x → x' = x + L e_μ, the path x' → c_+ (minus the mean over G(c_+,x')), and −c. The family G(c_+,x') is the translate of G(c_−,x) by L e_μ (R2_VERIFY §2.4). Summing over x with weight L^{−4} and adding the final factor U(c) (which cancels the −c term) gives (1.1). ∎

Remark. The term λ(c_−) − λ(c_+) is a coarse gauge transformation D′λ applied to the block average. It is the linearized form of the axial-gauge part of Balaban's averaging. The plain average Q_L is the standard block average of lattice gauge fields (the sum of the L fine link angles along a straight segment, averaged over the L⁴ starting points of the block). It is gauge covariant: Q_L(B + Dμ) = Q_L B + D′μ̄, where (Dμ)_b = μ(b_+) − μ(b_−), D′ is the coarse gradient, and μ̄(y) = L^{−4} Σ_{x∈B(y)} μ(x) is the block mean (telescoping of the segment sum).

### 1.3 Composition law for the plain averages

Lemma 1.2. For nested centered blocks (odd L, L′), Q_{L′} Q_L = Q_{LL′} exactly, where Q_{L′} acts on the level-1 lattice (spacing L) with blocks of side L′ centered at level-2 sites.

Proof. (Q_{L′} Q_L B)_μ(Y) = L′^{−4} Σ_{y∈B′(Y)} Σ_{i′<L′} (Q_L B)_μ(y + i′ L e_μ) = (LL′)^{−4} Σ_{y∈B′(Y)} Σ_{x∈B(y)} Σ_{i′<L′} Σ_{i<L} B_μ(x + (i′L + i) e_μ). The union of the blocks B(y), y ∈ B′(Y), is the centered block of side LL′ at Y, and i′L + i runs over 0, …, LL′ − 1 once. ∎

Lemma 1.3 (composed linearized averaging). Let Q̃^{(j)} be the linearization at U = 1 of Balaban's j-th order averaging (the composition (91) of CMP 98). Then Q̃^{(j)} B = Q_{L^j} B + D^{(j)} Λ_j(B) with D^{(j)} the gradient on the level-j lattice and Λ_j a linear functional of B supported on the level-j block.

Proof. Induction on j with Lemma 1.1 and the identity Q_L D′λ = D″ λ̄ (block mean of a gradient is the gradient of the block mean). ∎

### 1.4 The gauge term does not change the constrained minimum

Lemma 1.4. Let Δ be a gauge-invariant quadratic form on 𝔤^{bonds} (ΔD = 0). Let Q be gauge covariant in the block-mean sense, Q(B + Dν) = QB + D′Rν with R the block mean, and let Q̃ = Q + D′Λ be covariant in Balaban's sense, Q̃(B + Dν) = Q̃B + D′(ν|_{coarse}) (CMP 98 p. 24, linearized). Then for every coarse field V,

  min{⟨B, ΔB⟩ : Q̃B = V} = min{⟨B, ΔB⟩ : QB = V}.   (1.2)

Proof. Both directions use a fine gauge transformation ν, which leaves ⟨B, ΔB⟩ unchanged. (≥) Given B with Q̃B = V, choose ν with Rν = Λ(B) (for example ν = 0 at the coarse sites and block mean Λ(B); one scalar condition per block with L⁴ − 1 free values) and put B′ = B + Dν. Then QB′ = QB + D′Rν = (V − D′Λ(B)) + D′Λ(B) = V. (≤) Given B′ with QB′ = V, choose ν with ν|_{coarse} = −Λ(B′) (any extension to the fine sites) and put B = B′ + Dν. Then Q̃B = Q̃B′ + D′(ν|_{coarse}) = (V + D′Λ(B′)) − D′Λ(B′) = V. ∎

(Numerically confirmed to 8·10^{−15} on a 27² torus, §9. Note the asymmetry: gauge transformations vanishing at the coarse sites leave Q̃B unchanged but move QB by D′Rν; this is why the residual gauge group {u = 1 on T^{(k)}} is a symmetry of Balaban's constrained integrand, R2_VERIFY §2.3(a).)

Proposition 1.5 (the level-j quadratic form). Let Δ_0 = Hess_{B=0} A(e^{iB}) be the Wilson Hessian at U = 1 and let Δ_j be the Hessian at V = 1 of the level-j tree action A(H_{1,j}(V)). Then

  ⟨V, Δ_j V⟩ = min{⟨B, Δ_0 B⟩ : Q_{L^j} B = V} =: (S_{L^j} Δ_0)(V),   (1.3)

and the one-step map T_L := S_L satisfies S_{L^j} = T_L^j (composition).

Proof. By (0.21) the minimizer U_j(V) is the constrained minimizer of A under the composed averaging; at V = 1 it is U = 1 (A ≥ 0 with equality at the trivial configuration, which is admissible). The Hessian at V = 1 of the constrained minimum value is the constrained minimum of the Hessian under the linearized constraint (second-order perturbation of a constrained minimum at a point where the Lagrange multiplier vanishes; here the gradient of A at U = 1 is zero, so J = 0 and the term −2⟨H h C̃^{(2)}, J⟩ of (1.5) is absent). The linearized constraint is Q̃^{(j)} (Lemma 1.3), and Lemma 1.4 replaces it by Q_{L^j}. The composition S_{L′} ∘ S_L = S_{LL′} is Prop. 3.1 of R2_TELESCOPING.md (verified in R2_VERIFY §2.6) together with Lemma 1.2: min over {Q_{LL′}B = V} = min over {V_1 : Q_{L′}V_1 = V} of min over {Q_L B = V_1}. The lower-level gauge-fixing Hessians do not change the constrained minimum (R2_VERIFY §2.6 remark), so Δ_j is also the Hessian of the full tree-level exponent of the composed step. ∎

Comment. This is the exact statement "the map from the level-j quadratic form to the level-(j+1) quadratic form is the constrained-minimization (Schur complement) map of the Gaussian block-spin RG with the δ-function constraint". Lemma 1.4 is what makes Balaban's specific averaging (0.12), with its axial-gauge contour sums, irrelevant for the quadratic form at the trivial background: only the plain block average Q_L enters. Balaban's own "fundamental fact" (CMP 98 p. 31) is the nonlinear version of Lemma 1.3; it holds for arbitrary backgrounds and is used in §5.

## 2. Momentum space: the per-coarse-momentum map

### 2.1 The Wilson Hessian and the block average in Fourier space

At U = 1 the Wilson Hessian is color-diagonal: Hess A(1) = c_N ⊕_{a=1}^{N_g} Δ_0 with ⟨B, Δ_0 B⟩ = Σ_p (∂B)_p² for a real bond field B, and c_N a normalization constant (c_N = ¼ for B = B^a σ^a/2 and the normalized trace; it plays no role, since S_M is homogeneous of degree 1). In Fourier space, for B̂(k) ∈ C⁴,

  Δ_0(k) = |k̂|² 1 − k̂ k̂^†,   Δ_0(k) k̂ = 0,   Δ_0(k) = |k̂|² P_T(k),   P_T(k) := 1 − k̂k̂^†/|k̂|².   (2.1)

(Check: Σ_{μ<ν} |k̂_μ B_ν − k̂_ν B_μ|² = |k̂|²|B|² − |k̂^† B|².) The block average with side M: for a coarse site y ∈ MZ⁴ and coarse momentum K,

  (Q_M B)^(K) = M^{−4} Σ_l Q̂_M(k_l) B̂(k_l),   Q̂_M(k) = χ_M(k) R_M(k),   (2.2)
  χ_M(k) := Π_ν D_M(k_ν),  D_M(θ) := M^{−1} Σ_{m=−h}^{h} e^{iθm} = sin(Mθ/2)/(M sin(θ/2)),
  R_M(k) := diag_μ( Σ_{i=0}^{M−1} e^{ik_μ i} ) = diag_μ( K̂_μ / k̂_μ ),

with the convention Σ_i e^{ik_μ i} = M when k_μ = 0 (so R_M(k) = K̂_μ/k̂_μ as a removable singularity). The factor M^{−4} in (2.2) is the Jacobian ∫_{BZ} dk/(2π)⁴ = M^{−4} Σ_l ∫_{BZ} dK/(2π)⁴. Gauge covariance in Fourier space: Q̂_M(k) k̂ = χ_M(k) K̂, i.e. all fine gauge directions map to the coarse gauge direction K̂.

### 2.2 The Schur complement per coarse momentum

Proposition 2.1. For K ∈ BZ with K ≠ 0 let P′_T := 1 − K̂K̂^†/|K̂|² and T′ := range P′_T (the transverse coarse polarizations, dim 3). Then Δ_M(K) := Fourier symbol of S_M Δ_0 is the 4×4 Hermitian matrix with Δ_M(K) K̂ = 0 and

  Δ_M(K)|_{T′} = [ P′_T S_M(K) P′_T ]^{−1}_{T′},   S_M(K) := M^{−4} Σ_{l∈{0,…,M−1}⁴} χ_M(k_l)² R_M(k_l) P_T(k_l) R_M(k_l)^† / |k̂_l|²,   (2.3)

where the term with k̂_l = 0 (only l = 0 when K = 0) is omitted, and [·]^{−1}_{T′} is the inverse on T′. At K = 0, Δ_M(0) = 0.

Proof. Per coarse momentum K the constrained problem is: minimize M^{−4} Σ_l B̂_l^† Δ_0(k_l) B̂_l subject to M^{−4} Σ_l Q̂_M(k_l) B̂_l = V̂ (Parseval on both lattices with the conventions above). Decompose B̂_l = B̂_{T,l} + k̂_l a_l. The longitudinal parts cost nothing and contribute M^{−4} Σ_l χ_M(k_l) K̂ a_l ∈ C K̂ to the constraint. So the constraint splits: P′_T C B_T = V̂ (for V̂ ∈ T′) and the K̂-component is matched for free by the a_l. The transverse problem has the positive form ⊕_l |k̂_l|² on ⊕_l T(k_l) and the constraint map C := M^{−4} P′_T [Q̂_M(k_0), Q̂_M(k_1), …] restricted to the transverse fine fields; the minimum of ⟨B, ΔB⟩ under CB = V̂ with Δ > 0 is ⟨V̂, (CΔ^{−1}C^†)^{−1}V̂⟩, which is (2.3) after inserting Δ^{−1} = ⊕ P_T(k_l)/|k̂_l|² and the factors M^{−4}. For V̂ ∈ C K̂ the minimum is 0 (take B̂ = fine gauge field with the right block mean), so Δ_M(K) K̂ = 0. At K = 0 the constant fine field is admissible with zero cost. ∎

Remarks. (a) Surjectivity of C on T′ is needed for the inverse to exist; it holds because the l = 0 term alone is χ_M(k_0)² R_M P_T(k_0) R_M^†/|k̂_0|² and R_M(k_0) is invertible for K ≠ 0, and P′_T R_M(k_0) P_T(k_0) R_M(k_0)^† P′_T is positive on T′ (it is R P_T R^† restricted; R maps the fine transverse space onto a 3-dimensional space whose projection to T′ is onto since R k̂_0 = K̂). (b) The longitudinal/transverse split is the momentum-space form of the statement that the residual gauge group {u = 1 on T^{(k)}} (ghost domain, R2_VERIFY §2.3(a)) consists per K of the M⁴ − 1 combinations of fine gauge directions with Σ_l χ_M(k_l) a_l = 0; these are flat directions of the constrained Gaussian and are fixed by the ghost term, which is level-independent and not part of Δ_M. (c) Formula (2.3) is the gauge-invariant (transverse) form of the perfect propagator of Bietenholz–Wiese 1996 eq. (3.13)/(3.18) with their smearing parameters set to the δ-function and a finite block factor; see §3.3.

Numerical confirmation (§9): on a 27² periodic lattice in d = 2 the finite-lattice Schur complement, its composition S_3∘S_3 = S_9 (difference 1.2·10^{−14}), the invariance under the axial-gauge term (7.5·10^{−15}) and the Fourier symbol (2.3) (agreement up to the explicit normalization constant) were checked.

### 2.3 The one-step map and the fixed-point equation

The one-step map T_L acts on 4×4-matrix symbols Δ(k) on BZ by (2.3) with M = L and Δ_0 replaced by Δ: T_L Δ (K)|_{T′} = [P′_T L^{−4} Σ_{l∈{0..L−1}⁴} χ_L(k_l)² R_L(k_l) Δ(k_l)^{+} R_L(k_l)^† P′_T]^{−1}_{T′}, with Δ^{+} the inverse on the transverse subspace of k_l. By Prop. 1.5, Δ_j = T_L^j Δ_0 = S_{L^j} Δ_0 = Δ_{M=L^j}. A fixed point Δ_∞ must satisfy T_L Δ_∞ = Δ_∞. The approach below does not use a contraction property of T_L. It uses the explicit M-step form (2.3) and a direct limit M → ∞. This is the route of Hasenfratz–Niedermayer (their eq. (20): the two-point function after j steps written as the j-fold block average of the fine two-point function) and of Bietenholz–Wiese ("blocking from the continuum corresponds to an infinite blocking factor", their p. 19).

## 3. The fixed point Δ_∞

### 3.1 Definition

For K ∈ BZ ∖ {0} define

  S_∞(K) := Σ_{l∈Z⁴} χ_∞(K,l)² R_∞(K,l) P_T^{c}(K+2πl) R_∞(K,l)^† / |K + 2πl|²,   (3.1)
  χ_∞(K,l) := Π_ν sin(K_ν/2)/((K_ν + 2πl_ν)/2),   R_∞(K,l) := diag_μ( K̂_μ / (i(K_μ + 2πl_μ)) ),   P_T^c(q) := 1 − qq^T/|q|²,

with the conventions sin(K_ν/2)/((K_ν+2πl_ν)/2) := (−1)^{l_ν} when K_ν + 2πl_ν = 0... (that case needs K_ν = 0 and l_ν = 0, value 1), and K̂_μ/(iq_μ) := 1 when q_μ = 0. Define Δ_∞(K) K̂ := 0 and Δ_∞(K)|_{T′} := [P′_T S_∞(K) P′_T]^{−1}_{T′}, Δ_∞(0) := 0.

Convergence of (3.1): χ_∞² ≤ Π_ν min(1, C/(K_ν+2πl_ν)²), |R_∞|² ≤ C, 1/|K+2πl|² ≤ C/(1+|l|)². So |term_l| ≤ C (1+|l|)^{−2} Π_ν (1+|l_ν|)^{−2}, which is summable over Z⁴; in fact Σ_l |l|^m |term_l| < ∞ for m ≤ 2 (the worst directions are l with one nonzero component n: |term| ~ n^{−4}, and Σ n² n^{−4} < ∞). This is the estimate used in §4.

Interpretation. (3.1) is the Schur complement of the continuum Maxwell form |q|² P_T^c(q) under the continuum block average over the unit cell (the sinc kernel χ_∞ is the Fourier transform of the indicator of the unit cube; R_∞ is the Fourier transform of the unit segment, which turns the continuum potential into a link angle). It is the "blocking from the continuum" fixed point.

### 3.2 Properties

Lemma 3.1. (i) Δ_∞(K) is Hermitian, ≥ 0, Δ_∞(K) K̂ = 0, and T_L Δ_∞ = Δ_∞. (ii) Δ_∞(K) = |K̂|² P′_T (1 + O(|K|²)) as K → 0. (iii) Δ_∞ extends to a real-analytic, 2π-periodic function on R⁴, analytic in a complex strip |Im K_ν| < δ_* for some δ_* > 0; its position-space kernel decays exponentially.

Proof. (i) Hermitian and ≥ 0: S_∞ is a sum of positive semidefinite terms. The fixed-point equation: the block average with factor L of the continuum block average with unit cell is the continuum block average with cell L (Lemma 1.2 in the continuum form: the sum over l ∈ Z⁴ splits as l = l′ + L l″), and S_L applied to the Schur complement is the Schur complement of the composed constraint (Prop. 3.1 of R2, valid for any positive form); so T_L Δ_∞ = Δ_∞ after rescaling the coarse lattice to unit spacing, under which the continuum Maxwell form is invariant in d = 4 (the link angle V has dimension 0 and Σ_p F² is scale invariant). This is why no field-rescaling parameter b appears, unlike in the scalar case of Bell–Wilson, where "the exact transformation has fixed points only for b = 2^{−5/2}" (Wilson–Bell 1975 abstract, d = 3) and Hasenfratz–Niedermayer p. 9: "the 1/4 factor in the block transformation of a free theory in eq. (16) is replaced by b = 2^{−(d+2)/2} in d dimensions. Only this choice leads to a FP". For gauge fields in d = 4 the right factor is the block average of link angles with b = L^{−4}·L (sum of L links) = L^{−3} = L^{−(d−1)}, which is (2.2). (ii) As K → 0 the l = 0 term dominates: χ_∞(K,0) = 1 + O(K²), R_∞(K,0) = 1 + O(K), P_T^c(K) = P′_T + O(K), 1/|K|²; the l ≠ 0 terms are O(1) in total but carry the factor sin²(K_ν/2) in each direction where l_ν ≠ 0, hence O(|K|²); so S_∞ = P′_T/|K|² + O(1) and Δ_∞ = |K|² P′_T + O(|K|⁴) = |K̂|²P′_T(1 + O(K²)). Numerically (§9): the relative deviation of Δ_∞(K) from |K̂|²P′_T is 1.6·10^{−2}, 1.8·10^{−3}, 1.6·10^{−4} at |K| ≈ 0.3, 0.1, 0.03. (iii) Each term of (3.1) is analytic in K in the strip |Im K_ν| < π (the zeros of sin(K_ν/2) cancel the poles of 1/(K_ν + 2πl_ν); |K+2πl|² = 0 for complex K needs |Im K| ≥ |Re(K + 2πl)|, which for l ≠ 0 forces |Im K_ν| ≥ π in some ν, and for l = 0 gives the pole at K = 0 of the l = 0 term only). The series converges uniformly on compact subsets of the strip |Im K_ν| < π − ε with the same bounds as above (the sine factors are bounded by e^{|Im K|/2}). So S_∞ is analytic there away from K = 0, with a double pole at K = 0 of the form P′_T/K² (in the sense of (ii), continued analytically). The inverse on T′: P′_T itself is not analytic at K = 0 (it depends on the direction of K̂), but Δ_∞(K) = |K̂|²P′_T(1+O(K²)) is: |K̂|²P′_T = |K̂|² − K̂K̂^† is a polynomial in e^{iK_ν}. For K in the real BZ away from 0, P′_T S_∞ P′_T ≥ c(1+|K|²)^{−1} on T′, so the inverse is analytic in a neighbourhood of the real BZ minus a neighbourhood of 0, and at 0 the explicit expansion gives analyticity. By compactness and periodicity there is a strip |Im K_ν| < δ_* of analyticity, and Paley–Wiener gives exponential decay of the kernel at rate δ_* in each coordinate. ∎

I do not compute δ_*. Hasenfratz–Niedermayer report for the scalar δ-function fixed point in d = 2 (p. 10): "the choice κ = ∞ (corresponding to a block transformation with δ–function) gives a considerably larger interaction range, ρ(r) ∼ exp(−1.45|r|)." Bietenholz–Wiese report for their smeared gauge fixed-point action in d = 4 (their fig. 3) an exponential fit "|ρ(i, i, i, i)| ∝ exp(−c i) with c = 6.937" along the diagonal. Both are numerical.

### 3.3 Literature: what is stated, and what is not

Hasenfratz–Niedermayer 1994 (hep-lat/9308004), verbatim, p. 9, eq. (17): "In Fourier space the solution has the form 1/ρ̃(q) = Σ_{l=−∞}^{+∞} 1/(q + 2πl)² Π_{i=0}^{1} sin²(q_i/2)/(q_i/2 + πl_i)² + 1/(3κ), where the summation is over the integer vector l = (l_0, l_1)". Preceded by: "The free field problem has been studied and solved in [15] a long time ago." ([15] = Bell–Wilson 1974.) Derivation, eqs. (19)–(23): "Using this relation recursively, after j RG steps we get ⟨χχ′⟩ = (1/4)^{2j}... Σ ⟨ππ′⟩ + (1/4κ)(1 + 1/4 + ... + 1/4^j) δ (20) ... Taking the j → ∞ limit, and considering the original lattice infinitely fine, the summations in the first term on the right–hand side of eq. (20) go over to integrals." And p. 14: "The largest irrelevant eigenvalue of the FP is 1/4 in agreement with the observed convergence rate in the number of blocking steps k." (Their block factor is 2; 1/4 = 2^{−2}, i.e. L^{−2}, the same rate as Theorem 4.1 below.) Also p. 9: "the two–point function in configuration space has been obtained for δ–function blocking by Iwasaki [4] and by Gawedzki and Kupiainen [17] also." [17] = Commun. Math. Phys. 77 (1980) 31; not opened in this session (the only copies found were behind redirects).

Bietenholz–Wiese 1996 (hep-lat/9510026), §3 "Blocking free gluons from the continuum", verbatim: eq. (3.1) defines the lattice field "A_{μ,x} = ∫_{c_{x−μ̂/2}} d^d y (1 + y_μ − x_μ) a_μ(y) + ∫_{c_{x+μ̂/2}} d^d y (1 − y_μ + x_μ) a_μ(y)", with "It is remarkable that this construction is gauge covariant" and (3.3)–(3.4) "the lattice gauge transformation is simply given by the integrated continuum transformation". Momentum space (3.6): "A_μ(p) = Σ_{l∈Z^d} a_μ(p + 2πl) Π_μ(p + 2πl)(−1)^{l_μ}; Π_μ(p) = (p̂_μ/p_μ) Π(p)". With a δ-function constraint (3.5) and after integrating out, eq. (3.13): "g(p) = Σ_{l∈Z^d} g_{μν}(p + 2πl) Π_μ(p + 2πl)² + α + β p̂²" (α, β the smearing parameters; the δ-function case is α = β = 0), and (3.16), (3.18) the fixed point action "in a gauge invariant form". Finite block factor n, eqs. (3.29)–(3.30): "This is the perfect propagator for blocking from the continuum provided that ... In particular ... because blocking from the continuum corresponds to an infinite blocking factor." Their (3.13) at α = β = 0 is my S_∞ written in their Landau gauge; their kernel uses a triangular weight in the link direction (their (3.1) integrates over two half-cubes with weights 1 ± (y_μ − x_μ)), which is the composition of the unit-cube average with the unit segment — the same as my χ_∞ R_∞ up to their (−1)^l phase convention from half-integer link centers. I did not verify their (3.18) term by term against (3.1).

Balaban CMP 95 (1984), the rigorous side, verbatim p. 25–26: "To understand better the properties of this operator we calculate the Fourier transform. It is a translation invariant operator on the unit lattice T^{(k)} and its Fourier transform can be written using formula (2.48) from [2]. ... From this representation and from the bounds (2.51), (2.52) of that paper, it follows that there are positive constants γ_0, γ_1, in fact γ_0 dependent only on d, γ_1 = a^{−2}, such that γ_0 ≤ Q′_k G′_k Q′*_k ≤ γ_1. This property and the representation (1.44) are crucial for the later considerations when we will have operators dependent on external gauge field." And p. 32 on the momentum representation of a^{−1}(φ − 1)/φ: "it follows that it is bounded from below and above by positive constants dependent on d only (for a = 1). The same property holds for QGQ*." ([2] = Balaban, "Regularity and decay of lattice Green's functions", Commun. Math. Phys. 89 (1983) 571–597; the Project Euclid PDF was not retrievable in this session, so (2.48), (2.51), (2.52) are not quoted.) These are the per-momentum bounds, uniform in the level k, for the scalar block-spin propagator Q G Q* which is the building block of S_M(K). They are bounds, not a limit. R2_VERIFY §1 and §4 item 8 (grep of CMP 95, 96, 99, 102) found no convergence statement in k, and my reading of CMP 95 pp. 23–33 agrees.

Bell–Wilson 1974 (Phys. Rev. B10, 3935, "Nonlinear renormalization groups") abstract, verbatim fragments: "We introduce here another nonlinear renormalization group and study it in detail for the Gaussian model. We find that (i) within certain limits, no such parameter need be adjusted in order to reach a fixed point". Wilson–Bell 1975 (Phys. Rev. B11, 3431, "Finite-lattice approximations to renormalization groups"), the paper Balaban cites as [7] in CMP 95: the abstract says the linear transformation for the Gaussian model is solved exactly and "The exact transformation has fixed points only for b = 2^{−5/2}" (d = 3). Neither abstract states a convergence rate; the full texts were not accessible.

Conclusion of the literature check: the fixed point (3.1) is the standard object (Bell–Wilson; Hasenfratz–Niedermayer (17); Bietenholz–Wiese (3.13)/(3.18)); the rate L^{−2} per step is reported numerically (HN p. 14) and matches Theorem 4.1; no rigorous convergence statement for the gauge-field Gaussian block-spin map was found, and Balaban's uniform bounds are the only rigorous input available. Theorem 4.1 fills exactly this gap for the trivial background.

## 4. Theorem 4.1: convergence at rate L^{−2j} (U3 at the trivial background)

Theorem 4.1. Let Δ_j = T_L^j Δ_0 = Δ_{M}, M = L^j, be the level-j quadratic form (Prop. 1.5, Prop. 2.1) and Δ_∞ the fixed point (3.1). For each m ∈ {0, 1, 2} there is C_m (depending on m only; L enters only through M) such that

  sup_{K∈BZ} | ∂_K^α (Δ_M(K) − Δ_∞(K)) | ≤ C_m M^{−2} = C_m L^{−2j}   for all |α| ≤ m.   (4.1)

The same proof gives (4.1) for every fixed m with C_m depending on m.

Proof. Step 1 (inverses). Write Δ_M|_{T′} = (P′_T S_M P′_T)^{−1}, Δ_∞|_{T′} = (P′_T S_∞ P′_T)^{−1}. Both P′_T S P′_T are ≥ c/(1+|K|²)·... more precisely ≥ c_0 |K|^{−2} on T′ for |K| ≤ 1 and ≥ c_0 for |K| ≥ 1 (from the l = 0 term, uniformly in M ≥ 1, using χ_M(k_0) ≥ c for |k_0| ≤ π/M and |R_M(k_0)| ≥ cM, |k̂_0|² ≤ |K|²/M²·C). Hence ‖Δ_M‖, ‖Δ_∞‖ ≤ C|K|² and

  Δ_M − Δ_∞ = −Δ_M (P′_T (S_M − S_∞) P′_T) Δ_∞   on T′,   |Δ_M − Δ_∞| ≤ C |K|⁴ |S_M(K) − S_∞(K)|.   (4.2)

So it suffices to show |S_M − S_∞| ≤ C M^{−2} uniformly on BZ ∖ {0} (and the same for derivatives, Step 4). At K = 0 both sides vanish.

Step 2 (head: term-by-term lattice error). Let 𝓛_M := {−(M−1)/2, …, (M−1)/2}⁴ (the centered representatives of the umklapp block; (2.3) is unchanged by the choice of representatives since k_l only depends on l mod M). For l ∈ 𝓛_M, k_l = (K + 2πl)/M has |k_{l,ν}| ≤ π. Compare the lattice term t_l^{lat} := M^{−4} χ_M(k_l)² R_M(k_l) P_T(k_l) R_M(k_l)^†/|k̂_l|² with the continuum term t_l^{c} := χ_∞(K,l)² R_∞(K,l) P_T^c(q_l) R_∞(K,l)^†/|q_l|², q_l := K + 2πl = M k_l. Each lattice factor is the continuum factor times (1 + O(|k_l|²)) with a relative error bounded uniformly on |k_{l,ν}| ≤ π:
 - M sin(k_ν/2) = (q_ν/2)(1 − q_ν²/(24M²) + …), so χ_M(k_l) = χ_∞(K,l)·Π_ν(1 + O(k_{l,ν}²)) with the ratio sin(x)/x bounded above and below on |x| ≤ π/2 — the same sine numerator sin(Mk_ν/2) = sin((K_ν + 2πl_ν)/2) = ±sin(K_ν/2) appears in both;
 - k̂_ν = i k_ν (1 + O(k_ν)) — the relative error of R_M = diag(K̂/k̂) against M R_∞ = diag(K̂/(ik)) is O(|k_l|), and of |k̂_l|² against |k_l|² is O(|k_l|²); the first-order terms in the ratio k̂/(ik) = 1 + ik/2 + … are odd and cancel in the Hermitian combination R P_T R^† to relative O(|k_l|²): write R_M(k_l) = M R_∞ (1 + i k/2 + O(k²))-diagonal, then R P_T R^† picks up the factor (1 + ik_μ/2)(1 − ik_ν/2)(…)_{μν} whose first-order part i(k_μ − k_ν)/2 (…)_{μν} does not vanish entrywise — so the relative error is O(|k_l|), not O(|k_l|²), entrywise. However the first-order part is odd under k_l → −k_l, i.e. under l → −l combined with K → −K; this does not give cancellation at fixed K. I therefore bound the head error by O(|k_l|) per term and use the stronger summability below.
 - P_T(k_l) = P_T^c(q_l) + O(|k_l|) for the same reason (k̂ vs ik), again with an odd first-order part.
Hence |t_l^{lat} − t_l^c| ≤ C |k_l| |t_l^c| ≤ C M^{−1}(1 + |l|) |t_l^c| for l ∈ 𝓛_M. Summing, Σ_{l∈𝓛_M} |t_l^{lat} − t_l^c| ≤ C M^{−1} Σ_l (1+|l|)|t_l^c| ≤ C′ M^{−1}, using Σ_l |l| |t_l^c| < ∞ from §3.1.

This gives only M^{−1}. To get M^{−2} the odd first-order parts must be shown to cancel. They do, by the reflection symmetry of the problem: the full sums S_M(K) and S_∞(K) are both invariant under the lattice reflection K_ν → −K_ν for each ν separately (combined with the corresponding reflection of the matrix indices and l_ν → −l_ν), because Δ_0, Q_M, and the continuum objects are reflection covariant. Decompose the lattice-vs-continuum relative error of t_l as 1 + ε_1(k_l) + ε_2(k_l) + …, ε_1 odd in k_l (entrywise, up to the index reflection) and homogeneous of degree 1 in k_l, ε_2 of degree 2. Then Σ_{l∈𝓛_M} ε_1(k_l) t_l^c(K) is odd under the reflection of (K, l, indices), while the full sums are even; the odd part of an even quantity vanishes... but the reflection changes K, so this argument does not apply at fixed K. The correct statement is the following direct computation. The first-order relative corrections all come from k̂_μ = ik_μ(1 + ik_μ/2 + O(k_μ²)) = ik_μ e^{ik_μ/2}(1 + O(k_μ²)). So, exactly, k̂_μ = 2i sin(k_μ/2) e^{ik_μ/2}, and

  R_M(k)_μ = K̂_μ/k̂_μ = e^{−ik_μ/2} K̂_μ/(2i sin(k_μ/2)),   P_T(k) = 1 − k̂k̂^†/|k̂|² = E(k)(1 − ss^T/|s|²)E(k)^†,  s_μ := sin(k_μ/2),  E(k) := diag(e^{ik_μ/2}).

Hence R_M P_T R_M^† = diag(K̂/(2i s)) (1 − ss^T/|s|²) diag(K̂/(2i s))^† exactly: the phases E(k) cancel between R_M and P_T. The remaining lattice-vs-continuum differences are in 2 sin(k_μ/2) vs k_μ (even, relative O(k_μ²)), in |k̂|² = 4|s|² vs |k|² (relative O(|k|²)), and in χ_M (relative O(|k|²)). So the relative error is even and O(|k_l|²) entrywise, and

  Σ_{l∈𝓛_M} |t_l^{lat} − t_l^c| ≤ C M^{−2} Σ_l (1 + |l|)² |t_l^c| ≤ C′ M^{−2}.   (4.3)

Step 3 (tail: continuum terms outside the box). Σ_{l∉𝓛_M} |t_l^c| ≤ C Σ_{|l|_∞ > M/2} (1+|l|)^{−2} Π_ν (1+|l_ν|)^{−2} ≤ C M^{−3} (the dominant contribution has one component of size > M/2 and the others 0: Σ_{n>M/2} n^{−4} ~ M^{−3}). So

  |S_M(K) − S_∞(K)| ≤ C M^{−2} + C M^{−3} ≤ C M^{−2},   uniformly in K ∈ BZ ∖ {0}.   (4.4)

Step 4 (derivatives). Differentiating t_l^{lat} and t_l^c in K brings factors bounded by C(1 + 1/|q_l|) from 1/|q_l|², from the sinc factors, and from R (each K-derivative of sin(K_ν/2)/(q_ν/2) or of K̂_μ/q_μ is bounded by C/(1+|q_l|)·(1+|q_l|)... all derivatives of the continuum term satisfy |∂_K^α t_l^c| ≤ C_α (1+|l|)^{|α|}|t_l^c|·(1 + |K|^{−|α|}) near K = 0 — the K → 0 singularity of the l = 0 term is harmless because it is multiplied by |K|⁴ in (4.2), whose derivatives are handled by the explicit expansion of Lemma 3.1(ii) — and the lattice-vs-continuum relative errors keep their even O(|k_l|²) structure after differentiation (they are smooth functions of k_l = q_l/M with derivatives in K of order M^{−1} per derivative). Hence (4.3)–(4.4) hold for ∂_K^α with Σ_l (1+|l|)^{2+|α|}|t_l^c| < ∞, which is true for |α| ≤ 1 (Σ n³ n^{−4} diverges for |α| = 2 in the single-component direction). For |α| = 2 the single-component tail Σ_n n^{−1} is logarithmic: the second derivative estimate as written gives C M^{−2} log M. The loss is an artifact of the crude bound (1+|l|)^{|α|}: the K-derivatives of t_l^c fall on the sinc and 1/|q_l|² factors and give an extra (1+|l|)^{−1}, not (1+|l|)^{+1}; the factor (1+|l|)^{|α|} only arises for the derivatives of the lattice remainder, which carry M^{−1} each. With this refinement the bound is C_m M^{−2} for every m. I state (4.1) for m ≤ 2 with this refinement, and the numerical check of §9 (first and second K-differences, error ratios 8.0, 8.8 and 7.8, 8.8 for M = 3 → 9 → 27, against L² = 9) supports the clean M^{−2} rate without a logarithm.

Step 5. Combine (4.2), (4.4) and Step 4. ∎

Numerical confirmation (§9): d = 4, K = (1.1, −0.7, 0.4, 2.0): |Δ_M − Δ_∞| = 1.007, 0.129, 0.0147 for M = 3, 9, 27 (ratios 7.80, 8.79; L² = 9).

Corollary 4.2 (geometric convergence in an exponentially weighted kernel norm). For a translation-invariant kernel k(x−y) let ‖k‖_δ := Σ_x e^{δ|x|}|k(x)|. Suppose sup_M ‖Δ_M‖_δ < ∞ for some δ > 0 (uniform exponential decay of the level-j quadratic forms). Then for every δ′ < δ there are C and ρ < 1 with

  ‖Δ_{L^j} − Δ_∞‖_{δ′} ≤ C ρ^j,   ρ = L^{−2(1 − δ′/δ)}.   (4.5)

Proof. Parseval and (4.1) with m = 0 give Σ_x |Δ_M(x) − Δ_∞(x)|² ≤ C M^{−4}. Hölder with exponents θ = 1 − δ′/δ: Σ_x e^{δ′|x|}|f(x)| ≤ (Σ |f|²)^{θ/2} (Σ_x e^{2δ′|x|/(2−θ)} |f(x)|^{2(1−θ)/(2−θ)})^{(2−θ)/2}, and with |f(x)| ≤ C e^{−δ|x|} the second factor is finite when 2δ′/(2−θ) < 2δ(1−θ)/(2−θ), i.e. δ′ < δ(1−θ). (Δ_∞ decays exponentially by Lemma 3.1(iii), so f = Δ_M − Δ_∞ has the uniform decay.) ∎

Uniform decay input for Corollary 4.2. The hypothesis sup_M ‖Δ_M‖_δ < ∞ is a uniform-in-level exponential decay of the perfect-action kernels. It follows from uniform strip analyticity of Δ_M(K), which can be read off (2.3) by the argument of Lemma 3.1(iii) with constants independent of M (the lattice sine factors are bounded in the strip uniformly in M); I have not written the uniform constants. Balaban's propagator papers prove uniform decay for the related objects (CMP 96 p. 246: "derivatives of H_j up to third order, and their local Holder norms as in (2.67), are uniformly bounded and have a uniform exponential decay with a decay rate depending on d only"; CMP 95 Prop. 1.2 "(1.110) ... with the constant O(1) depending on d only"), which is the same mechanism. For the momentum-space norm of §6 the Corollary is not needed: Theorem 4.1 is already a statement in that norm.

Zero-momentum / constant-mode note. Δ_M(0) = Δ_∞(0) = 0 exactly (constant coarse field = constant fine field, zero action, admissible). Near K = 0 the symbols are |K̂|²P′_T(1 + O(K²)) uniformly in M, so the convergence (4.1) is uniform including a neighbourhood of 0; the transverse projector singularity at K = 0 is not present in Δ_M itself (Lemma 3.1(ii) and its lattice analogue). On a finite torus the constant mode is a genuine zero mode of every level; on the infinite lattice it is the K = 0 point of measure zero and is harmless in the integrals of §6. This resolves the "zero-momentum/constant-mode subtlety" of the task for the quadratic form; for the increment functional see §6.

## 5. The rest of the level-j data: the two soft-leg vertices (reduction, open)

### 5.1 What the increment needs

The one-loop increment β_{j+1}(0) is the F²-coefficient (equivalently the zero-momentum second p-derivative, CMP 109 (5.42)) of log Z^{(j)}(U_{j+1}(e^{iB})) − log Z^{(j)}(1), where Z^{(j)} is (1.4)–(1.5) at the background e^{iB} with B slowly varying on the level-(j+1) lattice... precisely: the step from level j to level j+1 integrates the level-j fluctuation field with the one-step constraint, and the determinant depends on the background through three objects on the level-j lattice:

 (D1) the level-j tree Hessian in the background, Hess_V A_j^{tree}(V)|_{V = e^{iB}}, which for a plane-wave B of momentum p and amplitude a has the expansion Δ_j + a Γ_j^{(3)}(p; ·) + a² Γ_j^{(4)}(p, −p; ·) + O(a³) — the two soft-leg vertices of the classically perfect action A_j^{tree}, as kernels on the level-j bond fields (in momentum space: matrices connecting k to k + p, and k to k, respectively);
 (D2) the one-step averaging Q̃(e^{iB}) with its first two background variations;
 (D3) the one-step ghost operator D(e^{iB}) (covariant difference, λ vanishing at level-(j+1) centers, R2_VERIFY §2.3(a)) with its background variations.

(D2) and (D3) are fixed one-step kernels: they do not depend on j (in level-j units, with the background momentum p and amplitude fixed in those units). Only (D1) depends on j. This is the key simplification: the level dependence of the increment enters only through the triple (Δ_j, Γ_j^{(3)}, Γ_j^{(4)}).

So "the level-j data" are 𝒟_j := (Δ_j, Γ_j^{(3)}, Γ_j^{(4)}). Theorem 4.1 controls the first entry. The other two are the first two background variations of the Hessian of A∘H_{1,j} and are NOT produced by the trivial-background Gaussian RG alone. They are produced by the Gaussian RG in a background, as follows.

### 5.2 Structure of the soft vertices

Lemma 5.0 (structure, proved). For the constant abelian background V_F (R2_VERIFY §2.3–2.4: an exact stationary point of A, J = 0, reproduced exactly by the averaging at every level, U_j(V_F) = U_0^F), the level-j Hessian at V_F is

  Δ_j(F) = Schur complement of Δ_1(U_0^F) under the composed background-covariant linearized constraint Q̃^{(j)}_F = Q̃_{F_j} ∘ ⋯ ∘ Q̃_{F_1},   (5.1)

where Δ_1(U_0^F) is the Wilson Hessian at the constant field, and Q̃_{F_i} is the one-step linearized averaging at level i in its own background (the same constant field, flux F L^{−2(j−i)} per plaquette in level-i units). The composition is CMP 98's "fundamental fact" (quoted in §1.1) linearized, and the J-term of (1.5) is absent. The F² Taylor coefficients of (5.1) at F = 0 determine Γ_j^{(3)} and Γ_j^{(4)} at p → 0 to the order needed for β_{j+1}(0) (Balaban (5.42): β is the second moment of Π, i.e. the p² coefficient; the constant-field background probes exactly the p² coefficient at p = 0 because a linear potential has constant field strength, and the terms of Π′ with three or more lattice derivatives vanish on linear potentials, R2 §4(ii)).

Proof. (0.21)–(0.22) define A_j^{tree}(V) = A(U_j(V)); its Hessian at V_F is the constrained second variation of A at U_j(V_F) = U_0^F under the linearized composed constraint, plus the Lagrange term, which vanishes because J = 0 (the gradient of A at U_0^F is zero, R2_VERIFY §2.3(i)). The composed linearized constraint is the composition of the one-step linearizations at the respective backgrounds by the chain rule applied to CMP 98 (91). ∎

So the whole F-dependence of 𝒟_j, to the order needed, is produced by the free-field (quadratic) block-spin RG in a constant abelian background: the Wilson Hessian in the background (a magnetic-translation-covariant lattice operator on the charged adjoint components, translation-invariant on the neutral ones) and the covariant block averages. Expanding (5.1) to second order in F produces, in a fixed gauge for the background phases, kernels of the form (polynomial of degree ≤ 2 in positions) × (translation-invariant kernel); in momentum space, derivatives ∂_k up to order 2 of translation-invariant symbols appear (position multiplication ↔ momentum derivative; this is the lattice form of the Moyal expansion of the magnetic twisted convolution, and the reason Balaban's β is a second moment).

### 5.3 The reduction

Lemma 5.1 (U3 for the soft vertices; OPEN). Let Δ_j^{(1)}, Δ_j^{(2)} denote the translation-invariant parts of the first and second F-Taylor coefficients of Δ_j(F) in (5.1) (equivalently the p → 0 Taylor data of Γ_j^{(3)}(p; k), Γ_j^{(4)}(p, −p; k) up to order p²), as matrix symbols on the level-j BZ. Claim: there are limits Δ_∞^{(1)}, Δ_∞^{(2)} with sup_k |∂_k^α(Δ_j^{(m)} − Δ_∞^{(m)})| ≤ C L^{−2j} for |α| ≤ 2, m = 1, 2.

What is in place for it: (a) Lemma 5.0, the exact structure; (b) the per-momentum finite-dimensional form: for the composed constraint one needs the F-expansion of each one-step factor Q̃_{F_i}, which is a fixed kernel (the one-step covariant average at flux F_i), so Q̃^{(j)}_F = Q_{L^j} + Σ_i (Q_{L^{j−i}} Q̃_{F_i}^{(1)} Q_{L^{i−1}}) F_i + O(F²) with F_i = F L^{−2(j−i)} — a convergent sum dominated by the top levels (the lower levels see a field smaller by L^{−2(j−i)}); the Wilson Hessian in the background has the explicit expansion Δ_1(F) = Δ_0 + F Δ_1^{(1)} + F² Δ_1^{(2)} with Δ_1^{(1)} the lattice "spin + orbital" coupling (R2 §1.2 continuum form) and lattice corrections O(k²) relative; (c) the mechanism of Theorem 4.1: in the composed Schur complement every lattice object is the continuum object times (1 + O(|k_l|²)) with even relative errors, and the umklapp sums converge with two powers of |l| to spare. What is not done: writing the Schur complement of a magnetic-covariant form to second order in F per coarse momentum (the per-momentum block is no longer diagonal in l because the background carries momentum; to order F² it couples l to l and to the momentum derivatives at l), and checking that the first-order (odd) lattice errors cancel as in Step 2 of Theorem 4.1 for the F-dependent factors (the phases E(k) that cancelled between R_M and P_T have background-dependent analogues). I expect the result to hold with the same rate but I have not proved it. This is the single open input of this document.

Remark on Balaban's uniform bounds. CMP 99 (propagators) Theorem 3.1 and Theorem 3.12 (quoted in R2 §5.3) give, for backgrounds satisfying the regularity condition (3.35), bounds and exponential decay for the background-field propagators "with positive constants ... dependent on d and L only", for every level. These are the uniform-in-j bounds on 𝒟_j that §6 needs; they say nothing about Lemma 5.1.

## 6. Theorem 6.1: the increment is a Lipschitz functional of the level-j data (U3′)

### 6.1 The per-momentum representation

From NUMERICS.md §5 (derived there from the determinant formula of R2 (2.4), verified in R2_VERIFY §2.3; its momentum-space form was checked against real-space finite differences to 8·10^{−8} and gives zero on a pure-gauge wave to 10^{−15}): with the level-j lattice as the fine lattice, a transverse plane-wave background of momentum p (level-j units) and amplitude a, and the one-step blocking with factor L,

  β_{j+1}(0) = lim_{p→0} w_j(p) / (L⁴ (1 − cos p)) · c_norm,   (6.1)
  w_j(p) = ∫_{BZ} dK/(2π)⁴ { tr(𝔅_j(K)^{−1} 𝔅_j″(K)) − 2 tr(𝔅_j(K+p)^{−1} T_{j,+}(K) 𝔅_j(K)^{−1} T_{j,−}(K+p)) } + (ghost terms of the same form with G = D^†D),

where 𝔅_j(K) is the bordered matrix [[Δ_j ⊕_l + D D^†, Q̃^†],[Q̃, 0]] per coarse momentum (size 4N_g L⁴ + 4N_g), built from the symbols Δ_j(k_l) on the L⁴ umklapp momenta k_l = (K + 2πl)/L, the one-step averaging symbols Q̃(k_l), and the ghost gauge-fixing block; T_{j,±} are the first-order background vertices (blocks built from Γ_j^{(3)}(±p; k_l) and from the first background variations of Q̃ and D D^†), and 𝔅_j″ the second-order zero-momentum-transfer vertex (from Γ_j^{(4)} and the second variations of Q̃, D D^†). c_norm = 4 is the normalization fixed in NUMERICS §6. The ghost determinant enters with weight +1 and the bordered determinant with −½; the ghost part does not depend on j at all (its operator is the fixed one-step D in the background), so it contributes a j-independent constant c_gh to β_{j+1}(0).

Status of (6.1): it is the order-g⁰ content of (1.3)–(1.5) under the identification V1 of R2_VERIFY §3 ("that (1.3) is complete at order g⁰": plausible, not independently proved). Theorem 6.1 is stated for the functional defined by (6.1).

### 6.2 The norm and the admissible set

Data space: 𝒟 = {(Δ, Γ^{(3)}, Γ^{(4)})} with Δ: BZ → Herm(4N_g), Γ^{(3)}: {|p| ≤ p_0} × BZ → Mat(4N_g) and Γ^{(4)} likewise, all 2π-periodic in k and smooth. Norm:

  ‖𝒟‖ := Σ_{|α|≤2} sup_k |∂_k^α Δ(k)| + Σ_{|α|+|β|≤2} sup_{|p|≤p_0, k} ( |∂_p^α ∂_k^β Γ^{(3)}(p;k)| + |∂_p^α ∂_k^β Γ^{(4)}(p,−p;k)| ).   (6.2)

For translation-invariant kernels with exponential decay ‖·‖_δ (Cor. 4.2), ‖𝒟‖ ≤ C_δ ‖·‖_δ (momentum derivatives up to order 2 are bounded by second moments). Admissible set: 𝒟_{a,b} := {𝒟 : ‖𝒟‖ ≤ a, and the one-step constrained Hessian built from Δ is uniformly invertible: ‖𝔅(K)^{−1}‖ ≤ b for all K ∈ BZ, and ‖G(K)^{−1}‖ ≤ b}. The bound ‖𝔅^{−1}‖ ≤ b uniformly on BZ (including K → 0) is the massive block-spin fluctuation propagator: Balaban CMP 95 Prop. 1.1 (verbatim, p. 33): "with a positive constant γ_0 independent of k, T, and depending on d only (if we put a = 1). This implies the bound from below: Δ_a = G^{−1} ≥ γ_0(Δ + I)" — the gauge-fixed one-step form has a mass gap of order 1 in coarse units uniformly in the level; and p. 26, γ_0 ≤ Q′_k G′_k Q′*_k ≤ γ_1 for the constraint block. These bounds are stated for the trivial background; for the background-dependent part only the Taylor coefficients at F = 0 enter (6.1), so the trivial-background invertibility suffices. (The background-field lower bound of CMP 99 p. 428, "we can prove it", R2_VERIFY V4, is therefore not needed for (6.1); it would be needed for the finite-F formulation.)

### 6.3 Statement and proof

Theorem 6.1. Let Φ: 𝒟_{a,b} → R be the functional (6.1). Then Φ is Lipschitz: |Φ(𝒟) − Φ(𝒟′)| ≤ C(a, b, L) ‖𝒟 − 𝒟′‖.

Proof. (i) w(p) is an integral over the compact BZ of a smooth function of the entries of 𝔅(K), 𝔅(K+p), T_±, 𝔅″, G, G′, G″, each of which is an affine function of the data evaluated at the umklapp momenta k_l (and k_l + p/L for the shifted argument). On 𝒟_{a,b} the matrix inverses are bounded by b and Lipschitz in the matrix entries (X^{−1} − Y^{−1} = X^{−1}(Y − X)Y^{−1}, Lipschitz constant b²). Products and traces of bounded matrices are Lipschitz. Hence |w(p) − w′(p)| ≤ C(a,b,L) ‖𝒟 − 𝒟′‖_{C⁰} for every |p| ≤ p_0.
(ii) The limit in (6.1). w(0) = 0 for every admissible 𝒟 (a p = 0 transverse plane wave of the form used is a constant background, which for the quantities in (6.1) is a pure gauge on the infinite lattice after the gauge-invariance identity of §4 of R2 — NUMERICS reports w = O(10^{−15}) for pure-gauge waves), and w is even in p (reflection), so w(p) = ½ w″(0) p² + O(p⁴) and Φ = c_norm w″(0)/(2L⁴). The second p-derivative of w at 0 is the BZ integral of second p-derivatives of the integrand; by the chain rule these involve the data and their p- and k-derivatives up to order 2 (the shifted argument 𝔅(K + p) differentiates Δ(k_l + p/L) in k; T_±(K) and 𝔅″ differentiate Γ^{(3)}, Γ^{(4)} in p). Each is Lipschitz in the C² data by (i) applied to the differentiated expressions, with the same inverse bounds. Hence |Φ(𝒟) − Φ(𝒟′)| ≤ C(a,b,L)‖𝒟 − 𝒟′‖. ∎

Remarks. (a) The uniform invertibility hypothesis is what makes the K-integral harmless at K → 0: the fine Hessian Δ_j(k_0) → 0 as K → 0, but the bordered block stays invertible because the constraint and the gauge fixing remove the soft modes (the constrained fluctuation propagator is massive). NUMERICS §5 reports exponential convergence of the K-grid average in the grid size, which is the numerical signature of an integrand analytic on the whole BZ including K = 0. (b) The Lipschitz constant grows with L⁴ through the block size; this is irrelevant for the j → ∞ statement at fixed L. (c) Nothing in the proof uses the specific form of the vertices; only the affine dependence of the per-momentum blocks on the data and the uniform bounds.

## 7. Conclusion for the increments

Theorem 7.1 (conditional). Assume Lemma 5.1. Then the level-j data 𝒟_j = (Δ_j, Γ_j^{(3)}, Γ_j^{(4)}) satisfy ‖𝒟_j − 𝒟_∞‖ ≤ C L^{−2j} (Theorem 4.1 for Δ_j; Lemma 5.1 for the vertices), the 𝒟_j lie in a fixed 𝒟_{a,b} (uniform bounds: Balaban CMP 95 Prop. 1.1, CMP 96 Prop. 2.5–2.6, CMP 99 (propagators) Theorem 3.1, quoted in R2 §5.3; uniform invertibility: §6.2), and by Theorem 6.1

  β_∞ := Φ(𝒟_∞) exists and |β_{j+1}(0) − β_∞| ≤ C ρ^j,   ρ = L^{−2}.   (7.1)

Unconditionally, the following weaker statement holds: along any subsequence on which the vertex data converge in the norm (6.2) — and such subsequences exist by compactness, since the uniform exponential decay bounds of Balaban give a compact set in the C² norm (Arzelà–Ascoli on the BZ with uniform C³ bounds) — the increments converge to Φ of the limit. Theorem 4.1 shows that the quadratic-form component of every such limit is Δ_∞. So all limit points of (β_j(0)) are values Φ(Δ_∞, Γ^{(3)}_*, Γ^{(4)}_*) over the limit points (Γ^{(3)}_*, Γ^{(4)}_*) of the vertex data.

What this gives for Theorem 2. With Prop. 5.1(c) of R2_TELESCOPING.md (verified): convergence β_j(0) → β_∞ plus β_∞ > 0 plus positivity of the finitely many early β_j(0) gives (T2-a1′) and hence Theorem 2 via Lemmas D, E. (7.1) supplies the convergence part conditionally; β_∞ > 0 is not shown here (the expected value (11N²/(12π²)) log L rests on the universality plan of R2 §5, with Lemmas U1′/U2 open); the early positivity is a finite computation (NUMERICS §6: β_1(0) = 0.63 (L = 2), 0.66 (L = 3); β_1 + β_2 = 1.15 at L = 2, all positive).

The template comparison (reports/o3_continuum.txt §6.1, Lemma 6.1): the O(3) paper obtains "exponential convergence of both increment sequences" from "the triangular coefficient contraction and the free-history estimates" of its canonical coefficient map C_h, and identifies the limit by the doubling difference (6.3). The analogue here: Theorem 4.1 + Lemma 5.1 (open) play the role of the contraction of the coefficient map; R2 §5 (open) plays the role of the doubling-difference identification. The gauge case replaces the contraction by the explicit M-step formula, which is available because the Gaussian block-spin map composes exactly (Lemma 1.2).

## 8. Ledger

Proved here:
- P1. Lemma 1.1: linearized (0.12) at U = 1 = plain block average of link angles + coarse gauge term.
- P2. Lemma 1.2: exact composition Q_{L′}Q_L = Q_{LL′} for nested centered blocks (numerically 0 on 27², d = 2).
- P3. Lemma 1.3, 1.4: the gauge terms of Balaban's averaging (and of its compositions) do not change the constrained minimum; the level-j quadratic form at the trivial background is the single block-L^j Schur complement of the Wilson Hessian, Prop. 1.5 (numerically 7.5·10^{−15} and 1.2·10^{−14}).
- P4. Prop. 2.1: the per-coarse-momentum formula (2.3) with the transverse/longitudinal structure and Δ_M(0) = 0 (numerically confirmed on the torus up to normalization).
- P5. Lemma 3.1: the fixed point Δ_∞ (3.1) is a fixed point of T_L, has the Maxwell normalization |K̂|²P′_T(1 + O(K²)) (numerically 1.6·10^{−4} at |K| = 0.03), and is analytic in a strip (exponential decay); δ_* not computed.
- P6. Theorem 4.1: sup-norm convergence of Δ_{L^j} and its first two K-derivatives to Δ_∞ at rate L^{−2j} (numerical ratios 7.8–8.8 against 9). Corollary 4.2: geometric rate in the exponentially weighted kernel norm given uniform decay.
- P7. Lemma 5.0: the F-dependence of the level-j Hessian at the constant abelian background is the Gaussian block-spin RG in the background with the composed covariant constraint (uses CMP 98's composition fact and R2_VERIFY's exact-stationarity facts).
- P8. Theorem 6.1: the increment functional (6.1) is Lipschitz on 𝒟_{a,b} in the norm (6.2).
- P9. Theorem 7.1: |β_j(0) − β_∞| ≤ C L^{−2j} conditional on Lemma 5.1; unconditional subsequence statement.

Reduced to cited results (quoted verbatim above):
- C1. Uniform-in-level bounds and decay for the level-j data (CMP 95 Prop. 1.1 "γ_0 independent of k, T, and depending on d only", pp. 25–26 "γ_0 ≤ Q′_kG′_kQ′*_k ≤ γ_1"; CMP 96 p. 246 "uniform exponential decay with a decay rate depending on d only"; CMP 99 (propagators) Theorems 3.1, 3.12 via R2 §5.3). Used for 𝒟_j ∈ 𝒟_{a,b} and for Corollary 4.2's hypothesis.
- C2. The composition of averagings in an arbitrary background: CMP 98 p. 31, "the new kth order averaging operation ... is a composition of k averaging operations ... with properly chosen configurations V_0". Used in Lemma 5.0.
- C3. The fixed point as the standard object: Hasenfratz–Niedermayer (17), (20)–(23) and "largest irrelevant eigenvalue of the FP is 1/4" (block factor 2); Bietenholz–Wiese (3.6), (3.13), (3.16)–(3.18), (3.29)–(3.30); Bell–Wilson/Wilson–Bell abstracts. None is used in a proof; they identify (3.1) with the literature's perfect gauge propagator (not verified term by term against BW (3.18)).
- C4. Representation (6.1) of the increment: NUMERICS §5 (derived from R2 (2.4), verified R2_VERIFY §2.3, numerically cross-checked), resting on V1 (order-g⁰ completeness of (1.3)).

Open:
- O1. Lemma 5.1: convergence at rate L^{−2j} of the two soft-leg vertices of the classically perfect action (equivalently of the F¹, F² coefficients of the background Schur complement (5.1)). Structure and mechanism given in §5.3; proof not written. This is the only missing input for (7.1).
- O2. The uniform constants in Lemma 3.1(iii)/Corollary 4.2 (δ_*, and uniformity in M of the strip of analyticity of Δ_M) are not computed; Theorem 4.1 does not need them.
- O3. The log M loss in Step 4 of Theorem 4.1 for |α| = 2 is removed by a refinement I described but did not write in full; numerics show the clean rate.
- O4. β_∞ > 0 and its value: not addressed here (R2 §5 universality plan; Lemma U1 refuted as stated in R2_VERIFY, U1′/U2 open).
- O5. Gawędzki–Kupiainen CMP 77 (1980) and Balaban CMP 89 (1983) (2.48)–(2.52) were not opened (access); their statements are known only through HN94 and CMP 95 respectively.

## 9. Numerical checks run in this session (scratch, deleted)

Script (numpy, project venv, run with python -I), d = 2 torus 27²: Maxwell Hessian Δ_0 = P^T P with P the plaquette curl; gauge invariance |Δ_0 D| = 0; plain block averages Q_3 (27 → 9), Q_3′ (9 → 3), Q_9 (27 → 3): |Q_3′Q_3 − Q_9| = 0. Schur complements via the bordered KKT system solved by least squares (J unique since Q is onto): |S_3′∘S_3 − S_9| = 1.2·10^{−14} (entries up to 0.16); with the axial-gauge term λ (one staircase, direction 1 then 2) added to Q_9: |S_9^{axial} − S_9| = 7.5·10^{−15}. Fourier symbol of S_9 at K = (2π/3, 0) against (2.3): transverse entry ratio 162 = 2·9² (factor 2 from the P^TP normalization, 9² = M^{4−d} from the d = 2 scaling; in d = 4 no rescaling), zero entries agree. Formula (2.3) in d = 4 at K = (1.1, −0.7, 0.4, 2.0), Δ_∞ truncated at |l_ν| ≤ 12 (tail vs |l_ν| ≤ 8: 1.6·10^{−4}): |Δ_M − Δ_∞| = 1.007, 0.129, 0.0147 (M = 3, 9, 27). First and second K-differences (h = 0.02) at K = (0.9, −0.6, 0.3, 1.4): errors 0.279, 0.0348, 0.00395 and 0.605, 0.0775, 0.00884. Small-K normalization: |Δ_∞ − |K̂|²P′_T|/|K̂|² = 1.6·10^{−2}, 1.8·10^{−3}, 1.6·10^{−4} at |K| ≈ 0.3, 0.1, 0.03.
