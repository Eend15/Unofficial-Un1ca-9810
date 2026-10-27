"""Builds ColorOS-style Lottie icons (72x72, 60fps) for glyphs the pack doesn't cover."""
import json, math, os, sys
EASE=(0.3,0.0,0.1,1.0)
def dims(v): return v if isinstance(v,(list,tuple)) else [v]
def kf(frames, ease=EASE):
    out=[]
    for n,(t,v) in enumerate(frames):
        v=list(dims(v)); d=len(v)
        k={"t":t,"s":v}
        if n<len(frames)-1:
            k["i"]={"x":[ease[2]]*d,"y":[ease[3]]*d}
            k["o"]={"x":[ease[0]]*d,"y":[ease[1]]*d}
        out.append(k)
    return out
def prop(v, ix=0):
    if isinstance(v,dict): return {"a":1,"k":kf(v["f"],v.get("ease",EASE)),"ix":ix}
    return {"a":0,"k":v,"ix":ix}
def layer(name, shapes, pivot=(36,36), p=None, s=None, r=None, o=None, ip=0, op=60, extra=None):
    ks={"o":prop(100 if o is None else o,11),"r":prop(0 if r is None else r,10),
        "p":prop(list(pivot)+[0] if p is None else p,2),"a":prop(list(pivot)+[0],1),
        "s":prop([100,100,100] if s is None else s,6)}
    L={"ddd":0,"ind":1,"ty":4,"nm":name,"sr":1,"ks":ks,"ao":0,"shapes":shapes,"ip":ip,"op":op,"st":0,"bm":0}
    return L
def tr(): return {"ty":"tr","p":{"a":0,"k":[0,0]},"a":{"a":0,"k":[0,0]},"s":{"a":0,"k":[100,100]},"r":{"a":0,"k":0},"o":{"a":0,"k":100}}
def fill(c): return {"ty":"fl","c":{"a":0,"k":c},"o":{"a":0,"k":100},"r":1}
def stroke(c,w): return {"ty":"st","c":{"a":0,"k":c},"o":{"a":0,"k":100},"w":{"a":0,"k":w},"lc":2,"lj":2}
def trim(s=0,e=100,o=0): return {"ty":"tm","s":prop(s),"e":prop(e),"o":prop(o),"m":1}
def path(pts,closed=False,round_=0):
    v=[list(p) for p in pts]; z=[[0,0]]*len(v)
    return {"ty":"sh","ks":{"a":0,"k":{"i":z,"o":z,"v":v,"c":closed}}}
def bez(segs,closed=True):
    # segs: list of (vertex, inTangent, outTangent) relative tangents
    return {"ty":"sh","ks":{"a":0,"k":{"i":[list(s[1]) for s in segs],"o":[list(s[2]) for s in segs],"v":[list(s[0]) for s in segs],"c":closed}}}
def rect(x,y,w,h,r): return {"ty":"rc","p":{"a":0,"k":[x+w/2,y+h/2]},"s":{"a":0,"k":[w,h]},"r":{"a":0,"k":r}}
def ell(cx,cy,rx,ry=None): return {"ty":"el","p":{"a":0,"k":[cx,cy]},"s":{"a":0,"k":[rx*2,(ry or rx)*2]}}
def grp(name,*items):
    its=[i for i in items if i.get("ty")!="mm"]
    if len(its)!=len(items):
        for i in its:
            if i.get("ty")=="fl": i["r"]=2
    return {"ty":"gr","nm":name,"it":its+[tr()]}
def F(name,geoms,c): return grp(name,*geoms,fill(c))
def S(name,geoms,c,w,t=None): return grp(name,*geoms,*( [t] if t else [] ),stroke(c,w))
def anim(layers,name,total=36):
    for i,l in enumerate(layers): l["ind"]=i+1
    return {"v":"5.7.0","fr":60,"ip":0,"op":total,"w":72,"h":72,"nm":name,"ddd":0,"assets":[],"layers":layers}
POP=lambda t0,t1,over=1.0:{"f":[(t0,[0,0,100]),(t1,[100*over,100*over,100]),(t1+6,[100,100,100])]}
def pop(a,b,over=1.12): return {"f":[(a,[0,0,100]),(b,[100*over]*2+[100]),(b+8,[100,100,100])]}


def rpoly(pts,r):
    """closed polygon with every corner rounded by radius r (cubic corner)."""
    n=len(pts); segs=[]
    for i in range(n):
        p0=pts[i-1]; p=pts[i]; p1=pts[(i+1)%n]
        def unit(a,b):
            dx,dy=b[0]-a[0],b[1]-a[1]; L=math.hypot(dx,dy); return dx/L,dy/L,L
        ux,uy,l0=unit(p,p0); vx,vy,l1=unit(p,p1)
        rr=min(r,l0/2.01,l1/2.01)
        a=(p[0]+ux*rr,p[1]+uy*rr); b=(p[0]+vx*rr,p[1]+vy*rr)
        k=0.55
        segs.append((a,(0,0),((p[0]-a[0])*k,(p[1]-a[1])*k)))
        segs.append((b,((p[0]-b[0])*k,(p[1]-b[1])*k),(0,0)))
    return bez(segs,True)
CUT={"ty":"mm","mm":3,"nm":"cut"}
def cutgrp(name,solid,holes,c): return grp(name,*solid,*holes,CUT,fill(c))
def lay(name,shapes,**kw): return layer(name,shapes,**kw)
def matted(matte_shapes,shapes,name,**kw):
    m=layer(name+"_m",matte_shapes); m["td"]=1
    t=layer(name,shapes,**kw); t["tt"]=1
    return [m,t]
BX,BY,BW,BH=20,12,32,54
def body_shapes(c): return [F("b",[rect(BX,BY,BW,BH,7)],c)]
def cap(c): return layer("cap",[F("c",[rect(30,6,12,8,2.5)],c)])
def battery(c,level=0.62):
    top=BY+BH-BH*level
    # the level rect spans the whole body; the player scales its height to the real charge
    return matted(body_shapes(c),[F("lv",[rect(BX-2,BY,BW+4,BH+4,0)],c)],"level",pivot=(36,BY+BH),
            s={"f":[(0,[100,0,100]),(26,[100,100,100])]})+[layer("body",body_shapes(c),o=40),cap(c)]
def bolt_hole(cx,cy,sc):
    P=[(4.5,-16),(-11,3),(-2.5,3),(-5,16),(11,-3.5),(2.5,-3.5)]
    return rpoly([(cx+x*sc,cy+y*sc) for x,y in P],2.2)
def cut_layer(shape_items,pivot,t0=4):
    """A layer named "cut" erases what is below it (the player draws it with DST_OUT)."""
    return layer("cut",[grp("cut",*shape_items,fill([1,1,1,1]))],pivot=pivot,s=pop(t0,t0+12,1.15),o={"f":[(t0,0),(t0+3,100)]})
def charging(c):
    return [cut_layer([bolt_hole(36,40,1.0)],(36,40))]+battery(c)
def plus_hole(cx,cy,h,t):
    a=t/2
    return rpoly([(cx-a,cy-h),(cx+a,cy-h),(cx+a,cy-a),(cx+h,cy-a),(cx+h,cy+a),(cx+a,cy+a),(cx+a,cy+h),(cx-a,cy+h),(cx-a,cy+a),(cx-h,cy+a),(cx-h,cy-a),(cx-a,cy-a)],1.6)
def powersave(c):
    return [cut_layer([plus_hole(36,40,11,5.4)],(36,40))]+battery(c)
def camera(c):
    body=grp("body",rect(7,20,58,42,9),ell(36,42,14.5),ell(55,29,2.8),CUT,fill(c))
    bump=F("bump",[rect(25,12,22,14,5)],c)
    lens=F("lens",[ell(36,42,9.5)],c)
    return [
      layer("lens",[lens],pivot=(36,42),s={"f":[(0,[100,100,100]),(8,[55,55,100]),(22,[108,108,100]),(34,[100,100,100])]}),
      layer("bump",[bump]),
      layer("body",[body],s={"f":[(0,[92,92,100]),(14,[100,100,100])]},o={"f":[(0,0),(4,100)]}),
    ]
def mic(c):
    cap_=F("cap",[rect(26,7,20,36,10)],c)
    u=S("u",[bez([((19,36),(0,0),(0,9)),((36,53),(-9,0),(9,0)),((53,36),(0,9),(0,0))],False)],c,4.8)
    st=S("s",[path([(36,53),(36,64)]),path([(27,64),(45,64)])],c,4.8)
    sc=lambda:{"f":[(0,[100,100,100]),(8,[88,88,100]),(20,[106,106,100]),(32,[100,100,100])]}
    return [layer("cap",[cap_],pivot=(36,25),s=sc()),layer("u",[u],pivot=(36,40),s=sc()),layer("stem",[st])]
def location(c):
    cx,cy,R=36,29,18
    k=0.5523*R; q=3.4
    p1=(cx+15.2,cy+9.6); p2=(cx-15.2,cy+9.6)
    segs=[((cx,63),(0,0),(0,0)),(p1,(0,0),(1.8,-2.9)),((cx+R,cy),(0,q),(0,-k)),
          ((cx,cy-R),(k,0),(-k,0)),((cx-R,cy),(0,-k),(0,q)),(p2,(-1.8,-2.9),(0,0))]
    pin=grp("pin",bez(segs,True),ell(cx,cy,7),CUT,fill(c),stroke(c,2.4))
    return [
      layer("pin",[pin],pivot=(36,63),
            p={"f":[(0,[36,45,0]),(10,[36,65,0]),(15,[36,60,0]),(22,[36,63,0])]},
            s={"f":[(0,[100,100,100]),(10,[100,100,100]),(12,[108,86,100]),(20,[100,100,100])]},
            o={"f":[(0,0),(4,100)]}),
      layer("ripple",[F("r",[ell(36,64,14,4.2)],c)],pivot=(36,64),o={"f":[(8,0),(14,38),(30,0)]},s={"f":[(8,[20,20,100]),(30,[110,110,100])]}),
    ]
def airplane(c):
    P=[(36,6),(43,15),(43,27),(65,43),(65,51),(43,43),(43,53),(49,59),(49,65),(36,62),(23,65),(23,59),(29,53),(29,43),(7,51),(7,43),(29,27),(29,15)]
    g=grp("plane",rpoly(P,2.4),fill(c),stroke(c,2))
    return [layer("plane",[g],pivot=(36,36),r=45,
        p={"f":[(0,[12,60,0]),(30,[36,36,0])]},s={"f":[(0,[60,60,100]),(30,[100,100,100])]},o={"f":[(0,0),(6,100)]})]
def flashlight_rays(c):
    sil=grp("torch",rpoly([(19,22),(53,22),(45,36),(45,64),(27,64),(27,36)],6.5),rect(33,44,6,11,3),CUT,fill(c))
    def ray(x1,y1,x2,y2,t,n): return layer("ray%d"%n,[S("r",[path([(x1,y1),(x2,y2)])],c,5,trim(0,{"f":[(t,0),(t+9,100)]}))],o={"f":[(t+2,0),(t+3,100)]})
    return [ray(14,13,20,17,6,1),ray(36,5,36,12,8,2),ray(58,13,52,17,10,3),
        layer("torch",[sil],pivot=(36,43),s={"f":[(0,[100,100,100]),(10,[105,105,100]),(24,[100,100,100])]})]
def hotspot(c):
    dot=F("dot",[ell(36,37,6.5)],c)
    def arc(r,side,t,n):
        a=40 if side>0 else 220
        return layer("arc%d%d"%(r,side),[S("a",[ell(36,37,r)],c,5,trim(0,{"f":[(t,0),(t+10,23)]}))],pivot=(36,37),r=a+8,o={"f":[(t,0),(t+2,100)]})
    ls=[arc(r,sd,t,n) for n,(r,t) in enumerate([(17,9),(28,15)]) for sd in (1,-1)]
    ls.append(layer("dot",[dot],pivot=(36,37),s=pop(0,10,1.25)))
    return ls
def rotatelock(c):
    R=25; cx=cy=36
    f=0.86; a=f*360*math.pi/180
    ex,ey=cx+R*math.sin(a),cy-R*math.cos(a)
    tx,ty=math.cos(a),math.sin(a); nx,ny=-ty,tx
    tip=(ex+tx*9,ey+ty*9); b1=(ex+nx*8,ey+ny*8); b2=(ex-nx*8,ey-ny*8)
    return [
      layer("ring",[S("a",[ell(cx,cy,R)],c,5,trim(8,86)),grp("head",rpoly([tip,b1,b2],2.6),fill(c),stroke(c,2.4))],pivot=(cx,cy),r={"f":[(0,-120),(30,0)]},o={"f":[(0,0),(4,100)]}),
      layer("body",[grp("lk",rect(24,35,24,19,6.5),rect(34.3,40,3.4,7,1.7),CUT,fill(c))],pivot=(36,43),s=pop(6,16,1.12)),
      layer("shackle",[S("s",[bez([((29.5,36),(0,0),(0,-6)),((36,28.5),(-6.5,0),(6.5,0)),((42.5,36),(0,-6),(0,0))],False)],c,4.4)],pivot=(36,36),
            p={"f":[(0,[36,41,0]),(14,[36,41,0]),(24,[36,36,0])]},o={"f":[(6,0),(10,100)]}),
    ]
def download(c):
    arrow=grp("arrow",rpoly([(30,8),(42,8),(42,27),(50,27),(36,43),(22,27),(30,27)],3.4),fill(c),stroke(c,2))
    tray=F("t",[rect(12,52,48,11,5.5)],c)
    return [
      layer("arrow",[arrow],pivot=(36,30),p={"f":[(0,[36,18,0]),(12,[36,36,0]),(20,[36,31,0]),(30,[36,30,0])]},o={"f":[(0,0),(5,100)]},
            s={"f":[(0,[100,100,100]),(12,[100,100,100]),(16,[96,106,100]),(26,[100,100,100])]}),
      layer("tray",[tray],pivot=(36,58),s={"f":[(10,[100,100,100]),(16,[100,84,100]),(28,[100,100,100])]}),
    ]
ICONS={"battery":battery,"battery_charging":charging,"power_save":powersave,"camera":camera,"mic":mic,"location":location,
       "airplane":airplane,"flashlight":flashlight_rays,"hotspot":hotspot,"rotate_lock":rotatelock,"download":download}
def build(outdir,c):
    os.makedirs(outdir,exist_ok=True)
    for n,fn in ICONS.items():
        d=anim(fn(c),n,36 if n!="battery" else 36)
        json.dump(d,open(os.path.join(outdir,"ic_island_%s.json"%n),"w"),separators=(",",":"))
if __name__=="__main__":
    build(sys.argv[1],[1,1,1,1] if len(sys.argv)<3 else json.loads(sys.argv[2]))
