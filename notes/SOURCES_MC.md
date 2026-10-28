# SOURCES_MC — (M-C): the complex small-field step reduced to printed CMP 116 §2 conditions

Date: 2026-10-28. Status: in progress, unverified (Claude Opus).
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
