# SOURCES_L1_E_VERIFY — adversarial verification of SOURCES_L1_E (S-103, S1 at all scales, joint (U, J, f) form)

Date 2026-10-28. Verifier: Claude (Opus 5.5). Edits: this file only. PLAN.md not touched. sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep. Ids follow IDS.md.

## Verdict
CORRECTED. The joint-holomorphy layer is correct: Lemma J1, Lemma J2, Proposition J, Corollary J, the base case j = 0, and Lemma J3 with its use for the divisor (D-iv) of CMP 119 (3.32)/(3.37). The bound reduction (Proposition B) is a correct [R] reduction to the listed rows, with three list errors. Three claims must change:
1. The "second proof" of the R-denominator non-vanishing (D-iii) by Lemma J3 is UNSUPPORTED. The log of the R-denominator is not computed by a convergent expansion on the printed pages. So condition (J-c) stays an input.
2. (J-c) is CORRECTED. Its half c_* r ≤ ¼ already follows from canon line N-490 (r ≤ 1/8). Its half sup|σ| ≤ ¼ is an unprinted [I] reading for the R-denominator (1.2). That reading is a γ condition and belongs in N-470, not next to N-490.
3. "(W6*) is the only input of H-116 that is not a ledger row" is CORRECTED. The σ half of (J-c) and the L-165 condition γ ≤ γ_Φ(M) are also inputs with no ledger row and no canon line. The H-116 input list also omits B-T2 (Target 1 + R-013) and X-002.

## Inputs read
OPUS_QUEUE.md l. 1–15; IDS.md (rows R-013 … R-046, K-001/011/014/017, Q-050, H-116, L-323); TRUST_LEDGER.md rows R-035, R-043–R-046 and the §4 chain lines; SOURCES_L1_E.md (whole); SOURCES_ORDER_CANON.md N-010–N-500 (line heads) and N-470, N-490, N-500 in full; SOURCES_FX_D §3–§6; SOURCES_D3 (B8), (B10), (1.a), (L0), (P3), (P5), Lemma D3.1; SOURCES_D3_VERIFY V6 and the (1.74) remark; SOURCES_D3_NEW4 (F1) and §2; SOURCES_B20_W4R §1–§3 + VERIFY; SOURCES_D2C (F), (A) and its open-items list; ASSEMBLY.md l. 2 (gauge group SU(2)).
Page images rendered this session at 150 dpi in a fresh /tmp folder, deleted after use [V]: CMP 119 pp. 273, 274, 275, 276 (PDF 31–34); CMP 122 II pp. 356, 357, 358, 359 (PDF 2–5), 379 (PDF 25), 383 (PDF 29), 388 (PDF 34), 389 (PDF 35).

## 1. Lemma J1 (bounded Hartogs)
- Step 1. F(·, z_2) is holomorphic on Δ(p_1, 2s). The Cauchy estimate gives |∂F/∂z_{1,i}| ≤ M/s on Δ(p_1, s). So F is Lipschitz in z_1 with constant aM/s in the sup norm, uniformly in z_2. The same holds in z_2. The triangle inequality gives joint continuity. Correct.
- Step 2. For w_1 on the distinguished boundary of Δ(p_1, s), w_1 lies in Ω_1, so F(w_1, ·) is holomorphic on Δ(p_2, 2s) by (ii). The iterated Cauchy formula is valid. The integrand is continuous on a compact torus, so Fubini applies. Differentiation under the integral gives holomorphy in all a + b variables. Correct.
- Use in S1. The local bound (iii) is the bound b_T, which is the content of (L-b). The file states this dependence. Correct.
Grade: CONFIRMED.

## 2. Lemma J2 (six operations)
- (O1) Pull-back by a map that does not depend on the source: chain rule. CONFIRMED. The premise "the background maps are unweighted" (N1) agrees with SOURCES_D3 (B8) (CMP 122 I p. 194) and SOURCES_D3_NEW4 (F1) ("every variational problem in this part … is the UNWEIGHTED Wilson action"). The p. 359 image confirms that (1.12)–(1.13) contain no weight [V].
- (O2) Algebra. CONFIRMED.
- (O3) Parameter integrals. h(z; A) is continuous in z and measurable in A, so it is jointly measurable (Carathéodory). Dominated convergence gives continuity. Morera in each coordinate with Fubini gives separate holomorphy. Then J1 applies. CONFIRMED.
- (O4) Weierstrass. CONFIRMED.
- (O5) 1/g for g ≠ 0: continuity gives local boundedness. The logarithm series converges uniformly for |g/g_0 − 1| ≤ q < 1. CONFIRMED.
- (O6) Contour integrals: a case of (O3). CONFIRMED.
- Consequence (three checks: no non-holomorphic ingredient, no zero divisor or branch exit, local uniform convergence). CONFIRMED as a logical statement. Check (1) is a completeness claim about the place list. That claim is (W6*) again; the file says so in §6.

## 3. Section 4.1: source entries and divisors
- (F1) Source values in Q. On P_{c_*r}(X): |Re| < r/2 + c_*r ≤ r and |Im| < c_*r ≤ r ≤ r_0 = τ_0. CONFIRMED given R-042.
- (F2) One-link normalization. |δw|·O(ε_j²) ≤ ½ gives |E[e^X] − 1| ≤ e^{1/2} − 1 ≈ 0.65 < 1. The arithmetic is correct. The condition (3/2)r·O(γ²p_0(γ)²) ≤ ½ is a γ condition. It holds with r ≤ 1/8 for small γ. CONFIRMED.
- (F3), (F5). CONFIRMED.
- (F4) Neumann series with norm ≤ τ ≤ ½; determinant ratio by a convergent log series on a finite lattice. CONFIRMED given R-016.
- (D-iii), the R-denominator. See §6 below. CORRECTED.
- Logarithms through Ursell/cluster series, and no division by T′_k(Y)1 in the main form K-014. CONFIRMED (SOURCES_B20_W4R §2.2 and its VERIFY; p. 388 (1.92) uses (1.73) only as an upper bound [V]).

## 4. Base case j = 0
w_0(x) = 1/g_0² − f(x) agrees with SOURCES_D3 (1.a). The project gauge group is SU(2) (ASSEMBLY.md l. 2). On SU(2), tr U is real, so P_p = 1 − ½ tr U_p is the entire extension to SL(2, C). The bare density is entire in (U, f). No activities exist at j = 0.
Grade: CONFIRMED. Precision: for a general G ⊂ U(N) (canon N-040), use P_p = 1 − (1/(2N))(tr U_p + tr U_p^{−1}). It is also entire, so the claim does not depend on N = 2.

## 5. Proposition J and Corollary J
The proof applies J2 to (F1)–(F6) and (N1)–(N4). The radius bookkeeping (E_pure keeps r; E_R, R′, B′, e get c_*r) follows from the s′-split of L-162.
Grade: CONFIRMED, conditional on (L-b), on the divisor checks of §6–§7 below, and on the completeness of the source-entry list (W6*).

## 6. Divisor (D-iii) and condition (J-c)
Page facts [V].
- CMP 122 II p. 358: the R-denominator (1.2) "is bounded from below by exp(−O(1)|Λ|) = exp(−O(M⁴))". Balaban needs the bound "for the integral extended analytically on G^c-valued configurations U". He extends by replacing V_k by M^k(U), and "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}). This … may result only in stronger restrictions on g_k, or γ." Then (1.10)–(1.11): the reciprocal is exp[(1/g_k²)A(ζ_0, U_0) + I(U_0) − E_k(Λ)], with |I(U_0)| < O(1) log M|Λ| < O(1)M⁵.
- CMP 122 II p. 379: for T′_k(X), the first-order term in (A′, J) is bounded by O(1)B_3²A_1²C_0M^dR_k^{d+2}p_1²(g_k)q_0(g_k)g_k, "and this bound is small". This is the "small, and possible complex valued, term" σ of (1.73).
Findings.
- (a) The file models the complex-(U, J) denominator as ∫e^{σ + σ_W}dμ with μ ≥ 0 and σ "Balaban's small first-order term (V6)". V6 (p. 379) defines σ for T′_k, not for the denominator (1.2). For (1.2), Balaban prints only the lower bound e^{−O(M⁴)} and the bound on I(U_0). He does not print a sup bound |σ| ≤ ¼ for (1.2). So the σ half of (J-c) is a reading [I]. The reading is plausible: p. 358 says the complex extension changes the bounds only by ε_k → O(α_{0,k} + α_{1,k}), and the analogous p. 379 bound is O(g_k·polylog). It needs a written check.
- (b) The r half. c_* = min(c, ½) and r ≤ r_0 ≤ 1/8 (N-490) give c_*r ≤ 1/16 < ¼. This half adds no condition.
- (c) Lemma D3.1 needs |σ + σ_W| ≤ ½. With |σ| ≤ ¼ and |σ_W| ≤ ‖ζ‖Φ(γ) ≤ c_*r ≤ ¼, this holds. The bound |σ_W| ≤ ‖ζ‖ needs γ ≤ γ_Φ(M) of L-165 Step 5. That condition is not in the canon (no canon line names Φ, γ_Φ or c_*).
- (d) "(D-iii) again … Lemma J3 gives a second proof, independent of (J-c)": UNSUPPORTED. The cited expansions, CMP 122 II (1.98) and (7.13), expand the log of the R-OUTPUT after the cancellation (1.10). They do not expand log of the denominator (1.2). Balaban's I(U_0) is a bounded function from a direct lower bound (p. 358, "follows from the boundedness of the quadratic form"). It is not a convergent polymer series. So Lemma J3 has no series S for this divisor. (J-c) stays an input. The sentence in §7 "not needed if Lemma J3 is used for (D-iii)" must be removed.
Grades: (D-iii) via (J-c): CONFIRMED as a reduction, with the σ half [I]. Second proof via J3: UNSUPPORTED. (J-c) as stated: CORRECTED.

## 7. Lemma J3 and the divisor (D-iv) of CMP 119 (3.37)
Page facts [V].
- CMP 119 p. 273, (3.32): log∫dμ_{C^{(k)}(Λ_{k+1})}χ^{(k)} = ∫_0^1 dt ∫dμ_{C^{(k)}} (∂/∂t)χ_t^{(k)} (∫dμ_{C^{(k)}}χ_t^{(k)})^{−1}, with χ_t^{(k)} "the characteristic function with the parameter t multiplying the variables A" and χ_0^{(k)} = 1. "(∂/∂t)χ_t can be written as a sum of terms, for which only one characteristic function in the product is differentiated."
- CMP 119 p. 274, (3.37): E_0^{(k+1)}(Λ_{k+1}, U_{k+1}, b) contains ∫_0^1 dt ∫dμ_{C^{(k)}} Π_{b′≠b}χ^{(k)}(tA(b′)) (∂/∂t)χ^{(k)}(tA(b)) · (∫dμ_{C^{(k)}(Λ_{k+1})}χ_t^{(k)})^{−1}. The divisor is global.
- CMP 119 p. 275: "The localized expansions are cluster expansions for the expectation values." Sect. 3.7 [I] is repeated "with minor changes".
Lemma J3 proof. H := G − e^S is holomorphic and vanishes on a non-empty open subset of R^b. All real derivatives vanish there, and they equal the complex derivatives. So the Taylor series is zero and H = 0 on the connected set P. CONFIRMED.
Use for (D-iv). The required series exists. Put S := Σ_b ∫_0^1 dt ⟨(∂/∂t)χ^{(k)}(tA(b)) Π_{b′≠b}χ^{(k)}(tA(b′))⟩_t, where ⟨·⟩_t is the normalized χ_t-expectation, expanded by the cluster expansion. Since χ_0 = 1 and dμ_C is a normalized Gaussian, log D(0) = 0, and (3.32) gives D = e^S at real points. At real (U, J) and real f, D is a probability in ]0, 1]. Sub-step T3 gives convergence of S at complex source. J3 then gives D = e^S ≠ 0. No volume factor appears. Grade: CONFIRMED.
Precision. The file applies J3 in f at a fixed complex (U, J). That step assumes Balaban's identity D = e^S at real f and complex (U, J), which is not printed. The safer form applies J3 jointly in (U, J, f), with the real points (U real, f real). It needs each connected component of U_T(X) to meet the real configurations. U^c is a complex neighbourhood of real regular configurations, so this holds [I, plausible].

## 8. Per-site normalizations (§6.3)
−½ log(1 − θ) ≤ θ for θ ≤ ½ (at θ = ½: 0.347 ≤ 0.5). So (1 − θ_W)^{−n_s/2} ≤ e^{θ_W n_s}. The arithmetic is correct. Two corrections to the text. First, on p. 383 [V] the budget is "exp O(1)|Z_j ∩ Ω_j|", from "the positivity properties of the quadratic forms". It is not the "O(1) log g_j^{−2}|Z_j|" that the file attributes to p. 380. The conclusion does not change, because O(θ_W)|Z_j| is still a small change of an O(1)|Z_j| budget. Second, the identification of n_s with |Z_j| at scale j is open and is part of (W6*). The file states this.
Grade: CONFIRMED as [P-sketch], with the budget citation CORRECTED.

## 9. The bound reduction (§5, Proposition B)
- Row identities. Every cited id matches IDS.md: R-013 Theorem 1; R-016 propagator replacement; R-024 walk expansions; R-036 (I); R-037 (H-hist); R-039 (H-thr); R-040/R-041 (H-hol); R-042 N3; R-044 (W4), (W4)-R, H-240, F2′, (D), Λ_j; R-046 κ-recovery; Q-050 NEW-4; K-001 frozen thresholds; K-011 gauge-fixing weight; K-014 main R-form; K-017 32ε′ ≤ 1. CONFIRMED.
- Class (S-a) at complex source. Every place on pp. 383 and 388 that uses positivity is an upper bound. Examples: "integrals with respect to the group valued variables … estimated by 1"; "the quadratic form in B from below by 0"; "|σ| in (1.73) by 1" in (1.92) [V]. Modulus domination covers these. CONFIRMED on the two pages checked.
- Table T1–T11. Each sub-step names a verified result or a row. CONFIRMED as [R].
- List errors (CORRECTED):
  (i) Proposition B's PROVIDED list omits R-024. The §7 input list includes it. Add R-024 to Proposition B.
  (ii) Both lists omit L-165 (Lemma FX-D) and its condition γ ≤ γ_Φ(M). (D-iii) and (S-b) use it. L-165 is in the chain of R-043, so H-116 carries it through R-043. R-035's own list must name it.
  (iii) (S-g) needs family (A) of SOURCES_D2C on the disc |c| < 2r. R-042 gives holomorphy on Q = {|Re c| ≤ 2r, |Im c| ≤ τ_0}, τ_0 = r_0. The disc lies in Q only if 2r ≤ r_0. The repair is r ≤ r_0/2 (an upper bound on r, at N-490) or a Cauchy margin r/2 in D2C. Either change goes in the existing direction.
- First steps (§5.3, last paragraph). g_m is smallest at small m (SOURCES_FX_D §3). The cited bounds have no lower limit on k. CONFIRMED as [R].
- (W6*) and the danger class. The definition is precise: a lower bound, a division, or a log of an integral, from positivity, used at complex input, and not a convergent expansion. The unchecked page list is explicit. The file grades it [I]. CONFIRMED as a correctly stated residue.

## 10. "(W6*) is the only input of H-116 that is not a ledger row"
CORRECTED. Inputs of H-116 after this file that have no ledger row and no canon line:
- (W6*), a page-sweep item.
- The σ half of (J-c), an [I] reading of CMP 122 II p. 358 (§6 above). §6(d) shows it cannot be dropped.
- γ ≤ γ_Φ(M) of L-165 (no canon line).
Also, Q-050 is a closure item, not a ledger row. Its residue readings (‖H_{1,k}‖ ≤ O(1)B_3, 0 ≤ ζ_0 ≤ 1, G^c extension) are [I].
The H-116 "proved relative to" list must also contain B-T2 (Target 1 + R-013, with R-025 and the other Target 1 rows) and X-002. TRUST_LEDGER §4 item 1 lists them. The list in SOURCES_L1_E §8 omits them.

## 11. Grade table
| claim | grade |
|---|---|
| Lemma J1 | CONFIRMED |
| Lemma J2 (O1)–(O6), Consequence | CONFIRMED |
| (N1) background maps unweighted | CONFIRMED [V p. 359; D3 (B8); NEW4 (F1)] |
| (F1)–(F5) holomorphy; (F2) arithmetic | CONFIRMED |
| Base case j = 0 | CONFIRMED (SU(2); general-N form noted) |
| Proposition J, Corollary J | CONFIRMED given (L-b), (J-c), (W6*) |
| Lemma J3 | CONFIRMED |
| J3 for (D-iv), CMP 119 (3.32)/(3.37) | CONFIRMED [V pp. 273–275]; joint (U, J, f) form preferred |
| J3 "second proof" for (D-iii) | UNSUPPORTED |
| (D-iii) via Lemma D3.1 and (J-c) | CONFIRMED as reduction; σ half [I] |
| (J-c) as stated, and "next to N-490" | CORRECTED |
| Per-site normalization arithmetic | CONFIRMED [P-sketch]; budget citation CORRECTED (p. 383, O(1)|Z_j ∩ Ω_j|) |
| Proposition B reduction to the listed rows | CONFIRMED as [R]; list CORRECTED (add R-024 to Prop. B, L-165 with γ_Φ, r ≤ r_0/2 for family (A)) |
| §6.1 entries pp. 383, 388 | CONFIRMED [V]; the other entries not re-imaged |
| (W6*) statement and pass criterion | CONFIRMED |
| "(W6*) the only non-row input of H-116" | CORRECTED |
| Correction to the current R-035 text (omits (W6)) | CONFIRMED |

## 12. Safe ledger statuses and canon entry
R-035 (B-S). "REDUCED [R] (SOURCES_L1_E + VERIFY). Joint (U, J, f)-holomorphy at every scale PROVED given the bounds (Lemmas J1–J3, Proposition J, base j = 0). Bounds on the joint domain REDUCED to R-013, R-016, R-024, R-036, R-037, R-039, R-040, R-041, R-042, R-044, R-046, Q-050 (+ residue readings), L-165 (with γ ≤ γ_Φ(M)), K-001, K-011, K-014, K-017, condition (J-c), and r ≤ r_0/2 for D2C family (A). Source radius of R-, B-, e-terms is c_*r, not τ(X). Residues: (W6*) [I], a danger-class image sweep of about 100 unchecked pages; the σ half of (J-c) [I] (CMP 122 II p. 358). Divisor (D-iv) of CMP 119 (3.37) closed by Lemma J3 [V]." Grade change: "open as a whole" → "reduced, two named residues ((W6*), (J-c)-σ)".
R-045 (B-N1, (S)). Keep the current text. Replace "S1 at all scales incl. m = 0" by "Theorem L1-E (SOURCES_L1_E + VERIFY), reduced as in R-035". Grade unchanged: reduced [R]. Its open content now includes (W6*) and the σ half of (J-c).
H-116 (H-U). Conditional. PROVED RELATIVE TO {B-T2 (Target 1 + R-013), the R-035 list above, R-043 (with L-165), the coarsest-scale H-191 radius (else D = 5/3 + 2η), X-002}, s = 6, D = 1 + 2η. Inputs with no ledger row or canon line: (W6*), (J-c)-σ, γ ≤ γ_Φ(M). Not "exactly one".
Canon entry for (J-c). No new line is needed.
- N-490 (note only): define c_* := min(c, ½), with c ≤ ½ the L-165 constant. Then c_*r ≤ 1/16 < ¼ follows from r ≤ 1/8. Add r ≤ r_0/2 if the D2C disc |c| < 2r is kept.
- N-470 (new entries, upper bounds on γ; every argument M, M_0, B_3, A_0, A_1, C_0, C_1, p_0, p_1, q_0, R_k is to the left): (J-c-σ) sup|σ_U| ≤ ¼ for the complex-(U, J) perturbation of the exponent of the R-denominator CMP 122 II (1.2) on U_k^c(Z, α_{0,k}, α_{1,k}), uniformly in k; and γ ≤ γ_Φ(M) of L-165 (Φ(γ_Φ) = 1, γ_Φ ≤ e^{−q/2}, q = 2p_0 + 4p_R).
Both entries are one-sided and point in the existing direction (γ smaller). They add no edge that creates a cycle.

## Report (≤ 120 words)
Verdict CORRECTED. Lemmas J1, J2, Proposition J, the base case j = 0, and Lemma J3 are correct. Lemma J3 closes the CMP 119 (3.37) divisor: (3.32) with χ_0 = 1 supplies the log series [V pp. 273–275]. The bound reduction is a valid [R], with three list fixes: R-024 in Proposition B, L-165 with γ ≤ γ_Φ(M), and r ≤ r_0/2 for D2C family (A). The J3 "second proof" for the R-denominator is UNSUPPORTED (p. 358 prints a direct bound, not a series), so (J-c) stays. Its c_*r half follows from N-490. Its σ half is an [I] reading and a γ condition at N-470. So (W6*) is not the only non-row input of H-116: (J-c)-σ and γ_Φ are also inputs.
