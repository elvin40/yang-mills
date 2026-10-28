# VERIFY: SlabCounterexample.lean

Statement check of the Lean theorems against the Markdown sources. Build: `lake build` passes, no `sorry`. Axioms of all six printed theorems: `[propext, Classical.choice, Quot.sound]`.

## Notation

- Vectors are `f : ℕ → ℝ`; only `f i` for `i < L` enter (the path {0, …, L−1}, the d = 2 face Δ′). `range n` = {0, …, n−1}.
- `slabForm L f` = q_L(f) = L^{−1}Σ_{i<L−1}(f_{i+1} − f_i)² + L^{−3}(Σ_{i<L} f_i)². `sqNorm L f` = Σ_{i<L} f_i².
- `SlabFails L f` := Σ_{i<L} f_i = 0 ∧ q_L(f) < L^{−2}‖f‖².
- `milli l i` = l_i/1000 (0 beyond the list). `c10`, …, `c13` are integer lists.

## Form and normalization

| Markdown | Lean |
|---|---|
| VERIFY §1: K(f) = L^{−d}Σ_{edges⊂Δ′}\|∇f\|² + L^{−2d}\|Σf\|²; claim K(f) ≥ L^{−d−1}Σ\|f\|² | d = 2, times L: q_L(f) = L·K(f) = L^{−1}Σ\|∇f\|² + L^{−3}(Σf)²; claim q_L(f) ≥ L^{−2}‖f‖² |
| GAMMA0_FULL §3.2 (3.1) bracket Σ\|∇f\|² + L^{−d}\|Σf\|² vs L^{−1}Σ\|f\|² (§3.3 Remark) | the same claim times L^{−1}, d = 2 |
| VERIFY §2: min eig K = L^{−d}min(λ_1, 1/L), λ_1 = 2(1 − cos(π/L)) | min eig q_L = L^{−1}min(λ_1, 1/L) (not formalized; only the failure direction) |

The brief writes the mean term as L^{−2}(Σf)². That does not match the stated eigenvalue L^{−1}min(λ_1, 1/L): with L^{−2} the constant mode has Rayleigh quotient 1/L, not L^{−2}. L^{−3} = L·L^{−2d} at d = 2 is the source's normalization and gives the constant-mode value L^{−2}. All witnesses have Σf = 0, so the mean term is 0 and every theorem below holds for either coefficient.

## Theorems

| Lean | Markdown statement | Match |
|---|---|---|
| `slab_fails_10 : SlabFails 10 (milli c10)` | VERIFY §2 row L = 10: slab/L^{−d−1} = 0.9789 < 1 | Exact witness. Σf = 0; Σ(∇f)² = 0.4895, ‖f‖² = 5.000652, Rayleigh 0.09789 < 1/10. |
| `slab_fails_11 : SlabFails 11 (milli c11)` | VERIFY §2 "all rows L ≥ 10 below 1" (L = 11) | Exact witness, Rayleigh 0.08101 < 1/11 = 0.09091. |
| `slab_fails_12 : SlabFails 12 (milli c12)` | same, L = 12 | Exact witness, Rayleigh 0.06815 < 1/12 = 0.08333. |
| `slab_fails_13 : SlabFails 13 (milli c13)` | VERIFY §2 row L = 13: 0.7555 < 1; §3 "Downstream at L = 13" | Exact witness, Rayleigh 0.05812 < 1/13 = 0.07692. |
| `slab_fails L (hL : 10 ≤ L) : ∃ f, SlabFails L f` | VERIFY §3 verdict: the printed bound fails for every L ≥ 10 (d = 2 slice) | Full statement for all L ≥ 10, not only 10–13. L = 10, 11: the cosine witnesses. L ≥ 12: f_i = 2i − (L−1), Σf = 0, Σ(∇f)² = 4(L−1), ‖f‖² = (L³ − L)/3, Rayleigh 12/(L(L+1)) < 1/L ⇔ L ≥ 12. |
| `lambda1_lt L (hL : 10 ≤ L) : 2(1 − cos(π/L)) < 1/L` | GAMMA0_FULL §3.2 "Bound": λ_1(L) < 1/L for L ≥ 10 (L = 10: 0.0979 < 0.1); VERIFY §2 crossover near π² ≈ 9.87 | Exact. Proof: cos x ≥ 1 − x²/2 (`Real.one_sub_sq_div_two_le_cos`), π < 3.15 (`Real.pi_lt_d2`) ⇒ π² < 10 ≤ L ⇒ λ_1 ≤ π²/L² < 1/L. |

Witness rule: c_L[i] = round(1000·cos(π(i+½)/L)), i < L (the mean-zero eigenvector of GAMMA0_FULL §3.2/§3.3 Remark, rounded). The lists were generated in Python; the rounding rule itself is not checked in Lean. Lean checks only that each list is a counterexample (`norm_num` on exact rationals). Antisymmetry c_L[L−1−i] = −c_L[i] gives Σ = 0 exactly.

## Not formalized

- The exact lowest eigenvalue L^{−1}min(λ_1(L), 1/L) of q_L, and the lower bound (3.1) (m_L) for 2 ≤ L ≤ 9.
- d ≥ 3 (the (d−1)-grid face; Kronecker-sum spectrum). The d = 2 slice suffices for a counterexample to the claim as stated for all d only after embedding f as a function of one face coordinate; that embedding is not formalized.
- The exact cosine eigenvector (trig sum identities); only rounded witnesses are used.
- The failure of (2.127) itself (L ≥ 10 free, L ≥ 15 axial, L ≥ 30 author's test) and the corrected (3.2), (3.4).
