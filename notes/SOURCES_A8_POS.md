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

## 5. Task (3): the complex case — Lemma P (the "perturbative argument")
5.0 What G3 needs. SOURCES_G3 2.2 input (Q): the modulus of the (2.14) integrand is bounded by a REAL Gaussian density p_Γ(B) times a B-free constant, with λ_min(Γ) ≥ c_− > 0 and ‖Γ‖ ≤ Λ, c_−, Λ depending on d, L, M only. So the perturbative argument must deliver: (i) the complex Gaussian integral exists; (ii) its modulus is bounded by a positive Gaussian with two-sided spectral bounds; (iii) the B-free factor is exp(O(small)|Z_0|), the (2.17) form; (iv) the comparison to the real reference measure costs only a small quadratic form (absorbed in α_5 of (2.23)).
5.1 Hypothesis (H_η): η_M ≤ min{1/(2Γ_1″), γ_exp/(8Γ_1″²)}. By Lemma D this holds for M ≥ (4/ε″)[2·3^dκ_1 + log(128 W Γ_1″²/γ_exp²)] (also ≥ the 1/(2Γ_1″) branch; Γ_1″ ≥ γ_exp). Theorem WC's constants are uniform in M ≥ M_1, so M can be raised after κ_1 [P; this is Balaban's "M much bigger than κ_1", p. 16].
5.2 Lemma P [P given Theorem WC (i), (iii), Lemma S, Lemma D, (H_η)]. For |σ(Δ)| ≤ e^{κ_1} and U_c in the α′-space, with real point U, put C_σ := C^{(k)}(Z_0,σ;U_c), A_c := A_Z(U_c), A := A_Z(U).
 (a) C_σ is invertible; K_σ := C_σ^{−1} obeys ‖K_σ‖ ≤ 2Γ_1″ and ‖K_σ − A_c‖ ≤ 2Γ_1″²η_M ≤ ¼γ_exp.
 (b) H_σ := H(K_σ) is real symmetric with ¼γ_exp ≤ H_σ ≤ 2Γ_1″. So Γ_σ := H_σ^{−1} is a covariance with 1/(2Γ_1″) ≤ Γ_σ ≤ 4/γ_exp, and dμ_{Γ_σ} is a positive normalized Gaussian.
 (c) (modulus = (2.15)) For every measurable f with ∫dμ_{Γ_σ}|f| < ∞, ∫dμ_{C_σ}f converges absolutely and |∫dμ_{C_σ}f| ≤ r_σ∫dμ_{Γ_σ}|f|, r_σ := |det K_σ|^{1/2}(det H_σ)^{−1/2}. In particular ∫e^{−½⟨ψ,K_σψ⟩}dψ converges and |∫e^{−½⟨ψ,K_σψ⟩}dψ| ≤ (2π)^{n_Z/2}(det H_σ)^{−1/2}.
 (d) (determinant ratio = (2.17)) With ε_σ := ‖K_σ − A‖ ≤ 2Γ_1″²η_M + δ_c, δ_c := ‖A_c − A‖ ≤ Γ_1″/(t(a,α″) − 1) (a = (|J|, |A′|)-size of U_c, Lemma CP proof):
 r_σ ≤ exp((4nd/γ_exp)·ε_σ·|Z_0|).
 (e) (ratio to the real measure) For real B,
 |dμ_{C_σ}(B)| ≤ exp((nd/(2γ_exp))·ε_σ·|Z_0|)·e^{½ε_σ‖B‖²}·dμ_{A^{−1}}(B),
 and dμ_{A^{−1}} = dμ_{C^{(k)}(Z_0)} at the real pair, positive by §3.
5.3 Proof. (a) A_c is invertible with ‖A_c^{−1}‖ ≤ 2/γ_exp (Re ≥ ½γ_exp, WC(iii)), and ‖A_c‖ ≤ Γ_1″ (compression of A_exp, WC 6.6). C_σ = A_c^{−1} + D_σ = A_c^{−1}(I + A_cD_σ), ‖A_cD_σ‖ ≤ Γ_1″η_M ≤ ½. So K_σ = (I + A_cD_σ)^{−1}A_c, ‖K_σ‖ ≤ 2Γ_1″, and K_σ − A_c = −(I + A_cD_σ)^{−1}A_cD_σA_c has norm ≤ 2Γ_1″²η_M ≤ ¼γ_exp by (H_η).
 (b) For real B, ⟨B, H_σB⟩ = Re⟨B, K_σB⟩ ≥ Re⟨B, A_cB⟩ − ¼γ_exp‖B‖² ≥ ¼γ_exp‖B‖². Upper: ‖H(Y)‖ ≤ ‖Y‖ (entrywise conjugation and transpose preserve the ℓ² norm), so ‖H_σ‖ ≤ 2Γ_1″.
 (c) |det(K_σ/2π)^{1/2}| = |det K_σ|^{1/2}(2π)^{−n_Z/2} and |e^{−½⟨B,K_σB⟩}| = e^{−½⟨B,H_σB⟩} (2.3). So |dμ_{C_σ}(B)| = r_σ dμ_{Γ_σ}(B) pointwise. Integrate.
 (d) H(A) = A, and H is real-linear, so E := K_σ − H_σ = (K_σ − A) − H(K_σ − A), ‖E‖ ≤ 2ε_σ. Then det K_σ/det H_σ = det(I + F), F := H_σ^{−1/2}EH_σ^{−1/2}, ‖F‖ ≤ 4‖E‖/γ_exp ≤ 8ε_σ/γ_exp. |det(I + F)| ≤ Π_j(1 + s_j(F)) ≤ exp(n_Z‖F‖), n_Z ≤ nd|Z_0|. Take the square root.
 (e) |dμ_{C_σ}|/dμ_{A^{−1}} = (|det K_σ|/det A)^{1/2}exp(−½⟨B,(H_σ − A)B⟩). ‖H_σ − A‖ = ‖H(K_σ − A)‖ ≤ ε_σ. |det K_σ|/det A = |det(I + A^{−1/2}(K_σ − A)A^{−1/2})| ≤ exp(n_Zε_σ/γ_exp). ∎
5.4 Refinement at σ ≡ 1 [P]. K = A_c is complex symmetric (WC 6.0), so H = Re A_c and E = i Im A_c with Im A_c real symmetric. F = iS, S real symmetric, so |det(I + F)| = Π(1 + λ_j²)^{1/2} ≤ exp(½n_Z‖S‖²): the determinant cost is second order in Im A_c, and r ≥ 1.
5.5 Size of ε_σ. ε_σ = O(e^{−ε″M/4}e^{2·3^dκ_1}) + O(|J| + |A′|)/α″-scale. This is Balaban's (2.16) size "O(1)e^{−δ_0M/3} + O(α_0 + α_1)", with δ_0/3 replaced by ε″/4 [P up to the constant in the δ_c term, which depends on α″ through Lemma CP].

## 6. The real pair at σ ≡ 0: Balaban's literal symmetry claim
6.1 Realness [P]. At real U, J = 0, σ ≡ 0, every walk term T_ω is a finite product of real matrices (real local inverses C_□, real F-factors; WC 5.2–5.3). So C_0 := C^{(k)}(Z_0,0) and K_0 := C_0^{−1} are real.
6.2 Symmetry of C_0: NOT proved [residue, harmless]. The walk series of WC 5.3 is the right-parametrix series P(I + F)^{−1}. Its terms are not closed under walk reversal with T_{ω^rev} = T_ω^T. Deleting the walks that meet σ_0 therefore need not keep symmetry. We expect C_0 to be non-symmetric at order η_M [I, not tested numerically]. Balaban's [13] expansion is not read; it may be different.
6.3 What holds instead [P, Lemma P at real U, σ ≡ 0, with the real constants]. Write K_0 = H_0 + N_0, H_0 := H(K_0) real symmetric, N_0 real antisymmetric. Since A is symmetric, N_0 is the antisymmetric part of K_0 − A, so ‖N_0‖ ≤ ‖K_0 − A‖ ≤ 2Γ_1²η_M^0 (η_M^0 := η_M without the e^{2·3^dκ_1} factor and with real constants, 4.5). Also H_0 ≥ γ_exp − 2Γ_1²η_M^0 ≥ ¾γ_exp and ‖H_0‖ ≤ 2Γ_1.
6.4 The reading of (2.23) that works. Read dμ_{C^{(k)}(Z_0,0)} as dμ_{H_0^{−1}}: a positive Gaussian with covariance H_0^{−1}, 1/(2Γ_1) ≤ H_0^{−1} ≤ 4/(3γ_exp). Three checks.
 (a) Measure cost. With M_0 := H_0^{−1/2}N_0H_0^{−1/2} (antisymmetric, real, eigenvalues ±iλ_j): det K_0/det H_0 = det(I + M_0) = Π(1 + λ_j²)^{1/2} ∈ [1, exp(½n_Z‖M_0‖²)]. So the factor r_0 ≤ exp(¼nd|Z_0|·‖M_0‖²), ‖M_0‖ ≤ (4/(3γ_exp))·2Γ_1²η_M^0. Second order in η_M; (2.17) form.
 (b) The cancellation in (2.24). Real fields X see only the symmetric part of C_0. (I + M_0)^{−1} = (I − M_0)(I − M_0²)^{−1}, whose symmetric part is (I − M_0²)^{−1}; since −M_0² = M_0^TM_0 ≥ 0, sym(C_0) = H_0^{−1/2}(I + M_0^TM_0)^{−1}H_0^{−1/2} ≤ H_0^{−1} and ‖H_0^{−1} − sym(C_0)‖ ≤ (4/(3γ_exp))‖M_0‖². In (2.23)–(2.24) the B-integral returns +½⟨Γ_0X, (H_0 − α_5)^{−1}Γ_0X⟩ and the first exponential carries −½⟨Γ_0X, sym(C_0)Γ_0X⟩. Their sum is ½⟨Γ_0X, [(H_0 − α_5)^{−1} − H_0^{−1}]Γ_0X⟩ + ½⟨Γ_0X, [H_0^{−1} − sym(C_0)]Γ_0X⟩. The first bracket is Balaban's symmetric-case remainder O(α_5). The second is ≥ 0 with norm ≤ (4/(3γ_exp))‖M_0‖², so it adds O(η_M²)‖Γ_0‖²‖ZX‖² to the O(α_5)‖ZX‖² of (2.25) [R: ‖Γ_0‖ ≤ const is the same input Balaban's own (2.24)–(2.25) step uses].
 (c) The side condition "α_5‖C^{(k)}(Z_0,0)‖ < ½" becomes α_5‖H_0^{−1}‖ < ½, implied by α_5 < (3/8)γ_exp. Since ‖C_0‖ = ‖K_0^{−1}‖ ≤ 4/(3γ_exp) (Re⟨v,K_0v⟩ = ⟨v,H_0v⟩ ≥ ¾γ_exp‖v‖² gives σ_min(K_0) ≥ ¾γ_exp), Balaban's form α_5‖C_0‖ < ½ also holds for α_5 < (3/8)γ_exp.
6.5 Conclusion of §6. Symmetry of C_0 is not needed. Positivity of the reference measure holds with covariance H_0^{−1}. All changes enter as (2.17)-type factors exp(O(η_M²)|Z_0|) and O(η_M²)‖ZX‖² terms, both of smaller order than the terms Balaban already carries.

## 7. Task (4): verdict and ledger
7.1 Verdict. A8 is PROVED relative to WC_FULL's inputs, in the following corrected form [P given the items of 7.2]:
 (A8-real) At the real pair (U, 0) and s ≡ 1, A_Z is real symmetric with γ_exp ≤ A_Z ≤ Γ_1, so dμ_{C^{(k)}(Z_0)} is a positive Gaussian (§3).
 (A8-σ0) At the real pair and σ ≡ 0, H_0 = sym C_0^{−1} obeys ¾γ_exp ≤ H_0 ≤ 2Γ_1, and dμ_{H_0^{−1}} is the positive Gaussian that (2.23)–(2.25) need (§6). Literal symmetry of C_0 is not proved and not needed; it costs exp(O(η_M²)|Z_0|) and an O(η_M²)‖ZX‖² form.
 (A8-complex) For |σ(Δ)| ≤ e^{κ_1} and U_c in the α′-space, the complex Gaussian dμ_{C^{(k)}(Z_0,σ;U_c)} exists, its modulus is r_σ·dμ_{Γ_σ} with a positive Gaussian of covariance 1/(2Γ_1″) ≤ Γ_σ ≤ 4/γ_exp (this is (2.15)), r_σ ≤ exp((4nd/γ_exp)ε_σ|Z_0|) (this is (2.17)), and the ratio to the real measure is ≤ exp((nd/(2γ_exp))ε_σ|Z_0|)e^{½ε_σ‖B‖²}, ε_σ ≤ 2Γ_1″²η_M + Γ_1″/(t(a,α″) − 1) (§5).
 So input (Q) of SOURCES_G3 2.2, as far as positivity and two-sided spectral bounds of the dominating covariance go, holds with c_− = 1/(2Γ_1″) and Λ = 4/γ_exp (complex) or c_− = 1/(2Γ_1), Λ = 4/(3γ_exp) (real reference). The one-bond-fixed form of (Q) and the other factors of (2.15)–(2.26) are not part of A8 and are not treated here.
7.2 Residue (what A8 now rests on).
 W1 Theorem WC (i), (iii), and the walk bounds (ii)–(iii), with their inputs R1–R4, C1–C2, I1–I9 (row A2).
 W2 ‖A_exp‖ ≤ Γ_1″ on 𝒰(α″) (WC 6.6; Schur on W_N).
 I-a Operators defined by quadratic forms are their symmetric representatives (Lemma S (a), (d)). Balaban's convention; never contradicted on the pages read.
 I-b C^{(k)}(Z_0, σ) is (1.1): the σ-weighted walk sum of A_Z^{−1}, with WC_FULL's walk expansion standing in for Balaban's [13] expansion (not read).
 I-c Geometry (G1)–(G3): dist(σ_0, Z_0) ≥ M; domain diameters ≤ c′M_1; the tree-cutting cube count.
 I-d Walk count W < ∞ at rate ε″/8 (G4), from the same counting as WC(ii).
 I-e Reading of "Re C^{−1}" in (2.15) as the symmetric real part H(·) (2.4); reading of dμ_C for non-symmetric C by the density formula 2.2.
 Constants: (H_κ) LM ≥ 16·3^dκ_1/ε″, (H_M) M ≥ 2c′M_1, (H_η) via M ≥ (4/ε″)[2·3^dκ_1 + log(128WΓ_1″²/γ_exp²)], α_5 < (3/8)γ_exp. All are "M large after κ_1", consistent with Balaban p. 16.
 Not needed by the majorant: literal symmetry of C_0 (6.2) and symmetry of Γ_k (Γ_k maps Z_0^c-fields to Z_0-fields and is not a symmetric operator even at s ≡ 1 [I]; "the operators are symmetric" on p. 15 can only refer to the covariances).
7.3 Ledger.
 [V] CMP 116 pp. 12, 13, 15 at 300 dpi: (2.5), (2.6), the p. 13 σ_0 and walk text, (2.7), (2.14), (2.15), the "symmetric/positive/perturbative" sentences; p. 3 s-rule and p. 5 |s(Δ)| ≤ e^{κ_1} via pdftotext; p. 17 α_5 condition via LOC 3.2. WC_FULL 0.10 quoted verbatim.
 [P] 2.3 (only H(K) enters the modulus); Lemma S modulo I-a; 3.2 positivity; Lemma D modulo I-b, I-c, I-d; Lemma P (a)–(e); 5.4 second-order refinement; 6.1, 6.3, 6.4 (a)–(c).
 [I] I-a … I-e; 6.2 expectation that C_0 is not symmetric.
 [R] ‖Γ_0‖ bounded in 6.4(b) (Balaban's own step); W1, W2.
7.4 Suggested TRUST_LEDGER A8 status (for the caller; this file edits no ledger): "proof relative to listed inputs [P, unverified]: SOURCES_A8_POS — positivity at (U,0) from WC(i) + Lemma S; complex case = Lemma P from WC(iii) + Lemma D (σ-truncation O(e^{2·3^dκ_1}e^{−ε″M/4})); literal symmetry of C^{(k)}(Z_0,0) not proved, replaced by its symmetric part H_0 at cost exp(O(η_M²)|Z_0|); residue I-a–I-e." Needs an independent verifier before any status change.

Corrections after verification (SOURCES_A8_POS_VERIFY, 2026-10-28): Lemma D step 1 assumed a tree through b, b′, X has length ≥ dist(b, X) + dist(X, b′); WC's walks use the shortest-tree distance, false for trees (b = b′ gives one branch). Correct bound D ≥ M − c′M_1 ≥ M/2, so η_M carries e^{−ε″M/8} (not /4) and the (H_η) threshold is M ≥ (8/ε″)[…]; the other factors stand. (G2) holds for the unregrouped 5.3 series, not the merged X_0 — harmless (X_0 meets no σ_0-cube). The extra (2.24) term ½⟨Γ_0X, [H_0^{−1} − sym C_0]Γ_0X⟩ is ≥ 0: a COST of the same sign as Balaban's O(α_5) remainder, O(η_M²)‖ZX‖², absorbed in (2.25) (not a favourable sign). Normalisation reading: with prefactor det K the measure is normalised only for symmetric K; the exact integral is (2π)^{n/2}det(sym K)^{−1/2}; the bounds hold either way. SOURCES_G3 must read R_2 of (2.16) as H_0 − H_σ. δ_c (Lemma CP) taken as given.
