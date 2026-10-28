# SOURCES_A17_A19 verification (independent)

Date 2026-10-28. Firewall kept.

## V1. CMP 109 pp. 266–268 (images, 300 dpi)
- (2.9) p. 266: χ_k = Π_{b ∈ T^(k) \ {b_0(c): c ∈ T^(k+1)}} χ({|B′(b)| < ε_1}). Product range CONFIRMED as quoted.
- p. 267: "The function hB is equal to 0 everywhere, except the set {b_0(c): c ∈ T^(k+1)}." CONFIRMED. hD̃ therefore vanishes on every cut bond.
- p. 268: "using the δ-functions δ(Q̃B′) we eliminate the variables B′(b_0(c)) … Denoting the remaining variables by B we have B′ = CB". CONFIRMED. The remaining bond set equals the (2.9) product range.
- p. 268 (2.12): every occurrence is g_kCB − hD̃(g_kCB), so the (2.9) variable equals g_kCB − hD̃(g_kCB). Note: p. 267 prints "B = g_kB′" for the scaling; (2.12) fixes the direction (old = g_k·new). The order on p. 267–268 is linearize, scale, then eliminate.
- "C = identity on remaining bonds" is NOT printed. It is the only reading of "denoting the remaining variables by B" in which B are the same coordinates; the alternative (C mixes remaining components) has no textual support. Tag [I], strong.
- p. 266–267 also prints: "The above restrictions imply also restrictions on B′(b_0(c)), with ε_1 replaced by O(ε_1)". Consistent with the identity (cut bonds exact, eliminated bonds O(ε_1)).

## V2. CMP 116 pp. 6–9 (images)
- (1.19) B′ = g_kCB − hD̃(g_kCB) and (1.20) |B′| ≤ O(1)g_k|B| + 4C_2(O(1)g_k|B|)² ≤ C_1g_k|B| < C_1ε_1 CONFIRMED as quoted. (1.20) bounds B′ by B, so the author's §2.1 point (wrong direction for A17) is CORRECT.
- (1.34) {B: |B| < ε_1g_k^{−1} on Y} and (1.36) |V′_k| ≤ E_0ε_1C_1M^q exp C_2κ_1 exp(−(1−2δ)κd_k(Y)) CONFIRMED.
- ε_1 conditions printed in CMP 116 §1 (pp. 6–7): (i) "e^{32κ_1}ε_1 is smaller than an absolute constant" (for (1.21)); (ii) "4B_0C_1e^{16κ_1}ε_1 ≤ ¼α_2" (p. 7). The author writes ½α_2; the image shows ¼α_2. CORRECTION (minor; still an upper bound). (iii) C_1ε_1 ≤ ε_3 is not printed; it is needed to feed (1.20) into |B′| < ε_3 of (1.15)–(1.18). Implicit upper bound [I]. (iv) (1.22) |t_□|^{−1} < 8B_0C_1e^{16κ_1}α_2^{−1}ε_1 ≤ ½ follows from (ii); upper bound. D̃ analyticity (CMP 109 p. 267) needs small B: upper bound.
- No lower bound on ε_1 appears in §1. The t_□ circle (1.22) is chosen pointwise in g_k|B|, and the expansion (1.10)/(1.23) has no ε_1 in it; ε_1 enters (1.29)/(1.36) only because Balaban replaces g_k|B| by ε_1 (p. 8: "Another possibility is to use the expression g_k|B| instead of ε_1"). So V′_k is the same function on the larger domain (unique continuation). C9′ for CMP 116 §1: CONFIRMED, with the ¼α_2 correction.
- Caveat on C9′ framing: Balaban uses ONE ε_1 for the cut (2.9) and the domain (1.34). C9′ = Balaban's construction at a smaller admissible ε_1, plus Lemma 1 re-applied at ε̂_1 = ε_1/r (needs ε̂_1 itself admissible for §1's upper bounds). Its global validity needs every ε_1 condition in CMP 116 §2, 119, 122 to allow the smaller ε_1 (no lower bound fixed before ε_1). Author lists this as not done; I confirm it is open.

## V3. CMP 116 pp. 10–12 (images) + norm check
- (2.3) p. 12 CONFIRMED verbatim: Y_0^{c*} = {b ∈ T^(k): b ⊂ Y_0^c} \ {b_0(c)}, χ_k = χ_{k,Y_0}χ_{k,Y_0^c} = Σ_{P⊂Y_0^{c*}} (−1)^{|P|} χ_{k,Y_0}χ^c_{k,P}, χ^c_{k,P} = Π_{b∈P} χ({|B(b)| ≥ ε_1/g_k}). Balaban himself writes the cut directly in B at ε_1/g_k on the non-b_0 bonds. This is printed support for the identity B′(b) = g_kB(b) on cut bonds.
- Norm: CMP 116 p. 5 bounds H(s)X "by B_0e^{16κ_1}|X| in all norms of Theorems 3.1–3.10 [13]". CMP 99 (3.41) defines |A|^{(α)} as sup_j sup_b (L^jη)^{−α}|A(b)|; the unweighted |A| is the per-bond sup. So R1 (|B| on Y = max over bonds of Y of |B(b)|) is the paper's convention. "|B| < ε_1g_k^{−1} on Y" as a pointwise-on-Y condition matches. [P via CMP 99 (3.41); R1 upgraded to supported reading.]
- C on remaining bonds: not printed as "identity"; (2.3) is consistent only with C|_{remaining} = I (else Balaban's own rewrite of χ_k in B would be wrong). [I, strong; printed-consistent.]
- P^(k) part: p. 10 analyticity domain {B′: e^{16κ_1}|B′| ≤ a_1 on Y}; (1.40) needs e^{16κ_1}|B′| ≤ ⅓a_1; p. 11 "Taking B′ as in (1.19) we obtain the above bound with |B′| replaced by C_1ε_1" CONFIRMED. The condition 3e^{16κ_1}C_1ε_1 ≤ a_1 is used, not stated: upper bound [I]. (1.43) |Q| ≤ C_3ε_1M^4 … also carries ε_1 linearly (scales by 1/r under C9′).
- Verdict claim (1): CONFIRMED. supp χ_k ⊂ {g_k|B(b)| < ε_1 ∀ cut bonds} = {g_k|B|_Y < ε_1} (B lives only on cut bonds). Margin r = 1, no slack. (1.20) gives only the converse inclusion: CONFIRMED.
