.class public final LV1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:La2/q;

.field public b:Ll5/h;

.field public c:F

.field public d:Landroid/graphics/PointF;

.field public e:Lk5/i;

.field public f:F

.field public g:Landroid/graphics/PointF;


# direct methods
.method public static a(Lk5/i;F)Lk5/i;
    .locals 4

    new-instance v0, Lk5/i;

    iget v1, p0, Lk5/i;->d:F

    invoke-static {p1}, Lk5/c;->O(F)F

    move-result v2

    mul-float/2addr v2, v1

    iget v1, p0, Lk5/i;->e:F

    sget v3, Lk5/e;->a:I

    invoke-static {p1}, Lk5/c;->R(F)F

    move-result v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v1, p0, Lk5/i;->d:F

    invoke-static {p1}, Lk5/c;->R(F)F

    move-result v3

    mul-float/2addr v3, v1

    iget p0, p0, Lk5/i;->e:F

    invoke-static {p1}, Lk5/c;->O(F)F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v3

    invoke-direct {v0, v2, p1}, Lk5/i;-><init>(FF)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {v0}, LR3/f;->i(I)V

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final b(La2/f;II)V
    .locals 5

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, La2/f;->B:Ll5/a;

    if-eqz v0, :cond_3

    new-instance v1, Lk5/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lk5/i;-><init>(FF)V

    invoke-virtual {v0, v1}, Ll5/a;->g(Lk5/i;)V

    iget v1, v0, Ll5/a;->x:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v2, v0, Ll5/a;->f:F

    :goto_0
    int-to-float p2, p2

    iget-object v1, p0, LV1/a;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, v2

    iget v4, p1, La2/f;->e:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    add-float/2addr v4, p2

    iget p0, p0, LV1/a;->c:F

    div-float/2addr v4, p0

    int-to-float p2, p3

    iget p3, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p3

    iget v1, p1, La2/f;->f:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    add-float/2addr v1, p2

    div-float/2addr v1, p0

    iget p0, p1, La2/f;->u:F

    const/high16 p1, 0x43340000    # 180.0f

    div-float/2addr p0, p1

    const p1, 0x4048f5c3    # 3.14f

    mul-float/2addr p0, p1

    iget-object p1, v0, Ll5/a;->i:Ll5/h;

    invoke-virtual {p1}, Ll5/h;->f()Z

    move-result p2

    if-ne p2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, v0, Ll5/a;->c:Lk5/h;

    iget-object p3, p2, Lk5/h;->e:Lk5/d;

    invoke-virtual {p3, p0}, Lk5/d;->c(F)V

    iget-object p3, p2, Lk5/h;->d:Lk5/i;

    iput v4, p3, Lk5/i;->d:F

    iput v1, p3, Lk5/i;->e:F

    iget-object p3, v0, Ll5/a;->d:Lk5/f;

    iget-object v1, p3, Lk5/f;->d:Lk5/i;

    iget-object v2, p3, Lk5/f;->f:Lk5/i;

    invoke-static {p2, v1, v2}, Lk5/h;->b(Lk5/h;Lk5/i;Lk5/i;)V

    iput p0, p3, Lk5/f;->h:F

    iget-object v1, p3, Lk5/f;->e:Lk5/i;

    iget v3, v2, Lk5/i;->d:F

    iput v3, v1, Lk5/i;->d:F

    iget v2, v2, Lk5/i;->e:F

    iput v2, v1, Lk5/i;->e:F

    iput p0, p3, Lk5/f;->g:F

    iget-object p0, p1, Ll5/h;->b:Lg4/e;

    iget-object p0, p0, Lg4/e;->b:Ljava/lang/Object;

    check-cast p0, Li5/a;

    iget-object p3, v0, Ll5/a;->l:Ll5/c;

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, p0, p2, p2}, Ll5/c;->a(Li5/a;Lk5/h;Lk5/h;)V

    iget-object p3, p3, Ll5/c;->b:Ll5/c;

    goto :goto_1

    :cond_2
    iget-object p0, p1, Ll5/h;->b:Lg4/e;

    invoke-virtual {p0}, Lg4/e;->c()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final c(Z)V
    .locals 11

    iget-object v0, p0, LV1/a;->a:La2/q;

    iget-object v0, v0, La2/q;->q:La2/k;

    iget-object v0, v0, La2/k;->l:Ll5/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, LV1/a;->b:Ll5/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ll5/h;->d(Ll5/a;)V

    :cond_0
    iget-object v0, p0, LV1/a;->a:La2/q;

    iget-object v1, v0, La2/q;->q:La2/k;

    iget v2, v1, La2/k;->g:F

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v3, v1, La2/k;->a:I

    int-to-float v3, v3

    iget-object v4, p0, LV1/a;->g:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    iget v1, v1, La2/k;->b:I

    int-to-float v1, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v4

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float v7, v3, v6

    div-float v8, v1, v6

    mul-float/2addr v3, v2

    div-float/2addr v3, v6

    sub-float v9, v7, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float v6, v8, v1

    add-float/2addr v7, v3

    add-float/2addr v8, v1

    const/high16 v1, 0x43bb0000    # 374.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, v5

    const/high16 v3, 0x42840000    # 66.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    if-eqz p1, :cond_2

    sub-float v9, v7, v1

    sub-float v6, v8, v2

    :cond_2
    new-instance p1, Ll5/b;

    invoke-direct {p1}, Ll5/b;-><init>()V

    const/4 v3, 0x1

    iput v3, p1, Ll5/b;->a:I

    iget-object v3, p1, Ll5/b;->b:Lk5/i;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    add-float v7, v9, v5

    iget v8, p0, LV1/a;->c:F

    div-float/2addr v7, v8

    div-float v4, v2, v4

    add-float v10, v6, v4

    div-float/2addr v10, v8

    iput v7, v3, Lk5/i;->d:F

    iput v10, v3, Lk5/i;->e:F

    new-instance v3, Lj5/d;

    invoke-direct {v3}, Lj5/d;-><init>()V

    iget v7, p0, LV1/a;->c:F

    div-float/2addr v5, v7

    div-float/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Lj5/d;->d(FF)V

    new-instance v4, Ll5/d;

    invoke-direct {v4}, Ll5/d;-><init>()V

    iput-object v3, v4, Ll5/d;->a:Lj5/e;

    iget-object v0, v0, La2/q;->q:La2/k;

    iget-object p0, p0, LV1/a;->b:Ll5/h;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v4}, Ll5/a;->c(Ll5/d;)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    iput-object p0, v0, La2/k;->l:Ll5/a;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createNotchBox : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Physics"

    invoke-static {v0, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final d(FF)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    new-instance v0, Lk5/i;

    const v1, 0x411ccccd    # 9.8f

    mul-float/2addr p1, v1

    iget v2, p0, LV1/a;->f:F

    mul-float/2addr p1, v2

    mul-float/2addr p2, v1

    mul-float/2addr p2, v2

    invoke-direct {v0, p1, p2}, Lk5/i;-><init>(FF)V

    iput-object v0, p0, LV1/a;->e:Lk5/i;

    iget-object p0, p0, LV1/a;->b:Ll5/h;

    if-eqz p0, :cond_2

    iget-object p0, p0, Ll5/h;->g:Lk5/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, v0, Lk5/i;->d:F

    iput p1, p0, Lk5/i;->d:F

    iget p1, v0, Lk5/i;->e:F

    iput p1, p0, Lk5/i;->e:F

    :cond_2
    return-void
.end method

.method public final e(II)V
    .locals 13

    int-to-float p1, p1

    iget v0, p0, LV1/a;->c:F

    div-float v1, p1, v0

    iget-object v2, p0, LV1/a;->d:Landroid/graphics/PointF;

    iput v1, v2, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    div-float v0, p2, v0

    iput v0, v2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, LV1/a;->a:La2/q;

    iget-object v1, v0, La2/q;->q:La2/k;

    iget v3, v1, La2/k;->a:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    iget-object v3, p0, LV1/a;->g:Landroid/graphics/PointF;

    iput p1, v3, Landroid/graphics/PointF;->x:F

    iget p1, v1, La2/k;->b:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, v3, Landroid/graphics/PointF;->y:F

    iput-object v3, v0, La2/q;->t:Landroid/graphics/PointF;

    iget-object p1, v0, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll5/a;

    iget-object v1, p0, LV1/a;->b:Ll5/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ll5/h;->d(Ll5/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, v2, Landroid/graphics/PointF;->x:F

    iget p2, v2, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, La2/q;->q:La2/k;

    iget v1, v1, La2/k;->g:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gtz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "createGround : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Physics"

    invoke-static {v5, v1, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ll5/b;

    invoke-direct {v1}, Ll5/b;-><init>()V

    iput v2, v1, Ll5/b;->a:I

    new-instance v4, Lj5/b;

    invoke-direct {v4}, Lj5/b;-><init>()V

    new-instance v5, Ll5/d;

    invoke-direct {v5}, Ll5/d;-><init>()V

    iput-object v4, v5, Ll5/d;->a:Lj5/e;

    iget-object v6, v0, La2/q;->q:La2/k;

    iget v6, v6, La2/k;->g:F

    const/4 v7, 0x2

    int-to-float v8, v7

    div-float v9, p1, v8

    div-float v10, p2, v8

    mul-float/2addr p1, v6

    div-float/2addr p1, v8

    sub-float v11, v9, p1

    mul-float/2addr p2, v6

    div-float/2addr p2, v8

    sub-float v6, v10, p2

    add-float/2addr v9, p1

    add-float/2addr v10, p2

    iget-object p1, v4, Lj5/b;->c:Lk5/i;

    iput v11, p1, Lk5/i;->d:F

    iput v6, p1, Lk5/i;->e:F

    iget-object p2, v4, Lj5/b;->d:Lk5/i;

    iput v9, p2, Lk5/i;->d:F

    iput v6, p2, Lk5/i;->e:F

    iget-object v4, v0, La2/q;->q:La2/k;

    iget-object v4, v4, La2/k;->i:Ljava/util/ArrayList;

    iget-object v8, p0, LV1/a;->b:Ll5/h;

    const/4 v12, 0x0

    if-eqz v8, :cond_3

    invoke-virtual {v8, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v12

    :goto_1
    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, La2/q;->q:La2/k;

    iget-object v4, v4, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll5/a;

    invoke-virtual {v3, v5}, Ll5/a;->c(Ll5/d;)V

    iput v11, p1, Lk5/i;->d:F

    iput v6, p1, Lk5/i;->e:F

    iput v11, p2, Lk5/i;->d:F

    iput v10, p2, Lk5/i;->e:F

    iget-object v3, v0, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->i:Ljava/util/ArrayList;

    iget-object v4, p0, LV1/a;->b:Ll5/h;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v12

    :goto_2
    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll5/a;

    invoke-virtual {v3, v5}, Ll5/a;->c(Ll5/d;)V

    iput v9, p1, Lk5/i;->d:F

    iput v6, p1, Lk5/i;->e:F

    iput v9, p2, Lk5/i;->d:F

    iput v10, p2, Lk5/i;->e:F

    iget-object v3, v0, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->i:Ljava/util/ArrayList;

    iget-object v4, p0, LV1/a;->b:Ll5/h;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v12

    :goto_3
    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll5/a;

    invoke-virtual {v3, v5}, Ll5/a;->c(Ll5/d;)V

    iput v11, p1, Lk5/i;->d:F

    iput v10, p1, Lk5/i;->e:F

    iput v9, p2, Lk5/i;->d:F

    iput v10, p2, Lk5/i;->e:F

    iget-object p1, v0, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->i:Ljava/util/ArrayList;

    iget-object p2, p0, LV1/a;->b:Ll5/h;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v1}, Ll5/h;->b(Ll5/b;)Ll5/a;

    move-result-object v12

    :cond_6
    invoke-static {v12}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->i:Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll5/a;

    invoke-virtual {p1, v5}, Ll5/a;->c(Ll5/d;)V

    :goto_4
    invoke-static {}, Lf2/g;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v2}, LV1/a;->c(Z)V

    :cond_7
    return-void
.end method
