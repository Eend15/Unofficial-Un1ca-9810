.class public final LF4/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LF4/k;

.field public final b:Lw0/e;


# direct methods
.method public constructor <init>(LF4/k;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF4/u;->a:LF4/k;

    new-instance v0, Lw0/e;

    iget-object p1, p1, LF4/k;->a:LF4/i;

    iget-object v1, p1, LF4/i;->b:LU3/x;

    iget-object p1, p1, LF4/i;->l:Lw0/i;

    invoke-direct {v0, v1, p1}, Lw0/e;-><init>(LU3/x;Lw0/i;)V

    iput-object v0, p0, LF4/u;->b:Lw0/e;

    return-void
.end method


# virtual methods
.method public final a(LU3/j;)LF4/x;
    .locals 3

    instance-of v0, p1, LU3/B;

    if-eqz v0, :cond_0

    new-instance v0, LF4/w;

    check-cast p1, LU3/B;

    check-cast p1, LX3/F;

    iget-object p1, p1, LX3/F;->h:Ls4/c;

    iget-object p0, p0, LF4/u;->a:LF4/k;

    iget-object v1, p0, LF4/k;->b:Lp4/f;

    iget-object v2, p0, LF4/k;->d:LX3/C;

    iget-object p0, p0, LF4/k;->g:Ll4/e;

    invoke-direct {v0, p1, v1, v2, p0}, LF4/w;-><init>(Ls4/c;Lp4/f;LX3/C;Ll4/e;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, LH4/l;

    if-eqz p0, :cond_1

    check-cast p1, LH4/l;

    iget-object v0, p1, LH4/l;->y:LF4/v;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Lt4/m;II)LV3/h;
    .locals 3

    sget-object v0, Lp4/e;->c:Lp4/b;

    invoke-virtual {v0, p2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, LV3/g;->a:LV3/f;

    return-object p0

    :cond_0
    new-instance p2, LH4/x;

    iget-object v0, p0, LF4/u;->a:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->a:LI4/o;

    new-instance v1, LF4/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p3, v2}, LF4/q;-><init>(LF4/u;Lt4/m;II)V

    invoke-direct {p2, v0, v1}, LH4/x;-><init>(LI4/o;LE3/a;)V

    return-object p2
.end method

.method public final c(Ln4/G;Z)LV3/h;
    .locals 3

    sget-object v0, Lp4/e;->c:Lp4/b;

    iget v1, p1, Ln4/G;->g:I

    invoke-virtual {v0, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, LV3/g;->a:LV3/f;

    return-object p0

    :cond_0
    new-instance v0, LH4/x;

    iget-object v1, p0, LF4/u;->a:LF4/k;

    iget-object v1, v1, LF4/k;->a:LF4/i;

    iget-object v1, v1, LF4/i;->a:LI4/o;

    new-instance v2, LF4/r;

    invoke-direct {v2, p0, p2, p1}, LF4/r;-><init>(LF4/u;ZLn4/G;)V

    invoke-direct {v0, v1, v2}, LH4/x;-><init>(LI4/o;LE3/a;)V

    return-object v0
.end method

.method public final d(Ln4/l;Z)LH4/c;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v13, v0, LF4/u;->a:LF4/k;

    iget-object v1, v13, LF4/k;->c:LU3/j;

    move-object v14, v1

    check-cast v14, LU3/e;

    new-instance v15, LH4/c;

    iget v1, v12, Ln4/l;->g:I

    const/4 v11, 0x1

    invoke-virtual {v0, v12, v1, v11}, LF4/u;->b(Lt4/m;II)LV3/h;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x1

    iget-object v7, v13, LF4/k;->b:Lp4/f;

    iget-object v8, v13, LF4/k;->d:LX3/C;

    iget-object v9, v13, LF4/k;->e:Lp4/h;

    iget-object v10, v13, LF4/k;->g:Ll4/e;

    move-object v0, v15

    move-object v1, v14

    move/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v17, v14

    move v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, LH4/c;-><init>(LU3/e;LU3/i;LV3/h;ZILn4/l;Lp4/f;LX3/C;Lp4/h;Ll4/e;LU3/L;)V

    sget-object v0, Lr3/r;->d:Lr3/r;

    invoke-static {v13, v15, v0}, LF4/k;->b(LF4/k;LX3/q;Ljava/util/List;)LF4/k;

    move-result-object v0

    iget-object v1, v12, Ln4/l;->h:Ljava/util/List;

    const-string v2, "proto.valueParameterList"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LF4/k;->i:LF4/u;

    invoke-virtual {v0, v1, v12, v14}, LF4/u;->g(Ljava/util/List;Lt4/m;I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lp4/e;->d:Lp4/c;

    iget v2, v12, Ln4/l;->g:I

    invoke-virtual {v1, v2}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/f0;

    invoke-static {v1}, Lw0/f;->q(Ln4/f0;)LU3/n;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, LX3/l;->U0(Ljava/util/List;LU3/n;)V

    invoke-interface/range {v17 .. v17}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {v15, v0}, LX3/w;->Q0(LJ4/G;)V

    sget-object v0, Lp4/e;->n:Lp4/b;

    iget v1, v12, Ln4/l;->g:I

    invoke-virtual {v0, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v14

    iput-boolean v0, v15, LX3/w;->x:Z

    iget-object v0, v13, LF4/k;->c:LU3/j;

    instance-of v1, v0, LH4/l;

    if-eqz v1, :cond_0

    check-cast v0, LH4/l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, LH4/l;->o:LF4/k;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, LF4/k;->h:LF4/F;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, v0, LF4/F;->b:Z

    if-ne v0, v14, :cond_4

    iget-object v0, v13, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->c:LF4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_1
    invoke-virtual {v15}, LX3/w;->n0()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.valueParameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, LX3/w;->q()Ljava/util/List;

    iget-object v0, v13, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->c:LF4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v14, v15, LH4/c;->M:I

    return-object v15
.end method

.method public final e(Ln4/y;)LH4/u;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v12, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v12, Ln4/y;->f:I

    const/4 v13, 0x1

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_0

    iget v1, v12, Ln4/y;->g:I

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_0
    iget v1, v12, Ln4/y;->h:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v12, v14, v13}, LF4/u;->b(Lt4/m;II)LV3/h;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ln4/y;->p()Z

    move-result v1

    iget-object v15, v0, LF4/u;->a:LF4/k;

    if-nez v1, :cond_2

    iget v1, v12, Ln4/y;->f:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, LV3/g;->a:LV3/f;

    move-object v11, v0

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v1, LH4/a;

    iget-object v2, v15, LF4/k;->a:LF4/i;

    iget-object v2, v2, LF4/i;->a:LI4/o;

    new-instance v4, LF4/q;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v12, v13, v5}, LF4/q;-><init>(LF4/u;Lt4/m;II)V

    invoke-direct {v1, v2, v4}, LH4/a;-><init>(LI4/o;LE3/a;)V

    move-object v11, v1

    :goto_3
    iget-object v0, v15, LF4/k;->c:LU3/j;

    invoke-static {v0}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v0

    iget v1, v12, Ln4/y;->i:I

    iget-object v2, v15, LF4/k;->b:Lp4/f;

    invoke-static {v2, v1}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object v0

    sget-object v1, LF4/A;->a:Ls4/c;

    invoke-virtual {v0, v1}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lp4/h;->a:Lp4/h;

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_3
    iget-object v0, v15, LF4/k;->e:Lp4/h;

    goto :goto_4

    :goto_5
    new-instance v10, LH4/u;

    iget v0, v12, Ln4/y;->i:I

    invoke-static {v2, v0}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v4

    sget-object v0, Lp4/e;->o:Lp4/c;

    invoke-virtual {v0, v14}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/z;

    invoke-static {v0}, Lw0/f;->D(Ln4/z;)I

    move-result v5

    const/4 v2, 0x0

    const/16 v16, 0x0

    iget-object v1, v15, LF4/k;->c:LU3/j;

    iget-object v7, v15, LF4/k;->b:Lp4/f;

    iget-object v8, v15, LF4/k;->d:LX3/C;

    iget-object v6, v15, LF4/k;->g:Ll4/e;

    move-object v0, v10

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    move-object v13, v10

    move-object/from16 v10, v17

    move/from16 v25, v14

    move-object v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, LH4/u;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILn4/y;Lp4/f;LX3/C;Lp4/h;Ll4/e;LU3/L;)V

    iget-object v0, v12, Ln4/y;->l:Ljava/util/List;

    const-string v1, "proto.typeParameterList"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v13, v0}, LF4/k;->b(LF4/k;LX3/q;Ljava/util/List;)LF4/k;

    move-result-object v0

    iget-object v1, v15, LF4/k;->d:LX3/C;

    invoke-static {v12, v1}, Lj0/s;->F(Ln4/y;LX3/C;)Ln4/Q;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, LF4/k;->h:LF4/F;

    if-nez v2, :cond_4

    :goto_6
    move-object/from16 v17, v3

    goto :goto_7

    :cond_4
    invoke-virtual {v4, v2}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {v13, v2, v14}, Lv4/p;->i(LU3/a;LJ4/C;LV3/h;)LX3/O;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_7
    iget-object v2, v15, LF4/k;->c:LU3/j;

    instance-of v5, v2, LU3/e;

    if-eqz v5, :cond_6

    check-cast v2, LU3/e;

    goto :goto_8

    :cond_6
    move-object v2, v3

    :goto_8
    if-nez v2, :cond_7

    move-object/from16 v18, v3

    goto :goto_9

    :cond_7
    invoke-interface {v2}, LU3/e;->y0()LU3/J;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_9
    iget-object v2, v4, LF4/F;->i:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v19

    iget-object v2, v12, Ln4/y;->o:Ljava/util/List;

    const-string v3, "proto.valueParameterList"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LF4/k;->i:LF4/u;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v12, v3}, LF4/u;->g(Ljava/util/List;Lt4/m;I)Ljava/util/List;

    move-result-object v20

    invoke-static {v12, v1}, Lj0/s;->G(Ln4/y;LX3/C;)Ln4/Q;

    move-result-object v0

    invoke-virtual {v4, v0}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v21

    sget-object v0, Lp4/e;->e:Lp4/c;

    move/from16 v2, v25

    invoke-virtual {v0, v2}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/A;

    invoke-static {v0}, LF4/j;->e(Ln4/A;)I

    move-result v22

    sget-object v0, Lp4/e;->d:Lp4/c;

    invoke-virtual {v0, v2}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/f0;

    invoke-static {v0}, Lw0/f;->q(Ln4/f0;)LU3/n;

    move-result-object v23

    sget-object v24, Lr3/s;->d:Lr3/s;

    sget-object v0, Lp4/e;->u:Lp4/b;

    invoke-virtual {v0, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    iget-object v3, v15, LF4/k;->a:LF4/i;

    iget-object v3, v3, LF4/i;->c:LF4/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v24}, LX3/P;->U0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;Lr3/s;)LX3/P;

    sget-object v3, Lp4/e;->p:Lp4/b;

    invoke-virtual {v3, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v13, LX3/w;->o:Z

    sget-object v3, Lp4/e;->q:Lp4/b;

    invoke-virtual {v3, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v13, LX3/w;->p:Z

    sget-object v3, Lp4/e;->t:Lp4/b;

    invoke-virtual {v3, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v13, LX3/w;->q:Z

    sget-object v3, Lp4/e;->r:Lp4/b;

    invoke-virtual {v3, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v13, LX3/w;->r:Z

    sget-object v3, Lp4/e;->s:Lp4/b;

    invoke-virtual {v3, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v13, LX3/w;->s:Z

    invoke-virtual {v0, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LX3/w;->w:Z

    sget-object v0, Lp4/e;->v:Lp4/b;

    invoke-virtual {v0, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LX3/w;->t:Z

    sget-object v0, Lp4/e;->w:Lp4/b;

    invoke-virtual {v0, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, v13, LX3/w;->x:Z

    iget-object v0, v15, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->m:LF4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "typeTable"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v13
.end method

.method public final f(Ln4/G;)LH4/t;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "proto"

    invoke-static {v15, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v15, Ln4/G;->f:I

    const/4 v14, 0x1

    and-int/2addr v1, v14

    const/16 v20, 0x6

    if-ne v1, v14, :cond_0

    iget v1, v15, Ln4/G;->g:I

    :goto_0
    move v13, v1

    goto :goto_1

    :cond_0
    iget v1, v15, Ln4/G;->h:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    new-instance v12, LH4/t;

    iget-object v11, v0, LF4/u;->a:LF4/k;

    iget-object v2, v11, LF4/k;->c:LU3/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v15, v13, v1}, LF4/u;->b(Lt4/m;II)LV3/h;

    move-result-object v4

    sget-object v10, Lp4/e;->e:Lp4/c;

    invoke-virtual {v10, v13}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/A;

    invoke-static {v1}, LF4/j;->e(Ln4/A;)I

    move-result v5

    sget-object v9, Lp4/e;->d:Lp4/c;

    invoke-virtual {v9, v13}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/f0;

    invoke-static {v1}, Lw0/f;->q(Ln4/f0;)LU3/n;

    move-result-object v6

    sget-object v1, Lp4/e;->x:Lp4/b;

    invoke-virtual {v1, v13}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v1, v15, Ln4/G;->i:I

    iget-object v3, v11, LF4/k;->b:Lp4/f;

    invoke-static {v3, v1}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v8

    sget-object v1, Lp4/e;->o:Lp4/c;

    invoke-virtual {v1, v13}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/z;

    invoke-static {v1}, Lw0/f;->D(Ln4/z;)I

    move-result v21

    sget-object v1, Lp4/e;->B:Lp4/b;

    invoke-virtual {v1, v13}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    sget-object v1, Lp4/e;->A:Lp4/b;

    invoke-virtual {v1, v13}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    sget-object v1, Lp4/e;->D:Lp4/b;

    invoke-virtual {v1, v13}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    sget-object v1, Lp4/e;->E:Lp4/b;

    invoke-virtual {v1, v13}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    sget-object v1, Lp4/e;->F:Lp4/b;

    invoke-virtual {v1, v13}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    const/4 v3, 0x0

    iget-object v1, v11, LF4/k;->b:Lp4/f;

    move-object/from16 v16, v1

    iget-object v1, v11, LF4/k;->d:LX3/C;

    move-object/from16 v17, v1

    iget-object v1, v11, LF4/k;->e:Lp4/h;

    move-object/from16 v18, v1

    iget-object v1, v11, LF4/k;->g:Ll4/e;

    move-object/from16 v19, v1

    move-object v1, v12

    move-object/from16 v27, v9

    move/from16 v9, v21

    move-object/from16 v28, v10

    move/from16 v10, v22

    move-object/from16 v29, v11

    move/from16 v11, v23

    move-object/from16 v30, v12

    move/from16 v12, v24

    move/from16 v31, v13

    move/from16 v13, v25

    move/from16 v14, v26

    move-object v0, v15

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v19}, LH4/t;-><init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;IZZZZZLn4/G;Lp4/f;LX3/C;Lp4/h;Ll4/e;)V

    iget-object v1, v0, Ln4/G;->l:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v29

    move-object/from16 v12, v30

    invoke-static {v13, v12, v1}, LF4/k;->b(LF4/k;LX3/q;Ljava/util/List;)LF4/k;

    move-result-object v14

    sget-object v1, Lp4/e;->y:Lp4/b;

    move/from16 v15, v31

    invoke-virtual {v1, v15}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, LV3/g;->a:LV3/f;

    const/16 v3, 0x40

    const/4 v4, 0x3

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ln4/G;->p()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v0, Ln4/G;->f:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v11, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v2, LH4/a;

    iget-object v5, v13, LF4/k;->a:LF4/i;

    iget-object v5, v5, LF4/i;->a:LI4/o;

    new-instance v6, LF4/q;

    const/4 v7, 0x1

    move-object v11, v0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11, v4, v7}, LF4/q;-><init>(LF4/u;Lt4/m;II)V

    invoke-direct {v2, v5, v6}, LH4/a;-><init>(LI4/o;LE3/a;)V

    :goto_3
    iget-object v5, v13, LF4/k;->d:LX3/C;

    invoke-static {v11, v5}, Lj0/s;->H(Ln4/G;LX3/C;)Ln4/Q;

    move-result-object v6

    iget-object v7, v14, LF4/k;->h:LF4/F;

    invoke-virtual {v7, v6}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v6

    iget-object v8, v7, LF4/F;->i:Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v13, LF4/k;->c:LU3/j;

    instance-of v10, v9, LU3/e;

    const/16 v16, 0x0

    if-eqz v10, :cond_3

    check-cast v9, LU3/e;

    goto :goto_4

    :cond_3
    move-object/from16 v9, v16

    :goto_4
    if-nez v9, :cond_4

    move-object/from16 v9, v16

    goto :goto_5

    :cond_4
    invoke-interface {v9}, LU3/e;->y0()LU3/J;

    move-result-object v9

    :goto_5
    const-string v10, "typeTable"

    invoke-static {v5, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ln4/G;->p()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v3, v11, Ln4/G;->m:Ln4/Q;

    goto :goto_6

    :cond_5
    iget v10, v11, Ln4/G;->f:I

    and-int/2addr v10, v3

    if-ne v10, v3, :cond_6

    iget v3, v11, Ln4/G;->n:I

    invoke-virtual {v5, v3}, LX3/C;->a(I)Ln4/Q;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object/from16 v3, v16

    :goto_6
    if-nez v3, :cond_7

    :goto_7
    move-object/from16 v2, v16

    goto :goto_8

    :cond_7
    invoke-virtual {v7, v3}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v12, v3, v2}, Lv4/p;->i(LU3/a;LJ4/C;LV3/h;)LX3/O;

    move-result-object v2

    :goto_8
    invoke-virtual {v12, v6, v8, v9, v2}, LX3/L;->L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V

    sget-object v2, Lp4/e;->c:Lp4/b;

    invoke-virtual {v2, v15}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v10, v27

    invoke-virtual {v10, v15}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln4/f0;

    move-object/from16 v9, v28

    invoke-virtual {v9, v15}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln4/A;

    if-eqz v5, :cond_13

    if-eqz v6, :cond_12

    const/4 v8, 0x0

    if-eqz v3, :cond_9

    iget v2, v2, Lp4/d;->a:I

    const/4 v7, 0x1

    shl-int v2, v7, v2

    goto :goto_9

    :cond_9
    const/4 v7, 0x1

    move v2, v8

    :goto_9
    invoke-interface {v6}, Lt4/q;->a()I

    move-result v3

    iget v6, v9, Lp4/d;->a:I

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    invoke-interface {v5}, Lt4/q;->a()I

    move-result v3

    iget v5, v10, Lp4/d;->a:I

    shl-int/2addr v3, v5

    or-int v17, v2, v3

    sget-object v6, Lp4/e;->J:Lp4/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lp4/e;->K:Lp4/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lp4/e;->L:Lp4/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v18, LU3/L;->a:LU3/M;

    if-eqz v1, :cond_c

    iget v1, v11, Ln4/G;->f:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    iget v1, v11, Ln4/G;->p:I

    goto :goto_a

    :cond_a
    move/from16 v1, v17

    :goto_a
    invoke-virtual {v6, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    invoke-virtual {v3, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual {v0, v11, v1, v4}, LF4/u;->b(Lt4/m;II)LV3/h;

    move-result-object v4

    if-eqz v2, :cond_b

    new-instance v22, LX3/M;

    invoke-virtual {v9, v1}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ln4/A;

    invoke-static/range {v23 .. v23}, LF4/j;->e(Ln4/A;)I

    move-result v23

    invoke-virtual {v10, v1}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/f0;

    invoke-static {v1}, Lw0/f;->q(Ln4/f0;)LU3/n;

    move-result-object v24

    xor-int/lit8 v25, v2, 0x1

    invoke-virtual {v12}, LX3/L;->f0()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v1, v22

    move-object v2, v12

    move-object/from16 v32, v3

    move-object v3, v4

    move/from16 v4, v23

    move-object/from16 v33, v5

    move-object/from16 v5, v24

    move-object/from16 v34, v6

    move/from16 v6, v25

    move/from16 v7, v19

    move/from16 v8, v21

    move-object/from16 v29, v13

    move-object v13, v9

    move/from16 v9, v26

    move-object/from16 v19, v14

    move-object v14, v10

    move-object/from16 v10, v27

    move-object/from16 v27, v14

    move-object v14, v11

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, LX3/M;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/M;LU3/L;)V

    goto :goto_b

    :cond_b
    move-object/from16 v32, v3

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v27, v10

    move-object/from16 v29, v13

    move-object/from16 v19, v14

    move-object v13, v9

    move-object v14, v11

    invoke-static {v4, v12}, Lv4/p;->e(LV3/h;LX3/L;)LX3/M;

    move-result-object v22

    move-object/from16 v1, v22

    :goto_b
    invoke-virtual {v12}, LX3/L;->k()LJ4/C;

    move-result-object v2

    invoke-virtual {v1, v2}, LX3/M;->K0(LJ4/C;)V

    move-object v11, v1

    goto :goto_c

    :cond_c
    move-object/from16 v32, v3

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v27, v10

    move-object/from16 v29, v13

    move-object/from16 v19, v14

    move-object v13, v9

    move-object v14, v11

    move-object/from16 v11, v16

    :goto_c
    sget-object v1, Lp4/e;->z:Lp4/b;

    invoke-virtual {v1, v15}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, v14, Ln4/G;->f:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    iget v1, v14, Ln4/G;->q:I

    :goto_d
    move-object/from16 v2, v34

    goto :goto_e

    :cond_d
    move/from16 v1, v17

    goto :goto_d

    :goto_e
    invoke-virtual {v2, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v3, v33

    invoke-virtual {v3, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v3, v32

    invoke-virtual {v3, v1}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v10, 0x4

    invoke-virtual {v0, v14, v1, v10}, LF4/u;->b(Lt4/m;II)LV3/h;

    move-result-object v3

    if-eqz v2, :cond_f

    new-instance v9, LX3/N;

    invoke-virtual {v13, v1}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln4/A;

    invoke-static {v4}, LF4/j;->e(Ln4/A;)I

    move-result v4

    move-object/from16 v5, v27

    invoke-virtual {v5, v1}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/f0;

    invoke-static {v1}, Lw0/f;->q(Ln4/f0;)LU3/n;

    move-result-object v5

    const/4 v13, 0x1

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v12}, LX3/L;->f0()I

    move-result v17

    const/16 v21, 0x0

    move-object v1, v9

    move-object v2, v12

    move-object v13, v9

    move/from16 v9, v17

    move v0, v10

    move-object/from16 v10, v21

    move-object/from16 v35, v11

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, LX3/N;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/N;LU3/L;)V

    sget-object v1, Lr3/r;->d:Lr3/r;

    move-object/from16 v2, v19

    invoke-static {v2, v13, v1}, LF4/k;->b(LF4/k;LX3/q;Ljava/util/List;)LF4/k;

    move-result-object v1

    iget-object v2, v14, Ln4/G;->o:Ln4/Z;

    invoke-static {v2}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, LF4/k;->i:LF4/u;

    invoke-virtual {v1, v2, v14, v0}, LF4/u;->g(Ljava/util/List;Lt4/m;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/W;

    if-eqz v0, :cond_e

    iput-object v0, v13, LX3/N;->p:LX3/W;

    goto :goto_10

    :cond_e
    invoke-static/range {v20 .. v20}, LX3/N;->z0(I)V

    throw v16

    :cond_f
    move-object/from16 v35, v11

    invoke-static {v3, v12}, Lv4/p;->f(LV3/h;LX3/L;)LX3/N;

    move-result-object v16

    :goto_f
    move-object/from16 v13, v16

    goto :goto_10

    :cond_10
    move-object/from16 v35, v11

    goto :goto_f

    :goto_10
    sget-object v0, Lp4/e;->C:Lp4/b;

    invoke-virtual {v0, v15}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v0, v29

    iget-object v1, v0, LF4/k;->a:LF4/i;

    iget-object v1, v1, LF4/i;->a:LI4/o;

    new-instance v2, LF4/s;

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v14, v12, v3}, LF4/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v1, LI4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/h;

    invoke-direct {v3, v1, v2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v3, v12, LX3/L;->j:LI4/h;

    goto :goto_11

    :cond_11
    move-object/from16 v4, p0

    move-object/from16 v0, v29

    :goto_11
    new-instance v1, LX3/u;

    const/4 v2, 0x0

    invoke-virtual {v4, v14, v2}, LF4/u;->c(Ln4/G;Z)LV3/h;

    move-result-object v2

    invoke-direct {v1, v2}, LD4/a;-><init>(LV3/h;)V

    new-instance v2, LX3/u;

    const/4 v3, 0x1

    invoke-virtual {v4, v14, v3}, LF4/u;->c(Ln4/G;Z)LV3/h;

    move-result-object v3

    invoke-direct {v2, v3}, LD4/a;-><init>(LV3/h;)V

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->c:LF4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v35

    invoke-virtual {v12, v0, v13, v1, v2}, LX3/L;->K0(LX3/M;LX3/N;LX3/u;LX3/u;)V

    return-object v12

    :cond_12
    const/16 v0, 0xb

    invoke-static {v0}, Lp4/e;->a(I)V

    throw v16

    :cond_13
    const/16 v0, 0xa

    invoke-static {v0}, Lp4/e;->a(I)V

    throw v16
.end method

.method public final g(Ljava/util/List;Lt4/m;I)Ljava/util/List;
    .locals 26

    move-object/from16 v7, p0

    iget-object v8, v7, LF4/u;->a:LF4/k;

    iget-object v0, v8, LF4/k;->c:LU3/j;

    move-object/from16 v21, v0

    check-cast v21, LU3/a;

    invoke-interface/range {v21 .. v21}, LU3/j;->g()LU3/j;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, LF4/u;->a(LU3/j;)LF4/x;

    move-result-object v22

    new-instance v15, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v12, v24

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v25, v12, 0x1

    if-ltz v12, :cond_5

    move-object v10, v0

    check-cast v10, Ln4/Z;

    iget v0, v10, Ln4/Z;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, v10, Ln4/Z;->g:I

    move v11, v0

    goto :goto_1

    :cond_0
    move/from16 v11, v24

    :goto_1
    if-eqz v22, :cond_1

    sget-object v0, Lp4/e;->c:Lp4/b;

    invoke-virtual {v0, v11}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v13, LH4/x;

    iget-object v0, v8, LF4/k;->a:LF4/i;

    iget-object v14, v0, LF4/i;->a:LI4/o;

    new-instance v6, LF4/t;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move/from16 v4, p3

    move v5, v12

    move-object v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, LF4/t;-><init>(LF4/u;LF4/x;Lt4/m;IILn4/Z;)V

    invoke-direct {v13, v14, v9}, LH4/x;-><init>(LI4/o;LE3/a;)V

    goto :goto_2

    :cond_1
    sget-object v0, LV3/g;->a:LV3/f;

    move-object v13, v0

    :goto_2
    iget v0, v10, Ln4/Z;->h:I

    iget-object v1, v8, LF4/k;->b:Lp4/f;

    invoke-static {v1, v0}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v14

    iget-object v0, v8, LF4/k;->d:LX3/C;

    invoke-static {v10, v0}, Lj0/s;->K(Ln4/Z;LX3/C;)Ln4/Q;

    move-result-object v1

    iget-object v2, v8, LF4/k;->h:LF4/F;

    invoke-virtual {v2, v1}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v1

    sget-object v3, Lp4/e;->G:Lp4/b;

    invoke-virtual {v3, v11}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    sget-object v3, Lp4/e;->H:Lp4/b;

    invoke-virtual {v3, v11}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    sget-object v3, Lp4/e;->I:Lp4/b;

    invoke-virtual {v3, v11}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const-string v3, "typeTable"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v10, Ln4/Z;->f:I

    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    iget-object v0, v10, Ln4/Z;->k:Ln4/Q;

    goto :goto_3

    :cond_2
    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    iget v3, v10, Ln4/Z;->l:I

    invoke-virtual {v0, v3}, LX3/C;->a(I)Ln4/Q;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_4

    const/16 v19, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v0}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v0

    move-object/from16 v19, v0

    :goto_4
    sget-object v20, LU3/L;->a:LU3/M;

    new-instance v0, LX3/W;

    const/4 v11, 0x0

    move-object v9, v0

    move-object/from16 v10, v21

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v9 .. v20}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    move/from16 v12, v25

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lr3/k;->i0()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    move-object v2, v15

    invoke-static {v2}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
