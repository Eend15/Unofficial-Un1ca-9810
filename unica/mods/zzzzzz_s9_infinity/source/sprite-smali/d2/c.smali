.class public final Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:Landroid/view/animation/PathInterpolator;

.field public static final t:[I

.field public static final u:[I

.field public static final v:[I

.field public static final w:Landroid/view/animation/PathInterpolator;

.field public static final x:Landroid/view/animation/PathInterpolator;

.field public static final y:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public c:Z

.field public d:LO/f;

.field public e:LO/f;

.field public f:LA1/h;

.field public final g:[Landroid/animation/ValueAnimator;

.field public h:Landroid/animation/ValueAnimator;

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:Z

.field public final p:Z

.field public q:Landroid/animation/AnimatorSet;

.field public final r:LA0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ld2/c;->s:Landroid/view/animation/PathInterpolator;

    const/16 v0, 0x1a

    const/16 v5, 0x34

    const/16 v6, -0x34

    const/16 v7, -0x1a

    const/4 v8, 0x0

    filled-new-array {v6, v7, v8, v0, v5}, [I

    move-result-object v0

    sput-object v0, Ld2/c;->t:[I

    const/16 v0, 0x24

    const/16 v5, 0x1d

    const/16 v6, 0x32

    const/16 v7, 0x2b

    filled-new-array {v6, v7, v8, v0, v5}, [I

    move-result-object v0

    sput-object v0, Ld2/c;->u:[I

    filled-new-array {v8, v8, v8, v8, v8}, [I

    move-result-object v0

    sput-object v0, Ld2/c;->v:[I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f0ccccd    # 0.55f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v6, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ld2/c;->w:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ld2/c;->x:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f8f5c29    # 1.12f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ld2/c;->y:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Ld2/c;->g:[Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/c;->o:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld2/c;->p:Z

    new-instance v1, LA0/a;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, LA0/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Ld2/c;->r:LA0/a;

    iput-object p1, p0, Ld2/c;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ld2/c;->b:Landroid/os/Handler;

    iput-boolean v0, p0, Ld2/c;->c:Z

    iput-boolean p2, p0, Ld2/c;->p:Z

    return-void
.end method


# virtual methods
.method public final a()LO/f;
    .locals 5

    new-instance v0, LO/f;

    new-instance v1, LO/e;

    invoke-direct {v1}, LO/e;-><init>()V

    invoke-direct {v0, v1}, LO/f;-><init>(LO/e;)V

    new-instance v1, LO/g;

    invoke-direct {v1}, LO/g;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    float-to-double v2, v2

    iput-wide v2, v1, LO/g;->b:D

    const/4 v2, 0x0

    iput-boolean v2, v1, LO/g;->c:Z

    const/high16 v3, 0x43160000    # 150.0f

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, v1, LO/g;->a:D

    iput-boolean v2, v1, LO/g;->c:Z

    const/4 v2, 0x0

    float-to-double v3, v2

    iput-wide v3, v1, LO/g;->i:D

    iput-object v1, v0, LO/f;->j:LO/g;

    const v1, 0x3a83126f    # 0.001f

    iput v1, v0, LO/f;->g:F

    iput v2, v0, LO/f;->b:F

    const/4 v1, 0x1

    iput-boolean v1, v0, LO/f;->c:Z

    new-instance v1, LA1/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LA1/d;-><init>(ILjava/lang/Object;)V

    iget-boolean v2, v0, LO/f;->e:Z

    if-nez v2, :cond_2

    iget-object v2, v0, LO/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ld2/b;

    invoke-direct {v1, p0}, Ld2/b;-><init>(Ld2/c;)V

    iget-object p0, v0, LO/f;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Ld2/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld2/c;->r:LA0/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Ld2/c;->h:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Ld2/c;->h:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Ld2/c;->d:LO/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LO/f;->b()V

    :cond_2
    iget-object v0, p0, Ld2/c;->e:LO/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LO/f;->b()V

    :cond_3
    iget-object v0, p0, Ld2/c;->q:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Ld2/c;->q:Landroid/animation/AnimatorSet;

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ld2/c;->g:[Landroid/animation/ValueAnimator;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v3, v2, v0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_5
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Ld2/c;->n:F

    iput v0, p0, Ld2/c;->m:F

    invoke-virtual {p0}, Ld2/c;->c()V

    return-void
.end method

.method public final c()V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ld2/e;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ld2/e;-><init>(I)V

    iget-boolean v3, v0, Ld2/c;->p:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_1

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    iget-object v5, v0, Ld2/c;->h:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_0
    sub-float v5, v4, v5

    mul-float/2addr v5, v4

    iput v5, v1, Ld2/e;->a:F

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v2, :cond_c

    iget-object v7, v0, Ld2/c;->h:Landroid/animation/ValueAnimator;

    iget-object v8, v1, Ld2/e;->b:[F

    const/4 v9, 0x1

    iget-object v10, v0, Ld2/c;->a:Landroid/content/Context;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Ld2/c;->h:Landroid/animation/ValueAnimator;

    if-nez v7, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    if-nez v3, :cond_3

    move v7, v4

    :cond_3
    sget-object v11, Ld2/c;->t:[I

    aget v11, v11, v6

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v9, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    sub-float v7, v4, v7

    mul-float/2addr v7, v9

    aput v7, v8, v6

    goto/16 :goto_8

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "updateViewStateAsTilt "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Ld2/c;->m:F

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Ld2/c;->n:F

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v11, v5, [Ljava/lang/Object;

    const-string v12, "tiltclock_Choreographer"

    invoke-static {v12, v7, v11}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, v0, Ld2/c;->m:F

    const/4 v11, 0x0

    cmpg-float v12, v7, v11

    if-gtz v12, :cond_5

    move v12, v9

    goto :goto_2

    :cond_5
    move v12, v5

    :goto_2
    if-eqz v12, :cond_6

    rsub-int/lit8 v13, v6, 0x4

    goto :goto_3

    :cond_6
    move v13, v6

    :goto_3
    sget-object v14, Ld2/c;->u:[I

    aget v13, v14, v13

    int-to-float v13, v13

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v9, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const v14, 0x3f666666    # 0.9f

    const/high16 v15, -0x40800000    # -1.0f

    const v2, -0x4099999a    # -0.9f

    if-eqz v12, :cond_7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float/2addr v7, v2

    mul-float/2addr v7, v15

    goto :goto_4

    :cond_7
    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v14

    :goto_4
    mul-float/2addr v13, v7

    aput v13, v8, v6

    iget v7, v0, Ld2/c;->n:F

    cmpg-float v8, v7, v11

    if-gtz v8, :cond_8

    move v8, v9

    goto :goto_5

    :cond_8
    move v8, v5

    :goto_5
    sget-object v12, Ld2/c;->v:[I

    aget v12, v12, v6

    int-to-float v12, v12

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v9, v12, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    if-eqz v8, :cond_9

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float/2addr v7, v2

    mul-float/2addr v7, v15

    goto :goto_6

    :cond_9
    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v7, v2, v14

    :goto_6
    mul-float/2addr v9, v7

    iget-object v2, v1, Ld2/e;->c:[F

    aput v9, v2, v6

    iget v2, v0, Ld2/c;->m:F

    cmpg-float v2, v2, v11

    if-gtz v2, :cond_a

    int-to-float v2, v6

    goto :goto_7

    :cond_a
    rsub-int/lit8 v2, v6, 0x5

    int-to-float v2, v2

    :goto_7
    iget-object v7, v1, Ld2/e;->d:[F

    aput v2, v7, v6

    :goto_8
    iget-object v2, v0, Ld2/c;->g:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v6

    iget-object v7, v1, Ld2/e;->e:[F

    if-nez v2, :cond_b

    aput v4, v7, v6

    goto :goto_9

    :cond_b
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v7, v6

    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x5

    goto/16 :goto_1

    :cond_c
    iget-object v0, v0, Ld2/c;->f:LA1/h;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, LA1/h;->accept(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
