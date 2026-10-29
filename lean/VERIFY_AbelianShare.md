# Statement check: AbelianShare.lean

Sources: U1_INFINITE_LATTICE.md §9 Prop. 9.1 and proof; U1_VERIFY.md §2.6 (fine piece 1/4, coarse pieces −L^{−4k}/4); BETA_FP_LEMMA43.md §5 (𝒮^{ab}(Λ) = (1 − Λ^{−4})/4); numerics/NUMERICS.md §6 (values 15/64, 20/81, 255/1024). The queue cites "NUMERICS §4"; in the current NUMERICS.md the abelian values are in §6 (§4 is the self-check list). Build: `lake build YmLean.AbelianShare` (8 s), no `sorry`. Axioms of all eleven printed theorems: `[propext, Classical.choice, Quot.sound]`.

What existed. `abelian_share` (AbelianCount.lean) proves Ē/8 = (1 − L^{−4k})/4 for d = 4, N = L^{4k}, with the count 4N − 4 − (N − 1) written into the hypothesis. `Sab`, `Sab_values`, `βab` give the values and the per-step increment.

| Lean | Source | Match |
|---|---|---|
| `ab_dim_count`: `Q̃ : V → W` onto, `D : G → V` injective, `im D ≤ ker Q̃`, `dim V = dN`, `dim W = d`, `dim G = N − 1` ⇒ `dim(ker Q̃ ∩ (im D)^⊥) = dN − d − (N − 1)` | Prop. 9.1 proof: "½ dim(ker Q̃ ∩ (im D_k)^⊥) per cell = ½[4L^{4k} − 4 − (L^{4k} − 1)]" | Same with d = 4, N = L^{4k}. Rank–nullity and `Submodule.finrank_add_inf_finrank_orthogonal`. The rank statements (Q̃ onto, D injective, Q̃D = 0) are hypotheses. |
| `abelian_share_gen`: d ≥ 2, N ≥ 1, `|P| = d(d−1)/2·N`, `(ΣE)/8 = ½(dN − d − (N − 1))` ⇒ `Ē/8 = (1 − 1/N)/d` | Prop. 9.1 for d = 4 | Extension: any d and any N. For d = 4 it is the note's statement. The d ≠ 4 case is not in any note; it assumes the same Hessian identity ½⟨B, Δ_0B⟩ = Σ_p(dB)_p²/8 and the hypercubic plaquette count. |
| `abelian_share_dims` | Prop. 9.1 | `abelian_share_gen` with the dimension from `ab_dim_count`. Equipartition is the hypothesis `(ΣE)/8 = ½ dim(…)`. |
| `abelian_share_block`: d = 4, block side Λ ≥ 1, N = Λ⁴ | BETA_FP_LEMMA43 §5: 𝒮^{ab}(Λ) = (1 − Λ^{−4})/4 | Same. Λ is any block side, not only L^k. |
| `Sab_block`: `Sab L k` = value at Λ = L^k | Prop. 9.1 (9.1) | Same. |
| `abelian_fine`: no constraint, `(ΣE)/8 = ½(d − 1)` per site, `d(d−1)/2` plaquettes ⇒ `Ē/8 = 1/d` | U1_VERIFY §2.6: "Σ_pE_p = 4(4 − 1) = 12 per site, Ē = 2, S^{ab,fine} = 1/4" | Same for d = 4. |
| `abelian_fine_coarse`, `Sab_coarse`: `(1 − 1/N)/d − 1/d = −1/(dN)`; `Sab L k − 1/4 = −L^{−4k}/4` | U1_VERIFY §2.6: "abelian coarse pieces … sum to exactly −L^{−4k}/4" | Same (arithmetic). |
| `Sab_eq_sum`: `S_k = Σ_{j<k}(S_{j+1} − S_j)` | U1 §1.2: S_k = Σ_{j≤k} β_j(0) | Telescoping with S_0 = 0. |
| `βab_geom`: `β_{j+2}^{ab} = L^{−4}β_{j+1}^{ab}` | U1 Prop. 9.1 Consequences (1): increments decay like L^{−4j} | Exact ratio. |
| `Sab_tendsto`: `S_k^{ab} → 1/4` (L ≥ 2) | U1_VERIFY §2.6: κ_k^{ab} = L^{−4k}/4 → 0 | Same. |

Not formalized (as in AbelianCount.lean): the Hessian ¼cos(θ/2)(dB)_p², the reduction w = (1 − cos p)L^{4k}Ē/32, hypercubic symmetry of E_p, the Gaussian expectation itself (`equipartition` gives tr(ΔΔ^{−1}) = dim only), and the infinite-lattice per-cell meaning of the counts.
