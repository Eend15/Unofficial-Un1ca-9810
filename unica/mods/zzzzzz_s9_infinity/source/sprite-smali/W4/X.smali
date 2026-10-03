.class public final LW4/X;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# instance fields
.field public final b:LW4/U;

.field public c:LW4/Z;

.field public final synthetic d:LW4/Y;

.field public final synthetic e:LW4/M;


# direct methods
.method public constructor <init>(LW4/U;LW4/Y;LW4/M;)V
    .locals 0

    iput-object p2, p0, LW4/X;->d:LW4/Y;

    iput-object p3, p0, LW4/X;->e:LW4/M;

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    iput-object p1, p0, LW4/X;->b:LW4/U;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lkotlinx/coroutines/internal/g;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, LW4/X;->b:LW4/U;

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, LW4/X;->c:LW4/Z;

    :goto_1
    if-eqz v1, :cond_2

    sget-object v2, Lkotlinx/coroutines/internal/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p0, p0, LW4/X;->c:LW4/Z;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/g;->g(Lkotlinx/coroutines/internal/g;)V

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/Object;)LU3/w;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/g;

    iget-object p1, p0, LW4/X;->d:LW4/Y;

    invoke-virtual {p1}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, LW4/X;->e:LW4/M;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlinx/coroutines/internal/a;->d:LU3/w;

    :goto_0
    return-object p0
.end method
