# SOURCES_ORDER_CANON verification (independent)

Date 2026-10-28. Read-only check of SOURCES_ORDER_CANON.md against SOURCES_ORDER_CHECK.md, A1_WALK_FULL.md §8, WC_FULL.md §5-§6. Firewall respected.

## 1. Read of canon A–D, A1_WALK_FULL 8.1–9.1, WC_FULL §5–§6

- A.6 mixed-row check re-derived: a = ½k(m, m), m = min(b_0, b_1) gives b_0/(a_0+a_1) ≥ 1/k, b_1/a_1 ≥ 2/k, so t(a, b) ≥ c_P/k = 1 + 4Γ/c with k = c_P c/(c+4Γ). Correct. Level 3 with b⁗ = (∞, a_1): t = c_P/k̄_3. Correct.
- Lemma M1. 𝒰(a) (A1_WALK 8.1, WC 6.0): |A′|, |∇A′|, |D*DA′| < a_1; |J| < a_0; U regular with a FIXED real cap (Mα_0 ≤ a_0^{reg}); plaquette "bounded as in CMP 109 (1.13)–(1.14)". The first three are "< component of a", so nested. The plaquette right side is not written in either file. WC 6.0's disc argument (plaquette O(ξ²(α_0 + |t|a_1 + ...)) ≤ ... (a_0 + a_1)) implies a right side that grows with a_0, a_1 or is fixed. Either reading gives nesting. Caveat: nesting of the plaquette row is by reading, not by a quoted formula.
- Side observation (not a defect of (A)): the disc radius in WC 6.0 needs real α_0 ≤ a_0^{(n)} at every level (step "α_0 + |t|a_1 ≤ |t|(a_0 + a_1)"). B22 puts real α_0 ≪ α′, so this holds, but neither B20 nor B22 states "α_0 ≤ α_0′" explicitly. It follows from "α ≪ α′" only if that relation covers the real α_0. Recommend one explicit line.
- WC 6.4–6.8 still use S, c_1..c_3, Γ without C_𝒟, and the G-form J-row c′M^{−11} (fix items C-W3, C-W6 apply). A1_WALK form (C_𝒟, Σ) is larger, so it is the safe one (M2).
## 2. Hidden α/M check (task 1) and Lemma M2 (task 3)

- J scale. WC 4.0 (I9) says real |J| = O(Mα_0); WC 6.0 says Δ^{(2)} = O(1)M|J|; WG 5.5 / CMP 99 (3.137) say |Δ^{(2)}| ≤ O(1)Mα_0. The two WC lines differ by one factor M. Effect on (A): none for M-freeness, because either convention gives a cap of the scaled form (M|J| ≤ a_** or |J| ≤ a_**). Effect on order: if real |J| = O(Mα_0) and real J must lie in 𝒰(α′), then real α_0 ≤ α_0′/(CM). B22 "α ≪ α′" must include this M factor. Minor; not in the fix list.
- ρ_* step factor (WG (G)): ρ_* = max{ρ, (K_V Mα_0)^{1/10}}. At complex level K_V M α_0‴ ≤ K_V c″ M_1^{−12}, so ρ_*‴ ≤ c M_1^{−6/5}. This is a step factor, not a prefactor. B_1‴ stays M-free. Confirmed.
- B_A″ pieces (WC 4.1–4.2, 6.5): (a) C local; (b) 𝒢*𝒢 ≤ 8c_𝒢 under α_1″ caps; (c) tree sum via 8/c_{−,1}; (d) one factor O(M|J|) ≤ O(a_**) times c_1(θ_cδ). The absolute tree sum needs C′_𝒟c_1ρ_A″ ≤ ½, which is a threshold on M_1 (B15) and a cap on Mα_0 (via ρ_*, = a_* in B22). No hidden α or M in the value. Confirmed.
- Domain sizes in Schur sums: S(δ) on the unit lattice (WC 5.2 "one scale"); Σ, c_1 on 𝔅 are uniform under RM > M_*(κ) (threshold). Rates used: δ_G, δ_1‴, ½δ_1‴, δ_A″, ½δ_A″, θ_cδ_A″. All are ≥ ¼ε_min if θ_c ≥ 1/16 (ε_min ≤ ½ε″ ≤ ¼δ_A″). Canon fixes θ_c ∈ (0, 1) "e.g. ½" but states no lower bound. With θ_c < 1/16 the B18 threshold M_*(¼ε_min) would not cover c_1(θ_cδ_A″). Minor; fix by θ_c = ½ or by adding M_*(θ_cδ̄_A″) to B18.
- Lemma M2, Γ_1″ = 2C_𝒟B_A″Σ(δ_A″): increasing in B_A″, decreasing in δ_A″. With B̄_A″ ≥ B_A″, δ̄_A″ ≤ δ_A″: Γ_1″ ≤ Γ̄_1″. Confirmed. BUT B̄_A″ itself contains the factor e^{2Lδ} (explicit pieces "decay at any rate with factor ≤ e^{2Lδ}", canon A.4 item 10). That factor INCREASES with δ. So B̄_A″ evaluated at δ̄_A″ is not an upper bound for the piece constant at the actual δ_A″ > δ̄_A″. M2's list of maps omits this map. Repair (one line): define the rate as δ_A″ := δ̄_A″ (a kernel bound at a rate implies one at any smaller rate with the same prefactor), or bound e^{2Lδ} by e^{2Lδ_G(∞)}. Either repair is trivial. Grade of M2: CORRECTED (statement incomplete, conclusion holds).
- Lemma M2, ε″ = min{½δ_A″, γ_exp/(16c_A″Σ(½δ_A″))}: both branches increase in δ_A″; second decreases in c_A″; γ_exp is a (d, L) value. ε″ ≥ ε̄″. Using ε̄″ is valid since Lemma CT holds for any ε ≤ its bound. Confirmed. Threshold check: M_1 ≥ (2δ_A″)^{−1}log(8B_A″S(½δ_A″)/γ_exp) at bars is sufficient (LHS of the positivity defect is monotone). Confirmed.
## 3. p_1 and A_1 → A_0 vs C3 (task 5)

- p_1. IEPS_LF §7 body: 2p_1 − (d+5)r_0 > p_0; corrected sign ½ν_I ≤ p_0 − p_1 − 1. Interval ((p_0 + (d+5)r_0)/2, p_0 − 1 − ½ν_I]. Length = ½(p_0 − (d+5)r_0 − ν_I) − 1 > 1 when p_0 > (d+5)r_0 + ν_I + 4. A half-open interval of length > 1 contains an integer. p_1 < p_0 follows from the upper end. Confirmed. The ν_I / ν_II split is load-bearing: with one ν, ν ≥ 2p_0 + dr_0 and ν ≤ 2p_0 − 2p_1 − 2 contradict. The split rests on IEPS_LF_VERIFY (not re-read here).
- A_1 → A_0. C3 (IEPS_LF §3): A_0p_0(g) ≤ c(B_3)C_0q_0(g), g ≤ γ; lower on C_0 given A_0. A_0 ≥ 80B_3A_1 is a lower bound on A_0 given A_1. C_0 is free upward (IEPS_LF §5), C_1 ≥ 2B_3²O(1)M·C_0 (C4) is free upward, C7 (B_3²A_1²C_0M^d… g small) goes to γ. No printed upper bound on A_0. Consistent with C3. Confirmed. Notation: canon B28 writes "C_0 ≥ c(B_3)A_0"; IEPS_LF form is C_0 ≥ A_0/c(B_3) (q_0 = p_0 case). Same content, constant renamed.
## 4. Topological pass B1–B33 (task 4), spot checks (task 6), grades

Topological pass. No cycle. R1–R7 realized (R1 B26→B27; R2 B25 q_0 ≥ p_0, B28 after B27; R3 B15→B16→B18; R4 B11–B12 before B15; R5 α_0 in B22 after B20; R6 B9 before B15; R7 B14 before B15/B18). Forward references found (none makes a cycle):
- a_** is in B5, but WG_FULL 5.x/6.4 define a_** := min{a_*′, a_0, K_2^{−1}(4C″_𝒟)^{−12}} with a_*′ using c_W, after the A1-W constants (ε, c_W, K_2) of B12. a_** belongs after B12 (before B14). The fixed WC_FULL 6.9 now copies this slot (a_** in the B5 group).
- a_*, K_V, M_* are functions of (d, L, θ_WG); θ_WG is fixed in B10, after B5. Harmless (θ_WG = ½ is a number), but the line order is wrong.
- B4 (L, S10) uses the cap β_0 ≤ ½ of B6. Harmless; move B6 into Group 0.
- B13 (real B_A, δ_A) uses B_1, δ_1 = ½ε (WG-G1) and the real G_1 A1-W rate δ_W, which needs c_{−,1}; B_1, δ_1, δ_W are on no line, and c_{−,1} first appears in B14. All are functions of B5, B11, B12, so no cycle.
- B24 "ε_1M^q": q is CMP 116's M-exponent, not q_0/q_1, so B24 before B25 is valid. Symbol clash q (CMP 116), q_i, and q = M/M_1 (WC 5.4); r (exponent, B25) vs r (radius, B32).
- Check line "every condition uses only constants on earlier lines [P, checked line by line]" is false as written; acyclicity holds.

Spot checks (current text, fix pass already ran):
- C-W1 WC_FULL 6.9 order → APPLIED (line 310, cites canon B3–B22).
- C-W3 WC_FULL J-row → APPLIED (no c′M^{−11} left; lines 306, 312, 397 carry c″M^{−1}M_1^{−12}).
- C-A8 A1_WALK_FULL 8.4 Γ_3 count → APPLIED (line 400, C_𝒟^{(1)}).
- C-11b A11_CONST S5 row → APPLIED (line 165, lower bound on A_0).
- C-H1 HIGHER_M1 B3 M_req → APPLIED (line 141 has L²M_1 + 1). C-H2 also applied (line 125).

Grades.
- (A) CORRECTED (minor). M-free and α-free: confirmed for all ten constants. Defects: Lemma M2 omits the increasing map e^{2Lδ} inside B̄_A″ (repair: set δ_A″ := δ̄_A″); Lemma M1 nesting of the plaquette row is by reading (right side not written in A1_WALK 8.1 / WC 6.0); θ_c needs θ_c ≥ 1/16 or an extra M_*(θ_cδ̄_A″) entry.
- (B) CORRECTED (minor). Acyclic; R1–R7 realized; p_1 is the only two-sided constant; existence condition correct. Line-placement errors listed above (a_** is the substantive one).
- (C) CORRECTED. 5/5 spot-checked items applied. List incomplete: a_** slot (B5 → after B12, and WC_FULL 6.9 now copies it); B_1, δ_1, δ_W, c_{−,1} lines before B13; θ_c lower bound; M2 e^{2Lδ} note; WC 4.0 (I9) |J| = O(Mα_0) vs WC 6.0 Δ^{(2)} = O(1)M|J| (factor M mismatch; fix one) and an explicit "real α_0 ≤ α_0′/(CM)" line in B22.

## Regrade after amendments E1–E7 (2026-10-28)

Read: canon A (amended), B, E; WC_FULL 6.0–6.9, 4.1(d); A1_WALK_FULL 8.1, 8.4, 9.1; WG_FULL (I5), 0.6, 5.5, 5.10; A1_KERNEL §9 order line; TRUST_LEDGER C5, C24, C27, C28; HIGHER_M1 B3. Firewall kept.

(1) Own topological pass. Each line checked against the constants written on it. Acyclic: YES. Forward references:
- a_{−,1} := 1/(2C_{G1}) sits in B5. No file defines C_{G1}. A1_KERNEL §9 gives only "c_−(G_1) ≥ c_−(G)(1 − O(Mα_0))", with the O(·) from (3.137) "via Schur" [I]. If that Schur constant uses Σ(δ_G) or b_G (B11), the B5 slot is a forward reference. Fix: move a_{−,1} to B12c, next to its only use c̄_{−,1}. No cycle either way.
- None other. B5a's c_1(θ_WG½δ_0) and B14's c_1(θ_cδ̄_A″) are values valid under the later B18 threshold RM > M_*(¼ε_min); this is the A.5 threshold pattern, not a forward value. E3 covers both rates.
- Unplaced (no cycle): B_0′ (WG-G), c_κ, c_b, c_ι, c_Q ((I7), (d, L)) used by K_2 in B12a; add to B5/B5a. "θ" in B27 "A_0 ≥ k/(2θ)" does not say which θ.

(2) Moves E1–E7 against §2/§4 findings. All match.
- E1: a_** with a_*′, K_2, c″ in B12a after B12 (B12 now lists B_W, c_W). B_1 (B12b), c_{−,1} then δ_W (B12c) before B13. δ_1 = ½ε in B12a. MATCH.
- E2: θ_WG heads B5; B5a holds a_*, K_V, M_*, c′. B6 in Group 0, B4 uses its cap. C_𝒟^{H1} before C″_𝒟 in B5. MATCH.
- E3: θ_c ∈ [1/16, 1) in A.1, B5, WC 6.9, A1_WALK 9.1 step 2. MATCH.
- E4: A.4 item 10 sets δ_A″ := δ̄_A″; M2 names e^{2Lδ}. MATCH.
- E5–E7: see (3)–(4). E7's claim "no forward reference" holds except the a_{−,1} point in (1).

(3) J scale. SETTLED: E5 is right; WC 6.0's old "O(1)M|J|" was a double count.
- WG (I5): unscaled |J(b)| ≤ O(1)Mα_0(L^jη)^{−3}; Ĵ := S^{3/2}J, |Ĵ| ≤ c_JMα_0. 5.5: w_β is linear in Ĵ with M-free coefficient c_LB_WB_0′Σ(½θδ_1)² (5.5.1). A1_KERNEL §9 quotes (3.137) as |Δ^{(2)}A| ≤ O(1)Mα_0(L^jη)^{−2}|A|: one factor Mα_0, which is the size of Ĵ. So |Δ^{(2)}| = O(1)|Ĵ|.
- WC's J is Ĵ. WC 6.0 measures A′ "in the scaled units of (3.37)" and WC (I9) says |J| = O(Mα_0); the unscaled J carries (L^jη)^{−3}. With J = Ĵ, "M|J|" is O(M²α_0): double count.
- The other convention exists, but only as wording. A1_WALK 8.4 (line 399) and canon A.1, A.4 item 5, A1_WALK 9.1 closing paragraph justify the row by "Mα_0‴ ≤ a_**", that is |J| read as an α_0-sized variable. This is the M|J| convention. The row itself is safe under E5(ii) once M ≥ 1/c_J. Fix the wording to "|Δ^{(2)}| ≤ O(1)|J| ≤ O(1)a_**/M". No object changes.
- WC downstream: 4.1(d) "one factor O(Mα_0) from J" agrees with |J| = O(Mα_0). 6.4 Neumann condition uses |J| < α_0‴ with the G_1 row; consistent. 6.2, 6.5–6.7 have no J term (c_{−,1} uses the real Mα_0 only). 6.8 J-row unchanged. Consistent.

(4) New conditions. Both admissible.
- B22 real α_0 ≤ α_0′/(CM), C > c_J: upper bound on α_0; arguments α_0′ (B20), M (B18), c_J (B5); α_0 is chosen in the last α-group. Not implied by the J-row: the row bounds the complex domain α_0‴, not the real α_0, and Mα_0 ≤ a_** only gives |J| ≤ c_Ja_** ≫ α_0′. With M ≥ 1/c_J it also gives CM > 1, so α_0 ≤ α_0′. This closes the §1 side observation (disc radius in WC 6.0 needs α_0 ≤ a_0^{(n)}).
- B18 M ≥ 1/c_J: lower bound on M from B5. Vacuous if c_J ≥ 1, which one may assume (c_J is an upper-bound constant; enlarging it only enlarges C in B22). Not implied by the J-row; keep it or state c_J ≥ 1 in B5.

(5) Mirrors.
- WC_FULL 6.9 vs canon: order B5 → B5a → B11–B12 → B12a → B12b–c → B13 → B14 → B15 → B16 → B18 → B20 → B21 → B22 → g. Same order. Differences: θ_WG listed after the B5 caps (canon: first; harmless, a number); κ's (B7–B9), R and M_min (B10), B17, ρ_0 (B19) omitted (scope); M list omits M ≥ 1/c_J and M ≥ M_99, though WC 6.4's J-row needs M ≥ 1/c_J. Add M ≥ 1/c_J.
- A1_WALK_FULL 9.1 vs canon: steps 2 → 3 → 4 → 4a → 4b → 5 → 6 → 7 → 8 → 9 follow B5–B5a, B10–B11, B12, B12a–c, B14, B15, B18, B20, B21–B22. Differences that need a fix: step 8 lacks real α_0 ≤ α_0′/(CM), C > c_J (E5, B22); step 6 lacks M ≥ 1/c_J; step 6 has "M ≥ M_* of Theorem WG-G" while canon B5a/B15 has M_* as a threshold on M_1 and step 5 lacks M_1 ≥ M_*, M_*′ (harmless since M > M_1, but not a mirror); step 4 lacks B_W, c_W, which 4a uses. Scope omissions: B13, κ's.
- TRUST_LEDGER: C24 canon order reads "d, N, L → … → β_0 ≤ ½ → κ", which puts β_0 after L, against E2 (B6 before B4); harmless in substance (S10 holds for all β_0 ≤ ½), but not a mirror. C24 says "26 lower bounds", canon B18 says "20 entries"; HIGHER_M1 B3 now lists 29. Neither C24 nor HIGHER_M1 B3 has M ≥ 1/c_J. C5, C27, C28 agree with the canon.
- Symbol clash, new: WC_FULL line 164 uses c_J for c(d, L, N)(Mα_0 + (Mα_0)²) (A3 §4.1), not the (d, L) constant of WG (I5). Rename one. Old clash kept: M_* (WG-G) vs M_*(κ) (CMP 96 (2.59)).

Grade: NEEDS FIXES (minor; acyclic, no object changes).
1. Move a_{−,1} from B5 to B12c (C_{G1} undefined).
2. A1_WALK_FULL 9.1: add α_0 ≤ α_0′/(CM), C > c_J to step 8; M ≥ 1/c_J to step 6; M_1 ≥ M_*, M_*′ to step 5; B_W, c_W to step 4.
3. WC_FULL 6.9: add M ≥ 1/c_J to the M list.
4. J-row wording "Mα_0‴ ≤ a_**" → "O(1)|J| ≤ O(1)a_**/M" in A1_WALK 8.4, A1_WALK 9.1 closing, canon A.1, A.4 item 5.
5. TRUST_LEDGER C24: β_0 ≤ ½ before L; entry count; add M ≥ 1/c_J (also HIGHER_M1 B3).
6. Rename WC_FULL line-164 c_J; place B_0′, c_κ, c_b, c_ι, c_Q in B5/B5a; name the θ of B27.
