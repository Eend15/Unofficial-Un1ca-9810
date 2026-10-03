.class public final Lokhttp3/logging/Utf8Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Le5/j;",
        "",
        "isProbablyUtf8",
        "(Le5/j;)Z",
        "okhttp-logging-interceptor"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isProbablyUtf8(Le5/j;)Z
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Le5/j;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p0, Le5/j;->e:J

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    move-wide v5, v1

    :goto_0
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Le5/j;->j(JLe5/j;J)V

    move p0, v0

    :cond_1
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v7}, Le5/j;->P()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Le5/j;->d0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
