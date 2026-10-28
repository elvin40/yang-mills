# SOURCES_P253_P275 — CMP 109 p. 253 (universality over averages) and p. 275 (regularity of the glued configuration)

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Ledger tags. [P] proved here. [V] read on a 300 dpi page image in this session. [I] interpretation or unchecked reading. [R] relies on a printed statement without our proof.
Sources read: CMP 109 pp. 253, 275 (images, pdf pp. 5, 27); CMP 109 pp. 262, 273–280 and CMP 99 pp. 393–394, 419 (text layer only); SOURCES_P254_TRANSFER.md with its appended corrections; SOURCES_P254_TRANSFER_VERIFY.md; SOURCES_A18_REGULAR.md §§1–5; SOURCES_A3_GAMMA0_FULL.md §§3–6; WC_FULL.md §0.9, §3 (after today's κ_ch fix).
Companion edit: WC_FULL.md §3.1(2) now carries the chain terms (factor κ_ch); see its change-log item 14.

## 1. CMP 109 p. 253: the sentence and "the above properties" [V p. 253, pdf p. 5, 300 dpi]

1.1 Quote [V]. "The considerations and results of this, and previous papers, do not depend on any particular averaging operation used; they are valid universally for all averages satisfying the above properties."
Place [V]. The sentence comes right after the Federbush definition (0.10) and the line "This definition has all the properties listed above, as it was proved by Federbush in [35 (II)]". It comes right before the averaged contour variable (0.11), U(y, x) = M({U(Γ)}_{Γ∈G(y,x)}).

1.2 "The above properties", exactly [V]. Balaban introduces "an axiomatric definition" of a group average. It is "a G^c-valued function defined on sets {U_j : j = 1, 2, …, n}, U_j ∈ G^c, with sufficiently small diameters", written M({U_j}), and "we assume that it is an analytic function having the following properties":
 (A) analytic on finite sets of small diameter in G^c, values in G^c;
 (0.5) M({U_j^{−1}}) = M({U_j})^{−1};
 (0.6) M({uU_jv}) = uM({U_j})v (two-sided covariance);
 (0.7) M(π{U_j}) = M({U_j}) for every permutation π;
 (0.8) for U_j = exp iA_j with A_j in a small neighbourhood of 0 in 𝔤^c, the average is close to 1 and (1/i)log M({exp iA_j}) = (1/n)Σ_jA_j + (higher order terms);
 (0.9) if all U_j ∈ G, then M({U_j}) ∈ G.
(0.10) is not a property. It is Federbush's example, which satisfies (A), (0.5)–(0.9).

1.3 What the sentence literally asserts [P, reading of 1.1–1.2].
 (a) The "averaging operation" of the sentence is the group average M. The bond average (0.4) on the same page contains no M: it is an average of logarithms over pairs of contours. M enters the bond average only through (0.12) on p. 254, and it enters the gauge fixing through (0.11), (0.14).
 (b) So the literal content is: the results do not depend on the choice of M among the averages with (A), (0.5)–(0.9).
 (c) "Previous papers" (CMP 95–102) used one axial contour Γ_{y,x}. For them M acts on a one-element set, so M = identity, which trivially satisfies (A), (0.5)–(0.9). The literal sentence therefore does not, by itself, transfer CMP 95–102 results from one contour Γ_{y,x} to the family G(y, x). That change of contour family is the p. 254 sentence ("properties similar …"), which SOURCES_P254_TRANSFER treats for CMP 98 only.
 (d) Consequence. For the CMP 99 operators WC_FULL R4 needs under Q̃, two questions are separate. Q1 (p. 253 proper): does the CMP 99 proof use M only through (A), (0.5)–(0.9)? Q2 (contour family): does it use a feature of the single axial contour that G(y, x) lacks? §2 answers both per operator.

## 2. The CMP 99 operators of WC_FULL R4 under the symmetric average Q̃

2.1 What the CMP 99 constructions use about the average [text CMP 99 pp. 393–394, 400–401, 419–422; A3 §§0, 5, 6; A18 §6].
 (u1) Locality of Q(U): (Q(U)A)(c) depends on A and U in B(c_−) ∪ B(c_+) ∪ corridor only.
 (u2) Covariance (3.32)–(3.34) of Q(U) and Q′(U).
 (u3) Analyticity and the expansion Q(U′U) = Q(U) + F_2(A), with (3.78)–(3.79), taken from CMP 98 (139)–(141). In our files this is Lemma Q (A18 6.1) and A3-R2′.
 (u4) The gauge average Q′(U), (3.19): (Q′(U)λ)(y) = Σ_{x∈B(y)}L^{−d}R(U(Γ_{y,x}))λ(x), "linear parts of the averaging operations Ru … defined by (78)–(80) in [5]" [text p. 394]. For CMP 109 the contour variable U(Γ_{y,x}) becomes U(y, x) = M({U(Γ)}_{Γ∈G(y,x)}) of (0.11).
 (u5) The intertwining (3.114)–(3.115), QDλ = DQ′λ [text p. 419], derived from CMP 98 (78)–(80).
 (u6) Lower bounds of the quadratic forms behind G′, G, G_1 (CMP 99 Thms 3.1, 3.11–3.12, through the CMP 95/96 inequalities; A3-R1). The free inequality of this type that we have read, CMP 96 Lemma 2.4 (2.121)–(2.128), is proved with B = 0 on single-contour axial trees T(y) [V in A3 §3].

2.2 Q1: is M used only through (A), (0.5)–(0.9)? [P relative to the forms (u1)–(u6)]
 M enters only through U(y, x) in (u4), in (0.12), and in the gauge fixing. (u2) for U(y, x) is (0.6). R(U(y, x)) is orthogonal by (0.9). Analyticity of Q′(U) and Q(U) in U′ (u3) is (A) with (0.8). The linear part of U(y, x) is the average of A(Γ) over G(y, x) by (0.8). (0.5) and (0.7) give that U(x, y) = U(y, x)^{−1} and that U(y, x) does not depend on the order of G(y, x). Nothing else about M appears in (u1)–(u6). So the answer to Q1 is yes for every operator.
 Caveat [P, SOURCES_P254_TRANSFER_VERIFY V8]. The (0.8) remainder constant need not be uniform in n = |G(y, x)| for a general M. So constants depend on (d, L, M). For Federbush's (0.10) they do not depend on M. Both cases are allowed by the order of constants.

2.3 Q2 and the table. "Printed-proof transfer" means: the CMP 99 proof uses only (u1)–(u5) and the average properties, so the result holds for Q̃ with the same proof and changed (d, L) constants.

| operator (WC_FULL use) | what its CMP 99 proof uses | axial-specific feature? | grade |
|---|---|---|---|
| Q̃ itself, A3-R2′ (4.1(a), 3.1(2)) | (u1)–(u3): transport along contours of length ≤ dL, CMP 98 (139) | no: every Γ ∈ G(y, x) has length \|x − y\|_1, as the axial one | [P rel. CMP 98 (139) [R]]; constant change c_{Q1} → c̃_{Q1} (P254 U8) |
| intertwining (3.115) for (Q̃, Q̃′) | CMP 98 (78)–(80), (92)–(106) algebra | no: covariance and product definitions only, if U(Γ_{y,x}) → U(y, x) is made in (64), (67), (78), (85), (105) together (P254_VERIFY V5–V6, image-checked) | [P rel. CMP 98 [R]] |
| G_1 (3.128) (A1-W input, WG-G1) | (u1)–(u5) and the lower bound (u6) | YES, in (u6) only: the printed free lower bound uses B = 0 on single-contour trees T(y); for Q̃ the chain terms do not vanish on such fields | REDUCED to Lemma LB_Q̃ (§3) |
| H_1 = G_1Q̃*(Q̃G_1Q̃*)^{−1} (3.129) (Δ_J branch, 4.1(d)) | algebra (3.129) plus G_1 and (Q̃G_1Q̃*)^{−1} | no new feature | inherits G_1 |
| (Q̃G_1Q̃*)^{−1} (A1-W) | expansion "the same way as (Q′G′²Q′*)^{−1}" [text p. 422]; needs G_1 two-sided and Q̃Q̃* ≥ c | no new feature: one step, Q̃Q̃* ≥ L^{−(d+1)} at U = 1 exactly as for Q_1, because chains miss corridor bonds (§3.3) | inherits G_1; Q̃Q̃* one step [P] |
| Δ_J (CMP 109 (2.11), WC_FULL R3/A3-R4) | C̃^{(2)} (second-order part of Q̃: (A), (0.8) for (0.12), BCH for (0.4)), locality, H_1 bound (3.133), \|J\| = O(Mα_0) | no | [P rel. H_1 row + CMP 99 (3.133) [R]]; c_J′ changes by a (d, L) factor (P254 I-09) |

2.4 Reading [P]. Only one input of the four operators uses the axial contour in its printed proof: the free lower bound (u6) behind G_1 (and behind G, which is built the same way). G′ is not affected: its form Δ_U + Q′*aQ′ acts on scalars, and at U = 1 both Q′ and Q̃′ are the plain block average Σ_xL^{−d}λ(x), since R(1) = 1. Everything else is covariance, locality, transport length, and the M axioms. The same defect appeared in WC_FULL 3.1(2) and was fixed there by the factor κ_ch.

## 3. The axial-specific input: Lemma LB_Q̃ and a free tool for it

3.1 Lemma T (free symmetric average = axial average after a block-constant gauge shift) [P]. Work at U = 1, one step, abelian components, in the normalization of SOURCES_P254_TRANSFER Lemma S (Q_str(Dν) = Dν̄, ν̄ the block average). Let λ_B(x) := −B⟨Γ_{y(x),x}⟩ (symmetric chain) and λ^ax_B(x) := −B(Γ^ax_{y(x),x}) (axial chain). Put σ_B(y) := the block average over B(y) of λ_B − λ^ax_B, and μ_B(x) := σ_B(y(x)). Then
 Q̃_freeB = Q_ax(B + Dμ_B), T := I + Dμ_· is unipotent (T^{−1} = I − Dμ_·), ∂T = ∂, and ‖Dμ_B‖ ≤ 4dL^{d/2}‖B‖.
Proof. By Lemma S for both chains (SOURCES_P254_TRANSFER_VERIFY V9(1)), Q̃_freeB = Q_str(B + Dλ_B) and Q_axB = Q_str(B + Dλ^ax_B). So Q̃_freeB − Q_axB = Q_strD(λ_B − λ^ax_B) = Dσ_B (coarse gradient).
 For a fine μ, λ^ax_{Dμ}(x) = −(μ(x) − μ(y(x))). So Dμ + Dλ^ax_{Dμ} = D(μ∘y), and Q_ax(Dμ) = Q_strD(μ∘y) = D(μ|_centres). With μ = μ_B this is Dσ_B. This gives the identity.
 Dμ_B vanishes on block bonds, because μ_B is constant on blocks. Chains use block bonds only. So λ_{Dμ_B} = λ^ax_{Dμ_B} = 0, σ_{Dμ_B} = 0, and T(Dμ_B) = Dμ_B. Hence (T − I)² = 0. ∂Dμ = 0 gives ∂T = ∂.
 Norm: by Cauchy–Schwarz along a contour of length ≤ dL, |λ_B(x)|, |λ^ax_B(x)| ≤ (dL)^{1/2}S_y^{1/2}, so |σ_B(y)|² ≤ 4dL·S_y. A corridor c has L^{d−1} bonds, each carrying σ_B(c_+) − σ_B(c_−), and each block meets ≤ 2d corridors. So ‖Dμ_B‖² ≤ 2L^{d−1}·2dΣ_y|σ_B(y)|² ≤ 16d²L^dS_b. ∎
3.2 Use. Any free lower bound of the form Σ(curl terms) + a‖Q_axX‖² ≥ γ‖X‖² transfers to Q̃_free with γ → γ(1 + 4dL^{d/2})^{−2}: apply it to TX, use ∂TX = ∂X and ‖X‖ ≤ ‖T^{−1}‖‖TX‖. Terms that are not gauge invariant (the Landau term ‖RD*X‖² of (3.128)) need a separate check.
3.3 Q̃Q̃* one step [P]. A straight μ-segment [x, x′] of corridor c crosses exactly one corridor bond, the one of c, and chains cross none. So (Q̃*w)(b) = L^{−d}w(c) for b ∈ 𝒦(c), and ‖Q̃*w‖² ≥ Σ_cL^{d−1}L^{−2d}|w(c)|² = L^{−(d+1)}‖w‖². This is the same bound as for Q_1.
3.4 Lemma LB_Q̃ (named reduction target). CMP 99 Theorems 3.1 and 3.11–3.12 (the bounds (3.46), (3.108), (3.132)–(3.133) for G and G_1, hence A3-R1 and the (3.108)-form input of WG-G1/A1-W) hold with Q_k replaced by Q̃_k and Q′_k by Q̃′_k, with (d, L) constant changes.
 Status [I, route only]. (a) one step, U = 1: Lemma T [P]. (b) k steps: Q̃_k = Q_ax,k∘T_k with T_k a gauge shift by a fine gradient, because Q_ax maps fine gradients to coarse gradients (3.1) and each later shift lifts. The k-uniformity of ‖T_k‖ is not checked. (c) the Landau term RD*A and the change Q′ → Q̃′ under T_k: not checked; the A3 Lemma 5 variational identity suggests the Landau term drops out for minimizers, but this is not shown for G_1 itself. (d) regular U: covariance (u2) and Lemma Q (u3), Mα_0 errors, as in A3 §§2, 4.
 Where WC_FULL meets it: only through A3-R1 (K_1) and the WG-G1/A1-W tree inputs. Both are already [R]/[C] in WC_FULL. So Lemma LB_Q̃ adds no new kind of dependence; it sharpens the existing [R] rows to "[R] for Q_k, plus LB_Q̃ for Q̃_k".

