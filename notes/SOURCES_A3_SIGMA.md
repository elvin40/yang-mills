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
