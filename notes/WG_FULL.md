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

3.6 Remarks [P]. (i) The rate loss is the factor (1 − θ), once for the whole product. It is not a loss per step and not a loss per block. (ii) Balaban uses the same split inside a walk (p. 410 [V]: "We use part of the exponentials to control the sum over y_i's, let us say the exponentials with ½δ_0 instead of δ_0") and at the junctions of (3.138) (p. 423 [V]: the first-factor estimate ends in e^{−(1−α)δ_0 d(y,y′)}). (iii) The (N − 1) junction steps of ω carry no factor ρ. They carry only c_1(θδ) and the block weights. This is the source of WG-1 (§4.6).

## 4. Theorem WG-G: the walk expansion of G

4.1 Labels and terms [P]. By 1.1, G = Σ_{n≥0} G_0(−VG_0)^n. Insert (I1) for every G_0 and 2.6 for every V. A label λ consists of: n ≥ 0; walks ω_0, …, ω_n of (I1); V-labels ν_1, …, ν_n (2.6). The term is
 T_λ := T^0_{ω_0}(−V_{ν_1})T^0_{ω_1}(−V_{ν_2})···(−V_{ν_n})T^0_{ω_n},
with the derivatives of each V_{ν_i} placed by rule R-D (2.4). T_λ is a flat ordered product of N(λ) = (n + 1) + Σ_i n_{ν_i} blocks. Its domain list ω(λ) is the concatenation of the domain lists of these blocks.

4.2 Locality (L1)–(L2) [P]. Every factor of T_λ is a factor of (I1), (I2), or (I3) (with merged local factors, (I7)), or an ι-block (2.5). Each such factor has (L1)–(L2): (I1)–(I3) by Thms 3.10, 3.7, 3.9 [R], merged factors by (I7) [I], ι-blocks by 2.5 [P]. By Lemma C(a), T_λ = 0 unless ω(λ) is a walk. By Lemma C(b), T_λ depends on U only on the union of X̃^5 over the domains of ω(λ). We drop the labels with T_λ = 0.

4.3 Bound per term (B1) [P]. Apply Lemma C to the flat product, with the common rate δ = ½δ_0 and the fixed θ. All weights are taken with B_0′ ≥ 1 and c_1 := c_1(θδ) ≥ 1 (enlarge them if needed).
 Weights. The first block T^0_{ω_0} has weight B_0′ρ^{|ω_0|}. The i-th V-insertion brings: its walk blocks (n_{ν_i} − 1 of them, weight B_0′ρ^{|·|} each), its ι-block (weight b_ι = c_ιe^{δc_b}Mα_0), the factor ½ ≤ 1, and the following block T^0_{ω_i} (weight B_0′ρ^{|ω_i|}).
 Junctions. The number of junctions is N(λ) − 1 = n + Σ_i n_{ν_i} = Σ_i (n_{ν_i} + 1). So the i-th V-insertion brings n_{ν_i} + 1 junctions, each with a factor c_1.
 Collect the factors per V-insertion:
  W_i := B_0′^{n_{ν_i}} b_ι c_1^{n_{ν_i}+1} ≤ (B_0′c_1)^{N_V+1} c_ιe^{δc_b} Mα_0 =: ε_V, i.e. K_V := (B_0′c_1)^{10}c_ιe^{δc_b}.
 Lemma C(c) gives
  |T_λ(y, y′)| ≤ B_0′ ρ^{Σ_k |ω_k|} Π_{i=1}^{n} W_i · m(y, y′) e^{−(1−θ)δ d(ω(λ), y, y′)},
 where Σ_k |ω_k| runs over all walk blocks.
 Steps. By Lemma C(a), |ω(λ)| = Σ_k |ω_k| + Σ_i (n_{ν_i} + 1). The first sum counts steps inside input blocks; each has a factor ρ. The second sum counts junction steps; they have no ρ. Assume ε_V ≤ 1. Since n_{ν_i} + 1 ≤ N_V + 1 = 10, W_i ≤ ε_V ≤ (ε_V^{1/10})^{n_{ν_i}+1}. Put ρ_* := max{ρ, ε_V^{1/10}}. Then
  |T_λ(y, y′)| ≤ B_0′ ρ_*^{|ω(λ)|} m(y, y′) e^{−(1−θ)½δ_0 d(ω(λ), y, y′)}.  (4.3.1)
 This is (B1) with constants (B_0′, ρ_*, (1 − θ)½δ_0). The same bound holds with one derivative on either side of T_λ: the derivative falls on the first or the last G_0 block (Lemma C(d)). That block may already carry a derivative on its inner side from R-D; then the mixed norm of (3.44) is used (I1), I-D (2.4). Two derivatives on the same side do not occur; this matches Balaban's exception for the Laplacian norm in (3.42) (p. 422 [V]).

4.4 Branching (B2) [P]. We encode a label by its domain sequence with tags. Each factor of T_λ gets a tag: "continue the current block" or "start a block of type t" with t ∈ {G_0-walk, G′-walk, merged C′-walk, ι}, and at the start of a V-insertion one of its ≤ 24 patterns (2.6). The derivative placement and the sign are fixed by the pattern. The label λ is recovered from the tagged sequence: the tags give the block boundaries and types; the pattern gives the number of walk blocks in each chain of the V-insertion; the factors (α, X) inside a block give its input walk. So the new expansion is a walk expansion over the tagged factor alphabet.
 Given the domain X′ of the previous factor, the next factor is chosen as: a tag (at most 1 + 4·24 = 97 values) and a pair (α, X) with X ∩ X′ ≠ ∅ (at most C_𝒟 values, by (B2) of the inputs; an ι-domain X is a domain of the same kind [I]). So (B2) holds with C′_𝒟 := 97C_𝒟. An over-count (a label that gives T_λ = 0, or a tag sequence that is not a label) only increases the bound.

4.5 Convergence [P]. The first factor is chosen among at most C_𝒟 pairs (α, X) with y ∈ X. With 4.4 the number of labels with |ω(λ)| = s is at most C_𝒟(C′_𝒟)^s. With (4.3.1) and d(ω, y, y′) ≥ d(y, y′):
 Σ_λ |T_λ(y, y′)| ≤ C_𝒟B_0′ m(y, y′) e^{−(1−θ)½δ_0 d(y, y′)} Σ_{s≥0}(C′_𝒟ρ_*)^s ≤ 2C_𝒟B_0′ m(y, y′) e^{−(1−θ)½δ_0 d(y, y′)},
 provided C′_𝒟ρ_* ≤ ½. We require C′_𝒟ρ_* ≤ ¼ to match (B2) in 0.4. This holds if both:
  (i) C′_𝒟c_0M^{−1} ≤ ¼, i.e. M ≥ M_* := 4C′_𝒟c_0;
  (ii) ε_V^{1/10} ≤ (4C′_𝒟)^{−1}, i.e. Mα_0 ≤ a_* := K_V^{−1}(4C′_𝒟)^{−10}. This also gives ε_V ≤ 1, used in 4.3.
 The bound of Lemma C(c) is for the sum over junction points of absolute values, so the absolute summability of 1.4 holds. Lemma N and 1.4 then give G = Σ_λ T_λ. Condition (ii) is the Neumann condition in walk form.

4.6 Theorem WG-G [P given (I1)–(I5), (I7), I-D]. For M ≥ M_*, Mα_0 ≤ a_*, and U with (3.35)–(3.36), G = Σ_λ T_λ is a walk expansion in the sense of 0.4, with constants (B_0′, ρ_*, (1 − θ)½δ_0), C′_𝒟ρ_* ≤ ¼, and the bound also for one derivative on either side. ∎

4.7 WG-1: the literal (3.108) form [P]. (3.108) has a factor c_0M^{−1} = O(M^{−1/2})·M^{−1/2} on every step. In (4.3.1) the 10 junction steps of a V-insertion carry ε_V^{1/10} in place of ρ. So ρ_* = ρ = c_0M^{−1} holds if and only if ε_V^{1/10} ≤ c_0M^{−1}, i.e.
 K_V Mα_0 ≤ c_0^{10}M^{−10}, i.e. α_0 ≤ c′M^{−11}, c′ := c_0^{10}K_V^{−1}.
 The exponent is 11 = (N_V + 1) + 1: N_V + 1 = 10 junction steps per V-insertion, and one more power from the explicit M in Mα_0. (If the ι-block is merged into a neighbour, there are 9 junction steps and the condition is α_0 ≤ c′M^{−10}; SOURCES_WG_VERIFY §5.) SOURCES_WG 2.9 (M^{−3}) and 3.0 (M^{−8}) undercounted the P-chain and are superseded.
 Status of WG-1. Under the project convention Mα_0 ≤ a_0 alone, ρ_* = max{c_0M^{−1}, (K_Va_0)^{1/10}} does not tend to 0 as M → ∞. The counting still converges (4.5), but the free factor M^{−½|ω|} of (3.108) is not available at V-junctions. A consumer that uses that free factor must add α_0 ≤ c′M^{−11}, or use the exponential factor in its place. The condition is admissible in Balaban's order of constants: M is fixed first (Thm 3.10), α_0 last (Thm 3.12: "for α_0 sufficiently small"; p. 422 [V]: "each operator Δ′_π provides the small factor α_0, which we can choose to be arbitrarily small").

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
Balaban prints the equivalent series (3.138), G_1 = Σ_n G_0((Δ′_π + Δ_π^{(2)})G_0)^n (p. 423 [V]). Both series converge to the same inverse G_1 by Lemma N, so we may use either. We use the series in G, because it takes Theorem WG-G as its input block.

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
 - the smallness holds if C_𝒟c_1ρ_* ≤ ¼; we enlarge M_* and shrink a_* to get it;
 - the step factor of the (QGQ*)^{−1} expansion is ρ_W := max{K_W/M_1, c_Wρ_*};
 - the rate is δ_W = ½ε, where ε is the local Combes–Thomas rate of A1-W computed from δ_G := (1 − θ)½δ_0 − (d/2 + 1)θ_S (θ_S the rescaling cost of A1_KERNEL §5).
 Since ε ≤ ½δ_G < ½δ_0, the common rate δ_1 := ½ε satisfies δ_1 ≤ the rates of all other blocks: (1 − θ)½δ_0 (WG-G terms), ½δ_0 (G′ and C′ walk blocks). By 3.0 every block also satisfies its bound with rate δ_1.

5.5 The branch bound (Lemma B) [P given (I4)–(I6), C0]. A branch label β = (β_1, β_2) consists of a walk term W_{β_1} of (QGQ*)^{−1} (A1-W; with Q merged, (I7)) and a walk term T_{β_2} of G (WG-G). Its domain list is β := β_1 ∘ β_2. Its value at b is
 w_β(b) := Σ_{u, b′} μ(u)μ(b′) Ŵ_{β_1}(b, u) T̂_{β_2}(u, b′) Ĵ(b′)
in rescaled units. Define the open path distance d_o(β, b) := inf {d(b, v_1) + d(v_1, v_2) + …}, inf over one point v_i in each domain of β after the first, with no fixed end point. Claim:
 |w_β(b)| ≤ B_Wρ_W^{|β_1|} B_0′ρ_*^{|β_2|} Σ(θδ_1)² c_JMα_0 e^{−(1−θ)δ_1 d_o(β, b)}.  (5.5.1)
Here Σ(κ) := sup_y Σ_{y′}(μ(y′)/μ(y))^{1/2} e^{−κ d(y, y′)} is the Schur constant of A1_KERNEL §5; it is finite and uniform in k, η, {Ω_j} for the rates used here [R Lemma 2.1, as in A1_KERNEL §5].
 Proof. Non-zero summands need u ∈ (last domain of β_1) ∩ (first domain of β_2) and b′ ∈ last domain of β_2 (support, as in 3.2). Insert the (B1) bounds at rate δ_1. The exponent is δ_1[d(β_1, b, u) + d(β_2, u, b′)]. As in Step 2 of 3.4, the two block paths join at u into a path from b through all domains of β, so the bracket is ≥ d_o(β, b). As in Step 3, the bracket is ≥ d(b, u) + d(u, b′). Split with (1 − θ) and θ. The factor e^{−(1−θ)δ_1 d_o(β, b)} does not depend on u, b′. What remains is a double sum over u and b′ of μ-weights, m-weights, e^{−θδ_1 d(b, u)}e^{−θδ_1 d(u, b′)}, and |Ĵ(b′)| ≤ c_JMα_0. Sum b′ first, then u. Each sum is a Lemma 2.1 sum with the scale weights (μ(·)/μ(·))^{±1/2} of the C0 normalization; each is bounded by the Schur constant Σ(θδ_1) of A1_KERNEL §5 [R Lemma 2.1; I for the C0 normalization of the vector Ĵ, the same bookkeeping as in (3.131) and (3.136)]. ∎
 Consistency check against the page [V (3.136)]: summing (5.5.1) over β with the counting of 5.8 gives |ŵ(b)| ≤ O(1)Mα_0, which in Balaban's units is his printed |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3}. With |K̂_b| ≤ c_κ this reproduces (3.137), |(Δ^{(2)}A)(b)| ≤ O(1)Mα_0(L^jη)^{−2}|A|.
