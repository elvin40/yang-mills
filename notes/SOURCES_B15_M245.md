# SOURCES_B15_M245 — B15 (H-thr): M2′, M4, M5

Status: complete (2026-10-28). Author: Claude (Opus), unverified.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. No existing file edited.
Ledger tags: [P] proved here, [V] read on page image or verified file, [I] interpretation/convention, [R] reduced to a named input.

## 0. Inputs read
TRUST_LEDGER row B15 (+ C1, C15, C42); SOURCES_HTHR (+VERIFY); SOURCES_HTHR2 (+VERIFY).
Also read: SOURCES_HHOL (+VERIFY), SOURCES_HHOL_LF (+VERIFY), SOURCES_T2_IEPS_LF §1–§4, SOURCES_G3_N2 §1–§3 (+VERIFY grep).
Page facts this session:
 (P1) [V, image] CMP 122 II p. 383 (PDF 29): (1.77) ⟨DH″B, ζDH″B⟩ > γ_0Σ_{p′}|(∂B)(p′)|² − O(1)A_0A_1²B_3⁴B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j; (1.78) |B(b)|² ≤ K_R Σ_{p′}|(∂B)(p′)|², K_R := 6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}; factor line prints A_1²p_1(g_j) in the middle, p_1²(g_j) on the right (misprint: middle must be p_1², HTHR2_VERIFY Step 3 agrees).
 (P2) [V, image, same page] Next paragraph: "All the integrals with respect to the group valued variables in the definition (1.71) are estimated by 1. Similar to the integral with respect to B, we have to include only the constant with the logarithms in the last line into the integration measure, and we estimate the quadratic form in B from below by 0." So Balaban spends the whole quadratic form on the one-bond factor, then bounds the rest of the B-integrand pointwise. The estimate is POINTWISE in B. This is the fact M2′ uses.
 (P3) [V, text] CMP 122 II p. 381 (PDF 27): "The function 1 − χ′_m, where χ′_m is given by (1.27) [IV], yields the factor exp(−γ_0 g_m^{−2}(2δ′_m)²)…"; then 1 − χ′ of (1.82) needs two cases (p. 382 text: case 1 Wilson factor via one plaquette, case 2 the quadratic form (1.77)–(1.78)).
 (P4) [V via HTHR_VERIFY Step 6, image read there] CMP 122 I p. 183: δ′_j = g_jA_1p_1(g_j), p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0; χ′_j stays inside the integral (1.25).

## 1. Exact statements (task 1)

Notation (HTHR §1, HTHR2 §1). s = threshold coupling in u-units, w = weight history (u_0, …, u_{j−1}), ū = reference = x*^{−2}. Integers R, N, cube partitions frozen at x* (C1, L3). Scaled threshold θ(s) := A_1p_1 with p_1 = (log s)^{p_1} (P1, P4). q := 2p_1 − (d+5)r_0 > p_0 ≥ 1 (C15). κ_2 := ½L^{−(d+5)} (HTHR2 §1.1). Δ_j(c) := B_j(u(c); ū) − B_j(u(c); u(c)).
 M2′ (density form). For each running-threshold cut bond b of step i, and each bounded F ≥ 0 of the other variables, the surface integral of the step-i integrand over {ψ_b = θ} (coarea, ψ_b the cut variable) is bounded by Balaban's bound for the same term, with the bond-b tail factor replaced by C_{M2′}(log s)^{P_2}·exp(−κ_2(log s)^q), uniformly in j, volume, and the other variables. Needed for the pure threshold derivative ∂_{s_i}B_j.
 M4 (extraction). The coefficient B_j is a fixed linear functional (second Taylor coefficient in A′) of the localized E^{(j)} on U^c_j(X, α_{0,j}, α_{1,j}); Cauchy at radius α_{1,j} = g_jC_1(log g_j^{−2})^{q_1} costs ≤ C s(log s)^{−2q_1}; and the shell bound (M2′ or Lemma T) holds on the complex background domain (small-field analogue of (1.73)).
 M5 (history holomorphy for the mixed term). The weight part of Δ_j′, i.e. Σ_l [∂_{w_l}B_j(w; ū) − ∂_{w_l}B_j(w; u(c))]v_l (HTHR (1.2), whose integrand is ∂_s∂_wB_j), is bounded by Σ_i a_{j−1−i}·(exponentially small in u_i), without a real ∂_s∂_w estimate.
 Plus: Lemma T transfer (printed large-field factor → small-field shell terms) [reduced in HTHR2_VERIFY]; small-field (1.73) [assumed]; summability + Gronwall [P, verified, HTHR §4–§5].

## 2. M2′: density form of the block bound (task 2)

Two settings carry a running threshold: (A) the R-operation cut (1.82), bounded by Balaban through (1.77)–(1.78) with the form then dropped (P2); (B) the cuts inside small-field polymers ((1.27) χ′_j, and CMP 116 (2.3) signed expansion), which keep a Gaussian majorant. M2′ is proved in both, by different one-line mechanisms.

2.1 Setting (A): pointwise route [P given P1, P2]. Balaban's estimate is pointwise in B (P2). On the set where bond b is large, (1.77)–(1.78) give, for every B in the support,
 exp(−½⟨DH″B, ζDH″B⟩) ≤ e^{c_0} exp(−½γ_0K_R^{−1}|B(b)|²),  c_0 := the O(1) constant of (1.77) (small for g small).
Balaban then integrates the remaining variables against "only the constant with the logarithms" and bounds the group integrals by 1. Call his per-term result T_A·exp(−½γ_0K_R^{−1}θ²), where T_A collects everything except the bond-b factor; his own bound of bond b's measure is part of T_A's e^{O(1)|Z|} budget.
Density version. Replace 1{|B(b)| ≥ θ} by the coarea surface measure δ(|B(b)| − θ)dB(b). The pointwise bound is unchanged on the sphere |B(b)| = θ (it is an equality case of the same inequality). The only change is the bond-b measure: Balaban's ∫_{|B(b)|≥θ, B(b) in its range} m_b dB(b) (m_b = the per-bond log-constant density, (1.71) last line: e^{−½n log g^{−2}}σ_0 = σ_0g^n per bond) becomes σ_0g^n|S^{n−1}|θ^{n−1}. We only need an upper bound for the new factor, and we do not need a lower bound for the old one: the old factor sits in T_A as ≤ e^{O(1)}, and we multiply T_A by the new factor without dividing. Hence
 |surface term at b| ≤ σ_0|S^{n−1}| g^nθ^{n−1}·e^{c_0}·T_A·exp(−½γ_0K_R^{−1}θ²).     (2.1)
With θ = A_1p_1(s) and HTHR2 §1.1 (K_R/(½γ_0A_1²) ≤ R^{d+5} for γ small; R^{−(d+5)}p_1² ≥ κ_2(log s)^q):
 M2′(A): C_{M2′} = σ_0|S^{n−1}|e^{c_0}A_1^{n−1}, P_2 = (n−1)p_1, extra factor g^n ≤ 1 (kept as a bonus).
Group-valued cut variables. For the (1.27) variable ψ = |e^{iB} − 1| the level set is a radial graph: along each ray r ↦ ψ(rω) is increasing with ∂_rψ ≥ ½ for r ≤ 1 (eigenvalues of ω bounded by |ω| = 1; 2|sin(rλ/2)| has derivative |λ|cos(rλ/2)). In polar coordinates ∫_{ψ=θ}F/|∇ψ| dH^{n−1} = ∫_{S^{n−1}}F(R(ω)ω)R(ω)^{n−1}/∂_rψ dω ≤ 2(2θ)^{n−1}|S^{n−1}|‖F‖_∞ (R(ω) ≤ 2θ for θ ≤ ½). So C_{M2′} → 2^n C_{M2′} for (1.27). [P; HS vs operator norm of ψ is a convention, either gives ∂_rψ ≥ ½ for r ≤ 1 up to a dim-G factor, [I]]

2.2 Setting (B): Schur-complement route [P given (Q) of G3_N2]. G3_N2 (2.1) [R, Balaban's chain read pointwise, A8-verified]: |integrand(X, B)| ≤ K_T exp(−½⟨v, Qv⟩) at every point and on the complex (U, J, σ) domain. On the sphere |B(b)| = θ the cut factor of b (CMP 116 (2.22): e^{−½γ_2θ²}e^{½γ_2|B(b)|²}) equals 1, so it is re-inserted for free (G3_N2 2.3). G3_N2 2.4: integrating all v except B(b) = x gives K_T·(∫e^{−½⟨v,Qv⟩})·p_b(x), p_b the N(0, Q^{−1}) marginal density, precision S_b = Schur complement of Q_ww. Then
 |surface term at b| ≤ |S^{n−1}|θ^{n−1}(2π)^{−n/2}(det S_b)^{1/2}e^{−½λ_min(S_b)θ²}·T_maj.     (2.2)
Two bounds on S_b:
 (i) upper: S_b ≤ Q_xx (Schur complement ≤ diagonal block), so (det S_b)^{1/2} ≤ ‖Q_xx‖^{n/2} ≤ (γ_1^N + ε_0)^{n/2} = c_−^{−n/2} (B-block of Q is H_0 − α_5 ≤ H_0, G3_N2 3.1, 3.4). Same constant as G3_N2 (2.2); this is a second derivation of it without inverting Q. [P]
 (ii) lower: λ_min(S_b) = 1/‖Γ_bb‖ ≥ 1/Λ (G3_N2 3.3). [P given (Hα)]
So M2′(B): |surface| ≤ |S^{n−1}|(2πc_−)^{−n/2}θ^{n−1}e^{−θ²/(2Λ)}T_maj, θ = A_1p_1(s). Since Λ is k-, g-, volume-free, the exponent θ²/(2Λ) = (A_1²/2Λ)(log s)^{2p_1} has NO R loss and beats κ_2(log s)^q (2p_1 > q). This also discharges the "Lemma T transfer" item: small-field shell terms get their own factor from the small-field majorant; nothing is transferred from p. 383. [P given (Q); (Q) = G3_N2, verified with one [I]: G_Γ vs M]
Tail (zero-order) form, for §4: integrate (2.1)/(2.2) over θ ∈ [θ_lo, θ_hi]: |shell term| ≤ |θ_hi − θ_lo|·sup_θ(surface bound). |θ_hi − θ_lo| ≤ A_1p_1(log s)^{p_1−1}s^{−1}·3r.
Constant of M2′ (worst of A, B): C_{M2′} := 2^nσ_0|S^{n−1}|e^{c_0}A_1^{n−1} + |S^{n−1}|(2πc_−)^{−n/2}A_1^{n−1}, P_2 = (n−1)p_1, exponent κ_2(log s)^q. Status: [P given P1, P2 and (Q)].

## 3. M4: Cauchy extraction at α_{1,j} (task 3)

3.1 Chain for one threshold derivative [P given M2′, M3, (2.25)]. A cut of step i with threshold θ(s_i) enters the step-i output E^{(i+1)} through polymer activities. ∂_{s_i} acts termwise: by coarea, ∂_{s_i}H(Z) = θ′(s_i)·Σ_{b∈Z}(surface term at b). By M2′ (2.1)/(2.2), on the analyticity domain,
 |∂_{s_i}E^{(i+1)}(X)| ≤ |θ′(s_i)|·C_{M2′}(log s_i)^{P_2}e^{−κ_2(log s_i)^q}·C(MR)^d·cE_0e^{−κ′d(X)}.
(MR)^d ≤ C(log s_i)^{dr_0} (M3 bond count, R frozen at x*). M3 propagates this input perturbation to E^{(j)} with weight a_{j−1−i} (Theorem SM label decay, [R]). CMP 119 (2.25) [V via HTHR2_VERIFY]: β_j is the coefficient of A(φ_j, U) subtracted from E^{(j)}, a linear functional. So ∂_{s_i}B_j = Ext[∂_{s_i}E^{(j)}].
3.2 Cauchy [P given CMP 109 (1.13), CMP 119 (2.28), both V]. f(z) := E(exp(izξA′)U), |A′|, |∇A′| ≤ 1: holomorphic on |z| < α_{1,j}, so |f″(0)| ≤ 2 sup|f|/α_{1,j}². The radius in A′ is α_1 itself (HTHR2_VERIFY Step 5 [V]); in d = 4 the action term is scale-free (Step 6), so the coefficient of u is ≤ C sup|E|/α_{1,j}². Hence the units item of HTHR2 L4(a) is closed by those two verified readings. Cost:
 α_{1,j}^{−2} = C_1^{−2}u_j(log u_j)^{−2q_1} ≤ C_1^{−2}u_i,   since u_j ≤ u_i for i < j and log u_j ≥ 1.
3.3 Complex background [R, now not assumed]. The sup in 3.2 is over the complex domain U^c_j. Setting (A): printed (1.73) [V p. 380, HTHR2_VERIFY Step 4] keeps the real positive density, cost e^{3 sup|σ|}. Setting (B): G3_N2 (2.1) is a POINTWISE modulus bound valid at complex (U, J, σ) (CMP 116 (2.15)–(2.23), A8 Lemma P(c), verified). So (2.2) holds on the complex domain with the same K_T, Q. This is the small-field analogue of (1.73); it is no longer an assumption, it is (Q) + Balaban's (2.15)–(2.23) chain [R, verified files].
3.4 The inequality. θ′(s) = A_1p_1(log s)^{p_1−1}s^{−1}. Combine 3.1–3.3 at s = u_i:
 |∂_{s_i}B_j| ≤ a_{j−1−i}·[A_1p_1(log s)^{p_1−1}s^{−1}]·[C_1^{−2}s]·C_{M2′}C(log s)^{P_2+dr_0}e^{−κ_2(log s)^q}·cE_0e^{3sup|σ|}
  = a_{j−1−i}Φ_D(s),  Φ_D(s) := C_D(log s)^{P_D}e^{−κ_2(log s)^q},
 C_D := A_1p_1C_1^{−2}C_{M2′}C·cE_0e^{3sup|σ|},  P_D := np_1 − 1 + dr_0.
The factor s^{−1} = g² from the shell width cancels the Cauchy cost α_{1,j}^{−2} ≤ C_1^{−2}s exactly. So the extraction cost is beaten by the g power; only polylogs remain. They are beaten by the large-field factor:
 (log s)^{P_D}e^{−κ_2(log s)^q} ≤ e^{−(κ_2/2)(log s)^q}  whenever (κ_2/2)y^q ≥ P_D log y, y = log s,
which holds for y ≥ y_D := max(e, (2P_D/κ_2)^{1/(q−1)}) since log y ≤ y and q > 1. [P]
Zero-order (tail) form, used in §4: |B_j(w; s) − B_j(w; s′)| ≤ Σ_i a_{j−1−i}|s_i − s′_i|·sup_{segment}Φ_D ≤ 3r·Σ_i a_{j−1−i}Φ_D*(s_i) (integrate 3.4 along the segment; |s_i − s′_i| ≤ 3r).
Status: M4 [P given (2.28), (1.13), (2.25) all V; M3 R; (Q) R].

## 4. M5: the weight part by Cauchy in the history (task 4)

Idea. Do not estimate the real mixed derivative ∂_s∂_wB_j. Split Δ_j′ at the point c into a weight part (thresholds frozen at two REAL values) and a threshold part (weights real). The weight part is a directional derivative of a holomorphic function of w. Cauchy turns it into a zero-order threshold difference on the complex polydisc. The threshold part is §3.

4.1 Split [P]. With s′ := u(c) (real, fixed during the differentiation) and v = du/dc:
 Δ_j′(c) = W_j(c) + T_j(c),
 W_j(c) := d/dz|_{z=0} φ(z),  φ(z) := B_j(u(c) + zv; ū) − B_j(u(c) + zv; s′),
 T_j(c) := −Σ_{i<j} ∂_{s_i}B_j(u(c); s)|_{s=u(c)}·v_i.
(Chain rule on B_j(u(c); ū) − B_j(u(c); u(c)); the second argument's dependence on c is T_j.)
4.2 Holomorphy of φ [R]. For each frozen real threshold vector s′ within 3r of ū, w ↦ B_j(w; s′) is holomorphic on the u-polydisc 𝒫 := Π_l{|w_l − u*_l| < 0.17u*_l}. Reason: HHOL §1–§4 + HHOL_LF §3.4–§4 prove this for thresholds frozen at x*. The proofs use only that every cutoff is g-free in B̃ units with a real frozen threshold (HHOL 1.2, HHOL_LF 4.1–4.2); the R-ratio density weight stays at x* (HHOL_LF 3.4) and does not involve thresholds. Replacing x*-thresholds by s′ changes only threshold values by relative O(rγ²). 𝒫 lies in the image of P_{ρ_0}(x*), ρ_0 = 0.1, under g ↦ g^{−2}: that image contains |w/u* − 1| < 1 − (1+ρ_0)^{−2} = 0.1736. Inputs inherited: (M-A), (M-B), (M-C) of HHOL_LF. [R]
Radius in z. u_l(c) + zv_l ∈ 𝒫 if |z| < ρ_z := min_l(0.17u*_l − 3r)/|v_l|. With |v_l| ≤ 3/2 (induction, §5) and u*_l ≥ γ^{−2}: ρ_z ≥ 0.1γ^{−2} when γ^{−2} ≥ 150r. [P]
4.3 Sup of φ on the polydisc [R to 4.2 + modulus domination]. φ is a threshold difference (ū vs s′) at complex weights. Bound it by the tail form of §3.4 run at complex w:
 - modulus domination at complex coupling: HHOL Lemma D (per mode (|w|/Re w)^{1/2} ≤ e^{2ρ_0²}) and HHOL_LF 4.4 (Re u ≥ 0.826u*): setting (A) γ_0 → 0.82γ_0; setting (B) Q → (Re w)Q, Λ → Λ/0.826. Thresholds are real and unchanged. So κ_2 → κ_3 := 0.82κ_2 (the B̃-threshold differs from the u*-scaled one by 1 + O(rγ²), absorbed);
 - history propagation at complex inputs: Theorem SM label decay with λ_C = L^{−α_*} + 1.235C_Vθ_0 (HHOL 4.2(a)) [R];
 - extraction: §3.2–3.3, with sup over the complex polydisc (constant ×1.235, HHOL 3.3).
Result: sup_{|z|<ρ_z}|φ(z)| ≤ 3r·Σ_{i<j}a^C_{j−1−i}Φ_3*(u_i), Φ_3(s) := 1.235C_D(log s)^{P_D}e^{−κ_3(log s)^q}, a^C_m := λ_C^m.
4.4 Cauchy [P given 4.2, 4.3]. |W_j(c)| = |φ′(0)| ≤ sup|φ|/ρ_z ≤ 10γ²·3r·Σ_i a^C_{j−1−i}Φ_3*(u_i).
The weight part carries an extra factor 30rγ². No real mixed derivative and no (H-hist2) is used. This is HHOL's own-slot Cauchy (HHOL 5.2) applied once, in the direction v, to a difference that is already exponentially small. The B7 verifier's joint holomorphy (Path A) is what makes a directional disc legitimate: φ is a composition of the jointly holomorphic map w ↦ B_j(w; s′) with an affine line.
4.5 If a genuine second mixed c-derivative is needed (e.g. ∂_c∂_{c′} for two sources, or an (H-hist2)-type use): apply Cauchy twice on the bidisc |z|, |z′| < ρ_z/2 to φ(z, z′) := B_j(u + zv + z′v′; ū) − B_j(·; s′): |∂_z∂_{z′}φ(0,0)| ≤ 4 sup|φ|/ρ_z² ≤ 400γ⁴·3r·Σ_ia^C Φ_3*. [P given 4.2, 4.3] So the mixed object of the original M5 is bounded with the same exponential smallness and an extra γ⁴. HTHR2_VERIFY's objection (complexifying w moves sharp thresholds) does not apply: thresholds are frozen real numbers s′, ū during the complexification; only the weights are complex.
Status: M5 discharged, reduced to 4.2 (holomorphy at frozen real thresholds) and complex Theorem SM.

## 5. Assembly: pointwise bound, trajectory sum, Gronwall (task 5)

5.1 Pointwise [P given §3, §4]. T_j: |T_j(c)| ≤ V_{j−1}Σ_i a_{j−1−i}Φ_D*(u_i) ≤ (3/2)Σ_ia_{j−1−i}Φ_D*(u_i) (§3.4 at real weights). W_j: §4.4. Put a_m := max(λ^m, λ_C^m), A := Σa_m, and
 Φ(s) := C_Φ(log s)^{P_D}e^{−κ_3(log s)^q},  C_Φ := (3/2)C_D + 37rγ²C_D,  κ_3 = 0.82κ_2 = 0.41L^{−(d+5)}.
(Φ_D ≤ Φ and Φ_3 ≤ Φ·(1.235/C_Φ)C_D; 10·3·1.235 ≤ 37.) Then
 sup_{|c|≤2r}|Δ_j′(c)| ≤ η_j := Σ_{i<j}a_{j−1−i}Φ*(u_i),  Φ*(s) := sup_{|s′−s|≤3r}Φ(s′).
Compared with HTHR (3.1): no power prefactor s^a survives (§3.4 cancellation), the exponent is κ_3(log s)^q with q = 2p_1 − (d+5)r_0 (C15) instead of the refuted κ(log s)^{2p_0}.
5.2 Conditions on γ [P]. Write y = log s, y_0 = log(γ^{−2} − 3r).
 (G1‴) qκ_3y^{q−1} ≥ 2 + P_D/y for y ≥ y_0 (gives h′ ≤ −1 for h(y) = y + log Φ(e^y), and Φ decreasing). Holds for γ small because q > 1.
 (G2‴) 3r(P_D + qκ_3(log(s+3r))^{q−1})/((s − 3r)log(s − 3r)) ≤ ln 2 for s ≥ γ^{−2} (gives Φ* ≤ 2Φ).
 (G4‴) γ^{−2} ≥ 150r (radius ρ_z of §4.2) and γ^{−2} ≥ e^{y_D} (§3.4).
5.3 Sum [P; same argument as HTHR §4, verified in HTHR_VERIFY Step 8 with 2p_0 → q]. Exchange sums; u_i ≥ γ^{−2} + βm (HBETA (E)), Φ decreasing:
 x_thr := Σ_{j≤K}sup_c|Δ_j′| ≤ 2AΣ_{m≥1}Φ(γ^{−2} + βm) ≤ (2A/β)∫_{γ^{−2}}^∞Φ ≤ 2A(γ^{−2}/β)Φ(γ^{−2})
  = 2AC_Φ β^{−1}γ^{−2}(log γ^{−2})^{P_D}exp(−κ_3(log γ^{−2})^q),
uniformly in K. This is the B15 target Σ ≤ C(γ^{−2}/β)Φ(γ^{−2}) with C = 2A.
Numerical check [num] (python -I inline, 2·10^6 terms, no file kept), log Σ_{m≥1}Φ(G+βm) vs log[(G/β)Φ(G)], Φ = (log s)^Pe^{−κ(log s)^q}: (κ,q,P,β,G) = (1,1.5,3,.05,10³): −3.42 ≤ −2.45; (…,10⁵): −18.65 ≤ −17.23; (0.3,2,6,.02,10⁴): −0.40 ≤ 1.00. Where (G1‴) fails the bound can fail: (0.05,1.2,4,.05,10⁴): 23.18 > 20.37; (0.3,2,6,.02,10²): 11.27 ≤ 11.32 (holds narrowly). As expected.
5.4 Gronwall [P; HTHR §5 Lemma H′, verified (HTHR_VERIFY Step 8)]. Induction on j with V_{j−1} ≤ 3/2 and g_i(c) ≤ γ for i < j. These give |u_i(c) − u_i| ≤ 3r (used by §3.4's segment and §4.2's radius) and |v_l| ≤ 3/2 (used in ρ_z and T_j). Then B_j′ = β_j′ + Δ_j′, |β_j′| ≤ ε_jV_{j−1} (H-hist), |Δ_j′| ≤ η_j (5.1), V_j ≤ (1 + ε_j)V_{j−1} + η_j, so V_j ≤ e^x(1 + x_thr) ≤ (6/5)(5/4) = 3/2 under
 (G3‴) 2AC_Φβ^{−1}γ^{−2}(log γ^{−2})^{P_D}e^{−κ_3(log γ^{−2})^q} ≤ ¼, and x = C_1Aγ/β ≤ ln(6/5).
No circularity: step j uses only V_{j−1}; the complex disc of §4 is centred at the real point u(c) of the current induction stage. The HTHR2 route (Lemma 7.1(a) + (H-hist2)) is not used, so the (H-hist2) objection of HTHR2_VERIFY no longer applies to B15.
Size note (as HTHR2 L11): κ_3 ≈ 0.41·2^{−9} ≈ 8·10^{−4} for d = 4, L = 2; with q = 2, (G1‴) needs log γ^{−2} ≳ 1.2·10³. "γ small" only. If only the (1.27) cut matters (HTHR2 L10), κ_3 → 0.82·(A_1²/2Λ) with exponent 2p_1 and no L^{−(d+5)} loss.

## 6. Ledger and conclusion (task 6)

[V] this session: CMP 122 II p. 383 image (P1: (1.77), (1.78), factor line, p_1 misprint confirmed again; P2: "estimate the quadratic form in B from below by 0", pointwise estimate); p. 381 text (P3). Earlier [V] reused: CMP 122 I p. 183 (HTHR_VERIFY Step 6), CMP 122 II p. 380 (1.73) (HTHR2_VERIFY Step 4), CMP 109 (1.13), CMP 119 (2.25), (2.28) (HTHR2_VERIFY Steps 5–6, IEPS_LF §1).
[P] here:
 - Exact statements of M2′, M4, M5 (§1).
 - M2′(A): density form of the printed block bound by the pointwise route (2.1); constant σ_0|S^{n−1}|e^{c_0}A_1^{n−1}θ^{n−1}-type, polylog prefactor (n−1)p_1, exponent R^{−(d+5)}p_1² ≥ κ_2(log s)^q; only upper bounds used. Radial-graph coarea for the group variable (1.27) (factor 2^n).
 - M2′(B): Schur-complement density (2.2) with (det S_b)^{1/2} ≤ ‖Q_xx‖^{n/2} = c_−^{−n/2} (S_b ≤ Q_xx; second derivation of G3_N2's constant) and λ_min(S_b) ≥ 1/Λ; no R loss. This replaces the Lemma T transfer for small-field shell terms.
 - M4 inequality (§3.4): shell width s^{−1} cancels the Cauchy cost α_{1,j}^{−2} ≤ C_1^{−2}s; residue (log s)^{np_1−1+dr_0} beaten by e^{−(κ_2/2)(log s)^q} for log s ≥ (2P_D/κ_2)^{1/(q−1)}.
 - M5 replacement (§4): split Δ_j′ = W_j + T_j; W_j by directional Cauchy on a z-disc of radius ≥ 0.1γ^{−2}, extra factor 30rγ²; second mixed derivative by bidisc Cauchy, extra 400γ⁴ (4.5).
 - Assembly (§5): sup_c|Δ_j′| ≤ Σ_ia_{j−1−i}Φ*(u_i); x_thr ≤ 2A(γ^{−2}/β)Φ(γ^{−2}), Φ(s) = C_Φ(log s)^{P_D}e^{−κ_3(log s)^q}; Gronwall closes under (G1‴)–(G4‴); numerics §5.3.
[R] reduced (named inputs B15 now rests on):
 (R1) Holomorphy of w ↦ B_j(w; s′) on 𝒫 for every frozen real threshold vector s′ within 3r of ū, sup ≤ M: the HHOL + HHOL_LF chain with x*-thresholds replaced by s′; inherits (M-A), (M-B), (M-C).
 (R2) M3 history propagation: a threshold perturbation at step i reaches B_j with weight λ^{j−1−i} (real) and λ_C^{j−1−i} (complex): Theorem SM / HHOL (F1) chain; bond count (MR)^d ≤ C(log s)^{dr_0}.
 (R3) (Q) of G3_N2 (Q > 0, c_− ≤ Γ_bb ≤ Λ), verified with one [I] (G_Γ vs M), and its pointwise majorant (2.1) at complex (U, J, σ).
 (R4) Balaban's (1.79) bookkeeping for setting (A) read as "pointwise bound, then integrate" (P2 supports it; the per-bond measure identification σ_0g^n is from (1.71)'s last line, [I] for the exact constant).
[I] conventions: frozen integers R, N, partitions at x* (C1, L3); norm used in ψ = |e^{iB} − 1| (§2.1); the background cutoffs χ_k^{(n)} contribute no threshold derivative at the extraction point (they equal 1 near U ≈ 1 and are booked into Z by 1 = χ + (1 − χ), HTHR_VERIFY Step 5) — stated, not re-read.
[num] trajectory sum §5.3.
Not used any more: HTHR2's Lemma 7.1(a) route and its (H-hist2) input; the "small-field analogue of (1.73)" assumption (now (R3)); the Lemma T transfer (now M2′(B)).

CONCLUSION. B15 (H-thr) is PROVED relative to (R1)–(R4) and the [I] conventions, unverified. M2′, M4, M5 are discharged as separate items: M2′ by (2.1)/(2.2), M4 by §3.4, M5 by the directional Cauchy of §4. Result:
 sup_{|c|≤2r}Σ_{j≤K}|Δ_j′(c)| ≤ 2A(γ^{−2}/β)Φ(γ^{−2}),  Φ(s) = C_Φ(log s)^{np_1−1+dr_0}exp(−0.82κ_2(log s)^{2p_1−(d+5)r_0}),
uniform in K, with Lemma H′ closing under (G1‴)–(G4‴). The sharpest remaining input is (R1): holomorphy in the weights with thresholds frozen at a real s′ ≠ x*. It has the same status as (H-hol) itself (HHOL_LF, reduced to (M-A)–(M-C)), so B15 adds no new open item beyond (H-hol). Needs an independent verifier; check first §4.2 (does the HHOL_LF freeze really allow any real s′?) and §2.1 (is (1.79) pointwise in bond b?).
Status: complete (2026-10-28). Unverified.

Corrections after verification (SOURCES_B15_M245_VERIFY, 2026-10-28, images pp. 378, 379, 383): M2′ — the density step must divide by the old bond-b factor (a Haar normalization of order 1 by (1.71)); the omitted σ(g_kB) density changes only the constant; Schur bounds confirmed; non-round large-field level sets still lack a coarea Jacobian (G3_N2 2.6). M4 — θ′ omits the s^{−1/2} term of δ(s) = s^{−1/2}A_1p_1(s), so P_D = np_1 + dr_0 (one log power higher); the cancellation holds up to 1 + O(rγ²); the log s threshold holds with the new P_D. M5-not-needed CONFIRMED in structure (split, 0.1736 radius, 30rγ², 400γ⁴), but (R1) is only partly supplied: HHOL/HHOL_LF give holomorphy at any frozen real s′ by inspection, while the sup and small-difference bounds at s′ ≠ x* are UNSUPPORTED (those files freeze at x* only) — NEW OPEN ITEM. (G2‴) mis-stated (37 → 38); numerics reproduce. STATUS: B15 REDUCED, not proved; the new item = HHOL_LF bounds at thresholds frozen at s′ ≠ x*.
