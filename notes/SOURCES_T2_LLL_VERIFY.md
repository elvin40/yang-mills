# SOURCES_T2_LLL verification (independent)

Verifier log. One section per step.

## 0. Start
Files to read: SOURCES_T2_LLL.md, t2_lll_window.py, STEPB §2.6, GAPRIME2 L1.1/4.1, S123 L5.1/5.2, BETA_FP_H.md.

## 1. Read SOURCES_T2_LLL.md §1–§7 in full
Claims located: Lemma 2.1 (ghost), S1, S2, Cor S3, Thm S, V0, V2, V1, §4.4 N–O split, Thm 5.1, §5.1 no-log, §5.3 ln μ, §6 table.
First flags to check: (i) Lemma V1 step (v) logic ("odd part = −tαS_1 + O_t(α²)" then O(α²t) uniform); (ii) Thm 5.1(a) τ ≥ 1 bound uses τe^{−t|A′|} ≤ C(1/t + α) — check; (iii) STEPB's use (difference at λφ).

## 2. Context read: STEPB §2.5–2.6 + §4, GAPRIME2 L1.1/L4.1, S123 L5.1/5.2
- STEPB §2.6 uses only lim[H_φ(μ) − H_{λφ}(μ)] = 0 at fixed μ, then μ → ∞. Existence of h(μ) suffices. Needs ln μ coefficient of h = n_2c_2 only for (F_lat), which STEPB says is not needed.
- GAPRIME2 L4.1: ‖Rψ‖ ≤ 19|α|N_1^{1/2} + 11α², |α| ≤ 0.1. V0's constant: 19²/4 = 90.25, +11·0.01 → ≤ 102. Checked.
- S123 L5.1: (b_2,b_3) block = 𝔏 exactly (identification of (2.1) with covariant curl tagged [I] there).

## 3. Independent ln-coefficient check (continuum heat kernel, by hand)
Charged complex vector in field eB = α: 4D heat trace per volume (16π²t²)^{-1}(x/sinh x)(2 + 2cosh 2x), x = αt → 4 + (10/3)x² + O(x⁴). Complex scalar: 1 − x²/6.
W = −τ log A_C4 + 2τ log 𝒢_C (Lemma 2.1 counting). x² coefficient of W per ∫dt/t: (16π²)^{-1}[10/3 + 2/6] = (11/3)/(16π²).
H ≈ φ^{-2}·α²·(11/3)/(16π²)·ln(m²/α) = 4·(11/3)/(16π²) ln μ′ = (11/(12π²)) ln μ. n_2 = ½ (1 − cos φ ≈ φ²/2 per (0,1) plaquette), c_2 = 11·4/(24π²) = 11/(6π²): n_2c_2 = 11/(12π²). Matches the author's §5.3 by a separate route.

## 4. Rerun of numerics/t2_lll_window.py (Mac, 15 s)
All printed numbers reproduce §6 exactly: H_φ(3) = 0.124869, 0.121263, 0.119109, 0.117872; H_φ(5) = 0.183646, 0.177929, 0.174470, 0.172467; continuum h(3) = 0.116322, h(5) = 0.169938; h − (11/12π²) ln μ → 0.023444; τ(P_−)/(α/2π) = 1.00000; Mehler and evenness checks pass. Only quad roundoff warnings (U near the N–O eigenvalues).
Closed form found by hand for the N–O constant: with F(x) = x log|x| − x, g(1, μ′) = (μ′ − 1)log|μ′ − 1| − (μ′ + 1)log(μ′ + 1). At μ′ = 1.5: −2.63730, /(8π²) = −0.033402 = script's NO_c. Large μ′: g = −2 ln μ′ − 2 + o(1).
