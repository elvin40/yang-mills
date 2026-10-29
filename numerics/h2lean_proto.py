"""h2lean_proto.py: Python mirror of the Lean branch-and-bound lean/YmLean/H2Box*.lean (sup B*_13 <= 10).
Same integer fixed-point arithmetic (scale 2^40, outward rounding), same sine table (Taylor, 12/13 terms,
pi to 20 digits), same box enclosures, same tree (16^4 sorted roots, bisection, inherited gauge bound).
Not part of the proof; used to plan the Lean run and to cross-check values.
Usage: python3 h2lean_proto.py 12 a:b   (roots a..b-1 of the 3876 sorted roots; ~16 min for all on 16 processes)
Result 2026-10-28 (all roots, 16 processes): ok, 25,241 boxes, 8,089 gauge evaluations, max depth 2,
largest accepted box value 9.999994. Two roundings differ from the Lean code: Lean uses r_lo = Khlo*(1/kh)
(two roundings) and sums the S part per summand; the Lean values agree with this script to ~1e-11 relative."""
import sys, itertools, time, math
from fractions import Fraction as Fr
L=13; P=40; ONE=1<<P
D=int(sys.argv[1]) if len(sys.argv)>1 else 12
TGT=10*ONE
N=(1<<(D+1))*L; G2=1<<D
PILO=Fr(314159265358979323846,10**20); PIHI=Fr(314159265358979323847,10**20)
def fl(q): return q.numerator//q.denominator
def ce(q): return -((-q.numerator)//q.denominator)
def taylor(x,n):
    s=Fr(0); t=x; x2=x*x
    for i in range(n):
        s+= t if i%2==0 else -t
        t=t*x2/((2*i+2)*(2*i+3))
    return s
def sinent(m):
    x=PILO*m/N; e=(PIHI-PILO)*m/N
    lo=taylor(x,12)-e; hi=taylor(x,13)+e
    return (max(fl(lo*ONE),0), min(ce(hi*ONE),ONE))
t0=time.time()
TAB=[sinent(m) for m in range(N//2+1)]
print("table",time.time()-t0,file=sys.stderr)
def sinE(m): return TAB[m] if 2*m<=N else TAB[N-m]
def mulU(a,b): return -((-(a*b))>>P)
def mulD(a,b): return (a*b)>>P
def divU(a,b): return -((-(a<<P))//b)
def divD(a,b): return (a<<P)//b
def sqrtU(a):  # ceil sqrt in fixed point: r^2 >= a*ONE
    n=a*ONE; r=math.isqrt(n)
    return r if r*r>=n else r+1
def qU(q): return ce(q*ONE)
def qD(q): return fl(q*ONE)
# constants
sincC_lo = divD(sinE(G2)[0], qU(PIHI/(2*L)))   # sinc(pi/2L) lower
gam = divU(ONE, mulD(sincC_lo,sincC_lo))
L2gam = L*L*gam
def g0(hi):  # ((L^2-1) pi u /(24 L sinc))^2, u = hi/2^D
    v = divU(qU((L*L-1)*PIHI*Fr(hi,G2)/(24*L)), sincC_lo); return mulU(v,v)
def dirtab(lo,hi):
    sKlo=sinE(lo*L)[0]; sKhi=sinE(hi*L)[1]
    s4lo=[0]*L; s4hi=[0]*L; alo=[0]*L; ahi=[0]*L; g2=[0]*L
    for l in range(L):
        m1=lo+2*G2*l; m2=hi+2*G2*l
        if 2*m2<=N: sl,sh=sinE(m1)[0],sinE(m2)[1]
        elif 2*m1>=N: sl,sh=sinE(m2)[0],sinE(m1)[1]
        else: sl,sh=min(sinE(m1)[0],sinE(m2)[0]),ONE
        s4lo[l]=4*mulD(sl,sl); s4hi[l]=4*mulU(sh,sh)
        if l==0:
            # a0 in [sinc(pi hi/2)/sinc(pi lo/2L), min(1, sinc(pi lo/2)/sinc(pi hi/2L))]
            scKhi_lo = divD(sinE(hi*L)[0], qU(PIHI*Fr(hi,2*G2)))           # sinc(pi hi/2) lower
            scsm_lo_hi = ONE if lo==0 else min(ONE, divU(sinE(lo)[1], qD(PILO*Fr(lo,N))))  # sinc(pi lo/2L) upper
            scKlo_hi = ONE if lo==0 else min(ONE, divU(sinE(lo*L)[1], qD(PILO*Fr(lo,2*G2))))
            scsm_hi_lo = divD(sinE(hi)[0], qU(PIHI*Fr(hi,N)))
            a_lo=max(0,divD(scKhi_lo, scsm_lo_hi)); a_hi=min(ONE, divU(scKlo_hi, scsm_hi_lo)) if scsm_hi_lo>0 else ONE
        else:
            a_lo=divD(sKlo, L*sh); a_hi=min(ONE, divU(sKhi, L*sl)) if sl>0 else ONE
        alo[l]=a_lo; ahi[l]=a_hi
        om = ONE-a_lo if l%2==0 else ONE+a_hi
        gg = divU(mulU(om,om), s4lo[l]) if s4lo[l]>0 else None
        if l==0:
            g=g0(hi); gg = g if (lo==0 or gg is None) else min(gg,g)
        g2[l]=gg if gg is not None else 10**30
    return dict(sKlo=sKlo,sKhi=sKhi,s4lo=s4lo,s4hi=s4hi,alo=alo,ahi=ahi,g2=g2)
VX=list(itertools.product((0,1),repeat=4)); CH=VX
def ftab(lo,hi):
    out=[]
    for p in range(4):
        ulo=Fr(lo[p],G2); uhi=Fr(hi[p],G2)
        sKlo=sinE(lo[p]*L)[0]
        sinc_lo = divD(sinE(hi[p]*L)[0], qU(PIHI*uhi/2))
        tt = max(0, divD(4*mulD(sKlo,sKlo), qU(PIHI*PIHI*(2-ulo)**2)))
        xl=qD(PILO*PILO*ulo*ulo); xh=qU(PIHI*PIHI*uhi*uhi)
        tl=ulo/(2-ulo); th=uhi/(2-uhi)
        s2=mulD(sinc_lo,sinc_lo); s4=mulD(s2,s2)
        S=[s2, s2+tt]; Sm=[s4, s4+mulD(tt,tt)]
        r=[ONE, qU(2/(1+tl*tl))]; rm=[ONE, qU((1+th*th)/(1+tl**4))]
        out.append((S,Sm,r,rm,xl,xh))
    return out
def Fbox(lo,hi):
    T=ftab(lo,hi); best=None
    for c in CH:
        val=0
        for mu in range(4):
            rh=[(T[p][3] if p==mu else T[p][2])[c[p]] for p in range(4)]
            den=[(T[p][1] if p==mu else T[p][0])[c[p]] for p in range(4)]
            M=0
            for v in VX:
                xs=[T[p][5] if v[p] else T[p][4] for p in range(4)]
                sx=sum(xs)
                if sx>0: M=max(M, divU(sum(x*rr for x,rr in zip(xs,rh))>>0, sx*ONE) if False else -((-sum(x*rr for x,rr in zip(xs,rh)))//sx))
            # linear check
            chk=sum(max(T[p][4]*(rh[p]-M), T[p][5]*(rh[p]-M)) for p in range(4))
            assert chk<=0
            d=den[0]
            for i in (1,2,3): d=mulD(d,den[i])
            if d<=0: v_=10**30
            else: v_=divU(M,d)
            val=max(val,v_)
        best=val if best is None else min(best,val)
    return best
def Gbox(lo,hi,F):
    T=[dirtab(lo[p],hi[p]) for p in range(4)]
    Khlo=sum(4*mulD(t['sKlo'],t['sKlo']) for t in T); Khhi=sum(4*mulU(t['sKhi'],t['sKhi']) for t in T)
    K2hi=sum(qU(PIHI*PIHI*Fr(hi[p],G2)**2) for p in range(4))
    a2lo=[[mulD(a,a) for a in t['alo']] for t in T]; a2hi=[[mulU(a,a) for a in t['ahi']] for t in T]
    y0lo=min(L*L*a2lo[p][0] for p in range(4)); y0hi=max(L*L*a2hi[p][0] for p in range(4))
    Vs=0; Us=0; Ss=0
    R=range(L)
    for l in itertools.product(R,repeat=4):
        kl=sum(T[p]['s4lo'][l[p]] for p in range(4)); kh=sum(T[p]['s4hi'][l[p]] for p in range(4))
        Pa2=a2hi[0][l[0]]
        for p in (1,2,3): Pa2=mulU(Pa2,a2hi[p][l[p]])
        Pa=T[0]['ahi'][l[0]]
        for p in (1,2,3): Pa=mulU(Pa,T[p]['ahi'][l[p]])
        mxa=max(T[p]['ahi'][l[p]] for p in range(4))
        Gn=sqrtU(sum(T[p]['g2'][l[p]] for p in range(4)))
        if l==(0,0,0,0):
            W=L2gam; rlo=y0lo; rhi=y0hi
        else:
            inv=divU(ONE,kl); W=mulU(K2hi,inv); rhi=mulU(Khhi,inv); rlo=divD(Khlo,kh)
            Ss+=divD(ONE,kh)
        Ymax=max(L*L*a2hi[p][l[p]] for p in range(4)); Ymin=min(L*L*a2lo[p][l[p]] for p in range(4))
        br=max(Ymax-rlo, rhi-Ymin)
        Vs+=mulU(mulU(Pa2,W),br); Us+=mulU(mulU(mulU(Pa,mxa),W),Gn)
    V=-((-Vs)//L**4); U=-((-Us)//L**3)
    S=(mulD(Khlo,Ss)+y0lo)//(L*L)
    tau=mulU(F, V+mulU(sqrtU(Khhi),U))
    if S<=0: return 10**30
    return divU(mulU(ONE+tau,ONE+tau),S)
stats=dict(boxes=0,G=0,fail=0,maxdep=0)
worst=[0]
def check(lo,hi,Gp,dep):
    stats['boxes']+=1; stats['maxdep']=max(stats['maxdep'],dep)
    F=Fbox(lo,hi); gF=mulU(gam,F); G=Gp
    if gF<TGT and (G is None or gF+G>TGT):
        g=Gbox(lo,hi,F); stats['G']+=1; G=g if G is None else min(G,g)
    if G is not None and gF+G<=TGT:
        worst[0]=max(worst[0],gF+G); return True
    if hi[0]-lo[0]==1: stats['fail']+=1; return False
    m=[(a+b)//2 for a,b in zip(lo,hi)]; ok=True
    for bits in VX:
        nlo=[m[r] if bits[r] else lo[r] for r in range(4)]; nhi=[hi[r] if bits[r] else m[r] for r in range(4)]
        if all(nlo[r]<=nhi[r+1] for r in range(3)):
            ok = check(nlo,nhi,G,dep+1) and ok
    return ok
if __name__=="__main__":
    n0=16; w=G2//n0; t0=time.time()
    sel = sys.argv[2] if len(sys.argv)>2 else None
    roots=[ii for ii in itertools.product(range(n0),repeat=4) if all(ii[r]<=ii[r+1] for r in range(3))]
    if sel: a,b=map(int,sel.split(':')); roots=roots[a:b]
    ok=True
    for ii in roots:
        ok = check([i*w for i in ii],[(i+1)*w for i in ii],None,0) and ok
    print(dict(ok=ok,roots=len(roots),worst=worst[0]/ONE,secs=round(time.time()-t0,1),**stats))
