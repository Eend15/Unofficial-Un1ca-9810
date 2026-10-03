.class public abstract Lt/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/d;


# instance fields
.field public a:I

.field public b:Ls/d;

.field public c:Lt/l;

.field public d:I

.field public final e:Lt/g;

.field public f:I

.field public g:Z

.field public final h:Lt/f;

.field public final i:Lt/f;

.field public j:I


# direct methods
.method public constructor <init>(Ls/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/g;

    invoke-direct {v0, p0}, Lt/g;-><init>(Lt/o;)V

    iput-object v0, p0, Lt/o;->e:Lt/g;

    const/4 v0, 0x0

    iput v0, p0, Lt/o;->f:I

    iput-boolean v0, p0, Lt/o;->g:Z

    new-instance v0, Lt/f;

    invoke-direct {v0, p0}, Lt/f;-><init>(Lt/o;)V

    iput-object v0, p0, Lt/o;->h:Lt/f;

    new-instance v0, Lt/f;

    invoke-direct {v0, p0}, Lt/f;-><init>(Lt/o;)V

    iput-object v0, p0, Lt/o;->i:Lt/f;

    const/4 v0, 0x1

    iput v0, p0, Lt/o;->j:I

    iput-object p1, p0, Lt/o;->b:Ls/d;

    return-void
.end method

.method public static b(Lt/f;Lt/f;I)V
    .locals 1

    iget-object v0, p0, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lt/f;->f:I

    iget-object p1, p1, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(Ls/c;)Lt/f;
    .locals 3

    iget-object p0, p0, Ls/c;->f:Ls/c;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Ls/c;->e:I

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    const/4 v2, 0x1

    iget-object p0, p0, Ls/c;->d:Ls/d;

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ls/d;->e:Lt/m;

    iget-object v0, p0, Lt/m;->k:Lt/f;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ls/d;->e:Lt/m;

    iget-object v0, p0, Lt/o;->i:Lt/f;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Ls/d;->d:Lt/k;

    iget-object v0, p0, Lt/o;->i:Lt/f;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Ls/d;->e:Lt/m;

    iget-object v0, p0, Lt/o;->h:Lt/f;

    goto :goto_0

    :cond_5
    iget-object p0, p0, Ls/d;->d:Lt/k;

    iget-object v0, p0, Lt/o;->h:Lt/f;

    :goto_0
    return-object v0
.end method

.method public static i(Ls/c;I)Lt/f;
    .locals 2

    iget-object p0, p0, Ls/c;->f:Ls/c;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Ls/c;->d:Ls/d;

    if-nez p1, :cond_1

    iget-object p1, v1, Ls/d;->d:Lt/k;

    goto :goto_0

    :cond_1
    iget-object p1, v1, Ls/d;->e:Lt/m;

    :goto_0
    iget p0, p0, Ls/c;->e:I

    invoke-static {p0}, Lq/e;->c(I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lt/o;->i:Lt/f;

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lt/o;->h:Lt/f;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final c(Lt/f;Lt/f;ILt/g;)V
    .locals 1

    iget-object v0, p1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lt/f;->l:Ljava/util/ArrayList;

    iget-object p0, p0, Lt/o;->e:Lt/g;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lt/f;->h:I

    iput-object p4, p1, Lt/f;->i:Lt/g;

    iget-object p0, p2, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p4, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 0

    if-nez p2, :cond_1

    iget-object p0, p0, Lt/o;->b:Ls/d;

    iget p2, p0, Ls/d;->u:I

    iget p0, p0, Ls/d;->t:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lt/o;->b:Ls/d;

    iget p2, p0, Ls/d;->x:I

    iget p0, p0, Ls/d;->w:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    if-eq p0, p1, :cond_3

    :goto_0
    move p1, p0

    :cond_3
    return p1
.end method

.method public j()J
    .locals 2

    iget-object p0, p0, Lt/o;->e:Lt/g;

    iget-boolean v0, p0, Lt/f;->j:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lt/f;->g:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public final l(Ls/c;Ls/c;I)V
    .locals 11

    invoke-static {p1}, Lt/o;->h(Ls/c;)Lt/f;

    move-result-object v0

    invoke-static {p2}, Lt/o;->h(Ls/c;)Lt/f;

    move-result-object v1

    iget-boolean v2, v0, Lt/f;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lt/f;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, v0, Lt/f;->g:I

    invoke-virtual {p1}, Ls/c;->d()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, Lt/f;->g:I

    invoke-virtual {p2}, Ls/c;->d()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, Lt/o;->e:Lt/g;

    iget-boolean v4, v3, Lt/f;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget v4, p0, Lt/o;->d:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_a

    iget v4, p0, Lt/o;->a:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    if-eq v4, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Lt/o;->b:Ls/d;

    iget-object v8, v4, Ls/d;->d:Lt/k;

    iget v9, v8, Lt/o;->d:I

    if-ne v9, v6, :cond_2

    iget v9, v8, Lt/o;->a:I

    if-ne v9, v6, :cond_2

    iget-object v9, v4, Ls/d;->e:Lt/m;

    iget v10, v9, Lt/o;->d:I

    if-ne v10, v6, :cond_2

    iget v9, v9, Lt/o;->a:I

    if-ne v9, v6, :cond_2

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    iget-object v8, v4, Ls/d;->e:Lt/m;

    :cond_3
    iget-object v6, v8, Lt/o;->e:Lt/g;

    iget-boolean v8, v6, Lt/f;->j:Z

    if-eqz v8, :cond_a

    iget v4, v4, Ls/d;->U:F

    if-ne p3, v7, :cond_4

    iget v6, v6, Lt/f;->g:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_0

    :cond_4
    iget v6, v6, Lt/f;->g:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lt/o;->b:Ls/d;

    iget-object v6, v4, Ls/d;->R:Ls/d;

    if-eqz v6, :cond_a

    if-nez p3, :cond_6

    iget-object v6, v6, Ls/d;->d:Lt/k;

    goto :goto_1

    :cond_6
    iget-object v6, v6, Ls/d;->e:Lt/m;

    :goto_1
    iget-object v6, v6, Lt/o;->e:Lt/g;

    iget-boolean v7, v6, Lt/f;->j:Z

    if-eqz v7, :cond_a

    if-nez p3, :cond_7

    iget v4, v4, Ls/d;->v:F

    goto :goto_2

    :cond_7
    iget v4, v4, Ls/d;->y:F

    :goto_2
    iget v6, v6, Lt/f;->g:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    invoke-virtual {p0, v4, p3}, Lt/o;->g(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    goto :goto_3

    :cond_8
    iget v4, v3, Lt/g;->m:I

    invoke-virtual {p0, v4, p3}, Lt/o;->g(II)I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p2, p3}, Lt/o;->g(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    :cond_a
    :goto_3
    iget-boolean v4, v3, Lt/f;->j:Z

    if-nez v4, :cond_b

    return-void

    :cond_b
    iget v4, v3, Lt/f;->g:I

    iget-object v6, p0, Lt/o;->i:Lt/f;

    iget-object v7, p0, Lt/o;->h:Lt/f;

    if-ne v4, p2, :cond_c

    invoke-virtual {v7, p1}, Lt/f;->d(I)V

    invoke-virtual {v6, v2}, Lt/f;->d(I)V

    return-void

    :cond_c
    iget-object p0, p0, Lt/o;->b:Ls/d;

    if-nez p3, :cond_d

    iget p0, p0, Ls/d;->b0:F

    goto :goto_4

    :cond_d
    iget p0, p0, Ls/d;->c0:F

    :goto_4
    if-ne v0, v1, :cond_e

    iget p1, v0, Lt/f;->g:I

    iget v2, v1, Lt/f;->g:I

    move p0, v5

    :cond_e
    sub-int/2addr v2, p1

    sub-int/2addr v2, v4

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float p2, v2

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    float-to-int p0, p2

    invoke-virtual {v7, p0}, Lt/f;->d(I)V

    iget p0, v7, Lt/f;->g:I

    iget p1, v3, Lt/f;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v6, p0}, Lt/f;->d(I)V

    :cond_f
    :goto_5
    return-void
.end method
