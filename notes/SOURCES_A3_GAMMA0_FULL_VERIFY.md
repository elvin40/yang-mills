# SOURCES_A3_GAMMA0_FULL_VERIFY — independent check of SOURCES_A3_GAMMA0_FULL.md

Status: in progress 2026-10-28 (Opus verifier). One section per tool call.
Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Order: Part 1 (claimed error in CMP 96 (2.126)–(2.127)) first, then Part 2 (Lemma 5 and the rest).

## §0 Inputs read
- SOURCES_A3_GAMMA0_FULL.md §0–§7 in full.

## §1 Part 1(a): CMP 96 p. 245, (2.124)–(2.127), read on the 300 dpi page image [V]
Geometry (figure, p. 245). c = ⟨y, y+Le_μ⟩, c_− = y, c_+ = y+Le_μ. Δ′ = the face x_μ = y_μ + L − 1 of B(c_−); Δ″ = the face x_μ = y_μ + L of B(c_+). B(c) = the L^{d−1} corridor bonds ⟨x, x+e_μ⟩, x ∈ Δ′. B(b) = B_μ(x).
(2.124): Σ_{p⊂B(c)}|(∂_1B)(p)|² ≥ ⅓Σ_{b⊂Δ′}|(∂B_μ)(b)|² − Σ_{b⊂Δ′}|B(b)|² − Σ_{b⊂Δ″}|B(b)|².
(2.125): |(Q_1B)(c)|² = |Σ_{x∈B(c_−)}L^{−(d+1)}B([x, x+Le_μ])|² = |L^{−d}Σ_{x∈B(y)\Δ′}L^{−1}(x_μ−y_μ+1)B_μ(x) + L^{−d}Σ_{x∈Δ′}B_μ(x) + L^{−d}Σ_{x∈B(y+Le_μ)}L^{−1}(2L−1+y_μ−x_μ)B_μ(x)|² "≤" ⅓|Σ_{x∈Δ′}L^{−d}B_μ(x)|² − L^{−d}Σ_{B(c_−)}|B_μ|² − L^{−d}Σ_{B(c_+)}|B_μ|². The printed "≤" is a misprint for "≥" (the next line uses it as a lower bound).
(2.126): L^{−d}Σ_{p⊂B(c)}|(∂_1B)(p)|² + |(Q_1B)(c)|² ≥ ⅓( L^{−d}Σ_{b⊂Δ′}|(∂B_μ)(b)|² + L^{−2}|Σ_{x∈Δ′}L^{−(d−1)}B_μ(x)|² ) − L^{−d}Σ_{b⊂B(c_−)}|B(b)|² − L^{−d}Σ_{b⊂B(c_+)}|B(b)|².
Text after (2.126), verbatim: "The terms in parentheses on the right-hand side can be written as L^{−2}⟨B, (Δ^{L^{−1},N}_{Δ′} + Q′*_{Δ′}Q′_{Δ′})B⟩, where the operators are defined on a d−1-dimensional lattice. This quadratic form is bounded from below by L^{−d−1}Σ_{x∈Δ′}|B_μ(x)|², hence"
(2.127): L^{−d}Σ_{p⊂B(c)}|(∂_1B)(p)|² + |(Q_1B)(c)|² ≥ ⅓L^{−d−1}Σ_{b∈B(c)}|B(b)|² − L^{−d}Σ_{b⊂B(c_−)}|B(b)|² − L^{−d}Σ_{b⊂B(c_+)}|B(b)|².
Lemma 2.4 / (2.128): L^{d−2}Σ_{c∈Λ′}|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ (12d²)^{−1}L^{−d−1}‖B‖².

The slab form. With f(x) := B_μ(x), x ∈ Δ′ (N = L^{d−1} points of a (d−1)-dim grid of side L), the parenthesis is
 K(f) = L^{−d}Σ_{edges e⊂Δ′}|∇_e f|² + L^{−2d}|Σ_{Δ′}f|².
∂B_μ on b ⊂ Δ′ is the unit-lattice difference along an edge inside the face. Only edges inside Δ′ appear, so the Laplacian is the graph Laplacian of the grid with free (Neumann) boundary; Balaban's superscript "N" says the same. No mass term, no constraint, no subspace: f is an arbitrary function on Δ′. The extra term is rank one (the mean). Balaban's claim is K(f) ≥ L^{−d−1}Σ|f|², i.e. Σ|∇f|² + L^{−d}|Σf|² ≥ L^{−1}Σ|f|². This matches the author's (3.1) bracket exactly.
Where the printed claim comes from (my reading, [P]). In rescaled units (spacing L^{−1}, weight L^{−(d−1)} per point) the form Δ^{L^{−1},N} + Q′*Q′ has lowest eigenvalue min(L²λ_1, 1) = 1 for all L ≥ 2. That gives L^{−d−1}Σ|f|² only if the gradient term in the parenthesis is L^{−(d−1)}Σ|∇f|², i.e. L^{−2}⟨f, Δ^{L^{−1}}f⟩. The printed gradient term is L^{−d}Σ|∇f|², one factor L smaller. So the identification "can be written as L^{−2}⟨B, (Δ^{L^{−1},N} + Q′*Q′)B⟩" is off by a factor L on the Laplacian part; the mean part L^{−2d}|Σf|² = L^{−2}|Q′f|² matches.

## §2 Part 1(b): numerics (script /tmp/a3v/scripts/slab.py, exact dense eigenvalues, 92 s on the Mac)
Slab form K(f) = L^{−d}Σ_{edges⊂Δ′}|∇f|² + L^{−2d}|Σf|² on the Neumann grid {0..L−1}^{d−1}. Column "slab/L^{−d−1}" = (lowest eigenvalue of K)/L^{−d−1}; Balaban's claim is this ≥ 1. Computed for d = 2 (L = 2..40) and d = 3 (L = 2..25); the two columns agree to all printed digits, as expected (lowest nonzero Neumann eigenvalue of the grid = λ_1 of the path, independent of dimension).
Exact value: min eig K = L^{−d}·min(λ_1(L), 1/L), λ_1 = 2(1 − cos(π/L)). So slab/L^{−d−1} = min(Lλ_1, 1).

 L | λ_1 | 1/L | slab/L^{−d−1} | (2.127) min eig, free B | (2.127) min eig, axial B
 2 | 2.00000 | .50000 | 1.0000 | +5.3e−2 | +8.3e−2
 8 | 0.15224 | .12500 | 1.0000 | +1.4e−4 | +5.2e−4
 9 | 0.12061 | .11111 | 1.0000 | +3.8e−5 | +2.8e−4
 10 | 0.09789 | .10000 | 0.9789 | −6.9e−6 | +1.5e−4
 13 | 0.05812 | .07692 | 0.7555 | −3.7e−5 | +2.0e−5
 14 | 0.05014 | .07143 | 0.7020 | −3.6e−5 | +6.4e−6
 15 | 0.04370 | .06667 | 0.6556 | −3.4e−5 | −1.6e−6
 29 | 0.01172 | .03448 | 0.3400 | −9.0e−6 | −6.7e−6
 30 | 0.01096 | .03333 | 0.3287 | −8.3e−6 | −6.2e−6
 40 | 0.00617 | .02500 | 0.2466 | −3.9e−6 | −3.3e−6
(Full table L = 2..40 in the script output; all rows L ≤ 9 have slab ratio exactly 1.0000, all rows L ≥ 10 below 1, strictly decreasing.)
The "(2.127) min eig" columns: d = 2, μ = 1, all bonds of B(c_−), B(c_+), and the corridor; the quadratic form LHS − RHS of (2.127) with Q_1 from (2.125) and p ⊂ B(c) = the L − 1 plaquettes with both μ-bonds in the corridor. "free" = no constraint; "axial" = B = 0 on the trees T(y) of both blocks (2.121). Negative = (2.127) fails for some B.
Findings.
- Slab claim ("bounded from below by L^{−d−1}Σ|B_μ|²"): holds exactly for 2 ≤ L ≤ 9 (with equality, attained by the constant mode), fails for every L ≥ 10. Crossover: λ_1(L) = 1/L near L = π² ≈ 9.87. CONFIRMED.
- (2.127) as printed, per corridor: the author's test (B = mean-zero cosine on the corridor, block bonds 0) fails exactly when λ_1 < 1/(3L), i.e. L ≥ 30 (λ_1(29) = 0.01172 > 0.01149; λ_1(30) = 0.01096 < 0.01111). That is correct for that test. But the true threshold is lower: with free block bonds (2.127) already fails at L = 10; with the axial condition imposed it fails from L = 15. So "(2.127) fails for L ≥ 30" is true but not sharp. CORRECTED (threshold L ≥ 10 free, L ≥ 15 axial, d = 2).

## §3 Part 1(c): verdict and downstream
Verdict on the slab claim: CONFIRMED. The form in parentheses of (2.126) is K(f) = L^{−d}Σ|∇f|² + L^{−2d}|Σf|² on the free (Neumann) (d−1)-grid Δ′. Its exact lowest eigenvalue is L^{−d}min(λ_1(L), 1/L). The printed bound L^{−d−1}Σ|f|² holds iff Lλ_1(L) ≥ 1, i.e. exactly for 2 ≤ L ≤ 9. No mass or constraint term lifts the gap; f is unconstrained. The likely origin is a lost factor L in "can be written as L^{−2}⟨B, (Δ^{L^{−1},N} + Q′*Q′)B⟩" (§1).
Verdict on "(2.127) fails for L ≥ 30": CORRECT BUT NOT SHARP. The author's test is right. With block bonds free, (2.127) per corridor fails from L = 10 (d = 2 numerics, min eig −6.9e−6); with the axial condition, from L = 15.
Author's corrected corridor inequality (3.2) (m_L/3 in place of 1/(3L)): numerically ≥ 0 for L = 2..40, free and axial (free case has min eig 0 to 1e−17 for L ≥ 10, so (3.2) is sharp there). CONFIRMED.
Is printed Lemma 2.4 (2.128) itself false? Not shown. d = 2 numerics (scripts/lemma24.py; torus of 2×2 or 3×3 L-blocks, axial gauge in each block, L^{d−2} = 1): the optimal constant is ≈ 0.88–0.93·L^{−3} for L = 3..30, versus the printed (1/48)L^{−3} = 0.0208·L^{−3}. So in d = 2 the printed (2.128) holds with a margin ≈ 44 at every tested L, including L = 13 and 30. Only Balaban's proof step fails. Caveat: torus not finite Λ; d = 2 not d = 4; numerics, not a proof.
Corrected constant (as proved by the author): γ_L = m_L/(12d²L^d) = (12d²)^{−1}L^{−d−1}·(L m_L), L m_L = min(Lλ_1, 1) ∈ [4/L, 1].
Downstream at L = 13, d = 4 (L m_L = 13·0.058116 = 0.75551):
- Lemma 2.4 constant: printed 1.4028e−8 → proved 1.0598e−8.
- TRUST_LEDGER A3 row "γ_0 ≥ (48d²)^{−1}L^{−d−1}" = 3.507e−9 → proved 2.649e−9 (factor 0.7555). The row needs the factor L m_L, or a separate proof of printed (2.128).
- KAPPA_D / SOURCES_Q §4.3: Λ ≤ 2(1 + γ_0^{−1}) with γ_0 = (12d²)^{−1}L^{−d−1}: 1.43e8 → 1.89e8; Λ/c_− ≈ 1.04e16 → 1.37e16. Only the number changes; existence and k-uniformity are untouched. L = 3, 5 values are unchanged (L ≤ 9).
- Typo in the author's §7.4(4): "L^{d−1}Σ|B_μ|²" should read "L^{−d−1}Σ|B_μ|²".
