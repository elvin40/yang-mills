IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# ASSEMBLY_VERIFY.md — independent check of ASSEMBLY.md (2026-10-27)

One section per tool call. Grades: CONFIRMED / CORRECTED / UNSUPPORTED.

## 0. Start
Files to read: ASSEMBLY.md (full), SOURCES.md §1, SOURCES_VERIFY.md item 5, reports/clay_ym.txt (footnote 2), PLAN.md (Campaign + dated lines).

## 1. ASSEMBLY.md read in full (225 lines)
Read §0–§4. Key items noted for checks below: ℓ-even paragraph (line 19), footnote quote (line 24), (B-C) §2.4, (B-TI) §2.6, (B-RP) §2.7, (NT) §2.9, table §3.

## 2. Footnote 2 and Jaffe–Witten quotes vs reports/clay_ym.txt
- Footnote 2 (lines 619–621): "We specifically exclude weak-existence (compactness) as the solution to the existence part of the Millennium problem, unless one also uses other techniques to establish properties of the limit (such as the existence of a mass gap and the axioms)." ASSEMBLY quote matches word for word (only line breaks differ). Line 619 correct.
- Anchor: footnote mark "2" is at line 582, end of "limit as T4 → R4". Correct.
- §6.5 quotes (lines 543–545, 546, 563–564) match. "[45, 35]" sentence is at lines 279–280: matches.
- [36] = Osterwalder–Seiler, "Gauge theories on the lattice" (line 695). Note: the task brief says "Gauge field theories on a lattice"; the reference list title is "Gauge theories on the lattice". Ann. Phys. 110 (1978) 440–471 matches.

## 3. Context: SOURCES.md §1 and SOURCES_VERIFY.md item 5
- SOURCES §1.4 (N3a) already states the translation argument: "continuity in the translation follows from (N1) applied to F(· + a) − F(·) ... (a modulus of continuity)". ASSEMBLY §2.6 implements it.
- SOURCES §1.4 (N4) names RP "for site and link reflections" and both planes {x_0 = 0}, {x_0 = ℓ/2}. It does not raise the parity of N_ε. ASSEMBLY adds the parity point.
- SOURCES_VERIFY 5(b): source form does not give a fixed-s bound; s may need to grow with n; "Whether OS II's linear growth condition admits a Schwartz index growing with n must be checked in OS II". ASSEMBLY uses index sn. This is the OS II "linear growth" form (E0′): |S_n(f)| ≤ σ_n |f|_{s·n}, σ_n ≤ α(n!)^β, from memory of OS II; ASSEMBLY quotes it only through the template [V]. So the growing index is admitted, as long as it is linear in n.
- Minor: SOURCES §1.3 has c_j = 1 + O(g_j⁴); ASSEMBLY uses O(g³) per SOURCES_VERIFY item 8 (the corrected value). Consistent with the verified file.
- Minor: Var ϕ_ε(f) ~ ε⁻⁴ g_0⁴ ∫f² (SOURCES §1.3); ASSEMBLY drops the g_0⁴ (log) factor. Harmless.

## 4. Dependency table (ASSEMBLY §2.1, §2.2, §3) vs PLAN.md Campaign lines and file headers
ASSEMBLY was launched in the PLAN line "Launched (Opus): SOURCES_D3.md ... and ASSEMBLY.md". Later PLAN lines changed four rows. The table matches PLAN at launch time but is stale now:
- B-T2.2 (Lemma 5.1 charged sector): table "R23: no (verifier running)". PLAN + U3_LEMMA51_R23_VERIFY.md (80 lines): R2 CONFIRMED, R3 volume pieces CONFIRMED, d = 4 single-block failure CONFIRMED (sign fix), one-step recursion CONFIRMED exact, one-step O6 covers all j; (W) plausible, (N) plausibly false (clean rate only); U3_AW.md launched for (A), (W).
- B-T2.3: "composed constraint = R1 OPEN". After R23_VERIFY, the composed constraint is handled by the one-step recursion + one-step O6 (verified); what stays open is (A). Row should say "R1 reduced to one-step O6 (verified) + (A)".
- B-T2.4: "OPEN; skeleton". BETA_FP_LEMMA43.md is now 180 lines: Prop. 2.1 exact identity proved (checked 3e−13), c = 11N²/(12π²) = 0.371511, Lemma 4.3 reduced to (H); trivial-background part proved for odd L; verifier running (BETA_FP_LEMMA43_VERIFY.md partial, 26 lines).
- B-S.D2C: "no (verifier running)"; §2.2 says the verify file "has a header only". SOURCES_D2C_VERIFY.md now has 34 lines: Lemma A CONFIRMED, freezing rule fixed, (I) CORRECTED (exact only with adapted gauge-fixing weight 1/u_k(c)), recursion CONFIRMED (h ≡ 0 valid).
- B-S.D3: "IN PROGRESS (skeleton)". SOURCES_D3.md header: "complete draft ... unverified" (199 lines); new open items (H-thr), (W1)–(W7) plan; verifier running.
- B-T2.6: numerics "L ≤ 4"; PLAN shows L = 5 run (ymL5) in progress. Minor.
- Rows checked and consistent with PLAN: B-T2 (Lemmas D, E verified after correction; LEMMAS_DE_VERIFY.md), B-T2.1 (U3 Thm 4.1 + O5 verified), B-T2.5 (U1′ open at U2′), B-S (open), B-S.D1 (verified with corrections), B-S.D2 grades (a,b,d,f confirmed; c rejected; e reduced), B-S.Hβ (conditional on (I), (H-hist), column-sum form), B-S.D4, B-N1, E13.
- Status words: no row claims more than PLAN records. All staleness errs toward "less done".
Grade item 7: CORRECTED (stale in five rows; no overclaim).

## 5. Osterwalder–Seiler: web search (1 query) + Menotti–Pelissetto abstract
- Search did not return the 1978 paper text. No verbatim theorem from Ann. Phys. 110 obtained.
- Menotti–Pelissetto, CMP 113 (1987) 369–373, "General proof of Osterwalder–Schrader positivity for the Wilson action", abstract [V, iris.uniroma1.it/handle/11573/458456]: "We extend the proof by Osterwalder and Seiler of reflection positivity of lattice gauge theories with fermions to the case in which the reflection is performed with respect to planes containing sites." and "Our proof applies to all observables and relies on the particular structure of the Wilson action."
- So: O–S 1978 = link-plane (between-site) reflections; site-plane reflections were added in 1987 (with fermions). For pure gauge, site-plane RP is standard (Seiler, LNP 159, 1982 [cited, not fetched]).
- Consequence for ASSEMBLY §0 (ℓ even). The parity count is correct: L odd ⇒ N_ε = ℓL^K even iff ℓ even; for odd N_ε every time reflection has one site seam and one link seam. Both single-seam mechanisms exist in the literature. The mixed case needs a combined argument (condition on the site-plane links at one seam, character expansion of the crossing plaquettes at the other). Each mechanism is local to its seam, so the combination is very likely routine, but I found no citation that states it for the periodic lattice. ASSEMBLY's wording ("plausible but not cited") is accurate. The restriction ℓ even is sufficient, not necessary. Also ASSEMBLY §2.7 attributes the link-plane two-seam periodic version to O–S as "standard" without text: [cited], not [V].

## 6. Mathematical checks (by hand) and grades
(B-C) §2.4. C^k(T^{4n}) is separable (Fejér means converge in C^k: derivative of Fejér mean = Fejér mean of derivative). Subset D_n separable. S_{n,ε} is linear on the vector space D_n, so (H-U) is a uniform Lipschitz bound in ‖·‖_{sn}: uniform bound ⇒ equicontinuity holds for linear functionals. Dense-set convergence + equicontinuity ⇒ Cauchy everywhere. Correct.
(B-TI) §2.6. The modulus of continuity the brief asks for is present: F_a − F_{a_i} ∈ D_n and ‖F_a − F_{a_i}‖_{sn} ≤ 4n|a − a_i| ‖F‖_{sn+1} (mean value theorem; 4n components each ≤ |a − a_i|). (H-U) + linearity turn this into |S_{n,ε}(F_a) − S_{n,ε}(F_{a_i})| ≤ 4nσ_n ε ‖F‖_{sn+1}. Rounding |a − a_i| ≤ ε correct. Third term zero by exact lattice translation (a_i ∈ εZ⁴ mod ℓ). Correct. B_4 part correct (origin at a site of every L^{−K} lattice; nested).
(B-RP) §2.7. Torus RP form: θ(x_0) = −x_0 has fixed planes 0 and ℓ/2; T_+ = ]0, ℓ/2[, θT_+ = ]ℓ/2, ℓ[; this is the standard periodic form. Lattice θ_ε: x_0 ↦ ε − x_0, positive sites {ε,…,ℓ/2}, negative {ℓ/2+ε,…,ℓ}; partition checked. ΘΦ re-indexing: θ_ε x = θ(x − εe_0), so Θ_εF_n = (ΘF_n) ∘ τ_{−εe_0}: correct. Needs c_ε independent of p (true by B_4 + translations). Support distance after shift ≥ 2δ − ε (file says 2δ − 2ε; conservative). Step 2: for tensor products in separate variables ‖G⊗H‖_k ≤ ‖G‖_k‖H‖_k; the 2^k factor is unneeded but harmless. Finite-form lemma correct. Seam handling correct.
(OS3) correct.
(B-NT) §2.9. (i): L^kε > d/L ≥ d_0/L gives 1/g_k² ≤ 1/g² + β′ log(L/d_0); lower bound uniform in ε; c > 0 because the tree-level composite correlator is 2Σ(cov)² ≥ 0. Correct given (NT), but |R| ≤ ½ needs g² + (|x−y|/ℓ)² small on the whole support pair, so support diameters must be ≪ ℓ too (file conditions only the minimum distance d_0). (ii): L^kε ≤ d gives 1/g_k² ≥ 1/g² + β log(1/d) ⇒ d⁸S_2 → 0, while a scale-invariant composite gives a nonzero constant. Correct. BUT Theorem 1.4(ii) states "behaves like c g(d)⁴ with g(d)² ~ (β log(1/d))^{−1}"; §2.9 itself says this asymptotic needs β_j → β_∞ and is not used. The proved statement is the two-sided (0.31) envelope. Statement overclaims; proof does not.
§4. Complete for the main gaps. One omission: time is periodic, so OS reconstruction from torus RP gives a transfer matrix on T³ and a thermal (inverse temperature ℓ) state, not a vacuum state. Not in §4.

Grades:
1 Theorem statement: CONFIRMED.
2 In-file proofs (B-C, B-REG, B-TI, B₄, RP passage, OS3, finite-form lemma): CONFIRMED.
3 ℓ even: CORRECTED (parity count right; evenness is sufficient, not necessary; mixed case very likely routine but uncited).
4 O–S cited not quoted: CONFIRMED (O–S 1978 = link planes; site planes = Menotti–Pelissetto 1987 [V abstract]).
5 (B-N1) open + route: CONFIRMED as open sketch (gaps: complex Fourier modes vs real sources, ×2ⁿ; Fourier summation costs extra derivatives, absorbable in s; smooth min-distance partition).
6 Nontriviality: CORRECTED (Thm 1.4(ii) wording; support-diameter condition in (i)).
7 Dependency table: CORRECTED (stale in five rows, no overclaim).
8 What it does not give: CONFIRMED (add thermal-state remark).
