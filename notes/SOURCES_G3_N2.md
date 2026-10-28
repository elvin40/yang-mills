# SOURCES_G3_N2 — Lemma G3 (residue N2 of A5's T1 use), with (Q) assembled from A7 + A8

Date 2026-10-28. Author: Claude (Opus), unverified. No existing file edited.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Read: TRUST_LEDGER rows A5, A7, A8, B13 (+ A1, A2, A3, A17, C7, C8 lines by grep); SOURCES_G3 + VERIFY (full); SOURCES_Q + VERIFY (full); SOURCES_T2_H0 §1, §4, N1–N2 lines + VERIFY §5.4, N2 grade; SOURCES_HHIST2 §1–§3 and ledger lines; SOURCES_A7_CDC + VERIFY (full, corrections appended); SOURCES_A8_POS + VERIFY (full, corrections appended); SOURCES_GGAIN_LF §6.3 and SOURCES_LOC lines by grep.
Tags. [P] proved here. [V] page fact, quoted from the cited project file. [V-A7] / [V-A8] taken from SOURCES_A7_CDC / SOURCES_A8_POS in their VERIFIED, corrected form. [R] reduced to a named input. [I] inferred.
A8 status: VERIFIED (coordinator note 2026-10-28; SOURCES_A8_POS_VERIFY). Used with its two corrections: Lemma D gives η_M ∝ e^{−ε″M/8}, threshold M ≥ (8/ε″)[…]; the extra (2.24) term ½⟨Γ_0X, [H_0^{−1} − sym C_0]Γ_0X⟩ is ≥ 0, a cost absorbed in (2.25). R_2 of (2.16) is read as H_0 − H_σ.

## 1. What the consumers ask (task 1)

1.1 N2, exact (SOURCES_T2_H0 l. 144; VERIFY N2 grade, §5.4). N2 = GGAIN Lemma G3: a bound on the g_k-derivative of the sharp small-field cut χ_k, inside the own-slot derivative ∂β_{k+1}/∂g_k of Theorem B2-unif. The verifier asks that N2 name (Q) with c_− as the coarea input. The consumer is 7′:
 |β_{k+1}(h, g) − β_{k+1}(0)| ≤ C_β g for every past h ∈ ]0, γ]^k, g ∈ ]0, γ], C_β free of k, K, the past, and the volume.
7′ needs from N2 exactly: an additive term S_χ in S_0 (C_β = C_ΠS_0) that is finite and uniform in g_k ∈ (0, γ], k (= j − 1), the past h, the volume, and the regular background U. No size condition on S_χ is needed for 7′; only finiteness and uniformity. [P, from H0 §1.2, §4.1]
1.2 G3, exact (SOURCES_G3 4.2, as corrected by G3_VERIFY item 3). For every step k, g_k ∈ (0, γ], every term T of (2.14) with cut χ_{k,Y_0}χ^c_{k,P}:
 |(∂_{g_k} on the cut) T| ≤ c_1′ U(g_k) e^{δκΣ_i d_k(Y_i)} T_maj,  U(g) = A_n D_n ε_1^{−1} e^{−ε_1²/(cΛg²)},
with A_n = |S^{n−1}|(2πc_−)^{−n/2}, n = N² − 1, T_maj = Balaban's (2.23)–(2.26) majorant of the same term. The one non-quoted input is (Q):
 (Q) the majorant of |integrand| is a B-free constant times a positive Gaussian density in v = (X, B) with precision Q > 0, and for every cut bond b the bb-block Γ_bb of Q^{−1} obeys c_− ≤ Γ_bb ≤ Λ, with c_−, Λ free of k, g, the past, the volume, and U.
1.3 (H-hist) (row B13) receives G3 through GGAIN: B13 small-field half = GGAIN + G3 ⇐ (Q). B13 large-field half (GGAIN_LF §6.3) uses "(Q) with c_−" for its own surface terms too. HHIST2 R3: the first-derivative half ε′_j of (H-hist2) rests on real (H-hist) and so on G3 order 1 + (Q). [V, file quotes]

## 2. Which form of (Q) the majorant uses (task 2, part a)

2.1 History of the question. SOURCES_G3 2.2 first posed (Q) in a one-bond-fixed form: the majorant chain holds with B(b) held fixed, at a cost e^{a|B(b)|²}. G3_VERIFY item 3 replaced it: use the joint (X, B) form, a = 0, Γ_bb = bb-block of Q^{−1}. SOURCES_Q 4.2 used the marginal. GGAIN_LF 6.3 still says "one-bond conditional marginal". This section shows that, for a Gaussian majorant, the two forms are the same object. So nothing beyond the full form is needed.
2.2 The majorant is pointwise [V via SOURCES_Q §1, G3_VERIFY item 3, A8 §1.4–§6]. Balaban's chain bounds the modulus of the (2.14) integrand at each point (X, B) and each σ on the Cauchy contour: (2.15) modulus of the complex measure (A8 Lemma P(c): |dμ_{C_σ}(B)| = r_σ dμ_{Γ_σ}(B) pointwise); (2.16)–(2.17) σ → 0, U_c → U with R_1, R_2 = H_0 − H_σ, R_3 as quadratic forms in B; (2.20)–(2.21) V_k and R terms as quadratic forms; (2.22) the cut. Result:
 |integrand(X, B)| ≤ K_T · exp(−½⟨v, Qv⟩), v = (X, B),   (2.1)
with K_T free of (X, B) (it carries e^{−½γ_2(ε_1²/g²)|P|}, the det ratios, the τ- and κ_1-factors) and Q the precision of §3. T_maj = K_T ∫exp(−½⟨v, Qv⟩)dv (in Balaban's normalization). [R: Balaban's chain, read pointwise; every step is a pointwise inequality of exponents.]
2.3 The surface term at bond b [P]. By SOURCES_G3 2.1, ∂_{g_k} of the factor of bond b gives −(ε_1/g²)·(surface integral over |B(b)| = r, r = ε_1/g_k), with the other factors kept. On the sphere the (2.22) factor of b (if b ∈ P) is e^{−½γ_2r²}e^{½γ_2|B(b)|²} = 1, so it can be re-inserted for free; for b ∈ Y_0 the dropped χ_b ≤ 1 is not used. So (2.1) holds on the sphere with the same K_T and Q. Hence
 |surface term of b| ≤ (ε_1/g²) K_T ∫_{|x|=r} dσ(x) F_b(x),  F_b(x) := ∫ exp(−½⟨v, Qv⟩) dX dB_{≠b} |_{B(b)=x}.
2.4 One-bond-fixed integral = marginal (Schur complement) [P]. Order v = (x, w), x = B(b) ∈ R^n, w = (X, B_{≠b}). Write Q = [[Q_xx, Q_xw], [Q_wx, Q_ww]], Q > 0. Completing the square in w:
 ⟨v, Qv⟩ = ⟨w + Q_ww^{−1}Q_wx x, Q_ww(·)⟩ + ⟨x, S_b x⟩,  S_b := Q_xx − Q_xwQ_ww^{−1}Q_wx.
So F_b(x) = (2π)^{m/2}(det Q_ww)^{−1/2} e^{−½⟨x, S_bx⟩}, m = dim w. The block-inverse formula gives (Q^{−1})_xx = S_b^{−1} = Γ_bb, and det Q = det Q_ww · det S_b. Therefore
 F_b(x) / ∫exp(−½⟨v, Qv⟩)dv = p_b(x) := (2π)^{−n/2}(det Γ_bb)^{−1/2} e^{−½⟨x, Γ_bb^{−1}x⟩},
the density of the B(b)-marginal of N(0, Q^{−1}). Fixing one bond does not change the quadratic form; it splits it into the conditional part (compression Q_ww, integrated out exactly) and the Schur complement S_b. The "cost e^{a|B(b)|²}" of the first G3 draft is zero: a = 0.
2.5 Consequence [P]. G3 needs (Q) only in the full form 1.2: Q > 0 and c_− ≤ Γ_bb ≤ Λ. The one-bond-fixed form is a corollary (2.4), not an extra input. The A8 caveat "one-bond-fixed form not treated" is discharged.
 |surface term of b| ≤ (ε_1/g²)|S^{n−1}| r^{n−1} sup_{|x|=r} p_b(x) · T_maj ≤ (ε_1/g²)|S^{n−1}| r^{n−1}(2πc_−)^{−n/2} e^{−r²/(2Λ)} · T_maj.   (2.2)
 Here det Γ_bb ≥ c_−^n and ⟨x, Γ_bb^{−1}x⟩ ≥ |x|²/Λ.
2.6 Scope note [I]. GGAIN_LF 6.3's large-field surfaces (level sets of |V_jV_Z^{−1} − 1|) are not round spheres in one bond variable. 2.4 still applies (it holds for any one-bond hypersurface, with the coarea Jacobian), but the Jacobian bound is not done here.

## 3. (Q) assembled from A7 + A8 (task 2, part b)

3.1 The precision Q [P given A8 §6.4 (verified)]. At σ ≡ 0, real regular U, J = 0, put C_0 := C^{(k)}(Z_0, 0) (real, A8 6.1), K_0 := C_0^{−1}, H_0 := sym K_0, S_C := sym C_0, Γ := Γ_k(Z_0, 0) (real). A8 §6.4 reads (2.23) with dμ_{H_0^{−1}}(B). The exponent of (2.23) is then −½⟨v, Qv⟩ with
 Q = [[I − α_5Z + Γ*S_CΓ, Γ*], [Γ, H_0 − α_5]]  (X-block, B-block; B on V_red(Z_0)).
A8 facts used [V-A8]: H_0 ≥ ¾γ_exp; ‖K_0 − A_Z‖ ≤ ε_0 := 2Γ_1²η_M^0 ≤ ¼γ_exp (under (H_η), with η_M^0 ∝ e^{−ε″M/8}); 0 < S_C ≤ H_0^{−1} and D_S := H_0^{−1} − S_C obeys 0 ≤ D_S ≤ δ_S := (4/(3γ_exp))‖M_0‖², ‖M_0‖ ≤ (4/(3γ_exp))ε_0. The (2.24) extra term = ½⟨ΓX, D_SΓX⟩ ≥ 0: it is the −Γ*D_SΓ inside the X-block below.
3.2 Reference split [P]. Q = Q_0′ − P with
 Q_0′ := [[I + Γ*H_0^{−1}Γ, Γ*], [Γ, H_0]] = T* diag(I, H_0) T,  T := [[I, 0], [H_0^{−1}Γ, I]],
 P := diag(α_5Z + Γ*D_SΓ, α_5I) ≥ 0,  ‖P‖ ≤ p := α_5 + G_Γ²δ_S,  G_Γ := ‖Γ‖.
(Check: ‖X‖² + ⟨B + H_0^{−1}ΓX, H_0(B + H_0^{−1}ΓX)⟩ = ‖X‖² + ⟨ΓX, H_0^{−1}ΓX⟩ + 2⟨B, ΓX⟩ + ⟨B, H_0B⟩.)
3.3 Upper bound Λ and Q > 0 [P]. Q_0′^{−1} = T^{−1}diag(I, H_0^{−1})T^{−*}, T^{−1} = [[I, 0], [−H_0^{−1}Γ, I]]. Its diagonal blocks are I and H_0^{−1} + H_0^{−1}ΓΓ*H_0^{−1}. For a positive 2×2 block operator the norm is at most the sum of the diagonal-block norms. With h := 4/(3γ_exp) ≥ ‖H_0^{−1}‖:
 ‖Q_0′^{−1}‖ ≤ Λ_0 := 1 + h + h²G_Γ².
Assume (Hα) pΛ_0 ≤ ½. Then Q ≥ Λ_0^{−1} − p ≥ (2Λ_0)^{−1} > 0, and Γ_bb ≤ ‖Q^{−1}‖ ≤
 Λ := 2Λ_0 = 2(1 + 4/(3γ_exp) + (16/(9γ_exp²))G_Γ²).
(Hα) needs α_5 and δ_S = O(η_M²) small against Λ_0^{−1}: α_5 small is Balaban's own "α_5 sufficiently small" (p. 17), with a stronger number than his α_5‖C_0‖ < ½; δ_S small is M large after κ_1 (A8 (H_η)). [P; the order of constants is Balaban's hierarchy, I]
 This corrects SOURCES_Q 4.3: its Λ_0 = 1 + γ_0^{−1} took the B-block of Q_0^{−1} to be C_0. The B-block is C_0 + C_0ΓΓ*C_0 (Q_VERIFY item 1), so G_Γ enters Λ.
3.4 Lower bound c_− [P given A7 (corrected, verified) and A8 (verified)]. The X-block of Q is ≥ (1 − α_5)I > 0 (S_C > 0, ‖Z‖ ≤ 1). Since Q > 0, the B-block of Q^{−1} is the inverse of the Schur complement
 Σ_B := H_0 − α_5 − Γ(I − α_5Z + Γ*S_CΓ)^{−1}Γ* ≤ H_0.
Both sides are positive, and inversion is operator-decreasing, so (Q^{−1})_BB ≥ H_0^{−1} ≥ ‖H_0‖^{−1}·I. Compressing to bond b keeps the bound: Γ_bb ≥ ‖H_0‖^{−1}·I_n. Now H_0 is symmetric, so
 ‖H_0‖ = sup_{‖B‖=1}|⟨B, K_0B⟩| ≤ sup_{‖B‖=1}|⟨B, A_ZB⟩| + ‖K_0 − A_Z‖ ≤ γ_1^N + ε_0.
The first sup uses A7 Lemma N in its corrected two-sided form [V-A7]: for B̃ ∈ V_red(Λ), −c_C(a + c_J)‖B̃‖² ≤ ⟨B̃, A_expB̃⟩ ≤ c_C(K_{ext,1} − a + c_J + 2c_𝒢)‖B̃‖², and A_Z is a compression. So |⟨B, A_ZB⟩| ≤ γ_1^N‖B‖², γ_1^N := ‖C‖²·max{K_{ext,1} − a + c_J + 2c_𝒢, a + c_J}. No symmetry of A_Z and no Theorem L is used. Since γ_exp ≤ ⟨B, A_ZB⟩ ≤ γ_1^N for unit B, ε_0 ≤ ¼γ_exp ≤ ¼γ_1^N. Hence
 c_− := (γ_1^N + ε_0)^{−1} ≥ 4/(5γ_1^N).
This is the shape of LOC's c_− = (γ_1 + ε_M)^{−1} (row A2), with ε_M = ε_0 supplied by A8 Lemma D. Either input closes it.
3.5 The norm G_Γ = ‖Γ_k(Z_0, 0)‖ [R + I]. Balaban's own (2.24)–(2.25) step needs ‖Γ_0‖ bounded (A8 6.4(b) [R]). An explicit bound from A7: Γ_k(Z_0, 0) = (C*Δ_k(0)C)_{Z_0, Z_0^c}·(C^{(k)})^{1/2}(0). ‖C*Δ_k(s)C‖ ≤ Γ_1 = 2B_AS(δ_A) for s ∈ [0, 1] [V-A7 §4.1]. The σ = 0 truncation of (2.7) has kernel ≤ π^{−1}∫_0^{γ_1}x^{−1/2}(walk kernel of WC(iv), prefactor 4/(γ_exp + x)) dx + series kernel 4γ_1^{−1/2}e^{−(1−θ′)δ_A|b−b′|} [V-A7 §3.3, §4.4]. Schur gives
 G_Γ ≤ Γ_1·K_½,  K_½ := 4W_½γ_exp^{−1/2} + 4γ_1^{−1/2}S((1 − θ′)δ_A),
W_½ := the Schur walk count of WC(iv) at rate ½ε. [I: the s-rule acts on the (2.7) terms walk by walk with weights in [0, 1], CMP 116 p. 13, so absolute kernel bounds survive the truncation.]
3.6 (Q) statement [P given A7, A8, Balaban's chain (2.15)–(2.25) read pointwise, (Hα), G_Γ < ∞]. Q > 0, and for every cut bond b:
 c_−·I_n ≤ Γ_bb ≤ Λ·I_n,  c_− := (γ_1^N + ε_0)^{−1} ≥ 4/(5γ_1^N),  Λ := 2(1 + 4/(3γ_exp) + (16/(9γ_exp²))G_Γ²).
All constants depend on d, L, a, a_0, M, κ_1, α_0, α_1, α_5 only. None depends on k, g_k, the past couplings, the volume, Z_0, or the regular background U.
Alternative (complex reference, A8 7.1): c_− = 1/(2Γ_1″), Λ = 4/γ_exp hold for Γ_σ, the dominating covariance before (2.16). The route of 3.1–3.4 uses Balaban's σ = 0 real reference instead, because (2.23)–(2.25) are written for it; the X-coupling then enters Λ through G_Γ.

## 4. G3's argument with these inputs (task 3)

4.1 One bond [P given (2.2) and 3.6]. Put r = t = ε_1/g (r is the radius in B; t is the same number, named as in SOURCES_G3). Then (ε_1/g²)r^{n−1} = ε_1^{−1}t^{n+1}, and (2.2) gives
 |surface term of b| ≤ A_n ε_1^{−1} t^{n+1} e^{−t²/(2Λ)} · T_maj,  A_n := |S^{n−1}|(2πc_−)^{−n/2},  |S^{n−1}| = 2π^{n/2}/Γ(n/2).
With a = 0 (2.4), split e^{−t²/(2Λ)} = e^{−t²/(4Λ)}·e^{−t²/(4Λ)}. The maximum of t^{n+1}e^{−t²/(4Λ)} is at t² = 2Λ(n+1):
 D_n := (2Λ(n+1))^{(n+1)/2} e^{−(n+1)/2}.
So the one-bond factor is U(g)·T_maj with
 U(g) := A_n D_n ε_1^{−1} e^{−ε_1²/(4Λg²)}.
U increases in g; sup_{(0,γ]}U = U(γ). No negative power of g survives. (SOURCES_G3 had 8Λ in the exponent because it carried a ≤ 1/(4Λ); with a = 0 the rate is 1/(4Λ).)
4.2 Bond sum [P given (2.30) [V], (2.28), (2.31) [V]; G3_VERIFY route]. The derivative of the cut is a sum over the cut bonds of T, at most n_b ≤ c_d|Y_0| + |P| of them. (2.30) gives |Y_i| ≤ 24M^4 d_k(Y_i) for each component Y_i of Y_0. Put η := δκ/(24c_dM^4) ≤ 1. Then n_b ≤ η^{−1}e^{ηn_b} ≤ η^{−1}e^{δκΣ_i d_k(Y_i)}e^{|P|}, so
 |(∂_{g_k} on the cut) T| ≤ c_1′ U(g_k) e^{δκΣ_i d_k(Y_i)} e^{|P|} T_maj,  c_1′ := 24c_dM^4/(δκ).
The factor e^{δκΣd_k(Y_i)} is paid from the (1 − 4δ)κ decay of (2.28) (one more δ, as in GGAIN §4) [R, GGAIN §4]. The factor e^{|P|} is paid from the (2.31) factor e^{−(1/10)γ_2(ε_1²/g_k²)|P|}, under (Hγ) (1/20)γ_2ε_1²/γ² ≥ 4κ + 1, a one-unit strengthening of Balaban's (1/20)γ_2ε_1²/γ² ≥ 4κ [P given the (2.31) structure, V]. The sums over D, P, Z_0 and the Mayer step (2.29)–(2.32) then run unchanged on T_maj.
4.3 Polymer sum and S_χ [P given 4.1–4.2 and the Kotecký–Preiss derivative step, GGAIN §4.4(ii) (= N3) [R]]. The cut contributes to S_0 the additive term
 S_χ = c_2 c_1′ A_n D_n ε_1^{−1} e^{−ε_1²/(4Λγ²)}
 = c_2 · (24c_dM^4/(δκ)) · (2π^{n/2}/Γ(n/2)) · (2πc_−)^{−n/2} · (2Λ(n+1))^{(n+1)/2}e^{−(n+1)/2} · ε_1^{−1} e^{−ε_1²/(4Λγ²)},
with c_2 the KP constant of GGAIN §4.4(ii), n = N² − 1, and c_−, Λ from 3.6. Using c_− ≥ 4/(5γ_1^N): (2πc_−)^{−n/2} ≤ (5γ_1^N/(8π))^{n/2}. For every p > 0, S_χ ≤ C_p γ^p, C_p = C_p(ε_1, n, Λ, c_−, M, δ, κ, c_2).
4.4 Uniformity [P, item by item].
 - g_k: U(g) ≤ U(γ) on (0, γ].
 - k (hence j): every constant in S_χ is one of n, ε_1, c_d, M, δ, κ, c_2, γ_2 (fixed) or c_−, Λ (3.6: functions of d, L, a, a_0, M, κ_1, α_0, α_1, α_5). None has a k index. The measure dμ_{C^{(k)}} is g-free (SOURCES_Q 5.2(iii)); its spectral constants are k-uniform by A7, A8.
 - The past h: the step uses the past only through the input sup E_0 (SOURCES_T2_H0 4.1, VERIFY 2.15) and the background U. α_4 (hence α_5) comes from (2.20), which uses E_0 only. U enters c_−, Λ only through regularity. So S_χ is past-free given H0 §4's off-trajectory input bound (B7's slot definition, already in T1).
 - Volume, Z_0, X: c_−, Λ, γ_1^N, Γ_1, G_Γ are Schur/form constants on V_red(Λ) with volume-free lattice sums; the bound is per term, per polymer.
 - Regular U, complex (U_c, J): the complex case enters only through (2.15)–(2.17), which convert it to the real σ = 0 reference with R_1, R_2 = H_0 − H_σ, R_3 absorbed in α_5 [V-A8 verify note; row A2]. So Q, c_−, Λ are those of the real reference for every point of the analyticity domain.
4.5 Lemma G3 (final form) [P given the list in §6]. For every step k, g_k ∈ (0, γ], every past h ∈ ]0, γ]^k, every volume, every regular background, and every term T of (2.14):
 |(∂_{g_k} on the cut) T| ≤ c_1′ U(g_k) e^{δκΣ_i d_k(Y_i)} e^{|P|} T_maj,
and the cut adds S_χ (4.3) to S_0 of GGAIN §6.1, uniformly in g_k, k, h, X, the volume, and U.
[num, python -I, no file kept] 300 random instances (dim X = 6, dim B = 5, non-symmetric K_0 = A + 0.05·noise, α_5 = 0.01): min eigenvalue of (Q^{−1})_BB − H_0^{−1} = +2.1·10^{−5} ≥ 0 (3.4), and 2Λ_0 − ‖Q^{−1}‖ ≥ 3.35 > 0 whenever pΛ_0 ≤ ½ (3.3).

## 5. What (H-hist) receives; B13 status (task 4)

5.1 Delivered to GGAIN / (H-hist) [P given §6 list]. C_β = C_Π(S_0^{GGAIN} + S_χ) with S_χ of 4.3, uniform in j, the past, the volume, and regular U. The "given Lemma G3" proviso of GGAIN Theorem B2-unif is removed relative to the §6 list. The input "(Q)/c_−", listed as open in B13 and in GGAIN_LF 6.3 / HHIST2 R3, is now: c_− = (γ_1^N + ε_0)^{−1} ≥ 4/(5γ_1^N), Λ = 2(1 + 4/(3γ_exp) + (16/(9γ_exp²))G_Γ²), with the one-bond-fixed form a corollary (2.4).
5.2 B13 status. It does NOT change grade. B13 stays "reduced [R] (small- and large-field halves)". What changes inside it:
 - Small-field half: the sub-item G3 ⇐ (Q) moves from "(Q)/c_− open" to "G3 PROVED relative to A7 (verified), A8 (verified), Balaban's pointwise chain (2.15)–(2.25), G_Γ, (Hα), (Hγ), and the KP derivative step". The other open small-field inputs remain: (M_r) (= A17 margin, C9 construction change), the KP derivative step (N3), and Theorem SM ⇐ A10.
 - Large-field half: GGAIN_LF 6.3 needs (Q) too. 3.6 supplies c_−, Λ for the same Gaussian. But its surfaces are level sets of the link variable |V_jV_Z^{−1} − 1|, not round spheres in B(b); the coarea Jacobian on them is not done here (2.6). CMP 102 (189) and the (M-B) bookkeeping also remain. So the large-field half keeps "(Q)/c_−" only in the weakened form "(Q) supplied; Jacobian of the large-field level sets open".
5.3 HHIST2. R3 (the ε′ half of (H-hist2)) loses its "open c_−"; it keeps the other B13 inputs. Route 2(a) needs no second-order G3, so nothing else changes there.
5.4 A5. The A5 rewrite "[reduced, residue G3 (N2)]" becomes "[reduced; N2 = G3 PROVED relative to A7, A8, Balaban's (2.15)–(2.25) chain, G_Γ, (Hα), (Hγ), N3 (KP step)]"; N3, N5, N6, N8, B7, A15 as before (SOURCES_T2_H0_VERIFY 5.4).

## 6. Verdict and ledger (task 5)

6.1 Verdict: G3 PROVED relative to:
 (i) A7 (verified, corrected two-sided form): |⟨B̃, A_expB̃⟩| ≤ γ_1^N‖B̃‖², γ_1^N = ‖C‖²·max{K_{ext,1} − a + c_J + 2c_𝒢, a + c_J}; and, for G_Γ, the decay/Schur constant Γ_1 = 2B_AS(δ_A) and the (2.7) series kernel (A7 §3.3, §4.1).
 (ii) A8 (verified, with the e^{−ε″M/8} fix): H_0 ≥ ¾γ_exp; ‖K_0 − A_Z‖ ≤ ε_0 ≤ ¼γ_exp; S_C ≤ H_0^{−1}, D_S ≤ δ_S; |dμ_{C_σ}| = r_σdμ_{Γ_σ}; R_2 read as H_0 − H_σ.
 (iii) Balaban's chain (2.15)–(2.25), read as pointwise exponent bounds (R_1, R_3, V_k (2.20), (2.21), (2.22)); this includes row A2 for R_2, R_3 [R].
 (iv) G_Γ = ‖Γ_k(Z_0, 0)‖ < ∞: Balaban's own (2.24)–(2.25) input [R]; explicit bound Γ_1K_½ (3.5) [I on the s-rule acting walk by walk on (2.7)].
 (v) (Hα) (α_5 + G_Γ²δ_S)Λ_0 ≤ ½ and (Hγ) (1/20)γ_2ε_1²/γ² ≥ 4κ + 1: smallness conditions inside Balaban's hierarchy (α_5 small, M large after κ_1, γ small after γ_2) [I on the order of constants].
 (vi) The Kotecký–Preiss derivative step, GGAIN §4.4(ii) (N3) [R], and the (2.28) decay with one more δ (GGAIN §4) [R].
 (vii) The [I] item carried from SOURCES_Q: the pointwise bounds hold on the closed small-field set, hence on the sphere |B(b)| = ε_1/g_k.
Not blocked. No new obstruction. This file is unverified.
6.2 Ledger.
 [V] (via cited files) CMP 116 (2.3), (2.5), (2.7), (2.14)–(2.26), (2.28), (2.30), (2.31); CMP 109 (2.9), (2.12).
 [V-A7] Lemma N two-sided form; Γ_1; §3.3 series kernel; §4.1 real-s transfer; §4.4 WC(iv) on Λ.
 [V-A8] Lemma P(a)–(c); §6.3–6.4 (H_0, S_C, M_0, the ≥ 0 extra term); Lemma D with e^{−ε″M/8}; R_2 = H_0 − H_σ.
 [P] 2.3 surface bound with T_maj; 2.4 one-bond-fixed = marginal (Schur complement; a = 0); 3.1–3.4 Q, Λ, c_−; 4.1 U(g) with rate 1/(4Λ); 4.2 bond sum with c_1′ = 24c_dM^4/(δκ) and (Hγ); 4.3 S_χ explicit; 4.4 uniformity; 3.3 correction to SOURCES_Q 4.3 (G_Γ enters Λ).
 [num] 3.3–3.4 on random matrices.
 [R] (iii), (iv) existence, (vi); B7 slot definition (for the past, via H0 §4).
 [I] 3.5 explicit G_Γ; (v) constant order; (vii); 2.6 large-field level-set Jacobian (open).
 Open: the large-field level-set Jacobian (GGAIN_LF 6.3); numerical values of K_{ext,1}, B_A, W_½, c_2; (M_r) and N3 (outside G3).
6.3 Proposed ledger text (not written into TRUST_LEDGER): A5: "[reduced; residue N2 = G3 PROVED rel. A7, A8, CMP 116 (2.15)–(2.25) pointwise chain, G_Γ, (Hα), (Hγ), KP step N3: SOURCES_G3_N2, unverified]". B13: grade unchanged (reduced); "(Q)/c_− supplied (SOURCES_G3_N2 §3); small-field G3 proved relative to listed inputs; large-field level-set Jacobian open".

Corrections after verification (SOURCES_G3_N2_VERIFY, 2026-10-28): the B-block of Q_0^{−1} is H_0^{−1} + H_0^{−1}ΓΓ*H_0^{−1} (equals C_0 + C_0ΓΓ*C_0 only for symmetric C_0); (Hα) is stronger than Balaban's α_5‖C^{(k)}‖ < ½ and needs G_Γ to grow slower than e^{ε″M/8} — OPEN [I]; the e^{|P|} payment must come from the fifth M^{−4}|Z_0∖Y_0| factor via (Hγ) (the four others are spent in (2.31), (2.33), (2.34)), which adds a second γ-smallness condition: (1/20)x − 4M^4e^{−x/20} ≥ 0 at x = γ_2ε_1²/g_k²; uniformity in the past goes through E_0, which H0 §4 gives as REDUCED (N6, N7 = B7, N9 = A15), not proved; input list adds the extra γ condition, N6, N9, (M_r)/C9 (closed sphere = boundary of the open (1.34) domain), and dominated differentiation (H0 N3). Numpy: 2000 instances, 0 failures.
