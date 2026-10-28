# LEAN_CATALOGUE — Mathlib-formalizable statements in the ledger

Date 2026-10-28. Planning document only. No Lean written here.
Scope: statements that are (a) finite-dimensional, algebraic, combinatorial, or real-analytic in a way Mathlib supports, and (b) cited in the ledger.
Excluded as in progress elsewhere: D″-nest/D′-nest envelopes; Schur-complement Gaussian marginal + one-bond corollary; A10′ raw-term divergence sum + gℓ^q monotonicity; 2D neutral-sector spectrum; canon acyclicity.
Feasibility scale: easy (< 1 agent-hour), medium, hard, NMR (not Mathlib-ready).

## 0. Already in Lean (31 files, lean/README.md) — not re-listed

Propagator side: CombesThomas, KernelRow, Schur, BlockSchur, Resolvent, WeightedNorm (Lemma N core), GaugeMin (Lemma 5), SlabCounterexample, WalkAffine, Interp, BlockInequalityE (Lemma E), CauchyPerturbation (Lemma CP).
Flow side: LemmaDPrime, LemmaDE, LemmaDDoublePrime, LemmaH, Gronwall, TheoremK (arithmetic), TheoremC1, StripBound.
Determinants: DetIdentities, Telescoping, AbelianCount.
Certificates: CertBridge, BlockNorm, OishiRump, Tower (Lemma T (a)–(c)), Envelope, Divergence, CubeCount (Lemma [P] core).
Gaps the README records as "not formalized" and that recur below: history-dependent β (L5); Lemma H Steps 2–3; Lemma N (N2)–(N4); μ-weights of A1 §7 and Σ(δ/2) on the block lattice; Lemma T (d), Lemma S, Lemma Gauge, F_CS; Jacobi complementary-minor coarea identity; dim ker Q count; CubeCount Facts A–C.

## 1. Propagator chain

### 1a. A1_WALK_FULL.md (Theorem A1-W, §7 compression, §8 complex chain)

Format: ID. Statement. Source. Mathlib. Feasibility. Remains prose.

- P1. Conjugation norm ‖A‖_κ := sup_{f 1-Lipschitz} ‖e^{κf}Ae^{−κf}‖ on a finite metric space: (N0) ‖A‖ ≤ ‖A‖_κ and monotone in κ; (N1) submultiplicative; (N2) |a(y,y′)| ≤ ‖A‖_κ m(y,y′)e^{−κd(y,y′)}; (N4) ‖Σ_□ h_□B_□h_□‖_κ ≤ sup‖B_□‖ when Σh_□² = 1. §1.5. Matrix op norm (`Matrix.l2OpNorm` / `EuclideanSpace` CLM), `LipschitzWith`, `iSup`, Cauchy–Schwarz on `Finset.sum`. Medium. Prose: none for the four facts. Note CombesThomas.`norm_entry_le` is (N2) at μ ≡ 1.
- P2. (N3) with μ-weights: |a| ≤ c·m·(1+d)e^{−κ′d}, κ′ > κ ⇒ ‖A‖_κ ≤ cΣ(κ′−κ), via the unitary V u = μ^{1/2}u. §1.5 (N3), §0.1. Schur.`schur_test` + diagonal unitary conjugation. Medium. Closes README gap "μ-weights m(y,y′)" (VERIFY_CombesThomas item 1). Prose: Σ < ∞ uniformly (CMP 96 Lemma 2.1).
- P3. Lemma CT in conjugation-norm form: (i) kernel bound b·m·e^{−δd}, (ii) Re⟨u,Au⟩ ≥ c‖u‖², ε ≤ min{δ/2, c/(2bΣ(δ/2))} ⇒ A invertible, ‖A⁻¹‖_ε ≤ 2/c. §3.1–3.2. Glue of `coercive_inv`, `combes_thomas`, KernelRow, P2. Medium. Closes VERIFY_CombesThomas item 2 for general finite metric spaces (KernelRow has only Fin n with ℤ-distance). Prose: none.
- P4. (1+x)e^{−δx} ≤ (1 + 2/(eδ))e^{−δx/2} for x ≥ 0, δ > 0. §0.1. `Real.add_one_le_exp`, calculus of x e^{−ax}. Easy. KernelRow.`xexp_le` may already cover it.
- P5. Lemma 1.1 / Cor. 1.2 abstract: a family indexed by length n with ≤ C^{n+1} members of length n, each term ≤ Bρ^n·w, Cρ ≤ ½ ⇒ sum ≤ 2CB·w; subfamilies too. §1.3. `tsum_geometric`, `Summable.of_nonneg_of_le`. Easy. Prose: (B2) count itself (cube geometry [I]).
- P6. Lemma LT arithmetic: (c) d(ω) > 4M₁ and d(ω) ≥ d ⇒ δd(ω) ≥ 4λδM₁ + (1−λ)δd; (e) c_− − 2c_+Σe^{−2δM₁} ≥ c_−/2 iff M₁ ≥ M_a. §2.3. `Real.exp_le_exp`, `Real.log`. Easy. Prose: (a), (b) are walk-family bookkeeping on Balaban's G.
- P7. Parametrix identity: in a matrix ring, idempotent diagonals 1_□, h_□ = 1_□h_□ = h_□1_□, N̂_□C_□ = 1_□, Σ_□h_□² = 1 ⇒ N̂P = I + Σ_□F_□ with the three error terms (sep, tr, com). §4.1. `Matrix` ring, `Finset.sum_mul`, `noncomm_ring`. Easy–medium. Load-bearing: it is the identity behind N̂⁻¹ = P(I+F)⁻¹. Prose: none.
- P8. Neumann step 5.2: ‖F‖_{ε/2} ≤ ½ ⇒ (I+F)⁻¹ = Σ(−F)^n, norm ≤ 2; right inverse ⇒ two-sided; N̂⁻¹ = P(I+F)⁻¹ and ‖N̂⁻¹‖ ≤ 8/c_−. §5.2. Resolvent.`neumann_perturb`, WeightedNorm.`mnorm_neumann`, `Matrix.mul_eq_one_comm`. Easy given P1.
- P9. Concatenation lemma (c): |(Φ₁⋯Φ_N)(y,y′)| ≤ Πβ_k · c₁(θδ)^{N−1} m e^{−(1−θ)δ d(ω,y,y′)}, using μ(z)m(x,z)m(z,x′) = m(x,x′) and the split of the exponent. §5.4 (SOURCES_WG §2.3). Finite metric space, `Finset.sum`, path length as `iInf` over point choices (`Finset.inf'`). Medium–hard (the path-length inf and its subadditivity). Load-bearing for A1-W, WG, WC. Prose: c₁ < ∞ (CMP 96 Lemma 2.1) as hypothesis.
- P10. Path-length facts: (D1) d(ω,y,y′) ≥ d(y,y′); (D2) ≥ d(y,X_i) + d(X_i,y′); (D2-T) tree form ≥ max; run-merging d(ω) ≥ d(ω̄). §0.2, §6.9a, §7.5. Pseudo-metric + `Finset.inf'`. Easy–medium; best done with P9.
- P11. Term bound and counts: β products ≤ ρ^{|ω|}, c₁^{N−1} ≤ c₁^{|ω|} (c₁ ≥ 1); Σ_n C_𝒟(C_Wc₁ρ)^n ≤ 2C_𝒟; merged slots Σ_{r≥1}(Cx)^r ≤ 2Cx. §5.5, 5.6, 7.5. Arithmetic + geometric series. Easy. Prose: the label-sequence encoding (5 choices per step) is combinatorial but tied to Balaban's domains; formalizable only on an abstract labelled-walk model (medium).
- P12. Cube-grid geometry of §7.4: (a) Z̃₀ ⊇ {d_∞(x,Z₀) ≤ M}; (b) q > 10 ⇒ X̃₀^5 = Z̃₀; (c) q ≥ 3(7 + c_X) ⇒ far domains at d_∞ > ⅔M. §7.4. ℤ^d index arithmetic, `Fin d → ℤ`, sup norm, `Int.ediv`. Medium. Prose: lattice-unit margins (absorbed by M₁).
- P13. Tent partition of unity on aℤ^d: Σφ_□² ≥ 1 on Z₀, overlap ≤ 2^d, Lipschitz c_h ≤ 2√d(1+2^{d+1}) for h = φ/(Σφ²)^{1/2}. §7.3 + A1_WALK_FULL_VERIFY regrade. ℝ^d piecewise-linear functions, `LipschitzWith` composition, `Real.sqrt`. Medium–hard. Prose: O2 (multiscale Lipschitz across scale boundaries, §2.1) stays [I].
- P14. Lemma AW / §8.4 constant arithmetic: min{x, y/2} ≥ ½min{x,y}; t(α‴,b⁗) ≥ 1 + 4Γ₄/c_− from α₁‴ ≤ k₃a₁ with k₃ = c_Pc_−/(c_− + 4Γ₄); same for k₂, k₁. §8.3–8.4. `min`/`div` lemmas. Easy.
- P15. Lemma AW (d): uniform limit of analytic matrix-valued families is analytic; inverse of an analytic invertible matrix is analytic. §8.3 (d). `DifferentiableOn` on ℂ^n, `TendstoLocallyUniformlyOn.differentiableOn`, `Matrix.inv` via adjugate. Medium. Prose: the parameter domain 𝒰(a) is a set of gauge fields (finite-dim product of SU(2)^c after fixing volume); stating it needs a lattice-gauge object (NMR as stated; fine on an abstract open set in ℂ^n).
- Lemma CP (§8.2): already Lean (CauchyPerturbation.lean). Not listed.

Not Mathlib-ready in A1-W: (H1) walk expansion of Balaban's G; (H2) c_− bound; Q, S, the multiscale block lattice 𝔅; CMP 96 Lemma 2.1 (c₁ uniform); regular backgrounds (3.35)–(3.36); CMP 99 Thm 3.4 complex continuation.

