.class public abstract Lr4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "kotlin.jvm.serialization.use8to7"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a([Ljava/lang/String;)[B
    .locals 13

    const/4 v0, 0x7

    if-eqz p0, :cond_c

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_5

    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    aget-object v1, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    aget-object v0, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    array-length v0, p0

    move v1, v2

    move v4, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v4, [B

    array-length v1, p0

    move v4, v2

    move v5, v4

    :cond_1
    :goto_1
    if-ge v4, v1, :cond_3

    aget-object v6, p0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    if-ltz v7, :cond_1

    move v8, v2

    :goto_2
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v5

    if-ne v8, v7, :cond_2

    move v5, v10

    goto :goto_1

    :cond_2
    move v8, v9

    move v5, v10

    goto :goto_2

    :cond_3
    return-object v0

    :cond_4
    const v4, 0xffff

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    aget-object v1, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    :cond_5
    array-length v1, p0

    move v4, v2

    move v5, v4

    :goto_3
    if-ge v4, v1, :cond_6

    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    new-array v1, v5, [B

    array-length v4, p0

    move v6, v2

    move v7, v6

    :goto_4
    if-ge v6, v4, :cond_8

    aget-object v8, p0, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v2

    :goto_5
    if-ge v10, v9, :cond_7

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v1, v7

    add-int/lit8 v10, v10, 0x1

    move v7, v11

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    move p0, v2

    :goto_6
    if-ge p0, v5, :cond_9

    aget-byte v4, v1, p0

    add-int/lit8 v4, v4, 0x7f

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_9
    mul-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x8

    new-array p0, v5, [B

    move v0, v2

    move v4, v0

    move v6, v4

    :goto_7
    if-ge v0, v5, :cond_b

    aget-byte v7, v1, v4

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v6

    add-int/lit8 v8, v4, 0x1

    aget-byte v9, v1, v8

    add-int/lit8 v10, v6, 0x1

    shl-int v11, v3, v10

    sub-int/2addr v11, v3

    and-int/2addr v9, v11

    rsub-int/lit8 v11, v6, 0x7

    shl-int/2addr v9, v11

    add-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, p0, v0

    const/4 v7, 0x6

    if-ne v6, v7, :cond_a

    add-int/lit8 v4, v4, 0x2

    move v6, v2

    goto :goto_8

    :cond_a
    move v4, v8

    move v6, v10

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    return-object p0

    :cond_c
    const/4 p0, 0x3

    const/4 v1, 0x1

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    const/4 v3, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding"

    const/4 v5, 0x0

    const-string v6, "data"

    aput-object v6, p0, v5

    const-string v5, "encodeBytes"

    const-string v6, "encode8to7"

    const-string v7, "splitBytesToStringArray"

    const-string v8, "decodeBytes"

    const-string v9, "dropMarker"

    const-string v10, "combineStringArrayIntoBytes"

    const-string v11, "decode7to8"

    aput-object v4, p0, v1

    packed-switch v0, :pswitch_data_0

    aput-object v5, p0, v3

    goto :goto_9

    :pswitch_0
    aput-object v11, p0, v3

    goto :goto_9

    :pswitch_1
    aput-object v10, p0, v3

    goto :goto_9

    :pswitch_2
    aput-object v9, p0, v3

    goto :goto_9

    :pswitch_3
    aput-object v8, p0, v3

    goto :goto_9

    :pswitch_4
    aput-object v7, p0, v3

    goto :goto_9

    :pswitch_5
    const-string v0, "addModuloByte"

    aput-object v0, p0, v3

    goto :goto_9

    :pswitch_6
    aput-object v6, p0, v3

    :goto_9
    :pswitch_7
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
