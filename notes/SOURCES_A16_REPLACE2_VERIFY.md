# SOURCES_A16_REPLACE2 verification (independent, 2026-10-28)

Firewall kept: no /tmp/sa_repo, SUSSMAN_ALPOGE_MAP.md, or ONLINE_SWEEP.md.

## §0 Read
Read SOURCES_A16_REPLACE2.md §1–§7 in full. Author claims listed in brief as (1)–(4). Checks below follow §7.5 order, then tasks (b)–(g).

## §1 Inputs read: WG_FULL 3.0–3.6, 5.2–5.10 (+fixes F1–F7); WC_FULL §0, §4
- WG Lemma C(a): |ω| = Σ|ω_k| + N − 1; junction steps carry no ρ (3.6(iii)). One (1 − θ) per product (3.6(i)).
- WG 5.5 uses of J: only |Ĵ(b′)| ≤ c_JMα_0 pointwise, inside a Schur sum over b′ with e^{−½θδ_1 d(u,b′)}. Locality of J is not used in the proof (J adds no domain because b′ lies in the last domain of β_2). Smallness of J enters only as the scalar factor.
- WG 5.7: k_2 = 12 for a G_1 insertion = 10 main-line junctions (N_2 + 1, N_2 = 9 blocks) + X→branch + β_1→β_2.
- WG 5.8: tree count uses C″_𝒟 = T_2C_𝒟^{H1} (not 97C_𝒟), branches have no sub-branches in WG-G1.
- WC 4.2: C′_𝒟 := "tree branching constant of WG §4.4 and its tree form"; WC 6.5 uses C_𝒟^{(1)} for G_1 trees. So WC's C′_𝒟 must already dominate C″_𝒟 and the second-pass count; A16-2 2.3 "enlarged C′_𝒟" sits on top of that.
- Side note (not A16-2's error): WC 4.2 writes |A_ω| ≤ B_Aρ_A^{|ω|} without separating the junction steps; A16-2's explicit k_ν is the more careful bookkeeping.

## §2 Check (1): 2.2 type (ii), branch bound with G_1 and J_S
- D2 (2.a) (l. 104–106): J_f(b) = Σ_{p∋b} f(x_p)P_p^{(1)}(U_{k+1})(b); p = plaquettes of T^{(k)} (unit lattice). D3R l. 73: the source deviation "is nonzero on the whole torus". So J_S is O(r) at every bond. Confirmed.
- WG 5.5's proof uses J only through the pointwise |Ĵ(b′)| ≤ c_J(…) inside the Schur sum over b′. Locality or local smallness of J is not used. Replacing c_JMα_0 by c_J^S r is valid. CONFIRMED.
- G → G_1 in the branch: β_2 is now a G_1 TREE (with its own sub-branches), not a WG-G walk. The 5.5 path argument becomes a connected-graph argument (the tree distance of β_2 joined at u). This is the same step as WG 5.7. Valid; wording "P_β is a path" should read "connected graph". Nested branches (a branch whose G_1 tree has branches) are new relative to WG 5.8 (WG-G1 branches have no sub-branches); the depth-first code with start/resume tags handles any nesting depth (stack decoding). Finite tag set: yes. CONFIRMED with wording fix.
- Scale (C0): in CMP 109/116 small field, U_k lives on T^{(k)} with unit spacing, so S = I, as (S_H) says. No C0 cost for J_S. Fine.
- Branch rate: β_1 (A1-W walk for G_1) and β_2 (G_1 tree) at common rate δ_H = min{δ_1, δ_W}. As WC 4.2. Fine.

## §3 Checks (2) and (b): composite count, k_𝒲 = 12, (C′_𝒟)^{12}
- Type (i) main line C*·W^T·Q·T^T·D_S·T·Q*·W·C = 9 blocks, 8 junctions (Lemma C(a)); internal steps of T_τ (incl. G_1 branches) carry ρ_{**}, of W_ω carry c_1ρ_W. So k_ν = 8 for type (i). If Q is merged into W by (I7), as (Loc) says, k_ν = 6. Either way ≤ 12.
- Type (ii) with Π_L = Π_R = H_1: 9 main-line blocks (8 junctions) + X→branch + β_1→β_2 = 10; +1 if the branch Q is not merged (W·Q·T_τ) = 11. With Π = I: 4 + 2 (+1). So k_ν ≤ 11 ≤ 12. CONFIRMED (12 is a safe cap).
- Steps carrying no ρ_A that I looked for and found none beyond these: junctions inside the G_1 trees and A1-W walks are already priced inside WG-G1 (ε_2^{1/12} in ρ_{**}) and A1-W. The J_S end adds no domain (b′ lies in the last domain of β_2, as WG 5.6). The edge (z, b_0) of the K-vertex is paid by e^{δc_b}, not a step.
- (C′_𝒟)^{12}: labels with |ν| = s number ≤ C_𝒟(C′_𝒟)^s; term ≤ rB_𝒲ρ_A^{s−k_ν}; s ≥ k_ν since junctions are steps. Σ_s C_𝒟(C′_𝒟)^{k_ν}(C′_𝒟ρ_A)^{s−k_ν} ≤ 2C_𝒟(C′_𝒟)^{12}. K_W^T = 2C_𝒟(C′_𝒟)^{12}B_𝒲 CONFIRMED (needs C′_𝒟 ≥ 1).
- Does the J_S branch need tags beyond C′_𝒟? Yes, in two ways, both inside the "enlarged C′_𝒟" that 2.3 declares: (a) nested branches (G_1 trees inside β and inside Π = H_1 carry their own H-branches), which WG 5.8 does not have; (b) the A1-W walk for P = G_1 has domains from the second pass (C_𝒟^{(1)}, D_+^{(1)}, WG regrade (c), WC 6.5), so the per-step choice count is the second-pass count, not C_𝒟^{H1}. Both are fixed by (d, L) and the cube geometry before M_1. 2.3 should name the count explicitly: C′_𝒟 := T_𝒲·max{C″_𝒟, C_𝒟^{(1)}-count}, T_𝒲 the enlarged tag-set size (incl. a stack depth tag for nesting). Wording fix, no change of order.
- Composite (3.1): 2n + 1 blocks, 2n junctions = 2 unweighted steps per insertion; with k_ν ≤ k_𝒲: ≤ k_𝒲 + 2 per insertion. Per insertion: 8/γ_exp · c_1(θ½ε″)² · g²rB_𝒲″ · (C′_𝒟)^{k_𝒲+2} · (two geometric sums). With C′_𝒟c_1ρ″ ≤ ¼ each sum ≤ 4/3; the tree sum needs C′_𝒟ρ_A″ ≤ ¼ too. 2.3 states only ≤ ½ (sum ≤ 2, product ≤ 8/3 > 4/3·4/3). Either way ≤ 4 as the factor in q_W^T. Leading term (8C_𝒟/γ_exp)(4/3)(4/3) = 14.2C_𝒟/γ_exp ≤ 16C_𝒟/γ_exp. CONFIRMED.
- Rates: Conc at common rate ½ε″ needs δ_𝒲″ ≥ ½ε″: δ_𝒲″ = (1−θ)δ_A″ ≥ ½δ_A″ ≥ ε″ (WC 6.7: ε″ ≤ ½δ_A″). OK. Output (1−θ)½ε″ = ε″/4 at θ = ½. s-weights: m ≤ 2·3^d(1 + d/ℓ), |π| ≤ e^{2·3^dκ_1}e^{2·3^dκ_1 d/ℓ} ≤ … e^{(ε″/16)d} iff ℓ ≥ 32·3^dκ_1/ε″. ε″/4 − ε″/16 = 3ε″/16. CONFIRMED.
- Omission (minor): Conc at rate ½ε″ uses Lemma 2.1 at κ = θ½ε″ = ε″/4 (junction sums), and (Wt) uses S(ε″/32). On the multiscale lattice this needs the (2.59) RM condition at these rates; 7.2 does not list it. On T^{(k)} (CMP 109/116 small field, unit lattice) Lemma 2.1 is a plain lattice sum and the condition is vacuous. Add one line to B18/RM.

## §4 Check (4)/(e): CMP 116 pp. 12–13, 15–16 images at 300 dpi (this session)
- p. 12: Y_0^{c*} = {b ∈ T^{(k)} : b ⊂ Y_0^c} \ {b_0(c) : c ∈ T^{(k+1)}}; (2.4) sums Z_0 ∈ 𝐃_k under one whole-lattice dμ_{C^{(k)}}(B); (2.6) Π_{b∈T_1^{(k)*}} dX(b). p. 13: "the external gauge field configurations on the whole lattice T_η"; χ* = indicator of T_1^{(k)} \ {b_0(c)}. So in CMP 116 the step-k Gaussian lives on all kept unit bonds of the torus. Λ = T_1^{(k)}, Λ_k^c = ∅. CONFIRMED (page-read, not only text layer). WC with Z_0 := Λ: WC's dist(Z_0, Λ_k^c) > RM is vacuous; the "torus side multiple of LM" step is [I] but harmless (M, L powers of L assumed in Balaban's tori).
- p. 15: Γ_k(Z_0, σ(Z)) = C*Δ_k(σ(Z))CZ_0^c(C^{(k)})^{1/2}(σ(Z)) — no left Z_0 projector printed, but Γ_k only enters through ⟨B, Γ_kX⟩ with B ∈ V(Z_0) and ⟨Γ_kX, C(Z_0)Γ_kX⟩, so rows in Z_0 is exact. X lives on Z (dμ_0(X)|_Z), and Z contains σ_0-cubes. Balaban's second measure is dμ_{(Re C(Z_0,σ)^{−1})^{−1}} = A8's H_σ reading. CONFIRMED.
- p. 16: R_1 (first quadratic form, X-variables), R_2 (measure change on B ∈ Z_0, with det quotient (2.17)), R_3 (bilinear ⟨B, R_3X⟩) all "satisfying (2.16)"; (2.21) bounds them by ½(…)(‖ZX‖² + ‖Z_0B‖²). Side condition e^{−δ_0M/3}e^{16κ_1} < 1. Matches 1-page facts of A16-2 §1.
