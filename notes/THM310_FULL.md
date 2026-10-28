# THM310_FULL — paper-grade write-out of CMP 99 Theorem 3.10 (walk expansion of the basic propagator G = G_0)

Date: 2026-10-28. CLOSURE_PLAN top-5 item 2 (third of three); Table 1 row R1, with R36 (M_1 version) and R7 (complex form) for this operator. Companion files: THM37_FULL.md (G′, Thm 3.7 + Cor. 3.8) and THM39_FULL.md (C′ = (Q′G′²Q′*)^{−1}, Thm 3.9). They are cited by name and not repeated.
Status: author write-out, written one section at a time; not yet verified.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [V] read on a page image in this session (CMP 99 pp. 407–416 at 300 dpi; CMP 96 pp. 237–239, 246–247 text); [R-full] printed with a full proof; [R-sketch] printed sketch or proof by reference; [P] proved in this file or in a named project file; [I] reading or construction not proved. Page rule: CMP 99 p. N = pdf page N − 388; CMP 96 p. N = pdf page N − 222.

## Plan
- §1 The printed statement and the printed proof sketch (pp. 409, 413–416), verbatim where it matters.
- §2 Which operator: G of CMP 99 Sect. C = G_0 of WG_FULL. What A3's γ_0 is and is not. What the chain uses.
- §3 Setting, conventions, and the inputs T1–T8 with IDs and tags.
- §4 Lemma A: the commutator formulas (3.100)–(3.104), with bounds.
- §5 Lemma B: the parametrix identity (3.105), proved.
- §6 Lemma D: the error terms. Commutator O(M_1^{−1}); separation e^{−λδ s M_1}; domain change; the p. 415 cancellation in full.
- §7 Lemma C′ (concatenation with a separation reserve) and the walk structure: merged junction domains, (L1), (L2), (B2).
- §8 The Neumann series (3.106) and the per-walk bound (3.108): constants, thresholds, convergence, identification.
- §9 The norm rows of (3.42)–(3.47) that the chain uses; the Combes–Thomas alternative route (remark).
- §10 The M_1 version (R36).
- §11 The complex form on 𝒰(α) (R7).
- §12 Ledger: [R-full], [R-sketch], [P], [I]; steps sharper than Balaban; the rate and #48.

## 1. The printed statement and the printed sketch [V: CMP 99 pp. 407–416, page images at 300 dpi, read 2026-10-28]

1.1 The operator. Sect. C of CMP 99 uses three propagators in a regular background U: G′, C′ := (Q′G′²Q′*)^{−1}, and "the basic operator G" (p. 413 [V]: "Finally we consider the basic operator G. We have to calculate the composition Δ_aG_0"). G is the inverse of
 Δ_a := Δ + DRD* + Q*aQ on 1-forms in Ω_0 (Dirichlet), R = I − P, P = G′Q′*C′Q′G′ [V p. 414: "DRD* = DD* − DPD*"; p. 415: "P = G′Q′*(Q′G′²Q′*)^{−1}Q′G′"].
WG_FULL 0.1 calls this operator G_0 [V p. 421: "Let us denote for a moment the operator we have investigated in previous sections by G_0, i.e. G_0 = (Δ + DRD* + Q*aQ)^{−1}"]. In this file "G" is Balaban's G of Sect. C, i.e. WG_FULL's G_0, unless stated otherwise. Balaban's own approximation Σ h_□G_□h_□ is also called G_0 on p. 409; to avoid the clash we write it 𝒢_0 (§3).

1.2 The localized operators [V pp. 408–409]. For □ ∈ 𝒟 the sequence {Ω_n(□)} is built as for G′ (THM37_FULL 1.4). G_□(U) is "G(U) constructed for this sequence": G_□ = Δ_{a,□}^{−1}, where Δ_{a,□} := Δ + DR_□D* + Q*aQ for the sequence {Ω_n(□)}, R_□ = I − P_□, P_□ = G′_□Q′*C_□Q′G′_□ with C_□ := (Q′G′_□²Q′*)^{−1}. p. 409: "The operators constructed for this sequence, which we denote by G′_□(U), C_□(U) = (Q′(U)G′_□²(U)Q′*(U))^{−1}, G_□(U), satisfy all the inequalities of Theorems 3.1–3.3 correspondingly. This is the basis of all estimates for the expansions we will construct. The arguments will be almost identical to those in [4], so we will sketch them rather briefly." Then (3.87): G_0 = Σ_{□∈𝒟} h_□G_□h_□.

1.3 The commutator formulas [V pp. 413–414].
 (3.100) (D_μhA_ν)(x) = h(x)(D_μA_ν)(x) + (∂_μh)(x)R(U(x, x + ηe_μ))A_ν(x + ηe_μ); "similarly for adjoint derivatives, hence the commutators [D*D, h] and [DD*, h] are first order differential operators with coefficients determined by derivatives of the function h. They are of the order O(M^{−1}), or O(M^{−2}), if considered on a proper scale. The operator Δ′ is small and local by (3.10), hence the commutator [Δ′, h] gives the factor O(M^{−1}) too."
 (3.101) (DPD*hA)_μ(x) = h(x)(DPD*A)_μ(x) + Σ_{ν,x′} η^d(DPD*)_{μν}(x, x′)(∂h)(Γ_{x′x})A_ν(x′) = h(x)(DPD*A)_μ(x) + (P_1(∂h)A)_μ(x). "The operator P_1(∂h) satisfies the inequalities (3.49) with the additional small factor O(M^{−1}) coming from an estimate of the expression (∂h)(Γ_{xx′}) together with the exponential decay of DPD*."
 (3.102) (Q_jhA)(c) = h(c_−)(Q_jA)(c) + (S_j(∂h)A)(c).
 (3.103) (Q*aQhA)(b) = h(b_−)(Q*aQA)(b) − (S*(∂h)aQA)(b) + (Q*aS(∂h)A)(b).
 (3.104) Δ_ahA = hΔ_a − K(h)A − P_1(∂h)A, "where K(h) is a sum of a first order differential operator and the last two terms on the right-hand side of (3.103)."

1.4 The parametrix identity [V p. 414, image]:
 Δ_aG_0 = I − Σ_□K(h_□)G_□h_□ − Σ_□(1 − ζ_□̃)DPD*h_□G_□h_□ − Σ_□ζ_□̃(DPD* − DP_□D*)h_□G_□h_□ − Σ_□ζ_□̃P_{□,1}(∂h_□)G_□h_□ = I − R, (3.105)
"where the function ζ_□̃ is defined similarly to h_□, i.e. ζ_□̃ ∈ C_0^∞(□̃) and ζ_□̃ = 1 on a cube containing □, whose boundary is in a distance ≥ ⅔M to the boundary of □. This implies that supp h_□ is separated from supp(1 − ζ_□̃) by a distance ≥ M." "R satisfies the bound (3.85) with O(M^{−1}) instead of O(α_1). For M sufficiently large this implies
 G = G_0(I − R)^{−1} = Σ_{n=0}^∞ G_0R^n." (3.106)

1.5 The treatment of P [V p. 415]. "We proceed in a similar way as for the expansion (3.96), we replace the operator P by its random walk expansion. … We fix a cube □ in the sums in (3.105), and for this cube we construct the same partition 𝒟′ as for terms in (3.95)." The partition 𝒟′ is that of p. 411 [V]: □ is replaced by □_0 := □̃^2 (or □̃_1^2 near a coarser level) and all cubes meeting □̃ (resp. □̃_1) are removed; p. 412 [V]: "by the construction of the partition 𝒟′ we have h′_{□_0} = 1 on □̃". Then: "The term in the second sum gives rise to small terms in the expansion because of the overall exponential factor and the fact that localizations introduced by 1 − ζ_□̃ and h_□ are separated by a distance ≥ M. … The expansion of the term in the third sum gives also small terms, except the following one:
 ζ_□̃Dh′_{□_0}G′_{□_0}h′_{□_0}Q′*h′_{□_0}C_{□_0}h′_{□_0}Q′h′_{□_0}G′_{□_0}h′_{□_0}D*h_□G_□h_□.
We transform this expression in several steps. At first we replace each function h′_{□_0} by ζ_□̃, terms with the difference h′_{□_0} − ζ_□̃ are small again because localizations are separated by a distance ≥ M. Next we replace the operators G′_{□_0} and C_{□_0} by G′_□, C_□, terms with the differences G′_{□_0} − G′_□ and C_{□_0} − C_□ are small by the same reason as before. We get the expression ζ_□̃DG′_□ζ_□̃Q′*ζ_□̃C_□ζ_□̃Q′ζ_□̃G′_□D*h_□G_□h_□. Now we move the functions ζ_□̃, except the first one, to the right. Terms with commutators like [ζ_□̃, C_□], [ζ_□̃, G′_□], etc. are small. Using the fact that ζ_□̃h_□ = h_□ we get the following expression without small factors ζ_□̃DG′_□Q′*C_□Q′G′_□D*h_□G_□h_□ = ζ_□̃DP_□D*h_□G_□h_□. This expression cancels the second term in the third sum."
 The "same reason as before" is p. 412 [V]: "We have proved in [2] that if we have a difference of propagators defined on two domains, then in an estimate of this difference we have, besides the usual factors …, an exponential factor with a distance between localizations and a closest point where a change was made. Such inequalities were proved using only the random walk expansions … the differences □̃Q′(G′²_{□_0} − G′²_□)Q′*□ can be estimated by the usual factors multiplied by e^{−2δ_0M}."

1.6 Theorem 3.10 [V pp. 415–416, verbatim]. "Theorem 3.10. For M sufficiently large, and a configuration U satisfying (3.95), the operator G has the expansion
 G = Σ_ω R_0(X_0)R_{α_1}(X_1)···R_{α_n}(X_n), (3.107)
the sum is over walks ω = ((0, X_0), (α_1, X_1), …, (α_n, X_n)) satisfying X_{i−1} ∩ X_i ≠ ∅, i = 1, …, n. A term in this expansion, corresponding to a walk ω, depends on configuration U restricted to X̃_0^5 ∪ X̃_1^5 ∪ … ∪ X̃_n^5, satisfies the inequality
 |(R_0(X_0)R_{α_1}(X_1)···R_{α_n}(X_n)J)(x)| ≤ O(1)(L^jη)²O(M^{−1/2})^{|ω|}M^{−½|ω|}e^{−(1/2)δ_0d(ω,y,y′)}|J|, x ∈ Δ(y), y ∈ Λ_j, supp J ⊂ Δ(y′), (3.108)
and the corresponding inequalities for norms on the left-hand sides of (3.42)–(3.47). The constant O(1) depends on d and L only. From (3.108) it follows that the expansion (3.107) is convergent in all norms in the inequalities (3.42)–(3.47). This implies Theorem 3.3."
 Readings. (a) "(3.95)" is a misprint for (3.35) (WG_FULL (I1)); (3.95) is an operator identity. (b) Mα_0 small is needed (Cor. 3.6 needs O(1)Mα_0 ≤ a_1, p. 408), as for Thm 3.7 (THM37_FULL 1.6 note). (c) The factors R_α(X): p. 415 [V]: "The factors in these expansions are very similar to the factors R′_α(□) in (3.98), we have only few possibilities more, like the operators K(h_□)G_□h_□, ζ_□̃Dh′_{□_0}G′_{□_0}h′_{□_0}Q′*, etc."; for (3.98) p. 413 [V]: a domain X "is a union of a connected, finite family of cubes from 𝒟 … We consider only very small families, containing several cubes. A biggest is connected with operators localized in □̃_0, which is a sum of 5^d cubes"; "it depends on U restricted to X̃^5, and satisfies a bound of the type (3.89) … It is difficult to make the last statement more precise. Instead we will write a bound for a whole term." So no single-factor bound is printed. (d) The rate in (3.108) is ½δ_0, with δ_0 unvalued; CMP 116 (1.7) prints δ_0 for the same object (SOURCES_BOOKKEEPING_VERIFY §7).
 Extent of the printed proof: pp. 413–416, about 2 pages, of which the error analysis of R is about one page of prose, with no displayed estimate except the definitions.

## 2. Which operator, which lower bound, and what the chain uses

2.1 The operator [V, §1.1]. The operator of Thm 3.10 is G = Δ_a^{−1}, Δ_a = Δ + DRD* + Q*aQ = Δ_loc − DPD*, with the local part
 Δ_loc := D*D + Δ′ + DD* + Q*aQ (Δ = D*D + Δ′ by CMP 99 (3.10) [V, via SOURCES_A3_GAMMA0_FULL 0.4]).
It is the gauge-field propagator with the averaging term Q*aQ and the gauge-fixing term DRD*, at a single RG step, in the multiscale domain sequence {Ω_j}. It is WG_FULL's G_0, the base of the Neumann series G_WG = Σ_n G_0(Δ′_πG_0)^n (WG_FULL 1.1, (3.130)). It is not WG_FULL's G (that one has Δ_π in place of Δ) and not G_1.

2.2 A3's γ_0 is not a lower bound for Δ_a [P by comparison of definitions]. SOURCES_A3_GAMMA0_FULL 0.6 proves ⟨B̃, C*Δ_kCB̃⟩ ≥ γ_0‖B̃‖², where Δ_k (3.156) is built from (QG_1Q*)^{−1}, i.e. from the next-step operator G_1 and the averaging Q, on unit-lattice fields B with Q_1B = 0 and axial conditions. Δ_a acts on fine 1-forms in Ω_0, contains no G_1, and has no axial constraint. So A3's γ_0 does not bound Δ_a, and it is not an input of Theorem 3.10. The only common piece is the Stokes/axial inequality of CMP 96 Lemma 2.4 (A3 Lemmas 3–4), which at U = 1 also underlies CMP 96's local lower bounds (2.110), (2.128) [V text CMP 96 pp. 242, 246].
 Where the lower bound actually enters. The proof below needs no global lower bound for Δ_a. Invertibility of Δ_a is an output (finite-volume right inverse, §8). Positivity enters only locally, through input T1: each local operator Δ_{a,□} is invertible with the bounds (3.42)–(3.47) (Cor. 3.6). At U = 1 these rest on CMP 96 Prop. 2.5 [R-full], whose proof uses the U = 1 lower bounds (2.110) (γ_0′, "in fact we may get γ_0′ = π²/L²") and (2.128) (γ_0″ for the form (2.120)/(2.122)); Cor. 3.6 transfers them to regular U by (3.84)–(3.86) and a gauge transformation [R-sketch]. A global bound Re⟨u, Δ̂_au⟩ ≥ c‖u‖² is only needed in the alternative Combes–Thomas route of §9.3, and there it reduces to T1 by IMS localization.

2.3 What the chain uses [CLOSURE_PLAN Table 1 R1; WG_FULL (I1), 0.5; A1_WALK_FULL (H1) via WG-G].
 (U1) The identity (3.107) with walks on the M_1-cover (R36).
 (U2) The per-walk bound (3.108) for the sup kernel, for kernels with one covariant derivative on either side, and for the L² block norms of the (3.46) list. The pointwise mixed bound (3.44), the Hölder rows (3.43)–(3.45), and the Laplace row of (3.42) are not used (WG_FULL 0.2, 0.5).
 (U3) Locality (L2): a term depends on U only on ∪X̃_i^5; support (L1) in X_0 × X_n with the ⅓M_1 band after enlargement (WG_FULL 0.4).
 (U4) The count (B2), and the step factor ρ = c_0/M_1 with C_𝒟ρ ≤ ¼.
 (U5) A fixed rate δ, set before M_1. WG_FULL takes δ = ½δ_0; any fixed rate is enough (SOURCES_BOOKKEEPING_VERIFY #48).
 (U6) The complex form on 𝒰(b⁗) (R7; WC_FULL 6.4, A1_WALK_FULL 8.4 level 4).
 (U7) Uniformity in U, j, k, η, {Ω_j}, and the volume.

## 3. Setting, conventions, and inputs

3.1 Conventions [THM37_FULL 3.1]. ξ_n := L^nη. For x in a block of level n, Δ(y(x)) is its block. 𝔅 = ∪_nΛ_n is the set of blocks, with the CMP 96 metric d (2.46). Block norms of an operator T: N_∞(T; y, y′) (sup→sup on Δ(y)TΔ(y′)) and N_2(T; y, y′) (L² operator norm of Δ(y)TΔ(y′), the norm of (3.46)). Lemma N (composition), THM37_FULL 3.1: N(AB; y, y′) ≤ Σ_zN(A; y, z)N(B; z, y′). We write N for either norm. Functions are g-valued 1-forms on bonds of Ω_0 (for G) or g-valued functions on points (for G′). The μ-weighted kernels of WG_FULL 0.2 (m(y, y′), S-rescaling) are obtained from N by the bookkeeping C0 [I, WG_FULL 0.2]; we do not redo it. Scale conversion [P, THM39_FULL 2.1]: for y ∈ Λ_j, y′ ∈ Λ_{j′}, p real, (ξ_j/ξ_{j′})^p ≤ L^{|p|}e^{|p|θ_Ld(y,y′)}, θ_L := log L/(RM).
 Walks of domains, |ω|, and the path distance d(ω, y, y′) are as in WG_FULL 0.3 ((3.93)). We use: (D1) d(ω, y, y′) ≥ d(y, y′); (D2) d(ω, y, y′) ≥ d(y, X_i) + d(X_i, y′) for every domain X_i of ω (both by the triangle inequality).

3.2 Hypotheses (as THM37_FULL 3.2, with the gauge-field operator in place of Δ′_a).
 (H1) U is G-valued and satisfies (3.35) with O(1)Mα_0 ≤ a_1 (Cor. 3.6). (3.36) is not used for Thm 3.10 (it is used for Δ′_π in WG_FULL).
 (H2) RM satisfies CMP 96 (2.59) at every rate α used below. We use the form ¼αδ_0RM > 2d log c_0(½α) + 1, as read on the page image by THM37_FULL (H2); WG_FULL (I4) prints ½αδ_0RM, which the coordinator reports as a misquote. Only "RM large after α" is used, so the factor does not matter here.
 (H3) M_1 (the walk cube size, CMP 116 notation) is a power of L, M_1 ≤ M, and M_1 ≥ M_310 (8.3). In the CMP 99 setting M_1 = M.
 (H-PU) [THM37_FULL 3.2 (a)–(e) and the repair of 3.4, ledger X-PU]. The cover 𝒟 by cubes of side 2M_1ξ_j and h_□ with supp h_□ ⊂ □, margin ⅓M_1ξ_j (⅓M_1ξ_j/L on interface faces), Σ_□h_□² = 1 on Ω_0, |∂h_□| ≤ c_hL/(M_1ξ_n), |Δh_□| ≤ c_hL²/(M_1ξ_n)², counts C_pt ≤ C_𝒟^in ≤ 3(2L + 2)^d. The proof below uses Σh_□² = 1 (Lemma B) and the Lipschitz bound (Lemma A). So it uses the repaired family, and it carries the factor L of the repair: every commutator constant below contains c_hL (or c_hL²), exactly as K_1 of THM37_FULL 4.5.
 (I-Ω0) [I, THM37_FULL 3.2]: for □ meeting ∂Ω_0 the local operators are the Dirichlet operators on Ω_0(□) ∩ Ω_0.

3.3 Inputs (IDs used in the ledger §12).
 T310-R1 [R-sketch: CMP 99 Cor. 3.6, p. 408, from Cor. 3.5, Thm 3.4 (3.84)–(3.86), and CMP 96 Props. 2.5–2.7 (U = 1) [R-full]]. For every □ ∈ 𝒟 and for every admissible local sequence whose Ω_0 lies in one (3.35)-cube: G_□, G′_□, C_□ exist and obey Thms 3.1–3.3 with constants (B_0, δ_0) of d, L only. In block form, for y ∈ Λ_n:
 N(G_□; y, y′), N(∇G_□; y, y′), N(G_□∇*; y, y′) ≤ B_0[ξ_n², ξ_n, ξ_n]e^{−δ_0d(y,y′)}, and N_2(∇G_□∇*), N_2(∇∇G_□), N_2(G_□∇*∇*) ≤ B_0e^{−δ_0d}; (3.3.1)
 and the (3.49) form for the local projection, with y ∈ Λ_n, y′ ∈ Λ_{n′}:
 N(DP_□D*; y, y′) ≤ B_0ξ_n^{−1}ξ_{n′}^{−1}e^{−δ_0d(y,y′)}, N(P_□D*; y, y′) ≤ B_0ξ_{n′}^{−1}e^{−δ_0d}, N(DP_□; y, y′) ≤ B_0ξ_n^{−1}e^{−δ_0d}. (3.3.2)
 (3.49) is printed on p. 399 [V] as a consequence of Thms 3.1–3.2 "using again Lemma 2.1"; for the local sequences it follows from Cor. 3.6 the same way. The cube geometry "□̃^5 lies in one (3.35)-cube" is [I-geo] as in THM37_FULL 3.3; for the merged cube □_0 of 1.5 we need (□_0)~^5 = □̃^8 inside one cube, i.e. the (3.35) constant O(1) ≥ 20 instead of Balaban's 12 (p. 409) [I; harmless, O(1) is free in (3.35), "O(1) ≥ 10"].
 T310-P2 [P given its inputs: THM37_FULL Theorem T37, T37-M1, T37^c]. G′ for any admissible sequence and any cover with (H-PU) at a cube size M′ ≥ M_37: walk expansion with per-walk bound B_0ξ²(K_1c_1(θ)/M′)^{|ω|}e^{−(1−θ)δ_0d(ω)}, terms supported in □_0 × □_n, U-dependence in ∪□̃_i^5. Rate δ_37 := (1−θ)δ_0. Right derivatives in N_∞ use the transposed expansion (THM37_FULL 6.2).
 T310-P3 [P given its inputs: THM39_FULL Theorem 3.9-W, §6, §7]. C′ for any admissible sequence and cover, at cube size M′ ≥ M_W: walk expansion with per-walk bound (4/γ_N)(c_1ρ)^{|ω|}·(scale factors of (3.99))·e^{−δ_39d(ω)}, ρ ≤ K_W/M′, δ_39 := ½ε − |2 − d/2|θ_L > 0, and the sum (3.48) at rate δ_39.
 T310-R4 [R-full: CMP 96 Lemma 2.1, (2.61)–(2.62), under (H2)]. sup_yΣ_{y′}e^{−αδd(y,y′)} ≤ c_1(α) for the rates used.
 T310-P5 [P: Lemma AG′, §5.1]. The local parts of Δ_a and Δ_{a,□} agree at points of □.
 T310-I6 [I-geo; Balaban p. 411, 414]. Geometry of ζ_□ and 𝒟′_□ with explicit margins (§6.0).
 T310-I7 [I; sequence-locality]. For a cube □′ of a cover at size M′, the local sequence {Ω_n(□′)} and the local operators G′_{□′}, C_{□′}, and the A1-W factors of THM39 are determined by the level structure of {Ω_j}, by Ω_0, and by U, all restricted to (□′)~^5 (resp. X̃^5). This is the reading behind THM37_FULL Lemma S(iv) and THM39_FULL (iii) for U; here it is used also for the sequence data.
 T310-I8 [I, C0]: conversion of block norms to the μ-weighted kernels of WG_FULL 0.2.
 Common rate. δ_* := min{(1 − θ)δ_0, δ_39}. With the printed inputs ((3.94), (3.99) at ½δ_0) δ_* = ½δ_0. With THM39's proved rate, δ_* = δ_39 < ½δ_0 (since ε ≤ ½δ_G).
