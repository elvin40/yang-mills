# SOURCES_B21_S_PRIME — the ℓ-free form (S′) of the cumulant bound

Date 2026-10-28. Task: locate the ℓ-dependence in Lemma C ⇒ (S), state (S′) with an ℓ-free constant, check every consumer.
Firewall: no read of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.
Tags: [P] proved here, [V] read verbatim in a project file, [I] inferred, [R] reduced to a named input.
This file edits no other file.

## Ledger (appended per section)

| § | content | tag |
|---|---|---|
| 1 | the failing inequalities in D4D5 §5.1 | [V] + [P] |

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

Summary of §1. All three ℓ-dependences sit in the regime σ > 2M (σ ≥ 1 for (ii)). On σ ≤ min(1, 2M)... more precisely on σ ≤ 1 every inequality holds with C_a = C_a(a, M, L, g, p_R, C_β), ℓ-free. The defect is only the printed range "σ ≤ ℓ/8" together with the pure power σ^{−a}.
