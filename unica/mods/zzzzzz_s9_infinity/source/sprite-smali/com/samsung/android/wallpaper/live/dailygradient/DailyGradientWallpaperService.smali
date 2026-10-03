.class public final Lcom/samsung/android/wallpaper/live/dailygradient/DailyGradientWallpaperService;
.super Lj1/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/dailygradient/DailyGradientWallpaperService;",
        "Lj1/a;",
        "<init>",
        "()V",
        "u1/b",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

    sget-object p0, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast p0, Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW4/t;

    invoke-static {p0}, Le0/a;->t(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lu1/b;

    invoke-direct {v0, p0}, Lu1/b;-><init>(Lcom/samsung/android/wallpaper/live/dailygradient/DailyGradientWallpaperService;)V

    return-object v0
.end method
