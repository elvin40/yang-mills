# THEOREM2_PROOF_v2 verification

Verifier: independent Opus pass, 2026-10-27. Firewall kept: no /tmp/sa_repo, SUSSMAN_ALPOGE_MAP.md only to §5.1.

## §A Check (1): Lemma D″ and the constant 64/15

- 64/15: c_sw = max(2, 1/(1 − (1+β_0)^{−2})). At β_0 = 1/7: (8/7)^{−2} = 49/64, so 1/(15/64) = 64/15 ≈ 4.267. Matches LEMMA_DPRIME_SWEEP §7 "Single smallness condition" (the sweep's §1 writes 4.27). Origin: item 2, (2.6) line 2, g_m ≤ (1+β_0)g_n needs u_n ≥ D/(1 − (1+β_0)^{−2}). The 2 is item 5 (Σ g_j^{κ_0}). Item 11 needs only 2.42D (slack (1+β_0)²). Item 3 follows from c_sw·D′γ² ≤ 1 plus log γ^{−2} ≥ 4p. CONFIRMED.
- Hand rederivation of D″ from (5.1) and (H0): |T − T_0| ≤ C_1γ(n−m) ≤ (b/4)(n−m). Lower: T ≥ (3b/4)(n−m) − 2R, so β = 3b/4, D′ = 2R, and T ≥ −2R = −D for the IVT bracket. Upper: T ≤ (5b/4)(n−m) + 2R ≤ (5b/4 + 2R)(n−m) for n − m ≥ 1 (trivial at n = m). So B′ = 5b/4 + 2R with no additive constant is correct. IVT on [t − D, t + B′K] and the clamp-inactive step (t ≥ γ^{−2} + D ⇔ g ≤ g_1) are the D′ Steps 2–5 unchanged. CONFIRMED.
- (5.1) from |S_k − c k log L| ≤ R: window = difference of two terms each ≤ R, so ±2R. Correct. S_0 = 0 gives d_0 = 0, consistent.
- Minor: §1.2 calls γ_* "D-free". γ_* contains γ²B′ ≤ (1+β_0)² − 1 with B′ = 5b/4 + 2R, so it depends on R. The order of constants in §6 (R before γ) handles this. Wording only: say "free of the D′-ratio conditions".
- Minor: v2 §2.2 says "D = D′ := 2R"; the Lemma D′ notation has D < D′. Consistent here. OK.

## §B KAPPA_BOUNDED §5.3–§6 and KAPPA_BOUNDED_VERIFY read

- v2 §2.2 matches KAPPA §5.3 verbatim in content (R = κ_*). VERIFY §6 CONFIRMED (a″), "no J needed", (c′), and the Theorem 2w display. v2 tag [proved+verified] for Lemma D″: CONFIRMED.
- v2 §4.1 grades ((i)–(v), (vii) CONFIRMED; (vi) CORRECTED in reasoning) match VERIFY §9. CONFIRMED.
- v2 §5.1 Prop. 4.1 algebra and K = 0 bound: VERIFY §7 CONFIRMED. v2 §5.3 "reason corrected": matches VERIFY §7 (obstruction = ∂σ^(1) in Q_j and in (W-2)). CONFIRMED.
- (h) numerics h/L ≈ 1.76, h²/L⁴ ≈ 0.34: VERIFY §8 states this, sourced to U3_AW_VERIFY §6 (run by that verifier). Tag [numerical, reproduced]: acceptable (one run by a verifier, not by the author; "reproduced" is slightly generous; [numerical, run by verifier] is the exact label, which §8.3 uses).
- Open point: v2 tags (B2w) sufficiency "[proved+verified]" (KAPPA Remark 2.3). VERIFY does not grade Remark 2.3 by name. It is implied by VERIFY §5/§9(iv) ("σ^(2) enters undifferentiated; integrand ≤ C|K|^{−2}"), so the tag is defensible but should cite VERIFY §9(iv), not stand alone.
- Open point: "(H″) ⇒ (A) in full ⇒ (B2) and (C1σ)" is not checked in KAPPA_BOUNDED_VERIFY. Source must be U3_AW / U3_AW_VERIFY. Checking next.

## §C Check (4): the (B2) reduction vs U3_AW / U3_AW_VERIFY / KAPPA_BOUNDED_VERIFY

- (C1σ) + (h) ⇒ (B2): Prop. 4.1, algebra CONFIRMED in KAPPA_BOUNDED_VERIFY §7; VERIFY §8 names this pair as the live route. v2 matches. CONFIRMED.
- (h) at L = 3: U3_AW_VERIFY §6 table (1.6516, 1.7360, 1.7569, 1.7600). v2 numbers match. (HS) refuted, threshold √2: matches. CONFIRMED.
- (H″) ⇒ (A) in full ⇒ (B2), (C1σ): the implication is only a sketch in U3_AW §4.7 ("the same argument over blocks of n steps works"; "longitudinal parts are where the per-step gauge fixings could accumulate"). U3_AW_VERIFY grade 5 confirms the reduction to (H′) only, and calls (H″) "numerically plausible". No verifier graded (H″) ⇒ (A). v2 §5.3 says "(H″) would give (A) in full" and "Either one gives (B2)" with no tag. CORRECTION NEEDED: tag "(H″) ⇒ (B2)" as [argued] (U3_AW §4.7 sketch, unverified). Only "(C1σ) + (h) ⇒ (B2)" is [proved+verified].
- (H″) numerics: 2.056 < 2.828 at one level pair (2, 3), 71 K points. v2 says "coarse grid, one level pair". CONFIRMED.
- (B2w) suffices: see §B; defensible, cite VERIFY §9(iv).
- §5.3 "No per-momentum d = 4 constant-field code exists": matches KAPPA_BOUNDED_VERIFY §8 and U3_AW_VERIFY §7. CONFIRMED.

## §D v1 corrections (THEOREM2_PROOF_VERIFY) applied in v2?

| v1 finding | v2 location | applied? |
|---|---|---|
| Necessity of every β_j(0) > 0 was mis-tagged verified | §1.4, §9 [proved, unverified] | yes |
| Lemma E C¹ vs Cg² | §2.4 "trivial variant" | yes |
| Theorem 6.1 Taylor-data norm | §7.1 | yes |
| "whole log Λ in fine piece" as fact | §3.4 removed, marked equivalent | yes |
| (H′) "weaker" | §3.4 "EQUIVALENT" | yes |
| C j²L^{−2j} at j = 0 | §7.1 C(1+j)² | yes |
| single-p entries, verifier β_3 = 0.261 | §8.2 | yes |
| O6 surrogate Λ | §7.1 | yes |
| SU(N) claim | §9 refuted list, §10.11 | yes |
| early steps not needed for Theorem 1 (Lemma D′) | §1.4, §2.1, §7.2 | yes |
| j_* with C ~ b⁶ | §7.2 | yes |
| open list: (G2), LW, γ ≤ γ_Bal, neutral paragraph, CMP 95/96/99 | §10 items 6, B3, §2.2 γ_Bal, §7.1, §9 [Balaban] | yes |
| "odd L > 11 for his constants" is an interpretation | §6, §10.10 still say "his constants need odd L > 11" | NOT applied (wording) |
| v1 caveat: Balaban may use monotone g_k | §2.3 sweep, §6 "Monotone couplings" | yes (sweep, unverified) |

Verdict: all substantive v1 corrections are applied. One wording item is not.

## §E Lemma D′ tags, Lean, sweep enumeration

- Lemma D′ (a)–(d), K_0, Remark 4: LEMMA_DPRIME_VERIFY grades 1, 2, 5 CONFIRMED. v2 §9 cites "grades 1, 2, 5": correct. v2 §2.1 says "Steps 2–3, 6–7 (all CONFIRMED)": inaccurate, Step 7 also holds grades 3, 4, 6 = CORRECTED (Remark 1 overclaim, §5 misreads, ledger). Those CORRECTED items are not used by v2 except through the sweep. Wording fix.
- Lean: lean/VERIFY_LemmaDPrime.md confirms `lemma_DPrime` statement (weaker hypotheses, stronger conclusions), axioms propext/choice/Quot.sound, Step 8 via `lemma_DPrime_step8`. v2 §2.1 matches. CONFIRMED. Lean has no Lemma D″ and no history form: v2 states both.
- Sweep item count. v2 §2.3 says "5 of 19 items verified" (items A–E). A–E are five comparisons but map to four table rows: A = 11, E = 12, C and D = 16, B = 18. Correct to "4 of 19 table rows (comparisons A–E)".
- Sweep enumeration. v2 §2.3 bullets cover items 0, 1, 2, 3, 5, 7, 8, 10, 11, 12, 13, 15, 16, 17, 18. Items 4 ((2.8)–(2.9), "from 1–3"), 6 and 9 (ε_{k+1} ≤ (1+β_0)ε_k, both sides), and 14 (R_{k−N_0+1} vs R_k, lower side) are missing from the bullets. The sweep §7 covers them under the same (S) + γ_* conditions, so the conclusion is unchanged. The sentence "Each is covered" is correct; the list under it is incomplete. KAPPA §5.4 has the same omission. CORRECTION (list).
- 64/15 vs item 11: item 11 needs 2.42D (LEMMA_DPRIME_VERIFY Step 4), weaker than 64/15. Consistent.

## §F History dependence (L5): a sharper statement is needed

- v2 §2.1 "Proof idea" uses the clamped flow. With Balaban's history-dependent β, the clamp proof needs β_{k+1} continuous and bounded on the whole cube ]0, γ]^{k+1} (LEMMA_DPRIME Remark 3). LEMMAS_DE_VERIFY §2 item 1 says Balaban defines β_{k+1} only on actual RG trajectories.
- New point (not in any verifier file I read): in the D″ setting, Balaban's β_{k+1} exists only on histories for which his Theorem 1 induction has run to step k. By the sweep, that induction uses (2.6)–(2.9), i.e. (c′) + (S), on the history, not only g_i ∈ ]0, γ]. A clamped history g̃_i = φ(ũ_i) can violate the growth side of (c′): max(a, c) − max(b, c) ≥ min(a − b, 0) only gives u_m ≥ u_n − D′, not u_m ≥ u_n + β(n−m) − D′. So the clamp proof evaluates β on histories outside Balaban's domain.
- On true (unclamped) trajectories with all u_i ≥ γ^{−2}, (c′) up to step k is automatic from (a″). So a nested-interval proof (LEMMAS_DE_VERIFY §1.5 style, domain D_k = {u_0,…,u_k ≥ γ^{−2}}) would stay inside Balaban's domain. That variant is written only for Lemma D (monotone case). For D″ the increments can be negative, so the nested boxes need new envelopes; the adaptation is plausible but not written.
- v2 §10 item 8 lists L5. It should add: (1) the clamp proof is valid only under the cube hypothesis, which Balaban does not supply; (2) the admissible domain must carry (c′) + (S), which true trajectories inherit from (a″). Status stays [open]. Not a refutation.

## §G Check (5): Route B presentation and hypotheses

- Statement and C_B formula: match BETA_FP_PW Theorem 3.2 verbatim. Window bound 2C_B: matches (i). Lemma 1.3 bound C_Uθ²/(L² − 1): matches. CONFIRMED as a transcription.
- Tag [proved, unverified; verifier running]: correct. BETA_FP_PW_VERIFY.md has grown since v2 was written (v2 20:53, VERIFY 20:54, still no grades). Its new §3 adds three points that v2 does not carry:
  1. Theorem B needs θ_* < 1 so that c_2 ln(1/θ_*²) ≥ 0 (else take the absolute value). Add to the statement.
  2. "(W), (PI), (M) not used" is correct, but the (PI)-type content is relocated: B4 (plane-wave β = Balaban β) and 𝔡_gf need k-uniform expansion-point bounds. v2 §4.3 lists "identification of β" under "fixed-level inputs" for Route B. That row is wrong per VERIFY §3; it is a uniform-in-k input.
  3. (U) needs a uniform p-smoothness of the a¹ vertex, the plane-wave analogue of the missing uniform C¹ bound on σ^(1). Route K's open core is (C1σ), a uniform C¹ bound on σ^(1). So the two routes likely share their hardest input. v2 §4.3 says "The uniform-in-level hypotheses ((B2) vs (U) + (Bθ)) are disjoint" and §4 calls the routes "independent". As named hypotheses they are disjoint; as mathematical content they are not shown independent and plausibly overlap. CORRECTION: replace "disjoint" / "independent" with "formally distinct; both plausibly need uniform first-order smoothness of the level-j vertex (BETA_FP_PW_VERIFY §3)".
- BETA_FP_PW_VERIFY §1 also flags "C_1 ≈ −0.10 is suspect" (one-sided Nyquist data). v2 does not use C_1; no effect.
- v2's hypothesis list B1–B5 in §10 is complete against BETA_FP_PW §7 "Hypotheses" (U; Bθ reduced to vertex bounds + 𝔡) plus LW (5.7). CONFIRMED, with point 2 above.

## §H §3 tags vs BETA_FP_LEMMA43_VERIFY, BETA_FP_H_VERIFY, BALABAN_EXCERPTS_CHECK

- Prop. 2.1 [proved+verified]: LEMMA43_VERIFY grade 1 CONFIRMED (10^{−14}). Exact at V_f: H_VERIFY grade 1/2. CONFIRMED.
- c, normalization, c_2 = c/2, Savvidy (1.4): LEMMA43_VERIFY §5, H_VERIFY "(F) CONFIRMED". CONFIRMED.
- "whole log Λ in fine piece" ⇔ ρ = o(log Λ): LEMMA43_VERIFY grade 2 CORRECTED (scope). v2 §3.4 states the equivalence. CONFIRMED.
- (M) resolvent step false (N–O zero): H_VERIFY grade 3. v2 §4.1 and §9 refuted list carry it. CONFIRMED.
- (H) with IR weights UNSUPPORTED: LEMMA43_VERIFY grade 3. v2 §7.1 carries it. CONFIRMED.
- Theorem W status: H_VERIFY §6 says (W) holds with j_0 = 0 via U3_AW; U3_AW_VERIFY grade 2 CONFIRMED. v2 §3.5 [proved+verified]. CONFIRMED (d = 2 numerics only, as v2 says).
- Balaban quotes (Theorem 2, p. 355 sentence, (0.1) with 1/g_k² and χ_k, p. 298, (1.3)–(1.5) misprint, CMP 116 has no C^m bound): BALABAN_EXCERPTS_CHECK items 1, 3, 4, 6, 10. v2 §1.1, §4.1 (H0), §9 match. CONFIRMED.
- (H0) tag [Balaban]: the (1.22) wording is quoted from OCR in the sweep §3, not from a page image in BALABAN_EXCERPTS_CHECK. v2 does not tag it [verified quote]. Correct.

