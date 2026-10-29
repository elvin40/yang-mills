# SOURCES_R026_PI_VERIFY — adversarial verification of SOURCES_R026_PI (row R-026, (PI))

Date 2026-10-29. Verifier: Claude (Opus 5.5). Ids follow IDS.md. Labels P-1 … P-6, Lemmas P-4a–P-4e, Lemma Z-1, Theorem Z-5 are those of SOURCES_R026_PI and SOURCES_R030_RESIDUE.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were in no grep. No existing file was edited. PLAN.md was not touched. sync.sh was not run.

## Verdict

CONFIRMED with two corrections. The mathematics of SOURCES_R026_PI holds. I rederived Lemma P-1, Lemmas P-4a–P-4d (kept and reversed bonds), Corollary P-4e and the midpoint cell weights. I reproduced the d = 2 check in a new script, and I added a d = 3 check with a signed permutation. Neither correction changes a mathematical conclusion:
- C1 (citation scope). Two places carry the wrong grade but no wrong citation, and the file missed two places. paper/assembly.tex l. 174 has the wrong grade "(I3) [P]" but names no source file. TRUST_LEDGER l. 312 and paper/remains.tex l. 148 have the same error, and the file does not list them.
- C2 (claim 1). The claim "the consumer does not use claim 1" holds only after KAPPA Prop. 1.1 is read in a new way. KAPPA_BOUNDED l. 35 and SOURCES_T2_PI §1.2 still go through log Z_Λ(V_f), so the text has to change. The mathematics needs nothing new.
Safe status for R-026: PROVED at fixed level relative to listed inputs (§12).

## 0. What I read

- OPUS_QUEUE.md l. 1–15. SOURCES_R026_PI.md (all).
- TRUST_LEDGER.md l. 82 (row R-026), 85–86 (R-029, R-030), 179, 212, 228, 305–315.
- SOURCES_T2_PI.md l. 18–92, 93–180, 256–290. SOURCES_T2_PI_VERIFY.md §1.4–§1.5, §6, §10.
- SOURCES_T2_I3.md header, plan, l. 22–77, grep for symmetry words. SOURCES_T2_I3_VERIFY.md header. SOURCES_T2_S123.md (grep "I3").
- SOURCES_T2_G2.md l. 40–60, 92. SOURCES_T2_G2_VERIFY.md items 1.2, 2.4, 5.1.
- SOURCES_R030_RESIDUE.md §1 (Lemma Z-1 and its proof), Theorem Z-5, Corollary Z-6. SOURCES_R030_RESIDUE_VERIFY.md V6–V8, V10, V11, V14, V15, V17, V23, V24, V30.
- KAPPA_BOUNDED.md l. 15, 26–37. BETA_FP_H.md §0–§1. SOURCES_T2_V1.md C9, C11; SOURCES_T2_V1_VERIFY.md C9, C11.
- THEOREM2_PROOF_v4.md l. 425–435. paper/*.tex (grep "(I3)"). PLAN.md (grep "I3").
- CMP 109 pp. 252–253 (PDF 4–5). I rendered them with pdftoppm -r 150 into a new folder /tmp/r026v.46FQ and read the images. I deleted the folder after use.

## 1. The wrong (I3) citation in the ledger

Claim. The ledger note "(I3) is [P] since round 5 (SOURCES_T2_I3 + VERIFY)" cites the wrong input. SOURCES_T2_I3 proves the Peierls input of SOURCES_T2_S123. PI's (I3) is the lattice-symmetry input, which SOURCES_T2_PI_VERIFY §1.5 graded [I].

Check.
- SOURCES_T2_I3 l. 2: "the Peierls input (I3) at one step, with explicit f-dependence". Its plan (l. 13–20) and §9 cover analyticity in f, magnetic covariance and finite range of Q̃_f, D_f, Π. It does not treat axis permutations or reflections. A grep for "reflect", "rotation", "hypercub", "axis" and "lattice symmetry" finds nothing relevant in SOURCES_T2_I3 or its VERIFY. The word "permutation" appears only in the quote of the contour family (l. 34).
- SOURCES_T2_S123 l. 69 defines its (I3) as "Peierls structure of the fixed one-step vertices". PLAN l. 377–379 records that SOURCES_T2_I3 closed this item for S123 and R-028. paper/sources.tex l. 37 lists SOURCES_T2_I3 under "ledger R-028".
- SOURCES_T2_PI l. 77 defines PI's (I3) as "Lattice symmetry. For the axis permutation σ …" with the tag [I]. SOURCES_T2_PI_VERIFY §1.5 and grade 5: "(I3) axis permutation — CONFIRMED as [I]".
So the claim is CONFIRMED. Before SOURCES_R026_PI, PI's (I3) was [I], and the ledger reported it as [P].

Places where the error occurs (I checked each line):
- TRUST_LEDGER l. 82 (row R-026): "(I3) is [P] since round 5 (SOURCES_T2_I3 + VERIFY)". Wrong citation. Confirmed.
- THEOREM2_PROOF_v4 l. 431: "(I3) [P], SOURCES_T2_I3 + VERIFY". Wrong citation. Confirmed.
- paper/assembly.tex l. 174: "to H-207 (I1), H-208 (I2), (I3) [P]". The source column lists only BETA_FP_H, H_VERIFY and SOURCES_T2_PI + VERIFY. The line names no source file for (I3). So it has a wrong grade, not a wrong citation. Corrected.
- Not listed by the file: TRUST_LEDGER l. 312 ("(I3) of R-026: [I] → [P] (SOURCES_T2_I3 + VERIFY: 15 CONFIRMED, 2 CORRECTED)"), which is the same wrong citation. paper/remains.tex l. 148 ("(I3) [P]" for R-026) has the same wrong grade.
- Correct as they are: paper/assembly.tex l. 176 and paper/sources.tex l. 35–40, 448, 461 use SOURCES_T2_I3 for R-028 only.
Grade: CONFIRMED (the finding); CORRECTED (the list of places: assembly.tex l. 174 has a wrong grade, not a wrong citation; add TRUST_LEDGER l. 312 and paper/remains.tex l. 148).

## 2. Lemma P-1: (I1) for the composed matrix at every j

I checked that the matrix of SOURCES_T2_PI (1.1) is the same as the matrix of SOURCES_T2_G2 §1.2 (l. 40). Both are Bord = [[Δ + D_kD_k^T, Q̃^T], [Q̃, 0]], with D_k = Dι_k (anchors at the level-j cell centres) and Q̃ the linearized composed j-step average. SOURCES_T2_PI's fibre size 12Λ⁴ + 12 is 4·3·Λ⁴ fine link coordinates plus 4·3 coarse multipliers. The ghost fibre size 3(Λ⁴ − 1) counts the non-anchor sites. Both files use the same matrices.

(a) Ĝ(K) ≥ (4Λ⁵)^{−1}. SOURCES_T2_G2 Lemma 1.2 proves G ≥ (4Λ⁵)^{−1} on ℓ²(Z⁴) at any background (T2_G2_VERIFY 1.2, CONFIRMED). The proof is cell by cell, so it also holds in each Bloch fibre. The wave-packet argument of the file is a second correct route. CONFIRMED.

(b) Three inputs, each in the fibre.
- Q̂Q̂^† ≥ q_j = L^{−6j}: Lemma Z-1(d). H_j commutes with level-j translations, so the bound holds in each fibre. R030_VERIFY V8 rederived it. CONFIRMED.
- Â ≥ γ_j on ker Q̂(K): SOURCES_T2_G2 Lemma 1.3 (l. 56–57). Its proof is fibrewise. It uses Q̃Q̃^T ≥ q_j, Q̃D = D_cι_a^T, "Q̃c is a nonzero multiple of c", and Δ(1) ∝ d^Td. Z-1(b) proves the second input (V6). Z-1(e) proves the third input with Q̃c = Λc (V10). R030_VERIFY V14 confirms that all inputs of γ_j are [P]. γ_j is the minimum over the compact Brillouin zone. CONFIRMED.
- SOURCES_T2_G2 Lemma 3.1 is a statement about one matrix. It holds for Hermitian fibre matrices with ^T replaced by ^†. I reread the T2_G2_VERIFY 2.4 rederivation, and nothing in it uses real entries. CONFIRMED.
(c) B̂ord(K) is Hermitian with ‖B̂ord^{−1}‖ ≤ C_B, so X̂(K) = B̂ord(K)² ≥ C_B^{−2}. CONFIRMED.

So the two [I] items of claim 3 of SOURCES_T2_PI_VERIFY (the j = 1 identification and the chaining for j ≥ 2) are no longer needed. The constants depend on j, and Theorem PI does not need uniformity in j.
Grade P-1: CONFIRMED, [P] relative to Z-1(b), (d), (e) and T2_G2 Lemmas 1.2, 1.3, 3.1. All of these are verified.

## 3. (I2)

SOURCES_T2_PI_VERIFY grade 4 made the covariance [P], from the log-covariance of loops based at c_−. Z-1(b) (V6) proves the same identity. With the product convention U(b_1)⋯U(b_n), the loop Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c) has holonomy u(c_−)Wu(c_−)^{−1}. The factor U(c) becomes u(c_−)U(c)u(c_+)^{−1}. Lemma 3.2 needs only that the conjugating matrix is orthogonal and has one block per coordinate. This stays true with the midpoint weights of §8, because each weighted term is tr of a diagonal 3 × 3 block, and conjugation by an orthogonal block does not change it. Grade: CONFIRMED.

## 4. Analyticity of Q̃ (Lemma Z-1(c))

Z-1(c) gives analyticity of every entry of Q̃(e^{iÂ}) on {|Â_b| < r_j/2} and the bound (1.1). R030_VERIFY V7 CONFIRMED this, with the correction Lip_Q ∝ 1/r_j². The file states that correction correctly.
- Lemma 4.1. In symmetric gauge θ_b = (φ/2)(x ∧ e_μ). For links within R_j of cell 0 this is ≤ |φ|(Λ + 2R_j). Locality (Z-1(a)) means that an entry near cell 0 depends only on these links. So Z-1(c) applies for |φ| ≤ r_j/(4(Λ + 2R_j)). Δ and D_k are polynomials in the link entries. CONFIRMED.
- Lemma 5.3. The plane wave has link angles a cos(p x_1) with |cos| ≤ 1. Z-1(c) applies for |a| < r_j/2, uniformly in p (V30). CONFIRMED.
- The second route to Lemma 4.1 (Lemma Z-2 + T2_G2 Lemma 3.1 + Combes–Thomas) is correct, but it still needs the contour placement fix of SOURCES_T2_PI_VERIFY grade 10. Theorem PI does not use it. CONFIRMED as a remark.
Grade: CONFIRMED.

## 5. (I3) for the full hypercubic group

### 5.1 Page images [V]
CMP 109 p. 252 (PDF 4), read on the image. (0.2) reads "A^ε(U) = Σ_{p∈T_ε} ε^{d−4}[1 − Re tr U(∂p)]", with tr the normalized trace. (0.3) reads "B^k(y) = Δ(y) ∩ T^{(n−k)}_{L^{−k}δ}", and Δ(y) is a cube centred at y. The contour family text matches the quote in SOURCES_R026_PI §4.1 word for word ("|n_μ| ≤ L − 1/2", "generated by all such permuations", "[x, x′] denote a contour which is obtained by a parallel transport of c to the point x"). The same page says the earlier definition "is not symmetric with respect to lattice Euclidean transformations" and that the contour set "was too small to be lattice Euclidean symmetric, so we extend it".
CMP 109 p. 253 (PDF 5), read on the image. (0.4) matches the quote: an exponent Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} 1/|G(c_−,x)| Σ_{Γ′∈G(c_+,x′)} 1/|G(c_+,x′)| (1/i) log U(Γ ∪ [x,x′] ∪ (−Γ′) ∪ (−c)), multiplied on the right by U(c).
The page does not fix the order of the path product. The project fixes it by (Chart) and Z-1(b). Only the order U(b_1)⋯U(b_n) makes (0.4) gauge covariant, so this choice is forced.
Grade: CONFIRMED [V].

### 5.2 Lemma P-4a (contour families)
For g x = Px with P e_μ = s_μe_{τ(μ)}, the k-th segment of the contour for ordering π goes to |n_{π(k)}| bonds in direction sign(n_{π(k)})s_{π(k)}e_{τπ(k)} = sign(n′_{τπ(k)})e_{τπ(k)}. This is the contour of G(gy, gx) for the ordering τ∘π. The map π ↦ τ∘π is a bijection. CONFIRMED.

### 5.3 Lemma P-4b (one step; kept and reversed coarse bonds)
Kept bond. The substitution x ↦ gx, Γ ↦ gΓ maps the sum term by term, by Fact (i) and P-4a. CONFIRMED.
Reversed bond. I redid the pull-back. c̃ goes from gc_+ to gc_−. A point x̃ ∈ B(c̃_−) = gB(c_+) is gw with w ∈ B(c_+). Then x̃′ = g(w − (c_+ − c_−)) = gw′, with w′ ∈ B(c_−). The four pieces pull back as follows:
- Γ̃ pulls back to a contour in G(c_+, w);
- [x̃, x̃′] pulls back to the bond path from w to w′;
- −Γ̃′ pulls back to the reverse of a contour in G(c_−, w′);
- −c̃ pulls back to c, run from c_− to c_+.
Put x := w′ and x′ := w. The pulled-back loop is ℓ_+ = Γ′ ∪ [x′, x] ∪ (−Γ) ∪ c, based at c_+. It has the same weights and the same L^{−d}. Then
 U(ℓ_+) = U(Γ′)U([x, x′])^{−1}U(Γ)^{−1}U(c) = U(c)^{−1}[U(Γ)U([x, x′])U(Γ′)^{−1}U(c)^{−1}]^{−1}U(c) = U(c)^{−1}U(ℓ_−)^{−1}U(c).
On the principal-log domain, log(h^{−1}W^{−1}h) = −h^{−1}(log W)h. The exponent is linear in the logs, so Ỹ = −U(c)^{−1}YU(c). With (gU)(c̃) = U(c)^{−1}, we get Ū(gU)(c̃) = U(c)^{−1}e^{−Y} = Ū(U)(c)^{−1}. CONFIRMED: a reversed coarse bond gives the inverse average.

### 5.4 Lemmas P-4c, P-4d and Corollary P-4e
- P-4c. P maps L^iZ⁴ to itself and maps blocks to blocks (it fixes the origin). Lemma P-4b applies at each level. CONFIRMED.
- P-4d, chart map. For a reversed bond, U^{−1}e^{−iB} = e^{−iU^{−1}BU}U^{−1}. So 𝒫_U is orthogonal and has one block per bond. Δ follows from A(e^{i𝒫B}gU) = A(e^{iB}U), differentiated twice. D_k follows from g(U^u) = (gU)^{gu}, and the anchor set L^jZ⁴ is g-invariant. Q̃ follows from P-4c to first order in B. The Bord and G identities then follow. CONFIRMED.
- P-4e. g fixes cell 0, so ρ_0(gU_θ) = ρ_0(U_θ). gU_θ = U_{Sθ} with S a signed permutation of links. Differentiating twice gives R_0(gx, gy)ς(x)ς(y) = R_0(x, y). CONFIRMED. One wording point: the sign θ′(b̃) = −θ(b) comes directly from (gU)(b̃) = U(b)^{−1}, not from "Ad(U(b)^{−1}) fixes σ_3". The Ad fact is what makes 𝒫_U act on the σ_3 fluctuation by −1. The result is the same.
- Fourier form Π̂_{τμ,τν}(Pp)s_μs_ν = Π̂_{μν}(p). This needs midpoint positions in the Fourier phases, so that m(gx) = Pm(x) holds exactly. SOURCES_T2_PI Lemma 5.4 already uses midpoint positions. With g = −1 the identity gives Π̂(−p) = Π̂(p), so the O(|p|⁴) remainder of Lemma 5.4 holds. (SOURCES_T2_V1_VERIFY C9 found an O(|p|³) remainder for Balaban's Π′. That object is different and has half-bond phases. It does not affect this result.) CONFIRMED.
Grade (I3), full group: CONFIRMED, [P] from the (0.2)–(0.4) images and the path convention.

## 6. Numerics: the d = 2 check, the control, and a new d = 3 check

The file's script was deleted, so I wrote a new one: /tmp/r026v_code/chk.py. I deleted it after use and wrote nothing into the project. Set-up: d = 2, SU(2), L = 3, periodic 12 × 12 fine torus, random links e^{iΣa_kσ_k/2} with a_k ~ N(0, 0.3²), seed 1. One step of (0.4) with the full permutation family, path product U(b_1)⋯U(b_n), U(c) the product of the L fine links along c, scipy logm/expm. I tested coarse bonds at (0,0) and (3,6) in both directions. For a reversed bond I compared with Ū(U)(c)^{−1}.

| map | family | max deviation (4 cases: 2 kept, 2 reversed) |
|---|---|---|
| reflection x_0 ↦ −x_0 | full | 4.4·10^{−16} |
| reflection | one contour (first ordering) | 4.7·10^{−16} |
| rotation (x_0, x_1) ↦ (−x_1, x_0) | full | 1.2·10^{−15} |
| rotation | one contour | 8.7·10^{−2} to 2.4·10^{−1} |

New d = 3 check (/tmp/r026v_code/chk3.py, deleted): N = 6, L = 3, seed 2, signed permutation (x_0, x_1, x_2) ↦ (x_1, −x_2, x_0), coarse bonds at the origin in all three directions (two kept, one reversed). Full family: ≤ 4.0·10^{−16}. One contour: 8.3·10^{−2} to 2.1·10^{−1}.

So the identities of Lemma P-4b hold to rounding error. The rotation control fails at the 10^{−1} level, as the file says. Reflections keep the axis order, so they do not test the permutation family. The file says this correctly. My maximum (1.2·10^{−15}) is larger than the file's 3.6·10^{−16}. Both are rounding error, and the difference comes from the random links. Grade: CONFIRMED.

## 7. P-6: midpoint cell weights replace the base-point rule

- The base-point rule is not covariant under reflections. Take a face μ-bond ⟨x, x + e_μ⟩ with x_μ = (Λ − 1)/2. Its base point is in cell 0. Under x_μ ↦ −x_μ its image is the bond from −(Λ + 1)/2 to −(Λ − 1)/2, whose base point is in cell −e_μ. But g maps cell 0 to cell 0. So the base-point rule fails, as the file says. CONFIRMED.
- Geometry of the midpoint rule. Λ is odd, so faces of cell 0 lie at ±Λ/2, a half-integer. A site has only integer coordinates, so it is interior to one cell. A fine-bond midpoint has exactly one half-integer coordinate, so it lies on at most one face. A coarse-bond midpoint Λn + (Λ/2)e_μ lies on exactly one face. So Σ_c w_c(i) = 1, w_{c+γ}(i + Λγ) = w_c(i), and w_{gc}(gi) = w_c(i). CONFIRMED.
- Steps of SOURCES_T2_PI. Lemma 3.2 holds, because the weighted trace is a sum of traces of diagonal colour blocks. Lemma 3.3 holds: the weights live on cell 0 and its faces, so the bound changes by a constant only. Lemma 4.3 needs only translation covariance of the weights. Lemma 5.1 needs only gauge invariance of ρ_0. Lemma 5.3 and the c-average need only Σ_c w_c = 1. For magnetically covariant operators tr_0 = τ, because translation conjugates the diagonal blocks by orthogonal blocks. CONFIRMED.
- One place the file does not list: SOURCES_T2_PI §3.4 (l. 113) writes Π̂_{μν}(p) = Σ_{x∈cell 0}Σ_y e^{ip·(x−y)}R(x, y). With the new weights the outer sum must read Σ_x w_0(x)(·). R is translation invariant, so this is the same per-period sum, and no value changes. This is a text change only.
Grade: CONFIRMED (with the §3.4 text note).

## 8. Claim 1 and the consumer

Claim. KAPPA_BOUNDED Prop. 1.1 does not use claim 1 (log Z_Λ(V_f) = Γ(U_0^φ) + const). It uses Theorem Z-5 of R-030.

Check. KAPPA_BOUNDED l. 35 reads: "𝒞(1) = 0: at Λ = 1 the constraint is trivial and log Z_1 is a constant. By (PI) and BETA_FP_H (1.1), 𝒞(Λ_j) − 𝒞(1) = …". BETA_FP_H (1.1) is "log Z_Λ(V_f) = Fine(Λ; f) − Γ_c(Λ; f)". SOURCES_T2_PI §1.2 defines S_j^{cf} by Γ̄, and its last equality S_j^{cf} = 𝒞(Λ) uses §1.1, which is claim 1. So the consumer, as written, uses claim 1 twice: in T2_PI's 𝒞(Λ) and in BETA_FP_H (1.1).
The file's new reading removes both uses:
- define 𝒞(Λ_j) := [f²]Φ_j/n_2;
- §5.1(a)–(b): Φ_j(f) = Γ̄(U_{θ^{cf}_φ}). I checked that the two backgrounds have the same plaquette angles, so a gauge transformation on simply connected Z⁴ relates them. Lemma 3.2 holds for all u (T2_PI_VERIFY claim 7). The ¼ comes from log|det Bord| = ½ log det Bord². Ā = Λ⁴(1 − cos(f/Λ²)) = n_2f² + O(f⁴);
- Theorem Z-5 (V23) gives Φ_j = Fine − Γ_c at rational f/2π. Corollary Z-6 (V24) then splits the f² coefficients. Z-5 is relative to S123 Prop. 5.6, which R-028 already carries;
- §5.1(d): at Λ = 1, D_k is empty and Bord = [[A, I], [I, 0]], so |det Bord| = 1 and Φ_0 ≡ 0. This replaces "log Z_1 is constant". It also agrees with Z-5 at j = 0: there Γ_c(1; f) = Fine(1; f).
With this reading the chain is S_j^{pw} = S_j^{cf} = [f²]Φ_j/n_2 = [f²](Fine − Γ_c)/n_2. The chain never uses "Φ_j is Balaban's log Z_Λ". Consistency check (a) of KAPPA (LEMMA43 Cor. 3.1) does use the log Z meaning, but it is not load-bearing.
Grade: CORRECTED. The mathematics is right. But the claim holds only after KAPPA l. 35 and SOURCES_T2_PI §1.2 are changed to the Φ_j/Theorem Z-5 reading. Until then the written consumer still cites a statement that depends on claim 1.
§5.2 (Fact 1.1(a) [P] by R030 §3.3 with the V17 mixed-derivative correction; Fact 1.1(b) [P] by Z-1(f), V11; "U_0^φ is Balaban's constrained minimizer" not proved and not used): CONFIRMED as stated.

## 9. S_j = S_j^{pw} belongs to R-029

TRUST_LEDGER l. 85 (R-029) is V1, and it is proved relative to (G2), Balaban's inductive bounds and (Avg). SOURCES_T2_V1 C9 (transversality and hypercubic form, CORRECTED to an O(|p|³) remainder with the conclusion unchanged) and C11 ([R] to U3_VERIFY §6, CONFIRMED) identify the plane-wave measurement with Σβ_i(0). SOURCES_T2_PI_VERIFY grade 9 also puts the fine-kernel/coarse-kernel identification outside Theorem PI. So the identification is not an input of R-026. Grade: CONFIRMED.

## 10. The Theorem PI statement of SOURCES_R026_PI §6

I compared the statement with SOURCES_T2_PI Theorem PI (l. 54–58) and §5.3–§5.5. The conventions agree: θ = a cos(p x_1) gives t(p) = Λ⁴(1 − cos p), and n_2 = ½. Item (iv) is Lemma 5.4. It needs midpoint Fourier positions, which SOURCES_T2_PI already states. The input list is complete. I found no remaining [I] item among the inputs of (i)–(iv). The SOURCES_T2_PI_VERIFY [I]/[R] items 1, 3, 5, 17 are closed or not used. Items 19, 20, 22–24 belong to Corollary 6.1, §6.3 and (F_lat), which are not inputs of R-026. Grade: CONFIRMED.

## 11. Grades

| # | claim | grade |
|---|---|---|
| 1 | Ledger "(I3) [P] via SOURCES_T2_I3" cites the S123 Peierls input; PI's (I3) was [I] (T2_PI_VERIFY §1.5) | CONFIRMED |
| 2 | Same wrong citation at THEOREM2_PROOF_v4 l. 431 | CONFIRMED |
| 3 | Same wrong citation at paper/assembly.tex l. 174 | CORRECTED: wrong grade "(I3) [P]", no source named; add TRUST_LEDGER l. 312 and paper/remains.tex l. 148 |
| 4 | P-1(a) Ĝ(K) ≥ (4Λ⁵)^{−1} | CONFIRMED |
| 5 | P-1(b), (c) for the composed matrix at every j, from Z-1(b), (d), (e) and T2_G2 Lemmas 1.2, 1.3, 3.1 | CONFIRMED |
| 6 | (I2) | CONFIRMED |
| 7 | Analyticity of Q̃ (Z-1(c)) in Lemmas 4.1, 5.3; second route via Z-2 | CONFIRMED (second route needs the T2_PI_VERIFY grade-10 contour fix; not used) |
| 8 | CMP 109 (0.2), (0.3), contour family, (0.4) quotes | CONFIRMED [V] |
| 9 | P-4a contour families covariant | CONFIRMED |
| 10 | P-4b kept case; reversed coarse bond gives the inverse average | CONFIRMED (rederived) |
| 11 | P-4c, P-4d | CONFIRMED |
| 12 | P-4e and Lemma 5.4 from the full group | CONFIRMED (wording on the θ′ sign; midpoint Fourier positions required) |
| 13 | d = 2 check ≈ 4·10^{−16}; one-contour control fails by ≈ 10^{−1} | CONFIRMED (reproduced: ≤ 1.2·10^{−15}; control 8.7·10^{−2}–2.4·10^{−1}; new d = 3 check ≤ 4·10^{−16}, control ≈ 10^{−1}) |
| 14 | Midpoint cell weights replace the base-point rule; T2_PI §3–§5 unchanged | CONFIRMED (also read the §3.4 Π̂ cell sum with w_0) |
| 15 | Consumer KAPPA Prop. 1.1 does not use claim 1; uses Theorem Z-5 | CORRECTED: true after the change in reading (𝒞 := [f²]Φ_j/n_2; BETA_FP_H (1.1) → Theorem Z-5; 𝒞(1) = 0 by §5.1(d)); KAPPA l. 35 and T2_PI §1.2 as written still pass through log Z_Λ |
| 16 | §5.2 Fact 1.1(a), (b) [P]; constrained-minimizer reading not used | CONFIRMED |
| 17 | S_j = S_j^{pw} belongs to R-029 (C9, C11) | CONFIRMED |
| 18 | Theorem PI statement and input list; no [I] left | CONFIRMED |
| 19 | Proposed status PROVED at fixed level relative to listed inputs | CONFIRMED, with the two text changes of rows 3 and 15 |

Totals: 19 items. 17 CONFIRMED, 2 CORRECTED, 0 UNSUPPORTED.

## 12. Safe ledger status of R-026 and the exact Theorem PI statement

Safe status (to replace the current row R-026 text):
"PROVED at fixed level relative to listed inputs [SOURCES_T2_PI + VERIFY; SOURCES_R026_PI + VERIFY]. L-249 (Theorem PI) (i)–(iv) at each j ≥ 1, odd L ≥ 3. (I1) is proved for the composed fine matrix at every j (Lemma P-1, from Lemma Z-1(b), (d), (e) and SOURCES_T2_G2 Lemmas 1.2, 1.3, 3.1). (I2) is [P]. (I3) is proved for the full hypercubic group from CMP 109 (0.2)–(0.4) and the p. 252 contour family [V] (Lemmas P-4a–P-4e); a reversed coarse bond gives the inverse average. Cell weights are midpoint weights. Analyticity of Q̃ is Lemma Z-1(c). Inputs: the definitions (Avg), (Chart), (Bkg) shared with R-029 and R-030; standard facts. The consumer (KAPPA_BOUNDED Prop. 1.1) is read with 𝒞(Λ_j) := [f²]Φ_j/n_2. It uses (PI), R-030 Theorem Z-5 (Φ_j = Fine − Γ_c, relative to S123 Prop. 5.6, carried by R-028) and R-029 (S_j = S_j^{pw}). The claim 'Φ_j = Balaban's log Z_Λ(V_f) + const' is not used. Correction: the earlier note '(I3) is [P] since round 5 (SOURCES_T2_I3 + VERIFY)' cited the S123 Peierls input, not PI's lattice-symmetry input. PI's input was [I] until SOURCES_R026_PI. No uniformity in j."
Text changes that go with it (not applied here): TRUST_LEDGER l. 82 and l. 312; THEOREM2_PROOF_v4 l. 431; paper/assembly.tex l. 174; paper/remains.tex l. 21 and l. 148; KAPPA_BOUNDED l. 35 (the Φ_j/Z-5 reading and §5.1(d) for 𝒞(1) = 0).

Theorem PI (L-249), exact statement. Fix j ≥ 1 and odd L ≥ 3, and put Λ = L^j. Let Γ be the functional of SOURCES_T2_PI (1.1). It is built from the Wilson Hessian Δ (CMP 109 (0.2)), the ghost D_k with Dirichlet anchors at ΛZ⁴, and the left-chart linearization Q̃ of the j-fold iterate of CMP 109 (0.4). Let ρ_c be its local densities with the midpoint cell weights, and Γ̄ the per-cell average. For the plane wave θ^{pw}_{a,p}(x, μ) = a δ_{μ2}cos(p x_1) put w(p) := ∂_a²Γ̄(U_{θ^{pw}_{a,p}})|_{a=0} (a limit of cell averages) and t(p) := ∂_a²Ā = Λ⁴(1 − cos p). For the constant field put Φ_j(f) := Γ̄(U_0^φ), with φ = f/Λ². Then:
(i) w and t are real-analytic and even near p = 0, and both vanish at p = 0. β^{pw} := w/t extends to an even real-analytic function, and S_j^{pw} := β^{pw}(0) exists.
(ii) Φ_j is C² and even near f = 0. Its f² coefficient is the second-order kernel R_0 of Γ̄ at U = 1 evaluated on the linear potential (SOURCES_T2_PI (4.3)), with no other term.
(iii) S_j^{pw} = [f²]Φ_j/n_2 = S_j^{cf}, with n_2 = ½.
(iv) In midpoint Fourier positions, Π̂_{μν}(p) = π_Λ(|p|²δ_{μν} − p_μp_ν) + O(|p|⁴), and S_j^{pw} = π_Λ/π_W with π_W = Λ⁴.
The proof is SOURCES_T2_PI §3–§5 with the fixes of SOURCES_T2_PI_VERIFY §3.1–§3.2 and the inputs of SOURCES_R026_PI §6.

## 13. Report

SOURCES_R026_PI holds, with 17 CONFIRMED, 2 CORRECTED and 0 UNSUPPORTED. The ledger's "(I3) [P] via SOURCES_T2_I3" cites the S123 Peierls input. The same error is at TRUST_LEDGER l. 312, THEOREM2_PROOF_v4 l. 431, and as a grade only at assembly.tex l. 174 and remains.tex l. 148. I rederived Lemma P-1 and the full hypercubic covariance of (0.4), including that a reversed bond gives the inverse average. I reproduced the d = 2 check (≤ 1.2·10^{−15}, control ≈ 10^{−1}) and added a d = 3 check. The midpoint weights hold. "The consumer does not use claim 1" holds only after KAPPA l. 35 is changed to the reading via Theorem Z-5. Safe status: PROVED at fixed level relative to listed inputs.
