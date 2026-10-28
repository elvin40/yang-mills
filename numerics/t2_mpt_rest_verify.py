# independent check of SOURCES_T2_MPT_REST: generic link angles (all phi_p != 0), scipy expm/logm, exact Laplace-integral traces
import numpy as np, scipy.linalg as sl, scipy.special as sp, scipy.integrate as si
rng = np.random.default_rng(11); P = [np.array([[0,1],[1,0]]), np.array([[0,-1j],[1j,0]]), np.diag([1,-1])]
E = lambda v: sl.expm(0.5j*sum(c*m for c, m in zip(v, P)))
Y = lambda V: np.array([np.trace(m@sl.logm(V)).imag for m in P])          # V = exp(i y.s/2) -> y
for trial in range(12):
    th = rng.uniform(-np.pi, np.pi, 4); B = [rng.normal(size=3) for _ in range(4)]; s = [1, 1, -1, -1]
    U0 = [E([0, 0, 2*t]) for t in th]; php = th[0]+th[1]-th[2]-th[3]
    Up = lambda t: E(t*B[0])@U0[0]@E(t*B[1])@U0[1]@np.linalg.inv(E(t*B[2])@U0[2])@np.linalg.inv(E(t*B[3])@U0[3])
    y = lambda t: Y(Up(t)@np.linalg.inv(Up(0)))
    h = 1e-4; lin = (y(h)-y(-h))/(2*h); quad = (y(h)+y(-h))/(2*h*h)
    b = [v[0]+1j*v[1] for v in B]; ph = lambda t: np.exp(-2j*t)                # T_mu b(x) = e^{-2i th_{x,mu}} b(x+e_mu)
    curl = (ph(th[0])*b[1]-b[3]) - (ph(th[3])*b[2]-b[0]); pred = curl + (1-ph(php))*(ph(th[3])*b[2]+b[3])
    S = lambda t: 1-np.trace(Up(t)).real/2; q2 = (S(1e-3)+S(-1e-3)-2*S(0))/(2e-6)
    q2p = np.cos(php)/8*np.linalg.norm(lin)**2 - np.sin(php)/4*(-2*quad[2])       # Sum_{i<j}(x_i x x_j)_3 = -2*(deg-2 part of y)_3
    print(f"phi_p={np.angle(np.exp(1j*php)):+.3f} |lin_c - pred|={abs(lin[0]+1j*lin[1]-pred):.1e} |lin_3 - flat curl|={abs(lin[2]-sum(si_*v[2] for si_, v in zip(s, B))):.1e} quad rel={abs(q2-q2p)/abs(q2p):.1e}")
r3 = []
for _ in range(3000):                                                      # majorant: Sigma|B| = 1, worst ratio
    B = [rng.normal(size=3)*rng.exponential() for _ in range(4)]; B = [v/sum(map(np.linalg.norm, B)) for v in B]
    Ad = [B[0], B[1], -B[2], -B[3]]; y = Y(E(Ad[0])@E(Ad[1])@E(Ad[2])@E(Ad[3]))   # theta = 0: g_i = 1 isolates the BCH remainder
    r3.append(np.linalg.norm(y - sum(Ad) + 0.5*sum(np.cross(Ad[i], Ad[j]) for i in range(4) for j in range(i+1, 4))))
g = -np.log(2-np.exp(0.5)); print("max r3 at Sigma|B|=1:", max(r3), " proved const 2*(g(1/2)-3/4)/(1/2)^3/8 =", 2*(g-0.75)/0.125/8)
f = lambda t: sp.ive(0, 2*t); f1 = lambda t: 2*(sp.ive(1, 2*t)-sp.ive(0, 2*t)); f2 = lambda t: 4*(2*sp.ive(0, 2*t)-2*sp.ive(1, 2*t)-sp.ive(1, 2*t)/(2*t))
tM = si.quad(lambda t: -2*f(t)*f1(t)*f(t)**2, 0, np.inf, limit=500)[0]       # E[a/(a+c)] = int E[a e^{-ta}] E[e^{-tc}] dt, E e^{-ta} = f^2
tM2 = si.quad(lambda t: t*(2*f2(t)*f(t)+2*f1(t)**2)*f(t)**2, 0, np.inf, limit=500)[0]
print(f"tau(M)={tM:.10f} tau(M^2)={tM2:.8f} phi^2 coeff -1/96+tau(M^2)/16={-1/96+tM2/16:.7f} 0.058 check 1/(32 cos 1)={1/(32*np.cos(1)):.5f}")
