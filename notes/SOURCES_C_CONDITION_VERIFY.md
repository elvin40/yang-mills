# SOURCES_C_CONDITION verification (2026-10-28)

Independent check of SOURCES_C_CONDITION.md §1–§8. One section per tool call.

## 1. Task (a): identification of (C) [checked]
- A1_KERNEL §5, §8: μ(y) = (L^jη)^d, s(y) = (L^jη)², N = QGQ*, N̂ = S^{−1/2}NS^{−1/2}, (C) ⟺ min{⟨A,G^{−1}A⟩ : QA = B} ≤ c_−^{−1}Σℓ^{d−2}|B|². Same S, same μ, same unnormalized Q as C_CONDITION §1.1–§1.3.
- WC_FULL §6.2 Lemma AW (ii): "N̂_P := S^{−1/2}QPQ*S^{−1/2} ≥ c_−" with P = G or G_1; C1 = (C) for G, C2 = c_−(G_1). Same object.
- A1_WALK_FULL IN3: Re⟨u, N̂u⟩ ≥ c_−‖u‖²; at real U N̂ is self-adjoint, so Re is redundant. Same object.
- Equivalences §1.3: conjugation by S^{1/2} (S > 0 diagonal), inverse monotonicity (needs N > 0, i.e. G > 0 and Q onto), and the variational identity ⟨B,N^{−1}B⟩ = min{⟨A,G^{−1}A⟩: QA = B} (standard Schur-complement/Lagrange identity for G > 0). All correct.
- Direction: (C) is a LOWER bound on N̂, i.e. an UPPER bound on the constrained energy. A3's γ_0 bounds (QG_1Q*)^{−1} − a − Δ_J from BELOW on a constrained subspace, i.e. N_1 from above. Opposite direction. Claim (1) CONFIRMED.
- Note: complex points (WC 6.2) need (C) only at real U (hypothesis (ii) of Lemma AW). Consistent.

## 2. Task (c), part 1: seam and Lemma T (reasoning; numerics in §5)
- Seam is forced [P, verifier]. Suppose a single-valued path rule b ↦ Γ_{y→b} made every adjacent thin loop Γ_b·link·Γ_{b′}^{−1} contractible. Take a closed chain of adjacent fine bonds b_1, …, b_n = b_1 that winds once in direction ν. The product of the n thin loops telescopes to Γ_{b_1}·(winding cycle)·Γ_{b_1}^{−1}, which is non-contractible. Contradiction. So every rule has at least one non-contractible thin loop on each winding cycle; its holonomy is a conjugate of the Polyakov loop up to plaquette factors. For the flat example of C_COND §4.1 the bracket is |Ad P − 1| = O(1). Claim CONFIRMED.
- Size. Seam at d(b, y) ≈ N_T/2 (coarsest scale, ℓ = 1). Per seam bond: η^d·|E|²·|AdP − 1|²/η² ≈ N^{−d}·C_H²e^{−δ_HN_T}·4N². Seam has ~ (N_T N)^{d−1} crossing bonds (upper count; the exponential weight concentrates near the closest seam point, so a sharper count is c(δ_H)N^{d−1}e^{−δ_HN_T}). Either way energy/|X(y)|² ∝ N = L^k. Not uniform in k. The prefactor N_T^{d−1} in the draft is an upper count, not the leading term; the conclusion does not change.
- QE_INV 5.3 [I-c] text "Torus-winding paths do not occur here" is false at the seam. CONFIRMED.
- Lemma T (a): supp χ ⊂ {d ≤ D}; physical radius ≤ DLℓ + O(ℓ) ≤ r_D. If N_T > 2r_D + 2 (coarsest-block units), each torus point within r_D of y_− has a unique lift, and adjacent bonds in supp have adjacent lifts. Axial paths stay in the coordinate box of their endpoints, so inside the lifted ball. No winding loop in supp. CONFIRMED.
- Lemma T (b): Q(1)(χE) − I = −Q(1)((1 − χ)E) uses Q(1)E = I (QE_INV 2.2). Minor notation: the transport part is Ad U(τ)·Σ q χE[Ad U(λ_b) − 1] + Ad U(τ)·(Q(1)χE)(y′, y) − δ; the factor Ad U(τ) is orthogonal and τ is empty on the diagonal, so the entrywise bound is unchanged. Entry ≤ C_He^{δ_Hc_q/2}e^{−δ_Hd(y,y′)/2}e^{−δ_HD/4}; same as the draft up to the constant. CONFIRMED.
- Lemma T (c): write D_U(χ𝓔)(b) = χ(b′)[𝓔(b′) − U^{−1}𝓔(b)]/η + (χ(b′) − χ(b))U^{−1}𝓔(b)/η. First term needs b, b′ both in the box only when χ(b′) > 0; the +2 margin covers b. |χ′| ≤ 3 and d(b, b′) = η/ℓ(b) (path metric [I]) give the (3/D)ℓ^{−1}|E| term. K_𝓔^D formula CONFIRMED.
- Lemma T (d)–(e): D_0 = D_0(d, L) because c_tr depends on C_H, δ_H, c_q, L^{|d−2|/2} and on θ_S ≤ δ_H/8 (true for RM ≥ c(d, L)). c_T depends on d, L only. CONFIRMED.
- (Vol) ⇒ (T2): at step k the coarsest blocks are unit blocks (L^kη = 1) and the side is N_k = ℓL^{K−k} ≥ ℓ > 22M (T2_VOL §2). So M ≥ c_T/22 gives (T2) at all k ≤ K. CONFIRMED. One extra "M large" condition, chosen after d, L.

## 3. Task (b): Lemma R redone [P, verifier]
- Factorization: WG_FULL l.199–202 and S2_G1 A2.1: Δ_π^{(2)} = Π*Δ^{(2)}Π, Π = I − DG′RD*, Π* = I − DRG′D* (G′, R self-adjoint). So ⟨A, Δ_π^{(2)}A⟩ = ⟨Ã, Δ^{(2)}Ã⟩, Ã = A − Dλ, λ = G′RD*A. Same Ã as (3.119). CONFIRMED.
- (a) A3.1: |⟨B, Δ^{(2)}B⟩| ≤ c_2ε‖ℓ^{−1}B‖² from (3.137) row sums + symmetry (AM–GM puts each row sum on its own point). Correct.
- (b) Π3 (S2_FORM §3) is an operator bound ‖ℓ^{−1}DG′f‖ ≤ B_0c_1‖f‖ for every f (sharp block cut on the input; (3.46) has no derivative on the input). Applied to f = RD*A: ‖ℓ^{−1}Dλ‖ ≤ B_0c_1‖RD*A‖. Correct; this is sharper than A3.2's ‖D*A‖ form and is what makes the absorption possible.
- (c) G^{−1} = Δ_π + DRD* + Q*aQ (3.130); ⟨A, Δ_πA⟩ = ‖DÃ‖² + ⟨Ã, Δ′Ã⟩ ((3.119), (3.10)); ⟨A, DRD*A⟩ = ‖RD*A‖² (R orthogonal projection). Drop ‖DÃ‖², a‖QA‖² ≥ 0 and use Π2: ‖RD*A‖² ≤ g + κ′εX. Correct.
- (d) X ≤ 2‖ℓ^{−1}A‖² + 2‖ℓ^{−1}Dλ‖² ≤ 2K_Gg + 2B_0²c_1²(g + κ′εX). Under 2B_0²c_1²κ′ε ≤ ½: X ≤ 4(K_G + B_0²c_1²)g. Then |⟨A, Δ_π^{(2)}A⟩| ≤ c_2εX ≤ 4c_2(K_G + B_0²c_1²)ε·g. δ_1 = 4c_2(K_G + B_0²c_1²)Mα_0 RECOMPUTED, same value.
- R1(G) ⇒ g > 0: R1(G) is ‖𝔴^{1/2}G𝔴^{1/2}‖ ≤ K_G with G > 0 (Thm 3.11), so G ≤ K_G𝔴^{−1} and G^{−1} ≥ K_G^{−1}𝔴. Needs G > 0 as a separate input (Schur bounds only the norm, not the sign). Present in the draft (§3.3 header "given R1(G), G > 0").
- Schur for R1(G): (3.46) for G, h = ℓ_y^{−1}1_{Δ(y)}, input weight ℓ_{y′}^{−1}: block norm ≤ B_0(ℓ_y/ℓ_{y′})e^{−δ_0d}. |j − j′| ≤ 1 + d/(RM) (each extra scale costs a full layer, width > RM), so ℓ_y/ℓ_{y′} ≤ Le^{θd}, θ = log L/(RM). For θ ≤ δ_0/2, rows and columns ≤ B_0Lc_1(½). K_G = B_0Lc_1 CORRECT (given (3.46) for G in the stated form; page check in §4).
- Consequences: G_1^{−1} = G^{−1} − Δ_π^{(2)} ≥ (1 − δ_1)G^{−1} > 0 for δ_1 < 1, so G_1 = (G^{−1} − Δ_π^{(2)})^{−1} exists and is positive; it equals the Neumann sum (3.138) whenever that converges. (1 + δ_1)^{−1}G ≤ G_1 ≤ (1 − δ_1)^{−1}G. N_1 ≥ (1 + δ_1)^{−1}N ≥ c_−(1 + δ_1)^{−1}S. c_{−,1} = c_−/(1 + δ_1) ≥ c_−(1 − δ_1), which is WC C2's form. G_1 > 0: sign CONFIRMED.
- Scope: real U only (Δ_π^{(2)} real symmetric needs real J; A2.5). Consumers need (C) only at real U (WC 6.2 (ii)). OK.
- Claim (2) CONFIRMED.

## 4. Page images (300 dpi, rendered to a temp dir, deleted after reading)
- CMP 99 p. 398: (3.46) printed: ‖hG′λ‖ ≤ B_0(L^jη)²|h|e^{−δ_0d(y,y′)}‖λ‖ etc., supp h ⊂ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′). Power on the OUTPUT block, L² on the input, sup on h. Remark below (3.47): powers (L^jη)^α may be redistributed as (L^jη)^β(L^{j′}η)^γ via Lemma 2.1 — consistent with the ℓ_y/ℓ_{y′} ≤ Le^{θd} conversion. [V]
- CMP 99 p. 399: Thm 3.3: "G(U) (a = 1) satisfies (3.42)–(3.47), with G′ replaced by G and λ replaced by J". So (3.46) for G is printed; a = 1 explicitly. [V]
- CMP 99 p. 416: "(3.108) … This implies Theorem 3.3"; Thm 3.11: Δ′_a, G′, (Q′G′²Q′*)^{−1}, Δ_a, G positive definite; proof via G = G_0(I − R)^{−1} and positivity of G_□(1) from [4]. [V]
- CMP 99 p. 417: (3.110) L^jηQ_j(U)A = B, abbreviated Q(U)A = B; factor "unessential because it may be included into B". Supports draft §5.3. [V]
- CMP 99 p. 423: (3.137), (3.138), Thm 3.12 as quoted in S2_G1 A1. [V]
- CMP 98 p. 19: (14) linear average with contours Γ_{c,x} = Γ_{c_−,x} ∪ [x, x(c)] ∪ Γ_{x(c),c_+}; (15) Ū_c with undefined U(c); "We refer the reader to paper [2] for explanations of symbols". p. 20: no definition of U(c). p. 23: (42) = one-step average, same form as (15), U(c) still undefined. NOTE: (42) is on p. 23, not pp. 19–20; the draft's "pp. 19–20, 23" is right, the brief's "pp. 19–20 ((42))" is not. [V]
- CMP 95 p. 19: (1.8) abelian average with Γ_{c_−,x}, x(c) = x + Le_μ (translation of x by c, printed); axial gauge A(Γ_{y,x}) = 0 (1.10). No U(c) (abelian); no explicit translation rule Γ_{c_+,x(c)} = Γ_{c_−,x} + Le_μ on this page. So (Cv1), (Cv2) are indeed unprinted on the pages read. [V]

## 5. Task (d): (H_Q)(iii) under (Cv1)/(Cv2)
- (iii) (QE_KE_HQ 3.4, closed in QE_KE_HQ_VERIFY §6): background average = (42) iterated; per level, Ū^i_c vs fine straight line: e_i ≤ L·e_{i−1} + (loop term), loop Γ_{c,x}∘c^{−1} ≤ c(d)L² level-(i−1) plaquettes of size 2α_0ℓ_{i−1}² ((53)–(54)). So e_i ≤ c′α_0ℓ_i²·L/(L − 1).
- (Cv1) enters as "U(c) = L straight level-(i−1) links" (drives the L·e_{i−1} recursion). Alternative contour U(c_alt) = U(straight)·Ad(loop), loop of length ≤ (c(d) + 1)L in B(c_−) ∪ B(c_+), cone lemma based at c_− with level-(i−1) plaquettes: extra ≤ c(d)α_0ℓ_i² per level. The recursion still runs on the straight links, so the factor L/L² per level is kept and the geometric sum converges. Same form, larger constant. CONFIRMED.
- (Cv2) enters only as the ribbon count (d − 1)L². Without it the loop is still a contour of length ≤ (2d + 1)L in a box; cone lemma area ≤ length × max distance ≤ c(d)L². Same form. CONFIRMED.
- Minor overstatement in draft §5.2: "U(c) must be a contour transport … no other kind of choice is possible". (11) only needs U(c) ↦ u(c_−)U(c)u(c_+)^{−1}; non-contour covariant choices (e.g. another average) also satisfy it. Such choices are not covered by the cone argument. Harmless: CMP 95/98 use contour objects throughout, and the reading is [R-convention] anyway. Recommend: replace "no other kind of choice is possible" by "every contour choice gives the same form".
- (Cv1)/(Cv2) enter nowhere else in the (C) chain: Lemma T, S2, Lemma R use only (KE′), (H_Q) as a statement, (3.35), (3.46), (3.137). Checked against C_COND §2.1 Step 2–4 input lists. Claim (4) CONFIRMED (one wording fix).

## 6. Task (e): free-case numerics
- Rerun numerics/t2_ccond_free.py (Mac, 5.6 s): real-space 48.198346 vs momentum 48.198347; every table entry of draft §6.2 reproduced to the printed digits (d = 2: 48.198, 61.728, 68.572, 71.607, 71.995 at N = 243; d = 3: 75.310, 102.108, 117.999, 125.798; d = 4: 103.248, 146.731, 176.522, 185.643). Ratio K_gi/K_F = 1.0000 at every grid point printed, not only at the max.
- Independent N → ∞ limit at p = (π, …, π) (own code, numerics/c_verify_kinf.py, continuum alias sum T_μ = Σ_{l∈Z^d}|D_μ|²Π_ν|D_ν|²/|k|², k = π(2l + 1), |D|² = 4/k²): d = 2: 72.0000 (exact 72 to 5e−8), d = 3: 126.853, d = 4: 195.1885. Independent finite-N: d = 4, N = 13: 185.64285; d = 2, N = 27: 71.60656. All match.
- c_−^free = 1/(1 + K_0): d = 4: 1/196.19 = 5.10e−3; d = 3: 7.82e−3; d = 2: 1/73 = 1.370e−2. CONFIRMED.
- Reason K_gi = K_F at p = (π…π) [P, verifier version]: for coarse-divergence-free B, the Feynman minimizer A_F = Δ^{−1}Q*X has d*A_F = Δ^{−1}Q′*d_c*X = 0 (needs d*Q* = Q′*d_c*, i.e. Q(dλ) = d_c(Q′λ), printed CMP 95 (1.13)). For any feasible A = A_F + h, Qh = 0: ⟨dA_F, dh⟩ = ⟨ΔA_F − dd*A_F, h⟩ = ⟨X, Qh⟩ = 0, so ‖dA‖² ≥ ‖dA_F‖². Hence K_gi(B) = K_F(B) on div-free B. T_F ∝ I at p = (π…π) by cubic symmetry, so the top eigenvalue is attained on div-free B (d ≥ 2). With K_gi ≤ K_F everywhere: equality at that p. That p is the global max of K_F [N, grid sweeps only].
- L-independence: in one layer the constant depends on N = L^k only; it increases with odd N in every run; the N → ∞ value does not involve L. So the sup over k is ≤ the limit, for every L. "Increases with N" is [N] (monotone in all runs), not proved. The multiscale constant c_− = 1/(4K^D) is L-dependent (interface factors, C_H, δ_H); the draft says so. Claim (5) CONFIRMED.

## 7. Task (c), part 2: explicit seam numerics [N, numerics/c_verify_seam.py, 2 s]
Setting: d = 2, torus N_T = 6 unit blocks, N fine steps per block. SU(2) flat links U_1 = exp(iθσ_3/n) in direction 1 (all plaquettes = 1, α_F = 0; Polyakov angle θ). Field F(b) = χ·E(b)·Ad(axial path y → b)X, axial rule in the fundamental domain centred at y, model kernel E = e^{−δ·d_1}, δ = 1. Energy Σ_bη^d|D_νF|².
| N | θ = 1: total | seam row | χ(d/2.5): total | seam row |
| 3 | 2.075 | 0.032 | 2.500 | 0 |
| 27 | 2.187 | 0.196 | 2.483 | 0 |
| 81 | 2.565 | 0.574 | 2.485 | 0 |
| 243 | 3.699 | 1.709 | 2.486 | 0 |
θ = 0: seam row → 0 like 1/N (only the E-gradient term). θ = 1: seam energy ×2.98 per ×3 in N, i.e. linear in N = L^k. Predicted value N·|AdP − 1|²·e^{−δN_T}·∫e^{−2|t|}dt = 243·2.83·e^{−6} = 1.70; measured 1.709. With the cut-off inside the fundamental domain (D < N_T/2) the energy is N-uniform. A cut-off with D = 4 > N_T/2 still meets the seam and still grows (checked), so (T2) is needed, not decorative. CONFIRMS draft §4.2 and Lemma T (c)–(d).

## 8. Task (f): final input set, omissions, grades
Input set for (C) (G and G_1), after this check:
- [R] CMP 99 Thm 3.1 (3.46) for G′ at a = 1 ([I-a1]; Thm 3.1 is printed for the a of the model, a = 1 there); Thm 3.3 (3.46) for G (p. 399 [V statement], proof = walk sketch p. 416); Thm 3.11 G > 0 (p. 416 [V], printed proof); (3.137) constant C_137 (p. 423 [V]); (KE′) CMP 96 Cor. 2.8 with C_H, δ_H uniform in torus side ≥ c_T.
- [V] (3.35); CMP 96 Lemma 2.1 (2.60)–(2.61); CMP 99 (3.10), (3.20)–(3.21), (3.119), (3.128), (3.130), (3.134)–(3.138); CMP 95 (1.13) (for §6 only).
- [P, verified files] (H_Q) incl. (iii) (QE_KE_HQ_VERIFY §6); QE_INV 2.3–2.6, 4.3(a), 4.4, 5.1–5.2; S2_FORM route Π; S2_G1 A2–A3.
- [P, here, now verified] Lemma R; Lemma T; (Vol) ⇒ (T2); convention independence; free formula.
- [I] [I-geom] blocks Δ(y) partition Ω_0; d = path metric, one fine step = η/ℓ(b); δ/δA convention for symmetry of Δ^{(2)} (S2_G1 A2.5, [I-conv]).
- [R-convention] (Cv1), (Cv2): constants only.
- Parameters: Mα_0 ≤ a_0(d, L); RM ≥ max(4L²D_0, c(d, L)); M ≥ c_T(d, L)/22; (Vol).
Omissions found (none changes a conclusion):
 O1. Draft 8.2 [I] list omits the [I-conv] symmetry reading of Δ^{(2)} (S2_G1 A2.5), which Lemma R (a) uses via A3.1.
 O2. Draft 8.1 parameter list omits θ = log L/(RM) ≤ δ_0/2 (R1(G) Schur, §3.4) and θ_S ≤ δ_H/8 (Lemma T (b)). Both are "RM large" with d, L fixed.
 O3. Lemma T (b) drops the orthogonal factor Ad U(τ) in the decomposition; entrywise bounds unaffected.
 O4. §5.2 "no other kind of choice is possible" is too strong; covariant non-contour U(c) exist. Restrict the claim to contour choices.
 O5. Seam size: N_T^{d−1} is an upper count; the leading term is c(δ_H)N e^{−δ_HN_T} (numerics §7). Conclusion unchanged.
 O6. Monotone growth in N of the single-layer constant is [N] only (§6 (iii)).
 O7. Brief cited (42) at CMP 98 pp. 19–20; it is p. 23 (draft is right).
 O8. QE_INV_VERIFY and S2_FORM_VERIFY should carry an erratum line: [I-c] false at the seam; repaired by Lemma T.
Grades: (1) CONFIRMED. (2) CONFIRMED (δ_1 recomputed, same). (3) CONFIRMED (O5 minor). (4) CONFIRMED (O4 wording). (5) CONFIRMED.
Status of (C): PROVED relative to the input set above, for G (c_− = 1/(4K^D)) and for G_1 (c_{−,1} = c_−/(1 + δ_1)). No torus-side hypothesis beyond (Vol) + M ≥ c_T/22. The remaining [R] items are printed Balaban statements whose proofs are sketches (Thm 3.3 for G, Thm 3.1 at a = 1) and the torus-side uniformity of (KE′).
Status: COMPLETE.
