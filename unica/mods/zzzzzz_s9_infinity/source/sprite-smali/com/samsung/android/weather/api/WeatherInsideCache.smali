.class public final Lcom/samsung/android/weather/api/WeatherInsideCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherInsideCache;",
        "",
        "<init>",
        "()V",
        "dataLevel",
        "",
        "commandLevel",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "update",
        "getCommandLevel",
        "getDataLevel",
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
.field public static final INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

.field private static commandLevel:I

.field private static dataLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommandLevel()I
    .locals 0

    sget p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->commandLevel:I

    return p0
.end method

.method public final getDataLevel()I
    .locals 0

    sget p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->dataLevel:I

    return p0
.end method

.method public final init(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/weather/api/WeatherInsideCache;->update(Landroid/content/Context;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final update(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPackageName(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lm3/d;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getDataPermission()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sput p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->dataLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lm3/d;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getCommandPermission()I

    move-result v1

    :cond_1
    sput v1, Lcom/samsung/android/weather/api/WeatherInsideCache;->commandLevel:I

    const/4 p0, 0x1

    return p0
.end method
