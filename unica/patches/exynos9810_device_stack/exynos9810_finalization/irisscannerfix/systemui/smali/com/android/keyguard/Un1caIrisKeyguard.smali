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

    .line 121
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda13;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    .line 72
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    .line 102
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$1;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceConn:Landroid/content/ServiceConnection;

    .line 122
    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 123
    return-void
.end method

.method private allowFaceAuth()Z
    .registers 4

    .line 150
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 151
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    return v2

    .line 152
    :cond_c
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz v0, :cond_11

    return v1

    .line 153
    :cond_11
    const-string v0, "un1ca_iris_unlock"

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1a

    return v1

    .line 154
    :cond_1a
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 155
    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->irisEnrolled(I)Z

    move-result v0

    if-nez v0, :cond_25

    return v1

    .line 156
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    if-eqz v0, :cond_2c

    return v2

    .line 157
    :cond_2c
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result v0

    .line 158
    if-eqz v0, :cond_3c

    .line 159
    const-string v0, "un1ca_intelligent_scan_screen_on"

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_45

    move v2, v1

    goto :goto_45

    .line 160
    :cond_3c
    const-string v0, "un1ca_iris_unlock_screen_on"

    invoke-direct {p0, v0, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_45

    move v2, v1

    .line 161
    :cond_45
    :goto_45
    xor-int/lit8 v0, v2, 0x1

    return v0
.end method

.method private announceFace()Z
    .registers 7

    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 448
    const/4 v2, 0x0

    :try_start_9
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "checkService"

    const-class v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 449
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

    .line 450
    if-nez v3, :cond_31

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    return v2

    .line 451
    :cond_31
    :try_start_31
    const-string v4, "com.samsung.android.camera.iris.IIrisService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    const v4, 0xff5503

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_58

    if-nez v3, :cond_46

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    return v2

    .line 453
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_58

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    move v2, v4

    .line 459
    :cond_51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    return v2

    .line 455
    :catchall_58
    move-exception v3

    .line 456
    :try_start_59
    const-string v4, "UN1CA-IrisKeyguard"

    const-string v5, "iris service did not take the face announce"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_68

    .line 457
    nop

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    return v2

    .line 459
    :catchall_68
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw v2
.end method

.method private authHandler()Landroid/os/Handler;
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mAuthHandler:Landroid/os/Handler;

    if-nez v0, :cond_19

    .line 267
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UN1CA-IrisAuth"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 269
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mAuthHandler:Landroid/os/Handler;

    .line 271
    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mAuthHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ensureServiceBound()V
    .registers 10

    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceBound:Z

    if-eqz v0, :cond_5

    return-void

    .line 189
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

    .line 190
    nop

    .line 192
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

    .line 193
    const-class v3, Landroid/content/Context;

    const-string v4, "bindServiceAsUser"

    const-class v5, Landroid/content/Intent;

    const-class v6, Landroid/content/ServiceConnection;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Landroid/os/UserHandle;

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v5

    .line 194
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceConn:Landroid/content/ServiceConnection;

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 193
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceBound:Z
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_53

    .line 198
    goto :goto_60

    .line 196
    :catchall_53
    move-exception v2

    .line 197
    :try_start_54
    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mServiceBound:Z
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_61

    .line 201
    :goto_60
    goto :goto_69

    .line 199
    :catchall_61
    move-exception v0

    .line 200
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v2, "cannot bind iris service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_69
    return-void
.end method

.method private finish(Landroid/os/CancellationSignal;)V
    .registers 3

    .line 438
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_7

    goto :goto_e

    .line 439
    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 441
    return-void

    .line 438
    :cond_e
    :goto_e
    return-void
.end method

.method private static getOrCreate(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/Un1caIrisKeyguard;
    .registers 2

    .line 126
    sget-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    .line 127
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    sput-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    .line 128
    sget-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 130
    :cond_12
    sget-object p0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    return-object p0
.end method

.method private hidePreviewAnchor()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 427
    if-nez v0, :cond_5

    return-void

    .line 428
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 430
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

    .line 433
    goto :goto_20

    .line 431
    :catchall_18
    move-exception v0

    .line 432
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v2, "preview anchor already gone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :goto_20
    return-void
.end method

.method private iris()Lcom/samsung/android/camera/iris/SemIrisManager;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 327
    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method private irisEnrolled(I)Z
    .registers 6

    .line 276
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    if-ne v0, p1, :cond_11

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 278
    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->refreshEnrolled(ILjava/lang/Runnable;)V

    .line 280
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

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    .line 207
    :catchall_7
    move-exception v0

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method private isIntelligentScanActive()Z
    .registers 3

    .line 213
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

    .line 613
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

    .line 315
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 316
    if-nez v1, :cond_10

    return v0

    .line 318
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

    .line 319
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    return p1

    .line 320
    :catchall_32
    move-exception p1

    .line 321
    return v0
.end method

.method private joinFace(Landroid/os/CancellationSignal;)V
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-ne v0, p1, :cond_17

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-eqz p1, :cond_9

    goto :goto_17

    .line 467
    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    .line 468
    const-string p1, "UN1CA-IrisKeyguard"

    const-string v0, "intelligent scan: face joins the iris camera"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->triggerFaceAuth()V

    .line 470
    return-void

    .line 466
    :cond_17
    :goto_17
    return-void
.end method

.method private nextAttempt(Landroid/os/CancellationSignal;)V
    .registers 5

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 475
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 476
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 477
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-gtz p1, :cond_20

    .line 478
    :cond_19
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 479
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->startFaceFallback()V

    .line 480
    return-void

    .line 482
    :cond_20
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-gtz p1, :cond_2f

    .line 483
    const-string p1, "UN1CA-IrisKeyguard"

    const-string v0, "no match after 3 attempts"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 485
    return-void

    .line 487
    :cond_2f
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 489
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    return-void
.end method

.method private onFaceFallbackTimeout()V
    .registers 5

    .line 515
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_9

    goto :goto_26

    .line 516
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 517
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 518
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez v0, :cond_25

    .line 519
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 520
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    :cond_25
    return-void

    .line 515
    :cond_26
    :goto_26
    return-void
.end method

.method private onMatched(I)V
    .registers 9

    .line 576
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    const-string v1, "UN1CA-IrisKeyguard"

    if-eqz v0, :cond_49

    .line 582
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

    .line 583
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_43

    .line 587
    goto :goto_49

    .line 585
    :catchall_43
    move-exception v0

    .line 586
    const-string v4, "TrustManager not notified"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    :cond_49
    :goto_49
    const-string v0, "un1ca_iris_stay_on_lockscreen"

    invoke-direct {p0, v0, v3}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_6a

    .line 593
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 594
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "face_stay_on_lock_screen"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_68

    goto :goto_6a

    :cond_68
    move v2, v3

    goto :goto_6b

    :cond_6a
    :goto_6a
    nop

    .line 595
    :goto_6b
    if-eqz v2, :cond_9d

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    if-nez v0, :cond_9d

    .line 597
    :try_start_73
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

    .line 598
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_73 .. :try_end_90} :catchall_91

    .line 601
    goto :goto_97

    .line 599
    :catchall_91
    move-exception p1

    .line 600
    const-string v0, "lock screen not marked unlocked"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    :goto_97
    const-string p1, "staying on lock screen until swipe"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void

    .line 605
    :cond_9d
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 606
    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 607
    instance-of v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_c0

    .line 608
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 609
    :cond_c0
    goto :goto_a5

    .line 610
    :cond_c1
    return-void
.end method

.method public static onStartedWakingUp(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 4

    .line 167
    :try_start_0
    invoke-static {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->getOrCreate(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/Un1caIrisKeyguard;

    move-result-object p0

    .line 168
    if-nez p0, :cond_7

    return-void

    .line 169
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->ensureServiceBound()V

    .line 170
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->refreshEnrolled(ILjava/lang/Runnable;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 172
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result v1

    .line 174
    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    .line 175
    const-string v1, "un1ca_intelligent_scan_screen_on"

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_36

    move v0, v2

    goto :goto_36

    .line 176
    :cond_2d
    const-string v1, "un1ca_iris_unlock_screen_on"

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_36

    move v0, v2

    .line 177
    :cond_36
    :goto_36
    if-eqz v0, :cond_40

    .line 178
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 179
    const-string v0, "screen on"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    .line 183
    :cond_40
    goto :goto_49

    .line 181
    :catchall_41
    move-exception p0

    .line 182
    const-string v0, "UN1CA-IrisKeyguard"

    const-string v1, "wake hook failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :goto_49
    return-void
.end method

.method private refreshEnrolled(ILjava/lang/Runnable;)V
    .registers 5

    .line 289
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 290
    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    .line 291
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolled:Z

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledAt:J

    .line 293
    return-void

    .line 295
    :cond_12
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledRefreshing:Z

    if-eqz v0, :cond_17

    return-void

    .line 296
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledRefreshing:Z

    .line 297
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->authHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda14;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method private setting(Ljava/lang/String;I)I
    .registers 4

    .line 262
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

    .line 141
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->getOrCreate(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/Un1caIrisKeyguard;

    move-result-object p0

    .line 142
    if-nez p0, :cond_8

    return v0

    .line 143
    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->allowFaceAuth()Z

    move-result p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    return p0

    .line 144
    :catchall_d
    move-exception p0

    .line 145
    return v0
.end method

.method private showPreviewAnchor(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/view/View;
    .registers 8

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    return-object p1

    .line 407
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object p1

    .line 408
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 409
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

    .line 410
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x118

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/16 v3, 0x7df

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 417
    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 418
    const-string v0, "IrisPreviewAnchor"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 420
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 422
    return-object v0
.end method

.method private start(Ljava/lang/String;)V
    .registers 12

    .line 331
    const-string v0, "UN1CA-IrisKeyguard"

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_7

    return-void

    .line 332
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->ensureServiceBound()V

    .line 333
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 334
    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_18

    return-void

    .line 335
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

    .line 337
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

    .line 338
    :cond_45
    iget v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    if-eq v1, v6, :cond_52

    .line 340
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->refreshEnrolled(ILjava/lang/Runnable;)V

    .line 341
    return-void

    .line 343
    :cond_52
    invoke-direct {p0, v6}, Lcom/android/keyguard/Un1caIrisKeyguard;->irisEnrolled(I)Z

    move-result v1

    if-nez v1, :cond_59

    return-void

    .line 345
    :cond_59
    :try_start_59
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->iris()Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v5

    .line 346
    if-nez v5, :cond_60

    return-void

    .line 347
    :cond_60
    iput-boolean v3, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 348
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    iget-boolean v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-nez v1, :cond_74

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_75

    :cond_74
    move v2, v3

    .line 352
    :goto_75
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    .line 353
    iput-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 354
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

    .line 355
    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-nez p1, :cond_b2

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 359
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->authHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v4}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    :cond_b2
    invoke-direct {p0, v5}, Lcom/android/keyguard/Un1caIrisKeyguard;->showPreviewAnchor(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/view/View;

    move-result-object p1

    .line 367
    if-eqz v2, :cond_bb

    const-wide/16 v1, 0x78

    goto :goto_bd

    :cond_bb
    const-wide/16 v1, 0x0

    :goto_bd
    move-wide v8, v1

    .line 369
    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda9;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;J)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_c9
    .catchall {:try_start_59 .. :try_end_c9} :catchall_ca

    .line 402
    goto :goto_d5

    .line 399
    :catchall_ca
    move-exception p1

    .line 400
    const-string v1, "cannot start iris"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 403
    :goto_d5
    return-void

    .line 337
    :cond_d6
    :goto_d6
    return-void

    .line 336
    :cond_d7
    :goto_d7
    return-void
.end method

.method private startFaceFallback()V
    .registers 5

    .line 497
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    if-eqz v0, :cond_a

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    .line 500
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 502
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

    .line 503
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    return-void

    .line 502
    :cond_34
    :goto_34
    return-void
.end method

.method private stop(Ljava/lang/String;)V
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 539
    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceShared:Z

    .line 540
    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 541
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 542
    if-nez v0, :cond_16

    .line 543
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 544
    return-void

    .line 546
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

    .line 547
    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 548
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 549
    return-void
.end method

.method private stopFaceAuth()Z
    .registers 7

    .line 553
    nop

    .line 555
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

    .line 557
    :try_start_b
    const-string v3, "mSemFaceCancelSignal"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 558
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 559
    iget-object v5, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CancellationSignal;
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_1d} :catch_39
    .catchall {:try_start_b .. :try_end_1d} :catchall_37

    .line 560
    if-eqz v5, :cond_36

    .line 561
    nop

    .line 562
    :try_start_20
    invoke-virtual {v5}, Landroid/os/CancellationSignal;->cancel()V

    .line 563
    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    iget-object v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20 .. :try_end_2e} :catch_33
    .catchall {:try_start_20 .. :try_end_2e} :catchall_30

    move v2, v4

    goto :goto_36

    .line 569
    :catchall_30
    move-exception v0

    move v2, v4

    goto :goto_43

    .line 567
    :catch_33
    move-exception v2

    move v2, v4

    goto :goto_3a

    .line 566
    :cond_36
    :goto_36
    goto :goto_3f

    .line 569
    :catchall_37
    move-exception v0

    goto :goto_43

    .line 567
    :catch_39
    move-exception v3

    .line 555
    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_37

    goto :goto_9

    .line 571
    :cond_3f
    :goto_3f
    goto :goto_4a

    .line 569
    :catchall_40
    move-exception v1

    move v2, v0

    move-object v0, v1

    .line 570
    :goto_43
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v3, "could not stop face auth"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    :goto_4a
    return v2
.end method

.method private triggerFaceAuth()V
    .registers 6

    .line 527
    :try_start_0
    const-string v0, "com.android.systemui.deviceentry.shared.FaceAuthUiEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 528
    const-string v1, "FACE_AUTH_UPDATED_STARTED_WAKING_UP"

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    .line 529
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

    .line 530
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    .line 533
    goto :goto_35

    .line 531
    :catchall_2d
    move-exception v0

    .line 532
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v2, "could not trigger face fallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    :goto_35
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->onFaceFallbackTimeout()V

    return-void
.end method

.method synthetic lambda$nextAttempt$12$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_16

    .line 491
    :cond_9
    const-string v0, "next attempt"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 493
    :cond_15
    return-void

    .line 490
    :cond_16
    :goto_16
    return-void
.end method

.method synthetic lambda$onBiometricAuthFailed$1$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 232
    const-string v0, "after face failed"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onBiometricError$2$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 244
    const-string v0, "after face error"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onFaceFallbackTimeout$14$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 520
    const-string v0, "next attempt after face fallback"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$refreshEnrolled$3$com-android-keyguard-Un1caIrisKeyguard(ILjava/lang/Runnable;)V
    .registers 7

    .line 298
    nop

    .line 300
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->iris()Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    .line 301
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

    .line 304
    :goto_11
    goto :goto_1b

    .line 302
    :catchall_12
    move-exception v1

    .line 303
    const-string v2, "UN1CA-IrisKeyguard"

    const-string v3, "iris enrollment query failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    .line 305
    :goto_1b
    iput-boolean v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolled:Z

    .line 306
    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledUser:I

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledAt:J

    .line 308
    iput-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mEnrolledRefreshing:Z

    .line 309
    if-eqz v1, :cond_30

    if-eqz p2, :cond_30

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    :cond_30
    return-void
.end method

.method synthetic lambda$start$10$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V
    .registers 13

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 376
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

    .line 391
    iget-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda12;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    const-wide/16 v0, 0xc80

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method

.method synthetic lambda$start$11$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;J)V
    .registers 14

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 371
    :cond_5
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V

    .line 393
    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_1c

    .line 394
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 396
    :cond_1c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 398
    :goto_1f
    return-void
.end method

.method synthetic lambda$start$4$com-android-keyguard-Un1caIrisKeyguard(Ljava/lang/String;)V
    .registers 2

    .line 340
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$start$5$com-android-keyguard-Un1caIrisKeyguard(ZLandroid/os/CancellationSignal;)V
    .registers 3

    .line 362
    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/android/keyguard/Un1caIrisKeyguard;->joinFace(Landroid/os/CancellationSignal;)V

    .line 363
    :cond_5
    return-void
.end method

.method synthetic lambda$start$6$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V
    .registers 7

    .line 360
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->announceFace()Z

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda10;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;ZLandroid/os/CancellationSignal;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    return-void
.end method

.method synthetic lambda$start$7$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 385
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 387
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->startFaceFallback()V

    .line 388
    :cond_11
    return-void
.end method

.method synthetic lambda$start$8$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V
    .registers 15

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-ne v0, p1, :cond_30

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_30

    .line 379
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

    .line 389
    goto :goto_2f

    .line 381
    :catchall_1d
    move-exception p2

    .line 382
    const-string p3, "UN1CA-IrisKeyguard"

    const-string p4, "cannot start iris"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    iget-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :goto_2f
    return-void

    .line 377
    :cond_30
    :goto_30
    return-void
.end method

.method synthetic lambda$start$9$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V
    .registers 2

    .line 391
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->nextAttempt(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method synthetic lambda$startFaceFallback$13$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 5

    .line 506
    iget-boolean v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 507
    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->triggerFaceAuth()V

    .line 508
    iget v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez v0, :cond_19

    .line 509
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    :cond_19
    return-void

    .line 506
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5

    .line 226
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_35

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 227
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 229
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 230
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez p1, :cond_35

    .line 231
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 232
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    :cond_35
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .registers 4

    .line 258
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

    .line 259
    :cond_1e
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 6

    .line 238
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_35

    iget-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->isIntelligentScanActive()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 239
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 241
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stopFaceAuth()Z

    .line 242
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-lez p1, :cond_35

    .line 243
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 244
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    :cond_35
    return-void
.end method

.method public onKeyguardGoingAway()V
    .registers 2

    .line 250
    const-string v0, "keyguard going away"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    .line 254
    if-nez p1, :cond_7

    const-string p1, "keyguard hidden"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    .line 255
    :cond_7
    return-void
.end method

.method public onPrimaryBouncerVisibilityChanged(Z)V
    .registers 3

    .line 217
    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez p1, :cond_18

    .line 218
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackActive:Z

    .line 219
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mFaceFallbackDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 221
    const-string p1, "bouncer"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    .line 223
    :cond_18
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 2

    .line 249
    const-string p1, "going to sleep"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2

    .line 251
    const-string p1, "user switching"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method
