IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# U3_LEMMA51_R23: items R2 and R3 of U3_LEMMA51

Written 2026-10-27 (Claude, Opus 5.5). Scope: items R2 and R3 of U3_LEMMA51.md §3.4. R1 is assumed (U3_REPAIRS.md, item O6). Read: U3_LEMMA51.md §1–§6, U3_GAUSSIAN_RG.md §1–§4, U3_VERIFY.md §5–§6, R2_VERIFY.md §0 (third correction, called "item 6" in the task), CMP 109 pp. 252–254 (balaban/1987_cmp109_rg_approach_I.txt, definition (0.4) and the contour family G(y, x)). No numerics were run. Built one section per step.

## 0. Headline
- R2 holds in a stronger form: for odd M the lattice averaging symbols are exact even functions of 1/M at fixed fine momentum (midpoint identity). The point symmetry is not the mechanism; it only zeroes the background angle and the f¹ coarse-bond line piece.
- R3 holds for volume pieces with ≤ 6 derivatives, uniformly in K including K → 0. It fails for the single block-M constraint in d = 4: first-leg line pieces of the f¹ averaging carry a non-gauge weight W(t) = (ie/8)(1/8 − t²/2), and S_f(ρ) ≤ C/(f²M). So U3_LEMMA51 Theorem 4.1 is false for m = 2 in d = 4. d = 2 numerics cannot detect this.
- For Balaban's composed constraint the lines act on smoothed fields; the effect is a fixed O(L) term of the limit. Use the one-step recursion (§3c): it needs only the one-step O6 bound, not R1 for the composed KKT.
- Rate: no log from K-derivatives. The level sum gives j L^{−2j} (σ^{(1)}) and j² L^{−2j} (σ^{(2)}) given a Ward statement (W); the clean L^{−2j} needs a non-resonance statement (N). Neither is proved.

## 1. Statements

Notation. Level-j units, block side M odd, fine spacing h := 1/M. Coarse bond c = [c_−, c_− + e_μ], c_− = 0 by Lemma 3.1 of U3_LEMMA51 (shift invariance). Fine momentum q = K + 2πl, k = q/M = qh, head region |k_ν| ≤ π. Constant field f in the (0,1) plane, charge e. The canonical symbol of the linearized (0.4) averaging at U_0^φ is ĉ_f(q) = Σ_m f^m ĉ_m(q) (row over the umklapp family; matrix in coarse direction μ and fine component ν). "Single block" = one (0.4) step with block M (U3_LEMMA51 Theorem 4.1, numerics mode "single"). "Composed" = Balaban's j-fold composition (Lemma 5.0, CMP 98 (91)).

R1, with a norm (verifier point, U3_LEMMA51_VERIFY §6(i)). Fine-fine entries of 𝔨_0 grow like |q_l|² ≲ M², and ∂_K𝔨_0 like |q_l|. Put w_l := 1 + |q_l| on fine rows, 1 on coarse rows, D_w := diag(w). The form of R1 used below is

  sup_M sup_{K∈BZ} ‖D_w (∂_K^β 𝔨_0^{−1}) D_w‖_{ℓ²→ℓ²} ≤ C_β,  |β| ≤ 6,   (1.1)

i.e. 𝔨_0^{−1} maps the H^{−1}-weighted space to the H^{1}-weighted space, uniformly. Its partner for the f-coefficients, which follows from §2–§3 for the Hessian and the volume parts of the averaging, is ‖D_w^{−1} ∂^β 𝔨_m D_w^{−1}‖ ≤ C (the f¹ Hessian symbol is O(|q|), the f² symbol O(1), derivatives do not grow). With (1.1), each product in (3.2)–(3.3) of U3_LEMMA51 is a bounded operator, and the l-sums inside it are the sums of §3.

Theorem R2 (proved in §2). Single (0.4) step, odd M, centered block. For m = 0, 1, 2 and fixed q, the lattice symbol ĉ_m^{lat}(q; h) is an exact, finite sum of terms P(i∂_s)[Π_r ρ(s_r h) · J(s)] evaluated at s_r ∈ {0, q_ν}, with ρ(u) := (u/2)/sin(u/2), J a continuum integral, and P a polynomial. Hence:
 (a) ĉ_m^{lat}(q; h) = ĉ_m^{lat}(q; −h): even in h at fixed q, exactly; ĉ_m^{lat}(q; 0) = ĉ_m^{c}(q), the continuum symbol (2.3);
 (b) in the head, |∂_q^β(ĉ_m^{lat} − ĉ_m^{c})(q)| ≤ C_β h² (1 + |q|)² Env_m(q), with Env_m the decay envelope of the continuum pieces (§3.1); no M^{−1} term;
 (c) the h² coefficient is the midpoint Euler–Maclaurin term (2.5).
The point-reflection symmetry of G(c_−, x) is not the mechanism for (a). It gives two other facts: the averaged background angle is 0 (item 6), and the f¹ coefficient of the coarse-bond line piece vanishes (§2.4).

Theorem R3 (proved in §3 for the pieces stated there). (a) Volume pieces (all pieces at f = 0 after Lemma 1.4 of U3, and the last-leg and [x, x′] pieces at every order in f): Σ_l (1 + |l|)² |∂^β t_l^c| < ∞ for |β| ≤ 6, tails Σ_{|l|_∞ > M/2} ≤ C M^{−3}, uniformly in K ∈ BZ including K → 0. (b) Leg pieces supported on k-dimensional coordinate subspaces carry non-gauge weights at order f¹. In d = 4 their products in σ^{(2)} give umklapp sums that diverge like M (k = 1, lines) and log M (k = 2, planes). (c) Consequence (Proposition 3.4): for the single block in d = 4 there is a fixed coarse pattern ρ with ⟨ρ, S_f ρ⟩ ≤ C/(f² M) for all f ≠ 0, while ⟨ρ, S_0 ρ⟩ ≥ c_0 > 0. So the single-block σ^{(2)} is not bounded uniformly in M, and Theorem 4.1 of U3_LEMMA51 is false for m = 2 in d = 4. In d = 3 the loss is log M; in d = 2 there is none. (d) For the composed averaging the line pieces act on level-(j−1) fields; each step has a finite umklapp sum (L^d terms), and the line effect is a fixed O(L) term of the limit (§3.5).

R4 (verifier's addition; §3b). For the composed averaging, R1–R3 give the rate j·L^{−2j}. §3b writes the level sum as a triangular recursion over levels and reduces R4 to one non-resonance statement (N): the level-j f⁰ error, propagated by the f¹ vertex, has no component on the f¹ eigendirections with eigenvalue L^{−2}. (N) is not proved.


## 2. R2: proof

### 2.1 The linearized (0.4) averaging at U_0^φ
CMP 109 (0.4): Ū(c) = exp[i Σ_{x∈B(c_−)} M^{−d} |G|^{−2} Σ_{Γ∈G(c_−,x)} Σ_{Γ′∈G(c_+,x′)} (1/i) log U(ℓ)] U(c), with the loop ℓ = Γ ∪ [x, x′] ∪ (−Γ′) ∪ (−c), x′ = x + e_μ. G(y, x) is the set of axis-ordered staircases from y to x, one per ordering of the directions with n_ν ≠ 0.

Fact A (uniform family). Put the zero-length legs back: for every x, the family average over G(0, x) equals the uniform average over all d! orderings π of the staircase Γ_π(x). Reason: the map from all orderings to orderings of the nonzero directions has fibres of equal size d!/k!. So there are no special lattice slices.

Fact B (loop flux). θ_ℓ := flux of the background through ℓ (in charge units) is f·A_{01}(ℓ), with A_{01} the signed area of the (0,1)-projection. Since Γ′ − e_μ ∈ G(0, x),
  θ_ℓ = f [R_μ(x) + a(Γ) − a(Γ′ − e_μ)],  R_μ(x) := x ∧ e_μ (the ribbon swept by translating a path 0 → x along e_μ),   (2.1)
with a(Γ) the signed area between Γ and the chord 0 → x. Averaging Γ and Γ′ independently over the same uniform family, the a-terms cancel: θ̄(x) = f R_μ(x), linear in x. On the centered block Σ_x θ̄(x) = 0 (R2_VERIFY item 6). So Ū(U_0^φ) = U_0^φ(c), and the exp in (0.4) is linearized at the angle 0: its derivative is the identity, exactly.

Fact C (dlog factor). Move every fluctuation to the base point c_−: U(ℓ) = e^{iX_ℓ} U_0(ℓ), X_ℓ = Σ_{b∈ℓ} ± Ad(transport c_− ← b) B_b. Then (1/i) log U(ℓ) = θ_ℓσ_3 + g(ad) X_ℓ + O(B²), and on the charged component g = g(z) := z/(1 − e^{−z}), z = ±ieθ_ℓ. Taylor: g = 1 + z/2 + z²/12 + O(z³), so g = 1 ± ieθ/2 − e²θ²/12 + O(f³). Note g(z) = e^{z/2}·(z/2)/sinh(z/2): to first order the dlog factor is the phase of half the loop flux.

So the linearized constraint per coarse bond is
  δV(c) = M^{−d} Σ_x avg_{π,π′} Σ_{b∈ℓ} ± g(z_ℓ) T_ℓ(b) B_b + Σ_{b∈c} T_c(b) B_b,   (2.2)
the last term from the factor U(c) outside the log.

### 2.2 The canonical symbol has polynomial f-coefficients
Divide by the straight Wilson line W(c_mid, b_mid) in the symmetric gauge (U3_LEMMA51 Lemma 3.1). For b ∈ ℓ the ratio W(c_mid, c_−)T_ℓ(b)/W(c_mid, b_mid) is exp(ieΦ_ℓ(b)), with Φ_ℓ(b) = f × signed area of the polygon c_mid → c_− → (along ℓ) → b_mid → c_mid. Its vertices are lattice sites, b_mid, and c_mid, so Φ_ℓ is a polynomial (shoelace) in x, in the staircase corners, and in b_mid, with M-independent coefficients. The same holds for θ_ℓ by (2.1). Hence, to O(f³),
  g(z)e^{ieΦ} = 1 + ie(θ/2 + Φ) − e²(θ²/12 + θΦ/2 + Φ²/2),   (2.3a)
and the f^m coefficient of the canonical symbol is, for each m ≤ 2,
  ĉ_m^{lat}(q)_{μν} = M^{−d} Σ_{x∈B} avg_{π,π′} Σ_{b∈ℓ, b∥e_ν} ± p_m(x, b_mid) e^{−iq·b_mid} + (c-segment term),   (2.3b)
with p_m a polynomial of degree ≤ 4m whose coefficients do not depend on M. The continuum symbol ĉ_m^c(q) is (2.3b) with M^{−d}Σ_x → ∫_{[−1/2,1/2]^d} dx and Σ_b → ∫ along each leg.

### 2.3 The midpoint identity and evenness in h
Geometry. For odd M the block sites x = n/M, |n_ν| ≤ (M−1)/2, are exactly the midpoints of the partition of [−1/2, 1/2] into M cells. The links of a leg from a site p to p + (n/M)e_ν have midpoints p + (k + 1/2)h e_ν, k = 0, …, |n| − 1: the midpoint grid of a segment whose ends are sites. All domains (the cube, every leg) are fixed segments or cubes whose endpoints are grid-aligned and do not move with h.

Frequencies. b_mid has coordinates (x_{π(1)}, …, x_{π(k−1)}, t, 0, …, 0) on the k-th leg (plus e_μ for Γ′ and for [x, x′]). So every exponential is e^{−is t} with s ∈ {q_ν, 0}, and |s h| ≤ |k_ν| ≤ π in the head.

Identity (exact). For a segment [a, b] with b − a ∈ hZ, midpoints t_k, and a polynomial p,
  h Σ_k p(t_k) e^{−ist_k} = p(i∂_s)[ ρ(sh) I(s) ],  I(s) := ∫_a^b e^{−ist} dt,  ρ(u) = (u/2)/sin(u/2).   (2.4)
Proof: h Σ_k e^{−ist_k} = h e^{−is(a+b)/2} sin(s(b−a)/2)/sin(sh/2) = ρ(sh)I(s); apply p(i∂_s). At s = 0 by continuity. ∎

Proof of Theorem R2 (a). Evaluate (2.3b) from the innermost leg sum outward. Each leg sum is (2.4). Its result, as a function of the outer variable x_ν (an endpoint), is an exponential polynomial in x_ν with frequencies in {0, q_ν}. The outer cube sum is again (2.4) in each coordinate. After all sums, each term is a product of continuum factors and of factors h^r ρ^{(r)}(s h) (from p(i∂_s) hitting ρ). ρ is even, so ρ^{(r)} has parity (−1)^r and h^r ρ^{(r)}(sh) is even in h. Setting h = 0 gives the iterated integrals, i.e. ĉ_m^c. ∎

(b). Write each factor as ρ(sh) = 1 + (ρ(sh) − 1) with |ρ(sh) − 1| ≤ C(sh)² and h^r|ρ^{(r)}(sh)| ≤ C h²|s| for r = 1 (ρ′ is odd, |ρ′(u)| ≤ C|u|) and ≤ C h^r ≤ C h² for r ≥ 2, on |sh| ≤ π. The continuum factor that remains in each term is a continuum piece with fewer polynomial weights; by §3.1 it has the same envelope. Expanding the product gives the bound with (1 + |q|)². q-derivatives act on ρ(sh) as h ρ′, which keeps the same estimate. ∎

(c). Explicit form. ρ(u) = 1 + u²/24 + 7u⁴/5760 + …, equivalently the midpoint Euler–Maclaurin formula h Σ_k F(t_k) = ∫_a^b F − (h²/24)[F′]_a^b + (7h⁴/5760)[F‴]_a^b − …. Hence
  ĉ_f^{lat}(q) = Σ_{m≤2} f^m [ ĉ_m^c(q) + h² ĉ_{m,2}(q) ] + O(f³) + O(h⁴),
  ĉ_{m,2}(q) = −(1/24) Σ_{nested sums} [∂_t F_m]_{ends},   (2.5)
where F_m is the integrand of (2.3b) for the sum in question (the inner leg sums first, then the d cube directions), and [·]_{ends} is the difference of the end values (for the cube: on the faces x_ν = ±1/2). Check at m = 0 for the plain block part: χ_M/χ_∞ = Π_ν ρ(k_ν) and R_M/(M R_∞) = ρ(k_μ) up to the phase that cancels in R P_T R^† (U3 §4 Step 2), so ĉ_{0,2} = (1/24)(Σ_ν q_ν² + q_μ²) ĉ_0^c for that part, as (2.5) gives.

The continuum symbols, to second order in f, are (2.3b) with (2.3a): ĉ_1^c = ie ∫dx avg ∮_ℓ (θ/(2f) + Φ/f) e^{−iq·y} dy_ν + (c-term), ĉ_2^c = −e² ∫dx avg ∮_ℓ (θ²/12 + θΦ/2 + Φ²/2) f^{−2} e^{−iq·y} dy_ν + (c-term). Sign of z and of e follows the charged-sector convention of U3_LEMMA51 §2.1; the b̄ sector is the complex conjugate.

### 2.4 What the point symmetry does give
(i) Σ_x θ̄(x) = 0 (Fact B), so the background is reproduced and the exp factor is trivial. (ii) The −c leg inside the loop and the U(c) factor outside combine to the c-segment with coefficient 1 − avg g(z). At order f¹ this is −(ie/2) M^{−d}Σ_x θ̄(x) = 0. So the coarse bond c carries no f¹ line piece. At f² it carries (e²/12)⟨θ²⟩ ≠ 0; this enters σ^{(2)} only linearly (through C_2 H in (2.4)–(2.5) of U3_LEMMA51), which is finite. Neither fact is needed for evenness in h; even a nonzero background angle would be a midpoint sum of a polynomial, hence even in h.

### 2.5 Corner blocks (even L), for comparison
For a corner block {0, …, M−1}^d the sites are the midpoints of [−h/2, 1 − h/2]: the domain moves with h while the base point c_− does not. (2.4) then produces factors e^{∓ish/2}, odd in h. This is the M^{−1} mechanism of U3_LEMMA51 §4.2, now exact. It does not occur for odd M.


## 3. R3: proof, and where it fails

### 3.1 Envelopes, and why K-derivatives do not grow
Every continuum building block is the Fourier transform of a compactly supported measure μ with a piecewise polynomial density on a box or a coordinate sub-box: the averaging pieces (supports of diameter ≤ 2), and the inverse of a polynomial for the propagator. K enters only through q = K + 2πl, so ∂_K = ∂_q at fixed l, and ∂_q^β μ̂ = ((−ix)^β μ)^. The measure (−ix)^β μ has the same support and the same jump structure. So:

Lemma 3.1. If μ is supported on a k-dimensional coordinate sub-box with directions S (|S| = k) and has a density with jumps on the faces, then |∂_q^β μ̂(q)| ≤ C_β Π_{ν∈S} (1 + |q_ν|)^{−1}, and μ̂ is flat (no decay) in the d − k directions not in S. For the plain average the density in direction μ is a triangle (box ∗ segment), which gives (1 + |q_μ|)^{−2}.

So for the averaging, "derivatives bring |l|^{+1} each" never happens: they bring a factor x (bounded on the support), i.e. none. For the propagator G(q) = |q|^{−2}(…), ∂^β G = O(|q|^{−2−|β|}): derivatives improve the decay. For the lattice remainders of §2, ∂_q^β acts on ρ(sh) as h^{|β|}ρ^{(β)}, which costs no power of l. This is the refinement of U3 §4 Step 4 that U3_VERIFY §5 checked at f = 0; it holds at every order in f because the f-coefficients only add polynomial weights.

### 3.2 Representation, and the point K → 0
Use the KKT form 𝒦(f) of U3_LEMMA51 §2.3, but Schur-reduce the fine sector with l ≠ 0 onto the finite block {fine l = 0, coarse, multipliers}. For K ∈ BZ and l ≠ 0, |q_l| ≥ π, so every l ≠ 0 quantity is smooth across K = 0. All K → 0 structure (the 1/|K|² of the l = 0 propagator, the transverse projector) sits in the finite block, whose inverse is controlled by R1 in the norm (1.1). So uniformity in K including K → 0 reduces to: the l ≠ 0 sums below converge with all derivatives uniformly on a neighbourhood of the closed BZ. They do, whenever they converge at all, because no term has a singularity there.

Gauge-fixing caveat. With the Dirichlet ghost term D_rD_r^† of U3_LEMMA51 the fine block is not l-diagonal: D_rD_r^† = DD^† − (Du)(Du)^†/N, u = (1, …, 1) over l, N = M^d, with (Du)_l ≈ i q_l growing in l. This rank-one coupling is a fine-scale object without a termwise umklapp limit (Σ_l |q_l|²/(N|q_l|²) = 1 is a lattice average). It drops out of σ (gauge invariance), so for R3 use instead a fine Feynman term DD^† plus one coarse gauge multiplier λ (S(V) = min_λ min{⟨B, (Δ + DD^†)B⟩ : C_fB = V + D′_fλ}); then the fine block is l-diagonal at f⁰, and all l-couplings run through C_f. R1 must be stated for whichever representation O6 uses; (1.1) is representation-independent in form.

### 3.3 Power count, d = 4 (R3 (a))
Typical term of (3.2)–(3.3) after the reduction: t_l = A(l)^† G(q_l) B(l), with A, B rows of 𝔨_m (averaging symbols, or Hessian f-coefficients composed with averaging rows through G) and their derivatives. For volume pieces, Lemma 3.1 gives |A(l)|, |B(l)| ≤ C Π_ν (1 + |l_ν|)^{−1}; G ≤ C(1 + |l|)^{−2}. So
  |∂^β t_l^c| ≤ C (1 + |l|)^{−2} Π_ν (1 + |l_ν|)^{−2}.
 - Weighted sum: Σ_l (1+|l|)² |∂^β t_l^c| ≤ C Π_ν Σ_{l_ν} (1 + |l_ν|)^{−2} < ∞.
 - Tail: the worst direction has one large component n and the rest 0: Σ_{n>M/2} n^{−2}·n^{−2} ≤ C M^{−3}.
 - Head error: by R2 (b), Σ_{head} |∂^β(t_l^{lat} − t_l^c)| ≤ C h² Σ_l (1+|l|)² × envelope ≤ C M^{−2}.
 - Hessian f-coefficients: the fine f¹ symbol grows like |q| and f² like 1 (U3_LEMMA51 Lemma 3.4 structure), so terms with Hessian rows have one extra |q| at most, compensated by the weight in (1.1) (each G carries |q|^{−2}). Count: Hessian-f¹ term A^† G h_1 G B ~ (1+|l|)^{−3}Π(1+|l_ν|)^{−2}: better than above.
 - K-derivatives: none add powers (§3.1), so |β| ≤ 6 costs nothing.
This proves R3 for volume pieces, uniformly in K including K → 0 (§3.2). This covers all f⁰ data (Lemma 1.4 of U3 removes the f⁰ leg pieces) and all f¹, f² pieces except those of §3.4.

### 3.4 Leg pieces: the obstruction for the single block (R3 (b), (c))
The k-th leg of Γ_π(x) lies in the k-dimensional coordinate subspace spanned by e_{π(1)}, …, e_{π(k)} through c_− (through c_+ for Γ′). Union over x: a k-dimensional sub-box. By Lemma 3.1 its symbol decays only in those k directions. At f⁰ the sum of all legs is the gauge term λ(c_−) − λ(c_+) (U3 Lemma 1.1), which drops out. At f¹ the leg pieces carry the weight ie(θ/2 + Φ) of (2.3a), which depends on the bond direction μ through R_μ(x). Then they are not a coarse gauge term.

Explicit first-leg weight (d = 4, symmetric gauge about c_− = 0, bond c = (0, e_1)). Fine links on the line ℓ_0 = {t e_0 : |t| < 1/2} enter V(c) only through first legs of Γ with π(1) = 0 (probability 1/4) and x_0 beyond t. On ℓ_0 the transport phase is 1 (A_0 = −(f/2)x_1 = 0 there). Of θ in (2.1), R_1 = x_0 survives; the a-terms are odd in x_1 and average to 0. So the f¹ weight on the link field B_0(te_0) is
  W(t) = (ie/2)(1/4) ∫_{|t|}^{1/2} x_0 dx_0 = (ie/8)(1/8 − t²/2),  ∫_{−1/2}^{1/2} W = ie/96,   (3.1)
(for t < 0 the reversed traversal and the reversed range give the same even function). The bond (−e_1, 0) sees ℓ_0 through −Γ′ with weight −W(t). Bonds in directions 0, 2, 3 get weight 0 at order f¹ (R_0 = −x_1 averages to 0; R_2 = R_3 = 0). So the f¹ part of the constraint on a field supported on ℓ_0 is the coarse pattern ρ := δ_{(0,e_1)} − δ_{(−e_1,0)} in the component μ = 1 (charged), times ∫W·B. ρ is not a coarse gradient: a gradient D′λ supported on these two bonds would also have nonzero components in directions 0, 2, 3 at site 0. So ⟨ρ, Δ_∞ ρ⟩ =: 2c_0 > 0, and ⟨ρ, Δ_j ρ⟩ ≥ c_0 for large j (U3 Theorem 4.1).

Proposition 3.4 (single block, d = 4). Let B_tube := a h on each fine link of ℓ_0 (component 0, charged), 0 elsewhere. Then C_f B_tube = a D′_f λ_1 + f a (ie/96) ρ + O(f a M^{−1}) + O(f² a), with λ_1 the f⁰ contour weight at site 0, and ⟨B_tube, Δ(φ) B_tube⟩ ≤ 6c_N a²/M (each tube link lies in 2(d−1) = 6 plaquettes, each with (∂B)_p = ±ah). Choose a fine gauge parameter ν with ν(0) = −aλ_1 and put B* = B_tube + D_φν. Then C_f B* = r := f a (ie/96)ρ_f, with ρ_f = ρ + O(f) + O(M^{−1}), and Δ(φ)D_φ = 0 (U_0^φ is a critical point). So
  ⟨r, S_f r⟩ ≤ ⟨B*, Δ(φ)B*⟩ ≤ 6c_N a²/M,  i.e.  ⟨ρ_f, S_f ρ_f⟩ ≤ 6c_N · 96² / (e² f² M).   (3.2)
At f = 0, ⟨ρ_0, S_0 ρ_0⟩ ≥ c_0. So, as M → ∞ at fixed f ≠ 0, S_f(ρ_f) → 0, and the M → ∞ limit of the single-block background form is discontinuous at f = 0. Hence no bound sup_M |σ^{(1)}|, |σ^{(2)}| ≤ C together with a uniform remainder |S_f − S_0 − fS_1 − f²S_2| ≤ C|f|³ (|f| ≤ f_0) can hold. ∎ (Given the weight computation (3.1); the O(f a M^{−1}) term comes from lattice slices x_⊥ = 0 of the [x, x′] segments and from Q_M, both of relative size M^{−1} or smaller.)

Where it sits in σ^{(2)}. In (2.5) of U3_LEMMA51 the term −g_1^†Γg_1 contains −S_0 C_1 Γ C_1^† S_0. With line pieces in C_1 this is a line-line self-energy. Power count: a line piece has |C_line(l)| ~ (1 + |l_0|)^{−2} (W is smooth and vanishes at the ends) and is flat in l_⊥ ∈ Z³; so Σ_{|l|≤M} |C_line(l)|² |q_l|^{−2} ~ Σ_{|l_⊥|≤M} |l_⊥|^{−2} ~ M. Plane pieces (k = 2, flat in Z²): log M. Hyperplane pieces (k = 3): finite, but the head-error weight (1+|l|)² gives an O(M^{−1}) error bound. So σ^{(2)} (single block) ≈ −c M in d = 4. The same count gives log M in d = 3, and a finite limit in d = 2 (line pieces are codimension 1 there), with an O(M^{−1}) (possibly M^{−1} log M) error bound. The d = 2 numerics cannot see the d = 4 effect. σ^{(1)} contains line pieces only linearly (C_1 H); it stays finite, but the head-error bound picks up Σ n²·n^{−3}: an M^{−2} log M bound (not shown to be attained).

Consequence. U3_LEMMA51 Theorem 4.1 (single block-M constraint, d = 4) is false for m = 2. The single-block model is not a valid proxy for Balaban's composed constraint at order f².

### 3.5 Composed averaging (R3 (d))
In the composed constraint, the step-i loop-log lines act on the level-(i−1) field, i.e. on Q_{L^{i−1}}B plus a lower gauge term. The lower gauge terms stay gauge terms at level i, exactly, by covariance of each step: C_f^{(i)}(D_f ν) = D′_f(ν|_{level i}). The Q-part is smoothed at the level-(i−1) spacing h_{i−1} = L^{i−1−j}, which cuts the transverse sum of §3.4 at |l_⊥| ~ 1/h_{i−1}. The tube estimate of Prop. 3.4, redone at step i in level-i units, gives cost a²/L and gain f_i a with f_i = f L^{−2(j−i)}. In level-j units the depth-i′ (= j − i) contribution to σ^{(2)} is O(L · L^{−6i′}) (flux² L^{−4i′}, and the four-derivative pattern S_iρ seen at level j: L^{−2i′}). So the top step gives a fixed term of size O(L), part of σ_∞^{(2)}, and deeper steps decay geometrically. Equivalently: by Schur composition, Δ_j(f) = S[Δ_{j−1}(fL^{−2}); C^{(1)}_f], a one-step map whose umklapp sums have L^d terms. R3 is then trivial per step; the infinite-sum statement of §3.3 is needed only for the f⁰ input Δ_{j−1} → Δ_∞ (U3 Theorem 4.1). This is the representation of §3b and §3c.

## 3b. R4: the level sum, reduced to a non-resonance statement

Recursion. By Schur composition and Lemma 5.0 (each step linearized at its own background), Δ_j(f) = T_f[Δ_{j−1}(fL^{−2})], with T_f the one-step map (one (0.4) step of side L, background flux f per level-j plaquette, fine data = the level-(j−1) kernel rescaled by L). Expand Δ_j(f) = Σ_m f^m σ_j^{(m)}. Since the input flux is fL^{−2},
  σ_j^{(m)} = Σ_{m′≤m} L^{−2m′} 𝒯^{(m−m′)}[σ_{j−1}^{(≤m′)}],   (3b.1)
triangular in m, with diagonal block L^{−2m}D𝒯^{(0)} (D𝒯^{(0)} = the f = 0 one-step map linearized at Δ_∞, acting on the f^m data).

Scaling count. Give f the weight 2 and K the weight 1. A perturbation of the f^m data of K-degree p has total degree n = p + 2m and is multiplied per step by L^{2−n} (n = 2 marginal). The marginal directions: Maxwell (m = 0, p = 2) and the spin coupling (m = 1, p = 0). The leading irrelevant directions, eigenvalue L^{−2}: (m, p) = (0, 4), (1, 2), (2, 0). All three have the same eigenvalue. This is the source of the j factor.

Error recursion. Let e_j^{(m)} := σ_j^{(m)} − σ_∞^{(m)}. Linearizing (3b.1) at the fixed point,
  e_j^{(1)} = A_1 e_{j−1}^{(1)} + B_{10} e_{j−1}^{(0)} + (quadratic),  e_j^{(0)} = D𝒯^{(0)} e_{j−1}^{(0)} + …,   (3b.2)
with A_1 = L^{−2}D𝒯^{(0)} on f¹ data and B_{10} the f¹ response to an f⁰ perturbation (Moyal brackets of (3.2) and the C_1, K_1 vertices). U3 Theorem 4.1 gives |e_j^{(0)}| ≤ C L^{−2j}, and its leading part lies in degree-4 directions. B_{10} maps degree-4 f⁰ data to degree-2 f¹ data (total degree is conserved by the Moyal bracket and by the vertices at the fixed point). Iterating,
  e_j^{(1)} = Σ_{k=0}^{j−1} A_1^k B_{10} e_{j−1−k}^{(0)} + A_1^j e_0^{(1)}.   (3b.3)

Two inputs.
(W) Ward statement. The marginal f¹ component (σ_j^{(1)}(K) at K → 0, the spin coupling relative to the Maxwell normalization) is the same at every level, because the level-j tree action is coarse-gauge-invariant and its Maxwell coefficient is exactly 1 (U3 Lemma 3.1(ii) and Theorem 4.1). So e_j^{(1)} has no marginal component. Argument (derivative expansion of a gauge-invariant kernel), not a proof. Without (W), (3b.3) does not even give e_j^{(1)} → 0.
(N) Non-resonance. Let P be the spectral projector of A_1 onto its eigenvalue L^{−2} (degree-2 f¹ directions). (N): P B_{10} v = 0 for the leading direction v of e^{(0)}.

Result. Given (W) and the per-step bounds of §3c: ‖A_1^k‖ ≤ C L^{−2k} off the marginal direction, so (3b.3) gives |e_j^{(1)}| ≤ C Σ_k L^{−2k}L^{−2(j−1−k)} = C j L^{−2j}. If (N) holds, the resonant part vanishes; the rest of A_1 contracts at L^{−3} or faster (next degree), and |e_j^{(1)}| ≤ C L^{−2j}. For m = 2 the same structure gives j² L^{−2j} in the worst case (a j L^{−2j} input e^{(1)} meets the eigenvalue L^{−2} of the (2, 0) direction), and L^{−2j} if (N) holds in both sectors.

Link to U3_LEMMA51 §4.3. The "depth i′" term there, of size L^{−2i′}·L^{−2(j−1−i′)}, is the k = i′ term of (3b.3). "Telescoping" (option (a) there) is (N). Option (b) (loop-log correction = coarse gradient + kernel with an extra flux power) would put B_{10}v in directions of degree ≥ 3, which also implies (N).

d = 2 reading (weak). At L = 3, M = 9 → 27 (j = 2 → 3), a dominant j L^{−2j} term would show a difference ratio near 9·(2/3) = 6. The F¹ ratio 7.19 equals the F⁰ ratio 7.26 (U3_LEMMA51 §5), so the f¹ sector shows no j factor at these sizes. The F² ratios 5.6–6.0 are near 6, but the single block (no level sum) shows the same, so the data do not attribute it to the level sum.

Status: R4 is reduced to (W) + (N). Neither is proved.

## 3c. R1 for the composed constraint, and a one-step formulation

What is not available. U3_REPAIRS_VERIFY §4: the proved O6 bound covers only the one-step bordered matrix of (6.1). For the composed constraint only Prop. B is available, and the Dirichlet (ghost) gap scales like 4M^{−6} in fine units, not uniformly in j. So R1 in the form (1.1) for the composed KKT is open, and I do not prove it here. §3.2 also shows that the composed KKT with D_rD_r^† has a rank-one fine-scale coupling with no umklapp limit. So the composed KKT is the wrong object to bound.

One-step formulation (recommended). Use (3b.1): σ_j = T_f[σ_{j−1}(·; fL^{−2})]. At each step the bordered matrix is the one-step KKT with fine kernel = the level-(j−1) data (rescaled by L) and constraint = one (0.4) step of side L. Its f = 0 part 𝔨_0 is exactly the one-step bordered matrix of (6.1) with kernel Δ_{j−1}. Then:
 - R1 needs only the one-step O6 bound, for kernels in the admissible set of U3 §6.2. Δ_{j−1} is in that set for all j by U3 Theorem 4.1 (it converges to Δ_∞ at L^{−2j}). The weighted norm (1.1) is still needed, with w_l = 1 + |q_l| over the L^d one-step umklapps; it is equivalent to the plain norm up to constants depending on L only.
 - R3 is trivial per step: the umklapp sums are finite (L^d terms). The infinite sums of §3.3 enter only through U3 Theorem 4.1 (f⁰ data), which is proved.
 - R2 enters only at the bottom step (the bare Wilson Hessian and one (0.4) step on the fine lattice): Lemma 3.4 of U3_LEMMA51 and Theorem R2 above, with M replaced by L.
 - The level sum becomes the recursion (3b.2), i.e. R4 = (W) + (N).
 - Derivative budget. (3.2)–(3.3) use up to four K-derivatives of the input at each step, which would lose derivatives over j steps. They do not: the input is evaluated at (K + 2πl)/L, so each K-derivative carries a factor L^{−1}. Under rescaling a strip of analyticity of width δ in level-(j−1) units becomes width Lδ in level-j units. So the needed input is uniform strip analyticity (A): σ_j^{(m)} analytic in |Im K_ν| < δ with sup bounds uniform in j. (A) is plausible by this gain and by U3 Lemma 3.1(iii); not proved.

Precise list of what the one-step route needs: one-step O6 (proved per U3_REPAIRS_VERIFY, to be checked that its admissible kernels include Δ_{j−1}, j ≥ 1), (A), (W), and (N). It needs no composed-constraint bound.


## 4. Rate

Two possible sources of a log (U3_LEMMA51 §6, O1), treated separately.

(i) P_2 and other K-derivative terms. No log. K-derivatives of continuum blocks at fixed l bring no power of l (Lemma 3.1), and derivatives of the lattice remainders carry h per derivative (§2.3 (b)). The M^{−2} log M of U3 §4 Step 4 came from the crude bound (1+|l|)^{|α|}. This agrees with U3_VERIFY §5 and the verifier's item 6. The remaining issue there is K → 0 uniformity, which §3.2 moves into the finite block (R1).

(ii) Level sum of the composed constraint. R2 + R3 (+ R1 per step) give e_j^{(1)} = O(j L^{−2j}) and e_j^{(2)} = O(j² L^{−2j}), given (W). The clean L^{−2j} needs (N) (§3b). Neither (W) nor (N) is proved.

Answer to the question asked. R2 + R3 as proved here deliver:
 - single block-M constraint: clean L^{−2j} for σ^{(0)}; for σ^{(1)} at most M^{−2} log M (line pieces, §3.4; bound not shown to be attained); for σ^{(2)} in d = 4, no convergence (Prop. 3.4). The single block is not Balaban's object.
 - Balaban's composed constraint, via the one-step route of §3c: the rate j L^{−2j} for σ^{(1)} and j² L^{−2j} for σ^{(2)}, conditional on one-step O6, (A), and (W); the clean L^{−2j} if also (N).
Either conditional rate gives geometric convergence of β_j(0) with any ρ > L^{−2}, so U3 Theorem 7.1 survives with ρ = L^{−2} replaced by any ρ > L^{−2}.

Effect of §3.4 on the limit object. For the composed constraint, σ_∞^{(2)} contains a fixed contribution of size O(L) from the top-step line pieces (§3.5). It is part of the limit, not an error. It also means the f-expansion radius of the level-j form is of order L^{−1/2} in the coarse flux f, not order 1. Balaban's regime (f ≤ α_0 small) should be compared with this; not done here.


## 5. Ledger

Proved here:
- P1. Theorem R2 (a)–(c): for odd M, the f^m (m ≤ 2) symbols of the linearized (0.4) averaging at the constant field are, at fixed fine momentum, exact even functions of h = 1/M (midpoint identity (2.4)); head error h²(1+|q|)² × envelope; explicit h² term (2.5). Corner blocks give odd terms (§2.5).
- P2. Item 6 used precisely: zero background angle (exp factor trivial) and zero f¹ coarse-bond line piece (§2.4). The point symmetry is not needed for evenness.
- P3. Lemma 3.1: K-derivatives of continuum blocks bring no power of l.
- P4. R3 for volume pieces in d = 4, |β| ≤ 6, weighted sums, M^{−3} tails, uniform in K including K → 0 after moving l = 0 into the finite block (§3.2–§3.3).
- P5. Explicit f¹ first-leg weight (3.1), W(t) = (ie/8)(1/8 − t²/2), and the non-gauge coarse pattern ρ.
- P6. Proposition 3.4: single block, d = 4: ⟨ρ_f, S_f ρ_f⟩ ≤ C/(f²M) while ⟨ρ_0, S_0 ρ_0⟩ ≥ c_0. So U3_LEMMA51 Theorem 4.1 is false for m = 2 in d = 4 (single block). Loss: M (lines), log M (planes); d = 3: log M; d = 2: none.

Reduced / argued, not proved:
- A1. Composed constraint: line pieces act on smoothed level-(j−1) fields; per-depth contribution O(L·L^{−6i′}) (§3.5). Scaling argument.
- A2. R4 = (W) + (N) (§3b): given (W), rate j L^{−2j} (σ^{(1)}) and j² L^{−2j} (σ^{(2)}); clean with (N).
- A3. One-step formulation (§3c): needs one-step O6 for admissible kernels Δ_{j−1}, uniform strip analyticity (A), (W), and (N); no composed-constraint bound.
- A4. Weighted norm (1.1) for R1 (w_l = 1 + |q_l|).

Open:
- O1. (W): level-independence of the marginal spin coupling (derivative expansion of a gauge-invariant kernel).
- O2. (N): non-resonance of the f⁰ lattice error with the L^{−2} eigendirections of the f¹ and f² sectors.
- O3. (A): uniform strip analyticity of σ_j^{(m)}.
- O4. R1 for the composed KKT: not available (ghost gap 4M^{−6}); avoided by §3c.
- O5. Check that the one-step O6 bound of U3_REPAIRS covers kernels Δ_{j−1} for all j ≥ 1.
- O6. Size of the O(L) top-step line term in σ_∞^{(2)} and its effect on the f-radius versus Balaban's α_0.

Not verified: everything above was derived in one session without numerics. Decisive checks: (1) d = 3 single-block σ^{(2)} versus M (prediction: −c log M), or the d = 4 per-momentum line-line sum of §3.4; (2) the weight (3.1) by direct linearization of (0.4) with the project's JAX code; (3) composed versus single in d = 3.
