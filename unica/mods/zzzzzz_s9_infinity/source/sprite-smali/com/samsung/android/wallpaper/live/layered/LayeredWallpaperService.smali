.class public Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;
.super Lj1/a;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE1/i;

    iget-object p1, p1, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, LE1/i;

    invoke-direct {v0, p0}, LE1/i;-><init>(Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;)V

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
