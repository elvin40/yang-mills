# Lean 4 formalization of Lemmas D′, D, E, H

Files (no `sorry`): `YmLean/LemmaDPrime.lean` (405 lines, `YmLean.lemma_DPrime`), `YmLean/LemmaDE.lean` (163 lines), `YmLean/LemmaH.lean` (132 lines). Statement check of Lemma D′: `VERIFY_LemmaDPrime.md`.
Source: `../LEMMA_DPRIME.md` §1–§2 (Steps 0–7), verified in `../LEMMA_DPRIME_VERIFY.md`.

## Toolchain

- Lean `v4.33.1` (`lean-toolchain`), Lake 5.0.0.
- Mathlib tag `v4.33.1` (commit `0df444a3`). The newest stable tag is `v4.35.0`. It needs a second toolchain (2.7 GB), and the disk had 4–6 GB free, so the project uses the installed toolchain.
- Dependencies are shallow clones in `.lake/packages` at the revisions of Mathlib's manifest. Only the import closure of `Mathlib.Analysis.Real.Sqrt` and `Mathlib.Topology.Order.IntermediateValue` was fetched (`lake exe cache get <modules>`, 1484 files, 1.5 GB). LemmaH.lean added the closure of `Mathlib.Analysis.SpecialFunctions.Log.Basic` (445 files from the local cache, no download; build dir now 1.5 GB).
- Build: `lake build` (all three files). Each file builds in a few seconds.

## Statement correspondence

Notation: `u k` = u_k = 1/g_k². The coupling is `1 / √(u k)` (= u_k^{−1/2} for u_k > 0). Sums `∑ i ∈ Ioc k K` are Σ_{i=k+1}^{K}. `(K - k : ℕ)` is K − k.

| LEMMA_DPRIME.md | Lean |
|---|---|
| β_j(g) | `β j g`, `β : ℕ → ℝ → ℝ` |
| γ_0 > 0, γ_Bal > 0, C_1 ≥ 0, β_∞ > 0 | `hγ₀`, `hγBal`, `hC₁`, `hβinf` |
| (i) β_j ∈ C¹([0, γ_0]) | `hcont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀)`. The proof uses only continuity, so the Lean hypothesis is weaker than C¹. |
| (i) \|β_j(g) − β_j(0)\| ≤ C_1 g on [0, γ_0] | `hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → \|β j g - β j 0\| ≤ C₁ * g` |
| (ii) sup_j \|β_j(0)\| ≤ B | `hB : ∀ j, \|β j 0\| ≤ B` (B ≥ 0 follows; not assumed) |
| (iii) β_j(0) → β_∞, and J | `hJ : ∀ j, J < j → βinf / 2 ≤ β j 0`. J is any such index; the least one gives the constants of the note. This is all the proof uses of (iii). |
| γ = min(γ_0, γ_Bal, β_∞/(4C_1)), ∞ if C_1 = 0 | `γdef γ₀ γBal C₁ βinf` (an `if C₁ = 0`), via `hγ : γ = γdef …` |
| B′, D, D′, g_1, K_0 | `B' B βinf`, `D J B βinf`, `D' J B βinf`, `g₁ γ J B βinf = 1/√(1/γ² + D)`, `K₀ J B βinf = J + ⌈8D′/β∞⌉₊` |
| recursion 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k) | `u (k + 1) = u k - β (k + 1) (1 / √(u k))` |
| clamped map φ(u) = max(u, 1/γ²)^{−1/2} | `φ γ u = 1 / √(max u (1 / γ ^ 2))` |
| clamped flow ũ_k from ũ_0 = u_0 | `flow β γ u₀ k` |

Conclusions of `lemma_DPrime` (one conjunction, in this order):

1. `γ ≤ γBal` and `g₁ γ J B βinf ≤ γ`.
2. (a), g = 0: `∀ K k, k ≤ K → -(J * B) ≤ ∑ i ∈ Ioc k K, β i 0`.
3. (a), along trajectories: for every `c` with `c i ∈ ]0, γ]` for `i < K`, and `k ≤ K`, `-D ≤ ∑ i ∈ Ioc k K, β i (c (i - 1))`.
4. (b): `∀ K g, 0 < g → g ≤ g₁ → ∃ u, Shot β γ g K u`. `Shot β γ g K u` means: the recursion holds for `k < K`; `1/√(u k) ∈ ]0, γ]` for all `k ≤ K`; `u K = 1/g²`; and `1/√(u K) = g`. The lemma holds for every K ≥ 0 (the note says K ≥ 1). g_0 is `1/√(u 0)`.
5. (c): for every `u` with the recursion for `k < K`, couplings `1/√(u k) ∈ ]0, γ]` for `k < K`, and `u K = 1/g²`: for all `k ≤ K`, `1/g² + (β∞/4)(K−k) − D′ ≤ u k ≤ 1/g² + B′(K−k)`. The trajectories of (b) satisfy these hypotheses.
6. (d): the same trajectories, for `K ≥ K₀`: `1/g² + (β∞/8)(K−k) ≤ u k ≤ 1/g² + B′(K−k)`.
7. (d), second part: for `K ≥ K₀` and every `g ∈ ]0, γ]`, `∃ u, Shot β γ g K u` (IVT on [t + (β∞/8)K, t + B′K]).

## Proof map (Lean lemma ↔ step of the note)

- Step 0 (P1)–(P3): `P1`, `P2`, `P3` (from `pert`: \|β_j(x) − β_j(0)\| ≤ C_1γ ≤ β∞/4).
- Step 1 / Step 6 / Step 7 counting: `early J k K` = #{i ∈ (k, K] : i ≤ J}, `early_le_J`, `window_sum_ge`, `window_sum_le`; then `tail_ge_neg_D` (a), `tail_le` (1.2), `tail_ge_c` (Step 6), `tail_ge_d` (Step 7).
- Telescoping u_k − u_K = T(k,K): `telescope`, `tail_eq`, `flow_tail`.
- Step 2: `φ_pos`, `φ_le`, `φ_eq`, `φ_cont`, `flow_cont` (induction on k; `ContinuousOn.comp_continuous` with φ mapping into ]0, γ] ⊆ [0, γ_0]).
- Steps 3–4: `flow_ivt` (Mathlib `intermediate_value_Icc`), brackets inside `shooting`.
- Step 5: `clamp_inactive`, `shot_of_flow`, `t_ge_of_le_g₁` (g ≤ g_1 ⇒ 1/g² ≥ 1/γ² + D). The bound ũ_k ≥ t − D is proved for the clamped flow first, then the clamp is removed, as in the note.
- Step 7 shooting: `shooting_large_K`.

## Not formalized

- Step 8 is now `lemma_DPrime_step8` (LemmaDE.lean).
- Remark 3 / ledger L5 (history-dependent β_j).
- Remarks 1, 2 and §5 (fit to Balaban's Theorem 1; not a mathematical statement in this abstract form).

## LemmaDE.lean (LEMMAS.md Lemmas D, E, corrected; one-argument β_j as in LemmaDPrime)

- `lemma_D β γ b b'`: `0 < γ`, `0 ≤ b ≤ b'`, `β j` continuous on `]0, γ]`, `b ≤ β j x ≤ b'` for `x ∈ ]0, γ]`. Conclusions: (1) every trajectory with couplings in `]0, γ]` for `k < K` and `u K = 1/g²` has `1/g² + b(K−k) ≤ u k ≤ 1/g² + b'(K−k)`; (2) for every `K` and `g ∈ ]0, γ]`, `∃ u, Shot β γ g K u` with these bounds. Hypotheses weaker than the note (0 ≤ b, continuity and bounds only on `]0, γ]`, K = 0 allowed). The history-dependent β_{k+1}(g_0, …, g_k) of LEMMAS.md is NOT formalized.
- `γE γ₀ C β₀ = if C = 0 then γ₀ else min γ₀ √(β₀/(2C))`. `lemma_E β β1 γ₀ C β₀ β₀'`: `β₀ ≤ β1 j ≤ β₀'` (β1 = β_j^{(0)}), `|β j g − β1 j| ≤ C g²` on `[0, γ₀]` ⇒ `0 < γE ≤ γ₀` and `β₀/2 ≤ β j g ≤ β₀' + β₀/2` for `g ∈ ]0, γE]`.
- `lemma_DE`: E + continuity on `[0, γ₀]` ⇒ shooting for every K and `g ∈ ]0, γE]` with bounds `β₀/2`, `β₀' + β₀/2`.
- `lemma_DPrime_step8`: Lemma D′ (d), last sentence. `β0min β J βinf = min(min_{j ≤ J} β_j(0), β∞/2)` (min over j = 0, …, J), `γ″ = γdef γ₀ γBal C₁ (2·β0min)`.
- `g₁_of_J_zero`: `g₁ γ 0 B βinf = γ`.

## LemmaH.lean (SOURCES_HBETA.md Lemma H, Step 1, abstract form)

- `Bp a v j = Σ_{i<j} a j i · v i` (B′_j, with `a j i` = ∂β_j/∂u_i), `εH a j = Σ_{i<j} |a j i|`, `PH a j = Π_{l=1}^{j} (1 + ε_l)`.
- `gronwall_telescope`: `Π_{l=1}^{K}(1+e_l) − 1 = Σ_{j=1}^{K} e_j Π_{l=1}^{j−1}(1+e_l)`. `prod_le_exp`: `Π(1+e_l) ≤ exp Σ e_l` for `e_l ≥ 0`.
- `lemma_H a v c x K`: `|v 0| ≤ 1`, `v (j+1) = v j − Bp a v (j+1)` for `j < K`, column sums `Σ_{j ∈ (i, K]} |a j i| ≤ c i` for `i < K`, `Σ_{i<K} c i ≤ x` ⇒ `Σ_{j=1}^{K} |B′_j| ≤ Π(1+ε_j) − 1 ≤ e^x − 1` and `|v k − v 0| ≤ e^x − 1` for `k ≤ K`.
- `lemma_H_half`: with `v 0 = −1` and `x ≤ log(3/2)`: `Σ |B′_j| ≤ 1/2` and `1/2 ≤ |v k| ≤ 3/2`.
- The hypothesis is the SUM of the column sums (Σ_j ε_j ≤ x, what the note's Step 2 produces). A bound on sup_i of the column sums alone is not enough: `a j (j−1) = −x`, other entries 0, gives Σ|B′_j| = (1+x)^K − 1.
- Not formalized: Step 2 (S_3 ≤ 2γ/β, i.e. Σ c_i ≤ x for c_i = ½C₁A g_i³), Step 3 (bootstrap on |c| ≤ 2r), and the Yang–Mills identification (I).

## Axioms

```
#print axioms YmLean.lemma_DPrime
'YmLean.lemma_DPrime' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_D' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_E' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_DE' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_DPrime_step8' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.g₁_of_J_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.gronwall_telescope' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_H' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_H_half' depends on axioms: [propext, Classical.choice, Quot.sound]
```
