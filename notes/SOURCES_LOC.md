IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_LOC — localization of the majorant covariance C^{(k)}(Z_0,0)

Status: complete (2026-10-27).

## 0. Inputs read [V text]
- SOURCES_CDC_VERIFY §5: gap = G3 chain uses C^{(k)}(Z_0,0); CDC/Q bound only bare C*Δ_kC.
- SOURCES_Q §1, SOURCES_Q_VERIFY §1: chain (Q^{−1})_bb ≥ (Q_0^{−1})_bb ≥ C_0(b,b) ≥ ‖C_0^{−1}‖^{−1}, C_0 := C^{(k)}(Z_0,0).
- SOURCES_G3 §2.3, §4.2: Lemma G3 needs λ_min ≥ c_− (A_n ∝ c_−^{−n/2}) and upper bound Λ.
- CMP 116: journal page = PDF page (pp. 1–22). pdftotext of pp. 12–14 is garbled at displays; images needed for (2.5), (2.6), (2.8).
- p. 13 text [V]: "We localize it again by the method used in Sect. 1, introducing the parameters s and differentiating." s(Δ), Δ ∈ σ_0 = cubes of size LM disjoint from int Z_0′. "We choose Z_0 as one of the domains" of the random-walk expansions. "This construction was discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}."

## 1. Definitions as printed [V images, pp. 12–14]
1.1 (2.5), p. 12, verbatim: "(Z^{(k)})^{−1}∫dB exp(−½⟨B, C*Δ_kCB⟩)F(Z_0,B) = ∫dμ_{C^{(k)}}(B′) [∫dB|_{Z_0} exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩ − ½⟨Z_0B, C*Δ_kCZ_0B⟩)F(Z_0,B)] / [∫dB|_{Z_0} exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩ − ½⟨Z_0B, C*Δ_kCZ_0B⟩)] = ∫dμ_{C^{(k)}}(B′) exp(−½⟨Z_0^cB′, C*Δ_kCC^{(k)}(Z_0)C*Δ_kCZ_0^cB′⟩) · ∫dμ_{C^{(k)}(Z_0)}(B) exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩)F(Z_0,B)."
 Reading [P]: this is conditioning on Z_0^c. The B-integral runs over B|_{Z_0} only, with quadratic weight ½⟨Z_0B, AZ_0B⟩, A := C*Δ_kC. So C^{(k)}(Z_0) = (Z_0AZ_0|_{Z_0})^{−1}: the inverse of the compression of A to fields on Z_0. This is case (a) (Dirichlet restriction), not case (b). The completed square in (2.5) (Z_0^c-term with C^{(k)}(Z_0) in the middle) confirms it: it is exactly the Gaussian conditional formula with Z_0-precision Z_0AZ_0.
1.2 (2.6), p. 13: after B′ = (C^{(k)})^{1/2}X, "= ∫dμ_0(X)G(Z_0, X, C^{(k)}(Z_0), (C^{(k)})^{1/2}, Δ_k)" — "the last equality is a definition of the function G, and the measure dμ_0".
1.3 p. 13 text: "The above expression depends yet on the external gauge field configurations on the whole lattice T_η, through the propagators and the operator in the definition of the function G. We localize it again by the method used in Sect. 1, introducing the parameters s and differentiating." σ_0 = cubes Δ of size LM "disjoint with the interior of Z̃_0, or with the interior of Z̃_0′". Localization domain X_0 with X̃_0 = Z̃_0; other domains X with dist(X, Z̃_0) > (2/3)M [digit read from image, low resolution]. "This construction was discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}."
1.4 (2.8), p. 14, verbatim: "∫dμ_0(X)G(Z_0, X, C^{(k)}(Z_0), (C^{(k)})^{1/2}, Δ_k) = Σ_Z Π_{Δ⊂Z\Z̃_0′} ∫_0^1 ds(Δ) ∂/∂s(Δ) ∫dμ_0(X)G(Z_0, X, C^{(k)}(Z_0, s(Z)), (C^{(k)})^{1/2}(s(Z)), Δ_k(s(Z))) = Σ_Z H(Z, Z_0)."
 Reading [P]: C^{(k)}(Z_0, s) is NOT defined by a formula on these pages. It is the operator C^{(k)}(Z_0) of 1.1 with the s-parameters inserted into its generalized random-walk expansion "as before" (Sect. 1 of CMP 116 and Sect. C of [13] = CMP 109). So it is case (c). At s ≡ 1 it equals C^{(k)}(Z_0). At s = 0 (the value in (2.23)) the walk terms that reach the cubes Δ ∈ σ_0 with s(Δ) = 0 are removed; it is not a convex combination of (a)/(b).

## 2. How s and σ enter [V images, pp. 3, 5, 15]
2.1 p. 3, (1.6)–(1.7), verbatim: "A propagator is represented by the sum (3.107) [13] Σ_ω R_0(X_0)R_{α_1}(X_1)···R_{α_n}(X_n), (1.6)". Each walk term "can be bounded, as (3.108) [13], by O(1)O(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}exp(−δ_0d(ω,y,y′)), (1.7)". "The first two factors in (1.7) are used to control the sum over ω."
 p. 3, the s-rule, verbatim: "for a random walk ω localized in X̃_0^5 ∪ X̃_1^5 ∪ ··· ∪ X̃_n^5 we take the {Δ_1, …, Δ_m} of all cubes from σ_0 which intersect this localization domain, and we multiply the term in (1.6) corresponding to ω by s(Δ_1)···s(Δ_m). This way the s-dependent propagators H(s), G̃(s), H_0(s) are defined. They coincide with the original ones for s = 1."
2.2 p. 15, (2.14)–(2.15): σ(Δ) are the complex Cauchy variables around s(Δ). Γ_k(Z_0,σ(Z)) = C*Δ_k(σ(Z))CZ_0^c(C^{(k)})^{1/2}(σ(Z)). Verbatim: "For the pair (U,0) the operators are symmetric, and the measure is positive." After (2.15): "we replace the operators by the corresponding operators with σ(Z) = 0, U = U′, J = 0, and we estimate the error."
2.3 Reading [P from 2.1–2.2]: C^{(k)}(Z_0,0) is the walk sum of C^{(k)}(Z_0) with every walk ω that meets a cube Δ ∈ σ_0 deleted, at real U = U′ and J = 0. So it is case (c), at the endpoint s = 0. It is neither a compression (a) nor a block (b) of a localized positive operator. In general a truncated walk sum is not the inverse of any positive form. So the brief's "two-line lemma" for (a)/(b) does not apply directly at s = 0. It applies at s = 1.
2.4 Which walks are deleted [P + I]: the zero-length term R_0(X_0) has domain X̃_0^5 = Z̃_0 ⊂ Z̃_0′. Cubes of σ_0 are disjoint from int Z̃_0′. So the zero-length term is kept [I: "intersect" read as sharing a lattice cell, not a boundary face]. Every deleted walk has |ω| ≥ 1, because it must reach a domain X with dist(X, Z̃_0) > (2/3)M.

## 3. The error between σ and 0 is printed [V images, pp. 16–17]
3.1 p. 16, verbatim: "Similarly, the next Gaussian measure is replaced by the measure with the new covariance, multiplied by a quotient of determinants, which can be estimated by (2.17), and by the function exp ½⟨B, R_2B⟩ with R_2 satisfying (2.16)." (2.16): "|R_1(b,b′)| ≤ (O(1)e^{−(1/3)δ_0M} + O(α_0 + α_1)) exp(−½δ_0|b_− − b′_−|)". "We have assumed, as in Sect. 1, that M is much bigger than κ_1, especially that e^{−(1/3)δ_0M}e^{16κ_1} < 1."
 Reading [P]: R_2 = Re C^{(k)}(Z_0,σ(Z))^{−1} − C^{(k)}(Z_0,0)^{−1}, the precision change from (σ, U, J) to (0, U′, 0). Its kernel has the (2.16) bound for all σ in the Cauchy domain |σ(Δ)| ≤ e^{κ_1} (p. 5). That domain contains σ ≡ 1 [I: (2.16) stated on the contour; the difference is analytic in σ, so the maximum principle extends it inside].
3.2 p. 17 after (2.24), verbatim: "Of course we have assumed that α_5 is sufficiently small, e.g. α_5‖C^{(k)}(Z_0,0)‖ < ½." No lower bound on C^{(k)}(Z_0,0) is stated anywhere on pp. 12–17. The measure dμ_{C^{(k)}(Z_0,0)} is used as a positive Gaussian; positivity rests on "For the pair (U,0) the operators are symmetric, and the measure is positive" (p. 15) [R].
3.3 Schur test [P]: a kernel with |K(b,b′)| ≤ ε e^{−½δ_0|b_−−b′_−|} has ‖K‖ ≤ ε S_d, S_d := sup_b Σ_{b′} e^{−½δ_0|b_−−b′_−|} (finite, depends on d, δ_0 only). So ‖R_2‖ ≤ ε_M := (O(1)e^{−δ_0M/3} + O(α_0+α_1))S_d.

## 4. Lemma LOC and proof [P given the inputs named]
Notation. A := C*Δ_kC at real regular U = U′, J = 0, all s ≡ 1 (the bare operator of SOURCES_CDC/SOURCES_Q). C(Z_0) := C^{(k)}(Z_0) of (2.5). C_0 := C^{(k)}(Z_0,0) of (2.23). ε_M as in 3.3.
Inputs. (N) γ_0 ≤ A ≤ γ_1 [R: upper = (3.132) + (E_U) via SOURCES_Q/CDC; lower γ_0 = CMP 99 (3.157)–(3.158)]. (E) C_0^{−1} = Z_0AZ_0 − R with ‖R‖ ≤ ε_M [R: (2.16) at σ ≡ 1, U = U′, J = 0, plus 3.3]. (S) C_0 is real symmetric [R: p. 15].
Lemma LOC. Assume (N), (E), (S), and ε_M ≤ γ_0/2. Then
 (i) γ_1^{−1} ≤ C(Z_0) ≤ γ_0^{−1} on fields supported on Z_0;
 (ii) (γ_1 + ε_M)^{−1} ≤ C_0 ≤ (γ_0 − ε_M)^{−1} ≤ 2γ_0^{−1};
 (iii) for each bond b ⊂ Z_0, the n×n block C_0(b,b) ≥ c_− I with c_− := (γ_1 + ε_M)^{−1}.
Proof. (i) For v supported on Z_0, ⟨v, Z_0AZ_0v⟩ = ⟨v, Av⟩ ∈ [γ_0, γ_1]‖v‖². So the compression lies in [γ_0, γ_1]. Inversion is order-reversing on positive operators. (ii) By (E) and (i), C_0^{−1} is symmetric (by (S)) and lies in [γ_0 − ε_M, γ_1 + ε_M], with γ_0 − ε_M ≥ γ_0/2 > 0. Invert. (iii) Restrict the form of (ii) to vectors supported on bond b. ∎
Remark (case (b)), not needed: for a block of an inverse, Z_0A^{−1}Z_0 = (A_11 − A_12A_22^{−1}A_21)^{−1} ≥ A_11^{−1} (Schur complement, A_22 > 0). So case (b) would also transfer c_− = γ_1^{−1}. Printed (2.5) is case (a).
Remark (definition-robust). If instead C^{(k)}(Z_0,s) were read as (Z_0C*Δ_k(s)CZ_0)^{−1}, the same proof runs with (E) applied to Δ_k(s) − Δ_k [the "Δ_k(σ)" part of R_1-type bounds (2.16)]. The lemma uses only (E), not the walk structure.
Backup route without inverses [I]: C_0 − C(Z_0) = −Σ (walks meeting σ_0). Each such walk has |ω| ≥ 1 and reaches distance > (2/3)M from Z̃_0, so by a (1.7)-type bound ‖C_0 − C(Z_0)‖ ≤ O(1)M_1^{−1/2}e^{−(2/3)δ_0M}. Then λ_min(C_0) ≥ γ_1^{−1} − that. Needs the walk bound for the C(Z_0) expansion of [13], not read.

## 5. The σ = 0 point [P + V]
5.1 In (2.23) "0" means σ(Z) ≡ 0 together with U = U′ and J = 0 (p. 15 sentence after (2.15)) [V]. So C_0 is the real operator. All parameters are real; "Re" in (2.15) is the identity there.
5.2 Lemma LOC compares C_0 with the bare s ≡ 1 operator A at the same real U′. So the norm input is the bare bound ‖C*Δ_kC‖ ≤ γ_1 from (3.132) + (E_U), exactly as in SOURCES_Q/CDC. No new norm bound on a localized Δ_k(s) is required; the localization enters only through (E).
5.3 Correction to SOURCES_Q_VERIFY §1: the step "‖C_0^{−1}‖^{−1} = ‖Z_0C*Δ_k(0)CZ_0‖^{−1}" is not an identity from the page. C_0 is the s-truncated walk sum of (Z_0AZ_0)^{−1} (§2.3), not the compression of C*Δ_k(0)C. Replace by Lemma LOC (ii): ‖C_0^{−1}‖^{−1} ≥ (γ_1 + ε_M)^{−1}.
5.4 Constant order [I]: ε_M ≤ γ_0/2 needs O(1)e^{−δ_0M/3}S_d + O(α_0+α_1)S_d ≤ γ_0/2. γ_0, γ_1 depend on L, d and the regularity constants, not on M [I]. Balaban already takes M large after κ_1 (p. 16) and α_0, α_1 small. So the condition sits inside his hierarchy [I].

## 6. Conclusion and ledger
Conclusion. The localization step is a short lemma, not a real gap, but not the brief's two-line (a)/(b) lemma. At s ≡ 1, C^{(k)}(Z_0) is case (a), the inverse of the compression Z_0AZ_0 (printed (2.5)), and c_− = γ_1^{−1} transfers in two lines. At s = 0, C^{(k)}(Z_0,0) is case (c): the walk sum with walks meeting σ_0 deleted (p. 3 s-rule). It is not a compression or block. The lower bound transfers by perturbation: c_− = (γ_1 + ε_M)^{−1}, with ε_M = O(e^{−δ_0M/3} + α_0 + α_1) from Balaban's printed (2.16). Lemma G3 then holds with this c_− and with Λ ≤ 2γ_0^{−1}.
[V] (2.5) conditioning form; (2.6); p. 13 localization text; (2.8); p. 3 s-rule and (1.6)–(1.7); p. 15 (2.14)–(2.15) and "symmetric/positive" sentence; p. 16 R_2 sentence and (2.16); p. 17 (2.23)–(2.24) and α_5‖C_0‖ < ½. All read on 110-dpi page images.
[P] §1.1 case (a) reading; §2.3 case (c) reading; §3.3 Schur test; Lemma LOC (i)–(iii); case (b) Schur remark; §5.3 correction.
[R] (N): (3.132) + (E_U) upper bound, CMP 99 (3.157) γ_0 lower bound. (E): CMP 116 (2.16) as applied to R_2, proof "similarly" (not given). (S): symmetry at (U, 0), asserted p. 15.
[I] §2.4 boundary reading of "intersect"; the "(2/3)M" digit; (2.16) extends from the Cauchy contour to σ ≡ 1 by analyticity; γ_0, γ_1 M-independent; backup walk route.
Open. (S) for the truncated walk sum is asserted, not proved; if it failed, C_0^{−1} would need its symmetric part and (ii) would need rework. The proof of (2.16) for R_2 is not given in CMP 116.
