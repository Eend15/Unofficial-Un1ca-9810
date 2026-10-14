.class public final LT3/a;
.super LC4/i;
.source "SourceFile"


# static fields
.field public static final e:Ls4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "clone"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LT3/a;->e:Ls4/f;

    return-void
.end method


# virtual methods
.method public final h()Ljava/util/List;
    .locals 11

    sget-object v0, LU3/L;->a:LU3/M;

    iget-object p0, p0, LC4/i;->b:LX3/b;

    sget-object v1, LT3/a;->e:Ls4/f;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, LX3/P;->R0(LU3/e;Ls4/f;ILU3/L;)LX3/P;

    move-result-object v0

    invoke-virtual {p0}, LX3/b;->y0()LU3/J;

    move-result-object v5

    sget-object v7, Lr3/r;->d:Lr3/r;

    invoke-static {p0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object p0

    invoke-virtual {p0}, LR3/j;->e()LJ4/G;

    move-result-object v8

    sget-object v10, LU3/o;->c:LU3/n;

    const/4 v4, 0x0

    const/4 v9, 0x3

    move-object v3, v0

    move-object v6, v7

    invoke-virtual/range {v3 .. v10}, LX3/P;->T0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)LX3/P;

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
