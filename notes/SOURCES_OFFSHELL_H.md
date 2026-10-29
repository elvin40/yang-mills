# SOURCES_OFFSHELL_H — the off-shell Δ entry of the Landau-H term (CMP 109 (3.14)–(3.17); ledger rows R-010, R-014)

Written 2026-10-29 by Claude (Opus 5.5), derivation agent. Ids follow IDS.md. File-local labels (T_1, F, Lemma 1–4, Theorem F, Theorem E, (on), (dom)) are not global ids.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
No existing file was edited. PLAN.md was not changed. sync.sh was not run. New files: this file and numerics/offshell_cz.py.
Inputs read: SOURCES_R005_DD (full), SOURCES_R005_DD_VERIFY (corrections V1.8, V1.10, V2.5, V3.13–V3.16, §4), SOURCES_L1_D §2.2, TRUST_LEDGER rows R-005, R-010, R-014, SOURCES_ORDER_CANON lines 15–16.
Page images read in this session (pdftoppm -r 150, fresh folder /tmp/offh, deleted after use):
- CMP 109 pp. 262, 263, 270, 271, 272, 273, 274, 275.
- CMP 102 pp. 287, 298, 299, 306, 307.
- CMP 99 pp. 419, 420.
Text layer only (tagged so): CMP 109 p. 281 ((4.3)–(4.4)); CMP 116 pp. 14–15 ((2.13)–(2.15)); CMP 119 p. 9 and CMP 122 II p. 266 (other uses of (190)).
Grades: [V] read on a page image in this session; [P] proved here, every step written; [P-sketch] steps written, one or more not in full; [R] reduced to a printed statement or a project result named; [I] inferred, not proved.

## 0. Result in one paragraph

The off-shell Δ entry is closed by a change of the off-shell extension. It is not closed for Balaban's literal extension. CMP 109 introduces J only as a replacement variable for J_{k+1} (p. 272, p. 275 "as usual" [V]). So the functions at off-shell (U, J) are an analytic extension, and the step needs only three things from them: analyticity on the domain (3.16), the bounds (3.14)–(3.15), and equality with the true expression (3.7) at on-shell points. CMP 102 p. 287 [V] says that the operator h = H in the linearizing map "is by no means a unique choice". I replace the Landau propagator H in the outer factor of (179) by the operator F := (I − G̃_0T_1(J))^{−1}H_0. T_1(J) keeps only the part of Δ′_π(J) that has the derivative on the left (CMP 102 (138)). On-shell F = H exactly. Off-shell F is analytic in (U, J) and has the sup, ∇, P_1 and Δ kernel bounds with a sup bound on J only. So (3.14) with ⅓α_2, the max in (3.15) and the factor 1/r of (3.17) hold on all of (3.16). Route (4) is confirmed: the ln ℓ growth of ∇G′∇* is real for the block propagator G′ (numerics). So Balaban's literal extension most likely has no j-uniform Δ bound, and the change of extension is needed.

## 1. What the consumer needs [V CMP 109 pp. 262–263, 270–275]

1.1 The variable J is a replacement. p. 272 [V]: "we do not formulate second order regularity conditions … but we replace the expression J_j by the new variable J". After (3.12): "we replace J_{k+1} by the variable J, and in the remaining expressions we replace U_{k+1} by the new variable U. Thus we obtain the following function of the variables U, J: (3.13)". p. 275 [V]: "The variable J replaces the function J_{k+1} as usual". p. 273 [V]: "These functions are given by (179), (180) [15], and we replace the configurations U_{k+1}, J_{k+1} occurring in operators there by the configurations U, J."
1.2 The Landau condition is used on-shell only. p. 272 [V] uses "RD*H_j = 0" in the paragraph after (3.11), at U = U_{k+1}, before the replacement. At that point J_{k+1} = J(U_{k+1}) by (3.12). This agrees with SOURCES_R005_DD_VERIFY V2.5. So the Landau identity is not needed off-shell.
1.3 The step uses the off-shell functions through three properties only [P from 1.1, 1.2 and pp. 272–273 [V]]:
 (A) analyticity in (U, J) on (3.16) ("Thus we have constructed the analytic extension (3.15) of the function (3.7), defined on the space (3.16)");
 (B) the bounds: "H_j(B(t)) satisfies (3.14) with 1/3α_2", and the max of (3.15) bounded through (3.9) ("Let us stress that it follows only from the fact that H_j(B(t)) satisfies (3.14) with 1/3α_2, and δH_j satisfies (3.9)", p. 273);
 (C) agreement: at the on-shell point (U_{k+1}, J_{k+1}) the extension equals (3.7).
 Gauge invariance (1.19) [V p. 263] is a fourth property of the final functions; it holds when every operator is gauge covariant.
1.4 Other uses of off-shell values (scan, not exhaustive).
 - CMP 109 p. 281 (text layer): the renormalization step uses "the function with U = 1, J = 0". J(1) = 0, so this point is on-shell.
 - CMP 116 pp. 14–15 (text layer): the pair (U, 0) is used to compare the fluctuation covariances ("For the pair (U, 0) the operators are symmetric … The general case is handled by a perturbative argument"). These are the covariance operators C^{(k)}, Δ_k, not the background map H_j. The comparison is an estimate, not an identity. The change in §3 does not touch these operators.
 - CMP 119 p. 9 and CMP 122 II p. 266 (text layer) cite (190) for exponential decay only.
 I found no use of a specific off-shell value of H_j beyond (A)–(C) [I: CMP 116, 119, 122 were scanned by grep for J, "Landau", (179), (180), (190), not read in full].
1.5 Balaban permits a change of h [V CMP 102 p. 287]: "there are many linearizing transformations. Even if we specify them requiring that they have the form A = A′ − hD(A′), we still have many possible choices of the operator h. Our choice h = H is a convenient one … but it is by no means a unique choice."

## 2. Routes (1), (2) and (3) as posed

2.1 Route (1), Cauchy estimates in J: does not close the item [P]. Cauchy estimates bound ∂_J^nH_j(U, J) on a smaller polydisc by the sup of H_j over a larger polydisc. They give no bound on Δ_UH_j at fixed J, because Δ_U acts in the space variable. The bad term of SOURCES_R005_DD §6.3 (term 4 = ½DRG′D*Γ_4(λ_2, J), λ_2 = G′RD*H) is O(|J||δJ|) times ∇G′∇*, δJ := J − J(U). The deviation δJ ranges over all g^c-valued bond functions with |J| < γ_0 ((1.14) [V p. 262]). So no Hölder control of δJ is available on the domain, and the sup of term 4 over the domain is the quantity in question.
2.2 Route (2), a Hölder condition on J: not checked, not needed [I]. The new J′ = (L^{j−1}η)³J + Δ^ξ_UA − P_1A + F_1(U, A) of (3.13) [V p. 272] would need a Hölder bound on Δ_UH_j. CMP 99 (3.45) gives Hölder bounds with a constant B′_0(ε) that grows as ε → 0, so the exponent bookkeeping across steps is open. The route would also change the spaces U^c_j of CMP 109, 116, 119 and 122.
2.3 Route (3) as posed (all operators on the on-shell pair of condition (iv)). The pair (U_n(M′(U)), J_n(M′(U))) is on-shell. Its bounds: (1.16) [V p. 262] |J_n(M′(U))| < α_0(L^nξ)² on X̃^{−2} as part of condition (iv), and (1.17) [V p. 263] |J_n(M′(U))| < B_32α′_0(L^nξ)² on X̃^{−2} for the subspace with constants α′_0, α′_1 (from CMP 102 Prop. 9). So the (1.17) citation of SOURCES_R005_DD (R-b), UNSUPPORTED in SOURCES_R005_DD_VERIFY because p. 263 was not imaged, is supported by the image of p. 263; it holds on that subspace only. Cost [I]: operators on a background different from the variable U change the identity (3.11)–(3.13). I do not use this route. §3 uses the fact behind it, property (C) of 1.3: only on-shell agreement is needed, so the operator in the outer factor can be chosen freely.

## 3. The left-derivative extension F

Notation as in SOURCES_R005_DD §2–§4: G′ = (Δ_U + Q′*aQ′)^{−1} on 0-forms, R the projection (3.21)/(3.25) of CMP 99, P = I − R, G_0 = Δ_a^{−1} with Δ_a = Δ + DRD* + Q*aQ (CMP 102 p. 297), H_0 of (129), G̃_0 = G_0 − G_0Q*(QG_0Q*)^{−1}QG_0, Lemma K (composition, rate of the inner kernel kept). Γ(K, J)(x) := Σ_{b: b_−=x}i[K(b), J(b)] + Σ_{b: b_+=x}R_b^{−1}(i[K(b), J(b)]), |Γ(K, J)(x)| ≤ c_Γmax_{b∋x}|K(b)||J(b)|, c_Γ ≤ 8d (SOURCES_R005_DD 4.3(b)). Scale of J [V p. 272, (3.12)]: the CMP 109 variable J with |J| < γ_0 = α_0 corresponds in η-units to |J(b)| ≤ c_J(L^jη)^{−3} on the Ω_j-layer with c_J := L³α_0.

3.1 Definition. For a g^c-valued bond function J put
 ⟨A, T_1(J)K⟩ := ½⟨i[(G′RD*A)(b_−) + R_b(G′RD*A)(b_+), K(b)], J⟩ for all A,
that is T_1(J)K = ½DRG′Γ(K, J) (transpose step of SOURCES_R005_DD 4.3(b): G′ and R symmetric, (D*)^T = D) [P]. Put
 F(U, J) := Σ_{n≥0}(G̃_0T_1(J))^nH_0, so F = H_0 + G̃_0T_1(J)F.
T_1 has the derivative on the left of G′ only. It is the first term of the polarized form of Δ′_π(J) (SOURCES_R005_DD §6.3).

Lemma 1 (T_1 = Δ′_π on the Landau slice) [P]. If G′RD*K = 0 (in particular if RD*K = 0), then Δ′_π(J)K = T_1(J)K for every J.
Proof. (3.120) [V CMP 99 p. 419] gives the form q(A) := ⟨A, Δ′_πA⟩ = ⟨c(λ, A), J⟩ − ⟨i[λ(b_−), (Dλ)(b)], J⟩ with λ := G′RD*A and c(λ, A)(b) := i[λ(b_−) + R_bλ(b_+), A(b)] (the two printed commutators combine: −i[A, R_bλ(b_+)] = i[R_bλ(b_+), A]). Δ′_π is the symmetric operator of q. Polarize: with λ_i := G′RD*A_i,
 ⟨A_1, Δ′_πA_2⟩ = ½[⟨c(λ_1, A_2), J⟩ + ⟨c(λ_2, A_1), J⟩ − ⟨i[λ_1(b_−), (Dλ_2)(b)], J⟩ − ⟨i[λ_2(b_−), (Dλ_1)(b)], J⟩].
With A_2 = K and λ_2 = 0 three terms vanish. The remaining term is ½⟨c(G′RD*A_1, K), J⟩ = ⟨A_1, T_1K⟩. □
 CMP 102 (138) [V p. 299] is the case K = HB.

Lemma 2 (Laplacian of G_0 and G̃_0 with first-order U only) [P given the sup entry of G_0, (3.49), (3.69), (135)].
 Δ_UG_0 = I + (W − Δ′ − Q*aQ)G_0 + DPD*G_0,
with W the plaquette term of (135) [V CMP 102 p. 298] and Δ′ the local operator of (3.10).
Proof. (3.10): Δ = D*D + Δ′. D*D + DD* = Δ_U − W by (135). DRD* = DD* − DPD*. So Δ_a = Δ_U − W − DPD* + Δ′ + Q*aQ. Multiply by G_0 = Δ_a^{−1} on the right and solve for Δ_UG_0. □
 Bounds: |W|, |Δ′| ≤ O(Mα_0)(L^jη)^{−2} (field strength; (1.11)–(1.13) first order; (3.69) of CMP 99 for Δ′, cited CMP 102 p. 298 [V]); Q*aQ is block-local of size (L^jη)^{−2}; DPD* by (3.49); the sup entry |G_0λ(x)| ≤ C(L^jη)²e^{−a_0d}|λ|. Lemma K gives |Δ_UG_0λ(x)| ≤ C_Λe^{−a_0′d(y,y′)}|λ|. The same for ∇G_0 from the ∇ entry of (3.42) (Thm 3.3). G̃_0 = G_0 − H_0^uQG_0, so the same bounds hold for G̃_0 with (130) for Δ_UH_0. This is Balaban's own route (134)–(135) [V p. 298] in kernel form. It uses no second-order condition on U. Complex U′U: Thm 3.4 and the complex (3.49) of CMP 99 p. 403 (SOURCES_R005_DD_VERIFY V1.8) [R].
 Note. SOURCES_R005_DD 4.1–4.2 cite Thm 3.3 directly. Lemma 2 removes the need for (3.36) in that step.

Lemma 3 (kernel of T_1) [P given (3.42), (3.49)]. |DRG′λ(x)| ≤ C_{RG}L^jηe^{−a_Rd(y,z)}|λ| for supp λ ⊂ Δ(z), a_R = ½δ_0 − κ (SOURCES_R005_DD 4.3(c)). So for a kernel K with |K(x, y′)| ≤ k(L^jη)^{−1}w(y, y′) and |J| ≤ c_J(L^jη)^{−3}:
 |(T_1(J)K)(x, y′)| ≤ ½c_Γc_JC_{RG}c_sS·k(L^jη)^{−3}w(y, y′)
at the rate of w (Lemma K, a_R > rate of w). Only |J| enters.

Theorem F [P given the sup and ∇ entries of G_0 and H_0, (130), (3.42), (3.49), (3.69), (135), Lemma K]. Let U be real with the first-order conditions, or complex U′U in the domain of Thm 3.4, and let J be any g^c-valued bond function with |J(b)| ≤ c_J(L^{j(b)}η)^{−3}. Put C_F := C_{G̃}·½c_ΓC_{RG}c_s²S², with C_{G̃} the sup constant of G̃_0 ((L^jη)² normalization). If C_Fc_J ≤ ½, then:
 (a) the series for F converges in the weighted kernel norm ‖K‖ := sup|K(x, y′)|(L^jη)/w(y, y′); ‖F‖ ≤ 2‖H_0‖;
 (b) F is analytic in (U, J) (uniform limit of polynomials in J with coefficients analytic in U);
 (c) with w at the rate a_F := (1 − α)min(a_0′, a_R) − κ > ⅛δ_0:
  |F| ≤ C(L^jη)^{−1}w, |∇F| ≤ C(L^jη)^{−2}w, |DPD*F| ≤ C(L^jη)^{−3}w, |Δ_UF| ≤ C(L^jη)^{−3}w,
  with C depending on d, L and the CMP 99 constants only;
 (d) gauge covariance: F(U^u, R(u)J) = R(u)F(U, J) for the gauge transformations of (1.10) under which H_0, G̃_0 are covariant [P-sketch: every factor (D, R, G′, Q, G_0, Γ) is covariant; Γ uses the parallel transport R_b];
 (e) on-shell agreement: if J = J(U) and RD*H(U) = 0 holds for Balaban's Landau propagator H(U) (CMP 99 (3.124)–(3.126); complex U by analytic continuation, SOURCES_R005_DD 4.3(b)), then F(U, J(U)) = H(U).
Proof. (a) Lemma 3 and the sup bound of G̃_0 with Lemma K: ‖G̃_0T_1K‖ ≤ C_Fc_J‖K‖ ≤ ½‖K‖. Geometric series.
 (c) Write F = H_0 + G̃_0T_1F. A derivative acts on the left factor only:
  ∇F = ∇H_0 + (∇G̃_0)(T_1F), Δ_UF = Δ_UH_0 + (Δ_UG̃_0)(T_1F).
 T_1F is a kernel with |T_1F| ≤ C_Tc_J‖F‖(L^jη)^{−3}w (Lemma 3). ∇G̃_0 and Δ_UG̃_0 are bounded sup → sup operators with factors L^jη and 1 (Lemma 2). Lemma K composes them at the rate of w. The H_0 terms: (3.42) and (130). The DPD* entry: Theorem P of SOURCES_R005_DD §3 applied to the kernel F. No step applies two derivatives to G′, so (3.44) and Hölder norms of J are not used.
 (e) SOURCES_R005_DD (4.3.1) [P, confirmed V3.5]: H = H_0 + G̃_0Δ′_π(J(U))H. RD*H = 0 and Lemma 1 give Δ′_π(J(U))H = T_1(J(U))H. So H is a fixed point of K ↦ H_0 + G̃_0T_1(J(U))K. H has finite norm (sup entry (3.133) [R]). On the domain C_Fc_J ≤ ½ the fixed point is unique. So H = F. □
 Remark on SOURCES_R005_DD_VERIFY V3.16. That check shows that Δ_UG̃_0 applied to term 4 gives term 4 back. Theorem F has no term 4: the fixed-point equation of F contains T_1 only. In (c) the operator Δ_UG̃_0 acts on T_1F, which has one derivative on G′. The two routes differ in the operator, not in the order of the derivatives.

## 4. Route (4): the ln ℓ growth is real for the block propagator [numerics; I for the transfer to term 4]

numerics/offshell_cz.py builds Balaban's 0-form operator at U = 1 on a periodic lattice of side N = n_b·ℓ (lattice units η = 1, block side ℓ = L^j): G′ = (−Δ + a ℓ^{d−2}Q′^TQ′)^{−1}, a = 1, Q′ = block average (the mass term (3.16) of CMP 99 on 0-forms), R = I − G′Q′^T(Q′G′²Q′^T)^{−1}Q′G′ (CMP 99 (3.25)). It prints the ℓ¹ norm of one kernel row (= the sup → sup operator norm on that row), at a block center and a block corner, for D_1G′D^T and D_1RG′D^T (two derivatives, the term-4 kernel; sum over ν) and for D_1RG′/ℓ (one derivative, the T_1 kernel, in units of L^jη). Run time: seconds (d = 2, ℓ ≤ 32, n_b = 6; d = 3, ℓ ≤ 6, n_b = 4). A d = 2, ℓ = 64 run reached 15 GB of memory in the sparse LU and was stopped.

| d | ℓ | D_1G′D^T center | D_1RG′D^T center | D_1RG′D^T corner | D_1RG′/ℓ center | D_1RG′/ℓ corner |
|---|---|---|---|---|---|---|
| 2 | 2 | 3.069 | 3.162 | 2.895 | 0.569 | 0.514 |
| 2 | 4 | 4.118 | 3.689 | 3.833 | 0.458 | 0.502 |
| 2 | 8 | 5.032 | 4.591 | 5.119 | 0.503 | 0.585 |
| 2 | 16 | 5.919 | 5.487 | 6.262 | 0.518 | 0.650 |
| 2 | 32 | 6.802 | 6.370 | 7.283 | 0.521 | 0.687 |
| 3 | 2 | 4.284 | 4.492 | 4.094 | 0.566 | 0.525 |
| 3 | 4 | 5.921 | 5.340 | 5.703 | 0.471 | 0.553 |
| 3 | 6 | 6.791 | 6.160 | 6.831 | 0.490 | 0.605 |

Reading [P for the numbers; I for the interpretation].
- d = 2: D_1G′D^T and D_1RG′D^T grow by 0.88–0.90 (center) and 1.02–1.15 (corner) per doubling of ℓ for ℓ ≥ 4. 0.88 ≈ (4/π)ln 2, the free value (2/π)ln 2 per component times two components ν. The projection R and the block mass do not remove the growth.
- d = 3: the values differ from d = 2, so the exact d-independence of the free kernel (SOURCES_R005_DD_VERIFY §4) does not hold with blocks. The growth persists (center 4.49 → 5.34 → 6.16 for ℓ = 2, 4, 6). The range of ℓ is short; this is a supporting check only.
- The one-derivative kernel D_1RG′/ℓ stays between 0.46 and 0.69 (corner increments 0.08, 0.07, 0.04: saturating). This is the kernel of T_1 (Lemma 3), and it agrees with the uniform bound (3.42).
Consequence [I]. With ℓ = L^j, the sup → sup norm of the term-4 kernel grows like j ln L. A j-uniform Δ bound for Balaban's literal extension H_B(U, J) would need a cancellation between term 4 and its source λ_2 = G′RD*H_B, which is O(δJ). SOURCES_R005_DD_VERIFY V3.16 does not exclude such a cancellation, and I did not test one. So "the literal extension fails" stays [I]. Theorem F does not depend on it.

## 5. The modified extension and the consumers

5.1 Definition. In the functions of CMP 109 p. 273 (operators of CMP 102 (179)–(184) at the variable (U, J)) replace the outer factor H of (179) by F(U, J) and keep every other operator as Balaban defines it:
 𝓗_F := 𝒜_0 + H_0B − F(U, J)D(𝒜_0 + H_0B),
with 𝒜_0 the solution of (180) [V CMP 102 p. 306] and D, G̃, Δ^{(2)}, V as in Balaban's extension. Differentiation as in (182) [V CMP 102 p. 307] gives
 X_F := δ𝓗_F/δB = δ𝒜_0/δB + H_0 − F⟨𝔇(𝒜_0 + H_0B), δ𝒜_0/δB + H_0⟩.
By (183) [V p. 307], δ𝒜_0/δB is G̃-led. So the leftmost factors of X_F are G̃, H_0 and F.
The same replacement is made in H_j(□_0, ·) of the fundamental case (CMP 109 (3.21)–(3.25) [V pp. 274–275]), with the operators at the configuration U_{k+1}(□_0, M′(U)) and the variable J.

Theorem E [P relative to the inputs listed in 6.1]. Let (U, J) lie in the domain (3.16) of CMP 109 and let α_0 ≤ a_F := 1/(2C_FL³) (so C_Fc_J ≤ ½ with c_J = L³α_0). Then:
 (E1) 𝓗_F and X_F are analytic in (U, J) on (3.16), and analytic in B on the ball of Prop. 9.
 (E2) At every on-shell point of the domain (J = J(U), U real or complex) 𝓗_F = 𝓗 and X_F = δ𝓗/δB. In particular at (U_{k+1}, J_{k+1}) the extension (3.15) built with 𝓗_F equals (3.7). At (U, J) = (1, 0) (CMP 109 p. 281) T_1(0) = 0 and F = H_0 = H.
 (E3) Off-shell, in ξ-units, |X_F|, |P_1X_F|, |∇^ξ_UX_F|, |Δ^ξ_UX_F| ≤ B_3^F e^{−δ_0d^{(ξ)}} (CMP 109 names; δ_0 = ⅛δ_0 of CMP 102), with B_3^F := max{B_3^{on}, B_3^{(F)}}: B_3^{on} the on-shell constant of SOURCES_R005_DD §7, B_3^{(F)} the constant of the F-led term (Theorem F (c) times the sup constant of the inner kernel ⟨𝔇(…), …⟩). Only |J| < α_0 enters.
 (E4) Off-shell, |Δ^ξ_U𝓗_F| (and the sup, ∇, P_1 entries) obey the same bound form as on-shell (CMP 102 (136), (139)–(140)): O(1)C_1B_3ε_1 in ξ-units. So for ε_1 small (fixed after B_3^F) H_j(B(t)) built with 𝓗_F satisfies (3.14) with ⅓α_2. This is (R-dom).
 (E5) The functions are gauge invariant in the sense of (1.19) [P-sketch, via Theorem F (d)].
Proof. (E1): Theorem F (b) and the analyticity of Balaban's pieces (CMP 102 p. 287 [V]: D(A′) "has the same analyticity domain as H(U_0)"; p. 306–307 [V]) [R for the pieces]. (E2): Theorem F (e); the remaining pieces are identical by definition. (E3): Δ_U, ∇ and P_1 act on the leftmost factor (SOURCES_R005_DD §5, the weight-ratio argument verified in SOURCES_L1_C V6.4). G̃: SOURCES_R005_DD 4.2 (with Lemma 2 above), off-shell CONFIRMED (V3.9, V3.13). H_0: (130). F: Theorem F (c). The inner kernels need sup bounds only; off-shell they are the sup derivation (A4_D189 §6.3) with Thm 3.12 at a sup-bounded J [R, V3.13]. Lemma K keeps the inner rate. (E4): (179) with (E3) for each term; the 𝒜_0 and H_0B terms as in CMP 102 (136) [V p. 298]; the F-term by Theorem F (c) and |D(𝒜_0 + H_0B)| ≤ O(1)4C_2|A′_1|²_{(−1)} (p. 299 [V]). □

5.2 The consumers.
 (3.14)–(3.15). With 𝓗_F, (E4) is the assumption "H_j(B(t)) satisfies (3.14) with ⅓α_2" and (E3) is (3.9) "and the same for derivatives and the second order operators applied to it" with B_3 → B_3^F. Then r ≥ ⅓α_2/(B_3^F·2L^jη|ζ_□H_k(B′)|·e^{−…}) and
 (3.17) |(3.15)| ≤ E_0exp(−κd_j(X))6α_2^{−1}L^jηB_0B_3^F exp(−½δ_0dist^{(ξ)}(X, □) − ½δ_0M(L^jη)^{−1})|ζ_□H_k(B′)|
 holds on all of (3.16) [P given (E3), (E4) and the Cauchy step printed on p. 273 [V]].
 SOURCES_L1_D (R-dec), (R-dom): (R-dec) is (E3) at W in the field class of B(t), (R-dom) is (E4) along W(t̃); both now hold off-shell [P relative to 6.1]. The R-terms (3.21), (3.22) of L1_D §2.2 use the same two bounds.
 Validity of the replacement. By 1.3, the step needs (A), (B), (C) and (1.19). (E1), (E3)–(E4), (E2), (E5) give them. Every later use of the off-shell values that I found is an estimate (CMP 116 (U, 0) comparison, which does not involve H_j) or an on-shell evaluation (CMP 109 p. 281). [I: completeness of this scan, 1.4.]

## 6. Exact statement, inputs, canon entry, statuses

6.1 Exact statement proved. Replace, in the off-shell extension of CMP 109 p. 273, the outer Landau propagator H of CMP 102 (179) by F(U, J) = (I − G̃_0T_1(J))^{−1}H_0, T_1(J)K = ½DRG′Γ(K, J). For α_0 ≤ a_F(d, L) the resulting functions are analytic on (3.16), gauge invariant, equal to Balaban's functions at every on-shell point (hence to (3.7) at (U_{k+1}, J_{k+1})), and satisfy (3.14) with ⅓α_2 and (3.9) for sup, P_1, ∇^ξ_U, Δ^ξ_U with the constant B_3^F. So (3.15)–(3.17), with B_3 → B_3^F, hold on all of (3.16) with only the sup bound (1.14) on J. Grade: [P] relative to the inputs below; (E5) gauge covariance [P-sketch]; completeness of the consumer scan [I].
 Not proved: the Δ bound for Balaban's literal extension H_B(U, J). The numerics of §4 make a j-uniform bound unlikely [I].
Inputs (each with its present status):
 - Sup and ∇ entries of G_0 = Δ_a^{−1} and H_0 at first-order U, real and complex: CMP 99 Thm 3.3, Thm 3.4 [V in SOURCES_R005_DD]; regular-class transfer R-018 [R]; (QG_0Q*)^{−1} kernel = R-001 family [R].
 - (130) [V p. 298], (3.42) ∇ entry of G′ and G_0 [V in SOURCES_R005_DD], (3.49) [V], its complex form CMP 99 p. 403 [V in the verifier], (3.69) for Δ′ (cited CMP 102 p. 298 [V]), (135) [V p. 298].
 - Off-shell sup entry of the inner kernel ⟨𝔇(…), …⟩ and of 𝒜_0: the sup derivation A4_D189 §6.3 (rests on (189) = R-005 core) at a sup-bounded J, Thm 3.12 [R; CONFIRMED relative to it in SOURCES_R005_DD_VERIFY V3.13]. At complex B: R-019.
 - (4.3.1) H = H_0 + G̃_0Δ′_π(J)H [P, CONFIRMED V3.5]; RD*H = 0 on-shell, complex by continuation [P, SOURCES_R005_DD 4.3(b)].
 - Lemma K and Theorem P of SOURCES_R005_DD [P, CONFIRMED].

6.2 Canon entry (proposed; not applied). New cap a_F := 1/(2C_FL³) on α_0 = γ_0 (the J-bound (1.14) of CMP 109), C_F = C_{G̃}·½c_ΓC_{RG}c_s²S² (d, L and the CMP 99 constants B_0, O(1) of (3.49) only). It sits with the other α_0 caps (SOURCES_ORDER_CANON A.1, line "Real background caps" / "Complex caps … J-caps", near N-350): it is fixed with the CMP 99 constants, before M, M_1 and ε_1. New constant B_3^F := max{B_3^{on}, B_3^{(F)}} at the stage of B_3 (SOURCES_R005_DD §7: with the CMP 99 constants, before ε_1). Id to be assigned at the next IDS.md update.

6.3 Resulting statuses (proposed; not applied; this file is unverified).
 R-005. Unchanged: CMP 102 Prop. 9 is an on-shell statement, and all five entries of (190) and P_1 are [P] on-shell (SOURCES_R005_DD, verified). Add: "Off-shell (CMP 109 variable J): with the F-extension (SOURCES_OFFSHELL_H) all entries used by CMP 109 (sup, ∇, P_1, Δ) hold with a sup bound on J; for Balaban's literal extension the Δ entry of the H-led term is open and probably not j-uniform (ln L^j growth of ∇G′∇*, numerics) [I]."
 R-010. The off-shell item that SOURCES_R005_DD_VERIFY proposed for the R2 residue ("Δ^ξ_U entry of (R-dec), (R-dom) for the H-led term at off-shell (U, J)") is closed by a modification: "(R-dec), (R-dom) hold off-shell [P, SOURCES_OFFSHELL_H Theorem E, unverified] after the outer H of CMP 102 (179) is replaced by the left-derivative operator F in the CMP 109 p. 273 extension; the replacement agrees with Balaban's functions on-shell, which is all that CMP 109 (3.13)–(3.17) use (pp. 272–273, 275). Cost: one new cap α_0 ≤ a_F(d, L); B_3 → B_3^F." Grade name unchanged (PROVED in corrected form R-011 relative to CMP 109 Sect. 3–5); the residue R2 for R-terms stays [P-sketch] relative to (R-dec), (R-dom), which are now [P] off-shell relative to the inputs of 6.1 instead of open.
 R-014. The factor 1/r of (3.17) uses the max of (3.15). With the F-extension that max is bounded by B_3^F on all of (3.16) [P relative to 6.1]. R-014 carries no off-shell item beyond R-010's inputs. Its own status ("asserted (Balaban), constant unspecified", about the t_□-derivative factor O(1)α_2^{−1}ε_1) is unchanged.
 Binding sets. The off-shell item does not enter any chain as an open item. It enters as "modified extension (F)", which a verifier should check: Lemma 1, Lemma 2, Theorem F (c), (e), and the claim of 1.3 that the step uses only (A), (B), (C) and (1.19).

## 7. Grade table

| Claim | Grade |
|---|---|
| 1.1 J is a replacement variable for J_{k+1} | [V] CMP 109 pp. 272, 273, 275 |
| 1.2 Landau condition used at U_{k+1}, J_{k+1} only | [V] p. 272 (agrees with V2.5) |
| 1.3 the step uses (A) analyticity, (B) bounds, (C) on-shell agreement, (1.19) | [P] from [V] pp. 263, 272–273 |
| 1.4 no other use of off-shell values of H_j | [I] grep scan of CMP 109, 116, 119, 122 |
| 1.5 h = H "by no means a unique choice" | [V] CMP 102 p. 287 |
| 2.1 Cauchy estimates in J do not give the Δ bound | [P] |
| 2.2 Hölder-J route | [I], not checked |
| 2.3 (1.17) printed on p. 263 (supports SOURCES_R005_DD (R-b) citation) | [V] p. 263 |
| Lemma 1 T_1 = Δ′_π on G′RD*K = 0 | [P] from (3.120) [V p. 419] |
| Lemma 2 Δ_UG_0 = I + (W − Δ′ − Q*aQ)G_0 + DPD*G_0, first-order U only | [P] given (3.10), (135) [V], (3.49), (3.69) |
| Lemma 3 kernel of T_1, sup J only | [P] given (3.42), (3.49) |
| Theorem F (a)–(c), (e) | [P] given 6.1 |
| Theorem F (d) gauge covariance | [P-sketch] |
| §4 ln ℓ growth of ∇G′∇* and ∇RG′∇* with blocks; ∇RG′ bounded | numbers [P]; growth law [I] |
| Balaban's literal extension has no j-uniform Δ bound | [I] |
| Theorem E (E1)–(E4) | [P] relative to 6.1 |
| Theorem E (E5) | [P-sketch] |
| 5.2 (3.14)–(3.17) on all of (3.16) with B_3^F | [P] relative to 6.1 and 1.3 |
| 6.2 canon: a_F(d, L), B_3^F before ε_1 | [P] |

## 8. Report

Closed by a modified off-shell extension, not for Balaban's literal one. CMP 109 introduces J only as a replacement for J_{k+1} (pp. 272, 275), so the step needs analyticity, the bounds (3.14)–(3.15), and agreement on-shell. CMP 102 p. 287 allows another h. I replace the outer H of (179) by F = (I − G̃_0T_1(J))^{−1}H_0, where T_1 is the left-derivative part of Δ′_π (CMP 102 (138)). F = H on-shell. Off-shell, F has sup, ∇, P_1 and Δ kernels with sup J only. So (3.14)–(3.17) hold on all of (3.16). New cap: α_0 ≤ a_F(d, L). Numerics confirm ln L^j growth of ∇G′∇* with blocks. R-010 and R-014: the off-shell item is closed [P], unverified.
