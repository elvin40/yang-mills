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

