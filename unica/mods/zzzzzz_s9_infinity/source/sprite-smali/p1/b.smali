.class public abstract Lp1/b;
.super Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;
.source "SourceFile"


# instance fields
.field public d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

.field public e:Lp1/a;

.field public final synthetic f:LN1/k;


# direct methods
.method public constructor <init>(LN1/k;)V
    .locals 0

    iput-object p1, p0, Lp1/b;->f:LN1/k;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;-><init>(Lj1/a;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    new-instance p1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v0, p0, Lp1/b;->f:LN1/k;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v2, p1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {v1}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>()V

    iput-object v1, p1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    iget-object v2, p1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)Z

    iput-object p1, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    new-instance p1, Lp1/a;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    invoke-direct {p1, p0, v0, v1}, Lp1/a;-><init>(Lp1/b;Landroid/content/Context;Lcom/samsung/android/nexus/egl/core/SurfaceCallback;)V

    iput-object p1, p0, Lp1/b;->e:Lp1/a;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    iget-object v0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDestroy()V

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/nexus/video/VideoLayer;->reset()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    iget-object p0, p0, Lp1/b;->e:Lp1/a;

    invoke-virtual {p0}, Lp1/a;->a()V

    return-void
.end method
