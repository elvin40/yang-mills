IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_B21_S_PRIME — the ℓ-free form (S′) of the cumulant bound

Date 2026-10-28. Task: locate the ℓ-dependence in Lemma C ⇒ (S), state (S′) with an ℓ-free constant, check every consumer.
Firewall: no read of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.
Tags: [P] proved here, [V] read verbatim in a project file, [I] inferred, [R] reduced to a named input.
This file edits no other file.

## Ledger (appended per section)

| § | content | tag |
|---|---|---|
| 1 | the failing inequalities in D4D5 §5.1 | [V] + [P] |
| 2 | Lemma C′ (Steps 6–7 redone for σ > 2M) and (S′) | [P] rel. Lemma C inputs; g ℓ-free [R] |
| 3 | consumers: N1 (finite ℓ), σ = 16ε end, N1-B, E14C, IV12 §4.4 | [V] + [P]; one [I] |
| 4 | verdict and list of files to change | [P] rel. inputs |

## 1. The exact inequalities that fail [V: SOURCES_D4D5 l. 103–106, 120–122, 142–145]

Lemma C (D4D5 §4.1) gives, for σ > ε, D := min_i diam supp f_i:
  |κ_n| ≤ C_A (1 + D/σ)⁴ (1 + log_L(2M/σ)) (C_B Λ_1(σ)⁴)^n C_η^n (n!)^{1+η} Π N(f_i),
  Λ_1(σ) := (log(g^{−2} + C_β log_L(2M/σ)))^{p_R}.
D4D5 §5.1 passes to (S) on σ ∈ [16ε, ℓ/8] with three inequalities [V, l. 145]:
  (i)   (1 + log_L(2M/σ)) ≤ C_a σ^{−a};
  (ii)  C_a σ^{−a} ≤ (C_a′ σ^{−a})^n for n ≥ 2;
  (iii) Λ_1(σ)⁴ ≤ C_a σ^{−a}.
B21_S §3 repeats (i) and (iii) in its factor table [V].

Where each fails to be ℓ-free [P]:
- (i). For σ ≤ 2M the left side is ≥ 1 and ≤ 1 + log_L(2M/σ). It is ≤ C_aσ^{−a} with C_a = C_a(a, M, L) on σ ∈ ]0, 2M]. For σ ∈ [2M, ℓ/8] the left side is ≤ 1 (it is even negative for σ > 2ML), but the right side C_aσ^{−a} → 0 as σ → ∞. The inequality needs C_a ≥ (ℓ/8)^a·(left side at σ ~ 2M). So C_a ∝ ℓ^a.
- (ii). It needs C_a′σ^{−a} ≥ 1, i.e. C_a′ ≥ σ^a. On σ ≤ ℓ/8 that is C_a′ ≥ (ℓ/8)^a. Same ℓ^a. This one is independent of (i): it fails even if the left side of (i) were ≤ σ^{−a}.
- (iii). Λ_1(σ) is decreasing in σ. At σ = 2M it equals (log g^{−2})^{p_R} > 0 (g < 1). It does not decay. So Λ_1(σ)⁴ ≤ C_aσ^{−a} on [2M, ℓ/8] forces C_a ≥ (ℓ/8)^a (log g^{−2})^{4p_R}. Worse: for σ ≥ 2M·L^{(g^{−2}−1)/C_β}, g^{−2} + C_β log_L(2M/σ) ≤ 1 and Λ_1(σ) is ≤ 0 or undefined. Step 7's split log(a + b) ≤ log a + log(1 + b) needs a = g^{−2} + C_β log_L(2M/σ) ≥ 1 [V, l. 122], which fails there.
- Step 6 itself [V, l. 120] counts "≤ 1 + log_L(2M/σ)" coarse scales. For σ > 2M there are no coarse scales: λ_m ≤ 1 gives 2Mλ_m ≤ 2M < σ. So the count is 0, and the printed factor (possibly < 1 or negative) is the wrong expression there, though harmless as an upper bound only if read as max(1, ·).

Summary of §1. (i) and (iii) fail to be ℓ-free only for σ ≫ 2M (left side O(1), right side → 0). (ii) fails for σ > 1. On σ ≤ 1 all three hold with C_a = C_a(a, M, L, g, p_R, C_β), ℓ-free. The defect is the printed range "σ ≤ ℓ/8" combined with the pure power σ^{−a}. The left sides never grow with σ: there is no log(σ/M) growth, so no (1 + log(σ/M))^{bn} factor is needed (§2).

## 2. Lemma C′ and (S′) [P, relative to Lemma C's inputs]

### 2.1 Why the substitution σ′ := min(σ, 2M) is not enough [P]
IV12_VERIFY §7 proposes: apply Lemma C at σ′ = min(σ, 2M), since separation ≥ σ implies separation ≥ σ′. This fixes (i) and (iii). But Lemma C at σ′ carries (1 + D/σ′)⁴, and (S)'s side condition is D ≤ σ, not D ≤ σ′. For σ > 2M and D ~ σ this gives (1 + σ/2M)⁴, which grows like σ⁴ and so like ℓ⁴ in the worst case. The substitution is ℓ-free only under D ≤ 2M. The clean fix is to redo Steps 6–7 at the true σ.

### 2.2 Steps 6–7 redone for σ > 2M [P]
Let σ > 2M. Then every scale is fine: λ_m ≤ 1 gives 2Mλ_m ≤ 2M < σ. Step 6 is empty (0 coarse scales).
Step 7 at scale m: u := σ/(2Mλ_m) ≥ σ/(2M) > 1, s_m ≥ u.
- Cube count. Q_m ≤ (2 + D/(Mλ_m))⁴ = (2 + 2uD/σ)⁴ ≤ (2 + 2D/σ)⁴ u⁴, since u ≥ 1. Unchanged from D4D5 l. 122.
- Coupling. log_L(1/λ_m) = log_L u − log_L(σ/2M) ≤ log_L u. Step 5 gives g_m^{−2} ≤ g^{−2} + C_β log_L u. With a := g^{−2} ≥ 1 (g ≤ 1) the split log(a + b) ≤ log a + log(1 + b) is valid. So
  R̄_m^{4n} ≤ (100MC_R)^{4n} 2^{4p_Rn} [Λ_*^{4n} + ℓ_2(u)^{4p_Rn}],  Λ_* := (log g^{−2})^{p_R} = Λ_1(2M).
- Sum over m. The u-values are a geometric sequence u_0L^i with u_0 ≥ 1. The two bounds of D4D5 Step 7 used only u ≥ 1: ℓ_2(u)^{4p_Rn}e^{−κu/8} ≤ ℓ_2(n)^{4p_Rn} and Σ_i u_i⁴e^{−3κu_i/8} ≤ C. Both hold.
Result: fine sum ≤ C E_0 (2 + 2D/σ)⁴ C_7^n n! [Λ_*^{4n} + ℓ_2(n)^{4p_Rn}]. Step 8 (ℓ_2(n) ≤ C_η(n!)^η) and Step 9 (W) are unchanged.
Remark [I, not needed]. The decay e^{−κs_m/2} was fully spent (κ/8 + 3κ/8). Reserving part of κ would give an extra factor e^{−cσ/M} for σ > 2M. No consumer needs it.

### 2.3 Lemma C′ [P]
Under the hypotheses of Lemma C (σ > ε, any σ, no upper limit),
  |κ_n| ≤ C_A (1 + D/σ)⁴ (1 + log_L⁺(2M/σ)) (C_B Λ̃_1(σ)⁴)^n C_η^n (n!)^{1+η} Π N(f_i),
  log_L⁺ := max(0, log_L),  Λ̃_1(σ) := Λ_1(min(σ, 2M)),
with the same C_A, C_B, C_η as Lemma C (up to a factor 2^{4p_R} already present). For σ ≤ 2M this is Lemma C verbatim.

### 2.4 (S′) [P from Lemma C′]
(S′) For every η > 0 and a > 0 there is C_S′ = C_S′(η, a) < ∞, independent of K and of ℓ, such that for all K, n ≥ 2, σ ≥ 16ε, and real f_i ∈ C¹ with pairwise dist(supp f_i, supp f_j) ≥ σ and min_i diam supp f_i ≤ σ:
  |κ_n(f_1, …, f_n)| ≤ (C_S′ max(1, σ^{−a}))^n (n!)^{1+η} Π_i N(f_i).
Derivation. Put a′ := a/2 and m(σ) := max(1, σ^{−a′}) ≥ 1.
- (1 + D/σ)⁴ ≤ 16.
- (1 + log_L⁺(2M/σ)) ≤ C_1 m(σ), C_1 := sup_{σ>0} (1 + log_L⁺(2M/σ))/m(σ) < ∞. For σ ≥ 1 the ratio is ≤ 1 + log_L⁺(2M). For σ < 1 it is σ^{a′}(1 + log_L⁺(2M/σ)), bounded. C_1 = C_1(a, M, L).
- Λ̃_1(σ)⁴ ≤ C_2 m(σ), C_2 := sup_σ Λ̃_1(σ)⁴/m(σ). For σ ≥ 2M it is Λ_*⁴. For σ ∈ [1, 2M] it is ≤ Λ_1(1)⁴. For σ < 1 it is (log(g^{−2} + C_β log_L(2M/σ)))^{4p_R}σ^{a′}, bounded. C_2 = C_2(a, g, p_R, C_β, M, L).
- Collect: |κ_n| ≤ 16 C_A C_1 m · (C_B C_2 C_η m)^n (n!)^{1+η} ΠN ≤ (16C_AC_1C_BC_2C_η)^n m^{n+1} (n!)^{1+η} ΠN (constants ≥ 1, n ≥ 1). Since m ≥ 1 and n + 1 ≤ 2n: m^{n+1} ≤ m^{2n} = max(1, σ^{−a})^n.
So C_S′ := 16 C_A C_1 C_B C_2 C_η. It contains no ℓ and no K.
ℓ-freeness of the inputs [R]: C_A, C_B depend on E_0, κ, c_0, c_τ, M, C_R, p_R, L; C_2 on g = g_K (unit-scale coupling). These are ℓ-free if (FX) and S1 hold with ℓ-free constants (IV12_VERIFY §13 item (i): "(FX) with all constants ℓ-free") and if the trajectory g is ℓ-free (IV12 Lemma IV-1). No volume factor enters Lemma C: Steps 1–9 sum local polymer activities; |log Z − W| ≤ E_+|T_η| is not used (IV12 §2.4, IV12_VERIFY §7).

Relation to (S). On σ ≤ 1, (S′) is (S) with C_S′ in place of C_S. On σ > 1, (S′) is weaker than the printed (S) by the factor σ^{an}; the printed (S) on σ > 1 is not derivable with ℓ-free C_S (§1).
The upper limit σ ≤ ℓ/8 is dropped; it is not needed by Lemma C′.

## 3. Consumers: which σ each one uses, and what it receives

Correction to the brief's premise [V, ASSEMBLY_N1 §3.3, §4.4; IV12 §3.1 step (2)]. The bridge does NOT use only σ = 16ε. It uses the whole ladder σ_m = δ_m/4. In N1 (finite torus) δ_m = ℓ2^{−m}, m ≥ 3, so σ_m ∈ [16ε, ℓ/32]. In N1-B δ_m = 2d_B2^{−m}, m ≥ 1, so σ_m ∈ [16ε, d_B/2]. σ = 16ε is only the bottom rung. The top rungs have σ ≫ 2M as soon as ℓ (resp. d_B) ≫ M. So (S′) matters inside the bridge itself, not only in the moment route.

### 3.1 ASSEMBLY_N1 (finite ℓ) [P, bookkeeping on N1 §4.4]
Receives: per tuple, σ_m^{−an} is replaced by max(1, σ_m^{−a})^n.
Scale sum with N = 6n: rungs with σ_m ≤ 1 (δ_m ≤ 4) give δ_m^{(1−a)n}·4^{an}; rungs with δ_m > 4 give δ_m^{N−5n} = δ_m^{n} ≤ (ℓ/8)^n. Total ≤ C^n max(1, ℓ)^n. N1 already carries max(1, ℓ)^n here [V, l. 118]. Scale m = 3: the printed factor (ℓ/32)^{−an} becomes 1. That small factor was the place where the printed (S) hid C_S ∝ ℓ^a; with (S′) it is absent and C_S′ is ℓ-free. Net effect on Theorem N1: same form, A_η changes by a factor C^n·ℓ^{an} at most. s = 6 and D > 1 unchanged. Theorem N1 on a fixed torus is unaffected.

### 3.2 The σ = 16ε end (bridge bottom rungs, E14C §3.2) [P]
For σ ≤ 1, max(1, σ^{−a}) = σ^{−a}. So (S′) = (S) on [16ε, 1], with C_S′ in place of C_S. At σ = 16ε: Lemma C′ = Lemma C (σ ≤ 2M), Step 0 needs σ > ε only, D4D5 §4.2's bound C^nΛ_1(16ε)^{4n}(n!)^{1+η} is unchanged. Confirmed: nothing changes at the bottom of the ladder. The fallback σ ≥ ε^θ (B21_S §1) is unaffected.

### 3.3 Lemma N1-B (IV12 §3.1) [P; agrees with IV12_VERIFY §8(4)]
Hypothesis "(S) with constants that do not depend on ℓ" must read (S′): the printed (S) on σ ≤ d_B/2 ≤ ℓ/8 has no ℓ-free constant (§1). With (S′): rungs δ_m ≤ 4 give δ_m^{(1−a)n}; rungs δ_m > 4 give δ_m^{n} (crude count) instead of δ_m^{(1−a)n}. The scale sum is ≤ C^n(2d_B)^n in place of (2d_B)^{(1−a)n}. The crude exponent count already books "scale sum 1", so q ≤ 12 stands. The sharper q ≈ 6 of IV12_VERIFY §8(4) used (S′) already. Lemma C′ (not the σ′ = min(σ, 2M) substitution) is what keeps the crude count clean: in N1-B, D = 6h_m = (3/8)σ_m, so at top rungs D ≫ 2M, and the substitution would add (1 + D/2M)^{4} ≤ C(1 + d_B)^4 per cumulant block (§2.1). That would still be polynomial in d_B but is not needed.
Receives: A_B ≤ C(1 + d_B)^q, q ≤ 12, C ℓ-free. This is the (H-U∞) input.

### 3.4 SOURCES_B21_E14C §2.3 [V + P]
Its C_S(η, a) formula uses "For σ ≤ ℓ/8 … Λ_1(σ)⁴ ≤ C_{a,1}σ^{−a/2} and 1 + log_L(2M/σ) ≤ C_{a,2}σ^{−a/2}" [V]. Same defect as §1 (i), (iii). Fix: define C_{a,1}, C_{a,2} as sups of the ratios to max(1, σ^{−a/2}) over σ > 0, using Lemma C′. The formula C_S = 2·4C_A^{1/2}·C_B·C_{a,1}·C_{a,2}·C_η then gives C_S′ (S′), ℓ-free. Its consumed content (multi-index (1, …, 1) at t = 0, real separated sources) is unchanged.

### 3.5 (H-U) [P]
(H-U) on a fixed torus = Theorem N1: unchanged (§3.1). (H-U∞) with ℓ-free constants = N1-B with (S′) (§3.3). The OS growth condition needs fixed s and A, D; both hold.

### 3.6 Infinite-volume moment route, IV12 §4.4 [V + P; one I]
(L1) is stated for σ ∈ [16ε, 1] [V]. It does not use Lemma C. (L3) uses Lemma C Step 9 with the factor (1 + log_L(2M/σ)) [V]. The route feeds N1-B, whose ladder reaches σ_m ~ d_B/2 ≫ 1 (§3 preamble). IV12 §4.4 says "Lemma N1-B is otherwise unchanged" and does not address rungs with σ_m > 1.
Fix [P]: separation ≥ σ implies separation ≥ min(σ, 1). Apply (L1) and (L3) at σ″ := min(σ, 1). Then the bound is e^{Cn(1 + log_L(2M))}Π(cr)^{−1}N(f_i)(1 + |supp f_i|_1): a constant per factor, i.e. the (S′) shape max(1, σ^{−a′})^n. For (L3), Step 9 at σ″ carries the cube count (2 + 2D/σ″)⁴ of Step 4; with crude N1-B cells (D = 3σ/8 up to 3d_B/16) this is ≤ C(1 + d_B)⁴ per support, polynomial in d_B. With the sharper N1-B cells (side ≤ 1/64 at δ_m > 1) D ≤ 6/64 and the factor is ≤ C. Either way s stays ⌈5 + a′⌉ + 1 and A_B stays polynomial in d_B. [P given (L1); (L1) itself remains I as in IV12.]
Where (S′) matters here: exactly at σ ~ diam B. What this route receives: (S′)-shaped moment bounds, constant in σ for σ ≥ 1.
Caveat [I]: the (1 + |supp f_i|_1) factor of (L1) with crude cells of side h_m = δ_m/64 ≫ 1 is ≤ C(1 + d_B)^4 per factor. It adds ≤ 4 to q. Not checked beyond this count.

## 4. Verdict and files to change

### 4.1 Verdict [P relative to Lemma C's inputs]
- The ℓ-dependence is in D4D5 §5.1 l. 145, inequalities (i)–(iii) of §1 above, on σ > 1 (ii) and σ ≫ 2M ((i), (iii)). The left sides are O(1) there and never grow; they do not grow like log(σ/M). So no (1 + log_L(σ/M))^{bn} factor is needed. Λ_1(σ) is undefined for σ ≥ 2M·L^{(g^{−2}−1)/C_β}, and Step 6's scale count is 0 for σ > 2M.
- Lemma C′ (§2.3): Lemma C with log_L⁺ and Λ̃_1(σ) = Λ_1(min(σ, 2M)), valid for every σ > ε. Proof: Steps 6–7 redone at the true σ; same constants.
- (S′) (§2.4): |κ_n| ≤ (C_S′ max(1, σ^{−a}))^n (n!)^{1+η} Π N(f_i) for σ ≥ 16ε, D ≤ σ, no upper limit on σ. C_S′ = 16C_AC_1C_BC_2C_η with C_1 = C_1(a, M, L), C_2 = C_2(a, g, p_R, C_β, M, L). PROVED relative to Lemma C's inputs: S1(b) and (FX) with ℓ-free constants [R, IV12_VERIFY §13 (i)], and the ℓ-free trajectory g [R, IV12 Lemma IV-1].
- The σ′ = min(σ, 2M) fix of IV12_VERIFY §7 is correct only when D ≤ 2M; otherwise it brings (1 + D/2M)⁴ (§2.1). Lemma C′ avoids this.
- Consumers: σ = 16ε end unchanged ((S′) = (S) on σ ≤ 1). N1 on a fixed torus unchanged in form. N1-B needs (S′) at its top rungs σ_m ~ d_B/2; q ≤ 12 stands. E14C §2.3's C_S becomes C_S′ with sups over σ > 0. IV12 §4.4 needs the min(σ, 1) step for rungs σ_m > 1 (§3.6).

### 4.2 Files whose text should change (not applied)
1. SOURCES_B21_S §1 (statement of (S): range σ ∈ [16ε, ℓ/8], σ^{−a}) and §3 table rows "Λ_1(σ)^{4n}" and "(1 + log_L(2M/σ))": replace σ^{−a} by max(1, σ^{−a}), drop the upper limit ℓ/8, cite Lemma C′. Also §4 bullet "σ = 16ε … absorbed into σ^{−a}": fine as is (σ ≤ 1).
2. SOURCES_D4D5 §5.1: statement → (S′); derivation line l. 145 → the §2.4 derivation here (a′ = a/2, sups over σ > 0). §4.1: add Lemma C′ (log⁺, Λ_1(min(σ, 2M))) or restrict Lemma C to σ ≤ 2M. §4.3 last bullet "For D ≤ σ both are ≤ C_aσ^{−a}": add "for σ ≤ 1; max(1, σ^{−a}) in general".
3. ASSEMBLY_N1 §1: statement → (S′); item 2 (C_aδ^{−a}) → max(1, δ^{−a}); item 4 (stale ℓ⁴ volume factor, already flagged in IV12_VERIFY §8) → "no volume factor; C_S′ ℓ-free given (FX), S1 ℓ-free (Lemma C′)". §4.4: note that rungs δ_m > 4 carry δ_m^{n} instead of δ_m^{(1−a)n}; the bound max(1, ℓ)^n is unchanged.
4. SOURCES_B21_E14C §2.3: C_{a,1}, C_{a,2} as sups of ratios to max(1, σ^{−a/2}) over σ > 0.
5. INFINITE_VOLUME_IV12 §3.1: hypothesis "(S) with ℓ-free constants" → "(S′)"; §4.4: add the min(σ, 1) step for rungs σ_m > 1 (§3.6 here).
6. INFINITE_VOLUME_IV12_VERIFY §7: the σ′ = min(σ, 2M) fix needs D ≤ 2M; point to Lemma C′.

Status: [derived here, unverified]. Verifier targets: (a) §2.2 Step 7 at σ > 2M (the bound log_L(1/λ_m) ≤ log_L u and the use of a = g^{−2} ≥ 1, i.e. g ≤ 1); (b) §2.4 the m^{n+1} ≤ m^{2n} absorption; (c) §3 premise that N1 and N1-B use σ_m up to ℓ/32 resp. d_B/2.

Corrections after verification (SOURCES_B21_S_PRIME_VERIFY, 2026-10-28): the three inequalities match the source; as printed, (i) and (iii) hold with an ℓ-free (very large) C_a where defined — the real defect is in Lemma C itself: FALSE for σ ≥ 2ML (Step 6 factor ≤ 0) and undefined for σ ≥ σ_0 = 2M·L^{(g^{−2}−1)/C_β}; the ℓ^a appears only after correcting the left sides to non-decaying values; (ii) fails for σ > 1 as stated. Steps 6–7 at σ > 2M confirmed (g ≤ 1 enters at log(g^{−2} + b) ≤ log g^{−2} + log(1 + b), supplied by S1 via g ≤ γ < 1); C_S′ ℓ-free with C_2 := sup max(1, Λ̃_1⁴)/m. "The printed (S) cannot hold for σ > 1" is too strong (applies to the Lemma C route only). The N1 top rung is ℓ/32; N1-B's is d_B/4 (not d_B/2). The σ′ = min(σ, 2M) fix is ℓ-free only for D ≤ C·M (one (1 + D/2M)⁴ factor per cumulant — still enough for N1-B's polynomial target). (S′) PROVED rel. S1(b), (FX) with ℓ-free constants, an ℓ-free trajectory. IV12 §4.4's min(σ, 1) step is sound (Cauchy radii absorb the cube count) but not line-checked.
