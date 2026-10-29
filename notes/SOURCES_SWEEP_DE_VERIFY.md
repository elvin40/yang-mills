# SOURCES_SWEEP_DE_VERIFY — adversarial verification of SOURCES_SWEEP_D.md and SOURCES_SWEEP_E.md (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5), verifier. Ids follow IDS.md.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were outside every grep.
No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Method. Every page cited as evidence here was rendered with `pdftoppm -r 150` into a fresh /tmp folder, and the image was read. The folders were deleted at the end. Two helper agents (Opus) did the page checks of Part 4; their grades are reported with their page evidence and are marked "(helper)".
Grades: CONFIRMED / CORRECTED / UNSUPPORTED. Tags inside: [V] read on the page image; [P] proved here; [P-sketch] argument given, one step not written in full; [I] reading.

## Verdicts

- SOURCES_SWEEP_D: CONFIRMED WITH TWO CORRECTIONS (one major). Second correction: S-66 item 1, (73) at complex A′, is [P-sketch]/[R] through CMP 98 Sect. D, not [P] through (44) (Part 4.3). The S-58 claim that the CMP 109 p. 277 condition "fails in its scale-indexed form" is CORRECTED. The literal indexed form of Balaban's sufficient condition fails, but Balaban's operative bound (3.37) on the same page carries the factor L^{j−1}η = L^{−(k+1−j)}. With that factor the indexed condition holds for every history that obeys CMP 119 (2.6)–(2.7), under the canon order as it stands. The claim that the ratio orderings are "not yet placed in the canon" is also CORRECTED: N-410, N-440, N-450 already carry them. S-57, S-53, S-60, S-66: see Part 4.
- SOURCES_SWEEP_E: CONFIRMED WITH CORRECTIONS. Finding 1 (printed d is block-constant on fine points) is CONFIRMED; it breaks the written Lemma T (c) of SOURCES_C_CONDITION, and a repair at (d, L)-constant cost exists (Part 2). Finding 2 ("R_1 < L" conflicts with N-180) is CONFIRMED; the proposed fix is sufficient and acyclic, but it costs more than "one lower bound at N-270" (Part 3). Other items: see Part 4.

## 1. SWEEP_D S-58 (R-012): the CMP 109 p. 277 condition

### 1.1 The printed text [V]

CMP 109 p. 277, (3.37) and the next sentence (image):
"U_j(□_0, exp iτQ(L^{−1}ηH_{k+1})) = (exp iξH_j(□_0, τQ(L^{−1}ηH_{k+1})))^{u_j},
|H_j(□_0, τQ(…))|, |∇^ξH_j(□_0, τQ(…))| < B_3²O(1)Mα_0L^{j−1}η on □̃³,
|u_j − 1| < B_3²O(1)Mα_0. (3.37)
Assume now that B_3²O(1)Mα_0 < 1/2α_1, then the orbit of the configuration U_j(□_0, …) above contains the configuration exp iξH_j(…) satisfying the conditions (i), (ii) on the cube □̃³, hence on X."

Same page: the hypotheses are U in U^c_{k+1}(□_0, (1 + 2β)α_0, (1 + β)α_1, α_0) (level k + 1); the target (3.36) is U_j^c(X, α_0, α_1) (level j).
CMP 109 p. 262 (image): condition (ii) of the space is "U′ = exp iξA′, … |A′|, |∇^ξ_UA′| < α_1 on X" (1.13).
CMP 109 p. 278 (image), (3.40)–(3.41): the level-(k+1) bound (1 + 2β)α_0(L^{−1}η)² becomes "< (1 + 3β)α_0(L^{j−1}η)²ξ² on □̃³" at level j, against the target α_0ξ² of (1.11).
CMP 119 p. 259 (image): E^{(j)}(X, ·) is analytic on U_j^c(X, α_{0,j}, α_{1,j}), with α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1} (2.28), "q_0, q_1 integers greater than 1, C_0, C_1 sufficiently large".
CMP 119 p. 255 (image), (2.6)–(2.7), for n > m: g_n ≤ (1 + β_0)(n − m)^{1/2}g_m; (log g_n^{−2})^p ≤ (1 + β_0)(log g_m^{−2})^p.

### 1.2 What L^{j−1}η is [P]

In CMP 109 Sect. 3 the step-k lattice is the unit lattice T_1^{(k)} (p. 276 [V]: "the fluctuation field variable B defined on the lattice T_1^{(k)}"), so L^kη = 1 and L^{j−1}η = L^{−(k+1−j)}. Check by units: (3.40) gives the level-(k+1) plaquette bound (1 + 2β)α_0(L^{−1}η)² = (1 + 2β)α_0L^{−2(k+1)}; (3.41) writes the same quantity at level j, with ξ = L^{−j} (CMP 109 text l. 418: "the lattice T_ξ, ξ = L^{−j}"), as (1 + 3β)α_0(L^{j−1}η)²ξ² up to the β change. Both agree only if L^{j−1}η = L^{j−1−k}. For j ≤ k the factor is at most L^{−1}.

### 1.3 The exact condition

The property used is (ii) for exp iξH_j, i.e. |H_j|, |∇^ξH_j| < α_1 at level j. With CMP 119's indices (worst case: the hypothesis space carries α_{0,k+1}, the target carries α_{0,j}, α_{1,j}) the operative condition is

 (L9-op) B_3²O(1)M·α_{0,k+1}·L^{−(k+1−j)} < ½α_{1,j}, 1 ≤ j ≤ k,

and the companion condition for (i), from (3.41), is

 (L9-i) (1 + 3β)α_{0,k+1}L^{−2(k+1−j)} ≤ α_{0,j}.

Balaban's printed sentence "B_3²O(1)Mα_0 < 1/2α_1" drops the factor L^{−(k+1−j)} ≤ 1. It is a sufficient condition at one scale, not the needed one.

### 1.4 SWEEP_D's failure computation

SWEEP_D indexes the printed sentence literally: B_3²O(1)Mα_{0,k+1} < ½α_{1,j}. Its arithmetic is right: α_{0,K}/α_{1,0} grows without bound as g_0 → 0 with g_K near γ. CONFIRMED as arithmetic. But that literal form is not the condition the proof needs, and SWEEP_D's sentence "or with a scale factor not visible on p. 277" is wrong: the factor is printed in (3.37) on p. 277. Grade of S-58 item 3: CORRECTED.

### 1.5 The indexed condition holds [P]

Put n = k + 1 > m = j, ℓ_i := log g_i^{−2}. By (2.6) line 1 and (2.7) line 1 (with p = q_0):
α_{0,n} = g_nC_0ℓ_n^{q_0} ≤ (1 + β_0)²(n − m)^{1/2}·g_mC_0ℓ_m^{q_0} = (1 + β_0)²(n − m)^{1/2}(C_0/C_1)ℓ_m^{q_0−q_1}α_{1,m}.
For L ≥ 2 and n − m ≥ 1, (n − m)^{1/2}L^{−(n−m)} ≤ L^{−1} (the function x^{1/2}L^{−x} decreases on x ≥ 1 when log L > ½). If q_1 ≥ q_0 and ℓ_m ≥ 1 (g ≤ e^{−1/2}), then
 B_3²O(1)M·α_{0,n}L^{−(n−m)} ≤ B_3²O(1)M·(1 + β_0)²L^{−1}(C_0/C_1)·α_{1,m}.
So (L9-op) holds if C_1 > 2(1 + β_0)²L^{−1}B_3²O(1)M·C_0. This is implied by the one-scale form C_1 > 2B_3²O(1)MC_0, because (1 + β_0)² ≤ 9/4 < L.
In the same way (L9-i) holds if (1 + 3β)(1 + β_0)²L^{−2} ≤ 1; at β = ¼, β_0 ≤ ½, L = 13 the left side is 0.023.
If a case j = k + 1 occurs, (L9-op) is the one-scale form itself.

### 1.6 Placement in the canon [V for the canon text]

Every input above is already in SOURCES_ORDER_CANON:
- q_1 ≥ q_0 ≥ p_0: N-410 ("q_0 ≥ p_0 → q_1 ≥ q_0").
- C_1 > 2B_3²O(1)MC_0: N-450 ("B_3²O(1)Mα_0 < ½α_1 in LF form (C_1/C_0 lower, with q_1 ≥ q_0)"); M is fixed at N-310, before N-450.
- ℓ ≥ 1: implied by γ < e^{−q_i} at N-470.
- (2.6)–(2.7): hypotheses of CMP 119 Theorem 1 (THEOREM2_PROOF_v4 l. 33–34: "(2.6) line 1 is exactly (P-up)"), supplied by L-001 (Theorem 2w).
No new constant, slot, or edge is needed.

The other two "ratio conditions" of S-58:
- L6 (p. 270 [V]: P^{(k)} analytic "for some α′_0, α′_1 sufficiently small, but much bigger than α_0, α_1 there"). This compares two constants at the same level k. In LF form it is α′_{i,j} := Λα_{i,j} with a fixed Λ, and "α′ small" is a γ condition. Canon N-360/N-370 carry "α ≪ α′". [P-sketch]
- L7/L12 (p. 273 [V]: "ε_1 is so small that H_j(B(t)) satisfies (3.14) with 1/3α_2"). The bound (3.9) on p. 271 [V] carries the same kind of factor (2L^jη|ζ_□H_k(B′)|), so the indexed form again gains L^{−(k−j)}, and the (2.6)–(2.7) argument of 1.5 reduces it to the one-scale form at j = k. The one-scale form is the ε : α_2 ratio, covered by q_0 ≥ p_0 (N-410), C_0 ≥ c(B_3)A_0 (N-440), and the α_2-scaling convention of R-041 (SOURCES_T2_IEPS_LF R1, all three scalings close). [P-sketch; the exact power of L^jη in (3.14) was not traced]
So SWEEP_D's "None of these orderings is printed in CMP 119 … I did not place it in the canon order. [I, convention]" is CORRECTED: they are in the canon (N-410, N-440, N-450, N-360/N-370) and they are admissible.

A canon text error found on the way: N-370 writes "(4B_3O(1)M)²α_0 ≤ β". The printed condition (CMP 109 p. 278 [V], after (3.43)) is "(4B_3²O(1)M)²α_0 ≤ β". Same slot, constant change only.

### 1.7 Consequence for R-012 and Target 1

- The p. 277 condition does not fail. It is harmless for L-001 (Theorem 2w). It adds no hypothesis to L-001 and no condition on γ beyond those at N-470: it uses only (2.6) line 1 and (2.7) line 1, which are already items of the Theorem 1 sweep (R-034 (i)).
- R-012 stays CLOSED. Its "Remaining non-blocking" clause can be closed: OCR slip [V]; CMP 109 restrictions located (L1–L12) and placed (N-310 to N-470); L9 indexed form [P] (this file 1.5).
- Other S-58 items: location L1–L12 CONFIRMED for the lines I read on images (L1 p. 262, L2 p. 263, L3 p. 264, L6 p. 270, L7 p. 273, L9 p. 277, L10 p. 278); CMP 119 p. 262 quote CONFIRMED; OCR slip CONFIRMED (CMP 119 p. 278 image: "with the constant B_0 replaced by O(p_0³(g_k))").

## 2. SWEEP_E finding 1: the printed d does not give "one fine step = η/ℓ(b)"

### 2.1 Page [V]
CMP 96 p. 231 (image), (2.46): d(y, y′) = inf_{Γ_{y,y′}} Σ_{j=0}^{k}(L^jη)^{−1}|Γ_{y,y′} ∩ B^j(Λ_j)|, y, y′ ∈ 𝔅, with |Γ| = nη and "a part of Γ contained in B^j(Λ_j) consists of bonds of the lattice Λ_j". Next sentence: "We may extend this definition and define the distance for a pair of arbitrary points x, x′ ∈ T_η putting d(x, x′) = d(y^j(x), y^{j′}(x′)) if x ∈ B^j(Λ_j), x′ ∈ B^{j′}(Λ_{j′})."
So on fine points d is constant on each block. A fine step inside a block costs 0. A fine step across a block face costs d(y, y′) for two adjacent blocks, which is 1 for two blocks of one layer (one Λ_j bond) and at most a constant c_adj(L) across a layer interface [P-sketch]. Finding 1: CONFIRMED.
Side note "CMP 99 p. 397 cites (2.36) in [4]": see Part 4 (helper).

### 2.2 Every project file that uses the identification
Found by grep over the folder (archive and firewall files excluded) for "ℓ(b)", "fine step", "path metric", "η/ℓ":
- SOURCES_C_CONDITION.md l. 82, Lemma T (c): "|χ(d(b′, y)/D) − χ(d(b, y)/D)|/η ≤ 3d(b, b′)/(Dη) ≤ 3/(Dℓ(b)) for adjacent b, b′ (d counts one fine step as η/ℓ(b), A1_KERNEL §5 [I: d = path metric])". This is the only place where the identification carries weight.
- SOURCES_C_CONDITION.md l. 133 (residue list) and SOURCES_C_CONDITION_VERIFY.md l. 20, 74 (they accept the step as "[I] path metric").
- SOURCES_A1_KERNEL.md §5 l. 36 and l. 101: source of the reading ("a bond inside B^j(Λ_j) counts (L^jη)^{−1}·η … formula itself garbled, I"). A1_KERNEL uses d only on 𝔅 (Combes–Thomas, §7), where the reading is harmless.
- TRUST_LEDGER.md row R-001 (the clause "the d-path metric (one fine step = η/ℓ(b))").
- Not affected (they use d only between block points, or use the printed kernel bounds of CMP 96 Cor. 2.8 in the form ℓ(b)|∇E|): SOURCES_QE_INV.md (KE), 4.3(a); SOURCES_QE_KE_HQ.md l. 33; SOURCES_QE_INV_VERIFY.md l. 22; SOURCES_S2_FORM.md, SOURCES_S2_G1_V7.md (+ VERIFY); SOURCES_MULTISCALE_OMEGA_SOURCED.md (f) l. 66 (graph statement on blocks).
- Downstream of Lemma T: L-284 (Lemma T), c_T and D_0 at canon N-060, the N-310 entries M ≥ c_T/22 and RM ≥ 4L²D_0, K-045, H-057 (C) (SOURCES_C_CONDITION 4.3(d)–(e), 4.4).

### 2.3 Effect of the correct value [P]
With the printed d, the second term of Lemma T (c), (χ(b′) − χ(b))U^{−1}𝓔(b)/η, is zero on bonds inside a block. On a bond that crosses a block face it can be as large as 3c_adj/(Dη)·|E(b, y)|, not 3/(Dℓ(b))·|E(b, y)|. The pointwise bound ℓ(b)|∇(χE)| that the S2 step uses (S2_FORM 4.3) then grows like ℓ(b)/η = L^j. In the L² form the face bonds have weight about η/ℓ(b) per block, so the term still grows like (ℓ(b)/η)^{1/2}. So K_𝓔^D is not uniform in η, and Lemma T (c) as written is not proved. SWEEP_E's statement "|Δχ|/η ≤ 3/(Dη)" is right on face bonds only; the conclusion (the step fails) is CONFIRMED.

### 2.4 Repair [P-sketch]
SWEEP_E proposes a fine metric d_f and leaves the comparison d_f ↔ (2.46) as [I]. A repair that uses only the printed d on 𝔅:
 χ̃(b) := Σ_{y′∈𝔅} ψ_{y′}(b)·χ(d(y′, y)/D),
with {ψ_{y′}} a smooth partition of unity on the fine lattice, ψ_{y′} supported in the one-layer neighbourhood of the block B(y′), and |∇ψ_{y′}| ≤ c_ψ(d, L)/ℓ(b) (transition width at least ℓ(b)/L at a layer interface). Then:
- |χ̃(b′) − χ̃(b)| ≤ Σ_{y′}|ψ_{y′}(b′) − ψ_{y′}(b)|·|χ(d(y′, y)/D) − χ(d(y″, y)/D)| for any fixed y″ in the neighbourhood (since Σψ = 1), so |χ̃(b′) − χ̃(b)|/η ≤ 2^d c_ψ·3c_adj/(Dℓ(b)). This is the old form with 3 → 3·2^dc_ψc_adj, a (d, L) number.
- supp χ̃ ⊂ {d(y(b), y) ≤ D + c_adj} and {χ̃ < 1} ⊂ {d(y(b), y) ≥ D/2 − c_adj}. So (a) and (b) of Lemma T hold with D replaced by D + c_adj and D/2 by D/2 − c_adj.
Cost: c_T, D_0 (canon N-060) change by (d, L) amounts; the N-310 entries M ≥ c_T/22 and RM ≥ 4L²D_0 keep their slots. No edge changes. The two open steps of this sketch are the existence of {ψ_{y′}} with the stated gradient bound across layer interfaces and the value of c_adj; both are geometry of the printed block lattice.
Grade of the SWEEP_E proposal (d_f convention with an [I] comparison): CONFIRMED as stated, but not needed; the repair above has no [I].

## 3. SWEEP_E finding 2: "R_1 < L" against N-180

### 3.1 Pages [V]
- CMP 102 p. 277 (image), (1): "(L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM_1, where R ≥ R_1, the numbers R_1, M_1 are fixed in such a way that all the results of [3, 5, 6] hold for these numbers."
- CMP 102 p. 279 (image): "□ has a size 2ML^jη, where M is a multiple of R_1M_1"; "M(ε_1) = R_1M_1(a_1/ε_1)"; "The constants a_0, a_1, B_3, depend on d and L only."
- CMP 119 p. 256 (image): "a sequence of maximal domains Ω = Ω_0 ⊃ Ω_1 ⊃ … ⊃ Ω_j such that Ω_n is a union of L^nξM_1-cubes, and dist(Ω_n, Ω^c_{n−1}) ≥ L^nξM_1 … (the distance is for the lattice T_ξ)."
- CMP 119 p. 245 (image): "M_1 is the size of large cubes for which all the theorems of the previous papers, especially those concerning the variational problem, are valid."
- CMP 116 p. 3 (image): "The number R_1 is a power of L satisfying the condition R_1M_1M^{−1} ≤ 1" (it sizes the decoupling partition σ_k). Not the same use; it gives no bound R_1 < L.

### 3.2 Is the conflict real? CONFIRMED [P-sketch]
In level-(n − 1) units CMP 119 gives dist ≥ L·M_1. CMP 102 (1) at index n − 1 asks > RM_1 with R ≥ R_1. With one M_1 in both papers this needs R_1 < L (SOURCES_T2_HMINUSC_VERIFY l. 41; canon N-060 "R_1 (< L [I])"). CMP 102 fixes R_1 so that the results of [3, 5, 6] (CMP 96, CMP 99 propagators, CMP 99 regular configurations) hold for R ≥ R_1. In the project those results are used through THM37_FULL / THM310_FULL, which need R > 18dL (c_R = 18; canon N-180). So R_1 > 18dL > L. The two cannot both hold. The conflict is real, given that the project's R > 18dL is a condition of the CMP 99 results that CMP 102 imports (THM37_FULL 3.2a; that identification is the one unchecked step).

### 3.3 The proposed fix
SWEEP_E: make M_1^{(119)} a multiple of R_1M_1^{(102)}; then R = L·M_1^{(119)}/M_1^{(102)} ≥ LR_1 ≥ R_1. CONFIRMED as sufficient. It is stronger than needed by a factor L: the minimal condition is L·M_1^{(119)} > R_1M_1^{(102)} with M_1^{(119)} a multiple of M_1^{(102)} (block clause) (SOURCES_T2_HMINUSC_VERIFY l. 41 states the same). With the fix the strict ">" of CMP 102 (1) holds because LK > 1.

### 3.4 Consistency with the canon order [P-sketch]
The fix is acyclic, but SWEEP_E's cost "one lower bound on M_1 at N-270" is CORRECTED (incomplete). Three edits are needed:
(a) N-060: "R_1 (< L [I])" must go. R_1 must be ≥ the CMP 99 R-thresholds of the project. Two admissible choices: R_1 := the least power of L above 18dL (a (d, L) number; it may stay at N-060), or R_1 := R of N-180 (then the slot moves to N-180). In both cases every consumer of R_1 (N-320 cube cap, N-380 18LMε_0^{109} ≤ R_1M_1a_1^{102}, N-470 B_5^{122}M^6·O(1)ε_k ≤ R_1M_1a_1^{102}) is later than N-180, so no edge breaks.
(b) The canon uses one symbol M_1 for the CMP 102 cube constant and the CMP 119 cube size. The fix needs two: M_1^{(102)}, fixed before N-270 and large enough for the CMP 99/102 RM-product thresholds of the project (RM_0 of N-130/N-140, 2R_0M_0 of N-060, M_99), and M_1 = M_1^{(119)} at N-270 with the new entry "M_1 ≥ L^{a}R_1M_1^{(102)}, a ≥ 0, all powers of L". Every M_1-dependent lower bound (M > M_2 = L²M_1, RM > 2LK_1M_1, M/M_1 > 10, M ≥ 2c′M_1) is a bound on M after N-270. Every M_1-dependent upper bound (N-350 j‴, N-370 WG-1, N-320, N-380, N-470) is on an α, ε or γ after N-270. So the split creates no cycle.
(c) The caps written "R_1M_1a_1^{102}" at N-320, N-380, N-470 must read R_1M_1^{(102)}a_1^{102} (CMP 102 p. 279 uses its own M_1). The cap becomes tighter, still an upper bound after M.
Which M_1 each existing M_1-entry of N-270 means (CMP 99 walk cubes, CMP 102, CMP 119) was not traced here; that tracing is the one open bookkeeping item. It cannot create a cycle, by (b).

## 4. Item-by-item grades

### 4.1 SWEEP_D S-57 (R-010 R4): (4.5) constant and K_tail
- (4.5) prefactor printed: CONFIRMED [V]. CMP 109 p. 282 image: "≤ (2n²B_3(1/α_2))^n E_0exp(−κd_j(X))exp(−δ_0dist^{(ξ)}(X, supp(1 − ζ̃_□)))|ζ̃_□B|^m|(1 − ζ̃_□)B|^{n−m}. (4.5)" and "The distance in the second exponential is bounded from below by M(L^jη)^{−1}". SOURCES_A10_LOWER_VERIFY l. 21 ("no derivative constant printed") is wrong, as SWEEP_D says.
- B_3Π|B_i| sentence and the tree-graph remark (p. 282): CONFIRMED [V]. (4.1), (4.3), (4.4) on p. 281: not re-read by me; (4.1)'s m-structure agrees with (4.5).
- Exponent swap: CONFIRMED. The image has |ζ̃B|^m|(1 − ζ̃)B|^{n−m}. The swap is in SOURCES_A10_LOWER l. 33 and also in SOURCES_A10_LOWER_VERIFY l. 21 (SWEEP_D names only the first). Harmless.
- |B| < O(1)L^jη (p. 277): CONFIRMED [V] (image: "By the definition of B and by the inequalities (3.32) we have |B| < O(1)L^jη").
- K_tail formula [P]: CONFIRMED. Σ_{m<n}C(n, m) = 2^n − 1; sup_x x^{−s}e^{−a/x} = (s/(ea))^s; Σ_{n=1}^{4}(2^n − 1)/n! = 4.2917; 4.2917·4/e = 6.315.
- Side claim "the binding case n = 2 needs eδ_0M ≥ 2.60": CORRECTED. The step ((5 − n)/(eδ_0M))^{5−n} ≤ 4/(eδ_0M) needs a := eδ_0M ≥ 1 (n = 3), ≥ 2.598 (n = 2), and ≥ 4 (n = 1: 256/a⁴ ≤ 4/a iff a³ ≥ 64). The binding case is n = 1, at exactly the stated hypothesis eδ_0M ≥ 4. The result stands.
- Rederivation of the printed prefactor [P-sketch]: CONFIRMED as a sketch (needs nB_3 ≥ α_2 and Bell(n) ≤ n^n; both stated).
- K_tail is fixed before ε_1: CONFIRMED (B_3, α_2, c_B, δ_0, M only).
- Old guess of SOURCES_A10_LOWER l. 62 (α_1 in place of 2n²): CORRECTED as SWEEP_D says; not load-bearing.

### 4.2 SWEEP_D S-58: see Part 1.

### 4.3 SWEEP_D S-66 (R-019) (helper, images CMP 102 pp. 285–309, CMP 98 pp. 34, 38, 40–42)
- (73) quote p. 289, "for A′ satisfying (43)", no "complex": CONFIRMED [V].
- p. 287 "analytic function of A′ for g^c valued configurations A′ satisfying |A′|_{(−1)} < ε_3": CONFIRMED [V].
- (51)–(54) pp. 285–286 at g^c-valued A′, X; (69) p. 288 Cauchy integral at complex τ: CONFIRMED [V] (the [text] tag can become [V]).
- Item 1, (73) at complex A′ forced by the printed proof [P]: CORRECTED to [P-sketch]/[R]. SWEEP_D's substitute for step (72) ("a Cauchy estimate from (44) gives (72) with C_3 → O(1)C_2") is invalid: (44) is a sup-norm bound, and a Cauchy estimate on a one-bond perturbation loses the block-volume factor L^{−jd} that (72) carries. The complex form of (72) rests instead on CMP 98 Sect. D: standing assumption (109) p. 34 "A_b belong to the complexified Lie algebra g^c"; Prop. 4 p. 38; Prop. 5 p. 42 (157), whose proof pp. 40–41 is a norm induction with nothing only real, but whose base (148) is unproved ("following easily from general properties"); p. 43 [text] "Proposition 5 may be extended to include analyticity and uniformity statements". The conclusion stands at [P-sketch]/[R].
- (189) p. 308 ("We do not perform these calculations here … final result only"; (189) has e^{−¼δ_0d(y,y′)}, (186) has none): CONFIRMED [V]. Item 2 stays [I]. Note: Prop. 4 (p. 292) defines (77) as a set of g^c-valued configurations, a weak hint for the complex reading.
- Prop. 4 complex clause: CORRECTED location, p. 292 (not p. 293; p. 293 has (97), (98), and the C_4 sentence).
- (172) and "C_1 is an absolute constant, hence B_5 is such a constant also" p. 305; (173) ε_2 ≤ 6B_1B_3C_1ε_1 = B_5ε_1: CONFIRMED [V]. Caveat: C_1 is a hypothesis constant; (173) needs C_1 ≳ 1 and ε_1 small depending on C_1; C_1 → 4C_1 keeps both, so item 3 (ii) holds.
- pp. 306–307 "𝓗(B) … satisfying (172)", p. 306 "(180) … the same analyticity properties", Prop. 9 p. 309 "It is an analytic function of B" with no domain: CONFIRMED [V].
- Arithmetic (|e^{iB} − 1| ≤ |B|e^{|B|}; 3.2974 < 4; B_5 → 4B_5; 0.8244): CONFIRMED.
- (75) p. 289 "|B| < 2dLC_1ε_1": CONFIRMED [V].
- HMINUSC cases K2 (narrow, full rate, 4c_N/C_1), K3 (ball, ½C_1ε_1), K4 (narrow, ⅛C_1ε_1, rate × 0.5903 = 1 − ω, 16c′_N/C_1): CONFIRMED against SOURCES_T2_HMINUSC §3.1–3.3 + VERIFY. The ledger wording fix (½C_1ε_1 is K3) is CONFIRMED. K2 itself uses the complex (189); SWEEP_D correctly sends the no-(189) case to K4.
- Single consumer of R-019 (grep): not re-run; accepted.

### 4.4 SWEEP_D S-60 (K-033, K-037, R-015) (helper)
- CMP 109 p. 262 (iv), p. 273 (□_0 = □̃^5; "(179), (180) [15]"), p. 290 (free boundary conditions; Z^4 y-sum; D_j^0 of ξZ^4), p. 291 (4.39)–(4.41) (sum over all □′ in ξZ^4; Δ_j of (1.66) [10]), p. 292 (5.1): CONFIRMED [V]. (5.11) not checked.
- CMP 99 regular pp. 77, 78, 80, 98, 99 (bond convention; (1.13), (1.15); L²(Ω_0, g), R a projection; □̃ ⊂ Ω_{k−1}; U″_0 = 1 outside □̃; (1.138)): CONFIRMED [V]; p. 78 can be [V]. Nuance: p. 77's space U_k({Ω_j}, α_0) is of configurations on T_η with conditions only on Ω_j; K-033's conclusion stands.
- CMP 99 propagators p. 394 ("depend on the configuration U restricted to Ω_0"; Dirichlet on Ω_0): CONFIRMED [V]. Caveat: [13]'s Ω_0 is a padding of Ω_1 within distance RM; identification with [14]'s Ω_0 is by construction, not printed.
- CMP 102 p. 278 (configurations on Ω_0; (5) Σ_{p⊂Ω_0}; V on Λ_j): CONFIRMED [V].
- "free boundary" occurs once in the corpus (CMP 109 text l. 2063, also with line-break joins); "periodicity conditions" CMP 96 l. 798: CONFIRMED.
- Grades K-033 [P], K-037 [P-sketch]: CONFIRMED.

### 4.5 SWEEP_D S-53 (R-006 N8, R-018)
- (u1) CMP 109 p. 263 gloss for α_0, α_1; (u2) "positive, absolute γ" p. 263 and Theorem 3 p. 264 ("The constant γ depends on all other constants"): CONFIRMED [V] (my images).
- CMP 99 propagators p. 423 ("absolute constants depending on d and L only"; δ_0 after Thm 3.12), pp. 423–424 (B_0 "also depend on d and L only"), CMP 98 p. 39 (C_2, c_4), CMP 102 p. 293 (a_3, C_4), CMP 102 p. 285 (44), (46) citations, CMP 102 p. 299 ("absolute constant depending on d and L only"), p. 305 (B_5, C_1): CONFIRMED [V] (helper); p. 285 and p. 299 can be [V]. B_3 "depends on d and L only": CONFIRMED on the text layer only (CMP 102 l. 118, 1271); p. 279 image (mine) prints "a_0, a_1, B_3, depend on d and L only": CONFIRMED [V].
- Reading "absolute = depends on d and L only" as Balaban's usage: CONFIRMED. Content of the CMP 116 constants stays [R]: CONFIRMED.
- Scope caveat (uniformity holds under the cited hypotheses; their k-uniformity along the flow is R-018's other content): CONFIRMED and needed.

### 4.6 SWEEP_E S-86 (R-032) (helper, images CMP 119 pp. 254, 255, 265, 275; CMP 116 pp. 3, 10)
- Λ_j nesting (2.1) p. 254 and "Λ_j = Ω_j … R-operation" p. 255: CONFIRMED [V].
- Cube cover p. 275 and "Such covers and partitions were constructed and used in [11, 13]": CONFIRMED [V]; the step-(k+1) partition of unity is not printed.
- σ_0 rule CMP 116 p. 10: CONFIRMED [V] (p. 3 uses □̃⁴ in one instance; the rule still depends only on the cube).
- Margin (3.5) p. 265: CONFIRMED [V]. The page removes Z′_k^{~4}, ~5, ~6, and (B(P¹)^c)^{~3} ⊇ Z′_k^{~8}, so Ω_{k+1} lies at least 8 LMR_{k+1}-layers from Z′_k. Unchecked: Z′_k ⊇ Z_k and the cube-size comparison. Grade [P-sketch] stands.
- K-050 "cost: zero for any bound": CORRECTED. The junction functions (1 − S)h/Σh are a valid partition of unity and keep the [I] functions away from ∂Ω_k, but they do not keep the printed "derivatives bounded by 5" (CMP 109 p. 270). Correct cost: junction derivative constants O(1)(d), absorbed where Balaban writes O(1). Balaban prints no junction construction either.

### 4.7 SWEEP_E S-81 (R-028)
- P̂_1 = −(ie/2){·,·}, P̂_2 = −(e²/8)P_2 ((i∂′∧i∂″)² = (∂′∧∂″)²), and the term-by-term match with U3_LEMMA51 (3.2) (terms (1,0,0), (0,0,1)) and (3.3) (terms (1,1,0), (0,1,1), (2,0,0), (1,0,1), (0,0,2)): CONFIRMED [P] (helper, line by line). The phases agree with w = x − z.

### 4.8 SWEEP_E S-82 (R-030)
- CMP 96 p. 228 (2.35) and the positivity sentence; QH = I: CONFIRMED [V].
- CMP 96 p. 249 Cor. 2.8 and the "(1.151)" misprint: CONFIRMED [V]; the page also prints "(1.152)" for (2.152).
- Schur arithmetic: CONFIRMED, in the measures (L^jη)^d on 𝔅 and η^d on fine bonds.
- "Q̃Q̃^T ≥ ‖H‖^{−2} = C^{−2}, uniform in j": CORRECTED. ‖x‖ ≤ ‖H*‖‖Q*x‖ holds with Q*, H* the adjoints for the same weighted inner products as the Schur bound. That gives QQ* ≥ C^{−2} for the weighted adjoint. The unweighted transpose on ℓ²(Z⁴) differs by a weight ratio of order L^{jd} (exact power depends on the Q̃ normalization of SOURCES_T2_G2; CMP 99 (3.16) uses the weight (L^jη)^{d−2}). So q_j > 0 at each fixed j is [P]; the value C^{−2} and the uniformity in j are UNSUPPORTED. G2's (Gap) needs only q_j > 0 at fixed j, so the use stands.
- CMP 99 p. 406 (3.78)–(3.81): CONFIRMED [V], with small fixes: the averages are printed Ũ′ⁿ; "depends only on d and L" belongs to (3.79); (3.81) also needs "Mα_0, α_1 sufficiently small", which the sweep omits. Application [P-sketch] stands (gauge covariance of the linearized average not on an image, as stated).

### 4.9 SWEEP_E S-45 (R-001)
- [I-a1]: CMP 99 p. 397 Thm 3.1 "G′(U) (a = 1)", p. 399 Thm 3.3 "G(U) (a = 1)", CMP 95 p. 26 sentence on a: CONFIRMED [V]. The proof that λ = G′RD*A does not depend on a (Q′λ_0 = 0 kills Q′*aQ′λ_0): CONFIRMED [P]. a = 1 convention for G: CONFIRMED.
- [I-geom]: CMP 99 p. 393 and p. 397 ("if y ∈ Λ_j, then Δ(y) = B^j(y)"): CONFIRMED [V]; citation fix (CMP 99 pp. 393, 397 instead of CMP 96 p. 231) CONFIRMED.
- "(2.36) in [4]" on CMP 99 p. 397 vs CMP 96 (2.46): CONFIRMED [V] (both images).
- d-path metric: Part 2.
- Δ^{(2)} symmetry: CMP 99 p. 392 (3.10)–(3.11), p. 422 (3.134), (3.136): CONFIRMED [V]. Small fix: the printed "it defines the second quadratic form in (3.128)" refers to Δ_π^{(2)}. (3.136) builds Δ^{(2)} from δ/δA of the quadratic C^{(2)}, so it is symmetric for ⟨·,·⟩; the convention is supported. Grade "convention (cost: none)": CONFIRMED.

### 4.10 SWEEP_E S-55 (R-009)
- I-a convention: CONFIRMED.
- I-b s-rule CMP 116 p. 3 (my image and helper) and p. 13 "as before": CONFIRMED [V]; the (1.1) correction to ∪X̃_i^5: CONFIRMED.
- I-c (G1): CMP 116 p. 13 CONFIRMED [V], but σ_0 is "disjoint with the interior of Z̃_0 or with the interior of Z′_0" (the sweep omits the second alternative); the σ_0 cubes are π_{k+1} cubes of size LM. CMP 109 p. 262 citation: CORRECTED. The page says only that X^{~−2} removes two layers of cubes and X′^{~2} = X (my image agrees); "the tilde adds one layer" is implied, and which cubes form the layer is not printed. Cite CMP 122 I p. 192 (1.73) ("adding one layer of M-cubes") or CMP 119 p. 265 ("four layers of the LMR_{k+1}-cubes, i.e. Z′_k^{~4}"). The layer convention (all touching cubes) was already [V] + [P] in SOURCES_WC_RESIDUE.
- (G2) project [P]: not re-checked. (G3) Euler-tour count 2(1 + D/ℓ) and the 3^d → 4^d caveat: CONFIRMED (D is the tree length, not the diameter).
- I-d [P] unverified: not re-checked here; it stays unverified.
- I-e: CMP 116 p. 15 (2.15) and "not symmetric … perturbative argument": CONFIRMED [V]. "(7.14)" note CORRECTED: the label (2.15) is printed correctly; "(7.14)" is the left side "|(7.14)| ≤", a misprinted reference to (2.14). The measure is printed dμ_{(Re C^{(k)}(Z_0,σ(Z))^{−1})^{−1}}. Convention grade unchanged.

### 4.11 SWEEP_E S-65 (R-018)
- I2: CMP 98 p. 38 Prop. 4 and (134), p. 39 (136); CMP 102 UV p. 260; CMP 99 p. 427: CONFIRMED [V]; range 2L CONFIRMED.
- I3: CMP 109 p. 265 (2.3), p. 267 (corridor; "(3.156) [13]"; D̃^{(2)} = C̃^{(2)}), p. 268 C^{(k)}: CONFIRMED [V].
- U_{k,Z} obeys Thm 1: CMP 122 I p. 193 condition and p. 191 "B = B_3 from Theorem 1 [16]": CONFIRMED [V]. Note: p. 193 does not cite Thm 1; only the constant B_3 links it. CMP 109 reference list p. 299: [13] = CMP 99 propagators, [15] = variational, [16] = UV stability: CONFIRMED. "CMP 122 I says its references follow CMP 109's list": CORRECTED. p. 175 says "(this refers to References in the paper [I])" for one citation only; the rest is a strong inference. Citation-slip reading: CONFIRMED as plausible.
- Hypothesis match: Part 3.
- B fixed [V]; B_5^{122} sentences pp. 192, 195: CONFIRMED [V]; B_5 slot convention after N-310: CONFIRMED.
- C_2, C_4, B_0: CONFIRMED [V] (same pages as S-53).

### 4.12 SWEEP_E S-98 (R-041)
- α_2–α_4 scaling convention: CONFIRMED as a citation of SOURCES_T2_IEPS_LF R1 (not re-proved). CMP 119 p. 259 prints only α_{0,j}, α_{1,j}: CONFIRMED [V].
- q_0 := p_0 + 1: CONFIRMED; it is inside canon N-410 (q_0 ≥ p_0) and makes the N-440 H-065 branch a γ condition (N-470).
- Haar: CMP 109 p. 267 and CMP 102 UV p. 260: CONFIRMED [V].
- H-130 (I-lin) and A_min pairing conventions: CONFIRMED as conventions (project bookkeeping; no page applies).
- F2′–α: CMP 122 II p. 377 (1.68) and the α sentence: CONFIRMED [V]. Coverage gap partly closed: pp. 378, 382, 386 images show no ε′ (only ε, ε_k, ε_j, δ′_j). pp. 379, 384, 385, 388, 390 remain text-layer only.
- (C2)(a): CMP 119 p. 246 (1.3) and "restricted to □′^{~4}", CMP 98 Prop. 4: CONFIRMED [V]; CMP 122 I p. 192 (1.74) CONFIRMED by the helper's p. 192 read. Composition [P]: CONFIRMED.
- (C2)(b): Part 3.

### 4.13 SWEEP_E summary counts
"16 readings resolved to [V]": CONFIRMED with the citation fixes above. "R-030 Q̃ surjectivity [P]": CORRECTED to "q_j > 0 at fixed j [P]". "ζ_□ (K-050) cost none": CORRECTED to "O(1)(d) junction constants". "Still [I]: 1 (d_f comparison)": CORRECTED: not needed with the χ̃ repair of 2.4, which leaves two geometry steps at [P-sketch].

## 5. Changes that are safe to apply

Ledger (TRUST_LEDGER):
1. R-012: replace "Remaining non-blocking: CMP 109 restrictions outside the file; OCR slip p. 278." by "CMP 109 restrictions located (SOURCES_SWEEP_D §S-58, L1–L12, pp. 259–280) and placed in the canon (N-310–N-470). OCR slip p. 278 closed [V] (image: O(p_0³(g_k))). The p. 277 condition in scale-indexed form, B_3²O(1)Mα_{0,k+1}L^{−(k+1−j)} < ½α_{1,j} (factor L^{j−1}η printed in (3.37)), holds by CMP 119 (2.6)–(2.7), q_1 ≥ q_0 (N-410) and C_1 > 2B_3²O(1)MC_0 (N-450) [P, SOURCES_SWEEP_DE_VERIFY §1]. No new hypothesis on L-001." Do NOT apply SWEEP_D's text "fails for long histories … Open, small".
2. R-010: R4 closed, with SWEEP_D's text, plus "the binding case of the eδ_0M ≥ 4 step is n = 1".
3. R-019: apply SWEEP_D's text with two changes: "(73) at complex A′ [P-sketch/R] through CMP 98 Sect. D ((109) p. 34, Prop. 5 pp. 40–42, p. 43 'may be extended')", not through (44); Prop. 4's complex clause is on CMP 102 p. 292. The K3/K4 wording fix is safe.
4. K-033 [P], K-037 [P-sketch], R-015 residue sentence: apply SWEEP_D's text.
5. R-006 N8 and R-018 k-uniformity [V]: apply SWEEP_D's text.
6. R-032: apply SWEEP_E's text with "zero cost" replaced by "cost: junction derivative constants O(1)(d)".
7. R-028: apply SWEEP_E's text.
8. R-030: apply SWEEP_E's text with "Q̃Q̃^T ≥ ‖H‖^{−2}" replaced by "Q̃Q̃^T > 0 at each fixed j (weighted adjoint bound QQ* ≥ ‖H‖^{−2}; no uniformity in j claimed)" and add "(3.81) needs Mα_0, α_1 small".
9. R-001: apply SWEEP_E's text, but replace the d-path clause by "the printed d (CMP 96 (2.46), p. 231) is block-constant on fine points; L-284 (Lemma T) (c) as written is not proved; repair: block-interpolated cutoff χ̃ (SOURCES_SWEEP_DE_VERIFY 2.4) [P-sketch], (d, L)-constant cost in c_T, D_0". Add the p. 422 "it" = Δ_π^{(2)} fix.
10. R-009: apply SWEEP_E's text with the I-c citation changed to CMP 122 I p. 192 (1.73) / CMP 119 p. 265, the σ_0 alternative "or Z′_0", and the I-e misprint wording corrected.
11. R-018: apply SWEEP_E's text; replace "the convention M_1^{(119)} multiple of R_1M_1^{(102)} (cost: one lower bound on M_1 at N-270)" by "… (cost: R_1 reset above 18dL, an M_1 split into M_1^{(102)} and M_1^{(119)}, caps at N-320/N-380/N-470 read with M_1^{(102)}; acyclic, SOURCES_SWEEP_DE_VERIFY §3.4)". Mark "CMP 122 I follows CMP 109's list" as inference.
12. R-041: apply SWEEP_E's text with the same (C2)(b) cost wording and "no ε′ on pp. 378, 382, 386 [V]; other pages text layer".
13. H-038 (IDS.md / CLOSURE_PLAN): "R_1 < L" WITHDRAWN.

Canon (SOURCES_ORDER_CANON):
A. N-370: "(4B_3O(1)M)²α_0 ≤ β" → "(4B_3²O(1)M)²α_0 ≤ β" (CMP 109 p. 278).
B. N-450: append "indexed form B_3²O(1)Mα_{0,k+1}L^{−(k+1−j)} < ½α_{1,j} follows from this entry and CMP 119 (2.6)–(2.7) (SOURCES_SWEEP_DE_VERIFY §1.5); no new edge".
C. N-060: delete "R_1 (< L [I])"; put "R_1 := a power of L with R_1 > 18dL" (or R_1 := R at N-180).
D. N-270: add "M_1 ≥ L^aR_1M_1^{(102)}, a ≥ 0, powers of L", with M_1^{(102)} a new slot before N-270. Apply C and D together, and only after the open tracing of which N-270 entries mean which M_1 (§3.4); until then mark D "[P-sketch], bookkeeping open".
E. N-060 c_T, D_0: note "constants change by (d, L) amounts under the χ̃ repair of L-284 (c)"; no slot change.
Not safe: SWEEP_D's "p. 277 fails" text; SWEEP_E's "q_j ≥ C^{−2} uniform in j" and "K-050 zero cost".
