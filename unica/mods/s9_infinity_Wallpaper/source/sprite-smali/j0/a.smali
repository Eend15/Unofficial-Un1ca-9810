.class public final Lj0/a;
.super Lj0/l;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public D:I

.field public z:Ljava/util/ArrayList;


# virtual methods
.method public final A(LG4/d;)V
    .locals 2

    invoke-super {p0, p1}, Lj0/l;->A(LG4/d;)V

    iget v0, p0, Lj0/a;->D:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lj0/a;->D:I

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/l;

    invoke-virtual {v1, p1}, Lj0/l;->A(LG4/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 3

    iget v0, p0, Lj0/a;->D:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lj0/a;->D:I

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2}, Lj0/l;->B()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final C(J)V
    .locals 0

    iput-wide p1, p0, Lj0/l;->e:J

    return-void
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Lj0/l;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    invoke-static {v0, v2}, Lq/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj0/l;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final F(Lj0/l;)V
    .locals 4

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lj0/l;->l:Lj0/a;

    iget-wide v0, p0, Lj0/l;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Lj0/l;->x(J)V

    :cond_0
    iget v0, p0, Lj0/a;->D:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj0/l;->g:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v0}, Lj0/l;->z(Landroid/view/animation/LinearInterpolator;)V

    :cond_1
    iget v0, p0, Lj0/a;->D:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lj0/l;->B()V

    :cond_2
    iget v0, p0, Lj0/a;->D:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj0/l;->v:LG4/d;

    invoke-virtual {p1, v0}, Lj0/l;->A(LG4/d;)V

    :cond_3
    iget p0, p0, Lj0/a;->D:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lj0/l;->y(Le0/a;)V

    :cond_4
    return-void
.end method

.method public final c(Lj0/q;)V
    .locals 2

    iget-object v0, p1, Lj0/q;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lj0/l;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/l;

    iget-object v1, p1, Lj0/q;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lj0/l;->r(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lj0/l;->c(Lj0/q;)V

    iget-object v1, p1, Lj0/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj0/a;->i()Lj0/l;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lj0/q;)V
    .locals 3

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2, p1}, Lj0/l;->e(Lj0/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lj0/q;)V
    .locals 2

    iget-object v0, p1, Lj0/q;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lj0/l;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/l;

    iget-object v1, p1, Lj0/q;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lj0/l;->r(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lj0/l;->f(Lj0/q;)V

    iget-object v1, p1, Lj0/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()Lj0/l;
    .locals 5

    invoke-super {p0}, Lj0/l;->i()Lj0/l;

    move-result-object v0

    check-cast v0, Lj0/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lj0/a;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/l;

    invoke-virtual {v3}, Lj0/l;->i()Lj0/l;

    move-result-object v3

    iget-object v4, v0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Lj0/l;->l:Lj0/a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final k(Landroid/widget/FrameLayout;Lw0/i;Lw0/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    move-object v0, p0

    iget-wide v1, v0, Lj0/l;->e:J

    iget-object v3, v0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lj0/l;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Lj0/a;->A:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    iget-wide v9, v6, Lj0/l;->e:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, Lj0/l;->C(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Lj0/l;->C(J)V

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lj0/l;->k(Landroid/widget/FrameLayout;Lw0/i;Lw0/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final t(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-super {p0, p1}, Lj0/l;->t(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2, p1}, Lj0/l;->t(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v(Landroid/widget/FrameLayout;)V
    .locals 3

    invoke-super {p0, p1}, Lj0/l;->v(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2, p1}, Lj0/l;->v(Landroid/widget/FrameLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 5

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj0/l;->D()V

    invoke-virtual {p0}, Lj0/l;->l()V

    return-void

    :cond_0
    new-instance v0, Lj0/g;

    invoke-direct {v0}, Lj0/g;-><init>()V

    iput-object p0, v0, Lj0/g;->b:Ljava/lang/Object;

    iget-object v1, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2, v0}, Lj0/l;->a(Lj0/k;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lj0/a;->B:I

    iget-boolean v0, p0, Lj0/a;->A:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lj0/a;->z:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/l;

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    new-instance v3, Lj0/g;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lj0/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Lj0/l;->a(Lj0/k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj0/l;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lj0/l;->w()V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/l;

    invoke-virtual {v0}, Lj0/l;->w()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final x(J)V
    .locals 3

    iput-wide p1, p0, Lj0/l;->f:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2, p1, p2}, Lj0/l;->x(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(Le0/a;)V
    .locals 3

    iget v0, p0, Lj0/a;->D:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lj0/a;->D:I

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2, p1}, Lj0/l;->y(Le0/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Landroid/view/animation/LinearInterpolator;)V
    .locals 3

    iget v0, p0, Lj0/a;->D:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj0/a;->D:I

    iget-object v0, p0, Lj0/a;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lj0/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/l;

    invoke-virtual {v2, p1}, Lj0/l;->z(Landroid/view/animation/LinearInterpolator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lj0/l;->g:Landroid/view/animation/LinearInterpolator;

    return-void
.end method
