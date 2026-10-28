# SOURCES_D4D5 — D4 (RP and lattice symmetry transfer) and D5 (assembly of (S))

Status: in progress (2026-10-27). Sections are appended one per step.
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
