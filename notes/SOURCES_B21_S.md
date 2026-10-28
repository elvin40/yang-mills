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

