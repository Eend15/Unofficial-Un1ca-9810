.class public final LS3/c;
.super LX3/b;
.source "SourceFile"


# static fields
.field public static final o:Ls4/b;

.field public static final p:Ls4/b;


# instance fields
.field public final h:LI4/l;

.field public final i:LG4/c;

.field public final j:LS3/e;

.field public final k:I

.field public final l:LS3/b;

.field public final m:LS3/f;

.field public final n:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls4/b;

    sget-object v1, LR3/p;->j:Ls4/c;

    const-string v2, "Function"

    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    sput-object v0, LS3/c;->o:Ls4/b;

    new-instance v0, Ls4/b;

    sget-object v1, LR3/p;->h:Ls4/c;

    const-string v2, "KFunction"

    invoke-static {v2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    sput-object v0, LS3/c;->p:Ls4/b;

    return-void
.end method

.method public constructor <init>(LI4/l;LG4/c;LS3/e;I)V
    .locals 3

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p3, LS3/e;->e:Ljava/lang/String;

    invoke-static {v0, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LX3/b;-><init>(LI4/o;Ls4/f;)V

    iput-object p1, p0, LS3/c;->h:LI4/l;

    iput-object p2, p0, LS3/c;->i:LG4/c;

    iput-object p3, p0, LS3/c;->j:LS3/e;

    iput p4, p0, LS3/c;->k:I

    new-instance p2, LS3/b;

    invoke-direct {p2, p0}, LS3/b;-><init>(LS3/c;)V

    iput-object p2, p0, LS3/c;->l:LS3/b;

    new-instance p2, LS3/f;

    invoke-direct {p2, p1, p0}, LC4/i;-><init>(LI4/l;LX3/b;)V

    iput-object p2, p0, LS3/c;->m:LS3/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, LK3/c;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4, p3}, LK3/a;-><init>(III)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, LK3/a;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, LK3/b;

    iget-boolean p4, p4, LK3/b;->f:Z

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, LK3/b;

    invoke-virtual {p4}, LK3/b;->b()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "P"

    invoke-static {p4, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, LS3/c;->h:LI4/l;

    const/4 v2, 0x2

    invoke-static {p0, v2, p4, v0, v1}, LX3/U;->K0(LX3/b;ILs4/f;ILI4/o;)LX3/U;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lq3/m;->a:Lq3/m;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "R"

    invoke-static {p2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object p4, p0, LS3/c;->h:LI4/l;

    const/4 v0, 0x3

    invoke-static {p0, v0, p2, p3, p4}, LX3/U;->K0(LX3/b;ILs4/f;ILI4/o;)LX3/U;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LS3/c;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E()LJ4/M;
    .locals 0

    iget-object p0, p0, LS3/c;->l:LS3/b;

    return-object p0
.end method

.method public final I()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final K()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic P()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final bridge synthetic T()LU3/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic U()LC4/o;
    .locals 0

    sget-object p0, LC4/n;->b:LC4/n;

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 1

    sget-object p0, LU3/o;->e:LU3/n;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()LU3/j;
    .locals 0

    iget-object p0, p0, LS3/c;->i:LG4/c;

    return-object p0
.end method

.method public final i()LU3/L;
    .locals 0

    sget-object p0, LU3/L;->a:LU3/M;

    return-object p0
.end method

.method public final j(LK4/g;)LC4/o;
    .locals 0

    iget-object p0, p0, LS3/c;->m:LS3/f;

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LS3/c;->n:Ljava/util/List;

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    sget-object p0, LV3/g;->a:LV3/f;

    return-object p0
.end method

.method public final s()LU3/t;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic s0()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
