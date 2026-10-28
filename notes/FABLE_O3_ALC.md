# FABLE_O3_ALC — Task A (O3, the sourced R-denominators) and Task B (AL-c, complex averaged link)

Fable 5.1, 2026-10-28. New file; no existing file edited. Scratch numerics: numerics/fable_o3_*.py.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Citation rule: inputs are cited by FILE NAME and section, never by bare ledger ids (renumbering in progress).
Grades: [P] proved here; [V] read on a page image or verbatim in a project file; [I] inference of mine; [R] reduced to a named open input; [N] numerical check.
Honesty rule: a proof that does not close names the exact failing inequality.

Sections are appended one per tool call.

## A0. Inputs read for Task A

Project files [V = read this session]: TRUST_LEDGER.md §0 and the rows "N3: |δw_k| ≤ (3/2)τ on Q" and "(FX): the final Mayer expansion …" (cited below as the N3 row and the FX row); CLOSURE_PLAN.md (its only line on this topic is the Table 4 note; no separate O3 row); SOURCES_FX_O23.md §1–§7 and SOURCES_FX_O23_VERIFY.md §1–§6; SOURCES_FX_D.md §1–§6 with its correction block; SOURCES_D3_NEW4.md §1–§6 with its correction block; SOURCES_D3R.md §1.1–§1.4 (Lemma P3; θ := γ²δ_r ≤ 5γ²r); SOURCES_HBETA.md §3(c); SOURCES_HBETA_N3.md §1–§4 (statement and reduction of N3); INFINITE_VOLUME_FABLE.md §2.2 and INFINITE_VOLUME_FABLE_VERIFY2.md §5 (C13: Balaban's main R-step form (1.90)–(1.98) is used; (1.103)–(1.104) and O4 are not).
Page images (300 dpi, this session): CMP 122 II pp. 356, 357, 358, 359 (so far; pp. 360–368 and 380–385 are read in A2–A4 below as needed).

Naming note. SOURCES_FX_O23 calls the R-denominator item "O2" and the large-field-source item "O3"; the FX row of the ledger lists "O3 conditional on B18 [the N3 row]". The brief calls the denominator item "obstacle O3". I use the brief's name: O3 := the whole sourced-complex statement that the FX chain needs from the R-operation at every scale, i.e. both the denominators (FX_O23 §4) and the T′ upper bounds (FX_O23 §5). Where a sub-item is meant, I write O3-den or O3-up.

## A1. O3 stated exactly as the chain needs it [P: statement assembled from the files above]

Objects (CMP 122 II (1.1), p. 356 [V]; CMP 122 I (1.100) as read in FX_O23_VERIFY §1 [V there]). At scale k, on a renormalizable component Z with small-field part Λ ⊂ Z (Λ in a cube of side 100M, p. 358 [V]), the R′-operation produces the ratio
  N_k(f; V) / D_k(f; V),  D_k(f; V) := ∫dV′⌈_Λ δ_{G_0}(V′) χ exp[−A(w_kζ_0, U_{k,Z}(V′V_Λ))],
with w_k(f)(p) := ω(p)g_k^{−2} the sourced plaquette weight (D3_NEW4 §1 [V]: the source enters the R-operation only as a plaquette factor ω on the Wilson weight; minimizer U_0, gauge G_0, cutoff χ, thresholds ε_k are NOT sourced). The numerator carries the sourced A″_k with the large-field operations T′_k(X) of (1.71) inside.

The source polydisc. For real f with ‖f‖_∞ ≤ r: |ω − 1| ≤ θ := γ²δ_r ≤ 5γ²r (D3R Lemma P3 + §1.4 [V]). For complex f = f_real + ζ, ‖ζ‖_∞ ≤ τ ≤ r: ω(p) = g_k²·w_k(f(x_p)) with w_k holomorphic in the source value c on Q = {|Re c| ≤ 2r, |Im c| ≤ τ} and |δw_k| ≤ (3/2)τ — this is N3 (the N3 row; SOURCES_HBETA_N3 §1–§2 [V]). Then |ω − 1| ≤ θ_c := γ²(δ_r + (3/2)τ) ≤ 6.5γ²r.

The field polydisc. The R-terms must be holomorphic in the complex background U ∈ U^c_k(Z, α_{0,k}, α_{1,k}) (p. 358 [V]: "we need such a bound for the integral extended analytically on G^c-valued configurations"), because later scales take field derivatives of them by Cauchy. So the sourced statement must hold jointly on (ω, U).

O3 as the chain needs it. For every K ≥ 1, ε = L^{−K}, every scale k ≤ K, every component Z (|Λ| ≤ (100M)^d scale-k sites), and every U ∈ U^c_k(Z, α_{0,k}, α_{1,k}):
 (O3-den) D_k(ω; U) is holomorphic in the complex plaquette weight ω on the polydisc 𝒫 := {ω: |ω(p) − 1| ≤ θ_c ∀p ∈ supp ζ_0}, non-vanishing there, and log D_k(ω; U) − log D_k(1; U) is holomorphic and bounded by a constant c_den(M, γ_0, d, L)·θ_c·|Λ|-type local term, independent of k, K, ε (so that the sourced R-term keeps the (1.68)–(1.69) bounds with a constant change and keeps radius c·r in the source).
 (O3-up) every upper bound (1.73), (1.79), (1.89), (1.92), (1.97), (1.100) on T′_k(X) with sourced weight holds on 𝒫 with γ_0 → γ_0′ ≥ γ_0/4 and p_0 ≥ 16/(γ_0A_1²) (FX_O23 §5, verified FX_O23_VERIFY §6 item 2 [V]); it needs only |Re ω| ≥ 1 − θ_c on real G-valued integration variables.
 (O3-hol) the map f ↦ ω(f) is holomorphic on the source polydisc with |ω − 1| ≤ θ_c: this is N3.
Uniformity required: in k, K (hence ε), |Λ| (through the per-component form of the constants only), and the torus volume (no volume enters; everything is per component).

What is already settled [V]: (O3-up) for all upper bounds (FX_O23 §5 + VERIFY). (O3-den) for REAL field U and real-or-complex source via Lemma D3.1 (|σ_W| ≤ τΦ(g_k) ≤ ½, FX_O23 §4 + FX_D §4, verified), conditional on N3 and N2. (O3-den) for COMPLEX U and real source via D3_NEW4 §4 (sourced (1.9) on the G^c extension, verified), without a non-vanishing statement.
What this file adds (A2–A4): (O3-den) for complex ω AND complex U, with the non-vanishing and the log-bound proved by a Gaussian/determinant estimate; the conditions in canon form; and the exact status of (O3-hol).

## A2. Page facts for the denominator [V, CMP 122 II pp. 356–360, 380–381, 300 dpi images read this session]

- p. 356 (1.1): the R′-ratio; denominator ∫dV′⌈_Λ δ_{G_0}(V′) χ exp[−g_k^{−2}A(ζ_0, U_{k,Z}(V′V_Λ))]. "Writing V′ = exp ig_kB′ … using (2.8) [I]" the denominator equals exp[−g_k^{−2}A(ζ_0, U_0) + (−½d(g)log g_k^{−2} + log σ_0)|Λ^{(k)}∖G_0|] · ∫dB′⌈_Λ σ(g_kB′) δ_{G_0}(B′) χ({|B′| < M_0g_k^{−1}ε_k}) · (1.2).
- p. 357 (1.2): exponent −½⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ − g_k^{−1}⟨DH_{1,k}B′, ζ_0η^{−2}Im ∂U_0⟩ − g_k^{−2}V(ζ_0, g_kH_{1,k}B′); "V is at least of third order in the argument. It can be estimated by O(g_k^{1−β})|Λ|" (asserted). (1.4)–(1.6): J_0 = 0 on Λ, so the linear term is the (1 − ζ_0) boundary term, bounded by 3B_3M_0A_0²p_0²(g_k)e^{−R_k}(100M)^4, "Λ is contained in a cube of the size 100M". U_0 = exp iξA_0 on Z in a proper gauge, |A_0|, |∇^ηA_0| < O(1)M^6R_kε_k; the form is expanded to first order in A_0; the leading form (background 1, ζ_0 = 1, whole-lattice minimizer) differs by O(e^{−R_k}).
- p. 358 (1.7)–(1.9) as quoted in SOURCES_D3_NEW4 §2 (confirmed on the image). Text after (1.9): "This integral is in the denominator of (1.1), hence we are interested only in a lower bound, which follows from the boundedness of the quadratic form. The integral is bounded from below by exp(−O(1)|Λ|) = exp(−O(M⁴)). In fact, we need such a bound for the integral extended analytically on G^c-valued configurations U. We construct such an extension replacing the variables V_k in the function U_0 by the averages M^k(U) for U ∈ U^c_k(Z, α_{0,k}, α_{1,k}). The expressions in the integral are analytic functions of U, and all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}). This is an unessential change; it may result only in stronger restrictions on g_k, or γ." (1.10): (denominator)^{−1} = exp[+g_k^{−2}A(ζ_0, U_0) + I(U_0) − E_k(Λ)], E_k(Λ) = (−½d(g)log g_k^{−2} + log σ_0)|Λ^{(k)}∖G_0|; (1.11): |I(U_0)| < O(1)log M|Λ| < O(1)M^5 for the analytically extended I(U_0).
  Reading [I]: for real U the lower bound is positivity + boundedness; for complex U Balaban ASSERTS the same lower bound for the modulus. No mechanism is printed for the complex case. This is the asserted input (R-cden) below.
- p. 359 (1.12)–(1.13): unweighted variational problem; inverse bounded by γ_0^{−1}2d(100M)^5 "by the inequality (1.9)"; (1.14)–(1.15) split of the numerator's Wilson term. p. 360 (1.16)–(1.19): localization of U″_k; the boundary layer argument of H″_{k,Z} is bounded by 44d²ε_k; the extra terms carry exp(−½δMR_k) "which suppresses all powers of log g_k^{−2} and all powers of M".
- p. 380 (1.73)–(1.75) and the three large-field factors; p. 381 combined factor and the preparatory factors: exactly as quoted in SOURCES_FX_O23 §2 and FX_O23_VERIFY §3–§4. Confirmed on the images. (1.74)–(1.75) rest on "T′_k(X,(U,0))1 is obviously positive … hence T′_k(X,(U,J))1 ≠ 0" (positivity, real U, σ small).

## A3. Lemma O3-den (complex weight, complex field) [P given the inputs listed at the end]

Setting. Fix k, Z, Λ as in A1. Let n := number of scale-k bonds in Λ∖G_0 (the integration variables), n ≤ d(100M)^d [V p. 358, "cube of the size 100M"]. Let n_p := number of plaquettes p with ζ_0(p) ≠ 0 whose value U_{k,Z}(V′V_Λ)(∂p) depends on V′; n_p ≤ C_p(100MR_k)^d [I: H_{1,k} and the minimizer decay exponentially on the scale R_k; FX_O23 §4(b) counts the same]. Write X := H_{1,k}B′, ‖X‖ ≤ C_HB_3‖B′‖ [I, D3_NEW4 §4 reading].
Let ω: plaquettes → ℂ with |ω(p) − 1| ≤ θ_c on supp ζ_0, and U ∈ U^c_k(Z, α_{0,k}, α_{1,k}), α_k := α_{0,k} + α_{1,k}. Set a_k := O(1)M^6R_k(ε_k + α_k) (the p. 357 bound for A_0 with Balaban's α-replacement, p. 358).

Decomposition (exact). A(ζ_0ω, U) = A(ζ_0, U) + A(ζ_0(ω − 1), U) (A is linear in the weight; D3_NEW4 §1 [V]). So
  D_k(ω; U) = exp[−g_k^{−2}A(ζ_0ω, U_0) − E_k(Λ)] · ∫dB′ σ(g_kB′)δ_{G_0}(B′)χ · exp[−½Q_ω(X) − L_ω(X) − g_k^{−2}V_ω(g_kX)],   (A3.1)
with Q_ω(X) = ⟨X, Δ_1(ζ_0ω)X⟩ = Σ_p ζ_0(p)ω(p)h_p(X), L_ω = L_1 + L_f (L_f = (3.2) of D3_NEW4, coefficient g_k^{−1}θ_c·O(a_k) per plaquette), V_ω = Σ_pζ_0ω V_p (third-order remainder of P_p at U_0). The sourced Wilson term at U_0: g_k^{−2}|A(ζ_0(ω − 1), U_0)| ≤ θ_c g_k^{−2} Σ_{p∈supp ζ_0}|P_p(U_0)| ≤ θ_c g_k^{−2}·C_0 a_k²·|supp ζ_0| =: s_0 (|P_p(exp iξA_0)| ≤ C_0|∂A_0 + O(A_0²)|² ≤ C_0a_k²; |supp ζ_0| ≤ C_p(100MR_k)^d).

Step 1 (real part of the sourced form) [P from D3_NEW4 (4.1)–(4.2), now with complex ω and complex U]. By D3_NEW4 (4.1) = CMP 99 (3.10) (verified there): h_p(X) = c_N|(∂X)(p)|² + c_p(X), |c_p(X)| ≤ C_1a_kΣ_{b∈p}|X(b)|², where for complex U the quadratic form h_p is complex-valued and the bound covers both parts. Write ω = 1 + ρ, |ρ| ≤ θ_c. Then
  Re Q_ω(X) = Σ_pζ_0[(1 + Re ρ)Re h_p − Im ρ·Im h_p] ≥ (1 − θ_c)Σ_pζ_0 Re h_p − θ_c Σ_pζ_0|Im h_p| − 2θ_c Σ_pζ_0|c_p|·0
  ≥ (1 − θ_c)Q^{Re}_{ζ_0}(X) − (2θ_c + θ_c)·C_1a_k·2(d − 1)‖X‖²,
using Re h_p = c_N|∂X|² + Re c_p ≥ −|c_p| on the ρ-part and |Im h_p| = |Im c_p| ≤ |c_p|. With Balaban's (1.7) for the real part on the G^c extension (p. 358 sentence [V, asserted]) and (1.8):
  Re Q_ω(H_{1,k}B′) ≥ (1 − θ_c)γ_0‖∂B′‖² − O(1)((1 + θ_cC_H²B_3²)M^6R_k(ε_k + α_k) + e^{−R_k})‖B′‖² ≥ 2λ‖B′‖²,  λ := γ_0/(8d(100M)^5),   (A3.2)
for θ_c ≤ ½ and g_k small enough that O(1)((1 + C_H²B_3²)M^6R_k(ε_k + α_k) + e^{−R_k}) ≤ γ_0/(4d(100M)^5) [Balaban's "g_k sufficiently small" of (1.9), with the O(1) enlarged; a condition on g_k ≤ γ only].

Step 2 (the Gaussian with complex symmetric form is non-degenerate) [P]. On the subspace P_0 (B′ = 0 on G_0, dimension n), Q_ω(H_{1,k}·) is a complex symmetric bilinear form with matrix Δ_ω = A_ω + iB_ω, A_ω := Re Δ_ω, B_ω := Im Δ_ω real symmetric, A_ω ≥ 2λ by (A3.2). Then Δ_ω is invertible (for x ≠ 0 complex, Re⟨x̄, Δ_ωx⟩ = ⟨x̄, A_ωx⟩ > 0), det Δ_ω ≠ 0, and ∫_{ℝ^n}e^{−½⟨x,Δ_ωx⟩}dx = (2π)^{n/2}(det Δ_ω)^{−1/2} (principal branch along the path t ↦ A_ω + itB_ω). With μ_i the eigenvalues of A_ω^{−1/2}B_ωA_ω^{−1/2}:
  |det Δ_ω|^{−1/2} = (det A_ω)^{−1/2}Π_i(1 + μ_i²)^{−1/4} ≥ (det A_ω)^{−1/2}e^{−¼Σ_iμ_i²},   (A3.3)
and the total variation of the complex Gaussian measure relative to its mass is Π_i(1 + μ_i²)^{1/4} ≤ e^{¼Σμ_i²} (|e^{−½⟨x,Δx⟩}| = e^{−½⟨x,Ax⟩}). Bound on Σμ_i² ≤ n‖A_ω^{−1}B_ω‖² ≤ n(b_k/(2λ))², with ‖B_ω‖ ≤ b_k := C_ΔC_H²B_3²[θ_c + (1 + θ_c)C_1·2(d − 1)a_k] (C_Δ := sup over plaquette Hessians at near-flat background, an absolute constant of SU(2); the ω-part contributes θ_c‖Δ_1(ζ_0)‖, the complex-field part the imaginary part of the Hessian at complex background, ≤ C_1a_k per plaquette by (4.1)). [N: (A3.3) and the total-variation ratio checked numerically in numerics/fable_o3_det.py, A4.]

Step 3 (the perturbation F := σ(g_kB′)χ e^{−L_ω − g_k^{−2}V_ω} is close to 1 in L¹(|μ_ω|)) [P]. On supp χ, |B′| ≤ M_0p_0(g_k), so |g_kX| ≤ C_HB_3M_0g_kp_0(g_k) ≤ 1 for g_k small. Then on supp χ:
  s_V := sup|g_k^{−2}V_ω| ≤ (1 + θ_c)n_pC_3(C_HB_3M_0)³g_kp_0(g_k)³;   s_L := sup|L_ω| ≤ 3B_3M_0A_0²p_0²e^{−R_k}(100M)^4 + θ_c·n_p·O(a_k)·C_HB_3M_0p_0 (p. 357 (1.6) [V] plus D3_NEW4 (3.2));   s_σ := sup|log σ(g_kB′)| ≤ nC_σg_k²M_0²p_0²
(σ is the Haar density in exponential coordinates, σ = 1 + O(|g_kB′|²)). Hence |F − 1| ≤ e^{s_σ + s_L + s_V} − 1 on supp χ, and |F − 1| = 1 off supp χ. The Gaussian tail: ∫_{|B′|>M_0p_0}|dμ_ω| ≤ e^{¼Σμ²}·2n e^{−λM_0²p_0(g_k)²} (one-dimensional marginals of the real Gaussian with A_ω ≥ 2λ have variance ≤ 1/(2λ); union bound over n coordinates). So
  |∫F dμ_ω − ∫dμ_ω| ≤ ∫|F − 1||dμ_ω| ≤ e^{¼Σμ²}|∫dμ_ω|·[e^{s_σ+s_L+s_V} − 1 + 2ne^{−λM_0²p_0²}] =: e^{¼Σμ²}|∫dμ_ω|·s_F.   (A3.4)

Step 4 (conclusion). If (D1) n(b_k/(2λ))² ≤ 1 and (D2) s_F ≤ 1/(4e^{1/4}) = 0.195, then |∫Fdμ_ω| ≥ |∫dμ_ω|(1 − e^{1/4}s_F) ≥ ¾|∫dμ_ω| ≥ ¾(2π)^{n/2}(det A_ω)^{−1/2}e^{−1/4} > 0. So D_k(ω; U) ≠ 0 on the whole polydisc 𝒫 × U^c_k, and
  log D_k(ω; U) = −g_k^{−2}A(ζ_0ω, U_0) − E_k(Λ) + (n/2)log 2π − ½ log det Δ_ω + log(1 + c_ω),  |c_ω| ≤ e^{1/4}s_F ≤ ¼,
each term holomorphic in ω on the simply connected polydisc 𝒫 (det Δ_ω ≠ 0 on 𝒫 gives a holomorphic branch of log det; ∫Fdμ_ω is a finite-dimensional integral over the compact set supp χ of an entire function of ω, uniformly bounded, hence holomorphic; 1 + c_ω ≠ 0). Difference from the unsourced value, for the same U:
  |log D_k(ω; U) − log D_k(1; U)| ≤ s_0 + ½|tr log(Δ_1^{−1}Δ_ω)| + |log(1 + c_ω) − log(1 + c_1)| ≤ s_0 + ½n·C_ΔC_H²B_3²θ_c/(2λ)·(1 − ‖Δ_1^{−1}(Δ_ω − Δ_1)‖)^{−1} + (4/3)·2e^{1/4}s_F,   (A3.5)
(‖Δ_1^{−1}‖ ≤ 1/(2λ) since Re Δ_1 ≥ 2λ; ‖Δ_ω − Δ_1‖ = ‖Δ_1(ζ_0ρ)‖ ≤ C_ΔC_H²B_3²θ_c). All three terms are per-component constants; s_0 and the middle term carry the factor θ_c, s_F → 0 as g_k → 0. In particular, on the source polydisc (θ_c ≤ g_k²·6.5r) the change of log D_k is ≤ C_den(M, d, γ_0, B_3)·r·g_k²·polylog(g_k^{−1}) + 3s_F ≤ an O(1) local term of the (1.68)–(1.69) type, and the R-ratio keeps the radius c·r in the source [P, given the bound; the (1.68) bookkeeping is the one FX_O23 §4(e) uses, "plausible, not checked" in FX_O23_VERIFY item 1 — unchanged here].

Remark (real U, real or complex ω). For real U the positivity route of FX_O23 §4 / FX_D §4 (|σ_W| ≤ τΦ(g_k) ≤ ½, Lemma D3.1) is a special case of Steps 3–4 with B_ω = Δ_1(ζ_0 Im ω) only. Steps 1–4 are needed only for complex U, where positivity is unavailable and Balaban's own lower bound is asserted (A2, "(R-cden)"). For ω = 1 and complex U, Steps 1–4 PROVE Balaban's asserted lower bound |D_k(1; U)| ≥ ¾e^{−1/4}(2π)^{n/2}(det A_1)^{−1/2}e^{−|E_k(Λ)| − g_k^{−2}|A(ζ_0, U_0)|} = exp(−O(1)log M|Λ|)-type, i.e. (1.11) with an explicit O(1), under (D1)–(D2) at θ_c = 0. So (R-cden) is discharged by this lemma rather than used by it.
