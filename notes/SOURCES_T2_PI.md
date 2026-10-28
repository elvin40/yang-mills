IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_PI — probe independence (PI) at fixed level j: plane-wave p² coefficient = constant-field f² coefficient (DERIVE)

Date: 2026-10-28. Item PI, DERIVE. Author: headless Claude session.
Status: complete (sections appended one at a time; unverified). (PI) proved at fixed j given (I1)–(I3); d = 2 numerical test agrees to 4·10^{−5}; (1.1) at L = 3 not evaluated (no d = 4 f-symbol code).

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

(I3) Lattice symmetry. For the axis permutation σ: e_0 → e_1, e_1 → e_2, e_2 → e_0, e_3 → e_3, acting about the centre of cell 0, Bord(U^σ) = 𝒫 Bord(U) 𝒫^{−1} and G(U^σ) = 𝒫 G(U) 𝒫^{−1}, with 𝒫 an orthogonal matrix that maps the coordinates at a site (link) z to those at σz. In particular Γ(U^σ) = Γ(U), and ρ_{σc}(U^σ) = ρ_c(U) for the local densities of §3. Reason: odd L and centred blocks make the block lattice and the anchor set invariant; the Wilson action is invariant; the contour family is the full permutation family quoted above, so (0.4) is invariant; σ maps links to links with their orientation, so no change of trivialization occurs [I: invariance of the composed linearized averaging under σ read off (0.4), not checked entry by entry]. Lemma 5.3 (optional, obligation (b)) uses the full hypercubic group including reflections; Theorem PI uses only σ.

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

## 4. The constant field: the f² coefficient is the second-order kernel on the linear potential — obligation (c), first half

Notation. ℓ(x) := x_0 δ_{μ(x),1} (x a link, μ(x) its direction, x_0 the 0-coordinate of its base point), so θ^{cf}_φ = φℓ. The potential grows linearly; the field strength dℓ = 1 on (0,1) plaquettes is constant. Write X(φ) := X(U_{φℓ}), G(φ) := G(U_{φℓ}).

### 4.1 Invertibility at small flux (magnetic Neumann series)
Lemma 4.1 [P given (I1), (I2) and analyticity of the averaging near the identity]. There are φ_0 > 0, m″ > 0, C with: for |φ| ≤ φ_0 and z ∈ 𝒞 ∪ [0, c_X/2], z − X(φ) is invertible and |(z − X(φ))^{−1}(u, v)| ≤ C e^{−m″|u−v|}; the same for G(φ). In particular spec X(φ) ⊂ (c_X/2, ‖X‖] lies inside 𝒞, and ρ_c(U_{φℓ}) is defined.
Proof. U_{φℓ} is gauge equivalent to the symmetric-gauge field, and the bounds are gauge invariant (|kernels| are unchanged by the orthogonal 𝒰 of Lemma 3.2). In symmetric gauge the background is invariant under magnetic translations by ΛZ⁴, so by (I2) X(φ) commutes with them. By U3_LEMMA51 Lemma 3.1, X(φ)(u, v) = W_φ(u, v) x_φ(u, v) with W_φ(u, v) = exp(ieφ u∧v/2) acting sector-wise (charge e of the colour sector, U3_LEMMA51 Lemma 2.1) and x_φ invariant under coarse translations, of range 2r. Evaluating x_φ with u in cell 0, where all link angles in range are O(|φ|(Λ + r)²), and using analyticity of the Wilson action, of D_k and of the averaging (0.4) in the link variables near the identity, gives |x_φ − x_0| ≤ C|φ| entrywise. Let g_0 be the kernel of (z − X(1))^{−1} (Lemma 3.3(a)) and S := W_φ g_0 (entrywise product). Since W_φ(u, w)W_φ(w, v) = W_φ(u, v) e^{ieφ(u−w)∧(w−v)/2} (U3_LEMMA51 Lemma 3.2), (z − X(φ))S = W_φ(1 + E) with
  |E(u, v)| ≤ Σ_w [ |x_φ − x_0|(u, w) + |x_0(u, w)| |e^{ieφ(u−w)∧(w−v)/2} − 1| ] |g_0(w, v)| ≤ C|φ|(1 + |u − v|) e^{−m|u−v|}.
Kernels with |K(u, v)| ≤ k(u − v), k ∈ ℓ¹ with weight e^{m₁|·|} (m₁ < m), form a Banach algebra under the twisted product, because |phases| = 1 and the bound passes to convolutions. So for |φ| ≤ φ_0 the operator W_φ(1 + E) is inverted by a Neumann series inside this algebra, and S(W_φ(1 + E))^{−1} is a right inverse with kernel ≤ C e^{−m″|u−v|}. X(φ) is bounded and self-adjoint, so this is the inverse. Uniformity in z follows from compactness. The ghost is the same. This is the argument of SOURCES_T2_S123 Lemma 1.2 (Nenciu-type inverse; SOURCES_T2_S123_VERIFY grade 2, CONFIRMED), here applied to the fine composed operators at fixed j. ∎

### 4.2 Differentiability along the linear potential
Lemma 4.2 [P given Lemmas 3.3, 4.1]. F(φ) := ρ_0(U_{φℓ}) is C² on |φ| < φ_0, even, and

  F″(0) = Σ_{x,y} ℓ(x)ℓ(y) R_0(x, y) = Σ_{x,y: dir 1} x_0 y_0 R_0(x, y),   (4.1)

the double sum being absolutely convergent.
Proof. Entries of X(φ) are analytic in φ, vanish for |u − v| > 2r, and obey |∂_φ^k X(φ)(u, v)| ≤ C_k(1 + |u|)^k, since each link angle φℓ(x) has φ-derivative ℓ(x), |ℓ(x)| ≤ |x|. Put 𝓡_φ := (z − X(φ))^{−1}. The resolvent identity 𝓡_{φ+h} − 𝓡_φ = 𝓡_{φ+h}(X(φ + h) − X(φ))𝓡_φ holds for bounded operators. Take its (u, u′) entry with u, u′ in cell 0. The middle factor divided by h converges entrywise to ∂_φX(φ) and is bounded by C(1 + |v|) (mean value theorem). The outer factors are bounded by C e^{−m″|u−v|} and C e^{−m″|v′−u′|} (Lemma 4.1), and 𝓡_{φ+h} → 𝓡_φ entrywise by the same identity. Dominated convergence gives ∂_φ𝓡_φ(u, u′) = [𝓡_φ ∂_φX 𝓡_φ](u, u′) as an absolutely convergent sum, continuous in φ. Once more: ∂_φ²𝓡_φ(u, u′) = [𝓡_φ ∂_φ²X 𝓡_φ + 2𝓡_φ ∂_φX 𝓡_φ ∂_φX 𝓡_φ](u, u′); the chain cell 0 → v → w → cell 0 carries e^{−m″(|v| + |v−w| + |w|)} against (1 + |v|)(1 + |w|), so it converges absolutely and is continuous in φ. Integrating against log z over the compact 𝒞 and adding the ghost term gives F ∈ C². Evenness: charge conjugation (§2.2). At φ = 0, ∂_φX(0) = Σ_x ℓ(x)X_x and ∂_φ²X(0) = Σ_{x,y} ℓ(x)ℓ(y)X_{xy} (finite sums entrywise). Inserting these and exchanging the sums (Fubini; the bound of Lemma 3.3(b) times |ℓ(x)ℓ(y)| ≤ |x||y| is summable) gives (4.1). ∎

### 4.3 The per-cell density and the absence of extra terms
Magnetic translations. Translating U_{φℓ} by Λc gives U_{φℓ + φΛc_0 δ_{μ1}}, and φΛc_0 δ_{μ1} = dχ with χ(x) = φΛc_0 x_1. Lemma 3.2 (it does not need finite support) gives ρ_c(U_{φℓ}) = ρ_0(U_{φℓ}) for every c. So Γ̄(U_{φℓ}) = F(φ) exactly, the limit defining Γ̄ is trivial, and

  [φ²] Γ̄(U_{θ^{cf}_φ}) = ½ Σ_{x,y: dir 1} x_0 y_0 R_0(x, y),   Γ̄(U_{θ^{cf}_φ}) − Γ̄(1) = φ² [φ²]Γ̄ + o(φ²).   (4.3)

What (4.3) contains, and what it does not.
- The contact (tadpole) contribution is inside R_0: it is the X_{xy} term, the same object as the tr(M^{−1}M″) term of the plane-wave formula (NUMERICS §5). Nothing else of second order exists, because F″ is computed exactly by Lemma 4.2.
- No boundary term arises: no summation by parts is used, and the sum is evaluated at the single cell 0, where it converges absolutely.
- The result does not depend on the gauge of the linear potential. For θ = φ(ℓ + dq) with q a polynomial, Lemma 3.2 gives the same F. At the level of (4.1) this is the identity Σ_y R_0(x, y)(dq)(y) = 0 for polynomial q (Lemma 5.1 below and its polynomial extension). So symmetric gauge and Landau gauge give the same number.
- The quadratic form ½⟨A, ΠA⟩ of the total kernel has no per-cell meaning at A = φℓ: (Πℓ)(x) is a coarse-periodic function with zero cell average, multiplied by the growing ℓ(x). This is why the per-cell limit must be taken with a gauge-invariant local density, as here, and not with the A-form of the quadratic functional.
- Coarse units. f = Λ²φ, so [f²](log Z_Λ(V_f)) = Λ^{−4}[φ²]Γ̄, and [φ²]Ā = Λ⁴/2 (Ā = Λ⁴(1 − cos φ)). Hence S_j^{cf} = [φ²]Γ̄ / (Λ⁴/2) = [f²](log Z_Λ(V_f))/n_2 with n_2 = ½.

## 5. The plane wave, the moment identity, and the proof of Theorem PI — obligations (b), (c)

### 5.1 One-sided gauge sums
Lemma 5.1 [P given (I1), (I2)]. For every link x and every direction ν, Σ_{y: dir ν} R_0(x, y) = 0. More generally Σ_y R_0(x, y)(dq)(y) = 0 for every polynomial q on sites.
Proof. For finitely supported χ, Lemma 3.2 gives ρ_0(U_{θ + t dχ}) = ρ_0(U_θ) for θ near 0 with finite support. Differentiate in θ(x), set θ = 0, differentiate in t at t = 0: Σ_y R_0(x, y)(dχ)(y) = 0. For a polynomial q of degree k put χ_n := q·1_{|z| ≤ n}. Then dχ_n = dq on links within distance n − 1 of cell 0, |dχ_n| ≤ C n^k on the boundary shell, and dχ_n = 0 outside. So |Σ_y R_0(x, y)(dq − dχ_n)(y)| ≤ C Σ_{|y| ≥ n−1} e^{−m′|y|}(1 + |y|)^k → 0 (Lemma 3.3(b)). The choice q(z) = z_ν gives dq = δ_{μ(y),ν}. ∎
The same holds for the Wilson density (finite range, exact gauge invariance).

### 5.2 The moment identity
Lemma 5.2 [P given Lemmas 3.3, 5.1]. s ↦ Π̂_{11}(s e_0) is real-analytic and even near 0, Π̂_{11}(0) = 0, and

  [s²] Π̂_{11}(s e_0) = Σ_{x,y: dir 1} x_0 y_0 R_0(x, y) = F″(0).   (5.1)

Proof. For direction-1 links the midpoint and the base point have the same 0-coordinate, so Π̂_{11}(s e_0) = Σ_{x,y: dir 1} cos(s(x_0 − y_0)) R_0(x, y) (the sine part cancels by the symmetry of R_0). Use |cos u − 1 + u²/2| ≤ u⁴/24 and Σ (x_0 − y_0)⁴|R_0(x, y)| < ∞. The s⁰ term is Σ_x Σ_y R_0(x, y) = 0 by Lemma 5.1. The s² term is −½ Σ (x_0 − y_0)² R_0 = −½ Σ_x x_0² Σ_y R_0(x, y) − ½ Σ_y y_0² Σ_x R_0(x, y) + Σ x_0y_0 R_0(x, y). The first two vanish by Lemma 5.1 and the symmetry of R_0. The last equality in (5.1) is (4.1). ∎
Combining with (4.3): [φ²] Γ̄(U_{θ^{cf}_φ}) = ½ [s²] Π̂_{11}(s e_0). The same computation for the Wilson density gives [φ²] Ā = ½ [s²] Π̂^W_{11}(s e_0).

This is the core of obligation (c). In words: the linear potential ℓ = x_0 e_1 is the s → 0 limit of the plane waves sin(s x_0)/s · e_1, and the two terms that distinguish the local density at cell 0 from the per-cell average (the x_0², y_0² moments, equivalently the e^{±is(x_0+y_0)} parts) vanish by one-sided gauge invariance.

### 5.3 The plane wave
Lemma 5.3 [P given Lemma 3.3]. w(p) = ½ Π̂_{22}(p e_1) and t(p) = ½ Π̂^W_{22}(p e_1) for small real p ≠ 0. Explicitly t(p) = Λ⁴(1 − cos p).
Proof. θ_1 := cos(p x_1)δ_{μ2} is bounded, so ‖X(U_{aθ_1}) − X(1)‖ ≤ C|a|, and ρ_c(U_{aθ_1}) is analytic in a on a fixed disc, with bounds uniform in c (Neumann series; Lemma 3.3(a)). Cauchy estimates let ∂_a² commute with the average over c. As in Lemma 4.2, ∂_a²ρ_c|_0 = Σ_{x,y} θ_1(x)θ_1(y)R_c(x, y) = Σ_{x,y: dir 2} cos(p(x_1 + Λc_1)) cos(p(y_1 + Λc_1)) R_0(x, y), by Lemma 3.3(c). Write the product of cosines as ½[cos(p(x_1 − y_1)) + cos(p(x_1 + y_1 + 2Λc_1))]. The second term averages to 0 over |c|_∞ ≤ N as N → ∞ when 2Λp ∉ 2πZ, which holds for small p ≠ 0; the sums converge uniformly by Lemma 3.3(b). The first term gives ½ Σ cos(p(x_1 − y_1)) R_0 = ½ Π̂_{22}(p e_1). For the Wilson action the (1,2) plaquette angle is a[cos(p(x_1 + 1)) − cos(p x_1)], whose square averages to a²(1 − cos p); with 1 − cos ψ = ψ²/2 + O(ψ⁴), the second a-derivative per fine site is 1 − cos p, and per coarse cell Λ⁴(1 − cos p). ∎

### 5.4 Proof of Theorem PI
(i) By Lemma 5.3 and §3.4, w and t are real-analytic and even near p = 0. They vanish at p = 0 by Lemma 5.1 (Π̂_{22}(0) = Σ_{x,y: dir 2} R_0 = 0). t(p) = Λ⁴(1 − cos p) has a simple p² zero. So β^{pw} = w/t extends to an even real-analytic function near 0, and S_j^{pw} = β^{pw}(0) = [p²]Π̂_{22}(p e_1)/[p²]Π̂^W_{22}(p e_1) = [p²]Π̂_{22}(p e_1)/Λ⁴.
(ii) Lemmas 4.1, 4.2 and (4.3).
(iii) By (I3), ρ_{σc}(U^σ) = ρ_c(U); σ fixes cell 0, so R_0(σx, σy) = R_0(x, y). σ is orthogonal and fixes the centre of cell 0, so Π̂_{σμ,σν}(σp) = Π̂_{μν}(p). With σe_0 = e_1, σe_1 = e_2: Π̂_{22}(s e_1) = Π̂_{11}(s e_0). The same holds for Π̂^W. Hence, by §5.2 and §4.3,

  S_j^{pw} = [s²]Π̂_{11}(s e_0)/Λ⁴ = 2[φ²]Γ̄(U_{θ^{cf}_φ})/Λ⁴ = [φ²]Γ̄ / [φ²]Ā = S_j^{cf} = 𝒞(Λ).   ∎

What the proof uses: (I1) (massiveness at U = 1 at this j), (I2) (gauge covariance), (I3) (one axis permutation), and the analyticity of the averaging near the identity. It does not use transversality in Fourier form, the full hypercubic group, Prop. 2.1 of BETA_FP_LEMMA43, (G2), (F), (M_j), or V1.

### 5.5 The one-structure lemma (obligation (b)) and π_Λ
Lemma 5.4 [P given (I1), (I2), and invariance under the full hypercubic group about the centre of cell 0, the reflection part being an extension of (I3) [I]]. Π̂_{μν}(p) = π_Λ(|p|²δ_{μν} − p_μp_ν) + O(|p|⁴), and the same for Π̂^W with π_W = Λ⁴.
Proof. Lemma 5.1 with χ = e^{−ip·z} (by the same truncation argument, exponential decay beating the bounded χ) gives the transversality Σ_ν Π̂_{μν}(p) p̂_ν = 0, p̂_ν = 2 sin(p_ν/2) (midpoint positions). Π̂(0) = 0 (Lemma 5.1). Reflection invariance and the symmetry of R_0 make Π̂ even and symmetric in (μ, ν). So Π̂_{μν}(p) = c_{μναβ}p_αp_β + O(p⁴) with c invariant under the hypercubic group: c = a δ_{μν}δ_{αβ} + b(δ_{μα}δ_{νβ} + δ_{μβ}δ_{να}) + c′ δ_{μναβ}. Transversality at order p³ (p̂ = p + O(p³)) gives a p_μ|p|² + 2b p_μ|p|² + c′ p_μ³ = 0 for all p, so c′ = 0 and b = −a/2. Put π_Λ := a. For the Wilson density, Π̂^W_{22}(p e_1) = 2t(p) = Λ⁴p² + O(p⁴), so π_W = Λ⁴. ∎
Consequence: S_j^{pw} = S_j^{cf} = π_Λ/π_W, which is (iii) in the form of BETA_FP_H §3.1. Any plane wave with polarization orthogonal to its momentum, along any axis, gives the same limit. BETA_FP_H_VERIFY §5 confirmed the transversality + hypercubic step; Lemma 5.4 is that step with the analyticity now proved from (I1).

## 6. The expansion point: the code versus Balaban's functional

### 6.1 Theorem PI has no expansion-point question
Theorem PI is a statement about one functional, Γ of (1.1), on fine abelian backgrounds. The code evaluates exactly this Γ at the fine plane wave U_0(a) (NUMERICS §5; ym_oneloop `one_step` in real space). At the constant field, Γ(U_0^φ) is the constrained functional log Z_Λ(V_f) itself (§1.1). So "plane-wave p² coefficient of what the code computes = constant-field f² coefficient of log Z_Λ" is Theorem PI as stated, with no correction. The fact that the fine wave is not a constrained stationary point (SOURCES_D1_VERIFY V4; U3_VERIFY §6) does not enter.

### 6.2 Where the expansion point does enter: identification with Balaban's kernel
Balaban's per-step quantity is built from the true coarse functional Φ(V) := log Z_Λ(V): Γ evaluated at the constrained minimizer U(V), plus the multiplier term −⟨J, C̃^{(2)}⟩ (U3_VERIFY §6 (c)). Its second-order kernel at V = 1 is what a second-moment definition of β uses (SOURCES_T2_V1 §1, §3). The code's plane wave probes Γ″[A_bg, A_bg] with A_bg the fine wave; the true kernel is Γ″[H_1Q̃A_bg, H_1Q̃A_bg] plus the J-term (Γ′(1) = 0 removes the U″ term, U3_VERIFY §6 (a)). U3_VERIFY §6 (b), (c) argues that the difference is O(p⁴) in w, so the p² coefficient is unchanged; SOURCES_D1_VERIFY V4 gives the same at sketch level and corrects the scale to (Lp)². These are [I] (sketch level, graded CONFIRMED as sketches).

Corollary 6.1 (a second route to the U3_VERIFY §6 statement) [R: (I1)–(I3) for Φ as a functional of the coarse field, see below]. Apply the proof of Theorem PI to Φ, with coarse abelian fields in place of fine ones, the coarse Wilson action as normalization, and local densities ρ_c^Φ(V) := ρ_c(U(V)) + (local density of the J-term). The proof gives π^{true}_Λ/π^W_{coarse} = lim_{f→0}[Φ(V_f) − Φ(1)]/(n_2f²). At the constant field Φ(V_f) = Γ(U_0^φ) exactly (U(V_f) = U_0^φ up to gauge and J = 0, §1.1). So π^{true}_Λ/π^W_{coarse} = 𝒞(Λ) = S_j^{pw}: the code's p → 0 limit equals the p² coefficient of the true kernel, exactly.
What this needs. (i) Gauge invariance of Φ: CMP 109 p. 254 [V: page image, PDF p. 6]: "t(V, U) is a gauge invariant kernel …. If ϱ is a gauge invariant function, then Tϱ is gauge invariant also." (ii) Exponential locality and analyticity of the minimizer map V ↦ U(V) near V = 1 and along the constant field, so that ρ_c^Φ has exponentially localized Taylor kernels in V. At fixed j this follows from (I1) and Lemma 4.1 by the implicit function theorem applied to the constrained stationarity equations [I: not written]. (iii) The analogue of (I3) for Φ, which follows from (I3) and uniqueness of the minimizer [I].
So Corollary 6.1 replaces the O(p⁴) bookkeeping of U3_VERIFY §6 by a locality statement about the minimizer map at fixed j. It is a fixed-level statement. It does not give the uniform-in-k version A6 that Route B needs (THEOREM2_PROOF_v4 §4.2a, §10 B5).

### 6.3 Finite p
At finite p the code's β^{pw}(p) differs from β^{pw}(0) by an even analytic O(p²) term (Theorem PI (i)). Its natural scale is (Λp)², because the kernels R_0 have range of order Λ fine spacings (Lemma 3.3: the decay rate m′ is of order δ_j/Λ). This term has two sources: the genuine O(P⁴) part of the kernel ratio (dimension-6 terms, BETA_FP_H §3.2) and the expansion-point difference between Γ″[A_bg, A_bg] and the true kernel at finite p (SOURCES_D1_VERIFY V4). Neither affects the p → 0 limit. §8.2 checks the listed numbers against this.

## 7. The massless pieces — obligation (d); the lattice transfer of (F)

### 7.1 Which combination is probe-independent
At V_f, Prop. 2.1 of BETA_FP_LEMMA43 holds exactly (BETA_FP_H (1.1); BETA_FP_H_VERIFY §2, CONFIRMED):
  log Z_Λ(V_f) = Fine(Λ; f) − Γ_c(Λ; f).
Each bracket is massless. At the constant field each has an f² ln|f| term (BETA_FP_H §1, "Per-cell densities and signs"; Theorem 3.1 proof, l. 110). At the plane wave the fine bracket has a p² ln(1/p²) term (Lüscher–Weisz (5.7), as used in BETA_FP_LEMMA43 Cor. 3.1), and the coarse bracket has the compensating log. So neither bracket has an f² coefficient or a p² coefficient. Lemma 3.3 fails for them: the kernels of the inverse operators decay only polynomially, and the second moments Σ x_0²|R_0| used in Lemma 5.2 diverge. Precisely:

(d1) [P, Theorem PI] Probe-independent: log Z_Λ = Fine − Γ_c jointly, at fixed Λ. This is the only form in which (PI) enters Theorem K. In KAPPA_BOUNDED Prop. 1.1 (l. 34) and BETA_FP_H Theorem 3.1, (PI) converts the plane-wave S_j into the constant-field coefficient of log Z_{Λ_j} (and of log Z_1, where both probes give 0: at Λ = 1 the constraint is trivial and log Z_1 is constant). The split into Fine and Γ_c, and the separate limits of their Λ-differences by (F) and (M_j), are then taken entirely on the constant-field side, where Prop. 2.1 is exact. No plane-wave statement about either bracket is used.

(d2) [R: LW (5.7); (F_lat) of §7.2] The Λ-differences of the fine bracket have the same normalized second-order coefficient for both probes: c log(Λ/Λ′). Plane wave: the fine bracket at coarse momentum P is the Wilson vacuum polarization at fine momentum P/Λ, whose per-tree value is c_2 ln(Λ²/P²) + κ_W^F + O(P²/Λ²) (LW (5.7)); the Λ-difference is c_2 ln(Λ²/Λ′²) = c log(Λ/Λ′). Constant field: BETA_FP_H (3.1). The constants κ_W^F and B do not need to agree; they refer to different infrared variables (P² versus |f|) and cancel in the difference.

(d3) [I] The Λ-differences of the coarse bracket are then probe-independent if the plane-wave coarse bracket is defined through the identity, Γ_c^{pw} := Fine − log Z_Λ. If it is defined as the coarse Gaussian one-loop with the plane-wave kernel, it differs by the defect 𝔡_Y of BETA_FP_PW Lemma 2.3 [proved, unverified there]. Neither version is used by Route K.

(d4) Not probe-independent: Fine(Λ) alone and Γ_c(Λ) alone. Their non-logarithmic constants (B at the constant field, κ_W^F at the plane wave) are tied to the infrared variable, and have no common meaning.

### 7.2 Lattice transfer of (F)
(F_lat). Per fine cell, the fine bracket at constant fine flux φ is a Λ-independent function F_W(φ) with F_W(φ) = n_2φ²[c_2 ln(1/|φ|) + B] + o(φ²) (real part, or log|det|), c_2 = c/2 = 11N²/(24π²).

Step A (scaling and (3.1)) [P]. The fine bracket depends on Λ only through φ = f/Λ² (BETA_FP_H_VERIFY §2, CONFIRMED). Per coarse cell Fine(Λ; f) = Λ⁴F_W(f/Λ²). Given (F_lat), Λ⁴(f/Λ²)²n_2[c_2 ln(Λ²/|f|) + B] − (Λ → Λ′) = n_2 f² c_2 ln(Λ²/Λ′²), and Λ⁴ o(f²/Λ⁴) = o(f²) at fixed Λ. Hence [Fine(Λ; f) − Fine(Λ′; f)]/(n_2f²) → c log(Λ/Λ′), which is BETA_FP_H (3.1). Only c_2 enters; B cancels.

Step B (the log coefficient is an angular integral of the degree −4 part) [I]. Write the formal f² integrand of the per-cell log|det| of the fine Feynman operator, from the Moyal expansion (U3_LEMMA51 (3.1)–(3.3)), as I(K) = I_{−4}(K) + O(|K|^{−2}) near K = 0, with I_{−4} homogeneous of degree −4 (spin–spin term b_0𝔨_1b_0𝔨_1 and the orbital P_2 terms; the tadpole b_0𝔨_2 is degree −2). The true per-cell function equals the K-integral of I cut off at |K| ≈ |φ|^{1/2}, up to O(φ²) without logarithm. Then n_2c_2 = ½(2π)^{−4}∫_{S³} I_{−4} dΩ. The region |K| ≲ |φ|^{1/2} and the Nielsen–Olesen band need the same kind of spectral control as (M_j) at level 0 (SOURCES_T2_S123 (S1), (S2)|_{t=0}, (S3), proved there at t = 0 given its (I3) [CONFIRMED in SOURCES_T2_S123_VERIFY]; BETA_FP_M Prop. 4.4 region 1 [argued]). For a single massless functional, rather than a Λ-difference, no project file writes this two-region argument with the logarithm. Status: standard background-field reasoning, not proved here.

Step C (the lattice degree −4 part equals the continuum one) [P given U3_LEMMA51 Lemma 3.4 (U3_LEMMA51_VERIFY item 4b)]. In midpoint symmetric gauge the fine Wilson Hessian symbol equals its continuum background-Feynman symbol times (1 + an even O(|k|²) term) at each order in f (U3_LEMMA51 Lemma 3.4). The ghost symbol is |k̂|² = |k|²(1 + O(|k|²)). I_{−4} is built only from the leading homogeneous parts of 𝔨_0 (degree 2), 𝔨_1(0) and the ghost. A relative O(|K|²) correction lowers the degree to −2, which gives no logarithm. So I_{−4}^{lat} = I_{−4}^{cont}, and the lattice c_2 equals the continuum c_2.

Step D (continuum value) [cited; source checked in BETA_FP_H_VERIFY §4, CONFIRMED; not rechecked here, no network]. G. Savvidy, arXiv:1910.00654, eq. (1.4): L_g = −F − (11N/(96π²)) g²F [ln(2g²F/μ⁴) − 1], F = (H² − E²)/2; original Phys. Lett. 71B (1977) 133. Conversion to Wilson β = 2N/g² and fine flux (BETA_FP_H_VERIFY §4): c_2 = 2N·11N/(48π²) = 11N²/(24π²); c = 2c_2 = 11N²/(12π²) = 0.371511 for SU(2) (arithmetic rechecked: 44/(12π²) = 0.37151).

Cross-check (consistency, not a proof). LW (5.7) gives the lattice plane-wave log coefficient c_2 per ln(1/q²) directly on the lattice. By (d2), the plane-wave and constant-field Λ-differences of the fine bracket agree, so Step C is consistent with the lattice plane-wave value.
Status of (F) after this section: Step A [P]; Step C [P given U3_LEMMA51 Lemma 3.4]; Step B [I]; Step D [cited, source checked]. The "lattice = continuum" part is now reduced to Step B, a two-region statement of the same type as (M_j) at level 0.

## 8. Numerics

### 8.1 Direct test of Theorem PI in d = 2 [numerical, new]
The proof of Theorem PI does not use the dimension. So the identity can be tested exactly where both probes are computable in real space: d = 2, one CMP 109 (0.4) step (full contour family), SU(2), fine torus n = L·nc, the functional (1.1) assembled from the existing routines of numerics/u3_lemma51_check.py (Hessian, linearized averaging, Dirichlet-anchored gauge gradient), imported, not modified.
- Constant field: q flux quanta on the torus, φ = 2πq/n², f = L²φ; β^{cf}(q) = [Γ(q) − Γ(0)]/[A(q) − A(0)], extrapolated to f → 0 in f².
- Plane wave: θ(x, μ = 1) = a cos(p x_0) ("pw10", polarization e_1, momentum e_0, the direct analogue of the Landau potential x_0e_1) and θ(x, μ = 0) = a cos(p x_1) ("pw01", the rotated wave); p = 2πm/n; β^{pw} = ratio of second a-differences of Γ and A; a = 0.02, 0.04 with Richardson in a², or a = 0.01 alone; then extrapolated to p → 0 in (Lp)².
Scripts: numerics/t2_pi_d2check.py (both probes), numerics/t2_pi_d2pw.py (plane wave only, for the larger torus). Output: numerics/results/t2_pi_d2_L3_nc6.json, t2_pi_d2_L3_nc12.json, t2_pi_d2_L5_nc8.json, t2_pi_d2pw_L3_nc18.json. The nc = 18 run of t2_pi_d2check.py hit the 290 s timeout after the m = 2 plane-wave point, so it wrote no JSON; its constant-field lines are quoted from the console. Each run took under 5 minutes. Gradient at the constant-field background: ≤ 2.2·10^{−15} (exact critical point).

Results, L = 3:
| run | constant field β^{cf} (q = 1, 2, 3) | f → 0 | plane wave β^{pw} at Lp | p → 0 |
|---|---|---|---|---|
| nc = 6 | −1.01290, −0.96243, −0.92920 (f = 0.17, 0.35, 0.52) | −1.0297 (2-pt) | −0.74765 (1.047), −0.07889 (2.094), 0.42744 (3.142) | not usable (Lp ≥ 1) |
| nc = 12 | −0.972685, −0.971564, −0.969756 (f = 0.044, 0.087, 0.131) | −0.973059 | −0.904640 (0.524), −0.710596 (1.047), −0.420638 (1.571) | see below |
| nc = 18 | −0.972936, −0.972720, −0.972360 (f = 0.019, 0.039, 0.058) | −0.973008 | −0.942348 (0.349), −0.852679 (0.698), −0.710510 (1.047) (a = 0.01) | −0.972966 (3-pt fit in (Lp)²) |
Fits of the plane-wave data to β_0 + b(Lp)² + c(Lp)⁴ (+ d(Lp)⁶): β_0 = −0.97297 (nc = 18, three points), −0.97300 (nc = 18 plus the nc = 12 point at Lp = 1.571, four points), −0.97269 … −0.97302 (nc = 12/18 mixed sets, three or four points). Constant field: −0.97301 (nc = 18), −0.97306 (nc = 12).
Reading. The two probes agree to 4·10^{−5} at nc = 18. That is the size of the extrapolation and torus errors: the same plane-wave point (p = 0.349) moves by 1·10^{−5} from nc = 12 to nc = 18, and the constant-field limit moves by 5·10^{−5}. At nc = 6 the torus is too small (4% shifts), as expected for exponential finite-size effects. pw10 and pw01 agree to all printed digits (the lattice-rotation step (iii)). The curvature is b ≈ 0.253 per (Lp)²; it is an even function of Lp, as Theorem PI (i) says. This tests the claim "no extra contact or boundary term" of §4.3 directly: an extra term would show up as a difference between the f → 0 and p → 0 limits.
L = 5, nc = 8 (rough): β^{cf} = −4.5919, −4.5413, −4.5028 (f = 0.098, 0.196, 0.295), f → 0: −4.609 (2-pt) to −4.613 (3-pt); β^{pw} = −4.0745, −2.6756, −0.8749 at Lp = 0.785, 1.571, 2.356, p → 0: −4.593 (3-pt). Agreement 0.4%, limited by the large Lp of the smallest commensurate momentum and by nc = 8. Supportive only.
Limits of the test: d = 2, one step (j = 1), torus. It tests the logic of §3–§5, not the d = 4 input (I1) and not the 4D numbers.

### 8.2 Consistency with the listed d = 4 numbers [numerical, from NUMERICS §6–§7]
Theorem PI (i) says β^{pw}(p) is even and analytic with natural variable Lp (j = 1). Slopes per (Lp)² from the listed values:
- L = 3 (Lp = 0.6 → 1.2): (0.6893 − 0.6692)/1.08 = 0.019. The p = 0.1 value 0.6667 lies above the even-quadratic prediction 0.664; NUMERICS §6 attributes this to the grid error, which dominates at p = 0.1.
- L = 9 (Lp = 0.5 → 0.9 → 1.0): 0.023, 0.026. L = 11 (Lp = 0.5 → 1.0): 0.024.
- L = 2 (Lp = 0.4 → 0.8): 0.007; p = 0.1 predicted 0.6299, listed 0.6299. L = 2 is even, outside (I3) (no centred blocks), so it is outside Theorem PI; the numbers are still even in p.
The odd-L slopes are 0.019–0.026 per (Lp)², roughly L-independent. That is what the (Λp)² scaling of §6.3 predicts. Extrapolating with slope 0.024: β_1(0) ≈ 0.827 (L = 9) and ≈ 0.844 (L = 11), so the first-step constants β_1(0) − c log L are ≈ +0.011 and ≈ −0.047 (the NUMERICS §7 fixed-Lp values are +0.02 and −0.04) [numerical; one assumed common slope; L = 11 grid adequacy unchecked]. The Lp drift is the O((Lp)²) term of Theorem PI (i), which contains both the P⁴ part of the kernel ratio and the expansion-point part (§6.3); it is not a failure of (PI).

### 8.3 The constant-field value d_1 at L = 3
Theorem PI gives β_1(0) (code, L = 3) = 𝒞(3), the constant-field coefficient. KAPPA_BOUNDED (1.2) then reads 𝒞(3) = c log 3 − d_1 with d_1 from the symbol integral (1.1), given (F), (M_1), V1. So d_1 = c log 3 − β_1 = 0.408 − 0.664 = −0.256 is a prediction for (1.1). An independent evaluation of (1.1) needs the d = 4 per-momentum f-symbols σ_1^{(1)}, σ_1^{(2)} at L = 3. No existing script computes them: KAPPA_BOUNDED l. 159 ("a direct test is a per-momentum σ_j^{(2)} scan …, which no existing code does"; U3_AW_VERIFY §7: no d = 4 per-momentum f-code). numerics/u3_lemma51_check.py is d = 2 only. A direct 4D real-space constant-field run is also out of reach (an L = 3 torus with nc ≥ 4 has ≥ 12⁴·… fine links and needs nc ≈ 12 for torus errors below 10^{−4}, by the d = 2 data above). So (1.1) at L = 3, j = 1 was not evaluated. KAPPA "cheap test (1)" stays open. No mismatch was found, because no comparison was possible. What §8.1 adds: in d = 2 the plane-wave and constant-field coefficients of the same functional agree to 4·10^{−5}. So once (1.1) is evaluated, a mismatch with −0.256 beyond the grid error would point at (F), (M_1) or the symbol code, not at (PI).

## 9. Where it enters; ledger

### 9.1 Where it enters (suggested status texts for the supervisor; not written into those files)
- THEOREM2_PROOF_v4 §4.1, (PI) bullet, and §10 item 2: "(PI) [proved at fixed j given (I1) massiveness at U = 1 (U3_REPAIRS O6 + U3_AW Lemma A1; composed-matrix chaining for j ≥ 2 [I]), (I2) gauge covariance (CMP 109 (0.6), p. 265), (I3) one lattice axis permutation [I]; SOURCES_T2_PI Theorem PI. The per-cell limit for the linear potential is Lemmas 4.1–4.2 and 5.2. d = 2 test: the two probes agree to 4·10^{−5}]". The proof needs neither (G2) nor Prop. 2.1: it is a statement about the massive left side only.
- §10 item 3 / (F): "Step A (scaling, (3.1)) [P]; Step C (lattice degree −4 integrand = continuum, via U3_LEMMA51 Lemma 3.4) [P]; Step B (log coefficient = angular integral of the degree −4 part, two-region control at level 0) [I]; continuum value Savvidy (1.4) [cited, source checked]".
- KAPPA_BOUNDED Prop. 1.1 proof (l. 34) and BETA_FP_H Theorem 3.1: (PI) is used only for log Z_{Λ_j} and log Z_1 (obligation (d1)); this is exactly what Theorem PI proves. TRUST_LEDGER rows B2, B3, X5: same texts.
- Expansion point: Theorem PI is about the code's functional Γ, so the code's S_j^{pw} equals 𝒞(Λ) with no expansion-point correction (§6.1). The identification with Balaban's kernel is a separate fixed-level statement (Corollary 6.1 [R] or U3_VERIFY §6 [I]); the uniform-in-k version A6 of Route B is not addressed.

### 9.2 Ledger
1. Setting and the identity log Z_Λ(V_f) = Γ(U_0^φ) + const (§1.1) — [R: BETA_FP_H Fact 1.1, Consequence 1.2; BETA_FP_H_VERIFY §2 CONFIRMED].
2. Balaban's definitions (0.4), contour family, (0.6), p. 265 covariance, p. 254 gauge invariance of Tϱ — [V: page images CMP 109 PDF pp. 4, 5, 6, 17]; "both definitions are equally good" — [V: text layer; page image checked in SOURCES_T2_V1 §4].
3. (I1) massiveness at U = 1 at level j — [R: U3_REPAIRS O6, U3_AW Lemma A1 (both CONFIRMED in their VERIFY files)]; equivalence of the composed fine matrix with the one-step matrix at j = 1 and chaining for j ≥ 2 — [I].
4. (I2) gauge covariance — Δ, D_k: [P]; Q̃: [V] for (0.6) and the p. 265 sentence, [I] for the composed form.
5. (I3) invariance under the axis permutation σ — [I].
6. Lemma 3.1 (per-cell density = BZ formula of the code) — [P] (Floquet–Bloch); the code's transfer-kernel algebra — [I] (FD-checked in NUMERICS §5).
7. Lemma 3.2 (gauge invariance of ρ_c) — [P given (I2)].
8. Lemma 3.3 (exponential localization of R_0; vanishing first derivatives) — [P given (I1)].
9. §3.4, obligation (a): Π̂ analytic on |Im p| < m′; diagonal entries real and even — [P given (I1)].
10. Lemma 4.1 (resolvents at small flux, magnetic Neumann series) — [P given (I1), (I2) and analyticity of the averaging near the identity]; same argument as SOURCES_T2_S123 Lemma 1.2 (CONFIRMED there).
11. Lemma 4.2 (C² along the linear potential; F″(0) = Σ ℓℓR_0) — [P given Lemmas 3.3, 4.1].
12. (4.3): per-cell density at the constant field is ρ_0, its φ² coefficient is ½Σ x_0y_0R_0, with no contact or boundary term beyond R_0, gauge-independent — [P].
13. Lemma 5.1 (one-sided gauge sums, polynomial extension) — [P given (I1), (I2)].
14. Lemma 5.2 (moment identity [s²]Π̂_{11}(se_0) = F″(0)) — [P].
15. Lemma 5.3 (w(p) = ½Π̂_{22}(pe_1), t(p) = Λ⁴(1 − cos p)) — [P given Lemma 3.3].
16. Theorem PI (i)–(iii): S_j^{pw} = S_j^{cf} = 𝒞(Λ), β^{pw}(p) = S_j + O(p²) even analytic — [P given (I1)–(I3)].
17. Lemma 5.4, obligation (b): one O(P²) structure, π_W = Λ⁴ — [P given full hypercubic invariance, whose reflection part is [I]]; agrees with BETA_FP_H_VERIFY §5.
18. §6.1: Theorem PI involves no expansion-point correction for the code's functional — [P].
19. Corollary 6.1: code limit = p² coefficient of Balaban's true kernel — [R: locality and analyticity of the minimizer map at fixed j (implicit function theorem from (I1), Lemma 4.1) [I]; gauge invariance of Tϱ [V]].
20. §6.3: finite-p term O((Λp)²) with two sources — [I] (scale from Lemma 3.3; split of sources from SOURCES_D1_VERIFY V4).
21. (d1) log Z_Λ = Fine − Γ_c jointly is the probe-independent object and the only one Route K uses — [P] (Theorem PI plus reading of KAPPA_BOUNDED l. 34 and BETA_FP_H Theorem 3.1).
22. (d2) Λ-differences of Fine have coefficient c log(Λ/Λ′) for both probes — [R: LW (5.7); (F_lat)].
23. (d3) Λ-differences of Γ_c — [I]; (d4) single brackets not probe-independent — [I] (they have no f² or p² coefficient: f² ln|f|, p² ln p).
24. (F_lat) Step A (scaling, BETA_FP_H (3.1)) — [P]; Step B — [I]; Step C — [P given U3_LEMMA51 Lemma 3.4 (U3_LEMMA51_VERIFY item 4b)]; Step D (Savvidy (1.4), c = 0.371511) — [cited; source checked in BETA_FP_H_VERIFY §4; arithmetic rechecked here].
25. §8.1 d = 2 test: L = 3, constant field −0.97301 (nc = 18), plane wave −0.97297/−0.97300; agreement 4·10^{−5}; pw10 = pw01 to all digits; L = 5 rough agreement 0.4% — [numerical, new scripts numerics/t2_pi_d2check.py, numerics/t2_pi_d2pw.py].
26. §8.2 odd-L slopes 0.019–0.026 per (Lp)², consistent with the (Λp)² scale; p → 0 estimates β_1(0) ≈ 0.827 (L = 9), ≈ 0.844 (L = 11) — [numerical, from listed values; common slope assumed].
27. §8.3 independent evaluation of KAPPA_BOUNDED (1.1) at L = 3, j = 1 — [open]: no d = 4 per-momentum f-symbol code exists; not evaluated; no mismatch found because no comparison was possible.

Summary. Proved: (PI) at each fixed level j, for odd L ≥ 3, given (I1) massiveness at the trivial background, (I2) gauge covariance, (I3) one lattice axis permutation. This includes the per-cell limit for the linearly growing potential: its φ² coefficient is the second-order kernel on the linear potential, with no extra term. Reduced: (I1) for j ≥ 2 (chaining of O6), (I3) (read off (0.4)), Corollary 6.1 (locality of the minimizer map). The lattice transfer of (F) is now reduced to Step B, a two-region log statement of (M_j) type at level 0. Open: Step B of (F_lat); the evaluation of (1.1) at L = 3 (cheap test (1)); a 4D numerical test of (PI). Numerically, d = 2: the two probes agree to 4·10^{−5}.

STATUS: COMPLETE
