# TRUST_LEDGER — statements the two targets rest on that are NOT proved in this repository

Written 2026-10-27 (Claude, Opus 5.5). Single trust ledger of the project. No existing file was edited. Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

Sources read: PLAN.md from "SOURCES_GGAIN.md (Opus, unverified; verifier running)" to the end; every SOURCES_*_VERIFY.md (CDC, D1, D2, D2C, D3, D3R, D3W8, D4D5, EU, FX, FX_O1, FX_O23, FX_R2, G3, GGAIN, HBETA, HBETA_N3, HHIST_N1, HHIST2, HHOL, HHOL_LF, HTHR, HTHR2, LOC, MA, MA2, MB, N3A, Q, SM) and SOURCES_VERIFY.md; ASSEMBLY_VERIFY.md; THEOREM2_PROOF_v4.md §1 and §10; H2_CERTIFY_L13.md. H2_CERTIFY_L13.md has no §8; its ledger is §6, used here, plus the progress log of H2_CERTIFY_L13_G1.md. For the Target 2 statement: ASSEMBLY.md §1 and paper/remains.tex.

## 0. Targets and conventions

- Target 1 (T1). Theorem 2w (THEOREM2_PROOF_v4 §1.3): for odd L > 11, SU(2), d = 4, there are γ, g_1, β, B′, D′ such that for every K ≥ 1 and g ∈ ]0, g_1] a bare coupling g_0(K, g) gives g_k ∈ ]0, γ], g_K = g, the two-sided window bound (c′), and (S). Its use: discharge the coupling hypothesis of CMP 122 II Theorem 1.
- Target 2 (T2). Finite-torus existence in compactness form (ASSEMBLY §1.3; paper Theorem B): subsequence limits of the lattice Schwinger functions S_{n,ε} on D_n exist, and every limit satisfies (OS0)–(OS3) on T⁴_ℓ. Hypothesis (H-U) is the output of B-T2 (= T1 + Theorem 1), B-S (sourced Theorem 1), and the bridge B-N1.
- Scope rule. A row appears if T1 or T2 uses it and the repository has no proof that a verifier confirmed. Items that are proved and verified here are not rows; §6 lists the ones that left the ledger in this campaign.
- Status words. "asserted (Balaban)": Balaban prints the statement without proof, or with "we can prove", "similarly", "not repeated", or "announced". "proved (Balaban)": Balaban gives a proof in print; cite. "implicit": Balaban uses the statement without printing it; we found the use. "[R]": our reduction to named inputs, verified unless marked. "[I]": an inference step of ours that no verifier proved. "numerical": measured or certified only at points. "open": no proof, no reduction.
- Paper short names: CMP 95, 96, 98, 99 (1984–85 propagators, averaging, background fields); CMP 102 (1985, minimizers, Prop. 9); CMP 109 (1987, RG I, Theorem 2 announced); CMP 116 (1988, RG II); CMP 119 (1988, RG III); CMP 122 I, II (1989, RG IV).

## 1. Group A — Balaban-level assertions taken on trust

Each [R]/[I] item of ours that bottoms out in a Balaban statement is traced in the "depends" column. A1–A14 are statements Balaban prints. A15–A21 are statements he uses without printing them (found by us).

| ID | statement (one line) | where Balaban asserts it | our blocks that depend on it | status |
|---|---|---|---|---|
| A1 | Kernel bound \|(QGQ*)^{−1}(y,y′)\|, \|(QG_1Q*)^{−1}(y,y′)\| ≤ O(1)(L^jη)^{−2−d}e^{−δ_1d(y,y′)}, uniform in k and regular U | CMP 99 p. 422 (3.132): "can be analyzed in the same way … We will not repeat these considerations here, let us write only bounds" | γ_1 norm bound (via A7) ⇒ (Q) c_− > 0 ⇒ Lemma G3 ⇒ real (H-hist) small-field chain (GGAIN C_β, S_0) ⇒ Lemma H, N3, (FX), (H-hist2), Lemma H′ (SOURCES_Q_VERIFY §3, CDC_VERIFY §1, LOC) | asserted (Balaban), proof "not repeated" |
| A2 | R_2 (precision difference C_0^{−1} − Re C^{(k)}(Z_0,σ)^{−1}) obeys \|R_2(b,b′)\| ≤ (O(1)e^{−δ_0M/3} + O(α_0+α_1))e^{−½δ_0\|b−b′\|} | CMP 116 p. 16 (2.16): printed for R_1 only; R_2 "satisfying (2.16)", no proof ("similarly") | Lemma LOC (ε_M, c_− = (γ_1+ε_M)^{−1} or (γ_0−ε_M)/(γ_1+ε_M)², ‖C_0‖ ≤ 2/γ_0) ⇒ (Q) ⇒ G3 ⇒ (H-hist) chain (SOURCES_LOC_VERIFY §5, §9) | asserted (Balaban), "similarly" |
| A3 | C*Δ_kC ≥ γ_0 > 0 with γ_0 independent of k and U, for every U obeying (3.35)–(3.36) with Mα_0 small | CMP 99 p. 428, prose after (3.158): "We have proved it in [4], Lemma 2.4, for operators with U = 1 … we can prove it for C*Δ_kC with an arbitrary configuration U" | LOC (ε_M ≤ γ_0/2, ‖C_0‖ ≤ 2/γ_0, invertibility); Λ ≤ 2(1+γ_0^{−1}) in G3 ⇒ (H-hist) chain | asserted (Balaban), "we can prove"; proved (Balaban) for U = 1 only, CMP 96 Lemma 2.4 (2.128) |
| A4 | Exponential kernel decay of δ²V/δA′²: \|Δ(y)(δ²V/δA′²)(A′)𝔄\| ≤ O(1)ε_3(L^jη)^{−3}e^{−¼δ_0d(y,y′)}max{…}; and its consequence (190) on δ𝓗/δB | CMP 102 p. 308 (189): "We do not perform these calculations here … let us formulate a final result only"; (190) derived from (189); Prop. 9 p. 309 restates (190) | (H−) ⇒ (M-A) ⇒ large-field half of (H-hol) ⇒ N3 ⇒ (FX); D2C domain (D) via the p. 263 remark citing Prop. 9; also inside A13 (CMP 109 l. 1131 and CMP 122 II l. 266 cite "(190) [15]") (SOURCES_MA2_VERIFY §2, §4) | announced (Balaban), not proved |
| A5 | Inductive assumption: E^{(j)}(X, g_{j−1}, U, J) is C^∞ in g_{j−1} ∈ [0, γ]; β_{j+1} is smooth on [0, γ], "uniformly bounded on this interval together with all derivatives" | CMP 109 pp. 263–264 (text l. 735–738, 799); followed by "We will investigate other properties in a separate paper" | (H0) = THEOREM2_PROOF_v4 §10 item 7 (both routes of T1); C_β in (B2) of HHIST; N3 Step 0 (real C¹ bound) | asserted (Balaban) as an inductive assumption; never closed in print. GGAIN proves its first-derivative part for the small-field step on (0, γ] only (see B13) |
| A6 | E^{(j)}, β_j are analytic in the effective couplings ("(or analytic)"), with the alternative cut g_k/γ_k·ε_1, γ_k = C log(L^kε)^{−1} | CMP 109 p. 264 "(or analytic)"; p. 266 "Another possibility … It has the advantage that the functions E^{(j)}, β_j are analytic" | none after the HHOL/HHOL_LF reductions (B16, B17); recorded because (H-hol) was first posed as this statement. The printed γ_k fails under both parses (SOURCES_G3_VERIFY §2) | asserted (Balaban), no complex-coupling estimates printed |
| A7 | ‖C*Δ_kC‖ ≤ γ_1 uniform in k, volume, regular U, and uniform exponential decay of C*Δ_kC | CMP 116 p. 13 (2.7): series "if γ_1 is sufficiently large", no cited proof; CMP 99 p. 428: "together with a uniform exponential decay of C*Δ_kC implies bounds" (premise, not proved); walk expansion of C^{(k)}(Z_0) "discussed in [13]" (p. 13, not read) | (Q) c_− ≥ 1/γ_1 ⇒ G3 ⇒ (H-hist). Our reduction: A7 ⇐ A1 + J-term O(Mα_0) + ‖C(U)‖ + σ-localized versions (A18) | asserted (Balaban), used as premise; reduced by us [R] to A1 + A18 |
| A8 | For the real pair (U, 0) the localized operators are symmetric and dμ_{C^{(k)}(Z_0,0)} is a positive Gaussian; the complex case "is handled by a perturbative argument" | CMP 116 p. 15 (text before (2.14)–(2.16)) | G3 Route 2 majorant (2.23)–(2.25) uses the positive measure; not needed by LOC (symmetry removed, LOC_VERIFY §8) | asserted (Balaban) |
| A9 | k-step averaging remainder \|Q_j(U_0)A\| ≤ Q_j\|A\| + 2C′_1α_0(L^jη)²Q″_j\|A\| with C′_1 = C′_1(d, L) | CMP 98 (139) p. 39, (143) | (E_U) route only (alternative to A1 for γ_1) (SOURCES_EU_VERIFY §3) | proved (Balaban), constant C′_1 not printed |
| A10 | The lower-order bracket terms of the step obey the same bound as the fifth-order term: "bounded similarly as in (1.24)"; other terms "yield an expression satisfying (1.29)" | CMP 116 pp. 8–9 ((1.24), (1.29)) | Theorem SM Fact A (lower orders [reduced]); (Eps) and F2′ (via SM_VERIFY §4); hop θ_0 in GGAIN; Lemma HH ⇒ (H-hist) | asserted (Balaban), "similarly" |
| A11 | "Similar inequalities hold for other constants, which will be introduced later" (extension of (2.6)–(2.9) to all constants) | CMP 119 p. 256 | sweep §1.2 of THEOREM2_PROOF_v4 (Theorem 2w ⇒ hypotheses of Theorem 1) | asserted (Balaban); the later inequalities not located (§10 item 10) |
| A12 | β_0 "can be chosen arbitrarily small, if g is sufficiently small"; β_0 fixed before γ | quoted in THEOREM2_PROOF_v4 §10 item 10 (CMP 119/122; page not recorded) | (S) constant c_sw = 64/15 at β_0 = 1/7; sweep | asserted (Balaban); not checked line by line (§10 item 10) |
| A13 | Theorem 1: if g_k ∈ ]0, γ] for all k with γ small, the densities ρ_k have the form and bounds of CMP 119 Sect. 2, and the stability bound (0.1) holds | CMP 122 II p. 355; proof across CMP 116, 119, 122 I–II; its own working form uses CMP 119 (2.6)–(2.9) | T1's purpose (removing the hypothesis); T2 through B-T2 and as the template of B-S, (FX), (H-hol), (H-hist) | proved (Balaban), published, conditional on g_k ∈ ]0, γ]; internally rests on A1–A4, A7, A8, A10, A14; observable analysis not published (CMP 122 II p. 356) |
| A14 | Induction closure: the t_□-derivative yields a factor O(1)α_2^{−1}ε_1 that beats the constant of (3.54) ("much bigger than E_0", value not given), so E_0 is recovered | CMP 109 p. 280 | originally (Eps) of D3W8 and Lemma HH θ; now (Eps) is re-derived from Theorem SM via A10 (SOURCES_SM_VERIFY §4); remains inside A13 | asserted (Balaban), constant unspecified |
| A15 | β_j is the coefficient of the infinite-volume, whole-lattice extension of the step: sums over y extended to Z⁴, X to all of D_j | CMP 109 (4.35)–(4.37), Sect. 4 ("we extend summations over y to the whole lattice Z^4") | K-independence of β_j (B8) ⇒ shooting in T1; (G2); HBETA (H-hist) as a K-independent function | implicit (finite-volume step = infinite-volume β not stated) |
| A16 | Propagators in the background-field equations may be replaced by any operators with the same regularity and bounds ("Only these bounds were important") | CMP 116 p. 3 (about (1.3)–(1.4)) | extended by analogy to the fluctuation covariance C_f in D2 Lemma 3.1 use, D3R (P8), D3W8 t-measure ⇒ F2′ ⇒ B-S (SOURCES_D3W8_VERIFY S6) | asserted (Balaban) for (1.3)–(1.4); our use for dμ_{C_f} is an extension [I] |
| A17 | supp χ_k ⊂ {g_k\|B\|_Y < ε_1}, the analyticity domain of (1.34) (the cut is on B′ = g_kCB − hD(g_kCB), the domain on B) | used in CMP 116 Lemma 1 (1.34) with CMP 109 (2.9); not stated | margin (M_r) in GGAIN (both the V-part and the P^{(k)}-part) ⇒ C_β, S_0 ⇒ (H-hist) | implicit; fixed by convention C9 |
| A18 | Regular-class identification: the backgrounds of CMP 109/116/122 lie in the regular class of CMP 99 (3.35)–(3.36) / CMP 102 (3.35)–(3.38) where A1, A3, A4 are stated; Q(U) = Q_free(1 + O(α_0)); ‖C(U)‖² ≤ L^{d+1}(1 + O(α_0)); CMP 109 C-map = CMP 99 C-map; J-term O(Mα_0); σ-localized operators covered | used across CMP 109, 116, 122 I–II without restatement; CMP 122 I (1.78), (1.80) | reduction A7 ⇐ A1 (SOURCES_Q_VERIFY items 2, 4, 5; CDC_VERIFY §5); (H−) background matching (MA2_VERIFY §4) | implicit; several pieces UNSUPPORTED on the read pages |
| A19 | (190) holds at complex B on the ball \|B\| < 2C_1ε_1 (CMP 102 (172)) | CMP 102 Prop. 9 p. 309 states analyticity of 𝓗 in B, silent on (190) at complex B | Cauchy step of (H−) ⇒ (M-A) ⇒ B17 | implicit |
| A20 | R_{K+1} ≥ 1 and the cost constant C_c of (1.79) is independent of g | R_n ≥ 1 implied by CMP 122 I l. 909 (N_0 definition); C_c not stated | R2 of (FX) (κ_vol ≥ κ_final) (SOURCES_FX_R2_VERIFY §4–§5) | implicit; graded [I] safe |
| A21 | Uniform-in-k moments and exponential decay of the free extension kernel E_0 (ν_j, γ_j bounded in N) | not printed in CMP 95/96/98/99 | (E_U) route only (alternative to A1) (SOURCES_EU_VERIFY §4–§6) | implicit; numerical at N = 3, 5 only |

External results (not Balaban), cited and not re-proved here:

| ID | statement | source | depends | status |
|---|---|---|---|---|
| X1 | Lüscher–Weisz (5.7) one-loop coefficient | Lüscher–Weisz | T1 Route B only (B4 of §10) | cited |
| X2 | OS II linear growth condition \|S_n(F)\| ≤ σ_n\|F\|_{sn}, σ_n ≤ A(n!)^D, and reconstruction from torus data | OS II, via o3_continuum.txt l. 4987–5003 [V]; OS II not re-read | T2 (H-U) form, (OS0)–(OS3) use | cited |
| X3 | Reflection positivity of the Wilson action for link-plane reflections on the periodic lattice | Osterwalder–Seiler, Ann. Phys. 110 (1978); site planes Menotti–Pelissetto CMP 113 (1987) [V abstract] | T2 (OS2) with ℓ even (C18) | cited, text not fetched |
| X4 | Convergence criterion for the final cluster expansion | Cammarota, CMP 85 (1982) 517–528 ([26] of CMP 109) | (FX) final Mayer step | cited |

## 2. Group B — our own open items not reducible to a Balaban assertion

Rows marked "→ A…" also use Group A items; the open part listed is ours.

| ID | statement (one line) | Balaban location (if any) | our blocks that depend on it | status |
|---|---|---|---|---|
| B1 | (H2) ρ_2 = sup_{j≥2} sup_K ‖(⊕_l H_{j−1}(k_l))H_j(K)‖/L² < L; at L = 13 via (H1_13) sup_K ρ_1² < 13 ⇒ ρ_2 ≤ 4.37 (rho2_le, Lean) | none (our one-loop object) | (B2) ⇒ Theorem K ⇒ T1 Route K; (U) ⇒ T1 Route B | numerical: ρ_1(∞) = 2.0895 at L = 13 (float), point enclosures ≤ 2.0901 and small cells ≤ 3.172 certified; no sup over the zone certified at any L. Open: G1 Taylor-model cell code (Taylor-2 fails at h = 0.09, order-3 in progress), verifier pass on h1cert_cell2/drive2, the run, G3 ball at K = 0, premises P1′ (float profile = exact operator to 10^{−13}, not derived), P2 (float64 a priori sums), P3 (conventions), CertBridge residue (Python implements the formulas). P4 proved (H2_CERTIFY_P4). L = 3 needs the two-step route (ρ_1² = 3.10 > 3) |
| B2 | (PI) probe independence at each fixed level | none | T1 Route K | argued |
| B3 | (F) lattice log coefficient = continuum log coefficient at constant field | none | T1 Route K | cited source checked; lattice transfer not proved |
| B4 | (M_j): formal = true f² coefficient: (S1) 𝒦_t(f) ≥ −C_1\|f\|, (S2) density of states ≤ C_2\|f\| near 0, (S3) relative bound of the level difference; Prop. 4.4 of BETA_FP_M | none | T1 Route K | open; Prop. 4.4 argued |
| B5 | V1: β_{j+1}(0) is the Maxwell coefficient of the per-step Gaussian determinant (order-g⁰ completeness of CMP 109 (1.3)–(1.5)) | CMP 109 (1.3)–(1.5) define the step; completeness not stated | T1 Route K | open; supported at order p² |
| B6 | (G2) per-cell infinite-volume densities | → A15 | T1 (both routes) | formal |
| B7 | L5: β_{k+1}(g_0,…,g_k) defined and continuous on the clamped cube ]0, γ]^{k+1}, or a nested-interval Lemma D″ on true trajectories; slot functions valid off Balaban's trajectory | Balaban defines β_j only along his trajectory (CMP 109 p. 298) | Lemma D′/D″ clamp ⇒ T1; slot definitions of HHIST (H-hist) | open; variant written only for Lemma D (LEMMAS_DE_VERIFY §1.5) |
| B8 | K-independence of β_j(g): the finite-volume step increment equals the infinite-volume one, uniformly in K | → A15 | shooting in T1 (γ, constants free of K); (G2); (H0) | open |
| B9 | Route B inputs (alternative to B2–B5): (T1) sup_j sup_q \|c^{(1)}_{T,j}(q)\| < ∞; (DF) sup_k \|𝔡_F(θ_*; L^k)\| < ∞; A6 plane-wave increment = Balaban's β uniformly in k; BETA_FP_U Theorem 2.4 | none | T1 Route B only | argued; BETA_FP_U has no verifier file |
| B10 | Results tagged proved, unverified, inside the chains: the sweep of CMP 119 (2.6)–(2.9) (Theorem 2w ⇒ hypotheses of Theorem 1; 4 of 19 rows second-read); BETA_FP_M Prop. 4.3; Prop. 3.6 assembly; D″ form of N3 Step 3 (two gaps: bootstrap base needs the window rewrite; Step 2 needs Re u_i ≥ γ^{−2} + β(K−i) − D′ − η) | → A11, A12 (sweep) | T1 ⇒ Theorem 1; N3 in D″ form | proved, unverified; N3 D″ form [R] sketch |
| B11 | (B-S): the sourced version of Theorem 1, (E14-a, b, c), with the pointwise flow (S-A) and the local β-function (S-D), which have no Balaban analogue | → A13 (template) | T2 (H-U) | open as a whole; blocks D1 verified, D2/D2C/D3/D3R/D3W8 verified with corrections; remaining parts are B12–B20 |
| B12 | (I): B_j(c) = β_j(u(c)) for constant sources | none | Lemma H (HBETA), N3, (Hβ) | holds by construction with the adapted gauge-fixing weight (C10) and frozen thresholds (C1) (D2C_VERIFY §1, HHOL_LF_VERIFY V4); not written as a lemma |
| B13 | Real uniform (H-hist): sup_i Σ_{j>i} \|∂β_j/∂g_i\| < ∞ with u-slot sums O(g_i³), including C_β = sup \|∂β_{i+1}/∂g_i\|, and C_1 independent of γ | Balaban: none (p. 298 says β_j depends on all earlier couplings, no bound); → A1, A2, A3, A7, A8, A10, A17, A18 through G3/(Q)/LOC/Theorem SM | Lemma H, Lemma H′, N3 (Step 0, C_1′), (H-hist2), (H-thr), (FX); not T1 | small-field first derivative on (0, γ]: proved+verified (GGAIN) modulo: Lemma G3 (holds modulo c_− > 0 = (Q) ⇐ A7 ⇐ A1, A18; LOC ⇐ A2, A3; ε_M ≤ γ_0/2 needs α_0, α_1 small after M); (M_r) (C9); Lemma G4 repair via the real-t Mayer form [reduced]; Theorem SM Fact A lower orders [reduced: Ward cancellation on ∂_gV^{(l)} in sup norm, ⇐ A10], Fact B ⇐ printed (C1)–(C5); off-trajectory slots (B7). Large-field analogue OPEN. Higher derivatives open (not needed beyond B14) |
| B14 | (H-hist2): summable second history derivatives ε″_j ∝ u_{j−1}^{−2} for the frozen map B_j(·; ū), decay λ_C^{m/2} | none | HTHR2 W-Gronwall ⇒ (H-thr); N3 via (H2-hist) | verified reduction: no input beyond Theorem SM + joint u-disc × input-ball holomorphy [R] (SM R2) + the large-field part; for β_j itself it contains the threshold-history mixed derivative (HTHR2_VERIFY item 3) |
| B15 | (H-thr): threshold mismatch Δ_j = B_j(·; frozen) − β_j(·; running) has summable c-derivatives, Σ ≤ C(γ^{−2}/β)Φ(γ^{−2}) | CMP 122 II p. 383 block bound (1.77)–(1.78) and factor exp(−R_j^{−d−5}p_1²) (printed with a p_1 misprint); CMP 122 I p. 183 δ′_j = g_jA_1p_1(g_j) | (M-D) = real C¹ bound of the frozen map at x* ⇒ N3; Lemma H′ | reduced to: M2′ (density / one-bond-marginal form of the block bound), M4 (Cauchy extraction at radius α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, polynomial cost), M5 (history holomorphy for the mixed derivative); Lemma T transfer of the printed large-field factor to small-field shell terms [reduced]; small-field analogue of (1.73) assumed; summability and Gronwall parts proved+verified |
| B16 | (H-hol), small field: β_j holomorphic on \|g − x\| < ρ_0x, \|β_j\| ≤ M uniform in j, k, volume | → A6 replaced; uses Balaban's conditions with modified constants | N3; (F1); (H2-hist) Route 2(a) | verified reduction given (C1′)–(C4′) (ε_1 → 1.235cε_1), (C4″) 8nρ_0²(LM)⁴ ≤ 1 (→ 16nρ_0² with the X-modes, ρ_0 → ρ_0/√2), (2.24′); (C1)–(C5) are not Balaban's labels; \|β_j\| ≤ M is a reduction (majorant covers the Gaussian only) |
| B17 | (H-hol), large field: holomorphy and volume-uniform bounds of the R-step with thresholds, R_j, N frozen at x* | → A4, A18, A19 via (M-A) | N3 ⇒ (FX); F2′ on the polydisc | verified reduction with inputs: (M-A) ⇐ (H−) ⇐ A4 (189) + A19 + (C1) M_0ε_k ≤ C_1ε_1 + (C2) the ζ_i-localized map obeys the CMP 102 bounds; residual [I]: e^{uA_min} kept paired with an analytic factor (A_min only piecewise analytic if X* ∈ ∂B); (M-B) closes under C2 (F2′ → α link [I]); (M-C) complex small-field step = HHOL ledger conditions, OPEN; (M-D) = B13 + B15 for the frozen map |
| B18 | N3: \|δw_k\| ≤ (3/2)τ on Q = {\|Re c\| ≤ 2r, \|Im c\| ≤ τ}, uniformly in K, ε | none (Balaban gives no complex-coupling or history estimates) | O3 ⇒ (FX), (FX2); moved term of the f-independent denominator; D3 radius | Lemma N3 proved+verified given (I) B12, (E), real (H-hist) B13, (H-hol) B16 + B17 on P_{ρ_0}(x*), (H2-hist) or Route 2(a) (B14); condition (a) settled for r_0 = τ_0 (N3A, slack 5.33×); D″ form: B10 |
| B19 | (FX): the final Mayer expansion of the sum over large-field geometries plus the unit-scale integral converges, with polymer radius c·r in the source (FX2), uniform in K, ε | not in CMP 116/119/122 (SOURCES_D4D5_VERIFY §3) | (B-N1) ⇒ (H-U) ⇒ T2; Gevrey order of the source moments | reduced: O1 proved+verified (FX_O1 Lemma [P]); O2 verified; R2 verified given A20; O3 conditional on B18; O4 avoided by C13. Remaining: B18. (FX2) radius at the coarsest scale is load-bearing for order 1 + η; fallback order ≤ 1 + η + 2/3 (still OS-admissible) |
| B20 | Sourced step bookkeeping: (W4) step holomorphic in input activities on the E_0 → 2E_0 ball; (P8) covariance change C^{(k)} → C_f^{(k)} in the t-measure, with domination on the marginal region; F2′ freezing through merged old R-terms; D2C domain hypothesis (D); field-dependent domains Λ_j in the W factorization | (W4) → A16, A10; (D) → CMP 109 p. 263 remark → A4 (Prop. 9); merged R-terms CMP 119 p. 271 | B-S (B11) | (W4) [R] to printed (C1)–(C5) (Theorem SM, verified as a reduction); (P8) reduced, by analogy A16; F2′ proved+verified given (W4), (Eps), (D), 32ε′ ≤ 1 (C16); (D) argued [V] in D2C_VERIFY §2; Λ_j field dependence: D3 item, open as bookkeeping |
| B21 | (B-N1) bridge and (S): uniformity of the source bound in bump position and in ε; C^∞ real-source form of (E14-c); cutoff-derivative count; (S) uniform in support size down to h ~ ε and valid at σ = 16ε | none | (H-U) ⇒ T2 | open; given (FX) and (S), (S_src) ⇒ (H-U) with s = 6, D > 1 is proved+verified (ASSEMBLY_N1, HHIST_N1_VERIFY Part 2) |

Not needed for the two targets (recorded so they are not mistaken for gaps): (NT)/(E14-f) (nontriviality, Theorem 1.4 only); E13 (full-sequence convergence); literal (0.31) at every K (certified β_1(0), …, β_{j_*}(0) > 0); (A) in full and Lemma 5.1 for m = 2; C², C³ of σ^{(1)}; the g = 0 endpoint of A5 (C19); Lean history form of Lemmas D′/D″ (item 13; formalization, not truth).

## 3. Group C — conventions and choices

These are choices, not claims. Each one has a cost or a condition, listed in the last column.

| ID | choice | source of the choice | blocks that use it | status / cost |
|---|---|---|---|---|
| C1 | Freeze ε_j, δ_j, δ′_j, R_j, N, 100MR_k cubes, and partitions at Balaban's real trajectory x* (reference couplings, f = 0) | D3 (L0); HTHR L3; HHOL_LF freeze repair | (I) exact (B12); (H-hol) large field (B17); F2′ ordering | consistent; the frozen map equals Balaban's map only at x*, so its g-derivative needs (H-thr) (B15) |
| C2 | Option B margin: keep Balaban's output factor exactly; additive weight, g* = 0.82645 − θ_W − τ_C; require θ_W + τ_C ≤ 0.2 (strict limit 0.2088); then p_0(g) ≥ 17/(γ_0A_1²) (γ_0 of CMP 122 II p. 380, A_1 of p. 381) | SOURCES_MB_VERIFY V2, V6 | (M-B) ⇒ B17 | endorsed; θ_W, τ_C are O(γ²r), so the cost is a smaller γ |
| C3 | L odd, L > 11 (Balaban's range, CMP 109 pp. 251–252); certification target L = 13 by the one-step route (H1_13) | THEOREM2_PROOF_v4 §1.1, §10 item 11; H2_CERTIFY_L13 G6 | T1, B1 | numerics at L = 3–11 are supportive only |
| C4 | G = SU(2), d = 4 | Balaban's Theorem 2 statement | everything | the charged/neutral split of Lemma 5.1 and (W) are SU(2) statements |
| C5 | Order of constants: L → Balaban's constants (β_0 before γ; κ, then M ≥ M(κ); α's after M) → γ → g ≤ min(γ/2, g_1) → (r_0, τ_0) → K, with r_0 = τ_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)) | SOURCES_N3A (+ VERIFY); CMP 109 Thm 3 order [V text] | N3 condition (a), D3R/D3W8 radii, bridge | settled; also ρ_1 ≤ r/(4C_hM) and 5γ²r ≤ ½ (D3R_VERIFY S4) |
| C6 | Holomorphy radius ρ_0 = min(0.1, (LM)^{−2}(8n)^{−1/2}), divided by √2 if w scales the X-modes; (H-hol) posed on the polydisc P_{ρ_0}(x*) | SOURCES_HHOL (+ VERIFY §4) | B16, B17, N3 | any fixed ρ_0 ∈ ]0, 1/3] accepted by Lemma N3 |
| C7 | Cut on B vs B′ — CLOSED: the cut is \|B(b)\| < ε_1/g_k on every bond except b_0 (h = 0, C = 1 there), round sphere, no Jacobian (CMP 109 (2.9), (2.12)); Balaban's alternative cut g_k/γ_k·ε_1 is not used | SOURCES_Q (+ VERIFY §6); SOURCES_G3_VERIFY §2 | G3 (fixed-B route), HHOL (B̃ route), GGAIN | closed; the CMP 109 → CMP 99 C-map transfer is in A18 |
| C8 | Keep the sharp χ_k (G3 Route 2); smooth χ̂ (Route 3) is the fallback with ε_1 → ε_1/2, γ → γ/2 | SOURCES_G3 (+ VERIFY §4) | G3 ⇒ B13 | fallback verified on CMP 116 pp. 12, 16–18 |
| C9 | Shrink the χ_k threshold by a fixed factor so that supp χ_k lies inside the (1.34) domain (margin (M_r)) | SOURCES_GGAIN_VERIFY §3, §4 | B13 (V-part and P^{(k)}-part) | benign; replaces the implicit A17 |
| C10 | Adapted gauge-fixing weight 1/u_k(c) in the sourced construction | SOURCES_D2C_VERIFY §1 | (I) exact (B12) | with the reference weight 1/g_k², (I) holds only up to O(e^{−cε_1²/g_k²}) |
| C11 | h ≡ 0 booking of the source gradient remainder; freezing set S_X = points of X nearest to the barycentre | D2C §5.3; D2C_VERIFY §4 | D2C, D3R (P8), N3 pointwise reduction | valid |
| C12 | Additive source normalization w_0 = g_0^{−2} − f, τ in absolute u-units; N3 constant 3/2 (any 1 + η works) | SOURCES_HBETA_N3 (+ VERIFY §1, §3) | N3, O3 | stronger than the multiplicative form at fixed τ |
| C13 | Use Balaban's main R-step form (1.90)–(1.98), not the optional (1.103)–(1.104) | SOURCES_FX_O23_VERIFY §5 | (FX) | removes O4 |
| C14 | κ_final := 2κ + √d(1+2β)κ + c_d fixed before M (route a); M ≥ 12L(3κ_final/C_1)^{1/d}, C_1 := max(1, C_c) | SOURCES_FX_R2 (+ VERIFY) | (FX) R2 | over-provisioned, not sharp |
| C15 | Fluctuation threshold exponent p_1 with Balaban's 2p_1 − (d+5)r_0 > p_0, giving the summability exponent q = 2p_1 − (d+5)r_0 > 1 | CMP 122 II p. 383 (Balaban's assumption); SOURCES_HTHR_VERIFY Step 7 | B15 | uses Balaban's own condition |
| C16 | 32ε′ ≤ 1 (an extra smallness condition on ε_1), S ≥ 1 (4g_K^{κ_0} ≤ E_0), κ_0 > 2 | SOURCES_D3W8_VERIFY S8; SM_VERIFY §4 | F2′ (B20) | same direction as Balaban's own ε_1 conditions |
| C17 | (S): γ^{−2} ≥ c_sw·D′, c_sw = max(2, 1/(1 − (1+β_0)^{−2})) = 64/15 at β_0 = 1/7 | THEOREM2_PROOF_v4 §1.2 | T1 (Theorem 2w (S)) | needs β_0 fixed before γ (A12) |
| C18 | ℓ even (both seams of the time reflection are link planes); time periodic, so the reconstructed state is thermal at inverse temperature ℓ; observable = centred plaquette density; test space D_n (flat on diagonals); "exists" = compactness form with every limit point satisfying (OS0)–(OS3) | ASSEMBLY §0, §1.1; ASSEMBLY_VERIFY §5–§6 | T2 | evenness sufficient, not necessary; the mixed-seam case is uncited; NOT a Clay solution (no gap, no infinite volume) |
| C19 | Coupling domain ]0, γ], not [0, γ] | GGAIN_VERIFY §7 | B13, T1 | the C¹ statement at g = 0 of A5 is not used |
| C20 | Route K is the primary proof of T1; Route B is an alternative | THEOREM2_PROOF_v4 §1.3; PLAN tag decision 2026-10-28 | T1 | Route B needs B9 instead of B2–B5 |
| C21 | θ_* < 1 in Route B | BETA_FP_PW_VERIFY §3 | T1 Route B | trivial |
| C22 | g_0(K, g): any solution of the shooting problem (existence, not uniqueness) | LEMMAS Lemma D; ASSEMBLY §0 | T1, T2 | different choices may give different limit points in T2 |

## 4. Dependency summary

### 4.1 Target 1 — Theorem 2w, and its use for Theorem 1

DAG (Route K):
1. B1 (H2) ⇒ (C1σ) ⇒ (B2) [proved+verified, B2_TWOSTEP_VERIFY].
2. (B2) + B2 (PI) + B3 (F) + B4 (M_j) + B5 V1 + B6 (G2) ⇒ Theorem K window bounds [proved+verified, conditional].
3. Theorem K + A5 (H0) + B7 (L5) + B8 (K-independence, ⇐ A15) + Lemma D″ [proved+verified; Lean, one-argument form] ⇒ Theorem 2w (b), (c′), (S) under C3, C4, C17, C22.
4. Theorem 2w + the sweep of CMP 119 (2.6)–(2.9) (B10; uses A11, A12) ⇒ the hypothesis set that the proof of A13 actually uses ⇒ Theorem 1 without the coupling hypothesis.

Route B replaces B2–B5 by B9 (and uses X1); B1, B6–B8, A5 stay.

Minimal sets:
- Theorem 2w alone: Group A = {A5, A15}. Group B = {B1, B2, B3, B4, B5, B6, B7, B8} (Route K) or {B1, B6, B7, B8, B9} (Route B).
- Theorem 2w ⇒ Theorem 1: add A11, A12, B10 (sweep part), and A13 itself. A13 is a published proof; it uses A1–A4, A7, A8, A10, A14 internally (A4 is cited by CMP 109 and CMP 122 II as "(190) [15]"; A7 is in CMP 116 (2.7); A2, A8, A10 are in CMP 116 Sects. 1–2; that CMP 116 relies on A1, A3 of CMP 99 is our [I] reading).
- Not used by T1: the whole sources block (B11–B21), (H-hist), (H-hol), N3, (FX).

### 4.2 Target 2 — finite-torus existence (compactness form)

DAG:
1. (H-U) ⇐ B-T2 (= §4.1 including A13) + B-S (B11) + B-N1 and (S) (B21), with X2 for the OS growth form.
2. B11 ⇐ D1 [verified] + D2/D2C (B20: (D) ⇐ A4 via Prop. 9) + D3/D3R/D3W8 (B20: (P8) ⇐ A16; F2′ ⇐ (W4) ⇐ printed (C1)–(C5) + A10; (Eps) ⇐ Theorem SM ⇐ A10; C16) + Lemma H (HBETA) ⇐ B12 (I) + B13 real (H-hist) + (E).
3. B21 needs B19 (FX). B19 ⇐ O1, O2 [verified] + R2 [verified ⇐ A20, C14] + O3 ⇐ B18 N3 + C13, with X4 for the final convergence.
4. B18 N3 ⇐ B12 (I) + B13 real (H-hist) + B16 (H-hol, small field) + B17 (H-hol, large field) + B14 (H2-hist) or its Route 2(a) + C5, C6, C12.
5. B17 ⇐ (M-A) ⇐ (H−) ⇐ A4 + A19 + A18 + (C1), (C2) of MA2; (M-B) ⇐ C2; (M-C) open; (M-D) ⇐ B13 + B15 (frozen map, C1).
6. B15 (H-thr) ⇐ B14 + M2′, M4, M5 + C15. B14 ⇐ B13 + Theorem SM + joint u-disc/input-ball holomorphy [R].
7. B13 ⇐ GGAIN [proved+verified, small field, (0, γ]] + G3 ⇐ (Q) ⇐ A7 ⇐ A1 + A18; LOC ⇐ A2 + A3; majorant ⇐ A8; Theorem SM ⇐ A10 + printed (C1)–(C5); (M_r) ⇐ C9 (replacing A17); G4 repair [reduced]; large-field analogue OPEN.
8. Alternative for the γ_1 input of step 7: (E_U) ⇐ A9 + A21 + four [I] items (EU_VERIFY §5 (a)–(d)) in place of A1.

Minimal sets for T2:
- Group A = T1's set {A5, A11, A12, A13, A15} ∪ {A1, A2, A3, A4, A7, A8, A10} ∪ {A16, A17, A18, A19, A20}; externals {X2, X3, X4}. A17 is discharged by C9, so the binding set is 16 Group A items plus 3 externals.
- Of these, A1, A2, A3, A4, A7, A8, A10 are already inside Balaban's own proof of A13. So T2 adds to T1's Balaban-level trust only the implicit uses A16, A18, A19, A20 (and A17 if C9 is not adopted).
- Group B = T1's set including B10 ∪ {B11, B12, B13, B14, B15, B16, B17, B18, B19, B20, B21}.
- Not used by T2: A6 (replaced by B16, B17), A9 and A21 (alternative route only), A14 (only inside A13).
- Items with neither a proof nor a verified reduction: B1 (certification in progress), B2 (argued), B3 (lattice transfer), B4, B5, B6 (formal), B7, B8, B9 (Route B only), B10 (proved, unverified), the large-field analogue inside B13, (M-C) inside B17, M2′/M4/M5 inside B15, the Λ_j bookkeeping inside B20, B21. The rest of Group B is a verified reduction to named inputs.

## 5. Count

Group A: 21 items. 14 are statements Balaban prints (A1–A14). Of these, 12 are cited-but-unproved in the text that states them (A1 "not repeated", A2 "similarly", A3 "we can prove", A4 announced, A5 inductive assumption, A6 asserted analyticity, A7 premise without proof, A8 asserted perturbative argument, A10 "similarly", A11 not located, A12 not checked, A14 closure with an unspecified constant); A13 has a published proof that is conditional and uses the others; A9 is proved with an unprinted constant. 7 are uses we discovered that Balaban does not print (A15–A21; for A16 the printed scope is (1.3)–(1.4), and the unprinted part is our extension to the fluctuation covariance). Externals: 4 (X1–X4). Group B: 21 items (B1–B21). Group C: 22 items (C1–C22). Binding sets: Theorem 2w alone needs 2 Group A items (A5, A15) and 8 Group B items on Route K (B1–B8); its use for Theorem 1 needs 5 Group A items (add A11, A12, A13) and 9 Group B items (add B10); T2 needs 16 Group A items (17 without C9), 3 externals, and 20 Group B items (B1–B8, B10–B21).

## 6. Left the ledger during this campaign (now proved here and verified)

- CMP 122 II p. 387 "improved bound (1.89) with −κ_1d_k(X)": proved as FX_O1 Lemma [P] with κ_1 = κ_fin, no additive constant (SOURCES_FX_O1_VERIFY).
- R3 (p_0 comparison across earlier indices): the same comparison Balaban uses in (1.86) → (1.87).
- O2: the (1.100) denominator is the bare Wilson integral; O4: avoided by C13.
- (M-A′): normalized ratios contain only G = A − A_min (SOURCES_MA2_VERIFY item 1).
- Symmetry (S) of the truncated walk sum: not needed for c_− (SOURCES_LOC_VERIFY §8).
- (H-hist_C) on the complex polydisc: not needed by N3 (SOURCES_HHOL_VERIFY item 3).
- Cut on B vs B′: closed (C7).
- Premise P4 of the (H2) certificate: proved (H2_CERTIFY_P4).
- N3 condition (a): settled for r_0 = τ_0 (SOURCES_N3A_VERIFY).
- The first-derivative part of A5 for the small-field step on (0, γ], including vacuum subtraction: proved (GGAIN), modulo the B13 items.
- Refuted, not merely removed: the "polynomial in g" inference; the "transport and back" exact extension; the positivity route to T′_{f+ζ}(Y_i)1 ≠ 0; the product form a_m = λ^m of (H2-hist); the uniform-Lipschitz grid route for (H2).
