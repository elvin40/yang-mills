# TRUST_LEDGER_VERIFY

Independent check of TRUST_LEDGER.md (2026-10-27). Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.

## Log

### Step 1 — read TRUST_LEDGER.md (163 lines)
Structure as claimed: §0 targets, §1 A1–A21 + X1–X4, §2 B1–B21, §3 C1–C22, §4 binding sets, §5 counts, §6 departures. First internal check of §5 counts: T2 Group A list in §4.2 = {A5,A11,A12,A13,A15} ∪ {A1,A2,A3,A4,A7,A8,A10} ∪ {A16..A20} = 5+7+5 = 17; minus A17 (C9) = 16. Consistent. T1 alone {A5,A15}; T1⇒Thm1 adds A11,A12,A13 = 5. B count T2 = B1–B8, B10–B21 = 8+12 = 20. Consistent.

### Step 2 — keyword scan of all 55 *_VERIFY.md files
The ledger read only SOURCES_*_VERIFY, SOURCES_VERIFY, ASSEMBLY_VERIFY. Eleven non-SOURCES verify files carry hits: R2, U1, U3, U3_LEMMA51_R23, THEOREM2_PROOF, THEOREM2_PROOF_v2, BETA_FP, BETA_FP_LEMMA43, H2_CERTIFY, LEMMA_B4, PAPER_INTRO. Relevant hits: R2_VERIFY rows 10 (V1 order-g⁰ completeness, UNSUPPORTED = B5), 12 (V3 uniform-in-j bound, UNSUPPORTED, "not stated on p. 264"), 13 (V4 regime bound, CMP 99 p. 428 "we can prove it" = A3 side); R2_VERIFY l.104 Lemma U2 not proved. BETA_FP_VERIFY l.37: block-LL' = block-L then block-L' composition proved for Δ only (U3 Lemma 1.2); CMP 109 (0.4) path/loop-log terms not covered. U3_LEMMA51_R23 (W)/(N) plausible/open. LEMMA43 (H) UNSUPPORTED. Need v4 §10 to decide which of these feed Route K.

### Step 3 — THEOREM2_PROOF_v4 §10 read
Route K set = H (H2), items 1–6, common 7–13. Item 7 (H0) = "|β_j(g) − β_j(0)| ≤ C_1 g uniform in j and history" = A5 only; the "(or analytic)" A6 is not used by Route K. Naming clash: v4 Route B item B5 is called "A6" (plane-wave increment = Balaban's β, uniform in k); ledger A6 is the analyticity statement. Ledger B9 carries v4's A6 correctly but the label collision should be noted. Item 10 lists BALABAN_CHECK item 11 unchecked readings (Π (4.37)/(5.1), CMP 119 (2.42), (2.12)/(2.23), the "L odd" page, Sect. 3 estimates, 1989 bound lists): no ledger row covers them (A11, A12 cover only part of item 10). Item 11: (H0) and β_j(g>0) exist only at odd L > 11 — a Balaban-range restriction, not a free choice. Item 12: chain unchecked for N > 2.

### Step 4 — v4 §4 (Route K, Route B) read
Theorem K (§4.1 step 3) uses (E0) Prop. B, O5/A0, Lemma M and (E1) Theorem A3 + Theorem W, plus (B2). The ledger lists none of Theorem A3, Theorem W, Prop. B, O5, Lemma M. Must check whether each is proved+verified (then correctly off-ledger) and whether any of them cites Balaban (e.g. U3 Theorem 7.1 cites CMP 96 p. 246 uniform derivative bounds of H). (H0) in §4.1 = A5 only. Route B A6-label clash confirmed (§4.2a).

### Step 5 — KAPPA_BOUNDED inputs
Theorem A3, Theorem W, Lemma M, Prop. A2, Prop. E: CONFIRMED in U3_AW_VERIFY (KAPPA l.153). Correctly off-ledger. "(W)" open of U3_LEMMA51_R23 is the convergence-route object, not Theorem W; correctly in "not needed". KAPPA l.125: Lemma D″ hypothesis (i) = β_{k+1} ∈ C¹([0, γ_0]) and |β_{k+1}(g) − β_{k+1}(0)| ≤ C_1 g, C_1 free of k, K. This uses the g = 0 value and Lipschitz continuity up to g = 0. Ledger §2 "not needed" list and C19 say the g = 0 endpoint of A5 is unused. That holds for T2/B13 (GGAIN on (0, γ]) but NOT for T1: T1 needs A5 including continuity to g = 0 in Lipschitz form (β_j(0) is the one-loop quantity Theorem K controls). Correction to §2 trailer and C19.

### Step 6 — GGAIN_VERIFY §7 on the endpoint
GGAIN_VERIFY l.48: a uniform Lipschitz bound on (0, γ] extends β continuously to 0; only C¹ at 0 is unproved. So T1 needs Lipschitz on (0, γ] plus the identification of the limit β(0+) with the one-loop Maxwell coefficient (V1 = B5). Step 5 correction softened: C19 is acceptable for T1, but KAPPA l.125 states (i) on the closed C¹([0, γ_0]); the ledger should say T1 uses the Lipschitz form only. Minor.

### Step 7 — A5 uniform-in-j reading
R2_VERIFY l.110, row 12: "V3 uniform-in-j bound … the sentence on p. 264 does not say 'uniformly in j' … Status: open, plausible" (UNSUPPORTED). T1 uses C_1 independent of k, K and of history (v4 item 7; KAPPA l.125). Ledger A5 quotes "uniformly bounded … together with all derivatives" and does not flag that j- and history-uniformity are our reading, not print. Correction: A5 status should read "asserted (Balaban) in g; uniform in j = our reading (R2_VERIFY V3, UNSUPPORTED); uniform in history not printed (cf. B7)".

### Step 8 — PLAN tail (l.182–237) open-phrase extraction
~45 open/[I]/UNSUPPORTED phrases extracted. To map: "linear form NOT proved [I] (non-abelian lattice Peierls lemma)"; "Open: ∂Λ blocks, gauge-fixing term, exact corridor, Schur lattice factors"; "'free proved' holds for single-scale U = 1 only — multiscale needs e^{−δRM} correction [I]"; "Q_95 vs Q_98"; "2κ·#M(Y) volume cost extended to large Y [I]"; "Large-field part OPEN (R operation radius not uniform in k"; "K → K_0 indicated not proved"; "γ_0 needs regularity UNSUPPORTED"; "localized B-marginal ≤ γ_0^{−1} [I]".

### Step 9 — PLAN-tail contexts
CDC/EU-route items (linear form of K ≤ K_0(…) NOT proved [I]; ∂Λ blocks, gauge-fixing term, corridor, Schur factors open; "free proved" single-scale U = 1 only [I]; Q_95 vs Q_98; k-uniform E_0 moments; C′_1) all sit on the (E_U)/CDC alternative to A1. Ledger covers C′_1 (A9) and E_0 moments (A21) and marks the route alternative; "Q_95 vs Q_98" and the K → K_0 / linear-form / ∂Λ / Schur items are not named. Not binding (alternative route) but §4.2 step 8 says "four [I] items (EU_VERIFY §5 (a)–(d))" — check they include these. HHOL "large-field radius not uniform in k" is superseded by HHOL_LF (B17). FX R2 [I] items in PLAN ("2κ·#M(Y) extended to large Y; form of κ_final") differ from the A20 pair (R_{K+1} ≥ 1, C_c) — check FX_R2_VERIFY.
