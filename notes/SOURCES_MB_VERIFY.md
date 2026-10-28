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
