.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketExtensions$Companion;",
        "",
        "()V",
        "HEADER_WEB_SOCKET_EXTENSION",
        "",
        "parse",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LF3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "responseHeaders"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    move v6, v4

    move v8, v6

    move v10, v8

    move v11, v10

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v4, v1, :cond_14

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Sec-WebSocket-Extensions"

    invoke-static {v12, v13}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    move v12, v2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_0

    const/16 v14, 0x2c

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v4

    move v15, v12

    invoke-static/range {v13 .. v18}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v13

    const/16 v14, 0x3b

    invoke-static {v4, v14, v12, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v15

    invoke-static {v4, v12, v15}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x1

    add-int/2addr v15, v3

    const-string v3, "permessage-deflate"

    invoke-static {v12, v3}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v6, :cond_2

    const/4 v11, 0x1

    :cond_2
    move v12, v15

    :goto_2
    if-ge v12, v13, :cond_12

    invoke-static {v4, v14, v12, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v3

    const/16 v6, 0x3d

    invoke-static {v4, v6, v12, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v6

    invoke-static {v4, v12, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    if-ge v6, v3, :cond_4

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    const-string v15, "<this>"

    invoke-static {v6, v15}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v14, 0x2

    if-lt v15, v14, :cond_3

    const-string v14, "\""

    invoke-static {v6, v14, v2}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-static {v6, v14}, LV4/u;->f0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v14, "substring(...)"

    invoke-static {v6, v14}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x1

    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    const-string v14, "client_max_window_bits"

    invoke-static {v12, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v7, :cond_5

    move v11, v15

    :cond_5
    if-nez v6, :cond_6

    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    invoke-static {v6}, LV4/t;->d0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v6

    :goto_4
    if-nez v7, :cond_8

    :cond_7
    :goto_5
    move v12, v3

    move v11, v15

    :goto_6
    const/16 v14, 0x3b

    goto :goto_2

    :cond_8
    move v12, v3

    goto :goto_6

    :cond_9
    const-string v14, "client_no_context_takeover"

    invoke-static {v12, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v8, :cond_a

    move v11, v15

    :cond_a
    if-eqz v6, :cond_b

    move v11, v15

    :cond_b
    move v12, v3

    move v8, v15

    goto :goto_6

    :cond_c
    const-string v14, "server_max_window_bits"

    invoke-static {v12, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    if-eqz v9, :cond_d

    move v11, v15

    :cond_d
    if-nez v6, :cond_e

    const/4 v9, 0x0

    goto :goto_7

    :cond_e
    invoke-static {v6}, LV4/t;->d0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v9, v6

    :goto_7
    if-nez v9, :cond_8

    goto :goto_5

    :cond_f
    const-string v14, "server_no_context_takeover"

    invoke-static {v12, v14}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v10, :cond_10

    move v11, v15

    :cond_10
    if-eqz v6, :cond_11

    move v11, v15

    :cond_11
    move v12, v3

    move v10, v15

    goto :goto_6

    :cond_12
    const/4 v15, 0x1

    move v6, v15

    goto/16 :goto_1

    :cond_13
    const/4 v3, 0x1

    move v11, v3

    move v12, v15

    goto/16 :goto_1

    :cond_14
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v0
.end method
