# VERIFY: WeightedNorm.lean

Statement check of the Lean theorems against the Markdown source `../SOURCES_A2_R2.md` §3 (and `VERIFY_Resolvent.md` (d), differences 1–3). Build: `lake build` passes, no `sorry`. Axioms of all eleven printed theorems: `[propext, Classical.choice, Quot.sound]`.

## Notation

- Kernels are `Matrix n n 𝕜`, `n` a finite type (the bonds of Z_0), `𝕜` = ℝ or ℂ. No Hermiticity anywhere (A2_R2 §3: "No Hermiticity … is used").
- Row half (Resolvent.lean): `wnorm w K = ⨆ x, Σ_y ‖K x y‖ * w x y`. Column half: `cwnorm w K = ⨆ y, Σ_x ‖K x y‖ * w x y`. `tw w x y = w y x`. `mnorm w K = max (wnorm w K) (cwnorm w K)`.
- Weight hypotheses: `w > 0`, `w x z ≤ w x y * w y z`, `w x x ≤ 1`. In Lemma N the weight is `ω`; `w` is the scalar bound on ‖W‖_ρ, as in the note.

## Norm

| Markdown (A2_R2 §3) | Lean |
|---|---|
| ‖K‖_ρ := max{sup_b Σ_{b′}, sup_{b′} Σ_b} \|K(b,b′)\|e^{ρ\|b−b′\|} | `mnorm (fun x y => exp (ρ * d x y)) K`; `expw_props`: for ρ ≥ 0 and d with d(x,z) ≤ d(x,y) + d(y,z), d(x,x) = 0 (e.g. d = \|b − b′\|), this weight satisfies the hypotheses |
| column part sup_{b′} Σ_b | `cwnorm w K`; `cwnorm_eq`: `cwnorm w K = wnorm (tw w) Kᵀ` (rfl); `tw_props`: `tw w` satisfies the hypotheses |
| (N1) ‖KK′‖_ρ ≤ ‖K‖_ρ‖K′‖_ρ, column sums | `cwnorm_mul_le` (`wnorm_mul_le` for (KL)ᵀ = LᵀKᵀ with weight `tw w`); `pcwnorm_mul_le` for `pw p` (transposition of `pwnorm_mul_le`: `tw_pw`, `tw (pw p) = pw p⁻¹`) |
| (N1) for max(row, column) | `mnorm_mul_le` |
| "norm" | `mnorm_nonneg`, `mnorm_add_le`, `mnorm_smul` (‖cK‖ = \|c\|‖K‖), `mnorm_eq_zero` (= 0 ⇔ K = 0, uses w > 0), `mnorm_one_le` (‖I‖ ≤ 1), `mnorm_pow_le` |
| Lemma N proof: ‖A_ZW‖_ρ ≤ ½ ⇒ I − A_ZW invertible, ‖(I − A_ZW)^{−1}‖_ρ ≤ Σ(aw)^n | `mnorm_neumann`: ‖K‖_ρ < 1 ⇒ IsUnit (1 − K), ‖(1 − K)⁻¹‖_ρ ≤ 1/(1 − ‖K‖_ρ); column half by `wnorm_neumann` for Kᵀ, ((1 − K)⁻¹)ᵀ = (1 − Kᵀ)⁻¹ |

## Lemma N

| Markdown | Lean (`lemma_N`) |
|---|---|
| A_Z invertible, C_1 := A_Z^{−1} | `hA : IsUnit A`; C_1 is written `A⁻¹` |
| W a kernel on Z_0 | `W : Matrix n n 𝕜` |
| ‖A_Z‖_ρ ≤ a, ‖W‖_ρ ≤ w, aw ≤ ½ | `ha : mnorm ω A ≤ a`, `hw : mnorm ω W ≤ w`, `haw : a * w ≤ 1 / 2` (a, w ≥ 0 follow) |
| C_1 − W invertible | `IsUnit (A⁻¹ - W)` |
| (C_1 − W)^{−1} = A_Z + T | `(A⁻¹ - W)⁻¹ = A + lemmaN_T A W` |
| T := Σ_{n≥1}(A_ZW)^nA_Z | `lemmaN_T A W = (1 - A * W)⁻¹ * (A * W) * A`; `lemmaN_series`: ‖T − Σ_{k<N}(A_ZW)^{k+1}A_Z‖_ρ ≤ 2a(aw)^{N+1}, so the series converges to T in ‖·‖_ρ (aw ≤ ½) |
| ‖T‖_ρ ≤ 2a²w | `mnorm ω (lemmaN_T A W) ≤ 2 * a ^ 2 * w` |

`lemma_N_exp` is `lemma_N` with ω(x,y) = e^{ρd(x,y)} (ρ ≥ 0, d as above), the form used in §3 with ρ = ½δ_0.

Differences from the note.
1. Proof route. The note sums the series. Lean bounds T = (I − A_ZW)^{−1}(A_ZW)A_Z by (N1) and `mnorm_neumann`: ‖T‖_ρ ≤ (1/(1 − aw))·aw·a ≤ 2a²w. The series identity is the separate `lemmaN_series` (partial sums via `neumann_partial`: Y(1 − X) = (1 − X)Y = 1 ⇒ YX = Σ_{k<N}X^{k+1} + X^{N+1}Y). The note's bound Σ_{n≥1}(aw)^na = a·aw/(1 − aw) is the same number before the step 1/(1 − aw) ≤ 2.
2. Weight. Lean takes any weight with the three hypotheses; the note's e^{ρ|b−b′|} is one instance (`expw_props`). d need not be symmetric.
3. Index set. The note's kernels on Z_0 are matrices over a finite type; "finite volume: matrices" in the note.

## Not formalized

- (N2) |K(b,b′)| ≤ ‖K‖_ρe^{−ρr}, (N3) ‖K‖_ρ ≤ cS(ρ′ − ρ), (N4) ‖K‖_{ℓ²} ≤ ‖K‖_0 ≤ ‖K‖_ρ (Schur.lean has the Schur test, not linked to `mnorm`), and S(t) < ∞.
- The inputs (S-rule), (G), (W), (κ), (K_A), (An), (D) and the bounds on W_σ and A_Z (§3 "Bound on W_σ", "Bound on A_Z"); in `lemma_N` they enter only through the hypotheses `ha`, `hw`, `haw`.
- Proposition R2 (§4) and everything after §3.
- An instance of `NormedRing` for `mnorm`: the norm axioms are separate lemmas (Matrix already carries other norm instances).
