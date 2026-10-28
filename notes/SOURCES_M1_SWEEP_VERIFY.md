# SOURCES_M1_SWEEP_VERIFY

Independent verification of SOURCES_M1_SWEEP.md §1–§6. Firewall respected.

## V0. Context read
Read: SOURCES_M1_SWEEP (all), A16_REPLACE2 §1–§7, SRULE §5–§6, D2 l. 55–68, 120–126, §8, WC_FULL §0, 5.2.
Notes. SRULE NEW-1 as first stated has three parts: (a) inherited covariance at s ≡ 1, (b) sourced gauge + Euclidean, (c) translation-covariant partitions for s-versions (C34). The sweep settles only the Euclidean part of (b). Gauge part of (b) stays [P-sketch, unverified] in SRULE; (c) stays with C34. D2 §8 items 3, 5, 6 cover R-operation DENOMINATORS (complex c, complex f, positivity); none names the Hessian lower bound (1.7)–(1.9).

## V1. Spot checks on 300 dpi images (CMP 119)
- p. 270 (3.23) [V]: matches the sweep text verbatim in structure: A_k on Ω_{k+1} ∩ Λ^c_{k+1} with exp[−½⟨A_k, C*ΔCA_k⟩ + ½⟨A_k, C*ΔC C^{(k)}(Λ_{k+1}) C*ΔCA_k⟩]. Schur complement reading correct.
- p. 272 (3.28)–(3.29) [V]: IBP identity −⟨A_k, C*ΔC C^{(k)}(Λ_{k+1})(δχ/δA + δP/δA + δE_k/δA)⟩ and the measure Z_t^{−1}dμ_{C^{(k)}(Λ_{k+1})}χ exp[−t⟨A, C*ΔCA_k⟩ + …]. Matches; class Q1, Q2, Q4, Q9, (U-c) correct.
- p. 273 (3.33)–(3.35) [V]: log det via contour "surrounds the spectrum", segment Re z = r, λ_0 > r small, resolvent identity (3.35). Matches; needs a spectral gap from 0 and a norm bound only (Q1 + Q5). Note: the image says λ_0 > r, the sweep says "r < λ_0" — same.
- p. 274 (3.37)–(3.39) [V]: (3.39) E^{(k+1)}(rU_{k+1}, r^{−1}b) = E^{(k+1)}(U_{k+1}, b), "r an arbitrary Euclidean transformation of the continuous space T, transforming the lattice T^{(k+1)} into itself", only when Ω_j = Λ_j = T_η. Matches the sweep quote.
