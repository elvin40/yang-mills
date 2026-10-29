# SOURCES_L1_A_VERIFY — adversarial verifier of SOURCES_L1_A.md (S-70 / R-022, S-73 / R-023)

Date 2026-10-28. Author: Claude (Opus 5.5), verification agent. Ids follow IDS.md. S-xx are the file-local labels of OPEN_ITEMS_SWEEP.md.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
No existing file was edited. PLAN.md was not changed. sync.sh was not run.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED. Tags as in the target: [V] read on a 150 dpi page image in this session; [P] proved; [R] printed statement used without proof; [I] reading; [N] numerical.

## Verdict

SOURCES_L1_A is CONFIRMED in its core, with five corrections. None of the corrections changes a proposed grade.
- S-70 core CONFIRMED. CMP 99 builds Q_j from the dressed CMP 98 (89)–(92) average [V]. Lemma D (linear part at U = 1 = Q_str, for every contour family and every M with (0.8)) is right [P re-derived; V; N rerun]. L-211 in dressed form and the status of Q_kQ_k* ≥ c as CMP 99's own input are CONFIRMED.
- New support for (I-Q). CMP 109 p. 270, (3.3) [V], writes M^j(exp iηH_k(B′)U_{k+1}) as exp iQ_j(ηH_k(B′))Ū^j_{k+1} "using … the equality (97) [12]". CMP 98 (97) [V p. 32] is the identity that turns the configuration average into the dressed composition (89)–(91), up to a gauge v_j. So CMP 109's Q_j is the dressed composition. The residual is that (97) holds for the new averages, which is inside the printed p. 254 sentence (row R-003 R4). (I-Q) moves from a bare reading to a printed use [V], with that residual [R].
- CORRECTED (numerics). The Q_kQ_k* test with three coarse blocks per side misses the momentum π. With an even number of blocks the minimum is 1/3 + 2/(3·9^k) → 1/3, not 1/2 + 1/(2·9^k) → 1/2. The bound stays k-uniform. The ledger text "≥ 1/2" must read "≥ 1/3".
- S-73 core CONFIRMED. Lemma G (the glued field is in 𝔘_k on T_η) and Prop. 6 at k = 0 on every index-0 cube are right relative to the named [R] inputs and readings. The width point is stronger than stated: under M ≥ R_1M_1 and a maximal Ω_1, a cube that meets ∂□_0 is generically wider than Λ_0.
- CORRECTED (Route 2 finding). The inclusion □̃ ⊂ Ω_{j−1} fails with R = R_1 only if Prop. 6 is applied with the sequence {□_n}. Route 2 (SOURCES_P253_P275 5.2(c), from SOURCES_A18_REGULAR 5.2 "alternative route") applies Prop. 6 with the constant sequence Ω_j = T. For that sequence the inclusion is trivial. Route 2 is limited by the collar and by locality, as already recorded, not by R = R_1. No consumer needs Route 2.

## 0. What was checked

Page images (pdftoppm -r 150, fresh folder /tmp/l1av, deleted after use):
- CMP 99 "Propagators…" pp. 392, 394, 396, 407, 417, 418, 421, 422.
- CMP 98 pp. 19, 30, 31, 32.
- CMP 109 pp. 253, 262, 266, 267, 270, 275.
- CMP 99 "Regular gauge configurations…" pp. 77, 98, 99.
- CMP 102 pp. 277, 278, 279.
Reference lists checked in the text files: CMP 109 [12] = CMP 98, [13] = CMP 99 Propagators, [14] = CMP 99-Regular, [15] = CMP 102; CMP 99 [4] = CMP 96, [5] = CMP 98.
Scripts rerun: numerics/l1a_dressing.py, numerics/l1a_qqstar.py (seconds each), plus a scratch variant of l1a_qqstar.py with other lattice sizes (deleted after use).
Consumer greps: L-211, "LB_Q̃", "Lemma LB", "Q̃_k", "Q̃^k", "Route 2", "Prop. 6", "□_0^{−2}" over *.md and *.tex, archive and firewall files excluded.

## 1. S-70 (row R-022)

V1.1 Page quotes of §1.1. CONFIRMED [V].
- CMP 99 p. 392 (3.13): "the averaging operation used here is the operation Ū^j defined by the formulas (89)–(92) of that paper. We replace U_0 by U". Exact.
- CMP 98 p. 31 (89): (R̄(V_0)V_1)_c = (R̄_{0,c−}V_1)^{−1}(V_1V_0)‾_c(V̄_0)_c^{−1}R_{0,c}R̄_{0,c+}V_1. (90)–(91) compose with V_0 = Ū_0^j. (88) gives the k-th order average as the gauge-transformed configuration average. Exact.
- CMP 98 p. 30 (78) and (81) (R̄_0u^k)(y) = 1; (82) defines R̄_{0,x}U_1 through (R̄_0u)(x) = u(x)R̄_{0,x}U_1. Exact.
- CMP 99 p. 418 (3.113)–(3.115). Exact. The computation gives Ū′_c = (Ru)(c−)R_c(Ru)^{−1}(c+), and Q′ is the linear part of the gauge average (78), that is, the block average λ̄ at U = 1.
- CMP 98 p. 19 (14), (15); CMP 109 p. 253 (0.4), (0.5)–(0.11); p. 254 (0.12) and "especially all results of the paper [12] are valid for it". Exact.
- CMP 109 p. 266 (2.4)–(2.7), p. 267 (2.10), "Q̃Q_kδA′ = 0", (2.11). Exact.
- CMP 99 p. 421 (3.127)–(3.129) and "(QGQ*)^{−1}, but the analysis is very similar"; p. 422 "can be analyzed in the same way", (3.132)–(3.133). Exact.
- CMP 99 p. 407 "There we have proved these theorems for operators with the external gauge field configuration U = 1" ([4] = CMP 96) and Corollary 3.5. Exact.

V1.2 Lemma D (a)–(d). CONFIRMED [P re-derived].
- (a), (b), (c) re-derived line by line. They are the telescoping identity, the bijection x ↦ x′ between B(c−) and B(c+), and the expansion of Q_F.
- (d) The signs matter. With dressing −r(c−) + Q_F + r(c+) the result is Q_str. With the opposite sign it would be Q_str − 2D^{(1)}r_F, and on gradients it would give 2D(λ|_centres) − Dλ̄. The page fixes the sign: CMP 99 (3.114) gives QDλ = D Q′λ = Dλ̄. Only the "+" sign gives this. So the page check in §1.3 is a real test of the sign, not only of the form.
- The linear part of (0.4) is Q_F for F = G. The loop Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c), multiplied by U(c), has linear part A(Γ) + A([x, x′]) − A(Γ′). The −A(c) cancels against the +A(c) of the outer factor after the L^{−d} sum. CONFIRMED [V p. 253].
- Remark (nonabelian, every M): CONFIRMED. At U = 1 every transport is 1 and (0.8) makes the linear part of M the mean.

V1.3 Numerics of numerics/l1a_dressing.py. CONFIRMED [N], with one scope note.
Rerun output: |Q_G − (Q_str − Dr)| = 4.4e−16 (both families); |dressed − Q_str| = 4.4e−16 and 3.3e−16; Q_G(Dλ) = D(λ|_centres) to 4.4e−16; dressed(Dλ) = D(block average) to 3.3e−16 and 6.1e−16. These match the target within rounding.
Scope note: the script computes "dressed" as QG + Dr. So |dressed − Q_str| is the same number as the first check, not an independent test. The gradient test (dressed(Dλ) = Dλ̄) is independent. The path code handles negative steps correctly, and the symmetric family is the set of all monotone shortest paths. That is the d = 2 case of G(y, x).

V1.4 Reading (I-Q). CONFIRMED and strengthened [V].
- New page evidence: CMP 109 p. 270 (3.3): E^{(j)}(U_j(M^j(exp iηH_k(B′)U_{k+1}))) − … = E^{(j)}(U_j(exp iQ_j(ηH_k(B′))Ū^j_{k+1})) − …, "where we have used the results of Sect. G [15], and the equality (97) [12]. The function H_k and the operation Q_j are dependent on the configuration U_{k+1}."
- CMP 98 p. 32 (97): (Ū_1^j)_b = v_j(b−)(Ū̃_1^j)_bR̄^j_{0,b}v_j^{−1}(b+), with v_j a product of gauge averages. This is the step that proves (92), the composition identity for (89)–(91).
- So CMP 109's Q_j is the linear part of the CMP 98 (89)–(92) composition, and the gauge v_j drops out by gauge invariance of E^{(j)}∘U_j. That is (I-Q).
- Residual: (97) for CMP 109's averages (0.4)/(0.12), which is covered only by the p. 254 sentence "all results of the paper [12] are valid for it" (row R-003 R4) [R]. The text gives no separate formula for the new Q_j. So (I-Q) is a printed use, not a printed definition.
- Grade of (I-Q): [I] → [V, rel. R-003 R4 [R]]. It is now as strong as the other p. 254 transfers.

V1.5 Corollary D and L-211 in dressed form (§1.4–§1.5). CONFIRMED [P rel. R].
- (i)–(iii): at U = 1 every background Ū_0^i is 1, so each level is Lemma D. The operators listed are built from Δ, Q_j(1), Q′_j(1) and the domains (pp. 394, 417, 421 [V]).
- (iv): C^{(2)} is the second-order term of Q_j(ηA) (p. 421 [V]). It depends on the average. It enters only through −2⟨HC^{(2)}(A), J⟩ and is bounded through CMP 98 (149) (p. 422 [V], last line). This is a constant change.
- §1.5(a): Cor. 3.5 transfers at U = 1 because the operators are the same operators. For U′ ≠ 1, the only average-dependent piece in (3.82)–(3.86) is P_2(A) with (3.83) [V p. 407]. CONFIRMED.
- §1.5(b): rests on (u1)–(u5) of SOURCES_P253_P275 §2.1, verified elsewhere; not re-derived here.
- The obstruction to the undressed reading (factor L^{k/2}): CONFIRMED [P]. A level-k block-constant gradient has fine norm² η^{d−2}L^{k(d−1)}|Δν|² = L^k|Δν|² against unit-lattice norm² |Δν|².

V1.6 Q_kQ_k* ≥ c as CMP 99's own input (§1.6). CONFIRMED in substance, CORRECTED in two details.
- (a) The Q in (3.129) is the multiscale Q of (3.110): L^jηQ_j(U)A = B on Λ_j, j = 0, …, k [V p. 417]. CONFIRMED.
- (b) CMP 99 does not print "QQ* ≥ c". It prints (3.132) for (QGQ*)^{−1} and (QG_1Q*)^{−1} with "very similar" (p. 421) and "in the same way" (p. 422) [V]. A lower bound on QQ* is implicit in (3.132). So the [R] input is (3.132) itself; "Q_kQ_k* ≥ c" is the step that Balaban omits. The target says this ("uses it without proof"). CONFIRMED with this wording.
- (c) Regular U: conditional on an operator-norm form of the A18 Lemma Q remainder, as the target states. CONFIRMED as a conditional statement.
- (d) Numerics: CORRECTED. Rerun reproduces 0.5556, 0.5062, 0.5007 for n = 3 blocks per side. With n = 2 or n = 4 (d = 2, L = 3) the minimum is 0.4074, 0.3416, 0.3342, 0.3334 for k = 1, 2, 3, 4. This fits 1/3 + 2/(3·9^k). The n = 3 lattice has no momentum π, and the minimum sits at π. With L = 5, n = 3: 0.52, 0.5008. So the k-uniform free bound in this test is ≥ 1/3, not ≥ 1/2.
- Scope of the numerics: one level Q_str^k on a periodic torus, field normalization, scaled norms. It does not test the multiscale Q of (3.110) with several Λ_j and Dirichlet conditions on ∂Ω_0. It is evidence only.

V1.7 The undressed Q̃ acts only at the top step (§1.7). CONFIRMED [V pp. 266–267].

V1.8 "No consumer uses the undressed reading of L-211". CONFIRMED, with one scope note.
- Consumers of L-211 / "Lemma LB_Q̃": WC_FULL.md 0.9, 1.9 and change-log 15 ("the free lower bound behind G_1, G"); TRUST_LEDGER.md R-022; SOURCES_P253_P275.md §3.4 (origin); SOURCES_P253_P275_VERIFY.md V2, V9; SOURCES_SWEEP_B.md §2 (p. 422 line); OPEN_ITEMS_SWEEP.md; paper/remains.tex l. 67, paper/assembly.tex l. 225, PAPER_FIX_LOG.md (status text only). Each one uses L-211 for the bound behind CMP 99's G, G_1, (QG_1Q*)^{−1}, which are built from the dressed Q (V1.5). None needs an undressed k-step bound.
- "Lemma LB" in THM39_FULL.md, SOURCES_FH_U1_REPAIR.md and FABLE_HARD*.md names other lemmas (L-210 and a cumulant bound). They are not L-211.
- Scope note: BETA_FP.md, BETA_FP_U.md, BETA_FP_VERIFY.md and U1_INFINITE_LATTICE.md use an undressed k-step linearization Q̃_k with Q̃_kD_k = 0. They use it in exact Gaussian determinant identities (gauge-fixing independence), not through L-211 and not through a lower bound on Q̃_kQ̃_k*. They are not consumers of L-211. Whether their Q̃_k should be the dressed one is outside this check.

V1.9 Verdict on FABLE_A25_A26_H1 §1 items (§1.8 of the target). CONFIRMED as graded in the target. The CMP 96 Lemma 2.4 / (2.125) statements were not re-imaged here either; the target does not need them (V1.5).

## 2. S-73 (row R-023)

V2.1 Page quotes of §2.1. CONFIRMED [V], with one precision.
- CMP 109 p. 275, p. 262 (1.11)–(1.16), (iv) "R = R_1", X̃^{−2}; CMP 99-Regular p. 77 (1.3)–(1.9), p. 98, p. 99 Prop. 6 (1.135)–(1.138); CMP 99 p. 396 cube class and "no constraints on U outside Ω_0", p. 394 Dirichlet on Ω_0; CMP 102 pp. 277–279 (1), (2)–(8), Theorem 1 (9)–(10). All exact.
- Precision on (H1). CMP 109 p. 275 says the space is defined by (i)–(iv) "only the configurations U, J are defined and satisfy (i)–(iii) on the whole lattice T_η. Let us assume this". So (1.11) on T_η is Balaban's stated assumption for this construction, with constant (1 + 2β)α_0. (H1) is [V] as an assumption of the page. CONFIRMED.
- Precision on CMP 99 p. 396. There Λ_0 = Ω_0 ∖ Ω_1 with Ω_0 = {big blocks at distance ≤ RM from Ω_1} (M, not M_1). CMP 99-Regular (1.4) and CMP 102 (1) use RM_1. CMP 109 (iv) uses (1.3)–(1.6) of [14] (CMP 99-Regular), so RM_1 with R = R_1 governs CMP 109's sequences.

V2.2 "A cube that meets ∂□_0 can be wider than Λ_0" (§2.2). CONFIRMED, and stronger than stated.
- The target leaves 10M ≤ width(Λ_0) as [I-geo] "not fixed by the sources". The sources nearly fix it the other way. (1.4) with R = R_1 gives width(Λ_0) > R_1M_1ξ, and maximality of Ω_1 makes Λ_0 no wider than about R_1M_1ξ + LM_1ξ (one more level-1 block). A CMP 99 index-0 cube has size ≥ 10Mξ (p. 396 [V]). M ≥ R_1M_1 is in M_req (row R-023 item (6), HIGHER_M1 B3), and CMP 99-Regular p. 98 and CMP 102 p. 279 take M a multiple of R_1M_1 [V]. So 10Mξ ≥ 10R_1M_1ξ > (R_1 + L)M_1ξ whenever 9R_1 > L. Under these readings a cube that meets ∂□_0 is wider than Λ_0, and S-72 alone does not discharge S-73. [P given the maximal-sequence reading and M ≥ R_1M_1.]
- The three bullets of §2.2 (U's gauge (1.12) does not describe Ũ on the Ω_1 part; CMP 102 (9) needs □̃ ⊂ Ω_0 ∖ Ω_2 with margin 2R_1M_1ξ inside □_0 [V p. 279]; (1.16) misses the collar) are CONFIRMED.

V2.3 Lemma G (the glued field lies in 𝔘_k({Ω̃_n}, α′) on T_η). CONFIRMED [P rel. CMP 102 Thm 1 (8) [R], S-72, (I-W)].
- Admissibility: p. 77 admits Ω_j = T_η [V]; Ω̃_0^c = ∅, so the n = 0 distance condition is void. CONFIRMED.
- (H2): CMP 102 Theorem 1 puts the minimal orbit in 𝔘_k({Ω_j}, B_3ε_1) ∩ 𝔅_k(𝔅_k, V) (8) [V p. 279], for any sequence with (1), R ≥ R_1 [V p. 277]. With Ω_n := □_n this is the needed class. Gauge invariance of 𝔘_k [V p. 278]. Reading (I-W) is needed and is named. CONFIRMED.
- Cases (a), (b): a plaquette with a corner outside □_0 has each bond either outside □_0 or with an end-point in Λ_0; by S-72 Ũ = U on all of them. Its corners are within √2ξ of □_0^c, so none is in □_1. Only the n = 0 condition applies, and (H1) gives it. CONFIRMED.
- Case (c): all bonds have both ends in □_0, so Ũ(∂p) = W(∂p), and (8) gives (1.7) with B_3ε_1L^{−2n}. CONFIRMED.
- Case (d): every plaquette that contains a bond with an end-point in □_1, and the transport bond in (3.9) [V p. 392], lie in □_0. So (D*∂Ũ)(b) = (D*∂W)(b). CONFIRMED.
- Case (e): (3.9) gives (D*F)(b) as a sum over ν ≠ μ of ξ^{−1}(transported F on one plaquette − F on another), both plaquettes containing b [V p. 392]. The bound 2(d − 1)ξ^{−1}max|F| and |F| ≤ 2|Ũ(∂p) − 1| for small arguments are right. The [I-minor] on the meaning of "∂U" inside (1.9) is real but changes only a (d)-factor. CONFIRMED.
- Observation: the n = 0 bond condition (1.9) is weak. It follows from the n = 0 plaquette condition by the crude bound in (e). So Lemma G at n = 0 reduces to the plaquette bounds, and the class property comes from (H1), S-72 and (8).

V2.4 Prop. R0: every cube that meets ∂□_0 has index 0, and Prop. 6 at k = 0 covers it. CONFIRMED [P rel. Prop. 6 [R]], with the target's two [I-minor].
- (a) A cube that meets ∂□_0 contains a point of T_η ∖ □_1. A cube of index j ≥ 1 lies in B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}) ⊂ □_1. So the index is 0. CONFIRMED. Note: a cube too wide to fit in B^0(Λ̃_0) ∪ B^1(Λ̃_1) is not in the p. 396 class and carries no condition.
- (b) p. 98 [V]: "we can assume also that j = k, because we can drop out the domains Ω_{j′}, j′ > j … Then we have to admit the value k = 0. In this case the reasoning is much simpler and will be covered by our analysis of a general case." With k = 0 the inclusion □̃ ⊂ Ω_{k−1} does not arise, and □̃ ⊂ Ω̃_0 = T_η holds. Prop. 6 needs (1.7)–(1.9) only through U_0 on □̃ ((1.128), (1.132) define U_0″ = U_0′ on □̃ and 1 outside) [V p. 99]. (1.136) at j = 0 gives ξ|A|, ξ²|∇A|, ξ³|∂*∂A|, ξ³|ΔA| < 7dL²B_1M_□α′ on □_0 ⊇ □. This is (3.35)–(3.36) at index 0 [V p. 396]. CONFIRMED. The "k = 0 coverage" [I-minor] stays: the k = 0 case is asserted, not written.
- (c) Constants: 7dL²M_□α′ ≤ c_1 is a new α_0 cap after M. CONFIRMED in form; the canon slot was not re-read here either.
- (d), (e): unchanged items (R-023 item (4)) and the J-term; CONFIRMED as statements of scope.
- Scope of "regular". R-023's stated content is "CMP 99-regular with constant c·B_3·Mα_0 and sequence {□_n}" (TRUST_LEDGER R-023). Lemma G uses Ω̃_0 = T_η in place of Ω_0 = □_0. §2.5(a) covers both choices. CONFIRMED. If a consumer needed unit-scale regularity of Ũ (index-k cubes of the constant sequence, as for U in (1.12)), Lemma G would not give it near ∂□_n; that is not the row's stated content.

V2.5 New finding: with R = R_1, Prop. 6 does not apply as printed to index ≥ 1 cubes (§2.7). CORRECTED.
- What is right. p. 98 [V]: "We assume that RM is bigger than R_1M_1, for example L^{−1}RM > 2dR_1M_1, thus we have □̃ ⊂ Ω_{k−1}." □̃ extends 2R_1M_1 (units L^kη = 1) beyond □, and (1.4) guarantees only a layer of width > RM_1L^{k−1}η = RM_1/L. With R = R_1 the layer can be narrower than 2R_1M_1. So for a cube of index j ≥ 1 next to ∂□_j, Prop. 6 relative to the sequence {□_n} (R = R_1) does not give □̃ ⊂ Ω_{j−1}. CONFIRMED [P from V]. Caveat: the page prints "RM" (cube parameter M), not "RM_1". Read literally with M the cube size, L^{−1}R_1M > 2dR_1M_1 holds for M > 2dLM_1, but then it does not imply the inclusion through (1.4). The conclusion stands under either reading.
- What is wrong. Route 2 of SOURCES_P253_P275 5.2(c) does not apply Prop. 6 with {□_n}. It takes the plaquette class of (1.16), |∂U_n(M′(U)) − 1| < α_0ξ² on X̃^{−2}, which is (1.7) at the deepest level for every plaquette. Its source, SOURCES_A18_REGULAR 5.2 "Alternative route", states the class as 𝔘_{k+1}({Ω_j = T}, ε_0), the constant sequence. For the constant sequence Ω_{j−1} = Ω_j, so □̃ ⊂ Ω_{j−1} is the same as □̃ inside the region where the class holds. R = R_1 plays no role. Route 2's real limits are the collar □_0 ∖ □_0^{−2} and locality (the class holds on X̃^{−2}, not on T_η). These were already recorded in SOURCES_P253_P275 5.2(c).
- Corrected statement: "Prop. 6 relative to the R = R_1 sequence {□_n} does not cover index ≥ 1 cubes next to ∂□_n. Route 2, which uses the constant-sequence class of (1.16), is not affected by this; it is limited by the collar and by locality only."
- Does any consumer need Route 2? No. Grep for "Prop. 6", "□_0^{−2}", "Route 2": Route 2 for R-023 appears only in SOURCES_P253_P275 5.2(c), its VERIFY, TRUST_LEDGER R-023 item (2) "or condition (iv) + CMP 99-regular Prop. 6 on □_0^{−2}", and OPEN_ITEMS_SWEEP S-73 as an alternative. With Lemma G + Prop. R0 for index-0 cubes and Route 1 (CMP 102 (9)–(10) + cube-class matching [I-geo]) for index ≥ 1, no file needs Route 2. The other "Prop. 6" and "Route 2" hits (SOURCES_A18_REGULAR, THM39_FULL, THM310_FULL, SOURCES_HHIST2, and others) are other uses or other routes. The row text may keep Route 2 as an alternative with its collar limit; the sentence "Route 2 does not apply as printed with R = R_1" should not enter the ledger.

## 3. Grade table (claims of SOURCES_L1_A)

| # | Claim (target section) | Grade |
|---|---|---|
| 1 | CMP 99 builds every operator from the dressed CMP 98 (89)–(92) average (§1.1, (3.13)) | CONFIRMED [V] |
| 2 | Lemma D (a)–(d): at U = 1 the dressed one-step linear part is Q_str for every family and every M with (0.8) (§1.3) | CONFIRMED [P re-derived; V sign check p. 418] |
| 3 | numerics/l1a_dressing.py errors ≤ 6.2e−16, both families (§1.3) | CONFIRMED [N rerun]; the second check is not independent of the first (V1.3) |
| 4 | Reading (I-Q): CMP 109 uses the same dressed composition (§1.4) | CONFIRMED and strengthened: CMP 109 p. 270 (3.3) + CMP 98 (97) [V]; residual (97) for the new averages [R, R-003 R4] |
| 5 | Corollary D (i)–(iv) (§1.4) | CONFIRMED [P rel. R] |
| 6 | L-211 in dressed form from CMP 99 Cor. 3.5 and Thms 3.1–3.12 (§1.5) | CONFIRMED [P rel. R + (I-Q)] |
| 7 | Undressed k-step reading not proved; conjugation route fails by L^{k/2} (§1.5) | CONFIRMED [P] |
| 8 | Q_kQ_k* ≥ c is CMP 99's own input (§1.6(a)–(c)) | CONFIRMED; the printed [R] is (3.132), the QQ* bound is Balaban's omitted step |
| 9 | Q_kQ_k* numerics: ≥ 1/2, fit 1/2 + 1/(2·9^k) (§1.6(d)) | CORRECTED: n = 3 artifact; with even n the minimum is 1/3 + 2/(3·9^k) → 1/3; still k-uniform; single-level periodic test only |
| 10 | Undressed Q̃ only at the top step (§1.7) | CONFIRMED [V] |
| 11 | No consumer uses the undressed reading of L-211 | CONFIRMED (grep); BETA_FP/U1 use an undressed Q̃_k in exact determinant identities, not via L-211 |
| 12 | A cube that meets ∂□_0 can be wider than Λ_0; S-72 alone does not discharge S-73 (§2.2) | CONFIRMED, stronger: generically wider under M ≥ R_1M_1 and maximal Ω_1 |
| 13 | Lemma G: glued field in 𝔘_k on T_η rel. CMP 102 Thm 1 (8) (§2.4) | CONFIRMED [P rel. R, S-72, (I-W), (1.9)-variable I-minor] |
| 14 | Every cube that meets ∂□_0 has index 0; Prop. 6 at k = 0 covers each (§2.5) | CONFIRMED [P rel. Prop. 6 [R]; k = 0 coverage I-minor] |
| 15 | With R = R_1, Prop. 6 does not apply as printed to index ≥ 1 cubes; Route 2 should be dropped (§2.7) | CORRECTED: true for Prop. 6 with the {□_n} sequence; Route 2 uses the constant sequence and is not affected; no consumer needs Route 2 |
| 16 | Proposed statuses R-022, R-023 (§3) | CONFIRMED with the text fixes of §4 |

## 4. Safe ledger statuses

R-022. REDUCED [verified, SOURCES_L1_A_VERIFY, 2026-10-28]. OPEN (i) and (ii) leave the row. L-211 holds in its dressed form, PROVED relative to CMP 99 Cor. 3.5, Thms 3.1–3.12, (3.132)–(3.133) [R] and CMP 98 (89)–(92), (97), (139), (149) [R] (R-003 R4). Reading (I-Q) is a printed use: CMP 109 p. 270 (3.3) applies CMP 98 (97) to its Q_j [V]; the residual is (97) for the new averages via p. 254 [R]. Item (ii) is CMP 99's own omitted step inside (3.132), the same operator at U = 1 [R]; regular U by A18 Lemma Q, conditional on its operator-norm form. Numerical support: the free bound for Q_str^k is k-uniform, ≥ 1/3 (d = 2, L = 3, k ≤ 4, periodic, single level) [N]. The undressed k-step reading is not proved and not used by any consumer of L-211. No open lemma remains.

R-023. REDUCED [verified, SOURCES_L1_A_VERIFY, 2026-10-28]; item (2) gluing step CLOSED. Item (2): the glued field lies in 𝔘_k({Ω̃_n}, α′) on T_η, Ω̃_0 = T_η, Ω̃_n = □_n, α′ = 4(d − 1)max{α_0, B_3ε_1} (Lemma G [P] relative to CMP 102 Thm 1 (8) [R], S-72 [P], CMP 109 p. 275 assumption (1.11) on T_η [V]). Every cube that meets ∂□_0 has index 0, and CMP 99-Regular Prop. 6 at k = 0 [R] gives (3.35)–(3.36) there with constant c(d, L)B_3M_□α_0, under the new cap 7dL²M_□α′ ≤ c_1 (an α_0 cap after M). Readings: (I-W); the (1.9) variable [I-minor]; k = 0 coverage of p. 98 [I-minor]. S-72 alone does not suffice: under M ≥ R_1M_1 and a maximal Ω_1 such cubes are wider than Λ_0. Index ≥ 1 cubes: Route 1, CMP 102 (9)–(10) [R] + cube-class matching [I-geo]. Route 2 (constant-sequence class of (1.16) + Prop. 6) stays an optional alternative, limited by the collar and locality; it is not needed. Items (3)–(5) unchanged; (1), (6) stay CLOSED. No open lemma remains.

Text fixes for whoever updates the ledger: write "≥ 1/3", not "≥ 1/2"; do not add "Route 2 does not apply as printed with R = R_1"; cite CMP 109 p. 270 (3.3) for (I-Q).
