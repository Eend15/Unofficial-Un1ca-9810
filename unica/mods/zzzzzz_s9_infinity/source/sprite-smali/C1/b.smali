.class public final LC1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public final a:[[LC1/a;

.field public b:Landroid/animation/AnimatorSet;

.field public c:I

.field public d:I

.field public final e:I

.field public f:LA1/h;

.field public g:I

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    const-string v0, "AOD AOD 0 300 1200 0.17 0.17 0.1 1\nAOD LOCK 0 720 1800 0.33 0 0.1 1\nAOD HOME 0 2952 2500 0.33 0 0.1 1\nLOCK HOME 720 2952 1200 0.17 0.17 0.1 1\nLOCK TOUCH 720 1800 1000 0.17 0.17 0.1 1"

    goto :goto_0

    :cond_0
    const-string v0, "AOD AOD 0 300 1200 0.17 0.17 0.1 1\nAOD LOCK 0 700 1000 0.33 0 0.1 1\nAOD HOME 0 2040 2500 0.33 0 0.1 1\nLOCK HOME 700 2040 1500 0.17 0.17 0.1 1\nLOCK TOUCH 700 1750 1500 0.17 0.17 0.1 1"

    :goto_0
    sput-object v0, LC1/b;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LC1/b;->c:I

    const/4 v1, -0x1

    iput v1, p0, LC1/b;->d:I

    iput v1, p0, LC1/b;->g:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LC1/b;->h:J

    iput p1, p0, LC1/b;->e:I

    invoke-virtual {p2}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getTransitionFrameInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "initMotion: use motion from resource = "

    invoke-static {p2, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "infinity_Choreographer"

    invoke-static {v1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, LC1/a;->a(Ljava/lang/String;)[[LC1/a;

    move-result-object p1

    iput-object p1, p0, LC1/b;->a:[[LC1/a;

    goto :goto_0

    :cond_0
    sget-object p1, LC1/b;->i:Ljava/lang/String;

    invoke-static {p1}, LC1/a;->a(Ljava/lang/String;)[[LC1/a;

    move-result-object p1

    iput-object p1, p0, LC1/b;->a:[[LC1/a;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "infinity_Choreographer"

    const-string v2, "destroy"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LC1/b;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LC1/b;->b:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final b(IIJLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .locals 2

    filled-new-array {p1, p2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez p1, :cond_not_aod

    const/16 v1, 0x96

    if-eq p2, v1, :cond_is_aod

    const/16 v1, 0x12c

    if-ne p2, v1, :cond_not_aod

    :cond_is_aod
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_not_aod
    invoke-static {v0}, Lf2/b;->a(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p5, LA1/a;

    const/4 v1, 0x1

    invoke-direct {p5, v1, p0}, LA1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p5, "newMotionAnimator "

    invoke-direct {p0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "infinity_Choreographer"

    invoke-static {p2, p0, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(IJZ)V
    .locals 14

    move-object v6, p0

    move v7, p1

    move-wide/from16 v8, p2

    const-string v0, "startMotion : type "

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "infinity_Choreographer"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v6, LC1/b;->g:I

    if-ne v7, v0, :cond_0

    const-string v0, "same motion"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iput v1, v6, LC1/b;->g:I

    :cond_1
    iget-object v0, v6, LC1/b;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v6, LC1/b;->b:Landroid/animation/AnimatorSet;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget v0, v6, LC1/b;->g:I

    const-wide/16 v11, 0x0

    if-eq v7, v0, :cond_6

    iget-object v1, v6, LC1/b;->a:[[LC1/a;

    aget-object v2, v1, v0

    aget-object v2, v2, v7

    if-nez v2, :cond_4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-object v0, v1, v0

    iget v1, v6, LC1/b;->g:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v2, v0, v1

    iget v0, v6, LC1/b;->g:I

    if-ge v7, v0, :cond_3

    iget v0, v2, LC1/a;->a:I

    goto :goto_0

    :cond_3
    iget v0, v2, LC1/a;->b:I

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_4
    iget v0, v2, LC1/a;->b:I

    goto :goto_0

    :goto_1
    iget-wide v4, v2, LC1/a;->c:J

    long-to-float v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, v6, LC1/b;->c:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, v2, LC1/a;->b:I

    iget v13, v2, LC1/a;->a:I

    sub-int/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    cmp-long v0, v0, v11

    if-lez v0, :cond_6

    if-eqz p4, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    iget v1, v6, LC1/b;->c:I

    iget-object v13, v2, LC1/a;->d:Landroid/view/animation/PathInterpolator;

    move-object v0, p0

    move v2, v3

    move-wide v3, v4

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, LC1/b;->b(IIJLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, v6, LC1/b;->a:[[LC1/a;

    aget-object v0, v0, v7

    aget-object v0, v0, v7

    if-eqz v0, :cond_8

    iget-object v5, v0, LC1/a;->d:Landroid/view/animation/PathInterpolator;

    if-eqz p4, :cond_7

    const-wide/16 v3, 0x10

    iget v2, v0, LC1/a;->b:I

    move-object v0, p0

    move v1, v2

    invoke-virtual/range {v0 .. v5}, LC1/b;->b(IIJLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-wide v3, v0, LC1/a;->c:J

    iget v1, v0, LC1/a;->a:I

    iget v2, v0, LC1/a;->b:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LC1/b;->b(IIJLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    iget-object v0, v6, LC1/b;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    iput v7, v6, LC1/b;->g:I

    cmp-long v0, v8, v11

    if-lez v0, :cond_9

    iget-object v0, v6, LC1/b;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_9
    iget-object v0, v6, LC1/b;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
