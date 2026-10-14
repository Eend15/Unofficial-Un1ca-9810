.class public abstract Lf2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.app.SemWallpaperColors"

    invoke-static {v0}, Le0/a;->B(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getDarkModeDimOpacity"

    invoke-static {v1, v4, v3}, Le0/a;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lf2/e;->a:Ljava/lang/reflect/Method;

    invoke-static {v0}, Le0/a;->B(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getAdaptiveDimOpacity"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Le0/a;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lf2/e;->b:Ljava/lang/reflect/Method;

    invoke-static {v0}, Le0/a;->B(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdaptiveDimColor"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Le0/a;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lf2/e;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a(Landroid/content/Context;I)[F
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p0, p1}, LL1/a;->semGetWallpaperColors(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "DarkModeFilter"

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_night_theme"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isNightMode : Window = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "App = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v4, v8, v9}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isNightMode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " ui_mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v4, v8, v9}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v8, 0x437f0000    # 255.0f

    if-nez v7, :cond_2

    if-eqz v6, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v6, "display_night_theme_wallpaper"

    invoke-static {p0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_3

    move p0, v3

    goto :goto_2

    :cond_3
    move p0, v5

    :goto_2
    const-string v6, "isApplyToWallpaper: "

    invoke-static {v6, p0}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_5

    new-array p0, v5, [Ljava/lang/Object;

    sget-object v6, Lf2/e;->a:Ljava/lang/reflect/Method;

    invoke-static {p1, v6, p0}, Le0/a;->Q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const-string p1, "#000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " Dark mode enabled : opacity :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v9, 0x3e800000    # 0.25f

    cmpl-float v10, p0, v9

    if-lez v10, :cond_4

    const-string p0, " Over limit dark mode opacity. So change opacity"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v9

    :cond_4
    int-to-float v4, v6

    div-float/2addr v4, v8

    int-to-float v6, v7

    div-float/2addr v6, v8

    int-to-float p1, p1

    div-float/2addr p1, v8

    new-array v2, v2, [F

    aput v4, v2, v5

    aput v6, v2, v3

    aput p1, v2, v1

    aput p0, v2, v0

    return-object v2

    :cond_5
    sget-object p0, Lf2/e;->c:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1, p0, v6}, Le0/a;->Q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v7, Lf2/e;->b:Ljava/lang/reflect/Method;

    invoke-static {p1, v7, v6}, Le0/a;->Q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_7

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " Adaptive dim enabled : col"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , opacity :"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float p0, v6

    div-float/2addr p0, v8

    int-to-float v4, v7

    div-float/2addr v4, v8

    int-to-float v6, v9

    div-float/2addr v6, v8

    new-array v2, v2, [F

    aput p0, v2, v5

    aput v4, v2, v3

    aput v6, v2, v1

    aput p1, v2, v0

    return-object v2

    :cond_6
    const-string p0, " color object is null"

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method
