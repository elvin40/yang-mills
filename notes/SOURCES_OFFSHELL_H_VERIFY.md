# SOURCES_OFFSHELL_H_VERIFY — adversarial check of SOURCES_OFFSHELL_H.md and numerics/offshell_cz.py

Written 2026-10-29 by Claude (Opus 5.5), verification agent. Ids follow IDS.md. File-local labels (T_1, F, Lemma 1–3, Theorem F, Theorem E) are those of SOURCES_OFFSHELL_H.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
No existing file was edited. PLAN.md was not changed. sync.sh was not run. New file: this file only.
Page images read in this session (pdftoppm -r 150, fresh folder /tmp/offhv, deleted after use):
- CMP 109 pp. 262, 263, 272, 273, 274, 275, 276, 290.
- CMP 102 pp. 287, 298, 299, 306, 307.
- CMP 99 pp. 419, 420.
- CMP 116 pp. 2, 3, 10, 14, 15.
- CMP 119 pp. 251, 266.
- CMP 122 II p. 360.
Text layer only: CMP 109 p. 281 ((4.3)–(4.4), "U = 1, J = 0"); keyword grep over the full text layers of CMP 109, 116, 119, 122 I, 122 II.
Numerics: numerics/offshell_cz.py rerun on the Mac (d = 2, n_b = 6, ℓ = 2…32; d = 3, n_b = 4, ℓ = 2, 4, 6). Run time under one minute.

## Verdict

The core construction holds. Lemma 1, Lemma 2, the fixed-point structure of F, on-shell agreement, analyticity and the sup, ∇, P_1, Δ bounds with a sup bound on J are CONFIRMED relative to the listed inputs. The numerics reproduce to four digits.
The claim that the off-shell item is closed is CORRECTED. The consumer scan (1.3, 1.4, 5.2) missed two later uses of the off-shell function H_k(B′) at the variable (U, J):
(a) CMP 116 Sect. 1 (pp. 2–3, (1.1)–(1.8)) localizes H_k(U, J, B′) through generalized random walk expansions of the propagators H, G̃, H_0. With F in the outer slot, F needs such an expansion with bounds of the type (1.7). CMP 116 p. 3 permits this in principle: "we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds". The file does not construct the expansion. CMP 109 p. 273 also says that the localized functions "will satisfy the bounds (3.14), (3.9)", so the Δ bound must hold for the localized pieces of F, too.
(b) CMP 109 p. 276, (3.31): in the fundamental case the function (t̃ζ̃_□ + t_□ζ_□)H_k(B′) must satisfy |A|, |∇^ηA|, ‖A‖_{1,β} < α_2 on □_0. The Hölder norm ‖·‖_{1,β} of F is not treated in the file.
Both items look closable by the same left-derivative method [I]. Until they are written, the off-shell item is "reduced", not "closed".
Smaller corrections: two citation labels (CMP 119 "p. 9", CMP 122 II "p. 266"); the fundamental-case replacement target (H_k(B′), not H_j(□_0, ·)); the growth ranges in §4; the reading of CMP 102 p. 287 (F is not a change of h).

## 1. Grades

V1.1 J is a replacement variable for J_{k+1}, so the step needs only analyticity on (3.16), the bounds (3.14)–(3.15), and on-shell agreement with (3.7): CONFIRMED for the Cauchy step of pp. 272–273 [image]. p. 272: "we replace the expression J_j by the new variable J"; after (3.12): "we replace J_{k+1} by the variable J". p. 273: "we replace the configurations U_{k+1}, J_{k+1} occurring in operators there by the configurations U, J"; "it follows only from the fact that H_j(B(t)) satisfies (3.14) with 1/3α_2, and δH_j satisfies (3.9)". p. 275: "The variable J replaces the function J_{k+1} as usual". All quotes match the images.
V1.2 Landau condition used on-shell only: CONFIRMED [image p. 272]. RD*H_j = 0 is used in the paragraph after (3.11), before the substitution after (3.12). Also (3.19)–(3.20) [image p. 274] use Q(ξH_j(B_□)) = B_□ at U_{k+1}, before the variables are introduced. Note: Q F = I holds off-shell too (QH_0 = I, QG̃_0 = 0), so this identity would survive in any case [P].
V1.3 "The step uses (A), (B), (C) and (1.19) only": CONFIRMED for the Cauchy step (3.15)–(3.17). CORRECTED for the whole construction. p. 273 [image] continues: "Later we will change these functions by a localization procedure, but new localized functions will satisfy the bounds (3.14), (3.9)". p. 272 [image]: "In the next steps we will construct an expansion of H_j, and for terms in this expansion we will have good bounds, including bounds for the covariant Laplace operator." So the off-shell function enters later constructions through its expansion, not only through (A)–(C). See V1.4.
V1.4 "No other use of off-shell values of H_j" (the [I] scan): CORRECTED. Text-layer grep of CMP 109, 116, 119, 122 I/II for "variables U, J", "replace … J", "(U, 0)", "Landau", (179), (180), (190), "expansion of H", "localiz… H", "analytic extension"; every hit checked on the image where it concerned H at (U, J). Results:
 - CMP 116 pp. 2–3 [image]: H_k(B′) = H_0B′ + A_0 − HD(H_0B′ + A_0) (1.2), with D(A′) = C(A′ − HD(A′)) (1.3) and A_0 from (1.4), "We have suppressed … the dependence on the variables U, J". The localization uses the random walk expansions (1.6), bounds (1.7), and s-dependent propagators H(s), G̃(s), H_0(s) in (1.8). This is a use of the off-shell function beyond (A)–(C). Missed by the file.
 - CMP 109 p. 276 [image]: (3.29) gauge transformations act on J, B as well; the "final localization" replaces (t̃ζ̃_□ + t_□ζ_□)H_k(B′) by a variable A with the bounds (3.31), which include the Hölder norm ‖A‖_{1,β}. Missed by the file.
 - CMP 109 p. 281 (text layer) and p. 290 [image]: U = 1, J = 0, on-shell. CONFIRMED.
 - CMP 116 pp. 14–15 [image]: the (U, 0) comparison concerns the fluctuation operators Γ_k, C^{(k)}, Δ_k in the activities H(Z), not the background map. CONFIRMED.
 - CMP 119 p. 251 and p. 266 [image]; CMP 122 II p. 360 [image]: (190) cited for exponential decay of H functions at minimizer configurations (on-shell). CONFIRMED in content. Labels CORRECTED: the file's "CMP 119 p. 9" is PDF page 9 = printed p. 251; the file's "CMP 122 II p. 266" is text-layer line 266 of CMP 122 II = printed p. 360 (TRUST_LEDGER R-005 writes "l. 266", which is correct). CMP 119 has its own (190) citation on printed p. 266.
 - CMP 122 II p. 360 also says "These extensions will be discussed later". I did not read the later analytic extensions of CMP 122 in full. That part of the scan stays [I].
V1.5 CMP 102 p. 287 "by no means a unique choice": CONFIRMED [image], quote exact. Reading CORRECTED: the sentence concerns the operator h in the linearizing map A = A′ − hD(A′). F does not change h: D(A′) and V keep Balaban's H inside (CMP 116 (1.3); CMP 102 (180)). F replaces only the outer factor of (179). The construction is legitimate as a new analytic extension (it needs only (A)–(C) for the Cauchy step), but it is not "another h". The better printed support is CMP 116 p. 3 [image]: "we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds".
V2.1 Cauchy estimates in J do not give the Δ bound: CONFIRMED. Δ_U acts in the space variable; a polydisc bound in J does not control it.
V2.2 Hölder-J route not checked: CONFIRMED as stated [I].
V2.3 (1.17) printed on CMP 109 p. 263: CONFIRMED [image]. Printed: |∂U_n(M′(U)) − 1| < B_32α′_0L^{−2n}(L^nξ)² = 2B_3α′_0ξ², |J_n(M′(U))| < B_32α′_0(L^nξ)² on X̃^{−2}, "From Proposition 9 [15]". It holds on the subspace with constants α′_0, α′_1. This supports the SOURCES_R005_DD (R-b) citation that SOURCES_R005_DD_VERIFY graded UNSUPPORTED; regrade it to CONFIRMED [image p. 263], subspace only.
V3.1 Definition T_1(J)K = ½DRG′Γ(K, J): CONFIRMED. Transposition: ⟨i[λ, K], J⟩ = ⟨λ, i[K, J]⟩ by ad-invariance of the trace form; the R_b-term moves to b_+ with R_b^{−1}; G′, R symmetric (R = I − G′Q′*(Q′G′²Q′*)^{−1}Q′G′ is a symmetric projection, P_0² = P_0 checked); (D*)^T = D. For complex U these are bilinear transposes, which is what analytic continuation needs.
V3.2 Lemma 1 (T_1 = Δ′_π when G′RD*K = 0): CONFIRMED [image CMP 99 p. 419]. (3.120) reads ⟨A, Δ′_πA⟩ = ⟨i[λ(b_−), A(b)] − i[A(b), R_bλ(b_+)] − i[λ(b_−), (Dλ)(b)], J⟩ with λ = G′RD*A. The file's c(λ, A) and the polarization are correct; with λ_2 = 0 three of the four polarized terms vanish. CMP 102 (138) [image p. 299] is exactly the case K = HB: 2⟨A, Δ′_πHB⟩ = ⟨i[(G′RD*A)(b_−) + R_b(G′RD*A)(b_+), (HB)(b)], J⟩.
V3.3 Lemma 2 (Δ_UG_0 = I + (W − Δ′ − Q*aQ)G_0 + DPD*G_0, first-order conditions on U only): CONFIRMED [image CMP 102 p. 298]. (134) prints (Δ + DRD*)A_0 = (D*D + DD*)A_0 + (Δ′ − DPD*)A_0, and (135) prints D*D + DD* = Δ_U − (plaquette term W). With Δ_a = Δ + DRD* + Q*aQ, Δ_aG_0 = I gives the identity. The sizes of W, Δ′ (O(Mα_0)(L^jη)^{−2}) and DPD* ((3.49)) are [R] to CMP 99, as the file says. Note: for G̃_0 the identity gives Δ_UG̃_0 = I − Q*(QG_0Q*)^{−1}QG_0 + (W − Δ′ − Q*aQ + DPD*)G̃_0; the middle term needs the (QG_0Q*)^{−1} kernel (R-001 family), which the file lists.
V3.4 Lemma 3 (kernel of T_1, sup J only): CONFIRMED relative to (3.42), (3.49). The numerics support the one-derivative bound (V4.3).
V3.5 Theorem F (a), (b): CONFIRMED. Ratio C_Fc_J ≤ ½; uniform limit of polynomials in J with U-analytic coefficients.
V3.6 Theorem F (c) and "the fixed-point equation for F has no term with two derivatives on G′": CONFIRMED. T_1F = ½DRG′Γ(F, J) is a function with a sup bound (one derivative on G′, |Γ| ≤ c_Γ|F||J|). ∇G̃_0 and Δ_UG̃_0 then act on a bounded function; the composite ∇G̃_0D or DRG′D* is never formed as an operator. In Balaban's literal extension, Δ′_π(J)H contains −½⟨i[λ_1(b_−), Dλ_2], J⟩-type terms with λ_2 = G′RD*H ≠ 0 off-shell, which give DRG′D* (Calderón–Zygmund type). T_1 drops exactly those terms. The difference to SOURCES_R005_DD_VERIFY V3.16 is correctly stated in the file's remark.
V3.7 Theorem F (d) gauge covariance: CONFIRMED as [P-sketch]. Γ(K, J)(x) maps to R(u(x))Γ under K → R(u_−)K, J → R(u_−)J, U → U^u, because R(U^u(b))^{−1}R(u_−) = R(u_+)R(U(b))^{−1}. D, R, G′, G̃_0, H_0 are covariant. The transformations of CMP 109 (3.29) [image p. 276] are G^c-valued near G-valued; analyticity covers them.
V3.8 Theorem F (e) on-shell agreement: CONFIRMED relative to (4.3.1) (SOURCES_R005_DD_VERIFY V3.5) and RD*H = 0 on-shell. H is a fixed point of K ↦ H_0 + G̃_0T_1(J(U))K by Lemma 1; the contraction gives uniqueness in the weighted norm, and H has finite norm by (3.133). The on-shell J(U) satisfies the same sup bound, so the same contraction applies.
V3.9 Scale of J, c_J = L³α_0: CONFIRMED in form [image p. 272, (3.12)]: D*ξ^{−2}π Im∂U_{k+1} = (L^{j−1}η)³J_{k+1}, so |J_{k+1}| < α_0 gives a bound α_0(L^{j−1}η)^{−3} = L³α_0(L^jη)^{−3} on the left side. The identification of the left side with the CMP 99 J of (3.120) (ξ, η and π factors) was not checked. It changes only the (d, L) constant in a_F.
V3.10 Theorem E (E1)–(E4): CONFIRMED relative to 6.1, with the scope of V1.3–V1.4. Δ, ∇, P_1 act only on the leftmost factor; F, G̃, H_0 are the leftmost factors of X_F by (182)–(183) [image CMP 102 p. 307]; the inner kernels (𝔇, which contains Balaban's H, and δ𝒜_0/δB) need sup bounds only. (E2) at (1, 0): T_1(0) = 0 and Δ′_π(0) = 0, so F = H = H_0. CONFIRMED.
V3.11 Theorem E (E5) gauge invariance (1.19): CONFIRMED as [P-sketch], via V3.7 [image p. 263 for (1.19)].
V3.12 5.1 "The same replacement is made in H_j(□_0, ·) of the fundamental case": CORRECTED. In (3.21)–(3.25) [images pp. 274–275] the J-dependent object is H_k(B′) in (3.22), (3.25) ("The function H_k and the averaging operations Q_j in the definition of B̃_□ depend on U_{k+1} … The variable J replaces the function J_{k+1} as usual"). H_j(□_0, ·) in (3.21) is evaluated at U_{k+1} before the substitution. The replacement target is the outer H of H_k(B′).
V3.13 5.2 (3.14)–(3.17) on all of (3.16) with B_3^F: CONFIRMED for the Cauchy step as printed on p. 273 [image]. Not sufficient for the later uses in V1.4 (CMP 116 Sect. 1 localization; CMP 109 (3.31) Hölder norm).

## 2. Numerics (numerics/offshell_cz.py)

V4.1 Code: CONFIRMED. Row x of D_1G′D_ν^T is computed as D_νG′D_1^Te_x, and of D_1RG′D_ν^T as D_νG′RD_1^Te_x; both are correct because G′ and R are symmetric. The mass term aℓ^{d−2}Q′^TQ′ with Q′ = block average gives a mass ℓ^{−2} on block-constant functions, so ℓ is the infrared cutoff. R matches CMP 99 (3.25) as used on p. 419 (RΔλ = Δλ for Q′λ = 0). Periodic box N = n_bℓ.
V4.2 Rerun: all 30 printed numbers reproduce to four digits. d = 2 increments per doubling of ℓ (ℓ = 4→8→16→32): D_1G′D^T center 0.914, 0.887, 0.883; D_1RG′D^T center 0.902, 0.896, 0.883; D_1RG′D^T corner 1.286, 1.143, 1.021. The free value (4/π)ln 2 = 0.8825 is correct: for the continuum kernel ∂_1∂_νG = (2π)^{−1}∂_1∂_ν ln r, the angular ℓ¹ integral is 4 for each ν, so the ℓ¹ norm is (4/π)ln(R) summed over ν = 1, 2. The file's "0.88–0.90 (center)" is CORRECTED to 0.88–0.91, and "1.02–1.15 (corner) for ℓ ≥ 4" to 1.02–1.29 (the corner values approach the center rate from above). The conclusion (log growth that R and the block mass do not remove) is CONFIRMED.
V4.3 D_1RG′/ℓ bounded: CONFIRMED on the range. Center 0.46–0.52; corner 0.502, 0.585, 0.650, 0.687, increments 0.083, 0.065, 0.037 (decreasing). This agrees with (3.42). Boundedness for all ℓ is [I] from the range alone, but it agrees with the continuum count (∂G ~ r^{1−d}, cutoff at r ~ ℓ, ℓ¹ norm ~ ℓ).
V4.4 d = 3: CONFIRMED as a separate, short-range check. D_1RG′D^T center 4.49, 5.34, 6.16 for ℓ = 2, 4, 6; values differ from d = 2. Three points do not fix a rate.
V4.5 "Balaban's literal extension has no j-uniform Δ bound": the file grades it [I]. I agree; the numerics measure the kernel norm, not a cancellation inside H_B.

## 3. Canon entry

V5.1 Cap α_0 ≤ a_F(d, L) := 1/(2C_FL³): CONFIRMED in placement, with notes. C_F = C_{G̃}·½c_ΓC_{RG}c_s²S² uses B_0, B_3-stage CMP 99 constants, which the canon fixes at N-060 as (d, L) constants. So a_F is a (d, L) constant; the cap is enforced where α_0 is chosen (N-370 α-chain). Grouping it with the scaled J-caps of SOURCES_ORDER_CANON A.1 lines 15–16 (and next to N-350) is consistent, because the cap is M-free. No cycle: a_F does not use B_3^F.
V5.2 B_3 → B_3^F: CONFIRMED, with one addition. Canon B_3 is fixed at N-060; B_3^F must be fixed there too, and every later use of B_3 takes B_3^F (at least N-380 ε_0^{109} ≤ α_0/(2B_3), N-440, N-450, and (1.17)). Its inputs are (d, L) constants, so this is possible.
V5.3 The CMP 99-to-CMP 109 J conversion (V3.9) may change the numerical value of a_F by a (d, L) factor; it does not change its position.

## 4. Grade table

| Claim | Grade |
|---|---|
| 1.1 J replaces J_{k+1} (pp. 272, 273, 275 "as usual") | CONFIRMED [images] |
| 1.2 Landau condition used at U_{k+1}, J_{k+1} only | CONFIRMED [image p. 272] |
| 1.3 step uses only (A), (B), (C), (1.19) | CONFIRMED for the Cauchy step; CORRECTED for the construction (later localization, p. 273) |
| 1.4 no other use of off-shell H_j | CORRECTED: CMP 116 Sect. 1 random-walk localization of H_k(U, J, B′); CMP 109 (3.31) ‖·‖_{1,β}; CMP 122 later extensions [I] |
| 1.4 citation labels CMP 119 "p. 9", CMP 122 II "p. 266" | CORRECTED: CMP 119 p. 251; CMP 122 II p. 360 (text line 266) |
| 1.5 CMP 102 p. 287 quote | CONFIRMED; reading CORRECTED (F is not a change of h; CMP 116 p. 3 is the better support) |
| 2.1 Cauchy estimates in J insufficient | CONFIRMED |
| 2.2 Hölder-J route not checked | CONFIRMED as stated |
| 2.3 (1.17) printed on CMP 109 p. 263 | CONFIRMED [image] |
| Lemma 1 | CONFIRMED [image CMP 99 p. 419; CMP 102 (138) p. 299] |
| Lemma 2 | CONFIRMED [image CMP 102 p. 298]; sizes [R] |
| Lemma 3 | CONFIRMED relative to (3.42), (3.49) |
| Theorem F (a), (b), (c), (e) | CONFIRMED relative to 6.1 |
| No term with two derivatives on G′ | CONFIRMED |
| Theorem F (d), Theorem E (E5) | CONFIRMED as [P-sketch] |
| Theorem E (E1)–(E4) | CONFIRMED relative to 6.1, for the Cauchy step |
| 5.1 fundamental-case target H_j(□_0, ·) | CORRECTED: target is H_k(B′) of (3.22), (3.25) |
| 5.2 (3.14)–(3.17) on (3.16) with B_3^F | CONFIRMED for the Cauchy step |
| "off-shell item closed" (§0, §8, 6.3) | CORRECTED: reduced; open items (a) random-walk expansion of F with (3.14)/(3.9) bounds for its localized pieces, (b) ‖F‖_{1,β} for (3.31) [I, both look closable] |
| §4 numbers | CONFIRMED (rerun) |
| §4 d = 2 growth 0.88–0.90 center, 1.02–1.15 corner | CORRECTED: 0.88–0.91 center, 1.02–1.29 corner |
| §4 d = 3 differs, growth persists | CONFIRMED (short range) |
| §4 D_1RG′/ℓ bounded | CONFIRMED on range |
| Literal extension has no j-uniform Δ bound | [I], agreed; not proved |
| 6.2 canon: a_F(d, L) with the J-caps, B_3^F | CONFIRMED; add: B_3^F at N-060 and in every later B_3 use; a_F value depends on the unverified J-conversion |

## 5. Safe statuses

R-005. Keep the on-shell status unchanged. Add: "Off-shell (CMP 109 variable J): with the left-derivative extension F of SOURCES_OFFSHELL_H (verified with corrections, SOURCES_OFFSHELL_H_VERIFY), the sup, ∇, P_1 and Δ entries of the H-led term hold with a sup bound on J [P relative to its 6.1 inputs]. For Balaban's literal extension the Δ entry is open; the kernel ∇G′∇* has ln ℓ growth with blocks (numerics, rerun) [I for the transfer]. (1.17) is printed on CMP 109 p. 263 [image]."
R-010. Replace the open off-shell item by: "Off-shell Δ entry of (R-dec), (R-dom) for the H-led term: reduced [P, SOURCES_OFFSHELL_H Theorem E, verified] to two items by replacing the outer H of CMP 102 (179) with F = (I − G̃_0T_1(J))^{−1}H_0, which equals H on-shell. Open [I]: (a) a generalized random walk expansion of F with the bounds of CMP 116 (1.6)–(1.7), whose localized pieces satisfy (3.14), (3.9) (CMP 116 Sect. 1; CMP 109 p. 273); (b) the ‖·‖_{1,β} bound of CMP 109 (3.31) for F. Cost: α_0 ≤ a_F(d, L); B_3 → B_3^F." Grade name unchanged; residue R2 keeps the off-shell item in this reduced form. Do not write "closed".
R-014. "The factor 1/r of (3.17) uses the max of (3.15). With the F-extension that max is bounded by B_3^F on all of (3.16) [P relative to SOURCES_OFFSHELL_H 6.1, verified]. R-014 carries the same two open items (a), (b) as R-010, because CMP 109 p. 273 requires (3.17) to survive the later localization." Its own status (asserted (Balaban), constant unspecified) is unchanged.
Canon entry. Safe text: "a_F := 1/(2C_FL³), a (d, L) constant fixed with the CMP 99 constants (N-060 stage); cap α_0 ≤ a_F enforced in the α-chain (N-370), listed with the J-caps of A.1 lines 15–16, next to N-350. B_3^F := max{B_3^{on}, B_3^{(F)}} replaces B_3 at N-060 and in every later use (N-380, N-440, N-450, (1.17)). The numerical value of a_F depends on the CMP 99/CMP 109 J-conversion, not checked [R]. Id to be assigned at the next IDS.md update."

## 6. Report

The construction holds: Lemma 1 (CMP 99 (3.120), CMP 102 (138)), Lemma 2 ((134)–(135)), the F fixed point with no DRG′D* term, on-shell agreement, analyticity and sup/∇/P_1/Δ bounds with sup J, all confirmed. Numerics reproduce. (1.17) is printed on p. 263. "Closed" is corrected to "reduced". The scan missed CMP 116 Sect. 1, where H_k(U, J, B′) is localized by random-walk expansions; F needs one. It also missed CMP 109 (3.31), which requires ‖·‖_{1,β}. Citation labels and the fundamental-case target are corrected. The canon cap a_F(d, L) is fine; B_3^F must enter at N-060.
