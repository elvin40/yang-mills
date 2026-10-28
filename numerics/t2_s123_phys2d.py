# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""S123: split the 2D charged operator K = 4H + D D^+ into the gauge part (ran D, should equal the
scalar magnetic Laplacian spectrum) and the physical part (ker D^+, operator 4H). Also checks F1
normalisation at phi = 0. Imports t2_s123_gap2d (read-only)."""
import numpy as np, json, sys
sys.path.insert(0,'numerics'); import t2_s123_gap2d as g
out={}
# F1 check at phi=0: charged spectrum vs |K^|^2 (two components per momentum)
N=8; phi,M,idx=g.build(N,0); err=0
ch=[i for i in range(N*6) if i%3!=2]
for k0 in 2*np.pi*np.arange(N)/N:
    A,D=M(k0); K=(A+D@D.conj().T)[np.ix_(ch,ch)]
    ev=np.sort(np.linalg.eigvalsh(K))
    ref=np.sort(np.repeat([4*np.sin(k0/2)**2+4*np.sin(np.pi*n/N)**2 for n in range(N)],4))
    err=max(err,np.abs(ev-ref).max())
out['F1_err']=err; print('F1 err',err)
res=[]
for N in [24,48,96]:
    phi,M,idx=g.build(N,1); a=2*phi
    ch=[i for i in range(N*6) if i%3!=2]; cs=[i for i in range(N*3) if i%3!=2]
    phys=[]; gauge=[]
    for k0 in 2*np.pi*np.arange(N)/N:
        A,D=M(k0); A=A[np.ix_(ch,ch)]; D=D[np.ix_(ch,cs)]
        # orthonormal bases of ran D and ker D^+
        u,s,vh=np.linalg.svd(D,full_matrices=True); r=(s>1e-9).sum()
        P=u[:,:r]; Q=u[:,r:]
        K=A+D@D.conj().T
        gauge.append(np.linalg.eigvalsh(P.conj().T@K@P)); phys.append(np.linalg.eigvalsh(Q.conj().T@A@Q))
        if k0==0: offd=np.abs(Q.conj().T@K@P).max()
    gauge=np.sort(np.concatenate(gauge)); phys=np.sort(np.concatenate(phys))
    r=dict(N=N,phi=phi,ef=a,gauge_min_over_ef=gauge[0]/a,phys_min_over_ef=phys[0]/a,
           phys_lowband_max_over_ef=phys[phys<0].max()/a,phys_firstpos_over_ef=phys[phys>0].min()/a,
           offdiag=offd)
    r={k:float(v) for k,v in r.items()}; res.append(r); print(r,flush=True)
out['split']=res
json.dump(out,open('numerics/t2_s123_phys2d.json','w'),indent=1)
