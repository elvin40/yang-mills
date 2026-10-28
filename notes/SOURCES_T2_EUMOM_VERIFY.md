IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_EUMOM_VERIFY — independent check of SOURCES_T2_EUMOM.md (2026-10-28)
Item EUMOM, VERIFY. Status: complete.
Read: SOURCES_T2_EUMOM.md (full), SOURCES_EU.md (full), SOURCES_EU_VERIFY.md (full), numerics/k0_d.py, numerics/kappa_d.py (function T only), numerics/t2_eumom_n7.py, numerics/t2_eumom_strip.py (read only); Balaban CMP 95 PDF pp. 18–20 (journal pp. 34–36), page images.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). ONLINE_SWEEP §2 not read.
New script: numerics/t2_eumomv_check.py (3.8 s). No existing file modified.
Tags: [P] proved/rederived here; [R] reduced to a named input; [I] inference not checked line by line; [V] checked on a Balaban page (image or text layer, stated); [N] numerics rerun here.

Plan.
1. Balaban quotes (page images).
2. Check (1): the formula for E_0 vs SOURCES_EU §3–§4.1 and k0_d.py; symbol facts (S1)–(S4); identity E_0 = G_aQ*S_a^{-1}; lower bounds.
3. Check (2): Poincaré, Combes–Thomas, k-independence of constants.
4. Check (3): symbol regularity and gradient bounds; pointwise lemma; Theorem 5.2.
5. Check (4): moment sums, coset sums, Γ_j.
6. Check (5): numerics rerun and consistency with N = 3, 5 numbers.
7. Status of SOURCES_EU_VERIFY open item (i).
8. Grades.

## 1. Balaban quotes (page images, CMP 95 PDF pp. 18–20 = journal pp. 34–36)
[V image] CMP 95 p. 34: (1.100) "a^{−1}(φ − 1)φ^{−1} ≦ QGQ* ≦ a^{−1}I." (1.103) "H_kB = GQ*(QGQ*)^{−1}B." Next sentence: "This representation allows us to reduce a proof of properties of H_k to the corresponding properties of G." (1.101) is the momentum symbol of a^{−1}(φ − 1)/φ, built from Σ_{l′}|u(p′ + l′)|²|v_μ(p′ + l′)|²Δ_0(p′)/Δ(p′ + l′). It has the same alias sum as the T of SOURCES_T2_EUMOM §1.4.
[V image] CMP 95 p. 35, Proposition 1.2, (1.110): "|(GJ)(x)|, |(∇GJ)(x)|, |(G∇*J)(x)|, |(ΔGJ)(x)| ≦ O(1)e^{−δ_0|y−y′|}|J|" for x ∈ Δ(y), supp J ⊂ Δ̃(y′), "with the constant O(1) depending on d only". The quote in SOURCES_T2_EUMOM §1.5 is accurate.
[V image] CMP 95 p. 36: "Probably the simplest proof of the exponential decay properties can be obtained by relating G on the torus to G on the whole lattice ηZ^d in the usual way, and then proving that the operator e^{−⟨q,x⟩}Δ_a e^{⟨q,x⟩} − Δ_a is a small perturbation of Δ_a for vectors q ∈ R^d sufficiently small. Instead we construct a random walk representation". Accurate.
The derivation uses these quotes only as context. Its proof does not rest on them: §2.2 proves the scalar (1.103) identity directly. So no Balaban estimate is load-bearing [P, checked in §2 below]. The "independent of a … e.g. a = 1" quote (text layer l. 468) is marked "not used"; I did not check it.

## 2. Check (1): the formula for E_0, symbols, identity, lower bounds
2.1 Weight. Convolving the cube average (N^{−d} on {0..N−1}^d) with the line average (N^{−1} on {0..N−1}e_μ) gives N^{−(d−1)} transversally times cnt(m)/N² along μ, cnt(m) = min(m + 1, 2N − 1 − m), m ∈ {0..2N−2}. Total w(z) = N^{−(d+1)}cnt(z_μ/η). This is line for line the array `w` in k0_d.py `kernel_moments` (`w[tuple(sl)] = cnt.reshape(shp) * N**-(d + 1)`, corridor slice {0..N−1}^{d−1} × {0..2N−2}) [P, read]. It is the straight-line Q_98(1) that SOURCES_EU_VERIFY §3 confirmed on CMP 98 page images; I did not re-read CMP 98.
2.2 k-step composition. At level 2 the cube and line averages act on spacing Lη. In each transverse direction, uniform on {0..L−1} convolved with uniform on {0, L, …, (L−1)L} is uniform on {0..L²−1}. Along μ the four factors commute, so cube_1*cube_2*line_1*line_2 = cube_{L²}*line_{L²}. Induction gives cube*line at N = L^k [P]. CONFIRMED. This matches SOURCES_EU §3 ("symbol u_kv_{μ,k} by telescoping of geometric sums").
2.3 Facts (a)–(d). (a) clear. (b) η^{−d}w = cnt/N ≤ 1 since cnt ≤ N. (c) for 0 ≤ m ≤ N − 1: cnt(m) = m + 1 and cnt(m + N) = N − 1 − m, sum N; times N^{−2} along μ and N^{−1} for each of d − 1 transverse directions gives N^{−d} = η^d. (d) box side lengths η(N − 1) (d − 1 times) and η(2N − 2); diameter < √(d − 1 + 4) = √(d + 3) [P]. All CONFIRMED.
2.4 Fourier. With Â(p) = η^dΣ_yA(y)e^{−ip·y}: Σ_y w(y − c)e^{ip·y} = e^{ip·c}conj(ŵ(p)), and the c-sum over Z^d folds p onto p′ + 2πZ^d. This gives (QA)^(p′) = Σ_l conj(w_l)Â_l and (Q*B)^(p′ + l) = w_lB̂(p′). The Laplacian symbol is Σ_ν 4N²sin²(p_ν/2N). |ŵ|² = Π_ν s(p_ν)·s(p_μ): the transverse factors come from one uniform average each, μ from two [P]. The T of kappa_d.py `T` (read: w = s[n]·(s[n] if n == mu else 1), D1 = 4N²sin²(q/2N), sum W/Dl over aliases m ∈ 2π{−(N−1)/2..(N−1)/2}) is exactly Σ_l|w_l|²/Δ_l. So the derivation's T is SOURCES_EU §3's T and k0_d's K_0 = 1/inf T [P, read]. CONFIRMED.
2.5 (S1)–(S4). (S1): N|sin(q/2N)| ≥ |q|/π for |q| ≤ πN (|sin x| ≥ 2|x|/π on |x| ≤ π/2), so s(q) ≤ π²/q². (S2): N|sin(q/2N)| ≤ |q|/2 gives s(q) ≥ (sin(q/2)/(q/2))² ≥ 4/π² on |q| ≤ π; d + 1 factors give |w_0|² ≥ (4/π²)^{d+1} = 1/ω, ω(4) = (π²/4)^5 = 91.45. (S3): standard; for l ≠ 0 some |p_ν| ≥ π, so Δ ≥ (4/π²)π² = 4. (S4): Σ_l e^{−il·u} over the N^d aliases equals N^d if u ∈ Z^d and 0 if u ∈ ηZ^d \ Z^d; this gives Σ_l|w_l|² = η^{−d}Σ_c e^{ip′·c}Σ_z w(z)w(z + c) ≤ 1 by (c) [P]. All CONFIRMED. Numerical spot check in §6.
2.6 Kernel formula (§2.1 of the derivation). Fibrewise Cauchy–Schwarz with equality at Â_l = w_lB̂/(Δ_lT) is correct. The minimal energy ∫|B̂|²/T equals SOURCES_EU §3's ⟨B, (QΔ^{−1}Q*)^{−1}B⟩. At p′ = 0, w_l = 0 for l ≠ 0 (sin(l_ν/2) = 0 and N sin(l_ν/2N) ≠ 0 for 0 < |l_ν| ≤ π(N − 1)). So ê(0) = 1 and η^dΣ_yE_0 = 1 [P]. ê is bounded on B_η (D ≥ |w_0|² ≥ 1/ω for l = 0, T ≥ t_0 for l ≠ 0), so E_0(y, c) is well defined as an absolutely convergent integral. CONFIRMED. The torus version k0_d.py computes A = E_0^T(·, 0) − L_u^{−d} for B = δ_0 − L_u^{−d}; §6 checks this against a direct evaluation of the symbol formula.
2.7 Identity E_0 = G_aQ*S_a^{−1} (derivation §2.2). The fibre is finite-dimensional (N^d aliases). For p′ ≠ 0, Sherman–Morrison gives (D + aww^†)^{−1}w = D^{−1}w/(1 + aT), S_a = T/(1 + aT), and the product symbol D^{−1}w/T = ê [P]. CONFIRMED. This is the scalar analogue of CMP 95 (1.103) [V image, p. 34]. It is not Balaban's operator (his G_k is the vector operator with gauge fixing); the derivation says so.
2.8 Lower bounds (§2.3). T ≥ |w_0|²/Δ(p′) ≥ 1/(dπ²ω) = t_0 = 2.770e−4 (d = 4) [P]. S_a ∈ [t_0/(1 + at_0), 1/a] by monotonicity of x/(1 + ax) [P]. At N → ∞ the l = 0 corner term tends to t_0, as stated. CONFIRMED. True inf T = 1/195.19 (SOURCES_EU §3, rerun in SOURCES_EU_VERIFY §1) is 18 times larger; consistent.

## 3. Check (2): Poincaré, Combes–Thomas, k-independence
3.1 Poincaré (derivation §2.4). From conj(w_0)Â_0 = (QA)^ − Σ_{l≠0}conj(w_l)Â_l: |w_0|²|Â_0|² ≤ 2|(QA)^|² + 2(Σ_{l≠0}|w_l|²)(Σ_{l≠0}|Â_l|²) ≤ 2|(QA)^|² + 2Σ_{l≠0}|Â_l|² by (S4). Multiply by ω ≥ |w_0|^{−2}, add Σ_{l≠0}|Â_l|², use Δ_l ≥ 4, integrate (Plancherel: η^dΣ|A|² = ∫_{B_η}|Â|²dp/(2π)^d, Σ_c|B|² = ∫_{B_1}|B̂|²dp′/(2π)^d) [P]. c_1 = (1 + 2ω)/4 = 45.98, c_2 = 2ω = 182.91 (d = 4). m = min(1/c_1, a/c_2) follows from ‖∇A‖² + a‖QA‖² ≥ min(1/c_1, a/c_2)(c_1‖∇A‖² + c_2‖QA‖²). CONFIRMED. The constants depend on d (through ω) and a only.
3.2 Conjugated gradient (§3.1). e^{f}∇_be^{−f}A = ∇_bA + η^{−1}(e^{f(y)−f(y′)} − 1)A(y′); |f(y) − f(y′)| ≤ δη, and η^{−1}(e^{δη} − 1) ≤ e^δ − 1 = β for η ≤ 1 by convexity. The factorisation (−Δ)_f = (e^{−f}∇e^{f})*(e^{f}∇e^{−f}) is correct. Each site is the forward endpoint of d bonds, so Σ_bη^d|ψ(y′_b)|² = d‖ψ‖². Cauchy–Schwarz gives (3.1) [P]. CONFIRMED.
3.3 Conjugated Q (§3.2). For w(y − c) ≠ 0, |y − x_c| ≤ D/2, so |e^{f(x_c)−f(y)} − 1| ≤ e^{δD/2} − 1 = q. Schur with kernel η^{−d}w(y − c) w.r.t. η^d on the fine side: row sums Σ_yw(y − c) = 1, column sums Σ_cη^{−d}w(y − c) = η^{−d}·η^d = 1 by (c). So ‖Q_f − Q‖, ‖(Q*)_f − Q*‖ ≤ q. Q*Q has kernel K(y, y′) ≥ 0 with η^dΣ_{y′}K = 1 and range ≤ D, so ‖(Q*Q)_f − Q*Q‖ ≤ e^{δD} − 1 [P]. CONFIRMED.
3.4 Accretivity (§3.3). Re⟨A, (H_a)_fA⟩ ≥ h − 2β√d‖∇A‖‖A‖ − (β²d + a(e^{δD} − 1))‖A‖² is (3.1) plus 3.3. With ‖∇A‖ ≤ √h and ‖A‖ ≤ √(h/m), the loss is ≤ θh, θ as stated. (H_a)_f* = (H_a)_{−f} since H_a is real symmetric. For f bounded, e^{±f} are bounded, so (G_a)_f = e^fG_ae^{−f} is the inverse of (H_a)_f; Lax–Milgram is not even needed beyond the a priori bound. From Re⟨φ, u⟩ ≥ h(φ)/2 ≥ (m/2)‖φ‖² and h(φ) ≥ ‖∇φ‖² one gets (3.2) [P]. CONFIRMED.
3.5 Difference (§3.4). (G_a)_f − G_a = (G_a)_f(H_a − (H_a)_f)G_a. With ‖φ‖ ≤ 2/m, ‖∇φ‖ ≤ 2/√m (φ = G_{a,−f}u) and ‖ψ‖ ≤ 1/m, ‖∇ψ‖ ≤ 1/√m (ψ = G_av), the bound is 4β√d·m^{−3/2} + 2(β²d + a(e^{δD} − 1))m^{−2} = 2θ/m [P, recomputed]. CONFIRMED.
3.6 Coarse inverse (§3.5). The three-term telescoping of Q_f(G_a)_f(Q*)_f − QG_aQ* is correct, and the norm bounds give ε_S = (2q(1 + q) + 2θ(1 + q) + q)/m. With S_a ≥ s_0 and ε_S ≤ s_0/2, a Neumann series gives ‖(S_{a,f})^{−1}‖ ≤ 2/s_0, and (S_{a,f})^{−1} = (S_a^{−1})_f [P]. CONFIRMED.
3.7 Kernel bound (§3.6). e^fδ_c = δ_c because f(x_c) = 0; ‖δ_c‖ = 1. So ‖e^fE_0(·, c)‖ ≤ (2/m)(1 + q)(2/s_0) = W_0. The gradient identity e^{f(y)}∇_bE_0 = ∇_bg + η^{−1}(e^{f(y)−f(y′)} − 1)g(y′) is correct and gives W_1 = (2/√m + 2β√d/m)(1 + q)(2/s_0). f_R = δmin(|x − x_c|, R) is bounded and δ-Lipschitz; monotone convergence as R → ∞ gives (3.5) [P]. CONFIRMED.
3.8 k-independence. Every constant is a function of d (ω, D = √(d + 3), t_0), of a, and of δ. The inputs used are uniform in N: (S2) holds for all N (the bound sin x/x ≥ 2/π does not see N), (S3) Δ_l ≥ 4 for all N, (S4) for all N, D_N < D for all N, η ≤ 1 for all N. No input depends on k, L, or η [P]. CONFIRMED. This is the main point of the item, and it holds.
3.9 Admissible δ (§3.7). Hand estimate at a = 3.98, m = 0.02175, s_0 = 2.767e−4: θ ≈ (2√(d/m) + aD/m)δ = (27.1 + 484)δ = 511δ, q ≈ 1.32δ, ε_S ≈ (3q + 2θ)/m ≈ 4.72e4·δ; ε_S ≤ s_0/2 = 1.38e−4 gives δ ≲ 2.94e−9. The script (rerun, §6) gives δ_* = 2.9304e−9, W_0 = 6.647e5, W_1 = 9.803e4 [N]. CONFIRMED. (C2) binds; (C1) holds with large margin. The derivation's diagnosis (crude m and s_0, plus the condition number of S_a) is fair [I].

## 4. Check (3): symbol regularity, gradient bounds, pointwise decay
4.1 Symbol bound (derivation §4.1). l = 0: |ê| = |w_0|/D ≤ 1/|w_0| = |w_0|/|w_0|² ≤ ω|w_0|, and 1 ≤ (1 + dπ²)/(1 + |p′|²). l ≠ 0: T ≥ t_0, Δ_l ≥ (4/π²)|p|², |p| ≥ π, so 1/|p|² ≤ (1 + π^{−2})/(1 + |p|²). The constant ωdπ²(π² + 1)/4 dominates 1 + dπ² for all d ≥ 1 [P]. C_e(4) = 9811 (script). CONFIRMED. Grid check [N, §6]: max |ê|(1 + |p|²)/|ŵ| = 255 (N = 3) and 362 (N = 5), below 9811.
4.2 J(β) (§4.2). |p|^β(1 + |p|²)^{−1} ≤ (1 + |p|²)^{−(2−β)/2}; AM–GM gives Π_ν(1 + p_ν²)^{1/d} ≤ 1 + |p|²/d; the integral then factorises. ∫m² = 2(π + π) = 4π; ∫m(q)(1 + q²)^{−γ} ≤ 2(π + π·π^{−2γ}/(2γ)) [P]. Values recomputed by hand: J(0) = 4π·(13.37)³ = 3.00e4, J(1) = 4π·(25.16)³ = 2.00e5, J(3/2) = 4π·(49.85)³ = 1.56e6. CONFIRMED.
4.3 (R0)–(R3) (§4.3). The extension of the integral from B_η to R^d only enlarges it. The multiplier bounds |e^{ip·z} − 1| ≤ |p||z|, |(e^{ip_νη} − 1)/η| = 2|sin(p_νη/2)|/η ≤ |p_ν|, and min(2, x) ≤ 2^{1−α}x^α are correct [P]. κ_4 = 9811/(2π)^4 = 6.295; sup|E_0| ≤ 1.89e5, H_0 ≤ 1.26e6, H_1 ≤ 1.39e7 (rerun). CONFIRMED. All four constants are N-free because (S1) and (S3) are N-free.
4.4 Gradient bound (the brief's item 3). Three gradient statements enter. (i) Weighted L²: W_1 (§3.7 above), CONFIRMED. (ii) Uniform sup: (R2) |∇_νE_0| ≤ κ_dJ(1), CONFIRMED. (iii) Hölder-1/2 of ∇_νE_0: (R3), CONFIRMED. The Euclidean |∇E_0| is ≤ √d·max_ν|∇_νE_0|, so the per-component theorem gives the Euclidean statement of the derivation's §7.1 with C multiplied by √d.
4.5 Remark on second differences (§4.3 Remark). The claim "second differences of E_0 are not uniformly bounded" is not proved. The derivation shows only that the upper bound J(2) diverges like (log N)^{d−1}. A divergent upper bound does not show that the quantity diverges. The continuum picture is plausible [I]. Not load-bearing (only α < 1 is used). Grade: UNSUPPORTED as stated (it should be tagged [I]).
4.6 Pointwise lemma (§5.1). Let t = |g(y)|, r = min(1, (t/2H)^{1/α}). On B(y, r), |g| ≥ t − Hr^α ≥ t/2. The cube y + [−ρ, ρ]^d, ρ = r/√d, lies in B(y, r) and is centred at a lattice point; it has (2⌊ρ/η⌋ + 1)^d ≥ (ρ/η)^d lattice points (2⌊x⌋ + 1 ≥ x: true for x < 1 and for x ≥ 1 since 2⌊x⌋ + 1 ≥ 2x − 1 ≥ x). The weight is ≥ e^{2δ(|y−x_*|−1)} on B(y, r) since r ≤ 1. The two cases give t ≤ 2Wd^{d/4}e^δe^{−δ|y−x_*|} and t^{2+d/α} ≤ 4W²d^{d/2}(2H)^{d/α}e^{2δ}e^{−2δ|y−x_*|}. Taking the root gives the rate 2δα/(2α + d) = δ′ and the prefactor power α/(2α + d) [P, recomputed]. Hölder (ii) is needed only for pairs at distance ≤ 1, and (R1), (R3) hold globally. CONFIRMED.
4.7 Theorem 5.2. Apply 4.6 with x_* = x_c, (W_0, H_0, α = 1) and (W_1, H_1, α = 1/2). Rates δ_E = 2δ_*/(d + 2), δ_∇ = δ_*/(d + 1). |c − x_c| ≤ D/2 gives the factor e^{δ′D/2} [P]. Rerun: δ′_0 = 9.768e−10, C_pt0 = 5.318e6; δ′_1 = 5.861e−10, C_pt1 = 1.358e7. The derivation's C_E ≈ 5.3e6 and C_∇ ≈ 1.4e7 omit the factor e^{δ′D/2} = 1 + O(1e−9); harmless. Common rate δ_*/(d + 1) ≤ δ_E: correct. Constants depend on d and a only [P]. CONFIRMED.

## 5. Check (4): moment sums, coset sums, Γ_j
5.1 Moments (§5.3). Cauchy–Schwarz splits ν_j into the weighted L² factor (≤ W_0 by (3.5) with centre x_0) and S := η^dΣ_ye^{−2δ_*|y−x_0|}(1 + |y|)^{2j}. For z in the cell y + [0, η)^d: |z − y| ≤ η√d ≤ √d, so e^{−2δ_*|y−x_0|} ≤ e^{2δ_*√d}e^{−2δ_*|z−x_0|} and 1 + |y| ≤ 1 + √d + D/2 + |z − x_0| = b + |z − x_0| (|x_0| ≤ D/2). So S ≤ the stated integral, M_j as stated [P]. The script's logM expands (b + r)^{2j} binomially with ∫r^{d−1+i}e^{−2δr}dr = Γ(d + i)/(2δ)^{d+i}; correct. Hand check j = 0: M_0² ≈ 2π²·6/(2δ_*)^4 = 1.0e35, W_0M_0 ≈ 6.65e5·3.2e17 = 2.1e23, log10 = 23.3. Rerun: 23.32, 32.21, 41.25 (ν_j) and 22.49, 31.37, 40.42 (γ_j) [N]. CONFIRMED, for every j ≥ 0.
5.2 Coset sums (§5.4). The unit-lattice cell argument (|u − c| ≤ √d for u ∈ c + [0, 1)^d) gives σ_j ≤ C_Ee^{δ_E√d}|S^{d−1}|∫r^{d−1}(1 + √d + r)^je^{−δ_Er}dr, uniform in y and k [P]. Same for σ_j^∇. CONFIRMED.
5.3 Γ_j bound (§5.4). Put c = 0 by translation invariance. For j ≥ 1, (u + v)^j ≤ 2^{j−1}(u^j + v^j). The u^j term is ≤ Σ_yη^d|∇E_0(y, 0)||y|^j·sup_yΣ_{c′}|∇E_0(y, c′)| = γ̃_jσ_0^∇. The v^j term is ≤ γ̃_0σ_j^∇ since |y − c′|^j ≤ (1 + |y − c′|)^j. Γ_0 ≤ γ̃_0σ_0^∇ [P]. CONFIRMED. Here γ̃_j and σ_j are moments about the block corner c (the |y − c| of the definition).
5.4 Numbers in §5.4 and §6.4 of the derivation: CORRECTED. The derivation evaluates the bound with moments about the corridor centre "as a proxy for γ̃". Γ_j measures distance to the corner c, so the proxy underestimates both γ̃_j and σ_j^∇. I computed the corner-based quantities and Γ_j itself (numerics/t2_eumomv_check.py, 3.8 s; torus, E_0^T = A + L_u^{−d}) [N]:
| N, L_u | γ̃_j (corner), j = 0,1,2 | σ_j^∇ (corner) | Γ_j direct, j = 0,1,2 | 5.4 bound |
| 3, 14 | 23.87, 37.67, 74.41 | 39.69, 106.2, 303.1 | 600, 1903, 6781 | 948, 4031, 20381 |
| 5, 10 | 28.55, 49.34, 103.2 | 50.12, 144.5, 442.1 | 852, 2960, 11360 | 1431, 6598, 35591 |
| 7, 8 | 30.18, 53.36, 111.2 | 53.10, 156.2, 484.5 | 947, 3366, 13027 | 1602, 7546, 41048 |
Consequences. (a) At N = 5 the correct 5.4 bound is Γ_1 ≤ 6.6e3, Γ_2 ≤ 3.6e4, not 5.6e3 and 2.7e4. (b) The true values are Γ_1 = 2.96e3, Γ_2 = 1.14e4. SOURCES_EU §4.6's [I] values Γ_1 ≈ 3.8e3, Γ_2 ≈ 2.0e4 are therefore upper bounds at N = 5 for j = 1, 2. The 5.4 bound overestimates by factors 2.2 (j = 1) and 3.1 (j = 2). (c) The derivation's sentence "The [I] lattice-sum factor there is thus ≈ 1.4" compares two upper bounds. It is not a lattice-sum factor. (d) SOURCES_EU's [I] inequality Γ_j ≤ 2^jγ_0γ_j fails at j = 0: Γ_0 = 852 > γ_0² = 815 (N = 5) and 600 > 570 (N = 3). So that [I] step was genuinely unproved, and the proved 5.4 inequality is the right replacement. σ_0^∇/γ_0 = 1.76 (N = 5) confirms the derivation's "≈ 1.75".
5.5 SOURCES_EU §4.3 Schur steps (c-sum at fixed y). Controlled by σ_j with |y − c| distances, as claimed [P]. CONFIRMED.

## 6. Check (5): numerics and consistency with N = 3, 5
6.1 Reruns [N]. numerics/t2_eumom_n7.py: 2.0 s. numerics/t2_eumom_strip.py: 84 s (the derivation says "10 s"; minor). Every number printed in the derivation's §5.5, §6.1–§6.4 reproduces to the digits quoted: constants (δ_* = 2.9304e−9, W_0 = 6.647e5, W_1 = 9.803e4, H_0 = 1.260e6, H_1 = 1.386e7, C_pt0 = 5.318e6, C_pt1 = 1.358e7); the table of §6.2; the L_u series ν_2 = 29.84/30.79/31.02 (N = 3) and ν_0 = 4.857/5.100/5.059 (N = 7); the shell ratios; the corner-line zeros κ = 1.30, 1.21, 1.18, 1.16, 1.15, 1.15 (ν = μ) and 2.66, 2.47, 2.39, 2.30, 2.28, 2.27 (ν ≠ μ), with Im T/|T| ≤ 2.3e−12.
6.2 Independent check of the E_0 formula [N, numerics/t2_eumomv_check.py]. I evaluated E_0^T on the torus directly from ê(p) = ŵ(p)/(Δ(p)T(p′)) (derivation §2.1; ê(0) = 1, ê = 0 at p′ = 0, l ≠ 0). It agrees with the k0_d.py-style kernel plus L_u^{−d} to 1.3e−15 (N = 3, L_u = 10) and 1.8e−15 (N = 5, L_u = 8). On the same grids: max_{p′}Σ_l|w_l|² = 1.000000000000 (attained at p′ = 0), so (S4) holds with equality there; 1/min T = 103.248 (N = 3) and 146.731 (N = 5), equal to SOURCES_EU §3's K_0; min T ≫ t_0. This confirms check (1) numerically: the derivation's E_0 is the kernel of SOURCES_EU §4.1/§4.4 and of k0_d.py.
6.3 Consistency with SOURCES_EU's N = 3, 5 numbers. Mean-shifted |A| moments 5.158/10.716/41.897 (N = 3, L_u = 10) and 5.634/10.299/31.006 (N = 5, L_u = 8) reproduce SOURCES_EU §4.4. Gradient moments 23.797/32.616/58.056 and 28.281/39.62/70.613 reproduce exactly. The mean-shift explanation of SOURCES_EU's "j = 2 not converged" is right: the shifted j = 2 moment at N = 3 is 41.90, 74.77, 117.77 at L_u = 10, 14, 18, while the clean one is 9.29, 9.93, 10.10 [N]. ν_2 about the centre with (1 + r)²: 57.24 (shifted, N = 5, L_u = 8) vs 29.43 (clean, L_u = 10); γ about the centre 28.55, 69.35, 186.1. All CONFIRMED.
6.4 Proved bounds vs numbers. Every proved bound exceeds the observed value by many orders (ν_0 ≤ 2e23 vs 4.8; sup|E_0| ≤ 1.9e5 vs 2.28; δ_E ≈ 1e−9 vs δ_obs ≈ 1.1). No numerical value contradicts any proved bound [N]. The proved rate is below the corner-line cap 1.15, as it must be.
6.5 Decay-rate reading (§6.3). The rates ln(shell ratio) are 1.14 (N = 3), 1.08 (N = 5), 1.03 (N = 7, last ratio 2.81, short torus). The first T-zero on the corner line along e_μ is at κ = 1.30, 1.21, 1.18. The observed rates lie below the caps; consistent. The Paley–Wiener reading is tagged [I] by the derivation and stays [I].

## 7. Status of SOURCES_EU_VERIFY open item (i)
Item (i) reads: "uniform-in-k bounds on the kernel moments ν_j, γ_j and the exponential decay of E_0". Verdict: CLOSED, for the object SOURCES_EU uses. The free scalar kernel E_0 of the straight-line average Q_98(1) (k-step composition, cube*line at N = L^k, one component, Feynman form) satisfies |E_0(y, c)|, |∇_νE_0(y, c)| ≤ Ce^{−δ|y−c|} with C, δ depending on d only (a fixed). All moments ν_j, γ_j, the fixed-y block sums σ_j, σ_j^∇, and Γ_j are bounded uniformly in k [P, §§2–5 above]. The proof uses no Balaban estimate; the CMP 95 quotes are context only.
Caveats that stay open (none reopens item (i)):
 (a) The constants are qualitative: δ ≈ 6e−10, ν_2 ≤ 1e41. Any use that needs a number (c_{2/3} in SOURCES_EU §4.6, the boundary cutoff e^{−δRM/2} of SOURCES_EU §5.1) is k-uniform but numerically useless [P]. Realistic values are [N] only.
 (b) Infinite volume. The theorem is on ηZ^d. The torus kernel is the periodization Σ_n E_0(y + L_un, c) (same symbol sampled on the discrete dual; checked numerically to 1e−15 in 6.2). With exponential decay the periodization adds a k-uniform factor; the boundary of a non-periodic Λ is SOURCES_EU §5.1's separate [I] item.
 (c) Scope: Q_98(1) only. Item (iii) of SOURCES_EU_VERIFY (corridor Q_95, coupled components) is untouched; the derivation says so.
 (d) The numerical comparison of the new Γ_j bound with SOURCES_EU's [I] values needs the correction of 5.4 above.

## 8. Grades
Claims are numbered by the derivation's sections.
1.2 Weight w = cube*line, N^{−(d+1)}cnt; equals k0_d.py; k-step composition = cube*line at L^k; facts (a)–(d): CONFIRMED [P].
1.4 Fourier formulas for Q, Q*, Δ, |ŵ|²; T = KAPPA_D/kappa_d.py T; (S1)–(S4): CONFIRMED [P; (S4) and T also N].
1.5 Balaban quotes CMP 95 (1.100), (1.103), Prop. 1.2 (1.110), p. 36 remark: CONFIRMED [V image]; not load-bearing.
2.1 Symbol of E_0, minimal energy ∫|B̂|²/T, η^dΣE_0 = 1: CONFIRMED [P; N to 1e−15 vs k0_d kernel].
2.2 E_0 = G_aQ*(QG_aQ*)^{−1} for all a > 0: CONFIRMED [P].
2.3 T ≥ t_0 = 1/(dπ²ω), s_0 ≤ S_a ≤ 1/a, K_0 ≤ 3610: CONFIRMED [P].
2.4 Poincaré ‖A‖² ≤ c_1‖∇A‖² + c_2‖QA‖², c_1 = 45.98, c_2 = 182.91, m = 0.02175: CONFIRMED [P].
3.1 Conjugated Laplacian bound (3.1): CONFIRMED [P].
3.2 ‖Q_f − Q‖ ≤ q, ‖(Q*Q)_f − Q*Q‖ ≤ e^{δD} − 1: CONFIRMED [P].
3.3 Accretivity and (3.2): CONFIRMED [P].
3.4 (3.3) ‖(G_a)_f − G_a‖ ≤ 2θ/m: CONFIRMED [P].
3.5 ε_S and (3.4) ‖(S_a^{−1})_f‖ ≤ 2/s_0: CONFIRMED [P].
3.6 Weighted L² bounds (3.5) with W_0, W_1; constants depend on d, a, δ only: CONFIRMED [P].
3.7 δ_* exists for every d; d = 4 values δ_* = 2.93e−9 etc.: CONFIRMED [P, N; hand estimate 2.94e−9].
4.1 Symbol bound, C_e = 9.81e3: CONFIRMED [P; grid max ratio 362 ≤ 9811].
4.2 J(β) bound and values: CONFIRMED [P].
4.3 (R0)–(R3), κ_4, sup|E_0|, H_0, H_1: CONFIRMED [P].
4.3-Remark Second differences not uniformly bounded: UNSUPPORTED (only an upper bound is shown to diverge; should be [I]; not load-bearing).
5.1 L² + Hölder ⇒ pointwise lemma: CONFIRMED [P].
5.2 Theorem: k-uniform exponential decay of E_0 and ∇_νE_0: CONFIRMED [P]. C_E, C_∇ omit the factor e^{δ′D/2} = 1 + O(1e−9); negligible.
5.3 ν_j ≤ W_0M_j, γ_j ≤ W_1M_j for all j: CONFIRMED [P].
5.4a σ_j, σ_j^∇ bounded uniformly; Γ_j ≤ 2^{j−1}(γ̃_jσ_0^∇ + γ̃_0σ_j^∇): CONFIRMED [P].
5.4b "numerically the two differ by ≈ 1.3–1.5": CORRECTED. With corner-based γ̃_j, σ_j^∇ (the quantities the inequality uses) the N = 5 bound is Γ_1 ≤ 6.6e3, Γ_2 ≤ 3.6e4 (1.7× and 1.8× SOURCES_EU's values). The true Γ_1 = 2.96e3, Γ_2 = 1.14e4.
5.5 d = 4 constants and log10 moment bounds 23.3/32.2/41.3, 22.5/31.4/40.4: CONFIRMED [N, rerun].
6.1 Mean-shift artifact in SOURCES_EU §4.4; gradient moments reproduce: CONFIRMED [N].
6.2 Clean moment table and L_u series: CONFIRMED [N, rerun]. Runtime of t2_eumom_strip.py is 84 s, not 10 s (minor).
6.3 Shell ratios and corner-line T-zeros: CONFIRMED [N]; Paley–Wiener cap reading stays [I], as tagged.
6.4 Coset sums, σ_0^∇ ≈ 1.75γ_0: CONFIRMED [N]. "Γ_1 ≲ 5.6e3, Γ_2 ≲ 2.7e4" and "the [I] lattice-sum factor there is ≈ 1.4": CORRECTED (proxy moments about the centre underestimate the corner-based bound: 6.6e3, 3.6e4; the 1.4 is a ratio of two upper bounds, not a lattice factor; SOURCES_EU's Γ_j ≤ 2^jγ_0γ_j fails at j = 0, 852 > 815).
7.1 A21 / SOURCES_EU_VERIFY item (i) closed: CONFIRMED, for Q_98(1), infinite volume, qualitative constants.
7.2(a) Constants of SOURCES_EU §4.3–4.6 k-uniform: CONFIRMED [P].
7.2(b) [I] lattice-sum steps replaced by 5.4: CONFIRMED; "numerically a factor ≈ 1.4 larger": CORRECTED (≈ 1.7–1.8 above SOURCES_EU's values, 2.2–3.1 above the true Γ_j, N = 5).
7.2(c) ν_2 inflated by the shift; clean ≈ 29 (centre) / 38–41 (about y = 0); lowers c_St·ν_2 by 1.5–2: CONFIRMED [N].
7.2(d) Boundary cutoff reduced to "RM large" in principle, useless with proved δ: CONFIRMED [P/N].
7.2(e) SOURCES_CDC §4 same status: CONFIRMED [I-level reading].
7.3 Open items (realistic constants; Q_95 version; background items; N → ∞ numerics): CONFIRMED as open.
Item (i) of SOURCES_EU_VERIFY §6: CLOSED (k-uniform decay and moments of E_0 proved for the straight-line free kernel; constants qualitative).
SUMMARY: 31 CONFIRMED, 3 CORRECTED, 1 UNSUPPORTED; verdict: the k-uniform exponential decay and moment bounds for E_0 are correctly proved with constants depending on d only, closing SOURCES_EU_VERIFY open item (i); the corrections affect only numerical comparisons of the Γ_j bound and an unproved side remark.
STATUS: COMPLETE
