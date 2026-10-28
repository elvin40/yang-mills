# SOURCES_C_CONDITION verification (2026-10-28)

Independent check of SOURCES_C_CONDITION.md §1–§8. One section per tool call.

## 1. Task (a): identification of (C) [checked]
- A1_KERNEL §5, §8: μ(y) = (L^jη)^d, s(y) = (L^jη)², N = QGQ*, N̂ = S^{−1/2}NS^{−1/2}, (C) ⟺ min{⟨A,G^{−1}A⟩ : QA = B} ≤ c_−^{−1}Σℓ^{d−2}|B|². Same S, same μ, same unnormalized Q as C_CONDITION §1.1–§1.3.
- WC_FULL §6.2 Lemma AW (ii): "N̂_P := S^{−1/2}QPQ*S^{−1/2} ≥ c_−" with P = G or G_1; C1 = (C) for G, C2 = c_−(G_1). Same object.
- A1_WALK_FULL IN3: Re⟨u, N̂u⟩ ≥ c_−‖u‖²; at real U N̂ is self-adjoint, so Re is redundant. Same object.
- Equivalences §1.3: conjugation by S^{1/2} (S > 0 diagonal), inverse monotonicity (needs N > 0, i.e. G > 0 and Q onto), and the variational identity ⟨B,N^{−1}B⟩ = min{⟨A,G^{−1}A⟩: QA = B} (standard Schur-complement/Lagrange identity for G > 0). All correct.
- Direction: (C) is a LOWER bound on N̂, i.e. an UPPER bound on the constrained energy. A3's γ_0 bounds (QG_1Q*)^{−1} − a − Δ_J from BELOW on a constrained subspace, i.e. N_1 from above. Opposite direction. Claim (1) CONFIRMED.
- Note: complex points (WC 6.2) need (C) only at real U (hypothesis (ii) of Lemma AW). Consistent.

## 2. Task (c), part 1: seam and Lemma T (reasoning; numerics in §5)
- Seam is forced [P, verifier]. Suppose a single-valued path rule b ↦ Γ_{y→b} made every adjacent thin loop Γ_b·link·Γ_{b′}^{−1} contractible. Take a closed chain of adjacent fine bonds b_1, …, b_n = b_1 that winds once in direction ν. The product of the n thin loops telescopes to Γ_{b_1}·(winding cycle)·Γ_{b_1}^{−1}, which is non-contractible. Contradiction. So every rule has at least one non-contractible thin loop on each winding cycle; its holonomy is a conjugate of the Polyakov loop up to plaquette factors. For the flat example of C_COND §4.1 the bracket is |Ad P − 1| = O(1). Claim CONFIRMED.
- Size. Seam at d(b, y) ≈ N_T/2 (coarsest scale, ℓ = 1). Per seam bond: η^d·|E|²·|AdP − 1|²/η² ≈ N^{−d}·C_H²e^{−δ_HN_T}·4N². Seam has ~ (N_T N)^{d−1} crossing bonds (upper count; the exponential weight concentrates near the closest seam point, so a sharper count is c(δ_H)N^{d−1}e^{−δ_HN_T}). Either way energy/|X(y)|² ∝ N = L^k. Not uniform in k. The prefactor N_T^{d−1} in the draft is an upper count, not the leading term; the conclusion does not change.
- QE_INV 5.3 [I-c] text "Torus-winding paths do not occur here" is false at the seam. CONFIRMED.
- Lemma T (a): supp χ ⊂ {d ≤ D}; physical radius ≤ DLℓ + O(ℓ) ≤ r_D. If N_T > 2r_D + 2 (coarsest-block units), each torus point within r_D of y_− has a unique lift, and adjacent bonds in supp have adjacent lifts. Axial paths stay in the coordinate box of their endpoints, so inside the lifted ball. No winding loop in supp. CONFIRMED.
- Lemma T (b): Q(1)(χE) − I = −Q(1)((1 − χ)E) uses Q(1)E = I (QE_INV 2.2). Minor notation: the transport part is Ad U(τ)·Σ q χE[Ad U(λ_b) − 1] + Ad U(τ)·(Q(1)χE)(y′, y) − δ; the factor Ad U(τ) is orthogonal and τ is empty on the diagonal, so the entrywise bound is unchanged. Entry ≤ C_He^{δ_Hc_q/2}e^{−δ_Hd(y,y′)/2}e^{−δ_HD/4}; same as the draft up to the constant. CONFIRMED.
- Lemma T (c): write D_U(χ𝓔)(b) = χ(b′)[𝓔(b′) − U^{−1}𝓔(b)]/η + (χ(b′) − χ(b))U^{−1}𝓔(b)/η. First term needs b, b′ both in the box only when χ(b′) > 0; the +2 margin covers b. |χ′| ≤ 3 and d(b, b′) = η/ℓ(b) (path metric [I]) give the (3/D)ℓ^{−1}|E| term. K_𝓔^D formula CONFIRMED.
- Lemma T (d)–(e): D_0 = D_0(d, L) because c_tr depends on C_H, δ_H, c_q, L^{|d−2|/2} and on θ_S ≤ δ_H/8 (true for RM ≥ c(d, L)). c_T depends on d, L only. CONFIRMED.
- (Vol) ⇒ (T2): at step k the coarsest blocks are unit blocks (L^kη = 1) and the side is N_k = ℓL^{K−k} ≥ ℓ > 22M (T2_VOL §2). So M ≥ c_T/22 gives (T2) at all k ≤ K. CONFIRMED. One extra "M large" condition, chosen after d, L.

