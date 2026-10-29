IDs follow IDS.md (new scheme). Map used here: Theorem IV = L-196; IV L2 (UV constants ℓ-free) = L-319; IV L3 (FX-V) = L-320 / H-106; IV L5 (Lemma C pointwise) = L-322; IV L6 (S1-pt) = L-323 / H-165; IV L14 (Loc-f) = L-331 / H-142; B18 (N3) = R-042; B19 (FX) = R-043; B20 = R-044; S1 (sourced Theorem 1) = R-035; Route CMP 99 Thms 3.7–3.10 in full generality = R-024; C_f properties = R-016; C13 = K-014; (Vol) = K-032; ℓ even = K-019; FX O1/O2/O3 = Q-059/Q-060/Q-061; (FX2) = H-191. File-local labels (Steps, (U_ℓ), Lemma ADM, (FI_f), (FI_LF)) are not global ids.
# SOURCES_L2_L3L14 — proofs of L-320 (FX-V) and L-331 (Loc-f), reduced to ledger inputs

Date: 2026-10-28 (Opus 5.5). Type: derivation. Edits: this file only. No existing file edited, PLAN.md not touched, sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened and excluded from every grep.
Grades: [P] proved here; [P-sketch] proved here with one step written as an outline; [V] read this session on a rendered page image (150 dpi, /tmp/l3l14_img, deleted after use) or quoted verbatim from a named project file; [R] reduction to a named ledger row, project result, or standard literature, text not re-derived; [I] inference or reading, not printed anywhere.
Inputs read: INFINITE_VOLUME_FABLE §1–§3, §7 (full); FABLE_HARD §0–§1 (full); FABLE_HARD_VERIFY §0, §A–§E (grep + rows C-01, C-30, C-38, C-39, C-42, C-48, C-54, C-57, C-61, E10, §C.2); TRUST_LEDGER §4.3, rows R-016, R-024, R-042, R-043, R-044, R-052; INFINITE_VOLUME_IV12 (full) + VERIFY (full); SOURCES_A15_LOC §6–§9; SOURCES_A15_LOC_VERIFY (verdict); SOURCES_A15_BDRY §2–§5; SOURCES_A15_BDRY_VERIFY (grep of verdicts); SOURCES_FX §5–§7; SOURCES_FX_D §4–§5 (statements); SOURCES_FX_O23 l. 90; SOURCES_D3_NEW4 §1. Grep for volume factors (|T_η|, |T|, ℓ⁴, "volume-dependent") in SOURCES_D3, D3R, D3W8, D2C, FX, FX_O1, FX_O23, FX_R2, FX_D, B20_W4R, D3_NEW4, FABLE_O3_ALC: one hit only, SOURCES_FX l. 50, which says that (0.1) is NOT used.

## 0. Result in six lines

1. L-320 (FX-V) is PROVED relative to: the Target 2 hypotheses on T_ℓ for every admissible ℓ (incl. R-042 for the radius c·r), the standard Kotecký–Preiss theorem [R], and one uniformity input (U_ℓ): Balaban's base constants and the S1 constants do not depend on the torus side. (U_ℓ) is the part of L-319 that L-320 uses. It is not printed (CMP 122 II p. 355 [V]); §3.6 gives the exact obstruction and the weakest repair.
2. L-331 (Loc-f) is PROVED relative to construction-reading inputs only: Theorem LOC's inputs, Theorem BDRY's inputs, Claim L_G (SOURCES_A15_BDRY §3.2), and two new readings (FI_f), (FI_LF) [I]. The large-field part (Step-A polymers) is [P-sketch]. No analytic estimate and no ℓ-dependent constant enters. The wrapping bound uses L-320.
3. The Z⁴ activities need no Z⁴ large-field construction. They are defined as torus activities on any torus on which the polymer is liftable; L-331 makes this definition consistent (Lemma DEF, §4.1).
4. ℓ-dependence check (the analogue of FABLE_HARD_VERIFY E10). No rescaling occurs: the unit scale is the physical unit for every ℓ, K = log_L ε^{−1} does not depend on ℓ, and every rate is in physical units (wrapping rate (κ − c_0)/(4M)). One quantifier correction applies: "every even ℓ > 22M" must be "every ℓ in the admissible set 𝓛(g)" of Lemma ADM (§2).
5. Theorem IV after this file (§6.1): conditional on Target 2 at every ℓ ∈ 𝓛(g), (U_ℓ), and L-323's own readings; parts (a)–(b) need no L-320 hypothesis; part (c) adds only construction-reading inputs.
6. Proposed statuses: L-320 "proved relative to listed inputs, unverified"; L-331 "proved relative to construction-reading inputs, unverified; large-field part P-sketch"; L-319 narrowed to (U_ℓ) and named as a hypothesis of L-196.

## 1. Page facts used [V, rendered this session at 150 dpi]

PDF page = journal page − 354 (CMP 122 II), − 174 (CMP 122 I), − 242 (CMP 119).
- F1. CMP 122 II p. 355, Theorem 1: "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." No quantifier links γ, or the constants of Sect. 2 [III], to the torus T_η.
- F2. CMP 122 II p. 356, line 1: "with the constants E_−, E_+ independent of k, T_η, U_k." This refers to (0.1) on p. 355, χ_k exp[−g_k^{−2}A(U_k) − E_−|T_η|] ≤ ρ_k ≤ exp E_+|T_η|. Volume independence is printed for E_± only.
- F3. CMP 122 I p. 176, (0.3)–(0.6): (ℝρ)(V) = Σ_Z ρ(Z″, V) ∫dV_{Z′}ρ(Z, V)/∫dV_{Z′}ρ(Z″, V); (0.4) ∫dV(ℝρ)(V) = ∫dVρ(V); (0.5) Σ_{Z′⊂Z″^c} ∫dV_{Z′}ρ(Z′ ∪ Z″, V)/∫dV_{Z′}ρ(Z″, V) = exp Σ_X ℝ(X, V), "the last sum is over X such that X ∩ Z″^c ≠ ∅".
- F4. CMP 122 I p. 177: the denominators are "the integrals of some parts of these densities. More precisely, we take the parts localized in neighborhoods of the domains Z′, so they do not depend on the large field regions Z″, and they are determined by small field effective actions only." Renormalized components satisfy "(i) it is contained in a cube of the size 100MR_k". Factorization (1.1): 𝕋_k(Z_k) = 𝕋_k(Z_k ∩ Z^c) Π_{i=1}^m 𝕋_k(X_i) over the disjoint components X_i.
- F5. CMP 122 II p. 383, (1.77)–(1.79): (1.77) carries the constant O(1)A_0A_1²B_3⁴B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j, and the text says "We assume that g_j is sufficiently small, so that the constant on the right-hand side above is small, or O(1)". The integrals over A_j give "exp O(1)|Z_j ∩ Ω_j|"; the sums over admissible sequences give "exp O(1)(MR_j)^{−d}|Z_j|". Then (1.79) T′_k(X)1 ≤ sup exp{Σ_j O(1)M^dR_j^{d+1}d′_j(Z_j)} · Π_jΠ_i exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j)) Π′exp(−p_0(g_j)), and "The supremum is taken over all admissible domains". Every volume in F5 is the volume of a large-field set inside the component X, not of T_η.
- F6. CMP 122 II p. 390, (1.98)–(1.101): {⋯} = exp R′^{(k)} = exp Σ R′^{(k)}(X); "The expression R′^{(k)}(X) depends on the background field U_k restricted to X, and it can be extended as an analytic function of the variables (U, J), defined on the space Ũ_k^c(X, α̃_0, α̃_1). It is given by the convergent series (7.13) [I]"; (1.99) |R′^{(k)}(X, (U, J))| ≤ O(1)c_1 exp(−(1 + ½β)κd_{k,∪Y_i}(X)); (1.100) |R′^{(k)}(X, (U, J))| ≤ exp(−p_0(g_k))exp(−κd_k(X)) for X disjoint from Z̃_k ∪ ∪Ỹ_i; "Euclidean covariant, i.e., they have the property (2.32) [III]"; (1.101) A_k = A′_k + Σ_X R′^{(k)}(X, U_k) + Σ_X B′^{(k)}(X, U_k).
- F7. CMP 119 p. 259, (2.24)–(2.28): 1/g²_{j−1}(x) = 1/g²_j(x) + β_j(g_{j−1})φ_j(x); E_k(U_k) = Σ_j [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1})A(φ_j, U_k)]; E^{(j)}(Λ_j, U_k, z) = Σ_{X∋z} E^{(j)}(X, U_k, z), X ∈ D_j, X ⊂ Λ_j, with "(i) it depends on U_k restricted to X; (ii) there exists an analytic function E^{(j)}(X, (U, J), z) … (U, J) ∈ U_j^c(X, α_{0,j}, α_{1,j}); (iii) … invariant with respect to the gauge transformations; (iv) it satisfies the inequality (I.1.18)". α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}.
- F8. CMP 119 p. 278, after (3.47): "The important remark is that the terms E_0^{(k+1)}(Λ_{k+1}, X, z) of this representation, for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]."
- F9. CMP 119 p. 280, (3.48): |E^{(j)}(X, z)| ≤ E_0 exp(−κ(L^jL^{−n})^{−1}) exp(−½κd_j(X)), "by the bound (I.1.18)"; the sum over X is "an admissible error".
Consequence of F1–F2 and F5 [P]: Balaban prints volume independence only for E_±; every smallness condition visible on pp. 383 and 390 is a per-cube or per-component inequality with no factor of |T_η|. This is evidence for (U_ℓ) (§3.6), not a proof.

## 2. Which ℓ, in which units (the E10 check)

### 2.1 Units [P]
The lattice is T_ε = (εZ/ℓZ)⁴, ε = L^{−K}. Balaban's step k has lattice spacing L^kε; the last step K reaches spacing 1 (FABLE §1.1 [V]; F3 "reach the unit lattice", CMP 122 I p. 176). So the unit scale is the physical unit for every ℓ, and K depends on ε only. A scale-m distance d_m(X) counts cubes of physical side Mλ_m, λ_m := L^{m−K}. A change of ℓ changes only the number ℓ/M of unit cubes per side. No step of L-320 or L-331 runs extra RG steps, so no constant is read in rescaled units.
Contrast with E10 (FABLE_HARD_VERIFY C-48(ii)). Theorem FD runs K + k(ℓ) steps; there the unit scale moves with ℓ, so constants uniform "in rescaled units" become polynomial in ℓ in physical units. Here k(ℓ) = 0. So the E10 correction does not apply to L-320 or L-331. Every rate below (FX3 decay κ/M per unit length at the unit scale; wrapping rate (κ − c_0)/(4M), §5) is in physical units and ℓ-free.
Two ℓ-dependences of E10 type were found earlier and are already repaired. (i) (S) on σ ≤ ℓ/8 hides C_S ∝ ℓ^a; the ℓ-free form is (S′) with max(1, σ^{−a}) (IV12_VERIFY §7, §11; FABLE §2.4(d)). (ii) ASSEMBLY_N1's whole-torus counts; replaced by support counts (Lemma N1-B, IV12 §3.1, VERIFY §8). Neither is touched here.

### 2.2 Lemma ADM (admissible torus sides) [P given the cube conventions; I where marked]
The constructions need: (a) ℓ even (K-019); (b) every cube partition at every level is the π-image of a Z⁴ partition (LOC (Conv), A15_LOC §6.0 [V]); (c) (Vol) in the corrected form N_k > 22M (A15_BDRY_VERIFY item (e), K-032); (d) the R-operation's renormalized components fit: a cube of side 100MR_k (F4) must lie in a liftable box, so the torus side at level k in level-k units is > 200MR_k [I: Balaban states no torus size; this is the condition under which F4's cube is a cube of the torus]; (e) the A1 torus-side bound ℓ_{A1} (IV12 table row 2).
Cube sides: M = L^m and R_1 a power of L are on CMP 109/116 pages (A15_LOC §6.0 [V]); M_1 and every R_k a power of L [I; CMP 122 I p. 177 says R_k "decreases by the factor L^{−1}" in some steps, F4, consistent with powers of L].
Define, for fixed g and L, n_0 ∈ N minimal such that L^{n_0} ≥ max over levels of the largest cube side in physical units, and
  𝓛(g) := {ℓ ∈ 2L^{n_0}N : ℓ ≥ ℓ_0(g)},  ℓ_0(g) := max(22M, 200MR_K(g), ℓ_{A1}).
Claim: 𝓛(g) does not depend on K, and every ℓ ∈ 𝓛(g) satisfies (a)–(e) at every level k ≤ K.
Proof. At level k the torus side in level-k units is ℓL^{K−k}, and the largest cube side is c_k ≤ C·M·R_k (level-k units). R_k ≤ C_R(log g_k^{−2})^{p_R} (FX §5 note [V]) and g_k^{−2} ≤ g^{−2} + B′(K − k) by (c′) (L-001, Theorem 2w). So c_kλ_k ≤ C M C_R (log(g^{−2} + B′n))^{p_R} L^{−n}, n = K − k, which is bounded in n (a power of a logarithm against L^{−n}). Hence sup_k c_kλ_k =: c_* < ∞ depends on (g, M, L, C_R, p_R, B′) only, and L^{n_0} ≥ c_* makes every cube side a divisor of ℓ (all are powers of L, L odd, ℓ = 2L^{n_0}q). Conditions (c)–(d) are monotone: they hold at level K by ℓ ≥ ℓ_0(g), and at level k < K the torus has L^{K−k} times more level-k cells while 200MR_k grows only like a power of log(K − k). ∎ [P given (c′) and the power-of-L reading [I]]
R_K(g) is fixed because g_K = g. 𝓛(g) is infinite. So Theorem IV(a) can take ℓ_i ∈ 𝓛(g), and its hypothesis "Target 2 at every even ℓ > 22M" can be weakened to "at every ℓ ∈ 𝓛(g)" (or on an infinite subset of 𝓛(g)). This is the only quantifier correction found.

## 3. L-320 (FX-V): proof relative to ledger inputs

### 3.1 Statement (FABLE §2.2, with the set 𝓛(g) of §2.2)
For every ℓ ∈ 𝓛(g) and K ≥ K_0 there are polymer families P_m (m ≤ K) and activities a_m(Γ; f, V) with
  Δ(f, V) := log ρ̂_K^f(V) − log ρ̂_K^0(V) = Σ_{m≤K} Σ_{Γ∈P_m} [a_m(Γ; f, V) − a_m(Γ; 0, V)]   for V ∈ supp χ_K,
such that (FX1) a_m(Γ; f, V) depends on f only through f|_Γ and on V only through V|_Γ; (FX2) it is holomorphic in f on the polydisc of radius τ_m(Γ) ≥ c_τ r (c·r form given R-042); (FX3) |a_m(Γ; f, V)| ≤ E_0e^{−κd_m(Γ)} on that polydisc; (FX4) #{Γ ∈ P_m : Γ ∋ □, |Γ| = s} ≤ e^{c_0s}; with E_0, κ, c_0, c_τ independent of V, K and ℓ.

### 3.2 Step 1 — the representation at one fixed ℓ [P given R-043 Step A and R-035]
Target 2's hypotheses on T_ℓ include R-043 Step A and S1 (R-035). Step A applies F3 (0.5) with Z″ = ∅ at the last scale (FX §6.1 [V]): ρ̂_K^f(V) = χ_K(V) exp(A_K^f(V) + Σ_X R_fin^f(X, V)). The thresholds of χ_K are unsourced (SOURCES_D3_NEW4 §1 [V file]: "the minimizer, the gauge, the domains, and the thresholds are NOT sourced"). So χ_K cancels in Δ, and Δ is defined on supp χ_K. A_K^f is −w_K^f·A(V) plus the localized terms of F7 and F6 (FABLE_HARD §1.1 inventory (b1)–(b4), C13 = K-014). Put:
- P_K ⊃ unit plaquettes p, with a_K(p; f, V) := −[w_K^f − w_K^0](x_p)A_p(V). This vanishes at f = 0, so it changes no difference in Δ. Its size is ≤ 2 sup|w_K^f − w_K^0| ≤ 2C_B r on the source disc (w_K^f = Φ_K(g_0^{−2} − f) pointwise, Φ_K′ = B_K bounded, SOURCES_VERIFY item 8 via ASSEMBLY §0 [V file]; h ≡ 0 under the main booking, FABLE Lemma h_K).
- P_K ⊃ D_K (unit-scale E-terms) and the Step-A polymers U (R_fin).
- P_m = D_m for m < K: the transported E^{(m)}(X, ·; f) − E^{(m)}(X, 1; f) minus the extracted counterterm, and R′^{(m)}(X, ·; f) − R′^{(m)}(X, 1; f). By F7 (i) and F6, each depends on the current field only on X.
(FX1) in V is F7 (i), F6 ("depends on the background field U_k restricted to X"), and the polymer structure of Step A. (FX1) in f: the source enters only through plaquette weights w(p) = u_k(f(x)) (D3_NEW4 §1) and the pointwise maps B_j∘f (D2C (5.1)); both are local [R to R-035, R-036].

### 3.3 Step 2 — every bound holds at each fixed V [V + P]
Every bound used by (FX3) is a supremum: F7 (ii), (iv) on U_j^c(X, α_{0,j}, α_{1,j}); F6 (1.99)–(1.100) on Ũ_k^c(X, α̃_0, α̃_1); F5 (1.79) "The supremum is taken over all admissible domains". The Step-A activity bound |K(U)| ≤ e^{−p_0(γ)}e^{−κ′d_K(U)} (FX §6.1 [V file]) is built from these by products, sums, and Mayer links, so it holds for every fixed V ∈ supp χ_K. The Cammarota/Kotecký–Preiss criterion of Step A uses only these sup bounds, so it holds for every V with the same constants, and its output R_fin(X, V) obeys the output bound for every V. So "the pointwise-in-V reading of Step A" (INFINITE_VOLUME_FABLE_VERIFY §4.1) is the printed form, not an extra input. [V F5 + P]

### 3.4 Step 3 — (FX4) on the torus [P]
Lift a minimal spanning tree of a connected torus polymer Γ ∋ □: this gives a connected Z⁴ polymer Γ̂ ∋ □̂ with d(Γ̂) ≤ d_T(Γ), and Γ ↦ Γ̂ is injective (A15_BDRY §3.4(ii); CONFIRMED with this precision, A15_BDRY_VERIFY item (c)). So the torus count is at most the Z⁴ count, and c_0 = c_0(d) is the Z⁴ constant for every ℓ.

### 3.5 Step 4 — (FX2), (FX3): every constant is a formula in base constants with no ℓ [V files + P]
Let 𝔅 := (γ, E_0^{Bal}, κ, β, p_0(·), p_1(·), C_R, p_R, γ_0, A_0, A_1, B_3, B_5, C_0, C_1, q_0, q_1) be Balaban's base constants and 𝔖 := (r, ρ_1, c_τ, θ, c, C_B) the S1 constants. Then:
- unit and fine E-terms: E_0^{Bal}e^{−κd} on the joint domain, radius r (S1(c), R-035);
- R-terms: e^{−p_0(g_m)}e^{−κd_m} (F6 (1.100));
- Step-A polymers: e^{−p_0(γ)}e^{−κ′d_K}, κ′ from SOURCES_FX_R2 ("κ_final ≤ 6κ … depends on (d, κ, β) only", IV12 §4.1 [V file]) and FX_O1 (κ_K(Y) ≥ cM^dR_K^dd′_K(Y), Q-059 verified);
- Step-A convergence: the Kotecký–Preiss output bound depends only on the criterion constant [R: Kotecký–Preiss 1986]; the R-step version has K′_KP = 2·3^de^{1+5(1+½β)κ}S(½βκ − 24) (row R-044, W4R Lemma KP-D [V ledger text]);
- (FX2) radius: c·r for R-ratios at every scale, "independent of m, K, ε, and |Λ_i|" (SOURCES_FX_D Lemma FX-D [V file], mechanism Φ(g) = C(M)g²(log g^{−2})^{2p_0+4p_R}); c·r for large-field numerators by O3 given R-042 (Q-061); r for E-terms.
- coupling term: 2C_Br (Step 1).
None of these formulas contains ℓ or |T_η|. The grep of §0 found no volume factor in any constant of the sourced chain. So (FX2)–(FX4) hold with constants that are functions of (𝔅, 𝔖, M, L, d) only. The same applies to the contact polymers of W_K (S1(b)), which (S∞) uses through Lemma C Step 9. [P given the cited files]

### 3.6 Step 5 — the one residue (U_ℓ): exact obstruction and weakest repair
(U_ℓ). One choice of (𝔅, 𝔖) makes Balaban's Theorem 1 and the sourced chain S1 hold on T_ℓ for every ℓ ∈ 𝓛(g).
Step 4 reduces the ℓ-uniformity of (FX-V) to (U_ℓ). (U_ℓ) is the part of L-319 (L2) that L-320 needs.
What is known. (i) Theorem IV fixes one γ for all ℓ (§7.1 "g ∈ ]0, γ] with γ as in Theorem 2w"), so the γ-part of (U_ℓ) is already inside its hypotheses. (ii) The propagator constants are volume-uniform by statement: rows R-004 and R-008 say "uniform in … volume" [V ledger text]. (iii) E_± are volume-free (F2). (iv) The smallness conditions read on the pages are per-cube or per-component inequalities (F5 (1.77): "g_j sufficiently small, so that the constant … is small"; FX §5 [V file]: "−2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −¼p_0(g_k)").
Obstruction (exact). Theorem 1 (F1) is a statement on one torus, with no printed order of quantifiers between γ, the constants of Sect. 2 [III], and T_η. The project's chain proves "uniform in K, ε" (row R-043), never "uniform in the torus". To prove (U_ℓ) one must check that no inductive smallness condition of CMP 109, 116, 119, 122 I–II contains a global quantity of T_η. That is the L-319 audit; it is not done here, and no single page settles it. [I]
Why L-331 does not remove it [P]. L-331 makes a non-wrapping activity on T_ℓ equal to the same activity on a smaller torus T_{ℓ′}. A polymer of diameter D needs ℓ′ > 2D. So bounds for all polymer sizes need constants on arbitrarily large tori. Some uniformity along ℓ → ∞ is unavoidable.
Weakest repair, given L-331 [P-sketch]. Replace (U_ℓ) by
 (U_ℓ^poly). There is an infinite set 𝓛′ ⊂ 𝓛(g), with γ fixed, such that on every T_ℓ, ℓ ∈ 𝓛′, the chain holds with constants E_0(ℓ), κ(ℓ), c_τ(ℓ), c(ℓ) obeying κ(ℓ) ≥ κ_* ≥ 2(8c_0 + 8) (twice the requirement κ ≥ 8c_0 + 8 that IV12_VERIFY §13 quotes for Lemma C), E_0(ℓ) ≤ C_E(1 + ℓ)^p, c_τ(ℓ)^{−1} + c(ℓ)^{−1} ≤ C_τ(1 + ℓ)^p, for fixed κ_*, C_E, C_τ, p.
Proof sketch. Take a non-wrapping Γ ∈ P_m on T_ℓ with diameter D (physical). Let ℓ′ be the least element of 𝓛′ with ℓ′ ≥ 2D + 6c_* (§2.2). Then ℓ′ ≤ C(1 + D) if 𝓛′ has bounded gaps on a log scale [I: true for 𝓛′ = 𝓛(g); for a sparse 𝓛′ the bound is ℓ′ ≤ G(D) with G the gap function, and p must be read with G]. L-331 (§4) gives a_m^{T_ℓ}(Γ) = a_m^{T_ℓ′}(Γ) on the analyticity domain of Γ, which is a set of configurations on Γ only (F7 (ii), F6). So |a_m(Γ)| ≤ C_E(1 + ℓ′)^p e^{−κ_*d_m(Γ)}. Since d_m(Γ) ≥ D/(Mλ_m) − 1 ≥ D/M − 1, the factor (1 + ℓ′)^p ≤ C(1 + D)^p is absorbed: |a_m(Γ)| ≤ E_0′e^{−(κ_*/2)d_m(Γ)}. A wrapping Γ on T_ℓ has D ≥ ℓ/2 − 3c_*, so E_0(ℓ) ≤ C(1 + D)^p and the same absorption applies. The radius loss is not free. A polymer that meets |S| supports pays (C_τ(1 + D)^p)^{|S|} in the Cauchy step, and sup_D (1 + D)^{p|S|}e^{−(κ_*/4)D/M} ≤ (C|S|)^{p|S|}. So Lemma C (L-322) runs with ℓ-free constants and Gevrey order 1 + η + p in place of 1 + η (the same kind of loss as the FX §6.3(c) fallback). With ℓ-free radii (p = 0 in the radius clause) the order stays 1 + η. (FX4) is unchanged. ∎ [P-sketch given L-331; the gap condition is I]
(U_ℓ^poly) is strictly weaker than (U_ℓ): it allows E_0 (and, at a Gevrey cost, the inverse radii) to grow polynomially in ℓ along a subsequence. It does not allow κ to decay with ℓ. No weaker form is visible: if κ(ℓ) → 0, Lemma C's mixed-block decay e^{−κσ/(2Mλ_m)} is lost.

### 3.7 Verdict on L-320
L-320 (FX-V) is PROVED relative to: (i) the Target 2 hypotheses on T_ℓ for every ℓ ∈ 𝓛(g) (L-001, Balaban's Theorem 1, R-035 S1, R-043 Steps A, C, D, R-042 via Q-061 for the c·r radius); (ii) (U_ℓ), or (U_ℓ^poly) given L-331; (iii) the Kotecký–Preiss theorem [R, standard]. Grades: Steps 1, 3, 4 [P given cited files]; Step 2 [V F5 + P]; Step 5 obstruction [I], repair [P-sketch]. Input (i) is already a hypothesis of L-196. So L-320 adds exactly one input to L-196: (U_ℓ) (or (U_ℓ^poly)). The residue "R-042 via O3" stated in FABLE §7.2 is unchanged and is part of (i). Without R-042, (FX2) holds with the D3 radius c_τr/(E_0R̄_m⁴), and Lemma C gives the fallback Gevrey order ≤ 1 + η + 4p_R/p_0 (FX §6.3(c) [V file]); OS0 still holds with that order.

## 4. L-331 (Loc-f): proof relative to construction-reading inputs

### 4.1 Statement and the definition of the Z⁴ activities
Collar and liftable as in A15_LOC §6.0 [V file], with collar width c_* (§2.2) in physical units: Γ^♯ := Γ plus one layer of width c_*; Γ^♯ is liftable on T_ℓ if Γ^♯ ⊂ π(B) for a box B ⊂ R⁴ of side < ℓ/2. Then π|_B preserves distances, cubes, walls and connectedness (A15_LOC §6.0 [V file]).
(Loc-f) = L-331. For all ℓ, ℓ′ ∈ 𝓛(g), every m ≤ K, every Γ ∈ P_m(T_ℓ) with liftable collar, and every Γ′ ∈ P_m(T_ℓ′) with liftable collar and the same lift Γ̂ ⊂ R⁴:
  a_m^{T_ℓ}(Γ; f, V) = a_m^{T_ℓ′}(Γ′; f′, V′)   whenever f, f′ and V, V′ have the same lifts on Γ̂,
for every constituent class (b1)–(b4) of §3.2, sourced, including the Step-A polymers.
Lemma DEF [P given (Loc-f)]. For a Z⁴ polymer Γ̂ at scale m (built from cubes of the Z⁴ partitions of §2.2) and data (f̂, V̂) on Γ̂, put 𝒜_m(Γ̂; f̂, V̂) := a_m^{T_ℓ′}(πΓ̂; πf̂, πV̂) for any ℓ′ ∈ 𝓛(g) for which the collar of Γ̂ lies in a box of side < ℓ′/2. By (Loc-f) the value does not depend on ℓ′. So 𝒜 is well defined, and no Z⁴ large-field construction is needed. For the small-field E-terms, Theorem LOC (A15_LOC §7.5, CONFIRMED with minor corrections [V file]) identifies 𝒜 with CMP 109's Z⁴ term. Put Δ_∞(f, V̂) := Σ_m Σ_{Γ̂} [𝒜_m(Γ̂; f, V̂) − 𝒜_m(Γ̂; 0, V̂)]. ∎
Translations. The partitions have a fixed origin, so 𝒜 is covariant only under translations by multiples of the largest cube side, and the covariance is the one the source and field carry along. This agrees with FABLE_HARD_VERIFY C-42(i) (Λ_geo invariance) and is all FABLE (3.2) uses.

### 4.2 Constituent (b1), coupling term [P]
a_K(p; f, V) = −[Φ_K(g_0^{−2} − f(x_p)) − Φ_K(g_0^{−2})]A_p(V) (h ≡ 0, main booking). Φ_K is built from the whole-lattice β_j (CMP 109 (1.22) via A15_LOC Lemma S(b) [V file]; L-318/IV-1, IV12 §1 [V file]). So it is one function for every ℓ, and a_K(p) is the same function of (f(x_p), V|_p) on every torus.

### 4.3 Constituents (b2), (b4-E), (b4-F): sourced small-field E-terms [P given LOC inputs + (FI_f)]
The source enters the step only through the plaquette weights w(p) = u_k(f(x)) = ω(p)/g²(p) (SOURCES_D3_NEW4 §1 [V file]: "the Wilson term IS sourced, through its plaquette weight only. The minimizer, the gauge, the domains, and the thresholds are NOT sourced"), and through the pointwise maps B_j∘f, c ↦ u_k(c) (D2C (5.1); R-036). The maps c ↦ u_k(c), B_j(c) are built from whole-lattice β-type functions, so they are the same on every torus [R to R-036 (I) "B_j(c) = F_j(u(c); x*)"].
New reading (FI_f) [I]. The walk factors R_α(Y) of the sourced operators (the sourced covariance C_f^{(k)} of H-240 (P8), and the sourced A^f of R-024) are produced by the same formula on every volume from data in Ỹ^5, with the weights ω|_{Ỹ^5} among the data. Support: (FI) for the unsourced factors is SUPPORTED by the CMP 99 text (A15_LOC_VERIFY verdict [V file]); the sourced operators differ only by the local factor ω(p) in the Hessian, Δ_1(ζ_0ω) = Δ_1(ζ_0) + Δ_1(ζ_0(ω − 1)) (D3_NEW4 (1.1) [V file]). The bounds H-281–H-291 for C_f are proved (row R-016); the formula identity is not checked factor by factor.
Proof. Theorem LOC's Lemmas W (walk sums), N (decoupled nonlinear maps; the minimizer is unsourced, so (U) is unchanged), G (Gaussian integrals with C_f), A (assembly), S (subtractions; β and B_j are whole-lattice) use only that every ingredient is the same local function of the data of its own domain (A15_LOC §7.1–§7.5 [V file]). With (FI_f) the sourced ingredients have this property. So the induction of Theorem LOC runs with the sourced data, and the sourced E-terms of non-wrapping X are intrinsic. Theorem BDRY (A15_BDRY §2.4; BDRY_VERIFY: CORRECTED, (Enl) a convention [V file]) extends this to X ⊂ Λ_{k+1}, as F8 says for the unsourced case. Euclidean covariance of C_f fails for non-constant f (row R-016 text); this does not matter, since intrinsic means equality under the lift with the lifted source, not covariance. ∎

### 4.4 Constituent (b4-R) and the merged E_R: R-terms [P given Claim L_G + (FI_LF)]
Printed locality: R′^{(k)}(X) "depends on the background field U_k restricted to X" and extends analytically on Ũ_k^c(X, α̃_0, α̃_1), a space of configurations on X (F6). Locality alone is not intrinsic-ness: one needs that the map producing R′^{(k)}(X) from U_k|_X is the same on every torus.
Ingredients of the map. (i) Numerators and denominators of the ratio (F3 (0.3), (0.5)); the denominators are "localized in neighborhoods of the domains Z′ … determined by small field effective actions only" (F4). (ii) The background fields on large-field domains, U_{k,Z}(V′V_Λ) (CMP 122 II p. 356 (1.1) [V]), whose operators are walk-expanded in the Ω-sequence geometry (row R-024: CMP 99 Thms 3.7–3.10 "in their full generality", and "the CMP 122 I (1.25) R-operation operator" [V ledger text]). (iii) The Ursell series (7.13) [I] of CMP 122 II (1.98) (F6), whose hard-core relation is cube geometry. (iv) The renormalized components: their admissibility (F4 (i)–(ii)) refers to the component's own history only.
New reading (FI_LF) [I]. The walk factors of the operators in (ii) depend on U and on the domain sets (Z, Ω_j, Λ_j) only through their restrictions to Ỹ^5, by the same formula on every torus. For the step operators this is (L2_Λ) of A15_BDRY §2.3 [P there relative to R-024]; for the R-operation operator of CMP 122 I (1.25) it is the same statement, not written in any project file.
Proof. Claim L_G (A15_BDRY §3.2 [V file], "the step output on X is one map 𝒢_X of the inputs on X, the same in every volume") covers the merged R-inputs E_R of later steps. For R′^{(k)}(X) itself: (i) has no global factor (F4: the denominators are localized and small-field only; the normalization Z_{s,t} cancels cluster by cluster, CMP 119 (3.44)–(3.46), A15_BDRY §3.2 [V file]); (ii) gives intrinsic s-truncated kernels by Lemma W_Λ (A15_BDRY §2.3) under (FI_LF), and intrinsic minimizers by Lemma N of A15_LOC with Balaban's uniqueness in his analyticity balls ((U) [V per A15_LOC_VERIFY]; CMP 102 for the large-field backgrounds [R]); (iii) is intrinsic by A15_LOC Lemma A (the lift preserves cubes and walls); (iv) is local. So R′^{(k)}(X) is intrinsic for non-wrapping X, at every scale k ≤ K. The source enters as in §4.3. ∎ [P given L_G, (FI_LF), (FI_f), R-024, (U)]

### 4.5 Constituent (b3): Step-A polymers [P-sketch]
Step A writes exp Σ_X R_fin(X, V) by F3 (0.5) with Z″ = ∅. A Step-A polymer U is a connected union of final components Y, each with its operation T′_K(Y), Mayer links e^{V(X)} − 1, and boundary terms (FX §6.1 [V file]). T-operations factorize over components (F4 (1.1)). T′_K(Y) contains the sum over the whole fine history inside Y (F5: "the summations over the admissible sequences", "supremum … over all admissible domains").
Claim. T′_K(Y)(F), for F a function of the data on Y, is the same function of the lifted data on every torus on which the collar of Y is liftable.
Sketch. T′_K(Y) is a finite composition, scale by scale inside Y, of: characteristic functions of local large-field conditions (per cube); integrals over fields on sets inside Y; the localized R-operations of §4.4; and the small-field E-, R-terms of §4.3–§4.4. Each piece is intrinsic under the inputs of §4.3–§4.4. Compositions and finite sums of intrinsic maps on sets inside Y are intrinsic. The step not written out: a scale-by-scale check that no piece of the history sum of CMP 122 I Sect. 1 refers to data outside the collar of Y; the pages read (F4, F5) show only per-component quantities.
Then R_fin(X, V) is the Ursell/Kotecký–Preiss combination of the activities K(U), U ⊂ X, with a hard core fixed by cube geometry. A15_LOC Lemma A (assembly) makes it intrinsic for non-wrapping X. ∎ [P-sketch]

### 4.6 Global torus objects, and why none enters a non-wrapping term [P]
- Normalizations 𝒩_K (Gaussian normalizations, U = 1 values, vacuum constants): f-independent, cancel exactly in Δ (IV12 §2.2, CONFIRMED IV12_VERIFY §7 [V file]).
- Global determinants: s-expanded by (Det′) (A15_LOC_VERIFY [V file]); interior pieces are whole-lattice.
- Torus holonomy. A small-field V on T_ℓ can be flat with nontrivial holonomy around a cycle of the torus. A non-wrapping activity depends on V|_Γ only (FX1), and the lift V̂ on Γ̂ copies the same link variables. A holonomy around a torus cycle is a product over a non-contractible loop, which no liftable set contains. So holonomy enters only wrapping activities.
- The unit-scale integral over V is not part of Δ: it is the measure ν_{K,ℓ} (FABLE (2.1)). Its ℓ-dependence is L-332 (BLOCKED), not L-331.

### 4.7 Verdict on L-331
(Loc-f) is PROVED for (b1) [P]; for (b2), (b4-E), (b4-F) relative to Theorem LOC's inputs (FI), (U), (Det′), (Cube), (Cases), (Conv) and (FI_f) [I]; for (b4-R) and E_R relative to Claim L_G, Theorem BDRY's inputs (L2_Λ) → R-024, (Enl) [convention], (Dom), (Conv_Λ) [I], Λ_j nesting [I], and (FI_LF) [I]; for (b3) as a [P-sketch] on top of these. Every input is a construction reading (a formula is the same on every volume); none is an analytic estimate; none involves ℓ beyond ℓ ∈ 𝓛(g). The wrapping bound and (3.1) follow in §5 with L-320.

## 5. Consequences: the wrapping bound and FABLE (3.1)

### 5.1 Lemma WRAP [P given L-320]
Let f_1, …, f_n be bumps with supports in a ball B of diameter D, S ⊂ [n], and ℓ ∈ 𝓛(g) with ℓ ≥ 4D + 12c_*. Then, uniformly in V ∈ supp χ_K and in K,
  Σ_{m≤K} Σ_{Γ∈P_m wrapping, Γ∩B≠∅} sup_V |∂^S a_m(Γ; f(t), V)|_{t=0}| ≤ C_W(S)(1 + D/M)⁴ e^{−cℓ},   c := (κ − c_0)/(4M),
with C_W(S) := C^{|S|} Π_{i∈S} N(f_i)/(c_τ r) (c·r form) and κ, c_0 the L-320 constants.
Proof. A wrapping Γ ∋ point of B has a collar that is not in a box of side < ℓ/2, so its physical diameter is ≥ ℓ/2 − 3c_* ≥ ℓ/4 + D. Hence d_m(Γ) ≥ ℓ/(4Mλ_m) − 1. Scale-m cubes meeting B: ≤ C(1 + D/(Mλ_m))⁴. Cauchy on the polydisc of radius τ_m(Γ) gives Π_{i∈S} N(f_i)/τ_m with (FX3). (FX4) gives Σ_{s≥s_0} e^{c_0s}e^{−κs} ≤ Ce^{−(κ−c_0)s_0}. With n = K − m: Σ_{n≥0} C(1 + DL^n/M)⁴ e^{−(κ−c_0)(ℓL^n/(4M) − 1)} ≤ C′(1 + D/M)⁴ e^{−(κ−c_0)ℓ/(4M)}, since the n ≥ 1 terms decrease faster than geometrically. With the D3 radius instead of c·r, add the factor R̄_m^{4|S|}, a power of log(g^{−2} + B′n); the sum still converges to the same form. ∎
Units: c = (κ − c_0)/(4M) is a rate per physical unit length, ℓ-free and K-free (§2.1). No E10-type correction.

### 5.2 FABLE (3.1) [P given L-320, L-331]
For V on T_ℓ let V̂ be its periodic lift. Non-wrapping torus polymers meeting B and Z⁴ polymers meeting the lift B̂ whose collar lies in a box of side < ℓ/2 correspond one to one (take the lift that meets B̂; it is unique because the box side is < ℓ/2 and D < ℓ/4). On corresponding pairs the activities are equal (L-331 + Lemma DEF). The remaining terms are the torus wrapping polymers (Lemma WRAP) and the Z⁴ polymers meeting B̂ with diameter ≥ ℓ/2 − 3c_*; the latter obey the same bound, because by Lemma DEF each is an activity on a larger admissible torus, where L-320 holds with the same constants. So
  sup_V |∂^SΔ_ℓ(0, V) − ∂^SΔ_∞(0, V̂)| ≤ 2C_W(S)(1 + D/M)⁴ e^{−(κ−c_0)ℓ/(4M)}.      (5.1)
This is FABLE (3.1) with C(S) and c explicit. The same holds for sup over the common polydisc 𝒫 (FABLE_HARD_VERIFY C-38) with the per-polymer sup bound in place of Cauchy.

### 5.3 What (3.2) needs in addition [P-sketch]
FABLE §3.3(ii) passes ν_{K,ℓ} → ν_∞ weakly on marginals. It applies to the functionals ∂^SΔ_∞(0, ·) if they are continuous on a neighbourhood of supp χ_K: they are analytic on Balaban's domains U^c(X, α_0, α_1), which contain the real small-field set with a margin (F7 (ii), F6). The tails Σ_{Γ̂ ⊄ [−R, R]⁴} are ≤ C e^{−(κ−c_0)R/(4M)} uniformly, as in Lemma WRAP. So (3.2) holds given L-320 and L-331 [P-sketch; the margin of the analyticity domain over the sharp χ_K is I].

## 6. Theorem IV after this file; proposed ledger statuses

### 6.1 Exact statement of L-196 (Theorem IV), conditional form after SOURCES_L2_L3L14
Let G = SU(2), d = 4, L odd > 11 fixed, g ∈ ]0, γ] with γ as in L-001 (Theorem 2w), g_0(K, g) any element of the Lemma D″ set S(K, g) (IV12_VERIFY §6), and 𝓛(g) the admissible set of Lemma ADM (§2.2). Assume:
- (H-T2) the hypotheses of Target 2 (ASSEMBLY §1.3: L-001, Balaban's Theorem 1, R-035 (S1), R-043 Steps A, C, D, with R-042 as its residue via Q-061) on T_ℓ for every ℓ ∈ 𝓛(g), or for every ℓ in one infinite subset 𝓛′ ⊂ 𝓛(g);
- (H-U) (U_ℓ): one set (𝔅, 𝔖) of base constants (§3.5) serves every such ℓ. This is the part of L-319 that the proof uses. [I]
- (H-L6) the inputs of L-323 beyond (H-T2): (D) incl. (D) on Ũ^c [I], (Reg) [R, no ledger row], I8 [I] (FABLE_HARD_VERIFY §C.3).
Named among them: K-014 (C13); (1.103)–(1.104) and Q-062 not used.
Then (a) and (b) of INFINITE_VOLUME_FABLE §7.1 hold with ℓ_i ∈ 𝓛(g): a joint subsequential limit (K_i, ℓ_i) → (∞, ∞) on ⁰S_n; OS0 with |S_n(F)| ≤ A^n(n!)^{1+2η}|F|_{sn+1}, s = 20; OS1-T; OS1-H (B_4); OS2 (half-space RP); OS3. L-320 is no longer a hypothesis: it follows from (H-T2) + (H-U) + the Kotecký–Preiss theorem (§3.7).
(c) If in addition the construction-reading inputs of L-331 hold — Theorem LOC's (FI), (U), (Det′), (Cube), (Cases), (Conv); Theorem BDRY's (L2_Λ) (→ R-024), (Enl) [convention], (Dom), (Conv_Λ), Λ_j nesting; (FI_f), (FI_LF) [I]; and the Step-A sketch of §4.5 — then every limit has the form FABLE (3.2), with Z⁴ activities defined by Lemma DEF, and the torus-to-Z⁴ error of every UV constituent is ≤ 2C_W(S)(1 + D/M)⁴e^{−(κ−c_0)ℓ/(4M)} (5.1).
Variant. Under (U_ℓ^poly) instead of (U_ℓ), (a)–(b) hold with Gevrey order 1 + 2η + p in OS0 (p from the radius clause; p = 0 if the radii are ℓ-free), but then L-331's inputs are needed already for (a)–(b) (§3.6), and L-323 needs the same transfer [I].
(d) Not asserted, unchanged: L-332 (full convergence in ℓ), L-333 (O(4)), L-334 (OS4, gap), nontriviality, other observables. Weak existence only; not a Clay solution.

### 6.2 Proposed ledger statuses (not applied; this file edits nothing else)
- L-320 H-106 (FX-V): "PROVED relative to listed inputs: Target 2 hypotheses on T_ℓ for every ℓ ∈ 𝓛(g) (incl. R-042 via Q-061); (U_ℓ) ⊂ L-319 [I]; Kotecký–Preiss [R]. The pointwise-in-V reading of Step A is the printed form (CMP 122 II p. 383: 'The supremum is taken over all admissible domains' [V]). Unverified (SOURCES_L2_L3L14 §3)." Replaces "[R, unverified]".
- L-331 H-142 (Loc-f): "PROVED relative to construction-reading inputs: Theorem LOC inputs; Theorem BDRY inputs; Claim L_G; (FI_f), (FI_LF) [I]; Step-A large-field part P-sketch (§4.5). Wrapping bound (κ − c_0)/(4M) per unit length via L-320. Unverified (SOURCES_L2_L3L14 §4–§5)." Replaces "[R, unverified]".
- L-319 (UV constants ℓ-free): narrow to (U_ℓ); grade stays [I]; name it as hypothesis (H-U) of L-196. Weakest known repair (U_ℓ^poly) (§3.6).
- TRUST_LEDGER §4.3 hypotheses: replace "every even torus side ℓ > 22M" by "every ℓ ∈ 𝓛(g) (Lemma ADM; ℓ ∈ 2L^{n_0}N, ℓ ≥ max(22M, 200MR_K(g), ℓ_{A1}))"; replace item (ii) L-320 by (H-U); keep (iii) L-323 as verified. "Distance to unconditional": delete "a one-paragraph pointwise reading of Step A" (settled, §3.3); add (U_ℓ).

### 6.3 Grade table of this file
| item | content | grade |
|---|---|---|
| F1–F9 | page facts | [V, images] |
| §2.1 | no rescaling; E10 does not apply | [P] |
| Lemma ADM | admissible set 𝓛(g), K-free | [P given (c′); power-of-L reading I] |
| §3.2 Step 1 | representation of Δ at fixed ℓ | [P given R-043 Step A, R-035] |
| §3.3 Step 2 | bounds hold at each fixed V | [V F5 + P] |
| §3.4 Step 3 | (FX4) torus ≤ Z⁴ | [P] |
| §3.5 Step 4 | constants are ℓ-free formulas in (𝔅, 𝔖) | [P given cited files] |
| §3.6 (U_ℓ) | residue; obstruction exact | [I] |
| §3.6 (U_ℓ^poly) | weakest repair | [P-sketch given L-331; gap condition I] |
| §4.1 Lemma DEF | Z⁴ activities via larger tori | [P given L-331] |
| §4.2 | coupling term intrinsic | [P] |
| §4.3 | sourced E-terms intrinsic | [P given LOC inputs + (FI_f) I] |
| §4.4 | R-terms intrinsic | [P given L_G, (FI_LF) I, R-024, (U)] |
| §4.5 | Step-A polymers intrinsic | [P-sketch] |
| §4.6 | no global object in non-wrapping terms | [P] |
| §5.1 Lemma WRAP | rate (κ − c_0)/(4M), physical units | [P given L-320] |
| §5.2 (5.1) | FABLE (3.1) with explicit constants | [P given L-320, L-331] |
| §5.3 | (3.2) prerequisites | [P-sketch; analyticity margin I] |
Verifier focus: (1) (FI_LF) for the CMP 122 I (1.25) operator and the history sum inside T′_K(Y) (§4.4–§4.5); (2) Lemma ADM's (d) condition 200MR_K and whether Balaban needs more; (3) the absorption argument of (U_ℓ^poly), in particular the Gevrey cost; (4) whether any smallness condition of CMP 109–122 is not per-component ((U_ℓ)).
STATUS: COMPLETE (unverified). Page images were rendered to /tmp/l3l14_img and deleted after use. Firewall kept. No other file edited.
