.class public final Lp4/b;
.super Lp4/d;
.source "SourceFile"


# virtual methods
.method public final c(I)Ljava/lang/Boolean;
    .locals 1

    iget p0, p0, Lp4/d;->a:I

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
