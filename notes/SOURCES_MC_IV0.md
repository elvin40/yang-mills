# SOURCES_MC_IV0 — closing (I-V0): the w-dependence of the {…} vertex part (log σ, Jacobian)

Date 2026-10-28. Status: in progress (Claude Opus). Firewall kept: no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md.
Tags: [P] proved here; [V] verified on page images; [I] inferred; [R] reduced to a named printed statement.

## 1. Inputs read
SOURCES_MC §7–§10; SOURCES_MC_VERIFY §2 (I-X, vertex affine) and §3 ((1.36) on p. 9), §5 grades; SOURCES_HHOL §0–§3 (K1: the Jacobian u^{n/2} cancels the normalization; 1.1 Φ_0 contains {…}, log σ, G, Jacobian; 1.2 reference units B̃ = xB, w = ux²); SOURCES_HHOL_VERIFY §1–§2 (disc facts: |w| ≤ 1.235, 1/Re w ≤ 1.235, |w − 1| ≤ 0.235 at ρ = 0.1).
Open residual from MC_VERIFY §5: "(I-V0) residual (log σ/Jacobian part)". Task: settle the w-dependence of that part on the printed display.

## 2. CMP 116 pp. 9–10 on page images (300 dpi) [V]
PDF page = journal page (p. 1 of the PDF is "Commun. Math. Phys. 116, 1–22").
p. 9, last paragraph and Lemma 1, transcribed from the image:
 "The results obtained for the expression in the curly bracket {⋯} can be summarized as follows.
  Lemma 1. The second expression in the fluctuation field action in (I.2.13) is represented as the sum
   E_k(U_k(exp iB′V^{(k)})) − E_k(U_k(V^{(k)})) = Σ_{Y∈D_k} V′_k(Y, U_{k+1}, B).   (1.33)
  For each term … a function V′_k(Y, U, J, B), defined and analytic on
   U^c_{k+1}(Y, (1+β)α_0, (1+β)α_1, α_0) × {B : |B| < ε_1g_k^{−1} on Y},   (1.34)
  … There exist absolute constants C_1, C_2, q, for which
   |V′_k(Y, U, J, B)| ≤ E_0ε_1C_1M^q exp C_2κ_1 exp(−(1−2δ)κd_k(Y)).   (1.36)"
p. 10, first lines: "We would like to prove a similar result for the first term in the fluctuation field action in (I.2.13). It is the function P^{(k)}(g_k, U_{k+1}, B) … connected with the factor 1/g_k² at many terms in this function."
Finding F1 [V]. On the printed page the curly bracket {⋯} is EXACTLY the E_k difference (1.33). It does not contain log σ or a Jacobian. The fluctuation action of (I.2.13) has exactly two parts here: (first) P^{(k)}(g_k, U_{k+1}, B), (second) the {⋯} = E_k difference.
Consequence. The brief's description "{⋯} = E_k differences, log σ, Jacobian" (SOURCES_MC §8.1, from HHOL 1.1 Φ_0) is a bookkeeping reading, not the printed display. So the log σ and Jacobian terms, if present in the step, sit either inside P^{(k)} or outside the fluctuation action (e.g. in the measure/normalization). §3–§4 locate them.
(1.36) is linear in E_0 [V]. E_0 is the radius of the input ball (bound on E_k). So for inputs in the ball cE_0 the bound becomes cE_0ε_1C_1M^q…, i.e. factor c, with no w. This settles (I-V0) for the printed {⋯} [P given that V′_k is built linearly from the E_k activities: (1.33) is a difference of E_k values, so V′_k is a linear functional of the input activities; this is visible in (1.33) itself].

## 3. Where log σ and the Jacobian sit: CMP 109 pp. 267–268 on page images (300 dpi) [V]
CMP 116 p. 11 Lemma 2 (1.41) [V]: "The fluctuation field action is represented as the sum P^{(k)}(g_k, U_{k+1}, B) + {⋯} = Σ_{Y∈D_k} V_k(Y, U_{k+1}, B)", with (1.42) V_k(Y,B) = ½⟨Q(Y,B)B, B⟩ + V″_k(Y,B), (1.43) |Q(Y,B,b,b′)| ≤ C_3ε_1M⁴exp C_2κ_1 exp(−⅛(κ_1−1)d_k(Y) − ½(κ_1−1)M^{−4}|Y|), "and the function V″_k(Y,B) satisfies the bound (1.36)". p. 11 also: the (1/g_k²)V(H_1B′) analysis "can be done in the same way for all terms in P^{(k)}(g_k, U, J, B) … same decompositions and bounds, possibly with other absolute constants".
The definition of P^{(k)} and {⋯} is CMP 109 (= "I") (2.12)–(2.13), p. 268 (PDF p. 20). Transcribed from the image:
 A_{k+1}(U_{k+1}) = −(1/g_k²)A(U_{k+1}) + E_k(U_{k+1}) + [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)]
  + log N″_k^{−1} ∫dμ_{C^{(k)}}(B)χ_k exp[ Tr log(I − h((δ/δB)D̃)(g_kCB))
  + log σ(g_kCB − hD̃(g_kCB)) + (1/g_k²)⟨H_1hD̃_3(g_kCB), J⟩ − (1/g_k²)G_3(g_kB)
  + (1/g_k²)⟨H_1g_kCB, Δ_1H_1hD̃(g_kCB)⟩ − (1/g_k²)⟨H_1hD̃(g_kCB), Δ_1H_1hD̃(g_kCB)⟩
  − (1/g_k²)V(H_1(g_kCB − hD̃(g_kCB)))
  + {E_k(U_k(exp i[g_kCB − hD̃(g_kCB)]V^{(k)})) − E_k(U_k(V^{(k)}))} ].   (2.12)
 Text below: "N″_k is equal to the integral above at U_{k+1} = 1. The expression under the exponential is clearly a sum of two terms, one is connected with the expansion of the action −(1/g_k²)A(U_k(V)) and the measure in (2.1), and we denote it by P^{(k)}(g_k, U_{k+1}, B), another is the expression in the curly bracket {…}." (2.13): E^{(k+1)} = log ∫dμ_{C^{(k)}}(B)χ_k exp[P^{(k)} + {…}].
 p. 267 [V]: (2.10) starts from "log N′_k^{−1}∫dB′σ(B′)δ(Q̃(B′)) χ_k exp[−(1/g_k²)G(B′) − …]", "the factors σ_0 are included into the normalization factor N′_k"; then the change of variables B′ = B − hD̃(B) "linearizing the function Q̃(B′)", then "the scaling transformation B = g_kB′", then B′ = CB with dμ_{C^{(k)}}, C^{(k)} = (C*Δ^{(k)}C)^{−1}.
Identification [V]:
 - log σ(⋅) is the Haar-measure density σ of dB′σ(B′) in (2.10) (the "measure in (2.1)"), evaluated at the new variable. It is not a Faddeev–Popov determinant: the gauge fixing is the δ(Q̃B′) and the G(B′) term.
 - Tr log(I − h(δD̃/δB)(g_kCB)) is the Jacobian of the gauge-fixing change of variables B′ = B − hD̃(B).
 - Both sit in P^{(k)}, NOT in {⋯}. Both carry NO 1/g_k² prefactor. All other P^{(k)} terms carry exactly 1/g_k².
 - The Jacobian of the linear maps (B′ = CB, the scaling B = g_kB′) and the constants σ_0 are inside the normalizations N′_k, N″_k and Z^{(k)}. They do not enter the integrand.
So SOURCES_MC §8.1 and HHOL 1.1 misfile log σ and the Jacobian into V^0 = {⋯}. The correct split is V^0 = {⋯} + log σ + Tr log (the u-free part), V^P = the 1/g_k² part of P^{(k)}. The bookkeeping changes; §4 shows the bound does not.

## 4. Task (1)–(2): each vertex term, its w-dependence, its input dependence [P given §3]
Reference units (HHOL 1.2): B̃ := g_kB is the integration variable of the analytic continuation; at the reference x, B̃ = xB with B real; u := g_k^{−2}, w := ux² = (1+s)^{−2}. In (2.12) every argument is g_kCB = CB̃ (G_3(g_kB) likewise, as printed). So in B̃ units each term of the exponent is a fixed function of CB̃ times either 1 or u:
 (a) Tr log(I − h(δD̃/δB)(CB̃)): prefactor 1. D̃ and h are fixed by the gauge-fixing geometry (Q̃, C̃, the corridor bonds b_0(c)) and the background V^{(k)}, U_{k+1}, J. No coupling. w-FREE. No input activities: it does not involve E_k. [P]
 (b) log σ(CB̃ − hD̃(CB̃)): σ is the Haar density in the B′ chart. Prefactor 1, no coupling. w-FREE. No input activities. [P]
 (c) {E_k(U_k(exp i[CB̃ − hD̃(CB̃)]V^{(k)})) − E_k(U_k(V^{(k)}))}: prefactor 1. Depends on the coupling history g_0, …, g_{k−1} only through the input activity E_k (W4/HHOL 1.1 reading, now visible: no explicit g in (2.12)'s bracket once B̃ is used). w-FREE. Linear in the input activities: (1.33) is a difference of values of E_k = Σ_X E_k(X), and the expansion of p. 8–9 is linear in each E_k(X). [P on the display]
 (d) the five 1/g_k² terms (⟨H_1hD̃_3, J⟩, G_3, the two Δ_1 forms, V(H_1(⋯))): u·f(CB̃) = w·x^{−2}f(xCB). Affine in w with real-domain coefficients (MC_VERIFY §2 "vertex affine in w", now for all five terms, not only V). No input activities. [P]
So the correct split is
 V^0 := (a) + (b) + (c)  (w-free),   V^P := x^{−2}·(d)  (coefficient w).
Task (2) answer: the log σ and Jacobian parts are w-INDEPENDENT. On the disc they contribute no factor to absorb. Their bound is Balaban's at the real coupling x, factor 1. [P]
Two remarks.
 (R1) In Balaban's B units (a), (b) are O(g_k²|B|²) (D̃ starts at second order; log σ starts at second order). In B̃ units the g_k² sits in the argument CB̃ = g_kCB. At the real reference this argument is xCB on Balaban's domain (1.34) with g_k → x. So the bound is literally Balaban's at coupling x. [P]
 (R2) The only measure Jacobians that involve g are the scaling B = g_kB′ and the linear map B′ = CB. They are constants (no field dependence). They cancel in N″_k (the integral at U_{k+1} = 1, (2.14)) and against the Gaussian normalization (HHOL K1: u^{n/2} cancels). In B̃ units with dμ_{C^{(k)}/u} normalized, they never appear. [P, matches HHOL K1]

## 5. Task (3): the complex bound with the corrected split, and the absorption [P given §3–§4]
5.1 Where each part goes in Lemma 2. (d) and (a), (b) are all in P^{(k)}. p. 10 expands each P^{(k)} term to second order in B′ ("terms of zeroth and first order vanish"), so the P^{(k)} part enters ONLY the quadratic form Q of (1.42), bounded by (1.43). The {⋯} part (c) enters V″_k, bounded by (1.36) (Lemma 2 text, p. 11) [V]. p. 11: every P^{(k)} term is localized separately with its own absolute constant, and only then are terms with the same domain summed [V]. So before that sum
 Q = Q^{ab} + Q^{d},  |Q^{ab}| ≤ C_3^{ab}·R(Y),  |Q^{d}| ≤ C_3^{d}·R(Y),  R(Y) := ε_1M⁴e^{C_2κ_1}exp(−⅛(κ_1−1)d_k(Y) − ½(κ_1−1)M^{−4}|Y|),
 and Balaban's C_3 may be taken as C_3^{ab} + C_3^{d} (a choice of his absolute constant). [R to p. 11 "possibly with other absolute constants"]
 (Q^{ab} has no 1/g_k² to cancel; its second-order start is (R1). The second-order Taylor remainder (1.40) applies to it unchanged.)
5.2 Complex bound. On Balaban's real domain (B real, B̃ = xB):
 |Q^{ab} + wQ^{d}| ≤ C_3^{ab}R + |w|C_3^{d}R ≤ max(1, |w|)·C_3R ≤ 1.235·(1.43).
 V″ = V′_k[E] with inputs E in the ball cE_0 (|E(X)| ≤ cE_0e^{−κd(X)}). V′_k is linear in E (§4(c)). Write E = cE′ with E′ in Balaban's ball. Then |V″| = c|V′_k[E′]| ≤ c·(1.36).
 So |V^0 + wV^P| is bounded termwise by λ_V × (Balaban's (1.43), (1.36)) with λ_V := max(c, |w|) ≤ max(c, 1.235). This is the λ_V of SOURCES_MC §7–§8. The misfiling of log σ and Tr log into V^0 = {⋯} does not change λ_V: those terms carry factor 1 ≤ λ_V, and c ≥ 1. [P]
5.3 Absorption. (1.36) and the τ-circle (2.18) carry the same prefactor E_0ε_1C_1M^q e^{C_2κ_1} (MC_VERIFY §3 [V p. 9 here]). The Cauchy factor in (2.26), p. 17 [V this session], prints Π_{Y∈D} 2E_0ε_1C_1α_4^{−1}M^q exp C_2κ_1 exp(−(1−3δ)κd_k(Y)): linear in E_0. With E_0 → λ_VE_0 in (2.18) and ε_1′ = ε_1/λ_V, |τ′|·λ_V·(1.43) and |τ′|·λ_V·(1.36) equal Balaban's |τ|·(1.43), |τ|·(1.36) (MC_VERIFY §4 arithmetic, independent of ε_1). So (2.19)–(2.20) hold verbatim. One shift E_0 → λ_VE_0 absorbs the interaction part (factor |w|), the input part (factor c), and the u-free gauge-fixing part (factor 1) together. [P]
 No separate w-variation bound is needed for (a), (b): they do not depend on w. The "≤ 1.235-type" bound of Task (3) applies only to (d), and it is the |w| ≤ 1.235 already used.
Page note: (2.18)–(2.19) are on p. 16, not p. 17 (MC_VERIFY §1 read them on p. 16 images at 400 dpi). p. 17 holds (2.23)–(2.26). I used the p. 17 (2.26) Cauchy factor and did not re-render p. 16.

## 6. Task (4): conclusion and ledger (authoritative)
Conclusion. (I-V0) is CLOSED [P], given the printed displays below and two mild readings (I-lin), (I-hist).
 - The printed {⋯} (CMP 116 (1.33), CMP 109 (2.12)) is only the E_k difference. It is w-free and linear in the input activities; factor c.
 - log σ and the gauge-fixing Jacobian Tr log(I − hD̃′) are in P^{(k)}, not in {⋯}. They have no 1/g_k² prefactor. In B̃ units they are w-free and input-free; factor 1.
 - The 1/g_k² part of P^{(k)} (five terms, not only V) is affine in w; factor |w| ≤ 1.235.
 - One shift E_0 → λ_VE_0, λ_V = max(c, 1.235), with ε_1′ = ε_1/λ_V absorbs all three. Lemma MC's λ_V is unchanged.
[V] page images this session (300 dpi): CMP 116 pp. 9, 10, 11, 17; CMP 109 pp. 267, 268 (PDF pp. 19, 20). CMP 116 p. 8 read by pdftotext only.
 - CMP 116 Lemma 1 (1.33): {⋯} = E_k(U_k(exp iB′V^{(k)})) − E_k(U_k(V^{(k)})). (1.36) ∝ E_0.
 - CMP 116 Lemma 2 (1.41)–(1.43): action = P^{(k)} + {⋯}; Q bounded by (1.43); V″ by (1.36). p. 11: each P^{(k)} term localized separately, "possibly with other absolute constants".
 - CMP 109 (2.12): Tr log(I − h(δD̃/δB)(g_kCB)) and log σ(g_kCB − hD̃(g_kCB)) without 1/g_k²; five other P^{(k)} terms with 1/g_k²; {⋯} as above. Text: P^{(k)} = "expansion of the action … and the measure in (2.1)"; {⋯} separate. N″_k = integral at U_{k+1} = 1.
 - CMP 109 (2.10): dB′σ(B′)δ(Q̃(B′)), σ_0 into N′_k; change B′ = B − hD̃(B); scaling B = g_kB′.
 - CMP 116 (2.26) p. 17: Cauchy factor 2E_0ε_1C_1α_4^{−1}M^q e^{C_2κ_1}e^{−(1−3δ)κd_k(Y)}.
[P] proved here:
 - Terms (a) Tr log, (b) log σ, (c) {⋯} are u-free in B̃ units; (d) is u·(fixed function) = w·x^{−2}f(xCB). Corrected split V^0 = (a)+(b)+(c), V^P = (d).
 - |V^0 + wV^P| ≤ λ_V × (1.43)/(1.36) termwise; same λ_V as MC; absorbed by E_0 → λ_VE_0, ε_1′ = ε_1/λ_V.
 - Constant Jacobians (scaling, B′ = CB) cancel in N″_k and the Gaussian normalization (agrees with HHOL K1).
[R] reduced to printed statements: separate localization of P^{(k)} terms with own constants (CMP 116 p. 11); C_3 := C_3^{ab} + C_3^{d} as a choice of Balaban's absolute constant.
[I] inferred, not checked line by line:
 - (I-lin) the localization of (1.33) into Y-terms (CMP 116 pp. 7–9, expansion (1.10), Cauchy integrals in σ, s) is linear in E_k. Supported: every operation named on pp. 8–9 is a linear map, and (1.29), (1.36) are ∝ E_0. Not re-derived.
 - (I-hist) E_k depends on g_0, …, g_{k−1} only, and these are held in the input ball (MC_VERIFY §2 caveat). Unchanged; it belongs to the history polydisc (HHOL §4), not to (I-V0).
 - G_3(g_kB) in (2.12) is printed with argument g_kB, not g_kCB. Either way it is u·f(B̃). No effect.
Corrections to earlier files (for the next editor; no file edited here):
 - SOURCES_MC §8.1 and HHOL 1.1 put log σ and the Jacobian into {⋯}. The page puts them in P^{(k)}. The bound and λ_V do not change.
 - HHOL 1.1 "Φ_0 contains … log σ(B′), G(B′), and the Jacobian": G(B′) is NOT in Φ_0. G carries −1/g_k² in (2.10) ((1/g_k²)G_3 in (2.12)); it is in Φ_1 (coefficient u).
 - "log σ (Faddeev–Popov-type determinant)" in the brief: σ is the Haar density. The gauge-fixing Jacobian is the Tr log term. Neither is a Faddeev–Popov determinant. [I: in the δ(Q̃B′) gauge the field-independent factors σ_0 go into N′_k (p. 267); I did not check whether a field-dependent FP factor is hidden elsewhere, but (2.12) shows none in the integrand.]
(M-C) status after this file: open items (I-ε), (I-ord), (M1). (I-V0) closed [P] modulo the mild (I-lin).
Status: complete. Unverified.
