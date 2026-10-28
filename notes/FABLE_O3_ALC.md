IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
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
  Re Q_ω(X) = Σ_pζ_0[(1 + Re ρ)Re h_p − Im ρ·Im h_p] ≥ (1 − θ_c)Σ_pζ_0 Re h_p − 2θ_c Σ_pζ_0|c_p| − θ_c Σ_pζ_0|Im h_p|
  ≥ (1 − θ_c)Q^{Re}_{ζ_0}(X) − 3θ_c·C_1a_k·2(d − 1)‖X‖²,
using Re ρ·Re h_p ≥ −θ_c Re h_p − 2θ_c|c_p| (Re h_p = c_N|∂X|² + Re c_p ≥ −|c_p|) and |Im h_p| = |Im c_p| ≤ |c_p|. With Balaban's (1.7) for the real part on the G^c extension (p. 358 sentence [V, asserted]) and (1.8):
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

## A4. Numerical check [N]

numerics/fable_o3_det.py (Mac, < 10 s): 200 random complex symmetric forms Δ = A + iB, n = 6, A > 0. Checked: the identity |det Δ|^{−1/2} = (det A)^{−1/2}Π(1 + μ_i²)^{−1/4} (to 1e−9); the lower bound (A3.3) with e^{−¼Σμ²}; Σμ_i² ≤ n‖A^{−1}B‖²; the total-variation ratio ∫|dμ|/|∫dμ| = Π(1 + μ_i²)^{1/4} (Monte Carlo, 2e5 samples, within 5%); and the perturbation inequality |∫Fdμ| ≥ |∫dμ|(1 − e^{¼Σμ²}s_F) for a pointwise perturbation |F − 1| ≤ s_F = 0.15 (Monte Carlo, worst violation 0 beyond the 2% sampling tolerance). Output: "OK … worst slack 0.0".

## A5. Conditions in canon form, the status of (O3-hol), and the verdict

Conditions of Lemma O3-den (all per component, independent of k, K, ε, |Λ| beyond n ≤ d(100M)^d):
 (C-θ) θ_c ≤ ½. On the source polydisc θ_c = g_k²(δ_r + (3/2)τ) ≤ 6.5γ²r, so 6.5γ²r ≤ ½ suffices (canon already has 5γ²r ≤ ½ and ρ_1 ≤ r/(4C_hM) from D3_NEW4 §5 + VERIFY; the 6.5 replaces 5 when τ = r; for τ ≤ r/3 the canon's 5γ²r ≤ ½ is enough [arithmetic: 5 + 1.5·(1/3) = 5.5 ≤ 6.5]).
 (C-9) Balaban's (1.9) condition with enlarged O(1): O(1)((1 + C_H²B_3²)M^6R_k(ε_k + α_{0,k} + α_{1,k}) + e^{−R_k}) ≤ γ_0/(4d(100M)^5) for all g_k ≤ γ. Type: γ small, given M, B_3, γ_0 (D3_NEW4 §4 states the same without α).
 (D1) n·(b_k/(2λ))² ≤ 1 with b_k = C_ΔC_H²B_3²[θ_c + (1 + θ_c)·2(d − 1)C_1a_k], λ = γ_0/(8d(100M)^5). Since a_k = O(M^6R_k(ε_k + α_k)) → 0 and θ_c ≤ 6.5g_k²r, this is γ ≤ γ_D1(M, d, γ_0, B_3, r): sup_{g≤γ} of a function g^a·polylog ≤ 1.
 (D2) s_F = e^{s_σ+s_L+s_V} − 1 + 2ne^{−λM_0²p_0(g_k)²} ≤ 0.195, with s_V = O(n_pM_0³B_3³g_kp_0³), s_L = O(B_3M_0A_0²p_0²e^{−R_k}M^4 + θ_cn_pa_kB_3M_0p_0), s_σ = O(nM_0²g_k²p_0²). All → 0 as g_k → 0 (p_0 polylog, R_k → ∞ polylog, e^{−λM_0²p_0²} → 0 since p_0(g) → ∞). Type: γ ≤ γ_D2(M, d, γ_0, B_3, M_0, A_0, C_R) by sup over g ≤ γ.
 Output: D_k(ω; U) ≠ 0 and holomorphic on 𝒫 × U^c_k; |log D_k(ω; U) − log D_k(1; U)| ≤ s_0 + nC_ΔC_H²B_3²θ_c/(2λ) + 3s_F =: Δ_den, with s_0 = θ_cg_k^{−2}C_0a_k²|supp ζ_0| = (δ_r + (3/2)τ)·C_0a_k²|supp ζ_0| (uses θ_cg_k^{−2} ≤ 6.5r — the absolute shift, no 1/g_k² survives). Canon slot: "Δ_den ≤ 1" is implied by (C-θ), (D1), (D2) and γ small, and it is the only number later steps need (the moved term under choice A, or the ratio change under choice B, is e^{±Δ_den}).

Status of (O3-hol) [R, named exactly]. Lemma O3-den takes the weight ω as a free complex variable. The FX chain needs ω = ω(f) with f on the source polydisc. That link is N3 of the ledger (the N3 row): c ↦ u_k(c) holomorphic on Q = {|Re c| ≤ 2r, |Im c| ≤ τ} with Σ_{j≤K}|B_j′(c)| ≤ ½ on Q (SOURCES_HBETA_N3 §2, (N3′)). SOURCES_HBETA_N3 §4 proves N3 given (I), (E), real (H-hist), (H-hol) [β_j holomorphic in the couplings on the relative polydisc P_ρ(x) with |β_j| ≤ M], (H-hist_C), (B-hol); the ledger's N3 row lists these as the B-rows "B12, (E), B13 + B15, B16 + B17, B14" (ids as of today; cite the N3 row, not the ids). Nothing in Lemma O3-den shortens that list: a Gaussian/determinant estimate controls the denominator at FIXED weight; the dependence of the weight on the source through K steps of the flow is a different statement, and the failing inequality without (H-hol) is exactly Σ_{j≤K}|B_j′(c)| ≤ ½ for complex c (the Cauchy route gives per-step 1 + O(g_j²), whose product diverges like (log ε^{−1})^{C/β}, SOURCES_HBETA_N3 §3). I checked whether the sourced flow could be run with ω as the state variable instead of u_k(c) (so that holomorphy in f is automatic): it can (the cutoffs and thresholds are set by the real reference trajectory, D3_NEW4 §1), and each step is then holomorphic in ω by Lemma O3-den + (O3-up); but the BOUND |ω_{k}(f) − 1| ≤ θ_c after k steps is again the summed derivative bound. So the obstruction is not the denominator; it is the history bound, which the ledger already names.

Verdict Task A. O3 (as stated in A1) is PROVED relative to:
 [V/P] (1.1)–(1.2), (1.5)–(1.9), (1.10)–(1.11) structure (pp. 356–359 images); the T′ upper bounds (O3-up): FX_O23 §5 + VERIFY (pp. 380–381 images re-read, confirmed);
 [R] (1.7) itself (CMP 116/119 (1.67) [10]) and (1.8) (Lemma 2.4 of [11]), as printed; Balaban's G^c sentence "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k})" (p. 358) used for (1.7) only — his asserted LOWER bound for the complex denominator is not used (Remark in A3 proves it);
 [I] n ≤ d(100M)^d; n_p, |supp ζ_0| ≤ C_p(100MR_k)^d; ‖H_{1,k}‖ ≤ C_HB_3; 0 ≤ ζ_0 ≤ 1; the plaquette split (4.1) = CMP 99 (3.10) (D3_NEW4 VERIFY); N2 (|P_p| ≤ O(ε_k²) on supp χ, FX_O23_VERIFY item 3) is NOT needed by the Gaussian route (it is replaced by the cutoff |B′| ≤ M_0p_0 and a_k); the (1.68)–(1.69) bookkeeping of a bounded local change;
 [R, open] N3 = (O3-hol), i.e. the N3 row of TRUST_LEDGER, reduced in SOURCES_HBETA_N3 §4 to (H-hol) + (H-hist_C) + (B-hol).
 Not OBSTRUCTED: every inequality of A3 closes with explicit constants. The one open input is the same one the FX row already carries ("Remaining: [N3]"). Gain over the ledger: (i) the complex-FIELD denominator (needed for the field-Cauchy estimates at later scales) is now covered, with Balaban's asserted lower bound proved rather than assumed; (ii) the conditions are explicit (C-θ), (C-9), (D1), (D2); (iii) N2 is no longer on the (O3-den) chain.

# TASK B — the complex averaged-link bound (AL-c)

## B0. Inputs read [V]

THM39_FULL.md §4.4 ((AL′) with K′ = c_3 + πA_Lc_P/(L(L − 1)); (AL′-ax) with K″), §7.1–7.5 ((AL-c) REDUCED; c_P′ = 2 + 6e²(2c_3 + 1); k_av^c, K_av := 2(1 + πA_Lc_P′/(L(L − 1))); the five open items); SOURCES_F22_VERIFY.md §7 (c_P′ confirmed; items (i)–(v)); SOURCES_F19_WGRATE_VERIFY.md §A1–A5 (the (AL′) re-derivation on the CMP 98 images; A_L = 4d(d + 1)L² as the lasso area; |log g| ≤ (π/2)|g − 1| for unitary g); SOURCES_A18_REGULAR.md 6.1 Lemma Q (I-Q1: transport cost ‖Ad − 1‖ ≤ c(d, L)αL^{j+1−k}; "Complex U′U: the extra transport factors are Ad(e^{iηA′})").
CMP 98 pp. 19–26 (PDF 3–10, 300 dpi images, read this session): (15) one-step average Ū_c = exp[iΣ_{x∈B(c−)}L^{−d}(1/i)log U(Γ_{c,x})U(c)^{−1}]U(c); p. 20 "we will consider complexified algebras and groups … G^c … we will need only a neighborhood of G"; (19)–(20) operator norm |X| and |XY| ≤ |X||Y|; (21) log X := Σ(−1)^{n+1}(X − 1)^n/n for |X − 1| < 1, "analytic functions of complex matrices"; (22)–(25) the spectral log for unitary U and |log U| ≤ (π/2)|U − 1|; (26)–(27) for "arbitrary complex matrices X" with |X − 1| ≤ ½: |log X| ≤ 2|X − 1|, |X − 1| ≤ 2|log X|; (28)–(31) Z(u, v) = log e^{uX}e^{vY} analytic for |uX|, |vY| < 1/8, BCH, |Z − X − Y| ≤ 2|X||Y| for |X|, |Y| ≤ c_1; (32)–(41) derivative formulas; (42)–(43) the k-th order average, "local: Ū^k_c depends only on U_b, b ⊂ B^k(c−) ∪ B^k(c+)", covariance (Ū^u)_c = u(c−)Ū_cu^{−1}(c+) proved by unitary equivalence of U^u(Γ)U^u(c)^{−1} and U(Γ)U(c)^{−1}; (44) |V(∂p) − 1| < α_0 on the unit lattice; pp. 24–25 the proof of Prop. 1: axial gauge v_0 from the corner y with V_0(Γ_{y,x}) = 1, (45) |V_0(∂p) − 1| = |V(∂p) − 1| (uses unitarity of v_0), |V_{0,b} − 1| < |b_− − y|α_0 ≤ dLα_0, V_{0,b} = e^{iA_b}, |A_b| < 2dLα_0, |V_0(Γ_{c,x}) − 1| < (2d + 1)LdLα_0, the (21)-log, (31), the identity (48), (49), (50) |V̄_0(∂p′) − 1| < L²α_0 + O(1)(L²α_0)²; p. 26 Prop. 1 ((51), C_0 depends on d, c′_2 on d and L; neither is printed as a number), (52)–(53) the induction, Prop. 2 ((54): α_0 ≤ c_2 = min{1/(3C_0), ½c′_2} ⇒ |Ū^k(∂p) − 1| < α_0 + 2C_0α_0² < 2α_0), locality "(52) for p ⊂ B^k(x) ∪ … ∪ B^k(w)".

## B1. Tools for non-unitary matrices [P; all elementary]

(T1) Non-unitarity measure. For an invertible complex N×N matrix g put κ(g) := max{log|g|, log|g^{−1}|} ≥ 0 (operator norm (19)). Then κ(g_1g_2) ≤ κ(g_1) + κ(g_2); κ(g^{−1}) = κ(g); κ(ugv) = κ(g) for unitary u, v; κ(g) = 0 iff g is unitary; ‖Ad(g)‖ := sup_{|X|=1}|gXg^{−1}| ≤ |g||g^{−1}| ≤ e^{2κ(g)}; |g| ≤ e^{κ(g)}. [P: submultiplicativity of the operator norm.]
(T2) Log-norm bound. For Z = Z_h + iZ_a with Z_h := (Z + Z*)/2, Z_a := (Z − Z*)/(2i) Hermitian: |e^{iZ}| ≤ e^{|Z_a|} and |e^{−iZ}| ≤ e^{|Z_a|}, hence κ(e^{iZ}) ≤ |Z_a|. [P: for any M, |e^{M}| ≤ e^{λ_max((M + M*)/2)} (Gronwall for d/dt|e^{tM}x|²); here (iZ + (iZ)*)/2 = −Z_a.] Also |Z_a| ≤ |Z| and, if Z = Z_0 + G with Z_0 Hermitian, Z_a = G_a and |Z_a| ≤ |G|.
(T3) Series log under similarity. If |X − 1| < 1 and v is any invertible matrix, then log(vXv^{−1}) := Σ_n(−1)^{n+1}(v(X − 1)v^{−1})^n/n converges and equals v(log X)v^{−1} (termwise; |v(X − 1)^nv^{−1}| ≤ |v||v^{−1}||X − 1|^n). So CMP 98's covariance (11)/(43) holds for G^c-valued gauge transformations u whenever the untransformed arguments U(Γ_{c,x})U(c)^{−1} satisfy |· − 1| < 1: (Ū^u)_c = u(c−)Ū_cu^{−1}(c+). [P; Balaban's proof on p. 24 uses unitary equivalence and the spectral log (22); for G^c one uses (21) instead, which Balaban also allows ("both functions are analytic functions of complex matrices", p. 21).]
(T4) Products near 1. For matrices a_1, …, a_m with s := Σ_k|a_k − 1| ≤ 1: |a_1⋯a_m − 1| ≤ Π(1 + |a_k − 1|) − 1 ≤ e^s − 1 ≤ s(1 + s). For s ≤ ¼: ≤ 1.14s. [P: e^s − 1 ≤ s + s² for s ≤ 1.79; (e^{1/4} − 1)/(1/4) = 1.136.]
(T5) Schwarz. If G is analytic on |t| < R, G(0) = 0, |G| ≤ M_G there, then |G(t)| ≤ M_G|t|/R. [standard]
(T6) (26) for complex X with |X − 1| ≤ ½: |log X| ≤ 2|X − 1| [V p. 22].

Convention. ℓ := L^jη (block scale of level j), λ_i := L^iη/ℓ = L^{i−j} (level-i spacing in ℓ-units), i ≤ j. m := Mα_0. The real field U = e^{iηA} obeys (3.35): |A| ≤ c_3m/ℓ, |∇^ηA| ≤ c_3m/ℓ². The complex field is V := U′U = e^{iηA′}U with A′ ∈ 𝔤^c, |A′| ≤ β/ℓ, |∇^η_UA′| ≤ β/ℓ² (THM39 7.1; β plays the role of b_1, and the lemma below is stated for every β ≤ k_1 at once, which the proof needs).

## B2. Complex Proposition 1 (one averaging step at a non-unitary configuration) [P rel. CMP 98 pp. 24–26 [V] and the unprinted constants C_0, c′_2 of Prop. 1]

Statement. Let V be a G^c-valued configuration on a unit lattice Ω′, p′ ⊂ Ω′^{(1)} a block plaquette, Δ(p′) = B(y_0) ∪ B(y_1) ∪ B(y_2) ∪ B(y) its four corner blocks ((46) [V]). Assume
 |V(∂p) − 1| < a for p ⊂ Δ(p′),  κ(V_b) ≤ κ_V for b ⊂ Δ(p′),  4dLκ_V ≤ log 2,  a ≤ c′_2{}^c.
Then |V̄(∂p′) − 1| < e^{4dLκ_V}(L²a + C_0^c(L²a)²), with C_0^c, c′_2{}^c the constants of Balaban's Prop. 1 enlarged/reduced by a factor ≤ 8 [I: the factor; see the proof].

Proof (Balaban's pp. 24–25, with the non-unitary cost tracked).
 (1) Axial gauge. v_0(x) := V(Γ_{y,x}) ∈ G^c for x in the 2^d blocks around y (v_0(y) = 1), the contours Γ_{y,x} of the page (|x − y|_1 ≤ dL). Then V_0 := V^{v_0} satisfies V_0(Γ_{y,x}) = 1 (same algebra as on p. 24; G^c is a group). κ(v_0(x)) ≤ dLκ_V by (T1).
 (2) Plaquettes in the new gauge. V_0(∂p) = v_0(x_p)V(∂p)v_0(x_p)^{−1} (x_p the base corner), so |V_0(∂p) − 1| ≤ e^{2dLκ_V}a =: a′ by (T1). (This replaces (45), which used |v_0| = 1.)
 (3) Bonds. V_0(x, x + e_1) = 1; V_0(x, x + e_μ) is the product of ≤ |x_1 − y_1| + … + |x_{μ−1} − y_{μ−1}| ≤ dL plaquette holonomies in the V_0 gauge (the ladder identity on p. 24, an identity in any group). By (T4) with s ≤ dLa′ ≤ ¼: |V_{0,b} − 1| < 1.14|b_− − y|a′ ≤ 1.14dLa′. Then V_{0,b} = e^{iA_b} with |A_b| ≤ 2|V_{0,b} − 1| ≤ 2.3dLa′ by (T6) (complex X allowed [V p. 22]).
 (4) Contours. |V_0(Γ_{c,x}) − 1| ≤ 1.14Σ_{b⊂Γ}|V_{0,b} − 1| < 1.3(2d + 1)LdLa′ (T4; p. 25 has the same with constant 1), and |V_0(Γ_{c,x}) − 1 − iA(Γ_{c,x})| ≤ e^{S} − 1 − S ≤ ½S²e^{S} with S := Σ_{b⊂Γ}|A_b| (product of exponentials; p. 25 has ½S², unitary). The (21)-log of V_0(Γ_{c,x} ∪ (−c)): |(1/i)log V_0(Γ ∪ (−c)) − A(Γ ∪ (−c))| < O(1)(L²a′)², from (T6) and |log X − (X − 1)| ≤ |X − 1|²/(1 − |X − 1|). (31) for complex X, Y [V p. 22: "analytic function of uX, vY"].
 (5) (48) is an identity in the Lie algebra 𝔤^c (linear). (49) as in (4). (50): |V̄_0(∂p′) − 1| < L²a′ + C_0^c(L²a′)².
 (6) Undo the gauge: V̄(∂p′) = v_0(y_0)^{−1}V̄_0(∂p′)v_0(y_0), by the G^c covariance (T3) of the averaging (its arguments satisfy |V(Γ_{c,x})V(c)^{−1} − 1| < 1 by (4)). So |V̄(∂p′) − 1| ≤ e^{2dLκ_V}|V̄_0(∂p′) − 1| ≤ e^{4dLκ_V}(L²a + C_0^c(L²a)²·e^{2dLκ_V}), and e^{2dLκ_V} ≤ √2 is absorbed in C_0^c. ∎
 Where the factor 8 comes from [I]: steps (3), (4) each lose a factor ≤ 1.3 against the unitary proof (T4 and e^{S} ≤ 1.3 for S ≤ ¼), step (6) a factor ≤ √2 on the quadratic term; the O(1) of (50) is a product of such steps, each degraded by ≤ 1.3–1.5. Since C_0 is unprinted, the exact factor cannot be checked against the page; 8 is a safe upper bound for three losses of ≤ 1.5 plus √2. The range c′_2{}^c: every smallness condition in steps (3)–(4) holds with a replaced by a′ ≤ √2·a, and the (T4)/(T6) conditions s ≤ ¼, |X − 1| ≤ ½ hold if a′·2(d + 1)L·dL·1.3 ≤ ¼; so c′_2{}^c ≥ c′_2/8 for L ≥ 2 (these conditions are the ones Balaban's c′_2(d, L) encodes, with the same (d, L)-dependence).

## B3. Complex Proposition 2 (k-fold average) [P rel. B2]

Setting. V on the η-lattice, η = L^{−j}ℓ (so λ_0 = η/ℓ), with |V(∂p) − 1| < α_cλ_0² on the fine plaquettes of the relevant blocks, and non-unitarity profile κ_i := sup_b κ(Ū^i_b) for the level-i links, 0 ≤ i < j. Put F := Σ_{i<j}4dLκ_i.
Claim. If F ≤ log 2, C_0^cα_c ≤ 1/12, and 3α_c ≤ c′_2{}^c, then for every level i ≤ j and every level-i plaquette p (in the block cover):
  |Ū^i(∂p) − 1| < 3α_cλ_i².
Proof. Write a_i := sup|Ū^i(∂p) − 1|/λ_i². B2 at level i (unit = level-i spacing, a = a_iλ_i², κ_V = κ_i): a_{i+1}λ_{i+1}² < e^{4dLκ_i}(L²a_iλ_i² + C_0^c(L²a_iλ_i²)²) = e^{4dLκ_i}a_iλ_{i+1}²(1 + C_0^ca_iλ_{i+1}²). So a_{i+1} < e^{4dLκ_i}a_i(1 + C_0^ca_iλ_{i+1}²). Unrolling with the inductive bound a_l ≤ 3α_c and Σ_{l≤j}λ_l² ≤ 1/(1 − L^{−2}) ≤ 4/3:
  a_i ≤ α_c·e^{F}·exp(C_0^c·3α_c·4/3) = α_c·e^{F}·e^{4C_0^cα_c} ≤ α_c·2·e^{1/3} = 2.79α_c < 3α_c,
using F ≤ log 2 and C_0^cα_c ≤ 1/12. ∎ (Balaban's constant 2 is the case F = 0 with the sharper bookkeeping of (53); the 3 here is a convenience.)
Locality: as on p. 26, only the fine plaquettes in B^i(corners) enter at each level, so the hypothesis is needed on the blocks of the corners only [V p. 26 last paragraph].

## B4. Lemma AL-c (averaged links at complex points: analyticity, link bound, non-unitarity ∝ b_1) [P rel. B2, B3, the (15) reading of U(c) [I], the lasso count A_L [I, THM39 (AL′)(c)]]

Constants (all (d, L) only; c_3 = 12L², A_L = 4d(d + 1)L², c_P = 2c_3 + 6e²c_3², c_P′ = 2 + 6e²(2c_3 + 1) as in THM39; c_2^c := min{1/(12C_0^c), c′_2{}^c/3} from B3):
  K_m := 2.6c_3 + 27.6A_Lc_P/(L(L − 1)),   K_β := 2.6 + 27.6A_Lc_P′/(L(L − 1)),
  k_1 := min{ 1/(48A_Lc_P′), 0.12/K_β, 0.02/(dLK_β), c_2^c/(2c_P′), 1/4 },
  a_AL^c := min{ 1/(48A_Lc_P), 0.12/K_m, 0.02/(dLK_m), c_2^c/(2c_P), 1/(4c_3) },
  K_av := 4K_β + 4K_m·a_AL^c/k_1,   c_N := 4K_av.
(0.02 = 0.34/16 rounded down; 0.34 = ½ log 2 rounded down.)

Statement. Let m = Mα_0 ≤ a_AL^c and 0 < β ≤ k_1. For V = e^{iηA′}U as in B1 (|A′| ≤ β/ℓ, |∇A′| ≤ β/ℓ²) and every level i ≤ j, on the block cover of □(y):
 (A) analyticity: every log in the recursion (43) converges (its argument is within 0.29 of 1), so Ū^i_b(V) is an analytic function of A′ on 𝒰(β);
 (C) curvature: |Ū^i(∂p) − 1| ≤ 3α_cλ_i², α_c := c_Pm + c_P′β;
 (L) links: |Ū^i_b − 1| ≤ (K_mm + K_ββ)λ_i;
 (K) non-unitarity: κ(Ū^i_b) ≤ K_avβλ_i; hence ‖Ad(Ū^i_b)‖ = |R(Ū^i_b)| ≤ e^{2K_avL^{i−j}β}, and for the composite transport along Γ^{(j)}_{y,x} (≤ dL level-i links at each level i < j) ‖Ad(Ū(Γ))‖ ≤ e^{2dLK_avβ/(L − 1)}.
 The constants do not depend on j, M, η, or on β beyond the factor written.

Proof. Induction on i, for all β′ ∈ ]0, k_1] simultaneously (the Schwarz step at radius β uses the hypothesis at radius k_1).
 Level 0. (C_0): |V(∂p) − 1| ≤ |U(∂p) − 1| + |V(∂p) − U(∂p)| ≤ (c_Pm + c_P′β)λ_0² [V: F22_VERIFY §7 and THM39 7.3 for the two terms; the second is the non-unitary plaquette defect 2η²|∇A′| + 6e²η²|A′|(2|A| + |A′|)]. (L_0): |V_b − 1| ≤ e^{η(|A| + |A′|)} − 1 ≤ 1.3(c_3m + β)λ_0 since (c_3m + β)λ_0 ≤ ½. (K_0): κ(V_b) = κ(e^{iηA′}) ≤ η|A′_a| ≤ βλ_0 ≤ K_avβλ_0 by (T2).
 Step i → i + 1, for (C) and (L) at a given β′ ≤ k_1, assuming (C_l), (L_l), (K_l) for l ≤ i (at all radii ≤ k_1).
 (a) Lasso. For a level-(i+1) bond c and x ∈ B(c−): g_x := Ū^i(Γ_{c,x})Ū^i(c)^{−1}, with Ū^i(c) the product of the L level-i links of c [I, the (15) reading; p. 25's display exp[iA(c) + …] supports it]. Lattice Stokes: g_x = Π_{k≤m_x}h_kp_kh_k^{−1}, m_x ≤ A_L, p_k level-i plaquette holonomies, h_k products of ≤ (d + 1)L level-i links [I, THM39 (AL′)(c); the identity holds in any group]. By (K_i) and (T1): κ(h_k) ≤ (d + 1)L·K_avβ′λ_i ≤ 2dLK_avk_1 =: κ_h, and e^{2κ_h} ≤ 2 because 4dLK_avk_1 = 16dL(K_βk_1 + K_ma_AL^c) ≤ 0.68 ≤ log 2 by the 0.02/(dLK_·) entries. So |q_k − 1| ≤ 2|p_k − 1| ≤ 6α_cλ_i² with q_k := h_kp_kh_k^{−1}, and Σ_k|q_k − 1| ≤ 6A_Lα_cλ_i² ≤ ¼ (A_Lα_c ≤ 1/24 by the 1/(48A_Lc_·) entries). By (T4): |g_x − 1| ≤ 1.14·6A_Lα_cλ_i² ≤ 0.29 < ½, which gives (A), and by (T6) |Y_c| ≤ 2 max_x|g_x − 1| ≤ 13.8A_Lα_cλ_i², Y_c := Σ_xL^{−d}(1/i)log g_x.
 (b) Links. Ū^{i+1}_c = e^{iY_c}Ū^i(c). By (T4) applied to the L + 1 factors (|e^{iY_c} − 1| ≤ e^{|Y_c|} − 1): W_{i+1} ≤ e^{s_i} − 1 ≤ s_i(1 + s_i), s_i := LW_i + |Y_c|, where W_i := (K_mm + K_ββ′)λ_i bounds the level-i links. In w_i := W_i/λ_i: w_{i+1} ≤ (w_i + 13.8A_Lα_cλ_i/L)(1 + s_i). Unrolling: w_i ≤ [w_0 + 13.8A_Lα_cΣ_{l<i}λ_l/L]·exp(Σ_{l<i}s_l) with Σ_{l<j}λ_l ≤ 1/(L − 1), Σ_{l<j}λ_l² ≤ 1/(L² − 1) ≤ 1/3, w_0 ≤ 1.3(c_3m + β′). The exponent: Σs_l ≤ L(K_mm + K_ββ′)/(L − 1) + 13.8A_Lα_c/3 ≤ 2·0.24 + 4.6/24 ≤ 0.68 ≤ log 2 (0.12 entries; A_Lα_c ≤ 1/24). So w_i ≤ 2[1.3(c_3m + β′) + 13.8A_L(c_Pm + c_P′β′)/(L(L − 1))] = K_mm + K_ββ′. This is (L_{i+1}); also W_i ≤ 0.24 < ½, as (T6) and the κ ≤ 2W step below need.
 (c) Curvature. B3 with the profile κ_l ≤ K_avβ′λ_l: F = 4dLK_avβ′Σ_{l<j}λ_l ≤ 4dLK_avk_1/(L − 1) ≤ log 2; C_0^cα_c ≤ 1/12 and 3α_c ≤ c′_2{}^c by the c_2^c/(2c_·) entries. So (C_{i+1}) holds with 3α_c.
 (d) Non-unitarity by Schwarz. Fix β ≤ k_1 and A′ with the β-bounds. For t ∈ ℂ, |t| < R := k_1/β (≥ 1), the configuration V(t) := e^{itηA′}U has A″ = tA′ with |A″| ≤ |t|β/ℓ ≤ k_1/ℓ, |∇A″| ≤ k_1/ℓ², so (A), (L_{i+1}) at radius β′ = |t|β ≤ k_1 apply: t ↦ Ū^{i+1}_b(V(t)) is analytic on |t| < R (compositions of exp, products, and convergent (21)-logs, by (A)), and |Ū^{i+1}_b(V(t)) − 1| ≤ (K_mm + K_βk_1)λ_{i+1} ≤ 0.24. Put Z(t) := (1/i)log Ū^{i+1}_b(V(t)) (analytic, |Z(t)| ≤ 2·0.24 by (T6)) and G(t) := Z(t) − Z(0). Z(0) is Hermitian (V(0) = U unitary; the (21)-log of a unitary matrix within ½ of 1 is i·Hermitian). |G| ≤ 4(K_mm + K_βk_1)λ_{i+1} on |t| < R and G(0) = 0, so (T5) at t = 1:
   |G(1)| ≤ 4(K_mm + K_βk_1)λ_{i+1}·β/k_1 ≤ (4K_β + 4K_ma_AL^c/k_1)βλ_{i+1} = K_avβλ_{i+1}.
 By (T2), κ(Ū^{i+1}_b) = κ(e^{iZ(1)}) ≤ |Z(1)_a| = |G(1)_a| ≤ |G(1)| ≤ K_avβλ_{i+1}. This is (K_{i+1}), at every β ≤ k_1. The Ad bound and the composite transport follow from (T1): ‖Ad(Ū(Γ))‖ ≤ Π_{i<j}e^{2dL·K_avβλ_i} ≤ e^{2dLK_avβ/(L − 1)}. ∎

Remarks. (1) The linearity in β of (K) is exact (Schwarz), not a first-order expansion: this settles THM39's item (iii) "beyond first order". (2) The real part of the field enters (K) only through K_ma_AL^c/k_1, a (d, L) constant: the non-unitarity of the averaged links vanishes as β → 0, uniformly in Mα_0 ≤ a_AL^c. (3) The conjugation cost is e^{2κ(h)} ≤ e^{4dLK_avβ} =: e^{c_NdLβ}, so c_N = 4K_av, the slot of THM39 7.3. (4) The real range a_AL^c is smaller than THM39's ½a_AL by (d, L) factors (the 0.02/(dLK_m) entry is the binding one: ≈ (L − 1)/(2·10⁷d³L⁶) against ½a_AL ≈ 1/(5·10⁵d²L⁶)); keeping ½a_AL would need the conjugation costs e^{O(dLK_m·a_AL)} carried as constants instead of ≤ 2, which is possible but not done here.

## B5. The five open items of SOURCES_F22_VERIFY §7, the canon lines, and the verdict

(i) Complex form of CMP 98 Props. 1/2: PROVED (B2, B3) with the non-unitary cost e^{4dLκ_V} per step and the cumulative factor e^{F}, F = Σ4dLκ_i ≤ log 2. (44) with G^c-valued V is admissible once κ(V_b) is tracked; the only unitary-specific step of Balaban's proof is (45), replaced by B2 step (2). Constants: C_0^c ≤ 8C_0, c′_2{}^c ≥ c′_2/8 [I, factor], both still (d, L) slots because C_0, c′_2 are unprinted.
(ii) c_N computed: c_N = 4K_av with K_av = 4K_β + 4K_ma_AL^c/k_1, K_β = 2.6 + 27.6A_Lc_P′/(L(L − 1)), K_m = 2.6c_3 + 27.6A_Lc_P/(L(L − 1)); all (d, L) only. The conjugating factors h (≤ (d + 1)L level-i links) have ‖Ad(h)‖ ≤ e^{2κ(h)} ≤ e^{c_NdLβ}.
(iii) Linearity in b_1 beyond first order: PROVED exactly by the Schwarz step B4(d); no expansion of the log is used.
(iv) Real and A′ curvature sources: no linearity of Prop. 2 in its source is needed; Prop. 2 is applied once to the total plaquette defect α_c = c_Pm + c_P′β (triangle inequality on |V(∂p) − 1|, B4 level 0). Settled.
(v) The (15) reading of U(c) (product of the L finer links of c): still [I]; supported by p. 25's display exp[iA(c) + O((L²α_0)²)] with A(c) the bond sum, which is what the reading gives. Not a page statement.
Comparison with THM39 7.3. Its K_av := 2(1 + πA_Lc_P′/(L(L − 1))) was the unitary recursion with a factor 2 for the conjugation; the proved K_av = 4K_β + 4K_ma_AL^c/k_1 is larger (the 2.6/27.6 constants come from the complex product bounds (T4)/(T6) in place of |Πu − 1| ≤ Σ|u − 1| and |log u| ≤ (π/2)|u − 1|; the second term is the Schwarz price of the real field). Its k_av^c = min{(log 2)/(c_NdL), c_2/(2c_P′), 1/(8A_Lc_P′)} is replaced by k_1 (same three kinds of entries, with the explicit numbers of B4, plus β ≤ ¼). Its real-range entry "Mα_0 ≤ ½a_AL" is replaced by Mα_0 ≤ a_AL^c (Remark 4 of B4). Its claim "K_av ≤ 2K′" does not survive (K_av here is not comparable to 2K′); THM39's downstream use needs only a finite (d, L) constant c̄_Γ = dK_avL/(L − 1), which is what B4(K) provides with the new K_av.

Canon lines in final form (complex rows; dependency order after c_3, A_L, c_P, K′, c_2):
 C1. c_P′ := 2 + 6e²(2c_3 + 1) (unchanged, [V F22_VERIFY §7]).
 C2. C_0^c := 8C_0, c′_2{}^c := c′_2/8 (slots; C_0, c′_2 = Balaban's unprinted Prop. 1 constants); c_2^c := min{1/(12C_0^c), c′_2{}^c/3}.
 C3. K_m := 2.6c_3 + 27.6A_Lc_P/(L(L − 1)); K_β := 2.6 + 27.6A_Lc_P′/(L(L − 1)).
 C4. k_av^c := k_1 = min{1/(48A_Lc_P′), 0.12/K_β, 0.02/(dLK_β), c_2^c/(2c_P′), 1/4}.
 C5. a_AL^c := min{1/(48A_Lc_P), 0.12/K_m, 0.02/(dLK_m), c_2^c/(2c_P), 1/(4c_3)}; complex rows require Mα_0 ≤ a_AL^c (replaces ½a_AL).
 C6. K_av := 4K_β + 4K_m a_AL^c/k_av^c; c_N := 4K_av; c̄_Γ := dK_avL/(L − 1) (THM39 7.3 unchanged in form).
 C7. b_1^{37} ≤ k_av^c (THM39 7.4 radius), as before.
Conditions these rows impose: on b_1 only through C4; on Mα_0 through C5 (binding entry 0.02/(dLK_m)); no condition on M, η, j.

Verdict Task B. (AL-c) PROVED relative to [CMP 98 Prop. 1 proof pp. 24–26 [V], with its unprinted constants C_0, c′_2 as (d, L) slots; the (15)/(43) reading of U(c) [I]; the lasso count A_L and the dL-per-level contour count [I, THM39 (AL′)(c), F19_WGRATE_VERIFY A1(c)]; F22_VERIFY §7's c_P′ [V]]. Inputs tagged [V] on the images this session: (15), (21), (26)–(27), (31), (42)–(45), (48)–(54). Numerical check (numerics/fable_o3_alc.py, Mac, < 20 s): (T1)–(T3) on 300 random 2×2 samples and the Schwarz inequality κ(e^{iY(1)}) ≤ sup_{|t|=R}|Y(t) − Y(0)|/R on 100 random six-factor products (worst ratio 0.945 < 1).

# Summary (both tasks)

Task A. O3, stated in A1 as (O3-den) + (O3-up) + (O3-hol): PROVED rel. [N3 = the TRUST_LEDGER N3 row (c ↦ u_k(c) holomorphic on Q with Σ_{j≤K}|B_j′| ≤ ½), reduced in SOURCES_HBETA_N3 §4; Balaban's (1.7)–(1.8) as printed and his G^c sentence on p. 358 for (1.7); readings n ≤ d(100M)^d, n_p ≤ C_p(100MR_k)^d, ‖H_{1,k}‖ ≤ C_HB_3, 0 ≤ ζ_0 ≤ 1; (1.68)–(1.69) bookkeeping of a bounded local change]. New: Lemma O3-den (A3) covers complex weight AND complex field by a Gaussian/determinant estimate, proves Balaban's asserted complex lower bound (1.10)–(1.11), removes N2 from the (O3-den) chain, and gives the conditions (C-θ) 6.5γ²r ≤ ½, (C-9), (D1), (D2) (A5). Not obstructed; the single open input is the one the FX row already carries.
Task B. (AL-c) PROVED rel. [CMP 98 Prop. 1 proof [V] with C_0, c′_2 as slots; (15) reading [I]; lasso count [I]]. c_N = 4K_av, K_av = 4K_β + 4K_ma_AL^c/k_av^c, k_av^c = k_1 (C4), real range a_AL^c (C5) replacing ½a_AL. Items (i)–(iv) settled; (v) stays [I].
Files: FABLE_O3_ALC.md (this), numerics/fable_o3_det.py, numerics/fable_o3_alc.py. No existing file edited.
