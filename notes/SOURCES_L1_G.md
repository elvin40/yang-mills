# SOURCES_L1_G — class (b) items S-100, S-106, S-107, S-83 of OPEN_ITEMS_SWEEP

Date 2026-10-28. Author: Claude (Opus 5.5), derivation file, unverified. Ids follow IDS.md. Local lemma labels G-1 … G-4 belong to this file only.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were excluded from every grep. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Grades: [P] proved here, every step written; [P-sketch] proof outline, a step not written in full; [V] printed text seen on a page image in this session (pdftoppm -r 150, fresh /tmp folder, deleted after use); [R] reduced to a named input that stays open; [I] reading or inherited claim, not re-proved here.

## 0. Inputs and page images

Files read: OPUS_QUEUE.md l. 1–15; OPEN_ITEMS_SWEEP.md (items S-83, S-100, S-106, S-107; §3–§4); TRUST_LEDGER.md rows R-016 (Q-050 sentence), R-030, R-038, R-040–R-043, K-024, and both 2026-10-28 addenda; SOURCES_FX, FX_VERIFY, FX_O23, FX_D/O1/R2 (grep for radius), D4D5_VERIFY l. 28, B21_E14C(+VERIFY), B21_S(+VERIFY) (radius lines); SOURCES_D3 §0–§2 (P1)–(P7), (iv); D3_NEW4 §1–§3 and VERIFY; SOURCES_HBETA, HBETA_N3 + VERIFY, N3A (+VERIFY, grep), UN1 + VERIFY, D2C §3.2–§3.3, §5.2; SOURCES_T2_G2 §1–§4 and VERIFY (grep); SOURCES_SWEEP_E §S-82; SWEEP_DE_VERIFY §4.8; BETA_FP_H §1.

Page images read in this session [V]:
- CMP 98 p. 19 (PDF 3): (10)–(15), the gauge-covariance demand (11) "(Ū^u)(y, y′) = u(y)Ū(y, y′)u^{−1}(y′), or Ū^u = (Ū)^u".
- CMP 98 p. 24 (PDF 8): (43) k-th order average; "Ū^k_c, c ⊂ Ω^{(k+1)}, depends only on the bond variables U_b for b ⊂ B^k(c_−) ∪ B^k(c_+)"; "the property (11) is satisfied … (Ū^u)_c = u(c_−)Ū_cu^{−1}(c_+)".
- CMP 99 p. 406 (PDF 18): (3.78)–(3.81); analyticity of Q_j(U′U) in A for |A| < α_1(L^jη)^{−1}; (3.81) "|F_{2,j}(A)A′| ≤ O(1)α_1Q_j″|A′| on Λ_j, for Mα_0, α_1 sufficiently small".
- CMP 122 I p. 201 (PDF 27): (1.99)–(1.102); the R-denominator ∫dV′Γ_{Λ_i}δ_{G_i}(V′)χ(Λ_i)exp[−g_k^{−2}A(ζ_i, U_{k,X_i}(V′V_{Λ_i}))]; (1.101) χ(Λ_i) = χ({|(1/i)log V′(b)| < M_0ε_k for b ∈ Λ_i}).
- CMP 122 II p. 356 (PDF 2): (1.1); "Writing V′ = exp ig_kB′ …"; the domain factor χ({|B′| < M_0g_k^{−1}ε_k}).
- CMP 122 II p. 357 (PDF 3): (1.2)–(1.6); "|A_0|, |∇^ηA_0| < O(1)M^6R_kε_k"; (1.6) "< 3B_3M_0A_0²p_0²(g_k)exp(−R_k)(100M)^4"; "Λ is contained in a cube of the size 100M"; "it is enough to have an absolute bound, e.g., the number 1".
- CMP 122 II p. 358 (PDF 4): (1.7)–(1.11); "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}). This is an unessential change; it may result only in stronger restrictions on g_k, or γ."
- CMP 122 II p. 386 (PDF 32): (1.84)–(1.86).
- CMP 122 II p. 387 (PDF 33): (1.87)–(1.89); (1.88) "… ≤ κ_{j+1}(Z) − 2(1 + β_0)^{−1}p_0(g_{j+1}) + O(1)3(100M)^dR_{j+1}^{d+2} ≤ κ_{j+1}(Z), for p_0 large and γ small enough".
- CMP 122 II p. 390 (PDF 36): (1.97) tail, (1.98)–(1.102); (1.99) "|R′^{(k)}(X,(U,J))| ≤ O(1)c_1exp(−(1 + ½β)κd_{k,∪Y_i}(X))"; (1.100) "|R′^{(k)}(X,(U,J))| ≤ exp(−p_0(g_k))exp(−κd_k(X))"; c_1 = α^{1/3} for X′ meeting ∪Y_i.

Summary of results (details in §1–§4, statuses in §5):
- S-100: the coarsest-scale radius of H-191 (FX2) is no longer a separate input. Lemma G-1 [P relative to R-042, R-044, K-014 and the FX_O23 inputs]: every activity, at every scale of its constituents, is holomorphic on ‖ζ‖_∞ ≤ c_*r. This is ≥ τ_m(Γ) for every polymer. The fallback order 1 + η + 2/3 stays OS-admissible (D = 5/3 + 2η), with one gap for fine B′-terms that only the fallback has (§1.5).
- S-106: the H-237 (P5) Gaussian booking is not needed. Lemma G-2 [P relative to three readings]: the sourced linear vertex has the sup bound C(M)·δ_r·R_k(100MR_k)^4ε_k² on the domain of (1.2). This bound tends to 0 as g_k → 0. It is the method that Balaban prints for his own linear term in (1.5)–(1.6).
- S-107: the complex-c strip of (Hβ) is L-232 (Lemma N3) at τ_0 = r_0, already in row R-042. Lemma G-3 [P]: the D2C Cauchy steps need only the rectangle Q_{r_0}, not the disc |c| < 2r_0.
- S-83: (Gap_f) holds. Lemma G-4 [P relative to (Gap) at (T) and the three CMP 98/99 page facts]. The method is IMS localization with a local gauge per box.

## 1. S-100 (R-043): the H-191 (FX2) radius at the coarsest scale

### 1.1 The item
H-191 (FX2) (SOURCES_D4D5 l. 96) gives the activity a_m(Γ; f + ζ) of a polymer Γ with coarsest scale m a holomorphy domain {‖ζ‖_∞ ≤ τ_m(Γ), ‖∇ζ‖_∞ ≤ ρ_1/2}, τ_m(Γ) := c_τr/(E_0R̄_m^4|Γ|_m). D4D5_VERIFY l. 28 states the problem. A multi-scale polymer can contain an R-, B- or e-term built at a finer scale m′ < m. The D3 radius of that term is τ_{m′} ∝ R̄_{m′}^{−4} < τ_m. If this is the true radius, then the Cauchy loss of the fine term gives Gevrey order 1 + η + (loss), not 1 + η. So "(FX2) at the coarsest scale" was carried as an input of R-043, H-098 (E14-c), and R-045 (S).

### 1.2 Where the factor R̄_{m′}^{−4} comes from [I, verified elsewhere]
- SOURCES_D3 (iv) l. 136–140: Lemma D3.1 is applied to one positive denominator over a domain Y with n(Y) ≤ (100MR_m)^4 cubes. The perturbation is σ = σ_W + σ_E. The E-part has |σ_E| ≤ O(1)E_0(τ/r)|Y|. So |σ| ≤ ½ needs τ ≤ τ(Y) = c_τr/(E_0|Y|). "Propagation" passes the smallest input radius to every output.
- SOURCES_FX_VERIFY V5 (item 5) confirms that this is the only source of the R̄^{−4} loss. FX_O23 §1 repeats it.
So the caveat is true exactly when D3's model of the R-denominator is true.

### 1.3 The model is refuted by the printed denominator [V + P]
- CMP 122 I p. 201 (1.100) [V]: the R-denominator of a renormalizable component X_i is ∫dV′Γ_{Λ_i}δ_{G_i}(V′)χ(Λ_i)exp[−g_k^{−2}A(ζ_i, U_{k,X_i}(V′V_{Λ_i}))]. Its exponent is the bare Wilson action with the cut-off function ζ_i. It contains no E-, R-, or B-term.
- Hence σ_E = 0 in the true denominator [P from the image]. This is FX_O23 §3 (verified, FX_O23_VERIFY).
- The Wilson part: (1.101) [V] restricts V′ to |log V′(b)| < M_0ε_k on Λ_i. FX_O23 §4 (O2, verified) then gives |σ_W| ≤ τ·Φ(g_k), Φ(g) = C(M)g²p_0(g)²R(g)^4 → 0 as g → 0. The step "P_p ≤ O(1)ε_k² on supp χ(Λ_i)" is the inference N2 [I, carried in FX_O23 §4]. The complex shift |δw_k| ≤ (3/2)τ is N3 = R-042 [R].
- So, for γ ≤ γ_Φ(M), every (1.100) denominator D_i obeys |D_i(f + ζ)| ≥ ½D_i(f) for real f, ‖ζ‖_∞ ≤ c_2r (c_2 := ½, r ≤ 1), with no dependence on |Λ_i|, k, or ε [P given N2, N3; Lemma D3.1].

### 1.4 Lemma G-1 (uniform source radius) [P relative to the inputs listed]
Inputs: (i) FX_O23 O2 as in §1.3 (N1 positivity [P], N2 [I], N3 = R-042 [R], N4 [P]); (ii) FX_O23 O3 (verified): every upper bound (1.73), (1.79), (1.89), (1.92), (1.97), (1.100) of CMP 122 II holds on ‖ζ‖_∞ ≤ r, with γ_0 → γ_0′ ≥ γ_0/4 and O(1) → 2·O(1); (iii) K-014: the main R-step form (1.90)–(1.98), so the (1.103) division by T′_k(Y_i)1 (item O4) does not occur; (iv) the small-field E-terms are holomorphic on S_r(X) (D2 (H3), D3 (c) l. 171) [I]; (v) D3 (iv) "Propagation": each RG step is holomorphic in its input activities, so an output is holomorphic wherever all its inputs are, with the step's bounds [R: R-044 (W4), as in D3 (iv)].
Statement. Put c_* := min(c_2, 1, ½) = ½. For every scale m′ ≤ K, every E-, R′-, B′- and e-term built at scale m′ is holomorphic in ζ on P := {‖ζ‖_∞ ≤ c_*r, ‖∇ζ‖_∞ ≤ ρ_1/2}, with its printed bound up to the constant changes in (ii). The same holds for every activity a_m(Γ; ·) of (FX) Steps A–B. Since R̄_m ≥ 1 and |Γ|_m ≥ 1, c_*r ≥ τ_m(Γ) whenever c_τ ≤ c_*E_0. So H-191 (FX2) holds with the coarsest-scale radius for every polymer, whatever the scales of its constituents.
Proof.
1. Scale-m′ R-step. By (1.71)–(1.72) and (1.90)–(1.98) [V p. 390 for (1.98)–(1.100)], an R′- or B′-term is a convergent sum of products of three kinds of factors: numerators T′_k(X_j) (holomorphic on ‖ζ‖ ≤ r with the upper bound (1.73), by (ii)); ratios with (1.100) denominators (holomorphic and non-zero on ‖ζ‖ ≤ c_2r, by §1.3); and Mayer links of local terms V(Y) (holomorphic on ‖ζ‖ ≤ r by (iv) and by the induction hypothesis for earlier R-terms).
2. On P every factor obeys the bound used in (1.92)–(1.97), with the constants of (ii). So the series (1.98) converges uniformly on P, by the same estimate (1.97) [V p. 390]. A uniform limit of holomorphic functions is holomorphic (Weierstrass). So R′^{(k)}(X), B′^{(k)}(X) are holomorphic on P with (1.99)–(1.100) [V] up to the constants of (ii).
3. The e-terms (D3 (L4)) are sums of R^{(j)}(Λ_j, 1; f) and −w^{(j)}(X; f). Both kinds are covered by steps 1–2 and by (iv).
4. Later steps. By (v), outputs of later steps are holomorphic on P. No step uses a Cauchy estimate in ζ, so the radius c_*r does not shrink with the number of steps. Induction over the K steps closes the claim. The gradient radius ρ_1/2 is the D2 radius of the E-terms; the R-step does not change it.
5. (FX) Steps A–B (SOURCES_FX §6.1–§6.2) are a final R-step with Z″ = ∅ and a unit-scale cluster expansion. Steps 1–2 apply to them verbatim. ∎
Consequence. The premise of D4D5_VERIFY l. 28 ("a fine constituent has radius ≤ τ_{m′} ∝ R̄_{m′}^{−4}") fails once O2 holds. The order 1 + η of D4D5 §5.1 then needs no extra radius input. The R̄_m^4|Γ|_m factor in τ_m(Γ) becomes a free choice: D4D5 Steps 3–4 may keep it (it is ≤ c_*r) and lose nothing.
Residue of Lemma G-1: N2 [I], N3 = R-042 [R], (v) = R-044 [R], K-014 (convention). All four are already inputs of R-043. No new input.

### 1.5 The fallback 1 + η + 2/3, kept as a back-up [P for R′-terms; one gap for B′-terms]
The fallback is needed only if N2 or N3 fails, because then O2 fails and the D3 radius returns.
- Loss for a fine R′-term [P]. Take a term built at scale m′ with the D3 radius c_τr/(E_0(100MR_{m′})^4), hit by k mixed derivatives (multi-index (1, …, 1)). Cauchy gives the factor (C(100M)^4R_{m′}^4)^k. (1.100) [V p. 390] gives the bound exp(−p_0(g_{m′})). (1.88) [V p. 387] needs 2(1 + β_0)^{−1}p_0(g) ≥ O(1)3(100M)^dR(g)^{d+2}, so R^4 ≤ (C(M)p_0(g))^{4/6} in d = 4. With x := p_0(g_{m′}):
  sup_{m′}(CR_{m′}^4)^k e^{−p_0(g_{m′})} ≤ C′^k sup_{x>0} x^{2k/3}e^{−x} = C′^k(2k/3)^{2k/3}e^{−2k/3} ≤ C″^k(k!)^{2/3}.
  This is FX_VERIFY V5, now with (1.88) and (1.100) read on the images.
- Gap for B′-terms [obstruction stated exactly]. (1.99) [V p. 390] gives a B′-term whose domain meets ∪Y_i only the factor c_1 = α^{1/3}. It has no factor exp(−p_0(g_{m′})). Then sup_{m′}(CR_{m′}^4)^kα^{1/3} is not bounded uniformly in ε, because R_{m′} → ∞ as g_{m′} → 0. So the fallback, as written, covers R′- and e-terms only.
  Weakest repair [P-sketch]: such a B′-term is a Mayer partner of the fixed large-field component Y_i. In the final polymer of (FX) Step A it sits next to Y_i's factor exp(−½γ_0A_1²p_0²(g_j)(d′_j + 1) − 2p_0(g_j)) of (1.79) [V there, FX_VERIFY V1]. Charging the Cauchy loss to this factor gives (CR^4)^k e^{−cp_0²} ≤ C^k(k!)^{1/3}. Not written in full: the factor of Y_i is needed by later steps, so one must split it, for example as e^{−p_0²/2}·e^{−p_0²/2}, and check that (1.80)–(1.88) still close with half the factor (they need "p_0 large", so this is plausible).
- OS admissibility [P given the verified bridge]. ASSEMBLY_N1 l. 141: Gevrey order o of (S) gives σ_n = A(n!)^{o+η} with s = 6 (order 1 + η gives D = 1 + 2η; order 2 + η gives D > 2). With o = 1 + η + 2/3: D = 5/3 + 2η. The OS linear growth condition in the form of ASSEMBLY_N1 l. 150 asks only "σ_n ≤ A(n!)^D for fixed A, D" with fixed s. So the fallback stays admissible, and in fact D < 2 for η < 1/6.

### 1.6 Result for S-100
- The coarsest-scale radius is no longer an input of R-043, H-098 (E14-c), or R-045 (S). Lemma G-1 proves it [P] relative to N2 [I], N3 = R-042 [R], (W4) = R-044 [R], and K-014. These are already in the input list of R-043.
- Order 1 + η holds whenever O2 holds. The fallback 1 + η + 2/3 is OS-admissible (D = 5/3 + 2η). The fallback has a B′-term gap with a stated repair [P-sketch]. The fallback is not used on the main route.
- Proposed text for R-043 in §5.

## 2. S-106 (Q-050): the H-237 (P5) Gaussian booking in D3

### 2.1 The item
SOURCES_D3 (P5) l. 70 adds to the R-denominator (CMP 122 II (1.2)) a linear term in B′ caused by the source. D3 says a sup bound would cost O(r)(100MR_k)^4 and would force r ≤ c(100MR_k)^{−4}, which depends on ε. D3 proposes to "book it as one more vertex in the Gaussian expansion of (1.2)" and leaves this [reduced]. SOURCES_D3_NEW4 §3 (verified) writes the vertex exactly,
  L_f(B′) := g_k^{−1}⟨DH_{1,k}B′, ζ_0(ω − 1)η^{−2}Im ∂U_0⟩,   ω := g_k²w on Λ,   (2.1)
and notes that its coefficient carries ε_k. NEW4 does not redo the booking (NEW4 [R](c)). The ledger (row R-016, Q-050 sentence) keeps "H-237 (P5) Gaussian booking still [reduced] in D3".

### 2.2 Page facts [V]
- (F1) CMP 122 II p. 356: the denominator integral runs over B′ with V′ = exp ig_kB′ and the factor χ({|B′| < M_0g_k^{−1}ε_k}). So |B′(b)| < M_0g_k^{−1}ε_k on the domain.
- (F2) p. 357: "doing a proper gauge transformation we represent it on the domain Z as exp iξA_0, with A_0 satisfying the bound |A_0|, |∇^ηA_0| < O(1)M^6R_kε_k", with the compensating adjoint gauge transformation on B′.
- (F3) p. 357: "Λ is contained in a cube of the size 100M".
- (F4) p. 357, (1.5)–(1.6): Balaban bounds his own linear term (1/g_k)⟨DH_{1,k}B′, (1 − ζ_0)η^{−2}Im ∂U_0⟩ by a sup bound on this domain, "(1/g_k)B_3M_0A_0p_0(g_k)exp(−δ dist(Ω_k, Λ))3ε_k|Λ| < 3B_3M_0A_0²p_0²(g_k)exp(−R_k)(100M)^4", and adds "it is enough to have an absolute bound, e.g., the number 1." So the printed method for a linear term is a sup bound, not a Gaussian vertex.
- (F5) p. 358: on G^c-valued U "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k})".

### 2.3 Lemma G-2 (sup bound of the sourced vertex) [P relative to the readings named]
Readings and inputs:
- (H) |(DH_{1,k}B′)(p)| ≤ C_HB_3 sup|B′| with C_H = O(1)(d) [I: the residue reading "‖H_{1,k}‖ ≤ O(1)B_3" of Q-050, in local sup form; (F4) uses the same factor B_3M_0 against the same domain].
- (Z) 0 ≤ ζ_0 ≤ 1 [I: residue reading of Q-050].
- (W) On Λ, |w − g_k^{−2}| ≤ δ_r := 4r + 2C_hMρ_1λ_k ≤ (9/2)r, using ρ_1 ≤ r/(4C_hM) (canon) and λ_k ≤ 1 [I: SOURCES_D3R Lemma P3; NEW4 §1 uses it as θ = γ²δ_r after g_k² ≤ γ²]. So |ω − 1| = g_k²|w − g_k^{−2}| ≤ g_k²δ_r. For complex f + ζ, ‖ζ‖ ≤ τ: |ω − 1| ≤ g_k²(δ_r + (3/2)τ) [R: N3 = R-042].
- (C) |η^{−2}Im ∂U_0(p)| ≤ C_UM^6R_kε_k on Z, in the gauge of (F2) [P from (F2): the plaquette curvature of exp(iξA_0) is ∂A_0 + O(A_0²); NEW4 §3, verified].
Statement. Let ε(g) := A_0gp_0(g) (so ε_k = ε(g_k), CMP 119 (2.4) [I, as cited in FX_D_VERIFY]) and
  Ψ(g) := 6C_HC_UB_3M_0M^6(100M)^4·R(g)^5·ε(g)².
On the domain of (F1), for real f,
  |L_f(B′)| ≤ δ_r·Ψ(g_k),   (2.2)
and for complex f + ζ the same with δ_r → δ_r + (3/2)τ. Since R(g) ≤ C_R(log g^{−2})^{p_R} and p_0(g) = A_0(log g^{−2})^{p_0}, Ψ(g) ≤ C(M)g²(log g^{−2})^{2p_0+5p_R} → 0 as g → 0.
Proof. The pairing in (2.1) is a sum over plaquettes p of Λ ∩ supp ζ_0. By (F3) there are at most 6(100M)^4 of them; we use 6(100MR_k)^4 to also cover the CMP 122 I reading of D3 (domains in a cube of side 100MR_k). Per plaquette, by (F1) and (H), |(DH_{1,k}B′)(p)| ≤ C_HB_3M_0g_k^{−1}ε_k; by (Z) and (W), |ζ_0(ω − 1)| ≤ g_k²δ_r; by (C), |η^{−2}Im ∂U_0(p)| ≤ C_UM^6R_kε_k. The adjoint gauge change of (F2) is an isometry, so (F1) holds in that gauge. Multiply: g_k^{−1}·C_HB_3M_0g_k^{−1}ε_k·g_k²δ_r·C_UM^6R_kε_k = C_HC_UB_3M_0M^6δ_rR_kε_k². Sum over ≤ 6(100MR_k)^4 plaquettes. This gives (2.2). ∎
Why D3's worry does not occur. D3 (P5) used a coefficient "O(rg_k) per plaquette" with no smallness from Im ∂U_0. The true coefficient (2.1) has the factor |Im ∂U_0| ≤ C_UM^6R_kε_k from (F2). Together with |g_kB′| < M_0ε_k from (F1), the product is ε_k², and ε_k² = A_0²g_k²p_0(g_k)² beats (100MR_k)^4R_k.

### 2.4 Use in the R-step [P; one placement step P-sketch]
- Condition: choose γ so small that sup_{g≤γ}Ψ(g) ≤ ½. This is a γ-small condition depending on M, of the same type as γ_Φ(M) in FX_O23 §4. It is uniform in k, K, ε, and it puts no condition on r beyond r ≤ r_0 ≤ 1/8 (N3A). Then |L_f| ≤ (9/2)r·½ ≤ 9/32 < ½ for real f, and |L_{f+ζ}| ≤ ½ for τ ≤ r_0 (δ_r + (3/2)τ ≤ 6r_0 ≤ 3/4, so |L| ≤ 3/8).
- Real f: the rest of the denominator integrand is positive (D3 (ix), NEW4 §4 for the sourced Hessian). So D_f = D_f^{(0)}·e^{θ_f}, where D_f^{(0)} is the integral without L_f, and |θ_f| ≤ δ_rΨ(g_k) [P: mean value of e^{−L} against a positive measure].
- Complex f + ζ: take the real-f integrand, which contains e^{−L_f} and is positive, as the reference density. The complex perturbation is σ := σ_W + (L_f − L_{f+ζ}). By (W) the vertex difference has |ω_{f+ζ} − ω_f| ≤ (3/2)g_k²τ, so (2.2) gives |L_f − L_{f+ζ}| ≤ (3/2)τΨ(g_k) ≤ (3/4)τ. FX_O23 §4 gives |σ_W| ≤ τΦ(g_k) ≤ τ. So |σ| ≤ (7/4)τ ≤ 7/32 < ½ for τ ≤ r_0 ≤ 1/8, and Lemma D3.1 gives |D_{f+ζ}| ≥ ½D_f. The radius c_*r of Lemma G-1 is kept [P given N3].
- Placement [P]: θ_f is one number per renormalizable component, localized in Λ ⊂ X_i. It is not moved anywhere. It stays inside the ratio of (1.100) and is bounded with it, as Balaban bounds his own (1.6) term ("an absolute bound, e.g., the number 1"). The ratio then changes by the factor e^{θ_f} ∈ [e^{−9/32}, e^{9/32}]. (1.92) bounds each ratio factor by a constant, so this changes only an O(1) in (1.92)–(1.97). Those constants enter only through "p_0 large and γ small" (FX_VERIFY V5). No new estimate is used.
- G^c extension: by (F5), ε_k → O(α_{0,k} + α_{1,k}) with α_{i,k} = C_ig_k(log g_k^{−2})^{q_i} [I: CMP 119 (2.28), cited in FABLE_HARD (W-i) and SOURCES_A18_REGULAR]. Ψ keeps the factor g_k² and still tends to 0. So the γ-small condition survives, as Balaban says on p. 358.

### 2.5 Result for S-106
The Gaussian booking of H-237 (P5) is not needed. The vertex has the sup bound (2.2), the method Balaban prints in (1.5)–(1.6). Grade [P] relative to the readings (H), (Z), (W) and, for complex sources, N3 = R-042. The readings (H), (Z) and the G^c extension are the class (a) residue that OPEN_ITEMS_SWEEP already lists for S-106. No new canon condition: "sup_{g≤γ}Ψ(g) ≤ ½" is one more instance of "γ small enough, depending on M", which Balaban's order of constants allows (CMP 109 Thm 3: "The constant γ depends on all other constants" [text layer, l. 803–809, not imaged]).

## 3. S-107 (K-024): the complex-c strip of (Hβ)

### 3.1 The item
Row K-024 ends: "uses (Hβ): reduced for real c, complex-c strip open (SOURCES_UN1_VERIFY)". UN1_VERIFY §3: the gradient bound |∇f_k| ≤ (3/2)ρ_1 is a verified reduction for real c; "complex c (needed if the D2C Cauchy bounds use the complex disc |c| < 2r) is open (HBETA §3(c))". D2C §5.2 item (1) [I, read]: "Family (A) on |c| < 2r, uniformly in j ≤ K … For complex c it is SOURCES_HBETA §3(c) [open]. The Cauchy bounds in §3.2–§3.3 use this disc." So two questions: (a) which complex set do the D2C Cauchy bounds need; (b) is (Hβ) proved on that set.

### 3.2 Where D2C uses complex c [I, read: D2C §3.2–§3.3, §5.2]
- (3.3): the freezing error D_X carries Γ = E_0O(1)(Mλ_jρ_1/r)(1 + d_j(X))e^{−κd_j(X)}, a Cauchy estimate in the constant source with margin r (UN1 §1 l. 17: "the freezing error is a Cauchy estimate in the constant source c with margin r").
- (3.5): |κ_X(c_X) − κ_X(f(x))| ≤ (ρ_1λ_j/r)sup_{|c|<2r}|κ_X(c)|, with c_X and f(x) values of the scale-0 source, so real and in [−r, r].
- Both are first-derivative bounds at REAL centres c_0 ∈ [−r, r], followed by the mean value theorem on a real segment. No higher derivative and no centre with |Im c_0| > 0 is used.

### 3.3 Lemma G-3 (the strip suffices) [P]
Let Q_r := {c : |Re c| ≤ 2r, |Im c| ≤ r}. Let κ be holomorphic on a neighbourhood of Q_r. Then for real a, b ∈ [−r, r],
  |κ(a) − κ(b)| ≤ (|a − b|/r)·sup_{Q_r}|κ|.
Proof. For real c_0 ∈ [−r, r] the closed disc of radius r around c_0 has |Re c| ≤ |c_0| + r ≤ 2r and |Im c| ≤ r, so it lies in Q_r. Cauchy: |κ′(c_0)| ≤ r^{−1}sup_{Q_r}|κ|. Integrate κ′ along the real segment [b, a] ⊂ [−r, r]. ∎
So (3.3) and (3.5) hold verbatim with "sup_{|c|<2r}" replaced by "sup_{c∈Q_r}". The constant does not change. Q_r is not a subset of the disc |c| < 2r (its corners have modulus √5·r). The proof uses only the union of the discs of radius r around real centres in [−r, r], and this union lies in both sets. So the disc is not needed; Q_r is enough, and Q_r is the set that Lemma N3 controls. If a later use evaluates the Cauchy estimate at a real centre up to (3/2)r (the effective source f_j of D2C §5.2(2)), take margin r/2: the disc of radius r/2 around such a centre lies in Q_r. The cost is a factor 2 in that constant [P].

### 3.4 (Hβ) on Q_{r_0} is Lemma N3 [I, verified elsewhere]
- L-232 (Lemma N3) (SOURCES_HBETA_N3 §4; HBETA_N3_VERIFY §3, CORRECTED only in the description of condition (a)) proves, for c in Q = {|Re c| ≤ 2r, |Im c| ≤ τ}: every u_k(c) lies in D = {Re u ≥ γ^{−2}, |Im u| < 2τ}, Σ_{j≤K}|B_j′(c)| ≤ e^{x_C} − 1 ≤ ½, and ½ ≤ |v_k(c)| ≤ 3/2, uniformly in K. Its inputs: R-036 (I), (E), real R-037 (H-hist), R-040/R-041 (H-hol), H-120 (H2-hist) or Route 2(a) (R-038), and (B-hol). Row R-042 grades it "proved+verified given" these inputs.
- SOURCES_N3A §2c (verified, N3A_VERIFY l. 31–32) fixes τ_0 := r_0 and settles condition (a) with slack 5.33. So Lemma N3 holds on Q_{r_0} exactly.
- Family (A) at complex c ∈ Q_{r_0}. Lemma N3 Step 0 puts each coupling z = u^{−1/2} in the relative disc D(g_r, ρg_r/2) (condition (d)). This is the domain of R-040/R-041 (H-hol). So the constant-c construction at complex c ∈ Q_{r_0} runs at complex couplings inside the (H-hol) polydisc, and the bootstrap of D2C §5.2(1) is Lemma N3 Step 3 [P given the R-042 inputs].

### 3.5 Result for S-107
The complex-c strip of (Hβ) is not a separate open item. Lemma G-3 [P] shows that D2C needs only Q_{r_0}. On Q_{r_0}, (Hβ) is L-232 (Lemma N3) at τ_0 = r_0 (rows R-042 and N3A). So K-024's "complex-c strip open" becomes "complex c on Q_{r_0}: R-042". The open content is the R-042 input list, unchanged: R-036 (I), R-037, R-040/R-041 (H-hol), H-120 or R-038, (B-hol).

## 4. S-83 (R-030): (Gap_f)

### 4.1 The item
SOURCES_T2_G2 §1.4 l. 59: "(Gap_f) At background (F) for |f| ≤ f_0: the same two bounds with constants q_j/2, γ_j/2. … A bounded-perturbation argument does not give it, because U_0^φ − 1 is not small in norm on Z⁴." Here, at fixed j: Λ = L^j; U_0^φ is the fine constant abelian field (colour σ_3, plaquette angle φ = f/Λ² in the (0,1) planes, 0 in the others) [I: BETA_FP_H §1, U3 §1]; A_f := Δ + D_kD_k^T at U_0^φ on fine Lie-algebra link fields; Q̃_f := the linearized composed j-step average at U_0^φ. (Gap_f) asks: Q̃_fQ̃_f^T ≥ q_j/2, and A_f ≥ γ_j/2 on ker Q̃_f, on ℓ²(Z⁴), for |f| ≤ f_0(j). Row R-030 names it "the only remaining open input". Theorem 4.1, Lemma 4.2 and Corollary 4.3 of T2_G2 use it.
The remark in T2_G2 is right: U_0^φ − 1 grows linearly in |x|. The repair is local: in a gauge centred at any point the field is small near that point, and all operators are local. IMS localization glues the local bounds.

### 4.2 Page facts [V]
- (G1) CMP 98 p. 19, (11): the averaging must satisfy (Ū^u)(y, y′) = u(y)Ū(y, y′)u^{−1}(y′).
- (G2) CMP 98 p. 24: the k-th order average (43) "depends only on the bond variables U_b for b ⊂ B^k(c_−) ∪ B^k(c_+)", and "(Ū^u)_c = u(c_−)Ū_cu^{−1}(c_+)".
- (G3) CMP 99 p. 406, (3.78)–(3.81): Q_j(U′U) is analytic in A (U′ = exp iA) on |A| < α_1(L^jη)^{−1}; Q_j(U′U) = Q_j(U) + F_{2,j}(A) (3.80); |F_{2,j}(A)A′| ≤ O(1)α_1Q_j″|A′| on Λ_j (3.81), "for Mα_0, α_1 sufficiently small and with a constant O(1) depending on d and L only".

### 4.3 Lemma G-4 ((Gap_f)) — statement
Inputs: (Gap) at (T): Q̃_0Q̃_0^T ≥ q_j > 0 [P: SOURCES_SWEEP_E §S-82, corrected in SWEEP_DE_VERIFY §4.8 to "q_j > 0 at fixed j"] and A_0 ≥ γ_j > 0 on ker Q̃_0 [P: T2_G2 Lemma 1.3, given q_j]; (G1)–(G3); the identification of T2_G2's Q̃ with the linearization of the composed average, Q̃(U_0)B := (1/i)(d/dt)|_{t=0}log(Ū^j(e^{itB}U_0)Ū^j(U_0)^{−1}) [I: SWEEP_E Reading 2, T2_G2 §1.2]; the description of U_0^φ above [I].
Statement. Fix j. There is f_0 = f_0(j) > 0 such that for every real f with |f| ≤ f_0, on ℓ²(Z⁴):
  Q̃_fQ̃_f^T ≥ (5/6)q_j ≥ q_j/2,   and   A_f ≥ (5/8)γ_j ≥ γ_j/2 on ker Q̃_f.
f_0 is given in (4.4). By T2_G2 Lemma 2.2(a) the same bounds hold on every torus T_N with NΛ > 2R. So (Gap_f) holds as T2_G2 states it.

### 4.4 Proof of Lemma G-4

Step 1 (constrained gap ⇔ an unconstrained bound) [P]. Let α := ‖A_0‖ < ∞ (finite range, bounded entries). Put μ := (γ_j + 4α²/γ_j)/q_j and T_U := A(U) + μQ̃(U)^TQ̃(U).
(a) T_0 ≥ (3/4)γ_j. Write u = u_0 + u_1 with u_0 ∈ ker Q̃_0 and u_1 ⊥ ker Q̃_0, i.e. u_1 = Q̃_0^Tv. Then ⟨u_0, A_0u_0⟩ ≥ γ_j|u_0|², ⟨u_1, A_0u_1⟩ ≥ 0 (A_0 ≥ 0: Δ is the Hessian at the minimum U_0 = 1, and D_kD_k^T ≥ 0), and 2|⟨u_0, A_0u_1⟩| ≤ 2α|u_0||u_1| ≤ (γ_j/4)|u_0|² + (4α²/γ_j)|u_1|². Also |Q̃_0u_1|² = ⟨v, (Q̃_0Q̃_0^T)²v⟩ ≥ q_j⟨v, Q̃_0Q̃_0^Tv⟩ = q_j|u_1|². So ⟨u, T_0u⟩ ≥ (3/4)γ_j|u_0|² + (μq_j − 4α²/γ_j)|u_1|² = (3/4)γ_j|u_0|² + γ_j|u_1|² ≥ (3/4)γ_j|u|².
(b) If T_U ≥ c, then A(U) ≥ c on ker Q̃(U), since T_U = A(U) there.
So it suffices to prove T_f := T_{U_0^φ} ≥ (5/6)(3/4)γ_j = (5/8)γ_j, and, separately, Q̃_fQ̃_f^T ≥ (5/6)q_j. Both are lower bounds X_f ≥ (5/6)c_0 for a positive local operator X, with (X, c_0) = (T, (3/4)γ_j) or (Q̃Q̃^T, q_j), and X_0 ≥ c_0.

Step 2 (gauge covariance) [P from (G1)–(G2) and the identification]. For a gauge function u, (e^{iB}U)^u = e^{iG_uB}U^u, where (G_uB)(x, y) := Ad_{u(x)}B(x, y). G_u is orthogonal on ℓ² of Lie-algebra link fields, because Ad is orthogonal for the trace form. By (G2), (Ū^j)^u_c = u(c_−)Ū^j_cu(c_+)^{−1}; differentiate this identity along e^{itB}U at t = 0: Q̃(U^u) = G^c_uQ̃(U)G_u^{−1}, with (G^c_uB)(c) := Ad_{u(c_−)}B(c), orthogonal on coarse link fields. The Wilson action is gauge invariant, so Δ(U^u) = G_uΔ(U)G_u^{−1}. The gauge orbit map gives D(U^u) = G_uD(U)Ad_u^{−1}, and ι_k commutes with the pointwise Ad_u. Hence T_{U^u} = G_uT_UG_u^{−1} and (Q̃Q̃^T)(U^u) = G^c_u(Q̃Q̃^T)(U)(G^c_u)^{−1}.

Step 3 (locality) [V (G2) + P]. By (G2), the entry Q̃(U)(c, b) vanishes unless b ⊂ B^j(c_−) ∪ B^j(c_+), and it depends only on the links there. Δ and D are nearest-plaquette operators. So, in fine units, each X has finite range R ≤ C_dΛ, and X(x, y) depends only on the links within distance R of x. Let n_R := sup_x #{y : |x − y| ≤ R} (fibre dimension included) and S := sup_U sup_x Σ_y‖X_U(x, y)‖ over the class {U_0^φ : |f| ≤ 1}; S < ∞ because, by Step 2, ‖X(x, y)‖ is gauge invariant and Step 4 bounds it in a local gauge.

Step 4 (local gauge) [P]. Fix z ∈ R⁴. The symmetric gauge centred at z has link angles θ_0(x) = −(φ/2)(x_1 − z_1) on (x, x + e_0), θ_1(x) = (φ/2)(x_0 − z_0) on (x, x + e_1), and 0 on the other directions. Its plaquette angle in each (0,1) plaquette is −(φ/2)(x_1 − z_1) + (φ/2)(x_0 + 1 − z_0) + (φ/2)(x_1 + 1 − z_1) − (φ/2)(x_0 − z_0) = φ, and 0 in the other planes. Two U(1)-valued configurations with the same plaquette products on Z⁴ differ by a gauge transformation, because a flat U(1) configuration on the simply connected 2-complex of Z⁴ is pure gauge. So there is u_z with (U_0^φ)^{u_z} = exp(iθσ_3), |θ_b| ≤ (φ/2)(|b − z|_∞ + 1).

Step 5 (truncation and Lipschitz bound) [P from (G3)]. Let W_z be the cube of side 2ℓ centred at z. Let Â_z be the field θ of Step 4 on the bonds within distance ℓ + R of z, and 0 elsewhere. Then a := sup|Â_z| ≤ (φ/2)(ℓ + R + 1). By Step 3, for x, y ∈ W_z the entries of X at (U_0^φ)^{u_z} equal those at e^{iÂ_z}·1. Claim: for a ≤ a_1 := ½α_1L^{−j} (fine units, η = 1),
  ‖X_{e^{iÂ}}(x, y) − X_1(x, y)‖ ≤ Lip_X·a.   (4.1)
For Δ and D the entries are polynomials in Ad of the links; (4.1) holds with Lip = O(1)(d). For Q̃ use (G3) with U = 1 (single scale, Λ_j = Z⁴, as in SWEEP_E §S-82): t ↦ F_{2,j}(tÂ) is analytic on |t| < α_1L^{−j}/a, which is ≥ 2, vanishes at t = 0, and by (3.81) each entry obeys |F_{2,j}(tÂ)(c, b)| ≤ O(1)α_1Q_j″(c, b) there (take A′ supported on one bond; Q_j″ ≥ 0 is a bounded average). Schwarz's lemma at t = 1 gives |F_{2,j}(Â)(c, b)| ≤ (aL^j/α_1)·O(1)α_1Q_j″(c, b) = O(1)L^jaQ_j″(c, b). The products Q̃^TQ̃ and Q̃Q̃^T then obey (4.1) with Lip ≤ 2n_R‖Q̃‖_∞Lip_Q. The proviso "Mα_0, α_1 sufficiently small" of (3.81) is met by Balaban's choice of α_1; U = 1 is regular.

Step 6 (IMS localization) [P]. Take a smooth bump ψ ≥ 0 on R⁴, ψ = 1 on [−½, ½]⁴, supp ψ ⊂ (−1, 1)⁴. For z ∈ ℓZ⁴ put χ_z(x) := ψ(x/ℓ − z/ℓ)/(Σ_{z′}ψ(x/ℓ − z′/ℓ)²)^{1/2}. Then Σ_zχ_z² = 1, supp χ_z ⊂ W_z, each point lies in at most n_ov := 2⁴ sets W_z, and |χ_z(x) − χ_z(y)| ≤ c_χ|x − y|/ℓ. Multiplication by χ_z acts on every fibre; positions of links are their midpoints. For any bounded self-adjoint X,
  X = Σ_zχ_zXχ_z + ½Σ_z[χ_z, [χ_z, X]],   (4.2)
because Σ_z[χ_z, [χ_z, X]] = Σ_z(χ_z²X − 2χ_zXχ_z + Xχ_z²) = 2X − 2Σ_zχ_zXχ_z. The kernel of the last sum in (4.2) is ½X(x, y)Σ_z(χ_z(x) − χ_z(y))². At most 2n_ov terms are non-zero, each ≤ (c_χR/ℓ)² for |x − y| ≤ R. By Schur's test its norm is ≤ n_ovc_χ²R²S/ℓ². Next, by Steps 2, 3, 5, with E_z := 1_{W_z}(X_{e^{iÂ_z}} − X_1)1_{W_z},
  ⟨ϕ, χ_zX_fχ_zϕ⟩ = ⟨G_{u_z}χ_zϕ, (X_1 + E_z)G_{u_z}χ_zϕ⟩ ≥ (c_0 − ‖E_z‖)‖χ_zϕ‖²,   ‖E_z‖ ≤ n_RLip_Xa,   (4.3)
since G_{u_z} is orthogonal and commutes with χ_z, and X_1 = X_0 ≥ c_0. Sum (4.3) over z, use Σ_z‖χ_zϕ‖² = ‖ϕ‖² and (4.2):
  X_f ≥ c_0 − n_RLip_X(φ/2)(ℓ + R + 1) − n_ovc_χ²R²S/ℓ².
Choose ℓ := ℓ_0 := c_χR(12n_ovS/c_0)^{1/2}, so the last term is ≤ c_0/12. Then choose
  f_0 := Λ²·min{c_0/(6n_RLip_X(ℓ_0 + R + 1)), 2a_1/(ℓ_0 + R + 1)},   (4.4)
(minimum over the two choices of (X, c_0)), so that the middle term is ≤ c_0/12 and a ≤ a_1. Then X_f ≥ (5/6)c_0 for |f| ≤ f_0. With Step 1 this proves Lemma G-4. ∎

### 4.5 Remarks and result for S-83
- f_0 depends on j through Λ, R, S, Lip_X, q_j, γ_j. T2_G2 needs (Gap_f) only at fixed j (Theorem 4.1, Lemma 4.2, Corollary 4.3), so this is enough. No uniformity in j is claimed.
- The bound is f-uniform on [−f_0, f_0], as Theorem 4.1 needs. It holds on ℓ²(Z⁴), so it holds for every quantized flux f = 2πm/N² ≤ f_0 on T_N by Lemma 2.2(a).
- The same proof gives Lemma 4.2's [I] step on the "analytic entries in the symmetric gauge": Step 5 is that step, now read on the image (G3), with Schwarz's lemma for the Lipschitz form.
- Result: (Gap_f) is PROVED [P] relative to (Gap) at (T) (q_j > 0 [P, verified], γ_j [P]), (G1)–(G3) [V], the identification of Q̃ with the linearized composed average [I], and the description of U_0^φ [I]. Gauge covariance of the linearized average is now [P] from (G1)–(G2) on the images; the ledger listed it as "not checked on an image".

## 5. Proposed ledger statuses (not applied; headline discipline: all four lemmas are unverified)

| row / item | old status text (part) | proposed status text | grade change |
|---|---|---|---|
| R-043, S-100 | "H-191 (FX2) radius at the coarsest scale is load-bearing for order 1 + η; fallback order ≤ 1 + η + 2/3 (still OS-admissible)" | "H-191 (FX2) coarsest-scale radius: not a separate input. Lemma G-1 (SOURCES_L1_G §1, unverified): every E-, R′-, B′-, e-term and every (FX) activity is holomorphic on ‖ζ‖_∞ ≤ c_*r, c_* = ½, ‖∇ζ‖ ≤ ρ_1/2, which is ≥ τ_m(Γ) once c_τ ≤ c_*E_0; inputs N2 [I], R-042, R-044 (W4), K-014, all already inputs of this row. Fallback order 1 + η + 2/3 [P for R′-terms from (1.88), (1.100) on images] is OS-admissible (D = 5/3 + 2η); it has a B′-term gap ((1.99): c_1 = α^{1/3}) with a [P-sketch] repair; the main route does not use it." | none; stays "reduced", remaining input R-042 |
| R-016 (Q-050), S-106 | "residue: H-237 (P5) Gaussian booking still [reduced] in D3, readings ‖H_{1,k}‖ ≤ O(1)B_3, 0 ≤ ζ_0 ≤ 1, G^c extension" | "residue: H-237 (P5) vertex closed by a sup bound, the method of CMP 122 II (1.5)–(1.6) (Lemma G-2, SOURCES_L1_G §2, unverified): \|L_f\| ≤ δ_rΨ(g_k), Ψ(g) = C(M)R(g)^5ε(g)² → 0; condition (C-P5) sup_{g≤γ}Ψ ≤ ½ (γ small, depending on M); complex f via R-042; readings (H) ‖H_{1,k}‖ in local sup form, (Z) 0 ≤ ζ_0 ≤ 1, (W) D3R Lemma P3, G^c extension (ε_k → O(α_{0,k} + α_{1,k}), p. 358 [V])" | none; Q-050 stays CLOSED relative to listed inputs |
| K-024, S-107 | "uses (Hβ): reduced for real c, complex-c strip open (SOURCES_UN1_VERIFY)" | "uses (Hβ): real c by Lemma H; complex c on Q_{r_0} = {\|Re c\| ≤ 2r_0, \|Im c\| ≤ r_0} is L-232 (Lemma N3) at τ_0 = r_0 (row R-042; SOURCES_N3A); the D2C disc \|c\| < 2r is replaced by Q_{r_0} at no cost (Lemma G-3, SOURCES_L1_G §3, unverified)" | none; open content moves to R-042's inputs |
| R-030, S-83 | "The only remaining open input is (Gap_f)" | "(Gap_f) PROVED at fixed j (Lemma G-4, SOURCES_L1_G §4, unverified; IMS localization with a symmetric gauge per box) relative to (Gap) at (T) [P], CMP 98 (11) p. 19 and p. 24, CMP 99 (3.78)–(3.81) p. 406 [V], the identification of Q̃ with the linearized composed average [I], and the description of U_0^φ [I]. Gauge covariance of the linearized average: [P] from CMP 98 (11), p. 24 on images." | proposed: "reduced [R, verified]" → "PROVED at fixed j relative to listed inputs", only after a verifier confirms §4 |

OPEN_ITEMS_SWEEP: S-83, S-100, S-106, S-107 move from class (b) to "res, pending verifier". S-106's class (a) readings stay open.

New canon line (proposed): (C-P5) sup_{g≤γ}C(M)R(g)^5ε(g)² ≤ ½, i.e. γ ≤ γ_P5(M). It sits next to γ_Φ(M) of FX_O23 §4 and is of the same type. No other new condition. Lemma G-1 asks c_τ ≤ c_*E_0, a choice of c_τ. Lemma G-4's f_0(j) is a property of the fixed-j torus limit, not a canon constant.

Verifier targets, highest value first:
1. Lemma G-1, proof step 4: that no step after the scale-m′ R-step uses a Cauchy estimate in ζ, so the radius c_*r does not shrink over K steps. Check against D3 (iv) "Propagation" and R-044 (W4).
2. Lemma G-4, Steps 2 and 5: the linearization of (G2) at the left-multiplication chart, and the entrywise Schwarz bound from (3.81) on the CMP 99 p. 406 image.
3. Lemma G-2: the reading (H) against (1.6) on CMP 122 II p. 357, and whether Λ lies in a 100M-cube (image) or a 100MR_k-cube (D3 reading); the bound covers both.
4. §1.5: the B′-term gap of the fallback and its repair.

## 6. Report

S-100: closed relative to existing inputs. The R̄^{−4} radius loss came only from D3's model of the R-denominator. The printed denominator (CMP 122 I (1.100), image) has no E-terms. With O2 and O3, every activity has source radius c_*r = r/2 at every scale (Lemma G-1). The fallback 1 + η + 2/3 is OS-admissible (D = 5/3 + 2η), with a B′-term gap. S-106: the (P5) vertex has a sup bound C(M)δ_rR_k^5ε_k² → 0, which is Balaban's (1.6) method; no Gaussian booking (Lemma G-2). S-107: the complex-c strip is Lemma N3 at τ_0 = r_0; D2C needs only Q_{r_0} (Lemma G-3). S-83: (Gap_f) proved by IMS localization and gauge covariance read on CMP 98/99 images (Lemma G-4). All four are unverified.
