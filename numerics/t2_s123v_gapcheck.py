# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# S123 VERIFY extra check: 2D physical/gauge split at flux 2pi m/N; imports t2_s123_gap2d read-only; prints only.
import numpy as np, sys, time
sys.path.insert(0,'numerics'); import t2_s123_gap2d as g
for N,m in [(192,1),(100,3),(70,3)]:
    t=time.time(); phi,M,idx=g.build(N,m); a=2*phi
    ch=[i for i in range(N*6) if i%3!=2]; cs=[i for i in range(N*3) if i%3!=2]
    phys=[]; gauge=[]
    for k0 in 2*np.pi*np.arange(N)/N:
        A,D=M(k0); A=A[np.ix_(ch,ch)]; D=D[np.ix_(ch,cs)]
        u,s,vh=np.linalg.svd(D,full_matrices=True); r=(s>1e-9).sum()
        P=u[:,:r]; Q=u[:,r:]; K=A+D@D.conj().T
        gauge.append(np.linalg.eigvalsh(P.conj().T@K@P)); phys.append(np.linalg.eigvalsh(Q.conj().T@A@Q))
    gauge=np.sort(np.concatenate(gauge)); phys=np.sort(np.concatenate(phys))
    print(N,m,'ef=%.4f'%a,'gauge_min/ef=%.5f'%(gauge[0]/a),'phys_min/ef=%.5f'%(phys[0]/a),
          'phys_negmax/ef=%.5f'%(phys[phys<0].max()/a),'phys_firstpos/ef=%.4f'%(phys[phys>0].min()/a),
          'min|phys|/ef=%.4f'%(np.abs(phys).min()/a),'%.0fs'%(time.time()-t),flush=True)
