.class public Lkotlinx/coroutines/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;

.field volatile synthetic _prev:Ljava/lang/Object;

.field private volatile synthetic _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_next"

    const-class v1, Lkotlinx/coroutines/internal/g;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lkotlinx/coroutines/internal/g;->_next:Ljava/lang/Object;

    iput-object p0, p0, Lkotlinx/coroutines/internal/g;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/internal/g;->_removedRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f()Lkotlinx/coroutines/internal/g;
    .locals 7

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/g;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/g;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    move-object v3, v1

    :goto_2
    iget-object v4, v2, Lkotlinx/coroutines/internal/g;->_next:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    if-ne v0, v2, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->k()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    instance-of v5, v4, Lkotlinx/coroutines/internal/l;

    if-eqz v5, :cond_5

    check-cast v4, Lkotlinx/coroutines/internal/l;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v5, v4, Lkotlinx/coroutines/internal/m;

    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    sget-object v5, Lkotlinx/coroutines/internal/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/internal/m;

    iget-object v4, v4, Lkotlinx/coroutines/internal/m;->a:Lkotlinx/coroutines/internal/g;

    invoke-virtual {v5, v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move-object v2, v3

    goto :goto_1

    :cond_7
    iget-object v2, v2, Lkotlinx/coroutines/internal/g;->_prev:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/g;

    goto :goto_2

    :cond_8
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/g;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2
.end method

.method public final g(Lkotlinx/coroutines/internal/g;)V
    .locals 2

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/g;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/g;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->h()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->k()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/g;->f()Lkotlinx/coroutines/internal/g;

    :cond_2
    return-void
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/g;->_next:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/l;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final i()Lkotlinx/coroutines/internal/g;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->h()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/internal/m;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/m;->a:Lkotlinx/coroutines/internal/g;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/g;

    :cond_2
    return-object v0
.end method

.method public final j()Lkotlinx/coroutines/internal/g;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->f()Lkotlinx/coroutines/internal/g;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/internal/g;->_prev:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/g;

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/g;->k()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lkotlinx/coroutines/internal/g;->_prev:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/g;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public k()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->h()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/internal/m;

    return p0
.end method

.method public final l()V
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/internal/m;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/m;

    iget-object p0, v0, Lkotlinx/coroutines/internal/m;->a:Lkotlinx/coroutines/internal/g;

    goto :goto_0

    :cond_1
    if-ne v0, p0, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/g;

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/g;

    iget-object v2, v1, Lkotlinx/coroutines/internal/g;->_removedRef:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/m;

    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/internal/m;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/internal/m;-><init>(Lkotlinx/coroutines/internal/g;)V

    sget-object v3, Lkotlinx/coroutines/internal/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    sget-object v3, Lkotlinx/coroutines/internal/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/g;->f()Lkotlinx/coroutines/internal/g;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lkotlinx/coroutines/internal/f;

    const-string v6, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v2, 0x1

    const-class v3, LW4/u;

    const-string v5, "classSimpleName"

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, LF3/p;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
