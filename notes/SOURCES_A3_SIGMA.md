# SOURCES_A3_SIGMA — lower bound for the s-localized covariance C^{(k)}(Z_0, s), s ∈ [0, 1]

Status: Opus draft 2026-10-28, unverified. Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP).
Inputs read [V text]: SOURCES_A3_GAMMA0 §5–§8; SOURCES_A3_GAMMA0_VERIFY V5–V6 (item 6 σ-gap); SOURCES_LOC §0–§6; SOURCES_LOC_VERIFY §1–§9; SOURCES_A2_R2 (header only, 331 bytes: no proof content yet).
Target. λ_min of the s-localized form ≥ γ_0 − ε(s, M), uniformly in s ∈ [0,1]^{σ_0}, Z, k, volume, regular U.

## 0. Ledger (filled as sections land)
(ledger is §6; sections below are appended in order.)

## 1. Definition of C^{(k)}(Z_0, s) from the page images [V images p. 3, p. 13 at 130 dpi]
1.1 p. 13, verbatim: "The parameters s(Δ), Δ∈σ_0, are introduced into the operators as before, but the generalized random expansions are constructed now in a slightly different way. ... We choose Z̃_0 as one of the domains, more exactly we take a domain X_0 such, that X̃_0^5 = Z̃_0 ... Other localization domains X are chosen as in Sect. C [13], i.e. they are unions of small, connected families of M_1-cubes, and we assume that dist(X, Z_0) > ⅔M. ... This construction was discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}." σ_0 = cubes of size LM disjoint from int Z̃_0 (or int Z_0′). Matches SOURCES_LOC_VERIFY §3.
1.2 p. 3, verbatim: (1.6) "Σ_ω R_0(X_0)R_{α_1}(X_1)···R_{α_n}(X_n)"; (1.7) each term "can be bounded, as (3.108) [13], by O(1)O(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}exp(−δ_0d(ω,y,y′))"; "This bound holds for all operator norms in formulations of theorems in [13]"; "The first two factors in (1.7) are used to control the sum over ω". s-rule: "for a random walk ω localized in X̃_0^5 ∪ X̃_1^5 ∪ ··· ∪ X̃_n^5 we take the {Δ_1,…,Δ_m} of all cubes from σ_0 which intersect this localization domain, and we multiply the term in (1.6) corresponding to ω by s(Δ_1)···s(Δ_m)."
1.3 Definition used below [P from 1.1–1.2; I: the [13] expansion of C^{(k)}(Z_0) is a plain walk sum of the (1.6) type, caveat of LOC_VERIFY §3]. Write T_ω for the term of ω (an operator on fields on Z_0, or its block kernel T_ω(b,b′)). Write s^ω := Π_{Δ∈σ_0, Δ∩loc(ω)≠∅} s(Δ). Then
 C_s := C^{(k)}(Z_0, s) = Σ_ω s^ω T_ω,  C_1 = C^{(k)}(Z_0) = (Z_0AZ_0|_{Z_0})^{−1}, A := C*Δ_kC.
 The factors R_α(X_j) do not carry s; s enters only through the scalar s^ω [I: p. 13 says C^{(k)}(Z_0) has its own expansion; the Δ_k(s) of (2.8) is a separate argument].
1.4 Correction to the brief's plan step (1). The walk sum is an expansion of the COVARIANCE C_s, not of the precision. "Deleted walks" have no meaning inside C_s^{−1}. So the clean route is at covariance level first (§2–§3); the precision remainder R(s) is derived afterwards (§4).

## 2. Uniform covariance remainder by termwise domination [P given (W) below]
2.1 Split the walks. W_σ := walks whose localization domain meets some Δ ∈ σ_0. Walks not in W_σ have s^ω = 1 for every s. So
 D(s) := C_s − C_1 = −Σ_{ω∈W_σ} (1 − s^ω) T_ω.
 For real s ∈ [0,1]^{σ_0}: s^ω is a product of numbers in [0,1], so 0 ≤ 1 − s^ω ≤ 1. Equality 1 − s^ω = 1 holds at s ≡ 0. [P]
2.2 Input (W) [R: (1.7) = (3.108) of [13] = CMP 109, applied to the [13] expansion of C^{(k)}(Z_0); the counting of walks that makes "the first two factors control the sum over ω" is in [13] Sect. C, not re-read]. The walk sum converges absolutely in kernel blocks:
 Σ_ω |T_ω(b,b′)| ≤ Σ_ω O(1)O(M_1^{−1/2})^{|ω|}M_1^{−½|ω|}e^{−δ_0 d(ω,b,b′)} < ∞,
 with d(ω,b,b′) ≥ |b_− − b′_−| (the walk joins the cubes of b and b′).
2.3 Geometry of W_σ [P + I]. Zero-length walk: domain X̃_0^5 = Z̃_0, which does not meet int of any σ_0 cube; so it is not in W_σ [I: "intersect" = shares a cell; SOURCES_LOC §2.4]. A walk in W_σ has a domain X_j that meets a σ_0 cube; every such X_j has dist(X_j, Z_0) > ⅔M (p. 13). Both endpoints b, b′ lie in Z_0. So d(ω,b,b′) ≥ ⅔M [I: d(ω,·,·) dominates the distance from the endpoint cube to every domain of ω; this is the standard meaning of d in (3.108) [13], not printed on p. 3]. Hence on W_σ:
 e^{−δ_0 d} ≤ e^{−½δ_0·⅔M}·e^{−½δ_0|b_−−b′_−|} = e^{−⅓δ_0M}e^{−½δ_0|b_−−b′_−|}.
 This reproduces the exact M-factor e^{−⅓δ_0M} and the decay e^{−½δ_0|b_−−b′_−|} printed in (2.16) [V p. 16, re-read at 130 dpi]. That is evidence that (2.16) at real points comes from this split [I].
2.4 Termwise domination [P]. Define the majorant kernel K(b,b′) := Σ_{ω∈W_σ} |T_ω(b,b′)| (a kernel of nonnegative numbers, s-free). By 2.1, for every real s ∈ [0,1]^{σ_0}:
 |D(s)(b,b′)| ≤ Σ_{ω∈W_σ} (1 − s^ω)|T_ω(b,b′)| ≤ K(b,b′).
 Absolute convergence (2.2) justifies the rearrangement and the termwise bound. By 2.2–2.3:
 K(b,b′) ≤ ε_W e^{−½δ_0|b_−−b′_−|},  ε_W := e^{−⅓δ_0M}·B_W,  B_W := sup_{b} Σ_{ω∈W_σ, ω∋b} O(1)O(M_1^{−1/2})^{|ω|}M_1^{−½|ω|} = O(M_1^{−1}) (|ω| ≥ 1 on W_σ) [R: walk counting of [13]].
2.5 Precise form of the brief's step (2) [P]. The domination is NOT "the (2.16) bound for R(0) dominates R(s)". The printed (2.16) bound for R(0) is a bound on a SIGNED sum; cancellations may make it smaller than K. What dominates every D(s) is the s-free ABSOLUTE majorant K over W_σ. K is exactly what one bounds to get D(0) anyway (D(0) = −Σ_{W_σ}T_ω), so no new estimate is needed beyond (W).
2.6 Norm [P, Schur test as in SOURCES_LOC §3.3 and LOC_VERIFY §5]. ‖D(s)‖ ≤ ‖K‖ ≤ S_dε_W =: η_M for all s ∈ [0,1]^{σ_0}, S_d ≤ d·coth(δ_0/(4√d))^d. η_M is uniform in s, Z, Z_0, k, volume, and regular real U (constants of (1.7) are uniform in these [R: [13] Thm 3.1 regime]). η_M → 0 as M → ∞ with M_1, δ_0 fixed. No α-term appears: at real U, J = 0, real s the O(α_0+α_1) part of (2.16) (it comes from the complex U′, J; p. 15 [V via LOC_VERIFY §4]) is absent.

## 3. Covariance bounds, uniform in s [P given (W), Lemma LOC (i), and (N)]
Inputs. (N) γ_0 ≤ A ≤ γ_1 [γ_0: SOURCES_A3_GAMMA0 §7 + VERIFY, verified sketch, reduced to R1–R5; γ_1: (3.132) + (E_U), R]. LOC (i): spec C_1 ⊂ [γ_1^{−1}, γ_0^{−1}] on Z_0-fields [P].
3.1 Form bound, no symmetry needed. For real v on Z_0: ⟨v, C_sv⟩ = ⟨v, C_1v⟩ + ⟨v, D(s)v⟩ ≥ (γ_1^{−1} − η_M)‖v‖². Also ‖C_s‖ ≤ γ_0^{−1} + η_M. Both for all s ∈ [0,1]^{σ_0}. [P]
3.2 Convex-combination structure [P, new]. s^ω is MULTILINEAR in s: each σ_0 cube enters once, with degree ≤ 1. A multilinear function on [0,1]^n equals the convex combination of its corner values with product weights. So, for finite σ_0 (finite volume) and by absolute convergence (W),
 C_s = Σ_{τ∈{0,1}^{σ_0}} w_τ(s) C_τ,  w_τ(s) := Π_Δ s(Δ)^{τ(Δ)}(1 − s(Δ))^{1−τ(Δ)} ≥ 0,  Σ_τ w_τ(s) = 1.
 Each corner C_τ is the walk sum with the walks meeting {Δ: τ(Δ) = 0} deleted. This answers the concern in SOURCES_A3_GAMMA0_VERIFY item 6 in part: the s-weighting IS a convex combination, not of positive forms Δ_k(s), but of the corner covariances C_τ. Consequences: (a) if every corner is symmetric, C_s is symmetric; (b) for symmetric corners, λ_min(C_s) ≥ min_τ λ_min(C_τ) and λ_max(C_s) ≤ max_τ λ_max(C_τ). Each corner obeys 3.1 with the same η_M (its deleted set W_τ ⊂ W_σ, same majorant K). So the uniform-in-s statement reduces to the 2^{|σ_0|} corners, each of the s = 0 type already treated by Lemma LOC. [P]
3.3 Monotonicity in s is still NOT claimed. C_s is not monotone in s in the Loewner order (the deleted terms T_ω have no sign). Only the two-sided bracket is uniform. [P]

## 4. The localized quadratic form (precision) [P]
4.1 Symmetric case. Assume (S_s): C_s real symmetric for s ∈ [0,1]^{σ_0} (by 3.2 it suffices at the corners). Assume η_M ≤ (2γ_1)^{−1}. Then spec C_s ⊂ [γ_1^{−1} − η_M, γ_0^{−1} + η_M] ⊂ [(2γ_1)^{−1}, ·], so C_s > 0 and
 λ_min(C_s^{−1}) = 1/λ_max(C_s) ≥ γ_0/(1 + γ_0η_M) = γ_0 − ε(M),  ε(M) := γ_0²η_M/(1 + γ_0η_M) ≤ γ_0²η_M,
 λ_max(C_s^{−1}) ≤ 2γ_1.
 ε does not depend on s. Since γ_0 ≤ γ_1, the condition η_M ≤ (2γ_1)^{−1} gives γ_0η_M ≤ ½, hence ε(M) ≤ γ_0/3 < γ_0/2. This is the target statement.
4.2 The precision remainder. R(s) := C_1^{−1} − C_s^{−1} = C_s^{−1}D(s)C_1^{−1} (resolvent identity). So ‖R(s)‖ ≤ 2γ_1·η_M·γ_1 = 2γ_1²η_M, uniform in s; R(1) = 0; R(0) = the R of LOC (E) (C_0^{−1} = Z_0AZ_0 − R). So at REAL points LOC's input (E) follows from (W) alone, in operator norm, without (2.16). It does not give the (2.16) pointwise kernel decay of R(s); that needs decay of C_s^{−1} (Combes–Thomas type) and stays with A2. Lemma G3 and LOC use only the norm. [P]
4.3 Non-symmetric fallback. If (S_s) failed: (i) the covariance bounds 3.1 hold as they are; (ii) the symmetric part Sym C_s = C_1 + Sym D(s), ‖Sym D(s)‖ ≤ η_M, satisfies 4.1 verbatim, and a real Gaussian with covariance operator C_s only sees Sym C_s; (iii) the precision of the unsymmetrized C_s obeys only the LOC_VERIFY §8 bound ⟨v, C_s^{−1}v⟩ ≥ (γ_1^{−1} − η_M)(γ_0^{−1} + η_M)^{−2}‖v‖² ≈ γ_0²/γ_1, positive but NOT γ_0 − ε. So the γ_0 − ε form needs (S_s) or symmetrization; c_− > 0 for Lemma G3 needs neither. [P]
4.4 Symmetry is not proved here. A sufficient condition: the [13] expansion is reversal-symmetric (T_{ω^rev} = T_ω^T, loc(ω^rev) = loc(ω)). (1.6) starts every walk at R_0(X_0) with X̃_0^5 = Z̃_0, so reversal symmetry is not visible on the page. Status of (S_s): [R] to p. 15 "For the pair (U,0) the operators are symmetric" (it names (U,0), not s; LOC_VERIFY §4). [I/R]
