# H1_ANALYTIC_VERIFY2 — independent construction of H_j(K) (residue of H1_ANALYTIC_VERIFY item 6)

Firewall: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 0. Start
File created. Plan: read H2_LARGE_L §1–§2, U3_REPAIRS Prop. A, H1_ANALYTIC §1–§3, then build numerics/h1analytic/indep_H.py.

## 1. Definitions read
H2_LARGE_L §1, H2_CERTIFY_L13 §1–§2.1, H1_ANALYTIC §1–§5, U3_REPAIRS Prop. A read. Note: H2_LARGE_L §2 is the L = 3 validation; the definition of H is in §1 and in H2_CERTIFY_L13 §1 (H_j = one-step gauge-fixed minimizer, fine kernel Δ_{j−1} = Prop. A at M = L^{j−1}). Production h1cert_rho1 uses the augmented 5-row border of umk_beta1 (4 averaging rows + aux row d̂_0^†) and A = ⊕Δ + d̂d̂^†. avg_profile lives in numerics/umk_beta1.py, not h2_scan.py.
