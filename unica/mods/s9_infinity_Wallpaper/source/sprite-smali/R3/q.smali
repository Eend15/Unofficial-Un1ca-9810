.class public abstract LR3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LX3/E;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, LX3/E;

    new-instance v1, LT3/k;

    sget-object v2, LJ4/v;->a:LJ4/q;

    sget-object v3, LR3/p;->d:Ls4/c;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, LT3/k;-><init>(LU3/x;Ls4/c;I)V

    sget-object v3, LR3/p;->e:Ls4/c;

    invoke-virtual {v3}, Ls4/c;->f()Ls4/f;

    move-result-object v3

    sget-object v4, LI4/l;->e:LI4/b;

    invoke-direct {v0, v1, v3, v4}, LX3/E;-><init>(LT3/k;Ls4/f;LI4/b;)V

    const/4 v1, 0x4

    iput v1, v0, LX3/E;->k:I

    sget-object v3, LU3/o;->e:LU3/n;

    if-eqz v3, :cond_0

    iput-object v3, v0, LX3/E;->l:LU3/n;

    const-string v5, "T"

    invoke-static {v5}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v0, v7, v6, v8, v4}, LX3/U;->K0(LX3/b;ILs4/f;ILI4/o;)LX3/U;

    move-result-object v6

    invoke-static {v6}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, LX3/E;->q0(Ljava/util/List;)V

    invoke-virtual {v0}, LX3/E;->m0()V

    new-instance v0, LX3/E;

    new-instance v6, LT3/k;

    sget-object v9, LR3/p;->c:Ls4/c;

    const/4 v10, 0x1

    invoke-direct {v6, v2, v9, v10}, LT3/k;-><init>(LU3/x;Ls4/c;I)V

    sget-object v2, LR3/p;->f:Ls4/c;

    invoke-virtual {v2}, Ls4/c;->f()Ls4/f;

    move-result-object v2

    invoke-direct {v0, v6, v2, v4}, LX3/E;-><init>(LT3/k;Ls4/f;LI4/b;)V

    iput v1, v0, LX3/E;->k:I

    iput-object v3, v0, LX3/E;->l:LU3/n;

    invoke-static {v5}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    invoke-static {v0, v7, v1, v8, v4}, LX3/U;->K0(LX3/b;ILs4/f;ILI4/o;)LX3/U;

    move-result-object v1

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LX3/E;->q0(Ljava/util/List;)V

    invoke-virtual {v0}, LX3/E;->m0()V

    sput-object v0, LR3/q;->a:LX3/E;

    return-void

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, LX3/E;->d0(I)V

    const/4 v0, 0x0

    throw v0
.end method
