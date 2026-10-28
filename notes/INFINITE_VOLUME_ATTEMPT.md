# INFINITE_VOLUME_ATTEMPT — trying the subsequential infinite-volume limit from Target 2

Date: 2026-10-28 (Opus). Status: exploratory derivation attempt, unverified. Edits: this file only.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [P] proved here (short, unverified); [V] quoted from a project file or page image read this session; [I] inference, not printed anywhere; [R] standard literature result, text not re-read; [BLOCKED] the step fails with present tools.
Relation to INFINITE_VOLUME_PLAN.md (parallel agent, route survey; §0–§3.3 read at start, §4 onward not yet written at start). This file does not repeat the plan's ℓ-audit table V1–V9. It cites rows as "PLAN V#" and tries the proof steps. Where this file disagrees with the plan, it says so.

## 0. Running summary (final)
- Target W (§1): joint subsequential limit ε → 0, ℓ → ∞ of Target 2's off-diagonal plaquette-field moments, with OS0 (linear growth), translations, B_4, OS2, OS3. No O(4), no clustering, no uniqueness.
- Everything after an ℓ-uniform moment bound (H-U∞) passes with short proofs (§3–§5): compactness, OS0, OS1-T, OS1-H, OS2, OS3 [P]. No measure exists or is needed; (n!)^D growth is enough for OS II, not for Minlos (§3.2).
- Target 2's route to (H-U) is not ℓ-uniform at exactly one point: (FX) Step B, the unit-scale cluster expansion on the whole torus (§2.3, BP1, blocked). Z_ℓ cancels exactly (§2.2).
- Attempt (§2.4): skip Step B; keep the unit-scale integral as a probability measure μ̃_ℓ; use the law of total cumulance. Mixed blocks reduce to Lemma C without Step B (within reach). Singleton blocks need a new background-regularity bound (CG-b4) for fine large-field R-terms (§2.5, BP4, new mathematics, moderate).
- Full O(4) needs a rotation Ward identity for lattice artifacts (BP8, new mathematics). Uniqueness, clustering, gap: blocked (BP9).

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

### 2.5 Attempt at (CG-b): the oscillation of the conditional one-point function
w_i(V) = ∂_t w(t f_i, V)|_{t=0} splits by the terms of ρ̃^f (D4D5 S1; SOURCES_D2 (H.0), (H1)) [V for the list]:
1. Marginal term −A(w_K, V) = −Σ_p w_K(x_p)(1 − ½ Re tr V_p) (unit plaquettes). ∂_t gives −Σ_p u_K′(0) f_i(x_p)(1 − ½ Re tr V_p) + (h_K part). On small-field V, 0 ≤ 1 − ½ Re tr V_p ≤ C p(g)² g² per unit plaquette (small-field condition, Balaban's ε-type bound) [I]. #unit plaquettes meeting supp f_i ≤ C(1 + diam supp f_i)⁴. And u_K′(0) is the derivative of the final coupling w.r.t. the bare coupling: from g_{j+1}^{−2} = g_j^{−2} + β_{j+1}(g_j), d g_{j+1}^{−2}/d g_j^{−2} = 1 + O(g_j⁴), and Π_j (1 + O(g_j⁴)) converges because g_j⁴ ~ (b j log L)^{−2} [I, heuristic, assumes β_j = b log L + O(g_j²) with a C¹ remainder; the project's B-rows bound β_j, not its derivative]. Verdict: bounded, osc ≤ C ‖f_i‖_∞ (1 + diam)⁴. Within reach.
2. Unit-scale E-terms E_K^f(X, V), X ∈ D_K. O(1)(1 + diam)⁴ polymers meet supp f_i (FX4 entropy), each with Cauchy bound (2/r) E_0 e^{−κd}. Bounded uniformly in V. Within reach [I; follows from S1(c) as stated].
3. Step A polymers R_fin (unit-scale large-field components with their fine histories). Activity ≤ e^{−p_0(γ)} e^{−κ′d_K} per polymer [V, FX §6.1]; radius from (FX2) (FX §6.3(a)). Number meeting supp f_i: O((1 + diam)⁴) weighted by tree decay. Bounded. Within reach, carries the FX open items (A1) and (FX-D).
4. FINE R-, B-, e-terms built at scales m < K that stay in ρ̃ as functions of V (S1(c): radius τ(X) = c_τ r/(E_0 R̄_m⁴)) [V]. Here the attempt breaks. A sup bound fails: the number of fine large-field cubes in a fixed support is not ε-uniformly controlled. D4D5 §3.2(ii) [V]: per j-cube the suppression is exp(−c p_0(g_j)²), there are (Mλ_j)^{−4} j-cubes per unit volume, "the product → ∞ as λ_j → 0". Target 2 never meets this: in Lemma C a single fine term inside supp f_1 does not contribute to a MIXED derivative (D4D5 §3.2 consequence [V]). The total-cumulance route reintroduces singleton derivatives, so it meets it.
   What would save it: only the V-OSCILLATION of the fine sum enters (CG-b), not its size. The V-independent part is a constant (it shifts the mean; Σ_π drops it for |π| ≥ 2, and E_μ̃ w_i = ⟨ϕ(f_i)⟩ = 0 fixes it). Heuristic dimension count [I]: a scale-m term sees V only through the background field smoothed to scale m. By gauge invariance the leading V-dependence is through tr F_V², a dimension-4 density, so per m-cube the oscillation is ≲ (Mλ_m)⁴ |F_V|² × (the term's own size e^{−c p_0(g_m)} R̄_m⁴). Summed over the (h/Mλ_m)⁴ m-cubes of a bump of side h: ≲ h⁴ |F_V|² e^{−c p_0(g_m)} R̄_m⁴ per scale. Over scales, with g_m^{−2} ≈ g^{−2} + b (K − m) log L and p_0(g) = A_0 (log g^{−2})^{p_0}: Σ_j exp(−c A_0² (log j)^{2p_0}) (log j)^{4p_R} < ∞ for 2p_0 > 1 [I]. So the heuristic gives osc ≤ C h⁴ p(g)², uniformly in K and ℓ.
   Missing statement (CG-b4). "For every term T(X, V; f) of ρ̃^f built at a scale m < K: |∂_t T(X, V; t f)|_{t=0} − ∂_t T(X, 1; t f)|_{t=0}| ≤ C (Mλ_m)⁴ sup_X |F_V|² e^{−c p_0(g_m)} R̄_m⁴ e^{−κ d_m(X)} ‖f‖_{C¹}, uniformly in the small-field V, K, ℓ." This is a background-regularity (irrelevance-of-V) bound for large-field R-terms. Balaban states size bounds for these terms, never V-regularity bounds of this form [I; CMP 122 I–II not searched for it in this session]. Grade: NEEDS NEW MATHEMATICS inside Balaban's framework (moderate: same machinery, new quantity). It also needs the gauge-invariance argument made rigorous at the level of the R-operation, where the terms are not given as functions of F_V alone.

### 2.6 Alternatives tried and rejected
- DLR conditioning on links outside a box (a standard way to get volume-uniform local bounds). Then the local problem is a box of fixed physical size with ARBITRARY boundary links at scale ε. Balaban's construction is on a torus or with small-field boundary data (A15_LOC §5.1, the Λ_{k+1} boundary term B^{(k+1)} [V]). Arbitrary rough boundary data are not covered. Rejected: harder than (CG-b4) [I].
- Conditioning on the exact unit-scale marginal (no Step A). μ is then the true law of V and positive [P]. But V can be large field near supp f, and Balaban gives only an upper bound on ρ_K there (CMP 122 II (0.1) lower bound carries χ_k, small field only [V, page image]). The conditional expectation needs a lower bound on the denominator. A trivial bound on the large-field part costs ε^{−4n} (plaquette count), which no fixed probability can beat. Rejected; Step A is the right tool because it moves unit-scale large-field regions into local polymers.
- ℓ → ∞ first at fixed ε (Gibbs states on εZ⁴ by compactness) [R]. Then apply Lemma TC to the Z⁴ state. Balaban's RG on Z⁴ up to the unit scale is local (Loc), but μ̃ on Z⁴ is defined only as a limit of torus μ̃_ℓ, so nothing is gained; the same (CG-b) is needed. Not rejected, equivalent.
- Using Target 2's ℓ-dependent constants with ℓ_i → ∞ slowly. Fails: compactness needs a bound uniform along the sequence; A(ℓ_i) → ∞ gives none [P].

Ledger §2.4–2.6: [P] Lemma TC algebra, the oscillation bound, the Gevrey count, the rejections' logic; [V] the D4D5 §3.2(ii) obstruction and the S1/FX statements quoted; [I] (CG-pos) positivity of pieces, (CG-a) transfer of Lemma C, items 1–3 of 2.5, the dimension-count heuristic; [new math] (CG-b4).

## 3. Tightness (compactness) given (H-U∞)

(H-U∞), the exact bound needed. For every ball B there are A_B, s, D such that for all K ≥ K_0, all even ℓ ≥ ℓ_0(B), all n, all F ∈ D_n(B): |S_{n,ε,ℓ}(F)| ≤ A_B^n (n!)^D ‖F‖_{sn}, with A_B ≤ C(1 + diam B)^q. Section 2.4 delivers this with s = 6, D = 3 + 2η, q = 4 [conditional on (CG-pos), (CG-a), (CG-b)].

### 3.1 Topology and extraction [P]
- For fixed (n, B) let E_{n,B} be the closure of D_n(B) in the norm ‖·‖_{sn}. It is a closed subspace of C^{sn}(closure of B^n), hence a separable Banach space.
- The functionals S_{n,ε,ℓ} restricted to D_n(B) extend to E_{n,B} with norm ≤ A_B^n (n!)^D (by (H-U∞)). The closed ball of radius A_B^n (n!)^D in E′_{n,B} is weak-* compact (Banach–Alaoglu) and weak-* metrizable (E separable). So every sequence has a weak-* convergent subsequence.
- Take B_j = ball of radius j. The pairs (n, j) are countable. A diagonal extraction gives one sequence (K_i, ℓ_i) along which S_{n,ε_i,ℓ_i}(F) converges for every n, j and every F ∈ D_n(B_j). Restriction is compatible (D_n(B_j) ⊂ D_n(B_{j+1})), so the limits define one linear functional S_n on D_n(R⁴) := ∪_j D_n(B_j).
- Temperedness. Cover R⁴ by unit cubes c with a smooth partition of unity. For F ∈ ⁰S_n, F = Σ_{c_1…c_n} χ_{c_1}⋯χ_{c_n} F (flatness is preserved by multiplication). Each term lies in D_n(B) with diam B ≤ C(1 + max|c_i|), so |S_n(term)| ≤ C^n (1 + max|c_i|)^{qn} (n!)^D ‖χF‖_{sn}. The weight (1 + |x|²)^{p/2} in |F|_p with p = sn + qn + 5n pays for the polynomial factor and makes the sum over cubes converge. So |S_n(F)| ≤ C′^n (n!)^D |F|_{(s+q+5)n}: OS0 with linear growth (X2) [P, sketch].
- What the extraction needs: only a bound C(n, B)‖F‖_{s(n,B)} uniform in (K, ℓ). The factorial growth and the polynomial growth in diam B are not needed for compactness. They are needed for OS0 (linear growth, OS II reconstruction) and for the extension to Schwartz functions.

### 3.2 Is (n!)^{1+η} (or (n!)^{3+η}) enough for a measure? [P]
No, and the growth is not the reason.
- No measure exists for this field even at fixed ε → 0 in the usual sense. ϕ_ε(f) = Σ_p f(x_p)φ_p has variance ~ ε^{−4} (the contact term; ASSEMBLY §1.3 "What is claimed about measures" [V via PLAN §1.2]). No ε-independent rescaling makes both the contact part and the off-diagonal part finite. So the laws of ϕ_ε are not tight on S′(R⁴), and Bochner–Minlos has no input. The OS I/II objects are distributions on ⁰S_n (off-diagonal), not a measure.
- Even if a measure existed, moments with growth (n!)^D, D > 1, do not determine it. Carleman's condition Σ_n m_{2n}^{−1/(2n)} = ∞ fails: m_{2n}^{1/(2n)} ~ n^D, and Σ n^{−D} < ∞. The formal generating functional Σ_n S_n t^n / n! has radius zero for D > 1 (Gevrey class D − 1). So "Gevrey generating functional ⇒ measure" is false in general.
- What the growth IS enough for: OS II reconstruction (linear growth condition, X2). OS II needs σ_n ≤ A (n!)^D for some finite D and no measure. So the weak target W needs exactly (H-U∞) with any finite D.

Ledger §3: [P] all items; [R] Banach–Alaoglu, OS II (X2), Carleman.

## 4. OS2 (reflection positivity)

### 4.1 Lattice [R + P]
X3 (Osterwalder–Seiler 1978) [R]: on the periodic lattice with an even number of sites per side, for the reflection θ in a link plane (a plane bisecting links) and every Φ in the algebra A_+ of functions of the links of the half Λ_+ between the two seams, ⟨Θ(Φ) Φ⟩ ≥ 0 (Θ antilinear). ℓL^K even holds for ℓ even, L odd (D4D5 §2 [V]).
Embedding [P]. Let F_n ∈ D_n(B) with supp F_n ⊂ {δ < x_0 < T}^n, T < ℓ/2 − δ. For ε < δ/2 every plaquette with centre in supp F_n has all its links in Λ_+. So Φ := Σ_n ϕ^{⊗n}(F_n) ∈ A_+. The reflection maps plaquette p to θp, and c_ε = ⟨P_p⟩ is the same for p and θp (B_4 and translation invariance, ASSEMBLY §2.6 [V via D4D5 §2]). So Θ(ϕ^{⊗n}(F_n)) = ϕ^{⊗n}(conj(F_n) ∘ θ). Hence
  Σ_{n,m} S_{n+m,ε,ℓ}( (conj F_n ∘ θ) ⊗ F_m ) ≥ 0.
The argument (conj F_n ∘ θ) ⊗ F_m is flat on all diagonals: within each factor by assumption, and across factors because the supports are disjoint (x_0 < −δ vs x_0 > δ). So it lies in D_{n+m}.

### 4.2 Limits [P]
Lemma RP-lim. Let S^{(i)} be families of functionals with Σ_{n,m} S^{(i)}_{n+m}((conj F_n ∘ θ) ⊗ F_m) ≥ 0 for every finite sequence (F_n) in a fixed class 𝒞. If S^{(i)}_k(G) → S_k(G) for every G of the form above, the limit satisfies the same inequality on 𝒞. Proof: a finite sum of convergent real numbers, each ≥ 0, has limit ≥ 0. ∎
- Fixed ℓ, ε → 0 (Target 2): holds for supports in 0 < x_0 < ℓ/2 [ASSEMBLY §2.7, as PLAN §3.3 says].
- ε → 0 and ℓ → ∞ jointly: fix (F_n), all supported in a compact set inside {x_0 > 0}. For i large, ℓ_i/2 exceeds the support and ε_i < δ/2. So every approximant satisfies the inequality for this (F_n), and the limit does. The second seam at x_0 = ℓ/2 leaves to infinity and plays no role. Then extend to F_n ∈ ⁰S_n(R^{4n}_+) by continuity (OS0).
- Detail. The reflection plane of the lattice is at x_0 = 0 or x_0 = ε/2 depending on the convention (site plane vs link plane). The shift by ε/2 vanishes in the limit by the translation modulus of continuity (§5.1).
Verdict: OS2 passes to the infinite-volume limit with no new input beyond (H-U∞). [P]

Ledger §3–§4: [R] X3, Banach–Alaoglu; [P] the rest.

## 5. OS1 (Euclidean covariance)

### 5.1 Translations [P]
On T⁴_ℓ with spacing ε, translation by a ∈ εZ⁴ preserves the Haar product measure and the Wilson action, and maps φ_p to φ_{p+a}. So S_{n,ε,ℓ}(F(· − a)) = S_{n,ε,ℓ}(F) exactly (ASSEMBLY §2.6 [V via D4D5 §2]). For a ∈ R⁴ round to a_i ∈ ε_iZ⁴, |a − a_i| ≤ 2ε_i. Then |S_{n,ε_i,ℓ_i}(F_a) − S_{n,ε_i,ℓ_i}(F_{a_i})| ≤ A_B^n (n!)^D · 2nε_i ‖F‖_{sn+1} by (H-U∞) applied to the difference quotient (B enlarged by 1). This → 0. So every limit is translation invariant. Uses (H-U∞) at order sn + 1; nothing else.

### 5.2 Hypercubic group [P]
The origin is a site of every lattice L^{j}εZ⁴, j = 0, …, K (nested lattices, L odd) [V, D4D5 §2]. B_4 about the origin is an exact symmetry at every (ε, ℓ). So S_n(F ∘ R^{−1}) = S_n(F) for R ∈ B_4 in every limit. The two reflection planes of ASSEMBLY §2.7 are reflections x_0 ↦ −x_0 (∈ B_4) used for OS2. They give no rotation outside B_4.

### 5.3 Full O(4): what is missing, precisely
Missing statement (ROT). For every R ∈ SO(4), n, and F ∈ D_n(B): lim_{i} [S_{n,ε_i,ℓ_i}(F ∘ R^{−1}) − S_{n,ε_i,ℓ_i}(F)] = 0.
- Infinite volume removes one obstacle. On T⁴_ℓ, rotations outside B_4 are not symmetries of the torus at all (ASSEMBLY §4; LEMMAS ledger item 5 [V via ASSEMBLY l. 220]: on the torus the inclined comparison "gives only the tilted-axis reflection symmetry R_{2θ}s, never a rotation"). On R⁴ that geometric obstacle is gone.
- The remaining obstacle is the lattice: no approximant has any symmetry outside B_4. (ROT) says the B_4-symmetric but O(4)-breaking lattice artifacts vanish in separated correlations as ε → 0.
- Why it is expected [I]. Gauge-invariant, B_4-invariant, parity-even local densities of dimension ≤ 4: the B_4-invariant 4-tensors T_{μνρσ} are spanned by δ_{μρ}δ_{νσ}-type products and the all-indices-equal tensor δ_{μνρσ}; the latter contracts F_{μν}F_{ρσ} to Σ_μ tr F_{μμ}² = 0. So the only marginal term is Σ_{μν} tr F_{μν}², which is O(4) invariant. All O(4)-breaking terms have dimension ≥ 6, i.e. are irrelevant, and their coefficients carry λ_k² per scale. The observable φ_p summed over the six orientations has the same structure at leading order.
- Why it is not proved here. Balaban's bounds show irrelevant terms are BOUNDED at each scale; (ROT) needs that their total effect on S_n tends to ZERO. That is a convergence statement for a specific difference, along every subsequence. It is open even for lattice φ⁴₃ (reports/EUCLID_INV_LIT §1a, via PLAN §0 [V there]); Gubinelli–Hofmanová state rotation invariance as not obtained (same source).
- A possible route [I]: a rotation Ward identity, i.e. a bound |S_{n,ε}(F∘R^{−1}) − S_{n,ε}(F)| ≤ C(F) ε^θ or ≤ C(F) g_{k(ε)}^{2} with g_{k(ε)} → 0, obtained by tracking the dimension-6 part of every activity through Balaban's flow. This is a full new analysis of the irrelevant sector. Grade: NEEDS NEW MATHEMATICS.
- Consequence for reconstruction. Without (ROT), OS II gives a Hilbert space, a positive Hamiltonian, unitary translations, and the B_4 action; no Lorentz boosts [R, via PLAN §2.2].

## 6. Breaking points

| # | step | exact missing statement | grade |
|---|---|---|---|
| BP1 | (H-U∞) via Target 2's own route | an ℓ-uniform version of (FX) Step B: a convergent unit-scale cluster expansion on T⁴_ℓ uniform in ℓ | BLOCKED (infrared: massless unit-scale field; needs RG beyond scale 1, where g_k leaves ]0, γ]) |
| BP2 | conditional route, positivity (CG-pos) | each large-field piece ρ(Z, V) of CMP 122 I (0.2) is ≥ 0, so the Step A quotients are positive and μ̃_ℓ is a probability measure | within reach (a reading) |
| BP3 | conditional route, mixed blocks (CG-a) | Lemma C (D4D5 §4) with P_K = Step A polymers + A(w_K, ·) only, as a sup bound over small-field V, with all constants per polymer | within reach (re-reading; inherits the FX open items (A1), (FX-D), and Target 2's own open items) |
| BP4 | conditional route, singleton blocks (CG-b) | (CG-b4): V-regularity of fine (scale m < K) R-, B-, e-terms, ≲ (Mλ_m)⁴\|F_V\|² e^{−c p_0(g_m)} R̄_m⁴ e^{−κd} per term; plus u_K′(0) bounded (C¹ control of β_j) | NEEDS NEW MATHEMATICS (moderate; inside Balaban's framework; not a single page of Balaban states it) |
| BP5 | bridge re-bookkeeping ℓ → diam B | ASSEMBLY_N1 §3.4–§4.5 with T⁴ replaced by B and top scale δ ~ diam B | within reach (bookkeeping) |
| BP6 | nontriviality, ℓ-uniform | (NT) of ASSEMBLY §2.9 with constants uniform in ℓ. In the conditional route κ_2 = E_μ̃ w_{12} + Cov_μ̃(w_1, w_2); the first is the UV tree-level term ~ g(d)⁴ d^{−8} × (bump factors), the second is O(1) × bump factors by (CG-b). For d ≪ 1 the first dominates [I] | within reach given BP3, BP4 and the (NT) input of Target 2 |
| BP7 | Target 2 itself | every open row of TRUST_LEDGER §4.2 (e.g. B3, B15 sub-items, (FX) items, (E14-c)) | inherited; W is conditional on all of them |
| BP8 | full O(4) | (ROT) of §5.3 | NEEDS NEW MATHEMATICS (open in φ⁴₃ too) |
| BP9 | uniqueness of the limit, clustering (OS4), mass gap | joint convergence along the full sequence; decay of μ̃_ℓ correlations at scales ≫ 1 | BLOCKED (infrared; same reason as BP1) |
| BP10 | Wilson loops and other gauge-invariant observables | any bound for them | outside Target 2 (class C3); not attempted |

Steps that pass with no new input once (H-U∞) holds: compactness (§3.1), OS0 with linear growth (§3.1), translations (§5.1), B_4 (§5.2), OS2 (§4), OS3 (linear identities pass to limits, ASSEMBLY §2.8).

## 7. Verdict

A subsequential infinite-volume theorem in the sense of W needs one thing beyond Target 2: the moment bound (H-U∞), uniform in the torus side ℓ for test functions supported in a fixed ball. Everything after that is short and is written above: compactness by Banach–Alaoglu on separable Banach spaces plus a diagonal extraction, OS0 with linear growth, translations, the hypercubic group, reflection positivity, and symmetry. None of these steps uses infrared control. Target 2's own route to (H-U) cannot give (H-U∞). Its only real ℓ-dependence is (FX) Step B, the unit-scale cluster expansion on the whole torus, and that is an infrared statement for a massless field (BP1, blocked). The other ℓ-dependences are bookkeeping (BP5) or an artifact of the global Cauchy estimate. The normalization Z_ℓ cancels exactly and never needs a bound. The attempt above removes Step B: keep the unit-scale integral as a probability measure μ̃_ℓ and apply the law of total cumulance (Lemma TC). Then mixed conditional cumulants are Lemma C without Step B (BP3, within reach). Positivity of μ̃_ℓ is a reading (BP2, within reach). The new requirement is the singleton blocks (BP4): the conditional one-point function of the plaquette field must have a V-oscillation bounded uniformly in ε. For the unit-scale terms this is immediate. For fine large-field R-terms it needs a background-regularity bound that Balaban does not state. A dimension count makes it plausible; the count rests on gauge invariance (tr F² is the only dimension-4 term) and on summability of e^{−c p_0(g_m)²} over scales. This is the one piece of new mathematics on the weak route. A side effect, if BP4 is proved: the same argument at fixed ℓ would remove Target 2's dependence on Step B.

Deliverability at this project's pace. BP2, BP3, BP5 are of the size of one SOURCES_* item each (a reading or a re-run of a verified lemma with a changed input). BP4 is larger. It asks for a new estimate across the whole large-field R-operation (CMP 122 I–II), of the size of the (FX) reduction or larger. Its heuristic is solid, but the formal proof must track V-dependence through quotients of large-field integrals, where Balaban gives size bounds only. So a conditional statement "W holds, given Target 2's open rows and (CG-b4)" is deliverable at the current pace. An unconditional W is not, because it inherits every open row of Target 2 (BP7) plus BP4. Full O(4) (BP8) needs a new analysis of the irrelevant sector and is open even for φ⁴₃. Uniqueness, clustering, and the mass gap (BP9) are blocked by the same infrared problem as BP1. W is not a Clay solution: Jaffe–Witten footnote 2 excludes weak existence without the mass gap and the axioms (PLAN §2.3 [V there]).
