# SOURCES_NT4_VERIFY: adversarial verification of SOURCES_NT4.md and numerics/nt4_scales.py
Opus, 2026-10-29. Ids follow IDS.md. Firewall kept. Saved by the coordinator from the verifier's report (the disk was full).

## Verdict: CONFIRMED WITH CORRECTIONS
- C1. The running-coupling coefficient is −1.68 g_k², not −0.42 g_k². The script uses the standard slope 2b_0 = 22/(24π²). The file's u_k = g_k^{−2} and Lead = 3(g_k²/2)⁴… use Balaban's coupling, normalized with tr 1 = 1, so g_std = 2g_B. In that normalization the slope is 4·2b_0 = 11N²/(12π²) = 0.3715, in agreement with SOURCES_T2_PI l. 219. Rerun with 0.3715: the products ×u_k are −1.642, −1.676, −1.684 at u_k = 40, 160, 640. The O(g_k²) form stands.
- C2. As written, (S1-rel) conflicts with the verified Lemma N3 (R-042). If the imaginary coupling shift has relative size r, so Y ~ r g^{−2}, Step 0 gives C_1′ = C_1 + 12MγY/ρ² ~ M r/(γρ²), and condition (b), x_C ≤ ln 3/2, fails. Condition (a), 3r + (3/2)τ < g^{−2} − γ^{−2}, fails when g_j is close to γ. So (S1-rel) also needs (H-hist_C) on the relative half polydisc P_{ρ/2}(x) (SOURCES_HBETA_N3 §4–§5) and a gap g_j² ≤ (1 − O(r))γ². Other absolute items would need a relative rerun: the crude (F2) bound |δw|O(ε_j²) ≤ ½, the (S-e) additive δ_r = 4r + …, and L-165 (σ_W, with a polylog loss). Already relative: 5γ²r ≤ ½, θ_W ≤ 6.5γ²r, and the C_f Neumann series τ_2 ~ g²r. The rescaling f ↦ g_j f makes the source smaller, the wrong direction. The rescaling needed is f ↦ u_j f, and no verified file states bounds at that radius. So the verified sourced bounds do NOT give a relative radius. (D1) is CONFIRMED.
- C3. (NT-loc) and H-101. (E14-f) (SOURCES.md l. 151) is a two-point statement at one coarse layer: c g_j⁴d^{−8} + O(g_j⁶). It is a conclusion. (NT-loc) is a per-polymer hypothesis at all scales. So "(NT-loc) is a precise form of H-101 extended to four sources" is a naming, not an implication. A four-source (E14-f) would be (NT4)_{d0} itself. Also, (NT-loc) uses K^𝒢(X) "on the same X", but §3.4(a) shows that cross-scale ring terms come from J-terms and from later U-integrations, so K^𝒢(X) is undefined per polymer and Σ_X Δ_4K^𝒢 = Ring_RG is not shown. CORRECTED.
- C4. The large-field remainder is [R + I], not [R]. The p. 260 image says B_k is "a sum of small, or at least bounded, localized terms". e-terms have the bound E_0e^{−κd} with no small factor either. Both depend on the reading that the e^{−p_0} factor of the region is attached. The file gives [I] for B-terms only. D3 (L4)(vii) was not grepped (disk full).
- C5. The d-loss: C_5(d) ~ d^{−4}·log(1/d)·(1 + γ²B′(1 + log_L(1/d)))⁴, i.e. d^{−4} times up to log⁵(1/d). The file says d^{−4}log(1/d). The conclusion that NT-F is not reached is unchanged.
- C6. Minor:
  (a) On the p. 255 image, the g_k^{−2} in (0.19) multiplies the gauge-fixing sum, as in (0.16)–(0.17) with α = g_0². So the gauge-fixing weight depends on g, against §2.1. Evenness is not affected (dependence through g^{−2}).
  (b) p. 264: β_{j+1} = −∂²Π̃/∂p_μ∂p_ν with μ ≠ ν. The δ^{ab} structure comes from full global invariance R(v)⊗R(v), not from C alone.
  (c) Wording: "the small-field remainder is not o(Lead)" should read "is not shown to be".
  (d) The (NT4)_{d0} corollary inherits the N3 condition (a), a gap between g and γ (HBETA_N3_VERIFY Correction 1). "All g ∈ ]0, γ]" needs that gap.
  (e) Script: the column label "x Lam^4" is a leftover; scipy prints an IntegrationWarning; values unaffected.

## Grades
| Claim | Grade |
|---|---|
| Page facts: CMP 109 pp. 255, 264, 298; CMP 122 II pp. 356–357; CMP 119 p. 260 | CONFIRMED on images, with wording C6(a, b) |
| Only g² is a parameter; "even" means regularity at 0 | CONFIRMED |
| Charge conjugation U* = (iσ_2)U(iσ_2)^{−1} is a constant gauge transformation; no information on g | CONFIRMED |
| Invariance of CMP 122 II (1.2) and (0.19) under (g_k, B′) ↦ (−g_k, −B′) | CONFIRMED; vacuous, as the file says |
| Formal evenness by leg count; β via the background B, not scaled by g (p. 264) | CONFIRMED [P-sketch]; cut tails [I] |
| β_j′ = O(g) not printed and not implied (R-037 O(1); R-040 Cauchy O(1/g)) | CONFIRMED |
| (H-ev) statement and arithmetic Σ g_i⁴ ≤ 2g_k²/β ⇒ O(g_k²) | CONFIRMED |
| Z_k − 1 = O(g_k): Σ_{i<k} g_i³ ≤ 4g_k/β; Σε_j ≤ 2C_1′Ag_k/β | CONFIRMED; real Lemma H steps suffice; inputs R-037, (E), (S-g) (D2C; R-036, R-044 (D)); supplies L1_NT_VERIFY C4 |
| S^T_4 = ∂⁴log Z; h^{(4)} inclusion–exclusion | CONFIRMED |
| Localization on X touching all four supports | CONFIRMED given S1(c)^J locality (L1-E §1.1) and R-043 |
| Cauchy (3.1); Steiner bound 9d/8; C_Σ(d) ~ log_L(M/d) | CONFIRMED given S1 and the FX4 count |
| U(d) uniform in ε, K, ℓ | CONFIRMED [P given S1, R-043] |
| Scale-j ring g_j⁸Σ_3 tr(K⁴) = g⁸·3 unoriented | CONFIRMED |
| Σ_j over 𝒢 = Ring_RG | CONFIRMED [P-sketch] |
| Rerun: 27648.000000; fine cut 0.1/0.2/0.4 gives −1.8e−8/−18%/−99%; coarse cut −2.0e−4 … −8.7e−10 (~Λ^{−6}) | CONFIRMED (0.31 s) |
| Running-coupling correction −0.42 g_k² | CORRECTED (C1): −1.68 g_k² in Balaban's g |
| Lattice O((ε/θd)²); torus (d/ℓ)⁴ | CONFIRMED [P-sketch]; torons [I] |
| Prop. NT4-L | CONFIRMED [P-sketch] |
| Rem_LF = o(Lead) uniformly in ε | CORRECTED (C4): [R + I] |
| Small-field Cauchy bound exceeds Lead by c·g_k^{−8}d^{−4}C_Σ(d) | CONFIRMED (a bound, not the remainder: C6(c)) |
| (D1) absolute radius; (D2) no one-loop split | CONFIRMED |
| Rescaled source or verified bounds give a relative radius | REFUTED (C2) |
| (NT-loc) ⇐ (S1-rel) + (S1-G) | CONFIRMED (trivial) once K^𝒢(X) is defined (C3) |
| Statements of (NT-loc), (S1-rel), (S1-G) | CORRECTED (C2, C3) |
| "They follow from a four-source form of H-101 (E14-f)" | UNSUPPORTED as an implication (C3) |
| Theorem NT4-C and (NT4)_{d0} in rate-free form | CONFIRMED given the inputs (plus C6(d)) |
| d^{−4} loss blocks NT-F | CONFIRMED; rate CORRECTED (C5) |

## Safe status
- (NT) = H-081/H-101: OPEN, unchanged. Not needed for Target 1 or Target 2. Theorem NT-G is proved given (NT4)_{d0}.
- (NT4): OPEN. (NT4)_{d0} with S ≥ ½Lead is REDUCED to {the Theorem L1-E list with (W6*), R-043, L-001 (c′), κ_0 ≥ 9, the B/e-term reading [I], Prop. NT4-L [P-sketch], (NT-loc)}. (NT-loc) ⇐ (S1-rel) + (S1-G), both [N]. (S1-rel) additionally needs (H-hist_C) on relative half polydiscs and g_j² ≤ (1 − O(r))γ². (NT4) on ]0, d_1], which NT-F needs, is NOT obtained (d^{−4} loss). The rate is O(g_k); O(g_k²) needs (H-ev), open.

## Report
SOURCES_NT4 is confirmed with corrections. Evenness is formal only; charge conjugation is a gauge symmetry. β′ = O(g) is neither printed nor implied. The O(g_k) transfer holds and supplies C4. Localization, U(d) and the rerun hold. Corrections: in Balaban's g the running-coupling term is −1.68 g_k². The large-field remainder is [R + I]. (S1-rel) is not given by the verified bounds and conflicts with N3 unless (H-hist_C) holds on relative discs. "Follows from H-101" is unsupported. The d-loss is d^{−4}·log⁵. (NT) OPEN; (NT4) OPEN; only (NT4)_{d0} is reduced, to (NT-loc).
