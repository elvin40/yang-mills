# SOURCES_T2_PI — probe independence (PI) at fixed level j: plane-wave p² coefficient = constant-field f² coefficient (DERIVE)

Date: 2026-10-28. Item PI, DERIVE. Author: headless Claude session.
Status: in progress (sections appended one at a time).

Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). reports/ONLINE_SWEEP.md not opened.
No existing file edited. New script: numerics/t2_pi_d2check.py (if written), output numerics/results/t2_pi_*.json.

Read: THEOREM2_PROOF_v4.md l. 117–215, 420–488; BETA_FP_H.md l. 1–132; BETA_FP_H_VERIFY.md l. 9–39; KAPPA_BOUNDED.md l. 1–41 (and l. 159, 169 for the "cheap tests"); BETA_FP_LEMMA43.md l. 39–62, 85–130; U3_LEMMA51.md l. 1–140; SOURCES_D1.md l. 1–14, 140–178; SOURCES_D1_VERIFY.md l. 24–36; U3_VERIFY.md l. 74–100; numerics/NUMERICS.md l. 41–79; SOURCES_T2_S123.md (header, plan, verdict line of its _VERIFY); SOURCES_T2_V1.md (header, §4 scheme caveat; verdict line of its _VERIFY). SOURCES_T2_G2.md does not exist. Code read, not modified: numerics/u3_lemma51_check.py, numerics/ym_oneloop.py l. 36–42, 109–125, 223–300. Balaban: CMP 109 text layer and page images as listed in §2.

Tags: [P] proved here (complete argument in this file); [R] reduced to a named input (named, with location); [I] inference or reading not checked line by line; [V] checked against a Balaban page image or the text layer (said which).

## Plan
1. Objects, normalizations, and the exact statement (Theorem PI).
2. Inputs: massiveness at the trivial background (I1), gauge covariance (I2), hypercubic invariance (I3); Balaban's definition of the step, verbatim.
3. The local density ρ_c: definition, gauge invariance, exponential localization of its Taylor kernels; analyticity of Π_Λ(P) — obligation (a).
4. The constant field: magnetic Neumann series and C² along the linearly growing potential; the f² coefficient is the second-order kernel on the linear potential, with no extra term — obligation (c), first half.
5. The plane wave, the moment identity, and the proof of Theorem PI; the one-structure lemma — obligations (b), (c).
6. The expansion point: what the code computes versus Balaban's functional (reuse of U3_VERIFY §6, SOURCES_D1_VERIFY V4).
7. The massless pieces: which combination is probe-independent — obligation (d); the lattice transfer of (F).
8. Numerics: a direct d = 2 test of the identity; consistency with the listed p-drift numbers; status of the (1.1) evaluation at L = 3.
9. Where it enters; ledger.

## 1. Objects, normalizations, and the exact statement

### 1.1 Setting
Level j ≥ 1 fixed. L odd ≥ 3, Λ := L^j, centered blocks, Balaban's composed averaging (the family of BETA_FP_LEMMA43 §5 and U3_LEMMA51 §1). Fine units: the fine lattice is Z⁴, the coarse cells are the blocks of side Λ centred at the points of ΛZ⁴. SU(2), left trivialization U = e^{iB}U_0, B = B^aσ_a/2 (U3_LEMMA51 §2.1).

Abelian backgrounds. For a real function θ on fine links put U_θ(b) := exp(iθ(b)σ_3). Its plaquette angle is the lattice curl dθ. (This is the convention of numerics/u3_lemma51_check.py, `background`; the code of NUMERICS §5 writes the link as exp(i a cos(p x_1) σ_3/2), i.e. θ = (a/2)cos(p x_1). Normalizations of θ cancel in every ratio below.)

The functional. For a fine configuration U put

  Γ(U) := log det(D_k(U)^T D_k(U)) − ½ log|det Bord(U)|,   Bord(U) := [[Δ(U) + D_k(U)D_k(U)^T, Q̃(U)^T], [Q̃(U), 0]],   (1.1)

with Δ(U) the Hessian of the Wilson action A(U) = Σ_p (1 − ½ tr U_p) at U in the left trivialization (the plain Hessian, also at non-critical U), D_k(U) the covariant gauge gradient on gauge parameters vanishing at the level-j anchors, and Q̃(U) the linearization at U of the composed averaging. This is the object computed by numerics/ym_oneloop.py `one_step` (logZ = logdet_DtD − ½ logabsdet_Bord) and, per coarse momentum, by ym_momentum.py (NUMERICS §1, §5) [I: code read for ym_oneloop only]. In infinite volume Γ is defined through per-cell densities (§3).

Relation to the constrained functional. At the constant field the fine configuration U_0^φ is the exact constrained minimizer over V_f and is a free critical point, so J = 0 and log Z_Λ(V_f) = Γ(U_0^φ) up to an f-independent constant [R: BETA_FP_H Fact 1.1 and Consequence 1.2; U3 Lemma 5.0, U3_VERIFY §7; graded CONFIRMED in BETA_FP_H_VERIFY §2]. At the plane wave the code evaluates Γ at the fine wave U_0(a), which is not the constrained minimizer (§6).

### 1.2 The two probes (per coarse cell)
Γ̄ and Ā denote per-coarse-cell densities of Γ and of A (§3 defines them).

Plane wave. θ^{pw}_{a,p}(x, μ) := a δ_{μ2} cos(p x_1), fine momentum p (coarse momentum P = Λp). Put
  w(p) := ∂_a² Γ̄(U_{θ^{pw}_{a,p}})|_{a=0},   t(p) := ∂_a² Ā(U_{θ^{pw}_{a,p}})|_{a=0},   β^{pw}(p) := w(p)/t(p).
With the code's normalization t(p) = Λ⁴(1 − cos p)/4 and β^{pw}(p) = 4w(p)/(Λ⁴(1 − cos p)), the NUMERICS §6 formula at j = 1 [I: normalization from NUMERICS §6, not rederived]. Put S_j^{pw} := lim_{p→0} β^{pw}(p) (the quantity the code extrapolates; S_j of THEOREM2_PROOF_v4 §3.1 up to the expansion-point question of §6).

Constant field. θ^{cf}_φ(x, μ) := φ x_0 δ_{μ1} (Landau gauge). Its plaquette angle is φ on every (0,1) plaquette and 0 elsewhere; U_{θ^{cf}_φ} is gauge equivalent to U_0^φ, and the coarse flux is f = Λ²φ. Per coarse cell Ā(U_{θ^{cf}_φ}) = Λ⁴(1 − cos φ) = n_2 f² + O(f⁴/Λ⁴), n_2 = ½ (the U3_LEMMA51 convention, BETA_FP_H §1). Put
  S_j^{cf} := lim_{φ→0} [Γ̄(U_{θ^{cf}_φ}) − Γ̄(1)] / [Ā(U_{θ^{cf}_φ}) − Ā(1)] = lim_{f→0} [log Z_Λ(V_f) − log Z_Λ(1)]/(n_2 f²) = 𝒞(Λ).
The last two equalities use §1.1 and the definition of 𝒞(Λ) in BETA_FP_H §3.1. The brief's "[f²] log Z_Λ(V_f)/n_2 − [f²] log Z_Λ(1)" is read as this f = 0 subtraction.

Both ratios have the same sign convention: second-order coefficient of Γ divided by the second-order coefficient of the Wilson action A, which is positive. So no sign question arises between the probes.

### 1.3 Statement
Theorem PI. Fix j ≥ 1, L odd ≥ 3. Assume (I1)–(I3) of §2. Then:
(i) w(p) and t(p) are real-analytic and even in p on a neighbourhood of p = 0, both vanish at p = 0, and t(p) = Λ⁴(1 − cos p) = Λ⁴p²/2 + O(p⁴) ≠ 0 for small p ≠ 0 (convention θ = a cos(p x_1); Λ⁴(1 − cos p)/4 in the code's convention θ = (a/2)cos(p x_1)). Hence β^{pw}(p) = S_j^{pw} + O(p²) with S_j^{pw} existing.
(ii) Γ̄(U_{θ^{cf}_φ}) is twice differentiable in φ at φ = 0 (indeed C² near 0), even in φ, and its φ² coefficient is the second-order kernel of Γ̄ at the trivial background evaluated on the linear potential θ^{cf}_1, with no contact or boundary term beyond that kernel (formula (4.3)).
(iii) S_j^{pw} = S_j^{cf} = 𝒞(Λ) = π_Λ/π_W, where π_Λ, π_W are the coefficients of the unique O(P²) structure (Lemma 5.3) of the second-order kernels of Γ̄ and Ā.
The O(p²) in (i) has natural scale (Λp)², i.e. (Lp)² at j = 1, because the kernels of Γ have range of order Λ fine spacings (§8.2).

## 2. Inputs, and Balaban's definition of the step

### 2.1 What Balaban defines (no statement of (PI) exists in Balaban)
Balaban defines the average of a gauge field configuration by contour families and logarithms, CMP 109 p. 253, (0.4) [V: page image, PDF p. 5]:
  "Ū(c) = M(U, c) = exp[ i Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} 1/|G(c_−,x)| Σ_{Γ′∈G(c_+,x′)} 1/|G(c_+,x′)| × (1/i) log U(Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c)) ] U(c)."   (0.4)
The contour family is the full permutation family, CMP 109 p. 252 [V: page image, PDF p. 4]: "take a permutation {π(1), π(2), …} of indices μ with nonzero numbers n_μ, next take |n_{π(1)}| bonds in the direction sign n_{π(1)}e_{π(1)} starting at y, …. We define G(y, x) as the family of contours generated by all such permuations." Its purpose is lattice symmetry, same page: "The set of contours used in this definition was too small to be lattice Euclidean symmetric, so we extend it."
The group average M obeys, CMP 109 p. 253 [V: page image, PDF p. 5]: "M({uU_jv}) = uM({U_j})v;   (0.6)".
Gauge covariance is used for the fluctuation integral, CMP 109 p. 265 [V: page image, PDF p. 17]: "The gauge covariance of the averages implies that the δ-functions in (2.1) are invariant under the gauge transformations V → V^v, W → W^v".
CMP 109 p. 254 introduces the variant (0.12) and states: "Let us stress that both definitions are equally good for our purposes" [V: text layer l. 268–273; the passage was checked on the page image in SOURCES_T2_V1 §4]. The project's numerics use (0.4) (SOURCES_T2_V1 §4, graded in SOURCES_T2_V1_VERIFY). The argument below uses only gauge covariance, analyticity near the identity, and lattice symmetry of the averaging. These hold for both (0.4) and (0.12). So Theorem PI holds for either averaging, with the same proof.

### 2.2 The three inputs
(I1) Massiveness at the trivial background, level j. For every real coarse momentum K the per-momentum blocks B̂ord(K) (size 12Λ⁴ + 12) and Ĝ(K) of the ghost D_k^TD_k (size 3(Λ⁴ − 1)) at U = 1 are invertible.
Consequence [P, Paley–Wiener]: the entries are trigonometric polynomials in K, so the inverses are analytic and bounded on a strip |Im K| ≤ δ_j, and the kernels of Bord(1)^{−1}, G(1)^{−1} decay like C e^{−m|x−y|} with m > 0 (fine distance, m of order δ_j/Λ).
Status [R]: for the one-step bordered matrix, invertibility for all real K is U3_REPAIRS O6 (U3_REPAIRS_VERIFY grade 4, CONFIRMED), and the strip version is U3_AW Lemma A1 (U3_AW_VERIFY item 3, CONFIRMED); SOURCES_T2_S123 §2 (I2) uses the same two facts. At j = 1 the composed matrix is the one-step matrix, up to the residual gauge-fixing form (D_k with Dirichlet anchors versus D_fΠD_f^*), which does not change invertibility [I]. For j ≥ 2, invertibility of the composed fine matrix follows from O6 at each of the j levels by the tower property (BETA_FP_H Fact 1.1(d)) [I: chaining not written]. Numerically, the code inverts these blocks at every grid point and its BZ averages converge exponentially in the grid size (NUMERICS §5).

(I2) Gauge covariance. For a fine gauge transformation u, Δ(U^u) = R(u)Δ(U)R(u)^{−1}, D_k(U^u) = R(u)D_k(U)R(u)^{−1}, Q̃(U^u) = R(u|_{anchors})Q̃(U)R(u)^{−1}, where R(u) acts on each fluctuation coordinate by Ad of u at one site (the base point of the link in the left trivialization; the anchor for a multiplier; the site for a ghost). For Δ this is exact at every U, critical or not: A(e^{iAd_u B}U^u) = A((e^{iB}U)^u) = A(e^{iB}U) [P]. For D_k it holds by definition [P]. For Q̃ it follows from covariance of the averaging, (0.6) and the p. 265 sentence above [V], composed over the j steps [I: the composed form Ū(U^u)(c) = u(c_−)Ū(U)(c)u(c_+)^{−1} is read off (0.4), not written out]. SOURCES_T2_S123 §2 (I3) quotes the same covariance from CMP 99 p. 395 (3.32) [V there]. Only u with values in the σ_3 torus, and constant u (for charge conjugation), are used below.

(I3) Lattice symmetry. Γ(U^σ) = Γ(U) for the axis permutation σ: e_0 → e_1, e_1 → e_2, e_2 → e_0, e_3 → e_3, acting about a block centre. Reason: odd L and centred blocks make the block lattice and the anchor set invariant; the Wilson action is invariant; the contour family is the full permutation family quoted above, so (0.4) is invariant; σ maps links to links with their orientation, so no change of trivialization occurs [I: invariance of the composed linearized averaging under σ read off (0.4), not checked entry by entry]. Lemma 5.3 (optional, obligation (b)) uses the full hypercubic group including reflections; Theorem PI uses only σ.

Charge conjugation. The constant transformation c = e^{iπσ_1/2} maps U_θ to U_{−θ} and is a global gauge transformation. By (I2), Γ(U_{−θ}) = Γ(U_θ) [P given (I2)].

## 3. The local density ρ_c and its Taylor kernels — obligation (a)

### 3.1 Definition
Every coordinate of Bord and of the ghost (a fine link component, a fine ghost site, a coarse multiplier) is assigned to the coarse cell that contains its position. For a bounded operator Y write tr_c Y := Σ_{i ∈ cell c} Y_{ii}. Bord(U) is real symmetric, so X(U) := Bord(U)^T Bord(U) = Bord(U)² ≥ 0 and log|det Bord| = ½ log det X. Put G(U) := D_k(U)^TD_k(U). When X(U) and G(U) are invertible, define

  ρ_c(U) := tr_c[log G(U)] − ¼ tr_c[log X(U)],   log Y := (2πi)^{−1} ∮_𝒞 log z (z − Y)^{−1} dz,   (3.1)

with 𝒞 a contour in Re z > 0 around the spectrum. The per-coarse-cell density is Γ̄(U) := lim_{N→∞} (2N + 1)^{−4} Σ_{|c|_∞ ≤ N} ρ_c(U), whenever the limit exists. Ā is defined the same way from the Wilson action density per cell.

Lemma 3.1 (consistency with the code) [P, Floquet–Bloch]. If U is periodic under translations by ΛN e_μ, then Γ̄(U) = N^{−4} ∫ dk/(2π)⁴ [log det Ĝ_N(k) − ½ log|det B̂ord_N(k)|] over the reduced Brillouin zone, with Ĝ_N, B̂ord_N the Bloch fibres. Proof: the operators commute with the period translations; the Bloch transform maps the per-period sum of diagonal blocks of log Y to ∫ tr log Ŷ_N(k), and tr log Ŷ = log det Ŷ for positive Ŷ. ∎ The NUMERICS §5 formula for w(p) is the second a-derivative of this BZ integral, written with transfer kernels; it was checked against real-space finite differences of log|det| on the periodic 6⁴ lattice to 8·10^{−8} (NUMERICS §5) [I: the transfer-kernel algebra itself not rederived here; SOURCES_D1_VERIFY item (6) rederived the analogous source formulas].

### 3.2 Gauge invariance
Lemma 3.2 [P given (I2)]. ρ_c(U^u) = ρ_c(U) for every fine gauge transformation u (finitely supported or not) for which both sides are defined.
Proof. By (I2), Bord(U^u) = 𝒰 Bord(U) 𝒰^{−1} with 𝒰 = diag(R(u), R(u|_{anchors})) orthogonal and block diagonal, each block acting on the coordinates at one site, hence inside one cell. So X(U^u) = 𝒰X(U)𝒰^{−1} and log X(U^u) = 𝒰 log X(U) 𝒰^{−1}. The diagonal block at cell c is conjugated by the orthogonal block 𝒰_c, so tr_c is unchanged. The ghost term is the same. ∎
For abelian u = e^{iχσ_3} and abelian U_θ, U_θ^u = U_{θ+dχ}. Hence ρ_c(U_{θ+dχ}) = ρ_c(U_θ).

### 3.3 Localization of the Taylor kernels at the trivial background
Let r be the range of Bord and G in fine units (r is of order Λ: one block for Q̃, one plaquette for Δ). X has range 2r.

Lemma 3.3 [P given (I1)]. (a) There are m > 0 and C with |(z − X(1))^{−1}(u, v)| ≤ C e^{−m|u−v|} and |(z − G(1))^{−1}(u, v)| ≤ C e^{−m|u−v|} for all z ∈ 𝒞.
(b) For θ supported on a finite set S, ρ_0(U_θ) is real-analytic in (θ(x))_{x∈S} near 0. Its first derivatives vanish at θ = 0. Its second-derivative kernel R_0(x, y) := ∂²ρ_0(U_θ)/∂θ(x)∂θ(y)|_{θ=0} is real, symmetric, and |R_0(x, y)| ≤ C′ e^{−m′(|x| + |y|)}, with |x| the distance of the link x from cell 0 and some m′ ∈ (0, m).
(c) By coarse translation invariance at U = 1, R_c(x, y) = R_0(x − Λc, y − Λc).
Proof. (a) At U = 1 the operators are invariant under coarse translations. The symbol z − X̂(K) = z − B̂ord(K)² is invertible for real K and z ∈ 𝒞 because B̂ord(K) is invertible and real symmetric (I1), so X̂(K) ≥ c_X > 0; choose 𝒞 around [c_X, ‖X‖] in Re z > 0. By compactness of 𝒞 × BZ it stays invertible on a strip |Im K| ≤ δ, uniformly in z ∈ 𝒞. Shifting the K-integration contour gives the bound. The ghost is the same.
(b) For θ supported on S, X(U_θ) − X(1) has finitely many nonzero entries, each analytic in θ and O(|θ|). So the resolvent and (3.1) are analytic in θ near 0. Charge conjugation (§2.2) gives ρ_0(U_{−θ}) = ρ_0(U_θ), so the first derivatives vanish at 0. Write X_x := ∂_{θ(x)}X|_0, X_{xy} := ∂²_{θ(x)θ(y)}X|_0 (supported within 2r of x, and zero unless |x − y| ≤ 4r) and 𝓡 := (z − X(1))^{−1}. Then
  ∂_x∂_y tr_0 log X = (2πi)^{−1} ∮_𝒞 log z · tr_0[𝓡X_{xy}𝓡 + 𝓡X_x𝓡X_y𝓡 + 𝓡X_y𝓡X_x𝓡] dz,
and the same for G. In tr_0[𝓡X_x𝓡X_y𝓡] the chain of kernels runs from cell 0 to a point near x, to a point near y, and back to cell 0. By (a) and finite range its modulus is ≤ C e^{−m(|x| + |x − y| + |y|) + C(r)}, with polynomial prefactors from the finite ranges. The X_{xy} term is bounded the same way. This gives the bound with any m′ < m. Realness and symmetry are those of mixed partials of a real function. (c) is immediate. ∎

### 3.4 The kernel Π̂ and its analyticity — obligation (a)
Use link midpoints as positions. For link directions μ, ν define

  Π̂_{μν}(p) := Σ_{x: dir μ} Σ_{y: dir ν} e^{ip·(x−y)} R_0(x, y),   Π̂^W_{μν}(p) the same for the Wilson density.   (3.2)

By Lemma 3.3(b) the double sum converges absolutely for |Im p| < m′. So Π̂ is analytic there [P given (I1)]. By Lemma 3.3(c), Π̂_{μν}(p) = Σ_{x ∈ cell 0, dir μ} Σ_{y, dir ν} e^{ip·(x−y)} R(x, y) with R := Σ_c R_c the total second-derivative kernel: Π̂ is the per-cell (umklapp-diagonal) second-order kernel of Γ at the trivial background, the object called Π_Λ(P) in BETA_FP_H §3.1 (there in coarse momentum P = Λp). Its domain of analyticity is |Im P| < Λm′ in coarse units. The diagonal entries are real and even: Π̂_{νν}(p)‾ = Π̂_{νν}(−p) by realness, and Π̂_{νν}(−p) = Π̂_{νν}(p) by the symmetry R_0(x, y) = R_0(y, x) and relabelling.
