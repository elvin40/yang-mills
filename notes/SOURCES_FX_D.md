# SOURCES_FX_D — open item (FX-D): fixed-polydisc holomorphy of the fine-scale R-terms

Target: settle (FX-D) as used by (L1) of INFINITE_VOLUME_IV12 §4.4. One section per tool call. Ledger tags: [P] proved here; [V] verbatim quote checked in a project file; [I] inference; [R] reduced to a quoted result. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 1. What the FX files call (FX-D) [V, SOURCES_FX.md]
- Naming correction. "(FX-D)" is NOT FX Step D. FX §6.4 "Step D — ε-uniformity (iv) [P, given A–C]" is a counting statement. (FX-D) is the open item of FX §6.3(b), listed as O2 in FX §7.
- FX §6.3(b) [V]: "D3's radius τ(X) = c_τ r/(E_0 n(X)), n(X) ≤ (100MR_m)^4, comes from Lemma D3.1 applied to ONE positive R-denominator over n(X) cubes … That is the only source of the R̄_m^{−4} loss. … So log(denominator) admits the CMP 116 §2 small-field cluster expansion with the E-term radius r. With that replacement the R-, B-terms get radius c·r, and (FX2) holds with τ_m(Γ) ≥ c r … [R: open item (FX-D) = "CMP 116 §2 applies to the R-denominators with sources"; not checked; size ≈ one D3 item]".
- FX §7 O2 [V]: "O2 (FX-D). Small-field cluster expansion of the R-denominators with sources (radius r). If it fails, use §6.3(c): order 1+η+4p_R/p_0."
- FX §6.3(c) fallback [V]: "Each fine R-term carries exp(−p_0(g_m)) ((1.100)); Cauchy loss per fine constituent hit k times is sup_m (C R̄_m^4)^k e^{−p_0(g_m)} ≤ (C k)!^{4p_R/p_0}."
- So the radius in question is the SOURCE radius τ_m(Γ) (in the source variable ζ, units of r), not a field-space radius. Without (FX-D): τ_m(Γ) = c_τ r/(E_0 (100MR_m)^4), R_m ≤ C_R(log g_m^{−2})^{p_R}.
