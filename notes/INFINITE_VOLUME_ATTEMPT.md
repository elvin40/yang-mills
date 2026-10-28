# INFINITE_VOLUME_ATTEMPT — trying the subsequential infinite-volume limit from Target 2

Date: 2026-10-28 (Opus). Status: exploratory derivation attempt, unverified. Edits: this file only.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [P] proved here (short, unverified); [V] quoted from a project file or page image read this session; [I] inference, not printed anywhere; [R] standard literature result, text not re-read; [BLOCKED] the step fails with present tools.
Relation to INFINITE_VOLUME_PLAN.md (parallel agent, route survey; §0–§3.3 read at start, §4 onward not yet written at start). This file does not repeat the plan's ℓ-audit table V1–V9. It cites rows as "PLAN V#" and tries the proof steps. Where this file disagrees with the plan, it says so.

## 0. Running summary (updated at the end)
(pending)

## 1. Statement of the weak target W

### 1.1 Inputs fixed from Target 2 [V]
- Lattice: T⁴_ℓ, spacing ε = L^{−K}, ℓ ∈ 2N, ℓ > 22M final-scale cells per side (Vol), Wilson action, bare coupling g_0(K, g) from Lemma D″ with final coupling g_K = g ∈ ]0, γ] (ASSEMBLY §1.3; SOURCES_T2_VOL §4).
- Observable class: the centred plaquette field φ_p = P_p − ⟨P_p⟩, and S_{n,ε,ℓ}(F) = Σ_p F(x_{p_1},…,x_{p_n})⟨φ_{p_1}⋯φ_{p_n}⟩_ℓ for F flat on all diagonals (ASSEMBLY_N1 §0).
- The bare coupling g_0(K, g) does not depend on ℓ, because Lemma D″ runs on the whole-lattice β_j (SOURCES_T2_VOL table row 3) [V]. So one sequence of lattice measures μ_{K,ℓ} exists for every pair (K, ℓ), with the same g_0 for all ℓ.

### 1.2 The test-function class
"Gauge-invariant smooth observables supported in a fixed ball" is read as follows. Target 2 controls only smeared products of the plaquette field off the diagonals. Wilson loops and other gauge-invariant observables are a separate class (ASSEMBLY §4, class C3) [V]. So W is stated for this class only:
- For a ball B ⊂ R⁴, D_n(B) := {F ∈ C_c^∞((B)^n) : ∂^α F = 0 on every diagonal x_i = x_j, all α}.
- For ℓ > 2 diam B (and B centred at the origin) the ball embeds isometrically in T⁴_ℓ. Then S_{n,ε,ℓ}(F) is defined for F ∈ D_n(B).

### 1.3 Statement W
W. There is a sequence (K_i, ℓ_i) with K_i → ∞, ℓ_i → ∞, ℓ_i ∈ 2N, ℓ_i > 22M, such that for every n ≥ 1, every ball B, and every F ∈ D_n(B), the limit S_n(F) := lim_i S_{n,ε_i,ℓ_i}(F) exists. The family {S_n} has:
- OS0 (regularity, temperedness with linear growth): there are s, D, and q with |S_n(F)| ≤ A(n!)^D |F|_{sn} where |F|_p := max_{|α|≤p} sup (1+|x|²)^{p/2}|∂^α F|. So S_n extends to ⁰S_n(R^{4n}) (Schwartz functions flat on diagonals) [target].
- OS1-T: S_n(F(· − a)) = S_n(F) for all a ∈ R⁴. OS1-H: S_n(F ∘ R^{−1}) = S_n(F) for R in the hypercubic group B_4 (signed permutations of axes). OS1-R (full SO(4)): NOT part of W; stated as a separate open item (§5).
- OS2 (reflection positivity) for the time reflection θ(x_0, x⃗) = (−x_0, x⃗) and F_n supported in {x_0 > 0}^n.
- OS3 (symmetry): permutation symmetry; S_n(F̄) = conj S_n(F).
- Not part of W: OS4 (clustering), uniqueness of the limit, mass gap, full O(4).

### 1.4 Two choices that matter
- Joint limit. One sequence (K_i, ℓ_i), both indices moving. This needs bounds uniform in K and ℓ jointly. The order "ℓ → ∞ first at fixed ε" is also possible: compactness of SU(2)^{links} gives infinite-volume Gibbs states on εZ⁴ at any coupling [R, standard]. But then the ε-uniform bounds must hold for those Z⁴ states. That is the same problem (§2.6). So W uses the joint limit.
- What fixes the physics. The coupling g is the unit-scale coupling. Scales above 1 are never renormalized. W does not need them: it asks for local bounds only. The limit is "the theory whose unit-scale coupling is g", not a theory with a fixed dynamical scale Λ_YM. The plan's ξ_g ≈ exp((g^{−2} − γ^{−2})/b) remark (PLAN §0) is about the IR, which W does not touch [I].

Ledger §1: [V] inputs of 1.1; [I] the reading of the observable class and of the limit's physics; W itself is a definition.
