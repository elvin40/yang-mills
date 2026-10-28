# Yang–Mills on a torus along Balaban's renormalization group

Paths. The notes were written in one flat working folder and copied into notes/ unchanged. Inside notes/, read paths as follows. reports/X is notes/reports/X and resolves. numerics/X is ../numerics/X at the repository root. lean/X is ../lean/X. balaban/X is a scan of Balaban's papers and is not included; the notes give the CMP volume and page. Paths under /tmp/ or /Users/ are scratch locations on the author's machine and are not included. In lean/README.md, ../X.md means notes/X.md.

Working notes, lemmas, verifier reports, and numerics toward (1) Balaban's unpublished Theorem 2 (running-coupling control, CMP 109 (1987) p. 259) and (2) a finite-torus existence theorem for 4D SU(2) lattice Yang–Mills in compactness form.

Every statement in the notes carries a tag (proved / verified / reduced / open). Nothing here is a complete proof of either target. Layout: notes/ holds the working notes (PLAN.md = dated status lines; THEOREM2_PROOF.md and ASSEMBLY.md = assembly documents; *_VERIFY.md = independent verification passes; notes/reports/ = literature and comparison reports), numerics/ the code and results, lean/ the Lean 4 formalizations.

## Status

Sources for this section: notes/PLAN.md (dated lines), notes/THEOREM2_PROOF.md §7, notes/ASSEMBLY.md §3, notes/KAPPA_BOUNDED.md §6. "Verified" means that an independent pass (a *_VERIFY.md file) confirmed the claim. Both targets are conditional on Balaban's published proofs (CMP 95–122, 1984–1989), which nobody here re-checked line by line.

### Target 1: Balaban's Theorem 2, weak form

Proved and verified:
- Lemmas D and E (shooting and uniform bounds) give the reduction Theorem 2 ⇐ (T2-a1′) + (H0) + (H0′) (LEMMAS_DE_VERIFY.md).
- Lemma D′ gives shooting without positivity of the early steps (LEMMA_DPRIME_VERIFY.md). Lean 4 proves Lemmas D′, D, E, and H (lean/YmLean/, 9 theorems, no sorry, axioms propext, Classical.choice, and Quot.sound only).
- The normalization is 1/g_B² = 2N/g². The universal coefficient is c = 11N²/(12π²) = 0.371511 for SU(2) (R2_VERIFY.md, BETA_FP_LEMMA43_VERIFY.md).
- The Gaussian block-spin RG converges to a fixed point (U3 Theorem 4.1 with O5). The one-step bordered matrix is uniformly invertible (O6) (U3_VERIFY.md, U3_REPAIRS_VERIFY.md).
- Prop. 2.1 of BETA_FP_LEMMA43 is an exact anchor-free identity. It puts the log L entirely in the fine piece (BETA_FP_LEMMA43_VERIFY.md).
- The Ward identity (W), σ_j^{(1)}(0) = τ_c for all j, and Theorem A3, |σ_j^{(1)}(K) − τ_c| ≤ C|K|², hold (U3_AW_VERIFY.md).
- The abelian sector is exact: S_k^{ab} = (1 − L^{−4k})/4 (U1_VERIFY.md).

Reduced (the reduction itself is verified):
- Theorem 2 (weak form) is proved given one uniform hypothesis (B2): sup_j sup_K |σ_j^{(2)}(K)| < ∞ (KAPPA_BOUNDED.md §5.4, through Theorem K and Lemma D″). The weak form gives all effective couplings in ]0, γ] and two-sided pairwise bounds with an additive constant 2κ_*. This is the hypothesis of Balaban's Theorem 1. KAPPA_BOUNDED_VERIFY.md confirms Theorem K and Theorem 2w as correct conditional reductions.
- The same result also uses fixed-level inputs at each j: (PI) probe independence (argued), (F) the constant-field log coefficient, (M_j) (open on the lattice, BETA_FP_M.md), V1 = (H3) (open, plausible), and (G2) (formal). It also uses Balaban's Lipschitz bound (H0). The history-dependent version (L5) is not written.
- Lemma D′ (b) and (c) cover all 19 cross-scale coupling comparisons in Balaban's papers, given γ^{−2} ≥ c·D′ (LEMMA_DPRIME_SWEEP.md). This sweep has no independent verifier.

Open:
- (B2) itself. The obstruction is the derivative ∂σ^{(1)} (KAPPA_BOUNDED_VERIFY.md). The sufficient condition (HS) is false at L = 3: numerics give max_K ‖H_j(K)‖/L = 1.65–1.76, above the threshold 1.41 (U3_AW_VERIFY.md). At L = 3, h²/L⁴ ≈ 0.34 < 1, so the route of KAPPA_BOUNDED.md Prop. 4.1 needs only a uniform C¹ bound on σ^{(1)}, which is open. The two-step condition (H″) passes on a coarse grid at L = 3. No code computes σ_j^{(2)} directly in d = 4.
- The stronger form (convergence β_j(0) → c log L and the literal inequality (0.31)) also needs (A) in quantitative form, (H) or (H′), (H3), and (H0′) (THEOREM2_PROOF.md §8). Balaban's Theorem 1 does not need it.
- Numerics are floating point and not certified: β_1(0) = 0.630, 0.664, 0.757, 0.743 at L = 2, 3, 4, 5, and β_2(0) ≈ 0.32 at L = 2. All values are positive. Certified early steps are not needed for the weak form (THEOREM2_PROOF_VERIFY.md).

### Target 2: finite-torus existence (compactness form)

Proved and verified:
- Given the uniform bound (H-U) on Schwinger functions of flat test functions, every limit point exists along a subsequence and satisfies the torus forms of OS0 (regularity), OS1 (all translations and the hypercubic group B_4), OS2 (reflection positivity, ℓ even), and OS3 (ASSEMBLY.md §1.3, ASSEMBLY_VERIFY.md). The lattice reflection positivity is cited (Osterwalder–Seiler 1978), not re-read.
- The bridge (B-N1) gives (H-U) from a sourced Gevrey bound (S) on supports at least 16ε apart (ASSEMBLY_N1.md, SOURCES_HHIST_N1_VERIFY.md).
- One sourced step at the Gaussian level (D1) holds, with corrections (SOURCES_D1_VERIFY.md).

Reduced:
- (H-U) ⇐ Theorem 2 for the sourced trajectory + the sourced bounds E14 + (B-N1).
- The sourced small-field step (D2, with step (c) redone in D2C) is reduced to Balaban's estimates and the domain hypothesis (D). Both files have verifier passes with corrections.
- The sourced large-field step (D3, revised in D3R and D3W8) is reduced. Lemma F2′ holds given (W4) and (Eps) (SOURCES_D3W8_VERIFY.md).
- (W4) is proved for the regular RG step (SOURCES_W4.md, unverified). Holomorphy of the R operation at radius 2E_0 is open and probably false as stated. The three users of (W4) do not need it.
- (Hβ) is reduced to (I) and (H-hist). (H-hist) is reduced to (B2) and (SM). The per-hop factor θ is unsupported (SOURCES_HHIST_N1_VERIFY.md). The Lean proof of Lemma H shows that its hypothesis must bound each column sum by c_i with Σ_i c_i finite; a bound on sup_i of the column sums is not enough.

Open:
- Real-source derivative bounds of all orders (D4): only the interpolation lemma is done.
- Nontriviality needs (NT) = (E14-f). Its derivation from (NT) is in ASSEMBLY.md §2.9, without a verifier.
- The theorem does not give O(4) invariance, infinite volume, a mass gap, uniqueness of the limit, or clustering. Periodic time gives a thermal state at inverse temperature ℓ, not a vacuum. It is not a solution of the Clay problem (ASSEMBLY.md §4).

## Independence and prior work

Independence note: these notes were written on 2026-10-27 and 2026-10-28 (see commit dates, which equal the files' modification times). On the night of 2026-10-27 a web sweep (notes/reports/ONLINE_SWEEP.md) found the public account by Ethan Sussman and Levent Alpöge, github.com/ethanwsussman/Yang--Mills-LLM-experiment, which follows the same route and reaches the same open one-loop comparison lemma. That account was not read by any derivation here; notes/reports/SUSSMAN_ALPOGE_MAP.md compares the two.

Citation for that account (from notes/reports/SUSSMAN_ALPOGE_MAP.md §5.1):

> E. Sussman and L. Alpöge (with Claude; README: "written largely by LLM ... Novel mathematical ideas should be attributed to Claude (under the guidance of LA)"), "The Yang--Mills continuum limit along Bałaban's renormalization group: a complete account of Theorem 0" (LaTeX, files theorem_0_complete_account_raw_{master,I,II,III}.tex, 424k lines), and "SU(2) Yang–Mills theory in four dimensions via Bałaban's renormalisation group: construction, axioms and non-triviality" (ym4_manuscript_zeroth_draft.pdf, dated 6 October 2026). Repository: https://github.com/ethanwsussman/Yang--Mills-LLM-experiment, commit 1b92bd0347e3b8763cd8ecc1f96dc3c2a92dd310 (2026-10-27T05:45:28-05:00), accessed 2026-10-27. Repository created 2026-10-06. Disclaimer in README: "This repository contains work-in-progress, written largely by LLM. Its content has not been satisfactorily vetted. All claims should be understood as tentative, pending verification."

Their public, timestamped account predates this one. Any writeup from this repository must cite it.

The Balaban papers (Communications in Mathematical Physics, 1984–1989) are not included.

How to cite: use the metadata in CITATION.cff (GitHub shows it under "Cite this repository"), and give the commit hash you used.

License: documents CC BY 4.0 (LICENSE); code in numerics/ MIT (numerics/LICENSE).
