# SOURCES_A23_TSTEP_VERIFY

Independent verifier, 2026-10-28. Firewall kept: no /tmp/sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP.

## 0. Start
File created before reading. Sections appended per tool call.

## 1. Context read
- Author file SOURCES_A23_TSTEP.md: claims (1)–(4) as in the task.
- TRUST_LEDGER rows: A23 "not printed; use consistent; used by B22 [R]"; B22 "reduced [R] ... (K1)–(K3), κ ≥ 1536; Lean K1_numeric (δ = 0.03, L = 13)".
- KAPPA2 (K1): θ(1 − 10δ)L/2 ≥ 1 + 4β; (K2) θ(1 − β)L/2 ≥ 1 + 3β; (K3) M ≥ 12L(3κ_final^θ/C_1)^{1/d}; κ_eff = θκ/(1 + 4β); κ ≥ 1536 from (1.94) at κ_eff; κ_0 factor 3.6 = 0.0692/(0.0385·0.5), where 0.0692 = (1/10)(1 − 4/13) is the unsourced δ_B.
- KAPPA2_VERIFY §4: θ = 1 − m_tot/κ, additive absorptions; §8 (R-a) flags CMP 119 Sect. 3.
- BOOKKEEPING §4: CMP 119 Sect. 3 prints no loss constant; only prefactors change.

## 2. Lean (task e) — done
- New file lean/YmLean/K1Prime.lean, theorem YmLean.K1_numeric_13 over ℚ, proof `norm_num`. States: (1/13)(1 − 2(1+4·¼)/(½·13)) = 5/169 (≈ 0.02959); 1 + 4·¼ ≤ ½(1 − 13/40)·13/2; NOT 1 + 4·¼ ≤ ½(1 − 13·0.03)·13/2.
- Import added to lean/YmLean.lean after YmLean.Interp (only edit to an existing file; the lakefile globs the lib, no lakefile change needed). Interp.lean untouched.
- `lake build YmLean.K1Prime`: 10 s; full `lake build`: success, 2540 jobs, 8.6 s. No sorry. Axioms: [propext, Classical.choice, Quot.sound].

## 3. Images: CMP 109 contents, CMP 116 "(6.6)" (task a)
- CMP 109 pdf p. 1 (300 dpi): "Commun. Math. Phys. 109, 249–301 (1987)". Contents: 0 (249), 1 (260), 2 (265), 3 (269), 4 (281), 5 (292), References (298). No Sect. 6 or 7. [V]
- CMP 116 printed p. 2: "The first paper is referred to as I ... e.g. Sect. I.3, or the formula (I.1.18)". Sect. 1 title "Localizations and Bounds of Terms in the Fluctuation Field Action". [V]
- The "(6.6)" cite is on printed p. 3, not p. 2 (minor page slip by the author): "(1.6) ... For more detailed explanations of (1.6) see Sect. C [13]. ... Each factor in (6.6) depends on external gauge field configurations restricted to ... X̃_j^5". It refers to the display (1.6) just above. [V] So CMP 116 Sect. 1 was Sect. 6 in a preprint numbering. Strong support for claim (1).
