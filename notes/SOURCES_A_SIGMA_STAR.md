# SOURCES_A_SIGMA_STAR — the reading (A-σ*): analyticity of the localized minimizer U_0 of CMP 122 II (1.3) on a large domain

Date 2026-10-29. Author: Claude (Opus 5.5), derivation file. Status: [derived here, unverified]. An independent verifier (Opus) must check it before any grade in it is load-bearing.
Edits: this file only. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read. Every grep named single files under balaban/ or named project files.
Ids follow IDS.md: R-035 (B-S), H-116 (H-U), R-004 (γ_0), R-018 (regular class; includes "U_{k,Z} obeys CMP 102 Thm 1", printed use [V]), R-019 (CMP 102 (172) ball), H-038, K-039 (C1*), H-270 (log g_k^{−2} ≤ R_k), canon lines N-060, N-320, N-470.

Grades. [P] proved here, complete argument. [P-sketch] argument given, a routine step not written out. [V] read this session on a rendered page image (pdftoppm -r 150, fresh folder /tmp/asig.LMeF, deleted after use). [R] reduced to a named result: a ledger row, a verified project file, or a printed Balaban statement. [I] inference or reading that no image or verifier supports.

Inputs read: OPUS_QUEUE.md l. 1–15; SOURCES_JC_SIGMA.md (whole); SOURCES_JC_SIGMA_VERIFY.md (whole); IDS.md (head, R-004, R-018, R-019, R-035, H-038, H-116, K-039, H-270); TRUST_LEDGER.md R-018 row; SOURCES_ORDER_CANON.md N-060 (K_av, k_av^c, c_N slot); SOURCES_FX_D.md l. 11, 39 (R_m ≤ C_R(log g_m^{−2})^{p_R}); SOURCES_H_ALPHA.md and _VERIFY.md (grep, Proposition A).
Text layer used only to locate pages (not graded): CMP 122 I l. 115–135, 925–1070; CMP 122 II l. 60–240; CMP 99 Propagators l. 1575–1660; CMP 98 l. 500–530; CMP 102 Proposition list.

Page images read this session:
| page (PDF) | content | reading |
|---|---|---|
| CMP 122 I p. 193 (19) | (1.75) χ_{k,Λ}; the explicit extension of V_k↾Z∩Λ^c | For data with \|V_k(∂p′) − 1\| < ε on Z∩Λ^c, "ε > 0 sufficiently small": generalized axial gauge on ∂^+Λ, set V′_k = 1 on Λ, gauge back. The extension obeys \|∂V_k − 1\| < O(1)M²ε on Z, and U_{k,Z} obeys \|∂U_{k,Z} − 1\| < O(1)B_3M²εη². Also: on Ω″_k the real fields obey \|∂V_k − 1\| < 2L(L+1)N_0^{−1}R_kε_k. [V] |
| CMP 122 I p. 194 (20) | (1.76)–(1.78), Proposition 1 | The problem "minimize A(U_{k,Z}(V_k)) over V_k↾Λ" is the released problem. Proposition 1: for data with \|∂V_k − 1\| < ε on Z∩Λ^c, "for ε > 0 sufficiently small", exactly one critical orbit; it is a minimum V_Λ; \|V_Λ(∂p′) − 1\| < B_5M⁵ε on Λ (1.78); V_Λ "has an analytic extension for G^c-valued configurations exp iB′V_k satisfying the same regularity condition as V_k, with B′ ∈ g^c and small, e.g., \|B′\| < ε". No coupling constant occurs in the statement. [V] |
| CMP 122 I p. 195 (21) | (1.79)–(1.80) | U_0 = U_{k,Z}(V_Λ) with V_Λ = V_k on Z∩Λ^c. (1.80): \|U_0(∂p) − 1\| < 2ε_kη² + O(1)B_3B_5M⁵exp(−δ dist(p, Λ))ε_kη². "B_5 is determined by the geometry of the problem." [V] |
| CMP 122 II p. 356 (2) | (1.1), first line of (1.2) | as in JC_SIGMA §2 [V] |
| CMP 122 II p. 357 (3) | (1.2)–(1.6); text before (1.7) | (1.3) is the released problem; (1.4) "By the results of Sect. G [15]". U_0 is represented on Z as exp iξA_0 with \|A_0\|, \|∇^ηA_0\| < O(1)M⁶R_kε_k (Sect. F [15]); first-order expansion in A_0 (Sect. B [13]); replacing the localized minimizer by the whole-lattice one and ζ_0 by 1 costs O(exp(−R_k)). [V] |
| CMP 122 II p. 358 (4) | (1.7)–(1.11) | (1.7) ⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ ≥ γ_0‖∂B′‖² − O(1)(M⁶R_kε_k + exp(−R_k))‖B′‖²; (1.8) Poincaré with d(100M)^{d+1}; (1.9) ≥ γ_0/(2d(100M)⁵)‖B′‖² "for g_k sufficiently small"; the extension sentence; (1.10)–(1.11). [V] |
| CMP 122 II p. 359 (5) | proof of Proposition 1, (1.12)–(1.13) | Start from the p. 193 extension; V′ = exp iB′ on Λ in gauge G_0; critical equation (1.12); P_0H*_{1,k}Δ_1H_{1,k}P_0 is invertible by (1.9) with inverse ≤ γ_0^{−1}2d(100M)⁵; (1.13) fixed-point form; "Using Proposition 4 [15] and the fixed point theorem for contractive mappings … exactly one solution … bounded by 2γ_0^{−1}2d(100M)⁵B_3²4ε_k"; "The above equations, bounds and statements are valid for g^c-valued fields, hence the existence of the analytic extension follows immediately … It is proved for ε_k instead of a general ε, but the generalization is obvious." [V] |
| CMP 102 p. 292–293 (16–17) | Proposition 4, (97)–(104) | δV/δA′ is analytic on g^c-valued A′ with max{\|A′\|_{(−1)}, \|∇A′\|_{(−2)}} < ε_3 ≤ a_3; (98) \|δV/δA′\|_{(−3)} ≤ C_4(max{…})²; "a_3, C_4 depend on d and L only". [V] |
| CMP 102 p. 305 (29) | Sect. G, (170)–(175) | (172): V = V′V_0, V_0 obeys (7), \|B′\| < 2C_1ε_1 on 𝔅_k, "for ε_1 sufficiently small"; (173) ε_2 ≤ B_5ε_1; "C_1 is an absolute constant, hence B_5 is such a constant also". [V] |

## 1. Route 1: where Balaban treats a minimizer with averages released on a subset

1.1 CMP 102 does not [R, JC_SIGMA_VERIFY §3.1, V there]. Its problem (3)–(7) fixes the averages on all of 𝔅_k. The CMP 99 Propagators problem (3.127)/(3.110) (text layer only) is a linear problem with averages on all Λ_j. The CMP 98 "Other averaging operations" passage is about gauge changes, not release. [text layer; not graded]
1.2 CMP 122 I Proposition 1 does [V p. 194]. It is the released problem, stated with a free regularity parameter ε and an analytic extension on |B′| < ε (same ε). The proof is CMP 122 II p. 359 [V]. It is printed for ε = ε_k, with "the generalization is obvious".
1.3 So the question "is the radius g-free?" becomes: how small must ε be in the proof on p. 359? The statement says only "ε > 0 sufficiently small" [V]. The proof uses three facts. Each has an explicit threshold.
 (E) The extension of p. 193 [V]: needs O(1)M²ε inside the domain of U_{k,Z}. U_{k,Z} obeys CMP 102 Theorem 1 (R-018, printed use [V] per the R-018 row), so this is a threshold of the form O(1)M²ε ≤ c ε_1^{102}. No g.
 (C) The contraction of (1.13): Proposition 4 [15] [V p. 292–293] has range a_3 and constant C_4, both (d, L) only. The inverse bound is γ_0^{−1}2d(100M)⁵ (R-004 γ_0, via (1.9)). The threshold has the form ε ≤ c(d, L)γ_0M^{−p_C} with p_C a fixed power (the ℓ²-to-sup conversions on Λ cost powers of M only, since Λ lies in a 100M cube [V p. 358]). No g.
 (H) The Hessian lower bound (1.9): from (1.7) [V], with ε_k replaced by ε. (1.9) holds with its printed constant if O(1)(M⁶R_kε + e^{−R_k}) ≤ γ_0/(2d(100M)⁵). This needs ε ≤ c(d, L)γ_0M^{−11}R_k^{−1} and O(1)e^{−R_k} ≤ γ_0/(4d(100M)⁵).
1.4 The g-dependence of the threshold is only the factor R_k^{−1} in (H). R_k ≤ C_R y^{p_R}, y := log g_k^{−2} (SOURCES_FX_D l. 11). So the radius from the printed proof is c(M)/R_k: it shrinks with g_k, but only as a negative power of log g_k^{−2}. The second condition of (H) is an upper bound on γ: by H-270, e^{−R_k} ≤ g_k² ≤ γ², so O(1)γ² ≤ γ_0/(4d(100M)⁵) suffices. [P, from the printed bounds]
1.5 The source of R_k in (1.7) is not printed. Two readings fit the page. (a) Z lies in a cube of size 100MR_k (CMP 122 I p. 192, text layer, condition (i)), and a gauge representation over Z gives |A_0| ≈ diam(Z)·curvature. (b) The real data on Ω″_k are only L²R_kε_k-regular [V p. 193]. Under (a) the general-ε form of (1.7) keeps the factor R_k. Under (b) it drops it. I use (a), the worse case. [I, as to the origin; the conclusion below holds under both]

## 2. Route 2: the statement proved, and its proof

Notation. Fix k, a component Z and Λ ⊂ Z as in CMP 122 I (1.73) and II pp. 356–359. y := log g_k^{−2} ≥ 1. R_k ≤ C_Ry^{p_R} (SOURCES_FX_D l. 11). α_{i,k} = g_kC_iy^{q_i} (CMP 119 (2.28), as in JC_SIGMA). U^r is real, regular at α_{0,k} on Z. For a g^c-valued A″ on Z put U″ := exp(iξA″)U^r. The data of (1.3) at U″ are the averages M^k(U″) on Z∩Λ^c (the p. 358 extension rule [V]). V_Λ(·) is the minimizer of Proposition 1 in the gauge G_0, U_0 := U_{k,Z}(V_Λ) (1.79), and K(U″) := H_{1,k}*Δ_1(ζ_0)H_{1,k} at U_0(U″), as in JC_SIGMA §4.1.

Thresholds (all g-free; (d, L) numbers, γ_0 of R-004, ε_1^{102}, C_1^{102}, B_3, B_5^{122}, a_3, C_4, and powers of M):
- ε_E(M): from (E) of 1.3 and from the composition step below: O(1)M²ε ≤ ½ε_1^{102}, and B_5M⁵ε ≤ ¼ of the half of the CMP 102 radius that K-039 leaves free, i.e. B_5M⁵ε ≤ ⅛κ_HC_1^{102}a_*^{102}.
- ε_C(M): the contraction threshold (C) of 1.3, ε ≤ c(d, L)γ_0M^{−p_C}.
- ε_H(M) := c(d, L)γ_0M^{−11}: from (H), so that O(1)M⁶R_kε ≤ γ_0/(4d(100M)⁵) whenever ε ≤ ε_H/R_k.
Put ε_0(M) := min{ε_E, ε_C, ε_H/C_R}, ε_*(k) := ε_0(M)y^{−p_R} (≤ every threshold, since y ≥ 1 and R_k ≤ C_Ry^{p_R}), and
 a_σ(k) := min{k_av^c, ε_*(k)/(4K_av)}, ρ_b := ⅛κ_HC_1^{102}a_*^{102} (a fixed number).

Proposition A-σ′. Assume
 (γ1) c_regα_{0,k} ≤ ½ε_*(k), with c_reg the (d, L) constant that bounds the curvature of M^k(U^r) by that of U^r (R-018 inclusions, K-042);
 (γ2) O(1)γ² ≤ γ_0/(4d(100M)⁵) (the e^{−R_k} term of (1.7), through H-270).
Then on the domain 𝒟_k := {A″ : |A″|, |∇A″| < a_σ(k)} and |b| < ρ_b (b a g^c-valued field on the bonds of Λ):
 (i) A″ ↦ V_Λ(M^k(U″)) is holomorphic, and |V_Λ(∂p′) − 1| < B_5M⁵ε_*(k) on Λ;
 (ii) (b, A″) ↦ U_{k,Z}(exp(ib)V_Λ(M^k(U″))) is jointly holomorphic and bounded; at b = 0 it is U_0(U″);
 (iii) A″ ↦ K(U″) is holomorphic, and ‖K(U″)‖ ≤ C_K(k) ≤ C_K^0(M)y^{dp_R} in the operator norm on ℓ²(bonds of Λ);
 (iv) on 𝒟_k ∩ {U″ ∈ U_k^c(Z, α_{0,k}, α_{1,k})} these maps are Balaban's p. 358 extensions.
The radius a_σ(k) ≥ a_0(M)y^{−p_R} with a_0(M) := min{k_av^c, ε_0(M)/(4K_av)} g-free. So a_σ(k) depends on g_k only through the factor y^{−p_R}. This factor comes from the condition ε_*(k) ≤ ε_H/R_k of (H). It is not g-free, but it shrinks only as a power of 1/log g_k^{−2}.

Proof.
Step 1 (data) [R to N-060]. The complex averaging bound of N-060 gives M^k(U″) = exp(iB_d)M^k(U^r) with B_d holomorphic in A″ and |B_d| ≤ K_av·a_σ(k) ≤ ¼ε_*(k), for |A″|, |∇A″| < k_av^c. By (γ1) the real data M^k(U^r) satisfy |∂V − 1| ≤ ½ε_*(k) on Z∩Λ^c. So the data obey the hypotheses of Proposition 1 [V p. 194] with ε = ε_*(k), at real and at complex points. Note: K_av is placed at N-060, but its number waits for the empty slot c_N (canon note). That slot is a pre-existing canon item; it carries no g.
Step 2 (extension) [P-sketch]. The p. 193 extension [V] is built from a generalized axial gauge on ∂^+Λ and the value 1 on Λ. The gauge transformation is a product of link variables along fixed tree paths, so the extension is a polynomial, hence holomorphic, map of the data. It obeys |∂V − 1| < O(1)M²ε_* on Z (p. 193 [V]; at complex data the same algebra gives the same bound up to an absolute factor). By ε_* ≤ ε_E, it lies in the CMP 102 domain, where U_{k,Z} obeys Theorem 1 (R-018 [V printed use]) and is holomorphic (R-019, (172) [V p. 305]).
Step 3 (Hessian on Λ) [R + P]. At the real point, (1.7)–(1.9) [V p. 358] with ε_k → ε_* give ⟨H_{1,k}B′, Δ_1H_{1,k}B′⟩ ≥ (γ_0/(d(100M)⁵) − O(1)(M⁶R_kε_* + e^{−R_k}))‖B′‖². By ε_* ≤ ε_H/R_k and (γ2) with e^{−R_k} ≤ g_k² ≤ γ² (H-270), the error is ≤ γ_0/(2d(100M)⁵). So (1.9) holds. At a complex point, the first-order expansion in A_0 (Sect. B [13], cited p. 357 [V]) bounds the difference of the forms by O(1)|A_0|‖B′‖², and |A_0| ≤ O(1)M⁶R_kε_* also for the imaginary part. ("The above equations, bounds and statements are valid for g^c-valued fields" [V p. 359].) So K_0 := P_0H*Δ_1HP_0 = K_0^{real} + E with K_0^{real} ≥ λ := γ_0/(2d(100M)⁵) and ‖E‖ ≤ ½λ. Then ‖K_0^{−1}‖ ≤ 2/λ by the Neumann series. [P]
Step 4 (fixed point, holomorphy) [P given Steps 1–3 and CMP 102 Prop. 4]. Write (1.13) [V p. 359] as B′ = T(B′; B_d). T is holomorphic in (B′, B_d): K_0^{−1} by Step 3, δV/δA by Proposition 4 [V p. 292] on the range a_3, H_{1,k} by R-019. By (98) [V p. 293] the nonlinear part has Lipschitz constant ≤ ‖K_0^{−1}‖·‖H‖²·2C_4·(radius), times M-powers from norm changes on Λ. By ε_* ≤ ε_C this is ≤ ½ on the ball of radius 2|T(0; B_d)| ≤ 2·(2/λ)B_3²4ε_*, uniformly in B_d. So T^n(0; ·) is a sequence of holomorphic maps that converges uniformly on the data polydisc; the limit B′(B_d) is holomorphic (Weierstrass) and unique in the ball. Bound: |B′| ≤ 2·2γ_0^{−1}2d(100M)⁵B_3²4ε_* ≤ B_5M⁵ε_* (Balaban's (1.78) with his B_5 [V p. 194–195], at the factor 2 of Step 3 absorbed in B_5). This is (i). This is the "obvious generalization" of p. 359, with the thresholds written out.
Step 5 (composition) [P-sketch]. Let V_Λ^0 := V_Λ at A″ = 0. It is real and B_5M⁵ε_*-regular, so it obeys CMP 102 (7) at ε_1 (ε_* ≤ ε_E). Write exp(ib)V_Λ(A″) = exp(iB_tot)V_Λ^0. Then |B_tot| ≤ 2B_5M⁵ε_* + |b| + O(products) < 2ρ_b + ¼κ_HC_1^{102}a_*^{102} ≤ ½κ_HC_1^{102}a_*^{102}, inside the half of the (172) ball left by K-039. So (b, A″) ↦ U_{k,Z}(exp(iB_tot)V_Λ^0) is holomorphic by (172) and R-019 [V p. 305 + R], and bounded, since |U − 1| is bounded on that ball. This is (ii).
Step 6 (norm of K) [P-sketch, the argument of JC_SIGMA_VERIFY §3.4]. F(b, A″) := A(ζ_0, U_{k,Z}(exp(ib)V_Λ)) is holomorphic, and |F − F(0, A″)| ≤ O(1)|supp ζ_0|·r on the polydisc (r the bound on |U_p − 1| there). The b-Hessian at b = 0 is −2·(q_2 form) after the g_k-rescaling B′ = b/g_k (the g_k^{±2} cancel). Cauchy in two b-directions gives each entry ≤ O(1)|supp ζ_0|rρ_b^{−2}. The ℓ² norm is ≤ N_Λ times the entry bound. |supp ζ_0| ≤ (100MR_k)^d (Z in a 100MR_k cube, CMP 122 I condition (i), text layer) ≤ (100MC_R)^dy^{dp_R}. So C_K(k) ≤ C_K^0(M)y^{dp_R}. This is (iii). It also removes the need for the separate reading ‖H_{1,k}‖ ≤ O(1)B_3 on the large domain.
Step 7 (identification) [P]. On 𝒟_k ∩ U_k^c(Z, α_{0,k}, α_{1,k}) both the maps of (i)–(iii) and Balaban's p. 358 extensions are holomorphic, and they agree on the real slice (the real minimizer is unique by Proposition 1). The real slice is totally real of maximal dimension, and the domain {exp(iξA″)U^r} is connected. So they agree. This is (iv). ∎

Remark (route 2 as the task framed it). Route 2 is the p. 359 proof itself: the implicit function / contraction argument with the CMP 102 operator bounds (R-019, Prop. 4), the R-004 γ_0, and the Hessian lower bound (1.9) on Λ. The radius depends only on (d, L, M), γ_0 and the CMP 102 numbers, except for the factor R_k^{−1} that (1.7) carries.

## 3. The chain needs only Proposition A-σ′: Lemma Σ′ and the amended (J-σ)

3.1 Lemma Σ′ [P given Proposition A-σ′ and the other JC_SIGMA inputs]. Replace (A-σ) in JC_SIGMA Lemma Σ by Proposition A-σ′. Part (a), the Schwarz step, runs with ρ := a_σ(k)/α̂ (α̂ < α_{1,k}) and C_K(k): |σ_2| ≤ C_K(k)(α_{1,k}/a_σ(k))‖B′‖². The Schwarz step needs only ρ > 1 and analyticity with a uniform bound on |s| < ρ. It does not need a g-free radius. It needs a radius ratio a_σ(k)/α_{1,k} that tends to ∞ as g_k → 0. Here
 α_{1,k}/a_σ(k) ≤ C_1g_ky^{q_1}·a_0(M)^{−1}y^{p_R}.
With ‖B′‖² ≤ N_ΛM_0²A_0²y^{2p_0} on supp χ ((Rd1)) and C_K(k) ≤ C_K^0(M)y^{dp_R}, the first term of S becomes
 S_1′(g) := 2C_K^0(M)C_1a_0(M)^{−1}N_ΛM_0²A_0² g y^{2p_0+q_1+(d+1)p_R}.
Parts (b) and (c) of Lemma Σ do not use (A-σ); they are unchanged. So S′(g) := S_1′(g) + 2c_VN_Λg^{1−β} + (third term of S) → 0 as g → 0. [P]
3.2 Monotonicity [P]. g ↦ gy^a increases on g < e^{−a} (JC_SIGMA 4.3, CONFIRMED in VERIFY C12). With a := 2p_0 + q_1 + (d+1)p_R, S′(g_k) ≤ S′(γ) for g_k ≤ γ ≤ e^{−a}. In the §4.4 case (Λ_i in a 100MR_k cube) N_Λ adds dp_R more to the exponent; the form does not change.
3.3 Amended (J-σ) at N-470 (replaces JC_SIGMA_VERIFY §4 version): γ ≤ γ_σ(M), the largest γ with
 (a) γ ≤ min(e^{−(2p_0+q_0+q_1+(2d+1)p_R)}, e^{−q′/2}), q′ := 4p_R + 2max(p_0, q_0, q_1);
 (b) C_1γ(log γ^{−2})^{q_1+p_R} ≤ a_0(M) (this is α_{1,k} < a_σ(k) at every k, by monotonicity);
 (c) S′(γ) ≤ ¼;
 (d) Φ′(γ) ≤ 2/3 (unchanged; the p. 358 O(1) in Φ′ named);
 (e) (γ1): c_regC_0γ(log γ^{−2})^{q_0+p_R} ≤ ½ε_0(M);
 (f) (γ2): O(1)γ² ≤ γ_0/(4d(100M)⁵).
Every argument is (d, L), γ_0, a CMP 102/122 number, M, M_0, K_av, k_av^c, or an N-440 exponent/constant. All are left of N-470. r does not occur. Every item is an upper bound on γ, which is Balaban's own direction ("stronger restrictions on g_k, or γ", p. 358 [V]).
3.4 Proposition Σ-B then holds as in JC_SIGMA §5.2 with (A-σ) replaced by Proposition A-σ′. Its conclusions (i)–(iv) and the constants 2e^{1/4}, 0.730, 1.31 do not change. [P given the listed inputs]

## 4. Route 3 (scaling), and the strict g-free form (A-σ*)

4.1 Why Proposition A of SOURCES_H_ALPHA does not apply directly. Its mechanism is that the step cut acts on the fluctuation only, so the background radius is not tied to the cut. In the R-denominator the cut χ({|B′| < M_0g_k^{−1}ε_k}) also acts on B′ only [V p. 356], so the mechanism is present but empty: the cut was never the obstruction. The obstruction was the analyticity domain of the background map U_0(·). Proposition A says nothing about a variational problem; the integrand has no E-term. The σ verifier's reason is CONFIRMED. [P]
4.2 The analogue that does hold [P, from §1–§2]. The background map of the R-denominator is defined by a variational problem with a free regularity parameter ε (Proposition 1 [V p. 194]). Its radius is set by the problem: geometry (M), γ_0, the CMP 102 numbers, and the error term of (1.7). The coupling enters (1.3)–(1.13) nowhere, because (1.3) minimizes A(U) with no factor g_k^{−2} [V p. 357]. The g_k-dependence of Balaban's printed domain U_k^c(Z, α_{0,k}, α_{1,k}) comes from the characteristic functions (the cut), not from Proposition 1. The single exception is R_k in (1.7). So the analogue of Proposition A holds with the radius c(M)R_k^{−1} in place of a fixed radius.
4.3 The strict form (A-σ*) (radius with no g at all) [P-sketch, unprinted; NOT needed]. If the reading 1.5(b) is correct (R_k in (1.7) comes from the data regularity L²R_kε_k, not from diam Z), then the general-ε form of (1.7) has error O(1)(M⁶ε + e^{−R_k}), ε_H/R_k becomes ε_H, and a_σ = a_0(M) is g-free. If reading 1.5(a) is correct, a g-free radius needs a local version of (1.7): B′ lives on Λ (a 100M cube); H_{1,k}B′ decays like e^{−δ dist(·, Λ)} (the (190)-type decay, R-019); in a gauge adapted to the r-neighbourhood of Λ the background obeys |A_0| ≤ O(1)M⁶(1 + r)ε; the shell sum Σ_r (1 + r)^{d}e^{−2δr} is a (d, L) number. This would remove R_k. It needs a localized form of CMP 102 Sect. F and of the Sect. B [13] expansion, which no page I read prints. Grade [I] as a printed statement, [P-sketch] as an argument. The chain does not use it (§3).
4.4 Why the R_k-factor costs nothing. Every g-dependence that A-σ′ adds is a power of y = log g_k^{−2}. The Schwarz factor α_{1,k}/a_σ(k) still carries the factor g_k. So S′ → 0, and (J-σ) stays a finite list of upper bounds on γ. [P]

## 5. Resulting status

- (A-σ*) as worded by JC_SIGMA_VERIFY §3.4 (fixed radius, no g): NOT proved. It is not needed. It holds under reading 1.5(b) [I], or by the local argument 4.3 [P-sketch, unprinted].
- Proposition A-σ′ (radius a_σ(k) ≥ a_0(M)(log g_k^{−2})^{−p_R}): REDUCED [R] to printed Balaban statements, with [P]/[P-sketch] glue. Printed inputs [V this session]: CMP 122 I Proposition 1 and (1.78)–(1.80) (pp. 194–195); the general-ε extension (p. 193); CMP 122 II (1.7)–(1.9), (1.12)–(1.13) and "valid for g^c-valued fields … the generalization is obvious" (pp. 358–359); CMP 102 Proposition 4, (97)–(98) (pp. 292–293); CMP 102 (172)–(173) (p. 305). Ledger inputs: R-004 (γ_0), R-018 (U_{k,Z} obeys CMP 102 Thm 1; curvature of averages), R-019 ((172) ball, (190) decay), K-039 (half of the (172) radius), N-060 (K_av, k_av^c; number waits for the pre-existing empty slot c_N), H-270, SOURCES_FX_D (R_k ≤ C_Ry^{p_R}). Glue: Steps 2, 5, 6 [P-sketch]; Steps 3 (Neumann), 4 (uniform contraction ⇒ holomorphy), 7 (identification) [P]. The thresholds ε_C (the power p_C) and the O(1) of (1.7) and of the p. 193 extension are unnamed Balaban constants, (d, L) only; they are not computed here.
- (J-c), σ half: REDUCED [R]. Proposition Σ-B [P] given Proposition A-σ′ [R], (Rd1) [I, constants only], (Rd2) [R], (T1) [R], H-270, under the amended (J-σ) of §3.3. The former residue (A-σ*) [I] is replaced by Proposition A-σ′ [R]. No new [I] reading enters; reading 1.5 is not used.
- R-035 (B-S): REDUCED [R]. Proposed VERIFY text: residue list "(W6*) [I] and (A-σ*) [I]" becomes "(W6*) [I]"; "(A-σ*)" is replaced by "Proposition A-σ′ [R] (SOURCES_A_SIGMA_STAR)", and (J-σ) by the §3.3 version. If a verifier confirms this file, (W6*) is the only [I] residue of R-035. (Rd1) stays a constants-only [I].
- H-116 (H-U): CONDITIONAL. Inputs without a ledger row: (W6*) only, once this file is verified; plus the items listed in SOURCES_L1_E_VERIFY (B-T2, X-002, the R-035 list, R-043, the coarsest-scale H-191 radius). γ ≤ γ_Φ(M) stays absorbed in (J-σ)(d).
- Canon N-470: replace the JC_SIGMA_VERIFY (J-σ) entry by §3.3 (adds (e), (f), and the factor (log γ^{−2})^{p_R} in (b); the exponent in (a) grows by (2d+1)p_R). Acyclic: all arguments are left of N-470.

## 6. Verifier focus

1. Step 3: that (1.7) at general ε has error O(1)(M⁶R_kε + e^{−R_k}) (the p. 359 "generalization is obvious" plus the p. 358 replacement rule), and the Neumann step at complex A_0.
2. Step 4: that the contraction constant of (1.13) is uniform in the complex data on the ε_*-polydisc, with threshold ε_C g-free. The Lipschitz bound uses CMP 102 (98) on the range a_3 and the inverse bound 2/λ.
3. Step 5: that B_5M⁵ε_* + ρ_b fits in the half of the (172) radius left by K-039.
4. Step 6: the Cauchy bound for C_K(k), and the y^{dp_R} from |supp ζ_0|.
5. §3.1: that only the ratio a_σ(k)/α_{1,k} → ∞ is used in the Schwarz step, and the new exponent of S′.
6. Reading 1.5: if a verifier can fix the origin of R_k in (1.7) on a page, the strict (A-σ*) may follow (4.3).
Pages to re-read: CMP 122 I pp. 193–195; CMP 122 II pp. 357–359; CMP 102 pp. 292–293, 305.

## 7. Report (≤100 words)

Balaban treats the released problem in CMP 122 I Proposition 1 (p. 194), proved on CMP 122 II p. 359 by a contraction with (1.9), CMP 102 Proposition 4, and "valid for g^c-valued fields". Writing out the thresholds gives Proposition A-σ′: analyticity of V_Λ, U_0, K on a radius a_0(M)(log g_k^{−2})^{−p_R}. The only g-dependence is R_k from (1.7). The strictly g-free (A-σ*) is not proved and not needed: the Schwarz step needs only a_σ/α_{1,k} → ∞. With amended (J-σ), Proposition Σ-B holds; (A-σ*) leaves R-035 and H-116; (W6*) remains. Unverified.

STATUS: COMPLETE (unverified). The /tmp render folder /tmp/asig.LMeF was deleted after use.
