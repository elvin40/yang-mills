# SOURCES_BOOKKEEPING — closing TRUST_LEDGER rows A9, A12, A20, A22

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md not read.
Tags: [V] read on the page image; [T] read on the text layer (pdftotext) only; [P] our proof from the quoted lines; [I] inference.
Item list for A22 is reports/BALABAN_EXCERPTS.md "Needs verification" items 5, 8, 9, 10, 11, 12 (= BALABAN_EXCERPTS_CHECK item 11), plus the KAPPA2_VERIFY addition (CMP 119 Sect. 3 T step).

## 1. R_{K+1} ≥ 1 (row A20, first half)

Quotes.
- CMP 119 p. 245 (pdf p. 3) [V]: "MR_0, where R_0 is the smallest power of L such that R_0 ≥ (log g_0^{−2})^r, r ≥ 2, and M = L^m is sufficiently large."
- CMP 119 p. 246 (pdf p. 4) [V]: "R_1 is the smallest power of L such, that R_1 ≥ (log g_1^{−2})^r."
- CMP 119 p. 255, (2.5) (pdf p. 13) [V]: "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r." The letter r appears twice. On p. 245 the exponent r of the logarithm is a fixed number with r ≥ 2. The exponent of L is not named there ("smallest power of L"). So (2.5) reuses r loosely; the power of L is a free integer n.
- CMP 122 I p. 192 (pdf p. 18), after (1.70) [V]: "This number is defined by the equality L^{−N_0+1}R_{k−N_0+1} = 1, from which we get L^{N_0−1} = R_{k−N_0+1} ≤ (L+1)(N_0+1)^{β_0}R_k."

Correction to the task framing. The question "does the definition allow r = 0" mixes the two exponents. The log exponent r is fixed, r ≥ 2 (p. 245). The L exponent n is not restricted in print. Neither fact is needed.

Proof [P]. Let g_j ≤ γ with γ² < e^{−1} (γ < 0.607). Then log g_j^{−2} > 1, so (log g_j^{−2})^r > 1 for r ≥ 2. By (2.5), R_j ≥ (log g_j^{−2})^r > 1. R_j = L^n with n an integer and L ≥ 2. L^n > 1 forces n ≥ 1. So R_j ≥ L > 1 for every j with g_j ≤ γ. This uses only that R_j dominates a quantity > 1; it does not use "smallest".
- R_{K+1}: if it is defined by (2.5) with g_{K+1} ≤ γ, the proof above applies. If it is defined by R_{m+1} = LR_m (CMP 122 II p. 385, see §2), then R_{K+1} = LR_K ≥ L² > 1. Both readings give R_{K+1} ≥ L.
- The l. 909 equality is consistent: R_{k−N_0+1} = L^{N_0−1} ≥ L requires N_0 ≥ 2, which matches R ≥ L. It is not needed for the proof.

Grade: R_{K+1} ≥ 1 is PROVED from the printed definition [V + P], with the stronger R_{K+1} ≥ L. The only condition is γ < e^{−1/2}, which every "γ sufficiently small" choice meets.

