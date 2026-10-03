.class public final LW4/f;
.super LW4/k;
.source "SourceFile"


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _resumed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LW4/f;

    const-string v1, "_resumed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LW4/f;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(LW4/e;Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0, p2, p3}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    const/4 p1, 0x0

    iput p1, p0, LW4/f;->_resumed:I

    return-void
.end method
