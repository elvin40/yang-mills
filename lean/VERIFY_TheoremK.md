IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# VERIFY_TheoremK — statement check of TheoremK.lean and Gronwall.lean

Build: `lake build` passes (2096 jobs); no `sorry`; every theorem depends only on propext, Classical.choice, Quot.sound.

## Section references in the task vs the sources

- KAPPA_BOUNDED §2–§4 contain the analysis (Lemma 2.1, Prop. 2.2, the infrared part, (B2)). Theorem K and the window bound (5.1) are in §5.1–§5.2. The Lean files cite §5.
- THEOREM2_PROOF_v4 §4.1 is Route K (a proof-structure summary). It contains no Gronwall lemma and no interpolation lemma. Theorem C1 is in §5.3 (source B2_TWOSTEP.md). Its recursion is a contraction N_j ≤ q N_{j−1} + Z (KAPPA_BOUNDED Prop. 4.1 proof; THEOREM2_PROOF_v4 §5.1), not a (1 + ε_j) Gronwall recursion.

## Theorem by theorem

| Lean | Matches | Difference |
|---|---|---|
| `telescoping_bound` | Task item (1). No literal statement in the sources: KAPPA_BOUNDED bounds S_k − kb directly (|d_k| ≤ κ_*), not by summing per-step errors. | Real-valued, abstract. Any n ≥ 0. No sign condition on D (D ≥ 0 follows from the hypothesis). |
| `telescoping_bound_tsum` | Task item (1), summable corollary. | Needs D ≥ 0 and `Summable D`. |
| `window_of_partial` | KAPPA_BOUNDED (5.1): |S_k − kb| ≤ κ_* for all k ⇒ T_0(k, K) ∈ [b(K−k) − 2κ_*, b(K−k) + 2κ_*]. This is the telescoping step that turns Theorem K into the two-sided window bound. | Also covers k = K (the note states k < K). No b > 0 needed. Output is the hypothesis `hwin` of `lemma_DDoublePrime` with R = κ_*. |
| `discrete_gronwall`, `discrete_gronwall_exp` | Task item (2), as stated. | Not in THEOREM2_PROOF_v4 §4.1; see above. |
| `contraction_bound` | KAPPA_BOUNDED Prop. 4.1 proof: N_j ≤ (h²/L⁴) N_{j−1} + Z_2 ⇒ N_j ≤ N_0 + Z_2/(1 − h²/L⁴). Same recursion as Theorems C1 (q = ρ_2²/L²) and B2 (q = ρ_2²/L⁴). | Abstract real recursion. The operator inequalities (form norm ±s ≤ N(Δ + 1)) that produce the recursion are not formalized. |

## Item (3), window to pointwise

Skipped. `lemma_DDoublePrime` conclusion 5 ((d)) already gives, for every trajectory and m ≤ n ≤ K with n − m ≥ 8R/b: u_n + (b/2)(n − m) ≤ u_m ≤ u_n + B′(n − m). That is the pointwise two-sided bound of KAPPA_BOUNDED §5.4 with the constants b/2 and B′ = 5b/4 + 2R.

## Not formalized

Theorem K itself (Prop. 2.2: |d_j| ≤ κ_*), Theorem C1 itself, and the identification of the abstract sequences with S_k, N_j, κ_k.
