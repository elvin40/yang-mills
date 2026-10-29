# SOURCES_NT_STAGE1 — can the one-loop (Gaussian) part K^𝒢(X) of the sourced activities be defined per polymer? Stage 1 of (NT-loc)

Date 2026-10-29. Author: Claude (Opus 5.5), derivation file. Status: DERIVATION, not verified. No grade in it is load-bearing before an independent verifier reads it.
Edits: this file and numerics/nt_s1_toy.py only. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read. Every grep named project files.
Ids follow IDS.md. Ids used: R-016, R-035 (B-S), R-037 (H-hist), R-040 (H-hol, small field), R-041, R-042 (N3), R-043 (FX), H-081 (B-NT), H-101 (E14-f), L-232 (Lemma N3), Q-061. New labels in this file, none with an id: (G-step), (Def W), (Def M), (NT-loc′), (S2-rel), (S2-λ), (S2-hist), (S2-fix).
Page images: none were rendered. Every Balaban fact below is taken from a verified project file and is cited with that file. So no [V] grade here rests on a page image; [V] means a check by numerics/nt_s1_toy.py.

Grades. [P] proved here. [P-sketch] proof given, a routine step not written out. [V] checked by the script in this folder. [R] reduced to a named result: a ledger row, a verified project file, or a printed Balaban statement quoted in a verified file. [I] reading or inference without verifier support. [N] not done, or open.

Inputs read. OPUS_QUEUE.md l. 1–15; SOURCES_NT4.md and SOURCES_NT4_VERIFY.md (whole; C2, C3 especially); SOURCES_L1_NT.md and SOURCES_L1_NT_VERIFY.md (whole); SOURCES.md §2.4–§2.5; TRUST_LEDGER.md rows R-037, R-040, R-041, R-042; FABLE_O3_ALC_VERIFY.md l. 1–30 (Lemma O3-den); IDS.md lookups.
Script: numerics/nt_s1_toy.py (Mac; 3.6 s at N = 32, 154 s at N = 64 for Part A only). 2D lattice scalar with a local-coupling source in the weight. Part A: Gaussian block-spin RG, J-chain telescoping, closure-scale split of the four-source ring. Part B: a single-scale quartic toy, first-order non-Gaussian four-source coefficient against the ring.

## 0. Result in brief

1. (a) Definition [P for the algebra, P-sketch for the YM transcription]. The Gaussian comparison step (G-step) integrates the scale-j fluctuation at the trivial background, with the real coupling g_j and the real transferred source f̃_j put in by hand. Its output has two parts: a closed part (field-independent), and a J-chain vertex (exactly quadratic in the coarse field) that is carried to the next step. The closed parts telescope exactly to log Z^𝒢 (Lemma G2) [P; V to 10^{−15}]. K^𝒢_j(X) is the closed part of step j localized on X. Two localization rules are given: (Def W), an explicit rule on the ring polygon; and (Def M), Balaban's own expansion run on 𝒢-data. Only (Def M) makes "K − K^𝒢 per polymer" a meaningful object. The degree-4 part is K^{𝒢,4}(X) = c_X t_1t_2t_3t_4.
2. (b) Cross-scale rings [P-sketch]. A ring whose four propagators have scales j_1, …, j_4 closes at the step j* = max j_a. Before that step its finer pieces are J-chains, that is, field-dependent 𝒢-activities. This answers SOURCES_NT4_VERIFY C3. With (Def W), Σ_{j,X} Δ_4K^𝒢_j(X) = Ring_RG with zero error. With (Def M), the error is the large-field part of 𝔐(𝒢), which is smaller than every power of g. Numerics [V]: 90–99 % of the ring is cross-scale, so this assignment is necessary. The closure scale peaks at λ_{j*} ≈ 2d.
3. (c) Remainder [P in the toys; N in YM]. Non-compact U(1) with the Gaussian composite: K − K^𝒢 ≡ 0, and the ring is nonzero. The task's "ring zero" holds for linear sources only. Scalar quartic toy: the remainder is analytic on the relative polydisc Σ_i|t_i|g²‖f_i‖_∞ < 1. It carries the factor λ′g² (vertex coupling times g²), with a geometric coefficient of −52 after Wick ordering at m² = 0.01 [V]. In YM the verified inputs give K − K^𝒢 only on the absolute polydisc, where it gains nothing. Naive interpolation in the non-Gaussian part fails, because the marginal coupling flow accumulates (radius u_k/(u_0 − u_k) → 0) [P]. An interpolation that keeps the marginal parameters fixed at their real values, with the field scale decoupled from the thresholds, would give a factor of order (g_jp_0(g_j)/ε_0)² by exact parity in the new parameter [I].
4. (d) Stage 2 needs four items. (S2-rel): Balaban's small-field induction with an x-dependent complex coupling u_i − f̃_i, where |f̃_i| ≤ ru_i, at all scales. This is a local form of R-040. (S2-λ): the fixed-marginal interpolation, analytic in |λ| ≤ Λ_j. (S2-hist): (H-hist_C) on relative half polydiscs and the gap g_j² ≤ (1 − O(r))γ² (VERIFY C2). (S2-fix): the real marginal data (g_j, Z_j, h_j) enter 𝒢 by hand. Fine scales j < k(d_0) − m with m = O(log_L log(1/g_k)) need no relative radius: the absolute S1 bounds and the polymer decay suffice [P given S1].
5. Verdict: GO for Stage 2. Size: about 6–10 derivation-plus-verifier rounds, comparable to the R-040 campaign. (S2-λ) carries the highest risk, so a one-step test of (S2-λ) should run first.

## 1. The objection and what Stage 1 must deliver

Notation as in SOURCES_NT4 §1: four bumps f_i on the vertices of a square of side d, supports S_i pairwise ≥ 3d/4 apart, f_t = Σt_if_i, k = k(d), λ_j = L^jε, u_j = g_j^{−2}, Lead(d), Ring_RG, Δ_4.
(NT-loc) of SOURCES_NT4 §4.1 asks, for each small-field term K(X) at each scale, for a split K = K^𝒢 + K^{nG} with Σ_XΔ_4K^𝒢(X) = Ring_RG and |Δ_4K^{nG}| ≤ δ(γ)b(X) on |t_i| < g_j^{−2}R(r, d).
SOURCES_NT4_VERIFY C3: "K^𝒢(X) is undefined per polymer", because by SOURCES_NT4 §3.4(a) the scale-j log det gives only the scale-j rings. The cross-scale ring terms come from the J-terms and from later U-integrations [R: SOURCES_NT4_VERIFY C3].
VERIFY C2: the verified sourced bounds do not give a relative radius [R].
Stage 1 asks: (a) a definition of K^𝒢(X) at each scale; (b) an assignment of the cross-scale ring terms to polymers, with Σ_XΔ_4K^𝒢 = Ring_RG up to an explicit error; (c) analyticity and the small factor of K − K^𝒢, at least in a toy; (d) the precise Stage 2 list.

Two facts fix the shape of the answer.
(F1) Only the multilinear coefficient matters [P]. (NT4) uses S^T_{4,ε}(F_d) = ∂_{t_1}⋯∂_{t_4}log Z|_{t=0} (SOURCES_NT4 §3.1). So it suffices to define c_X := ∂_{t_1}⋯∂_{t_4}K^𝒢(X)|_0 and to subtract the polynomial K^{𝒢,4}(X; t) := c_Xt_1t_2t_3t_4. A polynomial is entire. So "K − K^{𝒢,4} is analytic on the same polydisc as K" holds trivially. All the content sits in the bound of K − K^{𝒢,4} on a relative polydisc.
(F2) Most of the ring is cross-scale [V]. In the toy of §3.3, only 10.1 % (N = 32) and 0.9 % (N = 64) of the four-source ring comes from rings with all four propagators at one scale. A split that keeps only the scale-j log det of each step therefore misses almost all of Ring_RG. The J-chains are not a correction. They carry the leading term.

## 2. (a) Definition of K^𝒢

### 2.1 The Gaussian comparison step (G-step)

Data at step j, all taken from the real flow and put into 𝒢 by hand (this is (S2-fix)):
- the coupling g_j (the real trajectory, L-001 (c′));
- the transferred source f̃_j = Z_jf + h_j, with Z_j − 1 = O(g_k) by Lemma N3 (SOURCES_NT4 §2.4) [R to R-037, R-040, L-232];
- Balaban's fluctuation covariance C_j and the interpolation (minimizer) operator H_j, both at the trivial background U = 1;
- the J-chain vertex 𝒬_j inherited from step j − 1 (𝒬_0 = 0).
The minimizers, the averaging and the gauge are source-free (SOURCES_L1_E (N1), quoted in SOURCES_NT4 §2.2(a)) [R]. At U = 1 the background is linear, A = H_ja′ + B, with a′ the coarse field and B the fluctuation. The fluctuation space is orthogonal to the range of H_j in the quadratic form of the action, because H_ja′ minimizes the action under the block constraint. This is the statement that the linear term vanishes for a constant weight (SOURCES.md §2.4(a)) [R].
Write Δ for the unit-weight quadratic form at U = 1 (with Balaban's gauge fixing) and Δ^{(f)} for the same form with plaquette weight f. Then Δ^{(c)} = cΔ for a constant c [P: Δ^{(f)} = Σ_pf_p(dB)_p²-type form]. The source part of the step-j quadratic form, in the full field A, is
  ½⟨A, 𝓜_jA⟩,  𝓜_j := g_j²(Δ^{(f̃_j)} + 𝒬_j)  (relative units: the Gaussian is ½⟨A, ΔA⟩/g_j²).
(G-step) Integrate B with the Gaussian measure of covariance g_j²C_j (fluctuation space), at fixed a′:
  ∫dμ_{g_j²C_j}(B) exp(½⟨H_ja′ + B, 𝓜_j(H_ja′ + B)⟩) = det(1 − g_j²C_j𝓜_j)^{−1/2} · exp(½⟨a′, H_j^T𝓜_j(1 − g_j²C_j𝓜_j)^{−1}H_ja′⟩).
Here C_j𝓜_j means the operator restricted to the fluctuation space. This is the Gaussian formula with a linear term J = 𝓜_jH_ja′ [P].
- The closed part is G_j := −½ log det(1 − g_j²C_j𝓜_j). It is field-independent.
- The new J-chain vertex is the quadratic form of the exponent, H_j^T𝓜_j(1 − g_j²C_j𝓜_j)^{−1}H_j. Its local part (the constant-weight part on each block) is the marginal source term of the next step. In 𝒢 it is replaced by the real f̃_{j+1} (S2-fix). The rest is 𝒬_{j+1}.
The J-term of SOURCES.md §2.4(a)–(b) is the cross term ⟨B, 𝓜_jH_ja′⟩. Since ⟨B, ΔH_ja′⟩ = 0, a constant f̃_j gives no J-term. So the J-term is carried by the variation of f̃_j and by 𝒬_j [P]. Its size per link is O(λ_j|∇f̃_j|/|f̃_j|) for the f̃-part on scales λ_j ≪ θ_*d [P-sketch: summation by parts against the constant-f identity, as SOURCES.md §2.4(a)].

### 2.2 Lemma G1 (one step) and Lemma G2 (telescoping) [P]

Perturbative form (fixed covariances, all source in the vertex). Put C_{≤j} := Σ_{i≤j}g_i²Γ_i with Γ_i := H^{(i)}C_iH^{(i)T}, where H^{(i)} is the composite interpolation from scale i to the finest lattice. Put C_tot := C_{≤K}, and M_t := the second variation of Σ_pf_t(x_p)P_p at U = 1 (relative units). Then:
- Lemma G1. The step-j factor of the stepwise integral is G_j = −½ log det(1 − g_j²Γ_jM^{(j)}) with M^{(j)} := M_t(1 − C_{≤j−1}M_t)^{−1}. Proof: det(1 − C_{≤j}M) = det(1 − C_{≤j−1}M)·det(1 − (1 − C_{≤j−1}M)^{−1}g_j²Γ_jM), and the second factor equals det(1 − g_j²Γ_jM^{(j)}) by cyclicity. The chain vertex after the scales < j is M(1 − C_{<j}M)^{−1} = M + MC_{<j}M + MC_{<j}MC_{<j}M + ⋯, the sum of all J-chains [P].
- Lemma G2. Σ_{j≤K}G_j = −½ log det(1 − C_totM_t) = log Z^𝒢(t) − log Z^𝒢(0) [P: telescoping of Lemma G1; the product of the stepwise Gaussian measures is the Gaussian measure of covariance C_tot, since the scale decomposition is a sum of independent Gaussians].
- The t_1t_2t_3t_4 coefficient of −½ log det(1 − C_totM_t) is Σ_{3 unoriented 4-cycles}tr(C_totM_aC_totM_bC_totM_cC_totM_d) (SOURCES_NT4 §3.4(a); L1_NT_VERIFY 2.3) [R]. This is Ring_RG, up to the transfer convention: with Z_j ≡ 1 it is the ring of C_tot; with the real Z_j the four insertions carry the transfer factors of the steps where they enter, and the two differ by a factor 1 + O(g_k) on the window scales [R to SOURCES_NT4 §2.4].
- Check [V]: numerics/nt_s1_toy.py Part A, N = 32 and N = 64. |Σ_jG_j − full| = 7.9·10^{−16} and 1.1·10^{−15} at a random complex t. The per-step identity of Lemma G1 holds to 1.4·10^{−15} and 3.0·10^{−15}.
The weighted form of §2.1 and the perturbative form give the same G_j sum. They differ in how the constant part of the source is grouped. §3.2 shows why the weighted form is the one that gives bounds per polymer.

### 2.3 Per-polymer definitions

(Def W) Walk rule [P-sketch]. Expand each Γ_i (or C_i and H^{(i)}) by Balaban's random-walk expansion, which needs only the regularity properties and bounds of the operators (CMP 116 Sect. 1, quoted in SOURCES.md §2.5 (E14-a)) [R to R-016]. Expand each G_j by Lemma G1 into terms: a cyclic word of propagator walks and source insertions. Each term has one closure scale j (the step whose log det produces it) and a finite set of walk points. Put X(term) := the j-closure (the union of the scale-j blocks) of the polygon through all walk points, in cyclic order. X is connected and lies in D_j. Define
  K^𝒢_j(X) := Σ_{terms of G_j with X(term) = X}.
Then Σ_XK^𝒢_j(X) = G_j whenever the walk-expanded series of G_j converges absolutely [P]. Δ_4K^𝒢_j(X) = 0 unless X meets S_1, …, S_4 [P, as SOURCES_NT4 §3.2].
(Def M) Machinery rule [P-sketch for well-definedness; I for the claim that 𝔐 is a map on data]. Let 𝔐 be Balaban's small-field step together with its localization: random-walk expansions, cluster expansion with decoupling parameters, Mayer expansion, extraction of the marginal part, and the R-operation. 𝔐 maps the data of a step (Gaussian part, vertex functional, background map, activities E^{(i)}(X; f, U) of earlier steps, cut functions) to the activities of the next step. Define 𝒢-data as the real data with: background U = 1 and H_j linear; vertex V ≡ 0; the earlier activities replaced by their 𝒢-values (inductively); the marginal data (g_j, f̃_j) real (S2-fix); the cut functions χ unchanged. Then
  K^𝒢_j(X) := 𝔐(𝒢-data)_j(X).
The J-chain vertex 𝒬_j is a field-dependent 𝒢-activity of 𝔐 at scale j, quadratic in the coarse field. The closed part G_j is distributed over polymers by 𝔐's own rules.
(Def M) is the definition that answers the question as posed: the real K(X) and K^𝒢(X) have the same index set and the same localization rules, so the per-polymer difference K(X) − K^𝒢(X) is defined. (Def W) gives explicit formulas and bounds, but its rule need not agree with Balaban's rule polymer by polymer.
Degree-4 part, for either rule: c_X := ∂_{t_1}⋯∂_{t_4}K^𝒢_j(X)|_0 and K^{𝒢,4}_j(X; t) := c_Xt_1t_2t_3t_4 (F1).
Remark (exactly quadratic, right degree). Under both rules every K^𝒢_j(X) is an iterated Gaussian integral of an exponent that is exactly quadratic in the fluctuation. Its four-source coefficient is a finite sum of traces of words with exactly one insertion of each f_i [P]. This is the object the task describes in (a).

## 3. (b) Assignment of the cross-scale ring terms

### 3.1 Closure at the coarsest scale [P]

Expand the ring Σ_{3 cycles}tr(C_totM_aC_totM_bC_totM_cC_totM_d) with C_tot = Σ_ig_i²Γ_i. Each term carries a label vector (j_1, j_2, j_3, j_4), one scale per propagator. By Lemma G1, a term with labels j_a is produced in G_{j*}, j* := max_aj_a. The propagators with scales below j* sit inside the J-chain vertex M^{(j*)}; that is, they are J-terms of earlier steps, still field-dependent, and the Gaussian integration of step j* closes them. So:
  [t_1t_2t_3t_4]G_j = Ring(C_{≤j}) − Ring(C_{≤j−1}),  Ring(C) := Σ_{3 cycles}tr(CM_aCM_bCM_cCM_d).
This is the precise sense in which "the cross-scale ring terms come from J-terms and from later U-integrations" (VERIFY C3): the J-terms of steps i < j* are the open chains; the later integration is step j*. They have one well-defined closure step [P].
In the real theory the closure happens in the same way. The J-term ½⟨J_f, (Δ^{(w)})^{−1}J_f⟩ of step i is quadratic in the background (SOURCES.md §2.4(a)–(c)). Balaban places it in E^{(i+1)}(X; f, U) as a field-dependent activity. At step j* this activity is part of the interaction in the fluctuation integral. Its all-Gaussian contribution to the cluster expansion is the Wick contraction of the quadratic activity with the step-j* covariance, which is the closing of the chain [P-sketch: a cluster expansion of the Gaussian expectation of a polynomial in the field is an exact rearrangement of the Wick sum].

### 3.2 Bounds per polymer, and why the weighted form is needed [P-sketch]

(i) Walk-rule bound. Take Balaban-type kernel bounds for the scale-i propagator at U = 1 with the two derivatives of the composite: |∂∂Γ_i(x, y)| ≤ Cλ_i^{−4}e^{−c|x−y|/λ_i} in physical units [I: standard form; not re-read on page images this session]. In a four-source ring every propagator joins two different supports, so it spans at least 3d/4. A term with closure scale j* and polymer X then has weight ≤ C⁴Π_aλ_{j_a}^{−4}e^{−c|y_a−y_{a+1}|/λ_{j_a}} ≤ C′e^{−c′d_{j*}(X)}Π_a(...), since λ_{j_a} ≤ λ_{j*}. The sum over the labels j_a ≤ j* of λ_{j_a}^{−4}e^{−c(3d/4)/λ_{j_a}} converges. It is dominated by λ_{j_a} ≈ d. So
  Σ_X|c_X| e^{κ′d_{j*}(X)} ≤ C(d)g_{j*}⁸  for each closure scale j*,
with g_{j_a} ≤ g_{j*} (asymptotic freedom along the trajectory). The fine closure scales λ_{j*} ≪ d are suppressed by e^{−cd/λ_{j*}} [P-sketch given the kernel bound].
(ii) The analytic radius of 𝒢 is relative [P]. Δ^{(f)} ≤ ‖f‖_∞Δ as quadratic forms, and C_tot = Σ_ig_i²Γ_i ≤ (max_ig_i²)Δ^{−1}, since every Γ_i is positive semi-definite and Σ_iΓ_i = Δ^{−1}. So ‖C_tot^{1/2}M_fC_tot^{1/2}‖ ≤ g_max²‖f‖_∞, and log Z^𝒢(t) is analytic on Σ_i|t_i|‖f_i‖_∞ < u_min = g_max^{−2}. For a term closing at j*, g_max = g_{j*}. Check [V]: spectral radius 0.0235 ≤ g_max²‖f‖_∞ = 0.0625 (N = 32); 0.0212 ≤ 0.0625 (N = 64).
(iii) The absolute series of the perturbative form diverges as K → ∞ [P]. Expand M^{(j)} = M(1 − C_{<j}M)^{−1} in absolute values, as a walk expansion needs. Each scale i < j contributes about g_i²‖f‖_∞O(1). With u_i ≈ u_j + β(j − i): Σ_{i<j}g_i² ≈ β^{−1}ln(u_0/u_j). This sum grows like ln K. So on the relative polydisc ‖f‖ ~ ru_j the absolute series diverges, although the operator series converges by (ii).
(iv) The weighted form removes the divergence [P for the constant part; P-sketch for the gradient part]. The scale decomposition is orthogonal in the quadratic form: Γ_iΔΓ_k = δ_{ik}Γ_i. Check [V]: max|Γ_iAΓ_k − δ_{ik}Γ_i| = 1.3·10^{−15} (N = 32), 4.2·10^{−15} (N = 64). So the operators P_i := Γ_iΔ are commuting idempotents with P_iP_k = δ_{ik}P_i. For a constant source c, C_{<j}M_c = cΣ_{i<j}g_i²P_i, and
  (1 − C_{<j}M_c)^{−1} = 1 + Σ_{i<j}(cg_i²/(1 − cg_i²))Γ_iΔ,
which is analytic for |c| < u_{j−1}, with no ln K. So the constant part of the source belongs in the weight of each step, as in §2.1. Only the variation of f̃ enters the perturbation, as J-terms with a factor λ_i|∇f̃|/|f̃| per fine-scale link. That factor is summable over the fine scales: Σ_{λ_i<θ_*d}λ_i/(θ_*d) ≤ L/(L − 1).
(v) Coarse scales. For λ_i > θ_*d the gradient factor is not small. There the source sits inside one block, and its effect on the block is small by the volume fraction (θ_*d/λ_i)⁴ [I: a scale-adapted source norm is needed to state this; S1 uses the physical-unit sup and gradient norms]. For (NT4)_{d_0} this matters on at most 1 + log_L(1/d_0) scales between k(d_0) and the unit scale K. A finite number of steps with O(1) losses gives a constant C(d_0), which (NT4)_{d_0} allows [P].

### 3.3 Proposition A (sum rule) and numerics

Proposition A [P for (Def W) given absolute convergence; P-sketch for (Def M)].
(1) (Def W): Σ_jΣ_{X∈D_j}Δ_4K^𝒢_j(X) has t_1t_2t_3t_4 coefficient exactly Ring_RG. No error term.
(2) (Def M): Σ_jΣ_{X small-field}∂^4Δ_4K^𝒢_j(X)|_0 = Ring_RG + Err_LF^𝒢, where Err_LF^𝒢 is the four-source part of the large-field activities of 𝔐(𝒢). Every exact identity used by 𝔐 (partition of unity by the cut functions, normalized R-operation ∫Rρ = ∫ρ (CMP 122 I (0.4), quoted in SOURCES.md §2.5 (E14-e)), cluster and Mayer expansions) holds for 𝒢-data. So Σ_{all X}𝔐(𝒢)(X) = log Z^𝒢. The large-field activities of 𝒢 carry the Gaussian tail factors e^{−cp_0(g)²} at least, and the same Cauchy and polymer sum as SOURCES_NT4 §3.5(i) give |Err_LF^𝒢| ≤ C_LF(d)g^{−8}e^{−cp_0(g)²}Lead(d), smaller than every power of g [P-sketch].
(3) The C3 objection is answered: each cross-scale ring term has one closure step j* and one polymer X ∈ D_{j*}; before j* it is a J-chain, carried as a field-dependent activity [P].
Numerics [V], numerics/nt_s1_toy.py Part A. 2D torus, L = 2, gradient composite (the scalar analogue of a plaquette-weight source: a constant source is a coupling change), four 2 × 2 bumps on a square of side d = 8, g_j² = 1/(4 + (n − j)).
| | N = 32, m² = 0.01 | N = 64, m² = 0.0025 |
|---|---|---|
| Σ_j(closure parts) − ring | 0 to 10^{−16} relative | 0 to 10^{−16} relative |
| closure fractions, λ_{j*} = 1, 2, 4, 8, 16, 32, (64) | 0.0000, −0.0031, 0.0428, 0.0927, 0.8676, 0.0000 | 0.0000, −0.0024, 0.0349, 0.0981, 0.7151, 0.1544, −0.0000 |
| single-scale share of the ring | 0.1006 | 0.0094 |
The closure scale peaks at λ_{j*} = 2d. That is one or two layers above k(d), because j* = max picks the coarsest propagator. The fine closure scales λ_{j*} ≤ d/4 carry less than 0.4 %. The top level is the global mean, which the gradient composite does not see. The toy is 2D and lattice-sized, so the numbers check the structure, not 4D values.

## 4. (c) The remainder K − K^𝒢: analyticity and the small factor

### 4.1 Abelian control [P]

Non-compact U(1), A_b ∈ R, with the Gaussian composite P_p^{(2)} := ½(dA)_p² and the source in the weight, Σ_p(u − f_t(x_p))P_p^{(2)}. The density is exactly Gaussian for every real t with ‖g²f_t‖_∞ < 1. Balaban's step for this model has no vertex, a linear background, and a background-independent covariance. So 𝔐(real) = 𝔐(𝒢) polymer by polymer, and K − K^𝒢 ≡ 0 under (Def M) [P]. The running is trivial (β_j = 0, Z_j = 1), so (S2-fix) is empty.
The ring of this model is not zero. It is the one-color ring of SOURCES_L1_NT Lemma NT-3: 27648 per color at the unit square, times (g²/2)⁴(4π²)^{−4} [R to L1_NT_VERIFY §2]. So S^T_4 ≠ 0 here although the model is Gaussian in A, because the composite is quadratic (L1_NT §3, meaning (G) against (F)).
The task's statement "ring zero" holds for a linear source ⟨J, dA⟩. Then every truncated function of order ≥ 3 vanishes [P, Isserlis]. Both cases are clean controls: with the quadratic composite, the 𝒢 machinery must reproduce a nonzero ring with a zero remainder; with a linear source, both must vanish.
Compact U(1) with the Wilson action is not a control of this kind: 1 − cos θ = θ²/2 − θ⁴/24 + ⋯ gives a quartic vertex of order g² in rescaled fields, and a remainder of relative order g² [P-sketch, leg count as in L1_NT_VERIFY 1.2].

### 4.2 Scalar quartic toy [P for analyticity; V for the coefficient]

Model: weight (1 − g²f_t)·(½⟨a, Aa⟩_loc + g²λ′Σ_xa_x⁴/4), with ⟨·⟩_loc the local gradient density, A = −Δ + m², the same bumps as Part A, single scale. The source is a relative change of the whole local weight, as in YM.
- Gaussian part: log Z^𝒢(t) = −½ log det(1 − g²CM_t), C = A^{−1}. Its four-source coefficient is g⁸Ring(C).
- First order in λ′: log Z − log Z^𝒢 = −(3/4)g²λ′Σ_x(1 − g²f_t(x))C_t(x, x)² + O(λ′²), C_t := (A − g²M_t)^{−1} [P, Wick].
- Analyticity [P]: M_f ≤ ‖f‖_∞A as forms (gradient composite), so C_t is analytic on Σ_i|t_i|g²‖f_i‖_∞ < 1. This is the relative polydisc |t_i| ≲ u/‖f_i‖_∞. The remainder at each order in λ′ is analytic on the same polydisc.
- Small factor [V]: Part B computes the exact t_1t_2t_3t_4 coefficient of the first-order term by the ordered-chain expansion of C_t. The ratio (first-order coefficient)/(λ′g²·g⁸Ring(C)) is independent of g to all printed digits (g = 0.3, 0.2, 0.1). Values:
| m² | plain a⁴ | Wick-ordered :a⁴:_C |
|---|---|---|
| 0.04 | −87.863 | −31.187 |
| 0.01 | −137.318 | −52.196 |
| 0.0025 | −196.621 | −61.546 |
So the remainder is O(λ′g²) relative to the ring, on the relative polydisc. Two caveats. First, the coefficient is not of order one: in 2D the massless propagator gives an IR growth, visible in the m² dependence. Second, about 60 % of the plain coefficient is the tadpole C(x, x), a mass and coupling renormalization. In the RG this part belongs to the marginal (or relevant) slot, which (S2-fix) fixes from the real flow. The Wick-ordered column is the part that a fixed-marginal split leaves in K − K^𝒢.
Use of the toy. It shows the mechanism that (S1-G) assumes: on the relative polydisc the full four-source part is g⁸ times an O(1) function, and the non-Gaussian share carries one extra vertex coupling. It does not test the multiscale per-polymer structure; Part A does that for 𝒢 alone.

### 4.3 YM: what the verified inputs give, and why naive interpolation fails

(i) Analyticity of K − K^𝒢 on the same polydisc [P given S1]. Under (Def M), K^𝒢 is analytic on the relative polydisc [P-sketch: the weighted G-steps of §2.1 and §3.2(ii)–(iv); finitely many coarse steps for fixed d_0, §3.2(v)]. K is known to be analytic only on the absolute S1 polydisc P_ρ(X) [R: SOURCES_L1_E §1.1, VERIFY §12, via SOURCES_NT4 §1]. So K − K^𝒢 is analytic on the absolute polydisc. On that polydisc the Cauchy bound of ∂⁴Δ_4(K − K^𝒢) is 16(b(X) + sup|K^𝒢|)R(r, d)^{−4}, and sup|K^𝒢| ≤ C(g_j²r)⁴-type is negligible. The bound is the bound of SOURCES_NT4 §3.5(ii), which exceeds Lead by a factor of order g_k^{−8}d^{−4}. So Stage 1 alone gives no gain. This was expected (VERIFY C2).
(ii) Fine scales need no relative radius [P given S1 and the FX4 count]. For an activity born at scale j < k − m that meets the four supports, the Cauchy bound on the absolute polydisc times the polymer decay of SOURCES_NT4 §3.3(a) gives, relative to Lead,
  ≤ C(d)g_k^{−8}exp(−(κ − c_0)(9L^{k−j}/(8M) − 2)).
This is ≤ δ for L^m ≥ (8M/(9(κ − c_0)))(8 ln(1/g_k) + ln(C(d)/δ)) + 2. For fixed d_0 and g the coupling g_k is bounded below uniformly in K (L-001 (c′), SOURCES_L1_NT Theorem NT-G step (3)) [R]. So m = O(log_L log(1/g_k)) is K-independent. The four-source extraction then needs relative-radius bounds only at the scales j ∈ [k(d_0) − m, K] and the final unit-scale integral: m + 2 + log_L(1/d_0) scales. The inputs of those scales still come from all finer scales, so the relative analyticity of the field-dependent inputs is still needed at all scales (this is (S2-rel) below).
(iii) Naive interpolation in the non-Gaussian data fails [P]. Put data_s := 𝒢-data + s(real − 𝒢-data) at the fixed trajectory g_j, and try to bound K(1) − K(0) by Cauchy in s. The real step-j output contains the marginal term −β_jA(U), which Balaban moves into the coupling (CMP 109 (0.20), (0.23), quoted in L1_NT §2). In data_s the generated marginal term is about s·β_jA, while the fixed trajectory removes β_jA. The mismatch (1 − s)β_jA stays in all later effective actions, because the term is marginal. At scale k it shifts u_k by (1 − s)Σ_{j≤k}β_j = (1 − s)(u_0 − u_k). Relative to u_k this is (1 − s)(u_0 − u_k)/u_k, which is unbounded as K → ∞. So data_s stays in Balaban's domain only for |1 − s| ≲ u_k/(u_0 − u_k) → 0. The same holds for the source transfer Z_j. An interpolation that switches off the non-Gaussian part over all scales cannot be uniform in K.
(iv) The fixed-marginal λ-family [I; this is (S2-λ)]. Define the step map at a complex parameter λ:
- write the fluctuation as B = g_ja and replace exp(ig_ja) by exp(iλg_ja) in the vertex, in the background nonlinearity, and in the background dependence of the covariance; divide the vertex by λ²;
- keep the thresholds and cut functions as functions of g_j, not of λ;
- after the step, subtract the marginal part of the λ-output (its own β_j(λ) and source coefficient) and insert the real values (g_{j+1}, f̃_{j+1}) (S2-fix).
At λ = 1 this is the real step. At λ = 0 it is the G-step, so K(X; 0) = K^𝒢(X) under (Def M). No marginal mismatch accumulates, because the marginal data are the same at every λ. Exact parity: (λ, a) ↦ (−λ, −a) maps every integrand of the step to itself. The reason is the argument of SOURCES_NT4 §2.2(c), now with the thresholds independent of λ. So K(X; λ) is even in λ, and the obstruction of SOURCES_NT4 §2.3 (non-smooth thresholds in g) does not apply to λ [P-sketch given analyticity]. If 𝔐 satisfies its inductive bounds for |λ| ≤ Λ_j := cε_0/(g_jp_0(g_j)) (the field stays in Balaban's analyticity domain of size ε_0 when |λg_ja| ≤ cε_0 and |a| ≤ p_0), then Cauchy in λ and evenness give
  |K(X; 1) − K^𝒢(X)| ≤ Λ_j^{−2}(1 − Λ_j^{−2})^{−1}sup_{|λ|=Λ_j}|K(X; λ)| ≈ C(g_jp_0(g_j)/ε_0)²b(X).
So δ′(γ) = O(γ²(log γ^{−2})^{2p_0}) [I]. Two items are not checked. First, whether Balaban's domain in the background field allows this Λ_j; the small-field cut in the gauge-fixed fluctuation is of the form |B′| < M_0g_k^{−1}ε_k (CMP 122 II (1.2), quoted in SOURCES_NT4 §2.1), and the λ-family needs ε_k small against ε_0 [I]. Second, whether the R-operation and the large-field steps tolerate complex λ [N]; the large-field sector needs no λ, because its four-source part is already o(Lead) (SOURCES_NT4 §3.5(i), with VERIFY C4 [R + I]).

## 5. (d) What Stage 2 needs, precisely

Replace (NT-loc) of SOURCES_NT4 §4.1 by the following statement, which uses the definition of §2.3.
(NT-loc′) There are δ(γ) → 0 and m(γ) = O(log_L log(1/γ)) such that, for every K, every j ∈ [k(d_0) − m, K], and every small-field activity K_j(X) that meets S_1, …, S_4 (classes E, V, w, and the small-field unit-scale terms):
  |∂_{t_1}⋯∂_{t_4}Δ_4K_j(X; 0) − c_X| ≤ δ(γ)b(X)g_j⁸R_rel(d)^{−4},
with c_X from (Def M) and R_rel(d) the sup-norm entry of R(r, d) of SOURCES_NT4 §1 (no gradient entry; see (S2-rel)).
Given (NT-loc′), Theorem NT4-C of SOURCES_NT4 §4.2 holds with the same proof: the scales j < k(d_0) − m are handled by §4.3(ii), the scales in the window by (NT-loc′) and the polymer sum, and Σ_Xc_X = Ring_RG + Err_LF^𝒢 by Proposition A [P given (NT-loc′) and the inputs of Theorem NT4-C].
(NT-loc′) follows from four items [P: Cauchy on the relative polydisc for the four-source derivative, plus (S2-λ) for the bound]:
(S2-rel) Relative source radius for the small-field induction. Balaban's small-field step, with the sourced bounds b_T of Theorem L1-E, holds for an x-dependent complex coupling u_i − f̃_i(x) with ‖f̃_i‖_∞ ≤ ru_i at every scale i ≤ K. The gradient enters only through the J-terms, with the factor λ_i‖∇f̃_i‖_∞/(ru_i) per link, summable over the fine scales (§3.2(iv)); on the at most 1 + log_L(1/d_0) coarse scales an O(1) loss per step is allowed (§3.2(v)). This is a local (x-dependent) form of R-040, which gives holomorphy of β_j on the relative disc |g − x| < ρ_0x for a frozen constant coupling [R: TRUST_LEDGER row R-040]. Two pieces already exist in the right variable: the source enters the fluctuation integral only through the relative weight g_j²f̃ (SOURCES_NT4 §3.5(ii) (D1); SOURCES_D3_NEW4, Q-050), and Lemma O3-den bounds the sourced R-denominators on |ω − 1| ≤ θ_c with ω the relative plaquette weight and θ_c ≤ 6.5γ²r (FABLE_O3_ALC_VERIFY A-02) [R]. Whether its constants allow θ_c of order a fixed r is not checked here [N].
(S2-hist) The items of SOURCES_NT4_VERIFY C2: (H-hist_C) on the relative half polydisc P_{ρ/2}(x) for Lemma N3 (L-232), the gap g_j² ≤ (1 − O(r))γ², and relative reruns of the crude (F2) bound, of the (S-e) additive δ_r and of L-165 (σ_W, with its polylog loss) [R to VERIFY C2; N].
(S2-λ) The fixed-marginal λ-family of §4.3(iv) satisfies the inductive bounds of 𝔐 for |λ| ≤ Λ_j with Λ_j → ∞ as γ → 0, uniformly in K and j. Then δ(γ) = O(sup_jΛ_j^{−2}) [P given (S2-λ), by evenness and Cauchy]. With Λ_j = cε_0/(g_jp_0(g_j)), δ = O(γ²(log γ^{−2})^{2p_0}) [I].
(S2-fix) A definitional check: the λ-family with the real marginal data inserted is the real step at λ = 1 and the G-step at λ = 0, and the "own marginal part" subtracted at λ is analytic in λ. The first two parts are [P-sketch]. The third part needs Balaban's extraction of β_j (expansion to fifth order with Ward–Takahashi identities, CMP 109 p. 258 as quoted in SOURCES_NT4 §2.1) to be analytic in the data [I].
What Stage 2 does not need. No new item for the large-field sector, whose four-source part is o(Lead) up to the B/e-term reading (VERIFY C4). No relative radius at the scales j < k(d_0) − m for the four-source extraction itself (§4.3(ii)). No evenness of β_j in g: the parity used is in λ, which is exact (§4.3(iv)). No new result for (NT4) on ]0, d_1]: the d^{−4} loss of SOURCES_NT4 §4.3 comes from the gradient entry of R(r, d). (S2-rel) as stated removes the gradient entry from the four-source Cauchy step, so (NT4) on ]0, d_1] would also follow if the coarse-scale constant of §3.2(v) is uniform in d [N].

## 6. Verdict

(a) holds: K^𝒢_j(X) is defined per polymer, either by the walk rule (explicit) or by Balaban's machinery on 𝒢-data (same index set and rules as the real K). (b) holds: every cross-scale ring term has one closure step, the coarsest propagator scale, and one polymer; before closure it is a J-chain. The sum rule is exact for (Def W) and holds up to a large-field error below every power of g for (Def M). The C3 objection is answered at the level of definitions and identities.
(c) holds in the toys: zero remainder for non-compact U(1); analyticity on the relative polydisc and a factor λ′g² for the quartic scalar. In YM, (c) is not available from the verified inputs: K − K^𝒢 is analytic only on the absolute polydisc, where it gains nothing. The naive interpolation fails for a structural reason (marginal accumulation, §4.3(iii)). The fixed-marginal λ-family avoids that reason and would give δ = O(g²·polylog) [I].
GO for Stage 2. Stage 2 consists of (S2-rel), (S2-hist), (S2-λ) and the check (S2-fix).
Size estimate. (S2-rel) is a local version of the R-040 campaign (SOURCES_HHOL, SOURCES_H_ALPHA, SOURCES_H_ALPHA_RESIDUE and verifiers): about 3–4 derivation-plus-verifier rounds. (S2-hist) reruns the N3 conditions on relative discs: 1–2 rounds. (S2-λ) is new, has the highest risk, and needs reading of CMP 109 Sects. 3–5 and CMP 116 Sects. 1–2 on page images: 2–4 rounds. Total about 6–10 rounds. Recommended order: first a one-step test of (S2-λ) on the CMP 122 II (1.2) fluctuation integral, because a failure there stops (NT-loc′) whatever the radius.

## 7. Grade table

| Item | Grade | Where |
|---|---|---|
| (F1) only the multilinear coefficient matters; K^{𝒢,4} is entire | [P] | §1 |
| (F2) cross-scale share of the ring 90 % (N = 32), 99 % (N = 64) | [V] toy | §1, §3.3 |
| G-step formula; J-term vanishes for constant f̃ | [P]; YM transcription [P-sketch] | §2.1 |
| Lemma G1 (one step), Lemma G2 (telescoping) | [P]; [V] to 10^{−15} | §2.2 |
| (Def W) sum rule given absolute convergence | [P] | §2.3, §3.3 |
| (Def M) well defined; 𝔐 a map on data | [P-sketch]; [I] | §2.3 |
| Closure at j* = max j_a; [t^4]G_j = Ring(C_{≤j}) − Ring(C_{≤j−1}) | [P]; [V] | §3.1 |
| Real-theory closure by the cluster expansion of the J-term activity | [P-sketch] | §3.1 |
| Per-polymer bound Σ_X\|c_X\|e^{κ′d} ≤ C(d)g_{j*}⁸ | [P-sketch] given kernel bounds [I] | §3.2(i) |
| 𝒢 analytic on Σ\|t_i\|‖f_i‖ < g_max^{−2} | [P]; [V] | §3.2(ii) |
| Absolute perturbative series diverges like ln K | [P] | §3.2(iii) |
| Γ_iΔΓ_k = δ_{ik}Γ_i; constant-source resolvent analytic for \|c\| < u_{j−1} | [P]; [V] | §3.2(iv) |
| Coarse scales: volume-fraction smallness; finite count for fixed d_0 | [I]; count [P] | §3.2(v) |
| Proposition A (2): Err_LF^𝒢 below every power of g | [P-sketch] | §3.3 |
| Non-compact U(1): K − K^𝒢 ≡ 0; ring nonzero; linear source: ring zero | [P] | §4.1 |
| Quartic toy: analytic on the relative polydisc; factor λ′g²; coefficients | [P]; [V] | §4.2 |
| YM: K − K^𝒢 analytic only on the absolute polydisc from verified inputs; no gain | [P given S1] | §4.3(i) |
| Fine scales j < k − m need no relative radius; m K-independent | [P given S1, FX4 count, L-001 (c′)] | §4.3(ii) |
| Naive interpolation not uniform in K | [P] | §4.3(iii) |
| Fixed-marginal λ-family: endpoints, exact parity | [P-sketch] | §4.3(iv) |
| λ-family analytic for \|λ\| ≤ Λ_j; δ = O(g²·polylog) | [I] | §4.3(iv) |
| (NT-loc′) ⇒ Theorem NT4-C | [P] given (NT-loc′) | §5 |
| (S2-rel), (S2-hist), (S2-λ) | [N] | §5 |
| Verdict GO; 6–10 rounds | [I] estimate | §6 |

## 8. Report (≤120 words)

A per-polymer one-loop split exists. The Gaussian step at trivial background, with the real g_j and transferred source put in by hand, gives closed log det parts and J-chain vertices. The closed parts telescope exactly to log Z^𝒢 (checked to 10^{−15}). Each cross-scale ring closes at its coarsest propagator scale, on one polymer. 90–99 % of the toy ring is cross-scale. Running Balaban's machinery on Gaussian data defines K^𝒢(X) with the same rules as K(X). The sum rule then holds up to a large-field error. In toys the remainder is zero (non-compact U(1)) or of order λ′g² on a relative polydisc. In YM the relative radius is still missing. GO for Stage 2: (S2-rel), (S2-hist), (S2-λ); about 6–10 rounds.
