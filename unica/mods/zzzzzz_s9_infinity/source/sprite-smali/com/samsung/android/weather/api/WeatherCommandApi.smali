.class public final Lcom/samsung/android/weather/api/WeatherCommandApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ)\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u0017J\u0015\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001b\u0010\u0008J\u0015\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u0008J\u0015\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!R\u0014\u0010#\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0014\u0010$\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010!R\u0014\u0010%\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008%\u0010!R\u0014\u0010&\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008&\u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherCommandApi;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "intervalRefresh",
        "(Landroid/content/Context;)Z",
        "directRefresh",
        "Landroid/content/Intent;",
        "intent",
        "",
        "startActivity",
        "(Landroid/content/Context;Landroid/content/Intent;)I",
        "checkProfileSafeIntent",
        "",
        "key",
        "Lcom/samsung/android/weather/api/WeatherDetailAnchor;",
        "anchor",
        "goToDetail",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/weather/api/WeatherDetailAnchor;)I",
        "goToLocations",
        "(Landroid/content/Context;)I",
        "gotoSearch",
        "goToSetting",
        "goToUseCurrentLocation",
        "refresh",
        "refreshObservation",
        "Lq3/m;",
        "setCurrentLocationToTop",
        "(Landroid/content/Context;)V",
        "EXTERNAL_FROM",
        "Ljava/lang/String;",
        "LOCATION",
        "PACKAGE_NAME",
        "FROM",
        "PACKAGE",
        "ANCHOR_TYPE",
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
.field private static final ANCHOR_TYPE:Ljava/lang/String; = "type"

.field private static final EXTERNAL_FROM:Ljava/lang/String; = "externalFrom"

.field private static final FROM:Ljava/lang/String; = "from"

.field public static final INSTANCE:Lcom/samsung/android/weather/api/WeatherCommandApi;

.field private static final LOCATION:Ljava/lang/String; = "location_key"

.field private static final PACKAGE:Ljava/lang/String; = "PACKAGE"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/WeatherCommandApi;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/WeatherCommandApi;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherCommandApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherCommandApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkProfileSafeIntent(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No handler to process the intent, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", in this profile!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WPI"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final directRefresh(Landroid/content/Context;)Z
    .locals 5

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getCommandLevel()I

    move-result p0

    const/4 v0, 0x2

    const-string v1, "has no refresh permission "

    const/4 v2, 0x0

    const-string v3, "WPI"

    if-le v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPackageName(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lj0/s;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.weather.daemon.REQUEST_LOCATION_WEATHER_DATA_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PACKAGE"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "externalFrom"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "No target package found to resolve the intent!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static synthetic goToDetail$default(Lcom/samsung/android/weather/api/WeatherCommandApi;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/weather/api/WeatherDetailAnchor;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/weather/api/WeatherCommandApi;->goToDetail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/weather/api/WeatherDetailAnchor;)I

    move-result p0

    return p0
.end method

.method private final intervalRefresh(Landroid/content/Context;)Z
    .locals 5

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getCommandLevel()I

    move-result p0

    const/4 v0, 0x2

    const-string v1, "has no refresh permission "

    const/4 v2, 0x0

    const-string v3, "WPI"

    if-le v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPackageName(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lj0/s;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.weather.action.INTERVAL_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "from"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "externalFrom"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "No target package found to resolve the intent!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private final startActivity(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 5

    invoke-static {p1}, Lm3/d;->q(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getCommandLevel()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "has no UI permission "

    const-string v4, "WPI"

    if-le v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getPackageName(...)"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lj0/s;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v1, "externalFrom"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/weather/api/WeatherCommandApi;->checkProfileSafeIntent(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    if-eqz p0, :cond_3

    return p0

    :cond_3
    :try_start_0
    const-string p0, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "from"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0
.end method


# virtual methods
.method public final goToDetail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/weather/api/WeatherDetailAnchor;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.weather.intent.action.DETAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "location_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->getType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "type"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/weather/api/WeatherCommandApi;->startActivity(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public final goToLocations(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.weather.intent.action.CITYLIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/weather/api/WeatherCommandApi;->startActivity(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public final goToSetting(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.weather.intent.action.SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/weather/api/WeatherCommandApi;->startActivity(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public final goToUseCurrentLocation(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.weather.intent.action.USE_CURRENT_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/weather/api/WeatherCommandApi;->startActivity(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public final gotoSearch(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.weather.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/weather/api/WeatherCommandApi;->startActivity(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public final refresh(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WPI"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/weather/api/WeatherCommandApi;->intervalRefresh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/weather/api/WeatherCommandApi;->directRefresh(Landroid/content/Context;)Z

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final refreshObservation(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WPI"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lm3/d;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getObservationExpireTime(Ljava/util/List;)J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/weather/api/WeatherCommandApi;->directRefresh(Landroid/content/Context;)Z

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final setCurrentLocationToTop(Landroid/content/Context;)V
    .locals 13

    const/4 p0, 0x1

    const/4 v0, 0x2

    const-string v1, "WPI"

    const-string v2, "context"

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getCommandLevel()I

    move-result p1

    if-le v0, p1, :cond_2

    const-string p0, "has no refresh permission"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object p1, Lk3/b;->b:LZ4/c;

    invoke-virtual {p1}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "COL_SETTING_LAST_SEL_LOCATION"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-static {v1, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v4

    :goto_2
    const-string v5, "cityId:current"

    if-eqz v1, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    if-nez v1, :cond_1c

    sget-object v1, Lk3/b;->a:LM1/d;

    iget-object v1, v1, LM1/d;->g:Ljava/lang/Object;

    check-cast v1, Lw0/q;

    invoke-virtual {v1, v5}, Lw0/q;->c(Ljava/lang/String;)Lb5/b;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, p0

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    if-eqz v1, :cond_1c

    invoke-virtual {p1, v5, v2}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-static {}, Lk3/b;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    move-object p1, v4

    :goto_5
    if-eqz p1, :cond_1c

    invoke-static {p1}, Lr3/j;->Q0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v1, LK/c;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LK/c;-><init>(I)V

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/a;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/weather/api/entity/weather/a;-><init>(LE3/c;I)V

    invoke-static {p1, v2}, Lr3/o;->k0(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    if-ltz v3, :cond_8

    check-cast v1, Lb5/b;

    iget-object v1, v1, Lb5/b;->a:Lc5/e;

    if-eqz v1, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lc5/e;->Z:Ljava/lang/Integer;

    :cond_7
    move v3, v2

    goto :goto_6

    :cond_8
    invoke-static {}, Lr3/k;->i0()V

    throw v4

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/b;

    sget-object v0, Lk3/b;->a:LM1/d;

    const-string v0, "entity"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk3/b;->a:LM1/d;

    iget-object v1, p1, Lb5/b;->a:Lc5/e;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, LM1/d;->a:Ljava/lang/Object;

    check-cast v3, LZ4/c;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "build(...)"

    iget-object v7, v3, LZ4/c;->a:LU3/w;

    const-string v8, "weatherinfo"

    invoke-static {v7, v8}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "COL_WEATHER_KEY"

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc5/e;

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    iget-object v11, v8, Lc5/e;->a:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->Z:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_ORDER"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->p:Ljava/lang/String;

    const-string v11, "COL_WEATHER_LOCATION"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->g:Ljava/lang/String;

    const-string v11, "COL_WEATHER_NAME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->h:Ljava/lang/String;

    const-string v11, "COL_WEATHER_NAME_ENG"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->j:Ljava/lang/String;

    const-string v11, "COL_WEATHER_STATE"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->k:Ljava/lang/String;

    const-string v11, "COL_WEATHER_STATE_ENG"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->l:Ljava/lang/String;

    const-string v11, "COL_WEATHER_COUNTRY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->m:Ljava/lang/String;

    const-string v11, "COL_WEATHER_COUNTRY_ENG"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->n:Ljava/lang/String;

    const-string v11, "COL_WEATHER_COUNTRY_CODE"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->o:Ljava/lang/String;

    const-string v11, "COL_WEATHER_POSTAL_CODE"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->d:Ljava/lang/Long;

    const-string v11, "COL_WEATHER_TIME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, v8, Lc5/e;->t:Ljava/lang/String;

    const-string v11, "COL_WEATHER_TIMEZONE"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->u:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_IS_DAYLIGHT_SAVING"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->v:Ljava/lang/Long;

    const-string v11, "COL_WEATHER_UPDATE_TIME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, v8, Lc5/e;->w:Ljava/lang/Long;

    const-string v11, "COL_WEATHER_SUNRISE_TIME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, v8, Lc5/e;->x:Ljava/lang/Long;

    const-string v11, "COL_WEATHER_SUNSET_TIME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, v8, Lc5/e;->y:Ljava/lang/Long;

    const-string v11, "COL_WEATHER_MOONRISE_TIME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, v8, Lc5/e;->z:Ljava/lang/Long;

    const-string v11, "COL_WEATHER_MOONSET_TIME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, v8, Lc5/e;->A:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_IS_DAY_OR_NIGHT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->e:Ljava/lang/Float;

    const-string v11, "COL_WEATHER_CURRENT_TEMP"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v9, v8, Lc5/e;->C:Ljava/lang/Float;

    const-string v11, "COL_WEATHER_HIGH_TEMP"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v9, v8, Lc5/e;->D:Ljava/lang/Float;

    const-string v11, "COL_WEATHER_LOW_TEMP"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v9, v8, Lc5/e;->E:Ljava/lang/Float;

    const-string v11, "COL_WEATHER_YESTERDAY_HIGH_TEMP"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v9, v8, Lc5/e;->F:Ljava/lang/Float;

    const-string v11, "COL_WEATHER_YESTERDAY_LOW_TEMP"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v9, v8, Lc5/e;->G:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_ICON_NUM"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->b:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_CONVERTED_ICON_NUM"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->f:Ljava/lang/String;

    const-string v11, "COL_WEATHER_WEATHER_TEXT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->H:Ljava/lang/String;

    const-string v11, "COL_WEATHER_FORECAST_TEXT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->i:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_AQI_INDEX"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->Y:Ljava/lang/String;

    const-string v11, "COL_WEATHER_URL"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->a0:Ljava/lang/String;

    const-string v11, "COL_WEATHER_HAS_INDEX"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->c0:Ljava/lang/String;

    const-string v11, "COL_WEATHER_BROADCAST"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->d0:Ljava/lang/String;

    const-string v11, "COL_WEATHER_10MIN"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->e0:Ljava/lang/String;

    const-string v11, "COL_WEATHER_PROVIDER_NAME"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->B:Ljava/lang/Float;

    const-string v11, "COL_WEATHER_FEELSLIKE_TEMP"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v9, v8, Lc5/e;->L:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_DAY_PRECIPITATION_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->K:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_DAY_HAIL_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->I:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_DAY_RAIN_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->J:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_DAY_SNOW_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->P:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_DAY_PRECIPITATION_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->O:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_DAY_HAIL_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->M:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_DAY_RAIN_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->N:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_DAY_SNOW_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->T:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_NIGHT_PRECIPITATION_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->S:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_NIGHT_HAIL_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->Q:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_NIGHT_RAIN_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->R:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_NIGHT_SNOW_PROBABILITY"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->X:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_NIGHT_PRECIPITATION_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->W:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_NIGHT_HAIL_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->U:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_NIGHT_RAIN_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->V:Ljava/lang/Double;

    const-string v11, "COL_WEATHER_NIGHT_SNOW_AMOUNT"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v9, v8, Lc5/e;->f0:Ljava/lang/Integer;

    const-string v11, "COL_WEATHER_ARCTIC_NIGHT_TYPE"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, v8, Lc5/e;->j0:Ljava/lang/String;

    const-string v11, "COL_WEATHER_LOCATION_SHORT_ADDRESS"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lc5/e;->k0:Ljava/lang/String;

    const-string v11, "COL_WEATHER_LOCATION_LABEL"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v8, Lc5/e;->l0:Ljava/lang/String;

    const-string v9, "COL_WEATHER_LOCATION_LABEL_TYPE"

    invoke-virtual {v10, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_b
    :try_start_1
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, v3, LZ4/c;->b:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v2

    goto :goto_9

    :cond_c
    move-object v2, v4

    goto :goto_a

    :goto_9
    invoke-static {v2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v2

    :goto_a
    invoke-static {v2}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ForecastToCV"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v2, p1, Lb5/b;->c:Ljava/util/ArrayList;

    iget-object v1, v1, Lc5/e;->a:Ljava/lang/String;

    iget-object v3, v0, LM1/d;->c:Ljava/lang/Object;

    check-cast v3, LZ4/b;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "weatherinfo_daily"

    iget-object v8, v3, LZ4/b;->a:LU3/w;

    invoke-static {v8, v7}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc5/c;

    if-eqz v8, :cond_e

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v11, v8, Lc5/c;->f:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "COL_DAILY_TIME"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v11, v8, Lc5/c;->b:Ljava/lang/Float;

    const-string v12, "COL_DAILY_HIGH_TEMP"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/c;->c:Ljava/lang/Float;

    const-string v12, "COL_DAILY_LOW_TEMP"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/c;->g:Ljava/lang/Float;

    const-string v12, "COL_DAILY_CURRENT_TEMP"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/c;->h:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_ICON_NUM"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->d:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_CONVERTED_ICON_NUM"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "COL_DAILY_ICON_DAY_NUM"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->i:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_CONVERTED_ICON_DAY_NUM"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->k:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_ICON_NIGHT_NUM"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->l:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_CONVERTED_ICON_NIGHT_NUM"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->y:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_PROBABILITY"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->z:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_PROBABILITY_NIGHT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->t:Ljava/lang/String;

    const-string v12, "COL_DAILY_WEATHER_TEXT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/c;->u:Ljava/lang/String;

    const-string v12, "COL_DAILY_WEATHER_TEXT_NIGHT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/c;->v:Ljava/lang/String;

    const-string v12, "COL_DAILY_NARRATIVE_TEXT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/c;->w:Ljava/lang/String;

    const-string v12, "COL_DAILY_NARRATIVE_TEXT_NIGHT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/c;->p:Ljava/lang/Float;

    const-string v12, "COL_DAILY_PM10"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/c;->q:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_PM10LEVEL"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/c;->r:Ljava/lang/Float;

    const-string v12, "COL_DAILY_PM25"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/c;->s:Ljava/lang/Integer;

    const-string v12, "COL_DAILY_PM25LEVEL"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v8, Lc5/c;->x:Ljava/lang/String;

    const-string v11, "COL_DAILY_URL"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_f
    :try_start_2
    iget-object v2, v3, LZ4/b;->b:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v2

    invoke-static {v2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v2

    :goto_c
    invoke-static {v2}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DailyToCV"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v2, p1, Lb5/b;->b:Ljava/util/ArrayList;

    iget-object v3, v0, LM1/d;->b:Ljava/lang/Object;

    check-cast v3, La5/b;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "weatherinfo_hour"

    iget-object v8, v3, La5/b;->a:LU3/w;

    invoke-static {v8, v7}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc5/f;

    if-eqz v8, :cond_11

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v11, v8, Lc5/f;->b:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "COL_HOURLY_TIME"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v11, v8, Lc5/f;->c:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_IS_DAY_OR_NIGHT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->d:Ljava/lang/Float;

    const-string v12, "COL_HOURLY_CURRENT_TEMP"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/f;->e:Ljava/lang/Float;

    const-string v12, "COL_HOURLY_HIGH_TEMP"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/f;->f:Ljava/lang/Float;

    const-string v12, "COL_HOURLY_LOW_TEMP"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/f;->g:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_ICON_NUM"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->h:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_CONVERTED_ICON_NUM"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->j:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_RAIN_PROBABILITY"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->s:Ljava/lang/Double;

    const-string v12, "COL_HOURLY_RAIN_PRECIPITATION"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v11, v8, Lc5/f;->t:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_PRECIPITATION_TYPE"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->k:Ljava/lang/String;

    const-string v12, "COL_HOURLY_WIND_DIRECTION"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/f;->l:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_WIND_SPEED"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->m:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_HUMIDITY"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->n:Ljava/lang/String;

    const-string v12, "COL_HOURLY_WEATHER_TEXT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/f;->p:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_PM25F"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->q:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_PM25FLEVEL"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/f;->r:Ljava/lang/Integer;

    const-string v12, "COL_HOURLY_AQI"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v8, Lc5/f;->o:Ljava/lang/String;

    const-string v11, "COL_HOURLY_URL"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_12
    :try_start_3
    iget-object v2, v3, La5/b;->b:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v2

    invoke-static {v2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v2

    :goto_e
    invoke-static {v2}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HourlyToCV"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v2, p1, Lb5/b;->d:Ljava/util/ArrayList;

    iget-object v3, v0, LM1/d;->d:Ljava/lang/Object;

    check-cast v3, La5/a;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "weatherinfo_life"

    iget-object v8, v3, La5/a;->a:LU3/w;

    invoke-static {v8, v7}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc5/g;

    if-eqz v8, :cond_14

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v8, Lc5/g;->h:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "COL_LIFE_INDEX_CATEGORY"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v11, v8, Lc5/g;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "COL_LIFE_INDEX_TYPE"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/g;->c:Ljava/lang/String;

    const-string v12, "COL_LIFE_INDEX_TEXT"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/g;->d:Ljava/lang/Float;

    const-string v12, "COL_LIFE_INDEX_VALUE"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v8, Lc5/g;->e:Ljava/lang/Integer;

    const-string v12, "COL_LIFE_INDEX_PRIORITY"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/g;->f:Ljava/lang/Integer;

    const-string v12, "COL_LIFE_INDEX_LEVEL"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v8, Lc5/g;->g:Ljava/lang/String;

    const-string v12, "COL_LIFE_INDEX_URL"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v8, Lc5/g;->i:Ljava/lang/Integer;

    const-string v12, "COL_LIFE_INDEX_EXTRA"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v8, Lc5/g;->j:Ljava/lang/String;

    const-string v11, "COL_LIFE_INDEX_DESCRIPTION"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_15
    :try_start_4
    iget-object v2, v3, La5/a;->b:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v2

    invoke-static {v2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v2

    :goto_10
    invoke-static {v2}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LifeIndexToCV"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v2, p1, Lb5/b;->e:Ljava/util/ArrayList;

    iget-object v3, v0, LM1/d;->e:Ljava/lang/Object;

    check-cast v3, La5/a;

    :try_start_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v3, La5/a;->a:LU3/w;

    invoke-virtual {v7}, LU3/w;->b()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "alert"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc5/a;

    if-eqz v6, :cond_17

    invoke-static {v6, v1}, La5/a;->a(Lc5/a;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catchall_4
    move-exception v2

    goto :goto_12

    :cond_18
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v3, v3, La5/a;->b:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_13

    :cond_19
    move-object v2, v4

    goto :goto_13

    :goto_12
    invoke-static {v2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v2

    :goto_13
    invoke-static {v2}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertToCV"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object p1, p1, Lb5/b;->i:Ljava/util/ArrayList;

    iget-object v0, v0, LM1/d;->f:Ljava/lang/Object;

    check-cast v0, LZ4/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "weatherinfo_lifestyle"

    iget-object v5, v0, LZ4/b;->a:LU3/w;

    invoke-static {v5, v3}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc5/i;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v5, Lc5/i;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "COL_LIFESTYLE_TYPE"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v7, v5, Lc5/i;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "COL_LIFESTYLE_INTERVAL_TYPE"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v7, v5, Lc5/i;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "COL_LIFESTYLE_STATE_TYPE"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, v5, Lc5/i;->e:Ljava/lang/String;

    const-string v8, "COL_LIFESTYLE_TITLE_TEXT"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v5, Lc5/i;->f:Ljava/lang/String;

    const-string v8, "COL_LIFESTYLE_DESCRIPTION_TEXT"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v5, Lc5/i;->g:Ljava/lang/String;

    const-string v8, "COL_LIFESTYLE_STATE_TEXT"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v5, Lc5/i;->h:Ljava/lang/String;

    const-string v8, "COL_LIFESTYLE_URL"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lc5/i;->i:Ljava/lang/String;

    const-string v7, "COL_LIFESTYLE_STATES_BY_TIME"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    :try_start_6
    iget-object p1, v0, LZ4/b;->b:Landroid/content/ContentResolver;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_15

    :catchall_5
    move-exception p1

    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    :goto_15
    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LifeStyleToCV"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1c
    return-void
.end method
