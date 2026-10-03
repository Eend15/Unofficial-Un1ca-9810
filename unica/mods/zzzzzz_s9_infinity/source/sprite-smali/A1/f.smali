.class public final LA1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:LA1/c;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Z

.field public final f:J

.field public g:LO/f;

.field public h:F

.field public i:LA1/h;

.field public j:I

.field public k:Z

.field public final l:LA1/e;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LA1/f;->e:Z

    iput p1, p0, LA1/f;->b:I

    iput p2, p0, LA1/f;->a:I

    iput-wide p3, p0, LA1/f;->f:J

    new-instance p1, LA1/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/f;->c:LA1/c;

    new-instance p1, LA1/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string p2, "mapConfig"

    invoke-static {p5, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, LV4/m;->G0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    const p5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v2, p3

    move v1, p5

    move p5, p4

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, LV4/m;->N0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, LV4/m;->G0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v6, v3, v4

    if-ltz v6, :cond_7

    cmpg-float v4, v5, v4

    if-gez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p5, v5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    :cond_2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    cmpg-float p2, p4, v4

    if-lez p2, :cond_7

    cmpg-float p2, v1, v4

    if-ltz p2, :cond_7

    cmpg-float p2, p5, v1

    if-gtz p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    const-string v0, "next(...)"

    invoke-static {p5, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    div-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object p3, v2

    :cond_7
    :goto_2
    iput-object p3, p1, LA1/e;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sput p2, LA1/e;->e:F

    invoke-virtual {p3}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sput p2, LA1/e;->f:F

    iput-object p1, p0, LA1/f;->l:LA1/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fold_Choreographer"

    const-string v3, "pause"

    invoke-static {v2, v3, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, LA1/f;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LA1/f;->e:Z

    iget-object v1, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->pause()V

    :cond_0
    iget-object v1, p0, LA1/f;->g:LO/f;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, LO/f;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LO/f;->b()V

    :cond_1
    iget-object p0, p0, LA1/f;->c:LA1/c;

    const/4 v1, 0x0

    iput v1, p0, LA1/c;->a:F

    iput v0, p0, LA1/c;->b:I

    return-void
.end method

.method public final b(LA1/p;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "fold_Choreographer"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, LA1/f;->g:LO/f;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, LO/f;->e:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LO/f;->b()V

    :cond_0
    iget-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget v0, p1, LA1/p;->c:I

    iput v0, p0, LA1/f;->j:I

    iget-object v2, p0, LA1/f;->i:LA1/h;

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, LA1/h;->accept(Ljava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, LA1/f;->k:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, LA1/f;->k:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz p1, :cond_9

    iget-boolean v0, p1, LA1/p;->d:Z

    if-eqz v0, :cond_9

    :cond_4
    if-eqz p1, :cond_5

    iget-boolean v0, p1, LA1/p;->d:Z

    if-eqz v0, :cond_5

    iget p1, p1, LA1/p;->c:I

    goto :goto_0

    :cond_5
    move p1, v1

    :goto_0
    iget-object v0, p0, LA1/f;->g:LO/f;

    if-eqz v0, :cond_6

    iget-boolean v2, v0, LO/f;->e:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LO/f;->b()V

    :cond_6
    iget-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    iget-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "newBlossomAnimator: duration = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, LA1/f;->f:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, LA1/f;->a:I

    filled-new-array {p1, v0}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v2}, Lf2/b;->a(Landroid/animation/ValueAnimator;)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sub-int p1, v0, p1

    int-to-long v6, p1

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, LA1/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, LA1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    iput-boolean v1, p0, LA1/f;->e:Z

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_9
    iget-object p1, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/Animator;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    :cond_a
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "fold_Choreographer"

    const-string v2, "stop"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LA1/f;->a()V

    iget-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    iput-object v0, p0, LA1/f;->g:LO/f;

    return-void
.end method

.method public final d(F)V
    .locals 8

    iget-object v0, p0, LA1/f;->c:LA1/c;

    iget v1, v0, LA1/c;->a:F

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, v0, LA1/c;->b:I

    if-lez v4, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v4, :cond_3

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    iput v3, v0, LA1/c;->b:I

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    const/4 v1, -0x1

    :goto_3
    add-int/2addr v4, v1

    iput v4, v0, LA1/c;->b:I

    :goto_4
    iput p1, v0, LA1/c;->a:F

    sget v1, LA1/e;->e:F

    sget v4, LA1/e;->f:F

    invoke-static {p1, v1, v4}, Lw0/f;->i(FFF)F

    move-result v1

    sget v4, LA1/e;->e:F

    sub-float/2addr v1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, LA1/f;->h:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string v4, "updateAngle: angle[%f], currentSensorAngle[%f], mCurrentAngle[%f]"

    const-string v5, "fold_Choreographer"

    invoke-static {v5, v4, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, LA1/f;->h:F

    cmpl-float v4, v1, p1

    if-eqz v4, :cond_10

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float p1, p1, v4

    if-lez p1, :cond_5

    goto :goto_5

    :cond_5
    iget p1, v0, LA1/c;->b:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_10

    :goto_5
    iget-object p1, p0, LA1/f;->g:LO/f;

    if-nez p1, :cond_6

    iget p1, p0, LA1/f;->h:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_6

    iget-boolean p1, p0, LA1/f;->e:Z

    if-nez p1, :cond_6

    move p1, v2

    goto :goto_6

    :cond_6
    move p1, v3

    :goto_6
    iput v1, p0, LA1/f;->h:F

    if-nez p1, :cond_10

    iget-boolean p1, p0, LA1/f;->k:Z

    if-nez p1, :cond_7

    const-string p0, "startAngleAnimation: not running"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_7
    iget-object p1, p0, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "startAngleAnimation: skip angle when showing"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_8
    iget-object p1, p0, LA1/f;->g:LO/f;

    if-nez p1, :cond_f

    new-instance p1, LO/f;

    new-instance v0, LO/e;

    invoke-direct {v0}, LO/e;-><init>()V

    invoke-direct {p1, v0}, LO/f;-><init>(LO/e;)V

    new-instance v0, LO/g;

    invoke-direct {v0}, LO/g;-><init>()V

    const v1, 0x3f4ccccd    # 0.8f

    float-to-double v6, v1

    iput-wide v6, v0, LO/g;->b:D

    iput-boolean v3, v0, LO/g;->c:Z

    const/high16 v1, 0x41200000    # 10.0f

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, v0, LO/g;->a:D

    iput-boolean v3, v0, LO/g;->c:Z

    iget v1, p0, LA1/f;->h:F

    float-to-double v3, v1

    iput-wide v3, v0, LO/g;->i:D

    iput-object v0, p1, LO/f;->j:LO/g;

    const/4 v0, 0x0

    iget v1, p0, LA1/f;->a:I

    if-nez v1, :cond_9

    move v3, v0

    goto :goto_7

    :cond_9
    sget v3, LA1/e;->f:F

    sget v4, LA1/e;->e:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    :goto_7
    cmpl-float v1, v3, v0

    if-lez v1, :cond_b

    cmpg-float v0, v3, v0

    if-lez v0, :cond_a

    iput v3, p1, LO/f;->g:F

    goto :goto_8

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_8
    sget v0, LA1/e;->f:F

    iput v0, p1, LO/f;->b:F

    iput-boolean v2, p1, LO/f;->c:Z

    new-instance v0, LA1/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LA1/d;-><init>(ILjava/lang/Object;)V

    iget-boolean v1, p1, LO/f;->e:Z

    if-nez v1, :cond_e

    iget-object v1, p1, LO/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v0, LA1/b;

    invoke-direct {v0, p0}, LA1/b;-><init>(LA1/f;)V

    iget-object v1, p1, LO/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, LA1/f;->h:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "initSpringAnimation: mCurrentAngle[%f], angleSpan[%f]"

    invoke-static {v5, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, LA1/f;->g:LO/f;

    goto :goto_9

    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_9
    iget p1, p0, LA1/f;->h:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "startAngleAnimation to[%f]"

    invoke-static {v5, v0, p1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LA1/f;->g:LO/f;

    iget p0, p0, LA1/f;->h:F

    invoke-virtual {p1, p0}, LO/f;->a(F)V

    :cond_10
    :goto_a
    return-void
.end method
