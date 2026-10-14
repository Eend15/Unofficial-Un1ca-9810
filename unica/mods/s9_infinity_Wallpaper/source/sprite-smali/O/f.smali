.class public final LO/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:LA1/e;

.field public e:Z

.field public f:J

.field public g:F

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:LO/g;

.field public k:F


# direct methods
.method public constructor <init>(LO/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LO/f;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, LO/f;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, LO/f;->c:Z

    iput-boolean v1, p0, LO/f;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LO/f;->f:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LO/f;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LO/f;->i:Ljava/util/ArrayList;

    new-instance v1, LA1/e;

    invoke-direct {v1, p1}, LA1/e;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LO/f;->d:LA1/e;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LO/f;->g:F

    const/4 p1, 0x0

    iput-object p1, p0, LO/f;->j:LO/g;

    iput v0, p0, LO/f;->k:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    iget-boolean v0, p0, LO/f;->e:Z

    if-eqz v0, :cond_0

    iput p1, p0, LO/f;->k:F

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, LO/f;->j:LO/g;

    if-nez v0, :cond_1

    new-instance v0, LO/g;

    invoke-direct {v0, p1}, LO/g;-><init>(F)V

    iput-object v0, p0, LO/f;->j:LO/g;

    :cond_1
    iget-object v0, p0, LO/f;->j:LO/g;

    float-to-double v1, p1

    iput-wide v1, v0, LO/g;->i:D

    double-to-float p1, v1

    float-to-double v1, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v3, p1

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_a

    const v3, -0x800001

    float-to-double v4, v3

    cmpg-double v1, v1, v4

    if-ltz v1, :cond_9

    iget v1, p0, LO/f;->g:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, LO/g;->d:D

    const-wide v4, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v4

    iput-wide v1, v0, LO/g;->e:D

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, LO/f;->e:Z

    if-nez v0, :cond_7

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, LO/f;->e:Z

    iget-boolean v0, p0, LO/f;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LO/f;->d:LA1/e;

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LO/e;

    iget v0, v0, LO/e;->a:F

    iput v0, p0, LO/f;->b:F

    :cond_2
    iget v0, p0, LO/f;->b:F

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_6

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_6

    sget-object p1, LO/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, LO/b;

    invoke-direct {v0}, LO/b;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LO/b;

    iget-object v0, p1, LO/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, LO/b;->d:Ln1/a;

    if-nez v1, :cond_4

    new-instance v1, Ln1/a;

    iget-object v2, p1, LO/b;->c:LA1/e;

    invoke-direct {v1, v2}, Ln1/a;-><init>(LA1/e;)V

    iput-object v1, p1, LO/b;->d:Ln1/a;

    :cond_4
    iget-object p1, p1, LO/b;->d:Ln1/a;

    iget-object v1, p1, Ln1/a;->c:Ljava/lang/Object;

    check-cast v1, LO/a;

    iget-object p1, p1, Ln1/a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer;

    invoke-virtual {p1, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Starting value need to be in between min value and max value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    return-void

    :cond_8
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animations may only be started on the main thread"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, LO/f;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LO/f;->c(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, LO/f;->e:Z

    sget-object v1, LO/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, LO/b;

    invoke-direct {v2}, LO/b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO/b;

    iget-object v2, v1, LO/b;->a:Ln/j;

    invoke-virtual {v2, p0}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, LO/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v1, LO/b;->e:Z

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, LO/f;->f:J

    iput-boolean v0, p0, LO/f;->c:Z

    :goto_0
    iget-object v1, p0, LO/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO/d;

    iget v2, p0, LO/f;->b:F

    iget v3, p0, LO/f;->a:F

    invoke-interface {v1, v2, v3, p1}, LO/d;->a(FFZ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v4

    :goto_1
    if-ltz p0, :cond_5

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final d(F)V
    .locals 8

    iget-object v0, p0, LO/f;->d:LA1/e;

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LO/e;

    iput p1, v0, LO/e;->a:F

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LO/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA1/d;

    iget v1, p0, LO/f;->b:F

    iget v2, p0, LO/f;->a:F

    iget v3, v0, LA1/d;->a:I

    packed-switch v3, :pswitch_data_0

    iget-object v0, v0, LA1/d;->b:Ljava/lang/Object;

    check-cast v0, Ld2/c;

    iget-object v2, v0, Ld2/c;->d:LO/f;

    if-ne v2, p0, :cond_0

    iput v1, v0, Ld2/c;->m:F

    goto :goto_1

    :cond_0
    iget-object v2, v0, Ld2/c;->e:LO/f;

    if-ne v2, p0, :cond_1

    iput v1, v0, Ld2/c;->n:F

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ld2/c;->c()V

    goto/16 :goto_4

    :pswitch_0
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, v0, LA1/d;->b:Ljava/lang/Object;

    check-cast v0, LA1/f;

    iget-object v3, v0, LA1/f;->g:LO/f;

    if-eqz v3, :cond_3

    iget-object v3, v3, LO/f;->j:LO/g;

    iget v4, v0, LA1/f;->h:F

    float-to-double v4, v4

    iput-wide v4, v3, LO/g;->i:D

    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "fold_Choreographer"

    const-string v4, "onAnimationUpdate: value[%f], velocity[%f]"

    invoke-static {v3, v4, v2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, LA1/e;->e:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v0, LA1/f;->l:LA1/e;

    iget-object v4, v4, LA1/e;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget v5, LA1/e;->e:F

    sget v6, LA1/e;->f:F

    invoke-static {v1, v5, v6}, Lw0/f;->i(FFF)F

    move-result v1

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_4

    sub-float/2addr v1, v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v2

    div-float/2addr v1, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2

    :cond_5
    sget v1, LA1/e;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_3
    iget v1, v0, LA1/f;->a:I

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, LA1/f;->j:I

    iget-object v0, v0, LA1/f;->i:LA1/h;

    if-eqz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LA1/h;->accept(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_5
    if-ltz p0, :cond_9

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 p0, p0, -0x1

    goto :goto_5

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
