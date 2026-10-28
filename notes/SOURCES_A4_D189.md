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
