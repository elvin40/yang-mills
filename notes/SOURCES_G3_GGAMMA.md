IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_G3_GGAMMA — uniform bound on G_Γ = ‖Γ_k(Z_0, 0)‖ (open [I] of SOURCES_G3_N2 §3.5, VERIFY V5)

Date 2026-10-28. Author: Claude (Opus), unverified. No existing file edited.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags. [P] proved here. [V] page fact or quote from a cited project file. [I] inferred. [R] reduced to a named input.
Sections are appended as work proceeds.

## 0. Target
(Hα) of SOURCES_G3_N2 3.3: (α_5 + G_Γ²δ_S)Λ_0 ≤ ½, Λ_0 = 1 + h + h²G_Γ², h = 4/(3γ_exp), δ_S ∝ e^{−ε″M/4}.
It needs G_Γ to grow slower than e^{ε″M/8} in M. This file tries to show G_Γ ≤ C uniform in M (M ≥ M_*).

## 1. Γ_k(Z_0, 0) as the off-diagonal (X, B) block (task 1)

1.1 Page facts [V, CMP 116 pp. 12, 15, 300 dpi images, read this session].
 p. 12 (2.5): the Z_0-term is written by conditioning on Z_0^c. The coupling exponent is −⟨Z_0^cB′, C*Δ_kCZ_0B⟩, and the outer field B′ has measure dμ_{C^{(k)}}(B′).
 p. 12, after (2.5): "we make the linear change of variables B′ = (C^{(k)})^{1/2}X". X is white noise, Π_b dX(b)e^{−½|X(b)|²}/(2π)^{…}.
 p. 15, after (2.14): "Γ_k(Z_0, σ(Z)) = C*Δ_k(σ(Z))CZ_0^c(C^{(k)})^{1/2}(σ(Z))".
 p. 15 (2.14): the B-integral carries exp(−⟨B, Γ_k(Z_0, σ)X⟩), B on Z_0; the X-integral is dμ_0(X)|_Z.
1.2 Reading [P from 1.1]. Write A_exp := C*Δ_kC (WC_FULL 0.7, A7 §1) and A_exp(s) for its s-weighted walk sum. Then
 Γ := Γ_k(Z_0, 0) = 1_{Z_0}·A_exp(0)·1_{Z_0^c}·R(0),  R(s) := (C^{(k)})^{1/2}(s),
 a map from X-fields on Z to B-fields on V_red(Z_0). So Γ has two factors.
 (a) Coupling factor E_0 := 1_{Z_0}A_exp(0)1_{Z_0^c}. This is the off-diagonal (Z_0, Z_0^c) block of the precision. It is the only place where the B variables (inside Z_0) meet the outer variables. In Q of SOURCES_G3_N2 3.1 it is the whole off-diagonal block, after the outer field is whitened.
 (b) Whitening factor R(0): the σ_0-truncated square root of the full covariance, (2.7) with s ≡ 0.
1.3 Which pieces of A_exp couple X to B [P from WC_FULL 4.1]. A_exp = C*[(QG_1Q*)^{−1} − a − Δ_J + 𝒢*𝒢]C.
 - a·I: diagonal. Its (Z_0, Z_0^c) block is 0 except through the two C factors, which have unit range ≤ 2L. Range of the coupling ≤ 4L.
 - 𝒢*𝒢: block-diagonal in L-blocks (Lemma G(a)). Coupling through C*·C: range ≤ 4L + L. Kernel ≤ 2c_𝒢‖C‖_kernel².
 - Δ_J: local vertex K_{b_0} of range 2L, plus the dangling H_1*J branch (a tree). Coupling range ≤ 4L + 2L at the vertex; the branch adds no range to the (b, b′) kernel (it ends at J). Size O(Mα_0) ≤ c(d, L)α_*.
 - (QG_1Q*)^{−1}: NOT local. It is the A1-W tree sum with exponential decay at rate δ_W. This is the long-range part (§3).
 So E_0 is local up to the (QG_1Q*)^{−1} piece. R(0) is never local; it is a walk sum (§3).
1.4 Where only bonds near ∂Z_0 enter. Every coupling term needs one bond in Z_0 and one in Z_0^c. For the local pieces both lie within 5L of ∂Z_0. This is not needed below: the Schur bound is taken over all of Z_0 × Z_0^c.

## 2. Schur bound on the coupling factor E_0 (task 2)

2.1 Truncation with 0/1 weights [P given the s-rule, CMP 116 p. 3 [V via A8 1.2, A7 4.1]]. The s-rule multiplies the term of a walk (tree) ω by π_ω(s) = Π_{Δ∈σ_0 met by ω}s(Δ). At s ≡ 0, π_ω ∈ {0, 1}: walks that meet σ_0 are deleted, the others keep weight 1. Hence, for any absolutely convergent expansion T = Σ_ωT_ω and any grouping of its terms,
 |T(0)(b, b′)| ≤ Σ_ω|T_ω(b, b′)|.  (2.1)
 Grouping does not matter: a regrouped term is a finite or absolutely convergent sum of raw terms, and its modulus is at most the sum of their moduli. So the [I] tag of SOURCES_G3_N2 3.5 ("weights in [0, 1] walk by walk") reduces to the s-rule itself, which is a page fact. Residue: the rule must act on the walk terms, not on the operator before inversion (A8 I-b; same reading).
2.2 Kernel bound [P given WC_FULL Prop. W_N (4.2)]. By (2.1) and W_N, |A_exp(0)(b, b′)| ≤ Σ_ω|A_ω(b, b′)| ≤ 2B_Ae^{−δ_A|b−b′|}. Compression by 1_{Z_0}·1_{Z_0^c} only restricts the kernel. So |E_0(b, b′)| ≤ 2B_Ae^{−δ_A|b−b′|} 1[b ∈ Z_0, b′ ∈ Z_0^c].
2.3 Schur bound [P]. ‖E_0‖ ≤ max{sup_bΣ_{b′}|E_0(b, b′)|, sup_{b′}Σ_b|E_0(b, b′)|} ≤ 2B_AS(δ_A) = Γ_1 (WC_FULL 4.3).
 This covers all four pieces of 1.3 at once, the long-range (QG_1Q*)^{−1} piece included, because W_N already contains its A1-W tree sum.
 Sharper local split (not needed): the local pieces alone give ≤ ‖C‖_∞²(a + 2c_𝒢 + c_J)·(number of bonds within 5L) with ‖C‖_∞ the kernel sup of C = I − hLQ̃. Only the (QG_1Q*)^{−1} piece needs decay.
2.4 Dependence of Γ_1 [V-WC + P]. B_A = B_A(d, L, a, a_0) (WC_FULL 4.2). δ_A = (1 − θ)min{δ_W, δ_1}, fixed by d, L, a, a_0 and θ (A1_WALK_FULL (H4), WG_FULL). S(δ) = sup_bΣ_{b′}e^{−δ|b−b′|} depends on d and δ only. The Δ_J piece carries c_J = c(d, L)Mα_0 ≤ c(d, L)α_*, bounded by the regularity cap Mα_0 ≤ α_*, not growing in M. ρ_A = max{ρ_W, ρ_*, c(d, L)M_1^{−1}} uses M_1, not M. So Γ_1 is free of M, the volume, k (j), Z_0, and the regular background U. WC_FULL 0.10 states the same: "The constants are uniform in k, η, Z_0, M ≥ M_1, and the background" [V-WC].

## 3. The long-range factor R(0) = (C^{(k)})^{1/2}(0) (task 3)

3.1 The formula [V, CMP 116 p. 13 (2.7), quoted in A7 §1]: R = (1/π)∫_0^{γ_1}dx x^{−1/2}(xI + A_exp)^{−1} + Σ_{n≥0}(−1)^n(n + ½)^{−1}γ_1^{−n−1/2}A_exp^n, each piece expanded into walks; the s-rule acts on those walks (p. 13 "introduced into the operators as before"). R is not local. Its two pieces are bounded by walk-sum Schur constants.
3.2 Integral piece [P given WC(iv) on Λ (A7 4.4 Remark, WC_FULL 5.3 and 5.5)]. For x ≥ 0, (x + A_exp)^{−1} = Σ_ωT_ω(x), |T_ω(x; b, b′)| ≤ (4/(γ_exp + x))(c_1ρ)^{|ω|}e^{−½εd(ω, b, b′)}, and the absolute sum obeys
 Σ_ω|T_ω(x; b, b′)| ≤ (8/(γ_exp + x))e^{−½ε|b−b′|}
 (WC_FULL 5.3: Σ_n(C′_𝒟c_1ρ)^n ≤ 2 under C′_𝒟c_1ρ ≤ ¼; d(ω, b, b′) ≥ |b − b′|). By (2.1) the s ≡ 0 truncation obeys the same bound. Tonelli and (1/π)∫_0^∞x^{−1/2}(γ_exp + x)^{−1}dx = γ_exp^{−1/2} give the kernel bound 8γ_exp^{−1/2}e^{−½ε|b−b′|}, and Schur gives
 ‖integral piece at s ≡ 0‖ ≤ 8γ_exp^{−1/2}S(½ε).
3.3 Series piece [P given A7 3.3 [V-A7]]. Σ_{ω_1…ω_n}|A_{ω_1}···A_{ω_n}|(b, b′) ≤ (2B_A)^nS(θ′δ_A)^{n−1}e^{−(1−θ′)δ_A|b−b′|}. With Balaban's split point fixed as γ_1 := 4B_AS(θ′δ_A) (A7 3.3), the ratio is ≤ ½ and the absolute series kernel is ≤ 4γ_1^{−1/2}e^{−(1−θ′)δ_A|b−b′|}. The n-th power is one concatenated tree; by (2.1) its s ≡ 0 truncation keeps the bound. Schur:
 ‖series piece at s ≡ 0‖ ≤ 4γ_1^{−1/2}S((1 − θ′)δ_A).
3.4 Result [P given 2.1, WC(iv) on Λ, A7 3.3].
 ‖R(0)‖ ≤ K_½ := 8γ_exp^{−1/2}S(½ε) + 4γ_1^{−1/2}S((1 − θ′)δ_A).
 This is SOURCES_G3_N2 3.5 with its walk count made explicit: W_½ = 2S(½ε).
 Sanity check: at s ≡ 1, R(1) = A_exp^{−1/2} and ‖R(1)‖ ≤ γ_exp^{−1/2} ≤ K_½. The truncated bound is larger by the factor 8S(½ε), the price of losing the spectral theorem (R(0) is not a function of a positive operator).
3.5 Dependence [V-WC + P]. γ_exp = ¼γ_e(d, L). ε = min{½δ_A, γ_exp/(8B_AΣ(½δ_A))} (WC_FULL 5.2(e)). γ_1 = 4B_AS(θ′δ_A). ρ = max{K_F/M_1, c_1ρ_A} and the condition C′_𝒟c_1ρ ≤ ¼ fix M_1 ≥ M_W; they contain M_1, not M. So K_½ = K_½(d, L, a, a_0, θ′), free of M, volume, k, Z_0, and regular U.
 Why M cannot enter: M fixes only the size of Z_0 (union of M-cubes) and of the σ_0-cubes (side LM). Z_0 enters Γ through the projections 1_{Z_0}, 1_{Z_0^c}, which cannot raise a Schur sum. The σ_0-cubes enter through 0/1 weights, which cannot raise a Schur sum either (2.1). The walk scale is M_1.

## 4. Conclusion: G_Γ uniform in M, and the (Hα) threshold (task 4)

4.1 Bound [P given §2, §3]. G_Γ = ‖1_{Z_0}A_exp(0)1_{Z_0^c}R(0)‖ ≤ ‖E_0‖·‖R(0)‖ ≤
 Ḡ := Γ_1K_½ = 2B_AS(δ_A)·[8γ_exp^{−1/2}S(½ε) + 4γ_1^{−1/2}S((1 − θ′)δ_A)].
 Ḡ = C(d, L, a, a_0, θ, θ′; WC constants). It does not depend on M (M ≥ M_1), the volume, j (= k + 1), Z_0, or the regular background U. The X-restriction to Z (dμ_0(X)|_Z) is one more compression and does not change the bound.
4.2 Consequence for Λ [P]. Λ_0 ≤ Λ̄_0 := 1 + h + h²Ḡ², h = 4/(3γ_exp), and Λ = 2Λ_0 ≤ 2Λ̄_0. So the G3 constants c_−, Λ of SOURCES_G3_N2 3.6 are M-free.
4.3 The threshold [P given A8 Lemma D (corrected rate e^{−ε″M/8}) and 6.3–6.4]. At σ ≡ 0 the κ_1 factor of Lemma D is absent (A8 4.5). So η := η_M^0 ≤ (16W/γ_exp)e^{−ε″M/8}, ε_0 = 2Γ_1²η, ‖M_0‖ ≤ hε_0, δ_S = h‖M_0‖² ≤ 4h³Γ_1⁴η². Split (Hα) into two halves.
 (Hα-1) α_5Λ̄_0 ≤ ¼. With α_5 = c_5e^{−δ_0M/3} + O(α_0 + α_1) + O(1)α_4 + γ_2 (CMP 116 p. 17 [V via SOURCES_Q 1]): M ≥ M_{α5} := (3/δ_0)log(8c_5Λ̄_0), and α_0, α_1, α_4, γ_2 small enough that their part is ≤ 1/(8Λ̄_0). These are Balaban's own smallness choices with one fixed number Λ̄_0.
 (Hα-2) Ḡ²δ_SΛ̄_0 ≤ ¼. It holds if
 M ≥ M_Γ := (4/ε″)·log[16h³Γ_1⁴Ḡ²Λ̄_0(16W/γ_exp)²],  h = 4/(3γ_exp).
 Then (α_5 + G_Γ²δ_S)Λ_0 ≤ (α_5 + Ḡ²δ_S)Λ̄_0 ≤ ½, which is (Hα).
4.4 Order of constants [P; no cycle]. d, L, N, a, a_0 → κ_1 (R6) → γ_exp, B_A, δ_A, ε, Γ_1 → level constants incl. ε″ (R7; M-free by SOURCES_ORDER_CANON A.4) → M_1 → M_2 → K_½, Ḡ, Λ̄_0, W → M ≥ max{WC conditions (M/M_1 > 10, > 3(6 + c_X)), A8 (H_κ), (H_M), (H_η), M_Γ, M_{α5}, M > L²M_1} → α_0, α_1, α_4, γ_2 → γ. M_Γ uses no κ_1 (σ ≡ 0). Nothing on the left of M depends on M. So "G_Γ grows slower than e^{ε″M/8}" holds in the strongest form: G_Γ is bounded.
4.5 Residue [I/R]. (a) The s-rule acts on walk terms of the (2.7) pieces and of A_exp (A8 I-b; CMP 116 p. 3 and p. 13 wording). If instead s entered before inversion, the resolvent of the truncated, non-compressed operator would need its own positivity bound; not treated. (b) WC(iv) on all of Λ rather than Z_0 (A7 4.4 Remark [P] there, unverified by a separate file). (c) W < ∞ of A8 (G4) [R to WC(ii)]. (d) Balaban's split point γ_1 is taken as A7's 4B_AS(θ′δ_A); any larger γ_1 only lowers the series bound, and the integral bound 8γ_exp^{−1/2}S(½ε) is γ_1-free. No numerical value of B_A, δ_A, ε, or W is known, so Ḡ and M_Γ are explicit formulas, not numbers.

## 5. Ledger
 [V] CMP 116 p. 12 (2.5) and B′ = (C^{(k)})^{1/2}X; p. 15 (2.14), Γ_k(Z_0, σ) = C*Δ_k(σ)CZ_0^c(C^{(k)})^{1/2}(σ) (300 dpi images, this session). Via files: p. 13 (2.7) (A7 §1), p. 3 s-rule (A8 1.2), p. 17 α_5 (SOURCES_Q 1).
 [V-WC] Prop. W_N, Γ_1 = 2B_AS(δ_A), WC(iv) prefactor 4/(γ_exp + x), absolute walk sum 8/γ_exp, ε of 5.2(e), "constants uniform in … M ≥ M_1".
 [V-A7] series kernel 4γ_1^{−1/2}e^{−(1−θ′)δ_A|b−b′|}, γ_1 = 4B_AS(θ′δ_A); WC(iv) on Λ.
 [P] 1.2 factorization Γ = E_0R(0); 1.3 coupling pieces and ranges; 2.1 0/1-truncation bound for any grouping; 2.3 ‖E_0‖ ≤ Γ_1; 3.4 ‖R(0)‖ ≤ K_½; 4.1 G_Γ ≤ Ḡ, M-free; 4.3 thresholds M_Γ, M_{α5}; 4.4 order.
 [I/R] 4.5 (a)–(d).
Verdict: the [I] item of SOURCES_G3_N2 3.5 / VERIFY V5 is closed relative to the s-rule reading (a) and WC(iv) on Λ (b). G_Γ ≤ Ḡ uniform in M; (Hα) reduces to M ≥ max{M_Γ, M_{α5}} plus Balaban's small α_0, α_1, α_4, γ_2. Unverified.

Order-canon fix (SOURCES_ORDER_CANON Task C, 2026-10-28): C-G1 4.4 order replaced by canon B (κ_1 first, R6; level constants incl. ε″ before M_1, R7; M_1 → M_2 → K_½, Ḡ, Λ̄_0, W → M with M > L²M_1).
