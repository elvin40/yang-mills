# SOURCES_NT4 — the four-source extraction for (NT4): evenness of β_j, the leading ring and the remainder, and the status of (NT4) and (NT)

Date 2026-10-29. Author: Claude (Opus 5.5), derivation file. Status: DERIVATION, not verified. It needs an independent verifier before any grade in it is load-bearing.
Edits: this file and numerics/nt4_scales.py only. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read. Every grep named project files or excluded these paths.
Ids follow IDS.md. (NT4) has no IDS row yet (SOURCES_L1_NT §5 proposes the next free H- id). New labels in this file, none with an id: (H-ev), (NT-loc), (S1-rel), (S1-G). Ids used: R-007, R-013, R-035 (B-S), R-037 (H-hist), R-040, R-041 (H-hol), R-042 (N3, L-232), R-043 (FX), R-045 (S), H-081 (B-NT), H-101 (E14-f), H-116 (H-U), L-001 (Theorem 2w), L-013, L-014, L-165 (Lemma FX-D).

Grades. [P] proved here. [P-sketch] proof given, a routine step not written out. [V] read this session on a page image (pdftoppm -r 150, fresh folder /tmp/nt4p.8p7l, deleted after use), or checked by a script in this folder. [R] reduced to a named result: a ledger row, a verified project file, or a printed Balaban statement. [I] reading or inference without image or verifier support. [N] not done, or open.

Inputs read. OPUS_QUEUE.md l. 1–15; SOURCES_L1_NT.md and SOURCES_L1_NT_VERIFY.md (whole; §7 of the VERIFY gives the repaired (NT4)); SOURCES_L1_E.md and SOURCES_L1_E_VERIFY.md (whole); SOURCES_JC_SIGMA_VERIFY.md and SOURCES_A_SIGMA_STAR_VERIFY.md (verdicts, §1–§3); SOURCES_HBETA_N3.md §4–§5 (Lemma N3); SOURCES_FX_D.md §5; SOURCES_D4D5.md §3.1 (source class, N(f)); SOURCES.md §2.3–§2.4; SOURCES_VERIFY.md §7–§8; LEMMAS_DE_VERIFY.md §2; SOURCES_ORDER_CANON.md N-410, N-430, N-470; TRUST_LEDGER.md rows R-007, R-035, R-040–R-045; IDS.md lookups.
Page images read this session [V]: CMP 109 p. 255 (PDF 7), p. 258 (PDF 10), p. 264 (PDF 16), p. 298 (PDF 50); CMP 119 p. 260 (PDF 18); CMP 122 II p. 356 (PDF 2), p. 357 (PDF 3).
Script: numerics/nt4_scales.py (Mac, 0.3 s). It computes the free ring κ_4 at the unit square from a heat-kernel scale decomposition of the propagator.

## 0. Result in brief

1. Evenness (Task 1). Every object of Balaban's step depends on g only through g_k^{−2} and through threshold parameters that are defined for g_k > 0 only. The substitution (g_k, B′) ↦ (−g_k, −B′) leaves V′ = exp(ig_kB′) and every integrand fixed. So β_j and E^{(j)} are even in g in the formal (asymptotic-series) sense [P-sketch]. Charge conjugation is a constant gauge transformation for SU(2) and says nothing about g [P]. The rigorous form that matters, β_j′(g) = O(g) (with all history derivatives), is not printed and does not follow from the project inputs (R-037 gives O(1), R-040 gives O(1/g)) [N]. Decision: use the O(g_k) remainder, which is proved from R-037. Evenness is not load-bearing for (NT).
2. Extraction (Task 2). S^T_{4,ε}(F_d) is the fourth mixed source derivative of log Z [P]. Only polymers that touch all four supports contribute [P]. The leading term is the Gaussian ring, generated at the scales near k(d); its sum over scales is the RG-improved lattice ring, which equals Lead(d)(1 + O(g_k²) + O((ε/d)²) + O((d/ℓ)²)) [P-sketch; numerics V]. The source transfer adds a factor 1 + O(g_k) [R]. The large-field remainder is o(Lead) uniformly in ε [R]. The small-field remainder is NOT o(Lead) from the verified bounds: Cauchy in the four sources on the S1 polydisc bounds it by C(d)E_0, which exceeds Lead(d) by a factor of order g_k^{−8}d^{−4} [P]. Two defects cause this: the S1 source radius is absolute, not relative to g_j^{−2}, and the S1 bounds do not split the Gaussian part from the rest.
3. Status (Task 3). (NT4)_{d_0} (fixed d_0, K ≥ K_0(d_0)) is PROVED RELATIVE TO the R-035 list (Theorem L1-E with residue (W6*)), R-043, R-037 + R-040 (through Lemma N3), and ONE new input (NT-loc): the four-source part of every small-field activity is bounded by δ(γ)g_j⁸ times its S1 bound, with δ(γ) → 0. (NT-loc) follows from the pair (S1-rel) + (S1-G) [P]. (NT-loc) is a precise form of H-101 (E14-f) extended to four sources. It is not proved [N]. (NT4) on all of ]0, d_1] needs more: the reduction loses d^{−4} (§4.3).
Proposed status: (NT) = H-081/H-101 OPEN; (NT4) OPEN, reduced to (NT-loc) + the R-035 residues. Theorem NT-G stays proved given (NT4)_{d_0}.

## 1. Set-up and conventions

Notation as in SOURCES_L1_NT §5 and SOURCES_L1_NT_VERIFY §7. Q is the unit square in a coordinate plane, ρ ≥ 0 a smooth profile with supp ρ ⊂ B(0, 1) and ∫ρ = 1, θ_* ≤ 1/8 with T_4(F_{1,θ_*}) ≥ ½·27648, and f_i(x) := (θ_*d)^{−4}ρ((x − dQ_i)/(θ_*d)), i = 1, …, 4. The supports S_i := supp f_i are pairwise at distance ≥ (1 − 2θ_*)d ≥ 3d/4. F_d := f_1⊗f_2⊗f_3⊗f_4. k = k(d) is the layer with L^kε ≤ d < L^{k+1}ε; λ_j := L^jε; u_j := g_j^{−2}.
Lead(d) := 3(g_k²/2)⁴(4π²)^{−4}T_4(F_{1,θ_*})d^{−16} ≥ (81/8)π^{−8}g_k⁸d^{−16} (VERIFY §4.4, step (1)) [R].
Repaired (NT4) (VERIFY §7): |S^T_{4,ε}(F_d) − Lead(d)| ≤ C_4g_k⁸(g_k + (d/ℓ)²)d^{−16} for all d ∈ ]0, d_1] and K ≥ K_0(d); (NT4)_{d_0} is the same at one d_0. Weakest forms (VERIFY §7): (NT4w-G) S^T_{4,ε}(F_{d_0}) ≥ c_0 > 0 for K ≥ K_0, and the explicit NT-G bound needs S^T_{4,ε}(F_{d_0}) ≥ ½Lead(d_0).

Source variables. The bare density is exp(−Σ_p (u_0 − f(x_p))P_p(U)) (SOURCES_L1_E §4.2, base case; D3 (1.a)) [R]. Put f_t := Σ_i t_if_i, t ∈ C⁴, and Z(t) := ∫ exp(−Σ_p(u_0 − f_t(x_p))P_p(U)) dU on the finite torus. Z is entire in t, and Z(t) > 0 for real t [P: finite lattice, compact group, entire integrand].

The S1 source polydisc (SOURCES_L1_E §1.1, VERIFY §12). For a term of class T on X, the source domain is P_{ρ_T}(X) = {f + ζ : f ∈ F_{r/2} real, ‖ζ‖_∞ < ρ_T, ‖∇ζ‖_∞ < ρ_1/2}, with ρ_T = r (classes E, V, w) or c_*r (classes R, B, e). The gradient is the lattice gradient in physical units (SOURCES_D4D5 l. 76). ρ_1 ≤ r/(4C_hM). The bounds are b_E = E_0e^{−κd_j(X)}, b_V = E_0O(1)λ_j^{4+α}e^{−κd_j(X)}, b_w = b_e = E_0e^{−κd_j(X)}, b_R = g_j^{κ_0}e^{−κd_j(X)}, b_B = B_0e^{−κd_j(X)}. None of the E-, V-, w-, e-bounds contains a power of g [V for (1.18) via SOURCES_L1_E V1; CMP 109 (0.29) on p. 258, this session].
Because the S_i are pairwise more than ε apart, every lattice difference of f_t involves one f_i only. So f_t ∈ P_s(X) (radius s ∈ {r, c_*r}) if |t_i| < R(s, d) for all i, with
  R(s, d) := min( s(θ_*d)⁴/‖ρ‖_∞ , ρ_1(θ_*d)⁵/(2‖∇ρ‖_∞) )   (ρ is the bump profile)
[P; same reduction as SOURCES_D4D5 l. 110, Step 0]. For d ≤ 1 and ρ_1 ≤ r/(4C_hM) the gradient entry is the smaller one, so R(s, d) ∝ ρ_1d⁵.

## 2. Task 1: are β_j and the effective actions even in g?

### 2.1 What the pages print [V]
- CMP 109 p. 255, (0.17)–(0.19): A_{k+1} = log N_k^{−1}∫dU Πδ(Ū(c)V^{−1}(c)) χ_k exp[−g_k^{−2}Σ(1 − Re tr U) + A_k(g_k, U)]. The block constraint δ(ŪV^{−1}), the Haar measure dU and the gauge-fixing average are free of g. The coupling enters through g_k^{−2} and through the cut χ_k. (0.18): 1/g_1² = 1/g_0² − β_1(g_0), "defined on an interval [0, γ]".
- CMP 109 p. 264, (1.20)–(1.22): Π^{ab}_{j+1,μν}(g_j, x, x′) = (δ²E^{(j+1)}/δB^a_μ(x)δB^b_ν(x′))(g_j, 0), where B is the BACKGROUND variable, E^{(j+1)}(g_j, B) = E^{(j+1)}(g_j, U_{j+1}(exp iB)). Global gauge invariance V → R(v)V gives Π ∝ δ^{ab}. β_{j+1}(g_j) = Σ_xΠ_{j+1,μν}(g_j, x)x_μx_ν. "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives. We will investigate other properties in a separate paper." Theorem 3: 0 < g_k ≤ γ.
- CMP 109 p. 258: β_j is the coefficient extracted, "with a help of Ward-Takahashi identities", from the expansion of E^{(j)}(X, exp iηH) in H up to fifth order.
- CMP 109 p. 298: "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants."
- CMP 122 II pp. 356–357, (1.1)–(1.2): with V′ = exp ig_kB′ the denominator is exp[−g_k^{−2}A(ζ_0, U_0) + (−½d(g)log g_k^{−2} + log σ_0)|Λ^{(k)}\G_0|]·∫dB′σ(g_kB′)δ_{G_0}(B′)χ({|B′| < M_0g_k^{−1}ε_k})·exp[−½⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ − g_k^{−1}⟨DH_{1,k}B′, ζ_0η^{−2}Im ∂U_0⟩ − g_k^{−2}V(ζ_0, g_kH_{1,k}B′)]. "V is at least of third order … It can be estimated by O(g_k^{1−β})|Λ|."
- CMP 119 p. 260, (2.31): |R^{(j)}(X, (U, J))| ≤ g_j^{κ_0}exp(−κd_j(X)); "κ_0 can be chosen arbitrarily large". B_k: "a sum of small, or at least bounded, localized terms, with localizations close to large field regions."

### 2.2 Exact symmetries [P]
(a) Only g² is a parameter of the bare theory. The Wilson density depends on g_0 through u_0 = g_0^{−2} only. All of Balaban's coupling-dependent thresholds (ε_k, δ_k, α_{0,k} = g_kC_0(log g_k^{−2})^{q_0}, α_{1,k}, p_0(g_k) = A_0(log g_k^{−2})^{p_0}, M_0g_k^{−1}ε_k, R_k) are defined for g_k > 0. The minimizers U_k(V), U_0, the averaging and the axial gauge are free of g and of the source (SOURCES_L1_E (N1); CMP 122 II (1.3) on p. 357 [V]). So every quantity of the construction is a function of (g_0², …, g_k²) for g_j > 0. On ]0, γ] the phrase "β_j is even in g" has no content by itself. Its content is a regularity statement at g = 0: β_j has the form b_j + O(g²) with β_j′(g) = O(g), i.e. the even extension to ]−γ, γ[ is C¹ with zero derivative at 0, with the same for every history derivative.
(b) Charge conjugation. Re tr U = Re tr U* for every U, so the Wilson action is invariant under U ↦ U*. For SU(2), U* = (iσ_2)U(iσ_2)^{−1}, a constant gauge transformation. The block constraint, the minimizers and the effective actions are gauge covariant (CMP 109 (1.19); p. 264 [V]: E^{(j+1)} is invariant under V → R(v)V). So C-invariance of the effective actions is a case of gauge invariance. It acts on the field, not on g. It gives the δ^{ab} structure of Π on p. 264 and nothing about the parity in g.
(c) The joint substitution (g_k, B′) ↦ (−g_k, −B′), with every threshold written as a function of |g_k|. It leaves V′ = exp(ig_kB′) unchanged. It maps each factor of CMP 122 II (1.2) [V] to itself: g_k^{−2}A(ζ_0, U_0) and log g_k^{−2} are even; σ(g_kB′) is the Haar density in exponential coordinates, det((1 − e^{−ad X})/ad X) = det(sinh(½ad X)/(½ad X)) since tr ad X = 0, an even function of X; δ_{G_0}(B′) is a linear constraint; the cut {|B′| < M_0|g_k|^{−1}ε_k} is symmetric; the Gaussian form is even in B′; the linear term g_k^{−1}⟨DH_{1,k}B′, ·⟩ and V(ζ_0, g_kH_{1,k}B′)/g_k² are invariant. The small-field step (0.19) has the same structure with U = U_{k+1}(V)exp(ig_kB). So each integral of the step, and hence each E^{(j)} and β_j extended to g_k < 0 by |g_k| in the thresholds, is an even function of g_k [P]. This is exact. It is also (a) again: the extension through |g_k| is even by construction.

### 2.3 Formal evenness and why it is not enough [P-sketch, then N]
Formal level [P-sketch]. Scale the fluctuation so that U = U_bg exp(igB) with B of order one. A term of the exponent with n fluctuation legs carries g^{n−2} (the linear term carries g^{−1}; the Haar density, ghosts and gauge fixing follow the same count). In the formal expansion of the fluctuation integral at fixed background, every graph is closed in the fluctuation field, so the leg number is even and the total power Σ(n_v − 2) is even. So the asymptotic expansion of E^{(j)}(g, U) at fixed U contains only even powers of g, and β_{j+1}(g_j) = Σ_xΠ_{μν}(g_j, x)x_μx_ν (p. 264), a derivative in the background B at B = 0, inherits this. The same count gives the statement of SOURCES_L1_NT_VERIFY 1.2 for the composite. The cut changes the integrals by the Gaussian tail beyond the thresholds, of size exp(−c p_0(g)²) for the B′-cut and exp(−cε_0²/g²) for the fixed gauge-fixing cut of (0.16) [I: no printed bound in this form]. Both are smaller than every power of g, so they do not change the formal statement.
Why this does not prove β_j′(g) = O(g) [N]:
- The thresholds are non-smooth functions of g² at 0 (α_{0,k} = g_kC_0(log g_k^{−2})^{q_0}). The exact symmetry of 2.2(c) is therefore only the vacuous evenness of a function of |g|. It gives no derivative bound at 0.
- β_j is not analytic on a disc around g = 0 (R-007 row; LEMMAS_DE_VERIFY §2.4: large-field pieces of size exp(−c/g²) and asymptotic series). So the identity-theorem route (even on the real axis ⇒ odd Taylor coefficients vanish) is closed.
- Balaban's smoothness clause on p. 264 [V] is an inductive assumption; its proof is deferred ("in a separate paper"). It gives β_j′ = O(1), not O(g).
- The project inputs that replace it give less: R-037 (H-hist) gives |∂β_j/∂g_i| ≤ C_1a_{j−1−i} (order one); R-040 (relative-disc holomorphy, |β_j| ≤ M_β on |g − x| < ρ_0x) gives by Cauchy only |β_j′(x)| ≤ M_β/(ρ_0x).
- By p. 298 [V], β_j depends on all preceding couplings, so evenness must hold for every mixed derivative ∂β_j/∂g_i.
The missing input, stated so that Lemma N3 can use it:
 (H-ev) For real histories in ]0, γ]^j, and on the half polydisc P_{ρ/2}(x) of Lemma N3: |∂β_j/∂g_i| ≤ C_1g_ia_{j−1−i}, with C_1 and the summable a_m independent of j, K.
(H-ev) would follow from a Taylor-remainder estimate of the small-field fluctuation integral to second order in g (the one-loop term plus a remainder O(g²), the cut tails bounded with derivatives). No such estimate is printed or in a project file [N].

### 2.4 Decision and consequences
Decision. β_j and E^{(j)} are even in g in the formal sense [P-sketch]. The quantitative form (H-ev) is OPEN [N]. Balaban's images do not settle it. Proceed with the remainder O(g_k), which the verified inputs give.
Consequences for (NT4).
- Source transfer. Let Z_k := −du_k/dc at a constant source c (Z_0 = 1). Lemma N3 Step 1 (SOURCES_HBETA_N3 §4) gives |Z_k − 1| ≤ exp(Σ_{j≤k}ε_j) − 1 with ε_j = ½C_1′Σ_{i<j}g_i³a_{j−1−i}. Step 2 with u_i ≥ u_k + (β/2)(k − i) gives Σ_{i<k}g_i³ ≤ ∫_0^∞(u_k + βt/2)^{−3/2}dt = 4g_k/β. So |Z_k − 1| ≤ exp(2C_1′Ag_k/β) − 1 = O(g_k) [R to R-037, R-040 and the N3 conditions]. This is the chain sum of SOURCES_L1_NT_VERIFY C4; the summability it asks for is (H-hist) = R-037. Under (H-ev) the same computation with Σ_{i<k}g_i⁴ ≤ 2g_k²/β gives |Z_k − 1| = O(g_k²) [P given (H-ev)].
- The rate of the non-Gaussian remainder is not set by evenness. It is the δ(γ) of the input (NT-loc) of §4. Balaban's printed size of the vertex term is O(g_k^{1−β}) (p. 357 [V]); formal parity suggests O(g²).
- Theorems NT-G, NT-F, NT-IV need only a small remainder (SOURCES_L1_NT_VERIFY C2). So evenness is not load-bearing for (NT).

## 3. Task 2: the fourth mixed source derivative, from the sourced chain

### 3.1 The identity [P]
log Z is holomorphic near the real t-axis (Z > 0 there). Since ∂_{t_i}log Z = ⟨Σ_p f_i(x_p)P_p⟩_t, the fourth mixed derivative at t = 0 is the joint cumulant of the four smeared plaquette sums. A joint cumulant of order ≥ 2 does not change when constants are added, so P_p may be replaced by φ_p = P_p − c_ε:
  S^T_{4,ε}(F_d) = ∂_{t_1}∂_{t_2}∂_{t_3}∂_{t_4} log Z(t)|_{t=0}.
Four-source part. For A ⊂ {1, 2, 3, 4} let t_A have t_i = 0 for i ∉ A. Put h^{(4)}(t) := Σ_A (−1)^{4−|A|} log Z(t_A). Every term with |A| < 4 is independent of some t_i, so ∂⁴h^{(4)}(0) = ∂⁴log Z(0). And h^{(4)}(t) = 0 whenever some t_i = 0 [P].

### 3.2 Localization on polymers that touch all four supports [P given the polymer form]
Polymer form of log Z [R to Theorem L1-E (SOURCES_L1_E §7, VERIFY §12) and R-043 (SOURCES_FX_D §5)]: up to an f-independent constant,
  log Z(t) = Σ_{j ≤ K} Σ_{X∈D_j} w^{(j)}(X; f_t) + Σ_X K_fin(X; f_t),
where w^{(j)} are the all-small-field contact terms (D3 (L5)), and K_fin are the activities of the final Mayer expansion and of the unit-scale integral; the latter contain the large-field activities (R-terms, B-terms, e-terms of D3 (L4), T′ numerators) and the small-field unit-scale terms (A_K^f with its E- and V-terms). The f-dependence of the field-dependent terms of the effective actions enters log Z only through these later integrations. Each term depends on f only through f|_X (S1(c)^J, locality).
For one term K(X; ·) put Δ_4K(X; t) := Σ_A (−1)^{4−|A|}K(X; f_{t_A}). If X misses some S_i, then K(X; f_{t_A}) does not depend on t_i and Δ_4K(X; ·) ≡ 0. So
  h^{(4)}(t) = Σ_{X : X∩S_i ≠ ∅ for i = 1..4} Δ_4K(X; t),  |Δ_4K(X; t)| ≤ 16 sup|K(X; ·)|.

### 3.3 Cauchy in the four sources on the S1 polydisc [P given S1]
Let K(X; ·) be holomorphic on P_s(X) with |K| ≤ b(X). Then Δ_4K(X; t) is holomorphic on the polydisc |t_i| < R(s, d) of §1, bounded by 16b(X), and the Cauchy formula in each t_i gives |∂⁴Δ_4K(X; 0)| ≤ 16b(X)R(s, d)^{−4}. The sum over X converges locally uniformly (next paragraph), so the derivative passes under the sum (Weierstrass):
  |S^T_{4,ε}(F_d)| ≤ 16 R(c_*r, d)^{−4} Σ_{X touching S_1..S_4} b(X).    (3.1)
Polymer sum [P given the count #{X ∈ D_j: X ∋ □, d_j(X) = n} ≤ e^{c_0n} (FX4, Step D count) and κ > c_0 + 1]. A tree that meets four sets pairwise ≥ 3d/4 apart has length ≥ ½·3·(3d/4) = 9d/8 (minimal spanning tree ≥ 3·(3d/4), Steiner ratio ≥ ½). (a) Scales with Mλ_j ≤ d: d_j(X) ≥ 9d/(8Mλ_j) − 2, and ≤ C(1 + θ_*d/(Mλ_j))⁴ cubes meet S_1; the scale-j sum is ≤ C(d/(Mλ_j))⁴exp(−(κ − c_0)(9d/(8Mλ_j) − 2)), and the sum over these scales is ≤ C′. (b) Scales with Mλ_j > d: there are at most 2 + log_L(M/d) of them, each with ≤ 16 root cubes and a sum ≤ 16Σ_ne^{(c_0−κ)n}. So Σ_X b(X) ≤ max(E_0, B_0, 1)C_Σ(d), C_Σ(d) := C″(2 + log_L(M/d)), free of K, ε, ℓ.
Consequence [P given S1, R-043]: |S^T_{4,ε}(F_d)| ≤ U(d) := 16max(E_0, B_0, 1)C_Σ(d)R(c_*r, d)^{−4}, uniform in ε. This is an upper bound of the R-045 (S) type. It contains no power of g.

### 3.4 The leading Gaussian term at each scale, and its sum
(a) One step [R to SOURCES.md §2.4 (a)–(b) and R-016 (D2 Lemma 3.1)]. At step j, with the transferred source f̃ = Z_jf, the weighted fluctuation form is ½⟨B, Δ^{(w)}B⟩, Δ^{(w)} = Δ^{(u_j)} − Δ^{(f̃)}. After the square is completed, the f-dependent Gaussian part at background U is
  G_j(f; U) = −½ log det(1 − g_j²K_{f̃}) + ½⟨J_{f̃}, (Δ^{(w)})^{−1}J_{f̃}⟩,  K_f := C_j^{1/2}Δ^{(f)}C_j^{1/2}.
With X := g_j²Σt_iK_{f̃_i} and −½ log det(1 − X) = ½Σ_n tr Xⁿ/n, the coefficient of t_1t_2t_3t_4 is (g_j⁸/8)·4·Σ_{6 cyclic orders} tr(K_aK_bK_cK_d) = g_j⁸Σ_{3 unoriented 4-cycles} tr(K_aK_bK_cK_d) [P; the K_i are real symmetric, so a cycle and its reverse give the same trace]. This is the scale-j ring. The J-term is quadratic in f at fixed U; it gives four-source terms only after U is integrated at later steps. So the scale-j rings alone are not the full ring; the cross-scale terms come from the J-terms and from the U-dependence of K_f.
(b) Sum over scales [P-sketch]. Let 𝒢 be the Gaussian comparison theory: step j integrates a fluctuation with covariance g_j²C_j at the trivial background, with the source Z_jf in the quadratic weight, no vertices, no cuts. Stepwise Gaussian integration is exact. So the sum over j of the four-source Gaussian parts of 𝒢 equals Ring_RG(F_d): the joint fourth cumulant of the four sums Σ_pf_i(x_p)P_p^{(2)} in the Gaussian lattice field with covariance Σ_jg_j²Γ_j (Γ_j the scale-j part of the free lattice propagator in Balaban's decomposition), each source multiplied by its transfer factor.
(c) Ring_RG against Lead(d). Three factors.
 (c1) Running coupling [P-sketch]: Ring_RG = g_k⁸Ring_lat(1 + O(g_k²)), with Ring_lat the ring of the propagator Σ_jΓ_j and unit coupling. Reason: the ring is multilinear in its four propagators; g_j²/g_k² − 1 = O(g_k²|j − k|) by |β_j| ≤ M_β (R-040) along the trajectory; the scale-j weight of the ring decays super-exponentially for λ_j ≪ d and geometrically for λ_j ≫ d, so Σ_j|j − k|·weight_j converges.
 Numerics [V, numerics/nt4_scales.py, continuum heat-kernel model of the scale decomposition, d = 1]: (i) w ≡ 1 gives κ_4(square) = 27648.000000 (exact value 27648). (ii) Removing the scales λ < 0.1d changes κ_4 by −1.8·10^{−8}; λ < 0.2d by −18%; λ < 0.4d by −99%. (iii) Removing λ > Λd changes it by −2.0·10^{−4}, −3.4·10^{−6}, −5.5·10^{−8}, −8.7·10^{−10} for Λ = 2, 4, 8, 16 (decay ≈ Λ^{−6}). So the ring is generated at λ ∈ [0.1d, 2d], i.e. at O(1) layers around k(d). (iv) One-loop running 1/g²(λ) = u_k − (22/(24π²))ln(λ/d) gives Ring_RG/(g_k⁸Ring) − 1 = −0.4105/u_k, −0.4161/u_k, −0.4189/u_k, −0.4203/u_k, −0.4211/u_k for u_k = 10, 20, 40, 80, 160. So the correction is −0.42g_k² + O(g_k⁴), as (c1) states.
 (c2) Transfer [R, §2.4]: each source carries Z_j = 1 + O(g_k) for the O(1) layers j around k(d); the product of four is 1 + O(g_k), or 1 + O(g_k²) under (H-ev).
 (c3) Lattice and torus [P-sketch]. For |x| ≥ 3d/4 the lattice Green function is G(x)(1 + O(ε²/|x|²)) [R, standard asymptotics of the lattice Laplacian]. At Gaussian level P_p^{(2)} is the continuum density at the plaquette centre up to O(ε²∂²) terms. The Riemann sum over plaquette centres of the smooth bump has relative error O((ε/θ_*d)²). On the torus, the image sum and the zero-mode subtraction change ∂∂G at |x| ~ d by O(ℓ^{−4}), a relative O((d/ℓ)⁴); the heat-kernel cut of (iii) gives Λ^{−6}. So VERIFY §7's (d/ℓ)² is a safe upper form. Gauge zero modes of the torus are not treated here [I].
Proposition NT4-L (leading term) [P-sketch, given R-037, R-040]:
  Ring_RG(F_d) = Lead(d)(1 + O(g_k) + O((ε/θ_*d)²) + O((d/ℓ)²)),
with O(g_k) → O(g_k²) under (H-ev).

### 3.5 The remainder, class by class
Rem(d) := S^T_{4,ε}(F_d) − Ring_RG(F_d) is the sum over X touching S_1..S_4 of the four-source parts of the terms of §3.2, minus their 𝒢-parts.
(i) Large-field sector: o(Lead) uniformly in ε [R]. These terms carry a large-field factor: R-terms g_m^{κ_0}e^{−κd} (CMP 119 (2.31) [V], κ_0 free to be large); fine R-terms and T′ numerators exp(−p_0(g_m)) per term (CMP 122 II (1.89), (1.100), via SOURCES_FX_D l. 10 and §5.2); e-terms are large-field activities paid by the same budget (SOURCES_D3 (L4), item (vii)); B-terms sit next to large-field regions (CMP 119 p. 260 [V]) and are summed inside the same large-field geometries [I: that each B-term in the final expansion carries the factor exp(−p_0(g_m)) of its region]. Their radius is c_*r and the same polymer sum applies. Since g_m ≤ g_K = g for all m and p_0(·) decreases in g, (3.1) gives
  |Rem_LF(d)| ≤ 16C_Σ(d)R(c_*r, d)^{−4}max(g^{κ_0}, e^{−p_0(g)}).
With Lead(d) ≥ (81/8)π^{−8}g_k⁸d^{−16} and u_k ≤ g^{−2} + B′(1 + log_L(1/d)) (L-001 (c′), as in NT-G step (3)):
  |Rem_LF(d)|/Lead(d) ≤ C_LF(d)·max(g^{κ_0−8}, g^{−8}e^{−p_0(g)}),  C_LF(d) := (128/81)π⁸C_Σ(d)R(c_*r, d)^{−4}d^{16}(1 + γ²B′(1 + log_L(1/d)))⁴.
With κ_0 ≥ 9 and p_0 > 1 (canon N-410 forces p_0 > (d + 5)r + ν_I + 4, so p_0 ≥ 18 in dimension 4), e^{−p_0(g)} = g^{2A_0(log g^{−2})^{p_0−1}} is smaller than every power of g, and the ratio tends to 0 as γ → 0, uniformly in K, ε, ℓ. [R to CMP 119 (2.31), R-043 (FX activity bounds), and the [I] item on B-terms.]
(ii) Small-field sector: NOT shown to be o(Lead) [P]. Classes E, V, w and the small-field unit-scale terms have bounds E_0e^{−κd_j(X)} (V: times λ_j^{4+α}) on the radius-r polydisc, with no power of g. (3.1) gives |Rem_SF(d)| ≤ 16E_0C_Σ(d)R(r, d)^{−4}. For d ≤ 1, R(r, d) = ρ_1(θ_*d)⁵/(2‖∇ρ‖_∞) (since ‖ρ‖_∞ ≤ ‖∇ρ‖_∞ and ρ_1 ≤ r/(4C_hM)). Against Lead(d) ≤ (3/16)(4π²)^{−4}T_4(F_{1,θ_*})g_k⁸d^{−16}:
  16E_0C_Σ(d)R(r, d)^{−4} / Lead(d) ≥ c(θ_*, ρ, ρ_1)E_0C_Σ(d)·d^{−4}·g_k^{−8}.
The bound exceeds the leading term by a factor of order g_k^{−8}d^{−4}, and the factor grows as γ → 0. So the verified bounds do not make the small-field remainder small relative to Lead. They do not even make it O(Lead). Two defects cause this:
 (D1) Absolute source radius. S1 is stated on ‖ζ‖_∞ < r, ‖∇ζ‖_∞ < ρ_1/2, with r ≤ r_0 ≤ 1/8 fixed (canon N-490). The source enters every small-field term through the relative change g_j²f of the weight: the Gaussian part through g_j²K_f (§3.4 (a)), the R-operation only through ω = g_j²w (SOURCES_D3_NEW4, Q-050). The true four-source part on the radius-r polydisc is of size g_j⁸r⁴ times O(1). The bound E_0 does not see the g_j⁸. Each Cauchy derivative on the absolute radius therefore loses a factor g_j^{−2}.
 (D2) No one-loop split. b_E = E_0e^{−κd} bounds the one-loop determinant (which contains the ring) and the higher-loop part together. Even on a relative radius r/g_j², Cauchy would give a bound of order g_j⁸E_0, the same order as Lead, not smaller.
Balaban's printed bounds share both defects (SOURCES_L1_NT §6 O2; VERIFY 5.3). This is the obstruction of O2, now in numbers.
(iii) Source transfer and running coupling: inside Proposition NT4-L, O(g_k) [R] and O(g_k²) [P-sketch].
(iv) Lattice and torus: inside Proposition NT4-L, O((ε/θ_*d)²) and O((d/ℓ)²) [P-sketch].

## 4. Task 3: (NT4) proved relative to which inputs

### 4.1 The weakest added input
 (NT-loc) There is δ(γ) with δ(γ) → 0 as γ → 0 such that, for every K, every j ≤ K and every small-field term K(X) (classes E, V, w, and the small-field unit-scale terms) with X touching S_1, …, S_4, the non-Gaussian four-source part Δ_4K^{nG}(X; t) := Δ_4K(X; t) − Δ_4K^𝒢(X; t) is holomorphic on the polydisc |t_i| < g_j^{−2}R(r, d) and bounded there by δ(γ)b(X). (K^𝒢(X) is the term of the comparison theory 𝒢 of §3.4 (b) on the same X.)
A sufficient pair [P: (S1-rel) gives the domain; (S1-G) and |Δ_4K^{nG}| ≤ 16 sup|K^{nG}| give the bound with δ = 16δ′]:
 (S1-rel) Theorem L1-E for the small-field classes holds with the source radius r g_j^{−2} and gradient radius ½ρ_1g_j^{−2} for terms born at scale j, with the same bounds b_T. (A source of size r u_j is a relative change ≤ r at every scale i ≤ j, because u_i ≥ u_j.)
 (S1-G) On that domain each small-field term splits as K = K^𝒢 + K^{nG} with |K^{nG}| ≤ δ′(γ)b(X), δ′ → 0.
(S1-rel) + (S1-G) is a precise form of SOURCES.md §2.5 (E14-a) + (E14-f), extended to four sources: H-101 (E14-f). Neither is proved [N]. Plausibility [I]: the chain's own conditions on r are relative (5γ²r ≤ ½, θ_W ≤ 6.5γ²r, N3 (a) 3r + (3/2)τ < g^{−2} − γ^{−2}); for the R-ratio radius the L-165 condition |σ_W| ≤ ‖ζ‖Φ(γ) would allow only a polylog-reduced relative radius, but R-ratios are in the large-field sector, which needs no relative radius. Balaban's vertex bound O(g_k^{1−β}) (p. 357 [V]) suggests δ′(γ) = O(γ^{1−β}).

### 4.2 Theorem NT4-C (conditional four-source extraction) [P given the inputs listed]
Inputs: Theorem L1-E with its list (R-035 as reduced: R-013, R-016, R-024, R-036, R-037, R-039, R-040, R-041, R-042, R-044, R-046, Q-050, L-165 with γ ≤ γ_Φ(M), K-001, K-011, K-014, K-017, (J-c)/(J-σ) as amended by SOURCES_JC_SIGMA_VERIFY and SOURCES_A_SIGMA_STAR_VERIFY, and the residue (W6*)); R-043; L-001 (c′); κ_0 ≥ 9; (NT-loc); Proposition NT4-L [P-sketch]; the [I] item on B-terms in §3.5 (i).
Statement. For every d ∈ ]0, 1] there are C_5(d), C_6 < ∞ such that for all K, all g ∈ ]0, γ]:
  |S^T_{4,ε}(F_d) − Lead(d)| ≤ Lead(d)·[ C_5(d)(δ(γ) + max(γ^{κ_0−8}, γ^{−8}e^{−p_0(γ)})) + C_6(g_k + (ε/θ_*d)² + (d/ℓ)²) ].
Proof. Split S^T_4 = Ring_RG + Rem_LF + Rem_SF (§3.5). Ring_RG: Proposition NT4-L. Rem_LF: §3.5 (i); the map g ↦ max(g^{κ_0−8}, g^{−8}e^{−p_0(g)}) is increasing near 0, so g may be replaced by γ. Rem_SF: by (NT-loc) and Cauchy on |t_i| < g_j^{−2}R(r, d), |∂⁴Δ_4K^{nG}(X; 0)| ≤ δ(γ)b(X)g_j⁸R(r, d)^{−4}; sum over X by §3.3 with g_j ≤ g; divide by Lead(d) as in §3.5 (i): |Rem_SF|/Lead ≤ (128/81)π⁸δ(γ)E_0C_Σ(d)R(r, d)^{−4}d^{16}(1 + γ²B′(1 + log_L(1/d)))⁴. Take C_5(d) as the larger of this coefficient and C_LF(d). ∎
Corollary. (NT4)_{d_0} in the rate-free form holds: given d_0 ∈ ]0, 1], choose γ so small that C_5(d_0)(δ(γ) + …) ≤ 1/8 (a new upper bound on γ at canon N-470, with d_0 a fixed number chosen first), then d_0/ℓ small and K_0(d_0) so that C_6((ε/θ_*d_0)² + (d_0/ℓ)²) ≤ 1/8; g_k ≤ γ handles the last term. Then S^T_{4,ε}(F_{d_0}) ≥ ½Lead(d_0), which is the form that Theorem NT-G uses (VERIFY 4.4 and §7, (NT4w-G)) [P given the inputs]. The rate g_k of VERIFY §7 is obtained only if δ(γ) is replaced by O(g_k), which (NT-loc) does not give.

### 4.3 Why only (NT4)_{d_0}, not (NT4) on ]0, d_1]
C_5(d) grows like d^{−4}log(1/d) as d → 0 (R(r, d) ∝ d⁵ from the gradient entry, against Lead ∝ d^{−16}). At fixed γ the bound fails for small d. So Theorem NT-F, which needs (NT4) for all small d at one γ, is not obtained. The loss comes from the gradient condition ‖∇ζ‖_∞ < ρ_1/2 of the S1 polydisc in physical units. A sup-norm-only source radius for the small-field Gaussian parts (true for −½ log det(1 − g_j²K_f), which needs only ‖f‖_∞) would remove it for 𝒢; for the full small-field terms it is [N]. Theorem NT-IV needs in addition the ℓ-uniform local form of FX Step B (SOURCES_L1_NT O5); nothing here changes that.

### 4.4 Without (NT-loc): the obstruction, stated exactly
From the verified inputs alone, §3 gives: the identity and localization [P]; the upper bound U(d) uniform in ε [P given S1, R-043]; the leading term with its corrections [P-sketch]; the large-field remainder o(Lead) [R]. It does not give any bound on the small-field remainder that is smaller than Lead: the best is the factor c·g_k^{−8}d^{−4} of §3.5 (ii). The missing statements are the relative source radius (D1) and the one-loop split (D2) of the small-field activities, i.e. (NT-loc).

## 5. Proposed status of (NT) and (NT4), and grade table

Proposed status (this file edits nothing else; for a later editor, after a verifier):
- (NT) = H-081 (B-NT) / H-101 (E14-f): OPEN, unchanged in kind. Not needed for Target 1 or Target 2 (TRUST_LEDGER l. 104 stays true). Theorem NT-G stays [P given (NT4)_{d_0}] (SOURCES_L1_NT_VERIFY 4.4).
- (NT4): OPEN, REDUCED. (NT4)_{d_0} in the rate-free form S^T_{4,ε}(F_{d_0}) ≥ ½Lead(d_0) is PROVED RELATIVE TO {Theorem L1-E list (R-035 as reduced, with residues (W6*) and the (J-σ)/(A-σ*) items of the sigma files), R-043, L-001 (c′), κ_0 ≥ 9, the B-term reading of §3.5 (i) [I], Proposition NT4-L [P-sketch], and one new input (NT-loc)}. (NT-loc) ⇐ (S1-rel) + (S1-G), a precise form of H-101 (E14-f) for four sources. (NT4) on ]0, d_1] (needed by NT-F) is not obtained: the reduction loses d^{−4} through the gradient radius (§4.3).
- Rate. The O(g_k) part of the remainder (source transfer) is [R] to R-037/R-040 via Lemma N3. O(g_k²) needs (H-ev), which is open. The evenness of β_j is formal only [P-sketch]; it is not load-bearing.
- No new block for Target 2. The only new inputs are (NT-loc) and, for the better rate, (H-ev).

| Item | Grade | Where |
|---|---|---|
| Page facts CMP 109 pp. 255, 258, 264, 298; CMP 119 p. 260; CMP 122 II pp. 356–357 | [V] | §2.1 |
| Only g² is a parameter; thresholds defined for g > 0; "even" = regularity at 0 | [P] | §2.2 (a) |
| Charge conjugation is a constant gauge transformation for SU(2); no g-information | [P] | §2.2 (b) |
| Exact invariance under (g_k, B′) ↦ (−g_k, −B′) with thresholds in abs(g_k) | [P] (vacuous for regularity) | §2.2 (c) |
| Formal evenness of E^{(j)}, β_j (leg count) | [P-sketch] | §2.3 |
| Cut tails beyond all orders in g | [I] | §2.3 |
| (H-ev): β_j′ = O(g) with history derivatives | [N] open | §2.3 |
| Z_k − 1 = O(g_k) from Lemma N3 | [R] R-037, R-040, N3 conditions | §2.4 |
| Z_k − 1 = O(g_k²) | [P given (H-ev)] | §2.4 |
| S^T_4 = ∂⁴log Z; four-source part h^{(4)} | [P] | §3.1 |
| Localization on X touching all four supports | [P given the polymer form, R to L1-E + R-043] | §3.2 |
| Cauchy bound (3.1); polymer sum C_Σ(d) uniform in K, ε, ℓ | [P given S1 and the FX4 count] | §3.3 |
| Upper bound U(d), uniform in ε | [P given S1, R-043] | §3.3 |
| Scale-j ring coefficient g_j⁸Σ_{3 cycles}tr(KKKK) | [P] | §3.4 (a) |
| Sum over scales of 𝒢 = Ring_RG | [P-sketch] | §3.4 (b) |
| Ring_RG = g_k⁸Ring_lat(1 + O(g_k²)) | [P-sketch]; [V] numerics −0.42g_k² | §3.4 (c1) |
| Ring generated at λ ∈ [0.1d, 2d]; coarse tail ~ Λ^{−6} | [V] numerics (continuum model) | §3.4 (c1) |
| Lattice O((ε/θ_*d)²), torus O((d/ℓ)²) (images give (d/ℓ)⁴) | [P-sketch]; gauge zero modes [I] | §3.4 (c3) |
| Proposition NT4-L | [P-sketch] given R-037, R-040 | §3.4 |
| Large-field remainder o(Lead), uniform in ε | [R] (B-term factor [I]) | §3.5 (i) |
| Small-field remainder not o(Lead) from verified bounds; factor g_k^{−8}d^{−4} | [P] | §3.5 (ii) |
| Defects (D1) absolute radius, (D2) no one-loop split | [P] | §3.5 (ii) |
| (NT-loc) ⇐ (S1-rel) + (S1-G) | [P] | §4.1 |
| (S1-rel), (S1-G), (NT-loc) themselves | [N] open; plausibility [I] | §4.1 |
| Theorem NT4-C and (NT4)_{d_0} rate-free | [P given the listed inputs] | §4.2 |
| (NT4) on ]0, d_1] (for NT-F) | [N]: d^{−4} loss | §4.3 |

## 6. Report (≤120 words)

β_j and the effective actions are even in g only formally: the substitution (g, B′) ↦ (−g, −B′) fixes every integrand, and charge conjugation is a gauge transformation. The needed bound β_j′ = O(g) is not printed and not in the project inputs. So the remainder rate is O(g_k), from Lemma N3. The fourth source derivative localizes on polymers that touch all four supports. Its Gaussian part sums to the RG-improved lattice ring, Lead(1 + O(g_k) + O((ε/d)²) + O((d/ℓ)²)). The large-field remainder is o(Lead). The small-field remainder is not: Cauchy on the S1 polydisc exceeds Lead by a factor of order g_k^{−8}d^{−4}. (NT4)_{d_0} follows from one new input (NT-loc). Status: (NT) OPEN; (NT4) OPEN, reduced to (NT-loc).

Page images in /tmp/nt4p.8p7l were deleted after use.
