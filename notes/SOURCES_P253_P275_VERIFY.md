# SOURCES_P253_P275_VERIFY — independent check of SOURCES_P253_P275 §§1–6 and WC_FULL §3.1(2) (log item 14)

Date 2026-10-28. Verifier: Opus, independent. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
PDFs are under balaban/ (the brief said papers/; that folder does not exist). Page images rendered at 300 dpi into /tmp/p253v/ (scratch).
Tags: [V] read on a 300 dpi page image here; [P] proved or recomputed here; [I] reading.

## V0. CMP 109 p. 253 image (pdf p. 5, 300 dpi) [V]

- Quote of §1.1: verbatim, CONFIRMED. Placement after (0.10) and the Federbush line, before (0.11): CONFIRMED.
- The axiom list of §1.2: CONFIRMED. The text says "we assume that it is an analytic function having the following properties: (0.5) … (0.9)". (0.8) includes "the average is close to the identity also".
- One nuance the target omits. Two lines below (0.11) Balaban writes "the group averages with the properties (0.5)–(0.10)". So Balaban himself once counts (0.10) among the "properties". The sentence of 1.1 says "all averages satisfying the above properties", which only makes sense if (0.10) is excluded (otherwise only one average qualifies). The target reading (A), (0.5)–(0.9) stays the only coherent one. CONFIRMED with this note.
- (0.4) normalization [V]: Ū(c) = exp[i Σ_{x∈B(c_−)} L^{−d} Σ_{Γ∈G(c_−,x)} |G|^{−1} Σ_{Γ′∈G(c_+,x′)} |G|^{−1} (1/i) log U(Γ ∪ [x,x′] ∪ (−Γ′) ∪ (−c))] U(c), c a bond of T^{(1)}. The weight is L^{−d} per x, and the segment [x, x′] has L unit bonds. So in unit variables a corridor bond carries weight L·L^{−d} = L^{1−d}, and a chain bond carries ≤ Σ_x L^{−d}·1 ≤ 1. Rescale by 1/L so that the corridor coefficient is L^{−d} (the A3 3.3(b) normalization): then every chain-bond weight is ≤ 1/L and every straight block-bond weight is ≤ L^{−d}. This is used in V7.

