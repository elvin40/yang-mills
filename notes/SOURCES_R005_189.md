# SOURCES_R005_189 — a proof of CMP 102 (189) (ledger row R-005, core)

Written 2026-10-29 by Claude (Opus 5.5), derivation agent. Ids follow IDS.md. File-local labels ((S1)–(S9), Lemma K′, Lemma F, Lemma C2, Lemma G, terms F_a–F_0) are not global ids.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every search.
No existing file was edited. PLAN.md was not changed. sync.sh was not run. New file: this file only.
Inputs read: TRUST_LEDGER rows R-001–R-005, R-018, R-019 (with the sweep addendum in R-019); SOURCES_A4_D189; SOURCES_A1_A4_VERIFY (A4 part); SOURCES_L1_C §6 and SOURCES_L1_C_VERIFY §6 (S-51); SOURCES_R005_DD and SOURCES_R005_DD_VERIFY.
Page images read in this session (pdftoppm -r 150, fresh folders /tmp/r189img, /tmp/r189b, /tmp/r189c, deleted after use; PDF page = journal page − first page + 1):
- CMP 102 (Variational, pp. 277–309): pp. 277, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 307, 308.
- CMP 98 (Averaging, pp. 17–51): pp. 38, 39, 40, 41, 42, 43.
- CMP 99 (Propagators, pp. 389–434): pp. 422, 423.
Grades: [V] read on a page image in this session; [P] proved here, every step written; [P-sketch] steps written, one or more not in full; [R] reduced to a printed statement or a project row, named; [I] inferred, not proved.

## 0. Result in one paragraph

CMP 102 (189) is proved here [P], relative to printed lemmas of CMP 98, 99, 102 and to R-001. The proof does not differentiate Balaban's first-derivative formulas term by term with free kernels. It uses one structural fact. Every term of (δV/δA′)(A′) is a composition of operators with exponentially decaying kernels and of a few A′-dependent factors. The derivative in the direction 𝔄 acts on one factor at a time. Each differentiated factor is localized at the support of 𝔄, by a Cauchy estimate whose radius depends on the position (the device of CMP 102 (69)). The other factors keep their printed bounds. A "dimension count" with the scale-shift rule of CMP 99 p. 398 then gives the weight (L^jη)^{−3}. The decay rate is any a < ½δ_0 (so ¼δ_0 as printed), and the size is O(1)(ε_3 + c_J), with c_J := sup(L^jη)³|J| ≤ C_1B_3ε_1 < ε_3 in CMP 102. The proof holds at complex A′ (so at complex B). It needs CMP 98 Prop. 5 at complex arguments, which CMP 98 p. 43 asserts in one sentence [R]. At complex background U it needs the complex forms of (3.132)–(3.133) and of the J bound [R]. It holds on-shell (J = J(U)) only; the off-shell case has the obstruction of SOURCES_R005_DD §6.3.

## 1. The exact statement of (189) [V CMP 102 p. 308]

Printed text before (189) (p. 308): "(δ²/δA′²V)(A′)𝔄 = d/dτ (δ/δA′ V)(A′ + τ𝔄)↾_{τ=0} = (1/2πi)∮_{|τ|=r} (dτ/τ²)(δ/δA′ V)(A′ + τ𝔄)" (185); with r = max{|A′|_(−1), |∇A′|_(−2)}(max{|𝔄|_(−1), |∇𝔄|_(−2)})^{−1}, "we get from Proposition 4" (186): |(δ²/δA′²V)(A′)𝔄|_(−3) ≤ 4C_4ε_3 max{|𝔄|_(−1), |∇𝔄|_(−2)}. Then: "To prove an exponential decay we have to investigate more closely the kernel ((δ²/δA′²)V)(A′). This is, unfortunately, a very awkward and complicated problem, although quite straightforward. Already the first derivative of V is complicated and given by many formulas, see (85), (88), (89), (90), (93). Now we have to differentiate those expressions second time. We do not perform these calculations here, we have obtained all necessary results to do the calculations and estimates, let us formulate a final result only. We have"

 (189) |Δ(y) (δ²/δA′²)V(A′)𝔄| ≤ O(1)ε_3(L^jη)^{−3} exp(−¼δ_0d(y, y′)) max{|𝔄|_(−1), |∇𝔄|_(−2)},
 "for supp 𝔄 ⊂ Δ̃(y′), A′ satisfying (77), y ∈ Λ_j."

Then: "This inequality, the formula (188) and Lemma 2.1, and finally Proposition 2 and (181), yield" (190).

Reading of the symbols [V where shown].
- V is the functional (80) [V p. 290]: V(A′) = −⟨HD_3(A′), J⟩ − ⟨A′, Δ_πHD(A′)⟩ + ½⟨HD(A′), Δ_πHD(A′)⟩ + V_0(A′ − HD(A′)). "It is analytic in A′ for A′ with values in the complexified algebra and satisfying (77)."
- (77) [V p. 290]: |A′| < ε_3(L^jη)^{−1}, |∇A′| < ε_3(L^jη)^{−2} on Ω_j, j = 0, 1, …, k. So |A|_(−n) := sup_j sup_{Ω_j}(L^jη)^n|A|, and (77) is max{|A′|_(−1), |∇A′|_(−2)} < ε_3 (Prop. 4 [V p. 292] uses this form).
- (δ²V/δA′²)(A′)𝔄 is the field b ↦ (d/dτ)(δV/δA′)(A′ + τ𝔄)(b) at τ = 0 (185). Write F := (δ²V/δA′²)(A′)𝔄. Δ(y)F is F restricted to the bonds of Δ(y). So (189) is a pointwise bound on F at every b ∈ Δ(y), y ∈ Λ_j.
- ‖𝔄‖ := max{|𝔄|_(−1), |∇𝔄|_(−2)}. 𝔄 may be g^c-valued (F is linear in 𝔄).
- δ_0 is the common decay rate fixed on CMP 99 p. 423 [V]: "Let us denote a common, best possible, decay rate for all these operators by δ_0". So δ_0 ≤ ½δ_1 (the H rate in (3.133)) and δ_0 ≤ δ_1 (the (QGQ*)^{−1} rate in (3.132)) [V p. 422].

What (189) is and is not. It is a two-point statement at fixed A′: the input 𝔄 sits near y′, the output is read near y. It is not a bound on D²U_k (SOURCES_A4_D189 §0, confirmed by SOURCES_A1_A4_VERIFY (1)).

## 2. What the project's reduction (SOURCES_A4_D189) leaves open

SOURCES_A4_D189 §4–§5, as verified by SOURCES_A1_A4_VERIFY, gives the decay mechanism. It leaves these items open. Items (g1)–(g4) are the reason why (189) stayed "reduced", not "proved".
(g1) Weights. Lemma D2 (A4 §4) and the bound |V″(A′; b, b′)| ≤ c_Vε_3e^{−δ_Vd(b,b′)} (A4 §5) carry no scale factors and no density factors. A pointwise kernel without the density (L^{j′}η)^{−d} cannot give (189): the η^d-sum of such a kernel over b′ ∈ Δ̃(y′) has a factor (L^{j′}η)^d that (189) does not have. SOURCES_A1_A4_VERIFY checked one term (T2, first bracket) and left the rest as "one bookkeeping item".
(g2) The V_0 part with derivatives. V_0 depends on DA (CMP 102 (39) [V p. 284]). So (δ²V/δA′²)(A′) is not a bounded pointwise kernel in b′: it contains a difference operator acting on 𝔄. This is why (189) has |∇𝔄|_(−2) on the right. A4 §5 (T4) tags this [I].
(g3) Second derivatives of C_j. A4 §4 Step 2 bounds |C″(c′; b_1, b_2)| by a Cauchy step of radius c_4/2 in sup norm. A sup-norm Cauchy step gives no density factor (L^jη)^{−d} in b_1. The density factor needs CMP 98 Prop. 5 (157) [V p. 42], used with a Cauchy step at complex arguments. So a complex-argument form of Prop. 5 enters even at real A′ and real U.
(g4) Complex arguments. A4 §6.4 says "every step uses sup bounds valid on the complex analyticity ball". This holds only given (g3) at complex arguments. R-019 (sweep addendum) lists "(189) complex [I]".
(g5) Minor. A4's 𝔇_2 (second derivative of D) clashes with Balaban's 𝔇_2 (first derivative minus its linear part) (SOURCES_A1_A4_VERIFY). The size of J was [I]; it is printed in (86) as O(ε_1) [V p. 291]. The rate was reached by five factors (1 − α); it is not needed (§6 below gives any a < ½δ_0).
(g6) On-shell use. A4 uses (87) Δ_πH = Q*(QGQ*)^{−1}(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1}. Balaban derives (87) from RD*H = 0 [V p. 291]. This holds at J = J(U) only (SOURCES_R005_DD §6.2, verified V3.14). A4 does not state this restriction.

The proof below closes (g1)–(g5). It states (g6) as a hypothesis.

## 3. Inputs

Setting. U_0 is the background of CMP 102: real, with the regularity bounds that CMP 102 uses (|η^{−2}(Re U_0(∂p) − 1)| < C_1B_3ε_1(L^jη)^{−2} (38) [V p. 284]); J = J(U_0) (on-shell). Complex U is treated in §7. Fields on bonds of Ω_0 carry the measure η^d; fields on 𝔅_k = ∪_jΛ_j carry the measure (L^jη)^d on c ∈ Λ_j (CMP 102 (66), (85) [V pp. 288, 291]). y_x denotes the block that contains x and j_x its scale.

(S1) CMP 98 Prop. 4 [V p. 38]: "for α_0, α_1 ≤ c_4 the function Q_k(U_0, ηA, c) … is an analytic function of the variables A_b, b ⊂ B^k(c_−) ∪ B^k(c_+)", with (134) and (135) |C_k(U_0, A)| ≤ C_2|A|². Used in η-scale as CMP 102 (44) [V p. 285]: |C_j(L^jηA)| ≤ C_2(L^jη)²|A|². Locality: C_j(·, c) depends only on A in the window W(c) := B^j(c_−) ∪ B^j(c_+) (also the sup in CMP 102 (69) [V p. 288]).
(S2) CMP 98 Prop. 5 [V p. 42]: (157) |δC_k(U_0, A, c)/δA_b| ≤ C_3|A| < C_3α_1, and its proof by the induction (149)–(155) [V pp. 40–41], in which every step is an absolute-value bound. In η-scale it is CMP 102 (72) [V p. 289]: |L^jη(δC_j/δA)(L^jηΨ)(c, b)| ≤ C_3(L^jη)^{1−d}·|L^jηΨ|_{W(c)} ("the factor (L^jη)^{−d} comes from the change of scale" [V p. 289]). Complex arguments: CMP 98 p. 43 [V]: "Similarly, Proposition 5 may be extended to include analyticity and uniformity statements. The formulations are obvious." [R]. This is the same input that R-019 (sweep addendum) names for (73) at complex A′.
(S3) CMP 102 Prop. 3 and its proof [V pp. 285–289]: (49) D(A′) = C_j(L^jηA′ − L^jηHD(A′)) on Λ_j; D analytic for g^c-valued A′ with |A′|_(−1) < ε_3 (pp. 286–287); (55) |D(A′)| ≤ 4C_2|A′|²_(−1); (57) |Φ| < 2ε_3(L^jη)^{−1} and (58) |∇Φ| < 2ε_3(L^jη)^{−2} for Φ := A′ − HD(A′); (68) (I + 𝔑)𝔇 = K, with K := L^{j(·)}η(δC/δA)(Φ) and 𝔑 = KH; (69) |𝔑(c, c′)| ≤ 9C_2B_0ε_3(L^{j′}η)^{−d}e^{−δ_0d(c_−,c′_−)}; (70)–(71) |(I + 𝔑)^{−1}(c, c′)| ≤ 2(L^{j′}η)^{−d}e^{−½δ_0d(c_−,c′_−)}; (72) |K(c, b)| ≤ 2C_3ε_3(L^{j_c}η)^{1−d}, b ∈ W(c); (73) |𝔇(A′; c, b)| ≤ O(1)C_3ε_3(L^jη)^{−d+1}e^{−½δ_0d(c_−,y)}, b ∈ B^j(y). Conditions on ε_3: 18C_2B_0dc_1(½)ε_3 ≤ 1, 2ε_3 ≤ c_4 [V p. 289].
(S4) CMP 102 (85)–(96) [V pp. 291–292]: the first derivative of V term by term, with |J| ≤ C_1B_3ε_1(L^{j′}η)^{−3} as used in (86); (87)–(88) with Δ_πH = Q*(QGQ*)^{−1}(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1} (from RD*H = 0); (89); (90) the chain rule for V_0(A′ − HD(A′)); (91)–(96) the integration by parts of the DA-term and the bound O(1)|∇A′||A′|.
(S5) CMP 102 (33)–(40) [V pp. 283–284]: V_0(A) = Σ_pη^dV_0(A, ∂p) with V_0(A, ∂p) = ½tr(DA)(p)Σ_{b_1<b_2}i[A′(b_1), A′(b_2)] + V′_0(A, ∂p) (39); every bound there uses only |A| and |DA| on ∂p ("Here we have used only the first bound (32) on the field A alone" [V p. 284]).
(S6) CMP 99 (3.132) [V p. 422]: |(QGQ*)^{−1}(y, y′)| ≤ O(1)(L^jη)^{−2}(L^{j′}η)^{−d}e^{−δ_1d(y,y′)}. This is R-001 (verified reduction). CMP 99 (3.133) [V p. 422]: |H(x, y′)|, |∇H(x, y′)| ≤ O(1)[1, (L^jη)^{−1}](L^{j′}η)^{−d}e^{−½δ_1d(y,y′)}, with the extra factor (L^{j′}η)^{−1} for the variational H that CMP 102 uses (p. 422 [V]); Thm 3.12 [V p. 423] for regular real U.
(S7) Composition and scale shift [R]. CMP 96 Lemma 2.1 ((2.61)–(2.63)): S(a) := sup_yΣ_{y′∈𝔅}e^{−ad(y,y′)} < ∞ for a > 0. CMP 99 p. 398: "Using Lemma 2.1 in [4] we may replace the factor (L^jη)^α by (L^jη)^β(L^{j′}η)^γ with β + γ = α" (checked on the image by SOURCES_R005_DD_VERIFY V3.1). In the form used below: (L^{j′}η/L^jη)^{±1} ≤ L·e^{κd(y,y′)}, κ = κ(R, M_1, L) → 0 as RM_1 → ∞ (CMP 96 (2.36), (2.60) [R]; CMP 102 (1) [V p. 277]: (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM_1). This is Lemma K of SOURCES_R005_DD (CONFIRMED, V3.1).
(S8) Locality of Q, Q* [R]: (Q_jA)(c) = Σ_bη^dQ(c, b)A(b) with |Q(c, b)| ≤ O(1)(L^jη)^{−d} for b ∈ W(c), 0 otherwise (CMP 98 (147) [V p. 40] on the L^{−j}-lattice, rescaled). QH = (L^{j(·)}η)^{−1} on Λ_j (CMP 102 (45) [V p. 285]).
(S9) CMP 102 (103) [V p. 293]: 2dLB_0C_1ε_1 < B_1C_1ε_1 < ε_3. So C_1B_3ε_1 ≤ ε_3 once B_1 ≥ B_3 (a choice of the constant B_1; [I-minor]).

Rows used: R-001 (through (S6)), R-018 (the class match for the backgrounds of CMP 109/116/122; not used inside the proof). R-004 and R-019 are not used inside the proof; §8 states what changes in R-019.

## 4. Two tools: weight classes and composition [P given (S7)]

Fix y′ and a rate a > 0. Points x are bonds of Ω_0 (measure μ(x) = η^d) or block bonds c ∈ Λ_j (measure μ(c) = (L^jη)^d). Distances d(x, x′) := d(y_x, y_{x′}) (the block metric of CMP 96; the additive O(1) between a bond and its block is absorbed in constants).
Definition (localized field). A field F has dimension −n and is localized at y′ with rate a and size f if |F(x)| ≤ f(L^{j_x}η)^{−n}e^{−ad(x,y′)} for every x. Write F ∈ 𝓛(n, a; f). A bounded field of dimension −n is F ∈ 𝓛(n, 0; f).
Definition (kernel class). An operator T has dimension s, rate a_T and size t if |T(x, x′)| ≤ t(L^{j_x}η)^p(L^{j_{x′}}η)^q e^{−a_Td(x,x′)} with p + q + d = s when x′ runs over bonds (the measure η^d of a whole block is (L^{j_{x′}}η)^d) and also when x′ runs over block bonds (measure (L^{j_{x′}}η)^d per point). Write T ∈ 𝒦(s, a_T; t). The transpose T^T(x′, x) := T(x, x′) has the same s, a_T, t, because only p + q enters s.
Examples [P from the printed bounds]: H ∈ 𝒦(−1, δ_0; O(1)) ((S6): p = 0, q = −1 − d); ∇H ∈ 𝒦(−2, δ_0; O(1)); 𝔇 ∈ 𝒦(1, ½δ_0; O(1)C_3ε_3) ((73)); (I + 𝔑)^{−1} ∈ 𝒦(0, ½δ_0; 2) ((71)); K ∈ 𝒦(1, ∞; 2C_3ε_3) after the factor e^{a·diam W} for the finite range ((72)); Q, Q* ∈ 𝒦(0, ∞; O(1)) ((S8)); (QGQ*)^{−1} ∈ 𝒦(−2, δ_1; O(1)) ((S6)). Hence M := Δ_πH = Q*(QGQ*)^{−1}(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1} ∈ 𝒦(−3, δ_0; O(1)) (a = (L^jη)^{−2} [V p. 291, "the symbol a above represents the operator of multiplication by (L^{j(·)}η)^{−2}"]) and N := H^TΔ_πH ∈ 𝒦(−4, δ_0; O(1)), by (89) [V p. 291]: N = (L^{j(·)}η)^{−1}(QGQ*)^{−1}(L^{j(·)}η)^{−1} − (L^{j(·)}η)^{−4} (the second term uses QH = (L^{j(·)}η)^{−1}, (S8)).

Lemma K′ (localized composition) [P given (S7)]. Let T ∈ 𝒦(s, a_T; t), F ∈ 𝓛(n, a; f), with 0 ≤ a and a_T − a ≥ 2κ(|n| + |s| + 2d) + θ for some θ > 0. Then TF ∈ 𝓛(n − s, a; c_*tfS(θ)), c_* := L^{|n|+|s|+2d}.
Proof. |TF(x)| ≤ Σ_{y_1}Σ_{x′∈y_1}μ(x′)t(L^{j_x}η)^p(L^{j_1}η)^q e^{−a_Td(x,x′)}f(L^{j_1}η)^{−n}e^{−ad(x′,y′)}. The inner measure sum is (L^{j_1}η)^d (bonds) or one block (block bonds); so the scale factor at y_1 is (L^{j_1}η)^{q+d−n}. By (S7), (L^{j_1}η)^{q+d−n} ≤ c_*(L^{j_x}η)^{q+d−n}e^{κ|q+d−n|d(x,y_1)}. By the triangle inequality, e^{−ad(y_1,y′)} ≤ e^{−ad(x,y′)}e^{ad(x,y_1)}. So |TF(x)| ≤ c_*tf(L^{j_x}η)^{s−n}e^{−ad(x,y′)}Σ_{y_1}e^{−(a_T−a−κ|q+d−n|)d(x,y_1)}. The exponent is ≥ θ (|q| ≤ |s| + |p| + d is bounded by a fixed number for every operator above; the hypothesis is written with a safe bound). The sum is ≤ S(θ). □
Remark. With a = 0 the lemma is the plain bound of a composition (no localization). The rate a of the output equals the rate of the input. No (1 − α) factor is lost, because the kernel decays faster than the input (the device of SOURCES_R005_DD Lemma K).
Dimension count [P from Lemma K′]. In a composition T_1T_2⋯T_mF the output dimension is −n + s_1 + ⋯ + s_m. Every bound below is this count, with sizes multiplied and with the constants c_*S(θ).

Choice of the rate. All kernels above have rate ≥ ½δ_0. Fix any a with 0 < a < ½δ_0 and put θ := ½(½δ_0 − a). Assume κ ≤ θ/(2(4d + 12)) (a lower bound on RM_1; [I-minor], the same kind of condition as SOURCES_R005_DD Lemma K). Then Lemma K′ applies to every composition below. The printed (189) is the case a = ¼δ_0.

## 5. The differentiated factors

Fix A′ with (77) (g^c-valued allowed), y′, and 𝔄 with supp 𝔄 ⊂ Δ̃(y′), ‖𝔄‖ = 1 (F is linear in 𝔄). Put A′_τ := A′ + τ𝔄 and, for any object X(A′), δX := (d/dτ)X(A′_τ) at τ = 0. Write r̃ for the diameter of Δ̃(y′) in the block metric (O(1)).

5.1 The source [P]. 𝔄 ∈ 𝓛(1, a; e^{ar̃}) and ∇𝔄 ∈ 𝓛(2, a; e^{ar̃}), since 𝔄 vanishes outside Δ̃(y′) and (L^{j_b}η)|𝔄(b)| ≤ 1, (L^{j_b}η)²|∇𝔄(b)| ≤ 1.

5.2 δD = 𝔇𝔄 [P given (73)]. 𝔇 ∈ 𝒦(1, ½δ_0; O(1)C_3ε_3) and Lemma K′ with n = 1 give 𝔇𝔄 ∈ 𝓛(0, a; O(1)C_3ε_3) (D is dimensionless: (55)). So δΦ = 𝔄 − H𝔇𝔄 =: ψ ∈ 𝓛(1, a; c_ψ) and ∇ψ = ∇𝔄 − (∇H)𝔇𝔄 ∈ 𝓛(2, a; c_ψ), with c_ψ := e^{ar̃} + O(1)B_0C_3ε_3·c_*S(θ).

5.3 Lemma C2 (second derivative of C_j, density form) [P given (S1), (S2) at complex arguments]. Let Ψ be a field with |L^{j}ηΨ| ≤ 2ε_3 on W(c), and ψ any field. Put ℓ(c) := sup_{b′∈W(c)}(L^{j_c}η)|ψ(b′)|. Let K_Ψ(c, b) := L^{j_c}η(δC_j/δA)(L^{j_c}ηΨ, c)(b). Then, if 3ε_3 is inside the domain of (S2),
 |(d/dσ)K_{Ψ+σψ}(c, b)|_{σ=0}| ≤ 3C_3(L^{j_c}η)^{1−d}ℓ(c) for b ∈ W(c), and = 0 for b ∉ W(c).
Proof. If ℓ(c) = 0 the function σ ↦ K_{Ψ+σψ}(c, b) is constant (locality (S1)). Else put r := ε_3/ℓ(c). For |σ| ≤ r, the field Ψ + σψ has |L^{j_c}η(Ψ + σψ)| ≤ 3ε_3 on W(c). Values of the field outside W(c) do not enter (S1), so we may set them to 0; then (S2) applies with |A| ≤ 3ε_3 and gives |K_{Ψ+σψ}(c, b)| ≤ 3C_3ε_3(L^{j_c}η)^{1−d}. The function is analytic in σ ((S1), (S2) at complex arguments). Cauchy's estimate on |σ| = r gives the bound. □
Remark. The radius r depends on c. Where ψ is small, r is large. This is the device of CMP 102 (69) [V p. 288], applied to δC/δA instead of C. It is the reason why the derivative is localized where ψ is.

5.4 Lemma F (one differentiated 𝔇) [P given (S3), Lemma C2, Lemma K′]. Let u be a block field with u ∈ 𝓛(m, 0; U) (bounded, dimension −m). Then
 (δ𝔇)^Tu ∈ 𝓛(m − 1, a; C_FU),  C_F := O(1)C_3c_ψ(1 + B_0C_3ε_3)·(c_*S(θ))³N_W,
with N_W := max_b #{c : b ∈ W(c)} = O(d).
Proof. (i) Identity [P]. From (68)–(70), 𝔇 = (I + 𝔑)^{−1}K and 𝔑 = KH, with H independent of A′. So δ𝔑 = (δK)H and δ𝔇 = −(I + 𝔑)^{−1}(δK)H(I + 𝔑)^{−1}K + (I + 𝔑)^{−1}δK = (I + 𝔑)^{−1}(δK)(I − H𝔇). Here δK(c, b) = (d/dσ)K_{Φ+σψ}(c, b) at σ = 0, by the chain rule (K depends on A′ through Φ, and δΦ = ψ). Transpose: (δ𝔇)^Tu = (I − H𝔇)^T(δK)^T(I + 𝔑^T)^{−1}u.
(ii) v := (I + 𝔑^T)^{−1}u ∈ 𝓛(m, 0; 2c_*S(θ)U) (Lemma K′ with a = 0, (71)).
(iii) (δK)^Tv(b) = Σ_{c: b∈W(c)}(L^{j_c}η)^dδK(c, b)v(c). Lemma C2 with Ψ = Φ ((57): |L^jηΦ| < 2ε_3) gives |δK(c, b)| ≤ 3C_3(L^{j_c}η)^{1−d}ℓ(c). Since ψ ∈ 𝓛(1, a; c_ψ), ℓ(c) ≤ c_ψL·e^{a·diam W}e^{−ad(c,y′)}. The scales j_c, j_b differ by at most one (b ∈ W(c)). So (δK)^Tv ∈ 𝓛(m − 1, a; O(1)N_WC_3c_ψc_*S(θ)U).
(iv) (I − H𝔇)^T = I − 𝔇^TH^T, with H^T ∈ 𝒦(−1, δ_0), 𝔇^T ∈ 𝒦(1, ½δ_0; O(1)C_3ε_3). Lemma K′ twice keeps 𝓛(m − 1, a). □
Size remark. 𝔇 is O(ε_3), but δ𝔇 is O(1)·‖𝔄‖. This is consistent with the scalar Cauchy estimate (radius ε_3/‖𝔄‖).
Lemma F at A′ = 0. A′ = 0 satisfies (77). So Lemma F holds also for (δ𝔇)|_{A′=0}, the derivative in the direction 𝔄 of 𝔇 at 0. It equals the derivative of the linear part 𝔇^{lin}(A′) := δD^{(2)}(A′)/δA′ (D = D^{(2)} + D_3, CMP 102 (56), (78) [V pp. 286, 290]), because 𝔇(τ𝔄) = τ𝔇^{lin}(𝔄) + O(τ²) and 𝔇^{lin} is linear.

5.5 Lemma G (one differentiated V_0-gradient) [P-sketch given (S5), (S4) (90)–(96)]. Let g(Ψ) := δV_0/δA(Ψ) (bond field, after the integration by parts (93)). Claim (G1): g(Ψ)(b) depends only on Ψ on bonds within a fixed distance r_0 of b (r_0 ≤ 2 bonds), and, whenever |Ψ| ≤ 3ε_3(L^jη)^{−1} and |∇Ψ| ≤ 3ε_3(L^jη)^{−2} there, |g(Ψ)(b)| ≤ C_gε_3(ε_3 + c_U)(L^{j_b}η)^{−3}, with c_U := C_1B_3ε_1 the U_0-coefficient size of (38), (40).
 Source of (G1): V_0 = Σ_pη^dV_0(A, ∂p) (S5), so δV_0/δA(b) = Σ_{p∋b}∂V_0(A, ∂p)/∂A(b) (functional derivative = gradient × η^{−d}, CMP 98 (138) [V p. 39]). The V′_0 part: (40) [V p. 284] bounds V′_0(A, ∂p) by 64|A|³(L^{−j}c_U(L^jη)^{−1} + ⅓|A|); a Cauchy step in A(b) at radius |A| gives the derivative with one power of |A| less (this is Balaban's sentence after (90) [V p. 291]). The DA part: (92)–(96) [V p. 292] give O(1)|∇A||A|. Both bounds use only |A|, |∇A| near b. [P-sketch: Balaban's algebra (94)–(96) is used as printed; the locality reading "only near b" is read off the explicit formulas.]
 Statement: with Ψ = Φ and ψ = δΦ, δ[g(Φ)] = (d/dσ)g(Φ + σψ) satisfies δ[g(Φ)] ∈ 𝓛(3, a; O(1)C_g(ε_3 + c_U)c_ψ).
 Proof. As Lemma C2: at b put λ(b) := sup_{dist≤r_0}max{(L^jη)|ψ|, (L^jη)²|∇ψ|} and r := ε_3/λ(b). For |σ| ≤ r the field Φ + σψ obeys the hypotheses of (G1) near b ((57), (58)). Cauchy: |δ[g(Φ)](b)| ≤ λ(b)ε_3^{−1}·C_gε_3(ε_3 + c_U)(L^{j_b}η)^{−3}·O(1). By 5.2, λ(b) ≤ O(1)c_ψe^{−ad(b,y′)}. □

## 6. Theorem 189 and its proof

Theorem 189 [P given (S1)–(S8), (S2) at complex arguments [R], and the on-shell identity (87)]. Let U_0, J = J(U_0) be as in §3, and ε_3 small: the conditions of Prop. 3 (S3), 3ε_3 inside the domain of (S2) and of (G1). Let 0 < a < ½δ_0, and RM_1 so large that κ obeys the bound of §4. Then for every g^c-valued A′ with (77), every block y′, every g^c-valued 𝔄 with supp 𝔄 ⊂ Δ̃(y′), every j, y ∈ Λ_j and b ∈ Δ(y):
 |((δ²V/δA′²)(A′)𝔄)(b)| ≤ C_189(ε_3 + c_J + c_U)(L^jη)^{−3}e^{−ad(y,y′)} max{|𝔄|_(−1), |∇𝔄|_(−2)},
with c_J := sup_b(L^{j_b}η)³|J(b)|, c_U as in Lemma G, and C_189 depending on d, L, C_2, C_3, B_0, the O(1) of (3.132)–(3.133), a and θ only. In CMP 102, c_J, c_U ≤ C_1B_3ε_1 ((86), (38) [V]), and C_1B_3ε_1 ≤ ε_3 by (103) with B_1 ≥ B_3 ((S9)). With a = ¼δ_0 this is (189).

Proof. Write V = V_a + V_b + V_c + V_0∘Φ as in (80), with w := H^TJ, M := Δ_πH and N := H^TΔ_πH (§4). The first derivatives are, as printed:
 V_a′ = −𝔇_2^Tw ((85) [V]; 𝔇_2 := δD_3/δA′ = 𝔇 − 𝔇^{lin}, Balaban's notation, remark after Prop. 3 [V p. 289]);
 V_b′ = −MD − 𝔇^TM^TA′ ((88) [V]);
 V_c′ = 𝔇^TND ((89) [V]; N is symmetric because Δ_π is);
 (V_0∘Φ)′ = (I − H𝔇)^Tg(Φ) ((90) [V], with the DA-part integrated by parts as in (93)).
F = (d/dτ)V′(A′_τ) at τ = 0. Each product rule term has exactly one differentiated factor. Its dimension count (§4) and its size follow.

F_a = −(δ𝔇 − δ𝔇|_{A′=0})^Tw. Here w ∈ 𝓛(4, 0; O(1)B_0c_J) (Lemma K′ with a = 0: J ∈ 𝓛(3, 0; c_J), H^T ∈ 𝒦(−1, δ_0)). Lemma F (twice, at A′ and at 0) gives F_a ∈ 𝓛(3, a; O(1)C_FB_0c_J).
F_b = −M(𝔇𝔄) − (δ𝔇)^T(M^TA′) − 𝔇^T(M^T𝔄).
 First: M ∈ 𝒦(−3, δ_0), 𝔇𝔄 ∈ 𝓛(0, a; O(C_3ε_3)) (5.2) ⇒ 𝓛(3, a; O(C_3ε_3)).
 Second: M^TA′ ∈ 𝓛(4, 0; O(ε_3)) (A′ ∈ 𝓛(1, 0; ε_3) by (77)); Lemma F ⇒ 𝓛(3, a; O(C_Fε_3)).
 Third: M^T𝔄 ∈ 𝓛(4, a; O(1)) (5.1, Lemma K′); 𝔇^T ∈ 𝒦(1, ½δ_0; O(C_3ε_3)) ⇒ 𝓛(3, a; O(C_3ε_3)).
F_c = (δ𝔇)^T(ND) + 𝔇^TN(𝔇𝔄).
 First: D ∈ 𝓛(0, 0; 4C_2ε_3²) ((55)), N ∈ 𝒦(−4, δ_0) ⇒ ND ∈ 𝓛(4, 0; O(ε_3²)); Lemma F ⇒ 𝓛(3, a; O(C_Fε_3²)).
 Second: 𝔇𝔄 ∈ 𝓛(0, a; O(C_3ε_3)); N then 𝔇^T ⇒ 𝓛(3, a; O(C_3²ε_3²)).
F_0 = (I − H𝔇)^T(δ[g(Φ)]) − (δ𝔇)^T(H^Tg(Φ)).
 First: Lemma G gives δ[g(Φ)] ∈ 𝓛(3, a; O(C_g(ε_3 + c_U)c_ψ)); (I − H𝔇)^T keeps the class (dimension 0, rates ≥ ½δ_0).
 Second: g(Φ) ∈ 𝓛(3, 0; O(C_gε_3(ε_3 + c_U))) by (G1) with (57), (58); H^Tg(Φ) ∈ 𝓛(4, 0; same·O(1)); Lemma F ⇒ 𝓛(3, a; O(C_FC_gε_3(ε_3 + c_U))).
Sum. Every term lies in 𝓛(3, a; O(1)(ε_3 + c_J + c_U)), with c_ψ = O(1) and C_F = O(1) (ε_3 ≤ 1). So |F(b)| ≤ C_189(ε_3 + c_J + c_U)(L^{j_b}η)^{−3}e^{−ad(b,y′)}. For b ∈ Δ(y), j_b = j and d(b, y′) = d(y, y′) up to O(1). Undo the normalization ‖𝔄‖ = 1. □

Checks.
(c1) Without localization (a = 0) the proof gives |F|_(−3) ≤ O(1)(ε_3 + c_J + c_U)‖𝔄‖. This agrees with Balaban's (186), |F|_(−3) ≤ 4C_4ε_3‖𝔄‖ [V p. 308], up to the constant. The ε_3-order of each term agrees with the first-derivative orders of (86)–(97) divided by one power of ε_3.
(c2) The weights. Every term has total dimension −3. The input 𝔄 contributes dimension −1 (or −2 for ∇𝔄 in Lemma G). The factor that is differentiated keeps its dimension (Lemmas C2, F, G). So the count is the count of Balaban's first-derivative bounds (−3 at size ε_3²) with one factor of size ε_3 replaced by a factor of size O(1)·‖𝔄‖. This closes (g1).
(c3) The norm max{|𝔄|_(−1), |∇𝔄|_(−2)} enters only through λ in Lemma G (the DA-part of V_0). All other terms need |𝔄|_(−1) only. This closes (g2).
(c4) Rate. Only the differentiated factor carries the localization. All other kernels decay at ≥ ½δ_0. So any a < ½δ_0 works. The printed ¼δ_0 has a margin of ¼δ_0. The (1 − α)-factors of A4_D189 are not needed.
(c5) No Hessian lower bound (R-004 type) and no Demko–Moss–Smith argument is used. The only operator inverse is (I + 𝔑)^{−1}, printed in (71).

## 7. Real versus complex arguments; on-shell versus off-shell

7.1 Complex A′ (hence complex B) [P given (S2) complex [R]]. Theorem 189 is stated for g^c-valued A′ with (77). Every bound in §5–§6 is an absolute-value bound on the complex domain: (55), (57), (58), (69)–(73) are stated by Prop. 3 on the complex set (51) [V pp. 285, 289]; (S1) is an analyticity statement; Lemmas C2 and G use Cauchy estimates, which need analyticity and a sup bound on a complex disc. The only input that is not printed on the complex domain is (157) at complex A. CMP 98 p. 43 [V] asserts it in one sentence ("Similarly, Proposition 5 may be extended to include analyticity and uniformity statements. The formulations are obvious."). The proof of (157), (149)–(155) [V pp. 40–41], uses only absolute-value inequalities and the one-step bound (148) ("following easily from general properties of the function C(V_0, A)"), so its complex form is the same proof [P-sketch]. Note: this input is needed even at real A′ and real U, because Lemma C2 takes σ complex. The point B in (H−) is complex; A′ = 𝒜_0 + H_0B then satisfies (77) by Prop. 9's construction (CMP 102 p. 307 [V]: 𝓗 is "a function of g^c-valued configurations B … satisfying (172)"). So the consumers' complex B is covered.
7.2 Complex background U (on-shell, J = J(U)) [R]. The proof uses U only through (S1)–(S6), (38), (40) and (87). At complex U′U in the CMP 99 class (3.37)–(3.38):
 - (S1)–(S2): CMP 98 Prop. 7 [V p. 43] ("Q_k(U′U_0, ηA) is analytic in complex variables A′, A, and Proposition 4 holds uniformly in A′") and the Prop. 5 sentence above [R].
 - (S3): Prop. 3's printed proof uses only (S1), (S2) and (46); so it holds at complex U once (46) does [P-sketch]. CMP 102 p. 287 [V]: D(A′) "is an analytic function of U_0 … D(A′) has the same analyticity domain as H(U_0)".
 - (S6) at complex U: not printed for the π-operators H, (QGQ*)^{−1}. Thm 3.12 [V p. 423] is stated for real U with (3.35), (3.36). [R: the complex form of the R-001 family, the same item as SOURCES_R005_DD 4.1.]
 - (87) at complex U: RD*H = 0 by analytic continuation from the real class [P, as in SOURCES_R005_DD 4.3(b), CONFIRMED there V3.4].
 - Sizes: c_J and c_U are O(1)M(α_0 + α_1) at complex U (CMP 99 pp. 396–397: "We will prove in another paper …" [R], quoted in SOURCES_R005_DD §2). So at complex U the prefactor of Theorem 189 is O(ε_3 + M(α_0 + α_1)), not O(ε_3). This is enough for the use of (189) in (187)–(188) (smallness of G̃V″) when Mα_0, Mα_1 are small; it is not literally the printed "O(1)ε_3".
7.3 Off-shell (U, J independent; CMP 109 (3.16)) [P-sketch for the structure; I for the claim that no other route exists]. Theorem 189 needs (87). Off-shell, with H built from G_π(J) (SOURCES_R005_DD 4.3(a)), G_π^{−1}H = Q*(QG_πQ*)^{−1}(L^{j(·)}η)^{−1} gives
 Δ_π(J)H = Q*(QG_πQ*)^{−1}(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1} − DRD*H,
and RD*H = RG′D*Δ′_π(δJ)H ≠ 0 (SOURCES_R005_DD 6.2, CONFIRMED V3.14). Term 4 of SOURCES_R005_DD 6.3 inside Δ′_π(δJ)H is ½DRG′D*Γ_4(λ_2, δJ). Since G′D*D = G′Δ_U acts as the identity on R-range fields of N(Q′), D(RG′D*(½DRG′D*Γ_4)) contains ½DRG′D*Γ_4 again. So M = Δ_π(J)H off-shell contains the operator ∇G′∇* applied to a function of J. CMP 99 (3.44) [quoted and image-checked in SOURCES_R005_DD_VERIFY V3.15] bounds it only with a Hölder norm of J. The spaces U^c_j give |J| only. So Theorem 189 off-shell has the same open item as the Δ entry of (190) off-shell (row R-010 note). The terms F_a, F_0 and the parts of F_b, F_c without M do not have this item.
 Two readings [I-reading]. CMP 109 p. 273 [quoted in SOURCES_R005_DD 1.2, image-checked there] replaces "the configurations U_{k+1}, J_{k+1} occurring in operators" of (179)–(180) by U, J. (i) If M and N are read in the printed form (87)–(89) (right sides), with U, J inserted, then F_b and F_c need only (3.132) at (U, J), and Theorem 189 holds off-shell relative to (3.132), (3.133) at (U, J) [R]. (ii) If M is read as Δ_π(J)H, the item above appears. The two readings define different functions off-shell; they agree on-shell. I do not decide which one CMP 109 means. Consequence for SOURCES_R005_DD 6.1: its off-shell sup and ∇ entries of (190) rest on (189) at the same point, so under reading (ii) they inherit this item. SOURCES_R005_DD did not state this.

## 8. Proposed status (not applied; this file is unverified)

R-005 (status column). Replace the core clause "reduced [verified 2026-10-28] to R-001 (kernel-decay form) + published CMP 98 Props. 4–5, CMP 99 Thm 3.3/3.12 (G part), CMP 102 (69)–(73), Props. 3–4, (185)–(188) + R-018 + one bookkeeping item ((90)–(97))" by:
"(189) PROVED relative to listed inputs (SOURCES_R005_189, unverified): Theorem 189 with rate any a < ½δ_0 and prefactor O(ε_3 + c_J + c_U) (≤ O(ε_3) in CMP 102), at g^c-valued A′ with (77), real U_0 and J = J(U_0). Method: one differentiated factor per term; localization by Cauchy estimates with a position-dependent radius (CMP 102 (69) device) applied to δC/δA (Lemma C2) and to the V_0-gradient (Lemma G); weights by the scale-shift rule (dimension count). Inputs: R-001 ((3.132)); CMP 99 (3.133), Thm 3.12 [printed]; CMP 102 (33)–(40), (44)–(46), (55)–(58), (68)–(73), (80), (85)–(96), (103) [printed]; CMP 98 Props. 4, 5 [printed] and Prop. 5 at complex arguments (CMP 98 p. 43 sentence) [R]; CMP 96 Lemma 2.1 and the scale-shift rule (CMP 99 p. 398) [R]; the on-shell identity (87). Residue: the complex-argument Prop. 5 [R]; the locality reading of Balaban's V_0 bounds (G1) [P-sketch]; κ small (a lower bound on RM_1) [I-minor]; B_1 ≥ B_3 to reach the printed ε_3 [I-minor]. The 'one bookkeeping item' is discharged. Complex U (on-shell): holds given the complex forms of (3.132)–(3.133) and of the J bound (CMP 99 pp. 396–397) [R], with prefactor O(ε_3 + M(α_0 + α_1)). Off-shell (CMP 109 (3.16)): holds under reading (i) of §7.3 [R]; under reading (ii) it has the ∇G′∇*-on-J item of SOURCES_R005_DD §6.3."
One-line status: "(189) proved relative to listed inputs (SOURCES_R005_189, unverified); derivative entries of (190) on-shell (SOURCES_R005_DD, verified); residue: complex-argument CMP 98 Prop. 5 [R], (G1) [P-sketch], complex-U π-operator bounds [R], off-shell reading."
Proposed grade after a verifier confirms: "FULL PROOF relative to listed inputs" (the grade of R-002, R-003), on-shell.

R-019 (note). The residue "(189) at complex A′ stays [I]" becomes "(189) at complex A′ [P] relative to CMP 98 Prop. 5 at complex arguments [R]" (§7.1). This is the same input that R-019 already lists for (73) at complex A′. So R-019's residue reduces to that one printed sentence plus the readings already listed.

SOURCES_A4_D189 (no edit; for the next ledger pass). Its §4 Lemma D2 and §5 bound are superseded by Lemma F and Theorem 189. A4's §6.4 (D²U) is not re-derived here.

R-010 (note). Add to the off-shell item: under reading (ii) of §7.3, the sup and ∇ entries of (190) off-shell also depend on the ∇G′∇*-on-J item, through (189).

## 9. Grade table

| Claim | Grade |
|---|---|
| 1: (189) text, (185), (186), symbols | [V] CMP 102 pp. 290, 292, 308 |
| 2: gaps (g1)–(g6) of A4_D189 | [P] (by inspection of A4 and its verifier) |
| 4: Lemma K′ (localized composition, dimension count) | [P] given (S7) [R] |
| 4: kernel classes of H, ∇H, 𝔇, (I + 𝔑)^{−1}, K, Q, M, N | [V] printed bounds; M, N [P] from (87), (89), (S6), (S8) |
| 5.2: 𝔇𝔄, ψ, ∇ψ localized | [P] given (73), (3.133) |
| 5.3: Lemma C2 | [P] given (S1), (S2) complex [R] |
| 5.4: Lemma F, identity δ𝔇 = (I + 𝔑)^{−1}(δK)(I − H𝔇) | [P] |
| 5.5: Lemma G | [P] given (G1); (G1) [P-sketch] from (38)–(40), (90)–(96) [V] |
| 6: Theorem 189, real U_0, on-shell, complex A′ | [P] given the inputs of §3 |
| 6: rate any a < ½δ_0 | [P] |
| 6: printed ε_3 prefactor | [P] given c_J, c_U ≤ ε_3 ((86), (38), (103) [V]; B_1 ≥ B_3 [I-minor]) |
| 7.1: complex A′, complex B | [P] given (S2) complex [R: CMP 98 p. 43]; proof of (157) complex [P-sketch] |
| 7.2: complex U on-shell | [R] complex (3.132)–(3.133), J bound; prefactor O(ε_3 + M(α_0 + α_1)) [P] |
| 7.3: off-shell structure | [P-sketch]; reading choice [I-reading] |

## 10. Report

(189) is proved [P] on-shell, for complex A′ and real U_0, relative to printed CMP 98/99/102 lemmas and R-001. Rate: any a < ½δ_0. Size: O(ε_3 + c_J + c_U), which is O(ε_3) in CMP 102. Method: in each term of δV/δA′ the derivative acts on one factor. That factor is localized by Cauchy estimates with a position-dependent radius. The scale-shift rule gives the weight (L^jη)^{−3}. Residue: CMP 98 Prop. 5 at complex arguments (one printed sentence, p. 43), (G1) [P-sketch], complex-U π-bounds [R]. Off-shell: open under one reading.
