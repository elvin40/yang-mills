IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_A3_GAMMA0_FULL_VERIFY — independent check of SOURCES_A3_GAMMA0_FULL.md

Status: complete 2026-10-28 (Opus verifier). Part 1 CONFIRMED (slab claim false for L ≥ 10); (2.127) threshold CORRECTED; Part 2 CONFIRMED with two constant/argument corrections (§4(6), §5).
Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Order: Part 1 (claimed error in CMP 96 (2.126)–(2.127)) first, then Part 2 (Lemma 5 and the rest).

## §0 Inputs read
- SOURCES_A3_GAMMA0_FULL.md §0–§7 in full.

## §1 Part 1(a): CMP 96 p. 245, (2.124)–(2.127), read on the 300 dpi page image [V]
Geometry (figure, p. 245). c = ⟨y, y+Le_μ⟩, c_− = y, c_+ = y+Le_μ. Δ′ = the face x_μ = y_μ + L − 1 of B(c_−); Δ″ = the face x_μ = y_μ + L of B(c_+). B(c) = the L^{d−1} corridor bonds ⟨x, x+e_μ⟩, x ∈ Δ′. B(b) = B_μ(x).
(2.124): Σ_{p⊂B(c)}|(∂_1B)(p)|² ≥ ⅓Σ_{b⊂Δ′}|(∂B_μ)(b)|² − Σ_{b⊂Δ′}|B(b)|² − Σ_{b⊂Δ″}|B(b)|².
(2.125): |(Q_1B)(c)|² = |Σ_{x∈B(c_−)}L^{−(d+1)}B([x, x+Le_μ])|² = |L^{−d}Σ_{x∈B(y)\Δ′}L^{−1}(x_μ−y_μ+1)B_μ(x) + L^{−d}Σ_{x∈Δ′}B_μ(x) + L^{−d}Σ_{x∈B(y+Le_μ)}L^{−1}(2L−1+y_μ−x_μ)B_μ(x)|² "≤" ⅓|Σ_{x∈Δ′}L^{−d}B_μ(x)|² − L^{−d}Σ_{B(c_−)}|B_μ|² − L^{−d}Σ_{B(c_+)}|B_μ|². The printed "≤" is a misprint for "≥" (the next line uses it as a lower bound).
(2.126): L^{−d}Σ_{p⊂B(c)}|(∂_1B)(p)|² + |(Q_1B)(c)|² ≥ ⅓( L^{−d}Σ_{b⊂Δ′}|(∂B_μ)(b)|² + L^{−2}|Σ_{x∈Δ′}L^{−(d−1)}B_μ(x)|² ) − L^{−d}Σ_{b⊂B(c_−)}|B(b)|² − L^{−d}Σ_{b⊂B(c_+)}|B(b)|².
Text after (2.126), verbatim: "The terms in parentheses on the right-hand side can be written as L^{−2}⟨B, (Δ^{L^{−1},N}_{Δ′} + Q′*_{Δ′}Q′_{Δ′})B⟩, where the operators are defined on a d−1-dimensional lattice. This quadratic form is bounded from below by L^{−d−1}Σ_{x∈Δ′}|B_μ(x)|², hence"
(2.127): L^{−d}Σ_{p⊂B(c)}|(∂_1B)(p)|² + |(Q_1B)(c)|² ≥ ⅓L^{−d−1}Σ_{b∈B(c)}|B(b)|² − L^{−d}Σ_{b⊂B(c_−)}|B(b)|² − L^{−d}Σ_{b⊂B(c_+)}|B(b)|².
Lemma 2.4 / (2.128): L^{d−2}Σ_{c∈Λ′}|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ (12d²)^{−1}L^{−d−1}‖B‖².

The slab form. With f(x) := B_μ(x), x ∈ Δ′ (N = L^{d−1} points of a (d−1)-dim grid of side L), the parenthesis is
 K(f) = L^{−d}Σ_{edges e⊂Δ′}|∇_e f|² + L^{−2d}|Σ_{Δ′}f|².
∂B_μ on b ⊂ Δ′ is the unit-lattice difference along an edge inside the face. Only edges inside Δ′ appear, so the Laplacian is the graph Laplacian of the grid with free (Neumann) boundary; Balaban's superscript "N" says the same. No mass term, no constraint, no subspace: f is an arbitrary function on Δ′. The extra term is rank one (the mean). Balaban's claim is K(f) ≥ L^{−d−1}Σ|f|², i.e. Σ|∇f|² + L^{−d}|Σf|² ≥ L^{−1}Σ|f|². This matches the author's (3.1) bracket exactly.
Where the printed claim comes from (my reading, [P]). In rescaled units (spacing L^{−1}, weight L^{−(d−1)} per point) the form Δ^{L^{−1},N} + Q′*Q′ has lowest eigenvalue min(L²λ_1, 1) = 1 for all L ≥ 2. That gives L^{−d−1}Σ|f|² only if the gradient term in the parenthesis is L^{−(d−1)}Σ|∇f|², i.e. L^{−2}⟨f, Δ^{L^{−1}}f⟩. The printed gradient term is L^{−d}Σ|∇f|², one factor L smaller. So the identification "can be written as L^{−2}⟨B, (Δ^{L^{−1},N} + Q′*Q′)B⟩" is off by a factor L on the Laplacian part; the mean part L^{−2d}|Σf|² = L^{−2}|Q′f|² matches.

## §2 Part 1(b): numerics (script numerics/a3_slab/slab.py, exact dense eigenvalues, 92 s on the Mac)
Slab form K(f) = L^{−d}Σ_{edges⊂Δ′}|∇f|² + L^{−2d}|Σf|² on the Neumann grid {0..L−1}^{d−1}. Column "slab/L^{−d−1}" = (lowest eigenvalue of K)/L^{−d−1}; Balaban's claim is this ≥ 1. Computed for d = 2 (L = 2..40) and d = 3 (L = 2..25); the two columns agree to all printed digits, as expected (lowest nonzero Neumann eigenvalue of the grid = λ_1 of the path, independent of dimension).
Exact value: min eig K = L^{−d}·min(λ_1(L), 1/L), λ_1 = 2(1 − cos(π/L)). So slab/L^{−d−1} = min(Lλ_1, 1).

 L | λ_1 | 1/L | slab/L^{−d−1} | (2.127) min eig, free B | (2.127) min eig, axial B
 2 | 2.00000 | .50000 | 1.0000 | +5.3e−2 | +8.3e−2
 8 | 0.15224 | .12500 | 1.0000 | +1.4e−4 | +5.2e−4
 9 | 0.12061 | .11111 | 1.0000 | +3.8e−5 | +2.8e−4
 10 | 0.09789 | .10000 | 0.9789 | −6.9e−6 | +1.5e−4
 13 | 0.05812 | .07692 | 0.7555 | −3.7e−5 | +2.0e−5
 14 | 0.05014 | .07143 | 0.7020 | −3.6e−5 | +6.4e−6
 15 | 0.04370 | .06667 | 0.6556 | −3.4e−5 | −1.6e−6
 29 | 0.01172 | .03448 | 0.3400 | −9.0e−6 | −6.7e−6
 30 | 0.01096 | .03333 | 0.3287 | −8.3e−6 | −6.2e−6
 40 | 0.00617 | .02500 | 0.2466 | −3.9e−6 | −3.3e−6
(Full table L = 2..40 in the script output; all rows L ≤ 9 have slab ratio exactly 1.0000, all rows L ≥ 10 below 1, strictly decreasing.)
The "(2.127) min eig" columns: d = 2, μ = 1, all bonds of B(c_−), B(c_+), and the corridor; the quadratic form LHS − RHS of (2.127) with Q_1 from (2.125) and p ⊂ B(c) = the L − 1 plaquettes with both μ-bonds in the corridor. "free" = no constraint; "axial" = B = 0 on the trees T(y) of both blocks (2.121). Negative = (2.127) fails for some B.
Findings.
- Slab claim ("bounded from below by L^{−d−1}Σ|B_μ|²"): holds exactly for 2 ≤ L ≤ 9 (with equality, attained by the constant mode), fails for every L ≥ 10. Crossover: λ_1(L) = 1/L near L = π² ≈ 9.87. CONFIRMED.
- (2.127) as printed, per corridor: the author's test (B = mean-zero cosine on the corridor, block bonds 0) fails exactly when λ_1 < 1/(3L), i.e. L ≥ 30 (λ_1(29) = 0.01172 > 0.01149; λ_1(30) = 0.01096 < 0.01111). That is correct for that test. But the true threshold is lower: with free block bonds (2.127) already fails at L = 10; with the axial condition imposed it fails from L = 15. So "(2.127) fails for L ≥ 30" is true but not sharp. CORRECTED (threshold L ≥ 10 free, L ≥ 15 axial, d = 2).

## §3 Part 1(c): verdict and downstream
Verdict on the slab claim: CONFIRMED. The form in parentheses of (2.126) is K(f) = L^{−d}Σ|∇f|² + L^{−2d}|Σf|² on the free (Neumann) (d−1)-grid Δ′. Its exact lowest eigenvalue is L^{−d}min(λ_1(L), 1/L). The printed bound L^{−d−1}Σ|f|² holds iff Lλ_1(L) ≥ 1, i.e. exactly for 2 ≤ L ≤ 9. No mass or constraint term lifts the gap; f is unconstrained. The likely origin is a lost factor L in "can be written as L^{−2}⟨B, (Δ^{L^{−1},N} + Q′*Q′)B⟩" (§1).
Verdict on "(2.127) fails for L ≥ 30": CORRECT BUT NOT SHARP. The author's test is right. With block bonds free, (2.127) per corridor fails from L = 10 (d = 2 numerics, min eig −6.9e−6); with the axial condition, from L = 15.
Author's corrected corridor inequality (3.2) (m_L/3 in place of 1/(3L)): numerically ≥ 0 for L = 2..40, free and axial (free case has min eig 0 to 1e−17 for L ≥ 10, so (3.2) is sharp there). CONFIRMED.
Is printed Lemma 2.4 (2.128) itself false? Not shown. d = 2 numerics (numerics/a3_slab/lemma24.py; torus of 2×2 or 3×3 L-blocks, axial gauge in each block, L^{d−2} = 1): the optimal constant is ≈ 0.88–0.93·L^{−3} for L = 3..30, versus the printed (1/48)L^{−3} = 0.0208·L^{−3}. So in d = 2 the printed (2.128) holds with a margin ≈ 44 at every tested L, including L = 13 and 30. Only Balaban's proof step fails. Caveat: torus not finite Λ; d = 2 not d = 4; numerics, not a proof.
Corrected constant (as proved by the author): γ_L = m_L/(12d²L^d) = (12d²)^{−1}L^{−d−1}·(L m_L), L m_L = min(Lλ_1, 1) ∈ [4/L, 1].
Downstream at L = 13, d = 4 (L m_L = 13·0.058116 = 0.75551):
- Lemma 2.4 constant: printed 1.4028e−8 → proved 1.0598e−8.
- TRUST_LEDGER A3 row "γ_0 ≥ (48d²)^{−1}L^{−d−1}" = 3.507e−9 → proved 2.649e−9 (factor 0.7555). The row needs the factor L m_L, or a separate proof of printed (2.128).
- KAPPA_D / SOURCES_Q §4.3: Λ ≤ 2(1 + γ_0^{−1}) with γ_0 = (12d²)^{−1}L^{−d−1}: 1.43e8 → 1.89e8; Λ/c_− ≈ 1.04e16 → 1.37e16. Only the number changes; existence and k-uniformity are untouched. L = 3, 5 values are unchanged (L ≤ 9).
- Typo in the author's §7.4(4): "L^{d−1}Σ|B_μ|²" should read "L^{−d−1}Σ|B_μ|²".

## §4 Part 2: Lemma 5 and the other checks (page images CMP 99 pp. 392, 396, 418–421 at 300/200 dpi; CMP 95 (1.69)–(1.70) text layer)
Printed facts re-read [V].
- (3.115) p. 418: Q_jDλ = D^{L^jη}_{Ū^j}Q′_jλ = D̄^jQ′_jλ, and "they imply that the average QA are invariant with respect to gauge transformations λ satisfying Q′λ = 0". So (F1) is printed.
- p. 419 after (3.118): "RD*(A − Dλ) = RD*A − RΔλ = RD*A − Δλ, which holds by the definition of R and the fact that λ ∈ N(Q′)". (F2) printed. Cross-check from CMP 95 (1.69)–(1.70): R = I − P, P = Δ^{−1}Q′*(Q′Δ^{−2}Q′*)^{−1}Q′Δ^{−1}. P is self-adjoint and P² = P, so R is the orthogonal projection onto {v : Q′Δ^{−1}v = 0} = Δ·N(Q′). Hence RΔλ = Δλ for λ ∈ N(Q′) [P].
- (3.118) has δ(Q′λ)δ_R(RD*A − Δλ); (3.119) ⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩; text: "It is obtained by gauge transforming an arbitrary configuration A to the subspace {A : RD*A = 0}". So G′RD*A is the λ ∈ N(Q′) fixed by the two deltas, i.e. Δλ = RD*A. (F3) is an inference from the integral, not a printed sentence "G′RD*A ∈ N(Q′)", but it is the only consistent reading of (3.118)→(3.119). Accept as [V-inferred].
- (3.128) p. 421, verbatim structure: ⟨A, G_1^{−1}A⟩ = ⟨A, Δ_πA⟩ − 2⟨HC_π^{(2)}(A), J⟩ + ‖RD*A‖² + a‖QA‖² = ⟨A′, ΔA′⟩ − 2⟨HC^{(2)}(A′), J⟩ + ‖RD*A‖² + a‖QA‖², A′ = A − DG′RD*A. So (F4) holds with Φ(X) = ⟨X, ΔX⟩ − 2⟨HC^{(2)}(X), J⟩, which is the author's Φ given (3.134).
Items.
(1) Lemma 5 step (iii) — CONFIRMED. Rederivation: Q A′ = QA − QDλ_A = QA by (3.115) since λ_A ∈ N(Q′). RD*A′ = RD*A − Δλ_A = 0. G′ linear ⇒ λ_{A′} = G′(0) = 0 ⇒ (A′)′ = A′. (3.128) at A and at A′ share Φ(A′) and a‖QA‖² = a‖B‖²; they differ only by ‖RD*A‖² vs 0. So ⟨A′, G_1^{−1}A′⟩ = ⟨A, G_1^{−1}A⟩ − ‖RD*A‖², exact, and the sign lowers the value. With G_1 > 0 (R1) the constrained minimizer A_* = G_1Q*(QG_1Q*)^{−1}B is unique (5.1 is correct: cross term 2⟨QZ, w⟩ = 0). So RD*A_* = 0. This is the G_1-analogue of (3.124) RD*GQ* = 0, which Balaban proves by the Gaussian symmetry (3.125); the variational proof is a valid alternative. One dependency: uniqueness needs G_1^{−1} > 0 as a form on all A, i.e. R1 (Thms 3.11–3.12); 5.1 states this.
(2) §3.1 plaquette counting — CONFIRMED. The tree T(y) (e_j-bonds with x_i = y_i for i < j) matches Γ_{y,x} built along e_d, …, e_1. In the step plaquette both direction-i bonds have coordinates < i equal to y, so they lie on T(y). A (i, j)-plaquette with lower corner w is used by x only if x_ρ = w_ρ (ρ > i), w_ρ = y_ρ (ρ < i), x_i ≥ w_i + 1: count ≤ L^{i−1}(L−1) ≤ (L−1)L^{j−2}. With n(x) ≤ (j−1)(L−1): (d−1)(L−1)²L^{d−2} ≤ dL^d at j = d. Reproduces p. 244.
(3) §3.3(b) average weights — CONFIRMED. Hit count t + 1 (t ≤ L−1), 2L−1−t (t ≥ L−1) equals Balaban's L^{−1}(x_μ − y_μ + 1) and L^{−1}(2L − 1 + y_μ − x_μ) in (2.125); corridor weight L^{−d}; Σw² ≤ (L−1)L^{−d−1} ≤ L^{−d}. Also (2.125)'s printed "≤" is a misprint for "≥".
(4) §3.3(a) and §4.3(a) counting — CONFIRMED (bijection 𝒫(c) ↔ face edges; corridor bond in ≤ 2(d−1) plaquettes of 𝒫(c), face bond in exactly one ⇒ 16(d−1)τ²). §3.4 and §4.4 arithmetic CONFIRMED (m_L ≤ 1/L ≤ ½, d²L^d ≥ 16). Numerics in §2 confirm (3.2).
(5) Lemma 1, c_* = 1 — CONFIRMED. Stokes (1.1) is exact; the CS measure ⨍_xΣ_{q⊂S_x}η² has mass 1; each fine (μ,ν)-plaquette q lies in S_x for η^{−2} points x, each in one k-block, weight η^d·η^{−2} = η^{d−2}, which is the weight in ‖D_1X‖².
(6) Lemma 2 relative error 2(1+δ^{−1})ε_2² — CONFIRMED in structure: (a + r)² ≤ (1+δ)a² + (1+δ^{−1})r², r² ≤ 2b² + 2e²; 144·4·2(d−1) = 1152(d−1); 4·2(d−1) = 8(d−1). CORRECTED constant in fact (E): the trace is normalized, tr 1 = 1 [V p. 392], so |Y|² = tr Y² gives ‖Y‖_op ≤ √N|Y| and ‖ad_Y‖ ≤ 2√N|Y|, not 2|Y| (counterexample N = 3, Y = diag(a, −a, 0): ‖ad_Y‖ = 2a = √6|Y|). Fix: replace 4|Y| by 4√N|Y| under |Y| ≤ 1/(2√N). This multiplies c_3, c_4 by √N; constants become c(d, L, N). No structural change.
(7) "M ≥ L/2 suffices" — CONFIRMED, with a reading. p. 396: the class of cubes are unions of big (M-)blocks of size O(1)M, "O(1) will mean a number ≥ 10", and (3.35) holds "for an arbitrary cube of the described class". If every M-block-aligned cube of that size near Λ is in the class (the natural reading of "arbitrary"), a set of ℓ^∞-diameter D meets ≤ ⌊D/M⌋ + 2 blocks per direction, so D ≤ 8M fits in a 10M cube; the largest set used (L-neighbourhood of R(c)) has diameter ≤ 4L. So M ≥ L/2 suffices for the gauge-patch geometry. The earlier "M ≥ cL" is not wrong, only weaker. (H2) still uses M ≥ max(M_1, L), so nothing depends on this.
(8) R-Δ′ D^1 normalization: p. 392 (3.10) first term is Σ_p η^d tr((D_U^1A)(p))²η^{−2}(Re U(∂p) − 1). D^1 = the η = 1 (unscaled) four-term curl is the consistent reading; then the author's bound c(Mα_0)²‖X‖²_𝔴 follows. Status stays [R].

## §5 Remaining [R]/[I] list and summary
Other checks.
- §6.2–§6.5 assembly arithmetic — CONFIRMED: (6.1) from (b)+(c)+(5.2); (8/9)(3γ_L/8 − ε_7a) − c_J ≥ γ_L/3 − (ε_7a + c_J) ≥ γ_L/4; ‖CB̃‖ ≥ ‖B̃‖ gives γ_0 = γ_L/4.
- R-Δ2 reason — UNSUPPORTED as written. (3.137) [V p. 422] is a pointwise bound |(Δ^{(2)}A)(b)| ≤ O(1)Mα_0(L^jη)^{−2}|A|, |A| = sup over several j-blocks. A sup bound alone does not give a uniform weighted-ℓ² bound by Schur: the operator A ↦ A(b*) (one point per block) obeys the same sup bound but has ℓ² norm ~ L^{jd/2}. The repair is the quadratic form (3.136): ⟨A, Δ^{(2)}A⟩ = Σ_b(L^jη)^{d+1}tr C_j^{(2)}(A, b)(H*J)(b) with |H*J| ≤ O(1)Mα_0(L^jη)^{−3}; if |C_j^{(2)}(A, b)| ≤ c·(block average of |A|²), the sum is ≤ cMα_0‖A‖²_𝔴. That bound on C^{(2)} (from CMP 98 (149)) is the actual input; it is not checked here. Keep R-Δ2 as [R] with this corrected reason.
- R1 [R]: Theorem 3.11 [text p. 416] gives positivity of Δ′_a, G′, (Q′G′²Q′*)^{−1}, Δ_a, G; Theorem 3.12 [text p. 423] extends Thms 3.3, 3.10, 3.11 to G, G_1 except the covariant-Laplace part of (3.42). Positivity of G_1 is printed. The weighted bound ‖𝔴^{1/2}G_1𝔴^{1/2}‖ ≤ K_1 needs the Schur step from (3.46); plausible, not written out. Status correct.
- R2 [I]: the k-step comparison Q_k(U^u) vs Q_k(1) uniform in k. Still the one open input of Lemma 2. Plausible route: per-step errors scale like Mα_0 times a power of L^{−(k−j)} and sum geometrically; not proved here.
- R3, R4, R5, R-Δ′, R2′: status labels are accurate. R5 (A_x(y) = T(y)) rests on a garbled p. 428 reference; T(y) itself matches CMP 96 Γ_{y,x} (§4(2)).
- [I] σ/s-localized C*Δ_k(s)C: not covered, as the author says.

Summary.
1. Part 1 CONFIRMED. The slab form in (2.126) is L^{−d}Σ_{Δ′}|∇f|² + L^{−2d}|Σf|² on the free (Neumann) (d−1)-grid. Its lowest eigenvalue is L^{−d}min(λ_1, 1/L), λ_1 = 2(1 − cos(π/L)). Balaban's "≥ L^{−d−1}Σ|B_μ|²" holds exactly for 2 ≤ L ≤ 9 and fails for every L ≥ 10 (ratio 0.9789 at L = 10, 0.7555 at L = 13, 0.2466 at L = 40). Likely cause: a lost factor L in "L^{−2}⟨B, (Δ^{L^{−1},N} + Q′*Q′)B⟩".
2. "(2.127) fails for L ≥ 30" is true but not sharp: per corridor, (2.127) fails from L = 10 with free block bonds and from L = 15 with the axial condition (d = 2). The author's corrected (3.2) holds numerically for L = 2..40.
3. Printed Lemma 2.4 (2.128) is not refuted: d = 2 torus numerics give ≈ 0.9·L^{−3} versus the printed L^{−3}/48, L = 3..30. Only the printed proof fails for L ≥ 10.
4. At L = 13, d = 4 the proved constants carry the factor L m_L = 0.7555: Lemma 2.4 1.403e−8 → 1.060e−8; ledger γ_0 3.507e−9 → 2.649e−9; KAPPA_D Λ 1.43e8 → 1.89e8, Λ/c_− 1.04e16 → 1.37e16. Existence and uniformity do not change.
5. Lemma 5 CONFIRMED: A ↦ A′ keeps QA, lowers ⟨A, G_1^{−1}A⟩ by exactly ‖RD*A‖², so the minimizer has RD*A_* = 0. Counting in §1, §3.1, §3.3, §4.3, c_* = 1, the 2(1+δ^{−1})ε_2² structure, and M ≥ L/2 are CONFIRMED. Corrections: fact (E) needs √N (tr 1 = 1); the R-Δ2 reason needs the form (3.136), not the sup bound (3.137).
