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

## 2. ℓ-uniformity of Target 2's bounds

### 2.1 Item-by-item verdict (new items only; UV items as in PLAN V5–V9)
| item | source | ℓ-uniform? | reason |
|---|---|---|---|
| per-polymer activity bounds, scales k < K | Loc (A15_LOC §5–§6), PLAN V7 | YES [V for the files' claims] | a non-wrapping polymer's torus activity equals its Z⁴ lift; constants E_0, κ, c_0 are volume-free |
| wrapping polymers | A15_BDRY §3.4, QE_INV §3.4 | YES, improves | weight ≤ C e^{−δ·(torus size)/2} [V via PLAN V6] |
| coupling flow β_j, g_0(K, g) | KUNIF §3.2, T2_VOL row 3 | YES | whole-lattice β_j; no ℓ in Lemma D″ [V]. Torus corrections to β_j are not used: the torus flow is defined by the Z⁴ β_j plus exponentially small irrelevant remainders booked per polymer (A15-N: \|β^{(N)} − β\| ≤ C_j N⁶ e^{−m_j N/2}) [V] |
| large-field factors e^{−p_0(g_j)} per j-cube | CMP 122 II (1.79)–(1.80) via FX §6.1 | YES per cube | local; only their SUM over the torus is extensive |
| sourced contact functional W_K[f] = Σ_X w^{(j)}(X; f) | D4D5 S1(b) [V] | YES per polymer | field- and region-independent; w(X; f) depends on f\|_X; sum over X meeting supp f is local |
| sourced local coupling w_k(x) = u_k(f(x)) + h_k(x) | SOURCES_D2 (H1) [V] | YES [I] | pointwise flow of 1/g_0² − f(x); no volume enters |
| stability (0.1): χ e^{−A/g² − E_−\|T\|} ≤ ρ_k ≤ e^{E_+\|T\|} | CMP 122 II p. 355 (page image, this session) [V] | per volume yes; as a bound on log Z NO | E_± are "independent of k, T_η, U_k" [V, p. 356]; the bound itself is e^{O(ℓ⁴)} |
| (S) constant C_S | ASSEMBLY_N1 §1 item 4 [V] | NO as written | "\|log Z − W\| ≤ E_+\|T_η\| … fixed torus volume ℓ⁴ … absorbed in C_S" |
| (S) via Lemma C (the verified derivation) | D4D5 §4, B21_S [V] | UV part YES; P_K part NO | Lemma C sums polymers of all scales m ≤ K that meet ≥ 2 supports. Scales m < K: per-polymer, ℓ-free. The scale-K family P_K includes (FX) Step B, the unit-scale cluster expansion on the whole ℓ⁴ unit lattice (FX §6.2) [V]. That is an infrared statement (§2.3) |
| bridge cube count (64ℓ/δ_m)^{4n}, top scale δ_3 = ℓ/8, fine region (12ℓ⁴)^n | ASSEMBLY_N1 §3.4, l. 116–124 [V] | NO as written; YES after re-bookkeeping | for supp F ⊂ B^n replace ℓ by diam B: tuples of cells and plaquettes outside B^n give zero; the scales with δ_m > 2 diam B have empty region {ρ ≥ δ_m/2} ∩ B^n [P] |
| (Vol) ℓ > 22M; A1/(C) torus-side | T2_VOL [V] | YES | lower bounds on ℓ |
| reflection positivity | X3 | YES | exact on every even torus |

### 2.2 The normalization Z_ℓ cancels [P]
S_{n,ε,ℓ}(F) is a moment of a normalized probability measure, so Z_ℓ never needs a bound. In the RG representation (D4D5 S1(a)) [V]: Z_ε[f]/Z_ε[0] = e^{−W_K[f]} I_K[f]/I_K[0]; the f-independent factor 𝒩_K cancels exactly. The remaining ratio I_K[f]/I_K[0] is again a normalized expectation, of e^{(local f-dependent part of the exponent)} under the probability measure μ̃_ℓ(dV) := ρ̂_K^0(V) dV / I_K[0] on the unit lattice (§2.4). So the extensive growth e^{c ℓ⁴} of Z_ℓ and of I_K is harmless. It cancels identically, not by an estimate.
The only way ℓ⁴ enters an expectation is through a bound on the DIFFERENCE log I_K[f] − log I_K[0] that is not local in f. Two such places exist:
- (a) the global Cauchy route, |log I_K[f]| ≤ C|T| from (0.1) (ASSEMBLY_N1 item 4, D4D5 §3.2 consequence of S1). Removable: Lemma C already replaces it by locality.
- (b) the (FX) Step B cluster expansion, which writes log I_K[f] − log I_K[0] as a sum of local unit-scale polymers. At fixed ℓ this is fine; uniformly in ℓ it needs a convergent expansion of a massless weakly coupled lattice gauge field on ℓ⁴ (§2.3).

### 2.3 Why Step B is the infrared problem [I, with V inputs]
After Step A (final R-operation, FX §6.1 [V]) the remaining integral is I_K[f] = ∫ dV_K χ exp(A_K^f + Σ_X R_fin(X)): a small-field lattice gauge field on the unit lattice of T⁴_ℓ, coupling g, with no block constraint left. Its Gaussian part has the massless lattice Laplacian on the gauge-fixed field, with zero modes on the torus. A cluster expansion with ℓ-uniform tree decay needs a covariance with ℓ-uniform exponential decay. That is false here. The standard way out is more RG steps up to scale ℓ, i.e. log_L ℓ more steps; the coupling g_k then leaves ]0, γ] after ≈ (g^{−2} − γ^{−2})/(b log L) steps (PLAN §0 [V there]). So a cumulant bound that uses Step B cannot be ℓ-uniform with present tools. At fixed ℓ, Step B is a finite-dimensional integral, and its constants grow with ℓ (how fast is not stated in FX §6.2 [I]).
Consequence. The route "Target 2 bounds, uniform in ℓ" fails at exactly one point: Step B. Every other ℓ-dependence is bookkeeping (bridge count) or an artifact (global Cauchy). Section 2.4 tries to remove Step B altogether.

Ledger §2: [V] table rows marked V; [P] §2.2 cancellation and the bridge re-bookkeeping; [I] §2.3 (massless covariance, ℓ-growth of Step B constants).

### 2.4 Attempt: remove Step B by conditioning on the unit-scale field (law of total cumulance)
Idea. Do not expand the unit-scale integral at all. Keep it as a probability measure μ̃_ℓ on unit-scale fields, and bound everything else uniformly in the unit-scale field V. This is the plan's (CG) direction (PLAN §0, "conditional source bound … plus positivity of the unit-scale marginal"); here it is made exact.

Setting. Use Step A (final R-operation, Z″ = ∅) but NOT Step B. Write, for real f near 0 (D4D5 S1(a) + FX §6.1):
  Z_ε[f]/Z_ε[0] = ∫ μ̃_ℓ(dV) e^{w(f, V)},  μ̃_ℓ(dV) := ρ̃^0(V) dV / ∫ρ̃^0,  w(f, V) := log ρ̃^f(V) − log ρ̃^0(V) − W_K[f],
where ρ̃^f(V) = χ(V) exp(A_K^f(V) + Σ_X R_fin(X, V; f)) is the post-Step-A density, supported on small-field unit-scale V. By construction w(0, V) = 0.

Lemma TC (law of total cumulance, multilinear form) [P; the identity is Brillinger 1969 [R]]. Let μ be a probability measure, and w(t, V) smooth in t ∈ R^n near 0 with w(0, V) = 0 and t-derivatives bounded uniformly in V. Put G(t) := log ∫ μ(dV) e^{w(t, V)}. Then
  ∂_{t_1} ⋯ ∂_{t_n} G(0) = Σ_{π ∈ Π([n])} κ^μ_{|π|}( w_B : B ∈ π ),  w_B(V) := ∂^B w(0, V) (∂^B = Π_{i∈B} ∂_{t_i}).
Proof. ∂^S e^{w}|_{t=0} = Σ_{π ∈ Π(S)} Π_{B∈π} w_B (Faà di Bruno for the exponential, each t_i at most once, w(0) = 0). So the "moments" m(S) := ∂^S ∫μ e^{w}|_0 = E_μ[Σ_{π∈Π(S)} Π_B w_B]. These are exactly the moments of a family whose cumulants are computed by Brillinger's formula with conditional cumulants w_B. Möbius inversion on the partition lattice gives the claim. ∎ (Algebraic; it does not need μ̃ to be the true marginal law of V. It needs μ̃ to be a probability measure and the identity Z[f]/Z[0] = ∫μ̃ e^{w}.)

Apply with f = Σ t_i f_i. Then κ_n(ϕ(f_1), …, ϕ(f_n)) = Σ_π κ^{μ̃}_{|π|}(w_B : B ∈ π). Three inputs are needed.

(CG-pos) μ̃_ℓ ≥ 0. S1(c) states the activities are "positive and real for real f" (D4D5 S1(c), L6) [V as a stated target]. Then ρ̃^0 = χ · exp(real) ≥ 0, provided the Step A quotients ∫dV_{Z′}ρ(Z, V)/∫dV_{Z′}ρ(∅, V) are positive, i.e. each large-field piece ρ(Z, V) ≥ 0. Each piece is the positive Wilson weight restricted by a nonnegative partition of unity over large-field geometries [I; not checked on the page]. Grade: within reach (a reading of CMP 122 I (0.2)).

(CG-a) Blocks |B| ≥ 2. Need sup_{V small field} |w_B(V)| ≤ (C σ^{−a})^{|B|} (|B|!)^{1+η} Π_{i∈B} N(f_i), uniformly in K and ℓ. This is Lemma C (D4D5 §4) with the scale-K family P_K reduced to Step A polymers and the nearest-neighbour term A(w_K, V). Lemma C's Steps 3–8 are per polymer: Cauchy on a polydisc of fixed radius, tree decay, entropy (FX4), the ℓ_2(n)^{4p_Rn} count [V, D4D5 l. 112–124]. None uses Step B except as one more polymer family. Its bounds are sup bounds on the analyticity domain, so they hold for every small-field V [I]. Every constant is per polymer, so ℓ-free by Loc and PLAN V7 [I]. Grade: within reach (re-reading Lemma C with P_K replaced).

(CG-b) Singleton blocks. For |π| ≥ 2 the μ̃-cumulant of order ≥ 2 is shift invariant in each argument, so only the oscillation osc(w_i) := sup_V w_i − inf_V w_i enters. For |π| = 1 only w_{[n]} enters (a mixed block, (CG-a)). So the need is
  osc_{V small field} w_i(V) ≤ C N(f_i), uniformly in K and ℓ.
Bound for bounded variables [P]: for k ≥ 2, |κ_k(X_1, …, X_k)| ≤ Fub(k) Π_j (osc X_j / 2), Fub(k) = Σ_π (|π|−1)! ≤ C^k k! (ordered Bell numbers).
Assembly [P, crude]: |κ_n| ≤ Σ_π C^{|π|}|π|! Π_{B∈π} b_B, with b_B from (CG-a) for |B| ≥ 2 and b_{{i}} = C N(f_i). Using |π|! Π_B |B|!^{1+η} ≤ (n!)^{2+η} and #Π([n]) ≤ n!: |κ_n| ≤ (C′σ^{−a})^n (n!)^{3+η} Π N(f_i). This is (S) with Gevrey order 3 + η and with C′ independent of ℓ. The bridge (ASSEMBLY_N1) then gives (H-U∞) with s = 6 and D = 3 + 2η, after the re-bookkeeping of §2.1 (ℓ → diam B) [I: N1's statement "order G ⇒ D = G + η" read from its header and §4; not re-derived]. OS II allows any finite D (X2) [V via ledger]. The order is wasteful; it does not matter for W.
