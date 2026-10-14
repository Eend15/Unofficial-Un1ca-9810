.class public final LH4/t;
.super LX3/L;
.source "SourceFile"

# interfaces
.implements LH4/b;


# instance fields
.field public final B:Ln4/G;

.field public final C:Lp4/f;

.field public final D:LX3/C;

.field public final E:Lp4/h;

.field public final F:Ll4/e;


# direct methods
.method public constructor <init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;IZZZZZLn4/G;Lp4/f;LX3/C;Lp4/h;Ll4/e;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    move/from16 v4, p4

    invoke-static {v4, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move/from16 v8, p8

    invoke-static {v8, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, LU3/L;->a:LU3/M;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LX3/L;-><init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;ILU3/L;ZZZZZ)V

    move-object/from16 v0, p14

    iput-object v0, v15, LH4/t;->B:Ln4/G;

    move-object/from16 v0, p15

    iput-object v0, v15, LH4/t;->C:Lp4/f;

    move-object/from16 v0, p16

    iput-object v0, v15, LH4/t;->D:LX3/C;

    move-object/from16 v0, p17

    iput-object v0, v15, LH4/t;->E:Lp4/h;

    move-object/from16 v0, p18

    iput-object v0, v15, LH4/t;->F:Ll4/e;

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 1

    sget-object v0, Lp4/e;->D:Lp4/b;

    iget-object p0, p0, LH4/t;->B:Ln4/G;

    iget p0, p0, Ln4/G;->g:I

    invoke-virtual {v0, p0}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final H0(LU3/j;ILU3/n;LX3/L;ILs4/f;)LX3/L;
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newModality"

    move/from16 v6, p2

    invoke-static {v6, v1}, LB/a;->t(ILjava/lang/String;)V

    const-string v1, "newVisibility"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move/from16 v10, p5

    invoke-static {v10, v1}, LB/a;->t(ILjava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LH4/t;

    invoke-virtual/range {p0 .. p0}, LD4/a;->p()LV3/h;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, LH4/t;->B()Z

    move-result v13

    iget-object v2, v0, LH4/t;->E:Lp4/h;

    move-object/from16 v19, v2

    iget-object v2, v0, LH4/t;->F:Ll4/e;

    move-object/from16 v20, v2

    iget-boolean v8, v0, LX3/L;->i:Z

    iget-boolean v11, v0, LX3/L;->p:Z

    iget-boolean v12, v0, LX3/L;->q:Z

    iget-boolean v14, v0, LX3/L;->t:Z

    iget-boolean v15, v0, LX3/L;->r:Z

    iget-object v2, v0, LH4/t;->B:Ln4/G;

    move-object/from16 v16, v2

    iget-object v2, v0, LH4/t;->C:Lp4/f;

    move-object/from16 v17, v2

    iget-object v0, v0, LH4/t;->D:LX3/C;

    move-object/from16 v18, v0

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p6

    move/from16 v10, p5

    invoke-direct/range {v2 .. v20}, LH4/t;-><init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;IZZZZZLn4/G;Lp4/f;LX3/C;Lp4/h;Ll4/e;)V

    return-object v1
.end method

.method public final W()LX3/C;
    .locals 0

    iget-object p0, p0, LH4/t;->D:LX3/C;

    return-object p0
.end method

.method public final g0()Lt4/b;
    .locals 0

    iget-object p0, p0, LH4/t;->B:Ln4/G;

    return-object p0
.end method

.method public final t0()Lp4/f;
    .locals 0

    iget-object p0, p0, LH4/t;->C:Lp4/f;

    return-object p0
.end method

.method public final u()LH4/m;
    .locals 0

    iget-object p0, p0, LH4/t;->F:Ll4/e;

    return-object p0
.end method
