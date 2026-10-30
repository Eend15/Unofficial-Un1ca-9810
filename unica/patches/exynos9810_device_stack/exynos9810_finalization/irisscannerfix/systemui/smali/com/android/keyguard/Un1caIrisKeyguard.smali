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

.field private static final ATTEMPT_MS:J = 0xdacL

.field private static final ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field private static final KEY_SCREEN_ON:Ljava/lang/String; = "un1ca_iris_unlock_screen_on"

.field private static final KEY_STAY:Ljava/lang/String; = "un1ca_iris_stay_on_lockscreen"

.field private static final KEY_UNLOCK:Ljava/lang/String; = "un1ca_iris_unlock"

.field private static final RESTART_DELAY_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisKeyguard"

.field private static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field private static sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;


# instance fields
.field private mCancel:Landroid/os/CancellationSignal;

.field private final mHandler:Landroid/os/Handler;

.field private mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private final mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPreviewAnchor:Landroid/view/View;

.field private mRetriesLeft:I


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

.method static bridge synthetic -$$Nest$mfinish(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    return-void
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

.method private constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 59
    return-void
.end method

.method private finish(Landroid/os/CancellationSignal;)V
    .registers 3

    .line 170
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_7

    goto :goto_e

    .line 171
    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 172
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 173
    return-void

    .line 170
    :cond_e
    :goto_e
    return-void
.end method

.method private hidePreviewAnchor()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 159
    if-nez v0, :cond_5

    return-void

    .line 160
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 162
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

    .line 165
    goto :goto_20

    .line 163
    :catchall_18
    move-exception v0

    .line 164
    const-string v1, "UN1CA-IrisKeyguard"

    const-string v2, "preview anchor already gone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_20
    return-void
.end method

.method private iris()Lcom/samsung/android/camera/iris/SemIrisManager;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 102
    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mIris:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method private nextAttempt(Landroid/os/CancellationSignal;)V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 178
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 179
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 180
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    if-gtz p1, :cond_1a

    .line 181
    const-string p1, "UN1CA-IrisKeyguard"

    const-string v0, "no match after 3 attempts"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 183
    return-void

    .line 185
    :cond_1a
    iget p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 187
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-void
.end method

.method private onMatched(I)V
    .registers 9

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    const-string v1, "UN1CA-IrisKeyguard"

    if-eqz v0, :cond_46

    .line 212
    :try_start_18
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "unlockedByBiometricForUser"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    .line 213
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_40

    .line 217
    goto :goto_46

    .line 215
    :catchall_40
    move-exception v0

    .line 216
    const-string v4, "TrustManager not notified"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    :cond_46
    :goto_46
    const-string v0, "un1ca_iris_stay_on_lockscreen"

    invoke-direct {p0, v0, v3}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7e

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    if-nez v0, :cond_7e

    .line 224
    :try_start_54
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

    .line 225
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_54 .. :try_end_71} :catchall_72

    .line 228
    goto :goto_78

    .line 226
    :catchall_72
    move-exception p1

    .line 227
    const-string v0, "lock screen not marked unlocked"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :goto_78
    const-string p1, "staying on lock screen until swipe"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 232
    :cond_7e
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 233
    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 234
    instance-of v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_a1

    .line 235
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 236
    :cond_a1
    goto :goto_86

    .line 237
    :cond_a2
    return-void
.end method

.method public static onStartedWakingUp(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 3

    .line 64
    :try_start_0
    sget-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    if-nez v0, :cond_10

    .line 65
    new-instance v0, Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-direct {v0, p0}, Lcom/android/keyguard/Un1caIrisKeyguard;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    sput-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    .line 66
    sget-object v0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 68
    :cond_10
    sget-object p0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    const-string v0, "un1ca_iris_unlock_screen_on"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_28

    .line 69
    sget-object p0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 70
    sget-object p0, Lcom/android/keyguard/Un1caIrisKeyguard;->sInstance:Lcom/android/keyguard/Un1caIrisKeyguard;

    const-string v0, "screen on"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 74
    :cond_28
    goto :goto_31

    .line 72
    :catchall_29
    move-exception p0

    .line 73
    const-string v0, "UN1CA-IrisKeyguard"

    const-string v1, "wake hook failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_31
    return-void
.end method

.method private setting(Ljava/lang/String;I)I
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private showPreviewAnchor(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/view/View;
    .registers 8

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    return-object p1

    .line 139
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object p1

    .line 140
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 141
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

    .line 142
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x118

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/16 v3, 0x7df

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 149
    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 150
    const-string v0, "IrisPreviewAnchor"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iput-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    .line 154
    return-object v0
.end method

.method private start(Ljava/lang/String;)V
    .registers 10

    .line 106
    const-string v0, "UN1CA-IrisKeyguard"

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_7

    return-void

    .line 107
    :cond_7
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 108
    const-string v1, "un1ca_iris_unlock"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/Un1caIrisKeyguard;->setting(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_15

    return-void

    .line 109
    :cond_15
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_2e

    goto :goto_92

    .line 111
    :cond_2e
    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_91

    .line 113
    :cond_40
    :try_start_40
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->iris()Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_84

    invoke-virtual {v5, v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_84

    .line 115
    :cond_4d
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    .line 116
    iput-object v4, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 118
    invoke-direct {p0, v5}, Lcom/android/keyguard/Un1caIrisKeyguard;->showPreviewAnchor(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/view/View;

    move-result-object p1

    .line 120
    new-instance v1, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_83
    .catchall {:try_start_40 .. :try_end_83} :catchall_85

    .line 134
    goto :goto_90

    .line 114
    :cond_84
    :goto_84
    return-void

    .line 131
    :catchall_85
    move-exception p1

    .line 132
    const-string v1, "cannot start iris"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 135
    :goto_90
    return-void

    .line 111
    :cond_91
    :goto_91
    return-void

    .line 110
    :cond_92
    :goto_92
    return-void
.end method

.method private stop(Ljava/lang/String;)V
    .registers 5

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    .line 197
    if-nez v0, :cond_b

    .line 198
    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 199
    return-void

    .line 201
    :cond_b
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

    .line 202
    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 203
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 204
    return-void
.end method


# virtual methods
.method synthetic lambda$nextAttempt$2$com-android-keyguard-Un1caIrisKeyguard()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mPreviewAnchor:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_16

    .line 189
    :cond_9
    const-string v0, "next attempt"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/keyguard/Un1caIrisKeyguard;->hidePreviewAnchor()V

    .line 191
    :cond_15
    return-void

    .line 188
    :cond_16
    :goto_16
    return-void
.end method

.method synthetic lambda$start$0$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;)V
    .registers 2

    .line 125
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->nextAttempt(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method synthetic lambda$start$1$com-android-keyguard-Un1caIrisKeyguard(Landroid/os/CancellationSignal;Lcom/samsung/android/camera/iris/SemIrisManager;ILandroid/view/View;)V
    .registers 15

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_5

    return-void

    .line 123
    :cond_5
    :try_start_5
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

    .line 125
    iget-object p2, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/Un1caIrisKeyguard;Landroid/os/CancellationSignal;)V

    const-wide/16 v0, 0xdac

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    .line 129
    goto :goto_2e

    .line 126
    :catchall_23
    move-exception p2

    .line 127
    const-string p3, "UN1CA-IrisKeyguard"

    const-string p4, "cannot start iris"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->finish(Landroid/os/CancellationSignal;)V

    .line 130
    :goto_2e
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .registers 4

    .line 93
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

    .line 94
    :cond_1e
    return-void
.end method

.method public onKeyguardGoingAway()V
    .registers 2

    .line 85
    const-string v0, "keyguard going away"

    invoke-direct {p0, v0}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    .line 89
    if-nez p1, :cond_7

    const-string p1, "keyguard hidden"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    .line 90
    :cond_7
    return-void
.end method

.method public onPrimaryBouncerVisibilityChanged(Z)V
    .registers 2

    .line 78
    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mCancel:Landroid/os/CancellationSignal;

    if-nez p1, :cond_e

    .line 79
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/keyguard/Un1caIrisKeyguard;->mRetriesLeft:I

    .line 80
    const-string p1, "bouncer"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->start(Ljava/lang/String;)V

    .line 82
    :cond_e
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 2

    .line 84
    const-string p1, "going to sleep"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2

    .line 86
    const-string p1, "user switching"

    invoke-direct {p0, p1}, Lcom/android/keyguard/Un1caIrisKeyguard;->stop(Ljava/lang/String;)V

    return-void
.end method
