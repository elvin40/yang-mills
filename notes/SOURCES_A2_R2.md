# SOURCES_A2_R2 — proof of CMP 116 (2.16) for R_2 and R_3 from kernel decay (row A2)

Status: Opus draft 2026-10-28, unverified. Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP).
Inputs: IDEAS_FABLE §I3, TRUST_LEDGER row A2, SOURCES_LOC(+_VERIFY), SOURCES_A1_KERNEL §8–§10, CMP 116 pp. 12–16 text.

## 1. What R_1, R_2, R_3 are [V p. 15–16 images, 110 dpi, /tmp/a2r2]
1.1 (2.14) [V]: the term has three Gaussian-type factors: ∫dμ_0(X)|_Z exp(−½⟨Γ_kX, C^{(k)}(Z_0,σ)Γ_kX⟩); ∫dμ_{C^{(k)}(Z_0,σ)}(B) exp(−⟨B, Γ_k(Z_0,σ)X⟩); the χ·exp ΣτV factor. Γ_k(Z_0,σ) = C*Δ_k(σ)CZ_0^c(C^{(k)})^{1/2}(σ).
1.2 (2.15) [V]: the bound replaces the measure by dμ_{(Re C^{(k)}(Z_0,σ)^{−1})^{−1}}(B) times a determinant ratio, and the forms by their real parts.
1.3 Replacement point [V p. 15]: "we replace the operators by the corresponding operators with σ(Z) = 0, **U** = U, **J** = 0, and we estimate the error." So the reference operators are the real, σ = 0 operators.
1.4 Definitions [P from 1.1–1.3, sign as in SOURCES_LOC_VERIFY §5]. Write C(σ) := C^{(k)}(Z_0,σ) at the complex point (**U**, **J**), C_0 := C^{(k)}(Z_0,0) at (U, 0).
 R_1: ½⟨X,R_1X⟩ = ½Re⟨Γ(σ)X, C(σ)Γ(σ)X⟩ − ½⟨Γ(0)X, C_0Γ(0)X⟩ (first exponential).
 R_2 := C_0^{−1} − Re C(σ)^{−1} (precision change of the B-measure; B lives on bonds of Z_0).
 R_3 := Re Γ(σ) − Γ(0), rows b ⊂ Z_0, columns = bonds of the X-lattice (second exponential).
1.5 Balaban gives NO proof on pp. 15–16 for any of the three. (2.16) is printed for R_1 with the words "with matrix elements satisfying the bound"; R_2 and R_3 are "satisfying (2.16)". The brief's "one proof for R_1" does not exist on the page [V]. The only proof mechanism on nearby pages is p. 5 (1.11) (Sect. 1), see §2.
1.6 Printed target [V]: |R(b,b′)| ≤ (O(1)e^{−(1/3)δ_0M} + O(α_0+α_1)) exp(−½δ_0|b_− − b′_−|), with the side condition "M much bigger than κ_1, especially e^{−(1/3)δ_0M}e^{16κ_1} < 1".

## 2. Inputs [grades per item]
(S-rule) [V p. 3, p. 13]: each walk term ω of an s-dependent operator is multiplied by Π s(Δ) over the σ_0 cubes Δ that meet its localization domain. At s ≡ 1 the original operator is recovered. So C(1) − C(σ) = Σ_{ω meets σ_0}(1 − Πσ(Δ))R_ω and C(σ) − C(0) = Σ_{ω meets σ_0}Πσ(Δ)R_ω.
(G) Geometry [V p. 13 + I]: the domains of the expansions are X_0 with X̃_0^5 = Z_0, and domains X with dist(X, Z_0) > (2/3)M. A walk that meets a σ_0 cube contains a domain X ≠ X_0 [I: σ_0 cubes are disjoint from int Z_0′ ⊃ int Z_0, and "intersect" means sharing a cell, as SOURCES_LOC §2.4]. So its localization set reaches distance > (2/3)M from Z_0. Note: a σ_0 cube may touch Z_0; the smallness comes from the domain choice, not from dist(σ_0, Z_0).
(W) Walk bound [V p. 3 (1.7), p. 5 (1.11) as statements; R to CMP 109 (3.107)–(3.108), not read]: |R_ω(b,b′)| ≤ c_ω e^{−δ_0d(ω)} with Σ_ω c_ω ≤ B_0 (the "first two factors" control the sum over ω). d(ω) = "length of a shortest tree graph intersecting all localization domains of ω" (p. 5 [V]); the domains include the localization cubes Δ(b), Δ(b′) (p. 3 [V]). Valid for C^{(k)}(Z_0) and "all operators determining Δ_k" (p. 13 [V] citing [13]); for (C^{(k)})^{1/2} only via the p. 13 sketch ((2.7) + G_3(x)) [R, sketch only].
(κ) Weight absorption [V p. 5]: "If m is big enough, for example m > 2^4, then δ_0d(ω) ≥ δ_1mM … for δ_1M ≥ κ_1" the factor e^{mκ_1} is absorbed; for m ≤ 2^4 the bound is e^{16κ_1}. Used here with a fraction θ of the decay: e^{mκ_1}e^{−θδ_0d(ω)} ≤ e^{16κ_1} if θδ_1^BM ≥ κ_1 (δ_1^B := Balaban's p. 5 constant, not A1's δ_1).
(K_A) Kernel decay of A := C*Δ_kC [R]: |A(b,b′)| ≤ c_Ae^{−δ_A|b−b′|} on the analyticity space with the larger constants α_0′, α_1′. Sources: A7's decay half (TRUST_LEDGER A7, reduced to A1 + A18, rate δ_A = A1′'s δ_1), or Balaban's walk expansion of Δ_k in [13] (rate δ_0). A_Z := Z_0AZ_0.
(An) Analyticity [V p. 15 statement, R for proof]: "The quadratic forms and covariances in H(Z) are analytic functions on the space of configurations (**U**, **J**) … with constants α_0′, α_1′ much bigger than α_0, α_1". Bounds of (K_A), (W) hold on that space.
(D) Case (a) [V p. 12 (2.5), SOURCES_LOC_VERIFY §2]: C(1) = C^{(k)}(Z_0) = A_Z^{−1} on fields on Z_0. At complex (**U**, **J**) the identity C(1)A_Z = I extends by analyticity [P: both sides analytic, equal on the real space].
