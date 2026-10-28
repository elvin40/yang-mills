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

## 3. Task (c), (e) for N1: ladder top rung and rung sum
- ASSEMBLY_N1 §4.4 [V, l. 110–120]: per tuple σ = σ_m = δ_m/4; per-scale sum for 4 ≤ m ≤ m_1, δ_m = ℓ2^{−m}; separate scale m = 3 term with (ℓ/32)^{−an}. So the top rung is m = 3, δ_3 = ℓ/8, σ_3 = ℓ/32. CONFIRMED. The bottom rung is σ ≈ 16ε (region ρ < 128ε handled without (S), §4.5). CONFIRMED.
- Rung sum with (S′): σ_m^{−an} → max(1, σ_m^{−a})^n. Rungs δ_m ≤ 4 unchanged: δ_m^{(1−a)n}. Rungs δ_m > 4: the factor 4^{an}δ_m^{−an} is replaced by 1, so δ_m^{N−5n} = δ_m^n. The sum over m ≥ 4 of δ_m^n is geometric, ≤ 2(ℓ/16)^n ≤ 2max(1, ℓ)^n. The printed bound already carries max(1, ℓ)^n (l. 119). Scale m = 3: (ℓ/32)^{−an} → 1. So the non-decaying bound does not break the sum: the δ-exponent stays positive, the small-δ end converges as before, and the large-δ end is cut at ℓ/8. CONFIRMED: Theorem N1 keeps its form on a fixed torus.
- One small point: with (S′) the ℓ-dependence moves from C_S (∝ ℓ^a, hidden) to the explicit max(1, ℓ)^n, as the author says. A_η stays ℓ-dependent in N1 anyway (C_1 carries max(1, ℓ)⁴). Fine for fixed ℓ.

## 4. Task (c) for N1-B, (d), (e) for N1-B and IV12 §4.4
- N1-B ladder [V, IV12 §3.1 (1)]: δ_m = 2d_B2^{−m}, sum from m = 1 (FΦ_0 = 0). Top rung δ_1 = d_B, σ_1 = d_B/4. IV12's "σ_m ≤ d_B/2" is an upper bound (δ_0/4). The author's range [16ε, d_B/2] is a valid bound; the actual top rung is d_B/4. Cosmetic.
- D in N1-B = 6h_m = 6δ_m/64 = (3/8)σ_m. CONFIRMED.
- (d) σ′ = min(σ, 2M) fix: Lemma C at σ′ carries (1 + D/σ′)⁴ = (1 + D/2M)⁴ for σ > 2M. With only D ≤ σ ≤ ℓ/8 this is up to (1 + ℓ/16M)⁴. CONFIRMED: ℓ-free only if D ≤ C·M (any fixed C, not only 2M). Refinement: the factor is one (1 + D/2M)⁴ per cumulant, not to the power n. In N1-B it would add ≤ 4 to q via the Lah blocks (≤ n blocks). So the σ′ fix would also suffice for N1-B's polynomial target; it fails only as an ℓ-free statement of (S′) for general D ≤ σ. Lemma C′ is cleaner. The author says the same.
- IV12_VERIFY §7 [V]: proposes the σ′ fix and states (S′) "C_S ℓ-free" without D ≤ CM. So that line needs the D caveat or Lemma C′. CONFIRMED.
- (e) N1-B scale sum with (S′): rungs δ_m > 4 carry δ_m^{N−5n}; IV12_VERIFY §8 (4) already did this recount (q ≈ 6, q ≤ 12 valid). The δ-exponent stays ≥ 0 and δ_m ≤ d_B, so the non-decaying bound does not break the sum. CONFIRMED.
- IV12 §4.4 [V]: (L1) is stated for σ ∈ [16ε, 1]; "Lemma N1-B is otherwise unchanged" ignores rungs with σ_m > 1. The min(σ, 1) step is correct (separation is monotone). Where the cube count (2 + 2D/σ″)⁴ appears in (L3): it must stay outside the exponent. It does, because the Cauchy radii ρ_i ∝ 1/(1 + |supp f_i|_1) already absorb a per-support count ≥ c(D/σ″)⁴ at σ″ = 1. The author does not spell this out. [I, plausible; not checked line by line.]
- No consumer found that needs a decaying σ^{−a} for σ > 1. E14C uses σ = 16ε (bottom rung).

## 5. Grades
(1) CORRECTED. Inequalities and ranges verbatim. Lemma C is false/undefined beyond σ = 2ML (Step 6 factor ≤ 0) and σ_0 = 2M·L^{(g^{−2}−1)/C_β} (Λ_1). As printed, (i) and (iii) hold with ℓ-free (huge) C_a where defined; the ℓ^a appears once Lemma C is corrected to non-decaying left sides. (ii) fails for σ > 1 as stated. Step 6 count 0 for σ > 2M: confirmed.
(2) CONFIRMED. Steps 6–7 at σ > 2M are correct; g ≤ 1 enters at the split log(g^{−2} + b) ≤ log g^{−2} + log(1 + b) and makes Λ_* ≥ 0; S1 gives g ≤ γ < 1. Absorption m^{n+1} ≤ m^{2n} correct. C_S′ = 16C_AC_1C_BC_2C_η correct (take C_2 as a sup of max(1, Λ̃_1⁴)/m). Overstatement: "printed (S) on σ > 1 not derivable with ℓ-free C_S" holds only for Lemma C's route; reserved tree-length decay would plausibly give it [I].
(3) CONFIRMED. N1 top rung ℓ/32 (m = 3). N1-B top rung is d_B/4 (author's d_B/2 is a bound). (S′) = (S) on σ ≤ 1. N1 and N1-B keep their forms.
(4) CONFIRMED with refinement: ℓ-free for D ≤ C·M; one factor per cumulant; it would still suffice for N1-B's polynomial target.
(S′) status: PROVED relative to Lemma C's inputs (S1(b), (FX) with ℓ-free constants, ℓ-free trajectory g).
