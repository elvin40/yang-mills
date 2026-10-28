IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
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

## 3. Π1 curl of a gradient: (3.3)–(3.8) images (pdf 3–4) [V + P]
(3.7) confirms the reading of §2: the quadratic term is ½Σ_p η^d[tr(D^ηA)(p)² Re U(∂p) + commutator·η^{−2}Im U(∂p)], so (3.10)'s first Δ′ term is η^d tr(DA)²(Re U(∂p) − 1). |Re U − 1| ≤ |U(∂p) − 1| ≤ O(Mα_0)(η/ℓ)². D^1 = η·D^η. [V]
Derivation on p = (x,y,z,w), positive bonds x→y, y→z, x→w, w→z, (3.4) with (3.5) and (Dλ)(x,x′) = η^{−1}(R(U(x,x′))λ(x′) − λ(x)) (adjoint of (3.8), checked):
 η²(DDλ)(p) = [R_{xy}λ_y − λ_x] + R_{xy}[R_{yz}λ_z − λ_y] − R_{xw}[R_{wz}λ_z − λ_w] − [R_{xw}λ_w − λ_x]
            = (R(U_{xy}U_{yz}) − R(U_{xw}U_{wz}))λ_z = R(U_{xw}U_{wz})(Ad U(∂p) − 1)λ_z.
So |(DDλ)(p)| = η^{−2}|(Ad U(∂p) − 1)λ(z)| ≤ 2η^{−2}|U(∂p) − 1||λ(z)|. CONFIRMED (exact; base corner x, the remainder sits at z). Caveat: (3.5) A(x,x′) = −A(x′,x) holds for Dλ only on the positive-orientation definition; the identity is stated for D on positively oriented bonds. This is Balaban's convention.
Sum: each site is the far corner of d(d−1)/2 positive plaquettes, so c_d = √(d(d−1)/2) suffices (author's √(d(d−1)) is safe).

## 4. Theorem 3.1 (3.46), CMP 99 p. 398 image (pdf 10), statement p. 397 text [V]
- (3.46): ‖hG′λ‖, ‖h∇_UG′λ‖, ‖hG′∇*λ‖, ‖h∇∇G′λ‖, ‖h∇G′∇*λ‖, ‖hG′∇*∇*λ‖ ≤ B_0[(L^jη)², L^jη, L^jη, 1, 1, 1]|h|e^{−δ_0d(y,y′)}‖λ‖, supp h ⊂ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′). L² in, L² out, sup |h|, no derivative on the input in the first two entries. CONFIRMED.
- Statement head: "the operator G′(U) (a = 1) satisfies ...", constants M_1, δ_0, a_0, B_0 depend on d, L only; p. 399: constants do not depend on {Ω_j}. Theorem 3.3 also "(a = 1)". So [I-a1] is a real restriction, CONFIRMED as flagged.
- Remark p. 398: powers of L^jη may be redistributed between y and y′ via Lemma 2.1. Not needed here.
- Π3 Schur redone [P]: f = RD*A, f_{y′} = 1_{Δ(y′)}f. With h = ℓ_y^{−2}1_{Δ(y)}: ‖1_{Δ(y)}ℓ^{−2}λ‖ ≤ Σ_{y′}B_0e^{−δ_0d}‖f_{y′}‖. Square-sum over y (blocks disjoint, ℓ constant per block): ‖ℓ^{−2}λ‖ ≤ B_0·(sup_y Σ_{y′}e^{−δ_0d})^{1/2}(sup_{y′}Σ_y e^{−δ_0d})^{1/2}‖f‖ ≤ B_0c_1(1/2)‖f‖, since e^{−δ_0d} ≤ e^{−½δ_0d} and d symmetric. ‖f‖ ≤ ‖D*A‖ since 0 ≤ R ≤ I. Same for ‖ℓ^{−1}Dλ‖ with h = ℓ_y^{−1}1_{Δ(y)} (bonds assigned to the block of their base point). Constant B_0c_1 CONFIRMED.
- Sharp input cut-off costs nothing here: CONFIRMED (λ enters only through ‖λ‖).

## 5. (3.115)–(3.120), CMP 99 pp. 418–419 images (pdf 30–31) [V]
- (3.119) printed exactly: ⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩. CONFIRMED.
- What Δ is: Δ = Δ^η(U) of (3.10), the bare quadratic form of the Wilson action, Δ = D*D + Δ′. It has NO gauge-fixing term. The gauge fixing DRD* enters G^{−1} separately (see §6).
- Rederivation [P]: (3.118) e^{−½⟨A,Δ_πA⟩} = |det(Δ↾N(Q′))|∫dλ δ(Q′λ)δ_R(RD*A − Δλ)e^{−½⟨A−Dλ,Δ(A−Dλ)⟩}. The delta functions force λ ∈ N(Q′), Δ_Uλ = RD*A. Unique solution λ_0 = G′RD*A (§1: (Δ_U + Q′*aQ′)λ_0 = Δ_Uλ_0). The Jacobian of λ ↦ Δλ on N(Q′) cancels the det prefactor. So ⟨A,Δ_πA⟩ = ⟨Ã,ΔÃ⟩, Ã = A − Dλ_0. Check: RD*Ã = RD*A − RΔ_Uλ_0 = RD*A − Δ_Uλ_0 = 0 (Δ_Uλ_0 ∈ range R). So Ã is the gauge transform of A into {RD*A = 0}, as the text says. CONFIRMED.
- (3.120) defines Δ′_π by ⟨A,Δ_πA⟩ = ⟨A,ΔA⟩ − ⟨A,Δ′_πA⟩ (printed sign: MINUS). SOURCES_S2_FORM §1 writes "+". Harmless for absolute-value bounds; note it for the series (3.130).
- Second identity (3.117) is the expansion Balaban uses; route Π uses (3.119) directly. Both give the same Δ′_π (exact).

## 6. (3.122), (3.131), (3.135): CMP 99 pp. 420, 422 images (pdf 32, 34) [V]
- p. 420: "G^{−1} defined as G^{−1} = Δ_π + DRD* + Q*aQ". CONFIRMED. ⟨A,DRD*A⟩ = ‖RD*A‖² ≤ ‖D*A‖².
- (3.131) as quoted in S2_FORM §1: CONFIRMED (L¹ on A_1, |·| on A_2, one block each, e^{−½δ_0d}).
- (3.135) printed: Δ^{(2)}_π = Δ^{(2)} − DRG′D*Δ^{(2)} − Δ^{(2)}DG′RD* + DRG′D*Δ^{(2)}DG′RD*. This is (I − DG′RD*)*Δ^{(2)}(I − DG′RD*), so ⟨A,Δ^{(2)}_πA⟩ = ⟨Ã,Δ^{(2)}Ã⟩ with the SAME Ã as (3.119) [P, algebra]. So the route-Π structure applies to the G_1 clause verbatim. Only a form bound for Δ^{(2)} itself is needed (see §8).
- 4.1 redone with the corrected Δ′ (§2) and sign (3.120) [P]: ⟨A,Δ′_πA⟩ = ⟨A,ΔA⟩ − ⟨Ã,ΔÃ⟩ = (‖DA‖² − ‖DÃ‖²) + (q_R(A) − q_R(Ã)) + (q_I(A) − q_I(Ã)), q_R = Re-term, q_I = commutator term.
  First bracket ≤ κε(‖DA‖² + ‖D*A‖²) + κ²ε²‖D*A‖² (as author). q_I bracket ≤ κ′ε(1 + 2B_0²c_1²)(‖D*A‖² + ‖ℓ^{−1}A‖²) (as author; polarization valid for symmetric forms). NEW q_R bracket: |q_R(B)| ≤ c_Rε‖DB‖², and ‖DÃ‖ ≤ ‖DA‖ + κε‖D*A‖, so ≤ 2c_Rε(1 + κ²a_0²)(‖DA‖² + ‖D*A‖²).
  Result unchanged in form: |⟨A,Δ′_πA⟩| ≤ C′_Π ε(‖DA‖² + ‖D*A‖² + ‖ℓ^{−1}A‖²), C′_Π = C_Π + 2c_R(1 + κ²a_0²). CORRECTED (constant only).

## 7. Other printed inputs [V]
- (3.16) p. 393 image: ⟨A,Q*aQA⟩ = Σ_j a Σ_{b∈Λ_j}(L^jη)^{d−2}|(Q_j(U)A)(b)|². One constant a (the a_j recursion is only for Q′, (3.24)). So a‖QA‖² = a‖B‖²_S exactly. [I-a] RESOLVED; the (9/4)a term in K stands, no a_max needed.
- (3.35) p. 396 text: local gauge on each regularity cube, |A| < O(1)Mα_0(L^jη)^{−1}, |∂A| < O(1)Mα_0(L^jη)^{−2}. This gives |U(∂p) − 1| ≤ O(1)Mα_0(η/ℓ)²(1 + O(Mα_0)). Consistent with S2_FORM §3.
- CMP 96 Lemma 2.1 p. 234 image: (2.61) sup_{y∈𝔅}Σ_{y′∈𝔅}e^{−αδ_0d(y,y′)} ≤ c_1(α), c_1(α) = 12c_0^d(α/2), under (2.59). Sum over all layers. CONFIRMED.
- Sign check from (3.138): G_1^{−1} = G_0^{−1} − Δ′_π − Δ^{(2)}_π, so G^{−1} = G_0^{−1} − Δ′_π (consistent with (3.120) minus sign) and G_1^{−1} = G^{−1} − Δ^{(2)}_π.

## 8. 4.2–4.3, c_−, and the G_1 clause [P]
- 4.2: G^{−1} = D*D + Δ′ − Δ′_π + DRD* + Q*aQ. With §2 (Δ′ ≤ c_Rε‖DA‖² + κ′ε‖ℓ^{−1}A‖²) and §6: ⟨A,G^{−1}A⟩ ≤ (1 + O(ε))(‖DA‖² + ‖D*A‖²) + O(ε)‖ℓ^{−1}A‖² + a‖QA‖²_S. CONFIRMED in form; constants as in §6.
- Effect on c_−: (C) needs an UPPER bound on ⟨A,G^{−1}A⟩ for one feasible A. The extra O(ε)‖ℓ^{−1}A‖² adds O(ε)K_abs to K (QE_INV route) or O(ε)·ℓ^{d−2}|B|² per bump (A1_KERNEL §8 bump: ‖ℓ^{−1}ψ‖² ~ ℓ^{d−2}, same order as the bump energy). So K_ext → K_ext(1 + O(ε)) and c_− = 1/K_ext drops by a factor 1 − O(ε). No qualitative change. Lower bounds on G^{−1} are not used in (C).
- 4.3 constants: curl ≤ 2‖∇A‖², div ≤ d‖∇A‖², so (2 + d)K_∇ suffices; (4 + d) is safe.
- G_1 clause. (K) for G_1 does not need it: Theorem 3.12 (p. 423 image) gives Thm 3.3 for G_1 directly. (C) for G_1 DOES need it: G_1^{−1} = G^{−1} − Δ^{(2)}_π, so an upper bound needs |⟨A,Δ^{(2)}_πA⟩| small. Closure sketch: (3.135) ⇒ ⟨A,Δ^{(2)}_πA⟩ = ⟨Ã,Δ^{(2)}Ã⟩ (§6). (3.137) |(Δ^{(2)}A)(b)| ≤ O(1)Mα_0ℓ^{−2} sup_{nearby j-blocks}|A|; Δ^{(2)} is linear and symmetric (defined by the quadratic form (3.134)). A local sup→pointwise bound gives row sums Σ_{b′}‖K(b,b′)‖ ≤ O(ε)ℓ(b)^{−2} (up to dim g); symmetry gives the same column sums; Schur ⇒ |⟨B,Δ^{(2)}B⟩| ≤ O(ε)‖ℓ^{−1}B‖² (interface factor L²). With ‖ℓ^{−1}Ã‖ ≤ ‖ℓ^{−1}A‖ + B_0c_1‖D*A‖: |⟨A,Δ^{(2)}_πA⟩| ≤ O(ε)(‖D*A‖² + ‖ℓ^{−1}A‖²). [P-sketch; I: kernel of Δ^{(2)} is local with the support stated after (3.137), and symmetric w.r.t. the η^d product.] So the gap is real but closes by the same route at the sketch level.

## 9. Grades
(1) (3.131) one-block form; sharp cut costs η^{−1} on the sup side only; planned route stalls: CONFIRMED.
(2) Route Π: CORRECTED. (3.119) printed and rederived (Δ = D*D + Δ′ of (3.10), no gauge fixing; λ = G′RD*A = λ_0); curl of gradient = η^{−2}R(·)(Ad U(∂p) − 1)λ(z) exact; R orthogonal projection printed; (3.46) block L² bounds with no input derivative, a = 1; Schur constant B_0c_1(1/2) correct. Correction: (3.10) Δ′ has a second term η^d tr(DA)²(Re U(∂p) − 1), omitted in Π2; it is O(Mα_0)‖DA‖², not ℓ^{−2}-type. Also (3.120) has a minus sign.
(3) Form bound for all A and the G^{−1} operator inequality: CORRECTED (constant only, C′_Π = C_Π + 2c_R(1 + κ²a_0²)). K(d, L, a) uniform; no circularity (uses Thm 3.1 for G′ only): CONFIRMED. The ℓ^{−2} term changes c_− by a factor 1 − O(Mα_0) only.
(4) S2 closed given (KE′), printed statements, Lemma 2.1: CONFIRMED for G. [I-a] resolved by (3.16) (one constant a, ℓ^{d−2} weights). [I-a1] (a = 1 in Thms 3.1/3.3) stands. G_1 analogue: needed for (C) of G_1 (not for (K)); (3.135) has the same Ã structure, so it closes at P-sketch level from (3.137) + symmetry + Schur.
Status: S2 CLOSED for G (conditional on (KE′), QE_INV 5.1/5.3, a = 1, [I-geom]). G_1 clause: P-sketch, one [I] on the kernel of Δ^{(2)}.


Erratum (2026-10-28): [I-c] (QE_INV 5.3) is FALSE on the periodic lattice — every single-valued axial path rule has a seam carrying the Polyakov loop, with energy defect growing linearly in N (numerics/c_verify_seam.py). Lemma T of SOURCES_C_CONDITION (cut-off χ(d/D_0), D_0(d, L)) repairs it under side > c_T(d, L), implied by (Vol). Verified in SOURCES_C_CONDITION_VERIFY.
