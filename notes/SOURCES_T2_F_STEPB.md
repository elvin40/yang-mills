# SOURCES_T2_F_STEPB — (F) Step B: lattice log coefficient = continuum log coefficient at constant field

Date 2026-10-28. Target: TRUST_LEDGER row B3. Ledger tags: [P] proved here, [V] read verbatim in a project file, [I] interpretation, [R] reduction, [N] numerics.
Inputs read: TRUST_LEDGER rows B2, B3, X5; SOURCES_T2_PI + VERIFY; BETA_FP_H + VERIFY; BETA_FP + VERIFY; numerics/NUMERICS.md, ym_oneloop.py, ym_momentum.py; SOURCES_T2_V1.

## 0. Ledger rows (verbatim) [V]
- B3: "(F) lattice log coefficient = continuum log coefficient at constant field | none | T1 Route K | cited source checked (X5); lattice transfer not proved; (F) stays reduced to the open Step B (SOURCES_T2_PI_VERIFY)".
- X5: "(F) continuum log coefficient of the constant-field one-loop effective action | Savvidy, Phys. Lett. 71B (1977) 133, via arXiv:1910.00654 eq. (1.4) (BETA_FP_H_VERIFY §4)".
- B2: (PI) probe independence at fixed level, reduced [R, verified]; "(1.1) at L = 3 not evaluated".

## 1. Exact statements of (F) and Step B [V: SOURCES_T2_PI §7.2; VERIFY §7]
Fine bracket (BETA_FP_H (1.1)): Fine(Λ; f) = log det X − ½ log|det K|, the fine Wilson one-loop in background Feynman gauge at constant abelian fine flux φ = f/Λ² (colour σ_3, (0,1) plane), read per cell as log|det| (Nielsen–Olesen band).
- (F_lat): per fine cell, Fine at flux φ is a Λ-independent function F_W(φ) with F_W(φ) = n_2φ²[c_2 ln(1/|φ|) + B] + o(φ²), c_2 = 11N²/(24π²).
- (3.1) (the only use, Theorem 3.1 of BETA_FP_H): [Fine(Λ; f) − Fine(Λ′; f)]/(n_2f²) → c log(Λ/Λ′), c = 2c_2.
- Step A [P given (F_lat), verified]: Fine(Λ; f) = Λ⁴F_W(f/Λ²) ⇒ (3.1).
- Step B [I, open]: "the log coefficient of F_W is ½(2π)^{−4}∫_{S³} I_{−4} dΩ, the angular integral of the degree −4 part of the formal f² Moyal integrand; two-region control at level 0, including the n = 0 spin-down Nielsen–Olesen zero (eigenvalue k_⊥² − |φ|), which needs a log|det| bound".
- Step C [R, VERIFY-corrected]: I_{−4}^{lat} = I_{−4}^{cont} (Lemma 3.4 for the Wilson Hessian; gauge-fixing and ghost symbols [I]; meaningful only inside Step B).
- Step D [cited, source checked]: Savvidy (1.4) ⇒ c_2 = 11N²/(24π²), c = 0.371511 (SU(2)).

Remark on what (3.1) needs. Put G(φ) := F_W(φ)/φ². Since Λ⁴F_W(f/Λ²)/f² = G(f/Λ²), (3.1) is exactly
  (3.1′) G(φ) − G(λφ) → n_2c_2 ln(1/λ) as φ → 0, for each fixed λ = (Λ/Λ′)^{−2} ∈ L^{2Z}.
(3.1′) is weaker than (F_lat): G may carry a bounded term with period 2 ln L in ln φ. This form is used below.

Note on the caller's framing. The task text describes "a_j + b·log(L^j)" for the scale-j block determinant. In the project, the scale-j determinant is the massive total log Z_Λ, and its log in Λ comes entirely from the fine bracket through Step A. So the object to control is the single level-0 lattice functional F_W(φ) at small φ. The Λ-dependence is a pure rescaling; no block structure enters Step B.
