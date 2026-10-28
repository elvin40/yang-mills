# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# independent N->inf Feynman constant at p=(pi..pi): T = sum_l |D_mu|^2 prod_nu |D_nu|^2 / |k|^2, k = pi(2l+1), |D|^2 = 4/k^2
import numpy as np, itertools
for d, M in ((2, 400), (3, 120), (4, 40)):
    k = np.pi * (2 * np.arange(-M, M) + 1); a = 4 / k**2
    if d == 2:
        A1, A2 = np.meshgrid(k, k, indexing='ij'); P = (4/A1**2)*(4/A2**2); T = np.sum((4/A1**2)*P/(A1**2+A2**2))
    else:
        grids = np.meshgrid(*([k]*d), indexing='ij', sparse=True)
        P = 1
        for g in grids: P = P*(4/g**2); K2 = sum(g**2 for g in grids); T = np.sum((4/grids[0]**2)*P/K2)
    print(d, M, 1/T)
# finite N check at p=pi, N=13, d=4 against script value 185.6429
def KF(N, d):
    p = np.pi; q = (p + 2*np.pi*np.arange(N))/N
    D = np.array([np.mean(np.exp(1j*qq*np.arange(N))) for qq in q]); e = N*(np.exp(1j*q)-1)
    a = np.abs(D)**2; e2 = np.abs(e)**2
    T = 0.0
    for l in itertools.product(range(N), repeat=d):
        l = list(l); T += a[l[0]]*np.prod(a[l])/sum(e2[l])
    return 1/T
print('N=13 d=4', KF(13, 4), 'N=27 d=2', KF(27, 2))
