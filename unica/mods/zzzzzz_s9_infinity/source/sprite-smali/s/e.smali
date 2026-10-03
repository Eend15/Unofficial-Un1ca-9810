.class public final Ls/e;
.super Ls/d;
.source "SourceFile"


# instance fields
.field public A0:[Ls/b;

.field public B0:I

.field public C0:Z

.field public D0:Z

.field public E0:Ljava/lang/ref/WeakReference;

.field public F0:Ljava/lang/ref/WeakReference;

.field public G0:Ljava/lang/ref/WeakReference;

.field public H0:Ljava/lang/ref/WeakReference;

.field public final I0:Ljava/util/HashSet;

.field public final J0:Lt/b;

.field public o0:Ljava/util/ArrayList;

.field public final p0:Lw0/m;

.field public final q0:Lt/e;

.field public r0:I

.field public s0:Lv/d;

.field public t0:Z

.field public final u0:Lq/c;

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:[Ls/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ls/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/e;->o0:Ljava/util/ArrayList;

    new-instance v0, Lw0/m;

    invoke-direct {v0, p0}, Lw0/m;-><init>(Ls/e;)V

    iput-object v0, p0, Ls/e;->p0:Lw0/m;

    new-instance v0, Lt/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lt/e;->b:Z

    iput-boolean v1, v0, Lt/e;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lt/e;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lt/e;->f:Lv/d;

    new-instance v2, Lt/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lt/e;->g:Lt/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lt/e;->h:Ljava/util/ArrayList;

    iput-object p0, v0, Lt/e;->a:Ls/e;

    iput-object p0, v0, Lt/e;->d:Ls/e;

    iput-object v0, p0, Ls/e;->q0:Lt/e;

    iput-object v1, p0, Ls/e;->s0:Lv/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/e;->t0:Z

    new-instance v2, Lq/c;

    invoke-direct {v2}, Lq/c;-><init>()V

    iput-object v2, p0, Ls/e;->u0:Lq/c;

    iput v0, p0, Ls/e;->x0:I

    iput v0, p0, Ls/e;->y0:I

    const/4 v2, 0x4

    new-array v3, v2, [Ls/b;

    iput-object v3, p0, Ls/e;->z0:[Ls/b;

    new-array v2, v2, [Ls/b;

    iput-object v2, p0, Ls/e;->A0:[Ls/b;

    const/16 v2, 0x101

    iput v2, p0, Ls/e;->B0:I

    iput-boolean v0, p0, Ls/e;->C0:Z

    iput-boolean v0, p0, Ls/e;->D0:Z

    iput-object v1, p0, Ls/e;->E0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ls/e;->F0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ls/e;->G0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Ls/e;->H0:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ls/e;->I0:Ljava/util/HashSet;

    new-instance v0, Lt/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls/e;->J0:Lt/b;

    return-void
.end method

.method public static M(Ls/d;Lv/d;Lt/b;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ls/d;->e0:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    instance-of v0, p0, Ls/f;

    if-nez v0, :cond_14

    instance-of v0, p0, Ls/a;

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p0, Ls/d;->n0:[I

    aget v1, v0, v2

    iput v1, p2, Lt/b;->a:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lt/b;->b:I

    invoke-virtual {p0}, Ls/d;->l()I

    move-result v0

    iput v0, p2, Lt/b;->c:I

    invoke-virtual {p0}, Ls/d;->i()I

    move-result v0

    iput v0, p2, Lt/b;->d:I

    iput-boolean v2, p2, Lt/b;->i:Z

    iput v2, p2, Lt/b;->j:I

    iget v0, p2, Lt/b;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget v4, p2, Lt/b;->b:I

    if-ne v4, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget v5, p0, Ls/d;->U:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    if-eqz v3, :cond_5

    iget v6, p0, Ls/d;->U:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    const/4 v6, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Ls/d;->o(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Ls/d;->q:I

    if-nez v7, :cond_7

    if-nez v5, :cond_7

    iput v6, p2, Lt/b;->a:I

    if-eqz v3, :cond_6

    iget v0, p0, Ls/d;->r:I

    if-nez v0, :cond_6

    iput v1, p2, Lt/b;->a:I

    :cond_6
    move v0, v2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Ls/d;->o(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Ls/d;->r:I

    if-nez v7, :cond_9

    if-nez v4, :cond_9

    iput v6, p2, Lt/b;->b:I

    if-eqz v0, :cond_8

    iget v3, p0, Ls/d;->q:I

    if-nez v3, :cond_8

    iput v1, p2, Lt/b;->b:I

    :cond_8
    move v3, v2

    :cond_9
    invoke-virtual {p0}, Ls/d;->v()Z

    move-result v7

    if-eqz v7, :cond_a

    iput v1, p2, Lt/b;->a:I

    move v0, v2

    :cond_a
    invoke-virtual {p0}, Ls/d;->w()Z

    move-result v7

    if-eqz v7, :cond_b

    iput v1, p2, Lt/b;->b:I

    move v3, v2

    :cond_b
    iget-object v7, p0, Ls/d;->s:[I

    const/4 v8, 0x4

    if-eqz v5, :cond_e

    aget v5, v7, v2

    if-ne v5, v8, :cond_c

    iput v1, p2, Lt/b;->a:I

    goto :goto_5

    :cond_c
    if-nez v3, :cond_e

    iget v3, p2, Lt/b;->b:I

    if-ne v3, v1, :cond_d

    iget v3, p2, Lt/b;->d:I

    goto :goto_4

    :cond_d
    iput v6, p2, Lt/b;->a:I

    invoke-virtual {p1, p0, p2}, Lv/d;->b(Ls/d;Lt/b;)V

    iget v3, p2, Lt/b;->f:I

    :goto_4
    iput v1, p2, Lt/b;->a:I

    iget v5, p0, Ls/d;->U:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, Lt/b;->c:I

    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    aget v3, v7, v1

    if-ne v3, v8, :cond_f

    iput v1, p2, Lt/b;->b:I

    goto :goto_7

    :cond_f
    if-nez v0, :cond_12

    iget v0, p2, Lt/b;->a:I

    if-ne v0, v1, :cond_10

    iget v0, p2, Lt/b;->c:I

    goto :goto_6

    :cond_10
    iput v6, p2, Lt/b;->b:I

    invoke-virtual {p1, p0, p2}, Lv/d;->b(Ls/d;Lt/b;)V

    iget v0, p2, Lt/b;->e:I

    :goto_6
    iput v1, p2, Lt/b;->b:I

    iget v3, p0, Ls/d;->V:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    int-to-float v0, v0

    iget v3, p0, Ls/d;->U:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p2, Lt/b;->d:I

    goto :goto_7

    :cond_11
    iget v3, p0, Ls/d;->U:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p2, Lt/b;->d:I

    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Lv/d;->b(Ls/d;Lt/b;)V

    iget p1, p2, Lt/b;->e:I

    invoke-virtual {p0, p1}, Ls/d;->F(I)V

    iget p1, p2, Lt/b;->f:I

    invoke-virtual {p0, p1}, Ls/d;->C(I)V

    iget-boolean p1, p2, Lt/b;->h:Z

    iput-boolean p1, p0, Ls/d;->D:Z

    iget p1, p2, Lt/b;->g:I

    iput p1, p0, Ls/d;->Y:I

    if-lez p1, :cond_13

    goto :goto_8

    :cond_13
    move v1, v2

    :goto_8
    iput-boolean v1, p0, Ls/d;->D:Z

    iput v2, p2, Lt/b;->j:I

    return-void

    :cond_14
    :goto_9
    iput v2, p2, Lt/b;->e:I

    iput v2, p2, Lt/b;->f:I

    return-void
.end method


# virtual methods
.method public final G(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Ls/d;->G(ZZ)V

    iget-object v0, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/d;

    invoke-virtual {v2, p1, p2}, Ls/d;->G(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(Ls/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Ls/e;->x0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ls/e;->A0:[Ls/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ls/b;

    iput-object p2, p0, Ls/e;->A0:[Ls/b;

    :cond_0
    iget-object p2, p0, Ls/e;->A0:[Ls/b;

    iget v1, p0, Ls/e;->x0:I

    new-instance v2, Ls/b;

    iget-boolean v3, p0, Ls/e;->t0:Z

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, Ls/b;-><init>(Ls/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Ls/e;->x0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Ls/e;->y0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ls/e;->z0:[Ls/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ls/b;

    iput-object p2, p0, Ls/e;->z0:[Ls/b;

    :cond_2
    iget-object p2, p0, Ls/e;->z0:[Ls/b;

    iget v1, p0, Ls/e;->y0:I

    new-instance v2, Ls/b;

    iget-boolean v3, p0, Ls/e;->t0:Z

    invoke-direct {v2, p1, v0, v3}, Ls/b;-><init>(Ls/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Ls/e;->y0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final J(Lq/c;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ls/e;->N(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Ls/d;->b(Lq/c;Z)V

    iget-object v1, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    iget-object v7, v6, Ls/d;->Q:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Ls/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eqz v4, :cond_8

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_8

    iget-object v6, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    instance-of v7, v6, Ls/a;

    if-eqz v7, :cond_7

    check-cast v6, Ls/a;

    move v7, v2

    :goto_2
    iget v8, v6, Ls/a;->p0:I

    if-ge v7, v8, :cond_7

    iget-object v8, v6, Ls/a;->o0:[Ls/d;

    aget-object v8, v8, v7

    iget-boolean v9, v6, Ls/a;->r0:Z

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ls/d;->c()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    iget v9, v6, Ls/a;->q0:I

    if-eqz v9, :cond_5

    if-ne v9, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eq v9, v3, :cond_4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    :cond_4
    iget-object v8, v8, Ls/d;->Q:[Z

    aput-boolean v5, v8, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v8, v8, Ls/d;->Q:[Z

    aput-boolean v5, v8, v2

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object v4, p0, Ls/e;->I0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v6, v2

    :goto_5
    if-ge v6, v1, :cond_a

    iget-object v7, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Ls/f;

    if-eqz v8, :cond_9

    invoke-virtual {v7, p1, v0}, Ls/d;->b(Lq/c;Z)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-ne v6, v7, :cond_a

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    invoke-virtual {v7, p1, v0}, Ls/d;->b(Lq/c;Z)V

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto :goto_6

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_d
    sget-boolean v4, Lq/c;->p:Z

    if-eqz v4, :cond_11

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v6, v2

    :goto_8
    if-ge v6, v1, :cond_f

    iget-object v7, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Ls/f;

    if-nez v8, :cond_e

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    iget-object v1, p0, Ls/d;->n0:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_10

    move v10, v2

    goto :goto_9

    :cond_10
    move v10, v5

    :goto_9
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Ls/d;->a(Ls/e;Lq/c;Ljava/util/HashSet;IZ)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/d;

    invoke-static {p0, p1, v3}, Ls/g;->b(Ls/e;Lq/c;Ls/d;)V

    invoke-virtual {v3, p1, v0}, Ls/d;->b(Lq/c;Z)V

    goto :goto_a

    :cond_11
    move v4, v2

    :goto_b
    if-ge v4, v1, :cond_17

    iget-object v6, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/d;

    instance-of v7, v6, Ls/e;

    if-eqz v7, :cond_15

    iget-object v7, v6, Ls/d;->n0:[I

    aget v8, v7, v2

    aget v7, v7, v5

    if-ne v8, v3, :cond_12

    invoke-virtual {v6, v5}, Ls/d;->D(I)V

    :cond_12
    if-ne v7, v3, :cond_13

    invoke-virtual {v6, v5}, Ls/d;->E(I)V

    :cond_13
    invoke-virtual {v6, p1, v0}, Ls/d;->b(Lq/c;Z)V

    if-ne v8, v3, :cond_14

    invoke-virtual {v6, v8}, Ls/d;->D(I)V

    :cond_14
    if-ne v7, v3, :cond_16

    invoke-virtual {v6, v7}, Ls/d;->E(I)V

    goto :goto_c

    :cond_15
    invoke-static {p0, p1, v6}, Ls/g;->b(Ls/e;Lq/c;Ls/d;)V

    instance-of v7, v6, Ls/f;

    if-nez v7, :cond_16

    invoke-virtual {v6, p1, v0}, Ls/d;->b(Lq/c;Z)V

    :cond_16
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_17
    iget v0, p0, Ls/e;->x0:I

    const/4 v1, 0x0

    if-lez v0, :cond_18

    invoke-static {p0, p1, v1, v2}, Ls/g;->a(Ls/e;Lq/c;Ljava/util/ArrayList;I)V

    :cond_18
    iget v0, p0, Ls/e;->y0:I

    if-lez v0, :cond_19

    invoke-static {p0, p1, v1, v5}, Ls/g;->a(Ls/e;Lq/c;Ljava/util/ArrayList;I)V

    :cond_19
    return-void
.end method

.method public final K(IZ)Z
    .locals 12

    iget-object p0, p0, Ls/e;->q0:Lt/e;

    iget-object v0, p0, Lt/e;->a:Ls/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls/d;->h(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ls/d;->h(I)I

    move-result v4

    invoke-virtual {v0}, Ls/d;->m()I

    move-result v5

    invoke-virtual {v0}, Ls/d;->n()I

    move-result v6

    iget-object v7, p0, Lt/e;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    const/4 v8, 0x2

    if-eq v2, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt/o;

    iget v11, v10, Lt/o;->f:I

    if-ne v11, p1, :cond_1

    invoke-virtual {v10}, Lt/o;->k()Z

    move-result v10

    if-nez v10, :cond_1

    move p2, v1

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    if-ne v2, v8, :cond_4

    invoke-virtual {v0, v3}, Ls/d;->D(I)V

    invoke-virtual {p0, v0, v1}, Lt/e;->d(Ls/e;I)I

    move-result p2

    invoke-virtual {v0, p2}, Ls/d;->F(I)V

    iget-object p2, v0, Ls/d;->d:Lt/k;

    iget-object p2, p2, Lt/o;->e:Lt/g;

    invoke-virtual {v0}, Ls/d;->l()I

    move-result v8

    invoke-virtual {p2, v8}, Lt/g;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    if-ne v4, v8, :cond_4

    invoke-virtual {v0, v3}, Ls/d;->E(I)V

    invoke-virtual {p0, v0, v3}, Lt/e;->d(Ls/e;I)I

    move-result p2

    invoke-virtual {v0, p2}, Ls/d;->C(I)V

    iget-object p2, v0, Ls/d;->e:Lt/m;

    iget-object p2, p2, Lt/o;->e:Lt/g;

    invoke-virtual {v0}, Ls/d;->i()I

    move-result v8

    invoke-virtual {p2, v8}, Lt/g;->d(I)V

    :cond_4
    :goto_0
    iget-object p2, v0, Ls/d;->n0:[I

    const/4 v8, 0x4

    if-nez p1, :cond_6

    aget p2, p2, v1

    if-eq p2, v3, :cond_5

    if-ne p2, v8, :cond_7

    :cond_5
    invoke-virtual {v0}, Ls/d;->l()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v0, Ls/d;->d:Lt/k;

    iget-object v6, v6, Lt/o;->i:Lt/f;

    invoke-virtual {v6, p2}, Lt/f;->d(I)V

    iget-object v6, v0, Ls/d;->d:Lt/k;

    iget-object v6, v6, Lt/o;->e:Lt/g;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, Lt/g;->d(I)V

    :goto_1
    move p2, v3

    goto :goto_3

    :cond_6
    aget p2, p2, v3

    if-eq p2, v3, :cond_8

    if-ne p2, v8, :cond_7

    goto :goto_2

    :cond_7
    move p2, v1

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ls/d;->i()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v0, Ls/d;->e:Lt/m;

    iget-object v5, v5, Lt/o;->i:Lt/f;

    invoke-virtual {v5, p2}, Lt/f;->d(I)V

    iget-object v5, v0, Ls/d;->e:Lt/m;

    iget-object v5, v5, Lt/o;->e:Lt/g;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, Lt/g;->d(I)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Lt/e;->g()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/o;

    iget v6, v5, Lt/o;->f:I

    if-eq v6, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Lt/o;->b:Ls/d;

    if-ne v6, v0, :cond_a

    iget-boolean v6, v5, Lt/o;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Lt/o;->e()V

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/o;

    iget v6, v5, Lt/o;->f:I

    if-eq v6, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v6, v5, Lt/o;->b:Ls/d;

    if-ne v6, v0, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Lt/o;->h:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iget-object v6, v5, Lt/o;->i:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Lt/c;

    if-nez v6, :cond_c

    iget-object v5, v5, Lt/o;->e:Lt/g;

    iget-boolean v5, v5, Lt/f;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_11
    move v1, v3

    :goto_6
    invoke-virtual {v0, v2}, Ls/d;->D(I)V

    invoke-virtual {v0, v4}, Ls/d;->E(I)V

    return v1
.end method

.method public final L()V
    .locals 30

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Ls/d;->W:I

    iput v2, v1, Ls/d;->X:I

    iput-boolean v2, v1, Ls/e;->C0:Z

    iput-boolean v2, v1, Ls/e;->D0:Z

    iget-object v0, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Ls/d;->n0:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    aget v8, v5, v2

    iget v9, v1, Ls/e;->r0:I

    iget-object v10, v1, Ls/d;->H:Ls/c;

    iget-object v11, v1, Ls/d;->G:Ls/c;

    if-nez v9, :cond_1d

    iget v9, v1, Ls/e;->B0:I

    invoke-static {v9, v6}, Ls/g;->c(II)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v1, Ls/e;->s0:Lv/d;

    aget v14, v5, v2

    aget v15, v5, v6

    invoke-virtual/range {p0 .. p0}, Ls/d;->y()V

    iget-object v12, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_0
    if-ge v2, v13, :cond_0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ls/d;

    invoke-virtual/range {v18 .. v18}, Ls/d;->y()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Ls/e;->t0:Z

    if-ne v14, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v14

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v14}, Ls/d;->A(II)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Ls/c;->i(I)V

    iput v6, v1, Ls/d;->W:I

    :goto_1
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    if-ge v6, v13, :cond_7

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    check-cast v11, Ls/d;

    move/from16 v21, v4

    instance-of v4, v11, Ls/f;

    if-eqz v4, :cond_5

    check-cast v11, Ls/f;

    iget v4, v11, Ls/f;->s0:I

    move-object/from16 v23, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget v4, v11, Ls/f;->p0:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v11, v4}, Ls/f;->I(I)V

    goto :goto_3

    :cond_2
    iget v4, v11, Ls/f;->q0:I

    if-eq v4, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Ls/d;->v()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v4

    iget v5, v11, Ls/f;->q0:I

    sub-int/2addr v4, v5

    invoke-virtual {v11, v4}, Ls/f;->I(I)V

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ls/d;->v()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v11, Ls/f;->o0:F

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v4, v4, v20

    float-to-int v4, v4

    invoke-virtual {v11, v4}, Ls/f;->I(I)V

    :cond_4
    :goto_3
    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v23, v5

    instance-of v4, v11, Ls/a;

    if-eqz v4, :cond_6

    check-cast v11, Ls/a;

    invoke-virtual {v11}, Ls/a;->K()I

    move-result v4

    if-nez v4, :cond_6

    const/16 v19, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v21

    move-object/from16 v11, v22

    move-object/from16 v5, v23

    goto :goto_2

    :cond_7
    move/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v22, v11

    if-eqz v14, :cond_9

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v13, :cond_9

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    instance-of v6, v5, Ls/f;

    if-eqz v6, :cond_8

    check-cast v5, Ls/f;

    iget v6, v5, Ls/f;->s0:I

    const/4 v11, 0x1

    if-ne v6, v11, :cond_8

    const/4 v6, 0x0

    invoke-static {v6, v5, v9, v2}, Lt/h;->c(ILs/d;Lv/d;Z)V

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    invoke-static {v6, v1, v9, v2}, Lt/h;->c(ILs/d;Lv/d;Z)V

    if-eqz v19, :cond_b

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v13, :cond_b

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    instance-of v6, v5, Ls/a;

    if-eqz v6, :cond_a

    check-cast v5, Ls/a;

    invoke-virtual {v5}, Ls/a;->K()I

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Ls/a;->J()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    invoke-static {v6, v5, v9, v2}, Lt/h;->c(ILs/d;Lv/d;Z)V

    goto :goto_8

    :cond_a
    const/4 v6, 0x1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x1

    if-ne v15, v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ls/d;->B(II)V

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Ls/c;->i(I)V

    iput v5, v1, Ls/d;->X:I

    :goto_9
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v4, v13, :cond_12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls/d;

    instance-of v14, v11, Ls/f;

    if-eqz v14, :cond_10

    check-cast v11, Ls/f;

    iget v14, v11, Ls/f;->s0:I

    if-nez v14, :cond_11

    iget v5, v11, Ls/f;->p0:I

    const/4 v14, -0x1

    if-eq v5, v14, :cond_d

    invoke-virtual {v11, v5}, Ls/f;->I(I)V

    goto :goto_b

    :cond_d
    iget v5, v11, Ls/f;->q0:I

    if-eq v5, v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Ls/d;->w()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v5

    iget v14, v11, Ls/f;->q0:I

    sub-int/2addr v5, v14

    invoke-virtual {v11, v5}, Ls/f;->I(I)V

    goto :goto_b

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ls/d;->w()Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v11, Ls/f;->o0:F

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v5, v14

    add-float v5, v5, v20

    float-to-int v5, v5

    invoke-virtual {v11, v5}, Ls/f;->I(I)V

    :cond_f
    :goto_b
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    instance-of v14, v11, Ls/a;

    if-eqz v14, :cond_11

    check-cast v11, Ls/a;

    invoke-virtual {v11}, Ls/a;->K()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_11

    const/4 v6, 0x1

    :cond_11
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_12
    if-eqz v5, :cond_14

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v13, :cond_14

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    instance-of v11, v5, Ls/f;

    if-eqz v11, :cond_13

    check-cast v5, Ls/f;

    iget v11, v5, Ls/f;->s0:I

    if-nez v11, :cond_13

    const/4 v11, 0x1

    invoke-static {v11, v5, v9}, Lt/h;->i(ILs/d;Lv/d;)V

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    invoke-static {v4, v1, v9}, Lt/h;->i(ILs/d;Lv/d;)V

    if-eqz v6, :cond_16

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v13, :cond_16

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    instance-of v6, v5, Ls/a;

    if-eqz v6, :cond_15

    check-cast v5, Ls/a;

    invoke-virtual {v5}, Ls/a;->K()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_15

    invoke-virtual {v5}, Ls/a;->J()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {v11, v5, v9}, Lt/h;->i(ILs/d;Lv/d;)V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_16
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v13, :cond_1a

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    invoke-virtual {v5}, Ls/d;->u()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {v5}, Lt/h;->a(Ls/d;)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Lt/h;->a:Lt/b;

    invoke-static {v5, v9, v6}, Ls/e;->M(Ls/d;Lv/d;Lt/b;)V

    instance-of v6, v5, Ls/f;

    if-eqz v6, :cond_18

    move-object v6, v5

    check-cast v6, Ls/f;

    iget v6, v6, Ls/f;->s0:I

    if-nez v6, :cond_17

    const/4 v6, 0x0

    invoke-static {v6, v5, v9}, Lt/h;->i(ILs/d;Lv/d;)V

    goto :goto_10

    :cond_17
    const/4 v6, 0x0

    invoke-static {v6, v5, v9, v2}, Lt/h;->c(ILs/d;Lv/d;Z)V

    goto :goto_10

    :cond_18
    const/4 v6, 0x0

    invoke-static {v6, v5, v9, v2}, Lt/h;->c(ILs/d;Lv/d;Z)V

    invoke-static {v6, v5, v9}, Lt/h;->i(ILs/d;Lv/d;)V

    :cond_19
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v3, :cond_1e

    iget-object v4, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    invoke-virtual {v4}, Ls/d;->u()Z

    move-result v5

    if-eqz v5, :cond_1c

    instance-of v5, v4, Ls/f;

    if-nez v5, :cond_1c

    instance-of v5, v4, Ls/a;

    if-nez v5, :cond_1c

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ls/d;->h(I)I

    move-result v6

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ls/d;->h(I)I

    move-result v9

    const/4 v11, 0x3

    if-ne v6, v11, :cond_1b

    iget v6, v4, Ls/d;->q:I

    if-eq v6, v5, :cond_1b

    if-ne v9, v11, :cond_1b

    iget v6, v4, Ls/d;->r:I

    if-eq v6, v5, :cond_1b

    goto :goto_12

    :cond_1b
    new-instance v5, Lt/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v1, Ls/e;->s0:Lv/d;

    invoke-static {v4, v6, v5}, Ls/e;->M(Ls/d;Lv/d;Lt/b;)V

    :cond_1c
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    move/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v22, v11

    :cond_1e
    iget-object v2, v1, Ls/e;->u0:Lq/c;

    const/4 v5, 0x2

    if-le v3, v5, :cond_1f

    if-eq v8, v5, :cond_20

    if-ne v7, v5, :cond_1f

    goto :goto_13

    :cond_1f
    move v4, v0

    move/from16 v25, v3

    move v5, v7

    move v3, v8

    move-object/from16 v26, v10

    move/from16 v6, v21

    goto/16 :goto_34

    :cond_20
    :goto_13
    iget v9, v1, Ls/e;->B0:I

    const/16 v11, 0x400

    invoke-static {v9, v11}, Ls/g;->c(II)Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v1, Ls/e;->s0:Lv/d;

    iget-object v11, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_14
    if-ge v13, v12, :cond_22

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls/d;

    const/4 v15, 0x0

    aget v6, v23, v15

    const/16 v18, 0x1

    aget v5, v23, v18

    iget-object v14, v14, Ls/d;->n0:[I

    aget v4, v14, v15

    aget v14, v14, v18

    invoke-static {v6, v5, v4, v14}, Lt/h;->h(IIII)Z

    move-result v4

    if-nez v4, :cond_21

    move/from16 v28, v0

    move/from16 v25, v3

    move/from16 v27, v7

    move/from16 v29, v8

    move-object/from16 v26, v10

    goto/16 :goto_2d

    :cond_21
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    :goto_15
    if-ge v4, v12, :cond_33

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v10

    move-object/from16 v10, v25

    check-cast v10, Ls/d;

    move/from16 v25, v3

    const/16 v17, 0x0

    aget v3, v23, v17

    move/from16 v27, v7

    const/16 v18, 0x1

    aget v7, v23, v18

    move/from16 v28, v0

    iget-object v0, v10, Ls/d;->n0:[I

    move/from16 v29, v8

    aget v8, v0, v17

    aget v0, v0, v18

    invoke-static {v3, v7, v8, v0}, Lt/h;->h(IIII)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Ls/e;->J0:Lt/b;

    invoke-static {v10, v9, v0}, Ls/e;->M(Ls/d;Lv/d;Lt/b;)V

    :cond_23
    instance-of v0, v10, Ls/f;

    if-eqz v0, :cond_27

    move-object v3, v10

    check-cast v3, Ls/f;

    iget v7, v3, Ls/f;->s0:I

    if-nez v7, :cond_25

    if-nez v13, :cond_24

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget v7, v3, Ls/f;->s0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_27

    if-nez v5, :cond_26

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    instance-of v3, v10, Ls/a;

    if-eqz v3, :cond_2e

    instance-of v3, v10, Ls/a;

    if-eqz v3, :cond_2b

    move-object v3, v10

    check-cast v3, Ls/a;

    invoke-virtual {v3}, Ls/a;->K()I

    move-result v7

    if-nez v7, :cond_29

    if-nez v6, :cond_28

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v3}, Ls/a;->K()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    if-nez v14, :cond_2a

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2b
    move-object v3, v10

    check-cast v3, Ls/a;

    if-nez v6, :cond_2c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_2d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_16
    iget-object v3, v10, Ls/d;->G:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_30

    iget-object v3, v10, Ls/d;->I:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_30

    if-nez v0, :cond_30

    instance-of v3, v10, Ls/a;

    if-nez v3, :cond_30

    if-nez v15, :cond_2f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v3, v10, Ls/d;->H:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_32

    iget-object v3, v10, Ls/d;->J:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_32

    iget-object v3, v10, Ls/d;->K:Ls/c;

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_32

    if-nez v0, :cond_32

    instance-of v0, v10, Ls/a;

    if-nez v0, :cond_32

    if-nez v24, :cond_31

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v0

    :cond_32
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v25

    move-object/from16 v10, v26

    move/from16 v7, v27

    move/from16 v0, v28

    move/from16 v8, v29

    goto/16 :goto_15

    :cond_33
    move/from16 v28, v0

    move/from16 v25, v3

    move/from16 v27, v7

    move/from16 v29, v8

    move-object/from16 v26, v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_34

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/f;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_17

    :cond_34
    const/4 v5, 0x0

    const/4 v7, 0x0

    if-eqz v6, :cond_35

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/a;

    invoke-static {v4, v5, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Ls/a;->I(ILjava/util/ArrayList;Lt/n;)V

    invoke-virtual {v6, v0}, Lt/n;->a(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_18

    :cond_35
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ls/d;->g(I)Ls/c;

    move-result-object v4

    iget-object v3, v4, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_19

    :cond_36
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ls/d;->g(I)Ls/c;

    move-result-object v3

    iget-object v3, v3, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1a

    :cond_37
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ls/d;->g(I)Ls/c;

    move-result-object v4

    iget-object v4, v4, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/c;

    iget-object v5, v5, Ls/c;->d:Ls/d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1b

    :cond_38
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v15, :cond_39

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    invoke-static {v5, v6, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1c

    :cond_39
    if-eqz v13, :cond_3a

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/f;

    const/4 v6, 0x1

    invoke-static {v5, v6, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1d

    :cond_3a
    const/4 v6, 0x1

    if-eqz v14, :cond_3b

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/a;

    invoke-static {v5, v6, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    move-result-object v8

    invoke-virtual {v5, v6, v0, v8}, Ls/a;->I(ILjava/util/ArrayList;Lt/n;)V

    invoke-virtual {v8, v0}, Lt/n;->a(Ljava/util/ArrayList;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_1e

    :cond_3b
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ls/d;->g(I)Ls/c;

    move-result-object v5

    iget-object v4, v5, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/c;

    iget-object v5, v5, Ls/c;->d:Ls/d;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_1f

    :cond_3c
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ls/d;->g(I)Ls/c;

    move-result-object v4

    iget-object v4, v4, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/c;

    iget-object v5, v5, Ls/c;->d:Ls/d;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_20

    :cond_3d
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ls/d;->g(I)Ls/c;

    move-result-object v5

    iget-object v4, v5, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/c;

    iget-object v5, v5, Ls/c;->d:Ls/d;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_21

    :cond_3e
    invoke-virtual {v1, v3}, Ls/d;->g(I)Ls/c;

    move-result-object v3

    iget-object v3, v3, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/c;

    iget-object v4, v4, Ls/c;->d:Ls/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_22

    :cond_3f
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v24, :cond_40

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    invoke-static {v4, v5, v0, v6}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_23

    :cond_40
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v12, :cond_46

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    iget-object v5, v4, Ls/d;->n0:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v6, 0x3

    if-ne v7, v6, :cond_45

    const/4 v7, 0x1

    aget v5, v5, v7

    if-ne v5, v6, :cond_45

    iget v5, v4, Ls/d;->l0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v7, :cond_42

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt/n;

    iget v10, v9, Lt/n;->b:I

    if-ne v5, v10, :cond_41

    goto :goto_26

    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_42
    const/4 v9, 0x0

    :goto_26
    iget v4, v4, Ls/d;->m0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_27
    if-ge v7, v5, :cond_44

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt/n;

    iget v10, v8, Lt/n;->b:I

    if-ne v4, v10, :cond_43

    goto :goto_28

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_44
    const/4 v8, 0x0

    :goto_28
    if-eqz v9, :cond_45

    if-eqz v8, :cond_45

    const/4 v4, 0x0

    invoke-virtual {v9, v4, v8}, Lt/n;->c(ILt/n;)V

    const/4 v4, 0x2

    iput v4, v8, Lt/n;->c:I

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_47

    goto/16 :goto_2d

    :cond_47
    const/4 v3, 0x0

    aget v4, v23, v3

    const/4 v3, 0x2

    if-ne v4, v3, :cond_4b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_48
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt/n;

    iget v7, v6, Lt/n;->c:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_49

    goto :goto_29

    :cond_49
    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lt/n;->b(Lq/c;I)I

    move-result v9

    if-le v9, v4, :cond_48

    move-object v5, v6

    move v4, v9

    goto :goto_29

    :cond_4a
    const/4 v8, 0x1

    if-eqz v5, :cond_4c

    invoke-virtual {v1, v8}, Ls/d;->D(I)V

    invoke-virtual {v1, v4}, Ls/d;->F(I)V

    goto :goto_2a

    :cond_4b
    const/4 v8, 0x1

    :cond_4c
    const/4 v5, 0x0

    :goto_2a
    aget v3, v23, v8

    const/4 v4, 0x2

    if-ne v3, v4, :cond_50

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_4d
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt/n;

    iget v7, v6, Lt/n;->c:I

    if-nez v7, :cond_4e

    goto :goto_2b

    :cond_4e
    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lt/n;->b(Lq/c;I)I

    move-result v8

    if-le v8, v3, :cond_4d

    move-object v4, v6

    move v3, v8

    goto :goto_2b

    :cond_4f
    const/4 v7, 0x1

    if-eqz v4, :cond_50

    invoke-virtual {v1, v7}, Ls/d;->E(I)V

    invoke-virtual {v1, v3}, Ls/d;->C(I)V

    goto :goto_2c

    :cond_50
    const/4 v4, 0x0

    :goto_2c
    if-nez v5, :cond_51

    if-eqz v4, :cond_52

    :cond_51
    move/from16 v3, v29

    const/4 v4, 0x2

    goto :goto_2e

    :cond_52
    :goto_2d
    move/from16 v6, v21

    move/from16 v5, v27

    move/from16 v4, v28

    move/from16 v3, v29

    goto :goto_34

    :goto_2e
    if-ne v3, v4, :cond_54

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v0

    move/from16 v4, v28

    if-ge v4, v0, :cond_53

    if-lez v4, :cond_53

    invoke-virtual {v1, v4}, Ls/d;->F(I)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Ls/e;->C0:Z

    goto :goto_30

    :cond_53
    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v0

    :goto_2f
    move/from16 v5, v27

    const/4 v4, 0x2

    goto :goto_31

    :cond_54
    move/from16 v4, v28

    :goto_30
    move v0, v4

    goto :goto_2f

    :goto_31
    if-ne v5, v4, :cond_56

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v4

    move/from16 v6, v21

    if-ge v6, v4, :cond_55

    if-lez v6, :cond_55

    invoke-virtual {v1, v6}, Ls/d;->C(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Ls/e;->D0:Z

    goto :goto_32

    :cond_55
    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v4

    goto :goto_33

    :cond_56
    move/from16 v6, v21

    :goto_32
    move v4, v6

    :goto_33
    move v6, v4

    move v4, v0

    const/4 v0, 0x1

    goto :goto_35

    :goto_34
    const/4 v0, 0x0

    :goto_35
    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Ls/e;->N(I)Z

    move-result v8

    if-nez v8, :cond_58

    const/16 v8, 0x80

    invoke-virtual {v1, v8}, Ls/e;->N(I)Z

    move-result v8

    if-eqz v8, :cond_57

    goto :goto_36

    :cond_57
    const/4 v8, 0x0

    goto :goto_37

    :cond_58
    :goto_36
    const/4 v8, 0x1

    :goto_37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v2, Lq/c;->g:Z

    iget v10, v1, Ls/e;->B0:I

    if-eqz v10, :cond_59

    if-eqz v8, :cond_59

    const/4 v8, 0x1

    iput-boolean v8, v2, Lq/c;->g:Z

    goto :goto_38

    :cond_59
    const/4 v8, 0x1

    :goto_38
    iget-object v10, v1, Ls/e;->o0:Ljava/util/ArrayList;

    aget v11, v23, v9

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5b

    aget v11, v23, v8

    if-ne v11, v12, :cond_5a

    goto :goto_39

    :cond_5a
    move v8, v9

    goto :goto_3a

    :cond_5b
    :goto_39
    const/4 v8, 0x1

    :goto_3a
    iput v9, v1, Ls/e;->x0:I

    iput v9, v1, Ls/e;->y0:I

    move/from16 v11, v25

    const/4 v9, 0x0

    :goto_3b
    if-ge v9, v11, :cond_5d

    iget-object v12, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls/d;

    instance-of v13, v12, Ls/e;

    if-eqz v13, :cond_5c

    check-cast v12, Ls/e;

    invoke-virtual {v12}, Ls/e;->L()V

    :cond_5c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_5d
    invoke-virtual {v1, v7}, Ls/e;->N(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3c
    if-eqz v13, :cond_71

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v2}, Lq/c;->t()V

    const/4 v14, 0x0

    iput v14, v1, Ls/e;->x0:I

    iput v14, v1, Ls/e;->y0:I

    invoke-virtual {v1, v2}, Ls/d;->e(Lq/c;)V

    const/4 v0, 0x0

    :goto_3d
    if-ge v0, v11, :cond_5e

    iget-object v14, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls/d;

    invoke-virtual {v14, v2}, Ls/d;->e(Lq/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :catch_0
    move-exception v0

    move/from16 v21, v12

    const/4 v7, 0x0

    :goto_3e
    const/4 v14, 0x5

    goto/16 :goto_45

    :cond_5e
    invoke-virtual {v1, v2}, Ls/e;->J(Lq/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Ls/e;->E0:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v0, :cond_5f

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, v1, Ls/e;->E0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v14, v26

    :try_start_3
    invoke-virtual {v2, v14}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v13

    iget-object v7, v1, Ls/e;->u0:Lq/c;

    invoke-virtual {v7, v0}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v21, v12

    move-object/from16 v26, v14

    const/4 v12, 0x5

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v7, v0, v13, v14, v12}, Lq/c;->f(Lq/f;Lq/f;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Ls/e;->E0:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_40

    :catch_1
    move-exception v0

    :goto_3f
    const/4 v7, 0x0

    const/4 v13, 0x1

    goto :goto_3e

    :catch_2
    move-exception v0

    move/from16 v21, v12

    move-object/from16 v26, v14

    goto :goto_3f

    :catch_3
    move-exception v0

    move/from16 v21, v12

    goto :goto_3f

    :cond_5f
    move/from16 v21, v12

    :goto_40
    :try_start_5
    iget-object v0, v1, Ls/e;->G0:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v0, :cond_60

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, v1, Ls/e;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v7, v1, Ls/d;->J:Ls/c;

    invoke-virtual {v2, v7}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v7

    iget-object v12, v1, Ls/e;->u0:Lq/c;

    invoke-virtual {v12, v0}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v12, v7, v0, v13, v14}, Lq/c;->f(Lq/f;Lq/f;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Ls/e;->G0:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_60
    :try_start_7
    iget-object v0, v1, Ls/e;->F0:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_61

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Ls/e;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v7, v22

    :try_start_9
    invoke-virtual {v2, v7}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v12

    iget-object v13, v1, Ls/e;->u0:Lq/c;

    invoke-virtual {v13, v0}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v22, v7

    const/4 v7, 0x5

    const/4 v14, 0x0

    :try_start_a
    invoke-virtual {v13, v0, v12, v14, v7}, Lq/c;->f(Lq/f;Lq/f;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Ls/e;->F0:Ljava/lang/ref/WeakReference;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_41

    :catch_4
    move-exception v0

    move-object/from16 v22, v7

    goto :goto_3f

    :cond_61
    :goto_41
    :try_start_b
    iget-object v0, v1, Ls/e;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Ls/e;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v7, v1, Ls/d;->I:Ls/c;

    invoke-virtual {v2, v7}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :try_start_c
    iget-object v12, v1, Ls/e;->u0:Lq/c;

    invoke-virtual {v12, v0}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    const/4 v13, 0x0

    const/4 v14, 0x5

    :try_start_d
    invoke-virtual {v12, v7, v0, v13, v14}, Lq/c;->f(Lq/f;Lq/f;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    const/4 v7, 0x0

    :try_start_e
    iput-object v7, v1, Ls/e;->H0:Ljava/lang/ref/WeakReference;

    goto :goto_44

    :catch_5
    move-exception v0

    :goto_42
    const/4 v13, 0x1

    goto :goto_45

    :catch_6
    move-exception v0

    const/4 v7, 0x0

    goto :goto_42

    :catch_7
    move-exception v0

    goto :goto_43

    :catch_8
    move-exception v0

    :goto_43
    const/4 v7, 0x0

    const/4 v14, 0x5

    goto :goto_42

    :cond_62
    const/4 v7, 0x0

    const/4 v14, 0x5

    :goto_44
    invoke-virtual {v2}, Lq/c;->p()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    const/4 v13, 0x1

    goto :goto_46

    :catch_9
    move-exception v0

    move/from16 v21, v12

    goto :goto_43

    :goto_45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "EXCEPTION : "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_46
    sget-object v0, Ls/g;->a:[Z

    if-eqz v13, :cond_66

    const/4 v7, 0x0

    const/4 v12, 0x2

    aput-boolean v7, v0, v12

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Ls/e;->N(I)Z

    move-result v12

    invoke-virtual {v1, v2, v12}, Ls/d;->H(Lq/c;Z)V

    iget-object v13, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_47
    if-ge v14, v13, :cond_65

    iget-object v7, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    invoke-virtual {v7, v2, v12}, Ls/d;->H(Lq/c;Z)V

    move/from16 v25, v12

    iget v12, v7, Ls/d;->h:I

    move/from16 v27, v13

    const/4 v13, -0x1

    if-ne v12, v13, :cond_63

    iget v7, v7, Ls/d;->i:I

    if-eq v7, v13, :cond_64

    :cond_63
    const/16 v16, 0x1

    :cond_64
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v25

    move/from16 v13, v27

    const/16 v7, 0x40

    goto :goto_47

    :cond_65
    const/4 v13, -0x1

    goto :goto_49

    :cond_66
    const/4 v13, -0x1

    invoke-virtual {v1, v2, v9}, Ls/d;->H(Lq/c;Z)V

    const/4 v7, 0x0

    :goto_48
    if-ge v7, v11, :cond_67

    iget-object v12, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls/d;

    invoke-virtual {v12, v2, v9}, Ls/d;->H(Lq/c;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_67
    const/16 v16, 0x0

    :goto_49
    const/16 v7, 0x8

    if-eqz v8, :cond_6a

    if-ge v15, v7, :cond_6a

    const/4 v12, 0x2

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_6a

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4a
    if-ge v0, v11, :cond_68

    iget-object v13, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls/d;

    iget v7, v13, Ls/d;->W:I

    invoke-virtual {v13}, Ls/d;->l()I

    move-result v27

    add-int v7, v27, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v7, v13, Ls/d;->X:I

    invoke-virtual {v13}, Ls/d;->i()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x8

    const/4 v13, -0x1

    goto :goto_4a

    :cond_68
    iget v0, v1, Ls/d;->Z:I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, v1, Ls/d;->a0:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v12, 0x2

    if-ne v3, v12, :cond_69

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v13

    if-ge v13, v0, :cond_69

    invoke-virtual {v1, v0}, Ls/d;->F(I)V

    const/4 v13, 0x0

    aput v12, v23, v13

    const/16 v16, 0x1

    const/16 v21, 0x1

    :cond_69
    if-ne v5, v12, :cond_6a

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v0

    if-ge v0, v7, :cond_6a

    invoke-virtual {v1, v7}, Ls/d;->C(I)V

    const/4 v7, 0x1

    aput v12, v23, v7

    const/16 v16, 0x1

    const/16 v21, 0x1

    :cond_6a
    iget v0, v1, Ls/d;->Z:I

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v7

    if-le v0, v7, :cond_6b

    invoke-virtual {v1, v0}, Ls/d;->F(I)V

    const/4 v7, 0x1

    const/4 v12, 0x0

    aput v7, v23, v12

    move/from16 v16, v7

    move/from16 v18, v16

    goto :goto_4b

    :cond_6b
    const/4 v7, 0x1

    move/from16 v18, v21

    :goto_4b
    iget v0, v1, Ls/d;->a0:I

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v12

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v12

    if-le v0, v12, :cond_6c

    invoke-virtual {v1, v0}, Ls/d;->C(I)V

    aput v7, v23, v7

    move v0, v7

    move/from16 v16, v0

    goto :goto_4c

    :cond_6c
    move/from16 v0, v18

    :goto_4c
    if-nez v0, :cond_6f

    const/4 v12, 0x0

    aget v13, v23, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6d

    if-lez v4, :cond_6d

    invoke-virtual/range {p0 .. p0}, Ls/d;->l()I

    move-result v13

    if-le v13, v4, :cond_6d

    iput-boolean v7, v1, Ls/e;->C0:Z

    aput v7, v23, v12

    invoke-virtual {v1, v4}, Ls/d;->F(I)V

    move v0, v7

    move/from16 v16, v0

    :cond_6d
    aget v12, v23, v7

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6e

    if-lez v6, :cond_6e

    invoke-virtual/range {p0 .. p0}, Ls/d;->i()I

    move-result v12

    if-le v12, v6, :cond_6e

    iput-boolean v7, v1, Ls/e;->D0:Z

    aput v7, v23, v7

    invoke-virtual {v1, v6}, Ls/d;->C(I)V

    const/16 v0, 0x8

    const/4 v12, 0x1

    const/16 v16, 0x1

    goto :goto_4e

    :cond_6e
    :goto_4d
    move v12, v0

    const/16 v0, 0x8

    goto :goto_4e

    :cond_6f
    const/4 v13, 0x2

    goto :goto_4d

    :goto_4e
    if-le v15, v0, :cond_70

    const/16 v16, 0x0

    :cond_70
    move v0, v15

    move/from16 v13, v16

    const/16 v7, 0x40

    goto/16 :goto_3c

    :cond_71
    move/from16 v21, v12

    iput-object v10, v1, Ls/e;->o0:Ljava/util/ArrayList;

    if-eqz v21, :cond_72

    const/4 v4, 0x0

    aput v3, v23, v4

    const/4 v3, 0x1

    aput v5, v23, v3

    :cond_72
    iget-object v0, v2, Lq/c;->l:Lw0/s;

    invoke-virtual {v1, v0}, Ls/e;->z(Lw0/s;)V

    return-void
.end method

.method public final N(I)Z
    .locals 0

    iget p0, p0, Ls/e;->B0:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Ls/e;->u0:Lq/c;

    invoke-virtual {v0}, Lq/c;->t()V

    const/4 v0, 0x0

    iput v0, p0, Ls/e;->v0:I

    iput v0, p0, Ls/e;->w0:I

    iget-object v0, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Ls/d;->x()V

    return-void
.end method

.method public final z(Lw0/s;)V
    .locals 3

    invoke-super {p0, p1}, Ls/d;->z(Lw0/s;)V

    iget-object v0, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/d;

    invoke-virtual {v2, p1}, Ls/d;->z(Lw0/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
