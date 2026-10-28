import numpy as np, itertools as it, sys
def lam1(L): return 2*(1-np.cos(np.pi/L))
def grid_lap(L, n):
    pts=list(it.product(range(L),repeat=n)); idx={p:i for i,p in enumerate(pts)}; A=np.zeros((len(pts),)*2)
    for p in pts:
        for k in range(n):
            q=list(p); q[k]+=1; q=tuple(q)
            if q in idx: i,j=idx[p],idx[q]; A[i,i]+=1;A[j,j]+=1;A[i,j]-=1;A[j,i]-=1
    return A
def slab_min(L,d):  # min of K(f)/sum|f|^2, K = L^-d sum|grad f|^2 + L^-2d |sum f|^2, Neumann grid of dim d-1
    A=grid_lap(L,d-1); N=A.shape[0]
    K=L**-d*A + L**(-2*d)*np.ones((N,N))
    return np.linalg.eigvalsh(K)[0]
def eq2127_min(L, axial, cc=None):  # d=2, mu=1: min eig of LHS-RHS of (2.127) over B on bonds of B(c-),B(c+),corridor
    bonds={}
    def add(b):
        if b not in bonds: bonds[b]=len(bonds)
    for x0 in range(2*L):
        for x1 in range(L):
            for mu,(a,b) in enumerate([(1,0),(0,1)]):
                y=(x0+a,x1+b)
                if y[0]<2*L and y[1]<L and ((x0<L)==(y[0]<L) or mu==0): add(((x0,x1),mu))
    n=len(bonds); I=lambda x,mu: bonds[(x,mu)]
    blk=lambda b: 0 if (b[0][0]<L and (b[0][0]+(b[1]==0))<L) else (1 if b[0][0]>=L else 2)  # 0:c-,1:c+,2:corridor
    kind=np.array([blk(b) for b in bonds])
    LHS=np.zeros((n,n))
    for t in range(L-1):
        v=np.zeros(n); v[I((L-1,t),0)]+=1; v[I((L,t),1)]+=1; v[I((L-1,t+1),0)]-=1; v[I((L-1,t),1)]-=1
        LHS+=L**-2*np.outer(v,v)
    q=np.zeros(n)
    for x0 in range(L):
        for x1 in range(L):
            for s in range(L): q[I((x0+s,x1),0)]+=L**-3
    LHS+=np.outer(q,q)
    RHS=np.diag(np.where(kind==2,(L**-3/3 if cc is None else cc),0.)-np.where(kind<2,L**-2,0.))
    M=LHS-RHS
    if axial:
        keep=[i for b,i in bonds.items() if not (kind[i]<2 and (b[1]==0 or b[0][0]%L==0))]
        M=M[np.ix_(keep,keep)]
    return np.linalg.eigvalsh(M)[0]
if __name__=='__main__':
    print("L  lam1  1/L  1/(3L)  slab_d2/L^-3  slab_d3/L^-4  claimOK  eq2127_min(free) eq2127_min(axial)")
    for L in range(2,41):
        s2=slab_min(L,2)*L**3; s3=slab_min(L,3)*L**4 if L<=25 else float('nan')
        e=eq2127_min(L,False) if L<=40 else 0; ea=eq2127_min(L,True)
        print(f"{L:2d} {lam1(L):.5f} {1/L:.5f} {1/(3*L):.5f} {s2:.4f} {s3:.4f} {int(s2>=1-1e-12)} {e:+.3e} {ea:+.3e}")
