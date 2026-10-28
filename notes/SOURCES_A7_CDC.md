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

## §2 The norm bound (real U, s ≡ 1): Lemma N, no walk expansion needed

2.1 Inputs. All are already inputs of WC_FULL; no new input is added.
 (C_1) [C, = WC_FULL C2]. At real regular U, N̂_1 := S^{−1/2}QG_1Q*S^{−1/2} on ℋ = ℓ²(𝔅, μ) obeys N̂_1 ≥ c_{−,1}, c_{−,1} = 1/K_{ext,1} > 0, uniform in k, η, {Ω_j}, volume, and U (A1_WALK_FULL (H2); SOURCES_A1_KERNEL §8–§9: c_{−,1} ≥ c_−(G)(1 − O(Mα_0)), K_{ext} = K_E(d)(1 + O(Mα_0)) + a). Status of (C): conditional on the torus-side hypothesis and two unprinted conventions (rows A1, A1w).
 (A3-R4) [R/I, in WC_FULL R3]. |⟨B, Δ_JB⟩| ≤ c_J‖B‖², c_J = c(d, L)Mα_0.
 (G) [P, WC_FULL Lemma G(c)]. ‖𝒢B‖² = Σ_yG_y(B) ≤ 2c_𝒢Σ_yS_y(B) ≤ 2c_𝒢‖B‖², c_𝒢 = d(L−1)L^d/2.
 (I1) [I, WC_FULL I1]. The term identification (1.1): ⟨CB̃, Δ^{(k)}CB̃⟩ = E(B) − ⟨B, Δ_JB⟩ + ‖𝒢B‖², E(B) := ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖².
 (c_C) [I, via WC_FULL I3]. c_C := ‖C‖² < ∞, depending on d, L only (up to 1 + O(α_0)). Value: if (Q̃B)(c) = Σ_{b∈B(c)}w_bT_bB(b) with weights w_b > 0, orthogonal transports T_b, and disjoint corridor supports, then solving Q̃B(c) = 0 gives |B(b_0)|² ≤ w_{b_0}^{−2}(Σ_{b≠b_0}w_b²)Σ_{b≠b_0}|B(b)|² by Cauchy–Schwarz, so c_C ≤ 1 + max_cw_{b_0}^{−2}Σ_{b≠b_0}w_b². Equal weights on n_c bonds give c_C ≤ n_c; the CMP 96 corridor gives n_c = L^{d+1} (SOURCES_CDC_VERIFY §7(3)). [P given the stated form of Q̃; the form for CMP 109's symmetric averages is I3.]
2.2 Lemma N [P given 2.1]. At every real regular U, for every Λ as in WC_FULL 0.8 and every B̃ ∈ V_red with B̃ = 0 off Λ,
 ⟨B̃, A_expB̃⟩ ≤ γ_1^N‖B̃‖², γ_1^N := c_C[(K_{ext,1} − a)_+ + c_J + 2c_𝒢].
Hence ‖C*Δ_kC‖ ≤ γ_1^N, and the same for every compression A_Z, uniformly in k, η, Λ, Z_0, volume, and regular U.
Proof. (a) Put B := CB̃; B = 0 off Λ (WC_FULL 3.2).
 (b) On scale k the weights are trivial: μ(y) = (L^kη)^d = 1 and s(y) = (L^kη)² = 1 for y ∈ Λ ⊂ Λ_k (SOURCES_A1_KERNEL §5, §8 definitions). So S = I on fields supported in Λ, and the ℋ inner product on them is the unit-lattice one.
 (c) (QG_1Q*)^{−1} = S^{−1/2}N̂_1^{−1}S^{−1/2}. At real U, N̂_1 is symmetric and N̂_1 ≥ c_{−,1} > 0. Inversion is operator-decreasing, so N̂_1^{−1} ≤ c_{−,1}^{−1} = K_{ext,1}. With (b), ⟨B, (QG_1Q*)^{−1}B⟩ ≤ K_{ext,1}‖B‖². So E(B) ≤ (K_{ext,1} − a)‖B‖² ≤ (K_{ext,1} − a)_+‖B‖².
 (d) By (A3-R4), −⟨B, Δ_JB⟩ ≤ c_J‖B‖². By (G), ‖𝒢B‖² ≤ 2c_𝒢‖B‖².
 (e) By (I1) and (c)–(d), ⟨B̃, A_expB̃⟩ ≤ [(K_{ext,1} − a)_+ + c_J + 2c_𝒢]‖CB̃‖². The bracket is ≥ 0. With ‖CB̃‖² ≤ c_C‖B̃‖² this is the form bound.
 (f) At real U, A_exp is real symmetric (CMP 116 p. 15 [V, SOURCES_LOC 2.2]: "For the pair (U,0) the operators are symmetric"). By Theorem L (WC_FULL 3.2), A_exp ≥ γ_exp > 0 on the same space. So spec A_exp ⊂ [γ_exp, γ_1^N] and ‖A_exp‖ ≤ γ_1^N.
 (g) Compression: for B̃ = 0 off Z_0, ⟨B̃, A_ZB̃⟩ = ⟨B̃, A_expB̃⟩, so the same bound holds for A_Z (WC_FULL 3.3(a) with the inequality reversed). ∎
2.3 Axial reading (A). The same proof with c_𝒢 := 0 and c_C := ‖C_ax‖² gives ‖C_ax*Δ_kC_ax‖ ≤ ‖C_ax‖²[(K_{ext,1} − a)_+ + c_J]. Positivity in (f) is then CMP 99 p. 428 γ_0 (row A3); without it use the two-sided form bound: −⟨B, Δ_kB⟩ ≤ (a + c_J)‖B‖², since ⟨B, (QG_1Q*)^{−1}B⟩ ≥ 0. So ‖C_ax*Δ_kC_ax‖ ≤ ‖C_ax‖²·max{(K_{ext,1} − a)_+ + c_J, a + c_J} in any case.
2.4 Consequence for (Q) [P]. c_− = ‖C*Δ_kC‖^{−1} ≥ 1/γ_1^N (SOURCES_Q §4.1). LOC then gives c_− ≥ (γ_1^N + ε_M)^{−1} at s = 0 (row A2).
2.5 Size. γ_1^N is dominated by the gauge term: d = 4, L = 3 gives 2c_𝒢 = d(L−1)L^d = 648 and n_c = 243, so γ_1^N ≈ 243·(K_E(4) + 648) at Mα_0 → 0 [I: K_E(4) is the multiscale bump cost; the single-scale free value 195.19 of SOURCES_CDC_VERIFY §4 is a lower bound for it, not an upper bound]. The constant is crude; (Q) needs only finiteness and uniformity.
2.6 Relation to SOURCES_CDC. SOURCES_CDC §4.1 named (E_U), the block-extension bound. (E_U) is the statement (C) of SOURCES_A1_KERNEL §8, now carried by WC_FULL as C1/C2. Lemma N uses (C) for G_1 directly, so the G_0 → G_1 comparison ε of SOURCES_CDC §5.1–5.2 is not needed here; it sits inside C2. SOURCES_CDC's leftover "a cancels" and "c_J = O(Mα_0)" are reused unchanged.

## §3 Uniform exponential decay of C*Δ_kC

3.1 Source of the decay [P in WC_FULL, restated]. WC_FULL Proposition W_N (4.2): at real regular U, A_exp = Σ_ωA_ω, a tree expansion with (L1)–(L2), and
 |A_ω(b, b′)| ≤ B_Aρ_A^{|ω|}e^{−δ_Ad(ω, b, b′)}, Σ_ω|A_ω(b, b′)| ≤ 2B_Ae^{−δ_A|b − b′|} (if C′_𝒟c_1ρ_A ≤ ½),
 δ_A = (1 − θ)min{δ_W, δ_1}, δ_W = ½ε (A1_WALK_FULL 0.5), δ_1 = (1 − θ)·½ε (WG-G1), ρ_A = max{ρ_W, ρ_*, c(d, L)/M_1}, B_A = B_A(d, L, a, a_0).
 Its inputs are (W_G1) [R], A1-W [C on (C)], (I9), and the Concatenation Lemma [P]. The decay is NOT obtained from the x-integral of resolvents (the brief's item (3)). The x-integral expands (C*Δ_kC)^{−1/2}, the inverse direction; the precision itself is expanded directly, piece by piece (4.1(a)–(d) of WC_FULL): C and C* local (range ≤ 2L), a·I and 𝒢*𝒢 block-local, (QG_1Q*)^{−1} one A1-W tree, Δ_J a local vertex with one dangling branch ending at J.
 Locality of Δ_k alone is not enough: Δ_k is not finite-range, because (QG_1Q*)^{−1} is an inverse (SOURCES_CDC §1.2). Its decay is the A1-W decay, rate ½ε.
3.2 Theorem D (A7, decay part) [P given 3.1]. Kernel bound:
 |(C*Δ_kC)(b, b′)| ≤ Σ_ω|A_ω(b, b′)| ≤ 2B_Ae^{−δ_A|b − b′|},
uniform in k, η, Λ, Z_0, volume, and real regular U. Schur constant: S(δ) := sup_bΣ_{b′}e^{−δ|b − b′|} (volume-independent, d-dimensional lattice sum). Weighted form: ‖e^{ρf}A_expe^{−ρf}‖ ≤ 2B_AS(δ_A − ρ) for 1-Lipschitz f and 0 ≤ ρ < δ_A (WC_FULL 4.5).
 The Schur test gives the second norm bound Γ_1 := 2B_AS(δ_A) ≥ ‖C*Δ_kC‖ (WC_FULL 4.3). Γ_1 is larger and rests on more inputs than γ_1^N of §2; it is the one Balaban's walk-level use of (2.7) needs (3.3).
3.3 The expanded series of (2.7) [P]. Put K := 2B_A, δ := δ_A, fix θ′ ∈ (0, 1). Claim: the n-th power has the kernel bound
 |(C*Δ_kC)^n|(b, b′) ≤ Σ_{ω_1,…,ω_n}|A_{ω_1}···A_{ω_n}|(b, b′) ≤ K^nS(θ′δ)^{n−1}e^{−(1−θ′)δ|b − b′|}.
 Proof. Insert the bound of 3.2 for each factor. Write e^{−δ|x−y|} = e^{−(1−θ′)δ|x−y|}e^{−θ′δ|x−y|}. The triangle inequality applied to the (1 − θ′) parts gives e^{−(1−θ′)δ|b−b′|} for the chain b = b_0, b_1, …, b_n = b′. Drop the last θ′-factor (≤ 1) and sum b_1, …, b_{n−1} in order; each sum is ≤ S(θ′δ). ∎
 Hence the series Σ_n(−1)^n(n + ½)^{−1}γ_1^{−n−1/2}(C*Δ_kC)^n converges term by term in the walk expansion (absolutely, kernel-wise) if γ_1 > K·S(θ′δ). With
  γ_1 := 4B_AS(θ′δ_A) (then γ_1 ≥ 2Γ_1, since S(θ′δ_A) ≥ S(δ_A); if the §2 value is also wanted, use max{γ_1, γ_1^N}),
 the ratio is ≤ ½, and the series kernel is ≤ γ_1^{−1/2}[2 + Σ_{n≥1}2^{−n}/((n + ½)S(θ′δ_A))]e^{−(1−θ′)δ_A|b−b′|} ≤ 4γ_1^{−1/2}e^{−(1−θ′)δ_A|b − b′|}.
 This is the precise content of "if γ_1 is sufficiently large" (CMP 116 p. 13 [V]): γ_1 must beat the weighted (Schur-at-rate-θ′δ) norm of the walk sum, not only the operator norm (SOURCES_CDC §6.1(ii)).
 Locality of each term: a term of the n-th power is a concatenation of n trees. By (Conc) (WC_FULL 4.0) it vanishes unless consecutive domain lists meet, and it depends on U only on ∪X̃^5 of its domains. So the expanded series is again a walk expansion in the CMP 116 p. 13 sense, with the s-rule applicable term by term.

## §4 s-versions, complex points, and the resolvent

4.1 Real s ∈ [0, 1] [P]. By the s-rule (1.4), C*Δ_k(s)C = Σ_ω π_ω(s)A_ω with π_ω(s) := Π_{Δ∈σ_0, Δ meets the localization domain of ω}s(Δ). For s ∈ [0, 1]^{σ_0}, |π_ω(s)| ≤ 1. So 3.2 and 3.3 hold for C*Δ_k(s)C with the same constants. The norm bound for s ∈ [0, 1] follows by Schur: ‖C*Δ_k(s)C‖ ≤ Γ_1. (Lemma N of §2 does not transfer to s ≠ 1, because C*Δ_k(s)C is not a compression; for (Q) this is handled by LOC, row A2.)
4.2 Complex s [P-sketch, following CMP 116 p. 5 (1.11) [V text]]. CMP 116 takes |s(Δ)| ≤ e^{κ_1}, κ_1 "a sufficiently big positive number", and bounds a walk term by e^{mκ_1}e^{−δ_0d(ω)}, m = the number of s-parameters of ω. Its argument: if m > 2^4 then δ_0d(ω) ≥ δ_1mM (a walk that meets m cubes of side LM has length ∝ mM), so e^{mκ_1 − ½δ_0d(ω)} ≤ 1 once δ_1M ≥ κ_1; if m ≤ 2^4 the factor is ≤ e^{16κ_1}.
 Applied to A_ω with δ_0 → δ_A [I: the "2^4" is d = 4's 2^d; the constant δ_1 of the cube-counting step is geometric]: |π_ω(s)A_ω(b, b′)| ≤ e^{2^dκ_1}B_Aρ_A^{|ω|}e^{−½δ_Ad(ω, b, b′)} on |s| ≤ e^{κ_1}, for M ≥ κ_1/(c_dδ_A). So 3.2–3.3 hold at complex s with B_A → e^{2^dκ_1}B_A and δ_A → ½δ_A. Order of constants: κ_1 before M; M after δ_A, which is fixed by d, L, a, a_0 (A1_WALK_FULL (H4)). No cycle [I: κ_1 M-independent is the ledger item IN of row A1w].
4.3 Complex U [P given WC_FULL 6.5–6.6]. On 𝒰(α″), WC_FULL 6.6 gives the tree expansion of A_exp(U_c) with B_A″, δ_A″ and ‖A_exp(U_c)‖ ≤ Γ_1″ := 2B_A″S(δ_A″). So 3.2–3.3 and 4.1–4.2 hold at complex points with (B_A, δ_A) → (B_A″, δ_A″). The inputs are those of WC_FULL 6.5: (Th3.4), the complex walk form of G [R], (C) for G and G_1 [C].
4.4 The resolvent and WC(iv) (the brief's residue check) [P, reading]. The x-integral over [0, γ_1] in (2.7) needs (xI + C*Δ_kC)^{−1}, not C*Δ_kC. Theorem WC(iv) gives it with per-walk prefactor 4/(γ_exp + x) and rate ½ε uniform in x ≥ 0 (WC_FULL 5.5: x·I commutes with e^{εf}, so the Combes–Thomas error is x-free). So ∫_0^{γ_1}x^{−1/2}·4/(γ_exp + x)dx ≤ 4π/√γ_exp, uniform in γ_1. The rate needed by A7 is not affected by x: A7 concerns C*Δ_kC, whose decay rate δ_A does not involve x at all. So there is no uniform-in-x residue for A7.
 Remark (one point WC(iv) does not state). The resolvent in (2.7) is that of the full C*Δ_kC (CMP 116 p. 12, B′ = (C^{(k)})^{1/2}X), while WC(iv) is stated for A_Z = 1_{Z_0}A_exp1_{Z_0}. WC_FULL's proof uses only the lower bound γ_exp and the walk expansion (W_N), both of which hold for A_exp on all of V_red(Λ) (Theorem L with Λ in place of Z_0; 4.2). So WC(iv) holds for (x + A_exp)^{−1} with the same constants, without the p. 13 regrouping of 5.4 [P, by the same proof with Z_0 := Λ].
 Balaban's own route for the resolvent (G_3(x) in (3.185) of CMP 99, CMP 116 p. 13 [V]) is not used.

## §5 Verdict and ledger

5.1 Verdict. A7 is PROVED relative to inputs that WC_FULL already carries. No new input is added.
 Norm (Lemma N, §2): ‖C*Δ_kC‖ ≤ γ_1^N = ‖C‖²[(K_{ext,1} − a)_+ + c_J + 2c_𝒢], uniform in k, η, volume, Λ, Z_0, and real regular U. Inputs: C2 ((C) for G_1, conditional on the torus-side hypothesis and two unprinted conventions), A3-R4 (c_J), I1 (term identification (1.1)), I3 (form of Q̃, for ‖C‖). No walk expansion, no W_G1, no A1-W, and no axial transfer is used.
 Decay (Theorem D, §3): |(C*Δ_kC)(b, b′)| ≤ 2B_Ae^{−δ_A|b−b′|}, δ_A = (1 − θ)min{½ε, δ_1}, Schur constant S(δ_A), Γ_1 = 2B_AS(δ_A). This is WC_FULL Proposition W_N + 4.3, restated as A7. Inputs: W_G1 [R], A1-W [C on (C)], I2, I9, Concatenation Lemma [P].
 Series (2.7) in walk form (§3.3): converges kernel-wise for γ_1 := 4B_AS(θ′δ_A), ratio ½, kernel ≤ 4γ_1^{−1/2}e^{−(1−θ′)δ_A|b−b′|}. This is "if γ_1 is sufficiently large", made explicit.
 s-versions (§4.1–4.2): same bounds for s ∈ [0, 1]; at |s| ≤ e^{κ_1} with B_A → e^{2^dκ_1}B_A, δ_A → ½δ_A, M ≥ κ_1/(c_dδ_A) [P-sketch following CMP 116 (1.11)].
 Complex U (§4.3): on 𝒰(α″) with (B_A″, δ_A″) from WC_FULL 6.6, given WC_FULL's complex inputs (Th3.4, R2, C1–C2).
5.2 Corrections to the brief.
 (i) C is the constraint parametrization I − hLQ̃, not (C^{(k)})^{1/2}; C*Δ_kC is the precision, (C^{(k)})^{−1}. Theorem WC(i) (A_Z ≥ ¼γ_e) is a lower bound on it and cannot yield γ_1. "A_Z ≥ c·Δ_k ⇒ ‖C*Δ_kC‖ ≤ 1/c" is not a valid route; the upper bound comes from (C) (§2) or from Schur on W_N (§3).
 (ii) Δ_k is not local (range one block). Its leading term (QG_1Q*)^{−1} is an inverse with decay rate ½ε (A1-W). Only C, C*, a·I, and 𝒢*𝒢 are local.
 (iii) The x-integral of resolvents expands (C*Δ_kC)^{−1/2}, not C*Δ_kC. A7's decay needs no x-integral. WC(iv) has no uniform-in-x residue for A7 (§4.4); it also extends from A_Z to A_exp on Λ by the same proof.
5.3 Ledger.
 [V] CMP 116 p. 13 (2.7) (300 dpi image) and the "γ_1 sufficiently large" sentence; p. 12 (2.5) B′ = (C^{(k)})^{1/2}X; p. 5 (1.11) complex-s bound with e^{mκ_1} and m > 2^4 (text layer); p. 3 s-rule and p. 15 "symmetric" sentence (via SOURCES_LOC, SOURCES_A2_R2); CMP 99 p. 428 (3.156)–(3.158) and the C sentence (via SOURCES_Q, SOURCES_CDC_VERIFY); CMP 109 p. 268 (via WC_FULL PF5).
 [P] §1.2 identification of C and of C*Δ_kC as the precision; Lemma N (§2.2), its axial form (§2.3), and c_− ≥ 1/γ_1^N (§2.4); c_C ≤ 1 + max w_{b_0}^{−2}Σw_b² given the Q̃ form; Theorem D (§3.2, restating WC_FULL 4.2–4.5); the n-th power bound K^nS(θ′δ)^{n−1}e^{−(1−θ′)δd} and the series bound (§3.3); real-s transfer (§4.1); WC(iv) for A_exp on Λ (§4.4 Remark).
 [P-sketch] complex-s transfer (§4.2), following CMP 116 (1.11).
 [C] C2 = (C) for G_1 (norm and decay); C1 = (C) for G (decay, through A1-W and the complex chain).
 [R] W_G1 (CMP 99 Thms 3.7, 3.9, 3.10 sketches), A3-R4, Th3.4 + complex walk form of G (complex points only).
 [I] I1 (term identification); I2 (C̃^{(2)} locality); I3 (Q̃ = Q_1(U_1) and its weight form, for ‖C‖); I9 (J local, O(Mα_0)); the 2^d cube count and κ_1 before M (§4.2); K_E(4) numeric (§2.5).
5.4 Proposed TRUST_LEDGER row A7 status (not written into TRUST_LEDGER; this file edits no existing file):
 "PROVED relative to listed inputs [2026-10-28, SOURCES_A7_CDC]: norm ‖C*Δ_kC‖ ≤ γ_1^N = ‖C‖²[(K_{ext,1} − a)_+ + c_J + 2c_𝒢] from (C) for G_1 alone (Lemma N; inputs C2, A3-R4, I1, I3; no walks); decay 2B_Ae^{−δ_A|b−b′|} = WC_FULL Prop. W_N (inputs W_G1 [R], A1-W [C], I2, I9); (2.7) series in walk form converges for γ_1 = 4B_AS(θ′δ_A); s- and complex versions via the s-rule and WC_FULL 6.6. Old reduction 'A7 ⇐ A1 + A18' superseded; A18 enters only through A3-R4 and I3. Needs an independent verifier pass."
 Checks for a verifier, in priority order: (1) Lemma N step (b): S = I and μ = 1 on Λ ⊂ Λ_k, so that (C) on ℋ gives the unit-lattice bound; (2) the claim that WC_FULL C2 is (C) for G_1 in exactly the N̂_1 ≥ c_{−,1} form used in step (c); (3) §3.3 power bound arithmetic; (4) §4.4 Remark (WC(iv) for A_exp on Λ).

Corrections after verification (SOURCES_A7_CDC_VERIFY, 2026-10-28): input list for the norm bound = C2 [(C) plus the [I] G_1 step of A1_KERNEL §9], A3-R4, I1, I3, and Theorem L's inputs through step (f) — or replace step (f) by the two-sided bound of §2.3, giving ‖C‖²·max{K_{ext,1} − a + c_J + 2c_𝒢, a + c_J} (still uniform); decay inputs = W_G1 [R], A1-W [C], I2, I9; S = I, μ = 1 on Λ is a fact under WC_FULL's units L^kη = 1; complex s stays at P-sketch level (the 2^d count [I]; under a per-piece s-rule a concatenated term can carry s^k on one cube, so M_1 must be large after κ_1 — condition to add); axial-gauge decay P-sketch, ‖C_ax‖ asserted; the (2.7) series has no 1/π factor (Balaban misprint, harmless); §4.4 is a special case of WC(iv) (Λ = union of M-blocks with dist > RM), not an extension.
