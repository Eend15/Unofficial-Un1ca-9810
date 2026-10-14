.class public final Ln0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ln0/B;

.field public final d:LU0/e;

.field public final e:Landroidx/recyclerview/widget/y;

.field public final f:Li1/k;

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(La0/l;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v4, Ln0/a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ln0/a;-><init>(Z)V

    invoke-static {v0, v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ln0/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Ln0/a;

    invoke-direct {v2, v1}, Ln0/a;-><init>(Z)V

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ln0/c;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p1, La0/l;->b:Ljava/lang/Object;

    check-cast v0, LD2/n;

    if-nez v0, :cond_0

    sget-object v0, Ln0/B;->a:Ljava/lang/String;

    new-instance v0, Ln0/A;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln0/c;->c:Ln0/B;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ln0/c;->c:Ln0/B;

    :goto_0
    new-instance v0, LU0/e;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LU0/e;-><init>(I)V

    iput-object v0, p0, Ln0/c;->d:LU0/e;

    new-instance v0, Landroidx/recyclerview/widget/y;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/y;-><init>(I)V

    iput-object v0, p0, Ln0/c;->e:Landroidx/recyclerview/widget/y;

    iget v0, p1, La0/l;->a:I

    iput v0, p0, Ln0/c;->g:I

    const v0, 0x7fffffff

    iput v0, p0, Ln0/c;->h:I

    const/16 v0, 0x14

    iput v0, p0, Ln0/c;->i:I

    iget-object p1, p1, La0/l;->c:Ljava/lang/Object;

    check-cast p1, Li1/k;

    iput-object p1, p0, Ln0/c;->f:Li1/k;

    return-void
.end method
