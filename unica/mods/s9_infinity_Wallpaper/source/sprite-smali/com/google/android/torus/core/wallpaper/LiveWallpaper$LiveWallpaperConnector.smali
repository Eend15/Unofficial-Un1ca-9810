.class public Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/torus/core/wallpaper/LiveWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveWallpaperConnector"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0014\u001a\u00020\u00072\n\u0010\u0011\u001a\u00060\u000fR\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0011\u001a\u0008\u0018\u00010\u000fR\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;",
        "",
        "<init>",
        "()V",
        "",
        "isPreview",
        "()Z",
        "Lq3/m;",
        "notifyWallpaperColorsChanged",
        "Landroid/view/SurfaceHolder;",
        "getEngineSurfaceHolder",
        "()Landroid/view/SurfaceHolder;",
        "",
        "getWallpaperFlags",
        "()I",
        "Landroid/service/wallpaper/WallpaperService$Engine;",
        "Landroid/service/wallpaper/WallpaperService;",
        "wallpaperServiceEngine",
        "setServiceEngineReference$torus_release",
        "(Landroid/service/wallpaper/WallpaperService$Engine;)V",
        "setServiceEngineReference",
        "Landroid/service/wallpaper/WallpaperService$Engine;",
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


# instance fields
.field private wallpaperServiceEngine:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEngineSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;->wallpaperServiceEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getWallpaperFlags()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final isPreview()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;->wallpaperServiceEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyWallpaperColorsChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;->wallpaperServiceEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyColorsChanged()V

    :cond_0
    return-void
.end method

.method public final setServiceEngineReference$torus_release(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1

    const-string v0, "wallpaperServiceEngine"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;->wallpaperServiceEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    return-void
.end method
