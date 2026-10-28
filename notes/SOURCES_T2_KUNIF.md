# SOURCES_T2_KUNIF — item 9 (K-independence of β_j(g)) reduced to (H-hist)

Date 2026-10-28. Scope: THEOREM2_PROOF_v4.md §10 item 9 and its uses. Firewall kept (no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md).
Ledger tags: [P] proved here, [R] read in a source file (quoted), [I] inference, [V] previously verified result in this folder.

## 1. Inputs read this session

- [R] v4 §10 item 9 (l. 448), verbatim: "K-independence of β_j(g) [open]. The shooting needs β_j(g), γ, and the constants independent of K = −log_L ε. After rescaling, each step is the same unit-lattice block step, so β_j is K-independent only in the infinite-volume limit; a finite volume brings K-dependence back. This infinite-volume identification is not proved (LEMMAS_DE_VERIFY §2 item 2; THEOREM2_PROOF_VERIFY Point 7). It is used implicitly through (G2) and (H0)." Table row l. 473: "β_j(g) independent of K … open … 9".
- [R] Origin, LEMMAS_DE_VERIFY §3 item 2 (l. 115): "Lemma D is for fixed K and needs β, β′, γ independent of K. β_j as a function is K-independent in the rescaled picture … in the infinite-volume limit … Finite volume would reintroduce K-dependence." THEOREM2_PROOF_VERIFY Point 7 lists it as a missing hypothesis.
- Observation [R]. Item 9 as written is a statement about VOLUME. K enters β_j only because the torus at scale j has side N·L^{K−j} in unit-lattice units. It is not a statement that β_j depends on g_{j−1} alone. IDEAS_FABLE §I6 reads it as a history statement. Both readings are treated below (§3 history, §4 volume).
- [R] v4 §1.1: "β_{k+1} depends on the whole history g_0, …, g_k (CMP 109 p. 298) … β_j(0) is the one-loop (Gaussian) increment; it is history-independent by definition."
- [R] v4 §2.1–§2.2 (Lemma D′, D″): hypothesis (i) "|β_{k+1}(g) − β_{k+1}(0)| ≤ C_1 g, C_1 independent of k, K"; (5.1) window bound on T_0(k,K) = Σβ_i(0) with b, R; constants γ := min(γ_0, γ_Bal, b/(4C_1)), β = 3b/4, B′ = 5b/4 + 2R, D′ = 2R.
- [R] KAPPA_BOUNDED §5.2–§5.3 (l. 115–140): same hypothesis (i); proof of (a″): "|T − T_0| ≤ Σ C_1 g_{i−1} ≤ C_1γ(K − k)"; (c′) "the window argument does not depend on K".
- [R] LEMMA_DPRIME (1.2), l. 46: tail-sum lower bound "uniform in k and K because J is fixed".
- [R] B2_TWOSTEP: "K" there is a momentum variable. The file never uses item 9. Its only coupling link is the inherited (i)/L5 (l. 132).
- [R] TRUST_LEDGER A15 (CMP 119 p. 278 small-field terms "do not depend on Λ_{k+1}, and coincide with … the whole lattice"; (2.24) + p. 249: β_j(g_{j−1}) "defined in [I] by (1.41)–(1.43)", a whole-lattice number). B8: R-term part open. B13: real (H-hist) is used by "Lemma H, Lemma H′, N3, (H-hist2), (H-thr), (FX); not T1". B7 = L5 (domain).
- [V] SOURCES_D3W8_VERIFY S3: p. 278 quote, p. 279 β subtraction, (2.24) and p. 249 all CONFIRMED on page images; "β_j(g_{j−1}) is a number from the whole-lattice theory of CMP 109".
- [R] SOURCES_HHIST §2–§6: slot representation; p. 268 verbatim "the expression under the exponential above vanishes at g_k = 0"; (1.3) "log Z^{(j)} carry no coupling"; Lemma HH: |∂β_j/∂g_i| ≤ (C_Π/C_V)S_0 λ^{j−1−i} (i ≤ j−2), |∂β_j/∂g_{j−1}| ≤ C_β, constants "independent of j, K, i, and the volume".
- [V] SOURCES_GGAIN_VERIFY item 2 and 5: C_β = C_Π S_0, ε_1-free, CONFIRMED with correction ((M_r) needed); verdict: first-derivative part proved for the small-field step map on (0, γ], given G3 (reduced) and (M_r).
- [V] SOURCES_HHIST2 + VERIFY grade (1): β_j needs only a uniform first-derivative bound inside HTHR2; summability is needed only for Lemma H′.

## 2. Task (1): what each use of item 9 needs

Key fact [P]. Lemma D′ and Lemma D″ are applied at ONE fixed K. Their proofs (LEMMA_DPRIME §2; KAPPA_BOUNDED §5.3; Lean `lemma_DDoublePrime`) take a finite sequence β_1, …, β_K and never compare β at two values of K, or along two trajectories. So the functions may depend on K. What must not depend on K are the constants γ_0, γ_Bal, C_1, B, b, R (and J in Lemma D′). Then γ, g_1, β, B′, D′ are K-free, and (b), (c′) hold for every K with the same constants.

Use-by-use list. "Identity" = β_j is the same function for all K (or for all histories with the same g_{j−1}). "Bound" = a K-uniform inequality.

| # | place | what is used | needs |
|---|---|---|---|
| U1 | Lemma D′/D″ hyp. (i); v4 §2.1–2.2; KAPPA_BOUNDED §5.3 | |β_{k+1}(h_k) − β_{k+1}(0)| ≤ C_1 g, C_1 free of k, K, history | bound |
| U2 | (5.1) via Theorem K (v4 §4.1, KAPPA_BOUNDED §5.2) | window sums of β_i(0) in [b(K−k) − 2R, b(K−k) + 2R], b, R free of K | bound, on the one-loop β_i(0) only; plus the identification "β_i(0) used in the recursion = the β_i(0) Theorem K computes" (V1, (G2)) |
| U3 | γ := min(γ_0, γ_Bal, b/(4C_1)) | γ_0 (domain of (H0)) and γ_Bal (Theorem 1) free of K | bound (constants) |
| U4 | LEMMA_DPRIME (1.2), Lemma D′ (a) | tail sum ≥ −J·B with J, B free of K | bound |
| U5 | KAPPA_BOUNDED §5.3 (c′): "window argument does not depend on K" | apply (a″) to the sub-window m+1..n of the SAME trajectory | bound (a″) on every window; no comparison across K |
| U6 | (H0) (v4 §4.1 l. 175) | β_{j+1} smooth on [0, γ], derivatives uniformly bounded | bound, uniform over j and admissible histories (LEMMAS_DE_VERIFY §2.4(c)) |
| U7 | (G2) (v4 l. 129) | per-cell infinite-volume one-loop densities | definition of β_j(0) as a whole-lattice number (identity in the volume sense, see §4) |
| U8 | TRUST_LEDGER A15 → HBETA (H-hist) "as a K-independent function" | Lemma H, H′, N3 chain (not T1) | bound: Lemma HH constants are stated free of K and volume |

Result of task (1) [P, by inspection of the proofs listed]. No use needs the history identity "β_j depends only on g_{j−1}". U1, U3, U4, U5, U6, U8 need K-uniform bounds only. U2 and U7 need that the β_i(0) entering the recursion equal the whole-lattice one-loop values Theorem K bounds; that is a volume statement, handled in §4. No use evaluates β along one trajectory and transfers the value to another trajectory.

## 3. Task (2): the history identity, and which part of β_j is history-free

3.1 The identity is not available [R]. CMP 109 p. 298 (verbatim, via SOURCES_HHIST §4): "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants." The channel is identified in SOURCES_HHIST §3 (C1)–(C3): the past enters step k+1 only through the curly bracket {E_k(fluctuated) − E_k(U_{k+1})} of (2.12), i.e. through the irrelevant remainders V^{(l)}(g_{l−1}, ·), l ≤ k. Two histories h, h′ with the same g_k and different g_0, …, g_{k−1} give different V^{(l)}, hence different curly brackets, hence in general different second moments (1.22), hence β_{k+1}(h) ≠ β_{k+1}(h′). Nothing in the construction forces this difference to vanish, and Balaban says it does not. [R for the statement; I for "generically nonzero"; no exact cancellation is claimed or needed.]

3.2 CMP 119 p. 278 does not make β_j a function of g_{j−1} alone [R, P]. The quote (SOURCES_D3W8_VERIFY S3) is: small-field terms E_0^{(k+1)}(Λ_{k+1}, X, z), X ⊂ Λ_{k+1}, "do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice". This removes the VOLUME Λ_{k+1}. It says nothing about earlier couplings: the whole-lattice terms of CMP 109 are themselves history-dependent by p. 298. So p. 278 + (2.24) make β_j a K-free, volume-free function of (j; g_0, …, g_{j−1}). They do not reduce it to (j; g_{j−1}).

3.3 History-free part [P from R]. In the slot representation (SOURCES_HHIST §5) write h_k = (h_{k−1}, g_k).
 (a) Coupling-free term. log Z^{(k)} carries no coupling ((1.3), "terms of the order 0"). Its contribution β_{k+1}(0) is a function of k only (whole-lattice, so not of K either).
 (b) At g_k = 0 the whole step is history-free: p. 268, "the expression under the exponential above vanishes at g_k = 0". The past slots enter only through that exponent (curly bracket, (C1)). So
   β_{k+1}(h_{k−1}, 0) = β_{k+1}(0) for every past h_{k−1}.   (3.1)
 (c) Hence the decomposition
   β_{k+1}(h_k) = β_{k+1}(0) + Δ^{own}_{k+1}(g_k) + Δ^{hist}_{k+1}(h_k),
   Δ^{own}_{k+1}(g_k) := β_{k+1}(0_{k−1}, g_k) − β_{k+1}(0)   (all past slots set to 0),
   Δ^{hist}_{k+1}(h_k) := β_{k+1}(h_{k−1}, g_k) − β_{k+1}(0_{k−1}, g_k).
   The first two pieces are history-free. By (3.1), Δ^{hist} vanishes at g_k = 0 for every past.
 (d) Size of the history part [P given Lemma HH]. On the slot cube [0, γ]^{k+1} (convex), along the straight segment from (0_{k−1}, g_k) to (h_{k−1}, g_k):
   |Δ^{hist}_{k+1}(h_k)| ≤ Σ_{i≤k−1} sup|∂β_{k+1}/∂g_i|·g_i ≤ (C_Π/C_V)S_0 Σ_{i≤k−1} λ^{k−i} g_i ≤ (C_Π/C_V)S_0 (λ/(1−λ)) γ.
   Also, from (3.1) and the own-slot bound alone: |Δ^{own} + Δ^{hist}| ≤ C_β g_k.
 Caveat [open, not new]. Statement (3.1) and the slot cube are the small-field slot construction of SOURCES_HHIST §5. Balaban defines β only on his trajectory (B7 = L5). The large-field part (CMP 122) is outside SOURCES_HHIST (its open list). Under D3W8's repair the R-terms carry no counterterm, so the large-field part does not enter β_j at all (SOURCES_D3W8 §2.4: "β_{k+1}(g_k) is the whole-lattice coefficient … E_R carries no counterterm") [R; D3W8 repair is proved by the author, verifier CONFIRMED the p. 278/(2.24) reading].

## 4. Task (3): each use closes from K-uniform bounds

Notation. "Admissible history" = a point of the slot domain on which β is defined (the cube [0, γ]^{k+1} under the B7/L5 cube hypothesis, or true trajectories under the nested-interval variant). C_β := sup |∂β_{k+1}/∂g_k| over k, K, and admissible histories. C_h := (C_Π/C_V)S_0. λ = L^{−α} + θ < 1. All three are from Lemma HH (SOURCES_HHIST §6), stated "independent of j, K, i, and the volume".

4.1 U1 = hypothesis (i), history form [P]. Fix k, K and an admissible h_k = (h_{k−1}, g_k). By (3.1) and the mean-value theorem in the own slot (segment {h_{k−1}} × [0, g_k]):
  |β_{k+1}(h_k) − β_{k+1}(0)| = |β_{k+1}(h_{k−1}, g_k) − β_{k+1}(h_{k−1}, 0)| ≤ C_β g_k.   (4.1)
So (i) holds with C_1 := C_β, uniform in k, K, and the history. Only the own-slot derivative is used. The off-diagonal part of (H-hist) is not needed. This agrees with TRUST_LEDGER B13: real (H-hist) is "not T1".
Source of C_β: (H0), CMP 109 p. 264, "uniformly bounded on this interval together with all derivatives", read uniformly over admissible histories as LEMMAS_DE_VERIFY §2.4(c) requires [Balaban, odd L > 11]; independently GGAIN C_β = C_ΠS_0 [V: GGAIN_VERIFY items 2, 5, modulo G3 and (M_r)].
Continuity of β in the history (Step 2 of Lemma D′) is L5/B7, unchanged by this file.

4.2 Trajectory comparison [P given Lemma HH]. For two admissible histories h^{(1)}, h^{(2)} of length j, put Δg_i := g_i^{(1)} − g_i^{(2)}. The slot cube is convex, so integrate along the segment:
  |β_j(h^{(1)}) − β_j(h^{(2)})| ≤ C_β|Δg_{j−1}| + C_h Σ_{i≤j−2} λ^{j−1−i}|Δg_i| ≤ C′ sup_{i<j}|Δg_i|,   C′ := C_β + C_hλ/(1−λ).   (4.2)
If g^{(1)}_{j−1} = g^{(2)}_{j−1}, the first term is zero. All constants are free of K, so (4.2) is uniform in K. It also holds when h^{(1)}, h^{(2)} come from shootings at different K (both are histories of the same whole-lattice functions, §5). A cruder bound that needs no (H-hist): by (4.1) twice, |β_j(h^{(1)}) − β_j(h^{(2)})| ≤ C_β(g^{(1)}_{j−1} + g^{(2)}_{j−1}) ≤ 2C_βγ.   (4.3)

4.3 Shooting trajectory vs true trajectory [P]. In Lemma D″ the clamped flow and the true flow coincide on the solution: the clamp is inactive there (ũ_k ≥ t − D ≥ γ^{−2} for g ≤ g_1). During the IVT, β is evaluated on clamped histories g̃_i = φ(ũ_i) ∈ ]0, γ]. The proof needs only the bracket (a″) on each such history, and (4.1) gives it pointwise, with no transfer between trajectories:
  for every admissible history and 0 ≤ m < n ≤ K,
  b(n − m) − 2R − C_βγ(n − m) ≤ T(m, n) ≤ b(n − m) + 2R + C_βγ(n − m).   (4.4)
With γ ≤ b/(4C_β) this is T(m, n) ∈ [(3b/4)(n − m) − 2R, (5b/4)(n − m) + 2R]. These are exactly the constants of v4 §2.2: β = 3b/4, B′ = 5b/4 + 2R, D′ = 2R. So the window constants (R, b) absorb the history: R is unchanged, b loses b/4, which v4 already budgets.
If a proof prefers to bracket a trajectory h^{(1)} through a reference trajectory h^{(2)} (for example a nested-interval step that compares neighbouring u_0), (4.3) gives |T^{(1)}(m, n) − T^{(2)}(m, n)| ≤ 2C_βγ(n − m), and (4.2) gives ≤ C′(n − m) sup|Δg|. With sup|Δg| ≤ γ both are ≤ max(2C_β, C′)γ(n − m) ≤ (b/4)(n − m) once γ ≤ b/(4 max(2C_β, C′)). That is one more condition on γ, free of K. R is unchanged in both forms.

4.4 U2, U4, U7 [P]. (5.1), B = sup_j|β_j(0)|, and J concern β_j(0) only. By (3.1)(a) these are history-free. They are K-free once β_j(0) is the whole-lattice value (§5). Theorem K bounds exactly the per-cell whole-lattice one-loop quantities (v4 §3.2 "per-cell infinite-volume densities only"; (G2)).
4.5 U3 [R/I]. γ_Bal is the γ of Balaban's Theorem 1, a statement for all ε at fixed γ (CMP 122 II p. 355; CMP 109 p. 258: "the only dependence on k is through the volume"). γ_0 is the (H0) interval [0, γ]. Both are K-free as stated [R]; their proofs are A13, outside this file.
4.6 U5, U6, U8. U5 is (4.4) on a sub-window [P]. U6 is the source of C_β (4.1). U8: Lemma HH constants are K- and volume-free by statement [R].

## 5. The volume reading of item 9, and the rewrite (task 4)

5.1 Volume [R, V]. Balaban's recursion is CMP 119 (2.24): 1/g_{j−1}²(x) = 1/g_j²(x) + β_j(g_{j−1})φ_j(x), with β_j "defined in [I] by the formulas (1.41)–(1.43)" (p. 249). That is the whole-lattice coefficient of CMP 109. p. 279: the coupling renormalization subtracts this β_{k+1}(g_k)A. All three are CONFIRMED on page images (SOURCES_D3W8_VERIFY S3). So the β_j that enters u_{j−1} − u_j is, by Balaban's definition, the whole-lattice function of (j; g_0, …, g_{j−1}). It does not depend on K or on the torus. The "infinite-volume identification" that v4 item 9 calls unproved is not a theorem to prove for the shooting; it is Balaban's definition.
What remains of the volume question is a different statement: that subtracting the whole-lattice β inside a finite torus leaves a remainder that Theorem 1 controls. That is B8 (R-term part) and the small-field part of A15 (p. 278, printed without proof). Both are inputs to Theorem 1 (A13), whose hypothesis the shooting produces. They are not hypotheses of Lemma D″. SOURCES_D3W8 §2.4 repairs it for E_pure and routes E_R with no counterterm [proved by the author; reading verified].
Fallback [I, not needed]. If one used finite-volume increments β_j^{[K]} instead, the shooting would need Σ_{j≤K} sup_h|β_j^{[K]}(h) − β_j(h)| ≤ R_vol uniformly in K. Then (5.1) holds with R + R_vol/2 and nothing else changes. The expected mechanism is exponential decay of the step propagators over the torus side N·L^{K−j} (A1), summable in K − j. Not proved here.

5.2 Rewritten item 9.
 (K-unif) There are constants γ_0, C_β, b > 0, R ≥ 0, free of K, j, and the volume, such that, for every K, the increments β_j(h) used in the K-th shooting satisfy:
  (K1) β_j(h_{j−2}, 0) = β_j(0) for every admissible past (history-free at zero own coupling);
  (K2) |∂β_j/∂g_{j−1}| ≤ C_β on admissible histories in [0, γ_0];
  (K3) Σ_{i=k+1}^{n} β_i(0) ∈ [b(n − k) − 2R, b(n − k) + 2R] for all 0 ≤ k < n.
 Consequences [P, §4]. (i) of Lemma D″ with C_1 = C_β; the bracket (4.4) on every admissible history; and, with Lemma HH, the comparison: increments along any two admissible trajectories with the same g_{j−1} differ by at most C_hλ/(1−λ)·sup_i|Δg_i|; with different g_{j−1}, by at most C′ sup_i|Δg_i| (4.2), uniformly in K.
 Proofs of the parts:
  - K-freeness of the functions: whole-lattice definition, CMP 119 (2.24) + p. 249 [V: SOURCES_D3W8_VERIFY S3].
  - (K1): CMP 109 p. 268 "vanishes at g_k = 0" + (1.3) order-0 log Z terms [R: SOURCES_HHIST §2–3, quotes from page images].
  - (K2): (H0), CMP 109 p. 264 [Balaban, odd L > 11]; or GGAIN C_β = C_ΠS_0 [V: SOURCES_GGAIN_VERIFY, modulo G3 ⇐ (Q) ⇐ A7 ⇐ A1 + A18, and (M_r)].
  - (K3): Theorem K, R = κ_* [proved+verified conditional on (B2) ⇐ (H2) and the fixed-level inputs, v4 §4.1]; or Theorem B, R = C_B (Route B, unverified).
  - The comparison (4.2): Lemma HH (SOURCES_HHIST §6), i.e. real (H-hist); its status is TRUST_LEDGER B13 (small-field first derivative proved+verified modulo G3, (M_r), Theorem SM Fact A, B7). The shooting itself does not use (4.2); it uses (K1)–(K3) only.

## 6. Task (5): conclusion and ledger

Verdict. Item 9 is CLOSED AS A REDUCTION. No use in v4, KAPPA_BOUNDED, B2_TWOSTEP, or LEMMA_DPRIME needs an identity. Every use needs K-uniform constants, and (K-unif) supplies them:
 - K-dependence of the functions: none, by Balaban's whole-lattice definition of β_j (CMP 119 (2.24), p. 249, p. 279) [V]. The finite-volume consistency moves to B8/A15, which are inputs to Theorem 1, not to the shooting.
 - History dependence: real (CMP 109 p. 298), but the shooting never compares histories. Hypothesis (i) follows from (K1) + (K2) with C_1 = C_β (4.1). The bracket (4.4) holds on every admissible history with the v4 constants β = 3b/4, B′ = 5b/4 + 2R, D′ = 2R.
 - Where a trajectory comparison is wanted, (4.2) from Lemma HH gives it uniformly in K, and (4.3) gives a cruder version from (K2) alone; each costs one K-free condition on γ and leaves R unchanged.
No use needs more than this. The remaining open inputs are the ones already on the ledger: L5/B7 (domain and continuity of β off Balaban's trajectory), (H0)/C_β uniformity over admissible histories (or GGAIN modulo G3, (M_r)), B8 (finite-volume consistency, inside Theorem 1), and Theorem K's own inputs.

Corrections to existing files (not edited; for the next v4 revision):
 1. v4 §10 item 9 and table row l. 473: replace by (K-unif) of §5.2; status "reduced: definition [V] + (H0)/GGAIN C_β + Theorem K"; move the finite-volume content to B8.
 2. v4 §2.1–§2.2 and KAPPA_BOUNDED §5.3 hypothesis (i): state it in history form, |β_{k+1}(h_k) − β_{k+1}(0)| ≤ C_1 g_k uniformly over admissible pasts, and cite (4.1) for why only the own-slot derivative is needed.
 3. IDEAS_FABLE §I6: the proposition "what Theorem 2w uses is K-UNIFORM bounds, which real (H-hist) gives" is right in its first half. Its second half over-asks: the shooting needs only the own-slot bound C_β and (K1), not the off-diagonal (H-hist) decay. This agrees with TRUST_LEDGER B13 ("not T1"). Also, item 9 as written is a volume statement, not a history statement.
 4. TRUST_LEDGER B8 "uses" column lists "shooting in T1 (γ, constants free of K)". Under §5.1 the shooting uses the whole-lattice β by definition; B8 is used by Theorem 1, not by T1.

Ledger.
[P] proved here: §2 key fact (Lemmas D′/D″ are per-K; only constants must be K-free); §2 use table; (3.1) consequence and decomposition (3.3)(c); bound (3.3)(d); (4.1); (4.2); (4.3); (4.4) with the v4 constants; §4.3 reference-trajectory variant (extra γ ≤ b/(4 max(2C_β, C′))); §5.1 fallback arithmetic (R → R + R_vol/2).
[R] read and quoted from project files: v4 item 9, §1.1, §2.1–§2.2, l. 129, l. 175; LEMMAS_DE_VERIFY §2.4(c), §3 item 2; THEOREM2_PROOF_VERIFY Point 7; KAPPA_BOUNDED §5.2–§5.3; LEMMA_DPRIME (1.2); TRUST_LEDGER A15, B7, B8, B13; SOURCES_HHIST §2–§6 (CMP 109 pp. 258, 260, 263–264, 268, 298 quotes); SOURCES_D3W8 §2.4.
[V] previously verified results used: SOURCES_D3W8_VERIFY S3 (p. 278, p. 279, (2.24), p. 249); SOURCES_GGAIN_VERIFY items 2, 5 (C_β, modulo G3, (M_r)); SOURCES_HHIST2_VERIFY grade (1) (β_j needs only uniform first derivatives in HTHR2); Theorem K / Lemma D″ status as recorded in v4 (KAPPA_BOUNDED_VERIFY §6, Lean).
[I] inferred, not proved: "generically nonzero" history difference (§3.1); K-freeness of γ_Bal, γ_0 as stated by Balaban (§4.5); the finite-volume fallback mechanism (§5.1).
No new Balaban page was read. No existing file was edited. Firewall kept.

STATUS: COMPLETE
