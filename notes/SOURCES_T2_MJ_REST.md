# SOURCES_T2_MJ_REST — the two residues of the (M_j) reduction: BETA_FP_M Prop. 4.4 region 1, and the neutral sector

Date: 2026-10-28. DERIVE. Sections appended one at a time.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not opened.
Read: SOURCES_T2_S123.md §1–§7 (all); SOURCES_T2_S123_VERIFY.md l. 25–35, 115–172; BETA_FP_M.md §3–§6; BETA_FP_H.md l. 1–95; SOURCES_T2_GAPRIME2.md header + VERIFY grades; SOURCES_T2_I3.md header + VERIFY verdicts; KAPPA_BOUNDED.md l. 1–45; U3_LEMMA51.md Prop. 2.2 (l. 38–48); numerics/t2_s123_gap2d.py, t2_s123_phys2d.py.
No existing file edited. New script: numerics/t2_mjrest_neutral.py (+ JSON).
Tags: [P] proved here; [R] reduced to a named input; [I] inference or convention reading not checked line by line; [V] checked numerically in this session (stated how); [N] numerical evidence only.

Inputs taken as given (status per the brief and the VERIFY files): (G_A′) [P+V, SOURCES_T2_GAPRIME2 + VERIFY]; (I3) [P+V, SOURCES_T2_I3 + VERIFY]; S123 Lemmas 1.1–1.4, Prop. 2.1, Thms 3.3, 3.4, 4.3, Lemma 4.2 (ER), Lemma 5.2, Props. 5.3–5.6 [P+V in SOURCES_T2_S123_VERIFY]; BETA_FP_M Lemma 4.1 [P].

## Plan
1. The two targets, quoted.
2. Task A, step 1: a new split of log|x| that replaces the "region 1 / region 2" split. Three pieces: a gapped piece F_s (shift s = |f|^a, a ∈ (2/3, 1)), the N–O window piece g̃_μ (= II, already done), and a localized remainder ψ (bounded directly).
3. Task A, step 2: Lemma A, the expansion of the gapped piece at shift σ ≫ |f|, with an exact 2-gon trace identity and an approximate Moyal inverse.
4. Task A, step 3: Theorem (charged-sector (M_j)); what it replaces in BETA_FP_M Prop. 4.4.
5. Task B: the neutral sector; zero modes; Lemma N.
6. Numerical check of the neutral fibre spectrum.
7. Conclusion and ledger.

## 1. The two targets, quoted

Target (a). BETA_FP_M Prop. 4.4 [argued]: "I(f) − I(0) = n_2 d_j f² + O(ε|f|³ log(1/|f|))." Its "Argument": "Region 1 (phase space |K|² ≥ R′|f|, R′ chosen so that 𝔨_{t,0} ≥ 2Rμ + C|f| there): ℓ′(x) = 1/x on this part of the spectrum, so the integrand is BETA_FP_H's Moyal-expanded Tr[𝒦_t^{−1}V]; its f² term is the region-1 part of (2.2) … Not written: the magnetic phase-space localization that makes 'region 1/region 2' an operator statement."
S123 §7.3 made region 2 an operator statement (Lemma 7.2, spectral cut χ_W, [P+V]) and left: "the f² coefficient of ∫_0^1 dt τ(G_f(𝒦_t)V), G_f(x) := ℓ′(x)(1 − χ_W(x)), equals the formal d_j of (1.1) up to o(f²). G_f is smooth on spec 𝒦_t but its derivatives grow like |f|^{−k} … Prop. 4.4 stays [argued]." S123_VERIFY claim 26 adds: "region 1 here is a spectral cut (spectrum ≥ Rμ), while the formal d_j of KAPPA (1.1) is a per-momentum integral over all K. Matching the two at order f² is the unwritten step."
So "region 1" is a range of momentum (|K|² ≥ R′|f|) in BETA_FP_M, and a range of spectrum (≥ Rμ, μ = 2C_1|f|) in S123. It is not a range of flux. The inequality needed there is not an inequality: it is an asymptotic identity, "f²-coefficient of a spectrally localized trace = per-momentum formal integral, error o(f²)".

Target (b). S123 §7.2, "Neutral sector [I]": "τ log is a per-momentum integral with an integrable log|K|² singularity, and its f² coefficient is obtained by differentiating under the integral." S123_VERIFY l. 30: the lower bound 𝒦^{neu}_t(f) ≥ cos f·𝔨^{neu}_t is [P]; "the rest of the remark … is [I]: it needs a dominated-convergence bound near K = 0 that S123 does not write." S123_VERIFY claim 25 adds this item to the list of what (M_j) is reduced to.

What I do. I do not repair the χ_W split. I replace it by a split in which every piece is either (i) gapped at a shift σ ≥ |f|^a with a < 1, so that f/σ → 0 and a Moyal expansion has a small parameter, or (ii) small in absolute value, o(f²), with no expansion. This removes the |f|^{−k} derivative growth. The N–O window piece is the same II as in S123 Prop. 5.5. Lemma 7.2 of S123 is then not needed.
