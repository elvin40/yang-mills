# SOURCES_A8_POS — Positivity of dμ_{C^{(k)}(Z_0,0)} and the complex case (TRUST_LEDGER row A8)

Date: 2026-10-28. Status tags: [P] proved here, [V] read on the page / quoted verbatim, [I] identification or reading choice, [R] reduction to a stated input.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Target (row A8, quoted)
"For the real pair (U, 0) the localized operators are symmetric and dμ_{C^{(k)}(Z_0,0)} is a positive Gaussian; the complex case 'is handled by a perturbative argument'" — CMP 116 p. 15. Consumer: G3 Route 2 majorant (2.23)–(2.25).

## 1. The page (CMP 116 pp. 12–15, 300 dpi images) [V]
1.1 (2.5), p. 12: the term of a domain Z_0 is written by conditioning on Z_0^c. The inner measure is dμ_{C^{(k)}(Z_0)}(B), and the denominator is ∫dB|_{Z_0} exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩ − ½⟨Z_0B, C*Δ_kCZ_0B⟩). So C^{(k)}(Z_0) = (Z_0C*Δ_kCZ_0)^{−1} on the reduced bonds of Z_0. With WC_FULL 0.7 [I-strong there], C^{(k)}(Z_0) = A_Z^{−1}, A_Z = 1_{Z_0}A_exp1_{Z_0} on V_red(Z_0).
1.2 p. 13: the parameters s(Δ), Δ ∈ σ_0, are "introduced into the operators as before", and σ_0 = the LM-cubes "disjoint with the interior of Z̃_0, or with the interior of Z′_0". The walk expansion is constructed "for C^{(k)}(Z_0)". The rule "as before" is CMP 116 p. 3 [V, pdftotext]: "for a random walk ω localized in X_0 ∪ X_1 ∪ … we take the {Δ_1, …, Δ_m} of all cubes from σ_0 which intersect this localization domain, and we multiply the term … corresponding to ω by Π s(Δ_j)". So
 C^{(k)}(Z_0, s) := Σ_ω (Π_{Δ∈σ_0, Δ∩dom(ω)≠∅} s(Δ)) T_ω, (1.1)
with T_ω the walk terms of the expansion of A_Z^{−1} (WC_FULL Theorem WC(ii), (iii)) [I: we identify Balaban's [13] expansion with WC_FULL's; LOC_VERIFY §9 (1) reads the page the same way]. C^{(k)}(Z_0, 1) = A_Z^{−1}. C^{(k)}(Z_0, 0) = the walk sum with all walks meeting σ_0 deleted.
1.3 p. 15, verbatim: "This complicates estimates of this expression, because the operators in it are not symmetric, and the second measure is complex. … For the pair (U,0) the operators are symmetric, and the measure is positive, and then the estimates are simpler. The general case is handled by a perturbative argument."
1.4 p. 15, (2.15), image: |(2.14)| ≤ exp(−(κ_1−1)(LM)^{−4}|Z∖Z′_0|) Π_{Y∈D} 2/|τ(Y)| · ∫dμ_0(X)|_Z exp(−½Re⟨Γ_kX, C^{(k)}(Z_0,σ)Γ_kX⟩) · |det(C^{(k)}(Z_0,σ)^{−1}) / det(Re C^{(k)}(Z_0,σ)^{−1})|^{1/2} ∫dμ_{(Re C^{(k)}(Z_0,σ)^{−1})^{−1}}(B) · exp(−⟨B, Re Γ_kX⟩)χ_{k,Y_0}χ^c_{k,P} exp[Σ|τ(Y)||V_k(Y,B)|].
 (The page prints "|(7.14)|"; it is (2.14).) So the "perturbative argument" begins with a modulus bound that replaces the complex measure by the real Gaussian with precision Re C^{(k)}(Z_0,σ)^{−1}, times a determinant ratio. After (2.15): "we replace the operators by the corresponding operators with σ(Z) = 0, U = U, J = 0, and we estimate the error" ((2.16)–(2.17)).
1.5 p. 17 after (2.24), verbatim [V via LOC 3.2]: "Of course we have assumed that α_5 is sufficiently small, e.g. α_5‖C^{(k)}(Z_0,0)‖ < ½."

## 2. Task (1): which operator must be symmetric positive definite [P]
2.1 The space. B ranges over V_red(Z_0): real 𝔤-valued fields on the unit bonds of Z_0 with the bonds b_0(c) removed. Real dimension n_Z := n·#bonds ≤ n·d·|Z_0|, n = dim 𝔤 (= N² − 1 for SU(N)).
2.2 Definition used for dμ_C with a general invertible complex matrix C. Put K := C^{−1}. Then
 dμ_C(B) := det(K/2π)^{1/2} e^{−½⟨B, KB⟩} dB, ⟨B, KB⟩ = Σ_{b,b′} B(b)·K(b,b′)B(b′) (bilinear, B real).
The branch of det^{1/2} is fixed by continuity from s ≡ 1, real U, where K = A_Z > 0. This is the only reading under which (2.15) is an identity followed by an inequality (see 5.2).
2.3 Only one real operator enters the modulus. For real B, Re⟨B, KB⟩ = ⟨B, H(K)B⟩ with
 H(K) := ½(Re K + (Re K)^T) (Re = entrywise real part).
The antisymmetric part of Re K and all of Im K drop out of the modulus. So:
 dμ_C is dominated by a positive Gaussian iff H(K) is real symmetric positive definite on V_red(Z_0).
Then the dominating measure is dμ_{H(K)^{−1}}, a positive normalized Gaussian with covariance H(K)^{−1}.
2.4 Balaban's "Re C^{(k)}(Z_0,σ)^{−1}" in (2.15) is H(K) [I: the only reading that makes (2.15) true; for complex symmetric K, H(K) = Re K exactly].
2.5 The answer to (1). The operator that must be symmetric positive definite is
 H_σ(U_c) := H(C^{(k)}(Z_0, σ; U_c)^{−1}) on V_red(Z_0).
At the real pair and s ≡ 1 it is A_Z itself (C^{(k)}(Z_0,1) = A_Z^{−1}, no restriction beyond the compression 1_{Z_0}·1_{Z_0} and removal of the b_0(c)). At the real pair and σ ≡ 0 it is H(C_0^{−1}), C_0 := C^{(k)}(Z_0, 0) the σ_0-truncated walk sum (1.1). C_0 is NOT a compression or an inverse of a compression (LOC 5.3). dμ_{C_0} of (2.23) is a positive Gaussian with covariance C_0 exactly when C_0 is real symmetric and H(C_0^{−1}) > 0.

## 3. Task (2): symmetry and positivity at the real pair, s ≡ 1
3.1 Lemma S (symmetry) [P given the definitions; I on one convention]. Let U be real regular and J real (in particular J = 0). Then A_exp and A_Z are real symmetric.
Proof. A_exp = C*(Δ^full + c_G𝒢*𝒢)C, Δ^full = (QG_1Q*)^{−1} − a − Δ_J (WC_FULL 0.6–0.7). At a real point every operator is a real matrix and * is the real transpose. Check each piece.
 (a) G_1. CMP 99 (3.128) [V via A3_GAMMA0_FULL 0.4] defines G_1^{−1} by a real quadratic form: ⟨A, G_1^{−1}A⟩ = ⟨A′, ΔA′⟩ − ⟨A′, Δ^{(2)}A′⟩ + ‖RD*A‖² + a‖QA‖². An operator defined by a quadratic form is its symmetric representative [I: Balaban's convention for every operator defined by a form, e.g. Δ^{(2)} by (3.134) and Δ_J by CMP 109 p. 267; the non-symmetric part of a representative is invisible in the form and is never used]. So G_1^{−1} is real symmetric. Its inverse G_1 is real symmetric (G_1^{−1} is invertible: WG_FULL / CMP 99 Thm 3.12 give G_1 as a bounded operator).
 (b) QG_1Q* = Q G_1 Q^T is real symmetric. Its inverse is real symmetric (invertible by A1_WALK_FULL / input (C)).
 (c) a·I is symmetric.
 (d) Δ_J: defined by ⟨B, Δ_JB⟩ = 2⟨H_1D̃^{(2)}(B), J⟩, a real quadratic form for real J; symmetric representative [I as in (a)].
 (e) 𝒢*𝒢 = 𝒢^T𝒢 is real symmetric and ≥ 0.
 (f) C^T X C is real symmetric for real symmetric X. The compression 1_{Z_0}·1_{Z_0} keeps symmetry.
Alternative check without (a)–(d) piecewise: WC_FULL (1.1) gives ⟨B, Δ^{(k)}B⟩ as the quadratic part of the real action CMP 109 (2.11); the operator of a real quadratic form is symmetric. ∎
3.2 Positivity [V-quote + P]. WC_FULL 0.10, verbatim with hypotheses: "Fix d ≥ 2 and odd L ≥ 3. There are M_1, M with M/M_1 > 3(6 + c_X) and M/M_1 > 10, a smallness α_*, a four-level chain of complex domains α′ ⊂ α″ ⊂ α‴ ⊂ a_1-domain, and constants γ_exp = ½min(½, c_G)γ_e(d, L) = ¼γ_e(d, L) > 0, ε″ > 0, ρ > 0, such that for every real regular U and every Z_0 as in 0.8: (i) (real lower bound) ⟨B̃, A_ZB̃⟩ ≥ γ_exp‖B̃‖² for all B̃ ∈ V_red(Z_0); … (iii) (complex points) at every U_c in the α′-space, Re⟨u, A_Z(U_c)u⟩ ≥ ½γ_exp‖u‖², C^{(k)}(Z_0; ·) is analytic there, and (ii) holds with 4/γ_exp → 8/γ_exp, ε → ε″". "Real regular" = (H1)–(H3) of A3 §0.5 with M ≥ max(M_1(d,L), L), Mα_0 ≤ α_*; Z_0 = union of M-cubes with dist(Z_0, Λ_k^c) > RM (WC 0.3, 0.8). Inputs of Theorem WC: R1–R4, C1–C2, I1–I9 (TRUST_LEDGER A2).
 With Lemma S: A_Z is real symmetric with spectrum in [γ_exp, Γ_1], where Γ_1 := sup over real points of ‖A_exp‖ ≤ Γ_1″ (WC 6.6: ‖A_exp‖ ≤ Γ_1″ on 𝒰(α″), which contains the real points). So C^{(k)}(Z_0) = A_Z^{−1} is real symmetric with Γ_1^{−1} ≤ A_Z^{−1} ≤ γ_exp^{−1}, and dμ_{C^{(k)}(Z_0)} is a positive normalized Gaussian on V_red(Z_0). [P]
3.3 Note on "¼γ_e". The brief writes A_Z ≥ ¼γ_e; WC_FULL writes γ_exp = ¼γ_e(d,L). Same constant.

## 4. Lemma D: the σ-truncation is a small perturbation of A_Z^{−1}
4.1 Setting. Cauchy variables σ(Δ), Δ ∈ σ_0, with |σ(Δ)| ≤ e^{κ_1} (CMP 116 p. 5: |s(Δ)| ≤ e^{κ_1} [V pdftotext]). U_c in the α′-space of Theorem WC (real points included). Put D_σ := C^{(k)}(Z_0,σ) − A_Z^{−1} = Σ_{ω meets σ_0}(Π_{Δ met by ω}σ(Δ) − 1)T_ω, by (1.1). ℓ := LM is the side of the σ_0-cubes.
4.2 Geometric inputs [I, stated as hypotheses].
 (G1) Every σ_0-cube Δ obeys dist(Δ, Z_0) ≥ M. Reason: Δ is disjoint from the interior of Z̃_0 (p. 13), and Z̃_0 is Z_0 with one full layer of M-cubes adjoined (WC 0.8).
 (G2) Every localization domain of a walk of Theorem WC has diameter ≤ c′M_1, c′ = c′(d) (boxes □⁺ of WC 5.2(a): side (K_1 + 2K_0)M_1), and d(ω, b, b′) is the length of a shortest tree that meets b, b′ and all domains of ω.
 (G3) Cube count: a tree of length D can be cut into ≤ 2(1 + D/ℓ) pieces of diameter ≤ ℓ (standard). The c′M_1-neighbourhood of one piece has diameter ≤ 2ℓ when c′M_1 ≤ ℓ/2, and so meets ≤ 3^d cubes. Hence a walk meets m ≤ 2·3^d(1 + d(ω,b,b′)/ℓ) cubes of σ_0.
 (G4) Walk count: W := sup_b Σ_{b′}Σ_{ω: b→b′}(c_1ρ)^{|ω|}e^{−(ε″/8)d(ω,b,b′)} < ∞, the same count that gives the absolute convergence in Theorem WC(ii)–(iii), with rate ½ε″ lowered to ε″/8 [R to WC (ii); the count is driven by (c_1ρ)^{|ω|}]. W is symmetric in the roles of b, b′ (the count is the same from either end) [I].
4.3 Statement [P given (G1)–(G4) and Theorem WC(ii)–(iii)]. Assume
 (H_κ) ℓ = LM ≥ 16·3^dκ_1/ε″, and (H_M) M ≥ 2c′M_1.
Then for every σ with |σ(Δ)| ≤ e^{κ_1} and every U_c in the α′-space,
 ‖D_σ‖ ≤ η_M := (16/γ_exp)·e^{2·3^dκ_1}·W·e^{−ε″M/4}.
The same bound holds for the kernel in the weighted form |D_σ(b,b′)| ≤ (16/γ_exp)e^{2·3^dκ_1}e^{−ε″M/4}Σ_ω(c_1ρ)^{|ω|}e^{−(ε″/8)d(ω,b,b′)}, so D_σ is (2.16)-type: small times exponential decay.
4.4 Proof. Fix b, b′ ∈ Z_0 and a walk ω that meets σ_0. Write D := d(ω, b, b′).
 Step 1 (length). Some domain X of ω meets a σ_0-cube Δ. By (G1)–(G2), dist(b, X) ≥ M − c′M_1 ≥ M/2 by (H_M), and the same for b′. A tree through b, b′, and X has length ≥ dist(b,X) + dist(X,b′) ≥ M. So D ≥ M. Also D ≥ |b − b′|.
 Step 2 (weight). |Πσ − 1| ≤ 1 + e^{κ_1m} ≤ 2e^{κ_1m} ≤ 2e^{2·3^dκ_1}e^{2·3^dκ_1D/ℓ} ≤ 2e^{2·3^dκ_1}e^{(ε″/8)D}, by (G3) and (H_κ).
 Step 3 (walk bound). Theorem WC(iii): |T_ω(b,b′)| ≤ (8/γ_exp)(c_1ρ)^{|ω|}e^{−½ε″D} (at real points the better 4/γ_exp, ½ε holds; the complex constants dominate).
 Step 4. Multiply: |(Πσ − 1)T_ω(b,b′)| ≤ (16/γ_exp)e^{2·3^dκ_1}(c_1ρ)^{|ω|}e^{−(3/8)ε″D}. Split e^{−(3/8)ε″D} = e^{−(1/4)ε″D}e^{−(1/8)ε″D} ≤ e^{−ε″M/4}e^{−(ε″/8)D} by Step 1. Sum over ω, then Schur's test with (G4). ∎
4.5 Remark. At σ ≡ 0 the weight is |0 − 1| = 1, so the bound holds without the e^{2·3^dκ_1} factor. Lemma D is the "backup route" of SOURCES_LOC §4 ("Needs the walk bound for the C(Z_0) expansion of [13], not read"); Theorem WC now supplies that walk bound.
