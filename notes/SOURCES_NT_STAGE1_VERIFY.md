# SOURCES_NT_STAGE1_VERIFY: adversarial verification of SOURCES_NT_STAGE1.md and numerics/nt_s1_toy.py

Opus, 2026-10-29. Ids follow IDS.md. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read or grepped. No existing file was edited. PLAN.md was not touched. sync.sh was not run. paper/ was not touched. Disk: 6.9 GB free at start.
Inputs read: OPUS_QUEUE.md l. 1–15; SOURCES_NT_STAGE1.md (whole); numerics/nt_s1_toy.py (whole); SOURCES_NT4_VERIFY.md (whole); SOURCES_NT4.md l. 18, 37, 46–47, 65, 92–103, 121–132 (grep); SOURCES.md §2.4(a)–(b); LEMMA_B4.md l. 32 (CMP 109 (0.19), quoted). No page images were rendered.
Reruns (Mac): N = 32 at m² = 0.04, 0.01, 0.0025 (4 s each); N = 64, m² = 0.0025, Part A (155 s). Extra tests, run from stdin with sed edits of the script (no file written): bump offsets 2, 4, 10 at d = 8; offsets 4, 6, 7 at d = 4 (N = 32).

## Verdict: CONFIRMED WITH CORRECTIONS. GO for Stage 2, with (S2-λ) re-stated (C1) and tested first.

The algebra of (a) and (b) holds. Lemma G1, Lemma G2, the closure rule j* = max j_a, and the orthogonality all reproduce to 10^{−15}. C3 of SOURCES_NT4_VERIFY is answered at the level of definitions. Five corrections follow. C1 changes the claimed rate of Stage 2. C2 and C3 add items to Stage 2. C4 and C5 change the numerical statements. None of them blocks the rate-free (NT4)_{d0}.

## Corrections

- C1. Evenness in λ fails at a fixed coarse field (§4.3(iv), (S2-λ)). The λ-family must reach the G-step at λ = 0. So it must scale the background nonlinearity and the background dependence of the covariance, as the file says. Then the background is a function of λ·(coarse field), and the parity is (λ, a, a′) ↦ (−λ, −a, −a′), with a′ the coarse field. The file's parity (λ, a) ↦ (−λ, −a) is the NT4 §2.2(c) parity, which holds only because there the background U_{k+1}(V) is not scaled. A 0-dimensional check: with φ = λ(b + a) and the action S(φ)/λ², S = φ²/2 + κφ³/3 + φ⁴/4, the term κλ(b + a)³/3 is invariant under (λ, a) ↦ (−λ, −a) only if also b ↦ −b. For SU(2), A ↦ −A is not a symmetry of the Wilson action (the cubic f^{abc} term changes sign; charge conjugation is A ↦ −A^T). So K(X; −λ)(a′) = K(X; λ)(−a′), and K(X; λ) at fixed a′ is not even. Consequence: per polymer, Cauchy in λ gives |K(X; 1) − K^𝒢(X)| ≲ Λ_j^{−1} sup|K|, so δ = O(γ·(log γ^{−2})^{p_0}), not O(γ²·polylog). The a′-even part of the difference is O(Λ_j^{−2}). The a′-odd part is O(Λ_j^{−1}). The total log Z is even in λ (all fields are integrated), so a Λ^{−2} rate needs a parity-graded polymer bound through the induction [I]. δ(γ) → 0 still holds, so (NT4)_{d0} in the rate-free form is not affected. Grade of "K(X; λ) even in λ": CORRECTED. Grade of "δ = O(γ² polylog)": CORRECTED to O(γ polylog) per polymer.
- C2. The constant-source orthogonality is shown for the plaquette form only (§2.1, §3.2(iv)). Balaban's block constraint is a sharp δ(Ū V^{−1}) (CMP 109 (0.19), quoted in LEMMA_B4.md l. 32 and SOURCES_NT4 l. 37). So the projection form Γ_iΔΓ_k = δ_{ik}Γ_i transfers. But (0.19) also has the gauge-fixing sum −(1/g_k²)Σ_yΣ_{x∈B(y)}[1 − Re tr U(y, x)], with weight g_k^{−2} and no source. So Δ^{(c)} = cΔ holds for the plaquette part, not for the full form "with Balaban's gauge fixing". Then C_{<j}M_c ≠ cΣ_{i<j}g_i²P_i, and the closed resolvent formula of §3.2(iv) does not hold as written. Repair [I]: put the source also into the gauge-fixing weight. For gauge-invariant integrands this changes the integral only by a source-dependent normalization of the gauge average. That normalization is not computed in the file, and it is not in the real flow, so it must be added to (S2-fix). The toy has the same defect: A = DᵀD + m², and M_c = cDᵀD ≠ cA. The script checks Γ_iAΓ_k only; it does not check the resolvent formula. Grade: CORRECTED.
- C3. The exact sum rule holds for the unreplaced 𝒢, not for the 𝒢 of §2.1 with (S2-fix). Lemma G1, Lemma G2 and Proposition A(1) use a fixed vertex M_t and Z_j ≡ 1. §2.1 instead replaces the local part of the J-chain vertex at each step by the real f̃_{j+1}. That local part contains terms of degree ≥ 2 in t (for example (M_1C_{<j}M_2)_loc) on the scales λ_j ≳ d, where one block meets two supports. These terms feed later steps and contribute to the t_1t_2t_3t_4 coefficient. The file tracks only the factor Z_j (1 + O(g_k)). So, with (S2-fix), Σ_XΔ_4K^𝒢 equals the t⁴ coefficient of the replaced stepwise object. Its difference from Ring_RG of SOURCES_NT4 §3.4(b) is not computed. It is plausibly relative O(g²) on the O(1 + log_L(1/d_0)) coarse scales [I]. Grade of "exact under (Def W)": CONFIRMED for the unreplaced 𝒢; CORRECTED for the 𝒢 of §2.1.
- C4. The "2d peak" is a grid-alignment effect. With bumps at offset 4 (d = 8, N = 32) the closure fractions at λ = 4, 8, 16 are 0.043, 0.093, 0.868. With offset 10, so that the bumps fall in different 16-blocks, they are 0.060, 1.059, −0.115: the peak is at λ = d. At d = 4 the peak is at λ = d (offsets 4, 6: 0.538) or λ = 2d (offset 7: 0.664). The robust statement is: the closure scale lies in λ ∈ [d, 2d], O(1) layers around k(d), as SOURCES_NT4 §3.4(c) already found. Grade: CORRECTED.
- C5. The cross-scale "share" is not a robust number. Single-scale shares: 0.101 (offset 4, d = 8), 0.108 (offset 10, d = 8), 0.203 (d = 4, offsets 4, 6), 5.26 (d = 4, offset 7, a sign cancellation). N = 64 gives 0.0094 at offset 4. The numbers also depend on L = 2: Balaban uses a large L, with fewer scales per decade, and the cross-scale part will be smaller there. The conclusion of (F2) holds in a stronger form: single-scale rings do not approximate the ring, so the J-chains are necessary. The value "90–99 %" holds only for aligned bumps at d = 8 and L = 2. Grade: CORRECTED.
- C6. Minor.
  (a) "Σ_j(closure parts) − ring = 0" in the script is a tautology: Rj is defined as Ring(C_{≤j}) − Ring(C_{≤j−1}). The non-trivial content, [t⁴]G_j = Ring(C_{≤j}) − Ring(C_{≤j−1}), follows from Lemma G1 by algebra; the [V] support is the per-step check of G1 (1.4·10^{−15}, 3.0·10^{−15}).
  (b) Part B: "independent of g to all printed digits" is an exact scaling identity (Dg[S] ∝ g^{2|S|}, so the ratio has no g). It is not a numerical finding. The content of Part B is the coefficient values.
  (c) "about 60 % is the tadpole": the rerun gives 64.5 %, 62.0 %, 68.7 % at m² = 0.04, 0.01, 0.0025.
  (d) §4.3(iii) "the same holds for the source transfer Z_j" is wrong. Z_k − 1 = O(g_k), since Σ_{i<k}g_i³ ≤ 4g_k/β (SOURCES_NT4_VERIFY grade table). A mismatch (1 − s) in Z accumulates to (1 − s)·O(g_k), which is bounded. Only the marginal coupling accumulates without bound.
  (e) §3.2(iii) proves that the triangle-inequality majorant grows like β^{−1}ln(u_0/u_j) ~ ln K. It does not prove that the absolute walk series diverges (that needs a lower bound on the mixed-label walk terms). The conclusion needed (the perturbative form gives no K-uniform per-polymer bound) holds with the majorant.
  (f) (Def W) needs absolute convergence only for the t⁴ coefficient, a finite word with four insertions. That holds by the kernel decay, independently of §3.2(iii). The file's condition "whenever the walk-expanded series converges absolutely" is stronger than needed.

## Grades

| Claim | Grade |
|---|---|
| (a) G-step: Gaussian step at U = 1, real g_j and f̃_j by hand; closed log det part + J-chain vertex | CONFIRMED [P] for the algebra; YM transcription CORRECTED (C2: gauge-fixing weight) |
| J-term vanishes for constant f̃ (sharp constraint, minimizer) | CONFIRMED [R to SOURCES.md §2.4(a); CMP 109 (0.19) δ-constraint] |
| Lemma G1, Lemma G2: exact telescoping to log Z^𝒢 | CONFIRMED; rerun 7.9·10^{−16} (N = 32), 1.1·10^{−15} (N = 64); per step 1.4·10^{−15}, 3.0·10^{−15} |
| (F1) only the t_1t_2t_3t_4 coefficient matters; K^{𝒢,4} entire | CONFIRMED [P] |
| Ring = Σ over 3 unoriented 4-cycles; script ring() uses the right cycles | CONFIRMED (½Σ over 6 cyclic orders = Σ over 3 unoriented) |
| (Def W) sum rule | CONFIRMED for the t⁴ coefficient (C6(f)); exact only for the unreplaced 𝒢 (C3) |
| (Def M) defined; same index set as K; 𝔐 a map on data | CONFIRMED [P-sketch]; map on data stays [I] |
| (b) Closure at j* = max j_a on one polymer; answers SOURCES_NT4_VERIFY C3 | CONFIRMED [P] at the level of definitions |
| [t⁴]G_j = Ring(C_{≤j}) − Ring(C_{≤j−1}) | CONFIRMED [P from G1]; script check is a tautology (C6(a)) |
| Real-theory closure via the cluster expansion of the J-term activity | CONFIRMED [P-sketch] |
| Prop. A(1) exact under (Def W) | CONFIRMED for unreplaced 𝒢; CORRECTED with (S2-fix) (C3) |
| Prop. A(2) large-field error below every power of g under (Def M) | CONFIRMED [P-sketch]; same caveat C3 for the target Ring_RG |
| Per-polymer bound Σ_X\|c_X\|e^{κ′d} ≤ C(d)g_{j*}⁸ | CONFIRMED [P-sketch given the kernel bound, which is I]; "each propagator joins two different supports" holds for multilinear words |
| 𝒢 analytic on Σ\|t_i\|‖f_i‖ < g_max^{−2}; spectral radius 0.0235, 0.0212 ≤ 0.0625 | CONFIRMED [P]; rerun matches |
| Cross-scale share 90–99 % | CORRECTED (C5): 80–99 % for aligned bumps, ill-defined with cancellation; L = 2 specific |
| Closure peak at λ_{j*} ≈ 2d | CORRECTED (C4): peak at d or 2d by alignment |
| Fine closure scales λ ≤ d/4 carry < 0.4 % | CONFIRMED for d = 8 (0.31 %, 0.24 %) |
| ln K growth of the perturbative (absolute) series | CONFIRMED for the majorant (C6(e)) |
| Γ_iΔΓ_k = δ_{ik}Γ_i | CONFIRMED [P] for sharp conditioning; rerun 1.3·10^{−15}, 4.2·10^{−15} |
| Constant source in each step's weight removes ln K; resolvent analytic for \|c\| < u_{j−1} | CONFIRMED [P] for the plaquette-only form; CORRECTED for YM and the toy (C2) |
| Gradient J-terms summable over fine scales, Σλ_i/(θ_*d) ≤ L/(L − 1) | CONFIRMED [P-sketch] |
| Coarse scales: volume-fraction smallness [I]; finite count for fixed d_0 | CONFIRMED as graded |
| (c) Non-compact U(1): K − K^𝒢 ≡ 0, ring nonzero (27648 per color) | CONFIRMED [P]; trivial, since real data equal 𝒢-data |
| "Ring zero" only for a linear source (Isserlis) | CONFIRMED [P] |
| Compact U(1): remainder of relative order g² | CONFIRMED [P-sketch] |
| Quartic toy: first-order formula −(3/4)g²λ′Σ(1 − g²f_t)C_t(x, x)² | CONFIRMED [P, Wick]; script coef/coefW correct |
| Quartic toy: analytic on Σ\|t_i\|g²‖f_i‖ < 1 at each order in λ′ | CONFIRMED [P] |
| Factor λ′g²; values −87.863/−31.187, −137.318/−52.196, −196.621/−61.546 | CONFIRMED (rerun exact); g-independence is a scaling identity (C6(b)); tadpole share 62–69 % (C6(c)) |
| m² (IR) dependence of the coefficient | CONFIRMED (both columns grow in size as m² decreases) |
| YM: verified inputs give K − K^𝒢 only on the absolute polydisc; no gain | CONFIRMED [R to SOURCES_NT4_VERIFY C2] |
| Fine scales j < k(d_0) − m need no relative radius; m = O(log_L log(1/g_k)), K-independent | CONFIRMED [P given S1, FX4 count, L-001 (c′)] |
| Naive interpolation: radius ~ u_k/(u_0 − u_k) → 0 | CONFIRMED [P-sketch] for the marginal coupling; "same for Z_j" CORRECTED (C6(d)) |
| λ-family endpoints: λ = 1 real step, λ = 0 G-step | CONFIRMED [P-sketch], with C2 at λ = 0 |
| λ-family exact parity, K(X; λ) even in λ | CORRECTED (C1): even only jointly with a′ ↦ −a′ |
| δ = O(γ²(log γ^{−2})^{2p_0}) | CORRECTED (C1): O(γ·polylog) per polymer; still [I] (domain Λ_j unchecked) |
| (NT-loc′) ⇒ Theorem NT4-C | CONFIRMED [P given (NT-loc′)], with Ring_RG as in C3 |
| (d) Stage 2 list (S2-rel), (S2-hist), (S2-λ), (S2-fix) | CONFIRMED as necessary; INCOMPLETE: add C1 (parity of a′), C2 (gauge-fixing weight), C3 (ring of the replaced 𝒢) |
| 6–10 rounds | UNSUPPORTED as a derivation; a plausible order of size. C1–C3 add about one round |

## Stage 2: GO, with this order of tests

GO. No item found here blocks (NT-loc′) in the rate-free form. The order:
1. (S2-λ) one-step test, first. Fix which fields the λ-family scales. Decide on CMP 122 II (1.2) whether the background enters as exp(iλ·(coarse field)). If it does, the per-polymer gain is Λ_j^{−1} (C1). Also check that the small-field domain allows |λ| ≤ Λ_j with the background scaled: this needs |λ|·ε_k ≤ cε_0 for the background as well as |λg_ja| ≤ cε_0 for the fluctuation. A Mac-minute toy can test this first: a 2D lattice scalar with a cubic and a quartic vertex, one RG step, nonzero coarse field, and a measurement of K(X; λ) − K(X; 0) against λ at fixed coarse field. The test should show a linear term in λ at fixed field, and its absence after the a′-average.
2. (S2-fix) with C2: write the G-step with the source in the gauge-fixing weight, and compute the normalization of the gauge average.
3. (S2-fix) with C3: compute the t⁴ difference between the replaced and the unreplaced 𝒢 on the coarse scales. A toy check fits in Part A of the script: replace the block-local part of the chain vertex at each level and compare the rings.
4. Then (S2-hist) and (S2-rel), as the file orders them.

## Safe status

- (NT4)_{d0}: REDUCED to (NT-loc′) plus the inputs of Theorem NT4-C. (NT-loc′) is REDUCED to (S2-rel), (S2-hist), (S2-λ), (S2-fix), with C1–C3 added. All are [N].
- K^𝒢_j(X) is DEFINED per polymer ((Def W) explicit, (Def M) by Balaban's machinery). SOURCES_NT4_VERIFY C3 is answered at the level of definitions.
- Expected rate from the λ route: δ = O(γ·polylog) per polymer, not O(γ²·polylog).
- (NT) = H-081/H-101: OPEN, unchanged.

## Report

SOURCES_NT_STAGE1 is confirmed with corrections. Telescoping, closure at max j_a and orthogonality rerun to 10^{−15}; the toy coefficients rerun exactly. Corrections: the λ-family is even only jointly with the coarse field, so the per-polymer rate is O(γ·polylog), not γ². Balaban's gauge-fixing term carries no source, so constant-source orthogonality needs the source added there. The exact sum rule holds for the unreplaced 𝒢, not with (S2-fix). The 2d peak and the 90–99 % share depend on bump alignment and L = 2. Z_j does not accumulate. GO for Stage 2; test the (S2-λ) parity and domain first.
