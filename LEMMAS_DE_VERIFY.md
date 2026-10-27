# Verification of Lemma D and Lemma E (LEMMAS.md) and of the reduction in THEOREM2.md §3

Date 2026-10-27. Adversarial check, no web. Notation: u_k := 1/g_k², t := 1/g², K steps, 0 < β ≤ β′.

## Summary table

| Claim | Verdict |
|---|---|
| D1. Every u_0 in the written interval I = [t+β′K, t+β′K+(β′−β)K] gives an admissible trajectory | CORRECT (needs the forward induction below; the "u_k ≥ u_K" phrasing presupposes the trajectory exists) |
| D2. F(u_0) := u_K is continuous on I | CORRECT (no open-set issue) |
| D3. IVT endpoint inequalities F(t+β′K) ≤ t ≤ F(t+β′K+(β′−β)K) | WRONG. F ≥ t on all of I. The written proof does not prove existence. |
| D4. 1/g² + β(K−k) ≤ 1/g_k² ≤ 1/g² + β′(K−k) along any trajectory with g_K = g | CORRECT |
| D5. "g_k ≤ g ≤ γ automatically" | CORRECT |
| D6. Conversion to (0.31) with log(L^k ε)^{−1} = (K−k) log L | CORRECT (Balaban's β = ours / log L) |
| D7. Lemma D statement without the extra condition; delete the "[correction: …]" bracket | CORRECT (the statement is true) — but only after the proof is replaced; see corrected proof |
| E1. h_j/g² analytic; evenness used correctly | CORRECT (evenness is used correctly; it is not needed, see E5) |
| E2. Maximum principle on \|g\| = r/2 gives \|h_j(g)\| ≤ 8M g²/r² | CORRECT |
| E3. Constant γ := min(r/2, r·sqrt(β_0/(4M))) gives \|h_j\| ≤ β_0/2 | WRONG as written. With the proof's bound, g ≤ γ gives only \|h_j\| ≤ 2β_0. Fix: either γ := r·sqrt(β_0/(16M)) or sharpen the max principle (ρ ↑ r), which rescues the stated γ. |
| E4. Upper bound β_j ≤ β_0′ + β_0/2 | CORRECT |
| E5. Lemma E as the step (T2-a1)+(T2-a2) ⇒ (T2-a) | CORRECT WITH FIX: its analytic-disc hypothesis is stronger than (T2-a2) and probably false for Balaban's β_j (see §2.4); state (T2-a2) as a real bound and the step is two lines |
| §3 reduction | CORRECT WITH FIX: hidden continuity hypothesis stated too weakly; history-uniformity hidden in Lemma E; off-flow definition of β_j^{(0)} |

## 1. Lemma D

### 1.1 D1 — admissibility of the written interval I: CORRECT, phrasing fixed

The recursion u_{k+1} = u_k − β_{k+1}(g_0,…,g_k) is defined only while g_0,…,g_k ∈ ]0,γ], i.e. u_0,…,u_k ≥ 1/γ². The written text argues "u_k ≥ u_K and u_K ≥ 1/γ²", which uses u_K before the trajectory is known to reach step K. The forward induction repairs this: assume u_0,…,u_k ≥ 1/γ² (so β_{k+1} is defined). Then

  u_{k+1} ≥ u_0 − β′(k+1) ≥ t + β′K − β′(k+1) = t + β′(K−k−1) ≥ t ≥ 1/γ²,

for every u_0 ≥ t + β′K and every k+1 ≤ K. So every u_0 ≥ t + β′K (in particular the lower endpoint of I, where u_K ≥ t exactly) is admissible. The arithmetic u_K ≥ u_0 − β′K ≥ t is right.

### 1.2 D2 — continuity of F on I: CORRECT

By the same induction, u_0 ↦ (u_0,…,u_k) is continuous on I with values in [1/γ²,∞)^{k+1}, so (g_0,…,g_k) = (u_0^{−1/2},…) lies in ]0,γ]^{k+1}, where β_{k+1} is continuous by hypothesis. Compositions of continuous maps between subsets of Euclidean spaces are continuous; the domain of β_{k+1} does not need to be open, and I does not need to be open. No gap.

### 1.3 D3 — the IVT step: WRONG

For every admissible u_0, F(u_0) = u_0 − Σ_{i=1}^K β_i ∈ [u_0 − β′K, u_0 − βK]. On I the lower endpoint is u_0 = t + β′K, so F(u_0) ≥ t there, not ≤ t as written. On all of I, F ≥ u_0 − β′K ≥ t. The IVT therefore gives nothing.

Counterexample to the written proof: β_i ≡ 3/2 (so β = 1, β′ = 2), K = 1, γ = 1, g = 1 (t = 1). Then I = [3, 4] and F(u_0) = u_0 − 3/2 ∈ [3/2, 5/2] never equals 1. The solution u_0 = 5/2 lies in [t + βK, t + β′K] = [2, 3], which is exactly the interval of the "false start". (Numerical check with history-dependent oscillating β's, K = 6: min_I F = 2.90 > t = 1.)

So the correct IVT interval is J := [t + βK, t + β′K]: F(t+βK) ≤ t ≤ F(t+β′K). The false start was right about the interval and wrong only in how it handled admissibility: on J the forward induction gives u_k ≥ t + βK − β′k, which is ≥ 1/γ² for all k ≤ K only if t ≥ 1/γ² + (β′−β)K. That is the struck condition in the conclusion (with (β′−β)K, not β′K). Without the condition one needs one of the two arguments below.

### 1.4 Corrected proof (under the stated hypotheses: β_{k+1} continuous on the cube ]0,γ]^{k+1})

Clamp the couplings. Let φ(u) := (max(u, 1/γ²))^{−1/2}, a continuous map ℝ → ]0,γ]. Define the extended flow on all of ℝ:

  ũ_0 := u_0,  ũ_{k+1} := ũ_k − β_{k+1}(φ(ũ_0),…,φ(ũ_k)),  k = 0,…,K−1.

Each step is a continuous function of (ũ_0,…,ũ_k) ∈ ℝ^{k+1} (composition of φ with β_{k+1}, continuous on the cube), so F̃(u_0) := ũ_K is continuous on ℝ, and F̃(u_0) ∈ [u_0 − β′K, u_0 − βK]. Hence F̃(t+βK) ≤ t ≤ F̃(t+β′K), and the IVT gives u_0* ∈ J with F̃(u_0*) = t.

Along this extended trajectory, ũ_k = ũ_K + Σ_{i=k+1}^K β̃_i ≥ t ≥ 1/γ² for every k ≤ K (each β̃_i ≥ β > 0). So φ(ũ_k) = ũ_k^{−1/2} =: g_k ∈ ]0,γ] for all k, the clamp is never active, the extended recursion coincides with the original one, g_0 := (u_0*)^{−1/2} ∈ 𝒜 and g_K = g. The inequality u_k − u_K = Σ_{i=k+1}^K β_i ∈ [β(K−k), β′(K−k)] is the displayed bound. ∎

(Numerically checked, K = 6, oscillating history-dependent β's: bisection on F̃ over J converges, all u_k ≥ 1/γ², bounds hold.)

### 1.5 Alternative proof under a weaker hypothesis (relevant to §3)

In Balaban's setting β_{k+1} is defined only for histories (g_0,…,g_k) that are actual RG trajectories with all g_i ≤ γ, not on the whole cube. The clamping proof needs the cube. The following nested-interval proof needs only: for each k ≤ K−1, the map u_0 ↦ u_{k+1} is defined and continuous on D_k := {u_0 : u_0,…,u_k ≥ 1/γ²}.

Write m_k := t + β(K−k), M_k := t + β′(K−k). Claim: for each k ≤ K there is an interval [a_k, b_k] ⊆ D_k with u_k(a_k) = m_k, u_k(b_k) = M_k and u_k([a_k,b_k]) ⊆ [m_k, M_k].
- k = 0: [a_0,b_0] := [m_0, M_0] = J ⊆ [1/γ², ∞) = D_0 since t ≥ 1/γ².
- k → k+1: on [a_k,b_k] all of u_0,…,u_k are ≥ m_k ≥ t ≥ 1/γ², so u_{k+1} is defined and continuous there, with u_{k+1}(a_k) ≤ m_k − β = m_{k+1} and u_{k+1}(b_k) ≥ M_k − β′ = M_{k+1}. Let b_{k+1} := min{x ∈ [a_k,b_k] : u_{k+1}(x) = M_{k+1}} (exists by IVT and continuity), then a_{k+1} := max{x ∈ [a_k, b_{k+1}] : u_{k+1}(x) = m_{k+1}}. On (a_{k+1}, b_{k+1}) the continuous u_{k+1} takes neither value m_{k+1} nor M_{k+1}, so by the IVT it stays in (m_{k+1}, M_{k+1}). Since u_{k+1} ≥ m_{k+1} ≥ t ≥ 1/γ² there, [a_{k+1}, b_{k+1}] ⊆ D_{k+1}.
- k = K: m_K = M_K = t, so a_K = b_K =: u_0* and u_K(u_0*) = t. The bounds m_k ≤ u_k ≤ M_k along this trajectory are the claim. ∎

### 1.6 D4–D7

- D4: telescoping, correct for any trajectory that reaches step K with g_K = g.
- D5: u_k ≥ u_K = t because every β_i > 0, so g_k ≤ g ≤ γ. Correct.
- D6: ε = L^{−K}, so (L^k ε)^{−1} = L^{K−k} and log(L^k ε)^{−1} = (K−k) log L. Balaban's constants are β_Bal = β/log L, β′_Bal = β′/log L. At k = K both sides give 1/g², consistent with g_K = g. Correct.
- D7: delete both the struck condition "with 1/g² ≥ 1/γ² + β′K" and the bracket; the conclusion reads "For every g ∈ ]0,γ] there is g_0 ∈ 𝒜 with Φ_K(g_0) = g, and 1/g_0² ∈ [1/g² + βK, 1/g² + β′K]". Replace the whole proof paragraph by §1.4 (or §1.5). The present proof paragraph must not stay: it proves nothing.

Minor: the hypothesis "0 < β" is used (strict decrease gives g_k ≤ g); keep it.

## 2. Lemma E

### 2.1 E1 — evenness and h_j/g²: CORRECT

h_j(0) = 0 by definition. "Even on the real axis" plus the identity theorem gives β_j(g) = β_j(−g) on the disc, so all odd Taylor coefficients vanish, h_j′(0) = 0, and h_j(g)/g² has a removable singularity. The parenthetical "β_j(g) = β_j^{(0)} + O(g²)" is a consequence, not an extra assumption. |h_j| ≤ |β_j| + |β_j(0)| ≤ 2M, correct.

Evenness is automatic in Balaban's scheme for real g > 0: the step (0.17) depends on g_k only through 1/g_k², so any quantity extracted from it is a function of g². The natural analytic variable is z = g² (or 1/g²); in that variable the same Schwarz/max-principle argument needs only h_j(0) = 0 and no evenness. Also, without evenness, Schwarz on h_j/g gives |h_j| ≤ 4M|g|/r and (T2-a) still follows with γ ~ rβ_0/(8M); evenness only improves the rate to O(g²).

### 2.2 E2, E3 — the constant: WRONG as written

Max principle for q := h_j/g² on |g| ≤ r/2: |q| ≤ 2M/(r/2)² = 8M/r². Correct. Then |h_j(g)| ≤ 8M g²/r² ≤ β_0/2 iff g² ≤ β_0 r²/(16M) iff g ≤ r·sqrt(β_0/(16M)) = (r/4)sqrt(β_0/M). The conclusion's γ = r·sqrt(β_0/(4M)) is twice that; at g = γ the proof's bound gives 8M γ²/r² = 2β_0, which does not give positivity. (Check: r = 1, M = 3, β_0 = 1/2: 8Mγ²/r² = 1.0 vs β_0/2 = 0.25.)

Two fixes; either is enough.
- Fix A (keep the stated γ, sharpen the proof): apply the max principle on |g| = ρ for every ρ < r: |q| ≤ 2M/ρ² on |g| ≤ ρ; let ρ ↑ r to get |h_j(g)| ≤ 2M|g|²/r² on the open disc |g| < r. Then g² ≤ β_0 r²/(4M) gives |h_j| ≤ β_0/2, i.e. g ≤ r·sqrt(β_0/(4M)) = γ. The clause min(·, r/2) is redundant: β_0 ≤ β_j(0) ≤ M, so sqrt(β_0/(4M)) ≤ 1/2 and γ ≤ r/2 < r automatically.
- Fix B (keep the proof, shrink γ): γ := r·sqrt(β_0/(16M)) (again ≤ r/4, so min with r/2 is redundant).

Recommend Fix A; conclusion then stands verbatim with "min(r/2, ·)" deletable.

### 2.3 E4 — bounds: CORRECT

h_j is real on the real axis (β_j real there), so β_0/2 ≤ β_0 − β_0/2 ≤ β_j(g) ≤ β_0′ + β_0/2 for g ∈ ]0,γ]. Correct.

### 2.4 E5 — is Lemma E the right abstraction of (T2-a1)+(T2-a2)? CORRECT WITH FIX

Two mismatches between Lemma E and THEOREM2 §3:

(a) (T2-a2) says "β_j(g) − β_j^{(0)} = O(g²) uniformly in j, for g in a complex neighbourhood of ]0,γ]". A neighbourhood of the segment ]0,γ] need not contain g = 0; Lemma E assumes analyticity on a full disc |g| < r centred at 0 with a uniform bound. That is a much stronger hypothesis, and for Balaban's β_j it is almost certainly false: the RG step has a small-field/large-field split (χ_k) and large-field contributions of size exp(−c/g²), and even the one-step integrals are asymptotic (not convergent) series in g². exp(−c/g²) is not analytic at g = 0. So the disc hypothesis cannot be delivered by (0.25)/(0.29) or CMP 116, and the Cauchy-estimate route in (T2-a2) can only work on a region bounded away from 0 — where it is not needed.

(b) The fix is to state (T2-a2) as a real-variable bound, which is what the perturbative extraction actually provides: there are γ_0 > 0 and C < ∞, uniform in j and in the earlier (admissible) history, with |β_j(g) − β_j^{(0)}| ≤ C g² for g ∈ ]0,γ_0]. Then Lemma E is two lines: γ := min(γ_0, sqrt(β_0/(2C))) gives β_0/2 ≤ β_j ≤ β_0′ + β_0/2. Keep the Schwarz version as a remark for the case where an analytic disc does exist.

(c) Hidden uniformity: Lemma E's hypothesis fixes "the earlier ones". For (T2-a) the constants r, M (or C), β_0, β_0′ must be uniform over all admissible histories (g_0,…,g_{j−2}), not only over j. The lemma's "sup_j" must be read as sup over j and over histories.

## 3. The reduction in THEOREM2.md §3

Formally complete: (T2-a) supplies β, β′, γ uniform in j; Lemma D (corrected) then gives, for every K and every g ∈ ]0,γ], a g_0(ε,g) with all g_k ≤ g ≤ γ, g_K = g, and the two-sided bound, which is (0.31) with β_Bal = β/log L, β′_Bal = β′/log L. Balaban's "γ sufficiently small" is the γ of (T2-a) (any smaller γ also works: all hypotheses restrict to the smaller cube). Balaban's "g sufficiently small" is only g ≤ γ; the reduction delivers the stronger "all g ∈ ]0,γ]". The circularity worry (β_j is defined from ρ_{j−1}, which Theorem 1 controls only when the history lies in ]0,γ]) is not a circularity: the shooting argument only ever evaluates β_{k+1} on histories already known to lie in ]0,γ], which is exactly where Theorem 1 defines them.

Hidden hypotheses, in decreasing order of weight:

1. Continuity. (T2-b) says "continuity of g_0 ↦ (g_1,…,g_K) on the admissible set". That is too weak for either proof. The clamping proof needs each β_{k+1} continuous on the cube ]0,γ]^{k+1}, i.e. defined for histories that are not RG trajectories; the nested proof (§1.5) needs, for every k ≤ K−1, continuity of g_0 ↦ g_{k+1} on D_k (histories admissible through step k), not only on D_K = 𝒜. Neither is stated or proved anywhere; it is a claim about the RG map's dependence on the couplings (finite-volume steps are analytic in the parameters, but (4.37) takes an infinite-volume limit and the uniformity of that limit in g is a separate claim). It should be listed as part of (T2-a), since it is proved by the same analysis.

2. Dependence on ε = L^{−K}. Lemma D is for fixed K and needs β, β′, γ independent of K. β_j as a function is K-independent in the rescaled picture (the step from spacing L^{j−1}ε to L^j ε is the same unit-lattice block step after rescaling, in the infinite-volume limit), so "for every j" in (T2-a) is the right uniformity. Finite volume would reintroduce K-dependence; (T2-a) must be stated in infinite volume, as (4.37) does.

3. Definition of β_j^{(0)} in (T2-a1). "lim_{g→0} β_j at fixed earlier history" is an off-flow limit: on the flow, g_{j−1} is determined by the history. The limit is meaningful only if β_j is defined off-flow (cube hypothesis), or if β_j^{(0)} is defined directly as the one-loop coefficient of the step-j Gaussian integral (quadratic part of −(1/g²)A^η; the quadratic parts of the earlier E^{(i)} are relatively O(g²) and do not enter), which is history-independent and makes (T2-a1)'s "depends on j only" true by construction. The second definition is the one to use.

4. The "sufficiently small g" clause: no further content beyond g ≤ γ; the Remark under Lemma D is right.

5. Lemma E's analytic-disc hypothesis is not what (T2-a2) states and is probably unattainable (§2.4). Replace (T2-a2) by the real-variable bound; then (T2-a) = (T2-a1) + real O(g²) bound + continuity (item 1), and nothing else.

With items 1 and 5 folded into (T2-a), the reduction "Theorem 2 ⇐ (T2-a)" is complete and Lemma D (corrected) carries (T2-b).
