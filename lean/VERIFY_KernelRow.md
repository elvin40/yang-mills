IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# VERIFY: KernelRow.lean

Statement check of the Lean theorems against the Markdown sources. Build: `lake build` passes, no `sorry`. Axioms of all eleven printed theorems: `[propext, Classical.choice, Quot.sound]`.

Closes gap 2 of `VERIFY_CombesThomas.md` ("Not formalized"): the step from the kernel bound (i) to the row/column-sum hypothesis of `combes_thomas_schur`.

## Notation

- `‖A‖` = spectral norm, `rq A v = re ⟪v, A v⟫`, as in CombesThomas.lean. `𝕜` = ℝ or ℂ. Counting measure (μ-weights m = 1).
- Weight `w x = e^{ε d(x, x₀)}`. Then `w x / w y − 1 = exp(ε (d x x₀ − d y x₀)) − 1` (`Real.exp_sub`); Lean writes the right side, the form of `combes_thomas_schur`.
- Metric: `hsymm : d x y = d y x`, `htri : d x z ≤ d x y + d y z`; `hd : d x x = 0` only where Lemma CT is concluded. `d ≥ 0` is not assumed (it is not needed).
- On `Fin n`: `d x y = |(x : ℝ) − (y : ℝ)|` (written `|((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|`).

## SOURCES_A1_KERNEL.md §7, proof of Lemma CT

| Markdown | Lean |
|---|---|
| (a) \|e^x − 1\| ≤ \|x\|e^{\|x\|} (used in "bounded by c_+ m ε d e^{εd} e^{−δd}") | `abs_exp_sub_one_le_mul_exp x : \|exp x - 1\| ≤ \|x\| * exp \|x\|` |
| \|f(y) − f(y″)\| ≤ d(y,y″), f = d(·, y′) | `abs_dist_sub_le d hsymm htri x y x₀ : \|d x x₀ - d y x₀\| ≤ d x y` |
| kernel of E: \|n̂(y,y″)\|·\|e^{ε(f(y)−f(y″))} − 1\| ≤ c_+ ε d e^{−(δ−ε)d} | `kernel_entry_le`: `‖z‖ ≤ C e^{−δa}`, `\|t\| ≤ a`, `ε ≥ 0` ⇒ `‖z‖ * \|exp(εt) − 1\| ≤ C * ε * (a * exp(−((δ−ε)a)))` |
| (b) row sums Σ_y \|N x y\|·\|w x/w y − 1\| ≤ Cε Σ_y d(x,y) e^{−(δ−ε)d(x,y)} | `kernel_row N d hsymm htri hε hK x₀ x` |
| (b) the same with x, y exchanged (Schur needs both) | `kernel_col N d hsymm htri hε hK x₀ y` |
| εc_+Σ(δ/2) ≤ c_−/2 ⇒ ‖E‖ ≤ c_−/2 ⇒ conclusion of Lemma CT | `combes_thomas_kernel`: `Σ_y d e^{−(δ−ε)d} ≤ S` for all x, `C * ε * S ≤ c / 2` ⇒ `IsUnit N ∧ ‖N⁻¹ x y‖ ≤ 2/c * exp(−(ε d x y))` (via `combes_thomas_schur`) |
| (c) ι = Fin n, d = \|x − y\|: Σ_{k∈ℤ} \|k\| r^{\|k\|} = 2r/(1−r)² | `hasSum_int_abs_geometric` (0 ≤ r < 1) |
| (c) Σ_y \|x−y\| e^{−a\|x−y\|} ≤ 2/(1 − e^{−a})², a > 0 | `fin_sum_le n x ha` (via the sharper 2r/(1−r)², r = e^{−a}) |
| (c) row sums ≤ 2Cε/(1 − e^{−(δ−ε)})², 0 < ε ≤ δ/2 | `kernel_row_fin`; column sums `kernel_col_fin` |
| chain with Lemma CT on Fin n | `combes_thomas_fin`: `N ≥ c > 0`, `‖N x y‖ ≤ C e^{−δ\|x−y\|}`, `0 < ε ≤ δ/2`, `2Cε/(1 − e^{−(δ−ε)})² ≤ c/2` ⇒ `IsUnit N ∧ ‖N⁻¹ x y‖ ≤ 2/c * exp(−(ε\|x−y\|))` |

Differences from the note.
1. The note bounds e^{−(δ−ε)d} by e^{−(δ/2)d} (ε ≤ δ/2) and uses Σ(δ/2). Lean keeps the rate δ − ε in (b) and needs only ε ≥ 0 there; ε ≤ δ/2 enters only in (c), where it gives δ − ε ≥ ε > 0. With ε ≤ δ/2 one has e^{−(δ−ε)d} ≤ e^{−(δ/2)d} (d ≥ 0), so the Lean S is at most the note's sum.
2. The note's Σ(δ′) carries the factor (1 + d) and the μ-ratio (μ(y″)/μ(y))^{1/2}. Lean has m = 1 and the factor d (not 1 + d), which is what the proof uses.
3. C ≥ 0 is not assumed; it follows from `hK x x`.
4. (c) is the one-dimensional chain; the note's 𝔅 is the multiscale block lattice, where Σ(δ/2) is bounded in §5 (2.61), not by the geometric series.

## Not formalized

1. The μ-weights m(y,y′) and the unitary ℓ²(𝔅, μ) → ℓ²(𝔅) (gap 1 of VERIFY_CombesThomas.md, unchanged).
2. The bound on Σ(δ/2) for the block lattice 𝔅 (SOURCES_A1_KERNEL.md §5, (2.60)–(2.61), Lemma 2.1 of CMP 96). Only the Fin n (ℤ¹) case is proved.
3. The choice ε = min{δ/2, c_−/(2c_+Σ(δ/2))}: Lean takes any ε with the smallness hypothesis `hsmall`; that this ε satisfies it is one line and not written.
4. Inputs (K) and (C) (gap 3 of VERIFY_CombesThomas.md, unchanged).
