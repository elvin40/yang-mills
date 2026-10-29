# SOURCES_L1_C_VERIFY — adversarial verification of SOURCES_L1_C (S-46, S-49, S-51; rows R-002, R-003, R-005)

Written 2026-10-28 by Claude (Opus 5.5), verifier. Ids follow IDS.md. S-xx labels are file-local labels of OPEN_ITEMS_SWEEP.md.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
No existing file was edited. PLAN.md was not changed. sync.sh was not run.
Page images read (pdftoppm -r 150, fresh folder /tmp/l1cv, deleted after use): CMP 96 p. 231; CMP 98 p. 19; CMP 99 (Propagators) pp. 396, 397, 398, 409, 421, 422, 423; CMP 102 (Variational) pp. 279, 306, 307, 308, 309; CMP 109 pp. 253, 254, 262, 267, 271, 272, 273; CMP 116 pp. 5, 8, 13, 16.
Other inputs: SOURCES_ORDER_CANON N-060, N-090, N-180, N-190, N-270, N-310, N-320, N-370, N-380; THM37_FULL 3.2 (H1), 3.2a, Lemma CC; A1_WALK_FULL 2.1–2.2; SOURCES_L1_D §2.2; grep of every repository file that cites CMP 102 (190).

## Verdict

PARTLY CONFIRMED. Every quotation that I checked on a page image is accurate. The S-49 and the ∇/Hölder part of S-51 hold. Four findings change the proposed ledger text:
1. S-51, Δ entry (major). The claim "used by no consumer" is false. Balaban consumes the Laplace entry himself: CMP 109 (3.9) p. 271 "and the same for derivatives and the second order operators applied to it", (3.14) p. 272 "|A|, |P_1A|, |∇^ξ_UA|, |Δ^ξ_UA| < α_2", and (3.15) p. 273 "r max{|δH_j|_X, |P_1δH_j|_X, |∇^ξ_UδH_j|_X, |Δ^ξ_UδH_j|_X} = ⅓α_2". SOURCES_L1_D (R-dec) uses the same kernels. So the Δ entry cannot be dropped. It is on the R-010 chain, at real and at complex arguments.
2. S-51, D*D versus Δ. The identity that SOURCES_L1_C tags "[I: lattice Weitzenböck form, not printed]" is printed on CMP 109 p. 272: "D*D + DRD* = D*D + DD* − DPD* = Δ_U − P_1 + (lower order, local operator)". On the Landau slice the Δ entry therefore equals the D*D entry plus a P_1 term plus local terms. The Δ entry is not "not derivable"; it is open at the same step (O-π) as D*D, plus a P_1 bound.
3. S-46, cost. The small-field route (Lemma P1) costs nothing new. The existing N-380 cap (18L + 2)Mε_0 ≤ R_1M_1^{(102)}a_1^{102} already covers every (H1) cube, because 2M′ ≤ (c_HL + 2)M. The proposed "c_H → c_H + 2" is a loosening of this, not a requirement. Also, Lemma P1's first condition B_3ε_1 ≤ 2α_0 gives the bound (c_H + 2)LMα_0, which exceeds the (H1) bound c_HLMα_0. With the canon form ε_0 ≤ α_0/(2B_3) (that is B_3ε_1 ≤ α_0), the bound is ≤ ½(c_HL + 2)Mα_0 ≤ c_HLMα_0, and N-370 stays unchanged. Only the THM310 sizes on the CMP 122 route add a cap (22LMε_0 ≤ R_1M_1a_1).
4. S-49, order placement. The new side condition RM > 2(2D_+ + K_0 + 4)M_1 is not a (d, L) bound on R. K_0 = 2c_X + 2 (A1_WALK_FULL 2.1), and c_X is fixed at N-190, after R (N-180). The condition must be booked as a lower bound on M/M_1 at N-310. No cycle results.

## 1. S-46 (R-002; H-318(ii)): THM37 (H1)

V1.1 Quotation of CMP 99 p. 396 (class of cubes, "Here O(1) will mean a number ≥ 10", (3.35) "where O(1)M is a size of □ in T_{L^{−j}}"). CONFIRMED [V p. 396].
V1.2 Two readings; the text ties O(1)M to the size of □. CONFIRMED. The counter-evidence is also printed: CMP 99 p. 409 [V]: "number O(1) in the condition (3.35) can be taken as equal to 12, thus the cube □̃^5 is contained in one of the cubes for which this condition holds". That sentence reads O(1) as one fixed number. So the choice stays [I-reading], as SOURCES_L1_C says.
V1.3 Under reading B, (H1) is the printed class truncated at side c_HLMξ_j. CONFIRMED [P given reading B]. The placement clauses of (H1) (C ⊂ B^j ∪ B^{j+1}, C ∩ B^j ≠ ∅, union of big blocks) are those of p. 396.
V1.4 CMP 102 Theorem 1 quotation (cube class, size 2ML^jη, M a multiple of R_1M_1, enlargement (2M + 4R_1M_1)L^jη, (9), (10), M(ε_1) = R_1M_1(a_1/ε_1), "a_0, a_1, B_3, depend on d and L only"). CONFIRMED [V p. 279]. Theorem 1 is multi-size with a bound linear in the size.
V1.5 Lemma P1. CORRECTED (three points; the conclusion survives).
 (a) "C′ ⊇ C the concentric top-level cube": a concentric cube need not be a union of big blocks of the L^{−k}-lattice. In CMP 102 the big blocks have side M_1L^jη (CMP 102 (1), text p. 277: "Ω_j is a union of big block of the size M_1L^jη"). Repair: take the least aligned cube that contains C. Its side is ≤ sMξ_n/ξ_k + 2M_1 + 2R_1M_1 (alignment plus rounding), so 2M′ ≤ (s + 2)M still holds when (R_1 + 1)M_1^{(102)} ≤ M. N-270 and N-310 give this (M_1^{(119)} ≥ L^aR_1M_1^{(102)}, M ≥ 11M_1^{(119)}). If n = k and C is already a union of CMP 102 big blocks (nested grids), no rounding is needed. [P]
 (b) The label M_1 in Lemma P1 must be M_1^{(102)} (canon N-265, N-320). Notation only.
 (c) Bound versus cap. With the file's condition B_3ε_1 ≤ 2α_0 the output is |A| < (s + 2)Mα_0ξ_n^{−1} ≤ (c_HL + 2)Mα_0ξ_n^{−1}. That is larger than the (H1) bound c_HLMα_0. As written, Lemma P1 does not deliver (H1); it delivers (H1) with c_H + 2 in the bound, which would move the N-370 cap. With the canon cap ε_0^{109} ≤ α_0/(2B_3) (N-380), B_3ε_1 = 2B_3ε_0 ≤ α_0, and the bound is ½(s + 2)Mα_0 ≤ ½(c_HL + 2)Mα_0 ≤ c_HLMα_0. So (H1) holds exactly, and N-370 is unchanged. Use the canon form.
 (d) The size clause M′ ≤ M(ε_1): 2M′ ≤ (s + 2)M ≤ (c_HL + 2)M = (18L + 2)M. With ε_1 = 2ε_0 this is (18L + 2)Mε_0 ≤ R_1M_1^{(102)}a_1^{102}, which is the present N-380 cap word for word. The file's "new cap 20LMε_0" is stronger than needed. Cost of the small-field route: none.
 Also checked: with Ω_j = T for all j, B^k = T is the only nonempty layer, so every cube of the top index meets the placement clause, and ξ_n ≤ ξ_k gives ξ_k^{−1} ≤ ξ_n^{−1}, ξ_k^{−2} ≤ ξ_n^{−2}. [P] Lemma P1 rests on A18 5.2 (identification with the Thm 1 minimizer) [R], as stated.
V1.6 Lemma P2. CONFIRMED with one added caveat and the cost restated.
 Geometry: Case 1′ (□̃^5 at index j, Thm 1 enlargement ≤ 2R_1M_1ξ_j ≤ 2Mξ_j per side, inside □̃^7) and Case 2′ (□̃^7 at index j − 1; B^j has thickness > RMξ_j > 16dMξ_j, so □̃^7 misses B^{j+1}; a union of level-j big blocks is a union of level-(j − 1) big blocks) are correct [P]. They follow THM37 Lemma CC Cases 1, 2.
 Bounds (canon form B_3ε_1 ≤ α_0): Case 1′ M′ = 6M gives 6Mα_0ξ_j^{−1}; Case 2′ M′ = 8LM gives 8L²Mα_0ξ_j^{−1}, 8L³Mα_0ξ_j^{−2}. Both are inside c_HL³Mα_0 ≤ a_1. Size clauses: 6Mε_1, 8LMε_1 ≤ R_1M_1a_1, that is 16LMε_0 ≤ R_1M_1a_1, implied by N-380. So THM37 on this route costs nothing new either.
 THM310 (□̃^{10}, side 22M or 22LM): M′ = 11LM, size clause 22LMε_0 ≤ R_1M_1^{(102)}a_1^{102}. This is stronger than (18L + 2)Mε_0 and is the one new cap. The bound 11L·Mα_0 (in ξ_{j−1} units) stays within c_HL³Mα_0 ≤ a_1. So "+4" is right for this route only, and only in the ε-cap.
 Added caveat [I]: Thm 1's layers B^j belong to the variational sequence of U_{k,Z}; Lemma P2 uses them as the layers of the THM37 propagator sequence. That identification is not argued in SOURCES_L1_C. It sits inside the [I] of A18 5.3(b) that the file already names.
V1.7 Complex domains, CMP 109 (1.12). CORRECTED (scope).
 The quotation is accurate [V p. 262]. Two corrections. (i) (1.12) constrains the G-valued factor U of U = U′U ("(i) U = U′U, U has values in the group G"), not the complex points. The convention is a convention on the real factor of the domain. (ii) (1.12) has no clause "where O(1)M is a size of □"; the only support for reading B there is that the same symbol O(1) appears in the size and in the bound. So reading B is weaker on p. 262 than on p. 396. The convention route of SOURCES_L1_C (impose (1.12) for sides 10M to (c_H + 4)LM, bound (side)·Bα_0) is a stated hypothesis with cost; its transfer to new backgrounds is at the grade of R-018 and R-023 [R], as the file says.
V1.8 Result S-46. CORRECTED. "DISCHARGED" is safe only in this form: (H1) is printed under reading B; under reading A it holds for every real small-field background (Lemma P1, with the V1.5 repairs) at no new cost; on the CMP 122 route it holds given A18 5.3(b) [I] and the sequence identification [I] (V1.6), with the one new cap 22LMε_0 ≤ R_1M_1a_1 for THM310; for the regular class of CMP 109 (1.12) it is a convention on the real factor [I-reading]. H-318(ii) has the same status.

## 2. S-49, part 1: H-303 (IN8) and H-304 (IN9 = H-002, O2)

V2.1 Key fact: (G) is an abstract list, and L-017 uses truncated walk sums, not Balaban cubes. CONFIRMED [A1_WALK_FULL 2.1–2.2 read]. 2.2 defines N̂_□ := 1_□N̂^{(□)}1_□ with kept walks X̃_i^5 ⊂ □⁺; nothing there needs □ to be a lattice cube. A metric ball serves.
V2.2 Inputs. (2.45), (2.46) quotations CONFIRMED [V CMP 96 p. 231], including "The domain Ω_j is a sum of cubes of the size ML^jη". (D-l) is CMP 96 (2.60) [R, not imaged]. (D-g) grid anchoring is [I-minor], as stated.
V2.3 Lemma V. CONFIRMED [P given (D-l), (D-g)]. Lower bound: x ∈ B^n lies in an Ω_n-grid cube Q; Ω_{n+1} is a union of such cubes (D-g), so Q ⊂ B^n; a sub-cube of r/(2d) blocks per side has ℓ¹ diameter ≤ r/2 in Λ_n bonds (weight 1 each). Needs r/(2d) ≤ M; holds for r ≤ M_1. Upper bound: d ≤ ρ < RM forces |n(z) − n| ≤ 1; a contour that reaches B^{n+2} crosses B^{n+1} at cost > RM; so every weight is ≥ ξ_{n+1}^{−1} and |x − z|_1 ≤ ρξ_{n+1}; the level-(n − 1) count gives the factor L². Correct.
V2.4 Lemma PK. CONFIRMED [P]. The disjoint balls B(x, s/2) lie in B(y, ρ + s/2); the file's ρ + s is a harmless overestimate. The constant N(KM_1, M_1) ≤ 3(4d)^d(2(K + 2)L²)^d checks.
V2.5 Construction (G-d). CONFIRMED [P]. (i) maximality gives Σφ_l² ≥ 1; (ii) core distance M_1 and diameter 6M_1 by the triangle inequality; (iii) C_ov ≤ N(3M_1, M_1); (iv) |S(y) − S(y′)| ≤ Σ_l 2|φ_l(y) − φ_l(y′)| ≤ 4C_ov d/M_1 and |a^{−1/2} − b^{−1/2}| ≤ ½|a − b| for a, b ≥ 1, so c_h ≤ 1 + 2C_ov. The Lipschitz bound is in d, so it holds across scale boundaries. O2 closes.
V2.6 Side condition and order. CORRECTED. SOURCES_L1_C writes it as "R > 2(2D_+ + K_0 + 4), with D_+, K_0 fixed at N-060". But A1_WALK_FULL 2.1 defines K_0 := 2c_X + 2, and c_X is a walk constant at N-190 ("Walk constants at M_min: … c_X"), after R at N-180. So the bound is not a (d, L) bound on R. Book it as a lower bound on M/M_1: M ≥ 2(2D_+ + K_0 + 4)M_1/R at N-310. Lower bounds on M are free there (canon N-180: "every later lower bound on RM (N-310) is a lower bound on M"), and c_X is evaluated at M_min and stays valid for larger M (A1_WALK_FULL 9.1 step 3 monotonicity [I, as in the canon]). No cycle. Flag, not resolved here: the canon lists K_0 and D_+ with the geometry constants of N-060, while K_0 depends on c_X at N-190. This mismatch predates SOURCES_L1_C.
V2.7 "The X-PU corners leave A1_WALK". CONFIRMED for L-017. The corner [I-geo] stays for THM37, THM39, THM310 (Cor. 3.6, Lemma AG), as the file says.
V2.8 Id note. IDS.md has alias rows H-001 (= H-303 geometry), H-002 (= H-304), H-003 (= H-305), H-004 (= H-307), H-012 (= H-306 / WC I5). SOURCES_L1_C names only H-002. Any ledger edit should move the alias rows with the H-30x rows.
Result: H-303 PROVED [P given (D-l) R, (D-g) I-minor]; H-304 PROVED [P]. CONFIRMED with the V2.6 order correction.

## 3. S-49, part 2: H-305, H-306, H-307

V3.1 H-305. Quotations of CMP 98 (14), (15) CONFIRMED [V p. 19]; CMP 109 (0.11), (0.12) CONFIRMED [V pp. 253, 254]. Block-locality [P]: CONFIRMED, with one minor input: that Γ_{c_−,x} runs inside B(c_−) is not on p. 19 ("We refer the reader to paper [2] for explanations of symbols"); it is a CMP 95 definition [R]. Normalization [P-sketch]: CONFIRMED as a sketch; the one-step count (2dL + 1)/L ≤ 2d + 1 checks.
V3.2 H-306 = WC I5. CONFIRMED. N-370 lists "WG-1 α_0 ≤ c′M^{−1}M_1^{−10} (G), c″M^{−1}M_1^{−12} (G_1)" in the α-chain after M and M_1; every α_0 condition there is an upper bound. A condition with a stated cost.
V3.3 H-307. CONFIRMED [P given CMP 116 pp. 5, 8, 16, all V]. Quotations match: p. 5 "|s(Δ)| ≤ e^{κ_1} … κ_1 is a sufficiently big positive number", (1.11), "for δ_1M ≥ κ_1"; p. 8 (1.27), (1.28); p. 16 "M is much bigger than κ_1, especially that e^{−1/3δ_0M}e^{16κ_1} < 1", "⅛(κ_1 − 1) ≥ (1 − 3δ)κ", "In fact the constant is small for κ_1 large". The M-free bound of the (2.19) sums checks at d = 4 (M^{−4}·(16M/(κ_1 − 1))^4). Each condition linking κ_1 and M is a lower bound on M. Canon N-090 matches. Residue [I-minor]: "sufficiently large" on p. 5 is read as the later stated conditions.

## 4. S-49, part 3: H-321 (Lemma D□, O(1) form)

V4.1 Reduction d_□ ≥ ρ_W in the non-interface case. CONFIRMED [P]: lower □-level means smaller ξ and larger weight.
V4.2 Window. CONFIRMED [P given CMP 96 (2.2), R > 18dL]: a path with W ≤ b + 1 cannot reach levels j ± 2.
V4.3 Lemma VC. CONFIRMED at grade [P-sketch]. Steps (ii)–(iv) are valid: each shortcut removes a part whose weights are ≥ the weight of the target cell. One gap beyond the one the file names: on cell faces the file takes w as the smaller adjacent value, so a monotone piece that runs along a face of a cheaper cell is, for counting, a visit to that cell; the visit count must allow this. It changes N_v by a (d) factor at most. The surface join on Σ is [I-minor], as stated.
V4.4 Not load-bearing; the weak form [P] stays the fallback. CONFIRMED (THM37 4.4a; R-003 ledger wording as cited).
Result: H-321 [P-sketch]. CONFIRMED.

## 5. S-49, part 4 (R-003): WC_FULL I1–I9

I1. CONFIRMED [V CMP 109 p. 267]: "D̃(B) has an expansion beginning with quadratic terms, and D̃^{(2)}(B) = C̃^{(2)}(B)"; (2.11) "⟨H_1hC̃^{(2)}(B′), J⟩ − ½G^{(2)}(B′) − ½⟨H_1B′, Δ_1H_1B′⟩"; "The quadratic form in B′ above is equal to −1/2⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one". Printed definition.
I2. CONFIRMED [P]. Locality from (0.11)–(0.12) [V pp. 253–254]; that G(y, x) lies inside B(y) is WC_FULL PF1, not on these pages.
I3. CONFIRMED. (a) [P]. (b) The p. 254 sentence transfers the results of "[12]" = CMP 98 (CMP 109 reference list, text layer); the CMP 99 operators come through p. 253 "The considerations and results of this, and previous papers, do not depend on any particular averaging operation used" = R-022. The file says this. [R] (c) notation, cost none beyond R-018.
I4. CONFIRMED: a pointer to R-018.
I5. CONFIRMED: = H-306 (V3.2).
I6. CONFIRMED [P given the reading]. CMP 116 p. 13 [V]: "The above expression depends yet on the external gauge field configurations on the whole lattice T_η, through the propagators". The localized use stays a convention, outside R-003.
I7. CONFIRMED [V CMP 116 p. 13], verbatim.
I8. CONFIRMED [V CMP 109 p. 253 (0.10)] + Karcher 1977 (external).
I9. CONFIRMED. CMP 99 p. 422 [V]: "From the regularity condition (3.36) and the inequality (3.133) we have the estimate |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3}". This bounds H*J, not J; the bound on J itself is the file's own expansion from (3.36) [P-sketch], as graded.
Result: no independent [I] remains in I1–I9. CONFIRMED.

## 6. S-51 (R-005): CMP 102 (190) entries

V6.1 Quotations. CONFIRMED [V CMP 102 pp. 306–309]: (179) "𝓗 = 𝒜_0 + H_0B − HD(𝒜_0 + H_0B)"; G = (Δ_a − Δ^{(2)})^{−1} "has exactly the same properties as Δ_a^{−1}"; (182), (183), (184), (186)–(188), (189) ("We do not perform these calculations here"), (190) with its five entries, Prop. 9.
V6.2 Leftmost-factor form (6.2.1). CONFIRMED [P]. From (188), 𝔄_0 = (I + N)^{−1}G̃WH_0 with W = Δ^{(2)} − V″; (I + N)^{−1}G̃ = G̃ − G̃V″(I + N)^{−1}G̃; so 𝔄_0 = G̃Y as written.
V6.3 Inputs (L-H), (L-G). CONFIRMED [V CMP 99 pp. 397, 398, 422, 423]. (3.133) with the variational factor (L^jη)^{−1} gives the first three entries of (190). Thm 3.12: "The exception is the inequality in (3.42) involving the covariant Laplace operator. It does not hold for G, G_1." The weight-ratio claim is supported also by p. 398: "the choice of powers L^jη is conventional also. Using Lemma 2.1 in [4] we may replace the factor (L^jη)^α by (L^jη)^β(L^{j′}η)^γ with β + γ = α".
V6.4 ∇ and Hölder entries PROVED. CONFIRMED [P given (L-H), (L-G), the sup entry of SOURCES_A4_D189 §6.3, which rests on (189) = R-005 core]. Note: the ∇ bound for the G̃-led term is also printed directly in (187) [V p. 308] in the weighted norm |∇G̃(…)𝔄|_{(−2)}.
V6.5 D*D entry [P-sketch], open step (O-π). CONFIRMED in substance, two minor corrections.
 (a) Sign. CMP 99 (3.130) [V p. 421]: G = G_0(I − Δ′_πG_0)^{−1}, so G^{−1} = G_0^{−1} − Δ′_π, not G_0^{−1} + Δ′_π. The identity of 6.5(a) reads ΔH = Q*((QGQ*)^{−1} − a) + Δ′_πH (on the Landau slice, R a projection). The bounds are unaffected.
 (b) The a-term coefficient a_j(L^jη)^{−2} is printed in (3.88) [V CMP 99 p. 409]. The [I-minor] tag on it can be removed.
 The obstruction is accurate: p. 421 [V] "One of the three derivatives there has to be applied either to an expression on the right, or on the left of Δ′_π", and (3.131) [V p. 422] is bilinear in L¹.
 (c) The claim "the pointwise D*D entry is needed only at complex B, for the J-conditions of CMP 109 (1.14), (1.16)" is UNSUPPORTED. See V6.6: CMP 109 (3.14)–(3.15) uses P_1δH_j and Δ^ξ_UδH_j, and on the Landau slice (DRD* = 0 there) P_1 = Δ_U − D*D + (local); so the D*D entry (or an equivalent P_1 bound) is used at the arguments H_j(B(t)) of the small-field step, real ones included.
V6.6 Δ entry. CORRECTED (major).
 (a) The obstruction for the G̃-led term is accurate: Thm 3.12 excludes the Laplace inequality for G, G_1 [V p. 423].
 (b) "[I: lattice Weitzenböck form, not printed on the pages read]" is wrong as to printing. CMP 109 p. 272 [V]: "We use the fact that H_j satisfies the Landau gauge condition RD*H_j = 0, and we replace the operator D*D by D*D + DRD* = D*D + DD* − DPD* = Δ^ξ_U − P_1 + (lower order, local operator)." On the Landau slice: D*D = Δ_U − P_1 + (local). So the Δ entry is equivalent to the D*D entry plus a pointwise kernel bound for P_1(δ𝓗/δB). It is open at (O-π) plus a P_1 bound, not "not derivable". Balaban on the same page prefers Δ: "we will have good bounds, including bounds for the covariant Laplace operator. Such bounds do not hold for the operator D*D".
 (c) "No file uses the Δ entry" is false. Printed consumers: CMP 109 (3.9) [V p. 271] "and the same for derivatives and the second order operators applied to it"; (3.14) [V p. 272] "|A|, |P_1A|, |∇^ξ_UA|, |Δ^ξ_UA| < α_2 on X"; (3.15) [V p. 273] "r max{|δH_j|_X, |P_1δH_j|_X, |∇^ξ_UδH_j|_X, |Δ^ξ_UδH_j|_X} = ⅓α_2", and (3.17) "follows only from the fact that H_j(B(t)) satisfies (3.14) with 1/3α_2, and δH_j satisfies (3.9)". Repository consumer: SOURCES_L1_D §2.2 (R-dec) "the same kernels with P_1, ∇^ξ_U, Δ^ξ_U applied are ≤ B_3e^{−δ_0d^{(ξ)}(x, y)}" and Step 2 (the Cauchy radius uses |ΔδH_j^R|). The SOURCES_L1_C grep missed CMP 109 (3.9) because that consumer cites "Proposition 9, (190) [15]" through the sentence on p. 271 and through (3.14), not through the words "Δ entry". Grep run here: every file citing "(190)" was read at the citing line; the second-order use enters only through CMP 109 pp. 271–273 and SOURCES_L1_D.
 (d) Consequence. The repair "drop the Δ entry" is not available. Repair (i) (pure Landau gauge, R = 1) removes P_1 but is not Balaban's setting (R is the projection of CMP 99). The safe status: Δ and D*D entries both open at (O-π) plus a P_1 kernel bound; they are consumed by R-010 (CMP 109 §3, SOURCES_L1_D (R-dec)) at real and complex arguments.
V6.7 Result S-51. ∇, Hölder: CONFIRMED [P]. D*D: CONFIRMED [P-sketch, (O-π) open], scope claim UNSUPPORTED. Δ: CORRECTED; reduced to D*D + P_1 by CMP 109 p. 272; consumed; not droppable.

## 7. Grade table

| Claim (SOURCES_L1_C) | Grade |
|---|---|
| 1.1 p. 396 text, two readings | CONFIRMED |
| 1.2 (H1) printed under reading B | CONFIRMED |
| 1.3(a) CMP 102 Thm 1 multi-size | CONFIRMED |
| 1.3(b) Lemma P1 | CORRECTED (aligned cube, not concentric; M_1 = M_1^{(102)}; bound needs B_3ε_1 ≤ α_0, the canon form) |
| 1.3(b) cost c_H → c_H + 2 | CORRECTED: no new cost; present N-380 cap (18L + 2)Mε_0 suffices |
| 1.3(c) Lemma P2 | CONFIRMED (+ caveat: variational layers = propagator layers [I]) |
| 1.3(c) cost +4 on the CMP 122 route | CONFIRMED for THM310 only: 22LMε_0 ≤ R_1M_1^{(102)}a_1^{102}; THM37 costs nothing new |
| 1.3(d) complex domains | CORRECTED: (1.12) constrains the real factor U; reading B weaker on p. 262 |
| 1.4 α_0 cap at N-370 unchanged | CONFIRMED given the canon ε-cap; CORRECTED as derived from (1.3.1) alone |
| 2.3–2.5 Lemmas V, PK, (G-d); H-303, H-304 proved | CONFIRMED |
| 2.5 side condition as a bound on R at N-060 | CORRECTED: lower bound on M/M_1 at N-310 (K_0 depends on c_X, N-190) |
| 2.6 X-PU corners leave A1_WALK | CONFIRMED |
| 3.1 H-305 | CONFIRMED (locality P, normalization P-sketch) |
| 3.2 H-306 condition | CONFIRMED |
| 3.3 H-307 proved | CONFIRMED |
| 4 H-321 [P-sketch] | CONFIRMED (one extra unwritten step, V4.3) |
| 5 WC_FULL I1–I9 | CONFIRMED |
| 6.4 ∇, Hölder entries | CONFIRMED |
| 6.5 D*D [P-sketch], (O-π) open | CONFIRMED (sign of Δ′_π corrected; a-term printed) |
| 6.5(ii) D*D needed only at complex B | UNSUPPORTED |
| 6.6 Weitzenböck form not printed | CORRECTED: printed, CMP 109 p. 272 |
| 6.6 Δ entry not derivable by the printed route | CORRECTED: reduces to D*D + P_1 bound; open at (O-π) |
| 6.6 Δ entry used by no consumer | CORRECTED (refuted): CMP 109 (3.9), (3.14)–(3.17); SOURCES_L1_D (R-dec) |
| 7 binding sets unchanged | CORRECTED: R-010 depends on the Δ/P_1 entries of (190) |

## 8. Safe ledger statuses (proposed; not applied)

R-002 (grade unchanged: FULL PROOF relative to listed inputs [PAPER-GRADE]). Append: "Class (b) sweep 2026-10-28 (SOURCES_L1_C + VERIFY): (i) S-46 / H-318(ii): THM37 (H1) printed under the literal reading of CMP 99 p. 396; under the one-size reading it holds for real small-field backgrounds by CMP 102 Thm 1 (9) inside the existing N-380 and N-370 caps (no new cost); on the CMP 122 route given A18 5.3(b) [I] and the identification of variational and propagator layers [I], with one new cap 22LMε_0 ≤ R_1M_1^{(102)}a_1^{102} for THM310; for the CMP 109 (1.12) class it is a convention on the real factor; residue: the reading choice [I-reading]. (ii) H-303 (= H-001), H-304 (= H-002) PROVED by a metric partition (K_1 = 6, C_ov ≤ C(d)L^{2d}5^d, c_h ≤ 1 + 2C_ov) [P given CMP 96 (2.60) R, grid anchoring I-minor]; new lower bound M ≥ 2(2D_+ + K_0 + 4)M_1/R at N-310. (iii) H-305 (= H-003) locality [P], normalization [P-sketch]. (iv) H-306 (= H-012) a condition at N-370. (v) H-307 (= H-004) PROVED. (vi) H-321 [P-sketch]; weak form [P] fallback."
One-line status: "FULL PROOF relative to listed inputs [PAPER-GRADE]; S-46, S-49 (R-002 part) closed relative to CMP 102 Thm 1, one reading of CMP 99 p. 396 and two minor readings (verified 2026-10-28)."

R-003 (grade unchanged). Append the SOURCES_L1_C §5 text as proposed there. One-line status: "FULL PROOF relative to listed inputs [PAPER-GRADE]; I1–I9 printed, proved, or reduced to R4/R-018/R-022 (verified 2026-10-28)."

R-005. Replace "[I] the ∇/Hölder/Δ versions of (190)" by: "∇ and Hölder entries of (190) [P] relative to the sup entry, CMP 99 (3.133) and Thm 3.12 (leftmost-factor form; no rate loss). D*D entry [P-sketch]; open step (O-π), a pointwise kernel bound for Δ′_π (printed only as the bilinear L¹ bound (3.131)), and the reading 'R an orthogonal projection' [I]. Δ entry: [I]; by CMP 109 p. 272 (D*D + DRD* = Δ_U − P_1 + local, Landau slice) it is equivalent to the D*D entry plus a pointwise P_1 kernel bound; it is NOT droppable: CMP 109 (3.9), (3.14)–(3.17) consume |Δ^ξ_UδH_j| and |P_1δH_j| (row R-010; SOURCES_L1_D (R-dec))."
One-line status: "reduced [verified] to R-001 + published CMP 98/99/102 + R-018 + one bookkeeping item; derivative entries: ∇, Hölder [P]; D*D, Δ [I], both open at (O-π) plus a P_1 bound, and both used by R-010."

R-010 (new note). "R2 R-terms use the second-order entries of CMP 102 (190) (Δ^ξ_U and P_1 applied to δH_j; CMP 109 pp. 271–273); these are the open (O-π) items of R-005."

Canon. N-380: no change for Lemma P1 or for THM37 (the present cap (18L + 2)Mε_0^{109} ≤ R_1M_1^{(102)}a_1^{102} suffices); add 22LMε_0^{109} ≤ R_1M_1^{(102)}a_1^{102} only if THM310 uses the Lemma P2 route. N-370: unchanged, provided N-380 keeps ε_0^{109} ≤ α_0/(2B_3). N-310: add M ≥ 2(2D_+ + K_0 + 4)M_1/R (S-49 metric partition). Flag: N-060 lists K_0, D_+ as geometry constants, but K_0 = 2c_X + 2 with c_X at N-190.

## 9. Report

SOURCES_L1_C is partly confirmed. All page quotations are accurate. S-49 holds (H-303/304 metric partition, H-305–H-307, H-321 sketch, WC I1–I9). ∇/Hölder entries of (190) hold. Corrections: the Δ entry is consumed by Balaban (CMP 109 (3.9), (3.14)–(3.17)) and by SOURCES_L1_D, so it cannot be dropped; CMP 109 p. 272 prints D*D + DRD* = Δ_U − P_1 + local, so Δ reduces to D*D plus a P_1 bound, open at (O-π). S-46 small-field route costs nothing beyond the present N-380 cap; only THM310 adds 22LMε_0 ≤ R_1M_1a_1. The S-49 side condition belongs at N-310.
