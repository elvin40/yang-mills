# Build and cache the one-step d=4, L=3 bordered kernel B0 (f=0, one color) from ym_momentum.Step.
import time, sys, os, pickle; sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from ym_momentum import Step
out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "B0_L3.pkl")
if not os.path.exists(out):
    t = time.time(); s = Step(3, colors=(2,)); ker = s.build(0.3)
    pickle.dump(dict(B0=ker["B0"], offs=s.offs, h=s.lat.h, anchor_pos=s.anchor_pos), open(out, "wb"))
    print("built", time.time() - t, next(iter(ker["B0"].values())).shape)
