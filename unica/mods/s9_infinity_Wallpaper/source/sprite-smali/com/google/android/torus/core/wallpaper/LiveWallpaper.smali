.class public abstract Lcom/google/android/torus/core/wallpaper/LiveWallpaper;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/torus/core/wallpaper/LiveWallpaper$Companion;,
        Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;,
        Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 +2\u00020\u0001:\u0003+,-B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J/\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0013\u0010\u0019\u001a\u00060\u0017R\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R0\u0010$\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\"0!j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\"`#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R8\u0010\'\u001a&\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u00060&R\u00020\u00000\"0!j\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u00060&R\u00020\u00000\"`#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010%R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/google/android/torus/core/wallpaper/LiveWallpaper;",
        "Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;",
        "<init>",
        "()V",
        "Lcom/google/android/torus/core/content/ConfigurationChangeListener;",
        "configChangeListener",
        "Lq3/m;",
        "addConfigChangeListener",
        "(Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V",
        "removeConfigChangeListener",
        "onCreate",
        "onDestroy",
        "Landroid/content/Context;",
        "displayContext",
        "Landroid/view/SurfaceHolder;",
        "surfaceHolder",
        "",
        "isPreview",
        "",
        "whichType",
        "Lcom/google/android/torus/core/engine/TorusEngine;",
        "getWallpaperEngine",
        "(Landroid/content/Context;Landroid/view/SurfaceHolder;ZI)Lcom/google/android/torus/core/engine/TorusEngine;",
        "Landroid/service/wallpaper/WallpaperService$Engine;",
        "Landroid/service/wallpaper/WallpaperService;",
        "onCreateEngine",
        "()Landroid/service/wallpaper/WallpaperService$Engine;",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "numEngines",
        "I",
        "Ljava/util/ArrayList;",
        "Ljava/lang/ref/WeakReference;",
        "Lkotlin/collections/ArrayList;",
        "configChangeListeners",
        "Ljava/util/ArrayList;",
        "Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;",
        "wakeStateChangeListeners",
        "Landroid/content/BroadcastReceiver;",
        "wakeStateReceiver",
        "Landroid/content/BroadcastReceiver;",
        "Companion",
        "LiveWallpaperConnector",
        "LiveWallpaperEngineWrapper",
        "torus_release"
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
.field public static final COMMAND_BLOCK_TOUCH_AREA:Ljava/lang/String; = "samsung.android.wallpaper.blocktoucharea"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_GOING_TO_SLEEP:Ljava/lang/String; = "android.wallpaper.goingtosleep"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_KEYGUARD_GOING_AWAY:Ljava/lang/String; = "android.wallpaper.keyguardgoingaway"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_PREVIEW_INFO:Ljava/lang/String; = "android.wallpaper.previewinfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_REAPPLY:Ljava/lang/String; = "android.wallpaper.reapply"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_SAMSUNG_GOING_TO_SLEEP:Ljava/lang/String; = "samsung.android.wallpaper.goingtosleep"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMAND_WAKING_UP:Ljava/lang/String; = "android.wallpaper.wakingup"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/google/android/torus/core/wallpaper/LiveWallpaper$Companion;

.field public static final TAG:Ljava/lang/String; = "SprWallpaper|LiveWallpaper"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_FLAG_NOT_FOUND:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final configChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/torus/core/content/ConfigurationChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private numEngines:I

.field private final wakeStateChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private wakeStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->Companion:Lcom/google/android/torus/core/wallpaper/LiveWallpaper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->configChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->wakeStateChangeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$addConfigChangeListener(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->addConfigChangeListener(Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)I
    .locals 0

    iget p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->numEngines:I

    return p0
.end method

.method public static final synthetic access$getWakeStateChangeListeners$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->wakeStateChangeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$removeConfigChangeListener(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->removeConfigChangeListener(Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V

    return-void
.end method

.method public static final synthetic access$setNumEngines$p(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->numEngines:I

    return-void
.end method

.method private final addConfigChangeListener(Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->configChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->configChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final removeConfigChangeListener(Lcom/google/android/torus/core/content/ConfigurationChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->configChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->configChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract getWallpaperEngine(Landroid/content/Context;Landroid/view/SurfaceHolder;ZI)Lcom/google/android/torus/core/engine/TorusEngine;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->configChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/torus/core/content/ConfigurationChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/torus/core/content/ConfigurationChangeListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->onCreate()V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    new-instance v0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperEngineWrapper;-><init>(Lcom/google/android/torus/core/wallpaper/LiveWallpaper;)V

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->wakeStateChangeListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
