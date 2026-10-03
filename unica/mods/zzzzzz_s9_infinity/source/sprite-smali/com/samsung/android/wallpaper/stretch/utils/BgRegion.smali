.class public final Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;
.super Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;",
        "Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;",
        "stretch-1.0.3_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public e:I

.field public f:I


# virtual methods
.method public final k(I[B)V
    .locals 6

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;->e:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;->f:I

    add-int/2addr p1, v1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    mul-int/2addr v3, v2

    div-int/2addr v1, v3

    if-eqz p1, :cond_2

    :goto_2
    if-ge v0, v1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-direct {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, v1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-direct {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;->e:I

    iget v1, p0, Lcom/samsung/android/wallpaper/stretch/utils/BgRegion;->f:I

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const-string v4, "BgRegion version="

    const-string v5, ", contentsType="

    const-string v6, ", bounds="

    invoke-static {v0, v4, v1, v5, v6}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
