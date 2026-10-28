IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_IEPS — closure of (I-ε) and (I-ord)

Scope: Task A = (I-ε), shrinking ε_1, α_0, α_1. Task B = (I-ord), constant order.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Ledger tags: [V] read on page image or printed text; [P] proved here; [I] inherited from a cited file.

## 1. Inputs read [I]
- SOURCES_MC §9–§10: Lemma MC; open items (I-X), (I-V0), (I-ε), (I-ord). (I-ε) as stated there: "shrinking ε_1 (and the α's to budget ¼) keeps §1 (pp. 6–11) and the Part I induction valid: all ε_1 and α conditions there are upper bounds. Not re-read." Plus: in CMP 119/122 the cut is a g-dependent threshold, frozen at x* (TRUST_LEDGER C1); the ε_1 shrink is a shrink of that threshold's prefactor, not checked.
- (I-ord) as stated in SOURCES_MC §10: "the order of choice L, κ → κ_1 → M → α's → ε_1 → γ, read from the wording ('depending on M and κ', 'M much bigger than κ_1', '(LM)^4α … bounded')."
- SOURCES_MC_VERIFY §1–§2, §4–§5: corrected shrinks ε_1′ = ε_1/(4λ_V), γ′ = γ/(8λ_V) when α_4, γ_2 are quartered; α_0, α_1 quartering is NOT free outside §2, since α_0, α_1 are the radii of U^c_{k+1}(X, α_0, α_1) (p. 15) and enter Part I. (I-X) resolved.
- SOURCES_MC_IV0_VERIFY §4: the cut factor exp(−½γ_2ε_1²g_k^{−2}|P|) in (2.26) is quadratic in ε_1; the shrink loses λ_V² (here (4λ_V)²) in the exponent; this belongs to (I-ε). Remaining items: (I-ε), (I-ord), (M1).
- SOURCES_HHOL §3.2: (C1′) τ-circle with E_0 → 1.235cE_0; (C2′)–(C4′) Balaban's (C2)–(C4) with ε_1 ≤ ε_1^{Bal}/(1.235c); (C4″) 8nρ_0²(LM)^4 ≤ 1 (corrected by MC to (M2) with 16n); (2.24′); (C5) O(1)C_3ε_1 ≤ ½E_0. "(2.31) (the P-sum, 'γ_2ε_1²/g_k² large') uses the real x."
- SOURCES_HIGHER_M1 §B2.2 order: d, L → κ, β, δ → κ_1 → walk/kernel constants → M_1 → M → α′ → α's (α_0, α_1, α_4, γ_2, α_6) → ε_1 → ρ_0 → A_0, p_0 → γ → g. §B2.3: every M-dependent upper bound is on a later constant; nothing bounds M from above.
- TRUST_LEDGER Group C: C1 (freeze ε_j, δ_j at x*), C5 (order L → Balaban's constants → γ → g → r_0, τ_0 → K), C9 (χ_k threshold shrunk by a fixed factor; changes the construction), C16 (32ε′ ≤ 1, "same direction as Balaban's own ε_1 conditions"), C24 = (M1) with the constant order above.

## 2. CMP 116 pp. 2–7 (pdftotext -layout; PDF page = printed page) [V text]
Conditions found that involve ε_1, α_0, α_1 (ε_2, ε_3 are "auxiliary constants", p. 5, p. 6):
- p. 5 (1.11): |s(Δ)| ≤ e^{κ_1}; δ_1M ≥ κ_1. No ε_1, α. (κ_1, M only.)
- p. 5 (1.13): 4C_2B_0e^{16κ_1}ε_2 ≤ 1. UPPER on ε_2.
- p. 6: 4C_4B_0²e^{32κ_1}ε_3 ≤ 1 (UPPER on ε_3); 2B_0e^{16κ_1}ε_3 ≤ ε_2 (couples the auxiliaries).
- p. 6 (1.18): needs |B′| < ε_3. (1.20): |B′| ≤ C_1g_k|B| < C_1ε_1 when g_k|B| < ε_1. So the chain needs C_1ε_1 ≤ ε_3. This is a LOWER bound on the auxiliary ε_3, not on ε_1. Choose ε_3 := C_1ε_1, ε_2 := 2B_0e^{16κ_1}ε_3. Then all of (1.13)–(1.18) become one UPPER bound on ε_1. p. 7 prints exactly this: "the same for all admissible norms, if e^{32κ_1}ε_1 is smaller than an absolute constant."
- p. 7: "4B_0C_1e^{16κ_1}ε_1 ≤ ½α_2" — UPPER on ε_1 (lower on α_2; α_2 is not shrunk by Lemma MC). Shrinking ε_1 helps.
- p. 7 (1.22): t_□ circle |t_□|·4B_0C_1e^{16κ_1}g_k|B| = α_2; output factor ≤ 8B_0C_1e^{16κ_1}α_2^{−1}ε_1. Linear in ε_1 as a bound; shrinking ε_1 helps.
- p. 6 end / p. 7: analyticity in U, J on U_{k+1}(□_0, (1+2β)α_0, (1+2β)α_1, α_0), restricted to the subspace U^c_{k+1}(Y, (1+β)α_0, (1+β)α_1, α_0) "defined by the conditions I.(i)–(iii)". α_0, α_1 enter only as the radii of these domains. Every function on pp. 2–7 is analytic on the domain at the given radii; the bounds are "uniform on the domain". A smaller domain keeps analyticity and the bounds. So no condition on pp. 2–7 is a lower bound on α_0, α_1 by itself. The lower-bound question is whether the configurations that the step must evaluate (real fields plus the small-field fluctuation) still lie in the smaller domain. That is the consistency link, checked in §3–§4 below.

## 3. CMP 116 pp. 7–11 on page images (200 dpi) [V]
- p. 7 (1.21): |H_k(s(Y_0), B′)| ≤ 4B_0C_1e^{16κ_1}g_k|B| < 4B_0C_1e^{16κ_1}ε_1, "if e^{32κ_1}ε_1 is smaller than an absolute constant". UPPER on ε_1.
- p. 7 (image corrects §2 text): "We assume that 4B_0C_1e^{16κ_1}ε_1 ≤ ¼α_2", so that t_□ζ̃_□ H_k satisfies (I.3.31) with ½α_2. UPPER on ε_1 given α_2 (α_2 is the (I.3.31) constant; Lemma MC does not shrink it).
- p. 8 (1.26)–(1.28): conditions on κ, κ_1 only. (1.29): |Σ(1.23)| ≤ E_0ε_1O(M^q)exp(O(1)κ_1)exp(−(1/16)κ_1d_k(Y)); "q … can be easily calculated from the conditions on α_1, α_2, α_3". q is an exponent of M; a fixed-factor change of α_1 (factor ¼) does not change a power of M, only an absolute O(1) [I: the conditions on α_1, α_2, α_3 are not printed here; we read them as M-power relations of the type (LM)^4α ≤ 1].
- p. 9 (1.32): "if ⅛(κ_1 − 1) ≥ (1 − δ)κ", and "(1/8)κ_1 ≥ (1 − 2δ)κ" — κ conditions only.
- p. 9 Lemma 1 (1.34): domain U^c_{k+1}(Y, (1+β)α_0, (1+β)α_1, α_0) × {B : |B| < ε_1g_k^{−1} on Y}. (1.36): |V′_k| ≤ E_0ε_1C_1M^q e^{C_2κ_1} e^{−(1−2δ)κd_k(Y)}. Linear in ε_1: a bound that improves under the shrink.
- p. 10 (image): F^{(k)} is analytic on U^c_{k+1}(T_η, α_0′, α_1′), "with α_0′, α_1′ much bigger than α_0, α_1". This is a LOWER bound on α′ relative to α, i.e. an UPPER bound on α_0, α_1 given α′. Shrinking α_0, α_1 helps. (= MC_VERIFY (m1).)
- p. 10 (image): (1.38) is analytic in B′ on {B′ : e^{16κ_1}|B′| ≤ a_1 on Y}; (1.40) holds "if e^{16κ_1}|B′| ≤ ⅓a_1". With B′ from (1.19), |B′| ≤ C_1ε_1 (p. 11). So: e^{16κ_1}C_1ε_1 ≤ ⅓a_1. The symbol prints as Latin a_1 at 200 dpi (the α_0′ two lines above prints as Greek α). If a_1 ≠ α_1, this is an UPPER bound on ε_1 only. If a_1 is a misprint for α_1, it is a coupled condition: UPPER on ε_1/α_1. Then quartering α_1 needs ε_1 → ε_1/4 or less. Lemma MC's corrected ε_1′ = ε_1/(4λ_V) ≤ ε_1/4 (λ_V ≥ 1.235) keeps ε_1′/α_1′ ≤ ε_1/α_1/1.235. So it holds in both readings [P].
- p. 11 Lemma 2: same domain (1.34); (1.43) and (1.36). No new condition on ε_1, α_0, α_1.
Classification so far (pp. 2–11): every condition on ε_1 is an UPPER bound (absolute, or relative to α_2, a_1/α_1). Conditions on α_0, α_1 are: domain radii (shrinking keeps analyticity, bounds uniform), α′ ≫ α (UPPER on α), and possibly ε_1 ≤ (e^{−16κ_1}/(3C_1))α_1 (LOWER on α_1 given ε_1; met by the joint shrink). No two-sided condition on pp. 2–11.

## 4. CMP 109 (= Part I) definition of the domain and the α-relations [V text, pdftotext]
- CMP 109 p. 262 (1.11)–(1.16): U^c_j(X, α_0, α_1, γ_0) = orbits of (U, J) with (i) U = U′Ū, Ū G-valued, |∂Ū − 1| < α_0ξ², locally Ū^u = exp iξA with |A|, |∇A| < O(1)LMB_3α_0 (B "sufficiently large"); (ii) U′ = exp iξA′, |A′|, |∇A′| < α_1; (iii) |∂U − 1| < α_0ξ², |J| < γ_0; (iv) the axial-gauge functions U_n(M′(U)) obey (1.16) with α_0.
- CMP 109 p. 263: (i)–(iii) with α_0′ ≤ α_0, α_1′ ≤ α_1 imply (i)–(iii) with α_0, α_1 ("obviously"). (iv) holds "for α_0′ sufficiently small". "In particular the minimal configurations U_j satisfying the bound |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small, satisfy the above conditions." This is the one place where a REAL configuration must lie in the domain. It is a LOWER bound on α_0 relative to the real curvature threshold: ε_0 ≤ c(B_3)α_0 (with (iv): B_3·2^{…}ε_0 ≤ α_0).
- CMP 109 p. 276 (3.15)–(3.16): "We assume also that ε_1 is so small that H_j(B(t)) satisfies (3.14) with ⅓α_2." UPPER on ε_1 given α_2. Output domain: (i)–(iii) at j = k+1 with (1+β)α_0, (1+β)α_1, α_0.
- CMP 109 p. 276 (3.31): |A|, |∇A|, ‖A‖ < α_2 on □_0; "such bounds are satisfied by (tζ̃ + tζ)H_k(B′) for ε_1 sufficiently small" (UPPER on ε_1). (3.32): |A|, |∇A| < 2(α_2 + B_3O(1)Mα_0) on □_4.
- CMP 109 p. 277: "Assume now that B_3O(1)Mα_0 < ½α_1". This is UPPER on α_0 given α_1, LOWER on α_1 given α_0. It is homogeneous of degree 1 in (α_0, α_1). Equal quartering keeps it exactly.

## 5. CMP 109 pp. 278–280 (Part I, the induction step's domain lemma) [V text]
- p. 278 (3.41): "for α_0 sufficiently small, e.g. O(1)Mα_0 ≤ β". UPPER on α_0.
- p. 278 (3.43): "We assume that (4B_3O(1)M)²α_0 ≤ β" and a prior restriction "≤ β on α_1". UPPER on α_0, α_1.
- p. 279 (3.49)–p. 280: B′ with |B′| < α_3, "α_3 sufficiently small"; τQ′ with |Q′| ≤ O(1)α_2L^jη must fit, so O(1)α_2 ≤ α_3 (UPPER on α_2 given α_3).
- p. 280: "if B_3α_3 < ½α_1" (UPPER on α_3 given α_1); "we have assumed 2B_3α_3 ≤ βL^{−1}α_0" (UPPER on α_3 given α_0).
- p. 280 Lemma 4 (3.53): the composed configuration lies in U^c_j(X, α_0, α_1) "for α_0, α_1, α_2, α_3 sufficiently small and satisfying all the restrictions".
- p. 280: the (3.54) constant "is much bigger than E_0"; the t_□-derivative "yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant." UPPER on ε_1, with a threshold that is INCREASING in α_2 (and in the other α's through the Cauchy constants of (3.54)).
Structure [P from the list]. Every Part I condition among (ε_1, α_0, α_1, α_2, α_3, a_1) is of one of two types:
 (H) homogeneous of degree 1: ε_1 ≲ α_2 (p. 7, p. 276, p. 280), α_2 ≲ α_3, α_3 ≲ α_1, α_3 ≲ L^{−1}βα_0, α_0 ≲ α_1/M (p. 277), C_1e^{16κ_1}ε_1 ≤ ⅓a_1 (CMP 116 p. 10). Coefficients depend on κ_1, M, L, β, B_0, B_3 only.
 (U) absolute upper bounds: α_0 ≤ β/(O(1)M), (4B_3O(1)M)²α_0 ≤ β, α_1 ≲ β, α_0 small for (iv), e^{32κ_1}ε_1 ≤ abs, (LM)^4α ≤ 1 (CMP 116 p. 20), α′ ≫ α (CMP 116 p. 10).
 A common factor λ ∈ (0, 1] on all of (α_0, α_1, α_2, α_3, a_1, ε_1) keeps every (H) item exactly and helps every (U) item. Conditions with an α-dependent threshold on ε_1 (the (3.54) recovery) are UPPER bounds on ε_1 that may need ε_1 smaller than λε_1; ε_1 is chosen after the α's (§9), so it is re-chosen there. No two-sided condition.
 The ONE lower bound tied to a quantity outside this list: CMP 109 p. 263, the REAL small-field configurations must lie in the domain: "minimal configurations U_j with |∂U_j − 1| < ε_0ξ², ε_0 sufficiently small, satisfy the above conditions." This is ε_0 ≤ c(B_3)α_0: shrinking α_0 shrinks the admissible real curvature threshold. Treated in §6–§7.

## 6. CMP 119 (2.4)–(2.5), p. 255 (PDF p. 13, 200 dpi) and p. 247–248 [V]
- (2.4): ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j). (2.5): R_j = least L^r with R_j ≥ (log g_j^{−2})^r. (2.6)–(2.7): g_n ≤ (1+β_0)(n−m)^{1/2}g_m, β_0 arbitrarily small for g small.
- p. 247 [V text]: first step restriction |U(∂p) − 1| ≥ g_0p_0(g_0) for large plaquettes, p_0(g_0) = A_0(log g_0^{−2})^{p_0}; "A_0 is a sufficiently large constant". p. 248 (1.8): δ_0 = g_0A_1p_0(g_0) = (A_1/A_0)ε_0, "A_0 much larger than A_1".
- Consequence [P]: ε_1 does NOT appear in ε_j or δ_j. The large-field split of CMP 119/122 is set by A_0, A_1, p_0 and g_j. ε_1 and α_0 are CMP 109/116 analyticity radii. They meet the thresholds only through the inclusion "small-field configurations lie in the analyticity domain":
 (L1) real curvature: |∂U − 1| < ε_j (CMP 119 small field) must imply the CMP 109 p. 263 condition ε_0 ≤ c(B_3)α_0 (here ε_0 means the curvature bound there, written ε_j in CMP 119 notation). Needed: g_jA_0(log g_j^{−2})^{p_0} ≤ c α_0.
 (L2) fluctuation: the CMP 119/122 small-field bound on g_kB (prefactor of the same type, δ_j-scale) must lie inside |g_kB| < ε_1 of (1.34). Needed: g_jA_0(log g_j^{−2})^{p_0}·O(1) ≤ ε_1 (with A_1 or the p_1 threshold in place of A_0 where that is the governing constant).
 Both are UPPER bounds on g: t ↦ t(log t^{−2})^{p_0} → 0 as t → 0 and is increasing for t^2 < e^{−2p_0}. So (L1), (L2) hold for all g_j ≤ γ once γ is small, given A_0, p_0, α_0, ε_1. They are lower bounds on α_0, ε_1 only relative to the g-dependent thresholds, and γ (chosen last) restores them after any shrink [P]. Quantitatively: the shrink (α_0, ε_1) → (α_0/4, ε_1/(4λ_V)) needs γ with γA_0(log γ^{−2})^{p_0} ≤ (old bound)/(4λ_V); since the left side is ~ linear in γ up to a log, γ′ ≈ γ/(4λ_V)·(1 + o(1)) suffices, within the γ′ = γ/(8λ_V) already required by B11.

## 7. CMP 116 pp. 16–17, 18–20: the ε_1² cut factor [V images 200 dpi; p. 18 text]
- p. 16 (2.22): χ_{k,Y_0}(B)χ^c_{k,P}(B) ≤ exp(−½γ_2ε_1²g_k^{−2}|P| + ½γ_2‖PB‖²), "γ_2 a small, positive constant". p. 16 (2.21): R-forms bounded by ½(O(1)e^{−δ_0M/3} + O(α_0 + α_1))(…): UPPER on α_0 + α_1.
- p. 17 (2.23): α_5 = O(1)e^{−δ_0M/3} + O(α_0 + α_1) + O(1)α_4 + γ_2; "α_5 sufficiently small, e.g. α_5‖C^{(k)}(Z_0, 0)‖ < ½". UPPER on α_0, α_1.
- p. 17 (2.26) (the task says p. 16; it prints on p. 17): |(2.14)| ≤ e^{−(κ_1−1)(LM)^{−4}|Z\Z_0′|}·[Π_{Y∈D} 2E_0ε_1C_1α_4^{−1}M^q e^{C_2κ_1}e^{−(1−3δ)κd_k(Y)}]·exp(−½γ_2ε_1²g_k^{−2}|P|)·exp(O(1)α_5|Z|).
- Two ε_1 entries in (2.26): (a) the bracket is linear in ε_1 (UPPER-type: smaller ε_1 helps); (b) the cut factor exp(−½γ_2ε_1²g_k^{−2}|P|) is the large-field gain on P (the bonds where |g_kB| ≥ ε_1). Smaller ε_1 weakens it. This is the one place where shrinking ε_1 COSTS inside CMP 116.
- p. 18 (2.31): the P-sum is controlled "for g_k², i.e. γ² sufficiently small, depending on M and κ"; p. 18 foot (B11): (1/20)γ_2ε_1²/γ² ≥ 4κ. This is a LOWER bound on ε_1 relative to γ (and on γ_2). It is not a lower bound on ε_1 alone: it reads γ ≤ ε_1(γ_2/(80κ))^{1/2}.
- Compensation [P]. Put ε_1′ = ε_1/(4λ_V), γ_2′ = γ_2/4. B11 at primed constants: (1/20)γ_2′ε_1′²/γ′² = (1/20)γ_2ε_1²/γ² · (1/4)(1/(16λ_V²))(γ/γ′)². With γ′ = γ/(8λ_V) the factor is (1/64λ_V²)(64λ_V²) = 1: B11 holds exactly as at Balaban's constants. (This is MC_VERIFY §4's γ′ = γ/(8λ_V).) Per bond of P the cut exponent ½γ_2′ε_1′²g^{−2} ≥ ½γ_2′ε_1′²γ′^{−2} = ½γ_2ε_1²γ^{−2}: the per-bond gain at the worst coupling g = γ′ is Balaban's per-bond gain at g = γ. So the large-field region P costs nothing extra in CMP 116 once γ is reduced; the reduction is a fixed factor 8λ_V (16 at c = 2).
- B10 ("γ² small depending on M and κ") and the other B-items with ε_1/γ: UPPER on γ; helped by γ′ < γ.
- Conclusion for CMP 116 §2: the ε_1² factor gives a LOWER bound on ε_1/γ, not on ε_1. It is restored by γ′ = γ/(8λ_V). γ is chosen after ε_1 (§9). [P]

## 8. CMP 122 II pp. 377–381 (PDF pp. 23–27; images 200 dpi for pp. 379–381) [V]
- p. 377 (1.68): |V(Y, (U, J))| ≤ a·exp(−(1+2η)κd_{k,Z}(Y)), "a constant a, which can be chosen arbitrarily small for γ small enough". UPPER on γ.
- p. 378: χ_k gives |∂V_k − 1| < 2ε_k on small-field components; then |V′_k − 1| < O(1)B_5M^6ε_k; "M_0 … we choose it as equal to the above bound". No ε_1, α_0, α_1. ε_k is the CMP 119 (2.4) threshold.
- p. 379 (image): the first-order term σ of the quadratic form in A′, J is bounded by O(1)B_3²A_1²p_1²(g_k)|B_0|(α_{0,k} + α_{1,k}) < O(1)B_3²A_1²C_0M^dR_k^{d+2}p_1²(g_k)q_0(g_k)g_k, "and this bound is small". In the large-field papers the analyticity radii are k-dependent, α_{i,k}, bounded by C_0q_0(g_k)g_k-type quantities. σ is linear in α_{0,k} + α_{1,k}: shrinking α_0, α_1 (hence α_{i,k} where the fixed α_i is the cap) only lowers σ. "Small" is an UPPER bound on g_k (γ).
- p. 380 (1.73)–(1.75): |T′_k(X,(U,J))F| ≤ (T′_k(X,(U,0))1)·sup e^{|σ|}|F|; |T′_k(X,(U,J))1| ≥ (T′_k(X,(U,0))1)e^{−2sup|σ|}; ratio ≤ e^{3sup|σ|}sup|F|. The cost per large-field component is e^{3sup|σ|}, with σ as above. Shrinking α_0, α_1 lowers it; ε_1 does not appear.
- p. 380 large-field factors (image): χ^c_j(P_j): exp(−γ_0(2g_j²)^{−1}(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|); χ′^c_j(Q_j): exp(−½γ_0g_j^{−2}(2δ_j)²(LM_2R_j)^{−2}|Q_j|); χ^{(j−1)c}(R_j): exp(−γ_0g_j^{−2}δ_j²(LM_2R_j)^{−d}|R_j|).
- p. 381 (image): per component Z_j^{(i)} of the MR_j-cube cover: exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j(Z_j^{(i)}) + 1)) ≤ exp(−½γ_0A_1²p_0²(g_j)(d′_j + 1) − 2p_0(g_j)). (1.76): Z_j ⊂ Z′_{j−1}^{~10} ∪ ∪_i(Z_j^{(i)})^{~2}. Preparatory factor exp(−⅛B_3^{−2}(1+β_0)^{−2}A_0²p_0²(g_j)) ≤ exp(−A_1²p_0²(g_j)).
- Reading [P]: ε_j, δ_j enter the split only through A_0, A_1, p_0, g_j. The CMP 116 constants ε_1, α_0, α_1 enter CMP 122 only via (L1), (L2) of §6 (small field ⊂ analyticity domain) and via σ (helped by the shrink).

## 9. Task A: large-field cost of the shrink, and the A_0 absorption [P]
Setting. Shrink S: α_i → α_i/4 (i = 0, 1, 4; γ_2; with α_2, α_3, a_1 scaled by the same ¼ to keep §5 (H)), ε_1 → ε_1′ = ε_1/(4λ_V) or smaller, θ := ε_1′/ε_1 ≤ 1/(4λ_V).
9.1 CMP 116 cut (P = bonds with |g_kB| ≥ ε_1′). The set P grows. Its cost is the per-bond factor in (2.26). The P-sum is over all subsets, so the count of P does not depend on ε_1; only the per-bond gain does. Per bond: ½γ_2′ε_1′²g^{−2} ≥ ½γ_2ε_1²γ^{−2} ≥ 40κ for g ≤ γ′ = γ/(8λ_V) (§7, from B11). So Σ_P Π_{b∈P}e^{−½γ_2′ε_1′²g^{−2}} ≤ Π_b(1 + e^{−40κ}), Balaban's bound. Cost: γ′ = γ/(8λ_V).
9.2 CMP 119/122 split. If the thresholds ε_j, δ_j are kept (A_0, A_1 unchanged), the split is unchanged; only (L1), (L2) change, and γ restores them (§6). If a construction ties the χ_k threshold to ε_1 by a fixed factor θ (TRUST_LEDGER C9, or the HHOL_LF freeze with prefactor θA_0), the thresholds become g_j(θA_0)(log g_j^{−2})^{p_0}, (θA_1)·(…). Then the large-field region grows, and:
 (a) Per-cube Gaussian factor (p. 381): exponent ½γ_0A_1²p_0²(g_j)(d′_j + 1) becomes θ²× that. Take A_0′ := A_0/θ, A_1′ := A_1/θ. Then θA_0′ = A_0, θA_1′ = A_1: every factor on pp. 380–381 equals Balaban's exactly. Balaban's conditions on A_0, A_1 are lower bounds ("A_0 sufficiently large", "A_0 much larger than A_1" (ratio kept), C2: p_0(g) ≥ 17/(γ_0A_1²) (helped)). So A_0′, A_1′ are admissible.
 (b) Any fixed factor F ≥ 1 per large-field component (entropy of the larger region, the e^{3 sup|σ|} of (1.75) at the new radii, or a θ-loss left after (a)) is absorbed by the term −2p_0(g_j) of p. 381. Claim: for g_j ≤ e^{−1/2} (so (log g_j^{−2})^{p_0} ≥ 1) and A_0″ := A_0 + ½log F,
   F·exp(−2A_0″(log g_j^{−2})^{p_0}) ≤ exp(−2A_0(log g_j^{−2})^{p_0}).
  Proof: the exponent difference is 2(A_0″ − A_0)(log g_j^{−2})^{p_0} − log F = log F·((log g_j^{−2})^{p_0} − 1) ≥ 0. ∎ The −2p_0 term itself is extracted from ½γ_0A_1²p_0² once p_0(g) ≥ 4/(γ_0A_1²), which a larger A_0 only helps.
 (c) A fixed factor F per MR_j-cube (not per component) is absorbed by the p_0² term: F^{#cubes} ≤ exp(C_d log F·(d′_j + 1)) [I: #cubes ≤ C_d(d′_j + 1), linear-size bound], and C_d log F ≤ ¼γ_0A_1²p_0²(g_j) once A_1² ≥ 4C_d log F/γ_0 (since p_0(g) ≥ A_0 ≥ 1). Raising A_1 needs A_0 raised to keep A_0 ≫ A_1; both are lower bounds.
 (d) Raising A_0 raises ε_j. The only upper bounds on A_0 are g-dependent: (L1), (L2), and the "small" σ of p. 379. All read g_jA_0(log g_j^{−2})^{p_0}·(fixed) ≤ (fixed), so γ (chosen after A_0) restores them [P, monotone for g² < e^{−2p_0}].
9.3 Verdict on (I-ε). Every condition found on ε_1, α_0, α_1 is an UPPER bound, or a homogeneous ratio condition kept by the common shrink, or a LOWER bound relative to a LATER constant (γ: B11, (L1), (L2), σ; A_0: the large-field per-cube factors if a threshold is tied to ε_1). No condition is a lower bound on ε_1, α_0, α_1 relative to an EARLIER constant. No two-sided condition. Lower bounds named and restored:
 - B11 (CMP 116 p. 18): restored by γ′ = γ/(8λ_V) exactly.
 - CMP 109 p. 263 (real configurations in the domain) = (L1) in CMP 119 notation: restored by γ small.
 - (1.34) domain vs the CMP 119/122 small-field bound = (L2): restored by γ small.
 - CMP 116 p. 10 e^{16κ_1}C_1ε_1 ≤ ⅓a_1 if a_1 = α_1: kept by θ ≤ ¼.
 - CMP 109 p. 277, p. 280 ratio conditions (α_0 vs α_1 vs α_3 vs α_2 vs ε_1): kept by the common factor.
 - α-dependent thresholds on ε_1 (CMP 109 p. 280 E_0 recovery): ε_1 re-chosen after the α's; θ may need to be smaller than 1/(4λ_V) by a fixed factor. Not a lower bound.
 (I-ε): CLOSED [P], with compensations γ′ ≤ γ/(8λ_V) (and smaller as (L1), (L2) need), A_0 (and A_1) raised by fixed amounts if a construction ties the thresholds to ε_1. Residual tags: [I] that the p. 8 exponent q is unchanged by a fixed-factor α shrink (conditions on α_1, α_2, α_3 not printed there); [I] the Latin a_1 / Greek α_1 reading on p. 10 (both readings pass); [I] the linear-size count in 9.2(c).

## 10. Task B: (I-ord) settled against SOURCES_HIGHER_M1 §B2.2 [P]
Statement of (I-ord) (SOURCES_MC §10, MC_IV0_VERIFY §5 item (4)): Balaban's constants can be chosen in the order L, κ → κ_1 → M → α's → ε_1 → γ, so that each condition of CMP 116 §1–§2 bounds a constant only in terms of constants chosen earlier, and the "shrink then re-choose" steps of Lemma MC are legitimate. It was a reading of the wording, not a check.
Check. For each constant, the conditions that bound it, and the constants they involve (sources: §2–§8 here; MC §6; HIGHER_M1 §B1–B2):
 - δ: δ = (1/10)(1 − 2L^{−1}) (CMP 116 p. 21 [V text]). Needs L only.
 - κ: "κ sufficiently large" (CMP 116 (1.26), (2.29), (2.40)); δLκ/48 ≥ K_abs (B19). Needs L, δ, absolute constants.
 - κ_1: ⅛(κ_1 − 1) ≥ (1 − 3δ)κ (p. 16), ⅛κ_1 ≥ (1 − 2δ)κ (p. 9), ½(κ_1 − 1) ≥ 2Lκ (p. 20), "κ_1 sufficiently large" (1.27). Needs L, δ, κ.
 - M: δ_1M ≥ κ_1 (p. 5), M ≫ κ_1 (Ba3), δ_0M ≥ κ (p. 21), and HIGHER_M1 B3 list. Needs L, κ, κ_1, walk constants (δ_0, δ_1, B_0, …). HIGHER_M1 B2.3: no later constant bounds M.
 - β (domain enlargement, CMP 109) and α′ (CMP 116 p. 10): fixed before the α's; α′ ≫ α.
 - α_0, α_1, α_4, γ_2, α_6, and α_2, α_3, a_1: (U) items of §5 (O(1)Mα_0 ≤ β, (4B_3O(1)M)²α_0 ≤ β, (LM)^4α ≤ 1, α_5 small) and the (H) ratio items among themselves. Need M, L, β, B_3, α′. The (H) items form a chain α_2 ≲ α_3 ≲ (α_0, α_1), α_0 ≲ α_1/M; choose α_1, then α_0, then α_3, then α_2. No cycle: each ratio item has one side earlier in this chain.
 - E_0: ½E_0 := the absolute constant of the log Z^{(k)}(U) − log Z^{(k)}(1) expansion (CMP 116 p. 21 [V text]); side condition C_3 ≤ E_0C_1 (p. 16, absolute). E_0 is ε_1-free; "we can take E_0 such that the assumption [O(1)C_3ε_1 ≤ ½E_0] is satisfied" is in fact an upper bound on ε_1. No cycle.
 - ε_1: upper bounds in terms of κ_1, B_0, C_1, C_2, C_4, α_2, α_4, a_1, M^q, E_0, L (§2, §3, §5, MC B8, B12, B15, B16, B22, (2.40)). All earlier.
 - ρ_0: (M2) ρ_0 ≤ (LM)^{−2}(0.45a/16n)^{1/2}, ρ_0 ≤ 0.1. Needs L, M, N only. It may sit anywhere after M; HIGHER_M1 puts it after ε_1, which is consistent.
 - A_0, A_1, p_0 (and p_1, R_j rules): lower bounds only (CMP 119 p. 247–248; C2; C15; HIGHER_M1 B2.3 "(100MR)^d in p_0-conditions"). Need M, B_3, γ_0, R-rules, and (if a threshold is tied to ε_1, §9.2) ε_1. Never bound ε_1, α, M.
 - γ: B10 (M, κ), B11 (γ_2, ε_1, κ), (L1), (L2) (A_0, p_0, α_0, ε_1), CMP 122 (1.68) "a small", p. 379 σ small (A_1, p_1, M, R, C_0), N3 (d) (ρ). All earlier. γ is bounded only from above.
 Graph: every edge goes from an earlier to a later constant in d, L → δ → κ → κ_1 → walk constants → WC and level constants (incl. ε″) → M_1 → M_2 → M → β, α′ → α_1 → α_0 → α_3 → α_2 (and α_4, γ_2, α_6, a_1) → E_0 (absolute; may also be fixed first) → ε_1 → ρ_0 → exponents (p_0 → p_1 → q_0 → q_1) → A_1 → A_0 → C_0 → C_1 → γ → g (SOURCES_ORDER_CANON B, R1–R3). No condition bounds an earlier constant by a later one. No cycle [P, given the lists in §2–§8, MC §6, HIGHER_M1 B1].
 Shrink compatibility: Lemma MC shrinks α's (after M), then ε_1, then γ, then (if needed) raises A_0 — each change is at or after the position of the changed constant and alters only later constants' admissible sets. Raising M (C24) re-chooses α, ε_1, ρ_0, A_0, p_0, γ only (HIGHER_M1 B2.3). Raising A_0 re-chooses γ only.
 (I-ord): CLOSED [P]. Refinement of HIGHER_M1 §B2.2: (i) the α-chain internal order α_1 → α_0 → α_3 → α_2 (CMP 109 pp. 277–280); (ii) E_0 is absolute and ε_1-free (p. 21); (iii) A_1 before A_0 (A_0 ≫ A_1); (iv) ρ_0 needs only L, M, N.

## 11. Ledger (authoritative)
[V] page images this session (200 dpi): CMP 116 pp. 7, 8, 9, 10, 16, 17, 20; CMP 119 p. 255 (PDF p. 13); CMP 122 II pp. 379, 380, 381 (PDF pp. 25–27).
[V text] pdftotext (not images): CMP 116 pp. 2–6, 11, 18–19, 21; CMP 109 pp. 262–263, 276–280; CMP 119 pp. 247–248; CMP 122 II pp. 377–378.
[V] corrections to inputs: (2.26) prints on CMP 116 p. 17, not p. 16 ((2.22) is on p. 16). The p. 10 analyticity radius for B′ prints as Latin a_1 ("e^{16κ_1}|B′| ≤ a_1", "≤ ⅓a_1"), not α_1; both readings pass (§3). p. 7 prints "≤ ¼α_2" (pdftotext garbled it).
[P] proved here:
 - Classification (§2–§8): every condition on ε_1, α_0, α_1 in CMP 116 §1, CMP 109 Part I §1 and §3, CMP 119 (2.4)–(2.5), CMP 122 II pp. 377–381 is an upper bound, a degree-1 homogeneous ratio condition, or a lower bound relative to a later constant (γ or A_0). No two-sided condition. No lower bound relative to an earlier constant.
 - ε_j, δ_j contain no ε_1 (CMP 119 (2.4), p. 248); they meet ε_1, α_0 only through (L1), (L2), both restored by γ small.
 - B11 restored exactly by γ′ = γ/(8λ_V) with ε_1′ = ε_1/(4λ_V), γ_2′ = γ_2/4; P-sum bound identical to Balaban's (§7, §9.1).
 - A_0 absorption: F·exp(−2(A_0 + ½log F)(log g^{−2})^{p_0}) ≤ exp(−2A_0(log g^{−2})^{p_0}) for g ≤ e^{−1/2}; θ-scaled thresholds restored exactly by (A_0, A_1) → (A_0, A_1)/θ (§9.2).
 - (I-ε) CLOSED with compensations (γ smaller; A_0, A_1 larger if a threshold is tied to ε_1; ε_1 possibly smaller than ε_1/(4λ_V) by a fixed factor from the α-dependent E_0 recovery).
 - (I-ord) CLOSED: dependency graph acyclic; refined order in §10.
[I] inferred, not checked line by line:
 - The CMP 116 p. 8 exponent q is unchanged by a fixed-factor α shrink (the "conditions on α_1, α_2, α_3" it refers to are not printed there).
 - #MR_j-cubes in a component ≤ C_d(d′_j + 1) (§9.2(c)); only needed if a per-cube (not per-component) factor arises.
 - Completeness: the lists cover CMP 116 §1–§2, CMP 109 §1 (definition) and §3 (pp. 276–280); CMP 109 §4–§5 and CMP 122 I were not re-read for further ε_1/α conditions. The pattern found ("sufficiently small" = upper bound) is uniform across the pages read.
 - α_{i,k} in CMP 122 II p. 379 are capped by the fixed α_i (reading of the notation; the definition sits in CMP 122 I, not read).
Effect on (M-C) (SOURCES_MC §10, MC_VERIFY §5, MC_IV0_VERIFY §5): open items were (I-ε), (I-ord), (M1), (I-V0) residual. (I-ε) and (I-ord) are now CLOSED [P] modulo the [I] items above. (M1) is the HIGHER_M1 B3 convention (TRUST_LEDGER C24). Unverified by an independent agent.

STATUS: COMPLETE

Order-canon fix (SOURCES_ORDER_CANON Task C, 2026-10-28): C-O3 §10 graph order aligned to canon B (WC and level constants before M_1, M_2 after M_1, exponents before A_1 → A_0 → C_0 → C_1). Notation: C_0, C_1 in the §10 order are the α_{i,j} prefactors; C_1, C_2, C_3 in §2–§9 are the CMP 116 constants, C_i^{116} in the canon (not renamed here, to avoid a mass rename).
