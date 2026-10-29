# SOURCES_R026_PI — the remaining inputs of R-026 ((PI)), closed at fixed level

Date 2026-10-29. Author: Claude (Opus 5.5). Derivation file, unverified. Ids follow IDS.md. Labels (I1)–(I3), Lemmas 3.x–5.x, claims 1–27 are those of SOURCES_T2_PI (file-local there). New local labels: P-1 … P-6.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were in no grep. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Grades: [P] proved here, every step written; [P-sketch] outline, one step not written in full; [V] printed text seen on a page image in this session; [R] reduced to a named input; [I] reading not checked.

## 0. What I read

- OPUS_QUEUE.md l. 1–15; IDS.md (R- rows).
- TRUST_LEDGER.md row R-026 and its addenda (l. 82, 179, 212, 228, 312, 361, 588); rows R-015, R-029, R-030.
- SOURCES_T2_PI.md (all); SOURCES_T2_PI_VERIFY.md (all).
- SOURCES_R030_RESIDUE.md (all); SOURCES_R030_RESIDUE_VERIFY.md (all).
- SOURCES_T2_G2.md §1–§2 and Lemma 3.1; SOURCES_T2_G2_VERIFY.md items 1.1, 1.2, 2.2, 2.4, 4.1, 4.3, 5.1, 5.4.
- SOURCES_T2_I3.md (header, plan, §9 summary); SOURCES_T2_I3_VERIFY.md (header, §1).
- BETA_FP_H.md §0–§1; KAPPA_BOUNDED.md l. 28–36; THEOREM2_PROOF_v4.md (grep "(PI)"); SOURCES_T2_V1.md (header, l. 193–213, C9, C11).
- Page images, CMP 109 pp. 252–253 (PDF 4–5). Rendered with pdftoppm -r 150 into a fresh folder /tmp/r026pi.B8G5, read as images, folder deleted after use.

## 1. The inputs of R-026 after SOURCES_T2_PI + VERIFY

R-026 is L-249 (Theorem PI): at fixed j ≥ 1, odd L ≥ 3, the plane-wave p² coefficient S_j^{pw} of the per-cell density of Γ (SOURCES_T2_PI (1.1)) equals its constant-field f² coefficient S_j^{cf}. The verified proof uses the items in the table. The column "status before" is the grade after SOURCES_T2_PI_VERIFY.

| # | input | status before | where closed here |
|---|---|---|---|
| P-1 | (I1) massiveness at U = 1 of the composed fine Bord and ghost, every real K; j = 1 identification with the one-step matrix [I]; chaining for j ≥ 2 [I] | [R] + two [I] | §2: [P] directly for the composed matrix, every j |
| P-2 | (I2) gauge covariance of Δ, D_k, Q̃ | [P] (VERIFY §1.2–§1.3) | §3: also Lemma Z-1(b) [P, verified]; no change |
| P-3 | analyticity of the averaging near the identity (used in Lemmas 4.1, 5.3) | named, not proved | §3: Lemma Z-1(c) [P, verified] |
| P-4 | (I3) invariance under one axis permutation σ; full hypercubic group for Lemma 5.4 | [I] (VERIFY §1.5, §4.5) | §4: [P] from the (0.4) image, full hypercubic group |
| P-5 | claim 1: log Z_Λ(V_f) = Γ(U_0^φ) + const (BETA_FP_H Fact 1.1) | [R, verified] | §5: not an input of the consumer; Fact 1.1 (a), (b) [P] anyway |
| P-6 | cell assignment of face links (VERIFY §1.5 fix: base point) | [P] for σ only | §4.4: midpoint weights, covariant under the full group |

Not inputs of R-026, and left as they are: Corollary 6.1 (code limit = p² coefficient of Balaban's true kernel) and §6.3; (d2)–(d4) and (F_lat) (row R-027); the d = 4 numerics and KAPPA (1.1) at L = 3 (row text: not an input at any L). SOURCES_T2_PI §9.1 and VERIFY §6 say the same.

A citation error in the ledger. Row R-026 says "(I3) is [P] since round 5 (SOURCES_T2_I3 + VERIFY)". SOURCES_T2_I3 proves a different (I3): the Peierls input of SOURCES_T2_S123 (analyticity in f of the fixed one-step vertices Q̃_f, D_f, Π at constant flux; its title is "the Peierls input (I3) at one step"). It says nothing about axis permutations. The (I3) of SOURCES_T2_PI is lattice symmetry, and SOURCES_T2_PI_VERIFY §1.5 graded it [I]. So, before this file, R-026 had one open [I] input that the ledger reported as [P]. The same mis-citation is in THEOREM2_PROOF_v4 l. 431 and paper/assembly.tex l. 174. §4 closes the gap. The text in those three places must be corrected when the ledger is next edited.

## 2. P-1: (I1) at every fixed j, for the composed matrix itself

Objects. The objects are those of SOURCES_T2_PI (1.1) and SOURCES_T2_G2 §1.2. The two files define the same matrix: Bord(U) = [[Δ(U) + D_k(U)D_k(U)^T, Q̃(U)^T], [Q̃(U), 0]]. Here D_k = Dι_k is the covariant gradient on gauge parameters that vanish at the level-j anchors (one per coarse cell, at its centre). Q̃ is the left-chart linearization of the j-fold iterate of CMP 109 (0.4) (definitions (Avg), (Chart) of SOURCES_R030_RESIDUE §1). G := D_k^TD_k. At U = 1 all of them commute with translations by ΛZ⁴. Write B̂ord(K), Ĝ(K) for the Bloch fibres at coarse momentum K ∈ [−π, π]⁴.

Lemma P-1. Fix j ≥ 1 and odd L ≥ 3. Put q_j := L^{−6j}, let γ_j > 0 be the constant of SOURCES_T2_G2 Lemma 1.3, and α := sup_K‖Â(K)‖ with A := Δ(1) + D_kD_k^T. Then for every real K:
(a) Ĝ(K) ≥ (4Λ⁵)^{−1};
(b) B̂ord(K) is invertible and ‖B̂ord(K)^{−1}‖ ≤ C_B := 2√2(1/γ_j + 1/√q_j)(1 + α/√q_j)²;
(c) X̂(K) := B̂ord(K)² ≥ c_X := C_B^{−2}.
So (I1) of SOURCES_T2_PI holds at every j, and Lemma 3.3(a) holds with c_X = C_B^{−2}.

Proof.
(a) SOURCES_T2_G2 Lemma 1.2 gives G ≥ (4Λ⁵)^{−1} on ℓ²(Z⁴) at any background (CONFIRMED, T2_G2_VERIFY 1.2). At U = 1, G commutes with ΛZ⁴. Suppose a fibre had an eigenvector v with eigenvalue < (4Λ⁵)^{−1} at some K_0. The fibre matrices are trigonometric polynomials in K, so the eigenvalue stays below the bound on a neighbourhood of K_0. A wave packet built from v over that neighbourhood is an ℓ² vector with Rayleigh quotient below the bound. This contradicts Lemma 1.2. (The same fibre argument is used in SOURCES_R030_RESIDUE Lemma Z-2 and was CONFIRMED there, V15.) [P]
(b) Three inputs, each fibrewise.
 - Q̂(K)Q̂(K)^† ≥ q_j for every K. This is Lemma Z-1(d): the explicit right inverse H_j commutes with ΛZ⁴, so the bound ‖v‖ ≤ ‖Ĥ_j(K)‖‖Q̂(K)^†v‖ holds in each fibre [P; CONFIRMED in SOURCES_R030_RESIDUE_VERIFY V8].
 - Â(K) ≥ γ_j on ker Q̂(K) for every K. This is SOURCES_T2_G2 Lemma 1.3. Its proof is fibrewise. Its inputs were Q̃Q̃^T ≥ q_j, Q̃D = D_cι_a^T, "Q̃c is a nonzero multiple of c", and Δ(1) = c_W d^Td. T2_G2_VERIFY 5.1 graded it [P] with one [I], the third input. Lemma Z-1(e) proves Q̃c = Λc, and Lemma Z-1(b) proves Q̃D = D_cι_a^T. SOURCES_R030_RESIDUE_VERIFY V14 CONFIRMED that every input of γ_j is now [P]. [P]
 - The saddle-point bound SOURCES_T2_G2 Lemma 3.1: if A = A^T, ‖A‖ ≤ α, QQ^T ≥ q > 0 and A ≥ γ on ker Q, then Bord is invertible with ‖Bord^{−1}‖ ≤ C_B. CONFIRMED in T2_G2_VERIFY 2.4 (rederived). It is a statement about one matrix, so it applies in each fibre. [P]
 Together these give (b). [P]
(c) B̂ord(K) is real symmetric (Hermitian in the fibre) and invertible with ‖B̂ord(K)^{−1}‖ ≤ C_B. So its eigenvalues satisfy |λ| ≥ C_B^{−1}, and X̂(K) = B̂ord(K)² ≥ C_B^{−2}. [P] ∎

Consequences for SOURCES_T2_PI.
- The Paley–Wiener consequence of (I1) (exponential decay of the kernels of Bord(1)^{−1}, G(1)^{−1} and of the resolvents (z − X(1))^{−1}) follows as written there: the fibres are trigonometric polynomials and invertible on the compact set 𝒞 × BZ, hence on a strip |Im K| ≤ δ_j. [P]
- The two [I] items of claim 3 disappear. The proof above works on the composed fine matrix at level j directly. No identification with a one-step matrix (j = 1) and no chaining over levels (j ≥ 2) is used.
- The constants are fixed-j constants. Nothing here is uniform in j, and Theorem PI does not need uniformity.

Grade of P-1: [P] relative to Lemma Z-1(b), (d), (e) [P, verified] and SOURCES_T2_G2 Lemmas 1.2, 1.3, 3.1 [P, verified]. The old reduction to U3_REPAIRS O6 and U3_AW Lemma A1 is no longer needed.

## 3. P-2 and P-3: covariance and analyticity of Q̃

P-2 (I2). SOURCES_T2_PI_VERIFY §1.2–§1.3 proved the covariance of Δ, D_k and Q̃ for every fine gauge function u, with Q̃ from the log-covariance of loops based at c_−. SOURCES_R030_RESIDUE Lemma Z-1(b) proves the same identity from the (0.4) image and adds Q̃D = D_cι_a^T; CONFIRMED in its VERIFY V6. Both proofs use the product convention U(b_1 ∪ … ∪ b_n) = U(b_1)⋯U(b_n) along the path. With this convention the loop of (0.4) starts and ends at c_−. Lemma 3.2 (gauge invariance of ρ_c) needs only that the conjugating matrix is block diagonal with one orthogonal block per fine link, site or coarse multiplier. This is true for the weighted trace of §4.4 as well. Grade: [P], no change.

P-3 (analyticity of the averaging near the identity). Lemmas 4.1 and 5.3 of SOURCES_T2_PI use: "analyticity of the Wilson action, of D_k and of the averaging (0.4) in the link variables near the identity", with entrywise Lipschitz bounds. SOURCES_R030_RESIDUE Lemma Z-1(c) proves: there is r_j > 0 such that every entry of Q̃(e^{iÂ}) is analytic on the polydisc {|Â_b| < r_j/2}, and |Q̃(e^{iÂ})(c, b) − Q̃(1)(c, b)| ≤ Lip_Q sup_b|Â_b| for real sup|Â| ≤ r_j/4. CONFIRMED in its VERIFY V7, with Lip_Q ∝ 1/r_j² (only finiteness at fixed j is used). The Wilson action and D_k are polynomials in the entries of the links, so their analyticity is [P]. The two places where SOURCES_T2_PI applies this:
- Lemma 4.1, step "|x_φ − x_0| ≤ C|φ|": in symmetric gauge the link angles within range 2R_j of a point of cell 0 are ≤ |φ|(Λ + 2R_j) (VERIFY §3.1 step 3). For |φ| ≤ r_j/(4(Λ + 2R_j)) Lemma Z-1(c) gives the bound. [P]
- Lemma 5.3, plane wave: the link angles are a cos(p x_1) with |cos| ≤ 1, so for |a| < r_j/2 every entry of Q̃ is analytic in a with bounds uniform in p and in the position (SOURCES_R030_RESIDUE_VERIFY V30). [P]
A second, independent route to Lemma 4.1 also exists. Lemma Z-2 (corrected (Gap_f), verified) gives Q̃_fQ̃_f^T ≥ q_j/2 and A_f ≥ γ_j/2 on ker Q̃_f for |f| ≤ f_0, on ℓ²(Z⁴). With T2_G2 Lemma 3.1 this gives ‖Bord(U_0^φ)^{−1}‖ ≤ C_B′ uniformly in |f| ≤ f_0, so X(φ) ≥ C_B′^{−2}. The resolvent decay then follows from the Combes–Thomas Lemma 2.1 of SOURCES_T2_G2 (CONFIRMED there). So Lemma 4.1 does not depend on the magnetic Neumann series alone. [P]
Grade of P-3: [P] relative to Lemma Z-1(c) [P, verified].

## 4. P-4 and P-6: (I3), the full hypercubic group, from the (0.4) image

### 4.1 The printed definitions [V]
CMP 109 p. 252 (PDF 4), page image read: "(0.3) B^k(y) = Δ(y) ∩ T…; [Δ(y) is a continuous space cube with a center at y and with the size δ]. Blocks of order 1 are denoted by B(y). For a point x ∈ B(y) we take a family G(y, x) of shortest contours with the initial point at y, and the final point at x. If x − y = Σ_{μ=1}^d δn_μe_μ (δ is a lattice spacing, n_μ an integer such that |n_μ| ≤ L − 1/2), then we construct contours of G(y, x) in the following way: take a permutation {π(1), π(2), …} of indices μ with nonzero numbers n_μ, next take |n_{π(1)}| bonds in the direction sign n_{π(1)}e_{π(1)} starting at y, |n_{π(2)}| bonds in the direction sign n_{π(2)}e_{π(2)} starting at y + δn_{π(1)}e_{π(1)}, and so on. We define G(y, x) as the family of contours generated by all such permuations. For a bond c and a point x ∈ B(c_−), let [x, x′] denote a contour which is obtained by a parallel transport of c to the point x."
Same page: "This definition has one disadvantage, it is not symmetric with respect to lattice Euclidean transformations. Preserving this symmetry is very important for the method; therefore it is necessary to modify the definition."
CMP 109 p. 253 (PDF 5), page image read: (0.4) "Ū(c) = M(U, c) = exp[ i Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} 1/|G(c_−, x)| Σ_{Γ′∈G(c_+,x′)} 1/|G(c_+, x′)| × (1/i) log U(Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c)) ] U(c)."
The Wilson action is (0.2) on p. 252: "A^ε(U) = Σ_{p∈T_ε} ε^{d−4}[1 − Re tr U(∂p)]" [V].

### 4.2 Set-up
Project conventions (SOURCES_T2_PI §1.1): fine lattice Z⁴, cell 0 is the centred block of side Λ = L^j around the origin, level-i points L^iZ⁴. Let 𝔊 be the hyperoctahedral group: maps g x = Px with P a signed permutation matrix, P e_μ = s_μ e_{τ(μ)}, τ a permutation, s_μ = ±1. g fixes the origin. Action on configurations: for every oriented bond ⟨x, x′⟩, (gU)(⟨gx, gx′⟩) := U(⟨x, x′⟩), with U(⟨x′, x⟩) = U(⟨x, x′⟩)^{−1}. A positive bond b = ⟨x, x + e_μ⟩ goes to a positive bond if s_μ = +1 ("kept"), and to the reverse of a positive bond if s_μ = −1 ("reversed"). Path products: U(b_1 ∪ … ∪ b_n) := U(b_1)⋯U(b_n), the convention of §3.

Facts [P]. (i) P maps L^iZ⁴ onto itself for every i, and maps the axis-parallel cube centred at y onto the cube centred at gy, with the same size. So g B^i(y) = B^i(gy). (ii) The Wilson action is a sum over unoriented plaquettes of 1 − Re tr U(∂p); Re tr is invariant under inversion and cyclic shifts, so A(gU) = A(U). (iii) g commutes with gauge transformations: g(U^u) = (gU)^{gu}, (gu)(gx) := u(x).

### 4.3 Covariance of (0.4)
Lemma P-4a (contour families) [P]. For every y and x ∈ B(y), g maps G(y, x) bijectively onto G(gy, gx), and |G(gy, gx)| = |G(y, x)|.
Proof. Write x − y = Σ n_μe_μ and S := {μ : n_μ ≠ 0}. Then gx − gy = P(x − y) = Σ n_μs_μe_{τ(μ)}, so the new integers are n′_{τ(μ)} = s_μn_μ and the new set is S′ = τ(S). The contour of G(y, x) for the ordering π of S has k-th segment "|n_{π(k)}| bonds in the direction sign(n_{π(k)})e_{π(k)}". Its image under g has k-th segment |n_{π(k)}| bonds in the direction sign(n_{π(k)})s_{π(k)}e_{τπ(k)} = sign(n′_{τπ(k)})e_{τπ(k)}, and |n′_{τπ(k)}| = |n_{π(k)}|. It starts at gy. So the image is the contour of G(gy, gx) for the ordering τ∘π of S′. The map π ↦ τ∘π is a bijection between the orderings of S and those of S′. ∎ (The bound on |n_μ| plays no role: |n′| = |n|.)

Lemma P-4b (one step) [P]. Let U be a configuration on which every loop of (0.4) has holonomy in the domain of the principal log (e.g. the small-field set of Lemma Z-1(c)). For every coarse bond c and every g ∈ 𝔊:
 Ū(gU)(gc) = Ū(U)(c) if g keeps c, and Ū(gU)(c̃) = Ū(U)(c)^{−1} if g reverses c, where c̃ is the positive coarse bond with c̃_− = gc_+, c̃_+ = gc_−.
In words: Ū is 𝔊-covariant as a function on oriented coarse bonds.
Proof. Kept c. In (0.4) for gU at gc, substitute x̃ = gx, Γ̃ = gΓ, Γ̃′ = gΓ′. By Fact (i) x ranges over B(c_−); by Lemma P-4a Γ, Γ′ range over G(c_−, x), G(c_+, x′) with the same counts; g maps the parallel transport [x, x′] of c to the parallel transport of gc to gx (g is linear). The holonomy of gU on the image loop equals the holonomy of U on the original loop, by the definition of gU. The factor (gU)(gc) = U(c). So both sides of (0.4) agree term by term.
Reversed c. Pull the sum for Ū(gU)(c̃) back by g. The point x̃ ∈ B(c̃_−) = gB(c_+) is gw with w ∈ B(c_+). x̃′ = x̃ + (c̃_+ − c̃_−) = g(w − (c_+ − c_−)) =: gw′, w′ ∈ B(c_−). The contours pull back to Γ_w ∈ G(c_+, w) and Γ″ ∈ G(c_−, w′); −c̃ pulls back to c traversed from c_− to c_+. Rename x := w′, x′ := w, Γ := Γ″, Γ′ := Γ_w. The pulled-back loop is ℓ_+ := Γ′ ∪ [x′, x] ∪ (−Γ) ∪ c, based at c_+, and the weights are the same product 1/(|G(c_−, x)||G(c_+, x′)|). With the path convention of §4.2 and ℓ_− := Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c):
 U(ℓ_−) = U(Γ)U([x, x′])U(Γ′)^{−1}U(c)^{−1},  U(ℓ_+) = U(Γ′)U([x, x′])^{−1}U(Γ)^{−1}U(c) = U(c)^{−1}U(ℓ_−)^{−1}U(c).
On the domain of the principal log, log(h^{−1}W^{−1}h) = −h^{−1}(log W)h. So the exponent for gU at c̃ is Ỹ = −U(c)^{−1}YU(c), with Y the exponent for U at c. The factor (gU)(c̃) = U(c)^{−1}. Hence
 Ū(gU)(c̃) = exp(−U(c)^{−1}YU(c))U(c)^{−1} = U(c)^{−1}e^{−Y} = (e^{Y}U(c))^{−1} = Ū(U)(c)^{−1}. ∎

Lemma P-4c (j steps) [P]. The j-fold iterate Ū^j is 𝔊-covariant in the same sense: Ū^j(gU) = g_cŪ^j(U), with g_c the action of g on level-j configurations.
Proof. By Fact (i) g maps each level-i lattice and its blocks to themselves, so Lemma P-4b applies at each level to the level-(i−1) configuration. Induction over i. ∎

Numerical check [numerical, new; scratch script /tmp/r026pi_code/refl.py, deleted after use, nothing written in the project]. d = 2, SU(2), L = 3, periodic 12 × 12 fine torus, random links e^{iΣa_kσ_k/2} with a_k ~ N(0, 0.3²). One step of (0.4) with the full permutation family, path convention of §4.2, scipy logm/expm. For the reflection x_0 ↦ −x_0 and the rotation (x_0, x_1) ↦ (−x_1, x_0), and both coarse directions, the identities of Lemma P-4b hold to ≤ 3.6·10^{−16} (two kept and two reversed cases). Control: with one contour per pair (first ordering only), the reflection identity still holds (reflections keep the axis order), and the rotation identity fails by 1.0·10^{−1} and 2.0·10^{−1}. So the test detects a non-symmetric contour family, and the permutation family of p. 252 is what makes the rotation covariance hold.

### 4.4 The linear operators, the cell weights, and the kernel R_0

Chart maps [P]. Let B be a fine left-chart field at U (U ↦ e^{iB}U). For a kept bond, (g(e^{iB}U))(gb) = e^{iB(b)}U(b). For a reversed bond b, with b̃ the positive bond with gb = −b̃: (g(e^{iB}U))(b̃) = U(b)^{−1}e^{−iB(b)} = e^{−iAd(U(b)^{−1})B(b)}U(b)^{−1}. So g(e^{iB}U) = e^{i𝒫_UB}(gU) exactly, with (𝒫_UB)(gb) = B(b) (kept) and (𝒫_UB)(b̃) = −Ad(U(b)^{−1})B(b) (reversed). 𝒫_U is linear and orthogonal (Ad is orthogonal on su(2)), and it is block diagonal: one 3 × 3 block per fine bond, mapping the bond b to the bond {gb} (unoriented). On sites, (𝒫_sλ)(gx) = λ(x). On coarse bonds, 𝒫^c_V is defined the same way at the coarse configuration V = Ū^j(U).

Lemma P-4d ((I3), operator form) [P]. On the domain of Lemma P-4b, for every g ∈ 𝔊:
 Δ(gU) = 𝒫_UΔ(U)𝒫_U^T,  D_k(gU)𝒫_s = 𝒫_UD_k(U),  Q̃(gU)𝒫_U = 𝒫^c_{Ū^j(U)}Q̃(U).
Hence Bord(gU) = 𝒫̂Bord(U)𝒫̂^T with 𝒫̂ := diag(𝒫_U, 𝒫^c) orthogonal, and G(gU) = 𝒫_sG(U)𝒫_s^T.
Proof. Δ: A(e^{i𝒫B}gU) = A(g(e^{iB}U)) = A(e^{iB}U) by Fact (ii); differentiate twice in B at 0. D_k: g(U^{e^{itλ}}) = (gU)^{e^{it𝒫_sλ}} by Fact (iii); differentiate in t at 0 in the chart; the anchors L^jZ⁴ are g-invariant, so the Dirichlet condition is kept. Q̃: Ū^j(e^{i𝒫B}gU) = Ū^j(g(e^{iB}U)) = g_cŪ^j(e^{iB}U) by Lemma P-4c; expand both sides to first order in B and use the coarse chart map. ∎
For the cyclic permutation σ of SOURCES_T2_PI (I3) (e_0 → e_1 → e_2 → e_0, e_3 fixed) every s_μ = +1, so no bond is reversed and 𝒫 is a permutation of bonds. For abelian U_θ = e^{iθσ_3}, gU_θ = U_{θ′} with θ′(gb) = θ(b) (kept) and θ′(b̃) = −θ(b) (reversed), because Ad(U(b)^{−1}) fixes σ_3.

Cell weights (P-6) [P]. SOURCES_T2_PI §3.1 assigns each coordinate to the cell "that contains its position". Bond midpoints of bonds that cross a face lie on the face, so this is ambiguous. The VERIFY fix (cell of the base point) is covariant under σ but not under reflections: a reflection along μ moves the base point of a μ-bond to its other end, which can lie in the next cell. Use instead midpoint weights. For a coordinate i (fine bond, site, or coarse multiplier) with position m(i) (bond midpoint, site, coarse-bond midpoint), put w_c(i) := 1 if m(i) is in the interior of the cube of cell c, ½ if m(i) lies on a face of that cube, 0 otherwise, and tr_cY := Σ_i w_c(i) tr Y_{ii} (tr over the colour block). With Λ odd and cells centred at ΛZ⁴, a fine-bond midpoint has one half-integer coordinate, so it lies on at most one face. Sites lie in the interior of one cell. A coarse-bond midpoint lies on one coarse face. So Σ_c w_c(i) = 1 for every i, w_{c+γ}(i + Λγ) = w_c(i), and w_{gc}(gi) = w_c(i) for g ∈ 𝔊 (g maps the cube of cell c to the cube of cell gc, interior to interior and faces to faces).
Every step of SOURCES_T2_PI §3–§5 holds with these weights:
- Lemma 3.2: the gauge conjugation 𝒰 is block diagonal per coordinate group, so the colour trace of each diagonal block is unchanged, and so is tr_c [P].
- Lemma 3.3: tr_0 now runs over cell 0 and its faces; the bound e^{−m′(|x|+|y|)} is unchanged up to a constant [P].
- Lemma 4.3 (magnetic translation): ρ_c(U) = ρ_0(τ_cU) uses only w_{c+γ}(i + Λγ) = w_c(i) [P].
- Lemma 5.3 and the per-cell average Γ̄: the c-average of ρ_c equals the per-period trace for any weights with Σ_c w_c = 1 [P].
- Covariance: tr_{gc}(𝒫̂Y𝒫̂^T) = tr_c(Y) for block-diagonal orthogonal 𝒫̂ mapping coordinate group i to group gi. With Lemma P-4d: ρ_{gc}(gU) = ρ_c(U) on the domain of Lemma P-4b [P].
For magnetically covariant operators, as at U_{φℓ}, tr_0 with any such weights equals the per-cell trace τ of SOURCES_R030_RESIDUE §3.2 [P: all cells carry the same diagonal blocks up to orthogonal conjugation].

Corollary P-4e (the form used by Theorem PI) [P]. At U = 1, with signs ς(x) = −1 if g reverses the link x and +1 otherwise,
 R_0(gx, gy)ς(x)ς(y) = R_0(x, y) for all g ∈ 𝔊.
Proof. g fixes cell 0, so ρ_0(gU_θ) = ρ_0(U_θ). Write gU_θ = U_{θ′} with θ′ as above and differentiate twice in θ at 0. ∎
For σ, ς ≡ 1, which is exactly the identity R_0(σx, σy) = R_0(x, y) used in Theorem PI (iii). For the full group this gives the reflection invariance that Lemma 5.4 (one-structure lemma) needed: Π̂_{τμ,τν}(Pp)s_μs_ν = Π̂_{μν}(p). So Lemma 5.4 is now [P] given (I1), (I2), and Corollary P-4e. (Lemma 5.4 is optional: no consumer uses π_Λ; R-029 does its own transversality argument for the true kernel, SOURCES_T2_V1 C9.)

Grade of P-4: [P] from the (0.4) and (0.2) images [V] and the path-product convention of Lemma Z-1(b). Grade of P-6: [P].

## 5. P-5: claim 1, and the interfaces of R-026

### 5.1 What the consumer uses
The only consumer of R-026 in Target 1 is KAPPA_BOUNDED Prop. 1.1 (l. 30–35), through L-009 (Theorem K). Its proof reads: "By (PI) and BETA_FP_H (1.1), 𝒞(Λ_j) − 𝒞(1) = lim[Fine(Λ_j; f) − Fine(1; f)]/(n_2f²) − lim[Γ_c(Λ_j; f) − Γ_c(1; f)]/(n_2f²)". SOURCES_T2_PI_VERIFY claim 21 CONFIRMED that this is the only use.
Put Φ_j(f) := τ log(D_k^TD_k) − ½τ log|Bord| at U_0^φ, φ = f/Λ², the per-cell density of SOURCES_R030_RESIDUE (3.3) and SOURCES_T2_G2 (4.1). Then:
(a) Φ_j(f) = Γ̄(U_{θ^{cf}_φ}) [P]. U_{θ^{cf}_φ} (Landau gauge) and U_0^φ (symmetric gauge) have the same plaquette angles, so they differ by an abelian gauge transformation (VERIFY §3.1 step 1). Γ̄ is gauge invariant (Lemma 3.2), equals ρ_0 at these fields (Lemma 4.3), and ρ_0 = τ(·) for magnetically covariant operators (§4.4). Also log|det Bord| = ½ log det Bord² gives the ¼ in (3.1).
(b) So S_j^{cf} of SOURCES_T2_PI §1.2 equals [f²]Φ_j/n_2 [P, units as in VERIFY §3.3].
(c) Φ_j = Fine − Γ_c at rational f/2π, 0 < |f| ≤ f_*, and the f² coefficients split as Φ_2 = b_F − b_c: Theorem Z-5 and Corollary Z-6 of SOURCES_R030_RESIDUE (CONFIRMED, VERIFY V23–V24), relative to SOURCES_T2_S123 Prop. 5.6, an input that R-028 already carries.
(d) At Λ = 1 (j = 0) every site is an anchor, so D_k is empty and log det(D_k^TD_k) = 0; Q̃ is the identity on links, so Bord = [[A, 1], [1, 0]] and |det Bord| = 1. So Φ_0 ≡ 0 and 𝒞(1) = 0 [P]. This is KAPPA's "at Λ = 1 the constraint is trivial".
So the consumer can read 𝒞(Λ_j) := [f²]Φ_j/n_2 and BETA_FP_H (1.1) as Theorem Z-5. Then Prop. 1.1 needs Theorem PI and R-030, and never needs the statement "Φ_j(f) is Balaban's log Z_Λ(V_f) up to a constant".

### 5.2 Claim 1 itself
Claim 1 (BETA_FP_H Fact 1.1 / Consequence 1.2, verified as [R]) is therefore not an input of R-026 in the use above. Its parts are proved anyway, apart from one:
- Fact 1.1(a): U_0^φ is a free critical point of the Wilson action. [P] (SOURCES_R030_RESIDUE §3.3, with the mixed-derivative correction of its VERIFY V17).
- Fact 1.1(b): Ū^j(U_0^φ) = V_f up to a coarse gauge. [P] (Lemma Z-1(f), VERIFY V11, independent Landau-gauge check).
- Consequence 1.2 (Prop. 2.1 exact at V_f): Theorem Z-5 [P relative to S123 Prop. 5.6].
- Not proved here: that U_0^φ is Balaban's constrained minimizer U(V_f) (a free critical point that obeys the constraint is a constrained critical point with J = 0; uniqueness among constrained critical points near it is CMP 102 territory). This matters only for the reading "Φ_j is Balaban's log Z_Λ(V_f)". The Route K chain does not use that reading (§5.1).

### 5.3 The interface with R-029
KAPPA's S_j is Σ_{i≤j}β_i(0). Its identification with the plane-wave coefficient S_j^{pw} of Γ at the fine wave (the object of Theorem PI) is row R-029's content: SOURCES_T2_V1 C9 (transversality and hypercubic form of the true kernel) and C11 (the fine-wave expansion point and the dropped J-term change w(p) only at O(p⁴); [R] to U3_VERIFY §6). Corollary 6.1 of SOURCES_T2_PI is an alternative route to C11, still [R] with [I] parts. Neither is an input of R-026. This file does not change R-029.

## 6. Exact statement, inputs, and proposed status

Theorem PI (L-249), fixed level. Fix j ≥ 1 and odd L ≥ 3; Λ = L^j. Let Γ be the functional SOURCES_T2_PI (1.1) built from the Wilson Hessian Δ, the Dirichlet-anchored ghost D_k and the left-chart linearization Q̃ of the j-fold iterate of CMP 109 (0.4); let Γ̄ be its per-cell density with the midpoint cell weights of §4.4. For the plane wave θ^{pw}_{a,p} = a δ_{μ2}cos(p x_1) put w(p) := lim_N ∂_a²(cell average of ρ_c)|_{a=0} and t(p) := Λ⁴(1 − cos p). For the constant field put Φ_j(f) := Γ̄(U_0^φ), φ = f/Λ². Then:
(i) w and t are real-analytic and even near p = 0 and vanish at p = 0; β^{pw}(p) := w(p)/t(p) extends to an even real-analytic function, and S_j^{pw} := β^{pw}(0) exists.
(ii) Φ_j is C² and even near f = 0; its f² coefficient is the second-order kernel R_0 of Γ̄ at U = 1 evaluated on the linear potential (SOURCES_T2_PI (4.3)), with no other term.
(iii) S_j^{pw} = [f²]Φ_j / n_2 = S_j^{cf} (n_2 = ½).
(iv) (Lemma 5.4) The per-cell kernel at U = 1 has the single O(p²) structure π_Λ(|p|²δ_{μν} − p_μp_ν), and S_j^{pw} = π_Λ/π_W, π_W = Λ⁴.
Proof: SOURCES_T2_PI §3–§5 with the local fixes of SOURCES_T2_PI_VERIFY §3.1 (contour through c_X/2 and beyond sup‖X(φ)‖; angle bound O(|φ|(Λ + r))) and §3.2 (uniform θ-derivative bounds by translation plus abelian gauge), the cell weights of §4.4, and the inputs below.

Inputs after this file.
1. (I1) Lemma P-1 [P], from Lemma Z-1(b), (d), (e) [P, verified, SOURCES_R030_RESIDUE_VERIFY V6, V8, V10] and SOURCES_T2_G2 Lemmas 1.2, 1.3, 3.1 [P, verified, T2_G2_VERIFY 1.2, 5.1, 2.4; Lemma 1.3's one [I] closed by Z-1(e), V14].
2. (I2) [P] (SOURCES_T2_PI_VERIFY §1.2–§1.3; Lemma Z-1(b)).
3. Analyticity of Q̃ near the identity: Lemma Z-1(c) [P, verified V7].
4. (I3), full hypercubic group: Lemmas P-4a–P-4d, Corollary P-4e [P], from CMP 109 (0.2), (0.3), (0.4) and the p. 252 contour family [V, page images read in this session].
5. Definitions shared with R-029 and R-030: (Avg) the level-j average is the j-fold iterate of CMP 109 (0.4); (Chart) the left chart, with path products U(b_1)⋯U(b_n); (Bkg) U_0^φ and the fine plane wave.
6. Standard facts: Bloch–Floquet decomposition, Paley–Wiener, holomorphic functional calculus, resolvent identity, Neumann series in a weighted twisted kernel algebra, dominated convergence, Cauchy estimates, Combes–Thomas.
No Balaban assertion beyond the printed definitions (0.2)–(0.4) enters. No [I] item remains in the proof of (i)–(iv).

Interfaces (not inputs of R-026). The consumer reading 𝒞(Λ_j) = [f²]Φ_j/n_2 and the split Φ_j = Fine − Γ_c are R-030 (Theorem Z-5, relative to S123 Prop. 5.6, which R-028 carries). The identification S_j = Σ_{i≤j}β_i(0) = S_j^{pw} is R-029 (C9, C11). Claim 1 in the "Balaban's log Z_Λ" reading is not used (§5).

Proposed ledger status of R-026 (not applied; this file is unverified):
"PROVED at fixed level relative to listed inputs [SOURCES_T2_PI + VERIFY; SOURCES_R026_PI]. L-249 (Theorem PI) (i)–(iv) at each j ≥ 1, odd L ≥ 3. (I1) proved for the composed fine matrix at every j (Lemma P-1, from Lemma Z-1 and T2_G2 Lemmas 1.2, 1.3, 3.1); (I2) [P]; (I3) proved for the full hypercubic group from CMP 109 (0.2)–(0.4) and the p. 252 contour family [V] (Lemmas P-4a–P-4d), with midpoint cell weights; analyticity of Q̃ = Lemma Z-1(c). Inputs: the definitions (Avg), (Chart), (Bkg) shared with R-029, R-030; standard facts. The consumer (KAPPA_BOUNDED Prop. 1.1) uses (PI) together with R-030 Theorem Z-5 (Φ_j = Fine − Γ_c) and R-029 (S_j = S_j^{pw}); the claim 'Φ_j = Balaban's log Z_Λ(V_f) + const' is not used. Correction: the earlier note '(I3) is [P] since round 5 (SOURCES_T2_I3 + VERIFY)' cited the S123 Peierls input, not PI's lattice-symmetry input; that input was [I] until SOURCES_R026_PI. No uniformity in j."
Grade change: "reduced [R, verified]" → "PROVED at fixed level relative to listed inputs" (pending verification). Target 1 gains no new input.

Suggested verifier targets, highest value first:
1. Lemma P-4b, reversed case: the pull-back of (0.4) at c̃, the identity U(ℓ_+) = U(c)^{−1}U(ℓ_−)^{−1}U(c), and that the path convention is the one under which (0.4) is gauge covariant.
2. §4.4 cell weights: that every step of SOURCES_T2_PI §3–§5 survives the change from base-point to midpoint assignment.
3. Lemma P-1(b): that SOURCES_T2_G2's Bord and Lemma 1.3 are the same matrix and the same statement as SOURCES_T2_PI's (I1), fibre by fibre.
4. §5.1(d) and the claim that KAPPA Prop. 1.1 never needs the "Balaban's log Z_Λ(V_f)" reading.

## 7. Grades

| claim | grade |
|---|---|
| Ledger R-026 "(I3) [P] via SOURCES_T2_I3" cites the S123 Peierls input, not PI's (I3) | CORRECTION (by inspection of SOURCES_T2_I3 title, plan, §9) |
| P-1 (a) ghost fibres ≥ (4Λ⁵)^{−1} | [P] |
| P-1 (b), (c) Bord fibres invertible, ‖B̂ord^{−1}‖ ≤ C_B, X̂ ≥ C_B^{−2}, every j, composed matrix | [P] relative to Z-1(b), (d), (e) and T2_G2 Lemmas 1.2, 1.3, 3.1 (all verified) |
| P-2 (I2) | [P] (unchanged) |
| P-3 analyticity of Q̃ in Lemmas 4.1, 5.3; second route to Lemma 4.1 via Z-2 | [P] relative to Z-1(c), Z-2 (verified) |
| CMP 109 pp. 252–253: (0.2), (0.3), contour family G(y, x), [x, x′], (0.4) | [V] page images |
| P-4a contour families are 𝔊-covariant | [P] |
| P-4b (0.4) is 𝔊-covariant on oriented coarse bonds (kept and reversed cases) | [P]; numerical check 3.6·10^{−16}, control 10^{−1} |
| P-4c j-step covariance | [P] |
| P-4d Δ, D_k, Q̃, Bord, G covariant under 𝔊 with orthogonal block-diagonal 𝒫 | [P] |
| P-6 midpoint cell weights; SOURCES_T2_PI §3–§5 unchanged with them | [P] |
| P-4e R_0(gx, gy)ς(x)ς(y) = R_0(x, y); Theorem PI (iii) and Lemma 5.4 | [P] |
| §5.1 (a), (b), (d): Φ_j = Γ̄ at the constant field; 𝒞(1) = 0 | [P] |
| §5.1 (c): Φ_j = Fine − Γ_c | [P] relative to S123 Prop. 5.6 (R-030, R-028 chain) |
| §5.2 Fact 1.1 (a), (b) | [P] (R-030 files) |
| §5.2 U_0^φ is Balaban's constrained minimizer | not proved; not used by Route K |
| §5.3 S_j = S_j^{pw} | R-029 (C9, C11); not an input of R-026 |
| Proposed R-026 status | PROVED at fixed level relative to listed inputs (pending verifier) |

## 8. Report

R-026 had one open input that the ledger reported as closed. Its note "(I3) [P] via SOURCES_T2_I3" cites the S123 Peierls input, not PI's lattice-symmetry input. I proved that symmetry for the full hypercubic group from the CMP 109 p. 252–253 images (contour family, (0.4); reversed bonds give Ū^{−1}). A d = 2 check holds to 4·10^{−16}. (I1) now holds for the composed matrix at every j, by Lemma Z-1 and SOURCES_T2_G2 Lemmas 1.2, 1.3, 3.1. Midpoint cell weights replace the base-point rule. Claim 1 is not used by the consumer. Proposed: R-026 PROVED at fixed level relative to listed inputs.

STATUS: COMPLETE
