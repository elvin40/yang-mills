# SOURCES_FX_R2 — gap R2: κ_fin ≥ κ_final at the last scale

Tags: [V] = read on the source; [P] = proved here; [R] = reduced to a named item; [I] = inference.

## 0. Inputs
- SOURCES_FX_O1.md §4–§6; SOURCES_FX_O1_VERIFY.md items 4–5 (R2 open; route (a) needs κ_final fixed before M; route (b) plausible, not re-derived).
- SOURCES_FX.md §3: final expansion = CMP 116 §2 Lemma 3 (2.38) form, Cammarota [26] criterion.
- To read: CMP 122 II (1.79)–(1.88) and the constant-choice sentences; CMP 116 (C1)–(C5).

## 1. Order of Balaban's constants, as printed [V unless marked]
- L first. CMP 109 p. 264–265 (text layer l. 124): "L is an odd, positive integer > 11". Fixed before everything else.
- κ before M. CMP 109 Theorem 3 (text layer l. 804–809): "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0,1,…,K, then …". "The constants ε_0, ε_1, α_0, α_1 depend on M and satisfy numerous restrictions … The constant γ depends on all other constants."
- M after the earlier block scales. CMP 109 p. 257 (l. 421–423): "we have already several scales of big blocks, for example, the scale M_0 … M_1 … In this paper we choose the size M much bigger than the previously fixed scales." M = L^m.
- CMP 116 repeats the order. Sect. 2 p. 16 (l. 753): "We have assumed, as in Sect. 1, that M is much bigger than κ_1"; p. 16 (C1): "⅛(κ_1 − 1) ≥ (1 − 3δ)κ"; p. 20: "(LM)^4α_0, … bounded by a constant independent of M"; p. 21 (C5): "for κ sufficiently large, and ε_1 sufficiently small". So: κ, then κ_1 ≥ O(1)Lκ, then M ≫ κ_1, then α's, ε_1, then γ (SOURCES_W4 §5 reads the same order).
- CMP 122 II, large-field part: p_0 and g come last. After (1.82): "This condition is satisfied for p_0 large, and g_1 sufficiently small." After (1.88): "for p_0 large and γ small enough." Before (1.95): "We assume that g_k is so small that −2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k)" [garbled RHS; reading from SOURCES_FX_O1 §4 "p_0 ≥ 8κ(100R_k)^d + 4"]. (1.94): "O(1)α^{1/3}… ≤ … βκ for κ large enough"; "α^{1/3} ≤ exp(−(1+β)κ2^d)". So p_0(g) and g are fixed after κ, M, β, α.
- Order used below [I, consistent with all quotes]: L → κ (≥ κ_0), β, δ → κ_1 → M (≥ M(κ)) → α's, ε_1 → p_0, γ (g small). R_j is a function of g_j (§3), so it is fixed only at the end.

Where κ_final sits. κ_final is the tree-decay rate that the final (Z″ = ∅) polymer expansion needs from each large-field component. In Balaban's own per-step version ((1.90)–(1.97), p. 388–390) the small-field links carry exp(−(1+2β)κ d_k), the output carries exp(−(1+β)κ d_k) ((1.97)), and each large-field domain X_h costs exp(2κ(100R_k)^d) (p. 389, "The product over h there is estimated by Π exp 2κ(100R_k)^d"). The convergence step is Cammarota [26] (SOURCES_FX §3), whose entropy constant is combinatorial: Σ_{X∋□} exp(−κd_j(X)) ≤ O(1) (CMP 116 (1.26)), with d_j in M-cube units, so the constant depends on d only. Hence every quantity κ_final is built from (κ, β, d) is fixed before M. [P given the quotes; the volume cost is treated in §2.]

## 2. The source of C_1: (1.79), page image p. 383 [V]
(1.79): T′_k(X)1 ≤ sup exp{Σ_{j=1}^k O(1)M^dR_j^{d+1}d′_j(Z_j)} · Π_{j=1}^k Π_i exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j)) · Π′ exp(−p_0(g_j)).
- The positive exponent is the per-scale COST: Gaussian integrals "exp O(1)|Z_j ∩ Ω_j|" and admissible-sequence sums "exp O(1)(MR_j)^{−d}|Z_j|" (p. 383, lines above (1.79)). The M-dependence is written out (M^d); the O(1) is Balaban's per-site constant. [V]
- (1.80) is a BUDGET with the same shape: κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)). (1.83) spends the n = j+1 term exactly: κ_{j+1}(Z) = κ_j(Z_0) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z). So the closing requirement is C_1 ≥ C_cost, where C_cost is the O(1) of (1.79). [V for the shapes; P for the reading]
- Consequence for route (b): C_1 is a free parameter subject only to C_1 ≥ C_cost and to the p_0-conditions of (1.82), (1.88). Choosing C_1 := max(1, C_cost) makes C_1 ≥ 1 whether or not C_cost depends on M. This removes the only way κ_fin could fail to grow with M. §4 checks the p_0-conditions.

## 3. Scaling of κ_fin in M and R; explicit condition (route (a)) [P]
Inputs. (α) p. 385 image [V]: "for some steps we do not gain the scaling factor L^{−1} (then R_{m+1} = LR_m)". So R_{m+1}/R_m ∈ {1, L} (CMP 122 I p. 177 phrases the same rule from the other side; either way the ratio is a power L^{0,±1}). Write r := R_K/R_{K+1} ∈ {L^{−1}, 1, L}; in every case L + 2r ≤ 3L, and L + 2r ≤ L + 2 if r ≤ 1. (β) R_{K+1} ≥ 1 [R: R_n ≥ 1 is the natural reading of CMP 122 I l. 909 "L^{−N_0+1}R_{k−N_0+1} = 1"; not checked on an image].
Tree form (O1 §4). With ρ_K = LR_{K+1}/R_K, (ρ_K + 2)^dR_K^d = (LR_{K+1} + 2R_K)^d = R_{K+1}^d(L + 2r)^d. Hence
    κ_fin = C_1M^dR_{K+1}/(3√d·4^d(L + 2r)^d).
So κ_fin is ∝ M^d·R_{K+1}, and R_K drops out except through r. Bounds: κ_fin ≥ C_1M^dR_{K+1}/(3√d·12^dL^d) always; κ_fin ≥ C_1M^dR_{K+1}/(3√d·4^d(L+2)^d) if R_K ≤ R_{K+1} (the p. 385 reading).
Volume form (stronger; from O1-R′, d′_{K+1}(S(Y)) ≥ n_f/(3·4^d(ρ_K+2)^d), and #M(Y) = R_K^dn_f M-cubes):
    κ_K(Y) ≥ κ_vol·#M(Y),  κ_vol = √d·κ_fin = C_1M^dR_{K+1}/(3·4^d(L + 2r)^d).
Since d_K(Y) ≤ √d(#M(Y) − 1) (O1 Fact A at side M), the volume form implies the tree form. The volume form is what the final expansion needs, because Balaban's per-step expansion charges large-field domains by VOLUME: p. 389, "The product over h there is estimated by Π exp 2κ(100R_k)^d", i.e. 2κ per M-cube of X_h. For a non-renormalizable final component this cost becomes 2κ·#M(Y) [I: same Mayer-link count, with (100R_k)^d replaced by #M(Y)]. The tree form alone would NOT cover this cost when R_K is large: tree decay per M-cube is only ~κ_fin/R_K^{d−1} in a compact Y.
Requirement. Per M-cube of Y the final expansion needs
    κ_vol ≥ κ_final := 2κ + √d(1+2β)κ + c_d,
(2κ: Mayer-link volume cost; √d(1+2β)κ: tree decay equal to the small-field links' (1+2β)κ of (1.92), so (1.93)–(1.97) run unchanged and output (1+β)κd_K as (1.97); c_d: entropy of unions of M-cubes, CMP 116 (1.26), d only). For d = 4, β ≤ ¼, κ ≥ c_d: κ_final ≤ 6κ. κ_final depends on (d, κ, β) only: no M, R, p_0, g. [P given the cited bounds; the 2κ·#M(Y) transfer is I]
Explicit condition. Using L + 2r ≤ 3L and R_{K+1} ≥ 1, κ_vol ≥ κ_final holds if
    M^d ≥ 3·12^d L^d κ_final / C_1,  i.e. M ≥ 12L(3κ_final/C_1)^{1/d}  (d = 4, κ_final ≤ 6κ: M ≥ 12L(18κ/C_1)^{1/4}).
This is uniform in K, R_K, and g. It is a lower bound on M in terms of L, κ, β, d, C_1. All are fixed before M by §1 (C_1: §2/§4). So route (a) closes: enlarge Balaban's M(κ) by this one condition. [P]
