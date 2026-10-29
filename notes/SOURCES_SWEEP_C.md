# SOURCES_SWEEP_C — class (a) items S-48, S-50, S-64, S-117 of OPEN_ITEMS_SWEEP (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5). Ids follow IDS.md. Labels S-xx are those of OPEN_ITEMS_SWEEP.md.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
No existing file was edited. PLAN.md was not changed. sync.sh was not run.
Page images read (pdftoppm -r 150, temporary folder, deleted after use): CMP 96 p. 229; CMP 98 pp. 40–41; CMP 99 pp. 398, 399, 408, 421, 422, 423, 428; CMP 109 pp. 266, 267, 268.
Grades: [V] read on the page; [P] proved here, every step checked; [P-sketch] steps written, one or more steps not written in full; [I] inferred, not proved.

## S-48 — H-180 (X-PU): which partition of unity WC_FULL and A1_WALK_FULL use; the factor-L repair (R-002, R-003; H-002)

Question. Do WC_FULL.md and A1_WALK_FULL.md (H-002, §2.1 (G), §7.2–7.3) use Balaban's printed partition of unity CMP 96 (2.36) × CMP 95 (1.118), or only a partition of their own? For each use, write the change c_h → L·c_h and the changed constants, or state why none is needed.

Answer.
1. A1_WALK_FULL main theorem L-017 (Theorem A1-W), §2.1–§6: it USES the printed partition. §2.1 (G) is tagged "[I: Balaban's 𝒟 and h_□ of CMP 99 p. 408]". CMP 99 p. 408 takes "the partition of unity {h_□} defined at the end of Sect. A in [4]", which is CMP 96 (2.36) with the h of CMP 95 (1.118). The space 𝔅 is the multiscale block lattice, so level interfaces occur inside cubes. So H-180 (X-PU) applies. H-002 (open item O2, Lipschitz bound across scale boundaries) is the same point.
2. A1_WALK_FULL §7.3 (the Z_0 application) and WC_FULL §5.2(a) (L-019, Theorem WC): each uses ONLY its own partition. It is a one-scale tent family on the reduced bonds of Z_0, unit metric, m ≡ μ ≡ 1. A1_WALK_FULL_VERIFY (tent construction, step 4) proves Σφ² ≥ 1 on Z_0 and c_h ≤ 2√d(1 + 2^{d+1}). One scale has no level interface. So no factor L enters this partition.
3. WC_FULL uses the printed partition only INDIRECTLY. Proposition W_N piece (c) is the L-017 tree for (QG_1Q*)^{−1}, with step ρ_W ≤ K_W/M_1 (WC_FULL §4.0, line "(A1-W)"). So the repaired K_W of item 4 enters ρ_A and the threshold C′_𝒟c_1ρ_A ≤ ¼ of WC_FULL §5.3. WC_FULL's own constants do not change in form.
4. The repair in A1_WALK_FULL (THM37_FULL 3.4 profiles). The repair changes two items of (G), not one:
 (a) Lipschitz: c_h → L·c_h on cubes with a face on a level interface (THM37_FULL 3.4; THM310_FULL (H-PU)).
 (b) Core margin: d(□⁻, 𝔅∖□) ≥ M_1 becomes ≥ M_1/L on interface faces. Reason: the repaired coarse profile is 0 only to depth ⅓Mξ_j (fine units), against ⅓Mξ_{j+1} for the literal profile. THM310_FULL (H-PU) states this margin ("⅓M_1ξ_j/L on interface faces"). THM39_FULL 8.0(b) records (a) and the (L1) band, but not the effect of (b) on the separation term E^sep_□.
 Changed constants of A1_WALK_FULL (substitution in 4.2–5.7):
 - 4.2 (sep): ‖E^sep_□‖ ≤ 2c_+Σ(¼δ_G)e^{−¼δ_GM_1/L}.
 - 4.2 (com) and ρ_com: c_h → Lc_h.
 - 4.3: ρ_1 = (8c_+Σ(¼δ_G)/c_−)(e^{−¼δ_GM_1/L} + e^{−δ_GM_1} + Lc_h/M_1).
 - M_e → L·M_e. (Put x = M_1/L. The condition e^{−¼δ_Gx} ≤ 1/x gives e^{−¼δ_GM_1/L} ≤ L/M_1.)
 - K_F → (8c_+Σ(¼δ_G)/c_−)(1 + L(1 + c_h)) ≤ L·K_F.
 - M_N = 2C_ovΣ(½ε)K_F, with the new K_F. C_ov does not change: the repair changes profiles, not cubes.
 - K_W := max{c_G, (4b_G/c_−)^{1/2}, 8c_+Lc_hΣ(¼δ_G)/c_−}; M_e′ → L·M_e′ (the S-insertion split uses e^{−⅛δ_GM_1/L}).
 - M_c = 2C_Wc_1K_W, the free-factor threshold (2C_Wc_1K_W)², and M_W = max{2C_𝒟c_G, M_a, M_e′, M_N, M_c}, with the new entries.
 Every changed constant depends on d, L and constants that the order (H4) fixes before M_1. L is fixed first. So no conclusion of L-017 or L-019 changes; only the size of M_W grows, by a factor of order L.
5. A route with no factor L [P-sketch]. L-017 never uses Balaban's local operators Δ′_□ on □. Its local operators are truncated walk sums N̂^{(□)}. So Lemma AG (THM37_FULL 3.5), which forbids cubes that cross a level interface, is not needed there. A partition built from the metric d of 𝔅 works: centres x_i an M_1-separated maximal set, □_i the d-ball of radius ½K_1M_1, φ_i := τ(d(·, x_i)) with the one-dimensional tent τ of A1_WALK_FULL_VERIFY, h_i := φ_i(Σφ²)^{−1/2}. The triangle inequality for d (SOURCES_A1_KERNEL §5, [I]) gives margin M_1 and Lip φ_i ≤ 2/M_1 for K_1 ≥ 6, with no L. Then c_h ≤ 2(1 + C_ov). The open step is a packing bound for C_ov in the multiscale metric [I-geo]. This route is not needed; item 4 suffices.

Evidence. A1_WALK_FULL §0.1 (𝔅 multiscale), §2.1 (G) tag, §4.2–5.7 (constants), §7.3; A1_WALK_FULL_VERIFY tent construction; WC_FULL §4.0, §4.2, §5.2(a) ("One scale is used … m ≡ 1, μ ≡ 1"), §5.3; THM37_FULL 3.4 and THM37_FULL_VERIFY V3; THM310_FULL (H-PU); THM39_FULL 8.0(b); WG_FULL l. 304. Images: CMP 96 p. 229 [V] (cubes of size 2ML^jη with centre in Λ_j "or the boundary of this set also"; (2.36) Σ_□h_□² = 1); CMP 99 p. 408 [V] ("unions of 2^d big blocks, with at least one of them contained in B^j(Λ_j)"; "We take the partition of unity {h_□} defined at the end of Sect. A in [4]").

Grade. Which partitions are used: [V] (files and pages read). Repaired constants in item 4: [P-sketch] (direct substitution, relative to THM37_FULL 3.4, which is [P] on flat faces and [I-geo] at corners and partial faces). Item 5: [P-sketch] with one [I-geo] step.

Proposed ledger status (R-002, H-180 (X-PU) sub-item). "H-180 (X-PU) in A1_WALK_FULL and WC_FULL: RESOLVED in form (SOURCES_SWEEP_C §S-48). L-017 §2.1 (G) uses the printed CMP 96 (2.36) partition; the THM37_FULL 3.4 repair gives c_h → Lc_h and core margin M_1 → M_1/L on interface faces, hence K_F, K_W, M_e, M_e′, M_N, M_c, M_W change (each fixed before M_1; conclusions unchanged). WC_FULL §5.2 and A1_WALK_FULL §7.3 use their own one-scale tent partition (no change); WC_FULL inherits the new K_W through ρ_W. H-002 (O2) is this item. Remaining: [I-geo] at corners (THM37_FULL 3.4). Not yet applied to the two files; unverified."

## S-50 — R-004: R-Δ2 from CMP 99 (3.136), and the R1 Schur step of SOURCES_A3_GAMMA0_FULL

Question. Does CMP 99 (3.136), with a block-average bound on C^{(2)}, give the R-Δ2 bound in the form that SOURCES_A3_GAMMA0_FULL uses? State the constant. Is the R1 Schur step of A3_GAMMA0_FULL correct as written?

Answer, R-Δ2. Yes. The form used (A3_GAMMA0_FULL 6.1, used once in 6.2(c)) is |⟨X, Δ^{(2)}X⟩| ≤ ε‖X‖²_𝔴 for all fine X, with ‖X‖²_𝔴 = Σ (L^jη)^{−2}η^d|X(b̂)|².
 Chain.
 (i) (3.136) [V p. 422]: Δ^{(2)}A = Σ_j Σ_{b∈Λ_j}(L^jη)^{d+1} tr (δ/δA)C_j^{(2)}(A, b)(H*J)(b), and |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3} from (3.36) and (3.133) [V p. 422].
 (ii) The block-average bound is CMP 98 (149) [V p. 40]: |⟨(δ/δA)C_j(U_0, A), δA⟩| ≤ C_3|A|Q_j″|δA|, proved by induction in (150)–(155) [V pp. 40–41], with C_3 = 6C_1″ admissible (C_1″ of (148), depending on d and L). The second-order part C_j^{(2)} obeys the same bound: replace A by tA and let t → 0 [P].
 (iii) Balaban combines (i) and (ii) into |⟨δA, Δ^{(2)}A⟩| ≤ O(1)C_3Mα_0 Σ_j Σ_b (L^jη)^{d−2}(Q_j″|δA|)(c)|A|_c and "hence" (3.137) [V p. 423]: |(Δ^{(2)}A)(b)| ≤ c_∞Mα_0(L^jη)^{−2}|A|, b ∈ Δ(y), y ∈ Λ_j, sup over several j-blocks around Δ(y). Here c_∞ = O(1)C_3. Check of the "hence" [P]: put δA = the unit field on one fine bond b̂; then (Q_j″|δA|)(c) ≤ c_Q(L^jη)^{−d}η^d for the O(1) blocks c near b̂, and the bound becomes (3.137).
 (iv) Schur step [P]. (3.137) holds for every A. For a linear operator with kernel t (with respect to η^d), "|(TA)(b)| ≤ c·sup|A| for all A" means that the row sums Σ_{b′}η^d|t_{ik}(b, b′)| are ≤ c for each pair of Lie-algebra components (test with A = sign pattern times a basis vector). Δ^{(2)} is symmetric, because a quadratic form (3.134) defines it. So column sums obey the same bound. Put S := W^{−1/2}Δ^{(2)}W^{−1/2}, W the 𝔴 weight. The kernel of S picks up (L^{j(b)}η)(L^{j(b′)}η). The index j(b′) of a bond within several j-blocks of b is j − 1, j, or j + 1 [I-geo, multiscale geometry], so the factor is ≤ L(L^jη)². Schur's test gives ‖S‖ ≤ N_g·c_∞·L·Mα_0.
 Constant: ε_Δ2 := N_g·c_∞·L·Mα_0, c_∞ = O(1)C_3, C_3 = 6C_1″(d, L), N_g = dim 𝔤. This is c(d, L)Mα_0, the form that A3_GAMMA0_FULL needs (ε_7 = 2K_1(ε_1 + ε_2²), with ε_1 := max of the R-Δ′ and R-Δ2 constants).
 Remark. The intermediate mixed bound of p. 422 alone does not give the ℓ² form. Its sup factor |A|_c can exceed the block L² average of |A| by a factor up to (number of fine bonds per block)^{1/2}. Step (iv) avoids it, because it uses (3.137) as a row-sum bound, not the mixed bound with δA = A.
 Small correction. A3_GAMMA0_FULL 6.1 cites (3.137) on p. 422. The image shows (3.134)–(3.136) on p. 422 and (3.137) on p. 423.

Answer, R1 Schur step. Correct as written.
 Statement: ‖X‖²_𝔴 ≤ K_1⟨X, G_1^{−1}X⟩, equivalently ‖W^{1/2}G_1W^{1/2}‖ ≤ K_1.
 (a) Equivalence [P]. G_1 > 0 and self-adjoint. T := W^{1/2}G_1W^{1/2} ≤ K_1 if and only if T^{−1} = W^{−1/2}G_1^{−1}W^{−1/2} ≥ K_1^{−1}, that is G_1^{−1} ≥ K_1^{−1}W.
 (b) Input [V]. CMP 99 Theorem 3.3 (p. 399) states that G satisfies (3.42)–(3.47) with G′ replaced by G. Theorem 3.12 (p. 423) extends this to G_1, except the covariant-Laplace inequality in (3.42). (3.46) (p. 398) is not excluded: ‖hG_1λ‖ ≤ B_0(L^jη)²|h|e^{−δ_0d(y,y′)}‖λ‖ for supp h ⊂ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′).
 (c) Block bound [P]. With h = 1_{Δ(y)}, ‖1_{Δ(y)}G_11_{Δ(y′)}‖ ≤ B_0(L^jη)²e^{−δ_0d}. The adjoint block has the same norm, and (3.46) with y, y′ exchanged gives B_0(L^{j′}η)²e^{−δ_0d}. So the block norm is ≤ B_0 min{(L^jη)², (L^{j′}η)²}e^{−δ_0d}. The weights give the factor (L^jη)^{−1}(L^{j′}η)^{−1}. So ‖T_{yy′}‖ ≤ B_0L^{−|j−j′|}e^{−δ_0d(y,y′)} ≤ B_0e^{−δ_0d(y,y′)}.
 (d) Block Schur test [P]. The blocks Δ(y) partition the fine lattice. ‖T‖ ≤ sup_yΣ_{y′}‖T_{yy′}‖ (T is symmetric). CMP 96 Lemma 2.1 (2.61) [R] gives Σ_{y′}e^{−αδ_0d(y,y′)} ≤ c_1(α) for α < 1; use e^{−δ_0d} ≤ e^{−½δ_0d}.
 Constant: K_1 = B_0c_1(½), with B_0 the Theorem 3.12 constant for G_1. Uniform in k, η, Λ, {Ω_j}, and regular U.
 One reading [I, definitional]: the 𝔴 weight of a fine bond in Δ(y), y ∈ Λ_j, is (L^jη)^{−2}. This matches the definition in A3_GAMMA0_FULL 0.2.

Evidence. SOURCES_A3_GAMMA0_FULL 0.2, 0.4, 6.1, 6.2(c)–(d), 7.2–7.3. Images: CMP 99 pp. 398 ((3.46)), 399 (Theorem 3.3), 421 ((3.127)–(3.130)), 422 ((3.131)–(3.136) and the mixed bound), 423 ((3.137), (3.138), Theorem 3.12); CMP 98 pp. 40–41 ((143)–(155)).

Grade. R-Δ2: [P] relative to the printed (3.137) [V] (whose "hence" I checked for dimensions, [P]); one [I-geo] on the index range near b. R1 Schur step: [P] relative to (3.46) for G_1 [V statement, Theorems 3.3 and 3.12], CMP 96 Lemma 2.1 [R], and G_1 > 0 [R, Theorem 3.11, not re-read here].

Proposed ledger status (R-004, replace "R-Δ2 stays [R] (RDELTA2 brief not delivered)"). "R-Δ2 written out (SOURCES_SWEEP_C §S-50): from the printed (3.137) (CMP 99 p. 423; via (3.136) and CMP 98 (149), C_3 = 6C_1″) by Schur's test on the symmetric operator Δ^{(2)}, ε_Δ2 = N_g·O(1)C_3·L·Mα_0 [P given (3.137)]. R1 Schur step checked: K_1 = B_0c_1(½) [P given (3.46) for G_1 by Thms 3.3, 3.12]. Unverified."

## S-64 — R-017: is C the identity on every bond the cut covers except b_0(c)? (CMP 109 pp. 267–268, (2.9), (2.12))

Question. On CMP 109 pp. 267–268 ((2.9), (2.12)): is C the identity on every bond the cut covers except b_0(c)?

Answer. Yes. The cut (2.9) covers exactly the bonds T^{(k)} ∖ {b_0(c) : c ∈ T^{(k+1)}}. On each of these bonds (CB)(b) = B(b). The identity is printed, in CMP 99 p. 428, for the operator C to which CMP 109 points.
 (a) CMP 109 p. 266, (2.9) [V]: χ_k = Π_{b ∈ T^{(k)}∖{b_0(c): c ∈ T^{(k+1)}}} χ({|B′(b)| < ε_1}).
 (b) CMP 109 p. 267 [V]: the quadratic form (2.11) "is equal to −½⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one". [13] is CMP 99 (CMP 109 reference list, text). So the δ-function gauge fixing on the trees Ax(y) is not present in CMP 109; the gauge-fixing term G(B′) of (2.5), (2.10) is in the exponent.
 (c) CMP 109 p. 268 [V]: "using the δ-functions δ(Q̃B′) we eliminate the variables B′(b_0(c)), c ∈ T^{(k+1)}. Denoting the remaining variables by B we have B′ = CB, C is the operator determined by the configuration V^{(k)}". So the only eliminated variables are B′(b_0(c)); the remaining variables are B′(b), b ∉ {b_0(c)}, and B is the name of these same variables.
 (d) CMP 99 p. 428 [V]: "Variables B depend linearly on B̃ and we have B = CB̃, where C is a linear operator. It is an identity operator on almost all bonds, except the bonds b_0 for which a value (CB̃)(b_0) is equal to a solution of the equation (QB)(c) = 0." In CMP 99 the variables B̃ live on Λ̃ = Λ ∖ (∪Ax(y) ∪ ∪_c B(c) ∩ c), and B = 0 on the trees Ax(y). So "almost all" excludes the b_0 bonds and the tree bonds. In CMP 109, by (b), there are no tree bonds. The bonds left are exactly the cut range of (a).
 (e) Consistency [V, SOURCES_A17_A19_VERIFY V1–V2]: CMP 116 (2.3) writes the complement cut directly in B, as |B(b)| ≥ ε_1/g_k on {b ⊂ Y_0^c} ∖ {b_0(c)}. This is correct only if C is the identity there.
 Consequence for R-017: the reading H-030 ("C = identity on the kept bonds") is now printed support, not an inference. With h = 0 off {b_0(c)} (p. 267 [V]), B′(b) = g_kB(b) on every cut bond. So supp χ_k ⊂ {g_k|B|_Y < ε_1} holds with no slack, as SOURCES_A17_A19 states.

Evidence. Images of CMP 109 pp. 266–268 and CMP 99 p. 428 (this file); SOURCES_A17_A19 §1–§2; SOURCES_A17_A19_VERIFY V1–V2.

Grade. [V] for the statement "C is the identity except on the b_0 bonds" (CMP 99 p. 428). Transfer to CMP 109 [V for the pointer on p. 267 and the variable split on p. 268; I, minor: CMP 109 does not restate the variable set, and the absence of tree bonds is read from "with the δ-function gauge fixing term replaced by the exponential one"]. If tree bonds were present, B′ = 0 there and they carry no B variable, so the conclusion of R-017 would not change.

Proposed ledger status (R-017, replace "Reading [I]: C = identity on the remaining bonds (sup norm per bond)"). "C = identity on every cut bond: printed, CMP 99 p. 428 ('an identity operator on almost all bonds, except the bonds b_0'), applied in CMP 109 through p. 267 ('(3.156) [13] with the δ-function gauge fixing term replaced by the exponential one') and p. 268 (only B′(b_0(c)) eliminated) [V; transfer I-minor] (SOURCES_SWEEP_C §S-64). H-030 closes except the per-bond sup-norm convention of |B|_Y. Unverified."

## S-117 — ASSEMBLY B-T2.3: does Route K use the composed constraint R1 of U3 Theorem 6.1?

Question. Does any step of L-009 (Theorem K), (H2) ⇒ (C1σ) ⇒ (B2), or L-005 (Lemma D″) use the composed constraint R1 of U3 Thm 6.1? If not, mark B-T2.3 as not needed.

Answer. No. None of the three uses R1 for the composed constraint, and none uses U3 Theorem 6.1 itself. They use the ONE-STEP bound L-239 (Theorem O6), which is hypothesis (b) of U3 Theorem 6.1 and is proved and verified (U3_REPAIRS_VERIFY item 4).
 What "R1 for the composed constraint" is. U3_LEMMA51 (R1): sup_M sup_K ‖𝔨_0(K)^{−1}‖ < ∞ (and K-derivatives) for the block-M or composed KKT (bordered) matrix. U3_REPAIRS_VERIFY §4 states that O6 covers only the one-step bordered matrix; for the composed matrix only Prop. B (Schur-complement bounds) is available; so composed R1 is open (U3_LEMMA51_R23 §3c).
 Step-by-step check.
 (a) L-009 (Theorem K), KAPPA_BOUNDED §1–§5. The inverted object is 𝒦_t = Δ_0 + t(Δ_j − Δ_0) + D_cD_c^T, a coarse 4×4 symbol with the constraint already eliminated (Schur complement Δ_j). Its inverse b_{t,0} is bounded by (E0): c_*|K̂|² ≤ 𝔨_{t,0} (BETA_FP_LEMMA43 Lemma 4.1, from Prop. B). (E1) uses L-071 (Theorem A3) and L-308 (Theorem W) of U3_AW. U3_AW works with the one-step bordered matrix 𝔨_0 = 𝔅_{j−1} and its Lemma A1 bound ‖𝔨_0^{−1}‖ ≤ 2b(L), b(L) the O6 constant. The link between Balaban's composed constraint and iterated one-step Schur complements is an exact identity (tower property; one-step recursion "exact by R23_VERIFY §5"), not a bound on a composed KKT inverse. (E2) is the hypothesis (B2). KAPPA_BOUNDED §5.4 lists as not used: (A) in strip/C³ form, U3 Lemma 5.1, convergence of β_i(0), (N), any rate.
 (b) (H2) ⇒ (C1σ) ⇒ (B2): L-011 (Theorem C1) and L-012 (Theorem B2), B2_TWOSTEP §1–§3. Uniform inputs (U1)–(U3) use ‖b_0‖ ≤ b(L) from O6 (one step), A0 + Cauchy on the strip, L-071 (Theorem A3), and Prop. A2. H_{(2),j} is the product of two one-step minimizer maps; ρ_2 is the hypothesis (H2). No composed KKT inverse appears.
 (c) L-005 (Lemma D″), THEOREM2_PROOF_v4 §2.2. It is a shooting lemma on the scalar sequence u_k with the window bound (5.1) as its only level input. It has no symbol or KKT input.
 Search check: grep for "R1", "composed", "KKT", "6.1", "Φ(" in KAPPA_BOUNDED(.md, _VERIFY), B2_TWOSTEP(.md, _VERIFY), LEMMA_DPRIME(.md, _VERIFY) finds no use of composed R1 or of Theorem 6.1. The only "composed" hit (B2_TWOSTEP l. 18) names the two-step minimizer, which is a product of one-step maps.
 Scope note. B-T2.3 stays relevant to the U3 β_∞ chain (U3 Theorem 6.1 ⇒ Prop. 3.6, rate to β_∞, B-T2.4), which is not on the Route K path to L-001 (Theorem 2w).

Evidence. ASSEMBLY.md §3 rows B-T2.2, B-T2.3; U3_REPAIRS O6 and U3_REPAIRS_VERIFY §4 (scope); U3_LEMMA51 (R1); U3_LEMMA51_R23 §3c; U3_AW (A), Lemma A1, one-step recursion; KAPPA_BOUNDED §1.2–§2.1, §5.4; B2_TWOSTEP §1–§3; THEOREM2_PROOF_v4 §2.2, §3.5, §4.1, §5.3.

Grade. [V] (read of the proof texts and input lists of the three items, with a negative grep). This is a dependency check, not a re-proof of the items.

Proposed status (ASSEMBLY B-T2.3). "one-step PROVED (L-239, Theorem O6; used by Route K through U3_AW Lemma A1 and B2_TWOSTEP (U1)–(U2)); composed constraint R1 OPEN and NOT NEEDED for Route K: L-009, L-011/L-012, and L-005 use only the one-step bound and Prop. B (SOURCES_SWEEP_C §S-117). Needed only for the U3 β_∞ chain (B-T2.4)."

## Report

S-48: A1_WALK_FULL's main theorem uses the printed partition; the repair needs c_h → Lc_h and also core margin M_1 → M_1/L on interface faces (missed by THM39 8.0). Repaired constants are listed; all are fixed before M_1. WC_FULL uses its own one-scale partition and inherits only K_W. S-50: R-Δ2 follows from printed (3.137) by Schur on the symmetric Δ^{(2)}, ε = N_g·O(1)C_3·L·Mα_0. The R1 Schur step is correct, K_1 = B_0c_1(½). S-64: yes, printed on CMP 99 p. 428. S-117: no; B-T2.3 is not needed for Route K.
