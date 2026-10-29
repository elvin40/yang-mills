# SOURCES_OFFSHELL_F2_VERIFY — adversarial check of SOURCES_OFFSHELL_F2.md

Written 2026-10-29 by Claude (Opus 5.5), verification agent. Ids follow IDS.md. File-local labels (F, T_1, Theorem W, S, H, Proposition N, C, Lemma LD, (CF), (W-G̃), (W-Λ)) are those of SOURCES_OFFSHELL_F2 and SOURCES_OFFSHELL_H.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
No existing file was edited. PLAN.md was not changed. sync.sh was not run. New file: this file only.
Disk check before rendering: 6.5 GB free on /.
Page images read in this session (pdftoppm -r 100, fresh folder /tmp/f2v, deleted after use):
- CMP 116 pp. 2, 3, 4, 5, 6, 7.
- CMP 109 pp. 271, 272, 273, 274, 275, 276, 285.
- CMP 99 pp. 397, 398, 399, 409, 410, 416, 422, 423.
Files read: SOURCES_OFFSHELL_F2 (full), SOURCES_OFFSHELL_H (full), SOURCES_OFFSHELL_H_VERIFY (full), SOURCES_R005_189_VERIFY lines 1–60, A1_WALK_FULL (grep: 5.4, c_1), SOURCES_ORDER_CANON (grep: N-060, N-090, N-150–N-180, N-310, N-350, N-370), SOURCES_MULTISCALE_OMEGA_SOURCED and its VERIFY (grep: (G3) cube count).

## Verdict

PASS WITH CORRECTIONS. The core of item (a) and item (b) holds relative to the listed inputs.
- Theorem W (walk expansion of F, CMP 116 (1.7) form, at most 5 junctions per insertion, derivatives on the first block only): CONFIRMED relative to (W-G̃), (W-Λ), (Γ) and the concatenation lemma. One threshold is missing from the canon entry: C_Wρ_* ≤ ½ needs M_1 ≥ 2C_Wc_0.
- Theorem S: CORRECTED. The cube count (S-b) has an invalid step in d ≥ 2, and it ignores the multiscale factor. The project already has a verified count, (G3) of SOURCES_MULTISCALE_OMEGA_SOURCED: m ≤ 2·3^d(1 + L^{d−1})(1 + ℓ/M). With it, the constant is e^{2·3^d(1+L^{d−1})κ_1}, not e^{4·3^dκ_1}, and the threshold is M ≥ 8·3^d(1 + L^{d−1})κ_1/δ_*. The [I] of Theorem S becomes [R] to a verified project result. The structure is unchanged.
- Proposition N: CONFIRMED relative to CMP 116 pp. 5–7, with the constant of Theorem S corrected.
- 3.8 ((3.14), (3.9) for the localized pieces): CORRECTED in its target. CMP 109 p. 273 speaks about H_j(B(t)) and δH_j of the non-fundamental case (3.7)–(3.9), not about H_k(B′). The F2 argument transfers to the outer F of H_j^F at scale j [P-sketch]. The rate ¼δ_* against the printed ½δ_0 of (3.9) stays open [I].
- Theorem H, Proposition C, the L^{jβ} loss of the lattice route: CONFIRMED. One citation is CORRECTED: the Hölder bound of H_0 is not "(3.133) at J = 0". It follows from (3.43) for G_0 (Thm 3.3) and the sup kernel of (QG_0Q*)^{−1}.
- (3.31) via the "Obviously" of CMP 109 p. 276: CONFIRMED as [R].
- (189) dependence. Theorems W, S, H, Proposition C and Lemma LD concern F alone. They do not use Theorem E and do not depend on the (189) off-shell item. Proposition N, 3.8 and 4.6 use Balaban's inner D, 𝒜_0, V and δ𝒜_0/δB at off-shell (U, J). Under the literal reading these inherit the open item of SOURCES_R005_189_VERIFY.
- Smaller corrections: §0 cites a nonexistent "§6.1" (read 5.2); the off-shell identity Q_j(ηH_k^F(B′)) = Q_j(ηH_k(B′)) of 1.5 holds for the Q inside H_0, not for a general Q_j (it is not needed); the cube constant in §5.1 and §7.

## 1. What the consumers need (F2 §1)

V1.1 CMP 116 (1.2)–(1.4) [image p. 2], "replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds" [image p. 3], (1.6)–(1.7) with O(1)O(M_1^{−1/2})^{|ω|}M_1^{−½|ω|}exp(−δ_0d(ω, y, y′)), "holds for all operator norms … e.g. in Theorem 3.1", the s-rule over cubes of σ_0 meeting X̃_0^5 ∪ … ∪ X̃_n^5, "coincide with the original ones for s = 1": CONFIRMED [images pp. 2–3]. Note: the band "⅓M_1" is printed with "e.g.", as F2 says.
V1.2 (s1) locality quote [image p. 4]; (s2) "if m > 2^4, then δ_0d(ω) ≥ δ_1mM … for δ_1M ≥ κ_1", "bounded by B_0e^{16κ_1}|X| in all norms of Theorems 3.1–3.10" [image p. 5]; (s3) "(1.15) holds for all admissible norms", (1.18), (1.21) "the same bound for all admissible norms" [images pp. 6–7]; (s4) 4B_0C_1e^{16κ_1}ε_1 ≤ ¼α_2 gives (I.3.31) with ½α_2 [image p. 7]: CONFIRMED. Note: d(ω) in (1.11) is "a length of a shortest tree graph intersecting all localization domains of ω".
V1.3 CMP 109 p. 273 radius r with max{|δH_j|_X, |P_1δH_j|_X, |∇^ξ_UδH_j|_X, |Δ^ξ_UδH_j|_X} = ⅓α_2, and "new localized functions will satisfy the bounds (3.14), (3.9)": CONFIRMED [image]. (3.14) is |A|, |P_1A|, |∇^ξ_UA|, |Δ^ξ_UA| < α_2 on X [image p. 272]. (3.9) is the bound on δH_j of (3.8) with B_3exp(−½δ_0dist^{(ξ)}(X, □) − ½δ_0M(L^jη)^{−1})·2L^jη|ζ_□H_k(B′)|, "and the same for derivatives and the second order operators applied to it" [image p. 271]. Both concern the non-fundamental case. See V3.8.
V1.4 CMP 109 pp. 274–276 quotes ("The variable J replaces the function J_{k+1} as usual", "approximately the same regularity properties as U, hence all necessary theorems are valid", (3.31), "Obviously such bounds are satisfied …") and p. 285 ("only for Hölder norms of first order derivatives in (3.32)", (4.18) |∂∂B| < α_1(L^jη)^{2+β}): CONFIRMED [images]. "(3.32) doubles the constant on □̃^4": not checked (p. 277 not imaged); not used by any F2 conclusion.
V1.5 Replacement target H_k^F(B′) = H_0B′ + A_0 − F·D(H_0B′ + A_0) in (3.22), (3.25): CONFIRMED [images pp. 274–275]; this is correction V3.12 of SOURCES_OFFSHELL_H_VERIFY.
 QF = I off-shell: CONFIRMED [P]. QH_0 = QGQ*N^{−1} = I and QG̃_0 = QG − QGQ*N^{−1}QG = 0, for the Q inside H_0. QA_0 = 0 holds for the same reason with Balaban's G̃.
 "So Q_j(ηH_k^F(B′)) = Q_j(ηH_k(B′))": CORRECTED. (3.22) [image p. 274] reads B̃_□ = Q_j(η(t̃ζ̃_□ + t_□ζ_□)H_k(B′)), with Q_j at the level j of E^{(j)}. The identity QF = I is for the Q of H_0 (level k). For j < k, Q_j(F − H) need not vanish off-shell. The claim is not needed: B̃_□ is a definition, and on-shell F = H gives agreement. Keep "B̃_□ is defined by the same formula with F"; drop the equality.
 H_{k+1}(□_0, (1/i)log V) of (3.27) has no J variable: CONFIRMED as read on p. 275 [image]; (3.27) is a bound on a Landau-gauge function of the configuration U_{k+1}(□_0, V), with ‖·‖_{1,β} < B_3O(1)Mα_0 printed. Also on p. 275: E^{(j)}(X, U_j) "should" be E^{(j)}(X, U_j, J_j) as in (3.13). This does not touch the outer H of H_k.

## 2. Conventions and inputs (F2 §2)

V2.1 Walk conventions (L1), (L2), (B1), (B2), and ρ ≤ c_0/M_1 ⇔ (1.7) form: CONFIRMED. ρ^{|ω|} = (c_0M_1^{−1/2})^{|ω|}M_1^{−½|ω|}.
V2.2 Concatenation lemma as stated: CONFIRMED against A1_WALK_FULL 5.4 (statement (c): (Πβ_k)c_1(θδ)^{N−1}m e^{−(1−θ)δd}). c_1(κ) is the CMP 96 Lemma 2.1 constant, uniform in k, η, {Ω_j}, volume under (2.59) (A1_WALK_FULL l. 18, 439). So K_T has no M_1 dependence through c_1. CONFIRMED.
V2.3 Lemma LD: CONFIRMED [P]. ∇_U, Δ_U act in the first argument and commute with right composition. The (3.40) seminorm is subadditive and absolutely homogeneous (parallel transport R(U(Γ_{x,x′})) acts linearly), so the sum bound holds on a finite lattice.
V2.4 (W-G̃).
 - Printed support "only as assertions": CONFIRMED [images]. CMP 99 p. 416: (3.108) "and the corresponding inequalities for norms on the left-hand sides of (3.42)–(3.47)", no proof. p. 410: Cor. 3.8 "Similar estimates hold for the other norms." CMP 116 p. 3: "This bound holds for all operator norms in formulations of theorems in [13]".
 - Note: CMP 99 (3.108) has the walk factor O(M^{−1/2})^{|ω|}M^{−½|ω|} for cubes of side M. CMP 116 (1.6) re-localizes to domains "of the size M_1 instead of M" and writes M_1. This re-localization is itself an assertion [R]; the project carries it in WG_FULL / A1-W.
 - "(3.42) contains the Δ_U line; Thm 3.3 gives (3.42)–(3.47) for G under (3.35) only": CONFIRMED [images pp. 397–399]. Thm 3.1 assumes (3.35) and Mα_0 ≤ a_0. Thm 3.3: G(U) satisfies (3.42)–(3.47) "with G′(U) replaced by G(U) and λ replaced by a function J defined at bonds".
 - Important context, CONFIRMED [image p. 423]: Theorem 3.12 says the Δ_U line of (3.42) "does not hold for G, G_1", the J-dependent operators with Δ′_π. The J-free G = Δ_a^{−1} keeps it. F2 uses only J-free G-blocks with Δ_U, so it is not affected. Balaban's H(s) has no printed Δ_U bound ((3.133) has none either); F has one. This is the reason for the F-extension.
 - "(3.87) G_0 = Σh_□G_□h_□", "G_□ satisfy all the inequalities of Theorems 3.1–3.3": CONFIRMED [image p. 409]. Notation warning: CMP 99's G_0 of (3.87) is the local approximation, and CMP 102's G_0 is Δ_a^{−1} (= CMP 99's G of Thm 3.3). F2 2.4 uses both in one sentence; the reading is correct, the names clash.
 - "Balaban's own H_0(s), G̃(s) need the same input": CONFIRMED (CMP 116 p. 3 uses walk expansions of G̃, H_0).
V2.5 (W-Λ), (Γ), (T), (P): CONFIRMED as citations [R]. RG′ = G′ − G′Q′*C′Q′G′G′ follows from R = I − G′Q′*C′Q′G′ (CMP 99 (3.25)). c_J = L³α_0 remains unchecked (V3.9 of SOURCES_OFFSHELL_H_VERIFY), as F2 says.

## 3. Item (a)

V3.1 Terms of F (3.1): CONFIRMED. One insertion G̃_0T_1 = ½·g·DRG′·Γ_J; DRG′ expands to DG′ (pattern I, 1 block) or DG′·(Q′*C′Q′)·G′·G′ (pattern P, 4 blocks). F_ω = (±)2^{−n}Π[g Λ … Γ_J]·h. Sign and factor 2^{−n} are right.
V3.2 Merging Γ_J keeps (L1), (L2): CONFIRMED [P]. Γ_J(x, b) is supported on x ∈ b. If the last chain factor vanishes unless x′, x ∈ X°, then b lies within one bond of X°. ⅓M_1 − 1 ≥ ¼M_1 for M_1 ≥ 12. The J- and R_b-dependence sits on bonds that meet X° ⊂ X̃^5. The band ¼M_1 is admissible: CMP 116 p. 3 gives ⅓M_1 with "e.g.", and p. 4 needs distance > M_1 to the boundary of a component of Y(σ), which X̃^5 supplies.
V3.3 Junction count ≤ 5 per insertion: CONFIRMED [P]. Pattern P has 5 blocks per insertion (g, DG′, C′, G′, G′) and 5 junctions (g|DG′, DG′|C′, C′|G′, G′|G′, G′|next). Pattern I has 2 and 2. With h at the end, a term with n insertions has ≤ 5n + 1 blocks and ≤ 5n junctions. Each junction adds one to |ω| (ω_1 ∘ ω_2 keeps both end domains).
V3.4 Theorem W.
 (W1): CONFIRMED relative to (W-G̃), (W-Λ), (Γ), c_sc. Bookkeeping check: put B_* on h, and B_*^5 on each insertion; each insertion also carries ≤ 5 factors c_1(½δ_*) and ½c_Γc_Jc_sc. So the insertion factor is ≤ K_Tc_J·ρ_*^{Σ|ω_k|} ≤ ρ_*^{5 + Σ|ω_k|}. If an insertion has fewer junctions (pattern I), ρ_* ≤ 1 still gives ≤ ρ_*^{(junctions) + Σ|ω_k|}. Rate (1 − ½)δ_* = ½δ_*. CONFIRMED.
  The scale constant c_sc (G̃_0 at (L^jη)², DRG′ at L^jη, J at (L^jη)^{−3}, and Lemma 2.1 shifts between neighbouring levels) is [I], convention C0, as F2 says.
 (B2) for 𝒲_F, C_W = c_tagC_*, c_tag ≤ 8: CONFIRMED as [P-sketch]. Per step the encoding needs: continue inside the current block, or start the next block. The grammar fixes the next block type up to three choices (after DG′: C′, g or h; after the last chain block: g or h). So c_tag ≤ 4 suffices; 8 is safe.
 Missing threshold, CORRECTED: (CF) contains C_Wρ_* ≤ ½. With ρ_* = c_0/M_1 this is M_1 ≥ 2c_tagC_*c_0. It is a (d, L) threshold on M_1 (N-270 group). The 5.3 canon entry lists only M_F. Add it. It may be implied by M_* = max{4C′_𝒟c_0, 3c_loc} (N-170) if c_tagC_* ≤ 2C′_𝒟 [I, not checked].
 (W2) polynomial in J of degree n, locality ∪X̃_i^5, analyticity by uniform convergence: CONFIRMED [P] relative to the inputs (complex U [R]).
 (W3) derivatives on the first block only: CONFIRMED [P] by Lemma LD. The first block is h (n = 0) or g of the first insertion. Both are G-led: G̃_0 = G − GQ*N^{−1}QG and H_0 = GQ*N^{−1}, with G = Δ_a^{−1} J-free, so the Δ_U line exists (V2.4). The per-term Δ_U and Hölder bounds of that block are part of (W-G̃), which is a printed assertion only (V2.4). P_1 by Theorem P: CONFIRMED (Theorem P needs only a sup kernel bound).
 (W4) sum bound and identification Σ_ωF_ω = F: CONFIRMED [P]. Absolute convergence of the multiple sum allows rearrangement on a finite lattice. F_∞ = H_0 + G̃_0T_1F_∞ holds term by term. ‖G̃_0T_1‖ ≤ ½ (Theorem F (a)) makes I − G̃_0T_1 invertible, so F_∞ = F.
V3.5 Remarks.
 - Only |J| enters; no derivative or Hölder norm of J: CONFIRMED.
 - No block with derivatives on both sides of G′ or G; (3.44) not used: CONFIRMED. Compare CMP 99 p. 423 [image]: Balaban's G_1 series needs (3.45) because the derivative stands on the right of G_0.
 - Rate: see V5.5.
V3.6 Theorem S.
 (S1), (S3): CONFIRMED [P]. (S3) uses: s^{(ω)} ≠ 0 forces every σ_0-cube that meets ∪X̃_i^5 into σ; ∪X_i is connected; arguments lie in X_0°, X_n°; X̃^5 gives distance ≥ 5M_1 > M_1 to ∂Y′. One step is [I]: "the cubes of σ_0 cover the complement of the interior of □̃^4". CMP 116 p. 3 [image] says σ_0 is the family of cubes of side M "disjoint with the interior of □̃^4". This covers the complement only if □̃^4 is a union of such cubes. That is the geometry Balaban uses on p. 4, so the step matches his.
 (S-b) cube count: CORRECTED.
  - Invalid step: "a connected set of length ℓ meets at most ⌈ℓ/M⌉ + 1 cubes of side M along its length" is false for d ≥ 2. A short path through a corner of the M-grid meets 2^d cubes.
  - Valid elementary replacement [P]: cut the path into max{1, ⌈ℓ/M⌉} ≤ ℓ/M + 1 arcs of length ≤ M. Each arc lies in the ℓ^∞ ball of radius ½M around its midpoint. So the M-neighbourhood of the path lies in ≤ ℓ/M + 1 boxes of side 3M, and each box meets ≤ 4^d cubes. So m ≤ 4^d(ℓ/M + 1). This is for one level only.
  - Multiscale: the project already has the verified count (G3) of SOURCES_MULTISCALE_OMEGA_SOURCED (VERIFY V9(6), CONFIRMED): m ≤ 2·3^d(1 + L^{d−1})(1 + d(Ω)/ℓ), σ_0 side in local units, with domain diameters ≤ c′M_1 (G2). It contains the multiscale factor (1 + L^{d−1}) that F2 leaves as [I]. Use it. It needs d(ω, y, y′) ≥ d(Ω) for the union Ω of the X̃_i^5; both are lengths of connected graphs that meet every domain, and the graph for d(ω, y, y′) also contains y, y′ [P].
 (S2): CORRECTED in its constants, CONFIRMED in structure. With (G3) and c_G := 2·3^d(1 + L^{d−1}): |s^{(ω)}| ≤ e^{c_Gκ_1}e^{(c_Gκ_1/M)ℓ} ≤ e^{c_Gκ_1}e^{¼δ_*ℓ} if M ≥ 4c_Gκ_1/δ_* = 8·3^d(1 + L^{d−1})κ_1/δ_*. Then |s^{(ω)}|e^{−½δ_*ℓ} ≤ e^{c_Gκ_1}e^{−¼δ_*ℓ}, and the Lemma 1.1 sum follows as written. The bound is 2C_WB_*e^{2·3^d(1+L^{d−1})κ_1}, not 2C_WB_*e^{4·3^dκ_1}. The two-case split of F2 is not needed with (G3).
  Internal note: even on F2's own count, its arithmetic needs only M ≥ 8·3^dκ_1/δ_*; the stated (S-M) M ≥ 8c_mκ_1/δ_* = 32·3^dκ_1/δ_* is four times stronger than its proof uses. Harmless, but inconsistent.
 Grade change: Theorem S from [P-sketch + I] to [P] relative to (G3) [R, verified project result] and the inputs of Theorem W.
 "Only ε_1-conditions see the new constant; ε_1 is fixed after κ_1 (N-090)": CONFIRMED. The canon already carries e^{2·3^d(1+L^{d−1})κ_1} and e^{4·3^d(1+L^{d−1})κ_1} factors in N-300/N-310 (SOURCES_MULTISCALE_OMEGA_SOURCED), so the corrected constant has precedent.
V3.7 Proposition N.
 - "(1.12)–(1.16) do not contain the outer H; (1.17) is linear in the outer operator": CONFIRMED [images pp. 5–6]. The outer H(s(Y_0)) appears only in (1.17).
 - Norm of F(s)X with X sup-bounded via Lemma LD: CONFIRMED.
 - (1.18) with B_0^Fe^{c_mκ_1}: CONFIRMED as [P-sketch]. F2's displayed chain is not the printed one, but the terms are: |H_0(s)B′| ≤ B_0e^{16κ_1}|B′|; |A_0| from (1.16); the F-term ≤ B_0^Fe^{c_Gκ_1}·4C_2(2B_0e^{16κ_1}|B′|)². The last term is ≤ B_0^Fe^{c_Gκ_1}|B′| once 16C_2B_0²e^{32κ_1}ε_3 ≤ 1, a condition of the printed type. So |H_k^F| ≤ 4B_0^Fe^{c_Gκ_1}|B′| under ε_3-conditions of the printed form. Replace c_m by c_G (V3.6).
 - (1.20)–(1.22): CONFIRMED in form; (1.21) also needs "e^{2c_Gκ_1}ε_1 smaller than an absolute constant" in place of e^{32κ_1}ε_1 [image p. 7].
 - "including ∇, Δ_U, P_1 and the Hölder seminorm": CONFIRMED for the F-term. For the H_0(s)B′ and A_0(s) terms these are Balaban's bounds, as before.
 - Dependence: (1.13)–(1.16) evaluate Balaban's D, V, A_0 at off-shell (U, J). See §6.
V3.8 3.8, CMP 109 (3.14), (3.9) for the localized pieces: CORRECTED.
 - Target. CMP 109 p. 273 [image] requires (3.14), (3.9) for H_j(B(t)) and δH_j of (3.7)–(3.9), the non-fundamental case (p. 271 [image]). In the fundamental case the requirement is (3.31) (p. 276), handled in 4.6. F2 3.8 names H_k^F(s(Y_0), B′) and δH_k^F/δB. CMP 116 p. 2 [image] treats the H_k(B′) term as "one important and typical term" and leaves "necessary changes for other terms"; H_j(B(t)) + t_□δH_j of (I.3.7) is one of those.
 - Transfer [P-sketch]. Theorems W, S hold for F at any level j (nothing in them uses j = k). The outer-F replacement in H_j (SOURCES_OFFSHELL_H 5.1, 𝓗_F, X_F) is linear in F as in (1.17). So the Proposition N argument gives (3.14) with ⅓α_2 for the localized H_j^F(B(t)) and the (3.9) form for its δ/δB, with B_3 → B_3^F·O(1)e^{c_Gκ_1}. The inner argument B(t) = Q_j(ηtH_k(B′)) needs only sup bounds.
 - Rate. (3.9) is printed with ½δ_0 (δ_0 = decay of δH_j/δB, "see Proposition 9, (190) [15]", p. 271 [image]). The F-led localized pieces decay at ¼δ_* in F2. See V5.5.
 - Dependence: X_F contains δ𝒜_0/δB and the inner kernel ⟨𝔇(…), …⟩. See §6.

## 4. Item (b)

V4.1 The norm: CONFIRMED [image CMP 99 p. 397]. (3.40) quoted correctly; "It is understood that the η-scale is used"; sup over |x − x′| ≤ 1; ‖ζ‖^ξ_β with ξ = L^{−j} in (3.43) [image p. 398].
V4.2 Lattice route loses L^{jβ}: CONFIRMED [P]. |x − x′| ≥ η gives ‖A‖_{1,β} ≤ 2η^{−β}|∇A| (real U). (3.43) [image p. 398] gives the ratio (L^jη)^{1−β}/(L^jη) = (L^jη)^{−β} between the Hölder and ∇ bounds. The quotient is L^{jβ}, unbounded in j ≤ k. (3.31) uses one α_2 for |∇^ηA| and ‖A‖_{1,β} [image p. 276]. (4.18) [image p. 285] prints (L^jη)^{2+β}: CONFIRMED.
V4.3 Proposition C: CONFIRMED [P]. Δ̃(y) has side 2L^jη (p. 397 [image]); the ¼L^jη-neighbourhood of Δ(y) has side 1.5L^jη and fits inside, so ζ_y exists with ‖ζ_y‖^ξ_β + |ζ_y| ≤ c_ζ(d). Near pairs: ζ_y = 1 at x and x′, so the quotients agree. Far pairs: |x − x′|^{−β} ≤ 4^β(L^jη)^{−β}. The multiscale remark (neighbouring levels differ by one) is [I], as F2 says.
V4.4 Theorem H.
 (i) μ = T_1F has a sup bound C_Tc_J‖F‖(L^jη)^{−3}w: CONFIRMED (Lemma 3, Theorem F (a); SOURCES_OFFSHELL_H_VERIFY V3.4–V3.5).
 (ii) H_0 term: CORRECTED in citation, CONFIRMED in form. (3.133) [image p. 422] is printed for Balaban's H, built from G with Δ′_π(J). In CMP 99 the J of (3.120) is tied to U through the regularity condition (3.36) (p. 422: "From the regularity condition (3.36) and the inequality (3.133) we have |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3}"). So "(3.133) at J = 0" is not a printed case at a general U. The H_0 bound follows from the same ingredients: H_0 = GQ*(QGQ*)^{−1}, (3.43) for G = Δ_a^{−1} (Thm 3.3 [image p. 399]), and the sup kernel of (QGQ*)^{−1} (R-001 family; the analogue of (3.132) [image p. 422]). By Lemma LD the Hölder seminorm falls on G, and the result has the (3.133) form [∇ line × (‖ζ‖^ξ_β + |ζ|)(L^jη)^{−β}]. The image confirms that (3.133) itself has this form: [1, (L^jη)^{−1}, (‖ζ‖^ξ_β + |ζ|)(L^jη)^{−1−β}].
 (iii) G_0μ term: CONFIRMED [image p. 399 Thm 3.3; p. 398 (3.43)]. The input of (3.43) is sup|λ| only, with supp λ ⊂ Δ(y′). The power count (L^jη)^{1−β}·(L^jη)^{−3} = (L^jη)^{−2−β} is right. The level shift (L^{j_1}η)^{−3} → (L^jη)^{−3} at cost e^{κd} is the Lemma 2.1 remark printed on p. 398 [image]: "we may replace the factor (L^jη)^α by (L^jη)^β(L^{j′}η)^γ".
 (iv) H_0ν term: CONFIRMED as [R], with the citation correction of (ii). |ν| ≤ |G_0μ| uses that Q is an average (sup-contractive for real U; 1 + O(Mα_0) for complex U′U). The normalization bookkeeping is not redone, as F2 says.
 "Only |J| enters": CONFIRMED.
 Remark (Balaban's G_1 needs (3.45) because the derivative is on the right; F needs only (3.43)): CONFIRMED [image p. 423].
V4.5 Per term and with s: CONFIRMED relative to (W-G̃) [R] and with c_m → c_G (V3.6).
V4.6 (3.31) for the F-built function: CONFIRMED as [R] to Balaban's "Obviously" (p. 276 [image]) and to CMP 116 p. 7 [image] "the product with t̃ζ̃_□ satisfies (I.3.31) with ½α_2". The interpolation |f(x′) − f(x)| ≤ 2^{1−β}d^{β/2}|f|^{1−β}|∇f|^β|x − x′|^β is right (min{a, b} ≤ a^{1−β}b^β) [P]. The condition becomes 4B_0^FC_1e^{c_Gκ_1}ε_1 ≤ ¼α_2. Dependence on (189): see §6 (the inner D, A_0 of H_k^F).

## 5. Inputs, canon entry, rate (F2 §5)

V5.1 Inputs 5.2. (W-G̃) "printed only as assertions: CMP 99 p. 416, p. 410 Cor. 3.8, CMP 116 p. 3": CONFIRMED [images] (V2.4). Add two notes: the M → M_1 re-localization of CMP 116 (1.6) is also an assertion; and the H_0 Hölder input is (3.43) for G plus the (QGQ*)^{−1} sup kernel, not "(3.133) at J = 0" (V4.4 (ii)). Add (G3) of SOURCES_MULTISCALE_OMEGA_SOURCED as an input of Theorem S. The rest of 5.2: CONFIRMED as listed.
V5.2 (CF) and M_F: CONFIRMED [P], with one addition.
 - Check of M_F: under WG-1 (α_0 ≤ c′M^{−1}M_1^{−10}, M ≥ 1), K_TL³α_0 ≤ (c_0/M_1)^5 holds if M_1^5 ≥ L³c′K_Tc_0^{−5}, and C_FL³α_0 ≤ ½ holds if M_1^{10} ≥ 2L³c′C_F. M_F = (2L³c′max{K_Tc_0^{−5}, C_F})^{1/5} gives both (if 2L³c′C_F < 1, the second holds for every M_1 ≥ 1). c′ (N-170), c_0 (N-150), K_T, C_F ((d, L) constants) are fixed before M_1 (N-270): no cycle.
 - Addition: C_Wρ_* ≤ ½, i.e. M_1 ≥ 2c_tagC_*c_0, at N-270 (V3.4).
 - "Whether CMP 109's J-bound α_0 is under the WG-1 cap is [I]; if not, add (CF) explicitly": CONFIRMED. The explicit cap α_0 ≤ (c_0/M_1)^5/(K_TL³) is admissible at N-370 (α_0 after M_1). The SOURCES_OFFSHELL_H cap a_F = 1/(2C_FL³) stays as the C_F part.
V5.3 s-rule M thresholds: CORRECTED. Replace "M ≥ 8c_mκ_1/δ_*, c_m = 4·3^d" by M ≥ 8·3^d(1 + L^{d−1})κ_1/δ_* (V3.6), in N-310. "M ≥ c_XM_1" is already implied by the N-310 entry M/M_1 ≥ 3(7 + c_X). κ_1 (N-090) and δ_* (N-150) precede M: no cycle. CONFIRMED.
V5.4 B_0^F, e^{16κ_1} → e^{c_Gκ_1}, B_3^F: CONFIRMED with one ordering correction.
 - B_0^F := max{B_0, 2C_WB_*(β_0)}: CONFIRMED; it is fixed with the walk constants (N-150/N-170 stage), κ_1-free.
 - In the ε_1-conditions of CMP 116, e^{16κ_1} → e^{c_Gκ_1}, c_G = 2·3^d(1 + L^{d−1}): CONFIRMED (ε_1 after κ_1).
 - CORRECTED: the localized constant B_3^{F,s} = B_3^F·O(1)e^{c_Gκ_1} depends on κ_1, so it cannot sit at N-060 (SOURCES_OFFSHELL_H_VERIFY V5.2 put B_3^F there). Keep B_3^F (κ_1-free) at N-060. Put B_3^{F,s} after N-090 and use it only in the localized bounds ((3.17) after localization and its consumers). Which of N-370, N-380, N-440, N-450 read the localized form was not checked [I]. Balaban's own localized bounds carry e^{16κ_1} in the same place (CMP 116 (1.21)), so the dependence is not new in kind.
V5.5 Rate. F2 states: the localized F-pieces decay at ¼δ_*, not at CMP 109's δ_0; project-wide question [I]. CONFIRMED as an open [I] item, with a sharpening. The factors ½ (θ = ½ in the concatenation lemma) and ½ (the s-rule split) are choices. For any θ, φ ∈ (0, 1) the same proofs give rate (1 − θ)(1 − φ)δ_*, at the cost c_1(θδ_*)^5 in K_T and M ≥ c_Gκ_1/(φδ_*). So any rate below δ_* is available. The open question is only whether δ_* (the smallest input walk rate) reaches the rate that CMP 109 (3.9), (3.17) use (½δ_0, δ_0 = ⅛δ_0 of CMP 102). Balaban's own (1.11) spends part of δ_0d(ω) on the s-rule and prints no surviving rate, so the question is the same for his H(s). Status: [I], project-wide, not specific to F.

## 6. Dependence on the (189) off-shell item (SOURCES_R005_189_VERIFY)

SOURCES_R005_189_VERIFY: under the literal reading (ii), V of CMP 102 (80) contains Δ_π(J)H, and the off-shell sup entries of δ𝒜_0/δB (used by Theorem E of SOURCES_OFFSHELL_H) rest on (189) at off-shell points, which is open (∇G′∇*-on-J). I did not try to settle it. F2 statements sorted by dependence:
- Independent (concern F alone; inputs G̃_0, H_0, G′, R, C′, Γ_J, Theorem F (a), Lemma 3, Lemma K): Lemma LD; Theorem W (W1)–(W4); Theorem S (S1)–(S3); Theorem H; Proposition C; 4.2; 4.5; QF = I in 1.5. Theorem F of SOURCES_OFFSHELL_H does not use Theorem E or (189).
- Dependent under the literal reading:
 - Proposition N: (1.13)–(1.16) evaluate Balaban's D(H(s), A′), V and A_0 at off-shell (U, J), through CMP 102 Prop. 4 (98). V contains Δ_π(J)H. Whether Prop. 4 (98) itself needs the off-shell kernel of Δ_π(J)H beyond a sup bound was not checked [I]; the dependence is at least possible.
 - 3.8 (3.9) bullet: X_F contains δ𝒜_0/δB and ⟨𝔇(…), …⟩; their off-shell sup entries are exactly the item of SOURCES_R005_189_VERIFY. Certain.
 - 3.8 (3.14) bullet and 4.6 ((3.31)): the size of H_k^F (or H_j^F) uses |D(H_0B′ + A_0)| and |A_0| off-shell. Same status as Proposition N.
 - 5.1 last three sentences, 5.4 statuses, §7 "closed relative to the inputs": inherit through the above.
- Under reading (i) of SOURCES_R005_189_VERIFY (printed right sides of (87)–(89) at (U, J)) all dependent items are [R] to (3.132)–(3.133) at (U, J).

## 7. Grade table

| F2 claim | Grade |
|---|---|
| §1 quotes CMP 116 pp. 2–7, CMP 109 pp. 271–276, 285 | CONFIRMED [images] |
| 1.4 (3.32) doubles the constant (p. 277) | not checked; unused |
| 1.5 target H_k^F(B′) in (3.22), (3.25) | CONFIRMED |
| 1.5 QF = I, QA_0 = 0 off-shell (Q of H_0) | CONFIRMED [P] |
| 1.5 Q_j(ηH_k^F) = Q_j(ηH_k) for the Q_j of (3.22) | CORRECTED: only for the Q of H_0; not needed |
| 1.5 (3.27) H_{k+1}(□_0, ·) has no J | CONFIRMED [image p. 275] |
| 2.2 concatenation lemma; c_1 M_1-free | CONFIRMED |
| 2.3 Lemma LD | CONFIRMED [P] |
| 2.4 (W-G̃) printed only as assertions (p. 416, p. 410, CMP 116 p. 3) | CONFIRMED [images]; add: M → M_1 re-localization also asserted |
| 2.4 Δ_U line for J-free G; Thm 3.12 exception only for J-dependent G, G_1 | CONFIRMED [images pp. 397–399, 423] |
| 2.4 G_0 name use | CONFIRMED in reading; name clash noted |
| 3.1 terms of F | CONFIRMED |
| 3.2 merging Γ_J, band ¼M_1 | CONFIRMED [P] |
| 3.3 ≤ 5 junctions per insertion | CONFIRMED [P] |
| Theorem W (W1) | CONFIRMED relative to inputs; c_sc [I] (C0) |
| Theorem W (B2), C_W | CONFIRMED [P-sketch]; missing threshold M_1 ≥ 2C_Wc_0 added |
| Theorem W (W2)–(W4) | CONFIRMED |
| 3.5 only |J|; no two-sided derivative block | CONFIRMED |
| Theorem S (S1), (S3) | CONFIRMED; σ_0 covering of the complement of □̃^4 [I, Balaban's geometry] |
| Theorem S (S-b) cube count | CORRECTED: invalid step in d ≥ 2; use (G3), m ≤ 2·3^d(1 + L^{d−1})(1 + ℓ/M) |
| Theorem S (S2) constant e^{4·3^dκ_1}, (S-M) | CORRECTED: e^{2·3^d(1+L^{d−1})κ_1}; M ≥ 8·3^d(1 + L^{d−1})κ_1/δ_* |
| Theorem S overall | [P] relative to (G3) [R] and Theorem W inputs |
| Proposition N | CONFIRMED relative to CMP 116 pp. 5–7 [R], constant per V3.6; depends on §6 |
| 3.8 target H_k^F | CORRECTED: target is H_j(B(t)), δH_j (non-fundamental case); transfer [P-sketch] |
| 3.8 rate ¼δ_* vs ½δ_0 | open [I], project-wide (V5.5) |
| 4.1 norm (3.40), ξ-scale cutoff | CONFIRMED [images] |
| 4.2 lattice route loses L^{jβ} | CONFIRMED [P] |
| Proposition C | CONFIRMED [P]; multiscale remark [I] |
| Theorem H (i), (iii) | CONFIRMED [images p. 398–399] |
| Theorem H (ii) "(3.133) at J = 0" | CORRECTED in citation: Thm 3.3 (3.43) for G + (QGQ*)^{−1} sup kernel; form CONFIRMED |
| Theorem H (iv) | CONFIRMED as [R] (bookkeeping not redone) |
| 4.4 Remark on (3.45) for G_1 | CONFIRMED [image p. 423] |
| 4.5 per term and with s | CONFIRMED relative to (W-G̃), c_m → c_G |
| 4.6 (3.31) via "Obviously"; interpolation | CONFIRMED [R]; interpolation [P]; depends on §6 |
| §0 "relative to the inputs of §6.1" | CORRECTED: read 5.2 |
| 5.1 summary | CONFIRMED with the corrections above (c_m, 3.8 target, (189) dependence) |
| 5.3 (CF), M_F | CONFIRMED [P]; add C_Wρ_* ≤ ½ |
| 5.3 s-rule thresholds | CORRECTED constant (V5.3) |
| 5.3 B_0^F, e^{16κ_1} → e^{c_Gκ_1} | CONFIRMED |
| 5.3 B_3^F with factor e^{c_Gκ_1} | CORRECTED in placement: B_3^{F,s} after κ_1 (N-090), not N-060 |
| 5.3 rate ¼δ_* | CONFIRMED as open [I]; any rate < δ_* is reachable by the θ, φ choice |
| 5.4 "closed relative to 5.2" | CORRECTED: see §8 |
| 5.4 coordinator note on Theorem E / (189) | CONFIRMED; scope made precise in §6 |
| §7 report "e^{4·3^dκ_1}" | CORRECTED: e^{2·3^d(1+L^{d−1})κ_1} |

## 8. Safe statuses

R-010, off-shell item, safe text: "Off-shell (CMP 109 variable J), F-extension (SOURCES_OFFSHELL_H, SOURCES_OFFSHELL_F2, both verified with corrections).
 (a) Localization: F has a walk expansion of CMP 116 (1.7) form with derivatives on the first block only (Theorem W), and the CMP 116 s-rule gives F(s) with constant e^{2·3^d(1+L^{d−1})κ_1} (Theorem S, with the verified cube count (G3)). PROVED relative to (W-G̃) [printed assertions CMP 99 (3.108), Cor. 3.8, CMP 116 p. 3; project WG_FULL / A1-W], (W-Λ) and the concatenation lemma. The localized pieces satisfy CMP 109 (3.14) with ⅓α_2 and the (3.9) form [P-sketch: transfer of Proposition N to H_j^F(B(t)), δH_j^F].
 (b) Hölder: ‖ζ∇F‖_β ≤ C(‖ζ‖^ξ_β + |ζ|)(L^jη)^{−β}·(∇ size) with sup|J| only (Theorem H), and ‖·‖_{1,β} by Proposition C. PROVED relative to CMP 99 Thm 3.3 (3.43), the (QGQ*)^{−1} sup kernel and (W-G̃). (3.31) then holds for (t̃ζ̃_□ + t_□ζ_□)H_k^F(B′) as for H, relative to Balaban's 'Obviously' (CMP 109 p. 276) [R].
 Open: (i) the inner off-shell entries (D, 𝒜_0, V, δ𝒜_0/δB at (U, J)) inherit the (189) item under the literal reading (SOURCES_R005_189_VERIFY); Proposition N, (3.14)/(3.9) for the localized pieces and (3.31) depend on it; Theorems W, S, H do not. (ii) Decay rate of the localized pieces: any rate below the input walk rate δ_* is available; whether δ_* reaches CMP 109's ½δ_0 is [I], project-wide (Balaban's own H(s) has the same question). (iii) c_J = L³α_0 unchecked.
 Cost: M_1 ≥ max{M_F, 2C_Wc_0}(d, L); M ≥ 8·3^d(1 + L^{d−1})κ_1/δ_*; B_0 → B_0^F; e^{16κ_1} → e^{2·3^d(1+L^{d−1})κ_1} in the CMP 116 ε_1-conditions; B_3^{F,s} after κ_1."
 Grade name unchanged. Do not write "closed": the off-shell item is reduced to (i)–(iii). Residue R2 keeps it in this form.
R-014, safe text: "The factor 1/r of (3.17) uses the max of (3.15); after localization, items (a), (b) of R-010 apply with the same inputs and the same open items (i)–(iii) [SOURCES_OFFSHELL_F2, verified with corrections]." Its own status (asserted (Balaban), constant unspecified, the t_□-derivative factor O(1)α_2^{−1}ε_1) is unchanged; with F the factor reads O(1)B_0^Fe^{2·3^d(1+L^{d−1})κ_1}α_2^{−1}ε_1 (from (1.22)).

## 9. Report

PASS WITH CORRECTIONS. Theorem W (walk expansion of F, ≤ 5 junctions per insertion, derivatives on the first block) is confirmed relative to the inputs. Theorem H and Proposition C are confirmed; the lattice route does lose L^{jβ}. Corrections: the cube count of Theorem S has an invalid step, so use the verified (G3), with constant e^{2·3^d(1+L^{d−1})κ_1}. The (3.14)/(3.9) target is H_j(B(t)), not H_k. The H_0 Hölder bound comes from (3.43), not "(3.133) at J = 0". Add M_1 ≥ 2C_Wc_0. Proposition N, 3.8 and (3.31) inherit the (189) item; W, S, H do not.
