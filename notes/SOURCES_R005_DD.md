# SOURCES_R005_DD — the D*D, Δ and P_1 entries of CMP 102 (190) (ledger row R-005; consumer R-010)

Written 2026-10-29 by Claude (Opus 5.5), derivation agent. Ids follow IDS.md. File-local labels ((Λ1)–(Λ3), (C1)–(C3), T1–T6, term 1–term 4, (J-on), (HJ)) are not global ids.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
No existing file was edited. PLAN.md was not changed. sync.sh was not run. New files: this file and numerics/r005_cz.py.
Inputs read: SOURCES_L1_C §6, SOURCES_L1_C_VERIFY §6 and §8, SOURCES_L1_D §1–§2, SOURCES_A4_D189 §2 and §6, SOURCES_A1_KERNEL §12, TRUST_LEDGER rows R-005, R-010, R-014, R-018, R-019.
Page images read (pdftoppm -r 150, fresh folder /tmp/r005dd, deleted after use; PDF page = journal page − first page + 1):
- CMP 99 (Propagators) pp. 392, 393, 394, 395, 396, 397, 398, 399, 400, 418, 419, 420, 421, 422, 423.
- CMP 102 (Variational) pp. 296, 297, 298, 299, 300, 305, 306, 307, 308, 309.
- CMP 109 pp. 262, 263, 270, 271, 272, 273.
Text layer only (not imaged, tagged so): CMP 99 pp. 425–426 ((3.150)–(3.153)); CMP 102 p. 287 ((44)–(50)). CMP 102 p. 300 was imaged as well.
Grades: [V] read on a page image in this session; [P] proved here, every step written; [P-sketch] steps written, one or more not in full; [R] reduced to a printed statement or a project result named; [I] inferred, not proved.

## 0. Result in one paragraph

The open kernel bound (O-π) of SOURCES_L1_C 6.5 is not needed. Balaban prints the identity that removes it: on the Landau slice, Δ′_π acts with the derivative on the left only (CMP 102 (138) [V p. 299]). With that identity, CMP 99 Thm 3.3 (Laplace bound for G_0) [V], CMP 102 (130) (Laplace bound for H_0) [V] and CMP 99 (3.49) (kernel of DPD*) [V], all five entries of (190) and the P_1 entry hold with exponential decay at the rate of the sup entry. The proof needs the "on-shell" condition: the J inside the operators is the J of the background U. This covers CMP 102 Prop. 9 as stated (real and complex U in the CMP 99 class (3.35)–(3.38), complex B). It does not cover the off-shell points (U, J independent) of the CMP 109 spaces U^c_j, which CMP 109 §3 and SOURCES_L1_D (R-dec), (R-dom) use. There, the P_1, sup and ∇ entries hold, and the Δ entry holds for the H_0- and G̃-led terms. The Δ entry of the H-led term (the Landau-gauge propagator H of the linearizing map (47)) is open off-shell. The exact obstruction: off-shell RD*H ≠ 0, and one term of Δ′_πH then needs a Hölder bound on J, which the spaces U^c_j do not give.

## 1. The exact form the consumers need

1.1 CMP 102 (190) and Prop. 9 [V pp. 308–309]. "|δ𝓗_μ(B, x)/δB_ν(y′)|, |∇_x δ𝓗_μ/δB_ν(y′)|, ‖ζ∇ δ𝓗/δB(y′)‖_β, |D^{η*}_{U_k}D^η_{U_k} δ𝓗_μ/δB_ν(y′)|, |Δ^η_{U_k} δ𝓗_μ/δB_ν(y′)| ≤ O(1)[(L^jη)^{−1}, (L^jη)^{−2}, (‖ζ‖^ξ_β + |ζ|)(L^jη)^{−2−β}, (L^jη)^{−3}, (L^jη)^{−3}](L^{j′}η)^{−d}exp(−⅛δ_0d(y, y′)) for x ∈ Δ(y), or supp ζ ⊂ Δ̃(y), y ∈ Λ_j, y′ ∈ Λ_{j′}." Prop. 9: 𝓗 "is an analytic function of B, and also of the external gauge field configuration U satisfying the regularity conditions (3.35)–(3.38) [5], or (1.7)–(1.9) [6] … and its functional derivative (182) satisfies the inequalities (190)."
 Write w(y, y′) := (L^{j′}η)^{−d}e^{−δ_*d(y,y′)}, δ_* := ⅛δ_0, and X(x, y′) := δ𝓗_μ(B, x)/δB_ν(y′).

1.2 CMP 109 §3 [V pp. 271–273]. (3.8) δH_j := ⟨(δH_j/δB)(B(t)), ⟨(δQ_j/δA)(ηtH_k(B′)), L^jηζ_□H_k(B′)⟩⟩. (3.9): "|δH_j| ≤ B_3exp(−½δ_0dist^{(ξ)}(X, □) − ½δ_0M(L^jη)^{−1})×2L^jη|ζ_□H_k(B′)| on X, and the same for derivatives and the second order operators applied to it." (3.13): "E^{(j)}(X, exp iξAU, (L^{j−1}η)³J + Δ^ξ_UA − P_1A + F_1(U, A))". (3.14): "|A|, |P_1A|, |∇^ξ_UA|, |Δ^ξ_UA| < α_2 on X." (3.15): "r max{|δH_j|_X, |P_1δH_j|_X, |∇^ξ_UδH_j|_X, |Δ^ξ_UδH_j|_X} = ⅓α_2"; "We assume also that ε_1 is so small that H_j(B(t)) satisfies (3.14) with 1/3α_2". (3.16): the domain is "U^c_j(X, ½α_0, ½α_1, α_0) ∩ {(U, J): U, J satisfy the conditions (i)–(iii) for j = k + 1 …}". p. 273: "These functions are given by (179), (180) [15], and we replace the configurations U_{k+1}, J_{k+1} occurring in operators there by the configurations U, J."
 So the consumer needs three kernel bounds, all with the constant B_3 and the rate of the sup entry (CMP 109 renames ⅛δ_0 as δ_0; SOURCES_L1_D §1 notes the renaming):
 (C1) |P_1X|, (C2) |∇^ξ_UX|, (C3) |Δ^ξ_UX|, each ≤ B_3 × (the sup-entry weight in ξ-units).
 In η-units: |∇X| ≤ C(L^jη)^{−2}w, |Δ_UX|, |P_1X| ≤ C(L^jη)^{−3}w. In ξ-units the factors (L^jη)^{−1} per derivative are absorbed, so one B_3 serves all entries [P: scaling].
 The consumer does NOT use the D*D entry. D*D appears in CMP 109 p. 272 only on the left side of the identity "D*D + DRD* = D*D + DD* − DPD* = Δ^ξ_U − P_1 + (lower order, local operator)" [V], which converts D*D into Δ_U and P_1. The bounds (3.14)–(3.15) are stated for P_1 and Δ_U. So SOURCES_L1_C_VERIFY V6.5(c) ("P_1 = Δ_U − D*D + (local)", hence D*D is used) is CORRECTED: P_1 is bounded directly (§3 below), not through D*D.
 SOURCES_L1_D §2.2 restates the same need as (R-dec) (kernels with P_1, ∇^ξ_U, Δ^ξ_U applied, "for W in the field class of B(t) (complex included)") and (R-dom) ((3.14) for H_j(B(t)) with ⅓α_2).

1.3 Which arguments are needed. Settled [P from 1.2 and CMP 109 pp. 262–263 [V]].
 (a) Complex arguments are needed. The function (3.15) must be analytic on the space (3.16). That space consists of G^c-valued U ("The gauge field configuration U is defined at bonds of X and has values in G^c", p. 262 [V]). So (C1)–(C3) are needed at complex U, and so at complex B(t) = Q_j(ηtH_k(B′)). Real arguments alone do not suffice. The verifier's objection to "needed only at complex B" (L1_C_VERIFY V6.5(c)) stands in the direction "real arguments are also needed": real points are a subset of the domain.
 (b) Off-shell arguments are needed. In U^c_j the variable J is independent of U: "the configuration J is also defined at bonds of X and has values in g^c" and (1.14) "|J| < γ_0 on X" [V p. 262]; Balaban states why on p. 272 [V]: "this is the reason why we do not formulate second order regularity conditions … but we replace the expression J_j by the new variable J". So (C3) is needed at pairs (U, J) with J ≠ J(U) := D*η^{−2}Im ∂U (analytically continued). I call J = J(U) "on-shell".
 (c) CMP 102 Prop. 9 itself needs only on-shell arguments: the class (3.35)–(3.38) of CMP 99 [V p. 396] constrains U, and J there is J(U).

## 2. Printed inputs

Operators (CMP 99, all [V]). D* (3.8), (3.9) p. 392. "⟨A, ΔA⟩ = ⟨A, D*DA⟩ + ⟨A, Δ′A⟩", Δ′ given by plaquette terms with η^{−2}(Re U(∂p) − 1) and η^{−2}Im U(∂p) (3.10) p. 392; "the operator Δ′ will be a bounded, small operator". J = D*η^{−2}Im ∂U (3.11) p. 392. R "is an orthogonal projection in the Hilbert space L²(Ω_0, g) onto the subspace R = Δ^η_UN(Q′)" (3.21) p. 394; "Rf = (I − G′Q′*(Q′G′²Q′*)^{−1}Q′G′)f" (3.25), G′ = (Δ′_a)^{−1}, Δ′_a = (Δ^η_U + Q′*aQ′)↾Ω_0 p. 394. "Δ_a = Δ + DRD* + Q*aQ" (3.26), G = (Δ_a↾Ω_0)^{−1} (3.27) p. 395. ⟨A, Q*aQA⟩ = Σ_j aΣ_{b∈Λ_j}(L^jη)^{d−2}|(Q_j(U)A)(b)|² (3.16) p. 393. P := I − R.
Bounds (CMP 99). Thm 3.1 (3.42) p. 397 [V]: "|(G′(U)λ)(x)|, |(∇_UG′(U)λ)(x)|, |(G′(U)∇*_Uλ)(x)|, |(Δ_UG′(U)λ)(x)| ≤ B_0[(L^jη)², L^jη, L^jη, 1]e^{−δ_0d(y,y′)}|λ| for x ∈ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′)". (3.43)–(3.44) p. 398 [V]: Hölder bounds, and "|(∇_UG′(U)∇*_Uλ)(x)| ≤ B′_0(ε)e^{−δ_0d(y,y′)}(‖λ‖^{ξ′}_ε + |λ|)". (3.49) p. 399 [V]: "[|P(x, x′)|, |(DP)_μ(x, x′)|, |(PD*)_ν(x, x′)|, |(DPD*)_{μν}(x, x′)|] ≤ O(1)[1, (L^jη)^{−1}, (L^jη)^{−1}, (L^jη)^{−2}](L^{j′}η)^{−d}e^{−(1/2)δ_0d(y,y′)} for x ∈ Δ(y), y ∈ Λ_j, x′ ∈ Δ(y′), y′ ∈ Λ_{j′}". Thm 3.3 p. 399 [V]: "the operator G(U) (a = 1) satisfies the inequalities (3.42)–(3.47), with G′(U) replaced by G(U) and λ replaced by a function J defined at bonds". So the Laplace entry of (3.42) holds for G = Δ_a^{−1}. Thm 3.4 p. 400 [V]: "the operators G′(U), (Q′(U)G′²(U)Q′*(U))^{−1}, R(U), G(U) extend to configurations U′U for α_1 ≤ a_1 as analytic functions of A. The extended operators satisfy all the inequalities of Theorems 3.1–3.3 correspondingly." (3.50)–(3.53) p. 400 [V]: Δ_{U′U} = Δ_U − V′_1(A), V′_1 a first order operator with coefficients A, D*_UA and F′_{1,k}(i ad A) = O(|A|²).
The π-operators (CMP 99 pp. 419–423 [V]). (3.119) "⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩". (3.120) "= ⟨A, ΔA⟩ − ⟨i[(G′RD*A)(b_−), A(b)] − i[A(b), R_b(G′RD*A)(b_+)] − i[(G′RD*A)(b_−), (DG′RD*A)(b)], J⟩ = ⟨A, ΔA⟩ − ⟨A, Δ′_πA⟩". p. 420: G^{−1} = Δ_π + DRD* + Q*aQ; (3.124) "RD*GQ* = 0, hence QGDR = 0"; (3.126) "HB = GQ*(QGQ*)^{−1}B". p. 421: "G_0 = (Δ + DRD* + Q*aQ)^{−1}", (3.130) G = G_0(I − Δ′_πG_0)^{−1}; "One of the three derivatives there has to be applied either to an expression on the right, or on the left of Δ′_π". (3.132) "|(QGQ*)^{−1}(y, y′)| ≤ O(1)(L^jη)^{−2}(L^{j′}η)^{−d}e^{−δ_1d(y,y′)}" (= R-001). (3.133) the H bounds. (3.136)–(3.137) "|(Δ^{(2)}A)(b)| ≤ O(1)Mα_0(L^jη)^{−2}|A|, b ∈ Δ(y), y ∈ Λ_j … the supremum |A| is taken over several j-blocks surrounding Δ(y)". Thm 3.12 p. 423: the Laplace entry "does not hold for G, G_1" (the π-operators).
Regularity (CMP 99 p. 396 [V]). (3.35) |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2}; (3.36) |∂^{η*}∂^ηA| < O(1)Mα_0(L^jη)^{−3}; complex: (3.37) |A′| < α_1(L^jη)^{−1}, |∇^η_UA′| < α_1(L^jη)^{−2}; (3.38) |D^{η*}_UD^η_UA′| < α_1(L^jη)^{−3}. p. 396–397: "We will prove in another paper that if U′U satisfies the conditions (3.37), (3.38), then it satisfies also (3.35), (3.36) with α_0 replaced by O(1)(α_0 + α_1), but we will not use this fact here."
CMP 102 (all [V]). p. 297: "Δ_a = Δ + DRD* + Q*aQ (the constant a = 1). For the operator Δ_a^{−1} = G we have proved Theorem 3.3 in [5], and especially the bounds (3.42) for the second order operator." (129) "H_0B = GQ*(QGQ*)^{−1}(L^{j(·)}η)^{−1}B", (130) "|(Δ_{U_0}H_{0,μν})(x, y′)| ≤ B_0(L^jη)^{−3}(L^{j′}η)^{−d}e^{−δ_0d(y,y′)}" p. 297–298. (134)–(135) p. 298: "(D*DA_0)_μ(x) + (DD*A_0)_μ(x) = (Δ_{U_0}A_{0,μ})(x) − Σ_ν R(…)η^{−2}[R(U_0(∂p′_{μν}(x))) − 1]A_ν(x + ηe^ν)". (137) p. 298: "Δ_πH = (Δ_π + DRD* + Q*aQ)H − Q*a(L^{j(·)}η)^{−1} = Q*(QGQ*)^{−1}(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1}". p. 299: "Above we have used the equality RD*H = 0. This equality implies also that Δ′_πH simplifies essentially … From this formula we get (138) 2⟨A, Δ′_πHB⟩ = ⟨i[(G′RD*A)(b_−) + R_b(G′RD*A)(b_+), (HB)(b)], J⟩, and G′RD* is a bounded operator in the norm |·|_{(1)}. The properties of HB and J imply the bound (139) |Δ′_πHB|_{(−3)} ≤ O(1)|B|"; (140) "D*DHB = (D*D + DRD*)HB = (D*D + DD*)HB − DPD*HB". p. 306: (179), (180) and "defining G = (Δ_a − Δ^{(2)})^{−1} … the new operator G has exactly the same properties as Δ_a^{−1}". p. 307: (182), (183), (184). p. 308: (185)–(190).
Text layer (not imaged): CMP 102 (45) p. 287: H gives "a minimum of the quadratic form ½⟨A, ΔA⟩ under the restrictions L^jηQ_jA = B on Λ_j, …, RD*A = 0", "L^jηQ_jHB = B on Λ_j, RD*HB = 0"; (47) "A = A′ − HD(A′)". CMP 102 p. 300 [V, image read after the first draft of this line]: "Multiplying Eq. (133) by G = Δ_a^{−1} … By (131) we have the equality GP_0* = G − GQ*(QGQ*)^{−1} = G̃", and (143). With (131) [V p. 298] "P_0 = I − GQ*(QGQ*)^{−1}Q", GP_0* = G − GQ*(QGQ*)^{−1}QG; the printed right side drops the final factor QG (misprint) [P]. So G̃ = G − GQ*(QGQ*)^{−1}QG, the constrained inverse, with G = Δ_a^{−1}.

Key fact that SOURCES_L1_C missed [V p. 297]: CMP 102's G̃ is built from Δ_a = Δ + DRD* + Q*aQ, the operator of CMP 99 Thm 3.3, for which the Laplace bound holds. It is not built from the π-operator G (or G_1) of Thm 3.12, for which the Laplace bound fails. So L1_C's input (L-G) ("G̃ a G_1-type operator", hence no Laplace bound) is CORRECTED.

## 3. Composition lemma and the P_1 entry

Lemma K (composition) [P given CMP 96 Lemma 2.1 (R) and CMP 99 p. 398 (V)]. Kernels are densities with respect to η^d on bonds or sites; a block y′ ∈ Λ_{j′} carries the measure (L^{j′}η)^d, so Σ_{x′∈Δ(y′)}η^d(L^{j′}η)^{−d} = 1. Let |K(x, x′)| ≤ c_K(L^{j}η)^p(L^{j′}η)^{−d}e^{−a_Kd(y,y′)} (x ∈ Δ(y), y ∈ Λ_j, x′ ∈ Δ(y′), y′ ∈ Λ_{j′}) and |Z(x′, y″)| ≤ c_Z(L^{j′}η)^q(L^{j″}η)^{−d}e^{−a_Zd(y′,y″)} with a_Z < a_K. Then
 |Σ_{x′}η^dK(x, x′)Z(x′, y″)| ≤ c_Kc_Z c_s(q) S(a_K − a_Z − κ_q)(L^jη)^{p+q}(L^{j″}η)^{−d}e^{−a_Zd(y,y″)},
with S(a) := sup_yΣ_{y′}e^{−ad(y,y′)} (finite, CMP 96 (2.61) [R]) and c_s(q), κ_q the cost of the scale shift (L^{j′}η)^q → (L^jη)^q (CMP 99 p. 398 [V]: "Using Lemma 2.1 in [4] we may replace the factor (L^jη)^α by (L^jη)^β(L^{j′}η)^γ with β + γ = α"; κ_q → 0 as the layer thickness RM grows [R, CMP 96 (2.36), (2.60)]).
Proof. Sum over x′ ∈ Δ(y′) first (measure 1). Use d(y′, y″) ≥ d(y, y″) − d(y, y′). Then e^{−a_Kd(y,y′)}e^{−a_Zd(y′,y″)} ≤ e^{−a_Zd(y,y″)}e^{−(a_K−a_Z)d(y,y′)}. Shift the scale factor and sum over y′. □
Consequence: the rate of a composition is the rate of the inner kernel when the outer kernel decays faster. No rate is lost. The same holds when K is given in the operator form of (3.42) (|(Kλ)(x)| ≤ c e^{−ad(y,y′)}|λ| for supp λ ⊂ Δ(y′)): split Z(·, y″) into its block pieces.

Theorem P (the P_1 entry) [P given the sup entry, (3.49) [V], Thm 3.4 [V], R-022 for the CMP 109 transfer]. Let U be real with (3.35), or complex U′U with (3.37) (any J: P does not depend on J). Let X be any kernel with |X(x, y′)| ≤ C_0(L^jη)^{−1}w(y, y′), rate δ_* = ⅛δ_0. Then
 |(DPD*X)(x, y′)| ≤ C_PC_0(L^jη)^{−3}w(y, y′),  C_P := O(1)_{(3.49)}c_s(−1)S(⅜δ_0 − κ).
Proof. (3.49) gives |DPD*(x, x′)| ≤ O(1)(L^jη)^{−2}(L^{j′}η)^{−d}e^{−½δ_0d(y,y′)}. Apply Lemma K with a_K = ½δ_0 > a_Z = ⅛δ_0, p = −2, q = −1. For complex U′U, Thm 3.4 [V p. 400] extends R, hence P = I − R, with the same bounds; CMP 99 p. 400 (text layer) says so for (3.49) explicitly ("the operator P(U′U) satisfies the bounds (3.49)"). □
 In CMP 109, P_1 = D^ξPD^{ξ*} (p. 272 [V]: D*D + DD* − DPD* = Δ^ξ_U − P_1 + local), so Theorem P is (C1) in η-units. The P_1 entry is therefore proved at real and complex U, on- and off-shell, relative to the sup entry at the same point. At complex B the sup entry is the R-019 item (its residue: (189) at complex A′ [I]).

## 4. Laplacians of the three leftmost factors

The sup derivation of (190) (SOURCES_A4_D189 §6.3 [P given (189)], SOURCES_L1_C 6.2 [P, verified V6.2]) writes
 X = H_0 + G̃Y − H[𝔇(H_0 + G̃Y)]   (6.2.1 of L1_C),  Y := WH_0 − V″(I + N)^{−1}G̃WH_0, W := Δ^{(2)} − V″, N := G̃V″,
and bounds each term as Σ_z|K(x, z)||Z(z, y′)| with K ∈ {H_0, G̃, H}. A derivative in x acts on K only. So the Δ entry follows from Laplace bounds on the three leftmost factors, by the weight-ratio argument of L1_C 6.4 [P, verified V6.4]. Here are the three bounds.

4.1 (Λ1) H_0 [V statement; R proof]. (130) [V p. 298]: |(Δ_{U_0}H_0)(x, y′)| ≤ B_0(L^jη)^{−3}(L^{j′}η)^{−d}e^{−δ_0d(y,y′)}, with H_0 of (129) (factor (L^{j′}η)^{−1} included). Its proof is one line: Δ_UH_0 = (Δ_UG)Q*(QGQ*)^{−1}(L^{j′}η)^{−1} with G = Δ_a^{−1}; the Laplace entry of (3.42) for G (Thm 3.3 [V]) and the kernel bound of (QGQ*)^{−1} for this G (the R-001 family, SOURCES_A1_KERNEL route G_0 → G → G_1) give it by Lemma K [R]. Complex U′U: Thm 3.4 [V] for G and the complex form of the R-001 bound [R]. J does not enter H_0. Valid on- and off-shell.

4.2 (Λ2) G̃ [P given Thm 3.3, (130), (3.137)].
 (a) Identity [P]. For an invertible operator K with QKQ* invertible put T(K) := K − KQ*(QKQ*)^{−1}QK. Then u = T(K)f is the unique u with Qu = 0 and K^{−1}u − f ∈ Ran Q*. (Check: QT(K)f = 0; K^{−1}T(K)f = f − Q*(QKQ*)^{−1}QKf. Uniqueness: Qu = 0 and K^{−1}u = Q*ω give QKQ*ω = 0, so ω = 0 and u = 0.) Let G_0 := Δ_a^{−1}, G_n := (Δ_a − Δ^{(2)})^{−1} (CMP 102 p. 306), G̃_0 := T(G_0), G̃ := T(G_n). For u := G̃f: Qu = 0 and G_0^{−1}u − (f + Δ^{(2)}u) = G_n^{−1}u − f ∈ Ran Q*. So u = G̃_0(f + Δ^{(2)}u), that is
  G̃ = (I − G̃_0Δ^{(2)})^{−1}G̃_0 = G̃_0(I − Δ^{(2)}G̃_0)^{−1}
 whenever the Neumann series converges. This also shows that (180) (with G̃) and (143) with Δ^{(2)} moved to the left are the same equation.
 (b) Bounds. G̃_0 = G_0 − H_0^uQG_0 with H_0^u := G_0Q*(QG_0Q*)^{−1}. Sup: |G̃_0λ(x)| ≤ C(L^jη)²e^{−a_0d(y,y′)}|λ| ((3.42) for G_0 by Thm 3.3; the H_0 sup bound "(3.133) [5]" asserted on p. 297 [V]; Q local; Lemma K). Laplace: Δ_UG̃_0 = Δ_UG_0 − (Δ_UH_0^u)QG_0, so |Δ_UG̃_0λ(x)| ≤ C_Λe^{−a_0d(y,y′)}|λ| (Thm 3.3 Laplace entry, (130), Lemma K). Neumann: by (3.137), |(Δ^{(2)}G̃_0λ)(b)| ≤ O(1)Mα_0(L^jη)^{−2}·C(L^jη)²e^{−a_0d+O(1)}|λ|, a kernel of size ν = O(Mα_0) with rate a_0. A4_D189 T2α [P] gives (I − Δ^{(2)}G̃_0)^{−1} = I + N_2, |N_2| ≤ [νS/(1 − νS)]e^{−(1−α)a_0d}. Then Δ_UG̃ = (Δ_UG̃_0)(I + N_2) and
  |(Δ_UG̃λ)(x)| ≤ C_Λ(1 + νS′)e^{−(1−α)²a_0d(y,y′)}|λ|.
 J enters only through Δ^{(2)} (via H*J, (3.136)) and needs only a sup bound on J. So 4.2 holds on- and off-shell, at real U ((3.35)) and complex U′U ((3.37), Thm 3.4), given the sup bound for H*J at that point [R: Thm 3.12 with J a sup-bounded variable, the reading CMP 109 p. 273 uses].
 Correction recorded: SOURCES_L1_C 6.3 (L-G) and 6.6 "Obstruction" read G̃ as "a G_1-type operator" and applied the Thm 3.12 exception to it. CMP 102 p. 297 [V] builds G from Δ_a = Δ + DRD* + Q*aQ, which is the Thm 3.3 operator G_0, not Δ_π + DRD* + Q*aQ. Thm 3.12's exception concerns the π-operators. So the Laplace entry holds for G̃.

4.3 (Λ3) H, the Landau-gauge propagator of (47) — on-shell [P given (3.124), (138), (3.42), (3.49), Thm 3.3, (130)].
 (a) Identity, any J [P]. Write G_π := (Δ − Δ′_π(J) + DRD* + Q*aQ)^{−1} (CMP 99 p. 420, with Δ′_π the form (3.120) at the J in use) and H^u := G_πQ*(QG_πQ*)^{−1}. Since G_π^{−1} = G_0^{−1} − Δ′_π(J):
  G_0^{−1}H^u = Q*ω + Δ′_π(J)H^u, ω := (QG_πQ*)^{−1}; so H^u = G_0Q*ω + G_0Δ′_π(J)H^u.
 Apply Q and use QH^u = I: ω = (QG_0Q*)^{−1}(I − QG_0Δ′_π(J)H^u). Substitute:
  H^u = H_0^u + G̃_0Δ′_π(J)H^u.   (4.3.1)
 The same holds with the factor (L^{j′}η)^{−1}: H = H_0 + G̃_0Δ′_π(J)H.
 (b) On-shell simplification [V + P]. On-shell (J = J(U)), RD*H = 0: (3.124) [V p. 420] for real U, and by analytic continuation in U for complex U′U (both sides analytic, Thm 3.4; identity theorem on a connected domain that contains the real class) [P]. Then (138) [V p. 299] holds: 2⟨A, Δ′_πHB⟩ = ⟨i[(G′RD*A)(b_−) + R_b(G′RD*A)(b_+), (HB)(b)], J⟩. With tr(i[λ, A]J) = tr(λ·i[A, J]) and tr(Ad_u(X)Y) = tr(X Ad_{u^{−1}}Y), the right side is ⟨G′RD*A, Γ(HB, J)⟩ with the site-local map
  Γ(A, J)(x) := Σ_{b: b_−=x} i[A(b), J(b)] + Σ_{b: b_+=x} R_b^{−1}(i[A(b), J(b)]),  |Γ(A, J)(x)| ≤ c_Γ max_{b∋x}|A(b)||J(b)|, c_Γ ≤ 8d.
 G′ is symmetric, R is an orthogonal projection ((3.21) [V]), and (D*)^T = D ((3.8) [V]). So
  Δ′_πH = ½DRG′Γ(H, J)  on-shell.   (4.3.2)
 For complex U′U, (4.3.2) holds by analytic continuation (both sides analytic in U; J = J(U) analytic) [P]. (4.3.2) has the derivative on the left only. This is the resolution of (O-π): the "derivative on the right of Δ′_π" (CMP 99 p. 421 [V]) appears only in terms that contain G′RD*H, and these vanish on-shell.
 (c) Kernel of DRG′ [P given (3.42), (3.49)]. DRG′ = DG′ − (DP)G′. (3.42): |DG′λ(x)| ≤ B_0L^jηe^{−δ_0d}|λ|. (3.49) and (3.42) with Lemma K: |(DP)G′λ(x)| ≤ O(1)B_0c_sS(½δ_0 − κ)L^jηe^{−(½δ_0−κ)d}|λ|. So |DRG′λ(x)| ≤ C_{RG}L^jηe^{−a_Rd(y,z)}|λ| for supp λ ⊂ Δ(z), a_R := ½δ_0 − κ.
 (d) Bound [P given (J-on)]. Hypothesis (J-on): |J(b)| ≤ c_J(L^jη)^{−3} for b in the Ω_j-layer, c_J = O(1)Mα_0 (real U; (3.36) [V], and R-018 "c_J = O(α_0)" [R]) or c_J = O(1)M(α_0 + α_1) (complex U′U with (3.37)–(3.38); CMP 99 pp. 396–397 [V] asserts this, proof "in another paper" [R]). The sup entry of H ((3.133) with the factor (L^{j′}η)^{−1} [V p. 422]) gives |Γ(H(·, y′), J)(z)| ≤ c_Γc_JO(1)(L^{j_z}η)^{−4}(L^{j′}η)^{−d}e^{−½δ_0d(z,y′)} (δ_0 the common rate, CMP 99 p. 423 [V]). Lemma K with (c):
  |(Δ′_πH)(x, y′)| ≤ C_πc_J(L^jη)^{−3}(L^{j′}η)^{−d}e^{−a_πd(y,y′)}, a_π := (1 − α)½δ_0 − κ.
 Then (4.3.1), Lemma 4.2(b) for Δ_UG̃_0 and (130) give
  |(Δ_UH)(x, y′)| ≤ (B_0 + C′c_J)(L^jη)^{−3}(L^{j′}η)^{−d}e^{−a_Hd(y,y′)}, a_H := (1 − α)a_π − κ > ⅛δ_0.   (4.3.3)
 Cross-check (route II, Balaban's own): (137) [V], (138) [V], (3.10) Δ = D*D + Δ′ [V], (140) [V], (135) [V] and (3.49) give the same kernel bound term by term (Q*(QGQ*)^{−1} by (3.132) = R-001; Q*a local; Δ′, W local and O(Mα_0)(L^jη)^{−2}; DPD*H by (3.49)). Balaban prints only the weighted-sup-norm form |Δ_{U_0}HB|_{(−3)} ≤ O(1)|B| (p. 299 [V]); the kernel form above is new here.

## 5. The Δ and D*D entries on-shell

Theorem Δ [P given the sup derivation of (190) (A4_D189 §6.3, which rests on (189) = R-005 core), §4, Lemma K]. Let (B, U) be a point where the sup derivation holds: U real with (3.35)–(3.36), or complex U′U with (3.35)–(3.38); J = J(U); B in the analyticity ball of Prop. 9 (real or complex; at complex B the sup entry carries the R-019 residue). Then
 |Δ_{U_0}X(x, y′)| ≤ C_Δ(L^jη)^{−3}(L^{j′}η)^{−d}e^{−δ_*d(y,y′)}, δ_* = ⅛δ_0,  C_Δ := c_Λ·C_Σ,
where C_Σ is the constant of the absolute sup derivation (Σ_z|K||Z| ≤ C_Σ(L^jη)^{−1}w) and c_Λ := max{B_0/B_0^{sup}(H_0), C_Λ(1 + νS′)/C^{sup}(G̃), (B_0 + C′c_J)/C^{sup}(H)}·c_s·S(margin), the ratios of the Laplace constants (4.1, 4.2(b), 4.3.3) to the sup constants of the same leftmost factors.
Proof. In X = H_0 + G̃Y − H[𝔇(H_0 + G̃Y)], Δ_U acts on the leftmost factor: Δ_UX = Δ_UH_0 + (Δ_UG̃)Y − (Δ_UH)[𝔇(…)]. For each K ∈ {H_0, G̃, H} the Laplace kernel is ≤ (L^jη)^{−2}× (ratio constant) × (sup kernel of K), at a rate ≥ (1 − α)²·½δ_0 − κ, which exceeds the rate of the inner kernels (≤ (1 − α)³¼δ_0, A4_D189 6.3). Lemma K then keeps the inner rate and multiplies by S(margin). The weight ratio (L^jη)^{−2} depends on the output scale only (L1_C 6.4, verified V6.4). □
 Background of Δ in (190). (190) writes Δ^η_{U_k}. If U_k means the new minimizer exp(iη𝓗)U_0 rather than U_0, (3.50)–(3.53) [V p. 400] give Δ_{U_k} = Δ_{U_0} − V′_1(η𝓗) with V′_1 first order, coefficients 𝓗, D*𝓗 and O(|𝓗|²); with |𝓗| ≤ ε_2(L^jη)^{−1}, |∇𝓗| ≤ ε_2(L^jη)^{−2} (Prop. 9: (19)–(21) with ε_2 = B_5ε_1 [V p. 309]) and the ∇ entry, the change is ≤ O(ε_2)C_0(L^jη)^{−3}w [P-sketch: (3.53) is printed for 0-forms; the 1-form version is componentwise].

Theorem DD [P given Theorem Δ, Theorem P, (135)]. Under the hypotheses of Theorem Δ,
 |D^*DX(x, y′)| ≤ (C_Δ + C_PC_0 + c_WMα_0C_0)(L^jη)^{−3}w(y, y′).
Proof. (i) RD*X = 0. CMP 102 p. 297 [V]: "The configuration A′_1 satisfies RD*A′_1 = 0"; RD*H = 0 ((45) text layer; (3.124) [V]); so RD*𝓗 = RD*A′_1 − RD*HD(A′_1) = 0 for every B. The solution 𝒜_0 of (180) equals A′_1 − H_0B by the uniqueness of Prop. 6 (p. 300 [V]: (143) "has all the properties of Eq. (111) and Proposition 6 is valid for it also") [R]. CMP 109 p. 272 [V] states the same ("H_j satisfies the Landau gauge condition RD*H_j = 0"). R and D* do not depend on B, so RD*X = 0; at complex B and complex U by analytic continuation [P]. (ii) DD*X = D(R + P)D*X = DPD*X. (iii) (135) [V]: (D*D + DD*)A = Δ_UA − WA with W the plaquette term, |W| ≤ c_WMα_0(L^jη)^{−2} by (3.35) [P-sketch: η^{−2}|R(U(∂p)) − 1| is bounded by the field strength in the gauge of (3.35)]. So D*DX = Δ_UX − DPD*X − WX. Apply Theorem Δ, Theorem P and the sup entry. □
 Note. CMP 102 (140) [V] uses the same three steps in the |·|_{(−3)} norm for H. So Theorem DD is Balaban's route in kernel form.

5.1 Summary on-shell. All five entries of (190) and the P_1 entry hold with rate ⅛δ_0, constants depending on d and L only (given Mα_0 ≤ a_0, ε_1 small), uniform in k, j, η, volume and {Ω_j}, at real and complex U in the CMP 99 class (3.35)–(3.38) and at complex B in the Prop. 9 ball, relative to the sup entry (A4_D189 §6.3 [P given (189)]) and, at complex B, to R-019. This is CMP 102 Prop. 9 as stated.

## 6. Off-shell: what holds, the obstruction, repairs

Setting: CMP 109 spaces U^c_j: U G^c-valued with first-order conditions (1.11)–(1.13), J an independent g^c-valued variable with |J| < γ_0 (1.14) [V p. 262]; operators of (179)–(180) with U_{k+1}, J_{k+1} replaced by U, J (p. 273 [V]). Reading [I-reading]: Δ′_π and Δ^{(2)} are evaluated at the variable J (reading B). The alternative reading (H defined by (45) from U alone, so Δ′_π = Δ′_π(J(U))) needs |J(U)|, which the first-order conditions do not bound (only the trivial lattice bound |J(U)| ≤ 4dα_0ξ^{−1} in ξ-units, too large by ξ^{−1} = L^j) [P]; under it even the sup entries of H need (3.36). So reading B is the one in which Balaban's construction works at all, and I use it.

6.1 What holds off-shell [P relative to the sup and ∇ entries at that point]. Theorem P (P_1). Lemma 4.1 (H_0, J-free). Lemma 4.2 (G̃; J enters only through Δ^{(2)} with a sup bound). Hence the Δ entry holds for the H_0- and G̃-led terms of X. The ∇ entry (L1_C 6.4) needs only sup/∇ kernels and holds.

6.2 Off-shell RD*H ≠ 0 [P]. For λ ∈ N(Q′): G′RD*Dλ = G′RΔ_Uλ = G′Δ_Uλ = λ (RΔ_Uλ = Δ_Uλ by (3.21); G′Δ′_aλ = λ and Q′λ = 0). From (3.117) [V p. 419] the quadratic part of the action obeys ΔDλ = Δ′_π(J(U))Dλ exactly. So G_π^{−1}Dλ = DΔ_Uλ − Δ′_π(δJ)Dλ with δJ := J − J(U), and G_πDR = DG′R + G_πΔ′_π(δJ)DG′R. Transposing and using RG′D*Q* = RG′Q′*D̄* = 0 ((3.115), (3.25)):
 RD*H^u = RG′D*Δ′_π(δJ)H^u.
To first order in δJ, ⟨μ, RD*H^uB⟩ = ½⟨G′Rμ, Γ(H_*^uB, δJ)⟩ (H_* the on-shell H), a nonzero linear form in δJ for non-abelian G and generic μ, B. So the Landau condition, which CMP 109 p. 272 invokes for H_j(U, J), holds on-shell only.

6.3 The obstruction [P for the structure; I for "not provable"]. Polarize (3.120): with λ_i := G′RD*A_i,
 ⟨A_1, Δ′_π(J)A_2⟩ = ½[⟨c(λ_1, A_2), J⟩ + ⟨c(λ_2, A_1), J⟩ − ⟨i[λ_1(b_−), (Dλ_2)(b)], J⟩ − ⟨i[λ_2(b_−), (Dλ_1)(b)], J⟩],
c(λ, A)(b) := i[λ(b_−) + R_bλ(b_+), A(b)]. As an operator on A_2 = H: term 1 = ½DRG′Γ(H, J) (bounded, §4.3); term 2 is local in λ_2 (bounded: λ_2 = G′RD*H needs only |H| via G′∇* in (3.42) and PD* in (3.49)); term 3 = DRG′Γ_3(Dλ_2, J) (bounded: Dλ_2 = DG′(RD*H) needs |∇H|); term 4 = ½DRG′D*Γ_4(λ_2, J), Γ_4 local bilinear. The kernel DRG′D* = DG′D* − (DP)G′D* contains ∇G′∇*, which (3.44) bounds only through the Hölder norm of its argument: |∇G′∇*λ| ≤ B′_0(ε)e^{−δ_0d}(‖λ‖_ε + |λ|). The argument Γ_4(λ_2, J) has a Hölder norm only if J has one. U^c_j gives |J| only. With λ_2 ≠ 0 (6.2), term 4 has no bound from the printed inputs, and so neither has Δ_UH = Δ_UH_0 + Δ_UG̃_0Δ′_π(J)H by (4.3.1).
 Size of the failure [I, numerical illustration]. numerics/r005_cz.py computes the ℓ¹ norm of a row of ∂_1G∂_2^* (G = (−Δ_lattice + ℓ^{−2})^{−1}), i.e. its ℓ^∞ → ℓ^∞ norm, on periodic lattices (side 8ℓ). d = 2: ℓ = 2, 4, …, 128 gives 1.483, 1.949, 2.399, 2.843, 3.285, 3.727, 4.168; each doubling adds 0.442 ≈ (2/π)ln 2. d = 4 (ℓ ≤ 6) gives the same values. With ℓ = L^j (block size in lattice units) the sup bound of term 4 can grow like (2/π)j ln L·|λ_2||J|, not uniform in j. That this log survives for Balaban's G′ and for the specific source Γ_4(λ_2, J) is [I].
 The same obstruction applies to (R-dom): the bound |Δ^ξ_UH_j(B(t))| < ⅓α_2 for 𝓗 itself off-shell, through the term −HD(A′) of (179). On-shell it is CMP 102 (136), (139)–(140) [V].

6.4 Repairs (none checked here).
 (R-a) Hölder J. Add ‖J‖^ξ_ε < γ_0′ to (1.14). Then term 4 is bounded by (3.44) with (3.43) for λ_2, and the off-shell Δ entry follows as in §4.3 with terms 1–4 [P-sketch]. Cost [I]: the induction must reproduce the Hölder bound for the new J′ = (L^{j−1}η)³J + Δ_UA − P_1A + F_1 of (3.13), which needs Hölder bounds on Δ_UH_j; (3.45) as printed loses ε at each use, so the exponent bookkeeping across steps is open.
 (R-b) On-shell substitution. Build the operators of H_j on the pair (U_{k+1}(M′(U)), J_{k+1}(M′(U))) of condition (iv) (1.15)–(1.17) [V pp. 262–263], which is on-shell with |J_n| < B_32α′_0(L^nξ)² by (1.17). Then §5 applies. Cost [I]: (3.13) uses R(U)D*_UA = 0 for the variable U; with operators built on a different background the identity of p. 272 must be re-derived.
 (R-c) Accept the on-shell form only, if every later use of the functions is at on-shell pairs. CMP 109 p. 263 [V] says (1.15) is substituted "in place of the variables U, J" in later constructions, but the inductive bound (1.18) is required on all of U^c_j. So (R-c) changes the induction hypothesis [I].

## 7. Constants in the form R-010 uses

SOURCES_L1_D §2.2 (R-dec) needs, in ξ-units, |X|, |P_1X|, |∇^ξ_UX|, |Δ^ξ_UX| ≤ B_3e^{−δ_0d^{(ξ)}} (CMP 109 names), contracted with the source of (3.8) to give (3.9), and K_R, K_R′ fixed before ε_1.
 On-shell, take B_3 := max{C_0, C_∇, C_P C_0, C_Δ}, with C_∇ = c_∇C_0 (L1_C 6.4), C_P from Theorem P, C_Δ = c_ΛC_Σ from Theorem Δ. Each factor is built from B_0, B′_0 (CMP 99, d and L only, p. 423 [V]), the O(1) of (3.49), (3.132), (3.137), c_Γ ≤ 8d, c_J = O(Mα_0) (≤ O(1) after Mα_0 ≤ a_0), c_s and S (geometry, d and L). None depends on k, j, η, the volume, {Ω_j}, ε_1 or g. So B_3 is fixed at the constant stage of B_0 (canon: with the CMP 99 constants, before ε_1) [P]. The rate is the sup-entry rate ⅛δ_0 (renamed δ_0 in CMP 109) with no loss (Lemma K).
 The P_1 part and the H_0-, G̃-parts of the Δ part hold with the same B_3 off-shell. The H-part of the Δ part off-shell has no constant (§6.3).

## 8. Proposed ledger status (not applied; this file is unverified)

R-005 (status column). Replace the derivative-entry clause by: "Derivative entries of (190) (SOURCES_R005_DD, unverified): ∇, Hölder [P] (SOURCES_L1_C 6.4, verified); Δ and D*D [P] on-shell (J = J(U)), at real and complex U in the CMP 99 class (3.35)–(3.38) and complex B, relative to the sup entry (A4_D189 §6.3) and at complex B to R-019: the (O-π) kernel bound is not needed, because on the Landau slice Δ′_πH = ½DRG′Γ(H, J) (CMP 102 (138)) has the derivative on the left; G̃ is built from the Thm 3.3 operator Δ_a^{−1} (CMP 102 p. 297), so its Laplace entry holds (the Thm 3.12 exception concerns the π-operators only); H_0 by (130); D*D from Δ, (3.49), (135) and RD*X = 0. New entry P_1 = DPD* [P] at all (U, J) from (3.49) and Thm 3.4. Residue for R-005: none beyond the sup entry, R-019, the R-001 family for (QG_0Q*)^{−1}, the complex J bound of CMP 99 p. 397 [R], and two minor sketches (W bound, Δ_{U_k} versus Δ_{U_0})."
 One-line status: "reduced [verified 2026-10-28] to R-001 + published CMP 98/99/102 + R-018 + one bookkeeping item; all five entries of (190) and P_1 [P] on-shell (SOURCES_R005_DD, unverified)."
R-010 (note). "R2 R-terms (SOURCES_L1_D (R-dec), (R-dom)) use the Δ^ξ_U and P_1 entries at the off-shell points (U, J) of the CMP 109 spaces U^c_j (complex U, J independent). P_1, sup, ∇ hold there; the Δ entry holds for the H_0- and G̃-led terms; for the H-led term (Landau propagator of (47)) it is open off-shell: RD*H(U, J) ≠ 0 when J ≠ J(U), and one term of Δ′_π(J)H then needs ∇G′∇* on a function of J, bounded only through a Hölder norm of J that U^c_j does not provide (SOURCES_R005_DD §6). This is also an unproved step of CMP 109 p. 272 ('H_j satisfies the Landau gauge condition') at off-shell J. Repairs (not checked): a Hölder condition on J, or operators built on the on-shell pair of condition (iv)." R-010 grade: unchanged in name; the R2 residue gains this item [I].
R-014 (note). The (3.17) factor 1/r rests on the same max{…} of (3.15); it carries the same off-shell item.
Binding sets. R-005 loses its [I] derivative entries on the CMP 102 chain. A new off-shell item enters the R-010 chain (R-dec, R-dom); it should get its own H- id at the next IDS update.

## 9. Grade table

| Claim | Grade |
|---|---|
| 1.2 consumer form (C1)–(C3); D*D not consumed by CMP 109 §3 | [V] pp. 271–273; corrects L1_C_VERIFY V6.5(c) reasoning |
| 1.3(a) complex arguments needed (real alone insufficient) | [P] from [V] pp. 262, 273 |
| 1.3(b) off-shell (J independent) arguments needed | [P] from [V] pp. 262, 272 |
| 2 G̃ is built from the Thm 3.3 operator, not a π-operator | [V] CMP 102 pp. 297, 300, 306 |
| 3 Lemma K | [P] given CMP 96 Lemma 2.1 [R] |
| 3 Theorem P (P_1 entry), all (U, J) | [P] given (3.49), Thm 3.4 [V] |
| 4.1 Laplace kernel of H_0 | [V] statement (130); proof [R] |
| 4.2(a) G̃ = G̃_0(I − Δ^{(2)}G̃_0)^{−1} | [P] |
| 4.2(b) Laplace kernel of G̃, on- and off-shell | [P] given Thm 3.3, (130), (3.137) |
| 4.3(a) H = H_0 + G̃_0Δ′_π(J)H, any J | [P] |
| 4.3(b) Δ′_πH = ½DRG′Γ(H, J) on-shell | [P] from (138), (3.124) [V] |
| 4.3(d) Laplace kernel of H on-shell | [P] given (J-on) [R complex] |
| 5 Theorem Δ on-shell, rate ⅛δ_0 | [P] given the sup derivation (A4_D189 §6.3) |
| 5 Δ_{U_k} versus Δ_{U_0} | [P-sketch] |
| 5 Theorem DD on-shell | [P]; W bound [P-sketch]; 𝒜_0 = A′_1 − H_0B [R] |
| 6.1 off-shell P_1, ∇, H_0- and G̃-parts of Δ | [P] relative to sup/∇ entries |
| 6.2 off-shell RD*H ≠ 0 | [P] |
| 6.3 off-shell Δ entry of the H-term not derivable from printed inputs | structure [P]; log growth [I, numerics r005_cz.py] |
| 6.4 repairs (R-a), (R-b), (R-c) | [I], not checked |
| 7 constants (d, L only; before ε_1) | [P] |

## 10. Report

The (O-π) bound is not needed. On-shell (J = J(U)), CMP 102 (138) makes Δ′_πH derivative-free on the right. CMP 102's G̃ comes from the Thm 3.3 operator, which has a Laplace bound; L1_C misread it as a Thm 3.12 operator. So all five (190) entries and P_1 hold on-shell, at real and complex U and B, with rate ⅛δ_0 and constants depending on d and L only. CMP 109 §3 needs Δ and P_1 at complex, off-shell (U, J). It does not need D*D. Off-shell, P_1 and the H_0 and G̃ terms hold. The Landau-H term is open: RD*H ≠ 0, and one Δ′_π term needs Hölder J.
