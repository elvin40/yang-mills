IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_MB — large-field bookkeeping (CMP 122 II (1.71)–(1.98)) redone for the complex-coupling perturbation

Input (M-B). Template: SOURCES_FX_O23.md §4. Ledger tags: [P] proved here, [R] read in source, [I] inferred, [V] verified numerically.

## 1. Inputs read
- Notes [read this session]: HHOL_LF §3–§4, §6; HHOL_LF_VERIFY V1, V5, V6 (items 2–4 of the brief map to V1/V3–V6; V2 index direction noted); FX_O23 §2, §4, §5 (the line-by-line template is §5 Steps 3–5, "O3"; §4 is O2); FX_O23_VERIFY items 3–4; FX_R2 §1–§5.
- Page images [this session, pdftotext -layout, PDF p. = journal p. − 354]: CMP 122 II pp. 382–389 (PDF 28–35). The OCR text layer is poor on displayed formulas. Where a display is unreadable I use the transcription from FX_O23 / FX_O23_VERIFY / FX_R2 (all [V] there on images) and say so per line (§7).
- Constants used: θ_g = 1 − min Re w = 1 − (1+ρ_0)^{−2} = 0.17355 at ρ_0 = 0.1 (HHOL_LF_VERIFY V1 [num]); so 1 − θ_g = 0.82645. Source: γ_0′ = γ_0(1−θ_W)(1−τ_C), θ_W ≤ 6.5γ²r, τ_C ≤ 3c_1c_Hγ²r (FX_O23 §5). F2′: 32ε′ → 40ε′ (HHOL_LF §5.3, V6: 32·1.2346 = 39.5).

## 2. Step (1): every line of (1.73)–(1.98) that carries γ_0, p_0, ε_j, δ_j, A_1, or a per-cube factor
Notation: C_c = cost O(1) of (1.79), (1.82), (1.83), (1.85)–(1.87); C_1 = budget O(1) of (1.80), (1.81), (1.88) (FX_R2 §4). "Image" = read this session on the page; "notes" = transcription from the file named.
L1 (1.73) p. 380. |T′(X,(U,J))F| ≤ T′(X,(U,0))(e^{|σ|}|F|). Positivity upper bound. No γ_0. [notes FX_O23 §2]
L2 p. 380 P-factor. χ^c_j(P_j) → exp(−γ_0(2g_j²)^{−1}(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|). γ_0, ε_j, R_j. [notes FX_O23_VERIFY 3]
L3 p. 380 Q-factor. χ^c_j(Q_j) → exp(−½γ_0g_j^{−2}(2δ_j)²(LM_2R_j)^{−2}|Q_j|). γ_0, δ_j. Via local quadratic expansion of the Wilson action. [notes]
L4 p. 380 R-factor. χ^{(j−1)c}(R_j) → exp(−γ_0g_j^{−2}δ_j²(LM_2R_j)^{−d}|R_j|). γ_0, δ_j. [notes]
L5 p. 381 combined. exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j+1)) ≤ exp(−½γ_0A_1²p_0²(g_j)(d′_j+1) − 2p_0(g_j)). γ_0, A_1, p_0. THE p_0 condition. [notes FX_O23_VERIFY 4]
L6 p. 381 preparatory ε_m factor. exp(−¼g_m^{−2}B_3^{−2}½ε_m²) ≤ exp(−A_1²p_0²(g_j)). Constant ¼ (a Wilson-action prefactor), A_1. [notes]
L7 p. 381 preparatory δ′_m factor. exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0A_1²p_1²(g_j)). Slack 4(1+β_0)^{−2} ≈ 3.06. [notes]
L8 p. 381 preparatory ε_j factor. exp(−¼g_j^{−2}(O(1)B_3M²)^{−1}ε_j²) ≤ exp(−A_1²p_0²(g_j)). [notes]
L9 pp. 382–383, (1.77)–(1.78) and the display after. Second-case factor exp(−¼γ_0[6(d+3)(100M(L+1)Nβ_0R_j)^{d+2}]^{−1}A_1²p_1²(g_j)), then "We assume that 2p_1 − (d+5)r_0 > p_0, and we estimate the factors by exp(−p_0(g_j))". γ_0, A_1, δ′_j (through p_1), R_j. Source of the per-cube factor exp(−p_0). [image, OCR partly garbled; the words and the condition 2p_1 − (d+5)r_0 > p_0 are legible]
L10 p. 383 cost lines. Gaussian integrals "exp O(1)|Z_j ∩ Ω_j|"; admissible sequences "exp O(1)(MR_j)^{−d}|Z_j|"; group integrals "estimated by 1". C_c. [image]
L11 (1.79) p. 383. T′_k(X)1 ≤ sup exp{Σ_j C_cM^dR_j^{d+1}d′_j(Z_j)}·Π_jΠ_i exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)})+1) − 2p_0(g_j))·Π′exp(−p_0(g_j)). γ_0, A_1, p_0, per-component and per-cube factors. [display: notes FX_R2 §2; surrounding words: image]
L12 (1.80)–(1.81) pp. 384–385. Budget κ_j(Z) ≥ Σ_n C_1M^dR_n^{d+1}d′_n(S^{n−j}Z); (1.81) sums it to ≲ C_1(…)L^{d+1}R_j^{d+2}(d′_j(Z)+1). C_1, R_j. No γ_0. [image (words, (1.80) shape); (1.81) constants: notes]
L13 (1.82) p. 385, j = 1. Condition ¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ C_1·2(64)^dM^dL^{d+1}R_1^{d+2}. "satisfied for p_0 large, and g_1 sufficiently small". γ_0, A_1, p_0. [words: image; display: notes FX_R2 §4]
L14 (1.83) p. 385. κ_{j+1}(Z) = κ_j(Z_0) − C_cM^dR_{j+1}^{d+1}d′_{j+1}(Z). Closes iff C_1 ≥ C_c. [image]
L15 p. 386 small new domain. κ_{j+1}(Z) = p_0(g_j) − C_cM^dR_{j+1}^{d+1}d′_{j+1}(Z); needs p_0(g_j) ≳ C_1(100M)^dR_{j+1}^{d+2}. Uses the per-cube factor exp(−p_0(g_j)). [image]
L16 (1.85) p. 386 joining. κ_{j+1}(Z) = Σ_n(κ_j(Z^{(n)}) + 2p_0(g_{j(Z^{(n)})})) + Σ_i(½γ_0A_1²p_0²(g_{j+1})(d′_{j+1}(Z_{j+1}^{(i)})+1) + 2p_0(g_{j+1})) − C_cM^dR_{j+1}^{d+1}d′_{j+1}(Z) − 2p_0(g_{j(Z)}). γ_0, A_1, p_0. [image; the ½ is garbled "yoAip0", read with L11]
L17 (1.86)–(1.87) pp. 386–387. 2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1+β_0)^{−1}p_0(g_{j+1}); κ_{j+1}(Z) ≥ κ(X) + κ(Y) + 2(1+β_0)^{−1}p_0(g_{j+1}) − C_c2dM^dR_{j+1}^{d+1}. p_0, β_0. [image]
L18 (1.88) p. 387. Need 2(1+β_0)^{−1}p_0(g_{j+1}) ≥ 2dC_cM^dR^{d+1}_{j+1} + 3C_1(100M)^dR_{j+1}^{d+2}; "for p_0 large and γ small enough". [words: image; display: notes FX_R2 §4]
L19 (1.89) p. 387. T′_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k)). Uses κ_k(X) ≥ 0. [image]
L20 (1.92) p. 388. Activity bound Π_h exp(−2(1+β_0)^{−1}p_0(g_k) + 1)·α-terms; |σ| ≤ 1 in (1.73). p_0, α. [image, garbled]
L21 (1.93)–(1.94) pp. 388–389. α^{1/3} ≤ exp(−(1+β)κ2^d); O(1)α^{1/3} ≤ … βκ. α only. [image]
L22 p. 389 before (1.95). −2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k); with β_0 = 1/7: −¼p_0 + 1 + 2κ(100R_k)^d ≤ 0. p_0, R_k. [image; RHS garbled "− f p_0", the β_0 = 1/7 example fixes it: 2·7/8 − 3/2 = ¼]
L23 (1.95)–(1.97) p. 389. Extract exp(−p_0(g_k)) per component disjoint from the Y_i; output decay (1+β)κd_k. p_0. [image]
L24 (1.98) p. 390. {…} = exp R′^{(k)}, convergence from (1.97); (1.99) |R′^{(k)}(X)| ≤ O(1)c_1exp(−(1+½β)κd_k(X)), c_1 = exp(−p_0(g_k)) or α^{1/3}. p_0 only through c_1. [image p. 390, one page past the brief range]

## 3. Step (2): substitution, line by line
Two cases. Case C (coupling only): γ_0 → γ_0^c := 0.8264γ_0. Case CS (coupling and source together): γ_0 → γ_0″ := 0.8264(1−θ_W)(1−τ_C)γ_0; ≥ 0.6198γ_0 if (1−θ_W)(1−τ_C) ≥ ¾, ≥ 0.2066γ_0 under the crude O3 margin ≥ ¼. Thresholds ε_j = x*_jp_0(x*_j), δ_j, δ′_j, R_j frozen at Balaban's real trajectory x* (HHOL_LF 4.1). So p_0(g_j) below means p_0(x*_j), a real number.
Why the substitution is legitimate per factor [P, given HHOL_LF 4.2–4.4]. Each of L2–L4, L6–L9 is a lower bound on a positive Wilson action or its positive quadratic form, times its prefactor. At complex u the modulus of the integrand is ≤ the integrand with prefactor Re u ≥ 0.8264x*^{−2} (and × (1−θ_W)(1−τ_C) with source). The threshold appears only in the indicator, which is g-free after freezing. So each factor holds with its prefactor multiplied by 0.8264 (resp. γ_0″/γ_0).
L1 (1.73): unchanged. The coupling is not put in σ; it is handled by modulus domination before (1.73) is applied. [P]
L2–L4: γ_0 → γ_0^c (C) or γ_0″ (CS). ε_j, δ_j, R_j unchanged. [P]
L5: see §4. This is the only line where the change forces a new p_0 condition.
L6, L8: prefactor ¼ → ¼·0.8264 (C) or ¼·γ_0″/γ_0 (CS). If Balaban's last "≤" has no slack (not printed; FX_O23_VERIFY 4), the right side becomes exp(−0.8264A_1²p_0²) (C) or exp(−0.2066A_1²p_0²) (CS crude). These factors are only used through "≤ exp(−p_0(g_j))" per cube (L9, L11 Π′). A_1²p_0² ≥ 5p_0 holds for p_0 ≥ 5/A_1², implied by §4's condition since γ_0 ≤ 1 (γ_0 = ½ allowed, p. 380). [P]
L7: γ_0 → γ_0^c or γ_0″. Slack 3.06 > 1/0.8264 = 1.21 (C): right side unchanged. CS crude: 3.06·0.2066 = 0.63 < 1: right side becomes exp(−0.63γ_0A_1²p_1²). Still ≥ p_0 per cube by L9's log-power gap. [P]
L9: ¼γ_0 → ¼γ_0^c or ¼γ_0″. Needed: ¼γ_0″[6(d+3)(100M(L+1)Nβ_0R_j)^{d+2}]^{−1}A_1²p_1²(x*_j) ≥ p_0(x*_j). Balaban gets this from 2p_1 − (d+5)r_0 > p_0 (strict gap of log powers) and g small. A fixed factor ≥ 0.2066 is absorbed by γ small. Per-cube factor exp(−p_0(x*_j)) SURVIVES with the same δ′_j. [P on the transcribed shape]
L10 cost: C_c → C_c′ := C_c + C_m + C_G + C_E, where C_m = freeze-mismatch O(1) per scale-j cube (HHOL_LF 3.4(c), input (M-A)), C_G = 2ρ_0²·(modes per site) from the complex Gaussian factor (|u|/Re u)^{1/2} ≤ 1.0101 per mode (V1), C_E = change of normalization/E-terms (§5). All are per-site O(1). [P given (M-A), (M-C)]
L11 (1.79): first exponential C_c → C_c′; second product ½γ_0 → ½γ_0^c or ½γ_0″ unless §4 option B is used (then unchanged); Π′exp(−p_0) unchanged. [P]
L12 (1.80)–(1.81): budget C_1 → C_1′ := max(1, C_c′) (FX_R2 route (b), F = C_1′/C_1). No γ_0. [P, FX_R2 §4]
L13 (1.82): ¼γ_0 → ¼γ_0″ on the left, C_1 → C_1′ on the right. New condition p_0²(x*_1) ≥ (γ_0/γ_0″)(C_1′/C_1)×(Balaban's RHS), factor ≤ 4.84·F. p_0² against R^{d+2}: absorbed by "p_0 large, g_1 small". With option B (§4) the γ_0 factor does not appear. [P]
L14 (1.83): closes iff C_1′ ≥ C_c′. True by choice. [P]
L15: p_0(x*_j) ≳ C_1′(100M)^dR^{d+2}_{j+1}: factor F, absorbed. [P]
L16 (1.85): new-region contribution ½γ_0A_1²p_0² → ½γ_0″A_1²p_0² (option A) or unchanged (option B); C_c → C_c′. [P]
L17–L18 (1.86)–(1.88): 2(1+β_0)^{−1}p_0 uses g_m ≤ (1+β_0)g_n (CMP 119 (2.6)) on x*, which is Balaban's real trajectory: holds. C_c → C_c′, C_1 → C_1′. Condition × F, absorbed. [P]
L19 (1.89): unchanged in form: T′_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(x*_k)), the left side now |T′_k(X)1| at complex u. [P]
L20 (1.92): |σ| ≤ 1 unchanged (σ carries the background (U,J), not u). α → α^c, the complex-u small-field activity bound (input (M-C), factor 1.235 type). [R]
L21 (1.93)–(1.94): α^{1/3} ≤ exp(−(1+β)κ2^d) needs α^c small. α's are fixed before p_0, γ (FX_R2 §1), so a fixed factor is absorbed. [R, (M-C)]
L22 p. 389: −2(1+β_0)^{−1}p_0 + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0. No γ_0, no C_c. Unchanged: p_0(x*_k) ≥ 8κ(100R_k)^d + 4 at β_0 = 1/7. [P]
L23–L24 (1.95)–(1.99): unchanged, c_1 = exp(−p_0(x*_k)) or (α^c)^{1/3}. [P given L20–L21]

## 4. Step (3): the new p_0 condition (L5)
Balaban (L5). With min{…} = A_1² (needs ½B_3^{−2}A_0² ≥ A_1², implicit in Balaban): γ_0A_1²p_0²(d′+1) ≥ ½γ_0A_1²p_0²(d′+1) + 2p_0 iff ½γ_0A_1²p_0² ≥ 2p_0 (worst case d′ = 0) iff p_0 ≥ 4/(γ_0A_1²).
Perturbed. Left side becomes γ_0^*A_1²p_0²(d′+1), γ_0^* ∈ {γ_0^c, γ_0″}. Write g* := γ_0^*/γ_0.
 Option A (output factor written with γ_0^*): need ½g*γ_0A_1²p_0² ≥ 2p_0, i.e. p_0 ≥ (4/g*)/(γ_0A_1²).
 Option B (keep Balaban's output ½γ_0 exactly): need (g* − ½)γ_0A_1²p_0² ≥ 2p_0, i.e. p_0 ≥ (2/(g* − ½))/(γ_0A_1²). Needs g* > ½.
Constants c in p_0 ≥ c/(γ_0A_1²) [num, python -I, this session]:
 | case | g* | option A | option B |
 | coupling only (C) | 0.8264 | 4.84 | 6.13 |
 | source only, γ_0′ ≥ ¾γ_0 (FX_O23_VERIFY 4) | 0.75 | 5.33 | 8.00 |
 | source only, γ_0′ ≥ ¼γ_0 (O3) | 0.25 | 16.00 | impossible |
 | CS, (1−θ_W)(1−τ_C) ≥ ¾ | 0.6198 | 6.45 | 16.69 |
 | CS, (1−θ_W)(1−τ_C) ≥ ¼ | 0.2066 | 19.36 = 16·1.21 | impossible |
NEW CONDITION (recommended) [P]: p_0(g) ≥ 17/(γ_0A_1²) for all g ≤ γ, with option B, under (1−θ_W)(1−τ_C) ≥ ¾ (sufficient: θ_W + τ_C ≤ ¼, i.e. (6.5 + 3c_1c_H)γ²r ≤ ¼). Then the per-component output exp(−½γ_0A_1²p_0²(x*_j)(d′+1) − 2p_0(x*_j)) is Balaban's own, and L13, L16 need no γ_0 change. Safe uniform alternative: p_0 ≥ 20/(γ_0A_1²) with option A (covers the crude ¼ margin, 19.36 ≤ 20), at the price of ½γ_0 → ½γ_0″ ≥ 0.103γ_0 in L13 and L16 (absorbed, factor ≤ 4.84 on a p_0² vs R^{d+2} condition).
Both values lie in the brief's range [8, 19.36]. Coupling alone needs only c = 6.13 (B) or 4.84 (A).
Thresholds [P]. ε_j = x*_jp_0(x*_j), δ_j, δ′_j, R_j are not touched by any line of §3. Only prefactors of positive actions change. So the per-cube factors exp(−p_0(x*_j)) (L9, L11 Π′, L15) and the per-component factors exp(−2p_0(x*_j)) (L5, L11, L16–L19) survive with the SAME ε_j, δ_j. p_0 itself is a fixed function; any c = O(1) is met for g ≤ γ small since p_0(g) = A_0(log g^{−2})^{p_0} → ∞. Uniform in j, k, K, volume: every condition is pointwise in x*_j ≤ γ.

## 5. Step (4): normalization shifts vs the O(1) log g_j^{−2} budget
Budget (p. 380 [notes FX_O23_VERIFY 3]; p. 383 cost words [image]): O(1)log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j). Per scale-j site the allowance is O(1)log(x*_j)^{−2} ≥ O(1)log γ^{−2}.
Shifts at complex u, per scale-j site [P unless marked]:
 (a) Gaussian normalizations in (1.71), "−½d(g)log g_k^{−2}": |Re(½log u) − ½log x*^{−2}| = ½|log|w|| ≤ |log(1−ρ_0)| = 0.105 per mode. Gaussian modulus factor (|u|/Re u)^{1/2} ≤ 1.0101 ≤ e^{2ρ_0²} per mode (V1). Both O(ρ_0) per site.
 (b) Source part (O3 Step 4): (1−θ_W)^{−n/2}(1−τ_C)^{−n/2} = e^{O(γ²r)n}; E-terms O(E_0τ/r) per cube.
 (c) Freeze mismatch (HHOL_LF 3.4(c)): e^{C_m} per scale-j cube of Λ_i. [R: input (M-A)]
 (d) E_k(X), E_k(Λ ∩ X), V(X^∼) at complex u: small-field local terms; their complex-u bounds are the real ones times a fixed factor. [R: input (M-C)]
Total per site: O(ρ_0) + O(γ²r) + O(τ/r) + C_m + C_E = O(1), against O(1)log γ^{−2} → ∞. Inside the budget once C_1′ := max(1, C_c′) (L12). The budget is not used up: the extra is a fixed O(1), and the budget grows with log g^{−2}. [P given (M-A), (M-C)]
Where C_c′ is spent: only through F = C_1′/C_1 in L13, L15, L18. Each is "p_0 ≥ F × (polylog with smaller power)", absorbed by γ small (FX_R2 §4). [P]

## 6. F2′ (32ε′ → 40ε′) and the freeze mismatch in this range
 - F2′ does not appear in any line of (1.73)–(1.99) as printed. It controls the sizes of the small-field R-inputs, which reach this range only through α in (1.68)–(1.69) and L20–L21. With 40ε′ ≤ 1 the input sizes are (x*_j)^{κ_0}, real (HHOL_LF 5.3). So L20–L21 hold with α → α^c, a fixed multiple. [I: the link F2′ → α is read from HHOL_LF §5, not from these pages]
 - The freeze mismatch is a cost per scale-j cube, at each step j (each R-operation has its own frozen ratio). It has the same shape as the Gaussian cost exp O(1)|Z_j ∩ Ω_j| of L10, so it enters (1.79) inside Σ_j C_c′M^dR_j^{d+1}d′_j(Z_j). It needs the rest of the integrand bounded by a sup in V on Λ_i, which is how (1.79) is written (sup over admissible domains, L11). [P for placement; R for the size, (M-A)]

## 7. Step (5): what was read where
 - From page images this session (pdftotext -layout, PDF 28–36 = pp. 382–390): words and cost lines of p. 383 (L9 condition "2p_1 − (d+5)r_0 > p_0", "estimate the factors by exp(−p_0(g_j))", Gaussian/admissible-sequence costs); (1.80) shape and text pp. 384–385; (1.83) p. 385; p. 386 small new domain and (1.85); (1.86)–(1.87); "(1.88) … for p_0 large and γ small enough"; (1.89); (1.92)–(1.94) words; p. 389 condition with the β_0 = 1/7 example; (1.97)–(1.99) p. 389–390.
 - NOT re-imaged this session, taken from earlier notes that read the images: pp. 377–381 ((1.71)–(1.75), the P/Q/R factors, the combined factor L5, the preparatory factors L6–L8) from FX_O23 §2 and FX_O23_VERIFY 3–4; the displays of (1.79), (1.81) constants, (1.82), (1.88) from FX_R2 §2, §4 (the text layer of these displays is unreadable).
 - Garbled on the image, resolved by context: the ½ in (1.85) (read with (1.79)); the RHS "−(3/2)p_0" before (1.95) (fixed by the β_0 = 1/7 example).
 - Not located: (1.76) conditions (i), (ii) in detail; the slack of L6, L8 (FX_O23_VERIFY 4 says not printed).

## 8. Ledger
[P] Substitution γ_0 → 0.8264γ_0 (coupling), → 0.8264(1−θ_W)(1−τ_C)γ_0 (both) is legitimate in L2–L4, L6–L9: positive actions, frozen thresholds (§3).
[P] New p_0 condition: p_0 ≥ 17/(γ_0A_1²), option B, if (1−θ_W)(1−τ_C) ≥ ¾; or p_0 ≥ 20/(γ_0A_1²), option A, under the crude ¼ margin. Coupling alone: 6.13 (B) or 4.84 (A) (§4) [num checked].
[P] Per-cube exp(−p_0(x*_j)) and per-component exp(−2p_0(x*_j)) factors survive with the same ε_j, δ_j, δ′_j, R_j (§4).
[P] Cost O(1) → C_c′ = C_c + C_m + C_G + C_E; budget C_1′ = max(1, C_c′) (FX_R2 route (b)); (1.82), (1.88), small-domain conditions get a fixed factor F, absorbed by p_0 large, γ small (§3, §5).
[P] p. 389 condition (p_0 ≥ 8κ(100R_k)^d + 4) and (1.89), (1.95)–(1.99) unchanged in form.
[R] C_m finite: input (M-A) (equipartition on Λ_i). Unchanged status.
[R] α^c and complex-u E-terms: input (M-C).
[I] F2′ enters this range only through α (§6).
[V] Lines listed in §7 first item, read on page images this session.
Status of (M-B): REDUCED to (M-A) and (M-C). No new input. The bookkeeping closes with the p_0 condition above.
