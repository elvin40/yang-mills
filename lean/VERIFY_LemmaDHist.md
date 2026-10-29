# Statement check: LemmaDHist.lean

Build: `lake build YmLean.LemmaDHist` from lean/ (594 lines). The file is not imported by YmLean.lean. No `sorry`, `admit` or new axioms. Axioms of all eight printed theorems (`lemma_D_hist`, `lemma_D_hist_adm`, `lemma_DPrime_hist`, `hshooting`, `hshooting_large_K`, `βce_separately_continuous`, `βce_no_shot`, `βce_not_cube_continuous`): `[propext, Classical.choice, Quot.sound]`.

Sources: LEMMA_DPRIME.md Remark 3; LEMMAS.md Lemma D and its Remark (ii); LEMMAS_DE_VERIFY.md §1.5; THEOREM2_PROOF_v4.md §2.4 (L5) and §10 items 7, 8, 13; SOURCES_GGAIN_NONMONO.md §5 item 7′. Closes ledger L5 for Lean (item 13), under the hypotheses stated below.

## Notation

- `HistInc = (j : ℕ) → (Fin j → ℝ) → ℝ`. `β j h` is β_j(g_0, …, g_{j−1}). The trajectory is `u (k+1) = u k − β (k+1) (hist u k)`, with `hist u k = (1/√u_0, …, 1/√u_k)` (`HTraj`). `HShot β γ g K u` is `HTraj` plus all couplings g_k, k ≤ K, in ]0, γ], plus u_K = 1/g², g_K = g. This is the history form of `Shot`.
- `Cube γ j = ]0, γ]^j`. `incr β H i = β_i(H_{i−1})` is the increment along any sequence of pasts H.
- `hflow β ψ u₀ k` is the flow from u_0 = u₀ with couplings ψ(u_i). `φ γ` gives the clamped flow (LEMMA_DPRIME Step 2, φ applied to every entry of the past). `tflow β = hflow β (1/√·)` gives the true flow.
- `Adm β γ k = D_k = {u₀ : u_0, …, u_k ≥ 1/γ²}` (LEMMAS_DE_VERIFY §1.5).
- `B'`, `D`, `D'`, `g₁`, `K₀`, `γdef` are the constants of LemmaDPrime.lean.

## Theorems

| Lean | Markdown statement | Match |
|---|---|---|
| `lemma_D_hist β γ b b'`: 0 < γ, 0 ≤ b ≤ b′, β_j continuous on ]0, γ]^j, b ≤ β_j ≤ b′ on ]0, γ]^j ⇒ (1) envelope t + b(K−k) ≤ u_k ≤ t + b′(K−k) for every trajectory with couplings in ]0, γ]; (2) for every K and g ∈ ]0, γ], a shot trajectory with the envelope | LEMMAS.md Lemma D (history form, clamped proof) | Weaker hypotheses: b ≥ 0 (note: b > 0), cube ]0, γ] (note: closed [0, γ]), K = 0 allowed. |
| `lemma_D_hist_adm β γ b b'`: 0 < γ, 0 ≤ b ≤ b′; for every k, b ≤ β_{k+1}(past of u₀) ≤ b′ for u₀ ∈ D_k, and u₀ ↦ u_{k+1} continuous on D_k ⇒ shot trajectory with the envelope, every K, g ∈ ]0, γ] | LEMMAS_DE_VERIFY §1.5 (nested intervals) | Exact hypothesis of §1.5. β is arbitrary off true admissible trajectories. The proof keeps [a_k, c_k] ⊆ D_k with u_k(a_k) ≤ m_k, u_k(c_k) ≥ M_k; a_{k+1} = sup{x : u_{k+1}(x) ≤ m_{k+1}} (only the left end is moved). |
| `lemma_DPrime_hist β β0 γ₀ γBal C₁ B βinf γ J`: β_j continuous on ]0, γ₀]^j; \|β_j(h) − β0_j\| ≤ C₁M for h ∈ ]0, M]^j, M ≤ γ₀; \|β0_j\| ≤ B; β0_j ≥ β∞/2 for j > J; γ = γdef ⇒ γ ≤ γ_Bal, g₁ ≤ γ, (a), (b), (c), (d) | LEMMA_DPRIME.md Remark 3: "β_{k+1} is continuous on ]0, γ_0]^{k+1}, and \|β_{k+1}(h) − β_{k+1}(0)\| ≤ C_1 max_i h_i, with β_{k+1}(0) history independent. Then Steps 0–8 hold unchanged" | Steps 0–7 exact (β0_j = β_{k+1}(0); "h ∈ ]0, M]^j" is "max_i h_i ≤ M"). (a) is stated for any pasts H_m ∈ ]0, γ]^{m+1}. Step 8 is not restated for histories (see Not formalized). |
| `hshooting`, `hshooting_large_K` | Steps 5 and 7 under (P1)–(P3) on the cube (`HHyp`) | Exact. |
| `βce_separately_continuous`, `βce_no_shot` | Question: which continuity does the IVT step need? | See below. |
| `βce_not_cube_continuous` | consequence of `lemma_D_hist` + `βce_no_shot` | Exact. |

## Which continuity the shooting step needs

The IVT is applied to F(u₀) = u_K. The only property used is continuity of F on the bracket; for the nested proof it is continuity of u₀ ↦ u_{k+1} on D_k for each k < K.

- Sufficient, clamped proof: joint continuity of β_j on the cube ]0, γ]^j (`lemma_D_hist`, `lemma_DPrime_hist`). The past changes with u₀, so every entry of the past moves at once. Joint continuity is used through `ContinuousOn.comp_continuous`.
- Sufficient, weaker, nested proof: continuity of the composite u₀ ↦ u_{k+1} on D_k (`lemma_D_hist_adm`). It holds if β_{k+1} is jointly continuous on the set of admissible pasts only.
- Not sufficient: continuity of β_j in the current argument with the past fixed. Also not sufficient: continuity in each argument separately. Counterexample `βce`: β_j ≡ 1 for j ≠ 2, and β_2(g_0, g_1) = 2 − h(1/g_0² − 6, 1/g_1² − 5), with h(s, r) = (2sr/(s² + r²))², h(0, 0) = 0. Then 1 ≤ β_j ≤ 2 for every past. β_2 is continuous in g_1 for fixed g_0 > 0, and in g_0 for fixed g_1 > 0. With γ = 1, K = 2, g = 1/2: on a trajectory, s = r = u_1 − 5. If u_1 ≠ 5, then β_2 = 1 and u_2 = u_1 − 1 ≠ 4. If u_1 = 5, then β_2 = 2 and u_2 = 3. So no shot trajectory exists (`βce_no_shot`). β_2 has one discontinuity, at (1/√6, 1/√5) ∈ ]0, 1]². The bounds of Lemma D hold (b = 1, b′ = 2). So the hypotheses "bounds + continuity in the last argument" do not imply the conclusion of Lemma D, by any proof.

## Do the sources supply the hypothesis?

- Bounds uniform in the past: item 7′ (SOURCES_GGAIN_NONMONO §5) gives \|β_{k+1}(h_{k−1}, g) − β_{k+1}(0)\| ≤ C_β g for every past in ]0, γ]^k. This implies the max form used in `lemma_DPrime_hist` (h ∈ ]0, M]^j ⇒ g ≤ M). Status there: [P, unverified]. Item 7 (H0) is Balaban's hypothesis.
- Continuity in the current argument: Balaban, CMP p. 264, "smooth on [0, γ]" (LEMMAS.md Remark (ii)). By `βce_no_shot` this alone is not enough.
- Joint continuity on the cube, or continuity of u₀ ↦ u_{k+1} on D_k: NOT supplied. LEMMAS.md Remark (ii): "continuity in the earlier arguments is a hidden hypothesis to be extracted from his inductive construction". THEOREM2_PROOF_v4 §10 item 8(a): "Balaban does not supply this". THEOREM2_PROOF_VERIFY Point 1: "Neither is stated or proved anywhere". The Lean theorems take it as a hypothesis.
- Domain: §10 item 8(b) says that Balaban's β_{k+1} exists only on pasts where his induction has run ((c′) + (S)). Clamped pasts can leave this domain. `lemma_D_hist_adm` evaluates β only on true trajectories with u_0, …, u_k ≥ 1/γ². If Balaban's domain needs more than u_i ≥ 1/γ², the caller must show that D_k lies inside it. For Lemma D (all β_j ≥ b ≥ 0) the envelope is monotone, so this is the (c′) check of §10 item 8(c).

## Not formalized

1. Nested-interval form of Lemma D′/D″ (early increments may be negative). THEOREM2_PROOF_v4 §2.4: "plausible; it is not written and not verified". With negative increments, u_{k+1} ≥ 1/γ² does not follow from the target interval, and the brackets need new envelopes. Only the clamped (cube) form of Lemma D′ is in Lean.
2. Step 8 of Lemma D′ for histories (`lemma_DPrime_step8`). It follows from `lemma_D_hist` in the same way as the one-argument case, with b = β₀/2. It is not restated.
3. History form of Lemma D″ (LemmaDDoublePrime.lean) and of Lemma E.
4. That Balaban's β_j satisfies any of the continuity hypotheses above (see the previous section).

## Addendum: LemmaDHistNested.lean (nested intervals with negative early increments; v4 §10 item 8(c))

Build: `lake build YmLean.LemmaDHistNested` (268 lines; imports LemmaDHist.lean; not imported by YmLean.lean). No `sorry`, `admit` or new axioms. Axioms of `nested_shoot`, `lemma_DPrime_hist_adm`, `lemma_DDoublePrime_hist_adm`: `[propext, Classical.choice, Quot.sound]`. This closes item 1 of "Not formalized" above.

Result: PROVED. The negative early increments do not break the nested-interval argument, and no extra hypothesis is needed. The fix is the lower envelope. For per-step lower bounds l_i (which can be negative), use m_k = t + Σ_{i=k+1}^{K} l_i instead of t + b(K − k). The proof keeps only m_k ≥ γ^{−2} for every k ≤ K. For Lemma D′, m_k ≥ t − D by the window bound (`wsum_ge_neg_D`), so g ≤ g₁ suffices. For K ≥ K₀, m_k ≥ t + (β∞/8)(K − k) ≥ t, so g ≤ γ suffices. For Lemma D″ with l_i = β0_i − δ, m_k ≥ t + (3b/4)(K − k) − 2R, so t ≥ γ^{−2} + 2R suffices. This is the construction of SOURCES_T2_B7_CLAMP.md §4.2–4.3 (L-149, Lemma D″-nest; D′-nest), with p_k built from T_0.

| Lean | Statement | Match |
|---|---|---|
| `nested_shoot β γ t l U K`: l ≤ U; m_k ≥ γ^{−2} for k ≤ K; u₀ ↦ u_{k+1} continuous on D_k (k < K); l_{k+1} ≤ β_{k+1} ≤ U_{k+1} on every u₀ ∈ D_k with `Good` past ⇒ ∃ u₀ ∈ D_K, u_K = t, `Good β l U K u₀` | general nested-interval lemma | New general form. Only the left end moves: a_{k+1} = sup{x ∈ [a_k, c_k] : u_{k+1}(x) ≤ m_{k+1}}. |
| `lemma_DPrime_hist_adm β B βinf γ J`: B ≥ 0, β∞ > 0, γ > 0; (P1)–(P3) per step (`lowb`: −B′ for i ≤ J, β∞/4 for i > J; upper B′) on admissible good pasts; continuity on D_k ⇒ (b)+(c) for g ≤ g₁ and every K; (d) for K ≥ K₀ and g ≤ γ | SOURCES_T2_B7_CLAMP 4.3 (D′-nest); Lemma D′ (b)–(d) | Exact output constants of `lemma_DPrime`. Constants γ, γ_Bal and (P1)–(P3) from C₁ are left to the caller, as in `lemma_DPrime_hist`. |
| `lemma_DDoublePrime_hist_adm β β0 b R δ γ`: (5.1) windows of β0; \|β_{k+1} − β0_{k+1}\| ≤ δ ≤ b/4 on admissible good pasts; continuity on D_k; t ≥ γ^{−2} + 2R ⇒ shot with t + (3b/4)(K−k) − 2R ≤ u_k ≤ t + (5b/4)(K−k) + 2R | SOURCES_T2_B7_CLAMP 4.2 (L-149) | δ = C₁γ. The lower bound matches B7_CLAMP 4.2 (T_0(k,K) − (b/4)(K−k) ≥ (3b/4)(K−k) − 2R). (c′) for pairs m < n and (d) are not restated. They follow from the per-step bounds (`Good`) as in LemmaDDoublePrime.lean. |

Domain. β is evaluated only on true trajectories u₀ ∈ D_k (u_0, …, u_k ≥ γ^{−2}, so all couplings are in ]0, γ]: this is (S)) whose steps 1, …, k already obey the per-step bounds (`Good`). Per-step bounds imply every (c′)-type window bound on the past (telescoping), so `Good` ∩ D_k lies inside any domain defined by (c′) + (S). `good_of_adm` shows by induction that every u₀ ∈ D_k is good, so the circularity "bounds need the domain, the domain needs the bounds" is resolved step by step. No continuity on the cube is used. There is no counterexample, because the statement holds.

Continuity hypothesis. Only (C-tr): u₀ ↦ u_{k+1} is continuous on D_k. Source: SOURCES_T2_B7_CLAMP.md §5.2 ([P given the inputs]: CMP 116 single step on 𝔅, Theorem SM, HHOL §2–§3, A15, Z^d activities [R]; unverified, and §5.3 says it is open without A15). Bounds on trajectories (i-tr) = item 7′ restricted to D_k (B7_CLAMP §5.1 [R]). Balaban's own-slot smoothness does not give (C-tr) (B7_CLAMP §5.2; `βce_no_shot` above shows that some continuity along the moving past is necessary).
