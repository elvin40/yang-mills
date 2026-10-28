# SOURCES_T2_MPT_REST §3: plaquette BCH / covariant-curl identification (item 1) and neutral sector (item 2)
import numpy as np
rng = np.random.default_rng(7); s = [np.array([[0,1],[1,0]],complex), np.array([[0,-1j],[1j,0]]), np.diag([1.,-1]).astype(complex)]
su = lambda v: np.cos(np.linalg.norm(v)/2)*np.eye(2) + 1j*np.sin(np.linalg.norm(v)/2)*sum(c*m for c, m in zip(v/max(np.linalg.norm(v),1e-300), s))
lg = lambda V: (lambda c, w: 2*np.arccos(np.clip(c,-1,1))*w/max(np.linalg.norm(w),1e-300))(np.trace(V).real/2, np.array([np.trace(m@(V-V.conj().T)/2j).real/2 for m in s]))
Ad = lambda th, v: np.array([np.cos(2*th)*v[0]+np.sin(2*th)*v[1], -np.sin(2*th)*v[0]+np.cos(2*th)*v[1], v[2]])  # Ad_{e^{i th s3}}
alpha, x0 = 0.03, np.array([3, -2, 5, 1]); chi = {}
X = lambda y: chi.setdefault(tuple(y), rng.uniform(-np.pi, np.pi))
th = lambda y, mu: (-alpha/2*y[1] if mu == 0 else 0.) + X(y) - X(y + np.eye(4, dtype=int)[mu])  # Landau gauge + random gauge
for eps in [0.3, 0.1, 0.03]:
  for mu, nu in [(0,1),(0,2),(0,3),(1,2),(1,3),(2,3)]:
    e = np.eye(4, dtype=int); L = [(x0,mu),(x0+e[mu],nu),(x0+e[nu],mu),(x0,nu)]; sg = [1,1,-1,-1]
    T = [th(y,m) for y,m in L]; B = [eps*rng.normal(size=3) for _ in L]; php = T[0]+T[1]-T[2]-T[3]
    Up = lambda t: su(t*B[0])@su(np.array([0,0,2*T[0]]))@su(t*B[1])@su(np.array([0,0,2*T[1]]))@np.linalg.inv(su(t*B[2])@su(np.array([0,0,2*T[2]])))@np.linalg.inv(su(t*B[3])@su(np.array([0,0,2*T[3]])))
    U0 = Up(0.); y = lg(Up(1.)@U0.conj().T); G = [0., T[0], T[0]+T[1]-T[2], php]
    x = [sg[i]*Ad(G[i], B[i]) for i in range(4)]; cr = sum(np.cross(x[i], x[j]) for i in range(4) for j in range(i+1, 4))
    r3 = np.linalg.norm(y - sum(x) + cr/2)/sum(map(np.linalg.norm, B))**3
    b = [v[0]+1j*v[1] for v in B]
    curl = b[0] + np.exp(-2j*T[0])*b[1] - np.exp(-2j*T[3])*b[2] - b[3]  # (nabla_mu b_nu - nabla_nu b_mu)(x), T_mu b(x) = e^{-2i th_{x,mu}} b(x+e_mu)
    z = sum(x)[0]+1j*sum(x)[1]; pred = curl + (1-np.exp(-2j*php))*(np.exp(-2j*T[3])*b[2] + b[3])
    S = lambda t: 1 - np.trace(Up(t)).real/2; h = 1e-3; q2 = (S(h)+S(-h)-2*S(0))/(2*h*h)
    q2p = np.cos(php)/8*np.linalg.norm(sum(x))**2 - np.sin(php)/4*cr[2]
    print(f"eps={eps:5.2f} ({mu},{nu}) phi_p={php:+.4f} |z-curl-pred|={abs(z-pred):.1e} |z-curl|={abs(z-curl):.1e} r3/(sum|B|)^3={r3:.3f} quad rel.err={abs(q2-q2p)/abs(q2p):.1e}")
K = np.linspace(-np.pi, np.pi, 41)[:-1]; h0,h1,h2,h3 = [4*np.sin(k/2)**2 for k in np.meshgrid(K,K,K,K,indexing='ij')]
den = h0+h1+h2+h3; den[den == 0] = 1.; m = (h0+h1)/den; m.flat[0] = 0.5  # K=0 is measure zero
print("tau(M)=", m.mean(), " tau(M^2)=", (m**2).mean(), " max m=", m.max())
for ph in [0.4, 0.2, 0.1, 0.05]:
    N = -0.5*np.log(1-(1-np.cos(ph))*m).mean(); print(f"phi={ph}: N/phi^2={N/ph**2:.6f}  (N/phi^2-1/8)/phi^2={(N/ph**2-1/8)/ph**2:.5f}")
