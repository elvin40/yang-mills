# THEOREM2_PROOF.md: Balaban's Theorem 2 (running-coupling control), conditional proof

Written 2026-10-27 (Opus). Assembled from verified files in this folder. Unverified as a whole document.
Status tags: [proved+verified], [proved, unverified], [reduced], [open], [numerical].

Structure: (T2-a1′) ⇒ Theorem 2 ⇒ Balaban's Theorem 1 without the coupling assumption.

## §1 Statement

### 1.1 Balaban's Theorem 2 (verbatim, CMP 109 (1987), p. 259)

"Let d = 4, G = SU(2), and let γ be a sufficiently small positive constant, then for a sufficiently small positive g there exists a bare coupling constant g_0 = g_0(ε, g) such that the sequence of the effective coupling constants g_k is contained in the interval ]0, γ], and g_K = g. Moreover, there exist constants β, β′, 0 < β ≤ β′, such that g_k satisfy the inequality

  1/g² + β log(L^k ε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^k ε)^{−1}.   (0.31)

A proof of this theorem, based on perturbative calculations, will be given in a separate paper, where more precise asymptotic behavior will be proved."

Balaban's Theorem 1 (CMP 122 (1989), p. 355, verbatim): "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." Same page: Theorem 2 "allows us to remove the assumption on the effective coupling constants in the above theorem ... [its proof] has not been published yet, so we have Theorem 1 with the assumption."

Objects (THEOREM2.md §2). ε = L^{−K}. Coupling recursion (0.18)/(0.20): 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k). β_j is the second moment (5.42)/(1.22) of the step-j vacuum polarization tensor, taken in infinite volume. Asymptotic freedom in this convention means β_j > 0.

### 1.2 The version proved here

Theorem 2′ (this document). Let d = 4, G = SU(2) (the one-loop parts below hold for SU(N)). Assume hypotheses (H0)–(H5) of §1.3. Then there are γ > 0 and 0 < β ≤ β′ such that for every K ≥ 1 and every g ∈ ]0, γ] there is g_0 with all g_k ∈ ]0, γ], g_K = g, and (0.31) holds with Balaban's constants β/log L, β′/log L. Consequently Balaban's Theorem 1 holds without its coupling assumption, for the bare coupling g_0(ε, g). The one-loop chain (§3–§5) holds for every odd L ≥ 3; the step to Theorem 1 needs L odd and L > 11, Balaban's range. Status: [reduced]. The reduction chain is (T2-a1′) ⇒ (T2-a) ⇒ Theorem 2 ⇒ Theorem 1 unconditional.

The core statement is

  (T2-a1′)  0 < inf_j β_j(0) and sup_j β_j(0) < ∞,

where β_j(0) is the step-j one-loop (Gaussian) coefficient, defined directly by the Gaussian integral (1.4)–(1.5) of CMP 109. It is history-independent by definition (LEMMAS_DE_VERIFY §3 item 3). (THEOREM2.md §3a; status of the reduction: [proved+verified], LEMMAS_DE_VERIFY §3.)

A weaker sufficient form (THEOREM2.md (R1)): for all k < K, β(K−k) ≤ Σ_{i=k+1}^{K} β_i(0) ≤ β′(K−k). This document proves the stronger (T2-a1′) form, conditionally.

### 1.3 Hypotheses, listed

(H0) Balaban's inductive assumptions (CMP 109 pp. 263–264, verbatim in THEOREM2.md §3a). E^{(j)} is analytic on U^c_j(X, α_0, α_1), localized, and bounded by E_0 exp(−κ d_j(X)) (1.18). β_{j+1} is "a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives". We use only the C¹ part: |β_j(g) − β_j(0)| ≤ C_1 g, uniform in j and in the admissible history. Status: conditional on Balaban's published proofs.

(H0′) Continuity hidden in Lemma D (LEMMAS_DE_VERIFY §3 item 1). Either each β_{k+1} is continuous on the history cube ]0,γ]^{k+1}, or (weaker, §1.5 of that file) g_0 ↦ g_{k+1} is continuous on the set of histories admissible through step k. β_j is the infinite-volume function, independent of K. Status: [open] as a written derivation; it is a claim about Balaban's construction, proved by the same analysis as (H0).

(H1) Block factor. L odd, L ≥ 3. Balaban uses L odd, L > 11, for his constants; our one-loop results hold for every odd L ≥ 3, so they cover his range. Odd L is used in three places:
 - U3 Lemma 1.2: exact composition Q_{L′}Q_L = Q_{LL′} for nested centered blocks [proved+verified; for even L it holds with corner blocks, U3_VERIFY §2].
 - R2 parity (U3_LEMMA51_R23 Theorem R2): for odd M the block sites are the midpoints of the M-cell partition, so the f⁰, f¹, f² averaging symbols are exact even functions of h = 1/M; corner blocks (even L) carry an M^{−1} term [proved+verified].
 - O5 / Prop. A (U3_REPAIRS): stated and verified for odd L with centered blocks; BETA_FP_LEMMA43 Lemma 4.1 inherits this range (even L is item O2 there).

(H2) Small-coupling region. γ ≤ γ_0 of (H0), and γ ≤ β_0/(2C_1) with β_0 := inf_j β_j(0) (Lemma E, C¹ form). Balaban's "g sufficiently small" means only g ≤ γ (LEMMAS_DE_VERIFY §3 item 4).

(H3) Representation V1 (U3 §6.1, ledger C4). The order-g⁰ content of CMP 109 (1.3)–(1.5) is complete, so β_{j+1}(0) is the functional Φ of (6.1) applied to the level-j data 𝒟_j = (Δ_j, Γ_j^{(3)}, Γ_j^{(4)}), with c_norm = 4 (NUMERICS §6). Status: plausible, not independently proved; supported at order p² by U3_VERIFY §6.

(H4) The two open lemmas of the charged sector, (A) and (W), stated precisely in §3.4. Status: [open].

(H5) The identification hypothesis (H) for the limit value (or its weaker form (H′)), stated precisely in §4.2, and certification of the early steps j ≤ j_*, §5. Status: (H) [open, repair in progress; graded UNSUPPORTED as stated]; early steps [numerical].

## §2 Lemma D (shooting) and Lemma E (uniform bounds)

Source: LEMMAS.md (corrected versions), checked in LEMMAS_DE_VERIFY.md. Notation: u_k := 1/g_k², t := 1/g².

### 2.1 Lemma D (shooting) [proved+verified]

Hypotheses. Fix K ≥ 1, γ > 0, 0 < β ≤ β′. For k = 0,…,K−1, β_{k+1}: ]0,γ]^{k+1} → [β, β′] is continuous in the whole history (g_0,…,g_k). Flow: u_{k+1} = u_k − β_{k+1}(g_0,…,g_k).

Conclusion. For every g ∈ ]0,γ] there is g_0 ∈ ]0,γ] whose trajectory has all g_k ∈ ]0,γ], g_K = g, and for all k

  1/g² + β(K−k) ≤ 1/g_k² ≤ 1/g² + β′(K−k).

With ε = L^{−K}, log(L^k ε)^{−1} = (K−k) log L, so this is (0.31) with Balaban's constants β/log L and β′/log L.

Key steps of the verified proof (LEMMAS_DE_VERIFY §1.4).
1. Clamp. φ(u) := (max(u, 1/γ²))^{−1/2} maps R continuously into ]0,γ]. Define ũ_{k+1} = ũ_k − β_{k+1}(φ(ũ_0),…,φ(ũ_k)). Then F̃(u_0) := ũ_K is continuous on R and F̃(u_0) ∈ [u_0 − β′K, u_0 − βK].
2. IVT on J := [t + βK, t + β′K]. F̃(t+βK) ≤ t ≤ F̃(t+β′K), so some u_0* ∈ J has F̃(u_0*) = t.
3. The clamp is never active. ũ_k = ũ_K + Σ_{i>k} β̃_i ≥ t ≥ 1/γ², since every β̃_i ≥ β > 0. So the clamped trajectory is a true trajectory.
4. The two-sided bound is the telescoped sum u_k − u_K ∈ [β(K−k), β′(K−k)].

The first draft used the wrong IVT interval [t+β′K, t+β′K+(β′−β)K]; the verifier refuted it with β_i ≡ 3/2, K = 1. The corrected proof above was checked numerically (K = 6, oscillating history-dependent β's).

Weaker continuity variant (LEMMAS_DE_VERIFY §1.5) [proved+verified]. If β_{k+1} is defined only on true RG histories, a nested-interval argument works. It needs only continuity of u_0 ↦ u_{k+1} on D_k = {u_0 : u_0,…,u_k ≥ 1/γ²}. This matches Balaban's setting better, because his β_{k+1} is defined only on admissible histories (hypothesis (H0′)).

Only partial sums are used (THEOREM2.md (R1)): the proof needs Σ_{i=k+1}^{K} β_i ∈ [β(K−k), β′(K−k)] for all k, not the individual bounds.

### 2.2 Lemma E (uniform bounds from one-loop positivity) [proved+verified]

Hypotheses. There are γ_0 > 0, C ≥ 0 and 0 < β_0 ≤ β_0′ such that, for all j, all admissible histories, and all g ∈ ]0,γ_0]: β_0 ≤ β_j(0) ≤ β_0′ and |β_j(g) − β_j(0)| ≤ C g² (or the C¹ form C_1 g).

Conclusion. With γ := min(γ_0, sqrt(β_0/(2C))) (C¹ form: γ := min(γ_0, β_0/(2C_1))), β_0/2 ≤ β_j(g) ≤ β_0′ + β_0/2 for all j and g ∈ ]0,γ]. This is (T2-a) with β = β_0/2, β′ = β_0′ + β_0/2.

Proof. C g² ≤ C γ² ≤ β_0/2. ∎

Key verifier findings (LEMMAS_DE_VERIFY §2.4).
- The first draft assumed analyticity on a disc around g = 0. That is unattainable: large-field contributions are of size exp(−c/g²), which is not analytic at 0. The real-variable bound is what Balaban's p. 264 assumption gives, and it suffices.
- The constants C, β_0, β_0′ must be uniform over j AND over admissible histories. Defining β_j(0) by the Gaussian integral makes β_j(0) history-independent, so the uniformity is needed only for C (supplied by (H0)).

### 2.3 Reduction "Theorem 2 ⇐ (T2-a1′) + (H0) + (H0′)" [proved+verified]

(T2-a1′) gives β_0, β_0′. (H0) gives C_1. Lemma E gives (T2-a). Lemma D gives Theorem 2 with (0.31). There is no circularity: the shooting argument evaluates β_{k+1} only on histories already known to lie in ]0,γ], which is where Balaban's Theorem 1 defines them (LEMMAS_DE_VERIFY §3). Hidden hypotheses (continuity (H0′); infinite-volume β_j; history-independent β_j(0)) are listed in §1.3.

The rest of this document is about (T2-a1′).

## §3 Convergence of the one-loop increments

Goal: β_j(0) → β_∞ geometrically. Setting: level-j units, M = L^j, trivial background unless stated. The level-j data are 𝒟_j = (Δ_j, Γ_j^{(3)}, Γ_j^{(4)}): the quadratic form of the level-j tree (classically perfect) action and its two soft-leg vertices.

### 3.1 The quadratic form: Theorem 4.1 with O5 [proved+verified]

Sources: U3_GAUSSIAN_RG §1–§4, U3_VERIFY, U3_REPAIRS §2, U3_REPAIRS_VERIFY §2–§4.

Statement. Δ_j is the single block-L^j Schur complement of the Wilson Hessian (U3 Prop. 1.5, Lemmas 1.1–1.4) [proved+verified]. Δ_M(K) is real-analytic on the whole torus, Δ_M(0) = 0, and

  sup_{K∈BZ} |∂_K^α (Δ_M − Δ_∞)(K)| ≤ C M^{−2} = C L^{−2j},  |α| ≤ 2,   (3.1)

with C independent of M and L, the sup including K = 0 (Theorem O5; any fixed |α| with C_α).

Key steps.
1. Exact composition Q_{L′}Q_L = Q_{LL′} for centered blocks, odd L (U3 Lemma 1.2), so T_L^j Δ_0 = Δ_{L^j}.
2. Per-coarse-momentum Schur formula (U3 (2.3)); fixed point Δ_∞ with Maxwell normalization |K̂|²P′_T(1 + O(K²)) (U3 Lemma 3.1; strip |Im K_ν| < π/2 after the U3_VERIFY correction).
3. Prop. A (deformed-momentum identity): the lattice term equals the continuum term at q̃_l = 2M sin(q_l/(2M)), and P′_T S_M P′_T = P′_T diag(d^M) P′_T with four scalar functions d^M_μ.
4. Prop. B: c_0|K̂|^{−2}P′_T ≤ P′_T S_M P′_T ≤ C_1|K̂|^{−2}P′_T uniformly in M, c_0 = (2/π)^{12}, C_1 ≤ 1363.
5. |q̃_ρ − q_ρ| ≤ C|q_ρ|³/M² gives the head error M^{−2}; tail Σ_{|l|_∞ ≥ M/2} ≤ CM^{−3}; a projector-free analytic formula near K = 0 gives uniform derivative bounds with no log.

Numerical check: |Δ_M − Δ_∞| = 1.007, 0.129, 0.0147 for M = 3, 9, 27 (ratios 7.8, 8.8 against L² = 9).

### 3.2 Uniform invertibility of the one-step bordered matrix: O6 [proved+verified]

Statement (U3_REPAIRS Theorem O6). For 𝔅_j(K) = [[A_j(K), Q̃(K)^†],[Q̃(K), 0]], A_j = ⊕_l Δ_j(k_l) + DD^†, for all j ≥ 0 and K ∈ BZ including K = 0:

  ‖𝔅_j(K)^{−1}‖ ≤ b(L) := 1/a + 2κ/s + ακ/s²,  κ = 1 + α/a,

with α ≤ 3.7·10³ (verifier: α = 3624), s ≥ 4.4·10^{−3} L^{−3}, a ≥ 2.3·10^{−10} L^{−20}, all independent of j and K. Ghost: ‖G^{−1}‖ ≤ L⁶/4. Crude constants. Measured: ‖𝔅^{−1}‖ = 103.5, 176.7, 193.0, 195.3 for j = 0, 1, 2, ∞ at the corner (L = 3). Scope: trivial background, one-step constraint. It does not cover the composed constraint (not needed, §3.4) or F ≠ 0 (not needed: (6.1) uses only Taylor coefficients at F = 0, U3 §6.2).

### 3.3 The increment is Lipschitz in the data: Theorem 6.1 [proved+verified, given (H3)]

Statement. Let Φ be the functional (6.1): β_{j+1}(0) = Φ(𝒟_j), with c_norm = 4. On 𝒟_{a,b} = {‖𝒟‖ ≤ a, ‖𝔅^{−1}‖ ≤ b, ‖G^{−1}‖ ≤ b}, |Φ(𝒟) − Φ(𝒟′)| ≤ C(a,b,L)‖𝒟 − 𝒟′‖, norm (6.2) = sup-norms of up to two k- and p-derivatives.

Key steps. The integrand is a smooth function of matrix entries that are affine in the data at the L⁴ umklapp momenta. Inverses are Lipschitz with constant b² (X^{−1} − Y^{−1} = X^{−1}(Y − X)Y^{−1}). w(0) = 0 (pure gauge) and w is even in p, so Φ = c_norm w″(0)/(2L⁴), and w″(0) involves at most two derivatives of the data.

Inputs. (b) is now O6 (§3.2), not a citation of CMP 95 (U3_VERIFY correction). (6.1) itself rests on (H3) = V1. The plane-wave expansion point is not the constrained minimizer; this changes w only at O(p⁴), so β_{j+1}(0) is unaffected (U3_VERIFY §6) [proved+verified].

### 3.4 The soft vertices: Lemma 5.1

Lemma 5.1 (target form). Let σ_j^{(1)}, σ_j^{(2)} be the first and second f-Taylor coefficients of the canonical (midpoint, symmetric-gauge) symbol of Δ_j(f) at the constant abelian background with coarse flux f. Claim: there are σ_∞^{(m)} with sup_K |∂_K^α(σ_j^{(m)} − σ_∞^{(m)})| ≤ C r_j, |α| ≤ 2, m = 1, 2, with r_j → 0 geometrically.

Neutral sector [proved+verified for the value bound]. F¹ = 0 and F² = −(2M⁴)^{−1} H_0^†Δ_{01}H_0 with 0 ≤ H_0^†Δ_{01}H_0 ≤ Δ_j. So r_j = L^{−4j}, limit 0 (U3_LEMMA51 Prop. 2.2). The K-derivative part needs one paragraph (symbol estimates of Theorem 4.1 for the sandwich); with the M^{−4} prefactor any uniform derivative bound suffices [proved, unverified at that level of detail].

Charged sector. Facts established:
- Single block-M constraint: false route. In d = 4, first-leg line pieces with the non-gauge weight W(t) = (ie/8)(1/8 − t²/2) make σ^{(2)} unbounded below, σ^{(2)}(ρ) ≤ C − cM (U3_LEMMA51_R23 Prop. 3.4 plus the verifier's variational step) [proved+verified]. So U3_LEMMA51 Theorem 4.1 is false for m = 2 in d = 4. This does not affect Balaban's scheme, which uses the composed constraint.
- One-step recursion: Δ_j(f) = T_f[Δ_{j−1}(fL^{−2})], with T_f one (0.4) step of side L [proved+verified; matches the composed code to 10^{−13}; magnetic rescaling exact to 10^{−15}].
- Per step: R1 = one-step O6 (§3.2) [proved+verified]; R3 is a finite sum of L⁴ terms [trivial]; R2 is needed only at the bottom step, and for odd M the averaging symbols are exact even functions of h = 1/M (midpoint identity) [proved+verified]. σ_j(f; K) is even in K (point reflection) [verified].
- Scaling. f¹ data of K-degree p scale by L^{−p} per step: eigenvalue 1 (p = 0, spin coupling), L^{−2} (p = 2). f² data with p = 0 have eigenvalue L^{−2}. Error recursion (3b.3): e_j^{(1)} = Σ_{k<j} A_1^k B_{10} e_{j−1−k}^{(0)} + A_1^j e_0^{(1)} [proved+verified as linear algebra].

### 3.5 The two open lemmas, stated as hypotheses

(A) Uniform strip analyticity. [open] There are δ > 0 and C_A < ∞, independent of j, such that for m = 1, 2 the symbols σ_j^{(m)}(K) extend analytically to the complex strip {|Im K_ν| < δ, ν = 0,…,3} and sup_j sup_{strip} |σ_j^{(m)}(K)| ≤ C_A. Equivalent working form (U3_LEMMA51_R23_VERIFY §7): the one-step inverse 𝔨_0(K)^{−1} with f¹, f² perturbations stays bounded on a complex strip of fixed width, uniformly in j. Known: at f = 0 this follows from O5 (uniform strip for Δ_M) and O6 by a Neumann series [verified]. Use: (A) controls the four K-derivatives per step in the Moyal formulas (3.2)–(3.3) without loss over j steps; each input derivative carries L^{−1} because the input is evaluated at (K + 2πl)/L.

(W) Ward statement for the spin coupling. [open] For every j, the marginal f¹ component of the level-j data equals its fixed-point value: the K → 0, p = 0 coefficient of σ_j^{(1)} (the spin coupling, measured relative to the Maxwell coefficient of σ_j^{(0)}) is independent of j. Equivalently, e_j^{(1)} has no component along the eigenvalue-1 direction of A_1. Argument (not a proof): the level-j tree action is coarse-gauge-invariant; at dimension 4 the only gauge- and hypercubic-invariant term is Σ tr F_{μν}², which ties the spin coupling to the Maxwell coefficient, and that coefficient is exactly 1 at every level (U3 Lemma 3.1(ii), Theorem 4.1). A proof needs the derivative expansion of the nonlocal level-j kernel at K → 0 in the f¹ sector, i.e. analyticity at K = 0 there (the f¹ analogue of O5). Without (W), (3b.3) does not give e_j^{(1)} → 0.

Not needed: (N) (non-resonance, clean rate L^{−2j}). The verifier judges (N) plausibly false: tree-level mixing of quadratic dimension-6 artifacts into tr F_{μν}F_{νρ}F_{ρμ} gives a Jordan block. Expected rates are therefore j L^{−2j} and j² L^{−2j}.

### 3.6 Proposition 3.6 (convergence of the increments) [reduced: conditional on (H3), (A), (W)]

Statement. Assume (H3), (A), (W), L odd ≥ 3. Then β_∞ := Φ(𝒟_∞) exists and

  |β_{j+1}(0) − β_∞| ≤ C j² L^{−2j} ≤ C_ρ ρ^j  for every ρ ∈ (L^{−2}, 1).   (3.2)

Proof. (i) Δ_j → Δ_∞ at L^{−2j} in C² (§3.1). (ii) Given (A) and (W), the one-step recursion with per-step O6 gives ‖σ_j^{(1)} − σ_∞^{(1)}‖_{C²} ≤ C j L^{−2j} and ‖σ_j^{(2)} − σ_∞^{(2)}‖_{C²} ≤ C j² L^{−2j} (U3_LEMMA51_R23 §3b–§4, CONFIRMED as conditional in R23_VERIFY §9 items 5–6). The neutral sector is faster (§3.4). (iii) These Taylor data are the p-Taylor data of Γ_j^{(3)}, Γ_j^{(4)} up to order p² that enter (6.1) (U3_VERIFY §7; U3_LEMMA51_VERIFY item 3 notes the identification is cited, not re-shown; the limits depend on the symbol convention, the rates do not). Hence ‖𝒟_j − 𝒟_∞‖ ≤ C j² L^{−2j}. (iv) Convergence gives sup_j ‖𝒟_j‖ ≤ a; O6 gives b. So all 𝒟_j and 𝒟_∞ lie in one 𝒟_{a,b}. (v) Theorem 6.1 gives (3.2). ∎

Remarks. (a) The single-block U3 Theorem 7.1 statement with ρ = L^{−2} is replaced by any ρ > L^{−2}. (b) The f-expansion radius of the composed level-j form is of order L^{−1/2} in coarse flux (R23 §4); only Taylor coefficients at f = 0 enter (6.1), so this does not affect (3.2). (c) The unconditional subsequence statement of U3 §7 is not used (U3_VERIFY: unsupported for Γ^{(4)}).

## §4 Value of the limit: β_∞ = c log L

Sources: BETA_FP §1, §4 (Theorem 4.1, Lemma 4.3); BETA_FP_VERIFY §3, §6; BETA_FP_LEMMA43 (Prop. 2.1, Cor. 3.1, Theorem 4.3); BETA_FP_LEMMA43_VERIFY (complete: Prop. 2.1 and c CONFIRMED, (ii)–(iii) reduction CONFIRMED as conditional, (H) UNSUPPORTED); U1_INFINITE_LATTICE + U1_VERIFY. Repair of (H) in progress (BETA_FP_H.md, not read here).

Constant. c = 11N²/(12π²); SU(2): c = 0.371511, c log 3 = 0.40815, c log 2 = 0.25751. Normalization chain 1/g_B² = 2N/g² (THEOREM2 §8a, R2_VERIFY) [proved+verified]. c = 2N·b_0/(8π²), b_0 = 11N/3.

### 4.1 Exact inputs

(a) Telescoping [proved+verified, in corrected form]. Let S_k be the p → 0 F²-coefficient of the composed k-step gauge-fixed one-loop integral (U1 (1.2)). Then β_{j+1}(0) = S_{j+1} − S_j, so S_k = Σ_{j=1}^{k} β_j(0) (BETA_FP Prop. 1.1). Verifier correction: the identity is exact for the p → 0 coefficient at fixed k, not for log Z_k at fixed p (the plane wave is off-shell, Δ_0D_k = O(ap²)). Only the p → 0 coefficient is used here.

(b) Prop. 2.1, anchor-free identity [proved+verified: hand rederivation and a lattice check with the real CMP 109 averaging at random SU(2) backgrounds, difference 10^{−14} relative; BETA_FP_LEMMA43_VERIFY item 1]. Under the covariance (G1) and ΔD = 0,

  log Z_Λ(V) = [log det X − ½ log det K] − [log det(D_c^TD_c) − ½ log det(Δ_Λ(V) + D_cD_c^T)] + 0,

i.e. constrained one-loop = fine Wilson one-loop in background Feynman gauge (full gauge group) − one-loop of the coarse Gaussian theory with kernel Δ_Λ(V) (coarse Feynman gauge, coarse ghost). All point-anchor objects cancel. Verifier notes: ΔD = 0 is load-bearing (raw Hessian gives O(1) errors); on a torus the constant zero modes must be removed (infinite-volume per-cell densities are fine).

(c) Cor. 3.1 [proved+verified as an identity]. 𝒞(Λ) = c log Λ + κ_W^F − ρ(Λ) exactly. Verifier caveat: this is exact because ρ(Λ) is defined as the remainder; the statement "the whole log Λ sits in the fine piece" is equivalent to ρ(Λ) = o(log Λ), which is (H′) below, not proved. The whole log Λ sits in the fine piece, taken from Lüscher–Weisz (5.7) [cited; normalization verified in U1_VERIFY item 2]. ρ(Λ) depends only on the coarse Gaussian data. Along Λ = L^k this is U1's exact form S_k = c k log L + κ_W^F − κ_k (U1_VERIFY: the boundedness of κ_k alone is a tautological restatement, not progress).

(d) Abelian check [proved+verified]. U(1) sector: S_k^{ab} = (1 − L^{−4k})/4, c^{ab} = 0, matching numerics to all digits.

### 4.2 The hypothesis (H), and a weaker sufficient form (H′)

(H) [open, repair in progress; graded UNSUPPORTED as stated by BETA_FP_LEMMA43_VERIFY §7–§8] (BETA_FP_LEMMA43 (4.2)). There are limits Δ_∞^{(m)} and ε(Λ) → 0 such that, for the coarse kernel Δ_Λ(V) of the composed family at Λ = L^k (L odd), its background-vertex Taylor coefficients Δ_Λ^{(m)}(K; P) in a plane wave of momentum P satisfy, for m = 1, 2, |α| ≤ 2, |K| ≤ π, 0 < P ≤ P_0:

  |∂_K^α(Δ_Λ^{(m)} − Δ_∞^{(m)})(K; P)| ≤ ε(Λ)(|K| + P)^{4−m−|α|}.

Content: (H) = U3 Lemma 5.1 in the coarse Feynman form (§3.4–§3.5), plus a dimension-4 universality step: the coarse tree action is gauge invariant and its Maxwell coefficient is 1 for every Λ, so Λ-dependence starts at dimension 6, which gives the infrared weight (|K| + P)^{4−m}. That step is the same mechanism as (W) in §3.5, and it is not proved. Expected ε(Λ) = Λ^{−2}(log Λ)^{1 or 2}.

Verifier findings on (H). (1) It is stronger than U3 Lemma 5.1: infrared weights, P-derivatives, and |α| ≤ 4 via Taylor. (2) The dimension-4 step treats Δ_Λ(V) as the Hessian of a gauge-invariant coarse action at a stationary point; the fine plane wave is not stationary, and the missing Lagrange-multiplier term is O(aP³), the borderline order of (4.2) for m = 1. Its Λ-convergence is not argued. (3) Odd L only: Lemma 4.1 uses O5 (odd L, centered blocks); L = 2 is open. Repair direction (coordinator, BETA_FP_H.md, in progress): restate (H) at the constant abelian background, where J = 0 exactly and (H) should reduce to Lemma 5.1 in one-step-recursion form, i.e. to (A) and (W).

Given (H): Theorem 4.3 of BETA_FP_LEMMA43 [proved+verified as a conditional reduction; Prop. 4.2 by power counting, terms not all written out]: ρ(Λ) → ρ_∞ with |ρ(Λ) − ρ_∞| ≤ C max(ε(Λ), Λ^{−2}), via Lemma 4.1 (trivial-background IR-weighted convergence, from O5; odd L) and Moore–Osgood. Hence 𝒞(Λ) = c log Λ + C_∞ + o(1) = Lemma 4.3 of BETA_FP.

(H′) [open; weaker; sufficient once §3 holds]. ρ(L^k) = o(k), equivalently κ_k = o(k). For positivity of β_∞ alone it suffices that limsup_k κ_k/k < c log L.

Why (H′) suffices (BETA_FP_VERIFY §6 sharpening, made explicit here) [proved, unverified]. If β_j(0) → β_∞ (Proposition 3.6), then S_k/k → β_∞ by Cesàro and 4.1(a). By 4.1(c), S_k/k = c log L + (κ_W^F − κ_k)/k. So β_∞ = c log L − lim κ_k/k, and (H′) gives β_∞ = c log L. (H) ⇒ (H′) because (H) makes ρ convergent.

### 4.3 Proposition 4.3 (value of the limit) [reduced]

Statement. Assume (G1), (G2) (inherited: per-cell infinite-volume densities; covariance of the plane-wave background, BETA_FP_LEMMA43 O3), Lüscher–Weisz (5.7) [cited], L odd ≥ 3, the conclusion of Proposition 3.6, and (H′) (implied by (H)). Then

  β_∞ = c log L = (11N²/(12π²)) log L > 0;  SU(2), L = 3: β_∞ = 0.40815.

Proof. §4.2. ∎

Notes. (i) BETA_FP Theorem 4.1 claimed additivity f(LL′) = f(L) + f(L′) for all integers; the verifier marks this unsupported outside the composed family Λ = L^k, where it is trivial. It is not used. (ii) Even L = 2 (where the numerics run) needs Lemma 4.1 for corner blocks (BETA_FP_LEMMA43 O2) and is outside Balaban's range anyway. (iii) The constant C_∞ = κ_W^F − ρ_∞ depends on the averaging family; c does not.

## §5 Early steps

### 5.1 Every step must be positive

(0.31) at k = K−1 reads 1/g_{K−1}² ≥ 1/g_K² + β log L, so it forces β_K(g_{K−1}) ≥ β log L > 0 for every K. The partial-sum form (T2-a1″) contains the same condition (window k = K−1). So positivity of every individual β_j(0) is necessary. No averaging argument avoids the early steps.

### 5.2 Explicit threshold j_* [proved, unverified; conditional on §3, §4]

Assume Proposition 3.6 in the form |β_{j+1}(0) − β_∞| ≤ C j² L^{−2j} and Proposition 4.3 (β_∞ = c log L). Define

  j_* := min{ J ≥ 1 : C j² L^{−2j} ≤ (c log L)/2 for all j ≥ J }.

(For the geometric form C_ρ ρ^j: j_* = ⌈log(2C_ρ/(c log L)) / log(1/ρ)⌉.) Then for all j ≥ j_*:

  (c log L)/2 ≤ β_{j+1}(0) ≤ (3/2) c log L.

So (T2-a1′) holds iff β_1(0), …, β_{j_*}(0) are all > 0, with

  β_0 = min( min_{i≤j_*} β_i(0), (c log L)/2 ),  β_0′ = max( max_{i≤j_*} β_i(0), (3/2) c log L ).

The upper bound needs nothing more: each β_i(0) is finite (finiteness of S_k at fixed k is proved, U1_VERIFY). So the only finite-step content is positivity of β_1(0), …, β_{j_*}(0).

Size of j_* [heuristic]. C = C_Φ·C_data. C_Φ = C(a,b,L) of Theorem 6.1 is polynomial in b (inverses and up to two derivatives; roughly b³) times powers of a and L⁴. C_data comes from O5 and the conditional rate under (A), (W); neither constant is explicit. With the proved O6 constant, b(3) ≈ 7.5·10^{33} and b(13) ≈ 2.7·10^{50}, and C ~ b³ gives j_* ≈ 110 (L = 3) and ≈ 70 (L = 13). With the measured ‖𝔅^{−1}‖ ≈ 195 in place of b, C ~ 7·10⁶ gives j_* ≈ 11 (L = 3) and ≈ 4 (L = 13). These numbers only show the scale: j_* is not explicit until C_data under (A), (W) is made explicit and O6 is sharpened.

### 5.3 Numerical evidence [numerical]

Sources: numerics/NUMERICS.md §6, BETA_FP §3, BETA_FP_VERIFY §5, §7. SU(2), infinite volume, p → 0 by fit unless stated. Universal value c log L in brackets.

| step | L = 2 [0.2575] | L = 3 [0.4082] | L = 4 [0.5150] |
|---|---|---|---|
| β_1(0) | 0.630 (Ng = 12; converged; exact in N) | 0.664 (Ng = 8) | 0.757 (Ng = 6, single point p = 0.2; O((Lp)²) bias ≈ 0.01) |
| β_1 + β_2 | 0.953 (composed, box GPU, Ng = 4/6/8: 1.148/0.967/0.953) | not feasible (block 78744) | — |
| β_2(0) | ≈ 0.32: 0.953 − 0.630 = 0.323 (composed); 0.317–0.341 (per-level recursion, N = 8–12); 0.333 (verifier, symmetric Nyquist, N = 8) | not computed | — |
| β_3(0) | unconverged: 0.40 (N = 8), 0.286 (N = 12); verifier: j = 2 entries not usable (one-sided Nyquist shell, factor-4 Ng sensitivity) | — | — |

Abelian sector: (1 − L^{−4})L^{−4j}/4 reproduced at every computed level. All computed increments are positive. The deviation from c log 2 falls from +0.37 (step 1) to ≈ +0.06 (step 2) at L = 2. Two points do not fix a rate. The N = 16/24 per-level chain on Windows (ymbetafp) was relaunched after an OOM; its results are not in this folder at the time of writing.

Limits of this evidence.
- Only one odd L (L = 3), and only j = 1 there. L = 2 and 4 are even: corner blocks, outside the odd-L proofs (§1.3 (H1)) and possibly carrying an M^{−1} term in the vertices (BETA_FP_VERIFY §6).
- Balaban's constants need odd L > 11. No computation exists for L ≥ 5.
- Values are floating point with grid extrapolation, not certified.

### 5.4 What a certified computation needs

1. Odd L in Balaban's range (L ≥ 13) for the final theorem; L = 3 as a test case of the method.
2. Every j < j_*, with j_* made explicit (§5.2): explicit C_data under (A), (W), and a sharper O6 constant b(L).
3. The per-level recursion (BETA_FP §1.2) with exact symbols, not tabulated and interpolated data: the tabulation torus N must cover the x²-weighted range of the second-order data (N ≥ 16 for j ≥ 2, N ≈ 24 for j ≥ 4 at L = 2), with a symmetric Nyquist split (verifier fix).
4. Interval arithmetic for: the per-momentum bordered inverses (rigorous lower bound on σ_min of 𝔅_j(K), which O6 supplies in principle); the BZ integral (rigorous quadrature error; the integrand is analytic on a strip, so a certified bound from the strip width works); the p → 0 limit (use w″(0) directly, not a fit in p).
5. Size. Per coarse momentum the bordered block has 4N_gL⁴ + 4N_g rows (984 at L = 3; ≈ 3.4·10⁵ at L = 13). Dense per-K inversion at L = 13 is out of reach; color-diagonal structure and Prop. A must be used. Not attempted.
6. The representation (6.1) itself (hypothesis (H3)).

## §6 Conclusion: (T2-a1′) ⇒ (T2-a) ⇒ Theorem 2 ⇒ Theorem 1 [reduced]

Theorem 2′ (restated). Let G = SU(2), d = 4, L odd in Balaban's range (L > 11). Assume:
 (H0) Balaban's inductive assumptions (C¹ bound |β_j(g) − β_j(0)| ≤ C_1 g, uniform in j and history);
 (H0′) the continuity hypothesis of Lemma D (either form, §2.1);
 (H3) representation V1, i.e. β_{j+1}(0) = Φ(𝒟_j) with c_norm = 4;
 (A) and (W) (§3.5);
 (H′) κ_k = o(k) (implied by (H), §4.2);
 (E) β_1(0), …, β_{j_*}(0) > 0, with j_* of §5.2.
Then (0.31) holds, and Balaban's Theorem 1 holds without its coupling assumption.

Proof.
1. Increments converge. (A), (W), (H3), O5, O6, Theorem 6.1 ⇒ |β_{j+1}(0) − β_∞| ≤ C j² L^{−2j} (Proposition 3.6).
2. Value. Step 1 + telescoping + Cor. 3.1 + (H′) ⇒ β_∞ = c log L > 0 (Proposition 4.3).
3. (T2-a1′). Steps 1–2 give (c log L)/2 ≤ β_{j+1}(0) ≤ (3/2)c log L for j ≥ j_*. (E) gives positivity for the finitely many earlier steps; each is finite. So β_0 := min(min_{i≤j_*} β_i(0), (c log L)/2) > 0 and β_0′ := max(max_{i≤j_*} β_i(0), (3/2)c log L) < ∞ (§5.2).
4. (T2-a). Lemma E (C¹ form) with (H0): for γ := min(γ_0, β_0/(2C_1)), β_0/2 ≤ β_j(g) ≤ β_0′ + β_0/2 for all j and g ∈ ]0,γ], uniformly in the admissible history.
5. Theorem 2. Lemma D with β := β_0/2, β′ := β_0′ + β_0/2 and (H0′): for every K and g ∈ ]0,γ] there is g_0 = g_0(ε, g) with all g_k ∈ ]0,γ], g_K = g, and
  1/g² + (β/log L) log(L^kε)^{−1} ≤ 1/g_k² ≤ 1/g² + (β′/log L) log(L^kε)^{−1},
  which is (0.31) with Balaban's constants β_Bal = β/log L, β′_Bal = β′/log L.
6. Theorem 1. The couplings lie in ]0,γ], which is the hypothesis of Balaban's Theorem 1 (CMP 122 II p. 355), so its conclusion (the form and bounds of ρ_k, (0.1)) holds for the bare coupling g_0(ε, g). This step is conditional on Balaban's published proofs. ∎

Constants in the expected regime [heuristic]. If β_j(0) stayed close to c log L, then β_Bal ≈ c/2 and β′_Bal ≈ 3c/2 up to the early-step extremes, with c = 0.3715 (SU(2), Balaban's normalized-trace units). The early-step values measured so far (β_1 = 0.63–0.76 at L = 2–4) are above c log L, so β′ is set by them at small L.

What this conclusion does not give. It gives no statement for even L, and no statement for L ≤ 11 inside Balaban's theorem (his constants need L > 11). It does not prove the "more precise asymptotic behavior" Balaban announced, beyond β_j(0) → c log L. It gives no continuum limit by itself (ASSEMBLY.md / ASSEMBLY_VERIFY.md treat the finite-torus assembly separately; not claimed here).

## §7 Ledger

[proved+verified]
- Reduction Theorem 2 ⇐ (T2-a1′) + (H0) + (H0′) via Lemma E and corrected Lemma D (LEMMAS.md; LEMMAS_DE_VERIFY.md). Necessity of positivity of every step (§5.1, elementary).
- Normalization 1/g_B² = 2N/g², c = 11N²/(12π²) (R2_VERIFY; BETA_FP_LEMMA43_VERIFY).
- U3: Lemmas 1.1–1.4, Prop. 1.5, formula (2.3), Lemma 3.1 (strip π/2), Theorem 4.1 for m ≤ 2 with O5 (uniform to K = 0, no log), Prop. A, Prop. B (U3_VERIFY; U3_REPAIRS_VERIFY).
- O6: uniform one-step bordered invertibility for all j, crude constants (U3_REPAIRS_VERIFY; rerun in R23_VERIFY).
- Theorem 6.1 (Lipschitz), given (H3); plane-wave expansion point harmless at order p² (U3_VERIFY §6).
- Lemma 5.1 neutral sector (value bound), rate L^{−4j}; KKT expansion, canonical symbol, Moyal formulas (U3_LEMMA51_VERIFY).
- R2 midpoint identity (odd M); R3 volume pieces; single-block d = 4 failure; exact one-step recursion Δ_j(f) = T_f[Δ_{j−1}(fL^{−2})]; error recursion (3b.3) as linear algebra (U3_LEMMA51_R23_VERIFY).
- Telescoping S_k = Σ_{j≤k} β_j(0) for the p → 0 coefficient (BETA_FP_VERIFY §3, corrected scope).
- Prop. 2.1 anchor-free identity; Cor. 3.1 as an identity; (ii)–(iii) reduction to (H) (BETA_FP_LEMMA43_VERIFY).
- Abelian sector exact: S_k^{ab} = (1 − L^{−4k})/4 (U1_VERIFY).

[proved, unverified]
- Proposition 3.6 assembly (§3.6) and the C²-to-norm-(6.2) identification step (cited from U3_VERIFY §7, not re-shown).
- (H′) suffices, by Cesàro (§4.2).
- j_* formula and the (T2-a1′) constants β_0, β_0′ (§5.2).
- Neutral-sector K-derivative bound (one paragraph missing).

[reduced] (true given the listed hypotheses)
- β_j(0) → β_∞ at rate j²L^{−2j} ⇐ (A), (W), (H3).
- β_∞ = c log L ⇐ Proposition 3.6 + (H′) (or (H)) + (G1), (G2), Lüscher–Weisz (5.7).
- Theorem 2 ⇐ all of the above + (E) + (H0) + (H0′).

[open]
- (A) uniform strip analyticity of σ_j^{(1)}, σ_j^{(2)} (§3.5).
- (W) level-independence of the marginal spin coupling (§3.5).
- (H), repair in progress (BETA_FP_H.md); or the weaker (H′): κ_k = o(k) (§4.2).
- (H3) representation V1: order-g⁰ completeness of CMP 109 (1.3).
- (H0′) continuity of the RG map in the history (a claim about Balaban's construction).
- Explicit constants C_data (under (A), (W)) and a usable O6 constant, hence an explicit j_*.
- (N) not needed; judged plausibly false (clean rate L^{−2j} not expected).

[numerical]
- β_1(0) = 0.630 / 0.664 / 0.757 (L = 2 / 3 / 4); β_1 + β_2 = 0.953 (L = 2); β_2 ≈ 0.32 (L = 2, three methods); β_3 unconverged. All positive. Not certified. Only L = 3 is odd, and only j = 1 there.

[conditional on Balaban's published proofs]
- (H0): Balaban's inductive assumptions and his Theorem 1 (CMP 109, 116, 122 and the propagator papers CMP 95, 96, 98, 99, 102). The step Theorem 2 ⇒ Theorem 1 is only as strong as those proofs. Uniform-in-level decay bounds used for 𝒟_j ∈ 𝒟_{a,b} are partly cited from CMP 95/96/99 (U3 ledger C1); O6 replaced the main citation.

## §8 What remains, and the sizes

1. (A) uniform strip analyticity, f¹ and f² sectors. Size: one derivation. At f = 0 it follows from O5 + O6 by a Neumann series; the open part is to carry the f¹, f² perturbations through the one-step inverse on a fixed strip. Estimate: one focused session plus a verifier.
2. (W) Ward statement. Size: one derivation, the f¹ analogue of O5 (analyticity at K = 0 in the f¹ sector) plus the dimension-4 uniqueness argument. Estimate: one to two sessions. The same mechanism repairs the dimension-4 step of (H).
3. (H) or (H′). Repair agent running (BETA_FP_H.md: (H) at the constant abelian background, J = 0, reduced to Lemma 5.1 in one-step form, so to (A) and (W)). If that reduction holds, (H) adds no new open item. (H′) needs only κ_k = o(k).
4. (H3) order-g⁰ completeness of (1.3). Size: a reading of CMP 109 §1 against (1.3)–(1.5), plus the large-field contributions being O(e^{−c/g²}). One session; it is a verification against the source, not new mathematics.
5. Explicit j_* and certified early steps. Size: the largest item. Needs explicit C_data, a sharper O6 constant (proved b(L) ≈ 10^{34} at L = 3 makes j_* ≈ 10²), and an interval-arithmetic per-level code at odd L ≥ 13 with blocks of ≈ 3.4·10⁵ rows per momentum. Estimate: weeks, Windows box GPU; the floating-point code exists only for L ≤ 5 and j ≤ 2–3.
6. (H0′) continuity in the history. Size: a careful reading of Balaban's construction (CMP 109 §1, CMP 122); one to two sessions; it is the hidden hypothesis LEMMAS_DE_VERIFY flagged.
7. Independent verification of this document as a whole. The parts are verified file by file; the assembly in §3.6, §4.2, §5.2, and §6 is not.

Bottom line. Theorem 2 is reduced to two analytic lemmas (A) and (W), the identification hypothesis (H) (or (H′); repair in progress and expected to reduce to (A) and (W)), the representation hypothesis (H3), the continuity hypothesis (H0′), and a finite certified computation of β_1(0), …, β_{j_*}(0) at an odd L > 11. It is not proved.
