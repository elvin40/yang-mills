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

### 1b. WG_FULL.md (Theorems WG-G, WG-G1)

- P16. Lemma N (finite-volume Neumann): (G₀⁻¹ − V)S_N = I − (VG₀)^{N+1}; entrywise convergence of Σ G₀(VG₀)^n ⇒ G₀⁻¹ − V invertible with inverse S. Also the push-through (I − XY)⁻¹X = X(I − YX)⁻¹. §1.1–1.2, reused for G₁ in §5.1. `Matrix`, `Finset.sum_range_succ`, `Filter.Tendsto` (`tendsto_sum_nat_add`, term → 0 of a convergent series), `Matrix.mul_eq_one_comm`. Easy–medium. Load-bearing: it is how G = Σ_λT_λ and G₁ = Σ_τT_τ are identified. Prose: none.
- P17. Rearrangement 1.4: an absolutely summable family indexed by (label, junction points) can be summed in any order. §1.4. `HasSum.sigma`, `Summable.sigma`, `tsum_prod'`. Easy as an abstract lemma; adds little (Mathlib already has it). Optional.
- P18. Algebra of V and Δ_π^{(2)}: from R = R* = R², G′ = G′*, P = G′Q′*C′Q′G′: the four chain expansions Λ, Λ_D, Λ*, Λ_D* (2.3); V = −½Σ_k(X_k*ι_kY_k + Y_k*ι_k*X_k) from the bilinear forms (2.2); Π* = I − DRG′D*, the four-term expansion of Δ_π^{(2)} = (3.135), and G₁⁻¹ = G⁻¹ − Δ_π^{(2)} (5.1). §2.2–2.3, §5.1. `Matrix.conjTranspose`, star rings, `noncomm_ring`. Easy. Check value: SOURCES_WG had dropped a G′ factor (corrected to four non-local factors); a Lean statement fixes the count. Prose: identification of (3.120) with Balaban's form.
- P19. Pattern counts: 6 patterns × 4 I/P choices = 24; N_V = 4 + 1 + 4 = 9; tags 1 + 4·24 = 97; 9 chain patterns for Δ_π^{(2)}; k_T = 12 steps without a small factor. §2.6, 4.4, 5.6–5.7. `Fintype.card`, `decide`. Easy. Only the arithmetic; the decoder (label recovered from tagged sequence) is P20.
- P20. Tagged-sequence decoding and branching bound: an injective encoding of labels into tagged factor sequences, with ≤ C′ choices per step given the previous domain ⇒ #labels of size s ≤ C_𝒟(C′)^s; depth-first variant for trees (5.8). §4.4, 5.8. `Function.Injective`, `Fintype.card_le_of_injective`, `List` induction. Medium (walks) / hard (depth-first trees). Prose: the per-step count C_𝒟 (cube geometry [I]).
- P21. Weight arithmetic: W_i ≤ ε_V ≤ (ε_V^{1/10})^{n_i+1} for n_i + 1 ≤ 10 and ε_V ≤ 1; same with 1/12 for G₁; ρ_* = max{ρ, ε_V^{1/10}} gives (4.3.1); WG-1 equivalence ε_V^{1/10} ≤ c₀/M₁ ⟺ α₀ ≤ c′M⁻¹M₁⁻¹⁰ with c′ = c₀^{10}/K_V; thresholds M_*, a_*, a_*′, a_** give C″ρ_** ≤ ¼. §4.3, 4.5, 4.7, 5.7, 5.9. `Real.rpow` monotonicity, `pow_le_pow_of_le_one`. Easy. Load-bearing: the exponent 10/12 count was wrong twice in earlier sources (M⁻³, M⁻⁸).
- P22. Lemma C (concatenation) = P9, with (d) derivative variant. Same item. Step 2 (subadditivity of path length at junction points) and Step 4 (θ-split) are the content; Step 5 needs c₁ as hypothesis.
- P23. Tree distance (5.7): d(τ,y,y′) := inf over finite connected graphs through y, y′ and one point per domain of Σ edge lengths; d(τ) ≥ d(y,y′); union of path graphs gives (length P_main) + Σ(length P_β) ≥ d(τ) − c_b·n. §5.7, A1 §6.9a. `SimpleGraph.Connected`, `SimpleGraph.Walk`, `Finset.inf'` over graphs on a finite vertex set. Hard (Mathlib graph API on a finite metric space; Steiner-tree inf). Prose: none, but cost is high; a walk-of-points surrogate may suffice (the proofs only use a path through the union graph).
- P24. Branch bound arithmetic (5.5): S-power cancellation S^{−1/2}·S^{1/2}, end-power transfer (s(b)/s(b′))^p ≤ L^{|p|}e^{|p|θ_S d(b,b′)} from |log s(b) − log s(b′)| ≤ log L + θ_S d; θ_S ≤ ¼θδ₁ ⇒ rate ≥ ½θδ₁. §5.5 C0. `Real.exp`, `Real.rpow`, `Real.log`. Easy. Prose: the scale-change bound |log s(b) − log s(b′)| on the multiscale lattice (geometry of 𝔅, [I]).

Not Mathlib-ready in WG: (I1)–(I3) Balaban's walk expansions of G₀, G′, C′ (printed sketches); (I5) the J bound from (3.36); (I7) Q-locality and merging; C^{(2)}-locality; CMP 96 Lemma 2.1; the multiscale block lattice and its norms (3.42)–(3.47).

### 1c. WC_FULL.md (Theorem WC: exponential-gauge covariance C^{(k)}(Z₀))

- P25. Lemma E with the exact step (d): S_y ≤ K_b(P_y + G_y), K_b := 8dL^d(1 + 16dc_𝒢) ≤ 64d³L^{2d+1}, under (H_E) 16d³L^dc_𝒢τ_p² ≤ 1 and c_𝒢 ≥ 1. §2.1–2.8. Re-instance BlockInequalityE.lean with τ_G = 0 and the new constant; add `Kb_le` for 64d³L^{2d+1}. Easy. Note: the existing file proves the SOURCES_WC_EXPGAUGE version (constant 136d³L^{2d+1}, τ_G); WC_FULL now cites the sharper one.
- P26. Lemma E step (a), tree gauge: on a finite rooted tree with an orthogonal map per edge, there is a unique λ with λ(root) = 0 and (B + D^Vλ)(b) = 0 on every tree edge. §2.2. `SimpleGraph.IsTree` or a parent function with well-founded depth; `LinearIsometryEquiv`. Medium. Prose: that the axial staircase tree is a spanning tree of B(y) (P29).
- P27. Lemma E steps (c) algebra and (e) count: with ∂^V and D^V written as explicit sums of Ad-transported terms, (∂^VD^Vλ)(p) = (1 − Ad(V(∂p)))λ(p₀) (telescoping, exact); ‖Π_{i≤4}O_i − 1‖ ≤ Σ‖O_i − 1‖ for orthogonal O_i; Σ_b|(D^Vλ)(b)|² ≤ 4dΛ_y when each site has ≤ 2d bonds. §2.4, 2.6. Group representation on `EuclideanSpace`, `Finset.sum_comm`, degree double counting. Medium. Prose: that the explicit sum is the first-order holonomy (0.4) — a Lie-group derivative statement.
- P28. ‖Ad(e^{iY}) − 1‖ ≤ e^{2√N|Y|} − 1 ≤ 4√N|Y| for 2√N|Y| ≤ 1, with tr 1 = 1 normalization. §2.4 (fact (E) of A3). `NormedSpace.exp`, `Matrix.exp`, `norm_exp_sub_one_le`-type lemmas, `‖ad_Y‖ ≤ 2‖Y‖`. Medium. Also used in §6.4 (‖Ad e^{iA′}‖ ≤ e^{2|A′|}).
- P29. Contour combinatorics: staircase contours from y to x ∈ B(y) correspond to orders of the moving coordinates, so |G(y,x)| ≤ d!; each has length Σ|n_μ| ≤ d(L−1)/2, uses each bond once, and stays in B(y); the axial tree is a spanning tree with L^d − 1 edges. §1.1, 2.2. `List.Perm`, `Nat.factorial`, `Fin d → ℤ` boxes. Medium.
- P30. Lemma G (b) algebra: Σ_Γψ_Γ = n(1 + E), ‖E‖ ≤ ā ≤ ½ ⇒ ‖ω_Γ − n⁻¹‖ ≤ 2ā/(n(1 − ā)) ≤ 4ā/n; and |φ(iθ) − 1| ≤ 0.6|θ| for |θ| ≤ 1, φ(x) = x/(eˣ − 1). §1.6. Banach-algebra Neumann (`NormedRing.inverse_one_sub`), `Complex.exp` bounds. Easy (algebra) + medium (φ bound). Prose: the BCH first-order formula that defines ψ_Γ, and the Karcher-mean bound |M̄ − 1| ≤ (π/2)r (NMR: Riemannian centre of mass is not in Mathlib).
- P31. Lemma G (c) Cauchy–Schwarz chain: Σ_Γ‖ω_Γ‖ ≤ κ, |B_Γ|² ≤ ℓ_ΓΣ_{b∈Γ}|B(b)|² ⇒ G_y ≤ κ²c_𝒢S_y, κ² ≤ 2 if w ≤ 0.054/√N. §1.6 (c). `inner_mul_le_norm_mul_norm`, `Finset.sum_mul_sq_le_sq_mul_sq`. Easy.
- P32. Normalization |U − 1|² = 2(1 − Re tr U) for unitary U with tr 1 = 1. §1.3. `Matrix.unitaryGroup`, `Matrix.trace`. Easy.
- P33. Concrete witnesses: (i) 1.8, at U = 1, d = 2, L = 3, 𝒢 ≠ 0 on the axial slice (value ½e); (ii) 2.9(iv), D^Vλ = 0 on a connected block with λ(y) = 0 forces λ = 0. §1.8, 2.9. `decide`/`norm_num` on ℚ-valued plain averages; `SimpleGraph.Connected` induction. Easy / medium. These certify that Lemma E needs 𝒢 and that no transfer from the axial gauge applies.
- P34. Lemma P_exp and Theorem L assembly: from S_b ≤ K_b(P + G), S_c ≤ (3/m_L)(2P + 2dS_b) + η₆‖B‖², ‖B‖² = S_b + S_c ⇒ P + G ≥ γ_e(1 − η₆)‖B‖²; under (3.1), (8/9)(3/4)(½)γ_e − γ_e/12 = γ_e/4 = γ_exp; compression keeps a form bound; ‖CB̃‖ ≥ ‖B̃‖. §3.1–3.3. Linear arithmetic, `nlinarith`. Easy. Load-bearing: this is the real lower bound γ_exp of Theorem WC (i). Prose: inputs (A3-4.2)–(A3-4.4), (A3-6.1), (A3-R4).
- P35. Resolvent integral: π⁻¹∫₀^∞ x^{−1/2}(γ + x)⁻¹dx = γ^{−1/2}; x·I adds x to the real part and commutes with every e^{εf}. §5.5. `MeasureTheory.integral` on `Ioi 0`, substitution x = γt², `integral_one_div_one_add_sq` (arctan). Medium. Prose: Tonelli per walk is routine given P5.
- P36. Complex 𝒢 weights: the power series of φ(z) − 1 = Σ B_k z^k/k! − 1 has absolute coefficient sum ≤ 0.6|z| on |z| ≤ 1. §6.5. `bernoulli`, `Polynomial`/power series bounds. Medium–hard (needs |B_k| bounds; a finite computation plus a tail bound). Prose: the implicit-function continuation of the mean (analytic IFT exists in Mathlib only partially).
- P37. Grid geometry 5.4 (a)–(d) = P12. Chain constants 6.8 = P14. Lemma CP = done.

Not Mathlib-ready in WC: the group mean M (Federbush/Karcher), Lie-group first-order expansions of holonomies (they need matrix-Lie-group derivative identities; feasible in principle via `Matrix.exp` derivatives but hard), (A3-4.2)–(A3-6.1) inputs, CMP 109 term match (1.1), Q̃ and C of CMP 109.

## 2. History chain (part 1)

### 2a. SOURCES_G3_N2.md (Lemma G3, (Q) assembled from A7 + A8)

The Schur-complement Gaussian marginal (2.4) and the one-bond corollary are in progress elsewhere. Not listed.

- H1. Reference split: Q₀′ = T*diag(I, H₀)T with T = [[I,0],[H₀⁻¹Γ, I]], and Q = Q₀′ − P with P = diag(α₅Z + Γ*D_SΓ, α₅I) ≥ 0, ‖P‖ ≤ α₅ + G_Γ²δ_S. §3.2. `Matrix.fromBlocks`, `fromBlocks_multiply`, `conjTranspose`. Easy. Check value: the B-block of Q₀′⁻¹ is H₀⁻¹ + H₀⁻¹ΓΓ*H₀⁻¹ (the corrected form; SOURCES_Q 4.3 had it wrong).
- H2. Upper bound Λ: for a positive 2×2 block matrix, ‖M‖ ≤ ‖M₁₁‖ + ‖M₂₂‖; hence ‖Q₀′⁻¹‖ ≤ Λ₀ = 1 + h + h²G_Γ²; (Hα) pΛ₀ ≤ ½ ⇒ Q ≥ (2Λ₀)⁻¹ and Γ_bb ≤ ‖Q⁻¹‖ ≤ 2Λ₀. §3.3. `Matrix.PosSemidef`, Loewner order on Hermitian matrices, Weyl/Rayleigh (CertBridge.`rq_weyl`). Medium. Load-bearing: Λ enters U(g) and S_χ.
- H3. Lower bound c_−: Q > 0 ⇒ (Q⁻¹)_BB = Σ_B⁻¹ with Σ_B ≤ H₀ ⇒ (Q⁻¹)_BB ≥ H₀⁻¹ ≥ ‖H₀‖⁻¹I; compression to a bond keeps it; ‖sym K₀‖ ≤ sup|⟨B, A_ZB⟩| + ‖K₀ − A_Z‖ ⇒ c_− ≥ (γ₁^N + ε₀)⁻¹ ≥ 4/(5γ₁^N). §3.4. Block inverse (`Matrix.fromBlocks` inverse via Schur), operator monotonicity of inversion (`CFC`-order lemmas in `Mathlib.Analysis.CStarAlgebra`, or a direct finite-dim proof via congruence). Medium. Load-bearing: c_− is "(Q) with c_−", the open input of B13 / HHIST2 R3. The numpy check (2000 instances) becomes a theorem.
- H4. One-bond calculus: max_{t>0} t^{n+1}e^{−t²/(4Λ)} = (2Λ(n+1))^{(n+1)/2}e^{−(n+1)/2} = D_n; U(g) = A_nD_nε₁⁻¹e^{−ε₁²/(4Λg²)} is increasing on (0, γ]; S_χ ≤ C_pγ^p for every p > 0. §4.1, 4.3. `Real.rpow`, derivative sign test (`StrictMonoOn` from `deriv`), `Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero`. Easy–medium.
- H5. Bond-count and (Hγ) inequalities: n_b ≤ η⁻¹e^{ηn_b}; (1/20)x − 4M⁴e^{−x/20} ≥ 0 for x ≥ x₀(M) (explicit x₀). §4.2 + VERIFY correction. `Real.add_one_le_exp`, `Real.exp_le_exp`. Easy.
- H6. Sphere surface bound (2.2): for a Gaussian density p_b with c_− ≤ Γ_bb ≤ Λ, ∫_{|x|=r} p_b ≤ |S^{n−1}|r^{n−1}(2πc_−)^{−n/2}e^{−r²/(2Λ)}, with |S^{n−1}| = 2π^{n/2}/Γ(n/2). §2.5. `MeasureTheory.integral_fun_norm_addHaar`, `EuclideanSpace.volume_ball`, `Real.Gamma`. Hard (Mathlib has no surface measure on spheres as such; one would restate via the radial derivative of a ball integral). Prose: that ∂_g of the sharp cut is this surface integral (Leibniz/coarea for an indicator) stays prose unless done by the radial formula.

Not Mathlib-ready in G3_N2: Balaban's pointwise chain (2.15)–(2.25); the Kotecký–Preiss derivative step (N3); A7/A8 inputs; G_Γ via the s-rule; the large-field level-set Jacobian (open even in prose).

