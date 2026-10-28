# SOURCES_A23_TSTEP — the large-field T-step rate loss (TRUST_LEDGER A23)

Date: 2026-10-28. Target: row A23 (consumer B22, SOURCES_T2_KAPPA2, SOURCES_BOOKKEEPING §4).
Ledger tags: [P] printed by Balaban (quoted), [V] verified here by computation, [I] reading/interpretation, [R] reduction relying on a printed sketch.
Firewall kept: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. What the project assumes (read 2026-10-28)

- SOURCES_T2_KAPPA2 §2–§5: per cycle the newest generation enters the T step at rate θκ (θ = 1 − m_tot/κ ≥ ½, KAPPA2_VERIFY §4: losses L1–L3 stack additively, m_tot ≤ ~10). The T step multiplies the rate by g_T(δ) = (1 − 10δ)L/2, read from the SMALL-field T step CMP 116 (2.33)–(2.41). Requirement (K1): θ g_T ≥ 1 + 4β, i.e. δ ≤ (1/10)(1 − 2(1 + 4β)/(θL)) = 0.0385 at L = 13, θ = ½, β = ¼.
- KAPPA2_VERIFY §8 (R-a): "The large-field T step (CMP 119 Sect. 3) was NOT checked on images; its loss constant may differ from 10δ." This is exactly A23.
- So the question for A23 is concrete: in the large-field T step, is the per-step rate loss a fixed fraction c·δ of the input rate (then (K1) with 10δ → cδ, still satisfiable by re-choosing δ), or is there a loss that is not a δ-fraction and not covered by L/2?

## 1. Where "CMP 109 Sects. 6–7" is: it is CMP 116 Sects. 1–2 [V]

- CMP 109 (paper [I] of CMP 119, reference 1, l. 1070 of the CMP 119 text) has Sects. 0–5 only (contents, CMP 109 text l. 29–35: Sect. 5 starts p. 292, references p. 298). There is no printed Sect. 6 or 7 in CMP 109. [V]
- CMP 116 (Part II) says: "The first paper is referred to as I, so we refer to its sections and formulas by writing I before the corresponding numbers". Its own sections are 1 (localization) and 2 (exponentiated cluster expansion). CMP 116 p. 2 still contains one preprint label: "Each factor in (6.6) depends on external gauge field configurations…" (text l. 114), where (6.6) is CMP 116 (1.6). [V]
- CMP 119 p. 276–277 cites "(6.9) [I]", "(1.6.10)", "(1.6.34)", "(1.6.41)", "Lemmas 5, 6 [I]", "Sect. 7 [I]", "(1.7.1)", "(7.2)–(7.10)", "(7.11)", "(1.7.12)", "(1.7.13)". These match CMP 116 by content: (1.10) is the localized random-walk expansion; (1.34) is the analyticity space; (1.41) is the expansion Σ V_k(Y, U_{k+1}, B); (2.2)–(2.11) the Mayer expansion and polymer construction; (2.12) E^{(k+1)} = Σ ρ^T(Z_1,…,Z_n)H(Z_1)…H(Z_n); (2.13) its resummation. [V on the text layer]
- Reading [I, strong]: "Sect. 6 [I]" = CMP 116 Sect. 1, "Sect. 7 [I]" = CMP 116 Sect. 2, "(1.6.n)" = CMP 116 (1.n), "(1.7.n)" = CMP 116 (2.n). The preprint of Part I had Sects. 0–7; the journal split it into CMP 109 (0–5) and CMP 116 (6–7 renumbered 1–2).
- Consequence: the two deferral targets in row A23 ("CMP 109 Sects. 6–7" and "CMP 116 (2.33)–(2.41)") are ONE target. The rate bookkeeping of the large-field T step, as far as Balaban prints it anywhere, is CMP 116 Sects. 1–2, ending in (2.33)–(2.41). KAPPA2 already read (2.33)–(2.41) on images.

## 2. What a T-step is, and the four candidate rate losses

Definition [I, from CMP 119 pp. 262, 264, 276–279]. One RG step is RT: first T, then R ("a composition of the operations T and R, applied in this order", CMP 119 p. 262 [V]). T is the k+1-st renormalization transformation at a FIXED determining set B, i.e. fixed large-field regions {Ω_j}, {Λ_j}, {Z_j} ("The set B determines the sequence {Ω_j}", p. 260 [V]). T integrates the fluctuation field on the small-field domain Ω_{k+1}, localizes the result by random-walk expansions (CMP 116 Sect. 1 = "Sect. 6 [I]"), and runs the exponentiated cluster expansion (CMP 116 Sect. 2 = "Sect. 7 [I]"). Terms localized in Λ_{k+1} become E^{(k+1)}, R^{(k+1)}; terms whose domain meets Ω_{k+1}\Λ_{k+1} or Z_{k+1} go into the boundary term B^{(k+1)} (pp. 276–279 [V]). The moving of cubes between the small- and large-field classes (the sum over B and the large-field suppression) is NOT in T; it is in R (CMP 122).

Candidate losses, with Balaban's printed handling:

(a) Sum over the large-field geometry (Peierls / entropy e^{c|Y|} against e^{−κd(Y)}). Not in T: B is fixed during T. In print, the sum over the regions Γ_n is controlled by volume bounds, e.g. CMP 119 (2.45)–(2.48): |E_k| ≤ … Σ_n |Γ_n|, and for B-terms "We use the exponential factor exp(−(κ − 1)d_j(X)) from the inequality (2.42) to control the sum over X in (2.41). The remaining factor exp(−d_j(X)) is used to get an additional small factor" (p. 263–264 [V]). These volume terms are paid by the large-field factor exp(−p_0(g)) per cube in R (CMP 122 II (1.92) and the p_0 condition before (1.95), read on images in KAPPA2 §5 / VERIFY §5). Cost to κ: an additive 1 (κ → κ − 1) in a one-time sum, not a per-step fraction, and not in T. Balaban also names, and rejects, the one form that would lose rate: resumming over large-field components "we lose a part of the exponential factor in (2.42), connected with the region Z_j, hence … d_j(X) replaced by d_j(X\Z_j)"; "We have chosen the ones above, because they agree with the assumptions for E-terms and R-terms" (p. 262 [V]). So m_a = 0 in T.

(b) Change of localization scale. Printed: CMP 116 (2.36) "2d_k(Z_i) ≥ Ld_{k+1}(Z′_i)" [V, image p. 19]. So e^{−ρ d_k(Z)} ≤ e^{−ρ(L/2)d_{k+1}(Z′)}. This is a GAIN by the factor L/2 (not L: the factor 2 pays for the closure Z → Z′). Direction checked: d_{k+1} counts LM-cubes, d_k counts M-cubes; distances in d_{k+1} are ≈ d_k/L, so a fixed physical decay is a larger multiple of d_{k+1}. The task's "d_{k+1} = d_k/L" is the ideal case; Balaban prints only the halved form.

(c) Merging of domains (Mayer / tree-graph resummation). Printed, as δ-fractions of the input rate [V, images pp. 18–21]: (2.28) (1 − 4δ)κd_k; (2.33) "exp(−(1 − 4δ)κd_k(Z_0))"; (2.34) "multiplied by exp(−δκd_k(Z_0)) can be estimated by 1"; (2.35) (1 − 5δ)κd_k; after (2.36) "(1 − 5δ)κd_k(Z_i) … replaced by (1 − 6δ)½Lκd_{k+1}(Z′_i)"; (2.37) (1 − 7δ)½Lκd_{k+1}(Z′_i); (2.38) "|H(Z)| ≤ C_3ε_1 exp(−(1 − 8δ)½Lκd_{k+1}(Z))"; (2.39)–(2.40) "exp(−(1 − 9δ)½Lκd_{k+1}(X))" with δ½Lκ extracted per factor for the Cammarota sum [26]; (2.41) "|E^{(k+1)}(X)| ≤ O(1)C_3ε_1 exp(−(1 − 10δ)½Lκd_{k+1}(X))". Each entropy sum uses (1.28) "with κ replaced by δκ" or (2.29)/(2.30) (volume M^{−4}|Y| ≤ const·(d_k(Y) + 1)). So every merging loss is a δ-fraction of the current rate, and the volume factors exp O(1)(LM)^{−4}|X| are absorbed by ½δLκd_{k+1}(X) via (2.30). Prefactors exp(±5κ), exp C_2κ_1 go into C_3ε_1.

(d) Propagator tails. Not a loss of κ. The random-walk rate κ_1 (from δ_0, δ_1: "δ_1 M ≥ κ_1", CMP 116 p. 7–8 text l. 222–224) pays the gaps: (1.32) needs "(κ_1 − 1) ≥ (1 − δ)κ"; before (2.38) "we assume that ½(κ_1 − 1) ≥ 2Lκ" [V, image p. 20]. These are lower bounds on κ_1, hence on M, with κ fixed. Sect. 1 itself spends δ-fractions: (1.32) "exp(−(1 − δ)κd_k(Y) − δκd_j(X))", Lemma 1 (1.36) exp(−(1 − 2δ)κd_k(Y)) [V text layer]; these feed (2.28).

Net printed small-field step: output rate = (1 − 10δ)(L/2)·(input rate). Balaban sets "(1 − 10δ)½L = 1, or δ = 1/10(1 − 2L^{−1})" (p. 21 [V]). So κ is kept exactly, with the L/2 gain spent on the 10δ fraction. This is the standard mechanism, but with gain L/2 and with the whole gain spent.

## 3. The large-field T step (CMP 119 Sect. 3): what is new, and what it costs

CMP 119 pp. 276–279 [V text layer; BOOKKEEPING §4 read pp. 271–278 on images] reduce the large-field T step to CMP 116 Sects. 1–2 plus four new operations. For each, the printed handling and the rate cost:

(N1) Layered covers. Cubes in Ω_n\Ω_{n+1} have scale L^{−n}; "we obtain all the formulas and bounds of Sects. 3, 4 [I] with η replaced by L^{−n}. In fact we have better bounds" (p. 276). Smaller cubes give more walk decay per unit length. Cost: 0. [V quote; I for "no loss"]

(N2) Random-walk localization for {Ω_j} (Thms 3.7–3.10 [13]), resummed in Y_0 ∈ D_k as in CMP 116 (1.10); "The remaining considerations and bounds are the same as in [I]" (p. 276). Cost: the CMP 116 Sect. 1 fractions (δ in (1.32), 2δ in (1.36)), already inside the 10δ. [V quote]

(N3) Boundary terms B^{(k+1)}: analyticity domains shrink by powers of ½ ((2.36)–(2.39) of CMP 119, p. 277); "estimated as in (2.42), but with the additional factor O(ε_k)". Cost to the rate: 0; the changes are analyticity radii and prefactors. [V]

(N4) The Z_0-marked cluster expansion of the expectation values, (3.44)–(3.47). Printed: the numerator is Σ H′(Z_0)H(Z_1)…H(Z_n); H′(Z_0) "satisfies the same bound as the other factors", i.e. CMP 116 (2.38) at (1 − 8δ)(L/2)κ; dividing by the denominator gives H′(Z_0)exp[E^{(k+1)}(Λ_{k+1}, Z_0) − E^{(k+1)}(Λ_{k+1})]; the difference is resummed by (2.13) into terms E^{(k+1)}(Λ_{k+1}, Y) with Y meeting Z_0 along a wall; "the exponential … is expanded into the Mayer expansion … This, after the proper resummation, yields (3.47)"; "The terms of the sum above satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0³(g_k))" (pp. 277–278). This SECOND Mayer resummation, on top of the CMP 116 output (2.41), is the one operation whose rate cost is not printed anywhere. It is the actual content of A23.

Bound for (N4) [P, sketch at Balaban's level of detail]. Write ρ := (L/2)κ (input rate κ in d_k; θκ for sourced inputs, see §4). Inputs: |H′(Z_0)| ≤ C_3ε_1e^{−(1−8δ)ρ d_{k+1}(Z_0)} (printed claim); |E(Y)| ≤ O(1)C_3ε_1e^{−(1−10δ)ρ d_{k+1}(Y)} ((2.41) form, since these are (2.13)-resummations of the same H's). Expand exp(−Σ_Y E(Y)) = Σ_n (−1)^n/n! Σ_{Y_1,…,Y_n} Π E(Y_i). Each term lives on X = Z_0 ∪ Y_1 ∪ … ∪ Y_n, which is connected because every Y_i meets Z_0.
- Tree length. d_{k+1} is a minimal tree length over LM-cubes; a Y_i that meets Z_0 along a wall joins Z_0's tree with at most one extra link. So d_{k+1}(X) ≤ d_{k+1}(Z_0) + Σ_i d_{k+1}(Y_i) + n·c_0, c_0 = O(1). The factor e^{ρc_0} per Y_i is a prefactor; it is absorbed by ε_1 (ε_1 is fixed after κ, L, M; Balaban makes the same kind of assumption, "2(L+2)^4O(1)ε_2 exp 5κ ≤ 1", before (2.37)). [I on the tree definition of d_{k+1}; P otherwise]
- Extraction 1 (sum over Y_i): keep e^{−(1−11δ)ρ d(Y_i)}; use e^{−δρ d(Y_i)} and (1.28) "with κ replaced by δκ" to sum Y_i over the domains meeting a fixed cube of Z_0: Σ ≤ O(1)C_3ε_1e^{ρc_0}·(LM)^{−4}|Z_0|·(number of cubes per LM-cube factor). The n-sum gives exp(O(1)C_3ε_1e^{ρc_0}(LM)^{−4}|Z_0|).
- Extraction 2 (volume): (2.30) gives (LM)^{−4}|Z_0| ≤ O(1)(d_{k+1}(Z_0) + 1); with the small prefactor this exponential is ≤ O(1)e^{δρ d(Z_0)}, i.e. one more δ-fraction, exactly as Balaban absorbs exp 2(LM)^{−4}|Z| after (2.40).
- Extraction 3 (resummation at fixed X, b ∈ X): the sum over (Z_0, {Y_i}) with union X is controlled by one more e^{−δρ d}, as in (2.39)–(2.40).
Output: |Ẽ^{(k+1)}(Λ_{k+1}, X, b)| ≤ O(p_0³)·O(1)C_3ε_1·e^{−(1 − 13δ)ρ d_{k+1}(X)}. The t-integration and the factor g_k change prefactors only ("the integration with respect to t preserves the form of the representation, and the multiplication by g_k yields small bounds", p. 278 [V]). The other expectation values in (3.26), (3.28) are "treated in exactly the same way" (p. 279 [V]), so the same count applies.

So the large-field T-step loss constant is c_LF ≤ 13 (δ-fractions of the input rate), against 10 for the small-field step. It is still a fixed fraction of the input rate, so the step stays homogeneous in the rate, which is what KAPPA2 (R-a) needs. [P sketch; the count 13 is ours, not printed; each extraction mirrors a printed one]

Consequence for Balaban's own text: at his printed δ = (1/10)(1 − 2/L), (1 − 13δ)L/2 < 1. So his printed claim "the bounds (2.42)" at rate κ after (3.47) needs δ re-chosen, δ ≤ (1/13)(1 − 2/L). δ is free (KAPPA2_VERIFY §8 (R-b)), so this is a constant choice, not an obstruction. Balaban also needs (1 + 4β)κ (p. 262), which already forces a smaller δ; the re-choice below covers both.

## 4. Per-step loss m_T and comparison with KAPPA2 (B22)

m_T. In KAPPA2's form, the T step maps input rate ρ_in (in d_k) to output rate g·ρ_in (in d_{k+1}), with
  small-field step (printed, CMP 116 (2.41)): g = (1 − 10δ)L/2;
  large-field step (CMP 119 Sect. 3, (N4) unprinted, §3 bound): g = (1 − c_LFδ)L/2, c_LF ≤ 13.
So the gross loss is the fraction c_LFδ ≤ 13δ of the input rate, paid from the gain L/2 (not L, by (2.36)). The net loss is zero once δ is chosen so that the gain covers it; Balaban's printed choice makes the small-field net factor exactly 1. No loss is ever an additive constant in κ inside T; additive costs (κ → κ − 1 in (2.47), κ_1 conditions) are one-time sums or conditions on κ_1, M. Item (a) (large-field geometry) is outside T and is paid by p_0 in R.

What KAPPA2 assumes. KAPPA2 §2–§5 and the Lean lemma K1_iff use g_T = (1 − 10δ)L/2 for every T step, and KAPPA2_VERIFY (R-a) flagged that the large-field constant "may differ from 10δ". It does differ: the count is ≤ 13. KAPPA2's mechanism is unchanged (homogeneous step, δ free); only the constant 10 becomes 13.

Corrected recovery condition (K1′) [P, arithmetic checked in python]:
  θ(1 − 13δ)L/2 ≥ 1 + 4β  ⇔  δ ≤ δ′_θ := (1/13)(1 − 2(1 + 4β)/(θL)).
- L = 13, θ = ½, β = ¼: δ′_θ = 0.02959 (was 1/26 = 0.03846). KAPPA2's δ = 0.03 FAILS: (1 − 0.39)·3.25 = 1.9825 < 2. Take δ = 0.025: 0.675·3.25 = 2.194 ≥ 2 (margin 0.19κ); δ = 0.02: 2.405 ≥ 2.
- L = 13, θ = ½, β = 1/7: δ′_θ = 0.0397; δ = 0.03 still works (1.9825 ≥ 1.571).
- For any finite count c: δ_c = (1/c)(1 − 2(1 + 4β)/(θL)) > 0 iff L > 4(1 + 4β) (θ = ½), the same L-condition as before. So the result does not depend on the exact count; δ = 0.02 covers every c ≤ 19 at β = ¼.
- (K2) (old terms, θ(1 − β)L/2 ≥ 1 + 3β) has no δ; unchanged.
- κ threshold: the δ-sums now run at δθκ = 0.0125κ (δ = 0.025), so κ_0 grows by 0.0692/0.0125 = 5.5 relative to the unsourced need (was 3.6). κ is fixed first (CMP 109 Thm 3: κ ≥ κ_0, M ≥ M(κ)); KAPPA2_VERIFY §6–§7 show a larger κ moves only ε_1, α's, p_0, M, γ. The κ ≥ 1536 bound from (1.94) has no δ; unchanged.
- (K3) and κ_eff = θκ/(1 + 4β) (last scale) do not involve the T-step constant; unchanged.

Stacking with KAPPA2's θ. θ = 1 − m_tot/κ (KAPPA2_VERIFY §4) counts the ADDITIVE polynomial absorptions L1–L3 outside the T-step chain. The 13δ is MULTIPLICATIVE inside T. They compose as θ·(1 − 13δ)L/2, which is the left side of (K1′). No double count and no gap.

HHIST2. The history bound uses own-slot decay S_0e^{−κ′d} for some κ′ > 0 and product decay in the step index (λ^{m/2}); it needs no specific κ′ (HHIST2 §1 (N-c), §2 (e)). The T-step constant does not enter it.

Lean. K1_iff and K1_numeric are stated with 10δ and δ = 0.03. They stay true as stated, but they now check the small-field step only. The large-field step needs the 13δ version; with δ = 0.025 the numeric line is 1 + 4·¼ ≤ ½(1 − 13·0.025)·13/2 (= 2.194). Not added (this task writes no Lean; flag for the Lean owner).

## 5. Conclusion and ledger

Verdict. A23 CLOSED as a reduction, with one constant change in B22.
- Balaban keeps κ in every T step by the mechanism "fixed δ-fractions of the rate, paid by the rescaling gain L/2 of (2.36)". He prints it for the small-field step (CMP 116 (2.28)–(2.41), loss 10δ, δ = (1/10)(1 − 2/L)).
- "CMP 109 Sects. 6–7" are CMP 116 Sects. 1–2 (preprint numbering). So A23's two deferral targets are one, and that one is printed.
- The only operation of the large-field T step with an unprinted rate cost is the second Mayer resummation of the Z_0-marked expansion, CMP 119 (3.44)–(3.47). Its cost is ≤ 3 more δ-fractions (§3), so c_LF ≤ 13.
- The large-field geometry sum (Peierls) is not in T; it is paid by p_0 in R (CMP 119 (2.45)–(2.48), CMP 122 II (1.92)–(1.95)). Propagator tails cost κ_1 and M, not κ. Rescaling is a gain, L/2.
- KAPPA2 assumed 10δ. With 13δ the recovery holds under (K1′) δ ≤ (1/13)(1 − 2(1 + 4β)/(θL)). At L = 13, θ = ½, β = ¼ this is δ ≤ 0.0296: KAPPA2's δ = 0.03 must become δ = 0.025 (2.194 ≥ 2). The recovery is still necessary (the sourced inputs at θκ do need it); it is not made redundant.

Residue (not closed by this file):
- R1 [P sketch]: the (N4) bound of §3 is at Balaban's level of detail, not a full proof. It needs an independent verifier.
- R2 [I]: d_{k+1} is a minimal tree length, so a Y_i meeting Z_0 along a wall adds ≤ c_0 = O(1) to d_{k+1}(X). Read from the CMP 109 definition, not re-checked on images here.
- R3 [R]: H′(Z_0) satisfies (2.38) ("satisfies the same bound as the other factors", CMP 119 p. 277) is Balaban's assertion.
- R4 [I]: the preprint-numbering identification (CMP 109 "Sect. 6/7" = CMP 116 Sect. 1/2). Strong: CMP 116 p. 2 still cites "(6.6)" for its own (1.6), and every CMP 119 citation (1.6.n), (1.7.n) matches CMP 116 by content.

Ledger.
- [V] CMP 116 (2.33), (2.34), (2.37), (2.39), (2.40) on images at 300 dpi (pp. 19–21); (2.36), (2.38), (2.41) and the δ equation on text layer, matching KAPPA2_VERIFY §2 images; CMP 116 (1.32), (1.36), "δ_1M ≥ κ_1", "(6.6)" on text layer; CMP 116 "½(κ_1 − 1) ≥ 2Lκ" on image p. 20. CMP 119 (2.40)–(2.42) on image (p. 261, pdf 19); CMP 119 pp. 262–264 ((2.45)–(2.48), the rejected Z_j resummation), pp. 276–279 ((3.43)–(3.47)) on text layer, consistent with BOOKKEEPING §4 images.
- [P] §3 (N4) count c_LF ≤ 13; §4 (K1′) and numbers; composition θ·(1 − 13δ)L/2.
- [I] R2, R4; "(N1) costs 0".
- [R] R3; δ free (KAPPA2_VERIFY §8 (R-b)); homogeneity of CMP 116 Sect. 1–2 in the input rate (KAPPA2_VERIFY §8 (R-a), now extended to the large-field step by §3).

Suggested row changes (for the ledger owner; not applied):
- A23 → "reduced [P sketch]: large-field T-step loss = 10δ (CMP 116 (2.41), printed) + ≤ 3δ for the Z_0-marked Mayer resummation CMP 119 (3.44)–(3.47) (unprinted); CMP 109 'Sects. 6–7' = CMP 116 Sects. 1–2; residue R1–R4; SOURCES_A23_TSTEP".
- B22 → replace (K1) by (K1′) (13δ) and δ = 0.03 by δ = 0.025 at L = 13, β = ¼; κ_0 factor 3.6 → 5.5. Lean K1_numeric checks only the 10δ step.

STATUS: COMPLETE (pending independent verification)
