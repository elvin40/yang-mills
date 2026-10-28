import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from flint import arb
from h1cert_cell2 import cell_bound2
from h1cert_rho1 import prof
h = float(sys.argv[1]); idx = [int(x) for x in sys.argv[2:6]]; M = sys.argv[6] if len(sys.argv) > 6 else "inf"
c = [(i + 0.5) * 2 * h for i in idx]
try: ub = cell_bound2(13, M if M == "inf" or M.startswith("M0") else int(M), [arb(x) for x in c], h, 3, prof(13)); st = "near0" if ub is None else ("ok" if ub < 13**0.5 - 1e-6 else "fail")
except Exception as ex: ub, st = None, f"fail ({type(ex).__name__}: {ex})"
print(idx, [round(x, 3) for x in c], h, st, ub, flush=True)
