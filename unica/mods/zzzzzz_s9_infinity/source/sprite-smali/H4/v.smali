.class public final LH4/v;
.super LX3/q;
.source "SourceFile"

# interfaces
.implements LH4/n;
.implements LU3/h;


# instance fields
.field public final h:LU3/n;

.field public i:Ljava/util/List;

.field public final j:LX3/f;

.field public final k:LI4/o;

.field public final l:Ln4/T;

.field public final m:Lp4/f;

.field public final n:LX3/C;

.field public final o:Lp4/h;

.field public final p:Ll4/e;

.field public q:LJ4/G;

.field public r:LJ4/G;

.field public s:Ljava/util/List;

.field public t:LJ4/G;

.field public u:I


# direct methods
.method public constructor <init>(LI4/o;LU3/j;LV3/h;Ls4/f;LU3/n;Ln4/T;Lp4/f;LX3/C;Lp4/h;Ll4/e;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU3/L;->a:LU3/M;

    invoke-direct {p0, p2, p3, p4, v0}, LX3/q;-><init>(LU3/j;LV3/h;Ls4/f;LU3/L;)V

    iput-object p5, p0, LH4/v;->h:LU3/n;

    new-instance p2, LX3/f;

    invoke-direct {p2, p0}, LX3/f;-><init>(LH4/v;)V

    iput-object p2, p0, LH4/v;->j:LX3/f;

    iput-object p1, p0, LH4/v;->k:LI4/o;

    iput-object p6, p0, LH4/v;->l:Ln4/T;

    iput-object p7, p0, LH4/v;->m:Lp4/f;

    iput-object p8, p0, LH4/v;->n:LX3/C;

    iput-object p9, p0, LH4/v;->o:Lp4/h;

    iput-object p10, p0, LH4/v;->p:Ll4/e;

    const/4 p1, 0x1

    iput p1, p0, LH4/v;->u:I

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

    iget-object p0, p0, LH4/v;->j:LX3/f;

    return-object p0
.end method

.method public final G0()LU3/k;
    .locals 0

    return-object p0
.end method

.method public final H0()LU3/e;
    .locals 2

    invoke-virtual {p0}, LH4/v;->I0()LJ4/G;

    move-result-object v0

    invoke-static {v0}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LH4/v;->I0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, LU3/e;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final I0()LJ4/G;
    .locals 0

    iget-object p0, p0, LH4/v;->r:LJ4/G;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "expandedType"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J0()LJ4/G;
    .locals 0

    iget-object p0, p0, LH4/v;->q:LJ4/G;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "underlyingType"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K0(Ljava/util/List;LJ4/G;LJ4/G;I)V
    .locals 28

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v9, p4

    const-string v2, "underlyingType"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "expandedType"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "isExperimentalCoroutineInReleaseEnvironment"

    invoke-static {v9, v2}, LB/a;->t(ILjava/lang/String;)V

    move-object/from16 v2, p1

    iput-object v2, v8, LH4/v;->i:Ljava/util/List;

    iput-object v0, v8, LH4/v;->q:LJ4/G;

    iput-object v1, v8, LH4/v;->r:LJ4/G;

    invoke-static/range {p0 .. p0}, LR3/f;->m(LU3/h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, LH4/v;->s:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, LH4/v;->H0()LU3/e;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    move-object v0, v10

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LU3/e;->a0()LC4/o;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, LC4/n;->b:LC4/n;

    :cond_1
    new-instance v1, LX3/e;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, LX3/e;-><init>(LH4/v;I)V

    invoke-static {v8, v0, v1}, LJ4/Z;->k(LU3/g;LC4/o;LE3/b;)LJ4/G;

    move-result-object v0

    iput-object v0, v8, LH4/v;->t:LJ4/G;

    invoke-virtual/range {p0 .. p0}, LH4/v;->H0()LU3/e;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-interface {v0}, LU3/e;->P()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "classDescriptor.constructors"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/d;

    sget-object v1, LX3/T;->I:LX3/G;

    const-string v2, "it"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "storageManager"

    iget-object v2, v8, LH4/v;->k:LI4/o;

    invoke-static {v2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LH4/v;->H0()LU3/e;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v15, v10

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, LH4/v;->I0()LJ4/G;

    move-result-object v1

    invoke-static {v1}, LJ4/X;->d(LJ4/C;)LJ4/X;

    move-result-object v1

    move-object v15, v1

    :goto_2
    if-nez v15, :cond_5

    :goto_3
    move-object v14, v10

    goto/16 :goto_5

    :cond_5
    move-object v1, v0

    check-cast v1, LX3/l;

    invoke-virtual {v1, v15}, LX3/l;->W0(LJ4/X;)LU3/d;

    move-result-object v19

    if-nez v19, :cond_6

    goto :goto_3

    :cond_6
    new-instance v14, LX3/T;

    move-object v1, v0

    check-cast v1, LD4/a;

    invoke-virtual {v1}, LD4/a;->p()LV3/h;

    move-result-object v5

    move-object v13, v0

    check-cast v13, LX3/w;

    invoke-virtual {v13}, LX3/w;->f0()I

    move-result v6

    const-string v0, "constructor.kind"

    invoke-static {v6, v0}, LB/a;->y(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX3/q;->i()LU3/L;

    move-result-object v7

    const-string v0, "typeAliasDescriptor.source"

    invoke-static {v7, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, v14

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    invoke-direct/range {v0 .. v7}, LX3/T;-><init>(LI4/o;LH4/v;LU3/d;LX3/S;LV3/h;ILU3/L;)V

    invoke-virtual {v13}, LX3/w;->n0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v13

    move-object v13, v14

    move-object v2, v14

    move-object v14, v0

    move-object v0, v15

    invoke-static/range {v13 .. v18}, LX3/w;->L0(LU3/s;Ljava/util/List;LJ4/X;ZZ[Z)Ljava/util/ArrayList;

    move-result-object v24

    if-nez v24, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v3, v19

    check-cast v3, LX3/w;

    iget-object v3, v3, LX3/w;->j:LJ4/C;

    invoke-virtual {v3}, LJ4/C;->B0()LJ4/b0;

    move-result-object v3

    invoke-static {v3}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, LH4/v;->n()LJ4/G;

    move-result-object v4

    invoke-static {v3, v4}, LJ4/c;->y(LJ4/G;LJ4/G;)LJ4/G;

    move-result-object v25

    iget-object v1, v1, LX3/w;->l:LU3/J;

    if-nez v1, :cond_8

    move-object/from16 v21, v10

    goto :goto_4

    :cond_8
    check-cast v1, LX3/d;

    invoke-virtual {v1}, LX3/d;->j()LJ4/C;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, LJ4/X;->g(ILJ4/C;)LJ4/C;

    move-result-object v0

    sget-object v1, LV3/g;->a:LV3/f;

    invoke-static {v2, v0, v1}, Lv4/p;->i(LU3/a;LJ4/C;LV3/h;)LX3/O;

    move-result-object v0

    move-object/from16 v21, v0

    :goto_4
    invoke-virtual/range {p0 .. p0}, LH4/v;->o()Ljava/util/List;

    move-result-object v23

    const/16 v22, 0x0

    iget-object v0, v8, LH4/v;->h:LU3/n;

    const/16 v26, 0x1

    move-object/from16 v20, v2

    move-object/from16 v27, v0

    invoke-virtual/range {v20 .. v27}, LX3/w;->M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V

    move-object v14, v2

    :goto_5
    if-eqz v14, :cond_3

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x1a

    invoke-static {v0}, LX3/w;->z0(I)V

    throw v10

    :cond_a
    :goto_6
    iput v9, v8, LH4/v;->u:I

    return-void
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->l(LH4/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final W()LX3/C;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()LU3/g;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a()LU3/j;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final b()LU3/n;
    .locals 0

    iget-object p0, p0, LH4/v;->h:LU3/n;

    return-object p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g0()Lt4/b;
    .locals 0

    iget-object p0, p0, LH4/v;->l:Ln4/T;

    return-object p0
.end method

.method public final l(LJ4/X;)LU3/k;
    .locals 12

    const-string v0, "substitutor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LJ4/X;->a:LJ4/U;

    invoke-virtual {v0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LH4/v;

    invoke-virtual {p0}, LX3/q;->g()LU3/j;

    move-result-object v3

    const-string v1, "containingDeclaration"

    invoke-static {v3, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v4, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object v5

    const-string v1, "name"

    invoke-static {v5, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, LH4/v;->m:Lp4/f;

    iget-object v9, p0, LH4/v;->n:LX3/C;

    iget-object v2, p0, LH4/v;->k:LI4/o;

    iget-object v6, p0, LH4/v;->h:LU3/n;

    iget-object v7, p0, LH4/v;->l:Ln4/T;

    iget-object v10, p0, LH4/v;->o:Lp4/h;

    iget-object v11, p0, LH4/v;->p:Ll4/e;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, LH4/v;-><init>(LI4/o;LU3/j;LV3/h;Ls4/f;LU3/n;Ln4/T;Lp4/f;LX3/C;Lp4/h;Ll4/e;)V

    invoke-virtual {p0}, LH4/v;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, LH4/v;->J0()LJ4/G;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, LJ4/X;->g(ILJ4/C;)LJ4/C;

    move-result-object v2

    invoke-static {v2}, LJ4/c;->b(LJ4/C;)LJ4/G;

    move-result-object v2

    invoke-virtual {p0}, LH4/v;->I0()LJ4/G;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, LJ4/X;->g(ILJ4/C;)LJ4/C;

    move-result-object p1

    invoke-static {p1}, LJ4/c;->b(LJ4/C;)LJ4/G;

    move-result-object p1

    iget p0, p0, LH4/v;->u:I

    invoke-virtual {v0, v1, v2, p1, p0}, LH4/v;->K0(Ljava/util/List;LJ4/G;LJ4/G;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final n()LJ4/G;
    .locals 0

    iget-object p0, p0, LH4/v;->t:LJ4/G;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "defaultTypeImpl"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LH4/v;->i:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "declaredTypeParametersImpl"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t0()Lp4/f;
    .locals 0

    iget-object p0, p0, LH4/v;->m:Lp4/f;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "typealias "

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()LH4/m;
    .locals 0

    iget-object p0, p0, LH4/v;->p:Ll4/e;

    return-object p0
.end method

.method public final w()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 3

    invoke-virtual {p0}, LH4/v;->J0()LJ4/G;

    move-result-object v0

    new-instance v1, LX3/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LX3/e;-><init>(LH4/v;I)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, p0}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result p0

    return p0
.end method
