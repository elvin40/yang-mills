IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Statement check: TheoremC1.lean, StripBound.lean

Build: `lake build` from lean/. Both files have no `sorry` and build in about 2 s each. Axioms of all five theorems: `[propext, Classical.choice, Quot.sound]`.

## TheoremC1.lean

| Lean | Markdown statement | Match |
|---|---|---|
| `c1_two_step D q S`: `0 ≤ q < 1`, `D 0, D 1, S ≥ 0`, `D (j+2) ≤ q D j + S` ∀ j ⇒ `D n ≤ max(D 0, D 1) + S/(1−q)` ∀ n | B2_TWOSTEP.md §2 Theorem C1, last line: "D_j ≤ q_1 D_{j−2} + S_1 (j ≥ 2) … sup_j D_j ≤ max(D_0, D_1) + S_1/(1 − q_1)"; THEOREM2_PROOF_v4 §5.3 | Exact, given the recursion. The proof applies `contraction_bound` to the even and the odd subsequence, as the note does ("iterate separately on even and odd j"). |
| `c1_kappa_bound N κ q Z A C`: `0 ≤ q < 1`, `N 0, Z ≥ 0`, `C ≥ 0`, `N (j+1) ≤ q N j + Z`, `κ j ≤ A + C N j` ⇒ `κ j ≤ A + C(N 0 + Z/(1−q))` | KAPPA_BOUNDED.md Prop. 4.1 proof: "N_j ≤ N_0 + Z_2/(1 − h²/L⁴), and \|σ_j^{(2)}\| ≤ N_j(16/c_0 + 1)" | Exact with `A = 0`, `C = 16/c_0 + 1`, `q = h²/L⁴`. The brief's "κ_* := C(N_0 + Z/(1−q))" is the case `A = 0`. The affine term `A` also covers KAPPA (2.2), where κ_* is affine (not linear) in Y_2. |
| `c1_window β κ g βinf κs γ s`: `κs ≥ 0`; on `s`: `\|β j − βinf\| ≤ κ j · g j²` and `κ j ≤ κs`; `Σ_{j∈s} g j² ≤ \|s\| γ²` ⇒ `\|Σ_{j∈s} β j − \|s\| βinf\| ≤ κs \|s\| γ²` | The brief's window statement (w = \|s\|). I found no Markdown sentence of exactly this form. The nearest sources are KAPPA_BOUNDED (5.1) (window bracket on Σβ_i(0) with constant 2κ_*, no g²) and THEOREM2_PROOF_v4 Prop. 3.6. | Proves the brief's form. The window `s` is any finite set, not only an interval. The hypothesis on g is the window sum, which is weaker than g_j ≤ γ for each j. |

Gap to the full Theorem C1. The Lean results take the recursion `D_j ≤ q D_{j−2} + S` and `q < 1` as hypotheses. Theorem C1 itself needs:
1. (H2) ρ_2 < L, which gives q_1 = ρ_2²/L² < 1. (H2) is numerical only (v4 §5.4: ρ_2 ≈ 2.063 at L = 3, 2.108 at L = 5; certification open).
2. The derivative estimate (2.2) of B2_TWOSTEP (chain rule, gain L^{−2} per two steps).
3. Finiteness of S_1 (R_1 from Theorem A3; η_1, η_2, G_1, G_1′) and of D_0, D_1 (Wilson symbol, Prop. A2).

None of 1–3 is formalized. For Prop. 4.1, the form-norm step ±σ ≤ N(Δ + 1), the bound ‖Δ_j‖ ≤ 16/c_0, and the finiteness of Z_2 are not formalized.

## StripBound.lean

| Lean | Markdown statement | Match |
|---|---|---|
| `strip_bound_linear x ε`: `ε ≥ 0`, `x 0 ≥ 0`, `x (k+1) ≤ (1+ε k) x k` ⇒ `x n ≤ x 0 · exp(Σ_{k<n} ε k)` | SOURCES_HBETA_N3 §4 Step 1: "Σ\|B_j′\| ≤ Π(1 + ε_j) − 1 ≤ exp(Σε_j) − 1"; Remark: 3/2 = 1 + (e^{x_C} − 1) | Linear Gronwall form, via `discrete_gronwall_exp` with zero source (which uses `prod_le_exp` of LemmaH.lean). With `x 0 ≤ τ` and `Σε ≤ x_C ≤ log(3/2)` it gives `x n ≤ (3/2)τ`. |
| `strip_bound_quadratic x ε δ τ a b N`: `x k ≥ 0`, `ε, δ ≥ 0`, `x (k+1) ≤ (1+ε k) x k + δ k · x k²` for `k < N`, `x 0 ≤ τ`, `Σ_{k<N} ε k ≤ a`, `Σ_{k<N} δ k · 2τ ≤ b`, `exp(a+b) ≤ 3/2` ⇒ ∀ n ≤ N: `x n ≤ τ·exp(a+b)` and `x n ≤ (3/2)τ` | The brief's strip recursion \|δw_{k+1}\| ≤ \|δw_k\|(1 + c g_k³) + c′g_k⁴\|δw_k\|²/ρ², i.e. ε_k = c g_k³, δ_k = c′g_k⁴/ρ²; SOURCES_HBETA_N3_VERIFY item 2 ("shift recursion δw_{k+1} = δw_k − [β_k(u + δu) − β_k(u)] … Same content") | Proves the brief's statement with the constants above. Proof: induction on n ≤ N with the bootstrap x_n ≤ τΠ_{k<n}(1 + ε′_k) ≤ (3/2)τ, ε′_k = ε_k + (3/2)τδ_k, so δ_k x_k² ≤ (3/2)τδ_k x_k. Because (3/2)τ ≤ 2τ, Σ(3/2)τδ ≤ (3/4)b ≤ b. So τe^{a+b} is not sharp (τe^{a+3b/4} also holds; not stated). The horizon N is finite. If the sums over all k are bounded, apply the theorem for each N. |

Gap to Lemma N3.
1. The source proof (§4) does NOT run the quadratic δw recursion. It runs Gronwall on the tangent v_k = du_k/dc (linear, complex), integrates v over the segment [f, f + ζ], and bootstraps in Im c (Step 3, open-closed argument). The quadratic recursion is the "shift recursion" that the verifier calls equal in content. It is the brief's form, not the note's form.
2. The inputs ε_k, δ_k are hypotheses here. Their derivation is not formalized: Step 0 (the complex bound \|∂β_j/∂u\| ≤ ½C_1′g_r³ from real C¹, (H-hol), and Cauchy), Step 2 (S_3 = Σ(Re u_i)^{−3/2} ≤ 4γ/β, so Σε_j ≤ x_C = 2C_1′Aγ/β), conditions (a)–(d), (B-hol), and the identity-theorem transfer of (I).
3. The history form (§5, matrix a_{j−1−i}) is the setting of `lemma_H` in LemmaH.lean, not of these scalar recursions.
4. x_k ≥ 0 is assumed for all k. This is true for x_k = \|δw_k\|.
