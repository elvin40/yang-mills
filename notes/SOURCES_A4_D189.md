# SOURCES_A4_D189 — derivation attempt of CMP 102 (189) (trust-ledger A4), IDEAS_FABLE §I4

Status: complete, unverified (Claude Opus, 2026-10-28). Ledger §7 is authoritative.
Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read. No existing file edited.
Tags: [P] proved here; [R] reduced to a named input; [I] inference; [V] checked against page image or text layer.

## 0. Correction of the target statement [V, SOURCES_MA2_VERIFY §2]
(189) is NOT literally a bound on D²U_k. Its object is the kernel of (δ²V/δA′²)(A′), where V is the
nonlinear (≥ cubic) part of the action in the linearized variable A′ (CMP 102 (176), (186)). (187) is its
operator-norm, ε-small form after composition with G̃. (190) (first derivatives of 𝓗, i.e. DU in Landau
form exp iη𝓗(B)) is derived from (189) by the Neumann series (188). So the §I4 route must be applied to
δ²V/δA′², with the minimizer equation entering through G̃ and the linearizing map D.

## 1. What V is, and where nonlocality enters [V, CMP 102 text layer pp. 285–290]
- Linearizing map (47): A = A′ − HD(A′). D is the fixed point of (50) X ↦ C_j(L^jηA′ − L^jηHX) on Λ_j,
  C_j = nonlinear part of the averaging Q_j (44), |C_j(L^jηA)| ≤ C_2(L^jη)²|A|². Contraction (54); D analytic,
  |D(A′)| ≤ 4C_2|A′|²_{(−1)} (55); D starts at second order (56).
- H = constrained minimizer of ½⟨A,ΔA⟩ under L^jηQ_jA = B, RD*A = 0 (45). Kernel decay from CMP 99 Thm 3.12 (46).
- First derivative 𝔇(A′;c,b) = δD(A′,c)/δA′(b) (64) solves (68): (I + 𝔑)𝔇 = (δC/δA)(…), where
  𝔑 = (δC/δA)(L^jη(A′ − HD))·H. Bound (69): |𝔑(c,c′)| ≤ O(1)C_2B_0ε_3 e^{−δ_0 d(c,c′)} (Cauchy step at a
  radius matched to the H-kernel decay). Neumann series (70) + "Lemma 2.1 [3]" give (71): (I+𝔑)^{−1} has a
  decaying kernel. Prop. 5 [4] gives (72). Result (73): |𝔇(A′;c,b)| ≤ O(1)ε_3 (…)e^{−δ_0 d(c,y)}, b ∈ B_j(y).
  Remark after Prop. 3: 𝔇 minus its linear-in-A′ term, 𝔇_2, obeys (73) with ε_3² in place of ε_3.
- V(A′) (80) = −⟨HD_3(A′), J⟩ − ⟨A′, Δ_π HD(A′)⟩ + ½⟨HD(A′), Δ_π HD(A′)⟩ + V_0(A′ − HD(A′)).
  V_0 = cubic-and-higher part of the plaquette action around U_0: a LOCAL functional (sum over plaquettes).
- First derivatives of each term of V are bounded with decay in (85)–(89) via (73), (3.132) [5], (55).
Key consequence [I → checked in §2]: δ²V/δA′² does NOT involve the minimizer map or a Hessian inverse.
Its nonlocality comes only from H (CMP 99 Thm 3.12), from 𝔇 and δ𝔇/δA′ (Neumann series), and from
(βGβ*)^{−1}-type operators in (88) ((3.132) [5]). The §I4 IFT/Hessian route is therefore not the natural
route for (189). The natural route is: differentiate (68) once more and compose decaying kernels.
The minimizer enters only later, through G̃ in (187)/(188) and (190).

## 2. Two tools, both elementary [P], plus Balaban's own version [V]
Setting: a countable set of sites (bonds/blocks in scale-j block units) with metric d; K(a) := sup_x Σ_y e^{−a d(x,y)}
< ∞ for a > 0 (finite for Z^d-like lattices, depends on a and d only). Weighted Schur norm for a kernel N:
‖N‖_a := sup_x Σ_y |N(x,y)| e^{a d(x,y)} (and the same with x, y swapped; take the max).
Lemma T1 (submultiplicative) [P]: ‖N_1N_2‖_a ≤ ‖N_1‖_a‖N_2‖_a, since e^{a d(x,z)} ≤ e^{a d(x,y)}e^{a d(y,z)}.
Lemma T2 (decaying inverse, perturbative) [P]: if |N(x,y)| ≤ ν e^{−2a d(x,y)} and νK(a) < 1, then
  ‖N‖_a ≤ νK(a), (I+N)^{−1} = Σ_n (−N)^n converges in ‖·‖_a, and
  |(I+N)^{−1}(x,y) − δ_{xy}| ≤ ‖Σ_{n≥1}(−N)^n‖_a e^{−a d(x,y)} ≤ [νK(a)/(1 − νK(a))] e^{−a d(x,y)}.
  (Pointwise bound from the weighted norm: |M(x,y)|e^{a d(x,y)} ≤ ‖M‖_a.)
Lemma T3 (three-point composition) [P]: for a > 0,
  Σ_{c′} e^{−a[d(c,c′) + d(c′,b) + d(c′,b′)]} ≤ K(a/2) e^{−(a/2)[d(c,b) + d(c,b′)]}.
  Proof: S := d(c,c′)+d(c′,b)+d(c′,b′). Triangle twice: 2d(c,c′)+d(c′,b)+d(c′,b′) ≥ d(c,b)+d(c,b′).
  So S ≥ ½[d(c,b)+d(c,b′)] + ½[d(c′,b)+d(c′,b′)] ≥ ½[d(c,b)+d(c,b′)] + ½d(c′,b). Sum over c′. □
  Two-point version: Σ_{c′} e^{−a[d(c,c′)+d(c′,b)]} ≤ K(a/2) e^{−(a/2)d(c,b)} (same proof).
Balaban's equivalent [V, CMP 96 Lemma 2.1, (2.61)–(2.63), text layer p. 234]: Σ_y′ e^{−αδ_0 d} ≤ c_1(α) and the
m-fold chain Σ e^{−δ_0 d(y,y_1)}…e^{−δ_0 d(y_m,y′)} ≤ c_1(α)^m e^{−(1−α)δ_0 d(y,y′)}. This is the "Lemma 2.1" that CMP 102
cites at (71) and before (190). So T1–T3 are the tools Balaban already uses; T2 is how (71) is proved.
Consequence for the §I4 route [P]: Demko–Moss–Smith / Jaffard are NOT needed. Every operator to invert in CMP 102
§C–§E is I + (small decaying kernel), because CMP 102 is perturbative (ε_3 small). T2 gives the decaying inverse
with rate and constant depending only on (a, d, ν). DMS would be needed only for a non-perturbative inverse.
Rate-tracking versions (used below; same proofs) [P], 0 < α < 1:
  T2α: |N(x,y)| ≤ ν e^{−a d}, νK(αa) < 1 ⇒ |(I+N)^{−1}(x,y) − δ_{xy}| ≤ [νK(αa)/(1−νK(αa))] e^{−(1−α)a d(x,y)}
       (weight e^{(1−α)a d}; Schur sum Σ_y ν e^{−αa d} ≤ νK(αa)).
  T3α (two-point): Σ_{c′} e^{−a[d(c,c′)+d(c′,b)]} ≤ K(αa) e^{−(1−α)a d(c,b)}.
  T3α (three-point): Σ_{c′} e^{−a[d(c,c′)+d(c′,b)+d(c′,b′)]} ≤ K(αa) e^{−(1−α)(a/2)[d(c,b)+d(c,b′)]}
       (S ≥ ½[d(c,b)+d(c,b′)] and S ≥ d(c,c′), so S ≥ (1−α)·½[…] + α d(c,c′)).
  Contraction: Σ_c e^{−r[d(c,b)+d(c,b′)]} ≤ K(αr) e^{−(1−α) r d(b,b′)}.
  Finite range r_0 of a local factor costs only e^{a r_0} = O(1).

## 3. Inputs, each a published CMP 98/99/102 statement [V where quoted]
(N1) H kernel: |H(b,c)| ≤ B_0(·) e^{−δ_0 d(b,c)} with the scale weights of (46); same for ∇H, Δ_πH.
     Source: CMP 99 Thm 3.12 (text l. 1705), which derives the H bounds (3.133) "from (3.129) and (3.132)".
     (3.132) is ledger A1 (asserted, proof "not repeated"). So (N1) is [R to A1]. CMP 102 itself uses (N1)
     in (69), (73), (86), (137). Δ_πH: CMP 102 (137) via CMP 99 (3.126), (3.119)–(3.120) [V text] [R to A1].
(N2) C_j = nonlinear part of the averaging Q_j (44): analytic on |A| < c_4 (CMP 98 Prop. 4), |C_j| ≤ C_2(L^jη)²|A|²,
     and LOCAL: C_j(·, c) depends only on A on bonds within a fixed (d, L) distance of the block of c.
     Locality [I]: Q_j is a composition of j one-step block averagings (CMP 98); Balaban's bound (69)–(72)
     treats δC/δA as local (the only decay in (69) is from H). Prop. 5 of [4] gives (72). Not re-read.
(N3) V_0 = cubic-and-higher part of the plaquette action (39)–(40): a sum over plaquettes p of analytic functions
     of A on ∂p and of DA near p; |V′_0(A,∂p)| bound (40) and its derivative versions (90) [V text]. Local, range 1.
(N4) (I+𝔑)^{−1} with |𝔑(c,c′)| ≤ O(1)C_2B_0ε_3 e^{−δ_0 d(c,c′)} (69) [V text, constant partly OCR-lost]:
     T2α gives (71) [P given (69)]. This is Balaban's proved Prop. 3 chain.
(N5) Analyticity: D, 𝔇, V are analytic in g^c-valued A′ on (77) with max{|A′|_{(−1)}, |∇A′|_{(−2)}} < a_3
     (Prop. 3, Prop. 4 [V text]). ε_3 ≤ a_3/2 below, so a scalar Cauchy step of radius ≥ 2 is available.

## 4. Lemma D2: second derivative of the linearizing map D has two-sided decay [P given N1–N5]
Notation (scale weights L^jη suppressed; restored in §6 [I]). Φ(A′) := A′ − HD(A′) (= A, by (47)).
𝔇 := δD/δA′, 𝔇_2(c; b, b′) := δ²D(A′, c)/δA′(b)δA′(b′).
Step 1 (equations) [P]. (49): D(A′) = C(Φ(A′)) on Λ_j. Differentiate once: 𝔇 = C′(Φ)(I − H𝔇), i.e.
  (I + C′(Φ)H)𝔇 = C′(Φ)   — this is (68), 𝔑 = C′(Φ)H.
Differentiate again in directions h, h′:
  𝔇_2[h,h′] = C″(Φ)[(I − H𝔇)h, (I − H𝔇)h′] − C′(Φ)H𝔇_2[h,h′], hence
  (I + 𝔑)𝔇_2[h,h′] = C″(Φ)[(I − H𝔇)h, (I − H𝔇)h′].        (D2)
The operator on the left is the SAME I + 𝔑 as in (68). So the IFT step is perturbative: no new inverse.
Step 2 (kernels) [P]. Write (I+𝔑)^{−1} = I + R_1, |R_1(c,c′)| ≤ ρ_1 e^{−a_1 d(c,c′)}, a_1 = (1−α)δ_0, ρ_1 = O(ε_3) (T2α, N4).
 C″(Φ)(c′; b_1, b_2): nonzero only if b_1, b_2 lie within range r_0 of c′ (N2); size ≤ c_C := O(1)C_2/c_4²·… by a
 Cauchy step on C_j of radius c_4/2 (|Φ| ≤ 2ε_3 ≤ c_4/2). So |C″(c′;b_1,b_2)| ≤ c_C e^{a r_0}e^{−a[d(c′,b_1)+d(c′,b_2)]} for any a.
 I − H𝔇 = I + R_2 with |R_2(b_1,b)| ≤ ρ_2 e^{−a_2 d(b_1,b)}, a_2 = (1−α)²δ_0: 𝔇 decays at rate (1−α)δ_0 by (73)
 (equivalently from Step 1: 𝔇 = (I+𝔑)^{−1}C′(Φ), C′ local), and H decays at δ_0 (N1); compose by T3α.
Step 3 (assemble) [P]. 𝔇_2(c;b,b′) = Σ_{c′,b_1,b_2} (I+R_1)(c,c′) C″(c′;b_1,b_2) (I+R_2)(b_1,b) (I+R_2)(b_2,b′).
 Sum b_1, b_2 against the local C″ (two-point T3α with a = a_2): factor e^{−(1−α)a_2[d(c′,b)+d(c′,b′)]}.
 Sum c′ against I + R_1 (three-point T3α, a = min(a_1,(1−α)a_2) = (1−α)³δ_0):
  |𝔇_2(A′; c, b, b′)| ≤ c_{D2} e^{−a_3[d(c,b) + d(c,b′)]},  a_3 = ½(1−α)⁴δ_0,          (D2-bound)
 c_{D2} = O(1)·c_C·(1+ρ_1)(1+ρ_2)²·K(αa)³·e^{δ_0 r_0}, depending on d, L, α, and the CMP 98/99 constants only.
Step 4 (ε-small part) [P]. Let 𝔇_2^{(0)} := 𝔇_2 at A′ = 0 (= the polarized C^{(2)}″, a local constant kernel; the
 "remark after Prop. 3" [V text] is the first-derivative analogue). For |A′| ≤ ε_3, f(z) := 𝔇_2(zA′; c,b,b′) is
 analytic for |z| < a_3^{rad}/ε_3 =: R ≥ 2 (N5), and (D2-bound) holds uniformly on that complex disc (Steps 1–3 use
 only sup bounds valid for complex arguments). Cauchy: |f(1) − f(0)| ≤ sup_{|z|=R}|f| · 1/(R−1) ≤ 2c_{D2}(ε_3/a^{rad})
 · e^{−a_3[…]}. So the A′-dependent part of 𝔇_2 is O(ε_3) with the SAME pointwise decay. The same scalar-Cauchy
 trick gives: 𝔇(A′) − 𝔇(0) = O(ε_3)·e^{−(1−α)δ_0 d}, and D(A′) = O(ε_3²) pointwise (already (55)).
 Key point: Cauchy in a SCALAR parameter z keeps kernel decay, because the decay bound is uniform in z.

## 5. Derivation of (189): the Hessian kernel of V decays [P given N1–N5 and §4]
Target (189) [V, MA2_VERIFY §2]: for supp 𝔄 ⊂ Δ̃(y′), A′ obeying (77),
  |Δ(y)(δ²V/δA′²)(A′)𝔄| ≤ O(1)ε_3(L^jη)^{−3} e^{−¼δ_0 d(y,y′)} max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}}.
It is a TWO-point statement (Hessian of V at a fixed A′), not a three-point one. Write V″(b,b′) for its kernel.
Differentiate the four terms of (80) twice. Sizes use |A′| ≤ ε_3, |D| = O(ε_3²), 𝔇 = O(ε_3), 𝔇_2 = 𝔇_2^{(0)} + O(ε_3).
(T1) −⟨HD_3(A′), J⟩, D_3 = D − D^{(2)}. V″_1(b,b′) = −Σ_c (H*J)(c)·[𝔇_2(c;b,b′) − 𝔇_2^{(0)}(c;b,b′)].
  |H*J(c)| ≤ c_J (bounded; J = first-order current at U_0, c_J from (85)–(86) [I]). Bracket = O(ε_3)e^{−a_3[d(c,b)+d(c,b′)]}
  (§4 Step 4). Contract c: |V″_1| ≤ O(ε_3) e^{−(1−α)a_3 d(b,b′)}.
(T2) −⟨A′, Δ_πHD(A′)⟩. V″_2 = −[(Δ_πH𝔇)(b,b′) + (Δ_πH𝔇)(b′,b)] − Σ_c (H*Δ_π*A′)(c)𝔇_2(c;b,b′).
  Δ_πH decays at δ_0 (N1, [R to A1]); 𝔇 = O(ε_3) decays; T3α ⇒ first bracket O(ε_3)e^{−(1−α)²δ_0 d}.
  |H*Δ_π*A′| = O(ε_3); contract with (D2-bound) ⇒ O(ε_3)e^{−(1−α)a_3 d(b,b′)}.
(T3) ½⟨HD, Δ_πHD⟩. V″_3 = (𝔇*H*Δ_πH𝔇)(b,b′) + Σ_c (H*Δ_πHD)(c)𝔇_2(c;b,b′). Sizes O(ε_3²) and O(ε_3²). Same decay.
(T4) V_0(Φ(A′)), Φ = A′ − HD. V″_4 = (I − H𝔇)*V_0″(Φ)(I − H𝔇) − Σ_c V_0′(Φ)(c)·(H𝔇_2)(c;b,b′).
  V_0 local (N3), cubic ⇒ V_0″(Φ) has range 1 and size O(|Φ|) = O(ε_3); V_0′ = O(ε_3²). I − H𝔇 = I + R_2 (§4).
  Both pieces: O(ε_3) e^{−(1−α)a_3 d(b,b′)} or better. The DA-dependence of V_0 (integration by parts (93)–(96))
  makes V_0″ a local second-order difference operator; it is paired with ∇𝔄, which is why the right side of (189)
  carries max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}} [I, bookkeeping].
Sum [P]: |V″(A′; b, b′)| ≤ c_V ε_3 e^{−δ_V d(b,b′)}, δ_V = (1−α)a_3 = ½(1−α)⁵δ_0.
 With α = 0.12: (1−α)⁵ = 0.528 ≥ ½, so δ_V ≥ ¼δ_0 + (small). This matches Balaban's rate ¼δ_0 in (189).
 c_V = O(1)(c_J c_{D2} + B_0 c_{D2} + B_0²c_{D2} + c_{V0})·K(·)^m, depending on d, L, α and the CMP 98/99/102 constants.
 Summing b ∈ Δ(y), b′ ∈ Δ̃(y′) costs only block-volume factors, absorbed in O(1) and the (L^jη) weights [I].
Uniformity [P/I]: no step sees |Λ| (only sup_x Σ_y sums, T1–T3) [P]; constants are those of CMP 98/99/102,
 which Balaban states depend on d, L only (k-uniform), with C_2, C_4, B_0 [I] as in MA2_VERIFY l. 41; background U enters
 only through H, Δ_π, C_j, V_0, all analytic in regular U (CMP 102 p. 287 remark [V text]); so the bound holds for every U
 in the regular class of the CMP 99 inputs [R to A18 for the class match].
Conclusion: (189) holds, with Balaban's rate ¼δ_0 and size O(ε_3), given N1–N5. [P given N1–N5]

## 6. The minimizer map: IFT form, (190), and D²𝓗 [P given §5 and inputs]
6.1 Stationarity equation [V, CMP 102 (180), p. 306 text; form confirmed in MA2_VERIFY §2]. In Landau gauge
 U_k(V′V_0)U_0^{−1} = exp iη𝓗(B), 𝓗 = 𝒜_0 + H_0B − HD(𝒜_0 + H_0B) (179), and 𝒜_0 solves
  F(𝒜_0, B) := 𝒜_0 − G̃Δ^{(2)}H_0B + G̃(δV/δA′)(𝒜_0 + H_0B) = 0,   G̃ = (Δ_a − Δ^{(2)})^{−1}.        (180)
 This is the first variation of the action on the constraint space (Q-averaging fixed to B), multiplied by G̃.
 Finite range: δV/δA′ is not finite range but has decaying kernels (§5, (86)–(93)); Δ^{(2)} is local and small
 ((3.137) CMP 99: |Δ^{(2)}A| ≤ O(1)Mα_0|A| [V text l. 1671]).
6.2 IFT [P]. D_𝒜F = I + G̃V″ =: I + N. The constrained Hessian of the action is G̃^{−1}(I + N); so
 (Hessian)^{−1} = (I + N)^{−1}G̃. Its lower bound/invertibility needs only: (i) G̃ bounded with decaying kernel and
 (ii) ‖N‖ small. (ii) is (187) [V] (O(1)B_0C_4B_5ε_1); with (189) also pointwise: |N(x,y)| ≤ O(B_0ε_3)e^{−(1−α)¼δ_0 d}.
 (i): CMP 102 p. 306 [V text]: "Δ^{(2)} is a small perturbation of Δ_a, and the new operator G̃ has exactly the
 same properties as Δ^{−1}"; the G bounds are CMP 99 Thm 3.3 extended by Thm 3.12 (random-walk expansion, a published
 proof [V text l. 1705–1709 for the statement; proof not re-read]). So NO A3-type quantitative Hessian lower bound
 is needed: the Hessian is inverted perturbatively around G̃. Demko–Moss–Smith is not needed (§2).
6.3 (190) consistency check [P given §5, N1, (i)]. (184): (I + N)𝔄_0 = G̃Δ^{(2)}H_0 − G̃V″H_0. T2α: (I+N)^{−1} = I + R,
 rate (1−α)²¼δ_0. Right side decays at ≥ (1−α)²¼δ_0 (T3α; G̃, H_0 at δ_0; V″ at ¼δ_0). So 𝔄_0 decays at (1−α)³¼δ_0.
 (182): δ𝓗/δB = 𝔄_0 + H_0 − H·𝔇(𝒜_0+H_0B)·(𝔄_0 + H_0) decays at (1−α)⁴·¼δ_0 ≥ ⅛δ_0 for α ≤ 0.159.
 Size O(1) (dominated by H_0). This reproduces Balaban's (190) rate ⅛δ_0 and its O(1) prefactor [P given inputs];
 the ∇, Hölder, D*D, Δ versions follow from the same bounds on ∇H_0, ∇G̃ (CMP 99 Thm 3.3/3.12) [I, not redone].
6.4 Second derivative of the minimizer map [P given §5, N5]. Differentiate (180) twice:
  D²𝒜_0[h,h′] = −(I + N)^{−1}G̃ V‴(𝒜_0 + H_0B)[(𝔄_0 + H_0)h, (𝔄_0 + H_0)h′].
 V‴ is O(1) (V is cubic), NOT O(ε_1). Its three-point decay: Cauchy in one bond variable A′(b″) at radius ~ε_3 applied to
 V″ = O(ε_3)e^{−δ_V d(b,b′)} gives |V‴(b,b′,b″)| ≤ O(1)e^{−δ_V d(b,b′)}; V‴ is symmetric in its three arguments, so
 |V‴| ≤ O(1)e^{−(δ_V/3)[d(b,b′)+d(b′,b″)+d(b,b″)]} (min ≤ geometric mean). Compose with the decaying factors (T3α):
  |D²𝓗[h,h′](x)| ≤ C Σ_{y,y′} e^{−δ[d(x,y) + d(x,y′)]}|h(y)||h′(y′)|,  C = O(1), δ = c(α)δ_0 > 0.        (D²U)
 CORRECTION to the brief: the prefactor is O(1), not O(ε_1). The ε_1-smallness of (187) is for the B-DEPENDENT part
 K_1(B) of the FIRST derivative (MA2 (4.2)), and in (H−) the ε comes from |DP_p| = O(ε_kη²) (MA2_VERIFY §3).
 MA2 (4.3) reached the same O(1) bound by Cauchy + symmetrization; it is now [P given §5] instead of [R to (189)].
 Complex B: every step uses sup bounds valid on the complex analyticity ball, so (4.2) holds on the complex ball, as
 MA2 §4.4 required (this closes MA2_VERIFY's remark that Prop. 9 does not state (190) at complex B) [P given inputs].
 Addendum to 6.4 [P]: from (179), D²𝓗[h,h′] = (I − H𝔇)D²𝒜_0[h,h′] − H𝔇_2[(𝔄_0+H_0)h, (𝔄_0+H_0)h′]. The second piece is
 O(1) with the decay of (D2-bound) (§4); it has the same form (D²U). The statement above includes it.

## 7. Ledger (authoritative)
- [V] Target correction: (189) bounds the Hessian KERNEL of the nonlinear action part V at fixed A′ (two-point, O(ε_3),
  rate ¼δ_0). It is not a bound on D²U_k. (190) (first derivative of 𝓗) is derived from it via (188).
- [V] The operators to invert in CMP 102 are all of the form I + (small decaying kernel): (68)/(71) and (184)/(188).
- [P] T1–T3α (§2): weighted Schur norm, perturbative decaying inverse, two/three-point composition. Equivalent to CMP 96
  Lemma 2.1 [V text]. Demko–Moss–Smith / Jaffard: not needed (non-perturbative tools for a perturbative problem).
- [P given N1–N5] Lemma D2 (§4): the second derivative of the linearizing map solves (I+𝔑)𝔇_2 = C″[(I−H𝔇)·,(I−H𝔇)·] with
  the SAME operator as (68); |𝔇_2(c;b,b′)| ≤ c_{D2}e^{−½(1−α)⁴δ_0[d(c,b)+d(c,b′)]}; its A′-dependent part is O(ε_3) with the
  same decay (scalar-parameter Cauchy keeps kernel decay).
- [P given N1–N5, §4] (189) (§5): |V″(A′;b,b′)| ≤ c_Vε_3e^{−½(1−α)⁵δ_0 d(b,b′)}, rate ≥ ¼δ_0 at α = 0.12. Volume-free;
  k-uniform as far as the CMP 98/99/102 constants are; valid on the complex domain (77).
- [P given §5, N1, G̃ bounds] (190) reproduced with rate ⅛δ_0 (α ≤ 0.159) and O(1) prefactor (§6.3). Hölder/∇/Δ versions [I].
- [P given §5] (D²U): |D²𝓗[h,h′](x)| ≤ C Σ e^{−δ[d(x,y)+d(x,y′)]}|h(y)||h′(y′)|, C = O(1), δ = c(α)δ_0. The brief's
  "Cε_1" prefactor is wrong; the ε of (H−) comes from |DP_p| (MA2). Consequence: MA2 input (C3) moves from
  "Balaban (189), announced" to "§5 + N1–N5"; MA2 (4.2) holds on the complex ball.
- [P] No quantitative (A3-type) Hessian lower bound is used: the constrained Hessian is G̃^{−1}(I+N), N small by (187).
- [R] Residual inputs:
  N1 = H, Δ_πH kernel decay = CMP 99 Thm 3.12/(3.133), which rests on (3.132) = ledger A1. Balaban's PROVED Props. 3–4
    of CMP 102 use N1 too, so A4 adds no input beyond what CMP 102's own proofs use.
  G̃ decay = CMP 99 Thm 3.3 + 3.12 for G (published random-walk proof; not re-read) + (3.137) perturbation [V text].
  N2 locality of C_j [I] (CMP 98, Q_j composed of local one-step averagings; not re-read).
  N3 locality/analyticity of V_0 [V text (39)–(40), (90)].
  J bounded (c_J) [I]; regular-class match of the background = A18 [R].
- [I] Bookkeeping not redone: the multiscale weights (L^jη)^{−1,−2,−3} across Ω_j, the Δ(y)/Δ̃(y′) block sums, and the
  ∇𝔄 pairing from the DA-dependence of V_0. Balaban does the same bookkeeping for first derivatives in (85)–(97);
  the second-derivative version adds no new weight type (each extra derivative lands on an already-weighted factor).
- [I] Constants c_C, c_J, c_{V0} named, not computed. Rates are explicit in δ_0 and α.

## 8. STALL / risk section
No stall on the decay mechanism. Risks, in order:
(1) N2 locality of C_j at mixed scales: if C_j(·,c) is only pseudo-local (decaying, not finite range), T3α still applies
    with one more (1−α) factor; the rate ¼δ_0 then needs α ≈ 0.1. Not a failure mode, only a constant.
(2) The weight bookkeeping (§7 [I]) is where Balaban says the calculation is "awkward". The structure above shows it is
    a finite list of compositions of kernels already bounded in CMP 102 (73), (86), (137); a line-by-line check against the
    norms |·|_{(−1)}, |·|_{(−2)}, |·|_{(−3)} is the remaining work for a verifier.
(3) Expected residue was an A3-type Hessian bound. It does not appear. The real residue is A1 (through H), which CMP 102's
    proved parts already need.
Status: A4 (189) DERIVED [P given N1–N5], i.e. reduced to A1 + published CMP 98/99 statements + weight bookkeeping [I].
(190) and the two-sided D²𝓗 bound follow. Not verified by an independent agent.
