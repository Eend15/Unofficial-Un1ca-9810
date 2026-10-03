.class public final LW4/O;
.super LW4/U;
.source "SourceFile"


# instance fields
.field public final h:LE3/b;


# direct methods
.method public constructor <init>(LE3/b;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/g;-><init>()V

    iput-object p1, p0, LW4/O;->h:LE3/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LW4/O;->n(Ljava/lang/Throwable;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, LW4/O;->h:LE3/b;

    invoke-interface {p0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
