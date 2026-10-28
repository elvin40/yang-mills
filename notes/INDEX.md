# INDEX: files in notes/ and notes/reports/

States. verified = an independent pass (a *_VERIFY.md file) confirmed the claims, with at most minor fixes. corrected = the verifier changed or rejected at least one claim in substance; read the verifier file with the note. unverified = no independent pass yet. superseded = a later file replaces the note, in full or in the named part. report = a verifier report, a status log, or a source text, not a claim in its own right. States come from the *_VERIFY.md files and the dated lines of PLAN.md. Files that agents are still writing are marked "in progress".

## notes/

| File | Description | State |
|---|---|---|
| INDEX.md | This table. | report |
| PLAN.md | Dated status lines, rules, and decisions for the whole campaign. | report |
| THEOREM2.md | Balaban's unpublished Theorem 2 stated precisely, with the open sub-theorem (T2-a). | §3 reduction verified (LEMMAS_DE_VERIFY); rest unverified; assembly superseded by THEOREM2_PROOF.md |
| THEOREM2_PROOF.md | Conditional proof of Theorem 2: reduction chain (T2-a1′) ⇒ Theorem 2 ⇒ Theorem 1, ledger §7. | corrected (THEOREM2_PROOF_VERIFY) |
| THEOREM2_PROOF_v2.md | Theorem 2 proof chapter, version 2 (shortest verified route). | unverified, in progress |
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
| U3_AW_VERIFY.md | Verifier of U3_AW with numerical checks (numerics/aw_verify/). | report, in progress |
| BETA_FP.md | Per-level increments β_{j+1}(0) by the exact Gaussian recursion; β_∞ = c log L reduced to Lemma 4.3. | corrected (BETA_FP_VERIFY) |
| BETA_FP_VERIFY.md | Verifier of BETA_FP. | report |
| BETA_FP_LEMMA43.md | Lemma 4.3: Prop. 2.1 anchor-free identity, c = 11N²/(12π²), reduction to (H). | corrected (BETA_FP_LEMMA43_VERIFY: Prop. 2.1 confirmed; (H) unsupported as stated) |
| BETA_FP_LEMMA43_VERIFY.md | Verifier of BETA_FP_LEMMA43. | report |
| BETA_FP_H.md | Repair of (H) at a constant abelian background; Theorem 3.1. | corrected (BETA_FP_H_VERIFY: resolvent step of (M) false); (M) part superseded by BETA_FP_M.md |
| BETA_FP_H_VERIFY.md | Verifier of BETA_FP_H. | report |
| BETA_FP_M.md | Input (M) without the false resolvent bound; reduced to three spectral bounds (S1)–(S3). | unverified |
| BETA_FP_PW.md | β_∞ = c log L from plane waves only (second route after BETA_FP_M). | unverified, in progress |
| BETA_FP_PW_VERIFY.md | Verifier of BETA_FP_PW. | report, in progress |
| B2_TWOSTEP.md | Attempt to prove (B2) for Theorem K through the two-step recursion (H″). | unverified, in progress |
| KAPPA_BOUNDED.md | Theorem K (κ_k bounded given (B2)) and Theorem 2 in weak form. | verified as a conditional reduction (KAPPA_BOUNDED_VERIFY; §4 reasoning on (B2) corrected; input (F) added) |
| KAPPA_BOUNDED_VERIFY.md | Verifier of KAPPA_BOUNDED, with numerical check of d_1 at L = 3. | report |
| UMK_BETA1.md | Umklapp-sum formulation of β_1(0) for any odd L; L = 5 value 0.743. | unverified (code validated against ym_momentum to 1e−12) |
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
| SOURCES_HHIST.md | (H-hist) in column-sum form, reduced to (B2) and (SM). | corrected (SOURCES_HHIST_N1_VERIFY: per-hop θ unsupported; ratio claim false) |
| SOURCES_HHIST_N1_VERIFY.md | Verifier of SOURCES_HHIST and ASSEMBLY_N1. | report |
| ASSEMBLY.md | Finite-torus existence theorem (compactness form) modulo named blocks; dependency table §3. | corrected (ASSEMBLY_VERIFY: proofs confirmed; table stale, nontriviality wording) |
| ASSEMBLY_VERIFY.md | Verifier of ASSEMBLY. | report |
| ASSEMBLY_N1.md | The bridge (B-N1): sourced cumulant bounds ⇒ (H-U). | verified (SOURCES_HHIST_N1_VERIFY; given (S); one constant slip) |

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
