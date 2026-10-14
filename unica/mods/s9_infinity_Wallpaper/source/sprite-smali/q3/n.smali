.class public final Lq3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/d;
.implements Ljava/io/Serializable;


# instance fields
.field public d:LF3/l;

.field public e:Ljava/lang/Object;


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lq3/n;->e:Ljava/lang/Object;

    sget-object v1, Lq3/l;->a:Lq3/l;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lq3/n;->d:LF3/l;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lq3/n;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lq3/n;->d:LF3/l;

    :cond_0
    iget-object p0, p0, Lq3/n;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq3/n;->e:Ljava/lang/Object;

    sget-object v1, Lq3/l;->a:Lq3/l;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lq3/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
