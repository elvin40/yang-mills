# Verification of SOURCES_MULTISCALE_OMEGA_SOURCED.md (§0–§7)

Date 2026-10-28. Independent verifier. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md not read.
Volumes present under balaban/: CMP 95, 96, 98, 99 (two), 102 (two), 109, 116, 119, 122 I, 122 II. CMP 122 III is NOT present.

## W6 Item (6): the reference "(2.21) [III]" — SETTLED on images

Images (300 dpi, /tmp/mosv): CMP 122 I p. 202 (pdf 28), p. 182 (pdf 8); CMP 122 II p. 392 (pdf 38), p. 383 (pdf 29); CMP 119 p. 258 (pdf 16).
- CMP 122 I p. 202, References, read on the image: "[I] … CMP 109, 249–301 (1987); [II] … CMP 116, 1–22 (1988); [III] Balaban, T.: Convergent renormalization expansions for lattice gauge theories. Commun. Math. Phys 119, 243–285 (1988)". The list has three entries only.
- CMP 122 II p. 392, References, on the image: [I] CMP 109, [II] CMP 116, [III] CMP 119, [IV] "Large field renormalization. I. The basic step of the R operation. CMP 122, 175–202".
- CMP 122 II p. 383 on the image: "The integrals with respect to the fields A_j in (2.21) [III], or (1.25) [IV], are estimated using the positivity properties of the quadratic forms, and we get the factors exp O(1)|Z_j ∩ Ω_j|".
- CMP 122 I p. 182 on the image: (1.25) has ⟨A_j, C*Δ^{(j)}_{Λ^c_{j+1}}CA_j⟩ (complement subscript, as V7 read), "where n = j − h, and the quadratic form in the exponential is written explicitly in (2.21) [III]".
Verdict. In both papers [III] = CMP 119 (Convergent renormalization expansions). There is no "CMP 122 III" in either reference list. MULTISCALE_OMEGA_VERIFY V7 and V9(9) ("CMP 122 III (2.21), not read") rest on a misreading of the bracket. The M1_SWEEP_VERIFY V2 reading is CORRECT. The target file's 0.5 left this open; it is now settled. CONFIRMED for the M1 reading; V7's attribution REFUTED.

CMP 119 (2.21) on the image (p. 258, enlarged crop):
 T^{(j)}(Z_{j+1} ∩ X) = ∫dV_j|_{Ω^c_{j+1}∩X} δ(V̄_jV^{−1}_{j+1}) ζ(Ω^c_{j+1}) · ∫dA_j|_{Z_{j+1}∩Ω_{j+1}∩X} χ(Z_{j+1} ∩ Ω_{j+1} ∩ X) exp[−½⟨A_j, C*Δ^{(j)}CA_j⟩ + ½⟨A_j, C*Δ^{(j)}CC^{(j)}(Λ_{j+1})C*Δ^{(j)}CA_j⟩].
 Then: "the quadratic form in the exponential couples only the fields A_j in the same component of Z_{j+1} ∩ Ω_{j+1}. The other terms … are included into the effective action into B-terms. If the operation T^{(j)} is changed by an R-operation, then the general form (2.21) is preserved, but the characteristic functions are changed".
Consequence for U5.
 (a) The precision of the A_j Gaussian is printed explicitly: C*[Δ^{(j)} − Δ^{(j)}CC^{(j)}(Λ_{j+1})C*Δ^{(j)}]C, restricted to Z_{j+1} ∩ Ω_{j+1} and to the component-block-diagonal part. This is a Schur-complement form (the A_j-block minus the coupling through the step-(j+1) covariance on Λ_{j+1}). [V image]
 (b) Balaban's sentence on CMP 122 I p. 182 states that Δ^{(j)}_{Λ^c_{j+1}} of (1.25) is this explicit form, and CMP 119 says the form is preserved under R-operations. So the (1.25) operator is the CMP 119 (2.21) operator, with R-changed characteristic functions only. [V text of both images; identification of the subscripted symbol with the explicit form = Balaban's own statement, I-strong]
 (c) What stays open in U5. Not the definition (now sourced). Two things remain: (i) that the explicit form is a compression/Schur complement of the Ω-sequence A_exp^Ω (Δ^{(j)} and C^{(j)}(Λ_{j+1}) are CMP 119's step-j objects; their identification with the project's A_exp^Ω blocks is the same [V+P] identification V9(9) made for CMP 119 at step k, now needed at step j inside an R-operation); (ii) the relaxed regularity (1.24)/(R7) of the background in the R-operation (p. 182 image: bounds with L_0^{2(·)} factors and c = 3 at j = k). So U5 shrinks from "operator undefined in an unread paper [I]" to "(R7) relaxed regularity [I] + the step-j identification [P-level, same as CMP 119 step k]".
 (d) Note: Balaban's p. 383 bound is "exp O(1)|Z_j ∩ Ω_j|", from "positivity properties". The project's (8π/(3γ_exp))^{n/2} is a specific constant for that O(1); it needs the lower bound ¾γ_exp, i.e. Q1 on the Schur complement. Consistent with the target's 0.1.

