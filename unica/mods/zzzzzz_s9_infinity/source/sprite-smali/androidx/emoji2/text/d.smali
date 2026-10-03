.class public final Landroidx/emoji2/text/d;
.super La4/x;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/emoji2/text/e;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/d;->d:Landroidx/emoji2/text/e;

    return-void
.end method


# virtual methods
.method public final N(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/d;->d:Landroidx/emoji2/text/e;

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/i;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/i;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Q(Lw0/i;)V
    .locals 4

    iget-object p0, p0, Landroidx/emoji2/text/d;->d:Landroidx/emoji2/text/e;

    iput-object p1, p0, Landroidx/emoji2/text/e;->c:Lw0/i;

    new-instance p1, Lw0/m;

    iget-object v0, p0, Landroidx/emoji2/text/e;->c:Lw0/i;

    iget-object v1, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/i;

    iget-object v2, v1, Landroidx/emoji2/text/i;->g:LU0/e;

    iget-object v1, v1, Landroidx/emoji2/text/i;->i:Landroidx/emoji2/text/c;

    invoke-static {}, Landroidx/emoji2/text/l;->a()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p1, v0, v2, v1, v3}, Lw0/m;-><init>(Lw0/i;LU0/e;Landroidx/emoji2/text/c;Ljava/util/Set;)V

    iput-object p1, p0, Landroidx/emoji2/text/e;->b:Lw0/m;

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Landroidx/emoji2/text/i;->c:I

    iget-object v0, p0, Landroidx/emoji2/text/i;->b:Ln/g;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/emoji2/text/i;->b:Ln/g;

    invoke-virtual {v0}, Ln/g;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Landroidx/emoji2/text/i;->d:Landroid/os/Handler;

    new-instance v1, LH/b;

    iget p0, p0, Landroidx/emoji2/text/i;->c:I

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, LH/b;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
