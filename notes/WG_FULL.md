# WG_FULL — walk expansions of G and G_1 from the walk expansion of G_0

Date 2026-10-28. Paper-grade write-out of SOURCES_WG §2–§5 with the corrections of SOURCES_WG_VERIFY.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Sources: SOURCES_WG §0–§7; SOURCES_WG_VERIFY; SOURCES_A1_KERNEL §1; SOURCES_A1_WALK §1, §5–§7; CMP 99 text pp. 397–398, 410, 419–423, 427 (re-read with pdftotext; page p. N = pdf page N − 388).
Tags: [V] read on the page; [P] proved here; [R] printed statement or printed sketch used as input; [I] inferred step, stated where used.
Status: author write-out. Not yet checked by an independent verifier.

## 0. Notation, inputs, and statement

0.1 Operators [V]. Balaban (CMP 99) uses three gauge-field propagators in a regular background U.
- G_0 := (Δ + DRD* + Q*aQ)^{−1} (p. 421: "Let us denote for a moment the operator we have investigated in previous sections by G_0, i.e. G_0 = (Δ + DRD* + Q*aQ)^{−1}").
- G is defined by G^{−1} = Δ_π + DRD* + Q*aQ (p. 420, (3.122)), with ⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩ (p. 419, (3.119)).
- G_1 is defined by the quadratic form (3.128) (p. 421).
Here G′ is the scalar (ghost) propagator of Thm 3.1, R = I − P is the projection of p. 414 ("DRD* = DD* − DPD*"), and P = G′Q′*(Q′G′²Q′*)^{−1}Q′G′ (p. 415). We write C′ := (Q′G′²Q′*)^{−1}.

0.2 The lattice of localization points [V p. 397; I as in A1_WALK §1.2]. 𝔅 = ∪_j Λ_j is the multiscale block lattice. For y ∈ Λ_j, Δ(y) = B^j(y) is the j-block with centre y. d(y, y′) is the weighted distance of CMP 96 (2.36). μ is the measure of A1_KERNEL §5 and m(y, y′) := (μ(y)μ(y′))^{−1/2}. The kernel T(y, y′) of an operator T is its localized block Δ(y)TΔ(y′), measured in the norm of (3.42)–(3.47) after the S-rescaling of A1_KERNEL §8. With this convention the composition rule is (AB)(y, y′) = Σ_z μ(z)A(y, z)B(z, y′), and the weights telescope: μ(z)m(y, z)m(z, y′) = m(y, y′). The scale factors (L^jη)^{±} of Balaban's bounds are carried by m and S. This bookkeeping is the same as in (3.131) and in A1_WALK; we do not repeat it [I, convention C0].

0.3 Walks and distance [V p. 410, (3.93)]. A domain X is a small connected union of cubes of Balaban's cover 𝒟. A walk ω = (X_0, …, X_n) is a finite sequence of domains with X_{i−1} ∩ X_i ≠ ∅. Its length is |ω| := n. The path distance is
 d(ω, y, y′) := inf {d(y, y_1) + d(y_1, y_2) + … + d(y_{n−1}, y_n) + d(y_n, y′)}, inf over y_i ∈ X_i.
By the triangle inequality, d(ω, y, y′) ≥ d(y, y′).

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
 Each of (I1)–(I3) is a walk expansion in the sense of 0.4 with constants (B_0, ρ, δ), where ρ := c_0M^{−1} and δ := ½δ_0. This is the content of (3.108): "|(T_ωJ)(x)| ≤ O(1)(L^jη)²O(M^{−1/2})^{|ω|}M^{−½|ω|}e^{−½δ_0 d(ω,y,y′)}|J|, and the corresponding inequalities for norms on the left-hand sides of (3.42)–(3.47)" (p. 416 [V]); Cor. 3.8 says "Similar estimates hold for the other norms" (p. 410 [V]). So (B1) holds also for kernels with one covariant derivative on either side and for the mixed norm ∇T∇* of (3.44), with the same form of bound. We take δ as the common rate of all these norms (Balaban's convention, p. 423: "a common, best possible, decay rate for all these operators").
 (I4) CMP 96 Lemma 2.1 [R, printed with proof]: for κ > 0, sup_y Σ_{y′∈𝔅} e^{−κ d(y, y′)} ≤ c_1(κ) < ∞, with c_1 depending on d, L, κ only.
 (I5) J := D*η^{−2} Im ∂U, a function on bonds, local in U. Under (3.36), |J(b)| ≤ O(1)Mα_0 (L^jη)^{−3} [V: p. 419 "J … is small, if U satisfies the condition (3.36)"; p. 422]. In rescaled units, |Ĵ(b)| ≤ c_J Mα_0.
 (I6) For G_1 only: Theorem A1-W (A1_WALK_FULL; source SOURCES_A1_WALK §7.1). Given a walk expansion of G with step factor ρ_G and rate δ_G′ (with C_𝒟c_1ρ_G small), (QGQ*)^{−1} has a walk expansion with constant B_W, step factor ρ_W := max{K_W/M_1, c_W ρ_G}, and rate δ_W = ½ε. Its own inputs are the walk expansion of G, the lower bound (C), Lemma 2.1, and the [I] items listed there.
 (I7) Local factors [I, Q-locality as in A1_WALK §8]. Q, Q*, Q′, Q′*, D, D*, the parallel transport R_b, and the local Hessian of C^{(2)} have kernels supported within O(1) blocks of the local scale. A local factor next to a walk block is merged into that block. The merged block has the same domain list and the same form of bound with B_0 replaced by c_Q B_0. A D or D* is merged so that every block carries at most one derivative on each side (rule R-D, §2.4).

0.6 Order of constants. (d, L) fix B_0, c_0, δ_0, C_𝒟, c_J. Then θ ∈ (0, 1) is fixed (θ = ½ is enough). Then M_* and a_* are fixed (§4). For G_1, the A1-W constants follow, then M_W and a_{**} (§5). Last, α_0 is chosen. The condition of WG-1 is α_0 ≤ c′M^{−11}; it is optional and is admissible in this order because α_0 comes last.

0.7 Theorem WG. Let U satisfy (3.35)–(3.36). Fix θ ∈ (0, 1).
 (G) [Theorem WG-G] There are M_*(d, L, θ) and a_*(d, L, θ) > 0 such that for M ≥ M_* and Mα_0 ≤ a_*, G = Σ_λ T_λ is a walk expansion in the sense of 0.4 with constants (B_0, ρ_*, (1 − θ)½δ_0). Here ρ_* := max{ρ, ε_V^{1/10}} and ε_V := K_V Mα_0, K_V = K_V(d, L, θ). The bound (B1) holds also for kernels with one derivative on either side. If in addition α_0 ≤ c′M^{−11}, then ρ_* ≤ c_0M^{−1}, which is the literal (3.108) form.
 (G1) [Theorem WG-G1] Assume in addition (I6). There are M_W and a_{**} > 0 such that for M ≥ M_*, M_1 ≥ M_W, Mα_0 ≤ a_{**}, G_1 = Σ_τ T_τ is a tree expansion: (L1)–(L2) for every factor, (B1) with the tree distance d(τ, y, y′), (B2) in tree form, and rate (1 − θ)½ε.
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

1.3 Convergence condition [P]. The series converges if the walk-weighted size of each V-insertion is small. In §4 this is the condition C′_𝒟 ρ_* ≤ ½, which needs M ≥ M_* and Mα_0 ≤ a_*. It is the walk form of ‖Δ′_πG_0‖ < 1. Balaban states the global form [V p. 422]: "This inequality [(3.131)] and Theorem 3.3 for G_0 imply a convergence of the series (3.130), for α_0 sufficiently small, in all norms appearing on the left-hand sides of the inequalities (3.42)–(3.47), except the inequality involving the Laplace operator in (3.42)."

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
 I-D (derivative in the second argument) [P, SOURCES_WG_VERIFY §4]. G_0, G′, and G are self-adjoint. So G_0 = Σ_ω (T^0_ω)*, and (T^0_ω)* is a walk term with the reversed domain list, adjoint factors, and the same locality. A derivative in the second argument of (T^0_ω)* is a derivative in the first argument of T^0_ω, which (I1) covers. A block with one derivative on each side is covered by the mixed norm ∇T∇* of (3.44) in (I1)–(I2).

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
