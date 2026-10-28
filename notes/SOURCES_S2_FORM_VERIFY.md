# SOURCES_S2_FORM verification (independent)

Date 2026-10-28. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## 0. Context read
- Read SOURCES_S2_FORM §1–§6, A1_KERNEL §8–§9, QE_INV 5.1–5.4, A1_A4_VERIFY Part A item 4, QE_INV_VERIFY items 6–7.
- Note: QE_INV_VERIFY item 6 is (H_Q), not S2; S2 is item 7. Both read.

## 1. R and G′: CMP 99 p. 394 image (pdf 6) [V]
- (3.20)–(3.21) printed: "R = R(U) is an orthogonal projection in L²(Ω_0, g) onto the subspace Δ_U N(Q′)". So 0 ≤ R ≤ I. CONFIRMED.
- (3.22): Rf = Δ_Uλ_0, λ_0 minimises ‖f − Δ_Uλ‖² over λ ∈ N(Q′). (3.24): Δ′_a = (Δ_U + Q′*aQ′)↾Ω_0, Q′*aQ′ with a_j (recursion a_{j+1} = a a_j/(aL^{−2} + a_j)), G′ = (Δ′_a)^{−1}, Dirichlet on Ω_0.
- Author's check λ = G′RD*A = λ_0: (Δ_U + Q′*aQ′)λ_0 = Δ_Uλ_0 + 0 = Rf, so G′Rf = λ_0. CONFIRMED (needs λ_0 supported in Ω_0; true since N(Q′) functions vanish on Ω_1^c ⊃ Ω_0^c per the text).

## 2. (3.10) Δ′: CMP 99 p. 392 image (pdf 4) [V]  -- DISCREPANCY
Printed: ⟨A,ΔA⟩ = ⟨A,D*DA⟩ + ⟨A,Δ′A⟩, and
 ⟨A,Δ′A⟩ = Σ_p η^d tr((D^1_U A)(p))² η^{−2}(Re U(∂p) − 1) + tr Σ_{b1<b2⊂∂p} i[A′(b1),A′(b2)] η^{−2} Im U(∂p).
SOURCES_S2_FORM §3/Π2 lists only the commutator (Im U) term. The first term (Re U − 1) is omitted.
Reading of D^1_U [I]: D^η at η = 1 (unit-lattice curl), so (D^1A)²η^{−2} = (D^ηA)². Then the first term = Σ_p η^d tr(DA)²(Re U(∂p) − 1), and |Re U − 1| ≤ |U(∂p) − 1| ≤ O(Mα_0)(η/ℓ)² gives |·| ≤ O(Mα_0)‖DA‖². Dimension check supports this reading (Re U − 1 is dimensionless; the term must be length^{−4}).
Consequence: correct Π2 is |⟨A,Δ′A⟩| ≤ κ′ε‖ℓ^{−1}A‖² + κ″ε‖DA‖², not the ‖ℓ^{−1}A‖² term alone. Still small and local. The structure of 4.1–4.3 survives; constants change (see §5).
