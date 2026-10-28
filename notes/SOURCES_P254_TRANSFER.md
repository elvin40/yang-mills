# SOURCES_P254_TRANSFER — CMP 109 p. 254 transfer (R26), readings I-09 and I-10

Task: CLOSURE_PLAN top-5 item 5. Ledger tags: [P] proved here, [V] verified on page image, [I] interpretation, [R] relies on Balaban's text without our proof.
Firewall respected: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. Inputs (CLOSURE_PLAN)
- R26: CMP 109 p. 254 "all results of the paper [12] are valid for it. The proofs are in most cases unchanged". ASSERT. Rows: A2 (R4), A3, A7, A8 (via WC_FULL), I3. Plan: check each CMP 98/99 result used survives the symmetric average (0.4), (0.12). Uses: Q, Q*, H_1, G_1, (QG_1Q*)^{-1}, Q̃, A3-R2′.
- I-09: (2.11) = (3.156) + G^{(2)} term (CMP 109 p. 267 vs CMP 99 (3.156)).
- I-10: Q̃ (CMP 109) = Q_1(U_1) (CMP 99); blocks of (0.14) = blocks of Q̃; V^{(k)} = U_1.

## 1. Identity of [12] and the p. 254 sentence [V]
- CMP 109 reference list (pdf p. 54, image-checked via text layer of the reference block): "12. Balaban, T.: Averaging operations for lattice gauge theories. Commun. Math. Phys. 98, 17–51 (1985)". So [12] = CMP 98. It is NOT CMP 99 or CMP 102. CMP 99 (89–434, propagators in a background field) = [13]; CMP 99 (75–102, regular configurations) = [14]; CMP 102 (277–309, variational problem) = [15]; CMP 102 (255–275, UV stability) = [16].
- Consequence for the CLOSURE_PLAN framing: R26 says "transfer of CMP 99/102's propagator and background results". On the page, p. 254 transfers only CMP 98 results. CMP 99/102 results enter CMP 109 by separate citations ([13], [14], [15]) and by the p. 253 sentence "The considerations and results of this, and previous papers, do not depend on any particular averaging operation used; they are valid universally for all averages satisfying the above properties" [V p. 253]. That p. 253 sentence is a second, distinct ASSERT. It refers to the group average M of (0.5)–(0.10), not to the bond average.
- Sentence, p. 254 [V image, 300 dpi]: "This average has properties similar to the properties of the average introduced in (0.4), especially all results of the paper [12] are valid for it. The proofs are in most cases unchanged; in others only minor and obvious modifications are needed. These modifications are connected again rather with the fact that we consider G^c-valued configurations, than with the different definition of the average. Let us stress that both definitions are equally good for our purposes, in fact we may use many other definitions. It is possible to axiomatize them also, listing all essential properties, but it is not interesting enough to do it here."
- "This average" = Ū of (0.12) (p. 254): Ū(c) = exp[ i Σ_{x∈B(c_−)} L^{−d} (1/i) log U(c_−,x) U([x,x′]) U(x′,c_+) U(−c) ] U(c), with U(y,x) = M({U(Γ)}_{Γ∈G(y,x)}) (0.11), M = a group average obeying (0.5)–(0.10). [V]
- Average (0.4) (p. 253): Ū(c) = M(U,c) = exp[ i Σ_x L^{−d} Σ_{Γ∈G(c_−,x)} |G|^{−1} Σ_{Γ′∈G(c_+,x′)} |G|^{−1} (1/i) log U(Γ∪[x,x′]∪(−Γ′)∪(−c)) ] U(c). Text: "the simplest, immediate extension of the definition of averages in [12]. The set of contours used in this definition was too small to be lattice Euclidean symmetric, so we extend it." [V]
- So the p. 254 claim concerns (0.12). For (0.4) the transfer is implicit in "immediate extension" plus "properties similar". Both are covered below.
- What changes relative to CMP 98 (from pp. 252–254 [V]): (a) contour family: one axial contour Γ_{y,x} → the family G(y,x) of all shortest monotone contours (all permutations of directions); (b) in (0.12), the contour variable is replaced by the group average M over G(y,x) — log of an average, not average of logs as in (0.4); (c) configurations are G^c-valued (complexified); (d) gauge fixing: δ-function axial gauge → exponential gauge (0.14) in the variables U(y,x). The lattice (T, T^{(1)}, blocks B(y), L) is unchanged.

## 2. CMP 98 results cited by CMP 109 (grep "[12]", text layer; page check in §4)
Direct citations of [12] in CMP 109 (7 hits besides pp. 252–254):
| # | CMP 109 place | CMP 98 item | use |
|---|---|---|---|
| U1 | p. 259/260, after (1.2) | Prop. 2 (54) | U ∈ 𝒰_k(ε_0) ⇒ \|V(∂p′) − 1\| < 2ε_0 on T^{(k)}, V = averaged config |
| U2 | p. 265, after (2.1) | Prop. 2 | U_{k+1}(W) ∈ 𝒰_{k+1}(ε_0) ⇒ \|W(∂p′) − 1\| < 2ε_0 |
| U3 | p. 265 | formula (106) | gauge transformation u_k (axial → Landau) written through H_k; analyticity of u_k in H_k |
| U4 | p. 269, (3.3) | equality (97) | change of variables inside E^{(j)}(U_k(exp iB′ V^{(k)})) |
| U5 | p. 275, (3.26) | contour variables (77) | V(b) = U_{k+1}(Γ_{y0,b−} ∪ b ∪ Γ_{b+,y0}) in the generalized axial gauge |
| U6 | p. 277, (3.39) | equality (97) | as U4, for τ = 1 |
| U7 | p. 283, (4.8) | (32)–(41) | Lie-algebra formulas: g^{−1}(z) = z/(e^{z}−1), d/dλ log, BCH |
Indirect uses (through our files, not cited by CMP 109 at that place): U8 = CMP 98 (124)–(146) (one-step and k-step Q(U), Q*, (139), (142)–(146)) — used by A18 Lemma Q/Lemma C, A3-R2′, WC_FULL R3; U9 = CMP 98 Prop. 6–7 (analyticity in U′U_0, uniformity) — behind "G^c-valued" in the p. 254 sentence.

## 3. The main transfer: Props. 1–2 for averages (0.4) and (0.12) [P]
CMP 98 Prop. 1 proof (pp. 24–26, text l. 380–470): (i) local axial gauge V_0(Γ_{y,x}) = 1 around the corner y of p′; then |A_b| ≤ 2|b_− − y|α_0 ≤ 2dLα_0 on Δ(p′) (45)–(46); (ii) for each contour in Δ(p′), |V_0(Γ) − 1 − iA(Γ)| ≤ (|A|(Γ))² = O(1)(L²α_0)²; (iii) BCH (31) to pass to the product; (iv) the exact identity (48): Σ_{c⊂∂p′} Σ_{x∈B(c_−)} L^{−d} A(Γ_{c,x}) = Σ_{x∈B(y_0)} L^{−d} Σ_{p⊂(p′)_x} A(∂p); (v) so |V(∂p′) − 1| ≤ L²α_0 + C_0(L²α_0)². Prop. 2 iterates (v); it needs the leading coefficient exactly L² (a factor c_1 > 1 would give c_1^k growth). So (iv) is the load-bearing step.

Claim 3.1 [P]. Identity (48) holds exactly for the linear part of (0.4) and of (0.12).
Proof. Write 〈Γ_{y,x}〉 = |G(y,x)|^{−1} Σ_{Γ∈G(y,x)} Γ as a 1-chain. For (0.4), the linear part of (1/i)log Ū(c) is A(c) + Σ_{x∈B(c_−)} L^{−d}[A(〈Γ_{c_−,x}〉) + A([x,x′]) − A(〈Γ_{c_+,x′}〉) − A(c)] = Σ_x L^{−d}[A(〈Γ_{c_−,x}〉) + A([x,x′]) − A(〈Γ_{c_+,x′}〉)]. For (0.12), (0.8) gives log M({e^{iA_j}}) = i·(1/n)Σ A_j + O(|A|²), so U(y,x) has linear part A(〈Γ_{y,x}〉) and the linear part is the same expression. Sum over the four bonds c of ∂p′ with corners y_0,…,y_3. At a shared corner y = c_+ = c̃_−, bond c contributes −Σ_{x∈B(c_−)} L^{−d} A(〈Γ_{y,x+Le_μ}〉) and c̃ contributes +Σ_{x̃∈B(y)} L^{−d} A(〈Γ_{y,x̃}〉). The map x ↦ x + Le_μ is a bijection B(c_−) → B(y), and the chain 〈Γ_{y,·}〉 depends only on its endpoints. So the two terms cancel. What remains is Σ_{x∈B(y_0)} L^{−d} A(∂(p′)_x) = Σ_x L^{−d} Σ_{p⊂(p′)_x} A(∂p). This is (48) with the same weights and total mass L². ∎
The symmetric family changes only the auxiliary chains, which cancel. So the leading coefficient is unchanged.

Claim 3.2 [P]. Steps (i)–(iii) transfer with a constant change. Every Γ ∈ G(y,x), x ∈ B(y), is a monotone contour of length ≤ d(L−1)/2·… ≤ dL inside Δ(p′). The bound |A_b| ≤ 2dLα_0 from (i) holds on all bonds of Δ(p′) (it is a bond bound, not a contour bound). So (ii) holds for each Γ in the family, with the same O(1)(L²α_0)². Averaging over the family keeps it. For (0.12), add the (0.8) remainder: |log M({e^{iA_j}}) − i·avg A_j| ≤ c_M max_j|A_j|², c_M from analyticity of M on a fixed neighborhood (Cauchy estimate) [P; for Federbush's (0.10): B = avg A_j + O(max|A_j|²) by expanding log(e^{iA_j}e^{−iB}) — P]. Result: (51) with C_0 → C_0′ = C_0 + O(d)c_M, still depending only on d (and on M). Prop. 2 then holds with c_2′ = min{1/(3C_0′²), c_2′(d,L)}. TRANSFERS WITH A CONSTANT CHANGE (C_0 → C_0′(d, M)).
Gauge covariance (11): by (0.6), U(y,x) ↦ u(y)U(y,x)u(x)^{−1}; the log of the loop is conjugated by u(c_−); so Ū^u(c) = u(c_−)Ū(c)u(c_+)^{−1}. Reality: (0.9). Locality: Ū(c) depends only on bonds in B(c_−) ∪ B(c_+) neighborhoods (all Γ ∈ G(y,x) stay in the box spanned by y, x). VERBATIM.
G^c: CMP 98 itself works with U = U′U_0, U′ ∈ G^c, in §C and Props. 6–7 (l. 1304–1331). So "G^c-valued" adds nothing new to Props. 1–2 beyond what CMP 98 already does for its own average. VERBATIM rel. CMP 98 [R].
