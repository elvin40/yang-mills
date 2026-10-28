# SOURCES_D2_VERIFY

Independent verification of SOURCES_D2.md (2026-10-27).

## V1. Read SOURCES_D2.md in full
Read §0–§8 (317 lines). First-pass flags to check against Balaban:
- (a2) "current = gradient" argued by subtracting f(x_□) at one point; the p. 267 identity is global (all δA′ with QQ*A′ = 0). Need a block-wise argument.
- (Hβ) radius inconsistent: §0 says |c| ≤ 2r, §4.4 says |c| ≤ r; (A) is holomorphic only on the open disc |c| < 2r.
- §1.2 derivative bound: polydisc radius r/2 for n overlapping directions leaves S_r. Valid for one direction or disjoint supports only.
- §5.1 exact factorization of W: true in the small-field region with X over all of D_{k+1}. With large fields the domains Λ_j are field dependent (CMP 119 (2.25)), so Σ_{X⊂Λ} w(X; f) depends on the field. D3 item.
- §7.1 equivalence real a!ρ^{-|a|} ⇔ polystrip: converse direction loses the radius (ρ′ < ρ or a factor ∏(a_i+1)).

## V2. CMP 109 Sect. 4 end, (4.16)–(4.45), (5.1)–(5.10)
- (4.16) [V]: "The operation Q_{j,μ} is translation invariant". Field-side only, unaffected by f. Harmless.
- (4.34) [V]: "The second expression ... we have to use only Euclidean symmetries to reduce it to a final form. By the Euclidean symmetries the third expression should vanish."
- (4.35)–(4.37) [V]: "we extend summations over y to the whole lattice Z^4"; "We extend it to all X ∈ D_j, where D_j is the class of localization domains constructed for the lattice ξZ^4"; Π = Σ_{X∈D_j} E^(2)(X, x, y).
- (4.40)–(4.45): counterterm handled by the momentum representation of Δ_j.
Verdict on (T1): FALSE as stated. Sect. 4 after (4.34) uses Euclidean symmetry and the infinite-volume/translation extension. D2's frozen-centre scheme can cover these lines, but D2 claims "Sect. 3–4 run verbatim".
- Size check: (4.22) gives |B|^2|δB||dB||Γ| → (L^jη)^5, so |B| ~ L^jη and |dB| ≤ a_1(L^jη)^2 (4.17). The third expression of (4.34) is a cubic term tr δB i[B_κ, B_ν] with the first moment Σ_y E^(2)(x,y)(y−x)_κ. With a source the first moment of Π^f − Π^(c) is O(Mλ_jρ_1/r), so this term is O(λ_jρ_1/r)(L^jη)^3 per point = (L^jη)^4: MARGINAL, not irrelevant. D2 §4.3 treats only the quadratic form Q^f, where transversality supplies two curvatures. Repair: apply the axial-gauge (cone) bound to the full gauge-invariant difference E^(j)(f) − E^(j)(c_□) at all orders, so every B is replaced by h(dB) of size M(L^jη)^2. Plausible, not written.

## V3. CMP 109 (2.6)–(2.15), p. 267, p. 269 (P^(k) class)
- (2.9) [V]: χ_k restricts |B′(b)| < ε_1 (alt. g_k/y_k ε_1) BEFORE the scaling B′ = g_k B. So the scaled field obeys |B| < ε_1/g_k (or ε_1/y_k).
- p. 267 [V]: "−(1/g_k)⟨H_1B′, J⟩ = 0 because ⟨δA′, J⟩ = 0 for all δA′ satisfying the condition QQ*A′ = 0, and H_1B′ satisfies it. Hence the only term with a negative power of g_k is the action evaluated at the configuration U_{k+1}."
- p. 269 [V]: P^(k) "is bounded by a second order polynomial in B, with coefficients of the order O(g_k) [OCR 'O ^ )'], hence it can be treated as a small perturbation".
- Order check of (2.b): linear vertex g_k|J_f||B| with |J_f| ≤ O(r ε_0); quadratic g_k² r|B|²; cubic g_k³ r|B|³ ≤ g_k² r ε_1|B|² on |B| < ε_1/g_k. All are ≤ O(g_k)(1 + |B|²). Class claim holds; the source vertices are smaller than Balaban's own cubic vertex g_k B³.
- (a2) "current = gradient": the identity is global, so subtracting f(x_□) at one point gives J_{f−f(x_□)} that grows with distance. Clean version: f̄ block-constant on T^(k+1) blocks maps the constraint subspace to itself (Q is block local and linear after linearization), so ⟨f̄J, H_1B⟩ = ⟨J, f̄H_1B⟩ = 0 and J_f → J_{f−f̄} = O(Lλ_kρ_1ε_0) per bond, uniformly. Class membership does not need (a2) (|J_f| ≤ O(rε_0) suffices). (a2) is needed for irrelevance of the induced g_k²⟨J_f, CJ_f⟩ term, which without it is f²(D*F)C(D*F): dimension 4, marginal.

## V4. (0.25)–(0.30) and (0.29) from the PDF image (p. 258)
- (0.29) [V, PDF image]: "|V^(j)(X, U_k)| ≤ O(1)(L^jη)^{4+α} exp(−κd_j(X)), α > 0". SOURCES.md reconstruction is right, except the prefactor is O(1), not E_0 O(1). Harmless.
- (0.27) [V]: the local coordinates are taken on a cube □̃ with □ ∈ π_k, "considered as a subset of the η-lattice T_η". (0.30): number of π_j cubes ~ (L^jη)^{-4}M^{-4}|T_η|, so π_j cubes have side M L^jη in step-k units, π_k cubes side M.
- Consequence for D2 §4.3: if □ is Balaban's Sect. 3–4 cube (π_k), f varies on □ by O(Mλ_kρ_1), not O(Mλ_jρ_1). Then T_2 per j is O(Mλ_kρ_1/r) × marginal, with no (L^jη) gain, and Σ_{j≤k} gives k·Mλ_kρ_1/r: not uniform at k = K. Checking which cube Sect. 3 uses next.

## V5. Sect. 3 cube scale (decisive for D2 §4.3)
- CMP 109 p. 270 [V]: "Let us take the partition π_k. We construct a cover of the space T by cubes □, which are unions of 2^d neighbouring cubes from π_k ... ζ_□(x) = Π ζ(M^{-1}(x_μ − y_μ))". Line 1270 [V]: "dist^(ξ)(X, supp(1 − ζ_□)) ≥ M(L^jη)^{-1}".
- So Balaban's Sect. 4 localization B = ζ_□ Q_j(ηA) is on a k-scale cube (physical side ~Mλ_k), containing ~(M/L^jη)^4 points of T^(j).
- D2 §4.3 states "Balaban localizes B ... to □^4 ... so everything is per cube" and then "f and c_□ differ by ≤ O(M)λ_jρ_1" with M^4 points and M^2 cone length. That is the j-scale cube count. With Balaban's actual cube: |f − c_□| ≤ O(Mλ_kρ_1); T_2 per j ~ (Mλ_kρ_1/r) × marginal, no (L^jη) gain; T_1 with cone length M/L^jη is worse. The irrelevance claim (α = 1) and h ≡ 0 do NOT follow as written.
- Repair candidates: (i) freeze per localization domain X ∈ D_j (j-scale): D_X := E^(j)(X; f) − E^(j)(X; f(x_X)) is gauge invariant, zero at U = 1 by (v), zero first order by colour invariance (4.32)–(4.33); in an axial gauge on X plus Cauchy in a scaling parameter it is O(Mλ_jρ_1/r)·M^4(L^jη)^4 e^{-κd}: irrelevant, α = 1. The residual patchwork Σ_X E(X; c_X) still varies by Mλ_kρ_1 across a k-cube, so the Sect. 5 extraction needs Σ_j |B_j′| bounded, i.e. (Hβ), in the extraction itself. (ii) Keep the (S-A) bookkeeping with |h_k| = O(Mρ_1λ_k); this is the natural D1 count (corrections at the current scale λ_k), and it also needs (Hβ).

## V6. Balaban's propagator norms (CMP 116 p. 3) vs Lemma 3.1
- [V] (1.6)–(1.7): random-walk terms localized on domains of π_k(1)-cubes (size M_1); bound "(1.7) ... where Δ(y), Δ(y′) are localization cubes of the term. This bound holds for all operator norms in formulations of theorems in [13], e.g. in Theorem 3.1." So Balaban's norms are cube-to-cube operator norms (L^∞, Hölder-type regularity norms) with decay e^{-δ_0 d}, not pointwise kernel bounds.
- Lemma 3.1 transfers: define ‖A‖_δ with sup_Δ Σ_Δ′ ‖1_Δ A 1_Δ′‖ e^{δ d(Δ,Δ′)}; sub-multiplicativity holds for composed operator norms. Regularity (Hölder) norms are fine because in C_0(g²𝒲C_0)^n only the outer factors carry them, as D2 notes.
- Algebra checked: (i)–(iii) geometric series and the two-step resolvent bound τc_1 + 2τ²c_1 ≤ 2τc_1 are correct; (iv) correct. Correction: the constant change is c_0 → 3c_1 with c_1 = c_0 c_4 Σ(1+n)^4 e^{-δ_0 n/2} = O(δ_0^{-5})c_0, not "×3". Fixed constant, harmless.

## V7. (Hβ), D1 consistency, remaining items
- D1 ledger line 11 [read]: first f-gradient field-dependent terms are dimension 6, irrelevant by L^{-2}; c_1 − 1 = O(g_0^4). So h ≡ 0 is consistent with D1's count (α = 2 if booked per X ∈ D_j). The obstacle is D2's proof route (V5), not the count.
- (Hβ) needs: (1) the Faddeev–Popov identification B_j(c) = Balaban's β_j along the trajectory 1/g_0² − c (D2 §1.1 says it does not use this; (Hβ) does), with the cutoff dependence deferred to D3; (2) a bound Σ_{i<j}|∂β_j/∂u_i| ≲ g_{j−1}^4 (one loop c-independent, so the two-loop term starts at g^4; Balaban p. 298 only says β_j depends on all earlier couplings); (3) analyticity of β_j in complex couplings (CMP 109 p. 266, cutoff g_k/y_k ε_1 version [V]). Then Σ_j|B_j′| = O(γ²) ≪ ½. Plausible; not in Balaban. Also: radius inconsistent (§0: |c| ≤ 2r; §4.2/§4.4: |c| ≤ r; (A) holomorphic only on |c| < 2r). By V5, (Hβ) is also needed inside the extraction, not only for |f_k|, |∇f_k|.
- (U): a = 7 undercounts. (5.10) [V] decay is δ_1 = ½min{δ_0, κM^{-1}}, so Σ_y|Π| carries ~(M/κ)^4 more. Only changes a.
- §1.2 derivative bound: polydisc radius r/2 for n overlapping directions leaves S_r; use r/(2n) (still Cⁿn!) or disjoint supports (the case used in §5.2, §7.3).
- §7.1: "real a!ρ^{-|a|} ⇔ polystrip" holds forward; converse loses radius (ρ′ < ρ). Lemma 7.1 (a), (b) re-derived: correct.
- §5: W field independence and factorization exact on the small-field region. With large fields Balaban's domains Λ_j are field dependent (CMP 119 (2.25), (2.30)), so Σ_{X⊂Λ_j} w(X; f) depends on the field; D3 item 7 must add this. "Drops out" correction (P1)–(P3): correct.
- §6.3: CMP 116 p. 3 quote is about replacing propagators, not input activities. Analyticity of the step in its activities is standard for convergent cluster expansions but is an assumption. Input decay κ → κ/2 must be regained by the scale change (factor L in d); not stated.

## Grades
(1) step (a): CONFIRMED with a correction. Order count and P^(k) class hold (all source vertices ≤ O(g_k)(1+|B|²) on |B| < ε_1/g_k). The "current = gradient" argument must be block-wise (f̄ constant on T^(k+1) blocks), not one-point.
(2) step (b): CONFIRMED. Neumann algebra correct; Balaban's norms are cube-to-cube operator norms (CMP 116 (1.7)); lemma transfers. Constant change is c_0 → 3c_1, not ×3.
(3) step (c): CORRECTED / proof UNSUPPORTED. (T1) false: Sect. 4 uses Euclidean symmetry and infinite-volume extension at (4.34)–(4.37). Sect. 3–4 cubes are π_k (side Mλ_k), so |f − c_□| = O(Mλ_kρ_1), not O(Mλ_jρ_1); T_1, T_2 bounds and h ≡ 0 do not follow. Cubic first-moment term of (4.34) not covered. h ≡ 0 is consistent with D1's count; fallback (S-A) with h_k = O(λ_k).
(4) step (d): CONFIRMED on the small-field region; field-dependent Λ_j breaks exact factorization in D3.
(5) step (e): CONFIRMED as "reduced"; analyticity-in-activities is an assumption (quote is about propagators); decay halving must be regained.
(6) step (f): CONFIRMED with minor correction (converse loses radius; polydisc radius r/2n for overlapping directions).
(7) open (Hβ), (U): CONFIRMED as open; (Hβ) plausible (B_j′ = O(g^4)), needs FP identification + history-derivative bound; radius r vs 2r inconsistent; also needed in extraction; a = 7 undercounts.
(8) D3 list: CONFIRMED; add field-dependent domains for W and (Hβ) in the extraction.
