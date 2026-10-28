IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_B15_M245_VERIFY — independent check of SOURCES_B15_M245.md

Verifier: Opus subagent, 2026-10-28. Firewall kept (no SA files read).

## 1. Page images read (CMP 122 II pp. 378–379, 383; 300 dpi)
- (1.71) last line [V]: +(−½d(g)log g_k^{−2} + log σ_0)|(B_0\T_0)∩X|. B-measure is ∫dB 1_X σ(g_kB). So per-bond measure = σ_0 g^n σ(g_kB)dB, n = d(g). Author's m_b = σ_0g^n is right, but the Haar-type density σ(g_kB) is omitted from the author's sphere factor (sup σ = O(1); constant only).
- p. 383 [V]: factor line prints A_1²p_1(g_j) in the middle and p_1²(g_j) on the right; misprint reading agrees with HTHR2_VERIFY.
- p. 383 [V]: "All the integrals with respect to the group valued variables in (1.71) are estimated by 1. Similar to the integral with respect to B, we have to include only the constant with the logarithms in the last line into the integration measure, and we estimate the quadratic form in B from below by 0."
- (1.79) [V]: T′_k(X)1 ≤ sup exp{ΣO(1)M^dR_j^{d+1}d′_j(Z_j)}·ΠΠexp(−½γ_0A_1²p_0²(...)(d′+1) − 2p_0)·Π′exp(−p_0(g_j)). Summary bound only; no per-bond factor is printed.

## 2. R4 (§2.1): is the p. 383 estimate pointwise in B?
- Yes [V]. (1.77) is a lower bound on the form for every B; (1.78) bounds |B(b)|² by Σ|∂B|² for every B. On {|B(b)| ≥ θ} this gives exp(−½form) ≤ e^{O(1)}exp(−½γ_0K_R^{−1}θ²) at each point. The next paragraph then puts only the log-constant into the measure and bounds the form below by 0. That is a sup bound, then integration of a constant. The reading "pointwise, then integrate" is justified. The bound holds on the sphere |B(b)| = θ (the inequality is ≥).
- Gap in the density step. The author says no lower bound on the old bond-b factor is needed and multiplies T_A by the new factor. That is not valid as written: T_A contains the old bond-b factor, so the correct bound is T_A × (new factor)/(old factor). The fix is available. By (1.71) the old factor is σ_0g^n∫σ(g_kB)dB over the allowed range of B(b), which is a Haar-type normalization constant c_H of order 1 (g-free). Corrected (2.1): |surface| ≤ c_H^{−1}·sup σ·σ_0|S^{n−1}|g^nθ^{n−1}e^{c_0}T_A e^{−½γ_0K_R^{−1}θ²}. Same form, constant changes by sup σ/c_H. [P, I for c_H = O(1) from the (1.71) measure]
- Radial graph for (1.27): ψ(rω) = max_λ 2|sin(rλ/2)| in operator norm, ∂_rψ = cos(r/2) ≥ 0.87 for r ≤ 1; with HS norm the bound is ≥ cos(1/2)/√(dim). Also ψ ≤ r, so ψ = θ forces r ≥ θ (needed when F is a Gaussian). R(ω) ≤ 2θ for θ ≤ ½ holds (2 sin(r/2) ≥ 2r/π ≥ r/2 for r ≤ π, so R ≤ 2θ ≤ 1). Note θ ≤ ½ refers to the unscaled threshold gA_1p_1; the factor (A_1p_1)^{n−1} is scaled. The g-powers match with the g^n measure factor, so this is a units remark, not an error. CONFIRMED up to the [I] norm convention.

## 3. M2′(B) (§2.2): Schur-complement density
- Marginal: ∫dw e^{−½⟨v,Qv⟩} = (2π)^{(N−n)/2}(det Q_ww)^{−1/2}e^{−½⟨x,S_bx⟩} = Z·p_b(x), Z = (2π)^{N/2}(det Q)^{−1/2}, det Q = det Q_ww·det S_b. Checked. [P]
- det: S_b = Q_xx − Q_xwQ_ww^{−1}Q_wx ≤ Q_xx. Q_xx = bond-b block of H_0 − α_5 (G3_N2 3.1), so ‖Q_xx‖ ≤ ‖H_0‖ ≤ γ_1^N + ε_0 = c_−^{−1} (G3_N2 3.4). Hence (det S_b)^{1/2} ≤ c_−^{−n/2}. Same as G3_N2's det Γ_bb ≥ c_−^n since S_b = Γ_bb^{−1}. CONFIRMED.
- Gaussian: e^{−½⟨x,S_bx⟩} ≤ e^{−½λ_min(S_b)θ²}, λ_min(S_b) = 1/λ_max(Γ_bb) ≥ 1/Λ. CONFIRMED. (2.2) matches G3_N2 (2.2) with ε_1/g² stripped.
- Scope: (2.2) needs a round sphere in one bond variable B(b). For the (1.27) group cut and for large-field level sets, G3_N2 2.6 says the coarea Jacobian is not done. §2.1's radial-graph step supplies it for (1.27) only (sup-norm F). For the GGAIN_LF large-field level sets |V_jV_Z^{−1} − 1| it is still not done. So "M2′(B) replaces Lemma T" holds for CMP 116 (2.22) cuts and, with §2.1, for (1.27); not shown for the other large-field level sets. [I]

## 4. R1 (§4.2): holomorphy in w with thresholds frozen at a real s′ ≠ x*
- What HHOL/HHOL_LF prove [V, file]: HHOL 1.1–1.4 work in B̃ = g_kB; the cut χ(B̃) is u-free; complex g enters only through u in the Gaussian and in Φ_1. HHOL_LF 4.1 freezes ALL g-dependent parameters (ε_j, δ_j, δ′_j, R_j, N, ratio density) at x*. HHOL_LF 3.4 end: "on the reals, the frozen map at g ≠ x is not Balaban's map … Single-valuedness … is lost". HHOL_LF (M-D): one reference x* only.
- Holomorphy part: transfers. The finite-volume argument (HHOL 1.4, HHOL_LF 4.2–4.3) needs only that each cut is a fixed u-free set in B̃ units. That is true for any fixed real s′. [P, by inspection]
- Bounds part (sup ≤ M, non-vanishing, F2′ sizes): NOT supplied as stated. HHOL_LF 5.3 uses large-field suppression e^{−c″p_0(x*_j)} and the ordering of x*_j. With thresholds at s′ = u(c), the sizes become e^{−c″p_0(s′_j)}; ordering of s′ holds (HHOL_LF 5.3 notes Re β_j ≥ β/2 for g_r(c)). Thresholds move by relative ≈ 1.5rγ². So the same proof should run with constants changed by 1 + O(rγ²·polylog). This is an extension by inspection, not a result of HHOL/HHOL_LF. Also the R-ratio density stays at x* while thresholds sit at s′: a mixed convention that HHOL_LF never treats; (M-A)'s average bound uses real cut-off Wilson densities and should still hold, but it is unchecked.
- §4.3 needs more than holomorphy: sup|φ| small requires the whole §3 chain (M2′, M3, Cauchy in A′) at complex w, for every frozen real threshold on the segment [s′, ū]. The author lists the pieces (modulus domination, complex SM, ×1.235); each is [R]. Note HHOL_LF line 22: crude per-mode loss e^{2ρ_0²n_i} is not k-uniform; the author uses it only inside large-field budgets (HHOL_LF 4.4), where it is allowed. For the small-field marginal, G3_N2 §4 last bullet routes the complex case through the real σ = 0 reference, so Q, c_−, Λ are real; Q → (Re w)Q is then a relabelling. OK [R].
- Domain numbers [num]: min_{|s|=0.1}|(1+s)^{−2} − 1| = 0.17355; f univalent on the disc, so the image contains |w/u* − 1| < 0.1736. CONFIRMED. ρ_z: (0.17u* − 3r)/1.5 ≥ 0.1γ^{−2} ⇔ 0.02γ^{−2} ≥ 3r ⇔ γ^{−2} ≥ 150r. CONFIRMED (uses u*_l ≥ γ^{−2}).
- Side fact: HHOL_LF (M-D) states the sourced theory never moves thresholds with the source. Under that convention Δ_j ≡ 0 and B15 is not needed. B15 is needed only if β_j is read with thresholds at the running coupling.
- Grade R1: holomorphy CONFIRMED by inspection; the sup/small-difference bound at s′ ≠ x* is UNSUPPORTED by the cited files (new [R] item, plausible, constants O(rγ²)).

## 5. M4 (§3.4)
- Threshold derivative is wrong by a log. HTHR §1 l.19: unscaled thresholds are δ(s) = s^{−1/2}A_1p_1(s) (δ′ = gA_1p_1(g), P4). The weights, not s, set the B-scaling. So at fixed w the scaled threshold is θ(s; w) = (u_w/s)^{1/2}A_1(log s)^{p_1}, and ∂_sθ = s^{−1}A_1(log s)^{p_1}(−½ + p_1/log s) at s = u_w. The author's θ′ = A_1p_1(log s)^{p_1−1}s^{−1} drops the dominant −½ term. Corrected |θ′| ≤ A_1(log s)^{p_1}s^{−1} (for log s ≥ 2p_1). Hence P_D = np_1 + dr_0, not np_1 − 1 + dr_0, and C_D loses p_1. Same in B̃ units.
- Cancellation: s^{−1}·α_{1,j}^{−2} ≤ s_i^{−1}C_1^{−2}u_j(log u_j)^{−2q_1} ≤ C_1^{−2}u_j/s_i ≤ C_1^{−2}(1 + 3rγ²·2) (u_j ≤ u_i for i < j by (E); |s_i − u_i| ≤ 3r). "Exactly" holds at s_i = u_i, up to 1 + O(rγ²) on the segment. CONFIRMED with that factor.
- Threshold on log s: (log s)^Pe^{−κ_2y^q} ≤ e^{−(κ_2/2)y^q} ⇐ P log y ≤ (κ_2/2)y^q ⇐ y^{q−1} ≥ 2P/κ_2 (log y ≤ y). CONFIRMED; the max(e, ·) is not needed. With corrected P_D the threshold is (2(np_1 + dr_0)/κ_2)^{1/(q−1)}.
- Grade M4: CORRECTED (polylog exponent +1; harmless).

## 6. M5 replacement (§4.1, 4.4, 4.5)
- Split: d/dc[B_j(u(c); ū) − B_j(u(c); u(c))] = [weight derivative of B_j(·;ū) − B_j(·;s′)]|_{s′=u(c)} − Σ_i∂_{s_i}B_j·v_i. Correct chain rule. CONFIRMED.
- Cauchy: |φ′(0)| ≤ sup|φ|/ρ_z ≤ 10γ²·sup|φ|; with sup|φ| ≤ 3r·Σa^CΦ_3* this gives 30rγ². CONFIRMED given §4 sup bound.
- Bidisc: radii ρ_z/2 each; |z||v| + |z′||v′| stays inside the single-direction margin. |∂_z∂_{z′}φ| ≤ sup/(ρ_z/2)² = 4sup/ρ_z² ≤ 400γ⁴·sup. CONFIRMED.
- Arithmetic slip: 10·3·1.235 = 37.05 > 37. Use C_Φ := (3/2)C_D + 38rγ²C_D.
- The HTHR2_VERIFY objection (complex w moves sharp thresholds) is avoided: thresholds are frozen real numbers in B̃ units. CONFIRMED in structure; rests on §4 (R1).

## 7. Assembly (§5)
- Sum: Σ_jΣ_{i<j}a_{j−1−i}Φ*(u_i) ≤ AΣ_iΦ*(u_i) ≤ 2AΣ_{m≥1}Φ(γ^{−2} + βm) (u_i ≥ γ^{−2} + β(K − i), K − i ≥ 1) ≤ (2A/β)∫_{γ^{−2}}^∞Φ ≤ 2A(γ^{−2}/β)Φ(γ^{−2}) by h′ ≤ −1. CONFIRMED.
- (G1‴): h(y) = y + log C + P log y − κ_3y^q, h′ = 1 + P/y − qκ_3y^{q−1} ≤ −1 ⇔ (G1‴). CONFIRMED.
- (G2‴) is mis-stated. d log Φ/ds = (P/log s − qκ_3(log s)^{q−1})/s. Only the P term carries 1/log s. Correct form: 3r[P/((s − 3r)log(s − 3r)) + qκ_3(log(s + 3r))^{q−1}/(s − 3r)] ≤ ln 2. The author divides the κ term by log s too, which is weaker by a factor log s. Still true for γ small; CORRECTED.
- Gronwall: V_j ≤ e^x(1 + x_thr) ≤ (6/5)(5/4) = 3/2; induction uses only V_{j−1}; |u_i(c) − u_i| ≤ 2r·3/2 = 3r. CONFIRMED.
- Φ exponents after §5: Φ(s) = C_Φ(log s)^{np_1+dr_0}exp(−0.82κ_2(log s)^{2p_1−(d+5)r_0}).
- Numerics [num, python -I, 2·10⁶ terms]: all five author rows reproduce to 0.01 (−3.42 ≤ −2.45; −18.65 ≤ −17.23; −0.40 ≤ 1.00; 23.18 > 20.37 with (G1‴) false; 11.27 ≤ 11.32 with (G1‴) false). Extra row with P raised by 1, (0.3, 2, 7, .02, 10⁴): 1.85 ≤ 3.22. CONFIRMED.

## 8. Grades and B15 status
(1) M2′: CORRECTED. Pointwise reading of p. 383 is justified [V]. Density step needs the old bond-b factor as a divisor (= Haar normalization c_H, O(1), from (1.71)) and the omitted σ(g_kB) density; constant changes only. Schur bound (det, Gaussian) confirmed. Coverage of non-round large-field level sets remains open (G3_N2 2.6).
(2) M4: CORRECTED. θ′ misses the s^{−1/2} term; P_D = np_1 + dr_0. Cancellation holds up to 1 + O(rγ²). Threshold on log s confirmed with new P_D.
(3) M5 not needed: CONFIRMED in structure (split, 0.1γ^{−2}, 30rγ², 400γ⁴) but rests on R1, whose bounds part is UNSUPPORTED by HHOL/HHOL_LF (they freeze at x* only). Holomorphy at frozen s′ transfers by inspection; the sup/small-difference bound at s′ ≠ x* is a new [R] item.
(4) Sum + Gronwall: CORRECTED ((G2‴) mis-stated; 37 → 38; P_D +1). Numerics confirmed.
B15 status: REDUCED, not proved. It rests on (R1′) the HHOL_LF bounds at thresholds frozen at real s′ within 3r of x* (new, beyond (H-hol)), plus (R2), (R3), (R4 confirmed [V]), and the large-field Jacobian of G3_N2 2.6. The author's claim "no new open item beyond (H-hol)" is not supported.
