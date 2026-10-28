IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# BETA_FP_LEMMA43: proof attempt of Lemma 4.3 of BETA_FP.md

Written 2026-10-27 (Claude, Opus 5.5). Scope: Lemma 4.3 of BETA_FP.md §4 (𝒞(Λ) = c log Λ + C + o(1), c = 11N²/(12π²)). No existing file edited. Every claim is marked [proved here], [cited], [hypothesis], or [open].

## 0. Headline

- Value: c = 11N²/(12π²) (SU(2): 0.371511), so β_∞ = c log L > 0. Here c = 2c_2 = 2N·b_0/(8π²), b_0 = 11N/3, 1/g_B² = 2N/g². The value is the same from the lattice (LW (5.7)) and from the continuum split (gluon 10/3, ghost 1/3).
- New exact identity (Prop. 2.1, proved, verified to 3·10^{−13}): log Z_Λ = [fine Wilson one-loop in background Feynman gauge, full gauge group] − [one-loop of the coarse Gaussian theory with kernel Δ_Λ(V), coarse Feynman gauge, coarse ghost]. All point-anchor objects cancel exactly.
- (i) proved: 𝒞(Λ) = c log Λ + κ_W^F − ρ(Λ) exactly. The whole log Λ is in the fine piece, which does not see the constraint. ρ(Λ) depends only on the coarse Gaussian data.
- (ii) and (iii) are reduced. ρ(Λ) → ρ_∞ with remainder O(Λ^{−2}) + O(ε(Λ)), given one hypothesis (H): the background vertices of the coarse kernel converge with infrared weights (U3 Lemma 5.1 in Feynman/coarse form). The trivial-background part is proved from U3_REPAIRS (Lemma 4.1, odd L).
- Correction: BETA_FP §4.3 input (b) is false for the ghost/anchor sector. Point anchors have no form factor: the Dirichlet ghost is IR-regulated at 2.54/Λ, not at 1, and the anchor block of U1 (3.3) diverges like log Λ. Prop. 2.1 removes both. Heuristic consequence: the per-step ghost carries 2/11, not 1/11, of c log L. This matches the L = 2 ghost value (0.0153 predicted, 0.0151 measured); test at L = 3: Δc_gh = 0.0274.

## 1. Set-up and normalizations

Gauge group SU(N), B = B^a t^a, tr(t^a t^b) = ½δ^{ab} (SU(2): t^a = σ_a/2). Wilson action S_W = (1/g_B²)·A, A = Σ_p (1 − (1/N) Re tr U_p) (for SU(2) this is Σ_p(1 − ½ tr U_p), the convention of BETA_FP). For a smooth field, 1 − (1/N)Re tr e^{iF} = (1/(2N)) tr F² + O(F⁴) = (1/(4N)) F^aF^a, and the sum over unordered plaquettes gives A → (1/(8N)) Σ_{μ,ν} F^a_{μν}F^a_{μν}. Matching (1/g_B²)/(8N) = 1/(4g²) gives

  1/g_B² = 2N/g²   [proved here; agrees with U1_VERIFY item 2, LW ref. [2] (5.1)].   (1.1)

So every F²-coefficient below is a shift of 1/g_B², i.e. 2N times a shift of 1/g².

Geometry (BETA_FP §4.2, Step 3). Fine lattice of spacing 1/Λ, Λ ∈ {integers ≥ 2} (Λ is the block factor b of BETA_FP), unit blocks, one anchor per unit cell. Coarse background V = V_{a,P}: the σ_3 plane wave with link angles a·Re(v e^{iPx_0}) on the unit lattice (BETA_FP §1.1 Remark (b): V is the exact composed average of the fine wave, and v = v_Λ depends on Λ through the form factor). Per unit cell,

  log Z_Λ(V) = const + log det(D_k^TD_k) − ½ log|det Bord|,  Bord = [[Δ + D_kD_k^T, Q̃^T],[Q̃, 0]]   [cited: NUMERICS §1, R2_VERIFY §2.3],   (1.2)

with Δ the Wilson Hessian at the fine background U_0, D the fine covariant gradient, D_k its non-anchor columns (λ vanishing at the anchors), Q̃ the linearized composed averaging at U_0.

Definition of 𝒞. S(P;Λ) := [a²-coefficient of log Z_Λ(V_{a,P}) − log Z_Λ(1), per unit cell] / [a²-coefficient of A(V_{a,P}), per unit cell]. At fixed Λ, S(P;Λ) is analytic and even in P near 0 (U1_VERIFY §2.4, proved there: massive constrained propagator, transversality, reflection). Define 𝒞(Λ) := S(0;Λ). By scale covariance (BETA_FP (4.2)) 𝒞(Λ) = 𝒮(Λ), the composed one-loop F²-coefficient with block Λ on the unit-spacing lattice. Sign convention: 𝒞 > 0 means 1/g_B² decreases toward the infrared (NUMERICS §1, asymptotic freedom).

Standing hypotheses, inherited from the existing chain (not new here).
- (G1) Gauge covariance: ΔD = 0 and Q̃Dλ = D_c(λ|_anchors), with D_c the coarse covariant gradient at V. Exact for the constant abelian background (U3 Lemma 5.0, NUMERICS §1: tested); for the plane wave it holds up to the O(p⁴) order counting of U1 §2 (U1_VERIFY 2.5: confirmed at fixed level).
- (G2) Per-cell densities on the infinite lattice are taken as the limits of the finite-volume determinants (formal, as in U1_VERIFY item 3).

Constants. b_0 = 11N/3 (Σ in β(g) = −b_0 g³/(16π²)). With the normalization (1.1),

  c_2 := 2N·b_0/(16π²) = 11N²/(24π²),   c := 2c_2 = 2N·b_0/(8π²) = 11N²/(12π²).   (1.3)

SU(2): c_2 = 0.185756, c = 0.371511; SU(3): c = 0.835900. The factor 2 between c_2 and c is ln(Λ²) = 2 ln Λ: c_2 multiplies ln(1/p²) in the lattice vacuum polarization (U1 (4.1)), c multiplies log Λ.

## 2. An anchor-free exact identity: constrained = fine Feynman minus coarse Feynman

Notation. X := D^TD (fine ghost, full gauge group), K := Δ + DD^T (fine background-Feynman gluon form), ι_a, ι_k the inclusions of anchor and non-anchor gauge coordinates (D_k = Dι_k, D_a = Dι_a), s := ι_a^T X^{−1} ι_a (anchor block of the ghost Green's function), S_K := (Q̃K^{−1}Q̃^T)^{−1}, E an orthonormal basis of (im D_c)^⊥ (coarse directions orthogonal to coarse gauge directions), and Δ_Λ(V) := −(Bord^{−1})_{22}, the coarse Gaussian kernel (= min{⟨B, ΔB⟩ : Q̃B = V'}, BETA_FP Prop. 1.1 Remark (a)).

Proposition 2.1 [proved here]. Assume (G1), D of full column rank, Q̃ surjective, D_c of full column rank, and positivity of Δ + D_kD_k^T on ker Q̃. Then, exactly (constant = 0),

  log det(D_k^TD_k) − ½ log|det Bord| = log det X − ½ log det K + ½ log det S_K − ½ log det(D_c^T S_K D_c),   (2.1)

and Δ_Λ D_c = 0, E^TΔ_ΛE = (E^TQ̃K^{−1}Q̃^TE)^{−1}, so that equivalently

  log Z_Λ(V) = [log det X − ½ log det K]  −  [log det(D_c^TD_c) − ½ log det(Δ_Λ(V) + D_cD_c^T)] + const.   (2.2)

The first bracket is the fine Wilson one-loop log Z in background Feynman gauge with the full gauge group (−Γ_1^{W,F} of U1 (3.3)). The second bracket is the one-loop log Z of the coarse Gaussian theory with kernel Δ_Λ(V), in coarse background Feynman gauge, with the coarse ghost D_c^TD_c. No anchor (point-evaluation) object survives.

Proof. (a) Ghost. Jacobi's complementary-minor identity: det(ι_k^TXι_k) = det X · det s.
(b) Gluon. With W := ker Q̃, |det Bord| = det(K_D|_W)·det(Q̃Q̃^T), K_D := Δ + D_kD_k^T (NUMERICS §1 step (v)). Since D_kD_k^T + D_aD_a^T = DD^T, K_D = K − D_aD_a^T. Let G_c := K^{−1} − K^{−1}Q̃^TS_KQ̃K^{−1}, the constrained Feynman propagator; G_c = P_WG_cP_W and G_c = (K|_W)^{−1} on W. The matrix determinant lemma on W gives det(K_D|_W) = det(K|_W)·det(1 − D_a^TG_cD_a). Now ΔD = 0 gives KD = DX, so K^{−1}D = DX^{−1}. Hence D_a^TK^{−1}D_a = ι_a^TD^TDX^{−1}ι_a = 1, and Q̃K^{−1}D_a = Q̃DX^{−1}ι_a = D_c ι_a^TX^{−1}ι_a = D_c s by (G1). So 1 − D_a^TG_cD_a = s D_c^TS_KD_c s and det(K_D|_W) = det(K|_W)·(det s)²·det(D_c^TS_KD_c).
(c) det(K|_W)·det(Q̃Q̃^T) = det K·det(Q̃K^{−1}Q̃^T) = det K / det S_K (same step (v)).
(d) Combine: log det X + log det s − ½[log det K − log det S_K + 2 log det s + log det(D_c^TS_KD_c)]. The log det s terms cancel. This is (2.1).
(e) Δ_ΛD_c = 0: for V' = D_cμ the minimizer is B = Dλ with λ|_anchors = μ, and ⟨Dλ, ΔDλ⟩ = 0. The Schur identity E^TΔ_ΛE = (E^TQ̃K^{−1}Q̃^TE)^{−1}: the transverse coarse covariance does not depend on the gauge fixing of the fine field, because Q̃(im D) ⊂ im D_c is annihilated by E^T. For S positive definite and D_c of full column rank, det S·det(E^TS^{−1}E) = det(D_c^TSD_c)/det(D_c^TD_c). With S = S_K this turns (2.1) into ½ log det(E^TΔ_ΛE) − ½ log det(D_c^TD_c), and det(Δ_Λ + D_cD_c^T) = det(E^TΔ_ΛE)·det(D_c^TD_c) (block diagonal on im E ⊕ im D_c) turns that into (2.2). ∎

Check [verified numerically]. Random instances with D (n×m), anchors = first n_a gauge coordinates, Q̃ := D_c ι_a^TX^{−1}D^T + Y·P_{(im D)^⊥} (so Q̃D = D_cι_a^T exactly), Δ = P_{(im D)^⊥} M M^T P_{(im D)^⊥}; sizes (n, m, n_a, r) = (30, 9, 3, 6), (40, 12, 4, 10), (50, 15, 5, 12), six instances each. Left minus right of (2.1): spread ≤ 2.6·10^{−13}, value ≤ 1.1·10^{−13} (the constant is 0). (2.2) in the E-form: spread ≤ 2.7·10^{−13}; |E^TΔ_ΛE − (E^TQ̃K^{−1}Q̃^TE)^{−1}| ≤ 6·10^{−14}; |Δ_ΛD_c| ≤ 1.3·10^{−13}. (Scratch script, deleted after the run.)

Reading. (2.2) is the exact form of the identity Z_fine = Z_constrained · Z_coarse: integrating the fine field at fixed block average V′ and then over V′ gives the unconstrained integral. It replaces U1 Lemma 3.2 for the purpose of this lemma. The two coarse terms of U1 (3.3), ½ log det(X^{−2})_{aa} and ½ log det(1 + P_⊥D^TG_k^⊥DP_⊥), sum to −½ log det(D_c^TS_KD_c) + const; individually they contain point-anchor objects whose continuum limits are singular (§6). The relation to U1 (3.3) also corrects one statement of U1 §6: the anchor-block term is not where the compensating ghost log sits in a form that has a continuum limit; in (2.2) the compensating logs sit in the coarse ghost log det(D_c^TD_c) and the coarse gluon.

## 3. (i) The UV coefficient

Split S(P;Λ) along (2.2): S(P;Λ) = 𝒞_fine(P;Λ) − 𝒞_coarse(Λ;P), each term being the a²-coefficient of the corresponding bracket per unit cell, divided by the a²-coefficient of A(V_{a,P}) per unit cell.

Fine piece. The first bracket of (2.2) does not contain the constraint. By scale covariance it is the infinite-lattice Wilson vacuum polarization in background Feynman gauge at lattice momentum p = P/Λ. By U1 (4.1) (normalization confirmed in U1_VERIFY item 2, including Γ_{22}(pe_1) = trace/3 exactly) and Lüscher–Weisz (5.7) [cited],

  𝒞_fine(P;Λ) = 2Nν^{(1)}(P/Λ) = c_2 ln(Λ²/P²) + κ_W^F + η(P/Λ) = c log Λ + c_2 ln(1/P²) + κ_W^F + η(P/Λ),   (3.1)

with η(p) = O(p² ln p) and κ_W^F = 0.434197N² − ¼ (SU(2): 1.48679). The denominator of S uses the coarse tree term A(V_{a,P}) instead of the fine tree term of the fine wave; the two differ by a relative O(P²) (U1 Lemma 2.2), which changes (3.1) by O(P² ln P) and does not affect any limit below.

Corollary 3.1 [proved here, given LW (5.7), Prop. 2.1, and the finiteness of S(0;Λ)]. For every Λ the limit ρ(Λ) := lim_{P→0}[𝒞_coarse(Λ;P) − c_2 ln(1/P²)] exists, and exactly

  𝒞(Λ) = c log Λ + κ_W^F − ρ(Λ).   (3.2)

Proof. S(P;Λ) → 𝒞(Λ) and η(P/Λ) → 0 as P → 0 at fixed Λ; solve (3.1) for the coarse piece. ∎

What (3.2) proves and what it does not. The whole log Λ sits in the fine piece, which does not see the infrared regulator; its coefficient is c, fixed by the universal −(11/3) ln p² of LW (5.7). This is (i). Lemma 4.3 is now equivalent to "ρ(Λ) converges". The difference from U1 (5.2), whose constant κ_k was a definition with no content (U1_VERIFY §3), is that ρ(Λ) is a functional of the coarse Gaussian theory only: the kernel Δ_Λ(V) with its first two background variations, the coarse ghost D_c(V), and the coarse wave polarization v_Λ, all on the unit lattice with no explicit Λ and no point-anchor objects. So ρ(Λ) converges if these coarse data converge in a sense that is uniform in the infrared (§4). The heuristic of U1_VERIFY §3 ("the coarse pieces are a lattice regularization at the coarse spacing of the same loop integral") is now an exact statement: the second bracket of (2.2) is the one-loop log Z of the coarse theory with kernel Δ_Λ.

Continuum cross-check of c [cited, standard; Abbott 1981, Peskin–Schroeder §16.6; split confirmed in R2_VERIFY 2.2]. In background Feynman gauge Γ_1 = ½ Tr log(−D²δ_{μν} − 2i ad F_{μν}) − Tr log(−D²) (adjoint). In units of N, the contributions to b_0 are: diamagnetic, 4 real adjoint vector components × (−1/6) = −2/3; paramagnetic (spin coupling −2i ad F) +4; ghost (complex scalar, opposite statistics) −2 × (−1/6) = +1/3. Gluon loop 4 − 2/3 = 10/3, ghost loop 1/3, total 11/3, so b_0 = 11N/3. As a loop-momentum integrand of the F²-coefficient in Balaban units, the angular average at large |q| is A/|q|⁴ with A = 2N·b_0 = 22N²/3 (measure d⁴q/(2π)⁴), and the shell integral ∫_{R<|q|<LR} d⁴q/(2π)⁴ · A/|q|⁴ = A·(2π²/(2π)⁴)·ln L = (2N b_0/(8π²)) ln L = c ln L. This agrees with the lattice value from LW. The load-bearing input is LW (5.7), because the fine piece is the lattice one.

Role of the deformed-momentum identity (U3_REPAIRS Prop. A). It does not enter the fine piece, because Prop. A covers the propagator-and-form-factor structure Q̃K^{−1}Q̃^T, not the lattice three- and four-vertices; the fine piece is taken whole from LW. It enters the coarse piece (§4.1): at the trivial background, S_K is given exactly by the deformed-momentum sums.

## 4. (ii) The IR end and (iii) the remainder

Everything in this section is about the second bracket of (2.2): the coarse one-loop log Z of the kernel 𝒦_Λ(V) := Δ_Λ(V) + D_c(V)D_c(V)^T with coarse ghost D_c^TD_c, on the unit lattice. Write Δ_Λ(V_{a,P}) = Δ_Λ + aΔ_Λ^{(1)}(P) + a²Δ_Λ^{(2)}(P) + O(a³), with Δ_Λ^{(1)} the transfer kernels K → K ± P and Δ_Λ^{(2)} the zero-transfer part (the Tp, Tm, D2 data of BETA_FP §1.2 at "level Λ").

### 4.1 Trivial background: IR-weighted convergence [proved here from U3_REPAIRS]

At a = 0, E^TΔ_ΛE is U3's Δ_M at M = Λ (by Prop. 2.1(e) and U3_REPAIRS Prop. A with the Feynman form: at the trivial background K = |k̂|²·1 exactly, and the rank-one part of (2.1) of U3_REPAIRS is killed by P′_T; the axial part of Q̃ drops out because P′_TQ̃ = P′_TQ). So the trivial-background coarse data are the deformed-momentum sums d^Λ_μ(K) = Σ_l w_l^Λ(σ^Λ_{l,μ})² of U3_REPAIRS (A.1): each umklapp term is the continuum term at q̃_l = 2Λ sin(q_l/(2Λ)).

Lemma 4.1. For Λ in the range of U3_REPAIRS (Λ = M = L^j, L odd, centered blocks), |K| ≤ π, |α| ≤ 2:

  |∂_K^α(Δ_Λ − Δ_∞)(K)| ≤ C Λ^{−2} |K|^{4−|α|},   and   c_*|K̂|² ≤ 𝒦_Λ(K) ≤ C_*|K̂|²  (uniformly in Λ).   (4.1)

Proof. Let S_M := P′_T diag(d^M) P′_T, so that Δ_M S_M = S_MΔ_M = P′_T and Δ_MK̂ = 0 (Prop. A). Then, as 4×4 matrices, Δ_Λ − Δ_∞ = Δ_Λ(S_∞ − S_Λ)Δ_∞. O5 (scalar form): |∂^α(d^Λ_μ − d^∞_μ)| ≤ CΛ^{−2}|K|^{−|α|}; each derivative of P′_T costs |K|^{−1}. Prop. B gives |Δ_M| ≤ c_0^{−1}|K̂|²; with analyticity and the uniform C² bound of O5, |∂^αΔ_M| ≤ C|K|^{2−|α|} for |α| ≤ 2. The product rule gives (4.1). The two-sided bound on 𝒦_Λ = Δ_Λ + K̂K̂^†: Prop. B on T′ = K̂^⊥ and exactly |K̂|² on K̂ (block diagonal because Δ_ΛK̂ = 0), with c_* = min(C_1^{−1}, 1), C_* = max(c_0^{−1}, 1). ∎

The weight |K|⁴ matters: it says the relative error of the coarse kernel is O(Λ^{−2}|K|²), i.e. it vanishes in the infrared. This is the trivial-background part of the domination input (c) of BETA_FP §4.3.

### 4.2 The background vertices: the hypothesis

(H) [hypothesis; the Feynman/coarse form of U3 Lemma 5.1 with infrared weights]. There are limits Δ_∞^{(m)} and ε(Λ) → 0 such that for m = 1, 2, |α| ≤ 2, |K| ≤ π, 0 < P ≤ P_0:

  |∂_K^α(Δ_Λ^{(m)} − Δ_∞^{(m)})(K; P)| ≤ ε(Λ)(|K| + P)^{4−m−|α|}.   (4.2)

Why this weight is natural (sketch, not a proof). The coarse tree action A_Λ^{tree}(V) is gauge invariant, and its dimension-4 part is the Maxwell term with coefficient 1 for every Λ (the normalization of Δ_Λ = |K̂|²P′_T + O(K⁴) is Λ-independent). So Λ-dependence starts with dimension-6 operators, whose a^m-Hessian kernels are O((|K| + P)^{4−m}). Given that, (4.2) follows from U3 Lemma 5.1 extended to |α| ≤ 4 by Taylor's theorem. U3 Lemma 5.1 itself is still open (U3_LEMMA51_R23_VERIFY: conditional on (A); expected rate j·L^{−2j} or j²·L^{−2j}, i.e. ε(Λ) = Λ^{−2}(log Λ)^{1 or 2}).

The coarse polarization v_Λ enters numerator and denominator of 𝒞_coarse as a common factor, up to its longitudinal part. For the σ_3 wave the longitudinal part is the gradient of a σ_3-valued function, a pure gauge for the abelian wave at the order used, so it changes neither. Hence v_Λ contributes no Λ-dependence [proved here for the σ_3 wave].

### 4.3 Uniformity in P and the limit

Proposition 4.2 [proved here given (H) and Lemma 4.1; power counting written, not every term]. sup_{0<P≤P_0} |𝒞_coarse(Λ;P) − 𝒞_coarse(∞;P)| ≤ C ε′(Λ), ε′ := max(ε, Λ^{−2}).

Proof. 𝒞_coarse(Λ;P) = n(P)^{−1}∫_{BZ} N_Λ(K;P) dK/(2π)⁴, with n(P) = (1 − cos P)/4 · (polarization factor) the tree normalization and

  N = ½ tr[𝒦_0(K)^{−1}𝒦″(K)] − ½ tr[𝒦_0(K+P)^{−1}T_+(K)𝒦_0(K)^{−1}T_−(K+P)] − (same with −P) − (ghost terms of the same form with D_c^TD_c, weight +1 instead of −½, Λ-independent),

up to the overall sign conventions of NUMERICS §5 (signs do not matter for the bounds). Step 1: ∫N_Λ(K;0)dK = 0 for every Λ (a P = 0 wave is a constant field on the coarse lattice, pure gauge: transversality, U1_VERIFY 2.4) and the O(P) term integrates to 0 (reflection). So the numerator can be replaced by N(K;P) − N(K;0) − P·∂_PN(K;0) on the reflection-symmetric region |K| ≥ 2P, and by N(K;P) − N(K;0) on |K| < 2P. Step 2 (|K| ≥ 2P). Taylor: the remainder is ≤ P² sup|∂_P²N|. ∂_P²N is a sum of products of 𝒦_0^{−1} and its K-derivatives (size |K|^{−2−|α|}, Lemma 4.1) and vertices with their K- and P-derivatives (size |K|^{2−m−|α|}); every product has total degree −4. Replacing one factor by its Λ-difference multiplies the product by a relative ε′|K|² (Lemma 4.1 and (4.2); for inverses, 𝒦_Λ^{−1} − 𝒦_∞^{−1} = 𝒦_Λ^{−1}(𝒦_∞ − 𝒦_Λ)𝒦_∞^{−1}). So |∂_P²(N_Λ − N_∞)| ≤ Cε′|K|^{−2}, and the region contributes ≤ Cε′P²∫_{|K|≤π}|K|^{−2}dK / n(P) ≤ Cε′. Step 3 (|K| < 2P). Each term of N is O((|K| + P)^{−4}·(|K| + P)²) with integrable singularities |K|^{−2}, |K ± P|^{−2}; the Λ-difference carries the relative factor ε′(|K| + P)². The region has volume O(P⁴), so it contributes ≤ Cε′P⁴/n(P) ≤ Cε′P². Step 4: the ghost terms do not depend on Λ (§4.2 for v_Λ). ∎

Theorem 4.3 (Lemma 4.3 of BETA_FP) [proved here given (H), (G1), (G2), LW (5.7)]. The limit ρ_∞ := lim_{P→0}[𝒞_coarse(∞;P) − c_2 ln(1/P²)] exists, |ρ(Λ) − ρ_∞| ≤ Cε′(Λ), and

  𝒞(Λ) = c log Λ + C_∞ + O(ε′(Λ)),   c = 11N²/(12π²),   C_∞ = κ_W^F − ρ_∞.   (4.3)

Proof. Put f_Λ(P) := 𝒞_coarse(Λ;P) − c_2 ln(1/P²). For each Λ, lim_{P→0} f_Λ(P) = ρ(Λ) exists (Cor. 3.1). By Prop. 4.2, f_Λ → f_∞ uniformly on (0, P_0] with sup|f_Λ − f_∞| ≤ Cε′(Λ). By the Moore–Osgood theorem, lim_{P→0} f_∞(P) exists and equals lim_Λ ρ(Λ), and |ρ(Λ) − ρ_∞| ≤ Cε′(Λ). Insert into (3.2). ∎

Content of (ii) and (iii). (ii) The IR end gives the Λ-independent constant ρ_∞: the coarse theory is a fixed unit-lattice theory in the limit, its log Z carries the compensating −c_2 ln(1/P²) (forced by the finiteness of S(0;Λ)), and nothing else in it depends on Λ. (iii) The remainder is O(ε′(Λ)): Λ^{−2} from the trivial-background data (proved), ε(Λ) from the vertices (hypothesis). The fine-piece remainder η(P/Λ) does not enter 𝒞(Λ) at all, because P → 0 is taken at fixed Λ.

Relation to BETA_FP §4.3. Input (a) (integrand convergence) is replaced by (H) on the coarse data; no convergence of a fine-lattice integrand is needed, since the fine piece is taken whole from LW. Input (b) (large-k asymptotics with form-factor remainder) is not needed: the coarse data have no UV tail (umklapp sums with χ² decay, U3 §3.1), and the UV log is the LW log. Input (c) (domination) is replaced by the infrared-weighted bounds (4.1)–(4.2) plus the uniform two-sided bound on 𝒦_Λ.

## 5. Telescoping and the value of β_∞

By (4.3), along Λ = L^j (L odd, the range of Lemma 4.1),

  𝒞(LΛ) − 𝒞(Λ) = c log L + O(ε′(Λ)) → c log L,

and BETA_FP (4.2) gives

  β_∞ = lim_{Λ→∞}[𝒞(LΛ) − 𝒞(Λ)] = c log L = (11N²/(12π²)) log L > 0.   (5.1)

SU(2): c = 0.371511; c log 3 = 0.40815 (c log 2 = 0.25751 needs Lemma 4.1 for even L, see below). The constant C_∞ cancels. The sign is positive (asymptotic freedom in Balaban's convention, §1).

Consistency checks.
- Abelian sector (U(1) part of SU(2), σ_3 components only). The ghost is background independent and c^{ab} = 0. U1 Prop. 9.1 (verified U1_VERIFY 2.6) gives 𝒮^{ab}(Λ) = (1 − Λ^{−4})/4, the fine piece is exactly ¼ (abelian share of κ_W^F), so in (3.2) ρ^{ab}(Λ) = Λ^{−4}/4 → 0. This is (4.3) with c = 0, C = ¼, remainder O(Λ^{−4}).
- The family of averagings. (2.2) holds for any linearized averaging Q̃ with the covariance (G1). The constant ρ_∞, hence C_∞, depends on the family (composed L-steps versus a single block-Λ average, which differ in the background variations of Q̃ though not at the trivial background, U3 Lemma 1.2); c does not. The telescoping needs the same family at Λ and LΛ, which Λ = L^j with the composed L-step averaging provides. BETA_FP §4.2 Step 1 says "with any integer block factors"; that is safe only within one family. The existing data S_1(L = 4) = 0.7575 versus S_2(L = 2) = 0.967 (U1_VERIFY items 11–12, Ng = 6, unconverged) are a difference of 0.21 between two families at the same block 4; whether this is grid error or a family dependence of the constant is not decided here. It does not affect (5.1).


## 6. Correction to BETA_FP §4.3 input (b): the point anchors have no form factor

BETA_FP §4.3 (b) says: "The ghost sector (λ vanishing at unit sites) and the anchor determinant are treated identically" (with the form-factor bound χ² ≤ Π_ν min(1, 4/k_ν²)). This is wrong. The residual gauge group is defined by point conditions (λ = 0 at one site per unit cell). Point evaluation has form factor 1, not χ, and in d = 4 a point has zero capacity. Two consequences [proved here as statements about the symbols; the F²-consequence is heuristic]:

(1) The anchor-block Green's function. In continuum units (fine spacing 1/Λ, anchors on the unit lattice), Poisson summation gives the symbol of s = ι_a^TX^{−1}ι_a at the trivial background:

  s(K) = Σ_l |q̃_l|^{−2} = |K|^{−2} + G_0Λ² + O(1),   G_0 = ∫_{BZ} d⁴k/(2π)⁴ |k̂|^{−2} = 0.154933…   (6.1)

(G_0 is the 4D lattice Green's function at the origin, numerically LW's P_1). So the Dirichlet ghost propagator ι_k(ι_k^TXι_k)^{−1}ι_k^T has, at l = l′ = 0, the form 1/|K|² − |K|^{−4}/s(K) = 1/(|K|² + m_gh²) with m_gh² = 1/(G_0Λ²) → 0. The Dirichlet ghost is infrared-regulated at the scale 2.54/Λ, not at the block scale 1. Similarly the anchor block (X^{−2})_{aa} of U1 (3.3) has symbol Σ_l|q̃_l|^{−4} = |K|^{−4} + (log Λ)/(8π²) + O(1), which diverges logarithmically in Λ. So the individual terms of U1 (3.3) and of (1.2) have no continuum limit term by term.

(2) Heuristic F²-consequence. The Dirichlet ghost alone runs from the UV scale Λ down to m_gh, so its F²-coefficient is ≈ (1/11)c_2 ln(Λ²/m_gh²) = (2/11)c log Λ + (1/11)c_2 ln G_0: twice its share of the UV log. The compensating −(1/11)c log Λ sits in the gluon bordered determinant (missing gauge fixing at the anchors). Prop. 2.1 shows that the two det s factors cancel exactly, which is why (2.2) has a continuum limit. For one Balaban step with block L on the unit lattice this predicts a per-step ghost bracket c_gh(L) ≈ (1/11)c_2 ln(G_0L⁴). SU(2), L = 2: 0.0169 × ln(2.479) = 0.0153. Measured (U1 §6: ghost = 0.0048 of w = 0.2002, i.e. 2.4% of β_1 = 0.630): 0.0151. The agreement is better than the heuristic deserves (the lattice and massive-IR constants are dropped); the constant-free test is c_gh(3) − c_gh(2) = (2/11)c ln(3/2) = 0.0274 (SU(2)), not yet measured. So Remark (i) of BETA_FP §4.3 ("the ghost carries 1/11 of c log L plus a constant") should read 2/11 for the per-step ghost bracket, with the gluon bracket carrying the complement 9/11.

## 7. Honest ledger

Proved here:
- P1. Prop. 2.1: the exact anchor-free identity log Z_Λ = [fine Wilson Feynman-gauge one-loop, full gauge group] − [coarse Feynman-gauge one-loop of the Gaussian kernel Δ_Λ(V), coarse ghost D_c^TD_c], constant 0, under the covariance (G1). Verified on random instances to 3·10^{−13}.
- P2. Cor. 3.1: 𝒞(Λ) = c log Λ + κ_W^F − ρ(Λ) exactly, with the whole log Λ in the fine piece and c = 2c_2 = 2N·b_0/(8π²) = 11N²/(12π²) from LW (5.7); ρ(Λ) a functional of the coarse Gaussian theory only. Normalization chain 1/g_B² = 2N/g² rederived.
- P3. Lemma 4.1: IR-weighted convergence of the trivial-background coarse kernel, |∂^α(Δ_Λ − Δ_∞)| ≤ CΛ^{−2}|K|^{4−|α|}, and the uniform two-sided bound on 𝒦_Λ (from U3_REPAIRS Prop. A, B, O5; same range: Λ = L^j, L odd, centered blocks).
- P4. Theorem 4.3 given (H): ρ(Λ) → ρ_∞ with |ρ(Λ) − ρ_∞| ≤ Cε′(Λ) (Moore–Osgood from the uniform-in-P bound of Prop. 4.2), hence Lemma 4.3 of BETA_FP, hence β_∞ = (11N²/(12π²)) log L by BETA_FP Theorem 4.1. Prop. 4.2 is proved by power counting; the individual terms of the coarse one-loop integrand are not written out.
- P5. §6 (1): the point-anchor symbols (6.1): Dirichlet-ghost IR scale m_gh = G_0^{−1/2}/Λ, and the log-divergent anchor block Σ_l|q̃_l|^{−4}. BETA_FP §4.3 input (b) is false for the ghost/anchor sector as stated; Prop. 2.1 removes the problem.

Reduced (true given the stated hypothesis):
- R1. Lemma 4.3 itself ⇐ (H) (vertex convergence with infrared weights, (4.2)) + (G1) + (G2) + LW (5.7). (H) is the coarse Feynman-form of U3 Lemma 5.1 plus the dimension-4 universality of the coarse tree action (sketched in §4.2, not proved).
- R2. The remainder: O(Λ^{−2}) from the trivial-background data (proved), O(ε(Λ)) from the vertices (hypothesis; expected Λ^{−2}(log Λ)^{1 or 2} per U3_LEMMA51_R23_VERIFY).

Cited, not rederived: LW (5.7) and the normalization U1 (4.1) (verified in U1_VERIFY item 2); the continuum split 10/3 + 1/3 (standard; R2_VERIFY 2.2); the per-cell formula (1.2) (NUMERICS §1, R2_VERIFY 2.3); finiteness and analyticity of S(P;Λ) at P = 0 (U1_VERIFY 2.4).

Open:
- O1. (H): U3 Lemma 5.1 (vertex convergence) in the IR-weighted form (4.2). This is now the single analytic input of Lemma 4.3.
- O2. Lemma 4.1 for even L (U3_REPAIRS is stated for odd L with centered blocks); so (5.1) at L = 2 (the numerics' case) also needs this.
- O3. (G1) for the plane wave beyond the order counting of U1 §2, and (G2) (infinite-volume per-cell densities): inherited.
- O4. The family dependence of the constant (S_1(L = 4) = 0.7575 vs S_2(L = 2) = 0.967, unconverged); not needed for (5.1).
- O5. Heuristic only: the per-step ghost bracket c_gh(L) ≈ (1/11)c_2 ln(G_0L⁴) (0.0153 predicted vs 0.0151 measured at L = 2); test: c_gh(3) − c_gh(2) = 0.0274 (SU(2)).
