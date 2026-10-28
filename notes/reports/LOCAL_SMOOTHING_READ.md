# Close reading: "Local smoothing for the Euclidean wave equation" (OpenAI, 2026-10-25, 59 pp.)

Source: `/tmp/oai_oct26/local_smoothing.txt` (pdftotext of the PDF). Companion: "Critical local smoothing for the three-dimensional wave equation" (OpenAI, 2026-09-24, 165 pp.), `/tmp/oai_oct26/local_smoothing_3d.txt`. This is a reading of the proof mechanism, not a verification. Equation and section numbers refer to the October paper unless marked "[3D]".

Notation used below: $n \ge 2$ spatial dimension, $d = n-1$, $p_c = 2n/(n-1)$, $q = p_c/2 = n/d$, $h = N^{-1}$ wavelength, $s_+(p) = \max\{0, \tfrac{n-1}{2} - \tfrac{n}{p}\}$, $U(T) = e^{-iT|D|}$, $I = [1,2]$.

---

## 1. Main theorem and the reduction chain

**Theorem 1.1 (1.1).** For $n \ge 2$, $2 \le p < \infty$, $\varepsilon > 0$:
$\|U(T)f\|_{L^p(\mathbb{R}^n \times I)} \le C_{n,p,\varepsilon}\|J^{s_+(p)+\varepsilon} f\|_{L^p(\mathbb{R}^n)}$, with $\varepsilon = 0$ allowed at $p = 2$.

The whole paper routes through one estimate at the critical exponent on one frequency annulus:

**Theorem 1.2 (1.2), critical annular estimate.** For $p = p_c$, $\varphi \in C_c^\infty(\mathbb{R}^n\setminus 0)$, $P_N = \varphi(D/N)$:
$\|U(T)P_N f\|_{L^{p_c}(\mathbb{R}^n\times I)} \le C [\log(2+N)]^{2/p_c}\|f\|_{L^{p_c}}$.

The loss is a fixed power of a logarithm, not $N^\varepsilon$. The paper states (§1.3) that the optimal power for unrestricted annular data lies in $[1/p_c, 2/p_c]$.

Reduction chain (Sections 2–7 prove Theorem 1.1):

| Step | Where | Statement |
|---|---|---|
| Conserved positive current for a finite sum of plane waves on the torus $\mathbb{T}^n = \mathbb{R}^n/(100\mathbb{Z})^n$ | §2, Prop. 2.2 | $A_0 = \chi\chi^*$, psd, divergence-free real columns, time entry recovers the wave through a directional Gaussian window, (2.14)–(2.15) |
| Quaternionic Hessian calculus, Moore determinant and cofactor, cofactor divergence | §3, Lemmas 3.1–3.3 | (3.1)–(3.14) |
| Fiber geometry, regularized density $\mu$, Dirichlet potential $u$, energy $\mathcal F(T,\tau)$ and its balance law | §4, Lemma 4.1, (4.8), (4.11), Prop. 4.2, Lemma 4.3 | $\Delta_z\mathcal F \le$ wave flux through the fiber wall (4.12); $\tfrac{n-1}{n+1}X_0 \le \mathcal F \le \tfrac{n}{n+1}X_0$ (4.14) |
| Three inequalities on a fixed fiber | §5, Prop. 5.1 | (5.1) $\mathcal F(0,\tau) \lesssim a^2\|f\|_{p_c}^{p_c}$ on $|\tau| = 4a$; (5.2) $\mathcal F(T,\tau) \gtrsim a^2\|U(T)f\|_{p_c}^{p_c}$ on $|\tau| = 2a$; (5.3) $\Delta_{T,\tau}\mathcal F \le C s^{-2}e^{-cs/h}\mathcal F$ for $2a \le s = |\tau| \le 3$ |
| Scalar propagation across the thin cylinder $2a \le |\tau| \le 3$ | §6, Lemma 6.1, Prop. 6.3 | $H(0,r) \ge c\,\tfrac{\log(r/b)}{D^2}\int_1^2 H(T,b)\,dT$, $D = \log(3/b)$ (6.2); torus cap estimate with $[\log(2/h)]^{2/p_c}$ (6.4) |
| Caps to annulus, torus to $\mathbb{R}^n$ | §7.1 | finite cap partition at fixed aperture; kernel decay (7.2) and unit-cube tiling give Theorem 1.2 |
| Interpolation and dyadic summation | §7.2 | (7.3): $\|U(T)P_h f\|_p \lesssim h^{-s_+(p)}[\log(2/h)]^{\beta(p)}\|f\|_p$, $\beta(p) = \min\{d(1-2/p), 2/p\}$; sum with $J^{s_+(p)+\varepsilon}$ gives Theorem 1.1; Cor. 7.1 gives the exact order $s_+(p)$ with log weights $\ell_1(J)^B\ell_2(J)^C$, $B > \beta(p) + \tfrac12 - \tfrac1p$ (7.4) |
| Existence/comparison/smooth dependence for the Dirichlet potential | App. A, Thm. A.1 | continuity method with CNS boundary estimates and Evans–Krylov |

The one-annulus estimate sits at the join between §6 (torus, one cap) and §7 (Euclidean, full annulus). Everything in §§2–6 is at $p = p_c$ with $L^2$-normalized cap data on the torus; everything in §7 is classical (Riesz–Thorin, Littlewood–Paley, Mihlin). Sections 8–12 are obstructions and applications; Appendices B–E are refinements (angular endpoint, weak-norm obstruction, planar linear version, symmetric systems).

---

## 2. The core mechanism

### 2.1 Overview in one paragraph

Take a finite sum of plane waves with $|\xi| \asymp 1/h$ in one small angular cap. Analytically continue the solution of the first-order symmetric wave system in an imaginary null direction; this multiplies each mode by a Gaussian in direction. Differentiate this continued solution along two auxiliary real flows to get a positive semidefinite, divergence-free tensor $B$ (Lemma 2.1), then push it forward by a holomorphic "flux map" so that each spacetime coordinate $X_\mu$ acquires one auxiliary complex coordinate; the result is a rank-one quaternionic Hermitian matrix field $A_0 = \chi\chi^*$ whose real form has divergence-free columns (Prop. 2.2). Its time entry $A_{0,TT}$ is a Husimi-type density: the squared modulus of the wave seen through a directional Gaussian window, with the modes summed before squaring (2.15). On each spatial fiber (real torus $\times$ a bounded domain in the auxiliary spatial variables) solve a quaternionic Monge–Ampère Dirichlet problem whose right side is this density (4.8). Pair the current with the Hessian of the potential (Morawetz-type identity (3.10)) and add an Aubin–Mabuchi-type correction so that the full-spacetime determinant cancels (Prop. 4.2). The result is a scalar energy $\mathcal F(T,\tau)$ on $\mathbb{R}\times\mathbb{R}^2$ whose Laplacian is bounded by the wave flux through the fiber wall, where the Gaussian makes it exponentially small (5.3). Compare $\mathcal F$ at observed times on the circle $|\tau| = 2a$ with $\mathcal F$ at time zero on $|\tau| = 4a$ by radial harmonic functions in the $\tau$-plane; each passage costs one $\log(1/h)$ (Lemma 6.1). The determinant with a rank-one background converts density into depth with the exponent $1/(n-1)$, and $\int(-u)\mu$ then measures $\mu^{n/(n-1)} \sim |u_w|^{2n/(n-1)}$ (§4.2, §5). That is the critical exponent.

### 2.2 The symmetric system and the imaginary translation (§2.1)

Null coordinates $t = (T+b)/\sqrt2$, $s_0 = (b-T)/\sqrt2$, with $b$ the cap axis and $x \in \mathbb{R}^d$ transverse. The wave operator is $2\partial_t\partial_{s_0} + \Delta_x$; at fixed $s_0$-frequency $\kappa$ it is the free Schrödinger operator $2i\kappa\partial_t + \Delta_x$. Modes (2.1):
$$u_{\kappa,v} = c_{\kappa,v}\exp\big[i\kappa(s_0 + v\cdot x - \tfrac12|v|^2 t)\big],\quad \kappa = \tfrac{\xi_b + |\xi|}{\sqrt2},\quad v = \xi_x/\kappa .$$
Symmetric first-order system $\mathsf P = \sum_\mu C^\mu\partial_{X_\mu}$ with $C^t = 2E_{00}$, $C^{x_j} = E_{0j} + E_{j0}$, $C^{s_0} = -\sum_j E_{jj}$ on states in $\mathbb{R}^n = \mathbb{R}\times\mathbb{R}^d$. The symbol at the mode covector $p = \kappa(-|v|^2/2, v, 1)$ satisfies (2.2)
$$-w^tC(p)w = \kappa|w' - v w_0|^2,$$
kernel spanned by the polarization $E(v) = (1,v)^t$. The vector solution is $f_{\rm sys} = \sum \kappa^{d/2}E(v)u_{\kappa,v}$.

The quadratic flux $q(w)^\mu = w^tC^\mu w/2$ of a real state is a null vector; at $E(v)$ it is the light ray $(|\xi|,\xi)/\kappa$. Translating $(T,X)$ by $-i\rho(1,\omega)$ multiplies a mode by $e^{\rho(\xi\cdot\omega - |\xi|)} = e^{-\rho|\xi||\hat\xi - \omega|^2/2}$: a Gaussian in direction of width $(\rho N)^{-1/2}$. Take two real states $w_1, w_2$, $z = w_1 + \mathbf k w_2 = (R,\zeta) \in \mathbb{C}_{\mathbf k}\times\mathbb{C}_{\mathbf k}^d$ (second complex unit $\mathbf k$, distinct from the Fourier unit $i$), and the displacement $q^\mu = z^*C^\mu z/2$ (2.3). The weight at $X - iq$ is (2.4)
$$e^{p\cdot q} = \exp\big(-\tfrac{\kappa}{2}|\zeta - vR|^2\big).$$

### 2.3 The two auxiliary flows (Lemma 2.1)

For $G = f_{\rm sys}(X - iq(w_1,w_2))$ (holomorphic in the tube variable), define
$$V_{\ell a} = \sum_\mu (C^\mu w_\ell)_a\,\partial_{X_\mu},\qquad D_{\ell a} = \partial_{w_{\ell a}} + iV_{\ell a},\qquad Z_\ell = \sum_a G_a D_{\ell a}\quad(\ell = 1,2).$$
These $D_{\ell a}$ are the Baouendi–Trèves vector fields of the tube coordinates $X - iq$, so $D_{\ell a}G = 0$. Then $\operatorname{div} Z_\ell = 2i\,w_\ell^t\mathsf PG = 0$, and $\nabla_{Z_\ell}Z_m = -i\delta_{\ell m}\sum_\mu (G^tC^\mu G)\partial_{X_\mu}$ is purely imaginary times a real vector. Hence
$$B = \operatorname{Re}\sum_{\ell=1}^2 Z_\ell\otimes Z_\ell \tag{2.5}$$
is symmetric, positive semidefinite (sum of four real squares $A_\ell\otimes A_\ell + B_\ell\otimes B_\ell$), and each column is divergence-free in the real coordinates $(X, w_1, w_2)$. The "two flows" are the two real-state directions $w_1, w_2$; their sum of fluxes supplies the imaginary displacement, and their derivatives $\partial_{w_\ell}$ supply the current.

### 2.4 The holomorphic flux map and the quaternionic form (§2.3)

Define $\Theta(z,\eta) = \omega$, $\omega_\mu = \tfrac12 z^tC^\mu z + c_\mu\eta$, with a passive $\eta \in \mathbb{C}_{\mathbf k}$. This maps the $2n$ real state coordinates (plus $\eta$) to $n+1$ complex auxiliary coordinates, one per spacetime index. Push $B$ forward as a density (2.7). Because $\Theta$ is holomorphic in $z$ and affine in the rest, the pushforward keeps divergence-free columns, and (2.8)
$$\tilde B = (\tilde\chi\tilde\chi^*)^{\mathbb R},\qquad \tilde\chi_\mu = J^{-1/2}\sum_a M_{\mu a}\,i\,G_a,\quad M_{\mu a} = (C^\mu z)_a .$$
Each spacetime index now carries a triple $X_\mu + \omega_\mu i \in \operatorname{span}_{\mathbb R}(1,\mathbf i,\mathbf j) \subset \mathbb H$; the three real rows over $\mu$ are $Q, -\mathbf iQ, -\mathbf jQ$, which is exactly the real form (2.6) of a rank-one quaternionic Hermitian matrix. This is why quaternions appear: three real slots per coordinate (one physical, two auxiliary) are a Hermitian structure over $\mathbb H$, not over $\mathbb C$.

For the wave system with $\eta$ in the $s_0$ slot (2.9): $\Theta(R,\zeta,\eta) = (Y,P,S_1) = (R^2, R\zeta, \eta - \zeta\cdot\zeta/2)$. Single-valued coordinates (2.10):
$$W = P/Y = \zeta/R,\qquad \Phi = S_1 + \tfrac{P\cdot P}{2Y} = \eta,\qquad y = |Y|.$$
$W$ is a complexified direction (velocity), $\Phi$ the passive coordinate. In the physical frame with auxiliary $(\tau, P, Z)$: $Y = (\tau+Z)/\sqrt2$, $S_1 = (Z-\tau)/\sqrt2$. Key identities (2.12)–(2.13): $ME(v) = 2R\,V^v$ with $V^v = (1, (v+W)/2, -W\cdot v/2)^t$, and
$$(\partial\Phi)V^v = 0,\qquad (\partial W)V^v = \frac{v - W}{2Y}.$$
So the current is tangent to the level sets of $\Phi$, and a mode moves $W$ toward its own direction $v$.

**Prop. 2.2 (the wave current).** With $m_{\kappa,v} = (\kappa/y)^{d/2}\exp(-\tfrac{\kappa y}{2}|W - v|^2)$,
$$\chi = \sum_{\kappa,v} V^v\,\iota_e(u_{\kappa,v})\,m_{\kappa,v},\qquad A_0 = \chi\chi^* \tag{2.14}$$
is smooth psd on $Y \ne 0$, $(\partial\Phi)A_0 = 0$, and $(A_0)^{\mathbb R}$ has divergence-free columns; this persists after the orthogonal change to physical coordinates. The time entry (2.15): $A_{0,TT} = |S_0u_w|^2 + |S_1u_w|^2$, where $S_0, S_1$ are scalar Fourier multipliers with symbols $b_\ell m_{\kappa,v}$, $b_0 = (1 + \operatorname{Re}W\cdot v/2)/\sqrt2$. At $W = 0$, $2A_{0,TT}$ is the squared modulus of the wave weighted by $(\kappa/y)^{d/2}e^{-\kappa y|v|^2/2}$ on each mode. The paper identifies this with the Husimi density [39, 45]. Angular resolution: $(\kappa y)^{-1/2} \asymp (s/h)^{1/2}\cdot h = (hs)^{1/2}$; at $s \asymp h$ it is $O(1)$ (coarse, one cap), at $s \asymp 1$ it is $h^{1/2}$ (wave-packet scale). The auxiliary radius $s = |\tau|$ therefore plays the role that "scale" plays in induction-on-scales proofs.

Frequency count: $O(h^{-n})$ modes in the annulus, so $\sum|c_{\kappa,v}| \lesssim h^{-n/2}\|f\|_2$; data are normalized $\|f\|_2 = 1$.

### 2.5 Quaternionic Hessian, Moore determinant, cofactor (§3)

For each of $m$ coordinate indices $a$ with $k = 3$ (or 4) real slots $z_{a\alpha}$, $(e_0,e_1,e_2,e_3) = (1,\mathbf i,\mathbf j,\mathbf k)$:
$$G_a(u) = \sum_\alpha e_\alpha\partial_{a\alpha}u,\qquad H_{ab}(u) = \sum_{\alpha,\beta}e_\alpha\bar e_\beta\,\partial_{a\alpha}\partial_{b\beta}u. \tag{3.1}$$
Lemma 3.1: $H(u)$ is Hermitian, $\operatorname{tr}H = \Delta$, real rank-one forms $\xi\xi^t \mapsto gg^*$, product rule (3.2), and for $u$ depending only on the $\mathbb{C}_{\mathbf k}$ slots, $H(\sum_\nu|F_\nu|^2) = 4J^*J$ for holomorphic $F$ (3.4).

Moore determinant $\det A$ = product of the $m$ real eigenvalues; cofactor $\mathcal C(A)$ by $\mathcal C(A):B = \tfrac{d}{dt}\det(A+tB)|_{t=0}$ (3.5), $\mathcal C(A) = (\det A)A^{-1}$ for $A > 0$ (3.6), $v^*\mathcal C(A)v = \det(A|_{v^\perp})$ and $\det(A + tvv^*) = \det A + t\,v^*\mathcal C(A)v$ (3.7), Schur formula $\det M = (\det D)\sigma$ with $M - \sigma v_0v_0^* \ge 0$ (3.8).

**Lemma 3.3 (cofactor divergence).** $\sum_{a,\alpha}\bar e_\alpha\partial_{a\alpha}\mathcal C(H(u))_{ab} = 0$ (3.12), for $k = 3$ or $4$ and any smooth real $u$ (indefinite or singular Hessian allowed). This is Alesker's divergence form of the linearized quaternionic Monge–Ampère operator [4, Lemma 4.6], reproved by polarization and testing on exponentials. Consequence (3.10): for any Hermitian field $A$ with divergence-free real columns, $A:H(u) = \operatorname{div}(A^{\mathbb R}\nabla u)$, hence Green's identity (3.13) with boundary term $\operatorname{Re}(v\,\nu^*AG(u) - u\,\nu^*AG(v))$. If $u = \rho r$ vanishes on $\{r = 0\}$ then $H(u)|_{\nu^\perp} = \rho H(r)|_{\nu^\perp}$ (3.14), so the normal–normal cofactor entry $\nu^*\mathcal C(H(u))\nu = \det(H(u)|_{\nu^\perp})$ needs no normal second derivative of $u$.

### 2.6 The fiber and the Dirichlet potential (§4)

Parameters: $w_0 = 1/10$, aperture $\gamma < w_0/4$, $a = Kh$ ($K$ fixed large), $s = |\tau|$, construction on $a < s < 4$. At fixed $z = (T,\tau) \in \mathbb{R}\times\mathbb{C}_{\mathbf k}$ the fiber is
$$\Omega_z:\ r = \frac{|W|^2}{w_0^2} + 100|Q|^2 - 1 < 0,\qquad Q = \Phi/a, \tag{4.1}$$
with $X$ on the torus and $(P,Z) \in \mathbb{C}_{\mathbf k}^d\times\mathbb{C}_{\mathbf k}$: real dimension $3n$. The inverse chart (4.2): $Y = \tfrac{\sqrt2\tau + aQ}{1 + W\cdot W/2}$, $P = WY$, $Z = \sqrt2Y - \tau$; $y \asymp s$. Lemma 4.1: $H_{\rm fib}(r) \ge cs^{-2}I$, $G_{\rm fib}(r)G_{\rm fib}(r)^* \le H_{\rm fib}(r)$ (4.3); $dP\,dZ \asymp a^2s^{2d}\,dW\,dQ$, $\det H_{\rm fib}(r) \asymp a^{-2}s^{-2d}$ (4.4); the full $H(r)$ is psd with a one-dimensional quaternionic kernel inside $G(r)^\perp \cap \ker H(|\Phi|^2)$; $H_{\rm fib}(|\Phi|^2)$ has rank one with eigenvalue $\asymp 1$.

Regularization (4.5): $A_w = g(Q)\,(J_h *_X A_0)$ (spatial convolution with a periodized $(1+|X/h|^2)^{-n-2}$ kernel, cutoff $g$ in $Q$ supported in $|Q| \le 1/20$), and
$$A = A_w + h^{50n}\,\mathcal C(H(r)),\qquad \mu = A_{TT} > 0 .$$
The cofactor term makes $\mu$ strictly positive, is conserved (Lemma 3.3), psd, takes values in $\ker H(r)$ (so no wall flux), and has $TT$ entry $\det H_{\rm fib}(r) > 0$. Background $B_0 = \lambda|\Phi|^2$, $\lambda = h^{-30n}$; $A:H(B_0) = 0$ by tangency (4.6); and $\mu^{1/d} \le \lambda$ (4.7) by the crude bound $\|A_0\| \lesssim h^{-n-2d}$.

**The auxiliary PDE (4.8).** On each spatial fiber, the unique smooth real $u$ with
$$D_u := H_{\rm fib}(B_0 + u) > 0,\qquad \det D_u = \lambda\mu,\qquad u|_{\partial\Omega_z} = 0,$$
where $\det$ is the Moore determinant of the $n\times n$ quaternionic Hermitian spatial Hessian in three slots. Theorem A.1 gives existence, uniqueness, $u \le 0$, barriers $br \le u \le b'r$ (A.2), and smooth dependence on $z$ up to the lateral boundary. In words: a quaternionic Monge–Ampère equation with prescribed right side $\lambda\mu$ and a rank-one background of size $\lambda$.

Depth from density: $\det(B_{\rm fib} + \alpha I) = (\beta + \alpha)\alpha^d$ with $\beta \asymp \lambda$, so density $\lambda\mu$ corresponds to an isotropic quadratic of curvature $\alpha \asymp \mu^{1/d}$. On a ball of radius $h$ this is depth $\asymp h^2\mu^{1/d}$ at the center.

### 2.7 The determinant energy and the cancellation (§4.3–4.4)

$X_0(z) = \int_{\Omega_z}(-u)\mu\,d\zeta$. Green's formula with the conserved $A$ gives interior term $-\int A:H(u)$. Schur-split the full Hessian (4.9): $H(B_0 + u) = \sigma_0 e_Te_T^* + \Sigma$, $\Sigma \ge 0$, $\sigma_0 = \ell - c^*D_u^{-1}c$. Since $\det D_u = \lambda\mu$, (4.10):
$$A:H(u) = A:\Sigma + \lambda^{-1}\det H(B_0 + u).$$
The full determinant has no sign. Introduce the segment (Aubin–Mabuchi) energy (4.11)
$$\mathcal E_z(v) = \frac1\lambda\int_{\Omega_z} v\int_0^1\det D_{\theta v}\,d\theta\,d\zeta,\qquad \mathcal J_z(v) = \mathcal E_z(v) - \int_{\Omega_z}v\mu\,d\zeta,$$
and set $\mathcal F(z) = \mathcal J_z(u) = \mathcal E_z(u) + X_0(z)$. Using $M = \mathcal C(H(B_0 + \theta u))$ (conserved by Lemma 3.3, $M_{TT} = \det D_{\theta u}$, $M:H(u) = \partial_\theta\det H(B_0 + \theta u)$, $\nu^*M\nu = 0$ on the wall by (3.14) and the null line of $H(r)$), one gets $\Delta_z\mathcal E_z(u) = \lambda^{-1}\int\det H(B_0+u)$ with no boundary term. Hence

**Prop. 4.2 (energy balance, (4.12)).** On $a < |\tau| < 4$, with $\rho = u/r|_{\partial}$,
$$\Delta_z\mathcal F(z) + \int_{\Omega_z}A:\Sigma\,d\zeta = \int\rho\,G(r)^*A_wG(r)\,\delta(r)\,d\zeta .$$
Since $A:\Sigma \ge 0$, $\Delta_{T,\tau}\mathcal F$ is bounded above by the wave flux through the moving wall. Note $\Delta_z$ is the Laplacian in the three real slots of the single quaternionic time coordinate $(T,\tau)$: that is where the two-dimensional auxiliary time comes from, and why the later comparison functions are radial harmonic in a plane.

**Lemma 4.3 (4.14).** Rank-one background gives $\det D_{\theta u} = \theta^n\det D_u + (1-\theta)\theta^{n-1}\mathcal C(D_u):B_{\rm fib}$, hence
$$\mathcal F = \frac{n-1}{n+1}X_0 + \frac{1}{\lambda n(n+1)}\int G_{\rm fib}(u)^*\mathcal C(D_u)G_{\rm fib}(u),\qquad \frac{n-1}{n+1}X_0 \le \mathcal F \le \frac{n}{n+1}X_0 .$$
So the corrected energy is comparable to $\int(-u)\mu$. The second variation $d^2\mathcal J_z(v)[w,w] = -\lambda^{-1}\int G(w)^*\mathcal C(D_v)G(w) < 0$ makes $u$ the unique maximizer: a smooth determinant variational principle with rank-one background (Wan [76] for zero background).

### 2.8 The three fiber estimates (§5, Prop. 5.1)

With $\sigma = s/h$, $P_* = (J_{Ds}*|g_T|^2)^{1/d}$, $\int P_*^{d+1}\,dX \le \|g_T\|_{p_c}^{p_c}$ by Young (5.4), since $(d+1)/d = q$ and $\|g\|_{2q} = \|g\|_{p_c}$.

Upper bounds. Multiplier symbol $(\kappa/y)^{d/2}e^{-\Psi}$, $\Psi = \tfrac12\kappa y|W - v|^2$; derivatives cost $\sigma^m$; on the active wall ($g(Q) \ne 0$ forces $|W| \ge \tfrac{\sqrt3}{2}w_0$ while $|v| \le \gamma$) the mismatch is bounded below, giving $e^{-c_0\sigma}$ with $c_0$ independent of $\gamma$ (5.5):
$\|A_w\| \le Cs^{-2d}\sigma^mP_*^d$ inside, $\|A_w\| \le Cs^{-2d}\sigma^me^{-c_0\sigma}P_*^d$ on $r = 0$; $\mu \le Cs^{-2d}\sigma^mP_*^d$ (5.6). Comparison function $v_* = C_1\sigma^{m_1}rP_*$ with $H_{\rm fib}(rP_*) \ge \tfrac12P_*H_{\rm fib}(r)$ (5.7) satisfies $\det(B_{\rm fib} + H(v_*)) \ge \lambda\mu$, so $v_* \le u \le 0$ and $0 \le u/r \le C_1\sigma^{m_1}P_*$ (5.8). Then
$$\mathcal F \le Ca^2\sigma^m\|g_T\|_{p_c}^{p_c}\ (5.9),\qquad \Delta_z\mathcal F \le C(a/s)^2\sigma^me^{-c_0\sigma}\|g_T\|_{p_c}^{p_c}\ (5.10).$$

Lower bound (recovery). At centers $|W| \le \gamma$, $|Q| \le 1/400$, the radius-$h$ ball in the $3n$ coordinates stays where $g = 1$. Invert $S_0$ on the cap (cost $e^{C\gamma^2\sigma}$): density $\ge m_X = c_\gamma(hs)^{-d}\sigma^{-m}e^{-C_2\gamma^2\sigma}|g_T(X)|^2$ on the ball (5.11). Comparison with $\hat v = \epsilon m_X^{1/d}(l^2 - h^2)$ (Hessian $6\epsilon m_X^{1/d}I$, determinant after adding $B_{\rm fib}$ at most $\lambda m_X$ by (4.7)) gives $u \le \hat v$, depth $\ge \epsilon h^2m_X^{1/d}$, so
$$(-u)\mu \ge \epsilon h^2m_X^{1+1/d} = \epsilon h^2m_X^{q},\qquad 2q = p_c .$$
Integrating over the center region (volume $\asymp a^2s^{2d}\gamma^{2d}$) and using $h^2s^{2d}(hs)^{-dq} = \sigma^{n-2}$: $\mathcal F \ge c_\gamma a^2\sigma^{-m}e^{-C_3\gamma^2\sigma}\|g_T\|_{p_c}^{p_c}$ (5.12). Dividing (5.10) by (5.12): $\Delta_z\mathcal F/\mathcal F \le C_\gamma s^{-2}\sigma^{2m}e^{-(c_0 - C_3\gamma^2)\sigma}$; choose $\gamma$ with $C_3\gamma^2 < c_0/2$, then $K$. This is (5.3). On the circles $|\tau| = 4a, 2a$ the ratio $\sigma = 4K, 2K$ is fixed, so (5.9) and (5.12) become (5.1) and (5.2) with constants.

The decisive geometric fact (Figure 1): the wall where flux exits sits at $|W| \ge \tfrac{\sqrt3}{2}w_0$ (fixed mismatch, Gaussian decay $e^{-c_0 s/h}$), while the recovery patch sits at $|W| \le 2\gamma$ (mismatch $\le 4\gamma$, inversion cost $e^{C\gamma^2 s/h}$); $\gamma$ is chosen small, independent of $h$.

### 2.9 Propagation across the thin cylinder (§6)

**Lemma 6.1.** $0 < b < 1/4$, $D = \log(3/b)$, potential $V \ge 0$ on $[b,3]$ with $\int_b^3 s\log(s/b)V(s)\,ds \le M$ and $\sup_{[1/2,3/2]}V \le M$ (6.1). If $E \ge 0$ on $\mathbb{R}_T\times\{b \le |\tau| \le 3\}$ satisfies $\Delta_{T,\tau}E \le V(|\tau|)E$, then its circular mean $H(T,s)$ satisfies, for $b \le r \le 1$,
$$H(0,r) \ge c(M)\frac{\log(r/b)}{D^2}\int_1^2H(T,b)\,dT. \tag{6.2}$$
Proof structure: (i) radial ODE $u'' + s^{-1}u' = (V + \kappa^2)u$; in $x = \log(s/b)$ a Gronwall argument shows solutions dominate a constant times the affine-in-$\log s$ (harmonic) interpolant; (ii) outward passage: weight $\sin(\pi T/3)$, maximum principle, $m(s) \ge cm(b)\log(3/s)/D$, giving mass on the band $3/4 \le |\tau| \le 5/4$ (6.3); (iii) a direct weak Harnack on the fixed band (add a variable $v$ and use $\cos(\sqrt{M+1}\,v)$) moves this to $H(T,1)$ for $|T| \le 1$; (iv) inward passage: comparison with $c\,m(b)D^{-1}\cos(\pi T/2)u(|\tau|)$, radial estimate $u(r) \gtrsim \log(r/b)/\log(1/b)$. Two factors of $1/\log(1/b)$. With $V(s) = Cs^{-2}e^{-cs/h}$ from (5.3), (6.1) holds with $M$ independent of $h$ because $\int_b^3 s\log(s/b)s^{-2}e^{-cs/h}ds \le C\int_1^\infty t^{-1}\log t\,e^{-2cKt}dt$.

**Remark 6.2** shows the $D^{-2}$ is sharp for scalar supersolutions even with $V = 0$: $E = (1 - \cos T)p(s) + L(s) - g(s)$ has $E(0,r) \le \tfrac94\log(r/b)/D^2$. So the $2/p_c$ is a limitation of propagating only a scalar quantity, not of the fiber estimates.

**Prop. 6.3.** Apply (6.2) with $b = 2a$, $r = 4a$: $\int_1^2\|U(T)f\|_{p_c}^{p_c}\,dT \lesssim a^{-2}\int_1^2H(T,2a)\,dT \lesssim D^2a^{-2}H(0,4a) \lesssim [\log(2/h)]^2\|f\|_{p_c}^{p_c}$, i.e. (6.4). This is the display in §1.4.

### 2.10 Why the sharp exponent, and where the loss comes from

Exponent. Three facts fix $p_c$:
1. $\mu \sim |{\rm wave}|^2$ (Husimi density, (2.15), (5.11)).
2. The $n\times n$ determinant with a rank-one background: $\det(B_{\rm fib} + \alpha I) = (\beta+\alpha)\alpha^{n-1}$, so curvature $\alpha \sim \mu^{1/(n-1)}$ and depth $\sim h^2\mu^{1/(n-1)}$.
3. The energy weighs depth against density: $(-u)\mu \sim h^2\mu^{n/(n-1)} \sim |{\rm wave}|^{2n/(n-1)}$.

This is the compensated-integrability exponent of Serre ([69]–[71]): a positive divergence-free symmetric tensor in $n$ variables controls $L^{n/(n-1)}$ of a determinant root. The paper cannot apply Serre directly because the lifted tensor has rank at most four and zero determinant; instead the time density is prescribed as the right side of a determinant equation and the two integrations by parts (conservation of the wave current, conservation of the cofactor) replace the determinant inequality. The rank-one background is forced: the current is tangent to the level sets of $\Phi$, so $A:H(|\Phi|^2) = 0$ and the background costs nothing in the balance law but supplies one direction of curvature in the spatial determinant. Without that direction the exponent would be $1 + 1/n$, i.e. $p = 2(n+1)/n$ (my inference from the same algebra; the paper does not pursue it).

Loss. The annular estimate has loss $[\log(2/h)]^{2/p_c}$, both logarithms from Lemma 6.1, each the harmonic measure of a circle of radius $\asymp h$ seen from radius $1$ in the plane. The inner wall is at $s = 2Kh$ where the potential $V(s) = Cs^{-2}e^{-cs/h}$ is of size $h^{-2}$, so no information passes near the wall; the energy must first be carried to $s \asymp 1$ (where $V$ is bounded), compared across times there, and carried back. Theorem 1.1's $\varepsilon$ is then only the cost of summing dyadic annuli; Corollary 7.1 makes it explicit: at exact order $s_+(p)$ the loss is $\ell_1(J)^B\ell_2(J)^C$ with $B > \beta(p) + (1/2 - 1/p)$, where $\beta(p) = \min\{d(1-2/p), 2/p\}$ comes from interpolation and $1/2 - 1/p$ from Hölder in the Littlewood–Paley sum (ℓ² versus ℓ^p for $p \ge 2$). At $p_c$: $B_*(p_c) = 1/2 + 1/p_c$. No $N^\varepsilon$ ever appears in the main line; it appears only when the authors apply Tao's epsilon-removal in §9.1 and §12.

Comparison with the lower bounds: Prop. 8.1 shows the annular power must be $\ge 1/p_c$; Theorem B.1 reaches $1/p_c$ with any positive angular regularity. The gap $[1/p_c, 2/p_c]$ for unrestricted data is open and the paper says so.

### 2.11 How $n$ enters and why the argument is dimension-free

$n$ enters only through:
- the state dimension of the symmetric system ($n$ states: one longitudinal, $d$ transverse), which must equal the spatial dimension so that the polarization $v$ is a local angular coordinate (made explicit in App. E.1);
- the size of the fiber Hessian ($n\times n$ quaternionic, $3n$ real coordinates) and the determinant algebra $(\beta+\alpha)\alpha^{d}$, which produces $q = n/d$;
- polynomial-in-$h$ bookkeeping: $O(h^{-n})$ modes, $\lambda = h^{-30n}$, $h^{50n}$ regularizer, $M = 2n+4$ kernel decay;
- a finite, $n$-dependent number of caps of fixed aperture $\gamma(n)$.

Nothing in the propagation step depends on $n$: Lemma 6.1 lives in $\mathbb{R}^3 = \mathbb{R}_T\times\mathbb{R}^2_\tau$ for every $n$. There is no induction on scales, no wave-packet decomposition at scale $h^{1/2}$, no square function, no multilinear or broad–narrow reduction, no polynomial partitioning, and no Kakeya or incidence input. The only "scale" parameter is $s = |\tau|$, and the method moves across it with a harmonic comparison, not an induction. That is why the log power $2/p_c$ is the same in every dimension and why the argument is 59 pages for all $n$.

### 2.12 Appendix D: the planar case is linear

For $n = 2$ the coefficient of $\lambda$ in $\det(\lambda B + H)$ is linear in $H$, so (4.8) is replaced by the linear Dirichlet problem $L_Bu = \mathcal C(B_{\rm fib}):H_{\rm fib}(u) = \mu$ on a disk in $W$ times $|Q| < 1/10$; after Fourier transform in $X$ this is $4|\mathcal J|^2\Delta_W\hat u - 4|k\cdot e|^2\hat u = \hat\mu$ (D.1), a Laplacian minus a nonnegative potential. The energy is $\mathcal F_{\rm pl} = \tfrac12X_0$ and the inequality $A:H \ge D_B(H)$ (a completed square) gives (D.2). The rest of §5–§6 goes through and yields the planar $p_c = 4$ estimate with $[\log(2/h)]^{1/2}$. This appendix makes the Morawetz-multiplier nature of the method visible without the Monge–Ampère layer.

### 2.13 Appendix E: curved characteristic sheets

Theorem E.1 extends Theorem 1.2 to $e^{-iT\phi(D)}b(hD)$ where $\phi = \lambda_{\max}$ of a real symmetric $n\times n$ pencil $\sum\xi_jC_j$ in $n$ variables, simple on a cone $\Gamma$ with $D^2\phi > 0$ on $\xi^\perp$. The Gaussian is now $\exp(-w^*S(\xi)w/2)$ with $S = \phi I - C$ and $\Psi = \tfrac{y}{2h}(W - v)^*S_\perp(W - v)$ (E.6); positivity of $S_\perp$ replaces (2.2). Example E.2 gives an irreducible cubic sheet in $\mathbb{R}^3$ (not a quadric), so the method is not tied to the round cone. The constraint is convexity of the sheet (definite transverse Hessian) plus constant coefficients.

---

## 3. Relation to the 3D companion paper (2026-09-24)

The October paper is a new idea, not a simplification of the September paper. Evidence:

- Method [3D]: packet decomposition at terminal time length $H$; cubic sums of packet masses (1.4) [3D]; extremal reductions by contradiction; "phase names" and an entropy excess (§5–7 [3D]); two external inputs, the planar Furstenberg theorem of Ren–Wang and the Guth–Wang–Zhang cone wave-envelope theorem (§4 [3D]); thin-shape reduction and transfer between the round cone and the cylinder $(X, X^2, N)$ (§8–9 [3D]). Keyword counts confirm the disjointness: the October paper has 0 occurrences of "entropy", "Furstenberg", "wave-envelope"; the 3D paper has 0 of "quaternion", "conserved current", "Monge", "Dirichlet".
- Loss [3D]: $H^{-\delta}$ for every $\delta > 0$ on an annulus ((10.2) [3D]); the October paper has a fixed power of a logarithm.
- Dimension [3D]: three only, with the 2D GWZ theorem as lower-dimensional input; the October paper is uniform in $n \ge 2$ and uses no lower-dimensional input.
- Consequences [3D] §11: Bochner–Riesz in $\mathbb{R}^3$, extension $L^r(S^2) \to L^r(\mathbb{R}^3)$ for $r > 3$, Kakeya maximal in $\mathbb{R}^3$ with $h^{-\varepsilon}$ loss (11.5) [3D], maximal half-wave (Cor. 10.7 [3D]). The October paper gives fixed-log Kakeya in all dimensions but does not state a maximal half-wave estimate.
- The October paper does not cite the September local smoothing paper at all. It cites three other OpenAI preprints: [62] (4D Kakeya Hausdorff), [63] (3D Kakeya maximal), [64] (elliptic capacity propagation and restriction to $S^2$). The 3D paper's own Section 11 remarks that "[20, Theorem 1.1 and Corollary 12.4] proves positive-order $L^3$ boundedness ... by a different argument", which suggests that a third, earlier $L^3$ argument also existed.

So the two papers are independent proofs of the $n = 3$ case by unrelated methods; the October paper supersedes the September one in generality and in the quality of the loss.

---

## 4. Section 8: the two obstructions to endpoint smoothing

**Proposition 8.1 (radial focusing).** For $n \ge 2$ and every large $N$ there is a nonzero radial Schwartz $f_N$ with $\operatorname{supp}\hat f_N \subset \{5N/4 < |\xi| < 7N/4\}$ such that
$$\frac{\|U(t)f_N\|_{L^p(\mathbb{R}^n\times I)}}{\|f_N\|_{L^p}} \gtrsim_{n,p}\begin{cases}1, & 2 \le p < p_c,\\ (\log N)^{1/p_c}, & p = p_c,\\ N^{d/2 - n/p}, & p_c < p < \infty.\end{cases} \tag{8.1}$$
Construction: $\hat f_N(\xi) = e^{it_0|\xi|}\psi(|\xi|/N)$, $t_0 = 3/2$; $\|f_N\|_p \lesssim N^{(n+1)/2 - 1/p}$ (8.2); at time $t_0 + u$ the outgoing shell $|r - u| \le \eta/N$, $A/N \le u \le 1/4$, has modulus $\gtrsim N^{(n+1)/2}r^{-d/2}$ (8.3) and volume $\asymp N^{-1}u^d$, so the ratio to the $p$-th power is $\gtrsim\int_{A/N}^{1/4}u^{d - dp/2}\,du$; the exponent is $-1$ exactly at $p = p_c$. Consequences stated: a Sobolev estimate needs $s \ge s_+(p)$; at $p_c$ a logarithmic estimate needs power $\ge 1/p_c$; this applies to $P_N$ in Theorem 1.2 whenever $\varphi = 1$ on $[5/4,7/4]$, and to Theorem B.1 since the data are radial.

**Proposition 8.2 (weak spacetime obstruction).** For $2 < p \le p_c$ and every large $N$ there is a nonzero Schwartz $g_N$ with the same Fourier support such that
$$\frac{\|U(t)g_N\|_{L^{p,\infty}(\mathbb{R}^n\times I)}}{\|g_N\|_{L^p}} \gtrsim_{n,p}(\log N)^{d(1/2 - 1/p)}. \tag{8.4}$$
The exponent equals $1/p_c$ at $p_c$ and is positive on $2 < p < p_c$, so Sobolev order zero fails for all $2 < p \le p_c$, even in weak $L^p$. The paper notes that if the strong critical bound held with power $1/p_c$ for all data, interpolation with $L^2$ would give exactly this exponent, so (8.4) is consistent with the conjectured sharp power. Construction (App. C): Fefferman/Besicovitch geometry; $\delta = 2^{-k}$, $k = \lfloor\tfrac14\log_2N\rfloor$; lines $L_j(X) = \alpha\sum_\ell\varepsilon_\ell(j)2^{-\ell}(X - a_\ell)$ with binary digits choosing slope increments at $a_\ell = 1 - \ell/k$; $\delta^{-d}$ tubes of width $w = \alpha\delta/16$ disjoint at $X \le -1/2$ and compressed into a set $E$ with $|E| \lesssim k^{-d}$ at $X \in [1/4,1/2]$ (C.1); modulated bumps $f_\nu = e^{i\lambda v_\nu\cdot x}b_\nu$ transported by $U(t)Q_N$ with error $O(N^{-1}w^{-2})$ (C.2); random signs; $\int_H|u|^2 \le \tfrac{p}{p-2}|H|^{1-2/p}\|u\|_{p,\infty}^2$. The same packets show that the angular weight in Theorem B.1 must have $B \ge 1/p$ (sufficiency is $B > 1/2 + 1/p$).

---

## 5. Consequences (Sections 9–12) and exactly what is and is not obtained

**Corollary 9.1 (sphere extension, Kakeya).** $\|Eg\|_{L^{p_c}(B(z,R))} \le C_n[\log(2+R)]^{2/p_c}\|g\|_{L^{p_c}(S^{n-1})}$; $\|K_\delta f\|_{L^n(S^{n-1})} \le C_n[\log(2/\delta)]^{4/p_c}\|f\|_{L^n(\mathbb{R}^n)}$; every Kakeya set in $\mathbb{R}^n$ has Hausdorff dimension $n$. Mechanism: Lemma 9.2 (time modulation selects a shell, linearize the distance phase at the focus as in Hörmander; wave log power $A$ gives extension log power $A$ on balls); Lemma 9.4 (random signs on $\delta$-separated caps as in Beckner–Carbery–Semmes–Soria/Bourgain give the tube overlap bound (9.5) with power $2A$); §9.3 Hausdorff via Keich-type grouping of radii, infinite measure for the gauge $r^n[\log(1/r)]^{2An}[\log\log(1/r)]^\gamma$, $\gamma > n-1$. Obtained: fixed-log Kakeya maximal in every $n$ with power $2(n-1)/n$. Not obtained: the sharp maximal power $1 - 1/n$ (would follow from $A = 1/p_c$); the sharp neighborhood bound $|F_\delta| \gtrsim L^{-(n-1)}$ (they get $L^{-2(n-1)}$ (9.6)).

**Corollary 9.3 (global extension).** For $1 < a \le \infty$, $b < \infty$, $b > p_c$ and $b > \tfrac{n+1}{n-1}a'$: $E: L^a(S^{n-1}) \to L^b(\mathbb{R}^n)$ (9.3) and the truncated cone $E_\Sigma: L^a(\Sigma) \to L^b(\mathbb{R}^{n+1})$ (9.4) (Nicola slicing). Route: Lemma 9.2 gives $R^\varepsilon$ loss, duality, Tao's epsilon removal [75, Thm. 1.2] at every $1 < u < p_c'$, dualize, interpolate with $L^1 \to L^\infty$. This is the full interior of the conjectured range; both boundary lines $b = p_c$ and $b = \tfrac{n+1}{n-1}a'$ are left open (the Stein–Tomas-type endpoint on the second line is not recovered as part of this argument).

**§9.4.** Nikodym maximal $\|N_\delta f\|_{L^n} \lesssim L(1/\delta)^{2A}\|f\|_n$ (9.7) by a projective change of variables; Nikodym sets have dimension $n$; local version on constant-curvature manifolds via a straightening chart [30]; curved Kakeya for the family $\{(w(y) + (tI + t^2B)y, t)\}$ via Nadjimzadah's lifting [59], minimal dimension $n - \dim(\operatorname{im}B\cap\ker B)$.

**Theorem 10.1 (Bochner–Riesz).** (10.1): uniform $L^p$ bounds for $1 \le p \le \infty$, $\alpha > \delta(p) = \max\{0, n|1/p - 1/2| - 1/2\}$ (the full conjecture, all $n$), with norm convergence for $p < \infty$. (10.2): maximal operator $B_*^\alpha$ bounded on $L^p$ for $2 \le p < \infty$, $\alpha > s_+(p)$, with a.e. convergence. Route: rescaled wave estimate (10.3) with $R^{1/p + \sigma}$, Lemma 10.2 (thin shell, $\delta^{-\sigma}$) and dyadic decomposition of $(1 - \rho^2)_+^\alpha$; $p < 2$ by duality of the linear means. Not obtained: endpoints $\alpha = \delta(p)$; maximal estimates for $p < 2$ (a different problem).

**Theorem 11.1 (Stein square function).** $\|G^\alpha f\|_p \le C\|f\|_p$ for $2 \le p < \infty$, $\alpha > \max\{\tfrac12, n(\tfrac12 - \tfrac1p)\}$: the full conjectured range for $p \ge 2$. Route: Lemma 11.2 (one interval of radii, $\delta^{1/2 - \sigma}$) and Lemma 11.3 (combining dilates with a Hilbert-valued kernel, Seeger/Jones–Seeger–Wright/Guo–Roos–Yung, cost $[1 + \log(1/\delta)]^{1/2 - 1/p}$ absorbed by the strict inequality). Not obtained: endpoint $\alpha$, $p < 2$.

**Corollary 12.1 (paraboloid, Schrödinger).** (12.1): compact paraboloid extension $L^a(B^d) \to L^b(\mathbb{R}^{d+1})$ for $1 < a \le \infty$, $p_c < b < \infty$, $b > (d+2)a'/d$, $p_c = 2(d+1)/d$ (parabolic rescaling of a small cap preserves the log power; Tao epsilon removal in Kim's hypersurface form). (12.2): $\|e^{it\Delta}f\|_{L^{p_c}(\mathbb{R}^d\times I)} \lesssim[\log(2+N)]^{2/p_c}\|f\|_{p_c}$ for $\operatorname{supp}\hat f \subset B(0,N)$ (Fresnel kernel comparison). (12.3): for $p_c < p < \infty$, $p \le r \le \infty$, $\|e^{it\Delta}f\|_{L^p_x L^r_t(I)} \lesssim\|f\|_{B^s_{p,p}} \lesssim\|(1-\Delta)^{s/2}f\|_p$, $s = d(1 - 2/p) - 2/r$, via Lee–Rogers–Seeger [51, Cor. 1.2]; $r = p$ is the exact spacetime Sobolev order, $r = \infty$ the $L^p$-based maximal estimate. Not obtained: $p = p_c$ itself in (12.3); any $L^2$-based ($H^s$) maximal estimate; the sharp log power in $d = 1$ ($1/4$ known, here $1/2$).

**Appendix B (Theorem B.1).** At $p_c$: $\|U(T)f\|_{L^{p_c}(\mathbb{R}^n\times I)} \le C(\|L(J)^{1/p}f\|_p + \|L(\Lambda_\omega)^Bf\|_p)$ for $B > 1/2 + 1/p$, and a weak-type bound with only the angular weight; any $\|\Lambda_\omega^\sigma f\|_p$, $\sigma > 0$, suffices. This gives the sharp frequency log power $1/p_c$ under angular regularity. Mechanism: separate output radius $r \lessgtr (2+M)^K/N$; inside, Lemma B.3 (observation on a ball costs $L(Nr)^A$); outside, angular stationary phase with uniform remainders on bounded angular degree (Lemma B.4), four one-dimensional kernels at $t \pm r \pm s = 0$ as in Müller–Seeger, and the radial identity $\int_{N^{-1}}^4(r^{-\alpha}G)^pr^d\,dr = G^p\log(4N)$ (B.5).

Summary of open items the paper itself flags: the annular log power in $[1/p_c, 2/p_c]$; $\varepsilon = 0$ for $p > p_c$ (known by Heo–Nazarov–Seeger only for $n \ge 4$, $p > 2(n-1)/(n-3)$; Cor. 7.1's log condition "need not be optimal"); endpoints of all restriction, Bochner–Riesz, and square function ranges; $p < 2$ is not a local smoothing question (the estimate is only stated for $2 \le p < \infty$ and the fixed-time loss for $p < 2$ is dual).

---

## 6. Extension questions

**Variable-coefficient wave / compact manifolds.** Implausible by direct transfer; the uniform-in-$n$ critical result is false there. The paper itself records that some 3D metrics need $p \ge 10/3$ for the full gain (Minicozzi–Sogge [53]), and the 3D companion records that $p \ge 4$ is sharp for the cinematic-curvature FIO class (Beltran–Hickman–Sogge). Where the method breaks: Lemma 2.1 needs constant real symmetric $C^\mu$ (the acceleration identity uses the flat connection, and the pushforward conservation needs $\Theta$ holomorphic with the state blocks of $B$ equal); $G = f_{\rm sys}(X - iq)$ needs an entire solution, available because on the torus the wave is a finite trigonometric sum; Prop. 2.2's exact tangency $(\partial\Phi)A_0 = 0$ needs the global passive coordinate. Appendix E shows the real flexibility: any constant-coefficient symmetric pencil with a convex simple sheet works (even a cubic one), so the obstruction is variable coefficients, not the round cone. A plausible partial route is analytic coefficients with a complexified flow (the FBI/complex-time smoothing survives analyticity), but the counterexamples say the output cannot be $p_c$ in general, so any manifold version must see the metric's focusing geometry, which this argument never looks at.

**Restriction for the hyperbolic paraboloid and other non-elliptic surfaces.** Implausible as is. Positivity of the current comes from $-w^tC(p)w = \kappa|w' - vw_0|^2 \ge 0$ (2.2) and the Gaussian (2.4); in App. E it comes from $S_\perp \ge c|\xi|I$ (E.6), i.e. a definite transverse Hessian. For a saddle the imaginary translation produces a weight that decays in the convex directions and grows in the concave ones, so $A_0$ would not be psd and the maximum principle in §5–6 and the Dirichlet theory in App. A fail. One could try complexifying only the convex directions, but then the determinant count (and so the exponent) changes and the passive-coordinate tangency is lost. No indication in the paper.

**$\ell^p$ decoupling.** The method does not produce decoupling inequalities and is not of decoupling type. It sums the modes before squaring (§1.4, §2) and its intermediate object is the Husimi-type density $\mu \approx \int|S_Wu|^2$ over directions, i.e. a directional square function, raised to the power $n/(n-1)$ through the determinant. The right side of the key inequality is the same energy at time zero, not a sum over caps of $L^p$ norms. Cone decoupling (Bourgain–Demeter) implies local smoothing only for $p \ge 2(n+1)/(n-1)$, and nothing here reverses that implication. What one might extract is a reverse square-function-type statement at $p_c$ in the spirit of Guth–Wang–Zhang ($\|u\|_{p_c}$ controlled by a spacetime directional square function at scale $(hs)^{1/2}$), because $\mathcal F$ at a fixed $s$ is such a quantity; the paper does not state one.

**The endpoint $\varepsilon = 0$.** For $2 < p \le p_c$ it is false (Prop. 8.2: even weak $L^p$ with Sobolev order 0 fails), so the only live endpoint question there is the log power at $p_c$ (between $1/p_c$ and $2/p_c$; $1/p_c$ with angular regularity by Theorem B.1). For $p > p_c$ the method gives only polylog losses (7.4) and the whole machinery runs at $p = p_c$; the $p > p_c$ estimate is interpolation. A direct $p > p_c$ argument would need a different concave determinant-type functional (a rank-$r$ background gives exponent $1 + 1/(n-r)$ by the same algebra, my inference), but the paper gives no such variant, and the $\varepsilon = 0$ result of Heo–Nazarov–Seeger is left as the only lossless case.

**Schrödinger maximal function (Du–Zhang).** Not reproved. Du–Zhang concern $L^2$-based data, $\|\sup_{0<t<1}|e^{it\Delta}f|\|_{L^p(B)} \lesssim\|f\|_{H^s}$ for $s > d/(2(d+1))$. The paper's (12.3) with $r = \infty$ is the $L^p$-based (Rogers / Lee–Rogers–Seeger) maximal estimate for $p > p_c = 2(d+1)/d$ with $s = d(1 - 2/p)$ in $L^p$. The two problems have different extremizers (the $H^s$ problem is governed by Bourgain's fractal counterexample and by refined Strichartz plus polynomial partitioning in Du–Zhang). Nothing in the paper interpolates to the $L^2$ problem. Could the current method attack it? The fiber estimates are tied to $p = p_c$ through the determinant exponent and to $L^{p}$ normalization of the data; an $L^2 \to L^p_xL^\infty_t$ bound on a ball with $N^{s}$ loss would need a different energy. Plausible only with a new idea.

**Curved Kakeya / Nikodym on manifolds.** Partially addressed. §9.4 gives the Nikodym maximal estimate and dimension locally on constant-curvature manifolds (by straightening) and dimension bounds for one explicit curve family via Nadjimzadah's lifting. For general curved families, Bourgain's and Minicozzi–Sogge's counterexamples show the Euclidean statements fail, and the method has no mechanism to see curvature of a family of curves: all geometry enters through the constant-coefficient symbol. So no.

**Finite-field or discrete analogues.** Implausible. The proof uses analytic continuation in imaginary directions (Gaussian weights), order (positivity, maximum principle, comparison principles for Monge–Ampère), and radial harmonic functions in a continuous auxiliary plane. The only algebraic component is Lemma 3.3 (a polynomial identity), which does not carry the inequalities. Finite-field Kakeya (Dvir) and finite-field restriction have no focusing-in-time structure and no complex displacement. The torus setting (finite trigonometric sums, Prop. 6.3) is already "discrete in frequency", so periodic versions with time $\le 2$ on a large torus are native, but that is Euclidean in disguise.

**Sharpening polylog losses.** The two logs are the harmonic measure of the inner circle from radius one (Remark 6.2 shows this is sharp for scalar supersolutions with no potential). Improving to $1/p_c$ would need either (i) a quantity with better structure than a scalar supersolution of $-\Delta + V$ in $(T,\tau)$, e.g. a sub-mean-value property in $T$ alone, or (ii) a comparison at $r = 2b$ that uses more wave information (the paper's words: "requires more information about the wave energy"). With angular regularity the sharp $1/p_c$ is already reached by a separate stationary-phase argument (App. B), not by sharpening §6. For Kakeya, $A = 1/p_c$ would give the sharp maximal power $1 - 1/n$ and $|F_\delta| \gtrsim L^{-(n-1)}$, matching the Fernández-Delgado–de la Salle sets. The $1/2 - 1/p$ in Cor. 7.1 comes from Hölder in the dyadic sum and is a second, independent place to look.

---

## 7. Unusual features, hidden work, and nearest human ideas

**Odd or unverifiable citations.**
- Six 2026 preprints dated after my knowledge cutoff, which I cannot check: [20] Cushman–Demeter–Wu arXiv:2609.13105 (sharp $1/4$ log in the GWZ square function); [24] Fernández-Delgado–de la Salle arXiv:2607.14824v3 (Kakeya sets with $|F_\delta| \lesssim L^{-(n-1)}$); [36] Guth–Wang–Zahl arXiv:2601.14411v2 ("streamlined" 3D Kakeya); [59] Nadjimzadah arXiv:2609.06299v2 (lifting curved Kakeya); [78] X. Wang arXiv:2609.34675v4; [28] Gan–He–Li–Wu arXiv:2502.05973v2 (January 2026 revision). Section 9.4's curved Kakeya corollary and the "sharp" claim after (9.6) rest on [59] and [24] respectively.
- Three OpenAI self-citations [62]–[64] with internal "OAI:" identifiers, no arXiv numbers. The September 3D local smoothing paper is not cited.
- [41] Kaiser, *Quantum Physics, Relativity, and Complex Spacetime* (North-Holland 1990) and [42] Kaiser–Streater on windowed Radon transforms: physics-side sources for the complex-spacetime Gaussian $e^{\rho(\xi\cdot\omega - |\xi|)}$ and for a conserved vector at fixed imaginary displacement. Unusual for a harmonic analysis paper, and the real seed of §2.
- [46] J. Kim, arXiv:1702.01231 (compact hypersurface form of Tao's epsilon removal, cited as "Theorem 5.3"): a preprint carrying the paraboloid global range (12.1).
- Pluripotential-theory references used in a harmonic analysis proof: Alesker [2]–[4], Aubin [5], Mabuchi [52], Berman–Boucksom–Guedj–Zeriahi [10], Åhag et al. [1], Wan [76], Zhu [81]. The paper is explicit that it only borrows definitions and the divergence lemma; the Laplacian-of-slice-energy identity of [1] is cited as motivation and then reproved for moving fibers.

**Appeals to standard arguments that hide work.**
- Theorem A.1 is a condensed continuity-method proof: $C^0$ by barriers, $C^1$ and tangential $C^2$ by (A.3), mixed normal–tangential derivatives by a Caffarelli–Nirenberg–Spruck rigid-motion argument adapted to quaternionic unitary flows, normal–normal by the Schur formula, then Gilbarg–Trudinger 17.14/17.26′ and Evans–Krylov on a finite cover. The adjunction of a fourth periodic slot to get rotations is a nontrivial device. Smooth dependence on the moving domain is by the implicit function theorem in $C_0^{k+2,\alpha}$ after pulling back to a fixed domain; uniformity of constants in $h$ is deliberately not claimed here (the $h$-quantitative bounds come from §5's comparison functions).
- §5's "kernel estimate" ($(1 - \Delta_\eta)^{n+2}$ on a symbol with derivatives through order $M = 2n+4$ bounded by $B$ gives absolute kernel $\le CBh^{-n}(1 + |X/h|^2)^{-M/2}$) is used repeatedly and the polynomial powers $\sigma^m$ are "enlarged when necessary"; this is fine since $e^{-c_0\sigma}$ wins, but $m$ is never tracked.
- The "compact weak Harnack inequality" in Lemma 6.1 is replaced by a direct mean-value argument, so no hidden work there.
- §7.1's cube-tiling argument and (7.2) kernel decay for $|X| \ge 3$ are standard; the uniformity "in the direction of the cap" in Prop. 6.3 is asserted because the torus is fixed and only the frame rotates, with periodization "also for a rotated lattice" (§5).
- Smoothness of $A_0$ "on $Y \ne 0$" and single-valuedness (sign of $R$) are handled by a one-line argument in Prop. 2.2; the fibers avoid $Y = 0$ since $y \asymp s \ge a$.
- The density step "homogeneity removes the normalization" after using $\|f\|_2 = 1$ and $\lambda = h^{-30n}$: the final inequality (6.4) is homogeneous of degree $p$ while the intermediate construction is not; this is valid but relies on (4.7) holding after normalization, which is arranged by the $h^{-30n}$ margin.

**Ideas that look new to the field, with nearest human analogue.**
1. Lifting a wave to a positive semidefinite, divergence-free tensor in combined physical and auxiliary variables via complex displacement and two auxiliary flows (Lemma 2.1, Prop. 2.2). Nearest: Kaiser's conserved current at fixed imaginary displacement [41, §4.5]; Friedrichs' bilinear flux of symmetric systems [25]; Baouendi–Trèves tube vector fields [6]; FBI/Husimi transforms. New: the positivity and conservation of the four-square tensor and its quaternionic rank-one form after the holomorphic flux map.
2. Pairing a conserved positive tensor with the Hessian of a solution-dependent potential solving a determinant equation whose right side is the tensor's time density (§3–4). Nearest: Morawetz multipliers and virial identities ($\partial_\mu(T^{\mu\nu}\partial_\nu a) = T^{\mu\nu}\partial_{\mu\nu}a$; here (3.10)); Serre's compensated integrability [69]–[71], which gives the $n/(n-1)$ exponent from the determinant of a positive divergence-free tensor; Alesker's quaternionic Monge–Ampère and cofactor divergence. New: using the quaternionic (three-slot) Hessian so that the auxiliary coordinates are absorbed, and the rank-one background trick that converts density to depth with exponent $1/(n-1)$.
3. The Aubin–Mabuchi segment energy as the correction that cancels the full spacetime determinant in a moving-fiber balance law (Prop. 4.2), with the cofactor's zero normal–normal entry (3.14)+(3.7) removing the boundary term. Nearest: Mabuchi's $L$-functional, Åhag–Cegrell–Kołodziej–Phạm–Zeriahi slice-energy Laplacian [1, Thm. 3.1]. New in this context.
4. Replacing induction on scales by harmonic comparison in a two-dimensional auxiliary time (§6): the radius $|\tau|$ is the scale, the Gaussian width $(h|\tau|)^{1/2}$ interpolates between one cap and wave packets, and the log loss is the planar harmonic measure of an $h$-circle. Nearest: Wolff's induction on scales and GWZ's wave-envelope estimates in spirit; nothing close in form.
5. Deriving Kakeya from local smoothing in all dimensions with a fixed logarithmic power (§9), inverting the usual direction of inputs (the 3D companion used Furstenberg and incidence results as inputs). The individual steps (Lemma 9.2, 9.4, Keich grouping) are classical.

Non-novel but well executed: §7 (interpolation and summation), §10–11 (Sogge/BHS reductions, Seeger-type combination of dilates), §12 (Hörmander parabolic rescaling, LRS transfer), App. B (Müller–Seeger radial kernels, Narcowich–Petrushev–Ward localization), App. C (Fefferman/Besicovitch).
