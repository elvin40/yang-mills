# l1 norm of the kernel row of D_1 G D_2^* (G = (-lattice Laplacian + 1/ell^2)^-1), i.e. its sup->sup operator norm,
# on a periodic d-dim lattice of side N >= 8*ell. Shows log growth in ell: the term-4 obstruction of SOURCES_R005_DD.
import numpy as np, sys
def row_l1(d, N, ell):
    k = 2*np.pi*np.fft.fftfreq(N)
    ks = np.meshgrid(*([k]*d), indexing='ij', sparse=True)
    lap = sum(2-2*np.cos(q) for q in ks)
    f1 = np.exp(1j*ks[0])-1; f2 = np.exp(1j*ks[1])-1
    sym = f1*np.conj(f2)/(lap+1.0/ell**2)
    K = np.fft.ifftn(sym).real
    return np.abs(K).sum()
for d, Ns in [(2, None), (4, None)]:
    ells = [2,4,8,16,32,64,128] if d == 2 else [1,2,3,4,6]
    for ell in ells:
        N = 8*ell if d == 2 else max(8, 8*ell)
        print(d, ell, N, round(row_l1(d, N, ell), 4), round(np.log(ell+1e-12), 3)); sys.stdout.flush()
