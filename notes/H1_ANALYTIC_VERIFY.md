IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# H1_ANALYTIC_VERIFY — independent check of H1_ANALYTIC.md

Started 2026-10-27 (Claude, Opus 5.5). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.
New files only under numerics/h1analytic/. One section per tool call.

## V0. Read H1_ANALYTIC.md, h1cert_rho1.py, bb.py
- bb.py exists in numerics/h1analytic (not only /tmp). Default n0 = 8, maxdepth = 6; §6 says initial 16⁴ grid, so the run used n0 = 16 (to confirm).
- First audit notes on bb.py: F_CS box enclosure uses monotone 1D pieces (sinc² decreasing, 4sin²/(2π−K)² increasing on [0, π]; r_ρ decreasing in t; r_μ bounded num-hi/den-lo); the ratio Σx r/Σx with x = K² is linear-fractional, so its max over the box is at a vertex — correct.
- CS step (6.1) rederived on paper: Σ_ε σ_ν²q_ν² = (1+c)·4 sin²(K_ν/2) and 4sin²(K/2)/sinc²(K/2) = K², which gives K²r_ν exactly as stated. CONFIRMED.
- G is inherited from a parent box (valid: a bound on a superset holds on a subset). Leaves with B > target at maxdepth are counted as failures, and the returned sup is the max over leaf upper bounds. Termination logic is correct as written.

## V1. Paper rederivation of the lemmas and of the majorant (task A, B on paper)
Lemma S (2.1). The F^μ path form of P4 Step 1 gives straight_μ + avg[Γ1_i − τ_{Le_μ}Γ1_j + seg_μ − straight_μ]. The d-average of seg_μ(d) has symbol S_L(k_μ)A(k). τ_{Le_μ} multiplies by e^{iLk_μ} = e^{iK_μ} at k = k_l. So Γ1 − τΓ1 → (1 − e^{iK_μ})γ̄ = −K̂_μγ̄. I did not re-read P4's avg conventions; I rely on the numerical check (V2) for signs and index order.
Lemma G (4.1). Segment along ν from p by d_ν: symbol e^{ik·p}(e^{ik_νd_ν} − 1)/k̂_ν. E_d over independent uniform coordinates gives Π(earlier α)·(α_ν − 1)/k̂_ν. Average over 24 orders: position r+1 has C(3,r)·r!·(3−r)! = 6 orders per r-subset, so the weight per r-subset is 6/24 = ¼·1/C(3,r). This gives Φ_ν. |e_r| ≤ C(3,r) gives |Φ_ν| ≤ 1. CONFIRMED on paper.
α_l sign. α(k_l) = sin(K/2 + πl)/(L sin(k_l/2)) = (−1)^l|a_l| for K ∈ [0, π], l ∈ {0..L−1}. CONFIRMED.
(I1) + tower (2.2). E⁰ is diagonal, so E⁰_lP_l = E⁰_l − A(k_l)K̂k̂_l^†/|k̂_l|² and P_⊥E_lP_l = P_⊥E⁰_l. Then P_⊥TP_⊥ = P_⊥diag(L^{−4}Σ_l L²a_{l,μ}²Π_ρa_{l,ρ}² d^M_μ(k_l))P_⊥. Tower: n = l + Lm, q_n/(ML) relation gives σ^{ML}_{n,ρ}(K) = a_{l,ρ}σ^M_{m,ρ}(k_l) and q̃^{ML}_n = Lq̃^M_m(k_l) (coarse vs fine units). Summing over m gives (2.2). CONFIRMED on paper; numerics in V2.
Majorant, transverse (Lemma T). Inequalities used: (i) λ_max(A + B) ≤ λ_max A + λ_max B, both PSD; (ii) (PDP)² ≤ ‖PDP‖·PDP, so T2 ≤ d_max T; (iii) ZTZ = Z (pseudo-inverse); (iv) d^M_μ(k) ≤ 1/min_m|q̃^M_m(k)|², because the weights Π_ρσ²·σ_μ² ≤ Π_ρσ² sum to 1 (Fejér) — valid for every M incl. 1 (M = 1: d = 1/|k̂|² exactly); (v) min over l, m of the deformed momentum is at K_ρ/L, and 2M sin(x/2M) ≥ 2 sin(x/2) ≥ x·sinc(π/2L) for |x| ≤ π/L — valid; (vi) λ_min of a compression ≥ min_μ d^{ML}_μ; (vii) d^{ML} ≥ truncated M = ∞ sum termwise: N|sin(q/2N)| ≤ |q|/2 gives σ^N ≥ σ^∞ and |q̃^N| ≤ |q|, all terms ≥ 0. A lower bound on the coarse energy enters ‖Z‖ in the numerator as 1/d̲, so it makes the bound larger: valid direction. CONFIRMED.
q̃_0 meaning. q̃^M_0 = the deformed momentum 2M sin(q/2M) of the nearest representative; for every M it is ≥ |k̂| per component, so "fine symbol ≤ 1/|k̂_l|²" (used in Lemma Gauge) and "≤ L²γ_L/|K|²" (used in Lemma T) both hold at finite j. CONFIRMED.
Majorant, gauge (Lemma Gauge). Rederived T = T_0 − K̂u^† − uK̂^† + α_TK̂K̂^† from E_lP_l = E⁰_l − K̂h_l^†, h_l = Ā_lk̂_l/|k̂_l|² + P_lg_l; u = diag(ζ)K̂ + u_g uses S_L(k_μ)k̂_μ = K̂_μ. Then n_K^†TP_⊥ = n_K^†diag(d^{ML} − |K̂|²ζ)P_⊥ − |K̂|u_g^†P_⊥, which is (5.1). |c| ≤ |K̂|(1 + ‖n_K^†TP_⊥‖‖Z‖) and ‖Z‖ ≤ 1/d̲. |u_g| ≤ L^{−4}Σ_l‖E⁰_l‖‖D_l‖|P_lg_l| with ‖E⁰_l‖ = LΠ|a|max|a| and ‖D_l‖ ≤ 1/|k̂_l|². G = |c|²/(σ|K̂|⁴L²), σL² = S_L. Every step is an upper bound. CONFIRMED on paper.
F_CS (6.1): see V0. CONFIRMED.

## V2. Task A numerics (numerics/h1analytic/test_a.py, L = 13, 10 random K ∈ BZ with random signs, 64 s)
Own implementation (verify_ab.py): E⁰ and γ̄ from (2.1)/(4.1); Prop. A symbols by direct summation (no quadrature).
- Lemma S + Lemma G: max |E_prod − (diag E⁰ − K̂γ̄^T)| / max|E_prod| ≤ 2.7e−13 at all 10 K (E_prod = h2_scan.qsym).
- (I1) with exact symbols: max rel. |P_⊥TP_⊥ − P_⊥diag(d^{ML})P_⊥| ≤ 5.3e−13 for j = 1 (all 10 K), j = 2 (3 K; fine window 13, coarse window 169), j = ∞ (10 K; truncated sums with matched sets n = l + Lm, |m| ≤ 1). This checks the tower identity exactly on finite sets.
- (1.1) with the production d (quadrature, from h1cert_rho1.pieces) vs h1cert_rho1.rho1²: rel. diff ≤ 3.9e−13 for all 23 (K, j) cases.
All below the 1e−10 tolerance. j = 2 was run at 3 K only (L⁸ direct-sum cost). Grade (1): CONFIRMED.

## V3. Task B numerics (numerics/h1analytic/test_b.py, L = 13, 117 s)
224 K (200 random in BZ with signs, 19 face-diagonal points (a, a, π, π) a ∈ [2.0, 2.9], corner, (2.42,2.42,2.42,2.98), 3 near-0/edge points) × j ∈ {1, 2, 5, ∞} = 896 cases. ρ_1² from production h1cert_rho1.rho1. B_sharp = (5.3) with F from the truncated sum (h = 6) and |P_lg_l|; B_crude = γF_CS + G with |g_l| (the function bb.py encloses), both written by me from the text.
- min B_sharp/ρ_1² = 1.0347 (j = ∞, K = (−0.322, 1.291, −1.271, 0.762), ρ_1² = 1.550). No violation. The bound is tight (3.5%) at a generic interior K, not at the argmax.
- B_crude ≥ B_sharp at every case (min ratio 1.0000).
- max ρ_1² = 4.366 (face, a ≈ 2.5, j = ∞); max B_sharp = 5.960, max B_crude = 7.957 (both at (2.42,2.42,2.42,2.98)). These match H1_ANALYTIC §7 (5.86 h=6 sharp / 7.98 crude; small differences from point sets).
- Near 0: ρ_1² = 1.000, B = 2.005. j-dependence of ρ_1² is ≤ 3% between j = 1 and ∞; B has no j.
The tight 3.5% case needs a local search (V4).

## V4. Local search for the tightest point (test_b2.py, Nelder–Mead on B_sharp/ρ_1², 6 starts × j ∈ {∞, 1})
- Local minima of the ratio: 1.026–1.028 at |K| ≈ 1.4–1.6, e.g. (−0.463, 1.023, −1.023, 0.463), ρ_1² = 1.331 (j = ∞), ratio 1.0264. No violation. j = 1 gives ratios ≥ 1.0266.
- So B_sharp is within ~3% of ρ_1² in a mid-|K| region; the majorant holds there, consistent with the paper proof (V1). It does not hold "with room": any error in the derivation of size > 3% would show up here, and none does.
- The sup of B (≈ 6–8) is far from the sup of ρ_1² (4.37) only near the argmax region; the losses quoted in §7 are confirmed.
Grade (2) majorant: CONFIRMED. Grade (3) j-uniformity and K → 0: CONFIRMED (V1 inequalities (iv)–(vii); numerics j ∈ {1,2,5,∞}, K → 0 gives B ≈ 2.0 ≥ 1).

## V5. Audit of bb.py (task C), by reading the code line by line
- Chamber cover: initial boxes keep index-sorted cells; children are kept iff lo_r ≤ hi_{r+1} for adjacent r. Any box that contains a sorted point passes this test, so no chamber region is dropped. Valid.
- Symmetry: B_L (F_CS, G) is invariant under permutations and sign flips of K (all terms depend on |K_ρ|, sin², and l → −l mod L). So the sup over the BZ equals the sup over the sorted chamber in [0, π]⁴. Valid. No symmetry of ρ_1 is used.
- Boundary defect (float): the grid top is np.pi = fl(π) < π by 1.2e−16. The strip K_ρ ∈ (fl(π), π] is not covered. Harmless in value (continuity), but formally a gap; fixed in bb_arb.py (exact π·u endpoints).
- F_CS box bound: monotone pieces correct (V0). Zero vertex at K = 0 boxes: the ratio Σxr/Σx is homogeneous of degree 0, so the sup over box∖{0} is the max over the nonzero vertices; the 1e−300 guard gives 0 at the zero vertex, which is harmless. Valid.
- G tables: |k̂|² range via sin² with interior extremum detection (k/2 ∈ [0, π), so only the max at π/2 or the min at 0 can be interior). a² = sin²(K/2)/(L²sin²(k/2)) enclosed with numerator and denominator separately (valid, loose). l = 0: a_0 decreasing on [0, π] (valid). |a| ≤ 1 clamp (valid). |1 − α| = 1 ∓ |a| by the sign rule (valid). |g_ν|² ≤ |1−α_ν|²/|k̂_ν|²; at l_ν = 0 the Taylor bound (L²−1)K/(24L sinc(π/2L)) (rederived: 1 − α ≤ κ²(L²−1)/24, |k̂| ≥ κ sinc(π/2L)) — valid; used when lo = 0, so no 0/0.
- bound(): W = |K|²/|k̂_l|² (l = 0: ≤ L²γ_L, rederived); r = |K̂|²/|k̂_l|² range (l = 0: mediant of L²a_{0,ρ}²); br ≥ max_μ|y − r|; V_code = |K|²V, U_code = |K|²U, so τ = F_CS·(V_code + |K̂|U_code) = (V + |K̂|U)·F_CS|K|² ≥ (V + |K̂|U)/d̲. S ≤ |K̂|²S_L from below (l = 0 term via min L²a_{0,ρ}²). All directions correct.
- Parent G inheritance: valid (bound on a superset). Leaf test: a leaf is accepted only if its upper bound (γF + G)(1 + 1e−9) ≤ target or depth = maxdepth; leaves above target are counted as failures and the reported sup is the max over all leaf upper bounds. Valid.
- Only defects: no directed rounding (sin, sinc, divisions in float64 nearest), and the fl(π) strip. Grade (4) logic: CONFIRMED; rigor gap fixed in V6.

## V6. bb_arb.py written (task D)
numerics/h1analytic/bb_arb.py: same enclosures as bb.py. Changes: box coordinates K = π·u with u exact dyadic rationals (covers K_ρ = π exactly); every 1D value (sin², sinc, a_0², tails, t = u/(2−u), γ_L, Taylor g bound) evaluated in arb at exact endpoints; interior extremum of sin²(k_l/2) detected by exact rational test x = (u+2l)/L vs 1, with arb union of endpoint values for the min; arb → float by a loop that checks arb(x) ≥ a (resp. ≤); 4D combination in numpy with one-ulp outward rounding after every op and the Higham bound (1 ± 2n·2^−52) for every np.sum; lower bounds clamped at 0.
Port check (cmp_boxes.py, 30 random boxes): bb_arb/bb − 1 ∈ [1.2e−14, 1.5e−14] for F_CS and [1.3e−11, 3.7e−11] for G. Always ≥ 0, as outward rounding should give.

## V7. Rerun of the original bb.py (float, `python3 bb.py 13 10 16`)
Reproduced: sup B_13 ≤ 9.99953, 25,169 boxes, 8,075 G evaluations, 0 failed leaves, 102 s. Note: the reported 9.9995 is not a 23% margin to 10; the branch-and-bound refines each box only until it is ≤ 10, so the result is "≤ 10" with 5·10^−5 to spare. The 23% margin in §6–§8 is the margin to 13, not to the target. Float rounding error (≤ 4e−11 relative, V6) is far below 5e−5.

## V8. arb certificate result (task D)
`uv run --no-project --with python-flint --with numpy python bb_arb.py 13 10 16` (python-flint 0.9.0, numpy 2.5.4):
sup over the sorted chamber [0, π]⁴ of B_13 ≤ 9.9995277 (every leaf upper bound outward-rounded), 25,169 boxes, 8,075 G evaluations, 0 failed leaves, 58.3 s on the Mac. Worst leaf: u = K/π ∈ [0.719, 0.75] × [0.8125, 0.844]² × [0.875, 0.906]. Fmax (F_CS box bound) 8.3048, Gmax 3.4482 (not the same box).
Consistency: the float run gives 9.99952769457 = 9.99952768457·(1 + 10^−9); the arb value 9.99952768465 is above the uninflated float value by 8e−11, as outward rounding should give. Point check: max B_crude over 896 test cases = 7.957 ≤ 9.9995.

## V9. What is certified, grades, residue (task E)
Statement. For L = 13, every K ∈ BZ = [−π, π)⁴ ∖ {0}, and every j ≥ 1 including j = ∞: ρ_1(j, K)² ≤ B_13(K) ≤ C = 9.99953 < 13. At K = 0, ρ_1 = 1. This holds given: (1) Lemma S, Lemma G, (I1)/tower — proved on paper (V1) and checked to ≤ 5e−13 against the production objects (V2); (2) the majorant (5.3) and F ≤ F_CS — rederived step by step, every inequality a valid upper bound (V1), and checked at 896 cases plus local search, min ratio B/ρ_1² = 1.026 (V3, V4); (3) the arb branch-and-bound (V8).
Grades.
- (1) three exact lemmas: CONFIRMED.
- (2) majorant ρ_1² ≤ γ_LF + G_L: CONFIRMED. Note: it is tight to 2.6% at |K| ≈ 1.4–1.6, so it has no slack there.
- (3) j-uniformity and K → 0: CONFIRMED. q̃_0 = 2M sin(q_0/2M) of the nearest representative; d^M ≤ 1/|q̃_0|² ≤ 1/|k̂|² for every M (Fejér weights sum to 1). The coarse lower bound (termwise σ^N ≥ σ^∞, |q̃^N| ≤ |q|) enters as 1/d̲ and makes the bound larger: valid direction.
- (4) bb.py certificate: CORRECTED. Logic, chamber cover, 384-fold symmetry (permutations × signs, not 16-fold), K = 0 boxes, boundary boxes, and leaf criterion are correct. Defects: no directed rounding; the grid stopped at fl(π) < π; the "23% margin" is to 13, while the margin to the 10 target is 5e−5. All fixed or restated: arb rerun gives C = 9.99953 (58 s).
Informal residue (not checked here).
- The identification ρ_1 = ‖H_j(K)‖/L and the split (1.1) rest on H2_CERTIFY_L13 (2.1), P4 (β = σ), and H2_LARGE_L. I checked (1.1) only against h1cert_rho1.rho1 numerically (≤ 4e−13), not against an independent construction of H_j.
- Lemma S index and sign conventions were confirmed numerically against h2_scan.qsym (the P4 avg_profile convention), not rederived from umk_beta1 source.
- Python implements the formulas: bb_arb.py is a port of bb.py's enclosures; I audited each line (V5) and checked the port against bb.py on 30 boxes. No proof assistant was used.
- python-flint arb and IEEE correctly rounded +, −, ×, ÷, sqrt in numpy are trusted.
