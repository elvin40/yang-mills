# SOURCES_A4_D189 — derivation attempt of CMP 102 (189) (trust-ledger A4), IDEAS_FABLE §I4

Status: in progress (Claude Opus, 2026-10-28). Unverified.
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
