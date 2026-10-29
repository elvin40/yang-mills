# SOURCES_R030_RESIDUE — the remaining [I] items of R-030 ((G2)), and a corrected (Gap_f)

Date 2026-10-29. Author: Claude (Opus 5.5). Derivation file, unverified. Ids follow IDS.md. Labels Z-1 … Z-6 and items A–D are local to this file.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were in no grep. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Grades: [P] proved here, every step written; [P-sketch] outline, one step not written in full; [V] printed text seen on a page image in this session; [R] reduced to a named input that stays open; [I] reading not checked. "Convention (cost: …)" = a choice that the printed text does not fix.

## 0. Inputs

Files read: OPUS_QUEUE.md l. 1–15; TRUST_LEDGER.md row R-030 and its 2026-10-28 addendum, rows R-027, R-028, R-029, R-015 (part); SOURCES_T2_G2.md (all); SOURCES_T2_G2_VERIFY.md (all); SOURCES_L1_G.md §4 (all) and §5; SOURCES_L1_G_VERIFY.md §0–§1, §5–§8; BETA_FP_LEMMA43.md §1–§2; BETA_FP_LEMMA43_VERIFY.md §3–§4; BETA_FP_H.md §0–§2.1; BETA_FP_M.md §1, §4.1 (grep); SOURCES_T2_S123.md §5 (grep: Props. 5.3–5.6, (Z_j)); SOURCES_SWEEP_E.md §S-82; SOURCES_SWEEP_DE_VERIFY.md §4.8; SOURCES_QE_KE_HQ.md (grep); SOURCES_T2_V1.md l. 209; U3_LEMMA51.md l. 8–10; U3_AW.md l. 18–21; IDS.md (head, L-028).

Page images read in this session (pdftoppm -r 150, fresh folder /tmp/r030res.*, deleted after use) [V]:
- CMP 109 p. 251 (PDF 3). "Consider a lattice as a subset of a continuous Euclidean space R^d, or a torus T obtained by the usual identification of boundary points of the cube {x ∈ R^d : −L_μ ≤ x_μ ≤ L_μ, μ = 1, …, d}. We take L_μ = L^m, where L is an odd, positive integer > 11, and m is a positive integer." (0.1): T_ε = {x ∈ εZ^d + Σ_μ ½εe_μ : −L_μ < x_μ < L_μ}, "with a lattice spacing ε = L^{−K}. This torus determines a sequence of tori denoted by T^{(k)}_{L^kε} and defined by (0.1) with ε replaced by L^kε, k = 1, 2, …".
- CMP 109 p. 252 (PDF 4). "In the previous papers we have used the definition introduced in [12]. This definition has one disadvantage, it is not symmetric with respect to lattice Euclidean transformations. … therefore it is necessary to modify the definition." "Elements of this group are defined as matrices of the form U = U′U, where U ∈ G and U′ = exp iA′, A′ ∈ g^c". Contour family G(y, x): all shortest contours from y to x ∈ B(y), built from permutations of the coordinate directions; "[x, x′] denote a contour which is obtained by a parallel transport of c to the point x".
- CMP 109 p. 253 (PDF 5), (0.4): "Ū(c) = M(U, c) = exp[i Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} (1/|G(c_−,x)|) Σ_{Γ′∈G(c_+,x′)} (1/|G(c_+,x′)|) × (1/i) log U(Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c))] U(c)." (0.5)–(0.10): the axioms of the group average M({U_j}), in particular (0.8) "(1/i) log M({exp iA_j}) = (1/n)Σ A_j + (higher order terms)".
- CMP 109 p. 254 (PDF 6), (0.12) (a second average with averaged contour variables) and: "This average has properties similar to the properties of the average introduced in (0.4), especially all results of the paper [12] are valid for it. … Let us stress that both definitions are equally good for our purposes".
- CMP 98 pp. 34–36 (PDF 18–20): (109) "V_{1,b} = e^{iA_b}"; (113) "(Ṽ_1)_c = (\overline{V_1V_0})_c(V̄_0)_c^{−1}"; (121) "Q(V_0, A, c) = (1/i) log(V̄_1)_c"; (122) Q(V_0, A, c) = L(Q(V_0)A)_c + C(V_0, A, c); (124)–(125); Proposition 3.
- CMP 99 pp. 405–406 (PDF 17–18): (3.71)–(3.81). p. 406: "By Proposition 6 [5] the averages Ũ′ⁿ, n = j − 1, …, 0, are analytic functions of A on configurations satisfying the first inequality in (3.37), i.e. |A| < α_1(L^jη)^{−1} on B^j(Λ_j)."

Remark on CMP 98 (113)–(121). Balaban's linear operator Q(V_0) is the linear part of (1/i) log V̄_1, and V̄_1 is Ṽ_1 multiplied on both sides by the block-averaged axial factors of (110). So Q(V_0) is not the plain left-chart derivative of the average. This file does not use Q(V_0), Q_j(U) or (3.81). Every property of Q̃ below is derived from (0.4) itself.

## 1. The averaging, read from (0.4)

Definitions (not readings).
- (Avg) The one-step average is CMP 109 (0.4). The level-j average Ū^j is the j-fold iterate of (0.4) on the tori T^{(0)} → T^{(1)} → … → T^{(j)} of CMP 109 p. 251. This is the declaration that row R-029 already carries ("the averaging is CMP 109 (0.4)") and the one numerics/ym_oneloop.py uses (SOURCES_T2_V1 l. 209).
- (Chart) Q̃(U_0)B := (1/i)(d/dt)|_{t=0} log(Ū^j(e^{itB}U_0) Ū^j(U_0)^{−1}), the left chart on both lattices. CMP 109 p. 252 uses the same chart for the complexification (U = U′U, U′ = exp iA′) [V].
- (Bkg) U_0^φ is the fine abelian field with colour σ_3 and plaquette angle φ = f/Λ² in every (0,1) plaquette and 0 in the other planes; Λ = L^j (U3_LEMMA51 l. 8, BETA_FP_H §1). The plane wave U_0(a) is the fine expansion point of BETA_FP_LEMMA43 §1. Both are definitions of the project, not readings of Balaban.

Lemma Z-1 (properties of (0.4)) [P from the (0.4) image]. Fix j.
(a) Locality. The entry Q̃(U)(c, b) vanishes unless b lies in B^j(c_−) ∪ B^j(c_+). It depends only on the links there. So every operator of T2_G2 §1.2 has a finite range R_j ≤ C_dΛ.
(b) Covariance. (Ū^j(U^u))(c) = u(c_−)Ū^j(U)(c)u(c_+)^{−1} for every gauge function u. Hence Q̃(U^u) = G^c_uQ̃(U)G_u^{−1} with G_u, G^c_u the pointwise Ad-actions, and Q̃(U)D(U) = D_c(Ū^j(U))ι_a^T, with ι_a the restriction to the level-j sites (the anchors).
(c) Analyticity. There is r_j > 0 such that A ↦ (1/i) log Ū^j(e^{iA})(c) is analytic on the complex polydisc {|A_b| < r_j} (operator norm on g^c) and bounded there by a constant M_j. Hence every entry of Q̃(e^{iÂ}) is analytic in Â on {|Â_b| < r_j/2}, and for real Â with sup_b|Â_b| ≤ a_1 := r_j/4
  |Q̃(e^{iÂ})(c, b) − Q̃(1)(c, b)| ≤ Lip_Q·sup_b|Â_b|,   Lip_Q := 8n_RM_j/r_j.   (1.1)
(d) Explicit right inverse at U = 1. Let b(c) be the fine bond on the straight line from c_− to c_+ that crosses the face between B(c_−) and B(c_+). For one step, H_1V := L^{d−1}Σ_cV(c)1_{b(c)} satisfies Q̃_1H_1 = I. For j steps, H_j := H^{(1)}⋯H^{(j)} satisfies Q̃_jH_j = I, ‖H_j‖ = L^{j(d−1)}. So, on ℓ²(Z⁴), on every torus, and on every Bloch fibre,
  Q̃Q̃^T ≥ q_j := L^{−2j(d−1)} = L^{−6j}  (d = 4).   (1.2)
(e) Constants. At U = 1, for the constant fine field B(b) = c_μ on μ-bonds, (Q̃B)(c) = Λc_μ for every coarse μ-bond c.
(f) Abelian background. Ū^j(U_0^φ) is abelian (colour σ_3) and has plaquette angle f = Λ²φ in every coarse (0,1) plaquette and 0 elsewhere. So it is V_f up to a coarse abelian gauge.

Proof. (a) The loop in (0.4) consists of Γ ⊂ B(c_−) (a shortest contour from c_− to x ∈ B(c_−) stays in the box spanned by c_− and x), the segment [x, x′] of L bonds from B(c_−) to B(c_+), Γ′ ⊂ B(c_+), and c. Induct over the j steps.
(b) The loop Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c) starts and ends at c_−. Under u its holonomy is conjugated by u(c_−). For loops near 1, log commutes with this conjugation, so the exponent is conjugated by u(c_−). The last factor U(c) becomes u(c_−)U(c)u(c_+)^{−1}. This gives the one-step covariance; the j-step covariance follows by iteration, because the level-i sites are level-(i−1) sites (L odd, centred blocks). For the linear statements put U ↦ e^{itB}U and u = e^{itλ}, and differentiate at t = 0 in the chart (Chart): (e^{itB}U)^u = e^{itG_uB}U^u gives the first identity, and the gauge orbit gives the second.
(c) For |A_b| < r, ‖e^{iA_b} − 1‖ ≤ e^r − 1. A loop of (0.4) has at most ℓ_L := (d + 2)L bonds, so its holonomy H obeys ‖H − 1‖ ≤ e^{ℓ_Lr} − 1 ≤ ½ for r ≤ r^{(1)} := (ln 1.5)/ℓ_L. On that set log H is analytic with |log H| ≤ ln 2. The exponent of (0.4) is an average of such logs, and the factor U(c) is a product of L links, so (1/i) log Ū(c) is analytic and bounded by C_1Lr with C_1 = O(1). Choose r_j so that C_1Lr_j ≤ r^{(1)} at every intermediate level (r_j := r^{(1)}(C_1L)^{−j+1} suffices). Composition of analytic maps gives the analyticity of Ū^j and the bound M_j. For the linearization, e^{itB}e^{iÂ} = e^{iC(t,Â)} with C analytic and |C| < r_j for |Â| < r_j/2, |t| small (Baker–Campbell–Hausdorff). So Q̃(e^{iÂ})(c, b) is a t-derivative of an analytic function of (t, Â), bounded on {|Â| < r_j/2} by 2M_j/r_j·O(1) (Cauchy in t; absorb the O(1) into M_j). By (a) each entry depends on at most n_R variables Â_{b′}. Cauchy's estimate in each Â_{b′} on the polydisc of radius r_j/4 around a point of {|Â| ≤ r_j/4} bounds ∂_{b′} of the entry by 4·(2M_j/r_j)/r_j. The mean value theorem over n_R variables gives (1.1), with M_j renamed.
(d) At U = 1 the linearization of (0.4) is
  (Q̃_1B)(c) = Σ_{x∈B(c_−)} L^{−d} avg_{Γ,Γ′}[B(Γ) + B([x, x′]) − B(Γ′)],
because the −B(c) inside the log cancels the +B(c) of the factor U(c) (Σ_x L^{−d} = 1). Take B = 1_{b(c)}. Contours Γ, Γ′ stay inside one block, so they contain no face-crossing bond: B(Γ) = B(Γ′) = 0. A segment [x, x + Le_ν] crosses only the face between B(c̃_−) and B(c̃_+) of its own coarse bond c̃, and contains a μ-bond only if ν = μ. So (Q̃_11_{b(c)})(c̃) = 0 for c̃ ≠ c. For c̃ = c, the segment from x contains b(c) exactly when x lies on the central line of c; there are L such x. So (Q̃_11_{b(c)})(c) = L·L^{−d}. Distinct c have distinct b(c). Hence Q̃_1H_1 = I and ‖H_1‖ = L^{d−1}. At U = 1 every intermediate average equals 1, so by the chain rule Q̃_j = Q̃^{(j)}⋯Q̃^{(1)}, with each factor the one-step operator on the coarser torus; then Q̃_jH_j = I. Finally ‖v‖ = ‖H_j^TQ̃_j^Tv‖ ≤ ‖H_j‖‖Q̃_j^Tv‖ gives (1.2). Translation invariance at U = 1 gives the same bound on every Bloch fibre and every torus with N ≥ 1 coarse cells per side.
(e) Write c_μ x_μ =: λ(x). Then B = Dλ at U = 1 (λ is unbounded, but (b) is an identity of finite-range kernels, so it holds pointwise for every λ). By (b), Q̃B = D_cι_a^Tλ, and λ(c_+) − λ(c_−) = Λc_μ.
(f) For σ_3-valued links every loop holonomy is σ_3-valued, its log is the sum of the angles along the loop (all loops are short, so no 2π ambiguity), and (0.4) is linear in the angle field: θ̄ = Q̃_1θ at each step. The coarse plaquette angle of Q̃_1θ is the average, over the paths P_c (c_− → x → x′ → c_+), of the flux through the closed curve formed by the four paths. Write P_c − c = (Γ − σ_{c_−,x}) + (σ_{c_−,x} + [x, x′] − σ_{c_+,x′} − c) + (σ_{c_+,x′} − Γ′), with σ a fixed reference contour family that is translation covariant. The contour families satisfy G(c_+, x′) = G(c_−, x) + (c_+ − c_−), so the first and third terms have opposite average flux. The middle term is a parallelogram with sides x − c_− and c; its flux in the (0,1) plane is ±φL(x − c_−)_ν (ν the other direction of the plane), whose average over x ∈ B(c_−) is 0. So the coarse plaquette angle is the flux through the straight coarse plaquette, L²φ, in the (0,1) planes, and 0 in the others. Iterate j times. ∎
Remarks. (d) removes the identification of SWEEP_E §S-82 (CMP 96 (2.35), Cor. 2.8, and the straight-line identification of SOURCES_QE_KE_HQ §1): those statements concern the CMP 95/96/98 averaging, which CMP 109 p. 252 replaces [V]. The value q_j = L^{−6j} agrees with SWEEP_DE_VERIFY §4.8 ("q_j > 0 at fixed j; not uniform in j"). (c) replaces the use of CMP 99 (3.81) in L1_G Step 5. (b) proves the "Q̃D = D_cι_a^T" input [R: BETA_FP_LEMMA43_VERIFY §4] and the gauge covariance that SWEEP_E listed as "not checked on an image". (e) proves T2_G2 ledger item 3's [I] "Q̃c is a nonzero multiple of c". (f) proves BETA_FP_H Fact 1.1(b) (cited there from U3 Lemma 5.0) at the level needed here. The same proofs hold verbatim for the average (0.12), by (0.5)–(0.9); so the choice (Avg) costs nothing in this row.

## 2. Task 1: the corrected (Gap_f) (Lemma G-4 of SOURCES_L1_G with the three corrections of SOURCES_L1_G_VERIFY V33, V35, V37)

Notation as in SOURCES_L1_G §4: A_U := Δ(U) + D_k(U)D_k(U)^T on fine Lie-algebra link fields; Q̃_U per (Chart); A_f, Q̃_f at U = U_0^φ. α := ‖A_1‖. R := R_j of Lemma Z-1(a). n_R := sup_x #{y : |x − y| ≤ R} (fibre dimension included). Lip_A := the entrywise Lipschitz constant of U ↦ A_U in the link angles near U = 1 (A_U is a polynomial in the entries of Ad of the links within distance R, so Lip_A = O(1)(d, Λ) [P]). a_1 := r_j/4 and Lip_Q from Lemma Z-1(c).

Inputs, all at fixed j.
- (I1) q_j := L^{−6j}: Q̃_1Q̃_1^T ≥ q_j on ℓ²(Z⁴) [P, Lemma Z-1(d)].
- (I2) γ_j > 0: A_1 ≥ γ_j on ker Q̃_1 [P, T2_G2 Lemma 1.3]. Lemma 1.3 depends on: (I1); Q̃D = D_cι_a^T at U = 1 [P, Lemma Z-1(b)]; "Q̃c is a nonzero multiple of c" for constant c [P, Lemma Z-1(e)]; Δ(1) ≥ 0 and ker Δ(1) = ker d [P, the Wilson Hessian at U = 1 is a positive multiple of d^Td]; compactness of the Brillouin zone. (Correction V37: these are the inputs of γ_j; all are now [P].)
- (I3) Locality, covariance and the Lipschitz bound (1.1) of Q̃ [P, Lemma Z-1(a)–(c)]. These replace L1_G's (G1)–(G3) (CMP 98 (11), p. 24; CMP 99 (3.78)–(3.81)) and the left-chart identification [I]; the chart is now the definition (Chart).
- (I4) The description of U_0^φ is the definition (Bkg) [no reading].

Constants (in this order).
1. μ := (γ_j + 4α²/γ_j)/q_j; T_U := A_U + μQ̃_U^TQ̃_U. Two pairs (X, c_0): (T, (3/4)γ_j) and (Q̃Q̃^T, q_j).
2. Entrywise Lipschitz constants for sup_b|Â_b| ≤ a_1. Write F := Q̃(e^{iÂ}) − Q̃(1), so |F(c, b)| ≤ Lip_Q·a, a := sup|Â|. Then
   (Q̃Q̃^T)(e^{iÂ}) − (Q̃Q̃^T)(1) = FQ̃^T + Q̃F^T + FF^T,
   so Lip_{QQ^T} := n_RLip_Q(2‖Q̃_1‖_∞ + Lip_Qa_1), and in the same way Lip_T := Lip_A + μn_RLip_Q(2‖Q̃_1‖_∞ + Lip_Qa_1). The FF^T term is the term L1_G omitted (correction V35). It is quadratic in a; with a ≤ a_1 it adds n_RLip_Q²a_1 per factor.
3. Class cut-off (correction V33): f_1 := 2a_1Λ²/(R + 1). Every entry of X_U for U = U_0^φ, |f| ≤ f_1, is (by covariance) an entry at a field e^{iÂ} with sup|Â| ≤ (φ/2)(R + 1) ≤ a_1 (symmetric gauge of L1_G Step 4). Define
   S := sup_{|f|≤f_1} sup_x Σ_y ‖X_{U_0^φ}(x, y)‖ ≤ n_R(‖X_1‖_∞ + Lip_Xa_1) < ∞.
   S is fixed before ℓ_0. No step uses S at |f| > f_1.
4. ℓ_0 := c_χR(12n_ovS/c_0)^{1/2} (n_ov = 2⁴, c_χ the Lipschitz constant of the IMS partition of L1_G Step 6).
5. f_0 := min over the two pairs (X, c_0) of min{ f_1, Λ²c_0/(6n_RLip_X(ℓ_0 + R + 1)), 2a_1Λ²/(ℓ_0 + R + 1) }.

Lemma Z-2 ((Gap_f), corrected) [P relative to (I1)–(I4)]. Fix j. For every real f with |f| ≤ f_0, on ℓ²(Z⁴):
   Q̃_fQ̃_f^T ≥ (5/6)q_j ≥ q_j/2,   and   A_f ≥ (5/8)γ_j ≥ γ_j/2 on ker Q̃_f.
The same bounds hold on every Bloch fibre of a magnetic supercell (rational f/2π) and on every torus T_N with f N² ∈ 2πZ and NΛ > 2R (T2_G2 Lemma 2.2(a)).
Proof. L1_G §4.4 Steps 1, 4, 6 unchanged (verified, L1_G_VERIFY V31, V34, V36). Step 2 is Lemma Z-1(b). Step 3 is Lemma Z-1(a) with S as in item 3 above. Step 5 is Lemma Z-1(c) with Lip_X from item 2. In Step 6, the IMS error is ≤ n_ovc_χ²R²S/ℓ_0² = c_0/12, and the local error is ≤ n_RLip_X(φ/2)(ℓ_0 + R + 1) ≤ c_0/12 for |f| ≤ f_0; the truncated field has sup ≤ (φ/2)(ℓ_0 + R + 1) ≤ a_1. So X_f ≥ (5/6)c_0. Step 1 converts the T-bound into the constrained bound. The fibre statement: X_f commutes with the magnetic supercell translations, so X_f ≥ c on ℓ² implies X̂_f(k) ≥ c for every fibre k (a fibre eigenvector with a smaller eigenvalue gives, by the direct-integral decomposition and continuity in k, an ℓ² vector with Rayleigh quotient < c). ∎
Grade: [P] relative to (I1)–(I4), which are all [P] or definitions. Compared with L1_G: no [V] Balaban input other than the (0.4) image remains; the two [I] items of L1_G (left-chart identification, description of U_0^φ) are definitions.

## 3. Item A: SOURCES_T2_G2 §5.5 (per-cell form of Prop. 2.1 at V_f)

### 3.1 What §5.5 claims, and what is used
§5.5 has two parts. (A-inf) On Z⁴ at V_f: Φ(f) = Fine(f) − Γ_c(f) as an identity of per-cell densities, where Fine := τ log X − ½τ log|K| and Γ_c := τ log(D_c^TD_c) − ½τ log|𝒦| (BETA_FP_H (1.1); τ the per-cell trace of BETA_FP_M l. 57). (A-tor) On T_N at quantized flux: neutral-sector decoupling and no charged torus zero modes.
Use. Route K uses (A-inf): BETA_FP_H Theorem 3.1 splits the f²-coefficient of Φ into the fine piece (R-027) and the coarse piece (R-028). Nothing uses (A-tor): Theorem 4.1 and Corollary 4.3 concern the massive ℓ only (T2_G2_VERIFY 1.6), and Remark 4.1 says the separate pieces have no torus statement. So (A-tor), and the VERIFY 1.6 correction about it, leave the inputs of R-030. [P: by inspection of the uses listed in T2_G2 §8.1 and BETA_FP_H §1–§3.]
Correction to §5.5. "The charged sector has no spectrum at 0 for small f ≠ 0 [I]" is false for K and 𝒦. Both carry the Nielsen–Olesen band k_⊥² − |ef|, which contains 0 (BETA_FP_M Remark 1.1(b); BETA_FP_H §1). It is true for X and D_c^TD_c (Lemma Z-4(a)). The determinant class of K and 𝒦 therefore needs a density-of-states input; Lemma Z-4(c) takes it from R-028.

### 3.2 Rational flux: a commutative Bloch decomposition
Let f/2π = p/r with p, r coprime integers, 0 < |f| ≤ f_0. The adjoint charged components have charge q ∈ {1, 2}. Magnetic translations by coarse steps commute up to the phase e^{iqf(a∧b)}. On the sublattice Γ′ := rΛZe_0 ⊕ ΛZe_1 ⊕ ΛZe_2 ⊕ ΛZe_3 the phases are e^{iqfr·n} = 1, so the τ_γ, γ ∈ Γ′, commute [P]. Every operator of this file commutes with them (Lemma Z-1(b) for Q̃, gauge covariance of the Wilson action for Δ, D; translation covariance of the contour families G(y, x) [V, p. 252]). The Bloch–Floquet transform over Γ′ gives finite fibre matrices Â(k), k ∈ T⁴ := R⁴/2πZ⁴, entire in k for finite-range A. For bounded Borel h, τ(h(A)) = r^{−1}∫ tr h(Â(k)) dk/(2π)⁴ [P, standard: the transform is unitary and h(A) decomposes fibrewise]. For self-adjoint A with ker A = 0, τ log|A| := ∫ log|λ| dμ_A(λ) ∈ [−∞, ∞), and by monotone convergence on the parts λ ≥ 1 and λ < 1,
  τ log|A| = r^{−1}∫ log|det Â(k)| dk/(2π)⁴.   (3.1)

### 3.3 The fibre identity without positivity of K

Lemma Z-3 (Prop. 2.1 at V_f, fibrewise, multiplicative form) [P]. Let k ∈ T⁴ with X̂(k) and D̂_c(k)^†D̂_c(k) invertible. Then, with n_c the coarse fibre dimension,
  det Bord̂(k)·det 𝒦̂(k)·(det X̂(k))² = (−1)^{n_c}·det K̂(k)·(det D̂_k^†D̂_k(k))²·(det D̂_c^†D̂_c(k))².   (3.2)
No invertibility of K̂(k) or 𝒦̂(k) is assumed. Here 𝒦̂ := Δ̂_Λ + D̂_cD̂_c^†, Δ̂_Λ := −(Bord̂^{−1})_{22}.
Inputs: Q̃̂(k) surjective and Bord̂(k) invertible (Lemma Z-2 and T2_G2 Lemma 3.1); ΔD = 0 at U_0^φ; Q̃D = D_cι_a^T at U_0^φ (Lemma Z-1(b), with D_c at Ū^j(U_0^φ), which is V_f by Lemma Z-1(f)).
ΔD = 0 [P]: U_0^φ is a critical point of the Wilson action. A variation in direction σ_1 or σ_2 gives tr(σ_aW) with W diagonal, which is 0. A variation in direction σ_3 of a bond b gives a sum of sin(θ_p/2)-terms over the plaquettes p ∋ b: in the (0,1) plane the two plaquettes containing b have equal angle φ and opposite orientation, so they cancel; in the other planes θ_p = 0. Differentiating A(U^{e^{tλ}}) = A(U) twice at a critical point gives Δ(Dλ) = 0. Δ is Hermitian, so D^†Δ = 0.
Proof of (3.2). Write the fibre matrices without hats. Let P_⊥ be the orthogonal projector on ker D^† (D is injective, since X = D^†D is invertible), and for complex ε put Δ_ε := Δ + εP_⊥, K_ε := Δ_ε + DD^†, K_{D,ε} := Δ_ε + D_kD_k^†, Bord_ε, Δ_{Λ,ε}, 𝒦_ε built from Δ_ε. Then Δ_εD = 0 and D^†K_ε = XD^†, K_εD = DX.
Step 0 (invertibility for Im ε ≠ 0). (i) K_ε maps im D and ker D^† to themselves; on im D it is DXD^{−1}, on ker D^† it is Δ|_⊥ + ε; Δ|_⊥ is Hermitian, so both parts are invertible. (ii) Let W := ker Q̃, P_W its projector. If w ∈ W and P_WK_εw = 0, then 0 = ⟨w, K_εw⟩ = ⟨w, Δw⟩ + ‖D^†w‖² + ε‖P_⊥w‖². The imaginary part gives P_⊥w = 0, so w = Dλ; then Δw = 0 and the real part gives D^†Dλ = 0, so w = 0. The same computation with D_kD_k^† and Q̃Dλ = D_cι_a^Tλ = 0 ⇒ ι_a^Tλ = 0 shows K_{D,ε}|_W invertible, so Bord_ε is invertible. (iii) For Q̃^†Ew ≠ 0 the form ⟨Q̃^†Ew, (Δ|_⊥ + ε)^{−1}P_⊥Q̃^†Ew⟩ has nonzero imaginary part unless P_⊥Q̃^†Ew = 0; in that case Q̃^†Ew = Dρ and ‖Dρ‖² = ⟨Ew, D_cι_a^Tρ⟩ = 0. So E^†Q̃Δ_{⊥,ε}^{−1}Q̃^†E is invertible (E an orthonormal basis of ker D_c^†; Q̃^† injective).
Step 1 (the chain of BETA_FP_LEMMA43 §2 for Im ε ≠ 0, without positivity). (a) Jacobi: det(D_k^†D_k) = det X·det s, s := ι_a^†X^{−1}ι_a. (b) Bordered determinant in the split W ⊕ W^⊥ ⊕ coarse: det Bord_ε = (−1)^{n_c}det(K_{D,ε}|_W)det(Q̃Q̃^†); the same with K_ε gives det(K_ε|_W)det(Q̃Q̃^†) = det K_ε·det(Q̃K_ε^{−1}Q̃^†). (c) Matrix determinant lemma on W: det(K_{D,ε}|_W) = det(K_ε|_W)det(1 − D_a^†G_cD_a), G_c := P_W(K_ε|_W)^{−1}P_W = K_ε^{−1} − K_ε^{−1}Q̃^†S Q̃K_ε^{−1}, S := (Q̃K_ε^{−1}Q̃^†)^{−1}. From D^†K_ε^{−1} = X^{−1}D^† and K_ε^{−1}D = DX^{−1}: D_a^†K_ε^{−1}D_a = 1, D_a^†K_ε^{−1}Q̃^† = sD_c^†, Q̃K_ε^{−1}D_a = D_cs. So 1 − D_a^†G_cD_a = sD_c^†SD_cs. (d) Δ_{Λ,ε}D_c = 0: for μ, take λ := X^{−1}ι_as^{−1}μ; then ι_a^†λ = μ, ι_k^†Xλ = 0, and Bord_ε[Dλ; 0] = [0; D_cμ]. Also D_c^†Δ_{Λ,ε} = (Δ_{Λ,ε̄}D_c)^† = 0. (e) E^†Δ_{Λ,ε}E = (E^†Q̃K_ε^{−1}Q̃^†E)^{−1}: K_ε^{−1} = DX^{−2}D^† + (Δ|_⊥ + ε)^{−1}P_⊥, and E^†Q̃D = 0, so the right side is (E^†Q̃(Δ|_⊥ + ε)^{−1}P_⊥Q̃^†E)^{−1}, invertible by Step 0(iii). For y given, put w := (E^†Q̃(Δ|_⊥+ε)^{−1}P_⊥Q̃^†E)^{−1}y, B := (Δ|_⊥ + ε)^{−1}P_⊥Q̃^†Ew + Dλ with λ as in (d) chosen to correct the im D_c part of Q̃B, v := −Ew. Then K_{D,ε}B + Q̃^†v = −P_∥Q̃^†Ew = −DX^{−1}ι_aD_c^†Ew = 0 and Q̃B = Ey. So Δ_{Λ,ε}Ey = Ew. (f) Jacobi for invertible S in the unitary basis [E, D_c(D_c^†D_c)^{−1/2}]: det S·det(E^†S^{−1}E) = det(D_c^†SD_c)/det(D_c^†D_c). With E^†S^{−1}E = (E^†Δ_ΛE)^{−1} and det 𝒦_ε = det(E^†Δ_ΛE)det(D_c^†D_c) (block-diagonal by (d)): det(D_c^†SD_c)/det S = det(D_c^†D_c)²/det 𝒦_ε. Combining (a)–(c), (f): (3.2) holds at ε.
Step 2 (ε → 0). det K_ε is a polynomial in ε. Bord_0 = Bord is invertible, so Bord_ε^{−1} and 𝒦_ε are analytic near ε = 0. Both sides of (3.2) at ε are continuous at ε = 0, and they agree for small ε with Im ε ≠ 0. ∎
Remark. Every identity used is algebraic; the only positivity used is that of X, D_c^†D_c, and the Hermitian parts in Step 0. BETA_FP_LEMMA43 step (e) assumed "S positive definite"; Step 1(e)–(f) does not.

### 3.4 Determinant class and the density identity

Lemma Z-4 [P relative to the input in (c)]. Rational f/2π = p/r, 0 < |f| ≤ f_*, f_* := min(f_0, f_Z) (f_Z from (c)).
(a) X̂(k) and D̂_c^†D̂_c(k) are invertible for k ≢ 0, and log det X̂, log det D̂_c^†D̂_c ∈ L¹(T⁴).
(b) log det D̂_k^†D̂_k and log|det Bord̂| are bounded on T⁴.
(c) ker 𝒦 = {0} in ℓ², and τ log|𝒦| is finite; equivalently log|det 𝒦̂| ∈ L¹(T⁴). Input: SOURCES_T2_S123 Prop. 5.6 (N_1(λ + ρ) − N_1(λ − ρ − 0) ≤ C|f|ρ for |λ| ≤ η_1, 0 < ρ ≤ η_1, N_1 the integrated density of states of 𝒦_1 = Δ_j(f) + D_cD_c^T), proved there given (G_A), with (G_A) ⇔ (G_A′) = L-028; this is the chain of row R-028 (PROVED+VERIFIED at fixed j relative to L-028), and f_Z is its f-range.
(d) log|det K̂| ∈ L¹(T⁴); ker K = {0} in ℓ².
Proof. (a) X ≥ 0 is the fibre of D^†D. A fibre vector in ker X̂(k) is a covariantly constant Bloch section. Its colour components split by charge. Charged components: going around one fine (0,1) plaquette multiplies the value by e^{iqφ} ≠ 1 (0 < |qφ| < 2π), so they vanish. Neutral component: the σ_3-transports act trivially on it, so it is a constant with Bloch phase 1, i.e. k ≡ 0. On the neutral part X̂ is the free Laplacian on the supercell with twist k; its determinant is Π_n|k̂_n|², and log|k̂|² is integrable in d = 4. On the charged part det X̂(k) > 0 for all k and is continuous, so it is bounded below. The same argument at the coarse level (coarse flux f, Lemma Z-1(f)) gives D̂_c. (b) D_k^TD_k ≥ (4Λ⁵)^{−1} (T2_G2 Lemma 1.2) and is bounded. Bord̂ is invertible with ‖Bord̂^{−1}‖ ≤ C_B uniformly in k (Lemma Z-2 + T2_G2 Lemma 3.1 fibrewise) and bounded. (c) With λ = 0, ρ ↓ 0: τ(1_{{0}}(𝒦_1)) ≤ lim C|f|ρ = 0, so ker 𝒦_1 = 0. ∫_{|λ|≤η_1}|log|λ|| dN_1 ≤ Σ_{n≥0}(n + 1 + |log η_1|)·C|f|2^{−n}η_1 < ∞ (dyadic shells), and log|λ| is bounded on the rest of the (bounded) spectrum. So τ log|𝒦_1| is finite. By (3.1) this is log|det 𝒦̂| ∈ L¹. 𝒦 of T2_G2 is 𝒦_1: S[K; C](V) of U3_LEMMA51 (1.1) is the stationary value of ⟨B, KB⟩ under CB = V, which equals ⟨V, −(Bord^{−1})_{22}V⟩ (Lagrange: K_DB + Q̃^Tv = 0, Q̃B = V give ⟨B, K_DB⟩ = −⟨V, v⟩), and adding D_kD_k^T to Δ does not change it (D_k directions lie in ker Q̃ and ΔD = 0) [P]. (d) Solve (3.2) for log|det K̂|: it is a sum of functions that are in L¹ by (a)–(c), valid for k ≢ 0. So det K̂(k) ≠ 0 for a.e. k, which is ker K = 0 by the direct-integral decomposition. ∎

Theorem Z-5 (per-cell Prop. 2.1 at V_f = item A-inf) [P relative to Lemma Z-2 and Lemma Z-4(c)]. For rational f/2π with 0 < |f| ≤ f_*, every term below is finite and
  Φ(f) = τ log(D_k^TD_k) − ½τ log|Bord| = [τ log X − ½τ log|K|] − [τ log(D_c^TD_c) − ½τ log|𝒦|] = Fine(f) − Γ_c(f).   (3.3)
At f = 0 the same holds: this is T2_G2 (5.4) [P]; the integrability of log det 𝒦̂ at f = 0 also follows from (3.2) with X̂ = (Laplacian) ⊗ 1_3, K̂ ≥ min(1, c_W)·(Hodge Laplacian) (c_W > 0 the Wilson normalization), so T2_G2's use of Lemma M is not needed for (5.4) itself.
Proof. Take log|·| of (3.2) for k ≢ 0, divide by 2, integrate over T⁴ with weight r^{−1}dk/(2π)⁴, and use (3.1) for each operator. All six functions are in L¹ (Lemma Z-4), so the integrals split. Φ(f) = ρ_∞(A^{gh}_f) − ¼ρ_∞(Bord²) of T2_G2 (4.1) is the first expression, since ρ_∞(Bord²) = τ log Bord² = 2τ log|Bord|. ∎

Corollary Z-6 (what Route K needs) [P]. Suppose, as R-027 and R-028 provide for real f → 0, Fine(f) − Fine(0) = a_Ff² log|f| + b_Ff² + o(f²) and Γ_c(f) − Γ_c(0) = a_cf² log|f| + b_cf² + o(f²). Then a_F = a_c and Φ_2 = b_F − b_c, where Φ(f) = Φ_0 + Φ_2f² + O(f⁴) (T2_G2 Lemma 4.2).
Proof. Along f_n := 2π/n → 0 (rational), (3.3) gives (a_F − a_c)f_n² log|f_n| + (b_F − b_c − Φ_2)f_n² = o(f_n²). Divide by f_n² log|f_n| (→ 0 forces a_F = a_c), then by f_n². ∎
The same argument applies to any expansion of the two pieces in the scale {f² log|f|, f², o(f²)}, in particular to the level differences of BETA_FP_H §2.
Note. Irrational f is never needed: every downstream statement is an f → 0 expansion, and a sequence of rational fluxes determines its coefficients. This avoids the Fuglede–Kadison multiplicativity theorem for non-invertible operators (Lück Thm 3.14), which §5.5 cited without a check.

Grade of item A: (A-inf) [P] relative to Lemma Z-2 and SOURCES_T2_S123 Prop. 5.6 (R-028 chain, L-028); (A-tor) not an input [P by inspection]; the §5.5 sentence on the charged spectrum is CORRECTED (false for K, 𝒦). Cost: R-030 now lists Prop. 5.6 among its inputs. Route K already depends on it through R-028, so Target 1 gains no new input.

## 4. Items B and C: SOURCES_T2_G2_VERIFY §7.3 (ii) and (iii)

### 4.1 Where (ii)–(iii) enter
Both are conditions of T2_G2 claim 27 (item 9 at g = 0: the finite-volume one-loop increments converge to the whole-lattice β_j(0)). Item 9 is the K-independence question of R-015/R-032. R-030's Target 1 content is the per-cell densities on Z⁴ and the commutation of the p²- and f²-extraction with N → ∞; L-001 (Theorem 2w) uses only the definition of β_j (row R-030, column "Balaban assertion": "uses only the definition of β_j, not R-015"). So (ii)–(iii) are not inputs of R-030's use in Target 1 [P by inspection of T2_G2 §8.1–§8.2 and the R-030 row]. They are settled anyway, so that claim 27 carries no [I].

### 4.2 Item B = (ii): the K-th problem is a periodic torus with ≥ L^{K−j} level-j cells per side [V]
CMP 109 p. 251 [V, quoted in §0]: the space is the torus T from the cube −L_μ ≤ x_μ ≤ L_μ, L_μ = L^m, "by the usual identification of boundary points" (periodic); the initial lattice T_ε has spacing ε = L^{−K}; the level-k lattice T^{(k)}_{L^kε} is (0.1) with spacing L^kε. So the level-j lattice has 2L^m/(L^jε) = 2L^{m+K−j} points per side. Hence N_{K,j} = 2L^{m+K−j} ≥ L^{K−j} [P from the page]. The averaging on it is the iterate of (0.4), local with range R_j (Lemma Z-1(a)); for N_{K,j}Λ > 2R_j T2_G2 Lemma 1.1(b) identifies the torus operators with the induced ones. The fields are periodic (trivial transition functions), which is T2_G2's T_N with N = N_{K,j} even. Quantized flux on it means f N_{K,j}² ∈ 2πZ, and the plane-wave supercell condition is N_p | N_{K,j}; both are conditions on the test backgrounds, not on Balaban's set-up. Grade: [V].

### 4.3 Item C = (iii): β_j^{[K]}(0) is the torus coefficient — convention
Balaban defines β_j only on the whole lattice (CMP 119 (2.24), p. 259, and CMP 109 (1.20)–(1.22), cited in R-015 [V there]). A finite-volume increment β_j^{[K]}(0) is not printed. It is the file's own object. Convention K-(iii): β_j^{[K]}(0) := the torus second difference D_{N_{K,j}}(1) of T2_G2 Cor. 4.3 at f_1 = 2π/N_{K,j}² (Route K), or S_{N_{K,j}}(2π/(N_{K,j}Λ)) of T2_G2 Thm 3.2(iii) (Route B), each minus its level-(j − 1) value.
Cost: none for Target 1. The convention is used only in the fallback T2_G2 §8.2(b) (R_vol), which SOURCES_T2_KUNIF §5.1 makes unnecessary. Any other extraction at the smallest admissible flux or momentum differs from this one by O(N_{K,j}^{−4}) (Route K) or O(N_{K,j}^{−2}) (Route B) at fixed j, by the same proofs; the fallback would need j-uniform constants in any case (T2_G2 §8.2(b), [R], open, not used).
Grade: convention (cost: none for Target 1; the fallback stays [R] and unused).

## 5. Sweep: every other input of R-030 after this file

| T2_G2 item | old grade | now | where |
|---|---|---|---|
| §1.2 finite range R_j ≤ cΛ | [I] | [P] | Lemma Z-1(a) |
| Q̃Q̃^T ≥ q_j at (T) | [P] via CMP 96 (2.35), Cor. 2.8 and the straight-line identification (SWEEP_E §S-82) | [P], q_j = L^{−6j}, from (0.4) only | Lemma Z-1(d) |
| Lemma 1.3: Q̃D = D_cι_a^T | [R] (BETA_FP_LEMMA43_VERIFY §4, numerical) | [P] | Lemma Z-1(b) |
| Lemma 1.3: "Q̃c is a nonzero multiple of c" | [I] | [P] | Lemma Z-1(e) |
| (Gap_f) | [P] (L1_G G-4, with 3 corrections, [I] chart and U_0^φ) | [P], corrections written, no [I] | Lemma Z-2 |
| Thm 3.2: Q̃(a) analytic in a, uniformly in p | [I] (VERIFY 2.5; SWEEP_E [P-sketch] via CMP 99 (3.81)) | [P]: U_0(a) = e^{iA_a}, sup\|A_a\| ≤ C\|a\| for all p, so Lemma Z-1(c) applies for \|a\| < r_j/(2C) | Lemma Z-1(c) |
| Lemma 4.2: entries smooth in f | [I] application (VERIFY 4.4) | [P]: in the symmetric gauge centred at x the entry at (x, y) is analytic in f (Lemma Z-1(c)); the gauge change to the x_0-centred gauge is a phase linear in f(x − x_0), so ∂_f^n of an entry is ≤ C_n(1 + \|x − x_0\|)^n, which is what Lemma 4.2's resolvent sum uses | Lemma Z-1(b), (c) |
| (5.1) Prop. 2.1 fibrewise at (T): (G1) | [R] | [P]: ΔD = 0 at the minimum U = 1; Q̃D = D_cι_a^T by Lemma Z-1(b) | §3.3 with f = 0 |
| (5.4) at (T) via Lemma M | [P given Lemma M] | [P] without Lemma M (integrability from (3.2)) | Theorem Z-5 |
| §5.5 per-cell Prop. 2.1 at V_f | [I] | [P] at rational f relative to SOURCES_T2_S123 Prop. 5.6 | §3 |
| VERIFY §7.3 (ii) | [I] | [V] CMP 109 p. 251 | §4.2 |
| VERIFY §7.3 (iii) | [I] (definition not stated) | convention K-(iii), cost none | §4.3 |
| Thm 3.2(iii): S_∞ analytic and even near p = 0 (Route B) | [R: U1_VERIFY §2.4, CONFIRMED there] | unchanged; a verified project input | — |

Chart independence [P]. The left chart, the right chart (Ue^{iB′}) and the midpoint chart of U3 (U_0^{1/2}e^{iB″}U_0^{1/2}) are related by B = Ad(U_0)B′ = Ad(U_0^{1/2})B″ exactly (no second-order term), and the same holds on the coarse lattice. These maps are orthogonal. Δ, D_k, Q̃ and Bord transform by the corresponding block-orthogonal conjugations, so ℓ, Φ, Fine and Γ_c do not depend on the choice. So (Chart) costs nothing among these charts. Balaban's CMP 98 operator Q(V_0) (with the axial factors of (110)) is not one of them; this file does not use it.

Not inputs of R-030 (used nowhere in Target 1; listed so that the row carries no hidden [I]): the value c_zm = 6j log L (only its N-independence is used; [R: Lemma M]); the torus asymptotics in (5.7) ([I], literature); "ym_momentum.py implements (3.4)" ([I], numerics only); Remark 4.1 ([I]); the (3.3) parenthetical of §5.2 ([I]); Lemma 6.1 and its two identifications ([I], an alternative route at j = 1 that Lemma 1.3 replaces); the §0 rate O(N^{−4} log N) (UNSUPPORTED in VERIFY 3.3); CMP 99 Thm 3.1 as the source of (Gap_f) (superseded by Lemma Z-2); j-uniform constants (§8.2(b), [R], fallback only); T2_G2_VERIFY 1.6 (torus zero modes at V_f, part (A-tor)). The defect of Prop. 2.1 at the plane wave a ≠ 0 (𝔡_Y, BETA_FP_PW Lemma 2.3) is a Route B input of another row, not a volume question (T2_G2 §5.2).

## 6. Proposed ledger status of R-030 (not applied; headline discipline: this file is unverified)

Nothing [I] remains in the inputs of R-030's Target 1 use. The proposed status is therefore, after a verifier confirms §1–§4:

"PROVED at fixed j relative to listed inputs [SOURCES_R030_RESIDUE; with SOURCES_T2_G2 + VERIFY, SOURCES_L1_G + VERIFY]. Torus limits of the constrained one-loop density ℓ at (T), (P), (F) with error C_je^{−δ_jN}; the p²- and f²-coefficient extraction commutes with N → ∞ (errors O(N^{−2}) + O(N²e^{−δ_jN}), O(N^{−4}) + O(N⁴e^{−δ_jN})); per-cell Prop. 2.1 at (T) and at V_f for rational f/2π (Theorem Z-5), which fixes the split Φ_2 = b_F − b_c used by Route K. Inputs: (Avg) the averaging is CMP 109 (0.4) [V, p. 253], the declaration R-029 already carries (the proofs hold verbatim for (0.12)); the definitions (Chart) (left chart; any orthogonal chart gives the same ℓ) and (Bkg); SOURCES_T2_S123 Prop. 5.6 via R-028's chain (L-028), for the determinant class of 𝒦 at V_f; U1_VERIFY §2.4 (S_∞ analytic and even; Route B only); standard facts (Combes–Thomas, Bloch–Floquet, Cauchy estimates, Baker–Campbell–Hausdorff, Jacobi and Schur determinant identities). Proved here from the (0.4) image: locality, gauge covariance, Q̃D = D_cι_a^T, analyticity of Q̃ in the background, Q̃Q̃^T ≥ L^{−6j} (explicit right inverse), Q̃c = Λc, Ū^j(U_0^φ) = V_f. (Gap_f) proved with the corrections of SOURCES_L1_G_VERIFY V33, V35, V37 (Lemma Z-2). Convention K-(iii) (finite-volume increment = torus coefficient) costs nothing: only the unused fallback T2_G2 §8.2(b) needs it. The K-th problem is a periodic torus with 2L^{m+K−j} level-j cells per side [V, CMP 109 p. 251]. No uniformity in j is claimed or needed."

Grade change: "reduced [R, verified]" → "PROVED at fixed j relative to listed inputs" (pending verification). The row moves from Target 1's "verified reductions" to its "proofs relative to inputs". Target 1 gains no new input: Prop. 5.6 / L-028 are already inputs of R-028.

Suggested verifier targets, highest value first:
1. Lemma Z-1(d): that a face-crossing μ-bond lies on no contour Γ ⊂ B(y) and on no segment of a coarse bond other than c, for the contour families G(y, x) of CMP 109 p. 252; and that the j-step linearization at U = 1 is the product of one-step ones.
2. Lemma Z-3 Step 0 and Step 1(e): the ε-regularization and the explicit solution of the bordered system.
3. Lemma Z-4(c): the identification 𝒦 = 𝒦_1 of SOURCES_T2_S123 (normalizations of S[·;·] and of D_cD_c^T), and that Prop. 5.6 holds at the rational fluxes 2π/n for n large.
4. Lemma Z-1(f): the flux bookkeeping of the averaged abelian field (numerically 10^{−15}, U3_LEMMA51 l. 161).
5. Lemma Z-1(c): the radius r_j and the Lipschitz constant.

## 7. Grades

| claim | grade |
|---|---|
| Z-1(a) locality | [P] from (0.4) [V] |
| Z-1(b) covariance, Q̃D = D_cι_a^T | [P] from (0.4) [V] + (Chart) |
| Z-1(c) analyticity, Lipschitz bound (1.1) | [P] |
| Z-1(d) Q̃Q̃^T ≥ L^{−6j} | [P] |
| Z-1(e) Q̃c = Λc | [P] |
| Z-1(f) averaged abelian background is V_f | [P] |
| Z-2 (Gap_f), corrected (S cut-off f_1; FF^T term; γ_j inputs) | [P] relative to Z-1 and T2_G2 Lemmas 1.3, 3.1 |
| ΔD = 0 at U_0^φ | [P] |
| Z-3 fibre identity (3.2) without positivity of K | [P] |
| Z-4 determinant class | [P] relative to SOURCES_T2_S123 Prop. 5.6 (R-028 chain, L-028) |
| Z-5 per-cell Prop. 2.1 at V_f, rational f; at f = 0 without Lemma M | [P] relative to Z-2, Z-4(c) |
| Z-6 coefficient split along rational f | [P] |
| (A-tor) not an input; §5.5 charged-spectrum sentence false for K, 𝒦 | [P] by inspection; CORRECTION |
| Item B = §7.3 (ii) | [V] CMP 109 p. 251 |
| Item C = §7.3 (iii) | convention K-(iii), cost none for Target 1 |
| Chart independence among orthogonal charts | [P] |
| Proposed R-030 status | PROVED at fixed j relative to listed inputs (pending verifier) |

## 8. Report

(Gap_f) is restated with the three verifier corrections, and every property of Q̃ now comes from the CMP 109 (0.4) image: locality, covariance, analyticity, and an explicit right inverse giving Q̃Q̃^T ≥ L^{−6j}. §5.5: the per-cell identity at V_f is proved at rational flux by a fibrewise, ε-regularized Prop. 2.1. Determinant class of 𝒦 comes from S123 Prop. 5.6 (already an R-028 input). §5.5's "no charged spectrum at 0" is false for K, 𝒦. §7.3(ii) is printed on CMP 109 p. 251; (iii) is a zero-cost convention. Proposed: R-030 PROVED at fixed j relative to listed inputs.

STATUS: COMPLETE
