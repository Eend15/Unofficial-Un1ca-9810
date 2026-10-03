.class public final Lkotlinx/coroutines/scheduling/k;
.super LW4/q;
.source "SourceFile"


# static fields
.field public static final f:Lkotlinx/coroutines/scheduling/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/k;

    invoke-direct {v0}, LW4/q;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/k;->f:Lkotlinx/coroutines/scheduling/k;

    return-void
.end method


# virtual methods
.method public final X(Lu3/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lkotlinx/coroutines/scheduling/d;->g:Lkotlinx/coroutines/scheduling/d;

    sget-object p1, Lkotlinx/coroutines/scheduling/j;->g:Le3/a;

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/g;->f:Lkotlinx/coroutines/scheduling/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/b;->g(Ljava/lang/Runnable;Le3/a;Z)V

    return-void
.end method
