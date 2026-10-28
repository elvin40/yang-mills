# THM310_FULL independent verification (2026-10-28)

Firewall respected: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md, no ONLINE_SWEEP.md.

## V1. Lemma DI identity redone [task (b), (a)(i)]
Setting: A, B are the restricted operators (P_A H_A P_A on V_A, P_B H_B P_B on V_B), extended by 0. Then X_A A = P_A and B X_B = P_B. So X_A (A P_B − P_A B) X_B = P_A X_B − X_A P_B, and X_A − X_B = X_A(1 − P_B) − X_A(AP_B − P_AB)X_B − (1 − P_A)X_B. This is (6.2) with P_AAP_B − P_ABP_B = AP_B − P_AB. CONFIRMED.
Caveat: the identity is false if "A" in the middle factor is read as the full-space H_A (an extra boundary term X_A P_A H_A(1 − P_A)P_B X_B appears). The file must say "A, B restricted and extended by 0". The middle kernel is nonzero only where H_A ≠ H_B on Ω_A ∩ Ω_B or where one argument touches Ω_A △ Ω_B (range 1). So Z = 1-neighbourhood is right.
Bound (6.2.2): exponent split (1 − θ)·[d(y,z)+d(z,Z)+d(Z,z′)+d(z′,y′)] + θ[d(y,z)+d(z′,y′)] gives c_1(θ)² and rate (1 − θ)δ p_Z. Edge terms: y′ ∈ Ω_A∖Ω_B ⊂ Z gives p_Z(y,y′) = d(y,Z) ≤ d(y,y′). CONFIRMED. Scale factors (b = B_0ξ_n²) mix two levels; the conversion of 3.1 is needed at each junction, as in 4.3. Minor.
