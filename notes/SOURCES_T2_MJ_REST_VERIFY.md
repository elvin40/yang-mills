IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_MJ_REST verification (independent)

Date 2026-10-28. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md, no ONLINE_SWEEP.md §2.

## 1. Read
Read in full: SOURCES_T2_MJ_REST.md (176 l.). Read S123 §1 (Lemmas 1.1–1.4), Thms 3.3, 3.4, Lemma 4.2 (ER), Thm 4.3, Props. 5.3–5.6, §7.

## 2. Task (a): Lemma A Step 2
Operator. R_0 := (X + σ)^{−1}, X := W·k^{[2]} = 𝒦_t − W·ρ_k. W·v^{[2]} = W·δ + fW·v^{(1)} + f²W·v^{(2)}, and W·δ = Σ_{|β|=|γ|=2}(∇^β)^*(W·h_{βγ})∇^γ − fW·c_1 − f²W·r (Lemma 1.3 order 4 + Lemma 1.1, as in Lemma 1.4(c)).
Main term. ‖R_0(∇^β)^*(W·h)∇^γ‖ ≤ ‖∇^βR_0‖·‖h‖_{(0)}·‖∇^γ‖, with ‖∇^γ‖ ≤ 4. So the sharp input is ‖∇^βR_0‖ ≤ C for |β| = 2.
Chain. ‖∇^βR_0ψ‖² ≤ Σ‖∇_μ∇_νR_0ψ‖² ≤ C⟨R_0ψ, (𝔏_f + |f|)²R_0ψ⟩ (Lemma 1.4(b)) ≤ 2C⟨R_0ψ, (𝔏_f² + f²)R_0ψ⟩ ≤ C′⟨R_0ψ, [(X + μ)² + f²]R_0ψ⟩ (ER for X).
ER for X. ER's proof uses only "operator + μ = W·k_t(0) + B′, ‖B′‖ ≤ C|f|". For X: B′ = μ + fW·k^{(1)} + f²W·k^{(2)}, ‖B′‖ ≤ C|f|. Steps (ii)–(iv) concern W·k_t(0) only. So ER holds for X with the same C_E (up to the constant in ‖B′‖). CONFIRMED.
Spectral sup. X and R_0 commute; spec X ⊂ [−μ/2 − C|f|³, K_* + C|f|³]. sup_{x} [(x + μ)² + f²]/(x + σ)²: for x ≤ σ the numerator is ≤ (σ + μ)² + f² ≤ 3σ² (σ ≥ 8μ, σ ≥ |f|) and the denominator ≥ σ²/4 (x ≥ −σ/2 roughly); for x ≥ σ the ratio is ≤ ((x+μ)/(x))² + f²/x² ≤ 4. So the sup is ≤ 12, independent of f and σ. CONFIRMED: the constant is uniform in f, t and σ ∈ [max(8μ, |f|), 1].
Lower-order terms. |f|‖R_0‖(‖c_1‖ + ‖v^{(1)}‖) + f²(…) ≤ C|f|/σ ≤ C because σ ≥ |f|. CONFIRMED.
Resolvent identity. 𝒦_t + σ = X + σ + W·ρ_k ⇒ R − R_0 = −R(W·ρ_k)R_0. |τ(R(W·ρ_k)R_0W·v^{[2]})| ≤ τ(1)‖R‖‖ρ_k‖_{(0)}‖R_0W·v^{[2]}‖ ≤ C|f|³/σ. CONFIRMED.
Verdict (a): Step 2 is correct. The constant depends on C_E, C_1, ‖h‖, Lemma 1.4(b), but not on f, t, σ in the stated range.

## 3. Task (b): Lemma A Step 3 bookkeeping
Product. (k^{[2]} + σ) ⋆_f B = Σ_{j≤2, m≤M} f^{j+m}(k^{(j)} + σδ_{j0}) ⋆_f b_m. For j + m ≤ M expand to Moyal order P − 1, P := M + 1 − j − m: terms f^{j+m+p}P_p(·, b_m), p ≤ M − j − m.
Coverage. A triple (j, q, p) with j ≤ 2, j + q + p = n ≤ M appears exactly once: j + q ≤ n ≤ M (so the product is expanded) and p ≤ M − j − q ⇔ n ≤ M. So the expanded terms are Σ_{n≤M} f^n Σ_{j+q+p=n} P_p(k^{(j)} + σδ_{j0}, b_q). The j = 1, 2 pieces are included; nothing of order ≤ M is in the "kept whole" set (j + m > M).
Cancellation, listed. Order n: the (0, n, 0) term is (𝔨_0 + σ)b̂_n; the other terms are P̂_p(𝔨_j, b̂_q) with q < n, plus σ-terms P_p(σ1, b_q), which vanish for p ≥ 1 (delta kernel: x − z = 0) and for p = 0 need j = 0, q = n. The recursion b̂_n = −b̂_0Σ_{q<n}P̂_p(𝔨_j, b̂_q) makes the sum δ_{n0}. Example n = 2: (𝔨_0+σ)b̂_2 + 𝔨_1b̂_1 + P̂_1(𝔨_0, b̂_1) + 𝔨_2b̂_0 + P̂_1(𝔨_1, b̂_0) + P̂_2(𝔨_0, b̂_0) = 0. This matches the b_2 of KAPPA §2.2 term by term (right-inverse form; in an algebra left and right inverses agree).
Sizes. Rem: |f|^{M+1}‖b_m‖_{(P)} ≤ C|f|^{M+1}σ^{−(M+1−j+m)/2−3/2} ≤ C|f|^{M+1}σ^{−M−2}. Kept whole: C|f|^{j+m}σ^{−m−3/2} ≤ C|f|^{M+1}σ^{−M−3/2}. (K2) exponent rechecked: ∫_{4D}(|K|²+σ)^{−1−m−(P+5)/2} ~ σ^{−m−P/2−3/2}. Then R_0 − R_app = −R_0W·E gives C|f|^{M+1}σ^{−M−3} ≤ C|f|^{M+1−a(M+3)}; a = 3/4, M = 14: exponent 2.25. CONFIRMED.

## 4. Task (c): Lemma 2.2
a is the exponent of the shift s = |f|^a. It is a free choice of MJ_REST (a = 3/4), not an S123 parameter. Constraints: a < 1 (so s ≥ 8μ = 16C_1|f|, s ≥ C_1′|f| for small f at fixed j) and a > 2/3 (so s³ = |f|^{3a} = o(f²)); Lemma A adds M > (1+3a)/(1−a) = 13. All met.
Stieltjes step (N = 4). ∫_{(s,K_*]}λ^{−3}dN = [λ^{−3}N]_s^{K_*} + 3∫_s^{K_*}λ^{−4}N dλ ≤ K_*^{−3}τ(1) + 3C_5∫_s^∞λ^{−2}dλ = C + 3C_5/s. The boundary term at s is −s^{−3}N(s) ≤ 0, dropped. Times s^N = s⁴: ≤ Cs³. CONFIRMED. Weight: λ ≥ s ≥ μ, |f| ⇒ (λ+μ)² + f² ≤ 5λ². IDS (2.2) for λ ≥ s: (λ + C_1′|f|)² ≤ 4λ². Range [−μ/2, 2Rμ]: (C/μ)·Cμ²·O(f²) = O(|f|³). Range (2Rμ, s]: s·N(s) ≤ Cs³. f = 0 part: C∫min(l, s⁴l^{−3})d⁴K = O(s³) in 4D. Positivity bound (i): h_±^{1/2} conjugation of Thm 4.3(a), correct. CONFIRMED.

## 5. Task (d): (N2) induction
Bordered formula. 𝔅 = [[A, Q̃^†], [Q̃, 0]], 𝔅^{−1} = [[G, H], [H^†, −S]]. Lagrange: min_{Q̃x=y}⟨x, Ax⟩ = ⟨y, Sy⟩ with S = −(lower-right block), so S is the effective form, not its inverse. ∂𝔅^{−1} = −𝔅^{−1}diag(A′, 0)𝔅^{−1} gives ∂S = H^†A′H (envelope formula), ∂H = −GA′H, ∂G = −GA′G. So ∂^pS = Σ c·H^†A^{(q_1)}G⋯GA^{(q_r)}H. CONFIRMED.
Bounds. Hermitian B with ±B ≤ CA_0 ⇒ |⟨y, Bz⟩| ≤ C‖A_0^{1/2}y‖‖A_0^{1/2}z‖. GAG = G on ker Q̃, so ⟨Gw, A_0Gw⟩ ≤ 2⟨w, Gw⟩ ≤ 4 sup_{z∈ker Q̃}|⟨z, w⟩|²/⟨z, A_0z⟩ ≤ 4C_q²⟨y, A_0y⟩ for w = A^{(q)}y. Chaining gives |⟨V, ∂^pS V⟩| ≤ C_p⟨HV, A_0HV⟩ ≤ 2C_p⟨V, S(f)V⟩ ≤ C_p′⟨V, S(0)V⟩ (S(f) ≤ ⟨x_0, A(f)x_0⟩ ≤ (1+C)S(0)). So ±∂^pΔ_i ≤ C_pΔ_i(0) for |f| ≤ f_*; the induction closes. Final |K̂|² step: Δ̂_j(0) ≤ 𝔨_1(0) ≤ C_*l (E0); Δ̂_0^{neu}(0) ≤ l (F1). CONFIRMED.
Remarks (no grade change). (1) The hypothesis must hold for all |f| ≤ f_*, not only at 0; the proof states it that way. (2) "A(f) ≥ ½A_0" holds exactly: Prop. 2.2(b) gives A(f) = A_0 − (1 − cos φ)Δ_{01} ≥ cos φ·A_0 at the fine level. (3) Simpler route: U3_LEMMA51 Prop. 2.2(a) is a one-shot statement (C_f^{neu} f-independent), so one bordered step with A(f) = Δ^{neu}(φ) + gauge term suffices; the one-step recursion needs Q̃ f-independent per step, which follows by the same loop argument [I]. (4) Invertibility of PA_0P on ker Q̃ needs the gauge term (D_rD_r^†, U3_LEMMA51 §2.3) or O6, as cited.

## 6. Task (e): "no phase"
Twisted product (S123 Lemma 1.1(a)): (W·a)(W·b) = W·(a ⋆_f b), (a ⋆_f b)(x, y) = Σ_z a(x, z)b(z, y)e^{i(ef/2)(x−z)∧(z−y)}. Trace: τ(W·c) = Σ_{x∈cell}tr c(x, x) (W(x, x) = e^{0} = 1). For convolution kernels, (b ⋆_f v)(x, x) = Σ_z b(x − z)v(z − x)e^{i(ef/2)w∧(−w)}, w = x − z, and w∧(−w) = −(w∧w) = 0. So τ(W·b·W·v) = Σ_{x∈cell}Σ_w tr[b(w)v(−w)] = ∫_{BZ}tr[b̂v̂]dK/(2π)⁴ (Parseval on offset lattices). Exact at finite f. CONFIRMED. Scope: exact only for two factors; Lemma A uses it only for R_app·V, both convolutions, and handles R − R_app separately (Steps 1–3). Correct use.

## 7. Task (f): numerics
Rerun numerics/t2_mjrest_neutral.py (1.6 s): JSON reproduced bit for bit (max diff 0).
New script numerics/t2_mjrest_verify_neutral.py (+ JSON, 2.0 s). Extra sizes; checks zero-mode count, that the zero modes at k_0 = 0 span the two constant 1-forms, the gap, and the charged–neutral leak.
| N | m | φ | # zero | zero-mode resid. | first positive | cos φ·4sin²(π/N) | leak |
|---|---|---|---|---|---|---|---|
| 36 | 3 | 0.5236 | 2 | 2.1e−7 | 0.02631374 | 0.02631374 | 0 |
| 20 | 3 | 0.9425 | 2 | 2.2e−7 | 0.05753652 | 0.05753652 | 0 |
| 64 | 2 | 0.1963 | 2 | 5.6e−7 | 0.00944548 | 0.00944550 | 0 |
Gap absolute error ≤ 1.7e−8 (finite-difference Hessian floor ≈ 5e−8; relative error 1.8e−6 at N = 64 is this floor). [V] Same limits as the author's check: 2D, Wilson level, rational flux.

## 8. Task (g): exponents and the limit
Errors in Thm 4.2 with a = 3/4, M = 14: g̃ term |f|³log; ψ terms s³ = |f|^{9/4}, |f|³; Lemma A: |f|³log (Step 4, p ≥ 3), |f|^{3−a} = |f|^{9/4} (Steps 1–2), |f|^{M+1−a(M+3)} = |f|^{9/4} (Step 3). Max = |f|^{9/4}. CONFIRMED. Plus f²|Σc_kc_2(k|f|^{3/4}) − c_2(0)| = o(1)f²: dominated convergence, integrands ≤ C(l+σ)^{−1} ≤ Cl^{−1} ∈ L¹(4D), pointwise continuity in σ ≥ 0 at K ≠ 0. CONFIRMED.
c_1 removal: c_p(σ) do not depend on the sign of f; s depends on |f|; the g̃ and ψ errors are absolute bounds valid at ±f. Averaging at ±f cancels f·Σc_kc_1 exactly, whatever its size. Needs Lemma 4.1 (evenness of δΓ^{ch}); the π-rotation about σ_1 maps σ_3 → −σ_3 and swaps ±e. CONFIRMED given (I3).
Limit only. KAPPA_BOUNDED l. 32 states (M_j) as a limit; Prop. 1.1 uses lim_{f→0}; BETA_FP_M Cor. 4.5 and Thm 3.1′ say "the rate is not used". So o(f²) suffices. CONFIRMED. Identification c_2^{ch}(0) ↔ KAPPA (1.1): the recursion matches KAPPA's b_1, b_2 (§3 above); d_j = −c_2(0)/(2n_2) is consistent with the sign in (1.1). The sign convention of P_1 (e vs −e) is irrelevant because both charged sectors are summed. The [I] stays a convention reading, low risk.

## 9. Grades
(1) Region 1 reading, split log|x| = F_s + g̃ + ψ, g̃ = O(|f|³log), ψ = O(s³ + |f|³): CONFIRMED.
(2) Lemma A (Step 2 sharp bound uniform in f, t, σ; Step 3 cancellation; Step 4 no phase): CONFIRMED.
(3) f² coefficient −2n_2d_j, error O(|f|^{9/4}) + o(1)f²; Prop. 4.4 holds as n_2d_jf² + o(f²): CONFIRMED. The printed rate O(ε|f|³log) of Prop. 4.4 stays unproved, as the author states; nothing uses it.
(4) Neutral sector (N2), Lemma 5.1, zero modes, N^{neu} ≤ Cλ², numerics: CONFIRMED (remarks in §5 only).
(M_j): PROVED at fixed j ≥ 1, L odd ≥ 3, relative to (G_A′), (I3), the S123 results graded CONFIRMED, U3_LEMMA51 Prop. 2.2, standard cited facts, and one low-risk convention reading [I] (b_{t,m} of KAPPA (1.1) = b̂_m at σ = 0). No new gap found.
