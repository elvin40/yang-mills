# SOURCES_T2_F_STEPB_VERIFY — independent check of SOURCES_T2_F_STEPB

Date 2026-10-28. Verifier. Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP §2).
Priority (a): the §3.3 tension claim. Then (b): the Step B reduction (Lemmas 1–3, Step C, (L-LL)).

## 1. Read SOURCES_T2_F_STEPB.md and t2_fstepb_logcoef.py
- §3.3 data source: results/umk_L*_trans.json, odd L, colors in (None,[0,1,2]), largest Ng per (L, Lp). Extrapolation β(0) ≈ (4β(0.5) − β(1))/3 assumes β linear in (Lp)².
- Claimed: β_1(0) = 0.7426/0.7968/0.8267/0.8436 at L = 5/7/9/11; local slopes 0.161/0.119/0.084.

## 2. Task (i): which quantity is compared to c log L [V]
- BETA_FP_H Theorem 3.1: 𝒞(Λ) = c log Λ + C_∞ + O(ε_j) along the composed family Λ = L^j, L odd fixed, j → ∞. Telescoping: β_∞ = lim_j[𝒞(L^{j+1}) − 𝒞(L^j)] = c log L. So the object is the large-k difference β_{k+1} at fixed L.
- BETA_FP: "β_∞ = 0.3715 log L" was never computed. 0.371511 = 11N²/(12π²) is the theoretical c (BETA_FP §conventions; STEPB §3.1 says the same, correct). β_∞ = c log L is Theorem 4.1 modulo Lemma 4.3 (reduced, not proved). The only fixed-family numbers are L = 2 (even, outside the proved range): β_1 = 0.630, β_2 ≈ 0.32 ± 0.03, β_3 ≈ 0.29 (N = 12, unconverged); c log 2 = 0.2575.
- NUMERICS §7: compares the single-step β_1(L) (one step from the unit lattice, block L, a different constraint family for each L) with c log L. This is neither the fixed-point β_∞(L) nor the fixed-L k-step difference.
- Data in JSON (results/umk_*): §7 values match the files (L = 9: 0.8327 (Lp 0.5), 0.8457 (Lp 0.9), 0.8506 (Lp 1.0); L = 11: 0.8496, 0.8678). Box run times: L = 9 450 s, L = 11 1280 s at Ng = 8.
