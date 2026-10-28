IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_GGAIN_NONMONO verification (2026-10-28)

## V1. F2′ Step 2 text (D3W8 §2.3) vs running max
Read verbatim. Step 1 uses b_k := max_{j≤k}(2g_j^{κ_0}1[j≤k_1] + a_j) only for S = E_0/b_k and a_{k+1} ≤ 8ε′b_k. Step 2: claim a_j ≤ 2g_j^{κ_0}; "b_k ≤ max_{j≤k} 4g_j^{κ_0} = 4g_k^{κ_0}"; then a_{k+1} ≤ 32ε′g_k^{κ_0} ≤ g_{k+1}^{κ_0}.
No telescoping sum, no difference b_j − b_{j−1}. The bound is a max of slot sizes; order enters only at "= 4g_k" and at "g_k ≤ g_{k+1}" (next-step closure).
Running max check: claim a_j ≤ 2G_j^{κ_0}. b_k ≤ max_j(2g_j^{κ_0} + 2G_j^{κ_0}) ≤ 4G_k^{κ_0}. a_{k+1} ≤ 32ε′G_k^{κ_0} ≤ G_{k+1}^{κ_0} (32ε′ ≤ 1, G nondecreasing). Closes for every history. CONFIRMED.
"Unroll" paragraph is explanatory only; not used in the induction.

## V2. Grep GGAIN/SM for monotone/increasing/ordered/g_j ≤ g_{j+1}
Hits: GGAIN 6.1 "every monotone slot history (SOURCES_SM §5.1)" — citation, inherits SM 5.1(a). SM 5.1(a) "D3W8 F2′ (R-induced terms) uses g_j ≤ g_{j+1}; ... restricted to monotone histories". Other "order" hits are Taylor order / order of constants / append order: not uses.
GGAIN §4 read in full (G1–G3, B2-unif, 4.5): only g_k, ε_1, E_0 (input sup), fixed constants. No g_j, j<k. (M_r) is about g_k on supp χ_k only. CONFIRMED: the only monotonicity use is via F2′.
Note: GGAIN line 22, "g_k ≤ γ ≪ ε_1 in Balaban's order of constants" (γ chosen last).

## V3. Input radius / C_β′ = C_β / side condition
GGAIN never names "E_in = E_0 + 4γ^{κ_0}". Its constants are built on Balaban's (2.26) factor 2E_0 (C_3 contains 2E_0) and SM's Theorem SM / (Eps) hold for ‖I‖ ≤ 2E_0. Under 4γ^{κ_0} ≤ E_0, E_0 + 4γ^{κ_0} ≤ 2E_0, so the merged input lies in the radius GGAIN's constants already cover. Conclusion C_β′ = C_β holds; the wording "GGAIN already sets E_in = E_0 + 4γ^{κ_0}" is a misattribution (CORRECTED: read "≤ 2E_0, the radius of C_3 and (Eps)").
Side condition: old F2′ condition 4g_K^{κ_0} ≤ E_0, required uniformly over the slot cube ]0,γ] (g_K can equal γ), is already 4γ^{κ_0} ≤ E_0. γ is chosen last in Balaban's order (GGAIN l.22 "g_k ≤ γ ≪ ε_1"), E_0 earlier, so it is a γ-smallness condition of the existing type. Not new. CONFIRMED.

## V4. KUNIF §4.3 clamped pasts
Quote (KUNIF §4.3): "During the IVT, β is evaluated on clamped histories g̃_i = φ(ũ_i) ∈ ]0, γ]. The proof needs only the bracket (a″) on each such history, and (4.1) gives it pointwise". Also (4.4): bracket holds "for every admissible history". Confirmed these are what the shooting evaluates.
KUNIF does NOT state that clamped pasts fail monotonicity. That is the author's inference; checking v4 next.
KUNIF_VERIFY item 3(a) (verbatim): "(4.1) via GGAIN needs the monotone restriction removed for β ... removal is plausible but not written." Item 7 restatement suggested there: "|∂β_j/∂g_{j−1}| ≤ C_β on {admissible past} × [0, γ], including non-monotone pasts".

## V5. Do clamped pasts fail monotonicity?
v4 §2.4 (l.113, verbatim): "A clamped history can violate the growth side of (c′): from max(a, c) − max(b, c) ≥ min(a − b, 0) one gets only u_m ≥ u_n − D′". Also (5.1) is a window bracket with ±2R slack, so per-step β_i need not be positive, and ũ_{k+1} = ũ_k − β_{k+1}(φ(ũ_k)) can increase. So clamped (and even unclamped short-window) pasts can be non-monotone. Author's §2.4 claim CONFIRMED, but the source is v4 §2.4, not KUNIF §4.3 (KUNIF does not say it).
Scope note: whether β is DEFINED on such pasts is L5/B7 (v4 item 8), unchanged.

## V6. (K1) at g = 0
CMP 109 pdf page 20 = printed p. 268 (pdftotext -f 20 -l 20), verbatim: "Let us remark that the expression under the exponential above vanishes at gk = 0". The exponent is P^{(k)} + {…} of (2.12)/(2.13).
The bracket is a difference of the same input functional E_k at the fluctuated and unfluctuated configuration; the fluctuation enters only through B′ = g_kCB − hD(g_kCB) (GGAIN l.9, l.56). At g = 0, B′ = 0, so the bracket is 0 for ANY input, including R′ and E_R inside the merged E_k. χ_k = 1 at B′ = 0. The P-part g^{−2}ψ(gB) = O(g|B|³) → 0 (limit, not a value; GGAIN 4.1(b)). No input bound, no F2′, no ordering used. CONFIRMED. The "value at 0" is a limit; this is c3 / LEMMAS_DE_VERIFY §3 item 3 (one-loop by definition), already listed.

## V7. Caveats and grades
c1: the frozen-threshold remark (x*_j)^{κ_0} controls R-input SIZES. It does not show that the R-input FUNCTION R^{(k)} is g-independent. On the literal reading (β = Π of whole E^{(k+1)}), ∂_g hitting R^{(k)} is open, monotone or not. Void on the pure-part reading (D3W8 §2.4: "B_{k+1}(c) is defined from the pure part"). CORRECTED (sharpened).
c2: correct; small field only. c3: correct; [R] dominated convergence.
Scope (new, c4): the sweep covers GGAIN, SM, D3W8. Balaban's own R-operation bounds (CMP 119 (2.31)) and the off-trajectory small-field induction (SM §5.1, itself [reduced]) are inputs, not swept for history order here.
Grades: (1) CONFIRMED (no telescoping; max only; running-max induction closes with 32ε′ ≤ 1). (2) CONFIRMED with wording correction: C_β′ = C_β because E_0 + 4γ^{κ_0} ≤ 2E_0, the radius of C_3 and (Eps); GGAIN does not itself name E_0 + 4γ^{κ_0}. (K1) CONFIRMED. (3) CONFIRMED, source corrected to v4 §2.4 l.113 (KUNIF §4.3 does not say clamped pasts are non-monotone). (4) CONFIRMED with c1 sharpened and c4 added.
Item 7 → 7′: YES, as a [P] item, with inherited conditions G3 (reduced), (M_r), small field, L5/B7, SM §5.1 [reduced], and c1 on the literal reading (void on the pure-part reading). Keep (H0) as alternative source.
