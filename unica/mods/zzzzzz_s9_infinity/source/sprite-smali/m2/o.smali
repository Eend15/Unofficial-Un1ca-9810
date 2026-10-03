.class public final Lm2/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;I)V
    .locals 0

    iput-object p1, p0, Lm2/o;->a:Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;

    iput p2, p0, Lm2/o;->b:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive, action: "

    invoke-static {v1, v0}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WeatherWallpaperService"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lm2/o;->a:Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;

    iget-object v0, p2, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->e:Lz2/a;

    if-eqz v0, :cond_0

    iget p0, p0, Lm2/o;->b:I

    invoke-virtual {v0, p1, p0}, Lz2/a;->b(Landroid/content/Context;I)Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p2, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->f:Lm2/o;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "magicianSpriteMigrator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
