IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# VERIFY: BlockSchur.lean

Statement check of the Lean theorems against the Markdown sources. Build: `lake build` passes, no `sorry`. Axioms of both theorems: `[propext, Classical.choice, Quot.sound]`.

## Notation

- `‖A‖` = spectral norm (`Matrix.Norms.L2Operator`), as in Schur.lean. `𝕜` = ℝ or ℂ.
- `K : Matrix (ι × Fin n) (ι × Fin n) 𝕜`, ι a finite block index, every block of size n. `blk K x y : Matrix (Fin n) (Fin n) 𝕜` is the block K_{xy}, `(blk K x y) i j = K (x, i) (y, j)`. `k(x,y) := ‖blk K x y‖` (spectral norm of the block).
- For `u : ι × Fin n → 𝕜`, `u_y = (u (y, j))_j ∈ EuclideanSpace 𝕜 (Fin n)`, `(Ku)_x = ((K *ᵥ u) (x, i))_i`.

## Statements

| Markdown | Lean |
|---|---|
| block-norm inequality behind "Schur over blocks": ‖(Kv)_x‖ ≤ Σ_y ‖K_{xy}‖‖v_y‖ | `block_row_le K u x` |
| SOURCES_A1_KERNEL.md §7 Schur step, block form (kernel ‖T_{yy″}‖, weights (μ(y″)/μ(y))^{1/2}) | `block_schur_test K p`: `p > 0`, `Σ_y ‖blk K x y‖ * p y ≤ a * p x`, `Σ_x ‖blk K x y‖ * p x ≤ b * p y` ⇒ `‖K‖ ≤ √(a * b)` |
| SOURCES_S2_FORM.md §2 Π3: block-to-block norms ≤ B_0e^{−δ_0d(y,y′)}, Schur over blocks | `block_schur_test` with p = 1, a = b = sup_x Σ_y B_0e^{−δ_0d(x,y)} |
| VERIFY_CombesThomas.md, Not formalized item 5 | closed by `block_schur_test` (finite ι, equal block sizes) |

Proof map. `block_row_le`: `(Ku)_x = Σ_y K_{xy} u_y` (`Fintype.sum_prod_type`), triangle inequality, `l2_opNorm_mulVec` per block. `block_schur_test`: `‖Ku‖² = Σ_x ‖(Ku)_x‖² ≤ Σ_x (Σ_y k(x,y)‖u_y‖)² = ‖k w‖²` with `w_y = ‖u_y‖`; `‖w‖ = ‖u‖`; `‖k‖ ≤ √(ab)` is `schur_test_weighted` applied to the real matrix k (its entries satisfy the scalar row and column hypotheses verbatim).

Hypotheses `0 ≤ a`, `0 ≤ b` are assumed, as in `schur_test_weighted`.

## Not formalized

1. Unequal block sizes (cubes Δ(y) of different volume in Π3, blocks of ℓ²(𝔅, μ) in A1 §7). Lean fixes one size n; the general case follows by zero-padding every block to the largest size (an isometric embedding), not written in Lean.
2. Infinite index sets and the continuum L²(Δ(y)) blocks of Π3; Lean is finite-dimensional (finite volume, as in Balaban).
3. The μ-weights of A1 §7 (the unitary ℓ²(𝔅, μ) → ℓ²(𝔅)); same gap as VERIFY_CombesThomas.md item 1.
4. The kernel bounds that feed the row/column sums ((3.46) of CMP 99, (2.61), Σ(δ/2)).
