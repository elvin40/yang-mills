IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# H2_CERTIFY_P4 — proof of premise P4 (gauge covariance of the order-0 averaging symbol)

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_CERTIFY_L13.md §2.1 and §6, numerics/h1cert_rho1.py, numerics/h2_scan.py (qsym, border, schur), numerics/umk_beta1.py (avg_profile, path_arrays, csym), numerics/h1cert_cell.py (the β sum), H2_LARGE_L.md §1, U3_REPAIRS.md §1. Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited.

## 1. Result

P4 is true for every K ∈ R⁴, every odd L, and every umklapp label l, with φ_l = 1. It is not restricted to the face diagonal. The mechanism is not an umklapp sum and not a lattice symmetry. It is a per-block telescoping identity: the order-0 average is a weighted sum of line integrals along lattice paths from coarse site 0 to coarse site L e_μ, and a line integral of a lattice gradient depends only on the end points.

**Lemma P4.** Let F^μ_ν(z) be the order-0 profile of avg_profile(L, μ, ·)["0"] (coefficient of the fine link (z, ν) in the linearized coarse link (0, μ)), and let E_q(k)_{μν} := Σ_z F^μ_ν(z) e^{ik·z} (this is h2_scan.qsym; the code passes Kf = K/L, so k = k_l = (K + 2πl)/L). With k̂_ν = e^{ik_ν} − 1 and K̂_μ = e^{iK_μ} − 1:

  E_q(k_l) k̂_l = K̂   for every l ∈ {0, …, L−1}⁴ and every K ∈ R⁴.   (P4)

So φ_l ≡ 1 in H2_CERTIFY_L13 §2.1, and the statement is exact in exact arithmetic (F has rational entries).

## 2. Proof

Step 1 (structure of F, read from avg_profile). For an oriented nearest-neighbour path Γ, let χ_Γ(z, ν) be its signed link indicator: a forward step z → z + e_ν adds +1 at (z, ν); a backward step z → z − e_ν adds −1 at (z − e_ν, ν). This is the code's convention (path_arrays: S = start site for sg > 0, S = z − e for sg < 0, sign Gs = sg). The "0" entry of avg_profile is F = S0 + ind, where
- ind = χ of the straight path 0 → L e_μ (`lid(st, mu)`), and
- S0 = Σ_{d} Σ_{i,j} w_d χ_{C(d,i,j)}, with w_d = L^{−4} n_d^{−2}, where C(d,i,j) is the closed loop Γ1_i (0 → d, permutation i) ∘ seg (d → d + L e_μ) ∘ Γ2_j (d + L e_μ → L e_μ: Γ1_j shifted by L e_μ, reversed, signs negated) ∘ (straight path reversed, L e_μ → 0, sign −1).

The four `parts` of the loop body add exactly these four segments with the common weight w per pair (i, j) (axes summed over the index the segment does not depend on).

Step 2 (divergence of a path). For any path Γ from a to b, Σ_ν [χ_Γ(y − e_ν, ν) − χ_Γ(y, ν)] = δ_{y,b} − δ_{y,a}. Proof: one step contributes δ_{end} − δ_{start} of that step (forward step at z: +1 at (z, ν) gives δ_{y, z+e_ν} − δ_{y, z}; backward step: −1 at (z − e_ν, ν) gives −δ_{y,z} + δ_{y, z−e_ν}). The steps telescope. For a closed loop the result is 0.

Step 3 (position-space identity). By Step 1 and Step 2, for every weight choice,
  (div F^μ)(y) := Σ_ν [F^μ_ν(y − e_ν) − F^μ_ν(y)] = δ_{y, L e_μ} − δ_{y, 0}.   (D)
The weights w_d do not enter: every loop contributes 0, and only ind survives.

Step 4 (Fourier). Shift z = y − e_ν in the first term:
  [E_q(k) k̂]_μ = Σ_ν Σ_z F^μ_ν(z) e^{ik·z}(e^{ik_ν} − 1) = Σ_y e^{ik·y} (div F^μ)(y) = e^{iLk_μ} − 1.
At k = k_l, L k_{l,μ} = K_μ + 2π l_μ, so e^{iLk_μ} = e^{iK_μ}. Hence E_q(k_l) k̂_l = K̂. ∎

Code-convention check of Step 4. qsym multiplies F by e^{iKf·(n − h)}, applies L⁴·ifftn (factor e^{+2πi l·n/L}), and multiplies by lph = e^{−2πi l·h/L}. The product is e^{ik_l·z} with z = n − h. The fold of the length-2L μ axis is exact because e^{2πi l z/L} has period L. The colour factor is 1: the "0" key has one basis matrix B = ±I3/√3 and coefficient ±√3, so F·Mc[:,2,2] = the scalar profile.

## 3. Consequences for H2_CERTIFY_L13

- C1. β = s² Σ_l φ_l/|k̂_l|² = σ exactly. So the scalar term of (2.1) is σ/|β|² = 1/σ, and (2.1) reads ρ_1²L² = λ_max(Z T2 Z + σ^{−1} w w^†). Also S_{1:4,5} = σK̂ and S_55 = 1 − L^{−4}Σ_l 1 = 0, as measured.
- C2. The gauge-reduced formula (2.1) holds at every K ≠ 0 (no face-diagonal restriction). The 5×5 Schur form is not needed anywhere for this reason.
- C3. The cell code (h1cert_cell.py line ~239) encloses β through `(Kh^† Eq khm)/a2` with the E_q interval radius. Replacing bsum by sig (β = σ) is exact for the exact operator and removes the E_q radius from β. This is an optional tightening; I did not edit the code.
- C4. Scope. The lemma is about the exact order-0 operator. The certifier evaluates E_q from the float profile F, so its use of P4 still goes through premise P1′ (float F = exact F up to 10^{−13}‖F‖_1). For the float F the identity holds up to roundoff; measured below.

## 4. Numerical checks (Mac, < 10 s)

Script (scratch, /tmp, deleted): load the cached profiles (results/h2_prof_L{3,5}.npz via h1cert_rho1.prof), evaluate (D) in position space for each μ, and evaluate max_l |E_q(k_l)k̂_l − K̂|/|K̂| at 5 random K ∈ [−π, π)⁴ (rng seed 7, not on the face, not sorted).

Intermediate identity (D), max |div F^μ − (δ_{Le_μ} − δ_0)|:
| L | μ=0 | μ=1 | μ=2 | μ=3 | Σ|F| |
|---|---|---|---|---|---|
| 3 | 5.1e−15 | 3.6e−15 | 3.6e−15 | 3.1e−15 | 7.59 |
| 5 | 8.2e−15 | 3.2e−15 | 2.4e−15 | 2.4e−15 | 13.43 |

(P4) with φ_l = 1, max over all L⁴ blocks, relative to |K̂|:
| K | L = 3 | L = 5 |
|---|---|---|
| (0.786, 2.496, 1.732, −1.727) | 3.6e−15 | 1.2e−14 |
| (−1.256, 2.347, −3.109, 2.018) | 3.2e−15 | 1.2e−14 |
| (1.867, −0.201, −1.238, −1.392) | 4.8e−15 | 1.5e−14 |
| (−1.540, −0.345, 0.029, 0.336) | 7.2e−15 | 2.2e−14 |
| (3.113, 1.839, 0.768, 3.072) | 3.6e−15 | 1.1e−14 |

Both are at the level of float64 roundoff on sums of size Σ|F|. The F entries are imaginary-free (max |Im F| = 0).

## 5. Ledger

Proved (algebra).
- Lemma P4: E_q(k_l)k̂_l = K̂ for all K, all odd L, all l; φ_l = 1. Exact, by the telescoping identity (D). No lattice symmetry and no umklapp sum enter.
- Corollaries C1, C2: β = σ; (2.1) holds at every K ≠ 0.

Read from code (not re-derived from Balaban's paper).
- R1. The order-0 profile is "straight path + weighted closed loops 0 → d → d + Le_μ → Le_μ → 0" (avg_profile, Step 1). That this matches Balaban (0.4) is the existing premise P3/P1′ chain; this file does not re-check it.

Measured.
- M1. (D) to ≤ 8.2·10^{−15} (L = 3, 5, all μ); (P4) to ≤ 2.2·10^{−14} relative at 5 random K (L = 3, 5).

Premises removed / changed.
- P4 of H2_CERTIFY_L13 §6 is now a lemma (for the exact operator). P1′ still carries the float-vs-exact profile gap.

Not done.
- C3 (use β = σ in h1cert_cell.py) is not applied. L = 7–13 profiles were not checked numerically; the proof does not depend on L.
