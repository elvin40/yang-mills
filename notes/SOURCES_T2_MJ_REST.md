# SOURCES_T2_MJ_REST — the two residues of the (M_j) reduction: BETA_FP_M Prop. 4.4 region 1, and the neutral sector

Date: 2026-10-28. DERIVE. Sections appended one at a time.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not opened.
Read: SOURCES_T2_S123.md §1–§7 (all); SOURCES_T2_S123_VERIFY.md l. 25–35, 115–172; BETA_FP_M.md §3–§6; BETA_FP_H.md l. 1–95; SOURCES_T2_GAPRIME2.md header + VERIFY grades; SOURCES_T2_I3.md header + VERIFY verdicts; KAPPA_BOUNDED.md l. 1–45; U3_LEMMA51.md Prop. 2.2 (l. 38–48); numerics/t2_s123_gap2d.py, t2_s123_phys2d.py.
No existing file edited. New script: numerics/t2_mjrest_neutral.py (+ JSON).
Tags: [P] proved here; [R] reduced to a named input; [I] inference or convention reading not checked line by line; [V] checked numerically in this session (stated how); [N] numerical evidence only.

Inputs taken as given (status per the brief and the VERIFY files): (G_A′) [P+V, SOURCES_T2_GAPRIME2 + VERIFY]; (I3) [P+V, SOURCES_T2_I3 + VERIFY]; S123 Lemmas 1.1–1.4, Prop. 2.1, Thms 3.3, 3.4, 4.3, Lemma 4.2 (ER), Lemma 5.2, Props. 5.3–5.6 [P+V in SOURCES_T2_S123_VERIFY]; BETA_FP_M Lemma 4.1 [P].

## Plan
1. The two targets, quoted.
2. Task A, step 1: a new split of log|x| that replaces the "region 1 / region 2" split. Three pieces: a gapped piece F_s (shift s = |f|^a, a ∈ (2/3, 1)), the N–O window piece g̃_μ (= II, already done), and a localized remainder ψ (bounded directly).
3. Task A, step 2: Lemma A, the expansion of the gapped piece at shift σ ≫ |f|, with an exact 2-gon trace identity and an approximate Moyal inverse.
4. Task A, step 3: Theorem (charged-sector (M_j)); what it replaces in BETA_FP_M Prop. 4.4.
5. Task B: the neutral sector; zero modes; Lemma N.
6. Numerical check of the neutral fibre spectrum.
7. Conclusion and ledger.

## 1. The two targets, quoted

Target (a). BETA_FP_M Prop. 4.4 [argued]: "I(f) − I(0) = n_2 d_j f² + O(ε|f|³ log(1/|f|))." Its "Argument": "Region 1 (phase space |K|² ≥ R′|f|, R′ chosen so that 𝔨_{t,0} ≥ 2Rμ + C|f| there): ℓ′(x) = 1/x on this part of the spectrum, so the integrand is BETA_FP_H's Moyal-expanded Tr[𝒦_t^{−1}V]; its f² term is the region-1 part of (2.2) … Not written: the magnetic phase-space localization that makes 'region 1/region 2' an operator statement."
S123 §7.3 made region 2 an operator statement (Lemma 7.2, spectral cut χ_W, [P+V]) and left: "the f² coefficient of ∫_0^1 dt τ(G_f(𝒦_t)V), G_f(x) := ℓ′(x)(1 − χ_W(x)), equals the formal d_j of (1.1) up to o(f²). G_f is smooth on spec 𝒦_t but its derivatives grow like |f|^{−k} … Prop. 4.4 stays [argued]." S123_VERIFY claim 26 adds: "region 1 here is a spectral cut (spectrum ≥ Rμ), while the formal d_j of KAPPA (1.1) is a per-momentum integral over all K. Matching the two at order f² is the unwritten step."
So "region 1" is a range of momentum (|K|² ≥ R′|f|) in BETA_FP_M, and a range of spectrum (≥ Rμ, μ = 2C_1|f|) in S123. It is not a range of flux. The inequality needed there is not an inequality: it is an asymptotic identity, "f²-coefficient of a spectrally localized trace = per-momentum formal integral, error o(f²)".

Target (b). S123 §7.2, "Neutral sector [I]": "τ log is a per-momentum integral with an integrable log|K|² singularity, and its f² coefficient is obtained by differentiating under the integral." S123_VERIFY l. 30: the lower bound 𝒦^{neu}_t(f) ≥ cos f·𝔨^{neu}_t is [P]; "the rest of the remark … is [I]: it needs a dominated-convergence bound near K = 0 that S123 does not write." S123_VERIFY claim 25 adds this item to the list of what (M_j) is reduced to.

What I do. I do not repair the χ_W split. I replace it by a split in which every piece is either (i) gapped at a shift σ ≥ |f|^a with a < 1, so that f/σ → 0 and a Moyal expansion has a small parameter, or (ii) small in absolute value, o(f²), with no expansion. This removes the |f|^{−k} derivative growth. The N–O window piece is the same II as in S123 Prop. 5.5. Lemma 7.2 of S123 is then not needed.

## 2. Task A, step 1: a three-piece split of log|x|

Setting. Fixed j ≥ 1, L odd ≥ 3, |f| ≤ f_*. Charged block (both charges ±e together), with the per-cell trace τ of S123 §1.2. Notation of S123: μ := 2C_1|f|, the cutoff χ and R of BETA_FP_M §4.3, g̃(x) := [log|x| − log(x + μ)]χ(x/μ), ℓ := log|·| − g̃ (smooth on [−μ/2, ∞), ℓ = log on [2Rμ, ∞), |ℓ′| ≤ 2C_R/μ). For a function X put Φ_X(f) := τX(𝒦_1(f)) − τX(𝒦_0(f)). Then δΓ^{ch}_j(f) = −½Φ_{log|·|}(f) (S123 Cor. 7.1 proof, per sector).
Choices. a ∈ (2/3, 1) fixed (a = 3/4 below), s := |f|^a, N := 4. For |f| small: s ≥ 8μ and s ≥ |f|.

Lemma 2.1 (partial fractions) [P]. For s > 0, x > −s: 1/x − Σ_{k=1}^N c_k(x + ks)^{−1} = N!s^N/∏_{k=0}^N(x + ks), with c_k := (−1)^{k+1}C(N, k) and Σ_k c_k = 1.
Proof. With y = x/s, N!/∏_{k=0}^N(y + k) = Σ_{k=0}^N r_k/(y + k), r_k = N!/∏_{i≠k}(i − k) = (−1)^kC(N, k). Divide by s; move the k = 0 term. Σc_k = 1 − Σ_k(−1)^kC(N, k) = 1. ∎

Definitions. F_s(x) := Σ_{k=1}^N c_k log(x + ks) (analytic on Re x > −s). For f ≠ 0, on [−μ/2, ∞): log|x| = F_s(x) + g̃(x) + ψ(x), ψ := ℓ − F_s. For f = 0, on (0, ∞): log x = F_s(x) + ψ⁰(x), ψ⁰ := log − F_s. So, with the same s on both sides,
  δΓ^{ch}(f) − δΓ^{ch}(0) = −½[Φ_{F_s}(f) − Φ_{F_s}(0)] − ½Φ_{g̃}(f) − ½[Φ_ψ(f) − Φ_{ψ⁰}(0)].   (2.1)
The middle term is exactly II(f) of S123 Prop. 5.5: |Φ_{g̃}(f)| = 2|II(f)| ≤ C|f|³ log(1/|f|) [P given (G_A′) via S123 Prop. 5.6 and Lemma 5.8].

IDS bound (2.2) [P given S123 Thm 3.4, Lemma 5.2, BETA_FP_M Lemma 4.1]. For t ∈ [0, 1] and −μ/2 ≤ λ with E := 2(λ + C_1′|f|)/c_* ≤ 1: N_t(λ) ≤ C_4(λ + C_1′|f|)², C_4 := 4C_d/c_*². Hence N_t(λ) ≤ C_5λ² for all λ ≥ s, C_5 := max(4C_4, τ(1)).
Proof. Thm 3.4: 𝒦_t ≥ (c_*/2)𝔏_f − C_1′|f|. Lemma 4.1 (X ≤ Y ⇒ N_Y ≤ N_X): N_t(λ) ≤ τ1_{(−∞,E]}(𝔏_f ⊗ 1_4) ≤ C_dE² (Lemma 5.2). For s ≤ λ ≤ c_*/2 − C_1′|f| use λ ≥ s ≥ C_1′|f| for small f; above that use N_t ≤ τ(1) and λ² bounded below. ∎

Lemma 2.2 (the remainder ψ is small without expansion) [P given Thm 3.3, Thm 4.3(a), (2.2), (F2), (F3)]. For small f: |Φ_ψ(f)| ≤ C(s³ + |f|³) and |Φ_{ψ⁰}(0)| ≤ Cs³.
Proof. (i) Positivity bound. For h real and continuous on spec 𝒦_t: |τ(h(𝒦_t)V)| ≤ C_3τ(|h|(𝒦_t)[(𝒦_t + μ)² + f²]). Write h = h_+ − h_−, τ(h_±V) = τ(h_±^{1/2}Vh_±^{1/2}), conjugate the form bound ±V ≤ C_3[(𝒦_t + μ)² + f²] of Thm 4.3(a) by h_±^{1/2}(𝒦_t), and use positivity of τ.
(ii) Size of ψ′. On [−μ/2, 2Rμ]: |ψ′| ≤ |ℓ′| + |F_s′| ≤ 2C_R/μ + 2Σ|c_k|/s ≤ C/μ (x + ks ≥ s/2). On (2Rμ, ∞), ℓ = log, so by Lemma 2.1 ψ′(x) = N!s^N/∏_{k=0}^N(x + ks) ∈ (0, min(1/x, N!s^N x^{−N−1})].
(iii) f ≠ 0. Φ_ψ = ∫_0^1 dt τ(ψ′(𝒦_t)V) (ψ is C¹ near spec 𝒦_t ⊂ [−μ/2, K_*], Thm 3.3; cited formula as in BETA_FP_M §4.3). By (i), |Φ_ψ| ≤ C_3 sup_t ∫|ψ′|(λ)[(λ + μ)² + f²] dN_t(λ). Range [−μ/2, 2Rμ]: ≤ (C/μ)·Cμ²·N_t(2Rμ) ≤ Cμ·C_4(2Rμ + C_1′|f|)² = O(|f|³). Range (2Rμ, s]: (λ + μ)² + f² ≤ Cλ² there, so ≤ C∫λ dN_t ≤ Cs N_t(s) ≤ Cs³ by (2.2). Range (s, K_*]: ≤ C s^N∫_{(s,K_*]} λ^{1−N} dN_t(λ); Stieltjes integration by parts with N_t ≤ C_5λ² gives ∫ ≤ K_*^{1−N}τ(1) + (N − 1)C_5∫_s^∞ λ^{2−N}dλ ≤ C s^{3−N} (N = 4). So ≤ Cs³.
(iv) f = 0. All operators are convolutions; 𝔨_t(K) ≥ c_*l(K) > 0 for K ≠ 0 (F3), and Φ_{ψ⁰}(0) = ∫dK/(2π)⁴ ∫_0^1 dt tr[ψ⁰′(𝔨_t(K))δ̂(K)] (pointwise in K ≠ 0). ψ⁰′ = N!s^N/∏(x + ks) is positive and decreasing, so ‖ψ⁰′(𝔨_t(K))‖ ≤ min(1/(c_*l), N!s^N(c_*l)^{−N−1}); ‖δ̂‖ ≤ Cl² (F2). The integrand is ≤ Cl·min(1, (s/l)^N), and ∫_{BZ} l·min(1, (s/l)^4) dK ≤ C(s³ + s⁴·s^{−1}) = O(s³) (l ≍ |K|², d = 4). ∎

Why this works where the χ_W split did not. ψ′ is ≈ 1/x only on [2Rμ, s]; phase space there has τ-volume O(s²) (4D count (2.2)), and V costs O(s²) by (S3), so the total is O(s³) = o(f²) once a > 2/3. No f-expansion of ψ(𝒦_t) is needed. The piece F_s, which carries the f²-coefficient, has derivatives of size s^{−k} = |f|^{−ak}, and |f|·s^{−1} → 0. That is the small parameter that the χ_W split lacked.

## 3. Task A, step 2: Lemma A, the gapped piece at shift σ ≫ |f|

By Lemma 2.1 and d/dt τ log(X + tV) = τ((X + tV)^{−1}V) (gapped, cited as in S123): Φ_{F_s}(f) = Σ_k c_k T(f, ks), with
  T(f, σ) := ∫_0^1 dt τ[(𝒦_t(f) + σ)^{−1}V(f)].

### 3.1 Objects
By S123 Prop. 2.1 and (F5): k_t(f) = k^{[2]} + ρ_k, k^{[2]} := Σ_{j≤2} f^j k^{(j)} (k^{(0)} := k_t(0)), and v_f = v^{[2]} + ρ_V, v^{[2]} := Σ_{n≤2} f^n v^{(n)} (v^{(0)} = δ). All k^{(j)}, v^{(n)} are admissible convolution kernels with symbols 𝔨_{t,j}, v̂^{(n)} = δσ_j^{(n)}; ‖ρ_k‖_{(0)}, ‖ρ_V‖_{(0)} ≤ C|f|³, uniformly in t.
Moyal pieces. P_p(a, b)(x, y) := Σ_z a(x, z)b(z, y)(ie/2)^p((x − z)∧(z − y))^p/p!. Then a ⋆_f b = Σ_{p<P} f^pP_p(a, b) + Rem_P(a, b), ‖Rem_P(a, b)‖_{(0)} ≤ (|e||f|/2)^P(P!)^{−1}‖a‖_{(P)}‖b‖_{(P)} (|e^{iα} − Σ_{p<P}(iα)^p/p!| ≤ |α|^P/P!, |w∧u| ≤ |w||u|). For convolution kernels P̂_p(a, b) = Σ_{|α|=|β|=p} γ_{αβ}∂^αâ ∂^βb̂ with constants γ_{αβ} (a factor w becomes i∂_K, as in S123 Lemma 1.1(e)). P_p(σ1, b) = 0 for p ≥ 1.
Formal inverse at shift σ. b̂_0 := (𝔨_{t,0} + σ)^{−1}; for 1 ≤ m ≤ M, b̂_m := −b̂_0 Σ_{j+q+p=m, q<m} P̂_p(𝔨_{t,j}, b̂_q). So Σ_{j+q+p=n} P̂_p(𝔨_{t,j} + σδ_{j0}, b̂_q) = δ_{n0} for n ≤ M. At σ = 0 these are the Moyal inverse coefficients b_{t,m} of KAPPA (1.1) [I: convention identification, U3_LEMMA51 (3.1) = S123 Lemma 1.1(e)].

### 3.2 Symbol and kernel bounds
(K1) [P given (F1)–(F3), admissibility]. For σ ∈ (0, 1], real K, all t, all multi-indices α: |∂^α b̂_m(K)| ≤ C_{m,α}(l(K) + σ)^{−1−m−|α|/2}.
Proof. Give 𝔨_{t,j} the degree 2 − 2j and b̂_m the degree −2 − 2m; each ∂_K lowers the degree by 1. Envelopes: ‖(𝔨_{t,0} + σ)^{−1}‖ ≤ (c_*l + σ)^{−1} (F3); |𝔨_{t,0}| ≤ Cl, |∂𝔨_{t,0}| ≤ Cl^{1/2} (even, order 2 at 0, analytic), |∂^β𝔨_{t,j}| ≤ C for all other (j, β). Since l + σ ≤ 17, every bounded quantity is ≤ C(l + σ)^{(2−2j−|β|)/2} whenever that exponent is ≤ 0. So |∂^β𝔨_{t,j}| ≤ C(l + σ)^{(2−2j−|β|)/2} for all (j, β). Induction on m and |α|: ∂^αb̂_0 is a sum of products b̂_0(∂^{β_1}𝔨_{t,0})b̂_0⋯b̂_0, of total degree −2 − |α|. In the recursion each term b̂_0P̂_p(𝔨_{t,j}, b̂_q) has degree −2 + (2 − 2j − p) + (−2 − 2q − p) = −2 − 2m. Leibniz gives the derivatives. ∎
(K2) [P from (K1)]. For each P ≥ 0: ‖b_m‖_{(P)} ≤ C σ^{−m−P/2−3/2}.
Proof. On each offset lattice, (1 + |u|)^{P+5}|b_m(u)| ≤ C Σ_{|γ|≤P+5}‖∂^γb̃_m‖_{L¹(BZ)} (b̃ = e^{iK·s}b̂, periodic; integrate by parts). By (K1), ‖∂^γb̃_m‖_{L¹} ≤ C∫_{BZ}(l + σ)^{−1−m−|γ|/2}dK ≤ Cσ^{1−m−|γ|/2} when 1 + m + |γ|/2 > 2, and the largest |γ| = P + 5 dominates. Sum over u with Σ_u(1 + |u|)^{−5} < ∞ (d = 4). ∎

### 3.3 Lemma A
Lemma A [P given S123 Prop. 2.1, Thm 3.3, Lemma 4.2 (ER), Lemmas 1.1, 1.3, 1.4, (F1)–(F5)]. Fix a ∈ (0, 1) and an integer M > (1 + 3a)/(1 − a). For |f| small, t-uniformly, and every σ with |f|^a ≤ σ ≤ N|f|^a:
  T(f, σ) = c_0(σ) + f c_1(σ) + f²c_2(σ) + O(|f|³ log(1/|f|) + |f|^{3−a} + |f|^{M+1−a(M+3)}),
  c_p(σ) := Σ_{m+n=p} ∫_0^1 dt ∫_{BZ} dK/(2π)⁴ tr[b̂_m(K)v̂^{(n)}(K)],   c_0(σ) = T(0, σ).
The error exponents exceed 2. For a = 3/4, M = 14: every error is O(|f|^{9/4}).
