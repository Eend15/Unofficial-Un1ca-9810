.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;
.super Ljava/lang/Object;
.source "ElementAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;
    }
.end annotation


# static fields
.field public static final ANIM_TYPE_FLICK:I = 0x2

.field public static final ANIM_TYPE_GYRO:I = 0x3

.field public static final ANIM_TYPE_NONE:I = 0x0

.field public static final ANIM_TYPE_TRANSITION:I = 0x1

.field private static final MSG_CANCEL_TRANSITION:I = 0x2

.field private static final MSG_CHANGE_MODE:I = 0x4

.field private static final MSG_END_TRANSITION:I = 0x3

.field private static final MSG_START_TRANSITION:I = 0x1


# instance fields
.field private final ROTATE_FRAME_DECREASE_INTERVAL:I

.field private final ROTATE_FRAME_INTERVAL:I

.field private final ROTATE_MAX_DEGREE_HOME:I

.field private final ROTATE_MAX_DEGREE_LOCK:I

.field private final ROTATE_SPEED_BALANCE_AMOUNT:F

.field private final ROTATE_SPEED_DECREASE_AMOUNT:F

.field private final ROTATE_SPEED_MAX_VALUE:F

.field private final ROTATE_STOP_AMOUNT:F

.field private mAnimSequence:J

.field private mBaseDegree:F

.field private mCurAnimType:I

.field private mCurMode:I

.field private mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

.field private mFlickAnimation:Landroid/animation/ObjectAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mHomeSensorEnabled:Z

.field private mIsRotating:Z

.field private mOldMode:I

.field private mRotationSpeed:F

.field private mRotationStartHandler:Landroid/os/Handler;

.field private mRotationStopHandler:Landroid/os/Handler;

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 37
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_SPEED_BALANCE_AMOUNT:F

    .line 38
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_SPEED_MAX_VALUE:F

    const v0, 0x3a83126f    # 0.001f

    .line 39
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_STOP_AMOUNT:F

    const/16 v0, 0xa

    .line 40
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_FRAME_INTERVAL:I

    .line 41
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_FRAME_DECREASE_INTERVAL:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 42
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_SPEED_DECREASE_AMOUNT:F

    const/16 v0, 0xf

    .line 43
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_MAX_DEGREE_HOME:I

    const/16 v0, 0x1e

    .line 44
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->ROTATE_MAX_DEGREE_LOCK:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mOldMode:I

    .line 55
    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    .line 57
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    .line 59
    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    const-wide/16 v2, 0x0

    .line 60
    iput-wide v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mAnimSequence:J

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHomeSensorEnabled:Z

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    .line 64
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mBaseDegree:F

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mIsRotating:Z

    .line 67
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    .line 444
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStartHandler:Landroid/os/Handler;

    .line 468
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 85
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 v0, 0x80

    const-string v1, "InfinityWallpaper"

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->startTransition()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->cancelAllAnimationsInner()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->getCurrentMaxDegree()F

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->endAllAnimationsInner()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mAnimSequence:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mBaseDegree:F

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mBaseDegree:F

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    return p1
.end method

.method static synthetic access$716(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    return v0
.end method

.method static synthetic access$724(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mIsRotating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStartHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelAllAnimationsInner()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 161
    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    .line 166
    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mIsRotating:Z

    .line 168
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 170
    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    .line 171
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 175
    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method private createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;
    .locals 8

    .line 234
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut33;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 238
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p4

    .line 243
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    if-eqz p6, :cond_0

    .line 245
    invoke-virtual {p1, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    if-eqz p7, :cond_1

    .line 249
    new-instance p2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/-$$Lambda$ElementAnimator$ThifcQeQ1nLzJMN3Ft7z1eaCnFQ;

    invoke-direct {p2, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/-$$Lambda$ElementAnimator$ThifcQeQ1nLzJMN3Ft7z1eaCnFQ;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    new-instance p2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;

    iget-wide p3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mAnimSequence:J

    invoke-direct {p2, p0, p3, p4}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;J)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-object p1
.end method

.method private doneTransition()V
    .locals 5

    .line 362
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    .line 393
    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->setGroupAlpha(F)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    sget-object v4, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    aget v4, v4, v1

    iput v4, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    .line 395
    sget-object v4, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v4, v4, v1

    iput v4, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    .line 396
    sget-object v4, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v1, v4, v1

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    .line 397
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockFaces:F

    .line 398
    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHomeSensorEnabled:Z

    if-eqz v1, :cond_1

    .line 399
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    goto :goto_0

    .line 401
    :cond_1
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockLine:F

    .line 404
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeDot:F

    .line 405
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeLine:F

    .line 406
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockBg:F

    .line 407
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeBg:F

    goto :goto_1

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    sget-object v4, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    aget v4, v4, v1

    iput v4, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    .line 380
    sget-object v4, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v4, v4, v1

    iput v4, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    .line 381
    sget-object v4, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v1, v4, v1

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    .line 382
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateX:F

    .line 383
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    .line 384
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    .line 385
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    const v1, 0x3f19999a    # 0.6f

    .line 386
    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockFaces:F

    .line 387
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    .line 388
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockLine:F

    .line 389
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockBg:F

    goto :goto_1

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    sget-object v3, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    aget v3, v3, v1

    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    const v3, 0x3f4ccccd    # 0.8f

    .line 368
    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    .line 369
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    .line 370
    sget-object v3, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v3, v3, v1

    iput v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    .line 371
    sget-object v3, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v1, v3, v1

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    .line 372
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup1:F

    .line 373
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup2:F

    .line 374
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup3:F

    .line 375
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup4:F

    .line 376
    iput v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup5:F

    goto :goto_1

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetProperties()V

    .line 411
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method private endAllAnimationsInner()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 186
    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    .line 191
    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mIsRotating:Z

    .line 193
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 195
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 198
    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method private getCurrentMaxDegree()F
    .locals 1

    .line 482
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x41f00000    # 30.0f

    return p0

    :cond_0
    const/high16 p0, 0x41700000    # 15.0f

    return p0
.end method

.method private startTransition()V
    .locals 16

    move-object/from16 v8, p0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start animation for mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->cancelAllAnimationsInner()V

    .line 262
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 265
    iget v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    const/4 v10, 0x0

    if-eqz v0, :cond_f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    if-eq v0, v11, :cond_e

    const/4 v13, 0x2

    const v14, 0x3f547ae1    # 0.83f

    const v15, 0x3e2e147b    # 0.17f

    const/4 v7, 0x0

    if-eq v0, v13, :cond_a

    const/4 v11, 0x3

    if-eq v0, v11, :cond_0

    goto/16 :goto_1

    .line 313
    :cond_0
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    aget v3, v2, v10

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 314
    aget v1, v2, v13

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    .line 316
    :cond_1
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v3, v2, v10

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 317
    aget v1, v2, v13

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    .line 319
    :cond_2
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v3, v2, v10

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    .line 320
    aget v1, v2, v13

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    .line 322
    :cond_3
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    invoke-virtual {v0, v12}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->setGroupAlpha(F)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x683

    const/4 v6, 0x0

    const/4 v13, 0x1

    const-string v1, "empty_for_draw"

    move-object/from16 v0, p0

    move v10, v7

    move v7, v13

    .line 324
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 325
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    aget v3, v0, v11

    const/16 v5, 0x578

    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;-><init>()V

    const-string v1, "scale"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 326
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v3, v0, v11

    const/16 v5, 0x2ff

    const-string v1, "overBrightnessDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 327
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v3, v0, v11

    const-string v1, "overBrightnessLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 328
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateX:F

    cmpl-float v0, v3, v10

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    const/16 v5, 0x683

    .line 329
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;-><init>()V

    const-string v1, "rotateX"

    move-object/from16 v0, p0

    move v2, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 331
    :cond_4
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float v3, v2, v0

    const/4 v4, 0x0

    const/16 v5, 0x683

    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;-><init>()V

    const-string v1, "rotateY"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0x29b

    .line 332
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaHomeDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 333
    iget-boolean v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHomeSensorEnabled:Z

    if-nez v0, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v4, 0x363

    const/16 v5, 0x320

    .line 334
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaHomeDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/16 v5, 0x16f

    .line 336
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f2b851f    # 0.67f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-direct {v6, v7, v10, v0, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaHomeLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/16 v4, 0x16f

    const/16 v5, 0x384

    .line 337
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;-><init>()V

    const-string v1, "alphaHomeLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x85

    .line 338
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut33;-><init>()V

    const-string v1, "alphaHomeBg"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 339
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockFaces:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v7, v10, v10, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaLockFaces"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 340
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    cmpl-float v0, v2, v10

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    .line 341
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v7, v10, v10, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaLockDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 343
    :cond_6
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockLine:F

    cmpl-float v0, v2, v10

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    .line 344
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v7, v10, v10, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaLockLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 346
    :cond_7
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    cmpl-float v0, v2, v10

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    .line 347
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaAodFgObjects"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 349
    :cond_8
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    cmpl-float v0, v2, v10

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    .line 350
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaAodBgObjects"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 352
    :cond_9
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockBg:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x4b0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v7, v10, v10, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaLockBg"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    :cond_a
    move v10, v7

    .line 286
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_b

    .line 287
    aget v1, v2, v11

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    .line 289
    :cond_b
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v4, v2, v3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_c

    .line 290
    aget v1, v2, v11

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    .line 292
    :cond_c
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v4, v2, v3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_d

    .line 293
    aget v1, v2, v11

    iput v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    .line 295
    :cond_d
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    invoke-virtual {v0, v12}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->setGroupAlpha(F)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x834

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v1, "empty_for_draw"

    move-object/from16 v0, p0

    .line 297
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    aget v3, v0, v13

    const/16 v4, 0x64

    const/16 v5, 0x7d0

    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut70;-><init>()V

    const-string v1, "scale"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 299
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v3, v0, v13

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "overBrightnessDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 300
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v3, v0, v13

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "overBrightnessLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 301
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateX:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x834

    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut70;-><init>()V

    const-string v1, "rotateX"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 302
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut70;-><init>()V

    const-string v1, "rotateY"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 303
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaAodFgObjects"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 304
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaAodBgObjects"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x2ee

    .line 305
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;-><init>()V

    const-string v1, "alphaLockDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    .line 306
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaLockDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/16 v5, 0x2ee

    .line 307
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;-><init>()V

    const-string v1, "alphaLockLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/16 v4, 0x2ee

    const/16 v5, 0x2bc

    .line 308
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v15, v10, v14, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v1, "alphaLockLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v4, 0x190

    const/16 v5, 0x640

    .line 309
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;-><init>()V

    const-string v1, "alphaLockFaces"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    .line 310
    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineOut33;-><init>()V

    const-string v1, "alphaLockBg"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_e
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetProperties()V
    const/16 v10, 0xfa0

    .line 272
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iput v12, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0xfa0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v1, "empty_for_draw"

    move-object/from16 v0, p0

    .line 274
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 275
    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    const/4 v3, 0x0

    aget v2, v0, v3

    aget v3, v0, v11

    const/16 v5, 0xdac

    new-instance v6, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut60;

    invoke-direct {v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut60;-><init>()V

    const-string v1, "scale"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 276
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v3, v0, v11

    const/16 v4, 0xd48

    const/16 v5, 0x258

    const-string v1, "overBrightnessDot"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 277
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v3, v0, v11

    const/16 v4, 0x3e8

    const/16 v5, 0x8fc

    const-string v1, "overBrightnessLine"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x1f4

    const-string v1, "alphaGroup1"

    move-object/from16 v0, p0

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/16 v4, 0x258

    const/16 v5, 0x9c4

    const-string v1, "alphaGroup2"

    move-object/from16 v0, p0

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/16 v4, 0x320

    const-string v1, "alphaGroup3"

    move-object/from16 v0, p0

    .line 280
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/16 v4, 0x384

    const/16 v5, 0x8fc

    const-string v1, "alphaGroup4"

    move-object/from16 v0, p0

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/16 v4, 0x44c

    const-string v1, "alphaGroup5"

    move-object/from16 v0, p0

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const v3, 0x3f4ccccd    # 0.8f

    const/16 v4, 0x3e8

    const-string v1, "alphaAodBgObjects"

    move-object/from16 v0, p0

    .line 283
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    move v3, v10

    goto :goto_2

    :cond_f
    move v3, v10

    .line 267
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetProperties()V

    .line 268
    iget-object v0, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :goto_2
    int-to-long v0, v3

    .line 356
    invoke-direct {v8, v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->wakeLock(J)V

    .line 357
    iput-object v9, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mTransitionAnimatorSet:Landroid/animation/AnimatorSet;

    .line 358
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private wakeLock(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wakeLock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public changeMode(IZ)V
     .locals 2
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I
    if-ne v0, p1, :new_mode
    return-void
    :new_mode

    .line 112
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeModeInner(IZ)V
    .locals 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", old mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->endAllAnimationsInner()V

    goto :goto_0

    .line 128
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mAnimSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mAnimSequence:J

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    .line 136
    :goto_0
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mOldMode:I

    .line 137
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    if-eqz p2, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->startTransition()V

    goto :goto_1

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->doneTransition()V

    :goto_1
    return-void
.end method

.method public clear()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->cancelAllAnimations()V

    return-void
.end method

.method public endAllAnimations()V
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getCurrentAnimationType()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    return p0
.end method

.method public synthetic lambda$createAnimation$0$ElementAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public onDrawElementFinished()V
    .locals 2

    .line 91
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 92
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I

    if-ne v0, v1, :cond_0

    .line 93
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->animateStep:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->animateStep:F

    goto :goto_0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->animateStep:F

    const v1, 0x3ecccccd    # 0.4f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->animateStep:F

    :cond_1
    :goto_0
    return-void
.end method

.method public onFlick(F)V
    .locals 9

    .line 415
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 417
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    .line 418
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mAnimSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mAnimSequence:J

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlick velocityX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->cancelAllAnimationsInner()V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/high16 p1, -0x3e600000    # -20.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x41a00000    # 20.0f

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    iget v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    add-float v4, v3, p1

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    new-instance v7, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;

    invoke-direct {v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/animation/SineInOut90;-><init>()V

    const/4 v8, 0x1

    const-string v2, "rotateY"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    .line 430
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mFlickAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onGyroDataChanged(F)V
    .locals 2

    .line 434
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurAnimType:I

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationSpeed:F

    .line 437
    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mIsRotating:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 438
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mIsRotating:Z

    .line 439
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStartHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 440
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mRotationStopHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public setAodBgOff()V
    .locals 10
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mCurMode:I
    const/4 v1, 0x1
    if-ne v0, v1, :fade_exit
    new-instance v8, Landroid/animation/AnimatorSet;
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V
    move-object v0, p0
    const-string v1, "alphaAodFgObjects"
    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;
    iget v2, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/16 v5, 0x258
    const/4 v6, 0x0
    const/4 v7, 0x1
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;
    move-result-object v9
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    move-object v0, p0
    const-string v1, "alphaAodBgObjects"
    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mElementData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;
    iget v2, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/16 v5, 0x258
    const/4 v6, 0x0
    const/4 v7, 0x1
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->createAnimation(Ljava/lang/String;FFIILandroid/view/animation/Interpolator;Z)Landroid/animation/ObjectAnimator;
    move-result-object v9
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V
    :fade_exit
    return-void
.end method

.method public setHomeSensorEnabled(ZZ)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->mHomeSensorEnabled:Z

    if-nez p2, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->doneTransition()V

    :cond_0
    return-void
.end method
