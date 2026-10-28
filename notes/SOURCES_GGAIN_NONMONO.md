IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_GGAIN_NONMONO — lifting the monotone-history restriction on C_β

Status: complete, unverified (2026-10-28). Task: lift the monotone-history restriction of GGAIN's C_β to the (4.1) segment and the (K1) point, or restate THEOREM2_PROOF_v4 §10 item 7 minimally.
Firewall: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## Ledger
- [ ] §1 monotonicity uses in GGAIN/SM
- [ ] §2 (4.1) segment analysis
- [ ] §3 Lemma C_β-NM
- [ ] §4 (K1)
- [ ] §5 conclusion

## 1. Where GGAIN and SM use monotonicity, and for what

Conventions [V, SOURCES_HHOL_LF_VERIFY V2, CMP 119 (2.6)]: g_k GROWS with k (g_0 is the bare coupling, the smallest). "Monotone history" means g_0 ≤ g_1 ≤ … ≤ g_k. The (4.1) point (h_{k−1}, g) with g < g_{k−1} breaks this only at the last slot.

Read: SOURCES_GGAIN §4.1–4.5, §6.1; SOURCES_SM §2–§5.1; SOURCES_D3W8 §2.2–2.4 (F2′ statement and proof, verbatim).

1.1 GGAIN's own-slot bound uses NO coupling comparison.
 - Lemma G1 (a): Cauchy in s for s ↦ f_Y((g+s)B). Inputs enter only through their sup v = E_0ε_1C_1M^qe^{C_2κ_1}. No g_j, j < k, appears.
 - Lemma G1 (b), G2: P^{(k)} terms g^{−2m}ψ(gB) and the Gaussian absorption. Own coupling only.
 - Lemma G3 (χ_k step): threshold ε_1 is a fixed constant in CMP 116. Own coupling only.
 - (M_r): "on supp χ_k, g_k|B|_Y ≤ rε_1". This is a statement about the OWN coupling g_k and the cut χ_k. It contains no other coupling. So (M_r) is not a monotonicity use. (The task listed "the window inclusion (M_r)" as a candidate use. Refuted by the text of GGAIN §4.1.)
 - Theorem B2-unif (§4.4): hypotheses are "g_k ∈ (0, γ], (U,J) ∈ U^c_{k+1}, X ∈ D_{k+1}", plus Balaban's (C1)–(C5). The inputs enter only through the bound E_0 in C_3 and v.
 - §4.5: C_β = C_ΠS_0, with Π linear and g-free.
 Conclusion 1.1 [P, from the quoted text]: the derivative bound needs only (i) g_k ∈ (0, γ] and (ii) an input sup bound ‖I‖ ≤ E_in for the fixed constant E_in in C_3. It never compares g_k with g_{k−1}.

1.2 SM uses no coupling comparison except through F2′.
 - Fact A (label decay L^{−α_*(k−l)}): from the (L^jη)^5 factor, η = L^{−k}. Scales only, no couplings.
 - Fact B (V-radius R_V): free of ε_1, E_0, and of g_0, …, g_{k−1}.
 - Theorem SM, Lemma HH: constants depend on ‖I‖ and g_k only. SM §5.1 states this: "Theorem SM and Fact B are history-free".
 - The only device that compared couplings, C_g := sup L^{−α_*m/2}g_{i+m}/g_i (SM §4.3), is superseded: GGAIN §6.3 says "SOURCES_SM §4.3's C_g device is no longer needed". It is also not an own-slot item.
 - SM §5.1(a), verbatim: "D3W8 F2′ (R-induced terms) uses g_j ≤ g_{j+1}; off-trajectory histories need not be monotone, so the slot cube must be restricted to monotone histories". This is the ONLY source of the restriction. GGAIN §6.1 inherits it by citation ("every monotone slot history (SOURCES_SM §5.1)").

1.3 What F2′ uses g_j ≤ g_{j+1} for (verbatim from D3W8 §2.3; agrees with SOURCES_HHOL_LF_VERIFY V6).
 (u1) Step 2: "b_k ≤ max_{j≤k} 4g_j^{κ_0} = 4g_k^{κ_0}". The max over the history equals the last entry.
 (u2) Step 2: "a_{k+1} ≤ 32ε′g_k^{κ_0} ≤ g_{k+1}^{κ_0}". This closes the induction for the NEXT step.
 (u3) Statement (i): "a_m ≤ 32ε′g_{m−1}^{κ_0} ≤ 32ε′g_m^{κ_0}". Cosmetic restatement.
 (u4) Side condition "4g_K^{κ_0} ≤ E_0": g_K is the largest coupling on a monotone trajectory, so it bounds every 4g_j^{κ_0}.
 What these feed. F2′ bounds the R-induced inputs a_j. Their only role for the own-slot bound is ADMISSIBILITY: the merged input I_p + I_R must lie in the ball where (W4), (Eps), and GGAIN's sup E_in hold ("Balaban's own merged input … is admissible with E_0 → E_0 + 4g^{κ_0}", D3W8 §2.3). F2′ never compares complex couplings, and never compares a coupling with a coupling: it compares bound SIZES g_j^{κ_0} only (HHOL_LF_VERIFY V6, CONFIRMED).
 (u5) Summability Σ_m g_m^{κ_0} (D3W8 §2.4) uses the trajectory profile 1/g_m² ≥ γ^{−2} + β(K − m). Not used by the own-slot bound.

So the three candidate uses named in the task resolve as: ordering of bound sizes = (u1)–(u4), the real one; window inclusion (M_r) = NOT a monotonicity use; R-term bookkeeping = (u1)–(u2), the same as the first.

## 2. The (4.1) segment: past unchanged, own slot g ∈ [0, g_k], possibly g < g_{k−1}

Setting. h_{k−1} = (g_0, …, g_{k−1}) monotone, all entries in ]0, γ]. Point P_g := (h_{k−1}, g), g ∈ [0, γ]. β_{k+1}(P_g) is the output of step k+1 with own coupling g and the inputs E^{(j)}, R^{(j)}, j ≤ k, built from h_{k−1} (SOURCES_T2_KUNIF (4.1); KUNIF_VERIFY S6(b)).

2.1 Scales ≤ k are unaffected [P]. Every input to step k+1 is an output of steps 1, …, k. Those steps use only g_0, …, g_{k−1} (own coupling of step j is g_{j−1}). The past is monotone. So every use of g_j ≤ g_{j+1} inside steps ≤ k is the original F2′ use on a monotone sequence. The bounds a_j ≤ 32ε′g_{j−1}^{κ_0} ≤ 2g_{j−1}^{κ_0}, j ≤ k, and ‖I_p‖ ≤ E_0 (Lemma F1) hold as in D3W8 §2.3. Nothing at scale ≤ k sees g.

2.2 Scale k+1: which inequality fails [P]. At step k+1 the only new quantity is the own-slot value g. It enters (i) GGAIN's integrand (Lemma G1–G3, (M_r)), and (ii) at most one R-input size at the newest label, if the reading "R^{(k)} has size g_k^{κ_0}" (CMP 119 (2.31)) puts the own coupling there. GGAIN's integrand has no comparison (§1.1). So the only candidate failure is F2′ Step 2 at this one step:
  (u1) "max_{j≤k} 4g_j^{κ_0} = 4g_k^{κ_0}" FAILS when the k-th slot is g < g_{k−1}: the max is g_{k−1}^{κ_0}, not g^{κ_0}.
  (u2) "a_{k+1} ≤ 32ε′g_k^{κ_0} ≤ g_{k+1}^{κ_0}" is the induction step FOR STEP k+2. The (4.1) segment evaluates β_{k+1} only. Step k+2 is never run at P_g. So (u2) is not needed.
  (u4) "4g_K^{κ_0} ≤ E_0" uses g_K as the largest coupling. At P_g every entry is ≤ γ, so 4γ^{κ_0} ≤ E_0 covers it.

2.3 Max-replacement, checked against F2′'s proof text [P]. In Step 1 the coupling sizes enter only through b_k := max_{j≤k}(2g_j^{κ_0}·1[j ≤ k_1] + a_j). Step 1 uses b_k for exactly two things: the Schwarz radius S = E_0/b_k, and the output a_{k+1} ≤ 8ε′b_k. Neither uses "b_k is attained at j = k". Replace (u1) by
  b_k ≤ 4·max(g_{k−1}, g)^{κ_0} ≤ 4γ^{κ_0}.
Then S ≥ E_0/(4γ^{κ_0}) ≥ 1, so Schwarz at s′ = 1 is inside the disc, and a_{k+1} ≤ 32ε′max(g_{k−1}, g)^{κ_0}. The merged input I_p + I_R has sup ≤ E_0 + 4γ^{κ_0}.
 The cost of the replacement. It is NOT a factor 2: max is used directly, so the bound changes from g^{κ_0} to max(g, g_{k−1})^{κ_0}. If one writes the sum g^{κ_0} + g_{k−1}^{κ_0} instead, the factor is ≤ 2. Either way the admissibility radius used by GGAIN is E_in := E_0 + 4γ^{κ_0}. On monotone histories GGAIN needs the SAME E_in, because sup over monotone histories of 4g_k^{κ_0} is 4γ^{κ_0}. So the input radius, and therefore C_3, S_0, and C_β, do not change.
 Task premise checked. The task said "the comparison is only used to bound a sum by its largest term". Correct in effect: b_k is a max over slots of slot sizes, and the identification max = last term is the only place the order enters. Confirmed by the F2′ text quoted in §1.3.

2.4 Stronger version: any past, by the running max [P]. Put G_j := max_{i≤j} g_i (nondecreasing for EVERY history). Induction claim a_j ≤ 2G_j^{κ_0}. Step: b_k ≤ max_{j≤k}(2g_j^{κ_0} + 2G_j^{κ_0}) ≤ 4G_k^{κ_0}; a_{k+1} ≤ 32ε′G_k^{κ_0} ≤ 2G_{k+1}^{κ_0}. The induction closes using only G_k ≤ G_{k+1} and 32ε′ ≤ 2. Admissibility: 4G_k^{κ_0} ≤ 4γ^{κ_0} ≤ E_0. So F2′ (i) holds on ALL of [0, γ]^{k+1} with g_m^{κ_0} → G_m^{κ_0}. What is lost off the monotone set: only the summability Σ_m g_m^{κ_0} (u5), which uses the trajectory profile and which the own-slot bound does not use.
 Why this matters. KUNIF §4.3 evaluates β on CLAMPED histories g̃_i = φ(ũ_i) during the IVT. Those need not be monotone in the PAST either. So the monotone-past hypothesis of the task is weaker than what the shooting evaluates; 2.4 covers the clamped pasts too.

2.5 Second reading: β from the pure part (D3W8 route (a)) [P, given the D3W8 split]. D3W8 §2.4: "B_{k+1}(c) is defined from the pure part"; "E_R carries no counterterm" (CMP 119 p. 259, p. 279 [V, KUNIF_VERIFY S7]). Then β_{k+1} = Π(E_pure^{(k+1)}) = Π(G(I_p)), and I_p is built from pure terms only. F2′ is then not used for β at all. The pure chain needs ‖I_p‖ ≤ E_0 (Lemma F1, Balaban's induction), which is history-free (SM §5.1: constants depend on ‖I‖ and g_k only). On this reading monotonicity enters β nowhere, and C_β′ = C_β.
 On the literal reading of GGAIN §4.5 (β = Π of the whole E^{(k+1)}), 2.3–2.4 give the same constant. Both readings give C_β′ = C_β.

## 3. Lemma C_β-NM

Lemma C_β-NM [P, given the inputs listed; unverified]. For every step k, every past h_{k−1} ∈ ]0, γ]^k (monotone or not), and every g ∈ [0, γ]:
  |β_{k+1}(h_{k−1}, g) − β_{k+1}(h_{k−1}, 0)| ≤ C_β′ g,   C_β′ = C_β = C_ΠS_0 (GGAIN §4.5, §6.1).
The constant is uniform in k, K, the past, and g.
Inputs. Exactly GGAIN's: Lemma G3 (reduced), (M_r), Balaban's (C1)–(C5), small field only; plus D3W8's (W4), (Eps), Lemma F1, 32ε′ ≤ 1; plus ONE changed side condition: 4γ^{κ_0} ≤ E_0 in place of 4g_K^{κ_0} ≤ E_0. The new condition is a smallness condition on γ (κ_0 is large and E_0 is fixed before γ). It is implied by the old one on Balaban's trajectory when g_K = γ, and it is of the same type.
Proof.
 Step 1 (admissibility at P_g for g ∈ ]0, γ]). By §2.4 (running max; or §2.3 for monotone pasts), the merged input at step k+1 has sup ≤ E_in = E_0 + 4γ^{κ_0}. This is the same E_in GGAIN uses on monotone histories (§2.3). On the pure-part reading (§2.5) the input is I_p with sup ≤ E_0, history-free.
 Step 2 (derivative). GGAIN Theorem B2-unif and §4.5 need only g ∈ (0, γ] and the input sup E_in (§1.1). The inputs do not depend on g (they are built from h_{k−1}). So |∂_gβ_{k+1}(h_{k−1}, g)| ≤ C_β on (0, γ].
 Step 3 (endpoint). A derivative bound on (0, g] gives |β(P_g) − β(P_s)| ≤ C_β(g − s) for 0 < s < g. Let s → 0. The limit equals β_{k+1}(h_{k−1}, 0) if β_{k+1}(h_{k−1}, ·) is continuous at 0 (KUNIF_VERIFY S6(c)). In the B variables the measure dμ_{C^{(k)}}(B) is g-free; the curly bracket and B′ = gCB − hD(gCB) tend to 0, χ_k → 1, and the P-part g^{−2}ψ(gB) = O(g|B|³) → 0, all dominated by GGAIN's majorants (Lemma G1–G2). So the activities converge, and the convergent polymer series converges uniformly. [R: dominated convergence, standard, not written line by line.] ∎
Remark on the constant asked for. The task anticipated C_β′ ≤ 2C_β. The F2′ proof uses b_k only as a max (Schwarz radius and output size), so the max-replacement costs nothing: C_β′ = C_β. A factor 2 appears only if one writes g^{κ_0} + g_{k−1}^{κ_0} instead of the max, and even then only inside E_in, which GGAIN already sets to E_0 + 4γ^{κ_0}.

## 4. (K1) at the point (h_{k−1}, 0)

(K1): β_{k+1}(h_{k−1}, 0) = β_{k+1}(0), history-free.
Source: CMP 109 p. 268, verbatim [V, KUNIF_VERIFY S8]: "the expression under the exponential above vanishes at g_k = 0". The exponent is P^{(k)} + {…}, and the curly bracket carries the past inputs E_k.
Does (K1) use monotonicity? No [P]. At g = 0 the fluctuation B′ = 0, so {E_k(U_k(exp iB′)) − E_k(U_k)} = 0 IDENTICALLY, whatever the inputs are. The R-induced and R-operation inputs sit inside the same merged E_k (D3W8 §2.3: "E_k = E_pure + R′ + E_R"), so they vanish there too. No input bound is used. So no admissibility, no F2′, and no ordering of couplings enter (K1). (K1) holds at (h_{k−1}, 0) for every past, monotone or not. The value is the one-loop Gaussian quantity β_{k+1}(0).
Residual (unchanged, not new): the off-trajectory evaluation of β as a slot function (B7/L5), and the definition of the step at g = 0 as the limit of Step 3 of §3 (or as the one-loop quantity by definition, LEMMAS_DE_VERIFY §3 item 3).
Combined. Lemma C_β-NM + (K1) give (4.1) and hypothesis (i) of Lemma D″ with C_1 = C_β, on every past in ]0, γ]^k, including the clamped pasts of KUNIF §4.3.

## 5. Conclusion: item 7 restated

Proposed replacement for THEOREM2_PROOF_v4 §10 item 7 (now: "(H0) … |β_j(g) − β_j(0)| ≤ C_1 g uniform in j and history [Balaban]"):
 7′. (Lemma C_β-NM + (K1)) For every past h_{k−1} ∈ ]0, γ]^k and every g ∈ [0, γ]: |β_{k+1}(h_{k−1}, g) − β_{k+1}(0)| ≤ C_β g, C_β = C_ΠS_0, uniform in k, K, and the past. Status: [P, unverified], from GGAIN Theorem B2-unif + §4.5, with D3W8 F2′ Step 2 rewritten with the running max G_k = max_{i≤k} g_i (§2.4), side condition 4γ^{κ_0} ≤ E_0, and (K1) from CMP 109 p. 268. Inherits GGAIN's conditions: Lemma G3 (reduced), (M_r), (C1)–(C5), small field only; and B7/L5 (off-trajectory slot function). Alternative source kept: (H0) as Balaban's hypothesis at odd L > 11.
The step that blocked GGAIN on non-monotone points was F2′ (u1), "max_{j≤k} 4g_j^{κ_0} = 4g_k^{κ_0}". It is a max identification only. Replacing it by the running max loses nothing for one step. The induction still closes (G_k is nondecreasing for every history). Only the summability Σg_m^{κ_0} (u5) needs the trajectory, and β does not use it.
The monotone restriction in GGAIN §6.1 and SM §5.1(a) can therefore be dropped for the own-slot bound and for C_β [P]. On D3W8's pure-part definition of β (§2.5) it never applied to β in the first place.

Caveats (not new; listed so the restatement is not read as more than it is).
 (c1) R-operation inputs and the own coupling. If the newest R-input R^{(k)} depends on the own coupling g (reading of CMP 119 (2.31) with g_j at j = k), then ∂_g also hits an input. GGAIN §4 does not treat this, on monotone histories either. With thresholds frozen at x* (D3 (L0); HHOL_LF_VERIFY V4, V6) the R-input sizes are (x*_j)^{κ_0} and do not depend on slot values. On the pure-part reading (§2.5) the point is void. Not introduced by this file.
 (c2) Large field. GGAIN is small-field only (GGAIN_VERIFY §7(ii)); GGAIN_LF (unverified) is separate. If β is taken from the large-field-completed E^{(j)}, its own-slot derivative is still open, monotone or not.
 (c3) Endpoint continuity at g = 0 (§3 Step 3) is [R], dominated convergence with GGAIN's majorants, not written line by line.

## Ledger (authoritative; supersedes the checklist at the top)
- [x] §1 Monotonicity uses: only F2′ (u1)–(u4), all comparisons of bound SIZES g_j^{κ_0}. (M_r) is NOT a monotonicity use (own coupling only). GGAIN Lemmas G1–G3, Theorem B2-unif, §4.5 and SM Fact A, Fact B, Theorem SM compare no couplings. [P, from quoted text]
- [x] §2 (4.1) segment: scales ≤ k unchanged; at scale k+1 the failing inequality is (u1) max = last term; (u2) is not needed for one step; max-replacement checked against F2′ Step 1 text: b_k is used only as a max (Schwarz radius, output size). Running max G_k closes F2′ for every history with side condition 4γ^{κ_0} ≤ E_0. [P]
- [x] §3 Lemma C_β-NM with C_β′ = C_β (no factor 2; ≤ 2C_β only if the sum is written instead of the max, and even then absorbed in E_in). Endpoint by continuity at 0 [R]. [P given GGAIN's inputs]
- [x] §4 (K1) at (h_{k−1}, 0): uses no input bound, so no monotonicity; holds for every past. [P from CMP 109 p. 268 [V]]
- [x] §5 Item 7 restated as 7′ above; GGAIN's monotone restriction dropped for C_β. Caveats c1–c3 inherited, not new.
- Correction to the task premise: the task restricted to MONOTONE pasts. KUNIF §4.3 evaluates β on clamped pasts g̃_i = φ(ũ_i), which need not be monotone. §2.4 covers them; a monotone-past lemma alone would not.
- Needs: one independent verifier pass of §2.3–§2.4 against D3W8 §2.3, and of §1.1 against GGAIN §4.

STATUS: COMPLETE (unverified).
