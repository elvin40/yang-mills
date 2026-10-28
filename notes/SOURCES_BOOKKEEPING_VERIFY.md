IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_BOOKKEEPING_VERIFY — independent page check of ledger rows A9, A12, A20, A22, §6; S1 #48 (WC_FULL rate)

Firewall: did not read /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. Setup
Created file. Next: read SOURCES_BOOKKEEPING.md and ledger rows.

## 1. Inputs read
- SOURCES_BOOKKEEPING.md read in full (§1–§6).
- TRUST_LEDGER §6 lines for A9, A12, A20, A22 (§6 bullets 15–18) and the S1 fix-pass note (A9/A12/A20/A22 downgraded to "page readings, no verifier"; T1⇒Thm 1 4→6, T2 17→20; reverses if a verifier confirms).
- Ledger statements to check:
  - A12: "β_0 can be chosen arbitrarily small" is on CMP 119 p. 255, not CMP 122 II p. 389; β_0 is fixed before γ.
  - A20: R_{K+1} ≥ L proved from CMP 119 (2.5) for γ < e^{−1/2}; C_c g-free is a reading (g only via log g_j^{−2} ≤ R_j and explicit p_0, p_1).
  - A22: Π (4.37)/(5.1) confirmed; CMP 119 (2.42) corrected to Z̃_j and Ũ_j^c; (2.12)/(2.23) are CMP 119; "L odd" CMP 109 p. 251, unit lattice p. 259; Sect. 3 residue is A23.
  - A9: C′_1 unprinted, not derivable from printed lines; value not used.
Page offsets (pdf = printed − offset): CMP 109 248; CMP 119 242; CMP 122 I 174; CMP 122 II 354; CMP 98 16 (to confirm on images).

## 2. A9 — CMP 98 pp. 36, 39, 40 (pdf 20, 23, 24), 300 dpi images
- p. 39 (139): "|Q_{V_0}A| ≤ Q|A|, |Q″(V_0)A| ≤ C′_1L²α_0Q″|A|"; next line "The constant C′_1 depends on d and L." (143): "|Q_j(U_0)A| ≤ Q_j|A| + 2C′_1α_0(L^jη)²Q″_j|A|, j ≤ k". Verbatim match.
- p. 40: "2L^{−2} + L^{−2} + 4dC′_1α_0L^{−4} ≤ ¾ + 4dC′_1L^{−4}α_0 ≤ 1 if 16dC′_1L^{−4}α_0 ≤ 1"; (146) "(1 + 2C′_1α_0)Q″_k|A|"; (147) "|Q_k(U_0; c, b)| ≤ 1 + 2C′_1α_0". Match.
- p. 36: "|Y_x| = O(L²α_0)" is printed directly (first paragraph), plus the "operators ... can be estimated by O(L²α_0)" sentence after (124). Match.
- No numerical value of C′_1 on pp. 36–40; the only relation is the smallness condition on α_0. "Not derivable from printed lines" holds: the O(1) in (124)'s remainder is unvalued.
Grade A9: CONFIRMED.

## 3. A12 — CMP 119 p. 255 (pdf 13), CMP 122 II p. 389 (pdf 35), images
- CMP 119 p. 255, after (2.6): "where n > m, and β_0 > 0 can be chosen arbitrarily small, if g is sufficiently small." Verbatim match. Page offset 242 confirmed.
- Same page (2.5): "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r." Match (used in A20).
- CMP 122 II p. 389: "We assume that g_k is so small that −2(1 + β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k) (for example, take β_0 = 1/7, then this means that −(1/4)p_0(g_k) + 1 + 2κ(100R_k)^d ≤ 0, and before we had stronger restrictions on p_0(g_k))." Verbatim match; the "arbitrarily small" sentence is not on this page.
- Arithmetic re-done: 2/(1 + 1/7) = 7/4; −7/4 + 3/2 = −1/4. Requirement 2/(1 + β_0) > 3/2 ⇔ β_0 < 1/3. Correct.
- Order: both sentences fix β_0 then demand g small. Correct.
Grade A12: CONFIRMED (the page correction itself is right).

## 4. A20 — CMP 119 p. 245 (pdf 3), p. 255 (pdf 13); CMP 122 II pp. 380, 383 (pdf 26, 29), images
- CMP 119 p. 245: "R_0 is the smallest power of L such that R_0 ≥ (log g_0^{−2})^r, r ≥ 2". Match. p. 255 (2.5) match (see §3).
- A20a check of the proof: g_j ≤ γ < e^{−1/2} ⇒ g_j² < e^{−1} ⇒ log g_j^{−2} > 1 ⇒ (log g_j^{−2})^r > 1 (r ≥ 2) ⇒ R_j = L^n > 1 ⇒ n ≥ 1 ⇒ R_j ≥ L. Valid. Uses only R_j ≥ (·)^r and R_j a power of L.
- CMP 122 II p. 380: "except that for the last we have the corresponding constant O(log g_j^{−2}) instead of O(1). ... every large field domain Z_j contributes the constant O(1) log g_j^{−2}|Z_j| ≤ O(1) log g_j^{−2}(MR_j)^d d′_j(Z_j) ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)". Verbatim match. γ_0 "absolute positive constant (in this factor we may take γ_0 = 1/2)": match.
- CMP 122 II p. 383: (1.77) error term "O(1)A_0A_1²B_3⁴B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j" with "We assume that g_j is sufficiently small, so that the constant ... is small, or O(1)"; "All the integrals with respect to the group valued variables ... are estimated by 1"; "exp O(1)|Z_j ∩ Ω_j|"; "exp O(1)(MR_j)^{−d}|Z_j|"; (1.79) "T′_k(X)1 ≤ sup exp{Σ_j O(1)M^dR_j^{d+1}d′_j(Z_j)}·ΠΠ exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j))Π′exp(−p_0(g_j))". Match.
- One addition the source file omits: p. 383 also says "we have to include only the constant with the logarithms in the last line into the integration measure" for the A_j integrals. This is the same log g_j^{−2} normalization constant, already moved into R_j on p. 380. No new g-dependence.
- C_c g-free is a reading of unvalued O(1)s, as the file says; no printed sentence contradicts it.
Grade A20: CONFIRMED (a: proved; b: reading supported by the printed lines, with the stated caveat).

## 5. A22 — CMP 109 pp. 251, 259, 291, 292 (pdf 3, 11, 43, 44); CMP 119 pp. 256, 258, 261 (pdf 14, 16, 19), images
- Π: p. 291 (4.37) "Π_{μ,ν}(x, y) = Σ_{X∈D_j^0} E^{(2)}_{μ,ν}(X, x, y), and the irrelevant terms resummed over X ∈ D_j, X ⊂ □̃². The function Π is called the vacuum polarization tensor." p. 292 (5.1): "Π(b, b′) = lim_{T_1^{(j)}↗Z⁴} δ²/δB(b)δB(b′) E^{(j)}(U_j(exp iB))|_{B=0}", introduced by "From this it follows that it can be defined also as". Match; "(5.1) follows from (4.37)" is correct.
- (2.42): CMP 119 p. 261 (2.41): "sum is over domains X ∈ D_j such, that X ∩ Ω_j ≠ ∅, and X ∩ Z̃_j ≠ ∅"; (ii) "analytic function on the space Ũ_j^c(X, α̃_0, α̃_1)"; (2.42) "|B^{(j)}(X, (U, J), A, {S_i ∩ X})| < B_0 exp(−κd_j(X))". Match; the correction to Z̃_j and Ũ_j^c is right. (Same page: β "e.g., we can take β = 1/4".)
- (2.12)/(2.23): CMP 119 p. 256 (2.12) "U → A^η(U) on U: U regular and M_B(U) = V"; minimizer "U_B(V), or U_k(V), or simply U_k". p. 258 (2.23) "A_k(1/g_k², U_k) = −A(1/g_k², U_k) + E_k(U_k) + R_k(U_k) + B_k(U_k, A) − E_k". Both CMP 119; match.
- p. 256 also shows (2.9) followed by "Similar inequalities hold for other constants, which will be introduced later." Match (A22-8a).
- CMP 109 p. 251: "We take L_μ = L^m, where L is an odd, positive integer > 11"; (0.1) "with a lattice spacing ε = L^{−K}". p. 259 top: "For the effective action corresponding to the unit lattice, where k = K = log_L 1/ε, the above bound is uniform in the lattice spacing ε." Match.
Grade A22 (the §6 line): CONFIRMED on every clause read. Not re-read here: (5.10), (5.44), p. 298, (3.54), CMP 122 I p. 186 (not in the §6 line; A14 text uses (3.54) and is a separate row).

## 6. §4 (CMP 119 Sect. 3 T step) vs SOURCES_A23_TSTEP + VERIFY
- BOOKKEEPING §4 says: Sect. 3 prints no loss constant; outputs keep the form (2.42) with the same κ; only prefactors change; rate bookkeeping deferred to CMP 109 Sects. 6–7 / CMP 116 (2.33)–(2.41).
- A23_TSTEP + VERIFY (images, round 7): loss ≤ 13δ = 10δ printed (CMP 116 (2.41)) + ≤ 3δ unprinted for the Z_0-marked Mayer resummation CMP 119 (3.44)–(3.47) (verifier counts 2δ); CMP 109 "Sects. 6–7" identified with CMP 116 Sects. 1–2.
- Consistency: no contradiction on what is printed. Both say Sect. 3 prints no rate loss. But BOOKKEEPING §4's sentence "the printed structure ... agrees with homogeneity" and "only prefactors change" is a reading of the printed claim; A23 shows the (3.44)–(3.47) step needs a real rate cost (≤ 3δ) that the print hides. So §4's "use CONSISTENT" (with 10δ) is superseded by A23's 13δ and (K1′). The A23 row already carries this; BOOKKEEPING §4 is history. Not re-read on images here (A23_VERIFY did pp. 277–278 and CMP 116 pp. 18–21).

## 7. #48 printed rates — CMP 116 p. 3 (pdf 3), CMP 99 p. 416 (pdf 28), images
- CMP 99 p. 416 (3.107) "G = Σ_ω R_0(X_0)R_{α_1}(X_1)···R_{α_n}(X_n)"; (3.108) "|(R_0(X_0)···R_{α_n}(X_n)J)(x)| ≤ O(1)(L^jη)²O(M^{−1/2})^{|ω|}M^{−1/2|ω|}e^{−(1/2)δ_0d(ω,y,y′)}|J|, x ∈ Δ(y), y ∈ Λ_j, supp J ⊂ Δ(y′)"; "The constant O(1) depends on d and L only." δ_0 has no value.
- CMP 116 p. 3 (1.6) same walk sum; (1.7) "O(1)O(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}exp(−δ_0d(ω, y, y′))" — printed WITHOUT the ½ (δ_0 silently redefined; CMP 99 p. 427 text: "after adjusting a definition of δ_0").
- So the printed form is e^{−c·δ_0 d(ω,y,y′)}, c = ½ (CMP 99) or 1 (CMP 116), with δ_0 an unvalued positive constant of Balaban's walk expansion. Path length d(ω, y, y′), not |b − b′| (the latter only after summing walks). The A2 row's e^{−½δ_0|b−b′|} is CMP 116 (2.16), not (1.7).

## 8. #48 verdict — WC_FULL rate vs printed rate, and consumers
- WC_FULL 4.2 (l. 196): δ_A := (1 − θ)min{δ_W, δ_1}, δ_W = ½ε (WG_FULL l. 46; WC_FULL l. 44), so δ_A = (1 − θ)min{½ε, δ_1} as the task states. ε is the Combes–Thomas rate of A1-W built from δ_G := (1 − θ)½δ_0 − (d/2 + 1)θ_S (WG_FULL l. 225); δ_1 = ½ε. Hence δ_A ≤ (1 − θ)·½ε < ½δ_0 (CMP 99 units) strictly. Further accretive levels lose up to ½ each (WC_FULL 6.8, l. 308): final rate ½ε″.
- Mismatch: YES. WC_FULL does not reproduce e^{−½δ_0|b−b′|} (CMP 116 (2.16)) nor the per-walk e^{−½δ_0 d(ω)} of CMP 99 (3.108) / e^{−δ_0 d(ω)} of CMP 116 (1.7). WC_FULL says so itself (l. 309: "It is not Balaban's ½δ_0"). SOURCES_A2_R2_VERIFY l. 39 says the same.
- Do consumers need the printed rate? NO.
  - A2's own use, CMP 116 (2.21)–(2.26): R_2 enters only via the coefficient O(1)e^{−δ_0M/3} + O(α_0 + α_1) and the Schur constant S(ρ) (A2_R2_VERIFY l. 29, CONFIRMED tolerance). Condition: the rate is fixed before M. WC_FULL 6.9 fixes δ_A (B13) before M_1 (B15) and M (B18). Met. The e^{−δ_0M/3} factor becomes e^{−cρM}, still small for M after ρ; the side condition e^{−⅓δ_0M}e^{16κ_1} < 1 becomes the same with ρ, and M is already chosen after κ_1 (A7 row: M_1 large after κ_1).
  - A7 decay: stated and used at rate δ_A itself (|C*Δ_kC| ≤ 2B_Ae^{−δ_A|b−b′|}; γ_1 := 4B_AS(θ′δ_A)). Self-consistent; no δ_0.
  - G3 (= N2): uses the Schur walk count W_½ of WC(iv) at rate ½ε (SOURCES_G3_N2 l. 62) and no δ_0; its only δ_0 trace is the coefficient e^{−δ_0M/3} in (Q) (SOURCES_G3 l. 25), handled as above.
  - A1_WALK_FULL l. 407 and S2_G1_V7 B1.5: "consumers accept any fixed rate".
- Note: printed δ_0 is itself unvalued, and CMP 116 (1.7) halves the CMP 99 normalization; "meeting the printed rate" can only mean a symbolic match, which no step uses.
Grade #48: MISMATCH EXISTS, NOT LOAD-BEARING. Recommend the ledger A2 row state "rate ½ε″ (fixed, < ½δ_0), not the printed e^{−½δ_0|b−b′|}; consumers need only a fixed rate set before M".

## 9. Summary
- A9 CONFIRMED; A12 CONFIRMED; A20 CONFIRMED (a proved; b reading, O(1) unvalued); A22 CONFIRMED (every clause of the §6 line, on images).
- §4 vs A23: no contradiction in print; §4's "use consistent at 10δ" is superseded by A23 (≤ 13δ, (K1′)).
- Binding-set growth of the S1 fix pass (A12, A22 into T1⇒Thm 1; A12, A20, A22 into T2) should be REVERTED: a verifier now exists (this file) and confirms the readings. Restore "verified readings" and the round-7 sets (4 and 17).
