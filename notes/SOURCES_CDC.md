# SOURCES_CDC — norm bound ‖C*Δ_kC‖ ≤ γ_1 (last input of Lemma G3)

Status: in progress 2026-10-27. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.
Input from SOURCES_Q §2, §3.1, §4.4: Δ_k is defined by CMP 99 (3.156), ⟨B, Δ_kB⟩ = ⟨B, (QG_1Q*)^{−1}B⟩ − a⟨B, B⟩ − 2⟨H_1D̃^{(2)}(B), J⟩. So the leading term is an INVERSE, (QG_1Q*)^{−1}, not a local curl²+div² form. The brief's expected mechanism ("finite-difference operator with bounded coefficients") must be checked against this.

## 1. What Δ_k is: CMP 99 p. 427 (3.155) and p. 428 (3.156)–(3.158) [V images]

[V] p. 427 (3.155): e^{½⟨g, C^{(k)}(Λ)g⟩} = Z^{−1}∫dB↾_Λ δ(Q_1B)δ_{Λ_x}(B) exp[−½⟨H_1B, G_1^{−1}H_1B⟩ + ½a⟨B, B⟩ + ⟨H_1D̃^{(2)}(B), J⟩ + ⟨B, g⟩]. U satisfies (3.35), (3.36). D̃^{(2)}(B) is a quadratic polynomial in B. B lives on unit-lattice bonds of Λ.
[V] p. 428 (3.156): the form equals ⟨B, (QG_1Q*)^{−1}B⟩ − a⟨B, B⟩ − 2⟨H_1D̃^{(2)}(B), J⟩ = ⟨B, Δ_kB⟩, on {B = 0 on Λ^c, B = 0 on ∪A_x(y), Q_1B = 0}.
[V] p. 428: B = CB̃, B̃ on Λ̃ = Λ \ (∪A_x(y) ∪ ∪_c B(c)∩c). "C is an identity operator on almost all bonds, except the bonds b_0 for which a value (CB̃)(b_0) is equal to a solution of the equation (QB)(c) = 0". "C is almost local".
[V] p. 428 (3.157)–(3.158): C^{(k)}(Λ) = C(C*Δ_kC)^{−1}C*; (C*Δ_kC)^{−1} = C̃^{(k)}(Λ).

1.1 Reading [P, from the printed identity]. Comparing (3.155) with (3.156): ⟨H_1B, G_1^{−1}H_1B⟩ = ⟨B, (QG_1Q*)^{−1}B⟩. This is the minimizer identity with H_1 = G_1Q*(QG_1Q*)^{−1}: for G_1 > 0,
  ⟨B, (QG_1Q*)^{−1}B⟩ = min{⟨A, G_1^{−1}A⟩ : QA = B}, attained at A = H_1B.
Q maps fine-lattice (spacing η = L^{−k}) fields to unit-lattice fields. So ⟨B, Δ_kB⟩ is the energy of the minimal fine-lattice field with block averages B, minus a|B|², minus a background (J) term.
1.2 Consequence for the brief's mechanism [P]. Δ_k is NOT a local finite-difference operator. Its leading term is the inverse of the block-averaged Green's function. The local operator is G_1^{−1}, on the η-lattice. A naive bound ⟨B, (QG_1Q*)^{−1}B⟩ ≤ ‖G_1^{−1}‖·‖A_trial‖² with a rough trial field gives ‖G_1^{−1}‖ ~ η^{−2} = L^{2k} (a fine-lattice Laplacian). That is NOT uniform in k. So "‖Δ_k‖ ≤ 2d·#terms·sup|coeff|" fails as stated; uniformity in k needs a smooth trial field (or the CMP 95 Fourier bound in the free case).
