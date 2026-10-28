# U3_AW_VERIFY — independent check of U3_AW.md (2026-10-27)

## 1. Read U3_AW.md in full (214 lines)
Claims as listed by caller. Author ran no numerics. Open items O1 (H′), O3 (3/2 factor), cheap checks 1–4 listed at end.

## 2. Context read: R23 §3c, R23_VERIFY, U3_REPAIRS O5/O6/R5, U3_REPAIRS_VERIFY
- R5 (U3_REPAIRS ledger) is the author's own "strong sketch" label for strip analyticity of Δ_M. Its pieces (Lemma C polydiscs, near-zone series (2.7) on B_{ρ_1}, far-zone (2.9) on P(K_*, η)) were rederived in U3_REPAIRS_VERIFY §4 and graded CONFIRMED, including the explicit statement "the strip near 0 is uniform in M". So A0 = union of confirmed pieces; the covering argument in U3_AW §4.1 is correct. A0: CONFIRMED (existential constants).
- Small point: in midpoint coordinates Δ is 2π-periodic only up to conjugation by diag(±1) (factor e^{∓iK_μ/2}); harmless (unitary, sign only).
- R23_VERIFY scripts were in /tmp/r23v and are gone. I must rebuild the O6 bordered matrix for check (i).

## 3. Code survey for the numerics
- betafp_recursion.py = plane-wave (finite p) recursion, not the constant-flux Moyal recursion. It has no σ^{(1)} at constant f. Not usable for checks (ii)–(iv) as is.
- ym_momentum.Step(L).build() gives the real one-step d = 4 bordered kernel B0 (Wilson Hessian + Dirichlet ghost DD^T, real (0.4) Jacobian row), Fourier e^{−iLk·Z}, K = Lk. Usable for check (i) at j = 1 directly, and for j ≥ 2 by replacing the fine block.
- Fact used: the minimizer has zero ghost energy (ΠD^†H = 0, from Δ⊕D = 0 and ΠD^†Q̃^† = 0). So H_j and Δ_j do not depend on the ghost coefficient or on the overall scale of Δ_{j−1}. This also is the A4 proof step; it is correct.
- Fine-block basis map (derived): code cell block M(k)_{uu′} = Σ_l U_{ul} Δ̂(k_l) U^*_{u′l}, U_{ul} = L^{−2}e^{ik_l·u}, k_l = k + 2πl/L, Δ̂ in left (base-site) convention with gauge vector k̂ = e^{ik} − 1.

## 4. Analytic rederivations (by hand)
- Prop. E (evenness). Traced Rℓ̃ = Γ′·[x′,x]·Γ^{−1}·c; U(Rℓ̃) = U(c)^{−1}U(ℓ)^{−1}U(c); X̃ = −U(c)^{−1}XU(c); Ū(RU)(c̃) = Ū(U)(c)^{−1}. Bijection of path families holds: code family (ym_oneloop.loops_for_direction) = all axis orders, uniform weight 1/(L⁴|G1||G2|), block = anchor + (−h..h), centered; negation preserves the number of orders. Midpoint sign: U_0(b^{−1})^{1/2} = U_0(b)^{−1/2}, so B(b^{−1}) = −B(b). Two signs cancel; a(−z) = a(z). Nested anchors are R-symmetric at all levels (odd L). CONFIRMED.
- W0 (Δ_j(f)D_f = 0). KKT check: B = D_φ(ν + λ_r) gives ΔB = 0, ghost term 0 by choice of λ_r, C_fB = D_fλ; so μ = 0 and Δ_jV = −μ = 0 (sign matches S = −[KKT^{−1}]_{22}). Inputs (a)–(c) are standard; Balaban (0.4) is exactly gauge covariant (loops based at c_−). Already seen numerically in d = 2: R23_VERIFY §5, S_1 annihilates level-1 covariant gradients to 1.6·10^{−15}. CONFIRMED.
- (W-1), (W-2): f¹, f² coefficients of σ ⋆ d = 0 with the U3_LEMMA51 (3.1) Moyal sign. Correct. The overall sign of d cancels (identity linear in d).
- K = 0: σ^{(1)}(0)e_ν = (ie/2)[∂_ν∂_0σ^{(0)}(0)e_1 − ∂_ν∂_1σ^{(0)}(0)e_0]. With Hessian 2δ_{νρ}δ_{αβ} − δ_{να}δ_{ρβ} − δ_{ρα}δ_{νβ}: ν = 0 gives 2e_1 − (−e_1) = 3e_1; ν = 1 gives −e_0 − 2e_0 = −3e_0; ν = 2, 3 give 0. So τ_c = (3ie/2)(E_{10} − E_{01}) given Maxwell normalization 1·(|K|²1 − KK^T). The 3/2 = 2 (spin, g = 2) − 1/2 (Weyl ordering of D_νD_μ), as expected. The factor scales with the Maxwell normalization c of the code (τ_c → c·τ_c).
- §3.4(b) (W-2) at K = 0: rederived, including ∂_ν∂_μ²d(0) = −(i/4)δ_{νμ}e_μ and the −(e²/16) constant. Matches.
- Lemma A4: H^†AH = Δ_j and ΠD^†H = 0 (from Δ⊕D = 0, ΠD^†Q̃^† = 0, Dirichlet ghost positive). Constant exactly L^{−2}. CONFIRMED.
- Theorem A3: Steps 1–5 rederived. ℓ_j formula correct (Hermitian w with wd = ρ̃). ρ̃ odd and its linear term vanishes (Theorem W computation), so O(|k|³). Step 2 bounds: ΠD^*x = 0 ⇒ k̂_l^†x_l = c for all l; |c| ≤ L²|cv||k̂_0|² ≤ |K|²|cv|; correct. Step 4 Schwarz argument on a disc of radius ≤ δ_* is correct. Step 5 closes with N_j ≤ L^{−2}N_{j−1} + Z. CONFIRMED (existential constants).
- Lemma A1, Prop. A2: correct (Neumann series with j-uniform derivative bound; strip does not shrink). Derivative budget (≤ 1 derivative of f¹ input, 0 of f² input): correct by reading (3.2)–(3.3).
- R-A: Cauchy on the line gives |σ(k) − σ(k_r)| ≤ Y/(L − 1) for |Im k| ≤ δ_1/L; ‖H^†(⊕s)H‖ ≤ ‖H‖² max‖s_l‖. Contraction iff h_1² < L²(L − 1). Correct. For m = 2 only h² < L⁴ is needed.

## 5. Check (i) setup: conventions verified in d = 4, L = 3 (numerics/aw_verify/hcheck.py, B0 from ym_momentum.Step, 76 s build)
- Code cell basis → umklapp basis U_{ul} = L^{−2}e^{ik_l·u}: unitary to 2·10^{−16}. After removing my ghost DΠD^† (D = ⊕k̂_l, Π = 1 − 11^T/81) the fine block is block-diagonal to 1.9·10^{−15}. Wilson blocks = (1/4)(|k̂|²1 − k̂k̂^†) exactly (code normalization 1/4), kill k̂_l to 9·10^{−15}.
- F1: Q̃D(ν) = K̂·L^{−2}Σ_lν_l to 7·10^{−14}.
- Rebuilt bordered matrix reproduces the code's H_1 and Δ_1 to 7·10^{−15}. Δ_1K̂ = 5·10^{−14}.
- Prop. A (M = 3) = 4 × code Δ_1 to 2·10^{−13} (same factor 1/4). So Prop. A Δ_M/4 is used as Δ_{j−1} for j ≥ 2 (M = L^{j−1}; M = ∞ truncated).
- H_1(0) = L·e_{l=0} ⊗ 1 to 6·10^{−8} (at K = 10^{−7}); ‖H_1(0)‖/L = 1.0000. So 𝒜_jc(0) = c holds (author's §3.3 eigenvalue-1 claim CONFIRMED numerically at j = 1).

## 6. Check (i) results: max_K ‖H_j(K)‖/L, d = 4, L = 3 (aw_verify/hscan.py; 495-point sorted grid on [0, π]⁴ + Nelder–Mead)
Cross-checks first: hypercubic symmetry of ‖H‖ (permutation + sign flip, equal to 10^{−16}); H independent of the Δ scale/ghost coefficient (9·10^{−15}); j = 2 from the code-recursive Δ_1 equals Prop. A M = 9 (Δ_2 diff 8·10^{−14}, tower property).
| j | grid max | refined max | at K | corner (π,π,π,π) |
|---|---|---|---|---|
| 1 | 1.6512 | 1.6516 | (1.669, 1.669, π, π) | 1.6147 |
| 2 | 1.7351 | 1.7360 | (1.856, 1.856, π, π) | 1.6882 |
| 3 | 1.7567 | 1.7569 | (1.913, 1.913, π, π) | 1.7098 |
Threshold √(L − 1) = 1.4142. (H′) FAILS at L = 3 for every level tested, by ~24%. The maximum is in the interior of a BZ face (two components at π), not at the corner.
Gauge-fixing cannot rescue it: ΠD^†H = 0 means H already gives the minimal-norm minimizer within each Dirichlet gauge orbit.
| ∞ (Prop. A, |l| ≤ 6) | 1.7576 (n = 7 grid) | see §7 | (2.09, 2.09, π, π) | — |
So max‖H_j‖/L ≈ 1.65, 1.74, 1.76, 1.76 for j = 1, 2, 3, ∞. Converges in j; never below 1.414.
- j = ∞ refined: 1.7600 at (1.921, 1.921, π, π) (|l| ≤ 12 at the refined point); corner 1.7132.

## 7. Checks (ii)–(iv): no per-momentum f-code exists, so a d = 2 real-space test (aw_verify/sigma0_d2.py, analyze_d2.py)
Method: u3_lemma51_check.schur (L = 3 composed, real (0.4), Dirichlet ghost), q = 0, ±1, ±2 flux quanta on an nc×nc coarse torus. Gauge-transform the coarse background to the symmetric gauge about a coarse site m0 (residual ≤ 5·10^{−15}), convert to midpoint variables (Ad V_sym^{−1/2}), strip the Moyal phase W(m, m′) = rotation by F·m∧m′ (F = code coarse half-angle; charged phase per plaquette = 2F, so e = 2). The phase sign is fixed by translation invariance of a(z) (other sign fails by 0.1–0.4). σ_j(f; 0) = Σ_z a(z) over the box |z|_∞ ≤ nc/2 − 1. Theorem W, Lemma M, and Prop. E are dimension-independent, so d = 2 tests them.
nc = 8 results (box R = 3):
- j = 0 (Wilson): Maxwell 2c = 0.500000 (c = 1/4); σ^{(1)}(0) J-part (1,0) = +0.749999, (0,1) = −0.749999, all else 0. Prediction c·(3e/2) = (1/4)(3/2)(2) = 0.75. The 3/2 factor is CONFIRMED in the code's conventions at j = 0. Evenness |a(z) − a(−z)| = 10^{−16}.
- j = 1: σ^{(0)}(0) = −0.0125 (should be 0), 2c = 0.666 (should be 0.5), σ^{(1)}(0) = ±0.7818. j = 2: −0.024, 0.815, ±0.8067. Evenness error 4·10^{−3}, 1·10^{−2}. These deviations are box-truncation errors (σ^{(0)}(0) = 0 and c = 1/4 are exact facts), so nc = 8 is too small at j ≥ 1. Rerun at nc = 12 (R = 5).
nc = 12 results (box R = 5), same method:
| j | σ^{(0)}(0) error | 2c (exact 0.5) | σ^{(1)}(0) J-part (exact claim 0.75) | evenness err (max|a| ~1.5–1.9) |
|---|---|---|---|---|
| 0 | 0 | 0.500000 | 0.750000 | 9·10^{−17} |
| 1 | −6.1·10^{−4} (nc 8: −1.25·10^{−2}) | 0.5197 (0.666) | 0.75230 (0.78184) | 2.0·10^{−4} (4.1·10^{−3}) |
| 2 | −1.7·10^{−3} (−2.4·10^{−2}) | 0.5536 (0.815) | 0.75572 (0.80667) | 6.8·10^{−4} (1.1·10^{−2}) |
σ^{(1)}(0) − 0.75 falls by 14× (j = 1) and 10× (j = 2) from nc = 8 to 12, in step with the known-zero σ^{(0)}(0) error (ratio of the two errors ≈ 2.3–3.8 at both j). So the excess is box truncation. All other entries of σ^{(1)}(0) vanish to 10^{−6}. Structure E_{10} − E_{01} CONFIRMED; level-independence supported at the 0.3–0.8% level, converging. nc = 16 run for j = 1, 2 launched.

## 8. Check (iv) evenness, d = 2 (aw_verify/even_d2.py): odd part a(z) − a(−z) over |z|_∞ ≤ 2, Taylor in f
| j | midpoint f¹ / f² odd coef, nc = 8 | nc = 12 | left trivialization f¹ / f², nc = 8 | nc = 12 |
|---|---|---|---|---|
| 0 | 5·10^{−16} / 1·10^{−14} | 1·10^{−15} / 4·10^{−14} | 0.250 / 0.125 | 0.250 / 0.125 |
| 1 | 1.2·10^{−2} / 1.6·10^{−2} | 4.4·10^{−5} / 1.1·10^{−4} | 0.912 / 0.309 | 0.915 / 0.307 |
| 2 | 3.7·10^{−2} / 6.1·10^{−2} | 3.0·10^{−4} / 9.1·10^{−4} | 1.16 / 0.453 | 1.17 / 0.422 |
Midpoint odd parts fall by 100–300× with the box (finite-volume holonomy effect: point reflection inverts Polyakov loops). Left-trivialization odd parts are O(1) and box-independent. So σ_j^{(1)}, σ_j^{(2)} are even in K in the midpoint trivialization, and not in the left one, as Prop. E and its Remark (ii) say. CONFIRMED in d = 2 (Prop. E is dimension-independent). Not tested in d = 4.

## 9. Extra: the weaker (H″) at n = 2 (aw_verify/h2step.py, 71 K points: 5-point sorted grid + the (H′) argmax)
‖(⊕_l H_2(k_l))·H_3(K)‖/L²: max 2.056 at (2.356, 2.356, π, π); 2.042 at the (H′) argmax. Threshold √(L² − 1) = 2.828. So the two-step version passes with ~27% margin on this grid (coarse grid; one level pair (2, 3); not a sup over all n, j). One-step 1.76 vs two-step 2.06 suggests sub-multiplicative growth; L^{n/2} grows faster. (H″) is numerically plausible; (H′) is numerically false.

## 10. nc = 16 (box R = 7), j = 1
σ_1^{(1)}(0) J-part = 0.75015 (nc 8, 12, 16: 0.78184, 0.75230, 0.75015; errors 3.2·10^{−2}, 2.3·10^{−3}, 1.5·10^{−4}, geometric). σ^{(0)}(0) error −3·10^{−5}; 2c = 0.50176; translation error 8·10^{−10}. So σ_1^{(1)}(0) = σ_0^{(1)}(0) = 0.75 to 2·10^{−4}, and g_1^{(1)}(0) = 0 (with 𝒜(0) = id from §5). Checks (ii), (iii) at j = 1: CONFIRMED (d = 2).
nc = 16, j = 2 (only q = 0, 1; 312 s per q, so the run was stopped to respect the 10-minute budget; J-part is odd in f, so q = 1 alone gives σ^{(1)} up to O(F²) = 6·10^{−4} relative): |σ_2^{(1)}(0)| J-part = 0.75051 (nc 8, 12, 16: 0.80667, 0.75572, 0.75051). σ^{(0)}(0) error −1.2·10^{−4}. Level-independence at j = 2 CONFIRMED to 7·10^{−4}, converging. j = 3 not run (n = 324, out of budget).

## 11. Grades
1. Evenness (Prop. E): CONFIRMED. Path-by-path rederivation correct. d = 2 numerics: midpoint odd parts → 0 with box (4·10^{−5}, 3·10^{−4} at nc 12); left trivialization O(1). d = 4 not tested.
2. (W): CONFIRMED. W0 exact (KKT argument with μ = 0). (W-1), (W-2) correct. τ_c = (3ie/2)(E_{10} − E_{01}) times Maxwell c: in code units c = 1/4, e = 2 → 0.75; measured 0.750000 (j = 0), 0.75015 (j = 1), 0.75051 (j = 2). O3 (3/2 factor) closed. 𝒜_jc(0) = c checked in d = 4 (H_1(0) = L e_0 ⊗ 1). Side results (longitudinal L^{−2j}, σ^{(2)}(0) slaved) rederived; correct. The σ^{(2)} rate j L^{−2j} stays conditional on (A) in full, which now needs (H″), not (H′).
3. (A) qualitative: CONFIRMED. The R5 "strong sketch" label is the U3_REPAIRS author's own; U3_REPAIRS_VERIFY §4 rederived its pieces and graded O5 CONFIRMED, including M-uniform strip near 0. A0 is a correct assembly. Lemma A1, Prop. A2, derivative budget correct.
4. (A) quantitative: CONFIRMED. Eigenvalue 1 at K = 0 confirmed numerically. Lemma A4 exact. Theorem A3 Steps 1–5 rederived; constants existential.
5. Reduction to (H′): reduction CONFIRMED, but (H′) is FALSE numerically at L = 3: max_K‖H_j‖/L = 1.652, 1.736, 1.757, 1.760 (j = 1, 2, 3, ∞) > 1.414. Max sits at (≈1.9, ≈1.9, π, π), not at the corner. Not fixable by gauge choice. Grade: CORRECTED — route (H′) is closed at L = 3; (H″) at n = 2 passes on a coarse grid (2.06 < 2.83). Untested: L ≥ 5 (threshold √(L − 1) ≥ 2).
6. Four cheap checks: CORRECTED. They were not all cheap: no per-momentum f-code exists, so (ii)–(iv) were done as d = 2 real-space proxies. (i) refutes (H′); (ii), (iii), (iv) pass in d = 2.
Files: numerics/aw_verify/{build_b0.py, hcheck.py, hscan.py, h2step.py, sigma0_d2.py, analyze_d2.py, even_d2.py} + cached B0_L3.pkl, hscan_*.json, h2step.json, s0d2_*.npz.
