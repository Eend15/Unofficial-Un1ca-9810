.class public final Lkotlinx/coroutines/scheduling/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile synthetic blockingTasksInBuffer:I

.field private volatile synthetic consumerIndex:I

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field private volatile synthetic producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "lastScheduledTask"

    const-class v2, Lkotlinx/coroutines/scheduling/l;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "producerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "consumerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "blockingTasksInBuffer"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/l;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iput v0, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    iput v0, p0, Lkotlinx/coroutines/scheduling/l;->blockingTasksInBuffer:I

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;
    .locals 2

    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->e:Le3/a;

    iget v0, v0, Le3/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    sub-int/2addr v0, v1

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    and-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/scheduling/l;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/l;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iget p0, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iget p0, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public final c()Lkotlinx/coroutines/scheduling/h;
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    sget-object v3, Lkotlinx/coroutines/scheduling/l;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/h;->e:Le3/a;

    iget v1, v1, Le3/a;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-object v1, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_3
    return-object v0
.end method

.method public final d(Lkotlinx/coroutines/scheduling/l;)J
    .locals 7

    iget v0, p1, Lkotlinx/coroutines/scheduling/l;->consumerIndex:I

    iget v1, p1, Lkotlinx/coroutines/scheduling/l;->producerIndex:I

    iget-object v2, p1, Lkotlinx/coroutines/scheduling/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    and-int/lit8 v4, v0, 0x7f

    iget v5, p1, Lkotlinx/coroutines/scheduling/l;->blockingTasksInBuffer:I

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/scheduling/h;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lkotlinx/coroutines/scheduling/h;->e:Le3/a;

    iget v6, v6, Le3/a;->e:I

    if-ne v6, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lkotlinx/coroutines/scheduling/l;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    sget-object p1, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/l;->a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    :goto_1
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/scheduling/l;->e(Lkotlinx/coroutines/scheduling/l;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e(Lkotlinx/coroutines/scheduling/l;Z)J
    .locals 6

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/l;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    if-eqz p2, :cond_3

    iget-object v3, v0, Lkotlinx/coroutines/scheduling/h;->e:Le3/a;

    iget v3, v3, Le3/a;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    return-wide v1

    :cond_3
    :goto_0
    sget-object v1, Lkotlinx/coroutines/scheduling/j;->e:Lkotlinx/coroutines/scheduling/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lkotlinx/coroutines/scheduling/h;->d:J

    sub-long/2addr v1, v3

    sget-wide v3, Lkotlinx/coroutines/scheduling/j;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    sub-long/2addr v3, v1

    return-wide v3

    :cond_4
    sget-object v1, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/l;->a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    :goto_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method
