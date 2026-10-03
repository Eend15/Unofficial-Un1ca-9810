.class public final LX3/V;
.super LX3/W;
.source "SourceFile"


# instance fields
.field public final o:Lq3/j;


# direct methods
.method public constructor <init>(LU3/s;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;LE3/a;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    new-instance p1, Lq3/j;

    invoke-direct {p1, p12}, Lq3/j;-><init>(LE3/a;)V

    iput-object p1, p0, LX3/V;->o:Lq3/j;

    return-void
.end method


# virtual methods
.method public final H0(LS3/g;Ls4/f;I)LX3/W;
    .locals 14

    move-object v0, p0

    new-instance v13, LX3/V;

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v4, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object v6

    const-string v1, "type"

    invoke-static {v6, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/W;->I0()Z

    move-result v7

    sget-object v11, LU3/L;->a:LU3/M;

    new-instance v12, LC4/g;

    const/16 v1, 0x1d

    invoke-direct {v12, v1, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    iget-boolean v9, v0, LX3/W;->l:Z

    iget-object v10, v0, LX3/W;->m:LJ4/C;

    const/4 v2, 0x0

    iget-boolean v8, v0, LX3/W;->k:Z

    move-object v0, v13

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v12}, LX3/V;-><init>(LU3/s;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;LE3/a;)V

    return-object v13
.end method
