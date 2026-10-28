# CLOSURE_PLAN — what keeps Theorem 2w (then Target 2) a reduction

Date: 2026-10-28. Planning only, no derivation. Sources read: TRUST_LEDGER.md (full), SOURCES_ORDER_CANON.md Part B, headers/ledgers of A1_WALK_FULL, WG_FULL, WC_FULL, and the SOURCES_* files named in the binding-set rows. Firewalled files not read.

Status: IN PROGRESS. Sections are appended one at a time.

## 0. Scope and grading

Target chain. Theorem 2w (T1, THEOREM2_PROOF_v4 §1.3) ⇒ hypotheses of CMP 122 II Theorem 1 (A13) ⇒ Target 2 (T2, finite-torus OS limits in compactness form). The binding sets are TRUST_LEDGER §5 round 7: T1 = {A5} + B1–B7 + X5 with C3, C4, C17, C22; T1 ⇒ Theorem 1 adds A11, A13, A15, B8, B10, C28–C37, C42; T2 adds the rest of Group A (17 rows), B11–B22, X2–X4, C38–C42.

What "close" means here. An item is closed when one of these holds:
- (A) it is a published theorem with a full printed proof, and we accept it as published mathematics;
- (B) it is a printed sketch, and a paper-grade write-out exists and has passed a verifier;
- (C) it is an unproved assertion, and a new proof exists and has passed a verifier;
- for readings [I]: a page-image read turns it into [V], or an independent proof makes the reading unnecessary.

Effort scale (from the three FULL write-outs). A1_WALK_FULL (≈ 82 KB, ≈ 25 pages), WG_FULL (≈ 71 KB, ≈ 22 pages), and WC_FULL (≈ 78 KB, ≈ 24 pages) each took one write-out, one verifier, one fix pass, and one regrade: about 4–6 Opus agent runs and 3–5 agent-hours each. Today's pace: about 70 Opus agents closed about 25 items in about 14 h, so about 2.8 agents and 0.56 wall-hours per item, with parallel runs. I use these units below:
- S (small): one read or reading check, 1 agent + 1 verifier, ≈ 1 agent-hour.
- M (medium): a 3–8 page write-out, 2–3 agents, ≈ 3 agent-hours.
- L (large): a 15–25 page write-out at FULL grade, 4–6 agents, ≈ 6 agent-hours.
- XL: a new proof with no printed template, ≥ 8 agents, ≥ 12 agent-hours, uncertain outcome.

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0.1 Inputs read (headers and ledgers)

- A1_WALK_FULL §0, §9, §10 (IN1–IN21) and fix notes F1–F6, regrade notes. Residual inputs: IN1 (W_G), IN2 (W_G1), IN3 (C), IN4 c_{−,1}, IN5 CMP 96 Lemma 2.1, IN8–IN12 [I], IN13 regular class (A18), IN16 (WC inputs), IN17 CMP 99 Thm 3.4, IN18 complex (W_G); open [I] items F4 (θ-monotonicity of Σ), 6.9a set form of (B2-T) (not re-verified).
- WG_FULL §0 (I1)–(I7), §7, §8 ledger. Inputs: CMP 99 Thms 3.10, 3.7 + Cor. 3.8 (by reference to CMP 95 Prop. 1.2, CMP 96 Prop. 2.2), 3.9; CMP 96 Lemma 2.1 under (2.59); (3.36) + J-bound; A1-W for G_1; [I] C0, (I7) Q-locality, ι-domain assignment, C^{(2)}/K_b locality, M_1-cover [I/R, CMP 116 p. 3].
- WC_FULL §0.9, §8, §9 ledger. Inputs: R1 (W_G1), R2 complex walk form of G (Thm 3.4 + 3.10), R3 A3 inputs (A3-R1, R-Δ′, R-Δ2, A3-R2′ = CMP 98 (139), A3-R3, A3-R4), R4 CMP 109 p. 254; C1 (C) for G, C2 c_{−,1}; I1–I9.
- (C) source: SOURCES_A1_KERNEL §8–§9; SOURCES_QE_KE_HQ_VERIFY (4); SOURCES_QE_INV_VERIFY (torus); SOURCES_S2_FORM(_VERIFY), SOURCES_S2_G1_V7(_VERIFY); SOURCES_A7_CDC_VERIFY (b2).

## 1. Table 1 — [R] inputs: Balaban printed theorems and sketches the chain rests on

Print level: FULL = proof printed in full; SKETCH = proof sketched or "by reference"; ASSERT = statement only ("similarly", "not repeated", "we can prove", "in the same way"). Plan: A = accept as published; B = write out the sketch; C = new proof. Effort in the §0 units. "Rows" = TRUST_LEDGER rows that use the item.

### 1a. Propagator layer (CMP 95, 96, 98, 99)

| # | item | print level | rows | plan | effort |
|---|---|---|---|---|---|
| R1 | CMP 99 Thm 3.10: walk expansion of G_0, (3.107)–(3.108) | SKETCH, ≈ 1.5 pp (pp. 414–416; p. 409 "sketch them rather briefly") | A1w (IN1 via WG-G), A2 (R1), A7, A16, A1 (Thm 3.3 closes through it) | B. Covariant write-out of CMP 96 Prop. 2.2's random-walk construction in a regular background | L, ≈ 6 h |
| R2 | CMP 99 Thm 3.9: walk expansion of C′ = (Q′G′²Q′*)^{−1}, (3.98)–(3.99) | SKETCH, ≈ 2.5 pp (pp. 411–413) | same as R1 (through V = −Δ′_π and P) | B | L, ≈ 6 h |
| R3 | CMP 99 Thm 3.7 + Cor. 3.8: walk expansion of G′, (3.90), (3.94) | SKETCH by reference: "exactly the same as in proofs of Prop. 1.2 [CMP 95] and Prop. 2.2 [CMP 96]"; per-walk bound (3.91)–(3.94) printed | same as R1; closes Thm 3.1 | B. Write the covariant version of the CMP 95/96 proofs; templates are FULL | M–L, ≈ 5 h |
| R4 | CMP 95 Prop. 1.2; CMP 96 Prop. 2.2 (U = 1 templates of R3) | FULL (U = 1) | through R3 | A | 0 |
| R5 | CMP 96 Lemma 2.1: c_1(κ) under (2.59) | FULL | A1w (IN5), WG (I4), every Schur step | A | 0 |
| R6 | CMP 96 Lemma 2.4 (free block lower bound) | FULL statement; proof step (2.126)–(2.127) FALSE for L ≥ 10 | A3 | Closed already: re-proved with m_L (SOURCES_A3_GAMMA0_FULL, verified; Lean SlabCounterexample) | 0 |
| R7 | CMP 99 Thm 3.4: G′, C′, R, G analytic for α_1 ≤ a_1, "satisfy all the inequalities of Thms 3.1–3.3" | statement [V] p. 400; proof extent not recorded | A1w (IN17, IN18), A2 (R2), A7 complex clause, A8 | First S: read the proof pages. If FULL, A. Complex walk form = Thm 3.4 + R1–R3 at complex U: B, add ≈ 3 pp to the R1–R3 write-outs | S + M, ≈ 4 h |
| R8 | CMP 99 Thms 3.1, 3.3 (bounds on G′, G_0, G) | FULL as statements; proofs close through R1–R3 (p. 410, p. 416) | A1 (via Lemma CT (K)), A3, A4 | Closes when R1–R3 close | 0 extra |
| R9 | CMP 99 Thms 3.11–3.12 (G_1 > 0; Thm 3.3 for G_1 via (3.138)) | statement [V]; proof pp. 423–424 rests on (3.132) "assumed" (p. 426) | A3 (A3-R1), A1 (K for G_1), A4 (N1), A18 | B for the Schur step of A3-R1 (≈ 2 pp); the (3.132) dependence is closed by A1-W | M, ≈ 3 h |
| R10 | CMP 99 p. 422 (3.132) and (3.133): "We will not repeat these considerations" | ASSERT | A1 (kernel form), A4 (N1), A18 (J-term) | Closed by our Lemma CT + A1-W, conditional on (C) (Table 4). No separate work | 0 (rides on Table 4) |
| R11 | CMP 99 p. 422 "Theorem 3.10 holds also because we replace each operator in (3.130) by its random walk expansion"; p. 423, p. 427 (G_1 trees) | ASSERT (one sentence each) | A1w, A2 | Closed by WG_FULL Theorems WG-G, WG-G1 (paper-grade, verified) | 0 |
| R12 | CMP 99 Thm 3.15, (3.185)–(3.187); Ğ_2 p. 432 | ASSERT ("analyzed in the same way") | none now: WC_FULL §8 does not use them | none | 0 |
| R13 | CMP 99 (3.134)–(3.137): Δ^{(2)} form and local bound (R-Δ2) | FULL as printed bounds; Schur step to ℓ² not written | A3 (R-Δ2), A2 (R3), C2 of (C) | B: one Schur lemma; RDELTA2 brief never delivered | S–M, ≈ 2 h |
| R14 | CMP 99 (3.10) + (3.35): R-Δ′ (relative bound of Δ′) | printed; D^1 normalization read, not checked | A3, A2 (R3) | S: image read of the normalization | S, ≈ 1 h |
| R15 | CMP 98 (139) one step; (124)–(125), (139)–(146), Prop. 2 | FULL (inductive, CMP 98 pp. 35–40) [R, not re-read line by line] | A3 (A3-R2′), A18 (Lemma Q, Lemma C), (H_Q) of (C) | A, after one line-by-line check of (144)–(145) (already matched in QE_KE_HQ_VERIFY) | S, ≈ 1 h |
| R16 | CMP 98 / CMP 96: Q_j straight-line form (CMP 95 (1.11)/(1.18), CMP 96 (2.7), (2.35)) = (KE′) | FULL [V] | (C) | A | 0 |
| R17 | CMP 99-reg Prop. 6 (regular class from the plaquette class) with Thms 2, 4 | FULL proof printed (pp. 83–97) [R, not checked] | A18 (alternative route) | A | 0 |
| R18 | CMP 99 p. 428: "we can prove it for C*Δ_kC with an arbitrary U" (A3) and "uniform exponential decay of C*Δ_kC" (A7 premise) | ASSERT | A3, A7 | Closed by SOURCES_A3_GAMMA0_FULL and SOURCES_A7_CDC (verified), relative to the rows above | 0 |
| R19 | CMP 99 p. 428 R5: A_x(y) = T(y), pointer to [4] (2.154)–(2.155) | printed pointer [R] | A3 | S: image read | S, ≈ 1 h |

### 1b. RG layer (CMP 102, 109, 116, 119, 122)

| # | item | print level | rows | plan | effort |
|---|---|---|---|---|---|
| R20 | CMP 102 Thm 1 (9)–(10): minimizers for minimal configurations; B_3 = B_3(d, L) | FULL [R, not re-read]; "(9) β_0 = 1" read as misprint [I] (C27) | A18 (inclusions), A4, N8 k-uniformity | A, plus one S image read of (9) | S, ≈ 1 h |
| R21 | CMP 102 Props. 3–4 (proved; use N1 = (3.132)) | FULL | A4 (shared input), A19 trace | A | 0 |
| R22 | CMP 102 Prop. 6 ((U), uniqueness) | FULL [V statement] | A15 (Loc) | A | 0 |
| R23 | CMP 102 p. 308 (189): "We do not perform these calculations here" | ASSERT | A4 ⇒ (H−) ⇒ B17; A13 (via "(190) [15]") | Closed by SOURCES_A4_D189 (verified) relative to A1, R20–R21, A18, and the (90)–(97) bookkeeping [I] | M for the bookkeeping write-out, ≈ 3 h |
| R24 | CMP 102 Prop. 9 p. 309: (190) restated; analyticity of 𝓗 in B | statement; (190) from (189) | A4, A19, D2C (D), CMP 109 p. 263 | Rides on R23 + Table 2 (A19 readings) | 0 extra |
| R25 | CMP 102 pp. 271–272: [16] determinant expansion | printed; domain assignment for closed walks unprinted (C35) | A15 (Loc) | Table 3 (C35) | — |
| R26 | CMP 109 p. 254: "all results of the paper [12] are valid for it. The proofs are in most cases unchanged" | ASSERT | A2 (R4), A3, A7, A8 (via WC_FULL), I3 | B: check that each CMP 98/99 result used here survives the symmetric average (0.4), (0.12). The uses are finite: Q, Q*, H_1, G_1, (QG_1Q*)^{−1}, Q̃, A3-R2′. Most proofs use only locality, linear part, and the (139) step | M, ≈ 4 h |
| R27 | CMP 109 p. 263 (1.18) sup bound; "absolute constants" | statement [V]; proof is CMP 116 pp. 1–22 | A15 (Bd), A5 N6, N8 | A as the published sup induction (CMP 116), modulo the ASSERT items it cites | 0 |
| R28 | CMP 109 pp. 263–264: A5 inductive assumption (smoothness of β, Z^d limit) | ASSERT ("We will investigate other properties in a separate paper") | A5 | Closed for T1 use by H0-red (verified) relative to N1–N9; Z^d limit by A15-N + (Loc) | 0 |
| R29 | CMP 109 Sects. 3–5 bounds: (3.32), Lemma 4, (3.54), (4.3)–(4.5), (4.14)–(4.37), (5.42)–(5.44), p. 298 | FULL as computations, per-term constants K_T unprinted (A10′ R1) | A10′ ⇒ SM, (Eps), Lemma HH | A, with K_T and the (4.5) tail constant named (A10′ R1, R4) | S, ≈ 1 h |
| R30 | CMP 109 p. 280: induction closure "much bigger than E_0" (A14) | ASSERT, constant unspecified | inside A13 only | B: one-page constant chase from (3.54) E_0α_3^{−5} | S–M, ≈ 2 h |
| R31 | CMP 116 pp. 8–9: (1.24) "bounded similarly", (1.29) "other terms" (A10) | ASSERT | SM Fact A, (Eps), F2′, Lemma HH, GGAIN hop | Closed as A10′ (verified) except R2: R- and C-terms "by mechanism" | M, ≈ 3 h (write out R, C terms) |
| R32 | CMP 116 Lemma 1 (1.34)–(1.36), absolute C_1, C_2, q | FULL statement [V]; proof printed | GGAIN, A17 | A | 0 |
| R33 | CMP 116 (2.15)–(2.25) chain; (2.16) for R_1 FULL, "R_2, R_3 satisfying (2.16)" ASSERT | mixed | G3 (N2), LOC, B13 | R_2, R_3 closed by WC_FULL (A2). The chain itself: A, read as pointwise exponent bounds [I] (Table 2, I-G3) | 0 |
| R34 | CMP 116 p. 15: complex case "handled by a perturbative argument" | ASSERT | A8 | Closed by SOURCES_A8_POS (verified) relative to I-a–I-e | 0 |
| R35 | CMP 116 p. 13 (2.7): C*Δ_kC series "if γ_1 is sufficiently large"; walk expansion "discussed in [13]" | ASSERT | A7, A1w | Closed by A7_CDC and WC_FULL | 0 |
| R36 | CMP 116 p. 3: walk domains on M_1-cubes "instead of M"; s-rule | ASSERT (M_1 version) | WG (M_1-cover [I/R]), A1w, A8 (I-b), C37 | B: show (3.35)–(3.36) at scale M give Thms 3.7–3.10 hypotheses on M_1-cubes. Short once R1–R3 are written | S, ≈ 1 h (inside R1–R3) |
| R37 | CMP 116 p. 2: "in exactly the same way" (C33, other term classes) | ASSERT | A15 (Loc) ⇒ A5 Z^d limit, B8 | B: list term classes of CMP 116 §1–§2 and run the (Loc) induction for each | M, ≈ 4 h |
| R38 | CMP 116 §2 printed conditions (23 + 4), Lemma 2, (1.36), (2.5)–(2.6) | FULL statements | B17 (M-C) | A | 0 |
| R39 | CMP 116 (2.27) tree bound; (2.33)–(2.41) | FULL [V] | A23, G3 | A | 0 |
| R40 | CMP 119 (2.6)–(2.9) and p. 256 "similar inequalities hold for other constants" (A11) | statements FULL; p. 256 ASSERT | B10 sweep | Closed as verified list (A11 + addendum) | 0 |
| R41 | CMP 119 p. 278: small-field terms "do not depend on Λ_{k+1}" (A15) | ASSERT | A15, B8 | Closed relative to C32–C37 (Table 2/3) | 0 |
| R42 | CMP 119 Sect. 3 (T-step): 10δ printed; ≤ 3δ unprinted; R1 count sketch; R3 the H′(Z_0) assertion (A23) | SKETCH + ASSERT | A23 ⇒ B22 ⇒ B-S (T2 only) | B: write the count (R1) and prove H′(Z_0) (R3) | M, ≈ 4 h |
| R43 | CMP 122 I Prop. 1 (1.78), (1.80); Sect. 1 thresholds | FULL [R] | A18 (Prop. I-122), A11 addendum | A | 0 |
| R44 | CMP 122 II p. 383 block bound (1.77)–(1.78) (p_1 misprint) and (1.79)–(1.98) R-step | FULL statements | B15, B19 (FX), B17 | A; B15's M2′/M4/M5 are ours (Group B, not here) | 0 |
| R45 | CMP 122 II Theorem 1 (A13) | published proof, conditional on g_k ∈ ]0, γ] | T1 purpose, T2 | A, modulo the ASSERT items above that sit inside it (A14 = R30, A17, A18, C33 = R37) | 0 extra |
| R46 | [14] construction U_j(□_0, ·) (CMP 109 p. 276 "depending on U restricted to the cube □_0") | printed reference; [14] not re-read | A15 (C32) | Table 2 (C32) | — |

Table 1 size: 46 entries. 28 are closed already (FULL and accepted, or closed by our verified write-outs). 18 need new work: R1, R2, R3, R7, R9, R13, R14, R15, R19, R20, R23 (bookkeeping), R26, R29, R30, R31, R36, R37, R42. Seven of the 18 are S-size page reads (R7 first half, R14, R15, R19, R20, R29, R36). Of these, the load-bearing write-outs are R1–R3 (all of A1w, A2, A7, A16 rest on them), R26 (every WC_FULL use of CMP 98/99 in CMP 109's setting), R37 (C33), and R42 (A23, T2 only).

## 2. Table 2 — [I] readings across the chain

Plan codes: IMG = page-image read can make it [V]; PRF = an independent proof removes the need for the reading; CON = it is really a convention (move to Table 3); DONE = already [V] or [P] per a verifier. Effort S unless marked.

### 2a. Propagator layer (A1_WALK_FULL, WG_FULL, WC_FULL, A7, A3)

| # | reading | page / source | two meanings | plan |
|---|---|---|---|---|
| I-01 | IN8 / WG cube geometry (G): cover 𝒟, cores, h_□, □⁺, C_𝒟, C_ov; set form of (B2-T), C_𝒟^{(1)} (6.9a Fix A) | CMP 99 p. 408 (𝒟, h_□); A1_WALK_FULL 2.1, 6.9a | Balaban's 𝒟 is a specific cube cover with his constants vs any cover with the stated counts | PRF: define our own cover (tent family on aℤ^d, as in the §7.3 proof, c(d) = 1) and prove the counts. Then Balaban's cover is not needed. M, 3 h |
| I-02 | IN9 O2: Lipschitz bound c_h/M_1 of h_□ across scale boundaries | CMP 99 (3.89) analogue | holds across Ω_j interfaces vs only inside one scale | PRF together with I-01 (our own partition). Inside I-01 |
| I-03 | IN10 / WG (I7) / WC I2 / A4 N2: Q, Q*, Q′, D, R_b, C̃^{(2)}, K_b, C_j local with finite range c_loc | CMP 98 (14)–(15) contour supports; CMP 99 (3.136); CMP 109 p. 267 | finite range vs exponentially decaying (pseudo-local) | IMG first (CMP 98 contour definition, CMP 109 (0.4) average); if only decaying, PRF: Lemma C concatenation absorbs exponential tails at a rate cost. M, 3 h |
| I-04 | IN12 / canon B9: κ_1 independent of M | CMP 116 p. 5 "δ_1M ≥ κ_1"; CMP 109 Thm 3 order | κ_1 fixed before M vs κ_1 = κ_1(M) | IMG: CMP 109 Thm 3 quantifier order and CMP 116 p. 5. S |
| I-05 | WG C0: scale bookkeeping (L^jη)^{±} carried by m and S | CMP 99 (3.42)–(3.47), (3.131), p. 398 rule | Balaban's mixed norms compose as our kernel norm vs not | PRF: C0 is written out for Ĵ (WG 5.5); write it once in general (≈ 2 pp). M, 2 h |
| I-06 | WG ι-domain assignment (2.5) | none printed | any assignment with locality vs Balaban's (unprinted) | CON (Table 3 C-new-1); consistency = locality, already [P] given I-03 |
| I-07 | M_1-cover [I/R]: (3.35)–(3.36) at scale M give Thms 3.7–3.10 on M_1-cubes | CMP 116 p. 3 | M_1-version is automatic vs needs its own proof | PRF inside the R1–R3 write-outs (Table 1 R36) |
| I-08 | F4: Σ and θ-dependent constants monotone in θ (so M_min values stay valid) | A1_WALK_FULL 9.1 step 3 | monotone vs not | PRF: one-line from the Σ definition for Σ; for b_G, c_G, δ_G take sup over θ ≤ θ(M_min). S |
| I-09 | WC I1 / A7 I1: (2.11) = (3.156) + G^{(2)} term, term by term (D̃^{(2)} = hC̃^{(2)}) | CMP 109 p. 267 (2.10)–(2.11), CMP 99 (3.156) | the two quadratic forms agree vs differ by a gauge or constraint term | IMG + algebra check on both pages (EXPGAUGE-VERIFY V3, V9 found no conflict). S–M, 2 h |
| I-10 | WC I3 / A7 I3 / A18 I3: Q̃ (CMP 109) = Q_1(U_1) (CMP 99); blocks of (0.14) = blocks of Q̃; V^{(k)} = U_1 | CMP 109 (0.4), (0.12), (0.14), (2.5); CMP 99 §E | same operator vs same up to the symmetric-average change | Ties to R26 (p. 254). PRF: prove the needed properties for CMP 109's Q̃ directly. Inside R26 |
| I-11 | WC I4 / A3 R2: Q(U) = Q_free(1 + O(α_0)) uniform in k | CMP 98 (139) one step | — | DONE as A18 Lemma Q [P given CMP 98 [R]]; residue [I-Q1] axial bound kept by Ū^j: IMG of CMP 98 (42). S |
| I-12 | WC I5 / IN11: WG-1 J-junction factor needs α_0 ≤ c″M^{−1}M_1^{−12} | WG_FULL 4.7 | condition vs reading | CON: it is an admissible α-condition (canon B22). Closed |
| I-13 | WC I6: dist(Z_0, Λ_k^c) > RM | A3 §0.1; CMP 116 p. 12 | needed vs vacuous | DONE: vacuous on the torus (Λ = T, SOURCES_A16_REPLACE2_VERIFY p. 12 read) |
| I-14 | WC I7: tilde convention of CMP 99 used on CMP 116 p. 13 | CMP 99 pp. 411, 413; CMP 119 p. 245 | ℓ^∞ layer vs other | DONE [V + P] (SOURCES_WC_RESIDUE) |
| I-15 | WC I8: smoothness/analyticity of the mean M near 1; Karcher property | CMP 109 (0.5)–(0.10) | Federbush mean only vs any admissible mean | PRF: done for Federbush's mean (Lemma G(b)); declare that mean (CMP 109 fixes it). Closed by declaration |
| I-16 | WC I9 / A18 [I-J]: J local, |J| = O(Mα_0) | CMP 99 (3.36), p. 419, p. 422 | [V] for CMP 99; CMP 109 J-form differs by O(ε_0²) | DONE except the CMP 109 form: A18 5.2 [P]. S check |
| I-17 | A7 C2 G_1 step: c_−(G_1) ≥ c_−(G)(1 − O(Mα_0)) "from (3.137) via Schur" | A1_KERNEL §9 | holds with the stated form vs needs symmetric Δ^{(2)} | PRF: SOURCES_S2_G1_V7 closed symmetry [P, one I-conv]; write the Schur step. Merges with R13. S |
| I-18 | S2_G1 I-conv: δ/δA is the gradient for ⟨·,·⟩ of (3.3); Δ^{(2)} "determined by" a form = symmetric part | CMP 99 (3.134), (3.136) | symmetric vs non-symmetric operator | IMG: the verifier calls this forced (any other reading leaves Δ^{(2)} undefined). S |
| I-19 | A3 R4 / A3-R4: c_J′ = c(d, L)Mα_0 for the J-term of (3.156) | CMP 99 (3.156) | — | DONE by A18 6.4 given (3.133) + I-03 |
| I-20 | complex s, complex U clause of A7 (P-sketch) | A7_CDC | — | not a reading; PRF write-out, M, 3 h (listed in §5) |

### 2b. Covariance, RG, and sourced layers

| # | reading | page / source | two meanings | plan |
|---|---|---|---|---|
| I-21 | A8 I-a: operators defined by quadratic forms are their symmetric representatives | CMP 116 p. 15; CMP 99 (3.3) | symmetric part vs the literal (possibly non-symmetric) operator | IMG (same check as I-18). S |
| I-22 | A8 I-b / s-rule reading: C^{(k)}(Z_0, σ) is the σ-weighted walk sum of A_Z^{−1}; "domains can be chosen to a large extent arbitrarily"; the s-rule acts walk by walk on (2.7) (C25 residue, G3 (iv), A16 s-version choice) | CMP 116 pp. 3, 13; [13] = CMP 99 Thm 3.15 (not used) | the s-version is defined on Balaban's [13] expansion vs on any walk expansion with (L1)–(L2) | CON + PRF: declare the s-version on the WC_FULL expansion (Table 3, C-new-2) and prove that every consumer (A13 Lemma 1, (2.15)–(2.25), A16) uses only (L1)–(L2), the bounds, and analyticity. M, 4 h. This is the single most reused reading |
| I-23 | A8 I-c: geometry (G1)–(G3): dist(σ_0, Z_0) ≥ M, domain diameters ≤ c′M_1, cube count | CMP 116 pp. 3, 13 | — | PRF with I-01. S |
| I-24 | A8 I-d: walk count finite at rate ε″/8 | WC (ii) counting | — | PRF: one lemma from WC 5.6 counting. S |
| I-25 | A8 I-e: "Re C^{−1}" in (2.15) is the symmetric real part; dμ_C for non-symmetric C by the density formula | CMP 116 p. 16 (2.15) | Hermitian part vs entrywise real part | IMG; A8 already proves the majorant for the Hermitian-part reading; check the other gives the same bound. S |
| I-26 | G3 (iii): (2.15)–(2.25) read as pointwise exponent bounds; (vii) bounds hold on the closed small-field set | CMP 116 pp. 16–18 | pointwise in B vs integrated | IMG (300 dpi) of pp. 16–18. S |
| I-27 | G_Γ ≤ Ḡ uniform in M (C25 closure) | SOURCES_G3_GGAMMA 4.1, canon B17 "[I, unverified]" | M-free vs growing in M | PRF: G3_GGAMMA has a verifier file; re-verify 4.1 specifically. S |
| I-28 | A10′ R2: R- and C-terms obey (1.29) "by mechanism" | CMP 116 pp. 9–11; CMP 109 (3.7) | mechanism suffices vs needs own bound | PRF: write the two bounds (Table 1 R31). M |
| I-29 | A10′ R4: (4.5) tail constant from (4.3)–(4.4) | CMP 109 (4.3)–(4.5) | — | IMG. S |
| I-30 | A17 reading R1: "|B| on Y" in (1.34) = per-bond sup; C = identity on the kept bonds | CMP 116 (1.34), (2.3); CMP 99 (3.41) | sup norm vs a norm with derivative terms | IMG; the verifier calls it forced by (2.3). S |
| I-31 | A19 (a): (189) holds at complex B | CMP 102 p. 308 | real only vs complex too | PRF: SOURCES_A4_D189 proves (189) by our route; extend its §5 to complex B (all inputs are printed on complex sets per A17_A19 §4). M, 3 h. Fallback exists: two-constants theorem on half the ball |
| I-32 | A19 (b): (73) complex clause | CMP 102 (73) | — | same as I-31 |
| I-33 | A19 (c): the (172) ball |B(b)| < 2C_1ε_1 is per-bond sup | CMP 102 pp. 306–307 | per bond vs global norm | IMG. S. Fallback (ω = 0.4097) removes the need |
| I-34 | A19 4.1(f): propagator lemmas are B-independent | CMP 102 Sect. 3 | — | IMG. S |
| I-35 | A16 (M1): the Q1–Q11 list is complete (every property of C^{(k)} that CMP 116 uses) | CMP 116 pp. 12–17; p. 1 "quite general" | complete vs a property is missing | PRF: line-by-line scan of CMP 116 pp. 12–22 for every use of C^{(k)}; tick each against Q1–Q11. M, 3 h |
| I-36 | A16 (S_H): scale normalization of D_S, J_S in the k-scale norm | SOURCES_A16_REPLACE2 §2 | C0-type, as I-05 | PRF with I-05 |
| I-37 | A16 Ω-setting volume convention (CMP 122) | SOURCES_A16_REPLACE2 4.1 | — | CON (Table 3, C-new-3) |
| I-38 | A18: U_{k,Z} obeys CMP 102 Thm 1; B and B_5 fixed numbers; R_1 < L | CMP 122 I; canon B5 | — | IMG of CMP 122 I (1.78), (1.80) context and CMP 102 p. 279. S |
| I-39 | MA2 (C2): averaging map m analytic and local, so V′ enters with c_m | CMP 109 (0.4)–(0.10) | — | PRF from I-15 (Federbush mean is analytic near 1). S |
| I-40 | N6: CMP 116 step uses only g_k and sup E_0 (text-layer grep) | CMP 116 §1–§2 | no other coupling vs a hidden g_j | IMG: read §1–§2 on images for every coupling symbol. S–M, 2 h |
| I-41 | N8 (i): "absolute" = independent of X and j, applied to C_1, C_2, q, (1.39), unindexed O(1) | CMP 109 p. 263 [V]; CMP 116 (1.36), (1.39) | j-free vs X-free only | IMG for (1.39) (OCR only). S |
| I-42 | N8 (ii): C_Π j-free (localization geometry same at every j after rescaling) | SOURCES_T2_H0 C9 | — | PRF: scaling argument, half page. S |
| I-43 | A18 k-uniformity of CMP 102 constants C_2, C_4, B_0 | SOURCES_MA2_VERIFY l. 41 | — | IMG of CMP 102 statements (constants depend on d, L). S |
| I-44 | C32 (Cube): U_j(□_0, ·) of [14] uses only data on □_0 | CMP 109 p. 276; [14] = CMP 102 | — | IMG of [14] construction (CMP 102 is in balaban/). S–M, 2 h |
| I-45 | C36: "H_j with free boundary conditions" = the Z^4 operator | CMP 109 p. 290 | Z^4 operator vs Dirichlet/free b.c. on a box | IMG: the next sentence supports it. S |
| I-46 | B20 (Conv_Λ), Λ_j nesting | SOURCES_A15_BDRY | — | CON (Table 3, C-new-4). S |
| I-47 | B7 causality: step k+1 uses only g_0, …, g_k | CMP 109 p. 298 | — | IMG (same pass as I-40). S |
| I-48 | B4: KAPPA (1.1) b_{t,m} = §3.1 Moyal coefficients at σ = 0 | KAPPA_BOUNDED | — | CON (low risk). S |
| I-49 | B3 Step C gauge-fixing part | SOURCES_T2_F_STEPB | — | PRF (ghost part done). M, 3 h. Plus (L-LL) [UNSUPPORTED] and Lemma 1 — B3 is a Group B item, listed in §5 |
| I-50 | B17 (I-ε): unprinted α_2–α_4 (γ_2) scaling; q_0 > p_0 vs q_0 = p_0 | CMP 116, CMP 122 II | — | IMG + CON (pick q_0 > p_0; A18-3 then a γ condition). S |
| I-51 | B17 (I-V0): (I-lin), "Haar" | SOURCES_MC_IV0 | — | IMG. S |
| I-52 | C27: CMP 102 Thm 1 (9) "β_0 = 1" is a misprint | CMP 102 p. 279 | misprint vs Lipschitz claim | IMG (with R20). S. Harmless either way: any β_0^H ∈ (0, 1] works |
| I-53 | C34: M_1 not checked in (Conv) | SOURCES_A15_LOC | — | CON. S |
| I-54 | IEPS F fixed earlier (canon B26) | SOURCES_T2_IEPS_VERIFY §21 | — | IMG/order check. S |
| I-55 | B15: small-field analogue of CMP 122 (1.73) assumed; Lemma T transfer | SOURCES_HTHR | — | PRF; part of the B15 work (M2′/M4/M5), §5 |
| I-56 | B13 large field: coarea Jacobian on non-round level sets | GGAIN_LF 6.3 | — | not a reading: open estimate. PRF, M–L |

Table 2 size: 56 readings. 8 are DONE or closed by declaration (I-11 partly, I-12, I-13, I-14, I-15, I-16, I-19, and I-36 via I-05). 30 are S-size image reads or half-page checks. About 12 need a short proof (M). Three are open estimates that are not readings at all (I-20, I-49, I-56).
