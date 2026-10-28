IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Verification: `YmLean.lemma_DPrime` against LEMMA_DPRIME.md §1

2026-10-27. Read: LEMMA_DPRIME.md, LEMMA_DPRIME_VERIFY.md, README.md, YmLean/LemmaDPrime.lean (405 lines).
Rule: a weaker hypothesis or a stronger conclusion is CONFIRMED. A stronger hypothesis or a weaker conclusion is a MISMATCH.

## Build and axioms

- `lake build`: success (1950 jobs, includes the new files). `grep sorry YmLean/*.lean`: no hits.
- `lake env lean` on `import YmLean` + `#print axioms YmLean.lemma_DPrime`:
  `'YmLean.lemma_DPrime' depends on axioms: [propext, Classical.choice, Quot.sound]`.

## Hypotheses and constants

| Note | Lean | Verdict |
|---|---|---|
| γ_0 > 0, C_1 ≥ 0, γ_Bal > 0, β_∞ > 0 | `hγ₀`, `hC₁`, `hγBal`, `hβinf` | CONFIRMED |
| B ≥ 0 | not assumed; follows from `hB 0` (`B_nonneg`) | CONFIRMED (weaker) |
| (i) recursion 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k), g_k = u_k^{−1/2} | `u (k+1) = u k - β (k+1) (1/√(u k))` inside `Shot` and the premises of (c), (d). Couplings in ]0, γ] force u_k > 0, so `1/√(u k)` = u_k^{−1/2} on every trajectory used. | CONFIRMED |
| (i) β_{k+1} ∈ C¹([0, γ_0]) | `hcont`: `ContinuousOn (β j) (Icc 0 γ₀)` | CONFIRMED (weaker: continuity only) |
| (i) \|β_{k+1}(g) − β_{k+1}(0)\| ≤ C_1 g on [0, γ_0] | `hlip` | CONFIRMED |
| (i) β_j independent of K; C_1 independent of j, K | β, C₁ are fixed before every `∀ K` | CONFIRMED |
| (ii) sup_j \|β_j(0)\| ≤ B | `hB : ∀ j, \|β j 0\| ≤ B` | CONFIRMED |
| (iii) β_j(0) → β_∞ > 0; J = least index with β_j(0) ≥ β_∞/2 for j > J | `hJ : ∀ j, J < j → β∞/2 ≤ β j 0`, J arbitrary | CONFIRMED (weaker: (iii) implies such J exists; the theorem holds for every such J, in particular the least one) |
| index j = 0 | `hcont`, `hlip`, `hB` also quantify over j = 0, which the note never uses (increments start at β_1). Strictly a stronger hypothesis on an unused index. It is removable: set `β 0 := fun _ => 0` (needs only B ≥ 0); no conclusion mentions `β 0`. | CONFIRMED (cosmetic) |
| γ = min(γ_0, γ_Bal, β_∞/(4C_1)), ∞ if C_1 = 0 | `hγ : γ = γdef γ₀ γBal C₁ βinf` (an `if C₁ = 0`) | CONFIRMED |
| B′ = B + β_∞/4 | `B'` | CONFIRMED |
| D = J·B′ | `D` | CONFIRMED |
| D′ = J·(B + β_∞/2) | `D'` | CONFIRMED |
| g_1 = (1/γ² + D)^{−1/2} | `g₁ = 1/√(1/γ² + D)` | CONFIRMED |
| K_0 = J + ⌈8D′/β_∞⌉ | `J + ⌈8D′/β∞⌉₊` (8D′/β∞ ≥ 0, so ⌈·⌉₊ = ⌈·⌉) | CONFIRMED |
| β = β_∞/4, β′ = B′ | literal in (c), (d) | CONFIRMED |
| clamped map φ(u) = max(u, 1/γ²)^{−1/2}, clamped flow ũ | `φ`, `flow` (proof devices only; not in the statement) | CONFIRMED |
| trajectory predicate ("g_k ∈ ]0, γ] for 0 ≤ k ≤ K, g_K = g") | `Shot β γ g K u`: recursion for k < K; `1/√(u k) ∈ ]0, γ]` for all k ≤ K; `u K = 1/g²`; `1/√(u K) = g` | CONFIRMED |

## Conclusions

| Note | Lean conjunct | Verdict |
|---|---|---|
| g_1 ≤ γ | 2nd conjunct | CONFIRMED |
| g_1 = γ if J = 0 | not in `lemma_DPrime`; new `g₁_of_J_zero` (LemmaDE.lean) | CONFIRMED (via new lemma) |
| γ ≤ γ_Bal (used in Remark 1) | 1st conjunct | CONFIRMED |
| (a) Σ_{i=k+1}^K β_i(0) ≥ −J·B, 0 ≤ k < K | `∀ K k, k ≤ K → -(J*B) ≤ …` | CONFIRMED (stronger: k = K allowed) |
| (a) −J·B ≥ −D | not stated; D = J(B + β∞/4) ≥ JB by unfolding | CONFIRMED (trivial, omitted) |
| (a) along trajectories with g_0..g_{K−1} ∈ ]0, γ]: T(k,K) ≥ −D | `∀ K c, (∀ i < K, c i ∈ ]0,γ]) → ∀ k ≤ K, -D ≤ Σ β i (c (i-1))` | CONFIRMED (stronger: no recursion required) |
| (b) ∀ g ∈ ]0, g_1], K ≥ 1: ∃ g_0 ∈ ]0, γ], g_k ∈ ]0, γ] (k ≤ K), g_K = g | `∀ K g, 0 < g → g ≤ g₁ → ∃ u, Shot β γ g K u` | CONFIRMED (stronger: K = 0 allowed) |
| (c) along trajectories from (b), k ≤ K: 1/g² + β(K−k) − D′ ≤ u_k ≤ 1/g² + β′(K−k) | any u with recursion, couplings in ]0, γ] for k < K, `u K = 1/g²` | CONFIRMED (stronger: every admissible trajectory, not only those of (b)) |
| (d) K ≥ K_0, k ≤ K, trajectories from (b): 1/g² + (β_∞/8)(K−k) ≤ u_k ≤ 1/g² + β′(K−k) | 7th conjunct, same trajectory class as (c) | CONFIRMED (stronger, as in (c)) |
| (d) for K ≥ K_0 shooting works for every g ∈ ]0, γ] | 8th conjunct: `∀ K ≥ K₀, ∀ g ∈ ]0, γ], ∃ u, Shot β γ g K u` | CONFIRMED |
| (d) last sentence: all β_j(0) > 0 ⇒ (0.31) for all K ≥ 1, g ∈ ]0, γ″], β_0 = min(min_{j≤J} β_j(0), β_∞/2), γ″ = min(γ_0, γ_Bal, β_0/(2C_1)), constants β_0/2, B + β_0/2 | NOT in `lemma_DPrime` (README lists Step 8 as not formalized). Now `lemma_DPrime_step8` (LemmaDE.lean): same hypotheses plus `hpos`, γ″ = `γdef γ₀ γBal C₁ (2β₀)`, conclusion γ″ ≤ γ_Bal and, for every K and g ∈ ]0, γ″], a `Shot` trajectory with both bounds. | MISMATCH for `lemma_DPrime` alone (weaker conclusion); CONFIRMED by `lemma_DPrime_step8` |
| (c) conversion to (0.31) via ε = L^{−K} | not formalized (no L in the abstract form) | N/A |

Remark on `lemma_DPrime_step8`: `β0min` takes the min over j ∈ {0, …, J}, so it includes the unused β_0(0) and requires β_0(0) > 0. With `β 0 := fun _ => β 1 0` the min and every conclusion equal the note's. Same cosmetic status as the j = 0 row above.

## Places where the formal statement is weaker than the note

1. Conclusion (d), last sentence (Step 8), is absent from `lemma_DPrime`. Closed by the separate theorem `lemma_DPrime_step8`.
2. "g_1 = γ if J = 0" is absent. Closed by `g₁_of_J_zero`.
3. The hypotheses on the unused index j = 0. Removable by a choice of `β 0`; no content.

No other mismatch. Not checked: Remarks 1–3, §5 (not mathematical statements in this abstract form), and the history-dependent variant (ledger L5).
