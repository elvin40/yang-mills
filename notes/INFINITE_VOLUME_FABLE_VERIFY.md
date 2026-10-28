# INFINITE_VOLUME_FABLE_VERIFY.md

Fable-tier independent verification of INFINITE_VOLUME_FABLE.md. Started 2026-10-28.
Firewall respected: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md, no ONLINE_SWEEP.md.

## 1. Target file read; plan of checks

Read INFINITE_VOLUME_FABLE.md in full (233 lines, §0–§7). Its core moves, as I read them:
- (2.1) Z[f]/Z[0] = e^{−W_K[f]} E_ν[e^{Δ(f,·)}], ν := ρ̂_K^0 dV / I_K[0] on the small-field set after FX Step A; Δ := log ρ̂_K^f − log ρ̂_K^0, a sum of local terms (coupling term, unit-scale E-terms, Step-A polymers, fine-origin R/B/e-terms kept in A_K^f).
- Lemma ν-cum: ∂^B log E_ν e^{w(t)} = Σ_{π⊢B} κ^ν(w_{B_1}, …, w_{B_k}); joint cumulant of bounded variables ≤ 2^k k! Π osc.
- (S∞): mixed blocks |S| ≥ 2 by Lemma C at fixed V (sup over the analyticity domain); singletons by osc_V(w_i) ≤ C N(f_i)(1 + |supp f_i|_1), the fine-origin part via D3W8 F2′(ii) in the (L^mη)⁴ g_m^{κ_0} form; assembly count Σ_π |π|! Π|S|! = 2^{n−1} n! gives Gevrey 1 + η.
- §3: all ℓ-dependence beyond e^{−cℓ} sits in ν_{K,ℓ}; convergence BLOCKED, compactness only.
- §4: RP inherited from μ_{ε,ℓ}; half-space in the limit because the second seam leaves.
- §7.4: disagreements with PLAN (Lemma IV-M normalization) and ATTEMPT (BP4, BP2, Gevrey 3 + η).

Checks (1)–(6) as briefed. Files to read next: ASSEMBLY §0, §1.3, §2.7, §4; ASSEMBLY_N1; D4D5 §2–§4; B21_S + VERIFY; D3W8 F2′(ii) + VERIFY item 4; D2C Lemma A; SOURCES_D3 (B7); FX §6–§7 + VERIFY; A15_LOC §7.5 + VERIFY; ATTEMPT (BP2, BP4, §2.4); PLAN §4.2; IV12_VERIFY.

