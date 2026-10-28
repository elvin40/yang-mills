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

Status note (2026-10-28, during this pass): new files CanonOrder.lean (canon acyclicity), ElemBounds.lean (A10′ divergence sum, gℓ^q monotonicity, ORDER_CANON Lemma M2 monotonicity of k-map, ε^a-map, Schur sum), SchurMarginal.lean, NestEnvelope.lean now exist. Items below that they cover are marked "covered".

### 2b. SOURCES_T2_B7_CLAMP.md (row B7 = L5)

D″-nest / D′-nest envelopes (§4) are in progress elsewhere (NestEnvelope.lean). Not listed.

- H7. Route 1 in Lean: Lemma D′ and Lemma D″ with history-dependent β_{k+1}: ]0,γ]^{k+1} → ℝ, continuous on the cube, with (i) |β_{k+1}(h,g) − β_{k+1}(0)| ≤ C₁g on the cube; clamped flow ũ_{k+1} = ũ_k − β_{k+1}(φ(ũ₀),…,φ(ũ_k)) is continuous in u₀ and the shooting/IVT conclusions hold. §3.5. Generalize LemmaDPrime/LemmaDDoublePrime (`Fin (k+1) → ℝ` histories, `Continuous.comp`, `intermediate_value_Icc`). Medium. Closes the README gap "history-dependent β (L5) not formalized" for Route 1. Prose: Proposition B7-cube itself (N6, A15, SM, HHOL).
- H8. Lemma R1-b (A4) abstract: a recursion E^{(l+1)}(h_l) = F_l(g_l, V^{(1)}(h₀),…,V^{(l)}(h_{l−1})), V^{(l+1)} = −Π(E^{(l+1)})A + E^{(l+1)}, with the (A3) bound ‖F(g,I) − F(g′,I′)‖ ≤ (c/g)|g − g′| + ΘΣ‖V − V′‖ on a ball ⇒ h ↦ β_{k+1}(h) locally Lipschitz on ]0,γ]^{k+1}. §3.3 (A3)–(A4); the same induction gives (C-tr) of §5.2 on the curve u₀ ↦ h_k(u₀). Normed spaces, `LipschitzOnWith`, `ContinuousOn`, induction on k. Medium. Prose: (A1) = Theorem SM and (A2) = HHOL one-slot holomorphy.
- H9. (A1) mean-value step and (A2) Cauchy step: derivative bound on a convex set ⇒ Lipschitz (`Convex.norm_image_sub_le_of_norm_fderiv_le`); holomorphic on |g − x| < ρ₀x with sup ≤ cE₀ ⇒ ‖∂_gF‖ ≤ 2cE₀/(ρ₀x) on the half disc (`Complex.norm_deriv_le_of_forall_mem_sphere_norm_le`). §3.3. Easy. Optional: Path B (Osgood) is a cross-check only.

### 2c. SOURCES_A10_LOWER.md §3

The raw-term divergence sum and its unboundedness are covered (ElemBounds.`a10Sum_*`). Nothing further in §3.

## 3. Propagator chain, continued: 2D charged gap (SOURCES_T2_GAPRIME2.md §2–§3, used by §5)

Setting for all items: unitaries T₀, T₁ on a complex Hilbert space with T₀T₁ = qT₁T₀, |q − 1| ≤ |α|; ∇_μ = 1 − T_μ, h_μ = ∇_μ*∇_μ, 𝔏 = h₀ + h₁. The neutral-sector spectrum is in progress elsewhere; this charged sector is not.

- G1. Lemma 2.1 (words): for a word m in T_a^{±1}, ‖(m − 1)ψ‖ ≤ Σ_k‖∇_{a_k}ψ‖. §2. `ContinuousLinearMap` on a `InnerProductSpace ℂ`, unitary elements (`unitary`), `List` induction, normality ‖∇*ψ‖ = ‖∇ψ‖. Easy.
- G2. Lemmas 2.2–2.3 (regularity): N₂ ≤ 2‖𝔏ψ‖² + 2|α|N₁ + 2α²‖ψ‖²; N₃ ≤ 4⟨ψ,𝔏³ψ⟩ + 34α²N₁ + 2|α|N₂ + 16α⁴‖ψ‖². §2. Bounded operators, commutator norms from T₀T₁ = qT₁T₀, `inner_self`, Cauchy–Schwarz, `nlinarith` on the final quadratic. Medium (bookkeeping heavy, no new Mathlib).
- G3. Lemma 3.1 (ladder commutator): [Π,Π†] = 2|sin(α/2)|(V′ + V′*) exactly, and [Π,Π†] ≥ 2|α| − 3|α|𝔏 − |α|³ as forms for |α| ≤ 1. Lemma 3.2: ‖(J + |α|)ψ‖ ≤ (2N₃)^{1/2} + |α|(2N₁)^{1/2} + α²‖ψ‖. §3. Star-algebra identities (`noncomm_ring` in a C*-algebra), `Real.sin` bounds (`Real.sin_le`, `Real.sin_bound`). Medium.
- G4. Corollary 2.4 and Proposition 3.3 (scalar Landau gap): for |α| ≤ 1/16 and 26|α|^{1/2} + 157|α| < θ, spec 𝔏 ∩ [(1+θ)|α|, (3−θ)|α|] = ∅. §2–3. Needs spectral subspaces of a bounded self-adjoint operator: `cfc` (continuous functional calculus), `spectrum`, or a reformulation "no approximate eigenvector" via `IsSelfAdjoint` + Weyl criterion. Hard (Mathlib has CFC for C*-algebras; spectral projections of indicator functions are not continuous, so one needs a continuous bump in place of 1_{[a,b]} or the approximate-eigenvector form). Load-bearing: it is the core of (G_A), (G_A′) for every c < 1 (Theorem 5.1), which S123 Prop. 5.6 consumes. Prose: Lemma 1.1 (explicit A′ from the Wilson action via BCH) and the S123 consumer.
- G5. Theorem 5.1 / Cor. 5.2 assembly: A_c ≅ (𝔏 − 2|α|) ⊕ (𝔏 + 2|α|) by a constant unitary; ‖A_cψ‖ ≥ (1 − θ)|α|‖ψ‖; contradiction with ‖Rψ‖ ≤ 48|α|^{3/2}; A′D′ = D′𝔏 ⇒ ker D′† is invariant and spec(H′|ker D′†) ⊂ spec A′; α₀(c) = ((1−c)/100)² arithmetic. §5. Same tools as G4. Medium given G4 and Lemma 4.1–4.3 (§4, not in the reading list; same toolkit).

## 4. Fixed-level chain (one RG level j at constant flux f: S123, (M_j), KAPPA d_j)

Note: section 3 (GAPRIME2) feeds this chain through S123 Prop. 5.6; it is grouped there only because its tools are operator-theoretic.

### 4a. SOURCES_T2_MJ_REST.md (charged region 1 and the neutral sector (N2))

- F1. Lemma 2.1 (partial fractions): for s > 0, x > −s, 1/x − Σ_{k=1}^N c_k(x+ks)⁻¹ = N!s^N/Π_{k=0}^N(x+ks), c_k = (−1)^{k+1}C(N,k), Σc_k = 1; and ψ′ = N!s^N/Π(x+ks) ∈ (0, min(1/x, N!s^Nx^{−N−1})]. §2, §2.2 (ii). `field_simp`, `Finset.sum_range_choose`-type alternating sums (`Int.alternating_sum_range_choose`), induction on N. Easy.
- F2. Moyal remainder: |e^{iα} − Σ_{p<P}(iα)^p/p!| ≤ |α|^P/P!; and the 2-gon phase vanishes, (x−z)∧(z−x) = 0. §3.1, Step 4. `Complex.exp_bound`, `Real.exp_bound`. Easy.
- F3. Lemma 2.2 (iii)–(iv) integrals: (a) Stieltjes bound s^N∫_{(s,K*]}λ^{1−N}dN(λ) ≤ Cs^{3−N} from N(λ) ≤ C₅λ² (N = 4); (b) ∫_{BZ} l·min(1,(s/l)⁴)dK ≤ Cs³ in d = 4 with l ≍ |K|². §2. `MeasureTheory.integral_Ioc`, Stieltjes measures (`StieltjesFunction.measure`), integration by parts on ℝ, polar integrals (`integral_fun_norm_addHaar`). Medium–hard (Stieltjes by parts is thin in Mathlib; the BZ bound is medium). Load-bearing: it is why the remainder ψ is o(f²) with a > 2/3.
- F4. Exponent bookkeeping of Lemma A and Theorem 4.2: with a = 3/4, M = 14, N = 4, every error exponent (3 − a, M + 1 − a(M+3), 3a, p − a(p−3) for p ≥ 4) is ≥ 9/4 > 2; M > (1+3a)/(1−a). §3.3, §4. `norm_num`. Easy.
- F5. Neutral (N2) by bordered inverses: for 𝔅(f) = [[A(f), Q̃†],[Q̃, 0]] invertible, ∂𝔅⁻¹ = −𝔅⁻¹(∂𝔅)𝔅⁻¹, so ∂_fS = H†A′H; with ±A^{(q)} ≤ C_qA₀ and A(f) ≥ ½A₀, ±∂_f^pS ≤ C_p·S(0) (induction over levels). §5.1 (N2). `Matrix.fromBlocks`, `HasDerivAt.inverse`-type lemmas for matrix inverse (`hasFDerivAt_ring_inverse`), Loewner order, Cauchy–Schwarz for forms. Medium–hard (the general p-th derivative as a sum over compositions is the hard part; p ≤ 4 suffices for the f⁴ Taylor remainder). Load-bearing: it is the dominated-convergence input S123_VERIFY l. 30 asked for.
- F6. Lemma 5.1 core: if 𝔨 ≥ c·l·I and ±∂^q𝔨 ≤ C_q·l·I, then ‖𝔨^{−1/2}(∂^q𝔨)𝔨^{−1/2}‖ ≤ C_q/c, so every f-derivative of tr log 𝔨(f;K) is bounded uniformly in K ≠ 0; differentiation under ∫_{BZ}. §5.1 Lemma 5.1. `Matrix.PosDef` square roots (`Matrix.PosSemidef.sqrt` / CFC), `hasDerivAt_integral_of_dominated_loc_of_deriv_le`, derivative of `Matrix.det`/log det (`Matrix.det` derivative is not in Mathlib in usable form: hard part). Medium–hard. Prose: Fuglede–Kadison identity τ log X = ∫tr log x̂ (cited).
- F7. 5.2 IDS without atom: N(λ) ≤ 4|{K : c·l(K) ≤ λ}|/(2π)⁴ ≤ Cλ² in d = 4, hence no atom at 0. §5.2. `MeasureTheory.volume` of sublevel sets, `EuclideanSpace.volume_ball`. Medium.
- F8. (K1) symbol bounds |∂^αb̂_m| ≤ C(l+σ)^{−1−m−|α|/2} by degree counting through the Moyal-inverse recursion. §3.2. Multivariate calculus on 𝕋⁴ (`iteratedFDeriv`, Leibniz `norm_iteratedFDeriv_mul_le`). Hard (bookkeeping heavy, no conceptual gap). Prose: admissibility of the kernels k^{(j)}, v^{(n)} (S123 Prop. 2.1).

Not Mathlib-ready in MJ_REST: the per-cell trace τ on the twisted group algebra and its spectral calculus (von Neumann algebra trace; Mathlib has no traces on group von Neumann algebras); S123 Thms 3.3, 3.4, 4.3; Lemma 4.1 (gauge covariance of Balaban's averaging); twisted convolution algebras (magnetic translations) beyond the 2-generator abstract form of section 3.

## 5. History chain (part 2): what β_j is (row A15)

### 5a. SOURCES_A15_WHOLE.md (Proposition A15-N, counting)

- W1. Orbit unfolding: for f summable on ℤ⁴ and the fundamental domain F_N of NℤN⁴, Σ_{x∈F_N}Σ_{γ∈Nℤ⁴}f(x̂+γ) = Σ_{y∈ℤ⁴}f(y); and |x̂ + γ|_∞ ≥ N/2 for x̂ ∈ F_N, γ ≠ 0. §6.2 proof of (i), (ii). `Equiv` ℤ⁴ ≃ F_N × ℤ⁴ (`Int.emod`/`Int.ediv` per coordinate), `tsum_sigma'`, `Summable`. Medium.
- W2. Tail sums of (iii): with |Π^N(0,x) − ΣΠ^∞(0,x̂+γ)| ≤ Ce^{−mN} and |Π^∞(0,y)| ≤ Ce^{−m|y|}: the three moment errors are ≤ CN⁶e^{−mN}, CN⁶e^{−mN/2}, CN⁵e^{−mN/2}. §6.2 (iii). Finite sums over F_N (|F_N| = N⁴), `tsum` of e^{−m|y|}|y|² over |y| ≥ N/2 on ℤ⁴ (bound by a shell count Σ_{r≥R} c r³·r²e^{−mr}). Medium. Load-bearing: it is the coefficient-level bound |β_j^{(N)} − β_j| ≤ C_jN_j⁶e^{−m_jN_j/2}.
- W3. (iv) second difference: for an even analytic (or C⁴) function F on ℝ², the centred second difference at step p = 2π/N misses −∂₁∂₂F(0) by O(p²); sampling errors divided by p₁p₂ cost N². §6.2 (iv). `taylor_mean_remainder_lagrange`, `iteratedDeriv`. Easy–medium.
- W4. (Cnt) polymer counting Σ_{X∋b, d(X)≥n}e^{−κd(X)}|X|² ≤ C₀e^{−(κ−κ₀)n}, κ₀ = κ₀(d,L): number of connected trees of length n through b is ≤ e^{κ₀n}. §6.1. Lattice-animal / tree counting on ℤ^d. Hard (Mathlib has no lattice-animal bounds; a direct count of rooted trees by Prüfer/DFS code is medium–hard). Prose otherwise. Also used by Balaban everywhere ("standard tree counting").
- W5. Wrapping fact: a connected set whose 5-enlargement is not liftable has tree length ≥ N_j − c₅. §6.1. Same toolkit as L1 below. Medium.

### 5b. SOURCES_A15_LOC.md (Theorem LOC: Lemmas W, N, A, S; G)

- L1. Liftable boxes: if B ⊂ ℤ⁴ is an ℓ^∞ box of side < N/2, then π: ℤ⁴ → (ℤ/Nℤ)⁴ is injective on B and d_{T_N}(πx,πy) = |x − y|_∞ there; hence π|_B preserves cubes of sides dividing N, shared walls, and connectedness of cube families. §6.0. `ZMod N`, `Int.emod_emod_of_dvd`, torus distance as min over γ. Easy–medium. This is the one geometric fact behind all four lemmas.
- L2. Lemma W abstract form: given an injective, overlap-preserving lift on Y₀^♯, the walks whose domains all lie in Y₀ are in bijection with the lifted walks, with equal s-weights; if each factor kernel equals its lift (FI), the absolutely convergent walk sums agree pointwise. §6.2. `Equiv` on `List` of domains, `tsum` over an `Equiv` (`Equiv.tsum_eq`). Easy–medium given L1. Prose: (FI), the identification of Balaban's factors as intrinsic.
- L3. Lemma A abstract form: the Ursell function ρ^T(Z₁,…,Z_n) = Σ_{connected G}Π_{edges}(ζ − 1) is invariant under any bijection that preserves ζ; tuples covering X biject with tuples covering X̂. §7.3. `SimpleGraph.Connected` on `Fin n`, `Finset.sum_bij`. Easy (abstract); medium if ρ^T is the real Mayer coefficient.
- L4. Lemmas N and S abstract: a fixed-point equation that is the same on Y₀ in both volumes and has a unique solution there has the same solution; subtracting the same number (the ℤ^d coefficient β) keeps intrinsic families intrinsic. §7.1, §7.4. Trivial in Lean (`ExistsUnique` + rewriting). Low value. Prose: (U) uniqueness for Balaban's background equations (1.3)–(1.4) and the [16] determinant expansion (Det).

Remark. Theorem LOC is "transport of structure". Lean adds value only at L1 (the metric fact) and L2 (the bijection with absolute convergence). L3–L4 are bookkeeping once the objects are defined, and the objects (Balaban's activities) are not Mathlib-ready.

## 6. History chain (part 3): measure positivity and spectral constants (A8, A7)

### 6a. SOURCES_A8_POS.md (Lemmas S, D, P)

- M1. Lemma S core: for a real quadratic form its symmetric representative is symmetric; CᵀXC and compressions keep symmetry; real symmetric X with γ ≤ X ≤ Γ gives Γ⁻¹ ≤ X⁻¹ ≤ γ⁻¹. §3.1–3.2. `Matrix.IsHermitian`, `Matrix.PosDef.inv`, Loewner order. Easy. Low value except the inverse sandwich (also in H3).
- M2. Lemma D arithmetic: |Πσ(Δ) − 1| ≤ 2e^{κ₁m}; m ≤ 2·3^d(1 + D/ℓ) and ℓ ≥ 16·3^dκ₁/ε″ ⇒ |Πσ − 1| ≤ 2e^{2·3^dκ₁}e^{ε″D/8}; with D ≥ M/2 (corrected Step 1) the split gives the factor e^{−ε″M/8}; the (H_η) threshold M ≥ (8/ε″)[2·3^dκ₁ + log(128WΓ₁″²/γ_exp²)] implies η_M ≤ min{1/(2Γ₁″), γ_exp/(8Γ₁″²)}. §4.3–4.4, 5.1 + VERIFY correction. `Real.exp`, `Real.log`, `Finset.prod` bounds. Easy. Load-bearing: the /8 exponent was a verifier correction; a Lean statement fixes it.
- M3. (G3) tree cutting: a tree (connected finite graph in ℝ^d or ℤ^d) of total length D can be cut into ≤ 2(1 + D/ℓ) pieces of diameter ≤ ℓ, so it meets ≤ 2·3^d(1 + D/ℓ) cubes of side ℓ. §4.2 (G3). Graph/metric combinatorics. Hard (Mathlib has trees but not this metric decomposition). Prose acceptable ("standard").
- M4. Lemma P (a)–(b): A_c invertible, ‖A_c⁻¹‖ ≤ 2/γ_exp, ‖A_c‖ ≤ Γ₁″, ‖A_cD_σ‖ ≤ ½ ⇒ K_σ = (I + A_cD_σ)⁻¹A_c, ‖K_σ‖ ≤ 2Γ₁″, ‖K_σ − A_c‖ ≤ 2Γ₁″²η_M ≤ ¼γ_exp; H(K) := ½(Re K + (Re K)ᵀ) obeys ‖H(Y)‖ ≤ ‖Y‖ and ⟨B,H(K)B⟩ = Re⟨B,KB⟩ for real B; hence ¼γ_exp ≤ H_σ ≤ 2Γ₁″. §5.2–5.3. Resolvent.`neumann_perturb`, CombesThomas.`coercive_inv`, entrywise conjugation and transpose as isometries of the ℓ² operator norm (`Matrix.l2_opNorm_conjTranspose`). Easy–medium. Load-bearing: these are c_−, Λ inputs of (Q).
- M5. Lemma P (d)–(e) and 5.4, 6.3–6.4 determinant and symmetric-part facts: |det(I + F)| ≤ Π(1 + s_j(F)) ≤ exp(n‖F‖); for real symmetric S, |det(I + iS)| = Π(1 + λ_j²)^{1/2} ≤ exp(½n‖S‖²); for real antisymmetric M₀, det(I + M₀) ∈ [1, exp(½n‖M₀‖²)] and sym((I + M₀)⁻¹) = (I − M₀²)⁻¹ ≤ I with ‖I − sym((I+M₀)⁻¹)‖ ≤ ‖M₀‖²; ‖N₀‖ ≤ ‖K₀ − A‖ for the antisymmetric part when A is symmetric. §5.3–5.4, 6.3–6.4. `Matrix.det` via eigenvalues (`Matrix.IsHermitian.det_eq_prod_eigenvalues`), singular values (not in Mathlib: use ‖F‖ and `Matrix.det_le`-type Hadamard bounds or work with I + F = exp(log) for small F), skew-symmetric spectra. Medium (Hermitian and skew parts), hard for the general singular-value product bound. Load-bearing: the (2.17)-type factor exp(O(η_M²)|Z₀|) and the sign of the extra (2.24) term (≥ 0, a cost).
- M6. Lemma P (c) Gaussian modulus: for complex K with real symmetric part H ≥ c > 0 on ℝ^n, |e^{−½⟨B,KB⟩}| = e^{−½⟨B,HB⟩} and ∫_{ℝ^n}e^{−½⟨B,HB⟩}dB = (2π)^{n/2}(det H)^{−1/2}. §5.2 (c). `Complex.abs_exp`, multivariate Gaussian integral (`integral_gaussian` 1D; n-dim via diagonalization and `MeasureTheory.integral_fintype_prod_eq_prod` / `MeasurePreserving` of orthogonal maps). Medium–hard (n-dim change of variables). Partly overlaps the in-progress Schur-marginal file; check SchurMarginal.lean before starting.

### 6b. SOURCES_A7_CDC.md (Lemma N, norm bound of C*Δ_kC)

- N1. Lemma N assembly (two-sided, corrected form): N̂₁ ≥ c_{−,1} ⇒ N̂₁⁻¹ ≤ K_{ext,1}; |⟨B,Δ_JB⟩| ≤ c_J‖B‖²; ‖𝒢B‖² ≤ 2c_𝒢‖B‖²; ‖CB̃‖² ≤ c_C‖B̃‖²; the identity (1.1) as hypothesis ⇒ |⟨B̃,A_expB̃⟩| ≤ c_C·max{K_{ext,1} − a + c_J + 2c_𝒢, a + c_J}‖B̃‖²; for symmetric A this is the operator norm; compression keeps it. §2.2–2.3 + VERIFY. Loewner order, operator monotonicity of inversion (as H3), `ContinuousLinearMap.opNorm` of self-adjoint = sup of |⟨x,Ax⟩| (`IsSelfAdjoint.norm_eq_iSup_inner`-type; Mathlib has `ContinuousLinearMap.IsSelfAdjoint` norm via Rayleigh quotients). Easy–medium. Load-bearing: γ₁^N gives c_− of (Q) (H3).
- N2. c_C by Cauchy–Schwarz: if Σ_{b∈B(c)}w_bT_bB(b) = 0 with T_b orthogonal, w_b > 0, then |B(b₀)|² ≤ w_{b₀}⁻²(Σ_{b≠b₀}w_b²)Σ_{b≠b₀}|B(b)|², so c_C ≤ 1 + max w_{b₀}⁻²Σw_b² (≤ n_c for equal weights). §2.1 (c_C). `inner_mul_le_norm_mul_norm`, `Finset.inner_mul_le_norm_mul_norm`. Easy.
- N3. Size check 2.5: at d = 4, L = 3, 2c_𝒢 = d(L−1)L^d = 648 and n_c = L^{d+1} = 243. `norm_num`. Easy, low value.

## 7. Constants / canon

Canon acyclicity: covered (CanonOrder.lean). Monotonicity of the k-map, ε^a-map, Schur sum, e^{2Lδ}: covered (ElemBounds.lean, Lemma M2). gℓ^q monotonicity: covered.

### 7a. SOURCES_ORDER_CANON.md Part B (numeric and existence facts inside lines)

- K1. B25 two-sided p₁ exists: if p₀ > (d+5)r + ν_I + 4, the interval ((p₀ + (d+5)r)/2, p₀ − 1 − ν_I/2] has length > 1 and contains an integer. `Int.floor`, `Int.lt_floor_add_one`. Easy. The only two-sided constant in the canon.
- K2. Numeric lines: B5 (K1′) δ = 0.025 ≤ (1/13)(1 − 4(1 + 4β)/L) at L = 13, β = ¼ (value 5/169); B7 κ ≥ (1 + 4β)·6·2^d/(βθ_K) = 1536 at d = 4, β = ¼, θ_K = ½; B4/S10 2(1 + β₀)L⁻² + 0.4 < 1 for β₀ ≤ ½, L ≥ 13; B22a nonemptiness 2B₃ε₀^{109} ≤ B₃a₁^{102} ≤ a₀^{102}. `norm_num`. Easy. Low risk, but these are the numbers the canon cites.
- K3. Existence of a full assignment: given the transcribed edges (CanonOrder), each line an up-set or a down-set in earlier lines (plus the one two-sided p₁ of K1), there is an assignment of all 43 lines satisfying every condition. Abstract induction along the rank order (`WellFounded.fix`). Easy–medium given CanonOrder.lean. Adds the step "acyclic ⇒ satisfiable", which acyclicity alone does not state.

### 7b. SOURCES_A11_CONST.md (class-(b) inequalities and side conditions)

- K4. (2.6) from the flow: u_m ≤ u_n + β′(n−m) ⇒ g_n ≤ (1 + g_n²β′(n−m))^{1/2}g_m ≤ (1 + β₀)(n−m)^{1/2}g_m under (T1) γ²β′ ≤ (1+β₀)² − 1; g_m ≤ (1+β₀)g_n from u_n ≤ u_m. §1. `Real.sqrt`, `Real.rpow`. Easy. Connects to LemmaDDoublePrime conclusion (c′).
- K5. (2.7)–(2.9) with side conditions (T2)–(T4): (log g_n⁻²)^p ≤ (1+β₀)(log g_m⁻²)^p if log γ⁻² ≥ 2p; (log g_m⁻²)^p ≤ (1+X)^{β₀}(log g_n⁻²)^p if log γ⁻² ≥ p/β₀; (1+b)^{2b} ≤ 1+b for b ≤ ½; then (2.8) for ε_j = g_jA₀(log g_j⁻²)^{p₀} and (2.9) for R_j = least L^r with L^r ≥ ... (rounding factor L). §1. `Real.log`, `Real.rpow`, `Real.add_pow_le_pow_mul_pow_of_sq_le_sq`-type, `one_add_mul_le_pow`, `Real.exp`/log monotonicity. Easy–medium. Load-bearing: every later "similar inequality" is derived from these four.
- K6. Class-(b) corollaries: α_{i,j} = g_jC_i(log g_j⁻²)^{q_i} obeys (2.8) with p = q_i; g_j^{κ₀} ratio with factor (1+β₀)^{κ₀}; g_j(x) as convex combination 1/g_j²(x) = (1−φ)u_j + φu_{j−1}; δ_k = (A₁/A₀)ε_k; R_k ≤ LR_{k+1} and monotonicity of L^{−(k−j)}R_j; e^{−R_k} ≤ g_k^N for r > 1 and g small. §2–§5 (#4, #5, #6, #20, #26, #29, #31). Same toolkit as K5. Easy each.
- K7. (2.46) sweep sum: u_j ≥ u_n/2 + β(n−j) for j ≤ n ⇒ Σ_{j≤n}u_j^{−κ₀/2} ≤ (u_n/2)^{−κ₀/2} + (u_n/2)^{1−κ₀/2}/(β(κ₀/2 − 1)) ≤ C(β,κ₀)g_n^{κ₀−2} < g_n^{κ₀−6} once Cg_n⁴ < 1. §4 #16. `AntitoneOn.sum_le_integral`, `integral_rpow`. Easy–medium. Load-bearing: it is the precise form of "the sum over j is controlled by g_j^{κ₀}".
- K8. Side conditions S1–S11 cycle check: covered by CanonOrder (the S-lines are in Part B). Not listed again.

