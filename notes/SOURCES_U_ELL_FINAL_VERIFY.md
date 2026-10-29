IDs follow IDS.md (new scheme). Theorem IV = L-196; IV L2 = L-319; Lemma T = L-284; (Vol) = K-032; Lemma T cut-off convention = K-045. File-local labels of SOURCES_U_ELL, SOURCES_U_ELL_VERIFY and SOURCES_U_ELL_FINAL ((U_ℓ), (U-W)′, (D1)–(D6), (KE′-T), (KE′-T*), R1–R3, F1–F13, K1–K12, Lemma D6, Lemma KE) are kept.
# SOURCES_U_ELL_FINAL_VERIFY — adversarial verification of SOURCES_U_ELL_FINAL

Date 2026-10-29. Verifier: Claude (Opus). Only this file written. No existing file edited, no PLAN.md line, no sync.sh.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were outside every grep.
Scope split: SOURCES_UW_WRAP and the general quality of the three sweeps belong to the other verifier. This file checks only the five items of the brief.
Files read: OPUS_QUEUE.md ll. 1–15; SOURCES_U_ELL_FINAL (full); SOURCES_U_ELL_VERIFY §8.3 and the W4/W5 rows; SOURCES_UW_SWEEP_109_116, _119, _122 (full); SOURCES_QE_INV (full); SOURCES_C_CONDITION §4; SOURCES_LEMMA_T_REPAIR (full); SOURCES_LEMMA_T_REPAIR_VERIFY (verdict lines); SOURCES_ORDER_CANON N-060 (C_H, δ_H, c_T entries); IDS.md rows L-284, L-319, K-032, K-045.
Pages rendered (pdftoppm -r 150, one fresh folder /tmp/uef_LE9J, read as images, folder deleted at the end), journal pages:
- CMP 96: 224, 228, 232, 233, 234, 235, 236, 237, 238, 239, 240, 242, 243, 244, 245, 246, 247, 248, 249, 250.
- CMP 95: 29 ((1.65)–(1.67)).
- CMP 109: 252, 257, 258, 262, 265, 275, 290.
- CMP 116: 3. CMP 119: 246, 248, 283.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED. Tags as in the target file: [V] page image this session, [P] proved, [P-sketch], [R], [I].

## 0. Verdict

PASS WITH CORRECTIONS. No claim of SOURCES_U_ELL_FINAL is refuted. The three main conclusions hold: (D1)–(D5) map onto the sweep rows; (D6) holds on every Balaban page I checked; (KE′-T*) holds with threshold 8M.
Corrections:
1. §1.4 R2 is CORRECTED. The lower bound (2.153) of CMP 96 is not block-local alone. It is the product of two inputs: (2.118) = CMP 95 (1.67), a Fourier-symbol bound with γ_0 "dependent on d only", and Lemma 2.4 (2.128), which is block-local. (1.67) also holds on every torus, because the symbol bound is pointwise in p′ [P]. The conclusion of R2 stands; its proof gains one step.
2. §1.3 mapping: two cells file rows under the wrong class (122 row 25 under D3; 109/116 row 23 and 119 H8, H12 under D4). Coverage is not affected.
3. §3.4 grades "no circularity" as [P], but it rests on the M-freedom of C_H, δ_H, which §3.2 grades [P-sketch]. I complete the M-freedom in §5.2 below, relative to [3] = CMP 89 Sect. 5 [R]. With that, "no circularity" is [P relative to R].
4. §2.3 (a) says "a cube of fixed size (□̃, □̃², □^{~n−j})". □^{~n−j} (CMP 119 p. 283) has side (1 + 2(n − j))M at scale j, which grows with n − j. In scale-n units it is ≤ M for L ≥ 3. It still embeds under (Vol), so the argument stands; the word "fixed" is wrong.
5. The 8M threshold is an inference. CMP 96 p. 238 prints "4^d" for □̃ and "6^d" for □̃², and only "next a cube □̃³" for the third. 8^d is the pattern, consistent with p. 235 "□̃ … of the size 4M" [V].
6. R1 should name one more [R] item: the Landau-gauge transformation u_k on the whole T^{(k)} (CMP 109 p. 265, constructed in [14] = CMP 99 reg.) with a background U_{k+1} of arbitrary Polyakov loop. Its bound needs a lower spectral bound of a block-constrained covariant operator that is uniform in the torus holonomy of U_{k+1}. This is the (D6) question on the CMP 99/102 side. The target file covers it only under the general phrase "R for CMP 99/102".

## 1. Item (1): (D1)–(D5) mapped onto the sweep rows (five spot checks)

| # | mapping in FINAL §1.3 | check against the sweep file | grade |
|---|---|---|---|
| S1 | (D1) ↔ 119 H1, H3, H9, H14, H15, H16 | H1 tiling (condition on ℓ), H3/H14/H15/H16 volume outputs, H9 boundary layer volume. All D1 in the 119 sweep's own class column. | CONFIRMED |
| S2 | (D3) ↔ 109/116 rows 21, 22 | Row 21: "D3 (spectrum of an operator on all of T_1^{(k)})", γ_1 by Schur, lower end [R] to [13]. Row 22: "D3 candidate", ‖C^{(k)}(Z_0)‖ [R] to [13]. The FINAL's gloss matches. | CONFIRMED |
| S3 | (D3) ↔ 122 rows 14, 23, 25 | Rows 14, 23 are the two Poincaré bounds (on 100M and 100M(L+1)N^{β_0}R_j cubes): D3. Row 25 is the large-field induction (1.80)–(1.88): its torus issue is a count of levels and volumes (D1/D2 type), not a spectral constant. Coverage is not affected, because row 25 is closed by SOURCES_UW_WRAP either way. | CORRECTED (misfiled, harmless) |
| S4 | (D4) ↔ 109/116 rows 4, 11, 12, 13, 23; 119 H4, H6, H8, H10, H12 | Rows 4, 11, 13 and H4, H6, H10 are D4 (global minimizers / non-local operators). Row 12 is a Ch3 constant: D4 by the "unless" clause. Row 23 and H12 are global divisors (W3); H8 is a D2/D3 candidate. They are covered in their own rows, so nothing is lost. | CORRECTED (misfiled, harmless) |
| S5 | (D5) ↔ 109/116 "no explicit row; Ch2 lift" | The 109/116 sweep header lists "(D1)–(D4)" only [read]. So (D5) for CMP 109/116 is an argument, not a sweep result. The Ch2 lift (injective lift of an anchored connected object from T to Z⁴) covers every anchored count; an unanchored count is D1 or D2, and those were swept. The FINAL states this grade ([P], not [V]) in §6. | CONFIRMED |
Also checked: §1.1 page coverage. (U-W)′ lists CMP 109 Sects. 3–5, CMP 116, CMP 122 I Sect. 1 and CMP 122 II pp. 358–378; the sweeps cover CMP 109 pp. 249–301, CMP 116 pp. 1–22, CMP 122 I pp. 175–202, CMP 122 II pp. 355–392. CONFIRMED. §1.2 "same test": the sweeps test "enters a condition that fixes one of Balaban's constants"; (U-W)′ tests "closes a canon condition Φ_i". On Balaban's pages these coincide, because every canon condition that cites these papers is one of Balaban's printed conditions. CONFIRMED.
Grade of Task 1 as a whole: CONFIRMED at the grade the FINAL gives it ([V files], sweeps unverified).

## 2. Item (2): (D6) on Balaban's pages and on the project side

### 2.1 Page facts F1–F13 (images this session)
| fact | page | check | grade |
|---|---|---|---|
| F1 | 109 p. 252 | G(y, x): shortest contours from y to x ∈ B(y), |n_μ| ≤ L − 1/2, built by permutations of axial legs. They lie in B(y). | CONFIRMED |
| F3 | 109 p. 257 | Localization domain = union of a connected finite family of cubes from π_j; d_j(X) = shortest tree graph length / M. □̃^n has size (1 + 2n)M here (CMP 109 convention, not the CMP 96 one). No winding clause. | CONFIRMED |
| F4 | 109 p. 258 | (0.27): "If its localization domain X is large, for example it is not contained in any cube □̃ … |E^{(j)}(X, U_k)| ≤ E_0exp(−κ(L^jη)^{−1})exp(−½κd_j(X))"; local coordinates only if X ⊂ □̃. | CONFIRMED |
| F5 | 109 p. 262 | (i) gauge transformation on each cube □ ⊂ X of size O(1)LM; (iv) "We consider X as Ω_0 … {Ω_n} … (1.3)–(1.6) [14] … functions U_n(V) in the axial gauges"; (1.16) on X̃^{−2}. All bounds are per plaquette or per bond and gauge invariant. | CONFIRMED |
| F6 | 109 p. 265 | Axial gauge Ax_k(T^{(k)}, U_{k+1}), then u_k of [14] to the Landau gauge; U′_k^{u_k^{−1}} = exp iηH_k(B′), "regular and of the same order as B′". | CONFIRMED; see §2.3 note |
| F7 | 109 p. 275 | (3.26) "same generalized axial gauge for M′(U)"; V(b) = Ū^{k+1}(Γ_{y_0,b_−} ∪ b ∪ Γ_{b_+,y_0}) for b ∈ □̃⁴ ∩ T^{(k+1)}. The page says "e.g. in the simplest situation"; the general case is the contour variables of [12] (77). The FINAL drops the "e.g." | CONFIRMED (quote slightly shortened) |
| F8 | 109 p. 290 | "crucial step is an extension of the sum over localization domains X … X ⊂ □̃² … exponentially small in L^jη, either because the domains are large, or because their distances to □ are large"; (4.36). | CONFIRMED |
| F9 | 116 p. 3 | (1.6)–(1.7): simple localization domains of M_1-cubes; each factor depends on the configuration on X̃_j^5. | CONFIRMED |
| F10 | 119 p. 246 | "In blocks of B(P_1^1) we introduce the axial gauge fixing expression". U_{1,□′}(V) = U(B_1(□′^{~4}), …): a minimal configuration on a determining set based on one cube. | CONFIRMED |
| F11 | 119 p. 248 | (1.12) critical point on Ω_1 with axial gauge conditions U(y, x) = 1, x ∈ B(y), y ∈ Ω_1^{(1)}; "By Theorem 1 [15] there exists exactly one critical point"; U′ = (UU_{1,□′}^{−1})(U_{1,□′}U_1^{−1}). | CONFIRMED |
| F13 | 119 p. 283 | "We divide the localization domains X into two classes: X ⊂ □^{~n−j}, or X ∩ (□^{~n−j})^c ≠ ∅"; "axial gauge for the field M^j(U_k) on □_0, considering □_0 as one block with center at z". | CONFIRMED |
F2 (109 p. 253), F12 (119 pp. 250–251) and the 119 p. 280 part of F13 were not re-rendered. They agree with the sweep rows (119 H6, H19). Not graded here.

### 2.2 Lemma D6
(a) Split by cube containment, never by winding. CONFIRMED on F4, F8, F13. The topological step is right: an embedded cube is contractible in T, so every loop in a subset of it is contractible; a winding X is therefore in no embedded cube and falls in the decay class [P]. The embeddings needed are □̃² (5M at scale j, CMP 109) and □^{~n−j}; both follow from (Vol) ℓ > 22M per scale. CORRECTED only in wording: □^{~n−j} is not of fixed size (see §0 item 4). "The only case splits" across all pages rests on the sweeps (unverified), as the FINAL says.
(b) Every axial contour lies in one block or one cube. CONFIRMED on F1, F7, F10, F11, F13. For F5 (iv) and F6 the contour convention of [14] is [R], as the FINAL says.
(c) No bound uses a winding holonomy. CONFIRMED on the pages: every bound I read is per bond, per plaquette, per cube, or per polymer, and all are gauge invariant. Note on F6: the fluctuation U′_k on all of T^{(k)} is written exp iηH_k(B′) after u_k. This is a bondwise logarithm of a bondwise-small field, not a trivialization of the background, so it carries no holonomy. But the existence and bound of u_k on the whole torus need a lower spectral bound of a block-constrained covariant operator with background U_{k+1}, and U_{k+1} may have any Polyakov loop (Remark of FINAL §2.3). If that bound is proved by cube-local Poincaré inequalities (as R-004 "local γ_0" suggests), it is holonomy-uniform, because U_{k+1} is gauge-equivalent to a near-1 field on every embedded cube. This is not on any page I read. So (c) is [V on pages + R for CMP 99 reg. u_k and CMP 102 Thm 1], and R1 should name this question explicitly (§0 item 6).
Remark (abelian constant links): CONFIRMED [P]. SOURCES_C_CONDITION 4.1 writes the exponent as θσ_3/(N_T/η) (per bond); the FINAL writes θσ_3/N_T with N_T the bond count. Same object.

### 2.3 Project side: QE_INV, C_CONDITION §4.1–4.2, L-284
What the files say [read]:
- QE_INV §3.4 and §4.3(b): torus-winding loops λ_b are put in the far term with the trivial bound |Ad U(λ_b) − 1| ≤ 2. This uses unitarity only, not a holonomy bound, and needs side > 2D.
- QE_INV 5.3 [I-c] claims "torus-winding paths do not occur here". SOURCES_C_CONDITION 4.2 refutes this: the axial path rule has a seam; across it the thin loop of 5.3 winds once, its holonomy is a Polyakov loop, and the energy defect grows like N = L^k for any fixed side.
- L-284 (Lemma T, repaired (c′), K-045): the cut-off χ̃_y(b) = Σψ_{y′}(b_−)χ(d_*(y′, y)/D) vanishes for d(b, y) ≥ D⁺ = D + c_adj (S1). By (T2′) N_T > c̃_T, the box B_y with its Q-legs embeds, the path rule is single-valued on it, and every loop with a nonzero coefficient lies in an embedded box (a′). The removed part enters only as −Q(1)((1 − χ̃)E), at U = 1, so it needs (KE′) and no holonomy (b′). The energy step (c′) runs only on supp χ̃.
Check: CONFIRMED. After L-284 the project uses no winding holonomy and no trivial-bound far term in the energy. The far term of QE_INV 4.3(b) is gone (the far set is empty under the cut-off). The FINAL's §2.4 summary is accurate. The c′ repair grade is unchanged: verified with corrections, G3 contour one reader [R].
One addition: L-284 (b′) uses Q(1)E = I on the torus and the decay of E in the torus metric. These are exactly (KE′) on the torus, so §2.3 depends on §3 (the FINAL says this).

## 3. Item (3): (KE′-T*) — locality of CMP 96 Sect. 2

### 3.1 Page facts K1–K12
| fact | check | grade |
|---|---|---|
| K1 p. 224 | (2.1)–(2.4); "we admit the case when some domains Ω_j are equal to T_η". | CONFIRMED |
| K2 p. 228 | (2.35) A = HB = GQ*(QGQ*)^{−1}B; G(Ω) with Dirichlet data; "We choose Ω = T_η for simplicity of notation"; "minor and obvious changes". | CONFIRMED |
| K3 p. 232 | (2.50) walk expansion over ω = (□_0, …, □_n), □_i ∩ □_{i+1} ≠ ∅; (2.51) |(Rλ)(x)| ≤ O(M^{−1})e^{−δ_0d(x,y)}|λ|. | CONFIRMED |
| K4 p. 233 | (2.56)–(2.59) as quoted; c_0(α) < 4/(αδ_0). Note: Balaban writes the Z^d sums directly, with no remark on the torus. The torus-to-Z^d step is the FINAL's own lift (Lemma KE (3)), not Balaban's. | CONFIRMED with this note |
| K5 p. 234 | Lemma 2.1, c_1(α) = 12c_0^d(½α), (2.60)–(2.63); Prop. 2.2 "M sufficiently large"; (2.66) rate ½δ_0, M-free. | CONFIRMED |
| K6 pp. 235–237 | □̃ "of the size 4M"; (2.74) G′_j "on the whole lattice L^{−j}Z^d"; (2.75); (2.76) "γ_0 is a positive, absolute constant"; (2.79) δ_1 "depending on δ_0 and the bound γ_0"; (2.83) O(1)e^{−δ_0M/8}. | CONFIRMED |
| K7 p. 238 | □̃: 4^d big blocks; □̃²: 6^d; "next a cube □̃³ … identify it with a torus, denoted by T_□". The count 8^d for □̃³ is not printed. | CONFIRMED; 8^d is inferred (§0 item 5) |
| K8 p. 239 | (2.89)–(2.93); "otherwise the operator G_□ is simply equal to the operator G_j on the torus T_□ … investigated in paper [4]". | CONFIRMED |
| K9 pp. 242–246 | (2.110) γ_0, γ_1 "dependent on d and L only" [V p. 242]; (2.123), (2.127) [V]; γ″_0 "dependent on d and L only" [V p. 246]; Prop. 2.5 "on the torus T_□ (or on the whole lattice ξZ^d) … δ_2 … depends on d and L only" [V]. | CONFIRMED |
| K10 p. 247 | (2.133)–(2.141); Prop. 2.6 "δ_3 depending on d and L only", O(1) "depending on d and L only". | CONFIRMED |
| K11 p. 248 | "this theorem holds for the operators G(Ω) with Dirichlet boundary conditions on Ω^c, Ω ⊃ Ω_1"; (2.143); (2.147) γ_0 "depending on d and L only". | CONFIRMED |
| K12 p. 249 | (2.148) δ_4; Prop. 2.7 (2.149) rate ½δ_4; Cor. 2.8 (2.150), "(1.151)" (misprint for (2.151)), rate δ_5; no proof printed. | CONFIRMED |

### 3.2 Lemma KE
(1) Fixed tori and Z^d operators. CONFIRMED. G_□ lives on T_□ = □̃³; G′_j on L^{−j}Z^d; the constants that Balaban labels "d and L only" are labelled so on the page [V]. Prop. 2.5 holds on T_□ and on ξZ^d with the same δ_2, so it cannot depend on the size of T_□.
(2) Gluing errors are bounds on one pair of overlapping cubes. CONFIRMED [V (2.83)–(2.85), (2.134)–(2.135)].
(3) Torus sums ≤ Z^d sums. CONFIRMED [P]. d is an infimum over admissible contours (2.46). Lift a contour of T to Z^d from a fixed lift of y. Admissibility is local, so the lift is admissible for the periodically lifted geometry, with the same length, and (2.48) applies to it. The map y′ ↦ (endpoint of the lift of a shortest contour) is injective, since projection returns y′. So Σ_{y′∈T}f(d(y, y′)) ≤ Σ_{z∈Z^d}f(lifted distance), and Balaban's (2.58) bound applies.
(4) Geometry gives only lower bounds on the side. CONFIRMED [P]. One addition: the side must be a multiple of the big-block grid at each scale, so that □̃³ is a union of whole blocks (W10, Lemma ADM).
Prop. 2.6, 2.7 side-free: CONFIRMED [V statement + P]; Neumann series with ratio O(M^{−1})c_1 or O(1)e^{−δ_0M/8}c_1 < 1.

### 3.3 Threshold and circularity
- Threshold. (KE′-T) of SOURCES_U_ELL_VERIFY asked uniformity over tori of side ≥ c_T. That is the wrong form: Balaban's proof needs the embedding of □̃³ (side 8M per scale), and nothing guarantees c_T ≥ 8M. (KE′-T*) with "side > 8M per scale" is the right statement. (Vol) gives side ≥ ℓ > 22M at every scale of every step (SOURCES_C_CONDITION 4.4: N_k = ℓL^{K−k} ≥ ℓ in units of the coarsest block of step k, and finer units give larger numbers). CONFIRMED.
- Circularity. The canon (SOURCES_ORDER_CANON N-060) fixes C_H, δ_H as (d, L) numbers, then c_tr, D_0 (D̃_0), c_T (c̃_T), and later (N-310) M ≥ c̃_T/22. This order is consistent only if C_H, δ_H do not depend on M. If, for example, δ_H decreased with M, then c̃_T would grow with M and "M ≥ c̃_T(M)/22" could fail for every M. So the FINAL's "no loop" [P] in §3.4 rests on its [P-sketch] item "M-freedom of δ_4, δ_5". CORRECTED in grade; the M-freedom is completed in §5.2, so the claim stands as [P relative to R].
- (KE′-T*) as a whole: CONFIRMED [V + P], with the 8^d inference and with §5.

## 4. Item (4): CMP 96 (2.153), (2.157) — lower spectral bound of C*Δ_kC

Page facts [V]: p. 249, after (2.152) (printed "(1.152)") "on the whole lattice T^{(k)}, or on a subset Λ ⊂ T^{(k)}. Using (2.118) and (2.128) we get (2.153) ⟨B, Δ_kB⟩ ≥ (γ_0/12d²)L^{−d−1}‖B‖² … on the subspace of B satisfying: QB = 0, B(Γ_{y,x}) = 0 for x ∈ B(y)". p. 250: (2.156) C^{(k)}_Λ = C(C*Δ_kC)^{−1}C*; (2.157) ⟨B′, C*Δ_kCB′⟩ ≥ (γ_0/12d²)L^{−d−1}‖CB′‖² ≥ γ′_0‖B′‖², γ′_0 = (γ_0/12d²)L^{−d−1}. The FINAL quotes these correctly.
The proof has two inputs, not one:
- (2.118) p. 243 [V]: γ_0‖∂_1B‖² ≤ ⟨B, Δ_jB⟩ ≤ γ_1‖∂_1B‖², "given by (1.66) and satisfying (1.67)". CMP 95 p. 29 [V]: (1.66) writes ⟨B, Δ_kB⟩ as a momentum integral of a symbol times |(∂_1B)^~(p′)|²; "The function under the integral is bounded from below and above by positive constants γ_0, γ_1 dependent on d only", hence (1.67). This is a translation-invariant symbol bound, not a block-local one. On a torus whose side is a multiple of L^k, the same formula holds with p′ restricted to the torus momenta, and a pointwise bound on the symbol gives the same γ_0, γ_1 [P]. (At p′ = 0, (∂_1B)^~(0) = 0, so that mode contributes 0 on both sides.)
- (2.128), Lemma 2.4 p. 245 [V]: stated for Λ ⊂ Z^d. Its proof sums (2.123) (bonds in one block B(y), axial contours Γ_{y,x} inside B(y)) and (2.127) (one block pair B(c_−), B(c_+), a (d − 1)-dimensional face operator) [V pp. 244–245]. Each inequality involves one block or one block pair, so the sum over all blocks of a torus gives the same constant [P].
Grade of FINAL §1.4 R2: CORRECTED. The claim "block-local" is true for (2.128) only. (2.118) is torus-uniform for a different reason (pointwise Fourier symbol). The conclusion, an ℓ-free lower bound γ′_0 on the constrained subspace at U = 1 on the whole torus, is CONFIRMED [V + P]. The homonym γ_0 here is CMP 95 (1.67)'s γ_0 (d only), not the γ_0 of CMP 96 (2.76) or (2.147). With background U_{k+1} the bound is R-004 [R], as the FINAL says.

## 5. Item (5): the two [P-sketch] items, completed

### 5.1 Cor. 2.8 composition [P for the rate and side-freedom; P-sketch for one normalization]
By (2.35), (2.69) and (2.150): H(b, c) = Σ_{b′∈𝔅}(L^{j′}η)^d(GQ*)(b, b′)(QGQ*)^{−1}(b′, c), j′ = j(b′).
- Factor 1. Q*e_{b′} is a fine source supported in the corridor Δ(b′). (2.136) gives (L^{j′}η)^d|(GQ*)(b, b′)| ≤ O(1)(L^jη)²e^{−δ_3d(b,b′)}, with ∇G in place of G giving L^jη, and (2.137) giving (L^jη)^{1−α}(‖ζ‖_α + |ζ|). [P-sketch: the normalization of Q*e_{b′} under (2.69) is not written out; it changes only a power of L^{j′}η, fixed by the printed form (1.151).]
- Factor 2. (2.149): |(QGQ*)^{−1}(b′, c)| ≤ O(1)(L^{j′}η)^{−2}(L^{j(c)}η)^{−d}e^{−½δ_4d(b′,c)} [V].
- Product. The scale ratio (L^{j−j′})² ≤ L^{2|j−j′|} is absorbed by e^{−¼δ_3d(b,b′)} through (2.60), as Balaban does in (2.68): it needs ¼δ_3RM ≥ 2 log L, a (d, L) lower bound on RM. The sum over b′ is bounded by (2.61)–(2.63) with α = ½: Σ_{b′}e^{−¾δ_3d(b,b′)}e^{−½δ_4d(b′,c)} ≤ c_1(½)e^{−δ_5d(b,c)}, δ_5 := ½min(¾δ_3, ½δ_4).
- Result. |H|, |∇H|, ‖ζ∇H‖_α ≤ O(1)[1, (L^jη)^{−1}, (L^jη)^{−1−α}(‖ζ‖_α + |ζ|)](L^{j(c)}η)^{−d}e^{−δ_5d(b,c)}, which is (1.151) with c_− = c. The constant is C_H = O(1)_{2.136}·O(1)_{2.149}·L²·c_1(½). Every factor is side-free by Lemma KE (1)–(3). [P]
This is the standard composition. I see no step where the torus side enters.

### 5.2 δ_4, δ_5 (and C_H) free of M [P relative to [3] = CMP 89 Sect. 5, R]
- δ_3 and the O(1) of (2.136) are printed "depending on d and L only" [V p. 247]. γ_0 of (2.147) is printed "depending on d and L only" [V p. 248].
- δ_4 ((2.148)). The page says C^ξ_□ has "the corresponding bounds and a decay rate δ_4", obtained as for C^ξ_□ on p. 237, where the rate δ_1 depends "on δ_0 and the bound γ_0" [V]. The method named on p. 237 is conjugation by e^{⟨a,·⟩}: the conjugated form differs from the original by O(|a|) in norm, with a constant built from the decay rate δ_3 and the Schur sum c_1. So for |a| ≤ a_0(γ_0, δ_3, c_1) the conjugated operator stays ≥ ½γ_0, and its inverse decays at rate a_0. Nothing here depends on the size of □ (it only restricts the operator) or on M. So δ_4 = δ_4(d, L) [P given the p. 237 method; its full proof is [3] Sect. 5, R].
- (2.149). The Neumann series (2.86) for QGQ* has R-kernel ≤ O(M^{−1})e^{−δ_4d}·(scale factors) (the analogue of (2.85), p. 249 "we have (2.85)"). By (2.63) with α = ½ the sum Σ_n C R^n keeps the rate ½δ_4 and has prefactor O(1)Σ_n(O(M^{−1})c_1(½))^n ≤ 2·O(1) for M ≥ M_0(d, L). M enters only through the smallness O(M^{−1}) and e^{−δ_0M/8}, which improve as M grows.
- δ_5 = ½min(¾δ_3, ½δ_4) and C_H (§5.1) are then (d, L) numbers, valid for all M ≥ M_0(d, L) and RM above a (d, L) threshold ((2.59) and ¼δ_3RM ≥ 2 log L).
Grade: the FINAL's two [P-sketch] items become [P relative to CMP 89 Sect. 5 (R) and CMP 95 Prop. 1.2 (R)], with one [P-sketch] left: the Q* normalization power in §5.1, which does not involve the side or M.
Consequence: the canon order of N-060 (C_H, δ_H before M) is justified, and §3.4 "no circularity" holds [P relative to R].

## 6. Grade table

| claim of SOURCES_U_ELL_FINAL | grade |
|---|---|
| §0.1, §1.1 page coverage; §1.2 same test | CONFIRMED |
| §1.3 map: D1, D2, D5 cells; D3 109/116 | CONFIRMED |
| §1.3 map: D3 cell 122 row 25; D4 cells 109/116 row 23, 119 H8, H12 | CORRECTED (misfiled, coverage unaffected) |
| §1.4 R1 | CONFIRMED as [R]; should name the u_k / CMP 102 holonomy-uniformity question (§2.2 (c)) |
| §1.4 R2 (2.153), (2.157), "block-local" | CORRECTED: (2.128) block-local, (2.118) = CMP 95 (1.67) a pointwise symbol bound; conclusion CONFIRMED |
| §1.4 R3 | not checked (other verifier) |
| §2.2 F1, F3–F11, F13 (the ones rendered) | CONFIRMED (F7 quote shortened) |
| §2.2 F2, F12 | not re-rendered |
| §2.3 Lemma D6 (a) | CONFIRMED; "fixed size" CORRECTED for □^{~n−j} |
| §2.3 Lemma D6 (b) | CONFIRMED [V + R for [14]] |
| §2.3 Lemma D6 (c) | CONFIRMED on the pages; [R] for CMP 99 reg. u_k and CMP 102 Thm 1 |
| §2.3 Remark (abelian links) | CONFIRMED |
| §2.4 project side (QE_INV, C_CONDITION 4.1–4.2, L-284) | CONFIRMED |
| §3.1 K1–K12 | CONFIRMED (K4: Z^d sums are Balaban's, torus step is the FINAL's lift; K7: 8^d inferred) |
| §3.2 Lemma KE (1)–(4), Prop. 2.6–2.7 side-free | CONFIRMED |
| §3.2 Cor. 2.8 composition [P-sketch] | COMPLETED here (§5.1) to [P], one normalization [P-sketch] |
| §3.2 M-freedom of δ_4, δ_5 [P-sketch] | COMPLETED here (§5.2) to [P relative to CMP 89 Sect. 5] |
| §3.3 (KE′-T*), threshold 8M not c_T | CONFIRMED (8M inferred from the 4^d, 6^d pattern) |
| §3.4 c_T use, (T2′) only in (a′), discharge by (Vol) | CONFIRMED |
| §3.4 "no circularity" [P] | CORRECTED in grade: it rests on M-freedom; holds after §5.2 |
| §4 status table | CONFIRMED, with the corrections above |
| §5 Theorem IV list | CONFIRMED in content; see §7 for the safe wording |
| Side finding (N-060 should cite (KE′-T*), threshold 8M) | CONFIRMED |
No claim is UNSUPPORTED.

## 7. Safe status

L-319 / (U_ℓ): [P relative to named [R] inputs; returned, not verified as a whole]. The (KE′-T) leg and the (D6) leg are verified here with corrections. The (D1)–(D5) leg rests on the three sweeps and on SOURCES_UW_WRAP, which wait for the other verifier.
Named [R] inputs: CMP 99 and CMP 102 constants "d and L only" for domains of any shape (SOURCES_L2_L3L14_VERIFY S9–S12), including the holonomy-uniformity of the u_k Landau gauge and of CMP 102 Thm 1 on winding domains; R-004; CMP 95 Prop. 1.2 and (1.67); CMP 89 Sect. 5 (the decay method behind δ_1, δ_4); Lemma ADM (its own [I]); L-284 (c′) (G3 contour one reader).
(KE′-T*) [V + P relative to CMP 89 Sect. 5]: C_H, δ_H of CMP 96 Cor. 2.8 are (d, L) numbers on every torus of side > 8M per scale (8^d inferred), for M ≥ M_0(d, L) and RM above a (d, L) threshold. (Vol) gives the side condition.
Theorem IV (L-196) (a)–(b), safe hypothesis list now:
1. (H-T2) as in FINAL §5 item 1 (unchanged).
2. (H-L6), inputs of L-323 beyond (H-T2) (unchanged).
3. Kotecký–Preiss [R] (unchanged).
4. (U-W)′ (D1)–(D5) [V files, sweeps and SOURCES_UW_WRAP unverified]: keep as a named pending item until the sweep verifier reports. Then it is removed, and (U_ℓ) is a lemma of the proof relative to the [R] inputs above, which (H-T2) already assumes through R-013.
Removed now: (KE′-T) (replaced by (KE′-T*), a lemma) and (D6) (a lemma on Balaban's pages and on the project side; its CMP 99/102 part is inside R1).
Headline: "returned" until the sweep verifier reports.

## 8. Report (≤ 100 words)

PASS WITH CORRECTIONS. I read 32 page images at 150 dpi. The (D1)–(D5) map holds; three cells file rows under the wrong class, with no loss of coverage. (D6) holds on every page I read: domains are split by cube containment, contours stay in one block or cube, and bounds are gauge invariant. L-284 removes the project's winding loops. (KE′-T*) holds with threshold 8M. Corrections: (2.153) also needs CMP 95 (1.67), a Fourier-symbol bound that is torus-uniform. "No circularity" needs M-free C_H, δ_H, which I proved relative to CMP 89 Sect. 5. R1 should name the holonomy uniformity of u_k. L-319 stays returned.
