# A1_WALK_FULL verification (independent)
Started 2026-10-28. Sections appended per step.

## 1. (d) Lean citations
- `coercive_inv`: hyp ∀v, c‖v‖² ≤ re⟪v,Av⟫; concl IsUnit A ∧ ‖A⁻¹‖ ≤ 1/c. No Hermitian hyp. Matches 3.3.
- `combes_thomas`: hyp w > 0, hN (accretive), hE ‖WNW⁻¹ − N‖ ≤ c/2; concl IsUnit N, ‖(WNW⁻¹)⁻¹‖ ≤ 2/c, ‖N⁻¹ x y‖ ≤ (2/c)w y/w x. Matches 3.3 as quoted.
- `combes_thomas_schur`: hrow, hcol over every centre x₀ with weight |exp(ε(d x x₀ − d y x₀)) − 1|; d x x = 0 only. Matches 3.3 ("f = d(·, x₀)").
- Weight direction: 3.2 A_f = e^{εf}Ae^{−εf} = W N W⁻¹ with w = e^{εf}. Same.
- Transfer via V: VAV⁻¹ has entries μ^{1/2}(y)μ^{1/2}(y′)a(y,y′); V commutes with diagonal weights; Re⟨u,Au⟩_μ = Re⟨Vu,VAV⁻¹Vu⟩. Correct. Not formalized, as the file states.
- Grade (d): CONFIRMED. The cited theorems carry exactly the hypotheses the text uses.

## 2. (a), (f) Junction count and term bound, redone
- Blocks per insertion: S K or R K = 2 blocks, |ω′|+1 + 1 = |ω′|+2 domains added; Γ = 1 block, 1 domain. Initial K_{□0} adds 0 to |ω|. So |ω| = Σ added domains. CHECKED.
- β(SK) = b_G e^{−¼δ_G M_1} ρ_G^{|ω′|}·(4/c_−). ρ_G supplies |ω′| powers. The 2 remaining powers (entry junction into X′_0, exit junction into □_i⁺) must come from (4b_G/c_−)e^{−¼δ_G M_1} alone, since |ω′| = 0 is allowed. So ρ ≥ (4b_G/c_−)^{1/2}e^{−⅛δ_G M_1} is needed and sufficient. CHECKED.
- R block: d(ω′,y,z) > 4M_1, λ = ¼ split gives e^{−δ_G M_1}e^{−¾δ_G d(ω′)}; ε ≤ ¾δ_G. CHECKED. S block: d(ω′) ≥ d(y,z) ≥ M_1 (y ∉ □, z ∈ □⁻). CHECKED.
- Γ: ‖Γ‖_ε ≤ ‖E^com‖_ε·4/c_− = ρ_com; (N2) gives rate ε. K: 4/c_−. CHECKED.
- Concatenation (δ = ε, θ = ½): m telescopes (μ(z)m(y,z)m(z,y′) = m(y,y′)); junction sums are counting sums ≤ c_1(½ε); N−1 junctions ≤ |ω| since every block has ≥ 1 domain; c_1 ≥ 1. Prefactor 4/c_− from K_{□0}. CHECKED.
- M_e′ ≥ M_e holds since e^{−¼x} ≤ e^{−⅛x}. ρ ≤ K_W/M_1 for M_1 ≥ M_e′. CHECKED.
- Grade 10.2 point 4 (a): CONFIRMED. (f): CONFIRMED.
