# SOURCES_SWEEP_H — class (a) items of OPEN_ITEMS_SWEEP: S-76 and the verifier/statement-check bullet (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5). Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were excluded from every grep. Ids follow IDS.md. Labels S-nn are those of OPEN_ITEMS_SWEEP.md. No existing file was edited. PLAN.md was not appended. sync.sh was not run.

Method. One independent read-only verifier (Opus) per item. Each verifier received the file name and the claim, not an expected verdict. The coordinator spot-checked one load-bearing finding per report (noted as "spot-check"). Grades: CONFIRMED / CORRECTED / UNSUPPORTED.

Scope. The bullet also names S-99, S-47, and S-70's shortcut (FABLE_O3_ALC Tasks A and B, FABLE_A25_A26_H1 §1). The bullet itself states that these three need the author's word, because the author holds the Fable-file verifiers. This sweep did not run them. They stay open.

## 1. S-76 (X-003): Osterwalder–Seiler, Ann. Phys. 110 (1978) 440–471

Verdict: NOT OBTAINED. The text was not reachable without login. No quotation is possible. The paper/assembly.tex l. 107 statement stays "Content as usually stated", status [cited].

Attempts (all 2026-10-28, downloads in /tmp/os78, deleted afterward):
1. INSPIRE-HEP record 120117 (title "Gauge Field Theories on the Lattice", report Print-77-0570 (HARVARD)): metadata only, no attached document or scan.
2. Semantic Scholar API: openAccessPdf status "CLOSED".
3. Unpaywall API: requires a real user email; not sent (the user's email is not for third-party services). Semantic Scholar already reports closed access.
4. Crossref: links only to Elsevier text-mining endpoints; the licence is the Elsevier TDM user licence.
5. Elsevier API (api.elsevier.com, full text and META_ABS views): HTTP 400 / 401, "Invalid API Key".
6. ScienceDirect article page and /pdf endpoint (pii 0003491678900398): HTTP 403.
7. Wayback Machine: no snapshot of the ScienceDirect page.
8. Internet Archive full-text search: no copy of the paper or of the 1977 Harvard preprint.
9. CERN Document Server (preprint scans): bot-check page, no results returned.
10. KEK preprint library: no response from the search CGI.
11. Two web searches for a PDF on an institutional site: no copy. The searches returned only secondary statements.

Not tried by choice: shadow libraries (Sci-Hub, LibGen). They are not legitimate library mirrors.

Secondary evidence found (does not replace the source): the Menotti–Pelissetto abstract (CMP 113 (1987) 369–373), already [V abstract] in TRUST_LEDGER X-003, says they "extend the proof by Osterwalder and Seiler of reflection positivity of lattice gauge theories with fermions to the case in which the reflection is performed with respect to planes containing sites". This supports the reading that Osterwalder–Seiler treat link planes (planes between sites). It does not give the printed theorem, the periodic-lattice version, or the two-seam statement.

What is needed. A library copy (Stanford access to ScienceDirect) of pp. 440–471. The quote to take: the theorem on reflection positivity (OS positivity) of the Wilson action for reflections in planes that bisect links, and whether the paper states it on the periodic lattice. Alternative source with the same theorem: E. Seiler, Lecture Notes in Physics 159 (1982), Springer (blocked to automated download).

Proposed ledger status text for X-003: "cited, text not fetched; automated access attempts 2026-10-28 (INSPIRE, Semantic Scholar, Crossref, Elsevier API, ScienceDirect, Wayback, Internet Archive, CDS, KEK) failed, so a library copy is needed (SOURCES_SWEEP_H §1); the link-plane reading is supported only by the Menotti–Pelissetto abstract [V abstract]."

## 2. S-104 (R-045): ASSEMBLY_N1 alignment T-0039 (old F9)

Verdict: PARTIAL. The load-bearing chain is CONFIRMED. Three edits of SOURCES_B21_S_VERIFY §5 are missing or wrong, and seven stale strings remain. Theorem N1's result (s = 6, D = 1+2η) does not change.

CONFIRMED (ASSEMBLY_N1 line numbers):
- §0 l. 18: N is the C¹ norm, N(f) = max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1).
- §1 l. 23–32: (S) with (n!)^{1+η}, "min diam ≤ σ", D4D5 §5.1 cited; l. 30 keeps the old D3R (n!)^{2+ε} quote, labelled "The old order"; F_r is C¹.
- Order 1+η needs the coarsest-scale (FX2) radius, else 2+η (l. 30, 141, 145). TRUST_LEDGER R-045 gives the sharper fallback ≤ 1+η+2/3 (FX_VERIFY item 5); 2+η is weaker but valid.
- §3.4 l. 84 (|β_i| ≤ 6, N ≥ 6n); the constants still at 10 (l. 68, 75, 85) are valid upper bounds.
- §4.1 l. 94–97: C_L = (1 + 16/π²)³ = 18.008 (spot-check: recomputed, 18.008); D/σ = 6h_m/16h_m = 3/8.
- §4.3–§4.5 l. 110–129 and §5 l. 136–150 (s = 6, D > 1, (n!)^{1+2η}).

CORRECTED:
- l. 96: "(1 + 16/π²)⁵ ≈ 125" should read "≈ 124" (value 123.72; spot-check: recomputed).
- l. 159 (§6 item 1): still cites "D3R §4.1, proved, given the per-term bounds of D3 (iv)", and the bracket is self-contradictory ("1+η (2+η under the fallback) [aligned] only under the fallback"; spot-check: text read). Correct text: "Gevrey (n!)^{1+η} (2+η under the fallback), uniform in ε: SOURCES_D4D5 §5.1 Lemma C (Lemma C′ for (S′)), given S1 at all m ≥ 0 and (FX) in main form (C13). Inputs also: the B19 residue and D2 §4.3 [reduced]."
- l. 161 (claim-5 fallback): "s = max(11, ⌈4/θ⌉ + 1)" should read "s = max(6, ⌈4/θ⌉ + 1)".
- l. 162 (§6 item 4): still "five derivatives … exponent 5n drops to n". Correct text: "Multilinear form in the C¹ norm N(f) (SOURCES_D2 l. 44); s = 6."
- l. 115 (minor): the bump factor should be max(1/r, 1/ρ_1), not 1/ρ_1. This changes C^n only.
- Stale strings with no annotation: l. 44 "N = 11n" (→ 6n); l. 45 and l. 166 "h^{−5} per bump" (→ h^{−1}); l. 104 "N(g) ≤ C_ψ′(1+|q|)^5h^{−5}" and the undefined N_U (→ C_ψ′max(1/r, 1/ρ_1)(1+|q|)h^{−1}); l. 156 "order 11n" (→ 6n); l. 168 trailing "D any > 2" (delete).

UNSUPPORTED:
- The closure scope (B19 residue, D2 §4.3) is not in ASSEMBLY_N1. The R-045 ledger row carries both. The l. 159 text above repairs this.
- PLAN.md l. 304 says the residual strings in §2.1/§4.2/§6 were "annotated as aligned". The file has no such annotation in §2.1 or §4.2. The phrase "historical route" exists only in PLAN.md.
- The count "24 replacements" cannot be checked; no pre-edit copy exists.

Not needed in ASSEMBLY_N1: the (E14-c) clause; TRUST_LEDGER R-045 maps it to (S) through SOURCES_B21_E14C + VERIFY.

Proposed ledger status text: "T-0039 checked 2026-10-28 (SOURCES_SWEEP_H §2): the main chain of ASSEMBLY_N1 (§0–§5, C_L ≈ 18.0, D/σ = 3/8, order 1+η with the 2+η fallback, s = 6) is CONFIRMED; §6 items 1, 4 and the claim-5 fallback (l. 159, 161, 162) and the stale 11n/h^{−5} strings (l. 44, 45, 104, 156, 166, 168) are not aligned; the text fixes are listed and still to apply."

## 3. S-45 (R-001): WG_FULL regrade fixes (i)–(ii)

Verdict: CONFIRMED. Both fixes are applied at every required place. The constant is correct relative to the [I] cube-geometry count it already rested on.

What was requested (WG_FULL_VERIFY, "Regrade of §6.9a and the G_1 second pass", l. 96–103): (i) in a branch the previous domain can be a first-pass □⁺ of diameter D_+M_1, so the per-step count is C_𝒟^{H1} and C″_𝒟 := T_2C_𝒟^{H1} in 5.8, 5.9, 0.4 "Cost"; (ii) K_1 ≥ 6L, so 5.4 says "fixed by (d, L)".

CONFIRMED:
- WG_FULL l. 37 (0.4), l. 225 (5.4), l. 261 (5.8), l. 263–269 (5.9: M_*′, a_*′, M_W, a_{**} use C″_𝒟; the A1-W entries use C_𝒟^{H1}), l. 273 (5.10, symbol only), l. 294–302 (6.4 order: C_𝒟^{H1} after (d, L)).
- Mathematics: A1_WALK_FULL (H1)(B2) l. 35 defines C_𝒟^{H1} = C_𝒟(d, D_+) for sets of diameter ≤ D_+M_1; c_X ≤ D_+ gives C_𝒟^{H1} ≥ C_𝒟; one tag from T_2 per step gives T_2C_𝒟^{H1}. The root factor stays C_𝒟. D_+ = K_1 + 2K_0 + 2 and K_0 = 2c_X + 2 do not depend on θ, M_1, M, RM, or α_0, so there is no order loop.
- K_1 depends on L: the grid step a = M_1L^k with L^k ≤ ½K_1 and a ≥ 3M_1 needs K_1 ≥ 6L (A1_WALK_FULL_VERIFY l. 102; A1_WALK_FULL l. 500).
- No active statement uses the old C″_𝒟 = T_2C_𝒟 or "fixed by d". Hits at l. 379–380 are change-log history that l. 381 replaces.
- Consistent with A1_WALK_FULL fix C (l. 286, 296).

Caveat (not new): WG_FULL does not define C_𝒟(d, ·) as a function. The count after a □⁺ rests on the [I] cube geometry of A1_WALK_FULL 2.1 and 5.6.

Optional edits (no correction needed): mark WG_FULL l. 379–380 as superseded; add C_𝒟^{H1} to the 0.6 list (l. 53); A1_WALK_FULL l. 438 should say K_1 and D_+ depend "on d, L and the cover".

Proposed ledger status text: "WG_FULL fixes (i)–(ii) of the last regrade (C″_𝒟 := T_2C_𝒟^{H1} in 0.4, 5.8, 5.9, by symbol in 5.10 and 6.4; 'fixed by (d, L)' in 5.4) applied and re-verified 2026-10-28 (SOURCES_SWEEP_H §3), consistent with A1_WALK_FULL fix C; the constant rests on the [I] cube-geometry count of A1_WALK_FULL 2.1/5.6."

## 4. S-108 (K-028): SOURCES_GGAIN_BETAH

Verdict: CONFIRMED, with two minor corrections and three missed consumers. Every consumer needs only a fixed β_H > 0. Each condition it adds is an ε_1- or γ-smallness condition. No consumer needs β_H near 1 or above 0.9. No consumer ties β_H to L, M, or a later constant.

CONFIRMED (per consumer):
- (Eps) → F2′: 2ε′ = 2θ_0(1 − L^{−β_H})^{−1}, θ_0 = 2K_HK_Vε_1 (SOURCES_SM l. 43, 50, 130); F2′ needs 32ε′ ≤ 1 (SOURCES_D3W8 l. 106). K_V has no ε_1. The condition is ε_1-small.
- SM §2.4 hypothesis (SM l. 45, 128): R_V has no ε_1.
- Lemma HH (SM l. 132; SOURCES_HHIST l. 143–144): λ = L^{−β_H} + θ, θ < 1 − L^{−β_H} by ε_1 small. SOURCES_A10_LOWER_VERIFY l. 24 says the same ("needs only a FIXED β > 0").
- SOURCES_HBETA (2.3): A = (1 − λ)^{−1}; the condition is on γ, fixed after ε_1 (K-005). SOURCES_HBETA_N3 (b), (c): γ conditions.
- SOURCES_HHIST2 H2/(F1): λ_C = L^{−β_H} + 1.235C_Vθ_0 < 1 is ε_1-small.
- SM §4.3 λ_g: θ_gγ < 1 − L^{−β_H/2} is a γ condition; λ_g is off the live chain (SOURCES_GGAIN l. 112: "refinement, not a requirement").
- GGAIN hop (GGAIN l. 94–95, 110): uses θ_0, ε_1-small.
- "> 0.9" is descriptive: an independent grep found it only in remarks (SM l. 69, 133; HHIST l. 145; A10_LOWER l. 91), not in any proof.
- §3 table: 1 − 13^{−x} recomputed for x = 0.05 … 0.9; all values match.

CORRECTED:
- SOURCES_T2_KUNIF: C′ = C_β + C_hλ/(1 − λ) (l. 73) is not "only finiteness". The reference-trajectory variant (l. 80, 120) adds γ ≤ b/(4 max(2C_β, C′)). This is still a γ-smallness condition. The verdict does not change.
- GGAIN_BETAH line 9 places ρ_0 after ε_1. The canon puts ρ_0 after M and before the α's (SOURCES_ORDER_CHECK l. 82; SOURCES_HHOL l. 67). No β_H conclusion changes.
- Notation: SM §4.3 writes λ_g = L^{−β_H/2} + θ_gγ; GGAIN §6.3 writes λ_g = L^{−α_*} + C_Vθ_g g_k. The two files differ. Off the live chain.

Missed consumers (same ε_1-small form, no obstruction):
- SOURCES_HHOL §4.2(a), l. 102–106: λ_C = L^{−α_*} + 1.235C_Vθ_0 (spot-check: text read).
- SOURCES_B15_M245 l. 78, 88, 119: a_m = max(λ^m, λ_C^m), A = Σa_m, finite once λ, λ_C < 1.
- SOURCES_HHOL_LF_SPRIME (3.1), l. 66–67: cost λ_C^{j−1−i}, needs λ_C < 1.

Not re-checked: the §2 CMP 99/102/109 page readings. H-052 (the "β_0 = 1" misprint reading) stays as residue.

Order check: K-005, SOURCES_ORDER_CANON N-010/N-020 put β_0^H → β_H first. All dependent constants (B_2, B_4, K_T, (3.31)) are fixed after β_H. No cycle.

Proposed ledger status text for K-028: "β_H free, first in the order: SOURCES_GGAIN_BETAH verified 2026-10-28 (SOURCES_SWEEP_H §4); every consumer, including the λ_C users HHOL §4.2, B15_M245, HHOL_LF_SPRIME (3.1), needs only a fixed β_H > 0 through ε_1- or γ-smallness; no fixed contraction threshold, no tie to L or M; residue H-052 and the unre-read §2 CMP readings."

## 5. S-109 (K-032): SOURCES_T2_VOL

Verdict: CONFIRMED with minor corrections. (Vol) is ℓ > 22M final-scale cells, K-free, admissible, and not used in the proof of L-001 (Theorem 2w). Every arithmetic claim recomputes. Every Balaban quote matches balaban/*.txt.

CONFIRMED:
- l. 11–12: CMP 109 p. 251 "L_μ = L^m, L odd > 11"; p. 257 "M = L^m … much bigger than the previously fixed scales".
- l. 13–14: the reused letter m is not identified by Balaban; the [I] tag is right.
- l. 15: ℓ = 2M fails only at the last step: 2M·L^{K−k} > 22M iff K − k ≥ 1 for L ≥ 13.
- l. 16: M | 2L^{m_T} iff m_T ≥ m_M (gcd(L, 2) = 1). Plain arithmetic; the [I] tag is not needed.
- l. 20: L^{N−K} ≥ L²M ≥ 169M > 22M; N − K = m_M + 1 gives LM ≤ 21M for L ≤ 21. 2L^{m_T} > 22M iff m_T ≥ m_M + 1, so this is necessary and sufficient.
- Rows 2–7, 9, 10; §3 bullets 1–2.
- Row 3 supports INFINITE_VOLUME_ATTEMPT l. 19–21 (g_0(K, g) independent of ℓ): β_j is the whole-lattice function (SOURCES_T2_KUNIF l. 17–18; CMP 119 (2.24)); Lemmas D′, D″ contain no N.
- TRUST_LEDGER l. 152 (K-032) as stated.

CORRECTED:
- l. 21, origin of 22M: □_0 = □̃^5 has side 11M (printed, CMP 109); the factor 2 comes from the project's convention "liftable = lies in a box of side < N_k/2" (SOURCES_A15_BDRY_VERIFY (e)), not from Balaban. Tag: "[P from □_0 = □̃^5 [V] and the project's lifting convention]".
- Row 1: "N = K + log_L ℓ" holds only for ℓ = L^n. Correct text: "for ℓ = L^n, N = K + n; for even ℓ the L-power form does not apply (row 9)."
- Row 3 caveat: γ_Bal is volume-free only as Balaban states it (T2_KUNIF 4.5, [R]); tag [R], not [P].
- Row 8 is out of date: round 9 compared the sizes; K-045 and TRUST_LEDGER l. 152 give (Vol) ⇒ (T2) for every k ≤ K, given M ≥ c_T/22.
- §4: add M | ℓ as a separate [I] tiling condition.
- CLOSURE_PLAN l. 202: should read "ℓ > 22M (strict) final-scale cells, e.g. ℓ = 2L^{m_T} with m_T ≥ m_M + 1".
- CLOSURE_PLAN l. 259 says "Balaban's tori have side L^N ≥ L^{K+m_M+2} (K-032)" (spot-check: text read). Balaban's torus is 2L^m; the L^N form is the project's and is odd, so Target 2 cannot use it. Correct text: "the project's L-power torus L^N, N ≥ K + m_M + 2, or the even form ℓ = 2L^{m_T}, m_T ≥ m_M + 1".

UNSUPPORTED:
- §3 bullet 3, "M is fixed before γ": the CMP 122 I p. 186 quote says only that the conditions on M are scale-free. Remove the phrase or tag it [I].

Side finding (spot-check: confirmed): RENUMBER_PLAN.md l. 200–201 maps C31 → K-031 and C32 (Cube) → K-032. IDS.md l. 111–112 maps C31 (Vol) → K-032 and C32 (Cube) → K-033, and RENUMBER_VERIFY row 57 agrees with IDS. RENUMBER_PLAN is one number off here. IDS.md is authoritative.

Proposed ledger status text for K-032: "(Vol) verified with minor corrections 2026-10-28 (SOURCES_SWEEP_H §5): ℓ > 22M final-scale cells (even form ℓ = 2L^{m_T}, m_T ≥ m_M + 1, necessary and sufficient), K-free, not used by L-001; 22M rests on □_0 = □̃^5 [V] plus the project's lifting convention; γ_Bal volume-independence is [R]."

## 6. S-111: Lemma M (L-219, U3_AW §3.3)

Verdict: CONFIRMED. Two proof remarks are CORRECTED (the conclusion is stronger than the proof text says). Two files cite a verifier grade for Lemma M that does not exist.

Statement (U3_AW l. 84). For every M ∈ {1, L, L², …} ∪ {∞}, Δ_M = σ^{(0)} is analytic at K = 0 and even, and its Taylor polynomial of degree ≤ 3 at 0, in midpoint coordinates, is |K|²1 − KK^T. Normalization: U3's Δ_0 = |k̂|²P_T (the code carries a factor 1/4; U3_AW_VERIFY l. 30, 33 measured it).

Prior grade. U3_AW_VERIFY has no graded item for Lemma M. Its l. 50 names Lemma M only among statements the d = 2 numerics test (2c = 0.5000 at j = 0; 0.5018 at j = 1, nc = 16). Hence SOURCES_T2_S123 l. 99 ("CONFIRMED in U3_AW_VERIFY items 2–3") and THEOREM2_PROOF_v4 l. 149 ("grades 1–4 CONFIRMED") had no grade behind them for Lemma M (spot-check: both lines read; items 2–3 grade (W) and (A)).

Graded steps (U3_AW l. 85; (2.7) in U3_REPAIRS l. 93–114):
1. (2.7) applies for every M; Δ_M analytic on B_{ρ_1}: CONFIRMED (O5 CONFIRMED in U3_REPAIRS_VERIFY §4; for M = 1 it reduces to the Wilson Hessian).
2. q̃_0 = K + O(K³), A_0 = 1 + O(K²), j_μ = e^{iK_μ/2}(1 + O(K²)): CONFIRMED.
3. The Γ-terms are O(K⁴) (two factors of Π, each O(K²)): CONFIRMED.
4. Order-2 part |K|²1 − KK^T: CONFIRMED; A_0^{−1} corrects only at order 4.
5. "Midpoint change of coordinates changes only order ≥ 3": CORRECTED (true but weak). Conjugation by diag(e^{iK/2}) cancels the phases exactly; every factor of Δ^mid is then real for real K.
6. "Odd orders vanish by evenness (§2)": CORRECTED. Prop. E is proved for finite j only, so it does not cover M = ∞. The form of step 5 is even in K directly (σ^M_0 and Π even, symmetric l-range for odd M). So Lemma M needs no Prop. E and holds at M = ∞ with no limit argument.

Numeric check (verifier, d = 4, Prop. A (A.1), pseudo-inverse on K̂^⊥, midpoint conjugation; /tmp script deleted). Ratio max|Δ^mid − (|K|²1 − KK^T)|/|K|⁴, constant over |K| = 0.2, 0.1, 0.05: M = 1: 0.0279; M = 3: 0.0704; M = 9: 0.0813; M = ∞ (|l| ≤ 8): 0.0827. So degrees 2–3 are exact and only degree 4 depends on M. Imaginary part ≤ 3·10^{−18}; odd part ≤ 10^{−16}.

Graded uses:
- THEOREM2_PROOF_v4 l. 155, "Maxwell coefficient exactly 1 at every level": CORRECTED in wording. The uses need the whole degree-≤3 polynomial (no cubic term, midpoint coordinates, U3 normalization), not only the coefficient.
- KAPPA_BOUNDED_VERIFY l. 51, 𝔨_0 = |K|²1 + O(K⁴): CONFIRMED (the Feynman term K̃K̃^† has degree-2 part KK^T and no degree-3 part, SOURCES_T2_S123 l. 98). The KAPPA_BOUNDED l. 81–82 use (H_{−4} level-independent) is CONFIRMED.
- BETA_FP_H_VERIFY l. 38, δσ^{(0)} = O(|K|⁴): CONFIRMED for m = 0. For m = 1, 2 the count rests on Theorem W, A3 and evenness, as the line says. l. 48 (Lemma M uses O5, odd L) is correct.

Proposed ledger §5 S1 text: "L-219 (Lemma M, U3_AW §3.3): CONFIRMED 2026-10-28 (SOURCES_SWEEP_H §6): for every M ∈ {1, L, …, ∞} the degree-≤3 Taylor polynomial of Δ_M at K = 0 in midpoint coordinates is |K|²1 − KK^T (U3 normalization); evenness follows from O5 (2.7) directly, without Prop. E; d = 4 numerics give an O(|K|⁴) remainder for M = 1, 3, 9, ∞. The earlier 'verified' tags (THEOREM2_PROOF_v4 l. 149, SOURCES_T2_S123 l. 99) had no grade behind them."

## 7. S-112: statement checks for the 11 Lean files without a lean/VERIFY_*.md

Verdict: 9 CONFIRMED for their stated scope, 2 CORRECTED (scope narrower than the claim). No formal statement is false or vacuous.

Checks on all 11 files:
- Escapes: no sorry, admit, axiom, unsafe, native_decide, implemented_by, or extern (coordinator spot-check: grep count 0 in each file).
- Build: lean4 v4.33.1; `lake env lean YmLean/<File>.lean` returned rc = 0 for all 11 (2–4 s each). One style-linter warning (Divergence.lean l. 91).
- Axioms (`#print axioms`, scratch file deleted): only propext, Classical.choice, Quot.sound.
- Scope: lean/README.md already assigns statement checks for 5 files in other VERIFY files (spot-check: README l. 15–25): Gronwall (VERIFY_TheoremK), OishiRump (VERIFY_BlockNorm), Divergence (VERIFY_Envelope §2), StripBound (VERIFY_TheoremC1), Schur (VERIFY_CombesThomas). Only 6 files lacked any check.

Per file:
1. AbelianCount (U1_INFINITE_LATTICE Prop. 9.1): CONFIRMED, arithmetic scope only. Hypothesis `hE` contains the equipartition count; `equipartition` proves tr(ΔΔ⁻¹) = dim only. Prop. 9.1 itself is not formalized; the header says so.
2. DetIdentities (numerics/NUMERICS.md §1 (iv), (v)): CONFIRMED. (v) has weaker hypotheses than the note. Basis-independence in (iv) is not formalized (standard).
3. Divergence (H2_CERTIFY_P4 §2 Steps 2–3): CONFIRMED. The profile decomposition (R1) is a hypothesis.
4. Gronwall (KAPPA_BOUNDED Prop. 4.1): CONFIRMED. THEOREM2_PROOF_v4 §4.1, cited in the catalogue, has no Gronwall lemma (already noted in VERIFY_TheoremK).
5. LemmaDDoublePrime (KAPPA_BOUNDED §5.3; THEOREM2_PROOF_v3 §2.2): CONFIRMED. (5.1) is `hwin` with R = κ_*; D = D′ = 2R, β = 3b/4, B′ = 5b/4 + 2R, g₁ match. One-argument β only, as in the note (history-dependent β open, L5). Side finding: THEOREM2_PROOF_v3 l. 90 ("Not in Lean … hypothesis (iii′), not (5.1)") is stale (spot-check: line read).
6. LemmaDE (LEMMAS Lemmas D, E; LEMMA_DPRIME step 8): CORRECTED. LEMMAS states D and the "all admissible histories" clause of E for history-dependent β_{k+1}(g_0, …, g_k). Lean proves only the one-argument case β_{k+1}(g_k). The header and catalogue item H7 say so. Inside that case all bounds match.
7. LemmaH (SOURCES_HBETA §2 Step 1): CONFIRMED for Step 1. Step 2 is a hypothesis; Step 3 is in LemmaHSteps.lean (own VERIFY). The docstring "Steps 1–2" overstates.
8. OishiRump (H2_CERTIFY §5 C2/C4): CONFIRMED.
9. Schur (SOURCES_LOC §3.3 and others): CONFIRMED.
10. StripBound (SOURCES_HBETA_N3 §4): CONFIRMED (τe^{a+b} valid, not sharp).
11. Telescoping (R2_TELESCOPING Prop. 3.1): CORRECTED. Prop. 3.1 is the integral identity (3.1). Lean proves the algebraic core only: the no-cross-term split and a log-det identity with a Gram term det(Z₂ᵀ(Q₁Q₁ᵀ)⁻¹Z₂). Not formalized: the Gaussian integral evaluation, the coarea factors det(QQᵀ)^{−1/2}, and the Jacobi minor identity that cancels the Gram term. `hB : B = ZM` encodes "Z spans ker Q". README lists these gaps.

Proposed ledger status text: "Statement-checked 2026-10-28 (SOURCES_SWEEP_H §7): all 11 files build (lean4 v4.33.1) with no escapes and standard axioms only; 9 CONFIRMED for stated scope (5 already covered by other VERIFY files); 2 CORRECTED: LemmaDE covers only the one-argument case of Lemmas D, E; Telescoping proves the log-det core of Prop. 3.1, not the integral identity (3.1)."

## 8. Not run: S-99, S-47, S-70 shortcut

OPEN_ITEMS_SWEEP §2 states that these need the author's word, because the author holds the Fable-file verifiers. Status unchanged: open, awaiting the author.

## 9. Edits other files need (not applied here)

- ASSEMBLY_N1 l. 44, 45, 96, 104, 115, 156, 159, 161, 162, 166, 168 (§2).
- SOURCES_T2_VOL row 1, row 8, l. 21 tag, §3 bullet 3; CLOSURE_PLAN l. 202, 259 (§5).
- THEOREM2_PROOF_v4 l. 149, 155; SOURCES_T2_S123 l. 99; U3_AW l. 85 remarks (§6).
- THEOREM2_PROOF_v3 l. 90; LemmaH docstring (§7).
- RENUMBER_PLAN l. 200–201 off by one against IDS.md (§5).
- paper/assembly.tex l. 107 keeps "[cited]" for X-003 until a library copy exists (§1).
- Optional: WG_FULL l. 53, 379–380; A1_WALK_FULL l. 438 (§3).
