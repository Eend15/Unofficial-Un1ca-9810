.class public final synthetic LR1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/view/MotionEvent;

.field public final synthetic f:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;I)V
    .locals 0

    iput p3, p0, LR1/a;->d:I

    iput-object p1, p0, LR1/a;->f:Landroid/widget/FrameLayout;

    iput-object p2, p0, LR1/a;->e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lq3/m;->a:Lq3/m;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "swipeUp"

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x34000000

    iget-object v6, p0, LR1/a;->e:Landroid/view/MotionEvent;

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    iget-object v9, p0, LR1/a;->f:Landroid/widget/FrameLayout;

    iget p0, p0, LR1/a;->d:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    check-cast v9, LU1/a;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ll5/a;

    if-eqz p1, :cond_0

    move-object v8, p0

    check-cast v8, Ll5/a;

    :cond_0
    if-eqz v8, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    add-float/2addr p1, p0

    invoke-static {v6}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v7

    add-float/2addr p2, p0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sub-float/2addr p2, p0

    mul-float p0, p1, p1

    mul-float v6, p2, p2

    add-float/2addr v6, p0

    sget-object p0, Lk5/c;->d:[F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v6

    double-to-float p0, v6

    cmpg-float v5, p0, v5

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    div-float/2addr v4, p0

    mul-float/2addr p1, v4

    mul-float/2addr p2, v4

    :goto_0
    invoke-virtual {v9}, LU1/a;->b()La2/f;

    move-result-object p0

    iget-object p0, p0, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/a;

    iget-object v5, v4, La2/a;->a:Ljava/lang/String;

    invoke-static {v5, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, La2/a;->c:F

    mul-float v6, p1, v5

    mul-float/2addr v5, p2

    iget v7, v8, Ll5/a;->x:I

    if-eq v7, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ll5/a;->d()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v8, v1}, Ll5/a;->f(Z)V

    :cond_4
    iget-object v7, v8, Ll5/a;->g:Lk5/i;

    iget v9, v7, Lk5/i;->d:F

    add-float/2addr v9, v6

    iput v9, v7, Lk5/i;->d:F

    iget v6, v7, Lk5/i;->e:F

    add-float/2addr v6, v5

    iput v6, v7, Lk5/i;->e:F

    :goto_2
    iget v4, v4, La2/a;->d:F

    invoke-virtual {v8, v4}, Ll5/a;->b(F)V

    goto :goto_1

    :cond_5
    return-object v0

    :pswitch_0
    check-cast v9, LR1/b;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ll5/a;

    if-eqz p1, :cond_6

    move-object v8, p0

    check-cast v8, Ll5/a;

    :cond_6
    if-eqz v8, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    add-float/2addr p1, p0

    invoke-static {v6}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v7

    add-float/2addr p2, p0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sub-float/2addr p2, p0

    mul-float p0, p1, p1

    mul-float v6, p2, p2

    add-float/2addr v6, p0

    sget-object p0, Lk5/c;->d:[F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v6

    double-to-float p0, v6

    cmpg-float v5, p0, v5

    if-gez v5, :cond_7

    goto :goto_3

    :cond_7
    div-float/2addr v4, p0

    mul-float/2addr p1, v4

    mul-float/2addr p2, v4

    :goto_3
    iget-object p0, v9, LR1/b;->d:La2/f;

    iget-object p0, p0, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/a;

    iget-object v5, v4, La2/a;->a:Ljava/lang/String;

    invoke-static {v5, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v4, La2/a;->c:F

    mul-float v6, p1, v5

    mul-float/2addr v5, p2

    iget v7, v8, Ll5/a;->x:I

    if-eq v7, v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v8}, Ll5/a;->d()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v8, v1}, Ll5/a;->f(Z)V

    :cond_a
    iget-object v7, v8, Ll5/a;->g:Lk5/i;

    iget v9, v7, Lk5/i;->d:F

    add-float/2addr v9, v6

    iput v9, v7, Lk5/i;->d:F

    iget v6, v7, Lk5/i;->e:F

    add-float/2addr v6, v5

    iput v6, v7, Lk5/i;->e:F

    :goto_5
    iget v4, v4, La2/a;->d:F

    invoke-virtual {v8, v4}, Ll5/a;->b(F)V

    goto :goto_4

    :cond_b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
