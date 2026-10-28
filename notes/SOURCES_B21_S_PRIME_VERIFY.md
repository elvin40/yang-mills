# SOURCES_B21_S_PRIME — independent verification

Started 2026-10-28. Firewall respected.

## 1. Task (a): the three inequalities at D4D5 l. 145
Read l. 102–145. The derivation line (l. 145) is verbatim as quoted by the author. Step 6 (l. 120) counts "≤ 1 + log_L(2M/σ)" coarse scales. Step 7 (l. 122) uses log(a + b) ≤ log a + log(1 + b) with "(a ≥ 1)", a = g^{−2} + C_β log_L(2M/σ).
Check of the failure mechanism, as printed:
- (i) LHS = 1 − log_L(σ/2M) for σ > 2M. It reaches 0 at σ = 2ML and is negative beyond. So sup_{σ ≥ 2M} σ^a·LHS ≤ (2ML)^a. As printed, (i) holds with an ℓ-free C_a. The author's "C_a ≥ (ℓ/8)^a·(LHS at σ ~ 2M)" is wrong: it pairs σ = ℓ/8 with the LHS value at σ = 2M.
- The real defect is upstream: Lemma C's factor is ≤ 0 for σ ≥ 2ML, so Lemma C as printed is false there (κ_n need not vanish). After the correct count 1 + log_L⁺ (= 1 for σ ≥ 2M), (i) needs C_a ≥ (ℓ/8)^a. Then the author's ℓ^a statement holds.
- (iii) Same pattern. Λ_1 decreases to 0 at σ_0 := 2M·L^{(g^{−2}−1)/C_β} and is undefined or ≤ 0 beyond. σ_0 does not depend on ℓ. So sup over [2M, min(ℓ/8, σ_0)] of σ^aΛ_1⁴ ≤ σ_0^a(log g^{−2})^{4p_R}: ℓ-free but of size L^{a(g^{−2}−1)/C_β}. The ℓ^a appears only after Λ_1 is replaced by the correct non-decaying Λ_1(min(σ, 2M)).
- (ii) Correct as stated: C_a′ ≥ sup σ^a = (ℓ/8)^a. Independent of (i). It fails for σ > 1 (with C_a′ ≥ 1 normalisation).
- Λ_1 validity range σ < σ_0 and Step 7's a ≥ 1 failure beyond σ_0: CONFIRMED.
- Step 6 count = 0 for σ > 2M (λ_m ≤ 1 ⇒ 2Mλ_m ≤ 2M < σ): CONFIRMED.
Grade (1): CORRECTED. The conclusion stands (no ℓ-free C_S for σ^{−a} from a correct Lemma C on [2M, ℓ/8]). The mechanism for (i), (iii) is "Lemma C is false/undefined for σ ≥ 2ML resp. σ ≥ σ_0", not "C_a ∝ ℓ^a" from the printed LHS.

## 2. Task (b): Steps 6–7 at σ > 2M, absorption, C_S′
- Step 7 is l. 121 (author cites 122; cosmetic).
- σ > 2M, λ_m = εL^m ≤ 1: u = σ/(2Mλ_m) ≥ σ/2M > 1; log_L(1/λ_m) = log_L u − log_L(σ/2M) ≤ log_L u. CONFIRMED.
- Where g ≤ 1 enters: the split log(g^{−2} + b) ≤ log g^{−2} + log(1 + b) needs g^{−2} ≥ 1; also x = log g^{−2} ≥ 0 is needed for (x + y)^q ≤ 2^q(x^q + y^q) with non-integer q = 4p_Rn... and for Λ_* to be defined. S1's hypotheses give g = g_K ≤ γ < 1, so this holds. CONFIRMED.
- u-values u_K = σ/2M ≥ 1, ratio L: Σ u⁴e^{−3κu/8} ≤ C and ℓ_2(u)^{4p_Rn}e^{−κu/8} ≤ ℓ_2(n)^{4p_Rn} use only u ≥ 1. CONFIRMED. Q_m ≤ (2 + 2uD/σ)⁴ ≤ (2 + 2D/σ)⁴u⁴ for u ≥ 1: CONFIRMED.
- Lemma C′ for σ ≤ 2M = Lemma C verbatim (log_L ≥ 0, Λ_1 argument ≥ g^{−2} ≥ 1). CONFIRMED.
- (S′) absorption: Lemma C′ ⇒ |κ_n| ≤ 16C_AC_1m·(C_BC_2C_ηm)^n(n!)^{1+η}ΠN. With 16C_AC_1 ≥ 1 and n ≥ 1, 16C_AC_1 ≤ (16C_AC_1)^n. m ≥ 1, n + 1 ≤ 2n ⇒ m^{n+1} ≤ m^{2n} = max(1, σ^{−a/2})^{2n} = max(1, σ^{−a})^n. CONFIRMED. C_S′ = 16C_AC_1C_BC_2C_η CONFIRMED, with one cosmetic fix: C_2 should be sup of max(1, Λ̃_1⁴)/m, because Lemma C's bracket is Λ⁴ⁿ + ℓ_2(n)^{4p_Rn} and Λ_* → 0 as g → 1.
- C_1, C_2 sups finite and ℓ-free: CONFIRMED (σ ≥ 1 and σ < 1 cases as written; [1, 2M] uses M ≥ 1/2).
- Caveat on "printed (S) on σ > 1 is not derivable with ℓ-free C_S": overstated. It is not derivable from Lemma C. A polymer meeting n pairwise σ-separated supports has tree length ≳ (n − 1)σ/(2Mλ_m). Reserving part of κ would then give a factor e^{−c(n−1)σ/M} ≤ (C_aσ^{−a})^{n−1}, which is the decaying shape. [I, not checked; not needed by any consumer, §5.]
