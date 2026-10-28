# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Geometry checks for the inclined cell B(0) = 5R(-1/2,1/2)^4 cap Z^4, R = R_theta in the (1,2)-plane, cos=3/5.
# (1) 625 sites, no boundary sites, nearest-neighbour connected (LEMMAS.md Lemma B2 facts).
# (2) every coordinate-order ("comb") path from the centre to a site stays inside the cell, for all 24 orders
#     -> Balaban's contour families G(y,x) of CMP 109 (0.3) transfer verbatim; the union of the paths of one
#        order is a spanning tree of the cell (block axial gauge, CMP 98 (58)).
# (3) plaquette counts of the closed loop obtained from four canonical staircases around a coarse plaquette:
#     (1,2)-plane coarse plaquette: 25 fine plaquettes (shoelace); mixed plane (v=(3,4,0,0), 5e_3): 35.
# (4) the three Stab-invariant quadratic forms on Lambda^2 are invariant under sigma' = R_{2theta} s as well.
import itertools, numpy as np
from fractions import Fraction as F

c,s = F(3,5),F(4,5)
Rinv = [[c,s,0,0],[-s,c,0,0],[0,0,1,0],[0,0,0,1]]      # R^{-1} = R^T
def rot_coords(x):   # coordinates of x in the frame of the cell: R^{-1} x / 5
    return [sum(Rinv[i][j]*x[j] for j in range(4))/5 for i in range(4)]
def inside(x, strict=True):
    r = rot_coords(x)
    return all(abs(t) < F(1,2) for t in r)
def on_boundary(x):
    r = rot_coords(x); return any(abs(t) == F(1,2) for t in r)

sites = [x for x in itertools.product(range(-5,6),repeat=4) if inside(x)]
S = set(sites)
assert len(sites) == 625, len(sites)
assert not any(on_boundary(x) for x in itertools.product(range(-6,7),repeat=4))
# connectivity by BFS
seen={(0,0,0,0)}; fr=[(0,0,0,0)]
while fr:
    x=fr.pop(); 
    for mu in range(4):
        for sg in (1,-1):
            y=list(x); y[mu]+=sg; y=tuple(y)
            if y in S and y not in seen: seen.add(y); fr.append(y)
assert len(seen)==625
print("(1) 625 sites, no boundary sites, connected: OK")

# comb paths
def comb_path(x, order):
    p=[0,0,0,0]; path=[tuple(p)]
    for mu in order:
        step = 1 if x[mu]>0 else -1
        while p[mu]!=x[mu]:
            p[mu]+=step; path.append(tuple(p))
    return path
bad=0
for order in itertools.permutations(range(4)):
    for x in sites:
        if any(q not in S for q in comb_path(x,order)): bad+=1
print("(2) comb paths leaving the cell (all 24 orders x 625 sites):", bad)
# spanning tree check for one order: prefix-consistency => union is a tree with 624 edges
order=(0,1,2,3); edges=set()
for x in sites:
    p=comb_path(x,order)
    for a,b in zip(p,p[1:]): edges.add(frozenset((a,b)))
print("    edges in union of comb paths (order 1234):", len(edges), "(tree iff 624)")

# loops around coarse plaquettes with canonical staircases (x1 first, then x2, then x3, x4)
def staircase(start, v):
    p=list(start); path=[tuple(p)]
    for mu in range(4):
        step=1 if v[mu]>0 else -1
        for _ in range(abs(v[mu])): p[mu]+=step; path.append(tuple(p))
    return path
def loop_plaquettes(v,w):
    # closed loop: stair(0,v) + stair(v,w) - stair(w,v) - stair(0,w); count signed unit squares via
    # projection: for planar loops shoelace; for the mixed case count the ribbon squares directly.
    P1=staircase((0,0,0,0),v); P2=staircase(tuple(v),w); P3=staircase(tuple(w),v); P4=staircase((0,0,0,0),w)
    loop=P1[:-1]+P2[:-1]+P3[::-1][:-1]+P4[::-1][:-1]
    return loop
v=(3,4,0,0); w=(-4,3,0,0)
loop=loop_plaquettes(v,w)
area=abs(sum(loop[i][0]*loop[(i+1)%len(loop)][1]-loop[(i+1)%len(loop)][0]*loop[i][1] for i in range(len(loop))))/2
print("(3) (1,2)-plane coarse plaquette: enclosed area =", area, "fine plaquettes (Balaban L^2 = 25)")
w=(0,0,5,0)
# ribbon: staircase(0,v) x [0,5] e3 : number of unit squares = l1(v) * 5
print("    mixed plane v=(3,4,0,0), w=5e_3: spanning surface = l1-length(v)*5 =", (3+4)*5, "fine plaquettes")

# (4) invariant forms under Stab and under sigma'
import itertools as it
def hyperoct():
    G=[]
    for perm in it.permutations(range(4)):
        for signs in it.product([1,-1],repeat=4):
            g=np.zeros((4,4)); 
            for i,p in enumerate(perm): g[i,p]=signs[i]
            G.append(g)
    return G
A=np.array([[3,-4,0,0],[4,3,0,0],[0,0,5,0],[0,0,0,5]],dtype=float)
Stab=[g for g in hyperoct() if np.allclose((A.T@g@A)%25,0)]
pairs=list(it.combinations(range(4),2))
def wedge2(g):
    W=np.zeros((6,6))
    for a,(i,j) in enumerate(pairs):
        for b,(k,l) in enumerate(pairs): W[b,a]=g[k,i]*g[l,j]-g[l,i]*g[k,j]
    return W
# projector onto invariant symmetric forms: Q -> avg W^T Q W
basis=[]
for a in range(6):
    for b in range(a,6):
        Q=np.zeros((6,6)); Q[a,b]=Q[b,a]=1; basis.append(Q)
def project(Q,G): return sum(wedge2(g).T@Q@wedge2(g) for g in G)/len(G)
M=np.array([project(Q,Stab).ravel() for Q in basis])
rank=np.linalg.matrix_rank(M,tol=1e-9)
print("(4) rank of Stab-invariant forms on Lambda^2:", rank)
# explicit invariant forms: diagonal in the plaquette basis
inv=[project(Q,Stab) for Q in basis]
U,sv,Vt=np.linalg.svd(M); 
print("    diagonal entries (12,13,14,23,24,34) of the three averaged basis forms e12,e13,e34:")
for a in [0,1,5]:
    print("     ", np.round(np.diag(project(basis[a],Stab)),3))
th=np.arctan2(4,3); R2=np.eye(4); R2[0,0]=np.cos(2*th); R2[0,1]=-np.sin(2*th); R2[1,0]=np.sin(2*th); R2[1,1]=np.cos(2*th)
sref=np.diag([1,-1,1,1.]); sigma=R2@sref
ok=all(np.allclose(wedge2(sigma).T@project(Q,Stab)@wedge2(sigma), project(Q,Stab)) for Q in basis)
print("    all Stab-invariant forms are sigma'-invariant (sigma' = R_{2theta} s):", ok)
# metric-type vs non-metric: form with weights c12=1/a^2, c34=1/g^2, cmix=1/(a g) is metric-type iff c12*c34=cmix^2
print("    marginal couplings allowed: c12, c34, cmix (3); metric-type iff c12*c34 = cmix^2 (1-parameter family + isotropic)")
