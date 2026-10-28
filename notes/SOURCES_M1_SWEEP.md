# SOURCES_M1_SWEEP — (M1) sweep of CMP 119 Sect. 3 and CMP 122 II for uses of the fluctuation covariance

Date 2026-10-28. Ledger tags: [P] proved here, [V] page-read (image or text layer, named), [I] reading, [R] reduction, [open].
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. No other file edited.
Inputs read: SOURCES_SRULE_CONVENTION §5–§6 (Q1–Q11, (U-a)–(U-d), NEW-1, NEW-2), SOURCES_A16_REPLACE2 §1 (Q-list).

## 0. Page ranges [V, pdftotext per page]
- CMP 119 (1988_cmp119_convergent_renormalization_expansions.pdf, 44 PDF pages). Journal p = PDF p + 242. Sect. 3 "The k+1-st Renormalization Transformation and the Proof of Theorem 2" starts on PDF p. 22 (journal p. 264), l. 35; it runs to the References on PDF p. 43 (journal p. 285). The brief's "PDF pp. 26–41" is too narrow; the sweep covers PDF pp. 22–43.
- CMP 122 II (1989_cmp122_large_field_renormalization_II.pdf, 38 PDF pages). Journal p = PDF p + 354; pp. 355–392 = PDF pp. 1–38; References on PDF p. 38.

## 1. Method
Per-page text layer grep (pdftotext -layout) for C(k)/C<k)/C{k)/C(fc) OCR variants, "Δ", "det", "covarian", "Gaussian", "dμ", "C*", "propagat", "Euclid". Hits on "determin…", δ_k, Ω-sequence wording are false positives and are triaged on the text layer. Every true hit page is read on its 300 dpi image (/tmp/m1s, scratch).

## 2. CMP 119 Sect. 3, hit by hit

2.1 p. 270 (PDF 28) [V image].
- (3.23): T^{(k+1)} = Σ_{S_{k+1}}∫dV_k|… z^{(k)}∫dA_k|_{Ω_{k+1}∩Λ^c_{k+1}} χ(…) exp[−½⟨A_k, C*Δ^{(k)}CA_k⟩ + ½⟨A_k, C*Δ^{(k)}C C^{(k)}(Λ_{k+1}) C*Δ^{(k)}CA_k⟩]. The large-field variable A_k on Ω_{k+1}∩Λ^c_{k+1} carries the Schur-complement precision C*ΔC − C*ΔC·C^{(k)}(Λ_{k+1})·C*ΔC. This is the NEW-2 object (the Δ^{(j)}_{Λ^c} of CMP 122 I (1.25)); here it is produced by Gaussian conditioning. Property used: Q9 (conditioning on the complement) for the localized C^{(k)}(Λ_{k+1}) with Λ_{k+1} in the role of Z_0. Class: Q9 + Q2 (C^{(k)}(Λ_{k+1}) as a localized covariance). Supplied by A16_REPLACE2 §3 (Q9) if the sourced Schur complement uses 𝒲 restricted to Λ_{k+1} [I: the same volume convention C-new-3].
- (3.25): z^{(k)}∫dA|_{Λ_{k+1}}χ^{(k)}(Λ_{k+1})exp[−½⟨A, C*Δ^{(k)}CA⟩ − ⟨A, C*Δ^{(k)}CA_k⟩ − ½⟨A_k, C*ΔC C^{(k)}(Λ_{k+1})C*ΔC A_k⟩ + P^{(k)} + … + V^{(k)}]. The small-field fluctuation integral on Λ_{k+1}, coupled linearly to the large-field A_k (completed square). Class: Q9 (the cross term −⟨A, C*ΔCA_k⟩ is the conditioning coupling of CMP 116 (2.5)), (U-a) restricted to Λ_{k+1}. Supplied.
- Last paragraph: "the Euclidean covariance property (2.32) holds for Euclidean transformations leaving invariant the partition of the lattice T_η into L^{−(k−j)}MR_j-cubes." First hint for NEW-1: the covariance is restricted to the subgroup that preserves a partition (see §4).

2.2 pp. 264–268 (PDF 22–26) [V images pp. 267–268; text layer pp. 264–266].
- pp. 264–266: large-field decompositions (3.1)–(3.11), domains Ω_{k+1}, P_{k+1}, Q_{k+1}, Γ_{k+1}; no Δ, C^{(k)}, or Gaussian on the text layer (hits are δ_k and "determined"). No use.
- p. 267 (3.15), first line of the integrand: z^{(k)}∫dA_k|_{Ω_{k+1}}χ′_k(Ω_{k+1})exp[−½⟨A_k, C*Δ^{(k)}CA_k⟩ + P^{(k)}(g_k, U_{k+1}, A_k) + …]. Text just above: "All the applied formulas are the same as in Sect. 2 [I], only the symbols represent different operators, determined by the sequence {Ω_j}. Their properties are essentially the same as before, because of the localization of the field A_k." So Δ^{(k)} in Sect. 3 is the Ω-sequence operator, not the free-volume one. Property used: none here (definition). Class: the C-new-3 volume convention (the sourced 𝒲_S must be built on the same Ω-sequence operator) [I].
- p. 268 (3.16)–(3.19): small/large-field partition of A_k, bounds on V^{(k)}; no covariance use.
- p. 269 (3.20)–(3.22): domains Λ_{k+1}, S_{k+1}; change of variables in A_k(b) for b ∈ S*_{k+1} via (1.22) with H^{(k)}; "the first order expansion of the action with respect to the perturbative parts of the changes of variables" → V^{(k)}(S_{k+1}, A_k, H^{(k)}). This differentiates the quadratic form ⟨A, C*Δ^{(k)}CA⟩ along a localized shift. Class: Q4 (analyticity, local kernel of C*ΔC) + the tree form of Δ (U-c). Supplied (A16_REPLACE2 §6 gives Δ_k^f = Δ_k − g²𝒱_S a tree form; the derivative of ⟨A, C*Δ^fCA⟩ in a localized direction is a bilinear form with that kernel) [I].
