# SOURCES_MB verification (independent)

## V0. Inputs read
- SOURCES_MB.md §1–§8 in full. FX_O23 §5 (O3, the template; FX_O23 §4 is O2 and has no p_0 condition).
- FX_O23 §5 Step 3 gives the base: Balaban p_0 ≥ 4/(γ_0A_1²); sourced 4/(γ_0′A_1²), so 16 at γ_0′ = γ_0/4. This is MB's option A at g* = ¼.

## V1. Context read
- FX_O23_VERIFY §4: image p. 381 confirms the combined factor exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(d′+1)) ≤ exp(−½γ_0A_1²p_0²(d′+1) − 2p_0). Balaban's implied condition p_0 ≥ 4/(γ_0A_1²) is DERIVED (worst case d′ = 0), not printed.
- FX_O23_VERIFY §4 already gave the "keep Balaban's output" form: (γ_0′ − ½γ_0)A_1²p_0² ≥ 2p_0. MB option B is this form.
- HHOL_LF_VERIFY V1: 1 − θ_g = (1+ρ_0)^{−2} = 0.82645; Gaussian factor cos(arg w)^{−1/2} ≤ 1.0101; max|1−w| = 0.2346. FX_R2 §4: route (b), every budget condition scales by fixed F.

## V2. p. 381 image (PDF 27) and the c formula [V image; num python -I]
- Image line 1–2 of p. 381: exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j(Z_j^{(i)})+1)) ≤ exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)})+1) − 2p_0(g_j)). MATCHES MB L5. No p_0 condition is printed. "4/(γ_0A_1²)" is derived: min = A_1², d′ = 0, ½γ_0A_1²p_0² ≥ 2p_0.
- Preparatory factors on the image match MB L6–L8 (ε_m: ⅛B_3^{−2}(1+β_0)^{−2}A_0²p_0² ≤ A_1²p_0²; δ′_m: γ_0·4(1+β_0)^{−2}A_1²p_1²; ε_j: (O(1)B_3M²)^{−1}).
- Origin of c = 2/(g* − ½): keep Balaban's output exp(−½γ_0A_1²p_0²(d′+1) − 2p_0). Input is exp(−g*γ_0A_1²p_0²(d′+1)). Need (g* − ½)γ_0A_1²p_0²(d′+1) ≥ 2p_0; worst d′ = 0 gives p_0 ≥ 2/((g* − ½)γ_0A_1²). The ½ is Balaban's output coefficient. At g* = 1 this gives 4: consistent with FX_O23. Option A: 4/g*; g* = ¼ gives FX_O23's 16. Reconciled.
- Numbers: (1.1)^{−2} = 0.82645 CONFIRMED. g* = 0.82645·¾ = 0.6198: A 6.45, B 16.69. g* = 0.82645·¼ = 0.2066: A 19.36 = 16·1.21. Coupling alone: A 4.84, B 6.13. All CONFIRMED.
- CORRECTION: the product form (1−θ_g)(1−θ_W)(1−τ_C) is not justified. D3W8 §1.1: w_k = g_k^{−2} + d_B + d_S, additive; d_S does not scale with u. At complex u: Re w ≥ (Re u − |d_B + d_S| − |δw|) ≥ (0.82645 − θ_W)x^{−2}. Safe g* = (0.82645 − θ_W)(1 − τ_C) (or 0.82645 − θ_W for the P/Q/R factors, which are all Wilson, FX_O23_VERIFY §3 remark).
  With θ_W = ¼ (allowed by θ_W + τ_C ≤ ¼): g* = 0.5764, option B c = 26.2, not 16.69. c ≤ 17 needs g* ≥ ½ + 2/17 = 0.6176, i.e. θ_W + τ_C ≤ 0.2088. Fix: require θ_W + τ_C ≤ 0.2 (then g* ≥ 0.6264, c ≤ 15.8). Both are O(γ²r), so this only lowers γ.
  Option A uniform 20: with θ_W = τ_C = ½ in additive form g* = 0.163, c = 24.5 > 20. It holds if τ_C is dropped for the Wilson factors (g* ≥ 0.326, c = 12.3) or if θ_W ≤ 0.44, τ_C ≤ ½... simplest: state option A as c = 4/g* with the additive g*.

## V3. p. 383 image (PDF 29, 400 dpi crop) [V]
- Printed: exp(−½γ_0[6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}]^{−1}A_1²p_1(g_j)) < exp(−R_j^{−d−5}p_1²(g_j)). Then "We assume that 2p_1 − (d+5)r_0 > p_0, and we estimate the factors by exp(−p_0(g_j))".
- CORRECTION (minor): coefficient is ½γ_0, not ¼γ_0 (MB L9); N^{β_0}, not Nβ_0. Left side prints p_1(g_j), right side p_1²: left is a misprint for p_1² (from |B(b)|² ≥ A_1²p_1² via (1.78)). Not load-bearing.
- Tolerance: Balaban drops the constant into R_j^{−3}-type slack (R_j → ∞ as g → 0), then uses the log-power gap. A fixed factor g* > 0 multiplies the left exponent and is absorbed the same way, for g small. So the factor tolerates ANY fixed g* > 0; MB's "≥ 0.21" is true but not sharp. CONFIRMED.
- Same page: Gaussian costs exp O(1)|Z_j ∩ Ω_j|, sequences exp O(1)(MR_j)^{−d}|Z_j|, group integrals "estimated by 1"; (1.79) display MATCHES MB L11 (O(1) = C_c; ½γ_0A_1²p_0²(d′+1) + 2p_0; Π′exp(−p_0)). (1.77): quadratic form ≥ γ_0Σ|∂B|² − O(1)A_0A_1²B_3⁴B_5M^{d+6}R_j^{d+3}p_0p_1²g_j: γ_0 from (1.7), a quadratic-form factor, so here (1 − τ_C) does enter.

## V4. p. 389 image (PDF 35) [V]
- Printed: "We assume that g_k is so small that −2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k) (for example, take β_0 = 1/7, then this means that −(1/4)p_0(g_k) + 1 + 2κ(100R_k)^d ≤ 0, and before we had stronger restrictions on p_0(g_k))". RHS −(3/2)p_0 is legible at 130 dpi.
- Algebra: 2·(7/8) − 3/2 = ¼, so p_0 ≥ 4 + 8κ(100R_k)^d. MATCHES MB L22. No γ_0, no C_c, no A_1. Unchanged under the perturbation once p_0 is evaluated at x*_k. CONFIRMED.
- (1.95)–(1.97) on the image use p_0 only through exp(−q(3/2)p_0)c_0, exp(−½p_0)100^dR_k^{−d} ≤ βκ/(6·2^d). Unchanged. CONFIRMED.

## V5. p. 387 (PDF 33), p. 380 (PDF 26) images; per-mode constants [V; num]
- p. 387: (1.87) κ_{j+1}(Z) ≥ κ(X) + κ(Y) + 2(1+β_0)^{−1}p_0(g_{j+1}) − O(1)2dM^dR^{d+1}_{j+1}; (1.88) "for p_0 large and γ small enough"; (1.89) T′_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k)). MATCH MB L17–L19. The (1+β_0) step is CMP 119 (2.6) g_m ≤ (1+β_0)g_n (HHOL_LF_VERIFY V2, image); with p_0 at x*, it is used only on the real trajectory. CONFIRMED.
- p. 380: P/Q/R factors and the budget "O(1)log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)" MATCH MB L2–L4 and FX_O23_VERIFY §3. Q and R factors use "the positivity bound for the quadratic form", so (1 − τ_C) enters them; the additive form of V2 applies to quadratic forms too (Re(uC_0^{−1} − 𝒲_S)).
- Gaussian factor: |arg w| ≤ 2 arcsin ρ, cos(2 arcsin ρ) = 1 − 2ρ² exactly, so (|u|/Re u)^{1/2} = (1 − 2ρ²)^{−1/2} = 1.010153 at ρ = 0.1. MB's "≤ 1.0101" is a rounding down; use 1.0102 (C_G = −½log 0.98 = 0.01010 per mode). Log shift: ½|log|w|| = |log|1+s|| ≤ −log 0.9 = 0.10536; "0.105" is a rounding down; use 0.1054. Both O(1) per mode, inside the O(1)log g_j^{−2} budget. Pairing note: C_G already includes the |u|^{n/2} normalization, so counting both is conservative, not wrong.

## V6. Grades
1. CORRECTED. Formulas c = 2/(g* − ½) (B) and 4/g* (A) are right; all printed numbers right. But g* = (1−θ_g)(1−θ_W)(1−τ_C) assumes multiplicative composition; the weight is additive (D3W8 §1.1), safe g* = 0.82645 − θ_W − τ_C. Then c = 17 (B) needs θ_W + τ_C ≤ 0.2088 (not ¼; at ¼, c = 26.2). Option A's 20 under the crude ½/½ margin fails additively (c = 24.5). Endorsed: p_0 ≥ 17/(γ_0A_1²), option B, with θ_W + τ_C ≤ 0.2 (g* ≥ 0.6264, c ≤ 15.8).
2. CONFIRMED with minor correction: p. 383 coefficient is ½γ_0 (not ¼), N^{β_0}; any fixed g* > 0 is tolerated (stronger than "≥ 0.21"). p. 389 condition p_0 ≥ 8κ(100R_k)^d + 4 confirmed on image. (1.87) step confirmed.
3. CONFIRMED with rounding corrections: C_G ≤ log 1.0102, shift ≤ 0.1054 per mode. Route (b) as in FX_R2 §4.
4. CONFIRMED as [I]: pp. 377–390 do not mention ε′; the link is through α (L20–L21) only.
5. CONFIRMED: pp. 380–381 re-imaged here; transcriptions match. Pages 382–390 claims checked on 383, 387, 389.
