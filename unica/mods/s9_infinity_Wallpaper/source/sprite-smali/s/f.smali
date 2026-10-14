.class public final Ls/f;
.super Ls/d;
.source "SourceFile"


# instance fields
.field public o0:F

.field public p0:I

.field public q0:I

.field public r0:Ls/c;

.field public s0:I

.field public t0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ls/d;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ls/f;->o0:F

    const/4 v0, -0x1

    iput v0, p0, Ls/f;->p0:I

    iput v0, p0, Ls/f;->q0:I

    iget-object v0, p0, Ls/d;->H:Ls/c;

    iput-object v0, p0, Ls/f;->r0:Ls/c;

    const/4 v0, 0x0

    iput v0, p0, Ls/f;->s0:I

    iget-object v1, p0, Ls/d;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Ls/d;->P:Ljava/util/ArrayList;

    iget-object v2, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ls/d;->O:[Ls/c;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ls/d;->O:[Ls/c;

    iget-object v3, p0, Ls/f;->r0:Ls/c;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final H(Lq/c;Z)V
    .locals 2

    iget-object p2, p0, Ls/d;->R:Ls/d;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lq/c;->n(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Ls/f;->s0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, Ls/d;->W:I

    iput v1, p0, Ls/d;->X:I

    iget-object p1, p0, Ls/d;->R:Ls/d;

    invoke-virtual {p1}, Ls/d;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Ls/d;->C(I)V

    invoke-virtual {p0, v1}, Ls/d;->F(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, Ls/d;->W:I

    iput p1, p0, Ls/d;->X:I

    iget-object p1, p0, Ls/d;->R:Ls/d;

    invoke-virtual {p1}, Ls/d;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Ls/d;->F(I)V

    invoke-virtual {p0, v1}, Ls/d;->C(I)V

    :goto_0
    return-void
.end method

.method public final I(I)V
    .locals 1

    iget-object v0, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {v0, p1}, Ls/c;->i(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls/f;->t0:Z

    return-void
.end method

.method public final J(I)V
    .locals 3

    iget v0, p0, Ls/f;->s0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ls/f;->s0:I

    iget-object p1, p0, Ls/d;->P:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Ls/f;->s0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ls/d;->G:Ls/c;

    iput-object v0, p0, Ls/f;->r0:Ls/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ls/d;->H:Ls/c;

    iput-object v0, p0, Ls/f;->r0:Ls/c;

    :goto_0
    iget-object v0, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ls/d;->O:[Ls/c;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Ls/f;->r0:Ls/c;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Lq/c;Z)V
    .locals 8

    iget-object p2, p0, Ls/d;->R:Ls/d;

    check-cast p2, Ls/e;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ls/d;->g(I)Ls/c;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ls/d;->g(I)Ls/c;

    move-result-object v2

    iget-object v3, p0, Ls/d;->R:Ls/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Ls/d;->n0:[I

    aget v3, v3, v5

    if-ne v3, v0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget v6, p0, Ls/f;->s0:I

    const/4 v7, 0x5

    if-nez v6, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ls/d;->g(I)Ls/c;

    move-result-object v1

    invoke-virtual {p2, v7}, Ls/d;->g(I)Ls/c;

    move-result-object v2

    iget-object p2, p0, Ls/d;->R:Ls/d;

    if-eqz p2, :cond_2

    iget-object p2, p2, Ls/d;->n0:[I

    aget p2, p2, v4

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v3, v4

    :cond_3
    iget-boolean p2, p0, Ls/f;->t0:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_6

    iget-object p2, p0, Ls/f;->r0:Ls/c;

    iget-boolean v4, p2, Ls/c;->c:Z

    if-eqz v4, :cond_6

    invoke-virtual {p1, p2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object p2

    iget-object v4, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {v4}, Ls/c;->c()I

    move-result v4

    invoke-virtual {p1, p2, v4}, Lq/c;->d(Lq/f;I)V

    iget v4, p0, Ls/f;->p0:I

    if-eq v4, v0, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v7}, Lq/c;->f(Lq/f;Lq/f;II)V

    goto :goto_2

    :cond_4
    iget v4, p0, Ls/f;->q0:I

    if-eq v4, v0, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0

    invoke-virtual {p1, v1}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v7}, Lq/c;->f(Lq/f;Lq/f;II)V

    invoke-virtual {p1, v0, p2, v5, v7}, Lq/c;->f(Lq/f;Lq/f;II)V

    :cond_5
    :goto_2
    iput-boolean v5, p0, Ls/f;->t0:Z

    return-void

    :cond_6
    iget p2, p0, Ls/f;->p0:I

    const/16 v4, 0x8

    if-eq p2, v0, :cond_7

    iget-object p2, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {p1, p2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object p2

    invoke-virtual {p1, v1}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0

    iget p0, p0, Ls/f;->p0:I

    invoke-virtual {p1, p2, v0, p0, v4}, Lq/c;->e(Lq/f;Lq/f;II)V

    if-eqz v3, :cond_9

    invoke-virtual {p1, v2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v5, v7}, Lq/c;->f(Lq/f;Lq/f;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Ls/f;->q0:I

    if-eq p2, v0, :cond_8

    iget-object p2, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {p1, p2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object p2

    invoke-virtual {p1, v2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v0

    iget p0, p0, Ls/f;->q0:I

    neg-int p0, p0

    invoke-virtual {p1, p2, v0, p0, v4}, Lq/c;->e(Lq/f;Lq/f;II)V

    if-eqz v3, :cond_9

    invoke-virtual {p1, v1}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v5, v7}, Lq/c;->f(Lq/f;Lq/f;II)V

    invoke-virtual {p1, v0, p2, v5, v7}, Lq/c;->f(Lq/f;Lq/f;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Ls/f;->o0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Ls/f;->r0:Ls/c;

    invoke-virtual {p1, p2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object p2

    invoke-virtual {p1, v2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v1

    iget p0, p0, Ls/f;->o0:F

    invoke-virtual {p1}, Lq/c;->l()Lq/b;

    move-result-object v2

    iget-object v3, v2, Lq/b;->d:Lq/a;

    invoke-virtual {v3, p2, v0}, Lq/a;->g(Lq/f;F)V

    iget-object p2, v2, Lq/b;->d:Lq/a;

    invoke-virtual {p2, v1, p0}, Lq/a;->g(Lq/f;F)V

    invoke-virtual {p1, v2}, Lq/c;->c(Lq/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g(I)Ls/c;
    .locals 2

    invoke-static {p1}, Lq/e;->c(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Ls/f;->s0:I

    if-nez p1, :cond_2

    iget-object p0, p0, Ls/f;->r0:Ls/c;

    return-object p0

    :cond_1
    iget p1, p0, Ls/f;->s0:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Ls/f;->r0:Ls/c;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final v()Z
    .locals 0

    iget-boolean p0, p0, Ls/f;->t0:Z

    return p0
.end method

.method public final w()Z
    .locals 0

    iget-boolean p0, p0, Ls/f;->t0:Z

    return p0
.end method
