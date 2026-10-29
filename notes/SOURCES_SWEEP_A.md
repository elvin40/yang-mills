# SOURCES_SWEEP_A — class (a) items S-78, S-77, S-79 of OPEN_ITEMS_SWEEP (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5). Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were excluded from every grep. Ids follow IDS.md. No existing file was edited. PLAN.md was not changed. sync.sh was not run. Per the runner's override, the S-78 verification is §1 of this file, not a separate H2_CERTIFY_P4_VERIFY.md.

Read: OPUS_QUEUE.md l. 1–15; OPEN_ITEMS_SWEEP.md (§1 rows S-77–S-79, §2); TRUST_LEDGER.md rows R-025, R-026; H2_CERTIFY_P4.md; H1_ANALYTIC.md (Lemma S, l. 10–31); H1_ANALYTIC_VERIFY.md (V1, l. 13–14, 74–75); H1_ANALYTIC_VERIFY2.md; H2_CERTIFY_L13.md §2.1; H2_LARGE_L.md §1–§2; B2_TWOSTEP.md §1–§2; U3_AW.md (l. 25, 55–70); UMK_BETA1.md l. 7–20; R2_VERIFY.md (a); SOURCES_T2_V1_VERIFY.md §3.2–§3.3; lean/YmLean/Divergence.lean; lean/README.md (Divergence entry); lean/VERIFY_Envelope.md §2; numerics/umk_beta1.py l. 69–143 (path_arrays, avg_profile); numerics/h2_scan.py l. 35–49 (qsym); KAPPA_BOUNDED.md §1–§2.1; THEOREM2_PROOF_v4.md §2.2, §3.4, §4.1, §6; SOURCES_T2_PI.md §8.3 and SOURCES_T2_PI_VERIFY.md items 18, 21, 27.

Page images: CMP 109 (balaban/1987_cmp109_rg_approach_I.pdf), PDF pp. 4–7 = printed pp. 252–255, rendered with pdftoppm -r 150 into a fresh /tmp folder, read as images, folder deleted afterwards.

Compute: one Mac script in /tmp (< 1 min total; deleted). It loads the cached order-0 profiles (numerics/results/h2_prof_L{3,5,7,9}.npz, numerics/h1cert_prof_L{11,13}.npz), evaluates identity (D) in position space, and evaluates (P4) through h2_scan.qsym at 4 random K (rng seed 11).

Grades: [V] read on the page image; [P] proved or checked by hand here; [P-sketch]; [I] reading not settled. Verifier items: CONFIRMED / CORRECTED / UNSUPPORTED.

## 1. S-78 — verify H2_CERTIFY_P4.md (premise P4 of R-025)

Question (OPEN_ITEMS_SWEEP §2 item 1). Verify H2_CERTIFY_P4.md as written. Is every step of the P4 proof correct? Does it use only identity (D) of Lean P4_divergence plus the Fourier step? Does L-264 (Lemma S) enter as H1_ANALYTIC_VERIFY V1 states?

Answer. Yes to all three. Every step is correct. The proof uses Step 1 (the path structure of the profile) as its input, identity (D) (formalized as YmLean.P4_divergence), and the Fourier step. It uses no lattice symmetry and no umklapp sum. Lemma S enters as V1 states: it uses the path form of P4 Step 1, not (D) and not the conclusion of P4. One attribution note on C1 (S_55 = 0 does not need P4); no step changes.

### 1.1 Per-step grades

| step | claim of H2_CERTIFY_P4 | check done here | grade |
|---|---|---|---|
| §1 | E_q(k_l)k̂_l = K̂ for every K ∈ R⁴, odd L, l; φ_l = 1 | follows from Steps 1–4 below | CONFIRMED |
| Step 1 | F = S0 + ind; ind = χ(straight 0 → Le_μ); S0 = Σ_d Σ_{i,j} w_d χ(C(d,i,j)), w_d = L^{−4}n_d^{−2}, C = Γ1_i ∘ seg ∘ (−τ_{Le_μ}Γ1_j) ∘ (−straight) | read umk_beta1.py l. 69–81: path_arrays enumerates permutations of the nonzero axes of d; a forward step records its start site, a backward step records z − e after the decrement, sign sg; this is χ_Γ. l. 101–103: s2 = (s1 + Le_μ) reversed, g2 = −g1 reversed, so χ(s2_j) = −τ_{Le_μ}χ(Γ1_j); seg = d + t e_μ, t = 0..L−1, sign +1; w = 1/(L⁴n²). l. 112–117: the four parts carry the common weight w per pair (i, j); parts 1 and 3 sum over the index they do not use. l. 115: reversed straight with sign −1. l. 127: ind = 1 on the straight links. l. 129: "0" = S0 + ind. d runs over {−h..h}⁴ (centred block). d = 0 gives an empty Γ1 (a valid path 0 → 0). | CONFIRMED [P, code reading] |
| Step 2 | div χ_Γ = δ_b − δ_a for a path a → b; 0 for a loop | Lean: step_divergence, path_divergence, loop_divergence (Divergence.lean); I also checked the one-step case by hand for both step signs | CONFIRMED |
| Step 3 (D) | div F^μ = δ_{Le_μ} − δ_0; the weights do not enter | Lean P4_divergence: hypotheses p₁: 0 → dd, p₂: dd → dd + Le_μ, p₃: dd + Le_μ → Le_μ, p₄: Le_μ → 0, any weights, plus straight 0 → Le_μ. These match Step 1 term by term: p₁ = Γ1_i, p₂ = seg, p₃ = s2_j, p₄ = the backward-step path whose χ is −χ(straight). The Lean sites are Z^d with no wrap; the code array (μ-axis length 2L, other axes L) holds every link of every loop, so no wrap occurs there either. | CONFIRMED |
| Step 4 (Fourier) | [E_q(k)k̂]_μ = Σ_y e^{ik·y}(div F^μ)(y) = e^{iLk_μ} − 1; at k = k_l this is K̂_μ | by hand: F has finite support, so the shift z = y − e_ν is exact; Lk_{l,μ} = K_μ + 2πl_μ. Not in Lean (lean/README.md says so). | CONFIRMED [P] |
| code-convention check | qsym = Σ_z F(z)e^{ik_l·z}, z = n − h; the 2L fold is exact; colour factor 1 | read h2_scan.py l. 35–49: phase e^{iKf(n−h)} on the full 2L axis before the fold; ifftn·L⁴ gives e^{+2πil·n/L}, and lph = e^{−2πil·(h,h,h,h)/L}; e^{2πil(n+L)/L} = e^{2πil·n/L}, so the fold is exact. umk_beta1.py l. 136–142: the "0" key has one matrix I3, SVD basis ±I3/√3, coefficient ±√3; the product is the scalar profile. | CONFIRMED [P, code reading] |
| C1 | β = σ; S_{1:4,5} = σK̂; S_55 = 0 | β = σ is immediate from φ_l = 1. S_{1:4,5}: with A_l^{−1}k̂_l = k̂_l/|k̂_l|² (Δk̂ = 0, aux row k̂^†), the entry is ±s²Σ_lE_lk̂_l/|k̂_l|² = ±σK̂ by P4; the overall sign depends on the border sign convention and does not enter σ/|β|². S_55 = 1 − L^{−4}Σ_l k̂_l^†A_l^{−1}k̂_l = 0 uses Δk̂ = 0 only, not P4. | CONFIRMED (note: S_55 = 0 does not depend on P4) |
| C2 | (2.1) holds at every K ≠ 0 | P4 holds for every K, so the gauge reduction of H2_CERTIFY_L13 §2.1 holds at every K ≠ 0 | CONFIRMED |
| C3 | β = σ can replace bsum in h1cert_cell.py; optional; not applied | statement only; I did not open h1cert_cell.py | CONFIRMED as a statement (not applied, as the file says) |
| C4 | the lemma is about the exact operator; the float profile still needs P1′ | correct scope | CONFIRMED |
| §4 numerics | (D) ≤ 8.2e−15 (L = 3, 5); (P4) ≤ 2.2e−14 relative | reproduced: (D) max deviation 5.1e−15 (L = 3), 8.2e−15 (L = 5), the same per-μ values as the file; extended here to L = 7: 9.3e−15, L = 9: 2.2e−13, L = 11: 2.3e−13, L = 13: 6.5e−14. (P4) at 4 random K, max over all L⁴ blocks, relative to |K̂|: ≤ 5.8e−15 (L = 3), 1.5e−14 (5), 1.8e−14 (7), 2.2e−13 (9), 2.2e−13 (11), 1.2e−13 (13). max |Im F| = 0 at every L. | CONFIRMED; extended to L = 7–13 [measured] |
| §5 ledger | R1 (profile = straight + loops) read from code, not from Balaban | true for that file. R1 is now matched to CMP 109 (0.4) on the page image in §2.1 of this file. | CONFIRMED |

### 1.2 "Only identity (D) plus the Fourier step"

The logical chain is Step 1 → (D) → Fourier. Step 1 is not a lemma. It is the shape of the input: P4_divergence takes "straight path + weighted loops of the four-piece form" as its hypothesis. Everything after Step 1 is (D) (Lean) and the four-line Fourier computation (hand). No hypercubic symmetry, no umklapp sum, and no property of the weights w_d enter. [P]

### 1.3 How L-264 (Lemma S) enters

H1_ANALYTIC_VERIFY V1 (l. 14) says: Lemma S is derived from "the F^μ path form of P4 Step 1", and V1 relied on numerics for signs and index order. H1_ANALYTIC l. 31 (proof of Lemma S) cites only "H2_CERTIFY_P4 Step 1". The certificate uses the conclusion of P4 (β = σ) separately, in the split (1.1) (H1_ANALYTIC l. 10, l. 14). So L-264 depends on Step 1 (R1), not on (D) or on the P4 conclusion. This matches V1. H1_ANALYTIC_VERIFY2 §6 later checked the Step 1 sign and index conventions by hand from umk_beta1.py; that closes V1's reliance on numerics.

Consistency check [P]. Lemma S gives E_q(k_l) = diag(S_L(k_{l,μ})A(k_l)) − K̂γ̄(k_l)^T. Apply Step 4 to each path Γ1_i (0 → d): χ̂_{Γ1}(k)·k̂ = e^{ik·d} − 1. Average over d and orders: γ̄^Tk̂ = A − 1. Also S_L(k_μ)k̂_μ = e^{iLk_μ} − 1 = K̂_μ at k = k_l. So (E_qk̂)_μ = AK̂_μ − K̂_μ(A − 1) = K̂_μ. Lemma S and P4 agree exactly.

### 1.4 Verdict and proposed status

Verdict: 12 CONFIRMED (one with an attribution note), 0 CORRECTED, 0 UNSUPPORTED. P4 holds for the exact order-0 operator at every K, every odd L, every l.

Proposed ledger text (R-025, premise P4): "P4 (gauge covariance of the order-0 averaging symbol, φ_l = 1): PROVED and verified (H2_CERTIFY_P4; SOURCES_SWEEP_A §1: all steps CONFIRMED; (D) in Lean, YmLean.P4_divergence; Fourier step by hand; numerics extended to L = 13). The float-versus-exact profile gap stays with P1′."

## 2. S-77 — second reader for the (0.4) reading and the ghost-domain gauge choice

Question (OPEN_ITEMS_SWEEP §2). Second reader for the reading of Balaban (0.4) and the ghost-domain gauge choice (H1_ANALYTIC_VERIFY2 §9).

Answer. (a) The (0.4) reading is correct on every point that VERIFY2 §9 lists: straight segment from x, average over axis orders, centred block, sign of the return path. A further finding: at the trivial background the linearized (0.4) and the linearized (0.12) are the same operator, so the choice between the two printed averages does not change H_j(K). (b) The ghost domain (gauge functions equal to 1 on the coarse sites) is Balaban's residual group, printed on pp. 254–255. The gauge-fixing function is not Balaban's: Balaban uses the averaged axial term (0.14), the project uses a Feynman-type term on the same domain. This choice is a convention of the proof route, not a reading of Balaban. It selects the minimum-norm representative of each residual gauge orbit, so ρ_1 in the project's gauge is at most ρ_1 in any other gauge on the same domain.

### 2.1 Balaban (0.4), CMP 109 pp. 252–253 (PDF 4–5)

Printed text [V, page images]:
- p. 252 (0.3): B^k(y) = Δ(y) ∩ T, "[Δ(y) is a continuous space cube with a center at y and with the size δ]". Blocks are centred at the coarse site. Text layer l. 177–180.
- p. 252: "For a point x ∈ B(y) we take a family G(y, x) of shortest contours with the initial point at y, and the final point at x. If x − y = Σ δn_μe_μ (… |n_μ| ≤ L−1/2 …) … take a permutation {π(1), π(2), …} of indices μ with nonzero numbers n_μ, next take |n_{π(1)}| bonds in the direction sign n_{π(1)}e_{π(1)} starting at y, … We define G(y, x) as the family of contours generated by all such permutations." Text layer l. 182–192.
- p. 252: "For a bond c and a point x ∈ B(c_−), let [x, x′] denote a contour which is obtained by a parallel transport of c to the point x." Text layer l. 193.
- p. 253 (0.4): Ū(c) = M(U, c) = exp[i Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} |G(c_−,x)|^{−1} Σ_{Γ′∈G(c_+,x′)} |G(c_+,x′)|^{−1} (1/i) log U(Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c))] U(c). Text layer l. 210–217 (OCR garbled; the image is clear).

Comparison with the reading of VERIFY2 §2/§9 and of umk_beta1.avg_profile:

| element of the reading | printed | code (umk_beta1.py) | grade |
|---|---|---|---|
| centred block, offsets |n_μ| ≤ (L − 1)/2 | (0.3) and the G(y, x) paragraph ("L−1/2" in print; the only sense consistent with a centred block of L sites is (L − 1)/2) | d ∈ {−h..h}⁴, h = (L − 1)/2 (l. 100) | [V] |
| contours: one staircase per permutation of the nonzero axes, uniform weight | p. 252; weights 1/|G| in (0.4) | path_arrays permutes the nonzero axes only; w = 1/(L⁴n²) | [V] |
| independent double average over Γ and Γ′ | two separate sums with weights |G(c_−,x)|^{−1}, |G(c_+,x′)|^{−1} | n² pairs (i, j), common weight w | [V] |
| straight segment from x | [x, x′] = parallel transport of c to x, so x′ = x + (c_+ − c_−) = x + Le_μ | seg = d + t e_μ, t = 0..L−1 | [V] |
| return path −Γ′ with Γ′ ∈ G(c_+, x′) | (0.4) | s2 = (s1 + Le_μ) reversed, signs negated | [V]; "G(c_+, x′) = τ_{Le_μ}G(c_−, x)" follows from the definition of G [P] |
| closing −c and outer factor U(c) | (0.4) | reversed straight with sign −1 (part 4) and ind (l. 127) | [V] |
| sum over x with weight L^{−d} | (0.4) | w contains L^{−4} | [V] |

Linearization [P]. Put U = e^{iA} near 1. For a contour Γ, (1/i) log U(Γ) = Σ_{b∈Γ} ±A(b) + O(A²) by BCH, with sign −1 for a link run backward (U(x′, x) = U(x, x′)^{−1}). The outer exp(i·)U(c) adds A along the straight c at first order. So the order-0 coarse field is B̄(c) = A(c) + L^{−4} Σ_x avg_{Γ,Γ′}[A(Γ) + A([x, x′]) − A(Γ′) − A(c)]. This is "ind + S0" of H2_CERTIFY_P4 Step 1, with the same signs. The ordering of non-commuting factors enters only at O(A²), which the order-0 profile does not see.

New finding: (0.4) and (0.12) agree at order 0 [P]. (0.12) (p. 254, image) replaces the double average of loop logs by log[U(c_−, x) U([x, x′]) U(x′, c_+) U(−c)], with U(y, x) = M({U(Γ)}_{Γ∈G(y,x)}) from (0.11). By (0.8), (1/i) log M({e^{iA_j}}) = (1/n)ΣA_j + higher order. By (0.5), U(x′, c_+) = U(c_+, x′)^{−1} at first order [I: the symbol U(x′, c_+) is not defined on the page; inverse is the natural reading, and (0.5) makes the two readings agree]. So the linear part of (0.12) is again avg A(Γ) + A([x, x′]) − avg A(Γ′) − A(c), plus A(c). The order-0 profile F, hence E_q, H_j(K), and ρ_1, are the same for both averages. Balaban states "both definitions are equally good for our purposes" (p. 254, [V]). So the R-025 certificate does not depend on which of the two printed averages one takes.

What is not covered. The reading that U(c) for a coarse bond c means the ordered product of the L fine links on the straight segment c_− → c_+ is implicit on p. 252 (c is "parallel transported" as a contour) [V for the transport sentence; P that c is the straight fine contour, the only shortest contour between two coarse sites on one axis].

### 2.2 Ghost domain and gauge choice, CMP 109 pp. 254–255 (PDF 6–7)

Printed text [V, page images]:
- p. 254: "Even with these restrictions the underintegral expression in (0.13) is still invariant with respect to the gauge transformations u satisfying u(y) = 1 for y ∈ T^{(1)}. We have to fix a gauge in order to remove this invariance …" Text layer l. 289–291.
- p. 255: "… apply the gauge transformation U → U^{u^{−1}} with u(y) = 1 for y ∈ T^{(1)}. By the gauge invariance with respect to such transformations the integrand does not depend on u and the integral over u is equal to 1." Then (0.16)–(0.17).
- p. 255 (0.19): the (k + 1)-st step uses the same construction with y ∈ T^{(k+1)}.
- Gauge-fixing function: (0.14), exp[−(1/2α)|U(y, x) − 1|²] = exp[−(1/α)(1 − Re tr U(y, x))], with U(y, x) the averaged contour variable (0.11); in (0.17), (0.19) the term is (1/g_k²)Σ_{y∈T^{(k+1)}} Σ_{x∈B(y), x≠y}[1 − Re tr U(y, x)].

(i) Ghost domain. The project's ghost domain is "λ = 0 on the anchors", anchors = block centres y_m = h(1,1,1,1) + Lm in array coordinates (UMK_BETA1 l. 7, l. 12), which are the coarse sites for odd L. Per step, the domain is λ vanishing on the level-(j+1) sites (U3_REPAIRS_VERIFY l. 44). This is the linearization of "u(y) = 1 for y ∈ T^{(k+1)}". CONFIRMED [V]. It agrees with SOURCES_T2_V1_VERIFY §3.3 and R2_VERIFY (a), which reached the same match from the same pages; this is an independent reading of the images.

(ii) Gauge-fixing function. Balaban fixes the residual gauge with the averaged axial term (0.14). The project's H_j uses a Feynman-type term D_rD_r^† on the same domain (UMK_BETA1 l. 20; VERIFY2 §2: the minimizer has fine divergence vanishing off the coarse sites). The two choices give different minimizer maps H_j(K). So the project's H_j is not Balaban's axial-gauge minimizer. This is not an error, for the two reasons below. [P]

(iii) Why the choice is a convention and not a reading [P]. Fix a coarse field b. The constrained minimizers of the order-0 action form one orbit B + D_rλ, λ in the ghost domain. Reason: the action is invariant (Δ_{j−1}k̂ = 0, H2_LARGE_L §1), and the constraint is invariant, because by (D) of §1 the linearized average of a fine gradient Dλ is the coarse gradient of λ restricted to coarse sites, which is 0 when λ vanishes there. The Feynman-type term picks the element with D_r^†B = 0, which is the orthogonal projection of the orbit away from range(D_r). So for any other gauge on the same domain (including Balaban's axial one), B_other = B_ours + D_rλ with B_ours ⊥ D_rλ, and ‖H_other b‖² = ‖H_ours b‖² + ‖D_rλ‖² ≥ ‖H_ours b‖². Hence ρ_1(ours) ≤ ρ_1(other) at every K. The certified ρ_1 is the smallest one-step ρ_1 over all gauges on this ghost domain.
The downstream objects do not depend on the choice: the coarse kernel Δ_j(f) and its symbols σ_j^{(m)} are independent of the gauge fixing (U3_AW l. 55, l. 70). Only the split of recursion (1.1) of U3_AW/B2_TWOSTEP into 𝒜_jσ + g_j depends on it (U3_AW l. 70). (B2) needs that recursion to be exact with the H that is certified. U3_AW and B2_TWOSTEP state it with the project's gauge-fixed H (B2_TWOSTEP l. 10; exactness cited there to R23_VERIFY §5, which I did not reread). So the certificate and its consumer use the same gauge.

Not covered. (1) I did not reread R23_VERIFY §5 (exactness of (1.1) with this H). (2) The minimality argument covers the one-step map only. The two-step product (⊕H_{j−1})H_j in ρ_2 is not claimed to be minimal; the certificate bounds ρ_2 ≤ sup ρ_1² (rho2_le, Lean) in the project's gauge, which is the gauge of the consumer.

### 2.3 Verdict and proposed status

- (0.4) reading: CONFIRMED [V] on all four points of VERIFY2 §9; linearization [P]; (0.4) = (0.12) at order 0 [P, with one [I] on the symbol U(x′, c_+) that does not change the linear part].
- Ghost domain: CONFIRMED [V].
- Gauge-fixing function: differs from Balaban's (axial (0.14) versus Feynman-type); CORRECTED in description: it is a convention of the proof route, chosen consistently with the consumer, and it minimizes ρ_1 among gauges on the same domain [P].
- The proof-assistant part of S-77 (H2Box*.lean) is outside this file and stays open.

Proposed ledger text (R-025 residue): "Single-sourced residue reduced: the reading of Balaban (0.4) (centred block, axis-order contour family, straight segment [x, x′], return −Γ′, −c) has a second reader on CMP 109 pp. 252–253 [V], and the order-0 profile is the same for (0.4) and (0.12) [P]; the ghost domain u = 1 on T^{(k+1)} is read on pp. 254–255 [V]; the Feynman-type gauge-fixing function is a convention (not Balaban's axial (0.14)); it gives the minimum-norm one-step minimizer and is the gauge of the consumer recursion (SOURCES_SWEEP_A §2). Remaining: no proof assistant for the certificate (H2Box*.lean in progress); arb interval arithmetic trusted."

## 3. S-79 — is (1.1) needed at L = 13?

Question (OPEN_ITEMS_SWEEP §2). Is (1.1) needed at L = 13? If yes, evaluate it.

What (1.1) is. Ledger R-026 says "(1.1) at L = 3 not evaluated". The (1.1) meant is KAPPA_BOUNDED (1.1), the symbol integral d_j := −(1/(2n_2)) ∫_0^1 dt ∫_BZ tr[b_{t,2}δσ_j^{(0)} + b_{t,1}δσ_j^{(1)} + b_{t,0}δσ_j^{(2)}] (also THEOREM2_PROOF_v4 l. 142). SOURCES_T2_PI §8.3 (l. 251, l. 288, l. 290) proposes its L = 3 evaluation as "cheap test (1)": an independent check of the prediction d_1 = c log 3 − β_1(0) = −0.256 that Prop. 1.1 makes. SOURCES_T2_PI_VERIFY item 27 confirms the status: not evaluated, because no d = 4 f-symbol code exists. (The (1.1) of SOURCES_T2_PI itself is the functional Γ; it is evaluated by the existing codes and is not the open item.)

Answer. No. (1.1) is not needed at L = 13, or at any L. Not evaluated.

Evidence [P, from the project files]:
1. Theorem K uses d_j only through an upper bound. THEOREM2_PROOF_v4 §4.1 (l. 167–171): Prop. 1.1 gives S_j = c j log L − d_j; Prop. 2.2 gives |d_j| ≤ κ_* uniformly in j from (E0), (E1), (B2). The section ends "Constants are existential; κ_* is not evaluated." No step needs a value of d_j.
2. The consumer needs only some finite R. The window bound (5.1) has R = κ_* (§4.1). Lemma D″ uses R through B′ = 5b/4 + 2R, D′ = 2R, and the order of constants of §6 (l. 295): "Fix L (odd, > 11), then R from Route K or B, then b = c log L, then γ ≤ … with γ^{−2} ≥ c_sw·2R." γ is chosen after R, so every finite R works. The Lean form (YmLean.lemma_DDoublePrime) takes R as a parameter. No numerical threshold on R appears.
3. The L = 3 value was a consistency test of Prop. 1.1 and (PI), not an input. THEOREM2_PROOF_v4 l. 144 says the L = 3 check "checks the definition of d_j through S_j; it does not evaluate (1.1) from the symbols independently." Its absence weakens one cross-check; it removes no step.
4. K-003 fixes the certification target at L = 13 for R-025 (H2). Nothing at L = 13 asks for d_1 or κ_1.

Grade: [P] (logical dependency read from the files listed; no Balaban page involved).

Proposed ledger text (R-026, last clause): replace "(1.1) at L = 3 not evaluated" by "(1.1) (KAPPA_BOUNDED d_j) is not an input at any L: Theorem K uses only the existential bound |d_j| ≤ κ_*, and Lemma D″ accepts any finite R (THEOREM2_PROOF_v4 §4.1, §6); its L = 3 evaluation is an optional cross-check of Prop. 1.1, not done (no d = 4 f-symbol code); not needed at L = 13 (SOURCES_SWEEP_A §3)."

## 4. Summary

| item | closed? | new status |
|---|---|---|
| S-78 | yes | P4 PROVED and verified: 12 CONFIRMED, 0 CORRECTED, 0 UNSUPPORTED; (D) in Lean + Fourier step; Lemma S enters through Step 1 as V1 states |
| S-77 | partly | (0.4) reading and ghost domain CONFIRMED [V] by a second reader; (0.4) = (0.12) at order 0 [P]; gauge-fixing function is a convention (minimum-norm, same as the consumer) [P]; proof-assistant part still open |
| S-79 | yes | (1.1) not needed at L = 13 or any L; optional L = 3 cross-check only |
