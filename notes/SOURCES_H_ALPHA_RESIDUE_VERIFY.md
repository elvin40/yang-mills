# SOURCES_H_ALPHA_RESIDUE_VERIFY — adversarial check of SOURCES_H_ALPHA_RESIDUE.md, and K_U settled

Date 2026-10-29. Author: Claude (Opus 5.5), verifier. Ids follow IDS.md. Only this file was written. No existing file was edited. PLAN.md was not appended. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Grades for claims of the checked file: CONFIRMED (holds as written); CORRECTED (needs the change given here); UNSUPPORTED (no support found). Grades for new statements: [V] read on a page image in this session; [P] proved here; [P-sketch] one routine step not written out; [R] reduced to a named printed statement or ledger row; [I] reading or inference.

## 0. Inputs

Files read: OPUS_QUEUE.md l. 1–15; IDS.md (R-, K- tables); SOURCES_H_ALPHA_RESIDUE.md (all); SOURCES_H_ALPHA.md (all); SOURCES_H_ALPHA_VERIFY.md (by grep: V14, V15, V22, V23, residue list); SOURCES_ORDER_CANON.md lines N-060, N-070, N-090, N-310, N-370, N-380, N-390, N-400, N-410, N-420, N-470 and greps for C_i^{116}, M^q, (1.36); SOURCES_HIGHER_M1.md l. 142; SOURCES_MC.md l. 104; WG_FULL_VERIFY.md l. 30; SOURCES_L1_F.md §5.4 (by grep); TRUST_LEDGER.md rows R-005, R-018, R-019, R-037, R-038, R-040, R-042; SOURCES_R005_DD.md (all); SOURCES_R005_DD_VERIFY.md (verdict, V1–V3); SOURCES_A1_A4_VERIFY.md (5) and l. 151 of SOURCES_A4_D189.md (by grep); SOURCES_A17_A19_VERIFY.md V6–V7; SOURCES_T2_HMINUSC.md and _VERIFY.md (K1–K4, by grep).
Page images read this session (pdftoppm -r 150, fresh folder /tmp/hares_v_ZQU0, deleted after use; journal page, PDF page in brackets):
- CMP 116 pp. 2–12 [2–12], 15–21 [15–21].
- CMP 109 pp. 260–267 [12–19], 271–272 [23–24].
- CMP 119 pp. 265–269 [23–27].
- CMP 122 II p. 380 [26].
- CMP 102 (variational) pp. 281 [5], 297–299 [21–23], 305–309 [29–33].
Text layer used only to locate equations (CMP 102 l. 185–215, CMP 109 l. 1100–1275).

## 0.1 Verdict in short

Part 1. Item (2) is CONFIRMED, with two small CORRECTIONS to the symbol table (C_2 also occurs in (1.20) and (1.43)) and one CORRECTION of weight (the (1.36) constants are "absolute" in Balaban's print; the N-395 slot is a safe bookkeeping choice that the canon's κ_1-dependent α-caps make necessary, not a page fact). Item (3) is CONFIRMED. One supporting argument is CORRECTED: (3.19) does not separate the two readings. A stronger argument is added: under the literal reading Balaban's own large-field factor on CMP 122 II p. 380 could not beat the O(log g_j^{−2}) entropy cost printed on the same page. Item (4) is CONFIRMED: (1.12) at U = 1, K_2 ≤ 468M^6 (κ ≥ 228) and ≈ 9M^6 (κ ≥ 1536), and the non-locality correction. Balaban states the non-locality himself (CMP 116 p. 2) and handles the same composition with the decay of δH/δB (CMP 109 pp. 271–272).
Part 2. K_U is settled as a reduction to existing ledger rows. (K_U-1) is CMP 102 (190) at the real point (U_0, B) = (1, 0) [V statement; proof R-005 and SOURCES_R005_DD, verified]. (K_U-2) is proved here (Lemma 2, a symmetrized Cauchy step) from (190) on a complex disc in B, i.e. from R-019 (case K2, or the fallback K4 with rate × 0.59). Item (a), "the J bound for complex fields", is not needed: the Cauchy step of the β extraction runs in the (U, J) variables of E(X), where J is free; J(B) enters only through its Taylor coefficients at the real point B = 0, which are D*D-entries of (190). No new [I] item enters. Two local constants (c_□, c_F) stay [P-sketch].

## 1. Part 1, item (2): CMP 116 order of constants

V1.1 Page facts of §1.1 of the checked file. CONFIRMED, item by item, on the images, with these notes.
- p. 3: R_1 a power of L with R_1M_1M^{−1} ≤ 1; (1.7) walk bound O(1)O(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}exp(−δ_0d(ω, y, y′)), "they determine the constant B_0". CONFIRMED.
- p. 5: δ_1 "depending on δ_0 only", δ_1M ≥ κ_1; κ_1 "a sufficiently big positive number"; (1.13) with 4C_2B_0e^{16κ_1}ε_2 ≤ 1. The page does not say "C_2 from [15]" in words; it recalls "Sect. C [15]" before (1.13). Harmless.
- p. 6: ε_3 conditions; (1.18) "and the same bound for all admissible norms"; (1.20) |B′| ≤ O(1)g_k|B| + 4C_2(O(1)g_k|B|)² ≤ C_1g_k|B| < C_1ε_1, "C_1 is an absolute constant". CONFIRMED.
- p. 7: (1.21) "if e^{32κ_1}ε_1 is smaller than an absolute constant"; "We assume that 4B_0C_1e^{16κ_1}ε_1 ≤ ¼α_2"; (1.24) carries 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B|E_0(α_1/α_3)^5(L^jη)^5. CONFIRMED.
- p. 8: (1.26), (1.27), (1.28); (1.29) |Σ(1.23)| ≤ E_0ε_1O(M^q)exp O(1)κ_1 exp(−(1/16)κ_1d_k(Y)), "absolute constants O(1), q … q … can be easily calculated from the conditions on α_1, α_2, α_3"; "Another possibility is to use the expression g_k|B| instead of ε_1". CONFIRMED (the file omits the last exponential of (1.29); harmless).
- p. 9: (1.32) conditions; Lemma 1, (1.34), (1.36) "There exist absolute constants C_1, C_2, q". CONFIRMED.
- pp. 10–11: (1.39) "C_3 is an absolute constant"; (1.43) |Q(Y, B, b, b′)| ≤ C_3ε_1M^4exp C_2κ_1(…); p. 11 "possibly with other absolute constants". CONFIRMED.
- p. 12 (2.3), p. 15 (domains free of ε_1), p. 16 ((2.16)–(2.22), "C_3 ≤ E_0C_1, and q ≥ 8"), p. 17 (α_5), p. 18 ((2.27)–(2.31), "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1"), p. 19 (ε_2, exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2), p. 20 (C_3, Lemma 3 list), p. 21 ((2.39)–(2.41), δ, E_0). All CONFIRMED.
- CMP 109 p. 264 Theorem 3 quote. CONFIRMED.

V1.2 Symbol reuse (§1.2). CONFIRMED in substance, CORRECTED in completeness. C_2 occurs also in (1.20) (the (1.13) constant, inside 4C_2(O(1)g_k|B|)²) and in (1.43) (exponent constant exp C_2κ_1, the (1.36) role). C_3 of (1.43) may differ from C_3 of (1.39) (p. 11: "possibly with other absolute constants"). The split "C_1^{(1.20)} versus C_1^{(1.36)}" is a reading [I]. A single C_1 is also consistent: (1.24) carries 8B_0C_1^{(1.20)}e^{16κ_1}, and the factor 8B_0 can be absorbed into exp C_2κ_1 (κ_1 ≥ 1). Under either reading C_2 and q must dominate the α-prefactors of (1.24). So the conclusion of 1.2 does not depend on the reading.

V1.3 The order O0–O9 (§1.3). CONFIRMED [P from the printed directions], with one CORRECTION of weight at O6.
- O1: E_0 := 2 × (absolute constant of the log Z^{(k)} bound), p. 21 [V]. C_3 of p. 20 is proportional to E_0 [V], so O(1)C_3ε_1 ≤ ½E_0 is an upper bound on ε_1, as the file says. Balaban's remark ("we can take E_0 such, that the assumption is satisfied") is wrong in form, because E_0 cancels; the file's arithmetic is right. CONFIRMED.
- O2–O5, O7–O9: CONFIRMED against the quotes of V1.1.
- O6: CORRECTED in wording. The page says "absolute constants C_1, C_2, q" (p. 9) and "absolute constants O(1), q" (p. 8). So "fixed after the α's" is not a page fact. It is a safe and, in this project, needed choice: in Balaban the α's are absolute numbers times powers of M; in the canon N-370 they also carry the cap Mα_0 ≤ a(κ_1) with a(κ_1) ∝ e^{−2cκ_1} (WG_FULL_VERIFY l. 30) and ratios such as α_3 ≲ α_0, α_2 ≲ α_3 chosen at N-370. Then α_2^{−1}(α_1/α_3)^5 in (1.24) contains e^{c′κ_1} and N-370 prefactors, which C_2 and C_1 must absorb. So C_1^{(1.36)}, C_2^{(1.36)}, q must be fixed after N-370 [P]. The lower bounds q ≥ 8 and C_3^{(1.43)} ≤ E_0C_1 (p. 16) are printed [V].
- Final order E_0 → κ → κ_1 → M → α's (α_6 any time after κ) → C_1, C_2, q → ε_1 → ε_2 (defined) → γ. CONFIRMED. It agrees with SOURCES_MC l. 104 [read].

V1.4 Match with SOURCES_ORDER_CANON (§1.4). CONFIRMED.
- N-060 contains E_0 "(absolute; may go first)" and "C_i^{116} (CMP 116 (1.20)–(1.22) constants)" [read]. N-070 κ, N-090 κ_1 (with ⅛(κ_1 − 1) ≥ (1 − 3δ)κ and ½(κ_1 − 1) ≥ 2Lκ), N-310 M, N-370 α-chain with α_4, γ_2, α_6, N-400 ε_1 with C_3^{116} built from C_1, C_2, q, α_4, α_6, M, E_0, N-470 γ with (Hγ) and (2.31) [read].
- Implications: ⅛(κ_1 − 1) ≥ (1 − 3δ)κ ⇒ ¼(κ_1 − 1) ≥ 2(1 − 3δ)κ ≥ (1 − δ)κ iff δ ≤ 1/5; canon δ = 0.025. ½(κ_1 − 1) ≥ 2Lκ ⇒ κ_1/16 ≥ Lκ/4 ≥ κ ≥ (1 − 2δ)κ for L ≥ 4. 96κ_1/δ_0 ≤ M ⇒ δ_0M/3 ≥ 32κ_1 > 16κ_1. These three entries are in HIGHER_M1 l. 142 [read]. CONFIRMED [P].
- No line before N-400 uses C_1^{(1.36)}, C_2^{(1.36)}, q or ε_2 (grep of the canon for C_i^{116}, M^q, (1.36): only N-060 and N-400) [P]. No N-370 condition contains these constants (α_4 enters (2.18)–(2.20) and α_5; α_6 enters (2.29); neither condition has C_1, C_2, q) [V pp. 16–18].
- Proposed line N-395 (after N-390, before N-400). CONFIRMED as acyclic and as needed. Add to its text: "C_2 of (1.43) is the same exponent constant (p. 11); C_2^{(1.36)} ≥ C_2^{(1.43)}". N-060 keeps C_1^{(1.20)}, C_2^{(1.13)}, C_4, C_3^{(1.39)}.

V1.5 Per-step cut compatible with the canon (§1.5). CONFIRMED [P given V1.3].
- The background domains (1.34), p. 15 contain no ε_1 [V].
- B13 at r_k: LHS exp(−(γ_2A_1²/20)(log x^{−2})^{2p_0}) is smaller than every power of x because 2p_0 > 1; RHS c_2r_k ≥ c_2x once A_1(log x^{−2})^{p_0} ≥ 1. So B13 holds for all x ≤ γ when γ is small [P].
- CMP 109 p. 266 prints the alternative "g_k/γ_kε_1 instead of ε_1, where γ_k = C log(L^kε)^{−1}" [V]; CMP 116 p. 8 prints "g_k|B| instead of ε_1" [V]. CONFIRMED.
Grade of (R2): CLOSED [V + P], as the file says, with the O6 wording of V1.3.

## 2. Part 1, item (3): CMP 119 (3.16) = CMP 109 (2.9) in the CMP 116 (2.3) form, ε_1 → δ_k

V2.1 Page facts of §2.1. CONFIRMED on the images.
- CMP 109 p. 265: (2.3) V^{(k)} = Ū^k_{k+1} = M^k(U_{k+1}); "the characteristic function χ_k and the δ-functions in (2.1) restrict the variables B′ = (1/i)log V′ to a sufficiently small neighborhood of 0"; U_k^{u_k^{−1}} = exp iηH_k(B′), "regular and of the same order as B′".
- CMP 109 p. 266: (2.9) χ_k = Π_{b∈T^{(k)}\{b_0(c): c∈T^{(k+1)}}}χ({|B′(b)| < ε_1}); the g_k/γ_kε_1 alternative.
- CMP 109 p. 267: "with the constant ε_1 replaced by O(ε_1)" on the bonds b_0(c); "The function hB is equal to 0 everywhere, except the set {b_0(c)}"; B′ = B − hD̃(B); "Next we make the scaling transformation B = g_kB′".
- CMP 116 p. 9 (1.34), p. 12 (2.3) with Y_0^{c*} = {b ⊂ Y_0^c} \ {b_0(c)}, p. 16 (2.22).
- CMP 119 p. 265 (3.3) with 2δ_k on (□′~2)^{(k)*}, δ_k = g_kA_1/A_0p_0(g_k); p. 266 (3.10), (3.11); p. 267 (3.12)–(3.14) and "we perform the scaling transformation A′_k = g_kA_k", Gaussian −½⟨A_k, C*Δ^{(k)}CA_k⟩; p. 268 (3.15), (3.16), (3.17)–(3.19); p. 269 "only the small field characteristic functions from (3.16)".
- CMP 122 II p. 380: the three factors exp(−γ_0(1/2g_j²)(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|), exp(−½γ_0(1/g_j²)(2δ_j)²(LM_2R_j)^{−2}|Q_j|) "by expanding the Wilson action locally in the approximate fluctuation field, and using the positivity bound for the resulting quadratic form", and exp(−γ_0(1/g_j²)δ_j²(LM_2R_j)^{−d}|R_j|) for χ^{(j−1)c}(R_j) "by the same positivity bound for the quadratic form". The same page prints that every large-field domain Z_j costs "O(1)log g_j^{−2}|Z_j|".

V2.2 Comparison (a)–(f). (a) background: CONFIRMED [V]. (b) bond set "*": CONFIRMED as [I] with printed support (same notation on CMP 116 p. 12). (c) product of one-bond cuts: CONFIRMED [P]; the sup over overlapping bond sets (□′~2)^{(k)*} gives the indicator of the union. (d) variable: CONFIRMED; hD̃ = 0 off {b_0(c)} is [V]; "C = identity off {b_0(c)}" stays [I]; SOURCES_A17_A19_VERIFY V7 (1) grades the same item "[I, strong; forced by (2.3)]". (f) radius: CONFIRMED.

V2.3 (e) scale. CONFIRMED, with one supporting argument CORRECTED and one added.
- CMP 122 II p. 380 argument: CONFIRMED. The (3.3) factor carries (1/g_j²)(2δ_j)² and comes from the Wilson action (1/g²)A(U) on a cut of a group element, i.e. a cut on the physical field. The (3.16) factor is printed with the same structure, (1/g_j²)δ_j², "by the same positivity bound". In the scaled variable A_j (Gaussian ½⟨A, C*ΔCA⟩ with no 1/g², CMP 119 p. 267 [V]) a cut |A_j| ≥ δ_j would give exp(−cγ_0δ_j²). So the printed factor needs |g_jA_j| ≥ δ_j [P].
- (3.19) as support: CORRECTED. (3.19) shows that the (3.3) function equals 1 on the small-field set. Under the literal reading the physical fluctuation is < g_kδ_k ≪ δ_k, so (3.19) holds a fortiori. So (3.19) is consistent with both readings and does not separate them.
- Added argument [P from V2.1]. Under the literal reading the R_j factor would be exp(−γ_0δ_j²(LM_2R_j)^{−d}|R_j|) = exp(−γ_0g_j²A_1²(log g_j^{−2})^{2p_0}(…)|R_j|) (δ_j = g_jA_1(log g_j^{−2})^{p_0}), which tends to 1 as g_j → 0. It could not compensate the cost O(1)log g_j^{−2}|Z_j| printed on the same page. With the physical reading the factor is exp(−γ_0A_1²(log g_j^{−2})^{2p_0}(…)), which does; this is also the form behind the canon condition N-420 (γ_0A_1² ≥ 8 + 4 log F). So the literal reading is refuted by Balaban's own large-field estimate.
- θ_k = δ_k/g_k = A_1(log g_k^{−2})^{p_0}: CONFIRMED (δ_k = (A_1/A_0)g_kp_0(g_k), p_0(g) = A_0(log g^{−2})^{p_0}; CMP 119 (3.9) prints O(1)δ_k = O(1)(A_1/A_0)ε_k, consistent with ε_k = g_kp_0(g_k)).

V2.4 Verdict §2.3. CONFIRMED. (R3) is [V + P], with two notational [I] items ("*" bond set; C = I off {b_0(c)}). These enter Proposition A only through the upper bounds on the cut and the ratio cut/g_k, so they do not change it.

## 3. Part 1, item (4): (1.12), K_2, and the non-local extraction

V3.1 Page facts of §3.1. CONFIRMED on the images: CMP 109 p. 260 (1.2) and the B_3^{−1}ε_0 sentence; p. 261 (1.7)–(1.9) and "first order derivatives and the special second order derivative"; p. 262 (1.10)–(1.16); p. 263 (1.17), "Usually we consider spaces with γ_0 = α_0", the J = D*ξ^{−2}π Im∂U, |J| < α′_0 special case, (1.18), (1.19) for "all G^c-valued gauge transformations u"; p. 264 (1.20)–(1.22), "This limit exists by the localized representation (1.7)"; pp. 265–266 H_k(B′) and u_k analytic for |H_k| < a_1; CMP 116 pp. 2–6 (1.2)–(1.18); p. 18 (2.30); CMP 119 p. 266 "By the exponential decay property (190) [15]".

V3.2 (1.12) is trivial at U = 1 (§3.2). CONFIRMED [P from V3.1]. With 𝐔 = U′U, U := 1: (1.11) and (1.12) hold with u = 1, A = 0; (ii) needs 𝐔 = exp iξA′ with |A′|, |∇^ξA′| < α_1 (∇^ξ_U = ∇^ξ at U = 1); (iv) for U = 1 is trivial (U_n(M′(1)) = 1, J_n = 0). The spaces are unions of G^c-orbits and E is G^c-gauge invariant (1.19). One addition: the real part of the test field is carried by A′, so the test radius is limited by α_1 as well as by α_0; §3.5 of the checked file does use r_0 ≤ α′_1.

V3.3 The extraction E ↦ β is not local (§3.3). CONFIRMED [V + P]. SOURCES_L1_F §5.4 writes Π(x) = Σ_{X∋0,x}∂²E(X)/∂B(0)∂B(x) [read]. By (1.20) B enters through U_{j+1}(exp iB), which depends on B on the whole lattice. Without decay of that map the bound Σ_xx²Σ_X(per-X Cauchy bound) diverges. Balaban says the same: CMP 116 p. 2 [V]: "Substituting A = (tζ̃_□ + t_□ζ_□)H_k(B′) we introduce, through the function H_k(B′), a dependence on U, J, B on the whole lattice. Our problem is to localize the obtained function". CMP 109 pp. 271–272 [V] treats the same composition, E^{(j)}(X, U_j(exp iB_□Ū^j_{k+1})) = E^{(j)}(X, exp iξH_j(B_□)U_{k+1}) (3.6), and bounds it with "The derivative (δ/δB)H_j is an exponentially decaying function, with the decay rate δ_0 on the ξ-scale, see Proposition 9, (190) [15]". So the correction is right, and the needed decay is the one Balaban uses.

V3.4 K_U restated (§3.4). The structure (two kernel bounds at B = 0, including J) is CONFIRMED. The "Sources and grades" are CORRECTED by §4 below: the decay is printed for the first-order kernel ((190)), and the J part does not need a complex J bound.
- Curvature by BCH, c_□ [P-sketch]: CONFIRMED as stated.

V3.5 The bound on β (§3.5). CONFIRMED [P given Proposition A, (K_U), c_□].
- Step 1. α′_0 = α_0/(2max(1, 2B_3)) gives 2B_3α′_0 ≤ α_0/2 < α_0 and α′_0 < α_0. With |t|, |s| < r_0/2: |A′|, |∇^ξA′| < r_0 ≤ α′_1; |J| < r_0 ≤ α′_0; |∂𝐔 − 1| ≤ 2c_□r_0ξ² ≤ α′_0ξ². Then p. 263 gives (iv). The test pair is off-shell (J free); E(X) is defined there by (1.9) and p. 262. CONFIRMED.
- Step 2. Bidisc radius r_0/2 gives (2/r_0)²; the one-direction bound uses the disc |t| < r_0, on which Step 1 also holds (|tw| < r_0); so 1/r_0 is right. CONFIRMED.
- Step 3. Chain rule ∂_1∂_2(E∘Φ)(0) = D²E(0)[∂_1Φ, ∂_2Φ] + DE(0)[∂_1∂_2Φ]; the bound cE_0e^{−κd(X)}K_U(4K_U/r_0² + 1/r_0)e^{−δ_U(dist(0,X)+dist(x,X))}. CONFIRMED.
- Step 4. The map x ↦ (u(x), x − u(x)) with a fixed choice of nearest point u(x) ∈ X is injective; Σ_x|x|²e^{−δ_U dist(x,X)} ≤ 2|X|(S_0R_X² + S_2); grouping by u_0 gives the factor S_2K_2. CONFIRMED. Notation: if (K_U-1) and (K_U-2) have different constants K^{(1)}, K^{(2)} (§4), C_Π = 2(S_0 + S_2)S_2(4(K^{(1)})²/r_0² + K^{(2)}/r_0)K_2.

V3.6 K_2 (§3.6). CONFIRMED [P given (2.30) [V] and the reading of D_j as connected unions of M-cubes [I, mild]].
- |X| = nM^4, diam X ≤ 2nM, |X|(1 + diam X)² ≤ nM^4(3nM)² = 9n³M^6.
- d_j(X) ≥ (n − 1)/24: (2.30) for n ≥ 2; trivial for n = 1. The printed (2.30) is contradictory at n = 1 (1/24 ≤ d ≤ 0) [V p. 18]; the file avoids that point. CONFIRMED.
- Count ≤ 81^{2(n−1)} by the depth-first encoding of a spanning tree (2(n − 1) steps, 81 choices each). CONFIRMED.
- Σ_{n≥1}n³r^{n−1} = (1 + 4r + r²)/(1 − r)^4 [P]. r = 6561e^{−κ/24} ≤ ½ iff κ ≥ 24 ln 13122 = 227.57. At r = ½: 9·(3.25)·16 = 468. At κ = 1536: r = 6561e^{−64} = 1.05·10^{−24}, K_2 ≤ 9M^6(1 + 8.4·10^{−24}). CONFIRMED (the file's "1 + 10^{−23}" is a valid upper bound).

## 4. Part 2: K_U settled

4.1 Printed inputs [V, images this session].
- CMP 102 p. 281 (19)–(21): U_1 = e^{iηA}, |A| < ε_2(L^jη)^{−1}, |∇^η_{U_0}A| < ε_2(L^jη)^{−2}, |D^{η*}_{U_0}D^η_{U_0}A|, |Δ^η_{U_0}A| < ε_2(L^jη)^{−3} on Ω_j; Q_j(U_0, ηA) = B on Λ_j; R(U_0)D^{η*}_{U_0}A = 0.
- CMP 102 p. 297–299: (129) H_0B = GQ*(QGQ*)^{−1}(L^{j(·)}η)^{−1}B with G = Δ_a^{−1}, Δ_a = Δ + DRD* + Q*aQ; (130) |(Δ_{U_0}H_{0,μν})(x, y′)| ≤ B_0(L^jη)^{−3}(L^{j′}η)^{−d}e^{−δ_0d(y,y′)}; (137); (138) 2⟨A, Δ′_πHB⟩ = ⟨i[(G′RD*A)(b_−) + R_b(G′RD*A)(b_+), (HB)(b)], J⟩, which uses RD*H = 0; (139); (140) D*DHB = (D*D + DD*)HB − DPD*HB.
- CMP 102 p. 305: (172) |V′ − 1| < C_1ε_1, V′ = e^{iB′}, |B′| < 2C_1ε_1 on 𝔅_k; (173) ε_2 = B_5ε_1; (174)–(175).
- CMP 102 p. 306: (177) 𝓗 = H_1B − 𝔊((δ/δA′)V^{(3)})(H_1B) − HC^{(2)}(H_1B) + ⋯ (the printed second-order term); (179), (180); p. 307: "the function 𝓗(B) is an analytic function of g^c-valued configurations B defined on 𝔅_k and satisfying (172)"; (182)–(184); p. 308: (185)–(189), "We do not perform these calculations here … let us formulate a final result only", and (190): |δ𝓗_μ(B, x)/δB_ν(y′)|, |∇_x δ𝓗_μ/δB_ν(y′)|, ‖ζ∇δ𝓗/δB(y′)‖_β, |D*_{U_k}D_{U_k}δ𝓗_μ/δB_ν(y′)|, |Δ_{U_k}δ𝓗_μ/δB_ν(y′)| ≤ O(1)[(L^jη)^{−1}, (L^jη)^{−2}, (‖ζ‖^ξ_β + |ζ|)(L^jη)^{−2−β}, (L^jη)^{−3}, (L^jη)^{−3}](L^{j′}η)^{−d}exp(−⅛δ_0d(y, y′)).
- CMP 102 p. 309, Prop. 9: U_k(V′V_0)U_k(V_0)^{−1} in the Landau gauge "is, by the definition, equal to exp iη𝓗(B), where B = 1/i log V′ … It is an analytic function of B, and also of the external gauge field configuration U … It satisfies the conditions (19)–(21) with ε_2 = B_5ε_1 … and its functional derivative (182) satisfies the inequalities (190)."
- CMP 109 p. 271 (3.6)–(3.9) and p. 272 (3.10)–(3.13): J′ = D*_{exp iξAU}ξ^{−2}π Im∂exp iξAU = D*_Uξ^{−2}π Im∂U + D*_UD_UA + F(U, A), "F is a local operator depending on U, ∂U, A, ∇^ξ_UA only"; "It is the term D*_UD_UA in this formula which is a source of a trouble. For A = H_j we have bounds for this second order operator, but only if we use the second representation for H_j connected with the Eq. (180) [15]."
- CMP 116 p. 2: the non-locality sentence (V3.3). CMP 119 p. 266: "(190) [15]".

4.2 Set-up [P from 4.1]. Whole lattice, step j + 1, trivial background. In CMP 102 take k = j + 1, V_0 = 1, U_0 = U_k(1) = 1, and Ω_0 = … = Ω_k = the whole lattice. Then Λ_k is everything, the blocks have size L^kη = 1 (unit lattice T^{(j+1)}), and every scale factor (L^jη)^p in (19) and (190) equals 1. The rate ⅛δ_0 is measured in unit blocks (CMP 109 p. 271 renames it δ_0 "on the ξ-scale"). Put
 Φ(B) := (𝓗(B), J(B)) on X,  J(B) := D*ξ^{−2}π Im∂ exp(iξ𝓗(B)),
with η = ξ = L^{−(j+1)}. Identity (I0): E^{(j+1)}(X)(U_{j+1}(exp iB)) = E^{(j+1)}(X)(exp iξ𝓗(B), J(B)) for B near 0. Proof: U_{j+1}(exp iB) and exp iξ𝓗(B) differ by a G^c-valued gauge transformation (Prop. 9, the Landau-gauge definition); E is invariant under G^c-valued gauge transformations, with J ↦ R(u)J (CMP 109 (1.10), (1.19)); and (1.9) evaluates E at J = J(U). The decomposition is U = 1, U′ = exp iξ𝓗(B) (V3.2) [P].
Linearization of J [P]. At U = 1, (3.11) gives J(exp iξA) = D*DA + F(1, A) with F(1, ·) local and analytic in (A, ∇^ξA). F(1, ·) has no linear term: by BCH, ξ^{−2}Im∂exp(iξA)(p) = (DA)(p) + O(|A|² + |A||∇A|) per plaquette, and D*_{exp iξA} − D* is O(|A|) times a first-order difference. So
 ∂_bJ(0) = D*D∂_b𝓗(0),  ∂_b∂_{b′}J(0) = D*D∂_b∂_{b′}𝓗(0) + F_2(∂_b𝓗(0), ∂_{b′}𝓗(0)),
with F_2 the local bilinear second differential of F(1, ·), |F_2(u, v)(x)| ≤ c_F max_{near x}(|u| + |∇u|)(|v| + |∇v|) [P-sketch: c_F not valued].

4.3 (K_U) exact statement. There are constants K^{(1)}, K^{(2)}, ρ_U > 0 and δ_U > 0, independent of j, X and the volume, such that for coarse bonds b, b′ of T^{(j+1)} and unit Lie directions:
 (K_U-0) Φ is analytic on {B : ‖B‖_∞ < ρ_U}, and (I0) holds there.
 (K_U-1) N_X(∂_bΦ(0)) ≤ K^{(1)}e^{−δ_U dist(b,X)}.
 (K_U-2) N_X(∂_b∂_{b′}Φ(0)) ≤ K^{(2)}e^{−δ_U(dist(b,X) + dist(b′,X))}.
Here N_X(v) = max(sup_X|v_A|, sup_X|∇^ξv_A|, sup_X|v_J|), as in §3.4 of the checked file.

4.4 Sources and grades.
(K_U-0) [V + P]. 𝓗 is analytic on the set (172) (Prop. 9, p. 307) [V]; J(B) is a local analytic function of 𝓗 [P]; (I0) [P]. ρ_U := the radius of R-019's case (below).
(K_U-1) [V statement; proof R]. Each N_X-entry of ∂_bΦ(0) is an entry of (190) at the real point (U_0, B) = (1, 0): sup and ∇ entries for the A′-part, the D*D entry for the J-part (4.2). So K^{(1)} = c_{190}e^{O(δ_0)} (the O(1) of (190), with a factor for d(y(x), y(b)) ≥ dist(b, X) − O(1)) and the rate is ϑ_0 := ⅛δ_0. Proofs: the sup entry is R-005 (verified reduction: A4_D189 §6.3 [P given (189)], (189) itself not proved by Balaban, p. 308 [V]); the ∇ entry is SOURCES_L1_C 6.4 (verified); the D*D entry is SOURCES_R005_DD Theorem DD (verified 2026-10-29, SOURCES_R005_DD_VERIFY V3.12) on-shell. The point (1, 0) is real and on-shell (J(1) = 0), so no complex-J input enters. Only real B = 0 is needed: R-019 is not used here.
(K_U-2) [P given R-019 and SOURCES_R005_DD]. Lemma 2 below, with δ_U := ϑ/2, where ϑ is the rate of (190) on a complex disc:
 - case K2 of R-019 (complex (189) reading [I]): ϑ = ⅛δ_0, ρ_U = ½C_1^{102}ε_1^{102};
 - case K4 of R-019 (no complex reading; two-constants from real (189) and the printed complex sups (187), (55)): ϑ = 0.59·⅛δ_0, ρ_U = ⅛C_1^{102}ε_1^{102} (SOURCES_T2_HMINUSC §3.1, VERIFY; SWEEP_DE_VERIFY l. 158).
 The ∇ and D*D entries at complex B follow from the sup entry at complex B by SOURCES_R005_DD Theorem Δ/DD, because the operators are built at the real on-shell background U_0 = 1 (R005_DD §5 hypothesis "U real …; B in the analyticity ball … (real or complex)") [R, verified]. Then
 K^{(2)} = c_ϑ/ρ_U + c_F(K^{(1)})²,
with c_ϑ the constant of (190) on the disc (case K2 or K4).
Here C_1^{102} = L³ and ε_1^{102} are CMP 102 constants (N-060, N-380 group). They are fixed before ε_1 of CMP 116 and do not depend on j, X or the volume. So K^{(1)}, K^{(2)}, δ_U are (d, L)-constants of the CMP 102 layer [P-sketch: the canon slot of ε_1^{102} as a fixed cap is a bookkeeping item].

4.5 Lemma 2 (two-point decay of the second-order kernel) [P].
Let 𝓔(x)(B) be one of the entries 𝓗(x), ∇𝓗(x), D*D𝓗(x) (one Lie component). Assume (H_ϑ): 𝓔(x) is analytic on {‖B‖_∞ < ρ} and |∂𝓔(x)/∂B(b)|_B| ≤ c_ϑe^{−ϑd(x,b)} for all complex B with ‖B‖_∞ < ρ and all b. Then for all b, b′,
 |∂²𝓔(x)/∂B(b)∂B(b′)|_{B=0}| ≤ (c_ϑ/ρ)e^{−(ϑ/2)(d(x,b) + d(x,b′))}.
Proof. Put g(z) := ∂𝓔(x)/∂B(b) at B = ze_{b′}. Then ‖ze_{b′}‖_∞ = |z|, so g is analytic on |z| < ρ with |g| ≤ c_ϑe^{−ϑd(x,b)}. Cauchy on |z| = ρ′ < ρ and ρ′ ↑ ρ give |g′(0)| ≤ c_ϑe^{−ϑd(x,b)}/ρ, and g′(0) = ∂²𝓔(x)/∂B(b′)∂B(b)|_0. For a holomorphic function the mixed partials commute, so the same argument with b and b′ exchanged gives the bound with d(x,b′). Then min(e^{−ϑa}, e^{−ϑa′}) ≤ e^{−(ϑ/2)(a + a′)}. The case b = b′ is the same with g(z) = ∂𝓔/∂B(b) at ze_b. ∎
Application. For x ∈ X, d(x, b) ≥ dist(b, X) − O(1). The A′-rows of (K_U-2) are Lemma 2 for 𝓗 and ∇𝓗; the J-row is Lemma 2 for D*D𝓗 plus the F_2 term of 4.2, which is bounded by c_F(K^{(1)})²e^{−ϑ_0(d(x,b) + d(x,b′))} ≤ c_F(K^{(1)})²e^{−(ϑ/2)(…)} because ϑ ≤ ϑ_0. This gives (K_U-2) with δ_U = ϑ/2 [P given (H_ϑ)]. (H_ϑ) is (190) on the disc: R-019 case K2 or K4, extended to ∇ and D*D by SOURCES_R005_DD (4.4) [R].
Cross-check with Balaban's print [V + P]. (177) gives the second-order Taylor term −𝔊((δ/δA′)V^{(3)})(H_1B) − HC^{(2)}(H_1B). Each term is a tree: a decaying kernel (𝔊 or H) from x to a vertex z, a vertex that is local (C^{(2)}) or has decaying kernels (V^{(3)}, built by (80) [15] from the Wilson cubic term and H), and two first-order kernels H_1 from z to b and to b′. Since d(x,z) + d(z,b) ≥ d(x,b) and d(x,z) + d(z,b′) ≥ d(x,b′), such a tree decays at least like e^{−(a/2)(d(x,b) + d(x,b′))} at the common rate a. So Lemma 2 has the decay structure of the printed second-order term. A direct proof by this route needs the form of V^{(3)} in (80) [15], which I did not read [I]; Lemma 2 does not need it.

4.6 Item (a) of the brief: "the bound on J for complex fields". CORRECTED: not needed.
- In §3.5 of the checked file the Cauchy step runs in the variables (U, J) of E(X). The test pairs (𝐔(t, s), J(t, s)) are off-shell, and J(t, s) = tv_{1,J} + sv_{2,J} is bounded by the polydisc radius by construction (|J| < r_0 ≤ α′_0). So condition (iii) needs no bound on J(U) at complex U.
- The map B ↦ Φ(B) enters only through ∂Φ(0) and ∂²Φ(0) (chain rule, Step 3). These are Taylor coefficients at the real, on-shell point B = 0. Their J-rows are D*D-entries (4.2): the first-order one is real (190); the second-order one uses (190) on a complex disc in B, with operators at the real background U_0 = 1.
- So the "complex J" input of the checked file (§3.4: "the special second order derivative … among the admissible norms … [I]") is replaced by the D*D entry of (190) on the disc, which is R-019 + SOURCES_R005_DD. The CMP 99 pp. 396–397 statement "we will prove in another paper" (complex U′U ⇒ (3.36)), which R005_DD needs for complex backgrounds, is not used, because the background is U_0 = 1.
- The checked file's alternative pointer "CMP 116 (1.18), all admissible norms" concerns H_k(s, B′) of the fluctuation step, not the minimizer map at the trivial background; it is not needed.

4.7 Item (b) of the brief: exponential decay of the first- and second-order kernels of B ↦ U_{j+1}(exp iB). SETTLED as in 4.4–4.5. First order: printed ((190), and its use on CMP 109 p. 271 and CMP 119 p. 266) [V statement; R-005 + R005_DD for the proof]. Second order: proved here from (190) on a complex disc [P given R-019 (K2 or K4) + R005_DD]. At complex B (as Proposition A's chain rule needs only through analyticity of Φ near 0 and the two Taylor coefficients) nothing more is required: Proposition A supplies the complex domain on the E side, Lemma 2 supplies the complex-B step on the Φ side.

4.8 Consequence for C_Π [P]. With 4.4: C_Π = 2(S_0 + S_2)S_2(4(K^{(1)})²/r_0² + K^{(2)}/r_0)K_2, S_k := Σ_{z∈Z^d}e^{−δ_U|z|}(1 + |z|)^k, δ_U = ϑ/2 (= δ_0/16 in case K2; 0.59δ_0/16 ≈ 0.0369δ_0 in case K4), r_0 = min(α_1/2, α′_0/(2c_□), 1), K_2 ≤ 468M^6. M_β := cE_0C_Π. All factors are free of j, k, g and the volume.

## 5. Remaining residue of (H-α) and safe statuses (proposed; not written into TRUST_LEDGER.md)

5.1 Residue of (H-α) ⇒ |β_j| ≤ M_β after this file.
- (R1) CMP 109 Theorem 3 as completed in CMP 116 §2, run with the per-step cut δ(x*_k), through SOURCES_MC (verified reduction) and R-036 (verified). This is the base of the project, not a new item. The per-step cut adds only γ-small conditions at N-470 (V1.5).
- (R2) CLOSED [V + P]. Canon bookkeeping: new line N-395 for C_1^{(1.36)}, C_2^{(1.36)} (≥ C_2^{(1.43)}), q, after N-390 and before N-400 (V1.4). The page calls them absolute; the slot is required by the κ_1-dependent α-caps of N-370 (V1.3).
- (R3) CLOSED [V + P] by CMP 122 II p. 380 and the large-field cost on the same page (V2.3). Two notational [I]: the "*" bond set; C = identity off {b_0(c)}.
- (R4) (1.12) CLOSED [P]. K_2 [P] (≤ 468M^6 for κ ≥ 228; ≈ 9M^6 at κ ≥ 1536), with the mild [I] that D_j consists of connected unions of M-cubes. K_U REDUCED [R] to existing rows: first order = R-005 (+ SOURCES_L1_C 6.4, SOURCES_R005_DD Theorem DD, both verified); second order = Lemma 2 [P] + R-019 (case K2 with the complex (189) reading, or the fallback K4 without it, rate × 0.59). Local constants c_□ (BCH) and c_F ((3.11) second differential) [P-sketch]. No complex-J input (4.6).
- The checked file's sentence "No [I] remains in the chain except inside (K_U) (the complex J norm) and the two notational items of (R3)" is CORRECTED to: no [I] remains except the two notational items of (R3), the D_j reading of K_2, and the [I] items already carried by R-005 ((189) unproved by Balaban) and R-019 (complex (189), only in case K2).

5.2 Safe statuses.
- R-040 (H-hol), small field: verified reduction (grade unchanged). |β_j| ≤ M_β := cE_0C_Π (C_Π of 4.8) for the frozen whole-lattice map, relative to Proposition A [R], K_U [R: R-005, R-019, SOURCES_R005_DD], c_□, c_F [P-sketch], K_2 [P]. Corrections to record: SOURCES_L1_F §5.4 and SOURCES_H_ALPHA §3.3–§3.4 omit the non-local dependence of U_{j+1}(exp iB) on B; the bound needs the decay δ_U (V3.3, 4.3). New consumer edges: R-005 and R-019 gain R-040 (through K_U). The R-019 row text "Only consumer: the (H−) Cauchy step" must change.
- R-037 (H-hist): reduced (grade unchanged). Its small-field constant C_β = C_ΠS_0 uses the same C_Π, so its input list gains K_U, i.e. R-019 (R-005 is already listed as "CMP 102 (189)").
- R-038 (H-hist2) and H-120 (H2-hist): grades unchanged; D ∝ C_Π, same added inputs.
- R-042 (N3): verified reduction (grade unchanged). Its inputs R-037, R-040, H-120 route through Proposition A and K_U. R-019 and R-005 were already in its input set through R-041; no new open item reaches R-042.
- No row is upgraded. The checked file and this file are both unverified-by-a-second-reader at the time of writing; the statuses above change only input lists and wording.

## 6. Grade table

| Claim of SOURCES_H_ALPHA_RESIDUE | Grade |
|---|---|
| §1.1 page facts (CMP 116 pp. 3–21, CMP 109 p. 264) | CONFIRMED (images) |
| §1.2 symbol reuse C_1, C_2, C_3, ε_2, q | CONFIRMED; CORRECTED: C_2 also in (1.20), (1.43); the C_1 split is a reading, both readings give the same slot |
| §1.3 order O0–O9; E_0 first; ε_2 a definition; γ last | CONFIRMED |
| §1.3 O6 "C_1, C_2, q fixed after the α's" | CORRECTED in wording: printed "absolute"; the later slot is required by the canon's α-caps, not by the page |
| §1.3 O1 "O(1)C_3ε_1 ≤ ½E_0 is an ε_1 bound" | CONFIRMED (C_3 ∝ E_0, p. 20) |
| §1.4 match with canon; no cycle | CONFIRMED |
| §1.4 new line N-395 | CONFIRMED; add C_2^{(1.36)} ≥ C_2^{(1.43)} |
| §1.5 per-step cut adds only γ-small conditions | CONFIRMED |
| §2.1 page facts (CMP 109 pp. 265–267, CMP 116, CMP 119 pp. 265–269, CMP 122 II p. 380) | CONFIRMED (images) |
| §2.2(a)–(d), (f) | CONFIRMED ((b), (d) stay [I], notational) |
| §2.2(e) literal reading refuted by CMP 122 II p. 380 | CONFIRMED; strengthened by the log g^{−2} entropy cost on the same page |
| §2.2(e) "(3.19) also supports it" | CORRECTED: (3.19) holds under both readings |
| §2.3 (3.16) = (2.9) in (2.3) form with ε_1 → δ_k | CONFIRMED |
| §3.2 (1.12) trivial at U = 1 | CONFIRMED |
| §3.3 extraction not local | CONFIRMED; Balaban states it (CMP 116 p. 2) and uses (190) for it (CMP 109 p. 271) |
| §3.4 K_U sources and the complex-J [I] | CORRECTED: first order printed ((190)); second order Lemma 2 + R-019; complex J not needed |
| §3.5 bound on β, C_Π | CONFIRMED (with K^{(1)}, K^{(2)} split) |
| §3.6 K_2 ≤ 468M^6 (κ ≥ 228), ≈ 9M^6 (κ ≥ 1536) | CONFIRMED (correction term 8r ≈ 8.4·10^{−24}) |
| §4.1 residue | CORRECTED as in 5.1 |
| §4.2 statuses | CONFIRMED in grade; CORRECTED in inputs (R-019 enters R-040, R-037, R-038/H-120 through K_U) |

| New statement of this file | Grade |
|---|---|
| (K_U-0) analyticity of Φ, identity (I0) | [V + P] |
| (K_U-1) first-order kernels at (1, 0) | [V statement (190)]; proof [R]: R-005, SOURCES_L1_C 6.4, SOURCES_R005_DD Theorem DD |
| J linearization at U = 1, F_2 local | [P]; c_F [P-sketch] |
| Lemma 2 (symmetrized Cauchy, rate ϑ/2) | [P] |
| (K_U-2) second-order kernels | [P given R-019 (K2 or K4) + SOURCES_R005_DD] |
| item (a) complex J bound not needed | [P] |
| (177) tree structure as cross-check | [V + P]; direct proof needs (80) [15] [I], not used |

## 7. Report (≤100 words)

Part 1: the CMP 116 order (E_0, κ, κ_1, M, α's, then C_1, C_2, q, then ε_1, γ last) matches the canon; N-395 is acyclic. The page calls C_1, C_2, q "absolute", so the slot is a canon need. (3.16) is (2.9) with ε_1 → δ_k: a scaled-field cut would make the p. 380 large-field factor tend to 1. (3.19) separates nothing. (1.12), K_2 and non-locality hold. Part 2: K_U reduces to existing rows. First-order kernel: printed (190) (R-005). The second-order kernel follows by a symmetrized Cauchy step from (190) on a complex disc (R-019). No complex-J bound is needed.
