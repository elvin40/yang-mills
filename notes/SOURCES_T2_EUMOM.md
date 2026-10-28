IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_EUMOM — k-uniform decay and moments of the free minimal-extension kernel E_0 (2026-10-28)
Item EUMOM, DERIVE. Status: complete.
Read: SOURCES_EU.md (full), SOURCES_EU_VERIFY.md (full), SOURCES_CDC.md §4, SOURCES_CDC_VERIFY.md, numerics/k0_d.py, numerics/kappa_d.py (read only), numerics/KAPPA_D.md, numerics/NUMERICS.md l. 79, TRUST_LEDGER.md ll. 31, 43, 146 only. Balaban pages: listed in §1.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). ONLINE_SWEEP §2 not read.
Tags: [P] proved here; [R] reduced to a named input; [I] inference not checked line by line; [V] checked on a Balaban page (image or text layer, stated); [N] numerics.

Plan.
1. Setting: Q(1), E_0, Fourier conventions, sources.
2. Symbol identities: E_0 = G_aQ*(QG_aQ*)^{-1} for every a > 0; lower bounds T ≥ t_0, S ≥ s_0; Poincaré bound H ≥ m.
3. Weighted L² decay (Combes–Thomas, uniform in η).
4. Uniform pointwise regularity from the symbol (sup, Lipschitz, Hölder of ∇E_0).
5. Pointwise exponential decay and the moments ν_j, γ_j, coset sums; explicit constants.
6. Numerics (N = 3, 5, 7) and comparison.
7. What this closes in SOURCES_EU / CDC / TRUST_LEDGER; what stays open.
8. Ledger.

## 1. Setting, conventions, sources
1.1 Units. Unit lattice Z^d (blocks c), fine lattice Λ_η = ηZ^d, η = 1/N, N = L^k odd. Fine inner product ⟨A, A′⟩ = η^d Σ_y A(y)A′(y); coarse ⟨B, B′⟩ = Σ_c B(c)B′(c). Bonds b = (y, y + ηe_ν); ∇_bA = (A(y + ηe_ν) − A(y))/η; ‖∇A‖² = η^d Σ_b |∇_bA|² = ⟨A, −ΔA⟩. We work in infinite volume (the torus of the numerics is discussed in §6). One component μ is fixed throughout; the free Feynman-gauge form decouples components (SOURCES_EU §3).
1.2 The averaging operator. (QA)(c) = Σ_y w(y − c)A(y), with w = w_cube * w_line: w_cube = N^{−d} on the N^d fine sites {0, …, N−1}^d η, w_line = N^{−1} on the N sites {0, …, N−1}ηe_μ. So w(z) = N^{−(d+1)}·cnt(z_μ/η) on the corridor {0..N−1}^{d−1} × {0..2N−2} (η units), cnt(m) = min(m + 1, 2N − 1 − m). This is exactly the weight in numerics/k0_d.py `kernel_moments` (read). It is the straight-line average Q_98(1) of CMP 98 (125) at V_0 = 1 ([V] in SOURCES_EU §2 and SOURCES_EU_VERIFY §3, page images; not re-read here). The composition of k one-step straight-line averages (scale L) is again cube * line at scale N = L^k, because convolutions commute: cube_j * (L shifted copies of line_j)/L = cube_j * line_{j+1}, then the level-(j+1) cube average gives cube_{j+1} [P].
Elementary facts [P]: (a) w ≥ 0, Σ_z w(z) = 1; (b) η^{−d}w(z) = cnt/N ≤ 1; (c) Σ_c w(y − c) = η^d for every y (along μ: cnt(m) + cnt(m + N) = N for 0 ≤ m ≤ N − 1; transversally exactly one c); (d) supp w ⊂ a box of diameter D_N := η((d − 1)(N − 1)² + (2N − 2)²)^{1/2} < D := √(d + 3). Let x_c be the centre of the corridor of c; every y with w(y − c) ≠ 0 has |y − x_c| ≤ D/2.
Adjoint: (Q*B)(y) = η^{−d} Σ_c w(y − c)B(c).
1.3 The kernel. E_0 is the minimal-energy extension of SOURCES_EU §4.1: for B ∈ ℓ²(Z^d), E_0B is the minimizer of ‖∇A‖² subject to QA = B. Kernel: (E_0B)(y) = Σ_c E_0(y, c)B(c). Unit-translation invariance: E_0(y + e, c + e) = E_0(y, c), e ∈ Z^d [P, Q and Δ commute with unit shifts].
1.4 Fourier conventions. Â(p) = η^d Σ_y A(y)e^{−ip·y}, p ∈ B_η := (−πN, πN]^d; A(y) = ∫_{B_η} Â(p)e^{ip·y} dp/(2π)^d. B̂(p′) = Σ_c B(c)e^{−ip′·c}, p′ ∈ B_1 := (−π, π]^d. Write p = p′ + l, l ∈ 2πZ^d, |l_ν| ≤ π(N − 1). ŵ(p) := Σ_z w(z)e^{−ip·z}. Then [P, Poisson summation]
 (QA)^(p′) = Σ_l conj(ŵ(p′ + l))Â(p′ + l),  (Q*B)^(p′ + l) = ŵ(p′ + l)B̂(p′),  (−ΔA)^(p) = Δ(p)Â(p), Δ(p) = Σ_ν 4N² sin²(p_ν/2N).
 |ŵ(p)|² = Π_ν s(p_ν)·s(p_μ), s(q) = sin²(q/2)/(N sin(q/2N))² (geometric sums, Nη = 1).
So at fixed p′ the fine operators act on the vector (Â(p′ + l))_l: −Δ is D = diag(Δ_l), Q*Q is the rank-one matrix w w^† with w_l := ŵ(p′ + l). These are the symbols of KAPPA_D (CMP 95 (1.31), (1.61), (1.101)); T_μ(p′) := Σ_l |w_l|²/Δ_l = w^†D^{−1}w is the KAPPA_D function T.
Bounds on the symbols [P]. For |q| ≤ πN: N|sin(q/2N)| ≤ |q|/2, and |sin(q/2N)| ≥ |q|/(πN), so
 (S1) s(q) ≤ 1 always (|average of unimodular numbers| ≤ 1), s(q) ≤ π²/q² ⇒ |ŵ(p)| ≤ Π_ν m(p_ν)·m(p_μ), m(q) := min(1, π/|q|);
 (S2) s(q) ≥ sin²(q/2)/(q/2)² ≥ 4/π² for |q| ≤ π ⇒ |ŵ(p′)|² ≥ ω^{−1} on B_1, ω := (π/2)^{2(d+1)} (d = 4: ω = 91.45);
 (S3) Δ(p) ≤ |p|², Δ(p) ≥ (4/π²)|p|² on B_η; Δ(p′) ≤ dπ² on B_1; Δ(p′ + l) ≥ 4 for l ≠ 0 (some |p_ν| ≥ π);
 (S4) Σ_l |w_l|² ≤ 1: Σ_l|w_l|² = Σ_c e^{ip′·c}η^{−d}Σ_z w(z)w(z + c) ≤ Σ_z w(z)η^{−d}Σ_c w(z + c) = 1 by (c).
1.5 Balaban sources used (all [V] on page images, CMP 95 PDF pp. 18–20 = journal pp. 34–36, read this session).
 CMP 95 p. 34 (1.100): "a^{−1}(φ − 1)φ^{−1} ≤ QGQ* ≤ a^{−1}I." (1.103): "H_kB = GQ*(QGQ*)^{−1}B." Text: "This representation allows us to reduce a proof of properties of H_k to the corresponding properties of G."
 CMP 95 p. 35, Proposition 1.2: "There exists a positive constant δ_0 depending on d only, such that |(GJ)(x)|, |(∇GJ)(x)|, |(G∇*J)(x)|, |(ΔGJ)(x)| ≤ O(1)e^{−δ_0|y−y′|}|J| (1.110) for x ∈ Δ(y), supp J ⊂ Δ̃(y′), with the constant O(1) depending on d only".
 CMP 95 p. 36: "Probably the simplest proof of the exponential decay properties can be obtained by relating G on the torus to G on the whole lattice ηZ^d in the usual way, and then proving that the operator e^{−⟨q,x⟩}Δ_a e^{⟨q,x⟩} − Δ_a is a small perturbation of Δ_a for vectors q ∈ R^d sufficiently small. Instead we construct a random walk representation".
 Use here. §2 is the scalar version of (1.103). §3 carries out the route Balaban names on p. 36 and does not use. Proposition 1.2 is for Balaban's vector G_k (with the d*d + gauge-fixing form), not for our scalar G_a; it is not used as an input. It would give an alternative [R] route for §3–§4 for the G-factor only; the coarse inverse (QGQ*)^{−1} would still need §3.3.

## 2. Symbol identities and three lower bounds
Notation: for a > 0, H_a := −Δ + aQ*Q, G_a := H_a^{−1}, S_a := QG_aQ* (coarse). ‖Q‖ = ‖Q*‖ ≤ 1 by (S4) (or by the Schur test with facts (a)–(c)).
2.1 The kernel in Fourier space [P]. The energy is ∫_{B_1} Σ_l Δ_l|Â_l|² dp′/(2π)^d and the constraint QA = B reads Σ_l conj(w_l)Â_l = B̂(p′) fibre by fibre. By Cauchy–Schwarz, |B̂|² ≤ (Σ_l |w_l|²/Δ_l)(Σ_l Δ_l|Â_l|²), with equality iff Â_l ∝ w_l/Δ_l. So the minimizer is Â_l = w_lB̂/(Δ_lT), the minimal energy is ∫|B̂|²/T, and
 E_0(y, c) = ∫_{B_η} ê(p)e^{ip·(y−c)} dp/(2π)^d,  ê(p′ + l) = ŵ(p′ + l)/(Δ(p′ + l)T(p′)).
For l = 0 write ê(p′) = ŵ(p′)/D(p′), D(p′) := Δ(p′)T(p′) = |w_0|² + Δ(p′)Σ_{l≠0}|w_l|²/Δ_l ≥ |w_0|². At p′ = 0: T = ∞, ê(l) = 0 for l ≠ 0, ê(0) = 1 (so η^dΣ_y E_0(y, c) = 1).
2.2 E_0 = G_aQ*S_a^{−1} for every a > 0 [P]. At fixed p′ ≠ 0, D_diag := diag(Δ_l) is invertible and Sherman–Morrison gives (D_diag + aww^†)^{−1}w = D_diag^{−1}w/(1 + aT). Hence S_a(p′) = T/(1 + aT) and G_aQ*S_a^{−1} has symbol D_diag^{−1}w/(1 + aT)·(1 + aT)/T = D_diag^{−1}w/T = ê. The set p′ = 0 has measure zero. This is the scalar form of CMP 95 (1.103) "H_kB = GQ*(QGQ*)^{−1}B" [V p. 34]. The left side does not depend on a. (Balaban makes the same remark for a different operator, the one of his (1.44): "independent of a and we can take arbitrary a in the representation, e.g. a = 1", CMP 95 text layer l. 468 [V text]; it is not used here.)
2.3 Lower bound on T and S_a [P]. By (S2), (S3): T(p′) ≥ |w_0|²/Δ(p′) ≥ t_0 := 1/(dπ²ω). Since x ↦ x/(1 + ax) is increasing, s_0 := t_0/(1 + at_0) ≤ S_a ≤ 1/a. For d = 4: t_0 = 2.770e−4, i.e. K_0 = 1/inf T ≤ 1/t_0 = 3610 (the true value is 195.19 [N], SOURCES_EU §3; 1/t_0 is the l = 0 term at the corner, as in SOURCES_CDC_VERIFY §4). This is the k-uniform positivity of (1.100)–(1.101) of CMP 95 [V p. 34], proved here directly.
2.4 Poincaré bound, uniform in η [P]. For all A ∈ ℓ²(Λ_η):
 ‖A‖² ≤ c_1‖∇A‖² + c_2‖QA‖²,  c_1 := (1 + 2ω)/4, c_2 := 2ω.
Proof, fibre by fibre. From the constraint form, conj(w_0)Â_0 = (QA)^ − Σ_{l≠0}conj(w_l)Â_l. With |w_0|^{−2} ≤ ω (S2) and Σ_{l≠0}|w_l|² ≤ 1 (S4): |Â_0|² ≤ 2ω|(QA)^|² + 2ωΣ_{l≠0}|Â_l|². Hence Σ_l|Â_l|² ≤ 2ω|(QA)^|² + (1 + 2ω)Σ_{l≠0}|Â_l|² ≤ 2ω|(QA)^|² + ((1 + 2ω)/4)Σ_{l≠0}Δ_l|Â_l|², by Δ_l ≥ 4 (S3). Integrate over p′. ∎
Consequence: ⟨A, H_aA⟩ ≥ m‖A‖² with m = m_a := 1/max(c_1, c_2/a), and ⟨A, H_aA⟩ ≥ ‖∇A‖². For d = 4: c_1 = 45.98, c_2 = 182.91; a ≥ c_2/c_1 = 3.98 gives m = 1/45.98 = 0.02175.

## 3. Weighted L² decay, uniform in η (Combes–Thomas) [P]
Weights. Let 𝓕_δ be the set of bounded real f on R^d with |f(x) − f(x′)| ≤ δ|x − x′|. On the coarse lattice use f(c) := f(x_c). Write X_f := e^fXe^{−f} for any operator X (fine, coarse, or mixed). For f ∈ 𝓕_δ these are bounded operators. Put β := e^δ − 1, q := e^{δD/2} − 1, D = √(d + 3). Assume δ ≤ 1. Then for every bond, η^{−1}|e^{±(f(y)−f(y′))} − 1| ≤ η^{−1}(e^{δη} − 1) ≤ β, since (e^x − 1)/x increases and η ≤ 1.
3.1 Conjugated Laplacian. e^f∇_be^{−f} = ∇_b + β_bS_b and e^{−f}∇_be^{f} = ∇_b + β̃_bS_b, with S_bA := A(y + ηe_ν) and |β_b|, |β̃_b| ≤ β. Since e^f∇_b*∇_be^{−f} = (e^{−f}∇_be^{f})*(e^f∇_be^{−f}), for all complex φ, ψ:
 ⟨φ, (−Δ)_fψ⟩ − ⟨φ, −Δψ⟩ = Σ_b η^d[conj(∇_bφ)β_bψ(y′_b) + conj(β̃_bφ(y′_b))∇_bψ + conj(β̃_bφ(y′_b))β_bψ(y′_b)].
Each site is the endpoint y′_b of d bonds, so Σ_bη^d|ψ(y′_b)|² = d‖ψ‖², and
 |⟨φ, ((−Δ)_f + Δ)ψ⟩| ≤ β√d(‖∇φ‖‖ψ‖ + ‖φ‖‖∇ψ‖) + β²d‖φ‖‖ψ‖.  (3.1)
3.2 Conjugated Q, Q*, Q*Q. The kernel of Q_f − Q is w(y − c)(e^{f(x_c)−f(y)} − 1), bounded by q·w(y − c) (fact (d)). The Schur test with facts (a)–(c) gives ‖Q_f − Q‖ ≤ q, ‖(Q*)_f − Q*‖ ≤ q. The kernel of Q*Q w.r.t. η^d is K(y, y′) = η^{−2d}Σ_c w(y − c)w(y′ − c) ≥ 0, supported on |y − y′| ≤ D, with Schur sums η^dΣ_{y′}K(y, y′) = 1. So ‖(Q*Q)_f − Q*Q‖ ≤ e^{δD} − 1.
3.3 Accretivity. Let h(A) := ⟨A, H_aA⟩ ≥ max(m‖A‖², ‖∇A‖²) (§2.4). By (3.1) with φ = ψ = A and 3.2:
 Re⟨A, (H_a)_fA⟩ ≥ h − 2β√d‖∇A‖‖A‖ − (β²d + a(e^{δD} − 1))‖A‖² ≥ h(1 − θ),
 θ = θ(δ) := 2β√(d/m) + (β²d + a(e^{δD} − 1))/m,
using ‖∇A‖‖A‖ ≤ h/√m and ‖A‖² ≤ h/m. Assume (C1): θ ≤ 1/2. Then Re⟨A, (H_a)_fA⟩ ≥ h/2 ≥ (m/2)‖A‖². The same holds for (H_a)_f* = (H_a)_{−f} (−f ∈ 𝓕_δ). By Lax–Milgram, (H_a)_f is invertible and (G_a)_f = ((H_a)_f)^{−1}. If φ = (G_a)_fu then h(φ)/2 ≤ |⟨φ, u⟩| ≤ ‖φ‖‖u‖, so
 ‖(G_a)_f‖ ≤ 2/m,  ‖∇(G_a)_f‖ ≤ 2/√m.  (3.2)
Unconjugated: ‖G_a‖ ≤ 1/m, ‖∇G_a‖ ≤ 1/√m.
3.4 Difference. (G_a)_f − G_a = (G_a)_f(H_a − (H_a)_f)G_a. For u, v: ⟨u, ((G_a)_f − G_a)v⟩ = ⟨G_{a,−f}u, (H_a − (H_a)_f)G_av⟩. Apply (3.1), 3.2 and (3.2) to φ = G_{a,−f}u, ψ = G_av:
 ‖(G_a)_f − G_a‖ ≤ β√d(2/√m·1/m + 2/m·1/√m) + (β²d + a(e^{δD} − 1))·2/m² = 2θ/m.  (3.3)
3.5 The coarse operator. S_{a,f} − S_a = (Q_f − Q)(G_a)_f(Q*)_f + Q((G_a)_f − G_a)(Q*)_f + QG_a((Q*)_f − Q*), so
 ‖S_{a,f} − S_a‖ ≤ ε_S := (2q(1 + q) + 2θ(1 + q) + q)/m.
Assume (C2): ε_S ≤ s_0/2. Since S_a ≥ s_0 (§2.3), S_{a,f} = S_a(1 + S_a^{−1}(S_{a,f} − S_a)) is invertible and
 ‖(S_a^{−1})_f‖ ≤ 2/s_0.  (3.4)
3.6 The kernel. Fix c and take f ∈ 𝓕_δ with f(x_c) = 0, e.g. f_R(x) = δ min(|x − x_c|, R). By §2.2, e^{f}E_0(·, c) = (G_a)_f(Q*)_f(S_a^{−1})_fδ_c. Hence, with g := e^fE_0(·, c):
 ‖g‖ ≤ W_0 := (2/m)(1 + q)(2/s_0),  ‖∇g‖ ≤ (2/√m)(1 + q)(2/s_0).
Also e^{f(y)}∇_bE_0(y, c) = ∇_bg + η^{−1}(e^{f(y)−f(y′)} − 1)g(y′), so ‖e^f∇E_0(·, c)‖ ≤ W_1 := (2/√m + 2β√d/m)(1 + q)(2/s_0) (each component ν separately: replace √d by 1; the bound with √d covers the full gradient). Let R → ∞ (monotone convergence):
 (η^dΣ_y e^{2δ|y−x_c|}|E_0(y, c)|²)^{1/2} ≤ W_0,  (η^dΣ_y e^{2δ|y−x_c|}|∇E_0(y, c)|²)^{1/2} ≤ W_1.  (3.5)
All constants depend on d, a, δ only. They do not depend on η = L^{−k}, on L, or on k.
3.7 Admissible δ, d = 4 [P arithmetic, computed in numerics/t2_eumom_n7.py §consts]. (C1) and (C2) hold for some δ_* > 0 for every d, since θ, q → 0 as δ → 0 while m, s_0 are fixed. The binding condition is (C2) through 2θ/m ≤ s_0/4 (about), i.e. θ ≲ s_0m/4 ≈ 1.5e−6 for d = 4. The values of δ_*, W_0, W_1 at the best a are listed in §5.4. They are tiny (δ_* of order 1e−9). The reason is twofold: (i) the crude lower bounds m ≥ 1/45.9 and s_0 ≈ t_0 = 2.8e−4 (true inf T is 18 times larger); (ii) Combes–Thomas loses the full condition number of S_a. The bounds prove k-uniformity; they are not realistic values (§6 gives δ ≈ 1.2 numerically).

## 4. Uniform pointwise regularity from the symbol [P]
4.1 Symbol bound. On B_η:
 |ê(p)| ≤ C_e|ŵ(p)|/(1 + |p|²),  C_e := ω·dπ²(π² + 1)/4  (d = 4: C_e = 9.81e3).
Proof. l = 0: |ê(p′)| = |w_0|/D(p′) ≤ 1/|w_0| ≤ ω|w_0| (D ≥ |w_0|², |w_0|² ≥ 1/ω), and 1 ≤ (1 + dπ²)/(1 + |p′|²). l ≠ 0: T(p′) ≥ |w_0|²/Δ(p′) ≥ 1/(ωdπ²), Δ_l ≥ (4/π²)|p|², |p| ≥ π, so |ê| ≤ |w_l|ωdπ²(π²/4)|p|^{−2} ≤ |w_l|ωdπ²(π²/4)(1 + π^{−2})/(1 + |p|²). The second constant dominates (1 + dπ² < dπ²(π² + 1)/4). ∎
4.2 The integral J(β) := ∫_{R^d} Π_ν m(p_ν)·m(p_μ)·|p|^β(1 + |p|²)^{−1} dp is finite for 0 ≤ β < 2, and
 J(β) ≤ I_2·I_1(γ)^{d−1},  γ := (2 − β)/(2d),  I_1(γ) := 2π(1 + π^{−2γ}/(2γ)),  I_2 := 4π.
Proof. |p|^β(1 + |p|²)^{−1} ≤ (1 + |p|²)^{−(2−β)/2}. By AM–GM, Π_ν(1 + p_ν²)^{1/d} ≤ 1 + |p|²/d ≤ 1 + |p|², so the integrand is ≤ Π_ν m(p_ν)(1 + p_ν²)^{−γ}·m(p_μ). The integral factorizes. For ν ≠ μ: ∫_R m(q)(1 + q²)^{−γ}dq ≤ 2(π + ∫_π^∞ (π/q)q^{−2γ}dq) = I_1(γ). For ν = μ drop (1 + q²)^{−γ} ≤ 1: ∫_R m(q)²dq = 4π. ∎
 d = 4 values: J(0) ≤ 3.00e4 (γ = 1/4), J(1) ≤ 2.00e5 (γ = 1/8), J(3/2) ≤ 1.56e6 (γ = 1/16) (script §consts).
4.3 Regularity, uniform in η. Since B_η ⊂ R^d and |ŵ| ≤ Πm·m_μ (S1), with κ_d := (2π)^{−d}C_e:
 (R0) |E_0(y, c)| ≤ κ_dJ(0);
 (R1) |E_0(y, c) − E_0(y′, c)| ≤ κ_dJ(1)|y − y′| (|e^{ip·z} − 1| ≤ |p||z|);
 (R2) |∇_νE_0(y, c)| ≤ κ_dJ(1) (the multiplier (e^{ip_νη} − 1)/η has modulus 2|sin(p_νη/2)|/η ≤ |p|);
 (R3) |∇_νE_0(y, c) − ∇_νE_0(y′, c)| ≤ 2^{1−α}κ_dJ(1 + α)|y − y′|^α, 0 < α < 1 (|e^{ip·z} − 1| ≤ min(2, |p||z|) ≤ 2^{1−α}|p|^α|z|^α).
Put H_0 := κ_dJ(1), H_1 := 2^{1/2}κ_dJ(3/2) (α = 1/2). For d = 4: κ_4 = 6.29, so sup|E_0| ≤ 1.9e5, H_0 ≤ 1.26e6, H_1 ≤ 1.39e7. These are crude (numerically max|E_0| ≈ 2.3, §6); only their k-independence matters.
Remark. Second differences of E_0 are not uniformly bounded: the β = 2 integral diverges like (log N)^{d−1}. This matches the continuum picture: −ΔE_0 = Q*S^{−1}δ_c-type source with jumps across corridor faces, so E_0 ∈ C^{1,α}, not C^{1,1}. This is why α < 1 in (R3).

## 5. Pointwise exponential decay, moments, coset sums [P]
5.1 From L² decay plus Hölder to pointwise decay. Lemma. Let g be a function on Λ_η, x_* ∈ R^d, with (i) η^dΣ_y e^{2δ|y−x_*|}|g(y)|² ≤ W², (ii) |g(y) − g(y′)| ≤ H|y − y′|^α (0 < α ≤ 1). Then for all y
 |g(y)| ≤ C_pt e^{−δ′|y−x_*|},  δ′ := 2αδ/(d + 2α),  C_pt := max(2Wd^{d/4}e^δ, [4W²d^{d/2}(2H)^{d/α}e^{2δ}]^{α/(2α+d)}).
Proof. Put t := |g(y)|, r := min(1, (t/2H)^{1/α}). By (ii), |g| ≥ t/2 on the Euclidean ball B(y, r). That ball contains the lattice points of the cube y + [−ρ, ρ]^d, ρ = r/√d; their number is (2⌊ρ/η⌋ + 1)^d ≥ (ρ/η)^d (because 2⌊x⌋ + 1 ≥ x for x ≥ 0), so their η^d-volume is ≥ ρ^d (also when ρ < η). On B(y, r), e^{2δ|z−x_*|} ≥ e^{2δ(|y−x_*|−1)}. So (t/2)²(r/√d)^d e^{2δ(|y−x_*|−1)} ≤ W². If r = 1: t ≤ 2Wd^{d/4}e^δe^{−δ|y−x_*|}. If r = (t/2H)^{1/α}: t^{2+d/α} ≤ 4W²d^{d/2}(2H)^{d/α}e^{2δ}e^{−2δ|y−x_*|}. Since δ ≥ δ′ both cases give the claim. ∎
5.2 Theorem (k-uniform decay of E_0) [P]. Let δ_* > 0 satisfy (C1), (C2) of §3 (it depends on d only, after fixing a). Then for all k (all odd N), all y ∈ Λ_η, c ∈ Z^d, ν = 1, …, d:
 |E_0(y, c)| ≤ C_E e^{−δ_E|y−c|},  |∇_νE_0(y, c)| ≤ C_∇ e^{−δ_∇|y−c|},
with δ_E = 2δ_*/(d + 2), δ_∇ = δ_*/(d + 1), C_E = C_pt(W_0, H_0, α = 1)e^{δ_ED/2}, C_∇ = C_pt(W_1, H_1, α = 1/2)e^{δ_∇D/2}. Proof: Lemma 5.1 with x_* = x_c, the weighted bounds (3.5), and (R1) resp. (R3); |y − x_c| ≥ |y − c| − D/2. One common rate is δ := δ_* /(d + 1) (= δ_*/5 for d = 4). None of the constants depends on k, η, or L.
5.3 Moments [P]. With ν_j := η^dΣ_y|E_0(y, 0)|(1 + |y|)^j and γ_j := η^dΣ_y|∇E_0(y, 0)|(1 + |y|)^j (|∇E_0| the Euclidean norm of the d differences):
 ν_j ≤ W_0M_j,  γ_j ≤ W_1M_j,  M_j² := e^{2δ_*√d}|S^{d−1}|∫_0^∞ r^{d−1}(b + r)^{2j}e^{−2δ_*r}dr,  b := 1 + √d + D/2.
Proof. Cauchy–Schwarz: ν_j ≤ (η^dΣ e^{2δ_*|y−x_0|}|E_0|²)^{1/2}(η^dΣ e^{−2δ_*|y−x_0|}(1 + |y|)^{2j})^{1/2}. For z in the cell y + [0, η)^d: |z − x_0| ≤ |y − x_0| + √d, so e^{−2δ_*|y−x_0|} ≤ e^{2δ_*√d}e^{−2δ_*|z−x_0|}; and 1 + |y| ≤ 1 + √d + |z| ≤ 1 + √d + D/2 + |z − x_0| = b + |z − x_0| (|x_0| ≤ D/2). So the lattice sum is ≤ the integral. Same for γ_j with W_1. ∎ This holds for every j ≥ 0, not only j ≤ 2.
5.4 Coset sums and the Γ_j of SOURCES_EU §4.5 [P]. Define σ_j := sup_y Σ_{c∈Z^d}|E_0(y, c)|(1 + |y − c|)^j and σ_j^∇ likewise with |∇E_0|. By 5.2, σ_j ≤ C_E Σ_{c}e^{−δ_E|y−c|}(1 + |y − c|)^j ≤ C_E e^{δ_E√d}|S^{d−1}|∫_0^∞ r^{d−1}(1 + √d + r)^je^{−δ_Er}dr, uniform in y and k (same cell argument on the unit lattice); same for σ_j^∇ with C_∇, δ_∇. These are the sums at fixed fine point y over blocks c that SOURCES_EU §4.5 replaced by η^d y-sums "[I] up to lattice-sum versus integral factors". With them, for j ≥ 1, using (u + v)^j ≤ 2^{j−1}(u^j + v^j) and translation invariance:
 Γ_j := sup_c Σ_{c′}Σ_yη^d|∇E_0(y, c)||∇E_0(y, c′)|(|y − c| + |y − c′|)^j ≤ 2^{j−1}(γ̃_jσ_0^∇ + γ̃_0σ_j^∇),  Γ_0 ≤ γ̃_0σ_0^∇,
where γ̃_j := η^dΣ_y|∇E_0(y, 0)||y|^j ≤ γ_j. This replaces the [I] bound "Γ_j ≤ 2^jγ_0γ_j [I: lattice-sum factor]" of SOURCES_EU §4.5 by a proved one; numerically the two differ by a factor ≈ 1.3–1.5 (§6.4). Likewise the Schur steps of SOURCES_EU §4.3 (c-sum at fixed y) are controlled by σ_j.
5.5 Explicit values, d = 4 [P arithmetic, script `consts`]. Best a = 3.98: m = 0.02175, s_0 = 2.767e−4, δ_* = 2.93e−9, W_0 = 6.65e5, W_1 = 9.80e4; H_0 = 1.26e6, H_1 = 1.39e7; C_E ≈ 5.3e6, δ_E = 9.8e−10; C_∇ ≈ 1.4e7, δ_∇ = 5.9e−10. Moment bounds: log10 ν_j ≤ 23.3, 32.2, 41.3 and log10 γ_j ≤ 22.5, 31.4, 40.4 for j = 0, 1, 2.
Consistency with the brief's check. δ_E, δ_∇ ≤ 1.2 (observed) and all bounds exceed the numerical values (ν_0 ≈ 4–5, γ_2 ≈ 250) [P: arithmetic]. The bounds are qualitative: they prove k-uniformity. They are useless as numbers in SOURCES_EU §4.6 (c_{2/3} would be ~1e40). A realistic rigorous constant needs a sharper argument, e.g. a k-uniform zero-free strip for the analytic continuation of T (§6.3 locates the relevant zero numerically) [I, not done].

## 6. Numerics (d = 4) [N]
Scripts: numerics/t2_eumom_n7.py (constants of §5.5; kernel at (N, L_u) = (3, 10), (5, 8), (7, 6), (7, 7); 2 s) and numerics/t2_eumom_strip.py (L_u convergence at (3, 14), (3, 18), (5, 10), (7, 8); corner-line zeros; 10 s). The kernel code is a copy of k0_d.py `kernel_moments` (QA = B checked to 1e−9); k0_d.py was not modified.
6.1 A finite-volume artifact in SOURCES_EU §4.4. k0_d.py uses B = δ_0 − L_u^{−d} (mean zero) and returns A = E_0^T(·, 0) − L_u^{−d}, because E_0^T maps the constant 1 to the constant 1. The constant shift adds about L_u^{−d}∫_{torus}|y|^j dy to the |A|-moments: ≈ 1 at j = 0 and ∝ L_u² at j = 2. Evidence: the SOURCES_EU-type j = 2 moment Σ η^d|A|r² at N = 3 is 41.90, 74.77, 117.77 for L_u = 10, 14, 18 (grows like L_u²), while the same moment of E_0^T = A + L_u^{−d} is 9.29, 9.93, 10.10 (converges). So the "j = 2 not converged in L_u" remark of SOURCES_EU §4.4 is this shift, not slow decay of E_0. The |∇E_0| moments are unaffected (the shift is constant) and reproduce SOURCES_EU exactly (N = 3, L_u = 10: 23.797, 32.616, 58.056; N = 5, L_u = 8: 28.281, 39.62, 70.613).
6.2 Clean moments (E_0^T, i.e. infinite-volume E_0 up to periodization). η^dΣ_yE_0 = 1.000000 in all runs (= ê(0) = 1, §2.1).
| N, L_u | Σ|E_0|r^j, j = 0,1,2 (r about corridor centre) | Σ|∇E_0|r^j | ν_j (brief def., about y = 0) | γ_j (brief def.) |
| 3, 18 | 4.255, 5.471, 10.10 | 23.89, 33.13, 61.20 | 4.255, 10.93, 31.02 | 23.89, 61.64, 174.4 |
| 5, 10 | 4.822, 6.415, 11.78 | 28.55, 40.80, 75.94 | 4.822, 13.05, 38.39 | 28.55, 77.89, 230.5 |
| 7, 8 | 5.059, 6.650, 11.71 | 30.18, 42.83, 77.29 | 5.059, 13.83, 40.59 | 30.18, 83.54, 248.1 |
L_u dependence at fixed N: N = 3: ν_2 = 29.84 / 30.79 / 31.02 at L_u = 10 / 14 / 18; N = 7: ν_0 = 4.857 / 5.100 / 5.059 at L_u = 6 / 7 / 8 (the odd L_u = 7 run is not monotone in the sequence; ~1% level). The moments grow slowly with N (N = 3 → 7: ν_0 +19%, γ_2 +42%) and look convergent; the N-dependence is not extrapolated here.
Comparison with the values quoted in the brief: ν_2 ≈ 57 (SOURCES_EU, mean-shifted, (1 + r)² about the centre) becomes 29.4 (N = 5, L_u = 10, same centre) or 38.4 (about y = 0). γ_0 ≈ 28, γ_1 ≈ 68, γ_2 ≈ 178 (about the centre) are confirmed: 28.55, 69.35, 186.1 at L_u = 10.
6.3 Decay rate. Shell maxima max{|E_0(y)| : R ≤ r < R + 1}, N = 3, L_u = 18: 2.035, 0.404, 0.126, 0.0397, 0.0126, 4.00e−3, 1.28e−3, 4.09e−4, 1.38e−4; successive ratios 5.04, 3.21, 3.18, 3.16, 3.14, 3.12, 3.13, 2.97 (last shell touches the torus boundary). |∇E_0|: ratios 2.17, 3.14, 3.19, 3.17, 3.15, 3.13, 3.11, 3.10. N = 5 (L_u = 10): 4.01, 2.98, 2.94, 2.95. N = 7 (L_u = 8): 3.86, 2.92, 2.81. So the observed rate is δ_obs ≈ ln 3 ≈ 1.05–1.15, slowly decreasing with N.
Analytic continuation. The singularities of ê in complex p come from zeros of T(p′) (§2.1; ŵ and the l-sum are analytic near the real corner; poles of T at Δ_l = 0 cancel in ê). On the corner line p′ = (π, …, π) + iκe_ν, T is real (checked to 1e−12) and its first zero is at κ = 1.30, 1.21, 1.18, 1.16, 1.15, 1.15 (N = 3, 5, 7, 15, 31, 61) for ν = μ, and κ = 2.66, 2.47, 2.39, 2.30, 2.28, 2.27 for ν ≠ μ. A zero at Im p′_μ = κ caps the decay rate along e_μ at κ [I: standard Paley–Wiener reading, not proved here]. So the k-uniform rate cannot exceed ≈ 1.15 along the corridor axis, consistent with δ_obs. The theorem's δ ≈ 6e−10 is far below this; the gap is the price of the crude Combes–Thomas constants (§3.7).
6.4 Coset sums and Γ_j. sup_y Σ_c|E_0(y, c)|(1 + |y − c|)^j (r about the corridor centre), j = 0, 1, 2: 4.61, 11.02, 30.14 (N = 3, L_u = 18); 5.54, 14.27, 40.17 (N = 5, L_u = 10); 6.03, 15.01, 41.79 (N = 7, L_u = 8). For |∇E_0|: 39.70, 93.44, 242.2; 50.12, 123.5, 332.3; 53.10, 132.3, 356.4. So σ_0^∇ ≈ 1.75γ_0: the fixed-y block sum is larger than the η^d y-sum by ≈ 1.75 (the sup over y picks the worst position in the cell). With 5.4 at N = 5: Γ_1 ≤ γ̃_1σ_0^∇ + γ̃_0σ_1^∇ ≈ 40.8·50.1 + 28.5·123.5 ≈ 5.6e3 and Γ_2 ≤ 2(75.9·50.1 + 28.5·332.3) ≈ 2.7e4 (moments about the corridor centre, used as a proxy for γ̃), versus 3.8e3 and 2.0e4 in SOURCES_EU §4.6. The [I] lattice-sum factor there is thus ≈ 1.4; it is now a proved inequality with numerically known inputs.

## 7. What this closes, what stays open
7.1 Closed [P]. TRUST_LEDGER row A21 ("Uniform-in-k moments and exponential decay of the free extension kernel E_0 (ν_j, γ_j bounded in N)", status "implicit; numerical at N = 3, 5 only") and SOURCES_EU_VERIFY §6 open item (i): there are δ > 0 and C depending on d only (not on k, η = L^{−k}, or L) with |E_0(y, c)| + |∇E_0(y, c)| ≤ Ce^{−δ|y−c|} (Theorem 5.2). Hence ν_j, γ_j (every j, in particular j = 0, 1, 2) are bounded uniformly in k (5.3), and so are the fixed-y block sums σ_j, σ_j^∇ and Γ_j (5.4). The proof is self-contained: Fourier symbols of Q(1) and Δ (§1.4), the identity E_0 = G_aQ*(QG_aQ*)^{−1} (§2.2, scalar CMP 95 (1.103)), a k-uniform Poincaré bound (§2.4), the k-uniform lower bound T ≥ t_0 (§2.3), Combes–Thomas (§3), and symbol L¹ regularity (§4). It uses no unprinted Balaban estimate.
7.2 Consequences for SOURCES_EU / SOURCES_CDC.
 (a) Every constant in SOURCES_EU §4.3–4.6 that depends on ν_j, γ_j, Γ_j is now k-uniform [P], with the proved but useless values of §5.5 and the numerical values of §6.2, §6.4.
 (b) The two "[I] lattice-sum factor" steps of SOURCES_EU §4.5 (c-sum at fixed y; Γ_j ≤ 2^jγ_0γ_j) are replaced by the proved bound of 5.4 in terms of σ_j^∇ (numerically a factor ≈ 1.4 larger).
 (c) SOURCES_EU's ν_2 ≈ 57 is inflated by the mean-shift artifact (§6.1); the clean value is ≈ 29 (centre) / 38–41 (about y = 0, N = 5–7). This lowers c_St·ν_2 in ε_Q by a factor ≈ 1.5–2 [N].
 (d) The boundary-cutoff item of SOURCES_EU §5.1 needs exponential decay of E_0; Theorem 5.2 supplies it, but with the proved δ the cutoff cost e^{−δRM/2} is small only for RM ≳ 1e10. With the observed δ ≈ 1.1 [N] the cost is e^{−0.55RM}. So the boundary item is reduced to "R M large" in principle [P], not in practice.
 (e) SOURCES_CDC §4 (E_U) uses E_0 only through SOURCES_EU; same status.
7.3 Open.
 [I] Realistic rigorous constants (δ ≈ 1, ν_2 ≈ 40): needs a k-uniform zero-free strip for the continued T(p′) (the first zero on the corner line sits at Im p′_μ ≈ 1.15, §6.3) or a sharper real-space argument. Not done.
 [I] Scope: the proof is for the straight-line average Q_98(1) (cube * line, one component). For the corridor average Q_95 = Q_98 − L^{−1}(coarse gradient) of SOURCES_EU_VERIFY §3 the constraint couples components; the same method applies to the matrix symbol if the analogue of (S2) (a lower bound on the l = 0 symbol, now a matrix) holds. Not checked.
 [I] Background field: E_0 is the free kernel; the covariant 𝓔_U of SOURCES_EU §4.1 is built from it, and the remaining open items there (linear Mα_0 form, gauge-fixing line by line, C′_1(d, L) of CMP 98 (139)/(143), multiscale constraint) are untouched.
 [I] N-dependence of the numerical moments (slow growth N = 3 → 7) is not extrapolated to N = ∞; the proved bound covers all N.

## 8. Ledger
[V] CMP 95 p. 34 (1.99)–(1.103), incl. "H_kB = GQ*(QGQ*)^{−1}B" (1.103) and (1.100) "a^{−1}(φ − 1)φ^{−1} ≤ QGQ* ≤ a^{−1}I"; p. 35 Proposition 1.2 (1.110); p. 36 the Combes–Thomas remark ("e^{−⟨q,x⟩}Δ_a e^{⟨q,x⟩} − Δ_a is a small perturbation of Δ_a") — page images PDF pp. 18–20. CMP 95 text l. 468 ("independent of a … e.g. a = 1", about (1.44)) — text layer. Q_98(1) = straight-line cube * line average: [V] in SOURCES_EU §2 / SOURCES_EU_VERIFY §3 (CMP 98 (125)), not re-read here. CMP 96 (2.128), CMP 98 (139)/(141), CMP 99 pp. 392–396 not needed and not re-read.
[P] 1.2 facts (a)–(d) on the weight; k-step composition = cube * line at scale L^k.
[P] 1.4 Fourier representation; (S1)–(S4).
[P] 2.1 symbol of E_0; η^dΣE_0 = 1.
[P] 2.2 E_0 = G_aQ*(QG_aQ*)^{−1} for all a > 0 (scalar CMP 95 (1.103)).
[P] 2.3 T ≥ t_0 = 1/(dπ²ω), S_a ≥ s_0; K_0 ≤ 3610 (d = 4).
[P] 2.4 Poincaré ‖A‖² ≤ c_1‖∇A‖² + c_2‖QA‖², uniform in η.
[P] 3.1–3.6 Combes–Thomas: weighted L² bounds (3.5) with W_0, W_1 depending on d, a, δ only.
[P] 4.1–4.3 symbol bound, J(β) < ∞ for β < 2, uniform sup / Lipschitz / C^{1,1/2} bounds (R0)–(R3).
[P] 5.1 L² + Hölder ⇒ pointwise lemma; 5.2 Theorem: |E_0| ≤ C_Ee^{−δ_E|y−c|}, |∇E_0| ≤ C_∇e^{−δ_∇|y−c|}, k-uniform.
[P] 5.3 ν_j, γ_j ≤ W·M_j for all j; 5.4 coset sums σ_j, σ_j^∇ bounded; Γ_j ≤ 2^{j−1}(γ̃_jσ_0^∇ + γ̃_0σ_j^∇).
[P arithmetic] 5.5 d = 4: δ_* = 2.93e−9, δ_E = 9.8e−10, δ_∇ = 5.9e−10; C_E ≈ 5.3e6, C_∇ ≈ 1.4e7; log10 of the bounds on ν_j: 23.3, 32.2, 41.3; on γ_j: 22.5, 31.4, 40.4. Qualitative only.
[N] 6.1 SOURCES_EU's |A| moments include a mean-shift artifact (j = 2 grows ∝ L_u²); gradient moments reproduced exactly.
[N] 6.2 clean moments, d = 4: ν_j = 4.26/10.9/31.0 (N = 3), 4.82/13.1/38.4 (N = 5), 5.06/13.8/40.6 (N = 7); γ_j = 23.9/61.6/174 (3), 28.5/77.9/230 (5), 30.2/83.5/248 (7); L_u-converged to ~1%.
[N] 6.3 shell decay ratio ≈ 3.1 (N = 3) → 2.8–2.9 (N = 7), δ_obs ≈ 1.05–1.15; first corner-line zero of T at Im p′_μ = 1.30 (N = 3) → 1.15 (N ≥ 31), at Im p′_ν = 2.66 → 2.27 for ν ≠ μ.
[I] 6.3 reading of the T-zero as a cap on the decay rate (Paley–Wiener, not proved here).
[N] 6.4 coset sums; σ_0^∇ ≈ 1.75γ_0; Γ_1 ≲ 5.6e3, Γ_2 ≲ 2.7e4 at N = 5 (vs 3.8e3, 2.0e4 in SOURCES_EU).
[I] 7.3 realistic constants; Q_95 corridor version; background-field items of SOURCES_EU; N → ∞ extrapolation of the numerical moments.
Summary. Proved: k-uniform exponential decay of E_0 and ∇E_0 and k-uniform bounds on all moments and block sums (TRUST_LEDGER A21), with explicit but astronomically weak constants. Reduced: nothing to new inputs. Open: realistic constants (δ ≈ 1.1, ν_2 ≈ 40 numerically), the Q_95 variant.
STATUS: COMPLETE
