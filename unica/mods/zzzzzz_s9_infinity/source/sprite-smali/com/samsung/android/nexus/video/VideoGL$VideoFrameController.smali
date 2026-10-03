.class Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/video/VideoGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoFrameController"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final UPDATE_COUNT_LIMIT:I = 0xf4240


# instance fields
.field needUpdateCount:I

.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoGL;

.field updatedCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoGL;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updateSurface()V

    return-void
.end method

.method private updateSurface()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updateTexImage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTexImage()V
    .locals 4

    const-string v0, "Cannot update surface. need to update count = "

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    invoke-static {v1}, Lcom/samsung/android/nexus/video/VideoGL;->b(Lcom/samsung/android/nexus/video/VideoGL;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    invoke-static {v1}, Lcom/samsung/android/nexus/video/VideoGL;->b(Lcom/samsung/android/nexus/video/VideoGL;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    iget-object v2, v2, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const-string v1, "updateTexImage"

    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->frameConsumed()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoGL;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->frameConsumed()V

    throw v0
.end method


# virtual methods
.method public frameConsumed()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    const v2, 0xf4240

    if-lt v0, v2, :cond_0

    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    :cond_0
    return-void
.end method

.method public frameUpdated()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    const v2, 0xf4240

    if-lt v0, v2, :cond_0

    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    :cond_0
    return-void
.end method

.method public hasFrame()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
