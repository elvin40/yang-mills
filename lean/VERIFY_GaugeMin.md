IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# VERIFY: GaugeMin.lean

Statement check of the Lean theorems against `notes/SOURCES_A3_GAMMA0_FULL.md` §5 (5.0–5.2), verified in `notes/SOURCES_A3_GAMMA0_FULL_VERIFY.md` §4 item (1) and summary item 5. Build: `lake build` passes, no `sorry`. Axioms of all eleven printed theorems: `[propext, Classical.choice, Quot.sound]`.

## Notation

- `V`, `W`, `U`: finite-dimensional inner product spaces over `𝕜` (`RCLike`: ℝ or ℂ). `V` = fine fields A, `W` = gauge functions λ, `U` = block fields B.
- `G₁ : V →ₗ V` with `G₁.IsSymmetric` and `0 < re⟪x, G₁ x⟫` for `x ≠ 0` (G_1 > 0). `K` with `G₁ (K x) = x`, `K (G₁ x) = x` is G_1^{−1} (`posdef_inv` shows it exists).
- `qf K A = re⟪A, K A⟫` = ⟨A, G_1^{−1}A⟩. `adjoint` = `LinearMap.adjoint` (Q*, D*).
- `IsConstrMin K Q B A`: `Q A = B` and `qf K A ≤ qf K A'` for every `A'` with `Q A' = B`.
- A′ := A − DG′RD*A is written out as `A - D (G' (R (adjoint D A)))`.

## Theorems

| Markdown | Lean |
|---|---|
| (R1, part) G_1 > 0 (so G_1^{−1} exists) | `posdef_inv` (G₁ > 0 ⇒ ∃ K two-sided inverse); `inv_symm`, `inv_posdef` (G_1^{−1} symmetric, > 0) |
| (R1, part) QG_1Q* invertible on the B-space | `schur_surjective`: Q onto, G₁ > 0 ⇒ Q G₁ Q* onto (hence bijective, finite dimensions) |
| 5.1 cross term: ⟨A, G_1^{−1}A⟩ = ⟨A_*, G_1^{−1}A_*⟩ + ⟨Z, G_1^{−1}Z⟩ + 2Re⟨Z, G_1^{−1}A_*⟩ | `qf_add` (K symmetric) |
| 5.1: A_* = G_1Q*w, w = (QG_1Q*)^{−1}B; QA_* = B; ⟨A, G_1^{−1}A⟩ = ⟨A_*, G_1^{−1}A_*⟩ + ⟨Z, G_1^{−1}Z⟩; ⟨A_*, G_1^{−1}A_*⟩ = ⟨B, w⟩ | `variational`: hypotheses `Astar = G₁ (Q* w)`, `Q Astar = B` (i.e. QG₁Q*w = B); conclusions the decomposition for every extension and `qf K Astar = re⟪B, w⟫` |
| 5.1: A_* is the unique minimizer | `constrMin_existsUnique`: G₁ > 0, Q onto ⇒ ∃ w with QG₁Q*w = B, `G₁ Q* w` is a constrained minimizer, and every constrained minimizer equals it |
| 5.2 last step: A_*′ extension with value lowered by ‖RD*A_*‖² ⇒ RD*A_* = 0 | `gauge_min_abstract` |
| 5.2 proof (i), (ii), (iii) | `lemma5_step` (any A): QA′ = QA; RD*A′ = 0; (A′)′ = A′; q(A′) = q(A) − ‖RD*A‖² |
| 5.2 Lemma 5: RD*A_* = 0, A_*′ = A_*, ⟨A_*, G_1^{−1}A_*⟩ = Φ(A_*) + a‖B‖² | `lemma5` (for any constrained minimizer; no positivity needed) |
| 5.1 + 5.2: ⟨B, (QG_1Q*)^{−1}B⟩ = ⟨A_*, G_1^{−1}A_*⟩ = Φ(A_*) + a‖B‖², RD*A_* = 0 | `lemma5_full` |

## Encoding of the printed facts (5.0)

| Markdown | Lean hypothesis |
|---|---|
| (F1) QDλ = 0 for λ ∈ N(Q′) | `F1 : ∀ μ ∈ N, Q (D μ) = 0`, `N : Submodule 𝕜 W` abstract (Q′ itself does not appear) |
| (F3) G′RD*A ∈ N(Q′) | `F3a : ∀ A, G' (R (adjoint D A)) ∈ N` |
| (F3) RD*(A − DG′RD*A) = 0 | `F3b : ∀ A, R (adjoint D (A − D (G' (R (adjoint D A))))) = 0` |
| (F3) G′ linear | `G' : W →ₗ[𝕜] W` |
| (F4) ⟨A, G_1^{−1}A⟩ = Φ(A′) + ‖RD*A‖² + a‖QA‖² | `F4 : ∀ A, qf K A = Φ (A′) + ‖R (adjoint D A)‖² + a * ‖Q A‖²`, `Φ : V → ℝ` arbitrary, `a : ℝ` arbitrary |
| (R1, part) G_1 > 0, QG_1Q* invertible | `hsym`, `hpos`, `hGK`, `hKG`, `hQ : Surjective Q` (used only in 5.1 / `lemma5_full`) |

Differences from the note.
1. (F2) is not used by Lemma 5's proof and is not a hypothesis. R is any linear map; that R is the orthogonal projection I − P is not used. Φ's form ⟨X, ΔX⟩ − ⟨X, Δ^{(2)}X⟩ is not used.
2. `gauge_min_abstract` assumes the two properties of A′ only at A_* (the task statement has them for all A); `lemma5_step` gives them for all A.
3. `lemma5` holds for any linear `K` (no symmetry, no positivity): only minimality is used, as in the note. Positivity enters only for existence and uniqueness (5.1).
4. "QG_1Q* invertible on the B-space" is replaced by "Q onto" (equivalent given G₁ > 0; `schur_surjective` proves one direction). The note's value ⟨B, (QG_1Q*)^{−1}B⟩ is `re⟪B, w⟫` with QG₁Q*w = B; no inverse map is formed.
5. Real part. The note writes 2Re⟨Z, Q*w⟩ for the cross term; Lean uses `re⟪·, ·⟫` throughout, so the statements cover the real and complex cases.

## Not formalized

- The derivation of (F1), (F3), (F4) from CMP 99 (3.115), (3.118)–(3.119), (3.128), (3.134); they are hypotheses.
- R1 (G_1 > 0 and the weighted bound ‖X‖²_𝔴 ≤ K_1⟨X, G_1^{−1}X⟩; CMP 99 Thms 3.11–3.12).
- The second equality of (5.1) (Φ(A_*) = ‖D_UA_*‖² + ⟨A_*, Δ′A_*⟩ − ⟨A_*, Δ^{(2)}A_*⟩, i.e. (3.10)) and 5.3 (a)–(d).
- Infinite volume: all spaces are finite-dimensional.
