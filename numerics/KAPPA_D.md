# KAPPA_D — free-case constant κ_d of CMP 95 (1.100)–(1.101) (2026-10-27)
Transcription [V p. 34 image, defs pp. 23, 28, 31]: QGQ* = a⁻¹I − a⁻¹φ⁻¹ + a⁻¹φ⁻¹∂₁(∂₁*φ⁻¹∂₁)⁻¹∂₁*φ⁻¹ (1.99); a⁻¹(φ−1)φ⁻¹ ≤ QGQ* ≤ a⁻¹I (1.100); a⁻¹(φ_μ(p')−1)/φ_μ(p') = Σ_l'|u(p'+l')|²|v_μ(p'+l')|²Δ₀(p')/Δ(p'+l') ÷ [Δ₀(p') + aΣ_l'(same)] (1.101); φ_μ = 1 + aΣ_l''|u|²|v_μ|²/Δ (1.84).
Definitions: u_k(p) = Π_ν ∂¹_ν(p')/∂_ν(p) (1.31), v_μ(p) = ∂¹_μ(p')/∂_μ(p) (1.61), ∂_μ(p) = (e^{iηp_μ}−1)/η, Δ(p) = Σ_μ|∂_μ(p)|² (1.30); η = L^{−k}, p = p' + l, l = 2πm, |m_μ| ≤ (L^k−1)/2.
So with T_μ = Σ_l Π_ν s(p_ν)·s(p_μ)/Δ(p), s(q) = sin²(q/2)/(N sin(q/2N))², N = L^k: (φ−1)/φ = aT/(1+aT), κ := sup φ/(φ−1) = 1 + 1/(a inf T). (1.100) holds as printed: the third term of (1.99) is between 0 and a⁻¹φ⁻¹ [P].
Finiteness: the l = 0 term of T is > 0 for p' ∈ (−π, π]^d \ {0}, and T → ∞ at p' → 0, so inf T > 0 and κ_d < ∞. No failure mode.
Method (`kappa_d.py`, ~2 s on Mac): exact l-sum, grid of p' ∈ (0, π]^d (T even in each p'_ν, symmetric in ν ≠ μ) + Nelder–Mead; the minimum is at p' = (π,…,π) for every N. k → ∞ limit: s → 4/q², Δ → |q|², q ∈ π(2Z+1)^d, truncation converged to 6 digits.
Numbers (a = 1): d = 4: κ = 104.248 (N = 3), 147.731 (5), 177.52 (9), 186.643 (13), 193.48 (25), 196.188 (k → ∞). d = 3: 76.31 (3), 103.11 (5), 123.44 (13), 127.853 (k → ∞). κ increases with N, so sup_k κ_d = the k → ∞ value.
c_− ≥ (aκ_dL^{d+1})⁻¹, d = 4, a = 1 [P, SOURCES_Q §4.4(b)]: L = 13: 1.373e−8 (sup_k κ), 1.443e−8 (N = 13 only); L = 5: 1.63e−6; L = 3: 2.10e−5.
Λ ≤ 2Λ₀ = 2(1 + γ₀⁻¹) (SOURCES_Q §4.3); with γ₀ = (12d²)⁻¹L^{−d−1} from CMP 96 (2.128): Λ ≤ 1.43e8 at L = 13 (1.20e6 at L = 5, 9.3e4 at L = 3). Λ/c_− ≈ 1e16 at L = 13.
Cross-check (4) skipped: h1cert_rho1.py / H2_LARGE_L compute ‖H_j‖ (minimizer map), not the fluctuation covariance; no cheap λ_min available.
Ledger: [V] (1.99)–(1.101), (1.30)–(1.31), (1.61), (1.84) read from page images. [P] (1.100) both halves, κ formula, finiteness. [N] κ values. [I] |u|² uses N^{-1}-normalized cube average (phases drop out); γ₀ value for Λ = CMP 96 (2.128) identified with CMP 99 p. 428 γ₀; ‖C‖² ≤ L^{d+1} as in SOURCES_Q.
