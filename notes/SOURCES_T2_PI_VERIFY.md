IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_PI_VERIFY — independent verification of SOURCES_T2_PI (item PI, VERIFY)

Date: 2026-10-28. Item PI, VERIFY. Author: headless Claude session (verifier).
Status: complete. Theorem PI verified given (I1)–(I3); 22 CONFIRMED, 5 CORRECTED, 0 UNSUPPORTED; d = 2 test rerun and reproduced.

Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). reports/ONLINE_SWEEP.md not opened.
No existing file edited. New files: this file; numerics/t2_piv_rerun_d2.py (if written) with output numerics/results/t2_piv_*.json (new names only).

Read: SOURCES_T2_PI.md (all 291 lines); BETA_FP_H.md l. 92–132; BETA_FP_H_VERIFY.md l. 33–39; U3_LEMMA51.md l. 70–140; U3_VERIFY.md l. 74–100; numerics/NUMERICS.md l. 53–78. Also, to check specific claims: KAPPA_BOUNDED.md l. 1–41; THEOREM2_PROOF_v4.md l. 420–456 (§10); the d = 2 scripts and JSON named in SOURCES_T2_PI §8.1; CMP 109 page images as listed in §2.

Tags: [P] proved here; [R] reduced to a named input; [I] inference not checked line by line; [V] checked against a Balaban page image or text layer (said which). Grades: CONFIRMED, CORRECTED (correction stated), UNSUPPORTED (missing piece stated). "Claim n" refers to item n of the ledger SOURCES_T2_PI §9.2.

## Plan
1. Balaban sources and the inputs (I1)–(I3) (claims 1–5).
2. Check (1): the local density, localization, analyticity of Π̂ and its identification with Π_Λ(P) (claims 6–9).
3. Check (3): the magnetic-translation per-cell limit for V_f, line by line (claims 10–12).
4. Check (2) and the core identity: Lemmas 5.1–5.4 and Theorem PI (claims 13–17).
5. Expansion point (claims 18–20).
6. Check (4): which Fine/Coarse combination is probe-independent; the f² ln|f| term (claims 21–23).
7. Check (5): the lattice transfer of (F) (claim 24).
8. Check (6): numerics, rerun, d_1 (claims 25–27).
9. New tags for THEOREM2_PROOF_v4 §10 items 2 and 3.
10. Grades.

## 1. Balaban sources and the inputs (I1)–(I3) (claims 1–5)

### 1.1 Page images
I read CMP 109 PDF p. 5 (journal p. 253) and PDF p. 17 (journal p. 265) as page images.
- (0.4) is on p. 253 as quoted: "Ū(c) = M(U, c) = exp[ i Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} 1/|G(c_−,x)| Σ_{Γ′∈G(c_+,x′)} 1/|G(c_+,x′)| × (1/i) log U(Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c)) ] U(c)." [V: page image].
- (0.6) is on p. 253: "M({uU_jv}) = uM({U_j})v;   (0.6)" [V: page image].
- p. 265: "The gauge covariance of the averages implies that the δ-functions in (2.1) are invariant under the gauge transformations V → V^v, W → W^v, because δ(U) is invariant under the transformations U → R(u)U, u ∈ G." [V: page image]. SOURCES_T2_PI quotes the first half; the quote is accurate.
I did not recheck PDF p. 4 (contour family) or PDF p. 6 (gauge invariance of Tϱ, "both definitions are equally good"). Those quotes are tagged by the derivation as [V] (page image) and [V] (text layer); I accept them as readings [I].

### 1.2 A correction on the source of covariance for (0.4)
(0.6) is a property of the axiomatic average M({U_j}) of (0.5)–(0.10). That average enters the variant (0.11)–(0.12), not (0.4). (0.4) uses a plain sum of logarithms. Its covariance follows directly, and I rederived it [P]: every loop Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c) starts and ends at c_−. Under a fine gauge transformation u its holonomy W becomes u(c_−)Wu(c_−)^{−1}. Near the identity, log(uWu^{−1}) = u(log W)u^{−1}. So the exponent is conjugated by u(c_−), and U(c) → u(c_−)U(c)u(c_+)^{−1} gives Ū(U^u)(c) = u(c_−)Ū(U)(c)u(c_+)^{−1}. This holds for every fine u, not only for u at coarse sites. Composition over j steps keeps the form, because the level-(i+1) average of a level-i field transforms with the values of u at level-(i+1) anchors, and these are among the level-i anchors. For (0.12), covariance is (0.6) [V]. So the claim in SOURCES_T2_PI §2.2 (I2) is right; only the citation for (0.4) should be the log-covariance argument, not (0.6).

### 1.3 (I2) for each operator (claim 4)
I rederived the three covariance rules in the left trivialization U = e^{iB}U_0, with B at link b = (x, y) attached to the base point x.
- Hessian. (e^{iB}U)^u(b) = u(x)e^{iB}U(b)u(y)^{−1} = e^{iAd_{u(x)}B}U^u(b). So A(e^{iAd_u B}U^u) = A((e^{iB}U)^u) = A(e^{iB}U). Differentiating twice gives Δ(U^u) = R(u)Δ(U)R(u)^{−1} at every U, critical or not [P].
- Ghost gradient. (D(U)ω)(b) = ω(x) − Ad_{U(b)}ω(y). Then (D(U^u)Ad_uω)(b) = Ad_{u(x)}ω(x) − Ad_{u(x)U(b)u(y)^{−1}}Ad_{u(y)}ω(y) = Ad_{u(x)}(D(U)ω)(b). Dirichlet conditions at anchors are preserved [P].
- Linearized averaging. From §1.2, Ū((e^{iB}U)^u) = Ū(e^{iB}U)^u. Expanding Ū(e^{iB}U) = e^{iQ̃(U)B + O(B²)}Ū(U) on both sides gives Q̃(U^u)Ad_uB = Ad_{u(c_−)}Q̃(U)B [P given §1.2].
So Bord(U^u) = 𝒰Bord(U)𝒰^{−1} with 𝒰 orthogonal and site-local. Grade claim 4: CORRECTED (content right; the covariance of (0.4) follows from log-covariance of loops based at c_−, §1.2, not from (0.6), which is about the average M of (0.12); with this the composed form is [P], not [I]).

### 1.4 (I1) (claim 3)
(I1) asks for invertibility of the per-momentum blocks B̂ord(K) and Ĝ(K) at U = 1 for all real K. The derivation reduces it to U3_REPAIRS O6 and U3_AW Lemma A1 [R]. I did not reopen those files (outside my read list). Two remarks.
- The ghost block is elementary: Ĝ(K) is the per-momentum Dirichlet Laplacian with anchors on ΛZ⁴. ⟨ω, D^TDω⟩ = ‖Dω‖² > 0 for ω ≠ 0 with ω = 0 on anchors, because a gauge parameter with zero gradient is constant and hence 0. Per Bloch fibre this is a finite matrix, positive definite, continuous in K, so invertible with a uniform gap on the compact BZ [P].
- For j ≥ 2 the derivation tags the chaining [I]. I agree: no chaining argument is written. The project's numerics invert these blocks at every grid point (NUMERICS §5), which supports but does not prove (I1).
Grade claim 3: CONFIRMED as stated (the [R] and [I] tags are accurate).

### 1.5 (I3) (claim 5)
σ: e_0 → e_1 → e_2 → e_0 is a cyclic permutation of three axes, hence a proper rotation. It maps Z⁴ to Z⁴, fixes the origin, and maps the block lattice ΛZ⁴ and the centred blocks (odd L) to themselves. It maps a link to a link of the same orientation, so no change of trivialization occurs. The Wilson action and the D_k definition are invariant. For (0.4), invariance needs the contour family G(y, x) to be mapped to G(σy, σx). The family "generated by all such permutations" of the axis order is invariant under axis permutations [I: reading of the p. 252 quote, which I did not reopen]. One detail is missing in the derivation: the assignment of coordinates to cells must be σ-covariant. Links whose midpoints lie on a cell face (half-integer coordinate ±Λ/2) have no unique cell by "position". Assign each link to the cell of its base point; σ maps base points to base points, so the assignment is covariant. Grade claim 5: CONFIRMED as [I], with this one-line fix.

### 1.6 Claims 1 and 2
Claim 1 (log Z_Λ(V_f) = Γ(U_0^φ) + const) is a reduction to BETA_FP_H Fact 1.1 / Consequence 1.2, graded CONFIRMED in BETA_FP_H_VERIFY §2 (I read l. 33–39 of that file, which refer back to §2). I accept it as [R]. CONFIRMED.
Claim 2: quotes accurate where I checked (§1.1). CONFIRMED, with the citation correction of §1.2.

## 2. Check (1): local density, localization, analyticity of Π̂ (claims 6–9)

### 2.1 The density ρ_c (claims 6, 7)
Bord is real symmetric but indefinite (it is a saddle-point matrix). X = Bord² ≥ 0 and log|det Bord| = ½ log det X are correct. ρ_c = tr_c log G − ¼ tr_c log X sums over c to log det G − ½ log|det Bord|, which is Γ [P]. The contour formula for log is valid once spec X ⊂ (0, ∞) is enclosed by a contour in Re z > 0.
Lemma 3.1 (Floquet–Bloch): for a periodic operator with period lattice ΛNZ⁴, the per-period sum of diagonal blocks of log Y equals ∫ tr log Ŷ_N(k) dk/(2π)⁴ over the reduced zone. This is standard [P]. The equality with the code's transfer-kernel formula is [I], FD-checked in NUMERICS §5 (I did not reopen that check). Grade claim 6: CONFIRMED.
Lemma 3.2: I checked it with the covariance of §1.3. 𝒰 is block diagonal with one orthogonal block per site (per anchor for multipliers). Each such block lies inside one cell, given the base-point assignment of §1.5. So the diagonal cell block (log X)_{cc} is conjugated by the orthogonal 𝒰_c, and tr_c is unchanged. The argument does not use finite support of u: the identity 𝒰X𝒰^{−1} holds entrywise for finite-range operators, and resolvents of conjugate bounded operators are conjugate. Grade claim 7: CONFIRMED.

### 2.2 Localization (claim 8)
I rechecked each step of Lemma 3.3.
(a) Per fibre, X̂(K) = B̂ord(K)² is positive definite when B̂ord(K) is invertible and symmetric. Continuity and compactness of the BZ give a uniform lower bound c_X. The symbol z − X̂(K) is a trigonometric polynomial in K, invertible on the compact set 𝒞 × BZ, hence on a complex strip |Im K| ≤ δ. Shifting the contour gives exponential decay of the resolvent kernel [P given (I1)].
(b) The second-derivative formula is right. tr_0 is not cyclic, so the derivation correctly keeps 𝓡X_x𝓡 and does not replace it by X^{−1}X_x. ∂_x∂_y𝓡 = 𝓡X_{xy}𝓡 + 𝓡X_x𝓡X_y𝓡 + 𝓡X_y𝓡X_x𝓡 is the second derivative of the resolvent [P]. The bound on the chain cell 0 → x → y → cell 0 is e^{−m(|x| + |x−y| + |y|)} up to finite-range factors, which is ≤ e^{−m(|x| + |y|)} [P]. The vanishing of first derivatives uses c = e^{iπσ_1/2} = iσ_1, and σ_1σ_3σ_1 = −σ_3, so cU_θc^{−1} = U_{−θ}. This is a constant gauge transformation, so ρ_0 is even in θ by Lemma 3.2 [P].
(c) Coarse translation covariance at U = 1 holds because blocks and anchors are ΛZ⁴-periodic [P].
Grade claim 8: CONFIRMED.

### 2.3 Analyticity of Π̂ and its source (claim 9; check (1))
The double sum (3.2) converges absolutely for |Im p| < m′ by Lemma 3.3(b). So Π̂_{μν} is analytic there [P given (I1)]. I rederived the per-cell identity: Σ_{x∈cell 0}Σ_y Σ_c R_0(x − Λc, y − Λc)e^{ip(x−y)} = Σ_{x′}Σ_{y′} R_0(x′, y′)e^{ip(x′−y′)}, by substituting x′ = x − Λc and using absolute convergence [P]. Reality and evenness of the diagonal entries follow from R_0 real symmetric [P].

The source of the analyticity is now (I1), i.e. invertibility of the gauge-fixed bordered matrix at U = 1. BETA_FP_H §3.1 had cited "massive constrained propagator, U1_VERIFY §2.4". That is the same mechanism (exponential decay of the constrained propagator at fixed j), now written as a Paley–Wiener argument on the per-momentum blocks.

Correction (identification with BETA_FP_H's Π_Λ). §3.4 says Π̂ is "the object called Π_Λ(P) in BETA_FP_H §3.1". This is not exact. BETA_FP_H defines Π_Λ(P) as the second-order kernel of log Z_Λ(V) as a functional of the coarse field V. Π̂ is the second-order kernel of Γ as a functional of fine abelian fields, at the fine trivial background. The two kernels differ: the true coarse kernel is Γ″[H_1Q̃A, H_1Q̃A] plus the multiplier term (U3_VERIFY §6). They are known to share the P² coefficient only through U3_VERIFY §6 [sketch] or Corollary 6.1 [R]. The derivation itself makes this distinction in §6.2, so the slip in §3.4 does not propagate into Theorem PI. Theorem PI never uses the coarse kernel. The correct statement: Π̂ is the per-cell fine-field kernel of the code's functional Γ; Theorem PI is a statement about Π̂.
Grade claim 9: CORRECTED (analyticity on |Im p| < m′ given (I1) is right; the identification with BETA_FP_H's coarse Π_Λ(P) holds only at order P², and only through Corollary 6.1 [R] or U3_VERIFY §6 [I]).

## 3. Check (3): the magnetic-translation per-cell limit for V_f, line by line (claims 10–12)

This is the step that BETA_FP_H §3.1 left unwritten ("handled by magnetic translations") and BETA_FP_H_VERIFY §5 flagged ("per-cell limit for the linear potential not written"). SOURCES_T2_PI §4 writes it. I rederived each line.

### 3.1 Lemma 4.1 (resolvents at small flux)
Step 1 (gauge reduction). Landau θ = φx_0δ_{μ1} and the symmetric lattice potential θ_s(x, 0) = −(φ/2)x_1, θ_s(x, 1) = (φ/2)x_0 have the same plaquette angles. I checked: on the (0,1) plaquette at x, θ_s(x,0) + θ_s(x+e_0,1) − θ_s(x+e_1,0) − θ_s(x,1) = φ. On Z⁴ two potentials with equal curl differ by dχ. By Lemma 3.2 (any u) the kernel moduli are unchanged [P].
Step 2 (magnetic covariance). X is covariant under translations by ΛZ⁴ (periodic blocks and anchors) and under gauge transformations (§1.3). A translation by Λc maps θ_s to θ_s + (pure gauge). So X(φ) commutes with the magnetic translations [P]. U3_LEMMA51 Lemma 3.1 then gives X(φ)(u, v) = W_φ(u, v)x_φ(u, v) sector-wise, with x_φ invariant under joint coarse translations of (u, v). I read that lemma's proof (U3_LEMMA51 l. 76–80); it is a two-line computation and correct. The real σ_1, σ_2 coordinates must be complexified into the charged sectors; this is implicit in "sector-wise" and harmless.
Step 3 (|x_φ − x_0| ≤ C|φ|). By joint coarse-translation invariance it suffices to take u in cell 0. Then the link angles within range 2r of u are at most |φ|(Λ + 2r) in symmetric gauge. The derivation writes O(|φ|(Λ + r)²). That overstates the angles; the square belongs to |W_φ(u, v) − 1| ≤ C|φ||u||v|. Both are O(|φ|) at fixed Λ, r, so the conclusion |x_φ − x_0| ≤ C(Λ, r)|φ| holds [P, given analyticity of the Wilson action, D_k and (0.4) in the links near the identity].
Step 4 (the error E). I recomputed (z − X(φ))S with S = W_φg_0. Using W_φ(u, w)W_φ(w, v) = W_φ(u, v)e^{ieφ(u−w)∧(w−v)/2} and (z − X(1))g_0 = 1:
  (z − X(φ))S = W_φ · (δ + E),  E(u, v) = −Σ_w [(x_φ − x_0)(u, w)e^{ieφ(u−w)∧(w−v)/2} + x_0(u, w)(e^{ieφ(u−w)∧(w−v)/2} − 1)] g_0(w, v),
with "·" the entrywise product. This matches the derivation up to the overall sign, which does not matter. |e^{iα} − 1| ≤ |α| and |u − w| ≤ 2r give |E(u, v)| ≤ C|φ|(1 + |u − v|)e^{−m|u−v|} [P].
Step 5 (Neumann series in the twisted algebra). Take kernels of the form W_φ·K with |K(u, v)| ≤ k(u − v) and norm Σ_z e^{m₁|z|} sup_{u−v=z}|K(u, v)|, m₁ < m. Products stay of this form, because the twist phases have modulus 1, and the norm is submultiplicative by the triangle inequality in the weight. The identity is W_φ·δ (W_φ(u, u) = 1). For |φ| ≤ φ_0 the norm of E is < 1, so W_φ·(δ + E) has an inverse in this algebra. S times that inverse is a right inverse of z − X(φ), with kernel ≤ Ce^{−m″|u−v|} [P].
Step 6 (right inverse is the inverse). For real z, X(φ) is self-adjoint, so (z − X)R = 1 gives R*(z − X) = 1; z − X is then bijective and R is its inverse. For non-real z, z − X is invertible anyway, and R equals the inverse [P].
Step 7 (contour). One detail needs a fix. The lemma claims spec X(φ) lies inside 𝒞. The Neumann argument gives invertibility only at points z at a fixed distance from spec X(1). So choose 𝒞 to cross the real axis at c_X/2 and at a point b > sup_{|φ|≤φ_0}‖X(φ)‖ (finite: entries are bounded uniformly and have finite range). Then X(φ) ≥ 0, invertibility on [0, c_X/2], and ‖X(φ)‖ < b put spec X(φ) in (c_X/2, b), inside 𝒞. Lemma 3.3(a) holds on this enlarged 𝒞 as well. The derivation's choice "𝒞 around [c_X, ‖X‖]" needs this adjustment. It is a one-line fix.
Grade claim 10: CORRECTED (proof correct; the contour must be placed through c_X/2 and beyond sup‖X(φ)‖; the angle estimate O(|φ|(Λ + r)²) should read O(|φ|(Λ + r)), harmless).

### 3.2 Lemma 4.2 (C² along the linear potential)
The resolvent-identity argument is correct. One bound is asserted without proof: |∂_φ^kX(φ)(u, v)| ≤ C_k(1 + |u|)^k. By the chain rule, ∂_φX(φ)(u, v) = Σ_x ℓ(x)∂_{θ(x)}X(U_θ)(u, v)|_{θ=φℓ}. Far from the origin the angles φℓ(x) are large, so one needs ∂_θX bounded uniformly at large angles. Fill [P]: translating by Λc maps φℓ to φℓ + dχ with χ = φΛc_0x_1. The abelian gauge transformation e^{iχσ_3} conjugates X by an orthogonal site-local 𝒰. It also maps the direction ∂_{θ(x)} to itself, because Ad e^{iχσ_3} fixes σ_3. So the θ-derivatives of X near cell c at φℓ equal, up to orthogonal conjugation, those near cell 0 at φℓ. The latter are bounded by analyticity near the identity. Hence the θ-derivatives are bounded uniformly in position, and the stated (1 + |u|)^k growth comes only from ℓ.
Second derivative: ∂_φ²𝓡 = 𝓡∂²X𝓡 + 2𝓡∂X𝓡∂X𝓡. The chain cell 0 → v → w → cell 0 carries e^{−m″(|v| + |v−w| + |w|)} against (1 + |v|)(1 + |w|), which is summable and continuous in φ by dominated convergence [P].
F″(0): with ∂_φX(0) = Σ ℓ(x)X_x and ∂_φ²X(0) = Σ ℓ(x)ℓ(y)X_{xy}, the symmetrized sum 2Σℓℓ𝓡X_x𝓡X_y𝓡 = Σℓℓ(𝓡X_x𝓡X_y𝓡 + 𝓡X_y𝓡X_x𝓡) reproduces R_0(x, y). Fubini needs absolute summability of the individual chain terms (not only of |R_0|) against |x||y|. The bound in the proof of Lemma 3.3(b) is a bound on those terms, so this holds [P].
Evenness by charge conjugation [P].
Grade claim 11: CORRECTED (result and proof correct; the uniform bound on θ-derivatives at large angles was asserted, and is filled by the gauge-translation argument above).

### 3.3 (4.3): the per-cell limit (claim 12)
Line by line.
- Translation. Let τ_c be translation by Λc. The block structure is ΛZ⁴-periodic, so ρ_c(U) = ρ_0(τ_cU) with (τ_cU)(b) = U(b + Λc) [P].
- τ_cU_{φℓ} = U_{φℓ + φΛc_0δ_{μ1}}, since ℓ(x + Λc) = x_0 + Λc_0 on direction-1 links [P].
- φΛc_0δ_{μ1} = dχ with χ(x) = φΛc_0x_1: dχ(x, μ) = χ(x + e_μ) − χ(x) = φΛc_0δ_{μ1} [P].
- Lemma 3.2 with the non-finitely-supported u = e^{±iχσ_3} gives ρ_0(U_{φℓ+dχ}) = ρ_0(U_{φℓ}). It needs ρ_0 defined at both fields, which Lemma 4.1 supplies [P].
- Hence ρ_c(U_{φℓ}) = F(φ) for every c, and Γ̄(U_{φℓ}) = F(φ) with no limit to take. Γ̄(1) = F(0). With Lemma 4.2, Γ̄(U_{φℓ}) − Γ̄(1) = ½F″(0)φ² + o(φ²), and ½F″(0) = ½Σ_{x,y: dir 1}x_0y_0R_0(x, y) [P].
- "No extra term": F″(0) is computed exactly as a second derivative in one variable, and the chain rule involves only the second-order kernel. The tadpole is the X_{xy} part of R_0. No summation by parts is done [P].
- Gauge independence: the same F for θ = φ(ℓ + dq) by Lemma 3.2. I confirmed this numerically in d = 2: Γ at the q = 1 torus background and at a random SU(2) gauge transform of it agree to 2.8·10^{−14} (n = 12) and 9.1·10^{−13} (n = 54), while a non-gauge change of one link moves Γ by 0.15 (§8).
- Units: f = Λ²φ and [φ²]Ā = Λ⁴/2, so S_j^{cf} = 2Λ^{−4}[φ²]Γ̄ = [f²]log Z_Λ(V_f)/n_2 with n_2 = ½ [P].
The bullet on "(Πℓ)(x) coarse-periodic with zero cell average" is commentary, not used; [I].
The key point holds: gauge invariance of a local density plus magnetic translation make every cell carry the same density, so the per-cell limit is trivial. No uniformity in volume is needed.
Grade claim 12: CONFIRMED.

## 4. Check (2) and the core identity: Lemmas 5.1–5.4, Theorem PI (claims 13–17)

### 4.1 Lemma 5.1 (one-sided gauge sums; claim 13)
For finitely supported χ, ρ_0(U_{θ+t dχ}) = ρ_0(U_θ) (Lemma 3.2). Both sides are analytic in finitely many variables. ∂_t∂_{θ(x)} at 0 gives Σ_y R_0(x, y)dχ(y) = 0 [P]. Truncation χ_n = q·1_{|z|≤n}: dχ_n = dq on links with both ends inside, |dχ_n| ≤ Cn^k on the boundary shell, 0 outside. The difference is bounded by C Σ_{|y|≥n−1}e^{−m′|y|}(1 + |y|)^k → 0 [P]. With q = z_ν, dq = δ_{μ(y),ν}, so the sum vanishes separately for each direction ν. This per-direction form is what Lemma 5.2 needs. Grade: CONFIRMED.

### 4.2 Lemma 5.2 (moment identity; claim 14)
For direction-1 links the base point and the midpoint have the same x_0. The sine part Σ sin(s(x_0 − y_0))R_0 vanishes by x ↔ y and R_0 symmetric [P]. s⁰: Σ_xΣ_{y: dir 1}R_0 = 0 by Lemma 5.1 [P]. s²: −½Σ(x_0 − y_0)²R_0 = −½Σ_x x_0²Σ_yR_0 − ½Σ_y y_0²Σ_xR_0 + Σx_0y_0R_0. The split is legal because Σ(x_0² + y_0²)|R_0| < ∞ (exponential decay in |x| + |y|). The first two sums vanish by Lemma 5.1 (per direction 1) and symmetry [P]. The Taylor remainder bound |cos u − 1 + u²/2| ≤ u⁴/24 with finite fourth moments identifies the s² coefficient; analyticity (from §3.4) is not needed for this step [P]. So [s²]Π̂_{11}(se_0) = Σx_0y_0R_0 = F″(0) and [φ²]Γ̄ = ½[s²]Π̂_{11}(se_0). Grade: CONFIRMED.
Comment: this is the real content of (PI). The two moments that distinguish the cell-0 density on a growing potential from the per-cell plane-wave average are killed by one-sided gauge invariance. I find no gap.

### 4.3 Lemma 5.3 (plane wave; claim 15)
θ_1 = cos(px_1)δ_{μ2} is bounded, so X(U_{aθ_1}) − X(1) has operator norm ≤ C|a| for complex a in a small disc, and ρ_c(U_{aθ_1}) is analytic there with bounds uniform in c (Neumann series for the resolvent) [P]. The c-average of the second cosine term: |Σ_{|c_1|≤N}cos(α + 2Λpc_1)| ≤ 1/|sin(Λp)|, uniformly in α = p(x_1 + y_1). Divided by 2N + 1 it tends to 0, uniformly in x, y; combined with Σ|R_0| < ∞ the term vanishes in the limit [P]. The first term gives ½Π̂_{22}(pe_1) [P]. Wilson: average of [cos(p(x_1 + 1)) − cos(px_1)]² over x_1 is ½|e^{ip} − 1|² = 1 − cos p; with A = Σ(1 − cos ψ), ∂_a² per site is 1 − cos p; per cell Λ⁴(1 − cos p) [P]. In the code's convention θ = (a/2)cos(px_1) this is Λ⁴(1 − cos p)/4, matching NUMERICS §6.
A minor point. Γ̄ at a ≠ 0 is defined as a limit of cell averages. For p commensurate with the block lattice the field is periodic and the limit exists (Lemma 3.1); that is the case used by the code. For general p the proof computes lim_N ∂_a²(average) at a = 0, i.e. w(p) should be defined as that limit. The two agree for commensurate p. No consequence for the theorem.
Grade: CONFIRMED.

### 4.4 Theorem PI (claim 16)
(i) w = ½Π̂_{22}(pe_1), t = ½Π̂^W_{22}(pe_1) = Λ⁴(1 − cos p), both even and analytic, both zero at p = 0 (Lemma 5.1). w/t extends to an even analytic function with value [p²]Π̂_{22}(pe_1)/Λ⁴ at 0 [P].
(ii) Lemmas 4.1, 4.2, (4.3) as checked in §3 [P, with the fixes there].
(iii) I rederived the rotation step. With R_0(σx, σy) = R_0(x, y) (from (I3) and σ fixing cell 0) and σ orthogonal fixing the origin:
  Π̂_{σμ,σν}(σp) = Σ_{x′: dir σμ}Σ_{y′: dir σν}e^{iσp·(x′−y′)}R_0(x′, y′) = Π̂_{μν}(p)  (substitute x′ = σx, y′ = σy).
With σe_0 = e_1, σe_1 = e_2: Π̂_{22}(se_1) = Π̂_{11}(se_0). The same for Π̂^W. So S^{pw} = [s²]Π̂_{11}(se_0)/Λ⁴ = 2[φ²]Γ̄/Λ⁴ = [φ²]Γ̄/[φ²]Ā = S^{cf} [P given (I3)]. Normalization check: [s²]Π̂^W_{11}(se_0) = [s²]2Λ⁴(1 − cos s) = Λ⁴ = 2[φ²]Ā, consistent.
S^{cf} = 𝒞(Λ) uses claim 1 [R].
The theorem needs (I1), (I2), (I3) and analyticity of the averaging near the identity, as stated. It does not need transversality in Fourier form, the full hypercubic group, Prop. 2.1, (G2), (F), (M_j), V1. I agree.
In d = 2 the rotation e_0 → e_1, e_1 → −e_0 does the same job (signs cancel in Π̂_{μμ}); the d = 2 test of §8 is therefore a test of the same proof.
Grade claim 16: CONFIRMED (conditional on (I1)–(I3), with the fixes of §3.1, §3.2 to Lemmas 4.1, 4.2 and the [I] status of (I3) and of (I1) for j ≥ 2).

### 4.5 Lemma 5.4 (one-structure lemma; claim 17; check (2))
Transversality. I rederived it. For χ(z) = e^{−ip·z} and a link y = (z, ν) with midpoint y_m = z + e_ν/2: dχ(y) = e^{−ip·y_m}(e^{−ip_ν/2} − e^{ip_ν/2}) = −ip̂_νe^{−ip·y_m}. Lemma 5.1 (truncation with bounded χ) gives Σ_νΣ_{y: dir ν}R_0(x, y)e^{−ip·y_m}p̂_ν = 0 for every x. Multiply by e^{ip·x_m} and sum over x of direction μ: Σ_νΠ̂_{μν}(p)p̂_ν = 0 [P].
Symmetry. R_0 symmetric gives Π̂_{νμ}(p) = Π̂_{μν}(−p). Evenness in p needs a reflection. Under a reflection a link in the reflected direction reverses orientation; at U = 1 the coordinate change is B ↦ −B moved to the other end of the link, an orthogonal signed permutation. Invariance of (0.4) under reflections again rests on the full permutation contour family [I, as the derivation says].
Invariant tensors. The general fourth-rank tensor invariant under the hyperoctahedral group is aδ_{μν}δ_{αβ} + b(δ_{μα}δ_{νβ} + δ_{μβ}δ_{να}) + b′(δ_{μα}δ_{νβ} − δ_{μβ}δ_{να}) + c′δ_{μναβ}. The antisymmetric b′ term drops: it is antisymmetric in (α, β), and p_αp_β is symmetric. So the derivation's three-term form is right [P]. Contracting with p_ν: (a + 2b)p_μ|p|² + c′p_μ³ = 0 for all p, so c′ = 0 and b = −a/2 [P]. Correction terms: p̂ = p + O(p³) and Π̂ − (quadratic) = O(p⁴) contribute only at O(p⁵) [P]. Result: Π̂_{μν} = π_Λ(|p|²δ_{μν} − p_μp_ν) + O(p⁴), π_W = Λ⁴ from 2t(p) = Λ⁴p² + O(p⁴) [P].
This also re-confirms BETA_FP_H_VERIFY §5 ("the transversality + hypercubic step is correct").
Grade claim 17: CONFIRMED ([P] given (I1), (I2), and full hypercubic invariance, whose reflection part is [I]).

## 5. Expansion point (claims 18–20)

Claim 18 (§6.1). Theorem PI compares two probes of one functional, Γ of (1.1). The plane-wave side is Γ at the fine wave, which is what the code evaluates (NUMERICS §5, [I] for the code). The constant-field side is Γ at U_0^φ, which equals log Z_Λ(V_f) + const by claim 1. So "code's S_j^{pw} = 𝒞(Λ)" needs no expansion-point correction [P given claim 1]. The non-stationarity of the fine wave matters only when S_j^{pw} is identified with Balaban's per-step kernel. Grade: CONFIRMED.

Claim 19 (Corollary 6.1). The logic is sound. If Theorem PI holds for Φ(V) = log Z_Λ(V) as a functional of coarse abelian fields, then the P² coefficient of the true coarse kernel equals lim[Φ(V_f) − Φ(1)]/(n_2f²) = 𝒞(Λ) = S_j^{pw} (code). I checked the normalizations: the coarse Wilson action per coarse cell is 1 − cos f ≈ f²/2 at V_f and 1 − cos P ≈ P²/2 at a coarse wave; the fine Wilson action per cell gives Λ⁴(1 − cos φ) ≈ f²/2 and Λ⁴(1 − cos p) ≈ P²/2. They agree at leading order, so π^W_{coarse} matches. The inputs are as the derivation lists: (i) gauge invariance of Φ [V there, not rechecked here]; (ii) locality and analyticity of the minimizer map V ↦ U(V) with exponentially localized Taylor kernels, near V = 1 and along the whole linearly growing coarse potential [I, not written]; (iii) the analogue of (I3) [I]. One more input is implicit: for abelian coarse V the minimizer U(V) is abelian, so that the density argument (abelian gauge transformations, charge conjugation) applies. That follows from uniqueness of the minimizer and invariance of the problem under constant e^{iασ_3} conjugation, which fixes abelian V [I]. Grade: CONFIRMED as a reduction [R] (with the implicit abelian-minimizer input added). It is a fixed-j statement; it does not give A6.

Claim 20 (§6.3). Analyticity of Π̂ on |Im p| < m′ bounds the Taylor coefficients by C m′^{−2n}. So the p-variation of β^{pw} has scale at least m′, and m′ is of order 1/Λ if δ_j is of order 1 in coarse units. This is an upper bound on the curvature in the variable Λp, not a derivation that Λp is the natural variable. The split of the O(p²) term into a kernel-ratio part and an expansion-point part is read from SOURCES_D1_VERIFY V4 and U3_VERIFY §6. Grade: CONFIRMED as [I].

## 6. Check (4): which Fine/Coarse combination is probe-independent; the f² ln|f| term (claims 21–23)

Claim 21, (d1). Theorem PI is a statement about Γ, i.e. log Z_Λ, which is massive at fixed j by (I1). The probe-independent object is therefore log Z_Λ = Fine − Γ_c jointly, at fixed Λ. I read KAPPA_BOUNDED Prop. 1.1 and its proof (l. 30–35). Its only use of (PI) is "By (PI) and BETA_FP_H (1.1), 𝒞(Λ_j) − 𝒞(1) = lim[Fine(Λ_j; f) − Fine(1; f)]/(n_2f²) − lim[Γ_c(Λ_j; f) − Γ_c(1; f)]/(n_2f²)". This uses (PI) to replace S_j (plane wave, code) by 𝒞(Λ_j) (constant field, log Z jointly). The split into Fine and Γ_c happens afterwards, entirely at the constant field, where Prop. 2.1 is exact. BETA_FP_H Theorem 3.1 (l. 106–110) has the same structure. At Λ = 1, log Z_1 is constant, so both probes give 0 and 𝒞(1) = 0. So (d1) matches the use [P].
The f² ln|f| term. Fine(Λ; f) and Γ_c(Λ; f) each carry an f² ln|f| term. Theorem PI (ii) shows Fine − Γ_c = log Z_Λ(V_f) + const is C² in f near 0 (Lemma 4.2; C² is enough). So the two ln|f| coefficients cancel exactly in the sum at each Λ [P given claim 1]. In the Λ-differences: Fine(Λ; f) = Λ⁴F_W(f/Λ²) has ln|f| coefficient −n_2c_2f², independent of Λ, so it cancels in Fine(Λ) − Fine(Λ′) [P given (F_lat)]; then Γ_c(Λ) − Γ_c(Λ′) has no ln|f| term either, and (M_j) asserts its f² limit. No limit of a single bracket over f² is taken. The f² ln|f| issue is handled correctly.
Grade claim 21: CONFIRMED.

Claim 22, (d2). The constant-field part is BETA_FP_H (3.1), rederived in §7 below. The plane-wave part treats the fine bracket at the plane wave as the Wilson vacuum polarization at fine momentum P/Λ; Prop. 2.1 is only approximate at the plane wave (KAPPA_BOUNDED §1.1), so this identification is itself an input. LW (5.7) is not rechecked here. Neither part is used by Route K. Grade: CONFIRMED as [R] (LW (5.7), (F_lat), and the plane-wave identification of the fine bracket); not load-bearing.

Claim 23, (d3) and (d4). (d3) is a definitional remark, correctly tagged [I] and not used. (d4): given (F_lat), Fine alone has n_2f²[c_2 ln(Λ²/|f|) + B] + o(f²), so it has no f² coefficient; Γ_c alone then has the same ln term; at the plane wave the analogous statement rests on LW (5.7). Their constants B and κ_W^F refer to different infrared variables. Grade: CONFIRMED as [I].

## 7. Check (5): the lattice transfer of (F) (claim 24)

Step A (scaling). Per coarse cell Fine(Λ; f) = Λ⁴F_W(f/Λ²) (BETA_FP_H_VERIFY §5 confirms the scaling). Given (F_lat):
  Λ⁴(f/Λ²)²n_2[c_2 ln(Λ²/|f|) + B] − (Λ → Λ′) = n_2f²c_2 ln(Λ²/Λ′²) = n_2f²·2c_2 ln(Λ/Λ′),
and Λ⁴o(f²/Λ⁴) = o(f²) at fixed Λ. So [Fine(Λ) − Fine(Λ′)]/(n_2f²) → c log(Λ/Λ′) with c = 2c_2 [P given (F_lat)]. The derivation tags Step A [P]; it is an implication from (F_lat), which is the open statement. CONFIRMED.

Step B (log coefficient = angular integral of the degree −4 part, two-region control). Not proved; correctly tagged [I]. I add one remark. The small-K region is where BETA_FP_H_VERIFY §5 found an error in the analogous (M) argument: in d = 4 the n = 0 spin-down Landau mode has eigenvalue k_⊥² − |ef|, which vanishes on a sphere inside |K| ≲ |f|^{1/2}. So the resolvent bound used for (M) is false there, and a log|det| bound is needed. Step B, applied to a single massless functional, meets the same Nielsen–Olesen zero. Its status is [I], and its proof needs the same repair. CONFIRMED as [I].

Step C (lattice degree −4 integrand = continuum). U3_LEMMA51 Lemma 3.4 (l. 128–130 in my read range) states: "In midpoint symmetric gauge the symbol of the fine Hessian at flux φ is even in k for every φ, and its lattice-vs-continuum relative error is an even smooth function of k, O(|k|²), at each order in f." The degree argument is right: if a symbol is h(1 + ε) with h homogeneous and ε smooth, even, O(k²), then ∂^β[h(1 + ε)] = ∂^βh·(1 + O(k²)), because each derivative on ε costs one power of k and gains one on h. So relative O(k²) errors survive the Moyal derivatives, and they lower the degree from −4 to −2, which gives no logarithm [P]. Two corrections.
(a) Lemma 3.4 covers the Wilson Hessian only. The fine Feynman operator also contains the background gauge-fixing term and the ghost. For these the same evenness and O(k²) statement is plausible by the same point-reflection argument (trigonometric polynomials in k/2 at midpoints), but it is not stated in U3_LEMMA51. Tag: [I].
(b) I_{−4} is defined through the Moyal expansion, whose validity at small K is the content of Step B. So Step C is meaningful only inside Step B.
Grade of Step C: CORRECTED, from "[P given U3_LEMMA51 Lemma 3.4]" to "[R: U3_LEMMA51 Lemma 3.4 for the Hessian; gauge-fixing and ghost symbols [I]; framework of Step B]".

Step D (continuum value). Not rechecked against Savvidy (no network). I rechecked the conversion arithmetic. With 1/g²(μ) running as 2b_0 ln μ, b_0 = 11N/(48π²), and β = 2N/g², dβ/d ln μ = 4Nb_0 = 11N²/(12π²) = c, the coefficient per ln Λ. Since φ = f/Λ², ln(1/|φ|) = 2 ln Λ + const at fixed f, so the coefficient per ln(1/|φ|) is c_2 = c/2 = 11N²/(24π²). For N = 2: c = 44/(12π²) = 0.371511, c_2 = 0.185756. This matches the universal per-step value (11/(3π²))log L used in NUMERICS §6. CONFIRMED as [cited, arithmetic checked].

Grade claim 24: CORRECTED (Steps A, B, D as tagged; Step C downgraded from [P given Lemma 3.4] to [R] with [I] parts, as above).

## 8. Check (6): numerics (claims 25–27)

### 8.1 Rerun of the d = 2 test
New script numerics/t2_piv_rerun_d2.py imports gamma, wilson, abelian, plane from t2_pi_d2check.py (not modified). It writes numerics/results/t2_piv_d2_L3_nc12.json and t2_piv_d2_L3_nc18.json (new names). Runtimes 31 s (nc = 12) and 269 s (nc = 18). Plane wave at a = 0.01 only; four pw10 points plus one pw01 point; added a gauge check. (A 4-line debugging run of the gauge check at n = 12 was done from /tmp/piv_dbg.py; it wrote nothing in the project.)

Results, L = 3, SU(2), one (0.4) step:
| nc | β^{cf} (q = 1, 2, 3) | f → 0 (quadratic in f², 3 pts) | β^{pw10} at Lp | p → 0 fit in (Lp)²: deg 2 / deg 3 |
|---|---|---|---|---|
| 12 | −0.9726853, −0.9715637, −0.9697563 | −0.973065 | −0.9046101 (0.524), −0.7105179 (1.047), −0.4205459 (1.571), −0.0742346 (2.094) | −0.971371 / −0.972966 |
| 18 | −0.9729357, −0.9727195, −0.9723598 | −0.973008 | −0.9423483 (0.349), −0.8526786 (0.698), −0.7105095 (1.047), −0.5255140 (1.396) | −0.972817 / −0.973002 |

Reading.
- Reproduction. The nc = 12 constant-field values agree with t2_pi_d2_L3_nc12.json to all 7 printed digits. The nc = 18 plane-wave values at m = 1, 2, 3 agree with t2_pi_d2pw_L3_nc18.json to all digits (−0.9423483, −0.8526786, −0.7105095). The nc = 18 constant-field values agree with the console values quoted in SOURCES_T2_PI §8.1 (−0.972936, −0.972720, −0.972360) to 6 digits.
- Agreement. At nc = 18: constant field −0.973008, plane wave −0.973002 (cubic fit through four points). Difference 6·10^{−6}. The quadratic fit gives −0.972817 (difference 1.9·10^{−4}); it is less reliable because the m = 4 point at Lp = 1.40 needs the (Lp)⁶ term. The derivation's three-point value −0.972966 lies between. Error budget: a = 0.01 without Richardson shifts β^{pw} by about 3·10^{−5} at Lp = 0.52 (nc = 12 data: −0.9046403 Richardson versus −0.9046101), and the fit choice moves the extrapolation by up to 4·10^{−5}. So the probes agree to about 4·10^{−5}, as the derivation states. I confirm the number.
- pw10 = pw01 at m = 1 to all digits (−0.9423483 at nc = 18), the d = 2 analogue of the rotation step.
- Gauge check: Γ at a random SU(2) gauge transform of the q = 1 background minus Γ at the background: 9.1·10^{−13} at n = 54 (Γ itself is of order 10³), 2.8·10^{−14} at n = 12. A one-link non-gauge change at n = 12 moves Γ by 0.153. This tests Lemma 3.2 and (I2) in the code's functional.
- In d = 2 the value is negative (−0.973). That is a property of the d = 2 model and does not matter for the identity.
Limits: d = 2, j = 1, torus; it tests the logic of §3–§5, not (I1) in d = 4 and not the 4D numbers.
Grade claim 25: CONFIRMED.

### 8.2 Listed d = 4 slopes (claim 26)
I recomputed every slope from NUMERICS §6–§7: L = 3: (0.6893 − 0.6692)/(1.44 − 0.36) = 0.0186; predicted p = 0.1 value 0.6692 − 0.0186·0.27 = 0.6642 (listed 0.6667, grid-dominated). L = 9: 0.013/0.56 = 0.023, 0.005/0.19 = 0.026. L = 11: 0.018/0.75 = 0.024. L = 2: 0.0033/0.48 = 0.0069; predicted p = 0.1 value 0.6299 (listed 0.6299). Extrapolations with slope 0.024: L = 9: 0.833 − 0.006 = 0.827, minus c log 9 = 0.8163 gives +0.011; L = 11: 0.850 − 0.006 = 0.844, minus c log 11 = 0.8908 gives −0.047. All numbers agree. The listed values carry 2–3 significant digits of grid error, so the slopes are uncertain at the 20–30% level, and "roughly L-independent" is a fair reading. Grade: CONFIRMED (numerical; common slope assumed; L = 11 grid adequacy unchecked, as stated).

### 8.3 d_1 at L = 3 (claim 27)
KAPPA_BOUNDED (1.2) reads S_j = c j log L − d_j, so d_1 = c log 3 − β_1(0) = 0.37151·1.09861 − 0.664 = 0.40815 − 0.664 = −0.256 [arithmetic checked]. This is a prediction for (1.1), not an evaluation of it. The uncertainty of β_1(0) = 0.664 (L = 3, Ng = 8, quadratic fit) is a few 10^{−3} by the NUMERICS §6 grid remarks, so d_1 = −0.256 ± 0.005 roughly. I searched numerics/*.py (36 files) for a d = 4 constant-field or f-symbol code. The flux/background codes (u3_lemma51_check.py, t2_s123_*2d.py, kato_test.py, t2_pi_d2check.py) are d = 2; the d = 4 codes (h2_scan.py, h1cert_cell.py, ym_oneloop.py, umklapp codes) work at the trivial background or at a plane wave. So no script evaluates (1.1) at L = 3, and a new d = 4 f-symbol code is not a minute-scale task. I did not evaluate (1.1). Grade: CONFIRMED (status [open] is accurate; no comparison exists).

## 9. New tags for THEOREM2_PROOF_v4 §10 items 2 and 3 (suggested; not written into that file)

Item 2, current text: "(PI) probe independence, at each fixed level [argued]."
Suggested: "(PI) probe independence, at each fixed level j ≥ 1, odd L ≥ 3 [proved given (I1)–(I3); SOURCES_T2_PI Theorem PI, verified in SOURCES_T2_PI_VERIFY (22 CONFIRMED, 5 CORRECTED, 0 UNSUPPORTED; the corrections are local fixes)]. Inputs: (I1) invertibility of the per-momentum bordered and ghost blocks at U = 1 [R: U3_REPAIRS O6, U3_AW Lemma A1; chaining for j ≥ 2 [I]]; (I2) gauge covariance [P: Hessian, ghost, and (0.4) by log-covariance of loops based at c_−; (0.12) by CMP 109 (0.6) [V]]; (I3) invariance of the composed averaging under one axis permutation [I]. The per-cell limit for the linear potential of V_f is proved (Lemmas 4.1–4.2, (4.3), with the contour and derivative-bound fixes of SOURCES_T2_PI_VERIFY §3). What (PI) gives: the code's p → 0 limit S_j^{pw} equals 𝒞(Λ_j) for log Z_{Λ_j} jointly (Fine − Γ_c), not for either bracket. d = 2 test: probes agree to about 4·10^{−5} (rerun reproduced)." Identification of S_j^{pw} with Balaban's per-step kernel is separate: Corollary 6.1 [R: locality of the minimizer map, abelian minimizer, (I3) for Φ; all [I]] or U3_VERIFY §6 [sketch].

Item 3, current text: "(F) lattice = continuum log coefficient at constant field [cited source checked; lattice transfer standard, not proved here]."
Suggested: "(F) [continuum value: Savvidy (1.4), cited, source checked in BETA_FP_H_VERIFY §4; c = 0.371511 for SU(2)]. Lattice transfer: Step A (scaling ⇒ BETA_FP_H (3.1), B cancels) [P given (F_lat), verified]; Step C (lattice degree −4 integrand = continuum) [R: U3_LEMMA51 Lemma 3.4 for the Wilson Hessian; same statement for the gauge-fixing and ghost symbols [I]]; Step B (the log coefficient equals the angular integral of the degree −4 part; two-region control at level 0, including the n = 0 spin-down Nielsen–Olesen zero, which needs a log|det| bound as in BETA_FP_H_VERIFY §5) [I, open]." So item 3 stays open, now reduced to Step B.

## 10. Grades

1. Setting, log Z_Λ(V_f) = Γ(U_0^φ) + const — CONFIRMED ([R] to BETA_FP_H Fact 1.1).
2. Balaban quotes (0.4), (0.6), p. 265 — CONFIRMED ([V] page images PDF pp. 5, 17 rechecked; pp. 4, 6 not rechecked).
3. (I1) and its reduction — CONFIRMED (tags accurate; ghost part [P] here; chaining for j ≥ 2 [I]).
4. (I2) gauge covariance — CORRECTED (covariance of (0.4) is from log-covariance of loops based at c_−, not (0.6); composed form becomes [P]).
5. (I3) axis permutation — CONFIRMED as [I] (assign boundary links to the cell of their base point).
6. Lemma 3.1 Floquet–Bloch — CONFIRMED.
7. Lemma 3.2 gauge invariance of ρ_c — CONFIRMED (also numerically, 9·10^{−13}).
8. Lemma 3.3 localization — CONFIRMED.
9. §3.4 analyticity of Π̂ — CORRECTED (analytic on |Im p| < m′ given (I1); Π̂ is the fine-field kernel of Γ, equal to BETA_FP_H's coarse Π_Λ(P) only at order P² via Corollary 6.1 or U3_VERIFY §6).
10. Lemma 4.1 magnetic Neumann series — CORRECTED (contour must cross at c_X/2 and beyond sup‖X(φ)‖; angle bound O(|φ|(Λ + r)), not squared).
11. Lemma 4.2 C² along ℓ — CORRECTED (uniform θ-derivative bounds at large angles were asserted; filled by the translation-plus-abelian-gauge argument).
12. (4.3) per-cell limit, no extra term, gauge independence — CONFIRMED.
13. Lemma 5.1 one-sided gauge sums — CONFIRMED.
14. Lemma 5.2 moment identity — CONFIRMED.
15. Lemma 5.3 plane wave, t(p) = Λ⁴(1 − cos p) — CONFIRMED (w(p) for non-commensurate p is the limit of ∂_a² of cell averages).
16. Theorem PI (i)–(iii) — CONFIRMED (given (I1)–(I3), with fixes 10, 11).
17. Lemma 5.4 one structure, π_W = Λ⁴ — CONFIRMED (reflection invariance [I]).
18. §6.1 no expansion-point correction for the code's functional — CONFIRMED.
19. Corollary 6.1 — CONFIRMED as [R] (add the abelian-minimizer input [I]).
20. §6.3 (Λp)² scale — CONFIRMED as [I] (an upper bound on curvature, not a derivation).
21. (d1) log Z_Λ = Fine − Γ_c jointly is the probe-independent object; f² ln|f| cancels in the sum — CONFIRMED.
22. (d2) — CONFIRMED as [R], not load-bearing.
23. (d3), (d4) — CONFIRMED as [I].
24. (F_lat) Steps A–D — CORRECTED (Step C is [R] with [I] parts, not [P given Lemma 3.4]; Step B also meets the Nielsen–Olesen zero).
25. §8.1 d = 2 test — CONFIRMED (rerun reproduces all values; nc = 18: constant field −0.973008, plane wave −0.973002 (cubic fit); agreement ≈ 4·10^{−5} within the error budget).
26. §8.2 slopes and extrapolations — CONFIRMED (numerical, arithmetic rechecked).
27. §8.3 d_1 = −0.256 as a prediction; (1.1) not evaluated — CONFIRMED (status open; no d = 4 f-symbol code exists).

SUMMARY: 22 CONFIRMED, 5 CORRECTED, 0 UNSUPPORTED; verdict: Theorem PI (plane-wave p² coefficient = constant-field f² coefficient of log Z_Λ at fixed level) is correct given (I1)–(I3), including the previously unwritten magnetic-translation per-cell limit, with local fixes to Lemmas 4.1–4.2 and citations, while (F) stays reduced to the open Step B and (1.1) at L = 3 stays unevaluated.

STATUS: COMPLETE
