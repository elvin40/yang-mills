IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# VERIFY_BlockNorm — statement check of BlockNorm.lean and OishiRump.lean

Both files build without `sorry` (`lake build`, a few seconds each). Axioms of every theorem: `[propext, Classical.choice, Quot.sound]`.

## Norms used

- Direct sums: `PiLp 2 E`, `‖v‖² = Σ_l ‖v_l‖²`. This is the ℓ² norm of `⊕_l ℂ⁴ = ℂ³²⁴` used numerically. Operator norms are Mathlib's `ContinuousLinearMap` operator norms. The blocks `E l`, `F l` are arbitrary normed spaces. For `EuclideanSpace` blocks this is the spectral norm of each block.
- Matrices: the ℓ² operator (spectral) norm of Mathlib, scope `Matrix.Norms.L2Operator`, `‖A‖ = ‖toEuclideanCLM A‖`, over any `RCLike 𝕜` (ℝ or ℂ). This is the norm `‖·‖₂` of `solve_cert` and `norm2_upper`.
- Frobenius: `frob A = √(Σ_{i,j} |A i j|²)`, defined in OishiRump.lean. It is the value that `frob_upper` encloses from above. It is not linked by a proof to Mathlib's `Matrix.frobeniusNormedAddCommGroup`, but the definition is the same formula.
- The sup norm on `Π i, E i` is not used.

## Correspondence

| Markdown statement | Lean | Match |
|---|---|---|
| H2_CERTIFY §1 R2, VERIFY §5 item (5): `‖(⊕_l A_l) B‖ ≤ max_l ‖A_l‖ · ‖B‖`, B a column of blocks | `blockCol_opNorm_le A B hC hA`: `‖blockDiag A ∘L B‖ ≤ C * ‖B‖` if all `‖A l‖ ≤ C` | Exact (C = max_l ‖A_l‖ is one admissible value). |
| (1.1) `ρ_2(j,K) ≤ ρ_1(j,K) · max_l ρ_1(j−1,k_l)` | `rho2_le`: `‖blockDiag A ∘L B‖ / L² ≤ ‖B‖/L · r` if all `‖A l‖/L ≤ r`, `L > 0` | Exact, with `B = H_j(K)`, `A_l = H_{j−1}(k_l)`. |
| Task wording `X = ⊕_l (A_l B_l)` acting on `(v_l)` | `blockDiag_opNorm_le`, `blockDiag_opNorm_eq` (`‖⊕ T_l‖ = ⨆ ‖T_l‖`), `blockDiag_comp_opNorm_le` (`T_l = A_l ∘ B_l`) | Proved as asked, but see note 1. |
| H2_CERTIFY §2 (i-a), C2, VERIFY §4 item (2): `‖RA − I‖ < 1` ⇒ `‖A⁻¹‖ ≤ ‖R‖/(1 − ‖RA − I‖)` | `oishi_rump A R h` (square matrices, ℓ² norm), from `oishi_rump_ring` (any complete normed ring with `‖1‖ ≤ 1` where left inverses are two-sided) | Exact. Invertibility is a conclusion (`IsUnit A`). |
| `solve_cert`: `η = ‖R B_mid − I‖_F + ‖R‖·r`, `‖dB‖ ≤ r` ⇒ `‖B⁻¹‖ ≤ ‖R‖/(1 − η)` | `oishi_rump_eta A₀ dA R hr hη` | Exact, with `‖dA‖₂ ≤ r` as hypothesis. |
| C2, `norm2_upper`: `‖R‖₂ ≤ ‖(R†R)^{2^m}‖_F^{1/2^{m+1}}` | `frobenius_power_bound M m` (with `l2_le_frob`: `‖A‖₂ ≤ frob A`) | Exact. No spectral theorem needed: C*-identity `‖MᴴM‖ = ‖M‖²` and `‖S^{2^k}‖ = ‖S‖^{2^k}` for self-adjoint S are in Mathlib. |

## Gaps to the numerical normalization

1. The task brief wrote the one-step factorization as a block-diagonal `⊕_l (A_l B_l)` acting on `(v_l)`. The Markdown sources (H2_CERTIFY §1 R2, VERIFY §5) state it for `(⊕_l A_l) B` with `B = H_j(K) : ℂ⁴ → ℂ³²⁴` a column of blocks, so `‖Xv‖² = Σ_l ‖A_l (Bv)_l‖²`. The column form is the one that gives (1.1); `blockCol_opNorm_le` and `rho2_le` prove it. The block-diagonal form is also proved, but it is not the form used in (1.1).
2. `rho2_le` takes ρ_1, ρ_2 as `‖·‖/L`, `‖·‖/L²` of the operators. The identification of `H_j(K)` with the first 324 rows of `𝔅_j(K)⁻¹[0; 1₄]`, and of `ℂ³²⁴` with `⊕_{l} ℂ⁴` (81 umklapp blocks of size 4), are not formalized.
3. `oishi_rump_eta` takes `‖dA‖₂ ≤ r` as a hypothesis. `solve_cert` computes r as max of block Frobenius radii plus a Frobenius radius of the rest (VERIFY §4). That this r bounds ‖dA‖₂ is `l2_le_frob` plus `blockDiag_opNorm_le`, but the combination is not written as one theorem.
4. Interval arithmetic is not formalized: `frob_upper` uses upper bounds of `|entries|` of a ball enclosure of `(R†R)^{2^m}`. The Lean statements are about exact matrices. The step "an upper bound on every |entry| gives an upper bound on frob" is monotonicity of √Σ and is not written out.
