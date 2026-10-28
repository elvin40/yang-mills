# SOURCES_ORDER_CANON — M-free, α-free caps for the complex-level constants; canonical order; fix list

Date 2026-10-28. Author: Claude (Opus), unverified. No other file edited.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Inputs: SOURCES_ORDER_CHECK (full); A1_WALK_FULL §8, §9.1; WC_FULL §5–§6, 6.9; SOURCES_WC_RESIDUE + VERIFY Q5–Q7; SOURCES_A3_GAMMA0_FULL; order lines of SOURCES_A11_CONST §9, SOURCES_G3_GGAMMA 4.4, SOURCES_HIGHER_M1 B3.
Tags: [P] proved here from quoted text; [V] checked against a quoted source line; [I] rests on a source claim not re-proved here.

(Sections are appended below as the work proceeds.)

## A. The [I] cap: complex-level constants are free of α‴, α″, α′, M, M_1

A.0 Goal. ORDER_CHECK §2 rests on one [I]: the level constants Γ_n, k_n, B_A″, δ_A″, ε″, c_{−,1} are functions of (d, L, N, a, a_0, a_1) and fixed caps, not of the domain sizes or of M, M_1. This part proves it constant by constant, relative to the inputs tagged below.

A.1 Fixed caps (all chosen before M_1; none is a domain size).
- Real background caps: Mα_0 ≤ a_0 (regularity, A1_WALK_FULL 0.3); Mα_0 ≤ a_L(d, L, N, a) (Theorem L: (H_E) and (3.1), WC_FULL 2.1, 3.2; A3_GAMMA0_FULL (H3) α_*(d, L)); Mα_0 ≤ a_{−,1} := 1/(2C_{G1}) (see A.4 item 6; fixed in B12c); Mα_0 ≤ a_* , a_**. Here a = 1 in CMP 99 (A3_GAMMA0_FULL 6.4).
- Complex caps: a_1 (CMP 99 Thm 3.4 [V]); J-caps in scaled form, α_0‴ ≤ a_**/M, so that |Δ^{(2)}| ≤ O(1)|J| ≤ O(1)a_**/M (E5), and M·M_1^{12}·α_0‴ ≤ c″ (CMP 99 (3.137); WG-1 for G_1, A1_WALK_FULL F3); 𝒢-weight caps α_1″ ≤ a_𝒢(d, L, N) and α_1″ ≤ a_t(d, L, N) (WC_FULL 6.5: "max|A_Γ| ≤ 0.2/√N", "‖t_{Γ,b}‖² ≤ 2 for α_1″ small").
- Geometry: c_P(d), C_𝒟, C_𝒟^{(1)}, C″_𝒟, C′_𝒟, K_0, K_1, D_+, c_h (A1_WALK_FULL 2.1, 6.9a; WC_FULL 4.2).
- The concatenation split θ_c ∈ [1/16, 1), fixed (for example ½). The lower bound keeps every rate ≥ ¼ε_min (amendment E3). It is the θ of WC_FULL 4.2 and of δ_1 = (1 − θ)½ε. It is not θ_S = log L/(RM).
- Real constants fixed at M_min (A1_WALK_FULL 9.1 steps 2–4): c_−, b_G, c_G, δ_G, Σ(·) on 𝔅, c_+ = C_𝒟b_G, ε; WG-G1 constants B_1, δ_1; γ_exp = ¼γ_e(d, L).

A.2 Two lemmas [P].
Lemma M1 (domain monotonicity). If a ≤ b componentwise, then 𝒰(a) ⊆ 𝒰(b).
Proof. Every constraint in the definition of 𝒰 (A1_WALK_FULL 8.1, WC_FULL 6.0) bounds a quantity above by one component of a: |A′|, |∇A′|, |D*DA′| < a_1; |J| < a_0; the plaquette bound of CMP 109 (1.13)–(1.14), whose right side grows with a. Raising a component weakens the constraint. ∎
Consequence. If a kernel or operator bound holds on 𝒰(cap), it holds on 𝒰(α) for every α ≤ cap. So sup_{𝒰(α)}‖X‖ ≤ sup_{𝒰(cap)}‖X‖, and every constant defined as such a bound can be defined once at the cap.
Lemma M2 (safe direction of the formulas). The chain uses only these maps:
 S(δ), Σ(δ) — decreasing in δ;
 Γ = 2C·b·Σ(δ) — increasing in b, decreasing in δ;
 k = c_P·c/(c + 4Γ) (or c + 2Γ) — increasing in c, decreasing in Γ;
 ε^a = min{½δ, c/(16C·b·Σ(½δ))} — increasing in δ and c, decreasing in b;
 e^{2Lδ} (range factor of the explicit pieces inside B_A″, A.4 item 10) — increasing in δ. This map is not used in the safe direction: the level-2 rate is defined as δ_A″ := δ̄_A″ (a kernel bound at a rate implies the same bound at any smaller rate with the same prefactor), so the factor is evaluated at the rate actually used (amendment E4).
So if each input is replaced by a one-sided bound (b by an upper bound; δ, c by lower bounds), Γ grows, k and ε^a shrink. Each change is safe. k enters only as α^{(n)} ≤ k·α^{(n+1)}, which shrinks a domain. A rate enters only as decay "at least e^{−rate·d}". A prefactor or Γ enters only as an upper bound or inside an M_1 threshold, and M_1 has only lower bounds. ∎
Consequence. It suffices to give, for each constant, a bound in the safe direction by an explicit function of A.1. The value at the cap is that bound.

A.3 Explicit lattice sums [P]. On the unit bond lattice of WC_FULL, |b − b′| ≥ |x|_2 − 1 for bonds based at sites differing by x, and |x|_2 ≥ |x|_1/√d. With Σ_{n∈ℤ}e^{−s|n|} = coth(s/2):
 S(δ) ≤ d·e^{δ}·coth(δ/(2√d))^d, Σ(δ′) ≤ (1 + 2/(eδ′))·S(½δ′).
Both are functions of (d, δ) only. On the multiscale lattice 𝔅 of A1_WALK_FULL, c_1(κ) and Σ(κ) are uniform under CMP 96 (2.59) RM > M_*(κ) [R, printed proof]. That is a threshold on M at the rate κ, not a value that depends on M.

A.4 Constant by constant. Bars denote the explicit caps. "θ_S" dependence is fixed at M_min (item 0).
0. θ_S = log L/(RM) ≤ θ_S(M_min). δ_G = δ_W′ − (d/2 + 1)θ_S increases with M (A1_WALK_FULL (H1)). So δ_G(M) ≥ δ̄_G := δ_G(M_min). b_G, c_G at M are ≤ their values at M_min [I: A1_WALK_FULL F4; proved for Σ only]. This is the only M-dependence of the inputs. It is removed by monotonicity, not by a cap.
1. c_+⁗ (level 4, domain 𝒰(∞, a_1)). The domain is fixed by a_1; no α‴, α″, α′ enters. c_+⁗ = C_𝒟b⁗ ≤ c̄_+⁗ := C_𝒟·b_G(M_min)·(1 + C_Th·a_1) [R: Thm 3.4 "the inequalities … correspondingly"; ‖Ad e^{iA′}‖ ≤ e^{2|A′|}, A1_WALK_FULL 8.4]. δ⁗ = δ_G ≥ δ̄_G. Uses: d, L, a, a_0, a_1, C_Th.
2. Γ_4 := 2c_+⁗Σ(δ_G) ≤ Γ̄_4 := 2c̄_+⁗Σ(δ̄_G) [P from 0, 1, Lemma M2].
3. k_3 := c_Pc_−/(c_− + 4Γ_4) ≥ k̄_3 := c_Pc_−/(c_− + 4Γ̄_4) [P]. c_− is M-free and α-free [conditional (C), A1_WALK_FULL (H2)].
4. ε_3 := min{½δ_G, c_−/(16c_+⁗Σ(½δ_G))} ≥ ε̄_3 := min{½δ̄_G, c_−/(16c̄_+⁗Σ(½δ̄_G))} [P, Lemma AW(b) + M2].
5. B_1‴, δ_1‴ (level 3, domain 𝒰(α‴)). δ_1‴ = (1 − θ_c)·½ε_3 ≥ δ̄_1‴ := (1 − θ_c)·½ε̄_3 [P]. B_1‴ = O(1)B_1 [I: A1_WALK_FULL 8.4, WC_FULL 6.4]. The α‴-dependence enters in two places only. (a) The A′-part: H = GQ*(QGQ*)^{−1} uses the level-3 bound 8/c_− (Lemma AW), valid on all of 𝒰(k̄_3a_1); α_1‴ does not enter. (b) The J-part: ‖Δ^{(2)}‖ ≤ O(1)|J| ≤ O(1)a_**/M ≤ O(1)a_** (CMP 99 (3.137); WG_FULL (I5), 5.5; amendment E5) and the WG-1 free factor, which uses only M·M_1^{12}·α_0‴ ≤ c″. So B_1‴ ≤ B̄_1‴(d, L, a, a_0, a_**, c″) [P given the [I] form B_1 = B_1(d, L, a, a_0) under WG-1, WG_FULL 4.7]. M and M_1 enter only through the two scaled caps.
6. c_{−,1} := c_−(G_1) ≥ c_−(1 − C_{G1}Mα_0) [conditional, A1_KERNEL §9; WC_FULL 6.5]. C_{G1} is the constant in A1_KERNEL §9's "|⟨A, Δ^{(2)}_πA⟩| ≤ O(Mα_0)·(form of (C)) … via Schur": the O(1) of (3.137) times the Schur sum of CMP 96 Lemma 2.1 [I]. It may use real walk constants (B11), so it is fixed in B12c. The real α_0 enters only through Mα_0. Under the cap Mα_0 ≤ a_{−,1} = 1/(2C_{G1}): c_{−,1} ≥ c̄_{−,1} := ½c_− [P]. If instead the cap a_0 is used, c̄_{−,1} := c_−(1 − C_{G1}a_0) needs C_{G1}a_0 < 1; this is a smallness condition on a_0, which is a Balaban constant fixed in step 2. Either way no M and no α^{(n)} remain.
7. Γ_3 := 2C_𝒟^{(1)}B_1‴Σ(δ_1‴) ≤ Γ̄_3 := 2C_𝒟^{(1)}B̄_1‴Σ(δ̄_1‴) [P; tree count C_𝒟^{(1)} is [I] cube geometry, A1_WALK_FULL 6.9a Fix A]. A1_WALK_FULL 8.4 writes C_𝒟; for the G_1 tree form the set-form count C_𝒟^{(1)} is the right one. A larger count only lowers k_2.
8. k_2 := c_Pc_{−,1}/(c_{−,1} + 4Γ_3) ≥ k̄_2 := c_Pc̄_{−,1}/(c̄_{−,1} + 4Γ̄_3) [P].
9. ε_2 := min{½δ_1‴, c_{−,1}/(16C_𝒟^{(1)}B_1‴Σ(½δ_1‴))} ≥ ε̄_2 (same formula with bars) [P].
10. B_A″, δ_A″ (level 2, domain 𝒰(α″)). δ_A″ := δ̄_A″ := (1 − θ_c)·min{½ε̄_2, δ̄_1‴} ≤ (1 − θ_c)·min{½ε_2, δ_1‴} [P; amendment E4: the rate is fixed at the bar value, so the factor e^{2Lδ} below is e^{2Lδ̄_A″}]. The explicit pieces C, C*, 𝒢*𝒢, aI have range ≤ 2L, so they decay at any rate with a factor ≤ e^{2Lδ}, absorbed in B_A″. B_A″ is the sum of four piece bounds (WC_FULL 4.2 at complex points, 6.5):
 (a) C, C*: c_C(d, L)·(1 + C_Th·a_1) [I: "M analytic near 1, Q̃ explicit", WC_FULL 6.5];
 (b) 𝒢*𝒢 ≤ 8c_𝒢, c_𝒢 = d(L − 1)L^d/2, under α_1″ ≤ min(a_𝒢, a_t) [P given WC_FULL 6.5]; a·I = a;
 (c) (QG_1Q*)^{−1}: per tree 8/c_{−,1} ≤ 16/c_− under item 6;
 (d) Δ_J: one factor O(|J|) ≤ O(a_**/M) ≤ O(a_**) (E5) times the branch sum c_1(θ_cδ̄_A″).
 Junctions cost c_1(θ_c·δ) each; the number of junctions per main line is fixed (two outer factors). So B_A″ ≤ B̄_A″(d, L, N, a, a_0, a_1, a_**, c″, θ_c) [P given the tags]. The sum Σ_ω|A_ω| ≤ 2B_A″e^{−δ_A″|b−b′|} needs C′_𝒟c_1ρ_A″ ≤ ½. That is a threshold on M_1 (and a real cap on Mα_0 for ρ_*), not a value in B_A″.
11. c_A″ := C_𝒟B_A″ ≤ c̄_A″; Γ_1″ := 2c_A″Σ(δ_A″) ≤ Γ̄_1″ := 2c̄_A″Σ(δ̄_A″) [P].
12. k_1 := c_Pγ_exp/(γ_exp + 2Γ_1″) ≥ k̄_1 := c_Pγ_exp/(γ_exp + 2Γ̄_1″) [P]. γ_exp = ¼γ_e, γ_e^{−1} = K_b(1 + 6d/m_L) + 6/m_L, K_b = 8dL^d(1 + 16dc_𝒢): a function of (d, L) only, valid under Mα_0 ≤ a_L (WC_FULL 3.2, 3.4).
13. ε″ := min{½δ_A″, γ_exp/(16c_A″Σ(½δ_A″))} ≥ ε̄″ := min{½δ̄_A″, γ_exp/(16c̄_A″Σ(½δ̄_A″))} [P].
Result of A.4. Each of Γ_4, Γ_3, Γ_1″ (upper), k_3, k_2, k_1 (lower), B_A″ (upper), δ_A″ (lower), ε″ (lower), c_{−,1} (lower) is bounded in the safe direction by an explicit composition of S, Σ, min, and rational maps of
 (d, L, N, a, a_0, a_1; caps a_**, c″, a_𝒢, a_t, a_{−,1}, a_L; θ_c, c_P, C_𝒟, C_𝒟^{(1)}, C_Th; real constants c_−, b_G, δ_G at M_min; B_1).
None of α‴, α″, α′, M, M_1 appears. M appears only through θ_S (item 0, fixed at M_min) and through scaled caps (items 5, 6, 10). M_1 appears only through the scaled cap M·M_1^{12}·α_0‴ ≤ c″ (item 5) and through thresholds.

A.5 Where M_1 and M appear: thresholds, not values [P].
Every occurrence of M_1 or M next to a level constant is a lower bound on M_1 or M whose right side uses only level constants:
- M_1 ≥ M_W^c at each level (Lemma AW(c); A1_WALK_FULL 8.3): uses c_+^b, δ^b, c_− or c_{−,1}, and c_1(½ε^a).
- M_1 ≥ (2δ_A″)^{−1}log(8B_A″S(½δ_A″)/γ_exp) (WC_FULL 6.7, complex local positivity); the real analogue with B_A, δ_A (WC_FULL 5.2(d)).
- C′_𝒟c_1ρ″ ≤ ¼ with ρ″ = max{K_F″/M_1, c_1ρ_A″} (WC_FULL 5.3 at complex points): M_1 ≥ 4C′_𝒟c_1(½ε″)K_F″, K_F″ built from B_A″, δ_A″, γ_exp, c_h.
- M > 48κ_1/ε_min with ε_min ∋ ½ε″ (A1_WALK_FULL 9.1 step 6); (H_κ) LM ≥ 16·3^dκ_1/ε″ (A8); M_Γ = (4/ε″)log[…] (G3_GGAMMA 4.3); RM > M_*(¼ε_min) (CMP 96 (2.59)).
None of these feeds back into a level constant. So the edge "M_1 → level constant" and "M → level constant" of ORDER_CHECK §2 Cycles A and B does not exist. The edges go from the level constants to M_1 and M only.

A.6 The domain sizes as explicit functions [P]. With the bars of A.4, put
 j‴ := min(a_**/M, c″M^{−1}M_1^{−12});
 α‴ := (j‴, k̄_3a_1);
 α″ := ½k̄_2·(min(α_0‴, α_1‴), min(α_0‴, α_1‴)), then α_1″ := min(α_1″, a_𝒢, a_t);
 α′ := ½k̄_1·(min(α_0″, α_1″), min(α_0″, α_1″)).
Check of the mixed row (A1_WALK_FULL 8.1): a = ½k·(m, m), m = min(b_0, b_1), gives a_0 + a_1 = k·m ≤ k·b_0 and a_1 ≤ k·b_1. So t(a, b) ≥ c_P/k ≥ t_n, as Lemma CP and Lemma AW need. Any smaller domains also work (Lemma M1). These α^{(n)} depend on M and M_1 (through j‴). The level constants do not depend on them. This is the split of ORDER_CHECK §2, now proved: level constants (A.4) before M_1; domain sizes (A.6) after M.

A.7 What still depends on something, and whether the split survives.
- θ_S. δ_G, b_G, c_G depend on M through θ_S. Fixed at M_min by monotonicity (A.4 item 0). This is the old F4 [I] of A1_WALK_FULL. If monotonicity of b_G, c_G in θ_S fails, the split still works: define b̄_G := sup_{M ≥ M_min} b_G(M), which is finite if Balaban's O(1) is uniform in M ≥ M_min (CMP 99 p. 416 "O(1) depends on d and L only" [V]). That reading makes the sup an (d, L) constant. So the [I] reduces to "Balaban's O(1) is M-uniform", which CMP 99 states.
- B_1 under WG-1. B_1‴ is M-free only in the scaled form of the J-cap (A.4 item 5). This rests on WG_FULL 4.7 [I]. If WG-1 were an M-dependent value, B_1‴ would depend on M; the split would then need B̄_1 := sup_M B_1(M) < ∞, which is what WG-1 is designed to give.
- c_{−,1}. Conditional on (C) for G_1. Its cap form is [P] once (C) holds.
- c_+⁗, piece (a) of B_A″. Depend on a_1 through Thm 3.4 [R]. a_1 is a Balaban constant, so the split is unaffected.
- No constant truly depends on α‴, α″, α′, M, or M_1. The split works without fixing any constant "at the cap" beyond the definitions of A.4.
New items found (not in the source files):
- N1. The 𝒢-weight caps α_1″ ≤ a_𝒢, α_1″ ≤ a_t of WC_FULL 6.5 are missing from the chain lists of A1_WALK_FULL 8.4 and WC_FULL 6.8. They are smallness conditions on α″ after (d, L, N). Add them to the α″ row (A.6).
- N2. WC_FULL 6.4 and 6.8 still write the J-row as c′M^{−11} (the G form). For G_1 the row is c″M^{−1}M_1^{−12} (A1_WALK_FULL F3; implied by c″M^{−13}).
- N3. "The final rate depends on (d, L, N, a, a_0)" (A1_WALK_FULL 8.4; WC_FULL 6.8; WC_RESIDUE 7.2) omits a_1 and the caps. ε̄″ depends on (d, L, N, a, a_0, a_1) and on a_**, c″, θ_c, C_Th, and the conditional c_−. The caps are fixed numbers after (d, L, N, a), so the statement is right in substance, but the list must include a_1.
- N4. Symbol clash: A1_WALK_FULL's regrade note "k_2 = 12 enters ρ_{G_1}" uses k_2 for a tree constant. The chain also uses k_2 (8.4). Rename the tree constant (for example k_T = 12).
- N5. Symbol clash: M_1(d, L) of CMP 99 Thm 3.1 (A3_GAMMA0_FULL (H2), WC_FULL 0.3 "M ≥ max(M_1(d, L), L)") is a threshold on M, not the cube size M_1. Write it M_99(d, L), as HIGHER_M1 B3 does.
- N6. Symbol clash: α_*(d, L) of A3_GAMMA0_FULL (H3) / WC_FULL 0.3 (a cap on Mα_0) vs α_* of S2_G1_V7 B1.4 (α_0 + α_1 ≤ α_*). The canon writes the first a_L.

## B. The canonical order

Rules. One constant (or one tied group) per line: conditions; files that fix it. "≥" = lower bound (up-set), "≤" = upper bound (down-set). Every condition uses only constants on earlier lines [P after amendments E1–E3 and the topological pass E7; the first version had forward references (SOURCES_ORDER_CANON_VERIFY §4)]. The seven resolutions of ORDER_CHECK §4 are applied and marked (R1)–(R7). Renames: β_0^H (Hölder bound, was "β_0" in C27); r_0^{exp} (integer exponent) vs r_0^{rad} = τ_0 (radius); ν_I, ν_II (two uses of ν, IEPS_LF_VERIFY); a_L (Theorem L cap on Mα_0, was α_*(d, L)); M_99 (CMP 99 Thm 3.1 threshold, was M_1(d, L)); θ_c (concatenation split) vs θ_S vs θ_WG; C_i^{116} (CMP 116 (1.20)–(1.22) constants) vs C_0, C_1 (α_{i,j} prefactors).

Group 0. Free exponents.
B1. β_0^H ∈ (0, 1). Hölder bound of CMP 99 Thm 2 / CMP 102 Thm 1; costs B_2(β_0^H), B_4(β_0^H). Not the CMP 119 β_0 ≤ ½ (B6). — C27; SOURCES_GGAIN_BETAH §5.
B2. β_H ∈ (0, β_0^H]. — C27; SOURCES_A10_LOWER_VERIFY (5).
B6. β_0 (CMP 119 slack): β_0 ≤ ½ (S3). Moved here from Group 2 (E2); B4 uses its cap. — SOURCES_A11_CONST S3.
Group 1. Dimension, group, block factor.
B3. d ≥ 2; N (G ⊂ U(N)). — WC_FULL 0.10.
B4. L odd, L ≥ 13, in the certified set of HIGHER_M1 B1. S10, 2(1 + β_0)L^{−2} + 0.4 < 1, holds for every β_0 ≤ ½, so it is checked with the cap ½ of B6. — SOURCES_A11_CONST S10; SOURCES_HIGHER_M1 B1.
Group 2. Constants of (d, L, N) and fixed caps.
B5. θ_WG = ½ (a number; first); β = ¼; δ: (K1′) δ ≤ (1/13)(1 − 4(1 + 4β)/L) (θ_K ≥ ½ inserted; F.2), δ = 0.025 at L = 13 (was (1/10)(1 − 2/L)); δ_[15](d, L); B_3, B_0, δ_0, c_0, γ_0, γ_1, C_i^{116}; CMP 102/109/122 numbers (F.2): B ≥ B_3, c_□^{109}, c_reg, a_0^{102}, a_1^{102} (B_3a_1^{102} ≤ a_0^{102}), R_1 (< L [I]), C_1^{102} = L³ ≥ 1, C_2, C_4, B_1^{102}, B_5^{102} = 6B_1^{102}B_3C_1^{102}, c_1^{102}, B_5^{122}, L_0 (a_{L_0} := log L_0/log L < 1), C^{122} ≤ 2, c_m(d, L), θ_H = ½, κ_H ∈ {2, ½, ½, ⅛}; a (= 1), a_0, a_1 (CMP 99 Thm 3.4), c_J(d, L); local constants c_Q, c_ι, c_b, c_κ (d, L only; WG_FULL (I7), 2.5, 5.2(i), 6.4); E_0 (absolute; may go first); γ_e, γ_exp = ¼γ_e; c_P(d); geometry C_𝒟, C_𝒟^{(1)}, C_𝒟^{H1}, C″_𝒟 = T_2C_𝒟^{H1}, C′_𝒟, C_ov, c_h, K_0, K_1, D_+; caps a_L, a_𝒢, a_t (a_{−,1} is in B12c); θ_c ∈ [1/16, 1) (E3); C_Th; M_99(d, L). — A1_WALK_FULL 9.1 step 2; SOURCES_T2_IEPS §10; WC_FULL 3.2, 6.0, 6.5; G3_GGAMMA 4.4; Part A.1.
B5a. B_0′ := c_QB_0 (WG_FULL (G), 2.5); c_1(θ_WG½δ_0), K_V, M_* (threshold on M_1), a_* = K_V^{−1}(4C′_𝒟)^{−10} (Theorem WG-G); c′ := c_0^{10}K_V^{−1}. — WG_FULL 4.3, 4.5, 4.7, 6.4 (E1).
Group 3. κ's.
B7. κ: large; δLκ/48 ≥ K_abs; κ ≥ 2m_tot (so θ_K := 1 − m_tot/κ ≥ ½, the value used in B5's (K1′)); κ ≥ (1 + 4β)·6·2^d/(βθ_K) from CMP 122 II (1.94) at κ_eff = θ_Kκ/(1 + 4β), i.e. κ ≥ 1536 at d = 4, β = ¼, θ_K = ½ (with κ ≥ 4c_d, so κ_final^θ ≤ 1.5κ in B18). — SOURCES_T2_IEPS §10; SOURCES_T2_KAPPA2 l. 125 + VERIFY items 1, 3; SOURCES_A23_TSTEP §4 + VERIFY §8.
B8. κ_0 ≥ 7, large; then β_0′ with (1 + β_0′)^{κ_0} ≤ 1 + β_0 if a step needs it (S11). — SOURCES_A11_CONST §4 #16, S11.
B9. κ_1: ⅛(κ_1 − 1) ≥ (1 − 3δ)κ; ½(κ_1 − 1) ≥ 2Lκ; large. Before M_1 (R6). — SOURCES_T2_IEPS §10; C24; SOURCES_HIGHER_M1 B2.2.
Group 4. Constants fixed before M_1 (the M-free side of the split).
B10. R, M_min(d, L) (θ_WG is in B5): θ_S = log L/(RM) ≤ δ_0/(4(d + 2)) for M ≥ M_min. — A1_WALK_FULL 9.1 step 2; WG_FULL 0.6.
B11. Walk constants at M_min: c_−, b_G, c_G, δ_G, c_X, c_loc, Σ(·), c_1(·); c_+ = C_𝒟b_G. Monotone in θ_S [I, A1_WALK_FULL F4; see A.7]. — A1_WALK_FULL 9.1 step 3; WG_FULL 6.4.
B12. ε = min{½δ_G, c_−/(8c_+Σ(½δ_G))}; c_1(½ε), Σ(½ε), Σ(¼δ_G), K_F, K_W, C_W, B_W, c_W; thresholds M_a, M_e, M_e′, M_N, M_c, M_W, M_*′ (M_* is in B5a). Before M_1 (R4). — A1_WALK_FULL 9.1 step 4, 5.7; WG_FULL 6.4.
B12a. δ_1 := ½ε (WG common rate); a_*′ := min{a_*, K_V^{−1}(4C_𝒟^{H1}c_1)^{−10}, K_V^{−1}(4C″_𝒟max{1, c_W})^{−10}}; c_L, K_2; a_** := min{a_*′, a_0, K_2^{−1}(4C″_𝒟)^{−12}}; c″ := c^{12}K_2^{−1}. — WG_FULL 5.9 (i)–(iii), 5.10 remark (b), 6.4 (E1).
B12b. B_1 and the tree rate (1 − θ_WG)δ_1 of Theorem WG-G1 (valid under Mα_0 ≤ a_**). — WG_FULL (G1), 4.7 (E1).
B12c. C_{G1} (the Schur constant of A1_KERNEL §9, A.4 item 6); a_{−,1} := 1/(2C_{G1}); c_{−,1} ≥ c̄_{−,1} = ½c_− (cap Mα_0 ≤ a_{−,1}); then δ_W, the real A1-W rate for P = G_1, from c_{−,1}, B_1, δ_1. — WC_FULL (A1W), 6.5; A1_KERNEL §9 (E1).
B13. WC real constants: B_A, δ_A, ε_WC = min{½δ_A, γ_exp/(8B_AΣ(½δ_A))}, Γ_1 = 2B_AS(δ_A), K_F^{WC}. — WC_FULL 4.2, 4.3, 5.2(e); G3_GGAMMA 2.3.
B14. Level constants (Part A.4, all M-free and α-free): c_+⁗, Γ_4, k_3, ε_3; B_1‴, δ_1‴, Γ_3, k_2, ε_2 (c_{−,1} from B12c); B_A″, δ_A″, c_A″, Γ_1″, k_1; ε″. Then the level thresholds M_W^c and K_F″. Before M_1 and M (R7). — A1_WALK_FULL 8.4; WC_FULL 6.4–6.7; this file A.4.
B14a. 𝒲_S tree constants: C′_𝒟^f := C′_𝒟 enlarged by the finite W_S tag set (a (d, L) multiple); B_𝒲, B_𝒲″, B_𝒱, K_W^T, K_W^{T″}, K_V^T, δ_𝒲″ = (1 − θ_c)δ_A″, k_𝒲 = 12, ρ_f := ε″/32. After B_A″, δ_A″, ε″, c_{−,1}, B_1‴. Verified (B92) with two corrections: in A16-2 2.3 read C′_𝒟ρ_A ≤ ¼ (not ≤ ½; it holds by WC 5.3); the (Anc) product form concatenates at the elementary-block level (one (1 − θ_c) in total). C′_𝒟^f names the nested-branch and second-pass (C_𝒟^{(1)}) counts. — SOURCES_A16_REPLACE2 §2.3, §6.2, §7.2; SOURCES_A16_REPLACE2_VERIFY §3, §5, §6.
Group 5. Cube sizes (only lower bounds).
B15. M_1 = L^{m_1}: M_1 ≥ M_W; ≥ M_W^c at each level; ≥ (2C_Wc_1K_W)²; ≥ M_*, M_*′; ≥ 3c_loc; ≥ (2δ_A)^{−1}log(4B_AS(½δ_A)/γ_exp) (WC 5.2(d)); ≥ (2δ_A″)^{−1}log(8B_A″S(½δ_A″)/γ_exp) (WC 6.7); C′_𝒟^fc_1ρ ≤ ¼ real and complex (WC 5.3, with the enlarged count of B14a; verified, B92); ≫ e^{2cκ_1} (A3_SIGMA 5.3); the A7 complex-s clause; M_1 ≥ 1/(L²δ_[15]) (so B16 meets S4). — A1_WALK_FULL 9.1 step 5; WG_FULL 6.4; WC_FULL 5.2(d), 5.3, 6.7; SOURCES_HIGHER_M1 corr.; C24; C29.
B16. M_2 := L²M_1 (CMP 119 p. 245). Determined by B15; M_2 ≥ 1/δ_[15] holds by B15 (S4). (R3: M_1 → M_2 → M.) — C28; C29; SOURCES_A11_CONST corr.
B17. G3_GGAMMA constants K_½, Ḡ (G_Γ ≤ Ḡ, M-free [I, G3_GGAMMA 4.1 unverified]), Λ̄_0, W. This slot is safe even if they depend on M_1; no condition on M_1 uses them. — SOURCES_G3_GGAMMA §2–§4; A8 (G4).
B17a. Sourced-covariance constants: W^f (label count at rate ε″/32), Γ̄_1^f := 2C_𝒟B_A″S(δ_A″ − ρ_f) + (γ_exp/4)·S(δ_𝒲″ − ρ_f)/S(δ_𝒲″) (W_N + W_S) (worst case: the g²r part is capped by the reserved hypothesis (A16-a^T), enforced at B32), the η_M^f prefactor (32/γ_exp)·2C_𝒟S(ε″/32), C_3. Slot after M_1 in case W^f uses M_1. Verified (B92). — SOURCES_A16_REPLACE2 §5.1–§5.4, §7.2; SOURCES_A16_REPLACE2_VERIFY §3, §5.
B18. M = L^m: M ≥ M_req: 32 lower bounds = the 29 entries of HIGHER_M1 B3 (they include the C24 round-4 entries M/M_1 ≥ 3(7 + c_X), RM ≥ 8 log L/(θε), RM > M_*(¼ε_min), with M/M_1 > 10 as 11M_1, and every entry named below except (2.30), A3_SIGMA 5.1, and M ≥ 1/c_J) + those three. Named here: M > M_2 = L²M_1, that is m ≥ m_1 + 3 (R3); M > 48κ_1/ε_min with ε_min ∋ ½ε″; (H_κ) LM ≥ 16·3^dκ_1/ε″; (H_M) M ≥ 2c′M_1; (H_η); M_Γ; M_{α5}; (2.30) η = δκ/(24c_dM⁴) ≤ 1; A3_SIGMA 5.1; M ≥ max(M_99, L); M ≥ 1/c_J (E5). Added in F (+5, total 37): M ≥ 5M_99 with 10 | C^{122}M (CMP 99 applied at cube scale M_□^{99} := C^{122}M/10 ≥ M_99; SOURCES_A18_REGULAR_VERIFY V6); (H_κ^f) LM ≥ 32·3^dκ_1/ε″ (implies (H_κ)); (H_η)^f M ≥ M_η^f = (16/ε″)[2·3^dκ_1 + log(256W^f(Γ̄_1^f)²/γ_exp²)]; Γ̄_1^f·η_M^f(ε″/32) ≤ ½; O(1)e^{4·3^dκ_1}e^{−ε″M/16} ≤ Balaban's small constant ((2.16)^f side condition). The last four are from SOURCES_A16_REPLACE2 §5.1, §5.4, §7.2, verified (B92; SOURCES_A16_REPLACE2_VERIFY §3, §5). (K3) and FX_R2 P2: the HIGHER_M1 B3 entry M ≥ 12L(3κ_final/C_1^{FX})^{1/d} and (K3) M ≥ 12L(3κ_final^θ/C_1^{FX})^{1/d} (d = 4: 12L(4.5κ/C_1^{FX})^{1/4}) are both implied by M ≥ 12L(3κ_final)^{1/d}, because C_1^{FX} ≥ 1 (FX_R2 §4, last paragraph). B18 uses this C_1-free form, so no M-condition uses C_1^{FX} (B18b) and no edge B18 → B18b or B18 → B29 arises. (K3) adds no new count: it is implied by P2. Only lower bounds; no upper bound on M. The CMP 102 cube cap M ≤ R_1M_1a_1^{102}/ε_1^{102} is booked as an upper bound on ε_1^{102} (B18a) and on ε_0^{109} (B22a), not on M. — C24; SOURCES_HIGHER_M1 B3; G3_GGAMMA 4.3; A8; this file; SOURCES_A18_REGULAR + VERIFY; SOURCES_A16_REPLACE2 + VERIFY; SOURCES_T2_KAPPA2 (K3); SOURCES_FX_R2 §3–§4.
B18a. M_0 (CMP 122 I (1.101) cutoff constant; free; uses nothing, so any slot before B30 works); a_*^{102}(C_1^{102}): the largest ε_1^{102} with ε_1^{102} ≤ a_1^{102}, B_3ε_1^{102} ≤ ε_0^{102} ≤ a_0^{102}, ε_0^{102} + C_1^{102}ε_1^{102} ≤ c_1^{102}, (173) B_5^{102}ε_1^{102} small, (187), and the cube cap ε_1^{102} ≤ R_1M_1a_1^{102}/M. After M (cube cap). — SOURCES_T2_HMINUSC §2, §3.4 + VERIFY §3, item 1.
B18b. C_1^{FX} := max(1, C_c): the budget constant of CMP 122 II (1.80), (1.81), (1.88) (FX_R2 route (b)); C_c is the cost O(1) of (1.79), (1.82)–(1.86) and may depend on M and L (FX_R2 §2, §4). After M. Not canon C_1 (B29), not C_1^{102} (B5). Users: the (1.80)-budget conditions of FX_R2 §4 ("p_0 ≥ F × old RHS"), which are γ-small conditions (B30); no M-condition uses it (B18). — SOURCES_FX_R2 §2, §4; SOURCES_T2_KAPPA2 (K3).
Group 6. Smallness parameters (only upper bounds).
B19. ρ_0 ≤ min{0.1, (LM)^{−2}(0.45a/(16n))^{1/2}}. Any slot after B18. — SOURCES_HIGHER_M1 A5; SOURCES_T2_IEPS §10.
B20. Complex domains (A.6): α‴ = (j‴, k_3a_1), j‴ = min(a_**/M, c″M^{−1}M_1^{−12}); α″ ≤ k_2·(mixed row), α_1″ ≤ min(a_𝒢, a_t) (new, N1); α′ ≤ k_1·(mixed row). — A1_WALK_FULL 8.4; WC_FULL 6.4–6.8; this file A.6.
B21. α_*: α_0 + α_1 ≤ α_*, needs α ≪ α′. — WC_FULL 6.9; S2_G1_V7 B1.4.
B22. Fixed-layer α-chain, after α′ (R5): β, α′ → α_1 → α_0 → α_3 → α_2 (α_4, γ_2, α_6, Latin a_1). Conditions: α ≪ α′, which includes real α_0 ≤ α_0′/(CM) with C > c_J (real J ∈ 𝒰(α′), E5); (LM)⁴α_i ≤ ¼; Mα_0 ≤ min{a_0/(1.5·c_□^{109}·L·B), a_*, a_**, a_L, a_{−,1}} ((A18-1); a_0 = a_0^{99}, conversion factor of SOURCES_A18_REGULAR §8); 1.5α_1 ≤ a_1 ((A18-1)); (A18-Q) is implied; WG-1 α_0 ≤ c′M^{−1}M_1^{−10} (G), c″M^{−1}M_1^{−12} (G_1); Mα_0 ≤ a(κ_1); (4B_3O(1)M)²α_0 ≤ β; α_0 ≲ α_1/M; α_3 ≲ α_0, α_1; α_2 ≲ α_3; (Hα-1) α-part of α_5 ≤ 1/(8Λ̄_0). — SOURCES_T2_IEPS §10; A1_WALK_FULL 9.1 step 7; WG_FULL; G3_GGAMMA 4.3; SOURCES_A18_REGULAR §8 + VERIFY V7.
B22a. ε_0^{109} (CMP 109 real-background plaquette constant) (A18-2): ε_0^{109} ≤ α_0/(2B_3); 2ε_0^{109} ≤ a_1^{102}; O(1)LMε_0^{109} ≤ R_1M_1a_1^{102} (factor L per VERIFY V6). Then ε_0^{102} (CMP 102 uniqueness space) in [2B_3ε_0^{109}, a_0^{102}]; nonempty because 2B_3ε_0^{109} ≤ B_3a_1^{102} ≤ a_0^{102}. — SOURCES_A18_REGULAR §5.2, §8 + VERIFY V6–V7.
B23. α_5 (composite, not free); (Hα) (α_5 + G_Γ²δ_S)Λ_0 ≤ ½ holds by B18 and B22. — C25; G3_GGAMMA 4.3.
B24. ε_1: upper bounds via κ_1, B_0, C_i^{116}, α_2, α_4, Latin a_1, M^q, E_0, L; ε_1M^q ≤ 1. — SOURCES_T2_IEPS §10; SOURCES_HIGHER_M1 B2.3.
Group 7. Exponents (use only each other; any slot after B24 and before B26).
B25. r (= r_0^{exp}; r ≥ 2; S7 needs r > 1), ν_I → p_0 with p_0 > (d + 5)r + ν_I + 4 → p_1 → ν_II ≥ 2p_0 + dr → q_0 ≥ p_0 → q_1 ≥ q_0. Merge [V + I]: CMP 119 (2.5), page image p. 255: "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r"; so R_j = (log g_j^{−2})^r up to a factor ≤ L, and r is the log-power of R_j. CMP 122 has no own definition of r_0 (text-layer grep); it uses r_0 only as the log-power of powers of R_j: II p. 363 ν ≥ 2p_0 + dr_0 (factor R_k^d), II p. 383 2p_1 − (d + 5)r_0 > p_0 (powers of R_j in (1.78)). So r_0^{exp} = r; the symbol r_0^{exp} stays as an alias.
 TWO-SIDED: p_1. Conditions: (p_0 + (d + 5)r_0^{exp})/2 < p_1 < p_0 and p_1 ≤ p_0 − 1 − ½ν_I. Existence [P]: the interval ((p_0 + (d+5)r_0^{exp})/2, p_0 − 1 − ½ν_I] has length ½(p_0 − (d+5)r_0^{exp} − ν_I) − 1 > 1 under the p_0 condition, so it contains an integer. — SOURCES_T2_IEPS_LF §7 + corr.; SOURCES_T2_IEPS_LF_VERIFY (ν split); SOURCES_A11_CONST S2, S7.
 A11 addendum: S12 (ν_I ≤ 2(p_0 − p_1 − 1)), S13 (ν_II ≥ 2p_0 + dr_0), S15 (2p_1 − (d + 5)r_0 > p_0) are the three B25 conditions above; no new edge. The addendum writes S12 as "p_1 → ν_I"; the canon fixes ν_I first and reads S12 as the upper side of p_1. Both orders are acyclic. Identification closed: r_0^{exp} = r, merged at the head of B25 (r has only lower bounds, so the move is safe). — SOURCES_A11_CONST addendum.
Group 8. Prefactors (R1, R2).
B26. A_1: γ_0A_1² ≥ 8 + 4 log F (F fixed earlier [I: IEPS_VERIFY §21]). (R1: A_1 → A_0.)
 TWO-SIDED in the old C30 order (A_1 ≤ A_0/(80B_3)). Existence there: A_0 ≥ 80B_3((8 + 4 log F)/γ_0)^{1/2}. In the canon the ratio is a lower bound on A_0 (B27), so A_1 is one-sided and always exists. — SOURCES_T2_IEPS_LF §6–§7; SOURCES_T2_IEPS §10 (iii).
B27. A_0: ≥ 2 (A_0 ≥ n, Cauchy); ≥ k/(2θ_LF), where θ_LF is the fraction of the large-field factor e^{−θ_LFp_0(g)} spent on g^{−k} (GGAIN_LF 3.3; θ_LF = ½ there, so k ≤ 2 gives A_0 ≥ 2, HIGHER_M1 A3.2); ≥ 80B_3A_1 (S5/C30 restated); A_1/A_0 small ((3.9)); large incl. (100MR)^d and κ′ = κ + O(1)M^d(N² − 1). — SOURCES_HIGHER_M1 A1.3, A3.2, B2.3; SOURCES_A11_CONST S5; C30.
B28. C_0 ≥ c(B_3)A_0 (C3); C2; (A18-3) if q_0 = p_0: C_0 ≥ O(1)B_3B_5^{122}M^5A_0/(BC^{122}) (if q_0 > p_0 it is a γ condition, B30). C_i after A_0, q_i after p_0 (R2). — SOURCES_T2_IEPS_LF §7 + corr.; SOURCES_A18_REGULAR §5.3, §8.
B29. C_1: C4, B_3²O(1)Mα_0 < ½α_1 in LF form (C_1/C_0 lower, with q_1 ≥ q_0); C2. — SOURCES_T2_IEPS_LF §7 + corr.
B29a. Scale-indexed rules (not constants): N_0 := least integer with L^{−N_0+1}MR_{k−N_0+1} = M, k_0 = k − N_0 (X10); X6 bounds L^{N_0−1} ≤ (L + 1)(N_0 + 1)^{β_0}R_k, L_0^{2N_0} < L(L + 1)N_0^{−1}R_k; N ≤ R_k, N = R_j on p. 384 (S14). Uses L, M, β_0, r (through R_k). Before γ. — SOURCES_A11_CONST addendum X6, X10, S14; SOURCES_A18_REGULAR §8.
Group 9. Coupling and radii (only upper bounds).
B30. γ: S1, S2, S6–S9; γ < e^{−q_i}; B10, B11; (L1), (L2); (1.68); p. 379; N3(d); HTHR2 R³; C_iF_i(γ) ≤ ¼·bound; (Hγ) (1/20)γ_2ε_1²/γ² ≥ 4κ + 1; (2.31) (1/20)x − 4M^4e^{−x/20} ≥ 0 at x = γ_2ε_1²/g_k² (both confirmed in C26, from SOURCES_G3_N2 §4.2 + VERIFY (3)). Added in F: (A18-4) BC^{122}L_0^{2N_0}M·sup_mC_0g_mℓ_m^{q_0} ≤ a_0/c(d), 3L_0^{2N_0}sup_mC_1g_mℓ_m^{q_1} ≤ a_1, B_5^{122}M^6·O(1)ε_k ≤ R_1M_1a_1^{102}, and (A18-3) when q_0 > p_0; (C1*) c_mM_0·g_kp_0(g_k) ≤ ½κ_HC_1^{102}a_*^{102}, i.e. γ ≤ γ_{C1} ≤ e^{−p_0} (M_0 → c_mM_0 always, HMINUSC_VERIFY); A11 windows X1–X9 ((P-up)/(P-low) type; X7, X8 use the D′ slack of S8); S14 compatibility R_k ≥ (ν_II/log L)log log g_k^{−2}; S16 log g_j^{−2} ≤ R_j. The Route-1 condition (1 + ρ_0)γ(1 − 2ρ_0²)^{−1/2} ≤ γ_hol is NOT added (SOURCES_T2_B7_CLAMP_VERIFY V2: not needed, γ_hol undefined). — SOURCES_A11_CONST S1–S9 + addendum; SOURCES_T2_IEPS §10; SOURCES_T2_IEPS_LF §7–§8; C26; SOURCES_A18_REGULAR §8; SOURCES_T2_HMINUSC §3.4–3.5 + VERIFY.
B31. g ≤ min(γ/2, g_1). — C5.
B32. r_0^{rad} = τ_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)); ρ_1 ≤ r/(4C_hM); 5γ²r ≤ ½. Verified (B92): (A16-a^T) g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4 (enforces the cap reserved in B17a); (A16-b^T) q_W^T := 4(8/γ_exp)c_1(θ_c½ε″)²g²rB_𝒲″(C′_𝒟^f)^{k_𝒲+2} ≤ ¼; the O(γ²r) entries of the α_5/γ_2 budget (2τ_2 of Lemma P^f, O(g²r) of (2.16)^f), which need slack reserved at B23 (F.4). — C5; D3R_VERIFY S4; SOURCES_A16_REPLACE2 §2, §5.4, §7.2; SOURCES_A16_REPLACE2_VERIFY §3, §6.
B33. K. — C5.
Check [P]. Every lower-bounded constant (κ, κ_0, κ_1, M_1, M, A_1, A_0, C_0, C_1, q_0, q_1, p_0, ν_II) has its arguments to its left. Every upper-bounded constant (β's, ρ_0, α's, ε_1, γ, g, radii) has its arguments to its left. The only two-sided constants are p_1 (exists under the B25 condition on p_0) and, in the superseded C30 order only, A_1. Level constants are left of M_1 by Part A; domain sizes are right of M. No cycle. (Updated after the F additions: see F.3–F.4.)

## C. Fix list for the fix pass (no file edited here)

Each item: file, place, what it says now, what it must say to match Part B.

WC_FULL.md
- C-W1. 6.9 (line 309), the order. Now: "d, L, N → Balaban's real constants (δ_0, B_0, M_1, M, a_0, the real regularity α_0, a_1) … → c_±, ε → Γ_4 → α‴ → B_1‴, δ_1‴, c_{−,1} → Γ_3 → α″ → B_A″, δ_A″; … Γ_1″ → α′ → ε″". Replace by B3–B22: d, L, N → (d, L, N) constants and caps (B5) → c_±, ε (B11–B12) → B_A, δ_A, ε_WC (B13) → all level constants incl. ε″ (B14) → M_1 → M_2 → M (B15–B18) → α‴ → α″ → α′ (B20) → α_* → α (with the real α_0 inside the α-chain, B22) → g. Remove M_1, M, and the real α_0 from the first group.
- C-W2. 6.9 second sentence. Add: "The level constants are M-free and α-free (SOURCES_ORDER_CANON A.4); the domain sizes are fixed after M (A.6)."
- C-W3. 6.4 (line 280 ff.) and 6.8 (line 301 ff.), J-row. Now "α_0‴ ≤ min(a_{**}/M, c′M^{−11})". Must be "min(a_{**}/M, c″M^{−1}M_1^{−12})" (G_1 row, A1_WALK_FULL F3).
- C-W4. 6.5 and 6.8. Add the α″ caps α_1″ ≤ a_𝒢, α_1″ ≤ a_t to the chain list (N1).
- C-W5. 6.8 (line 308). "a fixed positive constant of (d, L, N, a, a_0)" → "of (d, L, N, a, a_0, a_1) and the fixed caps a_**, c″, θ_c" (N3).
- C-W6. 6.4–6.8 constant names c_1, c_2, c_3 and Γ without C_𝒟, S in place of Σ: align with A1_WALK_FULL 8.4 (k_1, k_2, k_3; Γ_3 = 2C_𝒟^{(1)}B_1‴Σ(δ_1‴); Γ_1″ = 2C_𝒟B_A″Σ(δ_A″)). The A1_WALK_FULL form is the larger Γ, so it is the safe one (Lemma M2).
- C-W7. 0.3 (line 15) "M ≥ max(M_1(d, L), L)" and 3.4 (line 177) "M ≥ M_1": write M_99(d, L) for the CMP 99 Thm 3.1 threshold (N5). 0.3 "Mα_0 ≤ α_*(d, L)" → "Mα_0 ≤ a_L" (N6).
- C-W8. 6.2 (line 269) "M_1 is chosen after d, L, c_±": correct as is; add "and after the level constants of 6.4–6.7".

A1_WALK_FULL.md
- C-A1. 9.1 step 5 (line 418). Keep. It already places "the thresholds M_W^c at each level" here. Add before step 5 a step "4b. Level constants of 8.4 (Γ_4, k_3, B_1‴, δ_1‴, c_{−,1}, Γ_3, k_2, B_A″, δ_A″, Γ_1″, k_1, ε″), M-free by SOURCES_ORDER_CANON A.4."
- C-A2. 9.1 step 6 (line 419). Keep the entries. Add "M > M_2 = L²M_1" (R3). The ε″ in "½ε″ on 𝒰(α′)" is now defined in step 4b, so the forward reference disappears.
- C-A3. 9.1 step 7 (line 425). Move the real α_0 after step 8: α_0 is chosen inside the α-chain after α′ (R5, B22). Add a_L and a_{−,1} to "Mα_0 ≤ min{a_0, a_*, a_**}".
- C-A4. 9.1 step 8 (line 426). Becomes the step right after M; add α_1″ ≤ min(a_𝒢, a_t) (N1) and the explicit choice of A.6.
- C-A5. 9.1 step 9 (line 427). Becomes "α_*, then the fixed-layer α-chain (α_1 → α_0 → α_3 → α_2) with α ≪ α′; then g".
- C-A6. 9.1 closing paragraph (line 428) "c_− depends on Mα_0 only through the bound Mα_0 ≤ a_0": add the same sentence for c_{−,1} (cap a_{−,1}) and B_1‴ (scaled J-caps).
- C-A7. (H4) (line 39). Insert "→ level constants of §8" between "ε" and "M_1", and "M_2" between "M_1" and "M".
- C-A8. 8.4 (line 395 ff.). Γ_3 count C_𝒟 → C_𝒟^{(1)} (tree set form, 6.9a Fix A). Rate sentence (line 407 ff.) "(d, L, N, a, a_0)" → add a_1 and the caps (N3). Add the α″ caps (N1).
- C-A9. Regrade note (line 497) "k_2 = 12 enters ρ_{G_1}": rename to k_T (N4).
- C-W3 lines (addendum). The c′M^{−11} form occurs at WC_FULL lines 284 (6.4), 305 (6.8), 311 (6.9 ledger check), and 396 (ledger I5). All four take the G_1 form c″M^{−1}M_1^{−12}.

SOURCES_A11_CONST.md
- C-11a. §9 cycle-check paragraph (line 172), the order "d, L → κ, κ_0, β (= 1/4), δ → … → M_1 → M → M_2 → α's (C_i, q_i) → ε_1 → ρ_0 → A_0, p_0 → A_1, p_1 → γ → g". Replace by B: "… → κ_1 → walk, WC, level constants → M_1 → M_2 → M → α's → ε_1 → ρ_0 → exponents (p_0 → p_1 → q_0 → q_1) → A_1 → A_0 → C_0 → C_1 → γ → g" (R1, R2, R3).
- C-11b. S5 row (table, §9): "upper bound on A_1 … after A_0, B_3; before γ" → "lower bound on A_0: A_0 ≥ 80B_3A_1; A_0 after A_1" (R1).
- C-11c. Residue item 4 (§10): "A_1 between A_0 and γ" → "A_1 before A_0" (R1).
- C-11d. S4 row: "lower bound on M_2" → "M_2 = L²M_1; S4 is the lower bound M_1 ≥ 1/(L²δ_[15])" (B15–B16).

SOURCES_G3_GGAMMA.md
- C-G1. 4.4 (line 70). Now "d, L, N, a, a_0 → γ_exp, B_A, δ_A, ε, M_1 (WC) → Γ_1, K_½, Ḡ, Λ̄_0, W, ε″ → κ_1 → M ≥ …". Replace by "d, L, N, a, a_0 → κ_1 (R6) → γ_exp, B_A, δ_A, ε, Γ_1 → level constants incl. ε″ (R7) → M_1 → M_2 → K_½, Ḡ, Λ̄_0, W → M ≥ max{…, M > L²M_1} → α_0, α_1, α_4, γ_2 → γ". Keep "Nothing on the left of M depends on M"; cite SOURCES_ORDER_CANON A.4 for ε″.

SOURCES_HIGHER_M1.md
- C-H1. B3 (line 141), M_req. Add the entry L²M_1 + 1 (M > M_2, R3). Add the C24 round-4 entries, (H_κ), (H_M), (H_η), M_Γ, M_{α5}, and "48κ_1/ε_min with ε_min ∋ ½ε″" (the list now has 48κ_1/ε only). Rename M_99(d, L) where the text says M_1(d, L).
- C-H2. B2.2 (line 125), the order. Insert "→ WC and level constants (incl. ε″)" before "M_1 (P13)", and "M_2" between "M_1" and "M". Replace "A_0, p_0 → γ" by "exponents → A_1 → A_0 → C_0 → C_1 → γ" (R1, R2). Move the real α_0 after α′ (already so).

TRUST_LEDGER.md
- C-T1. C24 (line 117), round-5 order: "β_H (C27) → d, L → κ, κ_0, β, δ, B_3 → κ_1 → walk constants → M_1 → M_2 → M → α's → ε_1 → ρ_0 → A_0, p_0 → A_1, p_1 → γ → g" → B1–B33 (insert WC and level constants before M_1; exponents → A_1 → A_0 → C_i). Round-4 order "κ_1 → walk constants → M_1 → M → α → ε_1 → ρ_0 → A_0 → γ": mark superseded. Add "M > L²M_1" to the M list.
- C-T2. C30 (line 123): "A_1 after A_0, before γ" → "A_0 after A_1: A_0 ≥ 80B_3A_1; up-set in A_0".
- C-T3. C27 (line 120) and C5 (line 98): write β_0^H for the Hölder bound ("0 < β_H ≤ β_0^H < 1"); C5's "β_0 before γ" is the CMP 119 β_0 ≤ ½ and keeps its name.
- C-T4. C28 (line 121): keep; add "M > M_2 enters M_req (SOURCES_HIGHER_M1 B3)".

Other files
- C-O1. SOURCES_GGAIN_BETAH line 54 "β_H (= β_0) → L → …": → "β_0^H → β_H → L → …" (rename).
- C-O2. SOURCES_WC_RESIDUE 7.3 (line 75) and SOURCES_WC_RESIDUE_VERIFY Q7 order bullet (line 46): same slip as WC_FULL 6.9 (M_1, M, real α_0 before c_±; level constants after M). These are source files of WC_FULL; a superseded-note suffices. WC_RESIDUE 7.2 (line 74) rate sentence: add a_1 (N3).
- C-O3. SOURCES_T2_IEPS §10 line 117: "→ walk constants → M_1 → M →" lacks WC/level constants and M_2; "ρ_0 → A_1 → A_0, p_0, p_1" puts p_0 after A_1. Compatible (the exponents bind only each other), but align to B25–B27 for one canon.
- C-O4. SOURCES_T2_IEPS_LF §7 line 62: the body still reads "ν ≥ 2p_0 + dr_0; ½ν ≥ p_0 − p_1 − 1". The correction block already fixes the sign; the body should carry ν_I, ν_II and "½ν_I ≤ p_0 − p_1 − 1". Also "κ_1 → M_1, M_2 → M": insert walk, WC, level constants before M_1.
- C-O5. SOURCES_ORDER_CHECK §1 row "complex-level constants" and §2 "Why neither is real [I]": change [I] to "[P relative to the tags of SOURCES_ORDER_CANON A.4–A.7]".

## D. Ledger and summary

[P] Lemma M1 (domain monotonicity); Lemma M2 (safe direction); explicit S(δ) ≤ d·e^{δ}coth(δ/(2√d))^d; A.4 caps for Γ_4, Γ_3, Γ_1″, k_3, k_2, k_1, ε_3, δ_1‴, ε_2, δ_A″, c_A″, ε″, c_{−,1} (given the tagged inputs); A.5 (M_1, M enter only as thresholds); A.6 explicit domain sizes and the mixed-row check; canon B1–B33 acyclic; p_1 existence under p_0 > (d + 5)r_0^{exp} + ν_I + 4.
[V] quoted lines: A1_WALK_FULL 8.1–8.4, 9.1; WC_FULL 2.1, 3.2–3.4, 4.2, 5.2–5.3, 6.0–6.9; WC_RESIDUE 6–7 and VERIFY Q5–Q7; A3_GAMMA0_FULL 0.5, 6.4; IEPS_LF_VERIFY (two ν's).
[I] remaining, unchanged by this file: monotonicity of b_G, c_G, δ_W′ in θ_S (A1_WALK_FULL F4), reducible to M-uniformity of Balaban's O(1) (CMP 99 p. 416); B_1 = B_1(d, L, a, a_0) under WG-1 in scaled form (WG_FULL 4.7); B_1‴ = O(1)B_1; c_+⁗ and the explicit pieces at complex points via Thm 3.4 [R]; tree count C_𝒟^{(1)} (cube geometry); Ḡ M-free (G3_GGAMMA, unverified); F of the A_1 condition. [conditional] (C) for G and G_1.
New findings: N1 (α″ needs the 𝒢 caps a_𝒢, a_t, missing from both chain lists); N2 (WC_FULL J-row in G form); N3 (rate also depends on a_1 and caps); N4–N6 (symbol clashes k_2, M_1(d, L), α_*(d, L)); clash C_i^{116} vs C_0, C_1; missing M_req entry M > L²M_1.
Summary.
- Task A: every level constant is bounded in the safe direction by an explicit function of (d, L, N, a, a_0, a_1), the caps (a_**, c″, a_𝒢, a_t, a_{−,1}, a_L), θ_c, and real constants at M_min. No dependence on α‴, α″, α′, M, M_1. M enters only through θ_S (fixed at M_min) and scaled caps; M_1 only through thresholds and the scaled WG-1 cap. The split of ORDER_CHECK §2 holds; the [I] there becomes [P] relative to the tags above.
- Task B: canon B1–B33, resolutions R1–R7 applied, p_1 the only two-sided constant (A_1 only in the superseded order), β_0^H renamed.
- Task C: 33 fix items in 12 files; the load-bearing ones are WC_FULL 6.9, A1_WALK_FULL 9.1 steps 5–9, A11 §9 order line and S5, G3_GGAMMA 4.4, HIGHER_M1 B3 (+ L²M_1), TRUST_LEDGER C24 and C30.

## E. Amendments after verification (SOURCES_ORDER_CANON_VERIFY, 2026-10-28)

E1. Placement of a_**, B_1, δ_1, δ_W, c_{−,1}. WG_FULL 5.9 (iii) and 6.4 define a_** := min{a_*′, a_0, K_2^{−1}(4C″_𝒟)^{−12}}, with a_*′ using c_W and K_2 using δ_1 = ½ε, B_W, c_J. So a_** cannot sit in B5. It moved to the new line B12a, after the A1-W constants of B12 (which now list B_W, c_W). The cap c″ := c^{12}K_2^{−1} (WG_FULL 5.10 remark (b)) moved with it. New lines B12b (B_1, tree rate of WG-G1) and B12c (c_{−,1}, then the real G_1 A1-W rate δ_W) come before B13, which uses them. B14 no longer lists c_{−,1}.
E2. θ_WG and B6. θ_WG = ½ moved from B10 to the head of B5. The new line B5a holds c_1(θ_WG½δ_0), K_V, M_*, a_*, c′ (functions of (d, L, θ_WG)); M_* left the B12 list. The B6 line (β_0 ≤ ½) moved into Group 0, after B2, so B4's use of its cap is backward. C_𝒟^{H1} moved from B11 to the B5 geometry list, because C″_𝒟 = T_2C_𝒟^{H1} (B5) uses it; it is a (d, L) count (WG_FULL 5.4, 6.4). Line labels are kept so that other files' citations stay valid.
E3. θ_c ∈ [1/16, 1). All rates in the Schur sums (δ_G, δ_1‴, ½δ_1‴, δ_A″, ½δ_A″, θ_cδ_A″) are then ≥ ¼ε_min, so the B18 threshold RM > M_*(¼ε_min) covers c_1(θ_cδ̄_A″). θ_c = ½ remains the example. (Alternative not taken: an extra entry M_*(θ_cδ̄_A″) in B18.)
E4. Lemma M2. The map δ ↦ e^{2Lδ} inside B̄_A″ increases in δ, so B̄_A″ at δ̄_A″ need not bound the piece constant at a larger actual rate. Repair: A.4 item 10 now defines δ_A″ := δ̄_A″. Items 11 and 13 then use δ_A″ = δ̄_A″ directly; their bars are unchanged. Lemma M2's list now names this map. Grade of M2: CORRECTED, conclusion unchanged.
E5. J scale. WG_FULL (I5) defines J := D*η^{−2}Im ∂U, with |J(b)| ≤ O(1)Mα_0(L^jη)^{−3}; in rescaled units |Ĵ| ≤ c_JMα_0. WG_FULL 5.5 reproduces (3.137) as |Δ^{(2)}| ≤ O(1)Mα_0, from |ŵ| ≤ O(1)Mα_0 and |K̂_b| ≤ c_κ. So Δ^{(2)} is linear in J with an M-free coefficient: |Δ^{(2)}| ≤ O(1)|J|. WC_FULL (I9), |J| = O(Mα_0), is right. WC_FULL 6.0, "Δ^{(2)} … of size O(1)M|J|", counts M twice; it now reads O(1)|J|. Consequences: (i) a real J lies in 𝒰(α′) only if c_JMα_0 < α_0′, that is real α_0 ≤ α_0′/(CM) with C > c_J; B22 states this. (ii) The J-row α_0‴ ≤ min(a_**/M, c″M^{−1}M_1^{−12}) was written for the M|J| convention. With |J| ≤ c_JMα_0 the real conditions Mα_0 ≤ a_** and α_0 ≤ c″M^{−1}M_1^{−12} read |J| ≤ c_Ja_** and |J| ≤ c_Jc″M_1^{−12}; the row implies both when M ≥ 1/c_J (added to B18). The row is then stricter than needed; Lemma M1 makes that safe. A.4 items 5(b) and 10(d) now carry O(1)|J|.
E6. Caveat kept, not repaired. Lemma M1's nesting of the plaquette row is by reading: the right side of the CMP 109 (1.13)–(1.14) bound is not written in A1_WALK_FULL 8.1 or WC_FULL 6.0 (VERIFY §1).
E7. Topological pass after E1–E5 [P]. Line by line: Group 0 (B1, B2, B6) uses nothing. B3, B4 (B4 uses B6). B5 = (d, L, N) numbers, caps, and c_J. B5a uses B5. B7–B9 use δ (B5). B10 uses δ_0. B11 uses B5, B5a (G walk expansion from WG-G), B10 (M_min). B12 uses B11. B12a uses B5 (C_𝒟^{H1}, C″_𝒟, c_J), B5a, B11 (c_1), B12 (ε, c_W, B_W). B12b uses B12a. B12c uses B11, B12b, a_{−,1}. B13 uses B12b–B12c, γ_exp, θ_c. B14 uses B5, B11, B12a (a_**, c″), B12b, B12c. B15 uses B9, B12, B13, B14. B16–B18 use B15 and earlier (B18 adds M ≥ 1/c_J). B19–B22 use M, M_1, B5a (c′), B12a (a_**, c″), B14 (k̄'s), B17 (Λ̄_0). B23–B33 are unchanged from the verified version. No forward reference remains; the order is acyclic. Symbol clashes noted in VERIFY §4 (q of CMP 116 vs q_i vs q = M/M_1; r exponent vs r radius) are unchanged.
E8. Regrade fixes (VERIFY regrade, 2026-10-28): a_{−,1} and C_{G1} moved from B5 to B12c; B_0′ (B5a) and c_Q, c_ι, c_b, c_κ (B5) placed; B18 count fixed (32); B27 θ named θ_LF; A.1 J-cap stated as O(1)|J| ≤ O(1)a_**/M. Topological pass rerun [P]: B5a uses B5 (B_0, c_Q, c_ι, c_b); B12a uses c_κ, c_b (B5), B_0′ (B5a); B12c defines C_{G1}, a_{−,1} after B11 and before their uses in B14 (c̄_{−,1}) and B22 (Mα_0 ≤ a_{−,1}); B18 uses c_J (B5); θ_LF in B27 is a fixed number. No forward reference; acyclic.
## F. Additions after the A18, HMINUSC, A11-addendum, A16-2, A23, G3_N2 verifications (2026-10-28)

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Inputs: SOURCES_A18_REGULAR §5, §8 + VERIFY; SOURCES_T2_HMINUSC §2–§3 + VERIFY; SOURCES_A11_CONST addendum (X1–X10, S12–S16); SOURCES_A16_REPLACE2 §2, §5–§7 (VERIFY incomplete); SOURCES_T2_B7_CLAMP + VERIFY; SOURCES_A23_TSTEP + VERIFY; SOURCES_G3_N2 + VERIFY; TRUST_LEDGER C26.

F.1 Additions (28 condition entries; new lines B14a, B17a, B18a, B22a, B29a).
| slot | condition | source |
|---|---|---|
| B5 | (K1′) δ ≤ (1/13)(1 − 2(1 + 4β)/(θ_KL)) with θ_K ≥ ½; δ = 0.025 at L = 13, β = ¼ (0.03 fails: 1.9825 < 2). δ is a canon constant (B5); its old value (1/10)(1 − 2/L) is replaced. It now sits after β in B5. | SOURCES_A23_TSTEP §4 + VERIFY §8 |
| B5 | B ≥ B_3 and the fixed CMP 102/109/122 numbers (list in B5) | SOURCES_A18_REGULAR §8; SOURCES_T2_HMINUSC §2 + VERIFY |
| B7 | κ ≥ 2m_tot (so θ_K ≥ ½) | SOURCES_T2_KAPPA2_VERIFY item 1 |
| B14a | C′_𝒟^f and the 𝒲_S tree constants. Verified (B92). | SOURCES_A16_REPLACE2 §2.3, §6.2, §7.2 |
| B15 | WC 5.3 with C′_𝒟^f. Verified (B92). | SOURCES_A16_REPLACE2 §7.2 |
| B17a | W^f, Γ̄_1^f, η_M^f prefactor, C_3. Verified (B92). | SOURCES_A16_REPLACE2 §5 |
| B18 | M ≥ 5M_99, 10 \| C^{122}M | SOURCES_A18_REGULAR_VERIFY V6, V7 |
| B18 | (H_κ^f), (H_η)^f, Γ̄_1^fη_M^f ≤ ½, (2.16)^f side condition. Verified (B92). | SOURCES_A16_REPLACE2 §5.1, §5.4, §7.2 |
| B18a | M_0; a_*^{102} including the cube cap ε_1^{102} ≤ R_1M_1a_1^{102}/M | SOURCES_T2_HMINUSC_VERIFY item 1 |
| B22 | (A18-1): cap a_0 → a_0/(1.5·c_□^{109}LB); 1.5α_1 ≤ a_1 | SOURCES_A18_REGULAR §8 + VERIFY V7 |
| B22a | (A18-2) on ε_0^{109}; window for ε_0^{102} | SOURCES_A18_REGULAR §5.2 + VERIFY V6 |
| B25 | S12, S13, S15 = the existing B25 conditions (sources added, no new edge) | SOURCES_A11_CONST addendum |
| B28 | (A18-3), case q_0 = p_0 | SOURCES_A18_REGULAR §5.3 |
| B29a | N_0 (X10), X6 bounds, N ≤ R_k / N = R_j (S14) | SOURCES_A11_CONST addendum |
| B30 | (A18-4); (C1*) c_mM_0·g_kp_0(g_k) ≤ ½κ_HC_1^{102}a_*^{102}; X1–X9; S14 compatibility; S16 | SOURCES_A18_REGULAR §8; SOURCES_T2_HMINUSC §3.4 + VERIFY; SOURCES_A11_CONST addendum |
| B30 | (Hγ) and (2.31) γ condition: confirmed present in C26 and B30 (now written out); no change | SOURCES_G3_N2 §4.2 + VERIFY (3); TRUST_LEDGER C26 |
| B32 | (A16-a^T), (A16-b^T), O(γ²r) α_5/γ_2 budget entries. Verified (B92). | SOURCES_A16_REPLACE2 §2, §5.4, §7.2 |
Not added: the B7_CLAMP Route-1 condition (1 + ρ_0)γ(1 − 2ρ_0²)^{−1/2} ≤ γ_hol (VERIFY V2: not derived; γ_hol undefined; Route 2 is the cited route).

F.2 Symbol clashes resolved (renames used in Part B).
- SOURCES_T2_HMINUSC: a_* → a_*^{102} (canon a_* is the WG cap of B5a); C_1 → C_1^{102} (canon C_1 is B29); ε_1 → ε_1^{102} (canon ε_1 is B24); κ ∈ {2, ½, ½, ⅛} → κ_H (canon κ is B7); θ = ½ → θ_H.
- ε_0: CMP 102 Thm 1 space parameter → ε_0^{102}; CMP 109 real-background constant of A18 → ε_0^{109}.
- B_5: CMP 122 I (1.78) → B_5^{122}; CMP 102 (173) → B_5^{102}. CMP 102's B_1 → B_1^{102} (canon B_1 is WG-G1, B12b); CMP 102's c_1 → c_1^{102}.
- A18 §8 "a_0 := log L_0/log L" → a_{L_0} (canon a_0 = a_0^{99}; canon a_1 = a_1^{99}).
- CMP 122 cube constant C (≤ 2) → C^{122} (canon C in B22 is C > c_J). CMP 109's unnamed cube O(1) → c_□^{109}.
- A18_VERIFY V6 "M_99 := CM/10" is a cube scale → M_□^{99}. Its "M ≥ 5M_1" uses CMP 99's threshold M_1(d, L) = canon M_99 (N5), so B18 reads M ≥ 5M_99. The other reading (cube size M_1) is implied by M/M_1 > 10.
- SOURCES_T2_KAPPA2 θ (kept fraction) → θ_K (distinct from θ_c, θ_S, θ_WG, θ_LF, θ_H).
- Readings [I]: the θ in δ_𝒲″ = (1 − θ)δ_A″ and in q_W^T is θ_c. Closed (2026-10-28 maintenance): r_0^{exp} = r (B25). KAPPA2 (K3)'s C_1 = FX_R2's max(1, C_c) (same constant; KAPPA2 l. 83 cites FX_R2 §4 route (b)) → C_1^{FX}, placed at B18b after M; (K3) and FX_R2 P2 enter B18 in the C_1-free form M ≥ 12L(3κ_final)^{1/d}; κ ≥ 1536 placed at B7.

F.3 Topological pass over B1–B33 with the additions [P].
- B5 internal order: θ_WG, β, then δ ((K1′) uses L from B4, β, and the number ½ for θ_K); B_3 before B ≥ B_3 and before B_5^{102}. B7 uses δ, m_tot (a number). B14a uses B5, B12c, B14. B15 uses B14a. B17a uses B5, B14, B14a, M_1. B18 uses B5 (M_99, C^{122}), B9, B14, B17a. B18a uses B5, B15, B18. B22 uses B5. B22a uses B22, B15, B18, B5. B28 uses B5, B18, B27. B29a uses B4, B6, B18, B25. B30 uses B18a, B22, B24, B25, B27–B29a. B32 uses B5, B14a, B30–B31. B23–B27, B31, B33 unchanged.
- Forward references found and removed: (1) θ_K := 1 − m_tot/κ would make δ (B5) depend on κ (B7). Fix: (K1′) uses the bound θ_K ≥ ½; κ ≥ 2m_tot moved to B7. (2) The CMP 102 cube cap M ≤ R_1M_1a_1^{102}/ε is booked as an upper bound on ε_1^{102} (B18a) and ε_0^{109} (B22a), not on M; read on M it would make M two-sided.
- Reserved hypotheses (not cycles): B17a and B18 use the numeric cap g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4 and (A16-b^T) ≤ ¼; B32 enforces both with constants that precede B32.
- Result: ACYCLIC, no forward reference remains in B1–B33 + B14a, B17a, B18a, B22a, B29a. Caveats: none from B92 (verified) or KAPPA2 (placed; see F.5).

F.4 Dangerous (two-sided) constants after the additions.
1. p_1 (B25): (p_0 + (d + 5)r_0^{exp})/2 < p_1 ≤ p_0 − 1 − ½ν_I (now also A11 S15, S12). Exists under the B25 condition on p_0. Unchanged.
2. ε_0^{102} (B22a): 2B_3ε_0^{109} ≤ ε_0^{102} ≤ a_0^{102}. Exists, since 2ε_0^{109} ≤ a_1^{102} and B_3a_1^{102} ≤ a_0^{102} (CMP 102 Thm 1, printed).
3. ε_1^{102} (per scale k): max{ε_1^{(0)}, M_0ε_k/((1 − θ_H)κ_HC_1^{102})} ≤ ε_1^{102} ≤ a_*^{102}. Exists iff (C1*) (B30) and ε_1^{(0)} ≤ a_*^{102} (Balaban's own use [R-A18]).
4. N (per scale): (ν_II/log L)log log g_k^{−2} ≤ N ≤ min{R_k, O(1)(log g_k^{−2})^{ν_I}}. Exists for γ small (S14 compatibility, B30); N = R_j is admissible.
5. Shared budget, not a constant: α_5 (B23, (Hα) ≤ ½) and the B32 O(γ²r) entries draw on one bound. B23 must reserve slack (for example ¼ + ¼). Verified (B92).
Watch item: M stays one-sided only with the booking of F.3 (2). A_1 is two-sided only in the superseded C30 order. δ is one-sided ((K1′) upper, δ > 0). C_0 is one-sided (lower: C3, (A18-3)).

F.5 Maintenance pass (2026-10-28): A16 verified, r merge, KAPPA2 placed. Topological pass [P].
- B7 adds κ ≥ (1 + 4β)·6·2^d/(βθ_K) (1536 at d = 4): uses d (B3), β (B5), and the bound θ_K ≥ ½ (a number). Lower bound on κ only.
- B14a, B15, B17a, B18, B32: the B92 marks are lifted; edges unchanged (as in F.3).
- B18: the FX_R2/(K3) term is M ≥ 12L(3κ_final)^{1/d}, κ_final = 2κ + √d(1 + 2β)κ + c_d: uses L (B4), d, β, c_d (B5), κ (B7). Backward.
- B18b: C_1^{FX} uses M (B18), L; its only users are γ-small conditions (B30). Backward. No M-condition reads C_1^{FX}, so no edge B18 → B18b or B18 → B29.
- B25: r (= r_0^{exp}) at the head, lower bounds only (r ≥ 2); users p_0, ν_II (B25), R_k in B29a, S7 and S14 in B30. Backward. The radius r of B32 is a different symbol (clash noted in E7).
- Result: ACYCLIC, no forward reference in B1–B33 + B14a, B17a, B18a, B18b, B22a, B29a.

Change log: 2026-10-28 amendment pass (E1–E7) applied to Parts A–B; Part C is unchanged.
Change log: 2026-10-28 regrade fix pass (E8).
Change log: 2026-10-28 canon maintenance pass: section F (28 additions from A18, HMINUSC, A11 addendum, A16-2 [B92 pending], A23, G3_N2), Part B updated, renames, topological pass acyclic.
Change log: 2026-10-28 maintenance pass (F.5): A16 B92 marks lifted (verifier corrections at B14a); r_0^{exp} = r merged at B25; (K3) via C_1-free form at B18, C_1^{FX} at B18b, κ ≥ 1536 at B7; topological pass acyclic.

- 2026-10-28 (coordinator, from lean/YmLean/ScaleChain.lean findings): add to B30 the unprinted side condition γ²β′ ≤ 1/L (needed for CMP 119 (2.9) line 2's last step L(1 + X)^{β_0} ≤ (L + 1)(n − m)^{β_0}; upper bound on γ after L and β′; admissible, no cycle); record the R_j hypotheses 1 + β_0 < L (holds at L ≥ 13 with β_0 ≤ ½); the (2.46) constant in telescoped form is 2^{⌊κ_0/2⌋}(1 + 1/β) (same order as before).
- 2026-10-28 (coordinator, from TRUST_LEDGER round 9): add M ≥ c_T/22 (the Lemma T cut-off threshold of SOURCES_C_CONDITION, so that (Vol) ℓ > 22M implies side > c_T(d, L)) to M_req at B18; c_T depends on (d, L) only — no cycle.
