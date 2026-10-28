# SOURCES_ORDER_CHECK — one acyclic order of constants across the source files

Date 2026-10-28. Author: Claude (Opus), unverified. No other file edited.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Inputs read: TRUST_LEDGER C5, C24–C30 + round-4/round-5 change notes; SOURCES_HIGHER_M1 §A5, §B1–B3 + corrections; SOURCES_A11_CONST §1–§9 + corrections; SOURCES_T2_IEPS §10; SOURCES_T2_IEPS_LF §7 + corrections; SOURCES_GGAIN_BETAH §4–§5; SOURCES_G3_N2 §3–§4, (v) + corrections; SOURCES_G3_GGAMMA §2–§4; A1_WALK_FULL §5.7, §8.4, §9.1 + fixes; WG_FULL 0.6, 6.4, ledger order line + fixes; WC_FULL 5.2(d), 6.2, 6.4–6.9 + fixes. Two greps outside the list: SOURCES_A8_POS (H_κ), (G4) to identify ε″; SOURCES_WC_RESIDUE_VERIFY Q7.
Tags: [P] checked here from the quoted conditions; [I] rests on a claim in a source file that I did not re-prove.

## 1. Constants and their conditions

"Up" = lower bound on the constant (safe direction for a "large" constant). "Down" = upper bound (smallness). "Uses" = the constants the condition depends on. Symbol clashes are split into separate rows.

| constant | conditions on it | uses | type | source |
|---|---|---|---|---|
| β_H (Hölder exponent, CMP 109 (I.3.31)) | 0 < β_H ≤ β_0^{Höl} < 1 | β_0^{Höl} | down only | C27, GGAIN_BETAH §5 |
| β_0^{Höl} (CMP 99 Thm 2, CMP 102 Thm 1) | < 1; cost B_4(β_0) | — | free | C27 |
| d, L | L odd > 11 (S10: 2(1+β_0)L^{−2} + 0.4 < 1); L in the certified set of B1 | β_0 (CMP 119) | fixed | A11 S10 |
| N | gauge group | — | fixed | WC 6.9 |
| δ (CMP 116) | = (1/10)(1 − 2/L) | L | defined | IEPS §10 |
| δ_[15] (decay of (190) [15]) | function of d, L | d, L | defined | A11 S4, C29 |
| β (CMP 109/119 enlargement) | = 1/4 | — | fixed | A11 §3, IEPS §10 |
| B_3, B_0, δ_0, c_0, a, a_0, a_1 (CMP 99 Thm 3.4), γ_e, γ_exp, E_0 | Balaban's d, L (N) constants; E_0 absolute | d, L, N | defined | A1_WALK 9.1 step 2; IEPS §10; G3_GGAMMA 4.4 |
| β_0 (CMP 119 slack) | β_0 ≤ 1/2 (S3); β_0′ with (1+β_0′)^{κ_0} ≤ 1+β_0 if needed | κ_0 | down | A11 S3, S11 |
| κ | "large"; δLκ/48 ≥ K_abs | L, δ | up | IEPS §10 |
| κ_0 | ≥ 7; "large, similarly as κ" | — | up | A11 §4 #16 |
| κ_1 | ⅛(κ_1−1) ≥ (1−3δ)κ, ½(κ_1−1) ≥ 2Lκ, "large" | L, δ, κ | up | IEPS §10 |
| R (CMP 96 layer), θ_WG (= ½), M_min(d, L) | θ_S = log L/(RM) ≤ δ_0/(4(d+2)) at M ≥ M_min | d, L, δ_0 | fixed | A1_WALK 9.1 step 2; WG 0.6 |
| walk constants c_±, b_G, c_G, δ_G, C_𝒟, C_𝒟^{H1}, c_X, c_loc, C_ov, c_h, Σ(·), c_1(·) | computed at M_min; monotone in θ_S [I] | d, L, θ_S, a, a_0 | defined | A1_WALK 9.1 step 3; WG 6.4 |
| ε (A1-W real rate) | = min{½δ_G, c_−/(8c_+Σ(½δ_G))} | step-3 constants | defined | A1_WALK 9.1 step 4 |
| K_F, K_W, C_W, M_*, M_*′, M_a, M_e′, M_N, M_c, M_W | thresholds for M_1 | ε and step-3 constants | defined | A1_WALK 5.7; WG 6.4 |
| B_A, δ_A, ε_WC, Γ_1, K_½, Ḡ, Λ̄_0, W | WC real constants; Ḡ M-free | d, L, a, a_0, θ, θ′ | defined | G3_GGAMMA §2–§4 |
| complex-level constants c_+⁗, Γ_4, k_3; B_1‴, δ_1‴, c_{−,1}, Γ_3, k_2; B_A″, δ_A″, Γ_1″, k_1; ε″ | c_{−,1} ≥ c_−(1 − O(Mα_0)) uses only the cap Mα_0 ≤ a_0 | real constants, a_1, the caps | defined | A1_WALK 8.4; WC 6.4–6.7 |
| M_1 | ≥ M_W, ≥ M_W^c (complex levels), ≥ (2C_Wc_1K_W)², ≥ M_*, M_*′, ≥ 3c_loc, ≥ (2δ_A)^{−1}log(4B_AS(½δ_A)/γ_exp) (WC 5.2(d)), ≥ (2δ_A″)^{−1}log(8B_A″S(½δ_A″)/γ_exp) (WC 6.7), ≫ e^{2cκ_1} (A3_SIGMA 5.3), A7 complex-s; M_1 ≥ 1/(L²δ_[15]) via M_2 | walk, WC, complex-level constants, κ_1 | up | A1_WALK 9.1 step 5; WG 6.4; WC; HIGHER_M1 corr.; C24 |
| M_2 | = L²M_1 (CMP 119 p. 245); ≥ 1/δ_[15] (S4, C29); M_1 < M_2 < M (C28) | M_1, δ_[15] | determined by M_1 | A11 corr.; C28; C29 |
| M = L^m | ≥ M_req (26 entries: M(κ), M_99, M_dec, 96κ_1/δ_0, 2κ/δ_0, κ_1/δ_1, 2κ_1/δ_1, 12L(3κ_final)^{1/d}, 12cκ_1/δ_*, 48κ_1/ε_min (incl. ½ε″), M_MC, M_*^{A2}, M_*^{WG}, M_e, R_1M_1, (3(6+c_X)+1)M_1, 11M_1, M/M_1 ≥ 3(7+c_X), M_RM, L, 8, A3_SIGMA 5.1, …); M > M_2; M_Γ, M_{α5} ((Hα)); (H_κ) LM ≥ 16·3^dκ_1/ε″; (H_M) M ≥ 2c′M_1; (2.30) η = δκ/(24c_dM⁴) ≤ 1 | everything above | up only (HIGHER_M1 B2.3) | C24; HIGHER_M1 B3; G3_GGAMMA 4.3; A8 |
| ρ_0 | ≤ min{0.1, (LM)^{−2}(0.45a/(16n))^{1/2}} | L, M, N | down | HIGHER_M1 A5; IEPS §10 |
| α‴ (complex) | α_1‴ ≤ k_3a_1; J-row α_0‴ ≤ min(a_**/M, c″M^{−1}M_1^{−12}) | k_3, a_1, a_**, M, M_1 | down | A1_WALK 8.4; WC 6.8 |
| α″, α′ (complex) | α″ ≤ k_2α‴, α′ ≤ k_1α″, mixed α_0-row | k_n, earlier level | down | same |
| α_* | α_0 + α_1 ≤ α_*, needs α ≪ α′ | α′ | down | WC 6.9 |
| fixed-layer α_1 → α_0 → α_3 → α_2; α_4, γ_2, α_6, a_1 (Latin) | α ≪ α′; (LM)⁴α_i ≤ ¼; Mα_0 ≤ min{a_0, a_*, a_**}; WG-1 α_0 ≤ c′M^{−1}M_1^{−10}, c″M^{−1}M_1^{−12}; Mα_0 ≤ a(κ_1); (4B_3O(1)M)²α_0 ≤ β; α_0 ≲ α_1/M; α_3 ≲ α_0, α_1; α_2 ≲ α_3; (Hα-1) α-part of α_5 ≤ 1/(8Λ̄_0) | M, M_1, L, β, B_3, κ_1, α′, Λ̄_0 | down | IEPS §10; A1_WALK 9.1 step 7; WG; G3_GGAMMA 4.3 |
| α_5 | composite: c_5e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2; (Hα) (α_5 + G_Γ²δ_S)Λ_0 ≤ ½ | M, α's, Ḡ | not free | C25; G3_GGAMMA 4.3 |
| ε_1 (CMP 116) | upper bounds via κ_1, B_0, C_1–C_4, α_2, α_4, a_1, M^q, E_0, L; ε_1M^q ≤ 1 | all earlier | down | IEPS §10; HIGHER_M1 B2.3 |
| exponents p_0, p_1, r_0^{exp}, ν, r, q_0, q_1 | p_1 < p_0; 2p_1 − (d+5)r_0^{exp} > p_0; ½ν ≤ p_0 − p_1 − 1; r ≥ 2 (printed); q_0 ≥ p_0; q_1 ≥ q_0 | each other | p_1 two-sided | IEPS_LF §7 + corr.; A11 corr. |
| A_1 | γ_0A_1² ≥ 8 + 4 log F; A_1/A_0 ≤ 1/(80B_3) (C30) | γ_0, F, A_0, B_3 | up + (C30) down | IEPS_LF §6; A11 S5 |
| A_0 | ≥ 2 (A_0 ≥ n, Cauchy); ≥ k/(2θ); "large" incl. (100MR)^d, κ′ = κ + O(1)M^d(N²−1); A_0 ≫ A_1 | M, R, A_1 | up | HIGHER_M1 A1.3, A3.2, B2.3; IEPS §10 |
| C_0 | C3: U_k(ε_0) ⊂ U^c_j, C_0 ≥ c(B_3)A_0 | A_0, B_3 | up | IEPS_LF §7 + corr. |
| C_1 | C4: B_3²O(1)Mα_0 < ½α_1 (LF form) | C_0, M, B_3 | up | IEPS_LF §7 + corr. |
| γ | S1 γ²B′ ≤ (1+β_0)² − 1; S2 log γ^{−2} ≥ 2p, ≥ p/β_0; S6, S7, S8 (incl. R_1γ^{κ_0−6} < 1), S9; γ < e^{−q_i}; B10 (M, κ), B11 (γ_2, ε_1, κ); (L1), (L2); (1.68); p. 379; N3(d); HTHR2 R³ condition; C_iF_i(γ) ≤ ¼·bound; (Hγ) (1/20)γ_2ε_1²/γ² ≥ 4κ+1; (2.31) (1/20)x − 4M⁴e^{−x/20} ≥ 0 at x = γ_2ε_1²/g_k² | all earlier | down only | A11 S1–S9; IEPS §10; IEPS_LF §7–§8; C26 |
| g | g ≤ min(γ/2, g_1) | γ | down | C5 |
| r_0 = τ_0 (radius), ρ_1, r | r_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)); ρ_1 ≤ r/(4C_hM); 5γ²r ≤ ½ | γ, M | down | C5 |
| K | last | all | — | C5 |

## 2. Dependency graph and cycle check

Edge X → Y means a condition on Y uses X. I built the graph from §1 [P].

No genuine cycle. Every condition has a slot after all its arguments, once the two splits below are made.

Two nominal cycles exist in the orders as the files write them.

Cycle A (WC_FULL 6.9 and A1_WALK_FULL 9.1, M_1 side).
- Condition 1: WC_FULL 6.7, "½γ_exp − 2B_A″S(½δ_A″)e^{−2δ_A″M_1} ≥ ¼γ_exp for M_1 large", and A1_WALK_FULL 9.1 step 5, "for §8 the thresholds M_W^c at each level". So M_1 uses B_A″, δ_A″ and the level constants.
- Condition 2: WC_FULL 6.8 J-row "α_0‴ ≤ min(a_**/M, c′M^{−11})", with WC_FULL 6.9 placing B_A″, δ_A″ after α″ ≤ c_2α‴. So B_A″, δ_A″ sit after M, M_1.
- Literal loop: M_1 → M → α‴ → α″ → B_A″, δ_A″ → M_1.

Cycle B (M side).
- Condition 1: A1_WALK_FULL 9.1 step 6, "M > 48κ_1/ε_min, ε_min includes ½ε″"; A8 (H_κ) "LM ≥ 16·3^dκ_1/ε″"; G3_GGAMMA M_Γ = (4/ε″)log[…]. So M uses ε″.
- Condition 2: WC_FULL 6.9 "α″ → B_A″, δ_A″; … Γ_1″ → α′ → ε″", with α‴ after M through the J-row. A1_WALK_FULL 9.1 also defines ε″ in step 8, after M in step 6.
- Literal loop: M → α‴ → α″ → α′ → ε″ → M.

Why neither is real [I]. The edge from M (or from α^{(n)}) into B_A″, δ_A″, Γ_n, k_n, ε″ carries no quantitative dependence. These constants are bounds valid on domains capped by a_1, a_** and Mα_0 ≤ a_0. A1_WALK_FULL 8.4 states that the final rate depends on (d, L, N, a, a_0) only. c_{−,1} uses Mα_0 only through the cap a_0. So the fix is a split:
- (a) level constants (rates, prefactors, Γ_n, k_n, ε″) = functions of (d, L, N, a, a_0, a_1) and the caps. Place them before M_1.
- (b) domain sizes α‴, α″, α′ = smallness choices. Place them after M.
No file proves (a) as an explicit α-free and M-free cap. It is stated in A1_WALK_FULL 8.4 and used in G3_GGAMMA 4.4. This is the one load-bearing [I] of the order.

Two soft self-dependences, both handled in the files:
- Walk constants and ε depend on M through θ_S = log L/(RM). The files fix them at M_min and use monotonicity in θ_S (A1_WALK_FULL F4: [I], monotonicity proved for Σ only).
- G_Γ could depend on M. G3_GGAMMA §2–§4 shows G_Γ ≤ Ḡ, M-free (unverified file). Without it, (Hα) is not an up-set in M.

## 3. Merged order

β_H (≤ β_0^{Höl} < 1) → d, L, N → Balaban's (d, L, N) constants: δ, δ_[15], β = 1/4, B_3, B_0, δ_0, c_0, a, a_0, a_1, γ_0, γ_1, γ_e, γ_exp, E_0; CMP 119 β_0 ≤ 1/2 → κ → κ_0 (then β_0′ if needed) → κ_1 → R, θ_WG, M_min → walk constants at M_min (c_±, b_G, c_G, δ_G, C_𝒟, C_𝒟^{H1}, c_X, c_loc, C_ov, c_h, Σ) → ε → K_F, K_W, C_W, M_W, M_*, M_*′ → WC constants (B_A, δ_A, ε_WC, Γ_1, K_½, Ḡ, Λ̄_0, W) → complex-level constants (Γ_4, k_3, B_1‴, δ_1‴, c_{−,1}, Γ_3, k_2, B_A″, δ_A″, Γ_1″, k_1, ε″) → M_1 → M_2 = L²M_1 → M → ρ_0 → α‴ → α″ → α′ → α_* → α_1 → α_0 → α_3 → α_2 (α_4, γ_2, α_6, a_1) → ε_1 → exponents p_0 → p_1, r_0^{exp}, ν → r → q_0 → q_1 → A_1 → A_0 → C_0 → C_1 → γ → g → r_0 = τ_0, ρ_1, r → K.

Check [P]: each condition in §1 uses only constants to its left. Notes:
- ρ_0 needs only L, M, N. It may sit anywhere after M; C24 puts it after ε_1, which is also valid.
- E_0 is absolute. IEPS §10 puts it just before ε_1; both slots are valid.
- The exponents (p_0, …, q_1) use only each other. They may move anywhere before A_1, as long as q_0 follows p_0.
- Every constant left of M is M-free, given the two splits of §2.

## 4. Incompatible slots between files

1. A_1 before or after A_0.
 - A_0 → A_1: SOURCES_A11_CONST S5 and §9 order line; TRUST_LEDGER C30 ("A_1 after A_0"); C24 round-5 order ("A_0, p_0 → A_1, p_1").
 - A_1 → A_0: SOURCES_T2_IEPS §10 (iii) ("A_1 before A_0 (A_0 ≫ A_1)"); SOURCES_T2_IEPS_LF §7 ("A_1 → A_0 (≫ A_1)").
 - Same inequality, opposite choice direction. A_1 has a lower bound γ_0A_1² ≥ 8 + 4 log F. So the A11/C30 direction makes A_1 two-sided. The IEPS direction keeps all bounds on A_0 and A_1 as lower bounds. Use A_1 → A_0.
2. C_i, q_i before or after A_0, p_0.
 - A11 §9 order: "M → M_2 → α's (C_i, q_i) → ε_1 → ρ_0 → A_0, p_0". So C_i, q_i before A_0, p_0.
 - IEPS_LF §7: q_0 ≥ p_0, then A_1 → A_0 → C_0 (C3: C_0 ≥ c(B_3)A_0) → C_1. So C_i, q_i after A_0, p_0.
 - In the A11 slot, C3 becomes an upper bound on A_0 and q_0 ≥ p_0 an upper bound on p_0. Use IEPS_LF.
3. M_2 before or after M.
 - A11 §9 body: "M_1 → M → M_2".
 - A11 correction, C24 round 5, C28, IEPS_LF §7: "M_1 → M_2 → M", M_2 = L²M_1 (p. 245), M > M_2.
 - The A11 body line is superseded by its own correction. Missing item: HIGHER_M1 B3's M_req has no entry M > M_2 = L²M_1. M/M_1 > 10 and ≥ 3(7 + c_X) do not imply M > L²M_1 (L ≥ 13 gives L² ≥ 169). Add L²M_1 + 1 to M_req (C24 cites C28 but the list lacks it).
4. c_± and ε before or after M_1 (and M).
 - Before: A1_WALK_FULL 9.1 steps 3–5; WG_FULL 6.4; HIGHER_M1 B2.2 and its correction; WC_FULL 6.2 own text ("M_1 is chosen after d, L, c_±").
 - After: WC_FULL 6.9 ("Balaban's real constants (δ_0, B_0, M_1, M, a_0, the real regularity α_0, a_1) … → c_±, ε").
 - WC_FULL 6.9 copies the WC_RESIDUE_VERIFY Q7 slip. M_1 ≥ M_W uses Σ(½ε), and M > 48κ_1/ε uses ε. So c_±, ε must precede M_1. WC_FULL 6.9 also contradicts its own 6.2.
5. Real α_0 before or after the complex domains and α′.
 - Before: WC_FULL 6.9 (real α_0 in the first group, before c_±); A1_WALK_FULL 9.1 step 7 (α_0 before α‴ in step 8).
 - After: SOURCES_T2_IEPS §10 ("β, α′ → α_1 → α_0"); A1_WALK_FULL 9.1 step 9 and WC_FULL 6.9 end ("α with α′ ≫ α"); IEPS α_0 ≲ α_1/M needs α_1 first.
 - α_0 has only upper bounds, and the complex chain uses α_0 only through the cap Mα_0 ≤ a_0. So α_0 can go last in the α group. Use IEPS.
6. κ_1 before or after M_1 and the walk/WC constants.
 - Before: C24 ("κ_1 → walk constants → M_1"), HIGHER_M1 B2.2, IEPS §10, IEPS_LF §7, A3_SIGMA 5.3 (M_1 ≫ e^{2cκ_1}), A7 complex-s clause (M_1 large after κ_1).
 - After: SOURCES_G3_GGAMMA 4.4 ("… ε, M_1 (WC) → Γ_1, K_½, Ḡ, Λ̄_0, W, ε″ → κ_1 → M").
 - κ_1 uses only L, δ, κ. G3_GGAMMA's slot is wrong but harmless: move κ_1 before M_1.
7. Complex-level constants (incl. ε″) before or after M.
 - Before: G3_GGAMMA 4.4 (ε″ before M); A8 (H_κ); A1_WALK_FULL 9.1 step 6 (uses ε″).
 - After: WC_FULL 6.9 and A1_WALK_FULL 9.1 step 8 (ε″ defined after α′, after M).
 - This is Cycle B of §2. Fix by the split.

Symbol clashes, not slot conflicts (keep the rows separate):
- β_0: Hölder β_0 (C27, GGAIN_BETAH; default 0.9) vs CMP 119 slack β_0 (A11 S3: β_0 ≤ 1/2; C5 "β_0 before γ"). Merging them violates S3 at 0.9. C27 already says they differ; GGAIN_BETAH §5 writes "β_H (= β_0)" without the distinction.
- θ: θ_WG = ½ (WG rate loss) vs θ_S = log L/(RM) (A1_WALK step 2; WG F-regrade "θ_S").
- r_0: integer exponent (IEPS_LF §7) vs radius r_0 = τ_0 (C5).
- δ: CMP 116 δ = (1/10)(1 − 2/L) vs δ_[15] of C29. Both are (d, L) constants, so the slot is the same.
- ε: A1-W rate ε, WC rate ε_WC, complex rate ε″, CMP 116 ε_1, CMP 119 ε_j. Slots differ only for ε″ (item 7).
- a_1: CMP 99 Thm 3.4 radius vs Latin a_1 of CMP 116 p. 10.

## 5. Dangerous vs safe

Dangerous = a constant bounded above by an earlier constant while it also needs a lower bound (or is a "large" constant with an upper cap). These need an explicit non-empty-interval check.
- A_1, if the A11/C30 order is kept: √((8 + 4 log F)/γ_0) ≤ A_1 ≤ A_0/(80B_3). Safe under A_1 → A_0.
- p_1: (p_0 + (d+5)r_0^{exp})/2 < p_1 < p_0 and p_1 ≤ p_0 − 1 − ν/2. Non-empty for integer p_1 if p_0 > (d+5)r_0^{exp} + ν + 4 [P]. So p_0 must be chosen large after r_0^{exp}, ν are fixed.
- A_0 and p_0, if the A11 §9 slot for C_i, q_i is kept (item 2). Safe under IEPS_LF.
- M_2, if the A11 body order M → M_2 is kept: then M_2 < M is a cap on M_2 with lower bound 1/δ_[15]. Safe under M_1 → M_2 → M, where M_2 = L²M_1 is fixed.
- M_1 and M, conditionally: safe only if the complex-level constants are M-free (the split of §2, [I]) and G_Γ is M-free (G3_GGAMMA, unverified). If either fails, M_1 or M acquires a self-referential condition.
- Walk constants and ε at M_min: valid for larger M only by monotonicity in θ_S ([I] except Σ).

Safe = only lower bounds: κ, κ_0, κ_1, M_1, M_2 (= L²M_1 ≥ 1/δ_[15]), M (no upper bound; HIGHER_M1 B2.3), q_0, q_1, A_1 (IEPS order), A_0, C_0, C_1, p_0.

Safe = only upper bounds by earlier constants, no lower bound (smallness parameters): β_H, β_0^{Höl}, CMP 119 β_0, ρ_0, α‴, α″, α′, α_*, α_1, α_0, α_3, α_2, α_4, γ_2, α_6, a_1 (Latin), ε_1, γ, g, r_0 = τ_0, ρ_1, r. (Hγ) and (2.31) bound ε_1 from below only relative to γ, a later constant; they are conditions on γ.

## 6. Summary
- Cycle: no genuine cycle. Two nominal cycles in the written orders of WC_FULL 6.9 / A1_WALK_FULL 9.1 (M_1 ← B_A″, δ_A″ ← α″ ← M; M ← ε″ ← α′ ← M), removed by placing the complex-level constants (M-free caps, [I]) before M_1 and the domain sizes after M.
- Merged order: §3.
- Incompatibilities: A_1/A_0 (A11, C30, C24 vs IEPS, IEPS_LF); C_i, q_i vs A_0, p_0 (A11 vs IEPS_LF); M_2 vs M (A11 body vs its correction, C28); c_±, ε vs M_1 (WC_FULL 6.9 vs A1_WALK_FULL, WG_FULL, HIGHER_M1, WC_FULL 6.2); α_0 vs α′ (WC_FULL 6.9, A1_WALK step 7 vs IEPS); κ_1 vs M_1 (G3_GGAMMA vs C24 and the rest); ε″ vs M (G3_GGAMMA, A8 vs WC_FULL 6.9, A1_WALK step 8). Missing entry: M > L²M_1 in M_req.
- Dangerous: A_1 under C30's order; p_1 (two-sided, needs p_0 > (d+5)r_0 + ν + 4); A_0, p_0 under A11's C_i, q_i slot; M_2 under A11's body order; M_1, M conditional on the M-free cap of the complex-level constants and on G_Γ ≤ Ḡ.

Suggested edits (not made): C24 order line → §3; C30 "A_1 after A_0" → "A_0 after A_1 (A_0 ≥ 80B_3A_1)"; HIGHER_M1 B3 add L²M_1 + 1; WC_FULL 6.9 and A1_WALK_FULL 9.1 move c_±, ε and the complex-level constants before M_1; G3_GGAMMA 4.4 move κ_1 before M_1.
