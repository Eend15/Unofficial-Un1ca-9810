.class public final Lkotlinx/coroutines/flow/j;
.super LY4/c;
.source "SourceFile"


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lkotlinx/coroutines/flow/j;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public final a(LY4/a;)Z
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/i;

    iget-object p1, p0, Lkotlinx/coroutines/flow/j;->_state:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/flow/f;->b:LU3/w;

    iput-object p1, p0, Lkotlinx/coroutines/flow/j;->_state:Ljava/lang/Object;

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final b(LY4/a;)[Lu3/d;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/flow/j;->_state:Ljava/lang/Object;

    sget-object p0, LY4/b;->a:[Lu3/d;

    return-object p0
.end method
