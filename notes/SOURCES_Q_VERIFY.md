# SOURCES_Q verification (independent)

Started 2026-10-27. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.

## 1. CMP 116 p. 17 (2.23)-(2.24), image [V]
Verbatim (2.23): "∫dμ_0(X)|_Z exp(−½⟨Γ_k(Z_0,0)X, C^(k)(Z_0,0)Γ_k(Z_0,0)X⟩ + ½α_5‖ZX‖²) · ∫dμ_{C^(k)(Z_0,0)}(B) exp(−⟨B, Γ_k(Z_0,0)X⟩ + ½α_5‖Z_0B‖²)".
(2.24) has det(C^(k)(Z_0,0)^{−1} − α_5 I) and (C^(k)(Z_0,0)^{−1} − α_5 I)^{−1}. Then "we have assumed that α_5 is sufficiently small, e.g. α_5‖C^(k)(Z_0,0)‖ < ½".
Sign: both α_5 terms are +½α_5‖·‖² in the exponent. So the precision is Q = Q_0 − α_5 diag(Z, Z_0). Q ≤ Q_0. CONFIRMED.
Q_0 coupling: completing the square gives Q_0 = [[I + Γ*C_0Γ, Γ*], [Γ, C_0^{−1}]], C_0 := C^(k)(Z_0,0). Q_0 is NOT block-diagonal. B-marginal covariance = (Q_0^{−1})_BB = C_0 + C_0ΓΓ*C_0 (Schur complement inverse) ≥ C_0. Direction favours the author: the marginal is larger than C_0.
So the chain holds in the robust form (Q^{−1})_bb ≥ (Q_0^{−1})_bb ≥ C_0(b,b) ≥ ‖C_0^{−1}‖^{−1} = ‖Z_0C*Δ_k(0)CZ_0‖^{−1} ≥ ‖C*Δ_k(0)C‖^{−1}. The identity "(Q_0^{−1})_BB = Z_0-block of C^(k)" is not needed. Note: the operator is the localized one at σ = 0 (s-parameters set to 0), not the bare C*Δ_kC. The norm input must cover the localized operator too [I: same random-walk family].

## 2. CMP 116 p. 13 (2.7) and CMP 99 p. 428, images [V]
CMP 116 (2.7) verbatim: "(C^(k))^{1/2} = (C*Δ_kC)^{−1/2} = (1/π)∫_0^∞ dx x^{−1/2}(xI + C*Δ_kC)^{−1} = (1/π)∫_0^{γ_1} ... + Σ_{n≥0} (−1)^n/(n+½) γ_1^{−n−1/2}(C*Δ_kC)^n". Then "Expanding the operator Δ_k into the generalized random walks, we obtain an expansion of the series above, if γ_1 is sufficiently large."
So C^(k) = (C*Δ_kC)^{−1} exactly, by definition (first equality), not up to the series. The series needs spectral radius of C*Δ_kC < γ_1. CONFIRMED: CMP 116 uses the norm bound without a cited proof.
CMP 99 p. 428 verbatim: "C is an identity operator on almost all bonds, except the bonds b_0 for which a value (CB̃)(b_0) is equal to a solution of the equation (QB)(c) = 0, considered as an equation on the variable B(b_0)." C is the parametrization map B = CB̃ of the subspace {B = 0 on Λ^c, B = 0 on ∪A_x(y), Q_1B = 0}. It is U-dependent through Q (the background-field Q), but it is the identity on non-b_0 bonds of Λ̃ for every U.
(3.157)-(3.158) verbatim: "C^(k)(Λ) = C(C*Δ_kC)^{−1}C*, or (C*Δ_kC)^{−1} = C̃^(k)(Λ) = C^(k)(Λ)↾_{Λ̃}". γ_0 / "We have proved it in [4], Lemma 2.4, for operators with U = 1 ... we can prove it for C*Δ_kC with an arbitrary configuration U satisfying (3.35), (3.36)" / "This property, together with a uniform exponential decay of C*Δ_kC implies bounds ... by the theorem of Sect. 5 in [2]." All as quoted in SOURCES_Q §2. CONFIRMED.
Reading: the exponential decay of C*Δ_kC is used as a premise, not proved or referenced. Balaban then says "we will proceed in a different way" (random-walk expansion via G_1). So the decay sentence is an assertion, not a theorem. CONFIRMED as [R].

## 3. NEW: CMP 99 p. 422 (3.132), image [V]
Verbatim: "The operators (QGQ*)^{−1}, or (QG_1Q*)^{−1}, can be analyzed in the same way as the operator (Q′G′²Q′*)^{−1}. We will not repeat these considerations here, let us write only bounds. We have |(QGQ*)^{−1}(y, y′)| ≤ O(1)(L^jη)^{−2}(L^jη)^{−d}e^{−δ_1d(y,y′)} for y ∈ Λ_j, y′ ∈ Λ_j′, (3.132) and the same for the operator with G_1 instead of G."
This is a U-uniform (regular U, α_0 small) exponential kernel bound on (QG_1Q*)^{−1}, the leading term of Δ_k in (3.156). Schur test gives ‖(QG_1Q*)^{−1}‖ ≤ O(1)·Σ e^{−δ_1 d} on the unit lattice. SOURCES_Q missed this. It upgrades item (2): the main part of the U-uniform norm input is a printed bound, with proof "by analogy" (not repeated). Remaining pieces: the −2⟨H_1D̃^(2)(B), J⟩ term (O(Mα_0) by (3.36) regularity [I]) and ‖C(U)‖ [I].

## 4. CMP 96 pp. 244-246, images [V]
p. 244: "The form is bounded from above, and bounded from below by ‖B↾Λ^c‖²." No upper constant. CONFIRMED.
p. 245 (2.125) verbatim: "|(Q_1B)(c)|² = |Σ_{x∈B(c_−)} L^{−(d+1)}B([x, x+Le_μ])|²". So (Q_1B)(c) = L^{−(d+1)}·Σ over the L^d paths of length L = an equal-weight average over L^{d+1} μ-bonds. CONFIRMED.
Naming caveat: CMP 99 p. 428 defines B(c) as the bonds crossing from B(c_−) to B(c_+) (L^{d−1} bonds). The L^{d+1} set of (2.125) is the path set, not B(c). The author's "corridor B(c)" mislabels the set; the count L^{d+1} is right.
‖C‖² ≤ L^{d+1}: the path sets of different c are disjoint (each μ-bond lies on one path from one block). B(b_0) = −Σ_{others}B(b) over L^{d+1} − 1 bonds. Cauchy-Schwarz gives |B(b_0)|² ≤ (L^{d+1} − 1)Σ|B̃|², so ‖CB̃‖² ≤ L^{d+1}‖B̃‖². CONFIRMED (bonds fixed to 0 by (2.121) only shorten the sum).
p. 245 Lemma 2.4 (2.128): "L^{d−2}Σ_{c∈Λ′}|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ (1/(12d²))L^{−d−1}‖B‖²". CONFIRMED. p. 246: "bounded from below by γ_0″‖B‖² with a positive constant γ_0″ dependent on d and L only". CONFIRMED (γ_0 is U = 1 only).

## 5. CMP 95 p. 34 (1.99)-(1.101), image [V]
(1.100) verbatim: "a^{−1}(φ − 1)φ^{−1} ≤ QGQ* ≤ a^{−1}I". After (1.101): "bounded from below and above by positive constants dependent on d only (for a = 1). The same property holds for QGQ*." CONFIRMED.
(1.101): a^{−1}(φ_μ − 1)/φ_μ = S/(Δ_0 + aS), S := Σ_l |u|²|v_μ|²Δ_0/Δ. So ‖(QGQ*)^{−1}‖ ≤ sup (Δ_0 + aS)/S = a + sup Δ_0/S. The author's a·κ_d, κ_d := sup φ/(φ − 1), equals this, so the bound is right. Caveat: κ_d depends on a (and on L through u), and is "d only" only at a = 1. Sharper: Δ_k = (QG_1Q*)^{−1} − a ≤ sup Δ_0/S, so the −a term cancels the +a; ‖Δ_k‖ ≤ a·κ_d − a.
Free-case algebra: ‖C*Δ_kC‖ ≤ ‖C‖²‖Δ_k‖ ≤ L^{d+1}aκ_d, so c_− ≥ (aκ_dL^{d+1})^{−1}. CONFIRMED, with κ = κ(d, a, L) unless a = 1. CMP 95 G ↔ CMP 99 G_1 identification stays [I].
