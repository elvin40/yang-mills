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

