.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/CacheControl$Companion;",
        "",
        "()V",
        "FORCE_CACHE",
        "Lokhttp3/CacheControl;",
        "FORCE_NETWORK",
        "parse",
        "headers",
        "Lokhttp3/Headers;",
        "indexOfElement",
        "",
        "",
        "characters",
        "startIndex",
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
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    if-ge p3, p0, :cond_1

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p2, v1}, LV4/m;->p0(Ljava/lang/String;C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "headers"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    if-ge v7, v2, :cond_12

    add-int/lit8 v22, v7, 0x1

    invoke-virtual {v1, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "Cache-Control"

    invoke-static {v6, v4}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v9, :cond_0

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_0
    move-object v9, v7

    goto :goto_2

    :cond_1
    const-string v4, "Pragma"

    invoke-static {v6, v4}, LV4/u;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_11

    const-string v6, "=,;"

    invoke-direct {v0, v7, v6, v4}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LV4/m;->N0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v6, v3, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x2c

    if-eq v3, v1, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_3

    :cond_2
    move/from16 v25, v2

    const/4 v2, 0x0

    const/16 v24, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    invoke-static {v7, v6}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x22

    if-ne v3, v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    move/from16 v25, v2

    const/4 v2, 0x0

    invoke-static {v7, v6, v1, v2, v3}, LV4/m;->u0(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    move/from16 v25, v2

    const/4 v2, 0x0

    const/16 v24, 0x1

    const-string v3, ",;"

    invoke-direct {v0, v7, v3, v1}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LV4/m;->N0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v3, v6

    const/4 v1, 0x0

    :goto_5
    const-string v5, "no-cache"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v10, v24

    :goto_6
    move/from16 v2, v25

    goto/16 :goto_3

    :cond_5
    const-string v5, "no-store"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v11, v24

    goto :goto_6

    :cond_6
    const-string v5, "max-age"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v12

    :cond_7
    :goto_7
    move-object/from16 v1, p1

    move v4, v3

    goto :goto_6

    :cond_8
    const/4 v5, -0x1

    const-string v6, "s-maxage"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v1, v5}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v13

    goto :goto_7

    :cond_9
    const-string v5, "private"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v14, v24

    goto :goto_6

    :cond_a
    const-string v5, "public"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v15, v24

    goto :goto_6

    :cond_b
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v16, v24

    goto :goto_6

    :cond_c
    const-string v5, "max-stale"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const v4, 0x7fffffff

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v17

    goto :goto_7

    :cond_d
    const-string v5, "min-fresh"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v18

    goto :goto_7

    :cond_e
    const/4 v5, -0x1

    const-string v1, "only-if-cached"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v19, v24

    goto/16 :goto_6

    :cond_f
    const-string v1, "no-transform"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v20, v24

    goto/16 :goto_6

    :cond_10
    const-string v1, "immutable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, p1

    move v4, v3

    move/from16 v21, v24

    goto/16 :goto_6

    :cond_11
    const/16 v24, 0x1

    move-object/from16 v1, p1

    move/from16 v7, v22

    goto/16 :goto_0

    :cond_12
    if-nez v8, :cond_13

    const/16 v22, 0x0

    goto :goto_8

    :cond_13
    move-object/from16 v22, v9

    :goto_8
    new-instance v0, Lokhttp3/CacheControl;

    const/16 v23, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;LF3/f;)V

    return-object v0
.end method
