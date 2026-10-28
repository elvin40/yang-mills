# Verification of SOURCES_T2_MPT_STEPC.md

Date 2026-10-28. Independent verifier. Firewall respected.

## 1. Read author file and LLL/STEPB context
- Read SOURCES_T2_MPT_STEPC.md §0–§8, SOURCES_T2_LLL.md + VERIFY, SOURCES_T2_F_STEPB.md + VERIFY.
- Claims located: Lemma 1.1 (proper time), S1′, V1′, Theorem A, Lemma C, Lemma F, Theorem B, §6 symbols, §7 numerics.
- First flags: (i) S1′ statement E[𝒜^n; Cl] ≤ C(1+t)^{n−1} vs proof (iv) giving (1+t)³ at n = 4; (ii) V1′(c) remainder bookkeeping; (iii) V1′(e) evenness needs D_α even in α as a function, including the hop terms; (iv) Theorem A(ii) uses n_{A′}(λ) ≤ 4C_d(λ + 3|α|), check τe^{−tA′} bound; (v) Theorem B uses w̃_2 at m² = λμ|φ| with Lemma F scaling.

## 2. Context read: GAPRIME2 Lemma 1.1, U3_LEMMA51 §3.1 + Lemma 3.4
- GAPRIME2 Lemma 1.1: A′ = cos φ c^†c + D′D′^† − 2 sin φ K, D′ = (∇_0, ∇_1)^T, so the gauge-fixing block is G_{μν} = ∇_μ∇_ν^* with b_μ indexed by the start site x (Landau gauge, T_0 phase e^{iαx_1}). Author's 6.1 matches.
- U3 §3.1/Lemma 3.1: link fields at midpoints, kernel = W(x, y)·a(x − y) with W the straight-line Wilson line; a is gauge invariant and origin independent. Lemma 3.4: total Hessian symbol even in k at every φ (point reflection), lattice errors even O(k²).
- So U3's "canonical symbol" = kernel between midpoint fields divided by the straight Wilson line. The author's reduced kernel ã (6.2) is exactly this object: half-link transport X → x, lattice word, y → Y, closed by the straight segment Y → X. Caveat 6.6 resolves: same convention (gauge invariance of a, U3 Lemma 3.1).

## 3. Context: S123 Lemma 5.1 [I], TRUST_LEDGER B3, BETA_FP_H (3.1)
- S123 Lemma 5.1 [I] = identification of the plaquette forms of (2.1) with the covariant curl (midpoint transport). S123_VERIFY item 16 keeps it [I]. It enters (F) through LLL Lemma 2.1 (fibre separation, ghost cancellation), which Lemma 1.1 of the author uses. So it is on the (F) path.
- Ledger B3: "T1 Route K"; T1 = Theorem 2w. So (F) and all its inputs are on the Theorem 2w path (Route K).
- BETA_FP_H (3.1): [Fine(Λ) − Fine(Λ′)]/(n_2f²) → c_2 ln(Λ²/Λ′²). With Fine(Λ; f) = f²G(f/Λ²), φ := f/Λ′², λ := (Λ/Λ′)^{−2}: G(λφ) − G(φ) → n_2c_2 ln(1/λ). This is the author's form. STEPB §1 and §2.6 write G(φ) − G(λφ) → n_2c_2 ln(1/λ): sign slip in STEPB (both displays). Content unchanged: replace λ by 1/λ. CONFIRMED notational.

## 4. Rerun of numerics/t2_mpt_heat4.py (Mac, 19.5 s)
- Part B: max|ã − predicted| = 3.6e−16, 5.3e−16, 9.7e−16 (α = 0.3, 1, 2); antilinear residue ≤ 8.5e−16; |σ − (a_0 + αa_1 + α²a_2)|/α³ = 0.0013. All match §7.1.
- Part A: c_A/t = 0.328177, 0.306485, 0.297734, 0.293907, 0.292811, 0.292288, 0.292019, 0.291654; d/(t(1+t)²) = 0.01177 … 0.05718. All match §7.2.
- Flag (minor): the check "σ(K) = σ(−K) exactly" in symbol_check is vacuous (it compares cos(x) with cos(−x)). Evenness holds analytically anyway (6.3 formula is a function of cos and of s_0s_1).
- t = 80 entry (−0.0104): α⁶ contamination checked by hand. Continuum x⁶ coefficient of x cosh 2x/sinh x = 0.01462; Richardson bias −4eα⁴, e = 0.01462t⁵/(2π); at t = 80, α = 0.005: t·shift = −0.019. Observed −0.0104 − 0.0095 = −0.0199. Author's explanation CONFIRMED.
- d/t³ = d/(t(1+t)²)·((1+t)/t)²: 0.0600, 0.0582, 0.0576 at t = 10, 20, 40; distance to 0.05615 halves per doubling (O(1/t)). Consistent with the continuum limit 0.35278/(2π) = 0.05615. (x⁴ coefficient = 2/3 − 1/3 + 7/360 = 0.352778, checked by hand.)

## 5. New numerics: numerics/t2_mpt_verify_thmA.py (Mac, 221 s)
Box R = 80, A′_α from GAPRIME2 Lemma 1.1 (author's builder), t-grid dt = 0.1 to T = 150, W by (1.1) with exact p_t(0)² = (e^{−2t}I_0(2t))².
(i) Theorem A after the t-integral (not done by the author). R := W(α; m²) − α²w̃_2(m²), w̃_2 from Richardson (α = 0.0025, 0.005).
| m² | α | x = m²/α | R m⁴/α⁴ | w̃_4m⁴ (α⁴ term) |
| 0.24 | 0.01 / 0.02 / 0.04 | 24 / 12 / 6 | 0.00527 / 0.00528 / 0.00531 | 0.00527 |
| 0.12 | 0.01 / 0.02 | 12 / 6 | 0.00490 / 0.00492 | 0.00489 |
R m⁴/α⁴ is bounded and equal to the α⁴ coefficient up to the edge x = 6. Theorem A's form holds; no large-t loss at the edge.
(ii) Lemma S1′ (k = 0), scalar 𝔏_α: E[A_t⁴; X_t = 0] = 24 × (α⁴ coefficient of T_α(t)).
| t | 1 | 2 | 5 | 10 | 20 | 40 | 60 |
| E[A⁴;X=0]/(t(1+t)²) | 0.0089 | 0.0156 | 0.0250 | 0.0302 | 0.0334 | 0.0350 | 0.0354 |
| ratio to 7t³/(60π) | 0.957 | 0.944 | 0.971 | 0.984 | 0.991 | 0.991 | 0.985 |
Order t³ is sharp; the brief's t² is refuted. Continuum E[A⁴;X=0] = 24·7t³/(1440π) = 7t³/(60π) confirmed (the t = 60 dip is α⁶ bias, 2αt = 0.3).

## 6. Hand checks (tasks a–d, f)
(a) Dyson expansion, fourth order. τe^{−t(L+E)} = Σ_k(−1)^k∫_{s_0+…+s_k=t}τ(e^{−s_0L}E⋯Ee^{−s_kL}), simplex volume t^k/k!. Written out: k = 0: 2T_α(t) = 2E_0[cos αA_t; X_t = 0]; k = 1: −tτ(Ee^{−tL}); k = 2: ∫_0^t(t − u)τ(Ee^{−uL}Ee^{−(t−u)L})du; k = 3, 4: the 3- and 4-fold simplex integrals. Walk form: each term = (−1)^k∫ds Σ_v tr[η_α(v_1)⋯η_α(v_k)]E[e^{iα𝒜}; Cl] (phase e^{iαx_1(start)v_0} of each hop and e^{±iαx_1} of each x_0-jump add to α𝒜). Checked.
- Odd terms. α¹ comes only from k = 1 (a = 1, n = 0) and k = 0 has none (cos). α³ comes from k = 1 (a = 3, n = 0; a = 2, n = 1; a = 1, n = 2), k = 2 (a = 2, n = 1; a = 3, n = 0), k = 3 (a = 3), and k = 0 has none. None vanishes term by term (a = 1, n = 2 contains E[𝒜²; Cl] ≠ 0).
- Evenness of D_α as a function: yes. A′_{−α} = CA′_αC (LLL V1(ii), verified), so τe^{−tA′_{−α}} = conj τe^{−tA′_α} = τe^{−tA′_α} (real). D is even, entire in α at fixed t. Step (e) is correct: odd part of P = ½[Rem(−α) − Rem(α)] = O(α⁴) at fixed t ⇒ a_1 = a_3 = 0. CONFIRMED.
- Remainder count (c): with a ≥ k, n ≤ 3 − k, a + n ≥ 4, surplus powers |α|^{a+n−4} ≤ t^{−(a+n−4)} give total t-power k − a + 3 ≤ 3; the R-term: E|𝒜|^{4−k} ≤ C(1+t)^{3−k} gives t^k(1+t)^{3−k} ≤ C(1+t)³; the O(α⁴) Taylor term of Πη: t^k/(1+t) ≤ t(1+t)² for k ≤ 4. k ≥ 5 tail: α⁴t⁴/(1+t) ≤ α⁴t(1+t)². All CONFIRMED.
- S1′ rederived: Bell polynomial B_4 = F′⁴ + 6F′²F″ + 4F′F‴ + 3F″² + F⁗ with F^{(j)} = 2G_j·(cos θ or i sin θ) reproduces the author's five terms. Hölder steps G_2² ≤ tG_4, |G_1G_3| ≤ tG_4, G_1²G_2 ≤ t²G_4, G_1⁴ ≤ t³G_4 correct; each term ≤ C(1+t)^{1/2}G_4. E X_s⁴ = 12s² + 2s; E[∫g⁴; g(t)=y] ≤ Ct(1+t)^{3/2}. Total Ct(1+t)². Hop part ≤ C(1+t) (Doob L⁴ on halves). (v) Hölder exponents correct. The t³ order is sharp (§5 (ii)). CONFIRMED.
(b) Proper-time integral. t ≤ 1/|α|: integrand ≤ C_pCα⁴e^{−tm²}(1+t); ∫ = α⁴(m^{−2} + m^{−4}) ≤ 2α⁴m^{−4}. t > 1/|α|: V1′ is not used. Control is: τe^{−tA′_α} ≤ 4C_de^{3|α|t}/t (n_{A′}(λ) ≤ 4C_d(λ + 3|α|), support ≥ −3|α|); with m² ≥ 6|α|, e^{−t(m² − 3|α|)} ≤ e^{−tm²/2}; ∫_{1/|α|}^∞t^{−3}e^{−tm²/2} ≤ 2α⁴m^{−4}·xe^{−x/2} ≤ (4/e)α⁴m^{−4}; the α²c_A piece ≤ α⁴m^{−4}xe^{−x}. So the tail is exponentially small in x = m²/|α| and bounded by Cα⁴m^{−4} at x ≥ 6. The positivity margin m² − 3|α| ≥ m²/2 is what makes it work. CONFIRMED (constant C_A bookkeeping not rechecked digit by digit; its form is right).
(c) Frullani. Lemma F: t = s/m², dominated by sup|ψ|·|e^{−λs} − e^{−s}|/s, limit ψ_∞ln(1/λ). ψ = p_t(0)²c_A(t) → c_∞/(4π) = 11/(48π²); 4ψ_∞ = 11/(12π²) = n_2c_2 (n_2 = ½, c_2 = 11/(6π²)). Assembly: G(λφ) − G(φ) = 4[w̃_2(λμ|φ|) − w̃_2(μ|φ|)] + [H_{λφ}(μ) − H_φ(μ)] + O(32C_A/μ²) + [neutral difference → 0]. Correct; μ ≥ 12 keeps m² ≥ 6|α| at both φ and λφ. Lemma C: Δ(τ) = (2π)^{−1}[cosh 2τ/sinh τ − 1/τ] = (2π)^{−1}[(11/6)τ + O(τ³)] rechecked; |α^{−1}D − αc_A| ≤ 4Cτ³ at α = τ/t, t ≥ 1 correct; V2 applies along all real α → 0. λ ↔ 1/λ: notational (§3). CONFIRMED.
(d) Midpoint symbols, derived independently. G_{01} = ∇_0∇_1^* = 1 − T_0 − T_1^* + T_0T_1^*. Output midpoint X = x + e_0/2, input Y = y + e_1/2. Words → d = Y − X: 1 → (−½, ½); T_0 → (½, ½); T_1^* → (−½, −½); T_0T_1^* → (½, −½). Closing segment Y → X gives ∮x_1dx_0 = +1/8, −1/8, −1/8, +1/8 (all lattice legs contribute 0 relative to x). So ã_{01} = e^{iα/8} at ±(e_0 − e_1)/2, −e^{−iα/8} at ±(e_0 + e_1)/2. Then σ_{01} = 4i sin(α/8)c_0c_1 + 4cos(α/8)s_0s_1 (c_μ = cos(K_μ/2), s_μ = sin(K_μ/2)): a_0 = K̂_0K̂_1, a_1 = (i/2)c_0c_1, a_2 = −K̂_0K̂_1/128, exact in α. Diagonal: words 1, T_μ, T_μ^*, T_μT_μ^* on one axis, closing area 0: σ_{μμ} = K̂_μ². Matches 6.3. Convention: identical to U3 Lemma 3.1/3.4 (midpoint fields, kernel divided by the straight Wilson line; gauge invariant), so caveat 6.6 is resolved. Point reflection: σ depends on K only through c_μ, s_0s_1 ⇒ even. a_2 enters J at relative O(K⁴): harmless. CONFIRMED.
(f) Residual inputs of (F).
- S123 Lemma 5.1 identification [I]: on the path (LLL Lemma 2.1 → author's Lemma 1.1). The (0,1) block is GAPRIME2 Lemma 1.1 [P]. For mixed planes the background holonomy is 1, so GAPRIME2's BCH computation applies with sin-term 0; my hand check of the (0,2) plaquette: z = (b_0, T_0b_2, −T_2b_0, −b_2), Σz = ∇_2b_0 − ∇_0b_2 (covariant curl); (1,ν), (2,3) have trivial transport. So the [I] is a short computation, not a gap; it should be written out once and tagged [P].
- STEPB §2.0 neutral sector: on the path (Theorem B uses N(φ)/φ² = b_n + O(φ²)). At the Wilson level the neutral quadratic form is cos φ·|flat curl|² on (0,1) plaquettes and |flat curl|² elsewhere (BCH: neutral cross products vanish; the charged cross products go into K). So Δ^{neu} = Δ_0 − (1 − cos φ)Δ_{01} (= U3 Prop. 2.2(b) [V]), 0 ≤ Δ_0^{−1/2}Δ_{01}Δ_0^{−1/2} ≤ 1, per-cell log det = ∫_{BZ}tr log(1 − (1 − cos φ)M(K)), analytic and even for |φ| < π/2. Sketch is sound; CONFIRMED as a short proof.

## 7. Grades
(1) Lemma V1′ (with S1′, Lemma 1.1, Theorem A): CONFIRMED. Odd orders α¹, α³ do not vanish term by term; they vanish because D_α is even in α (charge conjugation) and P is a fixed-coefficient polynomial. S1′: E_0[A_t⁴; X_t = 0] ≤ Ct(1+t)² proved and sharp (t³ for t ≥ 1; numerics 7t³/(60π) to 1%). Theorem A: t > 1/|α| is controlled by the mass margin m² − 3|α| ≥ m²/2 and the IDS bound, giving ≤ Cα⁴m^{−4}·xe^{−x/2}. Checked numerically after the t-integral: R m⁴/α⁴ = 0.0053 constant up to x = 6.
(2) Theorem B (Lemma C + Lemma F ⇒ (3.1′), n_2c_2 = 11/(12π²)): CONFIRMED. No use of STEPB Lemma 2, Step C, or Weyl-form (MPT). The STEPB sign slip (G(φ) − G(λφ) in §1 and §2.6) is notational; the author's form G(λφ) − G(φ) → n_2c_2 ln(1/λ) agrees with BETA_FP_H (3.1).
(3) Step C midpoint symbols: CONFIRMED (independent derivation; exact in α; even in K). Caveat 6.6 resolved: U3 Lemma 3.4 uses the same midpoint/straight-Wilson-line canonical symbol. Off the critical path of (F).
(4) Numerics: CONFIRMED (all numbers reproduce). Minor: the σ(K) = σ(−K) check in symbol_check is vacuous; the t = 80 bias is α⁶, confirmed by hand.
(F) status: PROVED, relative to textbook inputs (invariance principle for walk bridges, Laplace continuity, counting monotonicity, Bessel asymptotics) and verified project lemmas. Two small residual items on the Theorem 2w (Route K) path: S123 Lemma 5.1's identification step (a one-paragraph BCH computation, hand-checked here for the mixed planes) and STEPB §2.0 (neutral sector; sketch sound). Both should be written out once and tagged [P]; neither is a hypothesis.
STATUS: COMPLETE
