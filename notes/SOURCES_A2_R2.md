IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_A2_R2 — proof of CMP 116 (2.16) for R_2 and R_3 from kernel decay (row A2)

Status: Opus draft 2026-10-28, unverified. Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP).
Inputs: IDEAS_FABLE §I3, TRUST_LEDGER row A2, SOURCES_LOC(+_VERIFY), SOURCES_A1_KERNEL §8–§10, CMP 116 pp. 12–16 text.

## 1. What R_1, R_2, R_3 are [V p. 15–16 images, 110 dpi, /tmp/a2r2]
1.1 (2.14) [V]: the term has three Gaussian-type factors: ∫dμ_0(X)|_Z exp(−½⟨Γ_kX, C^{(k)}(Z_0,σ)Γ_kX⟩); ∫dμ_{C^{(k)}(Z_0,σ)}(B) exp(−⟨B, Γ_k(Z_0,σ)X⟩); the χ·exp ΣτV factor. Γ_k(Z_0,σ) = C*Δ_k(σ)CZ_0^c(C^{(k)})^{1/2}(σ).
1.2 (2.15) [V]: the bound replaces the measure by dμ_{(Re C^{(k)}(Z_0,σ)^{−1})^{−1}}(B) times a determinant ratio, and the forms by their real parts.
1.3 Replacement point [V p. 15]: "we replace the operators by the corresponding operators with σ(Z) = 0, **U** = U, **J** = 0, and we estimate the error." So the reference operators are the real, σ = 0 operators.
1.4 Definitions [P from 1.1–1.3, sign as in SOURCES_LOC_VERIFY §5]. Write C(σ) := C^{(k)}(Z_0,σ) at the complex point (**U**, **J**), C_0 := C^{(k)}(Z_0,0) at (U, 0).
 R_1: ½⟨X,R_1X⟩ = ½Re⟨Γ(σ)X, C(σ)Γ(σ)X⟩ − ½⟨Γ(0)X, C_0Γ(0)X⟩ (first exponential).
 R_2 := C_0^{−1} − Re C(σ)^{−1} (precision change of the B-measure; B lives on bonds of Z_0).
 R_3 := Re Γ(σ) − Γ(0), rows b ⊂ Z_0, columns = bonds of the X-lattice (second exponential).
1.5 Balaban gives NO proof on pp. 15–16 for any of the three. (2.16) is printed for R_1 with the words "with matrix elements satisfying the bound"; R_2 and R_3 are "satisfying (2.16)". The brief's "one proof for R_1" does not exist on the page [V]. The only proof mechanism on nearby pages is p. 5 (1.11) (Sect. 1), see §2.
1.6 Printed target [V]: |R(b,b′)| ≤ (O(1)e^{−(1/3)δ_0M} + O(α_0+α_1)) exp(−½δ_0|b_− − b′_−|), with the side condition "M much bigger than κ_1, especially e^{−(1/3)δ_0M}e^{16κ_1} < 1".

## 2. Inputs [grades per item]
(S-rule) [V p. 3, p. 13]: each walk term ω of an s-dependent operator is multiplied by Π s(Δ) over the σ_0 cubes Δ that meet its localization domain. At s ≡ 1 the original operator is recovered. So C(1) − C(σ) = Σ_{ω meets σ_0}(1 − Πσ(Δ))R_ω and C(σ) − C(0) = Σ_{ω meets σ_0}Πσ(Δ)R_ω.
(G) Geometry [V p. 13 + I]: the domains of the expansions are X_0 with X̃_0^5 = Z_0, and domains X with dist(X, Z_0) > (2/3)M. A walk that meets a σ_0 cube contains a domain X ≠ X_0 [I: σ_0 cubes are disjoint from int Z_0′ ⊃ int Z_0, and "intersect" means sharing a cell, as SOURCES_LOC §2.4]. So its localization set reaches distance > (2/3)M from Z_0. Note: a σ_0 cube may touch Z_0; the smallness comes from the domain choice, not from dist(σ_0, Z_0).
(W) Walk bound [V p. 3 (1.7), p. 5 (1.11) as statements; R to CMP 109 (3.107)–(3.108), not read]: |R_ω(b,b′)| ≤ c_ω e^{−δ_0d(ω)} with Σ_ω c_ω ≤ B_0 (the "first two factors" control the sum over ω). d(ω) = "length of a shortest tree graph intersecting all localization domains of ω" (p. 5 [V]); the domains include the localization cubes Δ(b), Δ(b′) (p. 3 [V]). Valid for C^{(k)}(Z_0) and "all operators determining Δ_k" (p. 13 [V] citing [13]); for (C^{(k)})^{1/2} only via the p. 13 sketch ((2.7) + G_3(x)) [R, sketch only].
(κ) Weight absorption [V p. 5]: "If m is big enough, for example m > 2^4, then δ_0d(ω) ≥ δ_1mM … for δ_1M ≥ κ_1" the factor e^{mκ_1} is absorbed; for m ≤ 2^4 the bound is e^{16κ_1}. Used here with a fraction θ of the decay: e^{mκ_1}e^{−θδ_0d(ω)} ≤ e^{16κ_1} if θδ_1^BM ≥ κ_1 (δ_1^B := Balaban's p. 5 constant, not A1's δ_1).
(K_A) Kernel decay of A := C*Δ_kC [R]: |A(b,b′)| ≤ c_Ae^{−δ_A|b−b′|} on the analyticity space with the larger constants α_0′, α_1′. Sources: A7's decay half (TRUST_LEDGER A7, reduced to A1 + A18, rate δ_A = A1′'s δ_1), or Balaban's walk expansion of Δ_k in [13] (rate δ_0). A_Z := Z_0AZ_0.
(An) Analyticity [V p. 15 statement, R for proof]: "The quadratic forms and covariances in H(Z) are analytic functions on the space of configurations (**U**, **J**) … with constants α_0′, α_1′ much bigger than α_0, α_1". Bounds of (K_A), (W) hold on that space.
(D) Case (a) [V p. 12 (2.5), SOURCES_LOC_VERIFY §2]: C(1) = C^{(k)}(Z_0) = A_Z^{−1} on fields on Z_0. At complex (**U**, **J**) the identity C(1)A_Z = I extends by analyticity [P: both sides analytic, equal on the real space].

## 3. The key step: C(σ)^{−1} = A_Z + T_σ by a Neumann series [P]
Notation. r := |b_− − b′_−|. For a kernel K and ρ ≥ 0 put ‖K‖_ρ := max{sup_b Σ_{b′}, sup_{b′} Σ_b} |K(b,b′)|e^{ρ|b−b′|}. S(t) := sup_b Σ_{b′} e^{−t|b−b′|} < ∞ for t > 0 (SOURCES_LOC_VERIFY §5: S(t) ≤ d·coth(t/(2√d))^d-type bound, independent of M, L, volume).
Facts [P, elementary]. (N1) ‖KK′‖_ρ ≤ ‖K‖_ρ‖K′‖_ρ (triangle inequality e^{ρ|b−b″|} ≤ e^{ρ|b−b′|}e^{ρ|b′−b″|}, then row and column sums). (N2) |K(b,b′)| ≤ ‖K‖_ρe^{−ρr}. (N3) |K| ≤ ce^{−ρ′r} with ρ′ > ρ ⇒ ‖K‖_ρ ≤ cS(ρ′ − ρ). (N4) ℓ²-norm ‖K‖ ≤ ‖K‖_0 ≤ ‖K‖_ρ (Schur).
Lemma N. Let A_Z be invertible, C_1 := A_Z^{−1}, and W a kernel on Z_0, with ‖A_Z‖_ρ ≤ a, ‖W‖_ρ ≤ w, aw ≤ ½. Then C_1 − W is invertible, (C_1 − W)^{−1} = A_Z + T with T := Σ_{n≥1}(A_ZW)^nA_Z, and ‖T‖_ρ ≤ 2a²w.
Proof. C_1 − W = C_1(I − A_ZW). By (N1), ‖A_ZW‖_ρ ≤ ½. So I − A_ZW is invertible with inverse Σ_{n≥0}(A_ZW)^n (finite volume: matrices; the series converges in ‖·‖_ρ). Hence (C_1 − W)^{−1} = Σ_{n≥0}(A_ZW)^nA_Z = A_Z + T, and ‖T‖_ρ ≤ Σ_{n≥1}(aw)^na ≤ 2a²w. ∎
No Hermiticity, no lower bound, and no decay of an inverse are used. So Lemma N works at complex (**U**, **J**, σ).

Bound on W_σ := C(1) − C(σ) [P given (S-rule), (G), (W), (κ)].
(i) By (S-rule), W_σ = Σ_{ω meets σ_0}(1 − Πσ(Δ))R_ω, and |1 − Πσ| ≤ 2e^{mκ_1} on |σ(Δ)| ≤ e^{κ_1}.
(ii) Tree length. b, b′ ⊂ Z_0. By (G) the tree of ω meets Δ(b), Δ(b′), and a domain X with dist(X, Z_0) > (2/3)M. A tree meeting three sets has length ≥ ½(sum of the three pairwise distances), since each pairwise distance is ≤ the tree path between them. So d(ω) ≥ max{r, (2/3)M + ½r} − O(M_1) [I: the O(M_1) is the size of Δ(b), Δ(b′); e^{O(δ_0M_1)} goes into O(1), M_1 is fixed before M].
(iii) Split δ_0d = θδ_0d + (1−θ)δ_0d. By (κ), e^{mκ_1}e^{−θδ_0d} ≤ e^{16κ_1}. For λ ∈ [0,1], max{r, (2/3)M + ½r} ≥ ½(1+λ)r + (1−λ)(2/3)M.
(iv) Take θ = 1/20, λ = 1/5: rate ½(6/5)(19/20)δ_0 = 0.57δ_0 in r, and (4/5)(2/3)(19/20)δ_0 > 0.506δ_0 in M. So
 |W_σ(b,b′)| ≤ 2B_0e^{16κ_1}O(1)e^{−0.506δ_0M}e^{−0.57δ_0r},
 ‖W_σ‖_{½δ_0} ≤ w := O(1)B_0S(0.07δ_0)e^{16κ_1}e^{−δ_0M/2}.
The tree for R_2 is a ROUND trip: both b and b′ lie in Z_0. That is the source of the spare decay. The same bound holds for W_0 = Σ_{ω meets σ_0}R_ω with e^{16κ_1} → 1.

Bound on A_Z [R (K_A)]. If δ_A > ½δ_0: ‖A_Z‖_{½δ_0} ≤ a := c_AS(δ_A − ½δ_0). Restriction to Z_0 does not increase ‖·‖_ρ.

Conclusion of §3. If M ≥ M_* with a·w ≤ ½ (M_* depends on κ_1, δ_0, c_A, δ_A, B_0, M_1 only), Lemma N gives
 C(σ)^{−1} = A_Z(**U**) + T_σ,  ‖T_σ‖_{½δ_0} ≤ 2a²w = O(1)e^{16κ_1}e^{−δ_0M/2},
for all |σ(Δ)| ≤ e^{κ_1} and all (**U**, **J**) in the α′-space. In particular C(σ) is invertible (this is also not stated by Balaban).

## 4. Proposition R2 and its proof [P given §2 inputs]
Proposition R2. Assume (S-rule), (G), (W), (κ), (K_A) with δ_A > ½δ_0, (An), (D). Let M ≥ M_* (§3) and M ≥ 96κ_1/δ_0. Then for all σ with |σ(Δ)| ≤ e^{κ_1} and all (**U**, **J**) with |A″|, |∇A′| < α_1, |**J**| < α_0:
 |R_2(b,b′)| ≤ (O(1)e^{−(1/3)δ_0M} + O(α_0 + α_1)) e^{−½δ_0|b_− − b′_−|}.
This is (2.16) exactly as printed: same rate ½δ_0, same e^{−δ_0M/3}.
Proof. By §3 at the two points, C(σ)^{−1} = A_Z(**U**) + T_σ and C_0^{−1} = A_Z(U) + T_0 (real point, W_0). So
 R_2 = C_0^{−1} − Re C(σ)^{−1} = [A_Z(U) − Re A_Z(**U**)] + [T_0 − Re T_σ].
(a) Walk part. |Re T_σ(b,b′)| ≤ |T_σ(b,b′)|. By (N2), |T_0 − Re T_σ| ≤ (‖T_0‖_{½δ_0} + ‖T_σ‖_{½δ_0})e^{−½δ_0r} ≤ O(1)e^{16κ_1}e^{−δ_0M/2}e^{−½δ_0r}. With M ≥ 96κ_1/δ_0, e^{16κ_1}e^{−δ_0M/6} ≤ 1, so this is ≤ O(1)e^{−δ_0M/3}e^{−½δ_0r}.
(b) α part (Balaban's "perturbative argument", p. 15). Write **U** = U′U, U′ = exp(iL^{−1}ηA′). Fix (A′, **J**) with |A′|-norms < α_1, |**J**| < α_0, and put f(t) := A_Z(exp(itL^{−1}ηA′)U, t**J**)(b,b′) for complex t. By (An) and (K_A), f is analytic for |t| ≤ t_0 := min(α_0′/α_0, α_1′/α_1) and |f(t)| ≤ c_Ae^{−δ_Ar} there. Schwarz–Cauchy: |f(1) − f(0)| ≤ c_Ae^{−δ_Ar}·2/(t_0 − 1) for t_0 ≥ 2. Since f(0) = A_Z(U)(b,b′) is real, |A_Z(U) − Re A_Z(**U**)| ≤ |f(1) − f(0)| ≤ O(α_0/α_0′ + α_1/α_1′)c_Ae^{−δ_Ar} = O(α_0 + α_1)e^{−½δ_0r} (α′ fixed, δ_A > ½δ_0). [I: "f(0) real" uses that A(U) is a real operator at real U, J = 0, as p. 15's "for the pair (U, 0) the operators are symmetric".]
(a) + (b) give the claim. ∎

4.1 What the plan asked for and what changed.
- The plan (brief step 2–3) used the resolvent identity C − C_s = C(A_s − A)C_s and the kernel decay of C and C_s from Lemma CT (A1). That route is not needed and is worse. Lemma CT gives rate ε = min{δ/2, c_−/(2c_+Σ)} ≪ δ_0, so it cannot give the printed rate ½δ_0. It also needs a lower bound c_− for the σ-localized operator, which is A3's open "σ-localized version". And C_s = C(Z_0,s) is not the inverse of any modified finite-range operator: at s ≠ 1 it is a truncated walk sum (SOURCES_LOC §2.3).
- Lemma N avoids all three problems. The only inverse is C(1) = A_Z^{−1}, which is explicit by (2.5) (case (a)). Its inverse A_Z is a kernel with known decay. The σ-dependence enters only through W_σ, a sum of walks, which is small in ‖·‖_{½δ_0}.
- "Deleted couplings at distance ≥ M/3" (brief step 3): the actual geometry is (G): deleted walks reach a domain at distance > (2/3)M. The 1/3 in (2.16) is consistent with ½·(2/3): half the tree decay pays for |b−b′|, the other half gives e^{−δ_0M/3}. For R_2 the round trip gives (2/3)M + ½r, so there is spare decay that absorbs e^{16κ_1}. For R_3 there is no spare (§5).

4.2 Rate conditions (brief step 4).
- If δ_A > ½δ_0 (Balaban's walk expansion of Δ_k at rate δ_0 [R]), (2.16) holds as printed.
- If the decay of A comes from our A7 ⇐ A1 reduction, δ_A = δ_1 (A1′, SOURCES_A1_KERNEL §10), which is much smaller than δ_0. Then run §3 with ρ = (1−θ)δ_A instead of ½δ_0. The M-factor is unchanged (it comes from W, not A). Result: |R_2| ≤ (O(1)e^{−δ_0M/3} + O(α_0+α_1))e^{−(1−θ)δ_A r}.
- Tolerance in the consumers: SOURCES_LOC (E) uses only ‖R‖ ≤ ε_M = S(ρ)·(O(1)e^{−δ_0M/3} + O(α_0+α_1)) (Schur). (2.21) uses only the same Schur sum. Any fixed ρ > 0 works, if ρ does not shrink as M grows. A1′'s δ_1 increases as RM grows (θ = log L/(RM) decreases), so ρ is bounded below uniformly in M ≥ M_1 [P from A1_KERNEL §10]. So the weaker rate is tolerated by both consumers.

## 5. R_3 "similarly", and R_1 [P given inputs; one extra R input]
Extra input (W_Ŝ) [R, sketch only]: Ŝ(s) := (C^{(k)})^{1/2}(s) has a walk expansion with the bound (W) and the s-rule. Source: CMP 116 p. 13, via (2.7) (Stieltjes integral + series in C*Δ_kC) and the operator G_3(x) "with the same properties as G_2"; Balaban gives a sketch only. A(s) := C*Δ_k(s)C has (W) by "[13] for all operators determining Δ_k" [R].
Decomposition [P]. With Γ(σ) = A(σ)Z_0^cŜ(σ):
 Γ(σ) − Γ(0) = [A(σ) − A(0)]Z_0^cŜ(σ) + A(0)Z_0^c[Ŝ(σ) − Ŝ(0)]   (all at (**U**, **J**)),
 R_3 = [Re Γ(σ;**U**) − Re Γ(0;**U**)] + [Re Γ(0;**U**) − Γ(0;U)].
Walk part. Row b ⊂ Z_0, column x. In the first term, A(σ) − A(0) is a sum of walks meeting σ_0 (s-rule, weight Πσ). By (G) its tree contains Δ(b) and a domain X with dist(X, Z_0) > (2/3)M, so d ≥ max{|b−z|, (2/3)M}. Then
 Σ_z e^{−δ″max{|b−z|, 2M/3}}e^{−δ″|z−x|}·(spare) ≤ S(θδ_0)e^{−δ_* max{r, 2M/3}},
because max{|b−z|, 2M/3} + |z−x| ≥ max{|b−x|, 2M/3}. Here δ″ = (1−θ)δ_0 and δ_* := (1−2θ)min{δ_0, δ_A}. The second term is the same: |b−z| + max{|z−x|, 2M/3 − |b−z|} ≥ max{r, 2M/3}, using dist(z, X) ≥ dist(b, X) − |b−z|. The weights give e^{16κ_1} for each walk-sum factor by (κ), so a factor e^{cκ_1} with c ≤ 32.
 ⇒ |Γ(σ) − Γ(0)|(b,x) ≤ O(1)e^{cκ_1}e^{−δ_* max{r, 2M/3}}.
α part. As §4 (b), with Γ(0; ·) in place of A_Z: O(α_0+α_1)e^{−δ_* r} [needs (An) for Γ, i.e. for Ŝ: R].
Result for R_3. The trip is ONE-WAY (x need not lie in Z_0), so d ≥ max{r, (2/3)M} only. Two usable forms:
 (R3a) |R_3(b,x)| ≤ (O(1)e^{cκ_1}e^{−δ_*M/3} + O(α_0+α_1)) e^{−½δ_* r}   (λ = ½);
 (R3b) |R_3(b,x)| ≤ (O(1)e^{−δ_*M/3} + O(α_0+α_1)) e^{−¼δ_* r}   if M ≥ 12cκ_1/δ_*   (λ = ¼: M-part ½δ_*M, spare δ_*M/6 absorbs e^{cκ_1}).
Neither is the printed form exactly. The printed form needs both rate ½δ_0 and e^{−δ_0M/3} with no e^{cκ_1}. The one-way tree bound gives ½r + M/3 with no spare, so the e^{cκ_1} factor stays. Balaban's own remark right after (2.16), "e^{−(1/3)δ_0M}e^{16κ_1} < 1", is consistent with reading the printed O(1) as O(1)e^{16κ_1}, i.e. form (R3a). [I: reading of the remark.]
Tolerance: (2.21) uses R_3 only through ½(O(1)e^{−δ_0M/3} + O(α_0+α_1))(‖ZX‖² + ‖Z_0B‖²), i.e. through a Schur sum. (R3a) or (R3b) gives the same with e^{−δ_0M/3} → e^{cκ_1}e^{−δ_*M/3} or with S(½δ_*) → S(¼δ_*). Both are small for M ≫ κ_1, which Balaban assumes. So R_3 is proved in a form sufficient for its only printed use [P + I that (2.21) is its only use on pp. 16–17].
R_1 (not asked, same method) [P-sketch]. R_1 = Re Γ(σ)*C(σ)Γ(σ) − Γ(0)*C_0Γ(0) telescopes into three products, each with one difference factor: Γ(σ) − Γ(0) (§5), C(σ) − C_0 (a walk sum meeting σ_0, round trip, §3 bound), or the α part. Columns/rows on the X-lattice: one-way geometry, so R_1 obtains form (R3a)/(R3b) as well. Note: the C(σ) − C_0 factor needs no Lemma N (it is a direct walk sum).

## 6. Consequence for SOURCES_LOC input (E) [P]
SOURCES_LOC Lemma LOC needs (E): C_0^{−1} = Z_0AZ_0 − R with ‖R‖ ≤ ε_M, at the real point. §3 at σ = 0, real U, J = 0 gives this directly: C_0^{−1} = A_Z(U) + T_0, so R = −T_0 and ‖R‖ ≤ ‖T_0‖_{½δ_0} ≤ 2a²w_0 = O(1)S·e^{−δ_0M/2} (no e^{16κ_1}, no α term).
So (E) no longer needs (2.16) "similarly", nor the [I] step "extend (2.16) from the Cauchy contour to σ ≡ 1 by analyticity" (SOURCES_LOC §3.1, VERIFY §6). The condition ε_M ≤ γ_0/2 becomes a condition on M alone (M after δ_0, c_A, δ_A, B_0, γ_0); the "α small after M" caveat of LOC_VERIFY §5 drops out for (E).
Side result: C_0 and C(σ) are invertible for M ≥ M_* (Lemma N). Balaban uses C^{(k)}(Z_0,σ)^{−1} in (2.15) without stating this.

## 7. Ledger
Claim. Row A2 (CMP 116 (2.16) for R_2, R_3) is reduced as follows.
[V] (on page images, CMP 116): (2.14)–(2.16) and the R_2/R_3 sentences (pp. 15–16); the replacement point σ = 0, **U** = U, **J** = 0 (p. 15); the s-rule (p. 3) and "as before" (p. 13); the domain choice X̃_0^5 = Z_0, dist(X, Z_0) > (2/3)M (p. 13); the κ_1-absorption mechanism and the e^{16κ_1} constant (p. 5 (1.11)); case (a) (2.5) (p. 12); the analyticity statement on the α′-space (p. 15). Balaban prints no proof of (2.16) for R_1 either.
[P] Lemma N; the W_σ bound (Steiner tree ≥ half the pairwise distances, round trip); Proposition R2 with the printed form exactly when δ_A > ½δ_0; the α part by a one-variable Cauchy estimate; R_3 forms (R3a)/(R3b); R_1 sketch; §6 direct proof of LOC (E).
[R] (W): walk bounds (3.107)–(3.108) of CMP 109 Sect. C for C^{(k)}(Z_0) and for the operators of Δ_k (not read). (W_Ŝ): walk expansion of (C^{(k)})^{1/2}, CMP 116 p. 13 sketch only (R_3, R_1 only; R_2 does not need it). (K_A): kernel decay of C*Δ_kC on the α′-space = decay half of A7 (reduced to A1 + A18, rate δ_1) or Balaban's [13] rate δ_0. (An): analyticity of A, Ŝ on the α′-space with uniform bounds (p. 15 statement; an A18 piece).
[I] "intersect" = sharing a cell (σ_0 cubes touching Z_0 do not count); tree bound loses O(M_1) for the size of Δ(b), absorbed in O(1) with M_1 fixed before M; pointwise kernel bounds from Balaban's localized operator norms; reality of A(U) at (U, 0); reading of the printed O(1) in (2.16) for R_3 as O(1)e^{16κ_1}; (2.21) is the only use of R_3 on pp. 16–17.
Not needed: A1 itself (only through δ_A if A7's route is chosen), Lemma CT, A3 (no lower bound enters), symmetry (S).
Net status for A2: R_2 — reduced [P] to (W) + (K_A) + (An), with the printed (2.16) reproduced if δ_A > ½δ_0, and a weaker but sufficient rate otherwise. R_3 — reduced [P] to (W) + (W_Ŝ) + (K_A) + (An), in form (R3a)/(R3b), not the printed form; sufficient for (2.21). The irreducible input is the walk-expansion structure (W) of [13]: the operator C^{(k)}(Z_0,s) is defined only through it.
Not done: the IDEAS_FABLE §I3 numerical kill test (L = 3, small Z_0) was not run. It would test Lemma N's mechanism, not the [R] inputs.
