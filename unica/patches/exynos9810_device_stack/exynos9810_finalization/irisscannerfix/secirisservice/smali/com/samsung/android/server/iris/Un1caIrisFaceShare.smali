.class final Lcom/samsung/android/server/iris/Un1caIrisFaceShare;
.super Ljava/lang/Object;
.source "Un1caIrisFaceShare.java"


# static fields
.field private static final AUTH_SETUP_WINDOW_MS:J = 0x5dcL

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisService"

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisFaceShare"

.field static final TX_ATTACH:I = 0xff5501

.field static final TX_DETACH:I = 0xff5502

.field static final TX_EXPECT_FACE:I = 0xff5503

.field private static volatile sAuthStartMs:J

.field private static sFace:Landroid/view/Surface;

.field private static final sLock:Ljava/lang/Object;

.field private static sToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-wide/16 v0, -0x5dc

    sput-wide v0, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sAuthStartMs:J

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attach(Ljava/lang/Object;Landroid/view/Surface;Landroid/os/IBinder;)Z
    .registers 8

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_76

    if-nez p2, :cond_6

    goto :goto_76

    .line 98
    :cond_6
    :try_start_6
    const-string v1, "mCurrentClient"

    invoke-static {p0, v1}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sAuthStartMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5dc

    cmp-long v1, v1, v3

    if-lez v1, :cond_23

    .line 100
    const-string p0, "UN1CA-IrisFaceShare"

    const-string p1, "attach refused: no iris scan running"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v0

    .line 103
    :cond_23
    const-string v1, "mIRController"

    invoke-static {p0, v1}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_6d

    .line 107
    nop

    .line 108
    sget-object v1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_2d
    sput-object p1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sFace:Landroid/view/Surface;

    .line 110
    sput-object p2, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sToken:Landroid/os/IBinder;

    .line 111
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_6a

    .line 112
    const-string p1, "UN1CA-IrisFaceShare"

    const-string p2, "face unlock joined the iris front camera stream"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_39
    const-string p1, "mFrontCameraDevice"

    invoke-static {p0, p1}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraDevice;

    .line 117
    const-string p2, "mFrontCaptureSession"

    invoke-static {p0, p2}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCaptureSession;

    .line 118
    const-string v0, "mFrontHandler"

    invoke-static {p0, v0}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 119
    if-eqz p1, :cond_5f

    if-eqz p2, :cond_5f

    if-eqz v0, :cond_5f

    .line 120
    new-instance p1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_60

    .line 124
    :cond_5f
    goto :goto_68

    .line 122
    :catchall_60
    move-exception p0

    .line 123
    const-string p1, "UN1CA-IrisFaceShare"

    const-string p2, "cannot add face output to running session"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_68
    const/4 p0, 0x1

    return p0

    .line 111
    :catchall_6a
    move-exception p0

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0

    .line 104
    :catchall_6d
    move-exception p0

    .line 105
    const-string p1, "UN1CA-IrisFaceShare"

    const-string p2, "attach refused"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return v0

    .line 93
    :cond_76
    :goto_76
    return v0
.end method

.method private static detach(Ljava/lang/Object;)Z
    .registers 6

    .line 130
    sget-object v0, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sFace:Landroid/view/Surface;

    .line 132
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sFace:Landroid/view/Surface;

    .line 133
    sput-object v2, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sToken:Landroid/os/IBinder;

    .line 134
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_54

    .line 135
    const/4 v0, 0x1

    if-nez v1, :cond_f

    return v0

    .line 137
    :cond_f
    :try_start_f
    const-string v2, "mIRController"

    invoke-static {p0, v2}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 138
    const-string v2, "mFrontPreviewRequestBuilder"

    .line 139
    invoke-static {p0, v2}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 140
    const-string v3, "mFrontCaptureSession"

    invoke-static {p0, v3}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    .line 141
    if-eqz v2, :cond_43

    .line 142
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 143
    if-eqz v3, :cond_43

    .line 144
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const-string v2, "mCaptureCallback"

    .line 145
    invoke-static {p0, v2}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const-string v4, "mFrontHandler"

    .line 146
    invoke-static {p0, v4}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    .line 144
    invoke-virtual {v3, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_44

    .line 152
    :cond_43
    goto :goto_4c

    .line 149
    :catchall_44
    move-exception p0

    .line 151
    const-string v1, "UN1CA-IrisFaceShare"

    const-string v2, "detach while front session changes"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_4c
    const-string p0, "UN1CA-IrisFaceShare"

    const-string v1, "face unlock left the iris front camera stream"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v0

    .line 134
    :catchall_54
    move-exception p0

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method private static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_19

    .line 225
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_12} :catch_13

    return-object p0

    .line 228
    :catch_13
    move-exception v1

    .line 223
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 230
    :cond_19
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isSystemUi(Ljava/lang/Object;I)Z
    .registers 6

    .line 213
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 214
    if-nez p0, :cond_e

    return v0

    .line 215
    :cond_e
    array-length p1, p0

    move v1, v0

    :goto_10
    if-ge v1, p1, :cond_21

    aget-object v2, p0, v1

    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_22

    if-eqz v2, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 218
    :cond_21
    goto :goto_2a

    .line 216
    :catchall_22
    move-exception p0

    .line 217
    const-string p1, "UN1CA-IrisFaceShare"

    const-string v1, "caller check failed"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    :goto_2a
    return v0
.end method

.method static synthetic lambda$attach$0(Ljava/lang/Object;)V
    .registers 1

    .line 120
    invoke-static {p0}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->recreateSession(Ljava/lang/Object;)V

    return-void
.end method

.method static onAuthenticateStart()V
    .registers 2

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sAuthStartMs:J

    .line 54
    return-void
.end method

.method static onFrontSession(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sFace:Landroid/view/Surface;

    .line 167
    sget-object v2, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sToken:Landroid/os/IBinder;

    .line 168
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_4f

    .line 169
    if-eqz v1, :cond_4e

    if-nez p1, :cond_d

    goto :goto_4e

    .line 170
    :cond_d
    if-eqz v2, :cond_3d

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_3d

    .line 177
    :cond_16
    :try_start_16
    const-string v0, "mFrontPreviewRequestBuilder"

    .line 178
    invoke-static {p0, v0}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 179
    if-nez p0, :cond_21

    return-void

    .line 180
    :cond_21
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 182
    const-string p0, "UN1CA-IrisFaceShare"

    const-string p1, "front session carries face unlock output"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_34

    .line 185
    goto :goto_3c

    .line 183
    :catchall_34
    move-exception p0

    .line 184
    const-string p1, "UN1CA-IrisFaceShare"

    const-string v0, "face output not added"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :goto_3c
    return-void

    .line 171
    :cond_3d
    :goto_3d
    sget-object p0, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 172
    :try_start_40
    sget-object p1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sFace:Landroid/view/Surface;

    if-ne p1, v1, :cond_49

    const/4 p1, 0x0

    sput-object p1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sFace:Landroid/view/Surface;

    sput-object p1, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->sToken:Landroid/os/IBinder;

    .line 173
    :cond_49
    monitor-exit p0

    .line 174
    return-void

    .line 173
    :catchall_4b
    move-exception p1

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw p1

    .line 169
    :cond_4e
    :goto_4e
    return-void

    .line 168
    :catchall_4f
    move-exception p0

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method static onTransact(Ljava/lang/Object;ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9

    .line 58
    const v0, 0xff5503

    const-string v1, "com.samsung.android.camera.iris.IIrisService"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_29

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->isSystemUi(Ljava/lang/Object;I)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 64
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->onAuthenticateStart()V

    .line 66
    if-eqz p3, :cond_20

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    :cond_20
    return v2

    .line 62
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Intelligent Scan announce is for SystemUI only"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_29
    const v0, 0xff5501

    if-eq p1, v0, :cond_35

    const v3, 0xff5502

    if-eq p1, v3, :cond_35

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_68

    .line 76
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    if-ne p1, v0, :cond_5b

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_51

    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    .line 80
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 81
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->attach(Ljava/lang/Object;Landroid/view/Surface;Landroid/os/IBinder;)Z

    move-result p0

    .line 82
    goto :goto_5f

    .line 83
    :cond_5b
    invoke-static {p0}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->detach(Ljava/lang/Object;)Z

    move-result p0

    .line 85
    :goto_5f
    if-eqz p3, :cond_67

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    :cond_67
    return v2

    .line 74
    :cond_68
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Intelligent Scan camera share is for system_server only"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static recreateSession(Ljava/lang/Object;)V
    .registers 7

    .line 190
    :try_start_0
    const-string v0, "mFrontCameraDevice"

    invoke-static {p0, v0}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    .line 191
    const-string v1, "outputFrontSurface"

    invoke-static {p0, v1}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 192
    if-eqz v0, :cond_74

    if-nez v1, :cond_15

    goto :goto_74

    .line 193
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createOutputConfiguration"

    const-class v4, Landroid/view/Surface;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 195
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 199
    invoke-static {p0, v4}, Lcom/samsung/android/server/iris/Un1caIrisFaceShare;->onFrontSession(Ljava/lang/Object;Ljava/util/List;)V

    .line 200
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_50

    return-void

    .line 201
    :cond_50
    const-string v1, "com.samsung.android.server.iris.IRV2Controller$20"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 204
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 205
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v4, p0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_73
    .catchall {:try_start_0 .. :try_end_73} :catchall_75

    .line 208
    goto :goto_7d

    .line 192
    :cond_74
    :goto_74
    return-void

    .line 206
    :catchall_75
    move-exception p0

    .line 207
    const-string v0, "UN1CA-IrisFaceShare"

    const-string v1, "front session not re-created for face"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :goto_7d
    return-void
.end method
