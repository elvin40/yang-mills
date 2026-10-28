import numpy as np
from scipy.ndimage import binary_dilation, binary_erosion
q=16; n=8
Zc=np.zeros((n,n),bool); Zc[2:5,2:4]=True; Zc[2:4,4:6]=True  # L-shape of M-cubes (convex+concave corners)
for name,st in [('linf',np.ones((3,3),bool)),('face',np.array([[0,1,0],[1,1,1],[0,1,0]],bool))]:
    Zt=binary_dilation(Zc,st)                       # tilde on M-cubes
    Z=np.kron(Zc,np.ones((q,q),bool)); ZT=np.kron(Zt,np.ones((q,q),bool))  # M_1 grid
    X0=binary_erosion(ZT,st,iterations=5,border_value=0)
    ok=(binary_dilation(X0,st,iterations=5)==ZT).all()
    # linf distance (in M_1 units, cube-to-cube index gap) from X0^c cubes to Z cubes
    zi=np.argwhere(Z); ci=np.argwhere(~X0)
    d=min(np.abs(ci[:,None,:]-zi[None,:,:]).max(-1).min(1)) if len(ci) else None
    # how many Z-cubes are NOT in X0 (must be covered by some non-X0 domain at dist 0)
    print(name,'X0~5==Z~:',ok,'min linf index gap X0^c to Z:',d,'Z cubes outside X0:',int((Z&~X0).sum()))
