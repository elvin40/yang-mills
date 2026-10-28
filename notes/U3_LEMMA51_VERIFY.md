IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# U3_LEMMA51_VERIFY: independent check of U3_LEMMA51.md

Written 2026-10-27 (Claude, Opus 5.5, verifier). Built incrementally, one section per step.

## 0. Items graded
1 neutral sector (Prop 2.2); 2 KKT expansion (2.4)-(2.5); 3 canonical symbol (Lemma 3.1); 4a Moyal per-momentum (3.1)-(3.3); 4b point-reflection parity (Lemma 3.4); 5 charged reduction R1-R3 (Thm 4.1); 6 j L^{-2j} loss (§4.3); 7 numerics L=2 table; 8 numerics L=3 table; 9 no M^{-1} term.

## 1. Item 1, neutral sector (Prop 2.2), rederived
- (a) For neutral B at a Cartan background every loop variable stays in the torus, and the linearized log/exp in the σ_3 direction has no dexp factor. So C_f^{neu} = C_0^{neu}. Lemma 2.1 (block diagonality) makes "neutral part of C_f" well defined. Agreed.
- (b) BCH: Z = Σ s_iX_i + (commutator terms, charged only for the σ_3 output). ½tr(e^{iZσ/2}e^{iφσ_3}) gives cos φ(1 − |Z|²/8) − sin φ·Z_3/2 + O(3). The linear term −(sin φ/2)Σ s_iB_i^3 is the gradient, zero after the plaquette sum (∇A = 0). The quadratic neutral part is (cos φ/8)(Σ s_iB_i^3)². No neutral-charged mixing. Agreed.
- (c) Envelope theorem with ε = 1 − cos(f/M²) = f²/(2M⁴) + O(f⁴). F¹ = 0, F² = −(2M⁴)^{-1}H_0^†Δ_{01}H_0, 0 ≤ H_0^†Δ_{01}H_0 ≤ Δ_j. Agreed.
- Gap (minor): the form inequality bounds the value of the symbol, not its K-derivatives. (1.2) needs |α| ≤ 2. The derivative bound needs the Theorem 4.1 symbol estimates for the sandwich H_0^†Δ_{01}H_0 (same structure, Δ_0 → Δ_{01} in the middle). With the M^{-4} prefactor any uniform-in-M derivative bound suffices. Not written.
- d = 2: every plaquette is a (0,1) plaquette, so S^{neu}(f) = cos(f/M²)Δ_j exactly. The d = 2 numerics therefore test only this identity, not the d = 4 sandwich bound.
- Grade: CONFIRMED (value bound); derivative part of (1.2) needs one paragraph.

## 2. Item 2, KKT expansion (2.4)-(2.5), rederived
- S = −[𝒦^{-1}]_{22} = (CK^{-1}C^†)^{-1}. Neumann series to f²: [𝒦^{-1}]_{22} = −S_0 − f v^†𝒦_1v + f²(v^†𝒦_1𝒦_0^{-1}𝒦_1v − v^†𝒦_2v), using 𝒦_0 Hermitian so e_2^T𝒦_0^{-1} = v^†.
- v = [H; −S_0]: with Lagrangian ⟨B,KB⟩ − 2⟨λ, CB − V⟩, stationarity K_0HV = C_0^†λ and value ⟨V,λ⟩, so λ = S_0V. Checked.
- 𝒦_0^{-1} = [[Γ, H],[H^†, −S_0]] with H = K^{-1}C^†S_0, Γ = K^{-1} − K^{-1}C^†S_0CK^{-1}. Checked. Expansion of 𝔤^†𝒦_0^{-1}𝔤 checked. ∂_f v = −𝒦_0^{-1}𝔤 checked.
- Gauge fixing: Δ(φ)D_r = 0 needs ∇A = 0 at the background (true); C_fD_rλ = 0 for λ = 0 at coarse sites is linearized Balaban covariance. So adding D_rD_r^† does not change the minimum. Agreed.
- Grade: CONFIRMED.

## 3. Item 3, canonical symbol (Lemma 3.1)
- a = A/W is gauge invariant: both A(x,y) and W(x,y) pick up g(x)g(y)^{-1}. Magnetic translation T_a: W(x+a,y+a) = W(x,y)e^{i(ef/2)(x−y)∧a}, cancelled by the gauge factor e^{i(ef/2)a∧(x−y)}. So a depends only on x − y. Uniform block shift = conjugation by T_s; a_s = a. Checked.
- Caveat: the symbol depends on the convention "straight Wilson line between link midpoints". A base-point convention multiplies a by M-independent phases e^{ief·(area)}, which mixes σ^{(0)} into σ^{(1)}, σ^{(2)}. Rates are convention independent; the limits σ_∞^{(m)} are not. The identification with the data (6.1) needs is cited from U3_VERIFY §7, not shown here.
- Grade: CONFIRMED.

## 4. Item 4a, Moyal composition and (3.2)-(3.3)
- W(x,y)W(y,z) = W(x,z)e^{i(ef/2)(x−y)∧(y−z)}: checked (x∧y + y∧z − x∧z = (x−y)∧(y−z)). Fourier with w ↔ i∂_q gives exp(−i(ef/2)∂′∧∂″). Second-order term −(e²f²/8)P_2: checked algebraically.
- Umklapp bookkeeping: for a kernel only invariant under coarse (magnetic) translations, (x−y)·A(x,y) ↔ i(∂_q + ∂_{q′})Â(q,q′), i.e. ∂_K at fixed (l,l′). So "∂_K entrywise at fixed l, matrix order kept" is right, also for D_rD_r^† (not diagonal in l) and for the fine-to-coarse averaging rows. The orbital (Landau) coupling sits in the brackets, not in 𝔨_1: correct in the symmetric-midpoint convention.
- Order-by-order solution of 𝔨 ⋆ b = 1: (3.2) and (3.3) rederived, identical.
- Numerical check (mine, scalar magnetic Laplacian m² = 0.5 on a 40² torus, Landau gauge, q = 0,1,2 quanta): f² coefficient of G(x,x) = −0.0436778 (real space) vs (1/8)∫b_0P_2(a_0,b_0) = −0.0436778 (agreement 5·10^{-7} relative). This confirms the sign and the 1/8 of the P_2 term. The first-order bracket vanishes for scalar symbols, so its sign is not tested (it is a convention, e → −e).
- Derivative count: total order ≤ 4 in (3.3), at most 2 on one factor; with (1.2) at most 4 on one factor. R1 asks for 6 on 𝔨_0^{-1}; 4 per factor suffices. Conservative, not wrong.
- Grade: CONFIRMED.

## 5. Item 4b, point-reflection parity (Lemma 3.4); Lemma 3.5
- x → −x maps link midpoints to link midpoints, b_μ → −b_μ (two sign flips cancel in the matrix kernel), fixes x∧y, and fixes every F_{μν} (in d = 4, x → −x is a rotation, det +1). So the f-dependent Hessian symbol is even in k at every φ, hence at every Taylor order in f, and lattice/continuum errors are even, O(k²). Checked.
- Small caveat: "relative error" is entrywise and ill-defined where the leading continuum entry vanishes; the needed statement is an absolute error O(k²)·(leading order). Not a defect of substance.
- The claim about odd O(k) pieces of the spin term cancelling against transport corrections was not checked; it is not needed (the symmetry argument covers the total).
- Lemma 3.5 (averaging): for odd L, reflection about the coarse link midpoint swaps c_−, c_+ and maps the centered block family to itself; the argument is plausible. The dexp/dlog check is open, as the author says. For even L (corner blocks) the reflection does not preserve the block, so an M^{-1} term is not excluded by symmetry. Agreed.
- Grade: CONFIRMED for the Hessian (proved); the averaging part is correctly labeled conditional.

## 6. Item 5, charged reduction (Theorem 4.1) and item 6, level sum
- Theorem 4.1 is stated for the single block-M averaging. Balaban's object (Lemma 5.0, CMP 98 (91)) is the composed averaging, which differs at f ≠ 0 (numerics: F² limits differ by 0.6%). The sentence after the proof, "given R1–R3, Lemma 5.1 holds with the rate of Theorem 4.1, and U3 Theorem 7.1 follows with ρ = L^{-2}", overstates: for the composed constraint R1–R3 give only the crude j·L^{-2j} of §4.3. The reduction of Balaban's case needs a fourth statement (R4: telescoping or gradient structure of the level-i loop-log terms) for L^{-2j}.
- §4.3 crude bound rederived: depth i′ term weight L^{-2i′}, lower factor Q_{L^{j−i′−1}} with lattice error O(L^{-2(j−i′−1)}); j terms of size O(L^{-2(j−1)}) each → O(j L^{-2j}). Agreed. Either rate gives geometric convergence with any ρ > L^{-2}: agreed.
- The second claimed log source (P_2 terms "same as U3 O3") is weaker than stated: U3_VERIFY Step 4 found no log at f = 0 once derivatives of t_l^c are counted. The open source is the K → 0 uniformity, not a log.
- Other gaps in the Theorem 4.1 proof sketch: (i) R1 has no norm. Fine-fine entries of 𝔨_0 grow like |q_l|² ~ M², and ∂_K𝔨_0 like |q_l|; R1 needs a weighted (l-dependent) norm and the statement must fix it. (ii) Step 2, "relative error of a product ≤ sum of relative errors", fails where cancellations occur (S_0 = Δ_j ~ |K|², gauge zero mode at K̂); near K = 0 this needs the U3_VERIFY Step 4 product-rule argument. (iii) R3 for the loop-moment symbols is "by inspection".
- Grades: item 5 CORRECTED (reduction is complete only for the single block-M constraint; Balaban's composed constraint needs R4, else rate j L^{-2j}). Item 6 CONFIRMED (crude bound correct; loss neither shown nor excluded).

## 7. Is the d = 2 model a faithful test of the d = 4 statement?
Same in both: the BCH form (2.1), the spin term, the loop-log/exp factors of the averaging, the composed-vs-single structure, the Moyal structure in the (0,1) plane, the KKT with D_rD_r^†. Different:
- Transverse projector. In d = 2 the coarse transverse space T′ has rank 1 (d = 4: rank 3). Per K the coarse block of the charged KKT is effectively scalar on T′, so the coarse-level matrix noncommutativity in {𝔨_0, b_0} and P_2 is absent. In d = 4 the polarizations in the field plane (spin-coupled) and the spectator polarizations 2, 3 (orbital only) mix through P′_T(K) for generic K. d = 2 cannot test this.
- No spectator directions. In d = 4 the Moyal derivatives act only on K_0, K_1, the umklapp sum runs over Z⁴, and the (0,2), (1,2), ... plaquettes add orbital-only couplings. The worst umklapp direction (one nonzero l_ν, decay n^{-4}) is the same in both, so the tail M^{-3} is not easier in d = 2; the mixed directions are new in d = 4.
- Neutral sector. In d = 2 Δ_{01} = Δ_0, so the neutral check is the trivial identity S^{neu} = cos(f/M²)Δ_j. The d = 4 content (sandwich H_0^†Δ_{01}H_0 with Δ_{01} ≠ Δ_0) is not tested.
- Ghost/residual gauge sector. D_rD_r^† does not change S in either d (Lemma 1.4 type argument), so it is irrelevant for the values tested. It does change the KKT invertibility constants (R1): L^d − 1 Dirichlet sites per block. Not tested in d = 4.
- Scaling M^{4−d} = M² is the correct dimensional factor for the Maxwell form; the F-scaling φ = f/M² is the same.
- Probes are real-space kernel entries (weighted K-integrals of the symbol) at nearest-neighbour range. They test the |α| = 0 part of (1.2) only, not the K-derivative bounds.
- Verdict: d = 2 is a consistent smoke test of the building blocks and of the absence of a large M^{-1} term. It is not a faithful test of the d = 4 rate claim because the polarization-mixing terms and spectator directions are absent.

## 8. Numerics rerun (Mac, scratch dir /tmp/l51v, numerics/.venv/bin/python -I)
- L = 2, nc = 8, M = 2, 4, 8 (43 s total). Reproduced to every printed digit: diag_ch a0 2.3432, 3.3080, 3.6683; diag_ch a2 (comp) −0.6174, −0.9985, −1.2197; hop_ch_00 a2 (comp) 0.6053, 1.2894, 1.6213; hop_odd_01 a1 (comp) −1.3474, −2.0099, −2.2647; single-block rows also match. Neutral: diag_neu a2 = −a0/(2M⁴) exactly (M = 2: 1.171581/32 = 0.036612). Coarse angle = f to 9·10^{-16}; ∇A = 0.
- L = 3, nc = 6, M = 3, 9 (19 s). Reproduced: diag_ch a0 2.9991, 3.7038; hop_ch_01 a0 −1.8340, −2.3458; hop_odd_01 a1 (comp) −1.8279, −2.3296; diag_ch a2 comp −0.9495, −1.4979, single −1.5070; hop_ch_00 a2 comp 1.0917, 1.8138; hop_ch_01 a2 comp 1.4837, 2.3699. M = 27 not rerun. Ratio arithmetic of the L = 3 table checked from the listed diffs.
- M^{-1} claim (item 9). With four sizes, a "four-point fit" with four parameters is an exact interpolation; the M^{-1} coefficient depends on the fourth basis function. Using the table's M = 16 values:
  - basis {1, M^{-1}, M^{-2}, M^{-3}}: M^{-1}/M^{-2} coefficient ratio = 0.003 (diag_ch a2 comp), −0.003 (hop_ch_00 comp), 0.04, 0.06 (single). Matches the document.
  - basis {1, M^{-1}, M^{-2}, M^{-2}log M}: ratio = −1.44, −0.68, −1.57, −0.52. The limits move by about 2%.
  So the data do not bound the M^{-1} coefficient. The document's "below 1.5% / 6%" holds only within the M^{-3} basis. What the data do show: successive-difference ratios rise from 1.7 to 3.1 (comp), which a dominant M^{-1} term (ratio → 2) would not give. That is weak evidence against a large M^{-1} term, not a bound.
- M = 16 rerun (L = 2, comp 2 min, single 2 min): diag_ch a0 3.7696, diag_ch a2 comp −1.2913, single −1.2984, hop_ch_00 a2 comp 1.7236, single 1.7931, hop_odd_01 a1 comp −2.3369, single −2.2682. All match the L = 2 table, including ratios 3.56, 3.09, 3.24, 3.53, 2.84, 2.84, 3.78.

## 9. Grades
1. Neutral sector (Prop 2.2): CONFIRMED. The K-derivative part of (1.2) needs one paragraph (form bound covers |α| = 0 only).
2. KKT expansion (2.4)-(2.5): CONFIRMED.
3. Canonical symbol, gauge invariance (Lemma 3.1): CONFIRMED. The limits σ_∞^{(m)} depend on the midpoint/straight-line convention; the rates do not.
4a. Moyal composition and (3.2)-(3.3): CONFIRMED (algebra rederived; P_2 sign and 1/8 checked numerically to 5·10^{-7}).
4b. Point-reflection parity: CONFIRMED for the Wilson Hessian; averaging part is conditional (Lemma 3.5), as stated.
5. Charged reduction to R1-R3: CORRECTED. Theorem 4.1 covers the single block-M constraint only. For Balaban's composed constraint R1-R3 give j·L^{-2j}; L^{-2j} needs an extra statement R4 (level-sum telescoping). R1 needs a stated weighted norm.
6. Possible j·L^{-2j} loss: CONFIRMED as a crude bound; the "P_2 / U3 O3" log source is weaker than stated (U3_VERIFY found no log there at f = 0).
7. L = 2 numerics table: CONFIRMED (all M = 2, 4, 8, 16 rows rerun, all digits match).
8. L = 3 numerics table: CONFIRMED for M = 3, 9 (rerun); M = 27 not rerun, ratios consistent with listed diffs.
9. No M^{-1} term: CORRECTED. The "below 1.5% / 6%" is an exact 4-point interpolation in the basis {1, M^{-1}, M^{-2}, M^{-3}}; with M^{-2}log M as the fourth function the M^{-1}/M^{-2} ratio is −0.5 to −1.6. The data do not bound the M^{-1} coefficient; only the rising difference ratios (1.7 → 3.1) argue weakly against a dominant M^{-1} term.
Faithfulness of d = 2 (§7): partial. Missing in d = 2: rank-3 transverse projector (polarization mixing), spectator directions, nontrivial neutral sandwich, K-derivative tests.
