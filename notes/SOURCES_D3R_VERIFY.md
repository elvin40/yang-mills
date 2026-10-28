# SOURCES_D3R_VERIFY

Independent verification of SOURCES_D3R.md (items 1-6). One section per step.

## S0 setup
Started 2026-10-27.

## S1 read D3R and V1-V9
Read SOURCES_D3R.md (188 lines) and SOURCES_D3_VERIFY.md in full. Six items to grade: P3, P8, freezing via R (F1/F2), Gevrey, ledger, corrections.
Initial flags to check: (a) Lemma P3(b) sum bound uses r(e^x−1) but the D3 bound is per-j sup over |c|≤2r (Lemma H); (b) 1.4 lower bound "1/(g″_k)^2 ≥ min g_m^{-2} ≥ γ^{-2}" and θ=γ²δ_r; (c) Lemma F2 Cauchy argument; (d) Lah sum bound.

## S2 CMP 122 II pp. 365-366 images (PDF 11-12)
- (B10) reset and (1.37) CONFIRMED verbatim on image: second term −A((1/(g″_k)² − 1/g_k²)ζ, U″_{k,Z}); third term −A((1/(g″_k)²)ζ_1, U″_{k,Z}).
- p.366: "1/(g″_k(·))² − 1/g_k² = O(N) ≤ O(R_k) on the support of ζ, so it can be bounded by O(1)N^{2+4p_0}(100MR_k)^4(O(1)B_3B_5M^5ε_k + O(1)B_3δ′_k)² ≤ O(1)B_3²B_5²M^9R_k^7ε_k²". CONFIRMED. Third term: "small factors connected with large plaquette variables in Ω^c_k"; G^c extension "small perturbation of a positive Wilson action". CONFIRMED.
- Note on 1.3: the bound V_k carries N^{2+4p_0}; it is not stated whether one N comes from the coefficient. D3R's division V_k/O(N) assumes so. The fallback δ_r·V_k needs V_k ≠ 0 when N = 0 (Balaban's coefficient vanishes there, sourced one is δ_r). Harmless: any O(1)·(100MR_k)^4(...)² bound works, still ≤ O(r)R_k^7ε_k². Minor.
- Lemma P3 arithmetic: (3/2)r [reset] + r/2 [Σ|B_j(c)−B_j(0)| ≤ r·(e^x−1)] + (3/2)r [second bracket] + |h_k| = 3.5r + 2C_hMρ_1λ_k ≤ δ_r. CONFIRMED given Lemma H, (H1).
- 1.4: θ = γ²δ_r ≤ 5γ²r needs 2C_hMρ_1λ_k ≤ r, i.e. a ρ_1 ≤ r/(2C_hM) condition not stated in D3R. Check below. Positivity split itself: correct for real f, G-valued U (P_p ≥ 0, dropped factor in [0,1], integrand positive, (1.73) needs only an upper bound of T′_k 1).

## S3 CMP 119 pp. 270-271 images (PDF 28-29)
- (3.25): A_k(1/g_k², U_{k+1}) with constant g_k, and P^{(k)}(g_k,(A_k,A)). CONFIRMED.
- p.271: R′_k = Σ_{j≤k_1} R^{(j)} "we include it into E_k"; R″_k = Σ_{j>k_1} "treated separately"; t multiplies B_k, A((1/g_k²(·)) − (1/g_k²), …), V^{(k)}; s multiplies R″_k. CONFIRMED verbatim.
- (3.26) t-integrand and (3.27) measure Z_{s,t}^{-1}dμ_{C^{(k)}(Λ_{k+1})}(A)χ_k exp[−⟨A,C*Δ^{(k)}CA_k⟩ + P^{(k)} + {…}_{s,t} + tV^{(k)}(S_k)]: CONFIRMED. "contributes to B^{(k+1)} only": CONFIRMED.
- What the t-measure needs of an extra vertex (read from 3.27): it sits inside {…}_{s,t} or next to P^{(k)}; the Gaussian dμ_{C^{(k)}} is built with constant g_k. So an O(1)-coefficient quadratic vertex is not of P^{(k)} class (P^{(k)} is cubic-and-higher in g_k B′ plus small linear terms). d_S has relative size g_k²|d_S| ≤ 2γ²r: small in r, not in g_k. So "vertex constants 1 + O(r)" is accurate only for the cubic+ part; the quadratic part needs a covariance change C^{(k)} → C_f^{(k)} (D3R says so, via D2 Lemma 3.1). Requirements: locality (yes, per plaquette), reality for real f (yes, sign indefinite but |g²d_S| ≤ 2γ²r keeps the quadratic form positive), smallness relative to Gaussian (γ²r small). Met, but the t-measure then is Balaban's with a changed covariance at every t, not "one more vertex of his P^{(k)} class". Wording CORRECTED; substance reduced, same as D2 §6.1-6.2.

## S4 h_k booking check (D3 §1.1 line 35, D2 lines 55, 211)
- D3 §1.1: on the last domain w_k = u_k(f(x)) exactly (pointwise recursion (1.a), reset to u_k(f) on Z). D3R §2.2(a) writes w_k = u_k∘f + h_k there. Under (1.a) as written, h_k ≡ 0; D2 line 211 allows booking h as an irrelevant term instead. If h_k ≠ 0 is kept, then d_B = −h_k on a freshly reset Z (where Balaban's deviation is 0), so the support claim of 2.2(a) fails by O(ρ_1λ_k). Fix: book h as irrelevant (D2 §211 option) or reset to u_k∘f + h_k. Minor; CORRECTED.
- |d_S| ≤ (3/2)r + 2C_hMρ_1λ_k ≤ 2r needs ρ_1 ≤ r/(4C_hM); D2 line 56 assumes ρ_1 ≤ r/(2C_hM), giving 2.5r. Same for θ ≤ 5γ²r in 1.4 (needs 2C_hMρ_1λ_k ≤ r: D2 condition suffices). Constants only.

## S5 CMP 109 p.280 (PDF 32) and CMP 119 p.279 (PDF 37) images
- CMP 109 p.280 quote CONFIRMED verbatim: recover E_0 "by the differentiation with respect to t_□, at t_□ = 0 ... yields a factor O(1)α_2^{-1}ε_1". Context: it applies to the new fluctuation-generated terms of the step ((3.34)-(3.54)), not to inputs that pass through.
- CMP 119 p.279 CONFIRMED: vacuum subtraction for E^{(k+1)} and R″^{(k+1)}; coupling renormalization "by subtracting β_{k+1}(g_k)A(φ_{k+1},U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1)" and replacing g_k^{-2}(·) by g_{k+1}^{-2}(·).
- W8 finding: Balaban subtracts β_{k+1}(g_k)A from the WHOLE E^{(k+1)}, which contains the output of the merged R′_k inputs. He never splits off an R-induced part and never states a (L^jη)^4 g^{κ_0} bound for it. (2.31) is a bound for R^{(j)} terms, quoted correctly, but Lemma F2 applies it to a new object. So "F2 = Balaban's marginal R-bound" is a new claim, not a citation. Reduction route (Schwarz lemma in s′ + ε_1) is plausible but:
  (i) Schwarz step gives |E_R| ≤ 4ρ_R per step: a factor 4 per generation; the ε_1 factor applies only to the fluctuation-generated part. The transported inputs (zeroth order, scale label j kept) must be booked separately with their own bound; D3R does not say so. With that booking the generation chain is geometric in O(α_2^{-1}ε_1) as claimed.
  (ii) Cauchy radius S = E_0/ρ_R needs the regular integral analytic in the inputs on a ball of size E_0 (W4, open).

## S6 Gevrey and OS condition
- Template quote CONFIRMED verbatim (o3_continuum.txt l.4991-4993): "|Sn(F)| ≤ σn|F|sn with fixed s and σn ≤ A(n!)^D for fixed A, D"; template meets it with C^n n!, s = 4; tests flat on coincidence diagonals (l.4996-4998). ASSEMBLY §1.2 (H-U) σ_n := A(n!)^D CONFIRMED (D3R cites §1.2 correctly; the task's "§1.3" is the theorem that assumes it).
- Lah count CONFIRMED: Π_B(|B|!)^{1+ε} ≤ (n!)^{1+ε}; Σ_π Π_B|B|! = Σ_k L(n,k) = Σ_k C(n−1,k−1)n!/k! ≤ 2^{n−1}n!. Numeric n=1..8: 1,3,13,73,501,4051,37633,394353 vs 2^{n−1}n! = 1,4,24,192,1920,23040,322560,5160960. Moments ≤ (2C)^n(n!)^{2+ε}; C^n ≤ A_ε(n!)^ε; D = 3 reachable. CONFIRMED.
- δ-sweep: sup_u[(log u)^a e^{−u/2}]^n = C′^n. CONFIRMED. Whole item conditional on (B-N1) and on the per-term bounds of D3 (iv), as stated.

## S7 Grades
1. P3: CONFIRMED with two constant notes (θ ≤ 5γ²r and |d_S| ≤ 2r need ρ_1 ≤ r/(4C_hM), slightly stronger than D2's r/(2C_hM); V_k/O(N) division assumes one N-factor of V_k is the coefficient, fallback covers it). Positivity split correct for real f.
2. P8: CORRECTED. Split and bound correct. Two fixes: (a) h_k booking: with D3 (1.a) h ≡ 0 on the last domain; if h is kept, d_B = −h_k on freshly reset Z and the support claim fails by O(ρ_1λ_k). (b) d_S is not "one more vertex of P^{(k)} class with 1 + O(r)": its quadratic part has relative size O(γ²r), not O(g_k), and changes C^{(k)} in (3.27) at every t. Reduction stands only with that covariance change, same assumption as D2 §6.1-6.2.
3. Freezing through R: CORRECTED. 3.1 and F1 sound as reductions (W4). F2 is not Balaban's bound for merged R-terms: CMP 119 p.279 subtracts β_{k+1}(g_k)A from the whole E^{(k+1)} incl. merged-R output; no split, no marginal R-bound for that part. F2 is a new claim. Its proof must book transported inputs (no ε_1 factor) apart from generated terms (ε_1 factor); Schwarz step alone gives factor 4 per generation. W8 stays open.
4. Gevrey: CONFIRMED (conditional on (B-N1), as stated).
5. Ledger: CORRECTED: move F2 attribution to "new, reduced"; (P8) entry should name the covariance change; constants per item 1.
6. Corrections list and 5γ²r ≤ ½: CONFIRMED (under the ρ_1 condition of item 1).
