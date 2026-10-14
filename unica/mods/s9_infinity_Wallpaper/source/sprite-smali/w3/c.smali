.class public abstract Lw3/c;
.super Lw3/a;
.source "SourceFile"


# instance fields
.field private final _context:Lu3/i;

.field private transient intercepted:Lu3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lu3/d;->getContext()Lu3/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lw3/a;-><init>(Lu3/d;)V

    iput-object v0, p0, Lw3/c;->_context:Lu3/i;

    return-void
.end method


# virtual methods
.method public getContext()Lu3/i;
    .locals 0

    iget-object p0, p0, Lw3/c;->_context:Lu3/i;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lu3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw3/c;->intercepted:Lu3/d;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lw3/c;->getContext()Lu3/i;

    move-result-object v0

    sget-object v1, Lu3/e;->d:Lu3/e;

    invoke-interface {v0, v1}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v0

    check-cast v0, Lu3/f;

    if-eqz v0, :cond_0

    check-cast v0, LW4/q;

    new-instance v1, Lkotlinx/coroutines/internal/d;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/internal/d;-><init>(LW4/q;Lw3/c;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lw3/c;->intercepted:Lu3/d;

    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lw3/c;->intercepted:Lu3/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lw3/c;->getContext()Lu3/i;

    move-result-object v1

    sget-object v2, Lu3/e;->d:Lu3/e;

    invoke-interface {v1, v2}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v1, Lu3/f;

    check-cast v0, Lkotlinx/coroutines/internal/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/d;->i()V

    :cond_0
    sget-object v0, Lw3/b;->d:Lw3/b;

    iput-object v0, p0, Lw3/c;->intercepted:Lu3/d;

    return-void
.end method
