.class public final LX3/D;
.super LX3/p;
.source "SourceFile"

# interfaces
.implements LU3/x;


# instance fields
.field public final f:LI4/l;

.field public final g:LR3/j;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:LX3/I;

.field public j:LX3/C;

.field public k:LU3/C;

.field public final l:Z

.field public final m:LI4/e;

.field public final n:Lq3/j;


# direct methods
.method public constructor <init>(Ls4/f;LI4/l;LR3/j;I)V
    .locals 1

    sget-object p4, Lr3/s;->d:Lr3/s;

    const-string v0, "moduleName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LV3/g;->a:LV3/f;

    invoke-direct {p0, v0, p1}, LX3/p;-><init>(LV3/h;Ls4/f;)V

    iput-object p2, p0, LX3/D;->f:LI4/l;

    iput-object p3, p0, LX3/D;->g:LR3/j;

    iget-boolean p3, p1, Ls4/f;->e:Z

    if-eqz p3, :cond_1

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, LX3/D;->h:Ljava/util/LinkedHashMap;

    new-instance p3, LK4/n;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    sget-object p4, LK4/h;->a:LU3/w;

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, LX3/I;->a:LX3/G;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LX3/G;->b:LU3/w;

    invoke-virtual {p0, p1}, LX3/D;->u0(LU3/w;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX3/I;

    if-nez p1, :cond_0

    sget-object p1, LX3/H;->b:LX3/H;

    :cond_0
    iput-object p1, p0, LX3/D;->i:LX3/I;

    const/4 p1, 0x1

    iput-boolean p1, p0, LX3/D;->l:Z

    new-instance p1, LF4/a;

    const/16 p3, 0x9

    invoke-direct {p1, p3, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p1

    iput-object p1, p0, LX3/D;->m:LI4/e;

    new-instance p1, LR3/m;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LR3/m;-><init>(LX3/D;I)V

    new-instance p2, Lq3/j;

    invoke-direct {p2, p1}, Lq3/j;-><init>(LE3/a;)V

    iput-object p2, p0, LX3/D;->n:Lq3/j;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Module name must be special: "

    invoke-static {p1, p2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final G0()V
    .locals 2

    iget-boolean v0, p0, LX3/D;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LU3/u;

    const-string v1, "Accessing invalid module descriptor "

    invoke-static {p0, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "message"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->z(LX3/D;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final S(LU3/x;)Z
    .locals 2

    const-string v0, "targetModule"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LX3/D;->j:LX3/C;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v0, Lr3/t;->d:Lr3/t;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, LX3/D;->w0()Ljava/util/List;

    sget-object v0, Lr3/r;->d:Lr3/r;

    invoke-virtual {v0, p1}, Lr3/r;->contains(Ljava/lang/Object;)Z

    invoke-interface {p1}, LU3/x;->w0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c()LR3/j;
    .locals 0

    iget-object p0, p0, LX3/D;->g:LR3/j;

    return-object p0
.end method

.method public final d(Ls4/c;LE3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/D;->G0()V

    invoke-virtual {p0}, LX3/D;->G0()V

    iget-object p0, p0, LX3/D;->n:Lq3/j;

    invoke-virtual {p0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/o;

    invoke-virtual {p0, p1, p2}, LX3/o;->d(Ls4/c;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g()LU3/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final u0(LU3/w;)Ljava/lang/Object;
    .locals 1

    const-string v0, "capability"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LX3/D;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ls4/c;)LU3/G;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/D;->G0()V

    iget-object p0, p0, LX3/D;->m:LI4/e;

    invoke-virtual {p0, p1}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/G;

    return-object p0
.end method

.method public final w0()Ljava/util/List;
    .locals 2

    iget-object v0, p0, LX3/D;->j:LX3/C;

    if-eqz v0, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependencies of module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    iget-object p0, p0, Ls4/f;->d:Ljava/lang/String;

    const-string v1, "name.toString()"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " were not set"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
