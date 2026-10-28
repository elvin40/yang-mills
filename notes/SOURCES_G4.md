IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_G4 — Lemma G4 repair (real-t Mayer form, per-vertex absorption)

Date 2026-10-28. Task C2 of OPUS_QUEUE. Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md not read.
Status tags: [proved], [reduced], [check], [open].

## 0. Process log
- Step 1: grep for "G4" across *.md and reports/*.md (firewalled files excluded). Hits in B2_TWOSTEP, H2_CERTIFY*, H2_LARGE_L, SOURCES_D3W8 are unrelated local gap labels ("G4" = fourth gap item of that file). Relevant hits: SOURCES_GGAIN §5.1, §5.3, §8; SOURCES_GGAIN_VERIFY items 3–4; SOURCES_G3 l. 67; TRUST_LEDGER l. 145; INDEX l. 94; PAPER_INTRO_VERIFY F-items; OPUS_QUEUE C2.
- Step 2: read SOURCES_GGAIN §1–§7, SOURCES_GGAIN_VERIFY §5 items 3–4, SOURCES_G3 §4.2 and §5, SOURCES_G3_VERIFY l. 11–15, SOURCES_HHIST2 §3 Route 2(a), §5, R1–R7, SOURCES_SM §4.2, TRUST_LEDGER B13, B14 rows and DAG steps 4, 6, 7, paper/assembly.tex l. 200. CMP 116 page images were not opened: the task stops at part (1) (see §1).

## 1. Part (1): what Lemma G4 is needed for

1.1 What G4 is. SOURCES_GGAIN §5.1: weight EVERY vertex of a Mayer term by its pointwise size g_k|B|_Y, absorb all weights into the Gaussian, and get ε_1 → ε_g = K_2g_kα_4^{−1/2} in all vertex factors. GGAIN uses it in two places only:
 (U1) §5.2, the hop. GGAIN itself says G4 is not needed there (one marked vertex, Lemma G2). GGAIN_VERIFY item 4 CONFIRMED this.
 (U2) §5.3, route (a) for the FIRST own-slot derivative: G4 on a complex u-disc gives the sup C_GE_0g_k, then Cauchy gives ∂_gE = O(1).
 G4 also feeds the consequence §6.3 (hop gain λ_g → L^{−α_*}). §6.3 calls this "a refinement, not a requirement".

1.2 Which results cite G4, and whether the citation carries load.
 (a) SOURCES_GGAIN §4.4 Theorem B2-unif and §4.5 C_β (route (b)). Proof (i) marks ONE factor: τ(Y_1)∂_gV(Y_1) (Lemmas G1, G2) or one cut bond (Lemma G3). All other vertices keep Balaban's sup at Balaban's τ-circle. G4 is not used. GGAIN_VERIFY: "uniform S_0 and C_β CONFIRMED".
 (b) SOURCES_G3 §5 [R] list: "Lemma G1, G2, G4 of GGAIN as stated there". The G3 body (§2.1–§2.3, §4.2) bounds one cut-bond derivative against T_maj, Balaban's majorant with his sup sizes. No ε_g, no weighted vertex appears in the body (grep: only l. 67). The citation is a list entry, not a used input.
 (c) TRUST_LEDGER B13 row ("Lemma G4 repair via the real-t Mayer form [reduced]") and DAG step 7 ("G4 repair [reduced]"). B13 = real uniform (H-hist) ⇐ GGAIN route (b) + G3. By (a) and (b) that chain does not pass through G4. The entry is an over-listing.
 (d) SOURCES_HHIST2 Route 2(a) (own-slot second derivative by the relative u-disc Cauchy). §3.5(a) uses SM §4.2 holomorphy with Balaban's sup C_uE_0, NOT the G-gain sup. HHIST2 l. 78 and l. 112: "needs no G-gain, no G3 at any order, no second insertion". The 1/u radius loss leaves g⁴ per second derivative, summable (HHIST2 P3). TRUST_LEDGER B14: "no input beyond Theorem SM + joint u-disc × input-ball holomorphy [R]". G4 is not used.
 (e) SM §4.2 itself (the u-disc holomorphy that B14 uses) predates GGAIN. It runs at Balaban's τ-circle with the quadratic vertex z·Q of relative size z_0. GGAIN_VERIFY's G4 problem came only from ENLARGING the τ-circle to 1/ε_g. So that problem does not transfer to SM §4.2 at Balaban's circle. SM §4.2 stays [reduced] on its own terms (W4 §7(d) vertex caveat), unchanged by this file.
 (f) Status-only mentions: INDEX l. 94, PLAN l. 186, OPUS_QUEUE C2, PAPER_INTRO_VERIFY F-items, paper/assembly.tex l. 200 ("Lemma G4 corrected, fix reduced"). These report status. Nothing downstream uses their content.

1.3 CONCLUSION. No load-bearing result cites Lemma G4. Its only use is GGAIN §5.3 route (a) for the FIRST derivative. Route (a) is an alternative to route (b), and the chain (B13 ⇐ GGAIN route (b) + G3 ⇐ (Q)) uses route (b). The SECOND-derivative u-disc route (HHIST2 Route 2(a), B14) needs Balaban's sup only. Per the task rule, parts (2)–(3) (the real-t Mayer rewrite and Lemma G4′) are not carried out.

1.4 One remark on the brief's proposed fix, for whoever reopens G4. The brief says "n ≤ 4 insertions per vertex, so a fixed polynomial is absorbed". That bounds the degree PER VERTEX. In G4 the number of weighted vertices is |D|, which is unbounded. The product Π_{Y∈D}|B|_Y^{n_Y} is absorbed only through the decaying strengths a_Y = α_4e^{−δκd_k(Y)} and the resummation Σ_{Y∋b}e^{−δκd_k(Y)} = O(1) (GGAIN §5.1, GGAIN_VERIFY item 3). It is not absorbed through a bound on the polynomial degree. Also, the per-vertex cost (2a_Y)^{−1/2} must be summable against the D-sum. GGAIN pays it from the (1−3δ) decay (δ → 2δ). A future G4′ must keep both steps.

## 2. Ledger (authoritative)
[V, files read this session] GGAIN §4.4 proof (i) marks one factor; GGAIN §5.2 "Lemma G4 is not needed for Use 1"; GGAIN §6.3 "refinement, not a requirement"; GGAIN_VERIFY items 3 (CORRECTED) and 4 (CONFIRMED, no G4 for the hop); G3 l. 67 is the only G4 mention in G3; HHIST2 l. 78, 112 (Route 2(a) needs no G-gain); TRUST_LEDGER B13 row and DAG step 7 list "G4 repair [reduced]"; B14 row lists no G-gain input.
[P] 1.3: Lemma G4 is not load-bearing in the current chain. Its only consumer is GGAIN §5.3 (route (a), first derivative), which is off-chain.
[P] 1.4: the absorption of all-vertex weights needs the decaying strengths a_Y and the resummation over Y ∋ b, not a degree bound.
[R] unchanged: SM §4.2 relative u-disc holomorphy (B14 input); GGAIN route (b) chain inputs (G3 ⇐ (Q), (M_r)).
Not done (by the task rule): real-t Mayer rewrite of (2.1); Lemma G4′ statement. CMP 116 pp. 12–17 page images not opened.
Recommended ledger edits (for the owner; this file edits nothing): TRUST_LEDGER B13 row and DAG step 7: delete "Lemma G4 repair [reduced]" from the B13 modulo list, or move it to an "off-chain: route (a), hop gain §6.3" note. SOURCES_G3 §5 [R]: "Lemma G1, G2 of GGAIN" (drop G4). paper/assembly.tex l. 200 and remains.tex: "Lemma G4 (off-chain; corrected, fix reduced)".
