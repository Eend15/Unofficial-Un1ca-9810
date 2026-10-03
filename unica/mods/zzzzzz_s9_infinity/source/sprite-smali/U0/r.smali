.class public final LU0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public final f:Ljava/io/Serializable;

.field public final g:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LU0/r;->f:Ljava/io/Serializable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LU0/r;->g:Ljava/io/Serializable;

    const/4 p1, 0x0

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p0, p1, v0, p1}, LU0/r;->d(FFF)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, LU0/r;->f:Ljava/io/Serializable;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, LU0/r;->g:Ljava/io/Serializable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(F)V
    .locals 4

    iget v0, p0, LU0/r;->d:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, LU0/n;

    iget v2, p0, LU0/r;->b:F

    iget v3, p0, LU0/r;->c:F

    invoke-direct {v1, v2, v3, v2, v3}, LU0/n;-><init>(FFFF)V

    iget v2, p0, LU0/r;->d:F

    iput v2, v1, LU0/n;->f:F

    iput v0, v1, LU0/n;->g:F

    iget-object v0, p0, LU0/r;->g:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, LU0/l;

    invoke-direct {v2, v1}, LU0/l;-><init>(LU0/n;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p1, p0, LU0/r;->d:F

    return-void
.end method

.method public b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    iget-object p0, p0, LU0/r;->f:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU0/p;

    invoke-virtual {v2, p1, p2}, LU0/p;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(FF)V
    .locals 4

    new-instance v0, LU0/o;

    invoke-direct {v0}, LU0/p;-><init>()V

    iput p1, v0, LU0/o;->b:F

    iput p2, v0, LU0/o;->c:F

    iget-object v1, p0, LU0/r;->f:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU0/m;

    iget v2, p0, LU0/r;->b:F

    iget v3, p0, LU0/r;->c:F

    invoke-direct {v1, v0, v2, v3}, LU0/m;-><init>(LU0/o;FF)V

    invoke-virtual {v1}, LU0/m;->a()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    invoke-virtual {v1}, LU0/m;->a()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p0, v0}, LU0/r;->a(F)V

    iget-object v0, p0, LU0/r;->g:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, LU0/r;->d:F

    iput p1, p0, LU0/r;->b:F

    iput p2, p0, LU0/r;->c:F

    return-void
.end method

.method public d(FFF)V
    .locals 1

    iput p1, p0, LU0/r;->a:F

    const/4 v0, 0x0

    iput v0, p0, LU0/r;->b:F

    iput p1, p0, LU0/r;->c:F

    iput p2, p0, LU0/r;->d:F

    add-float/2addr p2, p3

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p2, p1

    iput p2, p0, LU0/r;->e:F

    iget-object p1, p0, LU0/r;->f:Ljava/io/Serializable;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, LU0/r;->g:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
