# WC_FULL independent verification (2026-10-28)

## 1. Read of §0–§5 (first pass)
- Lemma E step (f): recomputed by hand. S_ax ≤ 2dL^dP + 4d³L^dτ²G + 8d³L^dc τ² S_ax; (H_E) gives 8d³L^dcτ² ≤ ½ and 8d³L^dτ² ≤ 1/(2c). (2.6), (2.7) = 4G + 16cdL^dP, final 8dL^d(1+16dc)P + (1/c+32d)G all correct. 1+16dc = 1+8d²(L−1)L^d ≤ 8d²L^{d+1}, so K_b ≤ 64d³L^{2d+1}. c_𝒢(2,3) = 18. CONFIRMED.
- Steps (a), (c), (d), (e) recomputed: tree recursion gives D^Vλ = −B on both orientations; ‖Ad(e^{iY})−1‖ ≤ e^{2√N|Y|}−1 ≤ 4√N|Y| (needs 2√N c_4Mα_0 ≤ 1, implied by smallness, not stated in (H_E)); four orthogonal factors give τ_p = 16√N c_4Mα_0; Σ|D^Vλ|² ≤ 4dΛ_y. All correct.
- Lemma G(c) Cauchy–Schwarz chain correct given (b): ‖ω_Γ‖ ≤ 1/n + c_Mw ≤ κ/n since n ≤ d!.

## 2. Priority (1): Lemma G(b)–(c), the constant c_M
- CMP 109 p. 253 (pdftotext, checked): M is axiomatic, "an analytic function" with (0.5)–(0.9); Balaban fixes Federbush's mean (0.10), Σ_j log(M^{-1}U_j) = 0, and says results hold for every M with these properties. So for a general M, c_M exists by analyticity on a fixed neighbourhood of (1,…,1) but is not computable. WC_FULL's "smoothness gives the Lipschitz bound" is a valid existence argument; it is not a constant.
- Derivation for the Federbush (Karcher) mean. Reduce to M̄ = 1 by (0.6). W_j = e^{iA_j}, Σ_jA_j = 0. Perturb U_j = e^{isX_j}W_j, M = e^{isY}+O(s²). With δ = φ(ad_{iA})Z, φ(x) = x/(e^x − 1) (left BCH derivative), the first-order condition is Σ_jψ_j(X_j − Y) = 0, ψ_j := φ(ad_{iA_j}). So ω_j = (Σ_kψ_k)^{-1}ψ_j exactly.
- Bound. ad_{iA} is skew with norm ≤ 2√N|A|; on eigenvalues iθ, |φ(iθ) − 1| ≤ |θ|/2 + θ²/11 ≤ 0.6|θ| for |θ| ≤ 1. Principal log: |A| ≤ (π/2)|W − 1|. So ā := max‖ψ_j − 1‖ ≤ 1.9√N w. With Σψ_k = n(1 + E), ‖E‖ ≤ ā: ‖ω_j − 1/n‖ ≤ (1/n)·2ā/(1 − ā) ≤ 4ā/n for ā ≤ ½.
- Result: c_M ≤ 8√N/n ≤ 4√N (n ≥ 2; n = 1 gives ω = 1), valid for w ≤ 1/(4√N). Then ‖ω_Γ‖ ≤ (1 + 4ā)/n, so one may take κ := 1 + 7.6√N w (no d! needed); κ ≤ √2 needs w ≤ 0.054/√N.
- Numerics (/tmp/wcfv/cm2.py, U(3), n = 2, 6, w ≤ 0.3, Karcher mean by fixed-point with Hermitian eigen-log, central differences): max ‖ω_jX − X/n‖/(|X|w) = 0.54 < 8√3/n. Consistent.
- Gap noted: (c) "M̄ is within the same order of 1 by (0.8)" needs the mean of elements within r of 1 to lie within r of 1. True for the Karcher mean inside the convexity radius (bi-invariant metric); not stated. Minor.
- Grade (1): CORRECTED — c_M is finite for any admissible M (existence correct); explicit for Federbush's M: c_M ≤ 4√N, and Lemma G(c) (κ ≤ √2) holds for w ≤ 0.054/√N, i.e. c_wMα_0 ≤ 0.054/√N. Paper should state which M and this constant.
