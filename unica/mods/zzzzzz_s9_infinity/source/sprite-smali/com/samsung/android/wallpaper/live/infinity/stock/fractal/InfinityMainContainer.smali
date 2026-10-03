.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;
.super Ljava/lang/Object;
.source "InfinityMainContainer.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;


# static fields
.field public static final SETTINGS_INFINITY_MOTION_EFFECT:Ljava/lang/String; = "infinity_motion_effect"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

.field private mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

.field private mFlickDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;

.field private mForceDraw:Z

.field private mGroupData:[[I

.field private mHeight:I

.field private mHomeBgResId:I

.field private mHomeSensorEnabled:Z

.field private mInitialized:Z

.field private mIsPreview:Z

.field private mIsVisible:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockBgResId:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMode:I

.field private mPendingModeChange:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mSettingsObserver:Landroid/database/ContentObserver;

.field private mShapeDataResId:I

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mTiltDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[[I)V
    .locals 7

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[[III)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[[IIIZ)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsVisible:Z

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsPreview:Z

    .line 43
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mPendingModeChange:Z

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mForceDraw:Z

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mInitialized:Z

    .line 47
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mWidth:I

    .line 48
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHeight:I

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    .line 65
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mPowerManager:Landroid/os/PowerManager;

    .line 67
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 69
    iput-boolean p6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsPreview:Z

    .line 70
    iput p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mShapeDataResId:I

    .line 71
    iput-object p3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mGroupData:[[I

    .line 72
    iput p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mLockBgResId:I

    .line 73
    iput p5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeBgResId:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "infinity_motion_effect"

    .line 76
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer$1;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 85
    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p1, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->loadHomeSensorSettingsValue()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->loadHomeSensorSettingsValue()V

    return-void
.end method

.method private changeMode()V
    .locals 3

    .line 219
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 222
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    :goto_0
    return-void
.end method

.method private initMode()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 203
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    :goto_0
    return-void
.end method

.method private loadHomeSensorSettingsValue()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "infinity_motion_effect"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings sensor enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InfinityWallpaper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public changeMode(I)V
    .locals 1

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(IZ)V

    return-void
.end method

.method public changeMode(IZ)V
    .locals 1

    .line 235
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    .line 237
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->resetShapeData()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->changeMode(IZ)V

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mPendingModeChange:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mPendingModeChange:Z

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->updateSensors()V

    .line 249
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->clear()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->clear()V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 283
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSettingsObserver:Landroid/database/ContentObserver;

    :cond_2
    return-void
.end method

.method public initObjects(II)V
    .locals 10

    const-string v0, "InfinityWallpaper"

    const-string v1, "main object init start"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mShapeDataResId:I

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mGroupData:[[I

    iget v8, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mLockBgResId:I

    iget v9, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeBgResId:I

    move-object v2, v1

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;-><init>(Landroid/content/Context;III[[III)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->updateScreenSize(II)V

    .line 161
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    if-nez p1, :cond_1

    .line 162
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    invoke-direct {p1, p2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;-><init>(Landroid/opengl/GLSurfaceView;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    iget-boolean p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsPreview:Z

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->setHomeSensorEnabled(ZZ)V

    .line 166
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mFlickDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;

    if-nez p1, :cond_2

    .line 167
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-direct {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mFlickDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;

    goto :goto_1

    .line 169
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->setAnimator(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    .line 172
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mTiltDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    if-nez p1, :cond_3

    .line 173
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-direct {p1, p2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mTiltDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    goto :goto_2

    .line 175
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->pause()V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mTiltDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->setAnimator(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    .line 179
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsPreview:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mPendingModeChange:Z

    if-eqz p1, :cond_4

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode change was pending. So change mode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mPendingModeChange:Z

    .line 182
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->changeMode(IZ)V

    .line 185
    :cond_4
    iput-boolean p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mInitialized:Z

    const-string p0, "main object init finished"

    .line 186
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 275
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSensorEnabled()Z
    .locals 4

    .line 308
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 310
    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 191
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mMode:I

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mForceDraw:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsVisible:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mForceDraw:Z

    .line 193
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawElements()V

    .line 194
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->onDrawElementFinished()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceChanged w = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InfinityWallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->updateSize(II)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->updateSensors()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->isSensorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mFlickDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->onVisibilityChanged(Z)V

    :goto_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    .line 123
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsVisible:Z

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->updateSensors()V

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->endAllAnimations()V

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public resetShapeData()V
    .locals 2

    const-string v0, "InfinityWallpaper"

    const-string v1, "resetShapeData"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetShapeData()V

    :cond_0
    return-void
.end method

.method public setAodBgOff()V
    .locals 2

    const-string v0, "InfinityWallpaper"

    const-string/jumbo v1, "setAodBgOff"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->setAodBgOff()V

    :cond_0
    return-void
.end method

.method public setHomeSensorEnabled()V
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->setHomeSensorEnabled(Z)V

    return-void
.end method

.method public setHomeSensorEnabled(Z)V
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSensors() enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    .line 317
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsPreview:Z

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->setHomeSensorEnabled(ZZ)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->updateSensors()V

    return-void
.end method

.method public setSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public updateSensors()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mTiltDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->isSensorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mTiltDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->resume()V

    goto :goto_0

    .line 294
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mTiltDetector:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->pause()V

    :goto_0
    return-void
.end method

.method public updateSize(II)V
    .locals 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize ow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize nw = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nh = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 143
    :cond_0
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mWidth:I

    .line 144
    iput p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mHeight:I

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mForceDraw:Z

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->initObjects(II)V

    .line 148
    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mIsPreview:Z

    if-nez p1, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->initMode()V

    :cond_1
    return-void
.end method

.method public wakeAod()V
    .locals 2

    const-string v0, "InfinityWallpaper"

    const-string/jumbo v1, "wakeAod"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->getCurrentAnimationType()I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->wakeAod()V

    .line 263
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method
