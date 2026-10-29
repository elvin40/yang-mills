# SOURCES_L1_G_VERIFY — adversarial check of SOURCES_L1_G (S-100, S-106, S-107, S-83)

Date 2026-10-28. Verifier: Claude (Opus 5.5). Ids follow IDS.md. Labels G-1 … G-4 and V1 … V30 are local to this file.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were not in any grep. No existing file was edited. PLAN.md was not touched. sync.sh was not run.

## Verdict

All four lemmas stand. None is refuted. Each needs a correction. No correction changes a conclusion.
- G-1 (S-100): CONFIRMED in substance. CORRECTED in three places. (a) R-044 (W4) is a new named input of row R-043; the row lists only R-042 today. (b) The induction must use O3 at radius r/2, not r. (c) Proof step 4 says "no step uses a Cauchy estimate in ζ". This is false as written: the D2/D2C freezing estimate is a Cauchy estimate in the source at every step. It uses a fixed margin, so the radius does not shrink. The fallback order 1 + η + 2/3 and D = 5/3 + 2η are CONFIRMED. The B′-term gap is CONFIRMED on the image.
- G-2 (S-106): CONFIRMED. The arithmetic is correct. The key factor g_k² in |ω − 1| ≤ g_k²δ_r is correct by D3R Lemma P3. CORRECTED: (a) Balaban's (1.6) gets its smallness from the J_0-cancellation (1.5) and the decay exp(−δ dist(Ω_k, Λ)), not from the same source as G-2. Only the method "sup bound over the cut-off B′ domain, absorbed as an O(1) number" is common. (b) (C-P5) is a new canon line. §2.5 says "no new canon condition", and §5 proposes a new canon line. The second statement is the correct one.
- G-3 (S-107): the elementary lemma is CONFIRMED. The claim "D2C uses only real centres" is CORRECTED. D2 (iii) and (vii) state the freezing bound for complex f ∈ S_r(X), so D2 uses complex centres. With complex centres, Q_r is enough only if the complex source set is {|Re c| ≤ r, |Im c| ≤ r/2} and the Cauchy margin is r/2. The cost is a factor 2. This set matches c_* = ½ of G-1. The conclusion "the complex-c strip of (Hβ) is L-232 (Lemma N3) on Q_{r_0}" stands with this change. Family (A) at complex c is R-040/R-041 (H-hol) applied along the N3 trajectories. It is not an output of N3 alone.
- G-4 (S-83): CONFIRMED. Steps 1–6 are correct. Three minor CORRECTIONS: (a) the class for S must be fixed before ℓ_0, with a cut-off f_1, to remove a circular step; (b) the Lipschitz constant for Q̃Q̃^T needs a quadratic FF^T term; (c) the γ_j input carries the Lemma 1.3 inputs ([R] Q̃D = D_cι_a^T, [I] "Q̃c is a nonzero multiple of c"). The proposed row grade for R-030 ("PROVED at fixed j") is UNSUPPORTED for the row. Other [I] items of R-030 stay: T2_G2 §5.5 (Fuglede–Kadison per-cell form at V_f) and T2_G2_VERIFY §7.3 (ii)–(iii). (Gap_f) itself is proved at fixed j relative to the listed inputs.

## 0. What I read

Page images (pdftoppm -r 150, fresh folder /tmp/l1gv.*, deleted after use), each read as an image:
- CMP 122 I p. 201 (PDF 27): (1.99)–(1.102).
- CMP 122 II p. 356 (PDF 2), p. 357 (PDF 3), p. 358 (PDF 4), p. 387 (PDF 33), p. 389 (PDF 35), p. 390 (PDF 36).
- CMP 98 p. 19 (PDF 3), p. 24 (PDF 8).
- CMP 99 p. 406 (PDF 18).
Text layer only: CMP 109 l. 800–812 (Theorem 3).
Project files: OPUS_QUEUE l. 1–15; SOURCES_L1_G (all); IDS.md (rows R-016, R-030, R-042, R-043, R-044, K-014, K-024, Q-050, H-191, H-237, L-232); TRUST_LEDGER rows R-016 (Q-050 sentence), R-030, R-042, R-043, R-044, K-024; SOURCES_D3 l. 125–180; SOURCES_D3R (Lemma P3, §1.4 grep); SOURCES_D3_NEW4 (grep, §1, §3, closing note); SOURCES_D4D5_VERIFY §4; SOURCES_FX_VERIFY V5; SOURCES_FX_O23 (all); SOURCES_FX_O23_VERIFY (all); ASSEMBLY_N1 l. 139–151; SOURCES_D2 l. 62–76; SOURCES_D2C §3.2–§3.3, §5.1–§5.3; SOURCES_UN1 and UN1_VERIFY (grep); SOURCES_HBETA_N3 §4 (grep); SOURCES_N3A §2c; N3A_VERIFY l. 28–32; SOURCES_T2_G2 §1, Lemma 2.2, §4, §5.5, ledger; SOURCES_T2_G2_VERIFY (grep); SOURCES_SWEEP_E Reading 2 (S-82); SOURCES_SWEEP_DE_VERIFY §4.8.

## 1. Page quotes in SOURCES_L1_G §0, §2.2, §4.2

- V1. CMP 122 I p. 201 (1.100): the denominator is ∫dV′Γ_{Λ_i}δ_{G_i}(V′)χ(Λ_i)exp[−g_k^{−2}A(ζ_i, U_{k,X_i}(V′V_{Λ_i}))]. The exponent is the Wilson action only. (1.101) χ(Λ_i) = χ({|(1/i)log V′(b)| < M_0ε_k, b ∈ Λ_i}). CONFIRMED.
- V2. CMP 122 II p. 356: (1.1); "Writing V′ = exp ig_kB′"; the factor χ({|B′| < M_0g_k^{−1}ε_k}). CONFIRMED.
- V3. p. 357: (1.2)–(1.6). "|A_0|, |∇^ηA_0| < O(1)M^6R_kε_k"; (1.6) "< 3B_3M_0A_0²p_0²(g_k)exp(−R_k)(100M)^4"; "Λ is contained in a cube of the size 100M"; "it is enough to have an absolute bound, e.g., the number 1". CONFIRMED. Addition: (1.6) is the bound of the RIGHT side of (1.5). (1.5) uses J_0 = 0 on Λ to replace ζ_0 by (1 − ζ_0), and (1.6) uses "the exponential decay of the minimizer" through exp(−δ dist(Ω_k, Λ)). SOURCES_L1_G (F4) omits both facts (see V12).
- V4. p. 358: "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}). This is an unessential change; it may result only in stronger restrictions on g_k, or γ." CONFIRMED.
- V5. p. 387 (1.88): "≤ κ_{j+1}(Z) − 2(1 + β_0)^{−1}p_0(g_{j+1}) + O(1)3(100M)^dR_{j+1}^{d+2} ≤ κ_{j+1}(Z), for p_0 large and γ small enough". CONFIRMED.
- V6. p. 390: (1.99) |R′^{(k)}(X,(U,J))| ≤ O(1)c_1exp(−(1 + ½β)κd_{k,∪Y_i}(X)); c_1 = exp(−p_0(g_k)) if X′ does not meet ∪Y_i, c_1 = α^{1/3} otherwise; (1.100) |R′^{(k)}(X,(U,J))| ≤ exp(−p_0(g_k))exp(−κd_k(X)) for the second group. CONFIRMED. Naming note: Balaban's first group (X meets Z_k^∼ ∪ ∪Y_i^∼) are the boundary terms B^{(k)}(X). SOURCES_L1_G calls them B′-terms. This is a name change only.
- V7. CMP 98 p. 19 (11): "(Ū^u)(y, y′) = u(y)Ū(y, y′)u^{−1}(y′), or Ū^u = (Ū)^u". CONFIRMED.
- V8. CMP 98 p. 24: (43); "Ū^k_c, c ⊂ Ω^{(k)}, depends only on the bond variables U_b for b ⊂ B^k(c_−) ∪ B^k(c_+)"; "(Ū^u)_c = u(c_−)Ū_cu^{−1}(c_+)". CONFIRMED. (L1_G writes c ⊂ Ω^{(k+1)}; the image has Ω^{(k)} in that sentence. Immaterial.)
- V9. CMP 99 p. 406: (3.78) composition; analyticity on |A| < α_1(L^jη)^{−1} on B^j(Λ_j); (3.80) Q_j(U′U) = Q_j(U) + F_{2,j}(A); (3.81) |F_{2,j}(A)A′| ≤ O(1)α_1Q_j″|A′| on Λ_j, "for Mα_0, α_1 sufficiently small and with a constant O(1) depending on d and L only". CONFIRMED. The bound (3.81) is uniform on the domain. It is not proportional to |A|. So the Schwarz-lemma step of G-4 Step 5 is needed, and L1_G does it.
- V10. CMP 109 Theorem 3 (text layer l. 803–809): "The constant γ depends on all other constants." CONFIRMED (text layer, as L1_G says).

## 2. S-100: Lemma G-1 and the fallback

- V11. "The R̄^{−4} loss came only from D3's model of the R-denominator." CONFIRMED. D3 l. 136–140 (read): the dominant term is σ_E = Σ[V(X; f + ζ) − V(X; f)] over E-, R-, B-terms, with |σ_E| ≤ O(1)E_0(τ/r)|Y|. V1 shows that the true denominator has no such term. FX_VERIFY V5 and FX_O23 §3 (verified, FX_O23_VERIFY §1) say the same. The only other radius loss in the project files is O4 ((1.103), radius ∝ 1/|Y_i|). O4 does not occur under K-014 (FX_O23_VERIFY §5). So "only" is correct on the main route.
- V12. §1.3, the Wilson part. |σ_W| ≤ τΦ(g_k), Φ = C(M)g²p_0²R^4. CONFIRMED as an import of FX_O23 §4. N2 is an inference that FX_O23_VERIFY §3 CONFIRMED with a stated reading (plaquettes O(ε_k) from χ_k, CMP 122 I (1.98) and M_0 = O(1)B_5M^6). So N2 is [I, verified], not bare [I].
- V13. G-1 inputs (i)–(v). CORRECTED. Row R-043 says "Remaining: R-042". It does not name R-044. G-1 uses R-044 (W4) as input (v). So the sentence "All four are already inputs of R-043. No new input" is not supported by the ledger text. R-044 (W4) for the R-operation is proved relative to inputs (W4-G [R], Ursell, KP), so this is a named dependency, not a new open item. The R-043 row must list it.
- V14. G-1 proof steps 1–3. CONFIRMED. Under K-014 the R-step divides only by the (1.100) denominators (R-044 W4-R: "the R-quotient divides by nothing" except these, and (1.10) cancels them). Numerators need only upper bounds, which O3 gives. The Ursell series converges under (1.97). Weierstrass gives holomorphy of the limit.
- V15. Induction radius. CORRECTED (constant change). O3 (FX_O23 §5) is proved on ‖ζ‖ ≤ r with inputs holomorphic on radius r; its Step 4 uses a source change O(E_0τ/r) per cube. G-1 gives earlier R-terms only radius c_*r = r/2. So at the next step O3 must be re-run at radius r/2. There the Schwarz difference bound gives nothing better than 2·sup, so the per-cube term is O(E_0) instead of O(E_0τ/r). This is still inside the per-site budget O(1)log g_j^{−2} of (1.79). The induction closes at radius r/2. One cannot instead take c_* = 1: G-3 (V22) needs c_* ≤ ½ for the freezing margin.
- V16. Proof step 4, "no step uses a Cauchy estimate in ζ". CORRECTED. D2 (vii) and D2C (3.3), (3.5) use a Cauchy estimate in the source at every step (margin r in the constant-source family (A)). This estimate bounds a term. It does not make a new input of a later step from a derivative. The margin is the same at every step, so the radius does not shrink with K. The conclusion of step 4 stands. The sentence must be "no step composes a Cauchy estimate in ζ with a later step; the freezing estimate uses a fixed margin".
- V17. "c_*r ≥ τ_m(Γ) once c_τ ≤ c_*E_0". CONFIRMED (R̄_m ≥ 1, |Γ|_m ≥ 1).
- V18. Fallback loss for R′-terms. CONFIRMED. (1.88) gives R^6 ≤ Cp_0, so R^4 ≤ (Cp_0)^{2/3}. sup_x x^{2k/3}e^{−x} = (2k/3)^{2k/3}e^{−2k/3} ≤ C^k(k!)^{2/3}. Minor: the computation uses all of e^{−p_0}. Use e^{−p_0/2} for the Cauchy loss and keep e^{−p_0/2} for summation. This changes only C.
- V19. B′-term gap. CONFIRMED on the image (V6: c_1 = α^{1/3} when X′ meets ∪Y_i). Repair stays [P-sketch] as L1_G says. I checked the arithmetic x^{2k/3}e^{−cx²} ≤ C^k(k!)^{1/3}. The split of Y_i's factor is not checked against (1.80)–(1.88). The gap matters only for the fallback, which the main route does not use.
- V20. OS admissibility. CONFIRMED. ASSEMBLY_N1 l. 141: order 1 + η gives (n!)^{1+2η}, so order o gives (n!)^{o+η}. o = 1 + η + 2/3 gives D = 5/3 + 2η. The condition quoted at l. 150 asks only fixed A, D, s. D < 2 iff η < 1/6: correct.

## 3. S-106: Lemma G-2

- V21. The factor g_k² in |ω − 1|. CONFIRMED. D3R Lemma P3: |(w″_k − u_k(f)) − ((g″_k)^{−2} − g_k^{−2})| ≤ δ_r. On Λ after the reset, g″ = g_k, so |w − g_k^{−2}| ≤ δ_r and |ω − 1| = g_k²|w − g_k^{−2}| ≤ g_k²δ_r. NEW4 uses the weaker θ = γ²δ_r. G-2 needs the g_k² form: with only θ the product would be θA_0²p_0²·C(M)R^5, which does not tend to 0. So this step is load-bearing and it is correct.
- V22. Per-plaquette product. CONFIRMED. g_k^{−1}·(C_HB_3M_0g_k^{−1}ε_k)·(g_k²δ_r)·(C_UM^6R_kε_k) = C_HC_UB_3M_0M^6δ_rR_kε_k². Count 6(100MR_k)^4 covers both readings of Λ (image: 100M). Ψ as written. With ε = A_0gp_0 (which (1.6) on the image implies), Ψ ≤ C(M)g²(log g^{−2})^{2p_0+5p_R} → 0. CONFIRMED.
- V23. (C) |η^{−2}Im ∂U_0| ≤ C_UM^6R_kε_k on Z: CONFIRMED as an import of NEW4 §3 (verified, NEW4_VERIFY items 1–6). Readings (H) and (Z) stay [I], as L1_G says.
- V24. Real and complex f. CONFIRMED. δ_r ≤ (9/2)r uses ρ_1 ≤ r/(4C_hM), λ_k ≤ 1. |L_f| ≤ 9/32 for r ≤ 1/8. Complex: |L_f − L_{f+ζ}| ≤ (3/2)τΨ ≤ (3/4)τ; |σ_W| ≤ τ; |σ| ≤ (7/4)τ ≤ 7/32 < ½. Lemma D3.1 applies. The mean-value bound |θ_f| ≤ δ_rΨ is correct for a real L against a positive measure.
- V25. "This is the method Balaban prints in (1.5)–(1.6)." CORRECTED (V3). The common part is a sup bound on the cut-off B′ domain, then "an absolute bound". Balaban's smallness comes from J_0 = 0 on Λ and from exp(−δ dist(Ω_k, Λ)). The sourced vertex has no J_0-cancellation (NEW4 §3). Its smallness comes from g_k²δ_r·ε_k² instead. The bound does not use the cancellation, so the difference does not break G-2.
- V26. Canon. CORRECTED. §2.5 "No new canon condition" contradicts §5 "New canon line (proposed): (C-P5)". (C-P5) sup_{g≤γ}C(M)R(g)^5ε(g)² ≤ ½ is a new γ ≤ γ_P5(M) line, of the same type as γ_Φ(M). It must be written in the canon. It allows Balaban's order of constants (V10).
- V27. Placement and G^c extension. CONFIRMED at the level written (O(1) change in (1.92)–(1.97); p. 358 "ε_k → O(α_{0,k} + α_{1,k})", V4). α_{i,k} = C_ig_k(log)^{q_i} is [I] (CMP 119 (2.28) not re-imaged).

## 4. S-107: Lemma G-3

- V28. Lemma G-3 itself. CONFIRMED. A disc of radius r about a real c_0 ∈ [−r, r] lies in Q_r. Cauchy plus the mean value theorem on a real segment.
- V29. "Both are first-derivative bounds at REAL centres." CORRECTED. D2 (iii) and (vii) (SOURCES_D2 l. 62–66) state holomorphy and the freezing bound for COMPLEX f ∈ S_r(X) = {|f| ≤ r, |∇f| ≤ ρ_1}. Then c_X is complex with |c_X| ≤ r. The bridge also evaluates at complex sources Σz_if_i (UN1 l. 52). A disc of radius r about such a centre reaches |Im c| = 2r, outside Q_r. Repair (verified here): restrict the complex source set to {|Re f| ≤ r, |Im f| ≤ r/2} and use margin r/2. The disc of radius r/2 about such a centre lies in {|Re c| ≤ 3r/2, |Im c| ≤ r} ⊂ Q_r. The cost is a factor 2 in the D2C freezing constants (3.3), (3.5) and in D2 (vii). The set matches c_* = ½ of G-1. L1_G's own last remark (margin r/2 for real centres up to 3r/2) covers only the real case.
- V30. "On Q_{r_0}, (Hβ) is Lemma N3 at τ_0 = r_0." CONFIRMED for the trajectory bounds: N3 §4 works on Q = {|Re c| ≤ 2r, |Im c| ≤ τ}; N3A §2c sets τ_0 := r_0 (N3A_VERIFY l. 32, slack 5.33). Family (A) at complex c (E^{(j)}(X, ·; c), B_j(c) holomorphic with Balaban's bounds) is CORRECTED in its attribution: it is R-040/R-041 (H-hol) applied along the trajectories, which N3 Step 0 and Step 3 keep in the (H-hol) polydisc. Both are inputs of R-042, so the open content is unchanged.

## 5. S-83: Lemma G-4

- V31. Step 1. CONFIRMED. 2α|u_0||u_1| ≤ (γ_j/4)|u_0|² + (4α²/γ_j)|u_1|² (AM–GM). |Q̃_0u_1|² ≥ q_j|u_1|² for u_1 = Q̃_0^Tv. μq_j − 4α²/γ_j = γ_j. So T_0 ≥ (3/4)γ_j. (b) is immediate. A_0 ≥ 0 at U_0 = 1 is correct.
- V32. Step 2. CONFIRMED by a direct derivation. In the left chart, (e^{itB}U)^u = e^{itG_uB}U^u. By V8, Ū((e^{itB}U)^u)Ū(U^u)^{−1} = u(c_−)Ū(e^{itB}U)Ū(U)^{−1}u(c_−)^{−1}. Taking (1/i)d/dt log at t = 0 gives Q̃(U^u)G_u = G^c_uQ̃(U). Δ, D, ι_k transform as stated. The step needs Q̃ in the left chart; this is the [I] identification that L1_G lists. It matches Balaban's chart Q_j(U′U), U′ = exp iA (V9).
- V33. Step 3. CONFIRMED (locality from V8). CORRECTED (minor): S is defined over {U_0^φ : |f| ≤ 1}, and its finiteness is argued with Step 4–5, whose truncation needs a ≤ a_1. At |f| = 1 the local field near x is about (R + 1)/(2Λ²) with R ~ C_dΛ, which need not be ≤ a_1 = ½α_1L^{−j}. Fix: define S over |f| ≤ f_1 with f_1 := 2a_1Λ²/(R + 1); then choose ℓ_0 from this S, then f_0 ≤ f_1. No circularity remains.
- V34. Step 4. CONFIRMED. The (0,1) plaquette angle is φ; the other planes give 0. The 2-skeleton of Z⁴ is simply connected, so two U(1) configurations with equal plaquette products differ by a U(1) gauge transformation.
- V35. Step 5. CONFIRMED. t ↦ F_{2,j}(tÂ) is analytic on |t| < α_1L^{−j}/a ≥ 2 and vanishes at 0. Schwarz gives |F_{2,j}(Â)(c, b)| ≤ O(1)L^jaQ_j″(c, b). Entrywise reading of (3.81) with A′ on one bond is valid. CORRECTED (minor): for X = Q̃Q̃^T or Q̃^TQ̃ the difference is FQ̃^T + Q̃F^T + FF^T. The FF^T term is quadratic in a. With a ≤ a_1 it adds n_RLip_Q²a_1 to Lip. L1_G's "Lip ≤ 2n_R‖Q̃‖_∞Lip_Q" omits it. The use of U = 1, Λ_j = Z⁴ in (3.78)–(3.81) is the SWEEP_E reading [P-sketch, verified in SWEEP_DE_VERIFY §4.8].
- V36. Step 6. CONFIRMED. (4.2) is an identity. The kernel of ½Σ_z[χ_z, [χ_z, X]] is ½X(x, y)Σ_z(χ_z(x) − χ_z(y))². Schur gives ≤ n_ovc_χ²R²S/ℓ². (4.3) uses X_{U} = G^TX_{U^u}G with G orthogonal and commuting with χ_z. With ℓ_0 and f_0 of (4.4): X_f ≥ c_0(1 − 1/12 − 1/12) = (5/6)c_0. Then A_f ≥ (5/8)γ_j on ker Q̃_f and Q̃_fQ̃_f^T ≥ (5/6)q_j. Both are ≥ half, as (Gap_f) asks.
- V37. Inputs. CORRECTED. γ_j comes from T2_G2 Lemma 1.3, which rests on q_j, on Q̃D = D_cι_a^T [R: BETA_FP_LEMMA43_VERIFY §4] and on "Q̃c is a nonzero multiple of c" [I] (T2_G2 ledger item 3). L1_G lists only "given q_j". q_j > 0 at fixed j is [P, verified] for the unweighted transpose (SWEEP_DE_VERIFY §4.8).
- V38. Torus transfer. CONFIRMED as an import: T2_G2 Lemma 2.2(a) with magnetic translations τ_γ (T2_G2 §1.3) and Theorem 4.1 (T2_G2_VERIFY 4.3).
- V39. §4.5, "Step 5 is Lemma 4.2's [I] step". CONFIRMED: the analyticity of the averaging entries near U = 1 is now read on the image (V9), and gauge covariance is V32.
- V40. Proposed R-030 grade "reduced → PROVED at fixed j relative to listed inputs". UNSUPPORTED for the row. R-030 also rests on T2_G2 §5.5 (per-cell Fuglede–Kadison form of Prop. 2.1 at V_f) [I], on T2_G2_VERIFY §7.3 (ii)–(iii) (identification of Balaban's K-th problem with the torus, and of β_j^{[K]}(0) with the extracted coefficient) [I], and on the corrected zero-mode statement at V_f (T2_G2_VERIFY 1.6). G-4 closes (Gap_f) only. The row stays "reduced".

## 6. Grades

| claim | grade |
|---|---|
| §0 page quotes (V1–V10) | CONFIRMED (two notes: V3 omits the J_0-cancellation and decay; V8 index Ω^{(k)}) |
| S-100: radius loss only from D3's denominator model (V11) | CONFIRMED |
| S-100: printed (1.100) denominator has no E-terms (V1) | CONFIRMED |
| S-100: σ_W ≤ τΦ, N2 (V12) | CONFIRMED; N2 is [I, verified] |
| S-100: inputs of G-1 are already inputs of R-043 (V13) | CORRECTED: R-044 (W4) must be added to R-043 |
| S-100: G-1 steps 1–3, 5 (V14) | CONFIRMED |
| S-100: radius c_*r = r/2 at every scale (V15, V16) | CONFIRMED in conclusion; CORRECTED proof (O3 re-run at r/2; freezing is a fixed-margin Cauchy estimate) |
| S-100: fallback 1 + η + 2/3, OS-admissible, D = 5/3 + 2η (V18, V20) | CONFIRMED |
| S-100: B′-term gap, repair (V19) | gap CONFIRMED; repair stays [P-sketch] |
| S-106: sup bound C(M)δ_rR_k^5ε_k² → 0 (V21–V24) | CONFIRMED relative to (H), (Z), D3R Lemma P3, R-042 |
| S-106: "Balaban's (1.6) method" (V25) | CORRECTED: same sup-bound form, different source of smallness |
| S-106: no new canon condition (V26) | CORRECTED: (C-P5) is a new γ-small canon line |
| S-106: placement, G^c extension (V27) | CONFIRMED ([I] for α_{i,k} formula) |
| S-107: Lemma G-3 (V28) | CONFIRMED |
| S-107: D2C uses only real centres (V29) | CORRECTED: complex centres occur; Q_{r_0} suffices with source set {\|Re\| ≤ r, \|Im\| ≤ r/2}, margin r/2, factor 2 |
| S-107: strip = Lemma N3 at τ_0 = r_0 (V30) | CONFIRMED; family (A) at complex c is R-040/R-041 along N3 trajectories |
| S-83: Lemma G-4 Steps 1–6 (V31–V36) | CONFIRMED with minor CORRECTIONS (S class cut-off f_1; FF^T term) |
| S-83: inputs list (V37) | CORRECTED: add Lemma 1.3's [R]/[I] inputs |
| S-83: Lemma 4.2's [I] step closed (V39) | CONFIRMED |
| S-83: R-030 row → PROVED (V40) | UNSUPPORTED; row stays reduced |

## 7. Safe ledger statuses

- R-043: grade unchanged, "reduced". Safe text: "H-191 (FX2) coarsest-scale radius: no longer a separate input. Lemma G-1 (SOURCES_L1_G §1; verified with corrections, SOURCES_L1_G_VERIFY §2): every E-, R′-, B′-, e-term and every (FX) activity is holomorphic on ‖ζ‖_∞ ≤ r/2, ‖∇ζ‖ ≤ ρ_1/2, which is ≥ τ_m(Γ) for c_τ ≤ E_0/2; inputs N2 [I, verified FX_O23_VERIFY], O3 re-run at radius r/2, K-014, R-042, R-044 (W4). Remaining: R-042, R-044 (W4). Fallback order 1 + η + 2/3 (D = 5/3 + 2η, OS-admissible) is proved for R′-terms; B′-terms with c_1 = α^{1/3} ((1.99), p. 390 [V]) have a [P-sketch] repair; the main route does not use the fallback."
- R-030: grade unchanged, "reduced [R, verified]". Safe text: replace "The only remaining open input is (Gap_f)" by "(Gap_f) proved at fixed j (Lemma G-4, SOURCES_L1_G §4; verified with minor corrections, SOURCES_L1_G_VERIFY §5) relative to (Gap) at (T) (q_j > 0 [P, verified]; γ_j by T2_G2 Lemma 1.3 with its [R]/[I] inputs), CMP 98 p. 19 (11), p. 24, CMP 99 p. 406 (3.78)–(3.81) [V], the left-chart identification of Q̃ [I], and the description of U_0^φ [I]. Gauge covariance of the linearized average [P] from CMP 98 images. Remaining [I]: T2_G2 §5.5 per-cell form at V_f; T2_G2_VERIFY §7.3 (ii)–(iii)."
- Q-050 (inside R-016): stays "CLOSED relative to listed inputs". Safe text for the residue: "H-237 (P5) vertex: Gaussian booking not needed; sup bound |L_f| ≤ δ_rΨ(g_k), Ψ = C(M)R(g)^5ε(g)² → 0 (Lemma G-2, SOURCES_L1_G §2; verified, SOURCES_L1_G_VERIFY §3), relative to D3R Lemma P3 (|ω − 1| ≤ g_k²δ_r), NEW4 §3 curvature bound, R-042 for complex f; new canon line (C-P5) γ ≤ γ_P5(M); readings ‖H_{1,k}‖ ≤ O(1)B_3 in local sup form, 0 ≤ ζ_0 ≤ 1, G^c extension stay [I]."
- K-024: stays a constant choice. Safe text for the last clause: "uses (Hβ): real c by Lemma H; complex c on Q_{r_0} = {|Re c| ≤ 2r_0, |Im c| ≤ r_0} by L-232 (Lemma N3) at τ_0 = r_0 (row R-042); D2/D2C complex source set {|Re f| ≤ r, |Im f| ≤ r/2} with Cauchy margin r/2 (factor 2 in the freezing constants), Lemma G-3 (SOURCES_L1_G §3; verified with correction, SOURCES_L1_G_VERIFY §4); family (A) at complex c is R-040/R-041 (H-hol) along N3 trajectories."
- R-016: grade unchanged. Only the Q-050 sentence changes, as above. H-035 (M1) residue keeps Q-049 and K-035.

## 8. Report

G-1 (S-100): holds. The radius loss came only from D3's denominator model, and (1.100) on the image has no E-terms. Corrections: R-043 must name R-044 (W4), O3 must be re-run at r/2, and the freezing step is a fixed-margin Cauchy estimate. The fallback D = 5/3 + 2η is confirmed, and the B′ gap is confirmed. G-2 (S-106): holds, because |ω − 1| ≤ g_k²δ_r. (C-P5) is a new canon line, and Balaban's (1.6) gets its smallness from another source. G-3 (S-107): holds with complex source set {|Im| ≤ r/2}, margin r/2. G-4 (S-83): (Gap_f) holds; R-030 stays reduced.
