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

Proof. Fix t. Put R := (𝒦_t(f) + σ)^{−1}, R_0 := (W·k^{[2]} + σ)^{−1}, B := Σ_{m≤M} f^m b_m, R_app := W·B.
Step 0 (gaps). 𝒦_t ≥ −C_1|f| (Thm 3.3) and ‖W·ρ_k‖ ≤ C|f|³. For small f, σ ≥ |f|^a ≥ 8μ, so 𝒦_t + σ ≥ σ/2 and W·k^{[2]} + σ ≥ σ/2; ‖R‖, ‖R_0‖ ≤ 2/σ.
Step 1 (remainder of V). |τ(R·W·ρ_V)| ≤ τ(1)‖R‖‖ρ_V‖_{(0)} ≤ C|f|³/σ ≤ C|f|^{3−a}.
Step 2 (remainder of 𝒦). First, ‖R_0·W·v^{[2]}‖ ≤ C. Lemma 1.3 (order 4, Hermitian) gives δ = Σ_{|β|=|γ|=2}(∂^β)^†h_{βγ}∂^γ, and by Lemma 1.1 (as in the proof of Lemma 1.4(c)) W·δ = Σ(∇^β)^*(W·h_{βγ})∇^γ − fW·c_1 − f²W·r with ‖c_1‖_{(0)}, ‖r‖_{(0)} ≤ C. Lemma 1.4(b) and (ER) applied to W·k^{[2]} (its proof uses only 𝒦 + μ = W·k_t(0) + B′ with ‖B′‖ ≤ C|f|, which still holds) give
  ‖∇^βR_0‖² ≤ C‖R_0(𝔏_f + |f|)²R_0‖ ≤ C sup_{x ≥ −μ/2}[(x + μ)² + f²]/(x + σ)² ≤ C   (σ ≥ 8μ, σ ≥ |f|).
So ‖R_0Σ(∇^β)^*(W·h)∇^γ‖ ≤ C. The other terms are crude: |f|‖R_0‖‖c_1‖ + f²‖R_0‖‖r‖ + |f|‖R_0‖‖v^{(1)}‖ + f²‖R_0‖‖v^{(2)}‖ ≤ C(|f| + f²)/σ ≤ C. Then R − R_0 = −R(W·ρ_k)R_0, and
  |τ((R − R_0)W·v^{[2]})| ≤ τ(1)‖R‖‖ρ_k‖_{(0)}‖R_0W·v^{[2]}‖ ≤ C|f|³/σ ≤ C|f|^{3−a}.
(The sharp bound on ‖R_0W·v^{[2]}‖ is needed: the crude ‖R_0‖‖V‖ ≤ C/σ would give |f|³/σ², which is o(f²) only for a < 1/2.)
Step 3 (approximate inverse). Put E := (k^{[2]} + σ) ⋆_f B − 1, so (W·k^{[2]} + σ)R_app = 1 + W·E and R_0 = R_app − R_0(W·E). Expand each product f^{j+m}k^{(j)} ⋆_f b_m with j + m ≤ M to Moyal order M − j − m, with remainder Rem_{M+1−j−m}; keep the products with j + m > M whole. The expanded terms add up to Σ_{n≤M} f^n Σ_{j+q+p=n}P_p(k^{(j)} + σδ_{j0}, b_q) = 1 (§3.1). So
  E = Σ_{j+m≤M} f^{j+m}Rem_{M+1−j−m}(k^{(j)}, b_m) + Σ_{j+m>M} f^{j+m} k^{(j)} ⋆_f b_m.
With P := M + 1 − j − m ≥ 1 and (K2): the first sum is ≤ C|f|^{M+1}σ^{−m−P/2−3/2} ≤ C|f|^{M+1}σ^{−M−2} (m + P/2 ≤ (M + 1 + m)/2 ≤ M + 1/2). The second is ≤ C|f|^{j+m}σ^{−m−3/2} ≤ C|f|^{M+1}σ^{−M−3/2} (j + m ≥ M + 1, m ≤ M, |f|, σ ≤ 1). The k^{(j)} have all moments finite (admissible, rate θ_j fixed). So ‖E‖_{(0)} ≤ C|f|^{M+1}σ^{−M−2}, and
  |τ((R_0 − R_app)W·v^{[2]})| ≤ τ(1)‖R_0‖‖E‖_{(0)}‖v^{[2]}‖_{(0)} ≤ C|f|^{M+1}σ^{−M−3} ≤ C|f|^{M+1−a(M+3)}.
This crude Schur bound loses powers of σ. It costs nothing, because M is free and |f|/σ ≤ |f|^{1−a} → 0.
Step 4 (exact 2-gon identity). For convolution kernels b, v: τ(W·(b ⋆_f v)) = Σ_{x∈cell}Σ_z tr[b(x − z)v(z − x)]e^{i(ef/2)(x−z)∧(z−x)} = ∫_{BZ} dK/(2π)⁴ tr[b̂(K)v̂(K)], because (x − z)∧(z − x) = 0. This is the observation of KAPPA §1.2 (BETA_FP_H_VERIFY §3), here used as an exact identity at finite f. Hence
  τ(R_app·W·v^{[2]}) = Σ_{m≤M, n≤2} f^{m+n}∫dK/(2π)⁴ tr[b̂_m v̂^{(n)}].
Terms with p := m + n ≥ 3: |v̂^{(n)}| ≤ Cl^{2−n} ((F2) for n = 0, (F4) for n = 1, admissible for n = 2), so by (K1) |tr[b̂_mv̂^{(n)}]| ≤ C(l + σ)^{−1−m}l^{2−n} ≤ C(l + σ)^{1−p}, and ∫_{BZ}(l + σ)^{1−p}dK ≤ C log(1/σ) for p = 3, ≤ Cσ^{3−p} for p ≥ 4. Their sum is ≤ C|f|³ log(1/|f|) + CΣ_{p≥4}|f|^{p−a(p−3)} = O(|f|³ log(1/|f|)).
At f = 0, R = W·b_0 exactly and Step 4 gives T(0, σ) = c_0(σ). Sum Steps 1–4 and integrate over t. ∎

Lemma 3.1 (the σ → 0 limit of the f² coefficient) [P given (K1) at σ ≥ 0, (F2), (F4)]. c_2(σ) → c_2(0) := ∫dt∫dK/(2π)⁴ tr[b̂_{t,2}δ̂ + b̂_{t,1}v̂^{(1)} + b̂_{t,0}v̂^{(2)}] as σ ↓ 0, and c_2(0) summed over the two charged sectors is the charged part of −2n_2d_j in KAPPA (1.1).
Proof. (K1) holds uniformly for σ ∈ [0, 1] (the proof never used σ > 0), so each integrand is ≤ C(l + σ)^{−1}l^0 ≤ Cl^{−1}, integrable in d = 4. For K ≠ 0, b̂_m is a polynomial in (𝔨_{t,0} + σ)^{−1} and derivatives of 𝔨_{t,j}, continuous in σ ≥ 0. Dominated convergence. The identification with KAPPA (1.1) is by definition of d_j, up to the convention reading [I] of §3.1. ∎

## 4. Task A, step 3: charged-sector (M_j), and what happens to Prop. 4.4

Lemma 4.1 (evenness) [P given (I3) covariance]. δΓ_j(f) = δΓ_j(−f), sector by sector up to the swap e ↔ −e.
Proof. The constant gauge transformation g = exp(iπσ_1/2) maps σ_3 to −σ_3, so it maps V_f to V_{−f} and the fine background at φ to the one at −φ. The Wilson action, Balaban's averaging (SOURCES_T2_I3 VERIFY verdict (4): covariance proved from the definition) and D_c are gauge covariant, so 𝒦_t(−f) = U𝒦_t(f)U^* with U = Ad_g applied at every link, a constant real orthogonal map on colour. U maps the charge e block onto the charge −e block and fixes the neutral block. τ is the per-cell sum of tr of diagonal blocks, so it is U-invariant. ∎

Theorem 4.2 (charged-sector (M_j)) [P given: (G_A′) (GAPRIME2), (I3) (SOURCES_T2_I3), S123 Prop. 2.1, Thms 3.3, 3.4, 4.3, Lemma 4.2, Lemma 5.2, Props. 5.3–5.6, Lemma 5.8, Lemmas 1.1, 1.3, 1.4, (F1)–(F5); BETA_FP_M Lemma 4.1; the [I] convention reading of §3.1]. Fix j ≥ 1, L odd ≥ 3. Then
  δΓ^{ch}_j(f) − δΓ^{ch}_j(0) = n_2 d_j^{ch} f² + O(|f|^{9/4}),   d_j^{ch} := −c_2^{ch}(0)/(2n_2),
with c_2^{ch}(0) the charged-sector part of the integral in KAPPA (1.1).
Proof. Take a = 3/4, s = |f|^{3/4}, N = 4, M = 14 in (2.1). The g̃ term is O(|f|³ log(1/|f|)) (S123 Prop. 5.5 with Prop. 5.6). The ψ terms are O(s³ + |f|³) = O(|f|^{9/4}) (Lemma 2.2). The F_s term is −½Σ_k c_k[T(f, ks) − T(0, ks)] = −½Σ_k c_k[f c_1(ks) + f²c_2(ks)] + O(|f|^{9/4}) (Lemma A; c_0 cancels against T(0, ·)). By Lemma 4.1 the left side of (2.1) is even in f, and s depends on |f| only; so averaging (2.1) at f and −f removes the c_1 terms: δΓ^{ch}(f) − δΓ^{ch}(0) = −½f²Σ_k c_k c_2(k|f|^{3/4}) + O(|f|^{9/4}). By Lemma 3.1 and Σc_k = 1, Σ_k c_k c_2(k|f|^{3/4}) = c_2(0) + o(1). ∎
Rate. The proof gives o(f²) with error O(|f|^{9/4}) + f²·|c_2(k|f|^{3/4}) − c_2(0)|. The second term has no rate from Lemma 3.1 as written (dominated convergence). A power count of the region l ≲ σ suggests O(σ log(1/σ)) [I, not needed]. KAPPA_BOUNDED Prop. 1.1 uses only the limit.

What this does to BETA_FP_M Prop. 4.4 and S123 §7.3.
- Region 1, as a statement. With ℓ = F_s + ψ, I(f) − I(0) = −½[Φ_ℓ(f) − Φ_{log}(0)] = −½[Φ_{F_s}(f) − Φ_{F_s}(0)] − ½[Φ_ψ(f) − Φ_{ψ⁰}(0)]. So the proof above gives Prop. 4.4 in the form I(f) − I(0) = n_2 d_j^{ch} f² + o(f²) (charged sector), at fixed j [P]. It does not give the rate O(|f|³ log(1/|f|)) of the printed statement; that rate is not used anywhere (BETA_FP_M Cor. 4.5 note; KAPPA Prop. 1.1).
- The "region 1/region 2" localization is no longer needed. S123 Lemma 7.2 (spectral region 2) is correct but not used. The "matching" step that S123_VERIFY claim 26 names (spectral cut vs per-momentum integral) is done by Step 4 of Lemma A: the per-cell trace of a product of two twisted convolution kernels has no phase, so the approximate-inverse part of τ(RV) equals a per-momentum integral exactly, at finite f.
- Where the work went. The |f|^{−k} growth of G_f is replaced by s^{−k} = |f|^{−3k/4}, paid by |f|^k from the Moyal expansion. The phase-space region l ≲ s, where no expansion is possible, is bounded in absolute value by Lemma 2.2. The N–O window is the old II.

## 5. Task B: the neutral sector

### 5.1 What (M_j) needs there
δΓ_j = δΓ^{ch} + δΓ^{neu} (block diagonal, S123 §1.1 [P+V]). (M_j) needs: δΓ^{neu}(f) − δΓ^{neu}(0) = n_2 d_j^{neu} f² + o(f²), with d_j^{neu} the neutral part of KAPPA (1.1). There is no N–O window here. So no lower bound beyond (N1) below is needed, and no window bound. What is needed is a dominated-convergence bound near K = 0 for the f-derivatives of tr log 𝔨^{neu}. That is the [I] of S123_VERIFY l. 30.
Objects (U3_LEMMA51 Prop. 2.2): in the neutral block every operator is a convolution; the averaging is f-independent; Δ^{neu}(φ) = Δ_0 − (1 − cos φ)Δ_{01} at the fine level, with 0 ≤ Δ_{01} ≤ Δ_0; the coarse Wilson block is Δ_W − (1 − cos f)Δ^c_{01}; D_cD_c^T is f-independent. Write 𝔨_t^{neu}(f; K) for the 4 × 4 symbol of 𝒦_t^{neu}(f) and l(K) = |K̂|².
(N1) [P, S123_VERIFY l. 30]. 𝔨_t^{neu}(f; K) ≥ cos f · c_* l(K) for |f| ≤ π/2.
(N2) [P, below]. For p ≥ 1 and |f| ≤ f_*: ±∂_f^p 𝔨_t^{neu}(f; K) ≤ C_p l(K).

Proof of (N2). Coarse Wilson part: ∂_f^p of −(1 − cos f)Δ̂^c_{01} is bounded by Δ̂^c_{01} ≤ Δ̂_W ≤ l ((F1): Δ̂_W + D̂_cD̂_c^† = l). D_cD_c^T: no f. Level-j part, by induction over the one-step recursion (S123 (I1)): Δ_i^{neu}(f) = S[A(f); Q̃], A(f) := Δ_{i−1}^{neu}(f_{i−1}) + DΠD^*, with Q̃, D, Π f-independent in the neutral block (Prop. 2.2(a)). Induction hypothesis: ±∂_f^qΔ_{i−1}^{neu} ≤ C_qΔ_{i−1}(0) for q ≥ 1, true at i = 0 (fine Wilson: ±∂^q of −(1 − cos φ)Δ_{01} ≤ Δ_{01} ≤ Δ_0). Put A_0 := A(0). Then ±A^{(q)} ≤ C_qA_0 and A(f) ≥ ½A_0 for small f. Write the bordered matrix 𝔅(f) = [[A(f), Q̃^†], [Q̃, 0]], 𝔅^{−1} = [[G, H], [H^†, −S]] (G = constrained Green operator on ker Q̃, H = minimizer map, S = Δ_i^{neu}(f); U3_LEMMA51 Prop. 2.3). From ∂𝔅^{−1} = −𝔅^{−1}(∂𝔅)𝔅^{−1} and ∂𝔅 = diag(A′, 0): ∂_fS = H^†A′H, and ∂_f^pS is a finite sum of terms c·H^†A^{(q_1)}GA^{(q_2)}G⋯GA^{(q_r)}H, Σq_i = p. Bounds: |⟨y, A^{(q)}z⟩| ≤ C_q⟨y, A_0y⟩^{1/2}⟨z, A_0z⟩^{1/2}; G ≤ 2P(PA_0P)^{−1}P (P = projection on ker Q̃; A(f) ≥ ½A_0 there), so ⟨Gw, A_0Gw⟩ ≤ 4 sup_{z∈ker Q̃}|⟨z, w⟩|²/⟨z, A_0z⟩; with w = A^{(q)}y this is ≤ 4C_q²⟨y, A_0y⟩. Chaining: |⟨V, ∂_f^pS V⟩| ≤ C_p⟨HV, A_0HV⟩ ≤ 2C_p⟨HV, A(f)HV⟩ = 2C_p⟨V, S(f)V⟩ ≤ C_p′⟨V, Δ_i(0)V⟩ (the last step: S(f) ≤ ⟨x_0, A(f)x_0⟩ with x_0 the f = 0 minimizer, and A(f) ≤ (1 + C)A_0). Invertibility of 𝔅(f): O6 at f = 0 (S123 (I2)) plus A(f) − A_0 small relative to A_0. Per momentum these are matrix inequalities. Finally Δ̂_j(0; K) ≤ 𝔨_{1}(0; K) ≤ C_*l(K) (KAPPA (E0)). ∎

Lemma 5.1 (neutral f² coefficient) [P given (N1), (N2), U3_LEMMA51 Prop. 2.2; cited: τ log X = ∫ tr log x̂ dK/(2π)⁴ for a convolution X ≥ 0 with log-integrable symbol (Fuglede–Kadison for the group algebra of Z⁴)]. δΓ^{neu}_j is C^∞ and even in f near 0, and δΓ^{neu}(f) − δΓ^{neu}(0) = n_2 d_j^{neu} f² + O(f⁴).
Proof. For K ≠ 0 put h_s(f; K) := tr log 𝔨_s^{neu}(f; K), s = 0, 1. |h_s| ≤ 4|log(c_* cos f · l)| + C, integrable on the BZ (d = 4). ∂_f^p h_s is a finite sum of tr[𝔨^{−1}(∂^{q_1}𝔨)𝔨^{−1}(∂^{q_2}𝔨)⋯]; by cyclicity this is tr[Y_1Y_2⋯], Y_i := 𝔨^{−1/2}(∂^{q_i}𝔨)𝔨^{−1/2}, and ‖Y_i‖ ≤ C_{q_i}/(c_* cos f) by (N1), (N2). So |∂_f^p h_s(f; K)| ≤ C_p″, uniformly in K ≠ 0 and |f| ≤ f_*. Hence δΓ^{neu}(f) = −½∫(h_1 − h_0)dK/(2π)⁴ may be differentiated under the integral any number of times. f enters only through cos-factors, so it is even; Taylor to order 4. The f² coefficient is −½∫∫ dt dK of the f² Taylor coefficient of tr[𝔨_t^{neu}(f)^{−1}v̂^{neu}_f] (pointwise d/dt h = tr[𝔨_t^{−1}v̂], K ≠ 0). In the neutral block there is no Moyal term (e = 0) and 𝔨^{neu}_{t,1} = v̂^{neu,(1)} = 0, so this coefficient is tr[b_{t,2}δσ^{(0)} + b_{t,0}δσ^{(2)}] with b the plain Taylor coefficients of 𝔨_t^{−1}: the neutral part of KAPPA (1.1). ∎
Remark. The integrand of the f² coefficient is bounded (|b_{t,2}δσ^{(0)}| ≤ l^{−2}·l·l² and |b_{t,0}δσ^{(2)}| ≤ l^{−1}·l), so near K = 0 it is not even singular. The log|K|² singularity sits only in h_s itself and cancels from every f-derivative. This is the dominated-convergence bound S123 did not write.

### 5.2 Zero modes: finite torus versus the per-cell trace
On a finite periodic torus the momenta are K ∈ (2π/N)Z^d and K = 0 is allowed. There 𝔨^{neu}(f; 0) = 0 for every f: constant neutral 1-forms have zero curl (Hessian) and zero divergence (Feynman term). These are the d harmonic 1-forms of the torus. They are not gauge directions (gauge directions are im D_c, and a constant 1-form is not a lattice gradient on the torus), and the Feynman term does not lift them (it adds only |div|²). The rest of the finite-torus neutral spectrum is explicit in 2D: per momentum {l(K), cos φ · l(K)} (longitudinal weight 1, transverse weight cos φ, U3_LEMMA51 Prop. 2.2(b) with D_cD_c^T), so the gap above the zero modes is cos φ · 4sin²(π/N) = cos φ · 2(1 − cos(2π/N)). In 4D the smallest nonzero eigenvalue is ≥ cos f · c_* · 4sin²(π/N) by (N1).
How S123 / (M_j) handle them [P]. (M_j), KAPPA_BOUNDED and S123 are infinite-lattice statements with the per-cell trace τ on Z⁴. There K = 0 is a null set of the Brillouin zone. By (N1), N^{neu}_t(λ) ≤ 4|{K : cos f · c_*l(K) ≤ λ}|/(2π)⁴ ≤ Cλ², so N^{neu} has no atom at 0, log|·| is integrable against dN^{neu}, and the zero modes carry no τ-weight. They are neither gauge-excluded nor a source of an atom of N_1; the atom question of S123 Prop. 5.5 note (2) concerns the charged block only, where (G_A′) settles it. If (M_j) were instead defined as a limit of finite tori, the d zero modes would have to be removed by hand (they give log 0). Because 𝔨^{neu}(f; 0) = 0 for every f, removing them changes δΓ^{neu} by an f-independent amount, so the f² coefficient is unaffected. That finite-torus route is not used anywhere in the chain.

## 6. Numerical check of the neutral fibre spectrum

Script numerics/t2_mjrest_neutral.py (new; imports the read-only builder t2_s123_gap2d.build; output numerics/t2_mjrest_neutral.json; run time 1.6 s on the Mac). Model: S123 §6, 2D N × N torus, Landau gauge, flux φ = 2πm/N per plaquette, operator 4·Hess + D_rD_r^T, neutral (colour-3) block, Bloch-reduced in x_0 only (x_1 kept in position space, so the K_1 structure is a genuine check). Prediction: spectrum = ∪_K{l(K), cos φ · l(K)}.

| N | m | φ | max |ev − prediction| | # zero modes | first positive | cos φ·4sin²(π/N) |
|---|---|---|---|---|---|---|
| 12 | 0 | 0 | 4.9e−8 | 2 | 0.2679492 | 0.2679492 |
| 12 | 1 | 0.5236 | 1.5e−8 | 2 | 0.2320508 | 0.2320508 |
| 24 | 1 | 0.2618 | 2.1e−8 | 2 | 0.0658262 | 0.0658262 |
| 24 | 2 | 0.5236 | 1.6e−8 | 2 | 0.0590182 | 0.0590182 |
| 48 | 1 | 0.1309 | 1.4e−8 | 2 | 0.0169639 | 0.0169639 |

Reading [V: numerics, this session]. The whole neutral spectrum matches {l, cos φ·l} to the finite-difference error (h = 10^{−4}, ≤ 5·10^{−8}). Exactly two zero modes (the constant 1-forms, d = 2) at every flux. The gap is cos φ·2(1 − cos(2π/N)), relative error ≤ 8·10^{−8}. The flux enters the neutral block only through cos φ on the transverse part, as U3_LEMMA51 Prop. 2.2(b) states. Limits: 2D, t = 0 (Wilson level, no Balaban averaging), rational fluxes. The level-j neutral symbol is not checked numerically here; Lemma 5.1 uses only (N1), (N2).

## 7. Conclusion and ledger

Corollary 7.1 ((M_j)) [P given the list below; this file not yet independently verified]. Fix j ≥ 1, L odd ≥ 3. Then [Γ_c(Λ_j; f) − Γ_c(1; f) − (f = 0 value)]/(n_2f²) → d_j as f → 0 (KAPPA_BOUNDED l. 32).
Proof. δΓ_j = δΓ^{ch} + δΓ^{neu}; Theorem 4.2 and Lemma 5.1; d_j = d_j^{ch} + d_j^{neu} by the sector split of the integrand of KAPPA (1.1). ∎

Verdict. (M_j) PROVED relative to:
- (G_A′) [P+V, SOURCES_T2_GAPRIME2 + VERIFY] (enters only through S123 Prop. 5.6, i.e. the N–O window term II);
- (I3) [P+V, SOURCES_T2_I3 + VERIFY] (through S123 Prop. 2.1, and the covariance in Lemma 4.1);
- the S123 results graded CONFIRMED in SOURCES_T2_S123_VERIFY: Lemmas 1.1, 1.3, 1.4, Prop. 2.1, Thms 3.3, 3.4, 4.3, Lemma 4.2 (ER), Lemma 5.2, Props. 5.3–5.6, Lemma 5.8, facts (F1)–(F5) (with their cited inputs O6, Prop. B, Lemma M, A0, Theorem W, Prop. E); U3_LEMMA51 Prop. 2.2 (neutral closed form); BETA_FP_M Lemma 4.1;
- standard cited facts: d/dt τh(X + tV) = τ(h′(X + tV)V) for C¹ h in a finite von Neumann algebra; τ log X = ∫tr log x̂ for a positive convolution X with log-integrable symbol (Fuglede–Kadison); Parseval on offset lattices;
- one convention reading [I]: the Moyal inverse coefficients b_{t,m} in KAPPA (1.1) (U3_LEMMA51 (3.2)–(3.3)) equal the b̂_m of §3.1 at σ = 0 (same twisted product, S123 Lemma 1.1(e)). If they differ by a convention, d_j must be read as c_2(0)/(−2n_2) with the b̂_m of §3.1, which is the formal coefficient of the same τ-quantity.
Not proved: the printed rate O(ε|f|³ log(1/|f|)) of BETA_FP_M Prop. 4.4. The proof gives o(f²) (error O(|f|^{9/4}) plus the dominated-convergence term of Lemma 3.1). No consumer uses the rate.

Ledger.
1. Targets quoted (§1): region 1 = momentum range |K|² ≥ R′|f| (BETA_FP_M) or spectral range ≥ Rμ (S123); the open step is an asymptotic identity, not an inequality. [V: read in the files, this session]
2. Lemma 2.1, partial fractions with Σc_k = 1. [P]
3. Split (2.1): log|x| = F_s + g̃ + ψ (f ≠ 0), log = F_s + ψ⁰ (f = 0), s = |f|^{3/4}, N = 4. [P]
4. IDS bound (2.2): N_t(λ) ≤ C_4(λ + C_1′|f|)², N_t(λ) ≤ C_5λ² for λ ≥ s. [P given Thm 3.4, Lemma 5.2, BETA_FP_M Lemma 4.1]
5. Lemma 2.2: |Φ_ψ(f)| ≤ C(s³ + |f|³), |Φ_{ψ⁰}(0)| ≤ Cs³; needs a > 2/3. [P given Thm 3.3, Thm 4.3(a), item 4, (F2), (F3)]
6. (K1) symbol envelopes |∂^αb̂_m| ≤ C(l + σ)^{−1−m−|α|/2}, uniform in σ ∈ [0, 1]. [P]
7. (K2) kernel moments ‖b_m‖_{(P)} ≤ Cσ^{−m−P/2−3/2} (lossy by σ^{−1/2}; enough). [P]
8. Lemma A, Steps 0–4; Step 4 = exact 2-gon identity τ(W·(b ⋆_f v)) = ∫tr[b̂v̂] at finite f. [P given Prop. 2.1, Thm 3.3, ER, Lemmas 1.1, 1.3, 1.4, (F1)–(F5)]
9. Lemma 3.1: c_2(σ) → c_2(0) by dominated convergence; identification with KAPPA (1.1). [P; identification I, see verdict]
10. Lemma 4.1: δΓ_j even in f (global rotation by π about σ_1). [P given (I3) covariance]
11. Theorem 4.2: charged-sector (M_j), error O(|f|^{9/4}) + o(1)·f². [P given items 2–10, S123 Props. 5.5, 5.6, (G_A′)]
12. BETA_FP_M Prop. 4.4: holds as I(f) − I(0) = n_2d_jf² + o(f²) at fixed j (charged sector); the printed rate is not proved. S123 Lemma 7.2 no longer needed. [P for the o(f²) form]
13. (N2): ±∂_f^p𝔨_t^{neu} ≤ C_pl, by induction over the one-step recursion with the bordered-inverse derivative formula. [P given Prop. 2.2(a),(b), O6, (F1), KAPPA (E0)]
14. Lemma 5.1: neutral f² coefficient by differentiation under the integral; all f-derivatives of tr log 𝔨^{neu} are bounded uniformly in K; error O(f⁴). Closes the neutral [I] of S123 §7.2. [P given (N1), (N2), Fuglede–Kadison]
15. §5.2: finite-torus zero modes = the d constant (harmonic) 1-forms, flux-independent, not gauge, not lifted by the Feynman term; null set for τ; no atom (N^{neu}(λ) ≤ Cλ²); irrelevant to (M_j), which is an infinite-lattice statement. [P]
16. Neutral 2D spectrum = ∪_K{l, cos φ·l}, two zero modes, gap cos φ·2(1 − cos(2π/N)), to ≤ 5·10^{−8}, N = 12–48, m = 0–2. [V: numerics/t2_mjrest_neutral.py + JSON]
17. Rate of c_2(σ) → c_2(0): O(σ log(1/σ)) expected by power count. [I, not used]

Points a verifier should check first. (i) Step 2 of Lemma A: the sharp bound ‖R_0W·v^{[2]}‖ ≤ C, in particular ER for W·k^{[2]} and the Lemma 1.4(b) bound for |β| = 2. (ii) Step 3: the bookkeeping that all Moyal terms of total f-order ≤ M cancel, including the j = 1, 2 pieces of k^{[2]}. (iii) Lemma 2.2 range (s, K_*]: the Stieltjes step with N = 4. (iv) (N2): the bordered-inverse derivative chain and the claim that A(f) ≥ ½A_0 suffices for invertibility at each step.
