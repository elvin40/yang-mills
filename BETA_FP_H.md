# BETA_FP_H: repair of hypothesis (H) of BETA_FP_LEMMA43 at a stationary background

Written 2026-10-27 (Claude, Opus 5.5). Scope: replace (H) of BETA_FP_LEMMA43.md §4.2 by a statement about the constant-background symbols of U3 Lemma 5.1, as asked after BETA_FP_LEMMA43_VERIFY.md §7. Read: BETA_FP_LEMMA43.md, BETA_FP_LEMMA43_VERIFY.md, SOURCES_D1_VERIFY.md (items 5, 8), U3_LEMMA51.md §1–§3, U3_LEMMA51_R23.md §0–§3c with its verification, U3_REPAIRS.md §1, U3_VERIFY.md §2. No existing file edited. No numerics run. Tags: [proved here], [cited], [argued] (argument written, not a full proof), [open].

## 0. Headline
- (H) is replaced by (H′): U3 Lemma 5.1 exactly as stated in U3_LEMMA51 (1.2) (sup norm, |α| ≤ 2, m = 1, 2) for the composed constraint, in the one-step-recursion form of R23 §3c, plus (W) (σ_j^{(1)}(0) level-independent for j ≥ j_0). No P-uniformity, no |α| ≤ 4, no stationarity gap.
- At the constant abelian field V_f, J = 0 and V_f is reproduced exactly, so Prop. 2.1 of BETA_FP_LEMMA43 holds exactly and the coarse kernel is the true Hessian of Balaban's coarse action. The only Λ-dependent object in the coarse bracket is the set of symbols σ_j^{(0,1,2)}.
- ρ(Λ) − ρ_∞ = d_j, an explicit per-momentum integral (2.2) of δσ_j^{(m)}. Power count: integrands |K|^{−6}δσ^{(0)}, |K|^{−4}δσ^{(1)}, |K|^{−2}δσ^{(2)}; needed weights |K|^{2+s}, |K|^{s}, |K|^{−2+s} (s > 0); natural weights |K|⁴, |K|², 1 (dimension 6), giving |d_j| ≤ Cε_j. These weights follow from (H′) + evenness + Lemma 4.1 (proved implication).
- Lemma 4.3 (Theorem 3.1): 𝒞(Λ) = c log Λ + C_∞ + O(max(r_j, Λ^{−2})), proved given (H′), (PI), (F), (M); only the log coefficient c of the fine piece is used.
- (W) partly proved: symmetry gives σ_j^{(1)}(0) = s_jσ_c^{(1)} (one scalar); finiteness of 𝒞(Λ) forces s_j ∈ {1, s_*} for all j (argued).
- Plane-wave numerics: the p → 0 fit equals the constant-field quantity (expansion-point error O((Lp)²), SOURCES_D1_VERIFY item 8). L = 2 fails R2 and evenness; state Lemma 4.3 for L odd ≥ 3, which is Balaban's range.

## 1. Set-up at the constant background
Notation. Λ = M = L^j, L odd, centered blocks, Balaban's composed averaging (the family of BETA_FP_LEMMA43 §5). Coarse units. V_f := the constant abelian field with coarse plaquette angle f in the (0,1) plane, color σ_3 (U3_LEMMA51 §1). Δ_j(f) := S[Δ(φ); C_f], φ = f/M², the object of U3 Lemma 5.1; σ_j(f; K) = Σ_m f^m σ_j^{(m)}(K) its canonical symbol (U3_LEMMA51 Lemma 3.1). n_2 := f²-coefficient of the coarse Wilson action A(V_f) per unit cell (n_2 = ½ for SU(2) in the U3_LEMMA51 convention; its value cancels everywhere below).

Fact 1.1 (exact stationarity) [cited: U3 Lemma 5.0, U3_VERIFY §7, R23_VERIFY §5]. (a) The fine background U_0^φ is a free critical point of A: ∇A(U_0^φ) = 0, so J = 0 and there is no Lagrange-multiplier term. (b) The composed average of U_0^φ is V_f exactly, up to a coarse gauge (averaged angle 0, Fact B, 3·10^{−20} numerically). (c) Hence Δ_j(f) is the exact Hessian at V_f of Balaban's coarse tree action A_Λ(V) = min{A(U) : composed average of U = V}. (d) Δ_j(f) = T_f[Δ_{j−1}(fL^{−2})] exactly (one-step recursion, R23 §3c; tower property, 6·10^{−14} numerically).

Consequence 1.2 [proved here]. At V_f the hypothesis (G1) of BETA_FP_LEMMA43 holds exactly: ΔD = 0 because U_0^φ is critical (gauge invariance of A differentiated at a critical point), and Q̃D = D_cι_a^T holds at every background (BETA_FP_LEMMA43_VERIFY §4). So Prop. 2.1 of BETA_FP_LEMMA43 holds exactly at V_f, for every f:

  log Z_Λ(V_f) = Fine(Λ; f) − Γ_c(Λ; f),   (1.1)
  Fine(Λ; f) := log det X − ½ log det K   (fine Wilson one-loop, background Feynman gauge, fine flux φ = f/Λ²),
  Γ_c(Λ; f) := log det(D_c^TD_c) − ½ log det(Δ_j(f) + D_cD_c^T)   (coarse Gaussian one-loop).

D_c = D_c(f) is the coarse covariant gradient at V_f. It does not depend on Λ. So the coarse ghost and the coarse gauge-fixing term do not depend on Λ. The only Λ-dependent object in Γ_c is the kernel Δ_j(f), i.e. the symbols σ_j^{(m)}.

Per-cell densities and signs. Each bracket of (1.1) at f ≠ 0 has a Nielsen–Olesen band (eigenvalues near −|ef| in the charged sector, U3_LEMMA51 §2.3). Both brackets are read as per-cell densities of log|det|; (1.1) is an algebraic identity and holds with |det| (BETA_FP_LEMMA43_VERIFY §4). The left side is analytic in f near 0: the constrained fluctuations are massive (smallest constrained eigenvalue 0.085 at finite flux, NUMERICS §4; U1_VERIFY §2.4). The two brackets are not analytic: each has an f² ln|f| term. These cancel in (1.1).

Why the constant field and not the plane wave. At the plane wave V_{a,P} the fine expansion point U_0 is not critical, ∇A(U_0) = O(aP²), so ΔD ≠ 0 and Prop. 2.1 is only approximate; also the kernel used in BETA_FP_LEMMA43 is not the Hessian of A_Λ (missing multiplier term, O(aP³) in the a¹ vertex, BETA_FP_LEMMA43_VERIFY §7). At V_f all three defects are absent by Fact 1.1. The price is the infrared: at a constant field the IR regulator is |f|^{1/2} (magnetic length) instead of P. §2 handles this by working only with Λ-differences, which are IR-finite.

Definitions. δσ_j^{(m)} := σ_j^{(m)} − σ_∞^{(m)}, with σ_∞^{(m)} the limit symbols of Lemma 5.1 (assumed to exist, §2). δΓ_j(f) := Γ_c(Λ; f) − Γ_c(∞; f), where Γ_c(∞; ·) uses the symbols σ_∞^{(m)} (formal; only δΓ_j enters below).

## 2. The coarse Λ-difference as a per-momentum integral; the infrared weights
### 2.1 Exact per-momentum formula for the f²-coefficient of δΓ_j

Put 𝒦_t(f) := Δ_∞(f) + t(Δ_j(f) − Δ_∞(f)) + D_cD_c^T, t ∈ [0, 1], and 𝔨_t(f; K) = Σ_m f^m 𝔨_{t,m}(K) its canonical symbol. Then

  δΓ_j(f) = −½ ∫_0^1 dt Tr[𝒦_t(f)^{−1}(Δ_j(f) − Δ_∞(f))]   (per unit cell).   (2.1)

Two exact facts make (2.1) a per-momentum integral. (i) For a magnetically covariant operator A = W·a, the per-cell trace is a(0) = ∫_{BZ} â(K) dK/(2π)⁴, because W(x, x) = 1. (ii) Products are Moyal products (U3_LEMMA51 (3.1)), and inverses have the Moyal coefficients b_{t,0} = 𝔨_{t,0}^{−1}, b_{t,1}, b_{t,2} of U3_LEMMA51 (3.2)–(3.3). So the formal f²-coefficient is

  d_j := [f²]δΓ_j / n_2 = −(1/(2n_2)) ∫_0^1 dt ∫_{BZ} dK/(2π)⁴ tr[ b_{t,2}δσ_j^{(0)} + b_{t,1}δσ_j^{(1)} + b_{t,0}δσ_j^{(2)} ],   (2.2)

plus Moyal-bracket terms {b_{t,m}, δσ^{(n)}} (m + n = 1) and P_2(b_{t,0}, δσ^{(0)}). These are total K-derivatives. They integrate to 0 on the torus if the boundary terms on a small sphere |K| = r vanish as r → 0. With the weights (2.4) below the boundary terms are O(ε r²) [proved here by the count r³·|b_{t,m}|·|∂δσ^{(n)}| = r³·r^{−2−2m}·εr^{3−2n}].

Derivatives used. From (3.2)–(3.3) of U3_LEMMA51, b_{t,2} contains at most two K-derivatives of 𝔨_{t,0}, one of 𝔨_{t,1}, none of 𝔨_{t,2}. So (2.2) needs σ^{(0)} with |α| ≤ 2, σ^{(1)} with |α| ≤ 1, σ^{(2)} with |α| = 0. All are inside the norm (1.2) of Lemma 5.1 (|α| ≤ 2). The old (H) needed |α| ≤ 4 and P-derivatives; this one does not.

### 2.2 Power count: the infrared weight needed

Give f weight 2 and K weight 1 (R23 §3b). Envelope bounds, uniform in j and t:

  |∂^α 𝔨_{t,0}| ≤ C|K|^{2−|α|},  𝔨_{t,0} ≥ c_*|K̂|²,  |∂^α 𝔨_{t,1}| ≤ C,  |𝔨_{t,2}| ≤ C.   (2.3a)

Then |b_{t,m}(K)| ≤ C|K|^{−2−2m} [proved here from (2.3a) and (3.2)–(3.3): checked term by term: b_1 ~ b_0𝔨_1b_0 ~ |K|^{−4}, b_0{𝔨_0, b_0} ~ |K|^{−2}·|K|·|K|^{−3} = |K|^{−4}; b_2 ~ b_0𝔨_1b_1 ~ |K|^{−6}, b_0P_2(𝔨_0, b_0) ~ |K|^{−2}·|K|^0·|K|^{−4} = |K|^{−6}, b_0𝔨_2b_0 ~ |K|^{−4} ≤ C|K|^{−6}].

So the three terms of (2.2) have integrands

  F⁰: |K|^{−6}·|δσ^{(0)}|,   F¹: |K|^{−4}·|δσ^{(1)}|,   F²: |K|^{−2}·|δσ^{(2)}|.

In words: the F² symbol enters with one propagator; the F¹ symbol with two propagators and one spin vertex; the F⁰ symbol with three propagators and two spin vertices (or one P_2 bracket). In d = 4, ∫_{|K|<1} |K|^{−a} d⁴K < ∞ iff a < 4. Hence the needed infrared weight is

  |δσ_j^{(m)}(K)| ≤ ε_j |K|^{2−2m+s}  for some s > 0, i.e. F⁰: |K|^{2+s}, F¹: |K|^{s}, F²: |K|^{−2+s}.   (2.3b)

For F² a bounded difference is enough (weight |K|^0). For F¹ the difference must vanish at K = 0. For F⁰ it must vanish faster than |K|².

The natural weights are s = 2 (dimension-6 counting, §3.2):

  |δσ_j^{(0)}| ≤ ε_j|K|⁴,  |δσ_j^{(1)}| ≤ ε_j|K|²,  |δσ_j^{(2)}| ≤ ε_j,  with |∂δσ_j^{(0)}| ≤ ε_j|K|³, |∂δσ_j^{(1)}| ≤ ε_j|K|.   (2.4)

With (2.4) every integrand in (2.2) is ≤ Cε_j|K|^{−2}, so

  |d_j| ≤ C ε_j ∫_{BZ}|K|^{−2} dK ≤ C′ ε_j.   (2.5)

Second order in δσ is included in (2.1) through t; the bounds (2.3a) are uniform in t because 𝔨_{t,0} is a convex combination of two kernels with the two-sided bound of Lemma 4.1 of BETA_FP_LEMMA43.

### 2.3 The repaired hypothesis

(H′) [the Lemma 5.1 form needed; composed family, L odd]. There are symbols σ_∞^{(1)}, σ_∞^{(2)}, analytic near the real BZ with bounded derivatives of order ≤ 2, and r_j → 0, such that

  sup_K |∂_K^α(σ_j^{(m)} − σ_∞^{(m)})(K)| ≤ r_j,  |α| ≤ 2,  m = 1, 2,   (2.6)

and (W): σ_j^{(1)}(0) = σ_∞^{(1)}(0) for all j ≥ j_0.

(2.6) is exactly U3 Lemma 5.1 as restated in U3_LEMMA51 (1.2), now for the composed constraint, in the one-step-recursion form of R23 §3c (σ_j = T_f[σ_{j−1}(·; fL^{−2})]; inputs one-step O6 [proved, U3_REPAIRS], (A) [open], (W) [open, see §3.3]; expected rate r_j = jL^{−2j} for m = 1 and j²L^{−2j} for m = 2, R23_VERIFY §7).

Proposition 2.1 [proved here]. (H′) + Lemma 4.1 of BETA_FP_LEMMA43 + evenness of σ_j in K [cited: R23_VERIFY §5, point reflection] imply (2.3a) and (2.4) with ε_j := C max(r_j, L^{−2j}).

Proof. m = 0: Lemma 4.1 (from U3_REPAIRS Prop. A, B, O5) gives |∂^α δσ^{(0)}| ≤ CL^{−2j}|K|^{4−|α|} and the envelope and lower bound of (2.3a). m = 2: (2.6) with α = 0. m = 1: Taylor at K = 0 to second order: δσ^{(1)}(0) = 0 by (W); ∇δσ^{(1)}(0) = 0 because σ_j and σ_∞ are even in K; the second derivatives are ≤ r_j by (2.6). So |δσ^{(1)}(K)| ≤ C r_j|K|² and |∂δσ^{(1)}(K)| ≤ C r_j|K|. Envelopes for m = 1, 2: (2.6) plus the bounds on σ_∞^{(m)}. ∎

Comparison with the old (H) (BETA_FP_LEMMA43 (4.2)). Old: two-momentum vertices Δ^{(m)}(K; P), weights (|K| + P)^{4−m−|α|}, |α| ≤ 2 after Taylor from |α| ≤ 4, uniform in P, at a non-stationary expansion point. New: one-momentum symbols at a stationary background, plain sup norm with |α| ≤ 2 (Lemma 5.1 as stated), plus one value at K = 0 ((W)). The IR weights are derived, not assumed.

## 3. Lemma 4.3 from the constant-background data; dimension-4 universality
### 3.1 From d_j to Lemma 4.3

Three inputs besides (H′).

(PI) Probe independence for the massive functional [argued; standard]. log Z_Λ(V) per cell is a gauge-invariant, hypercubic- and reflection-invariant functional of V whose second-order kernel Π_Λ(P) is analytic at P = 0 (massive constrained propagator, U1_VERIFY §2.4). Transversality and hypercubic symmetry leave one structure at order P²: Π_{μν}(P) = (P²δ_{μν} − P_μP_ν)π_Λ + O(P⁴) (the hypercubic term δ_{μν}P_μ² is excluded by transversality, since P_μ·δ_{μν}P_μ² = P_ν³). The plane wave probes π_Λ as P → 0; the constant field probes the same π_Λ through the f²-coefficient. So 𝒞(Λ) := S(0; Λ) = [f²] log Z_Λ(V_f)/n_2 − [f²] log Z_Λ(1). Not written in lattice detail: the per-cell limit for the linearly growing gauge potential of V_f (handled by magnetic translations, U3_LEMMA51 Lemma 3.1).

(F) Fine log coefficient at constant field [cited, from memory: Savvidy, Phys. Lett. B 71 (1977) 133, continuum; not checked against the source]. Per fine cell, Fine = F_W(φ), one Λ-independent function of the fine flux φ, with F_W(φ) = n_2φ²[c_2 ln(1/|φ|) + B] + o(φ²) (real part). Only the log coefficient c_2 = 11N²/(24π²) is used, not B. It comes from loop momenta |φ|^{1/2} ≪ |q| ≪ 1, where the lattice operator is the continuum one, so the lattice value equals the continuum b_0 value. Per coarse cell Fine(Λ; f) = Λ⁴F_W(f/Λ²). Hence, exactly,

  [Fine(Λ; f) − Fine(Λ′; f)]/(n_2 f²) → c_2 ln(Λ²/Λ′²) = c log(Λ/Λ′)  as f → 0,   (3.1)

because Λ⁴(f/Λ²)²[c_2 ln(Λ²/|f|) + B] − (Λ → Λ′) = f²c_2 ln(Λ²/Λ′²), and c = 2c_2. B cancels; the o(φ²) remainder vanishes as f → 0 at fixed Λ, Λ′.

(M) Constant-field asymptotics of δΓ_j [argued, two-region count, not proved]. δΓ_j(f) − δΓ_j(0) = n_2 d_j f² + O(ε_j|f|³ ln(1/|f|)). Region |K| ≥ |f|^{1/2}: the Moyal expansion to order f² with remainder; the f³ integrand is ε_j|K|^{−4}, which gives ε_j|f|³ ln(1/|f|) (the f³ term vanishes by charge conjugation, so this bound is conservative; the f⁴ term gives ε_j f⁴/|f|). Region |K| < |f|^{1/2} (volume f²): the kernel difference is ≤ ε_j(K⁴ + |f|K² + f²) ≈ ε_jf², and ‖𝒦_t^{−1}‖ ≤ C/|f| there (the Landau levels (2n + 1 ± 2)|ef| never hit 0, so the indefinite N–O band does not spoil the resolvent bound); contribution ≤ ε_j f²·f²/|f| = ε_j|f|³. The lattice Landau-level bound in this region is the part not written.

Theorem 3.1 (Lemma 4.3 of BETA_FP, repaired) [proved here given (H′), (PI), (F), (M), Lemma 4.1]. Along Λ = L^j, L odd,

  𝒞(Λ) = c log Λ + C_∞ − d_j,   |d_j| ≤ Cε_j,   so 𝒞(Λ) = c log Λ + C_∞ + O(ε_j).   (3.2)

Proof. By (PI) and (1.1), 𝒞(Λ) = lim_{f→0}[Fine(Λ; f) − Γ_c(Λ; f) − (f = 0 values)]/(n_2f²). Write Γ_c(Λ) = Γ_c(∞) + δΓ_j. For two levels j, j′: 𝒞(Λ) − 𝒞(Λ′) = lim[Fine(Λ) − Fine(Λ′)]/(n_2f²) − lim[δΓ_j − δΓ_{j′}]/(n_2f²) = c log(Λ/Λ′) − (d_j − d_{j′}) by (3.1) and (M). Both limits exist, so no limit of Γ_c(∞; f)/f² alone is needed (it does not exist: f² ln|f|). Hence 𝒞(Λ) − c log Λ + d_j is independent of j; call it C_∞. (2.5) bounds d_j. ∎

Relation to ρ. If Cor. 3.1 of BETA_FP_LEMMA43 is used, ρ(Λ) = κ_W^F + c log Λ − 𝒞(Λ) = ρ_∞ + d_j. So ρ(Λ) is determined, up to the Λ-independent constant ρ_∞, by the constant-background Taylor data: ρ(Λ) − ρ_∞ = d_j, the integral (2.2) of the symbols σ_j^{(0)}, σ_j^{(1)}, σ_j^{(2)}. Theorem 3.1 does not need Cor. 3.1 or the constant of LW (5.7); it needs only the log coefficient c.

Telescoping. β_∞ = lim[𝒞(LΛ) − 𝒞(Λ)] = c log L − lim(d_{j+1} − d_j) = c log L. Remainder: O(ε_j) = O(max(r_j, Λ^{−2})); with the expected rates of R23_VERIFY §7, O(Λ^{−2}(log Λ)²); O(Λ^{−2}) only if the non-resonance (N) holds (R23_VERIFY says (N) is plausibly false).

### 3.2 Dimension-4 universality at the stationary background

At V_f the kernel Δ_j(f) is the Hessian of the gauge-invariant action A_Λ at a stationary point (Fact 1.1(c)). So its K → 0 expansion is the derivative expansion of a gauge-invariant, hypercubic-invariant, reflection-invariant local functional at a constant field (to the extent that Δ_j(f) is analytic at K = 0, which is part of (A)). Counting by f-weight 2, K-weight 1 (total degree n = p + 2m for an f^m K^p term; operator dimension = n + 2):
- Dimension 4 (n = 2): only Σ tr F_{μν}². Its quadratic kernel at V_f has the f⁰K² part |K̂|²P′_T (Maxwell) and the f¹K⁰ part σ_c^{(1)} (spin coupling). The Maxwell coefficient is exactly 1 for every Λ [cited: U3 Lemma 3.1(ii), Theorem 4.1, U3_REPAIRS O5]. The spin coupling is tied to it: that is (W).
- Dimension 5 (n = 3): none. Index parity: F carries dimension 2 and 2 indices, D dimension 1 and 1 index, so a scalar has even dimension [cited: SOURCES_D1_VERIFY item 5]. At the symbol level this is the evenness of σ_j in K (R23_VERIFY §5).
- Dimension 6 (n = 4): f⁰K⁴ (e.g. tr(D_ρF_{ρν})² quadratic part), f¹K² (e.g. tr F³), f²K⁰ (e.g. tr(D_ρF_{μν})² at V_f gives e²f²|b|²). These are the Λ-dependent lattice artifacts.
So the Λ-dependence first enters at n = 4: δσ^{(m)} ~ ε|K|^{4−2m}. This is (2.4); Prop. 2.1 derives it rigorously from (H′) without the derivative expansion. With (2.4) the integrand of d_j is ε|K|^{−2}, the dimension-6 terms carry the relative factor ε|K|² = (K/Λ)²-type suppression, and ρ(Λ) → ρ_∞ with remainder O(ε_j).

The O(aP³) multiplier issue. It does not arise: J = 0 at V_f and there is no P (Fact 1.1). The plane wave enters only through 𝒞(Λ) itself, via (PI) and §4.

### 3.3 Partial proof of (W) from the finiteness of 𝒞(Λ)

Proposition 3.2 [proved here: (a); argued: (b), (c)]. (a) Symmetry classification. σ_j^{(1)}(0) = s_j σ_c^{(1)} with one real number s_j, where σ_c^{(1)} := σ_∞^{(1)}(0) is the continuum-normalized spin matrix. Proof: at K = 0 the matrix acts on the four Lorentz components of the charged field. Reflection x_2 → −x_2 (fixes F_{01}, flips b_2) kills the (01)×(23) blocks; the 90° rotations in the (0,1) and (2,3) planes fix F_{01}, so the (0,1) block is a·1 + b·J and the (2,3) block is c·1; Hermiticity makes a, c real and b imaginary; charge conjugation σ(−f) = conj σ(f) (U3_LEMMA51 §2.1) makes σ^{(1)} purely imaginary, so a = c = 0. One parameter remains. ∎
(b) The f² ln(1/|f|) coefficient of Γ_c(Λ; f) is determined by the homogeneous degree-(−4) part of the f² integrand at small K. That part is built from |K̂|²P′_T (Maxwell, exact), σ_j^{(1)}(0) = s_jσ_c^{(1)}, and the Λ-independent ghost and gauge-fixing symbols. It is a quadratic polynomial g(s_j) with nonzero leading coefficient (the paramagnetic term ∝ tr(σ_c^{(1)})² > 0).
(c) The left side of (1.1) is analytic in f, and the f² ln coefficient of Fine is c_2 for every Λ by (F). So g(s_j) = c_2 for every j. The continuum value s = 1 is a root (gluon 10/3 + ghost 1/3 = 11/3). Hence s_j ∈ {1, s_*} for all j, with s_* the second root of the quadratic.
Consequence: (W) for j ≥ j_0 follows from (a)–(c) plus either convergence of σ_j^{(1)}(0) (then s_j is eventually constant) or a one-step bound |s_j − s_{j−1}| < |1 − s_*| for j ≥ j_0 (the marginal direction of R23 (3b.2) changes only by terms quadratic in the irrelevant errors). This does not close (W) for all j, and it uses (F) and (M) at fixed j; it reduces (W) from "derivative expansion of a nonlocal kernel" to "s_j does not jump between two fixed roots". The R23 rate argument needs (W) only for j ≥ j_0.

## 4. Relation to the plane-wave numerics
Claim [argued; uses SOURCES_D1_VERIFY item 8 (CONFIRMED there at sketch level) and (PI)]. The numerical w(p), extrapolated p → 0, equals 𝒞 evaluated at the constant background.

Three steps.
1. Expansion point. The numerics expand at the fine plane wave U_0, not at the constrained minimizer U_1 = U_Λ(V). SOURCES_D1_VERIFY item 8: Γ_1(U_0) − Γ_1(U_1) = O(a²p⁴) from the gradient term (Γ_1′ is a gauge-covariant vector of dimension ≥ 3, B* = O(ap²L²)), and the J-term is O(a²p⁴) (translation invariance kills the a⁰ part of ⟨C^{(2)}⟩ against a P ≠ 0 wave; gauge invariance makes the a¹ part O(P); reflection makes it O(P²)). The small parameter is Lp (block side L in fine units), i.e. P in coarse units. Relative to the tree term a²P² this is O(P²). So S(P; Λ) computed at U_0 and at U_1 have the same P → 0 limit. The O(aP³) multiplier term of BETA_FP_LEMMA43_VERIFY §7 is one piece of this J-term; in the full massive log Z it contributes O(a²P⁴), not at the order a²P².
2. Probe. At U_1 the quantity is the second-order kernel of the gauge-invariant massive functional log Z_Λ(V), and (PI) gives lim_{P→0} S(P; Λ) = π_Λ = the f²-coefficient at V_f.
3. Why the split pieces need more care than the total. The two brackets of (1.1) are IR-divergent separately. For them the expansion-point error is not obviously o(P²) (the coarse propagator is |K|^{−2} at K ~ P). This is why §3 never uses the plane-wave coarse bracket: it uses the plane wave only for the total 𝒞(Λ) (massive, step 1–2) and the constant field for the split, where the split is exact.

Effect on the data (unchanged from SOURCES_D1_VERIFY item 8). L = 2, 3: p → 0 quadratic fits, unaffected. L = 4 (0.757) and the two-level values (1.148, 0.967): single p = 0.2 points, Lp = 0.8, bias O((Lp)²) ≈ 10^{−2}, small against the 0.18 grid error of the two-level data.

Not shown: a direct constant-field computation of 𝒞(Λ). A numerical check of (PI) would compare the p → 0 fit with the f²-coefficient of log Z_Λ(V_f) at small flux on a periodic lattice (the flux is quantized in units ∝ 1/N_c² on an N_c-periodic coarse lattice, so f → 0 needs N_c → ∞); not run.

## 5. L = 2
What fails for even L (L = 2, the case of most numerics).
- f⁰ data. U3 Lemma 1.2 (composition of plain averages) holds for even L with an offset: blocks y + {−a, …, L−1−a}⁴ compose to side LL′ with offset La′ + a; the offset is self-similar only for corner blocks (a = 0). The f⁰ symbol depends only on |χ_M|², so it does not see the offset, and U3 Theorem 4.1 holds for even L [cited: U3_VERIFY §2]. Lemma 4.1 of BETA_FP_LEMMA43 (the IR weight |K|⁴) uses U3_REPAIRS Prop. A, B, O5, stated for odd L; whether their proofs use oddness is not checked here [open, plausibly fine for the same |χ_M|² reason].
- f¹, f² data: R2 fails. For corner blocks the contours start at the anchor, which is not the block center, so block sums of contour quantities are left Riemann sums with O(h) = O(M^{−1}) errors, odd in h (U3_LEMMA51 §4.2; exact mechanism R23 §2.5). So σ_j^{(1)}, σ_j^{(2)} may converge only at rate M^{−1}. The d = 2 numerics bound this coefficient by about 1% (composed) and 5% (single block) of the M^{−2} coefficient; they do not show it.
- Evenness in K. The point reflection used for evenness (R23_VERIFY §5) is about a coarse site; corner blocks are not symmetric about it. So ∇δσ^{(1)}(0) = 0 is not available.

Effect on the reduction [proved here as a power count]. Without evenness, Taylor plus (W) give only |δσ^{(1)}(K)| ≤ C r_j|K|, i.e. s = 1 in (2.3b). The F¹ integrand is then r_j|K|^{−3}, still integrable in d = 4. So Theorem 3.1 would hold for L = 2 with remainder O(Λ^{−1}), given (H′) for even L at rate r_j = O(M^{−1}), (W), and Lemma 4.1 for even L. (PI) also uses reflection evenness of S(P; Λ) in P; for corner blocks a lattice reflection maps the block family to a shifted one, which is a coarse gauge transformation (U3_LEMMA51 Lemma 3.1) — argued, not checked.

Can Lemma 4.3 be stated for odd L only? Yes. BETA_FP Theorem 4.1 needs β_∞ for the block factor of Balaban's program, and Balaban uses L odd ≥ 3 with centered blocks (CMP 109 (0.4); U3_LEMMA51 §4.2). All proved inputs (U3_REPAIRS, R2 in the strong form, evenness, one-step O6) are for odd L. So Theorem 3.1 is stated for L odd ≥ 3, and that suffices for β_∞ = c log L. The L = 2 numbers (c log 2 = 0.25751 for SU(2)) are then a heuristic test only. The test that matches the proved range is L = 3 (c log 3 = 0.40815), where NUMERICS has p → 0 fits.

## 6. Ledger
Proved here:
- P1. Exact form of Prop. 2.1 of BETA_FP_LEMMA43 at V_f for every f (Consequence 1.2): (G1) is exact there; Λ enters the coarse bracket only through σ_j^{(m)}.
- P2. Per-momentum formula (2.2) for the f²-coefficient d_j of the coarse Λ-difference (t-interpolation, per-cell trace = ∫ symbol, Moyal brackets integrate to 0 under the weights).
- P3. Power count (2.3): needed IR weights |K|^{2−2m+s}, s > 0; derivative orders needed: σ^{(0)} ≤ 2, σ^{(1)} ≤ 1, σ^{(2)} = 0.
- P4. Prop. 2.1: (H′) + evenness + Lemma 4.1 ⇒ weights (2.4) with ε_j = C max(r_j, L^{−2j}) ⇒ |d_j| ≤ Cε_j.
- P5. Theorem 3.1 given (PI), (F), (M): Lemma 4.3 along Λ = L^j, L odd, remainder O(ε_j); β_∞ = c log L. Uses only the log coefficient of the fine piece; no constant of LW (5.7), no plane-wave coarse kernel.
- P6. Prop. 3.2(a): σ_j^{(1)}(0) = s_jσ_c^{(1)} (one real scalar), by reflection, 90° rotations, Hermiticity, and charge conjugation.
- P7. L = 2 count: without evenness the F¹ weight drops to |K|, still integrable; remainder would be O(Λ^{−1}).

Reduced (true given the stated inputs):
- R1. Lemma 4.3 and β_∞ = c log L (L odd ≥ 3) ⇐ (H′) + (PI) + (F) + (M) + inherited (G2) (per-cell densities).
- R2. (H′) ⇐ one-step O6 [proved, U3_REPAIRS] + (A) [open] + (W) [open], via R23 §3c; rate r_j = jL^{−2j} (m = 1), j²L^{−2j} (m = 2), clean L^{−2j} only with (N) (plausibly false).
- R3. (W) for j ≥ j_0 ⇐ Prop. 3.2(b), (c) [argued] + no jump of s_j between the two roots {1, s_*} for large j.

Argued, not proved:
- A1. (PI): plane-wave P → 0 and constant-field f² probes give the same coefficient for the massive functional log Z_Λ (transversality + hypercubic symmetry; per-cell limit at V_f not written).
- A2. (M): δΓ_j(f) = δΓ_j(0) + n_2d_jf² + O(ε_j|f|³ ln(1/|f|)) (two-region count; lattice Landau-level resolvent bound in |K| < |f|^{1/2} not written).
- A3. §4: the numerical p → 0 extrapolation equals the constant-field quantity (SOURCES_D1_VERIFY item 8 at sketch level + A1).
- A4. §3.2 dimension-4 universality reading (derivative expansion of A_Λ at V_f); the rigorous content is P4.

Cited, not rederived: (F) the constant-field log coefficient c_2 (Savvidy 1977, from memory, not checked against the source); U3_REPAIRS Prop. A, B, O5, O6; R23 and R23_VERIFY (one-step recursion exact, evenness in K); SOURCES_D1_VERIFY items 5, 8; U3_VERIFY §2 (even-L composition).

Open:
- O1. (A): uniform strip analyticity of σ_j^{(1)}, σ_j^{(2)} (the open input of Lemma 5.1 in the one-step form).
- O2. (W) for all j, or the no-jump statement of R3.
- O3. Even L: (H′) at rate M^{−1}, Lemma 4.1 (U3_REPAIRS for even L), (PI) for corner blocks. Not needed for Balaban's odd L.
- O4. Numerical check of A1 at constant flux (not run).
