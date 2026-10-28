# INDEX: files in notes/, notes/reports/, lean/, and paper/

States. verified = an independent pass (a *_VERIFY.md file) confirmed the claims, with at most minor fixes. corrected = the verifier changed or rejected at least one claim in substance; read the verifier file with the note. unverified = no independent pass yet. superseded = a later file replaces the note, in full or in the named part. report = a verifier report, a status log, or a source text, not a claim in its own right. States come from the *_VERIFY.md files and the dated lines of PLAN.md. Files that agents are still writing are marked "in progress".

## notes/

| File | Description | State |
|---|---|---|
| INDEX.md | This table. | report |
| PLAN.md | Dated status lines, rules, and decisions for the whole campaign. | report |
| THEOREM2.md | Balaban's unpublished Theorem 2 stated precisely, with the open sub-theorem (T2-a). | §3 reduction verified (LEMMAS_DE_VERIFY); rest unverified; assembly superseded by THEOREM2_PROOF.md |
| THEOREM2_PROOF.md | Conditional proof of Theorem 2: reduction chain (T2-a1′) ⇒ Theorem 2 ⇒ Theorem 1, ledger §7. | corrected (THEOREM2_PROOF_VERIFY) |
| THEOREM2_PROOF_v2.md | Theorem 2 proof chapter, version 2 (Route K and Route B). | superseded by THEOREM2_PROOF_v3.md (corrected by THEOREM2_PROOF_v2_VERIFY) |
| THEOREM2_PROOF_v2_VERIFY.md | Verifier of v2: Lemma D'' confirmed; Route B "independent" weakened to "formally distinct". | report |
| THEOREM2_PROOF_v3.md | Theorem 2 chapter, version 3 (weak form reduced to (H2) + fixed-level inputs). | superseded by THEOREM2_PROOF_v4.md |
| THEOREM2_PROOF_v4.md | Theorem 2 chapter, current version: (H2) as the single uniform hypothesis for both routes; section 10 open list and hypothesis table; verified L = 3/5/7/9 values; Route B per BETA_FP_U. | reduced; Route K reduction verified, whole document not verified |
| THEOREM2_PROOF_VERIFY.md | Verifier of THEOREM2_PROOF; finds that certified early steps are not needed for Theorem 1. | report |
| LEMMAS.md | Generic lemmas A, B, C (rotations, inclined cells, observables) and Lemmas D, E (shooting, uniform bounds). | corrected (LEMMAS_VERIFY, LEMMAS_DE_VERIFY; fixes applied in file) |
| LEMMAS_VERIFY.md | Verifier of Lemmas A, B, C; finds that rotation invariance needs the R⁴ limit. | report |
| LEMMAS_DE_VERIFY.md | Verifier of Lemmas D, E and of the THEOREM2 §3 reduction; adds the hidden continuity hypothesis (H0′). | report |
| LEMMA_DPRIME.md | Lemma D′: shooting with early negative one-loop increments. | corrected (LEMMA_DPRIME_VERIFY: proof holds; Remark 1 and §5 corrected) |
| LEMMA_DPRIME_VERIFY.md | Verifier of Lemma D′. | report |
| LEMMA_DPRIME_SWEEP.md | Sweep of all 12 Balaban papers: 19 cross-scale coupling comparisons, all covered by Lemma D′ (b) + (c). | unverified |
| LEMMA_B4.md | The inclined first step and Balaban's class of effective densities (B4 off the critical path). | corrected (LEMMA_B4_VERIFY) |
| LEMMA_B4_VERIFY.md | Verifier of LEMMA_B4. | report |
| R2_TELESCOPING.md | Telescoping and one-loop universality of the running coupling; coefficient c log L. | verified (R2_VERIFY; P6 with a corrected argument) |
| R2_VERIFY.md | Verifier of R2_TELESCOPING; fixes the normalization 2N/g². | report |
| U1_INFINITE_LATTICE.md | U1′: composed one-loop increment on the infinite lattice; abelian sector exact. | corrected (U1_VERIFY) |
| U1_VERIFY.md | Verifier of U1′. | report |
| U3_GAUSSIAN_RG.md | Gaussian block-spin RG behind the one-loop increments; Theorem 4.1 (fixed point, rate L^{−2j}). | verified (U3_VERIFY; strip π/2 not π; O5, O6 added) |
| U3_VERIFY.md | Verifier of U3. | report |
| U3_REPAIRS.md | Proofs of the open items O5 (analyticity at K = 0) and O6 (bordered-matrix invertibility). | verified (U3_REPAIRS_VERIFY; one numerical claim corrected) |
| U3_REPAIRS_VERIFY.md | Verifier of U3_REPAIRS. | report |
| U3_LEMMA51.md | Lemma 5.1 of U3: soft-leg vertices; neutral sector proved, charged sector reduced to R1–R4. | corrected (U3_LEMMA51_VERIFY) |
| U3_LEMMA51_VERIFY.md | Verifier of U3_LEMMA51. | report |
| U3_LEMMA51_R23.md | Items R2 (midpoint identity, odd M) and R3 (volume pieces; single-block failure in d = 4). | verified (U3_LEMMA51_R23_VERIFY; one sign fix) |
| U3_LEMMA51_R23_VERIFY.md | Verifier of R2, R3, the one-step recursion, and the rates. | report |
| U3_AW.md | Uniform strip analyticity (A), the Ward identity (W), and evenness in K. | corrected (U3_AW_VERIFY: (W) and (A) qualitative confirmed; (HS) false at L = 3) |
| U3_AW_VERIFY.md | Verifier of U3_AW with numerical checks (numerics/aw_verify/). | report |
| BETA_FP.md | Per-level increments β_{j+1}(0) by the exact Gaussian recursion; β_∞ = c log L reduced to Lemma 4.3. | corrected (BETA_FP_VERIFY) |
| BETA_FP_VERIFY.md | Verifier of BETA_FP. | report |
| BETA_FP_LEMMA43.md | Lemma 4.3: Prop. 2.1 anchor-free identity, c = 11N²/(12π²), reduction to (H). | corrected (BETA_FP_LEMMA43_VERIFY: Prop. 2.1 confirmed; (H) unsupported as stated) |
| BETA_FP_LEMMA43_VERIFY.md | Verifier of BETA_FP_LEMMA43. | report |
| BETA_FP_H.md | Repair of (H) at a constant abelian background; Theorem 3.1. | corrected (BETA_FP_H_VERIFY: resolvent step of (M) false); (M) part superseded by BETA_FP_M.md |
| BETA_FP_H_VERIFY.md | Verifier of BETA_FP_H. | report |
| BETA_FP_M.md | Input (M) without the false resolvent bound; reduced to three spectral bounds (S1)–(S3). | unverified |
| BETA_FP_PW.md | β_∞ = c log L from plane waves only (Route B, Theorem B). | corrected (BETA_FP_PW_VERIFY: confirmed as conditional; inputs not weaker than Theorem K) |
| BETA_FP_PW_VERIFY.md | Verifier of BETA_FP_PW. | report |
| BETA_FP_U.md | (U) proved given (T1) and (H2); Theorem B and Theorem 2w given (T1), (H2), (DF), LW (5.7), A6, (H0). | unverified |
| B2_TWOSTEP.md | (B2) proved given the two-step inequality (H2); L = 3 margin 31%. | verified as a conditional reduction (B2_TWOSTEP_VERIFY; certification G1 sized up) |
| B2_TWOSTEP_VERIFY.md | Verifier of B2_TWOSTEP. | report |
| H2_LARGE_L.md | (H2) at L up to 15: umklapp scan (numerics/h2_scan.py), one-step sufficiency at L >= 5, certification tail bound. | corrected (H2_LARGE_L_VERIFY: L-trend and tail inputs) |
| H2_LARGE_L_VERIFY.md | Verifier of H2_LARGE_L; L = 5 value rechecked with an independent code; j_0 about 8 (L = 3), 6 (L = 5). | report |
| H2_CERTIFY.md | Plan and prototype for a computer-assisted proof of (H2) at L = 3; rigorous point enclosure ρ_2(∞, K*) ∈ [1.9993, 2.1273]. | verified (H2_CERTIFY_VERIFY: point enclosure confirmed, P1 proved, Oishi–Rump and finite-M tail corrected); full certificate ≈ 1.5e4 core-h at L = 3, not run |
| H2_CERTIFY_VERIFY.md | Independent check of H2_CERTIFY and numerics/h2cert_proto.py (rerun at N = 12). | report |
| H2_CERTIFY_L13.md | The one-step condition (H1_L) at L = 13: ρ_1(∞) = 1.760 … 2.0895 for L = 3 … 13, sup ρ_1² = 4.37 < 13; cell certificate and cost; numerics/h1cert_*. | reduced: float values numerical, cell certificate unrun (cost ≈ 1,100 core-h after fix G1) |
| H2_CERTIFY_L13_G1.md | Fix G1: Taylor-1 cell certificate in the K̂-adapted frame (Schur-reduced bordered system, Oishi–Rump on the 3×3 transverse block). | unverified, in progress; launch approved 2026-10-28, not launched |
| H2_CERTIFY_P4.md | Premise P4 (E_q(k_l) k̂_l = K̂) proved by per-block telescoping; identity (D) of the divergence of the averaging profile. | proved (exact arithmetic); Lean Divergence.lean |
| H1_ANALYTIC.md | Analytic bound ρ_1(j, K) ≤ C_* and (H1_L) without a computer; F → 1 as K → 0, face maximum 5.45 at h = 6. | unverified, in progress |
| KAPPA_BOUNDED.md | Theorem K (κ_k bounded given (B2)) and Theorem 2 in weak form. | verified as a conditional reduction (KAPPA_BOUNDED_VERIFY; §4 reasoning on (B2) corrected; input (F) added) |
| KAPPA_BOUNDED_VERIFY.md | Verifier of KAPPA_BOUNDED, with numerical check of d_1 at L = 3. | report |
| UMK_BETA1.md | Umklapp-sum formulation of β_1(0) for any odd L; L = 5 value 0.743 (L up to 9 in numerics/NUMERICS.md). | unverified (code validated against ym_momentum to 1e−12) |
| SOURCES.md | E14: gauge-invariant sources in Balaban's induction; reduction and work plan D1–D5. | corrected (SOURCES_VERIFY: structure sound, two claims overstated) |
| SOURCES_VERIFY.md | Verifier of SOURCES. | report |
| SOURCES_D1.md | D1: one Balaban step with a local-coupling source at one loop; c_1 = 1 exactly. | corrected (SOURCES_D1_VERIFY: items 5, 7) |
| SOURCES_D1_VERIFY.md | Verifier of D1; adds the Lp bias label for single-point numerics. | report |
| SOURCES_D2.md | D2: sourced small-field step reduced to Balaban's estimates. | corrected (SOURCES_D2_VERIFY: step (c) rejected); §4.3 superseded by SOURCES_D2C.md |
| SOURCES_D2_VERIFY.md | Verifier of D2. | report |
| SOURCES_D2C.md | D2 step (c) redone: frozen source per domain, Lemma A, h ≡ 0. | corrected (SOURCES_D2C_VERIFY: (I) exact only with the adapted gauge weight) |
| SOURCES_D2C_VERIFY.md | Verifier of D2C. | report |
| SOURCES_D3.md | D3: sourced large-field step and the R operation. | corrected (SOURCES_D3_VERIFY); items (P3), (iii), (iv)(G1) superseded by SOURCES_D3R.md |
| SOURCES_D3_VERIFY.md | Verifier of D3 (page images of CMP 122 II, CMP 119). | report |
| SOURCES_D3R.md | Revision of D3 on (P3), (P8), freezing through R, Gevrey order. | corrected (SOURCES_D3R_VERIFY: (P8) needs the covariance change; F2 new); F2 superseded by F2′ of SOURCES_D3W8.md |
| SOURCES_D3R_VERIFY.md | Verifier of D3R. | report |
| SOURCES_D3W8.md | Covariance change along t and merged R-outputs; Lemma F2′. | verified (SOURCES_D3W8_VERIFY; minor corrections) |
| SOURCES_D3W8_VERIFY.md | Verifier of D3W8 (page images). | report |
| SOURCES_W4.md | (W4): holomorphy of one RG step in its input activities; proved for the regular step. | unverified |
| SOURCES_HBETA.md | The summability hypothesis (Hβ), reduced to (I) and (H-hist). | corrected (SOURCES_HBETA_VERIFY: hypothesis list; Lean Lemma H: column-sum hypothesis must be summable, PLAN.md) |
| SOURCES_HBETA_VERIFY.md | Verifier of HBETA. | report |
| SOURCES_HBETA_N3.md | Lemma N3: |δw_k| ≤ (3/2)τ for the complex source on Q = {|Re c| ≤ 2r, |Im c| ≤ τ}; reduced to Lemma H on complex c plus (H-hol). | corrected (SOURCES_HBETA_N3_VERIFY: condition (a) does not follow from γ small; (H2-hist) sufficient not necessary); reduced |
| SOURCES_HBETA_N3_VERIFY.md | Verifier of SOURCES_HBETA_N3. | report |
| SOURCES_N3A.md | Condition (a) of Lemma N3 settled: order L → constants → γ → g_K ≤ γ/2 → (r_0, τ_0) → K; uniform r_0 = τ_0 with slack > 5×. | corrected (SOURCES_N3A_VERIFY: k-direction of g_k corrected; D″-form sketch has two gaps); condition (a) verified |
| SOURCES_N3A_VERIFY.md | Verifier of SOURCES_N3A. | report |
| SOURCES_HHOL.md | (H-hol) for the small-field chain: β_j holomorphic on |g − x| < ρ_0 x, ρ_0 = min(0.1, …), |β_j| ≤ M; reduced to Balaban's conditions with modified constants. | corrected (SOURCES_HHOL_VERIFY: Lemma D right with one factor √2 gap; |β_j| ≤ M a reduction); verified reduction |
| SOURCES_HHOL_VERIFY.md | Verifier of SOURCES_HHOL. | report |
| SOURCES_HHOL_LF.md | Large-field half of (H-hol): freeze the R-ratio density at Balaban's real trajectory x*; reduced to (M-A), (M-B), (M-C). | corrected (SOURCES_HHOL_LF_VERIFY: R_k, (M-D) corrected; freeze repair confirmed as reduced to (M-A)); reduced |
| SOURCES_HHOL_LF_VERIFY.md | Verifier of SOURCES_HHOL_LF. | report |
| SOURCES_HHIST.md | (H-hist) in column-sum form, reduced to (B2) and (SM). | corrected (SOURCES_HHIST_N1_VERIFY: per-hop θ unsupported; ratio claim false) |
| SOURCES_HHIST_N1_VERIFY.md | Verifier of SOURCES_HHIST and ASSEMBLY_N1. | report |
| SOURCES_HHIST2.md | (H-hist2) reduced: summable ε′, ε″ via u-unit Jacobians (∂_u = −½g³∂_g); own-slot second derivative by relative u-disc Cauchy. | corrected (SOURCES_HHIST2_VERIFY: Lemma H′ still needs a summable β_j′; λ^m product form false); verified reduction |
| SOURCES_HHIST2_VERIFY.md | Verifier of SOURCES_HHIST2. | report |
| SOURCES_SM.md | (SM): per-hop contraction of the history dependence, derived from (W4) and CMP 116 (1.24). | corrected (SOURCES_SM_VERIFY: (G-gain) needed in hop and own slot) |
| SOURCES_SM_VERIFY.md | Verifier of SOURCES_SM (page images). | report |
| SOURCES_GGAIN.md | (G-gain): g_k-uniform derivative bound for the small-field step by pointwise Cauchy in x = g_k B; C_β uniform on (0, γ]. | corrected (SOURCES_GGAIN_VERIFY: Lemma G4 corrected, reduced via the real-t Mayer form; χ_k surface term then closed by SOURCES_G3) |
| SOURCES_GGAIN_VERIFY.md | Verifier of SOURCES_GGAIN. | report |
| SOURCES_G3.md | Lemma G3: the χ_k surface term of the g-derivative, proved by a direct surface estimate given (Q); S_χ = O(γ^p) for all p, uniform in g, k, X, volume. | corrected (SOURCES_G3_VERIFY: fixed-B vs fixed-B̃ settled, γ_k has two readings); proved given (Q) |
| SOURCES_G3_VERIFY.md | Verifier of SOURCES_G3 (n = 8 numerics reproduced). | report |
| SOURCES_Q.md | (Q): Gaussian domination constant c_− = ‖C*Δ_kC‖^{−1}; reduced to the norm bound ‖C*Δ_kC‖ ≤ γ_1 (CMP 116 (2.7)). | corrected (SOURCES_Q_VERIFY: order reversal confirmed with corrections; CMP 99 (3.132) prints the needed kernel bound); reduced |
| SOURCES_Q_VERIFY.md | Verifier of SOURCES_Q. | report |
| SOURCES_CDC.md | The norm bound ‖C*Δ_kC‖ ≤ γ_1 reduced by a Woodbury cancellation to the block-extension lemma (E_U); "unitary U suffices" refuted. | corrected (SOURCES_CDC_VERIFY: (E_U) is not the last input, (3.132) omitted; constants corrected); reduced |
| SOURCES_CDC_VERIFY.md | Verifier of SOURCES_CDC (text layers). | report |
| SOURCES_EU.md | (E_U) of SOURCES_CDC §4: K_0(4) = 103.25, 146.73, 185.64, 195.19 at N = 3, 5, 13, ∞ (numerics/k0_d.py); explicit covariant extension. | unverified (numbers [N], extension [R]) |
| SOURCES_LOC.md | Lemma LOC: localized covariance C^{(k)}(Z_0, 0) via Balaban's (2.16) and the Schur test; c_− = (γ_1 + ε_M)^{−1}; corrects SOURCES_Q_VERIFY §1. | reduced (verifier SOURCES_LOC_VERIFY in progress; case (a) confirmed) |
| SOURCES_LOC_VERIFY.md | Verifier of SOURCES_LOC (page images). | report, in progress |
| SOURCES_MA.md | (M-A): ⟨A − A_min⟩_u ≤ (n_i/u)(1 + η_x) by a virial identity; statement corrected to G = A − A_min. | corrected (SOURCES_MA_VERIFY: theorem confirmed given (H−); (M-A′) normalized-ratio bookkeeping a real open gap); reduced |
| SOURCES_MA_VERIFY.md | Verifier of SOURCES_MA (SU(2) toy reproduced). | report |
| SOURCES_MA2.md | (M-A′) normalized-ratio bookkeeping and (H−) from CMP 102. | unverified, in progress |
| SOURCES_MB.md | (M-B): closes with p_0(g) ≥ 17/(γ_0A_1²) (option B) or 20/(γ_0A_1²) (option A); depends on (M-A), (M-C). | corrected (SOURCES_MB_VERIFY: perturbation weights additive, g* = 0.82645 − θ_W − τ_C; condition p_0 ≥ 17/(γ_0A_1²) endorsed under θ_W + τ_C ≤ 0.2); verified |
| SOURCES_MB_VERIFY.md | Verifier of SOURCES_MB (page images pp. 377–390). | report |
| SOURCES_HTHR.md | (H-thr): threshold-shell contribution under model assumptions M1-M4. | corrected (SOURCES_HTHR_VERIFY: Lemma S; superseded by SOURCES_HTHR2.md) |
| SOURCES_HTHR_VERIFY.md | Verifier of SOURCES_HTHR (page images); resolves M1. | report |
| SOURCES_HTHR2.md | (H-thr) via Balaban's printed tail factor (Lemma T); M2' closed without a density. | verified, conditional on (H-hist2) (SOURCES_HTHR2_VERIFY) |
| SOURCES_HTHR2_VERIFY.md | Verifier of SOURCES_HTHR2 (page images); (H-hist2) is a new hypothesis. | report |
| SOURCES_D4D5.md | D4 (RP and lattice-symmetry transfer) and D5 (assembly of (S)); isolates the gap (FX). | verified (SOURCES_D4D5_VERIFY; (FX) confirmed as a new hypothesis) |
| SOURCES_D4D5_VERIFY.md | Verifier of SOURCES_D4D5. | report |
| SOURCES_FX.md | (FX): cluster-expanded form of the sourced output with epsilon-uniform radius; reduced to O1-O3. | corrected (SOURCES_FX_VERIFY: final step is not one more R step; O1 open) |
| SOURCES_FX_VERIFY.md | Verifier of SOURCES_FX (page images CMP 122 I, II; Dimock III). | report |
| SOURCES_FX_O1.md | O1(b): reverse-scaling lemma d'_{j+1}(S(Y)) >= c_* d'_j(Y), no additive constant (Lemma [P]). | verified (SOURCES_FX_O1_VERIFY; R2 then closed by SOURCES_FX_R2) |
| SOURCES_FX_O1_VERIFY.md | Verifier of SOURCES_FX_O1. | report |
| SOURCES_FX_O23.md | O2 closed via the real R-denominator (1.100); O3 closed for the upper bounds; O4 raised. | verified with corrections (SOURCES_FX_O23_VERIFY: O2 confirmed; O3 conditional on N3; O4 avoided by the main form) |
| SOURCES_FX_O23_VERIFY.md | Verifier of SOURCES_FX_O23. | report |
| SOURCES_FX_R2.md | Gap R2 (κ_fin ≥ κ_final): constant order fixed, volume-rate form κ_vol = √d κ_fin. | verified (SOURCES_FX_R2_VERIFY; two minor [I] inputs: R_{K+1} ≥ 1, C_c independent of g) |
| SOURCES_FX_R2_VERIFY.md | Verifier of SOURCES_FX_R2 (text layers and page quotes). | report |
| ASSEMBLY.md | Finite-torus existence theorem (compactness form) modulo named blocks; dependency table §3. | corrected (ASSEMBLY_VERIFY: proofs confirmed; table stale, nontriviality wording) |
| ASSEMBLY_VERIFY.md | Verifier of ASSEMBLY. | report |
| ASSEMBLY_N1.md | The bridge (B-N1): sourced cumulant bounds ⇒ (H-U). | verified (SOURCES_HHIST_N1_VERIFY; given (S); one constant slip) |
| INBOX.md | Delta notes for Elvin (certification cost and launch decision). | report |

## notes/reports/

| File | Description | State |
|---|---|---|
| BALABAN_THM2_STATUS.md | Literature status of Balaban's Theorem 2: never published. | unverified |
| BALABAN_EXCERPTS.md | Index of 97 verbatim Balaban excerpts recorded by the verifiers; 12 marked "needs verification". | corrected (BALABAN_EXCERPTS_CHECK: most of the 12 verified on page images, three readings corrected) |
| BALABAN_EXCERPTS_CHECK.md | Page-image check of the 12 "needs verification" excerpts. | report, in progress |
| O3_TEMPLATE.md | Architecture of the OpenAI 2D O(3) continuum-limit paper, used as a template. | unverified |
| o3_continuum.txt | Text of the OpenAI 2D O(3) paper (source text). | report |
| clay_ym.txt | Text of the Jaffe–Witten Clay problem statement (source text). | report |
| chatterjee.txt | Text of Chatterjee, "Yang–Mills for probabilists" (source text). | report |
| YM_GAPS.md | Likely formal statement and gap list of the OpenAI Yang–Mills claim. | unverified |
| EUCLID_INV_LIT.md | Literature check on Euclidean invariance of lattice constructions. | unverified |
| ONLINE_SWEEP.md | Online sweep for material that shortens the open items; found the Sussman–Alpöge account. | unverified |
| SUSSMAN_ALPOGE_MAP.md | Map of the Sussman–Alpöge account against these notes; citation block §5.1. | unverified |
| ETH_CONSTANTS.md | Explicit constants of the OpenAI "ETH is False" paper (side reading, not on the Yang–Mills path). | unverified |
| LOCAL_SMOOTHING_READ.md | Close reading of the OpenAI local-smoothing paper (side reading, not on the Yang–Mills path). | unverified |

## lean/

All 17 Lean files build with no sorry (axioms propext, Classical.choice, Quot.sound; su2_count and ab_count in AbelianCount use propext and Quot.sound only). Every file: proved in Lean. A VERIFY file checks that the Lean statement matches the note.

| File | Description | State |
|---|---|---|
| README.md | Toolchain, build, statement correspondence (one inventory table). | report |
| YmLean.lean | Root file importing the 17 modules. | proved (builds) |
| YmLean/LemmaDPrime.lean | Lemma D′ (shooting), step 8. Statement check: VERIFY_LemmaDPrime.md. | proved in Lean, no sorry |
| YmLean/LemmaDE.lean | Lemmas D and E. Statement check: none (note verifier LEMMAS_DE_VERIFY.md). | proved in Lean, no sorry |
| YmLean/LemmaH.lean | Lemma H (Gronwall telescoping, column-sum form). Statement check: none (note verifier SOURCES_HBETA_VERIFY.md). | proved in Lean, no sorry |
| YmLean/LemmaDDoublePrime.lean | Lemma D″ (window-sum shooting). Statement check: none (note verifier THEOREM2_PROOF_v2_VERIFY.md). | proved in Lean, no sorry |
| YmLean/DetIdentities.lean | Bordered determinant and gauge-restriction identities. Statement check: none. | proved in Lean, no sorry |
| YmLean/Telescoping.lean | Determinant and log telescoping, adapted Gram identity. Statement check: none (note verifier R2_VERIFY.md). | proved in Lean, no sorry |
| YmLean/AbelianCount.lean | SU(2) and abelian mode counts, equipartition, abelian share. Statement check: none (note verifier U1_VERIFY.md). | proved in Lean, no sorry |
| YmLean/TheoremK.lean | Telescoping bound and window_of_partial (arithmetic around Theorem K). Statement check: VERIFY_TheoremK.md. | proved in Lean, no sorry |
| YmLean/Gronwall.lean | Discrete Gronwall and contraction_bound. Statement check: VERIFY_TheoremK.md. | proved in Lean, no sorry |
| YmLean/CubeCount.lean | Cube-count arithmetic of Lemma [P] (cube_count_sharp, cube_count_lower). Statement check: VERIFY_CubeCount.md. | proved in Lean, no sorry |
| YmLean/BlockNorm.lean | ℓ² block-diagonal norms; rho2_le (ρ_2 ≤ ρ_1(j,K)·max_l ρ_1(j−1,k_l)). Statement check: VERIFY_BlockNorm.md. | proved in Lean, no sorry |
| YmLean/OishiRump.lean | Oishi–Rump invertibility bound; frobenius_power_bound. Statement check: VERIFY_BlockNorm.md. | proved in Lean, no sorry |
| YmLean/Envelope.lean | Nontriviality envelope of ASSEMBLY §2.9 (B-NT), log form. Statement check: VERIFY_Envelope.md. | proved in Lean, no sorry |
| YmLean/Divergence.lean | 1-chain divergence; identity (D) of H2_CERTIFY_P4. Statement check: VERIFY_Envelope.md. | proved in Lean, no sorry |
| YmLean/TheoremC1.lean | c1_two_step, c1_kappa_bound, c1_window. Statement check: VERIFY_TheoremC1.md. | proved in Lean, no sorry |
| YmLean/StripBound.lean | strip_bound_linear, strip_bound_quadratic ((3/2)τ bootstrap of N3). Statement check: VERIFY_TheoremC1.md. | proved in Lean, no sorry |
| YmLean/CertBridge.lean | Entrywise enclosure to certified cell bound (cell_sup_bound, vertex_bound). Statement check: VERIFY_CertBridge.md. | proved in Lean, no sorry |
| VERIFY_*.md (7 files) | Statement checks of the Lean files against the notes. | report |
| lakefile.toml, lake-manifest.json, lean-toolchain | Build configuration (Lean v4.33.1, Mathlib v4.33.1). | report |

## paper/

One article, 51 pages: "Yang–Mills on a finite torus along Bałaban's route: a verified reduction". It merges THEOREM2_PROOF_v4 and ASSEMBLY.

| File | Description | State |
|---|---|---|
| main.tex | Preamble, title, abstract, and \input of the parts. | unverified |
| intro.tex | §1: problem, Theorems A and B, status legend, relation to other work. | unverified |
| setup.tex | §2: notation, range of L, renamed labels. | unverified |
| theorem2.tex | §3: coupling flow, shooting lemmas, Routes K and B, (B2) and (H2). | reduced; Route K reduction verified |
| assembly.tex | §4: finite-torus existence and the dependency table. | verified (ASSEMBLY_VERIFY corrections applied); table follows PLAN.md |
| numerics.tex | §5: numerical results, verified point enclosure at L = 3. | unverified (floating point; one enclosure verified) |
| remains.tex | §6: open items. | unverified |
| appendix.tex | A Lean inventory, B status ledger, C label map, D revision history. | unverified |
| refs.bib, refs_check.md | Bibliography (entries from memory except the Sussman–Alpöge block) and its check list. | unverified |
| README.md | Build instructions and label map. | report |
| main.pdf | Compiled 51-page paper. | unverified |

## numerics/

| File | Description | State |
|---|---|---|
| NUMERICS.md | Log of the floating-point runs: β_1(L) for L = 2..11, per-level β_2, (H2) scans. | unverified (floating point, not certified) |
| KAPPA_D.md, kappa_d.py | κ_4 = 104.25, 147.73, 186.64, 196.19 (N = 3, 5, 13, ∞); free-case c_− ≥ (κ_4 L^5)^{−1}. Numbers only. | unverified ([N]) |
| k0_d.py | K_0(4) = 103.25, 146.73, 185.64, 195.19 for SOURCES_EU. | unverified ([N]) |
| h2cert_proto.py, h2cert_launch.sh, h2cert_proto_L3_lmax30.log | Prototype of the L = 3 point enclosure of ρ_2(∞, K*) in arb. | verified (H2_CERTIFY_VERIFY, rerun at N = 12) |
| h1cert_rho1.py | Float ρ_1(∞) scan: 1.760, 1.963, 2.032, 2.063, 2.080, 2.0895 at L = 3, 5, 7, 9, 11, 13. | unverified (float) |
| h1cert_cell.py, h1cert_cell2.py | Rigorous cell enclosures of ρ_1 (cell2 = 16-vertex Taylor-1 form); formulas bridged in Lean CertBridge.lean. | enclosures validated at L = 3, 5, 13; code not independently verified |
| h1cert_drive.py, h1cert_launch.sh, h1cert_modal.md | Driver, box launcher, and Modal notes for the certification. | unverified; nothing launched |
| h1cert_L{3,5,7,9,11,13}_{j1,j2,jinf}.json, h1cert_prof_L{11,13}.npz | Stored scan data. | report |
