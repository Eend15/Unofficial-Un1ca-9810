.class public abstract Lq3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, Lq3/g;

    if-eqz v0, :cond_0

    check-cast p0, Lq3/g;

    iget-object p0, p0, Lq3/g;->d:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lq3/g;

    return p0
.end method
