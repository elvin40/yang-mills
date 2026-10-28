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
