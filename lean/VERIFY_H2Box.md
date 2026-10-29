IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# VERIFY: H2Box — the (H1_13) branch-and-bound checked in Lean (ledger row R-025)

Written 2026-10-28 (Claude, Opus 5.5). Read: H1_ANALYTIC.md, H1_ANALYTIC_VERIFY.md, H1_ANALYTIC_VERIFY2.md, H2_CERTIFY_P5_VERIFY.md, numerics/h1analytic/bb.py and bb_arb.py, lean/YmLean/H1Majorant.lean, CertBridge.lean, BlockNorm.lean. Did not read /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md. No existing file was edited. Not statement-checked by a second reader.

## 1. What is proved

Files (all new): `YmLean/H2BoxArith.lean`, `H2BoxDir.lean`, `H2BoxG.lean`, `H2BoxGSound.lean`, `H2BoxF.lean`, `H2BoxFSound.lean`, `H2BoxTree.lean`, `H2BoxTreeSound.lean`, `H2BoxRun00.lean` … `H2BoxRun15.lean`, `H2Box.lean`. No `sorry`, no `admit`, no new `axiom` declarations.

Main theorems (`H2Box.lean`, namespace `YmLean.H2B`):

- `Bst_le_ten`: for every `u : Fin 4 → ℝ` with `0 ≤ u_ρ ≤ 1`, `u_0 ≤ u_1 ≤ u_2 ≤ u_3`, `u ≠ 0`: `Bst u ≤ 10`.
- `Bst_le_ten_K`: the same in the variables `K = π u` (`0 ≤ K_0 ≤ … ≤ K_3 ≤ π`, `K ≠ 0`).
- `rho1_sq_le_ten`: let `rho1sq : ℕ → (Fin 4 → ℝ) → ℝ` be any function with
  (hmaj) `rho1sq j K ≤ Bst (K/π)` on the sorted chamber minus `0`,
  (hsym) `rho1sq j (act σ s K) = rho1sq j K` for the 384 signed permutations (`H1M.act`),
  (hzero) `rho1sq j 0 ≤ 10`.
  Then `rho1sq j K ≤ 10` for all `j` and all `K ∈ [−π, π]⁴`.

So "ρ_1(j, K)² ≤ 10 for all j, K at L = 13" is a Lean theorem relative to three named hypotheses: hmaj is the analytic majorant (H1_ANALYTIC (5.3) with (6.1) and Lemma G), hsym is P5 (H2_CERTIFY_P5_VERIFY: CONFIRMED), hzero is ρ_1(0) = 1 (H1_ANALYTIC §7). ρ_1 itself is not defined in Lean.

## 2. The function `Bst` (= the majorant that bb_arb.py bounds)

Definitions in `H2BoxDir.lean`, `H2BoxG.lean`, `H2BoxTreeSound.lean`; only `Real.sin`, `Real.cos`, `Real.sinc`, `Real.sqrt`, `π` and `H1M.FCS` (H1Majorant.lean, (6.1)) occur. With `K = π u`, `L = 13`, `l ∈ {0..12}⁴`:

- `α(κ) = 13⁻¹ Σ_{t=−6}^{6} cos(κt)` (Lemma G's Fejér average, not its closed form), `al u l = α(π(u + 2l)/13)` (= α(k_l)), `aa = |al|`, `sq u l = sin(π(u + 2l)/26)` (= sin(k_l/2)).
- `K2 = Σ K_ρ²`, `Kh2 = Σ 4 sin²(K_ρ/2)` (= |K̂|²), `kh2 l = Σ 4 sq² ` (= |k̂_l|²), `g2f u l = (1 − α_l)²/(4 sq²)` (= the Lemma G bound of |g_{l,ν}|²).
- `Vt l = Π_ρ aa² · K2/kh2 · max_μ |169 aa_μ² − Kh2/kh2|`, `Ut l = Π aa · max aa · K2/kh2 · √(Σ_ν g2f)`, `St l = Kh2/kh2`.
- `Vst = Σ_l Vt/13⁴`, `Ust = Σ_l Ut/13³`, `Sst = Σ_l St/13²` (= |K̂|² S_L), `tauSt = FCS(K)·(Vst + √Kh2 · Ust)`, `Gst = (1 + tauSt)²/Sst`.
- `Bst = sinc(π/26)⁻² · FCS(K) + Gst`.

Relation to H1_ANALYTIC: Vst = |K|²V and Ust ≥ |K|²U of (5.2) (|P_lg_l| ≤ |g_l| ≤ (Σ_ν|1 − α_ν|²/|k̂_ν|²)^{1/2}, Lemma G; L²a_{l,μ}² = |K̂_μ|²/|k̂_{l,μ}|²); tauSt ≥ τ of (5.2) because 1/d̲ = F|K|² ≤ F_CS|K|² ((6.1)); Gst ≥ the gauge bound of (5.2); γ_13·FCS ≥ γ_13·F. So hmaj follows from (5.3), (6.1) and Lemma G, the statements proved in H1_ANALYTIC and partly formalized in H1Majorant.lean. Bst is the "crude" majorant of the §7 table (point sup 7.98 at L = 13), the same function that bb.py / bb_arb.py enclose.

## 3. How the check works

- Arithmetic (`H2BoxArith.lean`): integers `n` read as `n/2^40`; `mulD/mulU`, `divD/divU`, `qD/qU` (rationals), `sqrtU` round down/up; each has a proved inclusion lemma (`val_mulU`, `ub_mul`, `lb_div`, `ub_sqrt`, …).
- Sine table: `sinEnt m` encloses `sin(πm/106496)`, `2m ≤ 106496`, from `Real.hasSum_sin` and the alternating-series bounds (`Antitone.alternating_series_le_tendsto`, 12 and 13 terms), `|sin a − sin b| ≤ |a − b|`, and `Real.pi_gt_d20`, `Real.pi_lt_d20`. `mkTab_ok : TabOK mkTab` is a theorem for all `m ≤ 106496` (reflection `sin(π − x) = sin x`); no entry is checked by evaluation.
- One-dimensional enclosures (`H2BoxDir.lean`, box `[lo/4096, hi/4096]`): sin on a segment of `[0, π]` (concavity minimum principle, monotonicity on `[0, π/2]` and `[π/2, π]`); `sinc` antitone on `[0, π]` (from concavity of sin); Dirichlet identity `sin(13κ/2) = 13 sin(κ/2) α(κ)`; `|α| ≤ 1`; `1 − α(κ) ≤ 7κ²`; sign of `α_l` is `(−1)^l`; `α_0 = sinc(πu/2)/sinc(πu/26)`; the `l = 0` Taylor bound of g2f (H1_ANALYTIC §6, via `H1M.sinc_mul_le_two_sin`); the (6.1) factors `fcsS`, `fcsSm`, `fcsr`, `fcsrm`.
  Differences from bb_arb: α_0 is enclosed by `[sinc(π hi/2)/sinc(π lo/26), min(1, sinc(π lo/2)/sinc(π hi/26))]` instead of the exact endpoint values of the monotone function a_0 (Lean proves no monotonicity of a_0); the lower bound of sin on a segment is the minimum of the endpoint bounds.
- `Gbox` (`H2BoxG.lean`): the 28,561-term `l`-sum in integers, with the `l = 0` ratio bounds of bb_arb (`|K|²/|k̂_0|² ≤ 169 γ_13`, `|K̂|²/|k̂_0|² ∈ [min 169 α_0², max 169 α_0²]`). `Gbox_sound`: `Gst u ≤ val g` on the box, given an upper bound of FCS.
- `Fbox` (`H2BoxF.lean`): for each of the 16 `c` and 4 `μ`, a ratio bound `M` (vertex maximum, used only as a candidate) is verified by the separable check `Σ_ρ max(xl_ρ(r_ρ − M), xh_ρ(r_ρ − M)) ≤ 0`, and `Π S_ρ` is bounded below. `Fbox_sound`: `FCS(π u) ≤ val F` on the box.
- Tree (`H2BoxTree.lean`): roots = the 3,876 sorted cells of the 16⁴ grid; a box is accepted when `γ F + G ≤ 10`; otherwise all coordinates are bisected and the children that meet the sorted chamber are checked; the gauge bound of a parent is inherited (as in bb_arb); the gauge sum is evaluated only when `γF < 10` and the inherited bound does not suffice. Fuel 4 (depth ≤ 3). `checkRoots_sound`: covering of the chamber by the roots and by the filtered children (floor indices; bit choice by `decide`), plus the two soundness theorems.
- The certificate: `checkRoots mkTab roots = true`, split into 16 slices `H2BoxRun00` … `H2BoxRun15`, each by `native_decide`; `checkRoots_roots` joins them (`List.take_append_drop`).

The box tree is generated inside Lean, so no box list is imported. The Python mirror `numerics/h2lean_proto.py` (same integer algorithm) gives 25,241 boxes, 8,089 gauge evaluations, depth ≤ 2, largest accepted value 9.999994 (bb_arb: 25,169 boxes, 8,075 gauge evaluations, 9.9995).

## 4. Axioms

- Soundness theorems `mkTab_ok`, `Gbox_sound`, `Fbox_sound`, `checkRoots_sound`: `[propext, Classical.choice, Quot.sound]` (kernel-checked; no evaluation).
- `checkRoots_roots`, `Bst_le_ten`, `Bst_le_ten_K`, `rho1_sq_le_ten`: the standard three plus 16 axioms `YmLean.H2B.runNN._native.native_decide.ax_1_1` (NN = 00…15). In Lean 4.33 `native_decide` introduces one such auxiliary axiom per use (the role that `Lean.ofReduceBool` had in older versions); it asserts that the compiled evaluation of `checkRoots mkTab (slice NN) = true` is correct. This is trust in the Lean compiler and interpreter, not a mathematical assumption.
- No `sorry`, no `admit`, no `axiom` declarations in any H2Box file.

## 5. Runtime (Mac, Lean 4.33.1 interpreter)

- `lake build` of the 16 run modules, 4 modules in parallel: 160 s + 360 s + 141 s + 204 s = 865 s wall. Each module re-evaluates the sine table (≈ 16–20 s) and uses ≈ 5.7 GB resident memory; the longest single module (Run07, roots 3402–3644) takes ≈ 6–7 min.
- Single-file check of one slice (Run02, 486 roots): 155 s. Proof files (Arith, Dir, G, GSound, F, FSound, Tree, TreeSound, H2Box): each < 75 s to build.
- Gauge evaluation ≈ 0.25 s per box (28,561 summands), F_CS ≈ 1,024 integer ratios per box.
- Performance note: definitions that return functions are eta-expanded by the compiler, so `![…]`-built direction data were recomputed at every call (≈ 30× slowdown); the code uses the `@[noinline]` constructor `mk4` with evaluated arguments.

## 6. What remains

- hmaj is not proved in Lean. It needs ρ_1 defined in Lean and the chain (1.1) → Lemma T, Lemma Gauge, (6.1), Lemma G of H1_ANALYTIC. H1Majorant.lean and Tower.lean contain the finite-dimensional pieces; the identification of the averaging operator with Lemma S/G and the fine/coarse Prop. A symbols (§2–§3) is not formalized.
- hsym (P5) is a hypothesis. A proof would need the B_4 covariance of the averaging symbol (H2_CERTIFY_P5_VERIFY §3) in Lean. (The symmetry of Bst itself is not needed and not proved.)
- hzero (ρ_1(0) = 1) is a hypothesis.
- Trust in `native_decide`: the 16 runs depend on the Lean compiler and interpreter being correct (`…native_decide.ax_1_1`). A kernel-checked `decide` is out of reach for 25,000 boxes of 28,561-term sums.
- The tree reaches depth 2 with margin ≈ 6·10⁻⁶ below 10 on the hardest box; a change of rounding could require fuel 5 (the code already allows depth 3).
