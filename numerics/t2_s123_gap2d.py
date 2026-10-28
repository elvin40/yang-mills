# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""S123 check (2D, t = 0): spectrum of the charged block A' of the 2D SU(2) Wilson
Hessian + background Feynman term at constant flux phi per plaquette (Landau gauge,
N x N torus, phi = 2 pi m / N), Bloch-reduced in x_0.  Normalisation: 4*Hess(S_W) + D_r D_r^T,
so that at phi = 0 the operator is |K^|^2 per colour (fact F1).  Also: bottom of the scalar
magnetic Laplacian L^{01} for charge e = 2.  Read-only w.r.t. all project files."""
import numpy as np, json, sys
s1=np.array([[0,1],[1,0]],complex); s2=np.array([[0,-1j],[1j,0]]); s3=np.diag([1.,-1.]).astype(complex)
sig=[s1,s2,s3]
def expi(v):  # exp(i v.sigma/2)
    n=np.linalg.norm(v)
    if n<1e-300: return np.eye(2,dtype=complex)
    return np.cos(n/2)*np.eye(2)+1j*np.sin(n/2)*sum(v[a]*sig[a] for a in range(3))/n
def Uth(th): return np.diag([np.exp(1j*th),np.exp(-1j*th)])
def Ad(th):  # 3x3 matrix of Ad_{exp(i th s3)} on su(2) components
    U=Uth(th); M=np.zeros((3,3))
    for b in range(3):
        X=U@sig[b]@U.conj().T
        for a in range(3): M[a,b]=0.5*np.real(np.trace(sig[a]@X))
    return M
def Sp(B,ths):
    U=[expi(B[3*i:3*i+3])@Uth(ths[i]) for i in range(4)]
    P=U[0]@U[1]@np.linalg.inv(U[2])@np.linalg.inv(U[3])
    return 1-0.5*np.real(np.trace(P))
def loc_hess(ths,h=1e-4):
    H=np.zeros((12,12)); z=np.zeros(12)
    for i in range(12):
        for j in range(i,12):
            e=np.zeros(12); e[i]+=h; g=np.zeros(12); g[j]+=h
            v=(Sp(e+g,ths)-Sp(e-g,ths)-Sp(-e+g,ths)+Sp(-e-g,ths))/(4*h*h)
            H[i,j]=H[j,i]=v
    return H
def build(N,m):
    phi=2*np.pi*m/N
    th0=lambda x1: -phi*x1   # theta on 0-links at row x1; theta on 1-links = 0
    nv=N*2*3; idx=lambda x1,mu,a: ((x1%N)*2+mu)*3+a
    locs=[]
    for x1 in range(N):
        ths=[th0(x1),0.0,th0(x1+1),0.0]
        # links: l1=(x,0) off0=0 row x1; l2=(x+e0,1) off0=1 row x1; l3=(x+e1,0) off0=0 row x1+1; l4=(x,1) off0=0 row x1
        links=[(x1,0,0),(x1,1,1),(x1+1,0,0),(x1,1,0)]
        locs.append((loc_hess(ths),links))
    def M(k0):
        A=np.zeros((nv,nv),complex)
        for H,links in locs:
            for i,(r1,mu1,o1) in enumerate(links):
                for j,(r2,mu2,o2) in enumerate(links):
                    ph=np.exp(1j*k0*(o2-o1))
                    for a in range(3):
                        for b in range(3):
                            A[idx(r1,mu1,a),idx(r2,mu2,b)]+=4*H[3*i+a,3*j+b]*ph
        D=np.zeros((nv,N*3),complex)   # D_r lambda(l) = lambda(x) - Ad_{U_l} lambda(x+mu)
        for x1 in range(N):
            for mu in range(2):
                th=th0(x1) if mu==0 else 0.0
                R=Ad(th)
                for a in range(3):
                    D[idx(x1,mu,a),(x1*3)+a]+=1
                    tgt=x1 if mu==0 else (x1+1)%N
                    ph=np.exp(1j*k0) if mu==0 else 1.0
                    for b in range(3): D[idx(x1,mu,a),tgt*3+b]-=R[a,b]*ph
        return A, D
    return phi,M,idx
def run(N,m,nk=None):
    phi,M,idx=build(N,m); nk=nk or N
    ch=[i for i in range(N*6) if i%3!=2]; ne=[i for i in range(N*6) if i%3==2]
    ev=[]; gaugeres=0; leak=0; f0=None
    for k0 in 2*np.pi*np.arange(nk)/nk:
        A,D=M(k0)
        gaugeres=max(gaugeres,np.abs(A@D).max())
        K=A+D@D.conj().T
        leak=max(leak,np.abs(K[np.ix_(ch,ne)]).max())
        ev.append(np.linalg.eigvalsh(K[np.ix_(ch,ch)]))
    ev=np.sort(np.concatenate(ev))
    a=2*phi  # e*phi, e=2
    neg=ev[ev<0]; pos=ev[ev>0]
    return dict(N=N,m=m,phi=phi,ef=a,infspec=ev[0],max_neg=(neg.max() if len(neg) else None),
                min_pos=pos.min(),gauge_residual=gaugeres,neutral_leak=leak,
                low_bands=[float(x) for x in np.unique(np.round(ev[ev<4*a]/a,3))][:12])
def scalar_bottom(N,m):
    phi=2*np.pi*m/N; a=2*phi; best=1e9
    for k0 in 2*np.pi*np.arange(N)/N:
        # charge-e field: T_0 multiplies by e^{i(k0 - a x1)}, T_1 shifts x1
        H=np.zeros((N,N),complex)
        for x1 in range(N):
            H[x1,x1]=4-2*np.cos(k0-a*x1)
            H[x1,(x1+1)%N]-=1; H[(x1+1)%N,x1]-=1
        best=min(best,np.linalg.eigvalsh(H)[0])
    return dict(N=N,phi=phi,ef=a,bottom=best,ratio=best/a)
if __name__=="__main__":
    # f=0 normalisation check: N=8, m=0
    out={}
    r0=run(8,0); out['f0']={k:(float(v) if isinstance(v,(float,np.floating)) else v) for k,v in r0.items()}
    res=[]
    for N in [24,48,96]:
        r=run(N,1); res.append({k:(float(v) if isinstance(v,(float,np.floating)) else v) for k,v in r.items()})
        print(res[-1],flush=True)
    out['A_prime']=res
    out['scalar']=[scalar_bottom(N,1) for N in [24,48,96,192]]
    print(out['f0']); print(out['scalar'])
    json.dump(out,open(sys.argv[1] if len(sys.argv)>1 else '/tmp/s123/gap2d.json','w'),indent=1,default=float)
