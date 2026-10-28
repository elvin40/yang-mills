# Verify SOURCES_HHOL_LF_SPRIME

Independent check, 2026-10-28.

## 1. Read target (SOURCES_HHOL_LF_SPRIME.md, full)
Claims located: (1) §1 D1/D2, N1–N4, (1.1)–(1.2); (2) §2.2 (i)–(viii); (3) §3.1–3.3; (4) §3.4, §4.
Quick check of (1.1): d log δ/ds = −1/(2s) + p/(s log s) ∈ (−1/(2s), 0] iff log s ≥ 2p. Integration over |s′−ū| ≤ ρ gives |log δ(s′)/δ(ū)| ≤ ρ/(2(ū−ρ)). With ρ_s = 0.1 min ū_i ≤ 0.1ū_i: ratio ≤ 1/9 per component. Arithmetic OK.
Open questions for the context read: what exactly are (C2′)–(C4′)? Are they g-small items or g-free ratio items? Any cut-vs-cut nesting (ε_k vs ε_{k+1}, δ vs ε) that breaks under mixed assignments (2.3)?

## 2. HHOL §3.2 and T2_IEPS_LF condition table
HHOL 3.2: (C2′)–(C4′) read ε_1 ≤ ε_1^{Bal}/(1.235c). In the LF layer ε_1 ↦ δ′_j = g_jA_1p_1(g_j) (T2_IEPS_LF l.77), so these are g-small items. γ absorbs a factor 1.057. OK.
T2_IEPS_LF lists further ratio items between a cut and a frozen α-radius, besides C3:
 - l.58 "Role (ii)": the α_1-type B-radius must contain the real cut ball |gB| < 2δ′_j [I].
 - l.64: CMP 109 p. 280 recovery, δ′-radius ≤ c·α_{2,j}(α_{3,j}/α_{1,j})^5 [I], degree 1 in the C's.
 - l.69 (R1): MC vertex pairing, (δ′-radius)/α_{4,j} ∝ (A_1/C_4)(log g^{−2})^{p_1−q_4}; degree 0 in g if q_4 = p_1 [I].
 C4, C5 are α-vs-α (both frozen): unaffected.
Finding: C3 is NOT the only cut-vs-frozen-domain ratio condition. There are up to three more, all [I], all with δ′ (moves with s′ by ≤ e^{1/18}). Each is restored by the same device (joint scaling of C_0..C_4 by 1.06, l.64 "joint scaling helps all C-items"; C_4 free upward is itself [I], l.69). So the conclusion of 2.2(iii) survives, the claim "C3 is the only one" does not.

## 3. HHOL_LF grep (ratio/frozen items)
- 3.4/(M-A): ratio density weight frozen at x*; (M-A) range u′ ∈ [0.76,1]x*^{−2} is w-side, not cut-side. Cutoff radius M_0ε_k enters only via star-shape + smallness. Author's (vi) reading OK.
- 4.5 budget: p_0/R^{d+2} bounded below with R frozen. The inequality compares the cut exponent p_0 with (100R)^d; the ratio p_0/R^d ≥ cR² → ∞, so it is a γ-item, not a fixed ratio. A factor 0.895 on p_0 is absorbed. Note: author changes the output −¼p_0 → −⅛p_0 in (v) but states c″ → 0.895c″ elsewhere; the two are consistent only if the output is kept at −¼ (holds if 1.79/(1+β_0) > ¼ + margin). Minor bookkeeping inconsistency; check β_0 below.

## 4. Page image CMP 122 II p. 382 (pdf p. 28; offset: p. 381 = pdf p. 27)
Printed: |V′(b)−1| < 6(100M(L+1)R_j^{1+β_0})²ε + O(1)(A_0/A_1)B_3²B_5M^7R_j^{1+β_0}(p_0(g_j)/p_1(g_j))L^{−N}δ′_j. "By our assumptions on N the number multiplying δ′_j is small, e.g. < 1/4", so |B′(b)| < 12R_j^4ε + ½δ′_j; choose ε = (24R_j^4)^{−1}δ′_j. Wilson factor exp(−(1/4g_j²)(24R_j^4)^{−2}δ′_j²) = exp(−A_1²48^{−2}R_j^{−8}p_1²(g_j)) ≤ exp(−R_j^{−8}p_1²(g_j)).
Items for the s′ rerun:
 - The L^{−N} item: the term ∝ ε_j/δ′_j (two CUTS) times L^{−N} (N frozen). Under mixed assignments (author 2.3) ε_j/δ′_j moves by up to e^{1/9}. Slack 1/4 → 1/2 covers 1.118. OK, but this is a cut-vs-cut ratio item the author did not list; "nothing in 2.2 used shared s′_i" is unchecked here, and holds only by this slack.
 - Last step "≤ exp(−R_j^{−8}p_1²)" uses A_1² ≥ 48². With δ′(s′)² ≥ 0.895δ′(ū)² it needs A_1 ≥ 50.7 or output ×0.895. Fixed-constant item, consistent with the author's 0.895 exponent factor.
 - (1/g_j²) here is the weight (Re u ≥ 0.826u* at complex w), not s′. Consistent with E(s′) = u*δ(s′)².

## 5. Page image CMP 122 II p. 381 (pdf p. 27)
Printed factors (all of form exp(−c·g^{−2}·cut²), cut ∈ {ε_m, 2δ′_m, ε_j, δ′_j}):
 - fundamental: exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j+1)) ≤ exp(−½γ_0A_1²p_0²(d′_j+1) − 2p_0(g_j));
 - 1−χ_j^{(n)}: exp(−(1/4g_m²)B_3^{−2}½ε_m²) ≤ exp(−⅛B_3^{−2}(1+β_0)^{−2}A_0²p_0²(g_j)) ≤ exp(−A_1²p_0²(g_j)), j−N ≤ m ≤ j;
 - 1−χ′_m (1.27): exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0·4(1+β_0)^{−2}A_1²p_1²(g_j)) ≤ exp(−γ_0A_1²p_1²(g_j));
 - 1−χ_{j,Λ}: exp(−(1/4g_j²)(O(1)B_3M²)^{−1}ε_j²) ≤ exp(−A_1²p_0²(g_j)).
Each exponent is (weight)·(cut radius)²; at frozen s′ it scales by E(s′_m)/E(ū_m) ∈ [e^{−1/9}, e^{1/9}] (my recomputation, §7). The step m → j conversion (1+β_0) uses the real trajectory x* (couplings in the radii are frozen), so ordering is unchanged. The second inequalities use fixed slack (A_0 ≫ A_1; 4(1+β_0)^{−2} ≥ 1). With the factor 0.895 they either need A_0 slightly larger / β_0 ≤ 0.89, or carry 0.895 into the output. Author's 2.2(iv) form "exponent ≥ e^{−1/9}× x*-exponent" is CONFIRMED for these four factors. "−2p_0" split: γ-item.
