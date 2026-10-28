# SOURCES_A1_WALK verification (independent)

Date 2026-10-28. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## 0. Context read
Read SOURCES_A1_WALK §1–§9 in full; A1_KERNEL §7 (Lemma CT, self-adjoint statement, proof uses only Re-form + same for adjoint), §11; A2_R2_VERIFY V1–V8; A3_SIGMA_VERIFY V1; lean/VERIFY_CombesThomas.md (Lean CT already non-Hermitian: `coercive_inv` from re⟪v,Nv⟫ ≥ c‖v‖²).
Page map: CMP 96 p. 237 = pdf 15; CMP 99 p. N = pdf N − 388.

## 1. CMP 96 pp. 237–238 [V image 110 dpi, zooms 200–250 dpi]
- "Another way … e^{⟨a,·⟩}Q′G′^ξ(□̃)²Q′*e^{−⟨a,·⟩} … almost equal … difference O(|a|) … implies an exponential decay": CONFIRMED verbatim. It is a Combes–Thomas conjugation on the LOCAL operator, rate δ_1 = δ_1(δ_0, γ_0). Author's 2.1(b) CONFIRMED.
- (2.82) image: Q′G′²Q′*C = Σ h_□(□Q′G′(□̃)²Q′*□)C_□h_□ − Σ[h_□, □Q′G′(□̃)²Q′*□]C_□h_□ − Σ □Q′(G′(□̃)² − G′²)Q′*h_□C_□h_□ − Σ_{□,□′≠□}(□ − 1)h²_{□′}Q′G′²Q′*h_□C_□h_□ = I − Σ R_{□,□′}C_□h_□. One main sum + THREE error sums (commutator, domain change, separation). The ledger's "four error sums" (§8 line 1) is a miscount; 2.1(c) itself is right. Local operator = compression of Q′G′(□̃)²Q′*, G′(□̃) = propagator on the LOCAL domain □̃ (not a truncation of the global one).
- (2.84) image: |R_{□,□′}C_{□′}h_{□′}λ| ≤ O(1)e^{−⅛δ_0M}e^{−½δ_1d(□,□′)}|λ|. Author wrote e^{−¼δ_0M}: CORRECTED (⅛), harmless.
- p. 238 [V image]: domain-change term e^{−δ_0M} "follows from the random walk representations (2.50) for G′, G′(□̃)"; commutator O(M^{−1}); (2.85) |R(y,y′)| ≤ O(M^{−1})e^{−δ_1d}(L^{j′}η)^{−d}; Prop 2.3 (2.86) = C(I−R)^{−1} = Σ h_{□0}C_{□0}h_{□0}R_{□1,□2}C_{□2}h_{□2}···; (2.87) rate ½δ_1. Author's note "final rate = half the local CT rate" CONFIRMED.
- Structure match with author §5.1: Balaban uses a RIGHT parametrix (N·C = I − R, inverse = C Σ R^n); author N̂P = I + ΣF_□, N̂^{−1} = PΣ(−ΣF)^n. Same form. CONFIRMED.

## 2. CMP 116 pp. 3–5, 12–14 [V text l. 95–230, 560–700; images already checked in A3_SIGMA_VERIFY V1–V2]
- p. 3: "Each factor in (1.6) depends on external gauge field configurations restricted to the corresponding domain X̃_j^5, and its kernel vanishes in a sufficiently thick neighborhood of ∂X_j". s-rule: multiply the ω-term by Π s(Δ) over σ_0 cubes meeting X̃_0^5 ∪ … ∪ X̃_n^5.
- p. 4: "kernels of the operators H(s), G(s), H_0(s) vanish, unless both arguments are in the interior of one component of Y(σ), … with distances to the boundary of this component bigger than M_1"; the solution on a component "depends on A′, H(s), s restricted to this component". This decoupling uses, per walk term, (L1) kernel support AND (L2) U-dependence. A sum with only a global kernel-decay bound gives neither vanishing nor component-wise U-dependence. Author's 1.4 CONFIRMED.
- Refinement [P]: Balaban's (L1) is stronger than the author's: the kernel must vanish in a neighbourhood of width ~M_1 of ∂X_j (interior support), not just supp ⊂ X × X. The author's factors satisfy it: h_□C_□h_□ lives in □° × □°, E^com_□ in □ × □, both at distance ≥ M_1 from ∂□⁺; G-sub-walks inherit Balaban's. So add "interior support" to (L1); no change to the construction.
- p. 5 (1.11): bound B_0|X|sup_ω M_1^{−½|ω|}exp(−δ_0d(ω))e^{mκ_1}; for m > 24, δ_0d(ω) ≥ δ_1mM, need δ_1M ≥ κ_1, δ_1 ∝ walk rate. With walk rate ½ε this is M ≳ κ_1/ε. Same order as the author's 7.4(a) M > 48κ_1/ε (from e^{−⅓εM}e^{16κ_1} < 1). CONFIRMED; both say "M ≫ κ_1/(walk rate)".
- p. 13: "the localization domains in expansions can be chosen to a large extent arbitrarily, they have to be only unions of connected families of M_1-cubes" and "This construction was discussed in [13] … for C^{(k)}(Z_0)". So □⁺ domains are admissible in Balaban's own scheme; the C^{(k)}(Z_0) walk expansion is a Balaban assertion [R].
- (2.5)–(2.9): conditioning on Z_0^c, then s-localization of C^{(k)}(Z_0), (C^{(k)})^{1/2} (via resolvent (x + C*Δ_kC)^{−1} and G_3(x)), Δ_k → H(Z) localized in Z. The (C^{(k)})^{1/2} expansion uses the resolvent family, not (QGQ*)^{−1} alone: NOT covered by A1-W (outside the claim; noted, not a defect).

