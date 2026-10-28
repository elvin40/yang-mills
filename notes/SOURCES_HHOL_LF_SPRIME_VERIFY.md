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

## 6. Page image CMP 122 II p. 383 (pdf p. 29)
(1.77): ⟨DH″B, ζDH″B⟩ > γ_0Σ|(∂B)(p′)|² − O(1)A_0A_1²B_3^4B_5M^{d+6}R_j^{d+3}p_0p_1²g_j (g-small item). (1.78): |B(b)|² ≤ 6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}Σ|∂B|². Bond with |B(b)| ≥ g_j^{−1}δ′_j = A_1p_1(g_j) gives exp(−½γ_0[6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}]^{−1}A_1²p_1²) < exp(−R_j^{−d−5}p_1²(g_j)) = (F3). "Largest factor among all small factors"; with 2p_1 − (d+5)r_0 > p_0 it is ≤ exp(−p_0(g_j)).
So q = 2p_1 − (d+5)r_0 > p_0 [V, page image]: author's 2.2(viii) "q > p_0" CONFIRMED. (F3) is the weakest preparatory factor, so using κ_2 from (F3) for every shell (3.2) is the conservative choice. CONFIRMED.
The threshold enters (F3) only as δ′_j in the lower bound |B(b)| ≥ g^{−1}δ′_j; R_j, N frozen. At s′: exponent × E(s′)/E(ū) ≥ e^{−1/9}. CONFIRMED.
(1.79): T′_k(X)1 ≤ sup exp{ΣO(1)M^dR_j^{d+1}d′_j}·ΠΠexp(−½γ_0A_1²p_0²(d′+1) − 2p_0)Π′exp(−p_0). Positive product: the per-cutoff structure used by Lemma T.

## 7. B15 §4.2–§5.3 and B15_VERIFY §4 (what W_j consumes)
B15 4.3 → 4.4 → 5.1 consume only: sup_{|z|<ρ_z}|φ| ≤ Σ_{i<j}a^C_{j−1−i}·Φ̃*(u_i) with Φ̃ ≤ const·(log s)^{P_D}e^{−κ_3(log s)^q}; then |W_j| ≤ 10γ²·sup|φ|, folded into Φ with C_Φ = (3/2)C_D + 37rγ²C_D, κ_3 used in (G1‴), (G2‴), and 5.3. The factor 3r is O(1), not a smallness source (V_j, x_thr smallness come from γ). So tail form (3.1) with Φ_tail = C_T(log s)^{dr_0}e^{−κ_3(log s)^q} (dr_0 ≤ P_D) suffices: C_Φ → (3/2)C_D + 10γ²C_T. Φ*(u_i) is a sup over |s′−u_i| ≤ 3r, which covers the tail evaluated at ū_i. Author 3.4 CONFIRMED.
Caveat: B15 §5.1 puts T_j and W_j under one Φ with the smaller exponent κ_3; tail form changes only the W_j constant. No other B15 use of the linear form found in §4–§5.
κ_3 recomputation: d log E/ds = −1/s + 2p/(s log s) ∈ (−1/s, 0]. For s′_i > ū_i: E(s′)/E(ū) ≥ e^{−(s′−ū)/ū}. On S: ≥ e^{−0.1} (author's e^{−1/9} uses denominator ū−ρ_s, valid, cruder). 0.82e^{−1/9} = 0.7337 ✓; 0.82e^{−0.1} = 0.742. On 3r-set with ū ≥ 150r: e^{−1/50}, 0.82·0.9802 = 0.8038 ≥ 0.80 ✓ (author's 1/45 also valid). For s′_i ≤ ū_i the ratio is 1.
On "B15's 0.82 is wrong": B15 wrote 0.82κ_2 with an O(rγ²) correction "absorbed". Since 3r/ū ≤ 3rγ² → 0, any κ_3 < 0.82κ_2 is reached by lowering γ. So 0.80 is a valid explicit value at the (G4‴) boundary, not a correction of an error. Grade: CONFIRMED (refinement), "correction" overstated.

## 8. HTHR2 Lemma T and G3_N2 2.6; task (b)
Lemma T (HTHR2 1.1): shell ≤ 1 − χ(θ_lo); bond telescoping; "other factors are 0/1 cutoffs, bounded by 1". At complex w the shell term is
 T_b(w) = ∫ [Π_{b′<b}χ_{s′}(b′)]·χ_hi(b)(1−χ_lo(b))·[Π_{b′>b}χ_ū(b′)]·F(w;B) dμ_w(B),
and the uniform majorant (HHOL 2.3, HHOL_LF 4.4) is |F dμ_w| ≤ e^{8nρ_0²|Z_0|}·T_maj(B), T_maj real, Gaussian at Re u ≥ 0.826u*, coefficients ×1.235. On |B̃(b)| ≥ δ_lo, (1.77)–(1.78) at Re u give T_maj ≤ exp(−0.82·(E(s_hi)/E(ū))·κ_2(log ū)^q)·T_maj′.
Answer to (b): YES, the mixed product stays inside the majorant, with one ordering condition. The majorant is valid only on the support of the cuts (vertex arguments inside U^c_j, C3). So χ_hi(b) must be kept until the majorant is applied; only then drop all indicators to ≤ 1. The author's "|χ_{s′}−χ_ū| ≤ 1−χ_lo" before the majorant step is the wrong order; the correct shell is χ_hi(1−χ_lo). The inclusion at δ_hi ≤ 1.057δ(ū) is §2.2(iii) (C3 and the §2 items). Fixable, no change of result.
Gap: the R-ratio cutoff |log V′| < M_0ε_k sits in both N and D of the ratio N/D (HHOL_LF 3.4). Lemma T's product telescoping does not cover it. One needs N_1/D_1 − N_2/D_2 = (N_1−N_2)/D_1 + N_2(D_2−D_1)/(D_1D_2) plus Balaban's lower bound on D (p. 358 type). Plausible, not written. Vanishes if the ratio cutoff is frozen at x* (author's [I] alternative).
G3_N2 2.6: large-field level-set Jacobian open [I]; Lemma D σ_min reduced. So "linear form needs M2′'s coarea Jacobian" CONFIRMED.

## 9. Task (c) recomputation
e^{1/18} = 1.0571, e^{−1/18} = 0.9460, e^{1/9} = 1.1175, e^{−1/9} = 0.8948. γ_2 → 0.895γ_2 ✓. γ_0: 0.82·0.8948 = 0.7337 ≥ 0.73 ✓ (> γ_0/4). c″ → 0.895c″ ✓. C_i → 1.06C_i ≥ 1.0571 ✓. Bound ρ_s/(ū_i−ρ_s) ≤ 1/9 holds since ρ_s = 0.1 min ū ≤ 0.1ū_i ✓. [num] u*=1e6, p=2: E(1.1u*)/E(u*) = 0.9347 ✓.
Fixed-slack items found on pp. 381–382 that the 0.895 factor touches: A_0² ≥ 8B_3²(1+β_0)²A_1²; 4(1+β_0)^{−2} ≥ 1 (needs (1+β_0)² ≤ 3.58 after ×0.895); A_1 ≥ 48 → 50.7. Each is met by carrying 0.895 into the output exponent, which is what the author's c″ → 0.895c″ does. Bookkeeping: (v) changes the output −¼p_0 → −⅛p_0; that is a factor ½, not 0.895, on the budget output. It is harmless (−¼ still holds for γ small since 1.79/(1+β_0) > ¼), but the stated constants are inconsistent.
Unchecked: inter-step cut-vs-cut nesting (e.g. (1.76), conditions (i),(ii) of Sect. 1 [IV]). On the box S, ε_j(s′_j)/ε_{j−1}(s′_{j−1}) can move by e^{±1/9} relative to reference; slack not checked. On B15's 3r-set, s′ = u(c) is a real trajectory and the move is e^{±O(rγ²)}, so B15 is unaffected.
[num, python -I inline] 1.0571, 0.9460, 1.1175, 0.8948; 0.82e^{−1/9} = 0.7338; 0.82e^{−0.1} = 0.7420; 0.82e^{−1/45} = 0.8020; 0.82e^{−1/50} = 0.8038; 48/√0.8948 = 50.74; β_0 ≤ 0.892; E ratios 0.9344, 1.0776. All match §7–§9.

## 10. Grades and (R1) status
(1) s′ only via cut radii; ratios e^{±1/18}, e^{±1/9}: CONFIRMED. The derived auxiliary ε = (24R^4)^{−1}δ′_j of p. 382 also moves; covered by the same factor.
(2) Sup bound on S with γ_2, c″ ×0.895, γ_0 → 0.73γ_0, C_i ×1.06: CORRECTED. Numbers confirmed. "C3 is the only cut-vs-frozen-domain ratio condition" is false: T2_IEPS_LF lists three more [I] items, all with δ′ against frozen α-radii: B-radius ⊃ cut ball 2δ′_j (l.58); δ′ ≤ cα_2(α_3/α_1)^5 (l.64, CMP 109 p. 280); δ′/α_4 pairing (l.69, = (C5) in the LF layer). Each is restored by joint scaling (C_0,…,C_4) → 1.06(C_0,…,C_4), which needs C_2, C_3, C_4 free upward [I, not printed]. Bookkeeping: (v) −⅛p_0 vs 0.895c″ inconsistent but harmless. Inter-step cut-vs-cut nesting on the full box S: unchecked.
(3) Tail form, κ_3 ≥ 0.734κ_2 on S, 0.80κ_2 on 3r-set, no density input: CONFIRMED with two repairs: keep χ_hi(b) until the majorant step (ordering); R-ratio cutoff telescoping across N/D needs a D lower bound (not written) unless that cutoff is frozen at x*. Linear form needs G3_N2 2.6: CONFIRMED.
(4) ρ_s ≥ 3r covers B15; tail form suffices for W_j: CONFIRMED. κ_3 = 0.80κ_2 is a valid explicit value; calling B15's 0.82 an error is overstated (B15's O(rγ²) loss → 0 with γ).
(R1): REDUCED, not proved. The sup bound and the tail difference bound at frozen real s′ hold relative to (M-A)–(M-C), (R2), Lemma T/(F3)/M3, plus three [I] items new to this layer: upward freedom of C_2–C_4, the N/D telescoping of the R-ratio cutoff (or its freeze at x*), and inter-step nesting slack (needed only on the full box S, not on B15's 3r-set). Close to "same status as (H-hol)", but not equal.
