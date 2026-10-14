.class public final Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/n;

.field public b:Landroidx/lifecycle/r;


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 3

    invoke-virtual {p2}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    const-string v2, "state1"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    iget-object v1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/r;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/r;->b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    iput-object v0, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    return-void
.end method
