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

