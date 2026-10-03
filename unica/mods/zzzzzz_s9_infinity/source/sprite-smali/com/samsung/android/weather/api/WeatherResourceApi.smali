.class public final Lcom/samsung/android/weather/api/WeatherResourceApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tJ:\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0018\u00010\u0013R\u00020\u0014H\u0007J2\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0018\u00010\u0013R\u00020\u0014H\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherResourceApi;",
        "",
        "<init>",
        "()V",
        "getTempPhrase",
        "",
        "context",
        "Landroid/content/Context;",
        "temp",
        "",
        "getTempPhraseOpt",
        "tempScale",
        "getIcon",
        "Landroid/graphics/drawable/Drawable;",
        "icon",
        "oneUiVersion",
        "nightMode",
        "",
        "theme",
        "Landroid/content/res/Resources$Theme;",
        "Landroid/content/res/Resources;",
        "getMonoIcon",
        "weather-api-1.0.46_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/weather/api/WeatherResourceApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/WeatherResourceApi;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/WeatherResourceApi;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherResourceApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherResourceApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getIcon$default(Lcom/samsung/android/weather/api/WeatherResourceApi;Landroid/content/Context;IIZLandroid/content/res/Resources$Theme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/weather/api/WeatherResourceApi;->getIcon(Landroid/content/Context;IIZLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMonoIcon$default(Lcom/samsung/android/weather/api/WeatherResourceApi;Landroid/content/Context;IILandroid/content/res/Resources$Theme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/weather/api/WeatherResourceApi;->getMonoIcon(Landroid/content/Context;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getIcon(Landroid/content/Context;IIZLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string p0, "WPI"

    const-string v0, "not authorized package : "

    const-string v1, "context"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lm3/d;->q(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lj0/s;->b(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {p1, p3, p4}, Lm3/d;->r(Landroid/content/Context;IZ)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "getResourcesForApplication(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p2, p3, p2

    const-string p3, "drawable"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, p5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "getIcon] "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    instance-of p0, p1, Lq3/g;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, p1

    :goto_2
    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public final getMonoIcon(Landroid/content/Context;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string p0, "WPI"

    const-string v0, "not authorized package : "

    const-string v1, "context"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lm3/d;->q(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lj0/s;->b(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getStringArray(...)"

    const v3, 0x11170

    if-lt p3, v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, LY2/a;->weather_mono_icon_names_one_ui_7_8:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v3, 0xea60

    if-lt p3, v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, LY2/a;->weather_mono_icon_names_one_ui_6:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "getResourcesForApplication(...)"

    invoke-static {p1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p2, p3, p2

    const-string p3, "drawable"

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "getMonoIcon] "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    instance-of p0, p1, Lq3/g;

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, p1

    :goto_3
    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public final getTempPhrase(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x3e7

    if-eq p2, p0, :cond_1

    if-gez p2, :cond_0

    sget p0, LY2/d;->pd_minus_temp:I

    goto :goto_0

    :cond_0
    sget p0, LY2/d;->pd_temp:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "--"

    :goto_1
    return-object p0
.end method

.method public final getTempPhraseOpt(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x3e7

    if-eq p3, p0, :cond_1

    const/4 p0, 0x1

    const-string v0, "getString(...)"

    if-ne p0, p2, :cond_0

    sget p0, LY2/d;->temp_f_m:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget p0, LY2/d;->temp_f_c:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "--"

    :goto_0
    return-object p0
.end method
