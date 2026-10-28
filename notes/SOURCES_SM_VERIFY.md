# SOURCES_SM_VERIFY

Independent check of SOURCES_SM.md. Firewall: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 1. (1.22)–(1.24) and the cube count, page images CMP 116 pp. 7–8
- (1.22) verbatim on image: 1/|t_□| = 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B| < 8B_0C_1e^{16κ_1}α_2^{−1}ε_1. CONFIRMED.
- (1.24) verbatim on image: |(1.23)| ≤ 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B|E_0(α_1/α_3)^5(L^jη)^5·exp(−(κ_1−1)M^{−4}|Y_0∖□̃^4|)exp(−κd_j(X)). CONFIRMED.
- p. 8: "use the factor (L^jη)^5 in (1.24). This yields (6L^j)^4 L^jη [text layer garbled: "(βLj^Uη"], and the sum over j is bounded by 2(6L)^4." Checked below on image.
- (1.29): |Σ(1.23)| ≤ E_0ε_1O(M^4)exp O(1)κ_1 exp(−⅛κ_1d_k(Y)). "Another possibility is to use the expression g_k|B| instead of ε_1. It gives a better bound, but the above is simpler." CONFIRMED (text layer).
- Meaning of t_□: (1.23) is the t_□-derivative at t_□ = 0 of E(□_0,(tζ̃_□ + t_□ζ_□)H_k(σ(Y_0),B′)). t_□ scales the fluctuation field H_k on □. So the factor g_k|B| is the size of the fluctuation that enters E, i.e. a Lipschitz-in-fluctuation factor. Linear in E: yes (E appears once, evaluated at a field that does not depend on E).

## 2. Cube count, (1.34)–(1.36), (1.42)–(1.43), (2.18)–(2.22) [page images pp. 8, 11, 16; text p. 9]
- p. 8 image: "we use the factor (L^jη)^5 in (1.24). This yields (6L)^4L^jη, and the sum over j is bounded by 2(6L)^4." CONFIRMED. Per-label weight L^jη = L^{−(k−j)} (η = L^{−k}), exponent 1 per scale.
- (1.34) domain: U^c_{k+1}(Y,(1+β)α_0,(1+β)α_1,α_0) × {B: |B| < ε_1g_k^{−1} on Y}. (1.36): |V′_k(Y,U,J,B)| ≤ E_0ε_1C_1M^q exp C_2κ_1 exp(−(1−2δ)κd_k(Y)). CONFIRMED (text layer).
- (1.42) on image: V_k(Y,B) = ½⟨Q(Y,B)B,B⟩ + V″_k(Y,B). (1.43): |Q(Y,B,b,b′)| ≤ C_3ε_1M^4 exp C_2κ_1 exp(−⅛(κ_1−1)d_k(Y) − ½(κ_1−1)M^{−4}|Y|). V″_k satisfies (1.36). Q is input-free (from P^{(k)}). Its size is a quadratic-form bound, not a sup on (1.34). So "input-free F-terms included in v" in SM §2.3 needs a mixed norm (sup for V″, matrix-element bound for Q). Cosmetic; W4 majorant handles both via (2.19)–(2.20).
- (2.18) on image: 1/|τ(Y)| = E_0ε_1C_1α_4^{−1}M^q exp C_2κ_1 exp(−(1−3δ)κd_k(Y)). This is a DEFINITION of the τ-circle, not a condition. Assumptions on p. 16: ⅛(κ_1−1) ≥ (1−3δ)κ, C_3 ≤ E_0C_1, q ≥ 8.
- (2.20): Σ|τ(Y)||V_k(Y,B)| ≤ ½O(1)α_4Σ|B(b)|² + O(1)α_4M^{−4}|Y_0|. The inputs enter the majorant only through |τ(Y)|·(bound on V). (2.22): χ-factor exp(−½γ_2ε_1²g_k^{−2}|P| + ½γ_2‖PB‖²), v-free. α_5 = O(1)e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2, v-free.

## 3. (C2)–(C5), page images pp. 18–19 + text pp. 18–21
- (C2) p. 18: "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1". (C3) p. 19: ε_2 = 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1, "ε_2 ≤ 1". (C4) p. 20: "2(L+2)^4O(1)ε_2 exp 5κ ≤ 1"; (LM)^4α_{0,1,4}, (LM)^4γ_2 ≤ 1; C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1. (2.38) |H(Z)| ≤ C_3ε_1 exp(−(1−8δ)½Lκd_{k+1}(Z)). (C5) p. 21: (2.39)–(2.41) "for κ sufficiently large, and ε_1 sufficiently small"; O(1)C_3ε_1 ≤ ½E_0 "unessential". All CONFIRMED.
- Two further conditions SM did not list (p. 18–19 image): (2.31)/(2.33) need (1/20)γ_2ε_1²/g_k² ≥ (1/20)γ_2ε_1²/γ² ≥ 4κ, and "for simplicity" exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2. The bound (2.33) is max{ε_2, exp(−γ_2ε_1²/(20γ²))}·e^{−(1−4δ)κd_k(Z_0)}.
  Effect on Fact B: the first condition is v-free (it ties γ to ε_1: γ² ≤ γ_2ε_1²/(80κ)). The second is monotone in v (larger v makes it easier); without it the bound is max{ε_2, e^{…}}, and the e^{…} part comes from χ-boundary terms. Terms with Y_0 = ∅ are V-independent and drop out of DĜ. So neither condition shrinks the V-radius.
- Fact B verdict: in (C1)–(C5) the inputs enter only through v (via |τ(Y)| and ε_2, C_3ε_1 ∝ v). Replacing E_0ε_1C_1M^qe^{C_2κ_1} by v, (C2)–(C4) read v ≤ α_4α_6e^{−5κ}/(4(L+2)^4O(1)) = R_V, free of ε_1 and E_0. The τ-circle stays |τ| ≥ α_6^{−1}4(L+2)^4O(1)e^{5κ} > 1, so the Mayer Cauchy circle still encloses [0,1]. W4 majorant (Fubini + Morera + Weierstrass) uses only |τ||V| ≤ α_4(…), so it runs at v ≤ R_V. CONFIRMED as a reduction (same status as W4 itself). Caveat: (C5)-type closure O(1)C_3ε_1 ≤ ½E_0 fails at v = R_V, but it is an induction-closure condition, not a holomorphy condition, so Cauchy in V is unaffected.
- Sanity check: θ_0 = 2K_HK_Vε_1 ≈ 4·O(1)C_3ε_1/E_0 (C_3 ∝ E_0). So θ_0 is Balaban's "C_3ε_1 small anyway" divided by E_0: the step map has gain O(ε_1)·const by homogeneity of (2.38) in v. Consistent.

## 4. (Eps) corollary vs D3W8 (Eps) and D3W8_VERIFY S5/S8
- D3W8 (Eps): |G(I) − G(0)| ≤ 2ε′E_0e^{−κd} for ‖I‖ ≤ 2E_0. VERIFY S5: ε′ = K·O(1)α_2^{−1}ε_1, and on the 2E_0 ball "K may grow more than linearly (inputs also sit in the exponent of the measure)". VERIFY S8: factor 8 = 2 (two G_1 terms) × 2 (2E_0 ball) × 2 (vacuum).
- SM corollary: integrate Theorem SM on [0, I]: |G(I) − G(0)| ≤ θ_0(1−L^{−α_*})^{−1}·2E_0·e^{−κ′d}, so ε′ = θ_0/(1−L^{−α_*}); κ′ ≥ κ, so the D3W8 norm is met. Arithmetic CONFIRMED.
- The S5 worry (nonlinear growth on the 2E_0 ball) is answered: the 2E_0 I-ball maps into a V-ball of radius 2E_0ε_1K_V′ ≪ R_V, and the Cauchy bound uses the sup on the larger V-ball, so nonlinearity of Ĝ costs only the factor R_V/(R_V − ‖V_0‖) ≤ 2. Requires the extra condition 2E_0ε_1K_V′ + v_F ≤ R_V/2 (stated in SM §2.4).
- Factor-8 bookkeeping: F2′ uses |h| ≤ 4ε′E_0 then Schwarz; with Theorem SM directly, h(1) = ∫_0^1 DG[I_R] gives |h(1)| ≤ ε′b_k, so a_{k+1} ≤ 2ε′b_k (vacuum ×2). F2′'s 8ε′ is then conservative; 32ε′ ≤ 1 still suffices. No conflict.
- Note: (Eps) needs only the sup-norm form of Fact A, which (1.29) gives for ALL bracket terms (p. 8: other terms "yield an expression satisfying (1.29)"). So the corollary does not depend on the reduced per-label exponent α_* for lower orders; replace (1−L^{−α_*})^{−1}K_V by the (1.29) constant. CONFIRMED, slightly stronger than SM states.

## 5. Lemma HH constants (item 3) against HHIST §6 and N1_VERIFY Part 1
- Recursion s_{k+1} ≤ θΣ_{l=i+1}^{k}L^{−α_*(k−l)}s_l, s_{i+1} ≤ S_0. Exact solution s_{i+1+n} = S_0(θ/λ)λ^n for n ≥ 1, λ = L^{−α_*} + θ (N1_VERIFY). Then Σ_l L^{−α_*(k−l)}s_l = s_{k+1}/θ = S_0λ^{k−i−1}, so |∂β_{k+1}/∂g_i| ≤ C_Πθ_0S_0λ^{k−i−1} = (C_Π/C_V)S_0(θ/λ)λ^{j−1−i} (j = k+1). Column sum over j ≥ i+2: C_Πθ_0S_0/(1−λ); plus C_β at j = i+1. Condition θ = 2C_VK_HK_Vε_1 < 1 − L^{−α_*}. All CONFIRMED.
- Wording fix: SM §3.2 calls L^{−α_*} "the direct feed of an old input (no ε_1)". In the recursion every contribution passes through G (factor θ); L^{−α_*} is the memory factor of older labels in the bracket sum (s_{k+2} = θs_{k+1} + L^{−α_*}s_{k+1}). Numbers unchanged.
- Overstatement: SM §3.1 says HHIST's open item "(0.29) on complex fluctuated configurations" is no longer needed. True only for the fifth-order remainder (I.3.54) part (α_* = 1). For orders ≤ 4 the label decay needs the gauge-invariance/Ward cancellation acting on W^{(l)} = ∂_{g_i}V^{(l)} in the sup norm; SM marks this [reduced] in Fact A. So the open item is moved into Fact A's reduced part, not removed.
