# ALT_ROUTES — two nonperturbative routes (Chatterjee center symmetry; stochastic quantization) against the project's wall

Date: 2026-10-28 (Fable 5.1). Status: IN PROGRESS, one section per tool call. Edits: this file only. No existing file touched.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Grades: [P] proved here; [V] verified reading of a source (arXiv HTML/abstract page read this session); [I] recalled or interpreted, not re-read; [R] published theorem taken as input.
Honesty rule: every obstruction names the exact failing inequality or the missing theorem. No softening.

## 0. What the project has, and what "the wall" is (orientation, from project files read this session)

- Available [V, project files]: Balaban's UV construction on the finite torus T⁴_ℓ, SU(2), d = 4, spacing ε = L^{−K}, bare coupling g_0(K, g) with unit-scale coupling g ∈ ]0, γ] (TRUST_LEDGER §0; THEOREM2_PROOF_v4 via Theorem 2w). Output after the last RG step and FX Step A: a probability measure ν_{K,ℓ} on small-field unit-scale fields V ∈ SU(2)^{unit links of T⁴_ℓ}, density χ(V) exp(A_K^0(V) + Σ_X R_fin(X, V)) / I_K[0], with A_K^0 a Wilson-type action at coupling g and R_fin a convergent sum of local unit-scale activities (IV12 §4.4 (L1)–(L2); FABLE §2, (3.1)–(3.2)). Everything ℓ-dependent beyond e^{−cℓ} sits in ν_{K,ℓ} (FABLE §3.2).
- Theorem IV (FABLE §7.1), conditional: subsequential (ε, ℓ) → (0, ∞) limits of the centred plaquette-density Schwinger functions with OS0, OS1-T, OS1-H (B_4 only), OS2, OS3. Not given: uniqueness, O(4), OS4 clustering, mass gap, Wilson loops (ASSEMBLY §4 class C3 excluded).
- The wall [V, IV12 §4.2, VERIFY main finding]: FX Step B = "log of the unit-scale integral ∫dV χ e^{A_K^0 + ΣR_fin} is a convergent sum of local terms with ℓ-free constants". It is expected FALSE, not merely unproved: Lemma C keeps a decay e^{−κσ/(4M)} in the separation σ, so an ℓ-uniform Step B would give a unit-scale mass gap of order one at every g ≤ γ, against asymptotic freedom's ξ_g ≈ exp(1/(2b_0 g²)) unit cells. The unit-scale Gaussian part is the massless lattice gauge propagator on T⁴_ℓ (no block constraint left), so no Kotecký–Preiss criterion holds uniformly in ℓ (IV12 (B-i), (B-ii)).
- So the wall is: control of a weakly coupled 4D lattice gauge theory on the unit lattice at distances between 1 and ξ_g ~ e^{c/g²} and beyond; equivalently the infrared problem of the unit-scale measure ν_∞ (FABLE L15, L17).

Both routes asked about relocate this wall. Sections: §1 Chatterjee source; §2 the quantitative inequality; §3 area law vs gap; §4 extractable short-distance Wilson-loop theorem; §5 SPDE sources; §6 criticality in d = 4; §7 3d global existence gap; §8 gap ⇔ spectral gap ⇔ Step B; §9 extractable at unit scale; §10 one-page summary.

## 1. Part A(1) — Chatterjee's theorem, sourced [V: arXiv 2006.16229v5 text extracted this session (pdftotext), §2 and §3, §12]

Bibliographic: S. Chatterjee, "A probabilistic mechanism for quark confinement", arXiv 2006.16229 (v5, 26 Mar 2021, final), Comm. Math. Phys. (2021), DOI 10.1007/s00220-021-04086-y, 35 pp. [V, abstract page].

### 1.1 Setup (§2.1–2.2) [V]
- G a closed CONNECTED subgroup of U(n); d ≥ 2; Ω = G^E on Z^d with product Haar λ; formal Hamiltonian H(ω) = −Σ_p Re Tr(ω_p); measure "dμ = Z^{−1} e^{−βH} dλ" read as a specification; β = "the inverse of the squared coupling strength" (so for SU(2) with Wilson normalization (2N/g²)(1 − N^{−1}Re Tr), β = 2/g² up to the constant; this convention is [I], the project's g is the unit-scale coupling). Gibbs measures on Z^d exist by compactness (Georgii Thm 4.22). G, β, d fixed throughout: the theorem is at ONE fixed β; there is no coupling range and no β → ∞ statement in the paper.
- Wilson loop (2.2): W_ℓ = χ_π(ω_{e_1}⋯ω_{e_k}), π a fixed finite-dimensional irreducible unitary representation. Area law (2.3): |⟨W_ℓ⟩| ≤ C_1 e^{−C_2 area(ℓ)} for rectangular ℓ. Weaker "confinement" (his §2.2): limsup_{T→∞} T^{−1} log|⟨W_{ℓ_{R,T}}⟩| ≤ −V(R) with V(R) → ∞.

### 1.2 Center symmetry (§2.3) [V]
- Slab S = {0,…,N} × Z^{d−1}, boundary = top and bottom layers; boundary condition δ ∈ G^{∂E(S)}; specification α on Ω(S, δ) with Hamiltonian −Σ_{p∈P(S)} Re Tr ω_p.
- Center transform τ: for g_0 ∈ Z(G), multiply every vertical edge from layer 0 to layer 1 by g_0. It leaves every ω_p invariant, so it is a symmetry of α (Georgii Ch. 5).
- "α has unbroken center symmetry if every Gibbs measure of α is invariant under each center transform."
- Definition 2.1: the theory on Z^d has unbroken center symmetry if for SOME N ≥ 1, the theory on the slab of thickness N, under ANY boundary condition δ, has unbroken center symmetry in the above sense.

### 1.3 The two main theorems [V]
- Theorem 2.2 (one direction only). Unbroken center symmetry (Def. 2.1) + π acts nontrivially on Z(G) ⇒ there is V: Z_+ → R with V(R) → ∞ such that for every rectangular loop with sides R ≤ T and every Gibbs measure on Z^d, |⟨W_ℓ⟩| ≤ e^{−V(R)T}.
- Theorem 2.4. "Exponential decay of correlations under arbitrary boundary conditions" (Def. 2.3: constants K_1, K_2 depending on G, β, d only, such that for every cube B, every boundary condition δ on B, and every pair of local functions f, g supported on edges of B with values in [−1, 1], |⟨fg⟩_{B,δ} − ⟨f⟩_{B,δ}⟨g⟩_{B,δ}| ≤ K_1 e^{−K_2 dist(f,g)}) ⇒ unbroken center symmetry; and, for π nontrivial on Z(G), every Gibbs measure satisfies the area law (2.3).
- There is NO converse in the paper (no "area law ⇒ unbroken center symmetry"). The word "equivalence" in the task brief does not match the printed theorems. What is printed is the chain: strong exponential decay (Def. 2.3) ⇒ unbroken center symmetry ⇒ V(R) → ∞ (and, with Def. 2.3, the area law).
- Finite vs infinite volume: Def. 2.1 and Thm 2.2 are infinite-volume (Gibbs measures on Z^d and on infinite slabs); the proof (Lemma 3.1) uses finite boxes S_R = {0,…,N} × {−R,…,R}^{d−1} with arbitrary boundary conditions and a compactness argument. The output V(R) is NON-QUANTITATIVE: it comes from "limsup_{R→∞} sup_{f,δ}|⟨f⟩_{R,δ}| = 0", proved by contradiction with Prokhorov (§3, Lemma 3.1).
- Where the area law's constants come from (§12, (12.1)) [V]: Def. 2.3 gives V(R) ≥ C_2 R − C_1 ("at least linear growth", via uniqueness of the slab Gibbs measure and exponential convergence of ⟨f⟩_{S_{M,N}} to 0); the proof then removes the C_1T term with Lemma 12.1 (a density-ratio argument on one group factor). So the area-law string tension of Thm 2.4 is of the order of K_2 (the correlation-decay rate), not of a separately identified quantity.
- Chatterjee's own remark (§2.4 end) [V]: theories believed gapped and center-symmetric but not confining at large β (finite gauge groups; adjoint Higgs). By Thm 2.2 their center symmetry must break; Def. 2.3 fails for them because they have multiple Gibbs measures (long-range order) at weak coupling. He also writes that Def. 2.3 "is quite strong" and that it is "not clear whether" the Yang–Mills mass gap conjecture "includes the strong version stated above."

### 1.4 Related rigorous results, with regimes
| result | group, d | regime | what | grade |
|---|---|---|---|---|
| Chatterjee, "Wilson loops in Ising lattice gauge theory", CMP 377 (2020) | Z_2, d = 4 | weak coupling (β large) | leading-order Wilson loop (perimeter law, explicit e^{−cβ} constant) | [V title/venue via Cao and FLV reference lists; content I] |
| Cao, "Wilson loop expectations in LGT with finite gauge groups", CMP 380 (2020), arXiv 2001.05627 | finite groups (mild conditions), d = 4 | weak coupling | first-order Wilson loop expectation | [V abstract] |
| Forsström–Lenells–Viklund, AIHP 58 (2022), arXiv 2001.07453 | finite ABELIAN, Z^4, Wilson action | weak coupling | leading order; "neither duality relations nor cluster expansion" | [V abstract] |
| Forsström, "Pure perimeter laws for Wilson lines observables" (2024/26, Chalmers), and Forsström–Lenells–Viklund Higgs papers (arXiv 2107.03718, 2211.03424) | finite abelian + Higgs | strong/weak coupling as stated there | perimeter laws | [V titles only] |
| Garban–Sepúlveda, arXiv 2107.04021 | U(1) Villain, d = 4 | low temperature (β large) | |E W_γ| ≤ exp(−(C_GFF/(2β))(1 + Cβe^{−2π²β})|γ| + o(|γ|)): perimeter law, Coulomb-type constant; free-energy correction e^{−π²β} matching Guth | [V abstract] |
| Guth (1980), Fröhlich–Spencer (1982) | U(1), d = 4 | β large | deconfinement (perimeter law) | [I] |
| Chatterjee, "Yang–Mills for probabilists", arXiv 1803.01950 | survey | — | setup, continuum-limit issues as probability problems | [V abstract] |
| Chatterjee–Jafarov (2016), Chatterjee (2019 CMP), Jafarov (2016) | SO(N), SU(N) | STRONG coupling, large N | 1/N expansion, string trajectories | [I] |
| Shen–Zhu–Zhu, arXiv 2204.12737 (CMP 2023) | SO(N), SU(N), d > 1 | strong coupling: |β| < 1/(16(d−1)) for SU(N) | unique infinite-volume measure, LSI and Poincaré, exponential decay = mass gap, large-N factorization | [V abstract] |
| Shen–Zhu–Zhu, arXiv 2401.13299 | YM–Higgs lattice | β, κ small | ergodicity, mass gap | [V abstract] |
Reading of the table [P from the rows]: every rigorous weak-coupling Wilson-loop result is for a finite or abelian group (where the weak-coupling phase is deconfined, so the result is a perimeter law); every nonabelian result is at strong coupling. No rigorous weak-coupling statement about Wilson loops for SU(N), N ≥ 2, d = 4 appears in this session's searches [I: absence of evidence].

## 2. Part A(2) — the quantitative inequality that Chatterjee's route relocates the problem to

### 2.1 What his proof actually consumes [P, by inspection of §3 [V]]
Lemma 3.1 gives sup_{f,δ} |⟨f⟩_{R,δ}| ≤ e^{−V(R)} for the vertical chain variable f on the central chain of S_R = {0,…,N} × {−R,…,R}^{d−1}, under every boundary condition δ. Lemma 3.2 iterates it over [T/N] independent slabs (conditioning on the layer variables). The Wilson loop bound is then (printed) |⟨W_ℓ⟩| ≤ m^{2(R+T)} e^{−V(R)[T/N]}. So the ONLY input is the function V, and the area law with string tension σ follows if and only if V is at least linear:

(CS_σ)  there are N ≥ 1 and σ > 0 such that for all R ≥ 1, all boundary conditions δ on S_R, and all vertical chain variables f on the central chain,  |⟨f⟩_{R,δ}| ≤ e^{−σ N R + c}.

Given (CS_σ): |⟨W_{R×T}⟩| ≤ exp(−σ RT + σ N R + 2(R+T) log m + c T/N), i.e. the area law with string tension σ up to perimeter-order corrections (Chatterjee's Lemma 12.1 removes the C_1 T term when a two-sided density bound holds on one factor) [P]. Conversely, if V(R) = o(R) then the bound of Thm 2.2 is NOT an area law: Thm 2.2 by itself gives only V(R) → ∞ at an unspecified rate. The quantitative content of the route is therefore entirely (CS_σ).

Interpretation [P]: −log sup_δ |⟨f⟩_{R,δ}| is the free energy of a static charge in representation π crossing a slab of thickness N inside a box of radius R with the worst boundary condition; (CS_σ) says it grows like σ × (minimal area N R spanned between the charge line and the box boundary). That is the linear static potential itself, written for one line observable in a finite box under arbitrary boundary conditions. It is not a weaker statement than confinement; it is confinement with a uniformity in boundary conditions added.

### 2.2 The torus / 't Hooft form [I]
On a periodic torus the center transform on one full layer leaves every plaquette invariant and is itself a symmetry of the measure, so ⟨P⟩ = 0 for the vertical Polyakov line at every β: Def. 2.1 needs non-periodic boundary conditions to be a nontrivial condition. The periodic-torus analogue is the twist (vortex) free energy: Z_tw(ℓ) with 't Hooft twisted boundary conditions z_{μν} ∈ Z(G) on a coclosed set of plaquettes dual to a 2-plane, e^{−F_v(ℓ)} := Z_tw/Z; by 't Hooft's Z(G) Fourier duality the electric-flux free energy e^{−F_e} = Σ_z χ(z) e^{−F_v(z)}/Σ_z e^{−F_v(z)}; confinement in d = 4 is F_e(ℓ) ≈ σ ℓ² and F_v(ℓ) ≈ C e^{−ρ ℓ²} ("vortex condensation"). Tomboulis–Yaffe (CMP 100, 1985) prove rigorously that an exponential bound on the vortex free energy implies the Wilson-loop area law [I: statement recalled, constants not re-read]. In either formulation the hypothesis is one exponentially small number per torus size, and nobody has a bound on it at weak coupling.

### 2.3 The required scaling, written out [P arithmetic on the standard two-loop formula; the formula itself is R]
Continuum area law needs σ_phys = σ(β)/ε² fixed as ε → 0, with ε tied to g by asymptotic freedom (lattice Λ-parameter, two loops):
  ε Λ_L = (b_0 g²)^{−b_1/(2b_0²)} exp(−1/(2 b_0 g²)) (1 + O(g²)),  b_0 = 11N/(48π²),  b_1 = 34N²/(3(16π²)²).
Hence
  σ(g) = (σ_phys/Λ_L²) · (b_0 g²)^{−b_1/b_0²} · exp(−1/(b_0 g²)),   b_1/b_0² = 102/121 ≈ 0.843 (N-independent).
For SU(2): 1/b_0 = 24π²/11 ≈ 21.5, so σ(g) ≍ exp(−21.5/g²)(g²)^{−0.84}. In Chatterjee's β (coefficient of Re Tr ω_p; for SU(2) Wilson action β = 2/g² [I convention]): σ(β) ≍ exp(−(12π²/11) β) β^{0.84} ≈ e^{−10.8 β} β^{0.84}. So (CS_σ) must be proved with σ = σ(β) of exactly this exponentially small size, for all β ≥ β_0, with N = N(β) allowed to grow (N ~ 1/σ^{1/2} is the natural slab thickness, one correlation length).

### 2.4 Why this is the confinement problem, not a reduction of it [P]
(a) At fixed β the lattice statement (CS_σ) with any σ > 0 is open for every β outside the Osterwalder–Seiler strong-coupling region; Chatterjee adds no mechanism to prove it, his Thm 2.4 derives it from a stronger hypothesis (Def. 2.3, see §3 and §8).
(b) The exponent is exponentially small in β. Every tool available at weak coupling (Balaban's small-field expansions, the project's walk and polymer bounds) is a perturbation around V_p ≈ 1 with constants polynomial in 1/β per unit cell; such a tool can produce an exponent exp(−c/g²) only by iterating the RG for ≈ 1/(2 b_0 g² log L) further steps until the running coupling leaves ]0, γ]. That is the project's L15/L17 wall (FABLE §7.3 item 2): there is no small parameter at the scale ξ_g where σ becomes visible.
(c) Uniformity in boundary conditions is an EXTRA requirement relative to the project: Balaban's construction (TRUST_LEDGER §0) is on the periodic torus only; no version with fixed boundary conditions on a slab exists in the project or, to my knowledge [I], in Balaban's papers. Theorem IV's unit-scale measure ν_{K,ℓ} is a periodic-torus object. So (CS_σ) asks for strictly more than the project's wall: the wall plus boundary conditions.
Conclusion: Route A relocates "area law" to (CS_σ) with σ(β) ≍ e^{−β/b_0}; the relocation is exact (no loss, no gain) and the new inequality is the static potential under arbitrary boundary conditions, which is the confinement problem.
