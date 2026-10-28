# SOURCES_HIGHER_M1 — independent verification

Date 2026-10-28. Firewall kept: no /tmp/sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP.

## 1. Grep for orders > 2 in consumers

Grep over HTHR, HTHR2, MA2, HHIST2, D2*, D3*, FX*, THEOREM2_PROOF_v4 (+ VERIFYs) for ∂³, third, D³, C³, order 3, fourth, fifth, Taylor.
- HTHR, HTHR2, MA2, HHIST2: no third derivative of E, β_j, B_j, or Δ_j. HHIST2 l. 84 "third" = third term of a product rule. CONFIRMED for these.
- THEOREM2_PROOF_v4 l. 240, 454: C³ of σ^{(1)}, "not needed". Matches the author.
- D2 l. 171, D2C l. 19: CMP 109 Sect. 3–4 expands E^{(j)}(X, exp iξH(B)) in the FIELD to order 4, with a fifth-order remainder (p. 258 [V]). So field orders 3–5 ARE used. They are Balaban's printed field-analyticity bounds (E_0 O((L^jη)^5)), not a project higher-derivative input. The author's sentence "In the field variable B: 2 (MA2)" is false as stated. Needed correction: "field order ≤ 2 in MA2; orders 3–5 inside Balaban's own Sect. 3–4 expansion, covered by his analyticity in the field."
- D2 §7.2 (l. 295–299), D3 l. 91: derivatives in the SOURCE f of order m+1 for cumulants of order m (Gevrey bounds). All orders are used, by holomorphy in f (D2 §7.1, Cauchy at the end). Not a coupling derivative; outside the author's table. Needed correction: state that the "order ≤ 2" claim concerns the coupling, threshold, and MA2-field variables only.
Verdict item 1: substance holds for coupling/threshold derivatives; the scope sentence needs the two exclusions above.

## 2. Own-slot Cauchy bound (A3.1, A5)

Read HTHR2 §3.2 and HHOL §3.
- HTHR2 §3.2 (H-hist2) uses Σ|∂_w F| and Σ|∂_w∂_w F| for F ∈ {B_j(·; ū), β_j}, on |w − ū| ≤ 3r. Orders 1 and 2 only. W-Gronwall: (B_j(c))″ = Σ∂²B_j vv + Σ∂B_j v′. Matches the author's table.
- Radius. HHOL §3.3 disc |g − x| < ρ_0x. Image under u = g^{−2}: |(1+s)^{−2} − 1| = |s||2+s|/|1+s|². On |s| = ρ, with A := |1+s|², this equals ρ(2A + 2 − ρ²)^{1/2}/A, decreasing in A, so the minimum is at s = +ρ: 1 − (1+ρ)^{−2}. Map injective on |s| < 1. So z_0 = 1 − (1+ρ_0)^{−2} = (2ρ_0+ρ_0²)/(1+ρ_0)²; ρ_0 = 0.1 gives 0.1736. z_0 ≥ ρ_0 iff ρ_0 + ρ_0² ≤ 1: checked. CONFIRMED.
- Power. Cauchy at real u_k on radius z_0u_k: |∂_u^n E| ≤ n! S (z_0u_k)^{−n} = n! S z_0^{−n} g_k^{2n}. Each u-derivative costs 1/(z_0u_k) = g_k²/z_0. CONFIRMED.
- Disc at every real point: HHOL §3.5 says the continuations from different x agree (one function on ∪_x P_{ρ_0}(x)). So Cauchy at every real w with |w − ū| ≤ 3r is legal (3r ≪ z_0u_k since u_k ≥ γ^{−2}). CONFIRMED.
- ρ_0 value. HHOL §3.1 prints ρ_0 = min(0.1, (LM)^{−2}(8n)^{−1/2}); MC §9 prints min{0.1, (LM)^{−2}(0.45a/16n)^{1/2}}. The author's A3 body uses 0.1 and z_0 ≥ 0.17; A5 corrects this to ρ_0 ~ (LM)^{−2}. The A3.1/A4 text still says "z_0 ≥ 0.17", "(20/x)^n", "20^n". These numbers are wrong for the generic ρ_0. The author's own A5 states the fix; the A3/A4 numbers should be edited to ρ_0 form. No effect on g-powers.
- Summability. Order 2 gives g⁴ = u^{−2}; Σ u_j^{−2} with u_j ≥ γ^{−2} + βm is ≤ γ²/β. CONFIRMED.

## 3. Large-field bound (A3.2)

Read GGAIN_LF §3 and §1 l. 11.
- Disc D = {|g − x| < ρ_0x}; |R′| ≤ e^{−p_0(x)}e^{−κd}, |T′1| ≤ e^{−2(1+β_0)^{−1}p_0(x)}. Cauchy at |g − x| ≤ ρ_0x/2: n!(2/(ρ_0x))^n sup. p_0(x) ≥ A_0 log x^{−2} gives e^{−θp_0} ≤ x^{2θA_0}. So R′: n!(2/ρ_0)^n x^{2A_0−n}; T′ (θ = ½ used, conservative): x^{A_0−n}. Bounded on (0, γ] iff A_0 ≥ n. CONFIRMED.
- Balaban: CMP 119 p. 244–245 "A_0 … is a sufficiently large constant" [V via GGAIN_LF l. 11, text layer garbled]. GGAIN_LF §3.5 already needs g^{A_0/2−1} → 0, i.e. A_0 > 2. So A_0 ≥ 2 is no new condition. CONFIRMED.
- u-units: ∂_u² = ¼g⁶∂_g² + ¾g⁵∂_g (re-derived from ∂_u = −½g³∂_g). Correct. The author's bound (¼·2·400 + ¾·20)g⁴x^{2A_0−2} drops a factor g² ≤ 1; it is a valid but loose upper bound. Remark: in u-units the g-powers cancel the x^{−n} loss, so A_0 ≥ 2 is only needed for g-unit statements; the condition is sufficient, not necessary.
- Order: ρ_0 (after M, ε_1) before A_0, p_0, γ. So (2/ρ_0)^n is a fixed constant before γ. Consistent with A5.

## 4. Order of choice: ε (walk rate) versus M

Read A1_WALK_VERIFY §8 l. 61, §6 l. 47; A1_KERNEL l. 77, 82; A1_WALK l. 57.
- A1_KERNEL l. 77: ε = min{δ/2, 1/(2K_ext c_+ Σ(δ/2))}, δ = δ_0 − (d/2+1)θ, θ = log L/(RM). So ε depends on M through θ.
- θ decreases in M, δ increases, Σ(δ/2) decreases (A1_WALK l. 57: "Σ is monotone in θ"). So ε is non-decreasing in M. ε is fixed at the worst admissible θ = δ_0/(4(d+2)) (the "θ-min M" of A1_WALK_VERIFY l. 61). That value is a valid lower bound for every larger M.
- Then P8 M > 48κ_1/ε uses this fixed ε. No cycle. CONFIRMED.
- Requirement: M_req must contain the θ-min M, i.e. RM ≥ 4(d+2)log L/δ_0. It does: P10 second part, inside M_RM. K_ext needs Mα_0 ≤ a_0: an upper bound on α_0 after M. CONFIRMED.
- Presentation point: B2.2 lists ε as "fixed before M". Strictly, ε is defined as its value at the minimal admissible M; the author's bullet says this. Acceptable.

## 5. Spot-check 1: P2 (FX_R2 §3–§5)

- FX_R2 §3 prints M ≥ 12L(3κ_final/C_1)^{1/d}, κ_final = 2κ + √d(1+2β)κ + c_d, depends on (d, κ, β). Arguments L, κ, β, d fixed before M (FX_R2 §1, CMP 109 Thm 3 "κ ≥ κ_0, M ≥ M(κ)" [V there]). MATCHES.
- Caveat. FX_R2 §2/§4: C_c (the cost O(1) of (1.79)) may depend on M; C_1 := max(1, C_c). So C_1 is NOT always fixed before M. FX_R2 §4 last paragraph resolves this: use C_1 ≥ 1, and the condition becomes M ≥ 12L(3κ_final)^{1/d}, M-free. The author's M_req entry "12L(3κ_final/C_1)^{1/d}" should read "12L(3κ_final)^{1/d}". B2.2's second bullet states the C_1 ≥ 1 point, so the conclusion holds; only the M_req entry is mis-written. Minor correction.
- Up-set: yes (monotone in M).

## 6. Spot-check 2: P12, P13 (WC_RESIDUE_VERIFY Q4, Q6, Q7, Q8)

- Q4 (4.2)–(4.3): X_0 exists iff q = M/M_1 > 10; dist(X, Z_0) > ⅔M iff q > 3(6 + c_X), strict (Q8 B5 CORRECTED to strict). Author's P12 states both, strict. MATCHES. Author's M_req entry (3(6 + c_X) + 1)M_1 gives strictness with M a multiple of M_1. CONFIRMED.
- Q6 (ii): M_1 ≥ M_W^c ≈ 2M_W, "M_1 is chosen after d, L, c_±". Author's P13 states it as a condition on M_1, not on M. MATCHES.
- Order. Q7's printed line "d, L → … M_1 → M → c_± → Γ_4 → …" places c_± after M. This conflicts with Q6 ("M_1 chosen after c_±") and with A1_WALK_VERIFY l. 61 (c_± → ε → M_1 → M). Reading: Q7's c_± there is the complex-chain constant feeding Γ_4, or a slip in the source file. The author's B2.2 follows A1_WALK_VERIFY (c_± before M_1). No cycle either way, because the real c_± are M-free for M above the θ-min M (A1_WALK l. 57). Flag: the WC_RESIDUE_VERIFY Q7 order line should be fixed; it does not affect (M1).
- c_X: localization-domain diameter constant of the walk construction (A1_WALK_VERIFY §8, K_0 = c_X + 2 margin), fixed with the walk constants before M_1. CONFIRMED.

## 7. Spot-checks 3–4: Ba3/Ba5/P4 (MC §6 table; T2_KAPPA2), Ba6

- MC l. 79 B1: e^{−δ_0M/3}e^{16κ_1} < 1 ⇔ M > 48κ_1/δ_0. Author Ba3 MATCHES. Author's 96κ_1/δ_0 in M_req covers it at the halved rate δ_0/2 (T2_KAPPA2 l. 13: D2 halves δ_0). Correct arithmetic. κ_1 before M (MC l. 103 [I], FX_R2 §1 "M much bigger than κ_1" [V]).
- MC l. 101 B23: δ_0M ≥ κ. T2_KAPPA2 l. 13: becomes (δ_0/2)M ≥ κ. Author Ba5, P4, entry 2κ/δ_0: MATCHES.
- T2_KAPPA2 l. 83–84: (K3) M ≥ 12L(3κ_final^θ/C_1)^{1/d}, implied by P2 since κ_final^θ ≤ κ_final. Author P3: MATCHES (same C_1 remark as §5).
- MC l. 85, 97 B7, B19: α_5 = O(1)e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2; the M-part O(1)(LM)⁴e^{−δ_0M/3} ≤ part of K_abs is decreasing for M ≥ 12/δ_0 (degree 4 / rate δ_0/3). The α-parts are upper bounds on α given M. Author Ba6 and form (iii): CONFIRMED.
- M_MC derivation re-done: y = δ_0M/3, (LM)⁴ = L⁴(3/δ_0)⁴y⁴, max_y y⁴e^{−y/2} = (8/e)⁴ at y = 8. So (LM)⁴e^{−y} ≤ L⁴(24/(eδ_0))⁴e^{−y/2}, and P1 holds once y ≥ 2 log[O(1)L⁴(24/(eδ_0))⁴/(0.3a)], i.e. M ≥ (6/δ_0)log[…]. This bound is valid for every M, not only M ≥ M_dec. CONFIRMED. Arguments L, δ_0, a, O(1): M-free [a, O(1) inherited I from MC l. 160–161].

