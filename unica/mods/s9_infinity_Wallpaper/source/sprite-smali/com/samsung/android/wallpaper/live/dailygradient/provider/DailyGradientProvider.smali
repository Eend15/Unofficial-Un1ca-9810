.class public final Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JO\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J#\u0010\u0015\u001a\u00020\u00142\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010!\u001a\u00020 8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;",
        "Ll1/b;",
        "<init>",
        "()V",
        "",
        "gradientTheme",
        "gradientStyle",
        "LJ1/d;",
        "params",
        "Landroid/content/Context;",
        "context",
        "",
        "isCover",
        "",
        "timeStamp",
        "",
        "frameNumber",
        "Landroid/graphics/Bitmap;",
        "createThumbnail",
        "(Ljava/lang/String;Ljava/lang/String;LJ1/d;Landroid/content/Context;ZLjava/lang/Long;Ljava/lang/Integer;)Landroid/graphics/Bitmap;",
        "LJ1/e;",
        "getThumbnail",
        "(Landroid/content/Context;LJ1/d;)LJ1/e;",
        "TAG",
        "Ljava/lang/String;",
        "Ls1/b;",
        "getCurrentWeatherData",
        "Ls1/b;",
        "getGetCurrentWeatherData",
        "()Ls1/b;",
        "setGetCurrentWeatherData",
        "(Ls1/b;)V",
        "Lw1/e;",
        "deviceGradientRatio",
        "Lw1/e;",
        "getDeviceGradientRatio",
        "()Lw1/e;",
        "setDeviceGradientRatio",
        "(Lw1/e;)V",
        "SpriteWallpaper_release"
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
.field private final TAG:Ljava/lang/String;

.field public deviceGradientRatio:Lw1/e;

.field public getCurrentWeatherData:Ls1/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DailyGradientProvider"

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object v0

    invoke-static {v0}, Le0/a;->t(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->injectGetCurrentWeatherData(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;Ls1/b;)V

    new-instance v0, Lw1/e;

    invoke-direct {v0}, Lw1/e;-><init>()V

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider_MembersInjector;->injectDeviceGradientRatio(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;Lw1/e;)V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->getThumbnail$lambda$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final createThumbnail(Ljava/lang/String;Ljava/lang/String;LJ1/d;Landroid/content/Context;ZLjava/lang/Long;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    iget-object v5, v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    const-string v6, "createThumbnail: gradientTheme="

    const-string v7, ", gradientStyle="

    const-string v8, ", isCover="

    invoke-static {v6, v1, v7, v2, v8}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v10, p5

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", timeStamp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", frameNumber="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    iget v6, v3, LJ1/d;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/16 v8, 0x190

    if-eqz v3, :cond_1

    iget-object v9, v3, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    const-string v11, "thumbnail_width"

    invoke-virtual {v9, v11, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v15, v9

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v9, v3, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v9, :cond_2

    const-string v11, "thumbnail_height"

    invoke-virtual {v9, v11, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v13, v8

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    iget-object v8, v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "createThumbnail: width="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", height="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", which="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v8, v9, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v12, Lv1/g;

    new-instance v8, Landroid/util/SizeF;

    invoke-static {v15}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v8, v9, v11}, Landroid/util/SizeF;-><init>(FF)V

    invoke-static/range {p4 .. p4}, LF3/k;->c(Ljava/lang/Object;)V

    move-object/from16 v11, p4

    invoke-direct {v12, v8, v11}, Lv1/g;-><init>(Landroid/util/SizeF;Landroid/content/Context;)V

    new-instance v8, Lw1/c;

    invoke-direct {v8}, Lw1/c;-><init>()V

    const/16 v16, 0x2

    if-eqz v3, :cond_3

    iget-object v3, v3, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const-string v9, "request_portrait"

    invoke-virtual {v3, v9, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    new-instance v9, Lv1/h;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->getGetCurrentWeatherData()Ls1/b;

    move-result-object v5

    new-instance v14, Ls1/a;

    move-object/from16 v17, v15

    const/4 v15, 0x1

    const/4 v7, 0x0

    invoke-direct {v14, v15, v7}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v5, v14}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v5

    iget-object v14, v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "createThumbnail: CurrentWeatherData="

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    new-array v10, v15, [Ljava/lang/Object;

    invoke-static {v14, v7, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v5}, Lv1/h;->d(Lq1/a;)V

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    invoke-static/range {p6 .. p6}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lv1/h;->a(J)[I

    move-result-object v5

    aget v5, v5, v15

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static/range {p6 .. p6}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lv1/h;->a(J)[I

    move-result-object v5

    const/4 v7, 0x1

    aget v5, v5, v7

    :goto_5
    sget-object v7, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->Companion:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;

    invoke-virtual {v7, v1}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    move-result-object v1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v14, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->Companion:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;

    invoke-virtual {v14, v2}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    move-result-object v9

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v6}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v3, 0x0

    :goto_7
    move-object v7, v8

    move-object v8, v1

    move/from16 v10, p5

    move-object v1, v12

    move v12, v3

    move-object v3, v13

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lw1/c;->a(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;ZIZLandroid/content/Context;)Lw1/a;

    move-result-object v7

    iget-object v8, v7, Lw1/a;->a:[[J

    aget-object v8, v8, v5

    const/4 v9, 0x4

    if-nez v4, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_9

    new-array v4, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v10, v4, v11

    const v10, 0x3dcccccd    # 0.1f

    const/4 v11, 0x1

    aput v10, v4, v11

    const v10, 0x3e99999a    # 0.3f

    aput v10, v4, v16

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v4, v10

    goto :goto_9

    :cond_9
    :goto_8
    iget-object v4, v7, Lw1/a;->b:[[F

    aget-object v4, v4, v5

    :goto_9
    iget-object v10, v7, Lw1/a;->c:[F

    if-eqz v10, :cond_a

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    :goto_a
    iget-object v11, v7, Lw1/a;->d:[F

    if-eqz v11, :cond_b

    aget v11, v11, v5

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    :goto_b
    iget-object v7, v7, Lw1/a;->e:[F

    if-eqz v7, :cond_c

    aget v5, v7, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_c

    :cond_c
    const/4 v5, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->getDeviceGradientRatio()Lw1/e;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lw1/e;->a(I)F

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "createThumbnail: colorArray="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", positionArray="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", rotationAngle="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v7, v12, v15}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14, v2}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    move-result-object v7

    invoke-static {v7}, LF3/k;->c(Ljava/lang/Object;)V

    iput-object v7, v1, Lv1/g;->d:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    iget-object v12, v1, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    const-string v13, "iGradientType"

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v12, v13, v7}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v9, :cond_d

    aget-wide v12, v8, v7

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lv1/g;->b(ILjava/lang/Integer;)V

    aget v12, v4, v7

    iget-object v13, v1, Lv1/g;->f:[F

    aput v12, v13, v7

    iget-object v12, v1, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    const-string v14, "colorPointPos"

    invoke-virtual {v12, v14, v13}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_d
    sget-object v4, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->Companion:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;

    invoke-virtual {v4, v2}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v2, v4, :cond_e

    invoke-static {v10}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lv1/g;->l:F

    invoke-static {v11}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lv1/g;->i:F

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lv1/g;->j:F

    iput v6, v1, Lv1/g;->o:F

    :cond_e
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v4

    const-string v5, "beginRecording(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lv1/g;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createThumbnail: thumbnail="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private static final getThumbnail$lambda$0(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDeviceGradientRatio()Lw1/e;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->deviceGradientRatio:Lw1/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "deviceGradientRatio"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getGetCurrentWeatherData()Ls1/b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->getCurrentWeatherData:Ls1/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "getCurrentWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "gradient_theme"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p2, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v2, "gradient_style"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    const/4 v1, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_2

    iget-object v2, p2, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    const-string v5, "is_cover"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v10

    :goto_2
    if-eqz p2, :cond_3

    iget-object v2, p2, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    const-string v5, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object v8, v0

    :goto_3
    if-eqz p2, :cond_4

    iget-object v2, p2, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    const-string v5, "thumbnail_frame_no"

    invoke-virtual {v2, v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object v9, v0

    :goto_4
    const-string v1, "getThumbnail: pFd="

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    const-string v2, "getThumbnail style="

    const-string v5, ", theme="

    const-string v6, ", isCover="

    invoke-static {v2, v4, v5, v3, v6}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", timeStamp="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", frameNumber="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->createThumbnail(Ljava/lang/String;Ljava/lang/String;LJ1/d;Landroid/content/Context;ZLjava/lang/Long;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v0, LB1/a;

    const/4 v2, 0x7

    invoke-direct {v0, p1, v2}, LB1/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {p1, p2, v0}, LK/I;->s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, LJ1/e;

    invoke-direct {p0, p1}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_7

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    goto :goto_6

    :cond_7
    move-object p1, v0

    :goto_6
    if-eqz p2, :cond_8

    iget v0, p2, LJ1/d;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/thumbnail.jpg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getThumbnail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, LJ1/d;->i:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v10, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const/high16 p1, 0x10000000

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, LJ1/e;

    invoke-direct {p0, p1}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :goto_7
    return-object p0
.end method

.method public bridge synthetic getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onGetBackgroundRegion(Landroid/content/Context;LJ1/a;)LJ1/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic prepareWallpaper(Landroid/content/Context;LJ1/i;)LJ1/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setDeviceGradientRatio(Lw1/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->deviceGradientRatio:Lw1/e;

    return-void
.end method

.method public final setGetCurrentWeatherData(Ls1/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientProvider;->getCurrentWeatherData:Ls1/b;

    return-void
.end method
