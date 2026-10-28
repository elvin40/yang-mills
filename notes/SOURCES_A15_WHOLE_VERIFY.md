IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_A15_WHOLE verification (independent)

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## V1. Ledger context (TRUST_LEDGER rows A5, A15, B5, B6, B8, X2–X5, §4.1)
- A15 row "uses": B8; (G2) ⇒ T1; HBETA (H-hist) as K-independent function; inside A13. The author's §1 omits the HBETA use. HBETA/(H-hist) is listed in §4.1 as "Not used by T1", so the omission does not affect the 2w set. Noted.
- B6 row: "(G2) per-cell infinite-volume densities → A15", reduced via SOURCES_T2_G2 (g = 0). B5 conditional on (G2).
- §4.1 minimal set: Theorem 2w Route K {A5, A15} + B1–B7 + X5. Author proposes {A5}.
- X2–X5: none is a β-volume statement. Agree.

## V2. CMP 109 p. 264 image (PDF 16, 300 dpi) and pp. 261–262 text layer
- (1.20)–(1.22) read on the image. Matches the author's §3.3 verbatim: Π^{ab} = δ²E^{(j+1)}/δB^aδB^b at (g_j, 0); E^{(j+1)}(g_j, B) = E^{(j+1)}(g_j, U_{j+1}(exp iB)); (1.21) δ^{ab}Π(x − x′); "Now we take a limit of these functions as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7)."; (1.22) mixed moment, μ ≠ ν, Fourier on Z^d. Next paragraph = A5 sentence ("smooth function defined on [0, γ], (or analytic), uniformly bounded … all derivatives"). Theorem 3 follows. CONFIRMED.
- Page: PDF 16 = journal p. 264. The definition is (1.20)–(1.22), p. 264. CONFIRMED. CMP 109 has no (1.41)–(1.43) defining β (grep of text layer finds none near β). CONFIRMED.
- p. 261 text: (1.7) "the term corresponding to a domain X depends on U_j restricted to X"; p. 262: E(X, g, U, J) analytic on U^c_j(X, α_0, α_1), (1.18) |E| ≤ E_0e^{−κd_j(X)}, (1.19) gauge invariance. Note: (1.7)/(1.9) state dependence on U|_X only. They do not state that the function E(X, ·) is the same on every torus and on Z^d. So "(1.7) ⇒ limit exists" needs (Loc) in addition. The author's reading is correct.
- Correction to the brief: (4.35)–(4.37) are on pp. 290–291 (PDF 42–43), not pp. 295–300. The author's pages are right.

## V3. Uses of A15 in Theorem 2w (THEOREM2_PROOF_v4 grep; SOURCES_T2_H0)
- v4 never names A15. "Whole lattice"/volume enters at: l. 129 and item 6 ((G2) per-cell infinite-volume densities = B6); item 9 (K-independence, "used implicitly through (G2) and (H0)"; closed by KUNIF as definitional); item 7 (H0) = A5 (β of (1.22)). V1 (B5) is conditional on (G2). No step compares a torus coefficient with β_j at g > 0. Agrees with the author for v4 text.
- GAP in the author's check. A5's T1 use is credited to SOURCES_T2_H0 + VERIFY (ledger A5 row). SOURCES_T2_H0 N9 lists A15 as load-bearing twice for 7′ (absolute CMP 109 radii for C_Π, §5.1; R-terms and large-field history kept out of β, §4.4, §5.4). SOURCES_T2_H0_VERIFY 2.16 adds a third use (GGAIN_LF not needed "under A15"). The author does not mention SOURCES_T2_H0.
- My reading [I]: all three uses need only A15-def. β is CMP 109's (1.22) function of the coupling history; its E-terms live on CMP 109's absolute domains U^c(X, α_0, α_1) ((1.18), p. 262); CMP 119 (2.24) says the couplings are "as in (I.0.20)" and p. 279 subtracts β from E^{(k+1)} only. None of the three uses needs the finite-volume terms to coincide with [I] terms (A15-loc). So the move {A5, A15} → {A5} survives on the 7′ side too, but only if H0's N9 is re-labelled "A15-def (definition)" in H0, its VERIFY, and the ledger. Not done by the author.
- Second condition: existence of the T ↗ Z^d limit at g > 0 must be stated in the A5 row ("This limit exists by (1.7)", p. 264). A5's "smooth on [0, γ]" presupposes it. Without (Loc), existence is Balaban's bare assertion; Prop. A15-N proves it only given (Loc). If A15 leaves the set, that assertion must sit visibly in A5.

## V4. Page images CMP 119 p. 259 (PDF 17), CMP 109 p. 290 (PDF 42); text layers CMP 119 pp. 253, 278, 279
- CMP 119 p. 253 text: "β1(g0) was defined in [I] by the formulas (1.41)-(1.43)". CONFIRMED (p. 253, not p. 249).
- CMP 119 p. 259 image: (2.24)–(2.28) match the author's §2.3 verbatim, incl. "coupling constants g_{j−1} are defined as in (I.0.20)" and "same properties as in [I.1]". CONFIRMED.
- CMP 119 p. 278 text: "do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]". CONFIRMED.
- CMP 109 p. 290 image: (4.35) E^{(2)}(X) = ⟨δ²E(X,1)/δH², H_j(□_0), H_j(□_0)⟩ "by the identity (4.14)"; free H_j; y-sum to Z⁴; X ⊂ □̃² → all X ∈ D_j^0 "constructed for the lattice ξZ⁴"; (4.36) bound O(1)E_0exp(−(L^jη)^{−1})exp(−δ_1|x−y|); "irrelevant expression again". CONFIRMED. Sect. 4 evaluates E^{(2)}(X) for Z⁴ domains, so it presupposes (Loc). Author §4.3(c) CONFIRMED.

## V5. Proposition A15-N, step by step
- Structure Π = Σ_X E″(X)·H·H. Matches (4.35). Two omissions, both harmless: (a) the term E′(X)·∂²_B U drops because the linear part of a globally gauge-invariant E(X) at U = 1 is a g-invariant vector of the adjoint, hence 0 for SU(2) ((1.19); Balaban's (4.14)); the author does not say this. (b) E(X) depends on (U, J) ((1.9)); H must include the J-channel. Still local and exponentially decaying. CORRECTED (minor).
- Unfolding (nw part). Lift X to X̂, write H_N = Σ_γ H_∞, shift by −γ_1: orbit sum × image sum = one sum over Z⁴ domains of nw type, with γ′ = γ_2 − γ_1. Correct given (Loc) and translation invariance of E_∞. "nw type" must mean "projection injective and 5-enlargement liftable", not just diam < N_j; the missing Z⁴ domains still have length ≳ N_j. CONFIRMED.
- Wrapping fact: true on the periodic torus (a connected domain that winds has extent ≥ N_j). Units: d_j counts Balaban's cubes, so d_j ≥ N_j/(cube side) − c. This rescales m_j by a fixed factor. CORRECTED (constant only).
- w part: Σ_b|H_N(b,0)| · sup|H_N| · Σ_{X∋b, d≥N_j−c}|X|²e^{−κd} ≤ Ce^{−(κ−κ_0)N_j}. (Bd) gives E″ via Cauchy at fixed j; (Cnt) does the sum. CONFIRMED.
- (ii) decay and pointwise limit: |x̂ + γ| ≥ N_j/2 for γ ≠ 0 and minimal-image x̂. Rate e^{−mN_j/2}. CONFIRMED. So rate m_j/2 comes from the γ ≠ 0 images, not from wrapping.
- (iii) three sums: N_j^4·N_j^2·e^{−mN_j} = N^6e^{−mN}; second sum ≤ N^2·Σ_{|y|≥N/2}e^{−m|y|} ~ N^5e^{−mN/2}; third ~ N^5e^{−mN/2}. Bound C N^6 e^{−mN/2} valid (loose). CONFIRMED.
- (iv) Poisson sampling + centred second difference O(p²) + sampling error / p_1p_2. CONFIRMED.
- Inputs: (Loc) only in the nw unfolding; (Bd) for E″ and the w part; (H) for periodization and decay; (Cnt) for every polymer sum. As stated. CONFIRMED.
Grade (2): CORRECTED (minor: gauge-invariance step and J-channel unstated; rate constant in cube units). The statement holds.

## V6. Exact equality, (Loc) vs (L2)
- Exact β^{(N)} = β: no proof route exists, and the two sources (γ ≠ 0 images of infinite-range H; wrapping polymers with nonzero activity) are real on the periodic torus. But "refuted" is too strong. No explicit N with β^{(N)} ≠ β is computed. The g = 0 witness (G2 §7) is a different extraction (density w, antiperiodic torus). Cancellation is not excluded by proof, only by genericity. Also Balaban never claims coefficient equality (author §5.2), so nothing of his is refuted. Grade (3): CORRECTED → "exact equality is not derivable and is generically false; the provable form is exponential closeness".
- (Loc) is not implied by WG_FULL (L2). (L2) covers walk factors (relative to Thms 3.7–3.10) only. E(X) also needs: the Mayer/cluster assembly, log-normalizations (torus determinants carry image terms unless walk-localized), the U = 1 subtraction, and the Sect. 3 localization/renormalization operations. CMP 109 (1.7)/(1.9) state dependence on U|_X, not identity of the function across volumes. Author's [I] tag is right. CONFIRMED.

## V7. Grades
(1) CONFIRMED. (2) CORRECTED (minor). (3) CORRECTED. (4) CORRECTED: conclusion holds for THEOREM2_PROOF_v4, but the author missed SOURCES_T2_H0 N9 (+ H0_VERIFY 2.16), three A15 uses in 7′; my reading [I] is that all three need only A15-def. Binding-set change {A5, A15} → {A5} is justified only with two edits: (i) relabel H0 N9 as A15-def; (ii) put "the T ↗ Z^d limit of (1.22) exists" (p. 264) into the A5 row. Brief page slip: (4.35)–(4.37) are pp. 290–291, not 295–300.
Images rendered to /tmp/a15v, deleted after use.
