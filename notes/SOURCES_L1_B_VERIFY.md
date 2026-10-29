# SOURCES_L1_B_VERIFY — adversarial check of SOURCES_L1_B.md

Date 2026-10-28. Verifier (Opus). Ids follow IDS.md. This file edits no other file.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Pages rendered at 150 dpi into /tmp/l1bv (fresh, deleted at the end) and read as images: CMP 96 pp. 224, 229–231; CMP 119 pp. 254–256, 258, 264–265, 268–271; CMP 122 I pp. 177–179, 181–182.
Project files read: SOURCES_L1_B (all); SOURCES_ORDER_CANON N-060–N-500 (N-100–N-310 in full); THM37_FULL (H2), 3.2a, Lemma CC, (G-M1); THM310_FULL (G-cube), 8.4; A1_WALK_FULL 2.1 (D_+, K_0); SOURCES_MULTISCALE_OMEGA (Sep) lines; SOURCES_MULTISCALE_OMEGA_SOURCED_VERIFY U-A/U-B/U-C.

## Verdict

PASS WITH CORRECTIONS. §2 (H-002 cover), §3.1 (Lemma Sep), §4 (U-C, step-j reduction), §5 (U-B), and Lemma R7 hold as written. Three claims fail:
1. §3.3(c) and C5 claim that every canon "RM" entry holds at R = 1 as an M-threshold. This is false. The RM-product entries do become M-thresholds. But the pure-R entries are ratios of layer width to a block size proportional to M. These are R > 18dL (N-180), THM37 (H2)/Lemma CC (R > c_RdL), (G-M1) (R ≥ 24), and THM310 (G-cube). They fail on R-operation sequences and no choice of M repairs them. This opens a new item.
2. §6.4 proposes to close the [I-strong] residue with (3.17)–(3.19) at level j. That repair is circular. On p. 268, (3.17)–(3.19) take the global regularity of U_{k+1} on Ω_{k+1} as their premise. They do not derive it.
3. §6.2(c) and C3 assume that the background of the (1.25) Gaussian is U^{(n)}_{k,Z}. No page says this. The claim that "the relaxed constants enter only outer-layer inputs" therefore stays [I].
The proposed ledger statuses are safe after these corrections (§9 below).

## §1 Page facts F1–F14

| fact | grade | note |
|---|---|---|
| F1 (CMP 96 p. 229, cover, (2.36)) | CONFIRMED | quote exact |
| F2 (p. 230, (2.40), (2.44)) | CONFIRMED | Balaban's cubes of layer j straddle into the coarser B^{j+1}(Λ_{j+1}); the bound is O(M^{−1}) on the L^{−j}-scale |
| F3 (p. 231, (2.45)–(2.46), Σ_j) | CONFIRMED | |
| F4, F5 (CMP 119 pp. 254–255) | CONFIRMED | includes "β_0 > 0 can be chosen arbitrarily small, if g is sufficiently small" |
| F6 (p. 256, 2MR_j) | CONFIRMED | |
| F7 (p. 258, (2.20)–(2.21)) | CONFIRMED | Balaban also prints "the quadratic form couples only the fields A_j in the same component of Z_{j+1} ∩ Ω_{j+1}" |
| F8 (pp. 264–265, (3.2)–(3.5)) | CONFIRMED | |
| F9 (p. 268) | CONFIRMED | |
| F10, F11 (pp. 270–271) | CONFIRMED | (3.23) is labelled **T**^{(k+1)}, but its variables are A_k, Δ^{(k)}, C^{(k)}(Λ_{k+1}), so it is (2.21) at j = k; the label shift is Balaban's own |
| F12–F14 (CMP 122 I pp. 178–182) | CONFIRMED | (1.24): the largest relaxed factor is L_0^{2(j−k_0−1)} with j ≤ k = k_0 + N_0, so it is ≤ L_0^{2(N_0−1)} |
| p. 177 property (ii) (L1_B: "not imaged") | CONFIRMED now on the image: "(ii) in the preceding N renormalization steps no new large field regions were created inside this component, and the previous regions contained in it satisfy the condition (i) on the corresponding scales." | |

Notation flag (no grade). In §2.1, "R_j := B^j(Λ_j) = Ω_j∖Ω_{j+1}" uses the Λ_j of CMP 96 (2.3), which is the layer Ω_j^{(j)}∖Ω_{j+1}^{(j)} (CMP 96 p. 224 [V]). §3–§6 use the Λ_j of CMP 119 (2.1), which is the small-field domain Ω_j ⊃ Λ_j ⊃ Ω_{j+1}. The two symbols mean different objects. No step confuses them, but a reader can.

## §2 Item (a): H-002 cover (variant B)

I re-derived each step.
- Metric fact (D): CONFIRMED. (2.46) requires the part of a contour in B^j(Λ_j) to run on Λ_j bonds. That rule only restricts the admissible contours, so the inequality |f(y) − f(y′)| ≤ max_j(λ_js_j)·d(y, y′) still holds.
- Tent: CONFIRMED. Lip τ = 4/((K_1 − 4)M_1) ≤ 2/M_1 for K_1 ≥ 6. τ = 1 on |t| ≤ ¼K_1M_1. supp ⊂ core.
- Step 1 (□_{i,m} ⊂ cl(R_{i−1} ∪ R_i)): CONFIRMED. The cube lies within ℓ^∞ distance K_1M_1s_i = LK_1M_1s_{i−1} of Ω_i, and (W) gives dist(Ω^c_{i−1}, Ω_i) > LK_1M_1s_{i−1}.
- Step 2: CONFIRMED.
- Step 3 (S ≥ 1 everywhere): CONFIRMED. (B1) needs ½ − 3/(2L) ≥ 2/K_1. At K_1 = 6, L = 9 this is 1/3 ≥ 1/3, an equality, so the stated thresholds are sharp. At L = 13 there is slack. (B2) needs w > ¾K_1M_1, which w > LK_1M_1 implies.
- Step 4 (at most 2^{d+1} nonzero φ; C_ov ≤ 2·3^d): CONFIRMED. I also checked x ∈ ∂Ω_i. There, grid-(i+1) cubes cannot reach x, because they lie within K_1M_1s_{i+1} = LK_1M_1s_i of Ω_{i+1}, and (W) gives dist(cl Ω_i^c, Ω_{i+1}) ≥ ws_i > LK_1M_1s_i. So the closed cubes at x come from at most the two grids i − 1 and i.
- Step 5 (G1): CONFIRMED, if the cube faces lie on block boundaries. They do: a_i = ½K_1M_1s_i is a multiple of s_i when K_1M_1 is even, and K_1M_1 is a power-of-L multiple under the torus-fit rule.
- Step 6: CONFIRMED.
- Step 7 (G4, c_h = 2(1 + 2^{d+2})): CONFIRMED. The arithmetic is ½·2·2^{d+2}·2 = 2^{d+3}, plus 2 from |Δφ|. The total is 2 + 2^{d+3}.
- Step 8 (D_+^Ω = dLK_1 + 2K_0 + 2): CONFIRMED in the ℓ^1/d-convention. Caveat: A1_WALK_FULL l. 90 defines D_+ := K_1 + 2K_0 + 2. That count gives the cube a diameter of K_1M_1, which is the ℓ^∞ convention. Thus the trade in 2.4 is a factor dL against A1_WALK's own count, not L. Both factors are (d, L)-constants fixed before M_1. The conclusion does not change.
- 2.4 trade-off: CONFIRMED as [P-sketch]. "Only constants change in the D_+ counts" is not re-run, and L1_B says so. One more input should be named. Variant-B cubes put a coarse cube over fine blocks, which is the opposite of Balaban's printed orientation (F2: fine cubes straddle into the coarse layer). The local-inverse inputs on □⁺ (THM37/THM39 local propagators, the (3.35) class) are stated for cubes with the geometry of A1_WALK 2.1. Their re-use on variant-B cubes is [I]. The physical size of the cube does not change, so I expect no obstruction.
- 2.5 conditions: CONFIRMED (K_1 ≥ 6, L ≥ 9, w > LK_1M_1). The canon entry is written "RM > 2LK_1M_1". To cover R-operation sequences it must be rewritten "M > 2LK_1M_1" (see §3.4 below).
- 2.6 status of H-002: CONFIRMED [P] relative to (2.46) and (W). Σφ² ≥ 1 everywhere: CONFIRMED.

## §3 Item (b): (Sep), and "same big R"

- Lemma Sep (dist_∞(Ω_{k+1}, Ω_k^c) ≥ 8LMR_{k+1} in step-k units): CONFIRMED from the images. (3.2) gives B^{k+1}(P^1_{k+1})^c ⊇ Z′^{~5}_k, and (3.5) adds 3 more layers. (i) Ω_k^c ⊂ Λ_k^c = Z_k [V F4, F5]. (iv) A^{~n} reaches ℓ^∞ distance ns under corner adjacency. The face-only fallback 2LMR_{k+1} is also correct. Balaban's "union of all LMR_{k+1}-cubes intersecting Z_k" (p. 264) supports the closed-set (corner) reading.
- Consequences (R′ = 8L, or 2L): CONFIRMED for terms made by an RG step.
- 3.1 "holds also for terms whose earlier domains came from R-operations": CONFIRMED for the new pair (Ω_{k+1}, Ω_k), because (3.2)–(3.5) use only Z_k of the term.
- Regularity part [R to F9 + R-018]: CONFIRMED.
- 3.2 (step j inside (2.21)): CONFIRMED for T^{(j)} not changed by an R-operation. (1.25) uses the original Z_{j+1} ∩ Ω_{j+1}: CONFIRMED [V p. 182]. The [I-strong] (property (ii) keeps the step-j domains unmodified) stays [I-strong]. Property (ii) is now read on the image. It forbids new large-field regions in the last N steps. It does not say that earlier R-operations left Ω_{j+1} unmodified. If an earlier R-operation modified the domains, Balaban's text allows "Z_{j+1} ∩ Ω_{j+1} may be empty" and changed domains (p. 258). The width there is then only M (R′ = 1). OMEGA uses R′ ≥ 2 for Z̃_0 ⊂ Λ_k and for the far-domain bound (OMEGA l. 79–80). So this [I-strong] is load-bearing. It is not cosmetic.
- 3.3(a): CONFIRMED.
- 3.3(b) (R-operation layers are one M-cube wide, R = 1): CONFIRMED [V p. 179]: "the complements of these sets form an admissible sequence of domains based on partitions into M-cubes … separated by one layer of M-cubes". Small correction: this gives dist ≥ M, not > M. CMP 96 (2.2) is strict (> RM).
- 3.3(c), "same big R" REFUTED for R-operation sequences: CONFIRMED.
- 3.3(c), "all of them stay admissible": REFUTED. See 3.4.

### 3.4 The skipped canon check: every RM entry at R = 1

On R-operation sequences the layer width in local units is M (CMP 122 I p. 179 [V]). So the CMP 96 (2.2) product "RM" becomes M. The CMP 96 block is then the M-cube, so R_96 = 1. An entry survives if "RM ≥ f" with f independent of M becomes "M ≥ f". An entry fails if it bounds R alone, that is, if it compares the layer width with a block of size proportional to M.

| canon entry | form | at R = 1 | grade |
|---|---|---|---|
| N-100 RM_min (θ_L = log L/(RM) ≤ δ′/(8(d + 4)); CMP 96 (2.59) at THM37/THM39 rates) | RM-product | M ≥ RM_min, an M-threshold; all inputs are before M | HOLDS |
| N-130 RM_0 = max{RM_min, 4(d + 4)log L/ε_39} | RM-product | M ≥ RM_0 | HOLDS |
| N-140 RM_0 raised for θ_L ≤ min{¼λδ_*, ½θ_310(1 − θ_310)δ_0} | RM-product | M-threshold | HOLDS |
| N-180 R·M_min ≥ RM_0; θ_S = log L/(RM) ≤ δ_WG/(4(d + 2)) | RM-product | M_min ≥ RM_0; θ_S = log L/M | HOLDS |
| N-180 R > 18dL (c_R = 18) | pure R | 1 > 18dL is false; M does not enter | FAILS |
| THM37 (H2) R > c_RdL; Lemma CC Cases 1–2 (□̃^5, side 12Mξ_j, vs layer thickness RMξ_j) | pure R (cube ∝ M) | false at R = 1 | FAILS |
| THM37 (G-M1) "thickness ≥ RMξ_j ≥ 24Mξ_j, so a 10M class cube fits in B^j ∪ B^{j+1}" | pure R | a 10M cube cannot fit in two layers of width M | FAILS |
| THM37 Lemma AG (v) RMξ_{j+1} > 4Mξ_j (RL > 4); M_1 form RMξ_{j+1} > 4M_1ξ_j | ratio with L | L > 4 holds; M > 4LM_1-type holds | HOLDS |
| THM310 (H2) (2.59) at the THM310 rates; (G-cube) R > 18dL | product; pure R | product HOLDS; R > 18dL FAILS | split |
| N-310 RM > 2LK_1M_1 (no cube meets three layers) | RM vs M_1 | M > 2LK_1M_1 (M after M_1) | HOLDS (rewrite as M) |
| N-310 (2.59) at every walk rate, RM > (4/δ_min)(2d log(8/δ_min) + 1) | RM-product | M-threshold | HOLDS |
| N-310 RM > M_*(¼ε_min), RM > M_*(½θ_cδ_H″), RM ≥ 8 log L/(θε) | RM-product | M-thresholds | HOLDS |
| N-310 (T1) RM ≥ 4L²D_0 | RM-product | M ≥ 4L²D_0 | HOLDS |
| N-310 (S_H^Ω) RM ≥ 4p_S log L/(θ_cδ_H″) | RM-product | M-threshold (void at p_S = 0) | HOLDS |
| N-060 R_1 (least power of L with R_1 > 18dL); N-265/N-270 "CMP 102 (1) with R = LM_1/M_1^{(102)} ≥ LR_1" | pure R, but against the CMP 102 block M_1^{(102)} | the R-operation width M measured in M_1^{(102)}-blocks is M/M_1^{(102)} ≥ L²M_1/M_1^{(102)} ≥ L^{2+a}R_1 | HOLDS (if the CMP 102 results are applied with block M_1^{(102)}) |
| N-380 (18L + 2)Mε_0^{109} ≤ R_1M_1^{(102)}a_1^{102} | upper bound on ε | no layer width | not affected |

Can a different block identification rescue the failing rows? The canon's CMP 99 cube scale on the A18 route is M_□^{99} = C^{122}M/(18L), rounded down to a power of L (N-310). Measured in that block, the R-operation layer width M gives R_eff = M/M_□^{99} ∈ [18L/C^{122}, 18L²/C^{122}) = [9L, 9L²) at C^{122} = 2. At d = 4, 18dL = 72L. So R_eff > 18dL needs the rounding to gain a factor ≥ 8. The canon does not guarantee that. In every reading, R_eff is a (d, L) number fixed by the block choice. It does not grow with M. So none of the FAILS rows becomes an M-threshold.

Consequence. On R-operation sequences, THM37 Lemma CC, (G-M1) and THM310 (G-cube) are unproved. These place the (3.35)-class cubes so that no class cube meets three layers. This is a new open item. I call it (R-op geometry). It is not inside R-024's current input list.

Candidate repair [I, not checked against SOURCES_A18_REGULAR 5.3]. Decouple the CMP 99 class block from M. Take M_□^{99} ≤ M/(c_RdL·24), a fixed (d, L) fraction of M. Then R_eff ≥ 24c_RdL on every sequence. The cost is an entry M ≥ (const(d, L))·M_99 in N-310 and a (d, L) factor in the α_0 cap. Whether A18 5.3 (the gauge gluing between the CMP 122 cube C^{122}M and the CMP 99 class) allows the smaller block is not checked.

## §4 Items (f) U-C and (c) the step-j identification

- Lemma U-C (C^{(k)}(Λ_{k+1}) = (K_{ΛΛ})^{−1}): CONFIRMED [V pp. 270–271]. (3.27) writes the expectation with dμ_{C^{(k)}(Λ_{k+1})}(A) and keeps the linear term −⟨A, C*Δ^{(k)}CA_k⟩ and all perturbation terms explicit. The term −½⟨A_k, KC^{(k)}KA_k⟩ of (3.25) does not depend on A, so the normalization absorbs it. So the only factor left for dμ_C is exp[−½⟨A, KA⟩]dA|_Λ. A second check agrees. (3.23) carries +½⟨A_k, KCKA_k⟩, and completing the square in the Λ-integral of (3.25) produces exactly this term when C = (K_{ΛΛ})^{−1}. One reading point stays: dμ_C lives on the reduced (gauge-fixed) space V_red(Λ) of WC 0.6–0.7. This is the project's convention, not a page fact.
- Step j via F7: CONFIRMED. (2.21) has the same exponent as (3.23) with k → j. The only difference is the factor z^{(k)}, which the A-measure does not see.
- 4.2 Schur complement: CONFIRMED (algebra). The component-block-diagonal restriction is printed on p. 258 ("couples only the fields A_j in the same component").
- 4.3 step-j identification "adds no input beyond step k": CONFIRMED as a reduction. It still carries OMEGA 2.3 [I-strong] and the identity of the background of Δ^{(j)} (see §6).
- 4.4 status: CONFIRMED. U-C goes from [I-strong] to [P from printed (3.23), (3.25)–(3.27)].

## §5 Item (e): U-B

- 5.1: CONFIRMED [V pp. 268, 271]. (3.15) puts A(1/g_k²(·) − 1/g_k², …) inside the braces. (3.26) multiplies it by t, and that t-part sits outside dμ_{C^{(k)}} in (3.27). The deviation is therefore outside the Gaussian. It is [I], not printed, that the Gaussian Δ^{(k)} carries exactly the constant weight 1/g_k². But it is the only reading consistent with (3.15), where the fluctuation enters as g_kCA_k.
- 5.2, 5.3 (step j; R-operation): CONFIRMED by F7 and by "the quadratic form … written explicitly in (2.21) [III]" (p. 182 [V]).
- 5.4 (|g_j²d_S| ≤ 2γ²r; ω reading ≤ 5γ²r): CONFIRMED relative to D3R Lemma P3 and §2.2. I did not re-derive these. They are pointwise and carry no layer index (SOURCED_VERIFY W2).
- 5.5: CONFIRMED. U-B is CLOSED.

## §6 Item (d): U-A and (R7)

- 6.1 (U-A, RG step): CONFIRMED, with one named reading. p. 268 prints the bound for U_{k+1} on Ω_{k+1}, and (3.16) restricts only A_k. The Gaussian is expanded around U_k(…V^{(k)}) (3.15). This differs from U_{k+1} by the analytic H^{(k)}, which is bounded by O(1)ε_kexp(−R_k) on S_{k+1} ((3.17)–(3.22) [V]). So "the background of Δ^{(k)} obeys the U_{k+1} bound up to O(ε_ke^{−R_k})" is the reading. The pages do not name the background of Δ^{(k)}. Grade: CLOSED [V + R to R-018], with that reading tagged [I].
- 6.2(a), (b): CONFIRMED [V pp. 178, 181–182].
- 6.2(c) and C3 ("on the band the constants are 1; relaxed constants enter only the outer-layer inputs"): UNSUPPORTED as stated. (1.24) bounds U^{(n)}_{k,Z}, the background of the effective action A^{(n)}_k. (1.25) says the A_j quadratic form is "written explicitly in (2.21) [III]". That is the operator of T^{(j)}, built when T^{(j)} was made, with a background that depends on V_{j+1}. No page says that this background is U^{(n)}_{k,Z}. Two readings exist:
  (R-a) The background of Δ^{(j)} is the step-(j+1) background of V_{j+1}. Then χ^{(n)} and (1.24) never enter the Gaussian. The regularity comes from (1.4), which is still present or implied ("the restrictions in (1.23) imply that all the functions (1.4) for j = h are equal to 1", p. 181 [V]). In this reading U-A in the R-operation is the RG-step U-A at step j, and (R7) does not enter Q-048 at all.
  (R-b) The background is U^{(n)}_{k,Z}. Then L1_B's 6.2(c) applies, and so does the residue of 6.4.
  Neither reading is printed. Both remove the relaxed constants from the band, so C3's conclusion holds in both. Its stated mechanism, "(1.24) last line on the band", holds only in (R-b). Under (R-b), (1.24)'s c = 1 line covers Ω_{j−1}∖Ω_{j+1} and not Ω_{j+1}. So the band of Y ∪ Λ_{j+1}, which includes Ω_{j+1} ∩ Z, is not covered by that line. This is the 6.4 gap.
- 6.3 Lemma R7: CONFIRMED (arithmetic re-done). From L^{N_0−1} = R_* ≤ L(log g_*^{−2})^r, L_0 < ½L, and (2.6) (both directions are needed; j′ < k − N_0 + 1 uses g_m ≤ (1 + β_0)g_n), I get 3L_0^{2N_0}ε_{j′} ≤ (3/4)L⁴A_0·2^{2r}g_{j′}(log g_{j′}^{−2})^{p_0+2r} for γ ≤ γ_1. The max exponent in (1.24) is 2(N_0 − 1) [V], so L_0^{2N_0} is a safe bound.
- 6.3 correction of OMEGA 5.1 (N_0 is not a constant): CONFIRMED. The canon already agrees: N-460 lists N_0 as a "scale-indexed rule (not a constant)" with L_0^{2N_0} < L(L + 1)N_0^{−1}R_k. So only the OMEGA text is wrong, not the canon.
- 6.3 "admissible if γ is fixed after α_*": CONFIRMED. γ is N-470, after α_* (N-360). L1_B's [I] here is resolved.
- 6.4 residue: CONFIRMED as a gap under reading (R-b). The proposed repair is UNSUPPORTED (circular). p. 268 reads: "The field U_{k+1} satisfies the regularity condition … on Ω_{k+1}, hence the argument of the function H_{k+1,□′} is bounded by 44d²B_3ε_{k+1}". So (3.17)–(3.19) bound the global–local difference by assuming global regularity. They cannot turn the local bound (1.4) into a global bound on U^{(n)}_{k,Z}.
  Attempt to close. Local regularity on every cube of a region implies regularity of the global minimizer there. That direction is the variational theory of CMP 102 ("[15]" on CMP 119 p. 256; it is the origin of B_3), and it sits inside R-018. Under (R-b) the weakest correct repair is: (1.4) and (1.24) on the neighbouring layers, plus the CMP 102 local-to-global regularity applied to the determining set 𝔹_k^{(n)} of the R-operation, give |∂U^{(n)}_{k,Z} − 1| ≤ O(B_3)ε_{j+1} on Ω_{j+1} ∩ Z. This is [R to R-018], not closed here. CMP 122 I (1.14) onward builds 𝔹_k^{(n)}, which I did not read past p. 179. Under (R-a) the residue disappears and is replaced by the background-identity reading [I].
- 6.5 status: CORRECTED. (R7) in the R-operation: REDUCED to the printed bounds [V] + Lemma R7 [P, γ-threshold] + {(R-a) background identity [I], or (R-b) local-to-global regularity [R to R-018 via CMP 102] on Ω_{j+1} ∩ Z}. The "(3.17)–(3.19) at level j" route is withdrawn.

## §7 Item (g): (S_H^Ω)

- 7.1 (J_S weak form, p_S ≤ 0): CONFIRMED as [P-sketch]. The claim that the comparison |J_S| ≲ sup|d_S|·|J| fails is right by scaling. For a smooth layer-j background, J(b) = Σ_{p∋b}P^{(1)}_p is a discrete divergence. It is one η-order smaller than a single P^{(1)}_p, by a factor η/s_j, so the ratio |P_p^{(1)}|/|J| ~ s_j/η ≫ 1. No counterexample is computed. This is a scaling argument, so I call it [P-sketch].
- 7.2 (D_S, p_S = −(d − 2) ≤ 0): CONFIRMED as [P-sketch], with one correction to the exponent. The value −(d − 2) assumes a physical-unit amplitude bound |H_1e_b| ≤ O(1). If CMP 99's bound is in local units (amplitude s_j^{−1} physically, the usual gauge-field scaling), the block count gives s_j^{d−4}, so p_S = 0 at d = 4 (scale invariance of ∫|F|²). In both normalizations p_S ≤ 0 at d = 4, which is all the canon needs. The quoted value −(d − 2) is normalization-dependent and should not be cited.
- 7.3: CONFIRMED as [P-sketch]. It is not used.
- 7.4 (any finite p_S is an M-threshold at R = 1): CONFIRMED. This entry is in the HOLDS class of §3.4.
- 7.5: CONFIRMED.

## §8 Corrections C1–C7

| item | grade | note |
|---|---|---|
| C1 (Sep by Lemma Sep; same big R refuted) | CONFIRMED | add: for T^{(j)} modified by an earlier R-operation, (Sep) with R′ ≥ 2 rests on the [I-strong] of 3.2 |
| C2 (N_0 depends on g; R7 a γ-threshold) | CONFIRMED | the canon (N-460, N-470) is already consistent; only OMEGA 5.1/7.1 text changes |
| C3 (relaxed constants only on outer-layer inputs) | CORRECTED | the conclusion holds under both readings (R-a), (R-b). The stated mechanism ("(1.24) c = 1 on the band") does not cover Ω_{j+1} ∩ Z. See §6 |
| C4 (variant B: c_h/M_1, D_+^Ω) | CONFIRMED | trade factor is dL against A1_WALK's ℓ^∞ count (D_+ = K_1 + 2K_0 + 2), not L; local inputs on variant-B cubes [I] |
| C5 (every RM entry is an M-threshold at R = 1) | CORRECTED | false for R > 18dL (N-180), THM37 (H2)/Lemma CC/(G-M1), THM310 (G-cube); see §3.4 |
| C6 (p_S = 0 for D_S; weak form for J_S) | CONFIRMED | [P-sketch]; drop the specific value −(d − 2) |
| C7 (2MR_j printed; (3.5) gives 8LMR_{k+1}) | CONFIRMED | |

## §9 Safe ledger statuses and canon changes

Per item (L1_B §9 table):
- (a) H-002 straddling cover: PROVED [P, verified] relative to (2.46) and (W). (a′) H-001 multiscale cover: PROVED [P] for the cover. A1-W "only constants change" is [P-sketch], and the local inputs on variant-B cubes are [I].
- (b) (Sep) distance: PROVED [P, verified] for RG-made terms. R-operation-modified T^{(j)}: [I-strong] (load-bearing, R′ ≥ 2). (b′) regularity: [R to CMP 119 p. 268 + R-018]. (b″) same R: REFUTED for R-operation sequences [V].
- (c) step-j identification: CLOSED [P, reduction]. (f) U-C: CLOSED [P from printed (3.23), (3.25)–(3.27), verified]. (e) U-B: CLOSED [V + P, verified].
- (d) U-A, RG steps: CLOSED [V + R to R-018], with the background-of-Δ^{(k)} reading [I]. (d′) (R7), R-operation: REDUCED (6.5 as corrected here).
- (g) (S_H^Ω): REDUCED, p_S ≤ 0 at d = 4 [P-sketch].
- NEW: (R-op geometry). THM37 Lemma CC/(G-M1) and THM310 (G-cube) need R > 18dL (R ≥ 24). This FAILS on R-operation sequences, and no M-threshold repairs it. OPEN. Candidate repair [I]: decouple the CMP 99 class block from M (M_□^{99} ≤ M/(24c_RdL)).

R-024 (Q-049): stays REDUCED [verified round]. Inputs: (W_G1^Ω) [R]; (A1-W^Ω) [C on H-057 (C)]; OMEGA 2.3 Ω-form of WC 4.1 [I-strong]. Closed [verified]: H-002 [P]; (Sep) distance for RG-made terms [P]; step-j identification [P, reduction]; U-B; U-C; U-A for RG steps [V + R-018]. Residue: (Sep) for R-operation-modified T^{(j)} [I-strong]; (R7) in the R-operation [V + γ-threshold + (R-a) [I] or (R-b) [R to R-018]]; (S_H^Ω) [P-sketch]; NEW (R-op geometry) OPEN. The ledger must not say "canon RM entries at R = 1 [I, canon check]". The check is done. It found the R > 18dL family failing.

R-016: stays "PROVED relative to listed inputs [verified, round 7]". The round-12 residue becomes: "U-B, U-C CLOSED [verified]. U-A CLOSED for RG steps (reading [I] on the background of Δ^{(k)}). For the CMP 122 I (1.25) form: (R7) REDUCED (§6 of SOURCES_L1_B_VERIFY). H-166 (S_H^Ω): p_S ≤ 0 at d = 4 [P-sketch]; any finite p_S is an M-threshold." The R-op geometry item does not touch R-016 directly. It touches it only through the THM37/THM310 inputs, if R-016 uses them on R-operation sequences [I].

Canon changes (proposals; this file edits nothing):
1. N-310: rewrite every "RM ≥ f" entry as "M ≥ f" or add "(also at R = 1, R-operation sequences, CMP 122 I p. 179)". These are N-100/N-130/N-140 RM_0, the N-180 θ_S, (2.59), M_*, 8 log L/(θε), (T1), (S_H^Ω), and 2LK_1M_1. Then R·M_min ≥ RM_0 becomes M_min ≥ RM_0. All of them stay M-thresholds with no new edge.
2. N-180, THM37 3.2a/(H2), THM310 (G-cube): add the note "R > 18dL holds for RG-made sequences (R_j ≥ (log γ^{−2})^r, CMP 119 (2.5)) and FAILS on R-operation sequences (width M)". Open the item (R-op geometry).
3. If variant B is adopted: N-060 gains K_1 ≥ 6 and L ≥ 9. D_+ → D_+^Ω = dLK_1 + 2K_0 + 2 (C_𝒟, c_X^{(1)}, q follow). The N-200 "c_h → Lc_h" note may be reverted. Book only one of the two variants.
4. N-460: no change (already scale-indexed). OMEGA 5.1/7.1 text: as C2.
5. N-260/N-310 (S_H^Ω): p_S stays a named constant. Note "p_S ≤ 0 at d = 4 [P-sketch]".

Page images deleted at the end (/tmp/l1bv). STATUS: COMPLETE.
