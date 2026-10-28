# H1_ANALYTIC_VERIFY — independent check of H1_ANALYTIC.md

Started 2026-10-27 (Claude, Opus 5.5). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.
New files only under numerics/h1analytic/. One section per tool call.

## V0. Read H1_ANALYTIC.md, h1cert_rho1.py, bb.py
- bb.py exists in numerics/h1analytic (not only /tmp). Default n0 = 8, maxdepth = 6; §6 says initial 16⁴ grid, so the run used n0 = 16 (to confirm).
- First audit notes on bb.py: F_CS box enclosure uses monotone 1D pieces (sinc² decreasing, 4sin²/(2π−K)² increasing on [0, π]; r_ρ decreasing in t; r_μ bounded num-hi/den-lo); the ratio Σx r/Σx with x = K² is linear-fractional, so its max over the box is at a vertex — correct.
- CS step (6.1) rederived on paper: Σ_ε σ_ν²q_ν² = (1+c)·4 sin²(K_ν/2) and 4sin²(K/2)/sinc²(K/2) = K², which gives K²r_ν exactly as stated. CONFIRMED.
- G is inherited from a parent box (valid: a bound on a superset holds on a subset). Leaves with B > target at maxdepth are counted as failures, and the returned sup is the max over leaf upper bounds. Termination logic is correct as written.
