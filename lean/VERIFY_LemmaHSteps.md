# Statement check: LemmaHSteps.lean (L-182 (Lemma H), Steps 2 and 3)

Source: SOURCES_HBETA.md §2 (Steps 2, 3, (2.2)). Build: `lake build YmLean.LemmaHSteps`, no `sorry`. Axioms of all six printed theorems: `[propext, Classical.choice, Quot.sound]`. Convention: `g_i = 1/√(u_i)` (as LemmaDPrime.lean), so `g_i³ = (1/√(u_i))^3`.

| Lean | Note | Match |
|---|---|---|
| `S3_le u β γ K`: `β > 0`, `γ > 0`, `u_i − u_{i+1} ≥ β` (i < K), `u_K ≥ γ^{−2}` ⇒ `Σ_{i<K} g_i³ ≤ 2g_K/β` and `≤ 2γ/β` | Step 2, (2.2): S_3 ≤ Σ_{m≥1}(γ^{−2} + βm)^{−3/2} ≤ ∫_0^∞ … = 2γ/β | Same bound. The proof does not compare with the integral. It uses the per-step inequality (t² − s²)/t³ ≤ 2(1/s − 1/t) for 0 < s ≤ t (`cube_step`) and telescopes. The intermediate bound 2g_K/β is sharper than 2γ/β; it is an extra conclusion. |
| `colsum_le`: `|a_{ji}| ≤ ½C₁g_i³w_{j−1−i}`, `Σ_{m<n} w_m ≤ A` ∀n ⇒ `Σ_{j∈(i,K]} |a_{ji}| ≤ ½C₁A g_i³` | Step 2, first sentence (exchange of sums) | Same. `w_m ≥ 0` is not needed. `A` = partial-sum bound (the note's A = Σ a_m; a_0 = 1 is not used). |
| `lemma_H_step2`: `Σ_{i<K} ½C₁A g_i³ ≤ C₁Aγ/β = x` | Step 2: Σ_j ε_j ≤ ½C₁A S_3 ≤ C₁Aγ/β = x | Same. This is the hypothesis `hx` of `lemma_H` (LemmaH.lean) with c_i = ½C₁A g_i³. README of LemmaH listed it as not formalized. |
| `lemma_H_real`: Steps 1 + 2 at one c | Lemma H conclusion at one c, given all g_k(c) ≤ γ | Same constants: Σ|B′_j| ≤ e^x − 1 ≤ ½, ½ ≤ |v_k| ≤ 3/2, x = C₁Aγ/β ≤ ln(3/2). |
| `bootstrap U U' R t θ M`: `U` has derivative `U'` on [−R, R], `U(0) = t`, `θ < t − MR`, `|U'| ≤ M` wherever `U > θ` ⇒ `U(c) ≥ t − M|c|` and `U(c) > θ` on [−R, R] | Step 3: "J relatively closed and open, J = [−2r, 2r]" | Same content. The proof uses the Mathlib fencing theorem `image_le_of_deriv_right_lt_deriv_boundary'` (with slope M + ε) instead of the connected component J, and then the non-strict version with slope M. |
| `lemma_H_bootstrap` | Lemma H for every real c with \|c\| ≤ 2r | See below. |

## `lemma_H_bootstrap`: hypotheses and the note

- `u k c` is the clamped flow û_k(c), `v k c` its c-derivative, `a c j i` stands for ∂β_j/∂u_i along it. These are abstract real numbers. The identification (I) and the chain rule (1.1) are NOT formalized. They enter as the hypothesis `hreg`: where all u_k(c) > γ^{−2} (clamp inactive), `v_0 = −1`, the variational equation of Step 1, (1.1) with history weights `w`, and increments ≥ β (Lemma E).
- `hder`: only c ↦ û_K(c) needs a derivative on [−2r, 2r], and that derivative is `v K c`. The note's "smooth clamp" gives this. The relation between `v k c` and the derivative of `u k c` for k < K is not used.
- `hmono`: û_K(c) ≤ û_k(c) for k ≤ K. The note derives it from (E) on the clamped flow ("all increments are ≥ β > 0"). Here it is a hypothesis.
- Conditions: `x = C₁Aγ/β ≤ ln(3/2)`, `3r < g^{−2} − γ^{−2}`, `u_K(0) = g^{−2}`. These are the note's conditions. (2.3) (β = β_0/2) is a substitution by the caller.
- Conclusions for every c ∈ [−2r, 2r]: all u_k(c) > γ^{−2} (the note: g_k(c) ∈ ]0, γ]; Lean gives the strict form), Σ_{j≤K}|B′_j(c)| ≤ e^x − 1 ≤ ½, ½ ≤ |v_k(c)| ≤ 3/2, and u_K(c) ≥ g^{−2} − (3/2)|c| (the note's intermediate inequality).

## Not formalized

- (I), (H-hist), (E), (1.1): hypotheses (`hreg`, `hmono`).
- The existence of a smooth monotone clamp and the C¹ dependence of û_k on c: hypothesis `hder`.
- Remarks §3 (b) (evenness rate O(g⁴)), (c) (complex c: see N3Steps.lean), §4 (D2 consistency).
