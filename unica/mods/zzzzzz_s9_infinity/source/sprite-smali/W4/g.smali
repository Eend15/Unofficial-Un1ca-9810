.class public final LW4/g;
.super LW4/S;
.source "SourceFile"


# instance fields
.field public final h:LW4/e;


# direct methods
.method public constructor <init>(LW4/e;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/g;-><init>()V

    iput-object p1, p0, LW4/g;->h:LW4/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LW4/g;->n(Ljava/lang/Throwable;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LW4/U;->m()LW4/Y;

    move-result-object p1

    iget-object p0, p0, LW4/g;->h:LW4/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LW4/Y;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0}, LW4/e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LW4/e;->g:Lu3/d;

    check-cast v0, Lkotlinx/coroutines/internal/d;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/d;->h(Ljava/util/concurrent/CancellationException;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, LW4/e;->i(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LW4/e;->o()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LW4/e;->i:LW4/C;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, LW4/C;->b()V

    sget-object p1, LW4/a0;->d:LW4/a0;

    iput-object p1, p0, LW4/e;->i:LW4/C;

    :cond_3
    :goto_1
    return-void
.end method
