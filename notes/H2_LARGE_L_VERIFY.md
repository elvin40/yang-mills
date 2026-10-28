# H2_LARGE_L verification (independent)

Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md. Mac only, numerics/.venv.

## 1. Rerun of --check (L = 3)
`python h2_scan.py --check`: j = 2 at (2.215, 2.215, π, π) gives 2.00857 (ref 2.00857); j = ∞ at (2.403, 2.403, π, π) gives 2.06332 (ref 2.0634, aw_verify lmax 5: 2.06336). Asserts pass. 0.3 s total.
