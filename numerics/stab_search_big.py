import sys, numpy as np
sys.path.insert(0,'.')
from inclined_stabilizer import *
for m in [29,37,41,45,49,50]:
    seen=set(); mats=orthogonal_matrices(m); n_inf=0
    for A in mats:
        if is_signed_perm_scalar(A,m): continue
        if finite_order(A/np.sqrt(m)) is not None: continue
        n_inf+=1
        S=stabilizer(A,m); n=n_invariant_forms(S)
        key=(len(S),round(n,6),sum(1 for g in S if round(np.linalg.det(g))==-1))
        if key in seen: continue
        seen.add(key); print(f"m={m}: |Stab|={len(S):3d} det-1={key[2]:3d} inv.forms={n:.3f} rows0,1={A[0].tolist()},{A[1].tolist()}",flush=True)
    print(f"m={m}: {len(mats)} orthogonal matrices, {n_inf} of infinite order (non-scalar-signed-perm)",flush=True)
