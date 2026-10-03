.class public final LW4/V;
.super LW4/U;
.source "SourceFile"


# instance fields
.field public final h:LW4/Y;

.field public final i:LW4/W;

.field public final j:LW4/i;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LW4/Y;LW4/W;LW4/i;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/g;-><init>()V

    iput-object p1, p0, LW4/V;->h:LW4/Y;

    iput-object p2, p0, LW4/V;->i:LW4/W;

    iput-object p3, p0, LW4/V;->j:LW4/i;

    iput-object p4, p0, LW4/V;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LW4/V;->n(Ljava/lang/Throwable;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 6

    iget-object p1, p0, LW4/V;->j:LW4/i;

    iget-object v0, p0, LW4/V;->h:LW4/Y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LW4/Y;->v(Lkotlinx/coroutines/internal/g;)LW4/i;

    move-result-object p1

    iget-object v1, p0, LW4/V;->i:LW4/W;

    iget-object p0, p0, LW4/V;->k:Ljava/lang/Object;

    if-eqz p1, :cond_2

    :cond_0
    iget-object v2, p1, LW4/i;->h:LW4/Y;

    new-instance v3, LW4/V;

    invoke-direct {v3, v0, v1, p1, p0}, LW4/V;-><init>(LW4/Y;LW4/W;LW4/i;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, LW4/u;->f(LW4/P;ZLW4/U;I)LW4/C;

    move-result-object v2

    sget-object v3, LW4/a0;->d:LW4/a0;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, LW4/Y;->v(Lkotlinx/coroutines/internal/g;)LW4/i;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_2
    invoke-virtual {v0, v1, p0}, LW4/Y;->l(LW4/W;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, LW4/Y;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
