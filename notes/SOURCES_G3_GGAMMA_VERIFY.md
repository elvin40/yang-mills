IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_G3_GGAMMA verification (independent)

Date 2026-10-28. Firewall kept: no sa_repo, no SA map, no online sweep.

## 1. Read target file
Read SOURCES_G3_GGAMMA.md in full. Note: §3.2 already uses (1/π)∫_0^∞x^{−1/2}(γ+x)^{−1}dx = γ^{−1/2}; the π question reduces to whether (2.7) carries 1/π on the integral.

## 2. CMP 116 p. 12 image (300 dpi, PDF p. 12 = journal p. 12)
(2.5) coupling: exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩); B′ ~ dμ_{C^{(k)}}(B′) on the full volume; then "B′ = (C^{(k)})^{1/2}X". So the coupling reads ⟨Z_0B, C*Δ_kC·Z_0^c·(C^{(k)})^{1/2}X⟩.
The sandwich C^{(k)}(Z_0) appears only in the X-quadratic term (½⟨C*Δ_kCZ_0^c R X, C^{(k)}(Z_0)C*Δ_kCZ_0^c R X⟩), not in the linear coupling.
Check (1): A_exp·R form, one-sided. Not R*AR. No extra C-map between A_exp and R (the C's are inside A_exp = C*Δ_kC). Confirmed at s ≡ 1; s-form on p. 15.

## 3. CMP 116 p. 15 image
(2.14): B-measure dμ_{C^{(k)}(Z_0,σ(Z))}(B) with exp(−⟨B, Γ_k(Z_0,σ(Z))X⟩); X-measure dμ_0(X)|_Z. Text: "Γ_k(Z_0,σ(Z)) = C*Δ_k(σ(Z))CZ_0^c(C^{(k)})^{1/2}(σ(Z))". After (2.15): "we replace the operators by the corresponding operators with σ(Z) = 0, U = U, J = 0".
Claim (1): CONFIRMED. Γ_k(Z_0,0) = 1_{Z_0}·A_exp(0)·1_{Z_0^c}·R(0); left 1_{Z_0} implicit since B lives on Z_0. One-sided A·R. No R*AR, no constraint map in between. σ enters both A_exp and R (both s-truncated), as the author has.

## 4. CMP 116 p. 13 image, (2.7)
(C^{(k)})^{1/2} = (C*Δ_kC)^{−1/2} = (1/π)∫_0^∞dx x^{−1/2}(xI + C*Δ_kC)^{−1} = (1/π)∫_0^{γ_1}… + Σ_{n≥0}(−1)^n/(n+½)·γ_1^{−n−1/2}(C*Δ_kC)^n.
The integral carries 1/π; the series has none (the tail ∫_{γ_1}^∞ gives the series times 1/π, so its missing 1/π is the misprint A7-verify noted; omitting it only overstates the series).
x-integral: ∫_0^∞x^{−1/2}·8/(γ+x)dx = 8π/√γ (substitute x = γt², ∫2dt/(1+t²) = π). Times 1/π gives 8γ^{−1/2}. The author's 8γ_exp^{−1/2} correctly uses the 1/π. A7 §4.4's 4π/√γ dropped the 1/π (loose, harmless).
New page fact: Balaban expands the resolvent via C(xI + C*Δ_kC)^{−1}C* = integral (3.185)[13] with G̃_2 → G̃_3(x), not via a Neumann/Combes–Thomas walk series in A_exp. The s-parameters act on THAT expansion. The author uses WC(iv) walks instead. Bound (2.1) needs only that the s ≡ 0 object = sum of a subset of absolutely summable terms; this holds for any walk expansion if the s-rule is a 0/1 walk weight. But it is the WC(iv) expansion that has the proved 8/(γ_exp+x) absolute sum; Balaban's G̃_3(x) expansion is a different term set. Residue (a) of the author is therefore real and slightly wider: which expansion carries s.

## 5. WC_FULL 4.2, 4.3, 5.3, 5.5; A7 3.3, 4.4
W_N: Σ_ω|A_ω| ≤ 2B_Ae^{−δ_A|b−b′|}; Γ_1 = 2B_AS(δ_A) by Schur. Matches author 2.2–2.3.
WC 5.3/5.5: per walk (4/(γ_exp+x))(c_1ρ)^{|ω|}e^{−½εd}; absolute sum 2× that, i.e. 8/(γ_exp+x)·e^{−½ε|b−b′|}. Stated for A_Z on Z_0. A7 4.4 Remark extends to Λ by "same proof with Z_0 := Λ" (author residue (b)).
Series recomputed: n = 0 term 2γ_1^{−1/2}δ_{bb′}; n ≥ 1 term γ_1^{−1/2}(2B_AS/γ_1)^n/((n+½)S) = γ_1^{−1/2}2^{−n}/((n+½)S). Σ_{n≥1}2^{−n}/(n+½) ≈ 0.49. Total ≤ 2.5γ_1^{−1/2} ≤ 4γ_1^{−1/2}. CONFIRMED (without the 1/π; with it the bound is smaller).
Schur of a product: rows of |K_1||K_2| sum to ≤ (row Schur of K_1)(row Schur of K_2); same for columns. So Schur(E_0R) ≤ Schur(E_0)·Schur(R); also ‖E_0R‖ ≤ ‖E_0‖‖R‖. Either way Ḡ = Γ_1K_½ holds. Rates δ_A and ½ε need not match.
0/1 at s ≡ 0: per-walk weight Π s(Δ) and any power s^k (k ≥ 1, the A7-verify concatenation case) both give 0 or 1 at s ≡ 0. So the truncation only deletes terms, under the walk-weight reading.

## 6. SOURCES_G3_N2 §2–§3 definitions
Λ_0 = 1 + h + h²G_Γ², h = 4/(3γ_exp) (from Λ = 2(1 + 4/(3γ_exp) + 16/(9γ_exp²)G_Γ²)). ε_0 = 2Γ_1²η_M^0; ‖M_0‖ ≤ hε_0; δ_S = h‖M_0‖². So δ_S ≤ h(2hΓ_1²η)² = 4h³Γ_1⁴η². Matches author 4.3.

## 7. A8 Lemma D, 4.5, verify correction
η_M = (16/γ_exp)e^{2·3^dκ_1}W e^{−ε″M/8} (after verify fix /4 → /8). 4.5: at σ ≡ 0 the e^{2·3^dκ_1} factor is absent. So η_M^0 ≤ (16W/γ_exp)e^{−ε″M/8}, κ_1-free. CONFIRMED.
Solve (Hα-2): Ḡ²Λ̄_0·4h³Γ_1⁴(16W/γ_exp)²e^{−ε″M/4} ≤ ¼ ⇔ M ≥ (4/ε″)log[16h³Γ_1⁴Ḡ²Λ̄_0(16W/γ_exp)²]. Matches M_Γ exactly.
(Hα-1): c_5e^{−δ_0M/3}Λ̄_0 ≤ 1/8 ⇔ M ≥ (3/δ_0)log(8c_5Λ̄_0); remainder ≤ 1/(8Λ̄_0). Sum ≤ ¼ + ¼ = ½. CONFIRMED. Λ_0 ≤ Λ̄_0 since Λ_0 is increasing in G_Γ.
Minor: A8 6.3 says η_M^0 uses "real constants"; using ε″ ≤ ε (and W at ε″/8) is valid, only less sharp.
κ_1: absent from M_Γ and M_{α5}. It still enters M through A8 (H_κ), (H_η) (complex measure), which the author lists; order κ_1 → M kept. No cycle: Ḡ, Λ̄_0, W, ε″ are fixed before M (WC constants uniform in M ≥ M_1).

## 8. Grades and verdict
G3_N2 3.5 had K_½ = 4W_½γ_exp^{−1/2} + …; with W_½ = 2S(½ε) this is 8γ_exp^{−1/2}S(½ε). Consistent.
(1) Factorization Γ_k(Z_0,0) = 1_{Z_0}A_exp(0)1_{Z_0^c}R(0): CONFIRMED on pp. 12, 15 images. One-sided A·R; no R*AR; no constraint map between.
(2) G_Γ ≤ Γ_1K_½, M-free: CONFIRMED relative to the s-rule walk-weight reading. Schur/operator norms are submultiplicative; projections and 0/1 deletions cannot raise Schur sums; s^k at s ≡ 0 is also 0/1. W_N and WC constants are uniform in M ≥ M_1, volume, k, Z_0, regular U (WC_FULL 0.10).
(3) (Hα) ⇔ M ≥ max{M_Γ, M_{α5}} (plus Balaban's small α's): CONFIRMED by solving (Hα-1), (Hα-2) explicitly; formulas match. κ_1 absent from M_Γ (A8 4.5). No cycle.
(4) R(0) bound: CONFIRMED. ∫_0^∞x^{−1/2}·8/(γ+x)dx = 8π/√γ; (2.7)'s integral carries 1/π (p. 13 image), so 8γ_exp^{−1/2} is right. The series piece omits the 1/π that the (2.7) series should carry (Balaban misprint): conservative. Series recomputed ≤ 2.5γ_1^{−1/2} ≤ 4γ_1^{−1/2}. A7 §4.4's 4π/√γ_exp is the one that dropped the 1/π (loose, harmless).
Residues (sharpened). (a) p. 13 image: Balaban expands (xI + C*Δ_kC)^{−1} via C(xI + C*Δ_kC)^{−1}C* = (3.185)[13] with G̃_3(x), and the s-parameters act on THAT expansion. The author's bound uses WC(iv) walks. The 0/1 argument needs the s ≡ 0 object to be a sub-sum of the expansion whose absolute sum is bounded. So the identification "R(0) = WC(iv)-walk sum with σ_0-walks deleted" is a reading, as is "s acts on walk terms, not before inversion" (A8 I-b). (b) WC(iv) on Λ (A7 4.4 Remark). (c) W < ∞ [R to WC(ii)].
Verdict: the G3 growth [I] ("G_Γ grows slower than e^{ε″M/8}") is CLOSED in the strong form G_Γ ≤ Ḡ, relative to (a)–(c). No arithmetic error found.
