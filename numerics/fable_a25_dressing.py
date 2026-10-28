# Dressing Lemma check (FABLE_A25_A26_H1 §1): d=2 torus of N coarse blocks, block size L, U=1.
# Checks: Q_G(Dλ)=D1(λ|centres); Q_str(Dλ)=D1(λ̄); Q_G = Q_str − D1∘r_G; dressed = Q_str; two-step; minimum identity.
import numpy as np, itertools, scipy.sparse as sp, scipy.sparse.linalg as spl
L, N, d = 3, 2, 2
n = L*N                       # fine points per axis
def fid(x): return (x[0]%n)*n + (x[1]%n)
def bid(x,mu): return mu*n*n + fid(x)      # fine bond (x, x+e_mu)
nb = 2*n*n
def cid(y,mu): return mu*N*N + (y[0]%N)*N + (y[1]%N)   # coarse bond
nc = 2*N*N
c0 = (L-1)//2                  # centre offset in block
def centre(y): return (y[0]*L+c0, y[1]*L+c0)
def monotone_paths(a,b):       # all shortest monotone lattice paths a->b (as list of (bond,sign))
    dx = [b[i]-a[i] for i in range(2)]
    steps = [0]*abs(dx[0]) + [1]*abs(dx[1])
    out=[]
    for perm in set(itertools.permutations(steps)):
        p=list(a); path=[]
        for mu in perm:
            s = 1 if dx[mu]>0 else -1
            q=list(p); q[mu]+=s
            path.append((bid(p if s>0 else q, mu), s)); p=q
        out.append(path)
    return out
def axial_path(a,b):           # e_1 first then e_0? use: move along axis 1 then axis 0 (one fixed contour)
    p=list(a); path=[]
    for mu in (1,0):
        s = 1 if b[mu]>p[mu] else -1
        while p[mu]!=b[mu]:
            q=list(p); q[mu]+=s; path.append((bid(p if s>0 else q,mu), s)); p=q
    return path
def chain_avg(fam, y, x):      # row vector: mean over family of line integrals from centre(y) to x
    v=np.zeros(nb); paths = fam(centre(y), x)
    for path in paths:
        for b,s in path: v[b]+=s/len(paths)
    return v
def build(fam):                # Q_G, Q_str, r_G as matrices (nc x nb), (N^2 x nb)
    QG=np.zeros((nc,nb)); Qs=np.zeros((nc,nb)); r=np.zeros((N*N,nb))
    for y in itertools.product(range(N),repeat=2):
        for x in itertools.product(range(L),repeat=2):
            xf=(y[0]*L+x[0], y[1]*L+x[1])
            r[(y[0]%N)*N+y[1]] += chain_avg(fam,y,xf)/L**2
            for mu in range(2):
                yp=list(y); yp[mu]+=1; xp=list(xf); xp[mu]+=L
                row=np.zeros(nb)
                for s in range(L):
                    z=list(xf); z[mu]+=s; row[bid(z,mu)]+=1
                Qs[cid(y,mu)] += row/L**2
                QG[cid(y,mu)] += (chain_avg(fam,y,xf) + row - chain_avg(fam,tuple(yp),tuple(xp)))/L**2
    return QG,Qs,r
D=np.zeros((nb,n*n))           # fine gradient
for x in itertools.product(range(n),repeat=2):
    for mu in range(2):
        q=list(x); q[mu]+=1; D[bid(x,mu),fid(x)]-=1; D[bid(x,mu),fid(q)]+=1
D1=np.zeros((nc,N*N))
for y in itertools.product(range(N),repeat=2):
    for mu in range(2):
        q=list(y); q[mu]+=1; D1[cid(y,mu),(y[0]%N)*N+y[1]]-=1; D1[cid(y,mu),(q[0]%N)*N+q[1]%N]+=1
ev=np.zeros((N*N,n*n)); av=np.zeros((N*N,n*n))   # evaluation at centres, block average
for y in itertools.product(range(N),repeat=2):
    ev[(y[0])*N+y[1], fid(centre(y))]=1
    for x in itertools.product(range(L),repeat=2): av[y[0]*N+y[1], fid((y[0]*L+x[0],y[1]*L+x[1]))]+=1/L**2
for name,fam in (("axial",lambda a,b:[axial_path(a,b)]),("symmetric",monotone_paths)):
    QG,Qs,r=build(fam)
    print(name, "Q_G D = D1 ev:", np.abs(QG@D - D1@ev).max(),
          "| Q_str D = D1 av:", np.abs(Qs@D - D1@av).max(),
          "| Q_G = Q_str - D1 r:", np.abs(QG - (Qs - D1@r)).max())
    # dressed: A -> A - D lam, lam = chain integral + centre value, centre value = -r(A)
    lam = np.zeros((n*n,nb))
    for y in itertools.product(range(N),repeat=2):
        for x in itertools.product(range(L),repeat=2):
            xf=(y[0]*L+x[0], y[1]*L+x[1]); lam[fid(xf)] = chain_avg(fam,y,xf) - r[y[0]*N+y[1]]
    Qdr = QG@(np.eye(nb) - D@lam)
    print("   dressed = Q_str:", np.abs(Qdr-Qs).max(), "| lam block-avg zero:", np.abs(av@lam).max())
    # minimum identity, one step: min ||DA||^2 (here curl of A, 2d: use plaquette curl) s.t. Q A = B
    C=np.zeros((n*n,nb))       # curl
    for x in itertools.product(range(n),repeat=2):
        q0=list(x);q0[0]+=1;q1=list(x);q1[1]+=1
        C[fid(x),bid(x,0)]+=1; C[fid(x),bid(q0,1)]+=1; C[fid(x),bid(q1,0)]-=1; C[fid(x),bid(x,1)]-=1
    rng=np.random.default_rng(0); B=rng.standard_normal(nc)
    def minval(Q):
        # min ||CA||^2 + eps||A||^2 s.t. QA=B via KKT; eps tiny regularizer removes gauge null space
        eps=1e-9; H=C.T@C+eps*np.eye(nb); K=np.block([[H,Q.T],[Q,np.zeros((nc,nc))]])
        sol=np.linalg.lstsq(K,np.concatenate([np.zeros(nb),B]),rcond=None)[0]; A=sol[:nb]; return A@(C.T@C)@A
    print("   min||curl||^2 undressed vs Q_str:", minval(QG), minval(Qs))
