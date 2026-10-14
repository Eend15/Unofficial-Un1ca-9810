.class public final Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF4/b;
.implements Lj/a;
.implements LF4/e;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lw0/c;->d:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "HH:mm"

    iput-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 21
    const-string v0, ":"

    iput-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LU3/x;Lw0/i;LG4/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw0/c;->d:I

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p3, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 15
    new-instance p3, Lw0/e;

    invoke-direct {p3, p1, p2}, Lw0/e;-><init>(LU3/x;Lw0/i;)V

    iput-object p3, p0, Lw0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ3/b;Ll4/c;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lw0/c;->d:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lw0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/F;Lj/a;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lw0/c;->d:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/c;->f:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lw0/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/L;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lw0/c;->d:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lw0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lw0/c;->d:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 10
    new-instance v0, Lw0/b;

    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, Lw0/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 12
    iput-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf2/c;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lw0/c;->d:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lw0/c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->A(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public B(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->B(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public C(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->C(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public D(Ljava/lang/String;La2/f;)V
    .locals 7

    iget-object p2, p2, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "next(...)"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, La2/h;

    iget-object p2, p2, La2/h;->b:Ljava/lang/String;

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    iget-object v0, v0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-object v0, v0, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, La2/d;->a:La2/c;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v2, Lw0/m;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lw0/m;->c:Ljava/lang/Object;

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LP1/a;

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    sget-object v2, LP1/d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_3
    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    iget-object v0, p2, LP1/a;->g:Lw0/m;

    iget-object v2, v0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v2, La2/q;

    iget-boolean v2, v2, La2/q;->h:Z

    iget-object v3, p2, LP1/a;->a:La2/f;

    if-eqz v2, :cond_5

    iget-boolean v2, v3, La2/f;->E:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v2, LP1/c;

    iget-object v4, p2, LP1/a;->c:La2/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v5, "container"

    invoke-static {v3, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v3, La2/f;->c:I

    int-to-float v5, v5

    iget-object v0, v0, Lw0/m;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    iget-object v0, v0, La2/q;->t:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iput v5, v2, LP1/c;->a:F

    iget v5, v3, La2/f;->d:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v0

    iput v5, v2, LP1/c;->b:F

    iget v0, v3, La2/f;->u:F

    iput v0, v2, LP1/c;->c:F

    iget v0, v4, La2/d;->c:I

    int-to-long v3, v0

    iput-wide v3, v2, LP1/c;->d:J

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v2, LP1/c;->e:Landroid/view/animation/DecelerateInterpolator;

    iput-object v2, p2, LP1/a;->f:LP1/c;

    iget-object v0, p2, LP1/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LP1/a;->f:LP1/c;

    const-string v3, "valueAnimatorData"

    if-eqz v2, :cond_a

    iget v2, v2, LP1/c;->a:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LP1/a;->f:LP1/c;

    if-eqz v2, :cond_9

    iget v2, v2, LP1/c;->b:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LP1/a;->f:LP1/c;

    if-eqz v2, :cond_8

    iget v2, v2, LP1/c;->c:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p2, LP1/a;->f:LP1/c;

    if-eqz v2, :cond_7

    iget-object v2, v2, LP1/c;->e:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p2, p2, LP1/a;->f:LP1/c;

    if-eqz p2, :cond_6

    iget-wide v1, p2, LP1/c;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-string p2, "<set-?>"

    invoke-static {v1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-eqz p2, :cond_0

    invoke-virtual {p2}, LP1/a;->a()LP1/b;

    move-result-object v0

    iget-boolean v0, v0, LP1/b;->g:Z

    if-eqz v0, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, LP1/a;->a()LP1/b;

    move-result-object v0

    iput-boolean v2, v0, LP1/b;->g:Z

    iget-object v0, p2, LP1/a;->d:La2/d;

    const/4 v1, 0x0

    iput v1, v0, La2/d;->f:I

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Lw0/m;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, LP1/a;->a()LP1/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Lw0/m;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, LP1/a;->a()LP1/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Lw0/m;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_e

    invoke-virtual {p2}, LP1/a;->a()LP1/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    invoke-virtual {p2}, LP1/a;->a()LP1/b;

    move-result-object p2

    iget-object p2, p2, LP1/b;->f:La2/d;

    iget-object p2, p2, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/b;

    iget-object p2, p2, La2/b;->a:Ljava/lang/String;

    const-string v0, "startAnimation : "

    invoke-static {v0, p2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AnimationController"

    invoke-static {v1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public E(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return-object v1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

.method public F(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 11

    new-instance v0, Lv/l;

    invoke-direct {v0}, Lv/l;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_11

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_10

    if-nez v5, :cond_0

    goto/16 :goto_c

    :cond_0
    const-string v6, "id"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-ne v1, v4, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_2
    const-string v5, "ConstraintLayoutStates"

    const-string v6, "error in parsing id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, v6

    :goto_3
    if-eq v5, v3, :cond_f

    if-eqz v5, :cond_e

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_7

    if-eq v5, v8, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v10, "constraintset"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    goto/16 :goto_a

    :sswitch_1
    const-string v10, "constraintoverride"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v9

    goto :goto_5

    :sswitch_2
    const-string v10, "constraint"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_5

    :sswitch_3
    const-string v10, "guideline"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v8

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v4

    :goto_5
    if-eqz v5, :cond_f

    if-eq v5, v3, :cond_6

    if-eq v5, v9, :cond_6

    if-eq v5, v8, :cond_6

    goto/16 :goto_8

    :cond_6
    iget-object v5, v0, Lv/l;->c:Ljava/util/HashMap;

    iget v8, v7, Lv/g;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    goto/16 :goto_8

    :cond_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto/16 :goto_6

    :sswitch_4
    const-string v8, "Constraint"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v8, v2

    goto/16 :goto_7

    :sswitch_5
    const-string v8, "CustomAttribute"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v8, 0x8

    goto :goto_7

    :sswitch_6
    const-string v9, "Barrier"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_7

    :sswitch_7
    const-string v8, "CustomMethod"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v8, 0x9

    goto :goto_7

    :sswitch_8
    const-string v8, "Guideline"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v8, v9

    goto :goto_7

    :sswitch_9
    const-string v8, "Transform"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v8, 0x5

    goto :goto_7

    :sswitch_a
    const-string v8, "PropertySet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v8, 0x4

    goto :goto_7

    :sswitch_b
    const-string v8, "ConstraintOverride"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v8, v3

    goto :goto_7

    :sswitch_c
    const-string v8, "Motion"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v8, 0x7

    goto :goto_7

    :sswitch_d
    const-string v8, "Layout"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_8

    const/4 v8, 0x6

    goto :goto_7

    :cond_8
    :goto_6
    move v8, v4

    :goto_7
    const-string v5, "XML parser error must be within a Constraint "

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    if-eqz v7, :cond_9

    :try_start_1
    iget-object v5, v7, Lv/g;->f:Ljava/util/HashMap;

    invoke-static {p1, p2, v5}, Lv/a;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    goto/16 :goto_8

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-eqz v7, :cond_a

    iget-object v5, v7, Lv/g;->c:Lv/i;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    invoke-virtual {v5, p1, v8}, Lv/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_8

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-eqz v7, :cond_b

    iget-object v5, v7, Lv/g;->d:Lv/h;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    invoke-virtual {v5, p1, v8}, Lv/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_8

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-eqz v7, :cond_c

    iget-object v5, v7, Lv/g;->e:Lv/k;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    invoke-virtual {v5, p1, v8}, Lv/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_8

    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-eqz v7, :cond_d

    iget-object v5, v7, Lv/g;->b:Lv/j;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    invoke-virtual {v5, p1, v8}, Lv/j;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_8

    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-static {p1, v5, v2}, Lv/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lv/g;

    move-result-object v7

    iget-object v5, v7, Lv/g;->d:Lv/h;

    iput v3, v5, Lv/h;->h0:I

    goto :goto_8

    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-static {p1, v5, v2}, Lv/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lv/g;

    move-result-object v7

    iget-object v5, v7, Lv/g;->d:Lv/h;

    iput-boolean v3, v5, Lv/h;->a:Z

    goto :goto_8

    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-static {p1, v5, v3}, Lv/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lv/g;

    move-result-object v7

    goto :goto_8

    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-static {p1, v5, v2}, Lv/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lv/g;

    move-result-object v7

    goto :goto_8

    :cond_e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :goto_a
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_f
    :goto_b
    iget-object p0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_10
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public G(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p0, Lf2/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/String;

    iget-object p0, p0, Lf2/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, ""

    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_2
    :goto_0
    move-object v0, p1

    :cond_3
    return-object v0
.end method

.method public H(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lw0/c;->G(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p0, Lf2/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lf2/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p1
.end method

.method public M(Ls4/b;)LF4/d;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, LZ3/b;

    invoke-static {v0, p1}, Lj0/s;->v(LZ3/b;Ls4/b;)LZ3/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, LZ3/c;->a:Ljava/lang/Class;

    invoke-static {v1}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Ls4/b;->equals(Ljava/lang/Object;)Z

    iget-object p0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p0, Ll4/c;

    invoke-virtual {p0, v0}, Ll4/c;->f(LZ3/c;)LF4/d;

    move-result-object p0

    return-object p0
.end method

.method public a(Ln4/Q;Lp4/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, LG4/a;

    iget-object v0, v0, LE4/a;->k:Lt4/o;

    invoke-virtual {p1, v0}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lr3/r;->d:Lr3/r;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/g;

    iget-object v2, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v2, Lw0/e;

    invoke-virtual {v2, v1, p2}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public b(Lj/b;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Lj/a;

    invoke-interface {p0, p1, p2}, Lj/a;->b(Lj/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public c(LF4/x;Lt4/m;I)Ljava/util/List;
    .locals 0

    const-string p0, "proto"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "kind"

    invoke-static {p3, p0}, LB/a;->t(ILjava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public d(Lj/b;Lk/j;)Z
    .locals 0

    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Lj/a;

    invoke-interface {p0, p1, p2}, Lj/a;->d(Lj/b;Lk/j;)Z

    move-result p0

    return p0
.end method

.method public e(LF4/x;Ln4/G;)Ljava/util/List;
    .locals 0

    const-string p0, "proto"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public f(Lj/b;)V
    .locals 3

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, Lj/a;

    invoke-interface {v0, p1}, Lj/a;->f(Lj/b;)V

    iget-object p1, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/F;

    iget-object v0, p1, Landroidx/appcompat/app/F;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/app/F;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/F;->y:Landroidx/appcompat/app/r;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/appcompat/app/F;->z:LK/G;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LK/G;->b()V

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/F;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, LK/D;->a(Landroid/view/View;)LK/G;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK/G;->a(F)V

    iput-object v0, p1, Landroidx/appcompat/app/F;->z:LK/G;

    new-instance v1, Landroidx/appcompat/app/t;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LK/G;->d(LK/H;)V

    :cond_2
    iget-object p0, p1, Landroidx/appcompat/app/F;->o:Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/app/F;->v:Lj/b;

    invoke-interface {p0, v0}, Landroidx/appcompat/app/l;->onSupportActionModeFinished(Lj/b;)V

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/appcompat/app/F;->v:Lj/b;

    iget-object p0, p1, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LK/v;->c(Landroid/view/View;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/F;->I()V

    return-void
.end method

.method public g(LF4/x;Lt4/m;I)Ljava/util/List;
    .locals 3

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/a;->t(ILjava/lang/String;)V

    instance-of v0, p2, Ln4/l;

    iget-object v1, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v1, LG4/a;

    if-eqz v0, :cond_0

    check-cast p2, Ln4/l;

    iget-object p3, v1, LE4/a;->b:Lt4/o;

    invoke-virtual {p2, p3}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ln4/y;

    if-eqz v0, :cond_1

    check-cast p2, Ln4/y;

    iget-object p3, v1, LE4/a;->d:Lt4/o;

    invoke-virtual {p2, p3}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ln4/G;

    if-eqz v0, :cond_7

    invoke-static {p3}, Lq/e;->c(I)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    check-cast p2, Ln4/G;

    iget-object p3, v1, LE4/a;->g:Lt4/o;

    invoke-virtual {p2, p3}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported callable kind with property proto"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast p2, Ln4/G;

    iget-object p3, v1, LE4/a;->f:Lt4/o;

    invoke-virtual {p2, p3}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_4
    check-cast p2, Ln4/G;

    iget-object p3, v1, LE4/a;->e:Lt4/o;

    invoke-virtual {p2, p3}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    sget-object p2, Lr3/r;->d:Lr3/r;

    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/g;

    iget-object v1, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v1, Lw0/e;

    iget-object v2, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v2, Lp4/f;

    invoke-virtual {v1, v0, v2}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p3

    :cond_7
    const-string p0, "Unknown message: "

    invoke-static {p2, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p0, Lf2/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ljava/lang/String;

    iget-object p0, p0, Lf2/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->i(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public j(LF4/v;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, LG4/a;

    iget-object v0, v0, LE4/a;->c:Lt4/o;

    iget-object v1, p1, LF4/v;->e:Ln4/j;

    invoke-virtual {v1, v0}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lr3/r;->d:Lr3/r;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln4/g;

    iget-object v3, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v3, Lw0/e;

    iget-object v4, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v4, Lp4/f;

    invoke-virtual {v3, v2, v4}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public k(LF4/x;Ln4/G;LJ4/C;)Ljava/lang/Object;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, LG4/a;

    iget-object v0, v0, LE4/a;->i:Lt4/o;

    invoke-static {p2, v0}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln4/d;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p0, Lw0/e;

    iget-object p1, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast p1, Lp4/f;

    invoke-virtual {p0, p3, p2, p1}, Lw0/e;->w0(LJ4/C;Ln4/d;Lp4/f;)Lx4/g;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public l(LF4/x;Lt4/m;IILn4/Z;)Ljava/util/List;
    .locals 1

    const-string p4, "callableProto"

    invoke-static {p2, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, LB/a;->t(ILjava/lang/String;)V

    iget-object p2, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p2, LG4/a;

    iget-object p2, p2, LE4/a;->j:Lt4/o;

    invoke-virtual {p5, p2}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lr3/r;->d:Lr3/r;

    :goto_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ln4/g;

    iget-object p5, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p5, Lw0/e;

    iget-object v0, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v0, Lp4/f;

    invoke-virtual {p5, p4, v0}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method public m(Ln4/W;Lp4/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, LG4/a;

    iget-object v0, v0, LE4/a;->l:Lt4/o;

    invoke-virtual {p1, v0}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lr3/r;->d:Lr3/r;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/g;

    iget-object v2, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v2, Lw0/e;

    invoke-virtual {v2, v1, p2}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public n(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v1, v0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->n(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public o(LF4/x;Ln4/t;)Ljava/util/List;
    .locals 4

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, LG4/a;

    iget-object v0, v0, LE4/a;->h:Lt4/o;

    invoke-virtual {p2, v0}, Lt4/m;->k(Lt4/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lr3/r;->d:Lr3/r;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/g;

    iget-object v2, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v2, Lw0/e;

    iget-object v3, p1, LF4/x;->b:Ljava/lang/Object;

    check-cast v3, Lp4/f;

    invoke-virtual {v2, v1, v3}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public p(LF4/x;Ln4/G;)Ljava/util/List;
    .locals 0

    const-string p0, "proto"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public q(Lj/b;Lk/j;)Z
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/F;

    iget-object v0, v0, Landroidx/appcompat/app/F;->B:Landroid/view/ViewGroup;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LK/v;->c(Landroid/view/View;)V

    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Lj/a;

    invoke-interface {p0, p1, p2}, Lj/a;->q(Lj/b;Lk/j;)Z

    move-result p0

    return p0
.end method

.method public r(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->r(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public s(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->s(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public t(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->t(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lw0/c;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[mTimeFormat = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mColon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v1, ", m2DigitHour = true]"

    invoke-static {v0, p0, v1}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public u(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->u(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public v(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v1, v0, Landroidx/fragment/app/L;->t:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/v;->e:Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->v(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public w(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->w(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public x(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->x(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public y(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->y(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public z(Z)V
    .locals 2

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/L;

    iget-object v0, v0, Landroidx/fragment/app/L;->v:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Landroidx/fragment/app/L;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/L;->l:Lw0/c;

    invoke-virtual {v0, v1}, Lw0/c;->z(Z)V

    :cond_0
    iget-object p0, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method
