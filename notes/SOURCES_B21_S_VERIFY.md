IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_B21_S_VERIFY — independent check of SOURCES_B21_S.md

Date 2026-10-28. Firewall kept (no sa_repo, no SA map, no online sweep).

## 1. Lemma C Step 7 at D ≤ σ, σ = 16h [checked against D4D5 §4.1 text]

Read: D4D5 §4.1 Steps 4, 6, 7 verbatim.
Inequality. Put u := σ/(2Mλ_m). Then D/(Mλ_m) = 2uD/σ, so
  Q_m ≤ (2 + 2uD/σ)⁴ ≤ (2 + 2D/σ)⁴ u⁴   for u ≥ 1 (fine scales),
  Q_m ≤ (2 + 2D/σ)⁴                        for u < 1 (coarse scales, Step 6).
Step 4 gives the factor e^{−κ s_m/2}, s_m ≥ u. Step 7 uses e^{−κu/8} against ℓ_2(u) and leaves e^{−3κu/8}. So the scale-m term is ≤ (2+2D/σ)⁴ · u⁴e^{−3κu/8} · (rest), and Σ_{u = u_0L^i} u⁴e^{−3κu/8} ≤ C(κ, L). The cancellation holds for every m. CONFIRMED.
Geometry in N1. Bump cube side 3h, so D = diam = 6h (4D: √4·3h). σ = 16h. D/σ = 3/8, not 1/16 as in the brief. Then (2 + 2D/σ)⁴ = (2.75)⁴ ≈ 57. Constant.
Where Q_m is large. Q_m ≫ 16 iff Mλ_m ≪ D, i.e. λ_m ≲ 6h/M, i.e. m ≲ log_L(6h/(Mε)). The largest value is at m = 0: Q_0 ≈ (6h/(Mε))⁴ ~ (h/ε)⁴, up to ~ε^{−4} at h ~ ℓ/512. At m = 0, u = 8h/(Mε), and the decay is e^{−κ s_0/2} ≤ e^{−4κh/(Mε)}. Product (h/ε)⁴ e^{−4κh/(Mε)} ≤ C(M, κ). Bounded uniformly in h.
At h ≤ Mε/8: u ≤ 1 at all m, all scales are coarse, Q_m ≤ 57. Author's §2b(iii) "≤ 16 M-cubes" is right for the 2⁴ term only; with D/σ = 3/8 the bound is 57. Minor.
Proviso (not new). The cancellation uses Step 2: a contributing Γ meets all n supports, so diam Γ ≥ σ. This needs n ≥ 2 and (FX1) locality. Both are in Lemma C's hypotheses.

## 2. FX_O23 §6 + FX_O23_VERIFY §5–6 read [read]

- FX_O23_VERIFY §5 [V, page image II p. 391]: (1.103)–(1.104) is Balaban's "final remark about another possible representation". Main induction uses only the upper bound (1.73). Grade there: O4 CORRECTED, "binds only if (FX) uses (1.104)".
- O4 fallback factor: Cauchy on simplex Σ|t_i|B_{Δ_i} < log 2 gives n!·Π B_{Δ_i}, B_Δ ≤ 3N·#plaq(Δ). With fine-history plaquettes (VERIFY §5 gap (ii)) #plaq(Δ_i) grows with the bump size in fine units. Author's claim that this is the only h-dependent factor matches the files.
- Open point to check next: (FX) is a statement about log I_K as a sum of local activities. Its holomorphy on the (FX2) polydisc needs non-vanishing of the large-field integrals that are logged or divided. Whether the main form avoids every division by T′_k(Y_i)1 for complex f is the (FX) construction question, not settled by VERIFY §5. Check SOURCES_FX next.

## 3. (FX) at the last scale: main form vs (1.104) [read SOURCES_FX §6.1–6.4, FX_VERIFY l. 40–78, TRUST_LEDGER B19, C13]

- Step A (FX §6.1) is a final R-step with Z″ = ∅: Σ_{Z′}∫ρ(Z′,V)/∫ρ(∅,V) = exp ΣR_fin. The only division is by ∫ρ(∅,V), a small-field denominator (O2, verified, radius c·r). Large-field components Y enter as polymer constituents with activity bounded from above by (1.73), (1.79)–(1.80). No division by T′_K(Y)1. So Step A does not use (1.103)–(1.104).
- Intermediate scales: in Balaban's main form the sum over Z_k, {Y_i} stays outside the exponential (FX_VERIFY l. 68), and B′-terms stay under T′_k(Y_i). Only upper bounds needed (O3). This is ledger choice C13 ("removes O4"), already adopted.
- So the regularity bridge, through (S) ⇐ Lemma C ⇐ (FX) as constructed in FX §6, never needs (1.104). CONFIRMED. Conditions it inherits: B19 status (O3 conditional on N3/B18; (FX-D) for R-denominators or the 2+η fallback), and the A1 inference in Step A.
- Side note, not an h-issue: Step C(a) bounds sup|σ_ζ| per j-cube of the history and lets Y's volume terms pay. The bump size enters only through how many history cubes meet supp ζ, which is ≤ |Y| and is already paid. No h-dependent factor.

## 4. No S1 block uses a second derivative of f [grep over D2, D2C, D3, D3R, D3W8, D4D5, HBETA*]

- S1 statement (D4D5 §3.1): "Source class (C¹ only, D2 §1.1): F_r := {‖f‖_∞ ≤ r, ‖∇f‖_∞ ≤ ρ_1}". Holomorphy domains S_r(X) = {|f| ≤ r, |∇f| ≤ ρ_1} (D2 l. 61). [read]
- D2 §1.1 l. 44: "Only C^1 enters D2; C^5 enters only the optional jet expansion of W (§5)". D2 §5 summary: the 4-jet of W is needed only on the diagonal; Lemma C Step 9 uses W with separated supports, radius ½ on S_r(X). No jet. [read]
- Hits for second derivatives: D2C l. 70 and D3W8 l. 25 are Hessians in the gauge FIELD, not in f. HBETA_N3 l. 56–58 are second derivatives of β_j in the COUPLINGS g_l. D2 Lemma 7.1 (l. 294) is a C² interpolation in the source PARAMETERS t (E13 route), not in x. None is a ∇²f.
- The one place where ∂∂f appears: D2 §4.4 l. 207: "dimension-6 terms of D1 §2.3, ∂∂f tr F², f(DF)², … go into the irrelevant V^{(j+1)}". They are not bounded term by term. They sit inside the freezing errors T_1, T_2 (D2 §4.3 (3)–(4)), which are bounded by |f − c_□| ≤ O(M)λ_jρ_1 and Cauchy in the constant c. Gradient only. Freezing (D2 (H2)(vii), D2C (F)) also uses Mλ_jρ_1/r only.
- Caveat (not new): D2 §4.3 is itself [reduced]; the line-by-line rerun of Balaban (4.34)–(4.45), (5.43)–(5.44) is "not done". If that rerun expands f around x_□ to second order instead of freezing, a ∇²f would enter. The file's stated route avoids it.
- Verdict: CONFIRMED. S1 is C¹ in f on the stated route.

## 5. ASSEMBLY_N1 vs current (S) [read N1 §1, §3.4, §4.1, §4.3–4.5; HHIST_N1_VERIFY claims 1, 5, 6; UN1_VERIFY items 2, 4; D4D5_VERIFY §4, §7]

Discrepancy CONFIRMED. ASSEMBLY_N1 still states (S) with N = C⁵ norm (l. 15), (n!)^{2+η} (l. 21, citing D3R §4.1), and Theorem N1 with ‖F‖_{11n}, (n!)^{2+2η}, s = 11, D > 2 (l. 6, 129, 134).
Current verified form = D4D5 §5.1: C¹ norm N(f) = max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1), order 1 + η, σ ∈ [16ε, ℓ/8], extra condition min diam ≤ σ. Verified: Lemma C arithmetic and order 1 + η (D4D5_VERIFY §4), (S) ⇒ (H-U) with s = 6, D = 1 + 2η (D4D5_VERIFY §7, HHIST_N1_VERIFY claim 6). Caveat carried from D4D5_VERIFY §4: order 1 + η needs (FX2) with the coarsest-scale radius; otherwise 1 + η + 4p_R/p_0 ≤ 2 + η (FX §6.3(c)), then D > 2 with s = 6.
Edits ASSEMBLY_N1 needs (none applied here):
- §0 l. 15: N := N_U (C¹, ρ_1-weighted). §1 l. 21: (n!)^{1+η}; add "min diam ≤ σ"; cite D4D5 §5.1, not D3R §4.1.
- §1 item 3: F_r is C¹ (D2 l. 44), not "|∂^m f| ≤ C_m, m ≤ 5". Cosmetic: item 3 writes N_U with 2‖∇f‖/ρ_1 AND λ_i = 2N_U; that double-counts the factor 2 vs UN1_VERIFY item 2 (one 2 suffices). Harmless 2^n.
- §3.4: |β_i| ≤ 10 and N ≥ 10n → |β_i| ≤ 6, N ≥ 6n.
- §4.1: L_i^5 → L_i^3 (6 derivatives per block); ψ bounds |α| ≤ 1 suffice for N_U.
- §4.3: exponent 2+η → 1+η; result (2C_Sσ^{−a})^n(n!)^{1+η}.
- §4.4: (1+|k_i|)^5h^{−5} → (1+|k_i|)h^{−1}/ρ_1; Z = Σ(1+|q|)(1+|q|²)^{−3} < ∞; exponent count δ^{−4n}δ^{−n}δ^{−an}δ^N, N = 6n, p = (1−a)n.
- §4.5: N = 6n ≥ 4n, constant 256^6. Still fine.
- §5: s = 6, D > 1 (main) or D > 2 (fallback); (n!)^{1+2η}. §6 ledger item 1 and 4: replace D3R source with D4D5 Lemma C + (FX).
Claim-5 fallback (σ ≥ ε^θ): s = max(6, ⌈4/θ⌉ + 1) with the C¹ count.

## 6. Grades and B21 verdict

1. (S) final form = D4D5 §5.1, derived by Lemma C from S1 + (FX); N1 cells h ∈ [ε, ℓ/512], σ = 16h. CONFIRMED. Arithmetic: σ_m = δ_m/4, h_m = δ_m/64, δ ∈ [64ε, ℓ/8]. Carry the D4D5_VERIFY §4 caveat: order 1 + η needs the (FX2) coarsest-scale radius; else ≤ 2 + η.
2. Jacobian = Q_m, cancelled by tree decay because D ≤ σ; gradient cost in N_U; freezing, (Hβ), lattice gradient use ‖∇f‖ only; h ~ ε bump meets ≤ 16 cubes. CONFIRMED (§1, §4). Minor: in N1, D/σ = 6h/16h = 3/8, not 1/16; the formula bound is (2.75)⁴ ≈ 57, the true integer count is ≤ 2⁴ = 16 when 3h < Mε. Not load-bearing.
3. Every factor of C^n(n!)^{1+η} is h-independent; σ enters only through Λ_1(σ)⁴ and the scale count, ≤ C_aσ^{−a}; only O4 is h-dependent. CONFIRMED. Q_m is the only h-dependent term and it is bounded through D/σ (§1). FX Step C(a) source cost is a relative bound paid by Y's own volume terms, so h does not enter (§3).
4. B21 (S)-uniformity closed as a reduction given Lemma C, S1 at all m ≥ 0, (FX) in main form. CORRECTED (scope). The reduction holds (§1–§3). Corrections: (a) the main-form condition is already ledger item C13; say so, it is not a new condition; (b) inputs must also list the B19 residue (O3 ⇐ N3/B18, (FX-D) or the 2 + η fallback, Step A inference A1) and D2 §4.3 [reduced]; (c) the B21 row has a clause "C^∞ real-source form of (E14-c)" that the author did not read. Lemma C is a real-source bound with complexification only in t (D2 §7.1), so it plausibly covers (E14-c) for separated sources, but no file maps it.
B21 regrade: YES to "reduced [R]" for the (S) clauses (support size down to h ~ ε, σ = 16ε, position) and the cutoff count (HHIST_N1_VERIFY Part 2). For the whole row, add one sentence mapping (E14-c) to D4D5 Lemma C, or keep that clause marked [unread].
ASSEMBLY_N1 must be updated to the C¹ / (n!)^{1+η} / s = 6 form (§5 list) before the regrade is cited.
