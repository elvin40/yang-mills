# SOURCES_MC — (M-C): the complex small-field step reduced to printed CMP 116 §2 conditions

Date: 2026-10-28. Status: complete, unverified (Claude Opus).
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not read.
Tags: [P] proved here; [R] reduced to a printed statement (page, equation); [I] inferred, not checked line by line; [V] read on the page image; [num] numerical check.
The ledger (last section) is authoritative.

## 1. Inputs read
IDEAS_FABLE §I7; SOURCES_HHOL §0–§3, §7; SOURCES_HHOL_VERIFY §1–§6; SOURCES_HHOL_LF §6–§7; SOURCES_MB §2–§4; SOURCES_MB_VERIFY §V6.
Inherited facts used below (all from those files):
 - w := (x/g)², |g/x − 1| < ρ. For ρ ≤ 0.1: |w| ≤ (1−ρ)^{−2} = 1.2346, 1/Re w ≤ (1+ρ)²/(1−2ρ²) = 1.2347, |w|/Re w ≤ (1−2ρ²)^{−1} = 1.0204, |w−1| ≤ 0.2346. [P, HHOL 1.3, VERIFY §2, §4]
 - Complex g enters the step only as w: Gaussian covariance C → C/w, vertex V^0 + wV^P. Cut χ and its argument are real and w-free (B̃ = xB units). [P given SM §4.1, HHOL 1.2]
 - Lemma D: |∫F dμ_{C/w}| ≤ (|w|/Re w)^{N_Z/2}∫|F| dμ_{C/Re w}. [P, HHOL 2.2, VERIFY §4]
 - VERIFY correction: if X-modes also scale with w, the per-polymer cost is e^{8nρ²(|Z_0|+|Z|)} ≤ e^{16nρ²|Z|}.

## 2. CMP 116 pp. 15–16 read on page images (150 dpi; 400 dpi crop of the (2.18)–(2.19) lines) [V]
Page numbers = PDF page numbers of balaban/1988_cmp116_rg_approach_II_cluster.pdf.
(2.14) p. 15: one term of H(Z) = s-, σ-, t-, τ-contour integrals (Cauchy circles in σ(Δ), τ(Y)) of
  ∫dμ_0(X)|_Z exp(−½⟨Γ_kX, C^{(k)}Γ_kX⟩)·∫dμ_{C^{(k)}(Z_0,σ)}(B) exp(−⟨B, Γ_kX⟩)·(−1)^{|P|}χ_{k,Y_0}χ^c_{k,P} exp[Σ_{Y∈D}τ(Y)V_k(Y,B)],
  Γ_k(Z_0,σ) = C*Δ_k(σ)CZ_0^c(C^{(k)})^{1/2}(σ). Note: dμ_0(X) is restricted to Z, and X enters only through Γ_k, which contains (C^{(k)})^{1/2}.
(2.15) p. 15: |(2.14)| ≤ exp(−(κ_1−1)(LM)^{−4}|Z\Z_0′|)·Π_{Y∈D}2/|τ(Y)|·∫dμ_0(X)|_Z exp(−½Re⟨…⟩)·|det(C^{(k)})^{−1}/det(Re C^{(k)})^{−1}|^{1/2}·∫dμ_{(Re C^{(k)−1})^{−1}}(B)·exp(−⟨B, Re Γ_kX⟩)χχ^c exp[Σ|τ(Y)||V_k(Y,B)|].
(2.16) p. 16: error forms |R_1(b,b′)| ≤ (O(1)e^{−δ_0M/3} + O(α_0+α_1))exp(−½δ_0|b_−−b′_−|). R_2, R_3 obey the same.
Sentence after (2.16): "M is much bigger than κ_1, especially that e^{−1/3 δ_0M}e^{16κ_1} < 1."
(2.17): determinant quotient ≤ exp((O(1)e^{−δ_0M/3} + O(α_0+α_1))|Z_0|).
(2.18): 1/|τ(Y)| = E_0ε_1C_1α_4^{−1}M^q exp(C_2κ_1) exp(−(1−3δ)κd_k(Y)), α_4 "a small, positive number … to be chosen later".
Sentence after (2.18) [400 dpi crop]: "We assume that ⅛(κ_1 − 1) ≥ (1 − 3δ)κ, C_3 ≤ E_0C_1, and q ≥ 8."
  CORRECTION to HHOL_VERIFY §3: it reads "½(κ_1−1)" and "C_3 ≥ E_0C_1". The image has ⅛ and ≤. The ≤ removes VERIFY's worry that C_3 scales up with E_0 (see §5, (C5)).
(2.19): |τ(Y)|×(1.42) form ≤ ½Σ_{b,b′⊂Y} α_4M^{−4}exp(−¼(κ_1−1)M^{−4}|Y| − (1/16)(κ_1−1)M^{−1}|b_−−b′_−|)|B(b)||B(b′)|.
Sentence: resummed over Y ∈ D_k "yields a constant O(1). In fact the constant is small for κ_1 large, hence we can bound it by 1."
(2.20): Σ_{Y∈D}|τ(Y)||V_k(Y,B)| ≤ ½O(1)α_4Σ_{b⊂Y_0}|B(b)|² + O(1)α_4M^{−4}|Y_0|.
(2.21): R_1, R_2, R_3 bounded by ½(O(1)e^{−δ_0M/3} + O(α_0+α_1))(‖ZX‖² + ‖Z_0B‖²).
(2.22): χ_{k,Y_0}χ^c_{k,P} ≤ exp(−½γ_2ε_1²g_k^{−2}|P| + ½γ_2‖PB‖²), "γ_2 is a small, positive constant".

## 3. CMP 116 pp. 17–18 read on page images (150 dpi) [V]
(2.23) p. 17: after the replacements, the integral is ∫dμ_0(X)|_Z exp(−½⟨Γ_k(Z_0,0)X, C^{(k)}(Z_0,0)Γ_k(Z_0,0)X⟩ + ½α_5‖ZX‖²)·∫dμ_{C^{(k)}(Z_0,0)}(B) exp(−⟨B, Γ_k(Z_0,0)X⟩ + ½α_5‖Z_0B‖²),
  "where α_5 = O(1)e^{−1/3 δ_0M} + O(α_0+α_1) + O(1)α_4 + γ_2."
(2.24): B-integral = |det C^{(k)−1}/det(C^{(k)−1} − α_5I)|^{1/2}·exp(½⟨Γ_kX, (C^{(k)−1} − α_5I)^{−1}Γ_kX⟩).
Sentence: "Of course we have assumed that α_5 is sufficiently small, e.g. α_5‖C^{(k)}(Z_0,0)‖ < ½. The factor with the determinants can be estimated by exp O(1)α_5|Z_0|." Remainder of the X-form ≤ ½O(α_5)‖ZX‖².
(2.25): ∫dμ_0(X)|_Z exp ½O(α_5)‖ZX‖² = Π_{b∈Z}(1 − O(α_5))^{−½d(g)} ≤ exp(O(α_5)|Z|). (Sign of the exponent: the image shows "1/2 d(g)"; it must be −½d(g) for a Gaussian moment; the "≤ exp O(α_5)|Z|" is what is used.)
(2.26): |(2.14)| ≤ exp(−(κ_1−1)(LM)^{−4}|Z\Z_0′|)·[Π_{Y∈D}2E_0ε_1C_1α_4^{−1}M^q exp C_2κ_1 exp(−(1−3δ)κd_k(Y))]·exp(−½γ_2ε_1²g_k^{−2}|P|)·exp O(1)α_5|Z|.
Resummation order (p. 17): D at fixed Y_0; then Y_0, P at fixed Z_0; then Z_0 at fixed Z_0′; then Z_0′ ⊂ Z.
p. 18:
(2.27): Σ_{Y∈D}(d_k(Y) + 5) ≥ d_k(Y_0) + 5 (geometry, Y_0 connected).
Condition before (2.28): "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1", with "α_6 … a sufficiently small, positive constant".
(2.28): Π_{Y∈D}(…) ≤ Π α_6exp(−δκd_k(Y))·2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp(−(1−4δ)κd_k(Y_0)).
(2.29): "For κ sufficiently large and α_6 sufficiently small": Σ_D Π_{Y∈D} α_6exp(−δκd_k(Y)) ≤ 1.
(2.30): (3·2³)^{−1}M^{−4}|Y| ≤ d_k(Y) ≤ M^{−4}|Y| − 1 (geometry).
P-sum: |P| ≥ ½M^{−4}|Z_0\Y_0|; the |P| factor is split into five equal factors.
(2.31): Σ_P exp(−(1/20)γ_2ε_1²g_k^{−2}M^{−4}|Z_0\Y_0|)exp(−(1/10)γ_2ε_1²g_k^{−2}|P|) ≤ exp{−M^{−4}|Z_0\Y_0|[(1/20)γ_2ε_1²g_k^{−2} − 4M⁴exp(−(1/10)γ_2ε_1²g_k^{−2})]} ≤ 1, "for g_k², i.e. γ² sufficiently small, depending on M and κ."
(2.32): Σ_i d_k(Y_i) + 4M^{−4}|Z_0\Y_0| ≥ d_k(Z_0) (geometry).
Condition at foot of p. 18: "Assuming (1/20)γ_2ε_1²/g_k² ≥ (1/20)γ_2ε_1²/γ² ≥ 4κ," (continues on p. 19).

## 4. CMP 116 pp. 19–20 read on page images (150 dpi) [V]
p. 19: ε_2 := 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1.
(2.33): [Π_iε_2exp(−(1−4δ)κd_k(Y_i))]exp(−(1/10)γ_2ε_1²g_k^{−2}M^{−4}|Z_0\Y_0|) ≤ max{ε_2, exp(−(1/20)γ_2ε_1²/γ²)}exp(−(1−4δ)κd_k(Z_0)). "We have used the assumption ε_2 ≤ 1". "For simplicity let us assume that exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2."
(2.34): Σ_{Z_0\Y_0}exp(−(1/20)γ_2ε_1²g_k^{−2}M^{−4}|Z_0\Y_0|) ≤ exp(exp(−(1/20)γ_2ε_1²/γ²)M^{−4}|Z_0|); times exp(−δκd_k(Z_0)) "can be estimated by 1" (uses (2.30) and the p. 18 condition (1/20)γ_2ε_1²/γ² ≥ 4κ).
(2.35): |Σ_{D,P}(2.14)| ≤ exp(−(κ_1−1)(LM)^{−4}|Z\Z_0′|)[Π_iε_2exp(−(1−5δ)κd_k(Z_i))]exp O(1)α_5|Z|.
(2.36): 2d_k(Z_i) ≥ Ld_{k+1}(Z_i′) (geometry).
Z_0-sum (pp. 19–20): via (1.28) with κ → δκ and (L+2)^4 cubes; "assuming that (L+2)^4O(1)ε_2 ≤ ½"; family sum via (2.29) "valid for all k"; "Assuming that 2(L+2)^4O(1)ε_2 exp 5κ ≤ 1".
(2.37): |Σ_{D,P,Z_0}(2.14)| ≤ exp(−(κ_1−1)(LM)^{−4}|Z\Z_0′|)[Π_i2(L+2)^4O(1)ε_2exp(−(1−7δ)½Lκd_{k+1}(Z_i′))]exp O(1)α_5|Z|.
Z_0′-sum (p. 20): "Of course, we assume that ½(κ_1 − 1) ≥ 2Lκ." Sum over Z\Z_0′ ≤ exp(exp(−½(κ_1−1))(LM)^{−4}|Z|). Last factor written exp O(1)(LM)^4α_5(LM)^{−4}|Z|.
  "We assume that (LM)^4α_0, (LM)^4α_1, (LM)^4α_4, (LM)^4γ_2 are bounded by a constant independent of M, for example by 1. Then O(1)(LM)^4α_5 + exp(−½(κ_1−1)) is bounded by an absolute constant. We use the factor exp(−δ½Lκd_{k+1}(Z)), and the inequality (2.30), to bound the exponentials by 1."
  C_3 := 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1.
Lemma 3 (2.38): "Under all the above restrictions on the constants M, κ, κ_1, α_0, α_1, α_4, α_6, γ_2, γ, ε_1": |H(Z)| ≤ C_3ε_1exp(−(1−8δ)½Lκd_{k+1}(Z)).
Note on the p. 16 "C_3 ≤ E_0C_1": the p. 20 definition makes C_3 a multiple of E_0C_1 by 4(L+2)^4O(1)α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}, which is ≥ 1 for the stated small α_4, α_6. So the p. 16 inequality reads as a misprint or uses another C_3; it is not used in the argument after p. 16. Not load-bearing below. [I]
Note on the "absolute constant" step: the (LM)^4α_5 term enters exp O(1)(LM)^4α_5·(LM)^{−4}|Z|, and the factor exp(−δ½Lκd_{k+1}(Z)) ≤ exp(−δ½Lκ(3·2³)^{−1}(LM)^{−4}|Z| + …) by (2.30) at scale k+1 absorbs it when δLκ/48 ≥ absolute constant + O(1)(LM)^4α_5. So this is a "κ large" condition. [I: (2.30) at scale k+1 has unit LM; reading of "to bound the exponentials by 1"]

## 5. CMP 116 pp. 10–11 and 21 read on page images (150 dpi) [V]
p. 10, (1.37)–(1.40): the vertex is built term by term. Example (1/g_k²)V(H_1B′) from the Wilson action; each plaquette term is localized by (1.38); "(1.39) |(1.38)| ≤ C_3(e^{16κ_1}|B′|)³M⁴exp(−(κ_1−1)M^{−4}|Y\□|), where C_3 is an absolute constant." (1.40): second-order Taylor coefficients ≤ ½C_3 3³e^{7·8κ_1}|B′|exp(−⅛(κ_1−1)d_k(Y) − ½(κ_1−1)M^{−4}|Y|) if e^{16κ_1}|B′| ≤ ⅓a_1; "Taking B′ as in (1.19) we obtain the above bound with |B′| replaced by C_1ε_1."
p. 11: "it can be done in the same way for all terms in P^{(k)}(g_k, U, J, B), and we obtain the same decompositions and bounds, possibly with other absolute constants … Our last step is to sum up all the expressions with the same localization domain."
Lemma 2 (1.41)–(1.43): P^{(k)}(g_k,U_{k+1},B) + {…} = Σ_{Y∈D_k}V_k(Y,U_{k+1},B); V_k(Y,B) = ½⟨Q(Y,B)B,B⟩ + V″_k(Y,B); |Q(Y,B,b,b′)| ≤ C_3ε_1M⁴exp C_2κ_1 exp(−⅛(κ_1−1)d_k(Y) − ½(κ_1−1)M^{−4}|Y|) (1.43); V″_k obeys (1.36).
Consequence: the C_3 in "C_3 ≤ E_0C_1" (p. 16) is the absolute constant of (1.39)/(1.43). It is NOT the C_3 defined on p. 20. Balaban reuses the symbol. So p. 16 is not a misprint, and §4's note is resolved. The p. 16 condition is what makes (1.43)×|τ(Y)| ≤ (2.19): ratio C_3ε_1M⁴e^{C_2κ_1}/(E_0ε_1C_1α_4^{−1}M^qe^{C_2κ_1}) ≤ α_4M^{−4} needs C_3 ≤ E_0C_1 and q ≥ 8; the d_k decay needs ⅛(κ_1−1) ≥ (1−3δ)κ. [P, arithmetic on the printed displays]
p. 21: (2.39) Ursell series with |ρ^T|; "we can repeat all the considerations and bounds of the paper [26], for κ sufficiently large, and ε_1 sufficiently small"; (2.40); (2.41) |E^{(k+1)}(X)| ≤ O(1)C_3ε_1exp(−(1−10δ)½Lκd_{k+1}(X)).
 "(1−10δ)½L = 1, or δ = (1/10)(1 − 2L^{−1})" (definition). "O(1)C_3ε_1 ≤ ½E_0. In fact this assumption is unessential, because the constant C_3ε_1 is small anyway." log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1) part: bound with κ → δ_0M and an absolute constant ½E_0; "we take M sufficiently large, so that δ_0M ≥ κ."

## 6. Task (1): every inequality CMP 116 §2 imposes, with type
Type: S = strict "<" or "sufficiently small/large" (open); C = closed "≤/≥" on a fixed choice; D = definition; G = geometry (no free constant).
| # | where | inequality | type |
| B1 | p. 16 after (2.16) | e^{−δ_0M/3}e^{16κ_1} < 1 ("M much bigger than κ_1") | S |
| B2 | p. 16 after (2.18) | ⅛(κ_1 − 1) ≥ (1−3δ)κ | C |
| B3 | same | C_3 ≤ E_0C_1 (C_3 of (1.43)) | C |
| B4 | same | q ≥ 8 | C |
| B5 | p. 16 after (2.19) | resummed |τ|-form constant "small for κ_1 large … bound it by 1" | S |
| B6 | (2.18), (2.22), (2.28) | α_4, γ_2, α_6 "small, positive" | S |
| B7 | p. 17 after (2.24) | α_5‖C^{(k)}(Z_0,0)‖ < ½ ("e.g."), α_5 = O(1)e^{−δ_0M/3}+O(α_0+α_1)+O(1)α_4+γ_2 | S |
| B8 | p. 18 before (2.28) | ε_2e^{5κ} ≤ 1, ε_2 := 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^qe^{C_2κ_1} | C |
| B9 | (2.29) | κ large, α_6 small: Σ_DΠα_6e^{−δκd_k(Y)} ≤ 1 | S |
| B10 | (2.31) | "g_k², i.e. γ² sufficiently small, depending on M and κ" | S |
| B11 | p. 18 foot | (1/20)γ_2ε_1²/γ² ≥ 4κ | C |
| B12 | p. 19 | ε_2 ≤ 1 | C |
| B13 | p. 19 | exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2 | C |
| B14 | p. 19 after (2.34) | exp(−(1/20)γ_2ε_1²/γ²)M^{−4}|Z_0| − δκd_k(Z_0) ≤ 0; by (2.30) ⇐ e^{−γ_2ε_1²/(20γ²)} ≤ δκ/24 | C (γ small) |
| B15 | p. 20 | (L+2)^4O(1)ε_2 ≤ ½ | C |
| B16 | p. 20 | 2(L+2)^4O(1)ε_2e^{5κ} ≤ 1 | C |
| B17 | p. 20 | ½(κ_1−1) ≥ 2Lκ | C |
| B18 | p. 20 | (LM)^4α_0, (LM)^4α_1, (LM)^4α_4, (LM)^4γ_2 ≤ 1 ("for example by 1": the bound is a free choice) | C, free budget |
| B19 | p. 20 | O(1)(LM)^4α_5 + e^{−½(κ_1−1)} ≤ K_abs, then exp(K_abs(LM)^{−4}|Z|)·exp(−δ½Lκd_{k+1}(Z)) ≤ 1 via (2.30): needs δLκ/48 ≥ K_abs [I: my reading of "to bound the exponentials by 1"] | C in κ |
| B20 | p. 21 (2.39)–(2.40) | Ursell convergence "κ sufficiently large, ε_1 sufficiently small" | S |
| B21 | p. 21 | (1−10δ)½L = 1 | D |
| B22 | p. 21 | O(1)C_3ε_1 ≤ ½E_0 (C_3 of p. 20) | C ("unessential") |
| B23 | p. 21 | δ_0M ≥ κ | C |
Geometry (no free constant): (2.27), (2.30), (2.32), (2.36), |P| ≥ ½M^{−4}|Z_0\Y_0|.
Order of choice [I, from the wording]: L, κ; then κ_1; then M; then α_0, α_1, α_4, α_6, γ_2 ≤ (LM)^{−4}·budget; then ε_1; then γ. Every C-type item is either free of the late constants (B2, B4, B17, B21, B23) or an upper bound on ε_1 or γ given the earlier ones (B8, B12, B15, B16, B22 on ε_1; B11, B13, B14 on γ). So the admissible ε_1 form a down-set (0, ε̄_1], and for fixed ε_1 the admissible γ form a down-set. These are the "open" structures used below.

## 7. Task (2): where complex w enters, and the substitution per condition
Notation. λ_V := max(c, |w|) ≤ max(c, 1.235) ≤ 1.235c (c ≥ 1 = input-ball factor, c = 2 in D3W8/W4). f := sup|w|·sup(1/Re w) ≤ 1.525 [num: 1.5243 at ρ = 0.1]. G := Gaussian per-site cost (§7.3).
7.1 Entry points of w in one term (2.14) [P given SM §4.1 and HHOL 1.2; X-scaling is (I-X) below]:
 (e1) the joint (X, B) Gaussian form is multiplied by w. Modulus: phase drops; comparison operator Re w·(form at (U,0)). Normalization quotient (|w|/Re w)^{N/2}, N = modes of X on Z plus modes of B on Z_0 (Lemma D).
 (e2) error forms R_1, R_2, R_3 of (2.16) are differences of w-scaled forms: coefficients ×|w| ≤ 1.235.
 (e3) vertex V^0 + wV^P: coefficients ×λ_V (§8).
 (e4) cut χ_{k,Y_0}χ^c_{k,P}: real, w-free, evaluated at the real reference x. (2.22) holds verbatim with g_k → x.
 (e5) covariance of the dominating Gaussian is C^{(k)}(Z_0,0)/Re w ≤ 1.235·C^{(k)}(Z_0,0).
 (e6) the σ- and s-contours and the factor exp(−(κ_1−1)(LM)^{−4}|Z\Z_0′|): w-free. [I: this factor comes from the σ-Cauchy estimates and the decay of the localized operators; w only rescales them by a constant]
7.2 Substitution, condition by condition.
 B1, B2, B4, B17, B21, B23, geometry: no coupling, no α_5, no ε_1. Unchanged. [P]
 B3: (e3) turns the left side into λ_VC_3. Not implied by B3 at equality (closed). Absorb in the τ-radius: use (2.18) with E_0 replaced by λ_VE_0. Then |τ|·|V^0 + wV^P| obeys (2.19)–(2.20) verbatim. [P, §8]
 Price: ε_2 → λ_Vε_2 and the p. 20 constant C_3 → λ_VC_3 (both linear in E_0).
 B8, B12, B15, B16, B22: closed upper bounds on ε_2 or C_3ε_1, both linear in ε_1. With ε_1′ := ε_1/λ_V: λ_Vε_2(ε_1′) = ε_2(ε_1), λ_VC_3ε_1′ = C_3ε_1. Each modified inequality is Balaban's at ε_1. [P]
 B10, B11, B13, B14: depend on ε_1 and γ only through ε_1/γ, ε_2, M, κ. With γ′ := γ/λ_V the ratio ε_1′/γ′ = ε_1/γ. B13: left side unchanged, right side λ_Vε_2(ε_1′) = ε_2(ε_1). So each is Balaban's at (ε_1, γ). [P]
 B5, B6, B9, B20: open; no w (B5 after the B3 absorption; B20 sees only (2.38), which is Balaban's at ε_1 by §8). [P]
 B7 (α_5‖C‖ < ½): by (e2), (e5) the absorbed forms give α_5^c := 1.235[O(1)e^{−δ_0M/3} + O(α_0+α_1)] + O(1)α_4 + γ_2 against covariance ≤ 1.235C. Needed: α_5^c‖C/Re w‖ < ½ ⇐ 1.525·α_5‖C‖ < ½ ((2.24′) of HHOL, confirmed: 1.53 = 1.235²). Not implied by B7 at Balaban's α's. Absorbed in 7.3.
 B18, B19: α_5 → α_5^c, and a new per-site factor exp(G|Z|) joins exp O(1)α_5|Z| of (2.26). Absorbed in 7.3.
7.3 The Gaussian budget [P given (I-X); constants from Lemma D].
 G: per real mode (|w|/Re w)^{1/2} ≤ (1−2ρ²)^{−1/2} ≤ e^{2ρ²} [num 1.01015 ≤ 1.0202 at ρ = 0.1]. Modes: ≤ 4n per site for B on Z_0 and ≤ 4n per site for X on Z (n = N²−1, (2.25) prints d(g) per bond). So G ≤ 2ρ²·4n·(|Z|+|Z_0|)/|Z| ≤ 16nρ² (HHOL_VERIFY's correction; HHOL's 8n is for B only).
 Write Balaban's bound ᾱ_5 := e_M + θa(LM)^{−4}, with e_M := O(1)e^{−δ_0M/3}, a := the absolute constant from O(α_0+α_1)+O(1)α_4+γ_2 at budget θ = 1 (B18). Balaban's choice: θ = 1, ᾱ_5‖C‖ < ½, K_abs ≥ O(1)(LM)^4ᾱ_5.
 Complex choice: θ = ¼ (i.e. (LM)^4α_i ≤ ¼ for α_0, α_1, α_4, γ_2: B18 is a free budget, B6 asks only "small"). Then
  f·ᾱ_5(θ=¼) + G ≤ 1.525(e_M + ¼a(LM)^{−4}) + G ≤ e_M + a(LM)^{−4} = ᾱ_5(θ=1)
 (α_5^c ≤ 1.235ᾱ_5 by (e2); the second 1.235 is 1/Re w from (e5). In B19 G is compared with α_5 inside O(1)(LM)^4α_5; if that O(1) is < 1, put it into a.)
 if (M1) (LM)^4e_M ≤ 0.3a and (M2) G(LM)^4 ≤ 0.45a. [num: 1.3 − 1.525·0.55 = 0.461 ≥ 0.45]
 Under (M1), (M2): B7 at complex w is Balaban's B7; B19's left side is ≤ Balaban's K_abs; B18 holds with room. So every α_5 item is implied by Balaban's. [P]
 (M1) is an "M sufficiently large" condition in the class of B1 ((LM)^4e^{−δ_0M/3} → 0). (M2) is the corrected (C4″): ρ_0 ≤ (LM)^{−2}(0.45a/(16n))^{1/2}. a is Balaban's unprinted absolute constant, so ρ_0 is explicit up to that constant.
 Alternative (not used): keep θ = 1 and enlarge K_abs to 1.525K_abs + G(LM)^4. Then B19 needs κ larger, which re-chooses κ_1, M, and enters the large-field p_0 condition (CMP 122, p. 389). The budget route keeps L, κ, κ_1 fixed and moves only M (via M1, if Balaban's M does not already satisfy it), the α's, ε_1, γ.
Correction to HHOL §3.1 and (C4″): 8nρ_0²(LM)^4 ≤ 1 does NOT put the new factor "under the same rule". It adds an O(1) to K_abs, which costs κ (B19). It must sit inside the α-budget: (M2).

## 8. Task (3): the vertex part the majorant does not cover
8.1 Split [R to CMP 116 p. 11 + I]. In B̃ = xB units the fluctuation action is V^0 + wV^P. V^P = the u-prefactored P^{(k)} terms (the (1/g_k²)V(H_1B′)-type terms of p. 10); V^0 = the curly bracket {…} (E_k differences, log σ, Jacobian). Balaban localizes each term of P^{(k)} separately ((1.37)–(1.40); p. 11 "the same decompositions and bounds, possibly with other absolute constants") and only then sums "the expressions with the same localization domain". So before that last sum:
  V^P_k(Y) = ½⟨Q^P B, B⟩ + V″^P,  V^0_k(Y) = ½⟨Q^0 B, B⟩ + V″^0,
 each obeying (1.43) and (1.36) with absolute constants C_3^P, C_3^0 (and B_0^P, B_0^0). Choose Balaban's C_3 := C_3^P + C_3^0 (and B_0 likewise); then Lemma 2 holds as printed. [R to p. 11 for V^P; I for V^0: the {…} part is bounded linearly in the input activities, so inputs in the ball cE_0 give the factor c]
8.2 Complex bound [P given 8.1]. For B on Balaban's real domain (1.34) (unchanged: the argument is xB, real):
  |Q^0 + wQ^P| ≤ c|Q^0|_b + |w||Q^P|_b ≤ λ_V·(right side of (1.43)),
  |V″^0 + wV″^P| ≤ λ_V·(right side of (1.36)),
 λ_V = max(c, |w|) ≤ max(c, 1.235). No Taylor expansion in w is needed: the vertex is affine in w with real-domain coefficients.
8.3 Absorption [P]. Use the τ-circle (2.18) with E_0 → λ_VE_0:
  1/|τ(Y)| = λ_VE_0ε_1C_1α_4^{−1}M^q exp C_2κ_1 exp(−(1−3δ)κd_k(Y)).
 Then |τ(Y)|·λ_V·(1.43) = Balaban's |τ(Y)|·(1.43), so (2.19) and (2.20) hold verbatim under B2, B3, B4 as printed. The Cauchy factor Π_{Y∈D}2/|τ(Y)| of (2.15) becomes Π 2λ_VE_0ε_1C_1α_4^{−1}M^q e^{C_2κ_1}e^{−(1−3δ)κd_k(Y)}, i.e. ε_2 → λ_Vε_2 in (2.26)–(2.37).
 With ε_1′ = ε_1/λ_V (cut, Lemma 2 domain, and τ-radius all at ε_1′): every bound linear in ε_1 returns to its value at ε_1. In particular 1/|τ(Y)| at (λ_VE_0, ε_1′) equals Balaban's at (E_0, ε_1), and the vertex bound λ_V·C_3ε_1′ equals Balaban's C_3ε_1.
8.4 The (2.19)-type polymer bound survives [P given 8.1–8.3 and §7]. Chain:
  |(2.14)^c| ≤ e^{G|Z|}·[(2.26) with ε_2(ε_1), α_5 → f·ᾱ_5(¼), cut at (ε_1′, x)].
 Run p. 18–20 with the substitutions of §7.2. Lemma 3 (2.38) holds on the disc:
  |H^c(Z)| ≤ C_3ε_1·exp(−(1−8δ)½Lκd_{k+1}(Z)),  C_3ε_1 = Balaban's value at ε_1 (equal to λ_VC_3ε_1′).
 Then (2.39)–(2.41) (B20, B22) give |E^{(k+1),c}(X)| ≤ O(1)C_3ε_1exp(−(1−10δ)½Lκd_{k+1}(X)) ≤ ½E_0·exp(…), Balaban's output, uniformly on |g/x − 1| < ρ_0.
8.5 The cut [P]. (2.22) is a pointwise inequality for real B. The cut variable is B̃ = xB, so g_k in (2.22) is the real x. Complex g never enters χ. With ε_1′: exp(−½γ_2ε_1′²x^{−2}|P| + ½γ_2‖PB‖²); B10, B11, B13, B14 use it with γ′ = γ/λ_V (ratio fixed). The P-sum (2.31) is real and unchanged.

## 9. Task (4): Lemma MC
Lemma MC. Let Balaban's constants (L, κ, κ_1, M, α_0, α_1, α_4, α_6, γ_2, ε_1, γ) satisfy B1–B23 of CMP 116 §2 (and §1). Let c ≥ 1 be the input-ball factor and λ_V := max(c, 1.235). Put
  α_i′ := α_i/4 (i = 0, 1, 4) and γ_2′ := γ_2/4 (any values with (LM)^4α_i′ ≤ ¼ also work),
  ε_1′ := ε_1/λ_V, γ′ := γ/λ_V (re-chose ε_1, γ after the α's if Balaban's are not already at budget ¼),
  ρ_0 := min{0.1, (LM)^{−2}(0.45a/(16n))^{1/2}}, n = N² − 1, a = Balaban's absolute constant in α_5 (§7.3),
 and assume (M1) O(1)(LM)^4e^{−δ_0M/3} ≤ 0.3a (an "M large" condition of the B1 class).
Then for every k, every volume, every real reference x ≤ γ′, and every complex g with |g/x − 1| < ρ_0, and complex inputs in the ball cE_0: each term (2.14) is holomorphic in g; the activities satisfy |H(Z)| ≤ C_3ε_1exp(−(1−8δ)½Lκd_{k+1}(Z)) with Balaban's C_3ε_1; the Ursell series (2.39) converges; |E^{(k+1)}(X)| ≤ ½E_0exp(−κd_{k+1}(X)). With HHOL 3.4 (β^{(0)} u-free in B̃ units, Π linear and g-free): β_j is holomorphic on ∪_xP_{ρ_0}(x) and |β_j| ≤ M_β := sup_j|β_j^{(0)}| + C_Π·E_0, uniform in j, k, volume. (M_β renames HHOL's "M", which clashes with the cube size M.)
Proof. §7.2 shows each B-item at the primed constants and complex w is implied by the same item at Balaban's constants; §7.3 does the α_5 items under (M1), (M2); §8 does the vertex and the cut. Holomorphy and the log: HHOL 2.4, 3.3 (Fubini + Morera on a w-independent majorant; zero-free partition function from the convergent cluster series). ∎ [P given (I-X), (I-V0), (I-ε), (I-ord), SM §4.1]
Explicit shrink factors at c = 2: λ_V = 2; ε_1′ = ε_1/2, γ′ = γ/2, α′ = α/4. At c = 1: λ_V = 1.235; ε_1′ = 0.81ε_1, γ′ = 0.81γ.
Output note: the output is ≤ ½E_0 (Balaban's), so it lies in the ball cE_0 for every c ≥ 1 with room. This is better than HHOL 3.3's 0.62cE_0 (which carried 1.235c through C_3).

## 10. Task (5): ledger (authoritative)
[V] page images this session: CMP 116 pp. 10, 11, 15–21 (150 dpi; p. 16 lines (2.18)–(2.19) at 400 dpi). Transcriptions in §2–§5.
[V] Corrections to HHOL_VERIFY §3: p. 16 prints "⅛(κ_1 − 1) ≥ (1−3δ)κ, C_3 ≤ E_0C_1" (not "½", not "≥"); that C_3 is the (1.39)/(1.43) absolute constant, distinct from the p. 20 C_3. VERIFY's "C_3 scales with E_0 → (C5) double counts" does not apply to p. 16; for the p. 20 C_3 the scaling is handled by ε_1′ (§8.3).
[P] proved here:
 - The list B1–B23 with types (§6) and the order-of-choice down-set structure (given the [I-ord] reading).
 - Substitution: each B-item at complex w and primed constants is implied by Balaban's item (§7.2).
 - Gaussian budget: θ = ¼ and (M1), (M2) give f·ᾱ_5 + G ≤ Balaban's ᾱ_5 [num 0.461 ≥ 0.45] (§7.3).
 - Vertex: affine in w with real-domain coefficients; λ_V factor absorbed by (2.18) with E_0 → λ_VE_0 and ε_1′ = ε_1/λ_V; (2.19)–(2.20) verbatim; (2.38) with Balaban's C_3ε_1 (§8).
 - Cut real: (2.22) at the real reference x; ratio ε_1/γ kept by γ′ = γ/λ_V (§8.5).
 - Correction to HHOL (C4″): 8nρ_0²(LM)^4 ≤ 1 is not sufficient as an absorption; replace by (M2) ρ_0 ≤ (LM)^{−2}(0.45a/16n)^{1/2}, with the X-mode doubling 8n → 16n.
[R] reduced to printed statements:
 - Lemma 2 split into P^{(k)} and {…} parts with separate bounds: CMP 116 p. 11 "same decompositions and bounds, possibly with other absolute constants" (for V^P).
 - Balaban's conditions B1–B23 as printed on pp. 16–21; Lemma 3 (2.38); (2.39)–(2.41) via "[26]" (Balaban's own citation, not re-read).
 - Holomorphy/log/β_j: HHOL 2.4, 3.3–3.5 (unchanged status).
[I] inferred, not checked line by line:
 - (I-X) w scales the X-modes of dμ_0(X)|_Z like the B-modes (joint (X,B) form ×w). If X stays unit white noise, w enters Γ_k as w^{−1/2} and Lemma D does not apply as written. Inherited from HHOL 2.1 / VERIFY §4; not resolved here. G = 16nρ² covers the scaled case only.
 - (I-V0) the {…} part's bound is linear in the input-ball radius (factor c).
 - (I-ε) shrinking ε_1 (and the α's to budget ¼) keeps §1 (pp. 6–11) and the Part I induction valid: all ε_1 and α conditions there are upper bounds. Not re-read for this file. In CMP 119/122 the cut becomes a g-dependent threshold; HHOL_LF freezes it at x*; the ε_1 shrink then means a shrink of that threshold's prefactor, not checked.
 - (I-ord) the order of choice L, κ → κ_1 → M → α's → ε_1 → γ, read from the wording ("depending on M and κ", "M much bigger than κ_1", "(LM)^4α … bounded").
 - B19 reading: "bound the exponentials by 1" = δLκ/48 ≥ K_abs via (2.30) at scale k+1.
 - (M1) holds at Balaban's M or after raising M within "M large"; raising M re-chooses α, ε_1, γ only.
 - (e6) the factor exp(−(κ_1−1)(LM)^{−4}|Z\Z_0′|) is w-free.
 - a > 0 is Balaban's unprinted absolute constant; ρ_0 is explicit only up to it.
Regrade of (M-C). Before: [R] to "(C1′)–(C4′), (C4″), (2.24′), (C5)" — labels not printed. Now: REDUCED to printed CMP 116 §2 conditions B1–B23 (pp. 16–21) plus Lemma 2 (p. 11), with explicit shrinks ε_1′ = ε_1/λ_V, γ′ = γ/λ_V, α′ = α/4, ρ_0 by (M2), and one added "M large" condition (M1). Grade: [R to printed CMP 116 §2] MODULO (I-X), (I-V0), (I-ε). (I-X) is the one item that could fail as stated (white-noise X); the other two are structural readings. Recommended label: "(M-C): reduced to printed CMP 116 §2 conditions; open items (I-X), (I-V0), (I-ε)." Not "closed".
Status: complete. Unverified.
