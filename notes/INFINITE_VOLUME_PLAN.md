# INFINITE_VOLUME_PLAN — the route from the finite-torus theorem (Target 2) to infinite volume

Date: 2026-10-28 (Opus). Status: PLAN + partial derivations, unverified as a whole. Edits: this file only.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [P] proved here (short, unverified); [V] quoted from a project file or a page image read this session; [I] inference, not printed anywhere; [R] standard result cited from the literature, text not re-read this session.
Inputs read: THEOREM2_PROOF_v4.md §1, §6, §10; ASSEMBLY.md §0–§4; ASSEMBLY_N1.md §0–§3.1; SOURCES_T2_VOL.md (full); TRUST_LEDGER.md §1 rows X1–X5, §4.2; SOURCES_FX.md §6; SOURCES_D4D5.md (grep); SOURCES_T2_KUNIF.md (grep); SOURCES_A15_WHOLE/BDRY (grep); reports/EUCLID_INV_LIT.md §1; PLAN.md (grep "infinite volume", "mass gap"); CMP 122 II pp. 355–356 (page images, 110 dpi, this session).

## 0. Summary

- Target 2 is a fixed-torus statement. Its constants depend on the torus side ℓ, through at least three named places (§3.2). So Target 2 alone gives no infinite-volume limit.
- The compactness route is standard (§2, §3). It needs one new ingredient: Schwinger-function bounds that are uniform in ε AND in ℓ, for test functions with support in a fixed ball.
- The plan below proposes to get that ingredient WITHOUT any infrared control. The proposal is a conditional source bound (CG) at the unit scale, plus positivity of the unit-scale marginal measure (§4.2). [I] This is the one step of new mathematics on the weak-sense route. It is plausibly within reach of the existing sourced chain, because it needs Steps A, C, D of (FX) and not Step B (the unit-scale cluster expansion on the ℓ-torus).
- With (CG), the weak-sense statement (subsequential limit on R⁴; translations, hypercubic group B_4, reflection positivity, regularity, symmetry, nontriviality) follows by the same short arguments as ASSEMBLY §2.4–§2.8. Full O(4) invariance is NOT obtained. It is open even for lattice φ⁴₃ (reports/EUCLID_INV_LIT §1a [V]).
- Uniqueness, clustering, and the mass gap are blocked. The coupling leaves Balaban's window ]0, γ] at a length scale ξ_g ≈ exp((g^{−2} − γ^{−2})/b) unit cells; infinite volume at fixed g reaches every scale above ξ_g. The side quest put the gap between Balaban's γ and any proved strong-coupling regime at ≥ 4.8×10¹⁷ in β (PLAN.md 2026-10-28 MASS_GAP_VERIFY line [V]).

## 1. What Target 2 delivers (fixed torus)

### 1.1 The statement, quoted
ASSEMBLY.md §1.3 [V]: "Let G = SU(2), d = 4, L odd and large, ℓ ∈ 2N fixed. … For K ≥ K_0 let ε = L^{−K} and g_0 = g_0(ε, g) be a shooting solution (Lemma D″) whose effective couplings satisfy g_k ∈ ]0, γ] for 0 ≤ k ≤ K and g_K = g. Assume (H-U). … Then: (a) Compactness. Every sequence K_m → ∞ has a subsequence K_{m_i} such that … the limit S_n(F) := lim_i S_{n,ε_i}(F) exists for every n ≥ 1 and every F ∈ D_n. (b) For every limit family … (OS0) … (OS1) … (OS2) … (OS3)."
The hypothesis (H-U) [V, ASSEMBLY §1.2]: "There are s ∈ N and A, D < ∞ such that for all K ≥ K_0, all n ≥ 1, and all F ∈ D_n: |S_{n,ε}(F)| ≤ σ_n ‖F‖_{sn}, σ_n := A (n!)^D." ASSEMBLY_N1 derives it with s = 6 and any D > 1 from (S) [V, ASSEMBLY_N1 header].
(Vol) adds ℓ > 22M (final-scale cells per side), ℓ even [V, SOURCES_T2_VOL §4].

### 1.2 Which objects converge
- Objects. The lattice moments S_{n,ε}(F) = Σ_{p_1…p_n} F(x_{p_1}, …, x_{p_n}) ⟨φ_{p_1} ⋯ φ_{p_n}⟩ of the centred plaquette density φ_p = P_p − ⟨P_p⟩, for F ∈ D_n = smooth functions on T^{4n}, flat on all diagonals [V, ASSEMBLY §0].
- So: the full Schwinger functions of ONE composite field (the action density, ≈ ε⁴ ¼ tr F²), off the diagonals. Not Wilson loops (class C3, ASSEMBLY §4 [V]). Not a probability measure: the smeared field has variance ~ ε^{−4} [V, ASSEMBLY §1.3 "What is claimed about measures"]. Not the generating functional at coincident points: the contact functional W_ε[f] diverges and is subtracted.
- Convergence. Subsequential only (B-C, diagonal extraction). Full-sequence convergence needs E13, open [V, ASSEMBLY §4].
- Uniformity. (H-U) is uniform in ε = L^{−K} → 0 at FIXED ℓ. The constant A depends on ℓ (§3.2). Nothing in Target 2 states uniformity in ℓ.
- Bare coupling. g_0(K, g) comes from Lemma D″ applied to the whole-lattice β_j (SOURCES_T2_KUNIF §3.2 [V]: p. 278 + (2.24) "make β_j a K-free, volume-free function of (j; g_0, …, g_{j−1})"). So the same g_0(K, g) serves every torus that satisfies (Vol) [I, from KUNIF + T2_VOL table row 2]. This is used in §4.1.

### 1.3 What Target 2 explicitly does not deliver
ASSEMBLY §4 [V]: no rotation invariance beyond B_4; "Infinite volume. ℓ is fixed. The limit T⁴ → R⁴ is not taken."; no mass gap; no uniqueness; no clustering; no measure; no Wilson loops. Also the torus OS reconstruction gives a thermal state at inverse temperature ℓ, not a vacuum (SOURCES_D4D5 §2 [V]).

## 2. What "infinite-volume existence" means

Numbering. This file uses the Osterwalder–Schrader numbering E0–E4 of OS I (CMP 31 (1973) 83–112) [R]: E0 temperedness, E1 Euclidean invariance, E2 reflection positivity, E3 symmetry, E4 cluster property. ASSEMBLY's OS0–OS3 are E0–E3 in torus form. Glimm–Jaffe (Quantum Physics, 2nd ed., §6.1) number the measure-form axioms differently (OS0 analyticity, OS1 regularity, OS2 invariance, OS3 RP, OS4 ergodicity) [R]; that numbering is not used here.

### 2.1 The objects on R⁴
- Test space. ⁰S_n := {F ∈ S(R^{4n}) : every derivative of F vanishes on every diagonal x_i = x_j}. OS I defines Schwinger functions on this space [R]. It is the R⁴ analogue of ASSEMBLY's D_n. So the off-diagonal composite Schwinger functions of Target 2 are the right type of object; no measure is needed.
- Candidate. S_n^∞(F) := lim_i S_{n,ε_i,ℓ_i}(F) for F ∈ C_c^∞ ∩ ⁰S_n, along sequences ε_i → 0, ℓ_i → ∞ (ℓ_i even, ℓ_i > 22M, and supp F inside one fundamental domain of T⁴_{ℓ_i}), then extended to ⁰S_n by continuity.
- Not available as the object: a probability measure on S′(R⁴) (Glimm–Jaffe form). The composite field has divergent variance (§1.2). Seiler's LNP 159 (1982) treats the gauge-invariant observables of lattice gauge theory (Wilson loops, plaquette fields) and the lattice RP of Osterwalder–Seiler (Ann. Phys. 110 (1978)) [R]; Wilson loops are a different observable class, outside Target 2.

### 2.2 Weak sense (the target of this plan)
(IV-weak) There is a sequence (ε_i, ℓ_i) → (0, ∞) along which S_{n,ε_i,ℓ_i}(F) converges for every n and every F ∈ C_c^∞ ∩ ⁰S_n, and every such limit family satisfies:
- E0′ (temperedness with linear growth, OS II, CMP 42 (1975) 281–305 [R; X2]): |S_n(F)| ≤ σ_n |F|_{sn} with the weighted Schwartz norm |F|_p = max_{|α| ≤ p} sup (1 + |x|²)^{p/2}|∂^α F|, σ_n ≤ A(n!)^D.
- E1 (Euclidean invariance): invariance under R⁴ ⋊ O(4). The weak-sense lemma list (§5) splits this into E1-T (all translations), E1-H (hypercubic B_4), and E1-R (full O(4)).
- E2 (reflection positivity) for the time reflection θ and test functions supported in x_0 > 0.
- E3 (permutation symmetry; reality for real F).
- Nontriviality (not an OS axiom): the limit is neither zero nor the free composite (ASSEMBLY §1.4 analogue).
OS II reconstruction from E0′–E3 gives a Wightman theory satisfying all Wightman axioms except uniqueness of the vacuum [R]. Without E1-R one gets a Hilbert space, a positive Hamiltonian, and unitary space translations, but no Lorentz boosts [R, standard reading of OS reconstruction; the boosts come from O(4) via analytic continuation].
No uniqueness. Different subsequences may give different limits.

### 2.3 Strong sense
- (U) Uniqueness of the limit: independence of the subsequence (full-sequence convergence in ε and ℓ jointly).
- E4 (clustering): S_{n+m}(F ⊗ G_{ta}) → S_n(F)S_m(G) as t → ∞ for spatial a. By OS reconstruction E4 is equivalent to a unique vacuum [R].
- Mass gap: exponential clustering, |S^T_{n+m}(F ⊗ G_{ta})| ≤ C e^{−m t|a|}, m > 0 ⇒ spec H ⊂ {0} ∪ [m, ∞) [R, Glimm–Jaffe §6.2, §19].
- Jaffe–Witten footnote 2 [V, ASSEMBLY §1.1]: weak existence is excluded as a Clay solution "unless one also uses other techniques to establish properties of the limit (such as the existence of a mass gap and the axioms)". (IV-weak) is therefore NOT a Clay solution, for the same reason Target 2 is not.

### 2.4 Precedent for the weak sense
Gubinelli–Hofmanová (CMP 384 (2021)) construct Φ⁴₃ on R³ as subsequential limits of periodic lattice theories ε → 0, M → ∞, with Theorem 1.1 [V, reports/EUCLID_INV_LIT §1a]: "Every accumulation point ν is translation invariant, reflection positive and non-Gaussian", and the abstract says these "allow to verify the Osterwalder–Schrader axioms … apart from rotation invariance and clustering". Brydges–Fröhlich–Sokal (CMP 91 (1983)) is the same shape [V, same report]. So (IV-weak) without E1-R is the accepted weak form in the literature. Its distinctive inputs there are volume-uniform moment bounds (stochastic quantization or correlation inequalities), not infrared control.

## 3. The compactness route, and the ℓ-uniformity audit of Target 2

### 3.1 The route in five steps
1. (H-U∞) Bounds uniform in ε AND ℓ: for every ball B ⊂ R⁴ there are A_B, s, D with |S_{n,ε,ℓ}(F)| ≤ A_B^n (n!)^D ‖F‖_{sn} for supp F ⊂ B^n, F ∈ ⁰S_n, all K ≥ K_0, all even ℓ ≥ ℓ_0(B), with A_B ≤ C(1 + diam B)^q (polynomial growth, needed for the weights of E0′).
2. Compactness: the diagonal extraction of ASSEMBLY §2.4 over a countable exhaustion B_1 ⊂ B_2 ⊂ … of R⁴ and countable dense subsets of C_c^∞(B_j^n) ∩ ⁰S_n. One subsequence (ε_i, ℓ_i) serves all n, all j [P, same proof as B-C, one more index].
3. Transfer of E0′, E1-T, E1-H, E2, E3 (§3.3).
4. Nontriviality: (NT) of ASSEMBLY §2.9, with constants uniform in ℓ.
5. Not on this route: E1-R, E4, uniqueness, gap.
Order of limits. Joint limit along one sequence (ε_i, ℓ_i) is the simplest; it needs (H-U∞) jointly uniform. The alternative "ℓ → ∞ first at fixed ε" exists trivially (compact link variables give infinite-volume lattice Gibbs states at any coupling, by compactness of probability measures on SU(2)^{links of Z⁴}) [R, standard], but then (H-U∞) must hold for those Z⁴ states, which again needs §4.

### 3.2 Where ℓ enters Target 2 (audit)
| # | place | how ℓ enters | ℓ-uniform? |
|---|---|---|---|
| V1 | CMP 122 II (0.1), χ e^{−A/g² − E_−\|T_η\|} ≤ ρ_k ≤ e^{E_+\|T_η\|} | extensive factor e^{c\|Λ\|}; constants "independent of k, T_η, U_k" [V, page image p. 356, this session] | per site yes; as a bound on log(Z[f]/Z[0]) NO: it gives only (E_+ + E_−)\|T\| = O(ℓ⁴) |
| V2 | ASSEMBLY_N1 §1 item 4: "The bound comes from \|log Z − W\| ≤ E_+\|T_η\| … with fixed torus volume ℓ⁴. … ℓ⁴ is absorbed in C_S." [V] | the factor V1 enters C_S | NO as written. It is an artifact of the global Cauchy route if (FX) locality holds uniformly in ℓ [I] |
| V3 | ASSEMBLY_N1 fine-region estimate: "\|S_{n,ε}(F R)\| ≤ (12 ℓ⁴)^n ε^{−4n} …" [V, l. 124] | plaquette count over all of T⁴_ℓ, because F lives on all of T^{4n} | NO as written; replace ℓ⁴ by \|B\| for supp F ⊂ B^n [P, bookkeeping: the sum runs over plaquettes in supp F only] |
| V4 | (FX) Step B, the unit-scale small-field integral I_K on the ℓ⁴ unit lattice at coupling g, "final localization by a cluster expansion of CMP 116 §2 … as Dimock III Thm 2" [V, SOURCES_FX §6.2] | the only cluster expansion done on the whole ℓ-torus at the terminal coupling | at fixed ℓ harmless. Uniformly in ℓ: NOT available [I]. At the unit scale the remaining field is a weakly coupled, massless lattice gauge field on ℓ⁴ (no block constraint left). A convergent expansion uniform in ℓ needs further RG steps up to scale ℓ, where g_k leaves ]0, γ] (§4.3) |
| V5 | (Vol) ℓ > 22M; A1/(C) torus-side hypothesis (side ≥ c·RM coarsest blocks) [V, SOURCES_T2_VOL table rows 7–8] | lower bounds on ℓ | yes (compatible with ℓ → ∞) |
| V6 | wrapped loops, QE_INV §3.4: weight ≤ C_H e^{−δ_H·(torus size)/2} [V] | decays in ℓ | yes, improves as ℓ → ∞ |
| V7 | WC (WC_FULL Theorem WC), A1-W ("The bound is uniform in the volume", A1_WALK_FULL l. 183 [V]), Lemma HH constants "independent of j, K, i, and the volume" [V, SOURCES_HHIST via KUNIF l. 18], A15_WHOLE "The torus size does not appear" [V, l. 55], HHOL per-polymer majorant ("A volume-uniform bound must be made per polymer", SOURCES_HHOL K2 [V]), Schur bounds "no volume factor" (QE_INV §3.4 [V]) | per-polymer constants of the UV steps k < K | yes, as stated in those files (each [R] or verified at its own row) |
| V8 | large-field budget "O(1) log g_j^{−2}\|Z_j\|" per large-field domain (CMP 122 II p. 380, SOURCES_FX l. 38 [V]) | per domain, local | yes per domain; summed over the torus it is V1 |
| V9 | bare coupling g_0(K, g) from the whole-lattice β_j (KUNIF §3.2 [V]) | none | yes; ℓ-independent given (Vol) [I] |
Reading of the audit [I]. Every UV ingredient (scales k < K) is volume-uniform per polymer (V7, V8). The ℓ-dependence of Target 2's constants sits in three places: the global form of V1 used in V2, the test-function count V3, and the unit-scale integral V4. V3 is bookkeeping. V2 is removable if locality is proved in an ℓ-uniform way. V4 is the real obstruction for the CUMULANT route, because a cluster expansion at the unit scale on a large torus is an infrared statement.

### 3.3 Transfer of E0′–E3 to the limit, given (H-U∞)
- E0′ [P sketch]. Pointwise limit of |S_{n,ε,ℓ}(F)| ≤ A_B^n (n!)^D ‖F‖_{sn}. With A_B ≤ C(1 + diam B)^q and a partition of unity over unit cubes, the sup-norm on B^n is dominated by the weighted norm |F|_{sn + 4n + qn}; so s increases by a fixed amount. Linear growth survives (s fixed, n!^D unchanged).
- E1-T [P, ASSEMBLY §2.6 verbatim]. Lattice translations by εZ⁴ are exact at every (ε, ℓ); continuous translations follow by rounding plus the modulus of continuity σ_n · 4nε‖F‖_{sn+1}.
- E1-H [P, ASSEMBLY §2.6]. B_4 about a site is exact at every (ε, ℓ) (the L^{−K} lattices are nested).
- E1-R [open, §4.4]. Not a symmetry of any approximant.
- E2 [P, ASSEMBLY §2.7 + positivity lemma]. Lattice RP for the two-seam periodic lattice with ℓ even (X3, Osterwalder–Seiler 1978 [R]). For supp F_n ⊂ {0 < x_0 < T}^n with T < ℓ/2, the second seam at x_0 = ℓ/2 + ε/2 is far from the supports and plays no role. Limit: finite positive forms are closed under pointwise limits. Note: on the torus E2 holds for supports in x_0 ∈ ]0, ℓ/2[; in the limit this becomes the half-space x_0 > 0, as required.
- E3 [P, ASSEMBLY §2.8]. Linear identities pass to the limit.
- Nontriviality [conditional]. ASSEMBLY §1.4 uses (NT) with remainder C(g_{k(d)}² + (d/ℓ)²) [V]; (d/ℓ)² → 0 as ℓ → ∞, which helps. (NT) must hold with constants uniform in ℓ; same status as (H-U∞).

## 4. The real obstructions, and the proposed way around (a)

### 4.1 (b) The coupling flow is ℓ-independent: a point in favour
- The shooting uses the whole-lattice β_j (A15 small-field terms "coincide with the corresponding terms arising from the expressions defined on the whole lattice", CMP 119 p. 278, verified on the page image [V, SOURCES_D3W8_VERIFY S3 via KUNIF l. 17]). β_j is "a K-free, volume-free function of (j; g_0, …, g_{j−1})" [V, KUNIF §3.2].
- So g_0(K, g) and the trajectory (g_k) do not depend on ℓ. Every torus with ℓ > 22M, ℓ even, uses the same bare coupling at the same ε [I, from V9 of §3.2].
- On the torus, the β mismatch leaves only Balaban's irrelevant class when (Vol) holds (B8 replaced form, TRUST_LEDGER §4.2 item 8 [V]). (Vol) is a lower bound, so it becomes easier as ℓ grows.
- Consequence [I]: the family {μ_{ε,ℓ}} is a two-parameter family with one bare coupling per ε. The double limit is well posed. No ℓ-dependent renormalization is needed.

### 4.2 (a) ℓ-uniformity through the large-field region, and the conditional bound (CG)
The issue. Target 2 gets locality of log Z[f] from the final Mayer expansion (FX). Its Steps A, C, D are UV statements with per-polymer constants (V7, V8). Step B expands the unit-scale integral on the whole ℓ⁴ lattice (V4). Uniformly in ℓ, Step B is an infrared statement. The global bound V1 alone gives |log Z[f]/Z[0]| = O(ℓ⁴), which is useless.

The proposal: do not expand the unit scale at all; bound it by positivity.
Definitions. Let 𝒜_K be Balaban's composed averaging, U ↦ V = 𝒜_K(U) ∈ SU(2)^{unit links of T⁴_ℓ}. Let ν_{ε,ℓ} := law of V under μ_{ε,ℓ}. It is a probability measure (marginal of a probability measure). Its density is Balaban's ρ_K, which he proves positive (CMP 122 I p. 176, quoted in SOURCES_D3 (B7) [V]). For a source f, put
  Γ_f(V) := E_{μ_{ε,ℓ}}[ e^{ϕ(f) − W^{(2)}_ε[f]} | 𝒜_K(U) = V ],
with W^{(2)} the nonlinear part of the contact functional W_ε (its linear part is fixed by the centring of φ_p) [I: normalization convention; any bounded linear part changes moments by binomial terms, cost 2^n].
Then, exactly, Z_ε[f] e^{−W^{(2)}[f]}/Z_ε[0] = E_ν[Γ_f] (tower property; this is the conditional form of the identity Z_ε[f] = 𝒩_K e^{−W_K[f]} I_K[f] of SOURCES_D4D5 §3 (a) [V]).

(CG) [statement; status: needs new work, §4.2 end]. There are r > 0, a ∈ [0, 1[, C_0 < ∞, K_0, such that for all K ≥ K_0, all even ℓ > 22M, all n, all real f_1, …, f_n ∈ C¹ with pairwise distance of supports ≥ σ ∈ [16ε, 1], all complex z with |z_i| ≤ r/N(f_i), and ALL unit-scale fields V:
  |Γ_{Σ z_i f_i}(V)| ≤ Π_i exp(C_0 σ^{−a}(1 + |supp f_i|_1)),
where |X|_1 := number of unit cubes meeting X. The constants do not depend on ℓ, K, or V.

Lemma IV-M (moments from (CG)) [P]. Assume (CG). Then for the same f_i:
  |⟨ϕ(f_1) ⋯ ϕ(f_n)⟩_{μ_{ε,ℓ}}| ≤ Π_i r^{−1} N(f_i) exp(C_0 σ^{−a}(1 + |supp f_i|_1)), uniformly in ε and ℓ.
Proof. z ↦ E_ν[Γ_{Σ z_i f_i}] is holomorphic on the polydisc (finite-dimensional integral at fixed ε, ℓ; W^{(2)} holomorphic on the (FX2) polydisc [I; ASSEMBLY_N1 §1 item 3 states that disjoint supports keep the polydisc in the (FX2) domain, citing SOURCES_UN1 §2.4, not re-read here]). Since ν is a probability measure, |E_ν Γ| ≤ sup_V |Γ| ≤ the (CG) bound. W^{(2)} is local and additive over disjoint supports, so it contributes nothing to the mixed derivative ∂_{z_1}⋯∂_{z_n} at 0 [V: SOURCES_VERIFY item 5(a), quoted in ASSEMBLY §2.2]. That mixed derivative is ⟨Π ϕ(f_i)⟩. Cauchy's estimate on the polydisc of radii r/N(f_i) gives the bound. ∎
Remarks. (i) No infrared input is used: the unit-scale theory enters only through "ν is a probability measure". This is where compactness of SU(2) does the work [I]. (ii) The bound is a MOMENT bound, polynomial in the support sizes, with no n! for separated products. Target 2's Gevrey factor came from cumulant combinatorics; moments avoid it. (iii) Lemma IV-M gives no decay in the separation. That is consistent: decay would be clustering (§4.3).

Why (CG) is plausible, and what it needs [I].
- Small-field part. In Balaban's sourced representation (D2, D3) the source enters as a local coupling w_k(x) = u_k(f(x)) and as local polymer activities (E-, R-, B-terms) [V, SOURCES_D3 l. 35]. So e^{W}ρ_K^f(V)/ρ_K(V) = exp(−A(w_K − u_K, V) + Σ_{X ∩ supp f ≠ ∅}(activity differences)). The first term is O(r) per plaquette of the unit lattice in supp f, since A_p(V) ∈ [0, 2] for every V. The sum is O(r) per unit cube by the per-polymer tree decay of FX Step D ("#{polymers touching a fixed m-cube, weighted by |activity|} ≤ Σ_s e^{c_0 s}e^{−κ′(s−1)} < ∞ uniformly" [V, SOURCES_FX §6.4]).
- Large-field part. Balaban's positivity bound for the large-field operation, CMP 122 II (1.73)–(1.75): |T_k(X, (U, J))F| ≤ e^{3 sup|σ|} sup|F| · T_k(X, (U, 0))1, "All the expressions … are real, and the exponential density in the integral is positive" [V, quoted in SOURCES_D3 (B11)]. This is a ratio bound term by term. The per-cube source cost is dominated by Balaban's own large-field suppression (FX §6.3(a) [P there, given (1.79)–(1.80)]). So the sourced large-field gas is dominated by a positive gas with modified activities.
- The step that is NOT written: at FIXED V, the ratio (sourced gas)/(unsourced gas) is exp(local sum near supp f), with constants independent of ℓ and V. This is FX Steps A, C, D re-run conditionally on the unit-scale field, i.e. without the final integration over V. It does not need Step B. The divergence of the expected number of fine large-field cubes (SOURCES_D4D5 §3.2(ii) [V]) must be handled exactly as in FX §6.4 (fine large-field regions renormalized into R-terms at their own scale), now pointwise in V.
- Risk. The unit-scale large-field set (where V itself is large) is fixed when V is fixed; its characteristic functions do not depend on f. If some R-operation at the last step mixes V-large regions with supp f nonlocally, (CG) can fail there [I; not checked against CMP 122 II §1].
Status of (CG): needs new mathematics, but of the kind the project has done (a re-organization of verified FX/D3 material), not an infrared problem [I].

