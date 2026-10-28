# SOURCES_T2_IEPS_LF: (I-ε) in the large-field layer (CMP 119/122)

Closure task for the residue of SOURCES_T2_IEPS_VERIFY §20–§22. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Inputs read: SOURCES_T2_IEPS_VERIFY.md (all 22 §§), SOURCES_T2_IEPS.md §§5–11, SOURCES_MC.md §9–§10, SOURCES_HHOL_LF.md, SOURCES_GGAIN_LF.md (grep for thresholds, radii, freeze).
Offsets (VERIFY §1): CMP 119 printed = PDF + 242; CMP 122 II printed = PDF + 354.

## 1. CMP 119 pp. 259, 261 (PDF 17, 19; 300 dpi images) [V]
- p. 259 (2.27): each localized E^{(j)}(X, U_k, z) has an analytic extension on U^c_j(X, α_{0,j}, α_{1,j}). This is the CMP 109 space (I.1.11)–(I.1.16), with the fixed radii α_0, α_1 replaced by α_{0,j}, α_{1,j}. Property (iv) is the CMP 109 bound (I.1.18).
- (2.28): α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}; "q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers." Image confirms VERIFY §20.
- p. 261: the B-terms live on a NEW multiscale space Ũ^c_j(X, α̃_0, α̃_1). Its conditions (2.34)–(2.39) use the scale-n radii on each layer Ω_n\Ω_{n+1}: |∂U − 1| < (1 − β(1 − 2^{−(j−n)}))α_{0,n}ξ²(L^nξ)^{−2}; |J| < (…)α_{0,n}(L^nξ)^{−3}; (2.38) gauge-fixed |A|, |∇A| < BCMα_{0,n} with absolute B; (2.39) |A′|, |∇A′| < (…)α_{1,n}. β "small … not too small, e.g. β = 1/4".
- So α̃_i is shorthand for the sequence {α_{i,n}}_{n≤j}. VERIFY §19's open [I] ("relation of α̃_0, α̃_1 to the fixed α_0, α_1") is now [V]: α̃_i = (α_{i,n})_n of (2.28). There is no separate fixed α_i in the large-field layer.
- (2.42): |B^{(j)}| < B_0exp(−κd_j(X)). No radius condition.

