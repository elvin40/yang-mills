IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# VERIFY_CertBridge.md — statement check of `YmLean/CertBridge.lean`

Sources: `../numerics/h1cert_cell.py` (`_radF`, `final_bound`, `cell_bound`), `../numerics/h1cert_cell2.py` (`inv_or`, `cell_bound2`), `VERIFY_BlockNorm.md` "Gaps to the numerical normalization". Build: `lake build` (whole project) succeeds; `CertBridge.lean` has 268 lines and no `sorry`.

Gap numbering. The brief named gap 1 of VERIFY_BlockNorm. Gap 1 there is the block-column form of (1.1), which `blockCol_opNorm_le` already covers. The content of this task is gap 3 ("r bounds ‖dA‖₂ is not one theorem") and gap 4 ("an upper bound on every |entry| gives an upper bound on frob is not written out"). This file closes gaps 3 and 4 for the h1cert certifiers.

## Correspondence

| Code | Lean |
|---|---|
| `_radF(B, C)` = √Σ (abs_upper of B_ij − C_ij)² ≥ ‖B − C‖₂ for every B in the ball | `entrywise_to_opnorm` (with `frob_mono`); real interval form `interval_to_opnorm`: ‖A − A₀‖₂ ≤ ‖Ahi − Alo‖_F |
| `final_bound`: η = ‖I − X B_mid‖_F + ‖X‖ r_B < 1, eps = ‖X‖η/(1 − η) | `cell_invertible`: for every A with ‖A_ij − A₀_ij‖ ≤ E_ij, `IsUnit A`, ‖A⁻¹‖ ≤ nR/(1 − η), ‖A⁻¹ − R‖ ≤ nR η/(1 − η), η = f0 + nR ‖E‖_F (`orEta`), f0 ≥ ‖R A₀ − 1‖_F, nR ≥ ‖R‖₂. Uses `oishi_rump_eta`. |
| `XZ, xw = X[:4,:4], X[:4,4:5]`, the error of these blocks ≤ eps | `norm_submatrix_le` (‖M.submatrix f g‖₂ ≤ ‖M‖₂ for injective f, g); blocks are `toBlocks₁₁`, `toBlocks₁₂` on index type `n ⊕ Unit` |
| λ_max(G) ≤ c | `∀ x, rq G x ≤ c ‖x‖²`, `rq G x = re⟪x, G x⟫` (Rayleigh form; for Hermitian G this is λ_max(G) ≤ c) |
| `pert = 2‖T2h XZ‖eps + ‖T2h‖eps² + (‖XZ‖ + eps)² r2 + gam(2‖xw‖eps + eps²)` | `pert_bound`: ‖(Zᴴ T2 Z + γ w wᴴ) − (XZᴴ T2h XZ + γ xw xwᴴ)‖₂ ≤ pert, with ‖Z − XZ‖, ‖w − xw‖ ≤ ε, ‖T2 − T2h‖ ≤ r2, T2hᴴ = T2h |
| `core + pert` (Weyl) | `rq_weyl`: λ_max(G) ≤ λ_max(G₀) + ‖G − G₀‖₂ |
| `gam` = upper bound of σ τ²/(\|β\|² \|K̂\|²) over the cell | `cell_sup_bound` takes the true coefficient γ′ with 0 ≤ γ′ ≤ γ; `rq_rank_nonneg` (w wᴴ ⪰ 0) moves γ′ to γ |
| `final_bound` composed | `cell_sup_bound`: entrywise enclosure of B around B_mid, of T2 around T2h, `lam_max_upper` bound `core` on G₀ ⇒ `IsUnit B` and λ_max(Zᴴ T2 Z + γ′ w wᴴ) ≤ core + pert, Z, w = blocks of B⁻¹. The code outputs √(core + pert)/L. |
| `cell_bound2`: `max_v lam_max_upper((G_v + G_vᴴ)/2) + ‖G.r‖_F` | `vertex_bound` (any finite index set ι; the code uses ι = 4 directions): G(δ) = c + Σ δ_ν g_ν + R_G, \|δ_ν\| ≤ h, \|R_G ij\| ≤ r_ij, vertex bounds on the Hermitian part ⇒ λ_max(G(δ)) ≤ lam + ‖r‖_F. `rq_herm`: the Hermitian part has the same Rayleigh quotient. |

Differences from the code, all in the safe direction: the code uses upper bounds (`_n2`, Sylvester-certified) for ‖X‖, ‖T2h XZ‖, ‖T2h‖, ‖XZ‖, ‖xw‖. `pert` increases in each of them, so the Lean statement with exact norms implies the code's bound. `cell_bound2` adds a rounding term `EPS·4·‖G.mj‖`; that only increases the bound. The code writes the true matrix as Z T2 Z; Lean writes Zᴴ T2 Z. They agree because B(K) is Hermitian, so Z = (B⁻¹)₁₁ is Hermitian.

## Status of the chain

Formal now: entrywise enclosure (hypothesis) ⇒ spectral-norm radius ⇒ cell-wide invertibility of the bordered matrix and the bound on ‖B⁻¹ − X‖ ⇒ the certified upper bound core + pert on λ_max(G(K)) for every K in the cell (h1cert_cell), and the vertex-plus-remainder bound (h1cert_cell2).

Informal (not formalized):

1. The enclosures themselves. These are the premises P1′ (profile F radius), P2 (a priori float rounding bounds for the d^M box sums, the q_0 rows E_l, and the Taylor-model arithmetic of h1cert_cell2), P3 (tails, Hurwitz zeta), and P4 (E k̂ = K̂). Part of the input is arb ball arithmetic. The d^M box sums and the q_0 rows are float64 sums with a priori error terms, not arb, so "arb is correct" is not the whole premise.
2. That the Python code implements these formulas (no proof of the Python).
3. ρ_1(K)² L² = λ_max(Zᴴ T2 Z + γ′ w wᴴ) (h1cert_cell.py docstring, H2_CERTIFY_L13 (2.1)), and the identification of H_j(K) with blocks of 𝔅_j(K)⁻¹ (VERIFY_BlockNorm gap 2).
4. In h1cert_cell2: the η of `inv_or` (linear term as a maximum over vertices, second-order remainder `e2`) and the Taylor-model propagation `TM`. `vertex_bound` only covers the last step.

## Axioms

```
'YmLean.frob_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.entrywise_to_opnorm' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.interval_to_opnorm' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.cell_invertible' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.sel_norm_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.norm_submatrix_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.rq_herm' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.rq_rank_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.rq_weyl' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.pert_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.cell_sup_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.vertex_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```
