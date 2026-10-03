.class public abstract Lkotlinx/coroutines/internal/b;
.super Lkotlinx/coroutines/internal/l;
.source "SourceFile"


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _consensus:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_consensus"

    const-class v2, Lkotlinx/coroutines/internal/b;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/coroutines/internal/a;->a:LU3/w;

    iput-object v0, p0, Lkotlinx/coroutines/internal/b;->_consensus:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/b;->_consensus:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/a;->a:LU3/w;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/b;->c(Ljava/lang/Object;)LU3/w;

    move-result-object v0

    iget-object v2, p0, Lkotlinx/coroutines/internal/b;->_consensus:Ljava/lang/Object;

    if-eq v2, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v2, Lkotlinx/coroutines/internal/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/b;->_consensus:Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract c(Ljava/lang/Object;)LU3/w;
.end method
