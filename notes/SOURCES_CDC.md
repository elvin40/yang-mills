IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_CDC — norm bound ‖C*Δ_kC‖ ≤ γ_1 (last input of Lemma G3)

Status: done 2026-10-27. Verdict §8: REDUCED to one named lemma (E_U) plus two O(Mα_0) perturbation inputs; free case proved. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.
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

## 4. Regular background U: reduction to a named extension lemma [V p. 396 image, P-sketch, I]

[V] CMP 99 p. 396 (3.35)–(3.36): for every cube □ of the class (size O(1)M in T_{L^{−j}}), there is a gauge u on □ with U^u = e^{iηA}, |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2}; (3.36) |∂^{η*}∂^ηA| < O(1)Mα_0(L^jη)^{−3}. α_0 "so small that O(1)Mα_0 is still a sufficiently small number". In Λ ⊂ Λ_k the scale is L^kη = 1, so in unit-lattice units A and its first two derivatives are O(Mα_0) on each M-cube.

4.1 Named statement (E_U) "uniform block-extension bound". There is K(d) such that for all k, Λ, and U with (3.35), Mα_0 ≤ a_0: every unit-lattice B supported in Λ has a fine field A with Q(U)A = B (on all of the multiscale lattice 𝔅, = 0 off Λ) and ‖D_UA‖² + ‖D_U*A‖² ≤ K‖B‖².
By §2.2, (E_U) gives ‖(QM_0(U)^{−1}Q*)^{−1}‖ ≤ K, since ⟨A, M_0A⟩ = ‖D_UA‖² + ⟨D_U*A, R D_U*A⟩ ≤ ‖D_UA‖² + ‖D_U*A‖² when R is an orthogonal projection [V p. 421: R = I − P in CMP 95 p. 33 image; check that CMP 99's R(U) is still an orthogonal projection — I].
4.2 Proof sketch of (E_U) [P-sketch].
 (a) Free bumps. Fix one smooth profile ψ on the continuum unit cell, discretized on the η-lattice, with ‖∇ψ‖² = O(1) uniformly in η (a smooth function sampled at spacing η has η-independent Dirichlet energy). Put E c := Σ_b c(b)ψ_b, ψ_b the profile placed at unit bond b, supported within distance 1 of b. Then T := Q(1)E is a finite-range matrix on unit bonds. Choose ψ so T = I + (small off-diagonal), e.g. weight concentrated where only Q(b) sees it; then ‖T^{−1}‖ ≤ 2. [I: needs the exact contour form of Q(1) from CMP 95 Sect. 1 / CMP 96 (2.125); not read here.]
 (b) Covariant bumps. Define ψ_b^U by parallel-transporting the Lie-algebra value from a base point of b along the Q-contours. Then Q(U)E^U = T + Δ_T, where Δ_T involves holonomies of loops of diameter O(1) (unit units). By (3.35) in the local gauge, |Ad(hol) − 1| ≤ O(1)Mα_0, so ‖Δ_T‖ ≤ O(1)Mα_0·(finite overlap number) and ‖(Q(U)E^U)^{−1}‖ ≤ 4 for Mα_0 small.
 (c) Energy. |D_Uψ_b^U| ≤ |∇ψ_b| + O(Mα_0)|ψ_b| pointwise (in the local gauge D_U = ∇ + [ηA, ·]/η-type terms, |A| = O(Mα_0)). Finite overlap gives ‖D_UE^Uc‖² + ‖D_U*E^Uc‖² ≤ K_E‖c‖², K_E = K_E(d) (1 + O(Mα_0)).
 (d) Set A := E^U(Q(U)E^U)^{−1}B. Then Q(U)A = B and energy ≤ 16K_E‖B‖². So K ≤ 16K_E.
 [I] boundary: bumps for bonds next to ∂Λ must not be seen by the coarser Q_j outside Λ; dist(Λ, Λ_k^c) ≥ RM [V p. 427] leaves room. [I] (b) needs Q(U)'s contours exactly as in CMP 99 Sect. A.
This is the "Localizing the operators in Δ_k and using the methods of Sect. B" step of CMP 99 p. 428, done by trial fields instead of random walks. It gives only the norm, not decay.

## 5. From G_0 to G_1 and the J-terms; the value of γ_1 [P given named inputs]

5.1 Comparison lemma [P]. If (1 − ε)G_0^{−1} ≤ G_1^{−1} ≤ (1 + ε)G_0^{−1} as forms, then G_1 ≥ (1 + ε)^{−1}G_0 (inversion is operator-decreasing), so QG_1Q* ≥ (1 + ε)^{−1}QG_0Q* and (QG_1Q*)^{−1} ≤ (1 + ε)(QG_0Q*)^{−1} = (1 + ε)(N_0^{−1} + a) by §2.1. Likewise (QG_1Q*)^{−1} ≥ (1 − ε)(N_0^{−1} + a). With (3.156):
  Δ_k ≥ (1 − ε)(N_0^{−1} + a) − a − c_J ≥ −εa − c_J and Δ_k ≤ (1 + ε)N_0^{−1} + εa + c_J,
so ‖Δ_k‖ ≤ (1 + ε)K + εa + c_J, K from (E_U) (§4.1), c_J := sup_B 2|⟨H_1D̃^{(2)}(B), J⟩|/‖B‖².
5.2 Input for ε [I/R]. G_1^{−1} − G_0^{−1} = −Δ′_π − 2(HC^{(2)}·J-term) [V p. 419 (3.120), p. 421 (3.128)]. Every term carries one factor J = D*η^{−2}Im ∂U [V p. 419]; by (3.36) |J| = O(1)Mα_0 in unit units on Λ [I: J is a third derivative of A, (3.36) bounds ∂*∂A at (L^jη)^{−3}]. Each term is bounded by O(|J|)(‖A‖² + ‖D_UA‖²) using G′ bounds (Theorem 3.1, (3.42) [V p. 397]) [I: line-by-line bound not done]. And G_0^{−1} ≥ ½(Δ + ‖G_0‖^{−1}) since Q*aQ, DRD* ≥ 0 and G_0^{−1} ≥ ‖G_0‖^{−1}; ‖G_0‖ ≤ γ^{−1} is CMP 95 Prop. 1.1 (1.90) for U = 1 [V CMP 95 p. 33 image: Δ_a = G^{−1} ≥ γ_0(Δ + I)] and CMP 99 Theorem 3.3 for regular U [R, per SOURCES_Q ledger: upper bounds on G]. So ε = O(1)Mα_0·c(d, L) [I].
5.3 c_J [R]. D̃^{(2)}(B) is a local quadratic polynomial [V p. 427], |J|_∞ = O(1)Mα_0, and H_1 has a bounded ℓ¹ → ℓ¹ norm from its exponential decay (CMP 99 (propagators) Theorems 3.10–3.11 type, applied to G_1 via (3.138)–(3.139)). So c_J = O(1)Mα_0·c(d, L) [R/I].
5.4 γ_1 [P from the above].
  ‖C*Δ_kC‖ ≤ ‖C‖²‖Δ_k‖ ≤ (1 + L^{d+1})·[(1 + ε)K + εa + c_J] =: γ_1,
with K ≤ K_0(d)(1 + O(Mα_0)) from §4 and ε, c_J = O(Mα_0). Free value (U = 1, J = 0, ε = 0): γ_1 = (1 + L^{d+1})K_0(d), K_0(d) ≤ dπ²(π/2)^{4d} [§3.2, I]. a = 1 in Balaban's normalization; the gauge-fixing term DRD* has coefficient 1 (R a projection) and enters only through ‖R‖ ≤ 1. [I] ‖C‖² ≤ 1 + L^{d+1} uses the free equal-weight Q_1; for Q_1(U) it becomes (1 + L^{d+1})(1 + O(α_0)).

## 6. Norm versus decay: what CMP 116 (2.7) needs [V CMP 116 p. 13 image, P]

[V] p. 13, after (2.7): "Expanding the operator Δ_k into the generalized random walks, we obtain an expansion of the series above, if γ_1 is sufficiently large." The construction of the random walk expansions "for all operators determining Δ_k" is cited to [13] Sect. C (CMP 109).
6.1 Decision [P]. Two uses must be separated.
 (i) Convergence of Σ_n (−1)^n/(n+½)γ_1^{−n−1/2}(C*Δ_kC)^n in operator norm needs only ‖C*Δ_kC‖ < γ_1. This is all that Lemma G3 uses: G3 needs the spectral bound c_− = ‖C*Δ_kC‖^{−1} (SOURCES_Q §4.1), and (2.7) is an identity of operators once the series converges.
 (ii) Balaban's actual use of (2.7) is a LOCALIZATION: Δ_k is not finite-range (§1.2: it is (QM_1^{−1}Q*)^{−1} plus J-terms), so (C*Δ_kC)^n is local only through the random-walk expansion of Δ_k. Convergence of the expanded series needs Σ_ω e^{δ|ω|}‖(C*Δ_kC)_ω‖ < γ_1, a weighted (decay) norm. That is the "uniform exponential decay of C*Δ_kC" of CMP 99 p. 428. The weighted norm dominates the operator norm (Schur test), so (ii) ⇒ (i), not conversely.
6.2 Consequence. For G3 the norm bound of §4–§5 suffices. The decay statement is needed only for Balaban's cluster expansion of (C^{(k)})^{1/2}, which G3 does not touch [check against SOURCES_G3 §2: G3 differentiates the cut, not the expansion].

## 7. Is the regular class needed for the NORM bound? Yes [P for the mechanism, I for the counterexample]

7.1 The brief's argument fails on scale. U_b unitary gives ‖Ad U_b‖ = 1, but every difference operator carries 1/η. For arbitrary unitary U the only bound from unitarity is ‖G_1^{−1}‖ = O(η^{−2}) = O(L^{2k}), and the trial-field bound of §2.2 then gives ‖Δ_k‖ = O(L^{2k}). Uniformity in k needs fine fields with η-independent energy, i.e. smoothness of U at scale η in some gauge. That is (3.35).
7.2 Counterexample sketch [I]. Take a constant chromomagnetic background (abelian U(1) ⊂ SU(2) flux θ per η-plaquette, θ fixed as k grows). On the charged adjoint components the covariant 1-form operator has spectrum at scale θη^{−2}, and its Weitzenböck curvature term gives the Nielsen–Olesen negative mode. So either M_1 > 0 fails (the Gaussian (3.155) is not defined) or the minimal energy for charged block data B grows like θη^{−2}‖B‖². In both cases no k-uniform γ_1 exists. [I: not computed on the lattice; standard continuum fact.]
7.3 Answer. Regularity (3.35) (and (3.36) for the J-terms) is needed for the upper bound γ_1, for the lower bound γ_0, and for decay. Unitarity alone suffices for none of them uniformly in k. It does suffice for finiteness at fixed k.
6.3 Check against SOURCES_G3 [V file]. G3 §2.2 uses only λ_min(Γ) ≥ c_− and ‖Γ‖ ≤ Λ, so only the norm. Its bracket "[I: C^{(k)−1} is a bounded local lattice operator]" is half wrong: C^{(k)−1} = C*Δ_kC is bounded but only quasi-local (§1.2). The norm is what G3 needs, so the error does not propagate. G3's majorant T_maj is Balaban's chain (2.15)–(2.26), which rests on the expanded (2.7); that dependence on decay is inside the [R] input (Q), not new.

## 8. Conclusion and ledger

Verdict. ‖C*Δ_kC‖ ≤ γ_1 is REDUCED, not proved, for regular U, and PROVED (given CMP 95 (1.100)–(1.101)) for U = 1.
 γ_1 = (1 + L^{d+1})·[(1 + ε)K + εa + c_J], K = ‖(QM_0(U)^{−1}Q*)^{−1}‖, ε, c_J = O(1)Mα_0·c(d, L).
 Free: γ_1 = (1 + L^{d+1})K_0(d), K_0(d) = sup_{p′}[Σ_{l′}|u|²|v_μ|²/Δ (p′ + l′)]^{−1}, independent of a, k, volume; crude K_0 ≤ dπ²(π/2)^{4d} [I].
 The brief's mechanism ("Δ_k local with O(1) coefficients, U unitary suffices") is refuted: Δ_k is an inverse of a block-averaged Green's function (§1), local coefficients scale as η^{−2}, and regularity (3.35)–(3.36) is needed for the norm bound too (§7).
 Remaining named input: (E_U), uniform block-extension bound (§4.1), with a proof sketch (§4.2) by covariant bumps and holonomy O(Mα_0).

[V] CMP 99 p. 396 (3.35)–(3.36); p. 397 (3.39)–(3.42) Theorem 3.1; p. 419 (3.117)–(3.121); p. 420 (3.122)–(3.126); p. 421 (3.127)–(3.130); p. 427 (3.154)–(3.155); p. 428 (3.156)–(3.159) and the γ_0 / decay paragraph. CMP 95 p. 33 Prop. 1.1 (1.89)–(1.90), (1.93)–(1.96); p. 34 (1.97)–(1.103). CMP 116 p. 13 (2.6)–(2.7) and the paragraph after it. SOURCES_Q §§2–4, SOURCES_G3 §2.2 (files).
[P] §1.1 minimizer identity; §2.1 Woodbury, (QG_1Q*)^{−1} = N_1^{−1} + a, so a cancels in Δ_k; §2.2 variational form; §3.1 K_0 a-free and k-free; §3.3 ‖C‖² ≤ 1 + L^{d+1} (free Q_1); §4.2(d) A = E^U(Q(U)E^U)^{−1}B gives K ≤ 16K_E; §5.1 comparison lemma; §6.1 norm suffices for G3, decay needed only for the expansion.
[P-sketch] §4.2(a)–(c) (E_U).
[I] u, v_μ, Δ symbols of CMP 95 (1.101) and the number dπ²(π/2)^{4d}; exact contour form of Q(U) and Q(1) (bump construction (a), holonomy (b)); R(U) an orthogonal projection; boundary bumps at ∂Λ; |J| = O(Mα_0) from (3.36); the term-by-term ε bound; the §7.2 counterexample; M_1 > 0 on the Dirichlet domain.
[R] CMP 99 Theorem 3.3 (‖G_0(U)‖ bounded, regular U); exponential decay / ℓ¹ bound of H_1 (Theorems 3.10–3.11 type via (3.138)); CMP 99 p. 428 "we can prove" (γ_0 and decay for regular U) — not used for the norm except through ε, c_J.
Open: (1) read CMP 99 Sect. A and CMP 96 (2.125) for the contour form of Q, then turn §4.2 into a page-level proof of (E_U); (2) the line-by-line ε bound for Δ′_π and the C^{(2)}·J term; (3) numerical K_0(d) from (1.101) (a 1-line momentum-space computation).
