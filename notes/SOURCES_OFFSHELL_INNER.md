# SOURCES_OFFSHELL_INNER — the inner operators M = Δ_πH, N = H^TΔ_πH of CMP 102 (80) off-shell (the "F-extension question" of SOURCES_R005_189_VERIFY; ledger rows R-005, R-010, R-014)

Written 2026-10-29 by Claude (Opus 5.5), derivation agent. Ids follow IDS.md. File-local labels (repair (1), repair (2), reading (i), reading (ii), M^{(i)}, N^{(i)}, V^{(i)}, E^{(1)}, Theorem 189′, Lemma GF, (A)–(D)) are not global ids. Labels T_1, F, Theorem F, Theorem E, Lemma 1, Lemma 3 are those of SOURCES_OFFSHELL_H; Lemma F, Lemma C2, Lemma G, Theorem 189, F_a–F_0 are those of SOURCES_R005_189.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every search.
No existing file was edited. PLAN.md was not changed. sync.sh was not run. New file: this file only.
Inputs read: SOURCES_R005_189 (full), SOURCES_R005_189_VERIFY (full), SOURCES_OFFSHELL_H (full), SOURCES_OFFSHELL_H_VERIFY (full), SOURCES_OFFSHELL_F2 (full), SOURCES_R005_DD §4.3, §6, TRUST_LEDGER rows R-002, R-010, R-014, R-016, SOURCES_ORDER_CANON A.1.
Page images read in this session (pdftoppm -r 100, fresh folder /tmp/offinner_75622, deleted after use; disk had 6.5 GB free):
- CMP 99 (Propagators, pp. 389–434): pp. 420, 421, 422, 423.
- CMP 102 (Variational, pp. 277–309): pp. 290, 291, 297, 298, 299, 306.
- CMP 116 (pp. 1–22): pp. 2, 3, 4.
Text layer only (tagged so): CMP 102 p. 289 ((75), (76)), p. 293 ((99)–(104)), p. 300 (the sentence after (143)).
Grades: [V] read on a page image in this session; [P] proved here, every step written; [P-sketch] steps written, one or more not in full; [R] reduced to a printed statement or a project result, named; [I] inferred, not proved.

## 0. Result

Repair (1) does not work. Repair (2) works.

Repair (1) puts F in place of H everywhere, so M becomes Δ_π(J)F. F has the sup, ∇, P_1 and Δ entries with sup|J| (Theorem F). But F is not Landau off-shell: λ_F := G′RD*F ≠ 0. The operator Δ′_π(J) then acts on F through all four polarized terms, not through T_1 only. Term 4 is ½DRG′D*Γ_4(λ_F, J). The term DRD*F contributes DRG′D*-kernels only on functions of J(U), not of J. So the piece ½DRG′D*Γ_4(λ_F, J − J(U)) has no partner that can cancel it. This is two derivatives on G′, applied to a function of the free variable J. So Δ_π(J)F has the same item as Balaban's literal Δ_π(J)H. The item moves from H to F; it does not go away [P-sketch for the structure; I for "no other cancellation", as for the literal extension].

Repair (2) is reading (i). I define M^{(i)} := (Δ_π(J) + DRD*)H and N^{(i)} := H^T(Δ_π(J) + DRD*)H, with H = G_πQ*(QG_πQ*)^{−1}(L^{j(·)}η)^{−1} at the variable (U, J). Then, identically in (U, J), M^{(i)} and N^{(i)} equal the printed right sides of CMP 102 (87) and (89) [P]. This is not an ad hoc choice. It is the gauge-fixed operator Δ_π + DRD* of CMP 99 p. 420, the operator that CMP 102 (137) itself writes [V p. 298]. V^{(i)} is analytic on (3.16), gauge invariant, and equal to (80) at every on-shell point. Theorem 189 holds off-shell with the same proof, relative to (3.132)–(3.133) at (U, J). Thm 3.12 uses J only through the sup bound (3.131) [V p. 422]. So the off-shell (189), the off-shell sup and ∇ entries of (190), and the inner sup entries of Theorem E of SOURCES_OFFSHELL_H all hold [P relative to listed inputs]. The two later uses also hold. CMP 109 (3.31) uses only sup bounds of δV/δA′. CMP 116 Sect. 1 needs one more walk-localized operator, ω := (QG_πQ*)^{−1}. Its walk expansion is R-002, here at a sup-bounded J [R]. Remark: under the literal reading (ii), even the first-derivative bound (88) fails off-shell. So reading (ii) cannot give Balaban's own Prop. 4 off-shell.

## 1. The item [summary of the inputs; grades as given there]

- CMP 102 (80) [V p. 290]: V(A′) = −⟨HD_3(A′), J⟩ − ⟨A′, Δ_πHD(A′)⟩ + ½⟨HD(A′), Δ_πHD(A′)⟩ + V_0(A′ − HD(A′)). CMP 116 p. 2 [V]: "The function V(A′) … is given by the formula (80) [15]."
- (87) [V p. 291]: ⟨A′, Δ_πHD(A′)⟩ = ⟨A′, (Δ_π + DRD*)HD(A′)⟩ = ⟨A′, (G^{−1} − Q*aQ)GQ*(QGQ*)^{−1}(L^{j(·)}η)^{−1}D(A′)⟩ = ⟨A′, Q*(QGQ*)^{−1}(L^{j(·)}η)^{−1}D(A′)⟩ − ⟨A′, Q*a(L^{j(·)}η)^{−1}D(A′)⟩. The first equality needs ⟨A′, DRD*HD⟩ = ⟨RD*A′, RD*HD⟩ = 0, that is RD*A′ = 0 or RD*H = 0. (137) [V p. 298] writes the operator form "Δ_πH = (Δ_π + DRD* + Q*aQ)H − Q*a(L^{j(·)}η)^{−1} = Q*(QGQ*)^{−1}(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1}", and p. 299 [V] says "Above we have used the equality RD*H = 0."
- CMP 99 p. 420 [V]: "G^{−1} defined as G^{−1} = Δ_π + DRD* + Q*aQ"; (3.126) "HB = GQ*(QGQ*)^{−1}B". p. 299 [V]: "Δ_π = Δ − Δ′_π is defined by the formula (3.120)".
- Off-shell RD*H ≠ 0 (SOURCES_R005_DD 6.2, CONFIRMED). So (87) fails off-shell for A′ off the Landau slice. Reading (ii) (the literal (80)) keeps Δ_πH = (137 right side) − DRD*H. DRD*H contains the ∇G′∇*-on-J kernel (SOURCES_R005_189 §7.3, CONFIRMED in its VERIFY).
- The verifier's finding: F of SOURCES_OFFSHELL_H replaces only the outer H of (179). V, D, 𝔇, 𝒜_0 keep H. Theorem E uses the off-shell sup entry of δ𝒜_0/δB, which rests on (189) off-shell. So the F-extension inherits the item under reading (ii).
- What the step needs from the off-shell functions (SOURCES_OFFSHELL_H 1.3, CONFIRMED for the Cauchy step; SOURCES_OFFSHELL_H_VERIFY V1.3–V1.4): (A) analyticity on (3.16); (B) the bounds (3.14)–(3.15), (3.9); (C) equality with (3.7) at on-shell points; (D) gauge invariance (1.19); and two later uses: CMP 116 Sect. 1 localization (1.1)–(1.22), and CMP 109 (3.31) (‖·‖_{1,β}).
- Sign convention. I use Balaban's Δ_π = Δ − Δ′_π and G_π^{−1} = Δ_π + DRD* + Q*aQ = G_0^{−1} − Δ′_π(J), G_0^{−1} = Δ_a = Δ + DRD* + Q*aQ. Then H = H_0 + G̃_0Δ′_π(J)H (SOURCES_R005_DD (4.3.1)) and F = H_0 + G̃_0T_1(J)F. The normalization factor (L^{j(·)}η)^{−1} of the variational H (CMP 99 p. 422 [V]) is written where it matters; QH = QF = (L^{j(·)}η)^{−1}.

## 2. Repair (1): h = F everywhere — refuted

2.1 Definition. Put F(U, J) of SOURCES_OFFSHELL_H 3.1 in every slot of H: D^F(A′) = C(A′ − FD^F(A′)), 𝔇^F := δD^F/δA′, and
 V^F(A′) := −⟨FD^F_3(A′), J⟩ − ⟨A′, M^{(1)}D^F(A′)⟩ + ½⟨D^F(A′), N^{(1)}D^F(A′)⟩ + V_0(A′ − FD^F(A′)), M^{(1)} := Δ_π(J)F, N^{(1)} := F^TΔ_π(J)F.
𝒜_0^F solves (180) with V^F, and 𝓗^F := 𝒜_0^F + H_0B − FD^F(𝒜_0^F + H_0B). CMP 102 p. 287 [V in SOURCES_OFFSHELL_H] permits another h in A = A′ − hD(A′).

2.2 What holds [P relative to Theorem F of SOURCES_OFFSHELL_H].
- (C) On-shell F = H (Theorem F (e)). So D^F = D, V^F = V, 𝒜_0^F = 𝒜_0, 𝓗^F = 𝓗 at every on-shell point.
- (A) F is analytic in (U, J) (Theorem F (b)). Prop. 3 of CMP 102 uses h only through QH = (L^{j(·)}η)^{−1} (45) and the sup and ∇ bounds of H ((S3) of SOURCES_R005_189). QF = (L^{j(·)}η)^{−1} off-shell (QH_0 = (L^{j(·)}η)^{−1}, QG̃_0 = 0; SOURCES_OFFSHELL_F2 1.5). Theorem F (c) gives the sup and ∇ bounds. So D^F exists and is analytic.
- (D) F is gauge covariant (Theorem F (d), [P-sketch]).
So the test is (B), through the kernels M^{(1)} and N^{(1)} in (189).

2.3 Decomposition of M^{(1)} [P]. Put μ := T_1(J)F. From H_0 = G_0Q*(QG_0Q*)^{−1}(L^{j(·)}η)^{−1} and G_0^{−1}G̃_0 = I − Q*(QG_0Q*)^{−1}QG_0:
 G_0^{−1}F = Q*(QG_0Q*)^{−1}[(L^{j(·)}η)^{−1} − QG_0μ] + μ.
With Δ_π(J) = G_0^{−1} − Δ′_π(J) − DRD* − Q*aQ and QF = (L^{j(·)}η)^{−1}:
 Δ_π(J)F = Q*(QG_0Q*)^{−1}[(L^{j(·)}η)^{−1} − QG_0μ] − Q*a(L^{j(·)}η)^{−1} − E^{(1)},
 E^{(1)} := [Δ′_π(J) − T_1(J)]F + DRD*F.
The first two terms are in 𝒦(−3): (QG_0Q*)^{−1} is the J-free R-001-family kernel, and |G_0μ| ≤ C(L^jη)²·c_J(L^jη)^{−3}w by Lemma 3 of SOURCES_OFFSHELL_H. So M^{(1)} ∈ 𝒦(−3) if and only if E^{(1)} ∈ 𝒦(−3). On-shell E^{(1)} = 0 (Lemma 1 there, and RD*H = 0).

2.4 The first part of E^{(1)} [P-sketch]. Put λ_F := G′RD*F. By the polarization of (3.120) (SOURCES_R005_DD 6.3; Lemma 1 of SOURCES_OFFSHELL_H), [Δ′_π(J) − T_1(J)]F is the sum of terms 2, 3, 4 with λ_2 = λ_F:
- term 2, local in λ_F and J: bounded (λ_F needs |F| only, through G′∇* of (3.42) and (3.49));
- term 3 = DRG′Γ_3(Dλ_F, J): bounded (Dλ_F = DG′R(D*F) needs |∇F|, Theorem F (c));
- term 4 = ½DRG′D*Γ_4(λ_F, J): the kernel DRG′D* = DG′D* − (DP)G′D* acts on a function of J. This is the ∇G′∇*-on-J kernel.

2.5 The second part, DRD*F [P-sketch]. Theorem F gives Δ_UF and DPD*F, not DD*F or D*DF. So DRD*F = DD*F − DPD*F needs its own bound. Use the intertwining of SOURCES_R005_DD 6.2 (from CMP 99 (3.117), confirmed there V3.14) at J = 0: for λ ∈ N(Q′), G_0^{−1}Dλ = DΔ_Uλ + Δ′_π(J(U))Dλ. Transposing as there, with RG′D*Q* = 0:
 RD*G_0 = RG′D* − RG′D*Δ′_π(J(U))G_0, hence RD*F = RG′D*[T_1(J)F − Δ′_π(J(U))F].
(Check: on-shell the bracket is T_1(J(U))H − Δ′_π(J(U))H = 0 by Lemma 1.) On 0-forms D*D = G′^{−1} − Q′*aQ′, so D*DRG′ = I − Q′*C′Q′G′² − Q′*aQ′RG′, a bounded operator (C′ := (Q′G′²Q′*)^{−1}). Hence DRG′D*(DRG′X) = DRG′X + (bounded). So in DRD*F the pieces T_1(J)F, and the T_1 and term-3 parts of Δ′_π(J(U))F, give bounded kernels. Terms 2 and 4 of Δ′_π(J(U))F give DRG′D*Γ′(λ_F, J(U)), Γ′ local and bilinear: the ∇G′∇*-kernel on a function of J(U).

2.6 No cancellation of the J-term [P-sketch for the structure; I for the growth]. Fix U and let J = J(U) + δJ. λ_F = 0 at δJ = 0. At first order in δJ, λ_F has the nonzero leading term of SOURCES_R005_DD 6.2 (½RG′Γ(H, δJ) at the level of RD*F, a nonzero linear form in δJ for non-abelian G) [P-sketch]. The ∇G′∇*-kernels of E^{(1)} are:
- from 2.4: ½DRG′D*Γ_4(λ_F, J(U)) + ½DRG′D*Γ_4(λ_F, δJ);
- from 2.5: DRG′D*Γ′(λ_F, J(U)).
The pieces with J(U) act on a fixed function of U. The first-order conditions (1.11)–(1.13) of CMP 109 do not bound J(U) even in sup norm (SOURCES_R005_DD 6.0: only the lattice bound, too large by L^j), and they give no Hölder norm. The piece ½DRG′D*Γ_4(λ_F, δJ) is of second order in δJ, and it is the only ∇G′∇*-kernel on δJ: DRD*F contains the current J(U) only. So no term of M^{(1)} can cancel it. Its sup → sup norm is the norm of the DRG′D* row against |Γ_4(λ_F, δJ)|, with δJ free in the polydisc of (3.16). numerics/offshell_cz.py (rerun and confirmed in SOURCES_OFFSHELL_H_VERIFY V4.2) gives growth 0.88–0.91 per doubling of ℓ = L^j for the DRG′D^T row (d = 2). So M^{(1)} has no j-uniform kernel bound from the available inputs. This is the same status as Balaban's literal extension: there term 4 is ½DRG′D*Γ_4(λ_2, δJ) with λ_2 = G′RD*H; here λ_2 is replaced by λ_F. "No hidden cancellation inside DRG′D*Γ_4(λ_F, δJ)" stays [I], as in SOURCES_OFFSHELL_H_VERIFY V4.5.

2.7 Variants of (1) also fail [P-sketch]. (a) M := (Δ_π(J) + DRD*)F removes DRD*F but keeps [Δ′_π(J) − T_1(J)]F, so term 4 with λ_F at the full J stays. (b) N^{(1)} = F^TM^{(1)} inherits E^{(1)}. The reason is structural. Δ′_π(J) acts through T_1 only on operators K with G′RD*K = 0 (Lemma 1). F has this property only on-shell. The operator H := G_πQ*(QG_πQ*)^{−1}(L^{j(·)}η)^{−1} has a different property at every (U, J): G_π^{−1}H lies in the range of Q*. Section 3 uses this property.

Verdict on (1). Repair (1) keeps (A), (C), (D) and fails (B) at the same place as the literal reading. It does not close the item.

## 3. Repair (2): reading (i), the gauge-fixed form — adopted

3.1 Definition. Let (U, J) lie in the domain (3.16) of CMP 109. Use reading B of SOURCES_R005_DD 6.0: Δ′_π and Δ^{(2)} are taken at the variable J. Put
 G_π := (Δ − Δ′_π(J) + DRD* + Q*aQ)^{−1},  ω := (QG_πQ*)^{−1},  H := G_πQ*ω(L^{j(·)}η)^{−1}
(CMP 99 p. 420 and (3.126) [V], with the variational factor of p. 422 [V]). Keep D(A′) = C(A′ − HD(A′)) and 𝔇 as in CMP 102 Prop. 3. Define
 M^{(i)} := (Δ_π(J) + DRD*)H,  N^{(i)} := H^TM^{(i)},
 V^{(i)}(A′) := −⟨HD_3(A′), J⟩ − ⟨A′, M^{(i)}D(A′)⟩ + ½⟨D(A′), N^{(i)}D(A′)⟩ + V_0(A′ − HD(A′)).
𝒜_0 solves (180) with V^{(i)}. The outer factor of (179) is F, as in SOURCES_OFFSHELL_H 5.1 and SOURCES_OFFSHELL_F2 1.5 (H_k^F(B′) = H_0B′ + 𝒜_0 − F·D(H_0B′ + 𝒜_0)).

3.2 Lemma GF (printed right sides, identically in (U, J)) [P]. Wherever G_π and ω exist:
 M^{(i)} = Q*ω(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1},  N^{(i)} = (L^{j(·)}η)^{−1}ω(L^{j(·)}η)^{−1} − (L^{j(·)}η)^{−4},
and N^{(i)} is symmetric.
Proof. G_π^{−1}H = Q*ω(L^{j(·)}η)^{−1} and QH = QG_πQ*ω(L^{j(·)}η)^{−1} = (L^{j(·)}η)^{−1}. Since Δ_π + DRD* = G_π^{−1} − Q*aQ, M^{(i)} = Q*ω(L^{j(·)}η)^{−1} − Q*aQH gives the first formula. H^TQ* = (QH)^T = (L^{j(·)}η)^{−1}, a multiplication operator; a is multiplication by (L^{j(·)}η)^{−2} [V p. 291]. This gives N^{(i)}. G_π is symmetric (Δ′_π is the symmetric operator of the form (3.120); at complex arguments all transposes are bilinear, without conjugation), so ω and N^{(i)} are symmetric. □
So V^{(i)} is "reading (i)": the right sides of CMP 102 (87) and (89) at (U, J). The derivative formulas (85), (88), (89), (90) hold for V^{(i)} as printed, at every (U, J), with no use of RD*H = 0. The proof of (87) on p. 291 [V] and of (137) on p. 298 [V] uses Δ_π + DRD* as its middle step; Lemma GF takes that middle step as the definition.

3.3 Gauge-fixed form [P]. Δ_π + DRD* is symmetric, so for A := A′ − HD(A′):
 ½⟨A, (Δ_π + DRD*)A⟩ = ½⟨A′, (Δ_π + DRD*)A′⟩ − ⟨A′, M^{(i)}D(A′)⟩ + ½⟨D(A′), N^{(i)}D(A′)⟩.
So V^{(i)} is the expansion of the action (74) with Δ_π replaced by the gauge-fixed operator Δ_π + DRD* = G_π^{−1} − Q*aQ. This is the operator that defines G (CMP 99 p. 420 [V]). Balaban's Prop. 9 propagator also carries DRD*: Δ_a = Δ + DRD* + Q*aQ (CMP 102 (128) [V p. 297]) and G = (Δ_a − Δ^{(2)})^{−1} in (180) [V p. 306]. The added term ½‖RD*A‖² vanishes on the Landau slice RD*A = 0 of (76) [text layer p. 289]. Off the slice it is a choice of extension. Balaban makes the same kind of choice when he passes to (143)/(180): "it does not imply necessarily that solutions satisfy the Landau gauge condition" [text layer p. 300].

3.4 The four properties.
(C) On-shell agreement [P]. At J = J(U), RD*H = 0 (CMP 99 (3.124)–(3.126) [V p. 420]; complex U by analytic continuation, SOURCES_R005_DD 4.3(b), CONFIRMED there). So DRD*H = 0, M^{(i)} = Δ_πH, N^{(i)} = H^TΔ_πH, and V^{(i)} = (80) for every A′, on and off the Landau slice. Hence 𝒜_0, δ𝒜_0/δB and the inner kernels coincide with Balaban's at every on-shell point. With Theorem E (E2) of SOURCES_OFFSHELL_H for the outer F, the extension equals (3.7) at (U_{k+1}, J_{k+1}). At (U, J) = (1, 0) every term agrees as well.
(A) Analyticity [R]. G_π and ω are analytic in (U, J) where they exist. Existence and the bounds come from CMP 99 Thm 3.12 [V p. 423] at a sup-bounded J. Its proof uses J only through (3.131) [V p. 422], "|⟨A_1, Δ′_πA_2⟩| ≤ O(1)Mα_0(‖D*A_1‖_{L¹} + (L^jη)^{−1}‖A_1‖_{L¹})e^{−½δ_0d(y,y′)}(|D*A_2| + (L^jη)^{−1}|A_2|)", where O(1)Mα_0 is the J-size under (3.36). The bound (3.137) of Δ^{(2)} also uses J only through |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3} [V p. 422]. With the variable J, Mα_0 becomes c_J = L³α_0. This is the off-shell use of Thm 3.12 already accepted in SOURCES_R005_DD_VERIFY V3.13 [R + reading]. Complex U′U: CMP 99 Thm 3.4 and the complex (3.132)–(3.133) [R], the same input as the on-shell complex case (SOURCES_R005_189 §7.2). V^{(i)} is analytic in A′ on (77) by the sentence after (80) [V p. 290], applied to the explicit formula.
(D) Gauge invariance (1.19) [P-sketch]. Under the gauge transformations of CMP 109 (3.29) (U → U^u, J → R(u)J), Δ, Δ′_π(J), D, R, Q, Q* are covariant, and a is invariant. So G_π, ω, H, M^{(i)}, N^{(i)} are covariant, and V^{(i)}, 𝒜_0, H_k^F are covariant (with Theorem F (d) for F).
(B) Bounds: Theorem 189′ below, and with it the first-derivative bounds of Prop. 4.

3.5 Theorem 189′ (off-shell (189) for V^{(i)}) [P relative to the inputs of 4.2].
Let (U, J) lie in (3.16): U real with the first-order conditions (1.11)–(1.13) of CMP 109, or complex U′U in the domain of CMP 99 Thm 3.4; J g^c-valued with |J(b)| ≤ c_J(L^{j(b)}η)^{−3}, c_J = L³α_0 (CMP 109 (1.14), (3.12); the CMP 99/CMP 109 J-conversion is unchecked, SOURCES_OFFSHELL_H_VERIFY V3.9). Let c_J ≤ a_π(d, L), the smallness of Thm 3.12 with Mα_0 replaced by c_J. Then the conclusion of Theorem 189 of SOURCES_R005_189 holds for V^{(i)}: for every g^c-valued A′ with (77), every y′, every 𝔄 with supp 𝔄 ⊂ Δ̃(y′), y ∈ Λ_j, b ∈ Δ(y),
 |((δ²V^{(i)}/δA′²)(A′)𝔄)(b)| ≤ C_189(ε_3 + c_J + c_U)(L^jη)^{−3}e^{−ad(y,y′)}max{|𝔄|_(−1), |∇𝔄|_(−2)},  0 < a < ½δ_0,
with C_189 as there (d, L, C_2, C_3, B_0, the O(1) of (3.132)–(3.133), a, θ). Also |δV^{(i)}/δA′|_(−3) obeys the Prop. 4 bound (97) with the same change of prefactor.
Proof. Repeat SOURCES_R005_189 §6. The on-shell hypothesis enters that proof at one place only: M ∈ 𝒦(−3, δ_0; O(1)) and N ∈ 𝒦(−4, δ_0; O(1)), which §4 there derives from (87), (89) (its grade table: "M, N [P] from (87), (89), (S6), (S8)"). Lemma GF gives the same formulas at (U, J). (3.132) at (U, J) gives ω ∈ 𝒦(−2, δ_1; O(1)); Q, Q* ∈ 𝒦(0, ∞; O(1)) (S8); a(L^{j(·)}η)^{−1} is multiplication by (L^{j(·)}η)^{−3}. So M^{(i)} ∈ 𝒦(−3, δ_0) and N^{(i)} ∈ 𝒦(−4, δ_0). The other inputs:
- H enters through (S6) (sup and ∇ of (3.133) at (U, J), the same Thm 3.12 reading), through QH = (L^{j(·)}η)^{−1} (proof of Lemma GF), and through "H independent of A′" (Lemma F). All hold.
- F_a uses c_J of the variable J. Lemma G uses c_U, the first-order size of the background (the form (38) of CMP 102 is a first-order condition, which (1.11)–(1.13) supply).
- Lemmas C2 and F use CMP 98 Props. 4–5 and CMP 102 Prop. 3 at the background U; they do not see J. Their complex forms are the residue of SOURCES_R005_189_VERIFY (complex Prop. 5).
The first-derivative bound: (85)–(96) with Lemma GF, as printed. □
Prefactor. In CMP 109, c_J = L³α_0 and c_U = O(α_0) are not ≤ ε_3 by (103); they are small by the α_0 caps. Prop. 9's smallness of G̃V″ needs C_189(ε_3 + c_J + c_U) below a (d, L) threshold. This is one more M-free cap on α_0 (4.3).

3.6 Consequences [P relative to 4.2].
- (190) off-shell, sup and ∇ entries: SOURCES_R005_DD 6.1 (through SOURCES_A4_D189 §6.3 and SOURCES_L1_C 6.4) rests on (189) at the same point. Theorem 189′ supplies it.
- Theorem E of SOURCES_OFFSHELL_H with V^{(i)} inside and F outside: (E3), (E4) need the inner kernels ⟨𝔇(…), …⟩ and δ𝒜_0/δB in sup norm only. These rest on Theorem 189′ and the off-shell Prop. 9 contraction (G̃V″ small). So Theorem E holds without the reading-(ii) item. SOURCES_OFFSHELL_F2 uses the inner pieces only through sup bounds (Lemma LD), so it inherits nothing.
- The Δ and P_1 entries of the inner pieces are not needed (Δ, ∇, P_1 act on the leftmost factor; SOURCES_OFFSHELL_H (E3), CONFIRMED V3.10).

3.7 The two later uses.
(a) CMP 116 Sect. 1 [V pp. 2–4]. Balaban localizes (1.3)–(1.4) through H(s), G̃(s), H_0(s), and states on p. 4 that "(δ/δA′)V(H(s), A′) … coincides with the local function (δ/δA′)V_0(A′) on the neighborhood of Y(σ)^c, and considered on a component of Y(σ) it depends on A′, H(s), s restricted to this component". V^{(i)} contains one more nonlocal operator, ω. Give it the same treatment: ω(s) := Σ_ω s^{(ω)}ω_ω, the CMP 116 s-rule (p. 3 [V]) on the walk expansion of ω, and M(s) := Q*ω(s)(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1}, N(s) := (L^{j(·)}η)^{−1}ω(s)(L^{j(·)}η)^{−1} − (L^{j(·)}η)^{−4}. Then:
 (s1) Locality [P-sketch]. Near Y(σ)^c, ω(s) = 0 and H(s) = 0. So D = C, 𝔇 = K (both local), M(s) = −Q*a(L^{j(·)}η)^{−1}, N(s) = −(L^{j(·)}η)^{−4}, and
 δV^{(i)}/δA′ = δV_0/δA′ + Q*a(L^{j(·)}η)^{−1}C(A′) + K^T(L^{j(·)}η)^{−1}aQA′ − K^T(L^{j(·)}η)^{−4}C(A′),
 a local function. The decoupling argument of p. 4 uses only locality and the restriction property, so it goes through. Balaban's words "the local function δV_0/δA′" become "a local function". On a component, ω(s) depends on (U, J, s) restricted to it (walk support, as in SOURCES_OFFSHELL_F2 Theorem S (S3)).
 (s2) Analyticity and size [R]. ω(s) obeys the CMP 116 (1.7)/(1.11) form on |s(Δ)| ≤ e^{κ_1}, given a walk expansion of ω with the bound (1.7) at (U, J), by the cube count of SOURCES_OFFSHELL_F2 Theorem S [P-sketch; the same [I] multiscale cube-count transfer]. The walk expansion of (QGQ*)^{−1} is R-002 (FULL PROOF relative to listed inputs; WG-G for G at J = J(U) under (3.36)). At the variable J, J enters WG-G and Thm 3.12 only through its sup bound [R + reading, as in (A)]. Then Theorem 189′ holds for V^{(i)}(s) with B_0 → B_0e^{c_mκ_1}, by the same proof, and Proposition N of SOURCES_OFFSHELL_F2 holds with V^{(i)}(s) in (1.4).
 Note [I-reading]. CMP 116 p. 2 names only H, H_0, G̃ as the nonlocal operators of (1.3)–(1.4). Under every reading V has one more: Δ′_π (through G′ and R) under (ii), ω under (i). CMP 116 does not mention it. The p. 3 sentence "we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds" [V] (row R-016) covers the substitution.
(b) CMP 109 (3.31) [V p. 276, as quoted in SOURCES_OFFSHELL_H_VERIFY V1.4]. The Hölder norm acts on the leftmost factors of H_k^F(B′): G̃ (in 𝒜_0), H_0, F (Lemma LD of SOURCES_OFFSHELL_F2). The inner pieces need sup bounds only, and the only inner bound that depends on the reading is the sup bound of δV^{(i)}/δA′ (Theorem 189′, first-derivative part). So SOURCES_OFFSHELL_F2 §4.6 applies unchanged: (3.31) holds for H_k^F with V^{(i)} under the same ε_1-smallness as for H [P relative to F2 §4 and the "Obviously" of p. 276 [R]].

3.8 Remark: the Δ-version of V [P relative to Lemma 3 of SOURCES_OFFSHELL_H; the reading itself is not decided]. CMP 102 (127) [V p. 297] starts from "the functional (74), with the operator Δ instead of Δ_π". If V in (143)/(180) is read with Δ in place of Δ_π (CMP 116 p. 2 says (80); this file does not decide), then on-shell M_Δ = ΔH = Δ_πH + Δ′_π(J(U))H = (137 right side) + T_1(J(U))H (Lemma 1), and H^TΔ′_πH = H^TT_1H = 0 because G′RD*H = 0. Reading (i) for this version is M_Δ^{(i)} := Q*ω(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1} + T_1(J)H, N_Δ^{(i)} := N^{(i)}. T_1(J)H has a left derivative only, and Lemma 3 gives T_1(J)H ∈ 𝒦(−3) with size O(c_J). So the repair works in the same way for this version.

3.9 Remark: reading (ii) fails already at the first derivative [P-sketch for the structure; I for the growth]. Off-shell Δ_πH = (137 right side) − DRD*H. So the literal V_b′ = −Δ_πHD − 𝔇^T(Δ_πH)^TA′ contains DRD*H·D(A′), and DRD*H contains the ∇G′∇*-on-J kernel (SOURCES_R005_189 §7.3, CONFIRMED). So under (ii) the printed estimate after (88), "O(1)ε_3²(L^jη)^{−3}", the bound (97) of Prop. 4, and the contraction for 𝒜_0 in Prop. 9 lose their j-uniform constants off-shell, not only (189). Reading (i) restores every printed estimate of CMP 102 Sect. D verbatim. This is evidence that Balaban's off-shell bounds refer to reading (i) [I-reading]. The proof above does not use it.

3.10 Variant with a J-free ω (not adopted) [P-sketch]. With h = F inside, put M^F := Q*(QG_0Q*)^{−1}[(L^{j(·)}η)^{−1} − QG_0T_1(J)F] − Q*a(L^{j(·)}η)^{−1} and N^F := the symmetric part of F^TM^F. By 2.3, M^F = Δ_π(J)F + E^{(1)}, and E^{(1)} = 0 on-shell, so M^F = Δ_πH on-shell. M^F needs only the J-free (QG_0Q*)^{−1} and Theorem F. It removes the off-shell use of Thm 3.12 from V. It is not needed now: R-001 and R-002 already rest on the G part of Thm 3.12. Keep it as the fallback if a verifier rejects the off-shell reading of (3.131).

## 4. Exact statement, inputs, canon changes, statuses

4.1 Statement.
(a) Refuted: with h = F in every slot of CMP 102 (179)–(180) and (80), the inner operator Δ_π(J)F contains ½DRG′D*Γ_4(λ_F, δJ), λ_F = G′RD*F ≠ 0 off-shell, and no other term of Δ_π(J)F carries a ∇G′∇*-kernel on δJ. So repair (1) does not give a j-uniform kernel bound for M, N from sup|J| [P-sketch for the structure; growth of the kernel: numerics, CONFIRMED; absence of a hidden cancellation: I].
(b) Adopted: the off-shell extension of CMP 109 p. 273 is (179) with the outer F of SOURCES_OFFSHELL_H, and (180) with V^{(i)} of 3.1: H = G_π(U, J)Q*ω(L^{j(·)}η)^{−1}, ω = (QG_π(U, J)Q*)^{−1}, M^{(i)} = (Δ_π(J) + DRD*)H = Q*ω(L^{j(·)}η)^{−1} − Q*a(L^{j(·)}η)^{−1}, N^{(i)} = (L^{j(·)}η)^{−1}ω(L^{j(·)}η)^{−1} − (L^{j(·)}η)^{−4}. It is analytic on (3.16) [R], gauge invariant [P-sketch], equal to Balaban's functions at every on-shell point [P], and it satisfies (189) (Theorem 189′), (190) sup and ∇, and Theorem E with sup|J| only [P relative to 4.2]. The later uses hold: CMP 109 (3.31) [P relative to SOURCES_OFFSHELL_F2 §4]; CMP 116 Sect. 1 with the walk-localized ω(s) [R: walk expansion of ω at sup-bounded J; P-sketch: s-rule].

4.2 Inputs.
- On-shell inputs of Theorem 189 (SOURCES_R005_189 §3, with the corrections of its VERIFY): CMP 98 Props. 4, 5 (Prop. 5 at complex arguments: reading of p. 43 + P-sketch), CMP 102 (33)–(40), (44)–(46), (55)–(58), (68)–(73), (85)–(96), CMP 96 Lemma 2.1 and the scale-shift rule, (G1) [P-sketch], κ small [I-minor].
- (3.132)–(3.133) at (U, J): CMP 99 Thm 3.12 [V p. 423] with J entering only through (3.131) and (3.137) [V p. 422] [R + reading; same use as SOURCES_R005_DD_VERIFY V3.13]. Complex U′U: Thm 3.4 and the complex (3.132)–(3.133) [R].
- CMP 99 p. 420 (G^{−1} = Δ_π + DRD* + Q*aQ; (3.124)–(3.126)) [V]; CMP 102 (87), (89) [V p. 291], (137)–(138) [V pp. 298–299].
- SOURCES_OFFSHELL_H Theorem F, Theorem E (verified with corrections) and SOURCES_OFFSHELL_F2 (unverified) for the outer factor.
- For CMP 116: the walk expansion of ω at (U, J) (R-002 form) [R + reading]; the s-rule cube count (SOURCES_OFFSHELL_F2 Theorem S) [P-sketch, I for the multiscale transfer].
- The J-conversion c_J = L³α_0 (unchecked, SOURCES_OFFSHELL_H_VERIFY V3.9).

4.3 Canon changes (proposed; not applied; ids at the next IDS.md update).
- New reading (H-prefix, "gauge-fixed off-shell V"): the inner operators of CMP 102 (80) off-shell are M^{(i)}, N^{(i)} of Lemma GF; H = G_π(U, J)Q*ω(L^{j(·)}η)^{−1} with J the variable (reading B of SOURCES_R005_DD 6.0). Cost: none on-shell.
- New M-free cap on α_0: c_J = L³α_0 ≤ a_π(d, L), the "α_0 sufficiently small" of Thm 3.12 with Mα_0 → c_J, and C_189(ε_3 + c_J + c_U) below the Prop. 9 threshold. Place: with the J-caps of SOURCES_ORDER_CANON A.1, next to N-350 and next to a_F of SOURCES_OFFSHELL_H (enforced in the α-chain, N-370). It uses only CMP 99 constants, fixed at N-060. No cycle.
- For CMP 116: the WG-1-type cap for the walk expansion of ω at the variable J is the existing scaled J-cap (α_0‴ ≤ a_**/M, M·M_1^{12}·α_0‴ ≤ c″, A.1) applied to c_J [R]. In the ε_1 conditions of CMP 116, B_0 → B_0^F e^{c_mκ_1} as in SOURCES_OFFSHELL_F2 5.3; ω(s) adds no new constant in kind.
- Not needed: a_F (SOURCES_OFFSHELL_H) and B_3^F stay as proposed there; repair (1) adds nothing to the canon, because it is refuted.

4.4 Resulting statuses (proposed; not applied; this file is unverified).
- R-005. On-shell status unchanged (Theorem 189 verified; derivative entries of (190) verified). Off-shell add: "Off-shell (CMP 109 variable J): with the gauge-fixed inner V (SOURCES_OFFSHELL_INNER, reading (i): M, N in the printed forms (87), (89) at (U, J), which equal (Δ_π + DRD*)H and H^T(Δ_π + DRD*)H identically) Theorem 189 holds with sup|J| only [P relative to the on-shell inputs and (3.132)–(3.133) at (U, J) by the Thm 3.12/(3.131) reading [R]]; hence the off-shell sup and ∇ entries of (190) hold. With the outer F (SOURCES_OFFSHELL_H) the Δ and P_1 entries hold. The literal reading (ii) of (80) is not used; under it (189), (88) and (97) all carry the ∇G′∇*-on-J kernel off-shell [I for the growth]. Repair (1) (h = F in every slot) is refuted: Δ_π(J)F keeps ½DRG′D*Γ_4(λ_F, δJ)."
- R-010. Off-shell item: "Off-shell Δ entry of (R-dec), (R-dom): reduced [P relative to listed inputs; SOURCES_OFFSHELL_H verified with corrections, SOURCES_OFFSHELL_F2 and SOURCES_OFFSHELL_INNER unverified] to: (3.132)–(3.133) at a sup-bounded J (Thm 3.12 reading) [R]; the walk expansion of ω = (QG_πQ*)^{−1} at (U, J) for CMP 116 Sect. 1 (R-002 form) [R]; the s-rule cube count [I, shared with Balaban's own count]; the CMP 116 V-localization reading [I-reading]; the J-conversion [unchecked]. The reading-(ii) item of SOURCES_R005_189_VERIFY no longer enters." Do not write "closed" until a verifier confirms this file and SOURCES_OFFSHELL_F2. Grade name unchanged; residue R2 keeps the off-shell item in this reduced form.
- R-014. "The factor 1/r of (3.17) and its survival under the CMP 116 localization carry the same items as R-010, in the same reduced form." Its own status ("asserted (Balaban), constant unspecified") is unchanged.
- SOURCES_OFFSHELL_H and SOURCES_OFFSHELL_F2 (no edit; for the next ledger pass): their statement holds with "V, D, 𝔇, 𝒜_0 as in Balaban's extension" read as "V = V^{(i)} of SOURCES_OFFSHELL_INNER". The coordinator note in SOURCES_OFFSHELL_F2 5.4 is answered: the inherited item is removed by reading (i), not by repair (1).

## 5. Grade table

| Claim | Grade |
|---|---|
| 1: (80), (87)–(89), (137)–(138), G^{−1} = Δ_π + DRD* + Q*aQ, (3.126), Δ_π = Δ − Δ′_π | [V] CMP 102 pp. 290, 291, 298, 299; CMP 99 p. 420 |
| 1: CMP 116 p. 2 "V … given by the formula (80)"; p. 3 replacement sentence, s-rule; p. 4 locality sentence | [V] |
| 2.2: repair (1) keeps (A), (C), (D) | [P] relative to Theorem F |
| 2.3: Δ_π(J)F = Q*(QG_0Q*)^{−1}[…] − Q*a(L^{j(·)}η)^{−1} − E^{(1)} | [P] |
| 2.4–2.5: E^{(1)} contains DRG′D*Γ_4(λ_F, J) and DRG′D*Γ′(λ_F, J(U)); RD*F = RG′D*[T_1(J) − Δ′_π(J(U))]F | [P-sketch] (transposition as in SOURCES_R005_DD 6.2) |
| 2.6: the ∇G′∇*-kernel on δJ is not cancelled; repair (1) fails (B) | structure [P-sketch]; growth [numerics, CONFIRMED]; no hidden cancellation [I] |
| 2.7: variants of (1) fail; the Q*-range property of G_π^{−1}H is what (2) uses | [P-sketch] |
| 3.2 Lemma GF | [P] |
| 3.3 V^{(i)} = gauge-fixed expansion of (74) | [P]; (143) remark [text layer p. 300] |
| 3.4 (C) on-shell agreement, every A′ | [P] |
| 3.4 (A) analyticity; Thm 3.12 at sup-bounded J through (3.131), (3.137) | [R + reading] [V p. 422–423] |
| 3.4 (D) gauge invariance | [P-sketch] |
| 3.5 Theorem 189′ (off-shell, rate a < ½δ_0, prefactor C(ε_3 + c_J + c_U)) and the Prop. 4 bound | [P] relative to 4.2 |
| 3.6 (190) sup/∇ off-shell; Theorem E without the reading-(ii) item | [P] relative to 4.2 |
| 3.7(a) CMP 116 locality (s1) | [P-sketch] |
| 3.7(a) (s2) ω(s) bounds | [R] (walk expansion of ω at sup J) + [P-sketch] (s-rule) |
| 3.7(a) CMP 116 is silent on V's extra nonlocal operator | [I-reading] |
| 3.7(b) (3.31) unchanged by the reading | [P] relative to SOURCES_OFFSHELL_F2 §4 |
| 3.8 Δ-version of V repaired in the same way | [P] relative to Lemma 3; the version itself not decided |
| 3.9 reading (ii) fails already at (88), (97) off-shell | structure [P-sketch]; growth [I] |
| 3.10 J-free variant M^F | [P-sketch], not adopted |
| 4.3 canon: reading id, cap c_J ≤ a_π(d, L) | [P] (placement), values [R] |

## 6. Report

Repair (1) fails. With h = F everywhere, Δ_π(J)F keeps ½DRG′D*Γ_4(λ_F, δJ), λ_F = G′RD*F ≠ 0 off-shell. DRD*F carries only J(U), so nothing cancels it; the ∇G′∇*-on-J item moves to F. Repair (2) works: reading (i) equals (Δ_π + DRD*)H identically, the gauge-fixed operator of CMP 99 p. 420 and CMP 102 (137). It is analytic, gauge invariant and equal on-shell. Theorem 189 then holds off-shell relative to (3.132)–(3.133) at sup-bounded J. The later uses hold: (3.31) needs sup bounds only; CMP 116 needs a walk-localized ω [R]. R-005 off-shell, R-010, R-014: reduced, unverified.
