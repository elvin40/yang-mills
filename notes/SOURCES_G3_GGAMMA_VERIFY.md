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

