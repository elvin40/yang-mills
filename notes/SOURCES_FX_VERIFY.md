# SOURCES_FX_VERIFY.md — independent check of SOURCES_FX.md §0–7 (2026-10-27)

Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.
Page map: CMP 122 II PDF p. 29 = journal p. 383 ((1.77)–(1.79)), p. 30 = 384 ((1.80)), p. 31–33 = 385–387, p. 34–37 = 388–391 ((1.90)–(1.104)).

## V1. Page images 383–384 (PDF p. 29–30)
- (1.79) image, transcribed: T_k(X)1 ≤ sup exp{Σ_{j=1}^k O(1)M^dR_j^{d+1}d′_j(Z_j)} · Π_{j=1}^k Π_i exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)})+1) − 2p_0(g_j)) Π′exp(−p_0(g_j)). Last product: components of Z_j with (i),(ii) "for which some large fields are created during the preparatory steps". Sup over admissible domains with (1.76). Matches SOURCES_FX §5. CONFIRMED.
- Text before (1.79): "the summations over the admissible sequences can be replaced by the factors exp O(1)(MR_j)^{−d}|Z_j|". CONFIRMED.
- Text after (1.79): "Notice that the above inequality holds for all large field regions, not only for the regions satisfying the conditions (i), (ii). For the last regions we will prove that the expression on the right-hand side can be estimated by exp(−2p_0(g_k))."
- Factor form: "If Z is a component of Z_j, and j(Z) is the index of a first large field region contained in Z, then we write the factor connected with Z in the form exp(−κ_j(Z) − 2p_0(g_{j(Z)}))." CONFIRMED.
- (1.80) image, transcribed: κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)).
  CORRECTION 1: the power is R_n^{d+1}, not R_n^d (SOURCES_FX §2 and §6.1 write R^d).
  CORRECTION 2: K in (1.80) is NOT the final scale. Verbatim: "The factor exp(−κ_j(Z)) controls K renormalization steps, under the assumption that no large fields are created in these steps, where the number K is the smallest positive integer having the property that the domain S^K(Z), considered as a domain in the lattice of the scale L^{−(j+K)}, satisfies the conditions (i), (ii), with N = R_j." So K = K(Z) = number of steps until the grown domain S^K(Z) becomes small (renormalizable). The sum runs over FUTURE scales n = j+1, …, j+K. The "first term" is n = j+1, not n = K+1.
  S(Z) = Z′^{~10}: cover by LMR_{j+1}-cubes plus ten layers.
- Scaling used in the induction (p. 384, bottom): d′_n(Z^{(n−j)}) ≤ L^{−½(n−j)}d′_j(Z) ≤ 2^{−(n−j)}d′_j(Z). This is an UPPER bound on coarse tree length. (1.80) gives κ as a lower bound by coarse-scale terms, so a lower bound on κ_j(Z) in terms of d′_j(Z) itself needs a reverse inequality d′_{j+1}(S(Z)) ≥ c·L^{−?}d′_j(Z). Not printed here.
