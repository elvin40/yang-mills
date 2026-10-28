# B2_TWOSTEP verification

Independent check of B2_TWOSTEP.md. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md.

## 1. Chain rule and threshold (items 1, 3 algebra)

k_l = (K + 2πl)/L, so dk_l/dK = 1/L. Two steps: k_{l,l′} = (K + 2π(l + Ll′))/L², so dk_{l,l′}/dK = L^{−2}.
(1.3): 𝒜_j𝒜_{j−1}s = L^{−2}H_j^†(⊕_l L^{−2}H_{j−1}(k_l)^†(⊕_{l′}s)H_{j−1}(k_l))H_j = L^{−4}H_(2)^†(⊕s)H_(2). CONFIRMED.
(2.1): product rule on H_(2) gives two L^{−4} terms; the s term gives L^{−4}·L^{−2} = L^{−6}. CONFIRMED.
(2.2): derivative-of-s term ≤ L^{−6}‖H_(2)‖² sup|∂s| = L^{−6}(L²ρ_2)² = ρ_2²/L². Other term 2L^{−4}η_2·L²ρ_2 = 2L^{−2}ρ_2η_2. CONFIRMED.
Threshold: q_1 = ρ_2²/L² < 1 ⇔ ρ_2 < L. The chain-rule gain is exactly L^{−2} per two steps on real K. No Cauchy-strip loss enters, so √(L²−1) does not apply. CONFIRMED.
One-step analogue: L^{−2}·L^{−1}·(Lρ_1)² = ρ_1²/L; first term 2L^{−2}·η_1·Lρ_1 = 2L^{−1}ρ_1η_1. CONFIRMED.
η_2: ∂[H_{j−1}(k_l)] = L^{−1}(∂H_{j−1})(k_l), so ‖∂H_(2)‖ ≤ L^{−1}η_1·Lρ_1 + Lρ_1·η_1 = (1+L)ρ_1η_1. CONFIRMED.
σ^{(2)}: L^{−2}𝒜_jL^{−2}𝒜_{j−1} = L^{−8}H_(2)^†(⊕s)H_(2); factor L^{−8}(L²ρ_2)² = ρ_2²/L⁴. One step: L^{−4}(Lρ_1)² = ρ_1²/L² = 1.760²/9 = 0.344. Source bound L^{−4}(Lρ_1)²Z_2 + Z_2 correct. CONFIRMED.
Sanity: H_j(0) = L e_0 makes 𝒜_j s(0) = s(0) (eigenvalue 1 of the marginal σ^{(1)} map), consistent with the L^{−2} normalisation.

## 2. Sources and form of Q_j (items 1 sources, G3)

Read U3_AW §1 (per-step formulas (3.2)–(3.3) as transcribed) and §4.3 (budget).
- σ^{(2)} linear part: σ_{j−1}^{(2)} enters only via 𝔨_2 fine block L^{−4}σ^{(2)}(k_l), and [b_0𝔨_2b_0]_22 = H^†(⊕L^{−4}σ^{(2)})H = L^{−2}𝒜_jσ^{(2)}. CONFIRMED.
- ∂σ^{(1)} terms: 𝔨_1 fine block L^{−2}σ^{(1)}(k_l); its K-derivative is L^{−3}(∂σ^{(1)})(k_l). It enters through {𝔨_1, b_0} and through ∂b_1 in {𝔨_0, b_1} (b_1 contains b_0𝔨_1b_0). CONFIRMED.
- Degree: 𝔨_1b_1 is quadratic in σ^{(1)}; all other σ^{(1)} terms are linear. ∂σ^{(1)} appears only linearly and, from these formulas, with no second σ^{(1)} factor. The author's "at most one more σ^{(1)} factor" is a harmless overstatement.
- Coefficients: b_0, ∂b_0 (in b_1), ∂²b_0 (∂b_1, P_2(𝔨_0, b_0)), ∂^{≤2}𝔨_0, fixed vertices. So "∂^αb_0, |α| ≤ 2" is right. CONFIRMED.
- (1.1) uses no derivative of σ^{(1)}; g^{(1)} uses ∂𝔨_0, ∂b_0. So ∂g^{(1)} needs ∂²𝔨_0: A0 + Cauchy. CONFIRMED.
G3 verdict: the form of Q_j matches U3_AW (1.2) and the budget P10. I did not re-derive U3_LEMMA51 (3.3) from the Moyal rule either; the check is a read-off consistency check, the same depth as the author's citation.

Uniform constants (U2), (U3): H = fine block of b_0[0;1]; ∂b_0 = −b_0(∂𝔨_0)b_0; ‖b_0‖ ≤ b(L) on real K (O6); ∂ of the fine blocks of 𝔨_0 is L^{−1}(∂Δ_{j−1})(k_l), bounded by A0 + Cauchy on S(δ_0) uniformly in j; the remaining entries are fixed trigonometric polynomials. So η_1, G_1, G_1′ are j-independent. CONFIRMED.
"Large constants only in sources": in C1 the coefficient of D_{j−2} is ρ_2²/L² only; b(L), η_1, η_2, R_1, G_1, G_1′ sit in S_1. In B2 the coefficient of Y_{j−2} is ρ_2²/L⁴ only. CONFIRMED. Note ρ_1 in the sources needs only finiteness (ρ_1 ≤ b(L)/L by O6), not the measured value.

## 3. Obstruction claim, Remark 1.1, (H2) vs (H″) (items 2, 3, 4)

- Item 2. One-step C¹ factor ρ_1²/L with verifier ρ_1 = 1.6516, 1.7360, 1.7569, 1.7600: 0.909, 1.0046, 1.0289, 1.0325. CONFIRMED arithmetic. ρ_1²/L > 1 ⇔ ρ_1 > √3 = 1.7321; j = 2 exceeds it by 0.2%. At K = 0, H_j(0) = L e_0 (verifier §5 numerically), so the derivative coefficient is L^{−2}·L^{−1}·L² = L^{−1}. CONFIRMED. The one-step argmax is at (1.67–1.92, same, π, π) (verifier §6), so "K ≈ (1.9, 1.9, π, π)" is the j ≥ 3 value; for j = 2 it is 1.86. Minor. One caveat: ρ_1²/L > 1 shows only that the sup-norm bound fails, not that a C¹ bound fails; a weighted norm (author Remark (b)) is not excluded. The author states this. CONFIRMED.
- Remark 1.1. One-step σ^{(2)} factor ρ_1²/L² = 0.344 (j = ∞). CONFIRMED. But σ^{(2)} still needs C¹ of σ^{(1)} in its source; the author says so. The one-step sup contraction needs sup_j ρ_1 < L, which is also uncertified; (H2) implies the two-step form q_2 < L^{−2}. CONFIRMED.
- Item 3. Theorem C1: recursion and Gronwall on even/odd j are correct; S_1 matches (2.2) with s = σ_{j−2}^{(1)} plus the one-step bound on ∂(𝒜_jg_{j−1}) plus G_1′. Bases D_0 (Wilson trig polynomials) and D_1 (Prop. A2) are fine. Theorem B2 Steps 1–3 correct. Both conditional on (H2). CONFIRMED.
- Item 4. (H2) is the plain operator norm of the same matrix as U3_AW (H″) at n = 2, on real K only. (H″) at n = 2 needs ρ_2² < L² − 1 because the strip-Cauchy gain is 1/(L^n − 1) (U3_AW §4.7, verifier §4 R-A). (H2) needs ρ_2² < L². So (H2) is weaker (threshold 3 vs 2.828 at L = 3). It also asks less: only real K, and a sup over j ≥ 2 of n = 2 only (not sup over n). CONFIRMED. Caveat: (H2) gives C¹ only; the C², C³ claim in §5 "looks routine" is not written out (not graded).
- Remark (a) "ρ_2 < ρ_1² is the whole gain": ρ_2 ≤ ρ_1² always holds by submultiplicativity; the gain is that it is strict by a factor 1.50 (2.064 vs 3.098). CONFIRMED.

## 4. Numerics rerun (item 5), Mac, numerics/.venv, aw_verify/hscan.py functions

Own driver (in /tmp, deleted after): r2(K, j) = ‖(⊕_l H_{j−1}(k_l))H_j(K)‖/L², inner level "inf" for j = ∞. Index check: blocks(K, j) uses Δ_{j−1} (M = L^{j−1}; j = 1 Wilson), so j = 2 means inner H_1, outer H_2. Correct pairing.
Search design differs from the author's: 500 (j = 2) / 120 (j = ∞) uniform random sorted 4D points (seed 7) + 45-point face grid K_3 = K_4 = π, then Nelder–Mead from the top 2.
- Spot check: j = 3 at (2.3557, 2.3557, π, π) gives 2.0559915. Reproduces verifier §9.
- j = 2: grid max 2.00750 at (2.356, 2.356, π, π); NM 2.008569 at (2.2151, 2.2151, π, π). Best point off the face (K_3 or K_4 < 3.0): 1.9946. Run 166 s.
- j = ∞ (lmax 2): grid max 2.06366 at (2.356, 2.356, π, π); NM 2.063769 at (2.4035, 2.4035, π, π); lmax 3: 2.063482; lmax 5: 2.063361. Best off the face: 2.0036. Run 234 s.
Author's table (2.00857 at 2.215; 2.06377 / 2.06336 at 2.403) reproduced to 10^{−5}. Argmax on the face K_3 = K_4 = π, diagonal K_1 = K_2, moving 2.22 → 2.40 with j. CONFIRMED. Margin to 3: 1 − 2.0638/3 = 31.2%. q_1 = 0.4733, q_2 = 0.0526. CONFIRMED.
Still a lower estimate of the sup (grid + local search), and j = 4..∞−1 not sampled. Same caveats as the author.

## 5. G1: what a rigorous (H2) needs

(a) Large j. Theorem O5 gives ‖Δ_M − Δ_∞‖ ≤ C M^{−2} uniformly in K. Then ‖H_j − H_∞‖ ≤ ‖b_0^{(j)}‖‖b_0^{(∞)}‖‖𝔨_0^{(j)} − 𝔨_0^{(∞)}‖ ≤ B² C L^{−2(j−1)}, and ‖H_(2),j − H_(2),∞‖ ≤ L ρ_1 (‖H_{j−1} − H_∞‖ + ‖H_j − H_∞‖)-type bound. Margin in ‖H_(2)‖ is (3 − 2.064)L² ≈ 8.4. With the O6 constant B = b(L) (a ≥ 2.3·10^{−10}L^{−20}, so b ~ 10^{19} at L = 3) one needs j ≳ 45 before the tail closes, and finite M = 3^{44} cannot be evaluated directly. With a certified numerical ‖𝔅^{−1}‖ ≲ 2·10² (measured 195 at the corner) one needs only L^{−2j} ≲ 10^{−5}·C^{−1}, i.e. j ≳ 6–8. So the practical route is: certify ‖𝔅_j(K)^{−1}‖ ≤ B_num for all K and j (itself a G1-type task), then certify ρ_2 at j = 2, …, j_0 and at ∞, and use O5 for j > j_0.
(b) Each finite j and j = ∞: a certified sup over K of a 4L⁸ × 4 matrix norm. Needs interval/Taylor-model evaluation of the bordered solve plus branch-and-bound in K (4D, reduced by hypercubic symmetry), with local Lipschitz constants from (U2) built on B_num, not on b(L). For j = ∞ also a certified tail bound for the Prop. A sum (lmax truncation; observed effect 4·10^{−4}).
(c) The C(L) of O5 must be explicit. O5's numerical rate check (M^{−2}, U3_REPAIRS O5 numerics) is not a constant.
Verdict: G1 is correctly stated by the author but understated in size. It is a computer-assisted proof project, not a check. The author's own text ("A certified bound needs a Lipschitz constant ... O6 constant useless") agrees.

## 6. Grades

1. Two-step map and recursions (1.3)–(1.5), L^{−8} factor ρ_2²/L⁴, source kinds: CONFIRMED. ∂σ^{(1)} enters linearly with no second σ^{(1)} factor ("at most one more" is a harmless overstatement).
2. Obstruction = one-step C¹ factor ρ_1²/L = 1.005–1.033; L^{−1} at K = 0; bad region on the face: CONFIRMED (one-step argmax K_1 = K_2 = 1.86–1.92 over j = 2..∞; "≈ 1.9" fine).
3. Theorems C1 and B2 conditional on (H2): CONFIRMED. Chain-rule factor L^{−2} per two steps is exact; threshold ρ_2 < L, not √(L²−1), because no strip-Cauchy loss enters on real K.
4. (H2) plain operator norm, weaker than (H″) n = 2: CONFIRMED.
5. Numerics: CONFIRMED. Independent random + face search reproduces 2.00857 (j = 2), 2.05599 (j = 3 spot), 2.06377/2.06336 (j = ∞, lmax 2/5); argmax on face diagonal; margin 31%; q_1 ≤ 0.473, q_2 ≤ 0.053. Off-face best 1.995 (j = 2), 2.004 (j = ∞).
6. G1 (certification): CORRECTED in size. Needs certified ‖𝔅^{−1}‖ (O6 b(L) ~ 10^{19} is unusable), explicit O5 constant, certified sup over K at j = 2..j_0 ≈ 8 and ∞, and Prop. A tail bound.
7. G2 (L ≥ 5 untested): CONFIRMED as open.
8. G3 (form of Q_j): CONFIRMED by read-off of U3_AW (1.2)/(3.3) and P10; (3.3) itself not re-derived from the Moyal rule by either party.
