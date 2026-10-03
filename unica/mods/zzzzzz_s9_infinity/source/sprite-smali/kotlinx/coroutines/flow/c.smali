.class public final Lkotlinx/coroutines/flow/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW4/C;


# instance fields
.field public final d:Lkotlinx/coroutines/flow/e;

.field public final e:J

.field public final f:Ljava/lang/Object;

.field public final g:LW4/e;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;JLjava/lang/Object;LW4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/c;->d:Lkotlinx/coroutines/flow/e;

    iput-wide p2, p0, Lkotlinx/coroutines/flow/c;->e:J

    iput-object p4, p0, Lkotlinx/coroutines/flow/c;->f:Ljava/lang/Object;

    iput-object p5, p0, Lkotlinx/coroutines/flow/c;->g:LW4/e;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/flow/c;->d:Lkotlinx/coroutines/flow/e;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lkotlinx/coroutines/flow/c;->e:J

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, v0, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget-wide v2, p0, Lkotlinx/coroutines/flow/c;->e:J

    long-to-int v4, v2

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v4, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, p0, :cond_1

    monitor-exit v0

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object p0, Lkotlinx/coroutines/flow/f;->a:LU3/w;

    invoke-static {v1, v2, v3, p0}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/e;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
