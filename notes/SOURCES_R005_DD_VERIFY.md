# SOURCES_R005_DD_VERIFY — adversarial check of SOURCES_R005_DD.md and numerics/r005_cz.py

Written 2026-10-29 by Claude (Opus 5.5), verifier. Ids follow IDS.md.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every search.
No existing file was edited. PLAN.md was not changed. sync.sh was not run. New file: this file only.
Page images read in this session (pdftoppm -r 150, fresh folder /tmp/r005v_img, deleted after use):
- CMP 99: pp. 392, 395, 396, 397, 398, 399, 400, 403, 404, 419, 420, 421, 422, 423.
- CMP 102: pp. 287, 297, 298, 299, 300, 306, 307, 308.
- CMP 109: pp. 262, 271, 272, 273.
Not imaged by me: CMP 99 pp. 394 ((3.21), (3.25)), 418; CMP 102 pp. 286 ((45)–(47)), 296, 305, 309; CMP 109 p. 263 ((1.17)). Claims that rest only on these pages are marked so.
Grades: CONFIRMED (the claim holds as written); CORRECTED (the claim needs a change, given here); UNSUPPORTED (no support found, or the cited support does not exist).

## 0. Verdict

The main result is CONFIRMED. On the Landau slice, CMP 102 (138) [image p. 299] gives Δ′_πH with the derivative on the left only. So (O-π) is not needed on-shell. CMP 102 p. 297 [image] builds G from Δ_a = Δ + DRD* + Q*aQ. CMP 99 p. 421 [image] calls this operator G_0, and Thm 3.3 [image p. 399] gives its Laplace bound. The Thm 3.12 exception [image p. 423] concerns only the π-operators G, G_1. The two operator identities are correct; I rederived both. The Δ, D*D and P_1 entries on-shell follow, relative to the sup entry.
The off-shell analysis is CONFIRMED in substance. I add one independent check (§3, V6.3b): the bad term cannot be removed by moving the derivative into G̃_0. The rerun of the numerics gives the same numbers.
Three items are CORRECTED:
(1) CMP 109 p. 272 states the Landau condition before the substitution J_{k+1} → J. At that point U = U_{k+1} and J = J_{k+1}, which is on-shell. The off-shell gap is the Δ bound in (3.14)–(3.15) at the variable (U, J). The Landau identity itself is not needed off-shell.
(2) The complex extension of (3.49) is printed on CMP 99 p. 403, not p. 400.
(3) The d = 4 numerics are not independent evidence. The ℓ¹ row norm in d = 4 equals the d = 2 value exactly (§4).
One citation is UNSUPPORTED by my check: CMP 109 (1.17) in (R-b). The bound that I read is (1.16) on p. 262.

## 1. Printed inputs (checked on images)

V1.1 CONFIRMED. CMP 102 p. 297: "where Δ_a = Δ + DRD* + Q*aQ (the constant a = 1). For the operator Δ_a^{−1} = G we have proved Theorem 3.3 in [5], and especially the bounds (3.42) for the second order operator." The same page says that the functional (74) has "the operator Δ instead of Δ_π" on the space RD*A′ = f. (129) H_0B = GQ*(QGQ*)^{−1}(L^{j(·)}η)^{−1}B satisfies "(3.133) [5]".
V1.2 CONFIRMED. CMP 99 p. 421: "G_0 = (Δ + DRD* + Q*aQ)^{−1}", (3.130) G = G_0(I − Δ′_πG_0)^{−1}. So CMP 102's G is the G_0 of CMP 99 §3.E. CMP 99 (3.26)–(3.27) p. 395 define the same Δ_a and G. Thm 3.3 p. 399: G(U) (a = 1) satisfies (3.42)–(3.47) with λ replaced by J. Thm 3.12 p. 423: "The exception is the inequality in (3.42) involving the covariant Laplace operator. It does not hold for G, G_1." Here G, G_1 are the π-operators of (3.122) and (3.128). The correction of SOURCES_L1_C (L-G) is CONFIRMED.
V1.3 CONFIRMED. CMP 102 (130) p. 298: |(Δ_{U_0}H_{0,μν})(x, y′)| ≤ B_0(L^jη)^{−3}(L^{j′}η)^{−d}e^{−δ_0d(y,y′)}.
V1.4 CONFIRMED. CMP 102 p. 299: "Above we have used the equality RD*H = 0. This equality implies also that Δ′_πH simplifies essentially" and (138) 2⟨A, Δ′_πHB⟩ = ⟨i[(G′RD*A)(b_−) + R_b(G′RD*A)(b_+), (HB)(b)], J⟩; (139); (140) D*DHB = (D*D + DRD*)HB = (D*D + DD*)HB − DPD*HB.
V1.5 CONFIRMED. CMP 102 p. 300: "GP_0* = G − GQ*(QGQ*)^{−1} = G̃". With (131) P_0 = I − GQ*(QGQ*)^{−1}Q and G symmetric, GP_0* = G − GQ*(QGQ*)^{−1}QG. The printed formula drops the factor QG. The misprint reading is correct.
V1.6 CONFIRMED. CMP 102 p. 306: (179), and "defining G = (Δ_a − Δ^{(2)})^{−1} … the new operator G has exactly the same properties as Δ_a^{−1}", (180).
V1.7 CONFIRMED. CMP 99 (3.119), (3.120) p. 419; (3.122), (3.124), (3.126) p. 420; (3.131), (3.132), (3.133), (3.136) p. 422; (3.137), Thm 3.12 p. 423; (3.42) p. 397; (3.43)–(3.45) p. 398; (3.49), Thm 3.3 p. 399; Thm 3.4, (3.50)–(3.53) p. 400; (3.35)–(3.38) p. 396 and the "another paper" sentence pp. 396–397. All agree with the quotations in SOURCES_R005_DD §2.
V1.8 CORRECTED (page). SOURCES_R005_DD §3 cites "CMP 99 p. 400 (text layer)" for "the operator P(U′U) satisfies the bounds (3.49)". The sentence is on p. 403 [image], followed by (3.68) P(U′U) = P(U) + P′(A) with the same kernel bounds times O(1)α_1. The content is correct.
V1.9 CONFIRMED. CMP 109 p. 262 [image]: U is G^c-valued; J is g^c-valued and independent; (1.14) |J| < γ_0. CMP 109 p. 273 [image]: "functions H_j, H_k depending on U, J … we replace the configurations U_{k+1}, J_{k+1} occurring in operators there by the configurations U, J"; r max{|δH_j|_X, |P_1δH_j|_X, |∇^ξ_UδH_j|_X, |Δ^ξ_UδH_j|_X} = ⅓α_2; the domain (3.16); the bound (3.17) on that domain.
V1.10 Extra printed fact, not in SOURCES_R005_DD. CMP 102 p. 300 [image] says that (143) "does not imply necessarily that solutions satisfy the Landau gauge condition, which was used in the derivation of (143)". CMP 102 p. 287 [image] says that the choice h = H in the linearizing map "is by no means a unique choice". The first sentence supports §6.2 of SOURCES_R005_DD. The second sentence suggests one more repair route (another h off-shell). I did not check that route.

## 2. Consumer analysis (SOURCES_R005_DD §1)

V2.1 CONFIRMED. CMP 109 (3.14) and (3.15) [image p. 272–273] list |A|, |P_1A|, |∇^ξ_UA|, |Δ^ξ_UA|. D*D is not in the list. On p. 272, D*D enters only through the identity D*D + DRD* = D*D + DD* − DPD* = Δ^ξ_U − P_1 + (lower order, local operator). So P_1 = DPD* up to a local term. The correction of L1_C_VERIFY V6.5(c) is CONFIRMED.
V2.2 CONFIRMED. Complex U is needed: the domain (3.16) is a subset of U^c_j, and U is G^c-valued there.
V2.3 CONFIRMED. Off-shell (U, J) is needed: (3.17) is claimed on all of (3.16), where J obeys only (1.14) and (iii).
V2.4 CONFIRMED. CMP 102 Prop. 9 needs only on-shell points: in CMP 102, H = H(U_0) and J is the J of U_0 (p. 287 [image]: "D(A′) … is a function of the configuration U_0 … the operator H(U_0)").
V2.5 CORRECTED. SOURCES_R005_DD §6.2 and §8 (R-010 note) say that the Landau condition "which CMP 109 p. 272 invokes for H_j(U, J)" holds on-shell only, and call this "an unproved step of CMP 109 p. 272 … at off-shell J". The image of p. 272 shows the order. Balaban uses RD*H_j = 0 in the paragraph after (3.11), for U = U_{k+1}. The text replaces J_{k+1} by J only after (3.12). The functions H_j(U, J) appear only on p. 273. At U_{k+1}, J_{k+1} the condition holds (V3.4 below). Off-shell, the function (3.13) is a new analytic function. It has to agree with (3.7) only on-shell. So the Landau identity is not required off-shell. What CMP 109 asserts without proof off-shell is the bound "H_j(B(t)) satisfies (3.14) with ⅓α_2" and the Δ entry of the max in (3.15), at the variable (U, J). The off-shell failure of RD*H stays relevant: it is the reason why term 4 of §6.3 does not vanish. Replace the sentence by: "CMP 109 pp. 272–273 assert the Δ^ξ_U bounds of (3.14)–(3.15) for H_j(U, J) on the domain (3.16) without proof; off-shell RD*H ≠ 0, and one term of Δ′_π(J)H then needs a Hölder bound on J."

## 3. The derivation (SOURCES_R005_DD §3–§6)

V3.1 Lemma K: CONFIRMED. The proof uses d(y′, y″) ≥ d(y, y″) − d(y, y′) and the sum S(a). The scale shift is CMP 99 p. 398 [image]: "we may replace the factor (L^jη)^α by (L^jη)^β(L^{j′}η)^γ with β + γ = α". The rate κ_q lost in the shift is [R] to CMP 96, as the file says.
V3.2 Theorem P (P_1 entry): CONFIRMED with the page change of V1.8. P = I − R is built from G′ on 0-forms. G′ is (Δ_U + Q′*aQ′)^{−1}, which does not contain J. So the bound holds at every (U, J) in the class (3.37). The exponents work: p = −2, q = −1 give (L^jη)^{−3}; the rate ½δ_0 > ⅛δ_0.
V3.3 Identity 4.2(a), G̃ = G̃_0(I − Δ^{(2)}G̃_0)^{−1}: CONFIRMED. I rederived it. G_n^{−1} = G_0^{−1} − Δ^{(2)}. If u = T(G_n)f, then Qu = 0 and G_0^{−1}u − (f + Δ^{(2)}u) ∈ Ran Q*. Uniqueness then gives u = T(G_0)(f + Δ^{(2)}u). This agrees with (180), where only Δ^{(2)}𝒜_0 moves into G and Δ^{(2)}H_0B stays on the right.
V3.4 (3.124) gives RD*H = 0 on-shell: CONFIRMED. HB = GQ*(QGQ*)^{−1}B with the π-operator G, and (3.124) is RD*GQ* = 0. The proof on p. 420 uses only the gauge invariance of ⟨A, Δ_πA⟩ in the form (3.119). (3.119) contains no J. J enters through (3.117) when (3.119) is rewritten as Δ − Δ′_π with Δ′_π at J = J(U). So the condition holds exactly when Δ′_π is taken at J(U).
V3.5 Identity 4.3(a), H = H_0 + G̃_0Δ′_π(J)H: CONFIRMED. I rederived it. G_π^{−1} = G_0^{−1} − Δ′_π(J) (from (3.120) and p. 420). From G_0^{−1}H^u = Q*ω + Δ′_πH^u and QH^u = I, I get ω = (QG_0Q*)^{−1}(I − QG_0Δ′_πH^u). Then H^u = H_0^u + (G_0 − G_0Q*(QG_0Q*)^{−1}QG_0)Δ′_πH^u = H_0^u + G̃_0Δ′_πH^u.
V3.6 (4.3.2), Δ′_πH = ½DRG′Γ(H, J) on-shell: CONFIRMED. Polarization of the quadratic form (3.120) gives ⟨A_1, Δ′_πA_2⟩ = ½[B(A_1, A_2) + B(A_2, A_1)]. With λ_2 = G′RD*A_2 = 0, only ½⟨c(λ_1, A_2), J⟩ remains. This is (138). The rewriting with tr([λ, A]J) = tr(λ[A, J]) is correct. The adjoint of G′RD* is DRG′, because G′ is symmetric and R is an orthogonal projection. Analytic continuation to complex U′U is correct: both sides are analytic, and the real class is a set of uniqueness.
V3.7 4.3(c), kernel of DRG′: CONFIRMED. DRG′ = DG′ − (DP)G′, with (3.42) and (3.49).
V3.8 4.3(d), Laplace kernel of H on-shell: CONFIRMED, with the inputs that the file lists. Real U: |J| ≤ O(1)Mα_0(L^jη)^{−3} follows from (3.36). CMP 99 p. 422 [image] uses this bound for H*J. Complex U′U: the J bound rests on the CMP 99 pp. 396–397 statement "we will prove in another paper". This is correctly tagged [R].
V3.9 4.1 and 4.2(b), Laplace kernels of H_0 and G̃: CONFIRMED. The (QG_0Q*)^{−1} kernel bound is the R-001 family; (3.132) is printed for the π-G, and p. 422 says the other operators "can be analyzed in the same way". The Neumann step needs only sup bounds of Δ^{(2)}. (3.137) is printed for real U on-shell. Off-shell, (3.136) needs a sup bound of H*J only. That needs |J| only, given the sup kernel of H at that point. The file tags this [R]. I agree.
V3.10 Theorem Δ (on-shell): CONFIRMED. The rate argument (outer Laplace rate ≥ (1 − α)²½δ_0 − κ, larger than the inner rate) is correct. The constant is relative to the sup derivation of A4_D189 §6.3, which rests on (189). (190) has rate ⅛δ_0 [image p. 308].
V3.11 Δ_{U_k} versus Δ_{U_0}: CONFIRMED as a sketch. The issue may be empty: CMP 102 p. 306 [image] sets "U_0 = U_k" before (178)–(180). Then (190) is stated at the same background as the operators.
V3.12 Theorem DD: CONFIRMED. D*DX = Δ_UX − DPD*X − WX follows from (135) and RD*X = 0. For RD*X = 0, the file uses 𝒜_0 + H_0B = A′_1 (uniqueness of the solution of (143)). Balaban's remark (V1.10) does not refute this: the remark says that (143) alone does not force the Landau gauge, but the solution is unique and A′_1 solves it. At complex B, analytic continuation gives the identity. The D*D entry is not used by CMP 109 §3 (V2.1). So any residual doubt here does not affect R-010.
V3.13 6.1, off-shell P_1, ∇, H_0- and G̃-parts of Δ: CONFIRMED, relative to the off-shell sup and ∇ entries. Those entries are themselves [R] to Thm 3.12 with a sup-bounded J. (3.131) uses J only through a sup bound. I did not find a step in the printed sup proof that uses (3.36) beyond |J|.
V3.14 6.2, RD*H^u = RG′D*Δ′_π(δJ)H^u off-shell: CONFIRMED. Δ_πDλ = 0 for λ ∈ N(Q′) follows from (3.119): Dλ − DG′RD*Dλ = Dλ − DG′RΔ_Uλ = 0. With (3.120) at J(U), this gives ΔDλ = Δ′_π(J(U))Dλ exactly. The rest is the transpose step that the file writes. The first-order form in δJ is nonzero for non-abelian G and generic data. This is a plausibility claim; I did not compute an example.
V3.15 6.3, structure of the obstruction: CONFIRMED. Term 4 = ½DRG′D*Γ_4(λ_2, J) follows from the term −i[λ_2(b_−), (Dλ_1)(b)] of the polarized form. (3.44) [image p. 398] bounds ∇G′∇*λ only by B′_0(ε)(‖λ‖^{ξ′}_ε + |λ|), with B′_0(ε) → ∞ as ε → 0. The Hölder norm is on the ξ′-scale. For λ that varies on the η-scale, ‖λ‖^{ξ′}_ε ≈ L^{εj′}|λ|. The best choice ε ≈ 1/(j ln L) gives a factor of order j ln L. This is consistent with the numerics.
V3.16 (new check) The derivative cannot be moved into G̃_0. Take μ := G′D*Γ_4 and λ := G′Rμ ∈ N(Q′) (Q′G′R = 0 by (3.25)). Then G_0^{−1}Dλ = Δ′_π(J(U))Dλ + DRμ, because QDλ = 0 and Δ_Uλ = Rμ. So G̃_0DRμ = DG′Rμ − G̃_0Δ′_π(J(U))DG′Rμ, and
 Δ_UG̃_0(DRG′D*Γ_4) = DRG′D*Γ_4 + (curvature commutator)·G′RG′D*Γ_4 − Δ_UG̃_0Δ′_π(J(U))DG′RG′D*Γ_4.
The first term on the right is term 4 again, with the same ∇G′∇*. So the identity H = H_0 + G̃_0Δ′_πH does not remove the bad term. This supports the [P] grade for the structure. "Not provable from the printed inputs" stays [I]: a cancellation with the J-dependence of λ_2 is not excluded by this check.
V3.17 (R-dom) carries the same item: CONFIRMED. 𝓗 contains −HD(𝒜_0 + H_0B) (179), so the Δ bound of 𝓗 off-shell needs the Δ kernel of H.
V3.18 §7, constants depend on d and L only, fixed before ε_1: CONFIRMED on-shell. The off-shell H-part has no constant: CONFIRMED.

## 4. Numerics (numerics/r005_cz.py, rerun)

I copied the script to a fresh /tmp folder and ran it with python3 -I (run time below 1 s). The output matches §6.3 exactly:
d = 2, ℓ = 2, 4, …, 128 (N = 8ℓ): 1.4827, 1.9489, 2.3991, 2.8433, 3.2854, 3.7270, 4.1683. The increments are 0.4662, 0.4502, 0.4442, 0.4421, 0.4416, 0.4413. (2/π)ln 2 = 0.4413. CONFIRMED.
d = 4, ℓ = 1, 2, 3, 4, 6: 0.9882, 1.4827, 1.7581, 1.9489, 2.2134. These values equal the d = 2 values at the same ℓ.
Extra checks (scratch script, deleted):
- Finite size: N = 16ℓ gives 2.8667 (ℓ = 16) and 3.7503 (ℓ = 64), against 2.8433 and 3.7270 at N = 8ℓ. The offset is about 0.023, and the increment per doubling does not change.
- d = 3 at ℓ = 4, 8, 16 gives 1.9489, 2.3991, 2.8433, again the d = 2 values. d = 4 at ℓ = 8 (N = 64) gives 2.3991.
- Reason: for d = 4, N = 32, ℓ = 4, the sign of the kernel at each (x_1, x_2) does not depend on (x_3, x_4) (checked over the full lattice). Then the ℓ¹ norm of the d-dimensional kernel equals the ℓ¹ norm of its marginal over x_3, …, x_d. The marginal is the d = 2 kernel with the same mass.
Grade: the log growth is CONFIRMED. "d = 4 gives the same values" is CORRECTED in its weight: the equality is exact, not a second confirmation. The d = 4 run gives no evidence independent of the d = 2 run. The growth rate in d = 4 is still (2/π)ln ℓ, by the same identity.
Relevance to Balaban's G′ and to the source Γ_4(λ_2, J) stays [I], as the file says. V3.15 gives an analytic reason for a log of this kind (B′_0(ε) with the ξ′-scale Hölder norm).

## 5. Grade table

| Claim (SOURCES_R005_DD) | Grade |
|---|---|
| 0 / 4.3(b): (O-π) not needed on-shell; Δ′_πH = ½DRG′Γ(H, J) | CONFIRMED (V1.4, V3.4, V3.6) |
| 2 / 4.2: CMP 102 p. 297 builds G̃ from Δ_a (Thm 3.3); Thm 3.12 exception only for π-operators | CONFIRMED (V1.1, V1.2) |
| 2: GP_0* misprint (missing QG) | CONFIRMED (V1.5) |
| 3: Lemma K | CONFIRMED (V3.1) |
| 3: Theorem P, P_1 = DPD* at all (U, J) | CONFIRMED; page of the complex (3.49) statement is p. 403, not p. 400 (V1.8) |
| 4.1: Laplace kernel of H_0 | CONFIRMED (statement on image; proof [R] to R-001 family) |
| 4.2(a): G̃ = G̃_0(I − Δ^{(2)}G̃_0)^{−1} | CONFIRMED (V3.3) |
| 4.2(b): Laplace kernel of G̃, on- and off-shell | CONFIRMED (V3.9; off-shell needs the sup kernel of H at that point [R]) |
| 4.3(a): H = H_0 + G̃_0Δ′_π(J)H | CONFIRMED (V3.5) |
| 4.3(c)–(d): Laplace kernel of H on-shell | CONFIRMED (V3.7, V3.8; complex J bound [R]) |
| 5: Theorem Δ on-shell, real and complex U (3.35)–(3.38), complex B, rate ⅛δ_0 | CONFIRMED, relative to the sup entry and R-019 (V3.10) |
| 5: Δ_{U_k} versus Δ_{U_0} sketch | CONFIRMED as sketch; likely empty (V3.11) |
| 5: Theorem DD via D*DX = Δ_UX − DPD*X − WX | CONFIRMED (V3.12) |
| 1.2: consumers need Δ and P_1, not D*D | CONFIRMED (V2.1) |
| 1.3: complex and off-shell arguments needed | CONFIRMED (V2.2, V2.3) |
| 6.1: off-shell P_1, ∇, H_0- and G̃-parts of Δ | CONFIRMED relative to off-shell sup/∇ entries (V3.13) |
| 6.2: off-shell RD*H ≠ 0, formula RD*H^u = RG′D*Δ′_π(δJ)H^u | CONFIRMED (V3.14) |
| 6.3: term 4 needs ∇G′∇* on a function of J; Hölder J needed | CONFIRMED structure (V3.15, V3.16); non-derivability [I] |
| 6.3: numerics, (2/π)ln growth | CONFIRMED (§4); d = 4 run not independent (CORRECTED weight) |
| 6.2 / 8: CMP 109 p. 272 states the Landau condition for H_j at the variable J without proof | CORRECTED (V2.5): p. 272 states it at U_{k+1}, J_{k+1}; the unproved off-shell item is the Δ bound of (3.14)–(3.15) |
| 6.4 (R-b): cites (1.17) "|J_n| < B_32α′_0(L^nξ)²" | UNSUPPORTED as cited (p. 263 not imaged); (1.16) p. 262 [image] gives |J_n(M′(U))| < α_0(L^nξ)² on X̃^{−2} |
| 6.4 repairs (R-a), (R-b), (R-c) | not graded (the file marks them [I], not checked); one more route noted in V1.10 |
| 7: constants | CONFIRMED (V3.18) |

## 6. Safe statuses

R-005 (CMP 102 (189)/(190) chain). Safe: "Derivative entries of (190): ∇ and Hölder (SOURCES_L1_C 6.4, verified); Δ, D*D and P_1 (SOURCES_R005_DD, verified 2026-10-29 by SOURCES_R005_DD_VERIFY) on-shell, at real and complex U in the CMP 99 class (3.35)–(3.38) and at complex B, relative to the sup entry (A4_D189 §6.3, given (189)) and, at complex B, to R-019. (O-π) is removed on-shell by CMP 102 (138). Residue: (189) itself, R-019, the R-001 family for (QG_0Q*)^{−1}, the complex-U bound on J (CMP 99 pp. 396–397, 'another paper'), two sketches (W bound; Δ_{U_k} versus Δ_{U_0})." The core grade of R-005 does not change: it stays "reduced", because (189) is still Balaban's unproved statement.
R-010 (CMP 116 lower-order terms; R2 R-terms of SOURCES_L1_D). Safe: "Open item added: the Δ^ξ_U entry of (R-dec) and (R-dom) for the H-led term (Landau propagator H of CMP 102 (47)) at off-shell (U, J) of CMP 109 (3.16). CMP 109 pp. 272–273 assert the bounds (3.14)–(3.15) there without proof. Off-shell RD*H ≠ 0, and one term of Δ′_π(J)H needs ∇G′∇* on a function of J, which (3.44) bounds only with a Hölder norm of J; U^c_j gives |J| only. P_1, sup, ∇ and the H_0- and G̃-parts of Δ hold off-shell. Repairs not checked: Hölder condition on J; operators on the on-shell pair of condition (iv); another linearizing map h (CMP 102 p. 287)." The grade name stays; the residue grows by this item. Do not write "the Landau condition of CMP 109 p. 272 is unproved".
R-014 (induction closure, CMP 109 (3.17)). Safe: "The factor 1/r of (3.17) uses the max in (3.15), which contains the off-shell Δ entry above. R-014 carries the same open off-shell item as R-010." No other change.
Binding sets: the new off-shell item should get its own H- id at the next IDS.md update, as SOURCES_R005_DD §8 proposes.

## 7. Report

Verdict: SOURCES_R005_DD holds, with three corrections. On images, CMP 102 (138) removes (O-π) on-shell. CMP 102 p. 297 builds G̃ from the Thm 3.3 operator. I rederived both identities. The on-shell Δ, D*D and P_1 entries hold. Off-shell, RD*H ≠ 0, and term 4 needs Hölder J. My check shows that moving the derivative into G̃_0 does not remove it. The rerun numerics match; the d = 4 values equal d = 2 exactly, so they add nothing. Corrections: p. 272 states the Landau condition on-shell, so the gap is the off-shell Δ bound; the complex (3.49) statement is on p. 403; the (1.17) citation is unsupported.
