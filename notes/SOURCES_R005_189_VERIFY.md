# SOURCES_R005_189_VERIFY — adversarial verification of SOURCES_R005_189.md

Opus, 2026-10-29. Firewall kept. Saved by the coordinator from the verifier's report (the disk was full). Images read (pdftoppm -r 150): CMP 102 pp. 284–293, 296, 308; CMP 98 pp. 38, 40–43; CMP 99 pp. 398, 422, 423. Text layer only: CMP 102 pp. 298–299 for (137), p. 303 for B_3.

## Verdict
Theorem 189 is CONFIRMED relative to the listed inputs. Scope: on-shell (J = J(U_0)), real U_0, g^c-valued A′ with (77). Rate any a < ½δ_0, prefactor C(ε_3 + c_J + c_U).
- The product-rule expansion F_a + F_b + F_c + F_0 is complete; re-derived from V_a′ = −𝔇_2^T w, V_b′ = −MD − 𝔇^T M^T A′, V_c′ = 𝔇^T N D, (V_0∘Φ)′ = (I − H𝔇)^T g(Φ).
- Every term has dimension −3. ∇𝔄 enters only through the DA-part of V_0.
Five corrections; none changes the theorem. The F-extension does NOT settle (189) off-shell under the literal reading.

## Grades
§1 printed text: (189), (185), (186) p. 308, including r = max{|A′|,|∇A′|}·(max{|𝔄|,|∇𝔄|})^{−1}: CONFIRMED. (80) and the analyticity sentence p. 290: CONFIRMED. (77): CONFIRMED. δ_0 convention CMP 99 p. 423, (3.132)–(3.133) p. 422: CONFIRMED.

§2 gaps of A4_D189:
- (g1) CONFIRMED. A4 §4 says "scale weights suppressed"; A1_A4_VERIFY §7 spot-checked only the first bracket of T2 and not the V_0 DA-terms.
- (g2) CONFIRMED. A4 tags its T4 term [I].
- (g3) CONFIRMED. A4 Step 2 uses a sup-norm Cauchy step of radius c_4/2; one fine-bond variable gives no factor (L^jη)^{−d}. The density comes from CMP 98 (149), (157) [pp. 40–42].
- (g4) CONFIRMED. A4 §6.4; R-019 says "(189) at complex A′ stays [I]".
- (g5) CONFIRMED. 𝔇_2 name clash: remark after Prop. 3, p. 289. J size: (86) p. 291 reads |J| ≤ C_1B_3ε_1(L^{j′}η)^{−3}.
- (g6) CORRECTED in citation, CONFIRMED in substance. p. 291 prints (87) without its reason; "Above we have used the equality RD*H = 0" is printed with the identical identity (137) on p. 299. A4 cites (137) and CMP 99 (3.126), not (87).

§3 inputs:
- (S1) CONFIRMED [CMP 98 p. 38, CMP 102 p. 285]. (S3) all of (55), (57), (58), (69)–(73), Prop. 3 conditions: CONFIRMED [pp. 286–289]. (S4), (S5) with (38)–(40), (85)–(96): CONFIRMED [pp. 284, 291, 292]. (S6) CONFIRMED. (S7) scale-shift sentence CMP 99 p. 398: CONFIRMED; the quantitative κ form is [R] to SOURCES_R005_DD Lemma K.
- (S2) at complex arguments: CORRECTED from [R] to [R + reading]. The CMP 98 p. 43 sentence is verbatim, but its context is complex background perturbations U′ = e^{iηA′} (Prop. 7); it does not say (157) holds at complex field A. Balaban uses Prop. 4's (135) at complex A (CMP 102 (52)–(54), (69)), so the reading has precedent. The proof (149)–(155) uses only absolute values: [P-sketch]. Its base step (148), "following easily from general properties", is unstated at complex A.
- (S9) CORRECTED. (103) gives B_1C_1ε_1 < ε_3, not C_1B_3ε_1 ≤ ε_3. B_1 = 5dLB_0 is fixed on p. 296, so "choose B_1 ≥ B_3" is not available. Correct route: p. 296 sets ε_2 = B_1ε_0 + B_1C_1B_3ε_1, and p. 290 assumes ε_2 ≤ ¼ε_3, so C_1B_3ε_1 ≤ ε_3/(4B_1) < ε_3. The [I-minor] disappears (under Balaban's p. 296 choice of ε_2).

§4 Lemma K′, kernel classes, dimension count: CONFIRMED relative to (S7). Dimensions checked: H(−1), ∇H(−2), 𝔇(1), (I+𝔑)^{−1}(0), K(1), M(−3), N(−4), with N = (Lη)^{−1}(QGQ*)^{−1}(Lη)^{−1} − (Lη)^{−4} [(89)]. κ small (lower bound on RM_1) is [I-minor], as stated.

§5:
- 5.2 CONFIRMED.
- Lemma C2 CONFIRMED given complex (S2). σ ↦ K_{Φ+σψ}(c,b) depends only on the field on W(c) (Prop. 4 locality; (69) uses sup over B^j(c_−) ∪ B^j(c_+)). The radius r = ε_3/ℓ(c) keeps |LηΨ| ≤ 3ε_3, with 3ε_3 ≤ c_4 assumed. This is the device of (69) [p. 288] applied to δC/δA.
- Lemma F identity CONFIRMED: 𝔇 = (I+𝔑)^{−1}K, 𝔑 = KH, H independent of A′ [(68), (70)], so δ𝔇 = (I+𝔑)^{−1}(δK)(I − H𝔇). Bound CONFIRMED (localization from ℓ(c); (I+𝔑^T)^{−1}u needs only to be bounded). Lemma F at A′ = 0: CONFIRMED.
- Lemma G CONFIRMED as [P-sketch]. (G1) locality holds (V_0(A,∂p) depends only on A on ∂p). The DA-part after integration by parts is O(|∇A||A|) from (92)–(96) [p. 292]; (96) has first derivatives only. V′_0 bounded by |A| alone from (40) [p. 284]. The (G1) size ε_3(ε_3 + c_U) is weaker than Balaban's ε_3²(ε_3 + ε_1) [p. 291], so valid. Complex A in (40) is [R] to the complex clause of Prop. 4 [p. 292].

§6: Theorem 189 CONFIRMED. Rate a < ½δ_0 CONFIRMED (all other kernels decay at ≥ ½δ_0 by (71), (73), (3.133); Lemma K′ keeps the input rate). (L^jη)^{−3} by dimension count CONFIRMED term by term. "The DA-part of V_0 produces |∇𝔄|_(−2)" CONFIRMED (∇ψ enters only through λ in Lemma G; Lemmas C2, F use |ψ| only). Check (c1) CORRECTED (minor): F_a is bounded by O(C_FB_0c_J), not O(ε_1ε_3); weaker but inside C(ε_3 + c_J). Checks (c2)–(c5) CONFIRMED.

§7.1 complex A′, B: CONFIRMED relative to complex (S2). Correction: (72)–(73) are not printed on the complex set either; only analyticity, (52)–(58), (69) are. (72)–(73) at complex A′ use the same complex Prop. 5 input; no new residue.
§7.2 complex U on-shell: CONFIRMED as [R] (complex (3.132)–(3.133), the J bound, (87) by analytic continuation, SOURCES_R005_DD V3.4).
§7.3 off-shell: the algebra Δ_π(J)H = Q*(QG_πQ*)^{−1}(Lη)^{−1} − Q*a(Lη)^{−1} − DRD*H is CONFIRMED [P]. The term-4 ∇G′∇* structure: CONFIRMED [P-sketch], agreeing with SOURCES_OFFSHELL_H_VERIFY V3.6. Reading (i), the printed right sides of (87)–(89) at (U, J): a valid analytic extension for the Cauchy step, [R] to (3.132)–(3.133) at (U, J), with the same later-use caveat as OFFSHELL_H_VERIFY V1.4 (CMP 116 Sect. 1 localization, CMP 109 (3.31)). The literal reading is (ii): V is defined by (80) with Δ_πH, and (87)–(89) are on-shell consequences.

## F-extension question
Answer: NO, under the literal reading.
- F replaces only the outer H of (179). V, D, 𝔇 and 𝒜_0 keep Balaban's H (OFFSHELL_H_VERIFY V1.5, V3.10). So M = Δ_π(J)H inside V is unchanged, and the ∇G′∇*-on-J item of (189) stays.
- New finding: Theorem E of SOURCES_OFFSHELL_H uses the off-shell sup entry of δ𝒜_0/δB (its 6.1, through A4 §6.3), which rests on (189) at the same off-shell point. Under reading (ii) the F-extension result (and SOURCES_OFFSHELL_F2) inherits the item.
- Possible repair [I, not done]: apply the replacement to the inner h as well (CMP 102 p. 287 permits a change of h). Then RD*F ≠ 0 off-shell, so Δ_π(J)F needs its own Δ/DRD* kernel bound. Alternatively, adopt reading (i) for M and N.

## Safe status
R-005: "(189) PROVED relative to listed inputs (SOURCES_R005_189, verified with corrections in SOURCES_R005_189_VERIFY)". Grade name: FULL PROOF relative to listed inputs, on-shell.
- Scope: on-shell, real U_0, g^c-valued A′ with (77), rate a < ½δ_0, prefactor C(ε_3 + c_J + c_U) ≤ O(ε_3); c_J, c_U ≤ ε_3 by CMP 102 pp. 296, 290; B_1 ≥ B_3 not needed.
- Residue: CMP 98 Prop. 5 at complex field arguments [R + reading of p. 43; P-sketch via (149)–(155), complex base step (148) unstated]; (G1) [P-sketch]; κ small [I-minor].
- Complex U on-shell: [R] to the complex (3.132)–(3.133) and the J bound; prefactor O(ε_3 + M(α_0 + α_1)).
- Off-shell: reading (i) holds [R]; reading (ii), the literal one, is OPEN (∇G′∇*-on-J). The F-extension does not close it and, through its inner sup entries, inherits it.
R-019 complex-A′ residue: "(189) at complex A′" moves from [I] to [P] relative to complex Prop. 5, the same input that already carries (73) at complex A′. R-019's residue is that one input: a reading of CMP 98 p. 43 plus a P-sketch of (149)–(155) with the complex base step (148). Do not call it "printed".

## Report
Theorem 189 (on-shell, real U_0, complex A′, rate a < ½δ_0, size C(ε_3 + c_J + c_U)) is confirmed on page images. Lemma F's identity, Lemma C2's position-dependent radius, the dimension count and the ∇𝔄 entry through the V_0 DA-part hold. Corrections: c_J ≤ ε_3 comes from CMP 102 pp. 296, 290, since B_1 = 5dLB_0 is fixed. RD*H = 0 is printed with (137), not (87). Complex Prop. 5 is a reading of CMP 98 p. 43. Off-shell: the F-extension leaves V's Δ_π(J)H unchanged, so it does not settle (189) under the literal reading, and its own inner sup entries inherit the item.
