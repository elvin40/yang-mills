# SOURCES_LEMMA_T_REPAIR — repaired L-284 (Lemma T) (c) with a block-interpolated cutoff (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5). Ids follow IDS.md. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were outside every grep. No Balaban page was re-imaged here; every page fact is cited from SOURCES_SWEEP_DE_VERIFY §2 [V] or SOURCES_C_CONDITION(_VERIFY).
Status: UNVERIFIED (derivation). Grade of the repaired claim: [P-sketch] (one geometry step, G3 below, at sketch level). It needs an independent verifier before any ledger grade changes.
Tags: [V] read on a page image (by the cited file); [P] proved here; [P-sketch] argument given, one step not written in full; [I] reading.

## 0. The defect (SOURCES_SWEEP_E finding 1, CONFIRMED in SOURCES_SWEEP_DE_VERIFY §2)

CMP 96 p. 231 (2.46) [V] defines d on block centres 𝔅 as an infimum over paths. It extends d to fine points x, x′ by d(x, x′) := d(y(x), y(x′)), with y(x) the centre of the block that contains x. So d is constant on each block. A fine step inside a block costs 0. A fine step across a block face costs d(y, y′) for the two blocks, which is ≥ 1.
SOURCES_C_CONDITION 4.3(c) claims |χ(d(b′, y)/D) − χ(d(b, y)/D)|/η ≤ 3/(Dℓ(b)) for adjacent b, b′. With the printed d the left side is 0 inside a block and can be 3c_adj/(Dη) across a face. The pointwise bound ℓ(b)|∇(χE)| of the S2 step (S2_FORM 4.3) then grows like ℓ(b)/η = L^j. So K_𝓔^D is not uniform in η, and Lemma T (c) as written is not proved (DE_VERIFY §2.3).

## 1. Notation and geometry inputs

- ℓ(x) := L^jη for a fine point x in a block B(y) with y ∈ Λ_j. For a bond b, ℓ(b) := ℓ(b_−).
- Fine points x, x′ are adjacent if |x − x′|_∞ = η.
- dist_∞ is the physical sup-distance on the torus (inside the embedded boxes of Lemma T (a)).
The repair uses three facts of the printed block geometry.
- G1 (layer adjacency) [P from CMP 102 p. 277 (1), (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM_1 [V, DE_VERIFY §3.1]]. If a block B(y′) satisfies dist_∞(x, B(y′)) < ℓ(y′) for a fine point x, then j(y′) ∈ {j(x) − 1, j(x), j(x) + 1}. So ℓ(y′) ≥ ℓ(x)/L. The same holds for two adjacent fine points: ℓ(x′)/ℓ(x) ∈ [L^{−1}, L].
- G2 (tiling) [V, CMP 96 (2.46) setting; CMP 99 pp. 393, 397, "if y ∈ Λ_j, then Δ(y) = B^j(y)", DE_VERIFY §4.9]. The blocks B(y), y ∈ 𝔅, tile Ω_0. Inside one layer they are the cubes of side ℓ_j of one grid.
- G3 (neighbour cost) [P-sketch]. There is c_adj = c_adj(d, L) such that d(y′, y″) ≤ c_adj whenever dist_∞(B(y′), B(y″)) ≤ max(ℓ(y′), ℓ(y″))/(2L) + η. Sketch: by G1 the two blocks lie in one layer or in two adjacent layers. In one layer they touch (G2), and a path of ≤ d Λ_j bonds joins the centres, so d ≤ d. Across an interface, take the coordinate staircase from y′ to y″; its physical ℓ¹ length is ≤ d(ℓ_j/2 + ℓ_j + Lℓ_j/2). The part in layer j costs ≤ d(L + 3)/2 by (2.46); the part in layer j + 1 costs ≤ d. So c_adj ≤ d(L + 5)/2 [P-sketch: the shape of an admissible Γ of (2.46) at a layer interface, "a part of Γ contained in B^j(Λ_j) consists of bonds of the lattice Λ_j", was not re-read for paths that enter and leave a layer]. This is DE_VERIFY §2.4's open step "the value of c_adj".
- d is a metric on 𝔅 (it is an infimum over paths, (2.46) [V]). So |d(y′, y) − d(y″, y)| ≤ d(y′, y″).

## 2. The partition of unity {ψ_{y′}} (DE_VERIFY §2.4's first open step, written out) [P given G1, G2]

Put, for y′ ∈ 𝔅 and fine x,
 φ_{y′}(x) := max{0, 1 − dist_∞(x, B(y′))/w(y′)}, w(y′) := ℓ(y′)/(2L),
 Φ(x) := Σ_{y′}φ_{y′}(x), ψ_{y′}(x) := φ_{y′}(x)/Φ(x).
(P1) Φ ≥ 1: x lies in its own block, where φ = 1.
(P2) Overlap. φ_{y′}(x) > 0 or φ_{y′}(x′) > 0 for an adjacent x′ implies dist_∞(x, B(y′)) < ℓ(y′)/(2L) + η. By G1, j(y′) is one of three layers. In each layer, a cube of side 2(ℓ_{j′}/(2L) + η) ≤ 3ℓ_{j′} around x meets at most 3^d cells of side ℓ_{j′} (G2; the bound 3^d also covers ℓ_{j′} = η). So at most N_ov := 3^{d+1} indices y′ are active at x or x′.
(P3) Gradient. φ_{y′} is (1/w(y′))-Lipschitz in dist_∞. For adjacent x, x′ and an active y′, |φ_{y′}(x′) − φ_{y′}(x)| ≤ η/w(y′) = 2Lη/ℓ(y′) ≤ 2L²η/ℓ(x), by G1. Then
 |ψ_{y′}(x′) − ψ_{y′}(x)| ≤ |φ_{y′}(x′) − φ_{y′}(x)|/Φ(x′) + (φ_{y′}(x)/Φ(x))·|Φ(x′) − Φ(x)|/Φ(x′) ≤ (1 + 2N_ov)·2L²η/ℓ(x).
 So c_ψ := 2L²(1 + 2·3^{d+1}) gives |ψ_{y′}(x′) − ψ_{y′}(x)| ≤ c_ψη/ℓ(x).
(P4) Support. ψ_{y′}(x) > 0 implies dist_∞(x, B(y′)) < ℓ(y′)/(2L), so d(y′, y(x)) ≤ c_adj by G3.
(P5) 0 ≤ ψ_{y′} ≤ 1 and Σ_{y′}ψ_{y′} = 1 at every fine point.

## 3. The repaired cutoff and Lemma T (c′)

Definition. For y ∈ 𝔅 and a fine bond b put
 χ̃_y(b) := Σ_{y′∈𝔅} ψ_{y′}(b_−)·χ(d(y′, y)/D),
with χ as in SOURCES_C_CONDITION 4.3 (0 ≤ χ ≤ 1, χ = 1 on [0, ½], χ = 0 on [1, ∞), |χ′| ≤ 3) and D ≥ 1. Then 0 ≤ χ̃_y ≤ 1 (P5). The truncated extension is
 𝓔̃^D_U(b, y) := χ̃_y(b)E(b, y)Ad U(Γ_{y→b}).

Lemma T (c′) [P given §2 and G3 (P-sketch)]. For adjacent fine bonds b, b′ (reference points adjacent),
 |χ̃_y(b′) − χ̃_y(b)|/η ≤ 3C_χ/(Dℓ(b)), C_χ := N_ov·c_ψ·c_adj = 3^{d+1}·2L²(1 + 2·3^{d+1})·c_adj(d, L).
Proof. Let x = b_−, x′ = b′_−, y″ := y(x). By (P5) at both points,
 χ̃_y(b′) − χ̃_y(b) = Σ_{y′}(ψ_{y′}(x′) − ψ_{y′}(x))·[χ(d(y′, y)/D) − χ(d(y″, y)/D)].
Only active y′ contribute (P2): at most N_ov terms. For each, |ψ_{y′}(x′) − ψ_{y′}(x)| ≤ c_ψη/ℓ(x) (P3), and by |χ′| ≤ 3 and the triangle inequality on 𝔅,
 |χ(d(y′, y)/D) − χ(d(y″, y)/D)| ≤ 3d(y′, y″)/D ≤ 3c_adj/D.
Here d(y′, y″) ≤ c_adj holds because y′ is active at x or x′, so B(y′) is within ℓ(y′)/(2L) + η of x ∈ B(y″) (G3). Multiply and sum. ∎

Energy step (the rest of the old (c)). D_U(χ̃𝓔_U)(b, b′) = χ̃(b′)(D_U𝓔_U)(b, b′) + (χ̃(b′) − χ̃(b))·Ad U(b, b′)𝓔_U(b). The first term is QE_INV 5.3 restricted to supp χ̃ (no seam there by (a′) below). The second term is ≤ (3C_χ/D)ℓ(b)^{−1}|E(b, y)|, the K_abs form of the old proof with 3 → 3C_χ. Hence
 K_𝓔^D ≤ 2(√K_abs(1 + 3C_χ/D) + 2α_Fc_1)².
The S2 step (S2_FORM 4.3) uses only the pointwise bounds of |𝓔| and ℓ|∇𝓔|; χ̃E obeys them with constants × (1 + 3C_χ/D).

## 4. Claims (a), (b), (d), (e) with the new cutoff [P given §2–§3]

Support facts. (S1) χ̃_y(b) > 0 implies some y′ with ψ_{y′}(b_−) > 0 and d(y′, y) < D, so d(b, y) = d(y(b_−), y) < D + c_adj (P4). (S2) If d(b, y) ≤ D/2 − c_adj, every active y′ has d(y′, y) ≤ D/2, so χ̃_y(b) = 1. Hence supp(1 − χ̃_y) ⊂ {d(b, y) > D/2 − c_adj}.
(a′) No winding. Replace D by D⁺ := D + c_adj in SOURCES_C_CONDITION 4.3(a): r_D → L(D⁺ + 3(d + 1))ℓ_y(1 + O(L^{−1})); (T1′) RM ≥ 4L²D⁺; (T2′) N_T > 2L(D⁺ + 3(d + 1)) + 2. The argument is unchanged.
(b′) Neumann defect. The first two brackets use only 0 ≤ χ̃ ≤ 1 and (S1): ≤ c_QMα_0. The last bracket is −Q(1)((1 − χ̃)E); by (S2) its entry is ≤ C_He^{−δ_Hd(y, y′)/2}e^{−δ_H(D/2 − c_adj − c_q)/2}. So ε_Q^S(D) ≤ c_QMα_0 + c̃_tre^{−δ_HD/4}, c̃_tr := c_tre^{δ_Hc_adj/2}.
(d′) Choice of D. D̃_0 := the least D ≥ 1 with c̃_tre^{−δ_HD/4} ≤ ¼. Then D̃_0 ≤ D_0 + 2c_adj. Put
 c̃_T(d, L) := 2L(D̃_0 + c_adj + 3(d + 1)) + 2 ≤ c_T + 6Lc_adj,
 (T1′) RM ≥ 4L²(D̃_0 + c_adj), (T2′) N_T > c̃_T.
With c_QMα_0 ≤ ¼, K_Q ≤ 2 as before, and (C) holds with c̃_− := 1/(4K̃^D), K̃^D the S2 constant with E → χ̃E, i.e. with (1 + 3C_χ/D̃_0) in place of (1 + 3/D_0).
(e′) c_adj, c_ψ, N_ov, C_χ depend on d, L only. So D̃_0, c̃_T and K̃^D depend on the same inputs as D_0, c_T and K^D (d, L, C_H, δ_H, c_q, K_abs, α_Fc_1). None depends on R, M, α_0, k, η or the volume.
Cost, in one line: c_T → c̃_T ≤ c_T + 6Lc_adj; D_0 → D̃_0 + c_adj ≤ D_0 + 3c_adj in (T1); 3/D_0 → 3C_χ/D̃_0 in K^D; all (d, L) numbers. No new hypothesis, slot or edge.

## 5. Consumers of Lemma T (c), and survival with the new constants

Found by grep for "L-284", "c_T", "D_0", "K^D", "1/(4K" over the folder (archive and firewall files excluded). The names L-283, L-285, L-286, L-282 (other "Lemma T"s, IDS.md l. 1366) are not consumers.

| # | consumer | how it uses Lemma T (c) | new constant | survives? |
|---|---|---|---|---|
| 1 | L-284 (Lemma T) (d)–(e) itself | K_𝓔^D ⇒ K^D; D_0, c_T | K̃^D, D̃_0, c̃_T (§4) | yes [P given G3]: same form, (d, L) constants |
| 2 | S2 step, S2_FORM 4.3 (with the seam erratum of SOURCES_S2_FORM_VERIFY l. 72, SOURCES_QE_INV_VERIFY l. 59) | pointwise bounds of χE and ℓ∇(χE) | factor (1 + 3C_χ/D̃_0) | yes: only pointwise bounds are used; the seam lies outside supp χ̃ by (a′) |
| 3 | H-057 (C) for G (row R-001; SOURCES_C_CONDITION 8.1) | c_− = 1/(4K^D) | c̃_− = 1/(4K̃^D) | yes: c̃_− > 0, uniform in k, η, U, volume (e′) |
| 4 | H-057 (C) for G_1 by L-039 (Lemma R) | c_{−,1} = c_−/(1 + δ_1); δ_1 = 4c_2(K_G + B_0²c_1²)Mα_0 has no K^D | c̃_{−,1} = c̃_−/(1 + δ_1) | yes: δ_1 unchanged |
| 5 | users of c_− > 0: L-125 (Lemma CT) (R-001), A1-W (H2) in A1_WALK_FULL (thresholds e^{−2δ_GM_1} ≤ c_−/(4…), bound 8/c_−), WC_FULL C1–C2 (R-003), L-226 (Lemma N) γ_1^N (R-008), R-009, R-016, R-002 (H-298) | c_− only as a positive uniform constant (SOURCES_C_CONDITION 7.2: "No consumer needs the sharp form") | c̃_− ≤ c_− | yes: a smaller c_− raises lower bounds on M_1 (A1-W, N-200) or enlarges γ_1^N; all such constants sit before the parameter they bound, in the safe direction (same pattern as SOURCES_SWEEP_BC_VERIFY V1.5) [P] |
| 6 | canon N-060 (c_T, D_0) | definitions | c̃_T, D̃_0 + c_adj | yes: (d, L) numbers, slot unchanged (the canon already carries DE_VERIFY §5 E as a note, change log l. 363) |
| 7 | canon N-310 entries M ≥ c_T/22 and (T1) RM ≥ 4L²D_0 (K-045) | lower bounds on M, RM | M ≥ c̃_T/22; RM ≥ 4L²(D̃_0 + c_adj) | yes: larger lower bounds on M after d, L; no edge changes |
| 8 | (Vol) discharge, SOURCES_C_CONDITION 4.4 and K-032 | (T2) at every k ≤ K from ℓ > 22M and M ≥ c_T/22 | M ≥ c̃_T/22 gives (T2′) at every k ≤ K | yes: same argument |
| 9 | R-021 (d): (KE′) constants C_H, δ_H uniform for torus side ≥ c_T | citation reading | side ≥ c̃_T | yes: the reading covers any (d, L) side threshold; grade [R] unchanged |
| 10 | SOURCES_C_CONDITION_VERIFY seam numerics (numerics/c_verify_seam.py: D < N_T/2 uniform, D = 4 > N_T/2 grows) | evidence that (T2) is a real condition | (T2′) with D⁺ = D + c_adj | yes: (T2′) is the same kind of condition; the numerics test the printed-χ form at d = 2 and are not re-run here |
| 11 | paper/sources.tex l. 554–563, paper/remains.tex l. 57, 112, 216, paper/appendix.tex l. 69, 295 | status text of Lemma T and (C) | text only | status changes to "(c) repaired, unverified" (applied in the paper pass of 2026-10-28) |

No consumer needs the old numbers 3/D_0 or c_T. Every changed constant is a (d, L) number fixed before R, M, α_0.

## 6. Grade and what remains

- Lemma T (c′): [P-sketch]. Proved here given G1 (from a printed separation [V]), G2 [V], and G3 [P-sketch: the cost c_adj of an admissible (2.46) path at a layer interface].
- DE_VERIFY §2.4 listed two open steps: (1) the existence of {ψ_{y′}} with |∇ψ| ≤ c_ψ/ℓ: CLOSED here [P] (§2, explicit tent construction, c_ψ = 2L²(1 + 2·3^{d+1})); (2) the value of c_adj: given here as c_adj ≤ d(L + 5)/2 [P-sketch].
- Lemma T (a), (b), (d), (e): restated with D⁺ = D + c_adj and D/2 − c_adj [P given (S1), (S2)].
- (C) for G and G_1: proved relative to the SOURCES_C_CONDITION_VERIFY §8 input set plus this repair, with c̃_− = 1/(4K̃^D) and c̃_{−,1} = c̃_−/(1 + δ_1). The verified status of (C) depended on the old (c); until a verifier checks this file, (C) is "verified reduction, with L-284 (c) repaired [P-sketch, unverified]".
- Verifier asks: (i) (P2)–(P3) counts and the factor L² from G1; (ii) G3 and the value of c_adj, on CMP 96 p. 231 (2.46) at a layer interface; (iii) (S2) and the Neumann defect with c̃_tr; (iv) that no consumer in §5 uses c_− or c_T in an upper bound fixed before them.
