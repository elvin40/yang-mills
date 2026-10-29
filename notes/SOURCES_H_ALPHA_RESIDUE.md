# SOURCES_H_ALPHA_RESIDUE — the residue (R2)–(R4) of (H-α): CMP 116 order of constants, the (3.16) cut, K_U and K_2

Date 2026-10-29. Author: Claude (Opus 5.5). Status: complete, unverified. Ids follow IDS.md. No existing file was edited. PLAN.md was not appended. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Grades: [P] proved here; [P-sketch] proof with one routine step not written out; [V] read on a rendered page image in this session (pdftoppm -r 150, fresh folder /tmp/ha_res_Wn1S, deleted after use) or in a verified project file (named); [R] reduced to a named input; [I] reading or inference not checked line by line.

## 0. Inputs

Files read: OPUS_QUEUE.md l. 1–15; SOURCES_H_ALPHA.md (all); SOURCES_H_ALPHA_VERIFY.md (all); SOURCES_ORDER_CANON.md §B lines N-060, N-070, N-090, N-310, N-370, N-400, N-470 and the CMP 116 mentions (by script); SOURCES_ORDER_CHECK.md l. 40–42; SOURCES_MC.md l. 55–150; SOURCES_L1_F.md §5; SOURCES_L1_F_VERIFY.md V22–V23 (by grep); SOURCES_A18_REGULAR(+_VERIFY) (by grep, (1.12)); SOURCES_FX_O23.md l. 18–24 (by grep); SOURCES_HIGHER_M1.md l. 85, 142 (by grep).
Page images read this session (journal page, PDF page in brackets):
- CMP 116 pp. 1–22 [1–22], all pages.
- CMP 109 pp. 260–267 [12–19].
- CMP 119 pp. 264–270 [22–28].
- CMP 122 II p. 380 [26].

## 1. Item (2): the order of the CMP 116 constants

1.1 Page facts [V, images].
- p. 3: R_1 is a power of L with R_1M_1M^{−1} ≤ 1. B_0, δ_0 are the walk constants of (1.7).
- p. 5: δ_1 depends "on δ_0 only"; δ_1M ≥ κ_1; κ_1 is "a sufficiently big positive number"; (1.13) uses an auxiliary ε_2 with 4C_2B_0e^{16κ_1}ε_2 ≤ 1 (C_2 from [15]).
- p. 6: an auxiliary ε_3 with 4C_4B_0²e^{32κ_1}ε_3 ≤ 1 and 2B_0e^{16κ_1}ε_3 ≤ ε_2 (auxiliary). (1.19)–(1.20): B′ = g_kCB − hD̃(g_kCB), |B′| ≤ C_1g_k|B| < C_1ε_1, "where C_1 is an absolute constant, and g_k|B| < ε_1".
- p. 7: (1.21) holds "if e^{32κ_1}ε_1 is smaller than an absolute constant"; "We assume that 4B_0C_1e^{16κ_1}ε_1 ≤ ¼α_2".
- p. 8: (1.26) κ sufficiently large; (1.27) κ_1 sufficiently large; (1.29) |Σ(1.23)| ≤ E_0ε_1O(M^q)exp O(1)κ_1 "with absolute constants O(1), q. The constant q is a small, nonnegative integer, which can be easily calculated from the conditions on α_1, α_2, α_3." "Another possibility is to use the expression g_k|B| instead of ε_1."
- p. 9: ¼(κ_1 − 1) ≥ (1 − δ)κ; (1/16)κ_1 ≥ (1 − 2δ)κ; δκ sufficiently large. Lemma 1: domain (1.34) U^c_{k+1}(Y, (1 + β)α_0, (1 + β)α_1, α_0) × {B : |B| < ε_1g_k^{−1} on Y}; "There exist absolute constants C_1, C_2, q, for which" (1.36) |V′_k| ≤ E_0ε_1C_1M^q exp C_2κ_1 exp(−(1 − 2δ)κd_k(Y)).
- p. 10–11: C_3 of (1.39), (1.43) is "an absolute constant".
- p. 12: (2.3) χ^c_{k,P} = Π_{b∈P}χ({|B(b)| ≥ ε_1/g_k}), P ⊂ Y_0^{c*} = {b ⊂ Y_0^c} \ {b_0(c)}.
- p. 15: the activities are analytic on U^c_{k+1}(X, α_0, α_1); no ε_1 occurs in this domain.
- p. 16: "M is much bigger than κ_1, especially that e^{−⅓δ_0M}e^{16κ_1} < 1"; "a small, positive number α_4, to be chosen later"; (2.18) 1/|τ(Y)| = E_0ε_1C_1α_4^{−1}M^q exp C_2κ_1 exp(−(1 − 3δ)κd_k(Y)); "We assume that ⅛(κ_1 − 1) ≥ (1 − 3δ)κ, C_3 ≤ E_0C_1, and q ≥ 8"; (2.22) χ ≤ exp(−½γ_2(ε_1²/g_k²)|P| + ½γ_2‖PB‖²), "γ_2 is a small, positive constant".
- p. 17: α_5 = O(1)e^{−⅓δ_0M} + O(α_0 + α_1) + O(1)α_4 + γ_2; α_5‖C^{(k)}(Z_0, 0)‖ < ½.
- p. 18: "α_6 is a sufficiently small, positive constant"; "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1"; (2.29) "For κ sufficiently large and α_6 sufficiently small"; (2.31) "for g_k², i.e. γ² sufficiently small, depending on M and κ"; (1/20)γ_2ε_1²/g_k² ≥ (1/20)γ_2ε_1²/γ² ≥ 4κ.
- p. 19: "denoting ε_2 = 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1"; ε_2 ≤ 1; "exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2".
- p. 20: (L + 2)^4O(1)ε_2 ≤ ½; 2(L + 2)^4O(1)ε_2 exp 5κ ≤ 1; ½(κ_1 − 1) ≥ 2Lκ; "(LM)^4α_0, (LM)^4α_1, (LM)^4α_4, (LM)^4γ_2 are bounded by a constant independent of M, for example by 1"; C_3 := 2(L + 2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1; Lemma 3 "Under all the above restrictions on the constants M, κ, κ_1, α_0, α_1, α_4, α_6, γ_2, γ, ε_1".
- p. 21: (2.39) "for κ sufficiently large, and ε_1 sufficiently small"; "(1 − 10δ)½L = 1, or δ = (1/10)(1 − 2L^{−1})"; "O(1)C_3ε_1 ≤ ½E_0. In fact this assumption is unessential, because the constant C_3ε_1 is small anyway, and we can take E_0 such, that the assumption is satisfied. The assumptions allow finally us to fix all the constants, or rather bounds on these constants." For log Z^{(k)}: "with an absolute constant instead of E_0. We define ½E_0 as equal to this constant, and we take M sufficiently large, so that δ_0M ≥ κ."
- CMP 109 p. 264 (Theorem 3): "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such that if κ ≥ κ_0, M ≥ M(κ) … The constants ε_0, ε_1, α_0, α_1 depend on M … The constant γ depends on all other constants."

1.2 Symbol reuse in CMP 116 [V, from 1.1]. Balaban uses one symbol for different constants:
- C_1: (1.20) absolute bound of B′ ↦ B; (1.36) Lemma 1 constant (the one in (2.18), ε_2, C_3 of p. 20).
- C_2: (1.13) constant from [15]; (1.36) exponent constant.
- C_3: (1.39)/(1.43) absolute vertex constant; p. 20 definition.
- ε_2: p. 5 auxiliary radius; p. 19 definition.
- q: CMP 116 (1.29)/(1.36) exponent; not the CMP 119 (2.28) exponents q_0, q_1, and not q := min(q_0, q_1) of SOURCES_H_ALPHA §2.2.
Below, C_1, C_2, q mean the (1.36) constants unless marked C_1^{(1.20)}.

1.3 The exact order [P from the directions of the printed inequalities in 1.1; each step uses only earlier lines].
O0. Absolute constants: B_0, δ_0, δ_1, a_1, γ_1, C_1^{(1.20)}, C_2^{(1.13)}, C_4, C_3^{(1.43)} (pp. 3–13). L given; δ := (1/10)(1 − 2L^{−1}) (p. 21, definition).
O1. E_0 := 2 × (the absolute constant of the log Z^{(k)} bound) (p. 21). It uses nothing else. The other E_0 condition, O(1)C_3ε_1 ≤ ½E_0, does not bound E_0: C_3 of p. 20 is proportional to E_0, so it reads O(1)·4(L + 2)^4O(1)C_1α_4^{−1}α_6^{−1}M^qe^{C_2κ_1}ε_1 ≤ ½, an upper bound on ε_1 (O8) [P, arithmetic].
O2. κ: lower bounds only ((1.26), δκ large p. 9, (2.29), (2.39); κ ≥ κ_0).
O3. κ_1: lower bounds in κ (p. 9: ¼(κ_1 − 1) ≥ (1 − δ)κ, κ_1/16 ≥ (1 − 2δ)κ; p. 16: ⅛(κ_1 − 1) ≥ (1 − 3δ)κ; p. 20: ½(κ_1 − 1) ≥ 2Lκ; (1.27), p. 16 "small for κ_1 large").
O4. M: lower bounds in κ, κ_1 (δ_1M ≥ κ_1, p. 5; e^{−δ_0M/3}e^{16κ_1} < 1, p. 16; δ_0M ≥ κ, p. 21; M ≥ M(κ)).
O5. α_0, α_1 (with α_2, α_3 of CMP 109), α_4, γ_2: upper bounds in M ((LM)^4α ≤ 1, p. 20; α_5‖C‖ < ½, p. 17; "depend on M", Theorem 3). α_6: upper bound in κ only ((2.29)); any slot after O2 and before O7.
O6. C_1, C_2, q of (1.36): fixed after the α's of O5. Reason: (1.24) carries α_2^{−1}(α_1/α_3)^5, and p. 8 says q "can be easily calculated from the conditions on α_1, α_2, α_3". They are "absolute" only in the sense that the α's of O5 are (M-free prefactor) × (power of M). Extra lower bounds: q ≥ 8, C_1 ≥ C_3^{(1.43)}/E_0 (p. 16). Lower bounds can always be met by enlarging C_1, q.
O7. ε_1: upper bounds only, each in terms of O0–O6 (p. 6 via ε_3; p. 7 e^{32κ_1}ε_1 < abs. const., 4B_0C_1^{(1.20)}e^{16κ_1}ε_1 ≤ ¼α_2; p. 18 ε_2e^{5κ} ≤ 1; p. 19 ε_2 ≤ 1; p. 20 two (L + 2)^4 conditions; p. 21 (2.39), O1's condition).
O8. ε_2: a definition (p. 19), linear in ε_1; no free choice.
O9. γ: last ("depends on all other constants"): (2.31); (1/20)γ_2ε_1²/γ² ≥ 4κ; e^{−γ_2ε_1²/(20γ²)} ≤ ε_2; B14 of SOURCES_MC.
So the order asked for is: E_0 → κ → (κ_1) → M → α_0, α_1, α_4 (α_6 any time after κ) → C_1, C_2 (with q) → ε_1 → ε_2 (defined) → γ. It agrees with SOURCES_MC l. 104 and adds E_0 (first) and C_1, C_2, q (after the α's). (R2) of SOURCES_H_ALPHA_VERIFY is now [V + P]; it is no longer [I].

1.4 Check against SOURCES_ORDER_CANON [P on the quoted lines].
- E_0 at N-060 ("absolute; may go first"): agrees with O1.
- κ at N-070, κ_1 at N-090, M at N-310, α-chain (α_4, γ_2, α_6) at N-370, ε_1 at N-400 (with ε_2 and C_3^{116} built there), γ at N-470: agree with O2–O9.
- The CMP 116 M-thresholds are in M_req (SOURCES_HIGHER_M1 l. 142: 96κ_1/δ_0, 2κ/δ_0, κ_1/δ_1). 96κ_1/δ_0 gives δ_0M/3 ≥ 32κ_1 > 16κ_1; 2κ/δ_0 gives δ_0M ≥ κ; κ_1/δ_1 gives δ_1M ≥ κ_1. The two κ_1 conditions of p. 9 follow from N-090: ⅛(κ_1 − 1) ≥ (1 − 3δ)κ gives ¼(κ_1 − 1) ≥ (1 − δ)κ when δ ≤ 1/5; ½(κ_1 − 1) ≥ 2Lκ gives κ_1/16 ≥ Lκ/4 ≥ (1 − 2δ)κ when L ≥ 4.
- One slot correction (not a cycle). N-060 holds "C_i^{116} (CMP 116 (1.20)–(1.22) constants)". That is correct for C_1^{(1.20)}, C_2^{(1.13)}, C_4. But the C_1, C_2 inside ε_2 and C_3^{116} (N-400) are the (1.36) constants with q (1.2). By O6 they depend on the α-prefactors and α-exponents fixed at N-370, and on the κ_1-exponent of the cap Mα_0 ≤ a(κ_1) (a(κ_1) ∝ e^{−2cκ_1}, WG_FULL_VERIFY l. 30), which C_2 must dominate. Proposed fix: a new line N-395 between N-370 and N-400: "C_1^{(1.36)}, C_2^{(1.36)}, q: q ≥ 8; C_1^{(1.36)} ≥ C_3^{(1.43)}/E_0; C_1^{(1.36)}M^qe^{C_2^{(1.36)}κ_1} ≥ the (1.24)–(1.29) prefactor at the α's of N-370; distinct from C_1^{(1.20)} of N-060." Users: N-400 and N-470 only, both later. So the graph stays acyclic [P].
- No cycle [P]. Every condition on ε_1 is an upper bound in constants of N-060…N-395. Every condition with ε_1 and γ together is a γ-small condition at N-470. No line before N-400 uses ε_1, ε_2 or the (1.36) constants.

1.5 The per-step cut is compatible with the canon [P given 1.3].
Replace ε_1 at step k by r_k := δ(x*_k) = x*_kA_1(log x*_k^{−2})^{p_0} (frozen chain, SOURCES_H_ALPHA 3.1).
- Background domain. The CMP 116 domains (1.34), p. 15 are U^c(·, (1 + β)α_0, (1 + β)α_1, α_0) and U^c_{k+1}(X, α_0, α_1). They contain no ε_1 [V]. So a k-dependent cut does not change the inductive domain.
- O7 conditions: a down-set (0, ε̄_1] fixed at N-400. r_k ≤ ε̄_1 for all k iff sup_{x≤γ}xA_1(log x^{−2})^{p_0} ≤ ε̄_1: a γ-small condition (N-470). N-410 (p_0) and N-420 (A_1) come before γ.
- O9 conditions: CMP 116 writes them with ε_1/g_k (pp. 12, 16, 18). With r_k they use θ_k := r_k/x*_k = A_1(log x*_k^{−2})^{p_0} ≥ A_1(log γ^{−2})^{p_0}. (1/20)γ_2θ_k² ≥ 4κ + 1 and (2.31) at x = γ_2θ_k² hold for γ small. B13 reads e^{−γ_2θ_k²/20} ≤ c_2r_k, c_2 := 2E_0C_1α_4^{−1}α_6^{−1}M^qe^{C_2κ_1} (fixed at N-395). The left side is exp(−(γ_2A_1²/20)(log x^{−2})^{2p_0}), smaller than every power of x; the right side is ≥ c_2x. So B13 holds for all x ≤ γ once γ is small. These are N-470 conditions with inputs from earlier lines (γ_2: N-370; A_1: N-420; p_0: N-410; κ, M, E_0).
- p. 8 prints the per-step alternative: "Another possibility is to use the expression g_k|B| instead of ε_1." CMP 109 p. 266 offers g_kε_1/γ_k (SOURCES_H_ALPHA_VERIFY V14).
- Complex step: SOURCES_MC's shrink (ε_1/(4λ_V), γ/(8λ_V)) keeps the ratio ε_1/γ; with r_k the ratio θ_k is unchanged.
Result: (R2) CLOSED [V + P]. The only change to the canon is the N-395 slot of 1.4. It is bookkeeping and does not change any value.

## 2. Item (3): is CMP 119 (3.16) the CMP 109 (2.9) cut with ε_1 → δ_k?

2.1 Page facts [V, images].
- CMP 109 p. 265: background V^{(k)} = Ū^k_{k+1} = M^k(U_{k+1}) (2.3); new variables V′ = V(V^{(k)})^{−1}; "the characteristic function χ_k and the δ-functions … restrict the variables B′ = (1/i)log V′ to a sufficiently small neighborhood of 0".
- CMP 109 p. 266: (2.9) χ_k = Π_{b∈T^{(k)}\{b_0(c): c∈T^{(k+1)}}}χ({|B′(b)| < ε_1}); "Another possibility is to take g_k/γ_kε_1 instead of ε_1".
- CMP 109 p. 267: the bonds b_0(c) get "ε_1 replaced by O(ε_1)"; hB vanishes except on the bonds b_0(c); the change B′ = B − hD̃(B), then "the scaling transformation B = g_kB′" (the printed letters; CMP 116 (1.19) writes the same map as B′ = g_kCB − hD̃(g_kCB)).
- CMP 116 p. 9 (1.34): domain {B : |B| < ε_1g_k^{−1}}; p. 12 (2.3): χ^c_{k,P} = Π_{b∈P}χ({|B(b)| ≥ ε_1/g_k}) on Y_0^{c*} = bonds of Y_0^c minus {b_0(c)}; p. 16 (2.22): large-field factor exp(−½γ_2(ε_1²/g_k²)|P|).
- CMP 119 p. 265: (3.3) cut |V_k(b)(V^{(k)}_{□′}(b))^{−1} − 1| < 2δ_k on b ∈ (□′^{~2})^{(k)*}; δ_k = g_kA_1/A_0p_0(g_k).
- CMP 119 p. 266: (3.10) V^{(k)} = M^k(U_{k+1}), the minimum of A(U_k) with V̄_k = V_{k+1}; (3.11) V′_k = V_k(V^{(k)})^{−1}.
- CMP 119 p. 267: (3.14) |V′_k − 1| < O(1)ε_k; A′_k = (1/i)log V′_k; "The next steps are exactly the same as in Sect. C [16], and in fact the same as in Sect. 2 [I]. … we perform the scaling transformation A′_k = g_kA_k."
- CMP 119 p. 268: (3.15) the action at U_k(exp i[g_kCA_k − hD̃(g_kCA_k)]V^{(k)}); "We want to have characteristic functions depending on the fluctuation field only"; (3.16) 1 = Σ_{R_{k+1}}Π_{□′⊂R^c}χ({sup_{b∈(□′~2)^{(k)*}}|A_k(b)| < δ_k})Π_{□′⊂R}χ({sup|A_k(b)| ≥ δ_k}); (3.19) |V^{(k)}(b)(V^{(k)}_{□′}(b))^{−1} − 1| < … < δ_k, so the (3.3) function "is equal to 1, because of the bound on A_k introduced by the second, and the fact that the configuration V^{(k)}(V^{(k)}_{□′})^{−1} − 1 is small, much smaller than δ_k".
- CMP 119 p. 269: on Λ_{k+1} "there are only the small field characteristic functions from (3.16)", product χ^{(k)}(Λ_{k+1}).
- CMP 122 II p. 380: "The function χ′^c_j(Q_j) yields the factor exp(−½γ_0(1/g_j²)(2δ_j)²(LM_2R_j)^{−2}|Q_j|) … The characteristic function χ^{(j−1)c}(R_j) yields the factor exp(−γ_0(1/g_j²)δ_j²(LM_2R_j)^{−d}|R_j|), by the same positivity bound for the quadratic form."

2.2 Comparison, item by item.
(a) Background [V]. Both cut the fluctuation relative to V^{(k)} = M^k(U_{k+1}) (CMP 109 (2.3), CMP 119 (3.10)). On the whole lattice the CMP 119 minimizer has no domain constraint, so the two backgrounds are the same configuration.
(b) Bond set [V + I]. CMP 109 cuts T^{(k)} \ {b_0(c)}. CMP 119 cuts (□′~2)^{(k)*}. CMP 116 p. 12 uses the same "*" for "remove the bonds b_0(c)" (Y_0^{c*}). Reading "*" in CMP 119 the same way is [I], supported by the identical notation. On the whole lattice the union over □′ is all bonds except the b_0(c).
(c) Form of the cut [P]. For the small-field term, Π_{□′}χ(sup_{b∈□′}|A_k(b)| < δ_k) = Π_bχ(|A_k(b)| < δ_k). This is a product of one-bond cuts, as in (2.9). The decomposition of unity only adds the large-field terms, which the whole-lattice frozen chain does not use.
(d) Variable [V + I]. (2.9) cuts B′ before linearization. CMP 116 (2.3) and CMP 119 (3.16) cut the variable after linearization and scaling. On a bond b ≠ b_0(c), hD̃ vanishes (CMP 109 p. 267 [V]), so g_k(CA)(b) is the physical fluctuation. The identity (CA)(b) = A(b) off the bonds b_0(c) is [I] (C removes the δ-functions by expressing the b_0(c) variables through the others; I did not read its definition). CMP 116 cuts exactly this variable with no comment ((1.34), (2.3)), so it treats the two forms as the same cut.
(e) Scale [V]. The literal print of (3.16), "sup|A_k(b)| < δ_k" after "A′_k = g_kA_k", cuts the scaled field at δ_k, i.e. the physical field at g_kδ_k. Balaban's own use of (3.16) refutes that reading: CMP 122 II p. 380 gives the factor exp(−γ_0δ_j²/g_j² · volume) for χ^{(j−1)c}(R_j) "by the same positivity bound for the quadratic form". The quadratic form is ½⟨A, C*ΔCA⟩ in the scaled field (CMP 119 p. 267). A cut |A| ≥ δ_j on the scaled field gives only exp(−cγ_0δ_j²), with no 1/g_j². The printed exponent δ_j²/g_j² needs the cut |A_j| ≥ δ_j/g_j on the scaled field, i.e. |g_jA_j| ≥ δ_j on the physical field. The same form appears in CMP 116 (2.22), exp(−½γ_2ε_1²/g_k²), for the cut |B| ≥ ε_1/g_k. Also (3.19) supports it: (3.3) allows 2δ_k; the physical fluctuation uses δ_k and the background part uses < δ_k, so the sum is < 2δ_k.
So the "A_k" in (3.16) is the physical fluctuation A′_k = g_kA_k (a dropped prime or g_k in the print) [V by CMP 122 II p. 380 + P]. On the scaled field the cut is |A_k(b)| < θ_k := δ_k/g_k = A_1p_0(g_k)/A_0 = A_1(log g_k^{−2})^{p_0} (p_0(g) = A_0(log g^{−2})^{p_0}, CMP 119 p. 244, SOURCES_H_ALPHA_VERIFY V15).
(f) Radius. (2.9) uses the fixed ε_1; (3.16) uses δ_k. This is the only difference, and it is the substitution ε_1 → δ_k.

2.3 Verdict. On the whole lattice, (3.16) (small-field term) is CMP 109 (2.9) in the CMP 116 (2.3) form with ε_1 → δ_k: same background, same bond set ([I] on "*"), same variable ([I] on C off the bonds b_0(c)), same scaling (Gaussian radius = cut/g_k [V]). (R3) is upgraded from [I] to [V + P], with two notational [I] items that do not affect Proposition A: Step 2 of Proposition A uses the cut only through ε_1/g_k and through upper bounds on ε_1, and a bounded linear change of the cut variable on the bonds b_0(c) would change neither.

## 3. Item (4): K_U with the J and (1.12) conditions, and K_2

3.1 Page facts [V, images].
- CMP 109 p. 260 (1.2): U_k(ε_0) is the set of U with |U(∂p) − 1| < ε_0η² and |J| < ε_0, J = D*_Uη^{−2}π Im∂U. "this condition … is implied by the condition on V, with 2ε_0 replaced by B_3^{−1}ε_0, see Theorem 1 [15]".
- CMP 109 p. 261: regularity means "first order derivatives and the special second order derivative of a configuration are small"; (1.8) J_j = D*ξ^{−2}π Im∂U_j; (1.9) E^{(j)}(X, g, U_j) = E^{(j)}(X, g, U_j, J_j).
- CMP 109 p. 262: U^c_j(X, α_0, α_1, γ_0) is a union of G^c gauge orbits; (i) 𝐔 = U′U, U G-valued, |∂U − 1| < α_0ξ² (1.11), and on each cube of size O(1)LM a G-valued u with U^u = exp iξA, |A|, |∇^ξA| < O(1)LMBα_0 (1.12); (ii) U′ = exp iξA′, A′ ∈ g^c, |A′|, |∇^ξ_UA′| < α_1 (1.13); (iii) |∂𝐔 − 1| < α_0ξ², |J| < γ_0 (1.14); (iv) (1.15)–(1.16) for 𝐔 and for U.
- CMP 109 p. 263: "Usually we consider spaces with γ_0 = α_0". If (i)–(iii) hold with α′_0 < α_0, α′_1 < α_1, then (1.17) |∂U_n(M′(𝐔)) − 1| < 2B_3α′_0ξ², |J_n| < B_3·2α′_0(L^nξ)², and "for α′_0 sufficiently small the above estimates imply the condition (iv)". With J = D*ξ^{−2}π Im∂𝐔, |J| < α′_0 (and the same for U), "the pairs (𝐔, J) belong to U^c_j(X, α_0, α_1)". (1.19): E^{(j)} is invariant under all G^c gauge transformations.
- CMP 109 p. 264: (1.20) Π^{ab}_{j+1,μν}(x, x′) = δ²E^{(j+1)}(g_j, B)/δB^a_μ(x)δB^b_ν(x′) at B = 0, with E^{(j+1)}(g_j, B) = E^{(j+1)}(g_j, U_{j+1}(exp iB)); "This limit exists by the localized representation (1.7)"; (1.22) β_{j+1} = Σ_xΠ_{j+1,μν}(x)x_μx_ν.
- CMP 109 pp. 265–266: U_k(V′V^{(k)}) = U′_k(V′)U_{k+1}; after the gauge u_k, U′^{u_k^{−1}} = exp iηH_k(B′), "H_k(B′) is regular and of the same order as B′"; u_k is analytic for |H_k| < a_1.
- CMP 116 pp. 2–6: H_k(B′) = H_0B′ + A_0 − HD(H_0B′ + A_0) (1.2), built from local analytic maps and propagators with the walk bound (1.7) O(1)(M_1^{−1/2})^{|ω|}exp(−δ_0d(ω, y, y′)); (1.18) |H_k(s, B′)| ≤ 4B_0e^{16κ_1}|B′| "and the same bound for all admissible norms".
- CMP 116 p. 18 (2.30): (3·2³)^{−1}M^{−4}|Y| ≤ d_k(Y) ≤ M^{−4}|Y| − 1 for Y ∈ D_k.
- CMP 119 p. 266: "By the exponential decay property (190) [15]" (decay of the H-maps away from the source).

3.2 (1.12) is not a condition on the test configurations [P]. Take the decomposition U := 1, U′ := 𝐔. Condition (i) asks only that U be G-valued with (1.11) and (1.12). For U = 1: ∂U = 1, and u = 1 gives A = 0, so (1.11), (1.12) hold for every B. Condition (ii) allows A′ ∈ g^c, so the real part of the test field may sit in A′; with U = 1, ∇^ξ_U = ∇^ξ. For U = 1, (iv) for "U instead of 𝐔" is trivial: U_n(M′(1)) = 1, J_n = 0. The spaces are unions of G^c orbits and E is gauge invariant (p. 262, (1.19)), so the gauge u_k of p. 265 does not matter. This closes the (1.12) part of V22 of SOURCES_H_ALPHA_VERIFY.

3.3 A correction to the extraction E ↦ β (affects L1_F §5.4 and SOURCES_H_ALPHA §3.3–§3.4) [V + P]. L1_F §5.4 writes Π(x) = Σ_{X∋0,x}∂²E(X)/∂B(0)∂B(x). By (1.20) the variable B enters through the minimal configuration U_{j+1}(exp iB). U_{j+1}(V) depends on V on the whole lattice (it is a minimizer; CMP 116 (1.2)–(1.7)). So E^{(j+1)}(X)(U_{j+1}(exp iB)) depends on B(b) also for b ∉ X, and Π(0, x) has contributions from every X, not only X ∋ 0, x. The bidisc Cauchy step of L1_F §5.4 bounds each X-term by E_*e^{−κd(X)}/ρ_B², with no decay in dist(0, X) or dist(x, X). Then Σ_xx²Σ_X diverges. So the bound |β| ≤ C_ΠE_* needs the decay of the minimizer map, and K_U must include it. The structure (H-α) ⇒ |β_j| ≤ M_β stays; the constant changes (3.5).

3.4 K_U, restated with J, the curvature and the decay [R].
Notation. Φ(B) := (A′(B), J(B)) on bonds of X, where U_{j+1}(exp iB) = exp iξA′(B) after a G^c gauge transformation and J(B) := D*ξ^{−2}π Im∂U_{j+1}(exp iB) (the J_{j+1} of (1.8)–(1.9), continued analytically). Φ(0) = 0 (trivial background). For a field v = (v_A, v_J) on X put N_X(v) := max(sup_X|v_A|, sup_X|∇^ξv_A|, sup_X|v_J|).
(K_U) There are K_U ≥ 1 and δ_U > 0, independent of j, X and the volume, such that Φ is analytic near B = 0 and, for coarse bonds b, b′ of T^{(j+1)} and unit Lie-algebra directions,
 (K_U-1) N_X(∂Φ/∂B(b)|_0) ≤ K_Ue^{−δ_U dist(b, X)},
 (K_U-2) N_X(∂²Φ/∂B(b)∂B(b′)|_0) ≤ K_Ue^{−δ_U(dist(b, X) + dist(b′, X))}.
Sources and grades.
- Analyticity near 0 and the A′, ∇A′ part of (K_U-1): CMP 109 pp. 265–266 ("regular and of the same order as B′", u_k analytic) and CMP 116 (1.2)–(1.18) (fixed-point construction, (1.18) "same bound for all admissible norms") [V for the statements; R for the constant].
- Decay δ_U: CMP 116 (1.7) walk bound with rate δ_0, CMP 119 p. 266 "(190) [15]" [V as pointers; R for the two-point decay of the second-order kernel (K_U-2), which needs the composition of (1.2)–(1.4) with decaying kernels; not printed as a formula].
- J part: the real case is printed: |V(∂p′) − 1| < B_3^{−1}ε_0 ⇒ |J| < ε_0 (CMP 109 p. 260, Theorem 1 [15]) [V]. For complex B the J bound needs the "special second order derivative" to be among the "admissible norms" of CMP 116 (1.18) / CMP 99 (3.35)–(3.38) (CMP 109 p. 261 names it as part of regularity) [I].
- Curvature: not a separate input. For 𝐔 = exp iξA′ with ξ|A′| ≤ ¼, a plaquette p with bonds b_1…b_4 gives ∂𝐔(p) = exp(iξ²·curl^ξA′(p) + R), |R| ≤ c_Hξ²|A′|², by the Baker–Campbell–Hausdorff formula; hence |∂𝐔 − 1| ≤ c_□ξ²(|∇^ξA′| + |A′|²) with an absolute c_□ [P-sketch: the BCH remainder constant c_H not written out].
So K_U stays [R], but its content is now exact: two kernel bounds at B = 0 for the minimal-configuration map at the trivial background, including J and the decay. The J and (1.12) conditions of the space are handled in 3.5 [P given (K_U)].

3.5 The bound on β, with the J condition, (1.12) and the decay [P given (H-α) (Proposition A), (K_U), the BCH constant c_□].
Put α′_0 := α_0/(2max(1, 2B_3)), α′_1 := α_1/2, and r_0 := min(α′_1, α′_0/(2c_□), 1).
Step 1 (a polydisc in the domain). Let v_1, v_2 be fields on X with N_X(v_i) = 1, and 𝐔(t, s) := exp iξ(tv_{1,A} + sv_{2,A}), J(t, s) := tv_{1,J} + sv_{2,J}, |t|, |s| < r_0/2. Then |A′|, |∇^ξA′| < r_0 ≤ α′_1 (ii); |J| < r_0 ≤ α′_0 < α_0 = γ_0 (iii, second part); |∂𝐔 − 1| ≤ c_□ξ²(r_0 + r_0²) ≤ 2c_□r_0ξ² ≤ α′_0ξ² (iii, first part); (i) with U = 1 (3.2); (iv) by p. 263 since 2B_3α′_0 < α_0 and |J| < α′_0. So (𝐔, J)(t, s) ∈ U^c_{j+1}(X, α_0, α_1) [P given p. 263 (V)].
Step 2 (Cauchy in the configuration variables). E(X) is analytic there with |E(X)| ≤ cE_0e^{−κd(X)} (Proposition A). E(X) depends on (𝐔, J) as independent variables (p. 261, (1.9)). Cauchy on the bidisc gives |D²E(X)(0)[v_1, v_2]| ≤ cE_0e^{−κd(X)}(2/r_0)², and for one direction |DE(X)(0)[w]| ≤ cE_0e^{−κd(X)}N_X(w)/r_0. By linearity this holds for any v_1, v_2 with the factor N_X(v_1)N_X(v_2).
Step 3 (chain rule). With f_X(z) := E(X)(Φ(z_1e_0 + z_2e_x)):
 ∂_{z_1}∂_{z_2}f_X(0) = D²E(X)(0)[∂_1Φ, ∂_2Φ] + DE(X)(0)[∂_1∂_2Φ],
where e_0, e_x are unit coarse test fields at the bonds 0 and x (one Lie direction each; the B-test has no norm factor here, since (K_U) is stated per bond). By (K_U):
 |Π(0, x)| ≤ Σ_X cE_0e^{−κd(X)}K_U(4K_U/r_0² + 1/r_0)e^{−δ_U(dist(0,X) + dist(x,X))}.
Step 4 (summation). Let S_k := Σ_{z∈Z^d}e^{−δ_U|z|}(1 + |z|)^k < ∞. For each x pick a nearest u ∈ X and write x = u + z, |z| = dist(x, X); this map is injective. So Σ_x|x|²e^{−δ_U dist(x,X)} ≤ 2|X|(S_0R_X² + S_2), R_X := max_{u∈X}|u| ≤ dist(0, X) + diam X. Group X by a point u_0 ∈ X nearest to 0. With S_0a² + S_2 ≤ (S_0 + S_2)(1 + a)² and (1 + a + b)² ≤ (1 + a)²(1 + b)²:
 |β| ≤ Σ_x|x|²|Π(0,x)| ≤ cE_0·C_Π,
 C_Π := 2(S_0 + S_2)S_2·K_U(4K_U/r_0² + 1/r_0)·K_2,
 K_2 := sup_j sup_u Σ_{X∈D_{j+1}, X∋u}e^{−κd_{j+1}(X)}|X|(1 + diam X)².
(Lie-direction sums for μ, ν fixed: the tensor is δ^{ab}Π, (1.21), so one direction suffices.) C_Π is free of j, k, g and the volume. [P given (H-α), (K_U), c_□.]
Consequence. M_β := cE_0C_Π replaces cE_0K_2ρ_B^{−2} of SOURCES_H_ALPHA §3.4; the structure of Corollary 3.4 and of the R-037/R-038 restorations is unchanged.

3.6 K_2 is finite, with an explicit bound [P given (2.30) (V) and that D_j consists of connected unions of M-cubes (I, the reading of "localization domain" used by (1.28), (2.30))]. Work in d = 4 (the dimension of (2.30)), on the unit lattice of the scale, |X| counted in sites.
Let X ∈ D_j consist of n M-cubes and contain u. Then:
- |X| = nM^4 and diam X ≤ 2nM (each cube has Euclidean diameter 2M = M√4; a connected chain of n cubes), so |X|(1 + diam X)² ≤ 9n³M^6 (M ≥ 1).
- d_j(X) ≥ (n − 1)/24: by (2.30) for n ≥ 2 (n/24 ≥ (n − 1)/24); trivially for n = 1. (At n = 1 the two sides of (2.30) as printed conflict, 1/24 ≤ d ≤ 0; using only (n − 1)/24 avoids that point.)
- Count. The cube that contains u is fixed. Connected sets of n cubes in any adjacency no finer than the 80-neighbour adjacency of Z^4 number at most 81^{2(n−1)}: a depth-first walk around a spanning tree from the fixed cube has 2(n − 1) steps, each "go to one of 80 neighbours" or "go back", and the walk determines the set.
Hence, with r := 6561e^{−κ/24},
 K_2 ≤ 9M^6Σ_{n≥1}n³r^{n−1} = 9M^6(1 + 4r + r²)/(1 − r)^4.
For κ ≥ 24 log 13122 ≈ 227.6, r ≤ ½ and K_2 ≤ 468M^6. At the canon value κ ≥ 1536 (N-070), r ≤ 6561e^{−64} ≈ 1.1·10^{−24} and K_2 ≤ 9M^6(1 + 10^{−23}).
K_2 is free of j and the volume; it depends on M, which is fixed at N-310 before any use of C_Π. K_2 is upgraded from [P-sketch] to [P] (given (2.30) [V] and the reading of D_j [I]). The [I] is mild: (1.26), (1.28) and (2.30) all treat Y ∈ D_k as a connected family of M-cubes counted by M^{−4}|Y|.

## 4. Remaining residue of (H-α) and proposed ledger statuses (authoritative; not written into TRUST_LEDGER.md)

4.1 Residue after this file.
- (R1) CMP 109 Theorem 3 as completed in CMP 116 §2 (Balaban's printed proof), run with the per-step cut δ(x*_k), through SOURCES_MC (verified reduction). This is a ledger row (the base of the project), not a new item. §1.5 adds that the per-step cut needs only γ-small conditions at N-470.
- (R2) CLOSED [V + P] (§1). Bookkeeping fix: canon line N-395 for the (1.36) constants C_1, C_2, q (§1.4). No cycle.
- (R3) CLOSED [V + P] (§2), by CMP 122 II p. 380 (factor exp(−γ_0δ_j²/g_j²)) and CMP 116 (1.34), (2.3), (2.22). Two notational [I] items (the "*" bond set, C = identity off the bonds b_0(c)) do not affect Proposition A.
- (R4) (1.12): CLOSED [P] (§3.2). J: inside (K_U) [R; complex J bound I]. K_2: [P] (§3.6). NEW: the extraction needs the decay of the minimizer map (§3.3); this is now part of (K_U) [R], with C_Π of §3.5.
So the residue of (H-α) ⇒ M_β, C_β, D is: (R1) [ledger: Balaban + SOURCES_MC], R-036 [verified], and one named constant input (K_U) (kernel bounds (K_U-1), (K_U-2) of the minimal-configuration map at the trivial background, with J and decay) plus the BCH constant c_□ [P-sketch]. No [I] remains in the chain except inside (K_U) (the complex J norm) and the two notational items of (R3).

4.2 Proposed statuses.
- R-040 (H-hol), small field: verified reduction (grade unchanged). |β_j| ≤ M_β := cE_0C_Π (C_Π of §3.5) for the frozen whole-lattice map, relative to Proposition A [R: CMP 109 Thm 3 + CMP 116 §2 + SOURCES_MC + R-036], (K_U) [R], c_□ [P-sketch]. Former open items (A1)–(A3) and (R2), (R3): all [V] or [V + P]. Correction to record: L1_F §5.4 and SOURCES_H_ALPHA §3.3–§3.4 omit the nonlocal dependence of U_{j+1}(exp iB) on B; the bound needs the decay δ_U (§3.3).
- R-037 (H-hist): reduced (grade unchanged). Input list of its small-field half: Proposition A and (K_U) through C_Π (C_β = C_ΠS_0).
- R-038 (H-hist2) and H-120 (H2-hist): unchanged grades; same input through D ∝ C_Π.
- R-042 (N3): verified reduction (grade unchanged). Its inputs R-037, R-040, H-120 route through Proposition A and (K_U); no [I] of (H-α) remains on this path outside (K_U).

## 5. Report (≤100 words)

CMP 116 §2 (images): E_0 first; then κ, κ_1, M, the α's; then the (1.36) constants C_1, C_2, q; then ε_1; ε_2 is a definition; γ last. This matches the canon. No cycle. One slot fix: the (1.36) constants differ from N-060's (1.20) constants and belong after N-370. The per-step cut adds only γ-small conditions. CMP 119 (3.16) is (2.9) with ε_1 → δ_k; CMP 122 II p. 380 (factor δ_j²/g_j²) settles the scaling. (1.12) closes with U = 1. K_2 is now [P] (≤ 468M^6). New correction: the minimizer map is nonlocal, so K_U must include kernel decay.
