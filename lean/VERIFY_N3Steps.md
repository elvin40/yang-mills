# Statement check: N3Steps.lean (L-232 (Lemma N3), Steps 0 and 2)

Source: SOURCES_HBETA_N3.md §4 (inputs, conditions (b)–(d), Steps 0–2). Build: `lake build YmLean.N3Steps` (14 s), no `sorry`. Axioms of all nine printed theorems: `[propext, Classical.choice, Quot.sound]`. These theorems supply the inputs ε_k that StripBound.lean and VERIFY_TheoremC1.md list as hypotheses (gap 2 there).

Notation: `u = x + iy`, `g_r = 1/√x`, `z = u^{−1/2}` = Mathlib `u ^ (-(1/2) : ℂ)` (principal branch, `cpow`), `βj : ℂ → ℂ` the one-argument β-function of one step, `C₁′ = C₁ + 12MγY/ρ²`.

## Step 0

| Lean | Note | Match |
|---|---|---|
| `cpow_neg_half_props`: `(u^{−1/2})² u = 1`, `Re u^{−1/2} ≥ 0` | (used implicitly: principal branch) | Auxiliary. |
| `inv_sqrt_dev`: `‖s‖ ≤ ½` ⇒ `‖(1+s)^{−1/2} − 1‖ ≤ √2‖s‖` | "For \|s\| ≤ ½, \|(1 + s)^{−1/2} − 1\| ≤ √2\|s\|" | Exact. Proof: w²(1+s) = 1, Re w ≥ 0 ⇒ Re w ≥ 9/20, \|1 + w\| ≥ √2, \|w\|² ≤ 2, (1 − w)(1 + w) = w²s. |
| `z_dev`: `x ≥ γ^{−2}`, `|y| ≤ Y`, `γ²Y ≤ ½` ⇒ `‖z − g_r‖ ≤ √2 g_r³\|y\|` | "\|z − g_r\| ≤ √2g_r y/x = √2g_r³\|y\|" | Exact. |
| `cauchy_second`: `βj` holomorphic on `D(g, ρg)`, `‖βj‖ ≤ M` there ⇒ `‖βj″(ζ)‖ ≤ 8M/(ρ²g²)` on `D̄(g, ρg/2)` | "Cauchy on discs of radius ρg_r/2 inside D(g_r, ρg_r): \|β_j″\| ≤ 8M/(ρ²g_r²)" | Same constant. For ζ with \|ζ − g\| = ρg/2 the disc of radius ρg/2 touches the boundary of the open disc. Lean uses radii R < ρg/2 (Mathlib `norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le`, n = 2) and takes the limit R → ρg/2. |
| `n3_step0_deriv`: (H-hol) at `g_r`, `‖βj′(g_r)‖ ≤ C₁`, `x ≥ γ^{−2}`, `|y| ≤ Y`, (d) `2√2γ²Y ≤ ρ`, `ρ ≤ 1` ⇒ `z ∈ D̄(g_r, ρg_r/2)`, `‖βj′(z)‖ ≤ C₁ + 8√2Mg_r\|y\|/ρ² ≤ C₁′` | "\|β_j′(z)\| ≤ \|β_j′(g_r)\| + \|z − g_r\|·8M/(ρ²g_r²) ≤ C_1 + 8√2Mg_r\|y\|/ρ² ≤ C_1′" | Same. The last step uses 8√2 ≤ 12 and g_r ≤ γ, \|y\| ≤ Y. |
| `n3_step0_du`: there is `F'` with `HasDerivAt (u ↦ βj(u^{−1/2})) F' u` and `‖F'‖ ≤ ½C₁′g_r³` | "\|dz/du\| = ½\|u\|^{−3/2} ≤ ½g_r³. So \|∂β_j/∂u(u)\| ≤ ½C_1′g_r³" | Same. |
| `n3_step0_re`: + (E) `β ≤ Re βj(g_r)`, (c) `γ³C₁′Y ≤ β` ⇒ `‖βj(z) − βj(g_r)‖ ≤ \|y\|·½C₁′γ³` and `Re βj(z) ≥ β/2` | "\|β_j(u) − β_j(x)\| ≤ \|y\|·½C_1′γ³ ≤ β/2 by (c), so Re β_j(u) ≥ β/2 by (E)" | Same. Mean value along the vertical segment {Re = x, \|Im\| ≤ Y}; `n3_step0_du` holds at each of its points with the same x. |

Weaker or different than the note:
1. (H-hol) is used at one real point x only: `βj` differentiable on the open disc `D(g_r, ρg_r)` with `‖βj‖ ≤ M` there. The note assumes it for all real histories; the caller applies the theorems at each `x = Re u_i`.
2. The real C¹ bound enters as `‖deriv βj g_r‖ ≤ C₁` (complex derivative at the real point). For βj real on the reals this is |β_j′(g_r)| ≤ C₁. That identification is not formalized.
3. `ρ ≤ 1` is assumed (the note has ρ ≤ 1/3). It is used only to get γ²Y ≤ ½ from (d).
4. One-argument case only. The history form (§5, (H2-hist), mixed second derivatives) is not formalized.

## Step 1 (used by Step 2)

`lemma_H_complex`: `lemma_H` of LemmaH.lean with complex `a`, `v` (`BpC`, `εC`, `PC`). The note: "HBETA (2.1) holds verbatim … The algebra never used that v is real." Same statement with ‖·‖ in place of |·|. The chain rule for holomorphic maps (v_j = v_{j−1} − Σ ∂β_j/∂u_i v_i) is the hypothesis `hrec`.

## Step 2

| Lean | Note | Match |
|---|---|---|
| `n3_S3`: `Re u_i − Re u_{i+1} ≥ β/2`, `Re u_K ≥ γ^{−2}` ⇒ `Σ_{i<K}(Re u_i)^{−3/2} ≤ 4γ/β` | "Re u_i ≥ γ^{−2} + (β/2)(K − i) … S_3 ≤ … = 4γ/β" | Same (`S3_le` of LemmaHSteps.lean with β/2). |
| `n3_step2`: `v_0 = −1`, complex variational equation, `‖a_{ji}‖ ≤ ½C₁′(Re u_i)^{−3/2}w_{j−1−i}` with `Σ w ≤ A`, Re-increments `≥ β/2`, `Re u_K ≥ γ^{−2}`, (b) `x_C = 2C₁′Aγ/β ≤ ln(3/2)` ⇒ `Σ_{j≤K}‖B′_j‖ ≤ e^{x_C} − 1 ≤ ½`, `‖v_k + 1‖ ≤ ½`, `½ ≤ ‖v_k‖ ≤ 3/2` | "Σε_j ≤ ½C_1′A·4γ/β = x_C, and Σ\|B_j′\| ≤ e^{x_C} − 1 ≤ ½ by (b). \|v_k + 1\| ≤ ½." | Same. The one-argument case is w_0 = 1, w_m = 0 (m ≥ 1), A = 1; then (1.1) at i = j − 1 is `n3_step0_du` at x = Re u_{j−1}. Lean also allows history weights. |

The note's hypothesis "Re u_K(c) > γ^{−2}" is used as `Re u_K ≥ γ^{−2}` (weaker). The Re-increment hypothesis is what `n3_step0_re` gives under (I) (u_i − u_{i+1} = β_{i+1}(u_i)); that identification is the caller's.

## Not formalized

- Step 3 (bootstrap in Im c, set T open and closed in [0, 1]). The real analogue is `bootstrap` in LemmaHSteps.lean.
- (B-hol) and the identity-theorem transfer of (I) to complex c; (I), (E), (H-hist) themselves.
- §2 (N3 ⇔ (N3′): integration of dw_k/dc along [f, f + ζ]); condition (a).
- §5 history form, §6 plausibility.
