.class public final LH4/l;
.super LX3/b;
.source "SourceFile"

# interfaces
.implements LU3/j;


# instance fields
.field public final h:Ln4/j;

.field public final i:Lp4/a;

.field public final j:LU3/L;

.field public final k:Ls4/b;

.field public final l:I

.field public final m:LU3/n;

.field public final n:I

.field public final o:LF4/k;

.field public final p:LC4/p;

.field public final q:LH4/i;

.field public final r:LU3/K;

.field public final s:Lw0/i;

.field public final t:LU3/j;

.field public final u:LI4/h;

.field public final v:LI4/i;

.field public final w:LI4/i;

.field public final x:LI4/h;

.field public final y:LF4/v;

.field public final z:LV3/h;


# direct methods
.method public constructor <init>(LF4/k;Ln4/j;Lp4/f;Lp4/a;LU3/L;)V
    .locals 10

    const-string v0, "outerContext"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classProto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->a:LI4/o;

    iget v1, p2, Ln4/j;->h:I

    invoke-static {p3, v1}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object v1

    invoke-virtual {v1}, Ls4/b;->i()Ls4/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LX3/b;-><init>(LI4/o;Ls4/f;)V

    iput-object p2, p0, LH4/l;->h:Ln4/j;

    iput-object p4, p0, LH4/l;->i:Lp4/a;

    iput-object p5, p0, LH4/l;->j:LU3/L;

    iget v0, p2, Ln4/j;->h:I

    invoke-static {p3, v0}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object v0

    iput-object v0, p0, LH4/l;->k:Ls4/b;

    sget-object v0, Lp4/e;->e:Lp4/c;

    iget v1, p2, Ln4/j;->g:I

    invoke-virtual {v0, v1}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/A;

    invoke-static {v0}, LF4/j;->e(Ln4/A;)I

    move-result v0

    iput v0, p0, LH4/l;->l:I

    sget-object v0, Lp4/e;->d:Lp4/c;

    iget v1, p2, Ln4/j;->g:I

    invoke-virtual {v0, v1}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/f0;

    invoke-static {v0}, Lw0/f;->q(Ln4/f0;)LU3/n;

    move-result-object v0

    iput-object v0, p0, LH4/l;->m:LU3/n;

    sget-object v0, Lp4/e;->f:Lp4/c;

    iget v1, p2, Ln4/j;->g:I

    invoke-virtual {v0, v1}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, LF4/y;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_3
    move v0, v2

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x2

    :goto_1
    iput v0, p0, LH4/l;->n:I

    iget-object v5, p2, Ln4/j;->j:Ljava/util/List;

    const-string v3, "classProto.typeParameterList"

    invoke-static {v5, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, LX3/C;

    iget-object v3, p2, Ln4/j;->z:Ln4/X;

    const-string v4, "classProto.typeTable"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v3}, LX3/C;-><init>(Ln4/X;)V

    iget-object v3, p2, Ln4/j;->B:Ln4/e0;

    const-string v4, "classProto.versionRequirementTable"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lp4/g;->q(Ln4/e0;)Lp4/h;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, LF4/k;->a(LU3/j;Ljava/util/List;Lp4/f;LX3/C;Lp4/h;Lp4/a;)LF4/k;

    move-result-object p3

    iput-object p3, p0, LH4/l;->o:LF4/k;

    iget-object p4, p3, LF4/k;->a:LF4/i;

    if-ne v0, v2, :cond_1

    new-instance v3, LC4/r;

    iget-object v4, p4, LF4/i;->a:LI4/o;

    invoke-direct {v3, v4, p0}, LC4/r;-><init>(LI4/o;LH4/l;)V

    goto :goto_2

    :cond_1
    sget-object v3, LC4/n;->b:LC4/n;

    :goto_2
    iput-object v3, p0, LH4/l;->p:LC4/p;

    new-instance v3, LH4/i;

    invoke-direct {v3, p0}, LH4/i;-><init>(LH4/l;)V

    iput-object v3, p0, LH4/l;->q:LH4/i;

    sget-object v3, LU3/K;->d:LU3/M;

    iget-object v4, p4, LF4/i;->a:LI4/o;

    iget-object v5, p4, LF4/i;->q:LK4/l;

    check-cast v5, LK4/m;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, LH4/k;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, p0}, LH4/k;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "storageManager"

    invoke-static {v4, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LU3/K;

    invoke-direct {v1, p0, v4, v5}, LU3/K;-><init>(LX3/b;LI4/o;LE3/b;)V

    iput-object v1, p0, LH4/l;->r:LU3/K;

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    new-instance v0, Lw0/i;

    invoke-direct {v0, p0}, Lw0/i;-><init>(LH4/l;)V

    goto :goto_3

    :cond_2
    move-object v0, v1

    :goto_3
    iput-object v0, p0, LH4/l;->s:Lw0/i;

    iget-object p1, p1, LF4/k;->c:LU3/j;

    iput-object p1, p0, LH4/l;->t:LU3/j;

    new-instance v0, LH4/h;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, LH4/h;-><init>(LH4/l;I)V

    iget-object p4, p4, LF4/i;->a:LI4/o;

    move-object v2, p4

    check-cast v2, LI4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/h;

    invoke-direct {v3, v2, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v3, p0, LH4/l;->u:LI4/h;

    new-instance v0, LH4/h;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, LH4/h;-><init>(LH4/l;I)V

    move-object v2, p4

    check-cast v2, LI4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/i;

    invoke-direct {v3, v2, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v3, p0, LH4/l;->v:LI4/i;

    new-instance v0, LH4/h;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, LH4/h;-><init>(LH4/l;I)V

    move-object v2, p4

    check-cast v2, LI4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/h;

    invoke-direct {v3, v2, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    new-instance v0, LH4/h;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, LH4/h;-><init>(LH4/l;I)V

    move-object v2, p4

    check-cast v2, LI4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/i;

    invoke-direct {v3, v2, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v3, p0, LH4/l;->w:LI4/i;

    new-instance v0, LH4/h;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, LH4/h;-><init>(LH4/l;I)V

    move-object v2, p4

    check-cast v2, LI4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/h;

    invoke-direct {v3, v2, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v3, p0, LH4/l;->x:LI4/h;

    new-instance v0, LF4/v;

    instance-of v2, p1, LH4/l;

    if-eqz v2, :cond_3

    check-cast p1, LH4/l;

    goto :goto_4

    :cond_3
    move-object p1, v1

    :goto_4
    if-nez p1, :cond_4

    :goto_5
    move-object v9, v1

    goto :goto_6

    :cond_4
    iget-object v1, p1, LH4/l;->y:LF4/v;

    goto :goto_5

    :goto_6
    iget-object v6, p3, LF4/k;->b:Lp4/f;

    iget-object v7, p3, LF4/k;->d:LX3/C;

    move-object v4, v0

    move-object v5, p2

    move-object v8, p5

    invoke-direct/range {v4 .. v9}, LF4/v;-><init>(Ln4/j;Lp4/f;LX3/C;LU3/L;LF4/v;)V

    iput-object v0, p0, LH4/l;->y:LF4/v;

    sget-object p1, Lp4/e;->c:Lp4/b;

    iget p2, p2, Ln4/j;->g:I

    invoke-virtual {p1, p2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, LV3/g;->a:LV3/f;

    goto :goto_7

    :cond_5
    new-instance p1, LH4/x;

    new-instance p2, LH4/h;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, LH4/h;-><init>(LH4/l;I)V

    invoke-direct {p1, p4, p2}, LH4/x;-><init>(LI4/o;LE3/a;)V

    :goto_7
    iput-object p1, p0, LH4/l;->z:LV3/h;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B()Z
    .locals 1

    sget-object v0, Lp4/e;->i:Lp4/b;

    iget-object p0, p0, LH4/l;->h:Ln4/j;

    iget p0, p0, Ln4/j;->g:I

    invoke-virtual {v0, p0}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final E()LJ4/M;
    .locals 0

    iget-object p0, p0, LH4/l;->q:LH4/i;

    return-object p0
.end method

.method public final I()I
    .locals 0

    iget p0, p0, LH4/l;->n:I

    return p0
.end method

.method public final K()Z
    .locals 1

    sget-object v0, Lp4/e;->f:Lp4/c;

    iget-object p0, p0, LH4/l;->h:Ln4/j;

    iget p0, p0, Ln4/j;->g:I

    invoke-virtual {v0, p0}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ln4/i;->i:Ln4/i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final P()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LH4/l;->v:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final T()LU3/d;
    .locals 0

    iget-object p0, p0, LH4/l;->u:LI4/h;

    invoke-virtual {p0}, LI4/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/d;

    return-object p0
.end method

.method public final U()LC4/o;
    .locals 0

    iget-object p0, p0, LH4/l;->p:LC4/p;

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 0

    iget-object p0, p0, LH4/l;->m:LU3/n;

    return-object p0
.end method

.method public final c0()Z
    .locals 1

    sget-object v0, Lp4/e;->l:Lp4/b;

    iget-object p0, p0, LH4/l;->h:Ln4/j;

    iget p0, p0, Ln4/j;->g:I

    invoke-virtual {v0, p0}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, LH4/l;->l:I

    return p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 3

    sget-object v0, Lp4/e;->k:Lp4/b;

    iget-object v1, p0, LH4/l;->h:Ln4/j;

    iget v1, v1, Ln4/j;->g:I

    invoke-virtual {v0, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, LH4/l;->i:Lp4/a;

    iget v0, p0, Lp4/a;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    iget v2, p0, Lp4/a;->c:I

    if-ge v2, v0, :cond_2

    goto :goto_1

    :cond_2
    if-le v2, v0, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, Lp4/a;->d:I

    if-gt p0, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final g()LU3/j;
    .locals 0

    iget-object p0, p0, LH4/l;->t:LU3/j;

    return-object p0
.end method

.method public final i()LU3/L;
    .locals 0

    iget-object p0, p0, LH4/l;->j:LU3/L;

    return-object p0
.end method

.method public final j(LK4/g;)LC4/o;
    .locals 1

    iget-object p0, p0, LH4/l;->r:LU3/K;

    iget-object p1, p0, LU3/K;->a:LX3/b;

    invoke-static {p1}, Lz4/e;->j(LU3/j;)LU3/x;

    iget-object p0, p0, LU3/K;->c:LI4/i;

    sget-object p1, LU3/K;->e:[LL3/l;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    return-object p0
.end method

.method public final m0()LH4/g;
    .locals 2

    iget-object v0, p0, LH4/l;->o:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->q:LK4/l;

    check-cast v0, LK4/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LH4/l;->r:LU3/K;

    iget-object v0, p0, LU3/K;->a:LX3/b;

    invoke-static {v0}, Lz4/e;->j(LU3/j;)LU3/x;

    iget-object p0, p0, LU3/K;->c:LI4/i;

    sget-object v0, LU3/K;->e:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    check-cast p0, LH4/g;

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LH4/l;->o:LF4/k;

    iget-object p0, p0, LF4/k;->h:LF4/F;

    iget-object p0, p0, LF4/F;->i:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, LH4/l;->z:LV3/h;

    return-object p0
.end method

.method public final s()LU3/t;
    .locals 0

    iget-object p0, p0, LH4/l;->x:LI4/h;

    invoke-virtual {p0}, LI4/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/t;

    return-object p0
.end method

.method public final s0()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LH4/l;->w:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final t()Z
    .locals 3

    sget-object v0, Lp4/e;->k:Lp4/b;

    iget-object v1, p0, LH4/l;->h:Ln4/j;

    iget v1, v1, Ln4/j;->g:I

    invoke-virtual {v0, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x2

    iget-object p0, p0, LH4/l;->i:Lp4/a;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lp4/a;->a(III)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deserialized "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LH4/l;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Z
    .locals 1

    sget-object v0, Lp4/e;->h:Lp4/b;

    iget-object p0, p0, LH4/l;->h:Ln4/j;

    iget p0, p0, Ln4/j;->g:I

    invoke-virtual {v0, p0}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final w()Z
    .locals 1

    sget-object v0, Lp4/e;->j:Lp4/b;

    iget-object p0, p0, LH4/l;->h:Ln4/j;

    iget p0, p0, Ln4/j;->g:I

    invoke-virtual {v0, p0}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final y()Z
    .locals 1

    sget-object v0, Lp4/e;->g:Lp4/b;

    iget-object p0, p0, LH4/l;->h:Ln4/j;

    iget p0, p0, Ln4/j;->g:I

    invoke-virtual {v0, p0}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
