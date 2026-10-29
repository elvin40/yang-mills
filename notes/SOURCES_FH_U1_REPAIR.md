IDs: this file cites the new ids of IDS.md (2026-10-28) where a row exists, and the old FABLE_HARD labels otherwise. Map: Theorem IV = L-196; IV L3 (FX-V) = L-320 / H-106; IV L6 (S1-pt) = L-323 / H-165; IV L14 (Loc-f) = L-331 / H-142; IV L15 = L-332; IV L17 = L-334; B18 (N3) = R-042; FABLE_HARD as a whole = ledger row R-052. Theorems U1, U2, W1, W2, (Gap_K), (U-Lap)_K have no IDS row; they keep their FABLE_HARD names.
# SOURCES_FH_U1_REPAIR — repair of FABLE_HARD Theorem U1, the joint-limit OS4 claim of §4.4, and the L6 grade

Date: 2026-10-28 (Opus). Type: derivation (repair), not a verification. Edits: this file only. No existing file touched; PLAN.md not appended; sync.sh not run (caller's override).
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read and excluded from every grep.
Inputs read: the run rules (private run queue, l. 1–15); FABLE_HARD.md (full, 184 lines); INFINITE_VOLUME_FABLE.md (full, 256 lines); paper/drafts/open_problem.tex (full); SOURCES_FX_D.md l. 46–67 (polydisc 𝒫_*, c_* := min(c, ½), VERIFY corrections); SOURCES_FX_O23.md l. 28–52, 90 (D3 denominator model corrected; choice A/B); SOURCES_D3_NEW4.md l. 90–94 (r ≤ 1/10); IDS.md l. 1–12 and the rows above.
Grades: [P] proved here, complete; [P-sketch] proved here up to routine steps named in place; [I] inference or reading, not a proof. A grade "given X" means the proof uses X as an input and X is not proved here.

## 0. Results in one place

1. U1 lower bound (Task 1a). The bound |E e^{Δ^c}| ≥ e^{−C}cos C holds when C < π/2, with C := C_1(t) = C_2 Σ_i |t_i| N(f_i)(1 + |supp f_i|_1)/r (a factor 2 better than FABLE_HARD's C_𝒫). The threshold π/2 is sharp for any argument that uses only a sup bound. On FABLE_HARD's polydisc 𝒫 the condition reads c_* C_2 Σ_i (1 + |supp f_i|_1) < π/2. It fails for every n > π/(4c_*C_2), and no file proves c_*C_2 small. The sup of |Δ − Δ(·, 1)| over V grows linearly in n, so no sup-based lower bound holds on a polydisc with n-free radii. [P]
2. U1 does not need the lower bound (Task 1b). Apply Montel/Vitali to Φ_ℓ := E_{ν_ℓ} e^{Δ^c_ℓ}, not to G_ℓ = log Φ_ℓ. Φ_ℓ is holomorphic and uniformly bounded on 𝒫°, and its Taylor coefficients at 0 are polynomials in the cumulants. [P given (L6-𝒫), L3, L14]
3. U1 has a second gap, which the lower bound does not touch (Task 1c). The Taylor coefficients of G_ℓ with a repeated index (∂_{t_1}², …) are cumulants with coincident plaquettes. (U-IV)_K and (U-cum)_K do not control them, because test functions in D_n vanish on the diagonals. Corrected U1: (U-Lap)_K ⇔ (U-IV⁼)_K ⇔ (U-cum⁼)_K (coincident points allowed). Hence (U-Lap)_K ⇒ (U-IV)_K is ONE-WAY. The converse needs the extra statement (U-diag)_K, and fails for general measure families. [P]
4. Joint limit (Task 2). W1 holds at finite (K, ℓ) with constants free of K and ℓ (constants tracked, §3.2). It needs L3 and the common radius (B18). It does not need L6 or L14. From it: in every joint limit, OS4 for the plaquette two-point function ⇔ lim_{|a|→∞} limsup_i |Cov_{ν_{K_i,ℓ_i}}(w_1, w_{2,a})| = 0 (W2_J). (Gap_K) for every K implies OS4 only for the fixed-K infinite-volume lattice limits. For a joint limit it needs (Gap_U): decay of the finite-volume unit-scale covariances, uniform in (K, ℓ). U2 is a fixed-K statement. Its summability constant is K-uniform; the rate in (Q) is not tracked. FABLE_HARD §3.4's claim "joint uniqueness ⇒ (U-Lap)_K for every K" is false. [P]
5. L6 grade (Task 3): [P-sketch] relative to I1–I8 (ν form), and relative to I1–I8 + B18 + vacuum extraction (𝒫 form). Unverified. FABLE_HARD's "PROVED" and INFINITE_VOLUME_FABLE's "[R …; sourced extension unverified]" both change to this one grade. [I, grading judgement with reasons in §5]

## 1. Task 1a — the lower bound on |E e^{Δ^c}|, its condition, and the check against 𝒫

### 1.1 The step in FABLE_HARD
FABLE_HARD l. 118 (ii) states |Δ^c_ℓ| ≤ 2C_2 Σ|t_i|N(f_i)(1 + |supp f_i|_1)/r =: C_𝒫 and concludes |E_{ν_ℓ}e^{Δ^c}| ∈ [e^{−C_𝒫}, e^{C_𝒫}]. At complex t the lower end does not follow: e^{Δ^c} is complex, and its mean can be 0. The proof of U1 (l. 125) takes G_ℓ = log E e^{Δ^c} and uses |G_ℓ| ≤ C_𝒫. That needs a nonzero mean with a quantitative lower bound.

### 1.2 A V-independent part that FABLE_HARD drops [P]
Notation. a_i := N(f_i)(1 + |supp f_i|_1)/r; c_ℓ(t) := Δ_ℓ(f(t), 1) (V-independent); D_ℓ(t, V) := Δ_ℓ(f(t), V) − c_ℓ(t). (L6-𝒫) bounds D only: sup_V |D_ℓ(t, ·)| ≤ C_1(t) := C_2 Σ_i |t_i| a_i on 𝒫.
Since D_ℓ(0, V) = 0 and D_ℓ is holomorphic in each t_i on |t_i| ≤ c_*r/N(f_i), the Schwarz lemma in t_i gives sup_V |∂_iD_ℓ(0, V)| ≤ C_2 a_i. With m_ℓ,i = ∂_ic_ℓ(0) + E_ν ∂_iD_ℓ(0, ·):
  Δ^c_ℓ(t, V) = k_ℓ(t) + D_ℓ(t, V),  k_ℓ(t) := c_ℓ(t) − t·∇c_ℓ(0) − t·E_ν∂D_ℓ(0, ·),
and k_ℓ does not depend on V. So
  Φ_ℓ(t) := E_{ν_ℓ} e^{Δ^c_ℓ(t, ·)} = e^{k_ℓ(t)} · E_{ν_ℓ} e^{D_ℓ(t, ·)}.      (1.1)
FABLE_HARD's bound |Δ^c| ≤ 2C_1 holds only if c_ℓ(t) − t·∇c_ℓ(0) = 0. That is true under vacuum extraction: the V-free activities a(Γ; f, 1) are moved into W_K (INFINITE_VOLUME_FABLE §7.4 Disagree 2; SOURCES_FX_D l. 67). Without it, (1.1) splits the V-free part off exactly. c_ℓ is a sum over the polymers that meet supp f, at the finitely many scales m ≤ K. So |c_ℓ(t)| ≤ C(K) Σ_i (1 + |supp f_i|_1) on 𝒫, uniformly in ℓ, with C(K) ∝ M^{−4}L^{4K}E_0 C_κ (finite at fixed K, not uniform in K). By L14, c_ℓ = c_∞ + O(e^{−cℓ}) uniformly on 𝒫. The zeros of Φ_ℓ are the zeros of E e^{D_ℓ}. Only D_ℓ matters for the lower bound.

### 1.3 Lemma LB (the lower bound and its sharp condition) [P]
Let X be a complex random variable with |X| ≤ C a.s.
(a) If C < π/2, then |E e^X| ≥ Re E e^X = E[e^{Re X} cos(Im X)] ≥ e^{−C} cos C > 0. (|Re X|, |Im X| ≤ C, and cos decreases on [0, π/2].)
(b) If C ≥ π/2, there is a law with |X| ≤ C and E e^X = 0. Take X ∈ {iC, −iC, 0} with weights p, p, 1 − 2p and p := 1/(2(1 − cos C)). Since cos C ≤ 0, p ≤ ½. Then E e^X = 2p cos C + 1 − 2p = 0.
So π/2 is the exact threshold for any argument that uses only the sup bound |X| ≤ C. A second simple route, |e^X − 1| ≤ e^C − 1, gives |E e^X| ≥ 2 − e^C, which is weaker (it needs C < log 2).
Applied to (1.1) with X = D_ℓ(t, ·): for t with C_1(t) < π/2,
  |Φ_ℓ(t)| ≥ |e^{k_ℓ(t)}| e^{−C_1(t)} cos C_1(t),  and G_ℓ := log Φ_ℓ is holomorphic there, with |G_ℓ − k_ℓ| ≤ C_1 + log(1/cos C_1).      (1.2)
The condition C_1 < π/2 is a factor 2 weaker than the condition C_𝒫 < π/2 suggested in the open_problem.tex comment (l. 91–93), because the V-free shift t·E∂D does not move zeros.

### 1.4 Check against the polydisc that FABLE_HARD uses [P]
FABLE_HARD §1.2 and §3.1 use 𝒫 = {|t_i| ≤ c_*r/N(f_i)}, with c_* = min(c, ½) (SOURCES_FX_D §5.2) and r ≤ 1/10 (SOURCES_D3_NEW4 l. 94). On 𝒫,
  C_1(t) ≤ c_* C_2 Σ_i (1 + |supp f_i|_1),
with equality for the bound at the corner |t_i| = c_*r/N(f_i). Since |supp f_i|_1 ≥ 1, the right side is ≥ 2n c_*C_2. So:
- The condition of Lemma LB holds on all of 𝒫 iff c_* C_2 Σ_i (1 + |supp f_i|_1) < π/2.
- It FAILS for every family with n > π/(4c_*C_2), and for every family with large total support, whatever the size of C_2 > 0.
- No file proves c_*C_2 small. C_2 contains the term 2E_0C_κ from the unit-scale E-terms (FABLE_HARD §1.3 (b2), Schwarz on the E-class radius r), so c_*C_2 ≥ 2c_*E_0C_κ with E_0, C_κ of order one. At the unit scale Lemma A gives only a relative factor O(p_0(g)² polylog) (FABLE_HARD §2.2), not a small one. So even n = 1 is not covered without a new estimate.
- The failure is not only a weakness of the stated bound [I]. For bumps far apart, D_ℓ(t, V) is close to Σ_i D_{ℓ,i}(t_i, V) with D_{ℓ,i} depending on the links near supp f_i, so sup_V Re D_ℓ ≈ Σ_i sup_V Re D_{ℓ,i} grows linearly in n whenever each D_{ℓ,i} is nonconstant in V (the coupling term B_K t_i Σ_p f_i(x_p)A_p(V) is nonconstant). An n-uniform lower bound on |E e^{D}| therefore needs log E e^{Σ_i D_i} ≈ Σ_i log E e^{D_i}, which is a clustering property of ν_ℓ, i.e. the infrared input itself.
Largest region where FABLE_HARD's argument (bounded log) works: the Reinhardt domain 𝒫_{π/2} := {t ∈ 𝒫 : C_2 Σ_i |t_i| a_i < π/2}. Every polydisc {|t_i| ≤ ρ_i} with Σ_i ρ_i a_i C_2 < π/2 and ρ_i ≤ c_*r/N(f_i) lies in it. The equal-share choice is
  ρ_i = min(c_*r, θ r/(n C_2 (1 + |supp f_i|_1))) / N(f_i),  any θ < π/2.
The per-bump radius of this polydisc shrinks like 1/n. On it, (1.2) holds with C_1 ≤ θ, uniformly in ℓ and V.

## 2. Task 1b/1c — U1 without the lower bound, and the coincident-point gap

### 2.1 The log is not needed [P given (L6-𝒫), L3, L14]
Work with Φ_ℓ of (1.1) on the open polydisc 𝒫°. (If one wants the closed 𝒫, replace c_* by c_*/2 in its definition; holomorphy then holds on a neighbourhood.)
(i) Holomorphy. For each V, t ↦ Δ_ℓ(f(t), V) is holomorphic on 𝒫 (FX2 with the common radius, given B18). By (1.1), |e^{Δ^c_ℓ}| ≤ e^{|k_ℓ(t)| + C_1(t)}, so dominated convergence gives Φ_ℓ holomorphic on 𝒫°.
(ii) Uniform bound. By §1.2, sup_ℓ sup_{t∈𝒫} |k_ℓ(t)| ≤ C(K)Σ_i(1 + |supp f_i|_1) + 2 sup_𝒫 C_1 + |t·∇c_ℓ(0)|-term, all finite and ℓ-free at fixed K (and 0 under vacuum extraction for the c-part). Hence sup_ℓ sup_{𝒫°} |Φ_ℓ| =: B < ∞.
(iii) Taylor coefficients. Φ_ℓ(0) = 1, so log Φ_ℓ is holomorphic on some ℓ-dependent neighbourhood of 0 (on 𝒫_{π/2} uniformly, by §1.4, but this is not needed). By (2.1) of INFINITE_VOLUME_FABLE, log Φ_ℓ(t) = log(Z_ℓ[f(t)]/Z_ℓ[0]) + W_K[f(t)] − t·m_ℓ near 0. For every multi-index α with |α| ≥ 2,
  ∂^α log Φ_ℓ(0) = κ_α^{(K,ℓ)} + ∂^α W_K^{(ℓ)}(0),      (2.1)
κ_α the joint cumulant with f_i repeated α_i times; the first-order coefficients are 0. The coefficients ∂^αΦ_ℓ(0) are universal polynomials in {∂^β log Φ_ℓ(0)}_{2 ≤ |β| ≤ |α|} (formal exponential), and conversely (formal logarithm, since Φ_ℓ(0) = 1). These are identities between Taylor coefficients; they need no lower bound on Φ_ℓ away from 0.
(iv) Montel and identity. By (ii), (Φ_ℓ) is a normal family on 𝒫°. Every subsequential limit Φ is holomorphic on the polydisc 𝒫° centred at 0, so it equals its Taylor series at 0 there. If the coefficients ∂^αΦ_ℓ(0) converge, all subsequential limits have the same Taylor series, so they coincide, and Φ_ℓ → Φ uniformly on compacts of 𝒫°. Conversely, if Φ_ℓ converges pointwise on 𝒫°, then by (ii) and Montel it converges locally uniformly, and Cauchy's formula gives convergence of every ∂^αΦ_ℓ(0).
(v) Δ_ℓ → Δ_∞. |E e^{Δ_∞(t,·) − t·m_ℓ} − Φ_ℓ(t)| ≤ B(e^{Ce^{−cℓ}} − 1) → 0 by L14 ((3.1) of INFINITE_VOLUME_FABLE; FABLE_HARD l. 118 (iii)).
So Vitali/Montel on Φ_ℓ replaces Vitali on G_ℓ. The lower bound of §1 is not needed anywhere in U1. The π/2 condition is needed only if one wants the log bounded, which U1 does not use.

### 2.2 The gap that remains: repeated indices [P]
FABLE_HARD l. 125 says the Taylor coefficients of G_ℓ "of order ≥ 2" converge by (U-cum). (U-cum)_K covers κ_B for B a SET, i.e. multi-indices α ∈ {0, 1}^n, for disjoint bump families. The Taylor coefficients of G_ℓ include α with some α_i ≥ 2. Example: the source enters through the plaquette weight, so
  ∂_{t_1}² log Z_ℓ[t_1 f_1]|_0 = Σ_{p,q} f_1(x_p) f_1(x_q) κ(P_p, P_q)  (up to the fixed normalization of the source),
and the sum contains the coincident terms p = q, i.e. Var(P_p).
(U-IV)_K does not see these terms. Every F ∈ D_n(B) vanishes on the diagonals, so in the lattice sum S_{n,ε,ℓ}(F) = Σ F(x_{p_1}, …, x_{p_n})⟨φ_{p_1}⋯φ_{p_n}⟩ every term with p_i = p_j is zero. So (U-IV)_K is exactly the convergence of the centred moments at pairwise distinct plaquettes. By the moment–cumulant relation (sub-tuples of a distinct tuple are distinct), it is equivalent to convergence of the cumulants of order ≥ 2 at distinct plaquettes, i.e. to (U-cum)_K. This part of FABLE_HARD's proof is correct.
Define:
 (U-IV⁼)_K: lim_ℓ ⟨φ_{p_1}⋯φ_{p_n}⟩_{μ_{ε,ℓ}} exists for every n and every plaquette tuple, repetitions allowed.
 (U-cum⁼)_K: lim_ℓ κ^{(K,ℓ)}(f_{i_1}, …, f_{i_m}) exists for every m ≥ 2 and every tuple drawn with repetition from a disjoint bump family.
 (U-diag)_K: the same limit exists for every cumulant of order ≥ 2 with at least one repeated plaquette.
At fixed K a bump can be chosen with exactly one plaquette centre in its support (diameter < ε/2; N(f) is finite at fixed ε). By multilinearity, (U-cum⁼)_K is therefore equivalent to convergence of κ(P_{p_1}, …, P_{p_m}) for all plaquette tuples with repetition, m ≥ 2. Order-≥2 cumulants do not see the centring constant c_{ε,ℓ}. So (U-cum⁼)_K ⇔ (U-IV⁼)_K ⇔ (U-cum)_K + (U-diag)_K.
The converse direction fails for general families of measures. Let the plaquette variables be independent under μ_ℓ, with a one-site law that depends on ℓ and whose variance oscillates in ℓ. Every centred moment at distinct plaquettes is 0, so (U-IV) holds, and Var(P_p) has no limit, so (U-diag) fails. This is not a Wilson measure. For the Wilson family, whether (U-IV)_K implies (U-diag)_K is open [I]; nothing in the files relates coincident to distinct cumulants at fixed K.

### 2.3 Corrected Theorem U1 [P given (L6-𝒫), L3, L14]
Theorem U1′ (fixed K). Let 𝒫° be the open common polydisc (radius c_*r/N(f_i), needs B18). Then:
 (a) (U-Lap)_K on 𝒫° ⇔ (U-cum⁼)_K ⇔ (U-IV⁼)_K.
 (b) (U-IV)_K ⇔ (U-cum)_K.
 (c) Hence (U-Lap)_K ⇒ (U-IV)_K. This is a one-way implication. (U-IV)_K ⇒ (U-Lap)_K holds iff (U-diag)_K holds in addition; it is not proved, and it fails for general measure families (§2.2).
 (d) In (a), "for every t ∈ 𝒫°" can be weakened to "for every t in some nonempty open subset of 𝒫°" (Vitali, using the bound B of §2.1(ii)).
 (e) No lower bound on |E e^{Δ^c}| is used. The bound of Lemma LB holds on 𝒫_{π/2} ⊂ 𝒫 and fails as a sup-based statement on 𝒫 for n > π/(4c_*C_2) (§1.4).
Proof. (a): §2.1 (iii)–(v), with (2.1) and the convergence of the W_K coefficients (ℓ-free up to e^{−cℓ} by L14), and §2.2 for the reduction to single-plaquette bumps. (b), (c): §2.2. (d): §2.1 (iv). ∎
Consequences for the text of FABLE_HARD. §3.2 "the following are equivalent" changes to U1′. §3.2 "Reading" (uniqueness ⇔ convergence of the centred exponential moments) changes to: convergence of the centred exponential moments on 𝔉 is equivalent to uniqueness of the ℓ-limit of ALL lattice correlations of the plaquette field, coincident points included; it implies uniqueness on D_n. §3.3(b) is unchanged ((U-Gibbs)_K ⇒ (U-Lap)_K ⇒ (U-IV)_K). §3.3(c) "the exact equivalence class of (U-IV)_K is (U-Lap)_K" changes to "(U-Lap)_K is the exact equivalence class of (U-IV⁼)_K; it implies (U-IV)_K". §3.5 "EQUIVALENT (fixed K)" changes to "EQUIVALENT to (U-IV⁼)_K; SUFFICIENT for (U-IV)_K".

## 3. Task 2 — OS4 at fixed K versus the joint limit (K, ℓ) → ∞

### 3.1 What FABLE_HARD proves and at which level
- W1 (§4.4) is stated "in every Theorem IV limit", but its objects W_∞, Δ_∞, ν_∞ are built at FIXED K (INFINITE_VOLUME_FABLE §3.3 (ii): "a second extraction in K gives the joint subsequence"). As written, W1 compares κ_2^{(K,∞)} with Cov_{ν_∞^{(K)}}.
- U2(a) gives a Gibbs property for ONE interaction Φ_K. A joint sequence (K_i, ℓ_i) visits each K at most finitely often, so no single specification is attached to a joint limit.
- §4.4 concludes "(Gap_K) ⇒ OS4 for every Theorem IV limit". Theorem IV limits are joint limits. The step from fixed K to the joint limit is not given. open_problem.tex l. 143 flags the same point.

### 3.2 W1 at finite (K, ℓ), with the constants tracked [P given L3 and B18]
Setting. Bumps f_1, f_2 with diam ≤ D; a ∈ R⁴ with 4D ≤ |a| ≤ ℓ/2 − 2D (so the torus distance of the supports is ≥ |a| − 2D ≥ |a|/2). Write w_1 := ∂_{t_1}Δ_ℓ(0, ·) for f_1 and w_{2,a} := ∂_{t_2}Δ_ℓ(0, ·) for τ_af_2, on T_ℓ at level K. ρ := c_*r (common radius, B18).
Exact identity. Lemma ν-cum at |B| = 2 (INFINITE_VOLUME_FABLE (2.1)–(2.2), no L14 needed):
  κ_2^{(K,ℓ)}(f_1, τ_af_2) = −∂^{12}W_K + E_{ν_{K,ℓ}}[∂^{12}Δ_ℓ(0, ·)] + Cov_{ν_{K,ℓ}}(w_1, w_{2,a}).
Bound on the first two terms. Both are sums over polymers Γ ∈ P_m, m ≤ K, that meet both supports (FX1). The coupling term (b1) is linear in f and gives no mixed derivative; the h_K term is absent under the main booking (INFINITE_VOLUME_FABLE Lemma h_K). Per polymer, two-variable Cauchy on |t_i| ≤ ρ/N(f_i) with (FX3): |∂^{12}a_m(Γ; ·, V)|_0| ≤ E_0 e^{−κd_m(Γ)} N(f_1)N(f_2)/ρ², uniformly in V. A polymer of scale m meeting both supports has diam ≥ |a|/2 and diam ≤ 2Mλ_m(d_m + 1), so d_m ≥ |a|/(4Mλ_m) − 1. The number of scale-m cubes that meet supp f_1 is ≤ (1 + |supp f_1|_1) max(1, (Mλ_m)^{−4}), and (FX4) gives ≤ e^{c_0s} polymers of tree length s through a cube. With n := K − m, λ_m = L^{−n}:
  |∂^{12}W_K| + sup_V|∂^{12}Δ_ℓ(0, V)| ≤ 2E_0 C′_κ (N(f_1)N(f_2)/ρ²)(1 + |supp f_1|_1) Σ_{n=0}^{K} max(1, M^{−4}L^{4n}) e^{−(κ−c_0)(|a|L^n/(4M) − 1)}
   ≤ C_W N(f_1)N(f_2)(1 + |supp f_1|_1) e^{−c_W|a|/M},
  c_W := (κ − c_0)/4,  C_W := 2E_0C′_κ e^{κ−c_0} ρ^{−2} S(b_0),  S(b) := Σ_{n≥0} L^{4n} e^{−b(L^n − 1)},  b_0 := (κ − c_0)D/M,
using |a| ≥ 4D, so b := (κ − c_0)|a|/(4M) ≥ b_0, and S is decreasing in b.
Constant audit. E_0, κ, c_0, C′_κ: free of V, K, ℓ by L3 (FX-V). ρ = c_*r: free of ε, K, ℓ, V and of the scale, given B18 (SOURCES_FX_D §5.2). S(b_0): an infinite series that does not depend on K; it converges for every b_0 > 0, and S(b_0) = O(b_0^{−4}) as b_0 → 0. So C_W, c_W are free of K, ℓ, a and the position of the bumps; C_W depends on D only through b_0. (FABLE_HARD writes C "free of a" and rate (κ − c_0)/2; the rate constant depends on the geometric convention, and C depends on D/M through S.) Without B18, with an FX2 radius of the form c r (log g_m^{−2})^{−q}, the factor (log g_m^{−2})^{2q} = polylog(γ^{−2} + βn) enters the n-sum and is absorbed by e^{−b(L^n − 1)}; C_W changes, its K-independence does not.
Inputs used: L3 (including the per-polymer bounds of the fine-origin terms (b4)), B18 (or the weaker radius above), Lemma ν-cum. NOT used: L6 (singletons do not enter the difference), L14 (all polymers are on T_ℓ; wrapping ones only improve d_m).
Theorem W1_fin. For all K ≥ K_0, all even ℓ > 22M, and 4D ≤ |a| ≤ ℓ/2 − 2D:
  |κ_2^{(K,ℓ)}(f_1, τ_af_2) − Cov_{ν_{K,ℓ}}(w_1, w_{2,a})| ≤ C_W N(f_1)N(f_2)(1 + |supp f_1|_1) e^{−c_W|a|/M}.      (3.1)
FABLE_HARD's W1 at fixed K follows by ℓ → ∞ along a subsequence, using L14 to replace w by w^∞ and weak convergence of ν_{K,ℓ} (INFINITE_VOLUME_FABLE §3.3 (ii)).

### 3.3 W2 for a joint limit [P given W1_fin]
Let (K_i, ℓ_i) be a Theorem IV sequence and κ_2^J(f_1, τ_af_2) := lim_i κ_2^{(K_i,ℓ_i)}(f_1, τ_af_2). It exists, since κ_2 = S_2(f_1 ⊗ τ_af_2) with f_1 ⊗ τ_af_2 ∈ D_2 (disjoint supports). Put c_i(a) := Cov_{ν_{K_i,ℓ_i}}(w_1, w_{2,a}). The c_i(a) need not converge in i (their difference from κ_2 contains W_K-terms, whose K-convergence is the open E13-type item). By (3.1), for |a| ≥ 4D,
  limsup_i |c_i(a) − κ_2^J(a)| ≤ C_W N(f_1)N(f_2)(1 + |supp f_1|_1) e^{−c_W|a|/M}.
Corollary W2_J. For the joint limit along (K_i, ℓ_i) and every bump pair:
 (i) κ_2^J(f_1, τ_af_2) → 0 as |a| → ∞ ⇔ (Dec_J): lim_{|a|→∞} limsup_i |c_i(a)| = 0.
 (ii) For m < c_W/M: |κ_2^J(a)| ≤ A e^{−m|a|} for |a| ≥ 4D ⇔ limsup_i |c_i(a)| ≤ A′ e^{−m|a|} for |a| ≥ 4D (A, A′ related by C_W N N(1 + |supp f_1|_1)).
The n-point form (joint ν-cumulants of the w's) follows the same way from the mixed-block bound of Lemma C pointwise (IV L5 = L-322), which is K- and ℓ-uniform under L3 [P-sketch; FABLE_HARD states it in one sentence and so does this file].

### 3.4 U2: what is K-uniform [P for the summability bound; I for (Q)]
- Summability. Σ_{X∋0}‖Φ_{K,X}‖ ≤ 6g^{−2}·2 + C E_0C_κ + Σ_j (Mλ_j)^{−4}·(irrelevant size at scale j). The j-sum is the f = 0 case of the sums in FABLE_HARD §1.4 ((b4-R) with κ_0 > 4, (b4-E) with exponent α_f). These sums are bounded uniformly in K. So the absolute summability constant is K-uniform, with the same inputs as L6 (I1–I4, I7) [P-sketch, inherits the L6 grade].
- (Q). The quasi-locality rate of the transported terms is the decay of the composed minimizer maps U_j(V) over K − j steps, measured in unit-lattice units. No file states this rate, or its K-dependence [I]. The DLR error e^{O(e^{−cR})} in U2(a) uses it.
- Conclusion of U2. It identifies a subsequential ℓ-limit at fixed K as a Gibbs measure of Φ_K. It has no joint form: along (K_i, ℓ_i) the interaction changes with i. A joint form would need (K-conv): Φ_K → Φ_∞ in the quasi-local norm and w_f^{(K)} → w_f^{(∞)} uniformly. That is an E13-type UV-uniqueness statement, open.

### 3.5 What the joint limit needs [P for the implications; the inputs are open]
OS4 at fixed K [P given L3, L14, (Q), B18]. For each fixed K, every subsequential limit ℓ_j → ∞ at that K is an infinite-volume LATTICE theory at spacing ε = L^{−K}. By W1 at fixed K and U2(a), (Gap_K) implies κ_2^{(K,∞)}(f_1, τ_af_2) → 0, and its exponential form implies exponential clustering at rate m < c_W/M. This is the correct content of FABLE_HARD §4.4's sentence. It is not a continuum statement.
Joint limit. By W2_J, OS4 for a joint limit is exactly (Dec_J) along its sequence. Two sufficient conditions:
 (Gap_U) [finite volume, uniform]: for each bump pair, lim_{R→∞} limsup_{K,ℓ→∞} sup_{R ≤ |a| ≤ ℓ/4} |Cov_{ν_{K,ℓ}}(w_1, w_{2,a})| = 0. Then (Dec_J) holds along every Theorem IV sequence [P]. Exponential form: |Cov_{ν_{K,ℓ}}(w_1, w_{2,a})| ≤ A e^{−m|a|} for all K ≥ K_0, ℓ ≥ 4|a| gives a mass gap ≥ min(m, c_W/M) on the subspace generated by {w_fΩ}, for every joint limit [P].
 (K-conv) + (Gap_∞): if (K-conv) holds, every weak limit point ν_* of ν_{K_i,ℓ_i} is a translation-invariant Gibbs measure of Φ_∞ (the U2(a) argument with K-dependent kernels that converge) and c_i(a) → Cov_{ν_*}(w_1^{(∞)}, w_{2,a}^{(∞)}) along subsequences; then (Gap_∞) for Φ_∞ gives (Dec_J) [P-sketch given (K-conv), (Q) uniformly in K].
(Gap_K) for every K is NOT sufficient by itself. It controls Gibbs states of each Φ_K, but a joint sequence uses each Φ_K only at one finite ℓ, and no file gives a K-uniform rate for the approach of ν_{K,ℓ} to the Gibbs states of Φ_K. A K-uniform decay function in (Gap_K) does not fix this without (K-conv) or a K-uniform finite-volume approximation. [P for the logic; the counterexample class is any family where the finite-ℓ covariance at level K decays only for ℓ ≥ ℓ_0(K) with ℓ_0(K) → ∞; I as to whether such behaviour occurs for ν_{K,ℓ}]

### 3.6 FABLE_HARD §3.4 (joint uniqueness) needs one correction [P]
§3.4 states: "if the joint limit is unique along all sequences with K_i, ℓ_i → ∞, then (U-Lap)_K holds for every K and the fixed-K limits converge". This is false. A joint statement says nothing about fixed K. Example: S_{K,ℓ} = S + K^{−1}(−1)^{ℓ/2}. Every joint sequence converges to S, and no fixed-K ℓ-limit exists. Even at fixed K, (U-IV)_K would give only (U-IV)_K, not (U-Lap)_K (§2.2).
Correct statement. If (U-IV)_K holds for every K ≥ K_0 with S_{K,ℓ}(F) → S^{(K)}(F) uniformly in K ≥ K_0, and S^{(K)}(F) → S(F) as K → ∞, then S_{K,ℓ}(F) → S(F) along every joint sequence, by |S_{K,ℓ} − S| ≤ sup_{K′}|S_{K′,ℓ} − S^{(K′)}| + |S^{(K)} − S|. The converse direction is not available. Only (U-IV)_K is needed here, not (U-Lap)_K. The chain controls none of the three inputs (fixed-K ℓ-convergence, its K-uniformity, K-convergence).

### 3.7 Corrected theorem text (Theorem IV = L-196, with the FABLE_HARD additions) [grades per clause]
Theorem IV (infinite-volume existence, compactness form; conditional). Let G = SU(2), d = 4, L odd > 11, g ∈ ]0, γ], g_0(K, g) the Lemma D″ bare coupling. Assume the hypotheses of Target 2 for every even ℓ > 22M, and L3 (FX-V), L6 (S1-pt), with B18, (D), (Reg), C13 named among them, as in INFINITE_VOLUME_FABLE §7.1.
 (a) Existence. There is a sequence (K_i, ℓ_i) → (∞, ∞) along which S_{n,ε_i,ℓ_i}(F) converges for every n ≥ 1 and every compactly supported F ∈ ⁰S_n; the limit extends to ⁰S_n. [as INFINITE_VOLUME_FABLE]
 (b) Every limit family satisfies OS0 (s = 20, (n!)^{1+2η}), OS1-T, OS1-H (B_4), OS2 (half space), OS3. [as INFINITE_VOLUME_FABLE]
 (c) Given L14, every fixed-K subsequential ℓ-limit has the form (3.2): the Z⁴ activities at level K and a limit point ν_∞^{(K)} of the unit-scale measures. [as INFINITE_VOLUME_FABLE; fixed K]
 (d) Clustering criterion for joint limits [P given L3 and B18; L6 and L14 not used]. For every limit sequence (K_i, ℓ_i), every pair of disjoint bumps f_1, f_2 of diameter ≤ D, and |a| ≥ 4D:
  limsup_i |κ_2^{(K_i,ℓ_i)}(f_1, τ_af_2) − Cov_{ν_{K_i,ℓ_i}}(w_1, w_{2,a})| ≤ C_W N(f_1)N(f_2)(1 + |supp f_1|_1) e^{−c_W|a|/M},
 with C_W, c_W free of K, ℓ, a and of the sequence. Hence the plaquette two-point function of the limit clusters iff lim_{|a|→∞} limsup_i |Cov_{ν_{K_i,ℓ_i}}(w_1, w_{2,a})| = 0, and decays at rate m < c_W/M iff these covariances do.
 (e) Fixed-K clustering [P given L3, L14, (Q), B18]. For each K, if (Gap_K) holds, every subsequential infinite-volume lattice limit ℓ_j → ∞ at that K has a clustering plaquette two-point function (exponential at rate m < c_W/M under the exponential form of (Gap_K)).
 (f) Conditional OS4 for joint limits [P given L3, B18]. If (Gap_U) of §3.5 holds, every limit family of (a) satisfies OS4 for the plaquette two-point function; under its exponential form at rate m, the limit has a mass gap ≥ min(m, c_W/M) on the subspace generated by {w_fΩ}. The n-point form is [P-sketch].
 (g) Not asserted: convergence along the full sequence (uniqueness); OS1-R; OS4 or a gap without (Gap_U) (in particular, (Gap_K) for every K is not shown to suffice for a joint limit); any observable other than the centred plaquette density; nontriviality.
Changes against the source texts. INFINITE_VOLUME_FABLE §7.1 has (a)–(d) with OS4 only under "not asserted"; clauses (d)–(f) here are new and replace FABLE_HARD §4.4's sentence "(Gap_K) ⇒ OS4 (resp. gap) for every Theorem IV limit", which is correct only as clause (e) (fixed K). FABLE_HARD's W1 hypothesis list "L3, L6, L14" shrinks to "L3, B18" for the finite-volume form (3.1).

## 4. Task 3 — one grade for L6 (IV L6 = L-323, (S1-pt) = H-165)

### 4.1 The two texts
- FABLE_HARD §1.7 and §5: "PROVED relative to I1–I8 (ν form); PROVED relative to I1–I8 + B18 (polydisc form)".
- INFINITE_VOLUME_FABLE §7.2 row L6: "[R to D3W8 F2′(ii) (verified given (W4), (Eps), (D)) + D2C Lemma A + (Reg); sourced extension unverified]".
These are written at different times. INFINITE_VOLUME_FABLE predates FABLE_HARD §1, which writes the sourced extension out. So "sourced extension unverified" is now partly stale (the extension is written) and partly correct (no verifier has read it: FABLE_HARD_VERIFY.md does not exist, IDS row R-052 says UNVERIFIED).

### 4.2 Grade
L6 (ν form): [P-sketch] relative to I1–I8; unverified.
L6 (𝒫 form): [P-sketch] relative to I1–I8 + B18 + vacuum extraction; unverified.
Reasons, from the files only:
1. The argument is written out step by step (FABLE_HARD §1.3–§1.6). The class decomposition, Lemma A's hypotheses, and the j-sums with κ_0 > 4 are complete. So [I] is too low.
2. It is not [P]. Three steps are readings, not estimates, and FABLE_HARD itself names two of them as open checks:
 - (b4-E): whether the D2C §3.3 irrelevant bounds hold pointwise on the complex domain at the shifted-coupling point (FABLE_HARD §1.7, "confirm on D2C l. 83–100"); not done.
 - I8: absorption of every B′-class term by the next R-operation under C13 [V p. 390 + I]; not checked.
 - I3: (D) read for the space Ũ_j^c of the R-terms [I, "same mechanism"].
3. The inputs are open, not only unverified. I1 = S1(c) at every scale is the sourced Theorem 1, an open target (FABLE_HARD §1.5). I4 = (Reg) has no ledger row [R]. FABLE_HARD's phrase "L6 adds no open item beyond (Reg)" is accurate as a statement about Target 2's hypothesis list, but "PROVED" without the qualifier overstates it.
4. I5 ("(L6-ν) does not need B18") uses the D3-model radius c_τr/(E_0R̄_j⁴). SOURCES_FX_O23 l. 28, 90 corrects the D3 denominator model, and SOURCES_FX_D l. 67 says the R̄_m^{−4} claim "rests on the refuted D3 model". With the corrected model the R-ratio radius is c·r given N3 = B18 (choice B), or the ratio is f-independent with a moved term (choice A). So I5 is [I]: the ν form is B18-free only under choice A, with the moved term checked. Until then, list B18 for both forms.
5. The 𝒫 form needs vacuum extraction (the V-free a(Γ; f, 1) moved into W_K) to be used as FABLE_HARD l. 118 uses it (SOURCES_FX_D l. 67; §1.2 above). The statement of (L6-𝒫) subtracts Δ(f, 1), so the bound itself does not need it; its use in U1 needs either vacuum extraction or the split (1.1).
No upgrade beyond [P-sketch] is supported by a proof in the files.
Text for both files (proposed, not applied): "L6: [P-sketch] relative to I1–I8 (FABLE_HARD §1.3–§1.6); 𝒫 form also relative to B18 and vacuum extraction; B18-freeness of the ν form [I] (D3-model radius); unverified (no FABLE_HARD verifier)."

## 5. Mapping to open_problem.tex
The draft flags these points; this file settles them as follows.
1. l. 91–93 (lower bound at complex t): the condition is C_1 < π/2 with C_1 = C_2Σ|t_i|a_i (§1.3). It fails on 𝒫 for n > π/(4c_*C_2) (§1.4). U1 does not need it (§2.1).
2. l. 109, l. 171 ("exact equivalence class", "equivalent to (U-IV)_K"): wrong as stated. (U-Lap)_K ⇔ (U-IV⁼)_K, and (U-Lap)_K ⇒ (U-IV)_K one-way (§2.3).
3. l. 97 (joint uniqueness needs uniformity): correct in substance; the converse sentence "uniqueness of the joint limit along all sequences implies (U-Lap)_K for every K" is false (§3.6).
4. l. 139–143 (joint clustering): the "safe reading" is close but not sufficient as worded. "(Gap_K) for every K, with decay uniform in K" still lacks the K-uniform passage from ν_{K,ℓ} to Gibbs states of Φ_K (§3.5). The sufficient condition is (Gap_U), or (K-conv) + (Gap_∞).
5. l. 65, l. 81, l. 130: the grades of (L6-𝒫), U1, W1 change to §4.2, §2.3 and §3.2 (W1 needs L3 + B18 only).

STATUS: COMPLETE. Files written: SOURCES_FH_U1_REPAIR.md only. No numerics. Firewall kept.

## Qualifications after verification (FABLE_HARD_VERIFY, 2026-10-29)

Source: FABLE_HARD_VERIFY.md §D (six claims CONFIRMED, D-6 CORRECTED in scope) and §E. The text above is unchanged; where it disagrees with this block, this block holds.
- §3.5 "(Gap_K) for every K is NOT sufficient by itself" and §3.7(g) "(Gap_K) for every K is not shown to suffice for a joint limit": qualify by "for an arbitrary joint sequence; for iterated joint sequences (ℓ → ∞ at fixed K first, then K → ∞) K-uniform (Gap_K) suffices (clause (e′), FABLE_HARD_VERIFY §C.2(c))". Theorem IV(a) can always be realized by an iterated sequence, so K-uniform (Gap_K) gives one limit family with OS4 for the plaquette two-point function. (Gap_U) stays the condition for every joint limit.
- §5 item 4: the "safe reading" with K-uniform (Gap_K) is sufficient for iterated joint limits (an existence statement with OS4), not for every limit.
- §0 item 5 and §4.2: list B18 (R-042) for both forms of L6 in the headline (as §4.2 point 4 already asks). Verified grade (FABLE_HARD_VERIFY §C.3): proved relative to listed inputs {I1 (R-035), I2, I3 incl. (D) on Ũ^c [I], I4 (Reg) [R], I7, I8 [I], R-042}; vacuum extraction is needed only for FABLE_HARD's bound (ii), not for U1′.
