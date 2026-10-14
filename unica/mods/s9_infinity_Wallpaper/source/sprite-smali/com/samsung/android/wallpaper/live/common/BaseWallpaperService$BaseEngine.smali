.class public Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.source "SourceFile"


# instance fields
.field public a:Lw0/i;

.field public b:Lo1/b;

.field public final synthetic c:Lj1/a;


# direct methods
.method public constructor <init>(Lj1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->c:Lj1/a;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V

    return-void
.end method


# virtual methods
.method public final b()Lw0/i;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->a:Lw0/i;

    if-nez v0, :cond_0

    new-instance v0, Lw0/i;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lw0/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->a:Lw0/i;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->a:Lw0/i;

    return-object p0
.end method

.method public final c()Lo1/b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b:Lo1/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->c:Lj1/a;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b:Lo1/b;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b:Lo1/b;

    return-object p0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "setShowForAllUsers"

    invoke-static {v0, v1, p1}, Le0/a;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Le0/a;->Q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldZoomOutWallpaper()Z
    .locals 0
    .annotation build Le/a;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
