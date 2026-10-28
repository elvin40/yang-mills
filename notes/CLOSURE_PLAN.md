# CLOSURE_PLAN — what keeps L-001 (Theorem 2w) (then Target 2) a reduction

Date: 2026-10-28. Planning only, no derivation. Sources read: TRUST_LEDGER.md (full), SOURCES_ORDER_CANON.md Part B, headers/ledgers of A1_WALK_FULL, WG_FULL, WC_FULL, and the SOURCES_* files named in the binding-set rows. Firewalled files not read.

Status: COMPLETE (2026-10-28). Planning only; nothing here is proved or verified. No other file was edited.

## 0. Scope and grading

Target chain. L-001 (Theorem 2w) (Target 1, THEOREM2_PROOF_v4 §1.3) ⇒ hypotheses of CMP 122 II Theorem 1 (R-013) ⇒ Target 2 (finite-torus OS limits in compactness form). The binding sets are TRUST_LEDGER §5 round 7: Target 1 = {R-006} + R-025–R-031 + X-005 with K-003, K-004, K-018, K-023; Target 1 ⇒ Theorem 1 adds R-012, R-013, R-015, R-032, R-034, K-029–K-038, K-043; Target 2 adds the rest of Group A (17 rows), R-035–R-046, X-002–X-004, K-039–K-043.

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

- A1_WALK_FULL §0, §9, §10 (H-296–H-316) and fix notes F1–F6, regrade notes. Residual inputs: H-296 (W_G), H-297 (W_G1), H-298 H-057 (C), H-299 c_{−,1}, H-300 CMP 96 Lemma 2.1, H-303–H-307 [I], H-308 regular class (R-018), H-311 (WC inputs), H-312 CMP 99 Thm 3.4, H-313 complex (W_G); open [I] items F4 (θ-monotonicity of Σ), 6.9a set form of H-086 (B2-T) (not re-verified).
- WG_FULL §0 (I1)–H-213 (I7), §7, §8 ledger. Inputs: CMP 99 Thms 3.10, 3.7 + Cor. 3.8 (by reference to CMP 95 Prop. 1.2, CMP 96 Prop. 2.2), 3.9; CMP 96 Lemma 2.1 under (2.59); (3.36) + J-bound; A1-W for G_1; [I] C0, H-213 (I7) Q-locality, ι-domain assignment, C^{(2)}/K_b locality, M_1-cover [I/R, CMP 116 p. 3].
- WC_FULL §0.9, §8, §9 ledger. Inputs: R1 (W_G1), R2 complex walk form of G (Thm 3.4 + 3.10), R3 R-004 inputs (A3-R1, R-Δ′, R-Δ2, A3-R2′ = CMP 98 (139), A3-R3, A3-R4), R4 CMP 109 p. 254; C1 H-057 (C) for G, C2 c_{−,1}; I1–I9.
- H-057 (C) source: SOURCES_A1_KERNEL §8–§9; SOURCES_QE_KE_HQ_VERIFY (4); SOURCES_QE_INV_VERIFY (torus); SOURCES_S2_FORM(_VERIFY), SOURCES_S2_G1_V7(_VERIFY); SOURCES_A7_CDC_VERIFY (b2).

## 1. Table 1 — [R] inputs: Balaban printed theorems and sketches the chain rests on

Print level: FULL = proof printed in full; SKETCH = proof sketched or "by reference"; ASSERT = statement only ("similarly", "not repeated", "we can prove", "in the same way"). Plan: A = accept as published; B = write out the sketch; C = new proof. Effort in the §0 units. "Rows" = TRUST_LEDGER rows that use the item.

### 1a. Propagator layer (CMP 95, 96, 98, 99)

| # | item | print level | rows | plan | effort |
|---|---|---|---|---|---|
| Q-001 | CMP 99 Thm 3.10: walk expansion of G_0, (3.107)–(3.108) | SKETCH, ≈ 1.5 pp (pp. 414–416; p. 409 "sketch them rather briefly") | R-002 (H-296 via WG-G), R-003 (R1), R-008, R-016, R-001 (Thm 3.3 closes through it) | B. Covariant write-out of CMP 96 Prop. 2.2's random-walk construction in a regular background | L, ≈ 6 h |
| Q-002 | CMP 99 Thm 3.9: walk expansion of C′ = (Q′G′²Q′*)^{−1}, (3.98)–(3.99) | SKETCH, ≈ 2.5 pp (pp. 411–413) | same as Q-001 (through V = −Δ′_π and P) | B | L, ≈ 6 h |
| Q-003 | CMP 99 Thm 3.7 + Cor. 3.8: walk expansion of G′, (3.90), (3.94) | SKETCH by reference: "exactly the same as in proofs of Prop. 1.2 [CMP 95] and Prop. 2.2 [CMP 96]"; per-walk bound (3.91)–(3.94) printed | same as Q-001; closes Thm 3.1 | B. Write the covariant version of the CMP 95/96 proofs; templates are FULL | M–L, ≈ 5 h |
| Q-004 | CMP 95 Prop. 1.2; CMP 96 Prop. 2.2 (U = 1 templates of Q-003) | FULL (U = 1) | through Q-003 | A | 0 |
| Q-005 | CMP 96 Lemma 2.1: c_1(κ) under (2.59) | FULL | R-002 (H-300), WG H-210 (I4), every Schur step | A | 0 |
| Q-006 | CMP 96 Lemma 2.4 (free block lower bound) | FULL statement; proof step (2.126)–(2.127) FALSE for L ≥ 10 | R-004 | Closed already: re-proved with m_L (SOURCES_A3_GAMMA0_FULL, verified; Lean SlabCounterexample) | 0 |
| Q-007 | CMP 99 Thm 3.4: G′, C′, R, G analytic for α_1 ≤ a_1, "satisfy all the inequalities of Thms 3.1–3.3" | statement [V] p. 400; proof extent not recorded | R-002 (H-312, H-313), R-003 (R2), R-008 complex clause, R-009 | First S: read the proof pages. If FULL, A. Complex walk form = Thm 3.4 + Q-001–Q-003 at complex U: B, add ≈ 3 pp to the Q-001–Q-003 write-outs | S + M, ≈ 4 h |
| Q-008 | CMP 99 Thms 3.1, 3.3 (bounds on G′, G_0, G) | FULL as statements; proofs close through Q-001–Q-003 (p. 410, p. 416) | R-001 (via L-125 (Lemma CT) (K)), R-004, R-005 | Closes when Q-001–Q-003 close | 0 extra |
| Q-009 | CMP 99 Thms 3.11–3.12 (G_1 > 0; Thm 3.3 for G_1 via (3.138)) | statement [V]; proof pp. 423–424 rests on (3.132) "assumed" (p. 426) | R-004 (A3-R1), R-001 (K for G_1), R-005 (N1), R-018 | B for the Schur step of A3-R1 (≈ 2 pp); the (3.132) dependence is closed by A1-W | M, ≈ 3 h |
| Q-010 | CMP 99 p. 422 (3.132) and (3.133): "We will not repeat these considerations" | ASSERT | R-001 (kernel form), R-005 (N1), R-018 (J-term) | Closed by our L-125 (Lemma CT) + A1-W, conditional on H-057 (C) (Table 4). No separate work | 0 (rides on Table 4) |
| Q-011 | CMP 99 p. 422 "Theorem 3.10 holds also because we replace each operator in (3.130) by its random walk expansion"; p. 423, p. 427 (G_1 trees) | ASSERT (one sentence each) | R-002, R-003 | Closed by WG_FULL Theorems WG-G, WG-G1 (paper-grade, verified) | 0 |
| Q-012 | CMP 99 Thm 3.15, (3.185)–(3.187); Ğ_2 p. 432 | ASSERT ("analyzed in the same way") | none now: WC_FULL §8 does not use them | none | 0 |
| Q-013 | CMP 99 (3.134)–(3.137): Δ^{(2)} form and local bound (R-Δ2) | FULL as printed bounds; Schur step to ℓ² not written | R-004 (R-Δ2), R-003 (R3), C2 of H-057 (C) | B: one Schur lemma; RDELTA2 brief never delivered | S–M, ≈ 2 h |
| Q-014 | CMP 99 (3.10) + (3.35): R-Δ′ (relative bound of Δ′) | printed; D^1 normalization read, not checked | R-004, R-003 (R3) | S: image read of the normalization | S, ≈ 1 h |
| Q-015 | CMP 98 (139) one step; (124)–(125), (139)–(146), Prop. 2 | FULL (inductive, CMP 98 pp. 35–40) [R, not re-read line by line] | R-004 (A3-R2′), R-018 (L-250 (Lemma Q), L-109 (Lemma C)), H-123 (H_Q) of H-057 (C) | A, after one line-by-line check of (144)–(145) (already matched in QE_KE_HQ_VERIFY) | S, ≈ 1 h |
| Q-016 | CMP 98 / CMP 96: Q_j straight-line form (CMP 95 (1.11)/(1.18), CMP 96 (2.7), (2.35)) = H-136 (KE′) | FULL [V] | H-057 (C) | A | 0 |
| Q-017 | CMP 99-reg Prop. 6 (regular class from the plaquette class) with Thms 2, 4 | FULL proof printed (pp. 83–97) [R, not checked] | R-018 (alternative route) | A | 0 |
| Q-018 | CMP 99 p. 428: "we can prove it for C*Δ_kC with an arbitrary U" (R-004) and "uniform exponential decay of C*Δ_kC" (R-008 premise) | ASSERT | R-004, R-008 | Closed by SOURCES_A3_GAMMA0_FULL and SOURCES_A7_CDC (verified), relative to the rows above | 0 |
| Q-019 | CMP 99 p. 428 R5: A_x(y) = T(y), pointer to [4] (2.154)–(2.155) | printed pointer [R] | R-004 | S: image read | S, ≈ 1 h |

### 1b. RG layer (CMP 102, 109, 116, 119, 122)

| # | item | print level | rows | plan | effort |
|---|---|---|---|---|---|
| Q-020 | CMP 102 Thm 1 (9)–(10): minimizers for minimal configurations; B_3 = B_3(d, L) | FULL [R, not re-read]; "(9) β_0 = 1" read as misprint [I] (K-028) | R-018 (inclusions), R-005, N8 k-uniformity | A, plus one S image read of (9) | S, ≈ 1 h |
| Q-021 | CMP 102 Props. 3–4 (proved; use N1 = (3.132)) | FULL | R-005 (shared input), R-019 trace | A | 0 |
| Q-022 | CMP 102 Prop. 6 ((U), uniqueness) | FULL [V statement] | R-015 H-141 (Loc) | A | 0 |
| Q-023 | CMP 102 p. 308 (189): "We do not perform these calculations here" | ASSERT | R-005 ⇒ (H−) ⇒ R-041; R-013 (via "(190) [15]") | Closed by SOURCES_A4_D189 (verified) relative to R-001, Q-020–Q-021, R-018, and the (90)–(97) bookkeeping [I] | M for the bookkeeping write-out, ≈ 3 h |
| Q-024 | CMP 102 Prop. 9 p. 309: (190) restated; analyticity of 𝓗 in B | statement; (190) from (189) | R-005, R-019, D2C (D), CMP 109 p. 263 | Rides on Q-023 + Table 2 (R-019 readings) | 0 extra |
| Q-025 | CMP 102 pp. 271–272: [16] determinant expansion | printed; domain assignment for closed walks unprinted (K-036) | R-015 H-141 (Loc) | Table 3 (K-036) | — |
| Q-026 | CMP 109 p. 254: "all results of the paper [12] are valid for it. The proofs are in most cases unchanged" | ASSERT | R-003 (R4), R-004, R-008, R-009 (via WC_FULL), I3 | B: check that each CMP 98/99 result used here survives the symmetric average (0.4), (0.12). The uses are finite: Q, Q*, H_1, G_1, (QG_1Q*)^{−1}, Q̃, A3-R2′. Most proofs use only locality, linear part, and the (139) step | M, ≈ 4 h |
| Q-027 | CMP 109 p. 263 (1.18) sup bound; "absolute constants" | statement [V]; proof is CMP 116 pp. 1–22 | R-015 (Bd), R-006 N6, N8 | A as the published sup induction (CMP 116), modulo the ASSERT items it cites | 0 |
| Q-028 | CMP 109 pp. 263–264: R-006 inductive assumption (smoothness of β, Z^d limit) | ASSERT ("We will investigate other properties in a separate paper") | R-006 | Closed for Target 1 use by H0-red (verified) relative to N1–N9; Z^d limit by A15-N + H-141 (Loc) | 0 |
| Q-029 | CMP 109 Sects. 3–5 bounds: (3.32), Lemma 4, (3.54), (4.3)–(4.5), (4.14)–(4.37), (5.42)–(5.44), p. 298 | FULL as computations, per-term constants K_T unprinted (R-011 R1) | R-011 ⇒ SM, (Eps), L-190 (Lemma HH) | A, with K_T and the (4.5) tail constant named (R-011 R1, R4) | S, ≈ 1 h |
| Q-030 | CMP 109 p. 280: induction closure "much bigger than E_0" (R-014) | ASSERT, constant unspecified | inside R-013 only | B: one-page constant chase from (3.54) E_0α_3^{−5} | S–M, ≈ 2 h |
| Q-031 | CMP 116 pp. 8–9: (1.24) "bounded similarly", (1.29) "other terms" (R-010) | ASSERT | SM L-050 (Fact A), (Eps), F2′, L-187 (Lemma HH), GGAIN hop | Closed as R-011 (verified) except R2: R- and C-terms "by mechanism" | M, ≈ 3 h (write out R, C terms) |
| Q-032 | CMP 116 Lemma 1 (1.34)–(1.36), absolute C_1, C_2, q | FULL statement [V]; proof printed | GGAIN, R-017 | A | 0 |
| Q-033 | CMP 116 (2.15)–(2.25) chain; (2.16) for R_1 FULL, "R_2, R_3 satisfying (2.16)" ASSERT | mixed | G3 H-225 (N2), LOC, R-037 | R_2, R_3 closed by WC_FULL (R-003). The chain itself: A, read as pointwise exponent bounds [I] (Table 2, I-G3) | 0 |
| Q-034 | CMP 116 p. 15: complex case "handled by a perturbative argument" | ASSERT | R-009 | Closed by SOURCES_A8_POS (verified) relative to I-a–I-e | 0 |
| Q-035 | CMP 116 p. 13 (2.7): C*Δ_kC series "if γ_1 is sufficiently large"; walk expansion "discussed in [13]" | ASSERT | R-008, R-002 | Closed by A7_CDC and WC_FULL | 0 |
| Q-036 | CMP 116 p. 3: walk domains on M_1-cubes "instead of M"; s-rule | ASSERT (M_1 version) | WG (M_1-cover [I/R]), R-002, R-009 (I-b), K-038 | B: show (3.35)–(3.36) at scale M give Thms 3.7–3.10 hypotheses on M_1-cubes. Short once Q-001–Q-003 are written | S, ≈ 1 h (inside Q-001–Q-003) |
| Q-037 | CMP 116 p. 2: "in exactly the same way" (K-034, other term classes) | ASSERT | R-015 H-141 (Loc) ⇒ R-006 Z^d limit, R-032 | B: list term classes of CMP 116 §1–§2 and run the H-141 (Loc) induction for each | M, ≈ 4 h |
| Q-038 | CMP 116 §2 printed conditions (23 + 4), Lemma 2, (1.36), (2.5)–(2.6) | FULL statements | R-041 H-146 (M-C) | A | 0 |
| Q-039 | CMP 116 (2.27) tree bound; (2.33)–(2.41) | FULL [V] | R-020, G3 | A | 0 |
| Q-040 | CMP 119 (2.6)–(2.9) and p. 256 "similar inequalities hold for other constants" (R-012) | statements FULL; p. 256 ASSERT | R-034 sweep | Closed as verified list (R-012 + addendum) | 0 |
| Q-041 | CMP 119 p. 278: small-field terms "do not depend on Λ_{k+1}" (R-015) | ASSERT | R-015, R-032 | Closed relative to K-033–K-038 (Table 2/3) | 0 |
| Q-042 | CMP 119 Sect. 3 (T-step): 10δ printed; ≤ 3δ unprinted; R1 count sketch; R3 the H′(Z_0) assertion (R-020) | SKETCH + ASSERT | R-020 ⇒ R-046 ⇒ B-S (Target 2 only) | B: write the count (R1) and prove H′(Z_0) (R3) | M, ≈ 4 h |
| Q-043 | CMP 122 I Prop. 1 (1.78), (1.80); Sect. 1 thresholds | FULL [R] | R-018 (L-194), R-012 addendum | A | 0 |
| Q-044 | CMP 122 II p. 383 block bound (1.77)–(1.78) (p_1 misprint) and (1.79)–(1.98) R-step | FULL statements | R-039, R-043 (FX), R-041 | A; R-039's M2′/M4/M5 are ours (Group B, not here) | 0 |
| Q-045 | CMP 122 II Theorem 1 (R-013) | published proof, conditional on g_k ∈ ]0, γ] | Target 1 purpose, Target 2 | A, modulo the ASSERT items above that sit inside it (R-014 = Q-030, R-017, R-018, K-034 = Q-037) | 0 extra |
| Q-046 | [14] construction U_j(□_0, ·) (CMP 109 p. 276 "depending on U restricted to the cube □_0") | printed reference; [14] not re-read | R-015 (K-033) | Table 2 (K-033) | — |

Table 1 size: 46 entries. 28 are closed already (FULL and accepted, or closed by our verified write-outs). 18 need new work: Q-001, Q-002, Q-003, Q-007, Q-009, Q-013, Q-014, Q-015, Q-019, Q-020, Q-023 (bookkeeping), Q-026, Q-029, Q-030, Q-031, Q-036, Q-037, Q-042. Seven of the 18 are S-size page reads (Q-007 first half, Q-014, Q-015, Q-019, Q-020, Q-029, Q-036). Of these, the load-bearing write-outs are Q-001–Q-003 (all of R-002, R-003, R-008, R-016 rest on them), Q-026 (every WC_FULL use of CMP 98/99 in CMP 109's setting), Q-037 (K-034), and Q-042 (R-020, Target 2 only).

## 2. Table 2 — [I] readings across the chain

Plan codes: IMG = page-image read can make it [V]; PRF = an independent proof removes the need for the reading; CON = it is really a convention (move to Table 3); DONE = already [V] or [P] per a verifier. Effort S unless marked.

### 2a. Propagator layer (A1_WALK_FULL, WG_FULL, WC_FULL, R-008, R-004)

| # | reading | page / source | two meanings | plan |
|---|---|---|---|---|
| H-001 | H-303 / WG cube geometry (G): cover 𝒟, cores, h_□, □⁺, C_𝒟, C_ov; set form of H-086 (B2-T), C_𝒟^{(1)} (6.9a Fix A) | CMP 99 p. 408 (𝒟, h_□); A1_WALK_FULL 2.1, 6.9a | Balaban's 𝒟 is a specific cube cover with his constants vs any cover with the stated counts | PRF: define our own cover (tent family on aℤ^d, as in the §7.3 proof, c(d) = 1) and prove the counts. Then Balaban's cover is not needed. M, 3 h |
| H-002 | H-304 H-002: Lipschitz bound c_h/M_1 of h_□ across scale boundaries | CMP 99 (3.89) analogue | holds across Ω_j interfaces vs only inside one scale | PRF together with H-001 (our own partition). Inside H-001. Round 11 (SOURCES_MULTISCALE_OMEGA_VERIFY V12): load-bearing via Q-049/Q-048 in the Ω-setting (pointer from H-037); the (C3) Lc_h/M_1 sketch requires cover cubes that straddle Ω_j interfaces and Σφ² ≥ c(d) there; printed analogue CMP 96 (2.49)–(2.51) [V]. This H-002 is A1_WALK H-002, not the FX_O23 Q-060 |
| H-003 | H-305 / WG H-213 (I7) / WC I2 / R-005 N2: Q, Q*, Q′, D, R_b, C̃^{(2)}, K_b, C_j local with finite range c_loc | CMP 98 (14)–(15) contour supports; CMP 99 (3.136); CMP 109 p. 267 | finite range vs exponentially decaying (pseudo-local) | IMG first (CMP 98 contour definition, CMP 109 (0.4) average); if only decaying, PRF: L-115 (Lemma C) concatenation absorbs exponential tails at a rate cost. M, 3 h |
| H-004 | H-307 / canon N-090: κ_1 independent of M | CMP 116 p. 5 "δ_1M ≥ κ_1"; CMP 109 Thm 3 order | κ_1 fixed before M vs κ_1 = κ_1(M) | IMG: CMP 109 Thm 3 quantifier order and CMP 116 p. 5. S |
| H-005 | WG C0: scale bookkeeping (L^jη)^{±} carried by m and S | CMP 99 (3.42)–(3.47), (3.131), p. 398 rule | Balaban's mixed norms compose as our kernel norm vs not | PRF: C0 is written out for Ĵ (WG 5.5); write it once in general (≈ 2 pp). M, 2 h |
| H-006 | WG ι-domain assignment (2.5) | none printed | any assignment with locality vs Balaban's (unprinted) | CON (Table 3 K-048); consistency = locality, already [P] given H-003 |
| H-007 | M_1-cover [I/R]: (3.35)–(3.36) at scale M give Thms 3.7–3.10 on M_1-cubes | CMP 116 p. 3 | M_1-version is automatic vs needs its own proof | PRF inside the Q-001–Q-003 write-outs (Table 1 Q-036) |
| H-008 | F4: Σ and θ-dependent constants monotone in θ (so M_min values stay valid) | A1_WALK_FULL 9.1 step 3 | monotone vs not | PRF: one-line from the Σ definition for Σ; for b_G, c_G, δ_G take sup over θ ≤ θ(M_min). S |
| H-009 | WC I1 / R-008 I1: (2.11) = (3.156) + G^{(2)} term, term by term (D̃^{(2)} = hC̃^{(2)}) | CMP 109 p. 267 (2.10)–(2.11), CMP 99 (3.156) | the two quadratic forms agree vs differ by a gauge or constraint term | IMG + algebra check on both pages (EXPGAUGE-VERIFY V3, V9 found no conflict). S–M, 2 h |
| H-010 | WC I3 / R-008 I3 / R-018 I3: Q̃ (CMP 109) = Q_1(U_1) (CMP 99); blocks of (0.14) = blocks of Q̃; V^{(k)} = U_1 | CMP 109 (0.4), (0.12), (0.14), (2.5); CMP 99 §E | same operator vs same up to the symmetric-average change | Ties to Q-026 (p. 254). PRF: prove the needed properties for CMP 109's Q̃ directly. Inside Q-026 |
| H-011 | WC I4 / R-004 R2: Q(U) = Q_free(1 + O(α_0)) uniform in k | CMP 98 (139) one step | — | DONE as R-018 L-250 (Lemma Q) [P given CMP 98 [R]]; residue [I-Q1] axial bound kept by Ū^j: IMG of CMP 98 (42). S |
| H-012 | WC I5 / H-306: WG-1 J-junction factor needs α_0 ≤ c″M^{−1}M_1^{−12} | WG_FULL 4.7 | condition vs reading | CON: it is an admissible α-condition (canon N-370). Closed |
| H-013 | WC I6: dist(Z_0, Λ_k^c) > RM | A3 §0.1; CMP 116 p. 12 | needed vs vacuous | DONE: vacuous on the torus (Λ = T, SOURCES_A16_REPLACE2_VERIFY p. 12 read) |
| H-014 | WC I7: tilde convention of CMP 99 used on CMP 116 p. 13 | CMP 99 pp. 411, 413; CMP 119 p. 245 | ℓ^∞ layer vs other | DONE [V + P] (SOURCES_WC_RESIDUE) |
| H-015 | WC I8: smoothness/analyticity of the mean M near 1; Karcher property | CMP 109 (0.5)–(0.10) | Federbush mean only vs any admissible mean | PRF: done for Federbush's mean (Lemma G(b)); declare that mean (CMP 109 fixes it). Closed by declaration |
| H-016 | WC I9 / R-018 [I-J]: J local, |J| = O(Mα_0) | CMP 99 (3.36), p. 419, p. 422 | [V] for CMP 99; CMP 109 J-form differs by O(ε_0²) | DONE except the CMP 109 form: R-018 5.2 [P]. S check |
| H-017 | R-008 C2 G_1 step: c_−(G_1) ≥ c_−(G)(1 − O(Mα_0)) "from (3.137) via Schur" | A1_KERNEL §9 | holds with the stated form vs needs symmetric Δ^{(2)} | PRF: SOURCES_S2_G1_V7 closed symmetry [P, one I-conv]; write the Schur step. Merges with Q-013. S |
| H-018 | S2_G1 I-conv: δ/δA is the gradient for ⟨·,·⟩ of (3.3); Δ^{(2)} "determined by" a form = symmetric part | CMP 99 (3.134), (3.136) | symmetric vs non-symmetric operator | IMG: the verifier calls this forced (any other reading leaves Δ^{(2)} undefined). S |
| H-019 | R-004 R4 / A3-R4: c_J′ = c(d, L)Mα_0 for the J-term of (3.156) | CMP 99 (3.156) | — | DONE by R-018 6.4 given (3.133) + H-003 |
| H-020 | complex s, complex U clause of R-008 (P-sketch) | A7_CDC | — | not a reading; PRF write-out, M, 3 h (listed in §5) |

### 2b. Covariance, RG, and sourced layers

| # | reading | page / source | two meanings | plan |
|---|---|---|---|---|
| H-021 | R-009 I-a: operators defined by quadratic forms are their symmetric representatives | CMP 116 p. 15; CMP 99 (3.3) | symmetric part vs the literal (possibly non-symmetric) operator | IMG (same check as H-018). S |
| H-022 | R-009 I-b / s-rule reading: C^{(k)}(Z_0, σ) is the σ-weighted walk sum of A_Z^{−1}; "domains can be chosen to a large extent arbitrarily"; the s-rule acts walk by walk on (2.7) (K-026 residue, G3 (iv), R-016 s-version choice) | CMP 116 pp. 3, 13; [13] = CMP 99 Thm 3.15 (not used) | the s-version is defined on Balaban's [13] expansion vs on any walk expansion with (L1)–(L2) | CON + PRF: declare the s-version on the WC_FULL expansion (Table 3, K-046) and prove that every consumer (R-013 Lemma 1, (2.15)–(2.25), R-016) uses only (L1)–(L2), the bounds, and analyticity. M, 4 h. This is the single most reused reading |
| H-023 | R-009 I-c: geometry (G1)–(G3): dist(σ_0, Z_0) ≥ M, domain diameters ≤ c′M_1, cube count | CMP 116 pp. 3, 13 | — | PRF with H-001. S |
| H-024 | R-009 I-d: walk count finite at rate ε″/8 | WC (ii) counting | — | PRF: one lemma from WC 5.6 counting. S |
| H-025 | R-009 I-e: "Re C^{−1}" in (2.15) is the symmetric real part; dμ_C for non-symmetric C by the density formula | CMP 116 p. 16 (2.15) | Hermitian part vs entrywise real part | IMG; R-009 already proves the majorant for the Hermitian-part reading; check the other gives the same bound. S |
| H-026 | G3 (iii): (2.15)–(2.25) read as pointwise exponent bounds; (vii) bounds hold on the closed small-field set | CMP 116 pp. 16–18 | pointwise in B vs integrated | IMG (300 dpi) of pp. 16–18. S |
| H-027 | G_Γ ≤ Ḡ uniform in M (K-026 closure) | SOURCES_G3_GGAMMA 4.1, canon N-290 "[I, unverified]" | M-free vs growing in M | PRF: G3_GGAMMA has a verifier file; re-verify 4.1 specifically. S |
| H-028 | R-011 R2: R- and C-terms obey (1.29) "by mechanism" | CMP 116 pp. 9–11; CMP 109 (3.7) | mechanism suffices vs needs own bound | PRF: write the two bounds (Table 1 Q-031). M |
| H-029 | R-011 R4: (4.5) tail constant from (4.3)–(4.4) | CMP 109 (4.3)–(4.5) | — | IMG. S |
| H-030 | R-017 reading R1: "|B| on Y" in (1.34) = per-bond sup; C = identity on the kept bonds | CMP 116 (1.34), (2.3); CMP 99 (3.41) | sup norm vs a norm with derivative terms | IMG; the verifier calls it forced by (2.3). S |
| H-031 | R-019 (a): (189) holds at complex B | CMP 102 p. 308 | real only vs complex too | PRF: SOURCES_A4_D189 proves (189) by our route; extend its §5 to complex B (all inputs are printed on complex sets per A17_A19 §4). M, 3 h. Fallback exists: two-constants theorem on half the ball |
| H-032 | R-019 (b): (73) complex clause | CMP 102 (73) | — | same as H-031 |
| H-033 | R-019 (c): the (172) ball |B(b)| < 2C_1ε_1 is per-bond sup | CMP 102 pp. 306–307 | per bond vs global norm | IMG. S. Fallback (ω = 0.4097) removes the need |
| H-034 | R-019 4.1(f): propagator lemmas are B-independent | CMP 102 Sect. 3 | — | IMG. S |
| H-035 | R-016 H-035 (M1): the H-281–H-291 list is complete (every property of C^{(k)} that CMP 116 uses) | CMP 116 pp. 12–17; p. 1 "quite general" | complete vs a property is missing | PRF: line-by-line scan of CMP 116 pp. 12–22 for every use of C^{(k)}; tick each against H-281–H-291. M, 3 h |
| H-036 | R-016 H-166 (S_H): scale normalization of D_S, J_S in the k-scale norm | SOURCES_A16_REPLACE2 §2 | C0-type, as H-005 | PRF with H-005 |
| H-037 | R-016 Ω-setting volume convention (CMP 122); widened in round 11 to Q-049 (multiscale Ω-geometry; TRUST_LEDGER row R-024) | SOURCES_A16_REPLACE2 4.1; CMP 119 pp. 251, 275–276; CMP 122 I (1.25) | — | CON (Table 3, K-049). Round 11, H-037 / Q-049: REDUCED [P rel. inputs] (SOURCES_MULTISCALE_OMEGA + _VERIFY). Balaban's Gaussian variables are single-scale on one region (CMP 119 pp. 251, 275–276; CMP 122 I (1.25) [V]); outer layers finer (CMP 96 (2.2)–(2.3) [V]); d ≥ d_∞ (CMP 96 (2.48) [V]). WC (i)–(iv) and W_N carry over for the unsourced C^{(k)}(Z_0) with S → c_1 (CMP 96 L2.1, condition ¼δRM > 2d log c_0(δ/2) + 1 at the smallest rate), C′_𝒟 × (1 + 2d(L+2)^{d−1}/(3^d−1)), (G3) × (1 + L^{d−1}), K_F, M_W × L; γ_exp unchanged. Residue: H-167 (Sep) distance part [R to CMP 96 (2.2)] + [I-strong]; H-002 = H-002 [P-sketch; needs straddling cover] (see row H-002); OPEN: sourced extension (A^f ≥ ¾γ_exp, 𝒲_S trees, H-288, U-b) used by Q-048 [one paragraph, same method; SOURCES_MULTISCALE_OMEGA_SOURCED running]; CMP 122 I (1.25) operator Δ^{(j)}_{Λ^c_{j+1}} = compression [I, CMP 122 III (2.21) unread]; R after δ_min in the canon [I]. Case B (multiscale variable space) not used. |
| H-038 | R-018: U_{k,Z} obeys CMP 102 Thm 1; B and B_5 fixed numbers; R_1 < L | CMP 122 I; canon N-060 | — | IMG of CMP 122 I (1.78), (1.80) context and CMP 102 p. 279. S |
| H-039 | MA2 (C2): averaging map m analytic and local, so V′ enters with c_m | CMP 109 (0.4)–(0.10) | — | PRF from H-015 (Federbush mean is analytic near 1). S |
| H-040 | N6: CMP 116 step uses only g_k and sup E_0 (text-layer grep) | CMP 116 §1–§2 | no other coupling vs a hidden g_j | IMG: read §1–§2 on images for every coupling symbol. S–M, 2 h |
| H-041 | N8 (i): "absolute" = independent of X and j, applied to C_1, C_2, q, (1.39), unindexed O(1) | CMP 109 p. 263 [V]; CMP 116 (1.36), (1.39) | j-free vs X-free only | IMG for (1.39) (OCR only). S |
| H-042 | N8 (ii): C_Π j-free (localization geometry same at every j after rescaling) | SOURCES_T2_H0 C9 | — | PRF: scaling argument, half page. S |
| H-043 | R-018 k-uniformity of CMP 102 constants C_2, C_4, B_0 | SOURCES_MA2_VERIFY l. 41 | — | IMG of CMP 102 statements (constants depend on d, L). S |
| H-044 | K-033 (Cube): U_j(□_0, ·) of [14] uses only data on □_0 | CMP 109 p. 276; [14] = CMP 102 | — | IMG of [14] construction (CMP 102 is in balaban/). S–M, 2 h |
| H-045 | K-037: "H_j with free boundary conditions" = the Z^4 operator | CMP 109 p. 290 | Z^4 operator vs Dirichlet/free b.c. on a box | IMG: the next sentence supports it. S |
| H-046 | R-044 H-091 (Conv_Λ), Λ_j nesting | SOURCES_A15_BDRY | — | CON (Table 3, K-050). S |
| H-047 | R-031 causality: step k+1 uses only g_0, …, g_k | CMP 109 p. 298 | — | IMG (same pass as H-040). S |
| H-048 | R-028: KAPPA (1.1) b_{t,m} = §3.1 Moyal coefficients at σ = 0 | KAPPA_BOUNDED | — | CON (low risk). S |
| H-049 | R-027 Step C gauge-fixing part | SOURCES_T2_F_STEPB | — | PRF (ghost part done). M, 3 h. Plus H-137 (L-LL) [UNSUPPORTED] and Lemma 1 — R-027 is a Group B item, listed in §5 |
| H-050 | R-041 (I-ε): unprinted α_2–α_4 (γ_2) scaling; q_0 > p_0 vs q_0 = p_0 | CMP 116, CMP 122 II | — | IMG + CON (pick q_0 > p_0; A18-3 then a γ condition). S |
| H-051 | R-041 H-133 (I-V0): H-130 (I-lin), "Haar" | SOURCES_MC_IV0 | — | IMG. S |
| H-052 | K-028: CMP 102 Thm 1 (9) "β_0 = 1" is a misprint | CMP 102 p. 279 | misprint vs Lipschitz claim | IMG (with Q-020). S. Harmless either way: any β_0^H ∈ (0, 1] works |
| H-053 | K-035: M_1 not checked in K-035 (Conv) | SOURCES_A15_LOC | — | CON. S |
| H-054 | IEPS F fixed earlier (canon N-420) | SOURCES_T2_IEPS_VERIFY §21 | — | IMG/order check. S |
| H-055 | R-039: small-field analogue of CMP 122 (1.73) assumed; L-285 (Lemma T) transfer | SOURCES_HTHR | — | PRF; part of the R-039 work (M2′/M4/M5), §5 |
| H-056 | R-037 large field: coarea Jacobian on non-round level sets | GGAIN_LF 6.3 | — | not a reading: open estimate. PRF, M–L |

Table 2 size: 56 readings. 8 are DONE or closed by declaration (H-011 partly, H-012, H-013, H-014, H-015, H-016, H-019, and H-036 via H-005). 30 are S-size image reads or half-page checks. About 12 need a short proof (M). Three are open estimates that are not readings at all (H-020, H-049, H-056).

## 3. Table 3 — conventions K-001–K-043

Classes: (i) free parameter choice, admissible by SOURCES_ORDER_CANON (closed); (ii) fixes an unprinted part of Balaban's construction (needs a consistency proof: R-013 must hold for the fixed construction); (ii*) changes a printed part of the construction (same need, stronger); (iii) substantive hypothesis in disguise. Readings that sit in Group C are sent to Table 2.

| C | short name | class | what closes it / what it hides |
|---|---|---|---|
| K-001 | freeze thresholds at x* | (ii) for the sourced construction | consistency = R-039 (H-thr) R-039 (frozen map vs running map). Open through R-039 |
| K-002 | Option B margin θ_W + τ_C ≤ 0.2 | (i) | closed; cost = smaller γ |
| K-003 | L odd > 11; certification at L = 13 (also 15, 17, 21) | (iii) | hypothesis: "L ∈ {13, 15, 17, 21}" for R-025 (H2). L-001 (Theorem 2w) is proved only at certified L |
| K-004 | SU(2), d = 4 | (iii) | hypothesis: G = SU(2). Lemma 5.1 charged/neutral split and (W) are SU(2) statements |
| K-005 | canonical constant order | (i) | closed (verified twice, acyclic); F.2 open items: r_0^{exp} vs r (closed in N-410), C_1^{FX} and κ ≥ 1536 not yet in the canon (S) |
| K-006 | holomorphy radius ρ_0 | (i) | closed |
| K-007 | cut on B vs B′ | closed reading | closed (R-017 at r = 1) |
| K-008 | sharp χ_k; smooth χ̂ fallback | (i) for the sharp cut | closed; the fallback would be (ii*) |
| K-009 | χ_k threshold shrink | (ii*) | NOT NEEDED since R-017 holds at r = 1. Action: delete from the chain; use K-010 only if a consumer needs r < 1 |
| K-011 | adapted gauge-fixing weight 1/u_k(c) | (ii*) | consistency: R-013's proof with the weight 1/u_k(c) in place of 1/g_k². Reduces to Balaban's at f = 0; the sourced Theorem 1 (R-035) already re-runs the step, so the proof is part of R-035, not separate |
| K-012 | h ≡ 0 booking; freezing set S_X | (i) | closed (our construction) |
| K-013 | additive source normalization | (i) | closed |
| K-014 | main R-step form (1.90)–(1.98) | (i) | closed |
| K-015 | κ_final, M ≥ 12L(3κ_final)^{1/d} | (i) | closed |
| K-016 | 2p_1 − (d + 5)r_0 > p_0 | (i) | Balaban's own condition, satisfiable (canon N-410) |
| K-017 | 32ε′ ≤ 1, S ≥ 1, κ_0 > 2 | (ii*) as an extra ε_1 cap | consistency = the global ε_1 audit: every ε_1 condition in CMP 116–122 is an upper bound or of the form γ ≪ ε_1 (open per SOURCES_A17_A19_VERIFY). M, 3 h |
| K-018 | (S): γ^{−2} ≥ c_sw D′ | (i) | closed (β_0 fixed before γ, R-048) |
| K-019 | ℓ even, thermal state, plaquette observable, subsequence limits | (iii) | hypotheses: thermal (periodic time), one observable, compactness form, no uniqueness. Not removable inside this project |
| K-020 | coupling domain ]0, γ] | (i) | closed |
| K-021 | Route K primary | (i) | closed |
| K-022 | θ_* < 1 (Route B) | (i) | closed |
| K-023 | g_0(K, g) any shooting solution | (iii) | hypothesis: limits may depend on the choice. Removable only by uniqueness of the shooting (not planned) |
| K-024 | (U): ρ_1 ≤ c_*r_0/M^a | (i) | closed (verified compatible with B-N1) |
| K-025 | M ≥ M_req (37 lower bounds) | (i) | closed (up-set) |
| K-026 | (Hα) | (i) as an M threshold | closed given H-027 (G_Γ ≤ Ḡ re-verify) and H-022 (s-rule) |
| K-027 | (Hγ), (2.31) γ condition | (i) | closed (γ-smallness) |
| K-028 | β_H first in the order | (i) | closed; residue H-052 (misprint reading); GGAIN_BETAH unverified: S verify |
| K-029 | M_2 slot | (i) | closed |
| K-030 | M_2 ≥ 1/δ | (i) | closed |
| K-031 | A_0 ≥ 80B_3A_1 | (i) | closed |
| K-032 | (Vol): torus side ℓ > 22M final cells; even form ℓ = 2L^{m_T} | (iii), mild | hypothesis: "the physical torus side is at least 22M (≥ 2L^{m_T}) in final-scale units". Removes small tori. Stated in THEOREM2_PROOF_v4 §1.1; keep as a stated hypothesis |
| K-033 | (Cube) | reading → Table 2 H-044 | — |
| K-034 | (Cases) "in exactly the same way" | sketch → Table 1 Q-037 | — |
| K-035 | (Conv): cube sides divide N; partitions = π-images of Z^4 partitions; M = KR_0M_0 | (ii) | consistency: Balaban's tori have side L^N and cubes are powers of L (CMP 109 pp. 251, 257). Show every partition he uses is translation-covariant; M_1 check (H-053). S–M, 2 h |
| K-036 | (Det′): domain-assignment rule for closed-walk terms of the [16] determinant | (ii) | consistency: CMP 102 pp. 271–272 bounds hold for any assignment that keeps locality (the trace splits exactly by walk). Write the half-page lemma. S |
| K-037 | p. 290 reading | reading → Table 2 H-045 | — |
| K-038 | (Enl): s-rule localization domain = whole-lattice ∪X_i^5 | (ii) | consistency: CMP 116 p. 3 is stated on the whole torus; the Λ-restricted alternative costs ≤ one M-cube layer, also admissible. Closed [P] |
| K-039 | (C1*) γ-smallness | (i) | closed (canon N-470) |
| K-040 | M_0 slot, a_*^{102} | (i) | closed |
| K-041 | R-016 tree conditions | (i) | closed (verified) |
| K-042 | H-063 (A18-1)–H-066 (A18-4), M ≥ 5M_99 | (i) | closed (acyclic, canon F.3); ε_0^{102} window nonempty |
| K-043 | CMP 122 H-266–H-270, X-001–H-280 | (i) | closed (Balaban's own) |

New conventions surfaced in Table 2 (proposed rows):
- K-048 (ii): ι-domain assignment (WG 2.5). Consistency = locality (H-003).
- K-046 (ii): the s-version of every covariance is defined on the WC_FULL walk expansion, not on Balaban's [13] expansion. Consistency = H-022 (consumers use only (L1)–(L2), bounds, analyticity). This is the most load-bearing convention.
- K-049 (ii): R-016 Ω-setting volume convention.
- K-050 (ii): R-044 H-091 (Conv_Λ) and Λ_j nesting.
- The two conventions of H-057 (C) (Table 4): U(c) = product of the L links on the straight segment c_− → c_+; axial contours Γ translation covariant. Both class (ii); consistency: a different U(c) adds ≤ O(L²) plaquettes per level and changes only constants (QE_KE_HQ_VERIFY (3)). S to write.

Table 3 size: 42 rows + 6 proposed (K-048–4, the two H-057 (C) conventions) = 48. Class counts on K-001–K-043: (i) 26 (K-002, K-005, K-006, K-008, K-012–K-016, K-018, K-020–K-022, K-024–K-031, K-039–K-043); (ii) 4 (K-001, K-035, K-036, K-038); (ii*) 3 (K-009, K-011, K-017); (iii) 5 (K-003, K-004, K-019, K-023, K-032); readings/sketches 4 (K-007 closed, K-033, K-034, K-037). (K-025, K-026 counted as (i).) Open consistency proofs: K-001 (via R-039), K-011 (inside R-035), K-017 (ε_1 audit), K-035, K-036, and the four new (ii) rows.

## 4. Table 4 — the H-057 (C) condition

### 4.1 Exact statement, as used

H-057 (C) for G (A1_WALK_FULL (H2) = H-298; WC_FULL C1; SOURCES_A1_KERNEL §8). Let N := QGQ* on ℋ = ℓ²(𝔅, μ), S := multiplication by (L^jη)², N̂ := S^{−1/2}NS^{−1/2}. Then
 Re⟨u, N̂u⟩ ≥ c_−‖u‖² for all u ∈ ℋ, with c_− = 1/K_ext > 0,
uniform in regular U ((3.35)–(3.36), Mα_0 ≤ a_0), j, k, η, {Ω_j}, and volume. Variational form: N̂ ≥ c_− iff every B on 𝔅 has a fine extension A with QA = B and ⟨A, G^{−1}A⟩ ≤ c_−^{−1}Σ_jΣ_{y∈Λ_j}(L^jη)^{d−2}|B(y)|².

H-057 (C) for G_1 (WC_FULL C2 = R-008 (C_1) = H-299; A1_KERNEL §9). N̂_1 := S^{−1/2}QG_1Q*S^{−1/2} ≥ c_{−,1} := 1/K_{ext,1} > 0, same uniformity, with c_{−,1} ≥ c_−(G)(1 − O(Mα_0)) ≥ ½c_− under the cap Mα_0 ≤ a_{−,1} = 1/(2C_{G1}) (canon N-230). The step uses G_1^{−1} = G^{−1} − Δ^{(2)}_π and |⟨A, Δ^{(2)}_πA⟩| ≤ O(Mα_0)·(form of H-057 (C)), "from (3.137) via Schur" [I].

Status words in the ledger: "conditional: torus-side hypothesis + two unprinted conventions" (rows R-001, R-002, R-003, R-008), plus one [I] for the G_1 step (SOURCES_A7_CDC_VERIFY (b2)).
- Torus-side hypothesis (SOURCES_QE_INV_VERIFY, torus paragraph): the side of the periodic lattice, in units of the coarsest block present, is ≥ c·RM (precisely: > RM/(2L²) suffices for the far/near split at D = RM/(4L²)). Below that size, wrapped loops are "near", have no spanning surface, and the holonomy bound fails.
- Convention 1: U(c) = product of the L level-(i−1) links on the straight segment c_− → c_+ (the x = c_− term of the corridor family).
- Convention 2: axial contours are translation covariant, Γ_{y+Le, x+Le} = Γ_{y,x} + Le.
- Unvalued constants: C′_1(d, L) (existence printed in CMP 98, value not), c_cone(d).

Consumers: A1-W R-025 (H2) and L-216 (Lemma LT)(e) (local inverses by restriction); R-001 kernel form via L-125 (Lemma CT); WG-G1 H-212 (I6) through A1-W for G_1; WC_FULL C1–C2 ⇒ R-003; R-008 L-226 (Lemma N) (γ_1^N contains K_{ext,1}); R-016 via A1-W for G_1; R-009 via WC. So H-057 (C) sits under R-001, R-002, R-003, R-008, R-009, R-016, and through them under G3, R-037, R-013's inputs. It is the most load-bearing single condition in the propagator layer.

### 4.2 What is proved toward H-057 (C)

| piece | status | source |
|---|---|---|
| L-125 (Lemma CT) (accretive Combes–Thomas, block inverse-closedness) | [P] + [L] (Lean combes_thomas, coercive_inv, schur_test, BlockSchur; no sorry) | SOURCES_A1_KERNEL §7; A1_WALK_FULL §3; lean/VERIFY_CombesThomas |
| (K) kernel input for N | [R] to CMP 99 Thm 3.12 / Thm 3.3 | A1_KERNEL §8 |
| H-136 (KE′): Q_j is the straight-line average; QH = I on all of 𝔅 incl. interfaces and Λ_0 | [V] by citation (CMP 95 (1.11)/(1.18), CMP 96 (2.7), (2.35), CMP 98 p. 27) | SOURCES_QE_KE_HQ + VERIFY |
| H-123 (H_Q): k-step averaging vs axial transport, error ≤ c_Hα_0ℓ_j² | [P] (D_j induction = CMP 98 (144)–(145)) | SOURCES_QE_KE_HQ_VERIFY (3) |
| Feasible extension 𝓔_U = dressed free minimizer; Neumann K_Q ≤ 2 for c_QMα_0 ≤ ¼ | [P] given (KE), H-123 (H_Q), torus side | SOURCES_QE_INV §4–§5 + VERIFY |
| S2 for G: |⟨A, Δ′_πA⟩| ≤ C′_ΠMα_0(‖DA‖² + ‖D*A‖² + ‖ℓ^{−1}A‖²); G^{−1} ≤ (1 + O(Mα_0))(D*D + DD*) + O(Mα_0)ℓ^{−2} + Q*aQ | CLOSED [P], conditional on H-136 (KE′), QE_INV 5.1/5.3, a = 1 [I-a1], [I-geom] (now closed) | SOURCES_S2_FORM + VERIFY |
| S2 for G_1 | CLOSED [P] on printed CMP 99 inputs + one I-conv (symmetry of Δ^{(2)}) | SOURCES_S2_G1_V7 + VERIFY |
| R-004: C*Δ_kC ≥ γ_0 = m_L/(48d²L^d) | FULL PROOF, verified | SOURCES_A3_GAMMA0_FULL + VERIFY. Note: R-004 is a lower bound for a different operator (the constrained precision on unit fields, not N̂ on 𝔅). It shares the method (block Poincaré + covariant comparison) and the inputs R2, R3, R-Δ2, but it does not imply H-057 (C) |
| L-208 (Theorem L) (WC_FULL §3): A_exp ≥ γ_exp = ¼γ_e | [P] | WC_FULL; again a different operator |
| §7.3 partition bound Σφ² ≥ c(d) = 1 | [P] | A1_WALK_FULL_VERIFY |

### 4.3 What a full proof of H-057 (C) still needs

1. State the torus-side hypothesis as part of L-001 (Theorem 2w)'s setting (or derive it). Check: Balaban's tori have side L^N ≥ L^{K + m_M + 2} (K-032). In coarsest-block units the side is L^{N−j_max}. So the hypothesis reads L^{N − K} ≥ c·RM/L² at the coarsest scale K. K-032 (Vol) already demands side > 22M final cells. Task: show K-032 ⇒ the H-057 (C) torus side for the R used, or add the explicit inequality RM ≤ c′·22M (i.e. R ≤ const) to the canon. If R is a fixed (d, L) number (canon N-180), K-032 with a larger constant implies it. Effort S. This turns the "hypothesis" into one more line of K-032, class (iii) mild, already stated.
2. The two conventions: write the half-page lemma "any choice of U(c) inside the corridor family and any translation-covariant axial Γ changes c_− only by a factor (1 + O(L²α_0))". Effort S.
3. The constants C′_1(d, L) and c_cone(d): existence suffices for H-057 (C) (only uniformity is needed). Value not needed. Closed by statement.
4. QE_INV 5.1/5.3: the Neumann invertibility and the energy bound are [P]; 5.3 [I-c] (far thin loops, closes for RM ≥ 8 log L/δ_H) is a P-sketch. Write it out. Effort M, 3 h.
5. [I-a1]: a = 1 in Thms 3.1/3.3. IMG check of CMP 99 Thm 3.1 statement (the averaging constant a). Effort S.
6. The G_1 step: write the Schur bound |⟨A, Δ^{(2)}_πA⟩| ≤ C·Mα_0·H-057 (C)-form from (3.137) + symmetry (H-017, H-018). Effort S–M, 2 h.
7. Assemble one theorem "H-057 (C) for G and G_1", paper grade, with a verifier. Effort L, ≈ 6 h (items 1–6 feed it).

Total for H-057 (C): ≈ 15 agent-hours, about 8 agents. Risk: low for items 1–3, 5; medium for item 4 (multiscale far-loop geometry across Ω_j interfaces is where earlier gaps sat, e.g. the Q_95/Q_98 misreading).

## 5. Group B items outside the four tables (for completeness)

"Close everything" also covers our own open Group B items. They are not Balaban inputs, so they are not in Tables 1–4.
- R-027 (F) lattice log coefficient = continuum. The only Target 1 input without a verified reduction of full strength: H-137 (L-LL) is UNSUPPORTED as a theorem, Lemma 1 (magnetic Weyl bound) is cited as standard and unchecked, Step C gauge-fixing part is [I] (H-049), and the β_1 vs c log L numerical tension is open. XL, 15–20 h, uncertain.
- R-039 (H-thr) residue: (R1) holomorphy at frozen s′ ≠ x*, (R2)–(R4); small-field analogue of (1.73) (H-055). M–L, ≈ 8 h. Target 2 only.
- R-037 large field: coarea Jacobian on non-round level sets (H-056). M–L, ≈ 6 h. Target 2 only.
- R-008 complex-s / complex-U clause at P-sketch level (H-020). M, 3 h.
- R-028: only the o(f²) form; the printed rate is unused. Closed for the chain.
- R-025: certified at L = 13, 15, 17, 21 only (K-003). No work planned; this is residue.

## 6. Prioritized closure list (load-bearing weight × tractability)

| rank | target | weight (what rests on it) | tractability | effort |
|---|---|---|---|---|
| 1 | H-057 (C) for G and G_1 as one paper-grade theorem (Table 4 items 1–7) | R-001, R-002, R-003, R-008, R-009, R-016 ⇒ G3, R-037, LOC, and R-013's propagator inputs | high: all pieces exist; items 1–3, 5 are S | ≈ 15 h, 8 agents |
| 2 | CMP 99 Thms 3.7, 3.9, 3.10 covariant write-outs, with the M_1 version (Q-036) and the complex form (Q-007) | every walk expansion: WG-G, WG-G1, A1-W, WC, R-016; also Thms 3.1, 3.3 | high: U = 1 templates CMP 95 Prop. 1.2, CMP 96 Prop. 2.2 are FULL; same format as the three FULL files | ≈ 20 h, 12 agents (three L write-outs + complex add-on) |
| 3 | R-027 (F) lattice transfer and the β_1 numerical tension | Target 1 directly (Route K); the only Target 1 Group B item without a full-strength reduction | low–medium: H-137 (L-LL) is the hard step; Route B (R-033) is the alternative | ≈ 15–20 h, 10 agents, uncertain |
| 4 | s-rule convention K-046 + consumer check (H-022), with R-016 H-035 (M1) completeness (H-035) | R-009, R-016, G3 (K-026), R-013 Lemma 1 consumers | high: a scan plus a short lemma | ≈ 7 h, 4 agents |
| 5 | CMP 109 p. 254 transfer (Q-026) with H-010 (Q̃ = Q_1(U_1)) and H-009 ((2.11) = (3.156)) | all of WC_FULL ⇒ R-003, R-008, R-009 | medium: finite list of CMP 98/99 results to re-check under the symmetric average | ≈ 8 h, 5 agents |
| 6 | Image-read batch: H-004, H-018, H-021, H-025, H-026, H-029, H-030, H-033, H-034, H-038, H-040, H-041, H-043, H-045, H-047, H-050–H-052, H-054, Q-007 (proof pages), Q-014, Q-015, Q-019, Q-020, Q-029, [I-a1] | many small [I] tags in R-002, R-009, R-011, R-017, R-018, R-019, N6, N8 | very high: one agent per paper, page images exist in balaban/ | ≈ 15 h, 10 agents |
| 7 | Short proofs replacing readings: H-001/H-002/H-023 (own cover and partition), H-003 (locality), H-005/H-036 (C0 in general), H-008, H-017 + Q-013 (Schur for Δ^{(2)}), H-024, H-027 (re-verify G_Γ ≤ Ḡ), H-031/H-032 (complex (189)), H-042, H-044 (K-033), K-035, K-036, the H-057 (C) conventions | propagator and R-015 layers | high | ≈ 30 h, 15 agents |
| 8 | K-034 "in exactly the same way" (Q-037); R-011 R- and C-terms (Q-031); R-014 closure constant (Q-030); R-005 (90)–(97) bookkeeping (Q-023); K-017 global ε_1 audit | R-015 ⇒ R-032 (Theorem 1 input), R-011 ⇒ SM, R-013 internals | medium | ≈ 16 h, 9 agents |
| 9 | T2-only items: R-020 R1/R3 (Q-042), R-039 residue, R-037 coarea, R-008 complex clause, K-011 inside R-035 | R-046, B-S, R-037 (H-hist), R-043 (FX) | medium | ≈ 21 h, 12 agents |
| 10 | Final consistency pass: TRUST_LEDGER round 8, canon F.2 items (C_1^{FX}, κ ≥ 1536), one independent end-to-end verifier per target | both targets | high | ≈ 6 h, 4 agents |

## 7. Total estimate

Sum of §6: about 155–160 agent-hours, about 90 agent runs (each run = write-out or verifier). Counting items: 18 (Table 1) + about 45 (Table 2, after merging duplicates) + 9 (Table 3) + 1 (H-057 (C)) + 5 (§5) ≈ 78 items.
At today's pace (≈ 70 Opus agents, ≈ 25 items, ≈ 14 h wall), items alone give ≈ 44 h wall and ≈ 220 agents. The small image reads close faster than today's average item, so the honest range is 30–45 h wall and 120–220 agent runs, over three to four sessions like today. Rank 3 (R-027) carries most of the uncertainty: it can fail, and then Target 1 needs Route B (R-033), which has no verifier file.

## 8. Residue that stays after all four tables close

Even with every row of Tables 1–4 closed, these remain, by design or by scope:
1. Finite torus. Target 2 is existence of subsequence limits on T⁴_ℓ with (OS0)–(OS3). No infinite-volume limit, no mass gap, no uniqueness of the limit (K-019, K-023). Not a Clay solution.
2. Torus size. K-032 (side ≥ 22M final-scale cells, even form ℓ = 2L^{m_T}) and the H-057 (C) torus-side inequality. Mild, stated, not removable inside Balaban's method.
3. Fixed L and group. L-001 (Theorem 2w) holds at the certified L ∈ {13, 15, 17, 21} (K-003), for SU(2), d = 4 (K-004). Other L need new R-025 (H2) certificates; other groups need new SU(2)-specific steps.
4. Weak form. L-001 (Theorem 2w) gives existence of a bare coupling g_0(K, g), not uniqueness or monotonicity; the window bound is two-sided only in the (c′) form; R-028 holds only as o(f²).
5. Thermal state and one observable (K-019): periodic time, centred plaquette density, test space D_n.
6. Published-mathematics trust. Class-A items (Table 1: CMP 95, 96 propositions, CMP 96 Lemma 2.1, CMP 98 Prop. 2 and (124)–(146), CMP 99-reg Prop. 6, CMP 102 Thm 1 and Props. 3–4, 6, CMP 109 Sects. 3–5, CMP 116 sup induction, CMP 119 (2.6)–(2.9), CMP 122 I–II, and R-013 itself) are accepted, not re-proved. Of these, only CMP 96 Lemma 2.4 was re-proved, and its printed proof was wrong for L ≥ 10. So the class-A trust is not zero-risk.
7. External citations X-002–X-005 (OS II, Osterwalder–Seiler reflection positivity [text not fetched], Cammarota, Savvidy).
8. Verification grade. "Verified" in this project means an independent Opus or Fable agent checked the write-out against page images. No human referee has read any of it. Lean covers only small lemmas (Combes–Thomas, Schur, slab counterexample, K1′ numerics, rho2_le, P4).

## Status addendum (2026-10-28 night)

Every line below is [per PLAN.md, not independently checked]. Quotes are PLAN.md wording. "Running" items are as stated in the launch brief; PLAN.md records them as "→ verifier Bxxx" or "→ ... pass".

### Top-5 targets

1. (C) as one theorem. [per PLAN.md, not independently checked]
   - SOURCES_C_CONDITION_VERIFY: "ALL FIVE CLAIMS CONFIRMED. (C) PROVED for G and G_1 relative to: (KE′) [V] (torus-uniform constants [R]), CMP 99 Thm 3.1 (a = 1), Thm 3.3 (3.46) [R-sketch], Thm 3.11 (G > 0) [R], the (3.137) constant [R], CMP 96 Lemma 2.1 [V]; project steps (H_Q), Theorem QE, S2 [P]; readings [I-a1], [I-geom], d-path metric, the Δ^{(2)} symmetry reading; parameters θ ≤ δ_0/2, θ_S ≤ δ_H/8."
   - "the (C) condition is no longer a bare hypothesis — it is a verified reduction to Balaban's printed theorems plus readings." Lemma T plus (Vol) discharge the torus side. A3's γ_0 does not imply (C).
   - TRUST_LEDGER round 9 added A24 (printed CMP 99 inputs of the (C) proof), C43, C44.
2. CMP 99 Thms 3.7, 3.9, 3.10 write-outs. [per PLAN.md, not independently checked]
   - THM37_FULL: "NEEDS FIXES, all local." (X-PU) is "a Balaban ERROR, not a sharpening". Fix pass F18 is queued "after THM310 lands" (applied/pending per brief; PLAN does not record it as applied).
   - THM39_FULL: "NEEDS FIXES (minor, local) → PAPER-GRADE after them." F17 APPLIED. "(AL) as written UNSUPPORTED; (AL′) PROVED rel. CMP 98 Prop. 2 [R] + one reading." F19 (three (AL′) edits plus the WG_FULL (I3) rate fix) is pending after the THM310 verifier.
   - THM310_FULL: "(Opus, 337 lines, unverified)". "→ verifier B118" (running per brief). Grade proposal: "R1 (Thm 3.10) SKETCH → [P] given Cor. 3.6 [R-sketch], THM37_FULL, THM39_FULL, the [I] items".
3. B3 and the beta_1 tension. [per PLAN.md, not independently checked]
   - SOURCES_T2_LLL_VERIFY: "(L-LL) PROVED relative to three standard results ... and S123 Lemma 5.1's identification step [I]" (PROVED+VERIFIED).
   - SOURCES_T2_MPT_STEPC: "B3's (F) PROVED relative to textbook facts ... + verified project lemmas". Proper-time route; "(3.1′) holds WITHOUT STEPB Lemma 2 and WITHOUT Step C". "→ verifier B115" (running per brief). "Remaining: verifier; the upstream S123 Lemma 5.1 identification [I]; the STEPB §2.0 neutral-sector sketch."
   - "The β_1 slope tension unchanged" and "[N] ... open". The jax port (B105) restarted beta1 on the GPU: "projected 3–5 h for all six points". The GPU test is running per brief. Route B (B9) is not needed if B3 holds.
4. s-rule convention and (M1). [per PLAN.md, not independently checked]
   - SOURCES_SRULE_CONVENTION_VERIFY: "C-new-2 ADMISSIBLE rel. (FI) for tree factors [R], WG-G1 [R], I-a, C34". Three edits listed. "→ ledger: add convention row C45".
   - SOURCES_M1_SWEEP: "(M1) CLOSED [V] as a list". "→ verifier B117 brief" (running per brief). NEW-1 Euclidean part and NEW-2 supplied. Round 11 (SOURCES_M1_SWEEP_VERIFY): (M1) CLOSED as a list (completeness rests on image reads), with open dependencies NEW-3 (I-37, REDUCED), C34 (NEW-1(c), localized-term covariance under translations that do not preserve the M-cube partition), and NEW-4 (CLOSED). NEW-1 is supplied at operator level [P given I]; NEW-2 holds [P] only relative to Q1 on the Ω-sequence operator (= NEW-3).
   - Open outside (M1): "NEW-3 — CMP 119 pp. 275–276 use the walk expansions in the multiscale Ω-sequence geometry ... (I-37 / C-new-3)". "NEW-4 — CMP 122 II (1.7)–(1.13), (1.21), (1.40), (1.77) use a lower bound on the R-operation Hessian ... (D3 / SOURCES_D2 §8)". Round 11: NEW-3 REDUCED (SOURCES_MULTISCALE_OMEGA + VERIFY; row I-37; sourced extension B133 running). NEW-4 CLOSED (SOURCES_D3_NEW4 + VERIFY) relative to D3 (B8)/(P4)/(P5)/(P6), D3R Lemma P3 + §1.3–1.4, canon B32, FX_O23 §4; the owner is SOURCES_D3, not SOURCES_D2 §8.
5. CMP 109 p. 254 transfer. [per PLAN.md, not independently checked]
   - SOURCES_P254_TRANSFER_VERIFY: "(1) CONFIRMED ... (2) CORRECTED ... Status: p. 254 transfer PROVED rel. CMP 98 [R], A18, the M axiom; p. 253 ASSERT separate and partial; p. 275 ASSERT needs a row."
   - A25 (p. 253) and A26 (p. 275) added at ledger round 10. "a short write-out for the p. 253 'valid universally' and p. 275 assertions (B114)" (running per brief).
   - "NEW GAP IN WC_FULL: §3.1(2) applies A3-4.3 in the exponential gauge where the axial condition fails, so WC_FULL's 'A3-4.3 uses no condition inside the blocks' is FALSE — fix = the same (d, L) constant change (γ_exp smaller)". The fix is listed as "WC_FULL §3.1(2) constant fix ... at ledger round 10" (running per brief).

### Per-table lines [per PLAN.md, not independently checked]

- Table 1 [R]: of the 18 entries that needed work, Thm 3.9 now has a paper-grade write-out ("PAPER-GRADE after" F17, which is applied). Thm 3.7 is "NEEDS FIXES" (F18 pending). Thm 3.10 is unverified. So 1 of 3 covariant write-outs is paper-grade. Also proved relative to a source: the p. 254 transfer (R26). R4 of A2 is "verified". (C) pieces R-sketches are tagged in A24. Other Table 1 rows (B20 W4-R, B21 (S′), A9, A12, A20, A22) were verified in other PLAN entries.
- Table 2 [I]: 8 VERIFY entries with "images" grades plus the (AL) check (images) appear in PLAN since the CLOSURE_PLAN entry: B20_W4R, BOOKKEEPING, C_CONDITION, IV12, P254_TRANSFER, SRULE_CONVENTION, THM39, THM37 (9 with the (AL) check). Settled readings include the gauge-covariance reading of CMP 98 (64)–(108) (U3, U4, U6 [P]), block-diagonality of Q′_j (CMP 98 (77)–(80)), and the I-22 s-rule corrections. I-09 and I-10 are addressed in SOURCES_P254_TRANSFER (I-10 wording corrected in the verifier).
- Table 3 conventions: added C43 ((Cv1), (Cv2)), C44 (Lemma T cut-off, (T2), parameters), C45 (s-rule convention C-new-2), C46 (γ²β′ ≤ 1/L). Dropped: C9 ("C9 UNUSED (A17 at r = 1; A5's 'C9' is H0's internal label)"). Ledger counts: "A 22 / B 22 / C 46 / X 5".
- Table 4 (C): see Top-5 item 1. Torus-side hypothesis "DISCHARGED" by Lemma T with (Vol) and M ≥ c_T/22 (added to B18). Free-case constants c_−^free = 5.10e−3 (d = 4).
- §8 residue: unchanged except these items, which PLAN lets me mark changed. Item 2 (torus size): the torus-side inequality of (C) is discharged by Lemma T and (Vol); C31 remains. Item 8 (verification grade): Lean now has 45 files (count reconciled), not the six small lemmas listed. Item 6 (published-mathematics trust): the p. 254 transfer and (C) now rest on printed CMP 98/99 inputs tracked as A24, A25, A26 (A24 to A26 are "Group A rows of T2 without verified proof/reduction"). Plans for infinite volume are in INFINITE_VOLUME_*.md; Elvin removed plans from the paper. All other residue items 1, 3, 4, 5, 7 unchanged.
