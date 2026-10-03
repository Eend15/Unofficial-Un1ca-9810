.class public final LH4/s;
.super LH4/r;
.source "SourceFile"


# instance fields
.field public final g:LU3/B;

.field public final h:Ljava/lang/String;

.field public final i:Ls4/c;


# direct methods
.method public constructor <init>(LU3/B;Ln4/C;Lp4/f;Lp4/a;Ll4/e;LF4/i;Ljava/lang/String;LE3/a;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v15, p7

    const-string v1, "packageDescriptor"

    invoke-static {v14, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proto"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "components"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "debugName"

    invoke-static {v15, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LX3/C;

    iget-object v1, v0, Ln4/C;->j:Ln4/X;

    const-string v5, "proto.typeTable"

    invoke-static {v1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v1}, LX3/C;-><init>(Ln4/X;)V

    iget-object v1, v0, Ln4/C;->k:Ln4/e0;

    const-string v5, "proto.versionRequirementTable"

    invoke-static {v1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lp4/g;->q(Ln4/e0;)Lp4/h;

    move-result-object v11

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v7 .. v13}, LF4/i;->a(LU3/B;Lp4/f;LX3/C;Lp4/h;Lp4/a;Ll4/e;)LF4/k;

    move-result-object v1

    iget-object v2, v0, Ln4/C;->g:Ljava/util/List;

    const-string v3, "proto.functionList"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Ln4/C;->h:Ljava/util/List;

    const-string v4, "proto.propertyList"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Ln4/C;->i:Ljava/util/List;

    const-string v0, "proto.typeAliasList"

    invoke-static {v4, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, LH4/r;-><init>(LF4/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;LE3/a;)V

    iput-object v14, v6, LH4/s;->g:LU3/B;

    iput-object v15, v6, LH4/s;->h:Ljava/lang/String;

    move-object v0, v14

    check-cast v0, LX3/F;

    iget-object v0, v0, LX3/F;->h:Ls4/c;

    iput-object v0, v6, LH4/s;->i:Ls4/c;

    return-void
.end method


# virtual methods
.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LH4/r;->b:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->i:Lc4/a;

    iget-object v1, p0, LH4/s;->g:LU3/B;

    invoke-static {v0, p2, v1, p1}, La4/x;->W(Lc4/a;Lc4/b;LU3/B;Ls4/f;)V

    invoke-super {p0, p1, p2}, LH4/r;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    return-object p0
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LH4/r;->i(LC4/f;LE3/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, LH4/r;->b:LF4/k;

    iget-object p2, p2, LF4/k;->a:LF4/i;

    iget-object p2, p2, LF4/i;->k:Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW3/c;

    iget-object v2, p0, LH4/s;->i:Ls4/c;

    invoke-interface {v1, v2}, LW3/c;->a(Ls4/c;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;LE3/b;)V
    .locals 0

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l(Ls4/f;)Ls4/b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls4/b;

    iget-object p0, p0, LH4/s;->i:Ls4/c;

    invoke-direct {v0, p0, p1}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final o()Ljava/util/Set;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final p()Ljava/util/Set;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final q(Ls4/f;)Z
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LH4/r;->q(Ls4/f;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LH4/r;->b:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->k:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW3/c;

    iget-object v2, p0, LH4/s;->i:Ls4/c;

    invoke-interface {v1, v2, p1}, LW3/c;->c(Ls4/c;Ls4/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LH4/s;->h:Ljava/lang/String;

    return-object p0
.end method
