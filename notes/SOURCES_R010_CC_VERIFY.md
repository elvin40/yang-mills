# SOURCES_R010_CC_VERIFY — adversarial check of SOURCES_R010_CC (R-010 R2: (4.39) scale reading, (C-c))

Date 2026-10-29. Ids follow IDS.md. Target: SOURCES_R010_CC.md (Opus, unverified). Counter-side checked: SOURCES_L1_D §2.4 (C-c), SOURCES_L1_D_VERIFY V17, V23, V24, V25.

VERDICT: PASS WITH CORRECTIONS. 28 items (V1–V28): 24 CONFIRMED, 4 CORRECTED (V22, V24, V26, V27), 0 UNSUPPORTED. The images and an independent recomputation support the fine-lattice reading of (4.39). They refute the unit-spacing reading of V23. (C-c) as stated is false. The repair (iii′) holds. The corrections are small. They concern the canon slot of K_T^C, a looser-than-needed z_0, the status of the CMP 116 "corroboration", the d ≠ 4 remark, and one scope note on the analyticity radius.

Pages rendered (pdftoppm -r 150, fresh /tmp folder, deleted after). I read every image listed here myself:
- CMP 109 pp. 252, 257, 262, 270, 281, 282, 288, 289, 290, 291, 292, 298, 299 (PDF page = journal page − 248; offset checked on p. 252).
- CMP 95 pp. 21, 29 (PDF page = journal page − 16).
- CMP 116 p. 9.
Firewall kept: I did not open /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md or reports/ONLINE_SWEEP.md.

## 1. Page facts F1–F11

V1. F1 (CMP 109 p. 252, (0.2)). CONFIRMED. The image prints A^ε(U) = Σ_{p∈T_ε}ε^{d−4}[1 − Re tr U(∂p)], "tr is the normalized trace, i.e. tr 1 = 1. For d = 4 we drop the superscript ε". It also prints G ⊂ U(N) and 𝐔 = U′U, U′ = exp iA′, A′ ∈ g^c.

V2. F2 (p. 257). CONFIRMED. The image prints "the continuous space T scaled properly, so that it corresponds to the lattice T_ξ, ξ = L^{−j}. We decompose the space T into the lattice of closed cubes of a size M, where M = L^m". It also prints the d_j definition and "Domains from different classes … are connected by scaling transformations". Added support, not in the target: (0.26) on the same page counts the π_j cubes as M^{−4}|T_1^{(j)}|. So in the units of π_j, T_1^{(j)} is the unit lattice and T_ξ is finer by the factor ξ.

V3. F3 (p. 262). CONFIRMED. (1.11) |∂U − 1| < α_0ξ² on X; (1.12) U^u = exp iξA on cubes of size O(1)LM; (1.13) U′ = exp iξA′, |A′|, |∇^ξ_UA′| < α_1; (1.14) |∂𝐔 − 1| < α_0ξ², |𝐉| < γ_0 on X.

V4. F4 (p. 270). CONFIRMED. ζ_□(x) = Π_μζ(M^{−1}(x_μ − y_μ)), ζ(t) = 1 for |t| ≤ 1/3, 0 for |t| ≥ 2/3, derivatives to second order bounded by 5; "cubes in the scale corresponding to the lattice T_η"; (3.3) with "Sect. G [15], and the equality (97) [12]". Note: on p. 270 the cover cubes are unions of 2^d cubes of π_k. The target adapts the same ζ to π_j. That adaptation is a choice, and V12 checks it.

V5. F5 (p. 281). CONFIRMED. (4.2) E^{(j)}(X, U_j(□_0, exp iB)) = E^{(j)}(X, exp iξH_j(□_0, B)); (4.4) max{|𝐀|_X, |P_1(□_0)𝐀|_X, |∇^ξ𝐀|_X, |Δ^ξ𝐀|_X} < α_2.

V6. F6 (p. 282). CONFIRMED. "the function ζ̃_□B is defined on the unit lattice T_1^{(j)}. We denote it simply by B again, hence B = ζ̃_□Q_j(ηA)."

V7. F7 (p. 290). CONFIRMED. (4.35) as quoted; "D_j^0 is the class of localization domains constructed for the lattice ξZ^4"; "we extend summations over y to the whole lattice Z^4". The gloss "(the unit lattice of B)" is the target's reading. It agrees with V6.

V8. F8 (p. 291). CONFIRMED. (4.38), (4.39), (4.40) are printed as quoted. The sum in (4.39) is Σ_{x,μ<ν}. The text says "summing over all □′ in ξZ^4" and "Δ_j is given by the explicit formula (1.66) [10]". The p. 299 image gives [10] = Balaban, CMP 95, 17–40.

V9. F9 (CMP 95 pp. 21, 29). CONFIRMED. p. 21: (1.21) ⟨∂A, ∂A⟩ = ½Σ_{x∈T_η,μ,ν}η^d|F_μν(x)|². p. 29: (1.65) ⟨B, Δ_kB⟩ = ⟨∂H_kB, ∂H_kB⟩; (1.66) momentum form with ∂_1B; (1.67) γ_0⟨∂_1B, ∂_1B⟩ ≤ ⟨B, Δ_kB⟩ ≤ γ_1⟨∂_1B, ∂_1B⟩.

V10. F10 (CMP 116 p. 9, Lemma 1). CONFIRMED for the page facts: (1.33), (1.34) on U^c_{k+1}(Y, (1 + β)α_0, (1 + β)α_1, α_0) × {|B| < ε_1g_k^{−1}}, (1.36) |V′_k| ≤ E_0ε_1C_1M^q exp C_2κ_1 exp(−(1 − 2δ)κd_k(Y)), "absolute constants C_1, C_2, q". Added support: (1.31) on the same page, d_j(X) ≥ (L^jη)^{−1}d_k(X_0), fits a π_j cube of side ML^jη in scale-k units. I did not re-render p. 261 for "(1.6) contains −β_{j+1}A(U_k)". I take it from SOURCES_L1_D_VERIFY V17(d).

V11. F11 (p. 298). CONFIRMED. The image prints the cancellation of the first expression of (5.43) against (4.42) and of the second term of (4.34) against (4.44), and "The third term is equal to 0".

## 2. The scale reading S1

V12. S1(a), ξ = L^{−j} is the spacing of T_ξ in units where π_j cubes have side M. CONFIRMED on the p. 257 image (V2). A π_j cube therefore holds (ML^j)^4 points of T_ξ, up to boundary terms.

V13. S1(b), one lattice in two units, and no rescaling factor in (4.38) in d = 4. CONFIRMED. My computation: let the original spacing be one physical unit. Then one j-unit is L^j original spacings and one k-unit is L^k original spacings. So T_ξ (j-units) and T_η (k-units) are the same point set, and a π_j cube has side ML^jη in k-units. The image of (0.2) gives the weight ε^{d−4} = 1 for d = 4. So A(U) is a plain sum over the plaquettes of the original lattice, and its value does not depend on the units. With Σ_□′ζ_□′ = 1, A(U_k(·)) = Σ_□′Σ_{x∈T_ξ,μ<ν}ζ_□′(x)[1 − Re tr U_k(·)(∂p_μν(x))] with no factor. U_k(·) is a fine-lattice configuration, so no change of lattice occurs.

V14. S1(c), the second-order computation. CONFIRMED. I redid it. Put 𝐔 = exp iξ𝐇 on the bonds of T_ξ. The plaquette product is e^{X_1}e^{X_2}e^{X_3}e^{X_4}, X_i = ±iξ𝐇(b_i). The sum of the four linear terms is iξ[𝐇_μ(x) + 𝐇_ν(x + ξe_μ) − 𝐇_μ(x + ξe_ν) − 𝐇_ν(x)] = iξ²(∂^ξ_μ𝐇_ν − ∂^ξ_ν𝐇_μ)(x). The commutator terms of the Baker–Campbell–Hausdorff series are of order ξ²|𝐇|². So G = ξ²(∂^ξ𝐇)_μν + O(ξ²|𝐇|²). Then 1 − tr cos G = ½tr G² + O(G^4). The commutator part enters ½tr G² only at order |𝐇|³. The quadratic part is ½ξ^4Σζ_□′ tr((∂^ξ𝐇)_μν)². The second variation is twice this. It equals ⟨∂^ξH, ζ_□′∂^ξH⟩ for the pairing ξ^4Σ_{x∈T_ξ,μ<ν}, up to the fixed normalization of tr against |·|² (a convention, the same on both sides of (4.39) and (4.40)). With side-1 plaquettes and exp iξ𝐇 on their bonds, the quadratic part is ½ξ²Σ tr((∂^1𝐇)_μν)², which has ∂^1 and not ∂^ξ. Caveat: "holds only for side-ξ plaquettes" uses that ∂^ξ denotes the difference quotient of step ξ. Balaban uses ∇^ξ, Δ^ξ and exp iξA in this sense on pp. 262 and 281, so the caveat is met.

V15. S1(d), (4.40) Σ_□′ = β_jΔ_j with Δ_j from CMP 95 (1.65). CONFIRMED. In CMP 95, H_kB is a field on T_η, η = L^{−k}, and ∂ and the pairing carry the weight η^d of (1.21). At index j, the spacing is L^{−j} = ξ. So ⟨∂^ξH_j, ∂^ξH_j⟩ = ⟨B, Δ_jB⟩ is exactly the fine-lattice pairing of V14. This is independent evidence for S1, because (4.40) cites the CMP 95 formula by number.

V16. S1(e), (f). CONFIRMED on the images (V3, V5, V6, V7). A bound ∝ ξ² on |∂𝐔 − 1| is the size of a plaquette of side ξ for a field 𝐀 of size O(1), as V20 shows.

V17. The refutation of V23's unit-spacing reading. CONFIRMED. V23 treats "the ξ-lattice" as a lattice of spacing 1 inside a π_j cube of side M. V2 and V12 contradict this: in those units the spacing is ξ = L^{−j}. V23's "other reading" is the correct one.

V18. Remark S1′ ((3.3) gives A(U_k(·)) as a function of U_j(□_0, ·)). CONFIRMED as [P-sketch] relative to (3.3) [R]. The p. 270 image shows that the first equality of (3.3) uses only gauge invariance and U_k = U_j(Ū^j_k) up to a gauge transformation. A is gauge invariant, so the same step applies to A.

## 3. (C-c) and the repair

V19. S2, (C-c) as stated is false. CONFIRMED, and stronger than stated. The target's bound: ζ_□′ = 1 on a cube of side 2M/3, which holds at least (2ML^j/3 − 1)^4 points of T_ξ. For ML^j ≥ 6 this is ≥ (ML^j/2)^4, since 2a/3 − 1 ≥ a/2 iff a ≥ 6. So N_□′ ≥ 6(ML^j/2)^4. Strengthening [P]: the result does not depend on the choice of partition. For every partition of unity, Σ_□′N_□′ ≥ 6|T_ξ| and #π_j = |T|M^{−4}, with |T_ξ| = |T|ξ^{−4}. So max_□′N_□′ ≥ 6M^4L^{4j}. The index j is not bounded, so no absolute N_□′ exists, and V23's "N_□′ = O(M^d)" is false.

V20. (w1)–(w3). CONFIRMED.
- (w1): on U(N), W^{−1} = W*, so ½tr(W + W^{−1}) = Re tr W.
- (w2): G is a compact real form of G^c, so G is totally real of maximal dimension (Lie algebra g ⊕ ig). A holomorphic function that vanishes on such a submanifold near 1 vanishes on the connected component of its domain. The same holds for w(∂𝐔) as a function of the four bond variables in (G^c)^4 with real form G^4. So w is the only analytic extension.
- (w3): W + W^{−1} − 2 = W^{−1}(W − 1)². Also |tr M| ≤ |M| for the normalized trace and the operator norm, and |W^{−1}| ≤ (1 − |W − 1|)^{−1} by the Neumann series. So |w(W)| ≤ ½|W − 1|²/(1 − |W − 1|) ≤ |W − 1|² for |W − 1| ≤ ½.

V21. (pl), |∂𝐔 − 1| ≤ c_□ξ², c_□ = max{α_0, 3α_2}. CONFIRMED.
- On U^c_j: this is (1.14) as printed (V3).
- On the (4.4) domain: I redid the proof. The degree-1 part of e^{X_1}…e^{X_4} is ΣX_i = iξ²(∇^ξ_μ𝐀_ν − ∇^ξ_ν𝐀_μ), of norm ≤ 2α_2ξ². Expand the product as a series of words in the X_i. The words of degree ≥ 2 have total norm ≤ e^s − 1 − s ≤ ½s²e^s with s ≤ 4ξα_2. So that part is ≤ 8α_2²ξ²e^{4α_2}. With 8α_2e^{4α_2} ≤ 1 (true for α_2 ≤ 1/20: 0.4·e^{0.2} ≈ 0.49), the total is ≤ 3α_2ξ². The order of the factors does not matter for this bound.
- The side conditions α_2 ≤ 1/20 and c_□ ≤ ½ are implied by the canon cap (LM)^4α_i ≤ ¼ (N-370). They add no entry.
- Scope note (not an error): CMP 116 (1.34) uses U^c_{k+1}(Y, (1 + β)α_0, …), and p. 270 mentions larger radii α_0′, α_1′ for P^{(k)}. If A10 §5 needs Lemma C1 on such an enlarged domain, replace α_0 in c_□ by that radius. w is analytic on |W − 1| < 1, so the lemma holds for every radius with c_□ ≤ ½.

V22. (cnt) and z_0. CORRECTED (valid but loose). ζ is 1 at t = 1/3 and |ζ′| ≤ 5, so on [1/3, 2/3] |ζ(t)| ≤ min{1 + 5(t − 1/3), 5(2/3 − t)} ≤ 4/3. So z_0 ≤ (4/3)^4 < 3.2. The target's bound z_0 ≤ (8/3)^4 < 51 is true, but it is not sharp. The count: a closed cube of side ℓ_ζM, ℓ_ζ = 4/3, holds ≤ (ℓ_ζM/ξ + 1)^4 points of T_ξ, so ξ^4Σ|ζ_□′| ≤ 6z_0(ℓ_ζM + ξ)^4 ≤ 6z_0(4M/3 + 1)^4 = N^w_M (ξ ≤ 1). CONFIRMED. For M ≥ 3, N^w_M ≤ 6·51·16M^4 < 5·10^3M^4. CONFIRMED. With z_0 ≤ (4/3)^4 the constant falls to < 3.1·10^2M^4. Either value works. The partition with this ζ and centers at spacing M exists, because the transition from 1 to 0 over a length 1/3 needs slope ≥ 3 ≤ 5.

V23. Lemma C1(iii′). CONFIRMED [P] given (1.14) [V], the (4.4) domain [V] and (C-b) [R]. The chain is |E_C^{(j)}| ≤ |β_j|·Σ|ζ_□′|·c_□²ξ^4 ≤ c_□²N^w_M|β_j| ≤ c_□²N^w_MC_ΠE_0. The domain claim: supp ζ_□′ extends M/6 past □′ on each side, so it meets all 3^4 cubes of □̃′^1 and no others. A tree along the 80 adjacencies has length ≤ 80M, so d_j(X_□′) ≤ 80 (loose, but valid). Then |E_C^{(j)}| ≤ E_Ce^{−κd_j} with E_C = e^{80κ}c_□²N^w_MC_ΠE_0. Correction of SOURCES_L1_D (iii): its "one-cube domain, d_j = 0" is wrong, and the target fixes it.

V24. The ξ^4 cancellation. CONFIRMED for d = 4: the count grows like ξ^{−4} and each plaquette gives ≤ c_□²ξ^4. CORRECTED for the general-d sentence: it is an outline only. It needs the d-dimensional analogue of (1.14) and the weight ξ^{d−4} in j-units. I did not check either. No consumer uses it. Grade it [P-sketch, not used].

V25. (w4), evenness. CONFIRMED. w(e^{iF}) = 1 − tr cos F is an even entire function of F. With ∂𝐔(p) = e^{iG(𝐇)}, G(0) = 0, the first derivative in 𝐇 at 0 is f′(0)·G′(0) = 0. This holds for complex F, so it does not need F Hermitian. It also replaces the "tr F = 0 for su(2)" argument of SOURCES_L1_D, which is not needed (V25 of SOURCES_L1_D_VERIFY already noted this for Hermitian F).

V26. K_T^C fixed before ε_1. CORRECTED (slot). K_T^C = e^{80κ}c_□²N^w_MC_ΠK_T depends on κ (N-070), M (N-310), C_Π (a power of M, SOURCES_L1_D (C-b)), K_T (A10), and through c_□ on α_0, α_2. α_0 and α_2 are fixed at N-370, not at N-310. So the correct statement is "fixed at N-370, before N-400". The target's "(N-310 before N-400, as in V23)" names the wrong slot. Both slots are before N-400, so the conclusion stands. Alternative: use c_□ ≤ ½. Then K_T^C ≤ ¼e^{80κ}N^w_MC_ΠK_T is fixed at N-310. Neither K_T^C nor C_Π has a canon line. No canon edit is needed, because N-400 already lists M^q.

V27. Consistency with CMP 116 Lemma 1. CORRECTED (status). The bound of (1.36) has a factor M^q with q unspecified. An extra O(M^4) from N^w_M has this form, so the repair is consistent with the printed lemma. This is consistency, not corroboration: the page does not show the C-term constant, and it does not fix q. Also note the factor e^{80κ}: Lemma 1 has exp C_2κ_1, which is consistent only if e^{80κ} ≤ e^{C_2′κ_1} for some absolute C_2′. κ_1 ≥ 16(1 − 2δ)κ by p. 9, so 80κ ≤ 5.2κ_1, and this holds. Grade [I, consistent].

V28. Effects on SOURCES_L1_D §2.4 and the grade table (§4 of the target). CONFIRMED, with V26 for the slot. (C-a) second half [I] → [V + P]: CONFIRMED. (C-c) refuted [P]: CONFIRMED. Lemma C1(iii′) [P] given (C-b): CONFIRMED. (C-b) [R] unchanged: CONFIRMED. Proposition C2 [P-sketch] relative to A10 §5 unchanged: CONFIRMED in form; I did not re-read A10 §5.

## 4. Grade summary

| item | grade |
|---|---|
| V1–V11 page facts F1–F11 | CONFIRMED |
| V12–V16 S1 (a)–(f), including the recomputation of (4.39) | CONFIRMED |
| V17 refutation of V23's unit-spacing reading | CONFIRMED |
| V18 S1′ | CONFIRMED [P-sketch rel. (3.3) R] |
| V19 S2, (C-c) false | CONFIRMED (partition-independent form added) |
| V20 (w1)–(w3), uniqueness | CONFIRMED |
| V21 (pl), c_□ = max{α_0, 3α_2} | CONFIRMED (scope note on enlarged radii) |
| V22 z_0 | CORRECTED (z_0 ≤ (4/3)^4; target's bound valid, loose) |
| V23 Lemma C1(iii′), d_j ≤ 80 | CONFIRMED |
| V24 ξ^4 cancellation; general d | CONFIRMED (d = 4); CORRECTED (general d is an outline) |
| V25 evenness (w4) | CONFIRMED |
| V26 K_T^C slot | CORRECTED (N-370, or N-310 via c_□ ≤ ½) |
| V27 CMP 116 Lemma 1 | CORRECTED (consistency, not corroboration) |
| V28 effect on SOURCES_L1_D §2.4 | CONFIRMED |

Count by V-number: 24 CONFIRMED, 4 CORRECTED (V22, V24, V26, V27), 0 UNSUPPORTED. V23 also records a correction to SOURCES_L1_D ("one-cube domain, d_j = 0" is wrong); the target already makes it.

## 5. Safe ledger text for R-010 (proposed; not applied)

"R-010 (R2). WRITTEN OUT, reduced, not closed (SOURCES_L1_D §2; SOURCES_R010_CC; SOURCES_R010_CC_VERIFY). R-terms [P-sketch] rel. (R-dec) [R: CMP 109 p. 271 + CMP 102 (190), including its Δ entry; R-019 at complex arguments] and (R-dom) [R: CMP 109 p. 273]. C-terms [P-sketch] rel. (C-b) [R: Π decay] and A10 §4–§6. (4.38) misprint U_j → U_k [V + P]. (4.39) scale [V + P]: the x-sum runs over the fine lattice T_ξ, ξ = L^{−j} (CMP 109 p. 257), with the ξ^4-weighted pairing; this is the pairing of Δ_j in CMP 95 (1.65). (C-c) is false (N_□′ ≥ 6M^4L^{4j} on average for every partition) and is replaced by Lemma C1(iii′) [P]: |E_C^{(j)}(□′)| ≤ c_□²N^w_M|β_j|, c_□ = max{α_0, 3α_2}, N^w_M = 6z_0(4M/3 + 1)^4, z_0 ≤ (4/3)^4; localization domain ⊂ □̃′^1, d_j ≤ 80. Constants K_R, K_R′, K_T^C = e^{80κ}c_□²N^w_MC_ΠK_T are fixed at N-370 (at N-310 with c_□ ≤ ½), before ε_1 (N-400). The O(M^4) factor is consistent with the M^q of CMP 116 (1.36). Order 1 vanishes by evenness of 1 − tr cos F. Marginal parts cancel exactly [V p. 298]. α_* = β_H unchanged. No [I] item left in R2."

## 6. Report (≤ 100 words)

PASS WITH CORRECTIONS (24 CONFIRMED, 4 CORRECTED, 0 UNSUPPORTED). The images support the fine-lattice reading of (4.39): ξ = L^{−j} is the spacing (p. 257). My recomputation gives ∂^ξ with the ξ^4 pairing only for side-ξ plaquettes, and (4.40) matches CMP 95 (1.65). V23's unit-spacing reading is refuted. (C-c) is false for every partition. (iii′), (w1)–(w4), (pl) and the ξ^4 cancellation hold. Corrections: K_T^C sits at N-370, not N-310; z_0 ≤ (4/3)^4 is sharper; CMP 116 Lemma 1 shows consistency, not corroboration; the general-d remark is an outline only.
