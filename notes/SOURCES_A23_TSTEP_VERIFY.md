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
