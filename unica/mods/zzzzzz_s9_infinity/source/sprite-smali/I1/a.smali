.class public abstract LI1/a;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final e:Z


# instance fields
.field public d:Ll1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LM1/g;->c()Z

    move-result v0

    sput-boolean v0, LI1/a;->e:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "dispatchCall : "

    const/16 v9, 0x3e8

    const-string v10, "]"

    const-string v11, ", "

    const-string v12, "dispatchCall : caller="

    const-string v13, "LiveWallpaperProvider"

    sget-boolean v14, LI1/a;->e:Z

    if-eqz v14, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", extras=["

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, LM1/g;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eq v7, v9, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v11, v0, LI1/a;->d:Ll1/a;

    const/4 v12, 0x0

    if-nez v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call : dispatcher is null. method="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v9, v7}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v9

    if-nez v9, :cond_18

    iget-object v7, v0, LI1/a;->d:Ll1/a;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "LiveWallpaperProviderCallDispatcher"

    if-nez v1, :cond_3

    const-string v0, "dispatchCall: provider call method is null"

    invoke-static {v7, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v13

    goto/16 :goto_8

    :cond_3
    const-string v9, "user_id"

    const-string v11, "dispatchGetThumbnail : failed to get ProviderCallInterface"

    const-string v15, "wallpaper_service_class_name"

    const-string v5, "which"

    const-string v3, "ProviderCallDispatcher"

    const/16 v16, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "get_engine_running_state"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v16, 0x6

    goto :goto_1

    :sswitch_1
    const-string v4, "get_thumbnail_by_backup_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "get_thumbnail"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/16 v16, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "get_background_region"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/16 v16, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "get_screenshot"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "capture_surface"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/16 v16, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "prepare_wallpaper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    move/from16 v16, v6

    :goto_1
    packed-switch v16, :pswitch_data_0

    const-string v0, "provider call method is not available = "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v0, v12

    move-object/from16 v16, v13

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/a;->b(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a(I)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onGetEngineRunningState : engine is null. which="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    new-instance v2, LH1/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onGetRunningState(LH1/b;)LH1/c;

    const-string v0, "onGetEngineRunningState : exist=false"

    invoke-static {v7, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    new-instance v4, LJ1/g;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "backup_id"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, LJ1/g;->h:Ljava/lang/String;

    const-string v7, "timeout"

    move-object/from16 v16, v13

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v12, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v4, LJ1/g;->i:J

    const-string v7, "service_settings"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v4, LJ1/g;->j:Landroid/os/Bundle;

    invoke-static {v5}, Ll1/a;->a(Ljava/lang/String;)Ll1/b;

    move-result-object v2

    if-nez v2, :cond_d

    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "onGetThumbnailByBackupId : failed to get ProviderCallInterface"

    invoke-static {v3, v2, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_d
    invoke-interface {v2, v0, v4}, Ll1/b;->getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v16, v13

    new-instance v4, LJ1/d;

    invoke-direct {v4, v2}, LJ1/d;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v4, LJ1/d;->l:Ljava/lang/String;

    invoke-static {v2}, Ll1/a;->a(Ljava/lang/String;)Ll1/b;

    move-result-object v2

    if-nez v2, :cond_e

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v3, v11, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_e
    invoke-interface {v2, v0, v4}, Ll1/b;->getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v16, v13

    new-instance v4, LJ1/a;

    invoke-direct {v4, v2}, LJ1/a;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v4, LJ1/a;->i:Ljava/lang/String;

    invoke-static {v2}, Ll1/a;->a(Ljava/lang/String;)Ll1/b;

    move-result-object v2

    if-nez v2, :cond_f

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v3, v11, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    invoke-interface {v2, v0, v4}, Ll1/b;->onGetBackgroundRegion(Landroid/content/Context;LJ1/a;)LJ1/b;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_4
    move-object/from16 v16, v13

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    invoke-virtual {v2, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "purpose"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "image_format"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/a;->b(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a(I)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onGetScreenshot : engine is null. which="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    new-instance v3, LH1/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onGetScreenshot(LH1/d;)LH1/e;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, v3, LH1/e;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, LK/I;->n(Landroid/view/SurfaceHolder;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v3, "captureSurface : screenshot is null"

    const-string v9, "EngineScreenshotHelper"

    invoke-static {v9, v3}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object v3, v0

    :goto_4
    if-eqz v3, :cond_c

    const-string v0, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_5

    :cond_13
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_5
    new-instance v2, LB1/a;

    const/4 v9, 0x4

    invoke-direct {v2, v3, v9}, LB1/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {v3, v0, v2}, LK/I;->s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "onGetScreenshot : elapsed="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", w="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", h="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isSuccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_14

    const/4 v5, 0x1

    goto :goto_6

    :cond_14
    move v5, v6

    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, LJ1/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, LJ1/c;->h:Landroid/os/ParcelFileDescriptor;

    move-object v0, v2

    goto :goto_7

    :pswitch_5
    move-object/from16 v16, v13

    new-instance v4, LJ1/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x5

    invoke-virtual {v2, v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, LJ1/i;->h:I

    invoke-virtual {v2, v9, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    invoke-virtual {v2, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "external_params"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v4, LJ1/i;->i:Landroid/os/Bundle;

    invoke-static {v5}, Ll1/a;->a(Ljava/lang/String;)Ll1/b;

    move-result-object v2

    if-nez v2, :cond_15

    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "onPrepareWallpaper : failed to get ProviderCallInterface"

    invoke-static {v3, v2, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_15
    invoke-interface {v2, v0, v4}, Ll1/b;->prepareWallpaper(Landroid/content/Context;LJ1/i;)LJ1/j;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_16

    const/4 v12, 0x0

    goto :goto_8

    :cond_16
    invoke-virtual {v0}, Lw0/f;->I()Landroid/os/Bundle;

    move-result-object v12

    :goto_8
    if-eqz v14, :cond_17

    const-string v0, ", result=["

    invoke-static {v8, v1, v0}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, LM1/g;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-object v12

    :cond_18
    move-object v1, v13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchCall : caller should be signed with platform signature. caller="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x73fe4736 -> :sswitch_6
        -0x62f74b4c -> :sswitch_5
        -0x61878611 -> :sswitch_4
        0x6437ce7c -> :sswitch_3
        0x6dfe2743 -> :sswitch_2
        0x72483a4c -> :sswitch_1
        0x7c00001d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 1

    new-instance v0, Ll1/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LI1/a;->d:Ll1/a;

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
