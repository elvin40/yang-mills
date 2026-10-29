# SOURCES_L1_D_VERIFY — adversarial verification of SOURCES_L1_D (S-54, S-56, S-68, S-52)

Date 2026-10-28. Verifier (Opus). Only this file was written. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
FIREWALL kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every search.
Ids follow IDS.md.

## Verdict

PASS WITH CORRECTIONS. No claim of SOURCES_L1_D is refuted. All four results stand at the grades the target proposes, with these corrections:
1. S-54 (c): the norm constant must carry Σ(½δ_A″), the form of WC_FULL 6.6, not S(½δ_A″).
2. S-54: the new M-condition is not needed as a new entry. Real regular points lie in 𝒰(α″) (WC_FULL 6.0). So the complex form LM ≥ 8·3^dκ_1/δ_A″ covers real U, and H-125 implies it. The real-constant form (δ_A) is optional. If someone keeps it, it adds the Lean edge (N-240, N-310). The target said it adds "no edge". That edge is already implied through N-270, so the order does not change.
3. S-56: the misprint reading of (4.38) is now settled on page images: (1.6) on p. 261 and (2.12) on p. 268. The scale reading of (4.39) and (C-c) stay [I]. Under the (4.39) reading, N_□′ = O(M^d), not an absolute number.
4. S-68: C_O = O(p_0³(g_k)) depends on g_k, so it is not "fixed before ε_1". This does no harm, because no smallness condition uses C_O. The obstruction "iff" holds for the printed chain only, not for H′ itself.
5. S-52: the closure is relative to R-013, H-040 and N9 (N9 enters through (D3)), not to R-013 alone. The slot chain (D0)–(D4) is the B7_CLAMP / HHIST §5 slot chain, so "N7 becomes a definition" restates a verified item. Continuity of β in the slots stays in R-031.

Grades: 49 items (V1–V49): 40 CONFIRMED, 9 CORRECTED (V8, V11, V13, V16, V21, V23, V30, V38, V47), 0 UNSUPPORTED.

## 0. Method

Page images rendered for this file (pdftoppm -r 150, fresh folder /tmp/l1dv_img, deleted at the end):
- CMP 109 pp. 260, 261, 268, 291, 298 (PDF pages 12, 13, 20, 43, 50).
- CMP 116 pp. 9, 17, 18, 19, 20.
- CMP 119 pp. 277, 278 (PDF pages 35, 36).
I did not re-render the pages that I checked only through earlier verified files: CMP 116 pp. 3, 5, 13 (via SOURCES_A7_CDC_VERIFY l. 40 and SOURCES_SRULE_CONVENTION 2.2), and CMP 109 pp. 259, 263, 264, 271–274 and CMP 102 p. 308 (taken as quoted by the target).
Project files read: SOURCES_L1_D (all); SOURCES_ORDER_CANON N-060, N-090, N-240–N-310, A.4 items 10, 13; lean/YmLean/CanonOrder.lean (edges); WC_FULL 0.1, 4.1–4.3, 6.0, 6.5–6.6; SOURCES_HIGHER_M1 B3 (P12); SOURCES_A7_CDC_VERIFY ll. 40–50; SOURCES_SRULE_CONVENTION 1.2–1.3; SOURCES_MULTISCALE_OMEGA_SOURCED_VERIFY W4; SOURCES_SWEEP_G §4; SOURCES_T2_H0 §4.3, §6–§7; SOURCES_G3_N2_VERIFY V5; SOURCES_T2_B7_CLAMP §2; TRUST_LEDGER rows R-006, R-031, K-046.

## 1. S-54 (R-008): complex s and complex U

V1. Page facts 1.1. CONFIRMED (via files). The p. 3 s-rule and the p. 5 sentence ("m > 2^4 … δ_0d(ω) ≥ δ_1mM … m ≤ 2^4 … e^{16κ_1}") agree word for word with SOURCES_SRULE_CONVENTION 2.2 and SOURCES_A7_CDC_VERIFY l. 40. Both of those files read the images. I did not re-render these pages.

V2. Lemma C (i). CONFIRMED [P]. T meets each X_i, and X_i ⊂ X̃_i^5 has diameter ≤ r. So X̃_i^5 ⊂ N_r(T). A depth-first closed walk of length 2D splits into ≤ 1 + 2D/ℓ arcs of length ≤ ℓ. A tree length bounds the sup-extent, in any lattice metric. Each arc neighbourhood has sup-diameter ≤ ℓ + 2r ≤ 1.5ℓ, and it meets ≤ 3 half-open grid intervals per coordinate. σ_0 is a subset of the grid cubes, so the count can only drop.
Units: d(ω, b, b′) is a tree length in the unit metric with L^kη = 1 (WC_FULL 0.1). In these units the CMP 116 Sect. 2 s-cubes (π_{k+1}) have side LM (p. 13 "cubes of the size LM"). So ℓ = LM is the correct side for R-008, and H-125 uses the same side.

V3. Lemma C (ii). CONFIRMED [P]. If every coordinate projection met ≤ 2 intervals, then m ≤ 2^d. Three intervals in one coordinate force an extent > ℓ there. Hence D > ℓ − 2r ≥ ℓ/2, so 1 + 2D/ℓ < 4D/ℓ. The domains need not be connected for this argument.

V4. Remark, r ≤ LM/4. CONFIRMED. P12 is HIGHER_M1 B3 "M/M_1 > 3(6 + c_X)". The canon N-310 text carries the stronger K-025 form 3(7 + c_X). Both give LM/4 ≥ (9/4)(6 + c_X)M_1 ≥ max(c_X, 13.5)M_1 at L ≥ 3 (WC_FULL 0.1: L odd, L ≥ 3). The Sect. 1 side case (ℓ = M) is not part of R-008. If it is needed, M/4 ≥ 13M_1 is already implied by the canon entry M > L²M_1 (R3) at L ≥ 8. So the extra entry M ≥ 52M_1 is not needed.

V5. "The 2^4 threshold is now [P]." CONFIRMED. Lemma C(ii) proves that the threshold 2^d works with δ_1 = δ_0/(4·3^d). Whether Balaban meant 2^d is still a reading, but nothing depends on that reading now.

V6. Proposition S-54 (a). CONFIRMED [P]. If m > 2^d, then κ_1m ≤ 4·3^dκ_1D/ℓ ≤ ½δ_*D exactly when ℓ ≥ 8·3^dκ_1/δ_*. If m ≤ 2^d, the prefactor is e^{2^dκ_1}. K-046 (SRULE 1.2(a), 1.3(i)) makes π_ω a product over distinct cubes, so |π_ω| ≤ e^{κ_1m(ω)}.

V7. (b). CONFIRMED. In WC_FULL 4.2 the factor e^{−δ_A|b−b′|} is extracted first. Then the sum runs over domain sequences with Σ_n(C′_𝒟c_1ρ_A)^n. The junction cost c_1(θδ) belongs to the term constant B_A, which is fixed before the halving. So the count does not change when e^{−δd} becomes e^{−½δd}.

V8. (c). CORRECTED. At real U the Schur bound from (b) is 2e^{2^dκ_1}B_AS(½δ_A), as stated. At complex U the target writes 2C_𝒟e^{2^dκ_1}B_A″S(½δ_A″) "with the count C_𝒟 of WC 6.6". But WC_FULL 6.6 states its complex Schur bound as 2C_𝒟B_A″Σ(δ_A″), with Σ(δ) = sup Σ(1 + d)e^{−δd} ≥ S(δ). The target does not show why the (1 + d) weight can be dropped. The safe form is Γ_1^s := 2C_𝒟e^{2^dκ_1}B_A″Σ(½δ_A″). The weighted form changes in the same way: Σ(½δ − ρ).

V9. (d). CONFIRMED. Each π_ω is a polynomial in s, of degree ≤ 1 in each s(Δ). Each A_ω is analytic on 𝒰(α″). The convergence is uniform by (b). At s ≡ 1 every weight is 1.

V10. "(H_s) fits the canon order; complex part implied by H-125." CONFIRMED. κ_1 is N-090. δ_A is N-240 and δ_A″ is N-250, both before M_1 (N-270). ε″ := min{½δ_A″, …} (canon A.4 item 13). So H-125 gives LM ≥ 16·3^dκ_1/ε″ ≥ 32·3^dκ_1/δ_A″ > 8·3^dκ_1/δ_A″. H-125 itself is implied by the current N-310 entry (H_κ^{f,Ω}).

V11. "Its real part needs a new N-310 entry; it adds no edge." CORRECTED, in two parts.
(a) The real part is not needed. WC_FULL 6.0 defines 𝒰(a) as the set of (U′U, J) with real regular U, and its real points U_c^0 = (U, 0) are members. So (a)–(c) on 𝒰(α″) already hold at real U, with (B_A″, ρ_A″, δ_A″). The real-constant form LM ≥ 8·3^dκ_1/δ_A is needed only if a consumer quotes R-008 at real U with (B_A, δ_A). I did not find such a consumer of the complex-s clause. The canon gives no order between δ_A and δ_A″ (N-240 vs N-250 with θ_c), so H-125 does not imply the real form.
(b) If the real form is kept, it uses δ_A (N-240). The Lean file has no direct edge (N240, N310). The edge is implied through (N240, N270) and (N270, N310), so the order does not change, but one Lean edge must be added. The M_req count of N-310 also increases by one.

V12. 1.5(i), no M_1 condition. CONFIRMED, with one caveat. The A7_VERIFY l. 41 concern was the per-piece weight (s^k for a cube that k pieces meet). Under K-046 (SRULE 1.3(i)) a W_N tree gets one factor per distinct cube, and Lemma C counts distinct cubes. So A_exp(s) needs no M_1 condition, and the N-270 entry "the R-008 complex-s clause" can be marked "not needed". Caveat: a product such as Γ_k(Z_0, σ) also contains (C^{(k)})^{1/2}(σ). The complex-s bound for that factor is R-009's (H-125), not this file's. The fixed factor e^{p2^dκ_1} is correct only when each factor has its own bound.

V13. 1.5(ii), the optional (2.7) series. CONFIRMED that it is not needed under K-046 (d), with one CORRECTED remark. Canon N-060 lists a γ_1 among the first (d, L) constants (the canon does not say that it is the (2.7) split point; I assume it is), before κ (N-070) and κ_1 (N-090). If a reader adopts the complex-s (2.7) series with γ_1 > 2e^{2^dκ_1}B_A…, then γ_1 must move after N-090. So this is a canon change, not "harmless". Under K-046 (d) the series is not used, so nothing moves.

V14. 1.5(iii). CONFIRMED.

S-54 result: CLOSED, verified with corrections V8, V11, V13.

## 2. S-56 (R-010 R2): R-terms and C-terms

V15. Page facts p. 291, p. 260 (= (1.3)), p. 298. CONFIRMED on the images. On the p. 260 image, (1.3) also prints "E^{(j+k)}(g_j, 1)" for E^{(j+1)}(g_j, 1). This is a second index misprint in the same paper, and it is consistent with the target's reading of (4.38).

V16. "The third expression of (4.34) is 0 by Euclidean symmetry (p. 298)." CORRECTED (wording). The p. 298 image says: "The third term is equal to 0. In both cases we have used the fact that the first and second order derivatives of the function Π′_μν(p) vanish at p = 0 … These calculations are the same as in (4.43), (4.45)." For the counterterm, the third term vanishes by (4.45) on p. 292 (text layer). The page does not use the word "symmetry". The result (zero, no bound needed) is unchanged.

V17. The misprint reading of (4.38) (C-a, first half). CONFIRMED and SETTLED on the images. Upgrade [I] → [V + P]. The evidence:
(a) The p. 291 image prints β_j(g_{j−1})(A(U_j(exp iB′V^{(k)})) − A(U_k(V^{(k)}))). So the U_j is printed, not an OCR error.
(b) The same page, two lines above, names the companion term as E^{(j)}(U_k(exp iB′V^{(k)})) − E^{(j)}(U_k(V^{(k)})), with U_k in both slots.
(c) The p. 268 image of (2.12) has the curly bracket {E_k(U_k(exp i[g_kCB − hD̃(g_kCB)]V^{(k)})) − E_k(U_k(V^{(k)}))}. Here E_k = A_k + g_k^{−2}A.
(d) The p. 261 image of (1.6) gives A_k(U_k) = −g_k^{−2}A(U_k) + Σ_{j<k}{−β_{j+1}(g_j)A(U_k) + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)]}. So E_k contains −β_{j+1}(g_j)A(U_k), at U_k.
(c) and (d) together force the β-part of the bracket to be −Σ_jβ_j(g_{j−1})(A(U_k(exp iB′V^{(k)})) − A(U_k(V^{(k)}))). The p. 292 text also says "(4.38) appears with the minus sign in the effective action (1.6)". So the first argument is U_k, and "U_j" is a misprint. A second check: with U_j, the term would not vanish at B′ = 0, but every term of the curly bracket of (2.12) is a difference that vanishes at B′ = 0.
The second half of (C-a), the scale of the x-sum in (4.39), stays [I]. The (4.39) image writes the localized term with ζ_□′, □′ ∈ π_j, and ∂^ξH_j, which is the ξ-lattice reading. But the page does not show how the fine-lattice A(U_k(·)) becomes the ξ-lattice sum.

V18. 2.2 Steps 1–3, (R-in). CONFIRMED [P-sketch]. Step 2: ⅓α_2 from (R-dom) plus r_R·|δH_j^R| = ⅓α_2 gives ⅔α_2 < α_2. Cauchy gives E_0e^{−κd_j(X)}/r_R. Then 1/r_R ≤ 3α_2^{−1}B_3S_0e^{−½δ_0M(L^jη)^{−1}}b_R. The constant K_R = 3α_2^{−1}B_3S_0b_R follows. Dropping the factor L^jη ≤ 1 of (3.17) is safe.

V19. The second removal (3.22). CONFIRMED as [P-sketch] relative to (R-dec) and Balaban's "very similar form and the same properties" [R].

V20. 2.3 sums. CONFIRMED for the arithmetic. sup_y y^4e^{−¼δ_0My} = (16/(eδ_0M))^4. Σ_me^{−aL^m} ≤ 2e^{−a} when a(L − 1) ≥ log 2, because consecutive ratios are ≤ e^{−a(L−1)} ≤ ½.

V21. "Summed constant smaller than N5's by e^{−¼δ_0M}." CORRECTED. The R-part carries the extra factor (16/(eδ_0M))^4e^{−¼δ_0M}. The comparison with the N5 constant also needs K_R + K_R′ against the N5 type constant. The target does not compare these two, and I did not check them. Safe wording: "the R-part constant is K_R + K_R′ times (16/(eδ_0M))^4e^{−¼δ_0M} times the common factors". No consumer uses the comparison.

V22. (C-b) |β_j| ≤ C_ΠE_0. CONFIRMED as [R] (Π decay in the (5.44)/(4.36) form).

V23. (C-c) N_□′ "an absolute number". CORRECTED. Under the (4.39) reading (plaquettes of the ξ-lattice in a π_j cube of side M), N_□′ ≤ 6(M + 1)^d = O(M^d). This number depends on M, not only on (d, L). It is fixed before ε_1 (N-310 before N-400), so K_T^C stays admissible. Under the other reading (fine-lattice plaquettes of spacing η in a cube of side ML^jη), the count grows like (ML^j)^d. Then Lemma C1(iii) with the absolute c_W fails, and it needs the η²-scaled regularity bound |U(∂p) − 1| ≤ O(α)η² of CMP 109 (1.2) instead. So (C-c) is load-bearing and stays [I].

V24. Lemma C1 (i), (ii). CONFIRMED. (iii) CONFIRMED given (C-c) under the ξ-lattice reading, with N_□′ = O(M^d) (V23).

V25. Proposition C2. Order 1: CONFIRMED. For Hermitian F, tr(iF) is purely imaginary, so Re tr(iF) = 0. Tracelessness is not needed. Marginal cancellation: CONFIRMED on the p. 291 and p. 298 images. "Every other term is an A10 type with E_0 → E_C": CONFIRMED as [P-sketch] relative to A10 §5. I did not re-read A10 §5.

V26. Consumer effect (α_* = β_H unchanged; K_V gains finite constants). CONFIRMED in form.

S-56 result: WRITTEN OUT, verified with corrections. The C-term residue drops from three [I] items to two: (C-a) scale half and (C-c).

## 3. S-68 (R-020 R3): H′(Z_0)

V27. Page facts CMP 119 pp. 277, 278. CONFIRMED on the images. p. 277: (3.44), "H′(Z_0) is different … Although different, it satisfies the same bound as the" (continued on p. 278) "other factors". p. 278: (3.45)–(3.47), "satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0³(g_k)) … the multiplication by g_k yields small bounds".

V28. Page facts CMP 116 pp. 17–20. CONFIRMED on the images: (2.26) bracket Π_{Y∈D}2E_0ε_1C_1α_4^{−1}M^qe^{C_2κ_1}e^{−(1−3δ)κd_k(Y)}; (2.27) with ∪_{Y∈D}Y = Y_0 connected; (2.28) with ε_2e^{5κ} ≤ 1; (2.29); (2.33) with "max{ε_2, …}" and "ε_2 ≤ 1"; (2.36)–(2.37); C_3 and Lemma 3, (2.38). CMP 116 p. 9: (1.36) at rate (1 − 2δ)κ, CONFIRMED.

V29. (H′-def). CONFIRMED as a reading [I]. One point the target leaves implicit: (2.27) needs ∪D = Y_0 (p. 18 image). So X_b must enter as a member of the family whose union is Y_0, and χ_{k,Y_0} must cover X_b. That is what the reading assumes. The page does not print it.

V30. (O1). CORRECTED. The target says that C_O is "fixed before ε_1" and also that C_O = O(p_0³(g_k))·(constants). These two statements conflict: p_0(g_k) is a function of g_k, and g is last in the canon order. The correct statement: C_O = O(p_0³(g_k))·c, with c fixed before ε_1. The conflict does no harm, because no step of 3.3 puts a smallness condition on ε_O = C_Oα_6^{−1}. ε_O enters linearly and once (steps (iv), (vi)–(viii)), and every closing condition uses ε_2 only. So C_3′ depends on g_k, and g_kC_3′ = O(g_kp_0³(g_k)).

V31. Proposition H′, steps (i)–(iii). CONFIRMED.

V32. Step (iv). CONFIRMED. With |D′| = |D| + 1: Π_{D′}ε_Ye^{−(1−4δ)κd(Y)} ≤ ε_OΠ_D(ε_2e^{5(1−4δ)κ})·e^{5(1−4δ)κ}e^{−5(1−4δ)κ}e^{−(1−4δ)κd(Y_0)}. The extra e^{5(1−4δ)κ} of the marked factor cancels exactly with the "+5" of (2.27). If X_b repeats a member of D, (2.27) still holds, because the left side only gains a term ≥ 0.

V33. Step (v). CONFIRMED. The number of choices of the marked member is ≤ |D″| ≤ 2^{|D″|}, counted with multiplicity. A domain of multiplicity ≤ 2 then carries 1 + a + a² ≤ 1 + 2a with a = 2α_6e^{−δκd} ≤ 1. That is the (2.29) set sum at activity 4α_6e^{−δκd}. With α_6 → α_6/4 this is ≤ 1 by (2.29) as printed. Remark: the smaller α_6 is needed only in the estimate of H′. The unmarked factors H can keep Balaban's α_6. So the N-370 note is optional; it is safe either way.

V34. Step (vi). CONFIRMED. The marked component has a nonempty Y_0-part, so the "max" of (2.33) is not needed for it. The other uses of ε_2 ≤ 1 inside one component give ε_OΠε_2 ≤ ε_O.

V35. Step (vii). CONFIRMED. One marked component and n unmarked ones give ≤ (L + 2)^4O(1)ε_O·Σ_n((L + 2)^4O(1)ε_2)^n ≤ 2(L + 2)^4O(1)ε_O. Balaban bounds a sum over n components by a product of n independent sums, so no 1/n! is lost.

V36. Step (viii). CONFIRMED, with one point added. The family sum over {Z′_i} with ∪Z′_i = Z′_0 runs over the connected components of Z′_0. These components are disjoint. Exactly one of them contains b, so it is the marked one, and there is no choice factor. The marked factor's e^{5κ} cancels against the +5 in the adapted (2.27), as in V32.

V37. C_3′ = 2(L + 2)^4O(1)C_Oα_6^{−1} and "equivalently C_3′ = C_3ε_1·C_O/(2E_0ε_1C_1α_4^{−1}M^qe^{C_2κ_1})". CONFIRMED (C_3ε_1 = 2(L + 2)^4O(1)ε_2 and C_3′ = 2(L + 2)^4O(1)ε_O).

V38. Obstruction, "the literal form holds if and only if C_O ≤ …" [P]. CORRECTED. What is proved: the printed chain, with the marked factor, gives the literal constant if and only if C_O ≤ 2E_0ε_1C_1α_4^{−1}M^qe^{C_2κ_1} (up to the O(1)). A failed bound chain does not prove that the literal bound for H′ is false. The safe statement is: "the literal constant C_3ε_1 does not follow from the printed chain". Page support for the rate-form reading: on p. 278 Balaban himself replaces B_0 by O(p_0³(g_k)) for the resulting terms. So his "same bound" means the same form and rate, with a different prefactor.

V39. "The R1 count does not need the literal constant." CONFIRMED, with one notation fix. In SOURCES_SWEEP_G §4, η := C_3ε_1 enters only in step 5 (Σ_{Z_0∋b}ηe^{−2δρd} ≤ 2^dηS(2δρ)) and as a linear prefactor. Steps 3–4 and (R1-a) use η_1, the constant of Ẽ. But (N4-b) defines η_1 = O(1)η. After the repair, η_1 must be read as O(1)C_3ε_1 (the unmarked H's), not as O(1)C_3′. With that reading, (R1-a) is unchanged, and |E_0(Λ, X, b)| ≤ 2^dC_3′e^{λ}S(2δρ)e^{−(1−11δ)ρd(X)}. The rate slack (8δ for H′ against 11δ) is unchanged, because 3.3 keeps the rate (1 − 8δ)½Lκ.

V40. The g_k-term is small (g_kC_3′ = O(g_kp_0³)). CONFIRMED (p. 278 image; the growth of p_0 is quoted via files).

V41. R-046, H-216 (K1′) unchanged. CONFIRMED in form; they use rates only.

S-68 result: REDUCED, verified with corrections V30, V38.

## 4. S-52 (R-006 N6): off-trajectory sup induction; N7

V42. Page facts. CONFIRMED on the images for CMP 109 p. 260 ((1.3)), p. 261 ((1.6), (1.7): "E^{(j)}(g_{j−1}, U_j) is a result of an integration in the j-th step, after a subtraction of the previous action evaluated at U_j"), p. 268 ((2.12)–(2.15)), and p. 298 ("We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants"). I did not re-render pp. 259, 263, 264. I took them as quoted, together with the SOURCES_CTR_RESIDUE_VERIFY image list for H-040.

V43. (D0)–(D4). CONFIRMED as definitions. They agree with the slot chain of SOURCES_T2_B7_CLAMP §2.2/§3 (= SOURCES_HHIST §5): step l + 1 uses plaquette coefficient 1/h_l², and the counterterm of step j is −β_j(h)A with β read from the same slot vector. B7_CLAMP l. 46 already proved the counterterm booking and the slot-wise p. 298 cancellation [P, verified round 7]. So "N7 becomes a definition" restates a verified item, and SOURCES_L1_D adds the explicit (D1)–(D4) form. One difference: HHIST uses slots in [0, γ], and SOURCES_L1_D uses ]0, γ] for past slots. (F4) handles this difference.

V44. Agreement with Balaban on trajectories. CONFIRMED. The p. 268 image prints (2.15) as 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k), the same as 1/h_{l+1}² = 1/h_l² − β_{l+1}(h). With (1.6), the output of (2.12) is −h_l^{−2}A + (old terms) + E^{(l+1)} + log Z terms, and (D4) is −h_{l+1}^{−2}A − β_{l+1}A + (the same). These agree under (2.15).

V45. Off the trajectory: A_{l+1}(h) = (output of (2.12)) + (1/h_l² − β_{l+1}(h) − 1/h_{l+1}²)A. CONFIRMED by the same computation.

V46. Theorem N6-off, the step. CONFIRMED as [P-sketch] relative to S. The p. 268 image of (2.12) shows how the step depends on the couplings: the own coupling g_k appears explicitly (g_k^{−2}, g_kCB), and the older terms appear only through E_k = A_k + g_k^{−2}A. This is H-040 on the image. The counterterm cancellation needs only the coefficient identity β_j = (5.43) coefficient of the same E^{(j)} (p. 298 image), and (D3)–(D4) give this identity slot by slot. The C-terms need |β_j(h)| ≤ C_ΠE_0 ((C-b)), which holds for every slot vector, because E^{(j)}(h) obeys (1.18) with E_0 by the induction hypothesis. On a trajectory, Σ_jβ_j and g_k^{−2} add up to g_0^{−2}. Off a trajectory they do not. But the step treats the counterterms as perturbations with their own decay L^{−β_H(k−j)} (S-56), and it never uses their sum. So no relation between slots enters. I found no hidden use.

V47. "CLOSED relative to R-013." CORRECTED (scope). The proof also uses H-040 [V] and N9 (R-015): (D3) needs the T ↗ Z^d limit, and H0 §7 uses N9 to put C_Π at the absolute CMP 109 radii. The target lists N9 in (F3) and §4.5, but its ledger line and row text say "relative to R-013" only. Safe: "relative to R-013 (with its input list R-001–R-005, R-008–R-010, R-014, R-017, R-018), H-040 [V] and N9".

V48. (F1)–(F4). CONFIRMED in form. (F1) rests on H-040 (SOURCES_CTR_RESIDUE_VERIFY) and on the p. 268 image.

V49. Consumers. CONFIRMED.
- G3 (SOURCES_G3_N2_VERIFY V5): S_χ uses the past only through E_0. G3 needs (1.18) with one E_0 on every past h ∈ ]0, γ]^k. Theorem N6-off gives exactly this. G3's past-uniformity then depends on R-013 and N9 (plus H-040), not on N6 or N7.
- H0-red Step 1 (SOURCES_T2_H0 l. 129) needs the chain to be defined (N7) and the inputs of every step on every past to obey (1.18) with one E_0 (N6). (D0)–(D4) and Theorem N6-off give both. Step 1 becomes [P-sketch relative to R-013, H-040, N9].
- Not transferred: continuity of β_{k+1} in the slots (SOURCES_T2_H0 R3 and l. 195; Lemma D″ Step 2) is R-031's content (Route 2, verified), not N6's. The target says this ("B7's other content … is not used by N6"). The R-006 row must not describe all of N7 = R-031 as "a definition".

S-52 result: CLOSED relative to R-013, H-040 and N9, verified with correction V47.

## 5. Safe ledger statuses (proposed; not applied)

- R-006 (N6, N7). N6: off-trajectory sup induction PROVED [P-sketch] relative to the small-field step S of R-013 (with its input list R-001–R-005, R-008, R-009, R-010, R-014, R-017, R-018), H-040 [V: CMP 109 (2.12) image p. 268] and N9 (R-015, definition only). E_0 = 2c_Z is coupling-free (SOURCES_CTR_RESIDUE). N7: its definitional part is closed by the slot chain (D0)–(D4) (SOURCES_L1_D §4.2 = SOURCES_T2_B7_CLAMP §2 / SOURCES_HHIST §5), including the counterterm booking −β_j(h)A and agreement on trajectories. Continuity of β in the slots stays in R-031 (unchanged). Consumers: H0-red Step 1 and G3's past-uniformity are now conditional on R-013, H-040 and N9 only. The row grade stays "Target 1 USE REDUCED"; the N6 item leaves the open residue.
- R-008. Complex-s (|s| ≤ e^{κ_1}) and complex-U (𝒰(α″)) clause: PROVED relative to W_N (WC_FULL 4.2), WC_FULL 6.5–6.6, A1_WALK_FULL (B3), K-046 and H-125 [verified with corrections, SOURCES_L1_D_VERIFY]. Per tree |π_ωA_ω| ≤ e^{2^dκ_1}Bρ^{|ω|}e^{−½δd}. Norm ‖C*Δ_k(s)C‖ ≤ 2C_𝒟e^{2^dκ_1}B_A″Σ(½δ_A″) on 𝒰(α″), which includes the real points. Joint analyticity in (s, U). The CMP 116 p. 5 threshold 2^d is Lemma C [P]. No M_1 condition. Residue: that of the real part and WC_FULL's complex inputs, unchanged.
- R-010 (R2). WRITTEN OUT, reduced, not closed. R-terms ((3.21), (3.22)) [P-sketch] relative to (R-dec) [R: CMP 109 p. 271 + CMP 102 (190); R-019 at complex arguments] and (R-dom) [R: CMP 109 p. 273]. C-terms [P-sketch] relative to: (C-a) the (4.38) misprint U_j → U_k [V + P: CMP 109 (1.6) p. 261 and (2.12) p. 268 images]; the (4.39) scale reading [I]; (C-b) [R: Π decay]; (C-c) [I], with N_□′ = O(M^d) under the (4.39) reading. Constants K_R, K_R′, K_T^C = N_□′c_WC_ΠK_T, fixed before ε_1. The marginal parts cancel exactly [V p. 298]. α_* = β_H is unchanged.
- R-020 (R3). REDUCED. Rate form |H′(Z)| ≤ C_3′e^{−(1−8δ)½Lκd_{k+1}(Z)} [P] relative to CMP 116 (2.14)–(2.38) [V], (H′-def) [I: CMP 119 p. 277] and (O1) [R: CMP 119 p. 277 → CMP 116 (1.36)]. C_3′ = 2(L + 2)^4O(1)C_Oα_6^{−1}, and C_O = O(p_0³(g_k))·c depends on g_k. No condition uses C_O. α_6 → α_6/4 is needed in the estimate of H′ only. The literal constant C_3ε_1 does not follow from the printed chain, and it is not needed. The R1 count is unchanged, with η_1 = O(1)C_3ε_1 (unmarked H's) and η → C_3′ in step 5 only. Open: none of R3 beyond (H′-def) and (O1).

## 6. Canon entry for the new M-condition (proposed; not applied)

- N-310, add as a note, not as a new count: "(H_s) LM ≥ 8·3^dκ_1/δ_A″ (R-008 complex-s clause, Lemma C of SOURCES_L1_D §1.3; σ_0 side LM in CMP 116 Sect. 2 units). It is implied by H-125 (H_κ), because ε″ ≤ ½δ_A″ (A.4 item 13), and H-125 is implied by (H_κ^{f,Ω}). No new edge. M_req count unchanged."
- Optional, only if some consumer quotes R-008 at real U with (B_A, δ_A): add the N-310 entry "LM ≥ 8·3^dκ_1/δ_A" (M_req count +1), with predecessors N-090 and N-240. Add the Lean edge (N240, N310). It is already implied through (N240, N270), (N270, N310), so the order does not change.
- Lemma C hypothesis r ≤ ℓ/4: implied by P12 (HIGHER_M1 B3; canon form 3(7 + c_X)) at L ≥ 3 for ℓ = LM. No entry needed.
- N-270: mark the entry "the R-008 complex-s clause" (M_1 large after κ_1) as not needed (SOURCES_L1_D §1.5(i), SOURCES_L1_D_VERIFY V12). Keeping it does no harm.
- N-060: no change. If anyone ever uses the complex-s (2.7) series, γ_1 must move after N-090 (V13).
- N-370: the α_6 → α_6/4 note is optional (V33). Use it only if one α_6 serves both H and H′.

## 7. Report (≤ 100 words)

PASS WITH CORRECTIONS (40 CONFIRMED, 9 CORRECTED, 0 UNSUPPORTED). S-54: Lemma C and the complex-s bounds hold. The complex norm needs Σ(½δ_A″). No new M-entry is needed: real points lie in 𝒰(α″), and H-125 implies LM ≥ 8·3^dκ_1/δ_A″. The (4.38) misprint is settled on the images of (1.6) and (2.12). (C-c) stays [I], with N_□′ = O(M^d). In S-68, C_O depends on g_k (harmless), and the "iff" holds for the chain only. In S-52, the closure is relative to R-013, H-040 and N9, and continuity of β stays in R-031.
