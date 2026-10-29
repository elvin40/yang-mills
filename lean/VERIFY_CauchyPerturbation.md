IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# VERIFY — CauchyPerturbation.lean (brief L7, Lemma CP)

Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md).

Sources read: `notes/SOURCES_WC_RESIDUE.md` §4 (l. 32–41, disc geometry only) and §6.1 (l. 51–64); `notes/SOURCES_WC_RESIDUE_VERIFY.md` Q5–Q6 (l. 27–39).

## Plan
1. What is proved: the four theorems, their hypotheses, the form of `Re F ≥ c`.
2. Constants: where `t ≥ 1 + 2Γ/c` and `½c` enter.
3. Correspondence with the source statements (brief, §6.1, Q6).
4. Mathlib lemmas used.
5. `lake build` result and axioms.
6. Ledger.

## 1. What is proved
Setting [P]: `H` is a complex Hilbert space (`NormedAddCommGroup H`, `InnerProductSpace ℂ H`, `CompleteSpace H`); the dimension is arbitrary. `F : ℂ → (H →L[ℂ] H)` takes values in the bounded operators with the operator norm. "Analytic on `D(0, ρ)`" is encoded as `DifferentiableOn ℂ F (ball 0 ρ)`. On an open set this is equivalent to analyticity in Mathlib (`DifferentiableOn.analyticOnNhd`) [I]. `Re F(0) ≥ c` is the accretive form `c‖v‖² ≤ re ⟪v, F 0 v⟫` for every `v`. `F 0` need not be symmetric.

Theorems in `CauchyPerturbation.lean`, namespace `YmLean`:
- `cp_increment` [P]. If `F` is differentiable on `ball 0 ρ`, `‖F w‖ ≤ Γ` there, and `‖z‖ < ρ`, then `‖F z − F 0‖·(ρ − ‖z‖) ≤ Γ‖z‖`. This is the brief's bound `‖F(z) − F(0)‖ ≤ Γ|z|/(ρ − |z|)` with the denominator cleared.
- `cauchy_perturbation` [P]. Add `0 < ρ`, `0 < c`, `c‖v‖² ≤ re ⟪v, F 0 v⟫` for all `v`, `1 + 2Γ/c ≤ t` and `‖z‖ ≤ ρ/t`. Then `½c‖v‖² ≤ re ⟪v, F z v⟫` for every `v : H`. This is the brief's statement in quadratic-form form. For a unit vector it reads `Re⟨v, F(z)v⟩ ≥ ½c`.
- `lemma_CP` [P]. This is the source's normalization (SOURCES_WC_RESIDUE §6.1). `f` is differentiable on `|s| < t` with `‖f‖ ≤ Γ`, `0 < t`, `0 < c`, `Re f(0) ≥ c` (accretive form) and `t ≥ 1 + 2Γ/c`. Then `½c‖u‖² ≤ re ⟪u, f 1 u⟫`. It is `cauchy_perturbation` with `ρ = t` and `z = 1`.
- `cauchy_perturbation_op` [P]. This is the operator statement. `reOp T := 2⁻¹(T + T*)`, where `star T = T†` (`ContinuousLinearMap.star_eq_adjoint`). The order is Mathlib's Loewner order on `H →L[ℂ] H` (`S ≤ T ↔ (T − S).IsPositive`). Hypothesis: `c•1 ≤ reOp (F 0)`. Conclusion: `(c/2)•1 ≤ reOp (F z)`. The other hypotheses are those of `cauchy_perturbation`. The operator form builds, so the brief's scalar fallback was not needed. The quadratic form and the operator form are both available.
- Helpers [P]: `re_inner_reOp_sub` (`re ⟪(reOp T − a•1)x, x⟫ = re ⟪x, T x⟫ − a‖x‖²` for real `a`) and `isSelfAdjoint_reOp_sub`.

Extra hypothesis `0 < ρ` [P]. It is needed. If `ρ ≤ 0`, the disc is empty, the bound `Γ` is unconstrained, and `t ≥ 1 + 2Γ/c` can hold with `t < 0`. Then `ρ/t > 0` when `ρ < 0`, and nothing controls `F z`. With `ρ > 0`, the point `0` is in the disc and `Γ ≥ ‖F 0‖ ≥ 0`. In `lemma_CP` the same role is played by `0 < t`.

## 2. Constants
- Cauchy radius [P]. Fix `0 < r < ρ − ‖z‖`. For `‖w‖ ≤ ‖z‖`, `closedBall w r ⊆ ball 0 ρ`, so Cauchy gives `‖F′(w)‖ ≤ Γ/r`. The mean value inequality on the convex set `closedBall 0 ‖z‖` gives `‖F z − F 0‖ ≤ (Γ/r)‖z‖`. The limit `r → ρ − ‖z‖` is taken by contradiction with `exists_between`. The result is `‖F z − F 0‖(ρ − ‖z‖) ≤ Γ‖z‖`. The Cauchy disc about `w` cannot have radius exactly `ρ − ‖z‖`, because its sphere would touch the boundary circle `|w| = ρ`, where `F` is not assumed defined. This is why the proof takes a limit.
- Threshold [P]. Take `v ≠ 0`. Then `c‖v‖² ≤ re ⟪v, F 0 v⟫ ≤ ‖F 0‖‖v‖² ≤ Γ‖v‖²`, so `c ≤ Γ`. So `t ≥ 1 + 2Γ/c ≥ 3`, and `‖z‖ ≤ ρ/t < ρ`. For `v = 0` the claim is `0 ≤ 0`.
- Increment [P]. Write `D := ‖F z − F 0‖`. From `‖z‖t ≤ ρ`: `Dρ(t − 1) ≤ D(ρ − ‖z‖)t ≤ Γ‖z‖t ≤ Γρ`, so `D ≤ Γ/(t − 1)`. From `2Γ ≤ (t − 1)c`: `D ≤ c/2`.
- Conclusion [P]. `re ⟪v, F z v⟫ = re ⟪v, F 0 v⟫ + re ⟪v, (F z − F 0)v⟫ ≥ c‖v‖² − D‖v‖² ≥ ½c‖v‖²`.
- The constants are exactly those of the brief: `t ≥ 1 + 2Γ/c` and the lower bound `½c`. There is no loss [P].

## 3. Correspondence with the sources
- Brief L7 [P]. `cauchy_perturbation` and `cauchy_perturbation_op` are the brief's statement: disc `D(0, ρ)`, sup bound `Γ`, `Re F(0) ≥ c`, `t ≥ 1 + 2Γ/c`, `|z| ≤ ρ/t` ⇒ `Re F(z) ≥ ½c`. The brief's middle bound `‖F(z) − F(0)‖ ≤ Γ|z|/(ρ − |z|) ≤ Γ/(t − 1)` is `cp_increment` plus the algebra in §2.
- SOURCES_WC_RESIDUE §6.1 [P]. The source puts `f(s) := F(U(s))` on `|s| < t` and evaluates at `s = 1`. That is `lemma_CP` (`ρ = t`, `z = 1`, `‖z‖ = ρ/t`). The source bounds the increment by `∫₀¹ Γ/(t − s) ds = Γ log(t/(t − 1)) ≤ Γ/(t − 1)`. The Lean proof instead uses the uniform derivative bound `Γ/(t − 1)` on `|s| ≤ 1` and the mean value inequality. Both proofs reach `Γ/(t − 1)`, so the threshold `t ≥ 1 + 2Γ/c` is the same [P].
- SOURCES_WC_RESIDUE_VERIFY Q6 [P]. Q6 restates the hypothesis in accretive form: `Re⟨u, f(0)u⟩ ≥ c‖u‖²` for complex `u`, with no symmetry. The Lean hypothesis `h0` is that form. So the Lean theorem covers the truncated local operators `N̂_□`, which Q6 says need not be symmetric [I]. Q5 is a page check of CMP 99 p. 423 and p. 427. It contains no statement that the Lean file formalizes.
- Disc geometry [I]. The brief points to SOURCES_WC_RESIDUE §4 (l. 32–41) for the disc radius. Those lines treat the ℓ^∞ cube geometry of Part B, not a disc. The disc and its radius `t(a, b)` are defined in §6.0 (l. 52) and corrected in §7.0 (`t(a, b) = c_P·min{b_0/(a_0 + a_1), b_1/a_1}`). Lemma CP takes `t` as a parameter, so the §7.0 correction does not change the Lean statement. The input "U(s) ∈ 𝒰(b) for |s| < t(a, b)", which makes `f` analytic and bounded on the disc, is [R] to §6.0/§7.0 and is not formalized.
- Analyticity of `f` [R]. The operator families in §6.3–§6.4 are analytic by CMP 99 Thm 3.4 [V per SOURCES_WC_RESIDUE_VERIFY] and the walk form (W_G) [R]. The Lean file assumes analyticity as a hypothesis.

## 4. Mathlib lemmas used
- `Complex.norm_deriv_le_of_forall_mem_sphere_norm_le` (`Mathlib/Analysis/Complex/Liouville.lean`). This is the vector-valued Cauchy estimate `‖deriv f c‖ ≤ C/R`, used with values in `H →L[ℂ] H`.
- `DifferentiableOn.diffContOnCl_ball`, `closedBall_subset_ball'`, `sphere_subset_closedBall`, `isOpen_ball.mem_nhds`.
- `Convex.norm_image_sub_le_of_norm_deriv_le` (`Mathlib/Analysis/Calculus/MeanValue.lean`), the mean value inequality, used with `convex_closedBall`.
- `exists_between` (for the limit `r → ρ − ‖z‖`), `div_lt_iff₀`, `div_le_iff₀`, `le_div_iff₀`.
- `abs_re_le_norm`, `norm_inner_le_norm`, `ContinuousLinearMap.le_opNorm`, `inner_sub_right`.
- Operator form: `ContinuousLinearMap.le_def`, `ContinuousLinearMap.isPositive_def'`, `ContinuousLinearMap.reApplyInnerSelf_apply`, `ContinuousLinearMap.star_eq_adjoint`, `ContinuousLinearMap.adjoint_inner_left`, `inner_conj_symm`, `inner_smul_real_left`, `RCLike.real_smul_eq_coe_smul`, `inner_self_eq_norm_sq_to_K`, `IsSelfAdjoint.sub`.
- Imports: `Mathlib.Analysis.Complex.Liouville`, `Mathlib.Analysis.Calculus.MeanValue`, `Mathlib.Analysis.InnerProductSpace.Positive`.

## 5. Build result and axioms
- Toolchain: Lean `v4.33.1` and Mathlib commit `0df444a3`, as pinned in `lean-toolchain` and `lake-manifest.json`.
- `lake build YmLean.CauchyPerturbation`: `Build completed successfully (2954 jobs)`, with no errors and no warnings [P].
- `lake build` (default target, the existing 25 files): `Build completed successfully (2539 jobs)` [P].
- `lake build YmLean YmLean.CauchyPerturbation`: `Build completed successfully (2991 jobs)` [P].
- `#print axioms` for `cp_increment`, `cauchy_perturbation`, `lemma_CP`, `cauchy_perturbation_op`: `[propext, Classical.choice, Quot.sound]` each [P]. The file has no `sorry` and declares no axioms.
- Integration [I]. The brief forbids editing existing files, so `YmLean.lean` does not yet import the new module. Plain `lake build` therefore does not compile it. To integrate, add `import YmLean.CauchyPerturbation` to `YmLean.lean` and add a row to `lean/README.md`.
- Environment note. The Mathlib oleans were built from source in this session (2937 Mathlib modules), because the cache host `lakecache.blob.core.windows.net` was blocked by the session proxy. The Lean toolchain came from the GitHub release tarball. This does not affect the result.

## 6. Ledger
| Claim | Tag | Where |
|---|---|---|
| `‖F z − F 0‖(ρ − ‖z‖) ≤ Γ‖z‖` (Cauchy + mean value) | [P] | `cp_increment` |
| Lemma CP, quadratic form, accretive hypothesis, constants `1 + 2Γ/c`, `½c` | [P] | `cauchy_perturbation` |
| Lemma CP in the §6.1 normalization (`|s| < t`, `s = 1`) | [P] | `lemma_CP` |
| Lemma CP, operator form `Re F(z) ≥ ½c` in the Loewner order | [P] | `cauchy_perturbation_op` |
| `0 < ρ` is needed; `c ≤ Γ` for nontrivial `H` forces `t ≥ 3` | [P] | §1, §2 |
| The Lean hypothesis is Q6's accretive form, so it covers non-symmetric `N̂_□` | [I] | §3 |
| `f` analytic and bounded on `|s| < t(a, b)` (disc in 𝒰(b)) | [R] SOURCES_WC_RESIDUE §6.0, §7.0; CMP 99 Thm 3.4 | §3 |
| Brief's pointer to §4 for the disc radius: §4 is the cube geometry; the disc is §6.0/§7.0 | [I] | §3 |
| No `sorry`, standard axioms only, `lake build` passes | [P] | §5 |

STATUS: COMPLETE
