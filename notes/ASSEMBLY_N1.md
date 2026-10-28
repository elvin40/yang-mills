# ASSEMBLY_N1 — the bridge (B-N1): sourced cumulant bounds ⇒ (H-U)

Aligned 2026-10-28 with the verified C¹ + Lemma C form (SOURCES_D4D5 §5.1–§5.2, HHIST_N1_VERIFY claim 6, SOURCES_B21_S_VERIFY §5)

Date 2026-10-27. Status: [derived here, unverified]. Tags as in ASSEMBLY.md §0.
Inputs read: ASSEMBLY.md §0, §1, §2.3; ASSEMBLY_VERIFY.md §6 item 5; SOURCES.md §1.3, §2.2 (F_r); SOURCES_VERIFY.md item 5; SOURCES_D2.md (F_r line 44); SOURCES_D3.md (iv) (G1), (G2); SOURCES_D3R.md §4; reports/o3_continuum.txt lines 4987–5003.

Result in one line. Under hypothesis (S) below, |S_{n,ε}(F)| ≤ A_η (n!)^{1+2η} ‖F‖_{6n} for all K ≥ K_0, n ≥ 1, F ∈ D_n, every η > 0. So (H-U) holds with s = 6 and any D > 1 (D > 2 under the fallback of §5.1). The bridge adds no factorial: its costs are all C^n.

## 0. Notation (ASSEMBLY.md §0, unchanged)
- T⁴_ℓ = (R/ℓZ)⁴, lattice spacing ε = L^{−K}. Plaquette centres x_p are pairwise distinct. 6(ℓ/ε)⁴ plaquettes.
- φ_p := P_p − c_ε, c_ε = ⟨P_p⟩. So ⟨φ_p⟩ = 0 and |φ_p| ≤ 2.
- ϕ(f) := Σ_p f(x_p) φ_p for f: T⁴ → C. It is complex-linear in f.
- Lattice cumulant u_n(p_1,…,p_n) := ⟨φ_{p_1}; …; φ_{p_n}⟩ (joint cumulant). κ_n(f_1,…,f_n) := Σ_p Π_i f_i(x_{p_i}) u_n(p) = ⟨ϕ(f_1); …; ϕ(f_n)⟩. It is n-linear.
- S_{n,ε}(F) := Σ_p F(x_{p_1},…,x_{p_n}) ⟨φ_{p_1}⋯φ_{p_n}⟩ (moments). For F = Π_i f_i(x_i): S_{n,ε}(F) = ⟨Π_i ϕ(f_i)⟩.
- ‖F‖_m := max_{|α|≤m} sup |∂^α F|. D_n := C^∞ functions on T^{4n} flat on all diagonals.
- N(f) := max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1) for f ∈ C¹(T⁴) (the C¹ norm of SOURCES_D4D5 §5.1). ρ(x) := min_{i<j} |x_i − x_j| (torus distance).
- B_K is left out, as in ASSEMBLY §0. If inserted, it gives a factor B^n, absorbed in C^n.

## 1. The hypothesis (S), stated precisely

(S) (superseded 2026-10-28 by (S′)) [hypothesis, owned by (B-S): D2/D3/D3R/D4]. There are constants η > 0, a ∈ [0, 1[, C_S < ∞ and K_0 such that the following holds. Let K ≥ K_0, n ≥ 2, σ ∈ [16ε, ℓ/8]. Let f_1, …, f_n ∈ C¹(T⁴) be REAL, with dist(supp f_i, supp f_j) ≥ σ for all i ≠ j and min_i diam(supp f_i) ≤ σ. Then
  |κ_n(f_1, …, f_n)| ≤ (C_S σ^{−a})^n (n!)^{1+η} Π_i N(f_i).
(S′) [SOURCES_D4D5 §5.1, SOURCES_B21_S_PRIME §2.4; PROVED relative to S1(b), (FX) with ℓ-free constants, and an ℓ-free trajectory g]. Same hypotheses, σ ≥ 16ε with no upper limit:
  |κ_n(f_1, …, f_n)| ≤ (C_S′ max(1, σ^{−a}))^n (n!)^{1+η} Π_i N(f_i),   C_S′ = 16C_AC_1C_BC_2C_η, ℓ-free.
(S′) = (S) for σ ≤ 1. The bridge below uses rungs up to σ_3 = ℓ/32; see the note in §4.4.

Where each part comes from.
1. Gevrey order 1 + η, uniform in ε: SOURCES_D4D5 §5.1 (Lemma C given S1 and (FX)), not D3R §4.1. The order 1 + η needs (FX2) with the coarsest-scale radius; otherwise the order is ≤ 2 + η (FX §6.3(c)) and D > 2 below. The old order 2 + η is SOURCES_D3R §4.1 [V]: "|cumulant_n| ≤ C(g, δ, r)^n (n!)² e^{O(n log log log n)} ≤ C_ε(g, δ, r)^n (n!)^{2+ε} for every fixed ε > 0, uniformly in the lattice cutoff." (D3R's ε is the η here.)
2. Dependence on the separation: SOURCES_D3R §4.3(d) [V]: "C(g, δ, r)^n ≤ C^n (log log(1/δ))^{O(n)}". This is ≤ (C_a δ^{−a})^n for every a > 0 (superseded 2026-10-28 by (S′): ≤ (C max(1, δ^{−a}))^n; the pure power δ^{−a} is not ℓ-free for δ > 1, SOURCES_B21_S_PRIME §1). So any a > 0 is allowed; a < 1 is all that §4 uses.
3. Dependence on f through N(f). Only C¹ enters (SOURCES_D2 l. 44; the C⁵ jet of W is not needed for separated supports, D2 §5.2). By n-linearity, κ_n(f_1,…,f_n) = Π_i λ_i · κ_n(f_1/λ_1, …) with λ_i = 2N(f_i): the gradient radius of (FX2) is ρ_1/2, so one factor 2 suffices (UN1_VERIFY item 2). Disjoint supports keep the polydisc in the (FX2) domain (SOURCES_UN1 §2.4). The cost is 2^n, inside C_S^n; it is K- and h-independent, and s and D do not change.
4. Volume factor. The bound comes from |log Z − W| ≤ E_+|T_η| (SOURCES.md Corollary), with fixed torus volume ℓ⁴. It does not depend on the size of the supports. ℓ⁴ is absorbed in C_S. (superseded 2026-10-28: no volume factor; Lemma C does not use |log Z − W| ≤ E_+|T_η| (INFINITE_VOLUME_IV12 §2.4, IV12_VERIFY §7). C_S′ is ℓ-free given (FX) and S1 with ℓ-free constants (Lemma C′, SOURCES_D4D5 §4.1).)
5. Lower limit σ ≥ 16ε. D3 (iv)(G1) uses physical separation δ at scales Mλ_m ≳ δ. Below a few lattice spacings this is not claimed. The fine region ρ ≲ ε is handled without (S), in §4.4.

What (S) does NOT say. It is lossy for small bumps: a unit-amplitude bump of side h has N ~ h^{−1}, while its true field is O(g²). This loss is polynomial in 1/h, and flatness of F pays for it (§4.3).

## 2. The key estimate near a diagonal, and the flatness lemma

### 2.1 Check of "order 4 vanishing is enough" [derived: it is NOT enough]
The brief proposes: the n-point function has the singularity |x − y|^{−8} at a pair diagonal; F vanishes to order 4 there; the product |x − y|^{−4} is integrable in 4 dimensions. The last step is false. In R⁴, ∫_{|z|<1} |z|^{−4} d⁴z = 2π² ∫_0^1 r^{−1} dr = ∞. The divergence is logarithmic. On the lattice it is cut at |z| ~ ε, so the tree-level bound grows like log(1/ε). This is not uniform in ε.
- Vanishing to order k gives |z|^{k−8}. This is integrable in 4D iff k − 8 > −4, i.e. k ≥ 5.
- Order 4 is borderline. The running coupling g(|z|)⁴ ~ (β log(1/|z|))^{−2} would make ∫ dr / (r log²(1/r)) finite. That uses the asymptotics of Theorem 1.4(ii), which is not proved (ASSEMBLY_VERIFY §6). So it is not available here.
- Consequence. Order 4 is not the right threshold. D_n is flat (all orders), so this costs nothing: the proof below uses vanishing to order N = 11n.
- Also: the proof does not use the true |x − y|^{−8} singularity. Hypothesis (S) gives only the lossy bound h^{−5} per bump of side h. The flatness order needed is set by that loss and by the cube count, not by the exponent 8.

### 2.2 Lemma T (flatness gives a power of ρ) [proved here]
Let N ≥ 1 and F ∈ C^N(T^{4n}). Assume ∂^α F = 0 on every diagonal for |α| ≤ N − 1. Then for |β| ≤ N and every x with ρ(x) < ℓ/4:
  |∂^β F(x)| ≤ (2ρ(x))^{N−|β|} ‖F‖_N.
Proof. Pick i < j with |x_i − x_j| = ρ(x). Let y be x with x_i, x_j both replaced by their midpoint (along the short geodesic). Then y lies on the diagonal {x_i = x_j}, and x − y changes only the 8 coordinates of x_i, x_j. The two changed blocks have Euclidean length ρ/2 each, so |x − y|_2 = ρ/√2 and ‖x − y‖_1 ≤ √8 · ρ/√2 = 2ρ. Put G := ∂^β F. All derivatives of G of order < N − |β| vanish at y. Taylor's formula with remainder along the segment from y to x, order q := N − |β|:
  |G(x)| ≤ (1/q!) sup_t |((x − y)·∇)^q G| ≤ (1/q!) ‖x − y‖_1^q max_{|γ| = q} sup |∂^γ G| ≤ (2ρ)^q ‖F‖_N. ∎
The factor 1/q! is dropped. It is not needed.

### 2.3 Lemma P (packing) [proved here]
Let δ ≤ ℓ/8 and x ∈ T^{4n} with ρ(x) ≥ δ/2. Then for each i, #{j : |x_j − x_i| ≤ δ} ≤ 625 (j = i included).
Proof. The balls B(x_j, δ/4) are pairwise disjoint and lie in B(x_i, 5δ/4). Volume ratio (5δ/4 ÷ δ/4)⁴ = 625. ∎

## 3. Step 1: smooth Whitney decomposition of T^{4n} minus the diagonals [proved here]

### 3.1 Smooth partition in the minimum pair distance (VERIFY gap 3)
ρ is not smooth, so do not cut along ρ. Use pair cutoffs. Fix θ ∈ C^∞(R), 0 ≤ θ ≤ 1, θ(t) = 0 for t ≤ 1/2, θ(t) = 1 for t ≥ 1. Scales δ_m := ℓ 2^{−m}, m ≥ 3, so δ_m ≤ ℓ/8. Put
  Φ_m(x) := Π_{i<j} θ(|x_i − x_j| / δ_m).
Each factor is smooth: it is non-constant only where |x_i − x_j| ∈ [δ_m/2, δ_m] ⊂ ]0, ℓ/4[, and there the torus distance is smooth. Φ_m = 1 on {ρ ≥ δ_m}, Φ_m = 0 on {ρ ≤ δ_m/2}.
Choose m_1 with δ_{m_1} ∈ [64ε, 128ε[ (possible since ε = L^{−K} and the δ_m are dyadic; m_1 → ∞ as K → ∞). Then on T^{4n}:
  1 = Φ_3 + Σ_{m=4}^{m_1} Θ_m + R,   Θ_m := Φ_m − Φ_{m−1},   R := 1 − Φ_{m_1}.
Supports: Φ_3 ⊂ {ρ ≥ δ_3/2}; Θ_m ⊂ {δ_m/2 ≤ ρ ≤ 2δ_m}; R ⊂ {ρ ≤ δ_{m_1} < 128ε}.

Derivative bound (D) for the cutoffs. Let β = (β_1, …, β_n) with |β_i| ≤ 10 for every i. Then
  |∂^β Φ_m| ≤ (C_θ′/δ_m)^{|β|},   |∂^β Θ_m| ≤ 2(2C_θ′/δ_m)^{|β|},
with C_θ′ := 624 · max(1, max_{q ≤ 20} sup|∂^q_y θ(|y|) | on 1/2 ≤ |y| ≤ 1). No factor depends on n.
Proof. Leibniz: assign each of the |β| unit derivatives to one pair factor (i, j) that contains the differentiated variable. A factor with zero derivatives is bounded by 1. A factor that receives derivatives is non-constant only if |x_i − x_j| ≤ δ_m. On supp Φ_m all pairs have |x_i − x_j| ≥ δ_m/2. By Lemma P, each i has ≤ 624 such partners j. So the number of non-zero assignments is ≤ 624^{|β|}. A factor (i, j) receives ≤ |β_i| + |β_j| ≤ 20 derivatives, each costing 1/δ_m and a constant ≤ max_{q≤20}|θ-derivative|. ∎
Remark. Without Lemma P the count is (n − 1)^{|β|} ≤ (n−1)^{10n}. That would add 10 to D. Packing removes it.

### 3.2 Cubes (the Whitney cells)
At scale m put h_m := δ_m/64. Tile T⁴ by Q_m := (ℓ/h_m)⁴ = (64 · 2^m)⁴ closed cubes c of side h_m. Fix a smooth partition of unity Σ_c χ_c = 1 on T⁴, with supp χ_c ⊂ c′ (the concentric cube of side 2h_m) and |∂^α χ_c| ≤ C_χ^{|α|} h_m^{−|α|} for |α| ≤ 10 (translates of one rescaled profile; C_χ fixed). For a tuple c = (c_1, …, c_n) put χ_c(x) := Π_i χ_{c_i}(x_i).
Pieces: G_{m,c} := F · Θ_m · χ_c (and G_{3,c} := F Φ_3 χ_c at m = 3). Then F = Σ_m Σ_c G_{m,c} + F R, an exact finite identity. S_{n,ε} is linear, so
  S_{n,ε}(F) = Σ_{m=3}^{m_1} Σ_c S_{n,ε}(G_{m,c}) + S_{n,ε}(F R).
Count: at most Q_m^n = (64 ℓ/δ_m)^{4n} tuples at scale m.

### 3.3 Separation of the cells in a live tuple
Let c″_i be the concentric cube of side 3h_m (diameter 6h_m). Suppose G_{m,c} ≢ 0. Then some x ∈ Π c′_i has ρ(x) ≥ δ_m/2. For y_i ∈ c″_i, y_j ∈ c″_j: |y_i − y_j| ≥ δ_m/2 − 2 · 6h_m = δ_m(1/2 − 12/64) > δ_m/4. So dist(c″_i, c″_j) ≥ σ_m := δ_m/4 ≥ 16ε for m ≤ m_1. This is the separation (S) needs.

### 3.4 Size of a piece (uses Lemma T)
Put M(G) := max_{β: |β_i| ≤ 6 ∀i} h_m^{|β|} sup|∂^β G|. Let N ≥ 6n. Then for 4 ≤ m ≤ m_1:
  M(G_{m,c}) ≤ C_G^n 4^N δ_m^N ‖F‖_N,   C_G := 2 · 3^{10} · max(1, 2C_θ′, C_χ)^{10}.
Proof. Leibniz over three factors: ≤ 3^{|β|} terms. On the support ρ ≤ 2δ_m < ℓ/4, so Lemma T gives |∂^{β′}F| ≤ (4δ_m)^{N−|β′|}‖F‖_N (|β′| ≤ 6n ≤ N). (D) and the χ-bounds give the rest. With h_m ≤ δ_m: h^{|β|}(4δ)^{N−|β′|}(2C_θ′/δ)^{|β″|}(C_χ/h)^{|β‴|} ≤ 4^N δ^N max(1,2C_θ′,C_χ)^{|β|}. And |β| ≤ 6n. ∎
At m = 3 there is no Taylor gain and none is needed: M(G_{3,c}) ≤ C_G^n ‖F‖_{6n}.

## 4. Steps 2–3: product expansion on each tuple, and the sum [proved here, given (S)]

### 4.1 Fourier expansion on a box (VERIFY gap 2: derivatives for the Fourier sum)
Fix a live tuple c at scale m, h = h_m, G = G_{m,c}. Let B_i be the concentric cube of c_i of side 4h, viewed as a torus (opposite faces identified), with corner a_i. supp G ⊂ Π c′_i, and c″_i ⊂ B_i. So G extends to a smooth function on Π B_i. Its Fourier series
  G(x) = Σ_{k ∈ (Z⁴)^n} γ_k Π_i e_{k_i}(x_i),   e_q(y) := exp(2πi q·(y − a)/(4h)),
holds on Π B_i. Coefficient bound: with L_i := 1 − (4h/2π)² Δ_{x_i}, L_i e_{−q} = (1 + |q|²) e_{−q}. Integrate by parts three times in each block (6 derivatives per block; 2s′ − 1 > 4 forces s′ = 3):
  |γ_k| Π_i (1 + |k_i|²)^3 ≤ sup |Π_i L_i^3 G| ≤ C_L^n M(G),   C_L := (1 + 4(2/π)²)^3 ≈ 18.
(Expand L_i^3; each Δ^q has 4^q monomials of order 2q, coefficient (4h/2π)^{2q}; order ≤ 6 per block, as M(G) allows. The earlier value ≈ 11.2 for the fifth power was a numerical slip; it is ≈ 125.)
Product form. Let ψ_i ∈ C^∞_c(c″_i), ψ_i = 1 on c′_i, |∂^α ψ_i| ≤ C_ψ h^{−|α|} for |α| ≤ 1. Each c″_i has diameter 6h_m, so D/σ_m = (6δ_m/64)/(δ_m/4) = 3/8 ≤ 1 and min diam ≤ σ_m holds, as (S) requires. Then for ALL x ∈ T^{4n}:
  G(x) = Σ_k γ_k Π_i g_{i,k_i}(x_i),   g_{i,q} := ψ_i e_q (supported in c″_i).
Check: if some x_i ∉ c″_i, both sides are 0. If x ∈ Π c″_i, the right side is Πψ_i(x_i) · G(x) = G(x), since G = 0 off Πc′_i and ψ = 1 on c′_i. No wraparound because c″_i ⊂ B_i.
The series converges absolutely and uniformly (Σ_k Π(1+|k_i|²)^{−3} < ∞). The lattice sum in S_{n,ε} is finite. So
  S_{n,ε}(G) = Σ_k γ_k ⟨Π_i ϕ(g_{i,k_i})⟩.

### 4.2 Complex modes vs real sources (VERIFY gap 1)
(S) is for real sources. Write g_{i,q} = g^R + i g^I with g^R := ψ_i cos(2πq·(y−a)/4h), g^I := ψ_i sin(…). Both are real, supported in c″_i, and N(g^{R,I}) ≤ C_ψ′ (1 + |q|)^5 h^{−5} (Leibniz, h ≤ 1); in the (U)-weighted norm N_U(g^{R,I}) ≤ (2/ρ_1) C_ψ′ (1 + |q|)^5 h^{−5}, the 1/ρ_1 weight being h-independent (§1 item 3). Real and imaginary parts are rescaled separately. By complex multilinearity of the moment,
  ⟨Π_i ϕ(g_{i,k_i})⟩ = Σ_{ω ∈ {R,I}^n} i^{#{i: ω_i = I}} ⟨Π_i ϕ(g_i^{ω_i})⟩.
That is 2^n real moments. (A real cos/sin basis gives the same count.)

### 4.3 Moments of real separated sources (Lah sum, step 4 of the brief)
For real f_i with supports pairwise ≥ σ apart: ⟨Πϕ(f_i)⟩ = Σ_π Π_{B∈π} κ_{|B|}(f_B). Singleton blocks give 0 (centred). Each block keeps pairwise separation ≥ σ. By (S):
  |⟨Πϕ(f_i)⟩| ≤ (C_S σ^{−a})^n Π N(f_i) Σ_π Π_B (|B|!)^{1+η} ≤ (C_S σ^{−a})^n (n!)^η Σ_π Π_B |B|! · Π N(f_i) ≤ (2 C_S σ^{−a})^n (n!)^{1+η} Π N(f_i).
Used: Π_B (|B|!)^η ≤ (n!)^η; Σ_π Π_B |B|! = Lah number sum = Σ_k C(n−1,k−1) n!/k! ≤ 2^{n−1} n!.

### 4.4 Bound per tuple, per scale, and the sum over scales
Per tuple (σ = σ_m = δ_m/4):
  |S_{n,ε}(G_{m,c})| ≤ Σ_k |γ_k| · 2^n (2C_Sσ_m^{−a})^n (n!)^{1+η} Π_i C_ψ′ ρ_1^{−1} (1+|k_i|) h_m^{−1}
                    ≤ (4 C_L C_S C_ψ′ ρ_1^{−1} Z)^n σ_m^{−an} h_m^{−n} (n!)^{1+η} M(G_{m,c}),
  Z := Σ_{q ∈ Z⁴} (1 + |q|)(1 + |q|²)^{−3} < ∞ (terms ~ |q|^{−5}, summable in 4D).
Per scale, 4 ≤ m ≤ m_1 (count (64ℓ/δ_m)^{4n}, h_m = δ_m/64, §3.4):
  Σ_c |S_{n,ε}(G_{m,c})| ≤ C_1^n 4^N (n!)^{1+η} δ_m^{N − (5+a)n} ‖F‖_N,
  C_1 := 4 C_L C_S C_ψ′ ρ_1^{−1} Z C_G · 64^{5} · 4^a · max(1, ℓ)^4.
Exponent count: δ^{−4n} (cells) · δ^{−n} (bump derivative) · δ^{−an} (separation constant) · δ^{N} (flatness). The 1/ρ_1 weight of N (§1 item 3) sits in C_1: a C^n price with no power of δ. It does not change s or D.
Choose N = 6n. Then N ≥ 6n (needed by §3.4 and §4.1) and p := N − (5+a)n = (1 − a)n > 0 for a < 1. With δ_m = ℓ2^{−m}:
  Σ_{m=4}^{m_1} δ_m^p ≤ (ℓ/16)^p Σ_{j≥0} 2^{−jp} ≤ (1 − 2^{−(1−a)})^{−1} max(1, ℓ)^n.
This is uniform in m_1, i.e. in ε. Scale m = 3: (64·8)^{4n}(4C_LC_SC_ψ′ρ_1^{−1}Z)^n (ℓ/32)^{−an}(ℓ/512)^{−n}(n!)^{1+η}C_G^n‖F‖_{6n} = C^n (n!)^{1+η}‖F‖_{6n}.
Note (2026-10-28, (S′); SOURCES_B21_S_PRIME §3.1, VERIFY §3). With (S′), σ_m^{−an} per tuple becomes max(1, σ_m^{−a})^n. Rungs δ_m ≤ 4 are unchanged. Rungs δ_m > 4 carry δ_m^{N−5n} = δ_m^n instead of δ_m^{(1−a)n}; their sum is ≤ 2(ℓ/16)^n ≤ 2max(1, ℓ)^n. At m = 3 the factor (ℓ/32)^{−an} becomes 1. The bound max(1, ℓ)^n is unchanged; the ℓ-dependence moves from C_S (∝ ℓ^a, hidden) to this explicit factor. Theorem N1 keeps its form on a fixed torus.

### 4.5 The lattice region R (ρ < 128ε), without (S)
|⟨φ_{p_1}⋯φ_{p_n}⟩| ≤ 2^n. There are ≤ (6(ℓ/ε)⁴)^n plaquette tuples. On supp R, ρ < 128ε, and Lemma T with β = 0 gives |F R| ≤ (256ε)^N ‖F‖_N. So
  |S_{n,ε}(F R)| ≤ (12 ℓ⁴)^n ε^{−4n} 256^N ε^N ‖F‖_N ≤ (12ℓ⁴ 256^{6})^n ‖F‖_{6n}   (ε ≤ 1, N = 6n ≥ 4n).
Coincident plaquettes p_i = p_j give x_{p_i} = x_{p_j}, where F = 0 (flat). They are included in the count anyway.

## 5. Step 4: collect the constants; the result; check against the OS condition

### 5.1 Theorem N1 [proved here, given (S)]
Assume (S) with constants (η, a, C_S), a < 1. Then for all K ≥ K_0, n ≥ 1, F ∈ D_n:
  |S_{n,ε}(F)| ≤ C_*^n (n!)^{1+η} ‖F‖_{6n},
with C_* depending on η, a, C_S, ℓ, θ, χ, ψ only (not on K, n, F).
Proof. n = 1: S_1 = 0 (centred). n ≥ 2: add §4.4 (scales 3 … m_1) and §4.5 (region R), with N = 6n. ∎
Corollary ((H-U)). (n!)^η ≥ (n/e)^{ηn}, so C_*^n ≤ A_η (n!)^η with A_η := sup_n (C_* e^η n^{−η})^n < ∞. Hence
  |S_{n,ε}(F)| ≤ A_η (n!)^{1+2η} ‖F‖_{6n}.
(S) holds for every η > 0 (with C_S = C_S(η), D4D5 §5.1). So (H-U) holds with s = 6 and any fixed D > 1. Fallback (order 2 + η, i.e. no coarsest-scale (FX2) radius; or only the old D3R §4.1 form): the same proof gives (n!)^{2+2η}, s = 6, D > 2.

### 5.2 The resulting D and s_n
- D = 1 + 2η for any η > 0 (D = 2 + 2η under the fallback); e.g. D = 3/2. Increment from the bridge: 0 in the exponent of n!. The bridge costs only C^n: cells (64ℓ/δ)^{4n} paired with δ^N, cutoff derivatives C^n (Lemma P removes the (n−1)^{10n} that a naive Leibniz count gives), Fourier sum Z^n, real/imag 2^n, Lah 2^{n−1}.
- This corrects D3R §4.3(c), which expected the bridge to "add its own factors (n!)^c".
- s_n = 6n. With C¹ dependence the Fourier step needs 2s′ − 1 > 4, so 6 derivatives per block, and the scale sum needs N > (5 + a)n (HHIST_N1_VERIFY claim 6). N = 6n meets both for a < 1, so s = 6 exactly on this count. With N = 6n the scale sum is Σ_j 2^{−j(1−a)n} ≤ (1 − 2^{−(1−a)})^{−1}.
- Where the 6 comes from: 4 (cells per point in 4D) + 1 (the one derivative in N(f)) + a (separation constant) for the scale sum; 6 derivatives per block for the Fourier coefficients.

### 5.3 Check against the quoted OS condition
Template, reports/o3_continuum.txt lines 4995–4997 [V]: "The linear growth condition requires a bound |Sn (F )| ≤ σn |F |sn with fixed s and σn ≤ A(n!)D for fixed A, D." Theorem N1 gives s = 6 (fixed), σ_n = A_η (n!)^{1+2η} (A, D fixed; D > 2 under the fallback). On T⁴ the weighted Schwartz seminorm is replaced by ‖·‖_{sn} (ASSEMBLY §2.5). So the condition, in the torus form the project uses, holds. The test class is the one quoted at lines 4997–4998 [V]: "Restricting to Schwartz tests flat on the coincidence diagonals (all derivatives vanish whenever xi = xj )". OS II itself is not re-read [cited through the template].

## 6. Honest ledger

Proved here, given (S): Lemma T (flatness ⇒ ρ^{N−|β|}); Lemma P (packing ≤ 625); cutoff bound (D) with no n-dependence; the exact decomposition of §3.2; cell separation ≥ δ/4; Fourier product expansion with coefficient bound C_L^n M(G); real/imag split (2^n); Lah sum; scale sum uniform in ε; lattice region without (S). The three VERIFY item-5 gaps (complex modes, Fourier-sum derivatives, smooth min-distance partition) are closed by §4.2, §4.1, §3.1.

Refuted from the brief: "order-4 vanishing gives an integrable |x − y|^{−4}". It gives a log divergence in 4D (§2.1). Order ≥ 5 is needed even with the true |x − y|^{−8} singularity; the lossy proof here uses order 11n. D_n is flat, so the theorem is not affected.

Hypothesis, not proved here: (S). Its parts and their status in the sources:
1. Gevrey (n!)^{1+η} [aligned 2026-10-28; 1+η (2+η under the fallback) [aligned 2026-10-28] only under the fallback], uniform in ε: D3R §4.1, "proved, given the per-term bounds of D3 (iv)". Those bounds use the propagation of holomorphy through every RG operation, which D3 marks [reduced] (an assumption, SOURCES_D2_VERIFY V7). D3 Theorem itself (the sourced large-field step) is a target, not proved (D3 §1.3).
2. Separation constant C(σ)^n ≤ C^n (log log 1/σ)^{O(n)}: D3R §4.3(d), "proved as a count". I use only the weaker σ^{−a}, a < 1.
3. Validity down to σ = 16ε. Not checked in D3 (G1), which argues at scales Mλ_m ≳ δ. Fallback [derived here]: if (S) holds only for σ ≥ ε^θ (some θ ∈ ]0, 1]), stop the scales at δ ~ 4ε^θ and treat {ρ < 4ε^θ} as in §4.5: the bound is C^n ε^{θN − 4n}‖F‖_N, bounded for N ≥ 4n/θ. Then s = max(11, ⌈4/θ⌉ + 1). So any power-law threshold suffices; only a threshold independent of ε (σ ≥ σ_0 > 0) would not.
4. Multilinear form in N(f) with five derivatives: follows from the F_r bound by scaling (§1 item 3). If the true dependence is only on ‖f‖_∞ and ‖∇f‖_∞ (D2 uses only C¹, SOURCES_D2 line 44), the exponent 5n drops to n and s drops to about 6.
5. Volume factor: ℓ⁴, independent of support sizes (from |log Z − W| ≤ E_+|T_η|). Not re-derived.
Minor: for ℓ > 512 the top-scale cells have h > 1, so N(g) carries max(1, h^{−1}); this changes constants only. B_K omitted (bounded, ASSEMBLY §0).

What N1 does not give. The bound is uniform but lossy (each bump costs h^{−5}, true size O(g²)). It gives no information on the limit beyond (OS0) via ASSEMBLY §2.4–2.5. It does not use the e^{−κd} decay directly; that decay is inside (S).

Status change proposed for ASSEMBLY §2.3: (B-N1) from [open] to [derived, unverified, given (S)], with s = 6 (D > 1; D > 2 under the fallback) [aligned 2026-10-28], D any > 2. Needs an independent verifier before it is load-bearing.

Change log 2026-10-28: §1 (S) marked superseded and (S′) added; item 2 → max(1, δ^{−a}); stale ℓ⁴ item 4 marked superseded; §4.4 note on rungs δ_m > 4 under (S′) (SOURCES_B21_S_PRIME, VERIFY).
