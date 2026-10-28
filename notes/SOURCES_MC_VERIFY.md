# SOURCES_MC verification (independent)

Date 2026-10-28. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md, no ONLINE_SWEEP.md.

## 1. p. 15–16 on images (130 dpi; 400 dpi crops of (2.18)–(2.19)) [V]
- Line after (2.18) reads "⅛(κ_1 − 1) ≧ (1 − 3δ)κ, C_3 ≦ E_0C_1, and q ≧ 8". MC §2 correct; HHOL_VERIFY §3 ("½", "≥") misread.
- (2.19) exponent: −¼(κ_1−1)M^{−4}|Y| − (1/16)(κ_1−1)M^{−1}|b_−−b′_−|. Matches MC §2.
- (2.15) carries dμ_0(X)|_Z with NO covariance subscript; the second measure has covariance (Re C^{(k)−1})^{−1}. (2.14): X enters only via Γ_k X, Γ_k = C*Δ_k C Z_0^c (C^{(k)})^{1/2}. Used for (I-X) below.
## 2. pp. 10–13 on images; (I-X) and the vertex [V/P]
- p. 12 (2.5)–(2.6) [V]: X comes from the linear change B′ = (C^{(k)})^{1/2}X inside dμ_{C^{(k)}}(B′); the result is Π_b ∫dX(b)e^{−½|X(b)|²}/(2π)^{½d(g)}. So Balaban's dμ_0(X) is the UNIT Gaussian. C^{(k)} = (C*Δ_kC)^{−1} ((2.7), p. 13).
- (I-X) settled [P]. At complex w the fluctuation form is w·⟨B, C*Δ_kC B⟩ (B̃ = xB). Keep the REAL square root (C^{(k)})^{1/2} at w = 1 in B′ = (C^{(k)})^{1/2}X (a real linear change, legitimate). Then X ~ I/w, C^{(k)}(Z_0,σ) → C/w, Γ_k = C*Δ_kC·Z_0^c(C^{(k)})^{1/2} → wΓ_k. Every term of the joint (X, B) form in (2.14) is w × Balaban's form, for every σ (the expansion (2.7) of the root is done at w = 1, so it stays w-free). The joint form ½‖X‖² + ½‖C(Z_0)^{−1/2}B + C(Z_0)^{1/2}ΓX‖² is positive. Lemma D then applies to X|_Z and B|_{Z_0}. The alternative "unit X" representation is the same analytic function (equal for w > 0 by X → √w X), but it puts (wA)^{−1/2} inside (2.7), where xI + wA is not homogeneous. The scaled representation is the natural one. So the cost is per (B, X) mode.
- Gaussian cost [P]. Per real mode (|w|/Re w)^{½} ≤ (1−2ρ²)^{−½} ≤ e^{2ρ²} (true value ≈ e^{ρ²}). X: ≤ 4n modes per unit site on Z (p. 12: d(g) per bond, X on bonds of T_1^{(k)*}); B: ≤ 4n per site on Z_0 ⊂ Z. Total ≤ 8nρ²(|Z|+|Z_0|) ≤ 16nρ²|Z|. VERIFY's 16nρ² is right; HHOL's 8nρ² counts B only and is wrong.
- Vertex affine in w [P]. p. 10: the P^{(k)} terms are (1/g_k²)V(H_1B′), Wilson-action expansion. In B̃ variables the whole term is u·V(B̃′) with B̃′ g-free. With B̃ = xB (x real, FIXED): u·V(xB′) = w·x^{−2}V(xB′). Cubic part w·x·B³, quartic w·x²·B⁴: coefficients are powers of the real x, times w. Affine in w, not in (1+ζ). Powers of g = x(1+ζ) appear only in the units B = B̃/g, which MC does not use. (1.40) form: x^{−2}V(xB′) = ⟨Q(xB′)B′, B′⟩ with |Q| ≤ ½C_3 3³e^{56κ_1}|xB′|…, real-domain coefficient. So |Q^0 + wQ^P| ≤ max(c,|w|)(C_3^0+C_3^P)… = λ_V × (1.43) holds, given the split (I-V0). CONFIRMED.
- Caveat: the {…} part (E_k differences, log σ, Jacobian) is w-free only if the history couplings enter only via the input activities. That is (I-V0)/(I-hist), unchanged.
## 3. pp. 9, 17–21 on images; list B1–B23 recount [V]
- Recount from the pages: I find all 23 MC items, wording and types as MC gives them. B1 "<" and B7 "<" are printed strict. B5, B6, B9, B10, B20 are "small/large" (open). B19 reading (δLκ/48 ≥ K_abs via (2.30) at scale k+1) agrees with p. 20.
- Missed (none involves w, none changes the conclusion):
  (m1) p. 15: α_0′, α_1′ "much bigger than" α_0, α_1 (S). Shrinking α_0, α_1 helps it.
  (m2) p. 21 after (2.40): C_3ε_1e^{5κ}O(1)(LM)^{−4}|X| ≤ C_3ε_1e^{5κ}O(1)exp((LM)^{−4}|X|), and exp((LM)^{−4}|X|)·exp(−½δLκd_{k+1}(X)) ≤ 1, i.e. δLκ/48 ≥ 1 by (2.30). Closed, κ only.
  (m3) p. 20: (2.29) reused at scale k+1 with δ½Lκ ("valid for all k"). Same class as B9.
  (m4) p. 17 (2.24)–(2.25): "det factor ≤ exp O(1)α_5|Z_0|" and 1 − O(α_5) > 0. Inside B7.
- p. 9 (1.36) [V via text]: |V′_k(Y)| ≤ E_0ε_1C_1M^q e^{C_2κ_1}e^{−(1−2δ)κd_k(Y)}. Same prefactor as (2.18). So |τ|·(1.36) = α_4e^{−δκd_k(Y)} exactly: the V″ term of (2.20) needs no extra condition. (1.36) is linear in E_0 (the input-ball radius): this SUPPORTS (I-V0) for the {…} part on the page.
- p. 21 [V]: "We define ½E_0 as equal to this constant" (the log Z^{(k)}(U) − log Z^{(k)}(1) bound). So E_0 is fixed by Balaban; E_0 → λ_VE_0 in (2.18) is legitimate only as a choice of τ-radius, which is how MC uses it. Output = cluster part ≤ ½E_0 plus log Z part ≤ ½E_0, total ≤ E_0, not ½E_0. The log Z part is w-free (det(wA(U))/det(wA(1))). MC's "output ≤ ½E_0 … room" is for E^{(k+1)} only; at c = 1 the total has no room but stays ≤ E_0.

## 4. Absorption, budget, shrink factors [P/num]
- τ-circle: |τ′|·λ_V·C_3ε_1′M⁴e^{C_2κ_1} with 1/|τ′| = λ_VE_0ε_1′C_1α_4^{−1}M^q… gives (C_3/E_0C_1)α_4M^{4−q}: identical to Balaban's, independent of ε_1 and λ_V. (2.19)–(2.20) hold verbatim. CONFIRMED.
- Budget factor f: pointwise the R-forms carry |w|/Re w ≤ 1.0204; vertex and cut forms carry 1/Re w ≤ 1.21 (num: sup over |s| = 0.1 is 1.2100). MC's f = 1.525 (sup|w|·sup 1/Re w = 1.494 ≤ 1.525) is conservative but valid.
- Arithmetic: (1 − f/4) − 0.3(f − 1) = 0.46125 at f = 1.525 ≥ 0.45. (M2): 16nρ_0²(LM)⁴ ≤ 0.45a ⇔ ρ_0 ≤ (LM)^{−2}(0.45a/16n)^{½}. Correct. a = sum of Balaban's unprinted O(1)'s at budget 1; ρ_0 is explicit only up to a. G joins exp O(1)α_5|Z|: if that printed O(1) < 1, a must carry it (MC says so).
- SHRINK FACTORS UNDERSTATED. α_4′ = α_4/4 multiplies ε_2 and p. 20's C_3 by 4 (both ∝ α_4^{−1}). Restoring them needs ε_1′ = ε_1/(4λ_V). γ_2′ = γ_2/4 with B11 ((1/20)γ_2ε_1²/γ² ≥ 4κ) needs ε_1′/γ′ = 2ε_1/γ, so γ′ = γ/(8λ_V). At c = 2: ε_1/8, γ/16 (not ε_1/2, γ/2), unless Balaban's α_4, γ_2 already sit at budget ¼. MC's "re-chose ε_1, γ after the α's" covers this in words; the printed explicit factors are wrong.
- α_0, α_1 quartering is NOT free outside §2: they are the radii of the inductive analyticity space U^c_{k+1}(X, α_0, α_1) (p. 15) and enter Part I. It belongs in (I-ε), which MC already states covers "α conditions". (LM)⁴α_i ≤ 1 "for example by 1" [V p. 20] is a free choice within §2 only.
- HHOL (C4″): it is insufficient only if L, κ, κ_1 stay fixed (it adds ≈ 1 to K_abs, so κ must grow by B19/(m2)). It is a valid route with κ re-chosen. And it misses the X-modes (8n → 16n). MC's "insufficient" is overstated; its alternative paragraph says the same thing correctly.

## 5. Grades
(1) CONFIRMED with additions: 23 items reproduced, types right, B1/B7 strict; missed (m1)–(m4), all w-free; "free choice" holds within §2 only (α_0, α_1 → (I-ε)).
(2) CONFIRMED in structure, CORRECTED in constants: vertex affine in w (powers of real x, not of 1+ζ); (2.18) absorption exact; (2.19)–(2.20), Lemma 3 verbatim; cut real; 16nρ² right and includes X-modes; (M2) arithmetic right. Corrections: explicit shrinks are ε_1/(4λ_V), γ/(8λ_V) when α_4, γ_2 are quartered; output total ≤ E_0; f conservative; HHOL (C4″) "insufficient" overstated.
(3) CONFIRMED: image shows "⅛(κ_1 − 1) ≧ (1 − 3δ)κ, C_3 ≦ E_0C_1"; C_3 of (1.39)/(1.43) ≠ C_3 of p. 20. "Lemma MC shrinks": CORRECTED (factors above).
(4) CORRECTED (upgrade): (I-X) is RESOLVED by p. 12 (dμ_0 = unit Gaussian from B′ = (C^{(k)})^{1/2}X; the real-root representation makes the joint (X, B) form w × Balaban's; Lemma D applies per (B, X) mode). (I-V0) is supported for the {…} part by (1.36) ∝ E_0. Open: (I-ε) (now explicitly incl. α_0, α_1 and Part I), (I-ord), (M1).
(M-C) status: reduced to printed CMP 116 §2 (pp. 15–21) + Lemma 2 + (1.36) + p. 12 (2.5)–(2.6); open (I-ε), (I-V0) residual (log σ/Jacobian part), (M1). Not closed.
