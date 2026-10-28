# U3_VERIFY: independent check of U3_GAUSSIAN_RG.md

Written 2026-10-27 (Claude, Fable 5.1, verifier). Checked document: U3_GAUSSIAN_RG.md (all nine sections, ledger §8, numerics §9). Context read: numerics/NUMERICS.md, THEOREM2.md, R2_VERIFY.md §2–3, R2_TELESCOPING.md Prop. 3.1. Primary sources read in the OCR texts: CMP 109 pp. 252–254 ((0.3)–(0.14)), CMP 98 pp. 24 and 31–33 ((88)–(92)), CMP 95 pp. 25–26 and 33 (Prop. 1.1, 1.2), CMP 96 p. 246. Literature downloaded and text-extracted this session: hep-lat/9308004 (Hasenfratz–Niedermayer), hep-lat/9510026 (Bietenholz–Wiese); Bell–Wilson 1974 and Wilson–Bell 1975 abstracts via web search. All derivations below are mine. Numerical checks ran in a scratch directory (deleted) with numerics/.venv/bin/python -I; the project's own averaging code (ym_oneloop.py, CMP 109 (0.4) with all permutation staircases) was used for the 4D real-space checks.

## 0. Headline

- No stated conclusion is overturned. The proved items P1–P7 are confirmed by rederivation and by numerics that reproduce the author's numbers to all printed digits.
- The most important correction: Theorem 6.1's hypothesis (b), uniform invertibility of the bordered one-step matrix 𝔅_j(K), is not what Balaban CMP 95 Prop. 1.1 states. Prop. 1.1 is for the abelian propagator with the Gaussian kernel at a = 1, not for the δ-constrained umklapp block with the level-j form Δ_j. The hypothesis is true and elementary; a proof sketch is in §5 below. It must be written, not cited.
- Second correction: Theorem 4.1 is fully proved only for m = 0. For m = 1, 2 the written Step 4 is a sketch. The sketch is right (I checked that K-derivatives of the continuum terms do not grow with |l|, so no logarithm appears), but the uniformity of the derivative bound near K = 0 is not written. Numerics show the clean L^{−2} rate for first and second differences.
- Third correction: Lemma 3.1(iii) states that |K + 2πl|² ≠ 0 for complex K in the strip |Im K_ν| < π. That is false (example in §4). The strip |Im K_ν| < π/2 works. The conclusion (some strip of analyticity, exponential decay) stands.
- New positive finding (§6): the numerics expand the one-loop determinant around the plane-wave background, which is not the constrained minimizer and has J ≠ 0. I show this changes w(p) only at O(p⁴), so β_{j+1}(0), the p² coefficient, is unaffected. This supports representation (6.1) (ledger C4) at the order that matters.
- The structural finding (5) is correct: β_{j+1}(0) depends on the background dependence of the level-j constrained Hessian. J = 0 at the constant abelian field removes the Lagrange term only. The soft vertices Γ_j^{(3)}, Γ_j^{(4)} contain the second derivative of the minimizer map and the Wilson cubic vertex composed j times; they are not functions of Δ_j.

## 1. Lemma 1.1 (linearization of the averaging at U = 1)

Rederivation. CMP 109 (0.4) averages (1/i) log of the loop Γ ∪ [x,x′] ∪ (−Γ′) ∪ (−c) over Γ ∈ G(c_−,x), Γ′ ∈ G(c_+,x′) with uniform weights, then sums over x ∈ B(c_−) with weight L^{−4}, then multiplies by U(c). (0.12) replaces the two contour families by Federbush averages M({U(Γ)}), with (0.8): (1/i) log M({e^{iA_j}}) = (1/n)ΣA_j + higher order. At first order in B both definitions give the same thing: the mean over the family of the sum of B along the contour. The loop sum is Σ_Γ B + Σ_{seg} B − Σ_{Γ′} B − B_c, and the final U(c) factor restores +B_c. Summing with L^{−4} over x gives

  Q̃B(c) = Q_L B(c) + λ(c_−) − λ(c_+),  λ(y) = L^{−4} Σ_{x∈B(y)} mean_{Γ∈G(y,x)} Σ_{b∈Γ} B_b,

using G(c_+, x′) = G(c_−, x) + Le_μ. No adjoint action appears at U = 1, so Q̃ is color-diagonal. Confirmed.

Sign note. Lemma 1.1 gives Q̃ = Q_L − D′Λ with (D′λ)(c) = λ(c_+) − λ(c_−). Lemma 1.4 writes Q̃ = Q + D′Λ. The proof of Lemma 1.4 is abstract in Λ, so this is a notational inconsistency only.

Numerical check (4D, n = 6, L = 3, the project's own family average with all permutation staircases, linearized by JAX at U = 1): the color-off-diagonal entries of Q̃ are exactly 0; |Q̃ − Q_L|_max = 0.123 (the gauge term is not zero); the coarse curl of (Q̃ − Q_L)B for random B is 2·10^{−13} (max entry of (Q̃ − Q_L)B is 1.48), so Q̃ − Q_L maps every B to an exact coarse gradient. Lemma 1.1 holds for the full contour-family average, not only for one staircase.

## 2. Lemma 1.2 (composition of plain averages)

Odd L, L′, centered blocks: (Q_{L′}Q_LB)_μ(Y) = (LL′)^{−4} Σ_{y∈B′(Y)} Σ_{x∈B(y)} Σ_{m<LL′} B_μ(x + m e_μ), using B(y + i′Le_μ) = B(y) + i′Le_μ. The union of B(y) over y ∈ B′(Y) is Y + {−(Lh′+h), …, Lh′+h}⁴ with Lh′ + h = (LL′−1)/2. So the union is the centered block of side LL′. Exact. Confirmed.

Even L. There is no centered block with an integer center. With blocks y + {−a, …, L−1−a}⁴ (offset a) the same computation gives the composite block of side LL′ with offset La′ + a. Composition is still exact. The composite offset is self-similar only for corner blocks (a = 0), which is what the numerics use for L = 2 (anchor (L−1)//2 = 0). The symbol (2.3) does not depend on the offset: a shift of the block by s multiplies χ_M(k_l) by a phase e^{−ik_l·s}, and (2.3) contains only |χ_M|². So Theorem 4.1 holds for even L with corner blocks as well.

Momentum-space check (my own implementation of (2.3), K = (1.1, −0.7, 0.4, 2.0)): |T_3[Δ_9] − Δ_27| = 1.2·10^{−11}, |T_3[Δ_3] − Δ_9| = 3.6·10^{−14}, |T_9[Δ_3] − Δ_27| = 1.2·10^{−11} (entries up to 8.7). Composition T_L^j = S_{L^j} confirmed in the symbol form.

## 3. Lemma 1.4, Prop. 1.5, and formula (2.3)

Lemma 1.4. Both directions use B → B + Dν with ⟨B,ΔB⟩ unchanged (ΔD = 0, Δ symmetric). The (≥) direction needs one scalar condition per block on ν (block mean), the (≤) direction needs ν at the coarse sites only. Both are always solvable. Confirmed. The hypothesis "Q̃(B + Dν) = Q̃B + D′(ν|_coarse)" is the linearized form of CMP 98 p. 24, (Ū^u)_c = u(c_−)Ū_c u^{−1}(c_+); verified in the OCR (line 366).

Prop. 1.5. The composition S_{L′}∘S_L = S_{LL′} is iterated minimization: min over {Q_{LL′}B = V} equals min over V_1 with Q_{L′}V_1 = V of min over {Q_LB = V_1}. This is true for any function, so "Δ positive" (R2 Prop. 3.1) is not needed. The Hessian-of-constrained-minimum statement needs J = 0 at V = 1, which holds since ∇A(1) = 0. Confirmed.

Numerical check (4D, n = 6, L = 3, the project's own Q̃ at U = 1 and its Wilson Hessian; Schur complements by sparse LU of the ε-regularized KKT system, ε = 10^{−10}): |S_{Q̃}[Δ_0] − S_{Q_L}[Δ_0]|_max = 5·10^{−10} with entries up to 6.6 (the difference is at the regularization level). Lemma 1.4 holds with the real Balaban averaging in 4D, not only with a single staircase in 2D.

Formula (2.3). Rederived: with f(x) = ∫dk/(2π)⁴ e^{ikx} f̂(k), the coarse Fourier component is V̂(K) = M^{−4}Σ_l χ_M(k_l)R_M(k_l)B̂(k_l), with χ_M = Π_ν sin(Mk_ν/2)/(M sin(k_ν/2)) and R_M = diag(K̂_μ/k̂_μ). Parseval on both lattices gives the per-K problem with cost M^{−4}Σ_l B̂_l^†Δ_0(k_l)B̂_l. Longitudinal fine components cost nothing and feed only the K̂ direction of the constraint, because Q̂_M(k)k̂ = χ_M(k)K̂ exactly. The transverse problem gives [P′_T (M^{−4}Σ_l Q̂_lΔ_0^+Q̂_l^†) P′_T]^{−1} on T′, which is (2.3). The K̂ component of the constraint is matched for free since χ_M(k_0) ≠ 0 on the BZ. Δ_M(K)K̂ = 0 and Δ_M(0) = 0 follow. Surjectivity on T′: the only vector w with R^†w ∝ k̂_0 is w ∝ R^{−†}k̂_0 = (|k̂_μ|²/K̂_μ^*)_μ, and ⟨K̂, w⟩ = |k̂_0|² ≠ 0, so w ∉ T′. The author's reason ("since R k̂_0 = K̂") is loose, the conclusion is right. Confirmed.

Numerical check including normalization (new): on the 6⁴ torus with L = 3 the coarse momenta are K ∈ {0,π}⁴ and the umklapp sum is the same as in (2.3). The Fourier symbol of the real-space Schur complement (with the project's SU(2) Hessian, B = B^aσ^a/2, normalized trace) at K = (π,0,0,0), (π,π,0,0), (π,0,π,π) equals c_N·(2.3) with c_N = 0.250000 (spread of the entry ratios 3·10^{−15}, 5·10^{−11}, 3·10^{−11}; zero entries agree to 2·10^{−9}). The author's d = 2 check had the normalization only "up to the explicit constant"; in d = 4 the constant is exactly ¼ as stated in §2.1.

## 4. Fixed point (3.1) and Lemma 3.1

Limit M → ∞ of each term of (2.3) with q = K + 2πl: M^{−4}χ_M² → M^{−4}χ_∞²(1 + O(k²)) ... more precisely M^{−4}χ_M(k_l)²·R_MP_TR_M^†/|k̂_l|² → χ_∞²·R_∞P_T^cR_∞^†/|q|² because M^{−4}·M²·M² = 1 (d = 4 scale invariance). Signs (−1)^{l_ν} from sin((K_ν+2πl_ν)/2) drop in the square. Confirmed.

Summability: |t_l^c| ≤ C(1+|l|)^{−2}Π_ν(1+|l_ν|)^{−2}, and Σ_l |l|²|t_l^c| < ∞ (worst direction l = (n,0,0,0): Σ n²·n^{−4}). Confirmed for m ≤ 2 as stated. With the sharper bound |R_∞,μ| ≤ C/(1+|l_μ|) one gets more, not needed.

Lemma 3.1(i), fixed-point equation. I checked the per-term identity: for k = k_{l′} = (K + 2πl′)/L and l = l′ + Ll″,

  L^{−4} χ_L(k)² χ_∞(k,l″)² = χ_∞(K,l)²·L^{−4},  R_L(k)R_∞(k,l″) = L·R_∞(K,l),  1/|k + 2πl″|² = L²/|K + 2πl|²,

so L^{−4}χ_L²R_L t_{l″}^c(k) R_L^† = t_l^c(K) exactly. One point the author does not write: T_L inserts Δ_∞(k)^+ = P_T(k)S_∞(k)P_T(k), with transverse projectors at the fine momenta. These projectors are absorbed because R_L(k)k̂ = K̂ exactly, so P′_T R_L(1 − P_T(k)) = 0. Numerically: |T_3[Δ_∞] − Δ_∞| = 6.9·10^{−5} with truncation |l_ν| ≤ 12 inside and outside, against truncation errors 1.6·10^{−4} (12 vs 8) and 4.1·10^{−5} (16 vs 12). Confirmed to truncation accuracy.

Lemma 3.1(ii), Maxwell normalization. The l ≠ 0 terms are O(|K|²) (each direction with l_ν ≠ 0 carries sin²(K_ν/2)). For the l = 0 term one must also check that P′_T (lattice, built from K̂) and P_T^c(K) (continuum) differ at O(K) but P′_T t_0 P′_T has no O(K) relative correction: the O(K) part of P_T^c − P′_T is E with E_{μν} ∝ (K_μ − K_ν)K_μK_ν/|K|², and P_T^c E P_T^c = 0. Confirmed. My numbers for |Δ_∞ − |K̂|²P′_T|/|K̂|²: 9.6·10^{−3}, 1.1·10^{−3}, 9.6·10^{−5} at |K| = 0.3, 0.1, 0.03 along a generic direction (author: 1.6·10^{−2}, 1.8·10^{−3}, 1.6·10^{−4} along his direction). Quadratic decay confirmed.

Lemma 3.1(iii), CORRECTED. The text says |K + 2πl|² = 0 for complex K "forces |Im K_ν| ≥ π in some ν". Counterexample: Σ_ν(x_ν + iy_ν)² = 0 needs |x| = |y| and x ⊥ y with x = Re K + 2πl; take l = (1,0,0,0), Re K = (−π + 0.1, 0, 0, 0), so x ≈ (π+0.1, 0,0,0), and y = (0, 0.75π, 0.75π, 0) has |y| ≈ 1.06π > |x| possible with each |y_ν| < π. So zeros exist inside |Im K_ν| < π. In the strip |Im K_ν| < π/2 one has |Im K| < π ≤ |Re K + 2πl| for l ≠ 0, so no zero. The strip exists, the stated width is wrong, the conclusion (exponential decay at some rate δ_*) stands; δ_* is not computed (ledger O2, agreed).

Side remark in Lemma 3.1(i), garbled: "b = L^{−4}·L (sum of L links) = L^{−3}". Q_L applied to a constant link field B gives LB (L⁴ block points, L links each, weight L^{−4}), which is the correct dimension-0 scaling of a link angle over a segment of length L. The remark is not load-bearing.

## 5. Theorem 4.1 (rate L^{−2j}) and Corollary 4.2

Step 2 as written contains an abandoned reflection-parity argument ("this argument does not apply at fixed K") followed by the correct one. The correct one: k̂_μ = 2i sin(k_μ/2)e^{ik_μ/2}, so R_M P_T R_M^† = diag(K̂/(2is))(1 − ss^T/|s|²)diag(K̂/(2is))^† with s = sin(k/2); the phases E(k) cancel exactly. I verified this identity by direct multiplication. The remaining lattice-vs-continuum differences are 2 sin(x/2) vs x (even, relative O(x²), bounded ratio on |x| ≤ π) and χ_M vs χ_∞ (even). So the relative error of each umklapp term is a smooth even function of k_l of size O(|k_l|²) = O((1+|l|)²/M²). Head sum ≤ CM^{−2}Σ(1+|l|)²|t_l^c| < ∞. Tail Σ_{|l|_∞>M/2}|t_l^c| ≤ CM^{−3}. Step 1 (sandwich (4.2)) is right; the l = 0 difference is O(M^{−2}) uniformly as K → 0 because the relative error is O(|K|²/M²) and |t_0^c| ~ |K|^{−2}. Theorem 4.1 for m = 0: CONFIRMED, proved.

Step 4 (derivatives), m = 1, 2. The written argument first gets CM^{−2}log M for |α| = 2 and then claims a refinement without writing it. I checked the refinement: K-derivatives of t_l^c fall on sin(K_ν/2) (factor cot(K_ν/2)/2, bounded for K away from 0), on K̂_μ/(iq_μ) (factor bounded by C(1 + 1/|K̂_μ|)·... bounded away from K = 0), and on 1/|q|² (factor 2/|q|, decaying). None grows with |l|. So |∂^α t_l^c| ≤ C_α(1 + |K|^{−|α|})|t_l^c| and the tail stays M^{−3}. The derivatives of the lattice relative error ε(k_l) are M^{−|β|}(∂^βε)(k_l) = O((1+|l|)^{2−|β|}M^{−2}), which is better than the undifferentiated error. So the head is CM^{−2} for every α, with no logarithm. What is not written: the sup over K near 0 for the derivatives of Δ_M − Δ_∞, where P′_T is not smooth. The difference Δ_M − Δ_∞ is itself smooth (both are symbols of gauge-invariant reflection-symmetric kernels, both = |K̂|²P′_T(1 + O(K²)) with the P′_T singularity cancelled), and a product-rule count with X = P′_T(S_M − S_∞)P′_T ~ M^{−2}, ∂X ~ M^{−2}/|K|, ∂²X ~ M^{−2}/|K|² and Δ ~ |K|², ∂Δ ~ |K|, ∂²Δ ~ 1 gives all terms O(M^{−2}) near K = 0. This is the missing paragraph. Grade: CONFIRMED in substance, proof for m = 1, 2 incomplete as written (ledger O3 says so for the log; the K → 0 point should be added to O3).

Numerics (mine, independent code). |Δ_M − Δ_∞| at K = (1.1, −0.7, 0.4, 2.0): 1.007, 0.129, 0.0147, 0.00170 for M = 3, 9, 27, 81; ratios 7.80, 8.79, 8.64 (L² = 9). The first three numbers agree with the author's to all printed digits. Other K: (0.9,−0.6,0.3,1.4): ratios 8.37, 8.89; (2.5,2.0,−2.8,1.0): 6.17, 8.42; (0.2,0.1,−0.15,0.05): 8.99, 9.00; (3,0,0,0): 7.56, 8.78. Central differences (h = 0.02) at (0.9,−0.6,0.3,1.4), max over directions and entries: first derivative errors 0.507, 0.0625, 0.00708 (ratios 8.1, 8.8); second derivative 1.093, 0.141, 0.0161 (ratios 7.8, 8.8). The author's derivative numbers (0.279/0.0348/0.00395 and 0.605/0.0775/0.00884) use a different norm or component; the ratios agree. Δ_M(10^{−4}e_1) = 10^{−8}: Δ_M(0) = 0 confirmed.

Corollary 4.2. Hölder with exponents 2/θ and 2/(2−θ) on |f|^θ·(e^{δ′|x|}|f|^{1−θ}) gives the stated inequality; the second factor is finite iff δ′ < δ(1−θ). So ρ = L^{−2θ}, θ = 1 − δ′/δ. CONFIRMED, conditional on sup_M‖Δ_M‖_δ < ∞ (not proved there; ledger O2).

## 6. Representation (6.1) and the expansion point (new check, supports C4)

NUMERICS §1 derives log Z = const + log det(D^TD) − ½ log|det Bord| at the constant abelian field, where U_0 is an exact stationary point (J = 0). The momentum code (NUMERICS §5) applies the same formula to a plane-wave background U_0(a) = exp(ia A_bg σ_3/2), A_bg = e_2 cos(px_1), with V_a := Ū(U_0(a)). The plane wave is not the constrained minimizer U_1(V_a) of A under Ū(U) = V_a: the first-order minimizer is H_1Q̃A_bg, whose Fourier support is the whole umklapp family of p, while A_bg has a single momentum. Also J = Δ_L(Lp)V̂ ≠ 0. So the code expands around a non-critical point of the constrained problem. I checked whether this matters for β = p² coefficient of w(p):

(a) Tadpole. Φ(U) := log det G(U) − ½ log|det Bord(U)| is invariant under all fine gauge transformations and under global color rotations. Its first variation at U = 1 is an invariant vector in the adjoint, hence 0. So second-order displacements of the expansion point do not contribute.
(b) First-order displacement δ_1 = H_1Q̃A_bg − A_bg. For p ∥ e_1 and polarization e_2 the coarse field is exactly transverse, W = Δ_L(K)V̂ = L^{−3}χ(p)|K̂|²(1 + O(p²))e_2, and the l = 0 component of H_1Q̃A_bg is χ(p)²L^{−2}|K̂|²/|p̂|²·(1+O(p²))e_2 = (1 + O(p²))e_2. The umklapp components (only l = (l_1,0,0,0) survive since sin(πl_ν) = 0 kills the others) are O(p³). The cross term Φ″[A_bg, δ_1^{(l≠0)}] is O(p)·O(p³) by the Ward identity Φ″[X, Dν] = −Φ′[i[X,ν]] = 0 (tadpole zero); the l = 0 modification gives w·O(p²) = O(p⁴).
(c) The Lagrange term −⟨J, C̃^{(2)}⟩ with J = O(a p²) contributes to w through a trace against the normal first-order vertex, which is O(p) by the same Ward identity (at p = 0 the vertex is the commutator [ν, K_0] and the trace of a commutator vanishes).

So w_true(p) − w_code(p) = O(p³), even in p, hence O(p⁴), and β_{j+1}(0) is the same. The same argument applies at every level j with A_j^{tree} in place of A. This closes a gap that NUMERICS.md does not mention (its §1 derivation assumes J = 0). It does not touch V1 (order-g⁰ completeness of (1.3)), which stays as in R2_VERIFY.

## 7. Lemma 5.0 and the structural finding (5)

Lemma 5.0. U_j(V_F) = U_0^F at every level (R2_VERIFY §2.4) and ∇A(U_0^F) = 0 give ∇A_j^{tree}(V_F) = ∇A(U_j(V_F))·∂U_j/∂V = 0, so J = 0 at every level and the Hessian of A_j^{tree} at V_F is the constrained second variation of A at U_0^F under the composed linearized constraint. The composed constraint is the chain rule applied to CMP 98 (91). CONFIRMED. What the F-expansion determines: Δ_j(F) = Δ_j + Γ_j^{(3)}[V_F] + ½Γ_j^{(4)}[V_F,V_F] with V_F = Fx_1e_2 a linear potential, so the F¹ coefficient is ∂_pΓ_j^{(3)}(0;k) and the F² coefficient is ∂_p∂_{p′}Γ_j^{(4)}(0,0;k) plus O(F²) from the constraint. These are exactly the p-Taylor data that enter w″(0). The author's sentence "to the order needed" is right; this makes it precise.

Structural finding (5): is the background dependence of the level-j quadratic form determined by Δ_j alone? No. Three independent reasons.
(i) Exact: Γ_j^{(3)} = third derivative of A∘H_{1,j} at V = 1 = A‴(DH,DH,DH) + 3Δ_1(D²H,DH) (A′(1) = 0 removes the J-type term). D²H, the second derivative of the composed minimizer map, is built from the Wilson cubic vertex and the second-order term of the averaging constraint, composed j times. These are not functions of the quadratic symbol Δ_j.
(ii) Telescoping view: D_{j+1}(F) − D_j(F) = −½ log det[Δ_j(F)|_{ker Q̃_{F,j+1}}] + ghost, with Δ_j(F) the background Schur complement. Gauge covariance fixes the minimal-coupling part of Δ_j(F) from Δ_j, but not the non-minimal parts (the lattice analogue of the spin coupling 2iF[a_μ,a_ν] and of the irrelevant operators of the perfect action). In the continuum check R2_VERIFY §2.2, the spin term supplies +2x² per polarization of the 11/3; without it the orbital part alone gives −1/6 per polarization. So the non-minimal part is not a correction, it carries most of β.
(iii) The irrelevant operators of A_j^{tree} have O(1) coefficients in level-j lattice units at every j (they converge to fixed values, they do not vanish), and the one-step determinant integrates fluctuation momenta over the whole BZ, so they contribute O(1) to the scheme constant of each β_{j+1}(0).
What J = 0 removes: the Lagrange term in (1.5) at the constant field, nothing else. At a plane-wave background J ≠ 0 but it is harmless at order p² (§6). So the finding stands: convergence of β_j(0) needs convergence of the F¹, F² coefficients of the background Schur complement, i.e. Lemma 5.1, which is open. CONFIRMED.

## 8. Theorem 6.1 (Lipschitz) and Theorem 7.1

Proof structure. Each per-K block is affine in the data; inverses bounded by b are Lipschitz with constant b²; products and traces of bounded matrices are Lipschitz; the BZ is compact. The p → 0 limit uses w(0) = 0, evenness, and the chain rule for w″(0). CONFIRMED as a conditional statement.

Correction 1 (norm). Φ = c_norm w″(0)/(2L⁴) depends only on the p-Taylor data at p = 0 up to order 2 of Γ^{(3)}, Γ^{(4)} and on Δ with k-derivatives up to order 2. The norm (6.2) takes sup over |p| ≤ p_0, which is more than needed; Lemma 5.1 is stated for the Taylor data. For Theorem 7.1 to chain, state Theorem 6.1 in the Taylor-data norm (the same proof works). Not an error, a mismatch to fix.

Correction 2 (hypothesis (b)). CMP 95 Prop. 1.1 (verbatim in the OCR, line 772: "G is a symmetric operator on L²(T) and ‖GJ‖, ‖∇GJ‖, … ≤ γ_0^{−1}‖J‖ with a positive constant γ_0 independent of k, T, and depending on d only (if we put a = 1). This implies the bound from below: Δ_a = G^{−1} ≥ γ_0(Δ + I)") is for the abelian Gaussian-kernel propagator at a = 1 in Balaban's 1984 scheme. It is not a statement about the δ-constrained bordered matrix 𝔅_j(K) = [[Δ_j ⊕ + DD^†, Q̃^†],[Q̃, 0]] with the level-j form Δ_j. The needed statement is elementary. Sketch: ‖𝔅(K)^{−1}‖ ≤ b uniformly iff (1) σ_min(Q̃(K)) ≥ c, which holds since the l = 0 block χ_L(k_0)R_L(k_0) has norm ≍ L on the BZ; (2) Δ_j ⊕ + DD^† ≥ c on ker Q̃(K). For (2): on the transverse part the cost is ≥ c Σ_l |k̂_l|²|B̂_{T,l}|² given Δ_j(k) ≥ c|k̂|²P_T(k) uniformly in j (true: S_M ≤ C(1 + |K|^{−2}) uniformly in M from the term bounds of §3.1, so Δ_M ≥ c|K̂|²P′_T); the soft l = 0 component is tied to the umklapp components by the constraint, |P′_TQ̂_0B̂_{T,0}| = |P′_TΣ_{l≠0}Q̂_lB̂_{T,l}| ≤ C|K|Σ_{l≠0}|B̂_{T,l}| because χ_L(k_l) = O(|K|) for l ≠ 0, and P′_TQ̂_0 is injective on T(k_0) with norm ≍ L, so |B̂_{T,0}|² ≤ C|K|²Σ_{l≠0}|B̂_{T,l}|² ≤ C′·(cost); the residual gauge directions (L⁴ − 1 per K) get the uniform gap of D^†D with λ pinned at the anchor. This should be written as a lemma. Until then hypothesis (b) is unproved, not cited. The sentence "the gauge-fixed one-step form has a mass gap of order 1 in coarse units uniformly in the level" is the right idea; the citation does not deliver it for this operator.

Theorem 7.1. Conditional statement: CONFIRMED (Theorem 4.1 + Lemma 5.1 + Theorem 6.1 chain once Correction 1 is applied). The unconditional subsequence remark needs uniform C³ bounds of the vertex data in momentum space. The cited CMP 96 p. 246 (verbatim in OCR lines 1150–1153: "derivatives of H_j up to third order, and their local Hölder norms as in (2.67), are uniformly bounded and have a uniform exponential decay with a decay rate depending on d only") covers derivatives of H_j up to third order. Γ_j^{(4)} is a fourth derivative of A∘H_{1,j} and involves H‴ (and A″″, A‴ with H″, H′). Third order is enough for Γ^{(3)}; for Γ^{(4)} the uniform bound is plausible from Balaban's analyticity method but is not in the quoted sentence. Remark: UNSUPPORTED as cited for the Γ^{(4)} component.

## 9. Literature check

| Claim in U3 | Source checked | Result |
|---|---|---|
| HN94 eq. (17) with [15] = Bell–Wilson; "The free field problem has been studied and solved in [15] a long time ago" | arXiv text line 695; ref list line 2273 | verbatim, CONFIRMED |
| HN94 (19)–(23), "after j RG steps", "Taking the j → ∞ limit" | lines 700–845 | present, CONFIRMED |
| HN94 "b = 2^{−(d+2)/2} in d dimensions. Only this choice leads to a FP" | line 849 | verbatim ("FP [5, 15]"), CONFIRMED |
| HN94 "κ = ∞ … ρ(r) ∼ exp(−1.45|r|)" | line 868 | verbatim, CONFIRMED |
| HN94 "largest irrelevant eigenvalue of the FP is 1/4 in agreement with the observed convergence rate in the number of blocking steps k" | line 1318 | verbatim, CONFIRMED. Caveat: this sentence is in the section on the numerical cooling of the full nonlinear σ-model FP action, not about the free two-point function. It is still the same block factor 2 and rate 1/4. |
| HN94 Iwasaki [4], Gawędzki–Kupiainen [17] = CMP 77 (1980) 31 | lines 847, 2275 | CONFIRMED |
| BW96 §3 title, (3.1), "It is remarkable that this construction is gauge covariant", (3.3)–(3.4) "integrated continuum transformation" | lines 865–916 | verbatim, CONFIRMED |
| BW96 (3.6) A_μ(p) = Σ_l a_μ(p+2πl)Π_μ(p+2πl)(−1)^{l_μ}, Π_μ(p) = (p̂_μ/p_μ)Π(p) | line 955 | CONFIRMED |
| BW96 (3.13) g(p) = Σ_l g_{μν}(p+2πl)Π_μ(p+2πl)² + α + βp̂² | line 1079 | CONFIRMED |
| BW96 (3.18) "fixed point action in a gauge invariant form" | line 1132 | CONFIRMED |
| BW96 (3.29)–(3.30), "blocking from the continuum corresponds to an infinite blocking factor" | lines 1550–1566 | CONFIRMED |
| BW96 fig. 3 fit exp(−ci), c = 6.937 | line 1406 ("for the free gluon (along the diagonal) … c = 6.937 excluding the point (0,0,0,0)") | CONFIRMED |
| Bell–Wilson 1974 abstract "within certain limits, no such parameter need be adjusted" | scilit record of Phys. Rev. B10 3935 | CONFIRMED (abstract only) |
| Wilson–Bell 1975 abstract "fixed points only for b = 2^{−5/2}" | scilit record (exponent garbled as "252") | title, journal, and the b-statement CONFIRMED; the sign of the exponent not readable in the record. Consistent with HN94's 2^{−(d+2)/2} at d = 3. |
| CMP 95 Prop. 1.1 quote; pp. 25–26 "γ_0 ≤ Q′_kG′_kQ′*_k ≤ γ_1", "γ_0 dependent only on d, γ_1 = a^{−2}" | OCR lines 454–466, 772–776 | verbatim, CONFIRMED (scope: abelian, Gaussian kernel; see §8) |
| CMP 95 Prop. 1.2 "(1.110) … constant O(1) depending on d only" | OCR lines 901–904 | CONFIRMED |
| CMP 96 p. 246 "derivatives of H_j up to third order …" | OCR lines 1150–1153 | verbatim, CONFIRMED |
| CMP 98 p. 31 "fundamental fact", (89)–(91), locality | OCR lines 713–734 | verbatim, CONFIRMED |
| CMP 98 p. 24 gauge covariance (Ū^u)_c = u(c_−)Ū_c u^{−1}(c_+) | OCR line 366 | CONFIRMED |
| CMP 109 (0.4), (0.8), (0.11), (0.12), contour families G(y,x) by permutations | OCR lines 182–265 | CONFIRMED |

The author's identification of (3.1) with BW (3.13) at α = β = 0 up to phases: BW's triangular weight (3.1) is the convolution of the unit segment with the unit segment in the link direction, and the author's χ_∞R_∞ is the unit cube times the unit segment; in the link direction both are the triangle of base 2 centered at the link center, which is BW's half-integer x. Consistent. The term-by-term check of (3.18) was not done by the author and not by me.

## 10. Grades

Ledger items (U3 §8):
- P1 Lemma 1.1: CONFIRMED (sign convention Q̃ = Q − D′Λ, cosmetic).
- P2 Lemma 1.2: CONFIRMED; even L: exact for any fixed offset, symbol offset-independent (added).
- P3 Lemma 1.3, 1.4, Prop. 1.5: CONFIRMED (4D check with the real averaging, 5·10^{−10}; "positive form" not needed).
- P4 Prop. 2.1 / (2.3): CONFIRMED including c_N = ¼ (ratio 0.250000 at three K).
- P5 Lemma 3.1: CONFIRMED for (i), (ii); CORRECTED for (iii): the zero-free strip is |Im K_ν| < π/2, not π; side remark b = L^{−3} garbled. Conclusions unchanged.
- P6 Theorem 4.1: CONFIRMED for m = 0 (proved); m = 1, 2 CONFIRMED in substance, proof incomplete as written (no-log refinement verified by me; K → 0 derivative uniformity missing). Corollary 4.2: CONFIRMED, conditional.
- P7 Lemma 5.0: CONFIRMED; made precise what the F-expansion determines.
- P8 Theorem 6.1: CONFIRMED as conditional; CORRECTED: (6.2) should be the Taylor-data norm; hypothesis (b) is not covered by CMP 95 Prop. 1.1 and needs its own (elementary) lemma, sketched in §8.
- P9 Theorem 7.1: CONFIRMED conditional on Lemma 5.1 and on the lemma for (b); the unconditional subsequence remark is UNSUPPORTED as cited for Γ^{(4)} (needs fourth-order uniform bounds; CMP 96 quote gives third order).
- C1 uniform bounds: quotes CONFIRMED verbatim; scope CORRECTED (abelian Gaussian-kernel propagator, not 𝔅_j).
- C2 CMP 98 composition: CONFIRMED.
- C3 literature fixed point: CONFIRMED (all quotes verbatim; Wilson–Bell exponent sign unverified from primary; HN "1/4" sentence is about the nonlinear FP).
- C4 representation (6.1): CONFIRMED at order p² with the new argument of §6 (plane-wave expansion point harmless); V1 unchanged.
- Structural finding (5): CONFIRMED.
- Headline bullet 4 (no rigorous convergence statement in the literature): CONFIRMED for the sources opened; not exhaustive (Gawędzki–Kupiainen CMP 77 and Balaban CMP 89 not opened, as the author says in O5).

Open items O1–O5: agreed. Add to O3 the K → 0 derivative uniformity. Add a new item: O6, uniform invertibility lemma for 𝔅_j(K) (hypothesis (b) of Theorem 6.1).

## 11. Numerical checks run (scratch, deleted)

sym.py (numpy, my own implementation of (2.3), (3.1), the one-step map T_L via pseudo-inverses on T(k)): composition T_3Δ_9 = Δ_27 (1.2·10^{−11}), T_9Δ_3 = Δ_27 (1.2·10^{−11}); fixed point T_3Δ_∞ = Δ_∞ (6.9·10^{−5} vs truncation 4·10^{−5}–1.6·10^{−4}); Δ_27K̂ = 4·10^{−15}, Hermitian 6·10^{−16}, positive on T′; rate table and derivative table as in §5; small-K normalization as in §4; Δ_M(≈0) = 10^{−8}.
real.py (project code ym_oneloop.py: Lat(6,3), averaging at U = 1, hessian_matrix; scipy splu on the 15744-dim ε-regularized KKT): gradient at U = 1 exactly 0; Q̃ color-diagonal exactly; coarse curl of (Q̃ − Q_L)B = 2·10^{−13}; |S_{Q̃} − S_{Q_L}| = 5·10^{−10}; symbol vs (2.3): ratio 0.250000 at three K with spread ≤ 5·10^{−11}, zero entries ≤ 2·10^{−9}.
