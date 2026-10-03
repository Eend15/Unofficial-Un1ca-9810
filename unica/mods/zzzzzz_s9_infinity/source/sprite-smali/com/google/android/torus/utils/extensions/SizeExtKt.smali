.class public final Lcom/google/android/torus/utils/extensions/SizeExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getAspectRatio",
        "",
        "Landroid/util/Size;",
        "Landroid/util/SizeF;",
        "torus_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getAspectRatio(Landroid/util/Size;)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_1
    return v0
.end method

.method public static final getAspectRatio(Landroid/util/SizeF;)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    div-float/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_1
    return v0
.end method
