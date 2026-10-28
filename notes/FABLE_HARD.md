# FABLE_HARD — four hard items of the infinite-volume programme (S1/L6, O(4), uniqueness, the wall)

Date: 2026-10-28 (Fable 5.1). Status: IN PROGRESS, sections appended one per tool call. Edits: this file only (+ numerics/fable_hard_*.py if any). No existing file touched.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Grades: [P] proved here; [V] verified reading of page images; [I] interpretation/reading of project text or of Balaban without page image; [R] Balaban printed theorem taken as input; [N] numerical.
Honesty rule: a negative or conditional result stated precisely counts for more than an optimistic sketch; the exact failing step is named in every obstructed item.

## 0. Orientation read (what this file takes as the state of the project)

- INFINITE_VOLUME_FABLE.md (+VERIFY, VERIFY2 applied): Theorem IV conditional on Target 2 at every even ℓ > 22M plus L3 (FX-V) and L6 (S1-pt). L6 is the single new object: osc_V ∂_t Δ(0, V) ≤ C N(f)(1 + |supp f|_1) with the fine-origin single-support sum controlled by the (L^mη)⁴ g_m^{κ_0} marginal factor of D3W8 Lemma F2′(ii), summed with Σ_m g_m^{κ_0} R̄_m⁴ < ∞. VERIFY §4.2 CONFIRMED the mechanism as a reduction; the sourced write-out is the open item ("a D3W8-sized item").
- Moment route (PLAN (CG)/Lemma IV-M as corrected): needs L6 in polydisc sup-over-V form on the common polydisc of radius c·r (available given B18 via FX_O23/FX_D), with vacuum extraction and C13. Gives no n!.
- L15 (ℓ-convergence) BLOCKED: all ℓ-dependence beyond e^{−cℓ} sits in the unit-scale measure ν_{K,ℓ} (FABLE §3.2, (3.2)).
- L16 (ROT) BLOCKED: lattice has only B_4; routes (R1) orientation comparison, (R2) rotation Ward identity.
- IV12 / ATTEMPT: ℓ-uniform FX Step B impossible (unit-scale cluster expansion at coupling g on the whole torus would give a unit-scale mass gap; ξ_g ~ e^{c/g²}).

Sections follow: §1 Task 1 (L6), §2 Task 2 (O(4)), §3 Task 3 (uniqueness), §4 Task 4 (the wall), §5 summary.
