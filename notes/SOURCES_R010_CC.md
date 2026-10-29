# SOURCES_R010_CC — R-010 R2: the (4.39) scale reading and (C-c), settled on page images

Date 2026-10-29. Ids follow IDS.md. Target: SOURCES_L1_D §2.4 (S-56), SOURCES_L1_D_VERIFY V17, V23, V24.
Out of scope (another agent): the Δ entry of CMP 102 (190), which (R-dec) needs. Not touched here.
Grades: [P] proved here; [P-sketch] proof outline, steps checkable; [V] read on the page image; [R] Balaban's assertion, not reproved; [I] reading or interpretation, not forced.

Pages rendered (pdftoppm -r 150, fresh /tmp folder, deleted after) and read as images:
- CMP 109 pp. 288–299 rendered; images read: pp. 288, 289, 290, 291, 292, 298, 299 (reference [10] = CMP 95, 17–40). Also pp. 252, 257, 262, 270, 281, 282.
- CMP 95 (= [10] of CMP 109, reference list) pp. 21, 29.
- CMP 116 p. 9.
- CMP 102 (190) is not needed for (4.39) or (C-c).

## 1. Page facts [V]

F1. CMP 109 p. 252, (0.2): A^ε(U) = Σ_{p∈T_ε} ε^{d−4}[1 − Re tr U(∂p)], "where tr is the normalized trace, i.e. tr 1 = 1. For d = 4 we drop the superscript ε". G ⊂ U(N). Complex configurations are 𝐔 = U′U, U ∈ G, U′ = exp iA′, A′ ∈ g^c.

F2. CMP 109 p. 257: "the continuous space T scaled properly, so that it corresponds to the lattice T_ξ, ξ = L^{−j}. We decompose the space T into the lattice of closed cubes of a size M, where M = L^m". This family is π_j. d_j(X) := (length of a shortest tree graph in X that meets all cubes of X)/M. "Domains from different classes, i.e. classes corresponding to different indices j, are connected by scaling transformations."

F3. CMP 109 p. 262, the space U^c_j(X, α_0, α_1, γ_0): (1.11) |∂U − 1| < α_0ξ² on X (U ∈ G); (1.12) locally U^u = exp iξA; (1.13) U′ = exp iξA′, |A′|, |∇^ξ_UA′| < α_1; (1.14) "|∂𝐔 − 1| < α_0ξ², |𝐉| < γ_0 on X", for the complex configuration 𝐔.

F4. CMP 109 p. 270: the partition of unity of Sect. 3 is 1 = Σ_□ζ_□, ζ_□(x) = Π_μζ(M^{−1}(x_μ − y_μ)), y the center of □, ζ ∈ C_0^∞(R^1), ζ(t) = 1 for |t| ≤ 1/3, ζ(t) = 0 for |t| ≥ 2/3, derivatives up to second order bounded by 5. "We consider the continuous space T and all the cubes in the scale corresponding to the lattice T_η." (3.3): E^{(j)}(U_k(exp iB′V^{(k)})) − E^{(j)}(U_k(V^{(k)})) = E^{(j)}(U_j(Ū^j_k(exp iB′V^{(k)}))) − E^{(j)}(U_j(Ū^j_k(V^{(k)}))) = …, "where we have used the results of Sect. G [15], and the equality (97) [12]".

F5. CMP 109 p. 281: (4.2) E^{(j)}(X, U_j(□_0, exp iB)) = E^{(j)}(X, exp iξH_j(□_0, B)). (4.4): E^{(j)}(X, exp iξ𝐀) is analytic on max{|𝐀|_X, |P_1(□_0)𝐀|_X, |∇^ξ𝐀|_X, |Δ^ξ𝐀|_X} < α_2.

F6. CMP 109 p. 282: "the function ζ̃_□B is defined on the unit lattice T_1^{(j)}. We denote it simply by B again, hence B = ζ̃_□Q_j(ηA)."

F7. CMP 109 p. 290: (4.35) E^{(2)}(X) = ⟨(δ²/δ𝐇²)E(X, 1), H_j(□_0), H_j(□_0)⟩. "We extend it to all X ∈ D_j^0, where D_j^0 is the class of localization domains constructed for the lattice ξZ^4." The y-sums are extended "to the whole lattice Z^4" (the unit lattice of B).

F8. CMP 109 p. 291: (4.38) β_j(g_{j−1})(A(U_j(exp iB′V^{(k)})) − A(U_k(V^{(k)}))). (4.39) β_j(g_{j−1})⟨(δ²/δ𝐇²)Σ_{x,μ<ν}ζ_□′(x)[1 − Re tr(∂ exp iξ𝐇)(p_μν(x))]|_{𝐇=0}, H_j(□_0), H_j(□_0)⟩ = β_j(g_{j−1})⟨∂^ξH_j(□_0), ζ_□′∂^ξH_j(□_0)⟩, □′ ∈ π_j. Then: "Replacing the functions H_j(□_0) by H_j and summing over all □′ in ξZ^4 yields … (4.40) β_j(g_{j−1})⟨∂^ξH_j, ∂^ξH_j⟩ = β_j(g_{j−1})Δ_j, where Δ_j is given by the explicit formula (1.66) [10]."

F9. CMP 95 p. 21, (1.21): ⟨∂A, ∂A⟩ = ½Σ_{x∈T_η,μ,ν}η^d|F_μν(x)|². CMP 95 p. 29, (1.65): ⟨B, Δ_kB⟩ = ⟨∂H_kB, ∂H_kB⟩; (1.66) its momentum form; (1.67) γ_0⟨∂_1B, ∂_1B⟩ ≤ ⟨B, Δ_kB⟩ ≤ γ_1⟨∂_1B, ∂_1B⟩.

F10. CMP 116 p. 9, Lemma 1: (1.33) E_k(U_k(exp iB′V^{(k)})) − E_k(U_k(V^{(k)})) = Σ_{Y∈D_k}V′_k(Y, U_{k+1}, B), and (1.36) |V′_k(Y, 𝐔, 𝐉, B)| ≤ E_0ε_1C_1M^q exp(C_2κ_1) exp(−(1 − 2δ)κd_k(Y)), "absolute constants C_1, C_2, q". By (1.6) (CMP 109 p. 261 image, SOURCES_L1_D_VERIFY V17(d)), E_k contains the counterterms −β_{j+1}(g_j)A(U_k). So the printed Lemma 1 covers the C-terms, and its constant allows a power M^q.

F11. CMP 109 p. 298: the cancellation of (4.42), (4.44) against (4.34) (already [V] in SOURCES_L1_D_VERIFY V15, V16).

## 2. The scale reading of (4.39): settled

Statement S1. In (4.39) the sum Σ_{x,μ<ν} runs over the points x of the fine lattice T_ξ, ξ = L^{−j}, in the scale-j picture. p_μν(x) is the plaquette of T_ξ with corner x in the μν-plane. The pairing ⟨·,·⟩ is the T_ξ pairing with weight ξ^4. In the scale-k picture, T_ξ is the same point set as T_η (both are the original lattice T_ε), and a cube □′ ∈ π_j has side ML^jη. So supp ζ_□′ contains of order (ML^j)^4 points x. [V + P]

The reading of SOURCES_L1_D_VERIFY V23 ("plaquettes of the ξ-lattice in a π_j cube of side M, N_□′ ≤ 6(M + 1)^d") treats the ξ-lattice as a lattice of spacing 1. The images refute it: ξ = L^{−j} is the spacing (F2). The "other reading" of V23 (fine-lattice plaquettes) is the correct one, and it is the same lattice.

Evidence.
(a) [V, F2] ξ = L^{−j} is the spacing of T_ξ in the units in which π_j cubes have side M. So "the ξ-lattice" is the fine lattice, not the block lattice.
(b) [P, from F1, F2 and (0.1)] T_ξ (scale j) and T_η (scale k) are the images of the one lattice T_ε, ε = L^{−K}, under the scalings by (L^jε)^{−1} and (L^kε)^{−1}. In d = 4 the weight ε^{d−4} in (0.2) is 1. So A(U) = Σ_p[1 − Re tr U(∂p)] has the same value in every scaling. With Σ_□′ζ_□′ = 1, A(U_k(·)) of (4.38) equals Σ_□′Σ_{x∈T_ξ,μ<ν}ζ_□′(x)[1 − Re tr U_k(·)(∂p_μν(x))], with no factor. This answers the open point of V17: the fine-lattice action does not move to another lattice; only the units change.
(c) [P] The printed equality in (4.39) holds only under S1. Proof. Let 𝐇 be g-valued on the bonds of T_ξ and 𝐔 = exp iξ𝐇. By the Baker–Campbell–Hausdorff formula, (∂𝐔)(p_μν(x)) = exp iG with G = ξ²(∂^ξ_μ𝐇_ν − ∂^ξ_ν𝐇_μ)(x) + O(ξ²|𝐇|²), G Hermitian. Then 1 − Re tr e^{iG} = 1 − tr cos G = ½tr G² + O(|G|^4). The part of second order in 𝐇 is ½ξ^4 Σ_{x,μ<ν}ζ_□′(x) tr((∂^ξ𝐇)_μν(x))². So ⟨(δ²/δ𝐇²)(…)|_{𝐇=0}, H, H⟩ = ξ^4Σ_{x∈T_ξ,μ<ν}ζ_□′(x)tr((∂^ξH)_μν(x))² = ⟨∂^ξH, ζ_□′∂^ξH⟩ with ⟨F, G⟩ := ξ^4Σ_{x∈T_ξ,μ<ν}tr F_μν(x)G_μν(x). This is the printed right side. If x ran over plaquettes of side 1 with 𝐔 = exp iξ𝐇 on their bonds, the result would be ξ²Σ_x|(∂^1H)_μν|², which has ∂^1, not ∂^ξ. ∎
(d) [V, F8, F9] (4.40) identifies Σ_□′ of (4.39) with β_jΔ_j, where Δ_j is CMP 95 (1.65)–(1.66) at index j: ⟨B, Δ_jB⟩ = ⟨∂H_jB, ∂H_jB⟩, the fine-lattice pairing with weight (spacing)^d of CMP 95 (1.21). The page also says "summing over all □′ in ξZ^4".
(e) [V, F3, F5] The analyticity domains are written in ξ-units: |∂𝐔 − 1| < α_0ξ² ((1.11), (1.14)) and exp iξ𝐀 with ∇^ξ, Δ^ξ ((4.2), (4.4)). A plaquette bound proportional to ξ² is the bound for plaquettes of side ξ.
(f) [V, F6, F7] Balaban names the two lattices on the same pages: "the lattice ξZ^4" for the domains D_j^0 and "the unit lattice T_1^{(j)}" (= Z^4) for B = ζ̃_□Q_j(ηA).

Remark S1′ [P-sketch, relative to (3.3) as printed, R: Sect. G [15], (97) [12]]. (3.3) (F4) uses U_k(·) = U_j(Ū^j_k(·)) up to a gauge transformation. So A(U_k(·)) is a function of U_j(□_0, ·) in the same way as E^{(j)}. This is why (4.39) can use H_j(□_0) for the counterterm. It does not change the settled reading of (4.38) (SOURCES_L1_D_VERIFY V17).

## 3. (C-c): obstruction, and the repair proved

Choice of partition [P]. The identity A = Σ_□′(ζ_□′-localized sums) of S1(b) holds for every partition of unity {ζ_□′}_{□′∈π_j}. So we may choose the p. 270 form (F4) with π_j in place of π_k: ζ_□′(x) = Π_μζ(M^{−1}(x_μ − y_μ)). Then supp ζ_□′ lies in the cube of side ℓ_ζM, ℓ_ζ = 4/3, centered at y, and z_0 := sup|ζ_□′| ≤ (1 + 5/3)^4 < 51 (|ζ′| ≤ 5; z_0 = 1 if ζ ≥ 0). The bounds below use only ℓ_ζ and z_0.

Statement S2 (obstruction) [P given S1]. N_□′ := #{(x, μ < ν) : x ∈ T_ξ, ζ_□′(x) ≠ 0} obeys N_□′ ≥ 6(ML^j/2)^4 when ML^j ≥ 6, because ζ_□′ = 1 on a cube of side 2M/3, which holds at least (2ML^j/3 − 1)^4 points of T_ξ. So N_□′ is not an absolute number and not O(M^d): it grows like L^{4j}. (C-c) as stated is false, and V23's "N_□′ = O(M^d)" is false. Lemma C1(iii) in the form |E_C^{(j)}(□′)| ≤ N_□′c_W|β_j| with c_W absolute gives no bound uniform in j.

Repair. Replace the plain count by the ξ^4-weighted count, and the absolute plaquette bound c_W by the ξ²-scaled bound of (1.14).

(w) The analytic extension of the plaquette term. For W ∈ GL(N, C) with |W − 1| < 1 (|·| the operator norm) put w(W) := 1 − ½tr(W + W^{−1}), tr normalized.
 (w1) On G ⊂ U(N), W^{−1} = W*, so w(W) = 1 − Re tr W. [P]
 (w2) w is holomorphic on {|W − 1| < 1}. G is a totally real submanifold of G^c of maximal dimension. So by the identity theorem w is the only holomorphic function on a connected neighbourhood of 1 in G^c that equals 1 − Re tr on G near 1. Thus w is the extension "by the same formulas" of p. 261. [P]
 (w3) W + W^{−1} − 2 = W^{−1}(W − 1)², |tr M| ≤ |M|, and |W^{−1}| ≤ (1 − |W − 1|)^{−1}. So |w(W)| ≤ ½|W − 1|²/(1 − |W − 1|) ≤ |W − 1|² for |W − 1| ≤ ½. [P]
 (w4) w(e^{iF}) = 1 − tr cos F is even in F. So its first variation at F = 0 is zero for every complex F. This gives the order-1 claim of Proposition C2 on the complex domains directly; it does not need F Hermitian (compare V25). [P]

(pl) The plaquette bound on the two domains of Lemma C1.
 On U^c_j(X, α_0, α_1): |∂𝐔 − 1| < α_0ξ² by (1.14). [V, F3]
 On the (4.4) domain, 𝐔 = exp iξ𝐀: |∂𝐔(p) − 1| ≤ 3α_2ξ² if α_2 ≤ 1/20. [P] Proof. Write ∂𝐔(p_μν(x)) = e^{X_1}e^{X_2}e^{X_3}e^{X_4} with X_i = ±iξ𝐀(b_i). Then s := Σ|X_i| ≤ 4ξα_2. The degree-1 part of the product is ΣX_i, and the rest is bounded termwise by e^s − 1 − s ≤ ½s²e^s ≤ 8α_2²ξ²e^{4α_2}. Also |ΣX_i| = ξ²|(∇^ξ_μ𝐀_ν − ∇^ξ_ν𝐀_μ)(x)| ≤ 2α_2ξ². With ξ ≤ 1 and 8α_2e^{4α_2} ≤ 1: |∂𝐔 − 1| ≤ 3α_2ξ². ∎
 Put c_□ := max{α_0, 3α_2}. With c_□ ≤ ½, (w3) applies.

(cnt) Weighted count [P]. A closed cube of side ℓ_ζM holds at most (ℓ_ζM/ξ + 1)^4 points of T_ξ. So
 ξ^4Σ_{x∈T_ξ,μ<ν}|ζ_□′(x)| ≤ 6z_0ξ^4(ℓ_ζM/ξ + 1)^4 = 6z_0(ℓ_ζM + ξ)^4 ≤ 6z_0(ℓ_ζM + 1)^4 =: N^w_M.
For M ≥ 3, N^w_M ≤ 6·51·(2M)^4 < 5·10^3M^4. N^w_M is independent of j, k and the volume.

Lemma C1(iii′) [P given (1.14) [V], the (4.4) domain [V], (C-b) [R]]. Let E_C^{(j)}(□′, 𝐔) := β_j(g_{j−1})Σ_{x∈T_ξ,μ<ν}ζ_□′(x)w(∂𝐔(p_μν(x))). For 𝐔 in U^c_j or in the (4.4) domain,
 |E_C^{(j)}(□′, 𝐔)| ≤ |β_j|Σ|ζ_□′(x)|·c_□²ξ^4 ≤ c_□²N^w_M|β_j| ≤ c_□²N^w_MC_ΠE_0.
Its localization domain is X_□′ := the smallest union of π_j cubes that contains supp ζ_□′ and the plaquettes based there. X_□′ ⊂ □̃′^1 (3^4 cubes), so d_j(X_□′) ≤ d_0 := 80. Hence (1.18) holds with E_0 → E_C := e^{κd_0}c_□²N^w_MC_ΠE_0. ∎
Proof of the chain: (w3) and (pl) give |w(∂𝐔(p))| ≤ c_□²ξ^4; then (cnt); then (C-b). Each step is [P] except (C-b).

Why the repair works. The count grows like ξ^{−4}, and (w3)+(pl) give ξ^4 per plaquette; the two cancel exactly. This is the scale invariance of the d = 4 Wilson action (F1). In general d the factor ε^{d−4} of (0.2) gives the same cancellation.

Corroboration [V, F10]. CMP 116 Lemma 1 bounds all of E_k(U_k(exp iB′V)) − E_k(U_k(V)), counterterms included, by E_0ε_1C_1M^q exp(C_2κ_1)·(decay). A factor O(M^4) in the C-term constant has this printed form.

Effect on SOURCES_L1_D §2.4.
- Lemma C1 (i): unchanged. (ii): read with w; analytic on |∂𝐔 − 1| < 1, which (pl) gives. (iii) → (iii′).
- Proposition C2: the type constants become K_T^C := e^{κd_0}c_□²N^w_MC_ΠK_T (replaces N_□′c_WC_ΠK_T). They depend on M, κ, α_0, α_2, d and C_Π only, so they are fixed before ε_1 (N-310 before N-400, as in V23). The per-label decay and α_* = β_H are unchanged.
- Order 1 vanishes by (w4).

## 4. Grades and proposed ledger status

| item | old grade | new grade | basis |
|---|---|---|---|
| (C-a), first half: (4.38) U_j → U_k | [V + P] | [V + P], unchanged | SOURCES_L1_D_VERIFY V17 |
| (C-a), second half: scale of the x-sum in (4.39) | [I] | [V + P] | S1: F2, F3, F5–F9 and the computation (c) |
| (C-c) "N_□′ absolute" / "N_□′ = O(M^d)" | [I] | refuted [P] | S2: N_□′ ≥ 6(ML^j/2)^4 |
| (C-c′) weighted count + ξ²-plaquette bound, Lemma C1(iii′) | — | [P] given (C-b) | §3 (w), (pl), (cnt) |
| Lemma C1 (ii) with w; order 1 = 0 | [P] | [P] | (w2), (w4) |
| (C-b) bound on β_j by C_ΠE_0 | [R] | [R], unchanged | Π decay |
| Proposition C2 (other terms are A10 types) | [P-sketch] | [P-sketch], unchanged | A10 §5 |
| S1′ (counterterm as a function of U_j(□_0, ·)) | — | [P-sketch] rel. (3.3) [R] | F4 |

Corrections to SOURCES_L1_D_VERIFY (recorded here; that file is not edited):
- V17, last paragraph: the scale half of (C-a) is settled; see S1.
- V23: the "(4.39) reading" in V23 (unit-spacing ξ-lattice) is refuted by F2. The forced reading is V23's "other reading". Under it N_□′ grows like (ML^j)^4. The repair that V23 names (the ξ²-scaled plaquette bound) works, and §3 proves it, with the bound from (1.14) itself rather than (1.2).
- V24: (iii) holds as (iii′), with N^w_M = O(M^4) in place of N_□′c_W.

Proposed ledger text for R-010 (replaces the R2 clause):
"R2 written out (SOURCES_L1_D §2; SOURCES_R010_CC). R-terms [P-sketch] rel. (R-dec) [R: CMP 109 p. 271 + CMP 102 (190), including its Δ entry; R-019 at complex arguments] and (R-dom) [R: CMP 109 p. 273]. C-terms [P-sketch] rel. (C-b) [R: Π decay] and A10 §4–§6. (4.38) misprint and (4.39) scale [V + P]; (C-c) replaced by Lemma C1(iii′) [P]: |E_C^{(j)}(□′)| ≤ c_□²N^w_M|β_j|, N^w_M = 6z_0(4M/3 + 1)^4. Constants K_R, K_R′, K_T^C = e^{80κ}c_□²N^w_MC_ΠK_T fixed before ε_1. No [I] item left in R2."

What remains in R-010 R2 besides the Δ-entry dependence of (R-dec):
1. (R-dec) for the other entries of CMP 102 (190) at complex arguments (R-019). [R]
2. (R-dom), the p. 273 assumption on ε_1, applied to W(t̃). [R]
3. (C-b), the decay of Π in the (5.44)/(4.36) form. [R]
4. The [P-sketch] steps: SOURCES_L1_D 2.2 Step 2 and the second removal (3.22) [R: "very similar form"], and Proposition C2 relative to A10 §5.
No [I] item remains in R2.
