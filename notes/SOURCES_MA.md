IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_MA — input (M-A): equipartition bound for the cut-off Wilson density

Goal: prove ⟨A⟩_u ≤ C·n/u for the real (1.100)-type density, or state exactly what blocks it.
Inputs: SOURCES_HHOL_LF §3, §6 (M-A); SOURCES_HHOL_LF_VERIFY V3, V5, V7(6); CMP 122 I p. 201 (1.100); CMP 122 II (1.71)–(1.79). Firewall respected.
Tags: [P] proved here; [R] reduced to a named input; [I] inference; [V] verified against a page image or text.

## 1. Inputs read
- HHOL_LF §3.4(c): the cost is the average of e^{θx^{−2}A} against the real ratio density, θ = 0.174 (VERIFY V1). It equals D(x^{−2}(1−θ))/D(x^{−2}).
- HHOL_LF §6 (M-A) sketch: equipartition via log D(u_1) − log D(u_2) = ∫⟨A⟩_u du, plus a star-shaped cutoff and an Euler-type bound "B·∇A ≤ 2(1+O(ε))A". Note now: the virial route needs the Euler bound in the OTHER direction, B·∇A ≥ κA (see §3).

## 2. What (1.100) fixes [V, page image CMP 122 I p. 201 (PDF p. 27); text CMP 122 I pp. 194–195]
- Ratio factor per component X_i: δ_{G_i}(V′_k)χ(Λ_i)exp[−g_k^{−2}A(ζ_i, U_{k,X_i}(V′_kV_{Λ_i}))] divided by the same expression integrated over dV′_{Λ_i}. "G_i is a graph in Λ_i fixing the axial gauge, ζ_i ∈ C_0^∞(X_i), ζ_i changes from 0 to 1 in a neighborhood of ∂X_i^{∼−2}".
- (1.101): χ(Λ_i) = χ({|(1/i) log V′(b)| < M_0ε_k for b ⊂ Λ_i}). So the cutoff is a ball per link in the Lie-algebra coordinate X_b = (1/i)log V′(b). A product of balls is convex.
- V_{Λ_i}: not defined on p. 201. Nearest definition is Proposition 1 (p. 194): V_Λ = V_Λ(V_k|Z∩Λ^c) is the unique critical orbit, a minimum, of V_k|Λ ↦ A(U_{k,Z}(V_k)), with |V_Λ(∂p′) − 1| < B_5M^5ε (1.78). So V′ is a fluctuation around a background minimizer. [I: V_{Λ_i} = V_Λ on Λ_i; the minimized function has no ζ_i and domain Z, not X_i, so V′ = 1 need not be the exact minimizer of the (1.100) exponent.]
- Consequence for the proof: the exponent F(V′) := A(ζ_i, U_{k,X_i}(V′V_{Λ_i})) has a background value F_min = min F > 0 in general. On a small-field background F_min = O(ε_k²) per block, so g_k^{−2}F_min = O(p_0(g_k)²) per block. Hence ⟨A⟩_u ≤ C·n/u with the FULL A is false in general; the correct statement is for A − A_min. The normalized ratio is invariant under A → A − const, so this is the statement (M-A) needs (§5). [P]
- Normalization [V, text CMP 109 (0.2)]: A^ε(U) = Σ_p ε^{d−4}[1 − Re tr U(∂p)]. The proof below never uses this form; it uses only the cutoff, the Haar Jacobian, and one Hessian lower bound (H−). So the normalization (and the sign of 1 − Re tr) does not matter.
- CMP 122 II (1.73)–(1.75) [V, page image p. 380 (PDF p. 26)]: Balaban bounds an operation with a small term σ in the exponent by sup e^{3 sup|σ|}. The freeze mismatch is not small in sup norm (HHOL_LF §3.4(c)), so it must be bounded as an AVERAGE, not by this sup rule. Budget line on the same page: each large-field domain Z_j "contributes the constant O(1)log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)". [V]

## 3. Setup
- Free links. δ_{G_i} is the axial-gauge delta on the graph G_i: V′(b) = 1 for b ∈ G_i [I: standard axial gauge; the delta's definition is in [IV], not re-read]. Free links: ℒ_i = links of Λ_i not in G_i, L_i = |ℒ_i|. Coordinates X = (X_b)_{b∈ℒ_i}, X_b = (1/i)log V′(b) ∈ su(N) ≅ R^{N²−1}. Real dimension n_i = (N²−1)L_i.
- Domain. B = {X : ‖X_b‖ < r for all b ∈ ℒ_i}, r = M_0ε, ‖·‖ the matrix norm of (1.101) [I: operator norm; any unitarily invariant norm works below, with the same constants up to √N]. B is a product of convex balls, so B is convex and Lipschitz. For r < π, exp is a diffeomorphism from the ball onto its image.
- Measure. Haar in exponential coordinates: dV = j(X)dX, j(X) = Π_{α>0}(sin(α(X)/2)/(α(X)/2))² (positive roots α; α(X) = λ_p − λ_q, eigenvalues of X). J(X) = Π_b j(X_b). Normalization constants cancel in ⟨·⟩.
- Exponent. F(X) = A(ζ_i, U_{k,X_i}(V′(X)V_{Λ_i})) for the coupling-free part; the weight is u > 0 (real). Z(u) = ∫_B e^{−uF}J dX. F is smooth (real-analytic) on B̄ for small ε [I: Balaban's analyticity of U_k on small fields, CMP 122 I Prop. 1 and (1.83)].
- Centering. F is continuous on the compact set B̄, so it has a minimizer X* ∈ B̄. Set F_min = F(X*) and G = F − F_min ≥ 0 on B̄.
- Gauge zero modes. None of the argument below needs Hess F > 0. Directions where F is flat still count in n_i and only make the bound loose. So the residual gauge modes (if G_i is not a maximal tree of Λ_i, or boundary effects) need no separate count. The bound is in terms of n_i = (N²−1)L_i, the number of real coordinates left after the delta. [P]

## 4. Input (H−): Hessian lower bound along segments
(H−) For all X, Y ∈ B̄, the function t ↦ F(X + t(Y − X)), t ∈ [0,1], has second derivative ≥ −c_H ε Σ_b ‖Y_b − X_b‖²_2 (Frobenius norm), with c_H independent of k, of the volume, and of the background in the small-field class (1.78)/(1.83).
Why it is expected [I]. Write F = Σ_p ζ_p P_p∘U with fine-plaquette functions P_p. Then D²F[h,h] = Σ_p ζ_p {D²P_p[DU h, DU h] + DP_p·D²U[h,h]}.
 (a) D²P_p at a plaquette angle X_p (Hermitian, small): d²/dt² Re tr e^{i(X_p + tY)} = −tr Y² + O(‖X_p‖²‖Y‖²) (the O(‖X_p‖) term is i·tr(X_pY²), purely imaginary). So D²P_p[δ,δ] = (1/N_tr)(tr δ² − O(‖X_p‖²)‖δ‖²) ≥ 0 for small X_p: the first term is ≥ 0.
 (b) |DP_p| = O(‖X_p‖) = O(η²ε) per fine plaquette, and D²U[h,h] = O(η²|h|²) in plaquette-angle units, summed over η^{−4} fine plaquettes per block: O(ε)|h|² per block link.
 So the negative part is O(ε) in the natural per-link units. The constant c_H needs Balaban's second-derivative bounds for the map V ↦ U_{k,X}(V) on small fields (CMP 102 variational problem, CMP 109, CMP 122 I Prop. 1). Not re-derived here. [R]

## 5. Theorem (M-A) and proof [P given (H−)]
Lemma J (Haar Jacobian). If r ≤ 1/2, then for X, X* ∈ B̄ and each free link b: |(X_b − X*_b)·∇log j(X_b)| ≤ 0.68·N(N−1)·r².
Proof. j depends only on the eigenvalues of X: log j = Σ_{α>0} ψ(α(X)), ψ(s) = 2log(sin(s/2)/(s/2)), ψ′(s) = cot(s/2) − 2/s. For simple spectrum, the first-order change of the eigenvalues along h is the diagonal of h in the eigenbasis of X (the pinching Ph), so d/dt log j(X + th)|_0 = Σ_{α>0} ψ′(α(X))α(Ph). By continuity of ∇log j this holds in the limit for degenerate spectrum. Bounds: |α(X)| ≤ 2‖X‖ ≤ 2r ≤ 1; |ψ′(s)| ≤ 0.17|s| for |s| ≤ 1 [num: max |ψ′(s)|/s on (0,1] = 0.1695]; |α(Ph)| ≤ 2‖Ph‖ ≤ 2‖h‖ ≤ 4r (pinching does not increase the operator norm). There are N(N−1)/2 positive roots. Product: (N(N−1)/2)·0.17·2r·4r = 0.68N(N−1)r². ∎

Lemma S (segment bound). Under (H−), for X ∈ B̄: (X − X*)·∇G(X) ≥ G(X) − m/2, m = c_Hε Σ_b‖X_b − X*_b‖²_2 ≤ 4c_H N ε r² L_i.
Proof. f(t) = G(X* + t(X − X*)) is defined on [0,1] (B̄ convex), f(0) = 0, f″ ≥ −m by (H−). Then f′(1) − f(1) = ∫_0^1 t f″(t) dt ≥ −m/2. And f′(1) = (X − X*)·∇G(X). Frobenius bound ‖h‖²_2 ≤ N‖h‖² ≤ 4Nr². ∎

Theorem. For real u > 0, with ⟨·⟩_u the average over e^{−uF}J dX on B (equivalently the (1.100) ratio density at weight u),
  ⟨A − A_min⟩_u = ⟨G⟩_u ≤ (n_i/u)(1 + η(u)),  η(u) = [0.68N(N−1)r² + 2c_H N u ε r²]/(N² − 1).
Proof. φ = e^{−uG}J ≥ 0 is smooth on B̄. B is a convex Lipschitz domain and X* ∈ B̄. By the divergence theorem,
  ∫_B div((X − X*)φ) dX = ∫_{∂B} φ (X − X*)·ν dS ≥ 0,
because (X − X*)·ν ≥ 0 a.e. on ∂B (supporting hyperplane of a convex set). Also div((X − X*)φ) = φ[n_i − u(X − X*)·∇G + (X − X*)·∇log J]. Divide by ∫φ:
  u⟨(X − X*)·∇G⟩_u ≤ n_i + sup_B|(X − X*)·∇log J| ≤ n_i + 0.68N(N−1)r²L_i (Lemma J).
By Lemma S, u⟨G⟩_u ≤ u⟨(X − X*)·∇G⟩_u + u·m/2 ≤ n_i + 0.68N(N−1)r²L_i + 2c_H N u ε r² L_i. Divide by u and use n_i = (N²−1)L_i. ∎

Explicit constant. Use r = M_0ε, ε = x p_0(x) (frozen), u ≤ x^{−2}, and N(N−1)/(N²−1) ≤ 1, N/(N²−1) ≤ 1:
  η ≤ 0.68M_0²x²p_0(x)² + 2c_HM_0²x p_0(x)³ =: η_x → 0 as x → 0.
So C = 1 + η_x per real mode. Conditions: M_0x p_0(x) ≤ 1/2 (Lemma J and exp injective), and x small enough for (H−) (Balaban's small-field regime). [P given (H−)]

Remark (C = ½ is not the right constant here). Equipartition ½ per mode needs the Euler identity X·∇G = 2G, i.e. an interior critical point and a third-derivative bound. If the minimizer X* sits on ∂B, G has a linear part with X·∇(ℓ·X) = ℓ·X, and the constant ½ fails. Toy check [num, SU(2), one link, r = 0.3, background W = exp(i(0.5σ_1 + 0.1σ_2)/2), python -I]: u⟨G⟩_u = 1.87 at u = 10³, above n/2 = 1.5 and below n = 3. The theorem's C = 1 + η holds in all 12 toy runs (max 1.87 ≤ 3). The HHOL_LF sketch "Euler bound X·∇A ≤ 2(1 + O(ε))A" has the wrong direction for this purpose: the virial route needs a LOWER bound on X·∇G, and the bound that holds without interior criticality is (X − X*)·∇G ≥ G − m/2.

## 6. Corollary: the mismatch average of HHOL_LF §3.4(c) [P given (H−); bookkeeping item (M-A′) open]
Let D^G(u) = ∫_B e^{−uG}J dX. Then d/du log D^G = −⟨G⟩_u (G bounded on B̄, so differentiation under the integral is valid). For 0 < u_1 < u_2 ≤ x^{−2}:
  0 ≤ log D^G(u_1) − log D^G(u_2) = ∫_{u_1}^{u_2}⟨G⟩_u du ≤ n_i(1 + η_x) log(u_2/u_1).
The lower bound 0 holds because G ≥ 0. Take u_2 = x^{−2}, u_1 = (1 − θ)x^{−2}, 1 − θ = (1 + ρ_0)^{−2} (VERIFY V1):
  D^G((1−θ)x^{−2}) / D^G(x^{−2}) ≤ (1 + ρ_0)^{2n_i(1+η_x)} = e^{0.1906·n_i(1+η_x)} at ρ_0 = 0.1.
Mismatch average. The frozen ratio density is N_x/D_x = e^{−x^{−2}G}J / D^G(x^{−2}) exactly (A_min cancels in a normalized ratio). For complex u with Re u ≥ (1 − θ)x^{−2}: |e^{−(u − x^{−2})G}| = e^{−(Re u − x^{−2})G} ≤ e^{θx^{−2}G}, since G ≥ 0. Its average against N_x/D_x is ≤ the ratio above. So
  ⟨|e^{−(u − x^{−2})G}|⟩_{frozen} ≤ e^{0.1906·n_i(1+η_x)}.
Per scale-k unit cube (d = 4, at most 4 free links per site): ≤ e^{0.77(N²−1)(1+η_x)}; SU(2): e^{2.3}, SU(3): e^{6.1}. This is the O(1)-per-cube cost that HHOL_LF §3.4(d) puts into Balaban's budget O(1)M^dR^{d+1}d′ (CMP 122 II p. 380). The constant is now explicit. [P given (H−)]
(M-A′) Bookkeeping item, open. The bound is for G = A − A_min, not for the full A. If the mismatch factor in the chain is e^{−(u − x^{−2})A} with the full A (as HHOL_LF §3.4(c) writes it), the extra V′-independent factor e^{−(u − x^{−2})A_min} has modulus up to e^{θx^{−2}A_min} = e^{O(p_0(x)²)} per block on a small-field background. That is NOT inside the budget. It disappears if the comparison is between two normalized ratio densities (then A_min cancels exactly, as above), or if A_min belongs to the effective action at u that the next step carries anyway. The caller must check which reading the chain uses. [I]

## 7. Uniformity
- Volume. Every term is a sum over free links: n_i = (N²−1)L_i, Lemma J per link, m per link in (H−). So log of the cost is additive, ≤ 0.1906(1+η_x) per real mode. No cluster expansion is needed, because the bound is an upper bound on a positive average. [P given (H−)]
- Scale k. The proof uses only: (i) the cutoff is a product of convex balls of radius M_0ε_k in Lie-algebra coordinates, (ii) Haar measure, (iii) (H−). It uses no explicit form of A. So the only k-dependence is through u, ε_k (frozen at x*_k), and c_H. The scale-k action is A^η(U) = Σ_p η^{d−4}[1 − Re tr U(∂p)] on the η = L^{−k} lattice (CMP 109 (0.2) form), composed with U_{k,X}; in d = 4 the prefactor is η^0 = 1, and the block-unit O(ε²)-per-block size in §4(b) is k-free. Any extra k-factor in A would enter only via c_H. Uniformity of c_H in k is part of (H−). [R]
- Background. F depends on V_{Λ_i} (Prop. 1 minimizer) and on the exterior through U_{k,X_i}. The count n_i does not. The proof does not need Hess F ≥ 0 or the mode structure of the quadratic form; it needs only (H−) uniformly over backgrounds with |V_Λ(∂p′) − 1| < B_5M^5ε (1.78) and the field size (1.83). So the brief's question "Δ depends on the background but stays ≥ 0" is not needed; the weaker one-sided (H−) is. [P for the reduction; (H−) R]
- Coupling. The theorem is for real u only. That is all §6 uses: the complex u enters only through |e^{−(u − x^{−2})G}| ≤ e^{θx^{−2}G}. [P]

## 8. Ledger (authoritative)
- [V] (1.100), (1.101) on CMP 122 I p. 201 image; Prop. 1 and (1.78) on pp. 194–195 (text); CMP 122 II (1.71)–(1.75) and the p. 380 budget line on page images PDF pp. 25–26; CMP 109 (0.2) normalization (text).
- [P] Statement correction: ⟨A⟩_u ≤ Cn/u with the FULL A is false in general (background value A_min = O(ε²) per block, u·A_min = O(p_0²) per block). The right statement is for A − A_min, and the normalized ratio only sees A − A_min.
- [P] Gauge zero modes need no separate count: the virial bound counts all n_i = (N²−1)L_i real coordinates left after the axial delta; flat directions only make it loose.
- [P] Lemma J (Haar Jacobian, constant 0.68N(N−1)r², r ≤ 1/2). Numeric input |ψ′(s)| ≤ 0.17|s| on |s| ≤ 1 [num].
- [P given (H−)] Theorem: ⟨A − A_min⟩_u ≤ (n_i/u)(1 + η_x), η_x = 0.68M_0²x²p_0(x)² + 2c_HM_0²x p_0(x)³, for real 0 < u ≤ x^{−2}, conditions M_0x p_0(x) ≤ 1/2 and the small-field regime of (H−). C = 1 + η_x per real mode.
- [P given (H−)] Corollary: mismatch average ≤ (1 + ρ_0)^{2n_i(1+η_x)} = e^{0.1906n_i(1+η_x)}; ≤ e^{0.77(N²−1)(1+η_x)} per scale-k unit cube. This replaces "e^{O(1)n_i}" in HHOL_LF §3.4(c) with an explicit constant.
- [num] SU(2) one-link toy: u⟨G⟩ ≤ 1.87 ≤ n = 3 in 12 runs; 1.87 > n/2 shows C = ½ fails with a boundary minimizer.
- [R] (H−): Hessian of F along segments in B̄ is ≥ −c_Hε Σ_b‖h_b‖²_2, c_H uniform in k, volume, and small-field background. Structural reason in §4 [I]; needs Balaban's second-derivative bounds for V ↦ U_{k,X}(V) (CMP 102 / 109 / 122 I Prop. 1). This is the only analytic input left in (M-A).
- [I] δ_{G_i} = Haar delta at 1 on the links of G_i; ‖·‖ in (1.101) = operator norm; V_{Λ_i} = Prop. 1 minimizer restricted to Λ_i. None is load-bearing for the bound: other norms change constants by ≤ √N; the minimizer identity is not used (the proof centers at the true minimizer X* of the (1.100) exponent).
- [I, open] (M-A′): the chain must use the mismatch factor with A − A_min (normalized-ratio comparison), or carry A_min in the effective action at u. With the full A as HHOL_LF §3.4(c) writes it, the A_min factor is e^{O(p_0²)} per block and is outside the budget.
- Correction to HHOL_LF §6 (M-A) sketch: it asks for "B·∇A ≤ 2(1 + O(ε_k))A" on a domain star-shaped about 0. The virial route needs a LOWER bound, centered at the minimizer X* (convexity of the cutoff gives star-shape about any X* ∈ B̄). The usable form is (X − X*)·∇G ≥ G − m/2 from (H−).
Status of (M-A): REDUCED from "sketched" to the single input (H−), with explicit constants. Not verified by an independent agent.
