# SOURCES_EU verification (independent)

Started 2026-10-27. One section per step.

## 1. Rerun of numerics/k0_d.py (1.9 s)
All printed numbers reproduce. d = 4: K_0 = 103.2480 (N = 3), 146.7312 (5), 185.6429 (13); N = ∞: 195.1949 / 195.1885 / 195.1878 at M = 20/40/60. d = 3: 75.3096, 102.1078, 122.4375, 126.8533.
Tail: successive differences 0.0064, 0.0007 fit 1/M³ (not 1/M as SOURCES_EU says); extrapolated limit 195.1876. Rounded value 195.19 stands.
The argmin is p′ = (π,…,π) at every N tested (grid + Nelder–Mead). At N = ∞ only the corner is evaluated, so "minimum at the corner" for N = ∞ is extrapolated from finite N, not computed.
d = 2 real-space checks print 48.19834711, 19.44000000, 22.18934911, equal to momentum values.
κ − 1 identity: KAPPA_D defines κ = 1 + 1/(a·inf T); k0_d defines K_0 = 1/inf T with the same T function (imported from kappa_d.py). So K_0 = κ − 1 at a = 1 is an algebraic identity, not an independent numerical match. KAPPA_D values minus 1 equal the K_0 values at every N listed (104.248→103.248, 147.731→146.731, 186.643→185.643, 196.188→195.188; d = 3 likewise).
Monotonicity in N: holds for N = 3, 5, 9, 13, 25, ∞ (KAPPA_D list). Not proved.

## 2. Independent d = 2 check (own script /tmp/eu_verify/indep_d2.py)
Method: explicit forward-difference energy η^d Σ|∇_ηA|², full KKT system with QA = B and mean(A) = 0, B restricted to mean zero; K = top eigenvalue of XᵀEX. Symbol side: own loop over aliases l with s(q) = sin²(q/2)/(N sin(q/2N))², not importing kappa_d.py.
Results (KKT vs symbol): N=3,L_u=4: 48.19834711 vs 48.19834711; N=3,L_u=3: 19.44000000 both; N=5,L_u=3: 22.18934911 both; extra N=3,L_u=5: 33.61058744 both. Differences ≤ 5e−12; |QA − B| ≤ 5e−14.
Remark: transverse shift of the corridor (block centred vs cornered at c_−) changes only a phase of the symbol, so the eigenvalues do not depend on it. Item 1 numerics: CONFIRMED.
