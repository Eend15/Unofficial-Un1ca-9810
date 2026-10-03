.class public final LH4/u;
.super LX3/P;
.source "SourceFile"

# interfaces
.implements LH4/b;


# instance fields
.field public final F:Ln4/y;

.field public final G:Lp4/f;

.field public final H:LX3/C;

.field public final I:Lp4/h;

.field public final J:Ll4/e;


# direct methods
.method public constructor <init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILn4/y;Lp4/f;LX3/C;Lp4/h;Ll4/e;LU3/L;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move/from16 v5, p5

    invoke-static {v5, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p11, :cond_0

    sget-object v0, LU3/L;->a:LU3/M;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, LX3/P;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;)V

    iput-object v8, v7, LH4/u;->F:Ln4/y;

    iput-object v9, v7, LH4/u;->G:Lp4/f;

    iput-object v10, v7, LH4/u;->H:LX3/C;

    iput-object v11, v7, LH4/u;->I:Lp4/h;

    move-object/from16 v0, p10

    iput-object v0, v7, LH4/u;->J:Ll4/e;

    return-void
.end method


# virtual methods
.method public final J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move v7, p1

    invoke-static {p1, v1}, LB/a;->t(ILjava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LH4/u;

    move-object/from16 v4, p3

    check-cast v4, LX3/P;

    if-nez p6, :cond_0

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object v2

    const-string v6, "name"

    invoke-static {v2, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p6

    :goto_0
    iget-object v11, v0, LH4/u;->I:Lp4/h;

    iget-object v12, v0, LH4/u;->J:Ll4/e;

    iget-object v8, v0, LH4/u;->F:Ln4/y;

    iget-object v9, v0, LH4/u;->G:Lp4/f;

    iget-object v10, v0, LH4/u;->H:LX3/C;

    move-object v2, v1

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move v7, p1

    move-object/from16 v13, p4

    invoke-direct/range {v2 .. v13}, LH4/u;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILn4/y;Lp4/f;LX3/C;Lp4/h;Ll4/e;LU3/L;)V

    iget-boolean v0, v0, LX3/w;->x:Z

    iput-boolean v0, v1, LX3/w;->x:Z

    return-object v1
.end method

.method public final W()LX3/C;
    .locals 0

    iget-object p0, p0, LH4/u;->H:LX3/C;

    return-object p0
.end method

.method public final g0()Lt4/b;
    .locals 0

    iget-object p0, p0, LH4/u;->F:Ln4/y;

    return-object p0
.end method

.method public final t0()Lp4/f;
    .locals 0

    iget-object p0, p0, LH4/u;->G:Lp4/f;

    return-object p0
.end method

.method public final u()LH4/m;
    .locals 0

    iget-object p0, p0, LH4/u;->J:Ll4/e;

    return-object p0
.end method
