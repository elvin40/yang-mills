# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""GAPRIME2 VERIFY. Independent numerics, prints only.
A: own finite-difference Wilson Hessian in the OTHER Landau gauge (phases on 1-links, U_{x,1} = e^{i phi x0 s3}),
   Bloch in x1, x0-period q; physical part via H' + M D D^+ (M large), no SVD.  Compared with own Lemma 1.1 code.
B: sparse Lemma 1.1 operator (own code), large q, alpha down to ~2.5e-5 (the proved range), shift-invert near 0.
C: ratio min|spec|/|alpha| for A' and for H'|ker D'^+ over alpha in (0, pi], q = 499."""
import numpy as np, scipy.sparse as sp, scipy.sparse.linalg as sla, sys, time
s=[np.array([[0,1],[1,0]],complex),np.array([[0,-1j],[1j,0]]),np.diag([1.,-1]).astype(complex)]
def ex(v):
    n=np.linalg.norm(v)
    return np.eye(2) if n==0 else np.cos(n/2)*np.eye(2)+1j*np.sin(n/2)*sum(v[a]*s[a] for a in range(3))/n
def U3(t): return np.diag([np.exp(1j*t),np.exp(-1j*t)])
def Sp(b,ths):  # b: 8 reals (charged comps 1,2 of 4 links)
    U=[ex(np.array([b[2*i],b[2*i+1],0.]))@U3(ths[i]) for i in range(4)]
    return 1-0.5*np.real(np.trace(U[0]@U[1]@np.linalg.inv(U[2])@np.linalg.inv(U[3])))
def locM(ths,h=1e-4):  # complex 4x4 form of the charged Hessian: Hess = realification of M
    H=np.zeros((8,8))
    for i in range(8):
        for j in range(i,8):
            e=np.zeros(8); e[i]=h; g=np.zeros(8); g[j]=h
            H[i,j]=H[j,i]=(Sp(e+g,ths)-Sp(e-g,ths)-Sp(-e+g,ths)+Sp(-e-g,ths))/(4*h*h)
    xx=H[0::2,0::2]; yy=H[1::2,1::2]; yx=H[1::2,0::2]; xy=H[0::2,1::2]
    return xx+1j*yx, max(abs(xx-yy).max(),abs(xy+yx).max())
def fd_blocks(p,q):
    phi=np.pi*p/q; Ms=[]; asym=0
    for x0 in range(q):
        M,a=locM([0.,phi*(x0+1),0.,phi*x0]); Ms.append(M); asym=max(asym,a)
    return phi,Ms,asym
def fd_op(phi,Ms,q,k0,k1):  # links (x0,mu) -> index 2*x0+mu ; plaquette links 1..4
    n=2*q; A=np.zeros((n,n),complex); al=2*phi
    for x0 in range(q):
        w=np.exp(1j*k0) if x0==q-1 else 1.
        idx=[2*x0,2*((x0+1)%q)+1,2*x0,2*x0+1]; ph=np.array([1,w,np.exp(1j*k1),1])
        for i in range(4):
            for j in range(4): A[idx[i],idx[j]]+=4*np.conj(ph[i])*Ms[x0][i,j]*ph[j]
    D=np.zeros((n,q),complex)
    for x0 in range(q):
        D[2*x0,x0]+=1; D[2*x0,(x0+1)%q]-=(np.exp(1j*k0) if x0==q-1 else 1.)
        D[2*x0+1,x0]+=1-np.exp(-1j*al*x0)*np.exp(1j*k1)
    return A,D   # A = 4 Hess (charged, complex), D = charged gauge gradient
def lemma11(n,al,k0,k1,sparse=False):  # own code of Lemma 1.1, Landau gauge T0 phase e^{i al x1}
    L=sp if sparse else None
    I=sp.identity(n,complex,format='csr'); T0=sp.diags(np.exp(1j*(k0+al*np.arange(n))))
    r=np.arange(n); v=np.ones(n,complex); v[-1]=np.exp(1j*k1); T1=sp.csr_matrix((v,(r,(r+1)%n)),shape=(n,n))
    e=np.exp(-1j*al); Z=sp.csr_matrix((n,n))
    u=[sp.hstack([I,Z]),sp.hstack([Z,T0]),sp.hstack([-e*T1,Z]),sp.hstack([Z,-e*I])]
    c=u[0]+u[1]+u[2]+u[3]; K=0
    for i in range(4):
        for j in range(i+1,4):
            X=u[i].conj().T@u[j]; K=K+(X-X.conj().T)/2j
    Dv=sp.vstack([I-T0,I-T1]).tocsr()
    H=np.cos(al/2)*(c.conj().T@c)-2*np.sin(al/2)*K
    return (H.tocsr(),Dv) if sparse else (H.toarray(),Dv.toarray())
def phys_min(H,D,M=40.):
    ev=np.linalg.eigvalsh(H+M*D@D.conj().T); return ev
if __name__=="__main__":
    part=sys.argv[1]
    if part=='A':
        for p,q in [(0,16),(1,24),(1,96),(5,233),(13,377),(1,500),(7,499)]:
            t=time.time(); phi,Ms,asym=fd_blocks(p,q); al=2*phi; out=[]
            for k0,k1 in [(0.,0.),(np.pi,0.3),(1.1,np.pi)]:
                A,D=fd_op(phi,Ms,q,k0,k1); hd=abs(A@D).max()
                evA=np.linalg.eigvalsh(A+D@D.conj().T); evP=phys_min(A,D)
                H2,D2=lemma11(q,al,k0,k1)   # same flux, Landau gauge, Bloch point (k0,k1) not mapped: compare band extremes only
                evA2=np.linalg.eigvalsh(H2+D2.T.conj()@np.eye(2*q)[:0].T@np.zeros((0,0))) if False else np.linalg.eigvalsh(H2+D2@D2.conj().T)
                out.append((hd,evA,evP,evA2))
            if p==0:
                k=np.array([0.,0.]); print('flat F1: FD A eig (k=0)',np.round(out[0][1][:4],8),'asym',asym); continue
            mA=min(abs(o[1]).min() for o in out)/al; mA2=min(abs(o[3]).min() for o in out)/al
            negP=max(o[2][o[2]<0].max() for o in out)/al; posP=min(o[2][o[2]>0].min() for o in out)/al
            print(f'p/q={p}/{q} al={al:.5f} FD: |HD|max={max(o[0] for o in out):.1e} asym={asym:.1e} min|A|/al={mA:.6f} '
                  f'(Lemma1.1 code {mA2:.6f}) phys top-neg/al={negP:.6f} first-pos/al={posP:.5f}  {time.time()-t:.1f}s',flush=True)
    if part=='B':
        for p,q in [(1,6000),(3,188497),(2,502655)]:
            t=time.time(); al=2*np.pi*p/q; H,D=lemma11(q,al,0.3,0.7,sparse=True)
            res=abs(((H)@D)).max(); Mtx=(H+40*D@D.conj().T).tocsc()
            ev=sla.eigsh(Mtx,k=6,sigma=0,which='LM',return_eigenvectors=False); evA=sla.eigsh((H+D@D.conj().T).tocsc(),k=4,sigma=0,which='LM',return_eigenvectors=False)
            print(f'p/q={p}/{q} al={al:.3e} |H\'D|={res:.1e} phys eig near 0 /al={np.sort(ev/al)} A\' eig near 0 /al={np.sort(evA/al)} {time.time()-t:.0f}s',flush=True)
    if part=='C':
        q=499
        for p in list(range(1,10))+list(range(10,60,4))+list(range(60,250,12)):
            al=2*np.pi*p/q; mP=np.inf; mA=np.inf; Lb=np.inf
            for k0 in (0.,np.pi):
                for k1 in (0.,np.pi):
                    H,D=lemma11(q,al,k0,k1); DD=D@D.conj().T
                    eA=np.linalg.eigvalsh(H+DD); eP=np.linalg.eigvalsh(H+40*DD); eL=np.linalg.eigvalsh(D.conj().T@D)
                    mA=min(mA,abs(eA).min()); mP=min(mP,abs(eP).min()); Lb=min(Lb,eL.min())
            ok='' if mP<40*Lb else ' WARN gauge part not separated'
            print(f'p={p:3d} al={al:.4f} min|A\'|/al={mA/al:.4f} min|phys|/al={mP/al:.4f} infL/al={Lb/al:.4f}{ok}',flush=True)
    if part=='D':  # Bloch-grid robustness of part C at large alpha (random Bloch points)
        q=499; rng=np.random.default_rng(0)
        for p in (132,240):
            al=2*np.pi*p/q; mA=mP=np.inf
            for k0,k1 in rng.uniform(0,2*np.pi,(12,2)):
                H,D=lemma11(q,al,k0,k1); DD=D@D.conj().T
                mA=min(mA,abs(np.linalg.eigvalsh(H+DD)).min()); mP=min(mP,abs(np.linalg.eigvalsh(H+40*DD)).min())
            print(f'p={p} al={al:.4f} 12 random Bloch pts: min|A\'|/al={mA/al:.4f} min|phys|/al={mP/al:.4f}',flush=True)
