# CLOSURE_PLAN — what keeps Theorem 2w (then Target 2) a reduction

Date: 2026-10-28. Planning only, no derivation. Sources read: TRUST_LEDGER.md (full), SOURCES_ORDER_CANON.md Part B, headers/ledgers of A1_WALK_FULL, WG_FULL, WC_FULL, and the SOURCES_* files named in the binding-set rows. Firewalled files not read.

Status: COMPLETE (2026-10-28). Planning only; nothing here is proved or verified. No other file was edited.

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

## 3. Table 3 — conventions C1–C42

Classes: (i) free parameter choice, admissible by SOURCES_ORDER_CANON (closed); (ii) fixes an unprinted part of Balaban's construction (needs a consistency proof: A13 must hold for the fixed construction); (ii*) changes a printed part of the construction (same need, stronger); (iii) substantive hypothesis in disguise. Readings that sit in Group C are sent to Table 2.

| C | short name | class | what closes it / what it hides |
|---|---|---|---|
| C1 | freeze thresholds at x* | (ii) for the sourced construction | consistency = (H-thr) B15 (frozen map vs running map). Open through B15 |
| C2 | Option B margin θ_W + τ_C ≤ 0.2 | (i) | closed; cost = smaller γ |
| C3 | L odd > 11; certification at L = 13 (also 15, 17, 21) | (iii) | hypothesis: "L ∈ {13, 15, 17, 21}" for (H2). Theorem 2w is proved only at certified L |
| C4 | SU(2), d = 4 | (iii) | hypothesis: G = SU(2). Lemma 5.1 charged/neutral split and (W) are SU(2) statements |
| C5 | canonical constant order | (i) | closed (verified twice, acyclic); F.2 open items: r_0^{exp} vs r (closed in B25), C_1^{FX} and κ ≥ 1536 not yet in the canon (S) |
| C6 | holomorphy radius ρ_0 | (i) | closed |
| C7 | cut on B vs B′ | closed reading | closed (A17 at r = 1) |
| C8 | sharp χ_k; smooth χ̂ fallback | (i) for the sharp cut | closed; the fallback would be (ii*) |
| C9 | χ_k threshold shrink | (ii*) | NOT NEEDED since A17 holds at r = 1. Action: delete from the chain; use C9′ only if a consumer needs r < 1 |
| C10 | adapted gauge-fixing weight 1/u_k(c) | (ii*) | consistency: A13's proof with the weight 1/u_k(c) in place of 1/g_k². Reduces to Balaban's at f = 0; the sourced Theorem 1 (B11) already re-runs the step, so the proof is part of B11, not separate |
| C11 | h ≡ 0 booking; freezing set S_X | (i) | closed (our construction) |
| C12 | additive source normalization | (i) | closed |
| C13 | main R-step form (1.90)–(1.98) | (i) | closed |
| C14 | κ_final, M ≥ 12L(3κ_final)^{1/d} | (i) | closed |
| C15 | 2p_1 − (d + 5)r_0 > p_0 | (i) | Balaban's own condition, satisfiable (canon B25) |
| C16 | 32ε′ ≤ 1, S ≥ 1, κ_0 > 2 | (ii*) as an extra ε_1 cap | consistency = the global ε_1 audit: every ε_1 condition in CMP 116–122 is an upper bound or of the form γ ≪ ε_1 (open per SOURCES_A17_A19_VERIFY). M, 3 h |
| C17 | (S): γ^{−2} ≥ c_sw D′ | (i) | closed (β_0 fixed before γ, A12) |
| C18 | ℓ even, thermal state, plaquette observable, subsequence limits | (iii) | hypotheses: thermal (periodic time), one observable, compactness form, no uniqueness. Not removable inside this project |
| C19 | coupling domain ]0, γ] | (i) | closed |
| C20 | Route K primary | (i) | closed |
| C21 | θ_* < 1 (Route B) | (i) | closed |
| C22 | g_0(K, g) any shooting solution | (iii) | hypothesis: limits may depend on the choice. Removable only by uniqueness of the shooting (not planned) |
| C23 | (U): ρ_1 ≤ c_*r_0/M^a | (i) | closed (verified compatible with B-N1) |
| C24 | M ≥ M_req (37 lower bounds) | (i) | closed (up-set) |
| C25 | (Hα) | (i) as an M threshold | closed given I-27 (G_Γ ≤ Ḡ re-verify) and I-22 (s-rule) |
| C26 | (Hγ), (2.31) γ condition | (i) | closed (γ-smallness) |
| C27 | β_H first in the order | (i) | closed; residue I-52 (misprint reading); GGAIN_BETAH unverified: S verify |
| C28 | M_2 slot | (i) | closed |
| C29 | M_2 ≥ 1/δ | (i) | closed |
| C30 | A_0 ≥ 80B_3A_1 | (i) | closed |
| C31 | (Vol): torus side ℓ > 22M final cells; even form ℓ = 2L^{m_T} | (iii), mild | hypothesis: "the physical torus side is at least 22M (≥ 2L^{m_T}) in final-scale units". Removes small tori. Stated in THEOREM2_PROOF_v4 §1.1; keep as a stated hypothesis |
| C32 | (Cube) | reading → Table 2 I-44 | — |
| C33 | (Cases) "in exactly the same way" | sketch → Table 1 R37 | — |
| C34 | (Conv): cube sides divide N; partitions = π-images of Z^4 partitions; M = KR_0M_0 | (ii) | consistency: Balaban's tori have side L^N and cubes are powers of L (CMP 109 pp. 251, 257). Show every partition he uses is translation-covariant; M_1 check (I-53). S–M, 2 h |
| C35 | (Det′): domain-assignment rule for closed-walk terms of the [16] determinant | (ii) | consistency: CMP 102 pp. 271–272 bounds hold for any assignment that keeps locality (the trace splits exactly by walk). Write the half-page lemma. S |
| C36 | p. 290 reading | reading → Table 2 I-45 | — |
| C37 | (Enl): s-rule localization domain = whole-lattice ∪X_i^5 | (ii) | consistency: CMP 116 p. 3 is stated on the whole torus; the Λ-restricted alternative costs ≤ one M-cube layer, also admissible. Closed [P] |
| C38 | (C1*) γ-smallness | (i) | closed (canon B30) |
| C39 | M_0 slot, a_*^{102} | (i) | closed |
| C40 | A16 tree conditions | (i) | closed (verified) |
| C41 | (A18-1)–(A18-4), M ≥ 5M_99 | (i) | closed (acyclic, canon F.3); ε_0^{102} window nonempty |
| C42 | CMP 122 S12–S16, X1–X10 | (i) | closed (Balaban's own) |

New conventions surfaced in Table 2 (proposed rows):
- C-new-1 (ii): ι-domain assignment (WG 2.5). Consistency = locality (I-03).
- C-new-2 (ii): the s-version of every covariance is defined on the WC_FULL walk expansion, not on Balaban's [13] expansion. Consistency = I-22 (consumers use only (L1)–(L2), bounds, analyticity). This is the most load-bearing convention.
- C-new-3 (ii): A16 Ω-setting volume convention.
- C-new-4 (ii): B20 (Conv_Λ) and Λ_j nesting.
- The two conventions of (C) (Table 4): U(c) = product of the L links on the straight segment c_− → c_+; axial contours Γ translation covariant. Both class (ii); consistency: a different U(c) adds ≤ O(L²) plaquettes per level and changes only constants (QE_KE_HQ_VERIFY (3)). S to write.

Table 3 size: 42 rows + 6 proposed (C-new-1–4, the two (C) conventions) = 48. Class counts on C1–C42: (i) 26 (C2, C5, C6, C8, C11–C15, C17, C19–C21, C23–C30, C38–C42); (ii) 4 (C1, C34, C35, C37); (ii*) 3 (C9, C10, C16); (iii) 5 (C3, C4, C18, C22, C31); readings/sketches 4 (C7 closed, C32, C33, C36). (C24, C25 counted as (i).) Open consistency proofs: C1 (via B15), C10 (inside B11), C16 (ε_1 audit), C34, C35, and the four new (ii) rows.

## 4. Table 4 — the (C) condition

### 4.1 Exact statement, as used

(C) for G (A1_WALK_FULL (H2) = IN3; WC_FULL C1; SOURCES_A1_KERNEL §8). Let N := QGQ* on ℋ = ℓ²(𝔅, μ), S := multiplication by (L^jη)², N̂ := S^{−1/2}NS^{−1/2}. Then
 Re⟨u, N̂u⟩ ≥ c_−‖u‖² for all u ∈ ℋ, with c_− = 1/K_ext > 0,
uniform in regular U ((3.35)–(3.36), Mα_0 ≤ a_0), j, k, η, {Ω_j}, and volume. Variational form: N̂ ≥ c_− iff every B on 𝔅 has a fine extension A with QA = B and ⟨A, G^{−1}A⟩ ≤ c_−^{−1}Σ_jΣ_{y∈Λ_j}(L^jη)^{d−2}|B(y)|².

(C) for G_1 (WC_FULL C2 = A7 (C_1) = IN4; A1_KERNEL §9). N̂_1 := S^{−1/2}QG_1Q*S^{−1/2} ≥ c_{−,1} := 1/K_{ext,1} > 0, same uniformity, with c_{−,1} ≥ c_−(G)(1 − O(Mα_0)) ≥ ½c_− under the cap Mα_0 ≤ a_{−,1} = 1/(2C_{G1}) (canon B12c). The step uses G_1^{−1} = G^{−1} − Δ^{(2)}_π and |⟨A, Δ^{(2)}_πA⟩| ≤ O(Mα_0)·(form of (C)), "from (3.137) via Schur" [I].

Status words in the ledger: "conditional: torus-side hypothesis + two unprinted conventions" (rows A1, A1w, A2, A7), plus one [I] for the G_1 step (SOURCES_A7_CDC_VERIFY (b2)).
- Torus-side hypothesis (SOURCES_QE_INV_VERIFY, torus paragraph): the side of the periodic lattice, in units of the coarsest block present, is ≥ c·RM (precisely: > RM/(2L²) suffices for the far/near split at D = RM/(4L²)). Below that size, wrapped loops are "near", have no spanning surface, and the holonomy bound fails.
- Convention 1: U(c) = product of the L level-(i−1) links on the straight segment c_− → c_+ (the x = c_− term of the corridor family).
- Convention 2: axial contours are translation covariant, Γ_{y+Le, x+Le} = Γ_{y,x} + Le.
- Unvalued constants: C′_1(d, L) (existence printed in CMP 98, value not), c_cone(d).

Consumers: A1-W (H2) and Lemma LT(e) (local inverses by restriction); A1 kernel form via Lemma CT; WG-G1 (I6) through A1-W for G_1; WC_FULL C1–C2 ⇒ A2; A7 Lemma N (γ_1^N contains K_{ext,1}); A16 via A1-W for G_1; A8 via WC. So (C) sits under A1, A1w, A2, A7, A8, A16, and through them under G3, B13, A13's inputs. It is the most load-bearing single condition in the propagator layer.

### 4.2 What is proved toward (C)

| piece | status | source |
|---|---|---|
| Lemma CT (accretive Combes–Thomas, block inverse-closedness) | [P] + [L] (Lean combes_thomas, coercive_inv, schur_test, BlockSchur; no sorry) | SOURCES_A1_KERNEL §7; A1_WALK_FULL §3; lean/VERIFY_CombesThomas |
| (K) kernel input for N | [R] to CMP 99 Thm 3.12 / Thm 3.3 | A1_KERNEL §8 |
| (KE′): Q_j is the straight-line average; QH = I on all of 𝔅 incl. interfaces and Λ_0 | [V] by citation (CMP 95 (1.11)/(1.18), CMP 96 (2.7), (2.35), CMP 98 p. 27) | SOURCES_QE_KE_HQ + VERIFY |
| (H_Q): k-step averaging vs axial transport, error ≤ c_Hα_0ℓ_j² | [P] (D_j induction = CMP 98 (144)–(145)) | SOURCES_QE_KE_HQ_VERIFY (3) |
| Feasible extension 𝓔_U = dressed free minimizer; Neumann K_Q ≤ 2 for c_QMα_0 ≤ ¼ | [P] given (KE), (H_Q), torus side | SOURCES_QE_INV §4–§5 + VERIFY |
| S2 for G: |⟨A, Δ′_πA⟩| ≤ C′_ΠMα_0(‖DA‖² + ‖D*A‖² + ‖ℓ^{−1}A‖²); G^{−1} ≤ (1 + O(Mα_0))(D*D + DD*) + O(Mα_0)ℓ^{−2} + Q*aQ | CLOSED [P], conditional on (KE′), QE_INV 5.1/5.3, a = 1 [I-a1], [I-geom] (now closed) | SOURCES_S2_FORM + VERIFY |
| S2 for G_1 | CLOSED [P] on printed CMP 99 inputs + one I-conv (symmetry of Δ^{(2)}) | SOURCES_S2_G1_V7 + VERIFY |
| A3: C*Δ_kC ≥ γ_0 = m_L/(48d²L^d) | FULL PROOF, verified | SOURCES_A3_GAMMA0_FULL + VERIFY. Note: A3 is a lower bound for a different operator (the constrained precision on unit fields, not N̂ on 𝔅). It shares the method (block Poincaré + covariant comparison) and the inputs R2, R3, R-Δ2, but it does not imply (C) |
| Theorem L (WC_FULL §3): A_exp ≥ γ_exp = ¼γ_e | [P] | WC_FULL; again a different operator |
| §7.3 partition bound Σφ² ≥ c(d) = 1 | [P] | A1_WALK_FULL_VERIFY |

### 4.3 What a full proof of (C) still needs

1. State the torus-side hypothesis as part of Theorem 2w's setting (or derive it). Check: Balaban's tori have side L^N ≥ L^{K + m_M + 2} (C31). In coarsest-block units the side is L^{N−j_max}. So the hypothesis reads L^{N − K} ≥ c·RM/L² at the coarsest scale K. C31 (Vol) already demands side > 22M final cells. Task: show C31 ⇒ the (C) torus side for the R used, or add the explicit inequality RM ≤ c′·22M (i.e. R ≤ const) to the canon. If R is a fixed (d, L) number (canon B10), C31 with a larger constant implies it. Effort S. This turns the "hypothesis" into one more line of C31, class (iii) mild, already stated.
2. The two conventions: write the half-page lemma "any choice of U(c) inside the corridor family and any translation-covariant axial Γ changes c_− only by a factor (1 + O(L²α_0))". Effort S.
3. The constants C′_1(d, L) and c_cone(d): existence suffices for (C) (only uniformity is needed). Value not needed. Closed by statement.
4. QE_INV 5.1/5.3: the Neumann invertibility and the energy bound are [P]; 5.3 [I-c] (far thin loops, closes for RM ≥ 8 log L/δ_H) is a P-sketch. Write it out. Effort M, 3 h.
5. [I-a1]: a = 1 in Thms 3.1/3.3. IMG check of CMP 99 Thm 3.1 statement (the averaging constant a). Effort S.
6. The G_1 step: write the Schur bound |⟨A, Δ^{(2)}_πA⟩| ≤ C·Mα_0·(C)-form from (3.137) + symmetry (I-17, I-18). Effort S–M, 2 h.
7. Assemble one theorem "(C) for G and G_1", paper grade, with a verifier. Effort L, ≈ 6 h (items 1–6 feed it).

Total for (C): ≈ 15 agent-hours, about 8 agents. Risk: low for items 1–3, 5; medium for item 4 (multiscale far-loop geometry across Ω_j interfaces is where earlier gaps sat, e.g. the Q_95/Q_98 misreading).

## 5. Group B items outside the four tables (for completeness)

"Close everything" also covers our own open Group B items. They are not Balaban inputs, so they are not in Tables 1–4.
- B3 (F) lattice log coefficient = continuum. The only T1 input without a verified reduction of full strength: (L-LL) is UNSUPPORTED as a theorem, Lemma 1 (magnetic Weyl bound) is cited as standard and unchecked, Step C gauge-fixing part is [I] (I-49), and the β_1 vs c log L numerical tension is open. XL, 15–20 h, uncertain.
- B15 (H-thr) residue: (R1) holomorphy at frozen s′ ≠ x*, (R2)–(R4); small-field analogue of (1.73) (I-55). M–L, ≈ 8 h. T2 only.
- B13 large field: coarea Jacobian on non-round level sets (I-56). M–L, ≈ 6 h. T2 only.
- A7 complex-s / complex-U clause at P-sketch level (I-20). M, 3 h.
- B4: only the o(f²) form; the printed rate is unused. Closed for the chain.
- B1: certified at L = 13, 15, 17, 21 only (C3). No work planned; this is residue.

## 6. Prioritized closure list (load-bearing weight × tractability)

| rank | target | weight (what rests on it) | tractability | effort |
|---|---|---|---|---|
| 1 | (C) for G and G_1 as one paper-grade theorem (Table 4 items 1–7) | A1, A1w, A2, A7, A8, A16 ⇒ G3, B13, LOC, and A13's propagator inputs | high: all pieces exist; items 1–3, 5 are S | ≈ 15 h, 8 agents |
| 2 | CMP 99 Thms 3.7, 3.9, 3.10 covariant write-outs, with the M_1 version (R36) and the complex form (R7) | every walk expansion: WG-G, WG-G1, A1-W, WC, A16; also Thms 3.1, 3.3 | high: U = 1 templates CMP 95 Prop. 1.2, CMP 96 Prop. 2.2 are FULL; same format as the three FULL files | ≈ 20 h, 12 agents (three L write-outs + complex add-on) |
| 3 | B3 (F) lattice transfer and the β_1 numerical tension | T1 directly (Route K); the only T1 Group B item without a full-strength reduction | low–medium: (L-LL) is the hard step; Route B (B9) is the alternative | ≈ 15–20 h, 10 agents, uncertain |
| 4 | s-rule convention C-new-2 + consumer check (I-22), with A16 (M1) completeness (I-35) | A8, A16, G3 (C25), A13 Lemma 1 consumers | high: a scan plus a short lemma | ≈ 7 h, 4 agents |
| 5 | CMP 109 p. 254 transfer (R26) with I-10 (Q̃ = Q_1(U_1)) and I-09 ((2.11) = (3.156)) | all of WC_FULL ⇒ A2, A7, A8 | medium: finite list of CMP 98/99 results to re-check under the symmetric average | ≈ 8 h, 5 agents |
| 6 | Image-read batch: I-04, I-18, I-21, I-25, I-26, I-29, I-30, I-33, I-34, I-38, I-40, I-41, I-43, I-45, I-47, I-50–I-52, I-54, R7 (proof pages), R14, R15, R19, R20, R29, [I-a1] | many small [I] tags in A1w, A8, A10′, A17, A18, A19, N6, N8 | very high: one agent per paper, page images exist in balaban/ | ≈ 15 h, 10 agents |
| 7 | Short proofs replacing readings: I-01/I-02/I-23 (own cover and partition), I-03 (locality), I-05/I-36 (C0 in general), I-08, I-17 + R13 (Schur for Δ^{(2)}), I-24, I-27 (re-verify G_Γ ≤ Ḡ), I-31/I-32 (complex (189)), I-42, I-44 (C32), C34, C35, the (C) conventions | propagator and A15 layers | high | ≈ 30 h, 15 agents |
| 8 | C33 "in exactly the same way" (R37); A10′ R- and C-terms (R31); A14 closure constant (R30); A4 (90)–(97) bookkeeping (R23); C16 global ε_1 audit | A15 ⇒ B8 (Theorem 1 input), A10′ ⇒ SM, A13 internals | medium | ≈ 16 h, 9 agents |
| 9 | T2-only items: A23 R1/R3 (R42), B15 residue, B13 coarea, A7 complex clause, C10 inside B11 | B22, B-S, (H-hist), (FX) | medium | ≈ 21 h, 12 agents |
| 10 | Final consistency pass: TRUST_LEDGER round 8, canon F.2 items (C_1^{FX}, κ ≥ 1536), one independent end-to-end verifier per target | both targets | high | ≈ 6 h, 4 agents |

## 7. Total estimate

Sum of §6: about 155–160 agent-hours, about 90 agent runs (each run = write-out or verifier). Counting items: 18 (Table 1) + about 45 (Table 2, after merging duplicates) + 9 (Table 3) + 1 ((C)) + 5 (§5) ≈ 78 items.
At today's pace (≈ 70 Opus agents, ≈ 25 items, ≈ 14 h wall), items alone give ≈ 44 h wall and ≈ 220 agents. The small image reads close faster than today's average item, so the honest range is 30–45 h wall and 120–220 agent runs, over three to four sessions like today. Rank 3 (B3) carries most of the uncertainty: it can fail, and then T1 needs Route B (B9), which has no verifier file.

## 8. Residue that stays after all four tables close

Even with every row of Tables 1–4 closed, these remain, by design or by scope:
1. Finite torus. T2 is existence of subsequence limits on T⁴_ℓ with (OS0)–(OS3). No infinite-volume limit, no mass gap, no uniqueness of the limit (C18, C22). Not a Clay solution.
2. Torus size. C31 (side ≥ 22M final-scale cells, even form ℓ = 2L^{m_T}) and the (C) torus-side inequality. Mild, stated, not removable inside Balaban's method.
3. Fixed L and group. Theorem 2w holds at the certified L ∈ {13, 15, 17, 21} (C3), for SU(2), d = 4 (C4). Other L need new (H2) certificates; other groups need new SU(2)-specific steps.
4. Weak form. Theorem 2w gives existence of a bare coupling g_0(K, g), not uniqueness or monotonicity; the window bound is two-sided only in the (c′) form; B4 holds only as o(f²).
5. Thermal state and one observable (C18): periodic time, centred plaquette density, test space D_n.
6. Published-mathematics trust. Class-A items (Table 1: CMP 95, 96 propositions, CMP 96 Lemma 2.1, CMP 98 Prop. 2 and (124)–(146), CMP 99-reg Prop. 6, CMP 102 Thm 1 and Props. 3–4, 6, CMP 109 Sects. 3–5, CMP 116 sup induction, CMP 119 (2.6)–(2.9), CMP 122 I–II, and A13 itself) are accepted, not re-proved. Of these, only CMP 96 Lemma 2.4 was re-proved, and its printed proof was wrong for L ≥ 10. So the class-A trust is not zero-risk.
7. External citations X2–X5 (OS II, Osterwalder–Seiler reflection positivity [text not fetched], Cammarota, Savvidy).
8. Verification grade. "Verified" in this project means an independent Opus or Fable agent checked the write-out against page images. No human referee has read any of it. Lean covers only small lemmas (Combes–Thomas, Schur, slab counterexample, K1′ numerics, rho2_le, P4).
