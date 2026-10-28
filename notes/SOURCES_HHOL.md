# SOURCES_HHOL — (H-hol) for the small-field step

Date: 2026-10-27. Status: complete, unverified (Claude Opus).

Inputs read: SOURCES_HBETA_N3 §4–§6, _VERIFY §4, §6, §7; SOURCES_GGAIN §1–§3, _VERIFY §4–§6; SOURCES_SM §4–§5; SOURCES_W4 §4–§7; CMP 116 pp. 7–8 and 15–17 (pdftotext -layout). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md were not read.
Tags: [P] proved here; [I] inferred; [R] reduced to a named input; [V] verified on the pages; [num] numerical check.
The ledger (§7) is authoritative.

## 0. Four corrections to the brief

(K1) In B̃ := g_kB variables the Gaussian is NOT g-free. dμ_{C^{(k)}}(B) becomes the Gaussian with covariance C^{(k)}/u_k, u_k := g_k^{−2} (SM §4.1). The density is e^{−½u⟨B̃, C^{(k)−1}B̃⟩}. The Jacobian u^{n/2} cancels against the normalization. It is not a factor to dominate. The Re g^{−2} > 0 condition matters exactly because the Gaussian carries u. [P]
(K2) Plain dominated convergence (the W4 method) gives holomorphy in FINITE volume only. A whole-lattice bound of the complex normalized Gaussian costs (|w|/Re w)^{N/2}, N = number of real field variables. This is exponential in the volume. A volume-uniform bound must be made per polymer, inside CMP 116 (2.14)–(2.17). Balaban already handles a complex, non-symmetric Gaussian there by a perturbative argument (§3). [P for the volume factor; V for the quote]
(K3) The majorant is the real integrand at a LARGER coupling, x′ = x(1+ρ)(1−2ρ²)^{−1/2}, not at (1−ρ′)x. Complex g widens the dominating Gaussian. [P, §2]
(K4) (H-hist_C) with a uniform C_1 on P_{ρ/2} does NOT follow from this route. The own-slot Cauchy estimate on a relative disc loses 1/x_i (the SM §4.2 loss). What Lemma N3 needs follows anyway: real (H-hist) at real points, plus (H2-hist) on the thin complex set. (H2-hist) follows from the complex chain with the 1/x_i loss and the symmetry of mixed partials (§5). [P given the inputs]

## 1. Step 1: the change of variables and the explicit g-dependence

Quoted [V, CMP 116 p. 7, (1.21)–(1.22)]: g_k enters the linear stage only as g_k|B|: "e^{16κ_1}g_k|B| < 4B_0C_1e^{16κ_1}ε_1", "|t_□|4B_0C_1e^{16κ_1}g_k|B| ≤ α_2". p. 8: "Another possibility is to use the expression g_k|B| instead of ε_1."
Quoted [V, CMP 116 p. 15]: in (2.14) "the operators in it are not symmetric, and the second measure is complex … For the pair (U,0) the operators are symmetric, and the measure is positive … The general case is handled by a perturbative argument."

1.1 Structure [R to SM §4.1, one notation reading marked there]. At fixed B̃ = g_kB:
  E^{(k+1)}(u) = log ∫ dμ_{C^{(k)}/u}(B̃) χ(B̃) exp[uΦ_1(B̃) + Φ_0(B̃; I)] − (same at U = 1),
with χ, Φ_0, Φ_1 free of u. Φ_1 collects the u-prefactored terms (P^{(k)}-type, CMP 116 (1.38)–(1.40): cubic and higher in B′). Φ_0 contains the curly bracket {E_k(U_k(e^{iB′}V)) − E_k(U_k(V))}, log σ(B′), G(B′), and the Jacobian of B̃ ↦ B′. Φ_0 depends on the history g_0, …, g_{k−1} only through the input activities I = {E^{(l)}}, l ≤ k [I: W4 §1–§2].
In the brief's language: in B units an n-point vertex carries g^{n−2} (u·(gB)^n). In B̃ units every vertex is either u-free or linear in u. The cut χ is u-free.

1.2 Reference units [P]. Fix the real reference x := x_k. Put B̃ = xB, B real. Write g = x(1+s), |s| < ρ, and
  w := u x² = (1+s)^{−2}.
Then the step integrand at complex g is
  χ(xB)·exp(−½w⟨B, C^{(k)−1}B⟩)·exp[wΦ_1(xB) + Φ_0(xB; I)].
At w = 1 this is Balaban's real integrand at coupling x, with his cut |B′| < ε_1. The integration domain {χ(xB) = 1} does not depend on g. The vertex ARGUMENTS stay on Balaban's real domain. Complex g enters only as the complex number w in two places: the Gaussian scale and the coefficient of Φ_1.

1.3 Disc facts [P; num check inline, python -I, no file kept]. For |s| < ρ:
 (a) |arg(1+s)| < arcsin ρ, so Re w/|w| = cos(2 arg(1+s)) > 1 − 2ρ². Hence |w|/Re w < (1−2ρ²)^{−1}. Re w > 0 iff ρ < 1/√2. num: max |w|/Re w on |s| = ρ is 1.0050, 1.0204, 1.2857 for ρ = 0.05, 0.1, 1/3; equal to (1−2ρ²)^{−1} to 7 digits.
 (b) (1+ρ)^{−2} < |w| < (1−ρ)^{−2}, so Re w > (1−2ρ²)(1+ρ)^{−2}. num: min Re w = 0.907, 0.826, 0.5625 (bound 0.902, 0.810, 0.4375).
 (c) |w − 1| = |s||2+s|/|1+s|² < ρ(2+ρ)(1−ρ)^{−2} =: ζ(ρ). num: max |w−1| = (1−ρ)^{−2} − 1 = 0.108, 0.235, 1.25 (attained at s = −ρ).
For ρ ≤ 0.1: |w| ≤ 1.235 and 1/Re w ≤ 1.235.

1.4 Finite-volume holomorphy [P]. In a finite volume the domain {χ(xB) = 1} is bounded in B (it bounds B′ on every small-field bond, and B̃ ↦ B′ is a near-identity map of a bounded C; [I] that the fluctuation variables are exactly the bonds covered by χ). The integrand is entire in w and continuous in B. So the unnormalized integral is entire in u on all of C, and holomorphic in g on Re g^{−2} > 0 after dividing by the u-normalization. The only analytic obstruction is a zero of the integral inside the log. Excluding zeros, uniformly in the volume, is the content of §3.

## 2. Step 2: holomorphy of one term of (2.14) and the domination inequality

2.1 The term. In CMP 116 (2.14) a term of the D, P, Z_0 expansion is
  T = ∫dμ_0(X) ∫dμ_{C^{(k)}(Z_0,σ)}(B) (−1)^{|P|}χ_{k,Y_0}(B)χ^c_{k,P}(B) exp[Σ_{Y∈D}τ(Y)V_k(Y,B)]
(GGAIN_VERIFY §4 [V]). With 1.2 the complex coupling acts as: C^{(k)}(Z_0,σ) → C^{(k)}(Z_0,σ)/w, and V_k(Y) = V^0_k(Y) + wV^P_k(Y) (V^P = the Φ_1 part). χ's are real and w-free. [I: the coupling scale multiplies the whole fluctuation quadratic form, so it divides every Gaussian covariance in Balaban's decomposition, including the one behind dμ_0(X) if X is a fluctuation-type variable; the decomposition is linear in the covariance.]

2.2 Lemma D (marginal domination) [P]. Let C be real symmetric positive on R^N, Z a coordinate subset of dimension N_Z, F a bounded measurable function of B_Z, Re w > 0. With dμ_{C/w} the analytic continuation of the normalized Gaussian:
  |∫F dμ_{C/w}| ≤ (|w|/Re w)^{N_Z/2} ∫|F| dμ_{C/Re w}.
Proof. Both sides of ∫F dμ_{C/w} = ∫F dμ_{C_ZZ/w} are analytic in w on Re w > 0 and agree for w > 0. The marginal density is (w/2π)^{N_Z/2}(det C_ZZ)^{−1/2}e^{−½w⟨B,C_ZZ^{−1}B⟩}. Its modulus is (|w|/Re w)^{N_Z/2} times the real density at Re w. ∎
Volume cost: on the whole lattice N_Z = N gives the extensive factor of (K2). Per polymer it is ≤ exp(2ρ²N_Z) for ρ ≤ ½, by 1.3(a) and −log(1−t) ≤ 2t on [0, ½].

2.3 Domination of T [P for the algebra; I for applying it inside Balaban's perturbative step]. Balaban compares C^{(k)}(Z_0,σ) at complex (U, σ) with C^{(k)}(Z_0,0) at the real symmetric pair (U,0). Do the same with C^{(k)}(Z_0,0)/Re w as the comparison operator. Then:
 (i) the imaginary part i(Im w)⟨B, C^{−1}B⟩ is a pure phase for real B; its modulus is 1;
 (ii) Balaban's error forms R_1, R_2, R_3 of (2.16) are multiplied by w or 1/w; their coefficients grow by at most max(|w|, 1/|w|) ≤ max((1−ρ)^{−2}, (1+ρ)²) ≤ 1.235 for ρ ≤ 0.1;
 (iii) the determinant quotient of (2.15)–(2.17) gets the extra factor (|w|/Re w)^{N_0/2}, N_0 := dim of B on Z_0 ≤ 4n|Z_0|, n := dim su(N) = N² − 1;
 (iv) the vertex exponent obeys |τ(Y)(V^0 + wV^P)| ≤ (1−ρ)^{−2}|τ(Y)|(|V^0|_b + |V^P|_b), where |·|_b are Balaban's separate bounds (1.36) and (1.39)–(1.40) [I: CMP 116 bounds the two parts separately, GGAIN §1];
 (v) χ_{k,Y_0}χ^c_{k,P} ≤ exp(−½γ_2ε_1²x^{−2}|P| + ½γ_2‖PB‖²) is (2.22) at the REAL reference x. The large-field gain is unchanged and real.
So |T(w)| ≤ e^{8nρ²|Z_0|}·T_maj, where T_maj is Balaban's real majorant (2.23) with: covariance C^{(k)}(Z_0,0)/Re w (≤ 1.235·C^{(k)} for ρ ≤ 0.1), all quadratic-form coefficients ×1.235, and the τ-circle condition (2.18) with E_0 → 1.235E_0.
Equivalently, the Gaussian part is the real Gaussian at coupling x′ = x/√(Re w) ≤ x(1+ρ)(1−2ρ²)^{−1/2} (correction K3).

2.4 Holomorphy of T [P given 2.3]. For fixed (X, B, σ, τ) the integrand is entire in w. The majorant in 2.3 is w-independent on |s| ≤ ρ_0 and integrable. Fubini + Morera: T is holomorphic in g on {|g − x| < ρ_0x}. Jointly with the input activities I: the exponent is affine in I and affine in w, the majorant is uniform on the W4 ball, so T is separately holomorphic and locally bounded, hence jointly holomorphic (Osgood on finite-dimensional slices).

## 3. Step 3: β_j holomorphic on the relative disc, |β_j| ≤ M uniform in j, k, volume

3.1 Radius. Fix
  ρ_0 := min(0.1, (LM)^{−2}(8n)^{−1/2}),  n = N² − 1.
Then 8nρ_0² ≤ (LM)^{−4}, |w| ≤ 1.235, 1/Re w ≤ 1.235. ρ_0 depends on L, M, N only: not on g, j, k, or the volume. ρ_0 < 1/√2, so Re g^{−2} > 0 holds with margin. The brief's ρ ≤ 1/3 is NOT reached: at ρ = 1/3, |w − 1| reaches 1.25, which is not a perturbation of Balaban's Gaussian. Lemma N3 accepts any fixed ρ > 0; its condition (d) 2√2γ²Y ≤ ρ then fixes γ, which Balaban chooses after M anyway (CMP 116 (2.31): "γ sufficiently small, depending on M and κ") [V via GGAIN §1].

3.2 Conditions with modified constants [R]. The sums of CMP 116 (2.28)–(2.41) use only the majorant (W4 §4.3). With §2.3 they run if:
 (C1′) the τ-circle (2.18) with E_0 → 1.235·cE_0 (c = input-ball factor, c = 2 as in D3W8);
 (C2′)–(C4′) Balaban's (C2)–(C4) with ε_1 → 1.235c·ε_1, i.e. ε_1 ≤ ε_1^{Bal}/(1.235c). Same mechanism as W4 §5 (E_0 enters only through E_0ε_1);
 (C4″) the new per-site factor e^{8nρ_0²|Z_0|} has the form of Balaban's e^{O(α_5)|Z|}. He controls those by "(LM)^4α_0, (LM)^4α_1, (LM)^4α_4, (LM)^4γ_2 … bounded … by 1" (p. 20 [V via W4 §5]). The choice 8nρ_0²(LM)^4 ≤ 1 puts the new factor under the same rule;
 (2.24′) the Gaussian absorption with covariance ≤ 1.235·C^{(k)} and coefficients ×1.235: 1.53·α_5‖C^{(k)}(Z_0,0)‖ < ½ (Balaban: α_5‖C^{(k)}‖ < ½). Holds if α_5 is chosen with factor 1.53 of slack;
 (C5) O(1)C_3ε_1 ≤ ½E_0: homogeneous in E_0, unchanged.
(2.31) (the P-sum, "γ_2ε_1²/g_k² large") uses the real x by §2.3(v); unchanged.
No condition involves Im g. All are conditions on the fixed constants L, M, κ, α's, ε_1.

3.3 Activities and the log [R to 3.2 and W4 §4.3–§4.4]. Each H(Z) = Σ_{Z_0,D,P}(2.14) is a uniformly convergent sum of holomorphic terms, hence holomorphic on |g − x| < ρ_0x, with
  |H(Z)| ≤ 1.235·c·C_3ε_1 exp(−(1−8δ)½Lκd_{k+1}(Z)).
The Ursell series (2.39)–(2.41) converges on the same set. The partition function equals exp(convergent series), so it has no zero, and the log is single-valued and holomorphic (W4 §4.4). Output:
  |E^{(k+1)}(X)| ≤ 0.62·c·E_0 exp(−(1−10δ)½Lκd_{k+1}(X)) on the disc.
0.62c < c, so the output stays in the input ball of the next step. The induction closes on complex couplings.

3.4 β_j [R]. β_{k+1} = Π(E^{(k+1)}) + β^{(0)}_{k+1}, with Π linear and g-free (norm C_Π, SM §3.1(b), GGAIN §4.5). β^{(0)} is the part from log Z^{(k)}(U) − log Z^{(k)}(1); in B̃ units the u-factor cancels, so β^{(0)} does not depend on g_k [P given SM §4.1]. So β_j is holomorphic on the disc and
  |β_j| ≤ M := sup_j|β^{(0)}_j| + 0.62·c·C_ΠE_0,
uniform in j, k, and the volume. [I: sup_j|β^{(0)}_j| < ∞; it is the one-loop coefficient plus Balaban's bounded corrections.]
Plausibility check: β_j = β^{(0)} + O(g²) with a g-free leading term agrees with one-loop universality. Passed.

3.5 Same function for all x [P]. The B̃ integral of 1.1 is defined for every Re u > 0 and does not depend on x; x is bookkeeping for the bounds only. So the continuations from different reference points agree on overlaps. β_j extends to ONE holomorphic function on ∪_x P_{ρ_0}(x), and it equals Balaban's real β_j on the real axis. This is the property Lemma N3 Step 0 uses (it mixes real derivatives at g_r with Cauchy bounds of the same function).
Alternative route, not used: keep B variables and fix the cut at the reference coupling, χ_k(xB) (D3 (L0) convention). Then g enters inside V(gB), the analyticity domain (1.34) must grow to |gB| < (1+ρ)ε_1, and the continued function differs from Balaban's β_j at real g ≠ x by a surface-type term. The B̃ route avoids both costs.

## 4. Step 4a: history dependence, holomorphy on the polydisc

4.1 Induction [R to §3 and W4]. Claim: for every real history x and every l, E^{(l)} is holomorphic in (g_0, …, g_{l−1}) on P_{ρ_0}(x) := Π_i{|g_i − x_i| < ρ_0x_i}, with Balaban's weighted sup ≤ cE_0.
 - l = 0: the bare action has no E [I].
 - l → l+1: at scale l, apply 1.2 with the own reference x_l. The step integrand is jointly holomorphic in (w_l, I), affine in each inside the exponent (§2.4). The inputs I = {E^{(m)}}, m ≤ l, are holomorphic in (g_0, …, g_{l−1}) on P_{ρ_0}(x) and lie in the ball of radius cE_0 (induction). Composition of holomorphic maps is holomorphic. §3.3 gives the output sup ≤ 0.62cE_0 ≤ cE_0. The subtraction −β_{l+1}A and E ↦ E − E(1) are affine (W4 §6.1).
 - Each g_i is changed to B̃-variables only at its own scale i. At scale l > i, g_i enters only through the inputs. So each g_i has its own relative disc of the same relative radius ρ_0.
Then β_j = Π(E^{(j)}) + β^{(0)}_j is holomorphic on P_{ρ_0}(x) with |β_j| ≤ M. This is (H-hol) with ρ = ρ_0 and the M of 3.4, for the small-field chain. [R]
Caveat (from SM §5.1(a)): D3W8 F2′ (R-induced terms) uses g_j ≤ g_{j+1}. Complex histories are not ordered. This affects only the R-induced (large-field) inputs, which §6 leaves open anyway.

4.2 Label decay on the polydisc [R]. The chain of SOURCES_HHIST/SM has two ingredients.
 (a) Theorem SM, |DG(I_0)[W]| ≤ θ_0Σ_l L^{−α_*(k−l)}‖W^{(l)}‖e^{−κ′d}, θ_0 = 2K_HK_Vε_1. Its label decay L^{−α_*} comes from the linear stage (CMP 116 (1.21)–(1.24), the bracket). In B̃ units the linear stage is u-free (1.1). So the decay rate is unchanged at complex couplings. Its θ_0 comes from Cauchy in I on the W4 ball; at complex w the sup grows by 1.235 (§3.3). So θ_0 → θ_C := 1.235θ_0 and λ → λ_C := L^{−α_*} + C_Vθ_C. Condition: λ_C < 1, i.e. ε_1 smaller by the factor 1.235.
 (b) The own-slot start s_{i+1} := ‖∂_{g_i}E^{(i+1)}‖. At a complex point the only available bound is Cauchy on the remaining own-slot disc: s_{i+1} ≤ cE_0/((ρ_0 − ρ_1)x_i) on P_{ρ_1}(x), ρ_1 < ρ_0. This is the SM §4.2 loss 1/x_i. The real route (b) of GGAIN (pointwise Cauchy in x = g_kB at REAL g_k) does not apply at complex g_k. A uniform complex start needs (G-gain) on the complex disc, i.e. GGAIN §5 "u-disc route", which is [reduced] with the G4 problem of GGAIN_VERIFY §5. Not proved here.
 With (a) and (b), the HHIST induction (linear in s) gives on P_{ρ_1}(x):
  (F1) |∂β_j/∂g_i| ≤ (D/x_i)·λ_C^{j−1−i},  D := (C_Π/C_V)·cE_0/(ρ_0 − ρ_1)·max(1, C_V),  all i ≤ j−1.
The decay a_m = λ_C^m survives on the complex polydisc; the uniform constant does not.

4.3 Locality of the covariance [P]. The brief locates the decay in the exponential locality of the fluctuation covariance. In B̃ units the covariance is C^{(k)}/u: a scalar multiple of a g-free operator, so its decay profile e^{−δ_0|b−b′|} is g-free; only its size scales by 1/Re w ≤ 1.235. This locality controls the polymer sums (spatial decay). The decay in the scale label j − 1 − i comes from the bracket of 4.2(a), not from the covariance. Both survive on the polydisc.

## 5. Step 4b: what Lemma N3 gets — (H2-hist) from (F1), and the status of (H-hist_C)

5.1 (H-hist_C) as stated does not follow [P]. On P_{ρ/2}(x) Cauchy alone gives |∂β_j/∂g_i| ≤ 2M/(ρx_i): no decay and a 1/x_i loss. The real bound C_1a_{j−1−i} at the real point plus a Taylor step along a displacement of size ρx_i/2 costs sup|∂²β|·ρx_i/2 ≳ M/x_i again. So the real (H-hist) does not extend to all of P_{ρ/2} with a uniform C_1 by Cauchy. With (F1) one gets the decay but keeps the 1/x_i. Used directly in Lemma N3 Step 1, (F1) gives ε_j ~ Σ_i x_i²λ_C^{j−1−i} and Σ_jε_j ~ Σ_i x_i² ~ β_0^{−1}log K: the failing case of HBETA_VERIFY §5.

5.2 (H2-hist) follows from (F1) [P given (F1)]. Let z ∈ P_{ρ_1/2}(x). Cauchy in g_l on the circle of radius ρ_1x_l/2 (inside P_{ρ_1}) applied to (F1):
  |∂_l∂_iβ_j(z)| ≤ (2/(ρ_1x_l))·(D/x_i)·λ_C^{j−1−i}.
Mixed partials of a holomorphic function commute, so the same bound holds with i ↔ l:
  |∂_l∂_iβ_j(z)| ≤ (2D/(ρ_1x_ix_l))·min(λ_C^{j−1−i}, λ_C^{j−1−l}) ≤ (2D/(ρ_1x_ix_l))·λ_C^{(j−1−i)/2}λ_C^{(j−1−l)/2},
since min(a, b) ≤ √(ab). This is (H2-hist) of HBETA_N3 §5 with
  M_2 = 2D/ρ_1,  a_m = λ_C^{m/2},  A = Σ_m a_m = (1 − λ_C^{1/2})^{−1},
on P_{ρ_1/2}(x). The diagonal i = l is included.

5.3 Closing Lemma N3 [R to the listed inputs]. HBETA_N3 §5 needs: (i) real (H-hist) at real points g_r with uniform C_1 (SOURCES_HHIST + GGAIN route (b), real; status as in those files: uniform own slot needs G3/surface term, GGAIN_VERIFY §6); (ii) (H2-hist) on the thin set |z_l − g_{r,l}| ≤ √2g_{r,l}³Y. The thin set lies in P_{ρ_1/2}(g_r) when 2√2γ²Y ≤ ρ_1 (N3 condition (d) with ρ → ρ_1). Then
  x_C := 2C_1Aγ/β + √2·Y·M_2A²γ²/β ≤ ln(3/2)
(HBETA_N3 §5 with Y = 2τ) gives |δw_k| ≤ (3/2)τ uniformly in K. With M_2 ∝ 1/(ρ_1(ρ_0 − ρ_1)) = 4/ρ_0² at ρ_1 = ρ_0/2, the second term is ≲ τE_0C_Πγ²/(ρ_0²β(1−λ_C^{1/2})²): small for γ small after ρ_0 is fixed. Note also that the second mixed derivative needs a_m = λ^{m/2}, so the history sum A doubles roughly; this is harmless.
So: (H-hist_C) is replaced, for Lemma N3, by (H-hist) [real] + (F1) [complex, with 1/x loss]. HBETA_N3_VERIFY §7(4) already noted that (H2-hist) is sufficient; here it is DERIVED, not assumed. [P given (F1); (F1) is R]

5.4 What a uniform (H-hist_C) would need [open]. A uniform own-slot bound at complex g_k, i.e. (G-gain) with sup ∝ g_k on the complex u-disc (GGAIN §5, GGAIN_VERIFY §5 item 4, real-t repair). Not needed by Lemma N3 after 5.3.

## 6. Step 5: the large-field complement [open]

§2–§5 cover the small-field step: CMP 116 §2 cluster expansion and the inputs E^{(l)}. The full β_j also receives contributions through the large-field regions (CMP 119 Sect. 3, CMP 122 R operation). (H-hol) for the full step needs:
 (a) the large-field step of W4 §4.5 at complex w. Same B̃ substitution; the t-interpolation (3.30) and H′(Z_0) have the (2.14) structure, so §2.3 should apply verbatim. Status equals W4 §4.5: [reduced to Balaban's sketch "we repeat all the considerations … with minor changes", CMP 119 p. 275].
 (b) the R operation at complex couplings. W4 §6.2: R is holomorphic in its inputs only on a ball of radius ≍ (100MR_k)^{−4} around the real inputs. Complex w shifts the R-denominators' exponents by an amount of order ρ_0·(region size) = ρ_0·O((100MR_k)^4). The local-radius lemma (D3 Lemma D3.1) needs this ≤ c. That forces ρ_0 ≲ (100MR_k)^{−4}. R_k grows with k in Balaban's scheme [I], so a k-uniform relative radius is NOT available by this argument. [open; probably the binding obstruction]
 (c) the ordering condition g_j ≤ g_{j+1} of D3W8 F2′ for R-induced terms (4.1 caveat).
Status: same as the large-field part of G-gain. (H-hol) for the full step is OPEN.

## 7. Ledger (authoritative)

[P] proved here:
 - (K1)–(K4) corrections to the brief (§0).
 - Reference-unit form of the complex step: complex g enters only as w = (x/g)² in the Gaussian scale and as the coefficient of Φ_1; the domain is g-free (1.2, given SM §4.1).
 - Disc facts 1.3: |w|/Re w < (1−2ρ²)^{−1}; Re w > 0 iff ρ < 1/√2; |w − 1| < ρ(2+ρ)(1−ρ)^{−2}. [num-checked]
 - Finite-volume holomorphy of the unnormalized step integral, entire in u (1.4).
 - Lemma D (marginal domination) and the per-polymer cost e^{8nρ²|Z_0|} (2.2).
 - Single-valuedness: one holomorphic β_j on ∪_xP_{ρ_0}(x), equal to Balaban's on the reals (3.5).
 - (H-hist_C) with uniform C_1 does not follow from Cauchy + real (H-hist) (5.1).
 - (H2-hist) with a_m = λ_C^{m/2}, M_2 = 2D/ρ_1, from (F1) by Cauchy + symmetry of mixed partials (5.2).
[R] reduced:
 - (H-hol) for the small-field chain: holomorphy on P_{ρ_0}(x), ρ_0 = min(0.1, (LM)^{−2}(8n)^{−1/2}), |β_j| ≤ M = sup|β^{(0)}| + 0.62cC_ΠE_0, uniform in j, k, volume. Reduced to: (C1′)–(C4′) (ε_1 → 1.235cε_1), (C4″) 8nρ_0²(LM)^4 ≤ 1, (2.24′) 1.53α_5‖C^{(k)}‖ < ½, (C5) unchanged; W4 §4.3–§4.4 chain; SM §4.1 structure (one [check] reading). The extra per-site factor changes C_3 by a fixed e^{O(1)}, absorbed by ε_1 (not tracked numerically).
 - (F1) on P_{ρ_1}(x): label decay λ_C = L^{−α_*} + 1.235C_Vθ_0 with a 1/x_i loss; reduced to Theorem SM at complex (I, w) and HHIST's chain.
 - Lemma N3 closes with real (H-hist) + (F1) via (H2-hist) (5.3).
[I] inferred, not checked line by line:
 - The coupling scale divides every Gaussian covariance in Balaban's decomposition, incl. dμ_0(X) (2.1).
 - Balaban's perturbative argument of (2.15)–(2.17) absorbs the extra factors (2.3 (ii)–(iii)).
 - V^0 and V^P obey separate bounds (1.36), (1.39)–(1.40) (2.3(iv)).
 - Earlier couplings enter step k only through the inputs E^{(l)} (1.1); sup_j|β^{(0)}_j| < ∞ (3.4); R_k grows with k (§6(b)).
[V] verified on the pages (CMP 116, pdftotext -layout):
 - p. 7 (1.21)–(1.22): g_k enters as g_k|B|; p. 8 "g_k|B| instead of ε_1".
 - p. 15 (2.14): "the operators in it are not symmetric, and the second measure is complex … handled by a perturbative argument"; p. 16 (2.16)–(2.18); p. 17 (2.23)–(2.26) incl. α_5 = O(1)e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2 and "α_5‖C^{(k)}(Z_0,0)‖ < ½".
[open]:
 - Large-field complement (§6): R-operation radius ≍ (100MR_k)^{−4} is not k-uniform; ordering of complex histories.
 - Uniform (H-hist_C) (complex G-gain) — not needed after 5.3.
 - ρ ≤ 1/3 of the brief: not reached; ρ_0 ~ (LM)^{−2} instead. N3 accepts this.
Status: complete. Unverified.
