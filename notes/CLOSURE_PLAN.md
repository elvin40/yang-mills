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
