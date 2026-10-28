# SOURCES_HIGHER_M1 — higher derivatives (Part A) and (M1) (Part B)

Status: in progress (2026-10-28). Firewall kept: no SA repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## Ledger

- [read] SOURCES_GGAIN §4.4–§6, GGAIN_VERIFY item 6 and §7; SOURCES_GGAIN_LF §3, §10.

## A1. What the derivative sources prove, and where "higher derivatives" is listed as open

A1.1 Small field (GGAIN). Route (b) proves the FIRST own-slot derivative only: |∂_{g_k}E^{(k+1)}| ≤ S_0·decay, |∂β_{k+1}/∂g_k| ≤ C_β = C_ΠS_0, on g_k ∈ (0, γ]. GGAIN §4.5 says: "Higher derivatives (Balaban's 'all derivatives') are not proved here; HHIST needs only the first." Route (b) is a real derivative. It does not iterate for free: a second real derivative marks two vertices or one vertex and one χ̂ bond, or hits χ̂ twice (χ̂″ term). Route (a) (holomorphy in u on a complex disc) gives all orders at once by Cauchy, if the disc is established.
A1.2 Large field (GGAIN_LF). §3.1–§3.2 uses a disc D = {|g − x| < ρ_0x}, ρ_0 = 0.1, around the real coupling x, from HHOL_LF. On D the printed bounds hold with modified constants. §3.2 is a Cauchy step for the first derivative only. The ledger §10 lists "[open] … higher derivatives". GGAIN_VERIFY §7 lists "not covered: … C¹ at g = 0" and does not claim higher orders.
A1.3 Observation used below. GGAIN_LF §3.2 is already a Cauchy estimate on a disc of radius ρ_0x. The same estimate at order k is the standard one: |∂_g^kF(g)| ≤ k!(2/(ρ_0x))^k sup_D|F| for |g − x| ≤ ρ_0x/2. The factor x^{−k} is the only change. §3.3 absorbs x^{−1} by x^{2θA_0−1}; at order k it absorbs x^{−k} by x^{2θA_0−k}, which needs A_0 ≥ k/(2θ). This is a condition on A_0 (Balaban's "A_0 large") that grows with k. For a FINITE list of needed orders it is a finite condition. Section A3 shows the largest needed order is 2.
