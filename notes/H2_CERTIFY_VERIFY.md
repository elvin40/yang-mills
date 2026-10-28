# H2_CERTIFY verification (independent)

Verifier: Claude (Opus 5.5), 2026-10-27. Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 1. Read H2_CERTIFY.md and h2cert_proto.py; reruns launched
- Read both files in full. Launched h2cert_proto.py at N = 6 and N = 12 (background, /tmp/h2v/run{6,12}.txt).
- (H2) per B2_TWOSTEP l.120: ρ_2 = sup_j sup_K ‖(⊕_l H_{j−1}(k_l)) H_j(K)‖/L² < L. Matches H2_CERTIFY §1.
- U3_REPAIRS O6 numerics (177) use A = ⊕Δ_j + DD^† (no ¼) and Q̃ = Q − K̂Λ with the minimal Λ, j = 0, 1, 2. The prototype uses ¼Δ and the (0.4) row. So the two matrices differ in the A-block scale and in Q̃. To be reconciled in §5 below.
