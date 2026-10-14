.class public Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;
    }
.end annotation


# static fields
.field private static ACTION_AOD_BG_OFF:Ljava/lang/String; = "com.android.systemui.infinity.ACTION_AOD_BG_OFF"

.field private static AOD_OFF_DELAY:J = 0xfa0L

.field protected static final RES_TYPE_HOME_BG:I = 0x2

.field protected static final RES_TYPE_LOCK_BG:I = 0x1

.field protected static final RES_TYPE_SHAPE:I = 0x0

.field private static final SETTINGS_SUPPORT_AOD_INFINITY:Ljava/lang/String; = "support_aod_infinity"

.field private static TAG:Ljava/lang/String; = "InfinityWallpaper"


# instance fields
.field private stockFadeHandler:Landroid/os/Handler;

.field private mAODBgOffIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field protected mEngine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

.field private mPlugged:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevCommand:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    .line 42
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPrevCommand:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPlugged:Z

    .line 202
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPrevCommand:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPrevCommand:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->wakeLock(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)Landroid/os/PowerManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$400()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->AOD_OFF_DELAY:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->setAODBgOffIntent(J)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPlugged:Z

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPlugged:Z

    return p1
.end method

.method private listenForBroadcasts(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 221
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 224
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    goto :goto_0

    .line 228
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 p1, 0x0

    .line 231
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    :goto_0
    return-void
.end method

.method private setAODBgOffIntent(J)V
    .locals 3
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->stockFadeHandler:Landroid/os/Handler;
    if-nez v0, :handler_ready
    new-instance v0, Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->stockFadeHandler:Landroid/os/Handler;
    :handler_ready
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    new-instance v1, Lcom/samsung/android/wallpaper/live/infinity/stock/AodFadeTask;
    invoke-direct {v1, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/AodFadeTask;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)V
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method private wakeLock(J)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method protected getGroupDataInner()[[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getResIdInner(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onCreate()V
    .locals 5

    .line 50
    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->onCreate()V

    .line 51
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 55
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x14000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mAODBgOffIntent:Landroid/app/PendingIntent;

    .line 58
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v3, "support_aod_infinity"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 60
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "need_dark_font"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "need_dark_statusbar"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "need_dark_navigationbar"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->TAG:Ljava/lang/String;

    const-string v2, "infinity wallpaper, set wallpaper colors to 0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->listenForBroadcasts(Z)V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 76
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

    invoke-direct {v0, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mEngine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

    .line 77
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mEngine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->listenForBroadcasts(Z)V

    return-void
.end method
