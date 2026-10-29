IDs follow IDS.md (new scheme). IV L2 = L-319; (Vol) = K-032; C*Δ_kC lower bound = R-004; regular-class identification = R-018; printed CMP 99 inputs of (C) = R-021. File-local labels of SOURCES_U_ELL_FINAL and SOURCES_U_ELL_FINAL_VERIFY ((U_ℓ), (D6), R1, F6, §0 item 6) are kept. New file-local labels here: H1–H6 (page facts), Lemma UK, Lemma PB.
# SOURCES_UK_HOLONOMY — is the Landau-gauge transformation u_k on the whole torus uniform in the Polyakov loop of U_{k+1}?

Date 2026-10-29. Author: Claude (Opus), unverified. Only this file and numerics/uk_twist.py written. No existing file edited, no PLAN.md line, no sync.sh.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were outside every grep.
Files read: OPUS_QUEUE.md ll. 1–15; SOURCES_U_ELL_FINAL_VERIFY (§0, §2); SOURCES_U_ELL_FINAL (§0–§2.3); IDS.md rows; text layers of CMP 99 reg., CMP 99 prop., CMP 102 var., CMP 109 (to locate pages only; every cited fact was then read on the image).
Pages rendered (pdftoppm -r 150, one fresh folder /tmp/ukh_qRsl, read as images, folder deleted at the end), journal pages:
- CMP 99 "Spaces of regular gauge field configurations" (balaban/1985_cmp99_regular_gauge_configurations.pdf, = [14] of CMP 109, = [6] of CMP 102): pp. 77, 79, 82, 83, 91, 92, 93, 94, 98, 99.
- CMP 99 "Propagators … background gauge field" (balaban/1985_cmp99_propagators_background_field.pdf, = [4] of CMP 99 reg., = [5] of CMP 102): pp. 394, 395, 396, 407, 408, 409, 410, 416.
- CMP 102 "Variational problem and background fields": pp. 279, 281, 299.
- CMP 109: p. 265.
Tags: [P] proved here; [P-sketch] structure complete, one step not written out; [V] read on a page image this session; [R] rests on a cited file or a source not re-read; [I] a reading not checked.

## 0. Result

1. Construction [V]. CMP 109 p. 265 builds u_k by CMP 99 reg. Theorem 2 with all Ω_j = T_η (allowed on p. 77) and U_0 = U_{k+1}. The proof of Theorem 2 (via Theorem 4 and Prop. 5; pp. 91–94 [V], the statement of Theorem 4 on p. 88 from the text layer [I]) is a contraction-mapping argument. Its only operator inputs are G′ = (Δ_{U_0} + Q′*aQ′)^{−1} and R, bounded in weighted sup norms by CMP 99 prop. Theorems 3.1, 3.2 (p. 93, (1.101); p. 92, (1.98)). No L² spectral bound appears on these pages. Balaban never gauge-fixes the background U_0; the axial gauge Ax_k(𝔅_k, U_0) acts on the fluctuation U′, and its contours lie in single blocks (p. 79, (1.19)).
2. Source of the bound [V]. CMP 99 prop. proves Theorem 3.1 by a parametrix built from cube-local inverses: G′_0 = Σ_□ h_□G′_□h_□, Δ′_aG′_0 = I − R′, |R′| = O(M^{−1}), G′ = G′_0Σ R′^n (pp. 408–409, (3.87)–(3.90)). Each G′_□ lives on Ω_0(□) ⊂ □̃^5, a cube of side 12ML^jη. There U_0 is gauge-equivalent to a near-1 field by (3.35), so G′_□ reduces to the U = 1 operator of CMP 96 (Cor. 3.5, 3.6, pp. 407–408). Positivity (Theorem 3.11, p. 416) is proved by the same localization. So the only global input is the walk sum, and every estimate is cube-local.
3. Holonomy [P]. An embedded cube is contractible in the torus. On it (3.35) holds for every regular U_0, whatever its Polyakov loops (CMP 99 reg. Sect. F, pp. 98–99, Prop. 6, uses an axial gauge on the cube only). So Theorems 3.1–3.3 and 3.11, CMP 99 reg. Theorem 2, and hence u_k, have constants that depend on d, L (and a, α_0, M) only. They do not depend on the holonomy. The only geometric condition is that □̃^5 (side 12M per scale) and the Sect. F cube □̃ (side ≤ 12M + 4R_1M_1 ≤ 16M) embed in the torus. (Vol) ℓ > 22M gives both [P, with the identification of M in §4 [I]].
4. Direct L² bound [P]. Lemma PB (§3): on any d-torus, for every U with |U(∂p) − 1| ≤ α_0η²(L^kη)^{−2} and the single-scale constraint Q′_k on all of T^{(k)}, λ_min(Δ_U + Q′*a_kQ′) ≥ (L^kη)^{−2}(min(2, a_k/2) − c_d(1 + a_k)α_0²). The constant has no holonomy, no ℓ. The proof uses one block at a time, so it is the "block averaging gives the bound" mechanism of the brief. Numerics agree (§5): the minimum over holonomies is the trivial-holonomy value a(L^kη)^{−2}.
5. CMP 102 Theorem 1 on a winding Ω_0 [V + P]. Its proof uses CMP 99 reg. Theorem 2 (p. 281) and Δ_a, G of CMP 99 prop. (p. 299: "positive definite"). Both are cube-local in the same way. A winding Ω_0 changes nothing, provided the cubes □̃^5 embed.
6. Status. The [R] item "holonomy-uniformity of u_k (and of CMP 102 Thm 1 on winding domains)" named in SOURCES_U_ELL_FINAL_VERIFY §0 item 6 is discharged to [V + P]. What remains is Balaban's own walk-expansion argument for Theorems 3.1–3.3 ("we will not repeat them here", p. 410), which was already [R] in R1 for every domain, and the per-block form of u_1 from CMP 98 [I]. Neither gains a holonomy dependence. L-319 / (U_ℓ): [P relative to named [R] inputs; unverified], with one [R] item fewer.

## 1. Task 1: how CMP 99 reg. builds u_k on a torus, and which bound it uses

### 1.1 Page facts [V, images this session]
- H1. CMP 109 p. 265: "we write U_k(V′V^{(k)}) = U′_k(V′)U_{k+1}, and we transform at first U′_k(V′) into the axial gauge Ax_k(T^{(k)}, U_{k+1}). This does not change the expressions in (2.1) because this gauge transformation is equal to 1 on T^{(k)}. Next we apply the gauge transformation u_k constructed in [14] and changing the axial gauge into the Landau gauge. We obtain U′_k^{u_k^{−1}} = exp iηH_k(B′)". So U_0 := U_{k+1} is the background, U′ is the fluctuation, and the domain is the whole torus.
- H2. CMP 99 reg. p. 77: sequence Ω_0 ⊃ … ⊃ Ω_k ⊂ T_η, (1.3)–(1.4); Λ_j = Ω_j^{(j)} \ Ω_{j+1}^{(j)}, Λ_k = Ω_k^{(k)} (1.5); "we admit the case where some domains Ω_j are equal to T_η". Regularity (1.7)–(1.9) is per plaquette and per bond, gauge invariant. With Ω_j = T_η for all j, Λ_j = ∅ for j < k and Λ_k = T^{(k)} (the unit lattice) [P from (1.5)].
- H3. CMP 99 reg. p. 79, (1.19): the axial gauge Ax_k(𝔅_k, U_0) is imposed on the fluctuation U′ relative to U_0, on the contours Γ_{x_{n+1}, x_n}, x_n ∈ B(x_{n+1}), each inside one block of scale n. Lemma 1 (1.24)–(1.25): |V′ − 1| < 4d²α_0 + α_1, proved per block B(y) and per block pair B(c_−) ∪ B(c_+). No condition is imposed on U_0 itself, and no contour leaves a block.
- H4. CMP 99 reg. p. 82, (1.33)–(1.38) and Theorem 2 (p. 83 [V]): assumptions U_0 ∈ 𝔘_k({Ω_j}, α_0) and "U_0 satisfies the regularity condition (3.35) in [4]"; U′U_0 ∈ 𝔘_k ∩ Ax_k(𝔅_k, U_0); |(U′U_0)^j − U_0^j| < α_1 on Λ_j. Output: Landau gauge R(U_0)D*_{U_0}A = 0 (1.38) and bounds (1.36), (1.39); p. 83: "the constants B_1, B_2(β_0) … are absolute constants depending on d and L only".
- H5. CMP 99 reg. pp. 91–94: (1.91) "H′ = G′²Q′*(Q′G′²Q′*)^{−1}, G′ = (Δ + Q′*aQ′)^{−1}. They were investigated in [4]"; (1.92) |H′X|, |∇H′X| ≤ B′_0[1, (L^jη)^{−1}]|X|. p. 92: "from Theorems 3.1, 3.2 of [4] it follows that |Rf| ≤ B′_0|f|"; Neumann series (1.96). p. 93: "One of the results of [4], Theorem 3.1, tells us that G′ is a bounded operator from a space with the norm |·|_{(−2)} into a space with the norm |·|"; (1.100)–(1.103). p. 94: contraction, Proposition 5 with c_2, c_3 "depending on d and L only".
- H6. CMP 99 reg. pp. 98–99 (Sect. F, Prop. 6): (3.35) is derived from (1.7)–(1.9). For one cube □ of size ML^jη, Balaban takes the larger cube □̃ (margin 2R_1M_1 per side), applies "the global axial gauge conditions on □̃^{(k)} … Ū_0^k(Γ_{y,x}) = 1 for x ∈ □̃^{(k)}, where y is a center of □̃^{(k)}", gets (1.129) |Ū_0^k(x, x′) − 1| < |x − y|2L²α_0, sets U″_0 = U′_0 on □̃ and 1 outside, and applies Theorem 4 to the pair (1, U″_0). The axial gauge lives on the cube □̃ only.

### 1.2 Answer to Task 1
The bound CMP 99 reg. uses is not an L² lower spectral bound. It is the set of weighted sup-norm bounds of CMP 99 prop. Theorem 3.1 (G′ = (Δ_{U_0} + Q′*aQ′)^{−1}, the Faddeev–Popov / Landau operator on Lie-algebra valued 0-forms) and Theorem 3.2 ((Q′G′²Q′*)^{−1}, hence R and H′) [V H5]. On the torus with Ω_j = T_η the operator has no Dirichlet boundary (Ω_0 = T, p. 394) and Q′ acts on every block of T^{(k)} [P from H2]. CMP 99 prop. p. 395 says only that "Assuming some regularity of the configuration U it can be easily shown that the operator Δ′_a is positive" [V]. A quantitative L² lower bound follows from Theorem 3.1: ‖G′‖_{2→2} ≤ ‖G′‖_{∞→∞} (G′ symmetric, Riesz–Thorin), and the sup-norm bound with exponential decay gives ‖G′‖_{∞→∞} ≤ C(d, L)(L^kη)² on a single scale [P-sketch: sum of (3.42) over y′ with the torus-to-Z^d lift of SOURCES_U_ELL_FINAL_VERIFY §3 (3)].

## 2. Task 2: does the bound depend on the holonomy?

### 2.1 Where a holonomy could enter
A regular U_0 on a torus of side ℓ (unit lattice) has |U_0(∂p) − 1| small on every plaquette, but its Polyakov loop P_μ(x) = U_0(straight loop through x in direction μ) can be any element of G. Example: constant links U_0 = exp(iθX/(ℓL^k)) in direction μ, X ∈ 𝔤 fixed. The plaquettes are 1 (commuting case), and P_μ = exp(iθX). For the bare covariant Laplacian Δ_{U_0} on adjoint 0-forms this matters. With trivial holonomy Δ_{U_0} has the dim 𝔤 constant zero modes. With twist θ the charged modes move to eigenvalues of order (θ/(ℓL^kη))² ≤ π²(ℓL^kη)^{−2}, which is small for large ℓ. The modes that commute with X stay at 0. So λ_min(Δ_{U_0}) is 0 or O(ℓ^{−2}) in units of (L^kη)^{−2}, for every holonomy, and it is not bounded below by a positive constant uniform in ℓ. [P]
A holonomy could enter Balaban's argument only through a step that (i) gauge-fixes U_0 along a non-contractible path, or (ii) uses a global spectral bound of an operator without the block term. Sect. 3 checks both.

### 2.2 Answer to Task 2
No step of the construction of u_k depends on the holonomy of U_0 [V + P]:
(i) No gauge fixing of U_0 along a winding path. Ax_k(𝔅_k, U_0) fixes U′ relative to U_0, on contours inside single blocks [V H3]. The only gauge fixing of U_0 itself is in Sect. F, on one cube □̃ [V H6].
(ii) No global spectral bound of Δ_{U_0} alone. The operator is always Δ_{U_0} + Q′*aQ′ (or Δ + DRD* + Q*aQ for gauge fields), and Balaban inverts it through cube-local inverses [V, §3.1].
The physical reason is that Q′ acts on every block. A mode with small ‖Dλ‖ is close to a covariantly constant field on each block. Its block averages are then of the same size as λ, so the term a|Q′λ|² is of order ‖λ‖². This holds on each block separately, and a block is contractible. Lemma PB (§3.2) writes this out.

## 3. Task 3: the lower bound comes from the block term and is holonomy-uniform

### 3.1 Lemma UK (Balaban's route) [V + P; R for the walk-sum argument Balaban does not repeat]
Statement. Let T_η be a d-torus whose unit-lattice side ℓ satisfies ℓ > 16M, with M the big-block size of CMP 99 prop. Let {Ω_j} be any admissible sequence in T_η (all Ω_j = T_η allowed; Ω_0 may wind). Let U_0 satisfy (1.7)–(1.9) of CMP 99 reg. with α_0 small. Then CMP 99 prop. Theorems 3.1–3.3 and 3.11, and CMP 99 reg. Theorem 2 and Prop. 5, hold for U_0 with constants that depend on d, L (and β_0, a) only. In particular they do not depend on any Polyakov loop of U_0 and do not depend on ℓ.
Proof.
(a) (3.35) holds on every cube of its class [V H6 + P]. Sect. F proves (3.35) for one cube □ by an axial gauge on the larger cube □̃ (side ≤ 12M + 4R_1M_1 ≤ 16M at its scale, using R_1M_1 ≤ M, p. 98 "M is a multiple of R_1M_1" [V]). If □̃ embeds in T_η, it is a contractible lattice cube. Then the axial gauge on □̃ exists, and (1.129) bounds |Ū_0^k(x, x′) − 1| by plaquette sums inside □̃ only. A Polyakov loop of U_0 is never a loop inside □̃. So (3.35) holds with the printed constant for every U_0 obeying (1.7)–(1.9).
(b) Local operators [V pp. 407–409]. G′_□, C_□, G_□ live on Ω_0(□) ⊂ □̃^5, side 12ML^jη; "the cube □̃^5 is contained in one of the cubes for which this condition [(3.35)] holds" (p. 409). On that cube U_0^u = e^{iηA} with A small, and Cor. 3.5–3.6 give Theorems 3.1–3.3 for G′_□ from the U = 1 results of CMP 96. Gauge covariance (3.33), (3.34) (p. 396) moves the bounds back to U_0. Every step lives on one embedded cube.
(c) Parametrix [V p. 409]: Δ′_aG′_0 = I − R′ with (3.89) |(K(h_□)G′_□h_□λ)(x)| ≤ O(M^{−1})e^{−δ_0(L^jη)^{−1}|y−y′|}|λ|. This is a bound on one cube □ and its support.
(d) Walk sum [V p. 410 (3.91)–(3.94); R for "the arguments are exactly the same as in proofs of Proposition 1.2 [3] and Proposition 2.2 [4], so we will not repeat them here"]. On T_η a walk ω = (□_0, …, □_n) with □_i ∩ □_{i+1} ≠ ∅ lifts to Z^d once □_0 is lifted, and the lift is injective (the projection recovers ω). So Σ_ω on the torus ≤ Σ_ω on Z^d, term by term [P; same lift as SOURCES_U_ELL_FINAL_VERIFY §3 (3)]. The O(M^{−1/2})^{|ω|} factor of (3.94) then sums with the Z^d constant.
(e) Positivity (Theorem 3.11, p. 416) reduces to G_□ > 0 on one cube [V]. Same embedding condition.
(f) CMP 99 reg. Theorem 2 uses only (b)–(e) through (1.92), (1.98), (1.101) [V H5], plus the averaging results of CMP 98 ([3]) for u_1 and the linearizing map (Prop. 10, (213)–(214) of [3]). Those are per-block formulas: p. 88 "From (105) and (106) we have for x ∈ B^j(Λ_j)" [text layer, I]. They do not use a winding path [R/I: CMP 98 pp. not re-read].
Embedding threshold: □̃^5 needs ℓ > 12M at the coarsest scale; □̃ of (a) needs ℓ > 16M. (Vol) K-032 gives ℓ > 22M. The identification of the M of CMP 99 prop. with the M of (Vol) and of R_1M_1 (CMP 99 reg.) with R_0M_0 (CMP 99 prop.) is [I]; with a factor 2 margin it is harmless. ∎

### 3.2 Lemma PB (direct L² bound; single scale, whole torus) [P]
Setting. T_η a d-torus, unit-lattice side ℓ ≥ 2, n = L^k, blocks B(y) of n^d sites, y ∈ T^{(k)}; they partition T_η. Inner product ⟨λ, μ⟩ = η^dΣ_x(λ(x), μ(x)) on 𝔤-valued 0-forms. Q′λ(y) = n^{−d}Σ_{x∈B(y)}R(U(Γ_{y,x}))^{−1}λ(x), each contour Γ_{y,x} inside B(y) with at most c_0n steps (c_0 = c_0(d, L)). ⟨λ, Q′*aQ′λ⟩ = a_k(nη)^{d−2}Σ_y|Q′λ(y)|² as in (3.24) (p. 394 [V]); a_k ∈ [a(1 − L^{−2}), a] by the recursion a_{j+1} = aa_j/(aL^{−2} + a_j), a_0 = a [P: a_j decreases to the fixed point a(1 − L^{−2})]. U is any configuration with |U(∂p) − 1| ≤ α_0n^{−2} for all p (this is (1.8) with j = k).
Claim. λ_min(Δ_U + Q′*a_kQ′) ≥ (nη)^{−2}[min(2, a_k/2) − 8d³α_0² − 2a_k(4c_0dα_0)²].
Proof.
1. Drop the bonds between blocks; they add ≥ 0 to ⟨λ, Δ_Uλ⟩. So it suffices to prove the bound on each block B with its interior bonds.
2. Gauge on B. Let Γ^{ax}_{y,x} be the axial path in B (coordinate 1 first, then 2, …, d). Set u(y) = 1, u(x) = U(Γ^{ax}_{y,x})^{−1}. Then U^u(Γ^{ax}_{y,x}) = 1. For an interior bond b = (x, x + e_μ), U^u_b is the holonomy of the loop Γ^{ax}_{y,x} ∘ b ∘ (Γ^{ax}_{y,x+e_μ})^{−1}. The two axial paths agree up to coordinate μ − 1 and run parallel at distance 1 in coordinates μ + 1, …, d. So the loop bounds a ladder of at most dn plaquettes inside B. Non-abelian Stokes (lasso decomposition, |Π g_i − 1| ≤ Σ|g_i − 1| for unitary g_i) gives |U^u_b − 1| ≤ dn·α_0n^{−2} = dα_0/n. B is a cube, so the ladder exists; no Polyakov loop enters.
3. In this gauge each transport of Q′ obeys |U^u(Γ_{y,x}) − 1| ≤ c_0n·dα_0/n = c_0dα_0, so |R(U^u(Γ_{y,x}))^{−1} − 1| ≤ 4c_0dα_0 =: δ (|R(g) − 1| ≤ 2|g − 1|, crude factor 2 more). With μ = R(u)λ, |B| = (nη)^d and Cauchy–Schwarz: |B|·|Q′λ(y) − avg_Bμ|² ≤ δ²‖μ‖²_B.
4. Derivative. D_{U^u}μ(b) = ∂μ(b) + η^{−1}(R(U^u_b) − 1)μ(x + e_μ), so ‖D_{U^u}μ − ∂μ‖_B ≤ 2d^{3/2}α_0(nη)^{−1}‖μ‖_B (each site heads ≤ d bonds). Hence ‖Dμ‖²_B ≥ ½‖∂μ‖²_B − 8d³α_0²(nη)^{−2}‖μ‖²_B.
5. Neumann Poincaré on a cube of n sites per side: ‖∂μ‖²_B ≥ 4η^{−2}sin²(π/2n)‖μ − avg μ‖²_B ≥ 4(nη)^{−2}‖μ − avg μ‖²_B (sin t ≥ 2t/π).
6. Block term: a_k(nη)^{−2}|B||Q′λ|² ≥ a_k(nη)^{−2}(½|B||avg μ|² − δ²‖μ‖²_B).
7. Add 4–6 and use ‖μ‖²_B = ‖μ − avg μ‖²_B + |B||avg μ|²: the block contributes ≥ (nη)^{−2}[min(2, a_k/2) − 8d³α_0² − a_kδ²]‖μ‖²_B. Gauge covariance ((3.31)–(3.32), p. 395 [V]) gives the same for λ. Sum over blocks. ∎
Remarks. (i) The constant contains d, a, L (through a_k, c_0) and α_0, and nothing else: no ℓ, no holonomy. (ii) The same proof with blocks B^j(y), y ∈ Λ_j, of several scales (the general {Ω_j} of (1.6)) gives min_j over scales, i.e. ≥ (L^kη)^{−2}[…] [P]. (iii) Without the block term the bound fails (§2.1): the lower bound comes from the block average, as the brief guessed. (iv) Lemma PB gives the L² statement only; Balaban's sup-norm and decay bounds are Lemma UK.

## 4. Task 4: does any step need small holonomy?

No. Each candidate step, with its grade:

| step | where | uses a winding path? | needs |
|---|---|---|---|
| Ax_k(𝔅_k, U_0) on the fluctuation | CMP 99 reg. p. 79 (1.19) [V] | no; contours Γ_{x_{n+1},x_n} inside one block | nothing |
| Lemma 1, |V′ − 1| bound | p. 79 (1.24)–(1.26) [V] | no; one block or one block pair | nothing |
| (3.35) for U_0 | Sect. F pp. 98–99 [V] | no; axial gauge on one cube □̃ | □̃ embeds (ℓ > 16M) |
| G′, R, H′ bounds | CMP 99 prop. Thms 3.1, 3.2 via (3.87)–(3.94) [V pages; R walk-sum details] | no; cube-local parametrix | □̃^5 embeds (ℓ > 12M); torus walk sum ≤ Z^d walk sum [P] |
| contraction for u′ (Prop. 5) | pp. 93–94 [V] | no; sup-norm estimates | the bounds above |
| u_1 from CMP 98 averages | p. 88 (1.70)–(1.74) [text layer, I]; CMP 98 (64)–(106) [R] | no, by the per-block form of (105)–(106) [I] | nothing beyond CMP 98 |
| Theorem 4 for (1, U″_0) in Sect. F | p. 99 (1.132)–(1.134) [V] | no; background 1, U″_0 = 1 off □̃ | nothing |
| CMP 102 Thm 1 reduction and minimum | CMP 102 pp. 281, 299 [V] | no; uses CMP 99 reg. Thm 2 and Δ_a, G of CMP 99 prop. | same as above, on any Ω_0 |

So the torus geometry enters only through cube embedding (side > 16M, implied by (Vol) ℓ > 22M), and the block averaging Q′ removes the small eigenvalues that a holonomy produces in Δ_{U_0} alone (§2.1). Neither part needs a small holonomy.
Note on R-004. The same question for C*Δ_kC with background U (R-004) concerns a different operator. CMP 95 (1.67) and CMP 96 (2.153) are its U = 1 inputs and are not used by u_k. If the background version of R-004 is proved by the same cube-local parametrix (CMP 99 prop. Thm 3.3 for G is, pp. 409, 416 [V]), it is holonomy-uniform for the same reason. I did not read the R-004 pages this session, so R-004 keeps its grade.

## 5. Numerics (numerics/uk_twist.py, Mac, about 2 min total) [P for the computed cases]

Model: adjoint SU(2) (SO(3) link matrices) on a d-torus of N^d sites, η = 1. Background U = random gauge transform of (constant link exp(h_μ/N) in direction μ, holonomy exp(h_μ) ∈ SO(3) arbitrary) × optional bondwise noise. Q = block average over n^d blocks with parallel transport along axial paths inside the block. a = 1 unless stated. Reported: n²·λ_min, i.e. λ_min in units of (nη)^{−2}.

| d | N | n | noise | n²λ_min(Δ_U), range over 6 holonomies | n²λ_min(Δ_U + aQ*Q), range | max |U(∂p) − 1| |
|---|---|---|---|---|---|---|
| 2 | 24 | 3 | 0 | [0.0000, 0.1055] | [1.0000, 1.0974] | 0.012 |
| 2 | 24 | 4 | 0.02 | [0.0123, 0.0935] | [1.0111, 1.0858] | 0.183 |
| 2 | 48 | 4 | 0 | [0.0000, 0.0397] | [1.0000, 1.0365] | 0.004 |
| 4 | 6 | 3 | 0 | [0.0000, 1.8319] | [1.0000, 2.6942] | 0.118 |
| 4 | 6 | 2 | 0.02 | [0.0093, 0.8792] | [1.0082, 1.8173] | 0.284 |

The six holonomies include trivial, maximal commuting twist (rotation by π in every direction), the smallest commuting twist 2π/N, and three random non-commuting ones of angle up to π.
Angle scan (d = 2, N = 24, n = 4, no noise, θ ∈ [0, π] in 9 steps): commuting twist (same axis in both directions): n²λ_min(Δ_U + aQ*Q) = a exactly for every θ, for a = 1 and a = 0.1. Non-commuting twist (axes σ_3 and σ_1): it rises from a at θ = 0 to 1.251 (a = 1) and 0.372 (a = 0.1) at θ = π. n²λ_min(Δ_U) alone is 0 (commuting) or ≤ 0.274 (non-commuting).
Reading. The minimum over holonomies is the trivial-holonomy value a(nη)^{−2}, attained by the uncharged constant mode. A holonomy never lowers λ_min(Δ_U + aQ*Q) below it in these runs. Without Q, λ_min is 0 or O(N^{−2}). Lemma PB's bound min(2, a/2) − O(α_0²) is below the computed values, as it must be. The 4d tori are small (N = 6); they test the mechanism, not asymptotics.

## 6. Grades and status

| claim | grade |
|---|---|
| u_k of CMP 109 p. 265 is CMP 99 reg. Thm 2 with Ω_j = T_η, U_0 = U_{k+1} | [V H1, H2, H4] |
| Thm 2 uses sup-norm bounds of G′, R, H′ (CMP 99 prop. Thms 3.1, 3.2), not an L² spectral bound | [V H5] |
| Balaban never gauge-fixes U_0 along a winding path; all contours in one block or one cube | [V H3, H6] |
| Thms 3.1–3.3, 3.11 are proved by a cube-local parametrix plus a walk sum | [V pp. 407–410, 416]; walk-sum details [R] (Balaban: "we will not repeat them here") |
| torus walk sum ≤ Z^d walk sum | [P] (injective lift) |
| (3.35) holds for every regular U_0 on every embedded cube, whatever the holonomy | [V H6 + P] |
| Lemma UK: constants of u_k depend on d, L (β_0, a) only; no holonomy, no ℓ; needs ℓ > 16M | [V + P; R for the walk-sum details; I for the identification of M, R_1M_1 across papers] |
| Lemma PB: λ_min(Δ_U + Q′*a_kQ′) ≥ (L^kη)^{−2}[min(2, a_k/2) − O(α_0²)] on any torus, any holonomy | [P] (axial contours for the gauge; Q′ contours only need length ≤ c_0n inside the block) |
| without Q′, λ_min(Δ_U) is 0 or O(ℓ^{−2}) | [P], numerics agree |
| CMP 102 Thm 1 on a winding Ω_0: same mechanism | [V pp. 279, 281, 299 + P] |
| u_1 from CMP 98 is per block | [I] (text layer of p. 88; CMP 98 not re-read) |
| numerics, 2d and 4d, uniform over holonomy | [P for the computed cases] |

Status of the [R] item of SOURCES_U_ELL_FINAL_VERIFY §0 item 6 ("holonomy-uniformity of the u_k Landau gauge and of CMP 102 Thm 1 on winding domains"): discharged to [V + P], with two residues that are not about holonomy: (1) Balaban's unrepeated walk-sum argument for Thms 3.1–3.3, already [R] under R1 for every domain; (2) the CMP 98 per-block formula for u_1 [I]. The holonomy plays no role in either.
Status of L-319 / (U_ℓ): [P relative to named [R] inputs; unverified]. The named inputs are as in SOURCES_U_ELL_FINAL_VERIFY's closing line, with the holonomy-uniformity item removed: CMP 99 and CMP 102 constants "d and L only" for domains of any shape (including the walk-sum details of CMP 99 prop. Sect. C); R-004; CMP 95 Prop. 1.2 and (1.67); CMP 89 Sect. 5; Lemma ADM; L-284 (c′). This file needs its own verifier before the item is struck from R1.
Pages folder /tmp/ukh_qRsl deleted at the end of the session.
