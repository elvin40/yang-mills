IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# VERIFY: Resolvent.lean

Statement check of the Lean theorems against the Markdown sources. Build: `lake build` passes, no `sorry`. Axioms of all nine printed theorems: `[propext, Classical.choice, Quot.sound]`.

## Notation

- `‖A‖` = spectral norm (`Matrix.Norms.L2Operator`), as in OishiRump.lean. `𝕜` = ℝ or ℂ. `A⁻¹` = Mathlib's `Matrix.inv` (nonsingular inverse); every theorem that uses it assumes `IsUnit` or proves it.
- `rq A v = re ⟪v, A v⟫` (CertBridge.lean). "re⟪v, Av⟫ ≥ γ_0‖v‖²" is `∀ v, γ₀ * ‖v‖^2 ≤ rq A v`. No matrix is assumed Hermitian.
- `wnorm w K = ⨆ x, Σ_y ‖K x y‖ * w x y` (finite index type; `⨆` over ℝ). `pw p x y = p y / p x`.

## (a)–(c): SOURCES_A3_SIGMA.md §4, SOURCES_A3_SIGMA_VERIFY.md V5 and grade 2

| Markdown | Lean |
|---|---|
| 4.2: R(s) = C_1^{−1} − C_s^{−1} (resolvent identity) | `resolvent_identity`: `C₁⁻¹ - Cs⁻¹ = C₁⁻¹ * (Cs - C₁) * Cs⁻¹` |
| 4.2, V5: ‖R(s)‖ ≤ ‖C_1^{−1}‖·η·‖C_s^{−1}‖ | `resolvent_bound`: `‖Cs - C₁‖ ≤ η` ⇒ `‖C₁⁻¹ - Cs⁻¹‖ ≤ ‖C₁⁻¹‖ * η * ‖Cs⁻¹‖` |
| V5 4.3(iii) corrected: ⟨v, C_s^{−1}v⟩ = ⟨v, C_1^{−1}v⟩ − ⟨v, R(s)v⟩ ≥ (γ_0 − 2γ_1²η_M)‖v‖² | `lower_transfer` (any A, B with ‖A − B‖ ≤ ε; take A = C₁⁻¹, B = Cs⁻¹, ε = 2γ₁²η) |
| 4.5 / V5: ‖C_s^{−1}‖ ≤ 2γ_1 from ‖C_1^{−1}‖ ≤ γ_1, η_M ≤ (2γ_1)^{−1}; C_s invertible | `neumann_perturb` (η‖C₁⁻¹‖ < 1 ⇒ IsUnit Cs, ‖Cs⁻¹‖ ≤ ‖C₁⁻¹‖/(1 − η‖C₁⁻¹‖)); `resolvent_chain` (2γ₁η ≤ 1 ⇒ ‖Cs⁻¹‖ ≤ 2γ₁) |
| 4.2 + V5 grade 2 (c), chained: ‖R(s)‖ ≤ 2γ_1²η_M and λ_min(Sym C_s^{−1}) ≥ γ_0 − 2γ_1²η_M | `resolvent_chain`: conclusions 3 and 4 |

Differences from the notes.
1. Order of factors. 4.2 writes R(s) = C_s^{−1}D(s)C_1^{−1} with D(s) = C_s − C_1 (V5 checks this form). Lean proves C_1^{−1}(C_s − C_1)C_s^{−1}, the order of the task statement. Both are equal; the norm bound is the same.
2. Source of ‖C_s^{−1}‖ ≤ 2γ_1. V5 derives it from coercivity of C_s (σ_min(C_s) ≥ γ_1^{−1} − η_M, from 3.1). Lean derives it from the Neumann series around C_1 (`oishi_rump` with R = C₁⁻¹): ‖C_s^{−1}‖ ≤ γ_1/(1 − γ_1η). For ‖C_1^{−1}‖ = γ_1 both give (γ_1^{−1} − η)^{−1}. The Lean route needs only ‖C_1^{−1}‖ ≤ γ_1, not the form bound 3.1, and it proves invertibility of C_s (the notes assume it from finite volume).
3. Condition. `resolvent_chain` assumes 2γ_1η ≤ 1, the condition η_M ≤ (2γ_1)^{−1} of 4.1. γ_1 ≥ 0 and η ≥ 0 follow from the norm hypotheses.
4. Lower bound. The input is re⟪v, C_1^{−1}v⟫ ≥ γ_0‖v‖² (in the notes: spec C_1 ⊂ [γ_1^{−1}, γ_0^{−1}], C_1 symmetric, so C_1^{−1} ≥ γ_0). The Lean hypothesis is the form bound itself and holds without symmetry of C_1.

## (d): SOURCES_A2_R2.md §3 (N1) and Lemma N

| Markdown | Lean |
|---|---|
| ‖K‖_ρ (row part): sup_b Σ_{b′} \|K(b,b′)\| e^{ρ\|b−b′\|} | `wnorm w K` with `w b b′ = exp(ρ |b − b′|)` (hypotheses: w > 0, `w x z ≤ w x y * w y z` = triangle inequality, `w x x = 1`) |
| Task form ‖K‖_p = sup_x Σ_y \|K x y\| p y / p x | `wnorm (pw p) K`; `pw_props` checks the hypotheses (equality in the product rule, `pw p x x = 1`) |
| (N1) ‖KK′‖_ρ ≤ ‖K‖_ρ‖K′‖_ρ ("triangle inequality e^{ρ\|b−b″\|} ≤ e^{ρ\|b−b′\|}e^{ρ\|b′−b″\|}, then row … sums") | `wnorm_mul_le`; `pwnorm_mul_le` |
| Lemma N proof: ‖A_ZW‖_ρ ≤ ½ ⇒ I − A_ZW invertible, inverse Σ_{n≥0}(A_ZW)^n, norm ≤ Σ(aw)^n | `wnorm_neumann`: ‖K‖_w < 1 ⇒ IsUnit (1 − K), ‖(1 − K)⁻¹‖_w ≤ 1/(1 − ‖K‖_w); `pwnorm_neumann` for `pw p` |

Differences from the notes.
1. Row part only. A2_R2's ‖·‖_ρ is max(row sup, column sup). The column part of K is the row part of Kᵀ with the transposed weight w′(x, y) = w(y, x), which satisfies the same hypotheses; (KL)ᵀ = LᵀKᵀ and ((1 − K)⁻¹)ᵀ = (1 − Kᵀ)⁻¹ give the column statements. This transposition step is NOT a Lean lemma. (Now `cwnorm_mul_le`, `mnorm_neumann` in WeightedNorm.lean, VERIFY_WeightedNorm.md.)
2. Proof route. Lean does not sum the series. Invertibility: (1 − K)v = 0 ⇒ the matrix V with every column v satisfies V = KV ⇒ ‖V‖_w ≤ ‖K‖_w‖V‖_w ⇒ ‖V‖_w = 0 ⇒ v = 0 (uses w(x,x) > 0). Bound: X = (1 − K)⁻¹ = 1 + KX ⇒ ‖X‖_w ≤ ‖1‖_w + ‖K‖_w‖X‖_w with ‖1‖_w ≤ 1. The conclusion equals the series bound Σ_n ‖K‖_w^n.
3. Not formalized: the conclusion ‖T‖_ρ ≤ 2a²w of Lemma N (T = Σ_{n≥1}(A_ZW)^nA_Z), facts (N2)–(N4), and the inputs (W), (K_A), (G). (N2) and the ‖T‖_ρ bound follow from `wnorm_mul_le` and `wnorm_neumann` (T = (1 − A_ZW)⁻¹A_ZWA_Z) but are not written. (‖T‖_ρ ≤ 2a²w is now `lemma_N` in WeightedNorm.lean.)

## Not formalized

- The bounds ‖C_1^{−1}‖ ≤ γ_1 and re⟪v, C_1^{−1}v⟫ ≥ γ_0‖v‖² from the compression γ_0 ≤ Z_0AZ_0 ≤ γ_1 (3.1); they are hypotheses.
- The bound η_M on ‖C_s − C_1‖ (2.5–2.6, walk expansion and Schur test; Schur.lean has the Schur test).
- The symmetric-case constant ε(M) = γ_0²η_M/(1 + γ_0η_M) of 4.1 (needs (S_s) and the spectral theorem).
