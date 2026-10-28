# FABLE_O3_ALC — Task A (O3, the sourced R-denominators) and Task B (AL-c, complex averaged link)

Fable 5.1, 2026-10-28. New file; no existing file edited. Scratch numerics: numerics/fable_o3_*.py.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Citation rule: inputs are cited by FILE NAME and section, never by bare ledger ids (renumbering in progress).
Grades: [P] proved here; [V] read on a page image or verbatim in a project file; [I] inference of mine; [R] reduced to a named open input; [N] numerical check.
Honesty rule: a proof that does not close names the exact failing inequality.

Sections are appended one per tool call.

## A0. Inputs read for Task A

Project files [V = read this session]: TRUST_LEDGER.md §0 and the rows "N3: |δw_k| ≤ (3/2)τ on Q" and "(FX): the final Mayer expansion …" (cited below as the N3 row and the FX row); CLOSURE_PLAN.md (its only line on this topic is the Table 4 note; no separate O3 row); SOURCES_FX_O23.md §1–§7 and SOURCES_FX_O23_VERIFY.md §1–§6; SOURCES_FX_D.md §1–§6 with its correction block; SOURCES_D3_NEW4.md §1–§6 with its correction block; SOURCES_D3R.md §1.1–§1.4 (Lemma P3; θ := γ²δ_r ≤ 5γ²r); SOURCES_HBETA.md §3(c); SOURCES_HBETA_N3.md §1–§4 (statement and reduction of N3); INFINITE_VOLUME_FABLE.md §2.2 and INFINITE_VOLUME_FABLE_VERIFY2.md §5 (C13: Balaban's main R-step form (1.90)–(1.98) is used; (1.103)–(1.104) and O4 are not).
Page images (300 dpi, this session): CMP 122 II pp. 356, 357, 358, 359 (so far; pp. 360–368 and 380–385 are read in A2–A4 below as needed).

Naming note. SOURCES_FX_O23 calls the R-denominator item "O2" and the large-field-source item "O3"; the FX row of the ledger lists "O3 conditional on B18 [the N3 row]". The brief calls the denominator item "obstacle O3". I use the brief's name: O3 := the whole sourced-complex statement that the FX chain needs from the R-operation at every scale, i.e. both the denominators (FX_O23 §4) and the T′ upper bounds (FX_O23 §5). Where a sub-item is meant, I write O3-den or O3-up.

## A1. O3 stated exactly as the chain needs it [P: statement assembled from the files above]

Objects (CMP 122 II (1.1), p. 356 [V]; CMP 122 I (1.100) as read in FX_O23_VERIFY §1 [V there]). At scale k, on a renormalizable component Z with small-field part Λ ⊂ Z (Λ in a cube of side 100M, p. 358 [V]), the R′-operation produces the ratio
  N_k(f; V) / D_k(f; V),  D_k(f; V) := ∫dV′⌈_Λ δ_{G_0}(V′) χ exp[−A(w_kζ_0, U_{k,Z}(V′V_Λ))],
with w_k(f)(p) := ω(p)g_k^{−2} the sourced plaquette weight (D3_NEW4 §1 [V]: the source enters the R-operation only as a plaquette factor ω on the Wilson weight; minimizer U_0, gauge G_0, cutoff χ, thresholds ε_k are NOT sourced). The numerator carries the sourced A″_k with the large-field operations T′_k(X) of (1.71) inside.

The source polydisc. For real f with ‖f‖_∞ ≤ r: |ω − 1| ≤ θ := γ²δ_r ≤ 5γ²r (D3R Lemma P3 + §1.4 [V]). For complex f = f_real + ζ, ‖ζ‖_∞ ≤ τ ≤ r: ω(p) = g_k²·w_k(f(x_p)) with w_k holomorphic in the source value c on Q = {|Re c| ≤ 2r, |Im c| ≤ τ} and |δw_k| ≤ (3/2)τ — this is N3 (the N3 row; SOURCES_HBETA_N3 §1–§2 [V]). Then |ω − 1| ≤ θ_c := γ²(δ_r + (3/2)τ) ≤ 6.5γ²r.

The field polydisc. The R-terms must be holomorphic in the complex background U ∈ U^c_k(Z, α_{0,k}, α_{1,k}) (p. 358 [V]: "we need such a bound for the integral extended analytically on G^c-valued configurations"), because later scales take field derivatives of them by Cauchy. So the sourced statement must hold jointly on (ω, U).

O3 as the chain needs it. For every K ≥ 1, ε = L^{−K}, every scale k ≤ K, every component Z (|Λ| ≤ (100M)^d scale-k sites), and every U ∈ U^c_k(Z, α_{0,k}, α_{1,k}):
 (O3-den) D_k(ω; U) is holomorphic in the complex plaquette weight ω on the polydisc 𝒫 := {ω: |ω(p) − 1| ≤ θ_c ∀p ∈ supp ζ_0}, non-vanishing there, and log D_k(ω; U) − log D_k(1; U) is holomorphic and bounded by a constant c_den(M, γ_0, d, L)·θ_c·|Λ|-type local term, independent of k, K, ε (so that the sourced R-term keeps the (1.68)–(1.69) bounds with a constant change and keeps radius c·r in the source).
 (O3-up) every upper bound (1.73), (1.79), (1.89), (1.92), (1.97), (1.100) on T′_k(X) with sourced weight holds on 𝒫 with γ_0 → γ_0′ ≥ γ_0/4 and p_0 ≥ 16/(γ_0A_1²) (FX_O23 §5, verified FX_O23_VERIFY §6 item 2 [V]); it needs only |Re ω| ≥ 1 − θ_c on real G-valued integration variables.
 (O3-hol) the map f ↦ ω(f) is holomorphic on the source polydisc with |ω − 1| ≤ θ_c: this is N3.
Uniformity required: in k, K (hence ε), |Λ| (through the per-component form of the constants only), and the torus volume (no volume enters; everything is per component).

What is already settled [V]: (O3-up) for all upper bounds (FX_O23 §5 + VERIFY). (O3-den) for REAL field U and real-or-complex source via Lemma D3.1 (|σ_W| ≤ τΦ(g_k) ≤ ½, FX_O23 §4 + FX_D §4, verified), conditional on N3 and N2. (O3-den) for COMPLEX U and real source via D3_NEW4 §4 (sourced (1.9) on the G^c extension, verified), without a non-vanishing statement.
What this file adds (A2–A4): (O3-den) for complex ω AND complex U, with the non-vanishing and the log-bound proved by a Gaussian/determinant estimate; the conditions in canon form; and the exact status of (O3-hol).
