import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from flint import arb
from h1cert_cell2 import cell_bound2
from h1cert_rho1 import prof
h = float(sys.argv[1]); c = [float(x) for x in sys.argv[2:6]]
try: ub = cell_bound2(13, "inf", [arb(x) for x in c], h, 3, prof(13)); st = "near0" if ub is None else ("ok" if ub < 13**0.5 - 1e-6 else "fail")
except Exception as ex: ub, st = None, f"fail ({type(ex).__name__}: {ex})"
print(c, h, st, ub, flush=True)
