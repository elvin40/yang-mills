# WG_FULL — walk expansions of G and G_1 from the walk expansion of G_0

Date 2026-10-28. Paper-grade write-out of SOURCES_WG §2–§5 with the corrections of SOURCES_WG_VERIFY.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Sources: SOURCES_WG §0–§7; SOURCES_WG_VERIFY; SOURCES_A1_KERNEL §1; SOURCES_A1_WALK §1, §5–§7; CMP 99 text pp. 397–398, 410, 419–423, 427 (re-read with pdftotext; page p. N = pdf page N − 388).
Tags: [V] read on the page; [P] proved here; [R] printed statement or printed sketch used as input; [I] inferred step, stated where used.
Status: author write-out, checked by WG_FULL_VERIFY (NEEDS FIXES); fixes F1–F6 applied 2026-10-28 (change log at the end); the fixes are not yet re-verified.

## 0. Notation, inputs, and statement

0.1 Operators [V]. Balaban (CMP 99) uses three gauge-field propagators in a regular background U.
- G_0 := (Δ + DRD* + Q*aQ)^{−1} (p. 421: "Let us denote for a moment the operator we have investigated in previous sections by G_0, i.e. G_0 = (Δ + DRD* + Q*aQ)^{−1}").
- G is defined by G^{−1} = Δ_π + DRD* + Q*aQ (p. 420, (3.122)), with ⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩ (p. 419, (3.119)).
- G_1 is defined by the quadratic form (3.128) (p. 421).
Here G′ is the scalar (ghost) propagator of Thm 3.1, R = I − P is the projection of p. 414 ("DRD* = DD* − DPD*"), and P = G′Q′*(Q′G′²Q′*)^{−1}Q′G′ (p. 415). We write C′ := (Q′G′²Q′*)^{−1}.

0.2 The lattice of localization points [V p. 397; I as in A1_WALK §1.2]. 𝔅 = ∪_j Λ_j is the multiscale block lattice. For y ∈ Λ_j, Δ(y) = B^j(y) is the j-block with centre y. d(y, y′) is the weighted distance of CMP 96 (2.36). μ is the measure of A1_KERNEL §5 and m(y, y′) := (μ(y)μ(y′))^{−1/2}. The kernel T(y, y′) of an operator T is its localized block Δ(y)TΔ(y′), measured in the norm of (3.42)–(3.47) after the S-rescaling of A1_KERNEL §8. For blocks with derivatives the norm is the L² block-operator norm of the (3.46) list (e.g. ‖h∇_UG′∇*_Uλ‖ ≤ |h|e^{−δ_0d}‖λ‖, scale factor 1); this norm composes. The pointwise bound (3.44) needs a Hölder norm of λ, so it is not a kernel bound and is not used [V p. 398]. With this convention the composition rule is (AB)(y, y′) = Σ_z μ(z)A(y, z)B(z, y′), and the weights telescope: μ(z)m(y, z)m(z, y′) = m(y, y′). The scale factors (L^jη)^{±} of Balaban's bounds are carried by m and S. This bookkeeping is the same as in (3.131) and in A1_WALK [I, convention C0]. The one place where it is not routine, the vector Ĵ of Lemma B, is written out in 5.5.

0.3 Walks and distance [V p. 410, (3.93)]. A domain X is a small connected union of cubes of Balaban's cover 𝒟. A walk ω = (X_0, …, X_n) is a finite sequence of domains with X_{i−1} ∩ X_i ≠ ∅. Its length is |ω| := n. The path distance is
 d(ω, y, y′) := inf {d(y, y_1) + d(y_1, y_2) + … + d(y_{n−1}, y_n) + d(y_n, y′)}, inf over y_i ∈ X_i.
By the triangle inequality, d(ω, y, y′) ≥ d(y, y′).
 Cube size (two letters) [V CMP 116 p. 3; I/R]. In CMP 99 the walk cube size and the regularity parameter M of (3.36) are one letter M. In the consumer paper CMP 116 they are different: the walk domains are "unions of connected families containing several cubes … of the size M1 instead of M" (CMP 116 p. 3), and the printed per-step factor (1.7) is O(M_1^{−1/2})^{|ω|}M_1^{−½|ω|}. We follow CMP 116. The cover 𝒟 consists of M_1-cubes, so every domain is a connected union of at most c(d) M_1-cubes. M is the regularity parameter of (3.36) (it enters only through Mα_0) and of the layer width RM of d, with R_1M_1 ≤ M. That (3.35)–(3.36) at scale M give the hypotheses of Thms 3.7–3.10 on M_1-cubes (M_1 ≤ M) is [I/R: CMP 116 p. 3 asserts the M_1 version].

0.4 Definition of a walk expansion [cite SOURCES_A1_WALK §1.2]. A walk expansion of T with constants (B, ρ, δ) is a representation T = Σ_λ T_λ over a countable label set. Each label λ carries a walk ω(λ) = (X_0, …, X_n), and T_λ = R_0(X_0)R_{α_1}(X_1)···R_{α_n}(X_n) is an ordered product of factors with:
 (L1) the kernel of R_α(X) is supported in X × X;
 (L2) R_α(X) depends on U only through U restricted to X̃^5 (and on the domain data only in X̃^5);
 (B1) |T_λ(y, y′)| ≤ B ρ^{|ω(λ)|} m(y, y′) e^{−δ d(ω(λ), y, y′)};
 (B2) for each domain X′ the number of pairs (α, X) with X ∩ X′ ≠ ∅ is at most C_𝒟, and C_𝒟ρ ≤ ¼.
Under (B1)–(B2), Σ_λ |T_λ(y, y′)| ≤ 2B m(y, y′) e^{−δ d(y, y′)} (A1_WALK §1.2).
Remark. Balaban does not print bounds for single factors R_α(X) (p. 413: "Instead we will write a bound for a whole term"). So below a whole walk term of an input operator is always used as one unit, called a block (A1_WALK §6.2). We use (L1) only in its consequence for whole terms: the kernel of T_λ is supported in X_0 × X_n.

0.5 Inputs. All bounds are per walk term and hold uniformly in U with (3.35)–(3.36), in j, k, η, the sequence {Ω_j}, and the volume.
 (I1) G_0 = Σ_ω T^0_ω [R: CMP 99 Thm 3.10, (3.107)–(3.108), printed sketch pp. 414–416; the hypothesis printed as "(3.95)" is a misprint for (3.35)].
 (I2) G′ = Σ_ω T′_ω [R: CMP 99 Thm 3.7 and Cor. 3.8, (3.90), (3.94), p. 410; proof by reference to CMP 95 Prop. 1.2 and CMP 96 Prop. 2.2].
 (I3) C′ = (Q′G′²Q′*)^{−1} = Σ_ω R′_ω [R: CMP 99 Thm 3.9, (3.98)–(3.99), printed sketch pp. 411–413].
 Each of (I1)–(I3) is a walk expansion in the sense of 0.4 with constants (B_0, ρ, δ), where ρ := c_0M_1^{−1} (walk cube size M_1, 0.3) and δ := ½δ_0. This is the content of (3.108), read with M_1 for the cube size as in CMP 116 (1.7): "|(T_ωJ)(x)| ≤ O(1)(L^jη)²O(M^{−1/2})^{|ω|}M^{−½|ω|}e^{−½δ_0 d(ω,y,y′)}|J|, and the corresponding inequalities for norms on the left-hand sides of (3.42)–(3.47)" (p. 416 [V]); Cor. 3.8 says "Similar estimates hold for the other norms" (p. 410 [V]). So (B1) holds also for kernels with one covariant derivative on either side and for the mixed L² block norm ‖h∇T∇*λ‖ of the (3.46) list, with the same form of bound. The pointwise mixed bound (3.44) is not used (0.2). We take δ as the common rate of all these norms (Balaban's convention, p. 423: "a common, best possible, decay rate for all these operators").
 (I4) CMP 96 Lemma 2.1 [R, printed with proof]: for κ = αδ_0 with 0 < α < 1, sup_y Σ_{y′∈𝔅} e^{−κ d(y, y′)} ≤ c_1(κ) < ∞, with c_1 depending on d, L, κ only, provided the layer width satisfies CMP 96 (2.59), ½αδ_0RM > 2d log c_0(½α) + 1 (SOURCES_A1_WALK_VERIFY l. 47). Once (2.59) holds, c_1 does not depend on RM. Here Lemma 2.1 is used at the rates κ = θ½δ_0 (§3–§4), κ = θ½ε (Lemma C in §5.7), and κ = ½θ½ε (Lemma B, 5.5). So (2.59) is a condition "RM large after θ and ε": RM ≥ C(d, L)/(θε) covers all three, since ε < δ_0.
 (I5) J := D*η^{−2} Im ∂U, a function on bonds, local in U. Under (3.36), |J(b)| ≤ O(1)Mα_0 (L^jη)^{−3} [V: p. 419 "J … is small, if U satisfies the condition (3.36)"; p. 422]. In rescaled units, Ĵ := S^{3/2}J (S = multiplication by (L^jη)², 5.5) and |Ĵ(b)| ≤ c_J Mα_0.
 (I6) For G_1 only: Theorem A1-W (A1_WALK_FULL; source SOURCES_A1_WALK §7.1). Given a walk expansion of G with step factor ρ_G and rate δ_G′ (with C_𝒟c_1ρ_G small), (QGQ*)^{−1} has a walk expansion with constant B_W, step factor ρ_W := max{K_W/M_1, c_W ρ_G}, and rate δ_W = ½ε. Its own inputs are the walk expansion of G, the lower bound (C), Lemma 2.1, and the [I] items listed there.
 (I7) Local factors [I, Q-locality as in A1_WALK §8]. Q, Q*, Q′, Q′*, D, D*, the parallel transport R_b, and the local Hessian of C^{(2)} have kernels supported within O(1) blocks of the local scale. A local factor next to a walk block is merged into that block. The merged block has the same domain list and the same form of bound with B_0 replaced by c_Q B_0. A D or D* is merged so that every block carries at most one derivative on each side (rule R-D, §2.4).

0.6 Order of constants. (d, L) fix B_0, c_0, δ_0, C_𝒟, c_J. Then θ ∈ (0, 1) is fixed (θ = ½ is enough). Then M_* and a_* are fixed (§4); M_* is a threshold on M_1. For G_1, the A1-W constants (with ε) follow, then M_*′, M_W, and a_{**} (§5). Then RM is taken so large that (2.59) holds at the rates θ½δ_0, θ½ε, and ½θ½ε and that θ_S ≤ cθε (5.5); RM ≥ C(d, L)/(θε) suffices. This is admissible: ε is fixed at a minimal RM, and Σ, c_1 are monotone in RM (SOURCES_A1_WALK_VERIFY §6). Last, α_0 is chosen. The condition of WG-1 is α_0 ≤ c′M^{−1}M_1^{−10}; it is optional and is admissible in this order because α_0 comes last.

0.7 Theorem WG. Let U satisfy (3.35)–(3.36). Fix θ ∈ (0, 1).
 (G) [Theorem WG-G] There are M_*(d, L, θ) and a_*(d, L, θ) > 0 such that for M_1 ≥ M_*, Mα_0 ≤ a_*, and RM with (2.59) at rate θ½δ_0, G = Σ_λ T_λ is a walk expansion on the M_1-cover (0.3) in the sense of 0.4 with constants (B_0′, ρ_*, (1 − θ)½δ_0), B_0′ := c_QB_0. Here ρ_* := max{ρ, ε_V^{1/10}} and ε_V := K_V Mα_0, K_V = K_V(d, L, θ). The bound (B1) holds also for kernels with one derivative on either side. If in addition α_0 ≤ c′M^{−1}M_1^{−10}, then ρ_* ≤ c_0M_1^{−1}, which is the CMP 116 (1.7) form ((3.108) with M_1 for the cube size).
 (G1) [Theorem WG-G1] Assume in addition (I6). There are M_W and a_{**} > 0 such that for M_1 ≥ max{M_*′, M_W}, Mα_0 ≤ a_{**}, and RM ≥ C(d, L)/(θε) (5.5, (I4)), G_1 = Σ_τ T_τ is a tree expansion: (L1)–(L2) for every factor, (B1) with the tree distance d(τ, y, y′), (B2) in tree form, and rate (1 − θ)½ε.
 All constants are uniform in U with (3.35)–(3.36).

## 1. The identity G^{−1} = G_0^{−1} − Δ′_π and the Neumann series

1.1 The identity [V pp. 419–421]. Balaban applies the second identity of (3.117) to the right side of (3.119). The result is (3.120):
 ⟨A, Δ_πA⟩ = ⟨A, ΔA⟩ − ⟨i[(G′RD*A)(b_−), A(b)] − i[A(b), R_b(G′RD*A)(b_+)] − i[(G′RD*A)(b_−), (DG′RD*A)(b)], J⟩ = ⟨A, ΔA⟩ − ⟨A, Δ′_πA⟩.
Here R_b is the parallel transport along the bond b (not the projection R), and J is the function of (I5). Insert this in (3.122):
 G^{−1} = Δ_π + DRD* + Q*aQ = (Δ + DRD* + Q*aQ) − Δ′_π = G_0^{−1} − Δ′_π.
We write V := −Δ′_π, so G^{−1} = G_0^{−1} + V. Balaban prints the consequence as (3.130):
 G = G_0(I − Δ′_πG_0)^{−1} = Σ_{n≥0} G_0(Δ′_πG_0)^n.
Sign check [P]: G_0^{−1} − Δ′_π = G_0^{−1}(I − G_0Δ′_π), so G = (I − G_0Δ′_π)^{−1}G_0 = G_0(I − Δ′_πG_0)^{−1}. The second equality uses (I − XY)^{−1}X = X(I − YX)^{−1} with X = G_0, Y = Δ′_π.

1.2 Lemma N (Neumann series in finite volume) [P]. Work in a finite volume, so all operators are finite matrices. Let S_N := Σ_{n=0}^{N} G_0(Δ′_πG_0)^n. Assume that the series Σ_n G_0(Δ′_πG_0)^n converges entrywise. Then G_0^{−1} − Δ′_π is invertible, and its inverse is S := lim S_N.
Proof. Multiply S_N on the left by G_0^{−1} − Δ′_π:
 (G_0^{−1} − Δ′_π)S_N = Σ_{n=0}^{N}(Δ′_πG_0)^n − Σ_{n=0}^{N}(Δ′_πG_0)^{n+1} = I − (Δ′_πG_0)^{N+1}.
The series converges, so its general term tends to 0: G_0(Δ′_πG_0)^N → 0. Hence (Δ′_πG_0)^{N+1} = Δ′_π·G_0(Δ′_πG_0)^N → 0, because Δ′_π is a fixed matrix. Let N → ∞: (G_0^{−1} − Δ′_π)S = I. In finite dimension a one-sided inverse is a two-sided inverse. ∎
Consequence. Lemma N does not need the existence of G as an input. The convergence of the series is enough, and it gives G = S. We prove the convergence in §4 in a stronger form: absolute convergence of the expanded walk sum.

1.3 Convergence condition [P]. The series converges if the walk-weighted size of each V-insertion is small. In §4 this is the condition C′_𝒟 ρ_* ≤ ½, which needs M_1 ≥ M_* and Mα_0 ≤ a_*. It is the walk form of ‖Δ′_πG_0‖ < 1. Balaban states the global form [V p. 422]: "This inequality [(3.131)] and Theorem 3.3 for G_0 imply a convergence of the series (3.130), for α_0 sufficiently small, in all norms appearing on the left-hand sides of the inequalities (3.42)–(3.47), except the inequality involving the Laplace operator in (3.42)."

1.4 Rearrangement [P]. In §4 every term G_0(Δ′_πG_0)^n is written as a sum over labels λ of products of blocks, with junction points z_1, …, z_{N−1} ∈ 𝔅 summed. §3 bounds Σ_{z} Π_k |φ_k(z_{k−1}, z_k)| for each label, and §4 bounds the sum of these over all labels. So the family (label, junction points) is absolutely summable for each fixed (y, y′). By Fubini for absolutely summable families, the order of summation is free. Hence G_0(Δ′_πG_0)^n = Σ_{λ: n(λ) = n} T_λ, and G = Σ_λ T_λ.

## 2. The structure of V = −Δ′_π

2.1 Non-locality [V, SOURCES_WG_VERIFY §1]. V is not a local operator. The chain G′RD* appears once in each of the first two terms of (3.120) and twice in the third term. G′ is non-local, and R = I − P with P = G′Q′*C′Q′G′ is non-local. Only J is local. So V is local only in the walk sense proved below.

2.2 Bilinear forms [P from (3.120)]. Write Λ := G′RD* and Λ_D := DG′RD* = DΛ. Define, for fields A_1, A_2,
 F_1(A_1, A_2) := Σ_b ⟨i[(ΛA_1)(b_−), A_2(b)], J(b)⟩,
 F_2(A_1, A_2) := −Σ_b ⟨i[A_1(b), R_b(ΛA_2)(b_+)], J(b)⟩,
 F_3(A_1, A_2) := −Σ_b ⟨i[(ΛA_1)(b_−), (Λ_DA_2)(b)], J(b)⟩.
Then (3.120) reads ⟨A, Δ′_πA⟩ = F_1(A, A) + F_2(A, A) + F_3(A, A). Δ′_π is the symmetric operator of this quadratic form:
 ⟨A_1, Δ′_πA_2⟩ = ½ Σ_{k=1}^{3} [F_k(A_1, A_2) + F_k(A_2, A_1)].
Each F_k has the form F_k(A_1, A_2) = ⟨X_kA_1, ι_k Y_kA_2⟩, where:
 - X_k, Y_k ∈ {E, Λ, Λ_D}; E is the identity, and the evaluations at b, b_± are put into ι_k;
 - ι_k is the matrix of the bilinear map (u, v) ↦ Σ_b ⟨i[u(b_∓), (R_b)v(b_±)], J(b)⟩ of the k-th term.
The pairs are (X_1, Y_1) = (Λ, E), (X_2, Y_2) = (E, Λ), (X_3, Y_3) = (Λ, Λ_D). Hence
 V = −½ Σ_{k=1}^{3} (X_k* ι_k Y_k + Y_k* ι_k* X_k).
This is a sum of six operator patterns. Each pattern is (left chain) ι (right chain), with left chain ∈ {E, Λ*, Λ_D*} and right chain ∈ {E, Λ, Λ_D}.

2.3 The chains [P]. G′ and C′ are self-adjoint, and R is an orthogonal projection, so R = R* and P = P*. Hence Λ* = DRG′ and Λ_D* = DRG′D*. Insert R = I − P and P = G′Q′*C′Q′G′:
 Λ = G′D* − G′G′Q′*C′Q′G′D*,
 Λ_D = DG′D* − DG′G′Q′*C′Q′G′D*,
 Λ* = DG′ − DG′Q′*C′Q′G′G′,
 Λ_D* = DG′D* − DG′Q′*C′Q′G′G′D*.
So each non-trivial chain is a sum of two products. The I-product has one non-local factor (G′). The P-product has four non-local factors (G′, G′, C′, G′, in this or the reversed order). SOURCES_WG 3.0 dropped the leading G′ of P; SOURCES_WG_VERIFY §5 corrected this to four.
 Expand every G′ by (I2) and C′ by (I3). Merge Q′* C′ Q′ into one block (local factors, (I7)). Then each product is an ordered product of walk blocks: 1 block (I-product) or 4 blocks (P-product). The chain E has 0 walk blocks.

2.4 Rule R-D (placement of derivatives) [P given (I7) and I-D]. A chain has an outer side (away from ι) and an inner side (next to ι).
 - The outer D of a left chain (Λ*, Λ_D*) is merged into the left neighbour of the V-term. The outer D* of a right chain (Λ, Λ_D) is merged into the right neighbour.
 - The inner D of Λ_D = D[G′ …]D* is merged into the first G′ block as DG′ (derivative in the first argument). The inner D* of Λ_D* = D[… G′]D* is merged into the last G′ block as G′D* (derivative in the second argument).
 So every walk block inside V carries at most one derivative, on its inner side. A neighbour block receives at most one derivative from each adjacent V-term, so at most one on each side. Balaban states the need for this step on p. 421 [V]: "One of the three derivatives there has to be applied either to an expression on the right, or on the left, of Δ′_π"; in (3.131) he applies D* to A_1.
 I-D (derivative in the second argument) [P, SOURCES_WG_VERIFY §4]. G_0, G′, and G are self-adjoint. So G_0 = Σ_ω (T^0_ω)*, and (T^0_ω)* is a walk term with the reversed domain list, adjoint factors, and the same locality. A derivative in the second argument of (T^0_ω)* is a derivative in the first argument of T^0_ω, which (I1) covers. A block with one derivative on each side is covered by the mixed L² block norm ‖h∇T∇*λ‖ of the (3.46) list in (I1)–(I2) (0.2, 0.5).

2.5 The ι-blocks [P given (I5), (I7)]. Fix the cover 𝒟. Assign each bond b to one domain X(b) that contains the O(1)-neighbourhood of b on which ι_k uses fields (b, b_±) and U (J(b), R_b). Put ι_{k,X} := Σ_{b: X(b) = X} (terms of ι_k at b). Then ι_k = Σ_X ι_{k,X}, and:
 (L1) the kernel of ι_{k,X} is supported in X × X, and it vanishes unless d(z, z′) ≤ c_b, with c_b = c_b(d);
 (L2) ι_{k,X} depends on U only through J(b) and R_b for b with X(b) = X, so only on X̃^5;
 (B1) at a fixed pair (z, z′) only O(1) bonds b contribute, and each has |Ĵ(b)| ≤ c_JMα_0 by (I5). Hence |ι̂_{k,X}(z, z′)| ≤ c_ιMα_0 m(z, z′)1[d(z, z′) ≤ c_b] ≤ c_ι e^{δc_b} Mα_0 m(z, z′) e^{−δ d(z, z′)}.
 So ι_{k,X} is a one-domain block (|ω| = 0) with constant b_ι := c_ι e^{δc_b} Mα_0. This is the only small factor of a V-term.

2.6 The walk expansion of V [P]. Expand each chain (2.3) and each ι_k (2.5). Then
 V = Σ_ν V_ν, V_ν = ± ½ Φ_1Φ_2···Φ_{n_ν},
an ordered product of blocks: the walk blocks of the left chain, one ι-block, the walk blocks of the right chain. The label ν records: the pattern (6 choices), the I- or P-product in each chain (at most 2 × 2 choices), the domain X of the ι-block, and the walk of each walk block. Counts:
 - patterns per V: at most 6 × 4 = 24;
 - blocks per V: n_ν ≤ N_V := 4 + 1 + 4 = 9, attained by pattern (Λ*, Λ_D) or (Λ_D*, Λ) with P in both chains.
 Each block has (L1)–(L2) (inputs (I2), (I3), and 2.5) and a (B1) bound with constant B_0′ := c_QB_0 (walk blocks) or b_ι (ι-block), rate δ, and step factor ρ inside walk blocks. Branching of V-labels is bounded: §4.3.
 Locality of V in the walk sense: V_ν depends on U only on the union of X̃^5 over its domains, and its kernel vanishes unless the domain list is a walk (§3(a)). The J-insertion is local: it sits in one domain X.

## 3. The concatenation lemma

3.0 Setting. A block Φ is an operator with a domain list ω_Φ = (X_0, …, X_n) (a walk), such that: its kernel is supported in X_0 × X_n; it depends on U only through U on X̃_0^5 ∪ … ∪ X̃_n^5; and
 |φ(z, z′)| ≤ w_Φ m(z, z′) e^{−δ d(ω_Φ, z, z′)}  (3.0.1)
for a weight w_Φ ≥ 0 and a rate δ > 0. For a walk block of (I1)–(I3), w_Φ = B_0′ρ^{|ω_Φ|}. For an ι-block, w_Φ = b_ι and |ω_Φ| = 0. A block with rate δ_Φ ≥ δ also satisfies (3.0.1) with rate δ, because e^{−δ_Φ d} ≤ e^{−δ d}. Convention: "z ∈ X" means Δ(z) ⊂ X; Balaban's cover 𝒟 is a union of blocks of the local scale, so each Δ(z) lies in the domains that contain it [I, as in A1_WALK §4.1].

3.1 Lemma C (concatenation) [P]. Let Φ_1, …, Φ_N be blocks with domain lists ω_k = (X^k_0, …, X^k_{n_k}), weights w_k, and a common rate δ. Let T := Φ_1Φ_2···Φ_N and let ω := ω_1 ∘ ω_2 ∘ … ∘ ω_N be the concatenated list. Fix θ ∈ (0, 1). Then:
 (a) T = 0 unless X^k_{n_k} ∩ X^{k+1}_0 ≠ ∅ for k = 1, …, N − 1. If T ≠ 0, ω is a walk, with |ω| = Σ_k |ω_k| + (N − 1).
 (b) T depends on U only through U on ∪ X̃^5 over all domains of ω. Its kernel is supported in X^1_0 × X^N_{n_N}.
 (c) With z_0 := y and z_N := y′,
  Σ_{z_1, …, z_{N−1}} Π_{k=1}^{N−1} μ(z_k) Π_{k=1}^{N} |φ_k(z_{k−1}, z_k)| ≤ (Π_k w_k) c_1(θδ)^{N−1} m(y, y′) e^{−(1−θ)δ d(ω, y, y′)}.
  In particular |T(y, y′)| is bounded by the right side.
 (d) The same bound holds for the kernel of T with one derivative in the first (last) argument, if Φ_1 (Φ_N) satisfies (3.0.1) in that derivative norm.

3.2 Proof of (a). By the composition rule (0.2), T(y, y′) = Σ_{z_1, …, z_{N−1}} Π μ(z_k) Π φ_k(z_{k−1}, z_k). The factor φ_k(z_{k−1}, z_k) vanishes unless z_{k−1} ∈ X^k_0 and z_k ∈ X^k_{n_k}. The factor φ_{k+1}(z_k, z_{k+1}) vanishes unless z_k ∈ X^{k+1}_0. So a non-zero summand needs z_k ∈ X^k_{n_k} ∩ X^{k+1}_0 for every k ≤ N − 1. Then Δ(z_k) ⊂ X^k_{n_k} ∩ X^{k+1}_0, so the intersection is not empty. Inside each ω_k consecutive domains intersect, because ω_k is a walk. At each junction the last domain of ω_k meets the first domain of ω_{k+1}. So ω is a walk. Its number of domains is Σ_k (|ω_k| + 1), so |ω| = Σ_k |ω_k| + N − 1. ∎

3.3 Proof of (b). T is a product of the factors of all blocks. Each factor depends on U only through U on X̃^5 of its own domain (L2). The support statement follows from the supports of φ_1 in its first variable and of φ_N in its last variable. ∎

3.4 Proof of (c). Only summands with z_k ∈ X^k_{n_k} ∩ X^{k+1}_0 (k = 1, …, N − 1) are non-zero (3.2). Fix such points. Insert (3.0.1) for each factor.
 Step 1 (weights). The weights telescope. By induction on k, Π_{i=1}^{k} μ(z_i) Π_{i=1}^{k+1} m(z_{i−1}, z_i) = m(y, z_{k+1}). The case k = 1 is μ(z_1)m(y, z_1)m(z_1, z_2) = m(y, z_2), by the definition of m. The step uses the same identity with y in place of z_{k−1}. So the product of all m and μ factors is m(y, y′).
 Step 2 (first lower bound). Claim: Σ_{k=1}^{N} d(ω_k, z_{k−1}, z_k) ≥ d(ω, y, y′). Proof. Fix η′ > 0. For each k choose points y^k_i ∈ X^k_i, i = 1, …, n_k, whose path z_{k−1} → y^k_1 → … → y^k_{n_k} → z_k has length at most d(ω_k, z_{k−1}, z_k) + η′. Now build a point sequence for ω. The domains of ω after the first are X^1_1, …, X^1_{n_1}, X^2_0, X^2_1, …, X^N_{n_N}. Assign y^k_i to X^k_i (i ≥ 1) and z_{k−1} to X^k_0 (k ≥ 2). This is admissible, because z_{k−1} ∈ X^k_0. The resulting path from y to y′ is the concatenation of the N block paths: the step from y^k_{n_k} to z_k ends block k's path, and the step from z_k to y^{k+1}_1 starts block (k+1)'s path. If n_k = 0, block k's path is the single step z_{k−1} → z_k, which is also the step of the concatenated path. So its length is at most Σ_k d(ω_k, z_{k−1}, z_k) + Nη′. By the definition (3.93) of d(ω, y, y′) as an infimum, d(ω, y, y′) ≤ Σ_k d(ω_k, z_{k−1}, z_k) + Nη′. Let η′ → 0. ∎ The point z_k serves two domains (the last of ω_k and the first of ω_{k+1}); this is why no step is lost at a junction.
 Step 3 (second lower bound). d(ω_k, z_{k−1}, z_k) ≥ d(z_{k−1}, z_k) for each k, by the triangle inequality along the block path.
 Step 4 (θ-split). Write δ = (1 − θ)δ + θδ. Apply Step 2 to the first part and Step 3 to the second part:
  e^{−δ Σ_k d(ω_k, z_{k−1}, z_k)} ≤ e^{−(1−θ)δ d(ω, y, y′)} Π_{k=1}^{N} e^{−θδ d(z_{k−1}, z_k)}.
 The first factor does not depend on z_1, …, z_{N−1}.
 Step 5 (sums at the junctions, Lemma 2.1). Sum over z_{N−1} first. Use e^{−θδ d(z_{N−1}, y′)} ≤ 1 and (I4):
  Σ_{z_{N−1}} e^{−θδ d(z_{N−2}, z_{N−1})} ≤ c_1(θδ).
 Then sum over z_{N−2} with the factor e^{−θδ d(z_{N−3}, z_{N−2})}, and continue down to z_1 with the factor e^{−θδ d(y, z_1)}. Each of the N − 1 sums gives at most c_1(θδ). Extending each sum from X^k_{n_k} ∩ X^{k+1}_0 to all of 𝔅 only increases it.
 Collect Steps 1–5: the bound (c). ∎

3.5 Proof of (d). The derivative in the first argument of T is the derivative in the first argument of φ_1, by the composition rule. Use the derivative-norm form of (3.0.1) for Φ_1 in Step 1 and change nothing else. The last argument is the same with Φ_N. ∎

3.6 Remarks [P]. (i) The rate loss is the factor (1 − θ), once for the whole product. It is not a loss per step and not a loss per block. (ii) Balaban uses the same split inside a walk (p. 410 [V]: "We use part of the exponentials to control the sum over y_i's, let us say the exponentials with ½δ_0 instead of δ_0") and at the junctions of (3.138) (p. 423 [V]: the first-factor estimate ends in e^{−(1−α)δ_0 d(y,y′)}). (iii) The (N − 1) junction steps of ω carry no factor ρ. They carry only c_1(θδ) and the block weights. This is the source of WG-1 (§4.7).

## 4. Theorem WG-G: the walk expansion of G

4.1 Labels and terms [P]. By 1.1, G = Σ_{n≥0} G_0(−VG_0)^n. Insert (I1) for every G_0 and 2.6 for every V. A label λ consists of: n ≥ 0; walks ω_0, …, ω_n of (I1); V-labels ν_1, …, ν_n (2.6). The term is
 T_λ := T^0_{ω_0}(−V_{ν_1})T^0_{ω_1}(−V_{ν_2})···(−V_{ν_n})T^0_{ω_n},
with the derivatives of each V_{ν_i} placed by rule R-D (2.4). T_λ is a flat ordered product of N(λ) = (n + 1) + Σ_i n_{ν_i} blocks. Its domain list ω(λ) is the concatenation of the domain lists of these blocks.

4.2 Locality (L1)–(L2) [P]. Every factor of T_λ is a factor of (I1), (I2), or (I3) (with merged local factors, (I7)), or an ι-block (2.5). Each such factor has (L1)–(L2): (I1)–(I3) by Thms 3.10, 3.7, 3.9 [R], merged factors by (I7) [I], ι-blocks by 2.5 [P]. By Lemma C(a), T_λ = 0 unless ω(λ) is a walk. By Lemma C(b), T_λ depends on U only on the union of X̃^5 over the domains of ω(λ). We drop the labels with T_λ = 0.

4.3 Bound per term (B1) [P]. Apply Lemma C to the flat product, with the common rate δ = ½δ_0 and the fixed θ; Lemma 2.1 is used at κ = θ½δ_0, under (2.59) (I4). All weights are taken with B_0′ ≥ 1 and c_1 := c_1(θδ) ≥ 1 (enlarge them if needed).
 Weights. The first block T^0_{ω_0} has weight B_0′ρ^{|ω_0|}. The i-th V-insertion brings: its walk blocks (n_{ν_i} − 1 of them, weight B_0′ρ^{|·|} each), its ι-block (weight b_ι = c_ιe^{δc_b}Mα_0), the factor ½ ≤ 1, and the following block T^0_{ω_i} (weight B_0′ρ^{|ω_i|}).
 Junctions. The number of junctions is N(λ) − 1 = n + Σ_i n_{ν_i} = Σ_i (n_{ν_i} + 1). So the i-th V-insertion brings n_{ν_i} + 1 junctions, each with a factor c_1.
 Collect the factors per V-insertion:
  W_i := B_0′^{n_{ν_i}} b_ι c_1^{n_{ν_i}+1} ≤ (B_0′c_1)^{N_V+1} c_ιe^{δc_b} Mα_0 =: ε_V, i.e. K_V := (B_0′c_1)^{10}c_ιe^{δc_b}.
 Lemma C(c) gives
  |T_λ(y, y′)| ≤ B_0′ ρ^{Σ_k |ω_k|} Π_{i=1}^{n} W_i · m(y, y′) e^{−(1−θ)δ d(ω(λ), y, y′)},
 where Σ_k |ω_k| runs over all walk blocks.
 Steps. By Lemma C(a), |ω(λ)| = Σ_k |ω_k| + Σ_i (n_{ν_i} + 1). The first sum counts steps inside input blocks; each has a factor ρ. The second sum counts junction steps; they have no ρ. Assume ε_V ≤ 1. Since n_{ν_i} + 1 ≤ N_V + 1 = 10, W_i ≤ ε_V ≤ (ε_V^{1/10})^{n_{ν_i}+1}. Put ρ_* := max{ρ, ε_V^{1/10}}. Then
  |T_λ(y, y′)| ≤ B_0′ ρ_*^{|ω(λ)|} m(y, y′) e^{−(1−θ)½δ_0 d(ω(λ), y, y′)}.  (4.3.1)
 This is (B1) with constants (B_0′, ρ_*, (1 − θ)½δ_0). The same bound holds with one derivative on either side of T_λ: the derivative falls on the first or the last G_0 block (Lemma C(d)). That block may already carry a derivative on its inner side from R-D; then the mixed L² block norm of the (3.46) list is used (I1), I-D (2.4). Two derivatives on the same side do not occur; this matches Balaban's exception for the Laplacian norm in (3.42) (p. 422 [V]).

4.4 Branching (B2) [P]. We encode a label by its domain sequence with tags. Each factor of T_λ gets a tag: "continue the current block" or "start a block of type t" with t ∈ {G_0-walk, G′-walk, merged C′-walk, ι}, and at the start of a V-insertion one of its ≤ 24 patterns (2.6). The derivative placement and the sign are fixed by the pattern. The label λ is recovered from the tagged sequence: the tags give the block boundaries and types; the pattern gives the number of walk blocks in each chain of the V-insertion; the factors (α, X) inside a block give its input walk. So the new expansion is a walk expansion over the tagged factor alphabet.
 Given the domain X′ of the previous factor, the next factor is chosen as: a tag (at most 1 + 4·24 = 97 values) and a pair (α, X) with X ∩ X′ ≠ ∅ (at most C_𝒟 values, by (B2) of the inputs; an ι-domain X is a domain of the same kind [I]). So (B2) holds with C′_𝒟 := 97C_𝒟. An over-count (a label that gives T_λ = 0, or a tag sequence that is not a label) only increases the bound.

4.5 Convergence [P]. The first factor is chosen among at most C_𝒟 pairs (α, X) with y ∈ X. With 4.4 the number of labels with |ω(λ)| = s is at most C_𝒟(C′_𝒟)^s. With (4.3.1) and d(ω, y, y′) ≥ d(y, y′):
 Σ_λ |T_λ(y, y′)| ≤ C_𝒟B_0′ m(y, y′) e^{−(1−θ)½δ_0 d(y, y′)} Σ_{s≥0}(C′_𝒟ρ_*)^s ≤ 2C_𝒟B_0′ m(y, y′) e^{−(1−θ)½δ_0 d(y, y′)},
 provided C′_𝒟ρ_* ≤ ½. We require C′_𝒟ρ_* ≤ ¼ to match (B2) in 0.4. This holds if both:
  (i) C′_𝒟c_0M_1^{−1} ≤ ¼, i.e. M_1 ≥ M_* := 4C′_𝒟c_0;
  (ii) ε_V^{1/10} ≤ (4C′_𝒟)^{−1}, i.e. Mα_0 ≤ a_* := K_V^{−1}(4C′_𝒟)^{−10}. This also gives ε_V ≤ 1, used in 4.3.
 The bound of Lemma C(c) is for the sum over junction points of absolute values, so the absolute summability of 1.4 holds. Lemma N and 1.4 then give G = Σ_λ T_λ. Condition (ii) is the Neumann condition in walk form.

4.6 Theorem WG-G [P given (I1)–(I5), (I7), I-D, the M_1-cover (0.3) [I/R]]. For M_1 ≥ M_*, Mα_0 ≤ a_*, RM with (2.59) at rate θ½δ_0, and U with (3.35)–(3.36), G = Σ_λ T_λ is a walk expansion on the M_1-cover in the sense of 0.4, with constants (B_0′, ρ_*, (1 − θ)½δ_0), C′_𝒟ρ_* ≤ ¼, and the bound also for one derivative on either side. ∎

4.7 WG-1: the literal per-step form [P]. On the M_1-cover the per-step factor of (I1)–(I3) is c_0M_1^{−1} = O(M_1^{−1/2})·M_1^{−1/2} (CMP 116 (1.7); (3.108) with M_1 for the cube size, 0.3). In (4.3.1) the 10 junction steps of a V-insertion carry ε_V^{1/10} in place of ρ. So ρ_* = ρ = c_0M_1^{−1} holds if and only if ε_V^{1/10} ≤ c_0M_1^{−1}, i.e.
 K_V Mα_0 ≤ c_0^{10}M_1^{−10}, i.e. α_0 ≤ c′M^{−1}M_1^{−10}, c′ := c_0^{10}K_V^{−1}.
 The exponent count is (N_V + 1) = 10 junction steps per V-insertion, each paid in M_1, and one more power M^{−1} from the explicit M in Mα_0. In CMP 99 notation (M_1 = M) this is α_0 ≤ c′M^{−11}. (If the ι-block is merged into a neighbour, there are 9 junction steps and the condition is α_0 ≤ c′M^{−1}M_1^{−9}; SOURCES_WG_VERIFY §5.) SOURCES_WG 2.9 (M^{−3}) and 3.0 (M^{−8}) undercounted the P-chain and are superseded.
 Status of WG-1. Under the project convention Mα_0 ≤ a_0 alone, ρ_* = max{c_0M_1^{−1}, (K_Va_0)^{1/10}} does not tend to 0 as M_1 → ∞. The counting still converges (4.5), but the free factor M_1^{−½|ω|} of (1.7) is not available at V-junctions. A consumer that uses that free factor must add α_0 ≤ c′M^{−1}M_1^{−10}, or use the exponential factor in its place. The condition is admissible in Balaban's order of constants: M_1 and M are fixed first (Thm 3.10), α_0 last (Thm 3.12: "for α_0 sufficiently small"; p. 422 [V]: "each operator Δ′_π provides the small factor α_0, which we can choose to be arbitrarily small").

## 5. Theorem WG-G1: the tree expansion of G_1

5.1 The identity [V pp. 421–423; P for the algebra]. G_1 is defined by the quadratic form (3.128):
 ⟨A, G_1^{−1}A⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩ − 2⟨HC^{(2)}(A − DG′RD*A), J⟩ + ‖RD*A‖² + a‖QA‖².
(3.134) defines Δ^{(2)} by ⟨A, Δ^{(2)}A⟩ = 2⟨HC^{(2)}(A), J⟩. Put Π := I − DG′RD*. Then the second term is −⟨ΠA, Δ^{(2)}ΠA⟩ = −⟨A, Δ_π^{(2)}A⟩ with
 Δ_π^{(2)} := Π*Δ^{(2)}Π = (I − DRG′D*)Δ^{(2)}(I − DG′RD*).
Here Π* = I − DRG′D*, because G′ = G′* and R = R*. Expanding the product gives four terms:
 Δ_π^{(2)} = Δ^{(2)} − DRG′D*Δ^{(2)} − Δ^{(2)}DG′RD* + DRG′D*Δ^{(2)}DG′RD*,
which is (3.135) term by term [V p. 422]. The first term of (3.128) is ⟨A, Δ_πA⟩ by (3.119), and ‖RD*A‖² = ⟨A, DRD*A⟩ because R is an orthogonal projection. So
 G_1^{−1} = Δ_π + DRD* + Q*aQ − Δ_π^{(2)} = G^{−1} − Δ_π^{(2)}.
Lemma N (1.2) holds with (G_0, Δ′_π) replaced by (G, Δ_π^{(2)}); the proof is the same computation, (G^{−1} − Δ_π^{(2)})Σ_{n≤N} G(Δ_π^{(2)}G)^n = I − (Δ_π^{(2)}G)^{N+1}. So, once the series converges,
 G_1 = Σ_{n≥0} G(Δ_π^{(2)}G)^n.
Balaban prints the series (3.138), G_1 = Σ_n G_0((Δ′_π + Δ_π^{(2)})G_0)^n (p. 423 [V]). We do not use (3.138) and do not prove its convergence. We use the series in G, because it takes Theorem WG-G as its input block.

5.2 The structure of Δ^{(2)} [V (3.136); I for locality]. By (3.136),
 Δ^{(2)}A = Σ_j Σ_{b∈Λ_j} (L^jη)^{d+1} tr[(δ/δA)C_j^{(2)}(A, b) · (H*J)(b)].
C_j^{(2)}(A, b) is the second-order term of the block average Q_j(ηA) at the block bond b (p. 421 [V]). It is quadratic in A, so (δ/δA)C_j^{(2)}(A, b) is linear in A. Write K_b for this linear operator, contracted with the matrix w(b) := (H*J)(b). Then Δ^{(2)} = Σ_b w(b)·K_b.
 (i) K_b is local [I, C^{(2)}-locality]: its kernel is supported on the bonds of a few j-blocks around b, within distance c_b of b. This matches (3.137) [V]: "the supremum |A| is taken over several j-blocks surrounding Δ(y)". In rescaled units |K̂_b| ≤ c_κ.
 (ii) w is not local. H = GQ*(QGQ*)^{−1} (3.126) [V]. G and (QGQ*)^{−1} are self-adjoint, so H* = (QGQ*)^{−1}QG and
  w(b) = Σ_{b′} H*(b, b′)J(b′) = Σ_{b′} [(QGQ*)^{−1}QG](b, b′) J(b′).
 So each term of Δ^{(2)} is a local factor K_b on the main line, times the value at b of a third chain that runs from b to the J-bond b′. This is Balaban's description on p. 427 [V]: "three chains of operators of the type (3.107) described in Theorem 3.10 meet in a localization domain determined by the function C^{(2)}(A). One is connected with an expansion of an operator on the left-hand side of Δ^{(2)}, one with an operator on the right-hand side, and one is connected with the expansion of H."

5.3 No loop [P; V for the order]. The branch uses G and (QGQ*)^{−1}, not G_1. The chain of constructions is (SOURCES_A1_KERNEL §1):
 G_0 (I1) → G (Theorem WG-G) → (QGQ*)^{−1} (A1-W with input WG-G) → H = GQ*(QGQ*)^{−1} → Δ^{(2)} → Δ_π^{(2)} → G_1.
Balaban's order is the same: on p. 422 he derives (3.133) for H from (3.132) for (QGQ*)^{−1} before he treats G_1, and p. 423 uses (3.132) "with G_1 instead of G" only afterwards, for H_1 [V]. On p. 426 he introduces Thm 3.13 with "assuming (3.132)" [V, SOURCES_WG_VERIFY §3]: Balaban himself marks the (QGQ*)^{−1} bound as an input. Here A1-W supplies it.

5.4 The input A1-W with G from WG-G [P given (I6)]. A1-W (A1_WALK_FULL; SOURCES_A1_WALK §4–§7) takes a walk expansion of G with step factor c_G/M_1 and rate ½δ_0. Its proof uses the step factor only through the smallness C_𝒟c_1ρ_G ≤ ¼ (SOURCES_A1_WALK §4.2(ii), §5.5, §6.2). With Theorem WG-G as input, replace c_G/M_1 by ρ_* and ½δ_0 by (1 − θ)½δ_0. Then:
 - the smallness holds if C_𝒟c_1ρ_* ≤ ¼; we enlarge M_* and shrink a_* to get it (M_1 ≥ 4C_𝒟c_1c_0 and K_VMα_0 ≤ (4C_𝒟c_1)^{−10});
 - domain size [P given the M_1-cover, 0.3]: A1-W 4.1 needs c_XM_1 ≥ diam X̃^5 for every domain X of its (W_G) input, with c_X = c(d). The domains of WG-G terms are domains of (I1)–(I3) and ι-domains (2.5), all from the cover 𝒟. Each is a connected union of at most c(d) M_1-cubes, and X̃^5 adds a bounded number of layers of M_1-cubes. So diam X̃^5 ≤ c_XM_1 with c_X = c(d), independent of M/M_1, and the C_𝒟 of A1-W does not grow with M/M_1. (On Balaban's CMP 99 M-cover, c_X would grow like M/M_1. This is why WG-G is stated on the M_1-cover.);
 - the step factor of the (QGQ*)^{−1} expansion is ρ_W := max{K_W/M_1, c_Wρ_*};
 - the rate is δ_W = ½ε, where ε is the local Combes–Thomas rate of A1-W computed from δ_G := (1 − θ)½δ_0 − (d/2 + 1)θ_S (θ_S the rescaling cost of A1_KERNEL §5).
 Since ε ≤ ½δ_G < ½δ_0, the common rate δ_1 := ½ε satisfies δ_1 ≤ the rates of all other blocks: (1 − θ)½δ_0 (WG-G terms), ½δ_0 (G′ and C′ walk blocks). By 3.0 every block also satisfies its bound with rate δ_1.

5.5 The branch bound (Lemma B) [P given (I4)–(I6), C0]. A branch label β = (β_1, β_2) consists of a walk term W_{β_1} of (QGQ*)^{−1} (A1-W; with Q merged, (I7)) and a walk term T_{β_2} of G (WG-G). Its domain list is β := β_1 ∘ β_2. Its value at b is
 w_β(b) := Σ_{u, b′} μ(u)μ(b′) Ŵ_{β_1}(b, u) T̂_{β_2}(u, b′) Ĵ(b′)
in rescaled units. Define the open path distance d_o(β, b) := inf {d(b, v_1) + d(v_1, v_2) + …}, inf over one point v_i in each domain of β after the first, with no fixed end point. Claim:
 |w_β(b)| ≤ c_L B_Wρ_W^{|β_1|} B_0′ρ_*^{|β_2|} Σ(½θδ_1)² c_JMα_0 e^{−(1−θ)δ_1 d_o(β, b)},  c_L = L^{O(1)}.  (5.5.1)
Here Σ(κ) := sup_y Σ_{y′}(μ(y′)/μ(y))^{1/2} e^{−κ d(y, y′)} is the Schur constant of A1_KERNEL §5; it is finite and uniform in k, η, {Ω_j} at κ = ½θδ_1, under (2.59) at that rate and θ_S small against κ [R Lemma 2.1, as in A1_KERNEL §5; (I4)].
 C0 for the vector, written out [P given (I5), (I7), the scale powers below, and the p. 398 rule]. Let s(y) := L^{j(y)}η be the local scale at y ∈ Λ_j and S the multiplication by s². Scale powers in units of S [V]: G and G′ carry S^{+1} ((3.108), (3.90)); (QGQ*)^{−1} carries S^{−1} ((3.132)); J carries S^{−3/2} ((3.36), p. 419, (I5)); Q is local with power 0 (I7). Define the rescaled operators by G = S^{1/2}ĜS^{1/2}, (QGQ*)^{−1} = S^{−1/2}ŴS^{−1/2}, and Ĵ := S^{3/2}J, so |Ĵ| ≤ c_JMα_0. Then
  H*J = (QGQ*)^{−1}QGJ = S^{−1/2}Ŵ (S^{−1/2}QS^{1/2}) Ĝ S^{1/2}S^{−3/2} Ĵ = S^{−1/2}·[Ŵ Q̂ Ĝ]·S^{−1}Ĵ.
 Inside the branch the S-powers cancel: between Ŵ and Ĝ the pair S^{−1/2}·S^{1/2} sits around the local Q, and s changes by at most a factor L across O(1) blocks, so Q̂ := S^{−1/2}QS^{1/2} is a local factor with constant L^{O(1)}c_Q, merged into Ŵ by (I7). At the two ends a leftover remains: S(b)^{−1/2} at the left end and S(b′)^{−1} at the right end. Balaban's p. 398 rule [V: "the choice of powers L^jη is conventional … we may replace (L^jη)^α by (L^jη)^β(L^{j′}η)^γ with β + γ = α", CMP 96 Lemma 2.1 setting] moves the right-end power to b: (s(b)/s(b′))^{p} ≤ L^{|p|}e^{|p|θ_S d(b, b′)} with θ_S = log L/(RM). With p = 2 this gives S(b′)^{−1} ≤ L²S(b)^{−1}e^{2θ_S d(b, b′)}. So w_β(b) = S(b)^{−3/2}ŵ_β(b), where ŵ_β(b) is the double sum written above times the factor L²e^{2θ_S d(b, b′)} inside the sum, and |w_β(b)| ≤ C·Mα_0·(L^jη)^{−3} after summing β. That is Balaban's printed (3.136) bound; the arithmetic is p. 422's derivation of (3.136) from (3.36) and (3.133), done per walk term. The norm of the vector value w(b) on 𝔅 is its (3.46) block norm |w(b)|μ(b)^{1/2}; the μ-weights are those of the Schur sum below.
 Cost. Use d(b, b′) ≤ d(b, u) + d(u, b′). The factor e^{2θ_S d(b, b′)} lowers the θ-part of the rate from θδ_1 to θδ_1 − 2θ_S. If θ_S ≤ ¼θδ_1, i.e. RM ≥ 8 log L/(θδ_1) = 16 log L/(θε), the θ-part keeps rate ≥ ½θδ_1. The (1 − θ)-part is not touched. So the costs of C0 are the constant c_L = L^{O(1)} (from Q̂ and the p. 398 rule) and the O(θ_S) loss in the θ-part of the rate, inside the branch. The condition RM ≥ C/(θε) is admissible (0.6).
 Proof. Non-zero summands need u ∈ (last domain of β_1) ∩ (first domain of β_2) and b′ ∈ last domain of β_2 (support, as in 3.2). Insert the (B1) bounds at rate δ_1. The exponent is δ_1[d(β_1, b, u) + d(β_2, u, b′)]. As in Step 2 of 3.4, the two block paths join at u into a path from b through all domains of β, so the bracket is ≥ d_o(β, b). As in Step 3, the bracket is ≥ d(b, u) + d(u, b′). Split with (1 − θ) and θ. The factor e^{−(1−θ)δ_1 d_o(β, b)} does not depend on u, b′. What remains is a double sum over u and b′ of μ-weights, m-weights, the end factor L²e^{2θ_S(d(b, u) + d(u, b′))} (C0 above), e^{−θδ_1 d(b, u)}e^{−θδ_1 d(u, b′)}, and |Ĵ(b′)| ≤ c_JMα_0. With θ_S ≤ ¼θδ_1 the exponentials are ≤ e^{−½θδ_1 d(b, u)}e^{−½θδ_1 d(u, b′)}. Sum b′ first, then u. Each sum is a Lemma 2.1 sum with the scale weights (μ(·)/μ(·))^{±1/2} of the C0 normalization; each is bounded by the Schur constant Σ(½θδ_1) of A1_KERNEL §5 [R Lemma 2.1 under (2.59)]. ∎
 Consistency check against the page [V (3.136)]: summing (5.5.1) over β with the counting of 5.8 gives |ŵ(b)| ≤ O(1)Mα_0, which in Balaban's units is his printed |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3}. With |K̂_b| ≤ c_κ this reproduces (3.137), |(Δ^{(2)}A)(b)| ≤ O(1)Mα_0(L^jη)^{−2}|A|.

5.6 Tree labels and terms [P]. Insert into G_1 = Σ_n G(Δ_π^{(2)}G)^n:
 - for each G: a walk term T_λ of Theorem WG-G, used as one block (domain list ω(λ), weight B_0′ρ_*^{|ω(λ)|}, rate δ_1);
 - for each Δ_π^{(2)}: a left chain in {I, −Λ_D*} and a right chain in {I, −Λ_D} ((3.135); 9 chain patterns after the I/P split of 2.3), with walk blocks of (I2)–(I3) as in 2.3 and derivatives placed by rule R-D (2.4);
 - for Δ^{(2)}: Δ^{(2)} = Σ_X Σ_β κ_{X,β}, κ_{X,β} := Σ_{b: X(b) = X} w_β(b)K_b, with X(b) as in 2.5.
 κ_{X,β} is a main-line block with one domain X: its kernel is supported in X × X and vanishes unless d(z, z′) ≤ c_b; it depends on U on X̃^5 (through K_b, R_b, and C^{(2)}) and on the domains of β (through w_β). By 5.2(i) and (5.5.1), |κ̂_{X,β}(z, z′)| ≤ c_κ e^{δ_1c_b} sup_{b: X(b) = X, d(b, z) ≤ c_b} |w_β(b)| m(z, z′) e^{−δ_1 d(z, z′)}.
 A tree label τ consists of: n ≥ 0; n + 1 WG-G labels; for each of the n insertions, a chain pattern, the chain walk blocks, the domain X, and a branch label β. The main line of τ is the concatenated domain list of its main-line blocks. At the κ-domain X of each insertion one branch, the list β, springs off. The domain set of τ is the main line together with all branches. |τ| := (number of domains of τ) − 1. This is Balaban's shape [V p. 427]: "The tree graphs involved have a very simple structure; there is a main line and at some vertices additional lines spring off." A branch has no sub-branches: it contains only walk terms of (QGQ*)^{−1} and of G, never G_1 or Δ^{(2)} (5.3).
 Locality (L1)–(L2) of every factor follows from 4.2, (I6), 2.5, and 5.2(i). The U-dependence of T_τ is on the union of X̃^5 over all domains of τ. The bond b′ of J(b′) lies in the last domain of its branch (support of T_{β_2}), so J adds no domain.

5.7 Tree distance and the bound per term [P]. Define d(τ, y, y′) := inf of Σ_{edges} d(u, v) over finite connected graphs whose vertex set contains y, y′, and at least one point of each domain of τ. This is Balaban's "length of a shortest tree intersecting all domains X_i" (p. 427 [V]); a shortest connected graph is a tree. A tree contains a path from y to y′, so d(τ, y, y′) ≥ d(y, y′).
 Bound. Apply Lemma C to the main line, with rate δ_1 and the fixed θ; here c_1 := c_1(θδ_1), and Lemma 2.1 is used under (2.59) at that rate (I4). In Step 2 of 3.4 the main-line points form an explicit path P_main from y to y′ through all main-line domains. At each insertion the κ-block has junction points z (in) and z′ (out) in X, and K_b vanishes unless d(z, b) ≤ c_b. The branch bound (5.5.1) comes from an explicit path P_β from b through all domains of β (proof of 5.5). The union of P_main, the edges (z, b), and the paths P_β is a connected graph that meets every domain of τ and contains y, y′. So
  (length of P_main) + Σ_branches (length of P_β) ≥ d(τ, y, y′) − c_b·n.
 Hence the product of the (1 − θ)-parts of the exponentials is ≤ e^{(1−θ)δ_1c_b n} e^{−(1−θ)δ_1 d(τ, y, y′)}. The factor e^{δ_1c_b} per insertion is a constant and joins the insertion weight.
 Weights per insertion. At most 8 chain walk blocks (B_0′ each), the κ-block (c_κe^{δ_1c_b}), the branch weight from (5.5.1) (c_LB_WB_0′Σ(½θδ_1)²c_JMα_0), the edge factor e^{δ_1c_b}, the following WG-G block (B_0′), and at most N_2 + 1 = 10 main-line junctions (c_1 each), where N_2 := 4 + 1 + 4 = 9 is the block count of the main-line part of Δ_π^{(2)}. So the weight is at most
  ε_2 := K_2Mα_0, K_2 := (B_0′c_1)^{10}c_κe^{2δ_1c_b}c_LB_WB_0′Σ(½θδ_1)²c_J.
 Steps without a small factor per insertion: the 10 main-line junction steps, the step from X to the first domain of β, and the junction step inside β (from β_1 to β_2). So k_2 := 12. All other steps of τ lie inside a walk block and carry ρ, ρ_*, or ρ_W. As in 4.3, if ε_2 ≤ 1, then ε_2 ≤ (ε_2^{1/12})^{k} for every k ≤ 12. With ρ_{**} := max{ρ_*, ρ_W, ε_2^{1/12}}:
  |T_τ(y, y′)| ≤ B_0′ ρ_{**}^{|τ|} m(y, y′) e^{−(1−θ)½ε d(τ, y, y′)}.  (5.7.1)
 This is (B1) in tree form, with rate (1 − θ)δ_1 = (1 − θ)½ε.

5.8 Counting trees (B2 in tree form) [P]. Encode a tree label by its tagged factor sequence in depth-first order: the main line from y; at a κ-factor, the whole branch β (A1-W factors, then the factors of the WG-G term T_{β_2}); then a tag "resume main line", and the main line continues from the κ-domain X. Each factor carries a tag from a fixed finite set (the 97 WG-G tags of 4.4 for main-line G-terms and for branch G-terms, the G′ and C′ walk-block tags, the κ-tag with one of 9 chain patterns, the finitely many A1-W factor types, "start branch", "resume main"). Let T_2 be its size; T_2 depends only on d and the factor types of the inputs. The next pair (α, X) meets the previous domain in depth-first order (after "resume", the κ-domain): at most C_𝒟 choices. The decoder recovers τ: the tags give block types, chain patterns, and where each branch starts and ends. So the number of tree labels with |τ| = s is at most C_𝒟(C″_𝒟)^s, C″_𝒟 := T_2C_𝒟. Over-counting only increases the bound.

5.9 Convergence [P]. By 5.7–5.8,
 Σ_τ |T_τ(y, y′)| ≤ C_𝒟B_0′ m(y, y′) e^{−(1−θ)½ε d(y, y′)} Σ_s (C″_𝒟ρ_{**})^s ≤ 2C_𝒟B_0′ m(y, y′) e^{−(1−θ)½ε d(y, y′)},
if C″_𝒟ρ_{**} ≤ ¼. This holds if:
 (i) M_1 ≥ M_*′ := max{M_*, 4C_𝒟c_1c_0, 4C″_𝒟c_0max{1, c_W}} and Mα_0 ≤ a_*′, so that C″_𝒟ρ_* ≤ ¼ and C″_𝒟c_Wρ_* ≤ ¼;
 (ii) M_1 ≥ M_W := max{(A1-W threshold), 4C″_𝒟K_W};
 (iii) ε_2 ≤ (4C″_𝒟)^{−12}, i.e. Mα_0 ≤ a_{**} := min{a_*′, a_0, K_2^{−1}(4C″_𝒟)^{−12}}.
 Here a_*′ := min{a_*, K_V^{−1}(4C_𝒟c_1)^{−10}, K_V^{−1}(4C″_𝒟max{1, c_W})^{−10}}: the first two entries are a_* after the shrinking of 5.4, and the third gives ε_V^{1/10} ≤ (4C″_𝒟max{1, c_W})^{−1}, which with (i) gives C″_𝒟ρ_* ≤ ¼ and C″_𝒟c_Wρ_* ≤ ¼. Also RM ≥ C(d, L)/(θε), for (2.59) at rates θδ_1 and ½θδ_1 and θ_S ≤ ¼θδ_1 (5.5).
 The constants B_W, K_W, c_W, ε of A1-W are uniform for all Mα_0 ≤ a_0. So choosing a_{**} ≤ a_0 after them does not change them: there is no loop. Absolute summability holds as in 4.5, and Lemma N (5.1) gives G_1 = Σ_τ T_τ.
 These are the conditions of 0.7(G1).

5.10 Theorem WG-G1 [P given Theorem WG-G, (I6), C^{(2)}-locality [I], C0]. Under (i)–(iii), G_1 = Σ_τ T_τ is a tree expansion: (L1)–(L2) for every factor; (B1) in the form (5.7.1) with the tree distance; (B2) with C″_𝒟ρ_{**} ≤ ¼; rate (1 − θ)½ε. The derivative norms hold as in 4.3: the first and last main-line blocks are WG-G terms. ∎
 Remarks. (a) The rate of G_1 is set by A1-W (½ε), not by δ_0. The branch carries the decay of (QGQ*)^{−1}. Balaban's (3.132) has its own rate δ_1 with the same role (p. 422 [V]: (3.133) for H decays as e^{−½δ_1 d}). (b) Per-step form. The step factor of every expansion here is 1/(walk cube size) = 1/M_1 in CMP 116 notation (0.3): c_0/M_1 for G_0, G′, C′, and G; K_W/M_1 for (QGQ*)^{−1}; and the same for G_1. The CMP 116 (1.7) form ρ_{**} ≤ cM_1^{−1} for G_1 needs WG-1 (α_0 ≤ c′M^{−1}M_1^{−10}) and ε_2^{1/12} ≤ cM_1^{−1}, i.e. α_0 ≤ c″M^{−1}M_1^{−12}, c″ := c^{12}K_2^{−1}. Both are admissible, because α_0 comes last. K_W/M_1 ≤ cM_1^{−1} holds with c ≥ K_W. A form with M^{−1} per step is not claimed, and no consumer uses it (WG_FULL_VERIFY §2). This is a remark on the form; it does not affect convergence. (c) A3_SIGMA 5.3 (complex σ, recorded, not proved) needs the per-step factor to absorb e^{cκ_1}, i.e. ρ_{**} ≤ e^{−2cκ_1}. Since ρ_{**} ≥ ε_V^{1/10}, ε_2^{1/12}, this adds the condition Mα_0 ≤ a(κ_1). It is admissible (α_0 last), and it is a new item for that note.

## 6. Uniformity in regular U and the fixed rate loss

6.1 Where the smallness comes from [V]. The small factor of V and of Δ_π^{(2)} comes from (3.36), not from (3.35). p. 419: J "is small, if U satisfies the condition (3.36)". p. 422: "From the regularity condition (3.36) and the inequality (3.133) we have the estimate |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3}". (3.35) is the hypothesis of the walk theorems for G_0, G′, and C′ (Thms 3.7, 3.9, 3.10; the "(3.95)" of Thm 3.10 is a misprint for (3.35)). p. 405 [V, SOURCES_WG_VERIFY §4]: "for the operators introduced until now we need only the condition (3.35), but later on we will have to assume (3.36)".

6.2 Every constant is uniform [P given the inputs]. Each constant in §1–§5 is one of the following.
 - B_0, c_0, δ_0, C_𝒟 of Thms 3.7, 3.9, 3.10. These depend on d and L only (p. 416 [V]: "O(1) depends on d and L only") and hold for every U with (3.35).
 - c_1(·) of Lemma 2.1 and the Schur constant Σ(·). These depend on d, L, and the rate; they are uniform in k, η, {Ω_j} under (2.59) [R]. The C0 constant c_L = L^{O(1)} (5.5) depends on d and L only.
 - c_J, c_ι, c_b, c_κ, c_Q: the J-bound O(1)Mα_0 (uniform over U with (3.36)) and local constants of (I7) (d and L only).
 - The A1-W constants B_W, K_W, c_W, ε, M_W. These are uniform in regular U, j, k, η, {Ω_j}, and volume (SOURCES_A1_WALK §7.1–§7.2). They depend on U only through the lower bound (C) and the constants of the G expansion, which are uniform.
 - Combinatorial counts: N_V = 9, N_2 = 9, the 24 V-patterns, the 9 chain patterns, the tag counts 97 and T_2. These depend on nothing.
 - The fixed θ ∈ (0, 1).
 None of these depends on U beyond (3.35)–(3.36). So M_*, a_*, M_*′, a_*′, M_W, a_{**}, the RM threshold C(d, L)/(θε), and every bound in Theorems WG-G and WG-G1 are uniform in U with (3.35)–(3.36), in j, k, η, {Ω_j}, and in the volume.

6.3 The rate loss is fixed [P].
 - G: the rate goes from ½δ_0 to (1 − θ)½δ_0. The factor (1 − θ) comes once from Lemma C (3.6(i)). It does not depend on U, on n, or on the walk.
 - G_1: the rate is (1 − θ)·min{(1 − θ)½δ_0, ½δ_0, ½ε} = (1 − θ)½ε, since ½ε < (1 − θ)½δ_0 (5.4). Again one fixed factor, applied to the A1-W rate.
 Balaban absorbs such fixed losses into δ_0: p. 423 [V], "Let us denote a common, best possible, decay rate for all these operators by δ_0"; p. 427 [V], "(after adjusting a definition of δ_0)" (this phrase is on p. 427, not p. 426).

6.4 Order of constants, written once [P]. (d, L) → B_0, c_0, δ_0, C_𝒟, local constants → θ → c_1(θ½δ_0), K_V, C′_𝒟 → M_* (threshold on M_1), a_* (Theorem WG-G) → A1-W constants with G from WG-G (they need only Mα_0 ≤ a_0 and C_𝒟c_1ρ_* ≤ ¼) → M_*′, a_*′, M_W, c_L, K_2, a_{**} (Theorem WG-G1) → RM with (2.59) at rates θ½δ_0, θ½ε, and ½θ½ε and θ_S ≤ ¼θ½ε (RM ≥ C(d, L)/(θε) suffices) → α_0. Each item depends only on items to its left. There is no loop: ε is fixed at a minimal RM, and c_1, Σ, and ε do not get worse as RM grows (SOURCES_A1_WALK_VERIFY §6). The optional WG-1 condition α_0 ≤ c′M^{−1}M_1^{−10} (and α_0 ≤ c″M^{−1}M_1^{−12} for G_1) is imposed at the last step.

## 7. The level of the inputs

7.1 For Theorem WG-G.
 - CMP 99 Thm 3.10 (G_0, (3.107)–(3.108)): printed proof sketch, about 1.5 pages, pp. 414–416 [V]. p. 409 [V]: the Sect. C constructions are "identical to those in [4], so we will sketch them rather briefly".
 - CMP 99 Thm 3.7 and Cor. 3.8 (G′, (3.90), (3.94)): statement and per-walk bound printed on p. 410; the proof is by reference [V]: "The arguments are exactly the same as in proofs of Proposition 1.2 [3] and Proposition 2.2 [4], so we will not repeat them here." The printed (3.91)–(3.94) give the per-walk bound. Grade: by reference, backed by printed U = 1 proofs (CMP 95, CMP 96).
 - CMP 99 Thm 3.9 (C′ = (Q′G′²Q′*)^{−1}, (3.98)–(3.99)): printed sketch, about 2.5 pages, pp. 411–413 [V]. It enters V through R = I − P (2.3).
 - CMP 96 Lemma 2.1: printed with proof [R].
 - (3.36) and the J-bound: printed (p. 405, p. 419, (3.131), p. 422) [V].
 - Unprinted steps used here, all tagged [I]: C0 (scale bookkeeping; written out for the vector Ĵ in 5.5), (I7) Q-locality and merging of local factors, ι-domain assignment (2.5), and the M_1-cover (0.3; [I/R], asserted on CMP 116 p. 3). I-D was re-derived (2.4) and checked in SOURCES_WG_VERIFY §4.
 Level comparison [V, SOURCES_WG_VERIFY §4]. Balaban closes Thm 3.1 through Thm 3.7 (p. 410: "Theorem 3.7 implies that all the inequalities (3.42)–(3.47) hold for G′, thus we have completed the proof of Theorem 3.1"), Thm 3.2 through Thm 3.9 (p. 413), and Thm 3.3 through Thm 3.10 (p. 416). The trust ledger already accepts Thms 3.1 and 3.3 as inputs of A1. So the inputs of Theorem WG-G are at the same level as inputs the ledger already accepts.
 What this file replaces. Balaban's text for G is one sentence (p. 422 [V]): "Of course Theorem 3.10 holds also because we replace each operator in (3.130) by its random walk expansion." For G_1 it is one sentence on p. 423 and one paragraph on p. 427. §3–§5 give written proofs of these claims.

7.2 For Theorem WG-G1. The same inputs, plus a walk expansion of (QGQ*)^{−1}. Balaban does not print that expansion (p. 422 [V]: "We will not repeat these considerations here, let us write only bounds"), and he introduces Thm 3.13 with "assuming (3.132)" (p. 426 [V]). Here it comes from Theorem A1-W (A1_WALK_FULL; SOURCES_A1_WALK §7.1), which is our construction. A1-W is conditional on the lower bound (C) and on its own [I] items (O2 Lipschitz partition, Q-locality, κ_1). So WG-G1 does not reduce to printed sketches alone. It reduces to printed sketches + Lemma N + Lemma C + A1-W (with input WG-G) + C^{(2)}-locality [I].

7.3 Which theorem closes which item.
 - Theorem WG-G closes the (W_G) input of A1-W for the final G (open point O1 of SOURCES_A1_WALK §9), at the level of 7.1.
 - Theorem WG-G1 closes the tree expansion of G_1 asserted on pp. 423 and 427, at the level of 7.2.
 - Not closed here: (QG_1Q*)^{−1} (A1-W applied to the trees of WG-G1, SOURCES_A1_WALK §6.3(a)); Ğ_2 of p. 432 (assertion only); (C); the Z_0-compressed variant (O3); the complex configurations (O4).

## 8. Ledger

| item | where | status |
|---|---|---|
| G^{−1} = G_0^{−1} − Δ′_π; (3.130) with sign check | 1.1 | [V] pp. 419–421; sign [P] |
| Lemma N: the Neumann series gives the inverse in finite volume; no separate existence of G needed | 1.2 | [P] |
| Rearrangement of the expanded series | 1.4 | [P] (Fubini, from the absolute bounds of §3–§4) |
| V non-local; one J per term; R_b = parallel transport | 2.1–2.2 | [V] (3.120); polarization [P] |
| Chains Λ, Λ_D and adjoints; P-product has 4 walk blocks | 2.3 | [P]; P from p. 415 [V] |
| Walk cube size = M_1 (CMP 116 p. 3); WG-G built on the M_1-cover; A1-W 4.1 domain-size condition c_XM_1 ≥ diam X̃^5 with c_X = c(d) | 0.3, 5.4 | [I/R] cover; domain-size check [P] given the cover |
| Rule R-D and I-D | 2.4 | [P] given the (3.46) L² block mixed norms in (I1)–(I2) [R] |
| ι-blocks: local, one domain, weight O(Mα_0) | 2.5 | [P] given (I5) [V] and (I7) [I] |
| N_V = 9, 24 patterns | 2.6 | [P] |
| Lemma C (concatenation, θ-split, Lemma 2.1 at junctions, rate (1 − θ)δ) | §3 | [P] given (I4) [R] with (2.59) RM condition at rate θ½δ_0 (θ½ε in §5) [R Lemma 2.1 hypothesis], and C0 [I] |
| Theorem WG-G: G = Σ_λ T_λ, (L1)–(L2), (B1) with (B_0′, ρ_*, (1 − θ)½δ_0), (B2) with C′_𝒟 = 97C_𝒟, M_1 ≥ M_*, Mα_0 ≤ a_* | §4 | [P] given (I1)–(I5) [R], (2.59) at rate θ½δ_0 [R], (I7) [I], C0 [I], M_1-cover [I/R] |
| WG-1: literal per-step form (CMP 116 (1.7)) at V-junctions needs α_0 ≤ c′M^{−1}M_1^{−10} (α_0 ≤ c′M^{−11} in CMP 99 notation) | 4.7 | [P]; supersedes SOURCES_WG 2.9 (M^{−3}) and 3.0 (M^{−8}); admissible in Balaban's order, not implied by Mα_0 ≤ a_0 |
| G_1^{−1} = G^{−1} − Δ_π^{(2)}; (3.135) factorization | 5.1 | [V] (3.128), (3.134)–(3.135); algebra [P] |
| Structure of Δ^{(2)}; branch = (QGQ*)^{−1}QG applied to J | 5.2 | [V] (3.126), (3.136), p. 427; K_b locality [I] |
| No loop: G_0 → G → (QGQ*)^{−1} → H → Δ^{(2)} → G_1 | 5.3 | [P]; Balaban's order [V] pp. 422–423, 426 |
| A1-W with G from WG-G: step ρ_W = max{K_W/M_1, c_Wρ_*}, rate ½ε; A1-W 4.1 domain size checked | 5.4 | [P] given (I6) and the M_1-cover |
| Lemma B (branch bound, one factor Mα_0); C0 for Ĵ := S^{3/2}J written out (constant L^{O(1)}, O(θ_S) loss in the θ-part) | 5.5 | [P] given (I4)–(I6), (2.59) RM condition at rates θ½ε, ½θ½ε [R Lemma 2.1 hypothesis], RM ≥ C/(θε), the p. 398 rule [V]; per-term form of (3.136) [V] |
| Tree terms, tree distance, (5.7.1), k_2 = 12, N_2 = 9 | 5.6–5.7 | [P] |
| Tree counting (depth-first code), convergence, Theorem WG-G1 with rate (1 − θ)½ε; per-step form needs α_0 ≤ c″M^{−1}M_1^{−12} | 5.8–5.10 | [P] given WG-G, (I6), C^{(2)}-locality [I] |
| Uniformity in regular U; smallness from (3.36) | §6 | [P] given the inputs; (3.36) role [V] |
| Fixed rate loss (1 − θ), once | 6.3 | [P]; Balaban's δ_0 convention [V] pp. 423, 427 |
| Level of inputs: Thms 3.7 (by reference), 3.9, 3.10 (printed sketches), Lemma 2.1 (printed) | 7.1 | [V]; same level as the accepted A1 inputs |
| G_1 needs A1-W in addition | 7.2 | [V] p. 422 "will not repeat", p. 426 "assuming (3.132)" |

Inputs of Theorem WG (complete list).
 1. CMP 99 Thm 3.10 (G_0 walks, (3.107)–(3.108), all norms of (3.42)–(3.47)) [R, printed sketch].
 2. CMP 99 Thm 3.7 + Cor. 3.8 (G′ walks, (3.90), (3.94)) [R, by reference to CMP 95 Prop. 1.2, CMP 96 Prop. 2.2].
 3. CMP 99 Thm 3.9 (C′ walks, (3.98)–(3.99)) [R, printed sketch].
 4. CMP 96 Lemma 2.1 (c_1(κ)) under its condition (2.59), and the Schur constant Σ(κ) of A1_KERNEL §5 [R].
 5. (3.36) and the J-bound |J| ≤ O(1)Mα_0(L^jη)^{−3} [V].
 6. For G_1 only: Theorem A1-W (A1_WALK_FULL; SOURCES_A1_WALK §7.1), itself conditional on (C) and its [I] items.
 7. Unprinted items [I]: C0 (scale bookkeeping and the S-rescaling; vector case written out in 5.5), (I7) locality of Q, Q′, D, R_b and merging of local factors, ι-domain assignment, C^{(2)}-locality of K_b, the M_1-cover [I/R].
 Constant order: (d, L) → θ → M_* → a_* → [A1-W] → M_*′, a_*′, M_W → a_{**} → RM ≥ C/(θε) → α_0; optional WG-1: α_0 ≤ c′M^{−1}M_1^{−10} (N_V = 9), and α_0 ≤ c″M^{−1}M_1^{−12} for G_1.

Proposed A1w ledger row (for an independent verifier): "(W_G) for G PROVED (WG_FULL §4) given printed CMP 99 Thms 3.7, 3.9, 3.10 + Lemma 2.1 under (2.59) + (3.36) + [I] C0/(I7)/M_1-cover; rate (1 − θ)½δ_0, step ρ_*; literal CMP 116 (1.7) per-step form needs α_0 ≤ c′M^{−1}M_1^{−10} (WG-1). Tree expansion of G_1 PROVED (WG_FULL §5) given the same + A1-W (conditional on (C)) + C^{(2)}-locality [I] + RM ≥ C/(θε); rate (1 − θ)½ε."

## 9. Status
Author write-out complete. Verified by WG_FULL_VERIFY (2026-10-28): NEEDS FIXES, none structural. F1–F6 applied (change log below); the fixes are not yet re-verified. Original next-step list, now covered by WG_FULL_VERIFY: an independent verifier of §3 (Lemma C, Step 2 in particular), §4.3–§4.5 (step and tag counts), §5.5–§5.8 (branch bound, tree distance, depth-first code), and the C0 bookkeeping for the vector Ĵ in 5.5.

## Fixes after verification (WG_FULL_VERIFY, 2026-10-28)
- F1 (C0 for the vector): 5.5 now defines Ĵ := S^{3/2}J, states the S-powers of G, G′ (+1), (QGQ*)^{−1} (−1), J (−3/2), Q (0), shows that the interior powers cancel (Q̂ local, constant L^{O(1)}), and moves the end leftover S(b′)^{−1} to b by the CMP 99 p. 398 "conventional powers" rule at cost L² and e^{2θ_S d}. The proof of Lemma B uses θ_S ≤ ¼θδ_1. Result = per-term form of (3.136). 0.2 states the norm (L² block norm of the (3.46) list). RM ≥ C(d, L)/(θε) added to 0.6, 0.7(G1), 5.9, 6.4, and the ledger.
- F2 (M_1-cover): 0.3 separates the walk cube size M_1 (CMP 116 p. 3, (1.7)) from the regularity parameter M. WG-G (0.7, 4.6) is stated on the M_1-cover, with ρ = c_0M_1^{−1} and M_* a threshold on M_1. 5.4 checks the A1-W 4.1 domain-size condition c_XM_1 ≥ diam X̃^5, c_X = c(d). 4.7 and 5.10(b) are in M_1 notation: WG-1 is α_0 ≤ c′M^{−1}M_1^{−10} for G and α_0 ≤ c″M^{−1}M_1^{−12} for G_1. 5.10(c) records the new A3_SIGMA 5.3 condition Mα_0 ≤ a(κ_1). Ledger row for the M_1-cover added.
- F3: (3.44) → (3.46) L² block norm in 0.2, 0.5, 2.4 (I-D), 4.3, and the ledger. (3.44) is pointwise and needs a Hölder norm of λ; it is not used.
- F4: CMP 96 (2.59) added to (I4) as an RM condition, at the rates θ½δ_0 (§3–§4), θ½ε (Lemma C in 5.7), and ½θ½ε (Lemma B); also in 0.6, 6.4, and the ledger rows for Lemma C, WG-G, and Lemma B.
- F5: the 5.1 sentence "both series converge to the same inverse" is removed. 5.1 now says that (3.138) is not used and its convergence is not proved.
- F6: a_*′ is defined in 5.9(iii).
- Consistency pass: (I4) and 0.6 now list all three Lemma 2.1 rates, as 6.4 does. These fixes are not yet re-verified.
