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

## 2. Read: D4D5 §1, §3–§4; FX §6–§7 + FX_VERIFY V8; FX_D; IV12_VERIFY (full)

Facts fixed [V]:
- D4D5 S1(a): Z_ε[f] = 𝒩_K e^{−W_K[f]} I_K[f], I_K[f] = ∫dV_K ρ̂_K^f(V_K), ρ̂_K^f = e^{W_K[f]}ρ_K^f of form H_K^{LF}; "Consequence: Z_ε[f]/Z_ε[0] = e^{−W_K[f]} I_K[f]/I_K[0]". S1 is "[target, not proved]". So (2.1) of the Fable file is S1(a) plus one division; exact given S1(a).
- D4D5 (FX) is a representation of log I_K[f] − log I_K[0] (a NUMBER, after ∫dV_K). Lemma C's Step 1 uses exactly that. FX §6.2 Step B is the only step that makes log I_K local; Steps A, C, D make the INTEGRAND local (IV12_VERIFY §10 says the same).
- FX §6.1 Step A: after the final R-operation with Z″ = ∅, on the small-field set the integrand is χ exp(A_K^f + Σ_X R_fin(X)). FX_VERIFY V8 item 1: Step A "is not the same operation once more; it needs O1" (O1 later "proved+verified" per TRUST_LEDGER B19 as quoted in FX_D §2).
- FX §6.3(a): large-field activity radius c·r, ε-uniform, conditional on O3 (FX_VERIFY V8 item 4: "CONFIRMED conditional on O3"; O3 UNSUPPORTED on those pages, later "conditional on B18").
- FX_D (unverified file, 2026-10-28): (FX-D) = O2 closed by FX_O23 with radius c·r at every scale given B18 (N3); §5.3 proves the R_fin part of a sup_V bound |Δ_f(V)| ≤ C_0 Σ|t_i|(1 + |supp f_i|_1) by Schwarz telescoping on a fixed polydisc + Step D count. §5.4 lists what it does NOT cover: the A_K^f − A_K^0 part; V-large regions mixing with supp f in the last R-operation; fine single-support polymers outside unit-scale activities.
- IV12_VERIFY §7/§11: the pass Lemma C → (S) in D4D5 §5.1 / B21_S §3 writes (1 + log_L(2M/σ)) ≤ C_aσ^{−a} and Λ_1(σ)⁴ ≤ C_aσ^{−a} on σ ≤ ℓ/8; false with ℓ-free C_a for σ ≫ 2M; fix (S′) with max(1, σ^{−a}). IV12_VERIFY §13: (FX-B∞) expected FALSE (Lemma C Step 4 at m = K would give a unit-scale mass gap κ/(4M)).

Immediate observations for the checks:
(1) The Fable file's Δ(f, V) := log ρ̂_K^f(V) − log ρ̂_K^0(V) requires ρ̂_K^0(V) > 0 on the small-field set and a polymer form for the LOG of the integrand at fixed V. After Step A the integrand is χ exp(A_K^f + Σ_X R_fin(X; V)), so Δ = [A_K^f − A_K^0] + Σ_X[R_fin^f − R_fin^0] (no Step B needed). This is the same object as IV12 (L1)'s Δ_f. Exactness of (2.1): yes given S1(a) and Step A as an identity (FX §6.1: "Normalization (0.4)/(1.102) keeps ∫dV_K ρ_K exact"). But Step A is a Mayer/cluster expansion; its CONVERGENCE at fixed V on the whole small-field set (not only ∫dV) is what makes Δ a convergent sum of local terms. FX §6.1 bounds |K(U)| ≤ e^{−p_0(γ)}e^{−κ′d_K(U)} as a sup over admissible configurations, so pointwise in V. OK modulo O1.
(2) Lemma C at fixed V: Lemma C's Steps 2–8 use only (FX1)–(FX4) per polymer plus the coupling bound. If (FX-V) gives these per polymer uniformly in V, Steps 2–8 go through verbatim with V a parameter. The Fable file says so. I agree, with one caveat recorded in §4 below: Lemma C sums only polymers Γ meeting ALL supports of S, so the mixed-block bound has NO (1 + |supp|) volume factor; correct.
(3) IV12_VERIFY's (S′) issue: Lemma C itself (D4D5 §4.1 statement) is ℓ-free; only the (S) restatement hides ℓ^a. The Fable file's (S∞) is written as (C_S^∞ σ^{−a})^n for σ ∈ [16ε, 1] — it RESTRICTS σ ≤ 1, where σ^{−a} ≥ 1, so the hidden ℓ^a does not enter. See §5 below for the bridge consequence.

