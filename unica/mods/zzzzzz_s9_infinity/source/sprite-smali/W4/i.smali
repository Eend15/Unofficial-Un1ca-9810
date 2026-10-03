.class public final LW4/i;
.super LW4/S;
.source "SourceFile"

# interfaces
.implements LW4/h;


# instance fields
.field public final h:LW4/Y;


# direct methods
.method public constructor <init>(LW4/Y;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/g;-><init>()V

    iput-object p1, p0, LW4/i;->h:LW4/Y;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-virtual {p0}, LW4/U;->m()LW4/Y;

    move-result-object p0

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LW4/Y;->e(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LW4/Y;->n()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LW4/i;->n(Ljava/lang/Throwable;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, LW4/U;->m()LW4/Y;

    move-result-object p1

    iget-object p0, p0, LW4/i;->h:LW4/Y;

    invoke-virtual {p0, p1}, LW4/Y;->e(Ljava/lang/Object;)Z

    return-void
.end method
