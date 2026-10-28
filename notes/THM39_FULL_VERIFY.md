# THM39_FULL verification (independent)
Started 2026-10-28. Firewall respected: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## V1. CMP 98 (78)-(80), p. 30 image (pdf p. 14, 300 dpi) [task (e)]
- (78): (R̄_0v)(y) = v(y) exp[i Σ_{x∈B(y)} L^{-d} (1/i) log v^{-1}(y)R(V_0(Γ_{y,x}))v(x)], y ∈ Ω′^{(1)}. Uses v only on B(y). Uniform weights L^{-d}. Contours Γ_{y,x} are the axial contours inside B(y) (CMP 98 (64), p. 29).
- Linearize at v = e^{iλ}: exponent = Σ L^{-d}[Ad(V_0(Γ_{y,x}))λ(x) − λ(y)] + λ(y) + O(λ²). So the linear part is L^{-d}Σ_{x∈B(y)} R(V_0(Γ_{y,x}))λ(x). Block-diagonal, uniform weights.
- (79)-(80): R̄_0u^{j+1}(x_{j+1}) = (R(Ū_0^j)R̄_0u^j)(x_{j+1}). Iteration of block-local averages. So Q′_j is block-diagonal: row y sees only B^j(y). [I-Q] block-diagonality CONFIRMED.
- CORRECTION to the form of (I-Q): the composite transport is U_0(Γ^{(j)}_{y,x}) = Ū_0^{j−1}(Γ_{x_j,x_{j−1}})···Ū_0(Γ_{x_2,x_1})U_0(Γ_{x_1,x}) (p. 29 last line). It is a product of AVERAGED links Ū^i on level-i axial contours, not a fine-lattice holonomy. Consequences for LB §4.4: (a) covariance still holds, since averaged links transform as Ū^i_b → u(b_−)Ū^i_bu(b_+)^{-1} (CMP 98 (70)); (b) the bound |R(Ū(Γ^{(j)})) − I| ≤ K_ΓMα_0 needs |Ū^i − 1| ≲ ηℓ_i|A|-type bounds for averages of a near-identity field e^{iηA}. This is an extra input (averages of a small field stay small, level by level). It is standard (CMP 98) but not stated in THM39_FULL. Tag it [R/I], new item. Locality: averaged links of bonds inside B^{i+1}(x_{i+1}) depend on U only inside that block, so Q′(y) depends on U only on Δ(y) (plus possibly its boundary corridor; harmless for LB since □(y) contains the η-layer).

## V2. CMP 99 pp. 396, 411-413 images (pdf pp. 8, 23-25, 300 dpi) [task (a)]
- (M1) CONFIRMED: (3.96) prints (Q′G′Q′*)^{-1} = C_0(I − R)^{-1}; square missing.
- (M2) CONFIRMED: p. 411 prints e^{-(1/4)δ_0M} ≥ 3!(1/4 δ_0M)^{-3}; must be ≤.
- (M3) CONFIRMED: p. 412 prints □̃Q′h′G′h′²G′h′Q′h_□C_□h_□; last Q′ must be Q′* (the next display has Q′*).
- (M4) CONFIRMED: "restructed" p. 413. Also "expanson" p. 412 (typo).
- NEW misprint (M5), missed by the author: p. 412 says "with Ω_0 contained in a cube for which the condition (3.25) is satisfied". (3.25) is the definition of R. It must be (3.35).
- (G1) CORRECTED: p. 396 prints a standing hypothesis: "We will need α_0 so small that O(1)Mα_0 is still a sufficiently small number." So "Mα_0 small" is in force for all of Sect. 3. It is not a gap in Thm 3.9; making it explicit is fine.
- (G2), (G3), (G4) CONFIRMED on the images (p. 412 domain-change citation to [2] and Cor. 3.5; p. 413 "difficult to make the last statement more precise").
- (3.35) p. 396: cube class, O(1) ≥ 10, bounds at the cube's index j. The reading c_3 = 12L² (index j or j−1) is a choice of the O(1); acceptable as [I].
