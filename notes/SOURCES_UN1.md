# SOURCES_UN1 — does (U) conflict with (B-N1)?

Status: in progress (2026-10-27).

## 1. The two conditions in one set of variables

Sources read so far: PAPER_FIX_LOG Pass 3 (F7); SOURCES_D2 l. 27, l. 40–44, l. 217, l. 286–303; SOURCES_D2C l. 81, 91–93, 142; SOURCES_D2_VERIFY (5), (7); SOURCES_D3 l. 53, 135; ASSEMBLY_N1 §1, §4–6; TRUST_LEDGER B21, B22.

Units [read, D2 l. 40, l. 290; ASSEMBLY §0].
- ε = L^{−K}. λ_j = εL^j is the physical spacing after j steps. So λ_K = 1: the last RG scale is physical length 1.
- D2 l. 40 says "torus side 1". With λ_K = 1 that would make T^{(K)} a single site. D2 l. 290 says the unit-scale lattice has fixed size N_u⁴, and ASSEMBLY uses T⁴_ℓ. The consistent reading: torus side ℓ, last spacing 1, N_u = ℓ. This is a notation slip in D2 l. 40, not a content change.
- Consequence: "units of the last RG scale" (D2 l. 217) = physical units. ρ_1 in D2 is in physical units (D2 l. 44). There is no hidden factor 1/ε.

The source class [read, D2 l. 44]. F_r = {f real, C^∞ on T⁴: ‖f‖_∞ ≤ r, ‖∇f‖_∞ ≤ ρ_1}. "ρ_1 is fixed, r small."

Where ρ_1/r comes from [read, D2C l. 91–93, (3.3)]. The freezing error is a Cauchy estimate in the constant source c with margin r: |κ_X(c_X) − κ_X(f(x))| ≤ (ρ_1λ_j/r) sup_{|c|<2r}|κ_X(c)|. So r in ρ_1/r is the holomorphy radius of the constant-source family (A). It is NOT the amplitude of the particular f. r is bounded above by r_0 (N3A: r_0 ≤ 1/8).

(U) restated [derived]. Summed over j ≤ K, the new constants are E_0-independent multiples of M^aρ_1λ_K/r (D2C l. 142, a = 3; a = 7 in D2 crude). With λ_K = 1:
  (U)  ρ_1 ≤ c_* r / M^a,   ρ_1 = sup bound of |∇f| over the source class, physical units.
For one bump f = A·b((x − x_0)/h) with ‖b‖_∞ = 1, ‖∇b‖_∞ = 1: ‖∇f‖_∞ = A/h. So the bump lies in a class obeying (U) iff
  A ≤ c_* r h / M^a   (A ≤ r also needed).
So (U) is a joint amplitude–width condition. It does NOT forbid small h. It forbids small h at amplitude ~ r.

(B-N1) restated [read, ASSEMBLY_N1 §1 item 3, §4.2, §4.4]. The bridge uses bumps g_{i,q} = ψ_i e_q of width h_m down to h_{m_1} ~ ε (δ_{m_1} ∈ [64ε, 128ε[, h = δ/64). It never inserts them into the generating functional at amplitude r. It uses n-linearity: κ_n(f_1,…,f_n) = Π λ_i · κ_n(f_1/λ_1,…) with λ_i = N(f_i)/min(r, C_m), so each rescaled source has N(f_i/λ_i) ≤ min(r, C_m). The generating functional is only evaluated (via the cumulant bound) at the rescaled sources.

## 2. Does (B-N1) ever evaluate the functional at a source that violates (U)?

Additional sources read: ASSEMBLY §2.2–2.5; SOURCES_FX §2, §6; SOURCES_N3A §3; SOURCES_HHIST_N1_VERIFY Part 2 (claims 1–6); grep of D3R, D3W8, D4D5 for ρ_1.

2.1 Units, second confirmation [read]. SOURCES_D4D5 l. 75: "λ_m = εL^m (λ_K = 1)". So the last RG scale is physical length 1 in every block that states it. (U) is a bound on ρ_1 in physical units. No K-dependent conversion enters, in agreement with N3A §3 ("no L^{Kα} factor").

2.2 The holomorphy domain the blocks actually deliver [read].
- D4D5 (FX2), l. 95: a_m(Γ; f + ζ) is holomorphic on {‖ζ‖_∞ ≤ τ_m(Γ), ‖∇ζ‖_∞ ≤ ρ_1/2}, for real f ∈ F_{r/2}.
- D3 l. 135: complex perturbations ζ with ‖∇ζ‖ ≤ ρ_1/2.
- D4D5 l. 76 and D3W8 l. 78 already carry a second condition of the same type: ρ_1 ≤ r/(4C_hM) (D3R_VERIFY item 1).
So the domain is a polydisc in the weighted C¹ norm
  N_U(f) := max(‖f‖_∞ / r, ‖∇f‖_∞ / ρ_1).
FX §6.3 and N3A §3 speak of a "sup-norm radius c·r". That phrase fixes the UNITS of r (u-units = physical sup-norm units). It does not claim holomorphy for unbounded gradient. FX §6.3(a) is about the large-field activities, where the source cost is |σ_ζ| ≤ C|ζ| per cube and no gradient enters. The gradient bound comes from the small-field blocks (D2/D2C/D3R) and is carried in (FX2) as printed in D4D5.

2.3 (U) is a constant choice, not a restriction on test functions [derived].
- In D2C (3.3) and (3.5), r is the Cauchy margin of the constant-source family (A) (§1 above). It is bounded by the fixed r_0 of N3A §2c. It is not the amplitude of the f under study.
- So (U) reads ρ_1 ≤ c_* r_0/M^a, with M, a, c_* Balaban/D2 constants independent of K. Define
  ρ_1 := min(c_* r_0/M^a, r_0/(4C_hM)).
  This is a fixed positive number. Order of constants: L → Balaban (M, κ, γ, c_*, C_h) → r_0 → ρ_1 → K. Nothing upstream of ρ_1 depends on ρ_1. A smaller ρ_1 only shrinks every error term in which it appears (D2C (3.3), (3.5); D3R δ_r; D2 (H1)). I found no lower bound on ρ_1 in any block.
- D2 l. 44 says "ρ_1 is fixed, r small". No block takes r → 0 at fixed ρ_1: N3A fixes r_0 > 0. So the phrase is harmless, but it reads as ρ_1 ≫ r, which (U) forbids. Order the constants as above instead.

2.4 What the bridge inserts [read ASSEMBLY_N1 §1 item 3, §4.2–4.4; derived].
- Every source the bridge uses is a real bump g = ψ_i cos(…) or ψ_i sin(…) of width h ≥ h_{m_1} ~ ε, with sup|g| ≤ C and sup|∇g| ≤ C(1 + |q|)/h.
- The bridge never puts g into Z_ε[·] at fixed amplitude. It uses n-linearity: κ_n(g_1,…,g_n) = Π λ_i · κ_n(g_1/λ_1,…). The bound (S) is applied to the rescaled sources g_i/λ_i.
- Choose λ_i := N_U(g_i). Then N_U(g_i/λ_i) = 1: sup ≤ r and gradient ≤ ρ_1. (U) holds for every rescaled source, for every width h down to ε.
- The Cauchy polydisc. Cumulants come from ∂_{z_1}…∂_{z_n} of log Z_ε[Σ z_i f_i] with |z_i| ≤ 1 and N_U(f_i) ≤ 1. The supports are pairwise ≥ σ apart, so at each point at most one term is non-zero: ‖Σ z_i f_i‖_∞ ≤ r and ‖∇Σ z_i f_i‖_∞ ≤ ρ_1. The whole polydisc lies in the (U)-admissible domain. Real and imaginary parts (ASSEMBLY_N1 §4.2) are rescaled separately, so the same holds there.
- Cost. N_U(g) ≤ max(1/r, 1/ρ_1) · max(sup|g|, sup|∇g|) = (1/ρ_1) N_{C¹}(g), since ρ_1 ≤ r. So C_S becomes C_S/ρ_1 per factor: a factor ρ_1^{−n} = (M^a/(c_* r_0))^n at most. This is C^n with C independent of K. It goes into C_S^n. s and D do not change (s = 6 on the C¹ count, HHIST_N1_VERIFY claim 6; D > 1 with the Gevrey 1 + η of the FX branch, or D > 2 with the D3R branch).
- The small-width loss is already paid: a bump of width h costs N_{C¹} ~ (1+|q|)/h, and flatness of F pays for h^{−1} (ASSEMBLY_N1 §4.4 exponent count, C¹ form). The extra ρ_1^{−1} is h-independent.

2.5 OS side [read ASSEMBLY §2.4–2.5]. (H-U) is |S_{n,ε}(F)| ≤ A(n!)^D ‖F‖_{sn} with the C^{sn} norm on T^{4n}. That norm contains all derivatives up to order sn, so it dominates N_U up to the constant ρ_1^{−1}. OS regularity never asks for the generating functional at a large-gradient source. It asks only for the multilinear bound, which is what §2.4 gives.
