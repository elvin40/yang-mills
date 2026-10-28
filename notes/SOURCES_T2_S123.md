IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_S123 — spectral inputs (S1)–(S3) for (M_j) at fixed level j (DERIVE)

Date: 2026-10-28. Status: complete (sections appended one at a time). (M_j) reduced to the 2D gap (G_A′) [open] and BETA_FP_M Prop. 4.4 region 1 [argued].
Author: headless Claude session, brief S123 (DERIVE).

Read: THEOREM2_PROOF_v4.md l. 117–176, 420–488; KAPPA_BOUNDED.md l. 1–41, 105–174; BETA_FP_M.md (all); BETA_FP_H.md l. 13–90; BETA_FP_H_VERIFY.md §5 (l. 33–39); U3_LEMMA51.md l. 1–140; U3_AW.md §1, §3.3–§4.7; U3_AW_VERIFY.md grades; U3_REPAIRS_VERIFY.md grades (Prop. B, O5, O6) and U3_REPAIRS.md statements; B2_TWOSTEP.md l. 117–154; LEMMA_DPRIME.md l. 1–40; TRUST_LEDGER.md l. 62–70; numerics/NUMERICS.md l. 53–78. Balaban: CMP 99 (propagators in background field) pp. 395–397, page images (PDF pp. 7–9) and text layer l. 290–445.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md; reports/ONLINE_SWEEP.md not opened).
No existing file edited. New script (if any): numerics/t2_s123_*.py.

Tags: [P] proved here; [R] reduced to a named input (named, with location); [I] inference or reading not checked line by line; [V] checked against a Balaban page image or text layer (stated which).

## Plan
1. Setting and the twisted-kernel toolkit (Peierls product, Moyal expansion with remainder, Nenciu inverse, division, operator bounds from factored symbols).
2. Fixed-j well-posedness at flux f: Δ_i(f) are twisted kernels, C³ in f, with bounded minimizer maps.
3. (S1) and the stronger Gårding form (S1+): 𝒦_t(f) ≥ c𝔏_f − C|f|.
4. (S3): the magnetic relative bound (MC), elliptic regularity (ER), and (S3) with ε = 1/n.
5. (S2): exact separability at t = 0, (S2) at t = 0, coarse-scale (S2c) for all t, the weakest form that Prop. 4.3 uses, and the reduction of the near-zero input (Z_j) to a 2D gap (G_A).
6. Numerical check (2D, t = 0): inf spec and the gap around 0.
7. Corollary (M_j), consistency with numerics, where it enters.
8. Ledger.

## 1. Setting and the twisted-kernel toolkit

### 1.1 Setting
Level j ≥ 1 fixed, L odd ≥ 3, d = 4, SU(2). Coarse units (level-j lattice = Z⁴). V_f = constant abelian field, coarse plaquette angle f in the (0,1) plane, colour σ_3 (BETA_FP_H §1). Link variables are midpoint variables (U3_AW §1), so a coarse 1-form b = (b_ν) has its ν-component at the midpoints x + e_ν/2.
Sectors. All operators below commute with the constant rotations e^{iασ_3}, which fix V_f and the fine background (U3_LEMMA51 Lemma 2.1; the proof uses only equivariance of each ingredient, so it applies equally to Δ_0(f), Δ_j(f) and D_cD_c^T). So each operator is block diagonal: a neutral block (charge 0), a charged block (charge e; e = 2 in the e^{iθσ_3} convention) and its complex conjugate (charge −e). In the neutral block f enters only through cos(f/M²)-type factors and every operator is an ordinary convolution (U3_LEMMA51 Prop. 2.2), so all statements below are per-momentum statements there and are not discussed further. From now on: the charged block, charge e ≠ 0.
Gauge. Symmetric gauge W(x, y) := exp(i(ef/2) x∧y), x∧y := x_0y_1 − x_1y_0.
Objects (KAPPA_BOUNDED §1.2). Δ_0(f) := coarse Wilson Hessian at V_f; Δ_j(f) := S[Δ(φ); C_f], φ = f/L^{2j} (U3_LEMMA51 (1.1)); D_c = D_c(f) := coarse covariant gradient at V_f; 𝒦_t(f) := Δ_0(f) + t(Δ_j(f) − Δ_0(f)) + D_cD_c^T; V := Δ_j(f) − Δ_0(f), so 𝒦_t = 𝒦_0 + tV. μ := 2C_1|f|.

### 1.2 Twisted kernels
Let X ⊂ R⁴ be a set of positions invariant under Z⁴ translations with finitely many points per unit cell (coarse midpoints; for fine-to-coarse operators also the fine midpoints). An operator A on ℓ²(X) commuting with the magnetic translations by Z⁴ has the form A(x, y) = W(x, y)a(x, y) with a(x + m, y + m) = a(x, y) for m ∈ Z⁴ (U3_LEMMA51 Lemma 3.1; for coarse-to-coarse convolution operators a(x, y) = a(x − y)). Write A = W·a. Norms (Schur type):
  ‖a‖_{θ,k} := max{sup_x Σ_y, sup_y Σ_x} e^{θ|x−y|}(1 + |x − y|)^k |a(x, y)|,  ‖a‖_{(k)} := ‖a‖_{0,k}.
Call a admissible if ‖a‖_{θ,0} < ∞ for some θ > 0. Then all ‖a‖_{θ′,k}, θ′ < θ, are finite, because (1 + r)^k e^{θ′r} ≤ C_{k,θ−θ′}e^{θr}.
Per-cell trace. τ(W·a) := Σ_{x ∈ cell} tr a(x, x). It is the finite faithful normal trace on the von Neumann algebra 𝒩_f of operators commuting with the magnetic translations [I: standard, cited as in BETA_FP_M §3]. N_t(λ) := τ(1_{(−∞,λ]}(𝒦_t(f))).

Lemma 1.1 (twisted product, Moyal expansion with remainder) [P]. For kernels a, b:
(a) (W·a)(W·b) = W·(a ⋆_f b), (a ⋆_f b)(x, y) := Σ_z a(x, z)b(z, y) e^{i(ef/2)(x−z)∧(z−y)}.
(b) ‖W·a‖_op ≤ ‖a‖_{(0)}, and ‖a ⋆_f b‖_{θ,k} ≤ ‖a‖_{θ,k}‖b‖_{θ,k}.
(c) a ⋆_f b = ab + f m_1(a, b) + f² r_2(a, b; f), with m_1(a, b)(x, y) := (ie/2)Σ_z a(x, z)b(z, y)(x − z)∧(z − y), ‖m_1‖_{θ,k} ≤ (|e|/2)‖a‖_{θ,k+1}‖b‖_{θ,k+1}, ‖r_2‖_{θ,k} ≤ (e²/8)‖a‖_{θ,k+2}‖b‖_{θ,k+2}.
(d) ‖∂_f^m(a ⋆_f b)‖_{θ,k} ≤ (|e|/2)^m‖a‖_{θ,k+m}‖b‖_{θ,k+m}.
(e) For convolution kernels with symbols â, b̂ (Fourier transform on the offset lattices), the symbol of m_1(a, b) is a fixed constant times {â, b̂} = ∂_0â∂_1b̂ − ∂_1â∂_0b̂ (U3_LEMMA51 (3.1)). Hence if â vanishes to order p at K = 0 and b̂ to order q (equivalently: all moments Σ_w w^γ a(w) with |γ| < p vanish), the symbol of m_1(a, b) vanishes to order ≥ max(p − 1, 0) + max(q − 1, 0).
Proof. (a) W(x, z)W(z, y) = W(x, y)e^{i(ef/2)(x−z)∧(z−y)} (the three wedges sum to (x − z)∧(z − y); U3_LEMMA51 proof of Lemma 3.2). (b) |W| = 1, Schur test; e^{θ|x−y|}(1 + |x−y|)^k ≤ e^{θ|x−z|}(1 + |x−z|)^k e^{θ|z−y|}(1 + |z−y|)^k. (c), (d) |w∧u| ≤ |w||u|, |e^{iα} − 1 − iα| ≤ α²/2, |∂_f^m e^{i(ef/2)w∧u}| ≤ (|e||w||u|/2)^m, then (b). (e) A factor w_μ under the sum is a derivative i∂_{K_μ} of the symbol; the order count is the Leibniz rule. ∎

Lemma 1.2 (Nenciu-type inverse) [P]. Let 𝔅_f = W·𝔟_f be bounded self-adjoint, and suppose (i) 𝔅_0 = 𝔟_0 is invertible with ‖𝔟_0^{−1}‖_{θ,1} =: G < ∞; (ii) ‖𝔟_f − 𝔟_0‖_{θ,0} ≤ ω(f) → 0 and ‖𝔟_f‖_{θ,1} ≤ B. If ω(f)G + (|e||f|/2)BG ≤ ½, then 𝔅_f is invertible, 𝔅_f^{−1} = W·g_f with ‖g_f‖_{θ,0} ≤ 2G. If moreover f ↦ 𝔟_f is C^m into ℓ¹_{θ,0}, then f ↦ g_f is C^m into ℓ¹_{θ′,k} for every θ′ < θ and k.
Proof. Put E := 𝔟_f ⋆_f 𝔟_0^{−1} − 1 = (𝔟_f ⋆_f 𝔟_0^{−1} − 𝔟_f𝔟_0^{−1}) + (𝔟_f − 𝔟_0)𝔟_0^{−1}. By Lemma 1.1(c) with one moment, ‖E‖_{θ,0} ≤ (|e||f|/2)BG + ω(f)G ≤ ½. (ℓ¹_{θ,0}, ⋆_f) is a Banach algebra (Lemma 1.1(b)), so 1 + E has a ⋆_f-inverse of norm ≤ 2, and R := W·(𝔟_0^{−1} ⋆_f (1 + E)^{⋆−1}) satisfies 𝔅_fR = 1. A self-adjoint bounded operator with a bounded right inverse is surjective, hence injective (ker = (ran)^⊥ = 0), hence invertible with inverse R. Smoothness: the Neumann series Σ(−E)^{⋆n} converges in ℓ¹_{θ,0}; by Lemma 1.1(d) each f-derivative costs one moment per factor, which is absorbed by θ → θ′ < θ; the derivative series converge (terms ≤ C n^m 2^{−n}). ∎

Lemma 1.3 (division) [P]. Let a be an admissible convolution kernel on an offset lattice Z⁴ + s whose moments of order < p vanish. Then a = Σ_{|α|=p} ∂^α h_α, with ∂_μ the forward difference (symbol K̂_μ := e^{iK_μ} − 1 up to the sign convention) and h_α admissible on Z⁴ + s. If p = 2q and a is Hermitian, a = Σ_{|β|=|γ|=q} (∂^β)^† h_{βγ} ∂^γ with the block matrix [h_{βγ}] Hermitian and admissible.
Proof. ã(K) := e^{iK·s}â(K) is 2π-periodic and analytic on a strip |Im K_ν| < θ. One variable: if g is periodic analytic on the strip, g(K_1) − g(0) = K̂_1 q(K_1) with q analytic periodic on the same strip, because the zeros of e^{iK_1} − 1 in the strip are the simple zeros 2πZ, where the numerator vanishes. Telescoping ã(K) = Σ_ν[ã(0, …, 0, K_ν, …, K_4) − ã(0, …, 0, K_{ν+1}, …, K_4)] + ã(0) gives ã = Σ_ν K̂_ν q_ν. If ã vanishes to order p, each quotient vanishes to order p − 1 (the numerators are divisible power series of order ≥ p). Induction on p. Analytic on a narrower strip ⇒ admissible. For the Hermitian form use K̂_μ = −e^{iK_μ}·conj(K̂_μ) to move q factors to the left, then symmetrize h ↦ (h + h^†)/2, which does not change a. ∎

Notation. T_μ := W·(unit shift by e_μ), a unitary (magnetic translation) acting componentwise; ∇_μ := T_μ − 1 = W·∂_μ; 𝔏_f := Σ_μ∇_μ^*∇_μ = Σ_μ(2 − T_μ − T_μ^*) = W·l, l(K) := |K̂|²1. T_0T_1 = e^{iε ef}T_1T_0 (ε = ±1 fixed by orientation), and T_μ commutes with T_ν, T_ν^* if {μ, ν} ≠ {0, 1}.

Lemma 1.4 (operator bounds from factored symbols) [P]. Let c be an admissible Hermitian convolution kernel.
(a) If ĉ vanishes to order 2 at K = 0: ±W·c ≤ C_c(𝔏_f + |f|).
(b) Σ_{μ,ν}(∇_μ∇_ν)^*(∇_μ∇_ν) ≤ C(𝔏_f + |f|)² and 𝔏_f² = W·(l²) + f²W·r with r admissible, for |f| ≤ 1.
(c) If ĉ vanishes to order 4: ±W·c ≤ C_c(𝔏_f + |f|)².
The constants depend on finitely many moments of c (and of its quotients h from Lemma 1.3), not on f.
Proof. (a) Lemma 1.3: c = Σ_{μν}∂_μ^† m_{μν}∂_ν. By Lemma 1.1, Σ_{μν}∇_μ^*(W·m_{μν})∇_ν = W·c + f W·e with ‖e‖_{(0)} ≤ C. For ψ ∈ ℓ², |⟨ψ, Σ∇_μ^*(W·m_{μν})∇_νψ⟩| ≤ M Σ_μ‖∇_μψ‖² = M⟨ψ, 𝔏_fψ⟩, M := Σ‖m_{μν}‖_{(0)}. So ±W·c ≤ M𝔏_f + C|f|.
(b) [∇_μ, ∇_ν] = [T_μ, T_ν] and [∇_μ, ∇_ν^*] = [T_μ, T_ν^*] have norm ≤ |e||f| for {μ, ν} = {0, 1} and vanish otherwise (also for μ = ν, since T_μ is unitary). Then ‖𝔏ψ‖² = Σ_{μν}⟨∇_μψ, ∇_μ∇_ν^*∇_νψ⟩ = Σ_{μν}‖∇_μ∇_νψ‖² + Σ⟨[∇_ν, ∇_μ]ψ, ∇_μ∇_νψ⟩ + Σ⟨∇_μψ, [∇_μ, ∇_ν^*]∇_νψ⟩. The last sum is ≤ 4|e||f|⟨ψ, 𝔏ψ⟩, the middle one ≤ ½Σ‖∇_μ∇_νψ‖² + 8e²f²‖ψ‖². Hence Σ‖∇_μ∇_νψ‖² ≤ 2‖𝔏ψ‖² + 8|e||f|⟨ψ, 𝔏ψ⟩ + 16e²f²‖ψ‖² ≤ C⟨ψ, (𝔏 + |f|)²ψ⟩. For 𝔏²: l is scalar, so {l, l} = 0 and m_1(l, l) = 0 by Lemma 1.1(e); the rest is r_2.
(c) Lemma 1.3: c = Σ_{β,γ}(∂^β)^† h_{βγ}∂^γ, |β| = |γ| = 2. By Lemma 1.1, Σ(∇^β)^*(W·h_{βγ})∇^γ = W·c + f W·c_1 + f²W·r, with c_1 = Σ[m_1(∂^{β†}, h_{βγ})∂^γ + m_1(∂^{β†}h_{βγ}, ∂^γ)]. By Lemma 1.1(e) the first term vanishes to order ≥ 1 + 2 = 3 and the second to order ≥ 1 + 1 = 2. The left side and W·c are self-adjoint, so only the Hermitian part c_1^H = (c_1 + c_1^†)/2 enters ⟨ψ, ·ψ⟩; it vanishes to order ≥ 2. The left side is bounded by ‖[h]‖Σ_{|β|=2}‖∇^βψ‖² ≤ C⟨ψ, (𝔏 + |f|)²ψ⟩ by (b); |f||⟨ψ, W·c_1^Hψ⟩| ≤ C|f|⟨ψ, (𝔏 + |f|)ψ⟩ by (a); f²|⟨ψ, W·rψ⟩| ≤ Cf²‖ψ‖². Sum ≤ C′⟨ψ, (𝔏 + |f|)²ψ⟩. ∎

Remark. Lemma 1.4 is the only "magnetic calculus" used in this file. It needs no square roots and no inverse symbols, so the non-analyticity of |K| at K = 0 never enters. All Moyal errors are paid with moments of admissible kernels.

## 2. Fixed-j well-posedness at flux f

Inputs (all cited from verified project files, or checked on a Balaban page).
- (I1) One-step recursion. Δ_i(f) = T_f[Δ_{i−1}(fL^{−2})] exactly (BETA_FP_H Fact 1.1(d); R23_VERIFY §5; tower property 6·10^{−14}). T_f is the stationary value of the one-step bordered problem 𝔅_f = [[A_f, Q̃_f^†], [Q̃_f, 0]], A_f = Δ_{i−1}(fL^{−2}) + D_fΠD_f^*, in level-i units with flux f per level-i plaquette (U3_AW §1). Δ_i(f) = −[𝔅_f^{−1}]_{22} and the minimizer map is H_i(f) = [𝔅_f^{−1}]_{12} (U3_LEMMA51 Prop. 2.3).
- (I2) f = 0 invertibility on a strip. O6: ‖𝔅(K)^{−1}‖ ≤ b(L) for all real K and all levels (U3_REPAIRS §3; U3_REPAIRS_VERIFY grade 4, CONFIRMED for the one-step bordered matrix). Lemma A1: the same holds with 2b(L) on |Im K_ν| ≤ δ_*(L) (U3_AW §4.2; U3_AW_VERIFY item 3, CONFIRMED). Shifting the K-contour by ±iδ_* gives |𝔟_0^{−1}(x, y)| ≤ C b(L)e^{−δ_*|X|}, X the coarse displacement, so 𝔟_0^{−1} is admissible with any rate θ < δ_* [P, Paley–Wiener on the torus].
- (I3) Peierls structure of the fixed one-step vertices. Q̃_f, D_f, Π commute with the magnetic translations, have finite range (one block), and their reduced kernels a = Q̃_f/W etc. have finitely many distinct entries, each analytic in f near 0. Reason: Balaban's averaging is gauge covariant, CMP 99 p. 395 (3.32): "(Q′_j(U^u)R(u)λ)(y) = R(u(y))(Q′_j(U)λ)(y)", and likewise (3.34): "Δ_a(U^u) = R(u)Δ_a(U)R(u^{−1}), G(U^u) = R(u)G(U)R(u^{−1})" [V: page image, PDF pp. 7–8]; the fine background U_0^φ is invariant under magnetic translations; in symmetric gauge its link angles are linear in f, and the averaging (CMP 109 (0.4)) is analytic in the link variables near the identity. Covariance then gives the form W·a (U3_LEMMA51 Lemma 3.1) [I: the entrywise analyticity is read off the structure of (0.4), not written entry by entry; it is the item BETA_FP_M ledger A1 calls (P_0)].
- (I4) Base. The fine Wilson Hessian at flux φ has finite range and entries that are trigonometric in φ (U3_AW Prop. A2, base step).

Proposition 2.1 (fixed-level well-posedness) [P given (I1)–(I4)]. Fix j ≥ 1, L odd ≥ 3. There are f_*(j, L) > 0 and θ_j > 0 such that for |f| ≤ f_* and every level i ≤ j (flux f_i := fL^{−2(j−i)} per level-i plaquette):
(a) the one-step bordered operator 𝔅_{f_i} is invertible, 𝔅_{f_i}^{−1} = W·g_{f_i} with g admissible;
(b) Δ_i(f_i) = W·a_i(f_i), a_i admissible with rate θ_i ≥ θ_j, and f ↦ a_i(f_i) is C³ into ℓ¹_{θ_j,k} for every k;
(c) ‖H_i(f_i)‖ ≤ h_i < ∞, with h_i independent of f.
Consequently 𝒦_t(f) = W·k_t(f) with k_t(f) admissible, C³ in f, affine in t, and k_t(f) = k_t(0) + f k_t^{(1)} + f²k_t^{(2)} + ρ_t(f), ‖ρ_t(f)‖_{θ_j,k} ≤ C|f|³, uniformly in t ∈ [0, 1].
Proof. Induction on i. Base i = 0: (I4). Step: by the induction hypothesis the input block Δ_{i−1}(f_{i−1}) = W·a_{i−1} is admissible and C³ in f; with (I3), 𝔟_f := the reduced kernel of 𝔅_{f_i} satisfies ‖𝔟_f − 𝔟_0‖_{θ,1} ≤ C|f| and ‖𝔟_f‖_{θ,1} ≤ B. With (I2), Lemma 1.2 applies for |f| small: (a), and g is C³ in f into ℓ¹_{θ′,k}. Then a_i = −[g]_{22} gives (b), and ‖H_i‖ ≤ ‖[g]_{12}‖_{(0)} ≤ 2G gives (c). Each step loses a fixed fraction of the decay rate and shrinks the f-range; there are j steps. The coarse pieces Δ_0(f) (coarse Wilson Hessian) and D_cD_c^T have finite range with entries analytic in f, so k_t(f) inherits (b). Taylor's theorem in the Banach space ℓ¹_{θ_j,k} gives the expansion. ∎
Remark (what this does and does not say). The symbol Taylor coefficients of a_j(f) are the σ_j^{(m)} of U3_LEMMA51/U3_AW. Prop. 2.1 adds what those files do not state: a remainder bound at finite f, in kernel norm, at fixed j. It is not uniform in j (f_*, θ_j, h_i, C all depend on j and L), which the brief allows.

Stationary-value identity [P]. For V ∈ ℓ²(coarse 1-forms) put x* := H_i(f)V. The KKT equations A_fx* = Q̃_f^†λ, Q̃_fx* = V, Δ_i(f)V = λ give ⟨V, Δ_i(f)V⟩ = ⟨Q̃_fx*, λ⟩ = ⟨x*, A_fx*⟩ = ⟨x*, Δ_{i−1}(f_{i−1})x*⟩ + ‖Π^{1/2}D_f^*x*‖² (with the fixed normalization of U3_AW Lemma A4, where this identity reads H^†AH = Δ_j at f = 0). No positivity of A_f on ker Q̃_f is used: the identity holds for the stationary point.

## 3. (S1) and the Gårding form (S1+)

Normalization. Let ν_W > 0 be the ratio between the normalization in which Lemma M (U3_AW §3.3) has Maxwell coefficient 1 and the normalization 2Σ_p q_p of U3_LEMMA51 (2.1). (If (2.1) is the full Hessian with q_p = (1/8)|curl|² at φ = 0, then ν_W = 4.) Only the existence of ν_W matters.

Lemma 3.1 (Wilson Hessian at constant flux) [P]. For |φ| ≤ π/2, on any lattice (fine or coarse) the Wilson Hessian at the constant abelian field with plaquette angle φ in the (0,1) plane satisfies Hess(φ) ≥ −(3/2)ν_W|sin φ|·1, as an operator on ℓ².
Proof. By U3_LEMMA51 (2.1), per plaquette q_p(B) = (cos φ_p/8)|Σ_i s_iX_i|² − (sin φ_p/4)Σ_{i<j}s_is_j(X_i × X_j)_3, with X_i the Ad-transported B_i, |X_i| = |B_i|. For cos φ_p ≥ 0 the first term is ≥ 0. |(X_i × X_j)_3| ≤ |X_i||X_j|, and for four numbers Σ_{i<j}a_ia_j ≤ (3/2)Σa_i². So 2q_p ≥ −(3/4)|sin φ_p|Σ_{b∈p}|B_b|². Only (0,1) plaquettes have φ_p ≠ 0, and a 0- or 1-link lies in exactly two of them. Summing: 2Σ_pq_p ≥ −(3/2)|sin φ||B|². ∎

Proposition 3.2 (level j) [P given Prop. 2.1]. For |f| ≤ f_*: Δ_j(f) ≥ −C_j|f| with C_j := (3/2)ν_W L^{−2j} Π_{i=1}^{j} h_i² (h_i from Prop. 2.1(c)).
Proof. Induction with the stationary-value identity of §2: ⟨V, Δ_i(f_i)V⟩ ≥ ⟨x*, Δ_{i−1}(f_{i−1})x*⟩ ≥ −C_{i−1}|f_{i−1}|‖x*‖² ≥ −C_{i−1}L^{−2}h_i²|f_i||V|², since the ghost term is ≥ 0, ‖x*‖ ≤ h_i|V| and f_{i−1} = f_iL^{−2}. Base: Lemma 3.1 at the fine flux φ = fL^{−2j}. ∎

Theorem 3.3 ((S1)) [P given Prop. 2.1]. For |f| ≤ f_* and all t ∈ [0, 1]: 𝒦_t(f) ≥ −C_1|f| with C_1 := max((3/2)ν_W, C_j).
Proof. 𝒦_t = (1 − t)Δ_0(f) + tΔ_j(f) + D_cD_c^T. Lemma 3.1 (coarse lattice, flux f) bounds Δ_0(f), Prop. 3.2 bounds Δ_j(f), and D_cD_c^T ≥ 0. ∎

Consistency [I]. In the Maxwell-1 normalization the continuum value is inf spec(−D_f² + 2efS) = −|ef| = −2|f| (e = 2). Theorem 3.3 gives C_1 ≥ 6|f|/|f| = 6 (ν_W = 4) at the Wilson level. So the bound is compatible with, and weaker than, the N–O value. C_j is existential (h_i ≥ L; numerically ‖H_j‖/L ≈ 1.65–1.76 at L = 3, U3_AW_VERIFY grade 5), so C_j is not small, and nothing needs it to be.

Facts on the f = 0 symbol of 𝒦_t (load-bearing for §3–§5).
- (F1) Δ_0(K) + D_cD_c^†(K) = |K̂|²1 =: l(K) exactly, in midpoint coordinates [P]. The Wilson f = 0 Hessian in midpoint coordinates is |K̃|²1 − K̃K̃^†, K̃_ν = 2i sin(K_ν/2), and D_c has symbol K̃; |K̃_ν|² = 4 sin²(K_ν/2) = |K̂_ν|². (Its degree-2 part |K|²1 − KK^T is the Lemma M normalization; the Feynman-gauge coefficient is 1, as in BETA_FP_H §1–§2.)
- (F2) δ := Δ_j(K) − Δ_0(K) (f = 0) vanishes to order 4 at K = 0 and is admissible [R: Lemma M, U3_AW §3.3, and O5/A0, U3_AW §4.1; both CONFIRMED in U3_AW_VERIFY items 2–3]. So 𝔨_t(K) := symbol of k_t(0) = l + tδ.
- (F3) 𝔨_t(K) ≥ c_* l(K) for all real K and t ∈ [0, 1], c_* > 0 [R: BETA_FP_H (2.3a), from BETA_FP_LEMMA43 Lemma 4.1 and U3_REPAIRS Prop. B, c_0 = (2/π)^{12}, C_1 ≤ 1363; CONFIRMED in U3_REPAIRS_VERIFY grade 2]. (If the coefficient of D_cD_c^T were α ≠ 1 the argument below works for any α ∈ (0, 2): the middle matrix 1 − (1 − α)·swap has eigenvalues α and 2 − α.)

Theorem 3.4 ((S1+), Gårding with Laplacian) [P given Prop. 2.1, (F1)–(F3)]. For |f| ≤ f_* and all t ∈ [0, 1]: 𝒦_t(f) ≥ (c_*/2)𝔏_f − C_1′|f|.
Proof. Put c := c_*/2 and g := 𝔨_t − c l ≥ c l (by (F3)). Step 1 (sum of squares at f = 0). Let 𝐤(K) : C⁴ → C^{16} be the column (K̂_ν1_4)_ν, so l = 𝐤^†𝐤. By Lemma 1.3 (order 4, Hermitian form) and regrouping, δ = 𝐤^†𝒟𝐤 with 𝒟 Hermitian, smooth, and ‖𝒟(K)‖ ≤ C_D l(K). So g = 𝐤^†𝒢𝐤, 𝒢 := (1 − c)1 + t𝒟. Choose smooth periodic φ, ψ with φ² + ψ² = 1, supp φ ⊂ {l < ρ_0}, supp ψ ⊂ {l > ρ_0/2}, ρ_0 := (1 − c)/(2C_D). On supp φ, 𝒢 ≥ (1 − c)/2, so 𝒢^{1/2} is smooth there; on supp ψ, g ≥ cρ_0/2 > 0, so g^{1/2} is smooth there. With s_1 := 𝒢^{1/2}φ𝐤 and s_2 := g^{1/2}ψ (smooth periodic, all kernel moments finite): g = φ²g + ψ²g = s_1^†s_1 + s_2^†s_2.
Step 2 (Peierls). (W·s)^* = W·s^†, so by Lemma 1.1, W·g = Σ_i(W·s_i)^*(W·s_i) − fW·m_1 − f²W·r with ‖m_1‖_{(0)}, ‖r‖_{(0)} ≤ C. Hence W·g ≥ −C|f|. (Lemmas 1.1, 1.3, 1.4 need only finitely many moments, so smooth symbols suffice.)
Step 3. 𝒦_t(f) = W·(c l) + W·g + W·(k_t(f) − k_t(0)), W·(c l) = c𝔏_f, and ‖k_t(f) − k_t(0)‖_{(0)} ≤ C|f| by Prop. 2.1. ∎
Remark. Theorem 3.4 implies (S1) again, with C_1′ in place of C_1. It is the form used in §4–§5. Its proof uses the f = 0 symbol only through (F1)–(F3); it does not use Prop. 3.2.

## 4. (S3): magnetic relative bound and elliptic regularity

Facts on the f¹ and f² data (cited, CONFIRMED in U3_AW_VERIFY items 1–3).
- (F4) Theorem W: σ_i^{(1)}(0) = τ_c for every i ≥ 0 (U3_AW (3.1)). Prop. E: σ_i(f; −K) = σ_i(f; K) in midpoint coordinates (U3_AW §2). Hence δσ_j^{(1)} := σ_j^{(1)} − σ_0^{(1)} vanishes to order 2 at K = 0 (value 0 by W, gradient 0 by evenness).
- (F5) By Prop. 2.1, V = W·v_f with v_f = δ + f v^{(1)} + f²v^{(2)} + ρ(f), where v^{(m)} are the f-Taylor coefficients of the reduced kernel of Δ_j(f) − Δ_0(f) (their symbols are δσ_j^{(m)}), all admissible and Hermitian (V is self-adjoint for every f and (W·a)^* = W·a^†), and ‖ρ(f)‖_{(0)} ≤ C|f|³. D_cD_c^T cancels in V.

Lemma 4.1 ((MC), relative bound of the level difference) [P given Prop. 2.1, (F2), (F4)]. For |f| ≤ f_*: ±V ≤ C_V(𝔏_f + |f|)².
Proof. Term by term with Lemma 1.4: ±W·δ ≤ C(𝔏 + |f|)² by 1.4(c) and (F2); ±fW·v^{(1)} ≤ C|f|(𝔏 + |f|) ≤ C(𝔏 + |f|)² by 1.4(a) and (F4); ±f²W·v^{(2)} ≤ Cf²; ±W·ρ(f) ≤ C|f|³. ∎
This is the operator form at finite f of the symbol weights of BETA_FP_H (2.4) (|δσ| ≲ K⁴ + |f|K² + f²), at fixed j. The step "symbol bound ⇒ operator bound", which BETA_FP_M §4.1 listed as needing a magnetic calculus, is supplied by Lemma 1.4.

Lemma 4.2 ((ER), elliptic regularity at finite flux) [P given Prop. 2.1, (F1)–(F3)]. There is C_E such that for |f| ≤ f_*, t ∈ [0, 1] and μ = 2C_1|f|:
  𝔏_f² ≤ C_E[(𝒦_t(f) + μ)² + f²].
Proof. (i) 𝒦_t + μ = W·k + B′ with k := k_t(0) and ‖B′‖ ≤ C|f| (Prop. 2.1). Since (X + Y)² − ½X² + Y² = ½(X + 2Y)² ≥ 0, (𝒦_t + μ)² ≥ ½(W·k)² − C²f².
(ii) (W·k)² = W·(k²) + fW·m_1(k, k) + f²W·r. 𝔨_t vanishes to order 2 at K = 0 (𝔨_t(0) = 0; ∇𝔨_t(0) = 0 by evenness of l and order 4 of δ), so the symbol of m_1(k, k) vanishes to order ≥ 2 (Lemma 1.1(e)); its Hermitian part is bounded by C(𝔏 + |f|) (Lemma 1.4(a)).
(iii) Put c := c_*²/2 and g_4 := 𝔨_t² − c l². Since 𝔨_t ≥ c_*l ≥ 0 and l is scalar, 𝔨_t² ≥ c_*²l², so g_4 ≥ c l². Sum of squares: let 𝐦(K) : C⁴ → C^{64} be the column (K̂_μK̂_ν1_4)_{μν}, so 𝐦^†𝐦 = l². Lemma 1.3 gives δ = 𝐦^†ℋ𝐦 with ℋ Hermitian smooth. Then 𝔨_t² = l² + 2t lδ + t²δ² = 𝐦^†𝒢_4𝐦 + c l² with 𝒢_4 := (1 − c)1 + 2t lℋ + t²ℋ𝐦𝐦^†ℋ, and ‖𝒢_4 − (1 − c)1‖ ≤ C l. With the partition φ² + ψ² = 1 of Theorem 3.4 (now ρ_0 chosen so that 𝒢_4 ≥ (1 − c)/2 on supp φ): g_4 = s_1^†s_1 + s_2^†s_2, s_1 := 𝒢_4^{1/2}φ𝐦 (vanishes to order 2), s_2 := g_4^{1/2}ψ (vanishes near 0). By Lemma 1.1, W·g_4 = Σ(W·s_i)^*(W·s_i) − fW·m_1(s_i^†, s_i) − f²W·r; the symbols of m_1(s_1^†, s_1) and m_1(s_2^†, s_2) vanish to order ≥ 2, so by Lemma 1.4(a) W·g_4 ≥ −C|f|(𝔏 + |f|).
(iv) c W·(l²) = c𝔏² − cf²W·r (Lemma 1.4(b)).
Combining (ii)–(iv): (W·k)² ≥ c𝔏² − C|f|(𝔏 + |f|) ≥ (c/2)𝔏² − C′f², using C|f|𝔏 ≤ (c/2)𝔏² + C²f²/(2c). With (i): (𝒦_t + μ)² ≥ (c/4)𝔏² − C″f². ∎

Theorem 4.3 ((S3)) [P given Prop. 2.1, (F1)–(F4)]. (a) For |f| ≤ f_* and all t ∈ [0, 1]: ±V ≤ C_3[(𝒦_t(f) + μ)² + f²], C_3 := C_V(2C_E + 2).
(b) For the subdivision t_i = i/n: ±(𝒦_{t_{i+1}} − 𝒦_{t_i}) = ±V/n ≤ εC_3[(𝒦_{t_i} + μ)² + f²] with ε := 1/n. Since sup_{t,|f|≤f_*}‖𝒦_t(f)‖ ≤ sup‖k_t(f)‖_{(0)} =: K_* < ∞, the condition ε ≤ ε_0 = c/(C_3(K_* + 1)) of BETA_FP_M §4.3 (correction to Lemma 4.2) holds once n ≥ C_3(K_* + 1)/c.
Proof. (a) (𝔏 + |f|)² ≤ 2𝔏² + 2f² ≤ 2C_E[(𝒦_t + μ)² + f²] + 2f² ≤ (2C_E + 2)[(𝒦_t + μ)² + f²]; insert in Lemma 4.1. (b) is (a) at t = t_i divided by n. ∎
Remarks. (1) The t-subdivision of KAPPA_BOUNDED §1.3 is used exactly as stated there: (S1) holds for each 𝒦_{t_i} (Theorem 3.3), and (S3) holds relative to each 𝒦_{t_i} (Theorem 4.3(b)); no window form (S3w) is needed. (2) Even without subdivision, (a) gives the lower half of BETA_FP_M Lemma 4.2 for the pair (𝒦_0, 𝒦_1) with η = C_3[(3R + 2)²μ² + f²] = O(f²); only the upper half needs ε small. (3) Constants are existential and j-dependent; C_3 contains c_*^{−4} ≈ 1363⁴ through (F3).

## 5. (S2): density of states

### 5.1 Fibres over k_⊥ and the t = 0 operator
Fibre decomposition [P]. The field lies in the (0,1) plane, so in symmetric gauge the translations in directions 2 and 3 are ordinary translations that commute with every operator here (Δ_0(f), Δ_j(f), D_c, and, by (I3), the averaging). Partial Fourier transform in (x_2, x_3) gives 𝒦_t(f) = ∫^⊕_{T²} 𝒦_t(f; k_⊥) dk_⊥/(2π)², k_⊥ = (K_2, K_3), with fibres in the 2D twisted algebra 𝒩_f^{(2)} of the (0,1) plane (trace τ_2), and N_t(λ) = ∫ n_t(λ; k_⊥) dk_⊥/(2π)², n_t(λ; k_⊥) := τ_2(1_{(−∞,λ]}(𝒦_t(f; k_⊥))). The fibres are norm-analytic in k_⊥ on a strip (admissible kernels). An operator inequality between decomposable operators holds in every fibre (a.e., then everywhere by continuity). So Theorems 3.3, 3.4, 4.3 and Lemma 4.2 hold fibrewise, with 𝔏_f(k_⊥) = 𝔏^{01}_f + |k̂_⊥|², 𝔏^{01}_f := Σ_{μ=0,1}∇_μ^*∇_μ.

Lemma 5.1 (exact separability at t = 0) [P; the identification of (2.1) with the covariant curl is I]. 𝒦_0(f) = 𝔏_f ⊗ 1_4 + 𝒮_f, where 𝒮_f acts only on the components (b_0, b_1), is a polynomial in T_0^{±1}, T_1^{±1}, and ‖𝒮_f‖ ≤ C_S|f|. Hence 𝒦_0(f; k_⊥) = A(f) + |k̂_⊥|², with A(f) := 𝔏^{01}_f ⊗ 1_4 + 𝒮_f independent of k_⊥, and A(f) = 𝔏^{01}_f exactly on (b_2, b_3).
Proof. Charged block of (2.1). For a plaquette in a plane (μ, ν) ≠ (0, 1), φ_p = 0 and q_p = (1/8)|Σ_is_iX_i|², and for the charged components Σ_is_iX_i is (a unimodular factor times) the covariant lattice curl ∇_μb_ν − ∇_νb_μ built with the transport of W [I: midpoint bookkeeping; any other transport differs by a gauge transformation, which does not change the spectrum]. For the (0,1) plaquettes, q_p = (cos f/8)|∇_0b_1 − ∇_1b_0|² + spin term; both involve only b_0, b_1, T_0, T_1. The Feynman term is ‖Σ_μ∇_μ^*b_μ‖² with the same transport. The overall factor is fixed by (F1): at f = 0 the sum is l·1. The identity
  Σ_{μ<ν}‖∇_μb_ν − ∇_νb_μ‖² + ‖Σ_μ∇_μ^*b_μ‖² = Σ_{μ,ν}‖∇_μb_ν‖² + Σ_{μ,ν}⟨b_μ, [∇_μ, ∇_ν^*]b_ν⟩
follows by expanding both squares and relabelling μ ↔ ν. [∇_μ, ∇_ν^*] = [T_μ, T_ν^*] vanishes unless {μ, ν} = {0, 1}, and then has norm ≤ |e||f|. So 𝒮_f = (commutator terms on b_0, b_1) − (1 − cos f)|∇_0b_1 − ∇_1b_0|² + (spin term), with norms ≤ 2|e||f|, 8f², (3/2)ν_W|sin f| (Lemma 3.1). ∎

Lemma 5.2 (IDS of the magnetic Laplacian, diamagnetic bound) [P]. For 0 < E ≤ 1: τ_2(1_{(−∞,E]}(𝔏^{01}_f ⊗ 1_4)) ≤ C_d E and τ(1_{(−∞,E]}(𝔏_f ⊗ 1_4)) ≤ C_d E², with C_d absolute (independent of f).
Proof. τ(1_{(−∞,E]}(X)) ≤ e^{sE}τ(e^{−sX}) for s > 0. e^{−s𝔏_f} = e^{−2ds}exp(sΣ_μ(T_μ + T_μ^*)); the diagonal kernel of (Σ_μ(T_μ + T_μ^*))^n is a sum over closed lattice paths of length n of unimodular phases, so |e^{−s𝔏_f}(x, x)| ≤ e^{−s𝔏_0}(x, x) = (e^{−2s}I_0(2s))^d ≤ C(1 + s)^{−d/2}. Take s = 1/E; four components. ∎
Remark. The continuum Landau count gives n(E) ≈ (|ef|/2π)·#{levels ≤ E} per component in 2D; Lemma 5.2 is the crude version, enough for upper bounds.

Proposition 5.3 ((S2) at t = 0) [P given Lemmas 5.1, 5.2 and Theorem 3.3]. For λ < λ′ in W = [−μ, 3Rμ] and |f| small: N_0(λ′) − N_0(λ) ≤ C_2|f|(λ′ − λ), C_2 := ρ_⊥C_d(6RC_1 + C_S).
Proof. By Lemma 5.1, n_0(λ; k_⊥) = n_A(λ − |k̂_⊥|²) with n_A the 2D IDS of A(f). Let F_⊥(u) := |{k_⊥ ∈ T² : |k̂_⊥|² ≤ u}|/(2π)². Fubini gives N_0(λ) = ∫ F_⊥(λ − E) dn_A(E). The critical values of |k̂_⊥|² = 4sin²(K_2/2) + 4sin²(K_3/2) are 0, 4, 8, and near 0, F_⊥(u) = u/(4π) + O(u²); so F_⊥ is nondecreasing, vanishes for u < 0, and is Lipschitz on [0, 2] with constant ρ_⊥ < ∞ (ρ_⊥ → 1/(4π) at u = 0). In N_0(λ′) − N_0(λ) = ∫[F_⊥(λ′ − E) − F_⊥(λ − E)]dn_A(E), only E ∈ [inf spec A, λ′] contributes; inf spec A ≥ −C_1|f| (fibre of Theorem 3.3 at k_⊥ = 0), so λ′ − E ≤ 2 for small f. Hence N_0(λ′) − N_0(λ) ≤ ρ_⊥(λ′ − λ)n_A(3Rμ). By Lemma 5.1, A ≥ 𝔏^{01}_f ⊗ 1_4 − C_S|f|, so by counting monotonicity (BETA_FP_M Lemma 4.1) and Lemma 5.2, n_A(3Rμ) ≤ C_d(3Rμ + C_S|f|). ∎
Consistency [P]. The same formula, with the continuum Landau degeneracy |ef|/(2π) per level and F_⊥′(0) = 1/(4π), gives |ef|/(8π²) per charged component in the N–O band, which is the value quoted in BETA_FP_M l. 70.

Proposition 5.4 ((S2c), coarse-scale density for all t) [P given Theorems 3.3, 4.3, Prop. 5.3, BETA_FP_M Lemmas 4.1–4.2]. Put η_1 := C_3[(3R + 2)²μ² + f²] = O(f²). For all t ∈ [0, 1] and λ in the window of BETA_FP_M Lemma 4.2 (shrunk by η_1):
  N_0(λ − η_1) ≤ N_t(λ) ≤ N_0(λ + η_1),  hence  N_t(λ′) − N_t(λ) ≤ C_2|f|(λ′ − λ + 2η_1).
The same holds fibrewise: n_0(λ − η_1; k_⊥) ≤ n_t(λ; k_⊥) ≤ n_0(λ + η_1; k_⊥).
Proof. Subdivide [0, t] into n steps of length ≤ 1/n with n as in Theorem 4.3(b). Each step satisfies (S1) and (S3) with ε = 1/n, so BETA_FP_M Lemma 4.2 (with its correction for the upper side) gives N_{t_i}(λ − η_1/n) ≤ N_{t_{i+1}}(λ) ≤ N_{t_i}(λ + η_1/n). Chaining n steps gives the first claim, as long as λ ± η_1 stays in the window (η_1 ≪ μ). The second follows from Prop. 5.3. Lemma 4.2 uses only operator inequalities and Lemma 4.1, so it holds fibrewise. ∎

### 5.2 What Prop. 4.3 actually uses, and the near-zero input
Full (S2) for t > 0 (Lipschitz N_t at all scales on W) is not proved here. Prop. 4.3 does not need it.

Proposition 5.5 (Prop. 4.3 with the weak form of (S2)) [P given Theorems 3.3, 4.3, Props. 5.3, 5.4]. Assume
  (Z_j)  Z(f) := ∫_{[−η_1, η_1]} log(η_1/|λ|) dN_1(λ) satisfies Z(f) = o(f²) as f → 0
(N_1 = IDS of 𝒦_1(f) = Δ_j(f) + D_cD_c^T). Then II(f) of BETA_FP_M §4.3 (built with Δ_0 in place of Δ_∞) satisfies |II(f)| ≤ C|f|³ log(1/|f|) + Z(f)/2 = o(f²). If Z(f) ≤ C_Z|f|³, then |II| = O(|f|³ log(1/|f|)), the rate of BETA_FP_M Prop. 4.3.
Proof. II = −½∫ g̃ d(N_1 − N_0) on [−μ/2, 2Rμ] (spectra are ≥ −μ/2 by (S1)). Split at |λ| = η_1.
(a) |λ| ≤ η_1. |g̃(λ)| ≤ log(η_1/|λ|) + log(1/η_1) + |log(λ + μ)| + C. The non-singular part is ≤ (3 log(1/|f|) + C)[N_s(η_1) − N_s(−η_1 − 0)] ≤ (3 log(1/|f|) + C)·4C_2|f|η_1 for s = 0, 1 (Props. 5.3, 5.4). The singular part is ≤ C_2|f|·2η_1 for s = 0 (Lipschitz N_0; ∫_{|λ|≤η}log(η/|λ|)dλ = 2η) and is Z(f) for s = 1.
(b) η_1 < |λ| ≤ 2Rμ. By Prop. 5.4 and Prop. 5.3, |N_1 − N_0|(λ) ≤ N_0(λ + η_1) − N_0(λ − η_1) ≤ 2C_2|f|η_1 (near the lower edge use N_s = 0 below −μ/2). Integration by parts as in BETA_FP_M: boundary terms ≤ (log(1/η_1) + C)·2C_2|f|η_1, bulk ≤ ∫(1/|λ| + C_R/μ)·2C_2|f|η_1 dλ ≤ 2C_2|f|η_1(2 log(2Rμ/η_1) + 4RC_R).
Sum, with η_1 = O(f²). ∎
Notes. (1) Only the t = 0 density (proved) and the coarse comparison (S2c) enter (b); the step size η_1/n never appears, so there is no n-dependence. (2) (Z_j) cannot be dropped: an atom of N_1 at 0, or mass ≳ |f|⁴ within e^{−1/f³} of 0, would change τ log|𝒦_1| by ≳ f² while leaving (S1), (S2c), (S3) intact. So (Z_j) is the exact residue of (S2) that Prop. 4.3 needs; it is the "integrable density near the Nielsen–Olesen zero" of BETA_FP_M l. 88–93, stated for N_1 only, at scales below f².
(3) Sufficient for (Z_j): N_1(λ + ρ) − N_1(λ − ρ) ≤ C|f|ρ for |λ| ≤ η_1, ρ ≤ η_1 (then Z ≤ Σ_k(k + 1)log 2·C|f|2^{1−k}η_1 = O(|f|³)); or any Hölder bound N_1(ρ) − N_1(−ρ) ≤ o(f²)(ρ/η_1)^a, a > 0.

The 2D gap input. Let A′(f) be the (b_0, b_1) block of A(f) (Lemma 5.1): the charged Wilson Hessian plus Feynman term of the two-dimensional lattice in the (0,1) plane at flux f. It does not depend on j, L, or Balaban's averaging.
  (G_A)  spec A′(f) ∩ (−g_f, g_f) = ∅ with g_f ≥ 4η_1 + 4C_M²|f|³ for small f (C_M from Prop. 5.6); for instance g_f ≥ c|f|.
Continuum value: spec(−D_f² + 2efS) in the (0,1) plane, spin ±1, is {(2n + 1)|ef| ∓ 2|ef|} = {−|ef|, |ef|, 3|ef|, …}, so 0 lies in a gap of half-width |ef|. On (b_2, b_3), A = 𝔏^{01}_f has no spectrum below |ef| − Cf² (Lemma 5.7), so (G_A) for A′ gives the same gap for A.

Proposition 5.6 ((G_A) ⇒ Lipschitz N_1 near 0 ⇒ (Z_j)) [P given (G_A), Prop. 2.1, Theorems 3.4, 4.3, Lemma 4.2, Lemmas 5.1, 5.2, Prop. 5.4]. There is C such that N_1(λ + ρ) − N_1(λ − ρ − 0) ≤ C|f|ρ for |λ| ≤ η_1, 0 < ρ ≤ η_1. Hence Z(f) ≤ C_Z|f|³.
Proof. Write A_1(k_⊥) := 𝒦_1(f; k_⊥), I := [−3η_1, 3η_1], P := 1_I(A_1(k_⊥)).
Step 1 (excluded fibres). If |k̂_⊥|² + 3η_1 < g_f, then n_A is constant on [−3η_1 − |k̂_⊥|², 3η_1 − |k̂_⊥|²] by (G_A), so n_0(·; k_⊥) is constant on I, and by the fibrewise Prop. 5.4 n_1(·; k_⊥) is constant on [−2η_1, 2η_1]. These fibres do not contribute. Fibres with c_*|k̂_⊥|²/2 − C_1′|f| > 3η_1 have no spectrum in I (fibrewise Theorem 3.4). So only r := |k_⊥| ∈ [r_1, r_2] contributes, r_1² ≥ g_f − 3η_1 ≥ 4C_M²|f|³, r_2² ≤ C|f|.
Step 2 (positive derivative on the window). Along a ray k_⊥ = rω: ∂_rA_1 = ∂_r|k̂_⊥|²·1 + ∂_rV(rω), using 𝒦_1 = 𝒦_0 + V and Lemma 5.1. First, ∂_r|k̂_⊥|² = 2rΣ_μω_μ² sinc(rω_μ) ≥ r for r ≤ 1. Second, for ψ ∈ ran P: by Lemma 4.2 (fibrewise) ‖𝔏(k_⊥)ψ‖ ≤ C|f|‖ψ‖, hence ⟨ψ, 𝔏ψ⟩ ≤ C|f|‖ψ‖² and Σ‖∇_μ∇_νψ‖² ≤ Cf²‖ψ‖² (Lemma 1.4(b)). The reduced kernel of ∂_rV has symbol ω·∇_{k_⊥}v_f = ω·∇δ + f ω·∇v^{(1)} + O(f²) with ω·∇δ vanishing to order 3 and ω·∇v^{(1)} to order 1 ((F2), (F4)). Lemma 1.3 writes the order-3 part as Σ(∂^β)^†h∂^γ, |β| = 2, |γ| = 1 (symmetrized), so |⟨ψ, W·(ω·∇δ)ψ⟩| ≤ C‖∇∇ψ‖‖∇ψ‖ + C|f|(‖∇ψ‖‖ψ‖ + |f|‖ψ‖²) ≤ C|f|^{3/2}‖ψ‖², the Moyal terms handled as in Lemma 1.4. Likewise |f||⟨ψ, W·(ω·∇v^{(1)})ψ⟩| ≤ C|f|^{3/2}‖ψ‖². So P(∂_rA_1)P ≥ (r − C_M|f|^{3/2})P ≥ (r/2)P for r ≥ r_1.
Step 3 (spectral averaging). Let h be C¹, nonincreasing, h = 1 on (−∞, λ − 2ρ], h = 0 on [λ + 2ρ, ∞), |h′| ≥ 1/(8ρ) on [λ − ρ, λ + ρ]. Then supp h′ ⊂ I, and d/dr τ_2h(A_1(rω)) = τ_2(h′(A_1)∂_rA_1) = −τ_2(|h′|^{1/2}(A_1)P(∂_rA_1)P|h′|^{1/2}(A_1)) ≤ −(r/2)τ_2(|h′|(A_1)) [cited, standard: derivative of τh(X(r)) for C¹ h in a finite von Neumann algebra, as in BETA_FP_M §4.3]. Integrating over [r_1, r_2]: ∫ r τ_2|h′|(A_1(rω))dr ≤ 2τ_2h(A_1(r_1ω)) ≤ 2n_1(3η_1; r_1ω) ≤ C|f|, the last step by fibrewise Theorem 3.4 and Lemma 5.2. Since 1_{[λ−ρ,λ+ρ]} ≤ 8ρ|h′|, and dk_⊥ = r dr dω: N_1(λ + ρ) − N_1(λ − ρ − 0) ≤ (2π)^{−2}∫dω 8ρ ∫ r τ_2|h′| dr ≤ C|f|ρ.
Last claim: note (3) after Prop. 5.5. ∎
Why the gap is needed. Near r = 0 the k_⊥-odd part of ∂_rV (size |f|^{3/2}) beats ∂_r|k̂_⊥|² ≈ 2r, so Step 2 fails for r ≲ |f|^{3/2}. (G_A) shows that such fibres have no spectrum near 0. In the continuum the N–O zero λ = k_⊥² − |ef| = 0 sits at r ≈ |ef|^{1/2}, far inside the good region.

Lemma 5.7 (scalar Landau lower bound) [P]. inf spec 𝔏^{01}_f ≥ |ef| − C f² for |f| ≤ 1.
Proof. Put S_μ := (T_μ − T_μ^*)/(2i) (self-adjoint) and h_μ := 2 − T_μ − T_μ^* ≥ 0. Since T_μ is unitary, h_μ − S_μ² = h_μ²/4 ≥ 0, so 𝔏^{01} ≥ S_0² + S_1² ≥ ±i[S_0, S_1] (from (S_0 ± iS_1)^*(S_0 ± iS_1) ≥ 0). From T_0T_1 = qT_1T_0, q = e^{iα}, α := εef, one gets [T_0, T_1] = (q − 1)T_1T_0, [T_0, T_1^*] = (q̄ − 1)T_1^*T_0, [T_0^*, T_1] = (q̄ − 1)T_1T_0^*, [T_0^*, T_1^*] = (q − 1)T_1^*T_0^*, hence i[S_0, S_1] = (α/4)·½{T_0 + T_0^*, T_1 + T_1^*} + E′ with ‖E′‖ ≤ Cα². Write T_μ + T_μ^* = 2 − h_μ: ½{2 − h_0, 2 − h_1} = 4 − 2(h_0 + h_1) + ½{h_0, h_1}, and ⟨ψ, ½{h_0, h_1}ψ⟩ = Re⟨h_0ψ, h_1ψ⟩ ≥ −½(‖h_0ψ‖² + ‖h_1ψ‖²) ≥ −2⟨ψ, 𝔏^{01}ψ⟩ (h_μ ≤ 4). Choosing the sign in ±i[S_0, S_1] so that the coefficient is |α|: 𝔏^{01} ≥ (|α|/4)(4 − 2𝔏^{01} − 2𝔏^{01}) − Cα² = |α| − |α|𝔏^{01} − Cα², i.e. 𝔏^{01} ≥ (|α| − Cα²)/(1 + |α|) ≥ |α| − C′α². ∎
Status of (G_A). The scalar bottom is Lemma 5.7. (G_A) also needs the Landau gap of 𝔏^{01}_f between its first two bands (near |ef| and 3|ef|), at a precision ≫ f², because the spin-aligned component of A′ is 𝔏^{01} − 2|ef| + O(f²)-type and must avoid 0. This is a Harper-type semiclassical statement. I recall that Helffer–Sjöstrand proved that the low spectrum of the small-flux Harper operator lies in thin bands near (2n + 1)|ef| [I: from memory, not checked; not used as proved]. Here (G_A) is [open], supported by the continuum value and by the 2D numerics of §6.


Lemma 5.8 (gauge copy: half of (G_A)) [P given criticality of V_f, U3_LEMMA51 §1 "∇A(U_0^φ) = 0 … (U3 Lemma 5.0, U3_VERIFY §7)"]. Write A′(f) = H′ + D′D′^†, with H′ the charged (0,1)-plane Wilson Hessian (normalized as in (F1)) and D′ the charged background-covariant 2D gradient on sites, D′^†D′ = 𝔏^{01}_f. Then spec A′(f) = spec(𝔏^{01}_f) ∪ spec(H′|_{ker D′^†}), and the first set lies in [|ef| − Cf², 8] (Lemma 5.7).
Proof. The Wilson action is gauge invariant and V_f is a critical point, so the Hessian annihilates the tangent space of the gauge orbit: H′D′ = 0 (differentiate S(U^{g_s}) = S(U) twice; the term with ∇S vanishes at a critical point). Hence A′D′ = D′(D′^†D′) = D′𝔏^{01}. By Lemma 5.7, 𝔏^{01} ≥ |ef| − Cf² > 0, so D′ is injective with closed range and U := D′(𝔏^{01})^{−1/2} is an isometry onto ran D′. Then A′U = U𝔏^{01}, so ran D′ reduces A′, U^*A′U = 𝔏^{01}, and on the orthogonal complement ker D′^† the operator A′ equals H′. ∎
Consequence. (G_A) is equivalent to the sharper, purely "physical" statement
  (G_A′)  spec(H′(f)|_{ker D′^†}) ∩ (−g_f, g_f) = ∅,  g_f ≥ c|f| (any g_f ≥ 4η_1 + 4C_M²|f|³ suffices),
about the 2D SU(2) Wilson Hessian at constant flux, restricted to background-transverse charged fields. (G_A′) does not depend on j, L, or Balaban's averaging. It is [open] here. Continuum value: physical spectrum {−|ef|, 3|ef|, 5|ef|, …} (the union of the spin-aligned and spin-antialigned Landau ladders minus the gauge copy {|ef|, 3|ef|, …}), so 0 sits in a physical gap (−|ef|, 3|ef|) [I: continuum bookkeeping, not derived line by line].

## 6. Numerical check (2D, t = 0)

Scripts: numerics/t2_s123_gap2d.py (output numerics/t2_s123_gap2d.json) and numerics/t2_s123_phys2d.py (output numerics/t2_s123_phys2d.json). Both new; each run took about 5 s on the Mac.
Model. N × N periodic torus, Landau gauge (θ_0(x) = −φx_1 on 0-links, θ_1 = 0, background links e^{iθσ_3}), plaquette angle φ = 2π/N, charge e = 2, so ef = 2φ. The plaquette Hessian of S_p = 1 − ½Re tr U_p is computed by central finite differences (h = 10^{−4}) in the left trivialization U = e^{iB·σ/2}U_0; the operator is 4·Hess + D_rD_r^T with D_rλ(ℓ) = λ(x) − Ad_{U_ℓ}λ(x + e_μ). The operator commutes with x_0-translations; it is Bloch-reduced in x_0 (N values of k_0) and diagonalized on the charged colours 1, 2.
Checks of the model.
- (F1) normalization at φ = 0: charged spectrum equals 4sin²(k_0/2) + 4sin²(k_1/2) (multiplicity 4) to 4.9·10^{−8} (N = 8).
- Gauge annihilation H D_r = 0: residual ≤ 1.9·10^{−7} at all fluxes (finite-difference error). This checks criticality and the transport conventions together.
- Neutral/charged decoupling: exact (leak 0).
Results (all spectra in units of |ef|):

| N | φ | ef | inf spec A′ | top of lowest band | gauge part min = inf 𝔏^{01} | first physical level > 0 |
|---|---|---|---|---|---|---|
| 24 | 0.2618 | 0.5236 | −1.0580 | −1.0580 | 0.9358 | 2.661 |
| 48 | 0.1309 | 0.2618 | −1.0309 | −1.0309 | 0.9676 | 2.833 |
| 96 | 0.0654 | 0.1309 | −1.0159 | −1.0159 | 0.9837 | 2.917 |

Also inf 𝔏^{01}/|ef| = 0.9918 at N = 192 (ef = 0.0654). Block-orthogonality of the gauge/physical split: off-diagonal ≤ 3·10^{−8}.
Reading [V: numerics, this session].
- inf spec A′ ≈ −|ef|(1 + 0.12|ef|), matching the continuum −|ef| and inside the bound of Lemma 3.1 (−6|sin φ| = −3|ef| at small φ). The lowest physical band has width < 10^{−6}|ef| (exponentially thin, as expected for a Landau band).
- The gauge part starts at inf 𝔏^{01} ≈ |ef|(1 − 0.12|ef|): consistent with Lemma 5.7 (|ef| − Cf²) and with Lemma 5.8 (the positive edge of A′ is exactly the scalar bottom: 0.128769 vs 0.128769 at N = 96).
- The physical spectrum has nothing in (−1.0159|ef|, 2.917|ef|) at N = 96. So (G_A′), hence (G_A), holds at these three fluxes with g_f ≈ 0.98|ef| ≈ 1.97|f|, far above the needed O(f²).
- Limits of the check: rational fluxes 1/N only, finite torus (Bloch in x_0 only, x_1 periodic with exact flux quantization), finite-difference Hessian. It is evidence for (G_A′), not a proof; it covers no f below 0.065.
Not done: the brief's optional 4D check of inf spec 𝒦_t(f) at j = 1, L = 3. The t = 0 fibre at k_⊥ = 0 is the operator above; for t > 0 the bounds of §3–§5 are existential and no t > 0 number is used anywhere.

## 7. Corollary (M_j), and where it enters

### 7.1 Inputs collected
At fixed j ≥ 1, L odd ≥ 3, |f| ≤ f_*(j, L):
- (S1) Theorem 3.3 (and (S1+) Theorem 3.4) [P given Prop. 2.1 and (F1)–(F3); Prop. 2.1 rests on (I1)–(I4), with (I3) = (P_0)-type Peierls structure at each of the j steps, [I]].
- (S3) Theorem 4.3, in the subdivided form KAPPA_BOUNDED §1.3 asks for, with ε = 1/n ≤ ε_0 for n ≥ C_3(K_* + 1)/c [P given Prop. 2.1, (F1)–(F4)]. This also meets the "Correction to the proof of Lemma 4.2 (upper side)" of BETA_FP_M §4.3: ε ≤ ε_0 holds per step at every j, so the window form (S3w) for j < j_1 is not needed.
- (S2) at t = 0: Prop. 5.3 [P]. For t ∈ (0, 1]: only the coarse-scale form (S2c), Prop. 5.4 [P given the above and BETA_FP_M Lemmas 4.1–4.2]. Full (S2) for t > 0 is [open]; it is not needed.
- The near-zero residue of (S2): (Z_j) [R: Prop. 5.6 reduces it to (G_A); Lemma 5.8 reduces (G_A) to (G_A′), §5; (G_A′) is open and numerically supported, §6].
- Prop. 4.4 of BETA_FP_M [argued there]. Status update below (§7.3).

### 7.2 Statement
Corollary 7.1 ((M_j)) [R: (G_A′) (§5, after Lemma 5.8), BETA_FP_M Prop. 4.4 [argued], and the inputs (I1)–(I4), (F1)–(F4) of §2–§4]. Fix j ≥ 1 and L odd ≥ 3. Then, exactly as written in KAPPA_BOUNDED l. 32:
  (M_j): [Γ_c(Λ_j; f) − Γ_c(1; f) − (f = 0 value)]/(n_2 f²) → d_j as f → 0, at this fixed j.
Proof. δΓ_j(f) := Γ_c(Λ_j; f) − Γ_c(1; f) = −½[τ log|𝒦_1(f)| − τ log|𝒦_0(f)|] per cell (BETA_FP_M §4.3 with Δ_0 in place of Δ_∞; KAPPA_BOUNDED §1.2). Split δΓ_j = I + II as in BETA_FP_M §4.3, with μ = 2C_1|f| and C_1 from Theorem 3.3.
(i) II. BETA_FP_M Prop. 4.3 is proved there given (S1)–(S3), and in its proof (S2) is used only in part (a) (|λ| ≤ η_*) and, through Lemma 4.2, in part (b). Prop. 5.5 of this file reruns that proof with (S2) at t = 0, (S2c) for t = 1, and (Z_j) in part (a). With (Z_j) ⇐ Prop. 5.6 ⇐ (G_A), and (G_A) ⇔ (G_A′) (Lemma 5.8): |II(f)| ≤ C|f|³ log(1/|f|) = o(f²).
(ii) I. BETA_FP_M Prop. 4.4 gives I(f) − I(0) = n_2 d_j f² + O(|f|³ log(1/|f|)) [argued there]. At fixed j, ε_j is replaced by a j-dependent constant; this changes constants, not orders.
(iii) Sum and divide by n_2 f²: this is BETA_FP_M Cor. 4.5 at fixed j, i.e. (M_j). Only the limit is used by KAPPA_BOUNDED Prop. 1.1; the rate is not. ∎
Neutral sector [I]. In the neutral block every operator is a convolution, f enters only through cos(f/M²)-type factors (U3_LEMMA51 Prop. 2.2), and 𝒦^{neu}_t(f) ≥ cos(f)·(convolution ≥ c_*l) ≥ 0. So τ log is a per-momentum integral with an integrable log|K|² singularity, and its f² coefficient is obtained by differentiating under the integral. This is consistent with the exact abelian value S_k^{ab} = (1 − L^{−4k})/4 (NUMERICS l. 53–78), which is a neutral-sector statement. The analysis of §3–§6 is needed only for the charged block.

### 7.3 Status update for BETA_FP_M Prop. 4.4
Prop. 4.4 splits I into a "region 1" (|K|² ≥ R′|f|) and a "region 2" (|K|² < R′|f|) and notes that the magnetic phase-space localization is not written. Half of it can now be written as an operator statement.
Lemma 7.2 (spectral region 2) [P given Theorems 3.3, 4.3, Props. 5.3, 5.4]. Let χ_W be smooth, 0 ≤ χ_W ≤ 1, χ_W = 1 on [−μ, Rμ], supp χ_W ⊂ [−2μ, 2Rμ] (scaled with μ). Then for t ∈ [0, 1]: |τ(ℓ′(𝒦_t)χ_W(𝒦_t)V)| ≤ C|f|³.
Proof. Put P := 1_{[−2μ,2Rμ]}(𝒦_t) and F := ℓ′χ_W. F(𝒦_t) = F(𝒦_t)P = PF(𝒦_t)P, so by cyclicity τ(F(𝒦_t)V) = τ(F(𝒦_t)PVP), and |τ(XY)| ≤ ‖X‖τ(|Y|) with Y = PVP. ‖F‖ ≤ 2C_R/μ = C/|f| (BETA_FP_M §4.3; the spectrum is ≥ −μ/2 by (S1)). Theorem 4.3(a) gives ±PVP ≤ C_3P[(𝒦_t + μ)² + f²]P ≤ C_3[(2R + 1)²μ² + f²]P, so τ|PVP| ≤ C f² τ(P). τ(P) = N_t(2Rμ) − N_t(−2μ − 0) = N_t(2Rμ) ≤ N_0(2Rμ + η_1) ≤ C_2|f|((2R + 1)μ + η_1) = O(f²) by Props. 5.4 and 5.3 (λ = 2Rμ is inside the window of BETA_FP_M Lemma 4.2, and N_0 = 0 below −μ/2). Product: (C/|f|)·Cf²·Cf² = C|f|³. ∎
So the region-2 contribution to I is O(|f|³) as an operator statement, with no phase-space localization. What remains of Prop. 4.4 is the region-1 statement: the f² coefficient of ∫_0^1 dt τ(G_f(𝒦_t)V), G_f(x) := ℓ′(x)(1 − χ_W(x)), equals the formal d_j of (1.1) up to o(f²). G_f is smooth on spec 𝒦_t but its derivatives grow like |f|^{−k}, so a Moyal expansion of G_f(𝒦_t) needs symbol bounds with these weights near K = 0. Lemmas 1.1–1.4 do not give that expansion. Prop. 4.4 stays [argued], with the region-2 half now [P].

### 7.4 Where it enters
- KAPPA_BOUNDED Prop. 1.1 (l. 26–41): (M_j) is one of five inputs ((PI), (F), (M_j), V1, (G2)); the others are untouched here. Prop. 1.1 gives S_j = c j log L − d_j; Theorem K (l. 112–120, needs (B2)) then gives the window bound (5.1), which Lemma D″ (KAPPA_BOUNDED §5.3) uses in place of LEMMA_DPRIME §1 (ii)–(iii).
- THEOREM2_PROOF_v4 §4.1, (M_j) bullet, and §10 item 4; TRUST_LEDGER row B4. Suggested new status text (for the supervisor; not written into those files): "(S1), (S3) [proved at fixed j given Peierls structure (I3) and verified symbol facts; SOURCES_T2_S123 Thms 3.3, 4.3]; (S2) at t = 0 and coarse-scale (S2c) [proved]; near-zero residue reduced to the j-independent 2D gap (G_A′) [open; numerically confirmed with margin ≈ |ef|]; Prop. 4.4 region-1 Moyal step [argued]."
- Numerics consistency (NUMERICS l. 53–78). All constants derived here (C_1, C_2, C_3, C_E, f_*, θ_j) are existential, j- and L-dependent, and enter only o(f²) error terms. None fixes a sign or size of d_j. So there is no conflict with d_1 = −0.372 (L = 2), −0.256 (L = 3), the first-step constants +0.37 … −0.04 for L = 2 … 11, or c = 0.371511. The one quantitative output, the 2D gap of §6 (inf spec A′ ≈ −|ef|, positive edge ≈ +|ef|), matches the continuum N–O value; the IDS slope at t = 0 reproduces |ef|/(8π²) per charged component in the continuum limit of Prop. 5.3 (consistency note after it).

## 8. Ledger

Numbered claims (for the verifier). Tags as in the header.
1. Lemma 1.1 (twisted product, Moyal expansion with kernel-norm remainders) [P].
2. Lemma 1.2 (Nenciu-type inverse, C^m in f) [P].
3. Lemma 1.3 (division of admissible kernels by forward differences; Hermitian sandwich form) [P; the Hermitian regrouping step is written briefly].
4. Lemma 1.4 (operator bounds ±W·c ≤ C(𝔏_f + |f|)^{p/2} from vanishing order p = 2, 4; 𝔏_f² vs W·l²) [P].
5. Prop. 2.1 (fixed-j well-posedness: Δ_i(f) = W·a_i, admissible, C³ in f; ‖H_i(f)‖ ≤ h_i) [P given (I1)–(I4)]. (I1) [R: BETA_FP_H Fact 1.1(d), R23_VERIFY §5]; (I2) [R: U3_REPAIRS O6 and U3_AW Lemma A1, CONFIRMED in their VERIFY files]; (I3) [I: gauge covariance quoted from CMP 99 p. 395 (3.32) and p. 395–396 (3.34), V on page image; entrywise analyticity of the averaging in f read off CMP 109 (0.4), not written entry by entry; = (P_0) of BETA_FP_M at each of the j steps]; (I4) [R: U3_AW Prop. A2 base step].
6. Stationary-value identity ⟨V, Δ_iV⟩ = ⟨x*, Δ_{i−1}x*⟩ + ‖Π^{1/2}D^*x*‖² [P].
7. Lemma 3.1: Wilson Hessian at constant flux ≥ −(3/2)ν_W|sin φ| [P from U3_LEMMA51 (2.1)].
8. Prop. 3.2: Δ_j(f) ≥ −C_j|f| [P given claims 5–7].
9. Theorem 3.3 = (S1): 𝒦_t(f) ≥ −C_1|f| for all t ∈ [0, 1] [P given claim 5].
10. (F1) Δ_0(K) + D_cD_c^†(K) = |K̂|²1 in midpoint coordinates [P; also V: numerics §6 at φ = 0, error 4.9·10^{−8}]. (F2) [R: Lemma M and O5/A0, U3_AW §3.3, §4.1]. (F3) [R: BETA_FP_H (2.3a) ⇐ LEMMA43 Lemma 4.1 + U3_REPAIRS Prop. B]. (F4) [R: U3_AW Theorem W (3.1) and Prop. E].
11. Theorem 3.4 = (S1+): 𝒦_t(f) ≥ (c_*/2)𝔏_f − C_1′|f| [P given claims 1–5, 10].
12. Lemma 4.1 = (MC): ±V ≤ C_V(𝔏_f + |f|)² [P given claims 4, 5, 10].
13. Lemma 4.2 = (ER): 𝔏_f² ≤ C_E[(𝒦_t + μ)² + f²] [P given claims 1–5, 10].
14. Theorem 4.3 = (S3): ±V ≤ C_3[(𝒦_t + μ)² + f²]; subdivided form with ε = 1/n ≤ ε_0 = c/(C_3(K_* + 1)) [P given claims 12–13].
15. Fibre decomposition over k_⊥ and fibrewise validity of claims 9, 11, 13, 14 [P; uses (I3) for translation invariance of the averaging in directions 2, 3].
16. Lemma 5.1: 𝒦_0(f; k_⊥) = A(f) + |k̂_⊥|², ‖A(f) − 𝔏^{01}_f⊗1‖ ≤ C_S|f| [P; identification of (2.1) with the covariant curl is I].
17. Lemma 5.2: IDS of 𝔏_f bounded by C_dE (2D), C_dE² (4D), uniformly in f [P].
18. Prop. 5.3 = (S2) at t = 0 on W [P given claims 9, 16, 17].
19. Prop. 5.4 = (S2c): N_0(λ − η_1) ≤ N_t(λ) ≤ N_0(λ + η_1), η_1 = O(f²), all t, also fibrewise [P given claims 9, 14, 18 and BETA_FP_M Lemmas 4.1–4.2 with the upper-side correction].
20. Prop. 5.5: BETA_FP_M Prop. 4.3 holds with (S2) replaced by (S2)|_{t=0}, (S2c) and (Z_j); (Z_j) is necessary (atom example) [P given claims 18–19].
21. Prop. 5.6: (G_A) ⇒ N_1 Lipschitz on [−η_1, η_1] at scales ≤ η_1 ⇒ Z(f) ≤ C_Z|f|³ [P given (G_A) and claims 5, 11, 13, 14, 16, 17, 19; the derivative formula d/dr τ_2h(A(r)) = τ_2(h′(A)A′) is cited as standard].
22. Lemma 5.7: inf spec 𝔏^{01}_f ≥ |ef| − Cf² [P].
23. Lemma 5.8: spec A′ = spec 𝔏^{01}_f ∪ spec(H′|_{ker D′^†}); hence (G_A) ⇔ (G_A′) [P given criticality of V_f, cited from U3_LEMMA51 §1].
24. Numerics §6: at φ = 2π/N, N = 24, 48, 96, the 2D charged A′ has inf spec ≈ −|ef|(1 + 0.12|ef|), positive edge = inf 𝔏^{01} ≈ |ef|(1 − 0.12|ef|), physical spectrum empty in (−1.016|ef|, 2.917|ef|) at N = 96 [V: numerics this session, scripts t2_s123_gap2d.py, t2_s123_phys2d.py].
25. Corollary 7.1 = (M_j) as in KAPPA_BOUNDED l. 32 [R: (G_A′) (§5) and BETA_FP_M Prop. 4.4 [argued], plus the inputs of claim 5 and claim 10].
26. Lemma 7.2: the spectral region-2 part of I is O(|f|³) [P given claims 9, 14, 18, 19]. Prop. 4.4 region 1 (Moyal expansion of G_f(𝒦_t) with |f|^{−k} derivative growth) stays [argued].
27. Consistency: the continuum limit of Prop. 5.3 gives |ef|/(8π²) per charged component (BETA_FP_M l. 70); no derived constant contradicts NUMERICS l. 53–78 [I].

Balaban quotes used. CMP 99 p. 395, (3.32): "(Q′_j(U^u)R(u)λ)(y) = R(u(y))(Q′_j(U)λ)(y)"; (3.34): "Δ_a(U^u) = R(u)Δ_a(U)R(u^{−1}), G(U^u) = R(u)G(U)R(u^{−1})" [V: page images, PDF pp. 7–8, read in the earlier part of this session]. These give gauge covariance only; the magnetic-translation form W·a follows by U3_LEMMA51 Lemma 3.1.

Open (precise list).
- O1. (G_A′): the transverse (ker D′^†) part of the charged 2D SU(2) Wilson Hessian at constant flux f has no spectrum in (−c|f|, c|f|) for small f. j- and L-independent. Numerically true with c ≈ 1.97 (§6). Likely route: Harper-type semiclassics (thin Landau bands at (2n + 1)|ef| + O(f²) for 𝔏^{01}, then the transverse reduction); not done. Without O1, (Z_j) and hence (M_j) are not proved: an atom of N_1 near 0 is not excluded.
- O2. BETA_FP_M Prop. 4.4, region 1 (claim 26).
- O3. (I3) entrywise: write the Peierls structure of Balaban's linearized averaging at flux f (CMP 109 (0.4)) for one step, with analyticity in f. Needed at each of the j steps, not uniformly.
- O4. Full (S2) for t > 0 on all of W (Lipschitz at every scale). Not needed for (M_j) by Prop. 5.5; listed because the brief asks for it. Prop. 5.6 proves it near λ = 0 given O1; away from 0 only (S2c) is proved.
Not claimed. No uniformity in j (f_*, θ_j, h_i, C_1, C_2, C_3 depend on j and L). No explicit constants. No statement about L even. No 4D numerics.

Summary. Proved at fixed j (given the Peierls input (I3) and verified symbol facts): (S1) for all t; (S3) in the subdivided form KAPPA_BOUNDED §1.3 needs; (S2) at t = 0; coarse-scale (S2c) for all t; the exact weak form of (S2) that Prop. 4.3 uses, (Z_j); (Z_j) ⇐ (G_A) ⇔ (G_A′); the region-2 half of Prop. 4.4. Reduced: (M_j) to (G_A′), a single j-independent 2D spectral-gap statement (numerically confirmed with margin ≈ |ef|), plus the region-1 Moyal step of Prop. 4.4 [argued].

STATUS: COMPLETE
