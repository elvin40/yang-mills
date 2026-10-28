IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_A3_GAMMA0 — attempt on trust-ledger item A3 (lower bound γ_0 > 0 on C*Δ_k(U)C)

Status: done 2026-10-28 (Opus). Verdict §8: Kato route REFUTED; A3 REDUCED to Balaban's two-step route made covariant [P-sketch], free constant corrected, M-independence obtained; five named [R] inputs remain. Not yet independently verified.
Firewall: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md were not read.

## §0 Target
A3: ⟨B, C*Δ_k(U)C B⟩ ≥ γ_0‖B‖², γ_0 independent of k, volume, M, and the background U in the regular class.
Proposed route: lattice Kato (diamagnetic) inequality reduces the covariant minimal-extension energy to the free one.

## §1 CMP 96 pp. 243–246: what Lemma 2.4 is and how γ_0 arises at U = 1 [V page images, PDF pp. 21–24]
[V] p. 243 (2.118): γ_0‖∂_1B‖² ≤ ⟨B, Δ_jB⟩ ≤ γ_1‖∂_1B‖², quoted from "(1.66) satisfying (1.67)" (CMP 95). ∂_1 = unit-lattice curl (plaquette sum). Δ_j = the minimal-extension form.
[V] p. 244 (2.120)–(2.122): the B-integral form is ‖B↾Λ^c‖² + L^{−2}‖(Q_1B)↾Λ′‖² + ⟨B, Δ_jB⟩ on B with the axial condition (2.121) B(b) = 0 for b ⊂ Γ_{y,x}. By (2.118) it is ≥ the form (2.122) with γ_0‖∂_1B‖².
[V] p. 244 (2.123): inside a block, telescoping along axial lines: |B(x, x+e_j)|² ≤ (path length)·Σ|(∂_1B)(p)|²; summed: Σ_{b⊂B(y)}|B(b)|² ≤ dL^d Σ_{p⊂B(y)}|(∂_1B)(p)|².
[V] p. 245 (2.124)–(2.127): for bonds in the corridor B(c) between two blocks, the same telescoping plus |(Q_1B)(c)|² gives L^{−d}Σ_{p⊂B(c)}|∂_1B|² + |Q_1B(c)|² ≥ ⅓L^{d−1}Σ_{b∈B(c)}|B|² − (block terms).
[V] p. 245 Lemma 2.4 (2.128): L^{d−2}Σ_c|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ (12d²)^{−1}L^{−d−1}‖B‖², B on Λ = B(Λ′) with (2.121), B = 0 outside Λ.
[V] p. 246: "These forms are bounded from below by γ_0″‖B‖² with a positive constant γ_0″ dependent on d and L only."

1.1 Reading [P]. The U = 1 lower bound is a TWO-step argument, not a Fourier bound:
 (i) analytic step: Δ_j ≥ γ_0·∂_1*∂_1 (CMP 95 (1.67)): the minimal fine energy of an extension of B dominates the unit-lattice curl energy of B;
 (ii) combinatorial step: Lemma 2.4, a unit-lattice Poincaré inequality in axial gauge with block-average control.
 In CMP 99's setting Q_1B = 0 on the B-subspace (δ(Q_1B) in (3.155)), so the Q_1-term of (2.128) vanishes, and γ_0(CMP 99) ≥ γ_0^{(1.67)}·(12d²)^{−1}L^{−d−1}. The KAPPA_D/SOURCES_Q value γ_0 = (12d²)^{−1}L^{−d−1} omits the factor γ_0^{(1.67)} [P: correction].
 Also C*·C: ‖CB̃‖² ≥ ‖B̃‖² because C is the identity on the bonds of Λ̃ and only adds solved bonds. So ⟨B̃, C*Δ_kC B̃⟩ ≥ γ‖CB̃‖² ≥ γ‖B̃‖². The C-step costs nothing for the LOWER bound [P].

## §2 CMP 95 p. 29 (1.64)–(1.67), p. 29–30 (1.69): the analytic step at U = 1 [V pdftotext]
[V] (1.65) ⟨B, Δ_kB⟩ = ⟨∂H_kB, ∂H_kB⟩, H_kB = the minimizer of ½⟨∂A, ∂A⟩ on {Q_kA = B, Rd*A = 0}. (1.67) γ_0′⟨∂_1B, ∂_1B⟩ ≤ ⟨B, Δ_kB⟩ ≤ γ_1⟨∂_1B, ∂_1B⟩, "γ_0, γ_1 dependent on d only", from the Fourier formula (1.66) (garbled in text). (1.69) Δ = d*d + dd*, R = I − P.
2.1 Reading [P]. The free Δ_k is the minimal CURL energy ‖∂A‖² over extensions. The gauge condition Rd*A = 0 does not change ‖∂A‖² (gauge directions have zero curl at U = 1), so it is a choice of minimizer, not an extra cost. The lower half of (1.67) is the analytic step (i) of §1.1.
2.2 Elementary proof of the lower half of (1.67) [P, continuum-normalized lattice sums]. Balaban's Q (CMP 98 (14), (125); CMP 95 (1.8)) is: (QA)(c) = average over x in the block B(c_−) of the line integral of A along the unit segment [x, x + e_μ]. For a unit plaquette p in the (μ, ν) plane at block y, the alternating sum of the four line integrals at fixed x is the loop integral around the unit square S_x(μν) at x. By lattice Stokes (exact at U = 1), it equals the flux of F = ∂A through S_x. So
  (∂_1QA)(p) = ⨍_{x∈B(y)} ∫_{S_x} F_{μν}, |(∂_1QA)(p)|² ≤ ⨍_{x∈B(y)} ∫_{S_x}|F_{μν}|²  (Cauchy–Schwarz; |S_x| = 1, block volume 1).
Each fine point z lies in S_x for x in a set of (x, s)-measure ≤ 1 per plaquette, and z lies in the supports B(y) + S of at most 2² unit plaquettes of a given orientation. Summing over p: ‖∂_1QA‖² ≤ c_*‖∂A‖², c_* ≤ 4. Taking the minimum over A with QA = B: ⟨B, Δ_kB⟩ ≥ c_*^{−1}‖∂_1B‖². The constant is uniform in k (it is a continuum statement sampled on the η-lattice). [N check in §4.]
2.3 Monotonicity under extra constraints [P]. A minimum over a smaller set is larger. CMP 99's multiscale Q_𝔅 adds constraints (zero averages on finer regions, Dirichlet outside Λ). So every LOWER bound proved for the single-scale problem holds for the multiscale problem without change. The multiscale caveat of SOURCES_CDC_VERIFY §4 (e^{−δRM} correction) concerns only the UPPER bound.

## §3 Numerical check of c_* [N, script in the appendix, d = 2, one step, periodic, < 5 s on Mac]
Quantity: sup_A ‖∂_1Q(1)A‖²/‖∂A‖², Balaban's equal-weight corridor Q (weight L^{−(d+1)}), physical normalization (‖F‖² = η^{d−2}Σ curl² = Σ curl² in d = 2). Computed as ‖∂_1Q·pinv(∂)‖² (∂_1Q kills ker ∂: gradients map to gradients, constants to constants).
| L | blocks | c_* |
| 2 | 3×3 | 0.625 |
| 3 | 3×3 | 0.556 |
| 3 | 4×4 | 0.704 |
| 4 | 3×3 | 0.531 |
| 5 | 3×3 | 0.520 |
All ≤ 0.71, well inside the bound c_* ≤ 4 of §2.2. So ⟨B, Δ_kB⟩ ≥ c_*^{−1}‖∂_1B‖² with c_*^{−1} ≥ ¼ (proved) and ≈ 1.4 (observed, d = 2).

## §4 The Kato (diamagnetic) route of the brief: REFUTED at step (1)–(2) [P]
4.1 Where Kato holds [P]. For a 0-form (or for one component A_μ of a 1-form, transported along e_ν), with Ad(U) orthogonal: |Ad(U_b)A(x+e) − A(x)| ≥ ||A(x+e)| − |A(x)|| (reverse triangle inequality, |Ad(U)v| = |v|). So the componentwise covariant gradient energy Σ_{μ,ν}‖∇^U_νA_μ‖² dominates Σ‖∇_ν|A_μ|‖². Item (3) also holds for the main part of Q: CMP 98 (139) prints |Q_{V_0}A| ≤ Q|A| [V via SOURCES_EU §2].
4.2 Where it fails [P, explicit]. The leading form of M_1 is NOT a componentwise gradient energy. CMP 99 p. 392 (3.10): ⟨A, ΔA⟩ = ‖D_UA‖² + ⟨A, Δ′A⟩, D_U = covariant CURL on plaquettes (four terms), Δ′ small; and M_1 adds only the PARTIAL gauge fixing ‖RD*A‖² (R = I − P a projection) [V (3.119), (3.128); CMP 95 (1.69)–(1.70)]. Kato fails for the curl, already at U = 1, abelian:
 Counterexample. d = 2, A = dλ with λ = δ_x (one site). On the plaquette with lower-left corner x − e_1: A(x−e_1, x) = +1, A(x, x+e_2) = −1, the other two bonds 0. curl A = 1 + (−1) = 0, but curl|A| = 1 + 1 = 2. So ‖∂A‖² = 0 < ‖∂|A|‖². The inequality ⟨A, M(U)A⟩ ≥ ⟨|A|, M(1)|A|⟩ is false even for U = 1.
4.3 Why no repair of Kato works [P]. (a) Replacing M_1 by the Feynman form Σ‖∇^U A_μ‖² (where Kato holds) is not allowed for a LOWER bound: M_1 ≤ Feynman form + O(Mα_0), not ≥, because R ≤ I. (b) The directions that M_1 does not gauge-fix are A = Dλ with λ ∈ N(Q′); they satisfy QDλ = D_1Q′λ = 0 [V CMP 99 (3.115)], so they do not change B. But the UNIT-lattice gauge modes B = D_1μ have fine extensions A = Dλ (Q′λ = μ) whose cost is only the gauge-fixing term. The lower bound on such B comes from the axial condition B = 0 on the trees A_x(y) [V CMP 99 (3.156) domain; CMP 96 (2.121)], which is a statement about B's DIRECTION in colour space along paths. The modulus |B| does not satisfy the axial condition's consequences, so any argument that passes to |A| loses the mechanism that gives γ_0 > 0.
4.4 What survives of the brief [P]. ⟨B, (QG_1Q*)^{−1}B⟩ = min{⟨A, M_1A⟩ : QA = B} + a‖B‖² ≥ a‖B‖² when M_1 ≥ 0 on extensions. It is exact but EMPTY for A3: (3.156) subtracts a‖B‖², so it gives only Δ_k ≥ −(J-term). The lower bound on Δ_k needs a lower bound on the minimal energy min{⟨A, M_1A⟩ : QA = B} itself. §5–§6 give that by Balaban's own two-step route, made covariant.

## §5 Step (i), covariant: minimal energy ≥ unit covariant curl energy [P-sketch, inputs tagged]
Notation. Unit units on Λ (L^kη = 1). B in the domain of (3.156). U_1 := the k-fold averaged background on the unit lattice; ∂_1^{U_1} its covariant curl. A_* := the minimizer H_1B, E := ⟨A_*, M_1A_*⟩ = ⟨B, N_1^{−1}B⟩ (CDC §2.2, CDC_VERIFY §2 "better route": needs only G_1 > 0, Q onto).
5.1 Remove the gauge-fixing part exactly [V + P]. (3.119): ⟨A, Δ_πA⟩ = ⟨A′, ΔA′⟩, A′ := A − Dλ, λ := G′RD*A ∈ N(Q′). By (3.115) [V], Q(U)Dλ = D_1Q′λ = 0. So Q(U)A′ = Q(U)A = B: A′ is again an extension of B. No error term. By (3.10) [V p. 392]: ⟨A′, ΔA′⟩ = ‖D_UA′‖² + ⟨A′, Δ′A′⟩, |⟨A′, Δ′A′⟩| ≤ ε_Δ′‖A′‖², ε_Δ′ = O(sup|η^{−2}Im U(∂p)|) = O(Mα_0) [R: (3.35) curvature bound].
 By (3.128) [V] and ‖RD*A‖² ≥ 0: E ≥ ‖D_UA′_*‖² − ε_Δ′‖A′_*‖² − |J-part of M_1 at A_*| ≥ ‖D_UA′_*‖² − ε_3K_A(E + a‖B‖²),
 using ‖A′_*‖² ≤ κ_π‖A_*‖² (κ_π := ‖I − DG′RD*‖², [R] CMP 99 Theorem 3.1 (3.42) G′ bounds), ‖A_*‖² ≤ ‖G_1‖⟨A_*, G_1^{−1}A_*⟩ = ‖G_1‖(E + a‖B‖²) [P], K_A := κ_π‖G_1‖ = c(d, L) [R: CMP 99 bounds on G_1, uniform in k and regular U], ε_3 = O(Mα_0)c(d, L) [R: J = O(Mα_0), CDC_VERIFY §3].
5.2 Covariant Stokes-average inequality [P-sketch]. Claim: for every fine A′ on Λ,
 ‖∂_1^{U_1}Q(U)A′‖² ≤ (1 + δ)c_*‖D_UA′‖² + C_δ ε_Q²‖A′‖², ε_Q = O(Mα_0 + L²α_0)c(d, L).
 Proof sketch. Fix a unit plaquette p. Both sides are sums of |·|² of Ad-covariant quantities, so each p may be treated in its own gauge. Take the regular gauge of (3.35) on a cube of size O(M) containing the O(1)-neighbourhood of p (needs M ≥ c·L, true in Balaban's ordering). There |A_bg| ≤ O(Mα_0) in unit units. Then pointwise: (a) |D_UA′ − ∂A′| ≤ O(Mα_0)|A′| on fine plaquettes (each fine transport is Ad e^{iηA_bg} = 1 + O(ηMα_0), divided by η); (b) Q_k(U)A′ = Q_k(1)A′ + O(Mα_0 + L²α_0)·(positive local average of |A′|) [R: CMP 98 (124)–(125), (139) per step; k-step uniformity = the A18 piece "Q(U) = Q_free(1 + O(α_0))", I]; (c) ∂_1^{U_1} = ∂_1 + O(Mα_0) on unit bonds [R: averaged background stays regular, CMP 98/99]. Then §2.2 at U = 1 for the plaquette p, plus (a+b)² ≤ (1+δ)a² + (1+δ^{−1})b², gives the claim after summing over p with finite overlap.
5.3 Result of step (i) [P from 5.1, 5.2]. With A′_* in 5.2 and ‖A′_*‖² ≤ K_A(E + a‖B‖²):
 (1 + δ)c_*·[E + ε_3K_A(E + a‖B‖²)] ≥ ‖∂_1^{U_1}B‖² − C_δε_Q²K_A(E + a‖B‖²).
 So E(1 + ε_7) ≥ [(1 + δ)c_*]^{−1}‖∂_1^{U_1}B‖² − ε_7a‖B‖², ε_7 := (ε_3 + C_δε_Q²)K_A = O(Mα_0)c(d, L).
 At U = 1 (all ε = 0, δ = 0) this is exactly the lower half of CMP 95 (1.67) with γ_0′ = c_*^{−1} ≥ ¼.

## §6 Step (ii), covariant Lemma 2.4 [P-sketch]
Claim. For B on Λ = B(Λ′) with the axial condition (B = 0 on the trees A_x(y)), B = 0 off Λ, and Q_1(U_1)B = 0:
 ‖∂_1^{U_1}B‖² ≥ (γ_L − ε_6)‖B‖², γ_L := (12d²)^{−1}L^{−d−1}, ε_6 = O(Mα_0 + L²α_0)c(d, L).
Proof sketch. Balaban's proof of (2.128) [V §1] is a sum of LOCAL inequalities: (2.123) on one block B(y) and (2.127) on one corridor B(c), each involving only bonds and plaquettes in a region of diameter ≤ 2L + 2. In each such inequality the left side and the subtracted terms are sums of |B(b)|², which are gauge invariant (Ad orthogonal). The axial condition B(b) = 0 and the constraint Q_1B = 0 are gauge covariant. So each local inequality may be proved in its own gauge. Take the regular gauge of the averaged background on an O(M)-cube containing the region (M ≥ cL). There |∂_1^{U_1}B − ∂_1B| ≤ O(Mα_0)·(sum of |B| on the 4 bonds) and |Q_1(U_1)B − Q_1(1)B| ≤ O(Mα_0 + L²α_0)Q″|B| [R: CMP 98 (139)]. Apply the free local inequality to the gauge-transformed B, then replace free curls and free averages by covariant ones; the errors are ε·(local Σ|B|²). Sum the local inequalities exactly as on p. 245, with finite overlap c(d, L). The Q_1(U_1)B-term is 0 on the domain of (3.156).
Remark [P]. The telescoping (2.123) is even exact covariantly: B(x, x+e_j) equals an Ad-transported sum of covariant plaquette curls along the axial path, because each step's two transverse bonds lie on the tree and vanish. Only the corridor step (2.125) (it uses Q_1) needs the perturbation.

## §7 Assembly, constant, uniformity [P given §5, §6 and the tagged inputs]
7.1 ⟨B, Δ_kB⟩ = E − (J-term of (3.156)) ≥ (1 + ε_7)^{−1}[((1+δ)c_*)^{−1}(γ_L − ε_6) − ε_7a]‖B‖² − c_J‖B‖², c_J = O(Mα_0)c(d, L) [R/I, CDC §5.3].
7.2 Take δ = 1 and α_0 so small (after d, L, M) that ε_6 ≤ γ_L/4, ε_7 ≤ 1/8, ε_7a + c_J ≤ γ_L/(12c_*). Then (with ε_7 ≤ 1/8: (8/9)[(3γ_L)/(8c_*) − ε_7a] − c_J ≥ γ_L/(3c_*) − γ_L/(12c_*))
 ⟨B, Δ_kB⟩ ≥ (4c_*)^{−1}γ_L‖B‖² ≥ γ_L/16·‖B‖², i.e. γ_0 ≥ (192d²)^{−1}L^{−d−1} (c_* ≤ 4 proved; with the observed c_* ≈ 0.7 in d = 2, γ_0 ≈ γ_L/2.8).
7.3 C-step [P, §1.1]: ⟨B̃, C*Δ_kC B̃⟩ ≥ γ_0‖CB̃‖² ≥ γ_0‖B̃‖². So ‖C̃^{(k)}‖ = ‖(C*Δ_kC)^{−1}‖ ≤ γ_0^{−1}, and ‖C^{(k)}‖ = ‖C(C*Δ_kC)^{−1}C*‖ ≤ ‖C‖²γ_0^{−1} ≤ L^{d+1}γ_0^{−1}.
7.4 Free value check [P]. U = 1: γ_0 ≥ c_*^{−1}γ_L, with c_*^{−1} the explicit lower constant of CMP 95 (1.67). The KAPPA_D/SOURCES_Q value "(12d²)^{−1}L^{−d−1}" is γ_L alone and silently sets γ_0′ = 1; the correct free value is γ_0′γ_L with γ_0′ ≥ ¼ (proved) [correction].
7.5 Uniformity [P]. k: c_* is a continuum (Stokes + Cauchy–Schwarz) constant; γ_L has no k; K_A, ε's are uniform in k by the cited CMP 99 bounds [R]. Volume/Λ: every inequality is local, and extra Dirichlet or multiscale constraints only raise the minimum (§2.3). M: M enters only through the hypotheses M ≥ cL and Mα_0·c(d, L) ≤ small; the constant γ_0 = (4c_*)^{−1}γ_L contains no M. This removes the [I] "independence of γ_0 from M" of SOURCES_LOC_VERIFY l. 36 (c), at the cost of the ordering α_0 ≪ 1/(M·c(d, L)), which Balaban already imposes.
7.6 What regularity does [P]. Regularity enters only through the perturbative errors ε_Δ′, ε_3, ε_Q, ε_6, c_J. The argument proves nothing for rough U. Whether A3 holds for all U is not decided here; it is not needed.

## §8 Ledger and STALL record
8.1 Grades.
| item | grade |
| Kato route (brief items 1–5) | REFUTED: Kato fails for the curl even at U = 1 (§4.2 counterexample); M_1's partial gauge fixing makes the Feynman-form substitute invalid for a lower bound (§4.3) |
| "lower bound a‖B‖² on (QG_1Q*)^{−1}" | TRUE but EMPTY: cancelled by −a‖B‖² in (3.156) (§4.4) |
| U = 1 mechanism | [V] two steps: CMP 95 (1.67) lower half + CMP 96 Lemma 2.4 (§1, §2) |
| lower half of (1.67), elementary | [P] c_* ≤ 4 by Stokes + Cauchy–Schwarz; [N] c_* ≤ 0.71 (d = 2, L = 2–5) |
| multiscale / Dirichlet constraints | [P] harmless for LOWER bounds (monotone) |
| gauge-fixing removal | [P] exact via (3.115): A′ = A − DG′RD*A is still an extension of B |
| covariant step (i), step (ii) | [P-sketch] local-gauge perturbation of the free inequalities, errors O(Mα_0 + L²α_0)c(d, L) |
| γ_0 value | γ_0 ≥ (4c_*)^{−1}(12d²)^{−1}L^{−d−1} ≥ (192d²)^{−1}L^{−d−1} for Mα_0 ≤ small(d, L) |
| free value in KAPPA_D/SOURCES_Q | CORRECTED: missing factor γ_0′ = c_*^{−1} ∈ [¼, ~1.4] |
| M-independence (LOC_VERIFY (c)) | [P-sketch] γ_0 has no M; M only in M ≥ cL and smallness of Mα_0 |
| C-step | [P] free for the lower bound: ‖CB̃‖ ≥ ‖B̃‖ |
8.2 Remaining inputs (the STALL points, each named precisely).
 R1. Uniform bounds on ‖G_1‖ and on G′ (κ_π) for regular U, uniform in k: CMP 99 Theorems 3.1–3.3 [R, not re-read here].
 R2. k-step averaging in the local regular gauge: Q_k(U) = Q_k(1) + O(Mα_0 + L²α_0)·(positive local average). This is the A18 piece "Q(U) = Q_free(1 + O(α_0))" [I, already on the ledger]; CMP 98 (139) gives it per step only.
 R3. The averaged unit background U_1 is regular with |A_bg^{(1)}| = O(Mα_0) in a local gauge on O(M)-cubes [R].
 R4. c_J = O(Mα_0)c(d, L) for the J-term of (3.156) (SOURCES_CDC §5.3) [R/I].
 R5. Domain identification: the trees A_x(y) of CMP 99 (3.156) are the axial trees Γ_{y,x} of CMP 96 (2.121), and the constraint Q_1B = 0 uses Q_1(U_1) [R; CMP 99 p. 427–428 text garbled].
 Not covered: the σ-/s-localized operators C*Δ_k(s)C (A18, SOURCES_CDC_VERIFY §5). Step (i) uses only positivity of the dropped terms and the same local errors, so it should extend [I].
8.3 Effect on the trust ledger (proposal, not applied; TRUST_LEDGER.md not edited). A3: "asserted (Balaban), we can prove" → "reduced (Opus, unverified) to R1–R5; R2 = A18 piece; γ_0 = (4c_*)^{−1}(12d²)^{−1}L^{−d−1}, no M". Needs an independent verifier pass (Fable or Opus) on §5.2 and §6 before any regrade.
8.4 Scratch files deleted after the run; the §3 script is reproduced in the appendix (the brief allowed only this one file).

## Appendix: §3 script (d = 2, numpy)
```python
import numpy as np
def run(L, nb):
    n=L*nb; N=n*n
    idx=lambda x,y,m: m*N+(x%n)*n+(y%n)
    C=np.zeros((N,2*N))
    for x in range(n):
        for y in range(n):
            r=x*n+y
            C[r,idx(x,y,0)]+=1; C[r,idx(x+1,y,1)]+=1; C[r,idx(x,y+1,0)]-=1; C[r,idx(x,y,1)]-=1
    M=nb*nb; cid=lambda a,b,m: m*M+(a%nb)*nb+(b%nb)
    Q=np.zeros((2*M,2*N))
    for a in range(nb):
        for b in range(nb):
            for m in range(2):
                for i in range(L):
                    for j in range(L):
                        x,y=a*L+i,b*L+j
                        for s in range(L):
                            Q[cid(a,b,m), idx(x+s*(m==0), y+s*(m==1), m)] += L**-3
    C1=np.zeros((M,2*M))
    for a in range(nb):
        for b in range(nb):
            r=a*nb+b
            C1[r,cid(a,b,0)]+=1; C1[r,cid(a+1,b,1)]+=1; C1[r,cid(a,b+1,0)]-=1; C1[r,cid(a,b,1)]-=1
    # fine norm ||F||^2 = sum curl^2 in d=2 physical units; QA is in physical units
    T=C1@Q@np.linalg.pinv(C)
    return np.linalg.norm(T,2)**2
for L,nb in [(2,3),(3,3),(3,4),(4,3),(5,3)]:
    print(L,nb,run(L,nb))
```
