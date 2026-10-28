IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
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

## W1 Item (1): "only the outer-layer source blocks and their scale moves are new" — Q1^Ω traced against A16_REPLACE2 3.5

Unsourced proof (A16_REPLACE2 3.5 Q1, 2.3, 2.5, read this session): ⟨u, A_Z^fu⟩ ≥ (γ_exp − τ_2)‖u‖², with (i) A_Z ≥ γ_exp (Theorem L via WC(i), compression), (ii) τ_2 = ‖g²𝒲_Z‖ ≤ g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4 by the Schur bound of Prop. W_S + (A16-a^T), (iii) Lemma S + I-a.
Trace of Q1^Ω (target §4.3), step by step.
 (i) Unsourced bound on Y. Same compression argument. NEW relative to MULTISCALE_OMEGA: Theorem L is applied on Y = Ω_{k+1} (the joint region of (3.23)), not only on Z_0 ⊂ Λ_{k+1}. The target treats this in 4.3(i) (band distance via CMP 96 (2.2) at j = k; Y inside one layer) but does not list it as new. Its regularity hypothesis is NOT discharged: Theorem L needs the background regular (H1)–(H3) on Y and its band. On Λ_{k+1} this is the small-field condition. On Ω_{k+1} ∩ Λ^c_{k+1} (the large-field part of the joint region, where the χ of A_k fails) the target only writes "per-layer regularity of the step" (4.2). CMP 119 p. 269 (text layer) says the change-of-variables function is "an analytic function of the background field U_{k+1} … bounded on the set S_{k+1} by O(1)ε_kexp(−R_k)", which suggests that the large-field condition there is on the fluctuation, not on U_{k+1}. So the input holds on that reading [I-strong], but it is used and not named. CORRECTED (one unnamed input; see W7 U-A).
 (ii) τ_2^Ω. Prop. W_S^Ω (target §3.3). Items (a), (e), (f), (g), (h), (i) are the unsourced Ω-inputs or unchanged steps. I checked each against A16_REPLACE2 2.1–2.4:
 - (a) H_1^Ω trees: inside A_exp^Ω already (MULTISCALE_OMEGA 4.1). Not new. The two junctions of T_τQ*W_ω at rate θ_cδ_H″ ≥ θ_cδ_A″: covered by E3 (θ_cδ_A″ is in E3's list and δ_H″ ≥ δ_A″). CONFIRMED.
 - (b) the source vertex D_S on outer-layer blocks: new. CONFIRMED.
 - (c) the type (ii) J_S branch: the J_S current is new; the branch mechanism (WG 5.5) is the unsourced Δ_J branch with J → J_S. The branch junction sum at ½θ_cδ_H″ already occurs in the unsourced W_N^Ω (Δ_J branch, WC 4.1(d)). So the rate is not source-specific. CONFIRMED with this remark.
 - (d) end-scale moves: new in power (p_S per layer), not in kind (WG 5.5 C0 uses the same (s(b)/s(b′))^p ≤ L^{|p|}e^{|p|θ_Sd} rule across any layer gap, WG_FULL l. 237). CONFIRMED.
 - (e) the F count: the factor F multiplies C′_𝒟^f, i.e. it is the unsourced (M3) factor applied to the enlarged tag set. Not new in kind. CONFIRMED.
 (iii) Real symmetry: algebraic, layer-free. CONFIRMED.
Verdict (1). For the source: CONFIRMED — the only source-specific changes are (b), (c)'s J_S current, and (d), and τ_2^Ω is linear in ε_S^Ω. For Q1^Ω as a whole: CORRECTED — a second new item exists that is not a source item: Theorem L on the joint region Y = Ω_{k+1}, with the background regularity on Ω_{k+1} ∩ Λ^c_{k+1} as an unnamed input [I-strong].
Minor (0.4, 4.2). At step j the joint region of (2.21) is (Z_{j+1} ∩ Ω_{j+1}) ∪ Λ_{j+1} (A_j-block plus the Λ_{j+1}-block that C^{(j)}(Λ_{j+1}) inverts), not Z_{j+1} ∩ Ω_{j+1}. 4.2 states Q1^Ω for every Y ⊂ Ω_{k+1}, which contains the joint region, so nothing breaks. CORRECTED (wording).
Remark on (d) [I, a route not taken]. In the ω reading the source block is (ω(p) − 1)·g_k²·(Balaban's own layer-j plaquette Hessian block with weight 1/g²(p)) (D3_NEW4 §1 (1.1): Δ_1(ζ_0ω) − Δ_1(ζ_0) = Δ_1(ζ_0(ω − 1))). Balaban's own blocks already carry their layer normalization inside A_exp^Ω. Bounding the source block by θ times that block would make p_S = 0 and remove the (S_H^Ω) entry. This needs the Hessian part of A_exp^Ω to be literally H_1*Δ_1H_1 with Balaban's weights; not checked here.

## W2 Item (2): the source convention (ω versus d_S) and ε_S^Ω ≤ 5γ²r

Read: D3R §1.2 (Lemma P3), §1.3 last paragraph, §1.4, §2.2; D3_NEW4 §1; A16_REPLACE2 §1, 2.0 (S_H), 2.5.
 (a) Identity. D3_NEW4 §1: w(p) = ω(p)/g²(p), ω := g²(p)w(p), and the Hessian shift is Δ_1(ζ_0(ω − 1)) by linearity of A in the weight. A16: w_k = g_k^{−2} + d_B + d_S. With w = w_B + d (w_B = Balaban's weight), the g_k-normalized Hessian multiplier of the source is g_k²d(p) = (g_k²/g²(p))(ω(p) − 1). Re-derived: both are "Wilson Hessian with a plaquette multiplier", and A16 2.2–2.5 use only sup|g_k²d|. CONFIRMED.
 (b) A16 reading. D3R 2.2(c): d_S = −(f_k − h_k), |d_S| ≤ (3/2)r + 2C_hMρ_1λ_k ≤ 2r (with ρ_1 ≤ r/(4C_hM), λ_k ≤ 1). Pointwise in x, no layer index; the layer deviation 1/g_k²(·) − 1/g_k² is in d_B (2.2(a)–(b)). So sup over all plaquettes |g_k²d_S| ≤ 2γ²r. CONFIRMED.
 (c) ω reading. Lemma P3 is pointwise on supp ζ: |(w″ − u∘f) − (1/g″² − 1/g_k²)| ≤ δ_r = 4r + 2C_hMρ_1λ_k ≤ 4.5r ≤ 5r. The p. 364 entry (D3R 1.3 last paragraph) keeps the Balaban deviation O(1)(k − j) on Ω′_j∖Ω′_{j+1} and adds δ_r: the deviation is in w_B, the source part is still ≤ δ_r. So |g_k²(w − w_B)| ≤ g_k²δ_r ≤ γ²δ_r = θ ≤ 5γ²r, layer-uniform. CONFIRMED.
 Both readings give ε_S^Ω ≤ 5γ²r (A16: ≤ 2γ²r). Factor 5/2 against A16's g²r = ε_S/2 accounting: CONFIRMED.
 (d) Caveat, used but not stated [I]. The source bound is relative to the reference weight inside the reference operator. If the reference operator on outer layers is built with g_k^{−2} while the true weight is Balaban's 1/g″²(·), the difference d_B = O(1)(k − j) is NOT small and must stay out of the "source". At step k this is settled: CMP 119 (3.26)–(3.27) puts the deviation into the t-part, and the Gaussian measure dμ_{C^{(k)}(Λ_{k+1})} carries the constant-coupling ⟨A, C*Δ^{(k)}CA⟩ (D3R B14 [V-img], 2.1–2.2). For the step-j operator Δ^{(j)} of CMP 119 (2.21) inside an R-operation (the CMP 122 I (1.25) case), which weight Δ^{(j)} carries is not read [I]. Either way the source part is ≤ δ_r, provided the reference operator uses the same weight as the "Balaban" side of Lemma P3. The target's 1.4 says "covered either way"; that holds only under this proviso.
 (e) Complex f: ε_S^{Ω,c} ≤ 2θ uses the strip holomorphy of u_k [reduced, D3 open item]. Not used by NEW-2 (real points). CONFIRMED as stated in the target.
Verdict (2): CONFIRMED, with the proviso (d) named.

## W3 Item (3): scope corrections U1 and U2, re-derived

U1 (NEW-2 consumes only Q1 + Schur).
 Re-derivation. CMP 119 (2.21) [V image, W6] and (3.23) (text): the A_j Gaussian has precision S = A_11 − A_12(A_22)^{−1}A_21, A := C*Δ^{(j)}C on the joint region, block 2 = Λ_{j+1}, C^{(j)}(Λ_{j+1}) = (A_22)^{−1} [I-strong: the reading of C^{(j)}(Λ_{j+1}) as the inverse of the Λ_{j+1}-compression; this is the CMP 116 p. 12 conditioning convention, A16_REPLACE2 §1]. If A is real symmetric and A ≥ c on the joint space, then S^{−1} = (A^{−1})_{11} ≤ ‖A^{−1}‖ ≤ 1/c, so S ≥ c. The component-block-diagonal part (W6 quote) keeps ⟨x, S_KKx⟩ = ⟨x, Sx⟩ for x on K. Gaussian: ∫exp(−½⟨x, Sx⟩)dx = (2π)^{n/2}(det S)^{−1/2} ≤ (2π/c)^{n/2} = (8π/(3γ_exp))^{n/2} at c = ¾γ_exp. Inputs used: A ≥ c (Q1 on the joint region) and real symmetry. Q8 (Lemmas D^f, P^f) and (U-b) (R_1–R_3) are not used. Balaban's own use (CMP 122 II p. 383 [V image]) is "exp O(1)|Z_j ∩ Ω_j|" from "positivity properties". CONFIRMED.
 Q8 and (U-b) belong to the CMP 116 pp. 15–17 chain that CMP 119 p. 276 reuses "with η replaced by L^{−n}" (MULTISCALE_OMEGA_VERIFY V2 [V]). CONFIRMED that they are NEW-3 items, not NEW-2 items.
U2 ((2.59) only at internal junction rates; Lemma A from d ≥ d_∞).
 Lemma A re-derived. Y ⊂ Ω_{k+1} ⊂ Ω_k (V9(3), by definition). On the step-k sequence Ω_k has scale L^kη = 1, so μ ≡ m ≡ 1 on Y. CMP 96 (2.48) [V, V8]: d ≥ |·|_∞ on 𝔅. Then Σ_{b′∈Y}e^{−δd(b,b′)} ≤ Σ_{z∈Z^d}e^{−δ|z|_∞} = S_∞(δ) (Y is a set of unit-lattice points, one bond direction at a time; the d·dim𝔤 multiplicity is in the kernel constants as before). For (Wt): φ 1-Lipschitz in d on Y gives e^{ρ(φ(b)−φ(b′))} ≤ e^{ρd(b,b′)}, then Schur over Y. Correct. CONFIRMED.
 Where (2.59) is needed. Composite junctions: 𝒲_Z = 1_{Z_0}𝒲_S1_{Z_0}, so the WC-walk/𝒲-tree junctions are in Z_0 ⊂ Y: unit-layer sums, single-scale c_1. The (Anc) product junction carries 1_{Z_0^c} and lies in Λ ⊂ Y: unit-layer. W^f, W_Y, Γ_1^f(ρ_f), η_M^f(ρ_f): label counts plus b′-sums over Y. So the ε″/32 and ε″/16 rates never meet a Lemma 2.1 sum over 𝔅. Re-derived: CONFIRMED. The (2.59) demand is at the internal rates θ_cδ_A″, θ_cδ_H″, ½θ_cδ_H″ (and the unsourced WG/THM310 rates).
 Consequence for the canon [P]. Canon B18 (G addition) lists ε″/32 = ρ_f in δ_min. By U2 that entry is not needed. Do NOT delete it: it is the entry that implies the branch rate (W5(a)). Deleting it would leave ¼ε_min, which covers ½θ_cδ_H″ only for θ_c ≥ 1/9, not for all θ_c ∈ [1/16, 1).
Verdict (3): U1 CONFIRMED; U2 CONFIRMED as mathematics, with the canon caveat above.

Note to W3: "only for θ_c ≥ 1/9" means: from the recorded inequalities ε_min ≤ ½ε″ and ε″ ≤ ½δ_A″ = ½(1 − θ_c)δ_H″, the bound ½θ_cδ_H″ ≥ ¼ε_min follows for θ_c ≥ 1/9; for smaller θ_c it needs more than is recorded.

## W4 Item (4): the canon Ω-forms, recomputed

 (a) F. F = 1 + 2d(L + 2)^{d−1}/(3^d − 1); d = 4, L = 13: 1 + 8·15³/80 = 1 + 337.5 = 338.5. CONFIRMED (python).
 (b) Powers. A16_REPLACE2 2.3: K_W^T = 2C_𝒟(C′_𝒟)^{12}B_𝒲 (the 12 unweighted steps k_𝒲 = 12, each a next-domain choice). A16 2.5: q_W^T has (C′_𝒟)^{k_𝒲+2} = (C′_𝒟)^{14}. A16 6.2: K_V^T has (C′_𝒟)^{10}. Every next-domain choice takes F (M3), the first-domain choice does not (Lemma B). So K_W^{T,Ω} ∝ F^{12}, q_W^{T,Ω} ∝ F^{14}, K_V^{T,Ω} ∝ F^{10}. CONFIRMED.
 (c) Values (python): F^{12} = 2.26·10^{30}; F^{14} = 2.59·10^{35} (log10 = 35.41). The target's "≈ 2.6·10^{35}" CONFIRMED. The B32 r-cap tightening is ≤ (5/2)F^{14}(B_𝒲^{Ω″}/B_𝒲″) for (A16-b^T) and ≤ (5/2)F^{12}(…) for (A16-a^T). These are (d, L)-numbers (plus L^{p_S} and the multiscale c_1 inside B_𝒲^Ω), fixed before B32; r_0 is last. No circularity. CONFIRMED.
 (d) Lemma B (first domain unchanged). The first domain contains b ∈ Y ⊂ Ω_{k+1}, has d-diameter ≤ c_XM_1, and dist_∞(Ω_{k+1}, Ω_k^c) > RM ≥ 2LK_1M_1 > c_XM_1 (B18 G entry; V3). So it lies in the unit layer. CONFIRMED. The same holds after every composite junction (junctions in Z_0 or Λ), so C_𝒟 never takes F. CONFIRMED.
 (e) (G3) placements. With m ≤ 2·3^d(1 + L^{d−1})(1 + d(Ω)/ℓ) and |s| ≤ e^{κ_1}: |π_Ω| ≤ e^{2·3^d(1+L^{d−1})κ_1}·e^{(2·3^d(1+L^{d−1})κ_1/ℓ)d(Ω)}, and the second exponent is ≤ (ε″/16)d(Ω) iff ℓ ≥ 32·3^d(1 + L^{d−1})κ_1/ε″. Prefactor in η_M^{f,Ω}: e^{2·3^d(1+L^{d−1})κ_1} — CONFIRMED. In (H_η)^{f,Ω}: κ-term 2·3^d(1 + L^{d−1})κ_1 — CONFIRMED. In (2.16)^{f,Ω}: e^{4·3^d(1+L^{d−1})κ_1} (two reweighted factors) — CONFIRMED.
 CORRECTED: the side ℓ. The target writes (H_κ^{f,Ω}) "LM ≥ 32·3^d(1 + L^{d−1})κ_1/ε″", copying A16's ℓ = LM. In the Ω-geometry the σ_0-cubes on Ω_j∖Ω_{j+1} have side ML^jη (CMP 119 p. 275 [V, V2]), i.e. M in local units, and d counts local units (CMP 96 (2.48)). On the unit layer Ω_k∖Ω_{k+1} the side is M in d-units; only the Y-layer cubes (scale L^{k+1}η = L) have side LM. MULTISCALE_OMEGA 4.5 writes the condition with ℓ = "side M in local units". So the uniform condition is
 (H_κ^{f,Ω}) M ≥ 32·3^d(1 + L^{d−1})κ_1/ε″,
 a factor L stronger than the target's form. It is an M-threshold with κ_1, ε″, L fixed before M: admissible. The same correction applies to the unsourced (H_κ) in the Ω-setting (MULTISCALE_OMEGA 4.5 is written with ℓ and is right; the canon B18 line "(H_κ) LM ≥ 16·3^dκ_1/ε″" and "(H_κ^f) LM ≥ 32·3^dκ_1/ε″" are the single-scale forms).
 (f) S → S_∞. Lemma A gives S_∞(δ) = Σ_ze^{−δ|z|_∞} ≤ (coth(δ/2))^d·… (finite, (d, δ)-number); S_∞ ≥ the A16 S if A16's S used a larger norm. Only constants change; every place is a sum over Y. CONFIRMED.
 (g) B15 Ω-form FC′_𝒟^fc_1ρ ≤ ¼: also implies FC′_𝒟^fρ_A ≤ ¼ used in K_W^{T,Ω}'s geometric sum (ρ ≥ c_1ρ_A, c_1 ≥ 1, as in canon B14a's correction). CONFIRMED.
Verdict (4): CONFIRMED except the ℓ in (H_κ^{f,Ω}) (CORRECTED: M, not LM).

Fix to W4(f): the bound is S_∞(δ) ≤ Σ_ze^{−δ|z|_1/d} = (coth(δ/(2d)))^d, using |z|_∞ ≥ |z|_1/d. A (d, δ)-number; the conclusion stands.

## W5 Item (5): the two conditional B18 entries — needed or implied?

Read: canon B10, B18 (incl. G addition), E3, C24 references; WG_FULL l. 237–238, 6.4; WG_FULL_VERIFY F1.
 (a) RM > M_*(½θ_cδ_H″) (branch junction). Canon B18 (G addition) already imposes (2.59) at δ_min = min{…, ¼ε_min, ε″/32}. The (2.59) condition RM > (4/δ)(2d log(8/δ) + 1) is decreasing in δ (δ < 8), so it covers every rate ≥ δ_min. Check ½θ_cδ_H″ ≥ ε″/32: ε″ ≤ ½δ_A″ (WC 6.7, A16 §3) and δ_A″ = (1 − θ_c)δ_H″, so ε″/32 ≤ (1 − θ_c)δ_H″/64 ≤ ½θ_cδ_H″ iff θ_c ≥ 1/33. E3 has θ_c ≥ 1/16. So the entry is IMPLIED by the existing canon line, through its ε″/32 member. Not needed as a new entry. Canon wording: add ½θ_cδ_H″ to the δ_min list as a named member (no new threshold), and keep ε″/32 in the list (W3).
 (b) p_Sθ_S ≤ ¼θ_cδ_H″ ((S_H^Ω) scale moves). Existing entries: B10 θ_S ≤ δ_WG/(4(d + 2)); B18 (C24 round 4) RM ≥ 8 log L/(θε), which is WG's θ_S ≤ ¼θδ_1 with δ_1 = ½ε (WG_FULL l. 238, WG_FULL_VERIFY F1(a)), at the real rate and for the WG end move p = 2 (2θ_S ≤ ½θδ_1). The new need is at the complex rate δ_H″ = min{δ_1‴, δ_W″} ≤ δ_1 and with power p_S, which is not computed. So it is implied by C24's entry only if p_Sθ_S ≤ ¼θ_cδ_H″ follows from θ_S ≤ ¼θδ_1, i.e. if p_Sδ_1 ≤ δ_H″·(θ_c/θ); with δ_H″ < δ_1 this fails for p_S ≥ 1 at θ_c = θ. NOT implied in general. NEEDED as a B18 entry: RM ≥ 4p_S log L/(θ_cδ_H″). It is an M-threshold (R fixed at B10), with θ_c, δ_H″, L fixed before M: admissible. Note: A16_REPLACE2's single-scale (S_H) already wrote "θ_S ≤ ¼θδ_H" and the canon never booked it; the single-scale torus case does not need it (no layers), but the CMP 122 Ω-setting of A16 does. So this entry is owed by A16 already, not only by this file.
 Optional removal of (b): W1 remark (ω route, p_S = 0) [I, not checked].
Verdict (5): (a) IMPLIED (by B18's (2.59) line at δ_min ∋ ε″/32, since θ_c ≥ 1/16 > 1/33) — CORRECTED from "conditional NEW". (b) NEEDED — CONFIRMED as a new entry; its C24 implication claimed as possible in the target is REFUTED in general (complex rate, unknown p_S).

Precision to W5(b): the target's sufficient condition "p_S ≤ 2 and θ_cδ_H″ ≥ θε" cannot hold: with θ = θ_c it needs δ_H″ ≥ ε, but δ_H″ ≤ δ_1‴ ≤ δ_1 = ½ε (complex rates are not above the real ones, WC §6 [I-strong]). So the C24 entry never implies the (S_H^Ω) entry.

## W7 Item (7): the closure list (target 7.2 (a)–(e), 7.3 [I]) — complete?

Named and correct: unsourced NEW-3 inputs (W_G1^Ω), (A1-W^Ω), O2 = I-02, (Sep), Theorem L Case A, WC^Ω; A16 inputs; (S_H^Ω); ε_S^Ω ≤ 5γ²r; the canon entries.
Used but not named:
 U-A. Background regularity on the whole joint region Y = Ω_{k+1} (and Ω_{j+1} at step j), including the large-field part Ω_{k+1} ∩ Λ^c_{k+1}, for Theorem L on Y (W1(i)). [I-strong from CMP 119 p. 269 text; not imaged.] In the R-operation this is the relaxed (1.24) regularity = (R7), which the target names only in 4.6.
 U-B. The reference-weight proviso of W2(d): the "source" is w − w_B relative to the weight that the reference operator uses; for the step-j Δ^{(j)} in an R-operation that weight is not read [I].
 U-C. C^{(j)}(Λ_{j+1}) = (A_{Λ_{j+1}Λ_{j+1}})^{−1} with the same (sourced or unsourced) operator, so that (2.21) is a true Schur complement (W3, U1) [I-strong, CMP 116 p. 12 conditioning convention]. M1_SWEEP calls this C-new-3; the target's §0 uses it without naming.
 U-D. (H_κ^{f,Ω}) side ℓ = M, not LM (W4(e)).
 U-E. The complex rate ordering δ_H″ ≤ δ_1 used in W5(b) (bookkeeping).
Stale in the target: 0.5 and 7.2 "the [III] reading … does not settle" and "CMP 122 III (2.21)": settled by W6, [III] = CMP 119; U5's definition part is now [V image], with residue (R7) + the step-j identification (W6(c)).
Not missing: the (2.59) rates (B18 G line covers them, W5(a)); RM > 2LK_1M_1 (B18 G); 5γ²r ≤ ½ (B32).
Verdict (7): CORRECTED — complete after adding U-A, U-B, U-C (U-D is a correction of a stated condition).

## W8 Verdict table, grade, ledger, canon lines

| # | claim | verdict | reason |
|---|---|---|---|
| 1 | only outer-layer source blocks + scale moves are new (Q1^Ω traced) | CONFIRMED for the source; CORRECTED for Q1^Ω | source-specific: D_S blocks, J_S current, p_S moves; also new (not a source item): Theorem L on Y = Ω_{k+1}, with regularity on Ω_{k+1} ∩ Λ^c_{k+1} unnamed (U-A) |
| 2 | ω/d_S identity; ε_S^Ω ≤ 5γ²r layer-uniform, both readings | CONFIRMED | Lemma P3 and D3R 2.2(c) are pointwise, no layer index; proviso: source is relative to the reference operator's weight (U-B) |
| 3 | U1 (Q1 + Schur only); U2 ((2.59) at internal rates; Lemma A) | CONFIRMED | Schur + Gaussian re-derived; all ε″/16, ε″/32 sums are over Y ⊂ unit layer. Keep ε″/32 in canon δ_min anyway (it implies 5(a)) |
| 4 | F^{12} in K_W^T, F^{14} in q_W^T, ≈ 2.6·10^{35}; (G3) placements; S → S_∞ | CONFIRMED; one CORRECTION | F = 338.5, F^{12} = 2.26e30, F^{14} = 2.59e35; (H_κ^{f,Ω}) needs ℓ = M: M ≥ 32·3^d(1 + L^{d−1})κ_1/ε″, not LM ≥ |
| 5 | two conditional B18 entries | (a) IMPLIED; (b) NEEDED | (a) by B18 (2.59) at δ_min ∋ ε″/32 since θ_c ≥ 1/16 > 1/33; (b) C24 never implies it (δ_H″ ≤ ½ε) |
| 6 | "(2.21) [III]" | SETTLED: CMP 119 (2.21) | reference lists of CMP 122 I p. 202 and II p. 392 on images; no CMP 122 III exists; V7's "CMP 122 III" REFUTED; (2.21) printed form is the explicit Schur form |
| 7 | closure list complete | CORRECTED | add U-A, U-B, U-C; U-D correction |
REFUTED claims of the target: none of its theorems. Refuted side remarks: the possible C24 implication of the (S_H^Ω) entry (5b); and, outside the target, MULTISCALE_OMEGA_VERIFY V7/V9(9)'s "CMP 122 III".
Grade. PASS WITH CORRECTIONS. The four statements W_S^Ω, Q1^Ω, Q8^Ω, (U-b)^Ω are PROVED [P] relative to the named inputs plus U-A, U-B, U-C, with (H_κ^{f,Ω}) in the M-form. No step fails; the corrections change one threshold by a factor L and add three tagged inputs.

Ledger status after this file.
 NEW-2: PROVED [P, verified] relative to Q1^Ω (target §4) + Schur (W3) — for both the CMP 119 (2.21)/(3.23) form and the CMP 122 I (1.25) form, since (1.25)'s operator is the CMP 119 (2.21) form (W6). Residue: U-A/(R7) relaxed regularity in the R-operation [I], U-B [I], U-C [I-strong].
 NEW-3 (row A27): REDUCED [verified] → sourced extension no longer OPEN: "sourced part PROVED rel. inputs [verified, SOURCES_MULTISCALE_OMEGA_SOURCED + VERIFY]". A27 stays a verified REDUCTION (not PROVED) because the unsourced inputs keep their status: (A1-W^Ω) [C on (C)], O2 = I-02 [P-sketch, straddling cover], (Sep) [R + I-strong], (S_H^Ω) [I], plus U-A, U-B, U-C. The "(1.25) operator, CMP 122 III (2.21) unread" item is replaced by "(1.25) operator = CMP 119 (2.21) [V]; (R7) [I]".

Canon lines to add (SOURCES_ORDER_CANON; this file edits nothing):
 1. B14a, append: "Ω-forms: C′_𝒟^{f,Ω} := F·C′_𝒟^f, F := 1 + 2d(L + 2)^{d−1}/(3^d − 1) (= 338.5 at d = 4, L = 13); C_𝒟 unchanged (Lemma B); K_W^{T,Ω} = 2C_𝒟(FC′_𝒟^f)^{12}B_𝒲^Ω, K_V^{T,Ω} with (FC′_𝒟^f)^{10}; B_𝒲^Ω: c_1 at internal junctions = CMP 96 Lemma 2.1 c_1, L^{O(1)} → L^{O(1)+p_S}; δ_𝒲^Ω := δ_𝒲 − p_Sθ_S; S → S_∞ on unit-layer sums. — SOURCES_MULTISCALE_OMEGA_SOURCED §3, §7.1 + VERIFY W4."
 2. B15, append: "Ω-form: F·C′_𝒟^fc_1ρ ≤ ¼, real and complex."
 3. B17a, append: "Ω-form: W^{f,Ω} ≤ 2C_𝒟S_∞(ε″/16); Γ̄_1^{f,Ω} with B_A^{Ω″}, K_W^{T″,Ω}, S_∞."
 4. B18, replace "(H_κ^f) LM ≥ 32·3^dκ_1/ε″" by "(H_κ^{f,Ω}) M ≥ 32·3^d(1 + L^{d−1})κ_1/ε″ (σ_0 side M in local units; implies (H_κ^f))"; replace the κ-terms of (H_η)^f and of the (2.16)^f side condition by 2·3^d(1 + L^{d−1})κ_1 and e^{4·3^d(1+L^{d−1})κ_1}; in the (2.59) δ_min list add "½θ_cδ_H″ (W_S branch; implied by ε″/32 for θ_c ≥ 1/33)" and keep ε″/32.
 5. B18, new entry (+1): "(S_H^Ω) p_Sθ_S ≤ ¼θ_cδ_H″, i.e. RM ≥ 4p_S log L/(θ_cδ_H″); p_S = scale power of the source block [I]; not implied by RM ≥ 8 log L/(θε). — SOURCES_MULTISCALE_OMEGA_SOURCED 3.3(d) + VERIFY W5(b)."
 6. B32, append: "Ω-forms: (A16-a^{T,Ω}) (ε_S^Ω/2)K_W^{T″,Ω}S_∞(δ_𝒲^{Ω″}) ≤ γ_exp/4; (A16-b^{T,Ω}) q_W^{T,Ω} := 4(8/γ_exp)c_1(θ_c½ε″)²(ε_S^Ω/2)B_𝒲^{Ω″}(FC′_𝒟^f)^{14} ≤ ¼ (c_1 single-scale: junctions in Z_0); ε_S^Ω ≤ 5γ²r layer-uniform; r-cap tightens by ≤ (5/2)F^{14}B_𝒲^{Ω″}/B_𝒲″ (F^{14} ≈ 2.6·10^{35} at d = 4, L = 13), a (d, L)-number."
Firewall kept. STATUS: COMPLETE.
