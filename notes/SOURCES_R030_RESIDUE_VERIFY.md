# SOURCES_R030_RESIDUE_VERIFY — adversarial check of SOURCES_R030_RESIDUE.md (ledger row R-030, (G2))

Date 2026-10-29. Verifier: Claude (Opus 5.5). Ids follow IDS.md. Local labels (Z-1 … Z-6, items A–D) are those of the checked file.

## Verdict

CONFIRMED with minor corrections. No claim is refuted. Every load-bearing step was rederived here or checked against the page image. Six minor corrections are recorded (V3, V7, V9, V12, V17, V22), and one unused side remark is UNSUPPORTED (V29); none changes a conclusion. Safe status for R-030: PROVED at fixed j relative to listed inputs (§9). No [I] item remains in the chain that Target 1 uses.

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read. Every grep excluded them. Only this file was written. PLAN.md was not touched. sync.sh was not run.

## 0. What I read

- OPUS_QUEUE.md l. 1–15; SOURCES_R030_RESIDUE.md (all, 196 l.).
- SOURCES_T2_G2.md §1 (l. 30–60), Lemma 4.2, §5.5, §8; SOURCES_T2_G2_VERIFY.md 1.6, 4.3–4.6, 5.3, 7.3; SOURCES_L1_G_VERIFY.md V33, V35, V37, V38, V40.
- TRUST_LEDGER.md rows R-015, R-027, R-028, R-029, R-030; IDS.md row L-028.
- SOURCES_T2_S123.md l. 27–29, Prop. 5.6 and its uses (l. 159–228); U3_LEMMA51.md (1.1); BETA_FP_M.md Remark 1.1; BETA_FP_H.md l. 27 and Theorem 3.1; BETA_FP_LEMMA43.md l. 22; SOURCES_T2_V1.md §2.4; SOURCES_T2_GAPRIME2_VERIFY.md (head).
- Consumer greps (whole project, firewall files and archive/ excluded): "§5.5", "T2_G2"/"(G2)" together with torus, zero mode, c_zm, Thm 4.1, Cor. 4.3; "c_zm"; "zero-mode constant"; paper/*.tex.
- Page images, CMP 109 pp. 251–254 (PDF 3–6). I rendered them with pdftoppm -r 150 into a fresh folder /tmp/r030v.KGhl, read each image, and deleted the folder after use.

## 1. Page checks (CMP 109, images read)

- V1. p. 251 quote (torus, L_μ = L^m, "L is an odd, positive integer > 11", (0.1), ε = L^{−K}, the tori T^{(k)}_{L^kε}). CONFIRMED verbatim. The page also says "A point y ∈ T^{(k)} determines a cube … with a center at y and the size L^kε. We denote it by Δ(y)".
- V2. p. 252. CONFIRMED. (0.3) B^k(y) = Δ(y) ∩ T: the block is the centred cube. The contours G(y, x) are built from permutations of the coordinate directions, with |n_μ| ≤ (L − 1)/2. So every Γ ∈ G(y, x) is a shortest path and stays in the box spanned by y and x, inside B(y). "[x, x′] denote a contour which is obtained by a parallel transport of c to the point x", with c a coarse bond. The complexification is written "U = U′U, where U ∈ G and U′ = exp iA′, A′ ∈ g^c": a left factor. So the left chart (Chart) agrees with the page.
- V3. p. 253 (0.4) and (0.5)–(0.10). CONFIRMED verbatim. CORRECTED (minor, no effect): the file says that Lemma Z-1 holds "verbatim for the average (0.12), by (0.5)–(0.9)". (0.12) (p. 254) uses the averaged contour variables U(y, x) = M({U(Γ)}) of (0.11). (a)–(e) follow from (0.5)–(0.9). Z-1(f) also needs that M of commuting elements is the exponential of the mean of the logs. That follows from (0.10), not from (0.5)–(0.9). Nothing in the chain uses (0.12).
- V4. p. 254. CONFIRMED: "This average has properties similar to the properties of the average introduced in (0.4) … Let us stress that both definitions are equally good for our purposes".

## 2. Lemma Z-1 (properties of Q̃ from (0.4))

- V5. (a) Locality. CONFIRMED. The loop in (0.4) lies in B(c_−) ∪ B(c_+) together with c and the segment [x, x′]. Induction over j gives range R_j ≤ C_dΛ.
- V6. (b) Covariance, Q̃D = D_cι_a^T. CONFIRMED. The loop starts and ends at c_−. Its holonomy is conjugated by u(c_−), and log commutes with conjugation near 1. The last factor gives u(c_−)U(c)u(c_+)^{−1}. In the left chart, (e^{itB}U)^u = e^{it Ad(u(b_−))B}U^u. Also U^{e^{itλ}} = e^{it(Dλ) + O(t²)}U, so differentiation gives Q̃(U)D(U) = D_c(Ū^j(U))ι_a^T. The O(t²) term does not enter a first derivative. The level-i sites are level-(i − 1) sites because L is odd and blocks are centred, so iteration works.
- V7. (c) Analyticity and (1.1). CONFIRMED in substance. Ū^j is a finite composition of products, logs near 1 and exponentials. So there are r_j > 0 and M_j < ∞, and every entry of Q̃(e^{iÂ}) is analytic on a polydisc. The Cauchy and mean-value steps are correct. CORRECTED (minor): (i) The explicit r^{(1)} = (ln 1.5)/ℓ_L does not by itself give the BCH bound for e^{iX}U(c). The crude bound |log H| ≤ ln 2 gives |X| + |log U(c)| > ln 2. The fine bound |log H| ≤ 2‖H − 1‖ must be used, and r^{(1)} may need a smaller O(1) factor. Existence of r_j > 0 does not depend on this. (ii) The proof gives Lip_Q = 8n_RM_j/r_j², not 8n_RM_j/r_j. The text says "with M_j renamed". Only finiteness at fixed j is used.
- V8. (d) Explicit right inverse, Q̃Q̃^T ≥ L^{−6j}. CONFIRMED; I rederived each step. At U = 1, (Q̃_1B)(c) = avg[B(Γ) + B([x, x′]) − B(Γ′)]: the −B(c) inside the log cancels the +B(c) of the factor U(c). b(c) has one end in B(c_−) and one in B(c_+). So b(c) lies on no Γ ⊂ B(y), for any block. The segment [x, x′] of a coarse bond c̃ crosses exactly one block face, the face between B(c̃_−) and B(c̃_+). It contains b(c) only if c̃ = c and x lies on the central line of c. There are L such x. So (Q̃_11_{b(c)})(c̃) = δ_{c̃c}L^{1−d}. Then Q̃_1H_1 = I with ‖H_1‖ = L^{d−1}. Ū(1) = 1 at every level, so the chain rule gives Q̃_j = Q̃^{(j)}⋯Q̃^{(1)} and Q̃_jH_j = I. ‖v‖ ≤ ‖H_j‖‖Q̃_j^Tv‖ gives Q̃_jQ̃_j^T ≥ L^{−2j(d−1)} = L^{−6j}. H_j commutes with level-j translations, so the bound holds on every Bloch fibre.
- V9. Torus part of (d). CORRECTED (minor): the file says the bound holds "on every torus with N ≥ 1 coarse cells per side". For N ≤ 2 the coarse bonds wrap, and the identification of torus operators needs NΛ > 2R_j (T2_G2 Lemma 1.1(b)). With that condition the claim holds by the fibre argument. Every use in the chain has NΛ > 2R_j.
- V10. (e) Q̃c = Λc. CONFIRMED in two ways. (1) The file's proof: B = Dλ with λ(x) = Σc_μx_μ, then (b). (2) A direct computation at U = 1: B(Γ) = B(Γ′) = Σ_μc_μ(x − c_−)_μ, and B([x, x′]) = Lc_ν, so one step gives Lc_ν and j steps give Λc_ν.
- V11. (f) The averaged abelian background is V_f. CONFIRMED by an independent computation. Take the Landau gauge θ_1(b) = φx_0(b), θ_0 = θ_2 = θ_3 = 0. (0.4) is linear in σ_3 angles. On a coarse 1-bond: [x, x′] gives Lφx_0, whose block mean is LφX_0. The Γ and Γ′ terms cancel, because θ is invariant under e_1 shifts and G(c_+, x′) = G(c_−, x) + Le_1. On a coarse 0-bond: θ(Γ′) − θ(Γ) = φL(x − c_−)_1, and its block mean is 0. On coarse 2- and 3-bonds every term vanishes. So θ̄ is the Landau-gauge field with coarse flux L²φ in the (0,1) planes and 0 in the other planes. Iteration j times gives f = Λ²φ.

## 3. Lemma Z-2 (corrected (Gap_f))

- V12. FF^T term (V35). CONFIRMED: (Q̃ + F)(Q̃ + F)^T − Q̃Q̃^T = FQ̃^T + Q̃F^T + FF^T. The entrywise bound n_RLip_Q(2‖Q̃_1‖_∞ + Lip_Qa_1)·a is correct if ‖·‖_∞ is the largest entry. CORRECTED (notation only): T uses Q̃^TQ̃, not Q̃Q̃^T. The same bound holds for Q̃^TQ̃ with the column count in place of n_R. n_R is defined as a sup over balls, so it covers both.
- V13. f_1 cut-off fixed before ℓ_0 (V33). CONFIRMED. φ ≤ f_1/Λ² = 2a_1/(R + 1) gives (φ/2)(R + 1) ≤ a_1. So every entry of X at |f| ≤ f_1 is, after a gauge conjugation that preserves the norm, an entry at e^{iÂ} with sup|Â| ≤ a_1. Then S ≤ n_R(‖X_1‖_∞ + Lip_Xa_1). The order is: S depends on f_1 only; ℓ_0 depends on S; f_0 ≤ f_1 depends on ℓ_0. There is no circular step. The two error budgets c_0/12 + c_0/12 give X_f ≥ (5/6)c_0. For T, c_0 = (3/4)γ_j gives (5/8)γ_j. On ker Q̃_f, A_f = T_f.
- V14. Inputs of γ_j (V37). CONFIRMED. I read the proof of T2_G2 Lemma 1.3 (l. 56–58). It uses Q̃D = D_cι_a^T, "Q̃c is a nonzero multiple of c", Δ(1) = c_W d^Td (so ΔB = 0 ⇔ dB = 0, and Δ ≥ 0), and compactness of the Brillouin zone. Continuity of the restricted fibre eigenvalue needs dim ker Q̃(K) to be constant, and q_j > 0 gives this. All of these are now [P] (V6, V8, V10).
- V15. Fibre and torus forms. CONFIRMED. X_f commutes with the magnetic supercell translations, so a bound on ℓ² gives the same bound on every fibre. The torus form is T2_G2 Lemma 2.2(a), as L1_G_VERIFY V38 already confirmed.
Grade of Z-2: CONFIRMED, [P] relative to Z-1 and T2_G2 Lemmas 1.3, 3.1, and the L1_G §4.4 steps verified in L1_G_VERIFY.

## 4. §5.5 at V_f (item A-inf): Lemmas Z-3, Z-4, Theorem Z-5, Corollary Z-6

- V16. Commutative decomposition at rational flux (§3.2). CONFIRMED. The gauge group is SU(2) with Ad in SO(3) (T2_G2 §1.1). The adjoint charges are integers (e = 2 in the e^{iθσ_3} convention, S123 l. 27). So e^{iqfrn} = 1 on Γ′. The coarse operators commute with the induced coarse magnetic translations: τ_aU_0^φ = U_0^φ, and covariance (V6) gives the same invariance for Ū^j(U_0^φ). The normalization τ = r^{−1}∫tr(·)dk/(2π)⁴ matches one coarse cell. (3.1) is correct when ker A = 0.
- V17. ΔD = 0 at U_0^φ. CONFIRMED (critical point: the σ_1, σ_2 variations give tr(σ_a·diagonal) = 0; the σ_3 variations give two equal-angle plaquettes with opposite orientation). CORRECTED (wording): "differentiating A(U^{e^{tλ}}) = A(U) twice" gives only ⟨Dλ, ΔDλ⟩ = 0. Δ is not ≥ 0 at U_0^φ (Nielsen–Olesen modes), so this does not give ΔDλ = 0. The correct step is the mixed derivative ∂_s∂_t A((e^{isB}U)^{e^{tλ}}) = 0 at a critical point, which gives ⟨B, ΔDλ⟩ = 0 for every B. Then Δ = Δ^T gives D^TΔ = 0.
- V18. Lemma Z-3, Step 0. CONFIRMED. I checked (i)–(iii) in full. Two details: Δ maps ker D^T into itself because im Δ ⊂ (ker Δ)^⊥ ⊂ (im D)^⊥. In (ii) for K_{D,ε}, w = Dλ with ι_k^TXλ = 0 and ι_a^Tλ = 0 gives ⟨λ, Xλ⟩ = 0, so w = 0. The file compresses this step, but it is correct.
- V19. Lemma Z-3, Step 1 (a)–(f). CONFIRMED line by line. (a) is Jacobi's complementary-minor identity. (b): det[[M, B^T],[B, 0]] = (−1)^n det B·det B^T for square invertible B. This holds with no condition on M, so the split W ⊕ W^⊥ ⊕ coarse is valid. (c): K_D = K − D_aD_a^T, and the matrix determinant lemma applies on W. The three identities D_a^TK^{−1}D_a = 1, D_a^TK^{−1}Q̃^T = sD_c^T and Q̃K^{−1}D_a = D_cs follow from D^TK_ε = XD^T, K_εD = DX and Q̃D = D_cι_a^T. (d): Bord_ε[Dλ; 0] = [0; D_cμ] with λ = X^{−1}ι_as^{−1}μ. (e): I checked the explicit solution: P_∥Q̃^TEw = DX^{−1}ι_aD_c^TEw = 0, and μ removes the im D_c part of Q̃B. (f): Jacobi in the unitary basis [E, D_c(D_c^TD_c)^{−1/2}] holds for a non-Hermitian invertible S. det 𝒦_ε = det(E^TΔ_ΛE)·det(D_c^TD_c), by (d) and Bord_ε^† = Bord_{ε̄}. The combination gives (3.2).
- V20. Step 2 (ε → 0). CONFIRMED. Both sides are continuous at ε = 0, because Bord_0 is invertible. Positivity of K is not used.
- V21. Lemma Z-4 (a), (b), (d). CONFIRMED. A covariantly constant charged section picks up e^{iqφ} ≠ 1 around one plaquette, so it vanishes. A neutral one is constant with Bloch phase 1. log|k|² is integrable. (b): T2_G2 Lemma 1.2 holds for any background (parallel transport is orthogonal), and Bord̂^{−1} is bounded uniformly by Z-2 and Lemma 3.1. (d) follows from (3.2) and (a)–(c).
- V22. Lemma Z-4 (c): determinant class of 𝒦 from S123 Prop. 5.6. CONFIRMED, relative to Prop. 5.6. Prop. 5.6 states N_1(λ + ρ) − N_1(λ − ρ − 0) ≤ C|f|ρ for |λ| ≤ η_1, 0 < ρ ≤ η_1, with N_1 the IDS of 𝒦_1 = Δ_j(f) + D_cD_c^T (S123 l. 159, 171). It is proved given (G_A); (G_A) ⇔ (G_A′) = L-028 (S123 Lemma 5.8; IDS row L-028). The dyadic-shell sum is correct. Prop. 5.6 is stated in the twisted algebra for every small f, so it holds at the rational fluxes 2π/n for large n. The identification 𝒦 = 𝒦_1: U3_LEMMA51 (1.1) defines S[K; C](V) := min{⟨B, KB⟩ : CB = V}, with no factor ½. The Lagrange computation gives ⟨V, −(Bord^{−1})_{22}V⟩. I checked that the K_D-stationary point has D_k^TB = 0 (apply D_k^T and use Q̃D_k = 0), so adding D_kD_k^T changes nothing. CORRECTED (minor, record only): the file does not show that the C_f of U3_LEMMA51 is the same operator as Q̃(U_0^φ). This is a notation identity inside the project, and I did not trace it. Prop. 5.6 is already in the chain that R-028 uses (S123 l. 228: (Z_j) ⇐ Prop. 5.6 in part (i) of the R-028 proof). So "Target 1 gains no new input" is CONFIRMED for Route K. Route B does not use Theorem Z-5.
- V23. Theorem Z-5. CONFIRMED. Half of log|·| of (3.2), integrated with (3.1), gives (3.3), because all six functions are in L¹. The f = 0 remark is correct: 𝕂(1) is the scalar Laplacian ⊗ 1_{12} (T2_G2 l. 164), so log det 𝕂̂ has only a log|k|² singularity.
- V24. Corollary Z-6: rational flux suffices for the f² coefficients. CONFIRMED. Along f_n = 2π/n, (3.3) and the two expansions give (a_F − a_c)f_n² log|f_n| + (b_F − b_c − Φ_2)f_n² = o(f_n²). This forces a_F = a_c and then Φ_2 = b_F − b_c. Condition: R-027 and R-028 must give their expansions for real f → 0, or at least along f_n. R-027 and R-028 state limits for real f → 0 (ledger rows), so the condition holds. The note on irrational f is correct: a sequence fixes the coefficients of an expansion in the scale {f² log|f|, f², o(f²)}.
- V25. Correction "no charged spectrum at 0" is false for K and 𝒦. CONFIRMED for 𝒦: BETA_FP_M Remark 1.1(b) proves that the N–O eigenvalue k_⊥² − |ef| crosses 0. BETA_FP_H l. 27 records an N–O band in each bracket. For the fine K the same mechanism applies (a band below 0 at k_⊥ = 0, continuous in k_⊥, positive for large k_⊥). The sources state this for the symbol; the lattice proof for K is not written ([P-sketch]). The point is spectrum, not eigenvalues: ker K = ker 𝒦 = 0 (Z-4). T2_G2_VERIFY 1.6 ("does not create zero modes") is a torus statement and does not contradict this. The correction has no downstream cost. The new proof uses a density-of-states bound and not a spectral gap.

## 5. §5.5 torus part (A-tor): no Target 1 result uses it

- V26. CONFIRMED by grep. Consumers of SOURCES_T2_G2 that mention the torus: T2_G2 Theorem 4.1 and Corollary 4.3 concern the massive ℓ only (T2_G2_VERIFY 1.6, 4.3, 4.5). SOURCES_T2_V1 §2.4(iii) uses the torus limit of the one-step Gaussian at U = 1, which is the massive object at (T). SOURCES_T2_VOL uses only N_{K,j} ≥ L^{K−j}. BETA_FP_H uses "torus" only for the Brillouin torus. "c_zm" and "zero-mode constant" appear only in T2_G2, its VERIFY, the file under check, PLAN.md, api_runs logs, and paper/sources.tex l. 26. The paper sentence ("handled fiberwise, with an N-independent zero-mode constant") is about (T) (T2_G2 §5.3), not about V_f. No file uses the V_f zero-mode constant or the absence of charged torus zero modes.

## 6. §7.3 (ii) and (iii)

- V27. (ii) on CMP 109 p. 251. CONFIRMED [V]. The torus is the periodic identification of the cube of side 2L^m. The initial spacing is L^{−K}, and the level-j lattice is (0.1) with spacing L^jε. Since L is odd, the level-j points are fine lattice points. So the level-j lattice has 2L^m/(L^{j−K}) = 2L^{m+K−j} ≥ L^{K−j} points per side, an even number. T2_VOL's form N_{K,j} = ℓL^{K−j} agrees with ℓ = 2L^m.
- V28. (ii) and (iii) are not inputs of R-030's Target 1 use. CONFIRMED. Both are conditions of T2_G2 claim 27 / §8.2 (item 9). The R-030 ledger row says "uses only the definition of β_j, not R-015", and item 9 is closed by SOURCES_T2_KUNIF §5.1 (ledger R-015, R-032).
- V29. (iii) is a convention of zero cost, used only by the fallback §8.2(b). CONFIRMED. T2_G2_VERIFY 7.3 states the same: Balaban defines β_j only on the whole lattice, so β_j^{[K]} is the project's own object, and it matters only for 8.2(b). 8.2(b) is marked "not needed for Theorem 2w". The side remark that other extractions differ by O(N^{−4}) or O(N^{−2}) "by the same proofs" is UNSUPPORTED as written. It is not used.

## 7. Sweep table (§5 of the file) and other claims

- V30. Thm 3.2: Q̃(a) analytic in a, uniformly in p. CONFIRMED. The fine plane wave has link angles linear in a with bounded form factor (BETA_FP_LEMMA43 l. 22), so Z-1(c) applies for |a| < r_j/(2C).
- V31. Lemma 4.2: entries smooth in f. CONFIRMED. In the symmetric gauge centred at x the local field is f × (linear), with norm ≤ (φ/2)(R + 1), so Z-1(c) applies. The change to the x_0-centred gauge is an abelian phase linear in f with coefficient O(|x − x_0|/Λ²). So |∂_f^nA_f(x, y)| ≤ C_n(1 + |x − x_0|)^n, which is exactly the input that T2_G2 Lemma 4.2 uses. This removes the CMP 99 p. 406 reading from the chain.
- V32. (5.1) at (T), (5.4) without Lemma M, chart independence among the left, right and midpoint charts. CONFIRMED. The chart maps are orthogonal Ad-conjugations, so they do not change log|det|.
- V33. The "Not inputs of R-030" list. CONFIRMED for the items that I could trace (c_zm value, torus asymptotics (5.7), Remark 4.1, Lemma 6.1, j-uniform constants, T2_G2_VERIFY 1.6). (Avg), the declaration that the level-j average is the j-fold iterate of (0.4), is the same declaration that R-029 already carries. It is a definition and not an [I] reading.

## 8. Grades

| # | claim | grade |
|---|---|---|
| V1–V2 | p. 251, p. 252 quotes; left chart on p. 252 | CONFIRMED [V] |
| V3 | (0.4) quote; "verbatim for (0.12) by (0.5)–(0.9)" | CONFIRMED; CORRECTED (Z-1(f) also needs (0.10)) |
| V4 | p. 254 quote | CONFIRMED [V] |
| V5 | Z-1(a) locality | CONFIRMED |
| V6 | Z-1(b) covariance, Q̃D = D_cι_a^T | CONFIRMED |
| V7 | Z-1(c) analyticity, (1.1) | CONFIRMED; CORRECTED (constants: r^{(1)}, Lip_Q ∝ 1/r_j²) |
| V8 | Z-1(d) Q̃Q̃^T ≥ L^{−6j} via the explicit right inverse | CONFIRMED |
| V9 | Z-1(d) on every torus with N ≥ 1 | CORRECTED (needs NΛ > 2R_j) |
| V10 | Z-1(e) Q̃c = Λc | CONFIRMED |
| V11 | Z-1(f) averaged background = V_f | CONFIRMED (independent check) |
| V12 | FF^T term | CONFIRMED; CORRECTED (notation, T uses Q̃^TQ̃) |
| V13 | f_1 cut-off fixed before ℓ_0; constant order | CONFIRMED |
| V14 | inputs of γ_j all [P] | CONFIRMED |
| V15 | fibre and torus forms of Z-2 | CONFIRMED |
| V16 | commutative Bloch decomposition at rational flux | CONFIRMED |
| V17 | ΔD = 0 at U_0^φ | CONFIRMED; CORRECTED (needs the mixed derivative) |
| V18–V20 | Lemma Z-3, ε-regularized fibre identity without K > 0 | CONFIRMED |
| V21 | Z-4 (a), (b), (d) | CONFIRMED |
| V22 | Z-4 (c) from S123 Prop. 5.6 (an R-028 input) | CONFIRMED relative to Prop. 5.6 / L-028; CORRECTED (C_f = Q̃_f not traced) |
| V23 | Theorem Z-5 | CONFIRMED |
| V24 | Corollary Z-6: rational flux suffices for the f² coefficients | CONFIRMED |
| V25 | "no charged spectrum at 0" is false for K, 𝒦 | CONFIRMED (for K: [P-sketch]) |
| V26 | (A-tor) used by no Target 1 result | CONFIRMED (grep) |
| V27 | §7.3 (ii) on CMP 109 p. 251 | CONFIRMED [V] |
| V28 | (ii), (iii) are not Target 1 inputs | CONFIRMED |
| V29 | (iii) a zero-cost convention, fallback §8.2(b) only | CONFIRMED; side remark on other extractions UNSUPPORTED (unused) |
| V30–V33 | sweep table items, chart independence, not-inputs list | CONFIRMED |

Totals: 33 items. 33 CONFIRMED in substance; 6 carry a minor CORRECTION (V3, V7, V9, V12, V17, V22); 1 unused side remark is UNSUPPORTED (V29). Nothing refuted.

## 9. Safe ledger status of R-030

The chain that Target 1 uses has no [I] item. Every Balaban property of Q̃ comes from the (0.4) image. (Gap_f), §5.5 (A-inf), and Lemma 4.2's analyticity are proved. (A-tor), (ii) and (iii) are outside the Target 1 chain. The remaining inputs are definitions, verified project inputs, or inputs that Target 1 already carries.

Safe text: "PROVED at fixed j relative to listed inputs [SOURCES_R030_RESIDUE + VERIFY; SOURCES_T2_G2 + VERIFY; SOURCES_L1_G + VERIFY]. Inputs: (Avg) the level-j average is the j-fold iterate of CMP 109 (0.4) [V, p. 253], the declaration R-029 carries; the definitions (Chart) (left chart, as on CMP 109 p. 252; any orthogonal chart gives the same ℓ) and (Bkg); SOURCES_T2_S123 Prop. 5.6 given (G_A) ⇔ L-028, already an input of R-028 (Route K, determinant class of 𝒦 at V_f); U1_VERIFY §2.4 (Route B); standard facts. Proved from the (0.4) image: locality, gauge covariance, Q̃D = D_cι_a^T, analyticity of Q̃ in the background, Q̃Q̃^T ≥ L^{−6j}, Q̃c = Λc, Ū^j(U_0^φ) = V_f. Per-cell Prop. 2.1 at V_f for rational f/2π, which fixes Φ_2 = b_F − b_c. §7.3 (ii) [V, CMP 109 p. 251] and (iii) (convention) are not Target 1 inputs. No uniformity in j."

Target 1 gains no new input.

## 10. Report

R-030 residue verified: 33 items, all CONFIRMED in substance, with minor CORRECTIONS and nothing refuted. I rederived the explicit right inverse (Q̃Q̃^T ≥ L^{−6j}), the averaged background = V_f (Landau-gauge check), and the ε-regularized fibre identity line by line. The corrections: Lip_Q needs 1/r_j²; the torus bound needs NΛ > 2R_j; ΔD = 0 needs a mixed derivative; (0.12) also needs (0.10); C_f = Q̃_f was not traced. Grep shows that no consumer uses the §5.5 torus part. Pages 251–254 were read as images. Safe status: PROVED at fixed j relative to listed inputs. Target 1 gains no new input.
