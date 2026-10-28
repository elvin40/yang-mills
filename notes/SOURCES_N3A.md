IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_N3A — condition (a) of Lemma N3: the source radius against the final-coupling gap

Status 2026-10-27 (Claude, Opus; unverified). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read. No existing file edited.

## 0. Inputs read [V = read in this session]
- SOURCES_HBETA_N3.md §1–§4: Lemma N3, conditions (a)–(d), Y = 2τ, Q = {|Re c| ≤ 2r, |Im c| ≤ τ}. [V]
- SOURCES_HBETA_N3_VERIFY.md §3, CORRECTION 1: (a) is not a γ-small condition. [V]
- SOURCES_HBETA.md §1–§3: c and τ are shifts of u_0 = g_0^{−2}; Lemma H needs 3r < g_K^{−2} − γ^{−2}. [V]
- THEOREM2.md §1–§3: (0.31) and (T2-b): the target g = g_K is free in ]0, γ]. [V]
- ASSEMBLY.md §1.3, §2.1–§2.3. [V]
- SOURCES_FX.md §2, §6.3–§6.4. [V]
- LEMMA_DPRIME.md §1, Steps 7–8; KAPPA_BOUNDED.md §5.3–§5.4 (window g_1, pairwise bound (c′)). [V]
- Constraints on r elsewhere (grep): SOURCES_D2 l. 42, 44, 79; SOURCES_D3 l. 53, 138; SOURCES_D3R l. 45; SOURCES_D3W8 l. 78, 147; SOURCES_FX_O23 l. 43; SOURCES_D4D5 l. 76. [V, lines only]

## 1. Order of constants [P, bookkeeping from the files read]
1. L (odd, > 11; Balaban CMP 109 p. 256).
2. Balaban's step constants: κ, M, p_0, α, E_0, the β-function bounds β, β′ (Lemma E) or b, κ_* (Lemma D″), C_1, A, M_hol, ρ (H-hol). All depend on L only, not on K.
3. γ: the small-coupling threshold. It is fixed after step 2 by finitely many smallness conditions (Lemma E γ ≤ (β_0/(2C))^{1/2}; HBETA (2.3); N3 (b)–(d) at τ ≤ 1; the sweep condition γ^{−2} ≥ c_sw·2κ_* of KAPPA_BOUNDED §5.4). None of them involves K, r beyond r ≤ 1, or g.
4. g := g_K, the unit-scale coupling. It is a free parameter in ]0, γ] (Theorem 2, CMP 109 p. 259: "for a sufficiently small positive g"; ASSEMBLY §1.3: "g ∈ ]0, γ] small"). It is fixed ONCE, before K.
5. r_0 and τ_0: the source radii. They depend on γ, g, and the step-2 constants. They do not depend on K (§2).
6. K → ∞, with ε = L^{−K}, ℓ fixed, and g_0 = g_0(K, g) from the shooting lemma. g stays fixed. Only g_0 moves.

Point of the order. The brief says "r is chosen LAST". That is admissible only in the sense "after γ and g". r must be chosen BEFORE K, because the continuum statement needs one r for all K (§3). So the correct order is L → Balaban constants → γ → g → (r, τ) → K. Choosing r after K would allow r = r(K), which is useless for the bridge.

## 2. Condition (a) with g ≤ γ/2 [P]
Claim. Put g ≤ γ/2. Then g^{−2} − γ^{−2} ≥ 4γ^{−2} − γ^{−2} = 3γ^{−2}. Condition (a), 3r + (3/2)τ < g^{−2} − γ^{−2}, holds for every (r, τ) with τ ≤ r and (9/2)r < 3γ^{−2}, i.e. r < (2/3)γ^{−2}. The bound does not involve K.
- Check of the brief's numbers: r = τ = γ^{−2}/2 gives 3r + (3/2)τ = (9/4)γ^{−2} < 3γ^{−2}. Condition (a) ALONE holds. [P, arithmetic]
- Is g ≤ γ/2 admissible for every K? Lemma E form (all β_j ≥ β > 0): LEMMA_DPRIME Step 8 gives the shooting for every K ≥ 1 and every g ∈ ]0, γ″]. So g = γ/2 is admissible (with γ := γ″). Lemma D″ form (early increments may be negative): KAPPA_BOUNDED §5.3(b) gives every K ≥ 1 for g ∈ ]0, g_1], g_1 = (γ^{−2} + D)^{−1/2}, D = 2κ_*; LEMMA_DPRIME Step 7 gives every g ∈ ]0, γ] for K ≥ K_0. So choose g ≤ min(γ/2, g_1); this is a fixed choice, independent of K. [P, from the cited lemmas]
- Does anything force g close to γ? No. (i) u_k = g_k^{−2} DECREASES in k (SOURCES_HBETA_N3 §3; CMP 109 (0.20): 1/g_{k+1}² = 1/g_k² − β_{k+1}). So g_K = g is the LARGEST coupling of the trajectory, and g_0 is the smallest: u_0 ≈ g^{−2} + βK → ∞. The window ]0, γ] constrains g from above only. The bare coupling g_0 does NOT sit at the top of the window; it goes to 0 as K → ∞. (ii) Theorem 1 (CMP 122 II p. 355) needs only g_k ∈ ]0, γ] for all k. (iii) The lower bound (E) β_j ≥ β > 0 makes u_k ≥ u_K for k < K, so the threshold binds only at k = K. (iv) In Lemma D″ form, (c′) gives u_k ≥ u_K − D′, so the threshold binds near k = K up to D′; g ≤ g_1 absorbs this. Nothing in Theorem 1, Theorem 2, Lemma D′, or Lemma D″ requires g_K near γ. [P]
- Physical meaning. g is the running coupling at the unit scale (the side-1 cube of the torus of side ℓ). Fixing g ≤ γ/2 fixes the dynamical scale Λ to be small against 1. It is one admissible point of the one-parameter family, as in Balaban's own statement. It is not a loss of generality beyond what Theorem 2 already imposes ("g sufficiently small"). [P]

## 2b. The brief's radius r = τ = γ^{−2}/2 is NOT admissible for Lemma N3 as a whole [P; corrects the brief]
Condition (a) holds at r = τ = γ^{−2}/2, but (b)–(d) fail there, because Y = 2τ = γ^{−2}.
- (d) 2√2γ²Y ≤ ρ: left side = 2√2 ≈ 2.83; ρ ≤ 1/3. FAILS.
- (c) γ³C_1′Y ≤ β: C_1′ ≥ 12MγY/ρ² = 12M/(γρ²), so γ³C_1′Y ≥ 12M/ρ² ≥ 108M. Also M ≥ sup|β_j| ≥ β on the real history (real points lie in P_ρ). So left side ≥ 108β > β. FAILS.
- (b) x_C = 2C_1′Aγ/β ≥ 24MA/(ρ²β) ≥ 216 > ln(3/2) (A ≥ a_0 = 1). FAILS.
- Other blocks bound r by O(1) or O(γ^{−2}/10), independent of K: r ≤ 1/8 (SOURCES_D3R l. 45); r ≤ 1 (SOURCES_D3 l. 138; SOURCES_FX_O23 l. 43, τ ≤ ½); 5γ²r ≤ ½, i.e. r ≤ γ^{−2}/10 (D3R §5, D3W8 l. 78); r ≤ 1/(6γ²c_1c_H) (D3W8 l. 78); r ≤ r_0 (D2 Theorem D2, D3 Theorem D3, FX §6.3(a)). r = γ^{−2}/2 violates 5γ²r ≤ ½ (5/2 > 1/2) and r ≤ 1/8 for γ < 2√2.
So γ^{−2}/2 is the wrong scale for r. The scale of r is set by the O(1) block conditions, not by (a).

## 2c. The correct uniform radius, and (a) at that radius [P, given the cited block conditions]
Define, after γ and before K,
  r_0 := min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)),   τ_0 := r_0.
Then τ_0 ≤ r_0 ≤ 1/8 ≤ 1, so N3's own remark "(b)–(d) hold for τ ≤ r ≤ 1 and γ small" applies (VERIFY item 2 CONFIRMS (b)–(d) are γ-small conditions at Y ≤ 2). Condition (a) needs 3r_0 + (3/2)τ_0 = (9/2)r_0 ≤ 9/16 < g^{−2} − γ^{−2}.
- With g ≤ γ/2 and γ ≤ 1: g^{−2} − γ^{−2} ≥ 3γ^{−2} ≥ 3 > 9/16. (a) holds with a factor > 5 margin.
- The minimal requirement is weaker: g ≤ (γ^{−2} + 9/16)^{−1/2}. Any g bounded away from γ by a K-independent amount works. D2's condition 2r ≤ ½(g^{−2} − γ^{−2}) (D2 l. 42) also holds: 4r_0 ≤ ½ < 3.
- Uniformity. r_0, τ_0 depend on L, Balaban's constants, γ, and (through (a)) g. None depends on K. Lemma N3's conclusion holds "for every K" (its statement) once (a)–(d) hold. So N3 holds with constant 3/2, uniformly in K, at (r_0, τ_0). [P, given N3's inputs (I), (E), (H-hist), (H-hol), (H-hist_C), (B-hol)]
- Verdict on VERIFY CORRECTION 1. The correction is right: (a) is not a γ-small condition, and taking g → γ would force r → 0. But in the actual order of constants g is fixed before K and can be taken ≤ γ/2. Then (a) is slack. Condition (a) is SETTLED: it is never the binding condition on r.

## 2d. Lemma D″ form (negative early increments) [R, sketch]
N3 Step 3 uses "Re u_k ≥ Re u_K since Re β_j ≥ β/2", i.e. (E) at every step. KAPPA_BOUNDED §5.3 (c′) gives only u_k ≥ u_K + β(K − k) − D′, D′ = 2κ_*. Replace per-step positivity by the window bound. The complex error of a window sum is ≤ Σ_i ½C_1′g_{r,i}³|Im u_i| ≤ ½C_1′Y·S_3 ≤ 2C_1′Yγ/β =: η (S_3 ≤ 4γ/β), small for γ small. Then (a) becomes 3r + (3/2)τ + D′ + η < g^{−2} − γ^{−2}. The choice g ≤ (4γ^{−2} + D′)^{−1/2} (≤ min(γ/2, g_1)) gives g^{−2} − γ^{−2} − D′ = 3γ^{−2}, still slack. Step 2 (S_3 ≤ 4γ/β-type bound) needs u_i ≥ γ^{−2} + β(K − i)/2 − D′; this changes S_3 by a bounded factor. Not written in full; N3 as stated assumes (E).

## 3. What the bridge needs from r [P for the units; R for the bridge itself]
- What FX and the bridge use. SOURCES_FX §6.3(a): "for |ζ| ≤ r ≤ r_0 … the large-field activities are holomorphic with radius c·r, ε-uniform, at every scale". FX §6.4: "constants (p_0(γ), κ, c r) independent of K and ε". ASSEMBLY §2.2: the source form |∂_z^α(log Z_ε[f] − W_ε[f])| ≤ C^{|α|}α! r^{−|α|}. ASSEMBLY §2.3 step 2: a scale-δ bump lies in F_r if its amplitude is ≤ c r δ⁵. In all three places r enters only as a fixed positive number. A smaller r costs r^{−n} in the n-th cumulant, which is absorbed in C^n and so in σ_n = A(n!)^D. So the bridge needs r ≥ r_0 > 0 UNIFORM in K. It does not need r large, and it does not need r of size γ^{−2}. [P, from the quoted lines]
- Units: no K-dependent conversion. ASSEMBLY §0: A(U) = Σ_p P_p(U) with ε^{d−4} = 1 in d = 4; the sourced weight is w_p = g_0^{−2} − f(x_p) (SOURCES_HBETA_N3 §2: additive, absolute u-units; δw_0 = −ζ per plaquette). The class F_r bounds ‖f‖_∞ and |∂^m f| (m ≤ 5) in PHYSICAL coordinates on T⁴_ℓ (D2 l. 44: "physical units"; ASSEMBLY §2.2). S_{n,ε}(F) = Σ_p F(x_{p_1}, …)⟨φ_{p_1}⋯⟩ carries no ε-power. So the z-derivatives of log Z_ε[Σ z_i f_i] at z = 0 are the smeared cumulants with the same physical test functions f_i. The u-unit radius r_0 at scale 0 IS the physical sup-norm radius of f. There is no L^{Kα} factor. [P]
- Scale-K size. At the unit scale the shift is |δw_K| ≤ (3/2)τ_0 in u-units, i.e. relative size (3/2)τ_0 g² ≤ (3/8)τ_0γ² against w_K ≈ g^{−2} (N3 §1). This is K-independent too. At fine scales the relative size τ_0 g_k² → 0. So no scale sees a K-growing relative perturbation. [P]
- Conclusion. The bridge's requirement is met by the K-independent r_0 of §2c. The brief's alternative (radius scaling with K) does not occur.

## 4. Ledger
- [P] Order of constants L → Balaban constants → γ → g → (r_0, τ_0) → K (§1).
- [P] g ≤ γ/2 is admissible for every K (Lemma E form: LEMMA_DPRIME Step 8; D″ form: g ≤ min(γ/2, g_1), KAPPA_BOUNDED §5.3(b)). Nothing forces g_K near γ; g_K is the largest coupling, g_0 → 0 (§2).
- [P] With g ≤ γ/2, (a) alone holds at r = τ = γ^{−2}/2 (brief's arithmetic is right) (§2).
- [P] But r = τ = γ^{−2}/2 violates N3 (b), (c), (d) and the D3R/D3W8 radius conditions (§2b). The brief's proposed uniform radius r_0 = γ^{−2}/2 is REFUTED.
- [P, given block conditions] Correct uniform radius r_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)), τ_0 = r_0; (a) is slack by a factor > 5 at g ≤ γ/2, γ ≤ 1 (§2c). Condition (a) SETTLED.
- [P] Bridge needs r ≥ r_0 > 0 uniform in K, not large; u-units = physical sup-norm units, no L^{Kα} (§3).
- [R] Lemma D″ form of N3 (negative early increments): window version of Step 3 sketched, not written (§2d).
- [I] N3's own inputs: (I), (H-hist), (H-hol), (H-hist_C) for the history form, (B-hol). Unchanged by this file. The bridge (ASSEMBLY §2.3) and (FX-D) remain open.
- [V] Not applicable: no new primary-source quote was needed. All citations are to files in this folder, read in this session.
