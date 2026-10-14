.class public final synthetic LM1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroid/util/Size;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Landroid/view/SurfaceHolder;

.field public final synthetic g:[Landroid/graphics/Bitmap;

.field public final synthetic h:[Z

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;Landroid/graphics/Rect;Landroid/view/SurfaceHolder;[Landroid/graphics/Bitmap;[ZLjava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM1/e;->d:Landroid/util/Size;

    iput-object p2, p0, LM1/e;->e:Landroid/graphics/Rect;

    iput-object p3, p0, LM1/e;->f:Landroid/view/SurfaceHolder;

    iput-object p4, p0, LM1/e;->g:[Landroid/graphics/Bitmap;

    iput-object p5, p0, LM1/e;->h:[Z

    iput-object p6, p0, LM1/e;->i:Ljava/lang/Object;

    iput-object p7, p0, LM1/e;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, LM1/e;->d:Landroid/util/Size;

    iget-object v1, p0, LM1/e;->e:Landroid/graphics/Rect;

    iget-object v2, p0, LM1/e;->f:Landroid/view/SurfaceHolder;

    iget-object v3, p0, LM1/e;->g:[Landroid/graphics/Bitmap;

    iget-object v4, p0, LM1/e;->h:[Z

    iget-object v5, p0, LM1/e;->i:Ljava/lang/Object;

    iget-object p0, p0, LM1/e;->j:Landroid/os/Handler;

    const-string v6, "copySurfaceToBitmapSync: width = "

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_0
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const-string v7, "DisplayUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", validSurface="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    new-instance v1, LM1/f;

    invoke-direct {v1, v3, v4, v5}, LM1/f;-><init>([Landroid/graphics/Bitmap;[ZLjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    monitor-enter v5

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    monitor-exit v5

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
