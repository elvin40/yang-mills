# SOURCES_B15_M245 — B15 (H-thr): M2′, M4, M5

Status: in progress (2026-10-28). Author: Claude (Opus), unverified.
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
