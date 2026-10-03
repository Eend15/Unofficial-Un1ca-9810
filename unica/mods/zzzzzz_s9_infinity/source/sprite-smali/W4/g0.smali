.class public final LW4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/g;
.implements Lu3/h;


# static fields
.field public static final d:LW4/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW4/g0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LW4/g0;->d:LW4/g0;

    return-void
.end method


# virtual methods
.method public final K(Lu3/h;)Lu3/i;
    .locals 0

    invoke-static {p0, p1}, Lp4/g;->K(Lu3/g;Lu3/h;)Lu3/i;

    move-result-object p0

    return-object p0
.end method

.method public final W(Lu3/h;)Lu3/g;
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

    return-object p0
.end method

.method public final h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
