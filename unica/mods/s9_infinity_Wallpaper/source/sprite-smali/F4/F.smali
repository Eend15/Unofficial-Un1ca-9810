.class public final LF4/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LF4/F;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LF4/k;LF4/F;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LF4/F;->a:I

    .line 2
    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterProtos"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LF4/F;->c:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, LF4/F;->d:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, LF4/F;->e:Ljava/lang/Object;

    .line 7
    iput-object p5, p0, LF4/F;->f:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, LF4/F;->b:Z

    .line 9
    iget-object p1, p1, LF4/k;->a:LF4/i;

    iget-object p4, p1, LF4/i;->a:LI4/o;

    .line 10
    new-instance p5, LF4/B;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, LF4/B;-><init>(LF4/F;I)V

    check-cast p4, LI4/l;

    invoke-virtual {p4, p5}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p4

    iput-object p4, p0, LF4/F;->g:Ljava/lang/Object;

    .line 11
    new-instance p4, LF4/B;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5}, LF4/B;-><init>(LF4/F;I)V

    iget-object p1, p1, LF4/i;->a:LI4/o;

    check-cast p1, LI4/l;

    invoke-virtual {p1, p4}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, LF4/F;->h:Ljava/lang/Object;

    .line 12
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lr3/s;->d:Lr3/s;

    goto :goto_1

    .line 14
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p2, 0x1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ln4/W;

    .line 16
    iget v0, p5, Ln4/W;->g:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, LH4/w;

    iget-object v2, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast v2, LF4/k;

    invoke-direct {v1, v2, p5, p2}, LH4/w;-><init>(LF4/k;Ln4/W;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p2, p4

    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    iput-object p1, p0, LF4/F;->i:Ljava/lang/Object;

    return-void
.end method

.method public static a(LJ4/G;LJ4/C;)LJ4/G;
    .locals 6

    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object v0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object v1

    invoke-static {p0}, LR3/f;->J(LJ4/C;)LJ4/C;

    move-result-object v2

    invoke-static {p0}, LR3/f;->N(LJ4/C;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lr3/j;->r0(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ4/P;

    invoke-virtual {v5}, LJ4/P;->b()LJ4/C;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, LR3/f;->t(LR3/j;LV3/h;LJ4/C;Ljava/util/ArrayList;LJ4/C;Z)LJ4/G;

    move-result-object p1

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result p0

    invoke-virtual {p1, p0}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ln4/Q;LF4/F;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Ln4/Q;->g:Ljava/util/List;

    const-string v1, "argumentList"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, LF4/F;->c:Ljava/lang/Object;

    check-cast v1, LF4/k;

    iget-object v1, v1, LF4/k;->d:LX3/C;

    invoke-static {p0, v1}, Lj0/s;->B(Ln4/Q;LX3/C;)Ln4/Q;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LF4/F;->d(Ln4/Q;LF4/F;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_1
    invoke-static {v0, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final g(LF4/F;Ln4/Q;I)LU3/e;
    .locals 4

    iget-object v0, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast v0, LF4/k;

    iget-object v0, v0, LF4/k;->b:Lp4/f;

    invoke-static {v0, p2}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object p2

    new-instance v0, LF4/B;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LF4/B;-><init>(LF4/F;I)V

    invoke-static {v0, p1}, LU4/j;->e0(LE3/b;Ljava/lang/Object;)LU4/i;

    move-result-object p1

    sget-object v0, LF4/E;->d:LF4/E;

    invoke-static {p1, v0}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, LU4/q;->a:LU4/i;

    invoke-interface {v1}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, LU4/q;->b:LE3/b;

    invoke-interface {v3, v2}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, LF4/D;->l:LF4/D;

    invoke-static {p1, p2}, LU4/j;->e0(LE3/b;Ljava/lang/Object;)LU4/i;

    move-result-object p1

    invoke-interface {p1}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lr3/k;->h0()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p0, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast p0, LF4/k;

    iget-object p0, p0, LF4/k;->a:LF4/i;

    iget-object p0, p0, LF4/i;->l:Lw0/i;

    invoke-virtual {p0, p2, v0}, Lw0/i;->w(Ls4/b;Ljava/util/List;)LU3/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(I)LU3/O;
    .locals 2

    iget-object v0, p0, LF4/F;->i:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/O;

    if-nez v0, :cond_1

    iget-object p0, p0, LF4/F;->d:Ljava/lang/Object;

    check-cast p0, LF4/F;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LF4/F;->b(I)LU3/O;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public c(Ln4/Q;Z)LJ4/G;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v9, "proto"

    invoke-static {v1, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ln4/Q;->p()Z

    move-result v9

    const/16 v10, 0x80

    iget-object v11, v0, LF4/F;->c:Ljava/lang/Object;

    check-cast v11, LF4/k;

    if-eqz v9, :cond_0

    iget v9, v1, Ln4/Q;->l:I

    iget-object v12, v11, LF4/k;->b:Lp4/f;

    invoke-static {v12, v9}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object v9

    iget-boolean v9, v9, Ls4/b;->c:Z

    if-eqz v9, :cond_1

    iget-object v9, v11, LF4/k;->a:LF4/i;

    iget-object v9, v9, LF4/i;->g:LF4/j;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget v9, v1, Ln4/Q;->f:I

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_1

    iget v9, v1, Ln4/Q;->o:I

    iget-object v12, v11, LF4/k;->b:Lp4/f;

    invoke-static {v12, v9}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object v9

    iget-boolean v9, v9, Ls4/b;->c:Z

    if-eqz v9, :cond_1

    iget-object v9, v11, LF4/k;->a:LF4/i;

    iget-object v9, v9, LF4/i;->g:LF4/j;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ln4/Q;->p()Z

    move-result v9

    const/16 v18, 0x0

    if-eqz v9, :cond_2

    iget-object v6, v0, LF4/F;->g:Ljava/lang/Object;

    check-cast v6, LI4/j;

    iget v7, v1, Ln4/Q;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LU3/g;

    if-nez v6, :cond_8

    iget v6, v1, Ln4/Q;->l:I

    invoke-static {v0, v1, v6}, LF4/F;->g(LF4/F;Ln4/Q;I)LU3/e;

    move-result-object v6

    goto/16 :goto_3

    :cond_2
    iget v9, v1, Ln4/Q;->f:I

    and-int/lit8 v12, v9, 0x20

    if-ne v12, v7, :cond_3

    iget v6, v1, Ln4/Q;->m:I

    invoke-virtual {v0, v6}, LF4/F;->b(I)LU3/O;

    move-result-object v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown type parameter "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Ln4/Q;->m:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". Please try recompiling module containing \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, LF4/F;->f:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LJ4/v;->d(Ljava/lang/String;)LJ4/r;

    move-result-object v6

    :goto_1
    move-object v13, v6

    goto/16 :goto_4

    :cond_3
    and-int/lit8 v7, v9, 0x40

    if-ne v7, v6, :cond_7

    iget-object v6, v11, LF4/k;->b:Lp4/f;

    iget v7, v1, Ln4/Q;->n:I

    invoke-interface {v6, v7}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, LF4/F;->i:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v7}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, LU3/O;

    invoke-interface {v10}, LU3/j;->r()Ls4/f;

    move-result-object v10

    invoke-virtual {v10}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_5
    move-object/from16 v9, v18

    :goto_2
    move-object v7, v9

    check-cast v7, LU3/O;

    if-nez v7, :cond_6

    const-string v7, "Deserialized type parameter "

    const-string v9, " in "

    invoke-static {v7, v6, v9}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, LF4/k;->c:LU3/j;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LJ4/v;->d(Ljava/lang/String;)LJ4/r;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v7

    goto :goto_3

    :cond_7
    and-int/lit16 v6, v9, 0x80

    if-ne v6, v10, :cond_9

    iget-object v6, v0, LF4/F;->h:Ljava/lang/Object;

    check-cast v6, LI4/j;

    iget v7, v1, Ln4/Q;->o:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LU3/g;

    if-nez v6, :cond_8

    iget v6, v1, Ln4/Q;->o:I

    invoke-static {v0, v1, v6}, LF4/F;->g(LF4/F;Ln4/Q;I)LU3/e;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, LU3/g;->E()LJ4/M;

    move-result-object v6

    const-string v7, "classifier.typeConstructor"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v6, "Unknown type"

    invoke-static {v6}, LJ4/v;->d(Ljava/lang/String;)LJ4/r;

    move-result-object v6

    goto/16 :goto_1

    :goto_4
    invoke-interface {v13}, LJ4/M;->e()LU3/g;

    move-result-object v6

    invoke-static {v6}, LJ4/v;->g(LU3/j;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, LJ4/p;

    invoke-static {v0, v8}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object v14

    const/16 v17, 0x1c

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, LJ4/p;-><init>(LJ4/M;LC4/o;Ljava/util/List;ZI)V

    return-object v1

    :cond_a
    const/16 v0, 0x9

    invoke-static {v0}, LJ4/v;->a(I)V

    throw v18

    :cond_b
    new-instance v6, LH4/a;

    iget-object v7, v11, LF4/k;->a:LF4/i;

    iget-object v7, v7, LF4/i;->a:LI4/o;

    new-instance v9, LF4/C;

    invoke-direct {v9, v0, v8, v1}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v6, v7, v9}, LH4/a;-><init>(LI4/o;LE3/a;)V

    invoke-static {v1, v0}, LF4/F;->d(Ln4/Q;LF4/F;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v8

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    iget-object v15, v11, LF4/k;->d:LX3/C;

    iget-object v14, v11, LF4/k;->a:LF4/i;

    const-string v2, "typeTable"

    if-eqz v12, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v16, v10, 0x1

    if-ltz v10, :cond_15

    check-cast v12, Ln4/O;

    invoke-interface {v13}, LJ4/M;->g()Ljava/util/List;

    move-result-object v8

    const-string v3, "constructor.parameters"

    invoke-static {v8, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU3/O;

    iget-object v8, v12, Ln4/O;->f:Ln4/N;

    sget-object v10, Ln4/N;->h:Ln4/N;

    if-ne v8, v10, :cond_d

    if-nez v3, :cond_c

    new-instance v2, LJ4/J;

    iget-object v3, v14, LF4/i;->b:LU3/x;

    invoke-interface {v3}, LU3/x;->c()LR3/j;

    move-result-object v3

    invoke-direct {v2, v3}, LJ4/J;-><init>(LR3/j;)V

    goto :goto_6

    :cond_c
    new-instance v2, LJ4/K;

    invoke-direct {v2, v3}, LJ4/K;-><init>(LU3/O;)V

    :goto_6
    const/4 v3, 0x4

    goto :goto_9

    :cond_d
    const-string v3, "typeArgumentProto.projection"

    invoke-static {v8, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_10

    const/4 v10, 0x3

    if-eq v3, v5, :cond_11

    if-eq v3, v4, :cond_f

    if-eq v3, v10, :cond_e

    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-static {v8, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move v10, v5

    goto :goto_7

    :cond_10
    move v10, v4

    :cond_11
    :goto_7
    invoke-static {v15, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v12, Ln4/O;->e:I

    and-int/lit8 v3, v2, 0x2

    if-ne v3, v4, :cond_12

    iget-object v2, v12, Ln4/O;->g:Ln4/Q;

    const/4 v3, 0x4

    goto :goto_8

    :cond_12
    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_13

    iget v2, v12, Ln4/O;->h:I

    invoke-virtual {v15, v2}, LX3/C;->a(I)Ln4/Q;

    move-result-object v2

    goto :goto_8

    :cond_13
    move-object/from16 v2, v18

    :goto_8
    if-nez v2, :cond_14

    new-instance v2, LJ4/Q;

    const-string v8, "No type recorded"

    invoke-static {v8}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v8

    invoke-direct {v2, v5, v8}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_9

    :cond_14
    new-instance v8, LJ4/Q;

    invoke-virtual {v0, v2}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v2

    invoke-direct {v8, v10, v2}, LJ4/Q;-><init>(ILJ4/C;)V

    move-object v2, v8

    :goto_9
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v16

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_15
    invoke-static {}, Lr3/k;->i0()V

    throw v18

    :cond_16
    invoke-static {v9}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v13}, LJ4/M;->e()LU3/g;

    move-result-object v4

    if-eqz p2, :cond_1b

    instance-of v7, v4, LH4/v;

    if-eqz v7, :cond_1b

    check-cast v4, LH4/v;

    const-string v7, "<this>"

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, LJ4/d;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    iget-object v7, v4, LH4/v;->j:LX3/f;

    invoke-virtual {v7}, LX3/f;->g()Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LU3/O;

    invoke-interface {v9}, LU3/O;->a()LU3/O;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    invoke-static {v8, v3}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v16

    new-instance v20, Lw0/i;

    const/16 v17, 0x3

    move-object/from16 v12, v20

    move-object/from16 v13, v18

    move-object v7, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v3

    invoke-direct/range {v12 .. v17}, Lw0/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v3, LV3/g;->a:LV3/f;

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v22, 0x0

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v24}, LJ4/d;->g(Lw0/i;LV3/h;ZIZ)LJ4/G;

    move-result-object v8

    invoke-static {v8}, LJ4/Z;->e(LJ4/C;)Z

    move-result v9

    if-nez v9, :cond_19

    iget-boolean v9, v1, Ln4/Q;->h:Z

    if-eqz v9, :cond_18

    goto :goto_b

    :cond_18
    const/4 v5, 0x0

    :cond_19
    :goto_b
    invoke-virtual {v8, v5}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v5

    invoke-interface {v8}, LV3/a;->p()LV3/h;

    move-result-object v8

    invoke-static {v6, v8}, Lr3/j;->E0(LV3/h;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_c

    :cond_1a
    new-instance v3, LV3/i;

    const/4 v8, 0x0

    invoke-direct {v3, v8, v6}, LV3/i;-><init>(ILjava/util/List;)V

    :goto_c
    invoke-virtual {v5, v3}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object v3

    goto/16 :goto_13

    :cond_1b
    move-object v7, v14

    move-object v4, v15

    sget-object v8, Lp4/e;->a:Lp4/b;

    iget v9, v1, Ln4/Q;->t:I

    invoke-virtual {v8, v9}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_29

    iget-boolean v8, v1, Ln4/Q;->h:Z

    invoke-interface {v13}, LJ4/M;->g()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v9, v10

    if-eqz v9, :cond_1e

    if-eq v9, v5, :cond_1d

    :cond_1c
    move-object/from16 v5, v18

    goto/16 :goto_12

    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    if-ltz v9, :cond_1c

    invoke-interface {v13}, LJ4/M;->c()LR3/j;

    move-result-object v5

    invoke-virtual {v5, v9}, LR3/j;->u(I)LU3/e;

    move-result-object v5

    invoke-interface {v5}, LU3/g;->E()LJ4/M;

    move-result-object v5

    const-string v9, "functionTypeConstructor.\u2026on(arity).typeConstructor"

    invoke-static {v5, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v3, v8}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object v5

    goto/16 :goto_12

    :cond_1e
    invoke-static {v13, v6, v3, v8}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object v6

    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    invoke-interface {v8}, LJ4/M;->e()LU3/g;

    move-result-object v8

    if-nez v8, :cond_1f

    move-object/from16 v8, v18

    goto :goto_d

    :cond_1f
    invoke-static {v8}, LR3/f;->I(LU3/g;)LS3/e;

    move-result-object v8

    :goto_d
    sget-object v9, LS3/e;->g:LS3/e;

    if-ne v8, v9, :cond_1c

    iget-object v8, v7, LF4/i;->c:LF4/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, LR3/f;->N(LJ4/C;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lr3/j;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ4/P;

    if-nez v8, :cond_20

    move-object/from16 v8, v18

    goto :goto_e

    :cond_20
    invoke-virtual {v8}, LJ4/P;->b()LJ4/C;

    move-result-object v8

    :goto_e
    if-nez v8, :cond_21

    move-object/from16 v6, v18

    goto :goto_11

    :cond_21
    invoke-virtual {v8}, LJ4/C;->q0()LJ4/M;

    move-result-object v9

    invoke-interface {v9}, LJ4/M;->e()LU3/g;

    move-result-object v9

    if-nez v9, :cond_22

    move-object/from16 v9, v18

    goto :goto_f

    :cond_22
    invoke-static {v9}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v9

    :goto_f
    invoke-virtual {v8}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v5, :cond_27

    sget-object v5, LR3/q;->a:LX3/E;

    sget-object v5, LR3/p;->f:Ls4/c;

    invoke-static {v9, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    sget-object v5, LR3/p;->e:Ls4/c;

    invoke-static {v9, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_11

    :cond_23
    invoke-virtual {v8}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ4/P;

    invoke-virtual {v5}, LJ4/P;->b()LJ4/C;

    move-result-object v5

    const-string v8, "continuationArgumentType.arguments.single().type"

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v11, LF4/k;->c:LU3/j;

    instance-of v9, v8, LU3/a;

    if-nez v9, :cond_24

    move-object/from16 v8, v18

    :cond_24
    check-cast v8, LU3/a;

    if-nez v8, :cond_25

    move-object/from16 v8, v18

    goto :goto_10

    :cond_25
    invoke-static {v8}, Lz4/e;->c(LU3/k;)Ls4/c;

    move-result-object v8

    :goto_10
    sget-object v9, LF4/A;->a:Ls4/c;

    invoke-static {v8, v9}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-static {v6, v5}, LF4/F;->a(LJ4/G;LJ4/C;)LJ4/G;

    move-result-object v6

    goto :goto_11

    :cond_26
    iget-boolean v8, v0, LF4/F;->b:Z

    iput-boolean v8, v0, LF4/F;->b:Z

    invoke-static {v6, v5}, LF4/F;->a(LJ4/G;LJ4/C;)LJ4/G;

    move-result-object v6

    :cond_27
    :goto_11
    move-object v5, v6

    :goto_12
    if-nez v5, :cond_28

    const-string v5, "Bad suspend function in metadata with constructor: "

    invoke-static {v13, v5}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, LJ4/v;->f(Ljava/lang/String;Ljava/util/List;)LJ4/p;

    move-result-object v3

    goto :goto_13

    :cond_28
    move-object v3, v5

    goto :goto_13

    :cond_29
    iget-boolean v5, v1, Ln4/Q;->h:Z

    invoke-static {v13, v6, v3, v5}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object v3

    sget-object v5, Lp4/e;->b:Lp4/b;

    iget v6, v1, Ln4/Q;->t:I

    invoke-virtual {v5, v6}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x0

    invoke-static {v3, v5}, LJ4/c;->l(LJ4/b0;Z)LJ4/l;

    move-result-object v6

    if-eqz v6, :cond_2a

    move-object v3, v6

    goto :goto_13

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "null DefinitelyNotNullType for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    :goto_13
    invoke-static {v4, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Ln4/Q;->f:I

    const/16 v5, 0x400

    and-int/lit16 v6, v2, 0x400

    if-ne v6, v5, :cond_2c

    iget-object v2, v1, Ln4/Q;->r:Ln4/Q;

    goto :goto_14

    :cond_2c
    const/16 v5, 0x800

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_2d

    iget v2, v1, Ln4/Q;->s:I

    invoke-virtual {v4, v2}, LX3/C;->a(I)Ln4/Q;

    move-result-object v18

    :cond_2d
    move-object/from16 v2, v18

    :goto_14
    if-nez v2, :cond_2e

    goto :goto_15

    :cond_2e
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, LF4/F;->c(Ln4/Q;Z)LJ4/G;

    move-result-object v0

    invoke-static {v3, v0}, LJ4/c;->y(LJ4/G;LJ4/G;)LJ4/G;

    move-result-object v3

    :goto_15
    invoke-virtual/range {p1 .. p1}, Ln4/Q;->p()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, v1, Ln4/Q;->l:I

    iget-object v1, v11, LF4/k;->b:Lp4/f;

    invoke-static {v1, v0}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    iget-object v0, v7, LF4/i;->r:LW3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "computedType"

    invoke-static {v3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2f
    return-object v3
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, LF4/F;->b:Z

    iget-object v1, p0, LF4/F;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v2, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_3

    iget-object v3, p0, LF4/F;->i:Ljava/lang/Object;

    check-cast v3, Landroidx/appcompat/app/A;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, LF4/F;->h:Ljava/lang/Object;

    check-cast v4, Landroid/content/IntentFilter;

    if-nez v4, :cond_2

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, LF4/F;->h:Ljava/lang/Object;

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, LF4/F;->h:Ljava/lang/Object;

    check-cast v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, LF4/F;->h:Ljava/lang/Object;

    check-cast v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, LF4/F;->h:Ljava/lang/Object;

    check-cast v4, Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    :goto_0
    iget-object v3, p0, LF4/F;->g:Ljava/lang/Object;

    check-cast v3, LE1/f;

    if-nez v3, :cond_4

    new-instance v3, LE1/f;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v1, v4}, LE1/f;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object v3, p0, LF4/F;->g:Ljava/lang/Object;

    :cond_4
    if-eqz v2, :cond_5

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, LF4/F;->g:Ljava/lang/Object;

    check-cast v4, LE1/f;

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "system_locales"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, LF4/F;->g:Ljava/lang/Object;

    check-cast p0, LE1/f;

    invoke-virtual {v2, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    return-void
.end method

.method public f(Ln4/Q;)LJ4/C;
    .locals 8

    const-string v0, "proto"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Ln4/Q;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, LF4/F;->c:Ljava/lang/Object;

    check-cast v0, LF4/k;

    iget-object v1, v0, LF4/k;->b:Lp4/f;

    iget v3, p1, Ln4/Q;->i:I

    invoke-interface {v1, v3}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2}, LF4/F;->c(Ln4/Q;Z)LJ4/G;

    move-result-object v3

    const-string v4, "typeTable"

    iget-object v5, v0, LF4/k;->d:LX3/C;

    invoke-static {v5, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p1, Ln4/Q;->f:I

    and-int/lit8 v6, v4, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    iget-object v4, p1, Ln4/Q;->j:Ln4/Q;

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_2

    iget v4, p1, Ln4/Q;->k:I

    invoke-virtual {v5, v4}, LX3/C;->a(I)Ln4/Q;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v2}, LF4/F;->c(Ln4/Q;Z)LJ4/G;

    move-result-object p0

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->j:LF4/o;

    invoke-interface {v0, p1, v1, v3, p0}, LF4/o;->b(Ln4/Q;Ljava/lang/String;LJ4/G;LJ4/G;)LJ4/C;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, v2}, LF4/F;->c(Ln4/Q;Z)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LF4/F;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LF4/F;->d:Ljava/lang/Object;

    check-cast v0, LF4/F;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, ". Child of "

    iget-object v0, v0, LF4/F;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, LF4/F;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
