.class public final Lu3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lu3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu3/j;->d:Lu3/j;

    return-void
.end method


# virtual methods
.method public final K(Lu3/h;)Lu3/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final W(Lu3/h;)Lu3/g;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lu3/i;)Lu3/i;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyCoroutineContext"

    return-object p0
.end method
