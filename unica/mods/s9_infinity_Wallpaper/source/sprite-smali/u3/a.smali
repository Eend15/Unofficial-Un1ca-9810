.class public abstract Lu3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/g;


# instance fields
.field public final d:Lu3/h;


# direct methods
.method public constructor <init>(Lu3/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/a;->d:Lu3/h;

    return-void
.end method


# virtual methods
.method public K(Lu3/h;)Lu3/i;
    .locals 0

    invoke-static {p0, p1}, Lp4/g;->K(Lu3/g;Lu3/h;)Lu3/i;

    move-result-object p0

    return-object p0
.end method

.method public W(Lu3/h;)Lu3/g;
    .locals 0

    invoke-static {p0, p1}, Lp4/g;->y(Lu3/g;Lu3/h;)Lu3/g;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lu3/i;)Lu3/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lu3/j;->d:Lu3/j;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lu3/b;->f:Lu3/b;

    invoke-interface {p1, p0, v0}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/i;

    :goto_0
    return-object p0
.end method

.method public final getKey()Lu3/h;
    .locals 0

    iget-object p0, p0, Lu3/a;->d:Lu3/h;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
