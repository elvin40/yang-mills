# IDS — registry of project identifiers (applied 2026-10-28)

Scheme. Every project object has one id `P-nnn`: a capital letter, a hyphen, three digits (tasks: `T-nnnn`, four digits).
Prefixes: R ledger row, K convention, X external result, N canon line, Q closure item, H hypothesis/condition/reading, L result proved here, T task.
Numbers were assigned from scratch in logical order (ledger order, canon order, closure-table order, paper order for L); they carry no status and no trace of the old number.
Canon lines were numbered in steps of 10 (N-010 … N-500), so a new line fits between two old ones (N-265 was added this way on 2026-10-29); Lean `CanonOrder.id_eq_rank` proves that the order of the N-numbers equals the canon order.
Ledger rows of old Group A and Group B share the R- prefix; the group is a column of TRUST_LEDGER.md, not part of the id.
Prose cites `ID (short name)`; a parenthesized label or a lemma name may follow its id as a description, e.g. "H-116 (H-U)", "L-005 (Lemma D″)".
File-local labels (verify items V1–V13, Steps, WC_FULL R1–R4, A1_WALK_FULL (H1)–(H4), Route B items B1–B8, canon resolutions R1–R7, …) are not global ids; cite them qualified by file.
File names are unchanged; old ids inside file names (SOURCES_A11_CONST, THM37_FULL, …) are historic text.
Frozen files (every file that carries the banner line) use old ids: look them up here, in the "old ids / aliases" column.
Rows marked "to review" carry a provisional assignment (homonym lemma names, id-shaped labels); see the last section.

Format: new id | kind | short name | old ids / aliases | defining file §


## R- ledger rows (TRUST_LEDGER.md §1–§2; group A = Balaban-level assertion, group B = our open item; retired rows at the end)

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| R-001 | ledger row (group A) | Kernel bound \|(QGQ*)^{−1}(y,y′)\|, \|(QG_1Q*)^{−1}(y,y′)\| ≤ … | A1 | TRUST_LEDGER.md §1 |
| R-002 | ledger row (group A) | Walk-expansion form of R-001: the R-001-level walk expansion of (QGQ*)^{−1} that builds the walk … | A1w | TRUST_LEDGER.md §1 |
| R-003 | ledger row (group A) | R_2 (precision difference C_0^{−1} − Re C^{(k)}(Z_0,σ)^{−1}) and R_3 obey \|R_2(b,b′)\| ≤ … | A2 | TRUST_LEDGER.md §1 |
| R-004 | ledger row (group A) | C*Δ_kC ≥ γ_0 > 0 with γ_0 independent of k and U, for every U obeying (3.35)–(3.36) with Mα_0 … | A3 | TRUST_LEDGER.md §1 |
| R-005 | ledger row (group A) | Exponential kernel decay of δ²V/δA′²: \|Δ(y)(δ²V/δA′²)(A′)𝔄\| ≤ … | A4 | TRUST_LEDGER.md §1 |
| R-006 | ledger row (group A) | Inductive assumption: E^{(j)}(X, g_{j−1}, U, J) is C^∞ in g_{j−1} ∈ [0, γ]; β_{j+1} is smooth … | A5 | TRUST_LEDGER.md §1 |
| R-007 | ledger row (group A) | E^{(j)}, β_j are analytic in the effective couplings ("(or analytic)"), with the alternative … | A6 | TRUST_LEDGER.md §1 |
| R-008 | ledger row (group A) | ‖C*Δ_kC‖ ≤ γ_1 uniform in k, volume, regular U, and uniform exponential decay of C*Δ_kC | A7 | TRUST_LEDGER.md §1 |
| R-009 | ledger row (group A) | For the real pair (U, 0) the localized operators are symmetric and dμ_{C^{(k)}(Z_0,0)} is a … | A8 | TRUST_LEDGER.md §1 |
| R-010 | ledger row (group A) | The lower-order bracket terms of the step obey the same bound as the fifth-order term … | A10 | TRUST_LEDGER.md §1 |
| R-011 | ledger row (group A) | A10′: verified replacement form of A10 (A10′ R1–R4 residues) | A10′ | TRUST_LEDGER.md §1 |
| R-012 | ledger row (group A) | "Similar inequalities hold for other constants, which will be introduced later" (extension of … | A11 | TRUST_LEDGER.md §1 |
| R-013 | ledger row (group A) | Theorem 1: if g_k ∈ ]0, γ] for all k with γ small, the densities ρ_k have the form and bounds … | A13 | TRUST_LEDGER.md §1 |
| R-014 | ledger row (group A) | Induction closure: the t_□-derivative yields a factor O(1)α_2^{−1}ε_1 that beats the constant … | A14 | TRUST_LEDGER.md §1 |
| R-015 | ledger row (group A) | β_j is the coefficient of the infinite-volume, whole-lattice extension of the step: sums over … | A15 | TRUST_LEDGER.md §1 |
| R-016 | ledger row (group A) | Propagators in the background-field equations may be replaced by any operators with the same … | A16 | TRUST_LEDGER.md §1 |
| R-017 | ledger row (group A) | supp χ_k ⊂ {g_k\|B\|_Y < ε_1}, the analyticity domain of (1.34) (the cut is on B′ = g_kCB − … | A17 | TRUST_LEDGER.md §1 |
| R-018 | ledger row (group A) | Regular-class identification: the backgrounds of CMP 109/116/122 lie in the regular class of … | A18 | TRUST_LEDGER.md §1 |
| R-019 | ledger row (group A) | (190) holds at complex B on the ball \|B\| < 2C_1ε_1 (CMP 102 (172)) | A19 | TRUST_LEDGER.md §1 |
| R-020 | ledger row (group A) | Balaban does not print the large-field T-step rate loss; CMP 119 Sect. 3 (pp. 276–278) keeps κ … | A23 | TRUST_LEDGER.md §1 |
| R-021 | ledger row (group A) | Printed CMP 99 inputs of the H-057 (C) proof: (a) Thm 3.1 (3.46) for G′ at a = 1; (b) Thm … | A24 | TRUST_LEDGER.md §1 |
| R-022 | ledger row (group A) | "Results of this, and previous papers … valid universally for all averages satisfying the … | A25 | TRUST_LEDGER.md §1 |
| R-023 | ledger row (group A) | U_{k+1}(□_0, M′(U)) "has approximately the same regularity properties … all necessary theorems … | A26 | TRUST_LEDGER.md §1 |
| R-024 | ledger row (group A) | Q-049: the walk expansions of CMP 99 Thms 3.7–3.10 "in their full generality" in the … | A27 | TRUST_LEDGER.md §1 |
| R-025 | ledger row (group B) | (H2) ρ_2 = sup_{j≥2} sup_K ‖(⊕_l H_{j−1}(k_l))H_j(K)‖/L² < L; at L = 13 via H-119 (H1_13) … | B1, (H2) | TRUST_LEDGER.md §2 |
| R-026 | ledger row (group B) | (PI) probe independence at each fixed level | B2, (PI) | TRUST_LEDGER.md §2 |
| R-027 | ledger row (group B) | (F) lattice log coefficient = continuum log coefficient at constant field | B3, (F) | TRUST_LEDGER.md §2 |
| R-028 | ledger row (group B) | (M_j): formal = true f² coefficient: H-244 (S1) 𝒦_t(f) ≥ −C_1\|f\|, H-245 (S2) density of … | B4, (M_j) | TRUST_LEDGER.md §2 |
| R-029 | ledger row (group B) | V1: β_{j+1}(0) is the Maxwell coefficient of the per-step Gaussian determinant (order-g⁰ … | B5 | TRUST_LEDGER.md §2 |
| R-030 | ledger row (group B) | (G2) per-cell infinite-volume densities | B6, (G2) | TRUST_LEDGER.md §2 |
| R-031 | ledger row (group B) | L5: β_{k+1}(g_0,…,g_k) defined and continuous on the clamped cube ]0, γ]^{k+1}, or a … | B7 | TRUST_LEDGER.md §2 |
| R-032 | ledger row (group B) | K-independence of β_j(g), R-term part. The original form (finite-volume R-term increment = … | B8 | TRUST_LEDGER.md §2 |
| R-033 | ledger row (group B) | Route B inputs (alternative to R-026–R-029): (T1) sup_j sup_q \|c^{(1)}_{T,j}(q)\| < ∞; (DF) … | B9 | TRUST_LEDGER.md §2 |
| R-034 | ledger row (group B) | Results tagged proved, unverified, inside the chains: (i) the sweep of CMP 119 (2.6)–(2.9) … | B10 | TRUST_LEDGER.md §2 |
| R-035 | ledger row (group B) | (B-S): the sourced version of Theorem 1, (E14-a, b, c), with the pointwise flow H-159 (S-A) … | B11, (B-S) | TRUST_LEDGER.md §2 |
| R-036 | ledger row (group B) | (I): B_j(c) = F_j(u(c); x*) (frozen-threshold map) for constant sources; for Balaban's running … | B12, (I) | TRUST_LEDGER.md §2 |
| R-037 | ledger row (group B) | Real uniform R-037 (H-hist): sup_i Σ_{j>i} \|∂β_j/∂g_i\| < ∞ with u-slot sums O(g_i³) … | B13, (H-hist) | TRUST_LEDGER.md §2 |
| R-038 | ledger row (group B) | (H-hist2): summable second history derivatives ε″_j ∝ u_{j−1}^{−2} for the frozen map B_j(· … | B14, (H-hist2) | TRUST_LEDGER.md §2 |
| R-039 | ledger row (group B) | (H-thr): threshold mismatch Δ_j = B_j(·; frozen) − β_j(·; running) has summable c-derivatives … | B15, (H-thr) | TRUST_LEDGER.md §2 |
| R-040 | ledger row (group B) | (H-hol), small field: β_j holomorphic on \|g − x\| < ρ_0x, \|β_j\| ≤ M_β uniform in j, k … | B16, (H-hol) [split] | TRUST_LEDGER.md §2 |
| R-041 | ledger row (group B) | (H-hol), large field: holomorphy and volume-uniform bounds of the R-step with thresholds, R_j … | B17, (H-hol) [split] | TRUST_LEDGER.md §2 |
| R-042 | ledger row (group B) | N3: \|δw_k\| ≤ (3/2)τ on Q = {\|Re c\| ≤ 2r, \|Im c\| ≤ τ}, uniformly in K, ε | B18 | TRUST_LEDGER.md §2 |
| R-043 | ledger row (group B) | (FX): the final Mayer expansion of the sum over large-field geometries plus the unit-scale … | B19, (FX) | TRUST_LEDGER.md §2 |
| R-044 | ledger row (group B) | Sourced step bookkeeping: R-044 (W4) step holomorphic in input activities on the E_0 → 2E_0 … | B20, (W4) | TRUST_LEDGER.md §2 |
| R-045 | ledger row (group B) | (B-N1) bridge and R-045 (S): uniformity of the source bound in bump position and in ε; C^∞ … | B21, (B-N1), (S) [split] | TRUST_LEDGER.md §2 |
| R-046 | ledger row (group B) | κ → κ/2 decay recovery only [R]: recovery of the decay halving κ → κ/2 of D2 by the scale … | B22 | TRUST_LEDGER.md §2 |
| R-047 | ledger row (group A) (retired) | C′_1 unprinted, not derivable; value not used (page reading, left §6) | A9 | TRUST_LEDGER.md §6 (retired) |
| R-048 | ledger row (group A) (retired) | β_0 arbitrarily small, CMP 119 p. 255; fixed before γ (page reading, left §6) | A12 | TRUST_LEDGER.md §6 (retired) |
| R-049 | ledger row (group A) (retired) | R_{K+1} ≥ L from CMP 119 (2.5) for γ < e^{−1/2} (page reading, left §6) | A20 | TRUST_LEDGER.md §6 (retired) |
| R-050 | ledger row (group A) (retired) | uniform-in-k moments and decay of E_0 (proved, SOURCES_T2_EUMOM; left round 4) | A21 | TRUST_LEDGER.md §6 (retired) |
| R-051 | ledger row (group A) (retired) | Π (4.37)/(5.1); CMP 119 (2.42) corrected (page reading, left §6) | A22 | TRUST_LEDGER.md §6 (retired) |
| R-052 | ledger row (group B, outside the targets) | FABLE_HARD.md: L6 ν/polydisc forms, O(4) obstruction, Theorems U1/U2/FD/W1/W2, RP1, (Gap_K); UNVERIFIED (round 12) | — | TRUST_LEDGER.md §2.1 |
| R-053 | ledger row (group B, outside the targets) | ALT_ROUTES.md: Chatterjee center-symmetry route (CS_σ), stochastic quantization route (PI), Prop. 9.1; UNVERIFIED (round 12) | — | TRUST_LEDGER.md §2.1 |
| R-054 | ledger row (group B, outside the targets) | R3S1_GAP.md: Theorem B′ (center-stabilized SU(N) on R³ × S¹), reduction Theorem R, [C1]–[C5]; UNVERIFIED (round 12) | — | TRUST_LEDGER.md §2.1 |

## K- conventions and choices (TRUST_LEDGER.md §3)

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| K-001 | convention | Freeze ε_j, δ_j, δ′_j, R_j, N, 100MR_k cubes, and partitions at Balaban's real trajectory x* … | C1 | TRUST_LEDGER.md §3 |
| K-002 | convention | Option B margin: keep Balaban's output factor exactly; additive weight, g* = 0.82645 − θ_W − … | C2 | TRUST_LEDGER.md §3 |
| K-003 | convention | L odd, L > 11 (Balaban's range, CMP 109 pp. 251–252); certification target L = 13 by the … | C3 | TRUST_LEDGER.md §3 |
| K-004 | convention | G = SU(2), d = 4 | C4 | TRUST_LEDGER.md §3 |
| K-005 | convention | Order of constants: the canonical order is SOURCES_ORDER_CANON.md (N-010–N-500, amended E1–E8 … | C5 | TRUST_LEDGER.md §3 |
| K-006 | convention | Holomorphy radius ρ_0 = min(0.1, (LM)^{−2}(8n)^{−1/2}), divided by √2 if w scales the X-modes … | C6 | TRUST_LEDGER.md §3 |
| K-007 | convention | Cut on B vs B′ — CLOSED: the cut is \|B(b)\| < ε_1/g_k on every bond except b_0 (h = 0, C = 1 … | C7 | TRUST_LEDGER.md §3 |
| K-008 | convention | Keep the sharp χ_k (G3 Route 2); smooth χ̂ (Route 3) is the fallback with ε_1 → ε_1/2, γ → γ/2 | C8 | TRUST_LEDGER.md §3 |
| K-009 | convention | Shrink the χ_k threshold by a fixed factor so that supp χ_k lies inside the (1.34) domain … | C9 | TRUST_LEDGER.md §3 |
| K-010 | convention | C9 variant (shrink r < 1) named in CLOSURE_PLAN Table 3; unused | C9′ | CLOSURE_PLAN.md Table 3, mentioned inside row K-009 (no separate row) |
| K-011 | convention | Adapted gauge-fixing weight 1/u_k(c) in the sourced construction | C10 | TRUST_LEDGER.md §3 |
| K-012 | convention | h ≡ 0 booking of the source gradient remainder; freezing set S_X = points of X nearest to the … | C11 | TRUST_LEDGER.md §3 |
| K-013 | convention | Additive source normalization w_0 = g_0^{−2} − f, τ in absolute u-units; N3 constant 3/2 (any … | C12 | TRUST_LEDGER.md §3 |
| K-014 | convention | Use Balaban's main R-step form (1.90)–(1.98), not the optional (1.103)–(1.104) | C13 | TRUST_LEDGER.md §3 |
| K-015 | convention | κ_final := 2κ + √d(1+2β)κ + c_d fixed before M (route a); M ≥ 12L(3κ_final)^{1/d} (C_1 … | C14 | TRUST_LEDGER.md §3 |
| K-016 | convention | Fluctuation threshold exponent p_1 with Balaban's 2p_1 − (d+5)r_0 > p_0, giving the … | C15 | TRUST_LEDGER.md §3 |
| K-017 | convention | 32ε′ ≤ 1 (an extra smallness condition on ε_1; 40ε′ ≤ 1 for F2′ on P_{ρ_0}(x*) … | C16 | TRUST_LEDGER.md §3 |
| K-018 | convention | (S): γ^{−2} ≥ c_sw·D′, c_sw = max(2, 1/(1 − (1+β_0)^{−2})) = 64/15 at β_0 = 1/7 | C17, (S) [split] | TRUST_LEDGER.md §3 |
| K-019 | convention | ℓ even (both seams of the time reflection are link planes); time periodic, so the … | C18 | TRUST_LEDGER.md §3 |
| K-020 | convention | Coupling domain ]0, γ], not [0, γ] | C19 | TRUST_LEDGER.md §3 |
| K-021 | convention | Route K is the primary proof of Target 1; Route B is an alternative | C20 | TRUST_LEDGER.md §3 |
| K-022 | convention | θ_* < 1 in Route B | C21 | TRUST_LEDGER.md §3 |
| K-023 | convention | g_0(K, g): any solution of the shooting problem (existence, not uniqueness) | C22 | TRUST_LEDGER.md §3 |
| K-024 | convention | (U): ρ_1 ≤ c_* r_0/M^a at λ_K = 1, a fixed; r_0 = Cauchy margin of the constant-source family … | C23, (U) | TRUST_LEDGER.md §3 |
| K-025 | convention | (M1): the block size M = L^m is chosen ≥ M_req, the maximum of 32 lower bounds on M … | C24, (M1) [M-choice], (M1) [split] | TRUST_LEDGER.md §3 |
| K-026 | convention | (Hα): (α_5 + G_Γ²δ_S)Λ_0 ≤ ½ | C25 | TRUST_LEDGER.md §3 |
| K-027 | convention | (Hγ): (1/20)γ_2ε_1²/γ² ≥ 4κ + 1, and the (2.31) γ condition (1/20)x − 4M^4e^{−x/20} ≥ 0 at x = … | C26 | TRUST_LEDGER.md §3 |
| K-028 | convention | β_H ∈ (0, 1), 0 < β_H ≤ β_0^H < 1: the unprinted Hölder exponent of CMP 109 (I.3.31), chosen … | C27 | TRUST_LEDGER.md §3 |
| K-029 | convention | M_2 slot: M_1 < M_2 < M (printed), order M_1 → M_2 → M, M > M_2 | C28 | TRUST_LEDGER.md §3 |
| K-030 | convention | M_2 ≥ 1/δ (δ = decay rate of (190) [15], fixed before M_1) | C29 | TRUST_LEDGER.md §3 |
| K-031 | convention | A_1/A_0 ≤ 1/(80B_3) (A_0 after A_1: A_0 ≥ 80B_3A_1; up-set in A_0) | C30 | TRUST_LEDGER.md §3 |
| K-032 | convention | (Vol) volume hypothesis, added to THEOREM2_PROOF_v4 §1.1: the fixed torus has side ℓ > 22M … | C31, (Vol) | TRUST_LEDGER.md §3 |
| K-033 | convention | (Cube): U_j(□_0, ·) of [14] uses only data on □_0 | C32, (Cube) | TRUST_LEDGER.md §3 |
| K-034 | convention | (Cases): the localization printed for the "typical term" holds for the other term classes | C33, (Cases) | TRUST_LEDGER.md §3 |
| K-035 | convention | (Conv): cube sides divide N; partitions are π-images of the Z^4 partitions; M = KR_0M_0 with K … | C34, (Conv) | TRUST_LEDGER.md §3 |
| K-036 | convention | (Det′): a domain-assignment rule for closed-walk terms of the [16] determinant expansion (a … | C35, (Det′) | TRUST_LEDGER.md §3 |
| K-037 | convention | p. 290 reading: "H_j with free boundary conditions" means the Z^4 operator | C36 | TRUST_LEDGER.md §3 |
| K-038 | convention | (Enl): the s-rule localization domain of a walk is ∪X_i^5 as a whole-lattice set, not ∪X_i^5 ∩ … | C37, (Enl) | TRUST_LEDGER.md §3 |
| K-039 | convention | (C1*): c_mM_0·g_kp_0(g_k) ≤ ½κ_HC_1^{102}a_*^{102}, uniform in k (canon N-470) | C38, (C1*) | TRUST_LEDGER.md §3 |
| K-040 | convention | M_0 slot and a_*^{102} (incl. the cube cap ε_1^{102} ≤ R_1M_1a_1^{102}/M), placed at canon … | C39 | TRUST_LEDGER.md §3 |
| K-041 | convention | R-016 tree conditions: H-060 (A16-a^T) g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4; H-062 (A16-b^T) q_W^T ≤ … | C40 | TRUST_LEDGER.md §3 |
| K-042 | convention | H-063 (A18-1)–H-066 (A18-4) and M ≥ 5M_99 with 10 \| C^{122}M: H-063 (A18-1) a_0 → … | C41 | TRUST_LEDGER.md §3 |
| K-043 | convention | CMP 122 I–II threshold/exponent conditions H-266–H-270 (ν_I ≤ 2(p_0 − p_1 − 1); N ≥ (ν_II/log … | C42 | TRUST_LEDGER.md §3 |
| K-044 | convention | (Cv1) U(c) = product of the L level-(i−1) links on the straight segment c_− → c_+ (CMP 98 … | C43, (Cv1), (Cv2) | TRUST_LEDGER.md §3 |
| K-045 | convention | L-284 (Lemma T) cut-off χ(d/D_0), D_0 = D_0(d, L), with the threshold (T2): torus side > … | C44 | TRUST_LEDGER.md §3 |
| K-046 | convention | (K-046) s-rule: s-versions are defined per distinct σ_0-cube met on the project's expansions … | C45, C-new-2 | TRUST_LEDGER.md §3 |
| K-047 | convention | γ²β′ ≤ 1/L: unprinted side condition of CMP 119 (2.9) line 2 (the step L(1 + X)^{β_0} ≤ (L + … | C46 | TRUST_LEDGER.md §3 |
| K-048 | convention | ι-domain assignment (WG 2.5); proposed, not a ledger row | C-new-1 | SOURCES_SRULE_CONVENTION.md / CLOSURE_PLAN.md (proposed) |
| K-049 | convention | A16 Ω-setting volume convention; proposed | C-new-3 | SOURCES_SRULE_CONVENTION.md / CLOSURE_PLAN.md (proposed) |
| K-050 | convention | B20 (Conv_Λ) and Λ_j nesting; proposed | C-new-4 | SOURCES_SRULE_CONVENTION.md / CLOSURE_PLAN.md (proposed) |

## X- external results, not Balaban (TRUST_LEDGER.md §1, externals)

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| X-001 | external result | Lüscher–Weisz (5.7) one-loop coefficient | X1 | TRUST_LEDGER.md §1 (externals) |
| X-002 | external result | OS II linear growth condition \|S_n(F)\| ≤ σ_n\|F\|_{sn}, σ_n ≤ A(n!)^D, and reconstruction … | X2 | TRUST_LEDGER.md §1 (externals) |
| X-003 | external result | Reflection positivity of the Wilson action for link-plane reflections on the periodic lattice | X3 | TRUST_LEDGER.md §1 (externals) |
| X-004 | external result | Convergence criterion for the final cluster expansion | X4 | TRUST_LEDGER.md §1 (externals) |
| X-005 | external result | (F) continuum log coefficient of the constant-field one-loop effective action | X5 | TRUST_LEDGER.md §1 (externals) |

## N- canon lines (SOURCES_ORDER_CANON.md Part B; number = 10 × (rank + 1))

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| N-010 | canon line | β_0^H ∈ (0, 1). Hölder bound of CMP 99 Thm 2 / CMP 102 Thm 1; costs B_2(β_0^H), B_4(β_0^H). … | B1 | SOURCES_ORDER_CANON.md Part B |
| N-020 | canon line | β_H ∈ (0, β_0^H]. — K-028; SOURCES_A10_LOWER_VERIFY (5). | B2 | SOURCES_ORDER_CANON.md Part B |
| N-030 | canon line | β_0 (CMP 119 slack): β_0 ≤ ½ H-257 (S3). Moved here from Group 2 (E2); N-050 uses its cap. — … | B6 | SOURCES_ORDER_CANON.md Part B |
| N-040 | canon line | d ≥ 2; N (G ⊂ U(N)). — WC_FULL 0.10. | B3 | SOURCES_ORDER_CANON.md Part B |
| N-050 | canon line | L odd, L ≥ 13, in the certified set of HIGHER_M1 B1. H-264, 2(1 + β_0)L^{−2} + 0.4 < 1, holds … | B4 | SOURCES_ORDER_CANON.md Part B |
| N-060 | canon line | θ_WG = ½ (a number; first); β = ¼; δ: H-216 (K1′) δ ≤ (1/13)(1 − 4(1 + 4β)/L) (θ_K ≥ ½ … | B5 | SOURCES_ORDER_CANON.md Part B |
| N-070 | canon line | κ: large; δLκ/48 ≥ K_abs; κ ≥ 2m_tot (so θ_K := 1 − m_tot/κ ≥ ½, the value used in N-060's … | B7 | SOURCES_ORDER_CANON.md Part B |
| N-080 | canon line | κ_0 ≥ 7, large; then β_0′ with (1 + β_0′)^{κ_0} ≤ 1 + β_0 if a step needs it (H-265). — … | B8 | SOURCES_ORDER_CANON.md Part B |
| N-090 | canon line | κ_1: ⅛(κ_1 − 1) ≥ (1 − 3δ)κ; ½(κ_1 − 1) ≥ 2Lκ; large. Before M_1 (R6). — SOURCES_T2_IEPS §10 … | B9 | SOURCES_ORDER_CANON.md Part B |
| N-100 | canon line | RM_min: θ_L := log L/(RM) ≤ δ′/(8(d + 4)), δ′ = (1 − θ_37)δ_0, and CMP 96 (2.59) at the THM37 … | B10a | SOURCES_ORDER_CANON.md Part B |
| N-110 | canon line | THM37 constants at RM_min: B′, c′^{37}, K_1^{37}, c_1(θ_37), C_37, a_37, M_37(θ_37); complex … | B10b | SOURCES_ORDER_CANON.md Part B |
| N-120 | canon line | THM39 constants: δ_G^min = (7/16)δ′, b_G^{39}, C_𝒟^N, c_+^{39} → ε_39 (RM-free; ε_39 ≤ … | B10c | SOURCES_ORDER_CANON.md Part B |
| N-130 | canon line | RM_0 := max{RM_min, 4(d + 4)log L/ε_39}; δ_39 := ½ε_39 − \|2 − d/2\|θ_L ≥ (3/8)ε_39 at RM_0. … | B10d | SOURCES_ORDER_CANON.md Part B |
| N-140 | canon line | THM310 constants: δ_* := (1 − θ_310)²·¼ε_39 (final rate line; the (1 − θ_310)δ_0 branch is … | B10e | SOURCES_ORDER_CANON.md Part B |
| N-150 | canon line | δ_310 := (1 − θ_310 − λ)δ_* (RM-free); δ_WG := δ_310 − θ_L(RM_0) = min{δ_310 − θ_L, (1 − … | B10f | SOURCES_ORDER_CANON.md Part B |
| N-160 | canon line | Complex radii: b_1^{37} ≤ min{a_1^c(θ_37), k_av^c}; b_G^c := b_G^{39}(1 + … | B10g | SOURCES_ORDER_CANON.md Part B |
| N-170 | canon line | (Moved here in G, after N-160; it uses δ_WG, c_0, B_WG of N-150.) θ_WG = ½ (fixed in N-060) … | B5a | SOURCES_ORDER_CANON.md Part B |
| N-180 | canon line | (Restated in G; position after N-170.) R, M_min(d, L): R > 18dL (c_R = 18; THM37_FULL 3.2a … | B10 | SOURCES_ORDER_CANON.md Part B |
| N-190 | canon line | Walk constants at M_min: c_−, b_G, c_G, δ_G (from (1 − θ_WG)δ_WG, N-180), c_X, Σ(·), c_1(·) … | B11 | SOURCES_ORDER_CANON.md Part B |
| N-200 | canon line | ε = min{½δ_G, c_−/(8c_+Σ(½δ_G))}; c_1(½ε), Σ(½ε), Σ(¼δ_G), K_F, K_W, C_W, B_W, c_W; thresholds … | B12 | SOURCES_ORDER_CANON.md Part B |
| N-210 | canon line | δ_1 := ½ε (WG common rate); a_*′ := min{a_*, K_V^{−1}(4C_𝒟^{H1}c_1)^{−10} … | B12a | SOURCES_ORDER_CANON.md Part B |
| N-220 | canon line | B_1 and the tree rate (1 − θ_WG)δ_1 of L-317 (Theorem WG-G1) (valid under Mα_0 ≤ a_**). — … | B12b | SOURCES_ORDER_CANON.md Part B |
| N-230 | canon line | C_{G1} (the Schur constant of A1_KERNEL §9, A.4 item 6); a_{−,1} := 1/(2C_{G1}); c_{−,1} ≥ … | B12c | SOURCES_ORDER_CANON.md Part B |
| N-240 | canon line | WC real constants: B_A, δ_A, ε_WC = min{½δ_A, γ_exp/(8B_AΣ(½δ_A))}, Γ_1 = 2B_AS(δ_A) … | B13 | SOURCES_ORDER_CANON.md Part B |
| N-250 | canon line | Level constants (Part A.4, all M-free and α-free): c_+⁗, Γ_4, k_3, ε_3; B_1‴, δ_1‴, Γ_3, k_2 … | B14 | SOURCES_ORDER_CANON.md Part B |
| N-260 | canon line | 𝒲_S tree constants: C′_𝒟^f := C′_𝒟 enlarged by the finite W_S tag set (a (d, L) multiple) … | B14a | SOURCES_ORDER_CANON.md Part B |
| N-265 | canon line | M_1^{(102)} = L^{m_{102}}: CMP 102 big-block size (first M_1 line of the split; added 2026-10-28) … | — | SOURCES_ORDER_CANON.md Part B |
| N-270 | canon line | M_1 = L^{m_1}: M_1 ≥ M_W; ≥ M_W^c at each level (the WC level thresholds of N-250); ≥ … | B15 | SOURCES_ORDER_CANON.md Part B |
| N-280 | canon line | M_2 := L²M_1 (CMP 119 p. 245). Determined by N-270; M_2 ≥ 1/δ_[15] holds by N-270 H-258 (S4). … | B16 | SOURCES_ORDER_CANON.md Part B |
| N-290 | canon line | G3_GGAMMA constants K_½, Ḡ (G_Γ ≤ Ḡ, M-free [I, G3_GGAMMA 4.1 unverified]), Λ̄_0, W. This slot … | B17 | SOURCES_ORDER_CANON.md Part B |
| N-300 | canon line | Sourced-covariance constants: W^f (label count at rate ε″/32), Γ̄_1^f := 2C_𝒟B_A″S(δ_A″ − ρ_f) … | B17a | SOURCES_ORDER_CANON.md Part B |
| N-310 | canon line | M = L^m: M ≥ M_req: 32 lower bounds = the 29 entries of HIGHER_M1 B3 (they include the K-025 … | B18 | SOURCES_ORDER_CANON.md Part B |
| N-320 | canon line | M_0 (CMP 122 I (1.101) cutoff constant; free; uses nothing, so any slot before N-470 works) … | B18a | SOURCES_ORDER_CANON.md Part B |
| N-330 | canon line | C_1^{FX} := max(1, C_c): the budget constant of CMP 122 II (1.80), (1.81), (1.88) (FX_R2 route … | B18b | SOURCES_ORDER_CANON.md Part B |
| N-340 | canon line | ρ_0 ≤ min{0.1, (LM)^{−2}(0.45a/(16n))^{1/2}}. Any slot after N-310. — SOURCES_HIGHER_M1 R-006 … | B19 | SOURCES_ORDER_CANON.md Part B |
| N-350 | canon line | Complex domains (A.6): α‴ = (j‴, k_3a_1), j‴ = min(a_**/M, c″M^{−1}M_1^{−12}); α″ ≤ k_2·(mixed … | B20 | SOURCES_ORDER_CANON.md Part B |
| N-360 | canon line | α_*: α_0 + α_1 ≤ α_*, needs α ≪ α′. — WC_FULL 6.9; S2_G1_V7 B1.4. | B21 | SOURCES_ORDER_CANON.md Part B |
| N-370 | canon line | Fixed-layer α-chain, after α′ (R5): β, α′ → α_1 → α_0 → α_3 → α_2 (α_4, γ_2, α_6, Latin a_1). … | B22 | SOURCES_ORDER_CANON.md Part B |
| N-380 | canon line | ε_0^{109} (CMP 109 real-background plaquette constant) H-064 (A18-2): ε_0^{109} ≤ α_0/(2B_3) … | B22a | SOURCES_ORDER_CANON.md Part B |
| N-390 | canon line | α_5 (composite, not free); (Hα) (α_5 + G_Γ²δ_S)Λ_0 ≤ ½ holds by N-310 and N-370. — K-026 … | B23 | SOURCES_ORDER_CANON.md Part B |
| N-400 | canon line | ε_1: upper bounds via κ_1, B_0, C_i^{116}, α_2, α_4, Latin a_1, M^q, E_0, L; ε_1M^q ≤ 1. — … | B24 | SOURCES_ORDER_CANON.md Part B |
| N-410 | canon line | r (= r_0^{exp}; r ≥ 2; H-261 needs r > 1), ν_I → p_0 with p_0 > (d + 5)r + ν_I + 4 → p_1 → … | B25 | SOURCES_ORDER_CANON.md Part B |
| N-420 | canon line | A_1: γ_0A_1² ≥ 8 + 4 log F (F fixed earlier [I: IEPS_VERIFY §21]). (R1: A_1 → A_0.) | B26 | SOURCES_ORDER_CANON.md Part B |
| N-430 | canon line | A_0: ≥ 2 (A_0 ≥ n, Cauchy); ≥ k/(2θ_LF), where θ_LF is the fraction of the large-field factor … | B27 | SOURCES_ORDER_CANON.md Part B |
| N-440 | canon line | C_0 ≥ c(B_3)A_0 (C3); C2; H-065 (A18-3) if q_0 = p_0: C_0 ≥ O(1)B_3B_5^{122}M^5A_0/(BC^{122}) … | B28 | SOURCES_ORDER_CANON.md Part B |
| N-450 | canon line | C_1: C4, B_3²O(1)Mα_0 < ½α_1 in LF form (C_1/C_0 lower, with q_1 ≥ q_0); C2. — … | B29 | SOURCES_ORDER_CANON.md Part B |
| N-460 | canon line | Scale-indexed rules (not constants): N_0 := least integer with L^{−N_0+1}MR_{k−N_0+1} = M, k_0 … | B29a | SOURCES_ORDER_CANON.md Part B |
| N-470 | canon line | γ: H-255, H-256, H-260–H-263; γ < e^{−q_i}; N-180, N-190; (L1), (L2); (1.68); p. 379; N3(d) … | B30 | SOURCES_ORDER_CANON.md Part B |
| N-480 | canon line | g ≤ min(γ/2, g_1). — K-005. | B31 | SOURCES_ORDER_CANON.md Part B |
| N-490 | canon line | r_0^{rad} = τ_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)); ρ_1 ≤ … | B32 | SOURCES_ORDER_CANON.md Part B |
| N-500 | canon line | K. — K-005. | B33 | SOURCES_ORDER_CANON.md Part B |

## Q- closure items: Balaban printed inputs, sweep findings, obstacles

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| Q-001 | closure item (Balaban printed input) | CMP 99 Thm 3.10: walk expansion of G_0, (3.107)–(3.108) | R1 | CLOSURE_PLAN.md Table 1 |
| Q-002 | closure item (Balaban printed input) | CMP 99 Thm 3.9: walk expansion of C′ = (Q′G′²Q′*)^{−1}, (3.98)–(3.99) | R2 | CLOSURE_PLAN.md Table 1 |
| Q-003 | closure item (Balaban printed input) | CMP 99 Thm 3.7 + Cor. 3.8: walk expansion of G′, (3.90), (3.94) | R3 | CLOSURE_PLAN.md Table 1 |
| Q-004 | closure item (Balaban printed input) | CMP 95 Prop. 1.2; CMP 96 Prop. 2.2 (U = 1 templates of Q-003) | R4, T37-R2, T37-R3 | CLOSURE_PLAN.md Table 1 |
| Q-005 | closure item (Balaban printed input) | CMP 96 Lemma 2.1: c_1(κ) under (2.59) | R5, T37-R1, T39-R1, T310-R4 | CLOSURE_PLAN.md Table 1 |
| Q-006 | closure item (Balaban printed input) | CMP 96 Lemma 2.4 (free block lower bound) | R6 | CLOSURE_PLAN.md Table 1 |
| Q-007 | closure item (Balaban printed input) | CMP 99 Thm 3.4: G′, C′, R, G analytic for α_1 ≤ a_1, "satisfy all the inequalities of Thms … | R7 | CLOSURE_PLAN.md Table 1 |
| Q-008 | closure item (Balaban printed input) | CMP 99 Thms 3.1, 3.3 (bounds on G′, G_0, G) | R8 | CLOSURE_PLAN.md Table 1 |
| Q-009 | closure item (Balaban printed input) | CMP 99 Thms 3.11–3.12 (G_1 > 0; Thm 3.3 for G_1 via (3.138)) | R9 | CLOSURE_PLAN.md Table 1 |
| Q-010 | closure item (Balaban printed input) | CMP 99 p. 422 (3.132) and (3.133): "We will not repeat these considerations" | R10 | CLOSURE_PLAN.md Table 1 |
| Q-011 | closure item (Balaban printed input) | CMP 99 p. 422 "Theorem 3.10 holds also because we replace each operator in (3.130) by its … | R11 | CLOSURE_PLAN.md Table 1 |
| Q-012 | closure item (Balaban printed input) | CMP 99 Thm 3.15, (3.185)–(3.187); Ğ_2 p. 432 | R12 | CLOSURE_PLAN.md Table 1 |
| Q-013 | closure item (Balaban printed input) | CMP 99 (3.134)–(3.137): Δ^{(2)} form and local bound (R-Δ2) | R13 | CLOSURE_PLAN.md Table 1 |
| Q-014 | closure item (Balaban printed input) | CMP 99 (3.10) + (3.35): R-Δ′ (relative bound of Δ′) | R14 | CLOSURE_PLAN.md Table 1 |
| Q-015 | closure item (Balaban printed input) | CMP 98 (139) one step; (124)–(125), (139)–(146), Prop. 2 | R15 | CLOSURE_PLAN.md Table 1 |
| Q-016 | closure item (Balaban printed input) | CMP 98 / CMP 96: Q_j straight-line form (CMP 95 (1.11)/(1.18), CMP 96 (2.7), (2.35)) = H-136 … | R16 | CLOSURE_PLAN.md Table 1 |
| Q-017 | closure item (Balaban printed input) | CMP 99-reg Prop. 6 (regular class from the plaquette class) with Thms 2, 4 | R17 | CLOSURE_PLAN.md Table 1 |
| Q-018 | closure item (Balaban printed input) | CMP 99 p. 428: "we can prove it for C*Δ_kC with an arbitrary U" (R-004) and "uniform … | R18 | CLOSURE_PLAN.md Table 1 |
| Q-019 | closure item (Balaban printed input) | CMP 99 p. 428 R5: A_x(y) = T(y), pointer to [4] (2.154)–(2.155) | R19 | CLOSURE_PLAN.md Table 1 |
| Q-020 | closure item (Balaban printed input) | CMP 102 Thm 1 (9)–(10): minimizers for minimal configurations; B_3 = B_3(d, L) | R20 | CLOSURE_PLAN.md Table 1 |
| Q-021 | closure item (Balaban printed input) | CMP 102 Props. 3–4 (proved; use N1 = (3.132)) | R21 | CLOSURE_PLAN.md Table 1 |
| Q-022 | closure item (Balaban printed input) | CMP 102 Prop. 6 ((U), uniqueness) | R22 | CLOSURE_PLAN.md Table 1 |
| Q-023 | closure item (Balaban printed input) | CMP 102 p. 308 (189): "We do not perform these calculations here" | R23 | CLOSURE_PLAN.md Table 1 |
| Q-024 | closure item (Balaban printed input) | CMP 102 Prop. 9 p. 309: (190) restated; analyticity of 𝓗 in B | R24 | CLOSURE_PLAN.md Table 1 |
| Q-025 | closure item (Balaban printed input) | CMP 102 pp. 271–272: [16] determinant expansion | R25 | CLOSURE_PLAN.md Table 1 |
| Q-026 | closure item (Balaban printed input) | CMP 109 p. 254: "all results of the paper [12] are valid for it. The proofs are in most cases … | R26 | CLOSURE_PLAN.md Table 1 |
| Q-027 | closure item (Balaban printed input) | CMP 109 p. 263 (1.18) sup bound; "absolute constants" | R27 | CLOSURE_PLAN.md Table 1 |
| Q-028 | closure item (Balaban printed input) | CMP 109 pp. 263–264: R-006 inductive assumption (smoothness of β, Z^d limit) | R28 | CLOSURE_PLAN.md Table 1 |
| Q-029 | closure item (Balaban printed input) | CMP 109 Sects. 3–5 bounds: (3.32), Lemma 4, (3.54), (4.3)–(4.5), (4.14)–(4.37), (5.42)–(5.44) … | R29 | CLOSURE_PLAN.md Table 1 |
| Q-030 | closure item (Balaban printed input) | CMP 109 p. 280: induction closure "much bigger than E_0" (R-014) | R30 | CLOSURE_PLAN.md Table 1 |
| Q-031 | closure item (Balaban printed input) | CMP 116 pp. 8–9: (1.24) "bounded similarly", (1.29) "other terms" (R-010) | R31 | CLOSURE_PLAN.md Table 1 |
| Q-032 | closure item (Balaban printed input) | CMP 116 Lemma 1 (1.34)–(1.36), absolute C_1, C_2, q | R32 | CLOSURE_PLAN.md Table 1 |
| Q-033 | closure item (Balaban printed input) | CMP 116 (2.15)–(2.25) chain; (2.16) for R_1 FULL, "R_2, R_3 satisfying (2.16)" ASSERT | R33 | CLOSURE_PLAN.md Table 1 |
| Q-034 | closure item (Balaban printed input) | CMP 116 p. 15: complex case "handled by a perturbative argument" | R34 | CLOSURE_PLAN.md Table 1 |
| Q-035 | closure item (Balaban printed input) | CMP 116 p. 13 (2.7): C*Δ_kC series "if γ_1 is sufficiently large"; walk expansion "discussed … | R35 | CLOSURE_PLAN.md Table 1 |
| Q-036 | closure item (Balaban printed input) | CMP 116 p. 3: walk domains on M_1-cubes "instead of M"; s-rule | R36 | CLOSURE_PLAN.md Table 1 |
| Q-037 | closure item (Balaban printed input) | CMP 116 p. 2: "in exactly the same way" (K-034, other term classes) | R37 | CLOSURE_PLAN.md Table 1 |
| Q-038 | closure item (Balaban printed input) | CMP 116 §2 printed conditions (23 + 4), Lemma 2, (1.36), (2.5)–(2.6) | R38 | CLOSURE_PLAN.md Table 1 |
| Q-039 | closure item (Balaban printed input) | CMP 116 (2.27) tree bound; (2.33)–(2.41) | R39 | CLOSURE_PLAN.md Table 1 |
| Q-040 | closure item (Balaban printed input) | CMP 119 (2.6)–(2.9) and p. 256 "similar inequalities hold for other constants" (R-012) | R40 | CLOSURE_PLAN.md Table 1 |
| Q-041 | closure item (Balaban printed input) | CMP 119 p. 278: small-field terms "do not depend on Λ_{k+1}" (R-015) | R41 | CLOSURE_PLAN.md Table 1 |
| Q-042 | closure item (Balaban printed input) | CMP 119 Sect. 3 (T-step): 10δ printed; ≤ 3δ unprinted; R1 count sketch; R3 the H′(Z_0) … | R42 | CLOSURE_PLAN.md Table 1 |
| Q-043 | closure item (Balaban printed input) | CMP 122 I Prop. 1 (1.78), (1.80); Sect. 1 thresholds | R43 | CLOSURE_PLAN.md Table 1 |
| Q-044 | closure item (Balaban printed input) | CMP 122 II p. 383 block bound (1.77)–(1.78) (p_1 misprint) and (1.79)–(1.98) R-step | R44 | CLOSURE_PLAN.md Table 1 |
| Q-045 | closure item (Balaban printed input) | CMP 122 II Theorem 1 (R-013) | R45 | CLOSURE_PLAN.md Table 1 |
| Q-046 | closure item (Balaban printed input) | [14] construction U_j(□_0, ·) (CMP 109 p. 276 "depending on U restricted to the cube □_0") | R46 | CLOSURE_PLAN.md Table 1 |
| Q-047 | closure item (sweep finding) | gauge and Euclidean covariance of the step-k covariance (SRULE §6) | NEW-1 | SOURCES_M1_SWEEP.md / SOURCES_SRULE_CONVENTION.md §6 |
| Q-048 | closure item (sweep finding) | large-field Gaussian of CMP 122 I (1.25), operator Δ^{(j)}_{Λ^c} (SRULE §6) | NEW-2 | SOURCES_M1_SWEEP.md / SOURCES_SRULE_CONVENTION.md §6 |
| Q-049 | closure item (sweep finding) | walk expansions in the multiscale Ω-geometry; = ledger A27 (R-027) content ; ledger row R… | NEW-3 | SOURCES_M1_SWEEP.md / SOURCES_SRULE_CONVENTION.md §6 |
| Q-050 | closure item (sweep finding) | CMP 122 II (1.7)–(1.13), (1.21), (1.40), (1.77) use (SOURCES_D3_NEW4) | NEW-4 | SOURCES_M1_SWEEP.md / SOURCES_SRULE_CONVENTION.md §6 |
| Q-051 | closure item (Balaban printed input, theorem-file tag) | Local input (3.3.1): CMP 99 Cor. 3.6 ⇐ Cor. 3.5 ⇐ (3.60)–(3.64) + CMP 96 (U = 1) | T37-R4 | THM37_FULL.md |
| Q-052 | closure item (Balaban printed input, theorem-file tag) | (3.24) form of Q′*aQ′ and averaging form of Q′_n with block transports / CMP 99 | T37-R5 | THM37_FULL.md |
| Q-053 | closure item (Balaban printed input, theorem-file tag) | Local-sequence construction {Ω_n(□)}, Ω_0(□) ⊂ □̃^5, R_0, M_0 / CMP 99 p. 408 [V | T37-R6 | THM37_FULL.md |
| Q-054 | closure item (Balaban printed input, theorem-file tag) | (V1) identity (3.60)/(3.62) / CMP 99 p. 402 [V] / R-full (algebra) / 8.3 / | T37-R7 | THM37_FULL.md |
| Q-055 | closure item (Balaban printed input, theorem-file tag) | (V2) bound (3.61) on V′(A), local, analytic for α_1 ≤ a_V / CMP 99 pp. 400–402 [ | T37-R8 | THM37_FULL.md |
| Q-056 | closure item (Balaban printed input, theorem-file tag) | (V3) transport bounds (U′U)(Γ)U(Γ)^{−1} = 1 + O(α_1), (3.58) / CMP 99 pp. 401–40 | T37-R9 | THM37_FULL.md |
| Q-057 | closure item (Balaban printed input, theorem-file tag) | (H-PU) cover 𝒟 and partition of unity Σh_□² = 1 / CMP 96 (2.36), CMP 99 p. 408 [ | T37-R10 | THM37_FULL.md |
| Q-058 | closure item (Balaban printed input, theorem-file tag) | [R-sketch: CMP 99 Cor. 3.6, p. 408, from Cor. 3.5, Thm 3.4 (3.84)–(3.86), and CM | T310-R1 | THM310_FULL.md |
| Q-059 | closure item (obstacle) | (1.89) improved bound with −κ_1d_k(X); closed as FX_O1 Lemma | FX O1 | SOURCES_FX.md |
| Q-060 | closure item (obstacle) | (1.100) denominator = bare Wilson integral (FX_O23) | FX O2 | SOURCES_FX.md |
| Q-061 | closure item (obstacle) | moved d_Sζ_iP_p term (FX_O23; carried in B18) | FX O3 | SOURCES_FX.md |
| Q-062 | closure item (obstacle) | optional R-step form (1.103)–(1.104); avoided by C13 | FX O4 | SOURCES_FX.md |

## H- hypotheses, conditions, readings [I]

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| H-001 | reading [I] | H-303 / WG cube geometry (G): cover 𝒟, cores, h_□, □⁺, C_𝒟, C_ov; set form of H-086 (B2-T) … | I-01 | CLOSURE_PLAN.md Table 2 |
| H-002 | reading [I] | H-304 H-002: Lipschitz bound c_h/M_1 of h_□ across scale boundaries | I-02, A1_WALK_FULL O2 | CLOSURE_PLAN.md Table 2 |
| H-003 | reading [I] | H-305 / WG H-213 (I7) / WC I2 / R-005 N2: Q, Q*, Q′, D, R_b, C̃^{(2)}, K_b, C_j local with … | I-03 | CLOSURE_PLAN.md Table 2 |
| H-004 | reading [I] | H-307 / canon N-090: κ_1 independent of M | I-04 | CLOSURE_PLAN.md Table 2 |
| H-005 | reading [I] | WG C0: scale bookkeeping (L^jη)^{±} carried by m and S | I-05 | CLOSURE_PLAN.md Table 2 |
| H-006 | reading [I] | WG ι-domain assignment (2.5) | I-06 | CLOSURE_PLAN.md Table 2 |
| H-007 | reading [I] | M_1-cover [I/R]: (3.35)–(3.36) at scale M give Thms 3.7–3.10 on M_1-cubes | I-07 | CLOSURE_PLAN.md Table 2 |
| H-008 | reading [I] | F4: Σ and θ-dependent constants monotone in θ (so M_min values stay valid) | I-08 | CLOSURE_PLAN.md Table 2 |
| H-009 | reading [I] | WC I1 / R-008 I1: (2.11) = (3.156) + G^{(2)} term, term by term (D̃^{(2)} = hC̃^{(2)}) | I-09 | CLOSURE_PLAN.md Table 2 |
| H-010 | reading [I] | WC I3 / R-008 I3 / R-018 I3: Q̃ (CMP 109) = Q_1(U_1) (CMP 99); blocks of (0.14) = blocks of … | I-10 | CLOSURE_PLAN.md Table 2 |
| H-011 | reading [I] | WC I4 / R-004 R2: Q(U) = Q_free(1 + O(α_0)) uniform in k | I-11 | CLOSURE_PLAN.md Table 2 |
| H-012 | reading [I] | WC I5 / H-306: WG-1 J-junction factor needs α_0 ≤ c″M^{−1}M_1^{−12} | I-12 | CLOSURE_PLAN.md Table 2 |
| H-013 | reading [I] | WC I6: dist(Z_0, Λ_k^c) > RM | I-13 | CLOSURE_PLAN.md Table 2 |
| H-014 | reading [I] | WC I7: tilde convention of CMP 99 used on CMP 116 p. 13 | I-14 | CLOSURE_PLAN.md Table 2 |
| H-015 | reading [I] | WC I8: smoothness/analyticity of the mean M near 1; Karcher property | I-15 | CLOSURE_PLAN.md Table 2 |
| H-016 | reading [I] | WC I9 / R-018 [I-J]: J local, | I-16 | CLOSURE_PLAN.md Table 2 |
| H-017 | reading [I] | R-008 C2 G_1 step: c_−(G_1) ≥ c_−(G)(1 − O(Mα_0)) "from (3.137) via Schur" | I-17 | CLOSURE_PLAN.md Table 2 |
| H-018 | reading [I] | S2_G1 I-conv: δ/δA is the gradient for ⟨·,·⟩ of (3.3); Δ^{(2)} "determined by" a form = … | I-18 | CLOSURE_PLAN.md Table 2 |
| H-019 | reading [I] | R-004 R4 / A3-R4: c_J′ = c(d, L)Mα_0 for the J-term of (3.156) | I-19 | CLOSURE_PLAN.md Table 2 |
| H-020 | reading [I] | complex s, complex U clause of R-008 (P-sketch) | I-20 | CLOSURE_PLAN.md Table 2 |
| H-021 | reading [I] | R-009 I-a: operators defined by quadratic forms are their symmetric representatives | I-21 | CLOSURE_PLAN.md Table 2 |
| H-022 | reading [I] | R-009 I-b / s-rule reading: C^{(k)}(Z_0, σ) is the σ-weighted walk sum of A_Z^{−1}; "domains … | I-22 | CLOSURE_PLAN.md Table 2 |
| H-023 | reading [I] | R-009 I-c: geometry (G1)–(G3): dist(σ_0, Z_0) ≥ M, domain diameters ≤ c′M_1, cube count | I-23 | CLOSURE_PLAN.md Table 2 |
| H-024 | reading [I] | R-009 I-d: walk count finite at rate ε″/8 | I-24 | CLOSURE_PLAN.md Table 2 |
| H-025 | reading [I] | R-009 I-e: "Re C^{−1}" in (2.15) is the symmetric real part; dμ_C for non-symmetric C by the … | I-25 | CLOSURE_PLAN.md Table 2 |
| H-026 | reading [I] | G3 (iii): (2.15)–(2.25) read as pointwise exponent bounds; (vii) bounds hold on the closed … | I-26 | CLOSURE_PLAN.md Table 2 |
| H-027 | reading [I] | G_Γ ≤ Ḡ uniform in M (K-026 closure) | I-27 | CLOSURE_PLAN.md Table 2 |
| H-028 | reading [I] | R-011 R2: R- and C-terms obey (1.29) "by mechanism" | I-28 | CLOSURE_PLAN.md Table 2 |
| H-029 | reading [I] | R-011 R4: (4.5) tail constant from (4.3)–(4.4) | I-29 | CLOSURE_PLAN.md Table 2 |
| H-030 | reading [I] | R-017 reading R1: " | I-30 | CLOSURE_PLAN.md Table 2 |
| H-031 | reading [I] | R-019 (a): (189) holds at complex B | I-31 | CLOSURE_PLAN.md Table 2 |
| H-032 | reading [I] | R-019 (b): (73) complex clause | I-32 | CLOSURE_PLAN.md Table 2 |
| H-033 | reading [I] | R-019 (c): the (172) ball | I-33 | CLOSURE_PLAN.md Table 2 |
| H-034 | reading [I] | SOURCES_A17_A19 4.1(f): propagator lemmas are B-independent | I-34 | CLOSURE_PLAN.md Table 2 |
| H-035 | reading [I] | R-016 H-035 (M1): the H-281–H-291 list is complete (every property of C^{(k)} that CMP 116 … | I-35, (M1) [A16 list completeness], (M1) [split] | CLOSURE_PLAN.md Table 2 |
| H-036 | reading [I] | R-016 H-166 (S_H): scale normalization of D_S, J_S in the k-scale norm | I-36 | CLOSURE_PLAN.md Table 2 |
| H-037 | reading [I] | R-016 Ω-setting volume convention (CMP 122); widened in round 11 to Q-049 (multiscale … | I-37 | CLOSURE_PLAN.md Table 2 |
| H-038 | reading [I] | R-018: U_{k,Z} obeys CMP 102 Thm 1; B and B_5 fixed numbers; R_1 < L | I-38 | CLOSURE_PLAN.md Table 2 |
| H-039 | reading [I] | MA2 (C2): averaging map m analytic and local, so V′ enters with c_m | I-39 | CLOSURE_PLAN.md Table 2 |
| H-040 | reading [I] | N6: CMP 116 step uses only g_k and sup E_0 (text-layer grep) | I-40 | CLOSURE_PLAN.md Table 2 |
| H-041 | reading [I] | N8 (i): "absolute" = independent of X and j, applied to C_1, C_2, q, (1.39), unindexed O(1) | I-41 | CLOSURE_PLAN.md Table 2 |
| H-042 | reading [I] | N8 (ii): C_Π j-free (localization geometry same at every j after rescaling) | I-42 | CLOSURE_PLAN.md Table 2 |
| H-043 | reading [I] | R-018 k-uniformity of CMP 102 constants C_2, C_4, B_0 | I-43 | CLOSURE_PLAN.md Table 2 |
| H-044 | reading [I] | K-033 (Cube): U_j(□_0, ·) of [14] uses only data on □_0 | I-44 | CLOSURE_PLAN.md Table 2 |
| H-045 | reading [I] | K-037: "H_j with free boundary conditions" = the Z^4 operator | I-45 | CLOSURE_PLAN.md Table 2 |
| H-046 | reading [I] | R-044 H-091 (Conv_Λ), Λ_j nesting | I-46 | CLOSURE_PLAN.md Table 2 |
| H-047 | reading [I] | R-031 causality: step k+1 uses only g_0, …, g_k | I-47 | CLOSURE_PLAN.md Table 2 |
| H-048 | reading [I] | R-028: KAPPA (1.1) b_{t,m} = §3.1 Moyal coefficients at σ = 0 | I-48 | CLOSURE_PLAN.md Table 2 |
| H-049 | reading [I] | R-027 Step C gauge-fixing part | I-49 | CLOSURE_PLAN.md Table 2 |
| H-050 | reading [I] | R-041 (I-ε): unprinted α_2–α_4 (γ_2) scaling; q_0 > p_0 vs q_0 = p_0 | I-50 | CLOSURE_PLAN.md Table 2 |
| H-051 | reading [I] | R-041 H-133 (I-V0): H-130 (I-lin), "Haar" | I-51 | CLOSURE_PLAN.md Table 2 |
| H-052 | reading [I] | K-028: CMP 102 Thm 1 (9) "β_0 = 1" is a misprint | I-52 | CLOSURE_PLAN.md Table 2 |
| H-053 | reading [I] | K-035: M_1 not checked in K-035 (Conv) | I-53 | CLOSURE_PLAN.md Table 2 |
| H-054 | reading [I] | IEPS F fixed earlier (canon N-420) | I-54 | CLOSURE_PLAN.md Table 2 |
| H-055 | reading [I] | R-039: small-field analogue of CMP 122 (1.73) assumed; L-285 (Lemma T) transfer | I-55 | CLOSURE_PLAN.md Table 2 |
| H-056 | reading [I] | R-037 large field: coarea Jacobian on non-round level sets | I-56 | CLOSURE_PLAN.md Table 2 |
| H-057 | condition | (C): the (C) condition (coercivity Re⟨u, N̂u⟩ ≥ c_−‖u‖²) | (C) | CLOSURE_PLAN.md §4 (Table 4) |
| H-058 | hypothesis/condition label | (A15-loc) | (A15-loc) | SOURCES_A15_WHOLE.md |
| H-059 | hypothesis/condition label | (A16-a) | (A16-a) | SOURCES_A16_REPLACE.md |
| H-060 | hypothesis/condition label | (A16-a^T) | (A16-a^T) | SOURCES_A16_REPLACE2.md |
| H-061 | hypothesis/condition label | (A16-b) | (A16-b) | SOURCES_A16_REPLACE.md |
| H-062 | hypothesis/condition label | (A16-b^T) | (A16-b^T) | SOURCES_A16_REPLACE2.md |
| H-063 | hypothesis/condition label | (A18-1) | (A18-1) | SOURCES_A18_REGULAR.md |
| H-064 | hypothesis/condition label | (A18-2) | (A18-2) | SOURCES_A18_REGULAR.md |
| H-065 | hypothesis/condition label | (A18-3) | (A18-3) | SOURCES_ORDER_CANON.md |
| H-066 | hypothesis/condition label | (A18-4) | (A18-4) | SOURCES_A18_REGULAR.md |
| H-067 | hypothesis/condition label | (A18-Q) | (A18-Q) | SOURCES_A18_REGULAR.md |
| H-068 | hypothesis/condition label | (A3-R2) | (A3-R2) | SOURCES_A18_REGULAR.md |
| H-069 | hypothesis/condition label | (A3-R4) | (A3-R4) | WC_FULL.md |
| H-070 | hypothesis/condition label | (AL) | (AL) | THM39_FULL.md |
| H-071 | hypothesis/condition label | (AL-c) | (AL-c) | THM39_FULL.md |
| H-072 | hypothesis/condition label | (AL′) | (AL′) | THM39_FULL.md |
| H-073 | hypothesis/condition label | (AL′-ax) | (AL′-ax) | THM39_FULL.md |
| H-074 | hypothesis/condition label | (B-C) | (B-C) | ASSEMBLY.md |
| H-075 | hypothesis/condition label | (B-geo-1) | (B-geo-1) | LEMMAS.md |
| H-076 | hypothesis/condition label | (B-geo-2) | (B-geo-2) | LEMMAS.md |
| H-077 | hypothesis/condition label | (B-geo-3) | (B-geo-3) | LEMMAS.md |
| H-078 | hypothesis/condition label | (B-hol) | (B-hol) | SOURCES_HBETA_N3.md |
| H-079 | hypothesis/condition label | (B-i) | (B-i) | INFINITE_VOLUME_IV12.md |
| H-080 | hypothesis/condition label | (B-ii) | (B-ii) | INFINITE_VOLUME_IV12.md |
| H-081 | hypothesis/condition label | (B-NT) | (B-NT) | ASSEMBLY.md |
| H-082 | hypothesis/condition label | (B-REG) | (B-REG) | ASSEMBLY.md |
| H-083 | hypothesis/condition label | (B-RP) | (B-RP) | ASSEMBLY.md |
| H-084 | hypothesis/condition label | (B-T2) | (B-T2) | ASSEMBLY.md |
| H-085 | hypothesis/condition label | (B-TI) | (B-TI) | ASSEMBLY.md |
| H-086 | hypothesis/condition label | (B2-T) | (B2-T) | A1_WALK_FULL.md |
| H-087 | hypothesis/condition label | (B3-T) | (B3-T) | A1_WALK_FULL.md |
| H-088 | hypothesis/condition label | (B8-c) | (B8-c) | SOURCES_A15_BDRY.md |
| H-089 | hypothesis/condition label | (C-tr) | (C-tr) | SOURCES_T2_B7_CLAMP.md |
| H-090 | hypothesis/condition label | (CG-b4) | (CG-b4) | INFINITE_VOLUME_ATTEMPT.md |
| H-091 | hypothesis/condition label | (Conv_Λ) | (Conv_Λ) | SOURCES_A15_BDRY.md |
| H-092 | hypothesis/condition label | (D2-form) | (D2-form) | SOURCES_A16_REPLACE2.md |
| H-093 | hypothesis/condition label | (D2-T) | (D2-T) | A1_WALK_FULL.md |
| H-094 | hypothesis/condition label | (DI-2) | (DI-2) | THM310_FULL.md |
| H-095 | hypothesis/condition label | (DI-3) | (DI-3) | THM310_FULL.md |
| H-096 | hypothesis/condition label | (E14-a) | (E14-a) | SOURCES.md |
| H-097 | hypothesis/condition label | (E14-b) | (E14-b) | SOURCES.md |
| H-098 | hypothesis/condition label | (E14-c) | (E14-c) | SOURCES_B21_E14C.md |
| H-099 | hypothesis/condition label | (E14-d) | (E14-d) | ASSEMBLY.md |
| H-100 | hypothesis/condition label | (E14-e) | (E14-e) | SOURCES_D4D5.md |
| H-101 | hypothesis/condition label | (E14-f) | (E14-f) | ASSEMBLY.md |
| H-102 | hypothesis/condition label | (E14-g) | (E14-g) | SOURCES.md |
| H-103 | hypothesis/condition label | (FI) | (FI) | SOURCES_SRULE_CONVENTION.md |
| H-104 | hypothesis/condition label | (FX-B∞) | (FX-B∞) | INFINITE_VOLUME_IV12.md |
| H-105 | hypothesis/condition label | (FX-D) | (FX-D) | SOURCES_FX_D.md |
| H-106 | hypothesis/condition label | (FX-V) | (FX-V) | INFINITE_VOLUME_FABLE.md |
| H-107 | hypothesis/condition label | (G-a) | (G-a) | SOURCES_T2_R2REM.md |
| H-108 | hypothesis/condition label | (G-b) | (G-b) | SOURCES_T2_R2REM.md |
| H-109 | hypothesis/condition label | (G-c) | (G-c) | SOURCES_T2_R2REM.md |
| H-110 | hypothesis/condition label | (G-cube) | (G-cube) | THM310_FULL.md |
| H-111 | hypothesis/condition label | (G-gain) | (G-gain) | SOURCES_SM.md |
| H-112 | hypothesis/condition label | (G-M1) | (G-M1), T37-I3 | THM37_FULL.md |
| H-113 | hypothesis/condition label | (G-ret) | (G-ret) | THM310_FULL.md |
| H-114 | hypothesis/condition label | (G-Z) | (G-Z) | THM310_FULL.md |
| H-115 | hypothesis/condition label | (H-PU) | (H-PU) | THM37_FULL.md |
| H-116 | hypothesis/condition label | (H-U) | (H-U), paper label def:HU (now def:H116) | ASSEMBLY.md |
| H-117 | hypothesis/condition label | (H-U∞) | (H-U∞) | INFINITE_VOLUME_ATTEMPT.md |
| H-118 | hypothesis/condition label | (H1-T) | (H1-T) | A1_WALK_FULL.md |
| H-119 | hypothesis/condition label | (H1_13) | (H1_13) | H1_ANALYTIC.md |
| H-120 | hypothesis/condition label | (H2-hist) | (H2-hist) | SOURCES_HHOL.md |
| H-121 | hypothesis/condition label | (H_E) | (H_E) | WC_FULL.md |
| H-122 | hypothesis/condition label | (H_M) | (H_M) | SOURCES_A8_POS.md |
| H-123 | hypothesis/condition label | (H_Q) | (H_Q) | SOURCES_QE_INV.md |
| H-124 | hypothesis/condition label | (H_η) | (H_η) | SOURCES_A16_REPLACE2.md |
| H-125 | hypothesis/condition label | (H_κ) | (H_κ) | SOURCES_ORDER_CANON.md |
| H-126 | hypothesis/condition label | (H_κ^f) | (H_κ^f) | SOURCES_A16_REPLACE2.md |
| H-127 | hypothesis/condition label | (I-D) | (I-D) | WG_FULL.md |
| H-128 | hypothesis/condition label | (I-geo) | (I-geo) | THM310_FULL.md |
| H-129 | hypothesis/condition label | (I-hist) | (I-hist) | SOURCES_MC_IV0.md |
| H-130 | hypothesis/condition label | (I-lin) | (I-lin) | SOURCES_MC_IV0.md |
| H-131 | hypothesis/condition label | (I-ord) | (I-ord) | SOURCES_T2_IEPS.md |
| H-132 | hypothesis/condition label | (I-Q) | (I-Q) | THM39_FULL.md |
| H-133 | hypothesis/condition label | (I-V0) | (I-V0) | SOURCES_MC_IV0.md |
| H-134 | hypothesis/condition label | (I-X) | (I-X) | SOURCES_MC.md |
| H-135 | hypothesis/condition label | (K-unif) | (K-unif) | SOURCES_T2_KUNIF.md |
| H-136 | hypothesis/condition label | (KE′) | (KE′) | SOURCES_QE_KE_HQ.md |
| H-137 | hypothesis/condition label | (L-LL) | (L-LL) | SOURCES_T2_LLL.md |
| H-138 | hypothesis/condition label | (L2-T) | (L2-T) | A1_WALK_FULL.md |
| H-139 | hypothesis/condition label | (L2_Λ) | (L2_Λ) | SOURCES_A15_BDRY.md |
| H-140 | hypothesis/condition label | (LL′) | (LL′) | THEOREM2_PROOF.md |
| H-141 | hypothesis/condition label | (Loc) | (Loc) | SOURCES_A15_LOC.md |
| H-142 | hypothesis/condition label | (Loc-f) | (Loc-f) | INFINITE_VOLUME_FABLE.md |
| H-143 | hypothesis/condition label | (M-A) | (M-A) | SOURCES_HHOL_LF_SPRIME.md |
| H-144 | hypothesis/condition label | (M-A′) | (M-A′) | SOURCES_MA2.md |
| H-145 | hypothesis/condition label | (M-B) | (M-B) | SOURCES_GGAIN_LF.md |
| H-146 | hypothesis/condition label | (M-C) | (M-C) | SOURCES_MB.md |
| H-147 | hypothesis/condition label | (M-D) | (M-D) | SOURCES_HHOL_LF.md |
| H-148 | hypothesis/condition label | (MPT) | (MPT) | SOURCES_T2_F_STEPB.md |
| H-149 | hypothesis/condition label | (N-a) | (N-a) | INFINITE_VOLUME_IV12.md |
| H-150 | hypothesis/condition label | (N-b) | (N-b) | INFINITE_VOLUME_IV12.md |
| H-151 | hypothesis/condition label | (N-c) | (N-c) | INFINITE_VOLUME_IV12.md |
| H-152 | hypothesis/condition label | (N-d) | (N-d) | INFINITE_VOLUME_IV12.md |
| H-153 | hypothesis/condition label | (N-e) | (N-e) | INFINITE_VOLUME_IV12.md |
| H-154 | hypothesis/condition label | (O1-M) | (O1-M) | SOURCES_FX_O1.md |
| H-155 | hypothesis/condition label | (P-low) | (P-low) | SOURCES_A11_CONST.md |
| H-156 | hypothesis/condition label | (P-up) | (P-up) | SOURCES_A11_CONST.md |
| H-157 | hypothesis/condition label | (R-a) | (R-a) | SOURCES_A23_TSTEP.md |
| H-158 | hypothesis/condition label | (R-b) | (R-b) | SOURCES_A23_TSTEP.md |
| H-159 | hypothesis/condition label | (S-A) | (S-A) | SOURCES.md |
| H-160 | hypothesis/condition label | (S-B) | (S-B) | SOURCES.md |
| H-161 | hypothesis/condition label | (S-C) | (S-C) | SOURCES_D1.md |
| H-162 | hypothesis/condition label | (S-D) | (S-D) | SOURCES_D2.md |
| H-163 | hypothesis/condition label | (S-E) | (S-E) | SOURCES.md |
| H-164 | hypothesis/condition label | (S-rule) | (S-rule) | SOURCES_A2_R2.md |
| H-165 | hypothesis/condition label | (S1-pt) | (S1-pt) | INFINITE_VOLUME_FABLE.md |
| H-166 | hypothesis/condition label | (S_H) | (S_H) | SOURCES_A16_REPLACE2.md |
| H-167 | hypothesis/condition label | (Sep) | (Sep) | SOURCES_MULTISCALE_OMEGA.md |
| H-168 | hypothesis/condition label | (S′) | (S′) | SOURCES_B21_S_PRIME.md |
| H-169 | hypothesis/condition label | (S′∞) | (S′∞) | INFINITE_VOLUME_FABLE.md |
| H-170 | hypothesis/condition label | (S∞) | (S∞) | INFINITE_VOLUME_FABLE.md |
| H-171 | hypothesis/condition label | (T2-a) | (T2-a) | THEOREM2_PROOF.md |
| H-172 | hypothesis/condition label | (T2-a1) | (T2-a1) | THEOREM2.md |
| H-173 | hypothesis/condition label | (T2-a1′) | (T2-a1′) | THEOREM2_PROOF.md |
| H-174 | hypothesis/condition label | (T2-a1″) | (T2-a1″) | R2_TELESCOPING.md |
| H-175 | hypothesis/condition label | (T2-a2) | (T2-a2) | THEOREM2.md |
| H-176 | hypothesis/condition label | (T2-b) | (T2-b) | THEOREM2.md |
| H-177 | hypothesis/condition label | (W-1) | (W-1) | U3_AW.md |
| H-178 | hypothesis/condition label | (W-2) | (W-2) | U3_AW.md |
| H-179 | hypothesis/condition label | (WG-1) | (WG-1) | WG_FULL.md |
| H-180 | hypothesis/condition label | (X-PU) | (X-PU) | THM37_FULL.md |
| H-181 | hypothesis/condition label — to review | (AW1) | (AW1) | SOURCES_A16_REPLACE2.md |
| H-182 | hypothesis/condition label — to review | (B10′) | (B10′) | SOURCES_D3R.md |
| H-183 | hypothesis/condition label — to review | (B11′) | (B11′) | SOURCES_D3R.md |
| H-184 | hypothesis/condition label — to review | (B2w) | (B2w) | THEOREM2_PROOF_v4.md |
| H-185 | hypothesis/condition label — to review | (C4″) | (C4″) | SOURCES_MC.md |
| H-186 | hypothesis/condition label — to review | (D1) | (D1) | A1_WALK_FULL.md |
| H-187 | hypothesis/condition label — to review | (D2) | (D2) | A1_WALK_FULL.md |
| H-188 | hypothesis/condition label — to review | (D3) | (D3) | U3_GAUSSIAN_RG.md |
| H-189 | hypothesis/condition label — to review | (F2′) | (F2′) | SOURCES_SM.md |
| H-190 | hypothesis/condition label — to review | (FX1) | (FX1) | INFINITE_VOLUME_FABLE.md |
| H-191 | hypothesis/condition label — to review | (FX2) | (FX2) | SOURCES_B21_E14C.md |
| H-192 | hypothesis/condition label — to review | (FX3) | (FX3) | SOURCES_D4D5.md |
| H-193 | hypothesis/condition label — to review | (FX4) | (FX4) | INFINITE_VOLUME_FABLE.md |
| H-194 | hypothesis/condition label — to review | (G1) | (G1) | BETA_FP_LEMMA43.md |
| H-195 | hypothesis/condition label — to review | (G1′) | (G1′) | SOURCES_HTHR2.md |
| H-196 | hypothesis/condition label — to review | (G2′) | (G2′) | SOURCES_HTHR2.md |
| H-197 | hypothesis/condition label — to review | (G3) | (G3) | SOURCES_MULTISCALE_OMEGA_SOURCED.md |
| H-198 | hypothesis/condition label — to review | (G3′) | (G3′) | SOURCES_HTHR2.md |
| H-199 | hypothesis/condition label — to review | (G4) | (G4) | SOURCES_A16_REPLACE.md |
| H-200 | hypothesis/condition label — to review | (GC1) | (GC1) | paper/assembly.tex |
| H-201 | hypothesis/condition label — to review | (GC3) | (GC3) | paper/appendix.tex |
| H-202 | hypothesis/condition label — to review | (H0) | (H0) | THEOREM2_PROOF_v4.md |
| H-203 | hypothesis/condition label — to review | (H0′) | (H0′) | THEOREM2_PROOF.md |
| H-204 | hypothesis/condition label — to review | (H1) | (H1) | A1_WALK_FULL.md |
| H-205 | hypothesis/condition label — to review | (H3) | (H3) | THEOREM2_PROOF.md |
| H-206 | hypothesis/condition label — to review | (H4) | (H4) | A1_WALK_FULL.md |
| H-207 | hypothesis/condition label — to review | (I1) | (I1) | SOURCES_T2_PI.md |
| H-208 | hypothesis/condition label — to review | (I2) | (I2) | SOURCES_T2_PI.md |
| H-209 | hypothesis/condition label — to review | (I3) | (I3) | WG_FULL.md |
| H-210 | hypothesis/condition label — to review | (I4) | (I4) | WG_FULL.md |
| H-211 | hypothesis/condition label — to review | (I5) | (I5) | WG_FULL.md |
| H-212 | hypothesis/condition label — to review | (I6) | (I6) | WG_FULL.md |
| H-213 | hypothesis/condition label — to review | (I7) | (I7) | WG_FULL.md |
| H-214 | hypothesis/condition label — to review | (I9) | (I9) | WC_FULL.md |
| H-215 | hypothesis/condition label — to review | (K1) | (K1) | SOURCES_T2_KAPPA2.md |
| H-216 | hypothesis/condition label — to review | (K1′) | (K1′) | SOURCES_ORDER_CANON.md |
| H-217 | hypothesis/condition label — to review | (K2) | (K2) | SOURCES_T2_KAPPA2.md |
| H-218 | hypothesis/condition label — to review | (K3) | (K3) | SOURCES_ORDER_CANON.md |
| H-219 | hypothesis/condition label — to review | (K4) | (K4) | SOURCES_T2_HMINUSC.md |
| H-220 | hypothesis/condition label — to review | (M2) | (M2) | SOURCES_MC.md |
| H-221 | hypothesis/condition label — to review | (M3) | (M3) | LEMMA_B4.md |
| H-222 | hypothesis/condition label — to review | (M4) | (M4) | SOURCES_HTHR.md |
| H-223 | hypothesis/condition label — to review | (M5) | (M5) | LEMMA_B4.md |
| H-224 | hypothesis/condition label — to review | (N1) | (N1) | SOURCES.md |
| H-225 | hypothesis/condition label — to review | (N2) | (N2) | SOURCES.md |
| H-226 | hypothesis/condition label — to review | (N3) | (N3) | A1_WALK_FULL.md |
| H-227 | hypothesis/condition label — to review | (N3′) | (N3′) | SOURCES_A1_WALK.md |
| H-228 | hypothesis/condition label — to review | (N4) | (N4) | SOURCES_A23_TSTEP.md |
| H-229 | hypothesis/condition label — to review | (N5) | (N5) | SOURCES_A4_D189.md |
| H-230 | hypothesis/condition label — to review | (N6) | (N6) | SOURCES.md |
| H-231 | hypothesis/condition label — to review | (N7) | (N7) | SOURCES.md |
| H-232 | hypothesis/condition label — to review | (P1) | (P1) | SOURCES_D2.md |
| H-233 | hypothesis/condition label — to review | (P13) | (P13) | SOURCES_HIGHER_M1.md |
| H-234 | hypothesis/condition label — to review | (P2) | (P2) | SOURCES_B15_M245.md |
| H-235 | hypothesis/condition label — to review | (P3) | (P3) | SOURCES_D3R.md |
| H-236 | hypothesis/condition label — to review | (P4) | (P4) | SOURCES_D3_NEW4.md |
| H-237 | hypothesis/condition label — to review | (P5) | (P5) | SOURCES_D3_NEW4.md |
| H-238 | hypothesis/condition label — to review | (P6) | (P6) | SOURCES_D3.md |
| H-239 | hypothesis/condition label — to review | (P7) | (P7) | SOURCES_D3.md |
| H-240 | hypothesis/condition label — to review | (P8) | (P8) | SOURCES_B20_LAMBDAJ.md |
| H-241 | hypothesis/condition label — to review | (R1′) | (R1′) | TRUST_LEDGER.md |
| H-242 | hypothesis/condition label — to review | (R3a) | (R3a) | SOURCES_A2_R2.md |
| H-243 | hypothesis/condition label — to review | (R3b) | (R3b) | SOURCES_A2_R2.md |
| H-244 | hypothesis/condition label — to review | (S1) | (S1) | BETA_FP_M.md |
| H-245 | hypothesis/condition label — to review | (S2) | (S2) | SOURCES_T2_S123.md |
| H-246 | hypothesis/condition label — to review | (S2c) | (S2c) | SOURCES_T2_S123.md |
| H-247 | hypothesis/condition label — to review | (S3) | (S3) | BETA_FP_M.md |
| H-248 | hypothesis/condition label — to review | (S3w) | (S3w) | SOURCES_B10_SWEEP.md |
| H-249 | hypothesis/condition label — to review | (S4) | (S4) | SOURCES_SRULE_CONVENTION.md |
| H-250 | hypothesis/condition label — to review | (S5) | (S5) | SOURCES_B20_W4R.md |
| H-251 | hypothesis/condition label — to review | (S6) | (S6) | SOURCES_SRULE_CONVENTION.md |
| H-252 | hypothesis/condition label — to review | (S7) | (S7) | SOURCES_SRULE_CONVENTION.md |
| H-253 | hypothesis/condition label — to review | (W1) | (W1) | ASSEMBLY_VERIFY.md |
| H-254 | hypothesis/condition label — to review | (Y2) | (Y2) | numerics/umk_beta1.py |
| H-255 | condition (list item) | (T1) γ²B′ ≤ (1 + β_0)² − 1 / implicit in (2.6) / upper bound on γ / af | A11_CONST S1 | SOURCES_A11_CONST.md |
| H-256 | condition (list item) | (T2) log γ^{−2} ≥ 2p, (T3) log γ^{−2} ≥ p/β_0, for p ∈ {p_0, p_1, q_0, | A11_CONST S2 | SOURCES_A11_CONST.md |
| H-257 | condition (list item) | (T4) β_0 ≤ 1/2 / no / upper bound on β_0 / β_0 first / admissible; Bal | A11_CONST S3 | SOURCES_A11_CONST.md |
| H-258 | condition (list item) | M_2 ≥ 1/δ (covers 2δM_2 ≥ 1 in (3.7) and δLM_2R_{k+1} ≥ R_k on p. 268) | A11_CONST S4 | SOURCES_A11_CONST.md |
| H-259 | condition (list item) | A_1/A_0 ≤ 1/(80B_3) ((3.7)); A_1/A_0 small ((3.9)) / "A_1/A_0 sufficie | A11_CONST S5 | SOURCES_A11_CONST.md |
| H-260 | condition (list item) | 30d²L²B_3²(1 + β_0)e^{−R_k} ≤ 1/20; O(1)44d²B_3²(1 + β_0)(A_0/A_1)e^{− | A11_CONST S6 | SOURCES_A11_CONST.md |
| H-261 | condition (list item) | e^{−R_k} ≤ g_k^N ("any positive power of g_k", p. 269) / asserted / up | A11_CONST S7 | SOURCES_A11_CONST.md |
| H-262 | condition (list item) | C(β, κ_0)γ⁴ < 1 for (2.46); γ^{−2} ≥ 2D′ / "κ_0 ≥ 7 and g sufficiently | A11_CONST S8 | SOURCES_A11_CONST.md |
| H-263 | condition (list item) | g_kO(p_0³(g_k)) ≤ B_0 (p. 278) / "multiplication by g_k yields small b | A11_CONST S9 | SOURCES_A11_CONST.md |
| H-264 | condition (list item) | 2(1 + β_0)L^{−2} + 4/10 < 1 ((3.8)) / implicit / condition on L / L od | A11_CONST S10 | SOURCES_A11_CONST.md |
| H-265 | condition (list item) | (1 + β_0)^{κ_0} is a fixed factor in the g^{κ_0} ratio / no / none (fi | A11_CONST S11 | SOURCES_A11_CONST.md |
| H-266 | condition (list item) | I p. 198 / after (1.94) / N ≤ O(1)(log g_k^{−2})^ν ≤ O(1)(1 + β_0)(log | A11_CONST S12 | SOURCES_A11_CONST.md |
| H-267 | condition (list item) | II p. 363 / after (1.31) / L^{−N} ≤ (log g_k^{−2})^{−ν}, i.e. N ≥ (ν/l | A11_CONST S13 | SOURCES_A11_CONST.md |
| H-268 | condition (list item) | II p. 361 / p. 384 / after (1.20) / (1.80) / N ≤ R_k (N = number of sc | A11_CONST S14 | SOURCES_A11_CONST.md |
| H-269 | condition (list item) | II p. 383 / condition / 2p_1 − (d + 5)r_0 > p_0 (fixed exponents; r_0 | A11_CONST S15 | SOURCES_A11_CONST.md |
| H-270 | condition (list item) | II p. 380 / log g_j^{−2}/Z_j/ ≤ R_j(…) / log g_j^{−2} ≤ R_j (single sc | A11_CONST S16 | SOURCES_A11_CONST.md |
| H-271 | condition (list item) | cross-scale: II p. 363 / step after (1.31); "(100MR_{h+1})^{d−1} … ≤ g_k²L^{−(d−1)N | A11_CONST X1 | SOURCES_A11_CONST.md |
| H-272 | condition (list item) | cross-scale: II p. 364 / after (1.32) / 1/g″_k(·)² − 1/g_k² = O(1)(k − j) on Ω″_j | A11_CONST X2 | SOURCES_A11_CONST.md |
| H-273 | condition (list item) | cross-scale: II p. 366 / top / 1/g″_k(·)² − 1/g_k² = O(N) ≤ O(R_k) (k − j ≤ N, plus | A11_CONST X3 | SOURCES_A11_CONST.md |
| H-274 | condition (list item) | cross-scale: I p. 185 / (1.38), (1.42) / ε_{j+1} ≤ (1 + β_0)ε_j / (b) (P-up), one s | A11_CONST X4 | SOURCES_A11_CONST.md |
| H-275 | condition (list item) | cross-scale: I p. 186 / (1.46) / δ′_j ≤ (1 + β_0)(1 + (j − i)^{1/2})(A_1/A_0)(p_1/p | A11_CONST X5 | SOURCES_A11_CONST.md |
| H-276 | condition (list item) | cross-scale: I p. 192 / middle / L^{N_0−1} = R_{k−N_0+1} ≤ (L + 1)(N_0 + 1)^{β_0}R_ | A11_CONST X6 | SOURCES_A11_CONST.md |
| H-277 | condition (list item) | cross-scale: II pp. 384–385 / (1.80)–(1.81) / R_n ≤ cR_j for j < n ≤ j + K (K ≤ n_0 | A11_CONST X7 | SOURCES_A11_CONST.md |
| H-278 | condition (list item) | cross-scale: II p. 368 / (1.47) / Σ_j … (1/g_k² + O(k − j))ε_j ≤ … ε_kN^{1+β_0}(1 + | A11_CONST X8 | SOURCES_A11_CONST.md |
| H-279 | condition (list item) | cross-scale: I p. 200 / after (1.98) / Σ L^{−(k−i)}R_i over i > k_0, giving exp(−4δ | A11_CONST X9 | SOURCES_A11_CONST.md |
| H-280 | condition (list item) | cross-scale: I p. 179 / definition of N_0 / N_0 := least integer with L^{−N_0+1}MR_ | A11_CONST X10 | SOURCES_A11_CONST.md |
| H-281 | condition (list item) | real positivity; Q2 walk/tree expansion with (L1)–(L2), rate, s-rule, | A16 Q1 | SOURCES_A16_REPLACE2.md |
| H-282 | condition (list item) | status: [P given §2 and WC(iii)]. | A16 Q2 | SOURCES_A16_REPLACE2.md |
| H-283 | condition (list item) | [P]. The local operators ∂ of CMP 109 (1.8) act on the first and last | A16 Q3 | SOURCES_A16_REPLACE2.md |
| H-284 | condition (list item) | [P]. Every T_Ω is analytic on 𝒰(α′) × S_r (2.4 and WC(iii)); the serie | A16 Q4 | SOURCES_A16_REPLACE2.md |
| H-285 | condition (list item) | [P]. ‖C_f(Z_0)‖ ≤ 4/γ_exp (complex), 4/(3γ_exp) (real). α_5‖C_f(Z_0, 0 | A16 Q5 | SOURCES_A16_REPLACE2.md |
| H-286 | condition (list item) | A16 covariance property | A16 Q6 | SOURCES_A16_REPLACE2.md |
| H-287 | condition (list item) | (C_f)^{1/2} = (A_Λ^f)^{−1/2} = Σ_ΩT_Ω^{½}, /T_Ω^{½}/ ≤ 8γ_exp^{−1/2}(q | A16 Q7 | SOURCES_A16_REPLACE2.md |
| H-288 | condition (list item) | A16 covariance property | A16 Q8 | SOURCES_A16_REPLACE2.md |
| H-289 | condition (list item) | [P]. CMP 116 (2.5) is completing the square for ⟨B, A_Λ^fB⟩ split into | A16 Q9 | SOURCES_A16_REPLACE2.md |
| H-290 | condition (list item) | [V-project]. D3W8 §1.1: d_S is not multiplied by s or t; for (3.30), τ | A16 Q10 | SOURCES_A16_REPLACE2.md |
| H-291 | condition (list item) | [V-project]. D3W8 §1.4 with the S9 fix: (1 + τ)^{−1}C_0 ≤ C_f ≤ (1 − τ | A16 Q11 | SOURCES_A16_REPLACE2.md |
| H-292 | condition (list item) | A16/SRULE covariance property (U-a) | (U-a) | SOURCES_A16_REPLACE2.md / SOURCES_SRULE_CONVENTION.md |
| H-293 | condition (list item) | A16/SRULE covariance property (U-b) | (U-b) | SOURCES_A16_REPLACE2.md / SOURCES_SRULE_CONVENTION.md |
| H-294 | condition (list item) | A16/SRULE covariance property (U-c) | (U-c) | SOURCES_A16_REPLACE2.md / SOURCES_SRULE_CONVENTION.md |
| H-295 | condition (list item) | A16/SRULE covariance property (U-d) | (U-d) | SOURCES_A16_REPLACE2.md / SOURCES_SRULE_CONVENTION.md |
| H-296 | condition (list item) | / (W_G): walk expansion of G with (3.108)-form bounds and locality, as | A1_WALK_FULL IN1 | A1_WALK_FULL.md |
| H-297 | condition (list item) | / (W_G1): tree expansion of G_1, Theorem WG-G1 (SOURCES_WG §3.7) / [P] | A1_WALK_FULL IN2 | A1_WALK_FULL.md |
| H-298 | condition (list item) | / (C): Re⟨u, N̂u⟩ ≥ c_−‖u‖², c_− uniform / conditional: SOURCES_A1_KER | A1_WALK_FULL IN3 | A1_WALK_FULL.md |
| H-299 | condition (list item) | / c_{−,1} = c_−(G_1) ≥ c_−(1 − O(Mα_0)) / conditional: SOURCES_A1_KERN | A1_WALK_FULL IN4 | A1_WALK_FULL.md |
| H-300 | condition (list item) | / CMP 96 Lemma 2.1: c_1(κ) uniform under (2.59) / [R] printed with pro | A1_WALK_FULL IN5 | A1_WALK_FULL.md |
| H-301 | condition (list item) | / Lean: `schur_test`, `coercive_inv`, `combes_thomas`, `combes_thomas_ | A1_WALK_FULL IN6 | A1_WALK_FULL.md |
| H-302 | condition (list item) | / Concatenation lemma (SOURCES_WG §2.3), statement in 5.4 / [P] VERIFI | A1_WALK_FULL IN7 | A1_WALK_FULL.md |
| H-303 | condition (list item) | / Geometry (G): cover 𝒟, cores □⁻, h_□, □⁺, C_ov, C_𝒟 for □⁺-domains / | A1_WALK_FULL IN8 | A1_WALK_FULL.md |
| H-304 | condition (list item) | / O2: Lipschitz bound c_h/M_1 of h_□ across scale boundaries / [I] low | A1_WALK_FULL IN9 | A1_WALK_FULL.md |
| H-305 | condition (list item) | / Q-normalization and Q, Q* block-locality / [I] SOURCES_A1_KERNEL S3 | A1_WALK_FULL IN10 | A1_WALK_FULL.md |
| H-306 | condition (list item) | / WG-1: α_0 ≤ c′M^{−1}M_1^{−10} (G), α_0 ≤ c″M^{−1}M_1^{−12} (G_1); CM | A1_WALK_FULL IN11 | A1_WALK_FULL.md |
| H-307 | condition (list item) | / κ_1 independent of M / [I] / 9.1, 9.3 / A1w ([I] κ_1); C5 / | A1_WALK_FULL IN12 | A1_WALK_FULL.md |
| H-308 | condition (list item) | / Regular class (3.35)–(3.36); J-term O(Mα_0) / [V] CMP 99 pp. 405, 41 | A1_WALK_FULL IN13 | A1_WALK_FULL.md |
| H-309 | condition (list item) | / CMP 116 pp. 3, 4, 5, 13, 15 page facts: s-rule, band, X_0 form, free | A1_WALK_FULL IN14 | A1_WALK_FULL.md |
| H-310 | condition (list item) | / ℓ^∞ reading of the tilde (Z̃_0, X̃^5) / [V] CMP 99 pp. 411, 413, CMP | A1_WALK_FULL IN15 | A1_WALK_FULL.md |
| H-311 | condition (list item) | / Theorem L (γ_exp) and (W_N) for A_exp (SOURCES_WC_EXPGAUGE §3–§4) / | A1_WALK_FULL IN16 | A1_WALK_FULL.md |
| H-312 | condition (list item) | / CMP 99 Thm 3.4: G′, (Q′G′²Q′*)^{−1}, R, G analytic for α_1 ≤ a_1 / [ | A1_WALK_FULL IN17 | A1_WALK_FULL.md |
| H-313 | condition (list item) | / (W_G) at complex points / [R] Thm 3.4 "quantitative statements" + Th | A1_WALK_FULL IN18 | A1_WALK_FULL.md |
| H-314 | condition (list item) | / Plaquette condition along the disc, CMP 109 (1.13)–(1.14) / [V] via | A1_WALK_FULL IN19 | A1_WALK_FULL.md |
| H-315 | condition (list item) | / Order of constants / [P] 9.1 / §9 / C5 / | A1_WALK_FULL IN20 | A1_WALK_FULL.md |
| H-316 | condition (list item) | / CMP 96 pp. 237–238 (2.82)–(2.87), CMP 99 (3.95), Thm 3.14 / [V] imag | A1_WALK_FULL IN21 | A1_WALK_FULL.md |
| H-317 | input/reading (theorem-file tag) | (I-Ω0) outer Dirichlet convention for cubes meeting ∂Ω_0 / 3.2 / I / 4.3 / | T37-I1 | THM37_FULL.md |
| H-318 | input/reading (theorem-file tag) | What Lemma CC needs: (i) Cor. 3.6 uses only a gauge on a cube ⊃ Ω_0(□) with (3.3 | T37-I2 | THM37_FULL.md |
| H-319 | input/reading (theorem-file tag) | M_th of Thm 3.1 concerns R_0M_0, not the walk-cube size (reading of p. 408); als | T37-I4 | THM37_FULL.md |
| H-320 | input/reading (theorem-file tag) | Block-norm → μ-kernel conversion (WG convention C0) / 3.1 / I (WG_FULL C0) / con | T37-I5 | THM37_FULL.md |
| H-321 | input/reading (theorem-file tag) | Lemma D□, non-interface case only: the admissibility step "□-weights ≥ global we | T37-I6 | THM37_FULL.md |
| H-322 | input/reading (theorem-file tag) | (first use) (moved from [I] to [V]). | T39-I1 | THM39_FULL.md |
| H-323 | input/reading (theorem-file tag) | (I-B): the blocks Δ(y), y ∈ 𝔅, partition Ω_0; each block with its one-step neigh | T39-I2 | THM39_FULL.md |
| H-324 | input/reading (theorem-file tag) | Form of (3.31): Δ_{U^u} = R(u)Δ_UR(u^{−1}), U^u(Γ) = u(start)U(Γ)u(end)^{−1} [I; | T39-I3 | THM39_FULL.md |
| H-325 | input/reading (theorem-file tag) | Geometry (G) of A1_WALK_FULL 2.1 on the M_1-cover, with the X-PU repair (c_h → L | T39-I4 | THM39_FULL.md |
| H-326 | input/reading (theorem-file tag) | Kernel convention: Balaban's C′(y, y′) is the μ-kernel [I, as A1_WALK_FULL 6.8]. | T39-I5 | THM39_FULL.md |
| H-327 | input/reading (theorem-file tag) | Count of M_1-cubes meeting a set of diameter D_+M_1 [I, geometry c(d), as A1_WAL | T39-I6 | THM39_FULL.md |
| H-328 | input/reading (theorem-file tag) | CMP 99 p. 413 Thm 3.9 statement; pp. 411–413 sketch [V; R-sketch]. The target. | T39-V1 | THM39_FULL.md |
| H-329 | input/reading (theorem-file tag) | CMP 99 p. 394 (3.21)–(3.25) definitions of Δ′_a, G′, Q′*aQ′, R [V]. | T39-V2 | THM39_FULL.md |
| H-330 | input/reading (theorem-file tag) | CMP 99 p. 396 (3.35) regularity; (3.32)–(3.33) gauge covariance; standing hypoth | T39-V3 | THM39_FULL.md |
| H-331 | input/reading (theorem-file tag) | CMP 99 p. 398 Thm 3.2 (3.48) [V]. | T39-V4 | THM39_FULL.md |
| H-332 | input/reading (theorem-file tag) | CMP 99 p. 400 Thm 3.4 and (3.50)–(3.51) [V]. Only the formula (3.51) is used (4. | T39-V5 | THM39_FULL.md |
| H-333 | input/reading (theorem-file tag) | CMP 99 p. 409 (3.87)–(3.88) [V]; the a-term of (3.88) is the evidence for (I-Q). | T39-V6 | THM39_FULL.md |
| H-334 | input/reading (theorem-file tag) | CMP 96 pp. 236–238 (2.72)–(2.87) [V; R-full at U = 1]. Used only for comparison | T39-V7 | THM39_FULL.md |
| H-335 | input/reading (theorem-file tag) | CMP 98 (64), (70), (77)–(80), pp. 29–30: Q′_j block-diagonal (row y sees only Δ( | T39-V8 | THM39_FULL.md |
| H-336 | input/reading (theorem-file tag) | [I-geo; Balaban p. 411, 414]. Geometry of ζ_□ and 𝒟′_□ with explicit margins (§6 | T310-I6 | THM310_FULL.md |
| H-337 | input/reading (theorem-file tag) | [I; sequence-locality]. For a cube □′ of a cover at size M′, the local sequence | T310-I7 | THM310_FULL.md |
| H-338 | input/reading (theorem-file tag) | [I, C0]: conversion of block norms to the μ-weighted kernels of WG_FULL 0.2. | T310-I8 | THM310_FULL.md |

## L- results proved in this project

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| L-001 | result proved here | Theorem 2w | Theorem 2w, paper label thm:2w (now thm:L001) | THEOREM2_PROOF_v4.md §1.3 |
| L-002 | result stated in the paper | Theorem A (paper intro) | paper label thm:A (now thm:L002) | paper/intro.tex |
| L-003 | result stated in the paper | Theorem B (paper; Target 2) | paper label thm:B (now thm:L003) | paper/intro.tex |
| L-004 | result proved here — to review | Lemma D′ | Lemma D′ [KAPPA_BOUNDED], paper label lem:Dprime (now lem:L004) | LEMMA_DPRIME.md (restated in KAPPA_BOUNDED.md and THEOREM2_PROOF_v4.md §2.1) |
| L-005 | result proved here — to review | Lemma D″ | Lemma D″ [THEOREM2_PROOF], paper label lem:Ddprime (now lem:L005) | THEOREM2_PROOF_v4.md §2.2 (first form KAPPA_BOUNDED.md §5.3) |
| L-006 | result proved here — to review | Lemma D | Lemma D [LEMMAS], paper label lem:D (now lem:L006) | LEMMAS.md |
| L-007 | result proved here — to review | Lemma E | Lemma E [LEMMAS], paper label lem:E (now lem:L007) | LEMMAS.md |
| L-008 | result stated in the paper | anchor-free proposition | paper label prop:anchorfree (now prop:L008) | paper/theorem2.tex |
| L-009 | result proved here — to review | Theorem K | Theorem K [KAPPA_BOUNDED], paper label thm:K (now thm:L009) | KAPPA_BOUNDED.md |
| L-010 | result stated in the paper | Theorem PW (Route B) | paper label thm:PW (now thm:L010) | paper/theorem2.tex |
| L-011 | result proved here — to review | Theorem C1 | Theorem C1 [B2_TWOSTEP], paper label thm:C1 (now thm:L011) | B2_TWOSTEP.md |
| L-012 | result proved here — to review | Theorem B2 | Theorem B2 [B2_TWOSTEP], paper label thm:B2 (now thm:L012) | B2_TWOSTEP.md |
| L-013 | result stated in the paper | existence theorem (assembly) | paper label thm:existence (now thm:L013) | paper/assembly.tex |
| L-014 | result stated in the paper | nontriviality theorem | paper label thm:nontriv (now thm:L014) | paper/assembly.tex |
| L-015 | result stated in the paper | compactness proposition | paper label prop:compactness (now prop:L015) | paper/assembly.tex |
| L-016 | result stated in the paper | finite-form lemma | paper label lem:finiteform (now lem:L016) | paper/assembly.tex |
| L-017 | result proved here — to review | Theorem A1-W | Theorem A1-W [A1_WALK_FULL], paper label thm:A1W (now thm:L017) | A1_WALK_FULL.md |
| L-018 | result proved here | Theorem WG | Theorem WG [WG_FULL], paper label thm:WG (now thm:L018) | WG_FULL.md |
| L-019 | result proved here — to review | Theorem WC | Theorem WC [WC_FULL], paper label thm:WC (now thm:L019) | WC_FULL.md |
| L-020 | result stated in the paper | paper theorem proving ledger A7 | paper label thm:A7 (now thm:L020) | paper/sources.tex |
| L-021 | result stated in the paper | proves A8 | paper label thm:A8 (now thm:L021) | paper/sources.tex |
| L-022 | result stated in the paper | proves A10′ | paper label thm:A10 (now thm:L022) | paper/sources.tex |
| L-023 | result stated in the paper | A11 list | paper label prop:A11 (now prop:L023) | paper/sources.tex |
| L-024 | result proved here — to review | Proposition A15-N | Proposition A15-N [S_A15_LOC], paper label prop:A15N (now prop:L024) | SOURCES_A15_WHOLE.md §6.2 (input (Loc) from SOURCES_A15_LOC.md) |
| L-025 | result stated in the paper | G3 = N2 theorem | paper label thm:G3N2 (now thm:L025) | paper/sources.tex |
| L-026 | result proved here — to review | Theorem LOC | Theorem LOC [S_A15_LOC], paper label thm:LOC (now thm:L026) | SOURCES_A15_LOC.md |
| L-027 | result proved here | Theorem BDRY | Theorem BDRY [S_A15_BDRY], paper label prop:BDRY (now prop:L027) | SOURCES_A15_BDRY.md |
| L-028 | result stated in the paper | (G_A′) theorem | paper label thm:GAprime (now thm:L028) | paper/sources.tex |
| L-029 | result stated in the paper | proves (M_j) = B4 | paper label thm:Mj (now thm:L029) | paper/sources.tex |
| L-030 | result stated in the paper | B7 nested-interval theorem | paper label thm:B7nest (now thm:L030) | paper/sources.tex |
| L-031 | result stated in the paper | proves A17 | paper label prop:A17 (now prop:L031) | paper/sources.tex |
| L-032 | result proved here | Proposition A19 | Proposition A19 [S_A17_A19], paper label prop:A19 (now prop:L032) | SOURCES_A17_A19.md |
| L-033 | result stated in the paper | A18 | paper label prop:A18 (now prop:L033) | paper/sources.tex |
| L-034 | result stated in the paper | A23 | paper label prop:A23 (now prop:L034) | paper/sources.tex |
| L-035 | result stated in the paper | A16 | paper label thm:A16 (now thm:L035) | paper/sources.tex |
| L-036 | result stated in the paper | (R1′) | paper label prop:R1p (now prop:L036) | paper/sources.tex |
| L-037 | result stated in the paper | (W4) R-part | paper label prop:W4R (now prop:L037) | paper/sources.tex |
| L-038 | result stated in the paper | (C) condition proof | paper label prop:Ccond (now prop:L038) | paper/sources.tex |
| L-039 | result proved here | Lemma R | Lemma R [S_C_CONDITION], paper label lem:LemmaR (now lem:L039) | SOURCES_C_CONDITION.md |
| L-040 | result stated in the paper | (L-LL) | paper label thm:LLL (now thm:L040) | paper/sources.tex |
| L-041 | result stated in the paper | (F) by proper time | paper label thm:Fmpt (now thm:L041) | paper/sources.tex |
| L-042 | result stated in the paper | (S′) | paper label prop:Sprime (now prop:L042) | paper/sources.tex |
| L-043 | result stated in the paper | p. 254 transfer | paper label prop:P254 (now prop:L043) | paper/sources.tex |
| L-044 | result proved here | Theorem T39 | Theorem T39 [paper/appendix.tex (no definition line found; most-cited file)], paper label thm:T39 (now thm:L044) | paper/appendix.tex (most-cited; no definition line found) |
| L-045 | result proved here | Theorem T37 | Theorem T37 [THM37_FULL], T37-P9, paper label thm:T37 (now thm:L045) | THM37_FULL.md |
| L-046 | result stated in the paper | Theorem (H2) at L = 13 | paper label thm:H2cert (now thm:L046) | paper/numerics.tex |
| L-047 | result proved here | Corollary A | Corollary A [THM310_FULL] | THM310_FULL.md |
| L-048 | result proved here — to review | Fact A | Fact A [S_FX_O1] | SOURCES_FX_O1.md |
| L-049 | result proved here — to review | Fact A | Fact A [S_GGAIN_NONMONO] | SOURCES_GGAIN_NONMONO.md |
| L-050 | result proved here — to review | Fact A | Fact A [S_SM] | SOURCES_SM.md |
| L-051 | result proved here — to review | Fact A | Fact A [U3_LEMMA51_R23] | U3_LEMMA51_R23.md |
| L-052 | result proved here — to review | Lemma A | Lemma A [LEMMAS] | LEMMAS.md |
| L-053 | result proved here — to review | Lemma A | Lemma A [S_A15_LOC] | SOURCES_A15_LOC.md |
| L-054 | result proved here — to review | Lemma A | Lemma A [S_D2C] | SOURCES_D2C.md |
| L-055 | result proved here — to review | Lemma A | Lemma A [S_MULTISCALE_OMEGA_SOURCED] | SOURCES_MULTISCALE_OMEGA_SOURCED.md |
| L-056 | result proved here — to review | Lemma A | Lemma A [S_T2_MJ_REST] | SOURCES_T2_MJ_REST.md |
| L-057 | result proved here — to review | Lemma A | Lemma A [THM310_FULL] | THM310_FULL.md |
| L-058 | result proved here | Proposition A | Proposition A [U3_REPAIRS] | U3_REPAIRS.md |
| L-059 | result proved here — to review | Theorem A | Theorem A [BETA_FP_PW] | BETA_FP_PW.md |
| L-060 | result proved here — to review | Theorem A | Theorem A [S_T2_MPT_STEPC] | SOURCES_T2_MPT_STEPC.md |
| L-061 | result proved here | Proposition A0 | Proposition A0 [U3_AW] | U3_AW.md |
| L-062 | result proved here | Lemma A1 | Lemma A1 [U3_AW] | U3_AW.md |
| L-063 | result proved here — to review | Theorem A1-W (first form, SOURCES_A1_WALK §7.1) | Theorem A1-W [S_A1_WALK] | SOURCES_A1_WALK.md |
| L-064 | result proved here (retired → L-024, merged 2026-10-28) | Proposition A15-N | Proposition A15-N [S_A15_WHOLE] | SOURCES_A15_WHOLE.md |
| L-065 | result proved here | Lemma A17 | Lemma A17 [S_A17_A19] | SOURCES_A17_A19.md |
| L-066 | result proved here | Theorem A1′ | Theorem A1′ [S_A1_KERNEL (no definition line found; most-cited file)] | SOURCES_A1_KERNEL.md (most-cited; no definition line found) |
| L-067 | result proved here — to review | Proposition A2 | Proposition A2 [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §3.5 and THEOREM2_PROOF_v3.md (restatement of U3_AW Prop. A2, L-068) |
| L-068 | result proved here — to review | Proposition A2 | Proposition A2 [U3_AW] | U3_AW.md |
| L-069 | result proved here — to review | Theorem A3 | Theorem A3 [S_A3_GAMMA0_FULL] | SOURCES_A3_GAMMA0_FULL.md |
| L-070 | result proved here — to review | Theorem A3 | Theorem A3 [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §3.5 (restatement of U3_AW Theorem A3, L-071) |
| L-071 | result proved here — to review | Theorem A3 | Theorem A3 [U3_AW] | U3_AW.md |
| L-072 | result proved here | Lemma A4 | Lemma A4 [U3_AW] | U3_AW.md |
| L-073 | result proved here | Lemma AG | Lemma AG [THM37_FULL], T37-P2 | THM37_FULL.md |
| L-074 | result proved here | Lemma AG′ | Lemma AG′ [THM310_FULL] | THM310_FULL.md |
| L-075 | result proved here — to review | Lemma AW | Lemma AW [A1_WALK_FULL] | A1_WALK_FULL.md |
| L-076 | result proved here — to review | Lemma AW | Lemma AW [S_MULTISCALE_OMEGA] | SOURCES_MULTISCALE_OMEGA.md |
| L-077 | result proved here — to review | Lemma AW | Lemma AW [S_WC_RESIDUE] | SOURCES_WC_RESIDUE.md |
| L-078 | result proved here — to review | Lemma AW | Lemma AW [THM39_FULL] | THM39_FULL.md |
| L-079 | result proved here — to review | Lemma AW | Lemma AW [WC_FULL] | WC_FULL.md |
| L-080 | result proved here — to review | Fact B | Fact B [S_FX_O1] | SOURCES_FX_O1.md |
| L-081 | result proved here — to review | Fact B | Fact B [S_GGAIN_NONMONO] | SOURCES_GGAIN_NONMONO.md |
| L-082 | result proved here — to review | Fact B | Fact B [S_SM] | SOURCES_SM.md |
| L-083 | result proved here — to review | Fact B | Fact B [U3_LEMMA51_R23] | U3_LEMMA51_R23.md |
| L-084 | result proved here — to review | Lemma B | Lemma B [LEMMAS] | LEMMAS.md |
| L-085 | result proved here — to review | Lemma B | Lemma B [S_MULTISCALE_OMEGA_SOURCED] | SOURCES_MULTISCALE_OMEGA_SOURCED.md |
| L-086 | result proved here — to review | Lemma B | Lemma B [THM310_FULL] | THM310_FULL.md |
| L-087 | result proved here | Proposition B | Proposition B [U3_REPAIRS] | U3_REPAIRS.md |
| L-088 | result proved here — to review | Theorem B | Theorem B [BETA_FP_PW], Theorem B_PW (paper macro \ThmPW; was L-103) | BETA_FP_PW.md |
| L-089 | result proved here — to review | Theorem B | Theorem B [BETA_FP_U] | BETA_FP_U.md |
| L-090 | result proved here — to review | Theorem B | Theorem B [S_T2_MPT_STEPC] | SOURCES_T2_MPT_STEPC.md |
| L-091 | result proved here — to review | Theorem B | Theorem B [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §4.2 (restatement of BETA_FP_PW Theorem B, L-088) |
| L-092 | result proved here | Lemma B0 | Lemma B0 [THM37_FULL] | THM37_FULL.md |
| L-093 | result proved here | Claim B1 | Claim B1 [LEMMAS] | LEMMAS.md |
| L-094 | result proved here | Claim B2 | Claim B2 [LEMMAS] | LEMMAS.md |
| L-095 | result proved here | Lemma B2 | Lemma B2 [numerics/inclined_cell_geometry.py (no definition line found; most-cited file)] | numerics/inclined_cell_geometry.py (most-cited; no definition line found) |
| L-096 | result proved here — to review | Theorem B2 | Theorem B2 [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §5.3 (restatement of B2_TWOSTEP Theorem B2, L-012) |
| L-097 | result proved here | Theorem B2-full | Theorem B2-full [S_GGAIN_LF] | SOURCES_GGAIN_LF.md |
| L-098 | result proved here — to review | Theorem B2-unif | Theorem B2-unif [S_GGAIN] | SOURCES_GGAIN.md |
| L-099 | result proved here — to review | Theorem B2-unif | Theorem B2-unif [S_GGAIN_NONMONO] | SOURCES_GGAIN_NONMONO.md |
| L-100 | result proved here | Claim B3 | Claim B3 [LEMMAS] | LEMMAS.md |
| L-101 | result proved here | Lemma B4 | Lemma B4 [LEMMA_B4] | LEMMA_B4.md |
| L-102 | result proved here | Proposition B7-cube | Proposition B7-cube [S_T2_B7_CLAMP] | SOURCES_T2_B7_CLAMP.md |
| L-103 | result proved here (retired → L-088, merged 2026-10-28) | Theorem B_PW | Theorem B_PW [paper/README (no definition line found; most-cited file)] | paper/README.md (most-cited; no definition line found) |
| L-104 | result proved here | Proposition BDRY | Proposition BDRY [paper/appendix.tex (no definition line found; most-cited file)] | paper/appendix.tex (most-cited; no definition line found) |
| L-105 | result proved here | Corollary C | Corollary C [reports/ETH_CONSTANTS] | reports/ETH_CONSTANTS.md |
| L-106 | result proved here — to review | Fact C | Fact C [S_FX_O1] | SOURCES_FX_O1.md |
| L-107 | result proved here — to review | Fact C | Fact C [U3_LEMMA51_R23] | U3_LEMMA51_R23.md |
| L-108 | result proved here — to review | Lemma C | Lemma C [LEMMAS] | LEMMAS.md |
| L-109 | result proved here — to review | Lemma C | Lemma C [S_A18_REGULAR] | SOURCES_A18_REGULAR.md |
| L-110 | result proved here — to review | Lemma C | Lemma C [S_B21_S_PRIME] | SOURCES_B21_S_PRIME.md |
| L-111 | result proved here — to review | Lemma C | Lemma C [S_D4D5] | SOURCES_D4D5.md |
| L-112 | result proved here — to review | Lemma C | Lemma C [S_T2_MPT_STEPC] | SOURCES_T2_MPT_STEPC.md |
| L-113 | result proved here — to review | Lemma C | Lemma C [THM37_FULL], T37-P8 | THM37_FULL.md |
| L-114 | result proved here — to review | Lemma C | Lemma C [U3_REPAIRS] | U3_REPAIRS.md |
| L-115 | result proved here — to review | Lemma C | Lemma C [WG_FULL] | WG_FULL.md |
| L-116 | result proved here | Proposition C1 | Proposition C1 [S_T2_HMINUSC] | SOURCES_T2_HMINUSC.md |
| L-117 | result proved here — to review | Theorem C1 | Theorem C1 [THEOREM2_PROOF] | THEOREM2_PROOF.md |
| L-118 | result proved here | Lemma CC | Lemma CC [THM37_FULL], T37-P15 | THM37_FULL.md |
| L-119 | result proved here | Lemma Cnt | Lemma Cnt [THM310_FULL] | THM310_FULL.md |
| L-120 | result proved here — to review | Lemma CP | Lemma CP [A1_WALK_FULL] | A1_WALK_FULL.md |
| L-121 | result proved here — to review | Lemma CP | Lemma CP [S_MULTISCALE_OMEGA] | SOURCES_MULTISCALE_OMEGA.md |
| L-122 | result proved here — to review | Lemma CP | Lemma CP [S_WC_RESIDUE] | SOURCES_WC_RESIDUE.md |
| L-123 | result proved here — to review | Lemma CP | Lemma CP [WC_FULL] | WC_FULL.md |
| L-124 | result proved here — to review | Lemma CT | Lemma CT [A1_WALK_FULL] | A1_WALK_FULL.md |
| L-125 | result proved here — to review | Lemma CT | Lemma CT [S_A1_KERNEL] | SOURCES_A1_KERNEL.md |
| L-126 | result proved here — to review | Lemma CT | Lemma CT [WC_FULL] | WC_FULL.md |
| L-127 | result proved here — to review | Lemma C′ | Lemma C′ [S_B21_S_PRIME] | SOURCES_B21_S_PRIME.md |
| L-128 | result proved here — to review | Lemma C′ | Lemma C′ [S_D4D5] | SOURCES_D4D5.md |
| L-129 | result proved here — to review | Lemma C′ | Lemma C′ [THM310_FULL] | THM310_FULL.md |
| L-130 | result proved here — to review | Lemma D | Lemma D [ASSEMBLY] | ASSEMBLY.md |
| L-131 | result proved here — to review | Lemma D | Lemma D [R2_TELESCOPING] | R2_TELESCOPING.md |
| L-132 | result proved here — to review | Lemma D | Lemma D [S_HHOL] | SOURCES_HHOL.md |
| L-133 | result proved here — to review | Lemma D | Lemma D [S_HTHR2] | SOURCES_HTHR2.md |
| L-134 | result proved here — to review | Lemma D | Lemma D [S_MC] | SOURCES_MC.md |
| L-135 | result proved here — to review | Lemma D | Lemma D [THEOREM2] | THEOREM2.md |
| L-136 | result proved here — to review | Lemma D | Lemma D [THEOREM2_PROOF] | THEOREM2_PROOF.md |
| L-137 | result proved here — to review | Lemma D | Lemma D [U3_REPAIRS] | U3_REPAIRS.md |
| L-138 | result proved here | Theorem D | Theorem D [S_A7_CDC] | SOURCES_A7_CDC.md |
| L-139 | result proved here | Lemma D2 | Lemma D2 [S_A4_D189 (no definition line found; most-cited file)] | SOURCES_A4_D189.md (most-cited; no definition line found) |
| L-140 | result proved here | Theorem D2 | Theorem D2 [S_D2] | SOURCES_D2.md |
| L-141 | result proved here | Lemma D3 | Lemma D3 [S_D3] | SOURCES_D3.md |
| L-142 | result proved here | Theorem D3 | Theorem D3 [S_D3] | SOURCES_D3.md |
| L-143 | result proved here | Lemma D4 | Lemma D4 [S_D4D5] | SOURCES_D4D5.md |
| L-144 | result proved here | Lemma DI | Lemma DI [THM310_FULL] | THM310_FULL.md |
| L-145 | result proved here (retired → L-004, merged 2026-10-28) | Lemma D′ | Lemma D′ [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §2.1 (restatement; defined in LEMMA_DPRIME.md) |
| L-146 | result proved here | Lemma D′-nest | Lemma D′-nest [S_T2_B7_CLAMP] | SOURCES_T2_B7_CLAMP.md |
| L-147 | result proved here (retired → L-005, merged 2026-10-28) | Lemma D″ | Lemma D″ [INFINITE_VOLUME_IV12] | INFINITE_VOLUME_IV12.md |
| L-148 | result proved here (retired → L-005, merged 2026-10-28) | Lemma D″ | Lemma D″ [KAPPA_BOUNDED] | KAPPA_BOUNDED.md |
| L-149 | result proved here | Lemma D″-nest | Lemma D″-nest [S_T2_B7_CLAMP] | SOURCES_T2_B7_CLAMP.md |
| L-150 | result proved here | Lemma D□ | Lemma D□ [THM37_FULL] | THM37_FULL.md |
| L-151 | result proved here | Corollary E | Corollary E [S_T2_R2REM] | SOURCES_T2_R2REM.md |
| L-152 | result proved here — to review | Lemma E | Lemma E [ASSEMBLY] | ASSEMBLY.md |
| L-153 | result proved here — to review | Lemma E | Lemma E [S_WC_EXPGAUGE] | SOURCES_WC_EXPGAUGE.md |
| L-154 | result proved here — to review | Lemma E | Lemma E [THEOREM2] | THEOREM2.md |
| L-155 | result proved here — to review | Lemma E | Lemma E [THEOREM2_PROOF] | THEOREM2_PROOF.md |
| L-156 | result proved here — to review | Lemma E | Lemma E [U3_REPAIRS] | U3_REPAIRS.md |
| L-157 | result proved here — to review | Proposition E | Proposition E [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §3.5 and THEOREM2_PROOF_v3.md (restatement of U3_AW Prop. E, L-158) |
| L-158 | result proved here — to review | Proposition E | Proposition E [U3_AW] | U3_AW.md |
| L-159 | result proved here | Theorem E | Theorem E [reports/LOCAL_SMOOTHING_READ] | reports/LOCAL_SMOOTHING_READ.md |
| L-160 | result proved here — to review | Lemma F | Lemma F [S_T2_MPT_STEPC] | SOURCES_T2_MPT_STEPC.md |
| L-161 | result proved here — to review | Lemma F | Lemma F [U3_REPAIRS] | U3_REPAIRS.md |
| L-162 | result proved here | Lemma F1 | Lemma F1 [S_D3R] | SOURCES_D3R.md |
| L-163 | result proved here | Lemma F2 | Lemma F2 [S_D3R] | SOURCES_D3R.md |
| L-164 | result proved here | Lemma F2′ | Lemma F2′ [S_D3W8] | SOURCES_D3W8.md |
| L-165 | result proved here | Lemma FX-D | Lemma FX-D [S_FX_D] | SOURCES_FX_D.md |
| L-166 | result proved here — to review | Lemma G | Lemma G [H1_ANALYTIC] | H1_ANALYTIC.md |
| L-167 | result proved here — to review | Lemma G | Lemma G [S_A15_LOC] | SOURCES_A15_LOC.md |
| L-168 | result proved here — to review | Lemma G | Lemma G [S_MULTISCALE_OMEGA] | SOURCES_MULTISCALE_OMEGA.md |
| L-169 | result proved here — to review | Lemma G | Lemma G [U3_REPAIRS] | U3_REPAIRS.md |
| L-170 | result proved here — to review | Lemma G | Lemma G [WC_FULL] | WC_FULL.md |
| L-171 | result proved here — to review | Lemma G1 | Lemma G1 [S_GGAIN] | SOURCES_GGAIN.md |
| L-172 | result proved here — to review | Lemma G1 | Lemma G1 [S_GGAIN_NONMONO] | SOURCES_GGAIN_NONMONO.md |
| L-173 | result proved here | Lemma G2 | Lemma G2 [S_GGAIN] | SOURCES_GGAIN.md |
| L-174 | result proved here — to review | Lemma G3 | Lemma G3 [S_G3] | SOURCES_G3.md |
| L-175 | result proved here — to review | Lemma G3 | Lemma G3 [S_G3_N2] | SOURCES_G3_N2.md |
| L-176 | result proved here (retired → L-174, merged 2026-10-28) | Lemma G3 | Lemma G3 [S_GGAIN] | SOURCES_GGAIN.md |
| L-177 | result proved here (retired → L-174, merged 2026-10-28) | Lemma G3 | Lemma G3 [S_GGAIN_NONMONO] | SOURCES_GGAIN_NONMONO.md |
| L-178 | result proved here | Lemma G4 | Lemma G4 [S_GGAIN] | SOURCES_GGAIN.md |
| L-179 | result proved here | Lemma G4′ | Lemma G4′ [S_G4 (no definition line found; most-cited file)] | SOURCES_G4.md (most-cited; no definition line found) |
| L-180 | result proved here | Lemma Gauge | Lemma Gauge [H1_ANALYTIC] | H1_ANALYTIC.md |
| L-181 | result proved here — to review | Lemma H | Lemma H [S_D2C] | SOURCES_D2C.md |
| L-182 | result proved here — to review | Lemma H | Lemma H [S_HBETA] | SOURCES_HBETA.md |
| L-183 | result proved here | Proposition H0-red | Proposition H0-red [S_T2_H0] | SOURCES_T2_H0.md |
| L-184 | result proved here — to review | Theorem H2 | Theorem H2 [H2_CERTIFY] | H2_CERTIFY.md |
| L-185 | result proved here — to review | Theorem H2 | Theorem H2 [S_HHIST2] | SOURCES_HHIST2.md |
| L-186 | result proved here — to review | Lemma HH | Lemma HH [S_A10_LOWER] | SOURCES_A10_LOWER.md |
| L-187 | result proved here — to review | Lemma HH | Lemma HH [S_GGAIN] | SOURCES_GGAIN.md |
| L-188 | result proved here — to review | Lemma HH | Lemma HH [S_GGAIN_BETAH] | SOURCES_GGAIN_BETAH.md |
| L-189 | result proved here — to review | Lemma HH | Lemma HH [S_HHIST] | SOURCES_HHIST.md |
| L-190 | result proved here — to review | Lemma HH | Lemma HH [S_SM] | SOURCES_SM.md |
| L-191 | result proved here | Lemma H′ | Lemma H′ [S_HTHR] | SOURCES_HTHR.md |
| L-192 | result proved here | Lemma H″ | Lemma H″ [S_B10_SWEEP] | SOURCES_B10_SWEEP.md |
| L-193 | result proved here | Proposition I-109 | Proposition I-109 [S_A18_REGULAR] | SOURCES_A18_REGULAR.md |
| L-194 | result proved here | Proposition I-122 | Proposition I-122 [S_A18_REGULAR] | SOURCES_A18_REGULAR.md |
| L-195 | result proved here | Proposition I-real | Proposition I-real [S_A18_REGULAR] | SOURCES_A18_REGULAR.md |
| L-196 | result proved here | Theorem IV | Theorem IV [INFINITE_VOLUME_FABLE] | INFINITE_VOLUME_FABLE.md |
| L-197 | result proved here | Lemma IV-1 | Lemma IV-1 [INFINITE_VOLUME_IV12] | INFINITE_VOLUME_IV12.md |
| L-198 | result proved here | Lemma IV-2 | Lemma IV-2 [INFINITE_VOLUME_IV12 (no definition line found; most-cited file)] | INFINITE_VOLUME_IV12.md (most-cited; no definition line found) |
| L-199 | result proved here | Theorem IV-2 | Theorem IV-2 [INFINITE_VOLUME_IV12] | INFINITE_VOLUME_IV12.md |
| L-200 | result proved here | Lemma IV-M | Lemma IV-M [INFINITE_VOLUME_PLAN] | INFINITE_VOLUME_PLAN.md |
| L-201 | result proved here | Lemma J | Lemma J [S_MA] | SOURCES_MA.md |
| L-202 | result proved here | Fact K | Fact K [S_T2_V1] | SOURCES_T2_V1.md |
| L-203 | result proved here | Lemma K | Lemma K [THM37_FULL], T37-P6 | THM37_FULL.md |
| L-204 | result proved here (retired → L-009, merged 2026-10-28) | Theorem K | Theorem K [B2_TWOSTEP] | B2_TWOSTEP.md |
| L-205 | result proved here | Lemma K0 | Lemma K0 [THM37_FULL], T37-P3 | THM37_FULL.md |
| L-206 | result proved here — to review | Theorem L | Theorem L [S_MULTISCALE_OMEGA] | SOURCES_MULTISCALE_OMEGA.md |
| L-207 | result proved here — to review | Theorem L | Theorem L [S_WC_EXPGAUGE] | SOURCES_WC_EXPGAUGE.md |
| L-208 | result proved here — to review | Theorem L | Theorem L [WC_FULL] | WC_FULL.md |
| L-209 | result proved here | Claim L_G | Claim L_G [S_A15_BDRY] | SOURCES_A15_BDRY.md |
| L-210 | result proved here | Lemma LB | Lemma LB [THM39_FULL] | THM39_FULL.md |
| L-211 | result proved here | Lemma LB_Q̃ | Lemma LB_Q̃ [S_P253_P275] | SOURCES_P253_P275.md |
| L-212 | result proved here | Lemma LC | Lemma LC [THM37_FULL], T37-P13 | THM37_FULL.md |
| L-213 | result proved here | Lemma LOC | Lemma LOC [S_LOC] | SOURCES_LOC.md |
| L-214 | result proved here — to review | Theorem LOC | Theorem LOC [INFINITE_VOLUME_FABLE] | INFINITE_VOLUME_FABLE.md |
| L-215 | result proved here — to review | Theorem LOC | Theorem LOC [INFINITE_VOLUME_IV12] | INFINITE_VOLUME_IV12.md |
| L-216 | result proved here | Lemma LT | Lemma LT [A1_WALK_FULL] | A1_WALK_FULL.md |
| L-217 | result proved here — to review | Lemma M | Lemma M [KAPPA_BOUNDED] | KAPPA_BOUNDED.md |
| L-218 | result proved here — to review | Lemma M | Lemma M [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §3.5 (restatement of U3_AW Lemma M, L-219) |
| L-219 | result proved here — to review | Lemma M | Lemma M [U3_AW] | U3_AW.md |
| L-220 | result proved here | Lemma M1 | Lemma M1 [S_ORDER_CANON] | SOURCES_ORDER_CANON.md |
| L-221 | result proved here | Lemma M2 | Lemma M2 [S_ORDER_CANON] | SOURCES_ORDER_CANON.md |
| L-222 | result proved here — to review | Lemma MC | Lemma MC [S_HIGHER_M1] | SOURCES_HIGHER_M1.md |
| L-223 | result proved here — to review | Lemma MC | Lemma MC [S_MC] | SOURCES_MC.md |
| L-224 | result proved here — to review | Lemma N | Lemma N [S_A15_LOC] | SOURCES_A15_LOC.md |
| L-225 | result proved here — to review | Lemma N | Lemma N [S_A2_R2] | SOURCES_A2_R2.md |
| L-226 | result proved here — to review | Lemma N | Lemma N [S_A7_CDC] | SOURCES_A7_CDC.md |
| L-227 | result proved here — to review | Lemma N | Lemma N [THM37_FULL], T37-P1 | THM37_FULL.md |
| L-228 | result proved here — to review | Lemma N | Lemma N [WG_FULL] | WG_FULL.md |
| L-229 | result proved here | Theorem N1 | Theorem N1 [ASSEMBLY_N1] | ASSEMBLY_N1.md |
| L-230 | result proved here — to review | Lemma N1-B | Lemma N1-B [INFINITE_VOLUME_IV12] | INFINITE_VOLUME_IV12.md |
| L-231 | result proved here — to review | Lemma N1-B | Lemma N1-B [S_B21_S_PRIME] | SOURCES_B21_S_PRIME.md |
| L-232 | result proved here — to review | Lemma N3 | Lemma N3 [S_HBETA_N3] | SOURCES_HBETA_N3.md |
| L-233 | result proved here — to review | Lemma N3 | Lemma N3 [S_HHOL] | SOURCES_HHOL.md |
| L-234 | result proved here | Lemma N3″ | Lemma N3″ [S_B10_SWEEP] | SOURCES_B10_SWEEP.md |
| L-235 | result proved here | Lemma O1-R | Lemma O1-R [lean/VERIFY_CubeCount (no definition line found; most-cited file)] | lean/VERIFY_CubeCount.md (most-cited; no definition line found) |
| L-236 | result proved here | Lemma O1-R′ | Lemma O1-R′ [lean/YmLean/CubeCount.lean (no definition line found; most-cited file)] | lean/YmLean/CubeCount.lean (most-cited; no definition line found) |
| L-237 | result proved here | Theorem O5 | Theorem O5 [U3_REPAIRS] | U3_REPAIRS.md |
| L-238 | result proved here — to review | Theorem O6 | Theorem O6 [S_D2] | SOURCES_D2.md |
| L-239 | result proved here — to review | Theorem O6 | Theorem O6 [U3_REPAIRS] | U3_REPAIRS.md |
| L-240 | result proved here | Claim P | Claim P [S_T2_B7_CLAMP] | SOURCES_T2_B7_CLAMP.md |
| L-241 | result proved here — to review | Lemma P | Lemma P [ASSEMBLY_N1] | ASSEMBLY_N1.md |
| L-242 | result proved here — to review | Lemma P | Lemma P [S_A8_POS] | SOURCES_A8_POS.md |
| L-243 | result proved here — to review | Lemma P | Lemma P [S_B20_LAMBDAJ] | SOURCES_B20_LAMBDAJ.md |
| L-244 | result proved here — to review | Lemma P | Lemma P [THM37_FULL], T37-P4 | THM37_FULL.md |
| L-245 | result proved here | Lemma P3 | Lemma P3 [S_D3R] | SOURCES_D3R.md |
| L-246 | result proved here | Lemma P4 | Lemma P4 [H2_CERTIFY_P4] | H2_CERTIFY_P4.md |
| L-247 | result proved here — to review | Lemma P_exp | Lemma P_exp [S_WC_EXPGAUGE] | SOURCES_WC_EXPGAUGE.md |
| L-248 | result proved here — to review | Lemma P_exp | Lemma P_exp [WC_FULL] | WC_FULL.md |
| L-249 | result proved here | Theorem PI | Theorem PI [S_T2_PI] | SOURCES_T2_PI.md |
| L-250 | result proved here | Lemma Q | Lemma Q [S_A18_REGULAR] | SOURCES_A18_REGULAR.md |
| L-251 | result proved here | Lemma Q-type | Lemma Q-type [S_P254_TRANSFER_VERIFY (no definition line found; most-cited file)] | SOURCES_P254_TRANSFER_VERIFY.md (most-cited; no definition line found) |
| L-252 | result proved here | Theorem QE | Theorem QE [S_QE_INV] | SOURCES_QE_INV.md |
| L-253 | result proved here | Lemma R1 | Lemma R1 [S_T2_MPT_REST] | SOURCES_T2_MPT_REST.md |
| L-254 | result proved here | Lemma R1-a | Lemma R1-a [S_T2_B7_CLAMP] | SOURCES_T2_B7_CLAMP.md |
| L-255 | result proved here | Lemma R1-b | Lemma R1-b [S_T2_B7_CLAMP] | SOURCES_T2_B7_CLAMP.md |
| L-256 | result proved here | Claim R2 | Claim R2 [S_A23_TSTEP] | SOURCES_A23_TSTEP.md |
| L-257 | result proved here | Corollary R2 | Corollary R2 [S_T2_MPT_REST] | SOURCES_T2_MPT_REST.md |
| L-258 | result proved here | Proposition R2 | Proposition R2 [S_A2_R2] | SOURCES_A2_R2.md |
| L-259 | result proved here — to review | Theorem R2 | Theorem R2 [S_T2_R2REM] | SOURCES_T2_R2REM.md |
| L-260 | result proved here — to review | Theorem R2 | Theorem R2 [U3_LEMMA51_R23] | U3_LEMMA51_R23.md |
| L-261 | result proved here | Lemma R3 | Lemma R3 [S_T2_MPT_REST] | SOURCES_T2_MPT_REST.md |
| L-262 | result proved here | Theorem R3 | Theorem R3 [U3_LEMMA51_R23] | U3_LEMMA51_R23.md |
| L-263 | result proved here | Lemma RP-lim | Lemma RP-lim [INFINITE_VOLUME_ATTEMPT] | INFINITE_VOLUME_ATTEMPT.md |
| L-264 | result proved here — to review | Lemma S | Lemma S [H1_ANALYTIC] | H1_ANALYTIC.md |
| L-265 | result proved here — to review | Lemma S | Lemma S [S_A15_LOC] | SOURCES_A15_LOC.md |
| L-266 | result proved here — to review | Lemma S | Lemma S [S_A8_POS] | SOURCES_A8_POS.md |
| L-267 | result proved here — to review | Lemma S | Lemma S [S_HTHR] | SOURCES_HTHR.md |
| L-268 | result proved here — to review | Lemma S | Lemma S [S_MA] | SOURCES_MA.md |
| L-269 | result proved here — to review | Lemma S | Lemma S [S_P254_TRANSFER] | SOURCES_P254_TRANSFER.md |
| L-270 | result proved here — to review | Lemma S | Lemma S [THM37_FULL], T37-P5 | THM37_FULL.md |
| L-271 | result proved here | Theorem S | Theorem S [S_T2_LLL] | SOURCES_T2_LLL.md |
| L-272 | result proved here | Lemma S1 | Lemma S1 [S_T2_LLL] | SOURCES_T2_LLL.md |
| L-273 | result proved here | Theorem S1 | Theorem S1 [S_D4D5] | SOURCES_D4D5.md |
| L-274 | result proved here | Lemma S1′ | Lemma S1′ [S_T2_MPT_STEPC] | SOURCES_T2_MPT_STEPC.md |
| L-275 | result proved here | Lemma S2 | Lemma S2 [S_T2_LLL] | SOURCES_T2_LLL.md |
| L-276 | result proved here | Corollary S3 | Corollary S3 [S_T2_LLL] | SOURCES_T2_LLL.md |
| L-277 | result proved here | Lemma S3 | Lemma S3 [H2_CERTIFY_L13_G1] | H2_CERTIFY_L13_G1_VERIFY.md §4 (cited in H2_CERTIFY_P5_VERIFY.md §5) |
| L-278 | result proved here | Lemma SIGMA | Lemma SIGMA [S_A3_SIGMA (no definition line found; most-cited file)] | SOURCES_A3_SIGMA.md (most-cited; no definition line found) |
| L-279 | result proved here — to review | Theorem SM | Theorem SM [S_A10_LOWER] | SOURCES_A10_LOWER.md |
| L-280 | result proved here — to review | Theorem SM | Theorem SM [S_GGAIN_NONMONO] | SOURCES_GGAIN_NONMONO.md |
| L-281 | result proved here — to review | Theorem SM | Theorem SM [S_SM] | SOURCES_SM.md |
| L-282 | result proved here — to review | Lemma T | Lemma T [ASSEMBLY_N1] | ASSEMBLY_N1.md |
| L-283 | result proved here — to review | Lemma T | Lemma T [H1_ANALYTIC] | H1_ANALYTIC.md |
| L-284 | result proved here — to review | Lemma T | Lemma T [S_C_CONDITION] | SOURCES_C_CONDITION.md |
| L-285 | result proved here — to review | Lemma T | Lemma T [S_HTHR2] | SOURCES_HTHR2.md |
| L-286 | result proved here — to review | Lemma T | Lemma T [S_P253_P275] | SOURCES_P253_P275.md |
| L-287 | result proved here | Lemma T1 | Lemma T1 [S_A4_D189] | SOURCES_A4_D189.md |
| L-288 | result proved here | Lemma T2 | Lemma T2 [S_A4_D189] | SOURCES_A4_D189.md |
| L-289 | result proved here | Lemma T3 | Lemma T3 [S_A4_D189] | SOURCES_A4_D189.md |
| L-290 | result proved here | Theorem T310 | Theorem T310 [THM310_FULL] | THM310_FULL.md |
| L-291 | result proved here | Theorem T37-M1 | Theorem T37-M1 [THM37_FULL], T37-P12 | THM37_FULL.md |
| L-292 | result proved here | Lemma TC | Lemma TC [INFINITE_VOLUME_ATTEMPT] | INFINITE_VOLUME_ATTEMPT.md |
| L-293 | result proved here | Claim U | Claim U [R2_TELESCOPING] | R2_TELESCOPING.md |
| L-294 | result proved here | Lemma U | Lemma U [S_D2C] | SOURCES_D2C.md |
| L-295 | result proved here | Theorem U | Theorem U [BETA_FP_U] | BETA_FP_U.md |
| L-296 | result proved here | Lemma U1 | Lemma U1 [R2_TELESCOPING] | R2_TELESCOPING.md |
| L-297 | result proved here | Lemma U2 | Lemma U2 [R2_TELESCOPING] | R2_TELESCOPING.md |
| L-298 | result proved here | Lemma U2′ | Lemma U2′ [U1_INFINITE_LATTICE] | U1_INFINITE_LATTICE.md |
| L-299 | result proved here | Lemma U3 | Lemma U3 [U3_GAUSSIAN_RG (no definition line found; most-cited file)] | U3_GAUSSIAN_RG.md (most-cited; no definition line found) |
| L-300 | result proved here | Lemma V0 | Lemma V0 [S_T2_LLL] | SOURCES_T2_LLL.md |
| L-301 | result proved here | Lemma V1 | Lemma V1 [S_T2_LLL] | SOURCES_T2_LLL.md |
| L-302 | result proved here | Theorem V1 | Theorem V1 [S_T2_V1] | SOURCES_T2_V1.md |
| L-303 | result proved here | Lemma V1′ | Lemma V1′ [S_T2_MPT_STEPC] | SOURCES_T2_MPT_STEPC.md |
| L-304 | result proved here | Lemma V2 | Lemma V2 [S_T2_LLL] | SOURCES_T2_LLL.md |
| L-305 | result proved here | Lemma W | Lemma W [S_A15_LOC] | SOURCES_A15_LOC.md |
| L-306 | result proved here | Proposition W | Proposition W [THM37_FULL], T37-P7 | THM37_FULL.md |
| L-307 | result proved here — to review | Theorem W | Theorem W [THEOREM2_PROOF] | THEOREM2_PROOF_v4.md §3.5 (restatement of U3_AW Theorem W, L-308) |
| L-308 | result proved here — to review | Theorem W | Theorem W [U3_AW] | U3_AW.md |
| L-309 | result proved here | Theorem W0 | Theorem W0 [U3_AW] | U3_AW.md |
| L-310 | result proved here | Proposition W10 | Proposition W10 [THM310_FULL] | THM310_FULL.md |
| L-311 | result proved here | Theorem W4 | Theorem W4 [S_W4 (no definition line found; most-cited file)] | SOURCES_W4.md (most-cited; no definition line found) |
| L-312 | result proved here | Proposition W_N | Proposition W_N [WC_FULL] | WC_FULL.md |
| L-313 | result proved here | Proposition W_S | Proposition W_S [S_A16_REPLACE2] | SOURCES_A16_REPLACE2.md |
| L-314 | result proved here — to review | Theorem WC | Theorem WC [S_A16_REPLACE2] | SOURCES_A16_REPLACE2.md |
| L-315 | result proved here | Lemma WG | Lemma WG [WC_FULL (no definition line found; most-cited file)] | WC_FULL.md (most-cited; no definition line found) |
| L-316 | result proved here | Theorem WG-G | Theorem WG-G [WG_FULL] | WG_FULL.md |
| L-317 | result proved here | Theorem WG-G1 | Theorem WG-G1 [WG_FULL] | WG_FULL.md |
| L-318 | result proved here (infinite volume) | IV L1 | IV L1 | INFINITE_VOLUME_FABLE.md |
| L-319 | result proved here (infinite volume) | IV L2 | IV L2 | INFINITE_VOLUME_FABLE.md |
| L-320 | result proved here (infinite volume) | IV L3 | IV L3 | INFINITE_VOLUME_FABLE.md |
| L-321 | result proved here (infinite volume) | IV L4 | IV L4 | INFINITE_VOLUME_FABLE.md |
| L-322 | result proved here (infinite volume) | IV L5 | IV L5 | INFINITE_VOLUME_FABLE.md |
| L-323 | result proved here (infinite volume) | IV L6 | IV L6 | INFINITE_VOLUME_FABLE.md |
| L-324 | result proved here (infinite volume) | IV L7 | IV L7 | INFINITE_VOLUME_FABLE.md |
| L-325 | result proved here (infinite volume) | IV L8 | IV L8 | INFINITE_VOLUME_FABLE.md |
| L-326 | result proved here (infinite volume) | IV L9 | IV L9 | INFINITE_VOLUME_FABLE.md |
| L-327 | result proved here (infinite volume) | IV L10 | IV L10 | INFINITE_VOLUME_FABLE.md |
| L-328 | result proved here (infinite volume) | IV L11 | IV L11 | INFINITE_VOLUME_FABLE.md |
| L-329 | result proved here (infinite volume) | IV L12 | IV L12 | INFINITE_VOLUME_FABLE.md |
| L-330 | result proved here (infinite volume) | IV L13 | IV L13 | INFINITE_VOLUME_FABLE.md |
| L-331 | result proved here (infinite volume) | IV L14 | IV L14 | INFINITE_VOLUME_FABLE.md |
| L-332 | result proved here (infinite volume) | IV L15 | IV L15 | INFINITE_VOLUME_FABLE.md |
| L-333 | result proved here (infinite volume) | IV L16 | IV L16 | INFINITE_VOLUME_FABLE.md |
| L-334 | result proved here (infinite volume) | IV L17 | IV L17 | INFINITE_VOLUME_FABLE.md |
| L-335 | result proved here (theorem-file tag) | T37-M1 | T37-M1 | THM37_FULL.md |
| L-336 | result proved here (theorem-file tag) | T37-P10 | T37-P10 | THM37_FULL.md |
| L-337 | result proved here (theorem-file tag) | T37-P11 | T37-P11 | THM37_FULL.md |
| L-338 | result proved here (theorem-file tag) | T37-P14 | T37-P14 | THM37_FULL.md |
| L-339 | result proved here (theorem-file tag) | T39-L1 | T39-L1 | THM39_FULL.md |
| L-340 | result proved here (theorem-file tag) | T39-L2 | T39-L2 | THM39_FULL.md |
| L-341 | result proved here (theorem-file tag) | T39-L3 | T39-L3 | THM39_FULL.md |
| L-342 | result proved here (theorem-file tag) | T39-P1 | T39-P1 | THM39_FULL.md |
| L-343 | result proved here (theorem-file tag) | T39-P2 | T39-P2 | THM39_FULL.md |
| L-344 | result proved here (theorem-file tag) | T39-P3 | T39-P3 | THM39_FULL.md |
| L-345 | result proved here (theorem-file tag) | T39-P4 | T39-P4 | THM39_FULL.md |
| L-346 | result proved here (theorem-file tag) | T39-P5 | T39-P5 | THM39_FULL.md |
| L-347 | result proved here (theorem-file tag) | T39-PR1 | T39-PR1 | THM39_FULL.md |
| L-348 | result proved here (theorem-file tag) | T310-P2 | T310-P2 | THM310_FULL.md |
| L-349 | result proved here (theorem-file tag) | T310-P3 | T310-P3 | THM310_FULL.md |
| L-350 | result proved here (theorem-file tag) | T310-P5 | T310-P5 | THM310_FULL.md |

## T- tasks (PLAN.md log)

| new id | kind | short name | old ids / aliases | defining file § |
|---|---|---|---|---|
| T-0001 | task | task id (only where context says task) | B1 | PLAN.md log |
| T-0002 | task | task id (only where context says task) | B2 | PLAN.md log |
| T-0003 | task | task id (only where context says task) | B3 | PLAN.md log |
| T-0004 | task | task id (only where context says task) | B4 | PLAN.md log |
| T-0005 | task | task id (only where context says task) | B5 | PLAN.md log |
| T-0006 | task | task id (only where context says task) | B6 | PLAN.md log |
| T-0007 | task | task id (only where context says task) | B7 | PLAN.md log |
| T-0008 | task | task id (only where context says task) | B8 | PLAN.md log |
| T-0009 | task | task id (only where context says task) | B9 | PLAN.md log |
| T-0010 | task | task id (only where context says task) | B10 | PLAN.md log |
| T-0011 | task | task id (only where context says task) | B11 | PLAN.md log |
| T-0012 | task | task id (only where context says task) | B12 | PLAN.md log |
| T-0013 | task | task id (only where context says task) | B13 | PLAN.md log |
| T-0014 | task | task id (only where context says task) | B14 | PLAN.md log |
| T-0015 | task | task id (only where context says task) | B15 | PLAN.md log |
| T-0016 | task | task id (only where context says task) | B16 | PLAN.md log |
| T-0017 | task | task id (only where context says task) | B17 | PLAN.md log |
| T-0018 | task | task id (only where context says task) | B18 | PLAN.md log |
| T-0019 | task | task id (only where context says task) | B19 | PLAN.md log |
| T-0020 | task | task id (only where context says task) | B20 | PLAN.md log |
| T-0021 | task | task id (only where context says task) | B21 | PLAN.md log |
| T-0022 | task | task id (only where context says task) | B22 | PLAN.md log |
| T-0023 | task | task id (only where context says task) | B23 | PLAN.md log |
| T-0024 | task | task id (only where context says task) | B24 | PLAN.md log |
| T-0025 | task | task id (only where context says task) | B25 | PLAN.md log |
| T-0026 | task | task id (only where context says task) | B26 | PLAN.md log |
| T-0027 | task | task id (only where context says task) | B27 | PLAN.md log |
| T-0028 | task | task id (only where context says task) | B28 | PLAN.md log |
| T-0029 | task | task id (only where context says task) | B29 | PLAN.md log |
| T-0030 | task | task id (only where context says task) | B30 | PLAN.md log |
| T-0031 | task | task id (only where context says task) | B31 | PLAN.md log |
| T-0032 | task | task id (only where context says task) | B32 | PLAN.md log |
| T-0033 | task | task id (only where context says task) | B33 | PLAN.md log |
| T-0034 | task | task id | B34 | PLAN.md log |
| T-0035 | task (PLAN fix pass) | fix pass F7 | F7 | PLAN.md log |
| T-0036 | task (PLAN fix pass) | fix pass F8 | F8 | PLAN.md log |
| T-0037 | task | task id | B35 | PLAN.md log |
| T-0038 | task | task id | B36 | PLAN.md log |
| T-0039 | task (PLAN fix pass) | fix pass F9 | F9 | PLAN.md log |
| T-0040 | task | task id | B37 | PLAN.md log |
| T-0041 | task | task id | B38 | PLAN.md log |
| T-0042 | task | task id | B39 | PLAN.md log |
| T-0043 | task | task id | B40 | PLAN.md log |
| T-0044 | task | task id | B41 | PLAN.md log |
| T-0045 | task (PLAN fix pass) | fix pass F10 | F10 | PLAN.md log |
| T-0046 | task | task id | B42 | PLAN.md log |
| T-0047 | task | task id | B43 | PLAN.md log |
| T-0048 | task | task id | B44 | PLAN.md log |
| T-0049 | task | task id | B45 | PLAN.md log |
| T-0050 | task | task id | B46 | PLAN.md log |
| T-0051 | task | task id | B47 | PLAN.md log |
| T-0052 | task | task id | B48 | PLAN.md log |
| T-0053 | task | task id | B49 | PLAN.md log |
| T-0054 | task | task id | B50 | PLAN.md log |
| T-0055 | task | task id | B51 | PLAN.md log |
| T-0056 | task | task id | B52 | PLAN.md log |
| T-0057 | task | task id | B53 | PLAN.md log |
| T-0058 | task | task id | B54 | PLAN.md log |
| T-0059 | task | task id | B55 | PLAN.md log |
| T-0060 | task (PLAN fix pass) | fix pass F11 | F11 | PLAN.md log |
| T-0061 | task (PLAN fix pass) | fix pass F12 | F12 | PLAN.md log |
| T-0062 | task (PLAN fix pass) | fix pass F13 | F13 | PLAN.md log |
| T-0063 | task | task id | B56 | PLAN.md log |
| T-0064 | task | task id | B57 | PLAN.md log |
| T-0065 | task | task id | B58 | PLAN.md log |
| T-0066 | task (PLAN fix pass) | fix pass F14 | F14 | PLAN.md log |
| T-0067 | task | task id | B59 | PLAN.md log |
| T-0068 | task | task id | B60 | PLAN.md log |
| T-0069 | task | task id | B61 | PLAN.md log |
| T-0070 | task (PLAN fix pass) | fix pass F15 | F15 | PLAN.md log |
| T-0071 | task | task id | B62 | PLAN.md log |
| T-0072 | task | task id | B63 | PLAN.md log |
| T-0073 | task | task id | B64 | PLAN.md log |
| T-0074 | task | task id | B65 | PLAN.md log |
| T-0075 | task | task id | B66 | PLAN.md log |
| T-0076 | task | task id | B67 | PLAN.md log |
| T-0077 | task | task id | B68 | PLAN.md log |
| T-0078 | task | task id | B69 | PLAN.md log |
| T-0079 | task | task id | B70 | PLAN.md log |
| T-0080 | task | task id | B71 | PLAN.md log |
| T-0081 | task | task id | B72 | PLAN.md log |
| T-0082 | task | task id | B73 | PLAN.md log |
| T-0083 | task | task id | B74 | PLAN.md log |
| T-0084 | task | task id | B75 | PLAN.md log |
| T-0085 | task | task id | B76 | PLAN.md log |
| T-0086 | task | task id | B77 | PLAN.md log |
| T-0087 | task | task id | B78 | PLAN.md log |
| T-0088 | task | task id | B79 | PLAN.md log |
| T-0089 | task | task id | B80 | PLAN.md log |
| T-0090 | task | task id | B81 | PLAN.md log |
| T-0091 | task | task id | B82 | PLAN.md log |
| T-0092 | task | task id | B83 | PLAN.md log |
| T-0093 | task | task id | B84 | PLAN.md log |
| T-0094 | task | task id | B85 | PLAN.md log |
| T-0095 | task | task id | B86 | PLAN.md log |
| T-0096 | task | task id | B87 | PLAN.md log |
| T-0097 | task | task id | B88 | PLAN.md log |
| T-0098 | task | task id | B89 | PLAN.md log |
| T-0099 | task | task id | B90 | PLAN.md log |
| T-0100 | task | task id | B91 | PLAN.md log |
| T-0101 | task | task id | B92 | PLAN.md log |
| T-0102 | task | task id | B93 | PLAN.md log |
| T-0103 | task | task id | B94 | PLAN.md log |
| T-0104 | task | task id | B95 | PLAN.md log |
| T-0105 | task | task id | B96 | PLAN.md log |
| T-0106 | task | task id | B97 | PLAN.md log |
| T-0107 | task (PLAN fix pass) | fix pass F16 | F16 | PLAN.md log |
| T-0108 | task | task id | B98 | PLAN.md log |
| T-0109 | task | task id | B99 | PLAN.md log |
| T-0110 | task | task id | B100 | PLAN.md log |
| T-0111 | task | task id | B101 | PLAN.md log |
| T-0112 | task | task id | B102 | PLAN.md log |
| T-0113 | task | task id | B103 | PLAN.md log |
| T-0114 | task | task id | B104 | PLAN.md log |
| T-0115 | task | task id | B105 | PLAN.md log |
| T-0116 | task | task id | B106 | PLAN.md log |
| T-0117 | task | task id | B107 | PLAN.md log |
| T-0118 | task | task id | B108 | PLAN.md log |
| T-0119 | task | task id | B109 | PLAN.md log |
| T-0120 | task | task id | B110 | PLAN.md log |
| T-0121 | task | task id | B111 | PLAN.md log |
| T-0122 | task | task id | B112 | PLAN.md log |
| T-0123 | task | task id | B113 | PLAN.md log |
| T-0124 | task | task id | B114 | PLAN.md log |
| T-0125 | task | task id | B115 | PLAN.md log |
| T-0126 | task | task id | B116 | PLAN.md log |
| T-0127 | task (PLAN fix pass) | fix pass F17 | F17 | PLAN.md log |
| T-0128 | task (PLAN fix pass) | fix pass F18 | F18 | PLAN.md log |
| T-0129 | task | task id | B117 | PLAN.md log |
| T-0130 | task (PLAN fix pass) | fix pass F19 | F19 | PLAN.md log |
| T-0131 | task | task id | B118 | PLAN.md log |
| T-0132 | task | task id | B119 | PLAN.md log |
| T-0133 | task | task id | B120 | PLAN.md log |
| T-0134 | task | task id | B121 | PLAN.md log |
| T-0135 | task | task id | B122 | PLAN.md log |
| T-0136 | task | task id | B123 | PLAN.md log |
| T-0137 | task | task id | B124 | PLAN.md log |
| T-0138 | task | task id | B125 | PLAN.md log |
| T-0139 | task | task id | B126 | PLAN.md log |
| T-0140 | task (PLAN fix pass) | fix pass F20 | F20 | PLAN.md log |
| T-0141 | task (PLAN fix pass) | fix pass F21 | F21 | PLAN.md log |
| T-0142 | task | task id | B127 | PLAN.md log |
| T-0143 | task | task id | B128 | PLAN.md log |
| T-0144 | task (PLAN fix pass) | fix pass F22 | F22 | PLAN.md log |
| T-0145 | task | task id | B129 | PLAN.md log |
| T-0146 | task | task id | B130 | PLAN.md log |
| T-0147 | task | task id | B131 | PLAN.md log |
| T-0148 | task | task id | B132 | PLAN.md log |
| T-0149 | task (PLAN fix pass) | fix pass F23 | F23 | PLAN.md log |
| T-0150 | task | task id | B133 | PLAN.md log |
| T-0151 | task | task id | B134 | PLAN.md log |
| T-0152 | task | task id | B135 | PLAN.md log |

## To review (provisional assignments)

Homonym lemma names (one id per name and defining file; a reviewer merges ids where one file only restates another) and id-shaped labels (one id at the most-cited file). Live-file occurrences were assigned per sentence in the apply pass; see RENUMBER_PLAN.md "Applied 2026-10-28" for the occurrence policy.

| id | issue | old ids |
|---|---|---|
| H-181 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (AW1) |
| H-182 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (B10′) |
| H-183 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (B11′) |
| H-184 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (B2w) |
| H-185 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (C4″) |
| H-186 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (D1) |
| H-187 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (D2) |
| H-188 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (D3) |
| H-189 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (F2′) |
| H-190 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (FX1) |
| H-191 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (FX2) |
| H-192 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (FX3) |
| H-193 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (FX4) |
| H-194 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (G1) |
| H-195 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (G1′) |
| H-196 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (G2′) |
| H-197 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (G3) |
| H-198 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (G3′) |
| H-199 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (G4) |
| H-200 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (GC1) |
| H-201 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (GC3) |
| H-202 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (H0) |
| H-203 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (H0′) |
| H-204 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (H1) |
| H-205 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (H3) |
| H-206 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (H4) |
| H-207 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I1) |
| H-208 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I2) |
| H-209 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I3) |
| H-210 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I4) |
| H-211 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I5) |
| H-212 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I6) |
| H-213 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I7) |
| H-214 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (I9) |
| H-215 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (K1) |
| H-216 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (K1′) |
| H-217 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (K2) |
| H-218 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (K3) |
| H-219 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (K4) |
| H-220 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (M2) |
| H-221 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (M3) |
| H-222 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (M4) |
| H-223 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (M5) |
| H-224 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N1) |
| H-225 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N2) |
| H-226 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N3) |
| H-227 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N3′) |
| H-228 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N4) |
| H-229 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N5) |
| H-230 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N6) |
| H-231 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (N7) |
| H-232 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P1) |
| H-233 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P13) |
| H-234 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P2) |
| H-235 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P3) |
| H-236 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P4) |
| H-237 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P5) |
| H-238 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P6) |
| H-239 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P7) |
| H-240 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (P8) |
| H-241 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (R1′) |
| H-242 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (R3a) |
| H-243 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (R3b) |
| H-244 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S1) |
| H-245 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S2) |
| H-246 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S2c) |
| H-247 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S3) |
| H-248 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S3w) |
| H-249 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S4) |
| H-250 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S5) |
| H-251 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S6) |
| H-252 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (S7) |
| H-253 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (W1) |
| H-254 | id-shaped label; one id at most-cited file; split if another file uses it for a different statement | (Y2) |
| L-004 | HOMONYM: Lemma D′ has several defining files; restatement (merge) or distinct — to review | Lemma D′ [KAPPA_BOUNDED], paper label lem:Dprime (now lem:L004) |
| L-005 | HOMONYM: Lemma D″ has several defining files; restatement (merge) or distinct — to review | Lemma D″ [THEOREM2_PROOF], paper label lem:Ddprime (now lem:L005) |
| L-006 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [LEMMAS], paper label lem:D (now lem:L006) |
| L-007 | HOMONYM: Lemma E has several defining files; restatement (merge) or distinct — to review | Lemma E [LEMMAS], paper label lem:E (now lem:L007) |
| L-009 | HOMONYM: Theorem K has several defining files; restatement (merge) or distinct — to review | Theorem K [KAPPA_BOUNDED], paper label thm:K (now thm:L009) |
| L-011 | HOMONYM: Theorem C1 has several defining files; restatement (merge) or distinct — to review | Theorem C1 [B2_TWOSTEP], paper label thm:C1 (now thm:L011) |
| L-012 | HOMONYM: Theorem B2 has several defining files; restatement (merge) or distinct — to review | Theorem B2 [B2_TWOSTEP], paper label thm:B2 (now thm:L012) |
| L-017 | HOMONYM: Theorem A1-W has several defining files; restatement (merge) or distinct — to review | Theorem A1-W [A1_WALK_FULL], paper label thm:A1W (now thm:L017) |
| L-019 | HOMONYM: Theorem WC has several defining files; restatement (merge) or distinct — to review | Theorem WC [WC_FULL], paper label thm:WC (now thm:L019) |
| L-024 | HOMONYM: Proposition A15-N has several defining files; restatement (merge) or distinct — to review | Proposition A15-N [S_A15_LOC], paper label prop:A15N (now prop:L024) |
| L-026 | HOMONYM: Theorem LOC has several defining files; restatement (merge) or distinct — to review | Theorem LOC [S_A15_LOC], paper label thm:LOC (now thm:L026) |
| L-048 | HOMONYM: Fact A has several defining files; restatement (merge) or distinct — to review | Fact A [S_FX_O1] |
| L-049 | HOMONYM: Fact A has several defining files; restatement (merge) or distinct — to review | Fact A [S_GGAIN_NONMONO] |
| L-050 | HOMONYM: Fact A has several defining files; restatement (merge) or distinct — to review | Fact A [S_SM] |
| L-051 | HOMONYM: Fact A has several defining files; restatement (merge) or distinct — to review | Fact A [U3_LEMMA51_R23] |
| L-052 | HOMONYM: Lemma A has several defining files; restatement (merge) or distinct — to review | Lemma A [LEMMAS] |
| L-053 | HOMONYM: Lemma A has several defining files; restatement (merge) or distinct — to review | Lemma A [S_A15_LOC] |
| L-054 | HOMONYM: Lemma A has several defining files; restatement (merge) or distinct — to review | Lemma A [S_D2C] |
| L-055 | HOMONYM: Lemma A has several defining files; restatement (merge) or distinct — to review | Lemma A [S_MULTISCALE_OMEGA_SOURCED] |
| L-056 | HOMONYM: Lemma A has several defining files; restatement (merge) or distinct — to review | Lemma A [S_T2_MJ_REST] |
| L-057 | HOMONYM: Lemma A has several defining files; restatement (merge) or distinct — to review | Lemma A [THM310_FULL] |
| L-059 | HOMONYM: Theorem A has several defining files; restatement (merge) or distinct — to review | Theorem A [BETA_FP_PW] |
| L-060 | HOMONYM: Theorem A has several defining files; restatement (merge) or distinct — to review | Theorem A [S_T2_MPT_STEPC] |
| L-063 | HOMONYM: Theorem A1-W; KEPT SPLIT from L-017 (RENUMBER_VERIFY §7.7): L-063 = first form (SOURCES_A1_WALK §7.1), L-017 = full write-out (A1_WALK_FULL §0.4); merge only if Elvin rules that A1_WALK_FULL supersedes §7.1 | Theorem A1-W [S_A1_WALK] |
| L-064 | MERGED into L-024 (RENUMBER_VERIFY §7.6; 2026-10-28); retired id kept for frozen-file lookups | Proposition A15-N [S_A15_WHOLE] |
| L-067 | HOMONYM: Proposition A2 has several defining files; restatement (merge) or distinct — to review | Proposition A2 [THEOREM2_PROOF] |
| L-068 | HOMONYM: Proposition A2 has several defining files; restatement (merge) or distinct — to review | Proposition A2 [U3_AW] |
| L-069 | HOMONYM: Theorem A3 has several defining files; restatement (merge) or distinct — to review | Theorem A3 [S_A3_GAMMA0_FULL] |
| L-070 | HOMONYM: Theorem A3 has several defining files; restatement (merge) or distinct — to review | Theorem A3 [THEOREM2_PROOF] |
| L-071 | HOMONYM: Theorem A3 has several defining files; restatement (merge) or distinct — to review | Theorem A3 [U3_AW] |
| L-075 | HOMONYM: Lemma AW has several defining files; restatement (merge) or distinct — to review | Lemma AW [A1_WALK_FULL] |
| L-076 | HOMONYM: Lemma AW has several defining files; restatement (merge) or distinct — to review | Lemma AW [S_MULTISCALE_OMEGA] |
| L-077 | HOMONYM: Lemma AW has several defining files; restatement (merge) or distinct — to review | Lemma AW [S_WC_RESIDUE] |
| L-078 | HOMONYM: Lemma AW has several defining files; restatement (merge) or distinct — to review | Lemma AW [THM39_FULL] |
| L-079 | HOMONYM: Lemma AW has several defining files; restatement (merge) or distinct — to review | Lemma AW [WC_FULL] |
| L-080 | HOMONYM: Fact B has several defining files; restatement (merge) or distinct — to review | Fact B [S_FX_O1] |
| L-081 | HOMONYM: Fact B has several defining files; restatement (merge) or distinct — to review | Fact B [S_GGAIN_NONMONO] |
| L-082 | HOMONYM: Fact B has several defining files; restatement (merge) or distinct — to review | Fact B [S_SM] |
| L-083 | HOMONYM: Fact B has several defining files; restatement (merge) or distinct — to review | Fact B [U3_LEMMA51_R23] |
| L-084 | HOMONYM: Lemma B has several defining files; restatement (merge) or distinct — to review | Lemma B [LEMMAS] |
| L-085 | HOMONYM: Lemma B has several defining files; restatement (merge) or distinct — to review | Lemma B [S_MULTISCALE_OMEGA_SOURCED] |
| L-086 | HOMONYM: Lemma B has several defining files; restatement (merge) or distinct — to review | Lemma B [THM310_FULL] |
| L-088 | HOMONYM: Theorem B has several defining files; restatement (merge) or distinct — to review | Theorem B [BETA_FP_PW] |
| L-089 | HOMONYM: Theorem B has several defining files; restatement (merge) or distinct — to review | Theorem B [BETA_FP_U] |
| L-090 | HOMONYM: Theorem B has several defining files; restatement (merge) or distinct — to review | Theorem B [S_T2_MPT_STEPC] |
| L-091 | HOMONYM: Theorem B has several defining files; restatement (merge) or distinct — to review | Theorem B [THEOREM2_PROOF] |
| L-096 | HOMONYM: Theorem B2 has several defining files; restatement (merge) or distinct — to review | Theorem B2 [THEOREM2_PROOF] |
| L-098 | HOMONYM: Theorem B2-unif has several defining files; restatement (merge) or distinct — to review | Theorem B2-unif [S_GGAIN] |
| L-099 | HOMONYM: Theorem B2-unif has several defining files; restatement (merge) or distinct — to review | Theorem B2-unif [S_GGAIN_NONMONO] |
| L-106 | HOMONYM: Fact C has several defining files; restatement (merge) or distinct — to review | Fact C [S_FX_O1] |
| L-107 | HOMONYM: Fact C has several defining files; restatement (merge) or distinct — to review | Fact C [U3_LEMMA51_R23] |
| L-108 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [LEMMAS] |
| L-109 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [S_A18_REGULAR] |
| L-110 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [S_B21_S_PRIME] |
| L-111 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [S_D4D5] |
| L-112 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [S_T2_MPT_STEPC] |
| L-113 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [THM37_FULL], T37-P8 |
| L-114 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [U3_REPAIRS] |
| L-115 | HOMONYM: Lemma C has several defining files; restatement (merge) or distinct — to review | Lemma C [WG_FULL] |
| L-117 | HOMONYM: Theorem C1 has several defining files; restatement (merge) or distinct — to review | Theorem C1 [THEOREM2_PROOF] |
| L-120 | HOMONYM: Lemma CP has several defining files; restatement (merge) or distinct — to review | Lemma CP [A1_WALK_FULL] |
| L-121 | HOMONYM: Lemma CP has several defining files; restatement (merge) or distinct — to review | Lemma CP [S_MULTISCALE_OMEGA] |
| L-122 | HOMONYM: Lemma CP has several defining files; restatement (merge) or distinct — to review | Lemma CP [S_WC_RESIDUE] |
| L-123 | HOMONYM: Lemma CP has several defining files; restatement (merge) or distinct — to review | Lemma CP [WC_FULL] |
| L-124 | HOMONYM: Lemma CT has several defining files; restatement (merge) or distinct — to review | Lemma CT [A1_WALK_FULL] |
| L-125 | HOMONYM: Lemma CT has several defining files; restatement (merge) or distinct — to review | Lemma CT [S_A1_KERNEL] |
| L-126 | HOMONYM: Lemma CT has several defining files; restatement (merge) or distinct — to review | Lemma CT [WC_FULL] |
| L-127 | HOMONYM: Lemma C′ has several defining files; restatement (merge) or distinct — to review | Lemma C′ [S_B21_S_PRIME] |
| L-128 | HOMONYM: Lemma C′ has several defining files; restatement (merge) or distinct — to review | Lemma C′ [S_D4D5] |
| L-129 | HOMONYM: Lemma C′ has several defining files; restatement (merge) or distinct — to review | Lemma C′ [THM310_FULL] |
| L-130 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [ASSEMBLY] |
| L-131 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [R2_TELESCOPING] |
| L-132 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [S_HHOL] |
| L-133 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [S_HTHR2] |
| L-134 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [S_MC] |
| L-135 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [THEOREM2] |
| L-136 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [THEOREM2_PROOF] |
| L-137 | HOMONYM: Lemma D has several defining files; restatement (merge) or distinct — to review | Lemma D [U3_REPAIRS] |
| L-145 | MERGED into L-004 (RENUMBER_VERIFY §7.4; 2026-10-28); retired id kept for frozen-file lookups | Lemma D′ [THEOREM2_PROOF] |
| L-147 | MERGED into L-005 (RENUMBER_VERIFY §7.5; 2026-10-28); retired id kept for frozen-file lookups | Lemma D″ [INFINITE_VOLUME_IV12] |
| L-148 | MERGED into L-005 (RENUMBER_VERIFY §7.5; 2026-10-28); retired id kept for frozen-file lookups | Lemma D″ [KAPPA_BOUNDED] |
| L-152 | HOMONYM: Lemma E has several defining files; restatement (merge) or distinct — to review | Lemma E [ASSEMBLY] |
| L-153 | HOMONYM: Lemma E has several defining files; restatement (merge) or distinct — to review | Lemma E [S_WC_EXPGAUGE] |
| L-154 | HOMONYM: Lemma E has several defining files; restatement (merge) or distinct — to review | Lemma E [THEOREM2] |
| L-155 | HOMONYM: Lemma E has several defining files; restatement (merge) or distinct — to review | Lemma E [THEOREM2_PROOF] |
| L-156 | HOMONYM: Lemma E has several defining files; restatement (merge) or distinct — to review | Lemma E [U3_REPAIRS] |
| L-157 | HOMONYM: Proposition E has several defining files; restatement (merge) or distinct — to review | Proposition E [THEOREM2_PROOF] |
| L-158 | HOMONYM: Proposition E has several defining files; restatement (merge) or distinct — to review | Proposition E [U3_AW] |
| L-160 | HOMONYM: Lemma F has several defining files; restatement (merge) or distinct — to review | Lemma F [S_T2_MPT_STEPC] |
| L-161 | HOMONYM: Lemma F has several defining files; restatement (merge) or distinct — to review | Lemma F [U3_REPAIRS] |
| L-166 | HOMONYM: Lemma G has several defining files; restatement (merge) or distinct — to review | Lemma G [H1_ANALYTIC] |
| L-167 | HOMONYM: Lemma G has several defining files; restatement (merge) or distinct — to review | Lemma G [S_A15_LOC] |
| L-168 | HOMONYM: Lemma G has several defining files; restatement (merge) or distinct — to review | Lemma G [S_MULTISCALE_OMEGA] |
| L-169 | HOMONYM: Lemma G has several defining files; restatement (merge) or distinct — to review | Lemma G [U3_REPAIRS] |
| L-170 | HOMONYM: Lemma G has several defining files; restatement (merge) or distinct — to review | Lemma G [WC_FULL] |
| L-171 | HOMONYM: Lemma G1 has several defining files; restatement (merge) or distinct — to review | Lemma G1 [S_GGAIN] |
| L-172 | HOMONYM: Lemma G1 has several defining files; restatement (merge) or distinct — to review | Lemma G1 [S_GGAIN_NONMONO] |
| L-174 | HOMONYM: Lemma G3 has several defining files; restatement (merge) or distinct — to review | Lemma G3 [S_G3] |
| L-175 | HOMONYM: Lemma G3 has several defining files; restatement (merge) or distinct — to review | Lemma G3 [S_G3_N2] |
| L-176 | MERGED into L-174 (RENUMBER_VERIFY §7.3; 2026-10-28); retired id kept for frozen-file lookups | Lemma G3 [S_GGAIN] |
| L-177 | MERGED into L-174 (RENUMBER_VERIFY §7.3; 2026-10-28); retired id kept for frozen-file lookups | Lemma G3 [S_GGAIN_NONMONO] |
| L-181 | HOMONYM: Lemma H has several defining files; restatement (merge) or distinct — to review | Lemma H [S_D2C] |
| L-182 | HOMONYM: Lemma H has several defining files; restatement (merge) or distinct — to review | Lemma H [S_HBETA] |
| L-184 | HOMONYM: Theorem H2 has several defining files; restatement (merge) or distinct — to review | Theorem H2 [H2_CERTIFY] |
| L-185 | HOMONYM: Theorem H2 has several defining files; restatement (merge) or distinct — to review | Theorem H2 [S_HHIST2] |
| L-186 | HOMONYM: Lemma HH has several defining files; restatement (merge) or distinct — to review | Lemma HH [S_A10_LOWER] |
| L-187 | HOMONYM: Lemma HH has several defining files; restatement (merge) or distinct — to review | Lemma HH [S_GGAIN] |
| L-188 | HOMONYM: Lemma HH has several defining files; restatement (merge) or distinct — to review | Lemma HH [S_GGAIN_BETAH] |
| L-189 | HOMONYM: Lemma HH has several defining files; restatement (merge) or distinct — to review | Lemma HH [S_HHIST] |
| L-190 | HOMONYM: Lemma HH has several defining files; restatement (merge) or distinct — to review | Lemma HH [S_SM] |
| L-204 | MERGED into L-009 (RENUMBER_VERIFY §7.1; 2026-10-28); retired id kept for frozen-file lookups | Theorem K [B2_TWOSTEP] |
| L-206 | HOMONYM: Theorem L has several defining files; restatement (merge) or distinct — to review | Theorem L [S_MULTISCALE_OMEGA] |
| L-207 | HOMONYM: Theorem L has several defining files; restatement (merge) or distinct — to review | Theorem L [S_WC_EXPGAUGE] |
| L-208 | HOMONYM: Theorem L has several defining files; restatement (merge) or distinct — to review | Theorem L [WC_FULL] |
| L-214 | HOMONYM: Theorem LOC has several defining files; restatement (merge) or distinct — to review | Theorem LOC [INFINITE_VOLUME_FABLE] |
| L-215 | HOMONYM: Theorem LOC has several defining files; restatement (merge) or distinct — to review | Theorem LOC [INFINITE_VOLUME_IV12] |
| L-217 | HOMONYM: Lemma M has several defining files; restatement (merge) or distinct — to review | Lemma M [KAPPA_BOUNDED] |
| L-218 | HOMONYM: Lemma M has several defining files; restatement (merge) or distinct — to review | Lemma M [THEOREM2_PROOF] |
| L-219 | HOMONYM: Lemma M has several defining files; restatement (merge) or distinct — to review | Lemma M [U3_AW] |
| L-222 | HOMONYM: Lemma MC has several defining files; restatement (merge) or distinct — to review | Lemma MC [S_HIGHER_M1] |
| L-223 | HOMONYM: Lemma MC has several defining files; restatement (merge) or distinct — to review | Lemma MC [S_MC] |
| L-224 | HOMONYM: Lemma N has several defining files; restatement (merge) or distinct — to review | Lemma N [S_A15_LOC] |
| L-225 | HOMONYM: Lemma N has several defining files; restatement (merge) or distinct — to review | Lemma N [S_A2_R2] |
| L-226 | HOMONYM: Lemma N has several defining files; restatement (merge) or distinct — to review | Lemma N [S_A7_CDC] |
| L-227 | HOMONYM: Lemma N has several defining files; restatement (merge) or distinct — to review | Lemma N [THM37_FULL], T37-P1 |
| L-228 | HOMONYM: Lemma N has several defining files; restatement (merge) or distinct — to review | Lemma N [WG_FULL] |
| L-230 | HOMONYM: Lemma N1-B has several defining files; restatement (merge) or distinct — to review | Lemma N1-B [INFINITE_VOLUME_IV12] |
| L-231 | HOMONYM: Lemma N1-B has several defining files; restatement (merge) or distinct — to review | Lemma N1-B [S_B21_S_PRIME] |
| L-232 | HOMONYM: Lemma N3 has several defining files; restatement (merge) or distinct — to review | Lemma N3 [S_HBETA_N3] |
| L-233 | HOMONYM: Lemma N3 has several defining files; restatement (merge) or distinct — to review | Lemma N3 [S_HHOL] |
| L-238 | HOMONYM: Theorem O6 has several defining files; restatement (merge) or distinct — to review | Theorem O6 [S_D2] |
| L-239 | HOMONYM: Theorem O6 has several defining files; restatement (merge) or distinct — to review | Theorem O6 [U3_REPAIRS] |
| L-241 | HOMONYM: Lemma P has several defining files; restatement (merge) or distinct — to review | Lemma P [ASSEMBLY_N1] |
| L-242 | HOMONYM: Lemma P has several defining files; restatement (merge) or distinct — to review | Lemma P [S_A8_POS] |
| L-243 | HOMONYM: Lemma P has several defining files; restatement (merge) or distinct — to review | Lemma P [S_B20_LAMBDAJ] |
| L-244 | HOMONYM: Lemma P has several defining files; restatement (merge) or distinct — to review | Lemma P [THM37_FULL], T37-P4 |
| L-247 | HOMONYM: Lemma P_exp has several defining files; restatement (merge) or distinct — to review | Lemma P_exp [S_WC_EXPGAUGE] |
| L-248 | HOMONYM: Lemma P_exp has several defining files; restatement (merge) or distinct — to review | Lemma P_exp [WC_FULL] |
| L-259 | HOMONYM: Theorem R2 has several defining files; restatement (merge) or distinct — to review | Theorem R2 [S_T2_R2REM] |
| L-260 | HOMONYM: Theorem R2 has several defining files; restatement (merge) or distinct — to review | Theorem R2 [U3_LEMMA51_R23] |
| L-264 | HOMONYM: Lemma S has several defining files; restatement (merge) or distinct — to review | Lemma S [H1_ANALYTIC] |
| L-265 | HOMONYM: Lemma S has several defining files; restatement (merge) or distinct — to review | Lemma S [S_A15_LOC] |
| L-266 | HOMONYM: Lemma S has several defining files; restatement (merge) or distinct — to review | Lemma S [S_A8_POS] |
| L-267 | HOMONYM: Lemma S has several defining files; restatement (merge) or distinct — to review | Lemma S [S_HTHR] |
| L-268 | HOMONYM: Lemma S has several defining files; restatement (merge) or distinct — to review | Lemma S [S_MA] |
| L-269 | HOMONYM: Lemma S has several defining files; restatement (merge) or distinct — to review | Lemma S [S_P254_TRANSFER] |
| L-270 | HOMONYM: Lemma S has several defining files; restatement (merge) or distinct — to review | Lemma S [THM37_FULL], T37-P5 |
| L-279 | HOMONYM: Theorem SM has several defining files; restatement (merge) or distinct — to review | Theorem SM [S_A10_LOWER] |
| L-280 | HOMONYM: Theorem SM has several defining files; restatement (merge) or distinct — to review | Theorem SM [S_GGAIN_NONMONO] |
| L-281 | HOMONYM: Theorem SM has several defining files; restatement (merge) or distinct — to review | Theorem SM [S_SM] |
| L-282 | HOMONYM: Lemma T has several defining files; restatement (merge) or distinct — to review | Lemma T [ASSEMBLY_N1] |
| L-283 | HOMONYM: Lemma T has several defining files; restatement (merge) or distinct — to review | Lemma T [H1_ANALYTIC] |
| L-284 | HOMONYM: Lemma T has several defining files; restatement (merge) or distinct — to review | Lemma T [S_C_CONDITION] |
| L-285 | HOMONYM: Lemma T has several defining files; restatement (merge) or distinct — to review | Lemma T [S_HTHR2] |
| L-286 | HOMONYM: Lemma T has several defining files; restatement (merge) or distinct — to review | Lemma T [S_P253_P275] |
| L-307 | HOMONYM: Theorem W has several defining files; restatement (merge) or distinct — to review | Theorem W [THEOREM2_PROOF] |
| L-308 | HOMONYM: Theorem W has several defining files; restatement (merge) or distinct — to review | Theorem W [U3_AW] |
| L-314 | HOMONYM: Theorem WC has several defining files; restatement (merge) or distinct — to review | Theorem WC [S_A16_REPLACE2] |

### Occurrence policy for homonyms and split labels (live files)

- Theorem K: L-009 (KAPPA_BOUNDED, paper thm:L009) and L-204 (B2_TWOSTEP). Every live occurrence was mapped to L-009; L-204 has no live use. Probable restatement: merge candidate.
- Lemma D′: L-004 (paper lem:L004; plan's defining file KAPPA_BOUNDED; the source is LEMMA_DPRIME.md) and L-145 (THEOREM2_PROOF). Every live occurrence was mapped to L-004.
- Lemma D″: L-005 (THEOREM2_PROOF, paper lem:L005), L-147 (INFINITE_VOLUME_IV12), L-148 (KAPPA_BOUNDED). Live occurrences went to L-005, except infinite-volume contexts (L-147).
- Theorem B_PW (L-103) is the paper's name for BETA_FP_PW Theorem B (L-088). Live occurrences were mapped to L-088; L-103 has no live use. Merge candidate.
- Theorem B: L-003 (paper Target 2 theorem), L-088 (BETA_FP_PW, Route B), L-089 (BETA_FP_U), plus the MPT_STEPC and THEOREM2_PROOF homonyms; assigned per sentence.
- Lemma CT: L-125 (SOURCES_A1_KERNEL, kernel form, Combes–Thomas), L-124 (A1_WALK_FULL, μ-weighted), L-126 (WC_FULL); assigned per sentence and per Lean source file.
- Lemma T: L-284 (SOURCES_C_CONDITION, torus side / cut-off χ(d/D_0)), L-283 (H1_ANALYTIC majorant), L-285 (SOURCES_HTHR2 tail factor), L-286 (SOURCES_P253_P275), L-282 (ASSEMBLY_N1, no live use).
- Lemma C, Lemma N, Lemma S, Lemma P, Lemma E, Lemma G, Theorem L, Theorem WC, Theorem A3, Theorem W, Lemma M, Lemma A: assigned per sentence by the file the sentence names (WG_FULL, A18_REGULAR, D4D5, A2_R2, A7_CDC, A8_POS, WC_EXPGAUGE, WC_FULL, U3_AW, MJ_REST, …).
- Lemma G3: L-174 (SOURCES_G3) for generic uses; L-175 (SOURCES_G3_N2) where the text names the G3_N2 file. Probable restatement.
- Theorem LOC: L-026 (SOURCES_A15_LOC, paper thm:L026) for live uses; L-214, L-215 (infinite-volume files) unused in live files.
- Proposition A15-N: L-024 (SOURCES_A15_LOC, paper prop:L024) and L-064 (SOURCES_A15_WHOLE). Theorem A1-W: L-017 (A1_WALK_FULL) and L-063 (SOURCES_A1_WALK).
- No registry id (not in the mapping, kept as names): Lemma D and Lemma S of SOURCES_A8_POS / SOURCES_G3_N2 as used by Lean ComplexGaussian (`lemmaD_core`, `lemmaS_form` carry no tag); plural lists "Lemmas D, E", "Lemmas D′/D″", "Lemmas S, G, T" keep their names.
- Split labels: (S) → K-018 (Theorem 2w smallness, old C17) or R-045 (source-bound uniformity, old B21); the symmetry (S) of SOURCES_LOC and the label (S) of SOURCES_D4D5 stay unprefixed. (M1) → K-025 (block size M ≥ M_req, old C24) or H-035 (A16 list completeness, old I-35). (H-hol) → R-040 (small field) or R-041 (large field); a generic use is written "R-040/R-041 (H-hol)". (U) → K-024 only for the unit-scale condition ρ_1 ≤ c_* r_0/M^a (old C23); the Route B hypothesis (U) of BETA_FP_U and the uniqueness (U) of CMP 102 Prop. 6 stay unprefixed.
- (B2), the two-step bound of B2_TWOSTEP, is not in the mapping; it stays "(B2)" and is not ledger row R-026 (PI). The Route B item list B1–B8 of THEOREM2_PROOF_v4 also stays local.
- Id-shaped labels (H-181 … H-254, old "H-4nn" block of the plan) carry the id only where the sentence uses the home file's meaning. Examples: (I3) H-209 = WG_FULL (I3) (rate); the Peierls input (I3) of SOURCES_T2_PI / SOURCES_T2_I3 stays "(I3)". (I1), (I2) H-207, H-208 = SOURCES_T2_PI; WG_FULL (I1) and H1_ANALYTIC (I1) stay local. (K1)–(K3) H-215, H-217, H-218 = the δ/θ/M conditions of SOURCES_T2_KAPPA2 and the canon; the window inputs (K1)–(K3) of SOURCES_T2_KUNIF / Theorem K stay local. (N1), (N2) H-224, H-225 = SOURCES.md (A5 reduction); A1_WALK_FULL (N0)–(N4), SOURCES_A2_R2 (N1), and the neutral sector (N2) stay local, except (N3) H-226 = A1_WALK_FULL. (H1), (H4) H-204, H-206 = A1_WALK_FULL; THM37's (H1) stays local. (G1) H-194 = BETA_FP_LEMMA43 only. A reviewer may split these ids.

