# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Stabilizer of a rotated sublattice A Z^4 (A A^T = m I) inside the hyperoctahedral group B_4,
# and the number of independent B_4-stabilizer-invariant quadratic forms on Lambda^2 R^4
# (= number of independent marginal gauge couplings sum c_{mu nu rho sigma} tr F_{mu nu} F_{rho sigma}
#    allowed by the symmetry after an inclined first step).
import itertools, numpy as np
from fractions import Fraction

def hyperoctahedral():
    G=[]
    for perm in itertools.permutations(range(4)):
        for signs in itertools.product([1,-1],repeat=4):
            g=np.zeros((4,4),dtype=int)
            for i,p in enumerate(perm): g[i,p]=signs[i]
            G.append(g)
    return G
B4=hyperoctahedral()
assert len(B4)==384

def wedge2(g):
    # action on Lambda^2 R^4 with basis e_i^e_j, i<j
    pairs=list(itertools.combinations(range(4),2))
    W=np.zeros((6,6))
    for a,(i,j) in enumerate(pairs):
        for b,(k,l) in enumerate(pairs):
            W[b,a]=g[k,i]*g[l,j]-g[l,i]*g[k,j]
    return W

def stabilizer(A,m):
    # g stabilizes A Z^4 iff A^{-1} g A is integral; A^{-1} = A^T/m
    S=[]
    for g in B4:
        M=A.T@g@A
        if np.all(M%m==0): S.append(g)
    return S

def n_invariant_forms(S):
    # dim of S-invariant symmetric bilinear forms on Lambda^2: average of (chi(g)^2+chi(g^2))/2
    tot=0.0
    for g in S:
        W=wedge2(g); tot+=(np.trace(W)**2+np.trace(W@W))/2
    return tot/len(S)

def finite_order(R,nmax=24):
    P=np.eye(4)
    for n in range(1,nmax+1):
        P=P@R
        if np.allclose(P,np.eye(4)): return n
    return None

def vectors_norm(m):
    r=int(np.sqrt(m))
    out=[]
    for v in itertools.product(range(-r,r+1),repeat=4):
        if sum(x*x for x in v)==m: out.append(v)
    return out

def orthogonal_matrices(m):
    V=vectors_norm(m); res=[]
    def rec(rows):
        if len(rows)==4:
            res.append(np.array(rows)); return
        for v in V:
            if all(np.dot(v,r)==0 for r in rows): rec(rows+[v])
    rec([])
    return res

def is_signed_perm_scalar(A,m):
    r=int(round(np.sqrt(m)))
    return r*r==m and all(sorted(np.abs(row))==[0,0,0,r] for row in A)

if __name__=="__main__":
    # named candidates first
    R=np.array([[3,-4,0,0],[4,3,0,0],[0,0,5,0],[0,0,0,5]])          # planar Pythagorean, LEMMAS.md Lemma B
    D=np.array([[3,-4,0,0],[4,3,0,0],[0,0,3,-4],[0,0,4,3]])         # double rotation theta,theta
    Dm=np.array([[3,-4,0,0],[4,3,0,0],[0,0,3,4],[0,0,-4,3]])        # double rotation theta,-theta
    Q=np.array([[2,-1,0,0],[1,2,0,0],[0,0,2,-1],[0,0,1,2]])         # left mult by quaternion 2+i (m=5)
    for name,A,m in [("planar 5R_theta",R,25),("double (theta,theta)",D,25),("double (theta,-theta)",Dm,25),("quaternion 2+i",Q,5)]:
        S=stabilizer(A,m)
        print(f"{name}: |Stab|={len(S)}, det=-1 elements={sum(1 for g in S if round(np.linalg.det(g))==-1)}, "
              f"invariant quadratic forms on Lambda^2 = {n_invariant_forms(S):.3f}, order of R = {finite_order(A/np.sqrt(m))}")
    # exhaustive search over all integer A with A A^T = m I, m in a few values
    for m in [5,9,13,17,25]:
        best=None
        mats=orthogonal_matrices(m)
        seen=set()
        for A in mats:
            if is_signed_perm_scalar(A,m): continue
            Rm=A/np.sqrt(m)
            if finite_order(Rm) is not None: continue   # rational angle: useless for density
            S=stabilizer(A,m); n=n_invariant_forms(S)
            key=(len(S),round(n,6),sum(1 for g in S if round(np.linalg.det(g))==-1))
            if key in seen: continue
            seen.add(key)
            print(f"m={m}: |Stab|={len(S):3d} det-1={key[2]:3d} inv.forms={n:.3f}  example row0={A[0].tolist()} row1={A[1].tolist()}")
        print(f"m={m}: {len(mats)} orthogonal matrices total")
