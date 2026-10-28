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

