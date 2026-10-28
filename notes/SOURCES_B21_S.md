# SOURCES_B21_S — uniformity of (S) at small widths and at separation 16ε

Status: in progress (2026-10-28). Firewall respected: no read of /tmp/sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP.

## Ledger

| item | status |
|---|---|
| §1 statement of (S) | done [read ASSEMBLY_N1 §1, UN1 §2.4, UN1_VERIFY items 2, 5, HHIST_N1_VERIFY Part 2] |

## 1. (S) stated precisely [read]

Source: ASSEMBLY_N1 §1, with the norm corrected by SOURCES_UN1 §2.4 and UN1_VERIFY item 2 / item 4.

(S). There are η > 0, a ∈ [0,1[, C_S < ∞, K_0 such that: for K ≥ K_0, n ≥ 2, σ ≥ 16ε, and REAL f_1,…,f_n with dist(supp f_i, supp f_j) ≥ σ (i ≠ j),
  |κ_n(f_1,…,f_n)| ≤ (C_S σ^{−a})^n (n!)^{G} Π_i N(f_i).
- Norm. ASSEMBLY_N1 writes N = C^5 norm. The corrected form (UN1, UN1_VERIFY item 4, D4D5 l. 103/144) is the C¹ norm N_U(f) = max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1), with λ_i = 2N_U(f_i) for the ρ_1/2 gradient radius of (FX2).
- Gevrey order G. ASSEMBLY_N1 as written: G = 2 + η (D3R branch), giving s = 11, D > 2. With the C¹ norm: s = 6 (HHIST_N1_VERIFY claim 6). With the FX branch, G = 1 + η and D > 1 (UN1 §2.4). The brief's "s = 6, D > 1" is the C¹ + FX combination. The question below does not depend on G.
- Range of widths. The bridge feeds (S) only with bumps g = ψ_i cos/sin(2πq·y/4h) supported in a cube of side 3h, h = h_m = δ_m/64, δ_m ∈ [64ε, ℓ/8]. So h ∈ [ε, ℓ/512]. Separation σ_m = δ_m/4 = 16 h_m ≥ 16ε. Note: σ and h are tied, σ = 16h. (S) is never used with σ ≪ h or with h ≪ σ/16.
- Region ρ < 128ε: no source, |⟨Πφ⟩| ≤ 2^n and flatness (N1 §4.5).
- Fallback already proved (N1 ledger item 3, confirmed HHIST_N1_VERIFY claim 5): if (S) holds only for σ ≥ ε^θ, θ ∈ ]0,1], the bridge still closes with s = max(s_0, ⌈4/θ⌉+1). The same fallback applies to h, since h = σ/16. So B21 needs (S) only down to a power ε^θ, not down to ε. Only an ε-independent floor σ_0 would fail.

| §2a Lemma C of D4D5 found | [read] D4D5 §4.1–4.2, §5.1: already proves (S) given S1 + (FX), with σ down to 16ε and an explicit size factor |

## 2a. The existing derivation of (S): D4D5 Lemma C [read, D4D5 §4.1–§5.1]

D4D5 §4.1 Lemma C derives (S) from S1 + (FX). Its statement:
  |κ_n| ≤ C_A (1 + D/σ)⁴ (1 + log_L(2M/σ)) (C_B Λ_1(σ)⁴)^n C_η^n (n!)^{1+η} Π N(f_i),
with D := min_i diam(supp f_i), N = N_U (C¹), and constants "independent of K, the f_i, or the position of the supports relative to the blocks" [V, D4D5 l. ~105].
Where each factor comes from (D4D5 Steps 0–9):
- Step 0: σ > ε makes the lattice gradient of Σ t_i f_i a max, not a sum. This is the only comparison of σ with ε. σ ≥ 2ε suffices.
- Step 3: Cauchy radius ρ_Γ = min(½, τ_m(Γ)/r) on a polydisc in t. It depends on the polymer Γ (its scale m and |Γ|_m), not on the sources. Multi-index (1,…,1): no factorial.
- Step 4: the polymer count uses Q_m ≤ (2 + D/(Mλ_m))⁴ cubes meeting the smallest support. This is monotone increasing in D. As D → 0 it tends to 2⁴. So a small support makes the bound smaller or equal, never larger.
- Steps 5–8: coupling growth R̄_m⁴ at fine scales, killed by e^{−κσ/(4Mλ_m)}; gives Λ_1(σ)⁴ ~ (log log 1/σ)^{4p_R} ≤ C_aσ^{−a}.
- D4D5 §4.2 [read]: at σ = 16ε and M ≥ 8 no scale is "fine", and the bound is C^n Λ_1(16ε)^{4n}(n!)^{1+η}. Uniformity down to 16ε "holds and costs only the log-log factor". "No threshold condition of the form σ ≥ σ_0 or σ ≥ ε^θ arises."
- D4D5 §5.1 [read]: (S) final form adds the condition min diam ≤ σ. N1 meets it: sources sit in cubes of diameter 6δ/64 < σ = δ/4.

Consequence for the brief's question (3). The multilinear constant has no factor that depends on h. The only size dependence is (1 + D/σ)⁴, which is ≤ 16 when D ≤ σ and decreases as h → 0. The h-dependence of the full bound sits entirely in Π N_U(f_i) ~ Π (1+|q|)/(ρ_1 h), which ASSEMBLY_N1 §4.4 pays with flatness (C¹ count: δ^{−4n}·δ^{−n}·δ^{−an}·δ^{N}, N = 6n).

