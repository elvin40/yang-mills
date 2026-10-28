# SOURCES_HHOL_LF verification

Independent check of SOURCES_HHOL_LF.md items 1-6. Firewall respected.

## V1. theta_g arithmetic [num, python -I inline]
w = (x/g)^2 = (1+s)^{-2}, |s| <= rho_0 = 0.1, grid over the closed disc.
- min Re w = 0.82645 = (1+rho_0)^{-2}, attained at real s = +rho_0. So 1 - theta_g = 0.826 >= 0.82: CONFIRMED.
- max |1 - w| = 0.23457 = (1-rho_0)^{-2} - 1. The file's 0.259 = rho(2+rho)/(1-rho)^2 is a valid but loose bound. Not load-bearing.
- Gaussian per-mode factor (|u|/Re u)^{1/2} = cos(arg w)^{-1/2}; |arg w| <= 2 arcsin(0.1) = 0.2003, factor 1.0101 <= e^{2 rho_0^2} = 1.0202. CONFIRMED.
- The brief's alternative guesses (0.77 via |1-w|, or (1-2rho^2)/(1+rho)^2) are lower bounds weaker than the true min; the true value is 0.826.

## V2. CMP 119 p. 255 (2.4)-(2.6) [V, page image PDF p. 13]
Quote: "R_j is the smallest number of the form L^r such, that R_j >= (log g_j^{-2})^r. (2.5)". The same letter r is printed for both exponents; (2.7) writes the fixed power as p. Read: exponent of L = free integer, fixed power = r (or p). Quote of (2.4): "eps_j = g_j A_0 (log g_j^{-2})^{p_0} = g_j p_0(g_j)". MATCHES the file.
(2.6) on the page: for n > m, "g_n <= (1 + g_n^2 beta'(n-m))^{1/2} g_m ... , g_m <= (1+beta_0) g_n". So g_m^{-2} <= g_n^{-2} + beta'(n-m): u = g^{-2} DECREASES with the index; g_k GROWS with k (bare coupling g_0 smallest). Same direction as HBETA_N3 §3.
Correction to HHOL_LF §2: it writes "g_k^2 ~ (g_0^{-2} + beta_0 k)^{-1} -> 0" and "R_k -> infinity like (log k)^r", and reinterprets p. 177 "R_k decreases by L^{-1}" as "R_{k+1} = L R_k". All three have the index reversed. Correct picture: R_k = R(g_k) is non-increasing in k (p. 177 read literally is right); the largest value is at the fine end, R_0 ~ (log g_0^{-2})^r with g_0^{-2} ~ g^{-2} + beta K. So sup_k R_k ~ (log K)^r -> infinity as K -> infinity: unbounded uniformly in K, as claimed. "sup R_k <= L(log g_K^{-2})^r" is wrong; it is L(log g_0^{-2})^r.
Effect: the conclusion "R_k is not bounded uniformly in K" stands. The budget argument p_0(g) >~ R(g)^{d+2} is pointwise in g, so the direction error does not affect §3-§4.

## V3. CMP 122 I p. 201 (1.100)-(1.102) [V, page image PDF p. 27]
(1.100): the R' factor per component X_i is (1/N_i) sum over graphs G_i of the ratio
 delta_{G_i}(V'_k) chi(Lambda_i) exp[-g_k^{-2} A(zeta_i, U_{k,X_i}(V'_k V_{Lambda_i}))] / Int dV'_{Lambda_i} delta_{G_i}(V') chi(Lambda_i) exp[-g_k^{-2} A(zeta_i, U_{k,X_i}(V' V_{Lambda_i}))].
(1.101): chi(Lambda_i) = chi({|(1/i) log V'(b)| < M_0 eps_k, b in Lambda_i}). (1.102): Int dV_k (R' rho_k)(V_k) = Int dV_k rho_k(V_k).
Check: the denominator contains only the Wilson action at g_k, the axial-gauge delta, and the cutoff chi. No activities, no E/R/B terms. The activities (exp A''_k) sit in the last line, outside the ratio. CONFIRMED: a radius in input activities cannot enter this denominator. The coupling g_k enters it twice: the weight g_k^{-2} and, through eps_k = g_k p_0(g_k), the cutoff chi.
