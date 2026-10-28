# SOURCES_A3_GAMMA0_VERIFY — independent check of SOURCES_A3_GAMMA0.md

Status: done 2026-10-28 (Opus verifier). Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## V0 Plan
Check: (a) curl counterexample by hand; (b) (3.10) form; (c) step (i) constant c_* by own argument + own code; (d) §5.2/§6 covariance; (e) absolute vs relative errors; (f) (3.115) step; (g) ‖CB̃‖ ≥ ‖B̃‖; (h) R1–R5 and σ-gap; grades.

## V1 Text reads (CMP 99 pdftotext l. 1445–1535; CMP 95 l. 580–640)
- (3.115) [V text]: Q D λ = D_1 Q′ λ, derived as the linear-in-λ part of the gauge-transformation identity (3.114). Exact linear identity. λ ∈ N(Q′) ⇒ Q D λ = 0. The §5.1 step A′ = A − DG′RD*A, λ = G′RD*A ∈ N(Q′) [G′ maps into N(Q′) per (3.118)–(3.119)] is CONFIRMED: A′ is an extension of the same B.
- R in CMP 95 (1.69)–(1.70): P = Δ^{−1}Q′*(Q′Δ^{−2}Q′*)^{−1}Q′Δ^{−1}, an orthogonal projection onto Ran(Δ^{−1}Q′*); R = I − P projects onto ΔN(Q′) (CMP 99 l. 1505 uses RΔλ = Δλ for λ ∈ N(Q′)).
- CORRECTION to author §4.3(b): the gauge modes Dλ with λ ∈ N(Q′) ARE gauge-fixed (‖RD*Dλ‖² = ‖Δλ‖²). The UNFIXED modes are Dλ with Δλ ∈ Ran P, i.e. λ ∈ Ran(Δ^{−2}Q′*); these change B by D_1Q′λ. The author's conclusion (unit gauge modes B = D_1μ have zero-cost extensions at U = 1, so γ_0 must come from the axial condition) is right; the sentence naming N(Q′) as the unfixed set is wrong.

## V2 (3.10) page image (CMP 99 p. 392, PDF p. 4) [V]
⟨A, ΔA⟩ = ⟨A, D*DA⟩ + ⟨A, Δ′A⟩; D = covariant derivative on bonds → plaquettes, D* its adjoint (3.9) = covariant curl form. Δ′ = Σ_p η^d tr((D_U^1A)(p))² η^{−2}(Re U(∂p) − 1) + tr Σ i[A′(b_1), A′(b_2)] η^{−2} Im U(∂p). Both terms carry the background curvature (η^{−2}(U(∂p) − 1) = O(F_bg)). CONFIRMED: M_1's leading form is the covariant curl², and Δ′ is O(|F_bg|)·‖A‖²-relative (homogeneous quadratic).
R1 identification [V text]: Thm 3.1 = G′(U) kernel bounds (3.42)–(3.47), constants d, L only, M ≥ M_1, Mα_0 ≤ a_0. Thm 3.2 = (Q′G′²Q′*)^{−1} decay. Thm 3.3 = same bounds for G(U). G_1 is NOT in Thms 3.1–3.3: it is Thm 3.12 (p. 423, needs (3.35) AND (3.36), "with one exception" = covariant-Laplace part of (3.42)); positivity of G, G_1 = Thm 3.11/3.12. So R1 = CMP 99 Thms 3.1, 3.3, 3.11, 3.12 (G_1 via (3.138) series, argued in a few lines on pp. 422–423). Kernel decay ⇒ operator norm (Schur). R1 does not use A1 ((QG_1Q*)^{−1} kernel): the variational form needs only G_1 > 0 and ‖G_1‖.

## V3 Curl counterexample by hand + with gauge fixing [P, N /tmp script, deleted]
Hand: A = dδ_x, d = 2. Four plaquettes at x (lower-left corner; curl = bottom + right − top − left):
 p(x−e_1): bottom (x−e_1,x) = +1, right (x,x+e_2) = −1 ⇒ curl A = 0; curl|A| = 1 + 1 = 2.
 p(x): bottom (x,x+e_1) = −1, left (x,x+e_2) = −1 ⇒ curl A = −1 + 1 = 0; curl|A| = 1 − 1 = 0.
 p(x−e_1−e_2): right (x−e_2,x) = +1, top (x−e_1,x) = +1 ⇒ curl A = 0; curl|A| = 0.
 p(x−e_2): left (x−e_2,x) = +1, top (x,x+e_1) = −1 ⇒ curl A = 0; curl|A| = −(1) − 1 = −2.
 So ‖∂A‖² = 0, ‖∂|A|‖² = 8. The author's single-plaquette value 2 is right. CONFIRMED for the curl part alone.
BUT M includes ‖RD*A‖². With Balaban's R (L = 2, 4×4 blocks, P from (1.70)): ⟨A,MA⟩ = 19.01 ≥ ⟨|A|,M|A|⟩ = 10.72. So dδ_x does NOT refute the full Kato claim. Repaired counterexample: λ = Δ^{−2}Q′*ω (an UNFIXED mode, RΔλ = 0, see V1), A = dλ: ⟨A,MA⟩ = 2e−27, ⟨|A|,M|A|⟩ = 4.62. Kato refutation CONFIRMED with the corrected example.

## V4 Step (i) at U = 1: rederivation, constant c_* ≤ 1 (not 4) [P, N]
Q_k(1) is the composition of single-step block averages; composition gives (QA)(c) = ⨍_{x∈B(y)} ∫_{[x,x+e_μ]} A (straight unit line from every fine point x of the block; blocks are translates). For a unit plaquette p = (y; μν) the four bond averages use the translates x, x+e_μ, x+e_ν of the same x, so (∂_1QA)(p) = ⨍_x ∮_{∂S_x} A = ⨍_x η²Σ_{q⊂S_x} F_q (exact lattice Stokes). Jensen + Cauchy–Schwarz (S_x has L² fine plaquettes of area η², total area 1): |(∂_1QA)(p)|² ≤ ⨍_x η²Σ_{q⊂S_x}|F_q|². Sum over y: each fine (μν)-plaquette q lies in S_x for exactly L² base points x (two free coordinates, the other d−2 fixed), each with weight L^{−d}·η². Total weight per q = η^d·L²·η² = η^d. So Σ_p|(∂_1QA)(p)|² ≤ η^dΣ_q|F_q|² = ‖F_{μν}‖². Sum over μ < ν: c_* ≤ 1. The author's "≤ 2² plaquettes" overcounts by 4. Minimizing over QA = B: ⟨B, Δ_kB⟩ ≥ ‖∂_1B‖², i.e. γ_0′ ≥ 1.
Own code (B-side form: c_* = λ_max(∂_1 Q (η^{d−2}∂*∂ + ε)^{−1} Q* ∂_1*), ε = 1e−7 and 1e−10 agree; different method from the author's pinv): d = 2: (L, nb) = (2,3) 0.625, (3,3) 0.5556, (3,4) 0.7037, (4,3) 0.5312, (5,3) 0.52 — the author's numbers are reproduced exactly. d = 3: (2,3) 0.625, (3,3) 0.5556. Larger volumes: (2,6) 0.875, (2,8) 0.9268, (2,10) 0.9523, (3,6) 0.8519, (3,8) 0.9132, (4,6) 0.8437. c_* increases to 1 with volume (lowest coarse momentum ~2π/nb, Q → identity there). So "c_* ≤ 0.71" is a finite-size artifact. Infinite volume: c_* = 1 exactly (≤ 1 proved, → 1 observed). γ_0′ = 1 is sharp.
Consequence for item (5): the KAPPA_D/SOURCES_Q free value γ_L = (12d²)^{−1}L^{−d−1} is a CORRECT lower bound (γ_0′ ≥ 1). No missing factor. The author's "correction" γ_0′ ∈ [¼, 1.4] is wrong in both ends: γ_0′ ≥ 1 (proved), and the observed 1.4 does not survive large volume.
Consequence for item (4): with c_* ≤ 1 and the author's §7.2 arithmetic (checked: (8/9)(3/8) = 1/3, 1/3 − 1/12 = 1/4), γ_0 ≥ γ_L/4 = (48d²)^{−1}L^{−d−1}. The author's (192d²)^{−1}L^{−d−1} is valid but loose by 4.

## V5 Covariant sketch §5–§6, C-step, errors [P]
5.1 (3.115) step: CONFIRMED (V1). Small bookkeeping slip: in §5.3 the C_δε_Q²K_A term is not multiplied by (1+δ)c_*; it should be divided by it in ε_7. Harmless for ε small.
κ_π := ‖I − DG′RD*‖² uniform in k: NOT elementary. A′ = A − DG′RD*A is an OBLIQUE projection (RD*A′ = 0 means D*A′ ⊥ ΔN(Q′), not ⊥ N(Q′)), so ‖·‖ ≤ 2 does not follow. A Schur bound from pointwise kernels of a second-derivative operator D G′ D* can lose log(1/η) ~ k. What is needed is an ℓ^∞-block bound (Balaban's form: sup over Δ(y), λ supported in Δ(y′), times e^{−δd}) for DG′RD* itself; (3.49)/(3.68) print such bounds for P, DP, PD*, DPD*. [I] which printed line gives DG′RD*; add to R1.
Covariance: CONFIRMED. (a) |B(b)|², |curl|² are Ad-invariant; (b) Balaban's Q(U) is covariant (transports to block points), so a fine gauge u induces the coarse gauge u↾(block points) on QA and on U_1; (c) the axial condition B(b) = 0 on the trees and Q_1(U_1)B = 0 are zero sets of covariant linear maps, invariant under any gauge rotation of B. The axial condition is a condition on the FLUCTUATION B, not a gauge choice for the background. The covariant Lemma 2.4 does NOT need the coarse background in axial gauge: each local inequality is proved in the local REGULAR gauge of the background. So this is not a hidden R3/R5 issue. R5 stays only as the identification of CMP 99's trees A_x(y) with CMP 96's Γ_{y,x} (CMP 96 p. 244 (2.121) text confirmed).
Region sizes: step (i) needs cubes of size O(1); step (ii) needs diameter 2L + 2 (blocks of L unit sites). Regular-gauge cubes have size O(1)M. Need M ≥ cL. CMP 99 Thm 3.1 already takes M ≥ M_1(d, L), so the order L → M → α_0 holds. CONFIRMED.
Covariant telescoping (§6 Remark): CONFIRMED. With the two transverse bonds on the tree, the covariant curl reduces to B(b_1) − Ad(hol)B(b_3), and |Ad v| = |v| gives |B(b_1)| ≤ |B(b_3)| + |curl| exactly. The corridor step (2.124)–(2.127) is a positive-definite quadratic form on a (d−1)-dim slab of ~L^d bonds; perturbing it by O(ε) costs ε·c(L), local. CONFIRMED in sketch.
Absolute vs relative errors: SETTLED, RELATIVE. Every object is a homogeneous quadratic form in B (or in A, then bounded by ‖A′‖² ≤ K_A(E + a‖B‖²)): Δ′ = O(|F_bg|)‖A‖² (V2), Q(U) − Q(1) and ∂^{U_1} − ∂ are linear maps of norm O(Mα_0 + L²α_0) times local |·|, and the J-term of (3.156) is ⟨H_1D̃^{(2)}(B), J⟩ with D̃^{(2)} quadratic, so O(|J|)‖B‖². No term of degree 0 in B exists. The lower bound does not fail at small ‖B‖.
C-step: CONFIRMED. C is identity on the bonds of Λ̃ and fills the solved bonds b_0 ∈ c (excluded from Λ̃, CMP 99 p. 428 [V via SOURCES_CDC §1]). So C*C = I + K*K ≥ I, ‖CB̃‖ ≥ ‖B̃‖; same with Q_1(U_1). Minor: §7.3 writes ‖C‖² ≤ L^{d+1}; SOURCES_CDC §3.3 has 1 + L^{d+1}.

## V6 R1–R5, σ-gap, grades, regrade
R1: CORRECTED. ‖G′‖-type bounds = CMP 99 Thm 3.1 (G′), Thm 3.3 (G); ‖G_1‖ and G_1 > 0 are Thm 3.12 (+3.11), which needs (3.36) as well and is argued in a few lines (pp. 422–423, series (3.138)), with the covariant-Laplace part of (3.42) excluded. Thms 3.1–3.3 alone do not cover G_1. Add the DG′RD* operator-norm bound (V5) to R1. R1 does not need A1.
R2: CONFIRMED as the A18 piece "Q(U) = Q_free(1 + O(α_0))", k-step uniformity [I].
R3, R4: CONFIRMED as stated (small items; R4 = c_J, SOURCES_CDC §5.3 [R/I]).
R5: CONFIRMED as stated; narrowed by V5 (no background axial gauge needed).
σ-localized C*Δ_k(s)C: OPEN [I]. The author's "only positivity of the dropped terms" is not checked: the s-interpolation is a walk-expansion weighting (LOC_VERIFY l. 15), not a convex combination of positive forms, so monotonicity in s is not automatic. Stays an A18 item.

Grades:
1 Kato refuted: CORRECTED. Conclusion holds. The dδ_x example refutes only the curl part; with ‖RD*A‖² included it is not a counterexample (19.0 ≥ 10.7). Repaired example: unfixed mode λ = Δ^{−2}Q′*ω gives 0 vs 4.62. Unfixed set is Ran(Δ^{−2}Q′*), not N(Q′).
2 U = 1 mechanism: CORRECTED. Steps (i)+(ii) right; c_* ≤ 1 (not 4) by exact counting; numerics reproduced, but c_* → 1 with volume (0.95 at nb = 10), so 0.71 is finite-size.
3 Covariant sketch: CONFIRMED as sketch. Covariant quantities only; no background axial gauge needed; errors relative; M ≥ cL compatible with Thm 3.1. Gap: κ_π uniform bound.
4 γ_0 ≥ (192d²)^{−1}L^{−d−1}, no M; C-step free: CONFIRMED (valid; sharpens to (48d²)^{−1}L^{−d−1}).
5 Free-constant correction γ_0′ ∈ [¼, 1.4]: CORRECTED (reversed). γ_0′ ≥ 1; KAPPA_D/SOURCES_Q γ_L is a valid lower bound; no correction needed.
6 R1–R5: CORRECTED (R1 = Thms 3.1, 3.3, 3.11, 3.12 + DG′RD* norm); σ-gap stays [I].
Regrade: YES, with wording: "A3 reduced [P-sketch, verified] to CMP 99 Thms 3.1, 3.3, 3.11–3.12 (incl. a uniform norm bound on DG′RD*) + A18 piece R2 + small items R3–R5; γ_0 ≥ (48d²)^{−1}L^{−d−1}, no M; σ-localized version open." Not "proved": §5.2/§6 remain sketches.
Scratch: /tmp/a3v deleted.
