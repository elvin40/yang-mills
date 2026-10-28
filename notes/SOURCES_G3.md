IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_G3 — Lemma G3: the g-derivative of the small-field cut χ_k

Date: 2026-10-27. Status: complete when §7 is present; unverified (Claude Opus).
Inputs: SOURCES_GGAIN §6–§7; SOURCES_GGAIN_VERIFY item 6; SOURCES_HHOL §0–§2; SOURCES_SM §4; CMP 109 (2.9); CMP 116 (2.22), (2.31). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md were not read.
Tags: [P] proved here; [R] reduced to a named input; [I] inferred; [V] verified on the pages.

## 1. What the cut is, on the page

1.1 CMP 109 (2.9), p. 266 [V, pdftotext; page image check in §1.3]: χ_k = Π_b χ({|B′(b)| < ε_1}). The variable B′ is the group-angle fluctuation (U = e^{iB′}V up to the gauge map). By SOURCES_SM §4.1, B′ is a g-free function of B̃ = g_kB. So χ_k is g-free in B̃ (equivalently in B′), and equals 1{|B′(g_kB)| < ε_1} in the Gaussian variable B. This matches GGAIN_VERIFY item 6.
1.2 Verbatim, directly after (2.9), p. 266 [V, pdftotext]: "Another possibility is to take g_k/γ_k ε_1 instead of ε_1, where γ_k = C log(L^kε)^{−1} with C sufficiently large. It has the advantage that the functions E^{(j)}, β_j are analytic functions of the effective coupling constants, but it has some disadvantages in perturbative calculations also. We have formulated the implications of both possibilities in the inductive description."
Reading [I, to be checked on the image]: with the cut |B′| < g_kε_1/γ_k, the cut in the Gaussian variable B is |B| ≲ ε_1/γ_k (B′ ≈ g_kB to first order). That domain is FREE of g_k. So Balaban himself names the reference cut (Route 1), with a scale-dependent but g-free radius.
1.3 Page image CMP 109 p. 266 (PDF p. 18, pdftoppm) [V]: (2.9) reads χ_k = Π_{b ∈ T^{(k)} \ {b_0(c): c ∈ T^{(k+1)}}} χ({|B′(b)| < ε_1}). The "Another possibility" sentence reads as quoted in 1.2, with "γ_k = C log(L^kε)^{−1}".
1.4 The inductive assumption, CMP 109 p. 263–264 [V, pdftotext]: E^{(j)} "is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic)"; β_{j+1} "is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives." Reading [I]: "C^∞" goes with the sharp cut (2.9) at radius ε_1; "(or analytic)" goes with the alternative cut of 1.2. Balaban proves neither (N1_VERIFY Part 1).
1.5 Caution on γ_k [I, flagged]. Read literally, γ_k = C log(1/(L^kε)) grows like C/(β_0g_k²) away from the last scale and vanishes at L^Kε = 1. Then the B-radius ε_1/γ_k is O(ε_1g_k²) and the large-field gain e^{−c(ε_1/γ_k)²} is NOT small. The literal formula therefore cannot be the intended one. The consistent reading is γ_k ≍ a g-free majorant of g_k built from the scale alone (e.g. [C log(1/(L^kε))]^{−1/2} with the asymptotic-freedom tie g_0^{−2} ≈ β_0 log(1/ε)). Then g_kε_1/γ_k ≍ ε_1 and the cut in B is a g-free radius ≍ ε_1/γ_k. Whatever γ_k is, it is a function of (k, L, ε) only, so the cut built from it is g-free. That is all §3 uses.
1.6 CMP 116 p. 12, (2.3), page image [V]: χ_k = χ_{k,Y_0}χ_{k,Y_0^c} = Σ_{P ⊂ Y_0^{c*}} (−1)^{|P|}χ_{k,Y_0}χ^c_{k,P}, with χ^c_{k,P} = Π_{b∈P} χ({|B(b)| ≥ ε_1/g_k}). So in CMP 116 the cut acts on the Gaussian variable B itself, per bond, with radius ε_1/g_k. The surface {|B(b)| = ε_1/g_k} is an exact round sphere in R^n, n = N² − 1. (CMP 109 (2.9) cuts B′; the switch to B is Balaban's, and is the (M_r) "[check]" item of GGAIN §7; not used below.)
1.7 Decision on the brief's Route-1 question [P]. In G-gain, ∂_{g_k} differentiates the step map at fixed history, with g_k in the action AND in χ^c_{k,P}. β_{k+1} = Π(E^{(k+1)}) is a g-free linear functional (GGAIN §4.5), so ∂β_{k+1}/∂g_k contains ∂_{g_k} of the cut. The inductive assumption 1.4 asks for smoothness of β_{k+1} as a function of g_k with the construction as written. Hence with Balaban's cut (2.3) the surface term is real and must be bounded. It disappears only if the cut is redefined with a g-free radius (Balaban's alternative 1.2), which is a different construction (§3).

## 2. Route 2: direct surface estimate on Balaban's own cut

2.1 The derivative [P]. Write χ_b := 1{|B(b)| < r}, r := ε_1/g_k, B(b) ∈ R^n, n = N² − 1. Then χ^c_b = 1 − χ_b. In one term T of (2.14) the cut factor is χ_{k,Y_0}χ^c_{k,P} = Π_{b∈Y_0}χ_b Π_{b∈P}χ^c_b. By the product rule, ∂_{g_k} of the cut is a sum over b ∈ Y_0 ∪ P of one-bond terms. For one bond, at fixed other variables, polar coordinates in R^n give
  ∂_g ∫ χ_b(B) G(B) dB = −(ε_1/g²) ∫_{|B(b)| = r} G dσ(B(b)) dB_{≠b},
for G continuous and Gaussian-dominated (Fubini, then d/dr of a ball integral). For χ^c_b the sign flips. The sets P, Y_0, Z_0 are g-free, so no other cut term arises.
Numerical check [num, python -I, no file kept]: for Z ~ N(0, I_8), d/dg P(g|Z| < ε) = −c_n g^{−1}(ε/g)^n e^{−ε²/(2g²)}, c_n = 2^{1−n/2}/Γ(n/2); finite difference matches to 8 digits at ε = 0.3, g = 0.05, 0.08, 0.12.

2.2 One-bond bound [P given input (Q)]. Input (Q) [R]: Balaban's majorant chain (2.15)–(2.26) bounds |integrand| by a REAL Gaussian density p_Γ(B) times a B-free constant, and the bound stays valid with B(b) held fixed, at the cost of a factor e^{a|B(b)|²}, a = O(α_4 + γ_2 + e^{−δ_0M/3}). The covariance Γ obeys λ_min(Γ) ≥ c_− > 0 and ‖Γ‖ ≤ Λ, with c_−, Λ depending on L, M only. [I: Γ is C^{(k)}(Z_0,0) up to the factors (2.16)–(2.21); C^{(k)−1} is a bounded local lattice operator, so λ_min(C^{(k)}) ≥ 1/‖C^{(k)−1}‖; marginal of Γ at b has det ≥ c_−^n and top eigenvalue ≤ Λ.]
Then the one-bond surface term obeys
  (ε_1/g²)·|S^{n−1}| r^{n−1}(2πc_−)^{−n/2} e^{−(1/(2Λ) − a) r²} · T_maj
  = A_n ε_1^{−1} t^{n+1} e^{−(1/(2Λ) − a)t²} · T_maj,  t := ε_1/g,  A_n := |S^{n−1}|(2πc_−)^{−n/2}.
Here T_maj is Balaban's majorant (2.23)/(2.26) of the same term. With a ≤ 1/(4Λ) and t^{n+1}e^{−t²/(8Λ)} ≤ (4Λ(n+1))^{(n+1)/2}e^{−(n+1)/2} =: D_n,
  one-bond term ≤ U(g)·T_maj,  U(g) := A_nD_n ε_1^{−1} e^{−ε_1²/(8Λg²)}.
U is increasing in g, so sup_{0<g≤γ}U = U(γ). No 1/g survives: the factor g^{−(n+1)} is eaten by the Gaussian at radius ε_1/g. This is GGAIN_VERIFY item 6 with explicit constants; the n-dependence sits in A_nD_n.

2.3 Bond sum and polymer sum [P given (Q)]. The number of bonds in Y_0 ∪ P ⊂ Z_0 is ≤ c_d|Z_0| ≤ c_1(d_k(Z_0) + 1), c_1 := 24c_dM^4, by (2.30) [V, p. 18: (3·2³)^{−1}M^{−4}|Y| ≤ d_k(Y) ≤ M^{−4}|Y| − 1, so |Z_0| ≤ 24M^4(d_k(Z_0)+1)]. Use d + 1 ≤ (1 + (δκ)^{−1})e^{δκd}. So
  |∂_g(cut part of T)| ≤ c_1′U(g), c_1′ := c_1(1 + (δκ)^{−1}),
  × e^{δκd_k(Z_0)} T_maj.
The extra e^{δκd} is taken from the (1 − 4δ)κ decay of (2.28) (one more δ, as in GGAIN §4). The sums over D, P, Z_0 and the Mayer step (2.29)–(2.32) then run unchanged, because they act on T_maj. Through the Kotecký–Preiss derivative step (GGAIN §4.4 (ii)), the cut contributes to S_0 the additive term
  S_χ := c_2 A_nD_n ε_1^{−1} e^{−ε_1²/(8Λγ²)},
uniform in g_k ∈ (0, γ], in X, k, and the volume. For every p > 0, S_χ ≤ C_p(ε_1, n, Λ)γ^p. The term is nonzero but harmless; it does not change the order of S_0.
2.4 What is new against GGAIN. GGAIN §7 stated the per-bond bound without proof and without the bond sum. 2.1–2.3 supply both. The only non-quoted input is (Q): the conditional (one-bond-fixed) form of Balaban's Gaussian domination, and a lower spectral bound on the dominating covariance. Neither is a new estimate type; both are line-level readings of (2.15)–(2.26).

## 3. Route 3: smooth cut χ̂, and Route 1: g-free radius

3.1 Smooth cut. Take χ̂ ∈ C^∞, 0 ≤ χ̂ ≤ 1, χ̂(s) = 1 for s ≤ ½, χ̂(s) = 0 for s ≥ 1. Put χ̂_b := χ̂(g|B(b)|/ε_1), χ̂^c_b := 1 − χ̂_b. Support bounds: supp χ̂_b ⊂ {g|B(b)| ≤ ε_1} (Balaban's small-field domain kept), supp χ̂^c_b ⊂ {g|B(b)| ≥ ε_1/2}.
3.2 Every use of sharpness in CMP 116 §2, checked on the page images [V]:
 (a) (2.3), p. 12: χ_{k,Y_0^c} = Π_{b}(1 − χ^c_b) = Σ_P (−1)^{|P|}χ^c_{k,P}. This is the binomial expansion of a product. It uses only χ_b + χ^c_b = 1. Survives for χ̂.
 (b) (2.22), p. 16: χ_{k,Y_0}χ^c_{k,P} ≤ exp(−½γ_2(ε_1²/g_k²)|P| + ½γ_2‖PB‖²). It uses χ ≤ 1 and, for b ∈ P, |B(b)| ≥ ε_1/g_k on the support. For χ̂ it holds with ε_1 → ε_1/2.
 (c) (2.31), p. 18: the P-sum is controlled by the factor e^{−(1/10)γ_2(ε_1²/g_k²)|P|} from (b) and the condition (1/20)γ_2ε_1²/γ² ≥ 4κ. Only the |P| factor is used. Survives with ε_1 → ε_1/2, i.e. γ smaller by a factor 2.
 (d) Analyticity/sup uses (GGAIN §2, S1, S2): only "g|B(b)| ≤ ε_1 on supp χ_{k,Y_0}". Survives (3.1 keeps this support).
 (e) CMP 109 p. 266–267: the cut implies restrictions on B′(b_0(c)) "with ε_1 replaced by O(ε_1)". Support bound only. Survives.
No place on these pages uses χ² = χ. [V for pp. 12, 16, 18 of CMP 116 and p. 266 of CMP 109; the large-field papers CMP 119/122, where χ_k reappears in the small/large decomposition, were NOT checked.]
3.3 Cost. ∂_gχ̂_b = χ̂′·|B(b)|/ε_1 is supported in the shell ε_1/2 ≤ g|B(b)| ≤ ε_1 and bounded there by ‖χ̂′‖_∞/g. The shell keeps a Gaussian factor e^{−ε_1²/(8Λg²)}. So the per-bond factor is ‖χ̂′‖_∞ g^{−1}e^{−ε_1²/(8Λg²)}, uniform in g, and no surface measure or input (Q) lower spectral bound is needed (only the upper bound Λ). Bond and polymer sums as in 2.3. This is GGAIN route (b), now with the page check.
3.4 Route 1 (g-free radius). If the cut radius in B is a number R_k depending on (k, L, ε) only, then ∂_gχ = 0 and the cut needs no estimate. Balaban names this option (1.2) and links it to analyticity in g (1.4). Requirements: g_kR_k ≤ ε_1 on the slot domain (analyticity), and R_k² ≫ 1 (large-field gain (2.22)). Both hold only if the slot g_k stays within a fixed factor of a g-free reference ḡ_k, with R_k = ε_1/ḡ_k. This restricts the slot cube to a relative neighbourhood of the trajectory. If ḡ_k is built from g_0, then ∂/∂g_0 hits the cut again. The printed γ_k fails the second requirement (1.5). Route 1 is therefore a redefinition with its own compatibility checks (HBETA slot domain; CMP 119/122), not a free closure.

## 4. Recommendation and Lemma G3

4.1 Recommended route: Route 2. It keeps Balaban's construction (2.3) unchanged, so no compatibility question with CMP 119/122 arises for the cut itself. Its only new input is (Q), a line-level reading of (2.15)–(2.26). Route 3 is the fallback: the analysis is shorter, but it changes the construction, and CMP 119/122 are not checked. Route 1 is not recommended: it is a different construction, the printed γ_k is inconsistent (1.5), and it restricts the slot domain.

4.2 Lemma G3 (cut derivative). Let n = N² − 1 and let (Q) hold with constants c_−, Λ, a ≤ 1/(4Λ). For every step k, g_k ∈ (0, γ], every monotone slot history, and every term T of (2.14) with cut χ_{k,Y_0}χ^c_{k,P} as in CMP 116 (2.3):
  |(∂_{g_k} acting on the cut) T| ≤ c_1′ U(g_k) e^{δκd_k(Z_0)} T_maj,  U(g) = A_nD_n ε_1^{−1} e^{−ε_1²/(8Λg²)},
with A_n = |S^{n−1}|(2πc_−)^{−n/2}, D_n = (4Λ(n+1))^{(n+1)/2}e^{−(n+1)/2}, c_1′ = 24c_dM^4(1 + (δκ)^{−1}). Consequently the cut adds to S_0 of GGAIN §6.1 the term S_χ = c_2A_nD_nε_1^{−1}e^{−ε_1²/(8Λγ²)}, uniform in g_k, X, k, and the volume, and S_χ = O(γ^p) for every p. With Lemma G3, Theorem B2-unif and C_β = C_ΠS_0 of GGAIN §4 hold without the "given Lemma G3" proviso, subject to (Q).

## 5. Ledger (authoritative)

[V] CMP 109 p. 266 (image): (2.9) cuts B′ at ε_1; the "another possibility g_k/γ_k ε_1 … analytic functions of the effective coupling constants" sentence. CMP 109 pp. 263–264 (text): "C^∞ … (or analytic)" for E^{(j)} and β_{j+1}. CMP 116 p. 12 (image): (2.3), χ^c_{k,P} = Π_{b∈P}χ(|B(b)| ≥ ε_1/g_k). CMP 116 p. 16 (image): (2.22). CMP 116 p. 18 (image): (2.27)–(2.32).
[P] 1.7: with Balaban's cut, ∂β_{k+1}/∂g_k contains the cut derivative; the surface term is real. 2.1: the surface formula. 2.2: one-bond bound U(g), no 1/g, given (Q). 2.3: bond and polymer sums, S_χ uniform and O(γ^p), given (Q). 3.2: no use of χ² = χ on the checked pages; (2.3), (2.22), (2.31) survive a smooth cut with ε_1 → ε_1/2. 3.3: smooth-cut cost ‖χ̂′‖g^{−1}e^{−ε_1²/(8Λg²)}.
[num] 2.1 surface formula, n = 8.
[R] (Q): conditional Gaussian domination of Balaban's majorant with one bond fixed, at cost e^{a|B(b)|²}, a ≤ 1/(4Λ); and λ_min(Γ) ≥ c_− > 0. Kotecký–Preiss derivative step (GGAIN §4.4 (ii)). Lemma G1, G2, G4 of GGAIN as stated there.
[I] 1.4: "C^∞" ↔ sharp cut, "(or analytic)" ↔ alternative cut. 1.5: printed γ_k cannot be the intended one; reading γ_k ≍ g-free majorant of g_k. 2.2: λ_min(C^{(k)}) ≥ 1/‖C^{(k)−1}‖ with the bound from CMP 99/102 (not re-read). Number of bonds ≤ c_d|Z_0| (c_d lattice constant).
Open: CMP 119/122 large-field analogue of the cut derivative (all three routes); Route 3 compatibility with CMP 119/122; higher g-derivatives; numerical values of c_−, Λ.
Corrections to the brief: (i) in CMP 116 the cut is on B, a round sphere |B(b)| = ε_1/g_k in R^n, not on B′ (CMP 109 (2.9) uses B′); (ii) the per-bond factor is g^{−1}(ε_1/g)^n·(Gaussian) = ε_1^{−1}t^{n+1}e^{−ct²}, t = ε_1/g, not ε_1^{n−2}g^{−n}; (iii) the brief's Route-1 premise "fixed reference x makes ∂_g of the cut zero" is HHOL's device for a complex disc around x; it does not give the derivative of Balaban's step map, whose cut moves with g_k.
