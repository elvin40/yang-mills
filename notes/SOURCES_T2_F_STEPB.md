IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_F_STEPB — (F) Step B: lattice log coefficient = continuum log coefficient at constant field

Date 2026-10-28. Target: TRUST_LEDGER row B3. Ledger tags: [P] proved here, [V] read verbatim in a project file, [I] interpretation, [R] reduction, [N] numerics.
Inputs read: TRUST_LEDGER rows B2, B3, X5; SOURCES_T2_PI + VERIFY; BETA_FP_H + VERIFY; BETA_FP + VERIFY; numerics/NUMERICS.md, ym_oneloop.py, ym_momentum.py; SOURCES_T2_V1.

## 0. Ledger rows (verbatim) [V]
- B3: "(F) lattice log coefficient = continuum log coefficient at constant field | none | T1 Route K | cited source checked (X5); lattice transfer not proved; (F) stays reduced to the open Step B (SOURCES_T2_PI_VERIFY)".
- X5: "(F) continuum log coefficient of the constant-field one-loop effective action | Savvidy, Phys. Lett. 71B (1977) 133, via arXiv:1910.00654 eq. (1.4) (BETA_FP_H_VERIFY §4)".
- B2: (PI) probe independence at fixed level, reduced [R, verified]; "(1.1) at L = 3 not evaluated".

## 1. Exact statements of (F) and Step B [V: SOURCES_T2_PI §7.2; VERIFY §7]
Fine bracket (BETA_FP_H (1.1)): Fine(Λ; f) = log det X − ½ log|det K|, the fine Wilson one-loop in background Feynman gauge at constant abelian fine flux φ = f/Λ² (colour σ_3, (0,1) plane), read per cell as log|det| (Nielsen–Olesen band).
- (F_lat): per fine cell, Fine at flux φ is a Λ-independent function F_W(φ) with F_W(φ) = n_2φ²[c_2 ln(1/|φ|) + B] + o(φ²), c_2 = 11N²/(24π²).
- (3.1) (the only use, Theorem 3.1 of BETA_FP_H): [Fine(Λ; f) − Fine(Λ′; f)]/(n_2f²) → c log(Λ/Λ′), c = 2c_2.
- Step A [P given (F_lat), verified]: Fine(Λ; f) = Λ⁴F_W(f/Λ²) ⇒ (3.1).
- Step B [I, open]: "the log coefficient of F_W is ½(2π)^{−4}∫_{S³} I_{−4} dΩ, the angular integral of the degree −4 part of the formal f² Moyal integrand; two-region control at level 0, including the n = 0 spin-down Nielsen–Olesen zero (eigenvalue k_⊥² − |φ|), which needs a log|det| bound".
- Step C [R, VERIFY-corrected]: I_{−4}^{lat} = I_{−4}^{cont} (Lemma 3.4 for the Wilson Hessian; gauge-fixing and ghost symbols [I]; meaningful only inside Step B).
- Step D [cited, source checked]: Savvidy (1.4) ⇒ c_2 = 11N²/(24π²), c = 0.371511 (SU(2)).

Remark on what (3.1) needs. Put G(φ) := F_W(φ)/φ². Since Λ⁴F_W(f/Λ²)/f² = G(f/Λ²), (3.1) is exactly
  (3.1′) G(φ) − G(λφ) → n_2c_2 ln(1/λ) as φ → 0, for each fixed λ = (Λ/Λ′)^{−2} ∈ L^{2Z}.
(3.1′) is weaker than (F_lat): G may carry a bounded term with period 2 ln L in ln φ. This form is used below.

Note on the caller's framing. The task text describes "a_j + b·log(L^j)" for the scale-j block determinant. In the project, the scale-j determinant is the massive total log Z_Λ, and its log in Λ comes entirely from the fine bracket through Step A. So the object to control is the single level-0 lattice functional F_W(φ) at small φ. The Λ-dependence is a pure rescaling; no block structure enters Step B.

## 2. The lattice transfer: split by an infrared mass
Notation. Charged sector only matters at order φ² up to analytic terms (see 2.0). A_φ := charged fine Feynman operator (Wilson Hessian + D_φD_φ^T on charged link fields, C⁴-valued per colour ±), 𝒢_φ := charged ghost D_φ^TD_φ. Both are magnetically covariant: A_φ = W_φ·a_φ with W_φ the Peierls phase and a_φ a finite-range matrix kernel, entire in φ (U3_LEMMA51 Lemma 3.1 setting). For m ≥ 0 put, per fine cell,
  W(φ; m²) := −½ log|det|(A_φ + m²) + log|det|(𝒢_φ + m²) − (same at φ = 0),
so F_W(φ) = W(φ; 0) + (neutral part). Signs follow Fine = log det X − ½ log|det K|.

2.0 Neutral sector [P]. At an abelian σ_3 background the neutral Hessian is the free one with each (0,1) plaquette weighted by cos φ (NUMERICS §2, the U(1) computation). Its log det per cell is log det(1 + (cos φ − 1)Δ_0^{−1}d_{01}^Td_{01}); Δ_0^{−1}d^Td has a bounded degree-0 symbol, so this is analytic in φ with an O(φ²) BZ-integral coefficient. No logarithm. It enters B only.

2.1 Lower bound [P, sketch]. Write U_p = e^{iφσ_3}e^{tY_p + t²Z_p + …}, Y_p the covariant curl of the fluctuation, Z_p a sum of commutators (tr Z_p = 0). The second-order term of 1 − ½Re tr U_p is −½Re tr(e^{iφσ_3}(Y_p² + 2Z_p))/… = cos φ·(positive square in Y_p) + sin φ·(bounded quadratic form). With D_φD_φ^T ≥ 0: A_φ ≥ −C_0|φ| for |φ| ≤ 1/2. 𝒢_φ ≥ 0. So A_φ + m² > 0 when m² ≥ μ|φ|, μ ≥ 2C_0.

2.2 Lemma 1 (massive regime, remainder in φ) [P modulo the magnetic-perturbation bound (MPT) below]. For 0 < m ≤ 1 and |φ| ≤ m²/μ:
  W(φ; m²) = φ² w_2(m²) + R(φ, m),  |R| ≤ C φ⁴ m^{−4},  C independent of φ, m.
Proof. W(φ;m²) = −∫_{m²}^∞ ds per-cell tr[(−½)((A_φ+s)^{−1} − (A_0+s)^{−1}) + ((𝒢_φ+s)^{−1} − (𝒢_0+s)^{−1})] (all operators positive for s ≥ m²). W is even in φ (charge conjugation, U3_LEMMA51 §2.1), so the φ³ term is 0. Taylor in φ to order 4 with integral remainder. (MPT): for a covariant operator W_φ·a_φ with a_0 elliptic of degree 2 (a_0(K) ≥ c|K̂|²), the per-cell trace of the resolvent at s satisfies |∂_φ⁴ tr_cell(A_φ + s)^{−1}| ≤ C s^{−3}, uniformly for |φ| ≤ s/μ. Reason: (W a)(W b) = W(a ⋆_φ b) with the kernel product weighted by e^{iφ·area(0,w,z)}, area ≤ |w||z − w|; each φ-derivative brings one area factor; the resolvent kernel at s decays on the scale s^{−1/2}; so by the dimension count (f-weight 2, K-weight 1) the φ⁴ coefficient of a degree −2 symbol integrated over d⁴K has scaling s^{2−1−4} = s^{−3}. Spin/artifact terms of a_φ − a_0 = O(φ) are bounded local insertions with the same count. Then ∫_{m²}^∞ s^{−3} ds = m^{−4}/2. ∎
(MPT) is standard gauge-covariant magnetic perturbation theory (Nenciu; Cornean–Nenciu type kernel bounds; lattice versions exist) [I-cite, not checked here]. The scalar ghost case is checked numerically in §3.2.

2.3 Lemma 2 (the log in m² is the continuum log) [P given Step C].
w_2(m²) = −∫_{m²}^∞ ds ∫_{BZ} dK/(2π)⁴ ρ_2(K; s), ρ_2 := tr of the φ² Moyal coefficient of the inverse symbol (U3_LEMMA51 (3.2)–(3.3) with 𝔨_0 → a_0 + s; the per-cell trace is the BZ integral of the symbol, BETA_FP_H §2.1 fact (i)). Put J(K; m²) := −∫_{m²}^∞ ρ_2(K; s) ds.
(i) Bounds: |ρ_2(K;s)| ≤ C(|K̂|² + s)^{−3} (BETA_FP_H (2.3a) count with 𝔨_0 + s). So |J(K;m²)| ≤ C(|K̂|² + m²)^{−2}.
(ii) Step C: on |K| ≤ δ the lattice symbols a_m (m = 0, 1, 2) equal the continuum ones times (1 + even O(|K|²)) with the derivatives needed (VERIFY §7 Step C: [P] for the Hessian by Lemma 3.4; ghost: the Peierls-substituted lattice Laplacian has magnetic Weyl symbol exactly |K̂|² (no f¹, f² symbol terms), so the ghost part is [P]; gauge-fixing D_φD_φ^T stays [I]). Hence ρ_2 = ρ_2^c(1 + O(|K|²)) relative, and |J − J^c| ≤ C|K|²(|K|² + m²)^{−2}.
(iii) Homogeneity of the continuum: J^c(λK; λ²m²) = λ^{−4}J^c(K; m²). So J^c(K; m²) = |K|^{−4} j(K̂, m²/|K|²) with j bounded, j(·, u) = O(u^{−2}) as u → ∞, and j(Ω, 0) = |K|⁴J^c(K;0) =: I_{−4}(Ω), the degree −4 part of Step B.
(iv) Split ∫_{BZ} = ∫_{|K|>δ} + ∫_{|K|<δ}. Outer part: continuous in m² ∈ [0,1], no log. Inner difference J − J^c: bounded by C|K|^{−2}, dominated, and |[J − J^c](m²) − [J − J^c](0)| ≤ C|K|^{−2}min(1, m²/|K|²), integral O(m² ln(1/m)). Inner J^c: ∫_{|K|<δ}d⁴K |K|^{−4}j = ∫_{S³}dΩ ∫_0^δ dr r^{−1} j(Ω, m²/r²) = ½ ln(1/m²)·∫_{S³} I_{−4} dΩ + const + O(m²/δ²).
Result:
  w_2(m²) = n_2c_2^{lat} ln(1/m²) + β_lat + O(m² ln(1/m)),  n_2c_2^{lat} = ½(2π)^{−4}∫_{S³} I_{−4} dΩ.   (2.1)
I_{−4} is built from continuum symbols only, so c_2^{lat} = c_2^{cont,m}, the ln(1/m²) coefficient of the φ² term of the continuum massive one-loop (the Seeley–DeWitt a_2 ∝ tr F² coefficient). This is the caller's "shell" mechanism: the O(|K|²) lattice corrections lower the degree to −2, which is summable; only the scale-invariant degree −4 part produces ln(1/m²). The Nielsen–Olesen mode plays no role here, since A_φ + m² > 0.

2.4 Continuum: ln(1/m²) coefficient = ln(1/|φ|) coefficient [P, continuum, standard]. In the continuum the per-volume heat trace at constant field is (4πt)^{−2}Φ(φt), Φ even, Φ(x) − Φ(0) = κx² + O(x⁴) (κ = gluon 10/3·(norm.) + ghost 1/3·(norm.), BETA_FP_H_VERIFY §4 split). Massive: −∫dt/t e^{−tm²}(4πt)^{−2}·κφ²t² gives κφ²/(16π²)·ln(1/m²) + const. Massless: with t = τ/|φ| the φ² ln(1/|φ|) coefficient comes from τ → 0 only and equals κ/(16π²) again; the Nielsen–Olesen growth of Φ at large τ affects only the constant (and the imaginary part). So c_2^{cont,m} = c_2 (Savvidy (1.4), X5). With 2.3: c_2^{lat} = c_2.

2.5 Lemma 3 (from m² = μ|φ| down to m = 0): the residue (L-LL) [open]. Define
  H_φ(μ) := φ^{−2}[W(φ; 0) − W(φ; μ|φ|)].
(L-LL) For each fixed μ ≥ μ_0, H_φ(μ) has a limit h(μ) as φ → 0 (value not needed).
Content: only spectrum of A_φ, 𝒢_φ at energies ≲ μ|φ| enters at leading order. In scaled units E = |φ|e this is the lattice Landau problem; (L-LL) says it converges to the continuum Landau problem (k_⊥ free, Landau levels (2n+1 ± 2)|φ| + k_⊥² for the vector, n = 0 spin-down = Nielsen–Olesen band through E = 0). Three parts: (a) vague convergence of the scaled per-cell spectral measures |φ|^{−2}(ν_φ − ν_0)(|φ|·de); (b) a uniform bound on the scaled density near e = 0 (the N–O zero: log|e| is integrable against a bounded density; needs a non-degenerate crossing ∂_{k_⊥²}E_0 ≥ c > 0 of the lattice n = 0 band); (c) a tail bound for e ≫ μ (follows from Lemma 1's remainder count). For the scalar ghost, (a) is a local limit theorem for the lattice walk with its Lévy area, i.e. on the discrete Heisenberg group (Alexopoulos, Ann. Probab. 30 (2002); Breuillard) [I-cite, not checked], and §3.2 checks the heat-trace version numerically. For the matrix-valued vector operator (spin term, lattice mixing of components) no source was checked; status [I].

2.6 Assembly [P given Lemmas 1, 2, 3]. Fix μ ≥ max(μ_0, 2C_0). For small φ, with m² = μ|φ| in Lemmas 1–2:
  G(φ) = F_W(φ)/φ² = w_2(μ|φ|) + R/φ² + H_φ(μ) + (neutral, analytic)
       = n_2c_2 ln(1/|φ|) − n_2c_2 ln μ + β_lat + O(μ|φ| ln) + O(μ^{−2}) + H_φ(μ) + b_n + o(1).
For fixed λ = L^{−2k}:
  G(φ) − G(λφ) = n_2c_2 ln(1/λ) + [H_φ(μ) − H_{λφ}(μ)] + O(μ^{−2}) + o(1).
By (L-LL) the bracket → 0. So limsup_{φ→0}|G(φ) − G(λφ) − n_2c_2 ln(1/λ)| ≤ Cμ^{−2} for every μ; let μ → ∞. This is (3.1′), hence (3.1), with c = 2c_2 = 11N²/(12π²). (F_lat) itself also follows, with B = −n_2c_2 ln μ + β_lat + h(μ) + b_n + O(μ^{−2}) independent of μ in the limit; it is not needed.
Explicit remainder. The quantitative form is |G(φ) − G(λφ) − n_2c_2 ln(1/λ)| ≤ Cμ^{−2} + Cμ|φ| ln(1/|φ|) + |H_φ(μ) − H_{λφ}(μ)|; with μ = |φ|^{−1/3} the first two give O(|φ|^{2/3} ln). A rate for (L-LL) would give a rate for (3.1); none is claimed.

2.7 What the argument does not touch. (F) is a one-loop statement (the fine bracket is the g⁰ term of log Z). There is no higher-loop residue inside (F). Higher loops enter Theorem 2w through Balaban's β_j(g) − β_j(0) (row A5, 7′), not through B3.

## 3. Numerics [N] (numerics/t2_fstepb_logcoef.py, Mac, 10 s)

3.1 What 0.3715 is. In NUMERICS.md and BETA_FP.md, 0.371511 = c = 11N²/(12π²) for SU(2) is the theoretical value, not a measured fit. No project number measures the level-0 coefficient c_2 of F_W directly (no d = 4 constant-field code exists; SOURCES_T2_PI_VERIFY item 27). The plane-wave codes measure the total 𝒞 = β_1(0), i.e. Fine − Γ_c, not Fine alone.

3.2 Mechanism check on the ghost factor [N]. The 4D charged ghost heat trace is exactly (2D Harper per-site trace) × (free 1D trace)². For the 2D lattice magnetic Laplacian (Landau gauge, N = 3000 torus, φ = 2πq/N, q = 1, 2, Richardson in φ²), the φ² coefficient c(t) of the per-site heat trace vs the continuum −t/(24π):
| t | 2 | 5 | 10 | 20 | 40 | 80 |
| c(t)/c_cont(t) − 1 | −0.197 | −0.0761 | −0.0378 | −0.0188 | −0.0094 | −0.0047 |
| t·(ratio − 1) | −0.394 | −0.380 | −0.378 | −0.376 | −0.376 | −0.378 |
So the lattice correction is relative O(1/t) with coefficient ≈ −0.376 (≈ −3/8). In the 4D proper-time integral ∫dt/t e^{−tm²}c(t) this correction is ∫dt/t²: finite, no logarithm. This is Lemma 2 (iv) in proper-time form, checked numerically for the ghost.
(L-LL)(a) for the scalar, heat-trace form: 4π sinh(τ)·T(φ, τ/φ)/φ − 1 = 6·10^{−4}, 1.2·10^{−3}, 2.5·10^{−3}, 5.0·10^{−3} at φ = 0.0021, 0.0042, 0.0084, 0.0168 (τ = 0.5; similar at τ = 1, 2). Linear in φ ⇒ the scaled lattice Landau heat trace converges to Mehler's formula at rate O(φ). This supports (L-LL) for the ghost; it does not test the vector operator or the N–O zero.

3.3 Several-L data for the log coefficient [N]. Available: first-step β_1(L) at odd L = 3…11 (umk results, Ng = 8 except L = 5 Ng = 12), and two composed steps at L = 2 only. Fixed coarse momentum Lp = 0.5 and 1.0, extrapolated β(0) ≈ (4β(0.5) − β(1))/3:
| L | 5 | 7 | 9 | 11 |
| β_1(0) | 0.7426 | 0.7968 | 0.8267 | 0.8436 |
| β_1 − c log L | 0.145 | 0.074 | 0.010 | −0.047 |
Local slopes dβ_1/d log L: 0.161 (5→7), 0.119 (7→9), 0.084 (9→11). Fits: a + s log L: s = 0.129; a + s log L + d/L²: s = 0.052; a + s log L + d(log L)²/L²: s = −0.18. None is near c = 0.3715, and the local slope decreases with L.
Reading.
- These data do not test Step B. By Step A the Fine part of β_1(L) is c log L + const exactly, given (F_lat). A slope deficit must therefore sit in Γ_c (the coarse bracket of the single step at block L, through d_1^{(L)} and the family dependence of C_∞), in the numerics (Ng = 8 adequacy at L ≥ 9 is unchecked, NUMERICS §7), or in (F_lat) itself. Lemma 2 + §3.2 make the last option unlikely: the lattice log coefficient of the massive level-0 functional is the continuum one.
- Theorem 3.1 of BETA_FP_H is about one fixed-L family, Λ = L^j, j → ∞. The single-step L-scan is a different family at each L. Its expected form, if the single-step coarse kernel converges as L → ∞ (U3 Theorem 4.1 type) at rate L^{−2}, is c log L + C + O(L^{−2}·logs). The data do not show this at L ≤ 11: β_1 − c log L falls by about 0.06 per step and does not level off. NUMERICS §7 calls this "decreasing toward the universal slope"; that reading is not supported. I flag this as an open [N] tension for β_∞ = c log L (row B4/Theorem K inputs, not B3).
- Fixed-family data (the right test): L = 2, β_2 ≈ 0.32 (Ng = 8, Lp-bias label) vs c log 2 = 0.2575; one point, consistent with approach from above, cannot fit a log coefficient.

## 4. Conclusion and ledger

Verdict on Step B: REDUCED (narrower than before). Not PROVED.
- The log coefficient itself is settled at one loop: with an infrared mass m² ≥ μ|φ|, the lattice φ² coefficient is n_2c_2 ln(1/m²) + β_lat + O(m² ln(1/m)), with c_2 the continuum value (Lemma 2 [P given Step C], Lemma 1 remainder O(φ⁴/m⁴) [P modulo the (MPT) kernel bound], §2.4 continuum ln m² = ln φ coefficient [P, standard]). The Nielsen–Olesen zero does not enter this part.
- The only open piece is (L-LL): the scaled low-energy part H_φ(μ) = φ^{−2}[W(φ;0) − W(φ;μ|φ|)] has a limit as φ → 0. It carries the Nielsen–Olesen zero. Its value is not needed. For the scalar ghost it is a lattice-walk local limit statement (cited candidate, not checked; numerically confirmed at rate O(φ), §3.2); for the vector operator it is [I].
- Given (L-LL): (3.1) holds with c = 11N²/(12π²), with remainder ≤ Cμ^{−2} + Cμ|φ| ln(1/|φ|) + |H_φ(μ) − H_{λφ}(μ)| (§2.6).
- No higher-loop residue: (F) is a one-loop statement.

Proposed text for row B3 (for the ledger owner; this file edits no ledger):
"(F) [continuum value X5, source checked]. Lattice transfer (SOURCES_T2_F_STEPB): Step B split into (i) the massive log coefficient = continuum [P given Step C; gauge-fixing symbol (D_φD_φ^T) [I]; (MPT) remainder bound [I-cite]] and (ii) (L-LL), existence of the scaled low-energy limit H_φ(μ), carrying the Nielsen–Olesen zero [open; ghost: numerically confirmed, LLT on the discrete Heisenberg group cited, not checked]. (F) ⇐ (i) + (L-LL) [P, §2.6]. Unverified."
Status change: B3 goes from "lattice transfer not proved; reduced to Step B [I]" to "reduced [R, unverified] to (L-LL) + (MPT) + the gauge-fixing part of Step C". It stays in the list of Route K items without a proof or a verified reduction until a verifier checks this file.

Ledger of this file.
- [V] §0, §1: rows B2, B3, X5; Steps A–D as stated in SOURCES_T2_PI §7.2 and VERIFY §7.
- [P] §1 remark: (3.1) ⇔ (3.1′); (F_lat) is stronger than needed.
- [P] 2.0 neutral sector analytic; 2.1 A_φ ≥ −C_0|φ| (sketch: cos φ·square + sin φ·bounded).
- [P mod (MPT)] Lemma 1. [P given Step C] Lemma 2. [P, continuum] 2.4. [P given Lemmas 1–3] 2.6.
- [P] ghost part of Step C: Peierls-substituted Laplacian has exact magnetic symbol |K̂|² (upgrade of VERIFY's [I] for the ghost; the gauge-fixing term stays [I]).
- [I] (MPT) citation; (L-LL) for the vector operator; Alexopoulos/Breuillard LLT as the ghost source (not checked).
- [R] Step B ⇐ Lemma 1 + Lemma 2 + (L-LL).
- [N] §3.2: Harper φ² heat-trace coefficient ratio − 1 = −0.376/t (t = 5…80); scaled heat trace → Mehler at rate ≈ 0.29φ.
- [N] §3.3: single-step β_1(L), L = 5…11: slope 0.08–0.16, not c = 0.3715; open tension, located outside B3 (coarse bracket / family dependence / grid), to be raised against BETA_FP_H Theorem 3.1 and NUMERICS §7.
- Not done: no d = 4 constant-field computation; (1.1) at L = 3 still unevaluated; no verifier.

Corrections after verification (SOURCES_T2_F_STEPB_VERIFY, 2026-10-28): Theorem 3.1 and β_∞ concern the fixed-L composed family β_∞ = lim_k[𝒞(L^{k+1}) − 𝒞(L^k)]; NUMERICS §7 compares the single-step β_1(L) across L, a different family per L, and "β_∞ = 0.3715 log L" was never computed (0.3715 = the theoretical c). One step should carry the full slope as L grows (β_1(L) = c log L + C + O(L^{−2}log L)); the data fall instead (local slopes 0.142 (converged grids, 5 → 7), 0.119, 0.084) — NUMERICS §7 is wrong as written and becomes an open [N] tension; the data do not refute Theorem 3.1 (different family) but do not support it; likely cause (unproved): an IR scale 2.54/L from the ghost with one anchor per block and the longitudinal modes. Lemma 1's cited bound needs magnetic Weyl symbol-class bounds (or the diamagnetic inequality for the scalar ghost); Lemma 2 confirmed given Step C; Step C's gauge-fixing part [I] (bond-field symbols a_1, a_2 and the evenness of their O(K²) corrections missing); (L-LL) UNSUPPORTED as a theorem (H_φ(μ) = O(1); the Nielsen–Olesen zero gives a flat density, O(1), no log; proof route: Helffer–Sjöstrand semiclassics of the Harper bands). Decisive numerical test: Ng ≥ 2.5L at L = 9, 11 — a box job (pending runs: L = 9, Ng = 12, Lp = 0.5 checkpointed at 1410/1512 K points; resume `numerics/.venv/bin/python t2_fstepb_verify_umk.py 9 12 0.5`).
