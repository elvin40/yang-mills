# SOURCES_A3_GAMMA0 — attempt on trust-ledger item A3 (lower bound γ_0 > 0 on C*Δ_k(U)C)

Status: IN PROGRESS (Opus, 2026-10-28). Sections are appended as the work proceeds.
Firewall: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md were not read.

## §0 Target
A3: ⟨B, C*Δ_k(U)C B⟩ ≥ γ_0‖B‖², γ_0 independent of k, volume, M, and the background U in the regular class.
Proposed route: lattice Kato (diamagnetic) inequality reduces the covariant minimal-extension energy to the free one.

## §1 CMP 96 pp. 243–246: what Lemma 2.4 is and how γ_0 arises at U = 1 [V page images, PDF pp. 21–24]
[V] p. 243 (2.118): γ_0‖∂_1B‖² ≤ ⟨B, Δ_jB⟩ ≤ γ_1‖∂_1B‖², quoted from "(1.66) satisfying (1.67)" (CMP 95). ∂_1 = unit-lattice curl (plaquette sum). Δ_j = the minimal-extension form.
[V] p. 244 (2.120)–(2.122): the B-integral form is ‖B↾Λ^c‖² + L^{−2}‖(Q_1B)↾Λ′‖² + ⟨B, Δ_jB⟩ on B with the axial condition (2.121) B(b) = 0 for b ⊂ Γ_{y,x}. By (2.118) it is ≥ the form (2.122) with γ_0‖∂_1B‖².
[V] p. 244 (2.123): inside a block, telescoping along axial lines: |B(x, x+e_j)|² ≤ (path length)·Σ|(∂_1B)(p)|²; summed: Σ_{b⊂B(y)}|B(b)|² ≤ dL^d Σ_{p⊂B(y)}|(∂_1B)(p)|².
[V] p. 245 (2.124)–(2.127): for bonds in the corridor B(c) between two blocks, the same telescoping plus |(Q_1B)(c)|² gives L^{−d}Σ_{p⊂B(c)}|∂_1B|² + |Q_1B(c)|² ≥ ⅓L^{d−1}Σ_{b∈B(c)}|B|² − (block terms).
[V] p. 245 Lemma 2.4 (2.128): L^{d−2}Σ_c|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ (12d²)^{−1}L^{−d−1}‖B‖², B on Λ = B(Λ′) with (2.121), B = 0 outside Λ.
[V] p. 246: "These forms are bounded from below by γ_0″‖B‖² with a positive constant γ_0″ dependent on d and L only."

1.1 Reading [P]. The U = 1 lower bound is a TWO-step argument, not a Fourier bound:
 (i) analytic step: Δ_j ≥ γ_0·∂_1*∂_1 (CMP 95 (1.67)): the minimal fine energy of an extension of B dominates the unit-lattice curl energy of B;
 (ii) combinatorial step: Lemma 2.4, a unit-lattice Poincaré inequality in axial gauge with block-average control.
 In CMP 99's setting Q_1B = 0 on the B-subspace (δ(Q_1B) in (3.155)), so the Q_1-term of (2.128) vanishes, and γ_0(CMP 99) ≥ γ_0^{(1.67)}·(12d²)^{−1}L^{−d−1}. The KAPPA_D/SOURCES_Q value γ_0 = (12d²)^{−1}L^{−d−1} omits the factor γ_0^{(1.67)} [P: correction].
 Also C*·C: ‖CB̃‖² ≥ ‖B̃‖² because C is the identity on the bonds of Λ̃ and only adds solved bonds. So ⟨B̃, C*Δ_kC B̃⟩ ≥ γ‖CB̃‖² ≥ γ‖B̃‖². The C-step costs nothing for the LOWER bound [P].

## §2 CMP 95 p. 29 (1.64)–(1.67), p. 29–30 (1.69): the analytic step at U = 1 [V pdftotext]
[V] (1.65) ⟨B, Δ_kB⟩ = ⟨∂H_kB, ∂H_kB⟩, H_kB = the minimizer of ½⟨∂A, ∂A⟩ on {Q_kA = B, Rd*A = 0}. (1.67) γ_0′⟨∂_1B, ∂_1B⟩ ≤ ⟨B, Δ_kB⟩ ≤ γ_1⟨∂_1B, ∂_1B⟩, "γ_0, γ_1 dependent on d only", from the Fourier formula (1.66) (garbled in text). (1.69) Δ = d*d + dd*, R = I − P.
2.1 Reading [P]. The free Δ_k is the minimal CURL energy ‖∂A‖² over extensions. The gauge condition Rd*A = 0 does not change ‖∂A‖² (gauge directions have zero curl at U = 1), so it is a choice of minimizer, not an extra cost. The lower half of (1.67) is the analytic step (i) of §1.1.
2.2 Elementary proof of the lower half of (1.67) [P, continuum-normalized lattice sums]. Balaban's Q (CMP 98 (14), (125); CMP 95 (1.8)) is: (QA)(c) = average over x in the block B(c_−) of the line integral of A along the unit segment [x, x + e_μ]. For a unit plaquette p in the (μ, ν) plane at block y, the alternating sum of the four line integrals at fixed x is the loop integral around the unit square S_x(μν) at x. By lattice Stokes (exact at U = 1), it equals the flux of F = ∂A through S_x. So
  (∂_1QA)(p) = ⨍_{x∈B(y)} ∫_{S_x} F_{μν}, |(∂_1QA)(p)|² ≤ ⨍_{x∈B(y)} ∫_{S_x}|F_{μν}|²  (Cauchy–Schwarz; |S_x| = 1, block volume 1).
Each fine point z lies in S_x for x in a set of (x, s)-measure ≤ 1 per plaquette, and z lies in the supports B(y) + S of at most 2² unit plaquettes of a given orientation. Summing over p: ‖∂_1QA‖² ≤ c_*‖∂A‖², c_* ≤ 4. Taking the minimum over A with QA = B: ⟨B, Δ_kB⟩ ≥ c_*^{−1}‖∂_1B‖². The constant is uniform in k (it is a continuum statement sampled on the η-lattice). [N check in §4.]
2.3 Monotonicity under extra constraints [P]. A minimum over a smaller set is larger. CMP 99's multiscale Q_𝔅 adds constraints (zero averages on finer regions, Dirichlet outside Λ). So every LOWER bound proved for the single-scale problem holds for the multiscale problem without change. The multiscale caveat of SOURCES_CDC_VERIFY §4 (e^{−δRM} correction) concerns only the UPPER bound.

## §3 Numerical check of c_* [N, /tmp/a3num/cstar.py, d = 2, one step, periodic, < 5 s on Mac]
Quantity: sup_A ‖∂_1Q(1)A‖²/‖∂A‖², Balaban's equal-weight corridor Q (weight L^{−(d+1)}), physical normalization (‖F‖² = η^{d−2}Σ curl² = Σ curl² in d = 2). Computed as ‖∂_1Q·pinv(∂)‖² (∂_1Q kills ker ∂: gradients map to gradients, constants to constants).
| L | blocks | c_* |
| 2 | 3×3 | 0.625 |
| 3 | 3×3 | 0.556 |
| 3 | 4×4 | 0.704 |
| 4 | 3×3 | 0.531 |
| 5 | 3×3 | 0.520 |
All ≤ 0.71, well inside the bound c_* ≤ 4 of §2.2. So ⟨B, Δ_kB⟩ ≥ c_*^{−1}‖∂_1B‖² with c_*^{−1} ≥ ¼ (proved) and ≈ 1.4 (observed, d = 2).
