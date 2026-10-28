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

## S3. LEMMA_DPRIME Steps 0–8: where the increment bounds enter
- Hypothesis (i) there says "The functions β_j do not depend on K". This is stated, but no step uses it. Each step fixes K first ("Fix K ≥ 1", Step 2).
- Step 0: pointwise bounds (P1)–(P3) at one g ∈ ]0, γ], from (i) with C_1γ ≤ β_∞/4. Only C_1 enters.
- Step 1: tail sums along "any couplings g_0, …, g_{K−1} ∈ [0, γ]". Pointwise sum of Step 0. Uniform in K because J, B, C_1 are fixed.
- Step 2: continuity of u_0 ↦ ũ_K. Needs β_{k+1} continuous (in the history form: on the cube, L5). No bound beyond continuity.
- Step 3: (2.1) is applied "for every u_0 ∈ R" to each clamped trajectory separately. No two trajectories are compared.
- Step 4: IVT on one continuous function F̃.
- Step 5: the clamp is inactive, from (2.1) on the solution trajectory itself.
- Steps 6–8: pointwise counts on the solution trajectory; Step 8 uses Lemmas D + E, again pointwise.
- Remark 3 (history form) asks |β_{k+1}(h) − β_{k+1}(0)| ≤ C_1 max_i h_i. The author's (4.1) gives the stronger C_β g_k from (K1) + (K2). Either form suffices for Steps 0–1.
Finding: CONFIRMED. No step compares two trajectories or two values of K. The increments enter only through C_1 (pointwise), B, J, and continuity. C_1 = C_β via (4.1) is enough. The continuity on the clamped domain remains L5 (item 8), as the author says.
Caveat: (4.1) integrates ∂β/∂g_k along {h_{k−1}} × [0, g_k]. So (K2) must hold at every own coupling in [0, γ] for each admissible past, not only on Balaban's trajectory. This is the same domain question as L5/B7; the author flags it (§3.3 caveat, §6).

## S4. KAPPA_BOUNDED §5 (Theorem K, (5.1), Lemma D″)
- Theorem K: "|S_k − c k log L| ≤ κ_* for all k ≥ 0". So for any 0 ≤ m < n: T_0(m, n) = S_n − S_m ∈ [b(n − m) − 2κ_*, b(n − m) + 2κ_*]. (5.1) is written with right end K, but Theorem K gives every window. So (K3) "for all 0 ≤ k < n" is exactly what Theorem K proves, with R = κ_*. CONFIRMED.
- (c′) proof: "apply (a″) to the window m+1, …, n (the window argument does not depend on K)". Read: the sub-window of the same solution trajectory. Not a comparison across K. CONFIRMED.
- (a″) proof: "|T − T_0| ≤ Σ C_1 g_{i−1} ≤ C_1γ(K − k) ≤ (b/4)(K − k)". Only C_1 enters. Same arithmetic as S2.
- "(i) needs only a Lipschitz bound in g; C¹ is used for continuity in Step 2." So the increments enter through C_1 and continuity only.
- Ledger: V1 and (G2) "inherited by every result in the chain". These are the identification "β_i(0) in the recursion = the one-loop quantity Theorem K bounds". They are separate open items (5, 6) of v4. The author's U2/U7 rows name them. They are not item 9.

## S5. LEMMAS_DE_VERIFY §3 item 2 and TRUST_LEDGER A15, B7, B8, B13
- LEMMAS_DE_VERIFY §3 item 2 (verbatim): "Lemma D is for fixed K and needs β, β′, γ independent of K. β_j as a function is K-independent in the rescaled picture (… the same unit-lattice block step after rescaling, in the infinite-volume limit) … Finite volume would reintroduce K-dependence; (T2-a) must be stated in infinite volume, as (4.37) does." This is a volume statement. It asks for the infinite-volume definition, and notes that Balaban's (4.37) already uses it. The history question is §2.4(c) ("uniform over all admissible histories") and §3 item 1 (continuity), not item 2. Author's reading CONFIRMED.
- §3 item 3 there also says β_j^{(0)} "defined directly as the one-loop coefficient of the step-j Gaussian integral … history-independent … by construction". Consistent with (K1)'s β_j(0) being history-free.
- A15 (verbatim): "β_j is the coefficient of the infinite-volume, whole-lattice extension of the step"; status "printed for the small-field terms without proof (SOURCES_D3W8_VERIFY S3); the R-term part is not covered … (→ B8)". Uses column lists "K-independence of β_j (B8) ⇒ shooting in T1".
- B8 (verbatim): "the finite-volume step increment equals the infinite-volume one uniformly in K for the R-terms …, and a whole-lattice β subtraction is consistent in finite volume". Uses: "shooting in T1 (γ, constants free of K); (G2); (H0)". Status open.
- B13: real (H-hist) uses "Lemma H, Lemma H′, N3, (H-hist2), (H-thr), (FX); not T1". Small-field first derivative proved+verified (GGAIN) modulo G3, (M_r), Theorem SM Fact A, B7; "Large-field analogue OPEN".
- B7: L5 domain; Balaban defines β only along his trajectory.
Assessment of the B8 relocation. Once β_j in the recursion is Balaban's whole-lattice coefficient by definition, the shooting runs on a K-free sequence of functions. B8 then asks whether the finite-volume step, with this β subtracted, leaves a remainder of the form Theorem 1 claims. That is a correctness condition of Theorem 1's conclusion, not of the shooting. So the move of B8 from "shooting in T1" to "inside Theorem 1 (A13)" is correct. B8 stays open; it is relocated, not closed.
