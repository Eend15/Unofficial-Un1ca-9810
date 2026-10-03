.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/I;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    }
.end annotation


# instance fields
.field public final A:Landroidx/recyclerview/widget/t;

.field public final B:Landroidx/recyclerview/widget/u;

.field public final C:I

.field public final D:[I

.field public p:I

.field public q:Landroidx/recyclerview/widget/v;

.field public r:Landroidx/emoji2/text/f;

.field public s:Z

.field public final t:Z

.field public u:Z

.field public v:Z

.field public final w:Z

.field public x:I

.field public y:I

.field public z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/I;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 5
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 10
    new-instance v2, Landroidx/recyclerview/widget/t;

    invoke-direct {v2}, Landroidx/recyclerview/widget/t;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/t;

    .line 11
    new-instance v2, Landroidx/recyclerview/widget/u;

    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/u;

    const/4 v2, 0x2

    .line 14
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    .line 15
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(I)V

    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 18
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->g0()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/I;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 24
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 25
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 26
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 30
    new-instance v1, Landroidx/recyclerview/widget/t;

    invoke-direct {v1}, Landroidx/recyclerview/widget/t;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/t;

    .line 31
    new-instance v1, Landroidx/recyclerview/widget/u;

    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/u;

    const/4 v1, 0x2

    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    .line 35
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 36
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/I;->E(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/H;

    move-result-object p1

    .line 37
    iget p2, p1, Landroidx/recyclerview/widget/H;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(I)V

    .line 38
    iget-boolean p2, p1, Landroidx/recyclerview/widget/H;->c:Z

    .line 39
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 40
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->g0()V

    .line 43
    :goto_0
    iget-boolean p1, p1, Landroidx/recyclerview/widget/H;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0(Z)V

    return-void
.end method


# virtual methods
.method public final A0(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final B0()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/v;->a:Z

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/v;->h:I

    iput v1, v0, Landroidx/recyclerview/widget/v;->i:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/recyclerview/widget/v;->k:Ljava/util/List;

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    :cond_0
    return-void
.end method

.method public final C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I
    .locals 7

    iget v0, p2, Landroidx/recyclerview/widget/v;->c:I

    iget v1, p2, Landroidx/recyclerview/widget/v;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/v;->g:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;)V

    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/v;->c:I

    iget v3, p2, Landroidx/recyclerview/widget/v;->h:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, Landroidx/recyclerview/widget/v;->l:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_9

    :cond_3
    iget v3, p2, Landroidx/recyclerview/widget/v;->d:I

    if-ltz v3, :cond_9

    invoke-virtual {p3}, Landroidx/recyclerview/widget/S;->b()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/u;

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/u;->a:I

    iput-boolean v4, v3, Landroidx/recyclerview/widget/u;->b:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/u;->c:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/u;->d:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/u;)V

    iget-boolean v4, v3, Landroidx/recyclerview/widget/u;->b:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, Landroidx/recyclerview/widget/v;->b:I

    iget v5, v3, Landroidx/recyclerview/widget/u;->a:I

    iget v6, p2, Landroidx/recyclerview/widget/v;->f:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    iput v6, p2, Landroidx/recyclerview/widget/v;->b:I

    iget-boolean v4, v3, Landroidx/recyclerview/widget/u;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Landroidx/recyclerview/widget/v;->k:Ljava/util/List;

    if-nez v4, :cond_5

    iget-boolean v4, p3, Landroidx/recyclerview/widget/S;->g:Z

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/v;->c:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/v;->c:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/v;->g:I

    if-eq v4, v2, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/v;->g:I

    iget v5, p2, Landroidx/recyclerview/widget/v;->c:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/v;->g:I

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v3, Landroidx/recyclerview/widget/u;->d:Z

    if-eqz v3, :cond_2

    :cond_9
    :goto_0
    iget p0, p2, Landroidx/recyclerview/widget/v;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final D0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(ZII)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(ZII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final E0(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(ZII)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(ZII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final F0()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(ZII)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final G0(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_3

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->k()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_1
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v2, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->c:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/a0;->c(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/I;->d:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/a0;->c(IIII)Landroid/view/View;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final H()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final H0(ZII)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    const/16 v0, 0x140

    if-eqz p1, :cond_0

    const/16 p1, 0x6003

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->c:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p2, p3, p1, v0}, Landroidx/recyclerview/widget/a0;->c(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/I;->d:Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0, p2, p3, p1, v0}, Landroidx/recyclerview/widget/a0;->c(IIII)Landroid/view/View;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public I0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;III)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->k()I

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p2}, Landroidx/emoji2/text/f;->g()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/J;

    iget-object v4, v4, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v3}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public final J0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->g()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p3}, Landroidx/emoji2/text/f;->g()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p3}, Landroidx/emoji2/text/f;->q(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final K0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p3}, Landroidx/emoji2/text/f;->k()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/emoji2/text/f;->q(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final L0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final M(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final M0()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public N(Landroid/view/View;ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->A0(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->l()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(IIZLandroidx/recyclerview/widget/S;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput p2, v1, Landroidx/recyclerview/widget/v;->g:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/v;->a:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_3

    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(II)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()Landroid/view/View;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p2, :cond_6

    return-object v0

    :cond_6
    return-object p0

    :cond_7
    return-object p2
.end method

.method public final N0()Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final O(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/I;->O(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(ZII)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_1
    return-void
.end method

.method public O0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/u;)V
    .locals 10

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/M;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Landroidx/recyclerview/widget/u;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object v1, p3, Landroidx/recyclerview/widget/v;->k:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Landroidx/recyclerview/widget/v;->f:I

    if-ne v4, v3, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v3, v2}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v4, p3, Landroidx/recyclerview/widget/v;->f:I

    if-ne v4, v3, :cond_4

    move v4, p2

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_5

    invoke-virtual {p0, p1, v3, p2}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2, p2}, Landroidx/recyclerview/widget/I;->b(Landroid/view/View;IZ)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/J;

    iget-object v2, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iget v2, p0, Landroidx/recyclerview/widget/I;->n:I

    iget v6, p0, Landroidx/recyclerview/widget/I;->l:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()Z

    move-result v7

    invoke-static {v2, v6, v8, v4, v7}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result v2

    iget v4, p0, Landroidx/recyclerview/widget/I;->o:I

    iget v6, p0, Landroidx/recyclerview/widget/I;->m:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->e()Z

    move-result v7

    invoke-static {v4, v6, v8, v5, v7}, Landroidx/recyclerview/widget/I;->w(IIIIZ)I

    move-result v4

    invoke-virtual {p0, p1, v2, v4, v1}, Landroidx/recyclerview/widget/I;->p0(Landroid/view/View;IILandroidx/recyclerview/widget/J;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, p1}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Landroidx/recyclerview/widget/u;->a:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne v1, p2, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result p0

    sub-int p0, v1, p0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v1

    move v9, v1

    move v1, p0

    move p0, v9

    :goto_3
    iget v2, p3, Landroidx/recyclerview/widget/v;->f:I

    if-ne v2, v3, :cond_8

    iget p3, p3, Landroidx/recyclerview/widget/v;->b:I

    iget v2, p4, Landroidx/recyclerview/widget/u;->a:I

    sub-int v2, p3, v2

    goto :goto_5

    :cond_8
    iget v2, p3, Landroidx/recyclerview/widget/v;->b:I

    iget p3, p4, Landroidx/recyclerview/widget/u;->a:I

    add-int/2addr p3, v2

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/f;->d(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v2

    iget v1, p3, Landroidx/recyclerview/widget/v;->f:I

    if-ne v1, v3, :cond_a

    iget v1, p3, Landroidx/recyclerview/widget/v;->b:I

    iget p3, p4, Landroidx/recyclerview/widget/u;->a:I

    sub-int p3, v1, p3

    :goto_4
    move v9, p3

    move p3, p0

    move p0, v9

    goto :goto_5

    :cond_a
    iget p3, p3, Landroidx/recyclerview/widget/v;->b:I

    iget v1, p4, Landroidx/recyclerview/widget/u;->a:I

    add-int/2addr v1, p3

    goto :goto_4

    :goto_5
    invoke-static {p1, p0, v2, v1, p3}, Landroidx/recyclerview/widget/I;->J(Landroid/view/View;IIII)V

    iget-object p0, v0, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->i()Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v0, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->l()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    iput-boolean p2, p4, Landroidx/recyclerview/widget/u;->c:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Landroidx/recyclerview/widget/u;->d:Z

    return-void
.end method

.method public P0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/t;I)V
    .locals 0

    return-void
.end method

.method public final Q0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;)V
    .locals 5

    iget-boolean v0, p2, Landroidx/recyclerview/widget/v;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Landroidx/recyclerview/widget/v;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/v;->g:I

    iget v1, p2, Landroidx/recyclerview/widget/v;->i:I

    iget p2, p2, Landroidx/recyclerview/widget/v;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->f()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_4

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v4

    if-lt v4, v2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v1}, Landroidx/emoji2/text/f;->o(Landroid/view/View;)I

    move-result v1

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(Landroidx/recyclerview/widget/M;II)V

    goto/16 :goto_8

    :cond_4
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v3

    if-lt v3, v2, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v1}, Landroidx/emoji2/text/f;->o(Landroid/view/View;)I

    move-result v1

    if-ge v1, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(Landroidx/recyclerview/widget/M;II)V

    goto :goto_8

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_b

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/f;->n(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(Landroidx/recyclerview/widget/M;II)V

    goto :goto_8

    :cond_b
    move v1, v3

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v2}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v2}, Landroidx/emoji2/text/f;->n(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(Landroidx/recyclerview/widget/M;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public final R0(Landroidx/recyclerview/widget/M;II)V
    .locals 1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/I;->e0(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/M;->f(Landroid/view/View;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/I;->e0(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/M;->f(Landroid/view/View;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final S0()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    :goto_1
    return-void
.end method

.method public final T0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/v;->a:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(IIZLandroidx/recyclerview/widget/S;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v4, v2, Landroidx/recyclerview/widget/v;->g:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    return v1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/emoji2/text/f;->q(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput p1, p0, Landroidx/recyclerview/widget/v;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final U0(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation:"

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroidx/emoji2/text/f;->a(Landroidx/recyclerview/widget/I;I)Landroidx/emoji2/text/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/t;

    iput-object v0, v1, Landroidx/recyclerview/widget/t;->a:Landroidx/emoji2/text/f;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->g0()V

    :cond_3
    return-void
.end method

.method public V0(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->g0()V

    return-void
.end method

.method public W(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v0, v9, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/I;->b0(Landroidx/recyclerview/widget/M;)V

    return-void

    :cond_1
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    if-ltz v0, :cond_2

    iput v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/recyclerview/widget/v;->a:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()V

    iget-object v0, v6, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v6, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    iget-object v1, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v12, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/t;

    iget-boolean v1, v12, Landroidx/recyclerview/widget/t;->e:Z

    const/4 v13, 0x1

    const/high16 v14, -0x80000000

    if-eqz v1, :cond_8

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v1, v9, :cond_8

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_27

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->g()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    if-gt v1, v2, :cond_27

    :cond_7
    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroidx/recyclerview/widget/t;->c(Landroid/view/View;I)V

    goto/16 :goto_f

    :cond_8
    :goto_2
    invoke-virtual {v12}, Landroidx/recyclerview/widget/t;->d()V

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v0, v1

    iput-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    iget-boolean v0, v8, Landroidx/recyclerview/widget/S;->g:Z

    if-nez v0, :cond_18

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v0, v9, :cond_9

    goto/16 :goto_7

    :cond_9
    if-ltz v0, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v1

    if-lt v0, v1, :cond_a

    goto/16 :goto_6

    :cond_a
    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v0, v12, Landroidx/recyclerview/widget/t;->b:I

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_c

    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    if-ltz v2, :cond_c

    iget-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->f:Z

    iput-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    if-eqz v0, :cond_b

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->g()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    sub-int/2addr v0, v1

    iput v0, v12, Landroidx/recyclerview/widget/t;->c:I

    goto/16 :goto_e

    :cond_b
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    add-int/2addr v0, v1

    iput v0, v12, Landroidx/recyclerview/widget/t;->c:I

    goto/16 :goto_e

    :cond_c
    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-ne v1, v14, :cond_15

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->l()I

    move-result v2

    if-le v1, v2, :cond_d

    invoke-virtual {v12}, Landroidx/recyclerview/widget/t;->a()V

    goto/16 :goto_e

    :cond_d
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_e

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    iput v0, v12, Landroidx/recyclerview/widget/t;->c:I

    iput-boolean v10, v12, Landroidx/recyclerview/widget/t;->d:Z

    goto/16 :goto_e

    :cond_e
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->g()I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2, v0}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_f

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->g()I

    move-result v0

    iput v0, v12, Landroidx/recyclerview/widget/t;->c:I

    iput-boolean v13, v12, Landroidx/recyclerview/widget/t;->d:Z

    goto/16 :goto_e

    :cond_f
    iget-boolean v1, v12, Landroidx/recyclerview/widget/t;->d:Z

    if-eqz v1, :cond_10

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->m()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_3

    :cond_10
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v1

    :goto_3
    iput v1, v12, Landroidx/recyclerview/widget/t;->c:I

    goto/16 :goto_e

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ge v1, v0, :cond_12

    move v0, v13

    goto :goto_4

    :cond_12
    move v0, v10

    :goto_4
    iget-boolean v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-ne v0, v1, :cond_13

    move v0, v13

    goto :goto_5

    :cond_13
    move v0, v10

    :goto_5
    iput-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    :cond_14
    invoke-virtual {v12}, Landroidx/recyclerview/widget/t;->a()V

    goto/16 :goto_e

    :cond_15
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iput-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->g()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    sub-int/2addr v0, v1

    iput v0, v12, Landroidx/recyclerview/widget/t;->c:I

    goto/16 :goto_e

    :cond_16
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    add-int/2addr v0, v1

    iput v0, v12, Landroidx/recyclerview/widget/t;->c:I

    goto/16 :goto_e

    :cond_17
    :goto_6
    iput v9, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    iput v14, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :cond_18
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_c

    :cond_19
    iget-object v0, v6, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1b

    :cond_1a
    :goto_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_1b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v6, Landroidx/recyclerview/widget/I;->a:Lw0/m;

    iget-object v1, v1, Lw0/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_8

    :cond_1c
    :goto_9
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/J;

    iget-object v2, v1, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v1, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/U;->b()I

    move-result v2

    if-ltz v2, :cond_1d

    iget-object v1, v1, Landroidx/recyclerview/widget/J;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/U;->b()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v2

    if-ge v1, v2, :cond_1d

    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroidx/recyclerview/widget/t;->c(Landroid/view/View;I)V

    goto/16 :goto_e

    :cond_1d
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eq v0, v1, :cond_1e

    goto/16 :goto_c

    :cond_1e
    iget-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;III)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v5

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;III)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_20
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v5

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;III)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;III)Landroid/view/View;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_24

    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroidx/recyclerview/widget/t;->b(Landroid/view/View;I)V

    iget-boolean v1, v8, Landroidx/recyclerview/widget/S;->g:Z

    if-nez v1, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->u0()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->g()I

    move-result v2

    if-ge v1, v2, :cond_22

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->k()I

    move-result v1

    if-ge v0, v1, :cond_26

    :cond_22
    iget-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    if-eqz v0, :cond_23

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->g()I

    move-result v0

    goto :goto_b

    :cond_23
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->k()I

    move-result v0

    :goto_b
    iput v0, v12, Landroidx/recyclerview/widget/t;->c:I

    goto :goto_e

    :cond_24
    :goto_c
    invoke-virtual {v12}, Landroidx/recyclerview/widget/t;->a()V

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-eqz v0, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/S;->b()I

    move-result v0

    sub-int/2addr v0, v13

    goto :goto_d

    :cond_25
    move v0, v10

    :goto_d
    iput v0, v12, Landroidx/recyclerview/widget/t;->b:I

    :cond_26
    :goto_e
    iput-boolean v13, v12, Landroidx/recyclerview/widget/t;->e:Z

    :cond_27
    :goto_f
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v1, v0, Landroidx/recyclerview/widget/v;->j:I

    if-ltz v1, :cond_28

    move v1, v13

    goto :goto_10

    :cond_28
    move v1, v9

    :goto_10
    iput v1, v0, Landroidx/recyclerview/widget/v;->f:I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    aput v10, v0, v10

    aput v10, v0, v13

    invoke-virtual {v6, v8, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->v0(Landroidx/recyclerview/widget/S;[I)V

    aget v1, v0, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    add-int/2addr v2, v1

    aget v0, v0, v13

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->h()I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, v8, Landroidx/recyclerview/widget/S;->g:Z

    if-eqz v0, :cond_2b

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-eq v0, v9, :cond_2b

    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    if-eq v3, v14, :cond_2b

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v3, :cond_29

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->g()I

    move-result v3

    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v4, v0}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    :goto_11
    sub-int/2addr v3, v0

    goto :goto_12

    :cond_29
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3, v0}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v0

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->k()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    goto :goto_11

    :goto_12
    if-lez v3, :cond_2a

    add-int/2addr v2, v3

    goto :goto_13

    :cond_2a
    sub-int/2addr v1, v3

    :cond_2b
    :goto_13
    iget-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_2e

    :cond_2c
    move v9, v13

    goto :goto_14

    :cond_2d
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v0, :cond_2c

    :cond_2e
    :goto_14
    invoke-virtual {v6, v7, v8, v12, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/t;I)V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/I;->p(Landroidx/recyclerview/widget/M;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->i()I

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v3}, Landroidx/emoji2/text/f;->f()I

    move-result v3

    if-nez v3, :cond_2f

    move v3, v13

    goto :goto_15

    :cond_2f
    move v3, v10

    :goto_15
    iput-boolean v3, v0, Landroidx/recyclerview/widget/v;->l:Z

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v10, v0, Landroidx/recyclerview/widget/v;->i:I

    iget-boolean v0, v12, Landroidx/recyclerview/widget/t;->d:Z

    if-eqz v0, :cond_31

    iget v0, v12, Landroidx/recyclerview/widget/t;->b:I

    iget v3, v12, Landroidx/recyclerview/widget/t;->c:I

    invoke-virtual {v6, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v2, v0, Landroidx/recyclerview/widget/v;->h:I

    invoke-virtual {v6, v7, v0, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v2, v0, Landroidx/recyclerview/widget/v;->b:I

    iget v3, v0, Landroidx/recyclerview/widget/v;->d:I

    iget v0, v0, Landroidx/recyclerview/widget/v;->c:I

    if-lez v0, :cond_30

    add-int/2addr v1, v0

    :cond_30
    iget v0, v12, Landroidx/recyclerview/widget/t;->b:I

    iget v4, v12, Landroidx/recyclerview/widget/t;->c:I

    invoke-virtual {v6, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v1, v0, Landroidx/recyclerview/widget/v;->h:I

    iget v1, v0, Landroidx/recyclerview/widget/v;->d:I

    iget v4, v0, Landroidx/recyclerview/widget/v;->e:I

    add-int/2addr v1, v4

    iput v1, v0, Landroidx/recyclerview/widget/v;->d:I

    invoke-virtual {v6, v7, v0, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v1, v0, Landroidx/recyclerview/widget/v;->b:I

    iget v0, v0, Landroidx/recyclerview/widget/v;->c:I

    if-lez v0, :cond_33

    invoke-virtual {v6, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(II)V

    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v0, v2, Landroidx/recyclerview/widget/v;->h:I

    invoke-virtual {v6, v7, v2, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v2, v0, Landroidx/recyclerview/widget/v;->b:I

    goto :goto_16

    :cond_31
    iget v0, v12, Landroidx/recyclerview/widget/t;->b:I

    iget v3, v12, Landroidx/recyclerview/widget/t;->c:I

    invoke-virtual {v6, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v1, v0, Landroidx/recyclerview/widget/v;->h:I

    invoke-virtual {v6, v7, v0, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v1, v0, Landroidx/recyclerview/widget/v;->b:I

    iget v3, v0, Landroidx/recyclerview/widget/v;->d:I

    iget v0, v0, Landroidx/recyclerview/widget/v;->c:I

    if-lez v0, :cond_32

    add-int/2addr v2, v0

    :cond_32
    iget v0, v12, Landroidx/recyclerview/widget/t;->b:I

    iget v4, v12, Landroidx/recyclerview/widget/t;->c:I

    invoke-virtual {v6, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v2, v0, Landroidx/recyclerview/widget/v;->h:I

    iget v2, v0, Landroidx/recyclerview/widget/v;->d:I

    iget v4, v0, Landroidx/recyclerview/widget/v;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/recyclerview/widget/v;->d:I

    invoke-virtual {v6, v7, v0, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v2, v0, Landroidx/recyclerview/widget/v;->b:I

    iget v0, v0, Landroidx/recyclerview/widget/v;->c:I

    if-lez v0, :cond_33

    invoke-virtual {v6, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(II)V

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v0, v1, Landroidx/recyclerview/widget/v;->h:I

    invoke-virtual {v6, v7, v1, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v1, v0, Landroidx/recyclerview/widget/v;->b:I

    :cond_33
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-lez v0, :cond_35

    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-boolean v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_34

    invoke-virtual {v6, v1, v7, v8, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Z)I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v0

    invoke-virtual {v6, v2, v7, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Z)I

    move-result v0

    :goto_17
    add-int/2addr v2, v0

    add-int/2addr v1, v0

    goto :goto_18

    :cond_34
    invoke-virtual {v6, v2, v7, v8, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Z)I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v0

    invoke-virtual {v6, v1, v7, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;Z)I

    move-result v0

    goto :goto_17

    :cond_35
    :goto_18
    iget-boolean v0, v8, Landroidx/recyclerview/widget/S;->k:Z

    if-eqz v0, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-eqz v0, :cond_3d

    iget-boolean v0, v8, Landroidx/recyclerview/widget/S;->g:Z

    if-nez v0, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->u0()Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_1d

    :cond_36
    iget-object v0, v7, Landroidx/recyclerview/widget/M;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v4

    move v5, v10

    move v9, v5

    move v14, v9

    :goto_19
    if-ge v5, v3, :cond_3a

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/U;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/U;->i()Z

    move-result v16

    if-eqz v16, :cond_37

    goto :goto_1b

    :cond_37
    invoke-virtual {v15}, Landroidx/recyclerview/widget/U;->b()I

    move-result v13

    if-ge v13, v4, :cond_38

    const/4 v13, 0x1

    goto :goto_1a

    :cond_38
    move v13, v10

    :goto_1a
    iget-boolean v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget-object v15, v15, Landroidx/recyclerview/widget/U;->a:Landroid/view/View;

    if-eq v13, v11, :cond_39

    iget-object v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11, v15}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_1b

    :cond_39
    iget-object v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v11, v15}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v11

    add-int/2addr v14, v11

    :goto_1b
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x1

    goto :goto_19

    :cond_3a
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput-object v0, v3, Landroidx/recyclerview/widget/v;->k:Ljava/util/List;

    if-lez v9, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v9, v0, Landroidx/recyclerview/widget/v;->h:I

    iput v10, v0, Landroidx/recyclerview/widget/v;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/v;->a(Landroid/view/View;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    :cond_3b
    if-lez v14, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput v14, v0, Landroidx/recyclerview/widget/v;->h:I

    iput v10, v0, Landroidx/recyclerview/widget/v;->c:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/v;->a(Landroid/view/View;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/S;Z)I

    goto :goto_1c

    :cond_3c
    const/4 v1, 0x0

    :goto_1c
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput-object v1, v0, Landroidx/recyclerview/widget/v;->k:Ljava/util/List;

    :cond_3d
    :goto_1d
    iget-boolean v0, v8, Landroidx/recyclerview/widget/S;->g:Z

    if-nez v0, :cond_3e

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->l()I

    move-result v1

    iput v1, v0, Landroidx/emoji2/text/f;->a:I

    goto :goto_1e

    :cond_3e
    invoke-virtual {v12}, Landroidx/recyclerview/widget/t;->d()V

    :goto_1e
    iget-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    iput-boolean v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    return-void
.end method

.method public final W0(IIZLandroidx/recyclerview/widget/S;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->i()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->f()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/v;->l:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput p1, v0, Landroidx/recyclerview/widget/v;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    aput v2, v0, v2

    aput v2, v0, v3

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->v0(Landroidx/recyclerview/widget/S;[I)V

    aget p4, v0, v2

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Landroidx/recyclerview/widget/v;->h:I

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, Landroidx/recyclerview/widget/v;->i:I

    const/4 p4, -0x1

    if-eqz v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->h()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/recyclerview/widget/v;->h:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_4

    move v3, p4

    :cond_4
    iput v3, v0, Landroidx/recyclerview/widget/v;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v2, v1, Landroidx/recyclerview/widget/v;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/v;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/v;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4}, Landroidx/emoji2/text/f;->g()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v1, v0, Landroidx/recyclerview/widget/v;->h:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/recyclerview/widget/v;->h:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, p4

    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/v;->e:I

    invoke-static {p1}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget v2, v1, Landroidx/recyclerview/widget/v;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/v;->d:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/v;->b:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p4}, Landroidx/emoji2/text/f;->k()I

    move-result p4

    add-int/2addr p1, p4

    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput p2, p0, Landroidx/recyclerview/widget/v;->c:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/v;->c:I

    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/v;->g:I

    return-void
.end method

.method public X(Landroidx/recyclerview/widget/S;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/t;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/t;->d()V

    return-void
.end method

.method public final X0(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->g()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/v;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/v;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/v;->d:I

    iput v1, v0, Landroidx/recyclerview/widget/v;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/v;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/v;->g:I

    return-void
.end method

.method public final Y(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->g0()V

    :cond_0
    return-void
.end method

.method public final Y0(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v1}, Landroidx/emoji2/text/f;->k()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/v;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iput p1, v0, Landroidx/recyclerview/widget/v;->d:I

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    iput p0, v0, Landroidx/recyclerview/widget/v;->e:I

    iput p1, v0, Landroidx/recyclerview/widget/v;->f:I

    iput p2, v0, Landroidx/recyclerview/widget/v;->b:I

    const/high16 p0, -0x80000000

    iput p0, v0, Landroidx/recyclerview/widget/v;->g:I

    return-void
.end method

.method public final Z()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->f:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->f:Z

    return-object p0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->f:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->g()I

    move-result v2

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    invoke-static {v1}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {v2, v1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p0}, Landroidx/emoji2/text/f;->k()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    iput p0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    :goto_0
    return-object v0
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 p1, 0x0

    if-nez p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/I;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(IILandroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/o;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(IIZLandroidx/recyclerview/widget/S;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->w0(Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/o;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public h0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final i(ILandroidx/recyclerview/widget/o;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    if-ltz v3, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->f:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v0, v2

    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-virtual {p2, v3, v2}, Landroidx/recyclerview/widget/o;->a(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final i0(I)V
    .locals 1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->d:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->g0()V

    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public j0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(ILandroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public k(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public l(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final m(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public n(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public o(Landroidx/recyclerview/widget/S;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0(Landroidx/recyclerview/widget/S;)I

    move-result p0

    return p0
.end method

.method public final q(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/I;->q(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final q0()Z
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/I;->m:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/I;->l:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/I;->u(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public r()Landroidx/recyclerview/widget/J;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/J;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/J;-><init>(II)V

    return-object p0
.end method

.method public s0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/x;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/x;->a:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->t0(Landroidx/recyclerview/widget/x;)V

    return-void
.end method

.method public u0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v0(Landroidx/recyclerview/widget/S;[I)V
    .locals 2

    iget p1, p1, Landroidx/recyclerview/widget/S;->a:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/v;

    iget p0, p0, Landroidx/recyclerview/widget/v;->f:I

    if-ne p0, v0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, p1

    move p1, v1

    :goto_1
    aput p1, p2, v1

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public w0(Landroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/o;)V
    .locals 0

    iget p0, p2, Landroidx/recyclerview/widget/v;->d:I

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/S;->b()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Landroidx/recyclerview/widget/v;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroidx/recyclerview/widget/o;->a(II)V

    :cond_0
    return-void
.end method

.method public final x0(Landroidx/recyclerview/widget/S;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, La4/x;->o(Landroidx/recyclerview/widget/S;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/I;Z)I

    move-result p0

    return p0
.end method

.method public final y0(Landroidx/recyclerview/widget/S;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, La4/x;->p(Landroidx/recyclerview/widget/S;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/I;ZZ)I

    move-result p0

    return p0
.end method

.method public final z0(Landroidx/recyclerview/widget/S;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/emoji2/text/f;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, La4/x;->q(Landroidx/recyclerview/widget/S;Landroidx/emoji2/text/f;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/I;Z)I

    move-result p0

    return p0
.end method
