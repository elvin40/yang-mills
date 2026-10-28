# SOURCES_P253_P275 — CMP 109 p. 253 (universality over averages) and p. 275 (regularity of the glued configuration)

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Ledger tags. [P] proved here. [V] read on a 300 dpi page image in this session. [I] interpretation or unchecked reading. [R] relies on a printed statement without our proof.
Sources read: CMP 109 pp. 253, 275 (images, pdf pp. 5, 27); CMP 109 pp. 262, 273–280 and CMP 99 pp. 393–394, 419 (text layer only); SOURCES_P254_TRANSFER.md with its appended corrections; SOURCES_P254_TRANSFER_VERIFY.md; SOURCES_A18_REGULAR.md §§1–5; SOURCES_A3_GAMMA0_FULL.md §§3–6; WC_FULL.md §0.9, §3 (after today's κ_ch fix).
Companion edit: WC_FULL.md §3.1(2) now carries the chain terms (factor κ_ch); see its change-log item 14.

## 1. CMP 109 p. 253: the sentence and "the above properties" [V p. 253, pdf p. 5, 300 dpi]

1.1 Quote [V]. "The considerations and results of this, and previous papers, do not depend on any particular averaging operation used; they are valid universally for all averages satisfying the above properties."
Place [V]. The sentence comes right after the Federbush definition (0.10) and the line "This definition has all the properties listed above, as it was proved by Federbush in [35 (II)]". It comes right before the averaged contour variable (0.11), U(y, x) = M({U(Γ)}_{Γ∈G(y,x)}).

1.2 "The above properties", exactly [V]. Balaban introduces "an axiomatric definition" of a group average. It is "a G^c-valued function defined on sets {U_j : j = 1, 2, …, n}, U_j ∈ G^c, with sufficiently small diameters", written M({U_j}), and "we assume that it is an analytic function having the following properties":
 (A) analytic on finite sets of small diameter in G^c, values in G^c;
 (0.5) M({U_j^{−1}}) = M({U_j})^{−1};
 (0.6) M({uU_jv}) = uM({U_j})v (two-sided covariance);
 (0.7) M(π{U_j}) = M({U_j}) for every permutation π;
 (0.8) for U_j = exp iA_j with A_j in a small neighbourhood of 0 in 𝔤^c, the average is close to 1 and (1/i)log M({exp iA_j}) = (1/n)Σ_jA_j + (higher order terms);
 (0.9) if all U_j ∈ G, then M({U_j}) ∈ G.
(0.10) is not a property. It is Federbush's example, which satisfies (A), (0.5)–(0.9).

1.3 What the sentence literally asserts [P, reading of 1.1–1.2].
 (a) The "averaging operation" of the sentence is the group average M. The bond average (0.4) on the same page contains no M: it is an average of logarithms over pairs of contours. M enters the bond average only through (0.12) on p. 254, and it enters the gauge fixing through (0.11), (0.14).
 (b) So the literal content is: the results do not depend on the choice of M among the averages with (A), (0.5)–(0.9).
 (c) "Previous papers" (CMP 95–102) used one axial contour Γ_{y,x}. For them M acts on a one-element set, so M = identity, which trivially satisfies (A), (0.5)–(0.9). The literal sentence therefore does not, by itself, transfer CMP 95–102 results from one contour Γ_{y,x} to the family G(y, x). That change of contour family is the p. 254 sentence ("properties similar …"), which SOURCES_P254_TRANSFER treats for CMP 98 only.
 (d) Consequence. For the CMP 99 operators WC_FULL R4 needs under Q̃, two questions are separate. Q1 (p. 253 proper): does the CMP 99 proof use M only through (A), (0.5)–(0.9)? Q2 (contour family): does it use a feature of the single axial contour that G(y, x) lacks? §2 answers both per operator.

