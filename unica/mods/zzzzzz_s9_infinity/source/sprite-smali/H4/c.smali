.class public final LH4/c;
.super LX3/l;
.source "SourceFile"

# interfaces
.implements LH4/b;


# instance fields
.field public final H:Ln4/l;

.field public final I:Lp4/f;

.field public final J:LX3/C;

.field public final K:Lp4/h;

.field public final L:Ll4/e;

.field public M:I


# direct methods
.method public constructor <init>(LU3/e;LU3/i;LV3/h;ZILn4/l;Lp4/f;LX3/C;Lp4/h;Ll4/e;LU3/L;)V
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

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, LX3/l;-><init>(LU3/e;LU3/i;LV3/h;ZILU3/L;)V

    iput-object v8, v7, LH4/c;->H:Ln4/l;

    iput-object v9, v7, LH4/c;->I:Lp4/f;

    iput-object v10, v7, LH4/c;->J:LX3/C;

    iput-object v11, v7, LH4/c;->K:Lp4/h;

    move-object/from16 v0, p10

    iput-object v0, v7, LH4/c;->L:Ll4/e;

    const/4 v0, 0x1

    iput v0, v7, LH4/c;->M:I

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final G()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LH4/c;->X0(LU3/j;LU3/s;ILV3/h;LU3/L;)LH4/c;

    move-result-object p0

    return-object p0
.end method

.method public final M()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic R0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/l;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LH4/c;->X0(LU3/j;LU3/s;ILV3/h;LU3/L;)LH4/c;

    move-result-object p0

    return-object p0
.end method

.method public final W()LX3/C;
    .locals 0

    iget-object p0, p0, LH4/c;->J:LX3/C;

    return-object p0
.end method

.method public final X0(LU3/j;LU3/s;ILV3/h;LU3/L;)LH4/c;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "newOwner"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    move/from16 v8, p3

    invoke-static {v8, v2}, LB/a;->t(ILjava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LH4/c;

    move-object v4, v1

    check-cast v4, LU3/e;

    move-object/from16 v5, p2

    check-cast v5, LU3/i;

    iget-object v12, v0, LH4/c;->K:Lp4/h;

    iget-object v13, v0, LH4/c;->L:Ll4/e;

    iget-boolean v7, v0, LX3/l;->F:Z

    iget-object v9, v0, LH4/c;->H:Ln4/l;

    iget-object v10, v0, LH4/c;->I:Lp4/f;

    iget-object v11, v0, LH4/c;->J:LX3/C;

    move-object v3, v2

    move-object/from16 v6, p4

    move/from16 v8, p3

    move-object/from16 v14, p5

    invoke-direct/range {v3 .. v14}, LH4/c;-><init>(LU3/e;LU3/i;LV3/h;ZILn4/l;Lp4/f;LX3/C;Lp4/h;Ll4/e;LU3/L;)V

    iget-boolean v1, v0, LX3/w;->x:Z

    iput-boolean v1, v2, LX3/w;->x:Z

    iget v0, v0, LH4/c;->M:I

    const-string v1, "<set-?>"

    invoke-static {v0, v1}, LB/a;->t(ILjava/lang/String;)V

    iput v0, v2, LH4/c;->M:I

    return-object v2
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g0()Lt4/b;
    .locals 0

    iget-object p0, p0, LH4/c;->H:Ln4/l;

    return-object p0
.end method

.method public final t0()Lp4/f;
    .locals 0

    iget-object p0, p0, LH4/c;->I:Lp4/f;

    return-object p0
.end method

.method public final u()LH4/m;
    .locals 0

    iget-object p0, p0, LH4/c;->L:Ll4/e;

    return-object p0
.end method
