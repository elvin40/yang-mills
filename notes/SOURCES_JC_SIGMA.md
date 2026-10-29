# SOURCES_JC_SIGMA — the σ half of condition (J-c): a proof of sup|σ| ≤ ¼ as a γ condition

Date 2026-10-29. Author: Claude (Opus 5.5), derivation file. Status: [derived here, unverified]. It needs an independent verifier (Opus) before any grade in it is load-bearing.
Edits: this file only. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read. No grep in this session touched them.
Ids follow IDS.md: R-035 (B-S), H-116 (H-U), R-018, R-019 (CMP 102 (172) complex ball), R-042 (N3), Q-050 (NEW-4), L-165 (Lemma FX-D), K-001 (frozen thresholds), H-066 (A18-4), H-270 (log g_j^{−2} ≤ R_j); canon lines N-060, N-310, N-320, N-440, N-470, N-490.

Grades. [P] proved here, complete argument. [P-sketch] argument given, a routine step not written out. [V] read this session on a rendered page image (pdftoppm -r 150, fresh /tmp folder, deleted after use). [R] reduced to a named result: a ledger row, a verified project file, or a printed Balaban statement. [I] inference or reading that no image or verifier supports.

Inputs read: OPUS_QUEUE.md l. 1–15; IDS.md (head, R-018, R-019, Q-050, H-116); SOURCES_L1_E §4.1 (D-iii), §5.1 (S-b), §6.3, §7; SOURCES_L1_E_VERIFY §6 and the ledger proposals; SOURCES_W6_CHECK_122 (whole); SOURCES_W6_CHECK_109_116 N2; SOURCES_D3 Lemma D3.1 and (P4); SOURCES_D3_NEW4 §1, §4–§6; SOURCES_FX_D Lemma FX-D, Steps 4–5; SOURCES_ORDER_CANON N-060, N-320, N-440, N-470, N-490; SOURCES_W6_RESOLVE §2 and §5.1 (read after §1–§4 were written, on the coordinator's request; it settles choice B and proposes Lemma TV with input (T2) and condition (J-c′)).

Page images read this session: CMP 122 II pp. 356, 357, 358 (PDF 2–4); CMP 109 p. 262 (PDF 14). Text layer used only to locate CMP 102 Sect. G, p. 305, (172) (not graded [V]).

## 1. Where (J-c) is used, and what the chain needs

1.1 The use [R, SOURCES_L1_E]. Condition (J-c) is used at one place: L1_E §4.1 (D-iii), the non-vanishing and the lower bound of the R-denominator at complex (U, J) and complex source. L1_E §5.1 (S-b) cites (D-iii). Proposition B (§5.3) and the §7 input list carry (J-c) as a hypothesis. Nothing else in L1_E uses it.
1.2 Lemma J3 does not use (J-c). L1_E uses J3 for the divisor (D-iv) of CMP 119 (3.32)/(3.37). SOURCES_L1_E_VERIFY §6(d) showed that J3 cannot replace (J-c) for (D-iii): Balaban prints no convergent series for log of the denominator (1.2). This file does not change that finding. [R]
1.3 The tool. Lemma D3.1 (SOURCES_D3 l. 134, verified in SOURCES_D3_VERIFY V6): if μ ≥ 0 and |σ| ≤ s ≤ ½ on supp μ, then |∫e^σ dμ| ≥ Re ∫e^σ dμ ≥ e^{−s}cos s ∫dμ ≥ ½∫dμ. Check of the last step: e^{−1/2}cos(1/2) = 0.6065 · 0.8776 = 0.532 ≥ ½. [P]
1.4 What the chain needs. (D-iii) applies Lemma D3.1 to the sum σ_U + σ_W (σ_U: complex-U part; σ_W: source part). So the chain needs only
  sup |σ_U + σ_W| ≤ ½ on the support of the reference measure.   (N)
The split "|σ_U| ≤ ¼ and |σ_W| ≤ ¼" is one sufficient way to get (N). It is not needed in the source-free case (§5.1), where σ_W ≡ 0 and (N) reads sup|σ_U| ≤ ½.
1.5 A weaker form. For non-vanishing alone, any s < π/2 suffices: Re e^σ ≥ e^{−s}cos s > 0. The bound layer then loses the factor (e^{−s}cos s)^{−1}, a number. Balaban's (1.11) budget |I(U_0)| < O(1)M⁵ absorbs any fixed number. So the chain can use (N_s): sup|σ_U + σ_W| ≤ s_* with any fixed s_* < π/2. I keep s_* = ½ below. The choice changes only the constant in the γ condition of §6. [P]

## 2. Page readings (images, this session)

| page | place | image reading | grade |
|---|---|---|---|
| CMP 122 II 356 | (1.1); text after it | The denominator of (1.1) is ∫dV′↾_Λ δ_{G_0}(V′)χ exp[−g_k^{−2}A(ζ_0, U_{k,Z}(V′V_Λ))], with the constant g_k and no source. Printed: "the term from the denominator is dangerous". (1.1) is "one term on the right-hand side of (1.99) [IV]", written in the simpler notation of the (1.100) [IV] definition. | [V] |
| 356–357 | (1.2) | ∫dV′(…) = exp[−g_k^{−2}A(ζ_0, U_0) + (−½d(g) log g_k^{−2} + log σ_0)\|Λ^{(k)}\G_0\|] · ∫dB′↾_Λ σ(g_kB′)δ_{G_0}(B′)χ({\|B′\| < M_0g_k^{−1}ε_k}) · exp[−½⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ − g_k^{−1}⟨DH_{1,k}B′, ζ_0η^{−2} Im ∂U_0⟩ − g_k^{−2}V(ζ_0, g_kH_{1,k}B′)]. | [V] |
| 357 | text after (1.2) | "The last term in the exponential is small, because the function V is at least of third order in the argument. It can be estimated by O(g_k^{1−β})\|Λ\|." | [V] |
| 357 | (1.3)–(1.6) | U_0 minimizes U ↦ A(U) with no coupling factor. (1.4): J_0 = 0 on Λ. (1.5): the linear term equals g_k^{−1}⟨DH_{1,k}B′, (1 − ζ_0)η^{−2} Im ∂U_0⟩. (1.6): this is bounded by g_k^{−1}B_3M_0A_0p_0(g_k)exp(−δ dist(Ω_k, Λ))3ε_k\|Λ\| < 3B_3M_0A_0²p_0²(g_k)exp(−R_k)(100M)⁴, "where we have used the fact that Λ is contained in a cube of the size 100M". Then: "The bound on the right-hand side above can be made arbitrarily small for sufficiently small g_k". | [V] |
| 358 | (1.7)–(1.9) | (1.7): ⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ ≥ γ_0‖∂B′‖² − O(1)(M⁶R_kε_k + exp(−R_k))‖B′‖². (1.8): Σ_{b∈Λ}\|B′(b)\|² ≤ d(100M)^{d+1}Σ_p\|(∂B′)(p)\|²; "Λ is a rectangular parallelepiped contained in a cube of the size 100M". (1.9): ≥ γ_0/(2d(100M)⁵)‖B′‖² "for g_k sufficiently small". | [V] |
| 358 | text before (1.10) | "This integral is in the denominator of (1.1), hence we are interested only in a lower bound, which follows from the boundedness of the quadratic form. The integral is bounded from below by exp(−O(1)\|Λ\|) = exp(−O(M⁴)). In fact, we need such a bound for the integral extended analytically on G^c-valued configurations U. We construct such an extension replacing the variables V_k in the function U_0 by the averages M^k(U) for U ∈ U_k^c(Z, α_{0,k}, α_{1,k}). The expressions in the integral are analytic functions of U, and all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}). This is an unessential change; it may result only in stronger restrictions on g_k, or γ." | [V] |
| 358 | (1.10)–(1.11) | (∫…)^{−1} = exp[+g_k^{−2}A(ζ_0, U_0) + I(U_0) − E_k(Λ)]; "the analytically extended I(U_0) satisfies the bound \|I(U_0)\| < O(1) log M\|Λ\| < O(1)M⁵". | [V] |
| CMP 109 262 | definition of U_j^c(X, α_0, α_1, γ_0) | A union of G^c gauge orbits [(U, J)] of pairs with: (i) U = U′U, U G-valued, \|∂U − 1\| < α_0ξ², and (1.12) in cubes; (ii) U′ = exp iξA′, A′ g^c-valued, \|A′\|, \|∇^ξ_U A′\| < α_1; (iii) \|∂U − 1\| < α_0ξ², \|J\| < γ_0; (iv) the (U_n(M^n(U)), J_n(M^n(U))) bounds (1.16). | [V] |

Readings used below.
(Rd1) ε_k ≤ A_0g_kp_0(g_k). The two sides of (1.6) compare g_k^{−1}A_0p_0 · 3ε_k with 3A_0²p_0²; the step needs ε_k/g_k ≤ A_0p_0(g_k). This is also the order of magnitude of SOURCES_D3 (viii). [I]
(Rd2) The bound O(g_k^{1−β})\|Λ\| for the V-term and the bound (1.6) for the linear term hold at complex U ∈ U_k^c(Z, α_{0,k}, α_{1,k}) with ε_k → O(α_{0,k} + α_{1,k}) in their g-dependent factors. This is the printed p. 358 sentence applied to these two bounds. [R, printed sentence]
(Rd3) The p. 358 sentence gives no bound on Im of the quadratic form at complex U. The bounds "above" are (1.7)–(1.9), which are lower bounds on a real form, and the boundedness of the form at real U. The imaginary part of the exponent at complex U is not printed. This is the exact content of the gap that SOURCES_L1_E_VERIFY §6(a) named. [V, by absence on pp. 356–358]

## 3. The definition of σ, and why it must be measured after the extraction in (1.2)

3.1 Setting. Fix k, Z, Λ as on p. 356–358. Fix (U, J) ∈ U_k^c(Z, α_{0,k}, α_{1,k}). By CMP 109 (1.10)–(1.13) [V], a representative of the orbit is U = U′U^r with U^r G-valued (real, regular) and U′ = exp iξA′, |A′|, |∇A′| < α_{1,k}. The denominator D is the analytic extension of a function that is invariant under G-valued gauge transformations, so it is invariant under G^c-valued gauge transformations (identity theorem along the complexified gauge orbit). So D may be evaluated at the representative U′U^r. [P-sketch] The variable J does not enter D (pp. 356–358 [V]).
3.2 The f-free structure. Write dμ_0(B′) := σ(g_kB′)δ_{G_0}(B′)χ({|B′| < M_0g_k^{−1}ε_k})dB′. This measure is ≥ 0, has compact support, and depends neither on U nor on the source (the cutoff ε_k and M_0 are frozen numbers, K-001). Write
  Q(B′; U) := −½⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ − g_k^{−1}⟨DH_{1,k}B′, ζ_0η^{−2} Im ∂U_0⟩ − g_k^{−2}V(ζ_0, g_kH_{1,k}B′) =: q_2 + q_1 + q_V,
where H_{1,k}, Δ_1(ζ_0), D, U_0 are evaluated at U_0 = U_0(M^k(U)), and "Im ∂U_0" is the holomorphic extension (U − U^{−1})/2i of p. 357 notation. Then (1.2) at complex U reads
  D(U) = exp[−g_k^{−2}A(ζ_0, U_0(U)) + E_k(Λ)] · ∫ e^{Q(B′;U)} dμ_0(B′).   (3.1)
The first factor is an exponential, hence ≠ 0. [V for the real form; the complex form is the p. 358 extension]
3.3 The definition. Put dμ := e^{Q(B′; U^r)}dμ_0 ≥ 0 (Q is real at real U^r) and
  σ_U(B′; U) := Q(B′; U) − Q(B′; U^r).   (3.2)
Then ∫e^{Q(·;U)}dμ_0 = ∫e^{σ_U}dμ. This is the σ of (J-c) in the source-free case.
3.4 Why the extraction matters. A naive σ, defined as the difference of the full exponents −g_k^{−2}A(ζ_0, U_{k,Z}(V′V_Λ(U))) at U and at U^r, contains the term g_k^{−2}[A(ζ_0, U_0(U)) − A(ζ_0, U_0(U^r))]. Its size is g_k^{−2} · O(α_{1,k}) · |Λ| = O(g_k^{−1}(log g_k^{−2})^{q_1}M⁴). This is large, and Lemma D3.1 cannot use it. Balaban's (1.2) removes this term into the exponential prefactor, and the stationarity of U_0 (1.4)–(1.5) removes the large part of the linear term. So "sup|σ| ≤ ¼" is true only for σ defined as in (3.2), after the extraction. Any statement of (J-c) must fix this definition. [P]

## 4. Lemma Σ: the bound on σ_U

4.1 The analytic input (A-σ). There is a number a_σ > 0, fixed by (d, L, M) and the CMP 102 constants only (no γ, no k), with the following property. For every real U^r as in §3.1 (regular at α_{0,k}) and every g^c-valued A″ on Z with |A″|, |∇A″| < a_σ, put U″ := exp(iξA″)U^r. Then U″ ↦ K(U″) := H_{1,k}*Δ_1(ζ_0)H_{1,k}, evaluated at U_0(M^k(U″)), is holomorphic in A″, and ‖K(U″)‖ ≤ C_K in the operator norm on ℓ²(bonds of Λ), with C_K = O(1)B_3².
Source of (A-σ). The radius: CMP 102 Sect. G, (172): the minimizer U_k(V′V_0) is analytic in B′ on |B′| < 2C_1ε_1 (text layer, located only; ledger row R-019, readings H-031–H-033). The complex averaging constant K_av (N-060) converts a bound on A″ into a bound on B′ = (1/i)log of the averages, so a_σ ≥ 2C_1ε_1^{102}/K_av is the expected value. The norm: ‖H_{1,k}‖ ≤ O(1)B_3 is the Q-050 residue reading; Δ_1(ζ_0) is the second variation of a finite sum of plaquette terms at a configuration whose plaquettes are within O(a_σ) of 1, so ‖Δ_1(ζ_0)‖ ≤ O(1) [P-sketch, CMP 99 (3.10) form, W6_CHECK_122 §2 [V]].
Grade of (A-σ): [R] to R-019 for analyticity, [I] for the transfer of the radius through M^k and for the two norm bounds on the a_σ-domain. It is the Q-050 residue reading "G^c extension, ‖H_{1,k}‖ ≤ O(1)B_3", stated on a domain of fixed radius a_σ instead of the radius α_{1,k}. This is the only new reading in this file. It needs an H- id (proposal: next free H- id, label (A-σ)).
Why a fixed radius is needed. On the domain of radius α_{1,k} alone, the Schwarz step below gives no small factor (radius ratio 1). The small factor α_{1,k}/a_σ needs analyticity on a domain whose size does not shrink with g_k. Balaban's own construction gives such a domain, because the CMP 102 radius ε_1 is a fixed number; the g_k-dependence of α_{i,k} comes from the E-term bounds, not from the background map.

4.2 Lemma Σ. Assume (A-σ), (Rd1), (Rd2), H-270 (log g_k^{−2} ≤ R_k), and α_{1,k} < a_σ. Put y := log g_k^{−2} ≥ 1 and N_Λ := number of bonds of Λ ≤ d(100M)^d. Then for every U ∈ U_k^c(Z, α_{0,k}, α_{1,k}) and every B′ ∈ supp μ_0:
  |σ_U(B′; U)| ≤ S(g_k),
  S(g) := 2C_KC_1a_σ^{−1}N_ΛM_0²A_0² g y^{2p_0+q_1} + 2c_VN_Λ g^{1−β} + 2c_1B_3M_0A_0(A_0 + C_0 + C_1)(100M)⁴ g² y^{2p_0+q_0+q_1},
with c_V the O(1) of the printed V-bound and c_1 the O(1) of (1.6) after (Rd2).

Proof. σ_U = σ_2 + σ_1 + σ_V, the differences of q_2, q_1, q_V between U and U^r.
(a) σ_2 (Schwarz lemma) [P given (A-σ)]. Let α̂ := max(sup|A′|, sup|∇A′|) < α_{1,k}. For s ∈ C put U_s := exp(iξsA′)U^r and φ(s) := ⟨B′, K(U_s)B′⟩ − ⟨B′, K(U^r)B′⟩ (bilinear pairing; B′ is real). For |s| < ρ := a_σ/α̂ the field sA′ obeys the a_σ bounds, so φ is holomorphic there by (A-σ), and |φ| ≤ 2C_K‖B′‖². Also φ(0) = 0. The Schwarz lemma gives |φ(s)| ≤ 2C_K‖B′‖²|s|/ρ. Since ρ > 1, s = 1 is allowed, and U_1 = U. So |σ_2| = ½|φ(1)| ≤ C_K(α_{1,k}/a_σ)‖B′‖². On supp χ, |B′(b)| < M_0ε_k/g_k ≤ M_0A_0y^{p_0} by (Rd1), so ‖B′‖² ≤ N_ΛM_0²A_0²y^{2p_0}. With α_{1,k} = g_kC_1y^{q_1} (CMP 119 (2.28), L1_E V3 [V in L1_E]) this is the first term of S, with a spare factor 2.
(b) σ_1 (stationarity, then the printed bound) [P given (Rd2), H-270]. The identity (1.4)–(1.5) holds at complex U: both sides are holomorphic in U (U_0(M^k(U)) is the holomorphic extension of the stationary point), and they agree at real U, so they agree on the connected domain. So q_1(U) = g_k^{−1}⟨DH_{1,k}B′, (1 − ζ_0)η^{−2} Im ∂U_0⟩ at complex U, and (1.6) with (Rd2) bounds it by c_1B_3M_0A_0y^{p_0}(α_{0,k} + α_{1,k})g_k^{−1}e^{−R_k}(100M)⁴. At U^r the printed (1.6) gives ≤ 3B_3M_0A_0²y^{2p_0}e^{−R_k}(100M)⁴. H-270 gives e^{−R_k} ≤ g_k². The sum |q_1(U)| + |q_1(U^r)| is at most the third term of S.
(c) σ_V (printed bound) [R, p. 357 + (Rd2)]. |q_V| ≤ c_Vg_k^{1−β}|Λ| at U^r (printed) and at U ((Rd2)). So |σ_V| ≤ 2c_VN_Λg_k^{1−β}. ∎

4.3 Monotonicity [P]. g ↦ g y^a is increasing for g < e^{−a}, since d/dg(g y^a) = y^{a−1}(y − 2a). g ↦ g²y^b is increasing for g < e^{−b/2}. g ↦ g^{1−β} is increasing. So for γ ≤ e^{−(2p_0+q_0+q_1)} and every g_k ≤ γ: S(g_k) ≤ S(γ). The flow keeps g_k ≤ γ at every k ≤ K (as used in L-165 Step 5, Theorem 2w (b)). So the bound is uniform in k. It is uniform in the volume, since N_Λ uses only the 100M cube [V p. 357].

4.4 The CMP 122 I (1.100) denominators [P-sketch]. CMP 122 II p. 356 states that (1.1) is a term of (1.99)–(1.100) [IV] in simpler notation [V]. So Lemma Σ covers the (1.100) denominators. If the component Λ_i is bounded by a cube of side 100MR_k (the L-165 convention, SOURCES_FX_D l. 15) and not 100M, replace N_Λ by d(100MR_k)^d. R_k is a power of y (canon q = 2p_0 + 4p_R in L-165), so only the exponent of y in S grows, by dp_R. The form of the condition does not change.

## 5. The two constructions; choice B is live

5.1 Weight-free denominator (choice A of SOURCES_FX_O23 §4) [P]. The integrand of (1.2) then depends on U only. The cutoff ε_k, M_0 and Λ are frozen (K-001), and U is the field argument, not a function of f. So σ = σ_U does not depend on the source, and σ_W ≡ 0. (N) reads S(γ) ≤ ½. The r half of (J-c) is void. SOURCES_W6_RESOLVE §2.3 decides that choice A is not live, so this case is recorded only for completeness.

5.2 Choice B: the live construction (SOURCES_W6_RESOLVE §2.3). The front factor and the denominator carry the same sourced Wilson weight w_f = g_k^{−2} + δw_f on supp ζ_0, with no E-, R- or B-activity. The reference is (U^r, f = 0), so dμ is Balaban's real positive measure of §3.3. The source term is not multiplied by g_k^{−2}, so no extraction is needed for it:
  D(f; U) = exp[−g_k^{−2}A(ζ_0, U_0(U)) + E_k(Λ)] · ∫ e^{σ_U + σ_W} dμ,   σ_W(B′; U, f) := −Σ_p δw_f(p)ζ_0(p)P_p(U_{k,Z}(V′V_Λ)).   (5.1)
Bound on σ_W: this is input (T1) of SOURCES_W6_RESOLVE §2.5(a): |σ_W| ≤ 3rΦ′(g_k) on supp χ, with |δw_f| ≤ (3/2)|f| on the strip Q (R-042), and Φ′ the L-165 Step 4 function with ε_k → ε_k + O(α_{0,k} + α_{1,k}). [R: R-042, L-165 Steps 2–4, p. 358 sentence]

Proposition Σ-B (sourced R-denominator at complex field and complex source) [P given (A-σ), (Rd1), (Rd2), (T1), H-270]. Assume S(γ) ≤ ¼ and 3rΦ′(γ) ≤ ¼, and γ ≤ e^{−(2p_0+q_0+q_1)}. Then for every k, every U ∈ U_k^c(Z, α_{0,k}, α_{1,k}) and every f on the source polydisc (values in Q):
 (i) |D(f; U)| ≥ ½ |e^{−g_k^{−2}A(ζ_0,U_0(U)) + E_k(Λ)}| ∫dμ > 0;
 (ii) ∫|e^{Q(·;U)}|dμ_0 = ∫e^{Re σ_U}dμ ≤ e^{1/4}∫dμ ≤ 2e^{1/4} |∫e^{σ_U}dμ|. This is (T2) of W6_RESOLVE with e^{C_1M⁵} replaced by 2e^{1/4} < 3;
 (iii) L(f; U) := Log(D(f; U)/D(0; U)) (principal branch) is jointly holomorphic, and |L| ≤ 1.4;
 (iv) with I_f defined by D(f; U) = exp[−A(w_fζ_0, U_0) − I_f(U_0) + E_k(Λ)] (the reciprocal form of (1.10)), |I_f(U_0)| ≤ |I(U_0)| + 1.4 + 3rΦ′(g_k) < O(1)M⁵ + 2.
Proof. (i) By Lemma Σ and 4.3, |σ_U| ≤ S(γ) ≤ ¼; by (T1) and the monotonicity of Φ′ (L-165 Step 5), |σ_W| ≤ ¼. So |σ_U + σ_W| ≤ ½ on supp dμ, and Lemma D3.1 gives |∫e^{σ_U+σ_W}dμ| ≥ ½∫dμ. Multiply by the nonzero prefactor of (5.1).
(ii) |e^{σ_U}| = e^{Re σ_U} ≤ e^{1/4}. The lower bound of (i) at f = 0 gives ∫dμ ≤ 2|∫e^{σ_U}dμ|.
(iii) |D(f)/D(0) − 1| = |∫e^{σ_U}(e^{σ_W} − 1)dμ| / |∫e^{σ_U}dμ| ≤ e^{1/4}(e^{1/4} − 1)∫dμ / (½∫dμ) = 2e^{1/4}(e^{1/4} − 1) = 0.730 < 1. So the principal Log of the ratio is defined and holomorphic in (f, U) (the ratio is holomorphic: D(0; U) ≠ 0 by (i)), and |L| ≤ −log(1 − 0.730) = 1.31 ≤ 1.4.
(iv) I_f(U_0) = I(U_0) − L − A(δw_fζ_0, U_0) by (1.10), (5.1) and A(w_fζ_0, ·) = g_k^{−2}A(ζ_0, ·) + A(δw_fζ_0, ·). The last term is −σ_W at B′ = 0 (B′ = 0 lies in supp χ), so it is ≤ 3rΦ′(g_k) ≤ ¼ in modulus. With (1.11) [V] the bound follows. ∎

5.3 Comparison with Lemma TV of SOURCES_W6_RESOLVE §2.5(a).
- Lemma TV takes the complex measure dμ_U at f = 0 as reference and needs (T2) ∫|dμ_U| ≤ e^{C_1M⁵}|D(0; U)| [I]. Its condition (J-c′) is 3rΦ′(γ) ≤ ¼e^{−C_1M⁵}, i.e. γ ≤ γ_TV(M, r).
- Proposition Σ-B takes the real positive measure at (U^r, 0) as reference. It proves (T2) in the stronger form (ii), with the constant 2e^{1/4} instead of e^{C_1M⁵}, given (A-σ). So (T2) is no longer a separate [I]; its content moves into the reading (A-σ), which is of CMP 102 type (R-019) and is the Q-050 residue reading on a fixed-radius domain.
- Conclusions (iii)–(iv) are the conclusions of Lemma TV, with |L| ≤ 1.4 in place of |L| ≤ 1. Both are numbers that the (1.11) budget absorbs.
- Order of choices. γ_TV(M, r) makes γ depend on r. The canon fixes γ at N-470 and r at N-490, after γ (r_0 contains γ^{−2}/10 and 1/(6γ²c_1c_H)). So (J-c′) as written points against the canon order, unless r is replaced by its γ-free cap 1/8. Proposition Σ-B needs no r in the γ condition: r ≤ 1/8 (N-490) turns 3rΦ′(γ) ≤ ¼ into Φ′(γ) ≤ 2/3.
- Lemma TV's proof is correct as a [P-sketch] given (T1), (T2). Proposition Σ-B supersedes it on the chain: it removes (T2) and the factor e^{C_1M⁵}. Both stay valid; the canon needs only the Σ-B condition.

## 6. The condition for canon line N-470

Proposed N-470 entry (J-σ) (replaces the σ half of L1_E (J-c), the condition (J-c′) of SOURCES_W6_RESOLVE §2.5(a), and the L-165 entry γ ≤ γ_Φ(M) proposed by SOURCES_L1_E_VERIFY):
 γ ≤ γ_σ(M) := the largest γ that satisfies
 (a) γ ≤ e^{−(2p_0+q_0+q_1)}, and γ below the monotonicity threshold of Φ′ (L-165 Step 5, e^{−q/2} with q = 2p_0 + 4p_R, raised to cover q_0, q_1 in Φ′);
 (b) C_1γ(log γ^{−2})^{q_1} < a_σ;
 (c) S(γ) ≤ ¼, with S as in Lemma Σ (§4.2);
 (d) Φ′(γ) ≤ 2/3.
Arguments: M (N-310); M_0 (N-320); B_3, ε_1^{102}, K_av, hence a_σ (N-060, N-320); A_0, p_0, C_0, C_1, q_0, q_1 (N-440 and the A_0, p_0 slots before it); β, p_R, c_V, c_1, C_K (absolute or (d, L) numbers). Every argument is to the left of N-470. No r appears.
Why (d) suffices for the source half: r ≤ 1/8 at N-490 gives 3rΦ′(γ) ≤ (3/8)(2/3) = ¼. Since Φ ≤ Φ′ (Φ′ is Φ with ε_k replaced by the larger ε_k + O(α)), (d) also gives Φ(γ) ≤ 1, i.e. L-165's γ ≤ γ_Φ(M). So one entry covers both.
Note at N-490 (no change of value): c_* := min(c, ½); c_*r ≤ 1/16 follows from r ≤ 1/8 (SOURCES_L1_E_VERIFY).
Direction: every item is an upper bound on γ, chosen after M. This is the direction of Balaban's own "stronger restrictions on g_k, or γ" (p. 358 [V]).
Weaker variant (§1.5): (c) and (d) may use any fixed s_*/2 < π/4 in place of ¼; the bounds in Proposition Σ-B then change by fixed numbers.

## 7. Resulting status

(J-c), σ half. Before: an unprinted reading [I] ("Balaban's sup|σ| ≤ ¼"; it cited the σ of the T′_k representation (1.73), not the (1.2) integral). After: Proposition Σ-B [P] given (A-σ) [R to R-019 + I], (Rd1) [I], (Rd2) [R, printed p. 358 sentence], (T1) [R, R-042 and L-165 Steps 2–4], H-270 (canon), under condition (J-σ) at N-470. The σ that is bounded is the one of (3.2), after the extraction of g_k^{−2}A(ζ_0, U_0); §3.4 shows that no other definition is small. Proposition Σ-B also proves (T2) of SOURCES_W6_RESOLVE in a stronger form (constant 2e^{1/4}), so (T2) leaves the input list, and (J-c′) with its r-dependence is not needed.
Lemma J3. Unchanged: it covers (D-iv) and I (1.62); it does not cover (D-iii) (SOURCES_L1_E_VERIFY §6(d), SOURCES_W6_RESOLVE §2.5(a)).
R-035 (B-S). Proposed change to the VERIFY text: replace "condition (J-c)" and "the σ half of (J-c) [I]" by "condition (J-σ) at N-470 and the reading (A-σ) [I] (SOURCES_JC_SIGMA)". Named residues: (W6*) [I] (now restricted per SOURCES_W6_RESOLVE §4) and (A-σ) [I]. (T2) is not a residue. Grade: reduced [R]; residues two readings.
H-116 (H-U). Still conditional. Inputs with no ledger row: (W6*) and (A-σ). The conditions γ ≤ γ_σ(M) and the L-165 condition become one canon entry (J-σ) at N-470 when it is adopted. Other inputs as in SOURCES_L1_E_VERIFY (B-T2, X-002, the R-035 list, R-043, the coarsest-scale H-191 radius).
Proposed edits to SOURCES_L1_E (not applied): in W6_RESOLVE (E1), (E6), (E7), replace "Lemma TV … (J-c′) … (T2) [I]" by "Proposition Σ-B (SOURCES_JC_SIGMA §5.2) under (J-σ) at N-470, with the reading (A-σ) [I]". Keep W6_RESOLVE (E4) as written.

## 8. Open points and verifier focus

1. (A-σ): check the CMP 102 Sect. G radius on the images (pp. 305–306, (172)–(175)) and that M^k maps the a_σ-polydisc into that ball; check that ‖H_{1,k}‖ ≤ O(1)B_3 and ‖Δ_1(ζ_0)‖ ≤ O(1) hold on it, not only on the α_{1,k}-domain.
2. (Rd1): ε_k ≤ A_0g_kp_0(g_k). If the true relation has another polylog, only the exponent in S changes.
3. Lemma Σ (b): the analytic continuation of the stationarity (1.4)–(1.5) to complex U. The identity needs U_0(M^k(U)) to be the holomorphic extension of the real minimizer, which is how p. 358 defines the extension [V].
4. Proposition Σ-B (iii): the numbers 0.730 and 1.31. They use |σ_U| ≤ ¼ and |σ_W| ≤ ¼ only.
5. §5.3: the order-of-choice objection to γ_TV(M, r).
Pages to re-read for a verifier: CMP 122 II pp. 356–358, CMP 109 p. 262, CMP 102 pp. 305–306.

STATUS: COMPLETE (unverified). The /tmp render folder was deleted after use.
