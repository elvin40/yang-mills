IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# VERIFY: Concatenation.lean

WG_FULL §3.1 Lemma C(c) in abstract form (finite X, μ-weighted composition, weight m, plain distance d with triangle inequality, junction sum c₁ as hypothesis): `concat_two`, `concat_two_rate`, `concat_list` (Π a_i · c₁^{m−1} · m · e^{−(1−θ)δd}, one (1 − θ) loss), `junction_of_telescope`, `junction_of_weighted`; build passes, no `sorry`, axioms [propext, Classical.choice, Quot.sound]; not formalized: walk distance d(ω, y, y′) and its junction subadditivity (Step 2), parts (a), (b), (d).
