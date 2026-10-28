# SOURCES_A7_CDC — TRUST_LEDGER row A7: ‖C*Δ_kC‖ ≤ γ_1 and uniform exponential decay of C*Δ_kC

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read. No existing file was edited.
Read: TRUST_LEDGER rows A1, A1w, A2, A7; SOURCES_Q.md; SOURCES_CDC.md + VERIFY; WC_FULL.md §0–§6, §8–§9, fixes; A1_WALK_FULL.md §0, §7; SOURCES_A1_KERNEL.md §5, §8 (grep); SOURCES_LOC.md and SOURCES_A2_R2.md (s-rule lines); CMP 116 p. 13 at 300 dpi; CMP 116 pp. 12–14 text.
Tags. [V] read on the page. [P] proved here. [R] reduced to a named printed statement. [C] conditional on a named input. [I] inferred, open.
Consumer: (Q) c_− ≥ 1/γ_1 ⇒ G3 ⇒ (H-hist). (Q) needs only the real norm at s ≡ 1 (SOURCES_Q §4.1, SOURCES_CDC §6.1); LOC moves it to s = 0 with ε_M (row A2).

## §1 The exact operator, and a correction to the brief

1.1 Page facts [V].
 CMP 116 p. 13 (2.7), 300 dpi image: "(C^{(k)})^{1/2} = (C*Δ_kC)^{−1/2} = (1/π)∫_0^∞dx x^{−1/2}(xI + C*Δ_kC)^{−1} = (1/π)∫_0^{γ_1}dx x^{−1/2}(xI + C*Δ_kC)^{−1} + Σ_{n=0}^∞ (−1)^n/(n+½)·γ_1^{−n−1/2}(C*Δ_kC)^n."
 Next sentence: "Expanding the operator Δ_k into the generalized random walks, we obtain an expansion of the series above, if γ_1 is sufficiently large."
 CMP 116 p. 12 (2.5): the Gaussian weight is exp(−½⟨B, C*Δ_kCB⟩), and B′ = (C^{(k)})^{1/2}X.
 CMP 99 p. 428 (3.157)–(3.158): C^{(k)}(Λ) = C(C*Δ_kC)^{−1}C*; "C is an identity operator on almost all bonds, except the bonds b_0 for which a value (CB̃)(b_0) is equal to a solution of the equation (QB)(c) = 0" (SOURCES_Q §2).
 CMP 109 p. 268: C^{(k)} = (C*Δ^{(k)}C)^{−1}, with Δ^{(k)} the operator of (3.156) of CMP 99 "with the δ-function gauge fixing term replaced by the exponential one" (WC_FULL PF5).
1.2 Which C. C is NOT (C^{(k)})^{1/2}. C is the almost-local parametrization of the constraint surface Q̃B = 0: C = I − hLQ̃ : V_red → unit fields (WC_FULL 0.6). It is the identity on the kept bonds and solves for B(b_0(c)). C*Δ_kC is the PRECISION of the fluctuation field, and C^{(k)} is its inverse.
 So the brief's form "‖C*Δ_kC‖ = ‖Δ_k^{1/2}C^{(k)}Δ_k^{1/2}‖-type ≤ sup spec Δ_k relative to A_Z" does not apply. A_Z is the Z_0-compression of C*Δ_kC itself (WC_FULL 0.7). Theorem WC(i), A_Z ≥ ¼γ_e, is a LOWER bound on the precision. It gives ‖C^{(k)}‖ ≤ 4/γ_e (the γ_0 side, row A3). It cannot give the UPPER bound γ_1. The upper bound needs a separate argument (§2).
1.3 Which Δ_k. Two readings occur. Both are covered below.
 (E) CMP 116 / CMP 109 (exponential gauge), the one CMP 116 (2.7) uses:
  C*Δ_kC = A_exp := C*[(QG_1Q*)^{−1} − a − Δ_J + 𝒢*𝒢]C on V_red(Λ) (WC_FULL 0.6–0.7, (1.1)).
  Pieces: (QG_1Q*)^{−1} is the Λ×Λ block of the inverse of the multiscale QG_1Q* (CMP 99 (3.129), (3.156)); a > 0 is the averaging constant, which cancels the a-part of (QG_1Q*)^{−1} exactly (SOURCES_CDC §2.1, CDC_VERIFY §2); Δ_J is the background-current term, ⟨B, Δ_JB⟩ = 2⟨H_1hC̃^{(2)}(B), J⟩; 𝒢*𝒢 is the linearized exponential gauge-fixing term, block-diagonal (WC_FULL Lemma G(a)).
  No boundary term enters Δ_k. The Dirichlet condition is B = 0 off Λ (and off Z_0 for A_Z); it acts as a compression.
 (A) CMP 99 p. 428 (axial δ-gauge), the premise of the CMP 99 sentence: C_ax*Δ_kC_ax with Δ_k = (QG_1Q*)^{−1} − a − Δ_J on {B = 0 on Λ^c, B = 0 on ∪A_x(y), Q_1B = 0}, C_ax the parametrization that also sets the axial tree bonds to 0.
  (A) is (E) without the 𝒢*𝒢 term and with C_ax in place of C. Every bound below holds for (A) with c_𝒢 := 0 and ‖C_ax‖ in place of ‖C‖.
1.4 s-versions [V via SOURCES_LOC 1.4, SOURCES_A2_R2 (S-rule)]. CMP 116 (2.8) uses Δ_k(s(Z)). By the printed s-rule (CMP 116 p. 3), each walk term ω of an operator is multiplied by Πs(Δ) over the σ_0 cubes that meet its localization domain. So C*Δ_k(s)C = Σ_ω(Π_{Δ∩ω≠∅}s(Δ))A_ω is defined only through a walk expansion. The norm route of §2 covers s ≡ 1 (the (Q) consumer). §3 covers all s.
