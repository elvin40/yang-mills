IDs follow IDS.md (new scheme). L-319 = IV L2; K-032 = (Vol); R-004 = C*Δ_kC lower bound. File-local labels of SOURCES_UK_HOLONOMY (H1–H6, Lemma UK, Lemma PB) and of SOURCES_U_ELL_FINAL(_VERIFY) ((U_ℓ), R1, §0 item 6) are kept.
# SOURCES_UK_HOLONOMY_VERIFY — adversarial check of SOURCES_UK_HOLONOMY.md and numerics/uk_twist.py

Date 2026-10-29. Verifier: Claude (Opus). Only this file written. No existing file edited, no PLAN.md line, no sync.sh.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were outside every grep.
Pages rendered (pdftoppm -r 150, fresh folder /tmp/ukv_RLv4, read as images, folder deleted at the end), journal pages:
- CMP 109: p. 265.
- CMP 99 reg.: pp. 77, 79, 82, 83, 88, 91, 92, 93, 94, 95, 96, 97, 98, 99.
- CMP 99 prop.: pp. 394, 395, 396, 407, 408, 409, 410, 411, 416.
- CMP 102 var.: pp. 281, 290, 299.
Text layer only: CMP 109 bibliography ("14. Balaban, T.: Spaces of regular gauge field configurations ... CMP 99, 75–102").
Numerics: numerics/uk_twist.py rerun (6 trials, 73 s). Extra checks with a scratch script that imports uk_twist.py (deleted at the end; its content is described in §3).

## Verdict

PASS WITH CORRECTIONS. The main claim holds on the pages. The construction of u_k uses weighted sup-norm bounds of G′, R, H′. Those bounds come from a parametrix built from inverses on single cubes plus a walk sum. Every gauge fixing of U_0 lives on one embedded cube. So no Polyakov loop of U_{k+1} enters, and the holonomy [R] item for u_k is discharged to [V + P], relative to Balaban's walk-sum details that were [R] already.
Corrections, none of which changes the verdict:
(a) Lemma PB: the stated constants do not match the proof. The proof gives 4d³α_0² and a_kδ². The statement has 8d³α_0² and 2a_kδ². The statement is weaker, so it stays true.
(b) "Without Q′, λ_min(Δ_U) is 0 or O(ℓ^{−2}) for every holonomy" is proved only for commuting constant twists. The needed conclusion (no ℓ-uniform bound without Q′) follows from that example alone.
(c) "Minimum over holonomies equals the trivial value a" holds for the noise-free runs only. In the noisy 4d row the π-twist value 1.0082 is below the trivial-row value 1.0086. Both exceed a = 1, and the noise differs between trials.
(d) The angle scan of §5 is not in uk_twist.py. I reproduced it separately.
(e) CMP 102 Thm 1: p. 299 says "positive definite" about ⟨A′, Δ_1A′⟩, with Δ_1 = Δ_π − Δ_π^{(2)} (CMP 102 (79), p. 290). It does not say it about Δ_a or G, and it gives no proof there. Holonomy-uniformity of this step is [P-sketch] (§2 item 12), not [V].
(f) Sect. F applies Theorem 4 to the pair (1, U″_0) on the whole torus, not on one cube. The background is 1, so no holonomy enters, but "every step lives on one cube" is not literal.
(g) The torus walk sum is not bounded "term by term" by the Z^d walk sum. The torus distance is at most the lifted distance, so the exponential factor goes the wrong way. The walk count and the M^{−1/2} factors transfer, and those are what the convergence uses.

## 1. Page checks

- H1 (CMP 109 p. 265). CONFIRMED. The text matches: U_k(V′V^{(k)}) = U′_k(V′)U_{k+1}; U′_k goes to the axial gauge Ax_k(T^{(k)}, U_{k+1}); then "the gauge transformation u_k constructed in [14]" gives the Landau gauge. [14] = CMP 99 reg. (bibliography, text layer). Note: p. 265 also says u_k "can be expressed ... by the formula (106) in [12]" (CMP 98).
- H2 (CMP 99 reg. p. 77). CONFIRMED. "we admit the case where some domains Ω_j are equal to T_η". With all Ω_j = T_η, (1.5) gives Λ_j = ∅ for j < k and Λ_k = Ω_k^{(k)}. (1.8) at j = k is |U(∂p) − 1| < α_0η²(L^kη)^{−2} = α_0L^{−2k}. This is the hypothesis of Lemma PB.
- H3 (p. 79). CONFIRMED. (1.19) fixes the fluctuation Ũ′^n relative to Ū_0^n, on contours Γ_{x_{n+1}, x_n}, x_n ∈ B(x_{n+1}). Each contour is in one block. Lemma 1 is per block and per block pair.
- H4 (pp. 82–83). CONFIRMED with a wording CORRECTION. (1.33)–(1.35) and Theorem 2 read as stated. The p. 83 sentence "we want to prove that the constants B_1, B_2(β_0) ... are absolute constants depending on d and L only" is an announced aim. The proved form is (1.67) on p. 88 ("an absolute constant C′_1, i.e. a constant depending on d and L only") and Prop. 5 on p. 94 ("c_2, c_3, depending on d and L only").
- Theorem 4 and (1.70) (p. 88). Now [V]; the derivation had [I] from the text layer. Theorem 4 is proved by induction in k. (1.70) bounds |u_1(x) − 1| for x ∈ B^j(Λ_j) by averaged transports along Γ_{x_{n+1}, x_n}, each in one block. u_1 itself comes from CMP 98 (64)–(87), (105), (106), which stays [R].
- H5 (pp. 91–94). CONFIRMED. (1.91) G′ = (Δ + Q′*aQ′)^{−1}, H′ = G′²Q′*(Q′G′²Q′*)^{−1}, "investigated in [4]". p. 92: "from Theorems 3.1, 3.2 of [4] it follows that |Rf| ≤ B′_0|f|", Neumann series (1.96). p. 93: G′ bounded from |·|_{(−2)} to |·| "One of the results of [4], Theorem 3.1". p. 94: contraction, Prop. 5. Every operator bound on these pages is a sup-norm bound. No L² spectral bound appears.
- Pages the derivation did not render: pp. 95–97 (end of the Theorem 4 proof; Sect. E, the linearizing map D′). Sect. E is a second contraction (1.117)–(1.125). Its inputs are H′ through (1.92) and CMP 98 (213), (214). Uniqueness uses CMP 98 Prop. 8 (p. 95). No global or winding input appears on these pages. CMP 98 stays [R].
- H6 (pp. 98–99). CONFIRMED with CORRECTION (f). The axial gauge "Ū_0^k(Γ_{y,x}) = 1 for x ∈ □̃^{(k)}, y a center of □̃^{(k)}" is on one cube. (1.129) bounds Ū′_0^k − 1 by |x − y|2L²α_0 inside □̃. Then U″_0 = U′_0 on □̃, 1 outside. Theorem 4 is applied to (1, U″_0) with domains {□_j} and Λ′_0 = T∖□_1, i.e. on the whole torus. The background 1 has trivial holonomy. U″_0 equals 1 off □̃. So no Polyakov loop of U_0 enters. The constants of that application rest on Theorems 3.1–3.2 at U = 1, which are cube-local too.
- CMP 99 prop. p. 394. CONFIRMED. Ω_0 is the union of big blocks within RM of Ω_1 (Dirichlet outside). With Ω_1 = T, Ω_0 = T and there is no boundary. (3.24): a_{j+1} = aa_j/(aL^{−2} + a_j), a_1 = a_0 = a. Fixed point a(1 − L^{−2}); a_j decreases to it; a_k ∈ [a(1 − L^{−2}), a] CONFIRMED.
- p. 395. CONFIRMED: "Assuming some regularity of the configuration U it can be easily shown that the operator Δ′_a is positive." No proof and no constant there. Gauge covariance (3.31)–(3.33) CONFIRMED.
- p. 396. (3.35): a gauge u on each cube □ of a fixed class (size O(1)MLʲη, "O(1) ... ≥ 10") with U^u = e^{iηA}, A small. Per cube. CONFIRMED.
- pp. 407–410. CONFIRMED. Cor. 3.5 (U = 1 results of [4] = CMP 96 for Dirichlet domains), Cor. 3.6 (Ω′_0 ⊂ □, gauge to near 1). p. 408: □̃^n has side (2 + 2n)MLʲη, so □̃^5 has side 12M. p. 409: "O(1) in (3.35) can be taken as equal to 12, thus the cube □̃^5 is contained in one of the cubes for which this condition holds". (3.87)–(3.90) parametrix, |R′| = O(M^{−1}). p. 410: "we will not repeat them here" (Thm 3.7). The global inverse exists because Δ′_aG′_0 = I − R′ with R′ small gives a right inverse, and the space is finite-dimensional. So invertibility needs no spectral input either [P].
- p. 411 (not rendered by the derivation). Thm 3.2: C_0 = Σh_□C_□h_□, (3.95)–(3.96), "by the same estimates as in [4], especially (2.83)–(2.85)". Same cube-local structure. Details [R].
- p. 416. Thm 3.3 by (3.107)–(3.108) walk expansion. Thm 3.11: G positive, reduced to G_□ > 0 on one cube via G_□(e^{iηA}) = G_□(1)(I − V(A)G_□(1))^{−1}. CONFIRMED. Note: Thm 3.11 is qualitative (no lower constant). It also uses Re⟨A, RA⟩ ≤ O(M^{−1})‖A‖², i.e. R small in L². That follows from the sup-norm and decay bounds by a Schur bound [P-sketch]; Balaban does not write it.

## 2. Grades of the claims in the brief

| # | claim | grade |
|---|---|---|
| 1 | u_k is CMP 99 reg. Thm 2 with Ω_j = T_η, U_0 = U_{k+1} (CMP 109 p. 265) | CONFIRMED |
| 2 | Thm 2 is proved by the contraction of Prop. 5 using sup-norm bounds on G′, R, H′ from CMP 99 prop. Thms 3.1, 3.2; no L² spectral bound | CONFIRMED. Add Sect. E (second contraction, pp. 95–97) and CMP 98 (213), (214), Prop. 8 [R] |
| 3 | the axial gauge acts on the fluctuation only; every contour lies in one block | CONFIRMED ((1.19), p. 79) |
| 4 | Thms 3.1–3.3, 3.11 via a parametrix from inverses on single cubes (side 12M) plus walk sums (pp. 407–410, 416) | CONFIRMED; Thm 3.2 on p. 411 also; walk-sum details [R] ("we will not repeat them here") |
| 5 | (3.35) by an axial gauge on one cube | CONFIRMED, with CORRECTION (f): the final step applies Theorem 4 to (1, U″_0) on the whole torus; no holonomy enters because the background is 1 |
| 6 | an embedded cube is contractible, so no Polyakov loop enters | CONFIRMED, if the cube embeds injectively (side < ℓ). Every loop used in (1.129), (3.35) and Cor. 3.6 is inside the cube |
| 7 | injective lift of torus walks to Z^d walks | CORRECTED (g). The lift exists and is unique once □_0 is lifted, if ℓ > 4M (cubes of 𝒟 have side 2M). It bounds the number of walks and carries the O(M^{−1/2})^{|ω|} factor. It does not bound each term, because d_torus ≤ d_lift. The resulting kernel decay is in torus distance. Convergence is unaffected |
| 8 | Lemma PB: λ_min(Δ_U + Q′*a_kQ′) ≥ (L^kη)^{−2}[min(2, a_k/2) − O(α_0²)] for any holonomy | CONFIRMED with CORRECTION (a). Steps checked: (1) dropping inter-block bonds is valid, Q′ is block-diagonal; (2) the loop axial(x) ∘ b ∘ axial(x+e_μ)^{−1} is a width-1 ladder of ≤ (d − μ)(n − 1) plaquettes inside B, so |U^u_b − 1| ≤ dα_0/n; (3) |U^u(Γ_{y,x}) − 1| ≤ c_0dα_0 and |R(g) − 1| ≤ 2|g − 1|, Cauchy–Schwarz correct; the form n^{−d}Σ R(U(Γ))^{−1}λ(x) of Q′ matches (3.88) (weights L^{−jd}); (4) ‖Dμ − ∂μ‖ ≤ 2d^{3/2}α_0(nη)^{−1}‖μ‖ gives the constant 4d³α_0², not 8d³; (5) Neumann gap 4sin²(π/2n) ≥ 4/n² correct; (6)–(7) give a_kδ², not 2a_kδ². The bound needs α_0 ≲ (c_0d)^{−1}. No step uses the holonomy or ℓ |
| 9 | without Q′, λ_min is 0 or O(ℓ^{−2}) | CORRECTED (b). Proved for commuting constant twists: there λ_min(Δ_U) = 0 for every θ (the Cartan-direction modes are uncharged). For non-commuting holonomies the background must carry curvature, and nothing is proved. Numerics: n²λ_min(Δ_U) ≤ 0.274 (d = 2, N = 24, n = 4) and up to 1.83 (d = 4, N = 6, n = 3, i.e. ℓ = 2). The needed conclusion (no ℓ-uniform positive bound without Q′) holds by the commuting example |
| 10 | numerics: non-commuting twists tested; minimum over holonomies = trivial value a | CONFIRMED for non-commuting; CORRECTED (c), (d) for the minimum. See §3 |
| 11 | side condition ℓ > 16M | CONFIRMED. □̃^5 = 12M (p. 408); the Sect. F cube □̃ for a (3.35) cube of side 12M has side 12M + 4R_1M_1 ≤ 16M if R_1M_1 ≤ M (p. 98 "M is a multiple of R_1M_1"). (Vol) K-032 ℓ > 22M implies it. The identification of CMP 99 prop.'s M with the CMP 109 M of (Vol) stays [I]. Note: this paper's □̃^5 is 12M; the project's "□̃^5 side 11M" (SOURCES_A15_BDRY_VERIFY) is the CMP 109 object, a different paper. I did not check whether the two agree. No effect here, since 16M < 22M |
| 12 | CMP 102 Thm 1 on a winding Ω_0: same mechanism | CORRECTED (e). p. 281: CONFIRMED that the reduction uses CMP 99 reg. Thm 2 ([6]). p. 299: the positive-definite form is ⟨A′, Δ_1A′⟩ on {Qδ A′ = 0, RD*δA′ = 0}, Δ_1 = Δ_π − Δ_π^{(2)} ((79), p. 290). The page gives no proof. A holonomy-uniform route exists: ‖G‖_{2→2} ≤ ‖G‖_{∞→∞} ≤ C(L^kη)² (Riesz–Thorin, G symmetric; sup-norm bound cube-local) gives a quantitative L² gap, which then absorbs the small Δ_π^{(2)}. Grade [P-sketch], not [V] |
| 13 | §1.2: ‖G′‖_{2→2} ≤ ‖G′‖_{∞→∞} ≤ C(d, L)(L^kη)² | CONFIRMED as [P-sketch]. Σ over torus y′ of e^{−δd_torus} ≤ Σ over Z^d, by nearest lifts |
| 14 | u_1 from CMP 98 is per block | upgraded [I] → [V] for the CMP 99 reg. side ((1.70), p. 88 image); CMP 98 itself stays [R] |

## 3. Numerics

Rerun of numerics/uk_twist.py with 6 trials: the five rows of §5 reproduce to all printed digits. Script check: the Laplacian is Σ_b|R(U_b)λ(x + e) − λ(x)|²; Q uses axial transports from the block corner; QQ = (a/n²)n^dQ^TQ matches (3.24) at η = 1. The background is a random gauge transform of constant links C_μ = exp(h_μ/N), so the Polyakov loop in direction μ is conjugate to exp(h_μ). Correct.
Non-commuting twists. Trials 0–2 are commuting (trivial, π about one axis, 2π/N). Trials 3–5 draw independent random axes per direction. For the d = 2, N = 24, n = 3 row, |[P_0, P_1]| = 1.877, 1.809, 0.018. So two of the three random trials are strongly non-commuting and one is nearly commuting. Non-commuting twists were tested.
Angle scan (not in uk_twist.py; reproduced with a scratch script, d = 2, N = 24, n = 4, θ ∈ {0, π/4, π/2, 3π/4, π}). Commuting (same axis): n²λ_min(Δ_U + aQ*Q) = a exactly for a = 1 and a = 0.1. Non-commuting (σ_3, σ_1 axes): 1.0000, 1.0158, 1.0630, 1.1415, 1.2510 (a = 1) and 0.1000, 0.1170, 0.1680, 0.2529, 0.3716 (a = 0.1). Matches the derivation (1.251, 0.372 at θ = π).
Adversarial minimization (scratch script). d = 2, N = 12, n = 3, no noise, Nelder–Mead over the 6 holonomy parameters, 6 random starts × 150 evaluations each. Minimum found = trivial value: a = 1 → 1.0000; a = 4 → 4.0000; a = 20 → 9.0000. For a = 20 the trivial value is 9, not a: the constant mode is no longer the minimizer. So "the minimum equals a" needs a small enough; "no holonomy lowers λ_min below the trivial value" held in every case tried. This is a local search on one small lattice, not a proof.
Regime. The 4d rows have max |U(∂p) − 1| = 0.118–0.284 with n = 2–3, so α_0 = n² max|U(∂p) − 1| is about 1. They are outside the small-α_0 regime of Lemma PB. They test the mechanism only, as the derivation says.

## 4. Safe status

Holonomy [R] item (SOURCES_U_ELL_FINAL_VERIFY §0 item 6). For u_k: discharged to [V + P] (verified with corrections). Residues, none about holonomy: Balaban's unrepeated walk-sum arguments for CMP 99 prop. Thms 3.1–3.3 (pp. 410–411, [R] for every domain under R1); CMP 98 (64)–(106), (213), (214), Prop. 8 for u_1 and Sect. E [R]; the M identification across papers [I]. For CMP 102 Thm 1 on a winding Ω_0: [P-sketch] through the Riesz–Thorin L² gap (row 12), not [V]. It is safe to strike the u_k part of the item from R1. The CMP 102 part should stay listed as [P-sketch].
L-319 / (U_ℓ): unchanged headline. [P relative to named [R] inputs]; status "returned", not proved. The named inputs lose the u_k holonomy item. They keep: CMP 99/102 constants "d and L only" for domains of any shape, including the CMP 99 prop. walk-sum details and the CMP 102 Thm 1 positivity (now [P-sketch] for holonomy); R-004; CMP 95 Prop. 1.2 and (1.67); CMP 89 Sect. 5; Lemma ADM; L-284 (c′).
Folders /tmp/ukv_RLv4 and /tmp/ukv_scr deleted at the end of the session.
