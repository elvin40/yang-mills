# SOURCES_R3S1_E3C — sharpened monopole core bound (E3c): C_− ∝ 1/N_4 is proved, and 1/N_4 is the true scaling

Written 2026-10-28 (Claude, Opus 5.5). Derivation file. No existing file edited. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. Inputs read: R3S1_GAP.md (all; Fable, unverified), SOURCES_R3S1_E2.md (all; Opus, unverified), numerics/r3s1_e2_check.py. Project ids: R3S1_GAP is ledger row R-054 (IDS.md); E2, E3c, E3s, G4, R are file-local labels of R3S1_GAP and are cited as such. Script: numerics/r3s1_e3c_check.py (Mac); results in numerics/r3s1_e3c_results.json.

Grades. [P] proved here. [P-sketch] proof in outline; constants not optimized. [N] numerical (this file's script). [I] unchecked input or interpretation. Statements cited as "E2 (x)" are SOURCES_R3S1_E2.md §3 (x); they are [P] there and unverified.

Summary of results.
- Open item 1 of SOURCES_R3S1_E2 §8 is proved. For any frames, the Berry-phase part of a plaquette angle is quadratic in the frame mismatch (Lemma 1: |θ_p^j| ≤ π(ε_p + (3/2)Σ_{b∈∂p}(s_b^j)²)). For eigenframes under (H1)_ρ, s_b ≤ η_b/γ with no smallness condition (Lemma 2, a Davis–Kahan bound). [P, N]
- Theorem E3c′. Under (H1)_ρ on ∂C and (H0) on the links of ∂C, for the cube C of side N_4 and flux q through ∂C (constant in t):
  S(C × S¹) ≥ (min(2, γ²)/(3N_4)) ‖q‖_∞ / g²,  γ = d_0 − 2ρ.
  At ρ → 0 the constant is 2/(3N_4) for N = 2, 3, 4. This restores the 1/N_4 law of R3S1_GAP §5.0, with a constant smaller by π², and it is linear in ‖q‖_∞. No (H2), no small-field condition, no condition inside C. [P]
- The 1/N_4 law is the true scaling. An explicit family (a lattice-size monopole–antimonopole pair straddling a face of C; spatial links 1; Polyakov loop in the class of Ω_0 everywhere) has g²S(C × S¹) = 2N_4 sin²(α_N/N_4)(56 − 8/√3) ≤ 253.6/N_4 (SU(2)), 450.7/N_4 (SU(3)). So g²S_min = Θ(1/N_4). [P]
- Numerics: constrained descent (N_4 = 2–16, SU(2), SU(3), static and 4d) finds N_4 g²S_min ≈ 43–58 (SU(2)) and 19–103 (SU(3)), flat in N_4 within 4% from N_4 = 8 to 16. The proved constant is 64–154 times lower. [N]
- Consequences. (i) E3c of R3S1_GAP §5.1 holds with C_− = min(2, γ²)/(3N_4). (ii) G4: C_−/κ_3 ∝ 1/N_4, so a fixed GM threshold c_0 fails at large N_4; if GM's dilution conditions are asymptotic in β, the cost is g_0² ∝ 1/(N_4 log N_4). (iii) The per-cell sharp bound E3s (C_− = (8π²/N)(1 − δ)) is false for this charge for N_4 ≥ 7 (SU(2)), N_4 ≥ 18 (SU(3)). (iv) Theorem R with fine-flux charges conflicts with the Villain weight at large N_4; R needs a charge that does not count lattice-scale dipoles (§7.3). [P, P-sketch]

---

## 1. Setting

Notation is that of SOURCES_R3S1_E2.md §1–§2. Lattice units a = L/N_4. Slab (Z/ℓZ)³ × (Z/N_4Z). Wilson action

  g²S = 2 Σ_p Re tr(1 − U_p),  ε_p := ‖1 − U_p‖ (operator norm).

For unitary U_p with eigenphases φ_k: ε_p² = max_k |1 − e^{iφ_k}|² ≤ Σ_k 2(1 − cos φ_k) = 2 Re tr(1 − U_p) = g²S_p. So ε_p ≤ g S_p^{1/2} [P; E2 §6.2 Step 4]. For SU(2), ε_p² = g²S_p/2.

Cell. C is a spatial 3-chain whose boundary Σ = ∂C is a closed lattice 2-manifold: every link of Σ lies in exactly two plaquettes of Σ. The main case is the cube of side N_4 (one cell of the spacing-L lattice). Write n_s(C) for the number of plaquettes of Σ. For the cube of side n: n_s = 6n², and Σ has 12n² links. Σ_t := Σ × {t}.

Frame, overlaps, angles (E2 §2.1). Under (H1)_ρ at z, λ_j(z) is the eigenvalue of the Polyakov loop Ω(z) in D(ω_j, ρ), and e_j(z) a unit eigenvector. γ := d_0 − 2ρ, d_0 = 2 sin(π/N). For a link b = (z, μ): M_b := E(z)^{−1}U_bE(z+μ̂), m_j(b) := (M_b)_{jj}, s_b^j := (1 − |m_j(b)|²)^{1/2}. Plaquette angle θ_p^j := Arg w_p^j, w_p^j := product of the four overlaps around p (reversed links enter conjugated). Flux Φ^j(Σ_t) := (2π)^{−1} Σ_{p∈Σ_t} θ_p^j. Under (H0) on the links of Σ_t, Φ(Σ_t) ∈ Z^N (E2 (d)).

Column mismatch (E2 (H2)). For a spatial link b = (x, t; i): η_b := ‖U_bΩ(x+î, t)U_b^{−1} − Ω(x, t)‖. Ladder (E2 (b)): η_b ≤ Λ_b := Σ_{k=0}^{N_4−1} ε_{p_k(b)}, with p_k(b) the (i,4)-plaquette at (x, t+k). The set {p_k(b)} is the whole column of (i,4)-plaquettes over the spatial link, so Λ_b does not depend on t.

What the old proofs lost. E2 §4.9 bounds |w_p − 1| by ε_p + s_1 + s_2 + s_3: linear in the mismatch. E2 (b) bounds s by 2η/(γ − 2η) or min(1, 4η/γ). Both are replaced below: Lemma 1 makes the mismatch term quadratic, and Lemma 2 gives s ≤ η/γ with no smallness condition.

## 2. Lemma 1 (Berry phase per plaquette is quadratic in the frame mismatch) [P, N]

Statement. Let z_1 → z_2 → … → z_n → z_{n+1} = z_1 be a closed lattice path with transporters V_k ∈ U(N) (V_k = U_b or U_b^{−1}). Let E(z_k) ∈ U(N) be arbitrary frames (no eigen property). Put M_k := E(z_k)^{−1}V_kE(z_{k+1}), m_k := (M_k)_{jj}, σ_k := (1 − |m_k|²)^{1/2}, w := Π_k m_k, and U_γ := V_1⋯V_n (the holonomy based at z_1). Then for every label j:

 (1a) |(E(z_1)^{−1} U_γ E(z_1))_{jj} − w| ≤ Q := Σ_{1≤k<l≤n} σ_kσ_l.
 (1b) For a plaquette (n = 4): Q ≤ (3/2) Σ_{k=1}^4 σ_k², and |w − 1| ≤ ε_p + Q.
 (1c) Put r := ε_p + Q. If r < 1, then w ≠ 0 and |θ_p^j| ≤ arcsin r ≤ (π/2) r. In every case with w ≠ 0, |θ_p^j| ≤ π r.

Proof. All M_k are unitary. For a unitary W, row j and column j have unit norm, so the off-diagonal part of row j and of column j each has norm (1 − |W_{jj}|²)^{1/2}. Let Y_k := M_kM_{k+1}⋯M_n (unitary) and let c_k be the off-diagonal part of column j of Y_k. Two claims, by downward induction on k:
 (i) ‖c_k‖ ≤ Σ_{l≥k} σ_l;
 (ii) |(Y_k)_{jj} − Π_{l≥k} m_l| ≤ Σ_{k≤l<l′≤n} σ_lσ_{l′}.
For k = n both are exact (‖c_n‖ = σ_n, and (ii) reads 0 ≤ 0). Step k+1 → k. Column j of Y_k is M_k((Y_{k+1})_{jj} e_j + c_{k+1}). Project onto e_j^⊥: the first term gives (Y_{k+1})_{jj}·(off-diagonal column j of M_k), of norm ≤ σ_k; the second has norm ≤ ‖c_{k+1}‖. This proves (i). Next, (Y_k)_{jj} = m_k (Y_{k+1})_{jj} + Σ_{a≠j} (M_k)_{ja}(Y_{k+1})_{aj}. The sum is an inner product of the off-diagonal row j of M_k (norm σ_k) with c_{k+1}, so its modulus is ≤ σ_k Σ_{l>k} σ_l. With |m_k| ≤ 1 and the induction hypothesis (ii) for k+1, this proves (ii) for k. At k = 1, Y_1 = E(z_1)^{−1}U_γE(z_1), which is (1a).
(1b). Σ_{k<l} σ_kσ_l = ((Σσ_k)² − Σσ_k²)/2 ≤ (4Σσ_k² − Σσ_k²)/2 by Cauchy–Schwarz. Next, (E^{−1}U_pE)_{jj} = ⟨e, U_p e⟩ with e = e_j(z_1) a unit vector, and |⟨e, U_pe⟩ − 1| ≤ ‖U_p − 1‖ = ε_p.
(1c). If r < 1, then w lies in the disc D(1, r), which does not contain 0 and subtends the half-angle arcsin r at 0. Also arcsin r ≤ (π/2) r on [0, 1]. If r ≥ 1, then |θ| ≤ π ≤ πr. ∎

Remarks.
- Lemma 1 holds for any frames. The eigenframe property enters only through Lemma 2.
- The bound is sharp in form. For U ≡ 1 the frame-gauge holonomy is the identity, (Y_1)_{jj} = 1, and the whole deviation of w from 1 is the discrete Berry phase of the frame. For SU(2) frames given by unit vectors n̂(z_k), Arg w is half the solid angle of the geodesic polygon n̂(z_1)…n̂(z_4), which is quadratic in the edge lengths, as (1a) states.
- Combined with Lemma 2 below, (1c) gives the item that SOURCES_R3S1_E2 §8 lists as open item 1:
  |θ_p^j| ≤ π (ε_p + (3/(2γ²)) Σ_{b∈∂p} η_b²), under (H1)_ρ at the four corners of p and (H0) on its edges.
  In the regime r < 1 the factor π can be replaced by π/2, and by 1 + O(r²) as r → 0.
- [N] (§6.1): on random SU(2) and SU(3) configurations (smooth, medium, Haar-rough), with eigenframes and with Haar-random frames, (1a) and (1c) have zero violations. The largest ratio |(E^{−1}U_pE)_{jj} − w|/Q is 0.94, so the constant in (1a) cannot be lowered much.

## 3. Lemma 2 (eigenframe mismatch, Davis–Kahan form) [P, N]

Statement. Let Ω, Ω′ be normal matrices. Let Ωe = λe with ‖e‖ = 1, and let {f_k} be an orthonormal eigenbasis of Ω′, Ω′f_k = λ′_k f_k. Then for each j,
  (1 − |⟨f_j, e⟩|²)^{1/2} ≤ ‖(Ω′ − Ω)e‖ / δ_j ≤ ‖Ω′ − Ω‖ / δ_j,  δ_j := min_{k≠j} |λ′_k − λ|.

Proof. Write e = Σ_k c_k f_k. Then (Ω′ − Ω)e = (Ω′ − λ)e = Σ_k c_k(λ′_k − λ) f_k. Hence ‖(Ω′ − Ω)e‖² ≥ Σ_{k≠j} |c_k|²|λ′_k − λ|² ≥ δ_j² (1 − |c_j|²). ∎

Application. Take a spatial link b = (z, i), Ω = Ω(z), e = e_j(z), Ω′ = U_bΩ(z+î)U_b^{−1}, f_k = U_b e_k(z+î), λ′_k = λ_k(z+î). Then 1 − |⟨f_j, e⟩|² = 1 − |m_j(b)|² = (s_b^j)², and ‖Ω′ − Ω‖ = η_b. Under (H1)_ρ at z and at z+î, λ_k(z+î) ∈ D(ω_k, ρ) and λ_j(z) ∈ D(ω_j, ρ), so for k ≠ j, |λ_k(z+î) − λ_j(z)| ≥ |ω_k − ω_j| − 2ρ ≥ d_0 − 2ρ = γ. Therefore

  (3.1) s_b^j ≤ η_b / γ  for every j, under (H1)_ρ at both ends of b. No condition on η_b is needed. [P]

This replaces E2 (b) (s ≤ 2η/(γ − 2η) for η < γ/4, and s ≤ min(1, 4η/γ) in general). The gain in s² is a factor 16 in the general case. The bound uses the separation between the eigenvalue λ_j(z) and the other eigenvalues of Ω(z+î); this separation is ≥ γ by the disc structure of (H1) alone.
Sharpness [N] (§6.1): zero violations in all test configurations; the largest ratio s/(η/δ) is 1.000 for SU(2) (equality holds when both holonomies lie in the class of Ω_0) and 0.99 for SU(3).

## 4. Theorem E3c′ (core bound with 1/N_4 scaling) [P]

Statement. Wilson action on the slab, any N ≥ 2, N_4 ≥ 1. Let C be a spatial 3-chain with ∂C a closed 2-manifold, n_s := n_s(C). Assume:
 (H1)_ρ at every site of ∂C (at one slice; by E2 (a4) it then holds on the whole column), and put γ := d_0 − 2ρ > 0;
 (H0) on every spatial link of ∂C × {t}, for every t.
Let q_t := Φ(∂C × {t}) ∈ Z^N and q̄ := N_4^{−1} Σ_t ‖q_t‖_∞. Let S_∂ be the action of the plaquette set
  P_∂ := {spatial plaquettes of ∂C × {t}, all t} ∪ {(i,4)-plaquettes p_k(b): b a spatial link of ∂C, all k}.
P_∂ is contained in the plaquettes of C × S¹. Then

  (4.1) g² S(C × S¹) ≥ g² S_∂ ≥ min( 4 N_4 q̄² / n_s ,  γ² q̄ / (3 N_4) ).

For C the cube of side N_4 (n_s = 6N_4²):

  (4.2) g² S(C × S¹) ≥ (q̄ / (3N_4)) · min(2q̄, γ²).

Corollary (form used in R3S1_GAP (R-a)). If q_t = q for all t and q ≠ 0, then ‖q‖_∞ ≥ 1 and
  S(C × S¹) ≥ C_− ‖q‖_∞ / g²,  C_− := min(2, γ²) / (3N_4).
As ρ ↓ 0, γ → d_0 = 2 sin(π/N): C_− → 2/(3N_4) for N = 2, 3, 4, and C_− → (4/3) sin²(π/N)/N_4 for N ≥ 5.

Proof.
Step 1 (flux identity). Fix t and a label j. By (H0) and E2 (d), 2π q_t^j = Σ_{p∈Σ_t} θ_p^j.
Step 2 (Lemma 1). By (1c) and (1b), |θ_p^j| ≤ π(ε_p + Q_p^j) with Q_p^j ≤ (3/2) Σ_{b∈∂p} (s_b^j)². Each link of Σ_t lies in exactly two plaquettes of Σ_t. Summing over p ∈ Σ_t:
  2|q_t^j| ≤ Σ_{p∈Σ_t} ε_p + 3 Σ_{b∈Σ_t} (s_b^j)².
Step 3 (Lemma 2 and the ladder). Both ends of every link of Σ_t are sites of ∂C, so (3.1) applies: s_b^j ≤ η_b/γ. The ladder gives η_b ≤ Λ_b. Hence, for the j with |q_t^j| = ‖q_t‖_∞,
  2‖q_t‖_∞ ≤ Σ_{p∈Σ_t} ε_p + (3/γ²) Σ_{b∈Σ_0} Λ_b².
Here the links of Σ_t and Σ_0 are identified along the circle, and Λ_b does not depend on t.
Step 4 (average over the N_4 slices; Cauchy–Schwarz). Average Step 3 over t:
  2q̄ ≤ A + B,  A := N_4^{−1} Σ_t Σ_{p∈Σ_t} ε_p,  B := (3/γ²) Σ_{b∈Σ_0} Λ_b².
There are N_4 n_s spatial plaquettes in the sum A. Cauchy–Schwarz and ε_p² ≤ g²S_p give A ≤ N_4^{−1}(N_4 n_s)^{1/2}(g²S_s)^{1/2} = α x, with x := (g²S_s)^{1/2}, α := (n_s/N_4)^{1/2}, and S_s the action of the spatial plaquettes in P_∂. Cauchy–Schwarz on each column gives Λ_b² ≤ N_4 Σ_k ε_{p_k(b)}². The plaquettes p_k(b), for b ∈ Σ_0 and 0 ≤ k < N_4, are pairwise distinct (each one is fixed by its base link (x, t+k; i)). So B ≤ β y, with y := g²S_ℓ, β := 3N_4/γ², and S_ℓ the action of the (i,4)-plaquettes in P_∂. The two plaquette sets are disjoint, so g²S_∂ = x² + y.
Step 5 (minimize). We have αx + βy ≥ 2q̄ with x, y ≥ 0. If αx ≥ 2q̄, then x² + y ≥ 4q̄²/α². Otherwise y ≥ (2q̄ − αx)/β, and the convex function x² + (2q̄ − αx)/β on [0, 2q̄/α) has infimum either 4q̄²/α² (if its minimizer α/(2β) lies at or beyond 2q̄/α) or 2q̄/β − α²/(4β²) > q̄/β (if α/(2β) < 2q̄/α, that is α² < 4βq̄). So g²S_∂ ≥ min(4q̄²/α², q̄/β). Insert α² = n_s/N_4 and β = 3N_4/γ². This is (4.1). For the cube, 4N_4q̄²/(6N_4²) = 2q̄²/(3N_4), which gives (4.2). The corollary uses q̄ = ‖q‖_∞ ≥ 1, so min(2q̄, γ²) ≥ min(2, γ²). ∎

Remarks.
(1) Which part of the action pays. The two terms in (4.1) are the two ways to carry flux through ∂C. The term 4N_4q̄²/n_s is the abelian (spatial plaquette) part. The term γ²q̄/(3N_4) is the frame-winding part, paid by the (i,4)-plaquettes through the ladder. The second term is linear in q̄, the first quadratic. For ‖q‖_∞ = 1 and γ² ≤ 2 the frame-winding term is the minimum.
(2) Small-angle regime. If r_p^j < 1 on every plaquette of every Σ_t, (1c) gives the factor π/2 in Step 2, and the same proof gives g²S_∂ ≥ min(16N_4q̄²/n_s, 2γ²q̄/(3N_4)). As all r_p → 0, the factor tends to 1, and the abelian term tends to 4π²N_4q̄²/n_s = 2π²q̄²/(3N_4) for the cube. This is exactly the constant of R3S1_GAP §5.0. So the §5.0 number is correct for the abelian channel in the small-angle limit; the §5.0 argument missed the frame-winding channel, which E2 §6.1 found. [P]
(3) Comparison. False claim (R3S1_GAP §5.0): 2π²/(3N_4). E2 §6.2 corrected crude bound: γ²/(192N_4³ + 1.5γ²N_4²). This file: min(2, γ²)/(3N_4). For large N_4 the ratio new/E2 is 64N_4²·min(2, γ²)/γ², which is 64N_4² for γ² ≤ 2 and ≥ 32N_4² for all γ ≤ 2. The ratio to the §5.0 number is π² for N = 2, 3, 4 at ρ → 0.
(4) No condition on η. Theorem E3c′ needs no (H2) and no small-field condition. Only (H1) on ∂C and (H0) on the links of ∂C enter. The interior of C is unrestricted: the Polyakov loop may degenerate there, and spatial links there are free.
(5) Other cells. For a box of sides n_1, n_2, n_3, use n_s = 2(n_1n_2 + n_2n_3 + n_3n_1). For a ∂C with links in more than two plaquettes of ∂C (non-manifold surface), replace 3 by (3/2)·(max multiplicity) in Step 2.


### 4.1 Constants table

| step | inequality | constant | depends on | sharp? |
|---|---|---|---|---|
| ε vs action | ε_p² ≤ g²S_p | 1 | N (SU(2): ε_p² = g²S_p/2) | loses ≥ N/(N−1) at small angles (eigenphases sum to 0) |
| Lemma 1 (1a) | |(E^{−1}U_pE)_jj − w| ≤ Σ_{k<l}σ_kσ_l | 1 | none | [N] ratio up to 0.94 |
| Lemma 1 (1b) | Σ_{k<l}σ_kσ_l ≤ (3/2)Σσ_k² | 3/2 | none | equality iff σ_k all equal |
| Lemma 1 (1c) | |θ| ≤ π(ε + Q); ≤ arcsin(ε + Q) if < 1 | π (uniform); π/2 if r < 1; → 1 as r → 0 | none | — |
| link multiplicity on ∂C | each link in 2 plaquettes of ∂C | 2 | geometry (manifold ∂C) | exact |
| Lemma 2 | s_b^j ≤ η_b/γ | 1/γ, γ = d_0 − 2ρ | N, ρ | [N] equality for SU(2) |
| ladder | η_b ≤ Λ_b = Σ_k ε_{p_k(b)} | 1 | — | [N] loses ≈ 2.3 on minimizers |
| Cauchy–Schwarz (column) | Λ_b² ≤ N_4 Σ_k ε_{p_k(b)}² | N_4 | N_4 | equality for static columns |
| Cauchy–Schwarz (slices × ∂C) | A ≤ (n_s/N_4)^{1/2}(g²S_s)^{1/2} | n_s/N_4 = 6N_4 (cube) | N_4 | equality for uniform spatial flux |
| two-channel minimum | x² + y ≥ min(4q̄²/α², q̄/β) | α² = n_s/N_4, β = 3N_4/γ² | N_4, γ | within factor 2 of the exact minimum |
| final (cube) | g²S ≥ (q̄/(3N_4)) min(2q̄, γ²) | c(γ, N) = min(2, γ²)/3 at ‖q‖_∞ = 1 | γ, N_4 | Θ(1/N_4) by §5; constant below the numerical minima by 64–154 (§6.3) |

Values of c(γ, N) = min(2, γ²)/3 at ρ → 0 (γ → d_0 = 2 sin(π/N)): N = 2: 2/3; N = 3: 2/3; N = 4: 2/3; N = 5: 0.461; N = 6: 1/3; large N: 4π²/(3N²).

## 5. The true scaling is 1/N_4: an explicit family [P, N]

Theorem E3c′ gives C_− ≥ min(2, γ²)/(3N_4). This section shows that no bound of the form S(C × S¹) ≥ c/g² with c independent of N_4 can hold. So the 1/N_4 law is the true scaling, not an artefact of the proof. In particular the per-cell sharp bound E3s of R3S1_GAP §3.4 and §5.1 (C_− = (8π²/N)(1 − δ)) is false for this charge when N_4 is large (§5.3).

### 5.1 The compact dipole family 𝔉_{N_4}
Take the cube C = [0, n]³, n = N_4 ≥ 3, and m := ⌊(n − 1)/2⌋. Let Q_0 := [m, m+1]² × [n − 1, n] be the unit cube that touches the top face {x_3 = n} at its centre, with centre c_0. Define a unit vector field on sites:
  n̂(x) := (x − c_0)/|x − c_0| at the 8 corners of Q_0;  n̂(x) := −e_3 at every other site.
SU(2): all spatial links U_i ≡ 1; U_4(x, t) := exp(i (π/(2N_4)) n̂(x)·σ) for all t. SU(3): embed the same 2×2 block in rows and columns (1, 3), with angle 2π/3 in place of π/2 and opposite sign, and put 1 in entry (2, 2) (the hedgehog embedding of E2 §7.2).

Properties.
 (a) [P] Ω(x) = U_4(x)^{N_4} = exp(iα_N n̂(x)·σ) (embedded), α_2 = π/2, α_3 = −2π/3. This is conjugate to Ω_0 at every site, and it does not depend on N_4. So (H1)_ρ holds at every site for every ρ > 0, with ρ_* = 0; γ → d_0.
 (b) [P] All spatial links are 1 and the frames depend only on Ω. So every overlap m_j(b), every spatial θ_p^j and the flux Φ(∂C × {t}) are independent of N_4 and of t. For n ≥ 3 the neighbourhood of Q_0 inside C is the same for every n (up to translation), and every site outside Q_0 carries the same vector −e_3. Hence Φ(∂C) is the same integer vector for all N_4 ≥ 3.
 (c) [N] Φ(∂C) = (−1, 1) for SU(2) and (1, 0, −1) for SU(3), integrality error ≤ 2e−16, minimum overlap 0.460 on the links of ∂C, for N_4 = 2, 4, 8, 16, 32, 64. The compensating charge sits in the unit cube above Q_0, outside C (checked on a periodic 6³ lattice: charges ∓1 in the two vertically adjacent cubes, nowhere else).
 (d) [P] Action. With U_i ≡ 1, every (i,4)-plaquette over the link (x, x+î) equals U_4(x+î)U_4(x)^{−1}, for every t, and every spatial plaquette equals 1. For unit vectors a, b and angle β, (cos β + i sin β a·σ)(cos β − i sin β b·σ) has trace 2(cos²β + sin²β a·b). So each such plaquette has 2 Re tr(1 − U_p) = 2 sin²β |a − b|². Summing over the N_4 slices:
   g² S(C × S¹) = 2 N_4 sin²(α_N/N_4) · D_0,  D_0 := Σ_{links (x,y) ⊂ C} |n̂(y) − n̂(x)|².
 (e) [P] D_0 = 56 − 8/√3 = 51.381. Count: the 12 edges of Q_0 give 12 × 4/3 = 16. Each of the 4 lower corners has 3 neighbours in C outside Q_0, each at squared distance |n̂ + e_3|² = 2 − 2/√3. Each of the 4 upper corners lies on the top face and has 2 neighbours in C outside Q_0, each at squared distance 2 + 2/√3. Total 16 + 12(2 − 2/√3) + 8(2 + 2/√3) = 56 − 8/√3.

Consequence [P]. For every N_4 ≥ 3:
  SU(2): g²S(C × S¹) = 2N_4 sin²(π/(2N_4)) (56 − 8/√3) ≤ (π²/2)(56 − 8/√3)/N_4 = 253.6/N_4;
  SU(3): g²S(C × S¹) = 2N_4 sin²(2π/(3N_4)) (56 − 8/√3) ≤ (8π²/9)(56 − 8/√3)/N_4 = 450.7/N_4.
The script reproduces these values: N_4 g²S = 250.3, 252.7, 253.4, 253.5 (SU(2), N_4 = 8, 16, 32, 64) and 440.6, 448.2, 450.1, 450.6 (SU(3)). For N_4 = 2 the cube is too small for the count (e); the script gives N_4 g²S = 141.5 (SU(2)) and 212.3 (SU(3)).

### 5.2 Two-sided result
Let S_min(N_4) be the infimum of S(C × S¹) over configurations with (H1)_ρ on ∂C, (H0) on the links of ∂C, and Φ(∂C × {t}) = q ≠ 0 for all t, with C the cube of side N_4. Then, for N = 2 and N = 3 and all N_4 ≥ 3:
  min(2, γ²)/(3N_4) ≤ g² S_min(N_4) ≤ K_N / N_4,  K_2 = 253.6, K_3 = 450.7.
The upper bound uses γ = d_0 − 2ρ with any ρ > 0 (the family has ρ_* = 0). So g²S_min = Θ(1/N_4). [P]
The gap between the two constants is a factor 380 (SU(2)) and 680 (SU(3)). The descent of §6.3 finds configurations with N_4 g²S = 43–58 (SU(2)) and 19–103 (SU(3)) for N_4 = 2–16, so the infimum lies between, much closer to the family than to the proved bound. §6.4 lists where the proof loses.

### 5.3 What the family is
The family is a tight monopole–antimonopole pair of lattice size 1, straddling the face of C. The frame jumps by O(1) across a few links. The cost of a frame jump across one link is spread over the N_4 plaquettes of the column, so each plaquette deviates by O(1/N_4) and the column costs O(1/N_4) in total. No spatial plaquette carries action. This is the lattice form of a known continuum fact: a direction field n̂ with a point singularity has finite Dirichlet energy in three dimensions, and a dipole of size d costs ∝ v²d. The Bogomolny bound S ≥ 4πv|q|/g² needs a continuous Higgs field with a zero at the core; the lattice frame has no such constraint (E2 §5.4).
Consequence for the sharp bound. A cell C whose boundary cuts such a pair has Φ(∂C) ≠ 0 and S(C × S¹) ≤ K_N/(N_4 g²). For SU(2), K_2/N_4 < 4π² = g²S_0 (S_0 = 8π²/(Ng²), the monopole-instanton action) as soon as N_4 ≥ 7. So a per-cell bound C_− = (8π²/N)(1 − δ) (E3s) is false for this charge for N_4 ≥ 7 (SU(2)) and N_4 ≥ 18 (SU(3), K_3/N_4 < 8π²/3 = 26.3). The total action of the whole pair, inside and outside C, is 2N_4 sin²(α_N/N_4)·64 (the 8 corners have 24 outside links in all; 16 + 12·4 = 64): also O(1/N_4). [P]


## 6. Numerics [N]

Script: numerics/r3s1_e3c_check.py (numpy; imports helpers from numerics/r3s1_e2_check.py; seeds 20261028/20261029; 3 min 49 s on the Mac). Results: numerics/r3s1_e3c_results.json. Action is reported as g²S = 2Σ_p Re tr(1 − U_p), over the plaquettes of C × S¹. C is the cube of side N_4.

### 6.1 Lemma 1 and Lemma 2 on random configurations
Lattice 4³ × 4, configurations of E2 §7 (smooth ε = 0.05, medium ε_s = 0.4, rough Haar spatial links), SU(2) and SU(3), every spatial plaquette and label. Lemma 1 is tested with eigenframes and with Haar-random frames.
| SU(N) | config | (1a) violations | max ratio (1a) | (1c) violations | Lemma 2 violations | max s/(η/δ) |
|---|---|---|---|---|---|---|
| 2 | smooth / medium / rough | 0 / 0 / 0 | 0.94 / 0.83 / 0.71 | 0 / 0 / 0 | 0 / 0 / 0 | 1.000 / 1.000 / 1.000 |
| 3 | smooth / medium / rough | 0 / 0 / 0 | 0.57 / 0.54 / 0.46 | 0 / 0 / 0 | 0 / 0 / 0 | 0.970 / 0.975 / 0.988 |
(The max ratio column takes the larger of the eigenframe and Haar-frame values.)

### 6.2 Explicit family (§5.1)
| N_4 | 2 | 4 | 8 | 16 | 32 | 64 |
|---|---|---|---|---|---|---|
| SU(2): N_4 g²S(C×S¹) | 141.5 | 240.8 | 250.3 | 252.7 | 253.4 | 253.5 |
| SU(3): N_4 g²S(C×S¹) | 212.3 | 411.1 | 440.6 | 448.2 | 450.1 | 450.6 |
| N_4 × bound (4.2) | 0.667 | 0.667 | 0.667 | 0.667 | 0.667 | 0.667 |
Flux (−1, 1) (SU(2)) and (1, 0, −1) (SU(3)) at every N_4; integrality error ≤ 2e−16; spatial plaquettes of ∂C carry zero action; γ = d_0. The limits match (π²/2)(56 − 8/√3) = 253.6 and (8π²/9)(56 − 8/√3) = 450.7.

### 6.3 Constrained minimization
Method. Heavy-ball gradient descent (momentum 0.9, adaptive step) of the Wilson action of C × S¹, links outside C free (they do not enter). Constraints, checked after every step: Φ(∂C × {t}) equals the planted q for every t; disc labels valid on ∂C; min_j |m_j| > 0.1 on the links of ∂C (0.05 for the 4d runs). A penalty 10 Σ_{x∈∂C} Σ_{n≤N/2} |tr Ω(x)^n|² holds the spectrum on ∂C near the class of Ω_0 (it vanishes there); without it the descent lowers the action by shrinking the eigenvalue gap, which the bound also tracks through γ². A step that changes the flux freezes the links of the plaquette whose angle jumped by 2π; a step that pushes an overlap below the margin freezes that link and its two columns. The value reported is the Wilson action only, and the bound uses the measured γ = d_0 − 2ρ_* with ρ_* = max_{x∈∂C, j} |λ_j(x) − ω_j|.
Starts: "hh" = E2 hedgehog centred in C; "dip" = §5.1 family; "corner" = the same 8-site dipole in the corner cube with n̂ = +e_3 elsewhere; "prolong" = the hh minimizer of side N_4/2 refined to side N_4 (2³ blocks), then descended; "4d" = static minimizer plus t-dependent noise 10^{−3}, descended with T = N_4 independent slices. Static runs use one slice replicated N_4 times; this is exact for t-independent configurations.
Best value of N_4 g²S(C×S¹) found (start in brackets), measured γ, and the ratio to the bound (4.2):
| N_4 | SU(2): N_4 g²S | γ | S/bound | SU(3): N_4 g²S | γ | S/bound |
|---|---|---|---|---|---|---|
| 2 | 42.7 (dip, static) | 1.94 | 64 | 19.5 (4d) | 1.35 | 32 |
| 4 | 51.9 (4d) | 1.80 | 78 | 89.4 (hh) | 1.44 | 134 |
| 8 | 56.3 (4d) | 1.89 | 84 | 98.5 (4d) | 1.55 | 148 |
| 16 | 58.4 (prolong, static) | 1.94 | 88 | 102.9 (prolong, static) | 1.64 | 154 |
Other starts end higher: dip 92–227 and corner 72–145 at N_4 = 4, 8. The prolong route reproduces the direct hh minimum at N_4 = 8 for SU(2) (56.45 against 56.56). For SU(3) at N_4 = 8 it ends higher (181.1 against 98.7), so the SU(3) value at N_4 = 16 is less reliable as an estimate of the infimum; it is still a valid upper bound. Every run kept the planted flux on all slices, and the chain "2‖q_t‖_∞ ≤ Σε_p + ΣQ_p" of Steps 1–2 held on every slice (slack 2.0–7.3).
Reading.
- N_4 g²S_min grows by 4% from N_4 = 8 to 16 in both groups, and it stays far below the family values 253.6 and 450.7. So g²S_min ≈ 60/N_4 (SU(2)) and ≈ 105/N_4 (SU(3)) for N_4 ≥ 8. This agrees with the Θ(1/N_4) law of §5.2.
- The minimizers put 99.9% of the action on P_∂ (the plaquettes the proof uses). The frame winding sits on ∂C near a corner of C; the interior of C is almost free of action.
- For N_4 ≥ 4, the t-dependent descent lowers the static minimum by at most 1%. For SU(3) at N_4 = 2 it lowers it by a factor 2.5 (24.4 → 9.7); this case is the smallest cell and is not used for the scaling claim.
- With the overlap margin 0.01 instead of 0.1 (SU(2), N_4 = 4, test run), the minimum drops by 1% only (13.06 → 12.95). The margin does not change the picture.
- Descent gives upper bounds on the infimum; it does not certify the minimum.

### 6.4 Where the proof loses (SU(2) / SU(3), N_4 = 16, prolong minimizers, slice 0, label of max |q|)
| quantity | SU(2) | SU(3) | loss factor of the step |
|---|---|---|---|
| 2π‖q‖_∞ = Σ_{∂C}|θ| | 6.28 | 6.28 | — |
| π Σ_{∂C}(ε_p + Q_p) | 14.96 | 15.06 | 2.4 (the π in (1c) and Q against the true Berry phase) |
| Σ Q_p → 3Σ_b s_b² | 4.72 → 9.11 | 4.73 → 9.10 | 1.9 ((1b) and link multiplicity) |
| 3Σ s² → 3Σ η²/γ² | 9.64 | 10.58 | 1.06 / 1.16 (Lemma 2) |
| 3Ση²/γ² → 3ΣΛ²/γ² | 23.2 | 57.6 | 2.4 / 5.4 (ladder triangle inequality) |
| 3ΣΛ²/γ² → 3N_4 g²S_ℓ/γ² | 46.3 | 115.1 | 2.0 (ε² ≤ g²S for an eigenphase pair; Cauchy–Schwarz on columns is exact here) |
The remaining factor up to the totals 88 and 154 comes from the two-channel minimum (Step 5) and the action off ∂C × S¹ (0.1%). The largest single losses are the ladder (worst for SU(3)) and the π of (1c).

## 7. Consequences for R3S1_GAP §5.1 (nodes E3c, G4, R) and §3.4 (E3s)

### 7.1 Node E3c
R3S1_GAP §5.1 lists E3c as "crude core bound C_− = 2π²/(3N_4), lemma [P-sketch, §5.0]". Replace it by Theorem E3c′:
  S(C × S¹) ≥ C_− ‖q‖_∞/g²,  C_− = min(2, γ²)/(3N_4),  γ = d_0 − 2ρ,
under (H1)_ρ on ∂C and (H0) on the links of ∂C, with q the flux through ∂C (constant in t). Grade [P] (unverified). The 1/N_4 law of §5.0 survives; the constant is smaller by π² (N ≤ 4, ρ → 0). The dependence on the holonomy is through γ² only, and γ² ≤ 2 already for N ≥ 4, so for large N, C_− ≈ (4π²/3)/(N²N_4) at ρ → 0.
Two facts that §5.0 did not have:
 (i) The bound is linear in ‖q‖_∞ (frame-winding channel), not quadratic; this is the form (R-a) needs (C_± ≥ c|q|).
 (ii) The bound needs only (H1) on ∂C and (H0) on the links of ∂C. It needs no (H2) and no small-field condition. So E3c applies to large-field cells; this is the case R3S1_GAP §3.4 (E3) identified as the relevant one (every core is large-field at fixed N_4 and small g).

### 7.2 Node G4 (constant check) and the g_0 cost
G4 compares GM's convergence threshold with z = e^{−(C_−/κ_3)β}, β = κ_3/g². With C_− = c_N/N_4, c_N := min(2, γ²)/3:
 (a) C_−/κ_3 = c_N/(κ_3 N_4) → 0 as N_4 grows. If GM's c_0 is a fixed number (a condition z ≤ e^{−c_0β} with c_0 independent of β), G4 fails for N_4 > c_N/(c_0κ_3). This is now a theorem-level statement about our side: by §5.2 the true per-cell C_− is at most K_N/N_4, so no better proof of E3c can rescue a fixed c_0. [P for our side; I for GM's form]
 (b) If the dilution conditions are asymptotic in β (R3S1_GAP §4.1: πβ ≪ z^{−1/3} ≪ (8π²βz)^{−1/2}), both reduce to K β z^{1/3} ≪ 1 with K = 8π² (the larger of π and 8π²). With z = e^{−C_−/g²} this reads
   C_−/(3g²) ≥ log(8π²κ_3/g²) + log(1/δ_GM),
 with δ_GM the smallness that GM's expansion needs. To leading order
   g_0² ≈ C_− / (3 log(8π²κ_3/(δ_GM C_−))) = c_N / (3N_4 log(8π²κ_3N_4/(δ_GM c_N))).
 So g_0² ∝ 1/(N_4 log N_4). [P-sketch: elementary algebra; κ_3 and δ_GM are [I]]
 (c) Cost relative to earlier claims, at the same κ_3, δ_GM: §5.0 (false) would give g_0² larger by a factor π² (up to the log); E2 §6.2 gave C_− ≈ γ²/(192N_4³), so g_0² ∝ 1/(N_4³ log N_4). The new bound gains a factor ≈ 64N_4² (for γ² ≤ 2) in g_0².
 (d) Numerical size. SU(2), ρ → 0: C_− = 2/(3N_4). For N_4 = 8, C_− = 0.083: the core weight is ≤ e^{−0.083|q|/g²}. Compare S_0 = 8π²/(Ng²) = 39.5/g². The proved per-cell suppression is 474 times weaker than the semiclassical one.

### 7.3 Node R and the sharp node E3s: a structural problem [P-sketch]
§5 shows that the fine-flux charge q_c = Φ(∂c) counts tight lattice dipoles that straddle a cell face. Their action is ≤ K_N/(N_4g²) for the pair and for each cell (K_2 = 253.6 inside C; 2N_4 sin²(π/(2N_4))·64 ≤ 32π²/N_4 = 315.8/N_4 for the whole pair).
 (a) E3s is false for this charge. A per-cell bound C_− = (8π²/N)(1 − δ) fails for N_4 ≥ 7 (SU(2)) and N_4 ≥ 18 (SU(3)). Making the cell larger does not help, because the dipole is local. [P]
 (b) Theorem R in the form of R3S1_GAP §3.3, with q_c = (dn)_c read as the fine flux, is inconsistent for large N_4. Argument: in the Villain model at spacing L, two adjacent cells with charges ±1 cost at least the lattice Coulomb pair energy 2π²β_3·2(v(0) − v(e_1)) = (2π²/3)β_3 (because v(0) − v(e_1) = 1/6 for the 3d lattice Laplacian), with β_3 = κ_3/g². The true weight of the event "this cell pair carries the fine charges ±1" is ≥ c_{N_4} e^{−K_N/(N_4g²)} by the positivity argument of E4. If K_N/N_4 < (2π²/3)κ_3, the cores would need ζ_cζ_{c′} > 1, which contradicts (R-a) (ζ ≤ e^{−C_−/g²} < 1). For SU(2), κ_3 = O(1) [I], so this happens for N_4 of order K_2/(6.6κ_3) and above. [P-sketch, given κ_3 = O(1)]
 (c) What R needs instead. The charge variable of R must not count lattice-scale dipoles. One candidate: block angles reduced mod 2π, Θ_P := principal value of Σ_{p∈P} θ_p over the fine plaquettes of an L-face P, and block charge Q_c := (2π)^{−1} Σ_{P∈∂c} Θ_P. The dipole of §5.1 has Σ_{p∈P} θ_p = ±2π on the shared face, so Θ_P = 0 and Q = 0 in both cells. For a block charge Q_c ≠ 0, some face has |Θ_P| ≥ π/3, and |Σ_{p∈P}θ_p| ≥ |Θ_P| ≥ π/3 (the principal value has the smallest modulus in its class mod 2π). Steps 2–5 of §4, run on the single face P instead of the closed surface ∂C, then give a bound of the same 1/N_4 form, with 2q̄ replaced by 1/3 and n_s by N_4². [P-sketch] Whether lattice dipoles that straddle an edge or a corner of the block lattice can produce Q ≠ 0 at cost O(1/N_4) is open. If they can, a block charge does not remove the problem, and the reduced gas carries light charged objects whose fugacity e^{−O(1/N_4)/g²} is far above e^{−S_0}.
 (d) Scope. Nothing in (a)–(c) affects the non-sharp Theorem A at fixed N_4 if the reduction treats the tight dipoles as neutral polymers K_X: their weight e^{−c/(N_4g²)} still tends to 0 as g → 0 at fixed N_4, which is the smallness G2 needs ("any fixed exponential smallness"). It does change what the dominant charged objects are, and it forces the charge definition in R to be fixed before E3c, E4, G3 and G4 are re-run.

## 8. Grades and open items

| item | content | grade |
|---|---|---|
| Lemma 1 | |(E^{−1}U_γE)_jj − Π_k m_k| ≤ Σ_{k<l}σ_kσ_l for any closed path and any frames; |θ_p| ≤ π(ε_p + (3/2)Σσ²) | [P], [N] |
| Lemma 2 | s_b^j ≤ η_b/γ under (H1)_ρ at both ends, no smallness | [P], [N] |
| E2 open item 1 | |θ_p^j| ≤ π(ε_p + (3/(2γ²))Σ_{b∈∂p}η_b²) | [P] (Lemma 1 + Lemma 2) |
| Theorem E3c′ | g²S(C×S¹) ≥ min(4N_4q̄²/n_s, γ²q̄/(3N_4)); cube: (q̄/(3N_4))min(2q̄, γ²) | [P] |
| Remark (2) | small-angle limit reproduces 2π²q̄²/(3N_4) of R3S1_GAP §5.0 in the abelian channel | [P] |
| §5 family | explicit charged configurations with g²S(C×S¹) = 2N_4 sin²(α_N/N_4)(56 − 8/√3) ≤ K_N/N_4 | [P] (formula), [N] (flux value) |
| §5.2 | g²S_min = Θ(1/N_4) for N = 2, 3 | [P] |
| §7.2 | G4: C_−/κ_3 ∝ 1/N_4; g_0² ∝ 1/(N_4 log N_4) if GM's dilution conditions are asymptotic in β | [P-sketch]; GM side [I] |
| §7.3 (a) | per-cell sharp bound E3s false for N_4 ≥ 7 (SU(2)), ≥ 18 (SU(3)) | [P] |
| §7.3 (b) | Theorem R with fine-flux charges inconsistent with the Villain weight for N_4 ≳ K_N/(6.6κ_3) | [P-sketch], κ_3 = O(1) [I] |
| §7.3 (c) | block charge (principal block angles) removes face-straddling dipoles; E3c-type bound for it | [P-sketch]; edge/corner dipoles open |

Open items.
1. Charge definition for Theorem R (§7.3). Decide whether R uses the fine flux (then tight dipoles must be absorbed as neutral K_X polymers by hand) or a block charge. For the block charge: prove or refute that edge- and corner-straddling lattice dipoles give Q ≠ 0 at cost O(1/N_4).
2. Constant. The proved c = min(2, γ²)/3 is 64–154 times below the numerical minima (§6.3). §6.4 shows where the factor goes: the π in (1c), the factor 2 from Σσσ ≤ (3/2)Σσ² against the actual Berry phase, the ladder triangle inequality, and the two-channel minimum. None of this changes the N_4 scaling.
3. The (H1)/(H0)-failure set on ∂C. E3c′ needs (H1) on ∂C. If (H1) fails on ∂C, the frame and the flux are not defined there, and the cell is in the "deformed large-field" set of E2 open item 2. Its probability is still not estimated.
4. Instance (B′). E3c′ uses only E2 (a4), the ladder and the Wilson form of the action. For Balaban's unit-scale effective action the inequality ε_p² ≤ g²S_p must be replaced by the lower bound on g^{−2}A(U) + E_K on large-field cells [I: not checked].
5. Verification. This file is unverified. A SOURCES_R3S1_E3C_VERIFY.md pass should check Lemma 1 (the induction), Lemma 2, Step 5 of §4, the count D_0 = 56 − 8/√3 in §5.1, and the inconsistency argument §7.3 (b).
