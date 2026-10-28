import numpy as np, sys
def run(L, n):  # d=2 torus of n x n blocks, axial gauge per block; min of (sum_c|Q1B|^2 + sum_p|dB|^2)/|B|^2  (L^{d-2}=1)
    S=n*L; idx=lambda x0,x1,mu: ((x0%S)*S+(x1%S))*2+mu; N=2*S*S
    rows=[]
    for x0 in range(S):
        for x1 in range(S):
            v=np.zeros(N); v[idx(x0,x1,0)]+=1; v[idx(x0+1,x1,1)]+=1; v[idx(x0,x1+1,0)]-=1; v[idx(x0,x1,1)]-=1; rows.append(v)
    for y0 in range(0,S,L):
        for y1 in range(0,S,L):
            for mu in (0,1):
                v=np.zeros(N)
                for a in range(L):
                    for b in range(L):
                        for s in range(L):
                            x=[y0+a,y1+b]; x[mu]+=s; v[idx(x[0],x[1],mu)]+=L**-3
                rows.append(v)
    A=np.array(rows); F=A.T@A
    keep=[]
    for x0 in range(S):
        for x1 in range(S):
            for mu in (0,1):
                inblk0 = (x0%L)!=L-1 if mu==0 else True   # bond stays in block
                inblk1 = (x1%L)!=L-1 if mu==1 else True
                inblock = inblk0 and inblk1
                tree = inblock and (mu==0 or x0%L==0)
                if not tree: keep.append(idx(x0,x1,mu))
    F=F[np.ix_(keep,keep)]
    return np.linalg.eigvalsh(F)[0]
for L in map(int,sys.argv[2:]):
    n=int(sys.argv[1]); g=run(L,n); m=min(2*(1-np.cos(np.pi/L)),1/L)
    print(f"L={L} n={n} gamma_num/L^-3={g*L**3:.4f}  printed (1/48)={1/48:.4f}  author m_L*L/48={m*L/48:.4f}")
