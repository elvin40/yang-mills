IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_A8_POS verification (independent)

Started 2026-10-28.

## V1. Files read
SOURCES_A8_POS §0–§7; WC_FULL §0, §3–§5; SOURCES_G3; TRUST_LEDGER rows A2, A7, A8.

## V2. Lemma P re-derivation (a)–(e), 5.4, 6.3, 6.4(a)(b)
- (a) K_σ = (I + A_cD_σ)^{−1}A_c; ‖K_σ − A_c‖ ≤ 2Γ″²η. Correct.
- (b) Re⟨B,K_σB⟩ ≥ ½γ − ¼γ = ¼γ; ‖H(Y)‖ ≤ ‖Y‖. Correct. Γ_σ ∈ [1/(2Γ″), 4/γ]. Correct.
- (c) |dμ_C| = (|det K|/det H)^{1/2} dμ_{H^{−1}} pointwise. Correct under definition 2.2 (prefactor det K). Note: the exact integral is (2π)^{n/2}det(sym K)^{−1/2}, sym K := ½(K + K^T); with det K normalisation dμ_C is not normalised unless K = K^T. Under the normalised reading (prefactor det sym K) r_σ changes to (|det sym K|/det H)^{1/2}; the same bound holds since ‖sym K − H‖ ≤ ‖E‖. Hidden content in I-e: the normalisation choice. Harmless.
- (d) E = (K−A) − H(K−A), ‖E‖ ≤ 2ε; ‖F‖ ≤ 8ε/γ; |det(I+F)| ≤ Π(1+s_j) ≤ e^{n_Z‖F‖}; r ≤ e^{4n_Zε/γ}. Correct.
- (e) ratio to dμ_{A^{−1}}: e^{n_Zε/(2γ)}e^{½ε‖B‖²}. Correct.
- 5.4, 6.3, 6.4(a): det(I+iS), det(I+M_0) with M_0 antisymmetric, ‖N_0‖ ≤ ‖K_0 − A‖. Correct.
- 6.4(b): (I+M)^{−1} = (I−M)(I−M²)^{−1}; sym part = (I + M^TM)^{−1} ≤ I. Correct.

## V3. Page checks (CMP 116, 300 dpi, pp. 13, 15, 17; p. 3 pdftotext)
- p. 3 s-rule: quoted correctly.
- p. 13: σ_0 = LM-cubes "disjoint with the interior of Z̃_0, or with the interior of Z′_0", Z′_0 = smallest union of LM-cubes containing Z̃_0. Under either reading dist(Δ, Z_0) ≥ M (WC 5.4(a)). (G1) holds.
- p. 13: the walk expansion is constructed "for C^{(k)}(Z_0)" directly. I-b is a fair reading.
- p. 15: (2.14), (2.15) and the "symmetric / positive / perturbative" sentences match §1.3–1.4.
- p. 17: (2.23)–(2.25) match. Side condition α_5‖C^{(k)}(Z_0,0)‖ < ½ confirmed.

## V4. Lemma S
Pieces of A_exp = C*[(QG_1Q*)^{−1} − a − Δ_J + c_G𝒢*𝒢]C: (QG_1Q*)^{−1}, averaging term −a·I (and the a‖QA‖² inside G_1^{−1}), Δ_J (zero at J = 0), gauge term 𝒢^T𝒢. At real U each is real symmetric, given I-a. Inner product tr X*Y is real on 𝔤; Ad is orthogonal. I-a carries no hidden content for the measure: (2.5) sees only the quadratic form. It matters only for consistency of the walk expansion with the form. CONFIRMED.

## V5. Lemma D — one error
Step 1 uses "a tree through b, b′, X has length ≥ dist(b,X) + dist(X,b′)". In WC the A_exp terms are tree expansions (WC 4.2; A1_WALK_FULL l. 276: d = shortest tree). For a tree this is false: with b = b′ the tree is one branch, length ≈ dist(b,X). The correct bound is D ≥ dist(b,X) ≥ M − c′M_1 ≥ M/2. So e^{−ε″M/4} → e^{−ε″M/8} (or e^{−(ε″/4)(M − c′M_1)}). The 16/γ_exp (2 × 8/γ_exp), the e^{2·3^dκ_1} factor ((G3) + (H_κ)), and W ((G4), same count as WC(ii)) are correct. (H_η) threshold becomes M ≥ (8/ε″)[2·3^dκ_1 + log(128WΓ_1″²/γ_exp²)]. No conclusion changes.
Minor: (G2) holds for the unregrouped 5.3 series, not for the merged X_0 (large). Harmless: X_0 lies inside Z̃_0 at 5M_1 from its boundary, so meets no σ_0-cube, and the s-weights are the same for both groupings.

## V6. Claim (4) and (2.24)
- Reversal: the 5.3 series is P Σ(−F)^n with F_□ = E_□C_□h_□. Transposed terms have the left-parametrix shape h C^T E^T…; they are not terms of the same series. Symmetry of C_0 is unproved. CONFIRMED.
- Sign: the extra term ½⟨Γ_0X, [H_0^{−1} − sym C_0]Γ_0X⟩ is ≥ 0. In an upper bound this has the SAME sign as Balaban's O(α_5) remainder, so it is a cost, not a favourable sign. Its size O(η_M²)‖Γ_0‖²‖ZX‖² is absorbed in (2.25) with α_5. The file's text is correct; the "favourable sign" paraphrase is not.
- One extra change for G3/LOC: R_2 = C_0^{−1} − Re C(Z_0,σ)^{−1} of (2.16) (row A2) must be read as H_0 − H_σ = H(K_0 − K_σ). Kernel bounds survive symmetrisation. Otherwise G3 needs no change. (Q)'s one-bond-fixed form is not supplied by A8 (file says so).

## V7. Grades
(1) CONFIRMED. (2) CORRECTED: e^{−ε″M/4} → e^{−ε″M/8} (tree distance). (3) CONFIRMED (δ_c via Lemma CP taken as [R], not rechecked; normalisation of dμ_C for non-symmetric C is a reading, bound holds either way). (4) CONFIRMED, with the sign corrected: the extra (2.24) term is a small cost, not favourable; R_2 read with H.
A8 status: proof relative to WC_FULL inputs + I-a–I-e, verified with the Lemma D exponent fix. (Q) one-bond-fixed form stays open (outside A8).
