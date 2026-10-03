.class public Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler$BindRunnable;
    }
.end annotation


# static fields
.field private static final RGBA_CHANNEL:I = 0x4

.field private static final SEP_VERSION_ONEUI_610:I = 0x24a54

.field private static final TAG:Ljava/lang/String; = "ScsApi@ImageUpscale"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

.field private mIsSessionCreated:Z

.field private mMetaBundle:Landroid/os/Bundle;

.field private mReadBuffer:Ljava/nio/ByteBuffer;

.field private final mUri:Landroid/net/Uri;

.field private mWriteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const-string v0, "content://com.samsung.android.scs.ai.image"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler$BindRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler$BindRunnable;-><init>(I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearAllBuffer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method private configureBuffer(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const-string v2, "imageWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    const-string v1, "imageHeight"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    const-string v1, "imageSize"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    const-string v0, "scaleFactor"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->left:I

    filled-new-array {p1, p2, v0, p3}, [I

    move-result-object p1

    const-string p2, "imagePadding"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createSession(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->createSession(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public createSession(ILjava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " createSession, requested capacity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ImageUpscale"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    const-string p0, "createSession: Context is Null"

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    const-string v0, "FEATURE_IMAGE_UPSCALE"

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->getStatus(Ljava/lang/String;)I

    move-result v3

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    :cond_1
    if-eqz v3, :cond_2

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createSession: Status is not Success : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 7
    :cond_2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    const-string v3, "capacity"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    const-string p1, "applicationId"

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p1, "engineType"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v3, "upscaleImage"

    const-string v4, "createSession"

    invoke-virtual {p1, p2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 13
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 14
    const-string p2, "readMemory"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/SharedMemory;

    invoke-virtual {p2}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    .line 15
    const-string p2, "writeMemory"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z

    return p1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 17
    :cond_3
    const-string p0, "createSession :: Failed to create buffer"

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 18
    :goto_0
    const-string p1, " createSession failed"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method public detectScene(Landroid/graphics/Bitmap;)I
    .locals 9

    const-string v0, "detectScene, time taken, scene is "

    const-string v1, "detectScene"

    const-string v2, "ScsApi@ImageUpscale"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z

    if-nez v1, :cond_1

    const-string p0, " detectScene Error :: Call createSession() before calling detectScene"

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->configureBuffer(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v6, "upscaleImage"

    const-string v7, "performUpscale"

    iget-object v8, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    const-string p0, "sceneType"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Exception :: detectScene"

    invoke-static {v2, p1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_2
    :goto_0
    const-string p0, " detectScene Error :: Context is null or bitmap is null"

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public endSession()V
    .locals 6

    const-string v0, "ScsApi@ImageUpscale"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "applicationId"

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v4, "upscaleImage"

    const-string v5, "endSession"

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    :cond_2
    const-string v1, " endSession"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, " Exception endSession "

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z

    return-void
.end method

.method public upscaleImage(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, " & h "

    const-string v5, " GainMap change error : "

    const-string v6, " GainMap change: result bitmap w "

    const-string v7, " GainMap change: c_bitmap gainmap w "

    const-string v8, " GainMap change: c_bitmap w "

    const-string v9, " GainMap change: s_bitmap gainmap scaled w "

    const-string v10, " GainMap change: s_bitmap scaled w "

    const-string v11, " GainMap change: input bmap gainmap w "

    const-string v12, " GainMap change: input bmap w "

    const-string v13, " create scaled bitmap TIME TAKEN "

    const-string v14, " received buffer"

    const-string v15, " perform upscale SDK TIME TAKEN "

    move-object/from16 v16, v5

    const-string v5, " input copyPixelsToBuffer TIME TAKEN "

    move-object/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v18, v7

    const-string v7, "upscaleImage"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v8

    const-string v8, "ScsApi@ImageUpscale"

    invoke-static {v8, v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const/16 v20, 0x0

    if-eqz v6, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v6, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z

    if-nez v6, :cond_1

    const-string v0, " upscaleImage Error :: Please call createSession() before calling upscaleImage"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->configureBuffer(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    move-object/from16 v23, v9

    const-string v9, "sceneType"

    move-object/from16 v24, v10

    move/from16 v10, p4

    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v6, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v9, v25, v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v9, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v1, "performUpscale"

    iget-object v2, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v7, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    const-string v2, "imageWidth"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "imageHeight"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "imageSize"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, " received empty buffer"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v20

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    mul-int v6, v2, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v2, v5, v1, v10, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v6

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x24a54

    const-string v7, " total time by upscaleImage at SDK "

    const-string v9, " output copyPixelsFromBuffer TIME TAKEN "

    if-lt v0, v2, :cond_6

    :try_start_1
    const-string v0, " GainMap change, SDK above 34 and OneUI6.1 (version doing scale-linear -> crop -> copy gainmap only)"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " GainMap change: Base bitmap doesn\'t have GainMap"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_3
    const-string v0, " GainMap change, bitmap has gain map true"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v13, v3, Landroid/graphics/Rect;->right:I

    sub-int v13, v0, v13

    iget v14, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iget v14, v3, Landroid/graphics/Rect;->top:I

    sub-int v14, v2, v14

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int v0, v0, p2

    mul-int v2, v2, p2

    move-object/from16 v11, p1

    invoke-static {v11, v0, v2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v10, v24

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, " GainMap change: s_bitmap doesn\'t have GainMap"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v10, v23

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v3, Landroid/graphics/Rect;->left:I

    mul-int v2, v2, p2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    mul-int v3, v3, p2

    mul-int v13, v13, p2

    mul-int v14, v14, p2

    invoke-static {v0, v2, v3, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v0, " GainMap change: c_bitmap doesn\'t have GainMap"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " GainMap change, c_bitmap has gain map true"

    invoke-static {v8, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, " Gainmap change SDK version < 34"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :goto_2
    const-string v1, " Exception :: upscale "

    invoke-static {v8, v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v20

    :cond_7
    :goto_3
    const-string v0, " upscaleImage Error :: Context is null or bitmap is null"

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v20
.end method
