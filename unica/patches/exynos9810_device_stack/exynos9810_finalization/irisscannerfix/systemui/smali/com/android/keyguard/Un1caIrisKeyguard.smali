.class public final Lcom/android/keyguard/Un1caIrisKeyguard;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "Un1caIrisKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/Un1caIrisKeyguard$Callback;
    }
.end annotation


# static fields
.field private static final ATTEMPTS:I = 0x3

.field private static final ATTEMPT_MS:J = 0xc80L

.field private static final ENROLLED_CACHE_MS:J = 0x2710L

.field private static final ERROR_EVICTED:I = 0xd

.field private static final ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field private static final ERROR_OPEN_IR_CAMERA_FAIL:I = 0x8

.field private static final ERROR_WHILE_CAMERA_IN_USE:I = 0x13

.field private static final FACE_FALLBACK_MS:J = 0x578L

.field private static final FACE_JOIN_DELAY_MS:J = 0xaL

.field private static final IRIS_CLS:Ljava/lang/String; = "com.samsung.android.server.iris.IrisService"

.field private static final IRIS_PKG:Ljava/lang/String; = "com.samsung.android.server.iris"

.field private static final KEY_FACE_STAY:Ljava/lang/String; = "face_stay_on_lock_screen"

.field private static final KEY_INTELLIGENT_SCREEN_ON:Ljava/lang/String; = "un1ca_intelligent_scan_screen_on"

.field private static final KEY_PREVIEW:Ljava/lang/String; = "un1ca_iris_preview"

.field private static final KEY_SCREEN_ON:Ljava/lang/String; = "un1ca_iris_unlock_screen_on"

.field private static final KEY_STAY:Ljava/lang/String; = "un1ca_iris_stay_on_lockscreen"

.field private static final KEY_UNLOCK:Ljava/lang/String; = "un1ca_iris_unlock"

.field private static final RESTART_DELAY_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisKeyguard"

.field private static final TX_EXPECT_FACE:I = 0xff5503

.field private static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field private static sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;


# instance fields
.field private mAuthHandler:Landroid/os/Handler;

.field private mCancel:Landroid/os/CancellationSignal;

.field private volatile mEnrolled:Z

.field private volatile mEnrolledAt:J

.field private volatile mEnrolledRefreshing:Z

.field private volatile mEnrolledUser:I

.field private mFaceFallbackActive:Z

.field private final mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

.field private mFaceShared:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private final mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPreviewAnchor:Landroid/view/View;

.field private mRetriesLeft:I

.field private mServiceBound:Z

.field private final mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancel(Lcom/android/keyguard/Un1caIrisKeyguard;)Landroid/os/CancellationSignal;
    .registers 1

    iget-object p0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/keyguard/Un1caIrisKeyguard;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMonitor(Lcom/android/keyguard/Un1caIrisKeyguard;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetriesLeft(Lcom/android/keyguard/Un1caIrisKeyguard;)I
    .registers 1

    iget p0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmRetriesLeft(Lcom/android/keyguard/Un1caIrisKeyguard;I)V
    .registers 2

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceBound(Lcom/android/keyguard/Un1caIrisKeyguard;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureServiceBound(Lcom/android/keyguard/Un1caIrisKeyguard;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->ensureServiceBound()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinish(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misIntelligentScanActive(Lcom/android/keyguard/Un1caIrisKeyguard;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monMatched(Lcom/android/keyguard/Un1caIrisKeyguard;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->onMatched(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/keyguard/Un1caIrisKeyguard;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFaceFallback(Lcom/android/keyguard/Un1caIrisKeyguard;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->startFaceFallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisRetryableError(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isRetryableError(I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda13;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    .line 77
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    .line 107
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$1;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceConn:Landroid/content/ServiceConnection;

    .line 127
    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 128
    return-void
.end method

.method private allowFaceAuth()Z
    .registers 4

    .line 155
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    return v2

    .line 157
    :cond_c
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz v0, :cond_11

    return v1

    .line 158
    :cond_11
    const-string v0, "un1ca_iris_unlock"

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1a

    return v1

    .line 159
    :cond_1a
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 160
    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->irisEnrolled(I)Z

    move-result v0

    if-nez v0, :cond_25

    return v1

    .line 161
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    if-eqz v0, :cond_2c

    return v2

    .line 162
    :cond_2c
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result v0

    .line 163
    if-eqz v0, :cond_3c

    .line 164
    const-string v0, "un1ca_intelligent_scan_screen_on"

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_45

    move v2, v1

    goto :goto_45

    .line 165
    :cond_3c
    const-string v0, "un1ca_iris_unlock_screen_on"

    invoke-direct {p0, v0, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_45

    move v2, v1

    .line 166
    :cond_45
    :goto_45
    xor-int/lit8 v0, v2, 0x1

    return v0
.end method

.method private announceFace()Z
    .registers 7

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 459
    const/4 v2, 0x0

    :try_start_9
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "checkService"

    const-class v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 460
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "samsung.iris"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_58

    .line 461
    if-nez v3, :cond_31

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    return v2

    .line 462
    :cond_31
    :try_start_31
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    const v4, 0xff5503

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_58

    if-nez v3, :cond_46

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    return v2

    .line 464
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_58

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    move v2, v4

    .line 470
    :cond_51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 465
    return v2

    .line 466
    :catchall_58
    move-exception v3

    .line 467
    :try_start_59
    const-string v4, "UN1CA-IrisKeyguard"

    const-string v5, "iris service did not take the face announce"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_68

    .line 468
    nop

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    return v2

    .line 470
    :catchall_68
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw v2
.end method

.method private authHandler()Landroid/os/Handler;
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mAuthHandler:Landroid/os/Handler;

    if-nez v0, :cond_19

    .line 272
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UN1CA-IrisAuth"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 274
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mAuthHandler:Landroid/os/Handler;

    .line 276
    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mAuthHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ensureServiceBound()V
    .registers 10

    .line 192
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceBound:Z

    if-eqz v0, :cond_5

    return-void

    .line 194
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.IrisService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_61

    .line 195
    nop

    .line 197
    const/16 v1, 0x41

    :try_start_15
    const-class v2, Landroid/os/UserHandle;

    const-string v3, "SYSTEM"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 198
    const-class v3, Landroid/content/Context;

    const-string v4, "bindServiceAsUser"

    const-class v5, Landroid/content/Intent;

    const-class v6, Landroid/content/ServiceConnection;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Landroid/os/UserHandle;

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v5

    .line 199
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceConn:Landroid/content/ServiceConnection;

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceBound:Z
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_53

    .line 203
    goto :goto_60

    .line 201
    :catchall_53
    move-exception v2

    .line 202
    :try_start_54
    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceBound:Z
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_61

    .line 206
    :goto_60
    goto :goto_69

    .line 204
    :catchall_61
    move-exception v0

    .line 205
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v2, "cannot bind iris service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :goto_69
    return-void
.end method

.method private finish(Landroid/os/CancellationSignal;)V
    .registers 3

    .line 449
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_7

    goto :goto_e

    .line 450
    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 451
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 452
    return-void

    .line 449
    :cond_e
    :goto_e
    return-void
.end method

.method private static getOrCreate(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/Un1caIrisKeyguard;
    .registers 2

    .line 131
    sget-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    .line 132
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    sput-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    .line 133
    sget-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 135
    :cond_12
    sget-object p0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    return-object p0
.end method

.method private hidePreviewAnchor()V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 438
    if-nez v0, :cond_5

    return-void

    .line 439
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 441
    :try_start_8
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    .line 444
    goto :goto_20

    .line 442
    :catchall_18
    move-exception v0

    .line 443
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v2, "preview anchor already gone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    :goto_20
    return-void
.end method

.method private iris()Lcom/samsung/android/camera/iris/SemIrisManager;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 332
    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method private irisEnrolled(I)Z
    .registers 6

    .line 281
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    if-ne v0, p1, :cond_11

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 283
    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->refreshEnrolled(ILjava/lang/Runnable;)V

    .line 285
    :cond_15
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    if-ne v0, p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolled:Z

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method private isFaceActive()Z
    .registers 2

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 212
    :catchall_7
    move-exception v0

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method private isIntelligentScanActive()Z
    .registers 3

    .line 218
    const-string v0, "un1ca_iris_unlock"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isFaceActive()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static isRetryableError(I)Z
    .registers 2

    .line 625
    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x8

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x13

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private isUserUnlocked(I)Z
    .registers 7

    .line 320
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 321
    if-nez v1, :cond_10

    return v0

    .line 323
    :cond_10
    const-class v2, Landroid/os/UserHandle;

    const-string v3, "of"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 324
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    return p1

    .line 325
    :catchall_32
    move-exception p1

    .line 326
    return v0
.end method

.method private joinFace(Landroid/os/CancellationSignal;)V
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-ne v0, p1, :cond_17

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-eqz p1, :cond_9

    goto :goto_17

    .line 478
    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    .line 479
    const-string p1, "UN1CA-IrisKeyguard"

    const-string v0, "intelligent scan: face joins the iris camera"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->triggerFaceAuth()V

    .line 481
    return-void

    .line 477
    :cond_17
    :goto_17
    return-void
.end method

.method private nextAttempt(Landroid/os/CancellationSignal;)V
    .registers 5

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 486
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 487
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 488
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-gtz p1, :cond_20

    .line 489
    :cond_19
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 490
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->startFaceFallback()V

    .line 491
    return-void

    .line 493
    :cond_20
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-gtz p1, :cond_2f

    .line 494
    const-string p1, "UN1CA-IrisKeyguard"

    const-string v0, "no match after 3 attempts"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 496
    return-void

    .line 498
    :cond_2f
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 500
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

.method private onFaceFallbackTimeout()V
    .registers 5

    .line 526
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_9

    goto :goto_26

    .line 527
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 528
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 529
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez v0, :cond_25

    .line 530
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 531
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    :cond_25
    return-void

    .line 526
    :cond_26
    :goto_26
    return-void
.end method

.method private onMatched(I)V
    .registers 9

    .line 587
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    const-string v1, "UN1CA-IrisKeyguard"

    if-eqz v0, :cond_49

    .line 593
    :try_start_1b
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "unlockedByBiometricForUser"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    .line 594
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 595
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_43

    .line 598
    goto :goto_49

    .line 596
    :catchall_43
    move-exception v0

    .line 597
    const-string v4, "TrustManager not notified"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    :cond_49
    :goto_49
    const-string v0, "un1ca_iris_stay_on_lockscreen"

    invoke-direct {p0, v0, v3}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_62

    .line 606
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "face_stay_on_lock_screen"

    invoke-direct {p0, v0, v3}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_60

    goto :goto_62

    :cond_60
    move v2, v3

    goto :goto_63

    :cond_62
    :goto_62
    nop

    .line 607
    :goto_63
    if-eqz v2, :cond_95

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    if-nez v0, :cond_95

    .line 609
    :try_start_6b
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "sendBiometricUnlockState"

    const-class v2, Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 610
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catchall {:try_start_6b .. :try_end_88} :catchall_89

    .line 613
    goto :goto_8f

    .line 611
    :catchall_89
    move-exception p1

    .line 612
    const-string v0, "lock screen not marked unlocked"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    :goto_8f
    const-string p1, "staying on lock screen until swipe"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 617
    :cond_95
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 618
    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 619
    instance-of v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_b8

    .line 620
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 621
    :cond_b8
    goto :goto_9d

    .line 622
    :cond_b9
    return-void
.end method

.method public static onStartedWakingUp(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 4

    .line 172
    :try_start_0
    invoke-static {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->getOrCreate(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/Un1caIrisKeyguard;

    move-result-object p0

    .line 173
    if-nez p0, :cond_7

    return-void

    .line 174
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->ensureServiceBound()V

    .line 175
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->refreshEnrolled(ILjava/lang/Runnable;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result v1

    .line 179
    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    .line 180
    const-string v1, "un1ca_intelligent_scan_screen_on"

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_36

    move v0, v2

    goto :goto_36

    .line 181
    :cond_2d
    const-string v1, "un1ca_iris_unlock_screen_on"

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_36

    move v0, v2

    .line 182
    :cond_36
    :goto_36
    if-eqz v0, :cond_40

    .line 183
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 184
    const-string v0, "screen on"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    .line 188
    :cond_40
    goto :goto_49

    .line 186
    :catchall_41
    move-exception p0

    .line 187
    const-string v0, "UN1CA-IrisKeyguard"

    const-string v1, "wake hook failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :goto_49
    return-void
.end method

.method private refreshEnrolled(ILjava/lang/Runnable;)V
    .registers 5

    .line 294
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 295
    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    .line 296
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolled:Z

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledAt:J

    .line 298
    return-void

    .line 300
    :cond_12
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledRefreshing:Z

    if-eqz v0, :cond_17

    return-void

    .line 301
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledRefreshing:Z

    .line 302
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->authHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method private setting(Ljava/lang/String;I)I
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static shouldAllowFaceAuth(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .registers 2

    .line 146
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->getOrCreate(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/Un1caIrisKeyguard;

    move-result-object p0

    .line 147
    if-nez p0, :cond_8

    return v0

    .line 148
    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->allowFaceAuth()Z

    move-result p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    return p0

    .line 149
    :catchall_d
    move-exception p0

    .line 150
    return v0
.end method

.method private showPreviewAnchor(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/view/View;
    .registers 8

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    return-object p1

    .line 412
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object p1

    .line 413
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 414
    :goto_13
    if-gtz p1, :cond_27

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    :cond_27
    move v2, p1

    .line 415
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x118

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/16 v3, 0x7df

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 422
    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 423
    const-string v0, "un1ca_iris_preview"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_44

    .line 427
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 429
    :cond_44
    const-string v0, "IrisPreviewAnchor"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 431
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 433
    return-object v0
.end method

.method private start(Ljava/lang/String;)V
    .registers 12

    .line 336
    const-string v0, "UN1CA-IrisKeyguard"

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_7

    return-void

    .line 337
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->ensureServiceBound()V

    .line 338
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 339
    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_18

    return-void

    .line 340
    :cond_18
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-nez v1, :cond_d7

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_d7

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_32

    goto/16 :goto_d7

    .line 342
    :cond_32
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_45

    goto/16 :goto_d6

    .line 343
    :cond_45
    iget v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    if-eq v1, v6, :cond_52

    .line 345
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->refreshEnrolled(ILjava/lang/Runnable;)V

    .line 346
    return-void

    .line 348
    :cond_52
    invoke-direct {p0, v6}, Lcom/android/keyguard/Un1caIrisKeyguard;->irisEnrolled(I)Z

    move-result v1

    if-nez v1, :cond_59

    return-void

    .line 350
    :cond_59
    :try_start_59
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->iris()Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v5

    .line 351
    if-nez v5, :cond_60

    return-void

    .line 352
    :cond_60
    iput-boolean v3, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 353
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-boolean v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-nez v1, :cond_74

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_75

    :cond_74
    move v2, v3

    .line 357
    :goto_75
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    .line 358
    iput-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-nez p1, :cond_b2

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 364
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->authHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v4}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    :cond_b2
    invoke-direct {p0, v5}, Lcom/android/keyguard/Un1caIrisKeyguard;->showPreviewAnchor(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/view/View;

    move-result-object p1

    .line 372
    if-eqz v2, :cond_bb

    const-wide/16 v1, 0x78

    goto :goto_bd

    :cond_bb
    const-wide/16 v1, 0x0

    :goto_bd
    move-wide v8, v1

    .line 374
    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;J)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_c9
    .catchall {:try_start_59 .. :try_end_c9} :catchall_ca

    .line 407
    goto :goto_d5

    .line 404
    :catchall_ca
    move-exception p1

    .line 405
    const-string v1, "cannot start iris"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 408
    :goto_d5
    return-void

    .line 342
    :cond_d6
    :goto_d6
    return-void

    .line 341
    :cond_d7
    :goto_d7
    return-void
.end method

.method private startFaceFallback()V
    .registers 5

    .line 508
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-eqz v0, :cond_a

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    .line 511
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 513
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v0, :cond_1d

    goto :goto_34

    .line 514
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 515
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 523
    return-void

    .line 513
    :cond_34
    :goto_34
    return-void
.end method

.method private stop(Ljava/lang/String;)V
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 550
    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    .line 551
    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 553
    if-nez v0, :cond_16

    .line 554
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 555
    return-void

    .line 557
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UN1CA-IrisKeyguard"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 559
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 560
    return-void
.end method

.method private stopFaceAuth()Z
    .registers 7

    .line 564
    nop

    .line 566
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_40

    move v2, v0

    :goto_9
    if-eqz v1, :cond_3f

    .line 568
    :try_start_b
    const-string v3, "mSemFaceCancelSignal"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 569
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 570
    iget-object v5, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CancellationSignal;
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_1d} :catch_39
    .catchall {:try_start_b .. :try_end_1d} :catchall_37

    .line 571
    if-eqz v5, :cond_36

    .line 572
    nop

    .line 573
    :try_start_20
    invoke-virtual {v5}, Landroid/os/CancellationSignal;->cancel()V

    .line 574
    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20 .. :try_end_2e} :catch_33
    .catchall {:try_start_20 .. :try_end_2e} :catchall_30

    move v2, v4

    goto :goto_36

    .line 580
    :catchall_30
    move-exception v0

    move v2, v4

    goto :goto_43

    .line 578
    :catch_33
    move-exception v2

    move v2, v4

    goto :goto_3a

    .line 577
    :cond_36
    :goto_36
    goto :goto_3f

    .line 580
    :catchall_37
    move-exception v0

    goto :goto_43

    .line 578
    :catch_39
    move-exception v3

    .line 566
    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_37

    goto :goto_9

    .line 582
    :cond_3f
    :goto_3f
    goto :goto_4a

    .line 580
    :catchall_40
    move-exception v1

    move v2, v0

    move-object v0, v1

    .line 581
    :goto_43
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v3, "could not stop face auth"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    :goto_4a
    return v2
.end method

.method private triggerFaceAuth()V
    .registers 6

    .line 538
    :try_start_0
    const-string v0, "com.android.systemui.deviceentry.shared.FaceAuthUiEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 539
    const-string v1, "FACE_AUTH_UPDATED_STARTED_WAKING_UP"

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    .line 540
    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "updateFaceListeningState"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 541
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    .line 544
    goto :goto_35

    .line 542
    :catchall_2d
    move-exception v0

    .line 543
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v2, "could not trigger face fallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :goto_35
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->onFaceFallbackTimeout()V

    return-void
.end method

.method synthetic lambda$nextAttempt$12$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_16

    .line 502
    :cond_9
    const-string v0, "next attempt"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 504
    :cond_15
    return-void

    .line 501
    :cond_16
    :goto_16
    return-void
.end method

.method synthetic lambda$onBiometricAuthFailed$1$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 237
    const-string v0, "after face failed"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onBiometricError$2$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 249
    const-string v0, "after face error"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onFaceFallbackTimeout$14$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 531
    const-string v0, "next attempt after face fallback"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$refreshEnrolled$3$com-android-keyguard-Un1caIrisKeyguard(ILjava/lang/Runnable;)V
    .registers 7

    .line 303
    nop

    .line 305
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->iris()Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_12

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    move v1, v0

    .line 309
    :goto_11
    goto :goto_1b

    .line 307
    :catchall_12
    move-exception v1

    .line 308
    const-string v2, "UN1CA-IrisKeyguard"

    const-string v3, "iris enrollment query failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    .line 310
    :goto_1b
    iput-boolean v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolled:Z

    .line 311
    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledAt:J

    .line 313
    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledRefreshing:Z

    .line 314
    if-eqz v1, :cond_30

    if-eqz p2, :cond_30

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_30
    return-void
.end method

.method synthetic lambda$start$10$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V
    .registers 13

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 381
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->authHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda11;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda11;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    iget-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda12;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    const-wide/16 v0, 0xc80

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    return-void
.end method

.method synthetic lambda$start$11$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;J)V
    .registers 14

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 376
    :cond_5
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V

    .line 398
    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_1c

    .line 399
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 401
    :cond_1c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 403
    :goto_1f
    return-void
.end method

.method synthetic lambda$start$4$com-android-keyguard-Un1caIrisKeyguard(Ljava/lang/String;)V
    .registers 2

    .line 345
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$start$5$com-android-keyguard-Un1caIrisKeyguard(ZLandroid/os/CancellationSignal;)V
    .registers 3

    .line 367
    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/android/keyguard/Un1caIrisKeyguard;->joinFace(Landroid/os/CancellationSignal;)V

    .line 368
    :cond_5
    return-void
.end method

.method synthetic lambda$start$6$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V
    .registers 7

    .line 365
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->announceFace()Z

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;ZLandroid/os/CancellationSignal;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void
.end method

.method synthetic lambda$start$7$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 390
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 392
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->startFaceFallback()V

    .line 393
    :cond_11
    return-void
.end method

.method synthetic lambda$start$8$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V
    .registers 15

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-ne v0, p1, :cond_30

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_30

    .line 384
    :cond_b
    :try_start_b
    new-instance v5, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;

    invoke-direct {v5, p0, p1, p3}, Lcom/android/keyguard/Un1caIrisKeyguard$Callback;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;I)V

    iget-object v6, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v1, p2

    move-object v3, p1

    move v7, p3

    move-object v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1d

    .line 394
    goto :goto_2f

    .line 386
    :catchall_1d
    move-exception p2

    .line 387
    const-string p3, "UN1CA-IrisKeyguard"

    const-string p4, "cannot start iris"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    iget-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    :goto_2f
    return-void

    .line 382
    :cond_30
    :goto_30
    return-void
.end method

.method synthetic lambda$start$9$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V
    .registers 2

    .line 396
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->nextAttempt(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method synthetic lambda$startFaceFallback$13$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 5

    .line 517
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 518
    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->triggerFaceAuth()V

    .line 519
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez v0, :cond_19

    .line 520
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    :cond_19
    return-void

    .line 517
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5

    .line 231
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_35

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 232
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 234
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 235
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez p1, :cond_35

    .line 236
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 237
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_35
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .registers 4

    .line 263
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, p1, :cond_1e

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unlocked by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    .line 264
    :cond_1e
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 6

    .line 243
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_35

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 244
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 246
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 247
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez p1, :cond_35

    .line 248
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 249
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    :cond_35
    return-void
.end method

.method public onKeyguardGoingAway()V
    .registers 2

    .line 255
    const-string v0, "keyguard going away"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    .line 259
    if-nez p1, :cond_7

    const-string p1, "keyguard hidden"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    .line 260
    :cond_7
    return-void
.end method

.method public onPrimaryBouncerVisibilityChanged(Z)V
    .registers 3

    .line 222
    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez p1, :cond_18

    .line 223
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 224
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 226
    const-string p1, "bouncer"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    .line 228
    :cond_18
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 2

    .line 254
    const-string p1, "going to sleep"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2

    .line 256
    const-string p1, "user switching"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method
