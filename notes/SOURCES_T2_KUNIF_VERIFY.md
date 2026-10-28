# SOURCES_T2_KUNIF verification

Independent check of SOURCES_T2_KUNIF.md. Firewall respected.

## S1. v4 item 9 wording (l. 448) and table row (l. 473)
Read directly. Item 9 text: "After rescaling, each step is the same unit-lattice block step, so β_j is K-independent only in the infinite-volume limit; a finite volume brings K-dependence back. This infinite-volume identification is not proved". The text writes β_j(g) with one argument. History dependence is item 8 (L5), a separate item ("β_{k+1}(g_0, …, g_k) … Balaban does not supply this").
Finding: item 9 as written is a VOLUME statement. The author's reading in SOURCES_T2_KUNIF §1 is correct. The IDEAS_FABLE §I6 history reading mixes item 9 with item 8.
Note: item 7 ((H0)) already states "|β_j(g) − β_j(0)| ≤ C_1 g uniform in j and history". So the own-slot bound is already a separate hypothesis in v4.

## S2. v4 §1.1, §2.1, §2.2 read; window arithmetic checked
- §1.1: "β_{k+1} depends on the whole history … (CMP 109 p. 298) … β_j(0) … history-independent by definition." Matches the author.
- Lemma D″ hypotheses: (i) |β_{k+1}(g) − β_{k+1}(0)| ≤ C_1 g, C_1 free of k, K; (5.1) T_0(k, K) ∈ [b(K − k) − 2R, b(K − k) + 2R]; γ := min(γ_0, γ_Bal, b/(4C_1)); β = 3b/4, B′ = 5b/4 + 2R, D′ = 2R.
- Arithmetic [checked]. T(m, n) = Σ_{i=m+1}^{n} β_i(g_{i−1}). Each term differs from β_i(0) by at most C_1 g_{i−1} ≤ C_1γ ≤ b/4. So |T − T_0| ≤ (b/4)(n − m). With T_0(m, n) ∈ [b(n − m) − 2R, b(n − m) + 2R]: T(m, n) ∈ [(3b/4)(n − m) − 2R, (5b/4)(n − m) + 2R]. Since u_m = u_n + T(m, n): (c′) lower side with β = 3b/4, D′ = 2R. Upper side: (5b/4)(n − m) + 2R ≤ (5b/4 + 2R)(n − m) for n − m ≥ 1, so B′ = 5b/4 + 2R with no additive constant. CONFIRMED.
- Point to check next: the pairwise form needs (5.1) on every window [m, n], not only windows ending at K. v4 (5.1) is written with right end K; the author's (K3) is written for all 0 ≤ k < n. Check Theorem K gives all windows.
- The proof idea in §2.1 confirms the shooting is a single IVT in u_0 at one fixed K. The clamped trajectory is evaluated at many u_0, but only the pointwise bracket on each is used.
