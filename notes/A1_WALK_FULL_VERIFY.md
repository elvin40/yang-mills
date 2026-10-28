# A1_WALK_FULL verification (independent)
Started 2026-10-28. Sections appended per step.

## 1. (d) Lean citations
- `coercive_inv`: hyp ∀v, c‖v‖² ≤ re⟪v,Av⟫; concl IsUnit A ∧ ‖A⁻¹‖ ≤ 1/c. No Hermitian hyp. Matches 3.3.
- `combes_thomas`: hyp w > 0, hN (accretive), hE ‖WNW⁻¹ − N‖ ≤ c/2; concl IsUnit N, ‖(WNW⁻¹)⁻¹‖ ≤ 2/c, ‖N⁻¹ x y‖ ≤ (2/c)w y/w x. Matches 3.3 as quoted.
- `combes_thomas_schur`: hrow, hcol over every centre x₀ with weight |exp(ε(d x x₀ − d y x₀)) − 1|; d x x = 0 only. Matches 3.3 ("f = d(·, x₀)").
- Weight direction: 3.2 A_f = e^{εf}Ae^{−εf} = W N W⁻¹ with w = e^{εf}. Same.
- Transfer via V: VAV⁻¹ has entries μ^{1/2}(y)μ^{1/2}(y′)a(y,y′); V commutes with diagonal weights; Re⟨u,Au⟩_μ = Re⟨Vu,VAV⁻¹Vu⟩. Correct. Not formalized, as the file states.
- Grade (d): CONFIRMED. The cited theorems carry exactly the hypotheses the text uses.

## 2. (a), (f) Junction count and term bound, redone
- Blocks per insertion: S K or R K = 2 blocks, |ω′|+1 + 1 = |ω′|+2 domains added; Γ = 1 block, 1 domain. Initial K_{□0} adds 0 to |ω|. So |ω| = Σ added domains. CHECKED.
- β(SK) = b_G e^{−¼δ_G M_1} ρ_G^{|ω′|}·(4/c_−). ρ_G supplies |ω′| powers. The 2 remaining powers (entry junction into X′_0, exit junction into □_i⁺) must come from (4b_G/c_−)e^{−¼δ_G M_1} alone, since |ω′| = 0 is allowed. So ρ ≥ (4b_G/c_−)^{1/2}e^{−⅛δ_G M_1} is needed and sufficient. CHECKED.
- R block: d(ω′,y,z) > 4M_1, λ = ¼ split gives e^{−δ_G M_1}e^{−¾δ_G d(ω′)}; ε ≤ ¾δ_G. CHECKED. S block: d(ω′) ≥ d(y,z) ≥ M_1 (y ∉ □, z ∈ □⁻). CHECKED.
- Γ: ‖Γ‖_ε ≤ ‖E^com‖_ε·4/c_− = ρ_com; (N2) gives rate ε. K: 4/c_−. CHECKED.
- Concatenation (δ = ε, θ = ½): m telescopes (μ(z)m(y,z)m(z,y′) = m(y,y′)); junction sums are counting sums ≤ c_1(½ε); N−1 junctions ≤ |ω| since every block has ≥ 1 domain; c_1 ≥ 1. Prefactor 4/c_− from K_{□0}. CHECKED.
- M_e′ ≥ M_e holds since e^{−¼x} ≤ e^{−⅛x}. ρ ≤ K_W/M_1 for M_1 ≥ M_e′. CHECKED.
- Grade 10.2 point 4 (a): CONFIRMED. (f): CONFIRMED.

## 3. (b), (e) F norm and Neumann series
- 5.1: f_□(y,y′) = 0 unless y′ ∈ □⁻ (F_□ ends in h_□). (N2) at κ = ε: |f_□| ≤ ρ_1 m e^{−εd}. At most C_ov cores contain y′, so Σ_□|f_□| ≤ C_ov ρ_1 m e^{−εd}. Conjugated kernel at κ = ½ε ≤ C_ov ρ_1 m e^{−½εd}; Schur (rows and columns, d symmetric) gives ‖F‖_{½ε} ≤ C_ov Σ(½ε)ρ_1. Volume-uniform. CHECKED.
- Why sup_□‖F_□‖ fails: (N4) needs h_□ on both sides; F_□ = E_□C_□h_□ has h_□ only on the right, and E^sep_□ = (1 − 1_□)N̂h_□ has left support 𝔅∖□. Without a bounded-overlap left support, Σ_□‖E_□C_□h_□u‖ ≤ sup‖·‖ Σ_□‖h_□u‖ is not ≤ C‖u‖ uniformly (Σ‖h_□u‖ ≤ (#□)^{1/2}‖u‖). The claim is right as stated: sup_□ alone does not give a uniform bound. CHECKED.
- 4.2 three bounds: (sep) κ′ = ¾δ_G, κ ≤ ½δ_G; (tr) Lemma 2.1(c) second bound; (com) κ′ = δ_G with the (1 + d) weight inside Σ. All Σ arguments ≥ ¼δ_G; Σ decreasing. CHECKED. 4.3: ‖F_□‖_ε ≤ (4/c_−)·2c_+Σ(¼δ_G)(e^{−¼δ_G M_1} + e^{−δ_G M_1} + c_h/M_1) = ρ_1. CHECKED.
- 5.2: (N1) submultiplicative, (N0) dominates ‖·‖. ‖F‖_{½ε} ≤ C_ovΣ(½ε)K_F/M_1 ≤ ½ iff M_1 ≥ M_N = 2C_ovΣ(½ε)K_F. Geometric series ≤ 2. ‖P‖_{½ε} ≤ sup‖C_□‖_{½ε} ≤ ‖C_□‖_ε ≤ 4/c_− by (N4), (N0). Product 8/c_−. Right inverse ⇒ inverse in finite dim. CHECKED.
- Grade 10.2 point 3 (b): CONFIRMED. (e): CONFIRMED.

## 4. (c), (g) §7.4 near/far and c_X
- Far X: either X ⊄ X_0 (a point at distance 0 from X_0^c) or d(X, X_0^c) < M_1. Either way some x ∈ X has d_∞(x, X_0^c) < M_1. With (b), d_∞(x, Z_0) > M − 6M_1; so d_∞(X, Z_0) > M − (6 + c_X)M_1 ≥ ⅔M iff q ≥ 3(6 + c_X). The first step is strict, so the result is strict. CHECKED.
- c_X here must bound the diameter of every domain that can be far. The series of 7.3 has □⁺ domains of diameter ≤ D_+M_1. So c_X ≥ D_+ is required. Since D_+ = K_1 + 4c_X + 6 > c_X(B3), the max is D_+. Point 5 (c): CONFIRMED.
- (b) 5M_1 bound: Q̃^5 ⊄ Z̃_0 gives an M_1-cube Q′ ⊄ Z̃_0 within index distance 5, so every point of Q is within d_∞ ≤ 5M_1 of Q′ (up to one lattice unit). CHECKED.
- Minor: "lattice-unit margins absorbed by the strict inequality" holds only if M_1(q/3 − 6 − c_X) exceeds the O(1) loss. q is a power of L, so ask q ≥ 3(7 + c_X). Cosmetic.
- 7.5 merging: n_0 ≤ n_f + 1; Σ_{r≥1}x^r ≤ 2x for x ≤ ½; n_f = 0 case gives (4/γ)(c_1ρ)^{−1}·2C_Wc_1ρ = 8C_W/γ; path-length deletion by triangle inequality, kept point lies in X_0. CHECKED. Point 6: CONFIRMED.
- Grade (g): CONFIRMED.
- Page check: CMP 116 p. 13 text has "unions of connected families of M_1-cubes", "tilde over X_0 ... M_1-cubes ... tilde over Z_0 ... M-cubes", "dist(X, Z_0) > ⅔M" (pdftotext). CMP 116 p. 3 text has "kernel vanishes in a sufficiently thick neighborhood of ∂X_j", width ⅓M_1 (OCR). CONFIRMED.

## 5. (h) §8 Lemmas CP, AW, and the chain
- Lemma CP: ∫_0^1 Γ/(t − s)ds = Γlog(t/(t − 1)) ≤ Γ/(t − 1) ≤ ½c iff t ≥ 1 + 2Γ/c. Accretive hypothesis only; real-matrix remark (Re⟨u,Au⟩ = ⟨a,Aa⟩ + ⟨b,Ab⟩) correct. Matches VERIFY Q6 restatement. CONFIRMED.
- Lemma AW (a): ‖N̂_{P,□}‖ ≤ 2c_+^bΣ(δ^b) by Lemma 2.1(b) + (N3) κ = 0. CP with c = ½c_− ⇒ t ≥ 1 + 4Γ_b/c_−. (b): CT with c = ¼c_−, b = 2c_+^b ⇒ ε ≤ c_−/(16c_+^bΣ(½δ^b)), bound 8/c_−. (c): 8/c_− per walk, 2C_𝒟·8/c_− = 16C_𝒟/c_− summed. Matches Q6 (i), (ii). CONFIRMED.
- Chain k_3: t(α‴, b⁗) with b_0 = ∞ is c_P a_1/α_1‴ ≥ 1 + 4Γ_4/c_− iff α_1‴ ≤ k_3 a_1. Level 4 has no plaquette row (Q7). k_2, k_1 formulas match Q7. CONFIRMED.
- ERROR (constant level). Lemma AW defines Γ_b := 2c_+^bΣ(δ^b) with c_+^b = C_𝒟 b^b (per-walk constant times branching), as Lemma 1.1 requires. In 8.4, Γ_3 := 2B_1‴Σ(δ_1‴) and Γ_1″ := 2B_A″Σ(δ_A″) use per-walk constants B without C_𝒟. The same paragraph then writes ε″ with c_A″ := C_𝒟b_A″. Source SOURCES_WC_EXPGAUGE 4.2 states Σ_ω|A_ω| ≤ 2B_A e^{−δd}, which drops the C of Lemma 1.1. Fix: Γ_3 := 2C_𝒟B_1‴Σ(δ_1‴), Γ_1″ := 2C_𝒟B_A″Σ(δ_A″) (= 2c_A″Σ). Effect: k_1, k_2 shrink by ≤ C_𝒟. No conclusion changes.
- Level 1 route (global CP, then restriction to get ¼γ_exp locally): consistent with 7.2(a) and Lemma 2.1(e) at the complex point. ε″ formula CHECKED.
- Grade (h): CONFIRMED with the Γ correction. Point 7: CORRECTED (renaming and factor 2 are right; Γ_3, Γ_1″ also need C_𝒟).

## 6. (i) Whole-proof read; points 1, 2
- §0.1 Σ(δ′) ≤ (1 + 2/(eδ′))c_1(½δ′): max of (1 + x)e^{−½δ′x} is 1 (δ′ ≥ 2) or e^{s−1}/s with s = ½δ′ ≤ 1; e^{s−1} ≤ s + e^{−1} on [0,1]. CHECKED.
- Point 1: Schur test on VAV⁻¹ in ℓ²(𝔅) with majorant c(1 + d)e^{−κd}; d symmetric, rows = columns; Lemma 2.1 (CMP 96 (2.61)) is a counting sum. CONFIRMED.
- Point 2: Lemma 1.1 first-pair count C gives 2CB; 5.6 gives 8C_𝒟/c_−; (iv) comes from 5.2 and has no C_𝒟. CONFIRMED.
- (N2): f = d(·,y′) gives conjugated kernel e^{κd(y,y′)}a(y,y′). CHECKED. (N4) CHECKED.
- Lemma 2.1(c): d(x, □) > (c_X + 2)M_1, out-and-back > 4M_1, λ = ½ and ¼ splits. CHECKED. (e) M_a formula CHECKED.
- Lemma CT 3.2: |e^x − 1| ≤ |x|e^{|x|}, ε ≤ ½δ, ‖E‖ ≤ bεΣ(½δ) ≤ ½c. CHECKED. 3.4: (½c_−)/(2·2c_+Σ) = c_−/(8c_+Σ). CHECKED.
- 4.1 identity: re-derived; CMP 96 (2.82) image (p. 237, 300 dpi) shows one main sum and three error sums; (2.84) shows e^{−⅛δ_0M}. CONFIRMED. Cosmetic: "F_□ is −R term by term" overstates; Balaban's separation sum is split over □′ by h²_{□′}. Same total. IN21 is not load-bearing.
- 5.3 decomposition: 1_{□⁻}h_□ = h_□ = 1_□h_□ gives E^sep C h = Σ S K, E^tr C h = Σ R K. CHECKED.
- 5.6 count: 5 label types × C_𝒟; □ is fixed at the closing K_□; overcount only. CHECKED. The □⁺-meeting count is [I], tagged.
- CMP 99 p. 413 text: "difficult to make the last statement more precise. Instead we will write a bound for a whole term"; "D_0, which is a sum of 5^d cubes". CONFIRMED.
- Untagged assertions (low risk): 7.3 Σφ_□² ≥ c(d) on Z_0 near ∂Z_0; 9.1 step 3 monotonicity in θ of Σ and θ-dependent constants. Tag both [I].
- Naming clash: "Lemma 2.1" means both this file's locality lemma (§2.3, used in 3.4, 8.3) and CMP 96 Lemma 2.1 (§0.1, 3.4(e), 9.2). 3.4(e) "[R, Lemma 2.1]" is ambiguous. Rename one (the file renamed c_1 → k_n for the same reason).
- (H4) in §0.4 does not state WG-1 (α_0 ≤ c′M^{−11}); 6.6 says "we assume it in (H4)". It is in 9.1 step 7 only. Add it to (H4).

## 7. (j) Ledger IN1–IN21
- Tags match the source verifies: IN1 [P given printed sketches] (SOURCES_WG_VERIFY); IN3, IN4 conditional; IN5 [R]; IN6 [L] with the V-transfer and kernel-to-‖E‖ step unformalized (stated in 3.3); IN7 [P] cited; IN8, IN9, IN10, IN12 [I]; IN15 [V]+[P]; IN17 [V]; IN18 [R] (Q5 agrees [R] is right, not [V]); IN19 [V via A2_R2_VERIFY V6].
- 10.1 dependency lists: main theorem uses IN1, IN3, IN5–IN11, IN13; IN12 only in §9; IN14 only as motivation in §1.4 and in §7. CHECKED.
- IN16 grade lists its own [I] items (A3 R2, C̃^{(2)}-locality). CHECKED.
- Grade (j): CONFIRMED.

## 8. Grades
10.2 points: 1 CONFIRMED; 2 CONFIRMED; 3 CONFIRMED; 4 CONFIRMED; 5 CONFIRMED; 6 CONFIRMED; 7 CORRECTED (Γ_3, Γ_1″ lack C_𝒟).
Brief items: (d) Lean CONFIRMED; (e) Neumann CONFIRMED; (f) term bound CONFIRMED; (g) near/far CONFIRMED (strict inequality holds; lattice-unit margin cosmetic); (h) CP/AW CONFIRMED, chain constants CORRECTED; (i) no logical gap found; (j) CONFIRMED.
Proof as a whole: NEEDS FIXES (all constant-level or wording; no gap). Fix list:
 F1. 8.4: Γ_3 := 2C_𝒟B_1‴Σ(δ_1‴), Γ_1″ := 2C_𝒟B_A″Σ(δ_A″) (= 2c_A″Σ(δ_A″)); k_1, k_2 change accordingly. Source SOURCES_WC_EXPGAUGE 4.2–4.3 carries the same omission.
 F2. Rename this file's Lemma 2.1 (clash with CMP 96 Lemma 2.1; see 3.4(e)).
 F3. Put WG-1 (α_0 ≤ c′M^{−11}) into (H4).
 F4. Tag [I]: 7.3 lower bound Σφ_□² ≥ c(d) on Z_0; 9.1 step 3 monotonicity in θ.
 F5. 7.4: state q ≥ 3(7 + c_X) (or an explicit lattice-unit margin) in place of "absorbed by the strict inequality".
 F6. 4.1: replace "term by term" by "after summing over □′".
After F1–F6 the file is PAPER-GRADE relative to its tagged inputs (IN1, IN3 conditional, IN8–IN12 [I], IN18 [R]).

## Regrade after fixes (2026-10-28)
Read: §0.4, §2.1–2.3, §4.1, §6.6, §7.3–7.4, §8.3–8.4, §9.1, ledger IN11, and the change log of A1_WALK_FULL.md.
- F1. 8.4 Level 2: Γ_3 := 2C_𝒟B_1‴Σ(δ_1‴). Level 1: Γ_1″ := 2c_A″Σ(δ_A″), c_A″ = C_𝒟B_A″. Both match Lemma AW's Γ_b = 2c_+^bΣ(δ^b), c_+^b = C_𝒟b^b. Γ_4 = 2c_+⁗Σ(δ_G) already has C_𝒟 through c_+ = C_𝒟b_G. k_2 = c_Pc_{−,1}/(c_{−,1} + 4Γ_3) matches CP with c = ½c_{−,1}. k_1 = c_Pγ_exp/(γ_exp + 2Γ_1″) matches CP with c = γ_exp. The ε″ line uses c_A″ = C_𝒟B_A″, which is the c_+ of Lemma CT, as in 3.4. The "Effect of the factor C_𝒟" paragraph is correct: k_1, k_2 shrink by a factor ≤ C_𝒟 and stay fixed before every α^{(n)}. CONFIRMED.
- F2. Every remaining "Lemma 2.1" (lines 17, 18, 99, 140, 208, 361, 387, 399, 417, 421, 444, 450) names CMP 96 explicitly or sits in the naming note. Every local use says "Lemma LT(·)" (3.4, 4.2, 5.3, 6.2, 7.3, 8.3, 8.4, 9.2). No bare "Lemma 2.1(x)" remains. CONFIRMED.
- F3. (H4) states the M_1 form: α_0 ≤ c′M^{−1}M_1^{−10} (G), α_0 ≤ c″M^{−1}M_1^{−12} (G_1). WG_FULL 4.6 line 181 derives exactly c′M^{−1}M_1^{−10}, and WG_FULL_VERIFY line 32 gives both. Implication for G: M_1 ≤ M gives M^{−10} ≤ M_1^{−10}, so c′M^{−11} = c′M^{−1}M^{−10} ≤ c′M^{−1}M_1^{−10}. CORRECT. Propagation: 6.6, 8.4 J-row and the α_0-row note, 9.1 step 7, IN11 all use the M_1 form. CONFIRMED.
 Minor wording (F3′). (H4) says "In CMP 99 notation it reads α_0 ≤ c′M^{−11}" after naming both rows. That is the G row only. The G_1 row in CMP 99 notation is α_0 ≤ c″M^{−13}. The form c′M^{−11} does not imply c″M^{−1}M_1^{−12}: that needs M_1^{12} ≤ (c″/c′)M^{10}, false for M_1 near M. The hypothesis itself is the M_1 form, so no proof step changes. Fix: "for G it reads α_0 ≤ c′M^{−11}, for G_1 α_0 ≤ c″M^{−13}; since M_1 ≤ M, each implies its M_1 form."
- F4. 7.3 carries [I] on Σφ_□² ≥ c(d) near ∂Z_0. 9.1 step 3 carries [I] on monotonicity in θ. CONFIRMED. The 7.3 item is proved below, so its tag can become [P].
- F5. Redo: far X has x with d_∞(x, X_0^c) < M_1. With (b), d_∞(x, Z_0) > M − 5M_1 − M_1 = M − 6M_1. So d_∞(X, Z_0) > M − (6 + c_X)M_1. Then M − (6 + c_X)M_1 ≥ ⅔M + M_1 ⇔ ⅓M ≥ (7 + c_X)M_1 ⇔ q ≥ 3(7 + c_X). CORRECT. q ≥ 3(7 + c_X) > 3(6 + c_X) ✓, and q > 10 follows since c_X ≥ D_+ ≥ 1. The margin M_1 ≥ M_W covers the O(1) lattice losses of (a)–(c). 9.1 step 6 and "Two conditions on q" use the new form; the latter quotes the source's "R_1 ≥ 3(6 + c_X)" only to reinterpret it. CONFIRMED.
- F6. 4.1 now reads "F_□ is −Σ_{□′}R_{□,□′} ... after summing over □′". Sign check against the displayed (2.82): the three error sums carry −, and −[h, N_□] = [N_□, h] = E^com, −□(G(□̃)² − G²) ↔ E^tr, −(□ − 1) = (1 − □) ↔ E^sep. Signs CONFIRMED. Cosmetic (F6′): the display ends with ΣR_{□,□′}C_□h_□, so the exact statement is F_□ = −Σ_{□′}R_{□,□′}C_□h_□. IN21 is not load-bearing.

### Proof of the 7.3 bound Σφ_□² ≥ c(d) on Z_0 [P]
Gap located. 7.3 does not define φ_□ beyond "tent functions with supp φ_□ ⊂ □⁻". The boundary worry disappears once φ_□ is a global family restricted to the cover. Below: an explicit global family, then the restriction step.
Construction (one scale, 7.1). Positions of bonds are their midpoints in ℝ^d. Put a := ½K_1M_1 and assume K_1 ≥ 6. Index cubes by j ∈ ℤ^d: centre aj, □_j := aj + [−a, a]^d (side K_1M_1), core □_j⁻ := aj + [−(a − M_1), a − M_1]^d. A point outside □_j has some coordinate at distance > a from aj, so d_∞(□_j⁻, 𝔅∖□_j) ≥ M_1, and the Euclidean distance is ≥ d_∞. One-dimensional tent: τ(s) := min{1, max{0, (a − M_1 − |s|)/(½a − M_1)}}. Then τ = 1 on |s| ≤ ½a, τ = 0 for |s| ≥ a − M_1, and Lip τ = (½a − M_1)^{−1} = ((¼K_1 − 1)M_1)^{−1} ≤ 2/M_1, since ¼K_1 − 1 ≥ ½. Put φ_j(x) := Π_{i=1}^d τ(x_i − aj_i). So supp φ_j ⊂ □_j⁻ and 0 ≤ φ_j ≤ 1.
Step 1 (global lower bound, c = 1). For any x ∈ ℝ^d, let j_i be the integer nearest to x_i/a. Then |x_i − aj_i| ≤ ½a for each i, so φ_j(x) = 1. Hence Σ_jφ_j(x)² ≥ 1.
Step 2 (overlap count, upper bound). In one coordinate, supp τ(· − aj_i) has length 2(a − M_1) < 2a, and the centres are a apart. So at most 2 values j_i give τ ≠ 0. Hence at most N := 2^d of the φ_j are nonzero at x, and Σ_jφ_j(x)² ≤ 2^d.
Step 3 (restriction to the cover of 7.3; the boundary). Let x ∈ Z_0 and φ_j(x) ≠ 0. Then x ∈ □_j⁻ ⊂ □_j, so □_j meets Z_0 and belongs to the cover. So for x ∈ Z_0 the sum over the cover equals the global sum: Σ_{□ meets Z_0}φ_□(x)² = Σ_jφ_j(x)² ≥ 1. Points near ∂Z_0 need no separate argument. So c(d) = 1 for this family.
Variant (the hint's form). For any family with Σ_□φ_□ = 1 on Z_0 and at most N nonzero at each point, Cauchy–Schwarz gives 1 = (Σφ_□)² ≤ NΣφ_□², so Σφ_□² ≥ 1/N = 2^{−d} for the cube grid above. The tent family above gives the stronger c = 1.
Step 4 (Lipschitz of h_□, also claimed in 7.3). Put S := Σ_jφ_j², so 1 ≤ S ≤ 2^d. |φ_j(x) − φ_j(y)| ≤ Σ_i Lip τ |x_i − y_i| ≤ (2√d/M_1)|x − y|. For h_j = φ_jS^{−1/2}: |h_j(x) − h_j(y)| ≤ |φ_j(x) − φ_j(y)| + |S(x)^{−1/2} − S(y)^{−1/2}|. Since S ≥ 1, |S^{−1/2}(x) − S^{−1/2}(y)| ≤ ½|S(x) − S(y)| ≤ ½Σ_k(φ_k(x) + φ_k(y))|φ_k(x) − φ_k(y)| ≤ 2^{d+1}(2√d/M_1)|x − y|, with at most 2^{d+1} nonzero k. So c_h ≤ 2√d(1 + 2^{d+1}).
Conditions used. (i) K_1 ≥ 6. (ii) The grid aℤ^d fits the lattice period: a divides the torus side. This holds if ½K_1 is a power of L, since M_1 and the side are powers of L. If K_1 is fixed otherwise, replace a by the largest divisor of the side in [¼K_1M_1, ½K_1M_1]; Steps 1–4 hold with ½K_1 → a/M_1 and K_1 ≥ 12. (iii) (G) [I] at the real multiscale point is not used; 7.3 is one scale. The cover {□_j : □_j meets Z_0} has C_ov = 2^d.
Result. The 7.3 bound holds with c(d) = 1 (or 2^{−d} for any partition of unity on this grid), uniformly in Z_0 and up to ∂Z_0. The [I] tag of 7.3 can become [P], provided 7.3 names this family as φ_□. This does not close IN8 (multiscale (G)) or IN9 (O2).

### Regrade
PAPER-GRADE relative to its tagged inputs (IN1, IN3 conditional, IN8–IN12 [I], IN18 [R]). F1–F6 are correct. Three cosmetic edits remain, none load-bearing: F3′ (state the G_1 row in CMP 99 notation as α_0 ≤ c″M^{−13}, or drop the "implies" remark for G_1); F6′ (F_□ = −Σ_{□′}R_{□,□′}C_□h_□); 7.3 (define φ_□ as the tent family above and retag [P]).
Correction to condition (ii) above. The divisors of the side are powers of L, so the interval [¼K_1M_1, ½K_1M_1] can contain none when L > 2. Use instead a := M_1L^k with L^k the largest power of L ≤ ½K_1. Steps 1–4 hold with a/M_1 in place of ½K_1 if a ≥ 3M_1, which K_1 ≥ 6L guarantees. The cube side is then 2a ≤ K_1M_1, so D_+ does not grow.

## Regrade of §6.9a and the G_1 second pass (2026-10-28)
Read: change logs of A1_WALK_FULL and WG_FULL; A1_WALK_FULL §0.2, §0.4, §2.1, §2.3, §5.3–§5.7, §6.9, §6.9a; WG_FULL 0.4, (I6), (I7), 0.7, §3, 5.4–5.10, 6.4.

(1) (H1-T) against WG_FULL 5.10. 5.10 gives: (L1)–(L2) per factor, (B1) as (5.7.1) with the tree distance, (B2) as C″_𝒟ρ_{**} ≤ ¼, rate (1 − θ)½ε. (T0) is 5.6, (L2-T) is 5.6, the point count C_𝒟(C″_𝒟)^s is 5.8. These are in WG_FULL, so they are acceptable inputs. Not given by 5.10 or anywhere in WG_FULL:
 - the set form of (B2-T) (count C_𝒟^{(1)} over sets of diameter ≤ D_+^{(1)}M_1). It is a cube-geometry consequence, the same kind as the [I] count of A1_WALK_FULL 5.6. The heading tag "[I] cube geometry" covers it only implicitly. Fix A: tag the set form [I] in (B2-T).
 - (B3-T) c_X^{(1)} = D_+ + 10. It comes from WG_FULL 0.7 (second pass) and 0.4 "Domain size", not from 5.10. Correct as stated: branch domains are first-pass □⁺ (diam ≤ D_+M_1), WG-G domains (c_X ≤ D_+), and κ-domains (c_X); 5 layers add ≤ 10M_1 in the convention of WG 0.4.
 - δ_{G_1} subtracts (d/2 + 1)θ. WG 0.2 already measures kernels after S-rescaling, so this may count the rescaling cost twice. That is conservative and harmless.
 - Inherited defect (WG_FULL 5.8, see WG_FULL_VERIFY regrade): C″_𝒟 = T_2C_𝒟 uses the per-domain count C_𝒟. A branch step that follows a first-pass □⁺ domain needs the count over sets of diameter D_+M_1. So C″_𝒟 must be T_2C_𝒟^{H1} (C_𝒟^{H1} enlarged to include the □ count, as 5.6 does). (B2-T) and C_W^T change only through this constant.

(2) What the tree form gives. Checked against the definitions (0.2; WG 5.7).
 - (L1), (L2): per factor, no change. CONFIRMED.
 - (D1): a connected graph with y, y′ contains a y–y′ path. CONFIRMED.
 - Subadditivity: the union of graphs for (τ_1, y, z) and (τ_2, z, y′) shares z, so it is connected, contains y, y′, and meets every domain of τ_1 ∘ τ_2. This replaces Step 2 of WG 3.4; Step 3 is (D1). CONFIRMED.
 - (D2) fails: y = y′ and one branch domain X far away gives tree length d(y, X) < 2d(y, X). CONFIRMED.
 - (D2-T) d(τ, y, y′) ≥ max{d(y, X), d(X, y′)}: the graph contains a path from y to a point x ∈ X and from x to y′. CONFIRMED. (The Steiner bound ½[d(y, X) + d(X, y′) + d(y, y′)] also holds; not needed.)

(3) Bridge. In LT(c): p ∈ X̃^5 ∖ □⁺ gives d(p, □) > K_0^{(1)}M_1; d(x, p) ≤ c_X^{(1)}M_1 for x ∈ X by (B3-T). So d(X, □) > (K_0^{(1)} − c_X^{(1)})M_1 = (c_X^{(1)} + 4)M_1 ≥ 4M_1. For y, y′ ∈ □, (D2-T) gives d(τ, y, y′) > 4M_1, the walk value. Then δd(τ) ≥ 4λδM_1 + (1 − λ)δd(y, y′) by (D1), so LT(c) holds verbatim (λ = ½, ¼). The tree sum over excluded τ is ≤ (4/3)C_𝒟b ≤ 2c_+. LT(d) is (N3) on (c); LT(e) is algebra on (H2) and (d). 5.3(R): y, z ∈ □ (z ∈ □⁻ ⊂ □), same bound, and ¼δd ≥ δM_1 gives β = b e^{−δM_1}ρ^{|τ′|} with ε ≤ ¾δ. 5.3(S) uses only (D1). CONFIRMED.
 Note: the "+4" is not needed. With K_0^{(1)} = 2c_X^{(1)} + 2 one gets d(X, □) > (c_X^{(1)} + 2)M_1 ≥ 12M_1 > 4M_1, because c_X^{(1)} ≥ 10. The +4 only enlarges D_+^{(1)}. Harmless; no fix required.

(4) Direction. A walk with points x_i ∈ X_i in order gives a path graph through y, all X_i, and y′; the tree distance is an infimum over a larger class, so d(τ_ω, y, y′) ≤ d(ω, y, y′). A bound e^{−δd(ω)} then implies e^{−δd(τ_ω)}. This is the direction A1-W needs: every walk block and every K_□, Γ_□ bound converts to the tree distance. For one domain the two distances are equal (graph {z, z′}). The reverse direction is never used. CONFIRMED.

(5) C_W^T. Walk case: 5 label types, each ≤ C_𝒟. Tree case: "next item of the current G_1-block" ≤ C″_𝒟 (tags included); first factor of a new S-block, of a new R-block, closing K_□, Γ_□: each counted by the set form, ≤ C_𝒟^{(1)}. So C_W^T = 4C_𝒟^{(1)} + C″_𝒟, CONFIRMED, provided the first factor of a new G_1-block has its tag inside α (a new G_1-block starts with a WG-G factor that carries one of the 97 tags). 6.9a says that "2C_W" of 6.9 needs exactly this convention, so the remark is inconsistent with C_W^T. Fix B: either state "α includes the tag" for C_𝒟^{(1)}, or write C_W^T := 2T_2C_𝒟^{(1)} + 2C_𝒟^{(1)} + C″_𝒟. Both are fixed before M_1.

(6) Second pass finite. c_X^{(1)} depends on D_+; D_+ = K_1 + 2K_0 + 2 with K_0 = 2c_X + 2, c_X = c(d), K_1 = K_1(d, L). None of these uses C_𝒟^{(1)}, C_𝒟^{H1}, or any count. So C_𝒟^{(1)} does not feed back into D_+. The pass ends after one step. CONFIRMED.

Grade: NEEDS FIXES, all constant-level or tagging, none structural.
 - Fix A: tag the set form of (B2-T) [I] (cube geometry).
 - Fix B: make C_W^T and the 6.9 remark use one tag convention.
 - Fix C (inherited from WG_FULL 5.8): C″_𝒟 := T_2C_𝒟^{H1} in (B2-T), Corollary 1.2, and C_W^T.
With A–C, 6.9a is PAPER-GRADE relative to WG_FULL 5.10 and the [I] cube geometry of 2.1.
