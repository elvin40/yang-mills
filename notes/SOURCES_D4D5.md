IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_D4D5 — D4 (RP and lattice symmetry transfer) and D5 (assembly of (S))

Status: complete draft (2026-10-27), Claude (Opus 5.5), unverified. Ledger §6.
Inputs: SOURCES.md (D4, D5 work plan), SOURCES_D2/D2C/D3/D3R/D3W8 and VERIFY files, ASSEMBLY.md, ASSEMBLY_VERIFY.md, ASSEMBLY_N1.md, SOURCES_HHIST_N1_VERIFY.md.
Tags: [V] checked against a file in this folder this session; [cited] standard, text not here; [proved] full argument here; [reduced] reduced to a named earlier result; [open] not done.
Naming. SOURCES.md §4 numbers the work items differently (its D4 = derivative bounds, its D5 = RP/symmetry). This file uses the caller's numbering: D4 = (E14-e) RP and symmetry transfer; D5 = assembly of (S).
Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 1. D4, part A: the RG computes the integral; RP is a property of the measure

### 1.1 Objects
- μ_ε = Z_ε^{−1} exp(−g_0^{−2} Σ_p P_p(U)) Π_b dU_b on T_ε, ℓ even, L odd (ASSEMBLY §0).
- Sourced weight, f: T⁴ → C: Z_ε[f] := ∫ Π_b dU_b exp(−Σ_p (g_0^{−2} − f(x_p)) P_p(U)). This is a finite-dimensional integral of an entire function of the finitely many numbers f_p := f(x_p) over a compact set. So Z_ε is entire in (f_p), and Z_ε[f] > 0 for real f. [proved]
- For real f the sourced measure μ_ε^f := Z_ε[f]^{−1} exp(−Σ_p (g_0^{−2} − f(x_p))P_p) Π dU_b is a probability measure. It is positive for every real f, not only for ‖f‖_∞ < g_0^{−2}, because exp(·) > 0. (D3 (ix) proves the harder fact that the INTERMEDIATE RG densities stay positive; the bare statement needs nothing.) [proved]
- Cumulants: κ_n(f_1, …, f_n) = ∂_{t_1}⋯∂_{t_n} log Z_ε[Σ_i t_i f_i] |_{t=0} = ⟨ϕ(f_1); …; ϕ(f_n)⟩_{μ_ε} (ASSEMBLY_N1 §0). Defined by μ_ε alone, because Z_ε[0] > 0 and log Z_ε is real-analytic near f = 0.

### 1.2 Lemma D4.1 (exactness: the RG is a computation) [proved, given that the construction is well defined]
Statement. Let the sourced construction of D2/D3 (with D3R, D3W8) be well defined for a real f ∈ F_r, i.e. all inductive bounds hold, so every step below makes sense. Let Z^{RG}_ε[f] be its output: 𝒩_K · e^{−W_K[f]} · I_K[f] (§3.1 below). Then Z^{RG}_ε[f] = Z_ε[f]. If the construction is also well defined and holomorphic on a connected open set Ω of complex f (in the variables f_p) that contains a real open set, then Z^{RG}_ε = Z_ε on Ω.
Proof. Each operation of the construction is an identity of integrals:
 (a) Gauge fixing (CMP 109 (0.15)–(0.16); adapted local weight, D3 (vi)): insert 1 = ∫ Π_y dg_y Π_y φ_y(g_y)/z_y, with z_y := ∫ φ_y ≠ 0, then change variables U → U^g. Haar invariance and gauge invariance of the integrand make this exact for any integrable weight with z_y ≠ 0. For real f, φ_y > 0 (D3 (vi)(b)); for complex f in the strip, z_y ≠ 0 (D3 (vi)(c)). Balaban's tree gauge in R (B8) is a δ-function gauge, also exact.
 (b) Block averaging (CMP 109 (0.17), (0.19); OCR of (0.17) garbled, form not re-read on the image): the new variable V is tied to the averaged field Q(U) by a δ-function on the group, and ∫ dV δ(V, Q(U)) = 1 for every U (Haar measure). The normalization N_k is "the same integral … but with V = 1" (CMP 109, text after (0.17) [V, text layer]), a number, kept at f = 0 (D2 §5.1). Exact.
 (c) Small/large field split: Σ of characteristic functions = 1 (CMP 119 (2.17)–(2.22)). Thresholds are reference values (D3 (L0)), so this partition does not depend on f. Exact.
 (d) Background-field change of variables, Gaussian integration: exact changes of variables; Jacobians and normalizations are kept in the density or in the f-independent constants 𝒩_K (kept at f = 0, D2 §5.1).
 (e) Cluster and Mayer expansions: absolutely convergent series equal to the integrals they expand (convergence is part of "well defined").
 (f) R operation: CMP 122 I (0.4), quoted in SOURCES.md (E14-e) [V there]: "∫dV (Rρ)(V) = ∫dV ρ(V)". Exact.
 (g) Moves of terms into W_K, e_k^f, E, R, B: bookkeeping; the sum is unchanged.
So Z^{RG}_ε[f] = Z_ε[f] for real f in the domain of definition. For complex f: both sides are holomorphic on Ω and agree on a real open subset of the totally real space R^{#p} ∩ Ω; by the identity theorem in several variables they agree on Ω. ∎
Consequence. Every bound proved through the construction (for example (S)) is a bound on derivatives of log Z_ε, a function fixed by μ_ε. Two constructions with different block anchors, trees, or cube partitions compute the same function. So a bound proved with any one of them holds, with that construction's constants.

### 1.3 Lemma D4.2 (RP is a property of μ_ε) [lattice part cited; the rest proved]
Statement. For every ε (ℓ even), every reflection θ_ε of T_ε in a link plane, and every Φ in the algebra A_+ of functions of the links in the positive half Λ_+: ⟨ΘΦ · Φ⟩_{μ_ε} ≥ 0.
Proof. Osterwalder–Seiler 1978 for the Wilson action with β = g_0^{−2} ≥ 0, periodic two-seam form; ASSEMBLY §2.7 [cited, not re-read; ASSEMBLY_VERIFY line 39–40 records the link-plane / site-plane status]. ∎
What the statement uses: only β ≥ 0, the product Haar measure, and the plaquette form of the action. It uses no property of g_0(ε) beyond g_0 > 0, no RG input, and no bound.
The OS form for the Schwinger functions is ⟨ΘΦ Φ⟩_ε with Φ = F_0 + Σ_m Σ_p F_m(x_{p_1},…) Π φ_{p_i} (ASSEMBLY §2.7 Step 1). So 0 ≤ Σ_{n,m} S_{n+m,ε}(Θ_εF_n ⊗ F_m) at every ε, exactly, from Lemma D4.2 alone.
Where the RG enters RP: only in the passage ε → 0 (ASSEMBLY §2.7 Steps 2–3). There (H-U) is used twice: (i) to make the seam shift Θ_ε → Θ cost σ_{n+m} · O(nε)‖F‖ → 0; (ii) through the compactness of §2.4, to have limits at all. Positivity itself comes from the lattice and passes by the closed-cone lemma of ASSEMBLY §2.7. So the RG supplies continuity and existence, never positivity.
Remark (not needed). For real f with f ∘ θ_ε = f, μ_ε^f is also RP: the crossing plaquettes have centres on the seam, where f ∘ θ_ε = f leaves their coefficient g_0^{−2} − f(x_p) unchanged, and the O–S character argument needs that coefficient ≥ 0, i.e. f ≤ g_0^{−2} on the seam. Nothing below uses this.

### 1.4 The lemma asked for (D4 in one statement) [proved, given Lemma D4.2's citation]
Lemma D4.3. (i) RP and the lattice symmetries (translations by εZ⁴, the hypercubic group B_4 about a site, permutations, reality) are properties of μ_ε. They hold at every ε, with no hypothesis on the RG. (ii) The RG construction is a way to compute Z_ε[f] (Lemma D4.1). It is used only to prove inequalities on derivatives of log Z_ε. (iii) In the continuum limit, the RG enters RP and the symmetries only through (H-U), as a modulus of continuity and as compactness (ASSEMBLY §2.4, §2.6, §2.7). Proof: §1.2, §1.3, and §2 below. ∎

## 2. D4, part B: lattice symmetries, the block geometry, and the bounds

### 2.1 Symmetries of μ_ε and of the cumulants [proved]
Let G_ε be the group generated by translations τ_a, a ∈ εZ⁴ (mod ℓ), and the hypercubic group B_4 acting about the origin (a site of every lattice L^jεZ⁴, j = 0, …, K). ASSEMBLY §2.6 [proved there, CONFIRMED in ASSEMBLY_VERIFY]: for γ ∈ G_ε, the map U ↦ γU preserves the Haar product measure and every P_p, with P_p(γU) = P_{γ^{−1}p}(U). The same proof with the weight g_0^{−2} − f(x_p) gives Z_ε[f ∘ γ^{−1}] = Z_ε[f] for every f. Hence
  κ_n(f_1 ∘ γ^{−1}, …, f_n ∘ γ^{−1}) = κ_n(f_1, …, f_n),   S_{n,ε}(F ∘ γ^{×n}) = S_{n,ε}(F).
This needs only the measure.

### 2.2 The block geometry is less symmetric than the measure [stated]
The construction uses fixed nested partitions of T_ε into blocks (L odd; a block of scale j is centred at a site of L^jεZ⁴) and M-cubes of side Mλ_j, a tree gauge T_0 in each R operation (B8), and smooth cutoffs φ_j. Let G_geo ⊂ G_ε be the subgroup that maps every partition to itself: translations by Z⁴ (unit lattice) and B_4 about the origin. Translations by L^jεZ⁴ with j < K preserve the partitions of scales ≤ j only. The trees T_0 are not B_4-symmetric in general.
Where the construction uses symmetry. D2 (H2)(vi) asks that each localized term be covariant, V^{(j)}(rX, rU; f ∘ r^{−1}) = V^{(j)}(X, U; f), for lattice symmetries r of T^{(j)} that preserve the scale-j geometry. Balaban uses this kind of covariance for the frozen constant-source theories in the marginal extraction (the marginal term is a multiple of the Wilson action, CMP 119 (2.29) as cited in D2). That is a symmetry of the construction, used inside the proof of the bounds. It is not used for RP or for the symmetries of S_n. The tree gauge breaks B_4 only in the δ-function gauge fixing, and the gauge-fixed integrand is gauge invariant, so the outputs do not depend on the tree (Lemma D4.1(a)).

### 2.3 The subtle point: bounds for translated sources [proved]
Problem. (S) is proved by one construction with one block geometry. A source f translated by a ∈ εZ⁴ \ Z⁴ sits differently relative to the blocks. Is the bound for f ∘ τ_{−a} the same?
Lemma D4.4. Let (S) hold for every admissible tuple (f_1, …, f_n), i.e. every tuple of real C¹ functions with N(f_i) < ∞, pairwise support distance ≥ σ, and support diameters ≤ σ (the class of §5). Then it holds for (f_1 ∘ γ^{−1}, …, f_n ∘ γ^{−1}) for every γ ∈ G_ε, with the same constants.
Proof 1 (by the measure). The admissible class is G_ε-invariant: N(f ∘ γ^{−1}) = N(f) (B_4 permutes and flips the partial derivatives; translations commute with them), and distances and diameters are preserved. By §2.1 the left side of (S) is G_ε-invariant. So the bound for f ∘ γ^{−1} is the bound for f. ∎
Proof 2 (by re-anchoring). Transport the whole construction by γ: blocks, cubes, trees, cutoffs, and kernels are replaced by their images. Because γ preserves Haar measure and the Wilson weights (with f ↦ f ∘ γ^{−1}), every inductive statement for the transported construction at source f ∘ γ^{−1} is the image of the original statement at f. So all constants are equal. By Lemma D4.1 the transported construction computes the same Z_ε[f ∘ γ^{−1}]. ∎
So the constants in (S) are G_ε-invariant, although the construction is only G_geo-covariant. Proof 1 is the one to keep: it shows that no property of the construction is needed. The requirement on the proof of (S) is only that its constants are uniform over the admissible class, in particular over the position of the supports relative to the block grid. §4 checks this: the position enters only through the count of cubes meeting a support, which is bounded by C(1 + D/(Mλ_m))⁴ for every position.

### 2.4 Non-lattice translations and the limit
For a ∈ T⁴ not in εZ⁴, S_{n,ε} is not invariant. ASSEMBLY §2.6 passes to the limit by rounding a to a_i ∈ ε_iZ⁴ and the modulus of continuity |S_{n,ε}(F_a) − S_{n,ε}(F_{a_i})| ≤ 4nσ_n ε‖F‖_{sn+1}, which uses (H-U) [proved there, CONFIRMED]. B_4 needs no limit argument: B_4 about the origin is exact at every ε, because the origin is a site of every lattice (L^{−K} lattices are nested). Rotations outside B_4 are not symmetries of T⁴_ℓ (ASSEMBLY §4).

### 2.5 Two carried remarks
- ℓ even: sufficient for the link-plane two-seam RP on the periodic lattice (N_ε = ℓL^K even). Not necessary; the mixed site/link case is plausible but uncited (ASSEMBLY_VERIFY item 3). Unchanged by D4.
- Thermal state: time is periodic with period ℓ. OS reconstruction from torus RP gives a positive transfer matrix on a Hilbert space over T³_ℓ and the thermal state at inverse temperature ℓ, not a vacuum (ASSEMBLY_VERIFY line 48). D4 adds nothing here. A vacuum needs ℓ → ∞ in the time direction, which needs a mass gap or another uniform input not in this campaign.

### 2.6 D4 ledger
Proved: Lemma D4.1 (exactness; real f, and complex f by the identity theorem given holomorphy of the construction), §2.1 (symmetries of Z_ε[f] and κ_n), Lemma D4.4 (bounds for transported sources, two proofs), Lemma D4.3 (RP and symmetry need no RG input; the RG enters only through (H-U) in the limit).
Cited: Osterwalder–Seiler RP for the periodic two-seam Wilson lattice (not re-read).
Reduced: Lemma D4.1 (a)–(f) rely on Balaban's operations being the identities named there. (b) rests on the text layer of CMP 109 (0.17) (OCR garbled); (f) on CMP 122 I (0.4) quoted in SOURCES.md.
Open: none specific to D4. D4 is complete once (H-U) holds, i.e. once D5 and (B-N1) hold.

## 3. D5, part A: the sourced Theorem 1 at the unit scale, and the missing final expansion

### 3.1 Theorem S1 (sourced Theorem 1; the target of D3 + D3R + D3W8) [target, not proved]
Notation. λ_m = εL^m (λ_K = 1). D_m = polymers of scale m: connected unions of m-cubes (side Mλ_m) of T^{(m)}; |X|_m = number of m-cubes; d_m(X) = Balaban's tree length in units of Mλ_m, so d_m(X) ≥ |X|_m − 1 and diam X ≤ 2Mλ_m |X|_m. R̄_m := 100MR_m with R_m ≤ C_R (log g_m^{−2})^{p_R} (Balaban's growth, as used in D3 (iv) and D3R §4.3(d)). Source class (C¹ only, D2 §1.1): F_r := {f real: ‖f‖_∞ ≤ r, ‖∇f‖_∞ ≤ ρ_1}, lattice gradient in physical units.
Hypotheses. L odd > 11, M large, κ large, γ small (Balaban); reference trajectory 0 < g_j ≤ γ for j ≤ K with increments g_{j−1}^{−2} − g_j^{−2} ≤ C_β (B-T2: Theorem 2 via (B2)/(H2), and Balaban's C_β assumption, SOURCES_HHIST_N1_VERIFY Part 1); r ≤ r_0; ρ_1 ≤ r/(4C_hM) (D3R_VERIFY S7 item 1); 5γ²r ≤ ½ (D3R §5); (Hβ) = (H-hist) + (H-thr) + Lemma E (D3 (viii)); (U); (W4) (SOURCES_W4: proved for the regular step, open for R at radius 2E_0); (Eps) (D3W8 §2.2); thin-strip holomorphy of u_k or its real fallback (D3 §3.1); (I) with the adapted weight (D3 (vi), D2C_VERIFY §1).
Conclusion. For every real f ∈ F_r and every K:
 (a) Representation. Z_ε[f] = 𝒩_K · e^{−W_K[f]} · I_K[f], I_K[f] := ∫ dV_K ρ̂_K^f(V_K), with V_K the unit-lattice variables on T^{(K)} (ℓ⁴ sites), ρ̂_K^f = e^{W_K[f]}ρ_K^f the density of form H_K^{LF} (D3 (1.b)–(1.c)), and 𝒩_K > 0 a product of f-independent normalizations. By Lemma D4.1 this is an identity.
 (b) Contact functional. W_K[f] = Σ_{j≤K} Σ_{X ∈ D_j} w^{(j)}(X; f) (D3 (L5)): w^{(j)}(X; ·) depends on f|_X only, is holomorphic on S_r(X), vanishes at f = 0, and |w^{(j)}(X; f)| ≤ E_0 e^{−κd_j(X)}. Field independent and region independent.
 (c) Activities. The terms E^f, R^f, B^f, e^f of ρ̂_K^f obey (L1)–(L4) of D3 as corrected by D3R §5 and D3W8 §2.6: locality in f|_X; holomorphy on S_r(X) (E-terms) or on S_{τ(X)}(X), τ(X) = c_τ r/(E_0 R̄_m⁴) (R-, B-, e-terms built at scale m); Balaban's bounds with e^{−κd}. Positive and real for real f (L6, D3 (ix) as corrected by D3R §1.4).
 (d) Stability (sourced CMP 122 II (0.1)): χ exp(−A(w_K, U_K) − E_−|T|) ≤ ρ̂_K^f ≤ exp(E_+|T|), constants independent of k, K, f. (|T| read as in SOURCES.md Corollary and ASSEMBLY_N1 §1 item 4; not re-derived here.)
Consequence: Z_ε[f]/Z_ε[0] = e^{−W_K[f]} I_K[f]/I_K[0], since W_K[0] = 0 and 𝒩_K cancels.

### 3.2 Why S1 alone does not give cumulant bounds [proved]
S1 bounds the density pointwise and gives |log I_K| ≤ C|T|. A cumulant bound needs more: mixed derivatives in t_1, …, t_n of log I_K[Σt_if_i], uniformly in ε. Two routes are available from S1, and both fail.
 (i) Global Cauchy at the unit scale (D2 §7.1(ii), D2 §7.3). This needs every f-dependent part of the exponent of I_K to be holomorphic on one polydisc |t_i| ≤ τ with τ independent of ε, and with total change ≤ ½ (Lemma D3.1). The E-terms qualify (radius r, per-cube summability). The R-, B-, e-terms built at a fine scale m do not: their radius τ(X) ∝ R̄_m^{−4} → 0 as ε → 0, because g_m → 0 at the finest scales. Also the Wilson weights w_j inside the large-field integrals T^{(j)} carry P_p = O(1) per plaquette, so the change of the exponent is O(τ) per large-field cube, and the number of large-field cubes in a support is not bounded uniformly in ε (next item).
 (ii) Expected number of fine large-field cubes. Per cube of scale j the only available suppression is Balaban's large-field factor exp(−c p_0(g_j)²), p_0(g) = A_0(log g^{−2})^{p_0} (D3_VERIFY V7). CMP 122 I introduction [V, text layer of balaban/1989_cmp122_large_field_renormalization_I.txt lines 37–41]: "For d = 4 the bare coupling constant behaves asymptotically as (a + b log ε^{−1})^{−1/2} … hence the bound does not give any positive power of ε. It is still small for ε small, and it controls a large number of steps, but this number is a small fraction of the total number of steps." With g_j^{−2} ≈ β_0 log(1/λ_j), the bound per j-cube is exp(−c′(log log(1/λ_j))^{2p_0}), and there are (Mλ_j)^{−4} j-cubes per unit volume. The product → ∞ as λ_j → 0. So the bound gives no ε-uniform control of the number of fine large-field cubes in a fixed support. Any ε-uniform cumulant bound must use that a single large-field cube inside supp f_1 does not contribute to a MIXED derivative in t_1, t_2. That is a locality statement for log I_K, not for I_K.
Consequence. D3 (iv)(G1) and D3R §4.1 use the sentence "a term contributes to a mixed derivative only if X meets ≥ 2 supports". That sentence is true for a sum of local terms. log I_K is a sum of local terms only after a final cluster (Mayer) expansion of the large-field region sums and of the unit-scale integral. S1 does not contain this expansion, and Balaban does not do it (he needs only (0.1)). So D3 (G1) uses one more hypothesis than it states. I name it (FX).

### 3.3 Hypothesis (FX): polymer representation of log I_K [open; new]
(FX) There are polymer families P_m (m = 0, …, K; scale-m polymers, possibly multi-scale, labelled by their coarsest scale m and measured in m-cubes) and activities a_m(Γ; f) such that, for real f ∈ F_r,
  log I_K[f] − log I_K[0] = Σ_{m=0}^{K} Σ_{Γ ∈ P_m} [a_m(Γ; f) − a_m(Γ; 0)],   absolutely convergent,
and:
 (FX1) Locality: a_m(Γ; f) depends only on the values f(x_p) for plaquette centres x_p ∈ Γ.
 (FX2) Local holomorphy: a_m(Γ; f + ζ) is holomorphic in ζ|_Γ on {‖ζ‖_∞ ≤ τ_m(Γ), ‖∇ζ‖_∞ ≤ ρ_1/2}, τ_m(Γ) := c_τ r /(E_0 R̄_m⁴ |Γ|_m), for every real f ∈ F_{r/2}.
 (FX3) Bound: |a_m(Γ; f + ζ)| ≤ E_0 e^{−κ d_m(Γ)} on that set.
 (FX4) Entropy: #{Γ ∈ P_m : Γ contains a given m-cube, |Γ|_m = s} ≤ e^{c_0 s}, with κ ≥ 8c_0 + 8.
Plausibility [guess, not checked]: this is the standard last step of a multiscale cluster expansion. The inputs exist: S1(c) activities are local and holomorphic with the radius in (FX2); large-field regions are local with factors exp(−c p_0(g_j)²) per cube; Lemma D3.1 gives the radius ∝ 1/|Γ| for any positive local integral. SOURCES.md line 221 records that Balaban–Imbrie–Jaffe 1988 set up sourced expansions for the abelian Higgs model and did not finish them ([lit-agent], not re-checked). No YM source does it. Size: comparable to one D3 item; the main work is a polymer representation of the nested T_k operations (CMP 122 I (1.3)–(1.9)) with decoupling between large-field regions.

## 4. D5, part B: the cumulant bound from S1 + (FX), and where the separation enters

### 4.1 Lemma C (cumulants of separated real sources) [proved, given S1(b), (FX), and the coupling bound of S1's hypotheses]
Notation. N(f) := max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1) (C¹ only). Λ_1(σ) := (log(g^{−2} + C_β log_L(2M/σ)))^{p_R}, g = g_K the unit-scale coupling.
Statement. Let K ≥ 0, n ≥ 2, σ > ε, and let f_1, …, f_n be real with pairwise dist(supp f_i, supp f_j) ≥ σ. Let D := min_i diam(supp f_i). Then for every η > 0
  |κ_n(f_1, …, f_n)| ≤ C_A (1 + D/σ)⁴ (1 + log_L(2M/σ)) · (C_B Λ_1(σ)⁴)^n · C_η^n (n!)^{1+η} · Π_i N(f_i),
with C_A, C_B depending on E_0, κ, c_0, c_τ, M, C_R, p_R, L only, and C_η on η, p_R, C_β, L only. None depends on K, on the f_i, or on the position of the supports relative to the blocks.

Proof.
Step 0 (reduction). κ_n is n-linear, so assume N(f_i) = 1. Put f(t) := Σ_i t_i f_i, t ∈ Cⁿ. Because the supports are pairwise > ε apart, every lattice difference f(x + εe) − f(x) involves one f_i only. Hence ‖f(t)‖_∞ ≤ r max|t_i| and ‖∇f(t)‖_∞ ≤ ρ_1 max|t_i|. (This is the only place where σ is compared with ε.)
Step 1 (log Z as a sum of local terms). By S1(a) and (FX): log Z_ε[f(t)] − log Z_ε[0] = −W_K[f(t)] + Σ_m Σ_{Γ ∈ P_m} [a_m(Γ; f(t)) − a_m(Γ; 0)]. κ_n = ∂_{t_1}⋯∂_{t_n} of this at t = 0, term by term (absolute convergence on the polydiscs below, uniform in t).
Step 2 (only polymers meeting every support count). By (FX1), a_m(Γ; f(t)) depends only on the t_i with supp f_i ∩ Γ ≠ ∅ (plaquette centres). If Γ misses supp f_i, the t_i-derivative is 0. Same for w^{(j)}(X; ·) by S1(b). So only Γ (and X) that meet all n supports contribute. Such Γ have diam Γ ≥ σ, so |Γ|_m ≥ σ/(2Mλ_m) and d_m(Γ) ≥ |Γ|_m − 1.
Step 3 (Cauchy on a polydisc whose radius does not depend on n). For |t_i| ≤ ρ_Γ := min(½, τ_m(Γ)/r), Step 0 puts f(t) in the domain of (FX2) around f = 0. One derivative in each of n variables costs ρ_Γ^{−1} each, with no factorial (multi-index (1,…,1)). With (FX3):
  |∂_{t_1}⋯∂_{t_n} a_m(Γ; f(t))|_{t=0} ≤ E_0 e^{−κ d_m(Γ)} (C_4 R̄_m⁴ |Γ|_m)^n,   C_4 := max(2, E_0/c_τ).
For w^{(j)}(X; ·) the radius is ½ (S_r(X)), so the factor is 2^n E_0 e^{−κd_j(X)}.
Step 4 (sum over polymers at one scale). Let i_0 attain D. A contributing Γ contains an m-cube that meets supp f_{i_0}. The number of such cubes is Q_m ≤ (2 + D/(Mλ_m))⁴, for every position of the support relative to the grid. With (FX4), d ≥ s − 1, and κ ≥ 8c_0 + 8:
  T_m := Σ_Γ |…| ≤ E_0 Q_m Σ_{s ≥ s_m} e^{c_0 s} e^{−κ(s−1)} (C_4R̄_m⁴ s)^n ≤ C E_0 Q_m (C_5 R̄_m⁴)^n n! e^{−κ s_m/2},
  s_m := max(1, σ/(2Mλ_m)),  C_5 := 8C_4/(3κ),
using Σ_{s≥1} s^n e^{−3κs/8} ≤ C n! (8/(3κ))^n. This is the only n! in the proof.
Step 5 (coupling at scale m). From S1's hypotheses, g_m^{−2} ≤ g^{−2} + C_β(K − m) = g^{−2} + C_β log_L(1/λ_m). So R̄_m⁴ ≤ (100MC_R)⁴ (log(g^{−2} + C_β log_L(1/λ_m)))^{4p_R}.
Step 6 (coarse scales: 2Mλ_m ≥ σ). Here λ_m ≥ σ/(2M), so R̄_m⁴ ≤ (100MC_R)⁴Λ_1(σ)⁴, Q_m ≤ (2 + 2D/σ)⁴, and there are ≤ 1 + log_L(2M/σ) such scales (λ_m ≤ 1, ratio L). Sum ≤ C E_0 (2 + 2D/σ)⁴ (1 + log_L(2M/σ)) (C_6 Λ_1(σ)⁴)^n n!.
Step 7 (fine scales: 2Mλ_m < σ). Put u := σ/(2Mλ_m) > 1; then s_m ≥ u, Q_m ≤ (2 + 2D/σ)⁴u⁴, and log_L(1/λ_m) = log_L(2M/σ) + log_L u. With log(a + b) ≤ log a + log(1 + b) (a ≥ 1) and (x + y)^q ≤ 2^q(x^q + y^q):
  R̄_m^{4n} ≤ (100MC_R)^{4n} 2^{4p_Rn} [Λ_1(σ)^{4n} + ℓ_2(u)^{4p_Rn}],   ℓ_2(u) := log(1 + C_β log_L u).
The u-values form a geometric sequence u_0L^i. The term ℓ_2(u)^{4p_Rn} e^{−κu/8} is ≤ ℓ_2(n)^{4p_Rn} for all u ≥ 1: for u ≤ n by monotonicity of ℓ_2; for u ≥ n because d/du[4p_Rn log ℓ_2(u)] ≤ 4p_RC_β/(ln L · ℓ_2(n)) ≤ κ/8 there, for κ ≥ κ_1(p_R, C_β, L). The rest, Σ_i u_i⁴ e^{−3κu_i/8}, is ≤ C. So the fine sum is ≤ C E_0 (2 + 2D/σ)⁴ (C_7)^n n! [Λ_1(σ)^{4n} + ℓ_2(n)^{4p_Rn}].
Step 8 (the log-log factor). ℓ_2(n)^{4p_Rn} = exp(4p_Rn log log(1 + C_β log_L n)) ≤ C_η^n (n!)^η for every η > 0, since log log log n = o(log n) and n! ≥ (n/e)^n. This is the source of the η, as in D3R §4.1.
Step 9 (W). Steps 2–7 with R̄_m replaced by 1 and radius ½ give a bound of the same form with no Λ_1 factor.
Adding Steps 6–9 gives the statement. ∎
Range note (added 2026-10-28, SOURCES_B21_S_PRIME_VERIFY §1). As printed, Lemma C is false for σ ≥ 2ML (the Step 6 factor 1 + log_L(2M/σ) is ≤ 0) and undefined for σ ≥ σ_0 := 2M·L^{(g^{−2}−1)/C_β} (Λ_1 not defined; Step 7's a ≥ 1 fails). For σ > 2M, Step 6 has 0 scales.
Lemma C′ (added 2026-10-28; SOURCES_B21_S_PRIME §2.2–2.3, CONFIRMED in its VERIFY §2). Under the hypotheses of Lemma C, for every σ > ε with no upper limit:
  |κ_n| ≤ C_A (1 + D/σ)⁴ (1 + log_L⁺(2M/σ)) (C_B Λ̃_1(σ)⁴)^n C_η^n (n!)^{1+η} Π_i N(f_i),   log_L⁺ := max(0, log_L),   Λ̃_1(σ) := Λ_1(min(σ, 2M)),
with the same C_A, C_B, C_η. For σ ≤ 2M it is Lemma C verbatim. Proof for σ > 2M: Steps 6–7 redone at the true σ; every scale is fine, log_L(1/λ_m) ≤ log_L u, and g ≤ γ < 1 (S1) gives g^{−2} ≥ 1 for the split log(g^{−2} + b) ≤ log g^{−2} + log(1 + b).

### 4.2 Where the separation enters, in units of ε and of the block size [proved]
- In units of ε: only Step 0, σ > ε, so that the lattice gradient of Σt_if_i is a maximum, not a sum. Any σ ≥ 2ε is safe. N1 uses σ ≥ 16ε.
- In units of the block size Mλ_m: the decay factor e^{−κσ/(4Mλ_m)} is active only at scales with 2Mλ_m < σ, i.e. m < m_σ := log_L(σ/(2Mε)). It is needed only to kill the fine-scale growth R̄_m → ∞. At the other scales no decay is used; the coupling is bounded in terms of σ (Step 6).
- At σ = 16ε and M ≥ 8: m_σ ≤ 0, so no scale is fine. Every contributing polymer may sit in one cube of the finest scale; Step 4 counts it. The bound is then C^n Λ_1(16ε)^{4n} n!^{1+η}, with Λ_1(16ε) ~ (log log(1/ε))^{p_R}, which is ≤ (C_a σ^{−a})^n. So uniformity down to 16ε holds and costs only the log-log factor already in D3R §4.3(d).
- The task's picture "supports in different cubes at the finest scale after a fixed number of steps" is not needed. Lemma C does not require the supports to be in different cubes at any scale. What it requires is that S1(c) and (FX2)–(FX3) hold at every scale m ≥ 0, including the first steps, with constants independent of K. S1 claims exactly this; it is not separately checked for the first steps.
- The remaining ASSEMBLY_N1 risk "uniformity of the D3R constants down to separation 16ε" is therefore reduced to: (FX) and S1 at all scales. No threshold condition of the form σ ≥ σ_0 or σ ≥ ε^θ arises.

### 4.3 Comparison with D3 (iv)(G1) and D3R §4.1 [derived; needs a verifier]
- D3 and D3R state Gevrey order 2 + η. Lemma C gives 1 + η for separated, distinct sources. The difference: D2 §8.5 counts a!(|X|/r)^{|a|} for general multi-indices; for κ_n(f_1, …, f_n) with distinct separated f_i the multi-index is (1, …, 1), a! = 1, and the polydisc radius is independent of n by Step 0 (disjoint supports give max, not sum). The only n! is the polymer-size sum of Step 4. Order 2 + η remains a valid weaker statement.
- D3 (G1) and D3R §4.1 assume, without stating it, the locality of log I_K, i.e. (FX) (§3.2).
- D3R §4.3(d) gives the σ-dependence C^n(log log 1/δ)^{O(n)}. Lemma C confirms it as Λ_1(σ)^{4n} and adds two prefactors: (1 + log_L(2M/σ)) (number of coarse scales) and (1 + D/σ)⁴ (cubes meeting the smallest support). For D ≤ σ both are ≤ C_aσ^{−a} for σ ≤ 1; in general (via Lemma C′) they are ≤ C max(1, σ^{−a}) (added 2026-10-28).

## 5. D5, part C: the statement (S), its dependencies, and (H-U)

### 5.1 (S), final form [derived: Lemma C given S1 and (FX)]
(S) (superseded 2026-10-28 by (S′) below) For every η > 0 and a > 0 there is C_S = C_S(η, a) < ∞ (independent of K) such that for all K, n ≥ 2, σ ∈ [16ε, ℓ/8], and real f_1, …, f_n ∈ C¹(T⁴) with pairwise dist(supp f_i, supp f_j) ≥ σ and min_i diam(supp f_i) ≤ σ:
  |κ_n(f_1, …, f_n)| ≤ (C_S σ^{−a})^n (n!)^{1+η} Π_i N(f_i),   N(f) = max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1).
Derivation from Lemma C: (1 + D/σ)⁴ ≤ 16; (1 + log_L(2M/σ)) ≤ C_aσ^{−a} ≤ (C_a′σ^{−a})^n for n ≥ 2 and σ ≤ ℓ/8; Λ_1(σ)⁴ ≤ C_aσ^{−a}. (superseded 2026-10-28 by (S′): on σ > 1 the step ≤ (C_a′σ^{−a})^n needs C_a′ ≥ (ℓ/8)^a, and the corrected left sides do not decay; SOURCES_B21_S_PRIME §1, VERIFY §1.)
(S′) [SOURCES_B21_S_PRIME §2.4; PROVED relative to S1(b), (FX) with ℓ-free constants, and an ℓ-free trajectory g, VERIFY §5]. Same hypotheses as (S), with σ ≥ 16ε and no upper limit on σ:
  |κ_n(f_1, …, f_n)| ≤ (C_S′ max(1, σ^{−a}))^n (n!)^{1+η} Π_i N(f_i).
Derivation from Lemma C′: put m(σ) := max(1, σ^{−a/2}). (1 + D/σ)⁴ ≤ 16; 1 + log_L⁺(2M/σ) ≤ C_1 m, C_1 := sup_{σ>0}(1 + log_L⁺(2M/σ))/m; max(1, Λ̃_1(σ)⁴) ≤ C_2 m, C_2 := sup_{σ>0} max(1, Λ̃_1(σ)⁴)/m. So |κ_n| ≤ (16C_AC_1C_BC_2C_η)^n m^{n+1}(n!)^{1+η}ΠN, and m^{n+1} ≤ m^{2n} = max(1, σ^{−a})^n. C_S′ := 16C_AC_1C_BC_2C_η: no ℓ, no K. (S′) = (S) for σ ≤ 1.
Differences from the (S) of ASSEMBLY_N1 §1: (i) Gevrey order 1 + η instead of 2 + η (the old form is implied); (ii) N is the C¹ norm, not C⁵ (D2 uses C¹ only; the C⁵ jet of W is not needed for separated supports, D2 §5.2 (P3)); (iii) one extra condition, min diameter ≤ σ. ASSEMBLY_N1 meets (iii): its sources live in cubes c″_i of side 3h_m = 3δ_m/64, diameter 6δ_m/64 < σ_m = δ_m/4 (N1 §3.3, §4.1). Without (iii) the factor (1 + D/σ)⁴ stays; it is harmless for N1 but must be carried elsewhere.

### 5.2 (S) ⇒ (H-U) through ASSEMBLY_N1 [reduced to ASSEMBLY_N1 + its VERIFY]
- With (S) as in §5.1, ASSEMBLY_N1 Theorem N1 applies verbatim with 2 + η replaced by 1 + η: the Lah sum gives moments ≤ (2C)^n (n!)^{1+η}Π N (N1 §4.3 with exponent 1 + η: Π_B(|B|!)^η ≤ (n!)^η and Σ_πΠ_B|B|! ≤ 2^{n−1}n!).
- With the C¹ norm: SOURCES_HHIST_N1_VERIFY Part 2 Claim (6) [V, CONFIRMED there]: s = 6 (Fourier needs 6 derivatives per block; scale sum needs N > (5 + a)n; N = 6n works for a < 1).
- Result: (H-U) |S_{n,ε}(F)| ≤ A_η (n!)^{1+2η} ‖F‖_{6n} for F ∈ D_n, any D > 1, s = 6, given S1 and (FX).
- If only the old order 2 + η and C⁵ are trusted: (H-U) with D > 2, s = 11 (ASSEMBLY_N1 §5.1). Both satisfy the OS linear growth condition (fixed s, A, D).
- Constant correction carried: C_L ≈ 123, not 11.2 (HHIST_N1_VERIFY Part 2). No effect.

### 5.3 Dependency list for (S)
(S) holds if all of the following hold. Status from the files read; nothing here upgrades any of them.
 1. Theorem S1 (§3.1) = D3 target with D3R and D3W8 corrections. Its own inputs:
   (a) (Hβ) ⇐ (H-hist) + (H-thr) + Lemma E (D3 (viii)). (H-thr) [open]. (H-hist) reduced to (B2) + (SM) (SOURCES_HHIST); (SM) [open, per-hop Lipschitz constant unsupported, HHIST_N1_VERIFY].
   (b) Reference trajectory g_j ≤ γ and increments ≤ C_β: (B-T2) Theorem 2 with (B2)/(H2) [open; THEOREM2 files], plus Balaban's inductive assumption C_β (CMP 109 p. 264, an assumption, not a proved bound).
   (c) (W4) holomorphy of a step in its inputs: proved for the regular step given Balaban's (C1)–(C5); open for the R operation at radius 2E_0 (SOURCES_W4 header). Used by Lemmas F1, F2′, and by the propagation of the local radius τ(X) (D3 (iv)).
   (d) (Eps): reduced to CMP 109 p. 280 for E-inputs (D3W8 §2.6); extra ε_1 condition 32ε′ ≤ 1 (D3W8_VERIFY S10).
   (e) (I) with the adapted weight: exact in the small-field integral; the only inexactness is the reference thresholds, carried by (H-thr) (D3 (vi)(f), (viii)).
   (f) Thin-strip holomorphy of u_k(c), |u_k′| ≤ 3/2 [open]; or the real-Gevrey fallback for σ_W (D3 §3.1).
   (g) Covariance change C_f^{(k)} and the cluster expansion for it [reduced to (P) and CMP 116 p. 3 by analogy] (D3W8 §1, VERIFY S10 item 2); volume factor on the marginal region only.
   (h) Line-by-line rerun of CMP 122 I–II with the sourced action (D3 W6) [not done]; CMP 122 II pp. 381–392 assumed coupling-free.
   (i) Global (G1), (G2) of ASSEMBLY §3: Balaban's papers correct as published; his inductive assumptions hold uniformly.
 2. (FX) (§3.3) [open; new in this file]. Without (FX), S1 gives no ε-uniform cumulant bound (§3.2).
 3. Constants κ ≥ max(8c_0 + 8, κ_1(p_R, C_β, L)) (Lemma C Steps 4, 7). Balaban takes κ large; the decay constant after his expansions is a degraded κ′. That κ′ must still meet this condition [reduced, not checked].
 4. Growth R_m ≤ C_R(log g_m^{−2})^{p_R} (Balaban's R-growth, as used in D3 (iv), D3R §4.3(d)) [reduced, not re-read here].

## 6. Ledger

Proved here:
- Lemma D4.1: the sourced RG output equals Z_ε[f] (each operation is an identity; complex f by the identity theorem).
- Lemma D4.2/D4.3: RP and the εZ⁴ ⋊ B_4 symmetries are properties of μ_ε at every ε; the RG enters them only through (H-U) in the limit (seam shift, rounding of translations, compactness).
- §2.1: Z_ε[f ∘ γ^{−1}] = Z_ε[f] and κ_n invariance for γ ∈ G_ε.
- Lemma D4.4: (S) for transported sources with the same constants, by measure invariance (no re-anchoring needed), and by re-anchoring.
- §3.2: Theorem S1 alone gives no ε-uniform cumulant bound. Reason: fine-scale radii τ(X) → 0, and the density of fine large-field cubes is not controlled by Balaban's per-cube bound (CMP 122 I intro quote: no positive power of ε).
- Lemma C: given S1(b), (FX), and the coupling bound, |κ_n| ≤ C_A(1 + D/σ)⁴(1 + log_L(2M/σ))(C_BΛ_1(σ)⁴)^n C_η^n (n!)^{1+η} Π N(f_i), uniform in ε, for all σ > ε and any position of the supports.
- §4.2: the separation enters only as σ > ε (lattice gradient) and through the decay at scales with 2Mλ_m < σ. At σ = 16ε no scale needs decay. No threshold σ ≥ σ_0 or σ ≥ ε^θ arises.
- §5.1: (S) with order 1 + η, C¹ norm, and min diameter ≤ σ; ASSEMBLY_N1's cells satisfy the diameter condition.

Reduced to quoted or earlier results:
- Lemma D4.1 (b) on the text layer of CMP 109 (0.17) (OCR garbled), (f) on CMP 122 I (0.4) via SOURCES.md.
- Lattice RP: Osterwalder–Seiler [cited, not re-read].
- (S) ⇒ (H-U): ASSEMBLY_N1 with HHIST_N1_VERIFY Claim (6): s = 6 and any D > 1 (or s = 11, D > 2 with the old form).
- κ large enough after Balaban's degradations; R_m growth law (§5.3 items 3–4).

Open:
- (FX) [new]: polymer representation of log I_K with local, locally holomorphic activities, including the large-field region sums and nested T_k operations. Not in Balaban. D3 (iv)(G1) and D3R §4.1 use it implicitly.
- Everything Theorem S1 depends on (§5.3 item 1): (H-thr), (SM) for (H-hist), (B-T2) Theorem 2 with (B2)/(H2) and C_β, (W4) for R, (Eps) condition, thin-strip holomorphy of u_k, the covariance-change cluster expansion, the CMP 122 rerun (W6).
- S1 at the first steps (j small) is claimed with K-independent constants but is not separately checked; Lemma C needs it.

Corrections proposed to earlier files (those files are not edited):
- D3 (iv)(G1), D3R §4.1: add (FX) as a hypothesis. Gevrey order for distinct separated sources is 1 + η given (FX), not 2 + η; the 2 + η statement stays true.
- D2 §7.3: "each localized term gives (2/r)^n … plus the unit-scale integral" treats localized terms as summands of log Z. They are summands of the exponent of I_K. The statement needs (FX); without it the unit-scale Cauchy fails for fine R-, B-, e-terms and for fine large-field Wilson weights (§3.2(i)).
- ASSEMBLY_N1 §1 item 5 and residual risk: "validity down to σ = 16ε" is resolved by §4.2, given (FX) and S1 at all scales.
- ASSEMBLY_N1 (S): may be weakened to C¹ sources and order 1 + η, with the diameter condition; then s = 6, D > 1.

Verifier targets (highest value first): (1) §3.2, the claim that S1 does not imply cumulant bounds without (FX), and the reading of the CMP 122 I intro quote; (2) Lemma C Steps 0, 3, 4, 7 (radius independent of n; single n!; log-log sup); (3) Lemma D4.1's list of operations against CMP 109 (0.15)–(0.19) and CMP 122 I (0.4) on the page images.

Change log 2026-10-28: §4.1 range note and Lemma C′ added; §4.3 last bullet qualified (σ ≤ 1; max(1, σ^{−a}) in general); §5.1 (S) and its derivation marked superseded, (S′) and its derivation added (SOURCES_B21_S_PRIME, VERIFY).
