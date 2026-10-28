# SOURCES_N3A verification

Independent check of SOURCES_N3A.md. Firewall kept.

## 1. HBETA_N3 §4 conditions (read)
- §4 states (a) 3r+(3/2)τ < g^{−2}−γ^{−2}; (b) x_C = 2C_1′Aγ/β ≤ ln(3/2), C_1′ = C_1 + 12MγY/ρ²; (c) γ³C_1′Y ≤ β; (d) 2√2γ²Y ≤ ρ; Y = 2τ; ρ ∈ ]0,1/3]. Matches N3A's quotes.
- The numbers "2√2 > ρ", "≥ 12M/ρ² ≥ 108M", "x_C ≥ 216" are NOT in §4. They are N3A's own evaluation at Y = γ^{−2}. Rechecked:
  (d) 2√2γ²·γ^{−2} = 2√2 > 1/3 ≥ ρ. Fails. OK.
  (c) γ³·(12Mγ·γ^{−2}/ρ²)·γ^{−2} = 12M/ρ² ≥ 108M ≥ 108β (M ≥ sup|β_j| ≥ β on real points, (E)). Fails. OK.
  (b) 2·(12M/(γρ²))·Aγ/β = 24MA/(ρ²β) ≥ 216·A ≥ 216 if A ≥ 1. Fails. OK (A ≥ 1 to be checked).
- Note: (b)–(d) depend on τ only (through Y), not on r. Also N3's remark covers only τ ≤ r ≤ 1; γ^{−2}/2 > 1 for γ < 1/√2, so it lies outside N3's regime anyway.
- §3 of HBETA_N3: "u_k DECREASES in k, from u_0 ≈ g^{−2}+βK (fine lattice) to u_K = g^{−2} (unit scale)".

## 2. Direction (THEOREM2.md l. 11–13)
- (0.31): 1/g² + β log(L^kε)^{−1} ≤ 1/g_k² ≤ … with ε = L^{−K}: log(L^kε)^{−1} = (K−k) log L. So u_k = g_k^{−2} decreases in k; g_k grows toward k = K (unit scale); g_K = g exactly. k = 0 is the lattice (UV), k = K the unit scale (IR side). N3A's "u_k decreases, g_K largest, g_0 → 0" CONFIRMED.
- Theorem 2 text: g_k ∈ ]0, γ] for all k and g_K = g, "for a sufficiently small positive g". So g ≤ γ/2 is inside Balaban's own hypothesis. Since g_k ≤ g_K under (E) (strict monotonicity), g_K ≤ γ/2 ⇒ all g_k ≤ γ/2 ≤ γ: Theorem 1's hypothesis holds.
- Minor: N3A writes u_0 ≈ g^{−2} + βK; in (0.31) units it is g^{−2} + βK log L. Per-step β of (0.20) absorbs log L. Notation only.
- A = Σ a_m ≥ a_0 = 1 (SOURCES_HBETA l. 24). So x_C ≥ 216 holds.

## 3. Admissibility of g ≤ γ/2 (LEMMA_DPRIME Steps 7–8, KAPPA_BOUNDED §5.3–5.4)
- Lemma E form: Step 8 gives shooting for every K ≥ 1, every g ∈ ]0, γ″]. g = γ″/2 admissible. OK (γ must be renamed γ″, as N3A says).
- D″ form: §5.3(b) every K ≥ 1 for g ∈ ]0, g_1], g_1 = (γ^{−2}+2κ_*)^{−1/2}; clamp gives all g_k ∈ ]0, γ]. So g ≤ min(γ/2, g_1) is K-independent and meets Theorem 1's hypothesis. OK.
- CORRECTION to N3A §2(i) and ledger: "u_k decreases in k, g_K is the largest coupling" holds only in Lemma E form. In D″ form only u_k ≥ u_K − D′ (c′). DPRIME §4 numerics: K = 3, g = g_1 = 0.2924 gives g_0 = 0.3311 > g. N3A §2(iv) states this, but §2(i) and the ledger state the monotonicity without the qualifier.
- §2d's D″ choice g ≤ (4γ^{−2}+D′)^{−1/2}: it is ≤ γ/2 and ≤ g_1 (D = D′ = 2κ_*). Correct. It is stricter than §2's min(γ/2, g_1). Not a conflict: with the sweep condition γ^{−2} ≥ 2·2κ_* one has D′ ≤ γ^{−2}/2, so min(γ/2, g_1) already leaves gap ≥ 2.5γ^{−2} ≥ 2.5 > 9/16 + η.

## 4. Radius bounds in D3R / D3W8 (read)
- D3R l. 45: (1+δ_r) ≤ 2 "for r ≤ 1/8". D3R l. 58, 160, 185: binding 5γ²r ≤ ½. D3W8 l. 78: (C1) r ≤ 1/(6γ²c_1c_H) plus 5γ²r ≤ ½. All quoted correctly.
- At r = γ^{−2}/2: 5γ²r = 5/2 > ½. Fails. OK.
- Minor arithmetic slip: γ^{−2}/2 > 1/8 iff γ < 2, not "γ < 2√2" as N3A writes. Harmless (γ small).
- r_0 := min(1/8, …, γ^{−2}/10, 1/(6γ²c_1c_H)) meets every quoted bound. Y = 2τ_0 ≤ 1/4 ≤ 2, so (b)–(d) reduce to γ-small conditions fixed at step 3. OK.
- (a) at r_0: (9/2)(1/8) = 9/16 = 0.5625 < 3 ≤ 3γ^{−2} (γ ≤ 1, g ≤ γ/2). Ratio 3/(9/16) = 5.33 > 5. CONFIRMED.

## 5. Bridge units (ASSEMBLY §0, §2.2–2.3; D2 l. 44; FX §6.3–6.4)
- ASSEMBLY §0: A(U) = Σ_p P_p, weight exp(−g_0^{−2}A), no ε-power. Sourced weight w_p = g_0^{−2} − f(x_p) (§2.2). D2 l. 44: F_r = {‖f‖_∞ ≤ r, ‖∇f‖_∞ ≤ ρ_1}, "physical units". S_{n,ε}(F) = Σ_p F(x_p…)⟨φ…⟩, no ε-power (§0 l. 16).
- So ∂_z log Z_ε[Σ z_i f_i] gives Σ_p f_i(x_p)⟨φ_p…⟩, same physical f_i. The u-unit radius at scale 0 equals the sup-norm radius of f. CONFIRMED.
- The literal string "ε^{d−4} = 1" is not in ASSEMBLY. It is N3A's paraphrase of the d = 4 Wilson action with no ε factor. Content correct.
- FX §6.3(a) "radius c·r, ε-uniform", §6.4 "(p_0(γ), κ, c r) independent of K and ε"; ASSEMBLY §2.2 r^{−|α|}; §2.3 step 2 a ≤ c r δ⁵. r enters only as a fixed positive constant. "Needs r ≥ r_0 > 0 uniform in K" CONFIRMED. The bridge (B-N1) and (FX-D) stay open; N3A says so.
- §3 scale-K: (3/2)τ_0 g² ≤ (3/8)τ_0γ² with g ≤ γ/2. Arithmetic OK.

## 6. D″ sketch (§2d)
- Labelled [R]; label correct. The window replacement for Step 3 is plausible: Re u_k − Re u_K = (real window sum on the Re-history) + error ≤ ½C_1′Y·S_3, and (a″) gives the real sum ≥ −D′ for couplings in [0, γ].
- Gaps not named in §2d: (i) the base of the bootstrap is the REAL Lemma H (HBETA), which also assumes (E) and needs the same window rewrite; (ii) Step 0's "Re β_j ≥ β/2" is used by Step 2, so Step 2 must use Re u_i ≥ max(γ^{−2}, γ^{−2} + β(K−i) − D′ − η); S_3 then gains an additive term of order (D′/β + 1)γ³, bounded and γ-small, matching "bounded factor".
- Grade: CONFIRMED as a sketch; not a proof.

## Grades
1 CORRECTED (monotone/largest only in Lemma E form; else OK). 2 CONFIRMED (slip γ<2 not 2√2). 3 CONFIRMED. 4 CONFIRMED as [R] sketch, two gaps added.
