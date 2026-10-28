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

## 2. G_0, G_1 and the exact cancellation of a [V images pp. 419–421, P]

[V] p. 420 (3.122): G^{−1} = Δ_π + DRD* + Q*aQ; (3.126) HB = GQ*(QGQ*)^{−1}B. p. 419 (3.119)–(3.120): ⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩ = ⟨A, ΔA⟩ − ⟨A, Δ′_πA⟩, "Δ′_π is a small perturbation of Δ", J = D*η^{−2}Im ∂U small for U regular.
[V] p. 421 (3.128): ⟨A, G_1^{−1}A⟩ = ⟨A, Δ_πA⟩ − 2⟨HC^{(2)}(A), J⟩ + ‖RD*A‖² + a‖QA‖². (3.129) H_1B = G_1Q*(QG_1Q*)^{−1}B. G_0 := (Δ + DRD* + Q*aQ)^{−1}; (3.130) G = G_0(I − Δ′_πG_0)^{−1}; (3.138) G_1 = G_0 Σ_n((Δ′_π + Δ′_1)G_0)^n.

2.1 Identity [P]. Write G_1^{−1} = M_1 + aQ*Q, M_1 := Δ_π + DRD* − 2(HC^{(2)}·J-term). Put N_1 := QM_1^{−1}Q*. If M_1 > 0, then
  QG_1Q* = N_1 − aN_1(I + aN_1)^{−1}N_1 = N_1(I + aN_1)^{−1}, so (QG_1Q*)^{−1} = N_1^{−1} + a.
(Proof: Woodbury, (M + aQ*Q)^{−1} = M^{−1} − aM^{−1}Q*(I + aN)^{−1}QM^{−1}; compress by Q, Q*.) No QQ* = I is needed. Hence by (3.156)
  Δ_k = (QM_1^{−1}Q*)^{−1} − 2(J-term of (3.156)).
The −a⟨B, B⟩ in (3.156) cancels the a exactly. So a does not enter γ_1 except through the J-terms. [check: M_1 > 0 on the Dirichlet domain; for M_0 = Δ + DRD* this is the CMP 96 Lemma 2.4 type bound with the a-term removed — see §4.]
2.2 Variational form [P]. For M > 0 and Q onto, ⟨B, (QM^{−1}Q*)^{−1}B⟩ = min{⟨A, MA⟩ : QA = B}. So
  ‖(QM^{−1}Q*)^{−1}‖ ≤ K ⟺ every unit-lattice B has a fine field A with QA = B and ⟨A, MA⟩ ≤ K‖B‖².
This is an EXTENSION statement: block data B must have a fine-lattice extension with energy O(‖B‖²), uniformly in η = L^{−k}.
2.3 Free value [P from CMP 95 (1.100), V in SOURCES_Q §3]. (1.100) a^{−1}(φ − 1)φ^{−1} ≤ QGQ* gives (QGQ*)^{−1} ≤ aφ/(φ − 1); subtract a: ‖N_0^{−1}‖ ≤ a·sup 1/(φ − 1) =: K_0(d). This sharpens SOURCES_Q §3.1 (aκ_d) by exactly a. K_0 depends on d (and on a only through the a in (1.99) definitions — a·(φ−1)^{−1} is a-free if φ − 1 ∝ a^{−1}; [check] not read).

## 3. Free case U = 1: the a-free constant [V CMP 95 p. 34 image, P]

[V] CMP 95 p. 34 (1.101): a^{−1}(φ_μ(p′) − 1)/φ_μ(p′) = S_μ(p′)/(Δ_0(p′) + aS_μ(p′)), S_μ(p′) := Δ_0(p′)·Σ_{l′}|u(p′ + l′)|²|v_μ(p′ + l′)|²/Δ(p′ + l′). "(1.100) a^{−1}(φ − 1)φ^{−1} ≤ QGQ* ≤ a^{−1}I." The sum is over the dual-lattice shifts l′ (aliasing of the fine lattice onto the unit lattice).
3.1 [P, given (1.100)–(1.101)]. (QGQ*)^{−1} ≤ aφ/(φ − 1) = a + Δ_0/S_μ. With §2.1, N_0^{−1} = (QGQ*)^{−1} − a ≤ Δ_0(p′)/S_μ(p′) = [Σ_{l′}|u(p′+l′)|²|v_μ(p′+l′)|²/Δ(p′+l′)]^{−1}. So
  K_0 := ‖N_0^{−1}‖ ≤ sup_{p′} [Σ_{l′} |u|²|v_μ|²/Δ (p′ + l′)]^{−1} ≤ sup_{p′∈[−π,π]^d} Δ(p′)/(|u(p′)|²|v_μ(p′)|²),
keeping only l′ = 0. K_0 is independent of a and of k (the l′ = 0 term already suffices).
3.2 Explicit number [I]. If u, v_μ are products of averaging symbols sin(p_ν/2)/(p_ν/2)-type (block averages), then |u|²|v_μ|² ≥ (2/π)^{2m} on [−π,π]^d (m = number of sinc factors, m ≤ 2d), and Δ(p′) ≤ |p′|² ≤ dπ². So K_0 ≤ dπ²(π/2)^{4d}. [I] The forms of u, v_μ and Δ are defined on CMP 95 pp. 30–33 (not read on images here); the k → ∞ limit of the symbols is assumed to be the sinc type. This bound is crude; it is only to show K_0 = K_0(d), with no L and no a.
3.3 The C*·C step [P]. ‖C*Δ_kC‖ ≤ ‖C‖²‖Δ_k‖. SOURCES_Q §4.4(b): ‖C‖² ≤ L^{d+1} in the free equal-weight Q_1. [Better, P]: C*Δ_kC is the compression of Δ_k to the subspace Ran C, and ⟨CB̃, Δ_kCB̃⟩ ≤ ‖Δ_k‖·‖CB̃‖²; ‖CB̃‖² = ‖B̃‖² + Σ_c|B(b_0(c))|² ≤ (1 + L^{d+1})‖B̃‖² only for the solved bonds; so γ_1 ≤ (1 + L^{d+1})‖Δ_k‖ is the honest free bound with the brief's C. Free case: γ_1 ≤ (1 + L^{d+1})·K_0(d).
