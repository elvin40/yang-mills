# Rename map (paper names vs. notes names)

The notes in the project root keep the old names. The paper uses the new names. Every `\label` key is unchanged (for example `lem:L004`, `sec:Dprime`, `rem:GAprime`). Format: old -> new — notes file.

## Section steps (sources.tex)
- Step 8′ -> Step 9 — paper heading (sec:src-full)
- Step 8″ -> Step 10 — paper heading (sec:src-r5)
- Step 8‴ -> Step 11 — paper heading (sec:src-r6)
- Step 8⁗ -> Step 12 — paper heading (sec:src-r7)
- Step 9 -> Step 13 — paper heading (sec:src-r8)
- Step 10 -> Step 14 — paper heading (sec:src-r9)
- Step 11 -> Step 15 — paper heading (sec:src-EU)

## Lemmas
- Lemma D′ (L-004) -> Lemma DS — LEMMA_DPRIME.md
- Lemma D″ (L-005) -> Lemma DT — KAPPA_BOUNDED.md §5.3
- Lemma D′-nest -> Lemma DS-nest — SOURCES_T2_B7_CLAMP.md
- Lemma D″-nest -> Lemma DT-nest — SOURCES_T2_B7_CLAMP.md
- Lemma C′ (L-127) -> Lemma CS — SOURCES_B21_S_PRIME.md
- Lemma H′ (L-191) -> Lemma HG — SOURCES_HTHR.md
- Lemma H″ (L-192) -> Lemma HR — SOURCES_B10_SWEEP.md
- N3″ (complex form) -> N3-C — SOURCES_B10_SWEEP.md
- Lemma V1′ -> Lemma V1-PT — SOURCES_T2_MPT_STEPC.md

## Clauses of lemmas and theorems
- (iii′) (hypothesis of Lemma D′) -> (iii) — LEMMA_DPRIME.md
- (a″) (tail-sum bracket of Lemma D″) -> (a-tail) — KAPPA_BOUNDED.md §5.3
- (c′) (pairwise bound of Lemma D″ and Theorem 2w) -> (c-pair) — KAPPA_BOUNDED.md §5.3; THEOREM2_PROOF_v4.md
- (c′) (repaired part (c) of Lemma T, L-284) -> (c-rep) — SOURCES_LEMMA_T_REPAIR.md
- Lemma C1(iii′) -> "a revised clause of Lemma C1" — SOURCES_R010_CC.md
- clause (e′) of FABLE_HARD_VERIFY §C.2 -> pointer dropped (the § reference stays) — FABLE_HARD_VERIFY.md
- (3.1′) -> "the variant of (3.1)" — SOURCES_T2_F_STEPB.md
- Theorem 3.1′ of BETA_FP_H -> "the variant of Theorem 3.1 of BETA_FP_H" — BETA_FP_H.md

## Items of the open lists (remains.tex)
- item 7′ -> item 7 — THEOREM2_PROOF_v4.md §10; SOURCES_GGAIN_NONMONO.md
- item B2′ -> item B2 — THEOREM2_PROOF_v4.md §10 (not the hypothesis (B2))
- item H′ (residue of the L=13 certificate) -> item H-res — paper list (remains.tex, sec:rem-cert)

## Hypotheses and conditions
- (H′) "κ_k = o(k)" -> (H_o) — THEOREM2_PROOF.md (first version)
- (H′) of U3_AW -> (HS) (the paper name already in use) — U3_AW.md
- (H″) of U3_AW -> (H_A) — U3_AW.md
- (G_A′) (2D gap of A′) -> (G_2D) — SOURCES_T2_GAPRIME2.md
- (KE′) (H-136) -> (KE2) — SOURCES_QE_KE_HQ.md
- (S′) (H-168) -> (S_σ) — SOURCES_B21_S_PRIME.md
- (S′_∞) (H-169) -> (S_∞) — INFINITE_VOLUME_FABLE.md
- (R1′) (H-241) -> (R1_f) — SOURCES_HHOL_LF_SPRIME.md
- (M-A′) (H-144) -> (M-A2) — SOURCES_MA.md; SOURCES_MA2.md
- (K1′) (H-216) -> (K1_δ) — SOURCES_T2_KAPPA2.md
- (Det′) (K-036) -> (Det) — SOURCES_A15_LOC.md
- (C1′)–(C4′) -> (C1-m)–(C4-m) — SOURCES_HHOL.md
- (C4″) (H-185) -> (C-rad) — SOURCES_HHOL.md
- (2.24′) -> (2.24-m) — SOURCES_HHOL.md
- (G1′), (G3′) (H-195, H-198) -> (HT1), (HT3) — SOURCES_HTHR2.md
- (G2‴) -> (MT2) — SOURCES_B15_M245.md
- (AL′) (H-072) -> (AL-r) — THM39_FULL.md
- (U-W)′ -> (U-W2) — SOURCES_U_ELL_FINAL.md (distinct from H-359 (U-W) of SOURCES_U_ELL.md §6.1)
- F2′ -> F2 — SOURCES_HHOL_LF.md
- M2′ -> M2b — SOURCES_HTHR.md; SOURCES_B15_M245.md
- P1′ (certificate premise) -> P1a — numerics/H1CERT2_M1_RESULT.md
- R2′ (item of ledger R-004) -> R2b — SOURCES_A3_GAMMA0_FULL.md

## Kept on purpose
- Primes that denote mathematical objects: A′, D′, B′, G′, Q′, V″, Δ′, R′ and R″ (Balaban's operations), the sets B/B′, constants C′_1, ε′, and so on.
- Prime-free letter names (Lemma A, C, D, E, G3, T, Theorem K, SM, ...), "Theorem 2w", ledger IDs (L-, H-, R-, K-), Lean identifiers (`lemma_DPrime`, ...), and step numbers inside notes files ("Step 8 of LEMMA_DPRIME.md").
