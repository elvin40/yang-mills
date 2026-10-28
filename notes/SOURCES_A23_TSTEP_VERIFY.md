IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_A23_TSTEP_VERIFY

Independent verifier, 2026-10-28. Firewall kept: no /tmp/sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP.

## 0. Start
File created before reading. Sections appended per tool call.

## 1. Context read
- Author file SOURCES_A23_TSTEP.md: claims (1)–(4) as in the task.
- TRUST_LEDGER rows: A23 "not printed; use consistent; used by B22 [R]"; B22 "reduced [R] ... (K1)–(K3), κ ≥ 1536; Lean K1_numeric (δ = 0.03, L = 13)".
- KAPPA2 (K1): θ(1 − 10δ)L/2 ≥ 1 + 4β; (K2) θ(1 − β)L/2 ≥ 1 + 3β; (K3) M ≥ 12L(3κ_final^θ/C_1)^{1/d}; κ_eff = θκ/(1 + 4β); κ ≥ 1536 from (1.94) at κ_eff; κ_0 factor 3.6 = 0.0692/(0.0385·0.5), where 0.0692 = (1/10)(1 − 4/13) is the unsourced δ_B.
- KAPPA2_VERIFY §4: θ = 1 − m_tot/κ, additive absorptions; §8 (R-a) flags CMP 119 Sect. 3.
- BOOKKEEPING §4: CMP 119 Sect. 3 prints no loss constant; only prefactors change.

## 2. Lean (task e) — done
- New file lean/YmLean/K1Prime.lean, theorem YmLean.K1_numeric_13 over ℚ, proof `norm_num`. States: (1/13)(1 − 2(1+4·¼)/(½·13)) = 5/169 (≈ 0.02959); 1 + 4·¼ ≤ ½(1 − 13/40)·13/2; NOT 1 + 4·¼ ≤ ½(1 − 13·0.03)·13/2.
- Import added to lean/YmLean.lean after YmLean.Interp (only edit to an existing file; the lakefile globs the lib, no lakefile change needed). Interp.lean untouched.
- `lake build YmLean.K1Prime`: 10 s; full `lake build`: success, 2540 jobs, 8.6 s. No sorry. Axioms: [propext, Classical.choice, Quot.sound].

## 3. Images: CMP 109 contents, CMP 116 "(6.6)" (task a)
- CMP 109 pdf p. 1 (300 dpi): "Commun. Math. Phys. 109, 249–301 (1987)". Contents: 0 (249), 1 (260), 2 (265), 3 (269), 4 (281), 5 (292), References (298). No Sect. 6 or 7. [V]
- CMP 116 printed p. 2: "The first paper is referred to as I ... e.g. Sect. I.3, or the formula (I.1.18)". Sect. 1 title "Localizations and Bounds of Terms in the Fluctuation Field Action". [V]
- The "(6.6)" cite is on printed p. 3, not p. 2 (minor page slip by the author): "(1.6) ... For more detailed explanations of (1.6) see Sect. C [13]. ... Each factor in (6.6) depends on external gauge field configurations restricted to ... X̃_j^5". It refers to the display (1.6) just above. [V] So CMP 116 Sect. 1 was Sect. 6 in a preprint numbering. Strong support for claim (1).

## 4. Images: CMP 116 pp. 19–21 (300 dpi)
- p. 19: (2.33) exp(−(1−4δ)κd_k(Z_0)); (2.34) volume sum over Z_0\Y_0, "multiplied by exp(−δκd_k(Z_0)) can be estimated by 1"; (2.35) (1−5δ); extract exp(−δκd_k(Z_i)) per component; (2.36) "2d_k(Z_i) ≥ Ld_{k+1}(Z′_i)", "simple, but awkward, geometric and combinatoric considerations"; sum via (1.28) "with κ replaced by δκ". [V]
- p. 20: "(1−5δ)κd_k(Z_i) ... replaced by (1−6δ)½Lκd_{k+1}(Z′_i)"; (2.37) (1−7δ)½L; "we assume that ½(κ_1 − 1) ≥ 2Lκ"; volume exponentials bounded by 1 using exp(−δ½Lκd_{k+1}(Z)) and (2.30); Lemma 3 (2.38) |H(Z)| ≤ C_3ε_1exp(−(1−8δ)½Lκd_{k+1}(Z)). [V]
- p. 21: (2.39) extract exp(−δ½Lκd_{k+1}(Z_i)) per factor; rest via (2.27) and "∪Z_i = X, X connected" → (1−9δ); (2.40) Cammarota [26]; volume exp(LM)^{−4}|X| times exp(−½δLκd_{k+1}(X)) ≤ 1 → (2.41) (1−10δ)½L; "(1−10δ)½L = 1, or δ = (1/10)(1 − 2L^{−1})". [V]
- Accounting pattern on the images: per summation operation, one δ for the sum over the pieces (tree/Cammarota), one δ (or ½δ, rounded up) for the volume factor. In (2.39)–(2.41) the 8δ → 10δ step is exactly "sum over pieces at fixed X" (δ) + "volume" (½δ, written as δ). Author's claim (2) CONFIRMED on images.

## 5. Image: CMP 116 p. 18 — the tree-length bound (task c)
- (2.27) [V, image]: "Because ∪_{Y∈D} Y = Y_0 and Y_0 is a connected domain, hence the definition of d_k(Y) implies the inequality Σ_{Y∈D}(d_k(Y) + 5) ≥ d_k(Y_0) + 5." So d(X) ≤ Σ_i d(Y_i) + 5(n − 1) for pieces with connected union. This is the author's R2 with c_0 = 5, PRINTED, not only a reading. Applies to X = Z_0 ∪ Y_1 ∪ … ∪ Y_n because each Y_i meets Z_0 (union connected). The (2.29)–(2.30) remarks say the same inequalities hold "for all k", so d_{k+1} is covered (Balaban uses (2.27) at k+1 in (2.39)).
- (2.28): the per-piece cost e^{5·rate} is a prefactor, paid by ε (Balaban: "2E_0ε_1C_1… exp 5κ ≤ 1"). In (2.39) he writes exp 5κ at rate ≈ ½Lκ(1−9δ); this is loose by the factor ~L/2 in the exponent but harmless (ε_1 fixed after κ, L, M). Same for (N4): prefactor e^{5ρ}, ρ ≤ (L/2)κ, absorbed by ε_1. [P]
- (2.30) [V]: (3·2³)^{−1}M^{−4}|Y| ≤ d_k(Y) ≤ M^{−4}|Y| − 1. Volume factors are linear in d, so each volume absorption is a δ-fraction (needs κδ·(1/24) ≥ the volume coefficient, i.e. a smallness/κ-largeness condition).
- (2.32): Σ_i d_k(Y_i) + 4M^{−4}|Z_0\Y_0| ≥ d_k(Z_0) (geometric). Not needed for (N4).
- Claim R2: CONFIRMED and upgraded [I] → [V].

## 6. Images: CMP 119 pp. 277–278 (pdf 35–36), (3.44)–(3.47)
- p. 277 [V]: "The final step ... is the exponentiated cluster expansion of Sect. 7 [I]"; "Ẽ^{(k+1)}(Λ_{k+1}) ... given by (I.7.12), with terms given by (I.7.13)"; "constructions of Sect. 7 [I], described between (7.2) and (7.10)"; (3.44) numerator = Σ H′(Z_0)·…·H(Z_n); "Z_0 contains the bond b"; "for n > 0 the factors H(Z_i) are the same as in the expansion of the denominator. The factor H′(Z_0) is different ... Although different, it satisfies the same bound as the other factors." (sentence ends top of p. 278). R3 is Balaban's bare assertion [R].
- p. 278 [V]: remaining sum over Z_i with "Z_i ⊂ Z̄_0^c" (no intersection with Z_0 along a cube or a 3-dim wall); (3.45) Σ_{Z_0∋b} H′(Z_0) exp[Ẽ(Λ, Z̄_0^c) − Ẽ(Λ)]; difference = (I.7.12) clusters with "at least one ... intersects Z_0 along a three-dimensional wall at least", resummed by (I.7.13); (3.46) Σ H′(Z_0) exp[−Σ_Y Ẽ(Λ, Y)]; "the exponential ... is expanded into the Mayer expansion, as the action density (I.7.1). This, after the proper resummation, yields" (3.47) Σ_{X∈D_{k+1}, X∋b} E_0^{(k+1)}(Λ, X, b); "satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0³(g_k))". No δ, no rate, no count printed. [V]
- So the author's description of (N4) is accurate. Each Y touches Z_0 along a 3-dim wall, so Z_0 ∪ Y_1 ∪ … ∪ Y_n is connected and (2.27) applies (§5).
- Page labels: (3.44) is on p. 277, (3.45)–(3.47) on p. 278; author's "pp. 277–278" correct.

## 7. Own derivation of the (3.44)–(3.47) cost (task b)
Notation: ρ = ½Lκ (rate in d = d_{k+1}); inputs |H′(Z_0)| ≤ Cε e^{−(1−8δ)ρd(Z_0)} (R3, Balaban's assertion; (2.38) level), |Ẽ(Y)| ≤ O(1)Cε e^{−(1−10δ)ρd(Y)} ((2.41) level; (I.7.13) resummation of clusters touching Z_0 is a sub-sum of the (2.39)–(2.41) sum at fixed Y, so the same bound holds, no new cost).
Operations, in order:
1. Z_0 marking and the restricted denominator (3.45)–(3.46): Ẽ(Λ, Z̄_0^c) − Ẽ(Λ) is a sub-sum of the (I.7.12) cluster sum; resummed by (I.7.13). Cost 0 δ.
2. Mayer expansion of exp(−Σ_Y Ẽ(Y)) = Σ_n (1/n!) Σ_{Y_1..Y_n} Π(−Ẽ(Y_i)). This is the expansion of an exponential of a sum: no connectivity among the Y_i, no ρ^T, no Cammarota bound needed. Cost 0 δ.
3. Tree bound (2.27) [printed]: X = Z_0 ∪ ∪Y_i connected ⇒ d(X) ≤ d(Z_0) + Σd(Y_i) + 5n. The e^{5ρ} per Y_i is a prefactor, needs Cε e^{5ρ}·O(1) ≤ small (ε_1 after κ, L, M). Cost 0 δ.
4. Sum over the Y_i at fixed X ∋ b: extract e^{−δρd(Y_i)} per Y_i; Σ_{Y∋□} e^{−δρd(Y)} ≤ O(1) per cube (as (2.29), κ large). Families inside X: ≤ exp(O(Cεe^{5ρ})(LM)^{−4}|X|). Cost 1δ (rate (1−11δ) on Y-factors).
5. Sum over Z_0 ∋ b, Z_0 ⊂ X: paid by the 2δ slack of H′(Z_0) (8δ vs 10δ), or by 2^{#cubes(X)}, a volume factor. Cost 0 δ beyond step 6.
6. Volume factor exp(c(LM)^{−4}|X|) with c = O(Cεe^{5ρ}) + log 2 at most: by (2.30) ≤ exp(24c(d(X)+1)); absorbed by e^{−δρd(X)} if κ large (as Balaban's exp(LM)^{−4}|X| after (2.40), cost ½δ there). Cost ≤ 1δ.
Result: |E_0(Λ, X, b)| ≤ O(p_0³)O(1)Cε e^{−(1−12δ)ρd(X)} by my count; the separate "extraction 3" of the author (resummation at fixed X) is not needed, because step 2 has no connected-cluster structure and step 5 is covered by Z_0's slack or the volume term. The author's 13δ is a valid, slightly loose upper bound (rounding each step up, as Balaban does). I cannot exclude that a full write-up needs one extra δ (e.g. if the D_{k+1}-closure of X costs as (2.36) did, 5δ→6δ); 13 covers that too. So "≤ 3δ" is CONFIRMED as a safe bound; my tight count is 2δ. Both are [P] sketches at Balaban's level of detail; R1 stays open as a full proof.

## 8. (K1′) arithmetic and propagation (task d), python Fractions
- c = 13: δ′ = 5/169 = 0.02959. δ = 0.03: θ(1−13δ)L/2 = 1.9825 < 2 FAILS. δ = 0.025: 2.19375 ≥ 2. δ = 0.02: 2.405. CONFIRMED (Lean K1_numeric_13).
- c = 12 (my tight count): δ′ = 5/156 = 0.0321; δ = 0.03 gives 2.08 ≥ 2 (passes, thin margin). So whether δ = 0.03 must change depends on 12 vs 13; δ = 0.025 is safe for every c ≤ 15.38. Recommend δ = 0.025.
- (K2): θ(1−β)L/2 = 2.4375 ≥ 1.75; no δ. Unchanged. CONFIRMED.
- (K3), κ_eff = θκ/(1+4β): use only the delivered input margin (1+4β)κ, which (K1′) delivers. Unchanged. CONFIRMED.
- κ ≥ 1536 = (1+4β)·6·2^d/(βθ): no δ. Unchanged. CONFIRMED.
- HHIST2: needs only κ′ > 0 and summable product decay (HHIST2 l. 12, 42). Unchanged. CONFIRMED.
- κ_0 factor: author 5.5 = 0.0692/(0.025·0.5) is right arithmetic, but the baselines are mixed: KAPPA2's 3.6 used the maximal δ_θ = 1/26, the new 5.5 uses the chosen δ = 0.025. Like-for-like: max δ′ gives 4.68; if Balaban's own unsourced δ_B is also re-based to 13 (0.0533), δ = 0.025 gives 4.26. A κ lower bound only; not load-bearing. CORRECTED (wording).
- Not "nothing else changes": paper/sources.tex l. 100–101 states (K1) with 1/10, "δ ≤ 0.0385", "κ about 3.6 times larger", "T-step fraction 10δ". These lines need the (K1′) update. TRUST_LEDGER B22 text and Interp.lean doc-comment also cite δ = 0.03 (Interp.lean stays true; now covers only the small-field step).

## 9. Grades and ledger
(1) Deferral targets = CMP 116 Sects. 1–2; CMP 109 has Sects. 0–5 only: CONFIRMED on images (CMP 109 p. 249 contents; CMP 116 "(6.6)" cite for its own (1.6)). Minor slip: the "(6.6)" cite is on CMP 116 p. 3, not p. 2.
(2) Printed step keeps κ by δ-fractions against L/2, loses 10δ; Peierls paid by p_0 in R; tails cost κ_1, M: CONFIRMED (CMP 116 pp. 18–21 images: (2.27)–(2.41), "½(κ_1−1) ≥ 2Lκ", δ = (1/10)(1−2/L); CMP 119 p. 263 image: "(κ − 1)d_j(X)" used for the X-sum; the p_0 part rests on KAPPA2_VERIFY §5 images, not re-read here).
(3) (3.44)–(3.47) is the one unprinted cost, ≤ 3δ, via d(X) ≤ d(Z_0) + Σd(Y_i) + O(1)n: CONFIRMED as an upper bound. My count is 2δ (no connected-cluster sum in the Mayer expansion of an exponential; Z_0 sum paid by H′'s 8δ/10δ slack). The tree bound is PRINTED as CMP 116 (2.27) with O(1) = 5 (R2 upgraded [I] → [V]). R1 stays a [P] sketch; R3 (H′(Z_0) bound) stays a bare Balaban assertion [R].
(4) (K1′) δ ≤ (1/13)(1 − 2(1+4β)/(θL)) = 0.0296; 0.03 fails, 0.025 passes; (K2), (K3), κ_eff, κ ≥ 1536, HHIST2 unchanged: CONFIRMED (arithmetic exact; Lean K1_numeric_13 built, standard axioms). κ_0 factor 3.6 → 5.5: CORRECTED (mixed baselines; like-for-like 4.3–4.7; lower bound only). "Nothing else changes": CORRECTED, paper/sources.tex l. 100–101 must be updated.
A23 status: reduced [P sketch, verified]: large-field T-step loss ≤ 13δ (10δ printed + ≤ 3δ unprinted for (3.44)–(3.47), own count 2δ); residue R1 (full proof of the (N4) count) and R3 (H′(Z_0) bound, Balaban assertion). R2 closed by (2.27); R4 closed by the (6.6) image.
B22's δ: change to 0.025 (required under the 13δ bound; 0.03 survives only under the tight 12δ count, margin 0.08κ). Replace (K1) by (K1′). Lean: YmLean.K1_numeric_13 in lean/YmLean/K1Prime.lean.
STATUS: COMPLETE
