.class public final Lkotlinx/coroutines/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:LU3/w;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _state:J

.field public final a:I

.field public final b:Z

.field public final c:I

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/w;

    const-string v1, "REMOVE_FROZEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/j;->g:LU3/w;

    const-class v0, Lkotlinx/coroutines/internal/j;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/internal/j;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/j;->a:I

    iput-boolean p2, p0, Lkotlinx/coroutines/internal/j;->b:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lkotlinx/coroutines/internal/j;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/internal/j;->_next:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/internal/j;->_state:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const p0, 0x3fffffff    # 1.9999999f

    const-string v0, "Check failed."

    if-gt p2, p0, :cond_1

    and-int p0, p1, p2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 13

    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/j;->_state:J

    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x2000000000000000L

    and-long/2addr p0, v2

    cmp-long p0, p0, v6

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    :cond_1
    return v1

    :cond_2
    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    long-to-int v0, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v8, 0x1e

    shr-long/2addr v4, v8

    long-to-int v9, v4

    iget v10, p0, Lkotlinx/coroutines/internal/j;->c:I

    add-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v10

    and-int v5, v0, v10

    if-ne v4, v5, :cond_3

    return v1

    :cond_3
    iget-boolean v4, p0, Lkotlinx/coroutines/internal/j;->b:Z

    const v5, 0x3fffffff    # 1.9999999f

    if-nez v4, :cond_5

    iget-object v4, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v11, v9, v10

    invoke-virtual {v4, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v2, p0, Lkotlinx/coroutines/internal/j;->a:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_4

    sub-int/2addr v9, v0

    and-int v0, v9, v5

    shr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v0, v9, 0x1

    and-int/2addr v0, v5

    sget-object v1, Lkotlinx/coroutines/internal/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, -0xfffffffc0000001L    # -3.1050369248997324E231

    and-long/2addr v4, v2

    int-to-long v11, v0

    shl-long/2addr v11, v8

    or-long/2addr v4, v11

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v1, v9, v10

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_6
    iget-wide v0, p0, Lkotlinx/coroutines/internal/j;->_state:J

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->e()Lkotlinx/coroutines/internal/j;

    move-result-object p0

    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/j;->c:I

    and-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/internal/i;

    if-eqz v3, :cond_7

    check-cast v2, Lkotlinx/coroutines/internal/i;

    iget v2, v2, Lkotlinx/coroutines/internal/i;->a:I

    if-ne v2, v9, :cond_7

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 9

    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/j;->_state:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    return v8

    :cond_0
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    or-long v4, v2, v0

    sget-object v0, Lkotlinx/coroutines/internal/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v8
.end method

.method public final c()I
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/internal/j;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p0

    const p0, 0x3fffffff    # 1.9999999f

    and-int/2addr p0, v0

    return p0
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/internal/j;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Lkotlinx/coroutines/internal/j;
    .locals 9

    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/j;->_state:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    or-long v6, v2, v0

    sget-object v0, Lkotlinx/coroutines/internal/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v2, v6

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_next:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/j;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lkotlinx/coroutines/internal/j;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v1, Lkotlinx/coroutines/internal/j;

    iget v4, p0, Lkotlinx/coroutines/internal/j;->a:I

    mul-int/lit8 v4, v4, 0x2

    iget-boolean v5, p0, Lkotlinx/coroutines/internal/j;->b:Z

    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/internal/j;-><init>(IZ)V

    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    long-to-int v4, v4

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v2

    const/16 v7, 0x1e

    shr-long/2addr v5, v7

    long-to-int v5, v5

    :goto_1
    iget v6, p0, Lkotlinx/coroutines/internal/j;->c:I

    and-int v7, v4, v6

    and-int/2addr v6, v5

    if-eq v7, v6, :cond_4

    iget-object v6, p0, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v6, Lkotlinx/coroutines/internal/i;

    invoke-direct {v6, v4}, Lkotlinx/coroutines/internal/i;-><init>(I)V

    :cond_3
    iget-object v7, v1, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v8, v1, Lkotlinx/coroutines/internal/j;->c:I

    and-int/2addr v8, v4

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-wide v4, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v4, v2

    iput-wide v4, v1, Lkotlinx/coroutines/internal/j;->_state:J

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final f()Ljava/lang/Object;
    .locals 20

    move-object/from16 v6, p0

    :cond_0
    iget-wide v2, v6, Lkotlinx/coroutines/internal/j;->_state:J

    const-wide/high16 v7, 0x1000000000000000L

    and-long v0, v2, v7

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/internal/j;->g:LU3/w;

    return-object v0

    :cond_1
    const-wide/32 v11, 0x3fffffff

    and-long v0, v2, v11

    long-to-int v13, v0

    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v0, v0

    iget v1, v6, Lkotlinx/coroutines/internal/j;->c:I

    and-int/2addr v0, v1

    and-int/2addr v1, v13

    const/4 v14, 0x0

    if-ne v0, v1, :cond_2

    return-object v14

    :cond_2
    iget-object v0, v6, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    iget-boolean v0, v6, Lkotlinx/coroutines/internal/j;->b:Z

    if-eqz v0, :cond_0

    return-object v14

    :cond_3
    instance-of v0, v15, Lkotlinx/coroutines/internal/i;

    if-eqz v0, :cond_4

    return-object v14

    :cond_4
    add-int/lit8 v0, v13, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    sget-object v1, Lkotlinx/coroutines/internal/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v16, -0x40000000

    and-long v4, v2, v16

    int-to-long v9, v0

    or-long/2addr v4, v9

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v6, Lkotlinx/coroutines/internal/j;->c:I

    and-int/2addr v1, v13

    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v15

    :cond_5
    iget-boolean v0, v6, Lkotlinx/coroutines/internal/j;->b:Z

    if-eqz v0, :cond_0

    move-object v0, v6

    :cond_6
    iget-wide v3, v0, Lkotlinx/coroutines/internal/j;->_state:J

    and-long v1, v3, v11

    long-to-int v13, v1

    and-long v1, v3, v7

    const-wide/16 v18, 0x0

    cmp-long v1, v1, v18

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->e()Lkotlinx/coroutines/internal/j;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v1, Lkotlinx/coroutines/internal/j;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    and-long v5, v3, v16

    or-long/2addr v5, v9

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lkotlinx/coroutines/internal/j;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v0, v0, Lkotlinx/coroutines/internal/j;->c:I

    and-int/2addr v0, v13

    invoke-virtual {v1, v0, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, v14

    :goto_0
    if-nez v0, :cond_6

    return-object v15
.end method
