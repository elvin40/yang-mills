"""Per-level one-loop increments beta_{j+1}(0) by the exact Gaussian recursion on the level-j data (U3 Thm 4.1 / Lemma 5.0).

Level-j data = translation-invariant kernels on the level-j lattice (unit spacing), stored as symbols on an N^4 grid
(equivalently real-space kernels on the centered N^4 torus; off-grid momenta by the kernel sum = trigonometric interpolation):
  D0(q) : level-j quadratic form (Hessian of the level-j tree action at the trivial background), n x n with n = 4*ncolors
  Tp(q) : first-order background vertex, transfer q -> q+p    (real space: M'_+(x,y) = e^{i p x_0} t_+(x-y))
  Tm(q) : first-order vertex, transfer q -> q-p               (M'_- = conj(M'_+), so Tm(q) = conj(Tp(-q)))
  D2(q) : zero-transfer part of the second-order vertex       (M(a) = M0 + a (M'_+ + M'_-) + a^2/2 (M''_0 + ...))
Level j+1 data = one-step Schur complement S = -(Bord^{-1})_{22} per coarse momentum, Bord = [[D_j + D D^T, Qt^T],[Qt, 0]],
expanded to second order in the background amplitude a by the chain rule (per-momentum matrices, momentum transfer +-p).
Background at level j: link field Re(v_j e^{i p_j X_0}) (complex polarization v_j), p_j = L^j p_0, v_{j+1} = exact linear average.
beta_{j+1}(0) = 4 w_j / (L^{4(j+1)} (1 - cos p_0)),  w_j = per-cell d^2/da^2 [log det G - 1/2 log det Bord] at level j.
"""
import sys, os, json, time, itertools, shutil
import numpy as np
import scipy.sparse as sp
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from ym_momentum import Step

def wave_fields(step, p, v):
    """A_c = Re(v_mu e^{ip x_0}), A_s = Im(...) on the links of the step lattice."""
    z = v[step.link_mu] * np.exp(1j * p * step.link_x[:, 0])
    return z.real.copy(), z.imag.copy()

def onestep_kernels(step, p, v):
    """One-step kernels (cell basis, as ym_momentum.Step.build) WITHOUT the Hessian: B* = [[D D^T, Qt^T],[Qt, 0]], G* = D^T D.
    Also returns the next-level background polarization v' (exact linear average of the sigma_3 wave)."""
    lat = step.lat
    Ac, As = wave_fields(step, p, v)
    phX = np.exp(-1j * p * (lat.h + lat.L * step.X[0]))
    parts = {}
    for nm, A in (("c", Ac), ("s", As)):
        D0, D1, D2 = step.gauge_grad(A)
        Q0, Q1, Q2 = step.averaging(A)
        K0 = D0 @ D0.T; K1 = D1 @ D0.T + D0 @ D1.T; K2 = D2 @ D0.T + 2 * D1 @ D1.T + D0 @ D2.T
        G0 = D0.T @ D0; G1 = D1.T @ D0 + D0.T @ D1; G2 = D2.T @ D0 + 2 * D1.T @ D1 + D0.T @ D2
        parts[nm] = dict(K=(K0, K1, K2), Q=(Q0, Q1, Q2), G=(G0, G1, G2))
    def bord_kernel(order, combine):
        K = combine(parts["c"]["K"][order], parts["s"]["K"][order]); Q = combine(parts["c"]["Q"][order], parts["s"]["Q"][order])
        kk = step.extract(K, "link", "link"); kq = step.extract(Q.T.tocsr(), "link", "bond"); qk = step.extract(Q, "bond", "link")
        out = {}
        for z in set(kk) | set(kq) | set(qk):
            out[z] = sp.bmat([[kk.get(z, sp.csr_matrix((step.nK, step.nK))), kq.get(z, sp.csr_matrix((step.nK, 12)))],
                              [qk.get(z, sp.csr_matrix((12, step.nK))), None]], format="csr")
        return out
    def ghost_kernel(order, combine):
        return step.extract(combine(parts["c"]["G"][order], parts["s"]["G"][order]), "site", "site")
    ker = {"B0": bord_kernel(0, lambda c, s: c), "Bp": bord_kernel(1, lambda c, s: 0.5 * phX * (c + 1j * s)),
           "B2": bord_kernel(2, lambda c, s: 0.5 * (c + s)), "G0": ghost_kernel(0, lambda c, s: c),
           "Gp": ghost_kernel(1, lambda c, s: 0.5 * phX * (c + 1j * s)), "G2": ghost_kernel(2, lambda c, s: 0.5 * (c + s))}
    mb = np.concatenate([step.color_mask("link"), step.color_mask("bond")]); mg = step.color_mask("site")
    for key in ker:
        m = mb if key[0] == "B" else mg
        ker[key] = {z: ker[key][z][m][:, m] for z in ker[key]}
    # next-level background: V = Q0 (A_c + i A_s) in colour 2, read off at the extraction cell X
    Q0 = parts["c"]["Q"][0]
    Afull = np.zeros(3 * lat.nlinks, complex); Afull[2::3] = Ac + 1j * As
    V = Q0 @ Afull
    cX = lat.cpos(np.array(step.X))
    vnew = V[3 * (4 * cX + np.arange(4)) + 2] * np.exp(-1j * p * lat.L * step.X[0])
    return ker, vnew

class Data:
    """Level data on the centered N^4 torus: ker[key] (N^4, n, n) in fft order; eval = kernel sum at arbitrary momenta."""
    def __init__(self, N, n):
        self.N, self.n = N, n
        r = np.arange(N); r = np.where(r < N // 2, r, r - N)
        self.x = np.array(list(itertools.product(r, repeat=4)), float)
        self.ker = {}
    def from_symbols(self, key, S):
        """S (N^4, n, n): symbol values at K_m = 2 pi m / N, m in ndindex order."""
        N, n = self.N, self.n
        self.ker[key] = np.fft.ifftn(S.reshape(N, N, N, N, n, n), axes=(0, 1, 2, 3)).reshape(-1, n, n)
    def sym_axis(self):
        """Coordinates -N/2..N/2 with fft indices and weights: the Nyquist shell is split half/half (Hermitian interpolation)."""
        N = self.N
        return (np.arange(-(N // 2), N // 2 + 1), np.concatenate([np.arange(N // 2, N), np.arange(0, N // 2 + 1)]) % N,
                np.where(np.abs(np.arange(-(N // 2), N // 2 + 1)) == N // 2, 0.5, 1.0))
    def eval(self, key, q):  # direct kernel sum (tests only)
        rr, idx, w = self.sym_axis(); N = self.N
        X = np.array(list(itertools.product(range(len(rr)), repeat=4)))
        xs = rr[X].astype(float); wt = np.prod(w[X], axis=1); I = idx[X]
        flat = ((I[:, 0] * N + I[:, 1]) * N + I[:, 2]) * N + I[:, 3]
        E = np.exp(-1j * (q @ xs.T)) * wt
        return (E @ self.ker[key][flat].reshape(len(xs), -1)).reshape(len(q), self.n, self.n)
    def torus_index(self, z):
        z = np.asarray(z) % self.N
        return ((z[..., 0] * self.N + z[..., 1]) * self.N + z[..., 2]) * self.N + z[..., 3]

def level0_data(step, p, v, N):
    """Level-0 data from the Wilson Hessian in the plane-wave background (exact finite-range kernels)."""
    lat = step.lat; cols_c = np.array(step.colors); nc = len(cols_c); n = 4 * nc
    Ac, As = wave_fields(step, p, v)
    Hc = step.hessians(Ac); Hs = step.hessians(As)
    xa = lat.anchors[lat.cpos(np.array(step.X))]; sa = lat.pos(xa)
    rows = (3 * (4 * sa + np.arange(4))[:, None] + cols_c[None, :]).ravel()
    links = np.arange(lat.nlinks); ysite = links // 4; ymu = links % 4
    z = (xa[None, :] - lat.coords[ysite] + lat.n // 2) % lat.n - lat.n // 2
    near = np.where((np.abs(z) <= 1).all(1))[0]
    data = Data(N, n)
    zi = data.torus_index(z[near])
    def kernel(H):
        M = H[rows][:, (3 * links[near][:, None] + cols_c[None, :]).ravel()].toarray().reshape(n, len(near), nc)
        K = np.zeros((N**4, n, n), complex)
        for a in range(nc):
            K[zi, :, nc * ymu[near] + a] = M[:, :, a].T
        return K
    D0 = kernel(Hc[0])                                                   # in-place builds: <= 5 N^4 arrays live
    Tp = kernel(Hs[1]); Tp *= 1j; Tp += kernel(Hc[1]); Tp *= 0.5 * np.exp(-1j * p * xa[0])
    D2 = kernel(Hc[2]); D2 += kernel(Hs[2]); D2 *= 0.5
    data.ker = {"D0": D0, "Tp": Tp, "Tm": Tp.conj(), "D2": D2}
    return data

class Level:
    """One blocking step at level j: data (Data), one-step kernels, background momentum p (level-j units).
    Data values at the umklapp momenta are produced on regular grids by zero-padded FFTs of the torus kernels (exact
    trigonometric interpolation), chunked over the first momentum component to bound memory."""
    def __init__(self, step, data, ker, p):
        self.step, self.data, self.ker, self.p = step, data, ker, p
        self.L = step.lat.L; self.L4 = self.L**4; self.n = data.n; self.nK = self.L4 * self.n
        self.ls = np.array(list(itertools.product(range(self.L), repeat=4)))
        self.pvec = np.array([p, 0., 0., 0.])
        self.dense = {}
        for key, kd in ker.items():
            Zs = np.array(list(kd.keys()), float); T = np.stack([kd[z].toarray() for z in kd.keys()])
            self.dense[key] = (Zs, T.reshape(len(Zs), -1), T.shape[1])
    def fourier(self, key, k):
        Zs, T, m = self.dense[key]
        ph = np.exp(-1j * self.L * (k @ Zs.T))
        return (ph @ T).reshape(len(k), m, m)
    def W(self, k):  # (b, L4, L4)
        kl = k[:, None, :] + 2 * np.pi * self.ls[None] / self.L
        return np.exp(1j * np.einsum("ud,bld->bul", self.step.offs, kl)) / self.L**2

    def grid(self, key, M, shift, m0s, m1s):
        """Symbol `key` at q = 2 pi m / M + shift for m_0 in m0s, m_1 in m1s, all (m_2, m_3): (len(m0s), len(m1s), M, M, n, n).
        Kernel sum with the Nyquist shell split half/half (Hermitian interpolation). Axes 0, 1 by explicit DFT (streamed over
        (m_0, m_1) slices so memory is O(L^2 M^2 n^2)), axes 2, 3 by zero-padded FFT."""
        N, n = self.data.N, self.n
        rr, idx, w = self.data.sym_axis()
        K = self.data.ker[key].reshape(N, N, N, N, n, n)
        def E(ms, ax):                                                       # (len(ms), N) in fft order, Nyquist halves summed
            ph = w * np.exp(-1j * np.outer(2 * np.pi * np.asarray(ms) / M + shift[ax], rr))
            out = np.zeros((len(ms), N), complex); np.add.at(out.T, idx, ph.T)
            return out
        A = np.tensordot(E(m0s, 0), K, axes=(1, 0))                          # (a, N, N, N, n, n)
        A = np.tensordot(E(m1s, 1), A, axes=(1, 1)).swapaxes(0, 1)           # (a, b, N, N, n, n)
        for ax in (2, 3):                                                    # expand to -N/2..N/2 with shift phases
            sh = [1] * 6; sh[ax] = N + 1
            A = np.take(A, idx, axis=ax) * (w * np.exp(-1j * shift[ax] * rr)).reshape(sh)
        t = rr % M
        for ax in (2, 3):                                                    # fold into the M torus (halves coincide if M == N)
            shp = list(A.shape); shp[ax] = M; Bn = np.zeros(shp, complex)
            np.add.at(Bn, (slice(None),) * ax + (t,), A); A = Bn
        return np.fft.fftn(A, axes=(2, 3))

    def gather(self, G, m23, Nc):
        """G (L, L, M, M, n, n) for the chunk's fine m0 = m0 + Nc*l0, m1 = m1 + Nc*l1; coarse (m2, m3) (b, 2) -> (b, L4, n, n)."""
        M = G.shape[2]
        idx = (m23[:, None, :] + Nc * self.ls[None, :, 2:]) % M               # (b, L4, 2)
        return G[self.ls[None, :, 0], self.ls[None, :, 1], idx[..., 0], idx[..., 1]]
    def blocks(self, k, S, want):
        """Bordered/ghost blocks at cell momenta k (b,4). S: dict name -> (b, L4, n, n) data at the umklapp momenta of the
        momentum named (D0@0, D0@p, D0@m, Tp@0, Tp@m, Tm@0, Tm@p, D2@0, where @p = at k+p, @m = at k-p)."""
        nK = self.nK; p = self.pvec; out = {}
        W0 = self.W(k); Wp = self.W(k + p); Wm = self.W(k - p)
        I = np.eye(self.n); b = len(k); idx = np.arange(self.L4)
        def emb(Wo, Sv, Wi):  # (Wo (x) 1) blockdiag_l(Sv) (Wi (x) 1)^dagger with BLAS matmuls
            kro = (Wo[:, :, None, :, None] * I[None, None, :, None, :]).reshape(b, nK, nK)
            C = (Wi.conj().transpose(0, 2, 1)[:, :, None, :, None] * I[None, None, :, None, :]).reshape(b, nK, nK)
            Sbd = np.zeros((b, self.L4, self.n, self.L4, self.n), complex)
            Sbd[:, idx, :, idx, :] = Sv.transpose(1, 0, 2, 3)
            return kro @ Sbd.reshape(b, nK, nK) @ C
        def add(M, H): M[:, :nK, :nK] += H; return M
        if "B0" in want: out["B0"] = add(self.fourier("B0", k), emb(W0, S["D0@0"], W0))
        if "B0p" in want: out["B0p"] = add(self.fourier("B0", k + p), emb(Wp, S["D0@p"], Wp))
        if "B0m" in want: out["B0m"] = add(self.fourier("B0", k - p), emb(Wm, S["D0@m"], Wm))
        if "Bp" in want: out["Bp"] = add(self.fourier("Bp", k), emb(Wp, S["Tp@0"], W0))        # k -> k+p
        if "Bpm" in want: out["Bpm"] = add(self.fourier("Bp", k - p), emb(W0, S["Tp@m"], Wm))  # k-p -> k
        if "Bm" in want: out["Bm"] = add(self.fourier("Bp", -k).conj(), emb(Wm, S["Tm@0"], W0))        # k -> k-p
        if "Bmp" in want: out["Bmp"] = add(self.fourier("Bp", -(k + p)).conj(), emb(W0, S["Tm@p"], Wp))  # k+p -> k
        if "B2" in want: out["B2"] = add(self.fourier("B2", k), emb(W0, S["D2@0"], W0))
        return out

    GRIDS = {"D0@0": ("D0", 0), "D0@p": ("D0", 1), "D0@m": ("D0", -1), "Tp@0": ("Tp", 0), "Tp@m": ("Tp", -1),
             "Tm@0": ("Tm", 0), "Tm@p": ("Tm", 1), "D2@0": ("D2", 0)}

    def chunk_grids(self, names, M, base_shift, m0s, m1s):
        G = {}
        for nm in names:
            key, sgn = self.GRIDS[nm]
            G[nm] = self.grid(key, M, base_shift + sgn * self.pvec, m0s, m1s)
        return G
    def schur(self, k, S):
        """Level-(j+1) data at coarse momenta K = L k: S0, Sp, Sm, S2 (b, n, n)."""
        nK = self.nK
        B = self.blocks(k, S, ("B0", "B0p", "B0m", "Bp", "Bpm", "Bm", "Bmp", "B2"))
        i0 = np.linalg.inv(B["B0"]); ip = np.linalg.inv(B["B0p"]); im = np.linalg.inv(B["B0m"])
        S0 = -i0[:, nK:, nK:]
        Sp = (ip @ B["Bp"] @ i0)[:, nK:, nK:]
        Sm = (im @ B["Bm"] @ i0)[:, nK:, nK:]
        X = B["Bmp"] @ ip @ B["Bp"] + B["Bpm"] @ im @ B["Bm"]
        S2 = (i0 @ B["B2"] @ i0 - 2 * i0 @ X @ i0)[:, nK:, nK:]
        ph = np.exp(1j * self.p * self.step.lat.h)   # anchor phase: coarse convention e^{i p' X_0}, p' = L p
        return S0.copy(), ph * Sp, Sm / ph, S2.copy()   # copies: the [nK:, nK:] slices are views that pin the full (b, nK+12, nK+12) arrays

    def next_data(self, N, cache, batch=64):
        """Tabulate the level-(j+1) data on the N^4 grid K_m = 2 pi m / N (fine k = K/L, umklapp on the (LN)^4 grid).
        Streamed over (m_0, m_1); one file per m_0 slice in `cache` (skip-if-done); the old level data are freed before assembly."""
        L = self.L; M = L * N; os.makedirs(cache, exist_ok=True)
        m23 = np.array(list(itertools.product(range(N), repeat=2)))
        for m0 in range(N):
            f = os.path.join(cache, f"m0_{m0}.npy")
            if os.path.exists(f): continue
            res = [[], [], [], []]
            for m1 in range(N):
                G = self.chunk_grids(self.GRIDS.keys(), M, np.zeros(4), [m0 + N * l for l in range(L)], [m1 + N * l for l in range(L)])
                for i in range(0, len(m23), batch):
                    mm = m23[i:i + batch]
                    k = 2 * np.pi * np.concatenate([np.full((len(mm), 1), m0), np.full((len(mm), 1), m1), mm], 1) / M
                    S = {nm: self.gather(G[nm], mm, N) for nm in G}
                    for o, s in zip(res, self.schur(k, S)): o.append(s)
                del G
            np.save(f[:-4] + ".tmp.npy", np.stack([np.concatenate(o) for o in res])); os.replace(f[:-4] + ".tmp.npy", f)
        self.data = None
        d = Data(N, self.n)
        for a, key in enumerate(("D0", "Tp", "Tm", "D2")):
            S = np.empty((N**4, self.n, self.n), complex)
            for m0 in range(N): S[m0 * N**3:(m0 + 1) * N**3] = np.load(os.path.join(cache, f"m0_{m0}.npy"), mmap_mode="r")[a]
            d.from_symbols(key, S); del S
        return d

    def increment(self, Ng, cache=None, shift=0.5, batch=64):
        """w = <tr(M0^-1 M2)> - 2 <tr(M0(k+p)^-1 T+(k) M0(k)^-1 T-(k+p))> over the shifted k grid; ghost weight +1, Bord -1/2.
        Needs L*Ng >= N. Streamed over (m_0, m_1); partial sums per m_0 in `cache` (skip-if-done)."""
        L = self.L; M = L * Ng; p = self.pvec; cache = cache or self.cache
        assert M >= self.data.N, "need L*Ng >= N"
        os.makedirs(cache, exist_ok=True)
        s = np.full(4, 2 * np.pi * shift / M)
        m23 = np.array(list(itertools.product(range(Ng), repeat=2)))
        tot = {"G": 0.0, "B": 0.0}
        for m0 in range(Ng):
            f = os.path.join(cache, f"inc_Ng{Ng}_s{shift}_m0_{m0}.json")
            if os.path.exists(f):
                part = json.load(open(f))
            else:
                part = {"G": 0.0, "B": 0.0}
                for m1 in range(Ng):
                    G = self.chunk_grids(("D0@0", "D0@p", "Tp@0", "Tm@p", "D2@0"), M, s, [m0 + Ng * l for l in range(L)], [m1 + Ng * l for l in range(L)])
                    for i in range(0, len(m23), batch):
                        mm = m23[i:i + batch]
                        k = 2 * np.pi * (np.concatenate([np.full((len(mm), 1), m0), np.full((len(mm), 1), m1), mm], 1) + shift) / M
                        S = {nm: self.gather(G[nm], mm, Ng) for nm in G}
                        B = self.blocks(k, S, ("B0", "B0p", "Bp", "Bmp", "B2"))
                        Mi = np.linalg.inv(B["B0"]); Mpi = np.linalg.inv(B["B0p"])
                        part["B"] += float(np.sum((np.einsum("bij,bji->b", Mi, B["B2"]) - 2 * np.einsum("bij,bji->b", Mpi @ B["Bp"], Mi @ B["Bmp"])).real))
                        Gi = np.linalg.inv(self.fourier("G0", k)); Gpi = np.linalg.inv(self.fourier("G0", k + p))
                        part["G"] += float(np.sum((np.einsum("bij,bji->b", Gi, self.fourier("G2", k))
                                                   - 2 * np.einsum("bij,bji->b", Gpi @ self.fourier("Gp", k), Gi @ self.fourier("Gp", -(k + p)).conj())).real))
                    del G
                json.dump(part, open(f + ".tmp", "w")); os.replace(f + ".tmp", f)
            tot["G"] += part["G"]; tot["B"] += part["B"]
        g, b = tot["G"] / Ng**4, tot["B"] / Ng**4
        return g - 0.5 * b, g, b

def chain(step, j, p_target, N, v0, log=print, cache=None):
    """Build level-j data and one-step kernels for a background with momentum p_target at level j. Returns Level j.
    cache: directory for the per-slice level files (default: a temporary-named folder under results/)."""
    L = step.lat.L; p0 = p_target / L**j
    if cache is None:
        cache = os.path.join(os.path.dirname(os.path.abspath(__file__)), "results",
                             f"cache_v2_L{L}_N{N}_j{j}_p{p_target}_c{len(step.colors)}_{abs(hash(tuple(np.round(v0, 12)))) % 10**8}")
    v = v0.astype(complex)
    t = time.time()
    data = level0_data(step, p0, v, N)
    for i in range(j + 1):
        pi = p0 * L**i
        ker, vnext = onestep_kernels(step, pi, v)
        lev = Level(step, data, ker, pi); data = None
        lev.cache = cache
        if i == j: return lev, p0
        data = lev.next_data(N, os.path.join(cache, f"lev{i + 1}"))
        v = vnext
        log(f"  level {i}->{i+1} done, |v|={np.linalg.norm(v):.4f} ({time.time()-t:.0f}s)")
def beta_from_w(w, L, j, p0):
    return 4 * w / (L**(4 * (j + 1)) * 2 * np.sin(p0 / 2)**2)

if __name__ == "__main__":
    L = int(sys.argv[1]); jmax = int(sys.argv[2]); N = int(sys.argv[3]); Ng = int(sys.argv[4]); ps = [float(a) for a in sys.argv[5].split(",")]
    colors = (2,) if "--u1" in sys.argv else (0, 1, 2)
    gauge = "--gauge" in sys.argv
    js = [int(a) for a in sys.argv[sys.argv.index("--j") + 1].split(",")] if "--j" in sys.argv else range(jmax + 1)
    here = os.path.dirname(os.path.abspath(__file__)); os.makedirs(os.path.join(here, "results"), exist_ok=True)
    step = Step(L, colors)
    for j in js:
        for p in ps:
            tag = f"betafp_v2_L{L}_N{N}_Ng{Ng}_j{j}_p{p}" + ("_u1" if colors == (2,) else "") + ("_gauge" if gauge else "")
            path = os.path.join(here, "results", tag + ".json")
            if os.path.exists(path):
                print(tag, "cached", json.load(open(path))["beta"]); continue
            t = time.time()
            v0 = np.array([1 - np.exp(1j * p / L**j), 0, 0, 0]) if gauge else np.array([0, 1, 0, 0], complex)
            lev, p0 = chain(step, j, p, N, v0)
            w, g, b = lev.increment(Ng)
            beta = beta_from_w(w, L, j, p0)
            r = dict(L=L, N=N, Ng=Ng, j=j, p=p, p0=p0, colors=list(colors), gauge=gauge, w=w, ghost=g, bord=b, beta=beta, secs=time.time() - t)
            json.dump(r, open(path, "w"), indent=1)
            shutil.rmtree(lev.cache, ignore_errors=True)
            print(tag, r, flush=True)
