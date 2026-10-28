# Lean 4 formalization (18 files)

No file contains `sorry`. All theorems depend on the standard axioms only (see Axioms). Markdown sources are in `../` (= notes/). Per-file detail follows the inventory.

| File (`YmLean/`) | Theorems (lines) | Markdown source | VERIFY file |
|---|---|---|---|
| `LemmaDPrime.lean` | `lemma_DPrime` (405 lines) | LEMMA_DPRIME.md §1–§2 | VERIFY_LemmaDPrime.md |
| `LemmaDE.lean` | `lemma_D`, `lemma_E`, `lemma_DE`, `lemma_DPrime_step8`, `g₁_of_J_zero` (162) | LEMMAS.md; LEMMA_DPRIME.md step 8 | none (LEMMAS_DE_VERIFY.md) |
| `LemmaH.lean` | `gronwall_telescope`, `lemma_H`, `lemma_H_half` (132) | SOURCES_HBETA.md Lemma H | none (SOURCES_HBETA_VERIFY.md) |
| `DetIdentities.lean` | `det_bordered`, `det_restrict_add_gauge` (143) | numerics/NUMERICS.md §1 (iv), (v) | none |
| `Telescoping.lean` | `quad_split`, `adapted_in_ker`, `telescoping_det`, `gram_adapted`, `telescoping_log` (127) | R2_TELESCOPING.md Prop. 3.1 | none (R2_VERIFY.md) |
| `AbelianCount.lean` | `su2_count`, `ab_count`, `equipartition`, `abelian_share`, `Sab_values`, `βab` (55) | U1_INFINITE_LATTICE.md Prop. 9.1 | none (U1_VERIFY.md) |
| `LemmaDDoublePrime.lean` | `lemma_DDoublePrime` (146) | THEOREM2_PROOF_v3.md §2.2; KAPPA_BOUNDED.md §5.3 | none (THEOREM2_PROOF_v2_VERIFY.md) |
| `TheoremK.lean` | `telescoping_bound`, `telescoping_bound_tsum`, `window_of_partial` (45) | KAPPA_BOUNDED.md §5.1–§5.2 | VERIFY_TheoremK.md |
| `Gronwall.lean` | `discrete_gronwall`, `discrete_gronwall_exp`, `contraction_bound` (56) | THEOREM2_PROOF_v4.md §5.1, §5.3; KAPPA_BOUNDED.md Prop. 4.1 | VERIFY_TheoremK.md |
| `CubeCount.lean` | `cube_count_sharp`, `cube_count_lower` (51) | SOURCES_FX_O1.md §2–§3 | VERIFY_CubeCount.md |
| `BlockNorm.lean` | `blockDiag_opNorm_le/eq`, `blockDiag_comp_opNorm_le`, `blockCol_opNorm_le`, `rho2_le` (94) | H2_CERTIFY.md §1 R2, §2 (i-a) | VERIFY_BlockNorm.md |
| `OishiRump.lean` | `oishi_rump_ring`, `oishi_rump`, `oishi_rump_eta`, `l2_le_frob`, `frobenius_power_bound` (115) | H2_CERTIFY.md §5 C2/C4; H2_CERTIFY_VERIFY.md §4 | VERIFY_BlockNorm.md |
| `Envelope.lean` | `envelope_layer`, `envelope_nontrivial`, `envelope_decay`, `envelope_not_scale_invariant` (104) | ASSEMBLY.md §2.9 (B-NT) | VERIFY_Envelope.md |
| `Divergence.lean` | `div_add/smul/sum`, `step_divergence`, `path_divergence`, `loop_divergence`, `profile_divergence`, `straight_isPath`, `P4_divergence` (171) | H2_CERTIFY_P4.md §2 Steps 2–3 | VERIFY_Envelope.md |
| `TheoremC1.lean` | `c1_two_step`, `c1_kappa_bound`, `c1_window` (59) | THEOREM2_PROOF_v4.md §5.3; B2_TWOSTEP.md §2 | VERIFY_TheoremC1.md |
| `StripBound.lean` | `strip_bound_linear`, `strip_bound_quadratic` (73) | SOURCES_HBETA_N3.md §4 | VERIFY_TheoremC1.md |
| `CertBridge.lean` | `entrywise_to_opnorm`, `interval_to_opnorm`, `cell_invertible`, `norm_submatrix_le`, `rq_weyl`, `pert_bound`, `cell_sup_bound`, `vertex_bound` (268) | numerics/h1cert_cell.py, h1cert_cell2.py | VERIFY_CertBridge.md |
| `Tower.lean` | `weighted_tower`, `weighted_tower_le`, `tower_bounds`, `I1_compress`, `rq_conj`, `rayleigh_sum_bound`, `conj_rayleigh_bound`, `rank_one_bound`, `majorant_core`, `lemmaT_core` (167) | H1_ANALYTIC.md §2–§3, (1.1); H1_ANALYTIC_VERIFY.md V1 | VERIFY_Tower.md |
| `Schur.lean` | `schur_test_weighted`, `schur_test` (65) | SOURCES_LOC.md §3.3; SOURCES_S2_FORM.md §2 Π3; SOURCES_A3_SIGMA.md 2.6 | VERIFY_CombesThomas.md |
| `CombesThomas.lean` | `norm_entry_le`, `coercive_inv`, `combes_thomas`, `combes_thomas_exp`, `combes_thomas_decay`, `combes_thomas_schur` (161) | SOURCES_A1_KERNEL.md §7 Lemma CT (used in §8–§10); SOURCES_A1_A4_VERIFY.md Part A §1, grade (4) | VERIFY_CombesThomas.md |
| `Interp.lean` | `multilinear_convex`, `monomial_affine`, `window_perturb`, `window_perturb_partial`, `rescale_exp`, `rescale_rate`, `K1_iff`, `K1_numeric`, `xexp_le`, `xexp_absorb` (LINES) | SOURCES_A3_SIGMA.md 3.2; SOURCES_T2_KUNIF.md 5.2 (K3); SOURCES_T2_KAPPA2.md (2.36), (K1); SOURCES_GGAIN_LF.md | VERIFY_Interp.md |

## Toolchain

- Lean `v4.33.1` (`lean-toolchain`), Lake 5.0.0.
- Mathlib tag `v4.33.1` (commit `0df444a3`). The newest stable tag is `v4.35.0`. It needs a second toolchain (2.7 GB), and the disk had 4–6 GB free, so the project uses the installed toolchain.
- Dependencies are shallow clones in `.lake/packages` at the revisions of Mathlib's manifest. Only the import closure of `Mathlib.Analysis.Real.Sqrt` and `Mathlib.Topology.Order.IntermediateValue` was fetched (`lake exe cache get <modules>`, 1484 files, 1.5 GB). LemmaH.lean added the closure of `Mathlib.Analysis.SpecialFunctions.Log.Basic` (about 445 files from the local cache, no download; build dir now 1.5 GB). DetIdentities.lean added the closures of `Mathlib.LinearAlgebra.Matrix.SchurComplement` and `Mathlib.Data.Matrix.ColumnRowPartitioned` (140 files from the local cache, no download; `.lake` 1.9 → 2.0 GB).
- Build: `lake build` (all 18 files). LemmaDDoublePrime.lean needed no new oleans. Each file builds in a few seconds.

## Statement correspondence

Notation: `u k` = u_k = 1/g_k². The coupling is `1 / √(u k)` (= u_k^{−1/2} for u_k > 0). Sums `∑ i ∈ Ioc k K` are Σ_{i=k+1}^{K}. `(K - k : ℕ)` is K − k.

| LEMMA_DPRIME.md | Lean |
|---|---|
| β_j(g) | `β j g`, `β : ℕ → ℝ → ℝ` |
| γ_0 > 0, γ_Bal > 0, C_1 ≥ 0, β_∞ > 0 | `hγ₀`, `hγBal`, `hC₁`, `hβinf` |
| (i) β_j ∈ C¹([0, γ_0]) | `hcont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀)`. The proof uses only continuity, so the Lean hypothesis is weaker than C¹. |
| (i) \|β_j(g) − β_j(0)\| ≤ C_1 g on [0, γ_0] | `hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → \|β j g - β j 0\| ≤ C₁ * g` |
| (ii) sup_j \|β_j(0)\| ≤ B | `hB : ∀ j, \|β j 0\| ≤ B` (B ≥ 0 follows; not assumed) |
| (iii) β_j(0) → β_∞, and J | `hJ : ∀ j, J < j → βinf / 2 ≤ β j 0`. J is any such index; the least one gives the constants of the note. This is all the proof uses of (iii). |
| γ = min(γ_0, γ_Bal, β_∞/(4C_1)), ∞ if C_1 = 0 | `γdef γ₀ γBal C₁ βinf` (an `if C₁ = 0`), via `hγ : γ = γdef …` |
| B′, D, D′, g_1, K_0 | `B' B βinf`, `D J B βinf`, `D' J B βinf`, `g₁ γ J B βinf = 1/√(1/γ² + D)`, `K₀ J B βinf = J + ⌈8D′/β∞⌉₊` |
| recursion 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k) | `u (k + 1) = u k - β (k + 1) (1 / √(u k))` |
| clamped map φ(u) = max(u, 1/γ²)^{−1/2} | `φ γ u = 1 / √(max u (1 / γ ^ 2))` |
| clamped flow ũ_k from ũ_0 = u_0 | `flow β γ u₀ k` |

Conclusions of `lemma_DPrime` (one conjunction, in this order):

1. `γ ≤ γBal` and `g₁ γ J B βinf ≤ γ`.
2. (a), g = 0: `∀ K k, k ≤ K → -(J * B) ≤ ∑ i ∈ Ioc k K, β i 0`.
3. (a), along trajectories: for every `c` with `c i ∈ ]0, γ]` for `i < K`, and `k ≤ K`, `-D ≤ ∑ i ∈ Ioc k K, β i (c (i - 1))`.
4. (b): `∀ K g, 0 < g → g ≤ g₁ → ∃ u, Shot β γ g K u`. `Shot β γ g K u` means: the recursion holds for `k < K`; `1/√(u k) ∈ ]0, γ]` for all `k ≤ K`; `u K = 1/g²`; and `1/√(u K) = g`. The lemma holds for every K ≥ 0 (the note says K ≥ 1). g_0 is `1/√(u 0)`.
5. (c): for every `u` with the recursion for `k < K`, couplings `1/√(u k) ∈ ]0, γ]` for `k < K`, and `u K = 1/g²`: for all `k ≤ K`, `1/g² + (β∞/4)(K−k) − D′ ≤ u k ≤ 1/g² + B′(K−k)`. The trajectories of (b) satisfy these hypotheses.
6. (d): the same trajectories, for `K ≥ K₀`: `1/g² + (β∞/8)(K−k) ≤ u k ≤ 1/g² + B′(K−k)`.
7. (d), second part: for `K ≥ K₀` and every `g ∈ ]0, γ]`, `∃ u, Shot β γ g K u` (IVT on [t + (β∞/8)K, t + B′K]).

## Proof map (Lean lemma ↔ step of the note)

- Step 0 (P1)–(P3): `P1`, `P2`, `P3` (from `pert`: \|β_j(x) − β_j(0)\| ≤ C_1γ ≤ β∞/4).
- Step 1 / Step 6 / Step 7 counting: `early J k K` = #{i ∈ (k, K] : i ≤ J}, `early_le_J`, `window_sum_ge`, `window_sum_le`; then `tail_ge_neg_D` (a), `tail_le` (1.2), `tail_ge_c` (Step 6), `tail_ge_d` (Step 7).
- Telescoping u_k − u_K = T(k,K): `telescope`, `tail_eq`, `flow_tail`.
- Step 2: `φ_pos`, `φ_le`, `φ_eq`, `φ_cont`, `flow_cont` (induction on k; `ContinuousOn.comp_continuous` with φ mapping into ]0, γ] ⊆ [0, γ_0]).
- Steps 3–4: `flow_ivt` (Mathlib `intermediate_value_Icc`), brackets inside `shooting`.
- Step 5: `clamp_inactive`, `shot_of_flow`, `t_ge_of_le_g₁` (g ≤ g_1 ⇒ 1/g² ≥ 1/γ² + D). The bound ũ_k ≥ t − D is proved for the clamped flow first, then the clamp is removed, as in the note.
- Step 7 shooting: `shooting_large_K`.

## Not formalized

- Step 8 is now `lemma_DPrime_step8` (LemmaDE.lean).
- Remark 3 / ledger L5 (history-dependent β_j).
- Remarks 1, 2 and §5 (fit to Balaban's Theorem 1; not a mathematical statement in this abstract form).

## LemmaDE.lean (LEMMAS.md Lemmas D, E, corrected; one-argument β_j as in LemmaDPrime)

- `lemma_D β γ b b'`: `0 < γ`, `0 ≤ b ≤ b'`, `β j` continuous on `]0, γ]`, `b ≤ β j x ≤ b'` for `x ∈ ]0, γ]`. Conclusions: (1) every trajectory with couplings in `]0, γ]` for `k < K` and `u K = 1/g²` has `1/g² + b(K−k) ≤ u k ≤ 1/g² + b'(K−k)`; (2) for every `K` and `g ∈ ]0, γ]`, `∃ u, Shot β γ g K u` with these bounds. Hypotheses weaker than the note (0 ≤ b, continuity and bounds only on `]0, γ]`, K = 0 allowed). The history-dependent β_{k+1}(g_0, …, g_k) of LEMMAS.md is NOT formalized.
- `γE γ₀ C β₀ = if C = 0 then γ₀ else min γ₀ √(β₀/(2C))`. `lemma_E β β1 γ₀ C β₀ β₀'`: `β₀ ≤ β1 j ≤ β₀'` (β1 = β_j^{(0)}), `|β j g − β1 j| ≤ C g²` on `[0, γ₀]` ⇒ `0 < γE ≤ γ₀` and `β₀/2 ≤ β j g ≤ β₀' + β₀/2` for `g ∈ ]0, γE]`.
- `lemma_DE`: E + continuity on `[0, γ₀]` ⇒ shooting for every K and `g ∈ ]0, γE]` with bounds `β₀/2`, `β₀' + β₀/2`.
- `lemma_DPrime_step8`: Lemma D′ (d), last sentence. `β0min β J βinf = min(min_{j ≤ J} β_j(0), β∞/2)` (min over j = 0, …, J), `γ″ = γdef γ₀ γBal C₁ (2·β0min)`.
- `g₁_of_J_zero`: `g₁ γ 0 B βinf = γ`.

## LemmaH.lean (SOURCES_HBETA.md Lemma H, Step 1, abstract form)

- `Bp a v j = Σ_{i<j} a j i · v i` (B′_j, with `a j i` = ∂β_j/∂u_i), `εH a j = Σ_{i<j} |a j i|`, `PH a j = Π_{l=1}^{j} (1 + ε_l)`.
- `gronwall_telescope`: `Π_{l=1}^{K}(1+e_l) − 1 = Σ_{j=1}^{K} e_j Π_{l=1}^{j−1}(1+e_l)`. `prod_le_exp`: `Π(1+e_l) ≤ exp Σ e_l` for `e_l ≥ 0`.
- `lemma_H a v c x K`: `|v 0| ≤ 1`, `v (j+1) = v j − Bp a v (j+1)` for `j < K`, column sums `Σ_{j ∈ (i, K]} |a j i| ≤ c i` for `i < K`, `Σ_{i<K} c i ≤ x` ⇒ `Σ_{j=1}^{K} |B′_j| ≤ Π(1+ε_j) − 1 ≤ e^x − 1` and `|v k − v 0| ≤ e^x − 1` for `k ≤ K`.
- `lemma_H_half`: with `v 0 = −1` and `x ≤ log(3/2)`: `Σ |B′_j| ≤ 1/2` and `1/2 ≤ |v k| ≤ 3/2`.
- The hypothesis is the SUM of the column sums (Σ_j ε_j ≤ x, what the note's Step 2 produces). A bound on sup_i of the column sums alone is not enough: `a j (j−1) = −x`, other entries 0, gives Σ|B′_j| = (1+x)^K − 1.
- Not formalized: Step 2 (S_3 ≤ 2γ/β, i.e. Σ c_i ≤ x for c_i = ½C₁A g_i³), Step 3 (bootstrap on |c| ≤ 2r), and the Yang–Mills identification (I).

## DetIdentities.lean (numerics/NUMERICS.md §1, steps (iv) and (v))

A restriction to a subspace is the Gram matrix `Zᵀ K Z` on an orthonormal basis `Z` (columns) of the subspace.

- `det_bordered K C Z Y`: `hcard : |ι| = |μ| + |ρ|`, `fromCols Z Y` orthonormal (`(fromCols Z Y)ᵀ (fromCols Z Y) = 1`), `C Z = 0`, `det(C Cᵀ) ≠ 0` ⇒ `det [[K, Cᵀ], [C, 0]] = (−1)^r · det(Zᵀ K Z) · det(C Cᵀ)`. With the dimension count, `Z` is an orthonormal basis of `ker C`. This is step (v) multiplied out. `K` symmetric and `K > 0` on `ker C` are not needed.
- Proof: change of basis by `diag([Z | Y], 1)` (determinant ±1); the result is the 3×3 block matrix `[[A, B, 0], [B′, E, Gᵀ], [0, G, 0]]` with `G = C Y`, `G Gᵀ = C Cᵀ`; Schur complement on `[[E, Gᵀ], [G, 0]]` with explicit inverse (`det_bordered_adapted`); `det [[E, Gᵀ], [G, 0]] = (−1)^r det(G)²` (`det_fromBlocks_zero₂₂`, via `det [[0,1],[1,0]] = (−1)^r`, `det_swapBlocks`).
- `det_restrict_add_gauge Δ D V U M₁ M₂`: `Δ` symmetric, `Δ D = 0`, `fromCols V U` orthonormal basis of `W`, `D = U M₁`, `U = D M₂` (columns of `U`: orthonormal basis of `N = range D`, so `N ⊆ W` and `V` spans `W ∩ N^⊥`) ⇒ `det([V|U]ᵀ (Δ + D Dᵀ) [V|U]) = det(Vᵀ Δ V) · det(Dᵀ D)`. This is step (iv). The basis of `W` is the adapted one; any other orthonormal basis of `W` differs by an orthogonal matrix and gives the same determinant (not formalized).

## Telescoping.lean (R2_TELESCOPING.md Prop. 3.1, finite-dimensional; R2_VERIFY.md §2.6)

Notation: `Q₁ : ℝ^ι → ℝ^ρ₁`, `Q₂ : ℝ^ρ₁ → ℝ^ρ₂`, `Q = Q₂ Q₁`. `Z₁`: orthonormal basis of `ker Q₁`. `H₁`: minimizer map, `Q₁ H₁ = 1` and `Z₁ᵀ Δ H₁ = 0` (Lagrange condition: `Δ H₁ V ⊥ ker Q₁`). `Δ₁ = H₁ᵀ Δ H₁` (the one-step effective form). `Z₂`: basis of `ker Q₂`. `B = [Z₁ | H₁ Z₂]`.

- `quad_split`: `(H₁ V + Z₁ c)ᵀ Δ (H₁ V + Z₁ c) = Vᵀ Δ₁ V + cᵀ (Z₁ᵀ Δ Z₁) c` (the Fubini step: no cross term). Needs only `Δ` symmetric and the Lagrange condition; `Δ` need not be positive (R2_VERIFY: "positive on ker Q̃_1" suffices for the integral).
- `adapted_in_ker`: `Q₂ Q₁ B = 0`.
- `telescoping_det`: if `Z` is orthonormal (`Zᵀ Z = 1`) and `B = Z M` (`M` square on `α ⊕ β`, i.e. `Z` is an orthonormal basis of `ker Q` with `dim ker Q = dim ker Q₁ + dim ker Q₂`), then `det(Z₁ᵀ Δ Z₁) · det(Z₂ᵀ Δ₁ Z₂) = det(Zᵀ Δ Z) · det(Bᵀ B)`.
- `gram_adapted`: `|ι| = |α| + |ρ₁|`, `Z₁ᵀ Z₁ = 1`, `Q₁ Z₁ = 0`, `det(Q₁ Q₁ᵀ) ≠ 0`, `Q₁ H₁ = 1` ⇒ `det(Bᵀ B) = det(Z₂ᵀ (Q₁ Q₁ᵀ)⁻¹ Z₂)`. The intermediate Gram factor is independent of `Δ`.
- `telescoping_log` (the stated target): with both one-step determinants nonzero, `log det(Δ|_{ker Q₁}) + log det(Δ₁|_{ker Q₂}) = log det(Δ|_{ker Q}) + log det(Z₂ᵀ (Q₁ Q₁ᵀ)⁻¹ Z₂)` (`Real.log`, so `log |·|`). For orthonormal `Z₂` this is the Gram determinant of the orthonormal basis of `ker Q₂` in the metric `(Q₁ Q₁ᵀ)⁻¹`.
- Not formalized: the measure-theoretic (3.1) itself (δ-functions, Gaussian integrals, coarea factors `det(Q Qᵀ)^{−1/2}`); the step that converts the Gram term into the coarea factors (`det(Q Qᵀ) = det(Q₁ Q₁ᵀ) det(Q₂ Q₂ᵀ) det(Z₂ᵀ (Q₁Q₁ᵀ)⁻¹ Z₂)`, a Jacobi complementary-minor identity); the existence of `Z`, `M` (the dimension count `dim ker Q = dim ker Q₁ + dim ker Q₂` for surjective `Q₂`).

## AbelianCount.lean (U1_INFINITE_LATTICE.md Prop. 9.1, counting part)

- `su2_count N`: `12N − 12 − 3(N − 1) = 9N − 9`. `ab_count N`: `4N − 4 − (N − 1) = 3(N − 1)` (σ₃ sector; `N = L^{4k}` sites per cell).
- `equipartition Δ`: `det Δ ≠ 0` ⇒ `tr(Δ Δ⁻¹) = dim` (Gaussian expectation of `⟨B, Δ B⟩` with covariance `Δ⁻¹`).
- `abelian_share P E L k`: `|P| = 6L^{4k}` plaquettes, `(Σ_p E_p)/8 = ½ · (4N − 4 − (N − 1))` (equipartition with `½⟨B,Δ₀B⟩ = Σ_p (dB)_p²/8`) ⇒ `Ē/8 = (1 − L^{−4k})/4`.
- `Sab L k = (1 − L^{−4k})/4`; `Sab_values`: 15/64 (L=2, k=1), 20/81 (L=3, k=1), 255/1024 (L=2, k=2); `βab`: `Sab L (j+1) − Sab L j = (1 − L^{−4}) L^{−4j}/4`.
- Not formalized: the physics inputs (Hessian `¼ cos(θ/2) (dB)_p²`, hypercubic symmetry of `E_p`, the rank statements behind the dimension count). They are hypotheses or arithmetic here.

## LemmaDDoublePrime.lean (THEOREM2_PROOF_v3.md §2.2, KAPPA_BOUNDED.md §5.3; Lemma D″)

Reuses `flow`, `φ`, `Shot`, `window_sum_le`, `tail_eq`, `flow_tail`, `t_ge_of_le_g₁`, `shot_of_flow` from LemmaDPrime.lean. `flow_contDD` repeats `flow_cont` without the structure `Hyp` (Hyp contains (ii), (iii) of Lemma D′, which D″ does not assume).

| Note | Lean |
|---|---|
| (i) continuity on [0, γ_0], \|β_j(g) − β_j(0)\| ≤ C_1 g | `hcont`, `hlip` (as in Lemma D′; C¹ not assumed) |
| (5.1) T_0(k, K) ∈ [b(K−k) − 2R, b(K−k) + 2R], 0 ≤ k < K | `hwin : ∀ k K, k < K → \|∑ i ∈ Ioc k K, β i 0 - b * (K - k)\| ≤ 2 * R`, `hb : 0 < b` |
| γ = min(γ_0, γ_Bal, b/(4C_1)) | any `γ` with `0 < γ`, `γ ≤ γ₀`, `C₁ * γ ≤ b / 4` |
| D = D′ = 2R, β = 3b/4, B′ = 5b/4 + 2R, g_1 = (1/γ² + 2R)^{−1/2} | written inline |

Conclusions of `lemma_DDoublePrime` (in this order):

1. `0 ≤ R` (from (5.1) at k = 0, K = 1) and `g₁ ≤ γ`.
2. (a″): for couplings `c i ∈ [0, γ]`, `i < K`, and `k < K`: `(3b/4)(K−k) − 2R ≤ T(k,K) ≤ (5b/4)(K−k) + 2R`. `tail_wideDD` gives the bracket `[−2R, B′(K−k)]` for all `k ≤ K`.
3. (b): for every `K` and `g ∈ ]0, g₁]`: `∃ u₀, Shot β γ g K (flow β γ u₀) ∧ ∀ k ≤ K, 1/γ² ≤ flow β γ u₀ k`. The solution is the clamped flow, and the clamp is inactive on it. K = 0 is allowed.
4. (c′): for every `u` with the recursion for `k < K` and couplings in `]0, γ]` for `k < K`, and all `m ≤ n ≤ K`: `u n + (3b/4)(n−m) − 2R ≤ u m ≤ u n + (5b/4 + 2R)(n−m)`. The constants are those of the note and of KAPPA_BOUNDED_VERIFY §6: β = 3b/4, B′ = 5b/4 + 2R, D′ = 2R. The condition `u K = 1/g²` is not needed.
5. (d): same trajectories, `m ≤ n ≤ K`, `8R/b ≤ n − m`: `u n + (b/2)(n−m) ≤ u m ≤ u n + B′(n−m)`. The lower constant is b/2, as in KAPPA_BOUNDED §5.4. This implies the b/8 form.

Weaker than the note: continuity instead of C¹; γ is any admissible value (γ_Bal is not built in; with γ ≤ γ_Bal added by the caller, the note's γ is one instance); R ≥ 0 is derived, not assumed; K = 0 allowed in (b); (c′) and (d) hold for every trajectory with couplings in ]0, γ], not only those of (b). Same as the note: (5.1) is assumed for every pair k < K (all K), as in KAPPA_BOUNDED (5.1). Not formalized: history-dependent β (L5).

## TheoremK.lean (KAPPA_BOUNDED.md §5.1–§5.2, arithmetic steps only)

| Note | Lean |
|---|---|
| per-step errors summed: \|x_n − x_0 − nβ_∞\| ≤ Σ_{j<n} D(j) | `telescoping_bound x βinf D` |
| same, uniform in n for D ≥ 0 summable: ≤ Σ' D | `telescoping_bound_tsum` |
| (5.1): \|S_k − kb\| ≤ R ∀k ⇒ \|S_K − S_k − b(K−k)\| ≤ 2R, k ≤ K | `window_of_partial x b R` |

Not formalized: Theorem K itself (\|d_k\| ≤ κ_*, Prop. 2.2; analysis of the one-loop symbols).

## Gronwall.lean (THEOREM2_PROOF_v4.md §5.1, §5.3; KAPPA_BOUNDED Prop. 4.1)

| Statement | Lean |
|---|---|
| a_{j+1} ≤ (1+ε_j)a_j + f_j, ε, f, a_0 ≥ 0 ⇒ a_n ≤ Π_{j<n}(1+ε_j)(a_0 + Σ_{j<n} f_j) | `discrete_gronwall` |
| same with Π(1+ε_j) ≤ exp Σ ε_j (`prod_le_exp` of LemmaH.lean) | `discrete_gronwall_exp` |
| N_{j+1} ≤ qN_j + Z, 0 ≤ q < 1, N_0, Z ≥ 0 ⇒ N_j ≤ N_0 + Z/(1−q) (the recursion of Prop. 4.1, Theorems C1, B2) | `contraction_bound` |

Window-to-pointwise (increments in [b/2, B′] ⇒ pointwise bounds) is not repeated: it is conclusion 5 ((d)) of `lemma_DDoublePrime`.

## Axioms

```
#print axioms YmLean.lemma_DPrime
'YmLean.lemma_DPrime' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_D' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_E' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_DE' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_DPrime_step8' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.g₁_of_J_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.gronwall_telescope' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_H' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_H_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.det_bordered' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.det_restrict_add_gauge' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.quad_split' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.adapted_in_ker' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.telescoping_det' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.gram_adapted' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.telescoping_log' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.su2_count' depends on axioms: [propext, Quot.sound]
'YmLean.ab_count' depends on axioms: [propext, Quot.sound]
'YmLean.equipartition' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.abelian_share' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.Sab_values' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.βab' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemma_DDoublePrime' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.telescoping_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.telescoping_bound_tsum' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.window_of_partial' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.discrete_gronwall' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.discrete_gronwall_exp' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.contraction_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## CubeCount.lean (SOURCES_FX_O1.md §2–§3, Lemma [P] arithmetic core; statement check `VERIFY_CubeCount.md`)

| Note | Lean |
|---|---|
| (F1) Fact B N ≤ 4^d(1+2ℓ), (F2) N ≥ 21^d ⇒ N ≤ (42/17)4^dℓ and ℓ ≥ N/(3·4^d) | `cube_count_sharp d hd N ℓ` |
| O1-R′: + (F3) n_f ≤ (ρ+2)^d N_Y, N_Y ≤ N ⇒ ℓ ≥ N/(3·4^d) and ℓ ≥ n_f/(3·4^d(ρ+2)^d) | `cube_count_lower d hd ρ nf N NY ℓ hρ` |

Not formalized: Facts A, B, C themselves (geometry), the spanning-tree existence. Axioms: `[propext, Classical.choice, Quot.sound]` for both.

## BlockNorm.lean, OishiRump.lean (H2_CERTIFY.md §1 R2, §2 (i-a), §5 C2/C4; H2_CERTIFY_VERIFY.md §4, §5 item (5)); statement check: `VERIFY_BlockNorm.md`

- `BlockNorm.lean` (94 lines): `blockDiag T` on `PiLp 2` (ℓ² direct sum). `blockDiag_opNorm_le`, `blockDiag_opNorm_eq` (‖⊕T_l‖ = ⨆‖T_l‖), `blockDiag_comp_opNorm_le` (T_l = A_l∘B_l), `blockCol_opNorm_le` (‖(⊕A_l)B‖ ≤ max‖A_l‖·‖B‖, the R2 form), `rho2_le` ((1.1): ρ_2 ≤ ρ_1(j,K)·max_l ρ_1(j−1,k_l)).
- `OishiRump.lean` (115 lines): spectral norm (`Matrix.Norms.L2Operator`), 𝕜 = ℝ or ℂ. `oishi_rump_ring` (complete normed ring), `oishi_rump` (‖RA−1‖ < 1 ⇒ IsUnit A, ‖A⁻¹‖ ≤ ‖R‖/(1−‖RA−1‖)), `oishi_rump_eta` (the η of `solve_cert`), `frob` (Frobenius, written out), `l2_le_frob`, `frobenius_power_bound` (‖M‖₂ ≤ frob((MᴴM)^{2^m})^{1/2^{m+1}}, the bound of `norm2_upper`).
- Axioms: `[propext, Classical.choice, Quot.sound]` for all ten theorems. Not formalized: interval arithmetic, the identification of H_j with blocks of 𝔅_j⁻¹. Oleans: closure of `Mathlib.Analysis.CStarAlgebra.Matrix` (315 files from the local cache, no download).

## Envelope.lean, Divergence.lean (ASSEMBLY.md §2.9 (B-NT); H2_CERTIFY_P4.md §2 Steps 2–3); statement check `VERIFY_Envelope.md`

- `Envelope.lean` (104 lines): `envelope_layer` (L^kε > d_0/L and 1/g_k² ≤ 1/g² + β′ log(L^kε)^{−1} ⇒ g_k⁴ ≥ (1/g² + β′ log(L/d_0))^{−2}), `envelope_nontrivial` (§2.9 (i) with the integral replaced by a finite nonnegative weighted sum and |R| ≤ ½: S ≥ ½c(1/g² + β′ log(L/d_0))^{−2}Σw, and S > 0 if Σw > 0), `envelope_decay` (§2.9 (ii): 0 ≤ S(d) ≤ A(d)c u(d)^{−2}, A ≤ M, u(d) ≥ 1/g² + β log(1/d) ⇒ S(d) → 0 as d → 0⁺), `envelope_not_scale_invariant` (no limit a ≠ 0).
- `Divergence.lean` (171 lines): 1-chains `Fin d × (Fin d → ℤ) → R` (R a commutative ring), `div F y = Σ_ν [F(ν, y − e_ν) − F(ν, y)]`, steps with the χ_Γ sign convention. `div_add`, `div_smul`, `div_sum` (linearity), `step_divergence`, `path_divergence` (δ_b − δ_a), `loop_divergence` (0), `profile_divergence` (path + Σ w_i · loop_i ⇒ δ_b − δ_a), `straight_isPath`, `P4_divergence` (identity (D) for the profile straight 0 → Le_μ plus loops 0 → d_i → d_i + Le_μ → Le_μ → 0).
- Axioms: `[propext, Classical.choice, Quot.sound]` for all theorems except `straight_isPath` (`[propext, Quot.sound]`). Not formalized: (NT) itself, the integral over T⁴ (finite sums instead), Fourier Step 4 of P4, the reading of the profile from avg_profile (R1). One linter warning (`<;>` style) in Divergence.lean.

## TheoremC1.lean, StripBound.lean (THEOREM2_PROOF_v4.md §5.3, B2_TWOSTEP.md §2, KAPPA_BOUNDED.md Prop. 4.1; SOURCES_HBETA_N3.md §4, SOURCES_HBETA_N3_VERIFY.md item 2); statement check: `VERIFY_TheoremC1.md`

- `TheoremC1.lean` (59 lines): `c1_two_step` (D_{j+2} ≤ qD_j + S, q < 1 ⇒ D_n ≤ max(D_0, D_1) + S/(1−q), last line of Theorem C1), `c1_kappa_bound` (κ_j ≤ A + C·N_j ⇒ κ_j ≤ A + C(N_0 + Z/(1−q)); Prop. 4.1 is A = 0), `c1_window` (|β_j − β∞| ≤ κ_j g_j², κ_j ≤ κ_*, Σ_s g² ≤ |s|γ² ⇒ |Σ_s β − |s|β∞| ≤ κ_*|s|γ²).
- `StripBound.lean` (73 lines): `strip_bound_linear` (x_{k+1} ≤ (1+ε_k)x_k ⇒ x_n ≤ x_0 exp Σε), `strip_bound_quadratic` (x_{k+1} ≤ (1+ε_k)x_k + δ_k x_k², x_0 ≤ τ, Σε ≤ a, Σδ·2τ ≤ b, e^{a+b} ≤ 3/2 ⇒ x_n ≤ τe^{a+b} ≤ (3/2)τ for n ≤ N; bootstrap with ε′ = ε + (3/2)τδ).
- Axioms: `[propext, Classical.choice, Quot.sound]` for all five. Not formalized: (H2) ⇒ q < 1 (numerical), the derivative estimate (2.2) of B2_TWOSTEP, Steps 0 and 2 of Lemma N3 (the inputs ε_k, δ_k). The N3 proof of the note uses the tangent recursion for v = du/dc, not the quadratic δw recursion (see VERIFY).

## CertBridge.lean (numerics/h1cert_cell.py `final_bound`, h1cert_cell2.py `cell_bound2`; VERIFY_BlockNorm gaps 3–4); statement check: `VERIFY_CertBridge.md`

- `CertBridge.lean` (268 lines, no `sorry`): `entrywise_to_opnorm` (‖A_ij − B_ij‖ ≤ E_ij ⇒ ‖A − B‖₂ ≤ ‖E‖_F), `interval_to_opnorm` (real Alo ≤ A, A₀ ≤ Ahi ⇒ ‖A − A₀‖₂ ≤ ‖Ahi − Alo‖_F), `cell_invertible` (every A in the enclosure: invertible, ‖A⁻¹‖ ≤ nR/(1−η), ‖A⁻¹ − R‖ ≤ nR η/(1−η), via `oishi_rump_eta`), `norm_submatrix_le`, `rq` (Rayleigh numerator re⟪x, Gx⟫), `rq_weyl`, `pert_bound` (the `pert` term of `final_bound`), `cell_sup_bound` (composite: λ_max(Zᴴ T2 Z + γ′ w wᴴ) ≤ core + pert), `vertex_bound` (h1cert_cell2: max over 2^4 vertices + ‖r_G‖_F).
- Axioms: `[propext, Classical.choice, Quot.sound]` for all twelve printed theorems. Not formalized: correctness of the arb enclosures (P1′/P2/P3, P4), the Python implementation, ρ_1 = √λ_max(G)/L, and the `inv_or` η of h1cert_cell2.

## Tower.lean (H1_ANALYTIC.md §2 (2.2), (I1), §3 Lemma T (a)–(c), (1.1); H1_ANALYTIC_VERIFY.md V1); statement check `VERIFY_Tower.md`

- `weighted_tower` (w ≥ 0, Σw = 1 ⇒ min d ≤ Σ w d ≤ max d), `weighted_tower_le` (0 ≤ s ≤ 1, 0 ≤ d ≤ b ⇒ Σ w s d ≤ Σ w b ≤ max b; Lemma T (b)), `towerSym` = (2.2) as a definition, `tower_bounds` (0 ≤ d^{ML}_μ ≤ L^{−2} max_l b_l).
- `I1_compress`: P_⊥, P_l Hermitian, P_⊥E_lP_l = P_⊥diag(e_l) ⇒ P_⊥(s²Σ_l E_lP_l diag(d_l) P_lE_lᴴ)P_⊥ = P_⊥diag(s²Σ_l e_l d_l conj e_l)P_⊥ (the algebraic step of (I1)).
- Rayleigh form (`rq` of CertBridge.lean): `rq_conj` (rq(ZᴴTZ)x = rq T (Zx)), `rayleigh_sum_bound`, `conj_rayleigh_bound` (λ_max(ZᴴTZ) ≤ ‖Z‖²t, t ≥ 0), `rank_one_bound` (λ_max(γwwᴴ) ≤ γ‖w‖²), `majorant_core` (λ_max(ZᴴT2Z + γwwᴴ) ≤ ‖Z‖²t + γ‖w‖²), `lemmaT_core` (T2 ≤ d_max T, ZᴴTZ = Z ⇒ λ_max(ZᴴT2Z) ≤ d_max‖Z‖, the form Lemma T uses).
- Axioms: `[propext, Classical.choice, Quot.sound]` for all ten. Not formalized: the Fourier/umklapp derivation of (2.2), Lemma S, the symbols a_ρ, σ, q̃ and the Fejér identity, Lemma T (d), Lemma Gauge, F_CS, and the branch-and-bound.

## Schur.lean, CombesThomas.lean (SOURCES_LOC.md §3.3, SOURCES_S2_FORM.md §2, SOURCES_A3_SIGMA.md 2.6; SOURCES_A1_KERNEL.md §7 Lemma CT, SOURCES_A1_A4_VERIFY.md Part A §1); statement check `VERIFY_CombesThomas.md`

- `Schur.lean` (65 lines): spectral norm, 𝕜 = ℝ or ℂ. `schur_test_weighted` (weight p > 0, Σ_y |K x y| p y ≤ a p x, Σ_x |K x y| p x ≤ b p y, a, b ≥ 0 ⇒ ‖K‖₂ ≤ √(ab); Cauchy–Schwarz on each row, then swap sums), `schur_test` (p = 1: sup row sum ≤ a, sup column sum ≤ b).
- `CombesThomas.lean` (161 lines): `norm_entry_le` (|A x y| ≤ ‖A‖₂), `coercive_inv` (c‖v‖² ≤ re⟪v, Av⟫, c > 0 ⇒ A invertible, ‖A⁻¹‖₂ ≤ 1/c), `combes_thomas` (N ≥ c in Rayleigh form, w > 0, ‖WNW⁻¹ − N‖₂ ≤ c/2 ⇒ N invertible, ‖(WNW⁻¹)⁻¹‖₂ ≤ 2/c, |N⁻¹ x y| ≤ (2/c) w y / w x), `combes_thomas_exp` (w x = e^{ε d(x,x₀)}: |N⁻¹ x y| ≤ (2/c) e^{ε(d(y,x₀) − d(x,x₀))}), `combes_thomas_decay` (hypothesis for every x₀, d(x,x) = 0 ⇒ |N⁻¹ x y| ≤ (2/c) e^{−ε d(x,y)}; take x₀ = y), `combes_thomas_schur` (row and column sums of |N x y|·|e^{ε(d(x,x₀) − d(y,x₀))} − 1| ≤ c/2 for every x₀ ⇒ the same decay, via `schur_test`).
- Axioms: `[propext, Classical.choice, Quot.sound]` for all eight theorems. N need not be Hermitian; d need not be symmetric or satisfy the triangle inequality. Not formalized: the identification of N with N̂ = S^{−1/2}QGQ*S^{−1/2} on ℓ²(𝔅, μ), the μ-weights m(y,y′), the kernel bound (i) ⇒ row-sum bound via |e^x − 1| ≤ |x|e^{|x|} and Σ(δ/2), inputs (K) and (C) (walk expansion; (C) is open per SOURCES_A1_A4_VERIFY §3).
