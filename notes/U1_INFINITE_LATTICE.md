IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# U1′: the composed one-loop increment on the infinite lattice

Written 2026-10-27 (Claude, Fable 5.1). Scope: restate Lemma U1 of R2_TELESCOPING.md on the infinite lattice (as R2_VERIFY.md Sect. 2.8 recommends), derive the universal coefficient from cited lattice one-loop results, and reduce the rest to named inputs. Sources read: THEOREM2.md (all, incl. §8a), R2_TELESCOPING.md Sect. 3–6, R2_VERIFY.md, numerics/NUMERICS.md §1, §5, §6, numerics/ym_momentum.py, CMP 109 OCR text for (0.2), (0.4), (0.14)–(0.23), (1.3)–(1.5), (5.37)–(5.43), Lüscher–Weisz hep-lat/9505011 (text layer of the PDF), Capitani hep-lat/0211036 (text layer), INSPIRE abstracts of Dashen–Gross 1981 and Hasenfratz–Hasenfratz 1980. Numerical checks ran in a scratch directory (deleted) with the project venv; ym_momentum.py and ym_oneloop.py were used read-only. No file in the project was edited except this one.

Rule for this text: every step is marked [proved here], [cited] (with the quote), [verified numerically], or [open].

## 0. Conventions

- Fine lattice Z⁴, spacing 1 (Balaban's ε; d = 4 so ε^{d−4} = 1). Wilson action (0.2): A(U) = Σ_p [1 − Re tr̂ U(∂p)], tr̂ the normalized trace. Weight 1/g_B². R2 P2 (verified): 1/g_B² = 2N/g², g the standard coupling.
- Lie algebra: B = B^a σ_a/2 (SU(2)); background U_0(a) = exp(i a A σ_3/2) with A a link field, A_2(x) = cos(p x_1), all other components 0 (transverse plane wave, momentum p along e_1, polarization e_2). This is the background of ym_momentum.py.
- c := 11N²/(12π²) (R2 (1.13), verified): SU(2): c = 0.371511; c log 2 = 0.25751; c log 3 = 0.40815. c_2 := c/2 = 11N²/(24π²) is the coefficient of ln(1/p²).
- β_j(0): Balaban's zero-coupling increment of step j, (5.42)/(1.22), in the convention 1/g_{j}² = 1/g_{j−1}² − β_j (0.18)/(0.20) as printed (R2_VERIFY Sect. 1).
- "Composed k-step transformation": the exact composition of k steps (0.19), R2 (2.1), verified R2_VERIFY 2.5; residual gauge group G_k = {u : u = 1 on T^{(k)}} (R2_VERIFY 2.3(a)).

## 1. Objects and the statement U1′

### 1.1 The composed one-loop integral in a background

Let Q̃ = Q̃_k(U_0) be the linearization at U_0 of the k-fold composed averaging Ū^{(k)}, D_k = D_k(U_0) the covariant derivative on Lie(G_k) (λ = 0 on T^{(k)}), D = D(U_0) the covariant derivative on all gauge parameters, Δ = Δ(U_0) the Hessian of A at U_0. Define, as in NUMERICS.md §1 (formula confirmed in R2_VERIFY 2.3),

  log Z_k^{(1)}(U_0) := log det(D_k^T D_k) − ½ log |det Bord(U_0)|,  Bord = [[Δ + D_k D_k^T, Q̃^T], [Q̃, 0]].   (1.1)

On a finite torus of side m L^k this is a finite-dimensional expression; the per-cell second derivative at a = 0 has an infinite-volume limit given by the Brillouin-zone average of ym_momentum.py (the kernels have range one level-k cell, the constrained propagator is massive, NUMERICS §5). Define

  w_k(p) := lim (1/N_cells) ∂_a² log Z_k^{(1)}(U_0(a))|_{a=0},   S_k(p) := 4 w_k(p) / (L^{4k} (1 − cos p)),   S_k := lim_{p→0} S_k(p).   (1.2)

Normalization [proved here]. For the (1,2)-plaquette at x the angle is a[A_2(x+e_1) − A_2(x)] = −2a sin(p/2) sin(p(x_1+½)); 1 − cos(θ/2) = θ²/8 + O(θ⁴); the translation average of 4 sin²(p/2) sin²(·) is 2 sin²(p/2) = 1 − cos p. All other plaquettes have angle 0. So A(U_0(a)) per fine site = a²(1 − cos p)/8 + O(a⁴), ∂_a² A per level-k cell = L^{4k}(1 − cos p)/4, and S_k(p) is the ratio (one-loop F² term)/(tree F² term per unit 1/g_B²). This is the normalization used in NUMERICS §6 and analyze.py.

### 1.2 Why S_k = Σ_{j≤k} β_j(0)

- Gaussian telescoping, R2 Prop. 3.1 [proved, verified R2_VERIFY 2.6]: the composed constrained Gaussian equals the product of the per-step constrained Gaussians with the level-j Schur complements as per-step forms, which is Balaban's (1.4)–(1.5) structure.
- Identification of the Maxwell coefficient of the per-step determinant with β_{j+1}(0): R2 Sect. 4, resting on (1.3) ("We have written explicitly terms of the order 0 in the coupling constants", CMP 109 p. 260) and (5.37)–(5.43). Verbatim (5.37): "Π_{μν}(p) = β(δ_{μν}Δ(p) − ∂̄_μ(p)∂_ν(p)) + Π′_{μν}(p)", and (5.38): Π′ "can be written in the form of a third order polynomial in the derivatives ∂̄(p), ∂(p)", and p. 298: "the first and second order derivatives of the function Π′_{μν}(p) vanish at p = 0". So for the transverse plane wave the quadratic form ½⟨B, Π B⟩ per cell is β·(tree F² form)·(1 + O(p)), and the limit p → 0 in (1.2) extracts β. Status of the identification: V1 of R2 ([open], plausible). Everything below is about S_k as defined by (1.2); the equality S_k = Σ_{j≤k} β_j(0) is inherited from R2 with its caveat V1.

### 1.3 Statement

U1′(w) (weak). There is R < ∞ with |S_k − c k log L| ≤ R for all k ≥ 1.
U1′(s) (strong). S_k − c k log L → C as k → ∞.
U1′(s) ⇔ U1′(w) plus convergence of the increments β_k(0) = S_k − S_{k−1} → c log L (immediate). U1′(w) is what Lemma D needs through (T2-a1″) (THEOREM2.md (R1), R2 Prop. 5.1).

## 2. The plane wave on the infinite lattice is a legitimate background [proved here, modulo infinite-volume rigor]

R2_VERIFY showed that the constant abelian field is a saddle of the Wilson action on the periodic torus. The plane wave on the infinite lattice avoids this: at a = 0 the constrained, gauge-fixed form Δ + D_kD_k^T on ker Q̃ ∩ (im D_k)^⊥ is positive with a gap (CMP 95 Prop. 1.1 (1.89): "Δ_a = G^{−1} ≥ γ_0(Δ + I)" with γ_0 "independent of k, T, and depending on d only" [cited via R2 Sect. 5.3, quote checked in R2_VERIFY Sect. 1]; measured gap 0.085 at n = 6, L = 3, NUMERICS §4). w_k(p) is the second derivative at a = 0, so only the a = 0 form enters; no large-a question arises.

But the plane wave is not a stationary point of A, and the code's background is not Balaban's constrained minimizer U_k(V). Three corrections must be shown to vanish as p → 0 at fixed k.

Lemma 2.1 (the Lagrange-multiplier term). Balaban's (1.5) contains −2⟨H_{1,j} h C̃^{(2)}(Ū, B), J⟩, J the multiplier of the constrained minimizer, C̃^{(2)} "the second order polynomial in the expansion of Q(U, B)" (p. 261). For the coarse plane wave V = Ū^{(k)}(U_0(a)), J(a) = a J_1 + O(a³) with J_1 = (coarse perfect Maxwell operator)·v = O(p²)·a per coarse bond. Its effect on ∂_a² log Z^{(1)} at a = 0 is −2⟨J_1, c_1⟩ + O(J²), where c(U) := ⟨C̃^{(2)}(U, B)⟩_U is the expectation of C̃^{(2)} in the constrained gauge-fixed Gaussian at background U and c_1 = ∂_a c(U_0(a))|_0. Proof of the form: Bord(a) acquires −J(a)·C̃^{(2)}(a); the terms linear in J in ∂_a²[−½ log det Bord] combine to −J_1·∂_a Tr(Bord^{−1}C̃^{(2)})|_0 = −2⟨J_1, c_1⟩ (the upper-left block of Bord^{−1} is the constrained covariance). Now c is gauge covariant: Δ, D_kD_k^T, Q̃ and C̃^{(2)} all transform covariantly under every gauge transformation u of the background (Ad_u^{−1} preserves "λ = 0 on T^{(k)}"), so c(U^u)(c) = Ad_{u(c_−)} c(U)(c). At U = 1 the covariance is color-diagonal and C̃^{(2)} consists of commutator terms (BCH second-order terms of ordered products; the symmetric average M has no second-order term because there is no symmetric Ad-covariant bilinear map g × g → g), so c(1) = 0. Hence c_1(dλ) = 0 for all λ, c_1 factors through the lattice field strength dA, and c_1 = O(p)·a; with the x_1-reflection symmetry (F_{12} odd, a bond in direction 2 even) the lowest allowed structure is (d†dA)_2, so c_1 = O(p²)·a. Therefore ⟨J_1, c_1⟩ per cell = O(p⁴ a²), and the J-term changes S_k(p) by O(p²) and S_k by 0. The constants depend on k (kernels of range L^k), which is harmless at fixed k. ∎

Lemma 2.2 (minimizer versus plane wave). The constrained minimizer for V = Ū^{(k)}(U_0(a)) is U_0(a) + δ with δ ∈ ker Q̃, δ = −(Δ|_{ker Q̃})^{−1} P ΔA·a + O(a²). Since ΔA = O(p²)A (lattice Maxwell operator on a transverse wave) and the constrained propagator has gap of order L^{−2k} (CMP 95 (1.89)), δ = O(p²L^{2k})·a·A. The one-point function of log Z^{(1)} at U = 1 vanishes (color invariance), so the background change alters ∂_a² log Z^{(1)} per cell by O(p²)·O(p²L^{2k}) a² = O(p⁴L^{2k}a²): zero effect on S_k at fixed k. ∎

Lemma 2.3 (independence of the G_k gauge fixing). With the J-term included, the constrained Hessian Δ_* = Δ − J·C̃^{(2)} at the constrained minimizer satisfies Δ_* D_k = 0 exactly (the restriction of A to the constraint surface is G_k-invariant and the minimizer is a critical point), so the Faddeev–Popov theorem applies exactly: the one-loop integral is the same for Balaban's exponential gauge fixing (0.14)–(0.16) ("we apply the usual Faddeev-Popov procedure ... with u(y) = 1 for y ∈ T^{(1)}", p. 255; composed version R2_VERIFY 2.3(a)) and for the Feynman-type weight exp(−½|D_k^T B|²) with factor det(D_k^T D_k) used in (1.1). By Lemmas 2.1–2.2 the code's quantity differs from this gauge-independent one by o(p²) per cell. Hence S_k is independent of the G_k gauge fixing, although S_k(p) at p ≠ 0 is not. ∎

Remark. The three lemmas are perturbative statements with k-dependent constants of order L^{2k}. They justify lim_{p→0} at fixed k, which is how S_k is defined and how β_j(0) is defined by Balaban ((1.22): limit T^{(j+1)} ↗ Z^d at fixed j). They do not give uniformity in k; see §7.

## 3. What the δ-function constraint does, and an exact decomposition [proved here, verified numerically]

### 3.1 Counting (item (i))

Per level-k cell the fluctuation space has 4(N²−1)L^{4k} real dimensions; the constraint Q̃B = 0 removes 4(N²−1) of them (one per coarse bond per color); the residual gauge group removes (N²−1)(L^{4k} − 1). This is a rank-4(N²−1) condition per cell, not a momentum shell. In momentum space at U_0 = 1, with k = q + 2πn/L^k (q the coarse momentum, n the Brillouin copy) and Π̂(k) the form factor of the composed averaging, the constrained covariance is

  G_c(k) = K^{−1}(k) − K^{−1}(k) Π̂(k)^† [Σ_n |Π̂(q + 2πn/L^k)|² K^{−1}(q + 2πn/L^k)]^{−1} Π̂(k) K^{−1}(k),   K = Δ + D_kD_k^T.   (3.1)

For |k| ≪ L^{−k} the n = 0 term dominates the bracket and |Π̂| → 1, so G_c(k) = K^{−1}(k)·O(k²L^{2k}): the 1/k² singularity is removed. For |k| ≫ L^{−k} the subtraction is O(|Π̂(k)|²) and G_c ≈ K^{−1}. So the constraint acts as a soft infrared cutoff at scale L^{−k} with a profile set by the form factor. The vacuum-polarization log comes from ∫ d⁴k /(k²(k+p)²) over L^{−k} ≲ |k| ≲ 1, which gives ln(L^{2k}) in place of ln(1/p²) for p ≪ L^{−k}. This is the mechanism; the exact statement is Lemma 3.2.

### 3.2 Exact decomposition into a fine Feynman-gauge piece and coarse-scale pieces

Lemma 3.2. Let D: R^m → R^n have full column rank, with the gauge coordinates split into "non-anchor" (Lie(G_k)) and "anchor" (one site per level-k cell); D_k the non-anchor columns. Let Δ be symmetric, positive on (im D)^⊥, with ΔD = 0. Let Q̃: R^n → R^r be surjective with Q̃D_k = 0. Write K := Δ + DD^T (positive definite), S_K := (Q̃K^{−1}Q̃^T)^{−1} (the Schur complement of K with respect to the constraint, a positive definite form on the coarse field), X := D^TD, (X^{−2})_{aa} the anchor block of X^{−2}, M := D^TD_k, P_⊥ the orthogonal projector onto (im M)^⊥ ⊂ R^m, and G_k^⊥ := (Δ|_{ker Q̃ ∩ (im D_k)^⊥})^{−1} (the covariance of the constrained, gauge-fixed Gaussian). Then

  log det(D_k^TD_k) − ½ log|det Bord| = −½ log det K + log det X + ½ log det S_K + ½ log det (X^{−2})_{aa} + ½ log det(1 + P_⊥ D^T G_k^⊥ D P_⊥) + const,   (3.2)

with const depending only on (n, m, r, number of anchors).

Proof. (i) Faddeev–Popov over G_k with the weight exp(−½|D_k^TB|²) (R2_VERIFY 2.3(iii)): the left side equals ½ log det(D_k^TD_k) − ½ log det(Δ|_{ker Q̃ ∩ (im D_k)^⊥}) − ½ log det(Q̃Q̃^T) + const. (ii) Define Z^{(F)} := det(X)·∫ dB δ(Q̃B) e^{−½⟨B,KB⟩}. The Gaussian identity ∫ dB δ(Q̃B) e^{−½⟨B,KB⟩} = (2π)^{(n−r)/2} det(K)^{−1/2} det(Q̃K^{−1}Q̃^T)^{−1/2} gives log Z^{(F)} = log det X − ½ log det K + ½ log det S_K + const. (iii) Relate Z^{(F)} to the left side by integrating along G_k-orbits inside ker Q̃: for B̄ ∈ ker Q̃ ∩ (im D_k)^⊥, ∫ dλ exp(−½|D^T(B̄ + D_kλ)|²) = (2π)^{dim G_k/2} det(M^TM)^{−1/2} exp(−½|P_⊥D^TB̄|²), because the minimum over λ of |D^TB̄ + Mλ|² is |P_⊥D^TB̄|². The orbit Jacobian is det(D_k^TD_k)^{1/2}. The Gaussian expectation of exp(−½|P_⊥D^TB̄|²) under the normalized weight exp(−½⟨B̄,ΔB̄⟩) on ker Q̃ ∩ (im D_k)^⊥ is det(1 + P_⊥D^TG_k^⊥DP_⊥)^{−1/2}. Collecting: log Z^{(F)} = [left side of (3.2)] + log det X − ½ log det(M^TM) − ½ log det(1 + P_⊥D^TG_k^⊥DP_⊥) + const. (iv) M^TM = ι^T X² ι with ι the inclusion of non-anchor coordinates; Jacobi's complementary-minor identity gives det(ι^TX²ι) = det(X²) det((X^{−2})_{aa}). Combine (ii)–(iv). ∎

Numerical verification: six random instances with n = 30, m = 9, 3 anchors, r = 6, and four with n = 40, m = 12, 4 anchors, r = 10, satisfying the hypotheses by construction; the difference (left − right) is constant across instances to 4·10^{−14} (dimension-dependent constant only).

Reading of (3.2) for the plane-wave background (all operators at U_0(a)):

  log Z_k^{(1)}(U_0) = −Γ_1^{W,F}(U_0) + ½ log det S_K(U_0) + ½ log det (X^{−2})_{aa}(U_0) + ½ log det(1 + P_⊥D^TG_k^⊥DP_⊥)(U_0) + const,   (3.3)

where Γ_1^{W,F} := ½ log det(Δ + DD^T) − log det(D^TD) is the standard one-loop effective action of the Wilson action in the background Feynman gauge with the full gauge group (gauge-fixing |D^TB|², ghost D^TD; Capitani (10.25)–(10.26) at α = 1; left/right placement of the fluctuation is an orthogonal change of variables). The other three terms live on the coarse lattice: S_K is a 4(N²−1)N_cells form, the other two are (N²−1)N_cells determinants. S_K is exponentially local on the coarse lattice (it is a constrained minimum, built from the massive constrained propagator), as is the perfect action.

Remark (alternative). One can instead gauge-fix the fine theory by the composite condition (D_k^TB, D_c^TQ̃B) with Faddeev–Popov factor det(D_k^TD_k)det(D_c^TD_c) (block triangular); then the coarse piece is the perfect action Δ_k in coarse background-Feynman gauge and the fine piece is in a k-dependent gauge. (3.3) is preferred here because its fine piece is the one in the literature.

## 4. Cited lattice one-loop results and the normalization chain

### 4.1 Quotations

Lüscher–Weisz, Nucl. Phys. B452 (1995) 234, hep-lat/9505011 (text layer of the arXiv PDF; Greek letters and fraction bars are lost in extraction, so the formulas below are reconstructed from the surviving digits and checked numerically in 4.2):
- (1.1): "α_MS(s/a) = α_0 + d_1(s) α_0² + d_2(s) α_0³ + ...", "which relates the running coupling in the MS scheme of dimensional regularization to the bare lattice coupling α_0 in the pure SU(N) gauge theory."
- (2.7): "Γ_R^{(2;0;0)}(p,−p)^{ab}_{μν} = −δ^{ab}(δ_{μν}p² − p_μp_ν)[1 − ν_R(p)]/g_R²"; (2.9): "Σ_μ Γ^{(2;0;0)}(p,−p)^{ab}_{μμ} = −3δ^{ab} p̂²[1 − ν(p)]/g_0²". "The tensor structure of these functions, as given above, is implied by the symmetries of the theory."
- (2.5): "d_1(s) = 4π Z^{(1)}|_{s=aμ}"; "An important point to note here is that the coefficients Z^{(l)} (and hence the d_l(s)) are independent of the gauge parameter."
- (3.1): "ν_R^{(1)}(p) = (N/16π²)[(11/3) ln(μ²/p²) + 205/36 + 3/(2λ) + 1/(4λ²)]" (λ the gauge parameter; at λ = 1 the constant is 67/9).
- (5.7): "ν^{(1)}(p)|_{λ_0=1} = (N/16π²)[−(11/3) ln(p²) + 64/9] − 1/(8N) + N[(5/36)P_1 + (11/3)P_2 + 1/16] + O(p²)" with (B.3)–(B.4): "P_1 = 0.15493339023106021(1), P_2 = 0.02401318111946489(1)".
- (7.1): "d_1(s) = −(11N/6π) ln(s) − π/(2N) + k_1 N", (7.3): "k_1 = 2.135730074078457(2)". "The coefficients of ln(s) in eqs.(7.1) and (7.2) are of course directly related to the first two universal coefficients of the Callan-Symanzik β-function. The one-loop result was first obtained by A. and P. Hasenfratz [17]. It was subsequently reproduced using the background field technique in refs.[4–6]."

Dashen–Gross, Phys. Rev. D 23 (1981) 2340, INSPIRE abstract, verbatim: "We find, for an SU(N) lattice gauge theory with the Wilson action, that (Λ_MS/Λ_L)_{SU(N)} = 38.852704 exp(−3π²/(11N²))." (The abstract describes the method as the background-field method applied to the lattice partition function in a weak background lattice field.)

Hasenfratz–Hasenfratz, Phys. Lett. B 93 (1980) 165, INSPIRE abstract (paraphrase of the numbers): one-loop lattice calculation of two- and three-point functions; Λ_MOM(α=1) ≈ 83.5 Λ_L for SU(3) and ≈ 57.5 Λ_L for SU(2).

Capitani, Phys. Rep. 382 (2003) 113, hep-lat/0211036, (10.5): "b_0 = (1/(4π)²)(11 − (2/3)N_f)" (SU(3)); (10.14): "Λ_MS/Λ_lat = 28.80934(1)" for the pure gauge Wilson action.

### 4.2 Consistency checks [verified numerically]

- (7.1)+(7.3) at s = 1: d_1(1) = 2.135730 N − π/(2N). Λ_MS/Λ_L = exp(6π d_1(1)/(11N)) = exp(3.65983 − 3π²/(11N²)) = 38.8527 exp(−3π²/(11N²)): Dashen–Gross's closed form, to six digits. SU(3): 28.8093; SU(2): 19.8231.
- (5.7) minus (3.1) at λ = λ_0 = 1, μ = 1/a: Z^{(1)} = (N/16π²)(64/9 − 67/9) − 1/(8N) + N(0.172067) = 0.1699560 N − 1/(8N) = d_1(1)/(4π). Reproduces Capitani (10.14) 28.80934 to seven digits. So the reconstruction of (5.7) is right in every term.

### 4.3 Normalization chain to Balaban's units [proved here]

The effective quadratic action of a background field is (1/g_0²)(1 − ν(p))·M[B], M the standard Maxwell form (quadratic part of S_W at g_0 = 1, ordinary trace, tr t^at^b = ½δ). With S_W = (2N/g²) A (R2 P1), M = 2N·A_quad. The one-loop part of −log Z^{(1)} is Γ_1 = −ν^{(1)}(p) M, so

  [log Z^{W,F,(1)}]_{A-coefficient}(p) = 2N ν^{(1)}(p) = c_2 ln(1/p²) + κ_W^F + O(p² ln p),   c_2 = 2N·(11N/3)/(16π²) = 11N²/(24π²),   (4.1)

  κ_W^F = 2N[(N/16π²)(64/9) − 1/(8N) + N((5/36)P_1 + (11/3)P_2 + 1/16)] = 0.434197 N² − ¼;  SU(2): 1.48679, SU(3): 3.65777.   (4.2)

Sign check: ν^{(1)} > 0 and growing as p → 0 means 1/g_eff²(p) = (1 − ν)/g_0² decreases toward the infrared (asymptotic freedom), and Balaban's log Z^{(j)}(U) − log Z^{(j)}(1) carries +β_{j+1}(0)·A with β > 0: consistent. 2c_2 = c = 11N²/(12π²), the value of R2 (1.13)/THEOREM2 §8a. The ghost share of c_2 is 1/11 (continuum split 11/3 = 10/3 gluon + 1/3 ghost in background Feynman gauge, R2 Sect. 1.2, verified R2_VERIFY 2.2).

## 5. The infrared structure and the k log L term

Proposition 5.1 [proved here given (4.1)]. For every k, S_k(p) is analytic at p = 0 (the constrained Gaussian is massive; the quadratic form in A is transverse by gauge invariance and hence O(p̂²)), so S_k = lim S_k(p) exists and is finite. Write the three coarse terms of (3.3) as R_k(U_0) and let r_k(p) be their A-coefficient per cell. By (3.3) and (4.1),

  S_k(p) = c_2 ln(1/p²) + κ_W^F + r_k(p) + O(p² ln p).   (5.1)

Since the left side is finite as p → 0, r_k(p) = −c_2 ln(1/p²) + (finite) + o(1), i.e. the coarse-scale pieces carry the compensating log with exactly the coefficient −c_2. Define κ_k := lim_{p→0}[r_k(p) + c_2 ln(1/(p² L^{2k}))]. Then, exactly,

  S_k = c_2·ln(L^{2k}) + κ_W^F − κ_k = c k log L + C_k,   C_k := κ_W^F − κ_k.   (5.2)

So U1′(w) ⇔ sup_k |κ_k| < ∞, and U1′(s) ⇔ κ_k converges. ∎

Two remarks. (a) The universal coefficient of the coarse log is forced by finiteness; it does not need a separate universality proof for the coarse theory. What needs proof is the boundedness of the constant κ_k. (b) The split c_2 ln(L^{2k}) versus κ_k uses L^{2k} as the natural coarse scale; any other choice shifts κ_k by a k-independent constant.

Why the fine piece has the log with the IR divergence: it is the infinite-lattice Wilson vacuum polarization, LW (5.7), with the universal −(11/3) ln(p²). Why the coarse pieces have the opposite log: in (3.1) the constrained covariance is bounded below the scale L^{−k}; the coarse objects S_K, (X^{−2})_{aa}, and the anchor determinant are built from the blocked massless propagators and are the coarse-lattice regularization at spacing L^k of the same one-loop integral, whose own log is ln(1/(p²L^{2k})). This is the "log p² replaced by log of the coarse scale" of the task statement, made exact by (5.1)–(5.2).

Numbers (SU(2), from NUMERICS §6 and (4.2)): κ_1(L=2) = 1.4868 − 0.3725 = 1.114; κ_1(L=3) = 1.4868 − 0.2559 = 1.231; κ_2(L=2) = 1.4868 − (0.558 … 0.633) = 0.85 … 0.93 (two-step value 1.148 with the Ng = 4 grid uncertainty of §11).

## 6. Ghost and residual-gauge sector (item (ii))

- Exact one-loop integral: Faddeev–Popov over G_k only (u = 1 on T^{(k)}); ghost operator D_k^TD_k, λ vanishing on the level-k centers (R2_VERIFY 2.3(a)). Balaban's own insertion is the exponential gauge fixing (0.14) with the normalization (0.15) ("where z is defined by the last integral"); both are Faddeev–Popov insertions over G_k and give the same exact Z_k (R2_VERIFY 2.3(a)); Lemma 2.3 extends the equality to S_k for the plane wave.
- In the decomposition (3.3) the fine ghost appears with the full gauge group, log det(D^TD), and the restriction to G_k is pushed into the coarse anchor term ½ log det (X^{−2})_{aa} (the squared ghost propagator between level-k centers). The fine ghost carries 1/11 of c_2 ln(1/p²); the anchor term carries the compensating −(1/11)c_2 ln(1/(p²L^{2k})) plus a constant.
- Abelian sector: the ghost is background independent (Ad_{U_0} acts trivially on σ_3), so its contribution is exactly zero (measured ghost = 0.0 in all u1 runs).
- Numerically (SU(2), L = 2, p = 0.4, Ng = 8) the ghost contributes 0.0048 to w = 0.2002, i.e. 2.4% of w; its seagull and bubble parts are 0.712 and −0.707 (see §10), a near-complete cancellation.

## 7. Uniform boundedness of C_k (item (iii)) — what is needed, and the dependence on U3

By (5.2), C_k = κ_W^F − κ_k with κ_W^F a fixed number (4.2). Everything hinges on κ_k, the A-coefficient constant of the three coarse-scale pieces in (3.3) after subtracting −c_2 ln(1/(p²L^{2k})).

Structure of κ_k. Each coarse piece is a one-loop functional on the coarse lattice: a Brillouin-zone integral over the coarse momentum q ∈ [−π/L^k, π/L^k]⁴ of (coarse propagator)·(vertices), where
- the coarse propagators are S_K^{−1}(q) = (Q̃K^{−1}Q̃^T)(q) (blocked fine Feynman-gauge propagator, ~ 1/q̂² as q → 0, with the exact Maxwell normalization: the n = 0 term of (3.1) dominates and |Π̂(q)|² = 1 − O(q²L^{2k})), the anchor block ((D^TD)^{−2})_{aa}(q), and G_k^⊥;
- the vertices are the first and second a-derivatives of S_K, (X^{−2})_{aa}, and the anchor determinant, i.e. of the constrained minimum and of the blocked propagators; they are built from the massive constrained propagator (range L^k) and the local a-derivatives of Δ, D, Q̃.
After rescaling q = q′/L^k the integral runs over the unit Brillouin zone with rescaled kernels. The log comes from q′ → 0, where the rescaled kernels reduce to Maxwell plus the Yang–Mills vertices (gauge covariance fixes the O(q′) part of the 3-vertex and the O(1) part of the 4-vertex from the quadratic form); the constant κ_k is the remainder of the integral.

Lemma U2′ (needed, [open]). Let a family of coarse one-loop functionals have kernels that are (a) uniformly exponentially local in q′ (decay rate independent of k), (b) uniformly bounded with their first two background derivatives, (c) uniformly positive: the rescaled coarse forms are ≥ c_0 q̂′² on the gauge-fixed subspace with c_0 independent of k, and (d) with the exact Maxwell/YM limit at q′ → 0 with relative corrections O(q′²) uniform in k. Then the subtracted constant κ_k is bounded by a function of the constants in (a)–(d), uniformly in k. Status: this is a standard lattice-perturbation-theory estimate (the same analysis that produces the lattice constants P_1, P_2 in LW (5.7) for a fixed action, done with uniform constants), but it is not written anywhere for this family. It is the exact point where "awkward and long" applies.

Inputs for (a)–(d) from Balaban's propagator papers (quotes checked in R2_VERIFY Sect. 1): CMP 95 Prop. 1.1 (1.89) and p. 32 ("bounded from below and above by positive constants independent of k"), CMP 95 Prop. 1.2 (1.110) (decay "δ_0 depending on d only"), CMP 96 Props. 2.5–2.6 ("derivatives of H_j up to third order ... uniformly bounded and have a uniform exponential decay"), CMP 99 Thms. 3.1, 3.12 (background-field versions, "positive, absolute constant depending on d and L only"), CMP 99 p. 428 (lower bound for C*Δ_kC in a background: "we can prove it", asserted not proved = V4). Two gaps between these inputs and (a)–(d): (G1) Balaban's propagators are in his exponential/axial-type gauge, while (3.3) uses the Feynman-type weight; the exact Z_k agrees (Lemma 2.3), but the intermediate kernels differ, so the bounds must be transferred or (3.3) rewritten in Balaban's gauge (then the fine piece is no longer LW's Feynman-gauge amplitude and κ_W^F changes to a different, equally fixed constant; the k log L term is unchanged). (G2) (d) with uniform relative corrections is a statement about the small-momentum expansion of the composed minimizer map H_{1,k} and the composed form factor, which the cited bounds imply at the level of bounds but which is not stated as an expansion.

Dependence on U3 (convergence of the level-j kernels to a fixed point, being derived in parallel):
- U1′(w) does not need U3. It needs only the uniform bounds (a)–(d) and Lemma U2′.
- U1′(s) needs, in addition, convergence of κ_k, which follows if the rescaled kernels of the three coarse pieces converge (in the norm in which the one-loop functional is continuous: uniform locality plus sup bounds on the kernels and their first two background derivatives). That is U3 for the composed objects: the composed averaging form factor, the composed minimizer map, and the constrained propagator at level k, each rescaled to the unit lattice. If U3 gives convergence at a geometric rate ρ^k, then κ_k − κ_∞ = O(ρ^k), C_k converges, and β_k(0) − c log L = O(ρ^k): the "exponential convergence of the increments" that the O(3) template uses (THEOREM2.md §4, Lemma 6.1 there).
- Conversely, if U3 fails (no fixed point) but the uniform bounds hold, U1′(w) still holds and Theorem 2 still follows via Prop. 5.1 of R2 with windows, provided the finitely many short-window positivity conditions are met (R2 Prop. 5.1(b)).

## 8. O(p²) and lattice-artifact terms (item (iv))

- Fine piece: LW (5.7) is ν^{(1)}(p) = (11N/(48π²)) ln(1/p²) + const + O(p²) (their O(p²) includes p² ln p² terms). These vanish in the limit p → 0 and cannot change the log coefficient, which is fixed by the universal b_0 ("directly related to the first two universal coefficients of the Callan–Symanzik β-function", LW after (7.2)).
- Coarse pieces: analytic in p near 0 at fixed k except for the log; the corrections are O(p²L^{2k}) relative. They vanish as p → 0 at fixed k. They are not uniform in k, which is why S_k is defined by lim_{p→0} at fixed k and why Lemma U2′ is formulated after the rescaling q = q′/L^k.
- Balaban's Π′ (5.38) is a third-order polynomial in lattice derivatives: O(p³) in Π, O(p) relative to the marginal term; it does not affect S_k.
- The transverse structure (p̂²δ − p̂p̂) of the fine amplitude is exact on the lattice by the Ward identity (LW (2.9): "implied by the symmetries of the theory"); for the composed constrained object, w_k vanishes on pure-gauge waves exactly (measured −2·10^{−15} at L = 2, −4·10^{−15} at L = 3, −3·10^{−15} for the two-level L = 2 code, NUMERICS §5 and results/), so w_k(p) = (transverse form)·(analytic) and S_k(p) is an even analytic function of p near 0 (observed: 0.6299/0.6307/0.6340 at p = 0.1/0.2/0.4, L = 2).
- Numerical caveat: the p-dependence of S_k(p) is O((pL^k)²) in principle; at L^k = 4 and p = 0.4 the parameter (pL^k)² = 2.6 is not small, yet the observed p-dependence is at the 1% level, so the coefficients are small. The p → 0 extrapolation of analyze.py (quadratic in p) is adequate at the present precision.

## 9. The abelian sector is exactly solvable: S_k^{ab} = (1 − L^{−4k})/4 [proved here, verified numerically]

Proposition 9.1. Restrict the fluctuations to the σ_3 color (the "u1" runs of ym_momentum.py). Then for every k and L,

  S_k^{ab} = (1 − L^{−4k})/4,   hence β_j^{ab}(0) = (1 − L^{−4}) L^{−4(j−1)}/4.   (9.1)

Proof. In the abelian sector the averaging is linear in the angles (log of a product of commuting exponentials), so Q̃ is independent of a; Ad_{U_0} is trivial on σ_3, so D_k and the ghost are independent of a. Only Δ depends on a: the (1,2)-plaquette at x contributes 1 − cos((θ_p^0 + (dB)_p)/2) with θ_p^0 = a(dA)_p, whose Hessian in B is ¼cos(a(dA)_p/2)(dB)_p². So Δ(a) = Δ_0 − (a²/32) Σ_p (dA)_p² P_p + O(a⁴), P_p the quadratic form (dB)_p², and the first a-derivative vanishes. Then w = −Tr(Bord_0^{−1} Bord_2) = (1/32) Σ_{p∈cell} (dA)_p² E_p with E_p := ⟨(dB)_p²⟩ the constrained, gauge-fixed expectation of the squared plaquette fluctuation (the upper-left block of Bord_0^{−1} is the covariance). Only (1,2)-plaquettes have dA ≠ 0; averaging (dA)_p² over translations of the plane wave gives 1 − cos p, and E_p averaged over the (1,2)-plaquettes of a cell equals the all-plaquette average Ē by hypercubic symmetry. So w = (1 − cos p) L^{4k} Ē/32 exactly, and S_k^{ab}(p) = Ē/8, independent of p. Equipartition: on ker Q̃ = (ker Q̃ ∩ (im D_k)^⊥) ⊕ im D_k the form Δ_0 + D_kD_k^T is block diagonal (R2_VERIFY 2.3(iv)), Δ_0 vanishes on im D_k, so ⟨½⟨B,Δ_0B⟩⟩ = ½ dim(ker Q̃ ∩ (im D_k)^⊥) per cell = ½[4L^{4k} − 4 − (L^{4k} − 1)] = (3/2)(L^{4k} − 1). With ½⟨B,Δ_0B⟩ = Σ_p (dB)_p²/8 and 6L^{4k} plaquettes per cell, Ē = 2(1 − L^{−4k}), hence S_k^{ab} = (1 − L^{−4k})/4. ∎

Verification: k = 1: 15/64 = 0.234375 (measured 0.2343750000000169 at L = 2, all three p); 20/81 = 0.2469136 (measured 0.24691358024698 at L = 3). k = 2, L = 2 (two-level code, run in a scratch directory, Ng = 4, p = 0.2): measured 0.2490234374999995 = 255/1024 = (1 − 2^{−8})/4. This also confirms the constraint counting of the two-level code and shows that the Ng = 4 grid error is zero for a p-independent integrand.

Consequences. (1) The abelian sector satisfies U1′(s) with c = 0 and C = 1/4; the increments decay like L^{−4j}, as NUMERICS §2 expected. (2) The abelian value is a pure "seagull": the one-loop quantity is an exact equipartition count times the quartic coefficient of 1 − cos(θ/2). (3) For a genuine U(1) theory with action 1 − cos θ the angle is not halved and the quartic coefficient changes, so the number differs by the trace normalization; (9.1) is specific to the σ_3 sector of the SU(2) normalized-trace action.

## 10. Item (v): the single-step values β_1 = 0.630 (L = 2), 0.664 (L = 3)

- Decomposition by sector (exact abelian part from §9):

  | L | β_1 | c log L | C_1 = β_1 − c log L | abelian sector (exact) | charged sector β_1 − β_1^{ab} | charged-sector constant |
  |---|---|---|---|---|---|---|
  | 2 | 0.630 | 0.2575 | 0.372 | 0.2344 | 0.396 | 0.138 |
  | 3 | 0.664 | 0.4081 | 0.256 | 0.2469 | 0.417 | 0.009 |

- Consistency with U1′: U1′ constrains the k-dependence at fixed L and says nothing about C_1(L). Both values are consistent with U1′ for any C. The two L-values give two different constants C_1(L) because the one-step perfect action depends on L; the weak L-dependence of β_1 (0.034 versus c ln(3/2) = 0.151) is the statement that C_1(3) − C_1(2) = −0.117, not a contradiction. Single-step data cannot test U1′.
- Tadpole-type terms: in the abelian sector the entire first increment is an exact seagull (§9). In the charged sector the seagull/bubble split is not gauge invariant (the A² seagull terms are cancelled by non-transverse parts of the bubble through the Ward identity), so "the tadpole part of the charged-sector constant" has no invariant meaning. Measured in the gauge of the code (SU(2), L = 2, Ng = 8, p = 0.4; scratch script that separates the two traces of ym_momentum.second_derivative): seagull contribution to S_1(p) = −2.204, bubble contribution = +2.838, total 0.634 (matches 0.634 at Ng = 12). The ghost alone: seagull 0.712, bubble −0.707. So the seagull terms are an order of magnitude larger than the result and of the wrong sign; no bound on the charged-sector constant follows from them. The only exact statement is the abelian one: the first-step scheme constant contains the term (1 − L^{−4})/4 from the σ_3 sector, which is 63% (L = 2) and 96% (L = 3) of C_1.

## 11. Item (vi): the two-step value 1.148 at L = 2

- S_2 = 1.148 (Ng = 4, p = 0.2). The Ng = 4 grid overestimates the single-step value at p = 0.4 by 7.9% (0.684 versus 0.634); for the two-level integrand the error is unknown but the integrand is p-independent in the abelian sector (§9) and smoother at the coarse scale, so the overestimate is at most of that size. Range: S_2 ∈ [1.06, 1.15], β_2 = S_2 − β_1 ∈ [0.43, 0.52], as the task states.
- Against U1′: C_2 = S_2 − 2c log 2 ∈ [0.55, 0.63] versus C_1 = 0.372. The abelian part of C_k is (1 − 2^{−4k})/4: 0.234 → 0.249 (exact, +0.015). So the charged-sector constant went from 0.138 to 0.30–0.38, i.e. the charged-sector increment β_2^{ch} − c log 2 ∈ [0.16, 0.24] is not smaller than the first one (0.138). Two data points are compatible with (i) U1′(s) with a slow or non-monotone approach (the Wilson action is far from the fixed point; the first increment need not be the largest), (ii) U1′(w) with oscillating constants, and (iii) failure of U1′ (increments converging to a value above c log L, which would contradict §5 unless the uniform bounds of §7 fail). They cannot distinguish these. A geometric fit with ratio ρ to the charged-sector increments gives ρ ∈ [1.2, 1.7] from these two points, i.e. no sign of convergence yet; the first step is special, so this is not evidence against U1′.
- Decisive numbers: (1) S_2 at Ng = 6 (log_two_Ng6.txt, running at the time of writing) pins β_2 to about 2%; (2) β_3 at L = 2 (block 49152, out of reach of dense inversion per NUMERICS; an iterative solver or the GPU path is needed); (3) the abelian two-level check of §9 is already exact, so any discrepancy in (1) is in the charged sector.
- Under U1′(s) with a geometric ratio ρ for the charged-sector deviations, C_∞ = C_2 + (C_2 − C_1)ρ/(1 − ρ): ρ = 1/4 (leading irrelevant operator, L^{−2}) gives C_∞ ≈ 0.62–0.72; ρ = 1/2 gives 0.75–0.90. These are projections, not results.

## 12. Ledger

Proved here (derivations complete, checks run):
- P1. Normalization (1.2): ∂_a²A per fine site = (1 − cos p)/4 (§1.1).
- P2. Lemmas 2.1–2.3: the Lagrange-multiplier term, the minimizer-versus-plane-wave difference, and the choice of G_k gauge fixing change S_k(p) by O(p²) and S_k by zero, at fixed k (constants of order L^{2k}).
- P3. Lemma 3.2: exact decomposition (3.2)/(3.3) of the composed constrained one-loop integral into the Wilson background-Feynman-gauge one-loop effective action (full gauge group) plus three coarse-scale terms; verified on random instances to 4·10^{−14}.
- P4. Normalization chain (4.1)–(4.2): A-coefficient of the fine piece = c_2 ln(1/p²) + κ_W^F, c_2 = 11N²/(24π²), κ_W^F = 0.434197N² − ¼ (SU(2): 1.4868), from LW (5.7) in Balaban's units.
- P5. Proposition 5.1: S_k = c k log L + C_k exactly with C_k = κ_W^F − κ_k, the coarse log coefficient forced to −c_2 by finiteness of S_k; U1′(w) ⇔ sup|κ_k| < ∞, U1′(s) ⇔ κ_k converges.
- P6. Proposition 9.1: S_k^{ab} = (1 − L^{−4k})/4 exactly (equipartition); confirmed to 13 digits at (k, L) = (1, 2), (1, 3), (2, 2).
- P7. Counting of the constraint (§3.1) and the ghost structure (§6).

Reduced to cited results (quoted in §4.1, numerically cross-checked in §4.2):
- R1. The fine Wilson one-loop vacuum polarization in background Feynman gauge: LW (5.7), with the log coefficient tied to b_0 (LW after (7.2)); Dashen–Gross closed form for Λ_MS/Λ_L; Capitani (10.14).
- R2. Uniform-in-k bounds and decay rates of the fluctuation propagators and minimizer maps: CMP 95 Props. 1.1–1.2, CMP 96 Props. 2.5–2.6, CMP 99 Thms. 3.1, 3.12 (quotes checked in R2_VERIFY Sect. 1).
- R3. Gaussian telescoping and the identification S_k = Σβ_j(0): R2 Prop. 3.1 (verified) and R2 Sect. 4 (plan, caveat V1).

Open:
- O1. Lemma U2′: uniform bound on the subtracted constant κ_k of the coarse-scale one-loop pieces from uniform locality, positivity, bounds, and the exact Maxwell/YM limit. This is the whole content of U1′(w) beyond what is cited. Not written anywhere.
- O2. Gauge transfer (G1): Balaban's bounds are in his exponential gauge; (3.3) uses the Feynman-type weight. Either transfer the bounds or rewrite (3.3) in his gauge (changes κ_W^F to another fixed constant, not the k log L term).
- O3. The small-momentum expansion (G2) of the composed minimizer map and form factor with uniform relative corrections.
- O4. U1′(s) needs U3 (convergence of the rescaled composed kernels); with a geometric rate it gives β_k(0) − c log L = O(ρ^k).
- O5. V1 (order-g⁰ completeness of (1.3)) and V4 (background positivity "we can prove it", CMP 99 p. 428) inherited from R2/R2_VERIFY.
- O6. Numerical: the k = 2 charged-sector constant is larger than the k = 1 one; whether the increments converge is untested (needs S_2 at Ng = 6 and β_3).

Not claimed: no statement here proves U1′. What is proved is the exact identity (5.2) that isolates the k log L term with coefficient 11N²/(12π²) and reduces U1′ to the boundedness (or convergence) of one explicit sequence of coarse-lattice one-loop constants κ_k.
