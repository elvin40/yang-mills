# LEAN_CATALOGUE — Mathlib-formalizable statements in the ledger

Date 2026-10-28. Planning document only. No Lean written here.
Scope: statements that are (a) finite-dimensional, algebraic, combinatorial, or real-analytic in a way Mathlib supports, and (b) cited in the ledger.
Excluded as in progress elsewhere: D″-nest/D′-nest envelopes; Schur-complement Gaussian marginal + one-bond corollary; A10′ raw-term divergence sum + gℓ^q monotonicity; 2D neutral-sector spectrum; canon acyclicity.
Feasibility scale: easy (< 1 agent-hour), medium, hard, NMR (not Mathlib-ready).

## 0. Already in Lean (31 files, lean/README.md) — not re-listed

Propagator side: CombesThomas, KernelRow, Schur, BlockSchur, Resolvent, WeightedNorm (Lemma N core), GaugeMin (Lemma 5), SlabCounterexample, WalkAffine, Interp, BlockInequalityE (Lemma E), CauchyPerturbation (Lemma CP).
Flow side: LemmaDPrime, LemmaDE, LemmaDDoublePrime, LemmaH, Gronwall, TheoremK (arithmetic), TheoremC1, StripBound.
Determinants: DetIdentities, Telescoping, AbelianCount.
Certificates: CertBridge, BlockNorm, OishiRump, Tower (Lemma T (a)–(c)), Envelope, Divergence, CubeCount (Lemma [P] core).
Gaps the README records as "not formalized" and that recur below: history-dependent β (L5); Lemma H Steps 2–3; Lemma N (N2)–(N4); μ-weights of A1 §7 and Σ(δ/2) on the block lattice; Lemma T (d), Lemma S, Lemma Gauge, F_CS; Jacobi complementary-minor coarea identity; dim ker Q count; CubeCount Facts A–C.

