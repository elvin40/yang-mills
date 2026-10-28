# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""Infinite-volume one-loop vacuum polarization of one block-spin step, in coarse momentum space.

Background: U(b) = exp(i a A(b) sigma_3/2) around U = 1, with A(b) a plane wave of fine momentum p.
w(p) := (1/N_cells) d^2/da^2 log Z(a) |_{a=0},  log Z = log det G - 1/2 log|det Bord|,
  G = D^T D (ghost), Bord = [[Delta + D D^T, Qt^T],[Qt, 0]].
d^2/da^2 log det M = tr(M0^-1 M'') - tr(M0^-1 M' M0^-1 M'),  M' = M'_+ + M'_-,  M'_+ = diag(e^{ipLX}) T_+.
Per coarse cell: <tr(M0(k)^-1 M''_0(k))>_k - 2 <tr(M0(k+p)^-1 T+(k) M0(k)^-1 T-(k+p))>_k,
with T-(k) = conj(T+(-k)), M''_0 = (M''_cos + M''_sin)/2 the zero-transfer part.
All kernels have range one coarse cell, so they are read off exactly from an interior cell of a 4L lattice.
beta_1(0) = lim_{p->0} w(p) / (L^4 (1 - cos p))  for a transverse wave (polarization e_2, momentum along e_1).
Pure-gauge wave must give w = 0.
"""
import sys, json, time, itertools, os
import numpy as np
import jax, jax.numpy as jnp
import scipy.sparse as sp
from ym_oneloop import Lat, qmul, qinv, qexp, qlog, IDQ, plaq_links, plaq_action, loops_for_direction, make_avg_fn

jax.config.update("jax_enable_x64", True)
E3 = jnp.array([0., 0., 1.])

def rot_jnp(q):
    e = jnp.zeros((3, 4)).at[:, 1:].set(jnp.eye(3))
    r = qmul(qmul(q[None], e), qinv(q)[None])
    return r[:, 1:].T

def taylor2(F, A):
    """F(U0s(a)) with U0s(a) = exp(i a A sigma_3/2); returns F(0), F'(0), F''(0)."""
    def G(a):
        return F(qexp(a * A[..., None] * E3))
    d1 = lambda a: jax.jvp(G, (a,), (1.0,))[1]
    F0 = G(0.0); F1 = d1(0.0); F2 = jax.jvp(d1, (0.0,), (1.0,))[1]
    return F0, F1, F2

# per-plaquette Hessian and its a-derivatives
_hess_fn = lambda U0s: jax.hessian(lambda b: plaq_action(b.reshape(4, 3), U0s))(jnp.zeros(12))
_hess_t2 = jax.jit(jax.vmap(lambda A4: taylor2(_hess_fn, A4)))
_rot_t2 = jax.jit(jax.vmap(lambda A1: taylor2(rot_jnp, A1)))

class Step:
    def __init__(self, L, colors=(0, 1, 2), ncells=3, levels=1):
        self.L, self.levels = L, levels
        Lc = L**levels
        h1 = (L - 1) // 2
        hc = h1 * (Lc - 1) // (L - 1)
        self.lat = lat = Lat(ncells * Lc, Lc, anchor=hc)
        self.lat1 = Lat(ncells * Lc, L)            # level-1 blocking of the fine lattice
        self.lat1idx = Lat(ncells * Lc // L, L) if levels == 2 else None  # level-1 lattice in its own index coordinates
        self.X = np.array([1, 1, 1, 1])  # extraction cell
        self.colors = np.array(colors)
        # internal link index within a cell: link (anchor + u, mu) -> 4*pos(u) + mu
        h = lat.h; L = Lc  # cell size from here on
        self.offs = np.array(list(itertools.product(range(-h, L - h), repeat=4)))
        self.cellsites = L**4
        self.pl = plaq_links(lat)
        self.coords = lat.coords
        self.link_x = lat.coords[np.arange(lat.nlinks) // 4]  # base site of each link
        self.link_mu = np.arange(lat.nlinks) % 4
        # cell and offset of each site
        self.site_cell = np.floor_divide(lat.coords, L)
        self.site_off = lat.coords - L * self.site_cell - h  # in -h..L-1-h
        self.off_index = {tuple(o): i for i, o in enumerate(self.offs)}
        self.site_pos = np.array([self.off_index[tuple(o)] for o in self.site_off])
        self.nK = 12 * L**4           # fluctuation dof per cell
        self.nB = self.nK + 12         # bordered block size
        self.nG = 3 * (L**4 - 1)       # ghost dof per cell
        self.anchor_pos = self.off_index[(0, 0, 0, 0)]
        gp = np.arange(L**4); gp = gp[gp != self.anchor_pos]
        self.ghost_pos = {p: i for i, p in enumerate(gp)}
        # lists restricted near cell X
        incell = (self.site_cell == self.X).all(1)
        self.rows_links = np.where(incell[np.arange(lat.nlinks) // 4])[0]
        touch = incell[self.pl // 4].any(1)
        self.pl_sel = self.pl[touch]
        self.rows_sites = np.where(incell & ~lat.is_anchor)[0]
        self.loops = [loops_for_direction(self.lat1, mu) for mu in range(4)]
        self.avg_fns = [make_avg_fn(lp) for lp in self.loops]
        if levels == 2:
            self.loops2 = [loops_for_direction(self.lat1idx, mu) for mu in range(4)]
            self.cavg = [self.make_composed(mu) for mu in range(4)]
        self.near_cells = [c for c in itertools.product(range(lat.nc), repeat=4) if max(abs(np.array(c) - self.X)) <= 1]

    def make_composed(self, mu):
        """Level-2 bond in direction mu: returns (rel fine link table builder, jac fn). Composed averaging U -> V = Ubar_1(U) -> Ubar_2(V)."""
        lp2 = self.loops2[mu]; L = self.L; lat1, lat1idx = self.lat1, self.lat1idx
        # level-1 links involved (relative to the level-2 anchor in level-1 index coords): (rel1 (m2,4), rdir1 (m2,))
        rel1, rdir1 = lp2["rel"], lp2["rdir"]
        # fine local set: union over involved level-1 links of their fine local sets (relative to the fine anchor of the level-2 bond)
        fine_rel = {}; per_link_pos = []
        for r1, d1 in zip(rel1, rdir1):
            lp1 = self.loops[d1]
            base = L * r1  # fine offset of the level-1 site r1 (anchor-to-anchor spacing L)
            pos = []
            for rf, df in zip(lp1["rel"], lp1["rdir"]):
                key = (tuple(base + rf), int(df))
                if key not in fine_rel: fine_rel[key] = len(fine_rel)
                pos.append(fine_rel[key])
            per_link_pos.append(np.array(pos))
        keys = list(fine_rel.keys())
        frel = np.array([k[0] for k in keys]); fdir = np.array([k[1] for k in keys])
        groups = {d: [i for i in range(len(rdir1)) if rdir1[i] == d] for d in range(4)}
        gpos = {d: jnp.asarray(np.stack([per_link_pos[i] for i in groups[d]])) for d in range(4) if groups[d]}
        order = np.concatenate([groups[d] for d in range(4) if groups[d]])
        inv = np.argsort(order)  # V in level-2 local order
        fns1 = {d: self.avg_fns[d] for d in range(4)}
        # level-1 coarse link functions (closures over loops), vmapped over links of one direction
        def level1(d, Bl, Ul):
            jac, cl = fns1[d]
            lp = self.loops[d]
            pos, sgn, w, spos = (jnp.asarray(lp[k]) for k in ("pos", "sgn", "w", "spos"))
            def coarse_link(Bloc, U0loc):
                U = qmul(qexp(Bloc), U0loc)
                U = jnp.concatenate([U, jnp.asarray(IDQ)[None]], 0)
                Uinv = qinv(U)
                acc = jnp.tile(jnp.asarray(IDQ), (pos.shape[0], 1))
                for t in range(pos.shape[1]):
                    f = jnp.where(sgn[:, t:t + 1] > 0, U[pos[:, t]], Uinv[pos[:, t]])
                    acc = qmul(acc, f)
                abar = jnp.sum(w[:, None] * qlog(acc), 0)
                Uc = jnp.asarray(IDQ)
                for i in range(spos.shape[0]):
                    Uc = qmul(Uc, U[spos[i]])
                return qmul(qexp(abar), Uc)
            return jax.vmap(coarse_link)(Bl, Ul)
        pos2, sgn2, w2, spos2 = (jnp.asarray(lp2[k]) for k in ("pos", "sgn", "w", "spos"))
        def level2(V):
            U = jnp.concatenate([V, jnp.asarray(IDQ)[None]], 0)
            Uinv = qinv(U)
            acc = jnp.tile(jnp.asarray(IDQ), (pos2.shape[0], 1))
            for t in range(pos2.shape[1]):
                f = jnp.where(sgn2[:, t:t + 1] > 0, U[pos2[:, t]], Uinv[pos2[:, t]])
                acc = qmul(acc, f)
            abar = jnp.sum(w2[:, None] * qlog(acc), 0)
            Uc = jnp.asarray(IDQ)
            for i in range(spos2.shape[0]):
                Uc = qmul(Uc, U[spos2[i]])
            return qmul(qexp(abar), Uc)
        def composed(Bloc, U0loc):
            Vs = [level1(d, Bloc[gpos[d]], U0loc[gpos[d]]) for d in range(4) if d in gpos]
            V = jnp.concatenate(Vs, 0)[inv]
            return level2(V)
        def f(Bloc, U0loc):
            V0 = composed(jnp.zeros_like(Bloc), U0loc)
            return qlog(qmul(composed(Bloc, U0loc), qinv(V0)))
        M = len(keys)
        jac = jax.jit(jax.vmap(lambda U0loc: jax.jacrev(f)(jnp.zeros((M, 3)), U0loc)))
        return dict(rel=frel, rdir=fdir, m=M, jac=jac)

    # ---- indices ----
    def link_internal(self, links):  # (cell(4), internal index) for links
        s = links // 4; mu = links % 4
        return self.site_cell[s], 4 * self.site_pos[s] + mu

    def dof_index(self, links):  # link dof rows/cols: 3*internal + a ; returns cell, idx(3)
        cell, i = self.link_internal(links)
        return cell, 3 * i[:, None] + np.arange(3)

    # ---- assemble sparse derivative matrices (rows near X) ----
    def plane_wave(self, p, pol, kind):
        """A(b) for each link: kind 'cos'/'sin' transverse wave (momentum along e0, polarization e_pol),
        or 'gauge_cos'/'gauge_sin' pure gauge lambda(x) = cos/sin(p x0)."""
        x0 = self.link_x[:, 0].astype(float)
        f = np.cos if kind.endswith("cos") else np.sin
        A = np.zeros(self.lat.nlinks)
        if kind.startswith("gauge"):
            A[self.link_mu == 0] = f(p * x0[self.link_mu == 0]) - f(p * (x0[self.link_mu == 0] + 1))
        else:
            A[self.link_mu == pol] = f(p * x0[self.link_mu == pol])
        return A

    def hessians(self, A):
        """Returns H0, H1, H2 as sparse (3 nlinks)^2 restricted to plaquettes touching X."""
        pl = self.pl_sel
        H0, H1, H2 = (np.asarray(h) for h in _hess_t2(jnp.asarray(A[pl])))
        dof = (3 * pl[:, :, None] + np.arange(3)).reshape(len(pl), 12)
        rows = np.repeat(dof, 12, axis=1).ravel(); cols = np.tile(dof, (1, 12)).ravel()
        N = 3 * self.lat.nlinks
        mk = lambda H: sp.coo_matrix((H.ravel(), (rows, cols)), shape=(N, N)).tocsr()
        return mk(H0), mk(H1), mk(H2)

    def gauge_grad(self, A):
        """D0, D1, D2 sparse (3 nlinks x 3 nonanchor sites) and their a-derivatives."""
        lat = self.lat; x = lat.coords
        R0, R1, R2 = (np.asarray(r) for r in _rot_t2(jnp.asarray(A)))  # (nlinks,3,3)
        rows, cols, v0, v1, v2 = [], [], [], [], []
        nna = lat.nsites - lat.ncs
        for mu in range(4):
            y = x.copy(); y[:, mu] += 1
            b = 4 * np.arange(lat.nsites) + mu; py = lat.pos(y)
            sel = ~lat.is_anchor
            r = (3 * b[sel, None] + np.arange(3)).ravel(); c = (3 * lat.nc_index[sel, None] + np.arange(3)).ravel()
            rows.append(r); cols.append(c); v0.append(np.ones(len(r))); v1.append(np.zeros(len(r))); v2.append(np.zeros(len(r)))
            sel = ~lat.is_anchor[py]
            r = (3 * b[sel, None, None] + np.arange(3)[None, :, None]) * np.ones((1, 1, 3), int)
            c = (3 * lat.nc_index[py[sel], None, None] + np.arange(3)[None, None, :]) * np.ones((1, 3, 1), int)
            rows.append(r.ravel()); cols.append(c.ravel())
            v0.append(-R0[b[sel]].ravel()); v1.append(-R1[b[sel]].ravel()); v2.append(-R2[b[sel]].ravel())
        rows, cols = np.concatenate(rows), np.concatenate(cols)
        mk = lambda v: sp.coo_matrix((np.concatenate(v), (rows, cols)), shape=(3 * lat.nlinks, 3 * nna)).tocsr()
        return mk(v0), mk(v1), mk(v2)

    def averaging(self, A):
        """Qt0, Qt1, Qt2 sparse (12 ncs x 3 nlinks) for bonds anchored in cells near X."""
        lat = self.lat
        cells = np.array(self.near_cells)
        csel = lat.cpos(cells)
        rows, cols, v0, v1, v2 = [], [], [], [], []
        for mu in range(4):
            if self.levels == 1:
                lp = self.loops[mu]; jac, _ = self.avg_fns[mu]
            else:
                lp = self.cavg[mu]; jac = lp["jac"]
            absidx = lat.link(lat.anchors[csel][:, None, :] + lp["rel"][None], lp["rdir"][None])  # (c, m); rel in fine units
            cb = 4 * csel + mu
            tj = jax.jit(jax.vmap(lambda a: taylor2(lambda U: jac(U[None])[0], a)))
            ch = int(os.environ.get("YM_CHUNK", 9))
            parts3 = [[np.asarray(j) for j in tj(jnp.asarray(A[absidx[i:i + ch]]))] for i in range(0, len(csel), ch)]
            J0, J1, J2 = (np.concatenate([p[t] for p in parts3]) for t in range(3))
            r = (3 * cb[:, None, None, None] + np.arange(3)[None, :, None, None]) * np.ones((1, 1, lp["m"], 3), int)
            cc = (3 * absidx[:, None, :, None] + np.arange(3)[None, None, None, :]) * np.ones((1, 3, 1, 1), int)
            rows.append(r.ravel()); cols.append(cc.ravel()); v0.append(J0.ravel()); v1.append(J1.ravel()); v2.append(J2.ravel())
        rows, cols = np.concatenate(rows), np.concatenate(cols)
        mk = lambda v: sp.coo_matrix((np.concatenate(v), (rows, cols)), shape=(12 * lat.ncs, 3 * lat.nlinks)).tocsr()
        return mk(v0), mk(v1), mk(v2)

    # ---- kernels: for a sparse matrix with rows in cell X, return dict Z -> dense block ----
    def _row_map_links(self):
        cell, idx = self.dof_index(self.rows_links)
        return self.rows_links, idx  # rows (links), internal dof (len,3)

    def extract(self, M, row_kind, col_kind, phase=None):
        """Kernel T(Z) blocks. row_kind/col_kind in {'link','bond','site'}. phase: per-column multiplier (for e^{ipLX} removal)."""
        lat = self.lat
        nrow = {"link": self.nK, "bond": 12, "site": self.nG}[row_kind]
        ncol = {"link": self.nK, "bond": 12, "site": self.nG}[col_kind]
        def ids(kind, in_rows):
            if kind == "link":
                links = self.rows_links if in_rows else np.arange(lat.nlinks)
                cell, idx = self.dof_index(links)
                glob = (3 * links[:, None] + np.arange(3)).ravel()
                return glob, np.repeat(cell, 3, axis=0), idx.ravel()
            if kind == "bond":
                cs = np.array([lat.cpos(np.array(self.X))]) if in_rows else np.arange(lat.ncs)
                m = np.array(list(np.ndindex(*(4 * [lat.nc]))))
                glob = (12 * cs[:, None] + np.arange(12)).ravel()
                cell = np.repeat(m[cs], 12, axis=0)
                idx = np.tile(np.arange(12), len(cs))
                return glob, cell, idx
            if kind == "site":
                sites = self.rows_sites if in_rows else np.where(~lat.is_anchor)[0]
                nc = lat.nc_index[sites]
                glob = (3 * nc[:, None] + np.arange(3)).ravel()
                cell = np.repeat(self.site_cell[sites], 3, axis=0)
                gp = np.array([self.ghost_pos[p] for p in self.site_pos[sites]])
                idx = (3 * gp[:, None] + np.arange(3)).ravel()
                return glob, cell, idx
        rg, rc, ri = ids(row_kind, True)
        cg, cc, ci = ids(col_kind, False)
        Msub = M[rg][:, cg].tocoo()
        Z = rc[Msub.row] - cc[Msub.col]  # X - Y
        keys = Z @ np.array([25, 5, 1, 0])[:3] if False else None
        out = {}
        vals = Msub.data * (phase[cg][Msub.col] if phase is not None else 1.0)
        for z in itertools.product((-1, 0, 1), repeat=4):
            m = (Z == np.array(z)).all(1)
            if m.any():
                out[z] = sp.coo_matrix((vals[m], (ri[Msub.row[m]], ci[Msub.col[m]])), shape=(nrow, ncol)).tocsr()
        return out

    def color_mask(self, kind):
        n = {"link": self.nK, "bond": 12, "site": self.nG}[kind]
        return np.isin(np.arange(n) % 3, self.colors)

    def build(self, p, pol=1, kind="trans"):
        """Build Fourier-ready kernels for Bord and G: dict with keys M0, Mp (=T_+), M2 (zero transfer part)."""
        lat = self.lat
        Ac = self.plane_wave(p, pol, ("gauge_" if kind == "gauge" else "") + "cos")
        As = self.plane_wave(p, pol, ("gauge_" if kind == "gauge" else "") + "sin")
        ker = {}
        # phases for e^{ipLX} removal are applied on rows (cell X fixed): T_+(Z) = e^{-ipL X_0} M'_+(X, Y) -- a constant
        phX = np.exp(-1j * p * (lat.h + lat.L * self.X[0]))
        parts = {}
        for nm, A in (("c", Ac), ("s", As)):
            H0, H1, H2 = self.hessians(A)
            D0, D1, D2 = self.gauge_grad(A)
            Q0, Q1, Q2 = self.averaging(A)
            K0 = H0 + D0 @ D0.T
            K1 = H1 + D1 @ D0.T + D0 @ D1.T
            K2 = H2 + D2 @ D0.T + 2 * D1 @ D1.T + D0 @ D2.T
            G0 = D0.T @ D0; G1 = D1.T @ D0 + D0.T @ D1; G2 = D2.T @ D0 + 2 * D1.T @ D1 + D0.T @ D2
            parts[nm] = dict(K=(K0, K1, K2), Q=(Q0, Q1, Q2), G=(G0, G1, G2))
        def bord_kernel(order, combine):
            Kc, Ks = parts["c"]["K"][order], parts["s"]["K"][order]
            Qc, Qs = parts["c"]["Q"][order], parts["s"]["Q"][order]
            K = combine(Kc, Ks); Q = combine(Qc, Qs)
            kk = self.extract(K, "link", "link"); kq = self.extract(Q.T.tocsr(), "link", "bond"); qk = self.extract(Q, "bond", "link")
            out = {}
            for z in set(kk) | set(kq) | set(qk):
                B = sp.bmat([[kk.get(z, sp.csr_matrix((self.nK, self.nK))), kq.get(z, sp.csr_matrix((self.nK, 12)))],
                             [qk.get(z, sp.csr_matrix((12, self.nK))), None]], format="csr")
                out[z] = B
            return out
        def ghost_kernel(order, combine):
            G = combine(parts["c"]["G"][order], parts["s"]["G"][order])
            return self.extract(G, "site", "site")
        ker["B0"] = bord_kernel(0, lambda c, s: c)
        ker["Bp"] = bord_kernel(1, lambda c, s: 0.5 * phX * (c + 1j * s))
        ker["B2"] = bord_kernel(2, lambda c, s: 0.5 * (c + s))
        ker["G0"] = ghost_kernel(0, lambda c, s: c)
        ker["Gp"] = ghost_kernel(1, lambda c, s: 0.5 * phX * (c + 1j * s))
        ker["G2"] = ghost_kernel(2, lambda c, s: 0.5 * (c + s))
        # colour restriction
        mb = np.concatenate([self.color_mask("link"), self.color_mask("bond")]); mg = self.color_mask("site")
        for key in ker:
            m = mb if key[0] == "B" else mg
            ker[key] = {z: ker[key][z][m][:, m] for z in ker[key]}
        return ker

def fourier_batch(ker, ks, L):
    """Stack of dense M(k) = sum_Z T(Z) e^{-i L k.Z} for a batch of k, built by sparse accumulation (memory-light)."""
    Zs = [np.array(z, float) for z in ker]; Ts = list(ker.values())
    out = []
    for k in ks:
        acc = None
        for z, T in zip(Zs, Ts):
            term = T * np.exp(-1j * L * np.dot(k, z))
            acc = term if acc is None else acc + term
        out.append(acc.toarray())
    return np.stack(out)

def second_derivative(ker, p, L, Ng, prefix, shift=0.5, batch=8):
    """<tr(M0^-1 M2)> - 2 <tr(M0(k+p)^-1 T+(k) M0(k)^-1 T-(k+p))> averaged over the k grid."""
    pvec = np.array([p, 0., 0., 0.])
    k0, k2, kp = ker[prefix + "0"], ker[prefix + "2"], ker[prefix + "p"]
    N = next(iter(k0.values())).shape[0]
    batch = 4 if N > 2000 else batch
    if os.environ.get("YM_GPU"): batch = 1 if N > 5000 else (2 if N > 2000 else batch)
    ks = (np.arange(Ng) + shift) * 2 * np.pi / (L * Ng)
    K = np.array(list(itertools.product(ks, repeat=4)))
    tot = 0.0
    for i in range(0, len(K), batch):
        k = K[i:i + batch]
        xp = jnp if os.environ.get("YM_GPU") else np
        Mi = xp.linalg.inv(xp.asarray(fourier_batch(k0, k, L))); Mpi = xp.linalg.inv(xp.asarray(fourier_batch(k0, k + pvec, L)))
        M2 = xp.asarray(fourier_batch(k2, k, L)); Tpk = xp.asarray(fourier_batch(kp, k, L)); Tmk = xp.conj(xp.asarray(fourier_batch(kp, -(k + pvec), L)))
        t1 = xp.einsum("bij,bji->b", Mi, M2)
        t2 = xp.einsum("bij,bji->b", Mpi @ Tpk, Mi @ Tmk)
        tot += float(xp.sum((t1 - 2 * t2).real))
    return tot / Ng**4

def w_of_p(step, p, Ng, pol=1, kind="trans", shift=0.5):
    ker = step.build(p, pol, kind)
    g = second_derivative(ker, p, step.lat.L, Ng, "G", shift)
    b = second_derivative(ker, p, step.lat.L, Ng, "B", shift)
    return g - 0.5 * b, g, b

if __name__ == "__main__":
    L = int(sys.argv[1]); Ng = int(sys.argv[2]); ps = [float(a) for a in sys.argv[3].split(",")]
    kind = sys.argv[4] if len(sys.argv) > 4 else "trans"
    colors = (2,) if "--u1" in sys.argv else (0, 1, 2)
    levels = 2 if "--two" in sys.argv else 1
    shift = 0.0 if "--shift0" in sys.argv else 0.5
    os.makedirs("results", exist_ok=True)
    step = Step(L, colors, levels=levels)
    for p in ps:
        tag = f"mom_L{L}_Ng{Ng}_p{p}_{kind}" + ("_u1" if colors == (2,) else "") + ("_shift0" if shift == 0.0 else "") + ("_two" if levels == 2 else "")
        path = os.path.join("results", tag + ".json")
        if os.path.exists(path):
            r = json.load(open(path)); print(tag, "cached", r); continue
        t = time.time()
        w, g, b = w_of_p(step, p, Ng, kind=kind, shift=shift)
        beta = 4 * w / (step.lat.L**4 * (1 - np.cos(p)))  # d2/da2 of the Wilson action per site is (1-cos p)/4 (B = B^a sigma_a/2)
        r = dict(L=L, Ng=Ng, p=p, kind=kind, colors=list(map(int, colors)), levels=levels, w=w, ghost=g, bord=b, beta=beta, secs=time.time() - t)
        json.dump(r, open(path, "w"), indent=1)
        print(tag, r, flush=True)
