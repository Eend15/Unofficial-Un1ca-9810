.class public final Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;
.super Lj1/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;",
        "Lj1/a;",
        "<init>",
        "()V",
        "O1/c",
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


# instance fields
.field public d:LO1/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;-><init>()V

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

    new-instance v0, LO1/c;

    invoke-direct {v0, p0}, LO1/c;-><init>(Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;->d:LO1/c;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;->d:LO1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LO1/c;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/suitcase/PhysicsWallpaper;->d:LO1/c;

    return-void
.end method
