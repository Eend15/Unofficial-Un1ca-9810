.class public final Le3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/d;


# instance fields
.field public final synthetic d:I

.field public e:I


# direct methods
.method public synthetic constructor <init>(BI)V
    .locals 0

    .line 1
    iput p2, p0, Le3/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Le3/a;->d:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le3/a;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Le3/a;->d:I

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Le3/a;->e:I

    return-void
.end method

.method public static d(Landroid/content/Context;)Landroid/text/TextPaint;
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sget v1, Li1/c;->watermark_text_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Li1/d;->weather_watermark_font_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p0, "sec"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/16 v2, 0x190

    invoke-static {p0, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/text/TextPaint;
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sget v1, Li1/c;->watermark_text_stroke_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Li1/d;->weather_watermark_font_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p0, "sec"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/16 v2, 0x190

    invoke-static {p0, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget p0, p0, Le3/a;->d:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Le3/a;->d:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 v0, 0x1f

    iget p0, p0, Le3/a;->e:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/content/Context;ILandroid/util/Size;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenSize"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v5

    if-lez v6, :cond_0

    cmpl-float v6, v4, v5

    if-gtz v6, :cond_1

    :cond_0
    cmpg-float v6, v3, v5

    if-gez v6, :cond_2

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    :cond_1
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_2
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    if-le v5, v6, :cond_3

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_0
    iput v1, p0, Le3/a;->e:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "drawWatermark, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "WatermarkGenerator"

    invoke-static {v3, p4, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    const-string v4, "getString(...)"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-le p4, v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    new-array v1, v7, [Ljava/lang/Object;

    const-string v8, "drawLandscapeWatermark"

    invoke-static {v3, v8, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v9, v1, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v1, v8

    div-int/2addr v1, v6

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v6

    iget p0, p0, Le3/a;->e:I

    if-nez p0, :cond_4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr p0, v8

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, p0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/2addr p0, v6

    div-float/2addr v8, v3

    float-to-int p3, v8

    sub-int v8, p0, p3

    :cond_4
    sget p0, Li1/d;->weather_watermark_horizontal_bottom_margin:I

    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sget p3, Li1/d;->weather_watermark_logo_size:I

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    int-to-float v3, v8

    invoke-static {}, Lf2/g;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p2}, LK/I;->b0(I)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Li1/d;->weather_watermark_horizontal_left_margin_for_flip_cover:I

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    goto :goto_1

    :cond_5
    sget p2, Li1/d;->weather_watermark_horizontal_left_margin:I

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    :goto_1
    add-float/2addr v3, p2

    int-to-float p2, v1

    int-to-float v1, v6

    mul-float/2addr p0, v1

    add-float/2addr p0, p2

    sget p2, Li1/e;->intelligence_watermark_logo:I

    invoke-virtual {p4, p2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    float-to-int v5, v3

    float-to-int v6, p0

    add-float/2addr v3, p3

    float-to-int v8, v3

    add-float/2addr p3, p0

    float-to-int p3, p3

    invoke-virtual {p2, v5, v6, v8, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget p2, Li1/j;->ai_watermark_msg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Le3/a;->d(Landroid/content/Context;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, p2, v7, v5, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Le3/a;->e(Landroid/content/Context;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, p2, v7, v6, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget v5, Li1/d;->weather_watermark_logo_msg_space:I

    invoke-virtual {p4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    add-float/2addr p4, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p0, p3

    sub-float/2addr p0, v1

    invoke-virtual {v2, p2, p4, p0, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2, p2, p4, p0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p2, v7, [Ljava/lang/Object;

    const-string p4, "drawPortraitWatermark"

    invoke-static {v3, p4, p2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p4

    if-le p2, p4, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr p4, v1

    int-to-float p2, v6

    div-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_2

    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le p4, v1, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result p3

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    :goto_3
    sget p4, Li1/d;->weather_watermark_horizontal_bottom_margin:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    sget v1, Li1/d;->weather_watermark_logo_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-float p2, p2

    sget v3, Li1/d;->weather_watermark_horizontal_left_margin:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v3, p2

    int-to-float p2, p3

    sub-float p3, p2, v1

    int-to-float v6, v6

    mul-float/2addr v6, p4

    sub-float/2addr p3, v6

    sget v6, Li1/e;->intelligence_watermark_logo:I

    invoke-virtual {p0, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    float-to-int v6, v3

    float-to-int v8, p3

    add-float/2addr v3, v1

    float-to-int v9, v3

    add-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v5, v6, v8, v9, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget p3, Li1/j;->ai_watermark_msg:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Le3/a;->d(Landroid/content/Context;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, p3, v7, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Le3/a;->e(Landroid/content/Context;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, p3, v7, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget v1, Li1/d;->weather_watermark_logo_msg_space:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p0, v3

    const/4 v1, 0x3

    int-to-float v1, v1

    mul-float/2addr p4, v1

    sub-float/2addr p2, p4

    invoke-virtual {v2, p3, p0, p2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2, p3, p0, p2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, Le3/a;->d:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1d

    iget p0, p0, Le3/a;->e:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
