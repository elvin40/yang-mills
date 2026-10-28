IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# U3_AW: uniform strip analyticity (A), the Ward statement (W), and evenness in K

Written 2026-10-27 (Claude, Opus 5.5). Read: U3_LEMMA51_R23.md §0–§5 (focus §3b, §3c, §4, §5), U3_LEMMA51_R23_VERIFY.md (all), U3_REPAIRS.md §1–§4, U3_REPAIRS_VERIFY.md §3–§4, U3_GAUSSIAN_RG.md §2–§3, U3_LEMMA51.md §1–§3. No numerics were run. No existing file was edited. Sections were appended one at a time.

Sections: §0 headline; §1 setting; §2 evenness in K; §3 Ward identity (W); §4 strip analyticity (A); §5 effect on the R23 rates; §6 ledger.

## 0. Headline
- Evenness (proved, §2). Balaban's (0.4) averaging is exactly covariant under point reflection about a coarse site (odd L, centered blocks). With the Wilson action and the symmetric-gauge background, this gives σ_j(f; −K) = σ_j(f; K) for every f and j, in the midpoint trivialization.
- (W) (proved, §3). The level-j charged form satisfies the exact operator Ward identity Δ_j(f) D_f = 0 for every f and j. Gauge-fixing and ghost terms drop out exactly. In symbol form this gives σ_j^{(1)}(K) d(K) = (ie/2){σ_j^{(0)}, d}(K) at every K. At K = 0 it fixes the full 4×4 matrix σ_j^{(1)}(0) by the Hessian of σ_j^{(0)} at 0. That Hessian is the Maxwell Hessian at every level (O5 formula (2.7)). So σ_j^{(1)}(0) = τ_c := (3ie/2)(E_{10} − E_{01}) for all j ≥ 0, exactly. The numerical constant depends on the sign conventions of U3_LEMMA51 (3.1); the j-independence does not.
- Extra consequences of (W) (§3.4): the longitudinal part of the f¹ error is O(L^{−2j}) with no j factor; σ_j^{(2)}(0) is fixed by the K² part of σ_j^{(1)}. So a j L^{−2j} or j² L^{−2j} term can only sit in the transverse 3×3 blocks.
- (A), qualitative (proved, §4.1–4.3). The one-step bordered matrix 𝔨_0(K) is invertible on a complex strip |Im K_ν| ≤ δ_*, with ‖𝔨_0^{−1}‖ ≤ 2b(L) uniformly in j. δ_* depends on L only. Then σ_j^{(m)}, m ≤ 2, are analytic on the same strip at every level. The strip does not shrink.
- (A), quantitative (partly proved, §4.4–4.7). The task's route ("background parts contract by L^{−2} per level") is false as stated for m = 1: the f¹ linear map has eigenvalue exactly 1 at K = 0, and that direction is the spin coupling. What works: (W) removes this direction, and the rest contracts by exactly L^{−2} per level in the Δ-relative form norm (Lemma A4, no O6 constant). This proves a j-uniform real-K bound |σ_j^{(1)}(K) − τ_c| ≤ C_A|K|² (Theorem A3). The strip/C³ bounds for m = 1 and all bounds for m = 2 are reduced to one inequality (H′) on the norm of the one-step minimizer map, sup‖H_j(K)‖ < L√(L − 1). It is not proved and it can be checked numerically.
- Derivative budget (§4.3): the one-step formulas use at most one K-derivative of the f¹ input and none of the f² input. The four derivatives fall on f⁰ data, which O5 controls to all orders. So real-K C³ bounds would be enough; the strip form of (A) is stronger than the recursion needs.

## 1. Setting and notation

Conventions of U3_LEMMA51 §1–§3 and U3_REPAIRS §3.1. d = 4, odd L, centered blocks, level-j units. Background: constant abelian field, coarse flux f per level-j plaquette in the (0,1) plane, color σ_3, charged sector (charge e). Symmetric gauge W_f(x, y) = exp(ief x∧y/2) about a coarse site. Link variables are midpoint (half-link-transported) variables: U(b) = U_0(b)^{1/2} e^{iB(b)} U_0(b)^{1/2}. R23_VERIFY §4 showed this is the convention in which R2 holds; it is also the one in which the coarse covariant gradient has an f-independent symbol (§3.2).

Objects.
- Δ_j(f) = S[Δ(φ); C_f]: the level-j charged form; S[K; C](V) = stationary value of ⟨B, KB⟩ under CB = V. σ_j(f; K): its canonical symbol (U3_LEMMA51 Lemma 3.1), a Hermitian 4×4 matrix for real K. σ_j(f) = Σ_m f^m σ_j^{(m)}. σ_j^{(0)} = Δ_j, the trivial-background symbol (U3 Prop. 2.1, written in midpoint coordinates).
- One-step recursion (R23 §3b–§3c, exact by R23_VERIFY §5): Δ_j(f) = T_f[Δ_{j−1}(fL^{−2})]. Per coarse K the bordered symbol is 𝔨_f(K) = 𝔨_0 + f𝔨_1 + f²𝔨_2 + O(f³), indexed by the L⁴ umklapps l (fine momenta k_l = (K + 2πl)/L) and the coarse row.
  - 𝔨_0(K): the O6 matrix 𝔅_{j−1}(K) = [[A, Q̃^†], [Q̃, 0]], A = ⊕_l Δ_{j−1}(k_l) + D_fΠD_f^*.
  - 𝔨_m(K), m = 1, 2: fine-fine block ⊕_l L^{−2m} σ_{j−1}^{(m)}(k_l) (input, magnetic rescaling f′ = fL^{−2}), plus fixed one-step vertices: the f^m coefficients of the one-step (0.4) linearization C_f and of the ghost term D_r(f)D_r(f)^†.
- b_0 := 𝔨_0^{−1}; v := b_0[0; 1] = [H; −Δ_j] with H = H_j(K) the gauge-fixed one-step minimizer map (U3_LEMMA51 Prop. 2.3).
- Per-step formulas (U3_LEMMA51 (3.2)–(3.3) with M → L):
  σ_j^{(1)} = [b_0𝔨_1b_0]_{22} − (ie/2)[b_0{𝔨_0, b_0}]_{22},
  σ_j^{(2)} = −[b_2]_{22}, b_2 = −b_0[𝔨_1b_1 + 𝔨_2b_0 − (ie/2)({𝔨_0, b_1} + {𝔨_1, b_0}) − (e²/8)P_2(𝔨_0, b_0)].
- Moyal rule (U3_LEMMA51 (3.1)): (a ⋆_f b)^ = âb̂ − (ief/2){â, b̂} − (e²f²/8)P_2(â, b̂) + O(f³), {a, b} = ∂_0a∂_1b − ∂_1a∂_0b, P_2(a, b) = ∂_0²a∂_1²b − 2∂_0∂_1a∂_0∂_1b + ∂_1²a∂_0²b.

The linear maps of the recursion. Put 𝒜_j s := L^{−2} H^♯ (⊕_l s(k_l)) H, where H^♯ is the analytic continuation of H^† (row 2 of b_0; b_0 is Hermitian for real K). Then

  σ_j^{(1)} = 𝒜_j σ_{j−1}^{(1)} + g_j^{(1)},   (1.1)
  σ_j^{(2)} = L^{−2} 𝒜_j σ_{j−1}^{(2)} + Q_j[σ_{j−1}^{(1)}] + g_j^{(2)},   (1.2)

with g_j^{(m)} built only from f⁰ data (Δ_{j−1} and K-derivatives up to order 4) and the fixed one-step vertices, and Q_j a polynomial of degree ≤ 2 in L^{−2}σ_{j−1}^{(1)}(k_l) and L^{−3}(∂_Kσ_{j−1}^{(1)})(k_l). (1.1) is the envelope formula (U3_LEMMA51 (2.4)) per step. (1.2) is read off (3.3): σ_{j−1}^{(2)} enters only through 𝔨_2, undifferentiated; σ_{j−1}^{(1)} enters through 𝔨_1, b_1, {𝔨_1, b_0}, and {𝔨_0, b_1}, with at most one K-derivative.

## 2. Evenness in K (the fact the verifier asked for)

Proposition E. For odd L, centered blocks, the symmetric gauge about a coarse site, and midpoint link variables: σ_j(f; −K) = σ_j(f; K) for every real f near 0, every j ≥ 0, and every K. Hence each σ_j^{(m)} is even in K, and so are the one-step building blocks.

Let R be the point reflection x → −x about the coarse site 0. It maps fine and coarse sites to sites, link midpoints to link midpoints, and an oriented bond b = (x, y) to the oriented bond Rb = (−x, −y). On configurations put (RU)(b) := U(Rb).

Step 1 (Wilson action and background). The Wilson action is invariant under R (R maps plaquettes to plaquettes). The background U_0(x, y) = exp(i(ef/2) x∧y σ_3) satisfies U_0(Rb) = exp(i(ef/2)(−x)∧(−y)) = U_0(b). So RU_0 = U_0. Same for the coarse background V_f.

Step 2 (Balaban's averaging is R-covariant). CMP 109 (0.4): for c = (c_−, c_+), c_+ = c_− + Le_μ,
  Ū(U)(c) = exp(iX) U(c),  X := avg_{x∈B(c_−), Γ∈G(c_−,x), Γ′∈G(c_+,x′)} (1/i) log U(ℓ),  ℓ = Γ·[x, x′]·Γ′^{−1}·c^{−1},
with path products read left to right. Extend to reversed bonds by Ū(U)(c^{−1}) := Ū(U)(c)^{−1}. Claim: Ū(RU)(c̃) = Ū(U)(c)^{−1} for c̃ := the positively oriented bond with Rc = c̃^{−1}, i.e. Ū(RU) = R Ū(U).
Proof. c̃ = (−c_+, −c_−). Map the averaging data of c to that of c̃ by z := −x′ ∈ B(−c_+) = B(c̃_−) (centered blocks: RB(y) = B(−y)), Γ̃ := RΓ′ ∈ G(c̃_−, z), Γ̃′ := RΓ ∈ G(c̃_+, z + Le_μ). The reflection of an axis-ordered staircase is the axis-ordered staircase with the same ordering, so this is a bijection of the uniform families (Fact A of R23 §2.1). In RU, the holonomy of Balaban's loop ℓ̃ for c̃ is the holonomy in U of Rℓ̃. Tracing the vertices, Rℓ̃ is ℓ traversed backwards and based at c_+:
  U(Rℓ̃) = U(Γ′)U(x, x′)^{−1}U(Γ)^{−1}U(c) = U(c)^{−1} U(ℓ)^{−1} U(c).
For small fields the principal log commutes with conjugation and log(g^{−1}) = −log g. So X̃ = −U(c)^{−1} X U(c), and with (RU)(c̃) = U(Rc̃) = U(c)^{−1}:
  Ū(RU)(c̃) = U(c)^{−1} e^{−iX} U(c) U(c)^{−1} = (e^{iX}U(c))^{−1} = Ū(U)(c)^{−1}. ∎
The proof uses the c_− ↔ c_+ exchange combined with reversal. This is exactly the check that U3_LEMMA51 Lemma 3.5 left open ("Balaban's loops start at c_−"). The dlog and exp factors need no separate check because the identity holds for the nonlinear map.

Step 3 (linearization). In the midpoint trivialization a reversed link has variable −B: U(b^{−1}) = U(b)^{−1} = U_0(b^{−1})^{1/2} e^{−iB(b)} U_0(b^{−1})^{1/2}. So R acts on fine and coarse fluctuations by (RB)_μ(m) = −B_μ(−m) (m = link midpoint, μ = link direction). By Steps 1–2 the fine Hessian Δ(φ) and the linearized constraint C_f commute with R. The ghost term need not commute: Δ_j(f) does not depend on gauge fixing (U3 §1.4, U3_LEMMA51 §2.3). Hence the stationary value commutes with R: Δ_j(f) = R Δ_j(f) R^{−1}. With the two minus signs cancelling, Δ_j(f)_{μν}(m, m′) = Δ_j(f)_{μν}(−m, −m′). Since W_f(−x, −y) = W_f(x, y), the canonical kernel satisfies a(z) = a(−z), so σ_j(f; −K) = σ_j(f; K). ∎

Remarks. (i) Lemma 3.4 of U3_LEMMA51 (fine Hessian even) is Step 1 plus Step 3 for the Hessian alone. (ii) In the left trivialization R does not act by a pure sign, which is why R23_VERIFY §4 found odd O(fh) terms there. (iii) Evenness excludes odd K-degree p in the scaling count of R23 §3b. So the leading irrelevant eigenvalue is L^{−2}, not L^{−1}, as the verifier stated. (iv) Even L (corner blocks): RB(y) ≠ B(−y), Step 2 fails, and odd terms appear (R23 §2.5).

## 3. The Ward statement (W)

### 3.1 Operator identity
Theorem W0. For every j ≥ 0 and every f with 𝒦(f) invertible (all small f; per K by O6 and a Neumann series in f), Δ_j(f) D_f = 0, where D_f is the coarse background-covariant gradient on charged coarse gauge functions λ. The identity is exact and contains no gauge-fixing or ghost remainder.

Inputs. (a) U_0^φ is a critical point of the Wilson action (U3 Lemma 5.0). (b) Ū(U_0^φ) = V_f exactly, up to a coarse gauge transformation that can be absorbed (Fact B, R23 §2.1; numerically 3·10^{−20} in R23_VERIFY §2). (c) Exact gauge covariance of the composed averaging, Ū(g·U) = g|_coarse · Ū(U) (CMP 98 p. 24 identity, preserved under composition).

Proof. (i) Fine Hessian. A is gauge invariant, so ∇A(g·U) = g·∇A(U). Differentiate at g = 1 in the direction ν: Δ(φ) D_φν = (infinitesimal action of ν on ∇A(U_0^φ)) = 0 by (a). At a critical point the Hessian does not depend on the trivialization.
(ii) Constraint. g_t = e^{itν} gives g_t·U_0^φ = e^{itD_φν + O(t²)}U_0^φ. With (b) and (c), Ū(g_t·U_0^φ) = e^{itD_f(ν|_c) + O(t²)} V_f. So C_f D_φ ν = D_f(ν|_c), where ν|_c is the restriction of ν to the coarse sites.
(iii) Stationary point. Let V = D_fλ. Pick ν with ν|_c = λ, and add a residual gauge function λ_r (λ_r = 0 at coarse sites) that solves D_r^†D_φ(ν + λ_r) = 0. This is solvable because D_r^†D_r is invertible with the Dirichlet condition. Put B := D_φ(ν + λ_r). Then (Δ(φ) + D_rD_r^†)B = 0 by (i) and the choice of λ_r, and C_fB = D_fλ by (ii), since λ_r does not change the coarse values. So (B, μ = 0) solves the KKT system 𝒦(f)[B; μ] = [0; V]. By uniqueness, Δ_j(f)V = −μ = 0. ∎

Ghost terms. The gauge-fixing term D_rD_r^† enters only through the choice of λ_r, and the stationary value does not depend on it. So the identity holds exactly for Δ_j(f). It fails only for objects that depend on the gauge fixing, for example the individual terms of (1.1), the minimizer map H, and the bordered symbol 𝔨_f. §4.5 shows where this matters. If one used a coarse form that also contains a coarse gauge-fixing term (not the case in U3: the gauge term does not change the constrained minimum, U3 §1.4), the identity would hold for its gauge-invariant part. A fixed coarse gauge-fixing term added at every level is level-independent, so the K = 0 conclusion of §3.3 would survive.

Order-by-order version (used in §4.5). Steps (i)–(iii) also work at finite order in f. If the fine kernel of one step, K(f′) = Δ_{j−1} + f′s_1 + f′²s_2, satisfies its own Ward identity to order f′^n (K(f′)D_{f′} = O(f′^{n+1})), then the one-step output satisfies Δ_j(f)D_f = O(f^{n+1}). So the one-step map preserves Ward-compatibility of the input data order by order.

### 3.2 Symbol form
In the midpoint symmetric gauge the coarse covariant gradient has canonical kernel ±1 at offsets ∓e_μ/2. The reason: the background link equals the straight Wilson line, and W(x+e, mid)W(mid, x) = W(x+e, x) for collinear points. So its symbol is f-independent:
  d_μ(K) = 2i sin(K_μ/2),  ∂_ν d = i cos(K_ν/2) e_ν.
Δ_j(f)D_f = W_f·(σ_j(f) ⋆_f d) by U3_LEMMA51 Lemma 3.2. The composition law of W holds for any points, including midpoints and sites. Since d has finite range, the f-expansion of the twisted convolution is a finite sum, which is exact. Only K-differentiability of σ_j^{(m)} is needed, and §4.3 supplies it. So, at every real K and every j:
  f⁰:  σ_j^{(0)} d = 0,   (W-0)
  f¹:  σ_j^{(1)} d = (ie/2){σ_j^{(0)}, d},   (W-1)
  f²:  σ_j^{(2)} d = (ie/2){σ_j^{(1)}, d} + (e²/8) P_2(σ_j^{(0)}, d).   (W-2)
(W-0) is the known Δ_jK̂ = 0. (W-1) and (W-2) are new.

### 3.3 The K = 0 statement: (W) proved
Lemma M (universal quadratic part). For every M ∈ {1, L, L², …} ∪ {∞}, σ^{(0)} = Δ_M is analytic at K = 0 (O5 (2.7)) and even (§2). Its Taylor polynomial of degree ≤ 3 at 0 is |K|²1 − KK^T in midpoint coordinates, the same for all M.
Proof. In (2.7), q̃_0 = K + O(K³), A_0 = 1 + O(K²), j_μ = e^{iK_μ/2}(1 + O(K²)), and the Γ-terms are O(K⁴). So the order-2 part is |K|²1 − KK^T. The midpoint change of coordinates conjugates by diag(e^{−iK/2}), which changes only order ≥ 3. Odd orders vanish by evenness. ∎
This is shorter than the argument of U3_REPAIRS §2.6, because evenness removes order 3.

Theorem W. For every j ≥ 0,
  σ_j^{(1)}(0) = τ_c := (3ie/2)(E_{10} − E_{01}),  E_{αβ} := e_αe_β^T,   (3.1)
exactly. In particular σ_j^{(1)}(0) does not depend on j, and it equals the continuum value.
Proof. Differentiate (W-1) in K_ν at K = 0. d(0) = 0 and ∂σ_j^{(0)}(0) = 0 (evenness). So i σ_j^{(1)}(0) e_ν = (ie/2)·i[∂_ν∂_0σ_j^{(0)}(0)e_1 − ∂_ν∂_1σ_j^{(0)}(0)e_0]. This fixes all four columns. With Lemma M, (∂_ν∂_ρσ^{(0)}(0))_{αβ} = 2δ_{νρ}δ_{αβ} − δ_{να}δ_{ρβ} − δ_{ρα}δ_{νβ}. Then ∂_ν∂_0σ^{(0)}(0)e_1 − ∂_ν∂_1σ^{(0)}(0)e_0 = 3(δ_{ν0}e_1 − δ_{ν1}e_0), which gives (3.1). The continuum charged operator satisfies the same Ward identity and has the same f⁰ quadratic part, so its K = 0 value is the same τ_c. ∎

Bookkeeping. (a) Magnetic shift. At level j−1 the identity holds in level-(j−1) units with flux fL^{−2}. In level-j units ∂_k = L∂_K and (ief′/2)∂_k∧∂_k = (ief/2)∂_K∧∂_K, so the Moyal parameter is the same. Theorem W at level j−1 and at level j is one statement in two unit systems. It also does not use the recursion: it holds at each level directly. (b) The numerical value 3/2 depends on the sign of e, the orientation in W, and the Fourier sign of U3_LEMMA51 (3.1). I did not check it against the project code. The j-independence does not depend on these conventions. (c) Hermiticity check: (τ_c)_{10} = 3ie/2 and (τ_c)_{01} = −3ie/2 are complex conjugates.

Consistency with the recursion (a free numerical test). At K = 0, Q̃(0)x = x_0/L (χ_L(2πl/L) = 0 for l ≠ 0, K̂(0) = 0), and Δ_{j−1}(0) = 0 and the ghost block at l = 0 is 0. So H_j(0) = L·e_{l=0} ⊗ 1 and 𝒜_j c(0) = c for every constant matrix c. The f¹ linear map has eigenvalue exactly 1 at K = 0. By (1.1) and Theorem W, g_j^{(1)}(0) = 0 for every j. This is a cancellation between the C_1 averaging vertex, the ghost vertex, and the Moyal bracket in (1.1). It can be tested with the existing one-step code.

### 3.4 Further consequences of (W-1) and (W-2)
(a) Longitudinal error, clean rate. Let n := d/|d| (real K ≠ 0) and P_⊥ := 1 − nn^†. By Lemma M and evenness, Δ_j − Δ_i vanishes to order 4 at K = 0. On the ball B_{ρ_1} of O5 it is bounded by C L^{−2i} (i ≤ j). A Schwarz-type estimate then gives |∂(Δ_j − Δ_i)(K)| ≤ C L^{−2i}|K|³ for |K| ≤ ρ_1/2. With (W-1):
  |(σ_j^{(1)} − σ_i^{(1)}) n| ≤ C L^{−2i} |K|²  near 0, and ≤ C L^{−2i} elsewhere (O5.1).
So the longitudinal part of the f¹ error (everything except P_⊥e^{(1)}P_⊥) converges at the clean rate L^{−2j}. A j L^{−2j} term can only sit in the transverse 3×3 block P_⊥e^{(1)}P_⊥.
(b) The f² value at K = 0 is slaved. Differentiate (W-2) at 0. Use ∂_0∂_1d = 0, ∂_ν∂_μ²d(0) = −(i/4)δ_{νμ}e_μ, and evenness of σ^{(1)}:
  σ_j^{(2)}(0)e_ν = (ie/2)[∂_ν∂_0σ_j^{(1)}(0)e_1 − ∂_ν∂_1σ_j^{(1)}(0)e_0] − (e²/16)(δ_{ν0}e_0 + δ_{ν1}e_1).
So σ_j^{(2)}(0) is fixed by the K² part of σ_j^{(1)} and a constant. The (m, p) = (2, 0) direction of R23 §3b is not independent: it is tied to (1, 2). Hence e_j^{(2)}(0) has the rate of ∂²e_j^{(1)}(0). The p ≥ 2 parts of σ^{(2)} have eigenvalue L^{−4}. So, given C² control of e^{(1)} at rate j L^{−2j} (conditional on §4), e^{(2)} = O(j L^{−2j}), not j² L^{−2j}. This sharpens R23 §4 (ii) and R23_VERIFY §7.
(c) (N) in this language. R23_VERIFY §7 located a possible Jordan block in tree-level mixing into dimension-6 operators without a quadratic part (tr F³-type). (a) shows that this mixing can only feed the transverse block. (W) does not decide (N).

## 4. Strip analyticity (A)

### 4.1 m = 0: the f⁰ data, from O5 directly
Proposition A0. There are δ_0 > 0 and B_0 < ∞, independent of M and L, such that for all M ∈ {1, L, L², …} ∪ {∞}: Δ_M is analytic and 2π-periodic on S(δ_0) := {K ∈ C⁴ : |Im K_ν| < δ_0}, sup_{S(δ_0)} |Δ_M| ≤ B_0, and sup_{S(δ_0)} |Δ_M − Δ_∞| ≤ B_0 M^{−2}.
Proof. O5 (U3_REPAIRS §2.4–2.5) gives analyticity and these bounds on the complex ball B_{ρ_1} and on the polydiscs P(K_*, η) for every real K_* with |K_*| ≥ ρ_1/2, uniformly in M. Take δ_0 := min(η, ρ_1/4)/2. A point K ∈ S(δ_0) lies in P(Re K, η) if |Re K| ≥ ρ_1/2. Otherwise |K| ≤ ρ_1/2 + 2δ_0 ≤ ρ_1, so it lies in B_{ρ_1}. Periodicity comes from the lattice sums. ∎
Status. U3_REPAIRS labels this by-product (its R5) a "strong sketch". U3_REPAIRS_VERIFY §4 rederived the near-zone and far-zone pieces it rests on (Lemma C, (2.7), (2.9)) and found only constant slips. I treat A0 as proved, with existential constants.
This settles (A) for m = 0. Note that it comes from the explicit M-step formula, not from the recursion. That matters below: no bound constant has to survive j iterations.

### 4.2 The one-step bordered inverse on a complex strip
Lemma A1. There is δ_* = δ_*(L) ∈ (0, δ_0/2] such that for all j ≥ 1 and all K with |Im K_ν| ≤ δ_*, 𝔨_0(K) (the analytic continuation of 𝔅_{j−1}) is invertible with ‖𝔨_0(K)^{−1}‖ ≤ 2b(L). b(L) is the O6 constant.
Proof. Entries of 𝔨_0(K), continued analytically (for real K the adjoints are replaced by the Schwarz reflections, for example K̂^♯ = (e^{−iK_μ} − 1)_μ):
- the block ⊕_l Δ_{j−1}(k_l), k_l = (K + 2πl)/L, is analytic for |Im K_ν| < Lδ_0 by A0;
- Q̃(K) = L^{−2}[χ_L(k_l)R_L(k_l)]_l − K̂Λ(K): χ_L and R_L are trigonometric polynomials, and Λ has finite range (one block), so Q̃ is entire;
- D_fΠD_f^♯ is a trigonometric polynomial.
Near the edge Re K_ν = ±π the labels l are relabelled. This conjugates 𝔨_0 by a permutation of the fine rows (Δ_{j−1} is 2π-periodic), so it does not change the coarse block. For |Im K| ≤ δ ≤ δ_0/2 put K_r := Re K. By Cauchy on S(δ_0), ‖∂_KΔ_{j−1}(k_l)‖ = L^{−1}‖(∂Δ_{j−1})(k_l)‖ ≤ 2B_0/(Lδ_0). The fixed entries have derivatives bounded by a constant C_L on |Im K| ≤ 1. So ‖𝔨_0(K) − 𝔨_0(K_r)‖ ≤ 2δ C_2(L) with C_2(L) := 8B_0/(Lδ_0) + C_L. Neither constant depends on j. O6 gives ‖𝔨_0(K_r)^{−1}‖ ≤ b(L) at every real K_r and every j. Choose δ_* := min(δ_0/2, 1, 1/(4b(L)C_2(L))). The Neumann series gives the claim. ∎
The constant b(L) is crude: the proved a ≥ 2.3·10^{−10}L^{−20} enters b through 1/a and κ = 1 + α/a, so b(L) is astronomically large, while numerically ‖𝔅^{−1}‖ ≤ 196 at L = 3 (R23_VERIFY §3). So δ_* is tiny but positive, and it depends on L only.

### 4.3 Qualitative (A): the same strip at every level, and the derivative budget
Proposition A2. For every j ≥ 1 and m ≤ 2, σ_j^{(m)} extends analytically to the open strip S(δ_*) and is 2π-periodic there. δ_* is the δ_* of Lemma A1, the same at every level.
Proof by induction on j. Base: the input of the first step is the Wilson charged Hessian at flux φ. Its canonical symbol has finite range, with coefficients analytic in φ (cos φ, sin φ, transport phases). So its f^m coefficients are trigonometric polynomials, hence entire. Step: assume σ_{j−1}^{(m)} is analytic on S(δ_*). For K ∈ S(δ_*), Im k_l = Im K/L ∈ S(δ_*/L) ⊂ S(δ_*). So every input block σ_{j−1}^{(m)}(k_l) and its K-derivatives are analytic on S(δ_*). The fixed one-step vertices (f^m parts of C_f and of the ghost term) have finite range, so they are entire (R23 (2.3b) with M = L: finite sums of polynomials times exponentials). b_0 is analytic on S(δ_*) by Lemma A1, and its K-derivatives are polynomials in b_0 and ∂𝔨_0. The formulas of §1 are polynomial in these objects, so σ_j^{(m)} is analytic on S(δ_*). For real K they agree with the true Taylor coefficients (R23_VERIFY §5), so they are the analytic continuation. ∎
Why the strip does not shrink: the step needs the input only on S(δ_*/L), and S(δ_*/L) ⊂ S(δ_*). The binding constraint is the invertibility of 𝔨_0 (Lemma A1), not the input strip. This confirms the R23 §3c gain argument.

Derivative budget (corrects R23 §3c). R23 §3c says that (3.2)–(3.3) "use up to four K-derivatives of the input at each step". By source, from (1.1)–(1.2):
- f⁰ input (Δ_{j−1}): up to 4 derivatives. A0 and Cauchy bound all of them uniformly in j, with no iteration.
- f¹ input (σ_{j−1}^{(1)}): 0 derivatives in (1.1); at most 1 in (1.2) (through {𝔨_1, b_0} and ∂b_1 in {𝔨_0, b_1}), each with a factor L^{−1}.
- f² input (σ_{j−1}^{(2)}): 0 derivatives.
So there is no derivative loss to fight. Uniform real-K bounds on ∂^ασ_j^{(1)}, |α| ≤ 3, and on ∂^ασ_j^{(2)}, |α| ≤ 2, would be enough for Lemma 5.1 (|α| ≤ 2) and for (1.2). The strip form of (A) is a convenient sufficient condition, not a necessary one.

### 4.4 Quantitative (A): why the proposed contraction fails as stated
The task proposed that the background parts enter with a contraction factor L^{−2} per level. For m = 1 this is false in any sup norm:
- 𝒜_j c(0) = c for every constant c (§3.3, H_j(0) = L e_{l=0}). So ‖𝒜_j‖_{sup→sup} ≥ 1 at every j. The direction is the spin coupling (m, p) = (1, 0) of R23 §3b, eigenvalue 1, not L^{−2}.
- Even off K = 0, the crude bound is sup|𝒜_js| ≤ L^{−2}‖H‖² sup|s| ≤ 4b(L)²L^{−2} sup|s|, and 4b²L^{−2} ≫ 1.
For m = 2 the factor at K = 0 is L^{−2} (L^{−2}𝒜_j c(0) = L^{−2}c), but the crude sup bound fails for the same reason.
What works instead: (i) remove the marginal direction with Theorem W; (ii) measure the rest relative to Δ_j, where the contraction is exact and needs no O6 constant (Lemma A4).

### 4.5 Exact contraction in the Δ-relative form norm
Lemma A4. Let K be real, and let s be a Hermitian-matrix function on the level-(j−1) BZ with ±s(k) ≤ N Δ_{j−1}(k) for all real k (as forms). Then ±𝒜_j s(K) ≤ L^{−2} N Δ_j(K). Iterating, ±𝒜_j⋯𝒜_{i+1}s ≤ L^{−2(j−i)} N Δ_j.
Proof. ±⊕_l s(k_l) ≤ N ⊕_l Δ_{j−1}(k_l), and conjugation by H preserves the form order. It remains to show H^†(⊕_lΔ_{j−1}(k_l))H = Δ_j. From 𝔨_0v = [0; 1]: AH = Q̃^†Δ_j and Q̃H = 1, so H^†AH = Δ_j. Write A = Δ⊕ + DD^†. Apply D^† to AH − Q̃^†Δ_j = 0 and use (Δ⊕)D = 0 and Q̃D = 0 (O6 (F1)): D^†D(D^†H) = 0, so |DD^†H|² = 0 and D^†H = 0. Hence H^†(DD^†)H = 0 and H^†(Δ⊕)H = Δ_j. ∎
Remarks. (a) The hypothesis forces s(k)d(k) = 0: Δ_{j−1}d = 0 and NΔ ∓ s ≥ 0, so (NΔ ∓ s)d = 0. So A4 applies only to data that annihilate gauge directions and vanish like |k|² at k = 0. (b) The constant is exactly L^{−2}: no O6 constant enters, only the minimizer identity. This is the rigorous form of "the irrelevant (1, 2) direction contracts by L^{−2}". (c) For the f² recursion (1.2) the same lemma gives L^{−4}.

### 4.6 Theorem A3: uniform real-K bound for σ^{(1)} (proved)
Theorem A3. There are C_A, N_* < ∞, depending on L but not on j, such that for all j ≥ 0 and all real K:
  |σ_j^{(1)}(K) − τ_c| ≤ C_A |K|²,  and  ±P_⊥(σ_j^{(1)} − τ_c)P_⊥ ≤ N_* Δ_j,   (4.1)
with P_⊥ = 1 − nn^†, n = d/|d|. In particular sup_j sup_K |σ_j^{(1)}(K)| < ∞.

Proof. Put w_j := σ_j^{(1)} − τ_c. For real K ≠ 0 split w_j = t_j + ℓ_j with t_j := P_⊥w_jP_⊥. By (W-1), w_jd = ρ̃_j := (ie/2){Δ_j, d} − τ_cd, and since w_j is Hermitian,
  ℓ_j = (ρ̃_jd^† + dρ̃_j^†)/|d|² − (d^†ρ̃_j) dd^†/|d|⁴.
So ℓ_j is explicit in the f⁰ data. From (1.1), w_j = 𝒜_jw_{j−1} + s_j with s_j := 𝒜_jτ_c + g_j^{(1)} − τ_c, and
  t_j = P_⊥(𝒜_jt_{j−1})P_⊥ + z_j,  z_j := P_⊥(𝒜_jℓ_{j−1} + s_j)P_⊥.   (4.2)
Step 1 (ℓ is O(|k|²), uniformly). ρ̃_j is analytic on S(δ_0) with a j-uniform bound (A0). It is odd (§2). Its linear Taylor term vanishes: that is exactly the K = 0 computation in the proof of Theorem W, which uses only Lemma M. So ρ̃_j vanishes to order 3, and |ρ̃_j(k)| ≤ C|k|³ on the real BZ (Schwarz lemma on complex lines through 0, then the global bound). With |d(k)| ≥ (2/π)|k|: |ℓ_j(k)| ≤ C|k|², and |ℓ_j| ≤ C on the BZ. C does not depend on j.
Step 2 (the minimizer map: soft at l = 0, small elsewhere). For real K and V ∈ C⁴, x := H_j(K)V satisfies: (a) |x| ≤ b(L)|V| (O6). (b) Transverse parts, l ≠ 0: Σ_l x_{T,l}^†Δ_{j−1}(k_l)x_{T,l} = V^†Δ_jV ≤ c_0^{−1}|K̂|²|V|² (Lemma A4 and Prop. B). Prop. B and (E1) give Δ_{j−1}(k_l) ≥ 4C_1^{−1}L^{−2}P_T(k_l) for l ≠ 0, so Σ_{l≠0}|x_{T,l}|² ≤ C|K|²|V|². (c) Longitudinal parts: D^†x = 0 (proof of A4) means ΠD_f^*x = 0, so k̂_l^†x_l = c is the same for all l, and x_{L,l} = c k̂_l/|k̂_l|², i.e. x_L = D_fν with ν_l = c/|k̂_l|². The K̂-row of the constraint (O6 §3.5 Step 1) gives cv(ν) = (K̂^†V − K̂^†Q̃x_T)/|K̂|². With Lemma F of U3_REPAIRS, |cv(ν)| ≤ |V|/|K̂| + 3.6L·b(L)|V|. Since cv(ν) = L^{−2}cΣ_l|k̂_l|^{−2} and |k̂_0| ≤ |K|/L (E4), |c| ≤ L²|cv(ν)||k̂_0|² ≤ |K|²|cv(ν)| ≤ C|K||V|. With |k̂_l| ≥ 2/L for l ≠ 0 (E1): |x_{L,l}| ≤ C|K||V|. Together: |H_{j,0}(K)| ≤ b(L) and |H_{j,l}(K)| ≤ C_H|K| for l ≠ 0, with C_H independent of j.
Step 3 (𝒜_jℓ_{j−1} is O(|K|²)). 𝒜_jℓ_{j−1}(K) = L^{−2}Σ_l H_l^†ℓ_{j−1}(k_l)H_l. The l = 0 term is ≤ L^{−2}b²·C|K/L|². Each l ≠ 0 term is ≤ L^{−2}C_H²|K|²·C. So |𝒜_jℓ_{j−1}(K)| ≤ C|K|², uniformly in j.
Step 4 (s_j is O(|K|²)). s_j + τ_c is the one-step f¹ output from the constant input τ_c. All one-step ingredients (input kernel with even symbol, C_f, the ghost term with the residual gauge group) commute with R (§2, Steps 1–3). So s_j is even, and its gradient at 0 vanishes. s_j(0) = 0: H_j(0) is supported on l = 0, so (1.1) at K = 0 reads σ_j^{(1)}(0) = σ_{j−1}^{(1)}(0) + g_j^{(1)}(0). Theorem W at levels j and j−1 gives g_j^{(1)}(0) = 0. Also 𝒜_jτ_c(0) = τ_c. On S(δ_*), s_j is analytic with |s_j| ≤ S_* := (1 + 4b²L^{−2})|τ_c| + G_1. Here G_1 bounds g_j^{(1)} on S(δ_*) uniformly in j (Lemma A1, A0 with Cauchy, finite-range vertices). The one-variable Schwarz lemma on z ↦ s_j(zK/|K|_∞·δ_*/2) gives |s_j(K)| ≤ 4S_*δ_*^{−2}|K|² on real K.
Step 5 (close the recursion). By Steps 3–4, z_j is Hermitian, z_jd = 0, and |z_j(K)| ≤ Z′|K|² ≤ Z′(π²/4)|K̂|². Prop. B in midpoint coordinates (P′_T ↦ P_⊥) gives ±z_j ≤ Z Δ_j with Z := (π²/4)C_1Z′. Let N_j be the smallest N with ±t_j ≤ NΔ_j. Lemma A4 and P_⊥Δ_jP_⊥ = Δ_j give N_j ≤ L^{−2}N_{j−1} + Z. Base: the Wilson data satisfy Theorem W (j = 0), so t_0 = O(|K|²), t_0d = 0, and N_0 < ∞. Hence N_j ≤ N_* := N_0 + Z/(1 − L^{−2}). Finally |w_j| ≤ |t_j| + |ℓ_j| ≤ N_*c_0^{−1}|K̂|² + C|K|². ∎

What Theorem A3 uses: A0 (O5 strip), O6, Lemma A1, Prop. B, Lemma F, (E1)/(E4), Theorem W, and Prop. E. All crude constants (b, C_H) enter only the source Z. None of them multiplies N_{j−1}. That is why the recursion closes even though b(L) is astronomically large.

### 4.7 What remains of (A): derivatives, the strip, and m = 2
Theorem A3 is a C⁰ statement on real K. The recursion (1.2) for σ^{(2)} needs ∂_Kσ^{(1)}, and Lemma 5.1 needs |α| ≤ 2. The decomposition t + ℓ is not analytic at K = 0 (P_⊥ depends on the direction of K), so Cauchy estimates cannot be applied to it. One more input closes everything.

Reduction R-A. Let h := sup_j sup_{K∈BZ} ‖H_j(K)‖ (one-step gauge-fixed minimizer map, per-K unitary coordinates). Note h ≥ L, because H_j(0) = L e_{l=0}.
  (H′)  h² < L²(L − 1).
If (H′) holds, then for some δ_1 ∈ (0, δ_*/2], all j, and |α| ≤ 3:
  sup_{S(δ_1)} |σ_j^{(1)}| ≤ Y_1,  sup_{S(δ_1)} |σ_j^{(2)}| ≤ Y_2,  hence sup_{real K} |∂^ασ_j^{(m)}| ≤ C_α (m = 1, 2),
with Y_1, Y_2, C_α independent of j. That is (A) in full.
Proof. Continuity and the j-uniform convergence of H_j (O5 + Neumann) give sup_{S(δ_1)}‖H_j‖ ≤ h_1 with h_1² < L²(L − 1) for δ_1 small. Let Y_j := sup_{S(δ_1)}|σ_j^{(1)}|. For k = k_r + iy with |y|_∞ ≤ δ_1/L, restrict to the complex line t ↦ σ(k_r + t y/|y|_∞), which is analytic for |Im t| < δ_1. Cauchy on that line gives |σ(k) − σ(k_r)| ≤ Y/(L − 1). With Theorem A3 (real bound R_1) and (1.1):
  Y_j ≤ (h_1²/L²)(R_1 + Y_{j−1}/(L − 1)) + G_1,
which contracts because h_1² < L²(L − 1). For m = 2, (1.2) gives Y_j^{(2)} ≤ (h_1²/L⁴)Y_{j−1}^{(2)} + C(Y_1) + G_2, and h_1²/L⁴ < (L − 1)/L² < 1. Cauchy on S(δ_1/2) gives the derivative bounds. ∎
Status of (H′). Not proved. The O6 constants are far too crude to decide it. Heuristics: for transverse and for longitudinal V at small K, |HV| ≈ L|V| (Step 2 of A3, and the pure-gauge minimizer), so h/L = 1 + o(1) near K = 0. At L = 3 the condition is h < 4.24, i.e. h/L < 1.41. The open question is the corner of the BZ, where ‖𝔅^{−1}‖ reaches about 195 (R23_VERIFY §3). Most of that may sit in the S_0 and Lagrange-multiplier blocks rather than in H. This is a direct numerical check with the existing O6 script: compute max_K ‖H_j(K)‖/L for j = 1, 2, 3, ∞ at L = 3.
A weaker sufficient condition (H″): sup_{n,j,K} ‖H_{(n),j}(K)‖/L^n < ∞ for the n-step composed minimizer (the composition of the one-step gauge-fixed minimizers; tower property). Then the same argument over blocks of n steps works once L^n − 1 exceeds the square of that ratio, because the thin-strip gain becomes 1/(L^n − 1). The transverse parts satisfy the O(L^n) bound by the energy argument of A3 Step 2(b). The longitudinal parts are where the per-step gauge fixings could accumulate. (H″) is plausible, not proved.

Convergence (sketch, not written in full). Apply the A3 argument to δ_j := σ_j^{(1)} − σ_{j−1}^{(1)}. By Theorem W, δ_j(0) = 0, and δ_jd = (ie/2){Δ_j − Δ_{j−1}, d}, which is O(L^{−2j}|K|³) by §3.4(a). So the explicit longitudinal part is O(L^{−2j}|K|²). The transverse part satisfies N_j^δ ≤ L^{−2}N_{j−1}^δ + Z L^{−2j}, provided Step 2 is redone for H_j − H_{j−1} (size O(L^{−2j}) by O5 and the Neumann series). That gives N_j^δ ≤ C j L^{−2j}, so |σ_j^{(1)} − σ_{j−1}^{(1)}| ≤ C j L^{−2j}|K|² on real K. The j is the resonance of R23 §3b: the source rate L^{−2j} equals the contraction L^{−2}. The form-norm method cannot remove it. Removing it is (N), restricted to the transverse block by §3.4(a).

## 5. Effect on the R23 conditions and rates
R23 §4 and R23_VERIFY §7 state the rates j L^{−2j} (σ^{(1)}) and j² L^{−2j} (σ^{(2)}), conditional on one-step O6 (proved), (A), and (W). After this file:
- (W): proved (Theorem W). The marginal f¹ direction does not move: e_j^{(1)}(0) = 0 exactly for every j.
- (A): proved for m = 0 (A0) and qualitatively for m ≤ 2 (A2). For m = 1, a j-uniform real-K C⁰ bound is proved (A3). The C³/strip bounds for m = 1 and all bounds for m = 2 are reduced to (H′) (or the weaker (H″)), one inequality on the norm of the gauge-fixed minimizer map.
- Rates, given (H′) and the R23 §3b linear algebra: e_j^{(1)} = O(j L^{−2j}), with the longitudinal part O(L^{−2j}) (§3.4(a)); e_j^{(2)} = O(j L^{−2j}), not j² L^{−2j}, because (W-2) ties the (2, 0) direction to the (1, 2) direction (§3.4(b)). Both are geometric for any ρ > L^{−2}. So U3 Theorem 7.1 survives with ρ = L^{−2} replaced by any ρ > L^{−2}.
- (N): unchanged (open, plausibly false), but now confined to the transverse 3×3 block of the f¹ sector.

## 6. Ledger

Proved here:
- P1. Prop. E: Balaban's (0.4) averaging is exactly covariant under point reflection about a coarse site (odd L, centered blocks; the c_− ↔ c_+ exchange with reversal holds for the nonlinear map, which closes the open check of U3_LEMMA51 Lemma 3.5). Hence σ_j(f; −K) = σ_j(f; K) in the midpoint trivialization, for all f and j. This is the fact the verifier needed for the scaling count.
- P2. Theorem W0: Δ_j(f)D_f = 0 exactly, every j and f. Gauge-fixing and ghost terms drop out because the stationary value does not depend on them. The one-step map preserves Ward-compatibility order by order in f.
- P3. Symbol identities (W-0), (W-1), (W-2) at every K and j. The midpoint symbol d_μ = 2i sin(K_μ/2) of D_f is f-independent.
- P4. Lemma M: the degree-≤3 Taylor polynomial of Δ_M at 0 is |K|²1 − KK^T for every M (short proof via evenness).
- P5. Theorem W: σ_j^{(1)}(0) = τ_c = (3ie/2)(E_{10} − E_{01}) for all j ≥ 0. Corollary: g_j^{(1)}(0) = 0 for every j (a testable cancellation in the one-step formulas).
- P6. §3.4: the longitudinal f¹ error is O(L^{−2i}|K|²) with no j factor; σ_j^{(2)}(0) is fixed by the K² part of σ_j^{(1)}.
- P7. A0: Δ_M is analytic on a fixed strip with M-uniform bounds and rate M^{−2} on the strip (assembled from O5; rests on U3_REPAIRS R5, which its author called a strong sketch and its verifier rederived piecewise).
- P8. Lemma A1: ‖𝔨_0(K)^{−1}‖ ≤ 2b(L) on |Im K| ≤ δ_*(L), uniformly in j.
- P9. Prop. A2: σ_j^{(m)}, m ≤ 2, are analytic on the same strip S(δ_*) at every level; the rescaling maps the needed input strip S(δ_*/L) into S(δ_*).
- P10. Derivative budget: the one-step formulas use ≤ 1 K-derivative of the f¹ input and none of the f² input (corrects the "four derivatives of the input" of R23 §3c).
- P11. §4.4: 𝒜_j has eigenvalue exactly 1 at K = 0 (the spin coupling), so the proposed "L^{−2} contraction of the background parts" is false for m = 1 in any sup norm.
- P12. Lemma A4: exact contraction ±𝒜_js ≤ L^{−2}NΔ_j for ±s ≤ NΔ_{j−1}, with no O6 constant.
- P13. Theorem A3: |σ_j^{(1)}(K) − τ_c| ≤ C_A|K|² on real K, uniformly in j.

Reduced, not proved:
- A1. (A) in full (C³/strip for m = 1, all of m = 2) ⇐ (H′): sup_{j,K}‖H_j(K)‖ < L√(L − 1); or ⇐ (H″) for the n-step composed minimizer.
- A2. Convergence of σ_j^{(1)} at rate j L^{−2j} in C⁰ on real K: sketched (§4.7); needs Step 2 of A3 written for H_j − H_{j−1}.
- A3. e^{(2)} = O(j L^{−2j}) instead of j² L^{−2j}: follows from P6 plus (A) plus the R23 §3b linear algebra (itself a reduction).

Open:
- O1. (H′) or (H″). Decisive numerical check: max over K of ‖H_j(K)‖/L at L = 3, j = 1, 2, 3, ∞, with the O6 bordered-matrix script of R23_VERIFY §3; the condition is < 1.41.
- O2. (N), now confined to P_⊥e^{(1)}P_⊥.
- O3. The value 3/2 in τ_c depends on the sign conventions of U3_LEMMA51 (3.1); not checked against the project code. The j-independence does not depend on it.
- O4. Finite-f versions (Nielsen–Olesen regime) are not addressed; everything here is about Taylor coefficients at f = 0.

Not verified: everything was derived in one session, without numerics. Cheap checks with existing code: (1) g_j^{(1)}(0) = 0 in the one-step f¹ formula, at j = 1, 2; (2) σ_j^{(1)}(0) equal across j and equal to the Wilson value; (3) evenness of σ_j^{(1)}, σ_j^{(2)} in K in the midpoint trivialization; (4) O1.
