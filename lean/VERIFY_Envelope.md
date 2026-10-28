# VERIFY — Envelope.lean and Divergence.lean against the Markdown sources

Written 2026-10-27. Build: `lake build` from lean/, all files, no `sorry`, one style-linter warning (`<;>`) in Divergence.lean. Each new file builds in about 2 s.

## 1. Envelope.lean ↔ ASSEMBLY.md §2.9 (B-NT), ASSEMBLY_VERIFY.md (B-NT) entry

What the text uses. §2.9 derives Theorem 1.4 from (NT) and the two-sided (0.31) envelope. It does not use a ratio u_K/u_0 or a Wilson-loop expectation. The quantity is S_2 of plaquette densities. The envelope is in log form, 1/g² + β log(L^kε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^kε)^{−1}. With L^Kε = 1 this is the linear form 1/g² + c(K − k) with c = β log L (resp. β′ log L). The Lean statements keep the log form of the text.

| Markdown | Lean | Match |
|---|---|---|
| (i): L^kε > d_0/L and upper (0.31) ⇒ 1/g_k² ≤ 1/g² + β′ log(L/d_0), uniform in ε | `envelope_layer` (both conclusions: the bound on u = 1/g_k², and g_k⁴ = u^{−2} ≥ (1/g² + β′ log(L/d_0))^{−2}) | exact; d ≤ ℓ is not needed |
| (i): S_{2,ε} = c ∫∫ f_1f_2 g_k⁴ \|x−y\|^{−8}(1+R), \|R\| ≤ ½ ⇒ S_{2,ε} ≥ ½c(1/g² + β′ log(L/d_0))^{−2} ∫∫ f_1f_2\|x−y\|^{−8} > 0 | `envelope_nontrivial` | arithmetic core; the integral is a finite sum Σ_p w_p (·), w_p ≥ 0 |
| (ii): 0 < d⁸S_2 ≤ (1 + C g_{k(d)}²) c (1/g² + β log(1/d))^{−2} → 0 | `envelope_decay` | exact as a limit statement, with A(d) = 1 + C g² ≤ M |
| (ii): "so the limit is not the free (scale-invariant) composite" | `envelope_not_scale_invariant` (S has no limit a ≠ 0 at 0⁺) | exact |

Gaps (recorded, not formalized).
- G1. (NT) is a hypothesis of the text, and is a hypothesis here: the representation S = c Σ w g⁴ (1+R) and \|R\| ≤ ½ enter as the form of the conclusion and as `hR`.
- G2. ASSEMBLY_VERIFY: \|R\| ≤ ½ needs g² + (\|x−y\|/ℓ)² small on the whole support pair, so support diameters ≪ ℓ, not only the minimum distance d_0. In Lean `hR : |R| ≤ 1/2` is assumed directly. The diameter condition is where the caller discharges it; Lean does not see ℓ.
- G3. The integral over T⁴ × T⁴ is replaced by a finite weighted sum. The passage to the integral (monotonicity of the integral, integrability of f_1f_2\|x−y\|^{−8} on disjoint supports) is standard and not formalized. Each pair p carries its own layer scale s_p = L^{k(p)}ε and u_p = 1/g_{k(p)}², as in (NT).
- G4. In (ii) the step L^kε ≤ d ⇒ log(L^kε)^{−1} ≥ log(1/d) is folded into the hypothesis `hU` (1/g² + β log(1/d) ≤ u(d)). The text's caveat (NT at every layer down to d ≥ Lε) is the hypothesis `hS` for all d ∈ ]0, 1[. S(d) is the limit object; the ε → 0 limit is not formalized.
- G5. Theorem 1.4 (ii) as worded ("behaves like c g(d)⁴ with g(d)² ~ (β log(1/d))^{−1}") is NOT proved; only the corrected two-sided-envelope form, as ASSEMBLY_VERIFY says.

## 2. Divergence.lean ↔ H2_CERTIFY_P4.md §2 Steps 2–3

| Markdown | Lean | Match |
|---|---|---|
| χ_Γ: forward step z → z + e_ν adds +1 at (z, ν); backward z → z − e_ν adds −1 at (z − e_ν, ν) | `chiStep`, `chi` | exact |
| (div F)(y) = Σ_ν [F_ν(y − e_ν) − F_ν(y)] | `div` | exact; no finite support needed |
| Step 2: one step contributes δ_end − δ_start | `step_divergence` | exact |
| Step 2: path a → b has divergence δ_b − δ_a | `path_divergence` | exact |
| Step 2: closed loop has divergence 0 | `loop_divergence` | exact |
| Step 3, (D): weights do not enter | `profile_divergence` (any path + Σ_i w_i χ_{loop_i}) and `P4_divergence` (straight 0 → Le_μ plus loops 0 → d → d + Le_μ → Le_μ → 0) | exact |
| linearity (used implicitly) | `div_add`, `div_smul`, `div_sum` | exact |

Lean is more general: any dimension d, any commutative coefficient ring, any weights w_i (the note's w_d = L^{−4}n_d^{−2} do not enter), any L (odd L not needed), and the four loop pieces are arbitrary paths with the right end points (Γ1_i, seg, Γ2_j, reversed straight path are instances).

Gaps.
- R1 of the note (the order-0 profile equals "straight path + these loops", read from avg_profile, and its match to Balaban (0.4)) is not formalized. `P4_divergence` takes the decomposition as given.
- Step 4 (Fourier: E_q(k_l)k̂_l = K̂) is not formalized, by the task scope.
- The note's double index (d, i, j) is one index type ι in Lean.

## 3. Axioms

```
'YmLean.envelope_layer' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.envelope_nontrivial' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.envelope_decay' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.envelope_not_scale_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.div_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.div_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.div_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.step_divergence' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.path_divergence' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.loop_divergence' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.profile_divergence' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.straight_isPath' depends on axioms: [propext, Quot.sound]
'YmLean.P4_divergence' depends on axioms: [propext, Classical.choice, Quot.sound]
```
