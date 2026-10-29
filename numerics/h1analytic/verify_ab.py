# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""Independent checks of H1_ANALYTIC lemmas (task A) and majorant B_L >= rho_1^2 (task B). Verifier code, own formulas."""
import sys, os, itertools, time, numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
import h2_scan as h2
from h1cert_rho1 import prof, pieces, rho1, Mof
from math import comb
sinc = lambda x: np.sinc(np.asarray(x, float)/np.pi)

def alpha(k, L):  # centred Dirichlet average, real
    h = (L-1)//2; return np.real(sum(np.exp(1j*k*t) for t in range(-h, h+1)))/L

def E0_g(K, L):
    lv = np.indices((L,)*4).reshape(4, -1).T; k = (K[None]+2*np.pi*lv)/L
    al = alpha(k, L); A = al.prod(1); SL = sum(np.exp(1j*k*t) for t in range(L))
    kh = np.exp(1j*k)-1; gb = np.zeros_like(kh)
    for nu in range(4):
        o = al[:, [r for r in range(4) if r != nu]]
        e = [np.ones(len(k)), o.sum(1), o[:,0]*o[:,1]+o[:,0]*o[:,2]+o[:,1]*o[:,2], o.prod(1)]
        Phi = sum(e[r]/comb(3, r) for r in range(4))/4
        gb[:, nu] = np.where(np.abs(kh[:, nu]) < 1e-14, 0, Phi*(al[:, nu]-1)/np.where(np.abs(kh[:, nu]) < 1e-14, 1, kh[:, nu]))
    return k, al, SL*A[:, None], gb          # E0 diagonal entries (L^4,4), gamma-bar (L^4,4)

def dsum(K, N, R=None, n=None):  # Prop. A symbol by direct sum. N finite: window of N; N=None: M=inf, n = given or |n|<=R
    K = np.asarray(K, float)
    if n is None: n = np.arange(N)-(N-1)//2 if N else np.arange(-R, R+1)
    q = K[:, None]+2*np.pi*n[None]; qt = 2*N*np.sin(q/(2*N)) if N else q
    with np.errstate(divide='ignore', invalid='ignore'):
        s2 = np.where(np.abs(qt) < 1e-300, 1.0, np.sin(K[:, None]/2)**2/(qt/2)**2)
    out = np.zeros(4); q2 = qt**2
    for i0 in range(len(n)):
        W = s2[0, i0]*np.einsum('b,c,d->bcd', *s2[1:]); Q2 = q2[0, i0]+q2[1][:, None, None]+q2[2][None, :, None]+q2[3][None, None, :]
        with np.errstate(divide='ignore', invalid='ignore'):
            base = np.where(Q2 < 1e-300, 0, W/Q2)
        out[0] += s2[0, i0]*base.sum()
        for mu in (1, 2, 3): out[mu] += (base*np.expand_dims(s2[mu], [r for r in range(3) if r != mu-1])).sum()
    return out

def Tmat(L, K, E, d):
    k = (K[None]+2*np.pi*np.indices((L,)*4).reshape(4, -1).T)/L; s = L**-2.0
    kh = np.exp(1j*k)-1; a2 = (abs(kh)**2).sum(1); n = kh/np.sqrt(a2)[:, None]
    P = np.eye(4)[None]-n[:, :, None]*n.conj()[:, None, :]; PDP = P@(d[:, :, None]*P)
    T = s**2*np.einsum('lab,lbc,ldc->ad', E, PDP, E.conj())
    T2 = s**2*np.einsum('lab,lbc,lcd,led->ae', E, PDP, PDP, E.conj())
    return T, T2, s**2*(1/a2).sum(), PDP

def rho_split(L, K, E, d):  # (1.1)
    T, T2, sig, _ = Tmat(L, K, E, d); Kh = np.exp(1j*K)-1; nK = Kh/np.linalg.norm(Kh); PK = np.eye(4)-np.outer(nK, nK.conj())
    Z = np.linalg.pinv(PK@T@PK, rcond=1e-12, hermitian=True); c = Kh.conj()@(np.eye(4)-T@Z)
    G = Z@T2@Z+np.outer(c.conj(), c)/(sig*np.linalg.norm(Kh)**4)
    return np.linalg.eigvalsh(G)[-1]/L**2, T, PK

def B_sharp(K, L, h=6, Pg=True):  # (5.3) with F from truncated sum, |P_l g_l| (or |g_l| if Pg False)
    K = np.abs(np.asarray(K, float)); gam = sinc(np.pi/(2*L))**-2
    dl = dsum(K, None, R=h).min(); Bt = gam/((K@K)*dl)
    k, al, _, gb = E0_g(K, L); a2 = al**2; kh = np.exp(1j*k)-1; kh2 = (abs(kh)**2).sum(1)
    Kh2 = (4*np.sin(K/2)**2).sum(); Pa2 = a2.prod(1)
    V = L**-4*np.sum(Pa2/kh2*np.abs(L*L*a2-Kh2/kh2[:, None]).max(1))
    g = gb.conj(); n = kh/np.sqrt(kh2)[:, None]; gP = g-n*(n.conj()*g).sum(1)[:, None]
    U = L**-3*np.sum(np.sqrt(Pa2)*np.sqrt(a2.max(1))/kh2*np.linalg.norm(gP if Pg else g, axis=1))
    tau = (V+np.sqrt(Kh2)*U)/dl; G = (1+tau)**2/(Kh2*L**-2*np.sum(1/kh2))
    return Bt+G, Bt, G
